class WsfilesController < ApplicationController
  skip_before_action :verify_authenticity_token
  require "uri"
  require 'json'
  require "net/http"
  include HTTParty
    soap_service namespace: 'urn:WashOutBank', camelize_wsdl: :lower
#  json_text = { }.to_json
 # jsonTosend = JSON.parse(json_text)


    soap_action "sendNumber",
                :args   => { :owner => :string},
                :return => :integer
    def sendNumber

      name=params[:owner]
      #Esta url hay que cambiarla cuando ya esten las cosas con el proxy inverso completas
      @result = HTTParty.post("http://192.168.99.101:8005/api/v1/soap",
                              :body => { :owner => name }.to_json,
                              :headers => { 'Content-Type' => 'application/json' } )

      respuesta = @result.to_i
      render :soap => respuesta


    end
  end
  