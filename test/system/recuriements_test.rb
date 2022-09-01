require "application_system_test_case"

class RecuriementsTest < ApplicationSystemTestCase
  setup do
    @recuriement = recuriements(:one)
  end

  test "visiting the index" do
    visit recuriements_url
    assert_selector "h1", text: "Recuriements"
  end

  test "should create recuriement" do
    visit recuriements_url
    click_on "New recuriement"

    fill_in "Email", with: @recuriement.email
    fill_in "First name", with: @recuriement.first_name
    fill_in "Last name", with: @recuriement.last_name
    fill_in "Phone", with: @recuriement.phone
    click_on "Create Recuriement"

    assert_text "Recuriement was successfully created"
    click_on "Back"
  end

  test "should update Recuriement" do
    visit recuriement_url(@recuriement)
    click_on "Edit this recuriement", match: :first

    fill_in "Email", with: @recuriement.email
    fill_in "First name", with: @recuriement.first_name
    fill_in "Last name", with: @recuriement.last_name
    fill_in "Phone", with: @recuriement.phone
    click_on "Update Recuriement"

    assert_text "Recuriement was successfully updated"
    click_on "Back"
  end

  test "should destroy Recuriement" do
    visit recuriement_url(@recuriement)
    click_on "Destroy this recuriement", match: :first

    assert_text "Recuriement was successfully destroyed"
  end
end
