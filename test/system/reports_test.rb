require "application_system_test_case"

class ReportsTest < ApplicationSystemTestCase
  setup do
    @report = reports(:one)
  end

  test "visiting the index" do
    visit reports_url
    assert_selector "h1", text: "Reports"
  end

  test "creating a Report" do
    visit reports_url
    click_on "New Report"

    fill_in "Comment", with: @report.comment
    fill_in "Sakatsu photo", with: @report.sakatsu_photo
    fill_in "Sauna", with: @report.sauna_id
    fill_in "Sauna rate", with: @report.sauna_rate
    fill_in "Saunner", with: @report.saunner_id
    fill_in "Title", with: @report.title
    fill_in "Water bath rate", with: @report.water_bath_rate
    click_on "Create Report"

    assert_text "Report was successfully created"
    click_on "Back"
  end

  test "updating a Report" do
    visit reports_url
    click_on "Edit", match: :first

    fill_in "Comment", with: @report.comment
    fill_in "Sakatsu photo", with: @report.sakatsu_photo
    fill_in "Sauna", with: @report.sauna_id
    fill_in "Sauna rate", with: @report.sauna_rate
    fill_in "Saunner", with: @report.saunner_id
    fill_in "Title", with: @report.title
    fill_in "Water bath rate", with: @report.water_bath_rate
    click_on "Update Report"

    assert_text "Report was successfully updated"
    click_on "Back"
  end

  test "destroying a Report" do
    visit reports_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Report was successfully destroyed"
  end
end
