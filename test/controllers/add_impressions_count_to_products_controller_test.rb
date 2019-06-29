require 'test_helper'

class AddImpressionsCountToProductsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @add_impressions_count_to_product = add_impressions_count_to_products(:one)
  end

  test "should get index" do
    get add_impressions_count_to_products_url
    assert_response :success
  end

  test "should get new" do
    get new_add_impressions_count_to_product_url
    assert_response :success
  end

  test "should create add_impressions_count_to_product" do
    assert_difference('AddImpressionsCountToProduct.count') do
      post add_impressions_count_to_products_url, params: { add_impressions_count_to_product: { impressions_count: @add_impressions_count_to_product.impressions_count } }
    end

    assert_redirected_to add_impressions_count_to_product_url(AddImpressionsCountToProduct.last)
  end

  test "should show add_impressions_count_to_product" do
    get add_impressions_count_to_product_url(@add_impressions_count_to_product)
    assert_response :success
  end

  test "should get edit" do
    get edit_add_impressions_count_to_product_url(@add_impressions_count_to_product)
    assert_response :success
  end

  test "should update add_impressions_count_to_product" do
    patch add_impressions_count_to_product_url(@add_impressions_count_to_product), params: { add_impressions_count_to_product: { impressions_count: @add_impressions_count_to_product.impressions_count } }
    assert_redirected_to add_impressions_count_to_product_url(@add_impressions_count_to_product)
  end

  test "should destroy add_impressions_count_to_product" do
    assert_difference('AddImpressionsCountToProduct.count', -1) do
      delete add_impressions_count_to_product_url(@add_impressions_count_to_product)
    end

    assert_redirected_to add_impressions_count_to_products_url
  end
end
