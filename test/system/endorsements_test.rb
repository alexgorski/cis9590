require "application_system_test_case"

class EndorsementsTest < ApplicationSystemTestCase
  setup do
    @endorsement = endorsements(:one)
  end

  test "visiting the index" do
    visit endorsements_url
    assert_selector "h1", text: "Endorsements"
  end

  test "creating a Endorsement" do
    visit endorsements_url
    click_on "New Endorsement"

    fill_in "Brand", with: @endorsement.brand
    fill_in "Notes", with: @endorsement.notes
    fill_in "Player", with: @endorsement.player_id
    click_on "Create Endorsement"

    assert_text "Endorsement was successfully created"
    click_on "Back"
  end

  test "updating a Endorsement" do
    visit endorsements_url
    click_on "Edit", match: :first

    fill_in "Brand", with: @endorsement.brand
    fill_in "Notes", with: @endorsement.notes
    fill_in "Player", with: @endorsement.player_id
    click_on "Update Endorsement"

    assert_text "Endorsement was successfully updated"
    click_on "Back"
  end

  test "destroying a Endorsement" do
    visit endorsements_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Endorsement was successfully destroyed"
  end
end
