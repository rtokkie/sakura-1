require "application_system_test_case"

class Users::CartItemsTest < ApplicationSystemTestCase
  setup do
    @users_cart_item = users_cart_items(:one)
  end

  test "visiting the index" do
    visit users_cart_items_url
    assert_selector "h1", text: "Users/Cart Items"
  end

  test "creating a Cart item" do
    visit users_cart_items_url
    click_on "New Users/Cart Item"

    click_on "Create Cart item"

    assert_text "Cart item was successfully created"
    click_on "Back"
  end

  test "updating a Cart item" do
    visit users_cart_items_url
    click_on "Edit", match: :first

    click_on "Update Cart item"

    assert_text "Cart item was successfully updated"
    click_on "Back"
  end

  test "destroying a Cart item" do
    visit users_cart_items_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Cart item was successfully destroyed"
  end
end
