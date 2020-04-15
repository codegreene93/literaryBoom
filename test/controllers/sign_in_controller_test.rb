require 'test_helper'

class SignInControllerTest < ActionDispatch::IntegrationTest
  test "should get CreateUser" do
    get sign_in_CreateUser_url
    assert_response :success
  end

  test "should get AdminSignIn" do
    get sign_in_AdminSignIn_url
    assert_response :success
  end

end
