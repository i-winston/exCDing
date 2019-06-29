require "application_system_test_case"

class AddImpressionsCountToProductsTest < ApplicationSystemTestCase
  setup do
    @add_impressions_count_to_product = add_impressions_count_to_products(:one)
  end

  test "visiting the index" do
    visit add_impressions_count_to_products_url
    assert_selector "h1", text: "Add Impressions Count To Products"
  end

  test "creating a Add impressions count to product" do
    visit add_impressions_count_to_products_url
    click_on "New Add Impressions Count To Product"

    fill_in "Impressions count", with: @add_impressions_count_to_product.impressions_count
    click_on "Create Add impressions count to product"

    assert_text "Add impressions count to product was successfully created"
    click_on "Back"
  end

  test "updating a Add impressions count to product" do
    visit add_impressions_count_to_products_url
    click_on "Edit", match: :first

    fill_in "Impressions count", with: @add_impressions_count_to_product.impressions_count
    click_on "Update Add impressions count to product"

    assert_text "Add impressions count to product was successfully updated"
    click_on "Back"
  end

  test "destroying a Add impressions count to product" do
    visit add_impressions_count_to_products_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Add impressions count to product was successfully destroyed"
  end
end
