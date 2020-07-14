require "application_system_test_case"

class ExpedientsTest < ApplicationSystemTestCase
  setup do
    @expedient = expedients(:one)
  end

  test "visiting the index" do
    visit expedients_url
    assert_selector "h1", text: "Expedients"
  end

  test "creating a Expedient" do
    visit expedients_url
    click_on "New Expedient"

    fill_in "Destination", with: @expedient.destination_id
    fill_in "Exp date", with: @expedient.exp_date
    fill_in "Exp type", with: @expedient.exp_type_id
    fill_in "Responsible", with: @expedient.responsible_id
    fill_in "Spu", with: @expedient.spu
    fill_in "Topic", with: @expedient.topic
    click_on "Create Expedient"

    assert_text "Expedient was successfully created"
    click_on "Back"
  end

  test "updating a Expedient" do
    visit expedients_url
    click_on "Edit", match: :first

    fill_in "Destination", with: @expedient.destination_id
    fill_in "Exp date", with: @expedient.exp_date
    fill_in "Exp type", with: @expedient.exp_type_id
    fill_in "Responsible", with: @expedient.responsible_id
    fill_in "Spu", with: @expedient.spu
    fill_in "Topic", with: @expedient.topic
    click_on "Update Expedient"

    assert_text "Expedient was successfully updated"
    click_on "Back"
  end

  test "destroying a Expedient" do
    visit expedients_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Expedient was successfully destroyed"
  end
end
