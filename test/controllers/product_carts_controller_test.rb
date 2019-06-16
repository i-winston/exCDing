require 'test_helper'

class ProductCartsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get product_carts_index_url
    assert_response :success
  end
end
