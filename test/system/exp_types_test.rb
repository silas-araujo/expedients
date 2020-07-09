require "application_system_test_case"

class ExpTypesTest < ApplicationSystemTestCase
  setup do
    @exp_type = exp_types(:one)
  end

  test "visiting the index" do
    visit exp_types_url
    assert_selector "h1", text: "Exp Types"
  end

  test "creating a Exp type" do
    visit exp_types_url
    click_on "New Exp Type"

    fill_in "Description", with: @exp_type.description
    click_on "Create Exp type"

    assert_text "Exp type was successfully created"
    click_on "Back"
  end

  test "updating a Exp type" do
    visit exp_types_url
    click_on "Edit", match: :first

    fill_in "Description", with: @exp_type.description
    click_on "Update Exp type"

    assert_text "Exp type was successfully updated"
    click_on "Back"
  end

  test "destroying a Exp type" do
    visit exp_types_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Exp type was successfully destroyed"
  end
end
