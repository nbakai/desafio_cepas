require 'test_helper'

class RevistsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @revist = revists(:one)
  end

  test "should get index" do
    get revists_url
    assert_response :success
  end

  test "should get new" do
    get new_revist_url
    assert_response :success
  end

  test "should create revist" do
    assert_difference('Revist.count') do
      post revists_url, params: { revist: { nombre: @revist.nombre } }
    end

    assert_redirected_to revist_url(Revist.last)
  end

  test "should show revist" do
    get revist_url(@revist)
    assert_response :success
  end

  test "should get edit" do
    get edit_revist_url(@revist)
    assert_response :success
  end

  test "should update revist" do
    patch revist_url(@revist), params: { revist: { nombre: @revist.nombre } }
    assert_redirected_to revist_url(@revist)
  end

  test "should destroy revist" do
    assert_difference('Revist.count', -1) do
      delete revist_url(@revist)
    end

    assert_redirected_to revists_url
  end
end
