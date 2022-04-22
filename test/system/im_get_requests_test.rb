require "application_system_test_case"

class ImGetRequestsTest < ApplicationSystemTestCase
  setup do
    @im_get_request = im_get_requests(:one)
  end

  test "visiting the index" do
    visit im_get_requests_url
    assert_selector "h1", text: "Im get requests"
  end

  test "should create im get request" do
    visit im_get_requests_url
    click_on "New im get request"

    fill_in "Prodid", with: @im_get_request.prodID
    fill_in "Pwd", with: @im_get_request.pwd
    fill_in "Tokenid", with: @im_get_request.tokenID
    fill_in "Username", with: @im_get_request.username
    click_on "Create Im get request"

    assert_text "Im get request was successfully created"
    click_on "Back"
  end

  test "should update Im get request" do
    visit im_get_request_url(@im_get_request)
    click_on "Edit this im get request", match: :first

    fill_in "Prodid", with: @im_get_request.prodID
    fill_in "Pwd", with: @im_get_request.pwd
    fill_in "Tokenid", with: @im_get_request.tokenID
    fill_in "Username", with: @im_get_request.username
    click_on "Update Im get request"

    assert_text "Im get request was successfully updated"
    click_on "Back"
  end

  test "should destroy Im get request" do
    visit im_get_request_url(@im_get_request)
    click_on "Destroy this im get request", match: :first

    assert_text "Im get request was successfully destroyed"
  end
end
