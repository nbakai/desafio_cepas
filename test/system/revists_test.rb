require "application_system_test_case"

class RevistsTest < ApplicationSystemTestCase
  setup do
    @revist = revists(:one)
  end

  test "visiting the index" do
    visit revists_url
    assert_selector "h1", text: "Revists"
  end

  test "creating a Revist" do
    visit revists_url
    click_on "New Revist"

    fill_in "Nombre", with: @revist.nombre
    click_on "Create Revist"

    assert_text "Revist was successfully created"
    click_on "Back"
  end

  test "updating a Revist" do
    visit revists_url
    click_on "Edit", match: :first

    fill_in "Nombre", with: @revist.nombre
    click_on "Update Revist"

    assert_text "Revist was successfully updated"
    click_on "Back"
  end

  test "destroying a Revist" do
    visit revists_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Revist was successfully destroyed"
  end
end
