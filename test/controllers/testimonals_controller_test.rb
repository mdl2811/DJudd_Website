require 'test_helper'

class TestimonalsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get testimonals_index_url
    assert_response :success
  end

  test "should get show" do
    get testimonals_show_url
    assert_response :success
  end

  test "should get new" do
    get testimonals_new_url
    assert_response :success
  end

  test "should get edit" do
    get testimonals_edit_url
    assert_response :success
  end

end
