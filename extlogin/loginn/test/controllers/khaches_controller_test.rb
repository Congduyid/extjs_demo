require 'test_helper'

class KhachesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @khach = khaches(:one)
  end

  test "should get index" do
    get khaches_url
    assert_response :success
  end

  test "should get new" do
    get new_khach_url
    assert_response :success
  end

  test "should create khach" do
    assert_difference('Khach.count') do
      post khaches_url, params: { khach: { diachi: @khach.diachi, ten: @khach.ten, tuoi: @khach.tuoi } }
    end

    assert_redirected_to khach_url(Khach.last)
  end

  test "should show khach" do
    get khach_url(@khach)
    assert_response :success
  end

  test "should get edit" do
    get edit_khach_url(@khach)
    assert_response :success
  end

  test "should update khach" do
    patch khach_url(@khach), params: { khach: { diachi: @khach.diachi, ten: @khach.ten, tuoi: @khach.tuoi } }
    assert_redirected_to khach_url(@khach)
  end

  test "should destroy khach" do
    assert_difference('Khach.count', -1) do
      delete khach_url(@khach)
    end

    assert_redirected_to khaches_url
  end
end
