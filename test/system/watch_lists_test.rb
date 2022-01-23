require "application_system_test_case"

class WatchListsTest < ApplicationSystemTestCase
  setup do
    @watch_list = watch_lists(:one)
  end

  test "visiting the index" do
    visit watch_lists_url
    assert_selector "h1", text: "Watch Lists"
  end

  test "creating a Watch list" do
    visit watch_lists_url
    click_on "New Watch List"

    check "Have it" if @watch_list.have_it
    fill_in "Title", with: @watch_list.title
    fill_in "Type", with: @watch_list.type
    click_on "Create Watch list"

    assert_text "Watch list was successfully created"
    click_on "Back"
  end

  test "updating a Watch list" do
    visit watch_lists_url
    click_on "Edit", match: :first

    check "Have it" if @watch_list.have_it
    fill_in "Title", with: @watch_list.title
    fill_in "Type", with: @watch_list.type
    click_on "Update Watch list"

    assert_text "Watch list was successfully updated"
    click_on "Back"
  end

  test "destroying a Watch list" do
    visit watch_lists_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Watch list was successfully destroyed"
  end
end
