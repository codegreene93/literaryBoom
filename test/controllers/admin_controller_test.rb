require 'test_helper'

class AdminControllerTest < ActionDispatch::IntegrationTest
  test "should get admin" do
    get admin_admin_url
    assert_response :success
  end

end
