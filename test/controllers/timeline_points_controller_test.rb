require "test_helper"

class TimelinePointsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @timeline_point = timeline_points(:one)
  end

  test "should get index" do
    get timeline_points_url
    assert_response :success
  end

  test "should get new" do
    get new_timeline_point_url
    assert_response :success
  end

  test "should create timeline_point" do
    assert_difference("TimelinePoint.count") do
      post timeline_points_url, params: { timeline_point: { description: @timeline_point.description, name: @timeline_point.name } }
    end

    assert_redirected_to timeline_point_url(TimelinePoint.last)
  end

  test "should show timeline_point" do
    get timeline_point_url(@timeline_point)
    assert_response :success
  end

  test "should get edit" do
    get edit_timeline_point_url(@timeline_point)
    assert_response :success
  end

  test "should update timeline_point" do
    patch timeline_point_url(@timeline_point), params: { timeline_point: { description: @timeline_point.description, name: @timeline_point.name } }
    assert_redirected_to timeline_point_url(@timeline_point)
  end

  test "should destroy timeline_point" do
    assert_difference("TimelinePoint.count", -1) do
      delete timeline_point_url(@timeline_point)
    end

    assert_redirected_to timeline_points_url
  end
end
