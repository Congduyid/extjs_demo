require "application_system_test_case"

class KhachesTest < ApplicationSystemTestCase
  setup do
    @khach = khaches(:one)
  end

  test "visiting the index" do
    visit khaches_url
    assert_selector "h1", text: "Khaches"
  end

  test "creating a Khach" do
    visit khaches_url
    click_on "New Khach"

    fill_in "Diachi", with: @khach.diachi
    fill_in "Ten", with: @khach.ten
    fill_in "Tuoi", with: @khach.tuoi
    click_on "Create Khach"

    assert_text "Khach was successfully created"
    click_on "Back"
  end

  test "updating a Khach" do
    visit khaches_url
    click_on "Edit", match: :first

    fill_in "Diachi", with: @khach.diachi
    fill_in "Ten", with: @khach.ten
    fill_in "Tuoi", with: @khach.tuoi
    click_on "Update Khach"

    assert_text "Khach was successfully updated"
    click_on "Back"
  end

  test "destroying a Khach" do
    visit khaches_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Khach was successfully destroyed"
  end
end
