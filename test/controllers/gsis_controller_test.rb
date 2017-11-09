require 'test_helper'

class GsisControllerTest < ActionDispatch::IntegrationTest
  setup do
    @gsi = gsis(:one)
  end

  test "should get index" do
    get gsis_url
    assert_response :success
  end

  test "should get new" do
    get new_gsi_url
    assert_response :success
  end

  test "should create gsi" do
    assert_difference('Gsi.count') do
      post gsis_url, params: { gsi: { comment: @gsi.comment, course: @gsi.course, name: @gsi.name, rating: @gsi.rating } }
    end

    assert_redirected_to gsi_url(Gsi.last)
  end

  test "should show gsi" do
    get gsi_url(@gsi)
    assert_response :success
  end

  test "should get edit" do
    get edit_gsi_url(@gsi)
    assert_response :success
  end

  test "should update gsi" do
    patch gsi_url(@gsi), params: { gsi: { comment: @gsi.comment, course: @gsi.course, name: @gsi.name, rating: @gsi.rating } }
    assert_redirected_to gsi_url(@gsi)
  end

  test "should destroy gsi" do
    assert_difference('Gsi.count', -1) do
      delete gsi_url(@gsi)
    end

    assert_redirected_to gsis_url
  end
end
