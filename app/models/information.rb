class Information
#  attr_reader :
# require 'json'

  def initialize(us)
    #Esta url hay que cambiarla cuando el otro equipo despliegue las cosas
    url= ENV['URL_EXT']
    client = Savon.client(wsdl: url)
    response = client.call(:user_images, message: { 'username' => us}
    )
    if response.success?
      info = response.to_array(:user_images_response, :value)[0]
      @user_response = info
      puts(@user_response)

    end
  end
  def getParams()
    @user_response
  end

end