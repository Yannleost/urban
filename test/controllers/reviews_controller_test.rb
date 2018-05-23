require 'test_helper'

class ReviewsControllerTest < ActionDispatch::IntegrationTest
  test "should get note:integer" do
    get reviews_note:integer_url
    assert_response :success
  end

  test "should get contents:text" do
    get reviews_contents:text_url
    assert_response :success
  end

  test "should get selfie" do
    get reviews_selfie_url
    assert_response :success
  end

  test "should get lost_calories" do
    get reviews_lost_calories_url
    assert_response :success
  end

  test "should get felt_difficulties:integer" do
    get reviews_felt_difficulties:integer_url
    assert_response :success
  end

  test "should get time_spent:integer" do
    get reviews_time_spent:integer_url
    assert_response :success
  end

  test "should get users:references" do
    get reviews_users:references_url
    assert_response :success
  end

  test "should get courses:references" do
    get reviews_courses:references_url
    assert_response :success
  end

end
