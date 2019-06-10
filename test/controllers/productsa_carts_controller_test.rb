require 'test_helper'

class ProductsaCartsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get productsa_carts_index_url
    assert_response :success
  end

end
