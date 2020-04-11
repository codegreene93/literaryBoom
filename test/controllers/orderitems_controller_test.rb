require 'test_helper'

class OrderitemsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get orderitems_index_url
    assert_response :success
  end

  test "should get show" do
    get orderitems_show_url
    assert_response :success
  end

  test "should get new" do
    get orderitems_new_url
    assert_response :success
  end

  test "should get edit" do
    get orderitems_edit_url
    assert_response :success
  end

end
