require "test_helper"

class ActivitesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get activites_index_url
    assert_response :success
  end

  test "should get new" do
    get activites_new_url
    assert_response :success
  end

  test "should get create" do
    get activites_create_url
    assert_response :success
  end

  test "should get show" do
    get activites_show_url
    assert_response :success
  end

  test "should get edit" do
    get activites_edit_url
    assert_response :success
  end

  test "should get update" do
    get activites_update_url
    assert_response :success
  end

  test "should get destroy" do
    get activites_destroy_url
    assert_response :success
  end
end
