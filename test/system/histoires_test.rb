require "application_system_test_case"

class HistoiresTest < ApplicationSystemTestCase
  setup do
    @histoire = histoires(:one)
  end

  test "visiting the index" do
    visit histoires_url
    assert_selector "h1", text: "Histoires"
  end

  test "creating a Histoire" do
    visit histoires_url
    click_on "New Histoire"

    fill_in "Contenu", with: @histoire.contenu
    fill_in "Titre", with: @histoire.titre
    click_on "Create Histoire"

    assert_text "Histoire was successfully created"
    click_on "Back"
  end

  test "updating a Histoire" do
    visit histoires_url
    click_on "Edit", match: :first

    fill_in "Contenu", with: @histoire.contenu
    fill_in "Titre", with: @histoire.titre
    click_on "Update Histoire"

    assert_text "Histoire was successfully updated"
    click_on "Back"
  end

  test "destroying a Histoire" do
    visit histoires_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Histoire was successfully destroyed"
  end
end
