require "application_system_test_case"

class TimelinePointsTest < ApplicationSystemTestCase
  setup do
    @timeline_point = timeline_points(:one)
  end

  test "visiting the index" do
    visit timeline_points_url
    assert_selector "h1", text: "Timeline points"
  end

  test "should create timeline point" do
    visit timeline_points_url
    click_on "New timeline point"

    fill_in "Description", with: @timeline_point.description
    fill_in "Name", with: @timeline_point.name
    click_on "Create Timeline point"

    assert_text "Timeline point was successfully created"
    click_on "Back"
  end

  test "should update Timeline point" do
    visit timeline_point_url(@timeline_point)
    click_on "Edit this timeline point", match: :first

    fill_in "Description", with: @timeline_point.description
    fill_in "Name", with: @timeline_point.name
    click_on "Update Timeline point"

    assert_text "Timeline point was successfully updated"
    click_on "Back"
  end

  test "should destroy Timeline point" do
    visit timeline_point_url(@timeline_point)
    click_on "Destroy this timeline point", match: :first

    assert_text "Timeline point was successfully destroyed"
  end
end
