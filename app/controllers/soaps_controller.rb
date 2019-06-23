class SoapsController < ApplicationController
  skip_before_action :verify_authenticity_token
  require 'json'
  def cons_response

    @information_response = Information.new(params[:username])
    @prueba= @information_response.getParams
    @pruebah=JSON.parse(@prueba)
   # puts pruebah
    render json:@pruebah.to_json
  end
  end

