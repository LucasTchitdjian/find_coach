require "test_helper"

class ProfesionnelsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get profesionnels_index_url
    assert_response :success
  end

  test "should get show" do
    get profesionnels_show_url
    assert_response :success
  end

  test "should get new" do
    get profesionnels_new_url
    assert_response :success
  end

  test "should get create" do
    get profesionnels_create_url
    assert_response :success
  end

  test "should get edit" do
    get profesionnels_edit_url
    assert_response :success
  end

  test "should get update" do
    get profesionnels_update_url
    assert_response :success
  end

  test "should get destroy" do
    get profesionnels_destroy_url
    assert_response :success
  end
end
