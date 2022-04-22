require "test_helper"

class ImGetRequestsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @im_get_request = im_get_requests(:one)
  end

  test "should get index" do
    get im_get_requests_url
    assert_response :success
  end

  test "should get new" do
    get new_im_get_request_url
    assert_response :success
  end

  test "should create im_get_request" do
    assert_difference("ImGetRequest.count") do
      post im_get_requests_url, params: { im_get_request: { prodID: @im_get_request.prodID, pwd: @im_get_request.pwd, tokenID: @im_get_request.tokenID, username: @im_get_request.username } }
    end

    assert_redirected_to im_get_request_url(ImGetRequest.last)
  end

  test "should show im_get_request" do
    get im_get_request_url(@im_get_request)
    assert_response :success
  end

  test "should get edit" do
    get edit_im_get_request_url(@im_get_request)
    assert_response :success
  end

  test "should update im_get_request" do
    patch im_get_request_url(@im_get_request), params: { im_get_request: { prodID: @im_get_request.prodID, pwd: @im_get_request.pwd, tokenID: @im_get_request.tokenID, username: @im_get_request.username } }
    assert_redirected_to im_get_request_url(@im_get_request)
  end

  test "should destroy im_get_request" do
    assert_difference("ImGetRequest.count", -1) do
      delete im_get_request_url(@im_get_request)
    end

    assert_redirected_to im_get_requests_url
  end
end
