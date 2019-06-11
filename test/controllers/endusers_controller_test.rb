require 'test_helper'

class EndusersControllerTest < ActionDispatch::IntegrationTest
  test "should get edit" do
    get endusers_edit_url
    assert_response :success
  end

  test "should get show" do
    get endusers_show_url
    assert_response :success
  end

  test "should get index" do
    get endusers_index_url
    assert_response :success
  end

  test "should get new" do
    get endusers_new_url
    assert_response :success
  end

end
