require 'test_helper'

class TrailsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @trail = trails(:one)
  end

  test "should get index" do
    get trails_url
    assert_response :success
  end

  test "should create trail" do
    assert_difference('Trail.count') do
      post trails_url, params: { trail: { name: @trail.name } }
    end

    assert_response 201
  end

  test "should show trail" do
    get trail_url(@trail)
    assert_response :success
  end

  test "should update trail" do
    patch trail_url(@trail), params: { trail: { name: @trail.name } }
    assert_response 200
  end

  test "should destroy trail" do
    assert_difference('Trail.count', -1) do
      delete trail_url(@trail)
    end

    assert_response 204
  end
end
