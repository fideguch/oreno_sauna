require "application_system_test_case"

class SaunasTest < ApplicationSystemTestCase
  setup do
    @sauna = saunas(:one)
  end

  test "visiting the index" do
    visit saunas_url
    assert_selector "h1", text: "Saunas"
  end

  test "creating a Sauna" do
    visit saunas_url
    click_on "New Sauna"

    fill_in "Address", with: @sauna.address
    fill_in "Area", with: @sauna.area
    fill_in "Business hours", with: @sauna.business_hours
    check "Man not exist" if @sauna.man_not_exist
    fill_in "Man sauna temp", with: @sauna.man_sauna_temp
    fill_in "Man water temp", with: @sauna.man_water_temp
    fill_in "Phone", with: @sauna.phone
    fill_in "Picture", with: @sauna.picture
    fill_in "Sauna name", with: @sauna.sauna_name
    check "Woman not exist" if @sauna.woman_not_exist
    fill_in "Woman sauna temp", with: @sauna.woman_sauna_temp
    fill_in "Woman water temp", with: @sauna.woman_water_temp
    click_on "Create Sauna"

    assert_text "Sauna was successfully created"
    click_on "Back"
  end

  test "updating a Sauna" do
    visit saunas_url
    click_on "Edit", match: :first

    fill_in "Address", with: @sauna.address
    fill_in "Area", with: @sauna.area
    fill_in "Business hours", with: @sauna.business_hours
    check "Man not exist" if @sauna.man_not_exist
    fill_in "Man sauna temp", with: @sauna.man_sauna_temp
    fill_in "Man water temp", with: @sauna.man_water_temp
    fill_in "Phone", with: @sauna.phone
    fill_in "Picture", with: @sauna.picture
    fill_in "Sauna name", with: @sauna.sauna_name
    check "Woman not exist" if @sauna.woman_not_exist
    fill_in "Woman sauna temp", with: @sauna.woman_sauna_temp
    fill_in "Woman water temp", with: @sauna.woman_water_temp
    click_on "Update Sauna"

    assert_text "Sauna was successfully updated"
    click_on "Back"
  end

  test "destroying a Sauna" do
    visit saunas_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Sauna was successfully destroyed"
  end
end
