require 'test_helper'

class ConsSoapControllerTest < ActionDispatch::IntegrationTest
  test "should get cons_response" do
    get cons_soap_cons_response_url
    assert_response :success
  end

end
