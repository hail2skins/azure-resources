require 'test_helper'

class DaveStuffsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @dave_stuff = dave_stuffs(:one)
  end

  test "should get index" do
    get dave_stuffs_url
    assert_response :success
  end

  test "should get new" do
    get new_dave_stuff_url
    assert_response :success
  end

  test "should create dave_stuff" do
    assert_difference('DaveStuff.count') do
      post dave_stuffs_url, params: { dave_stuff: { saying: @dave_stuff.saying } }
    end

    assert_redirected_to dave_stuff_path(DaveStuff.last)
  end

  test "should show dave_stuff" do
    get dave_stuff_url(@dave_stuff)
    assert_response :success
  end

  test "should get edit" do
    get edit_dave_stuff_url(@dave_stuff)
    assert_response :success
  end

  test "should update dave_stuff" do
    patch dave_stuff_url(@dave_stuff), params: { dave_stuff: { saying: @dave_stuff.saying } }
    assert_redirected_to dave_stuff_path(@dave_stuff)
  end

  test "should destroy dave_stuff" do
    assert_difference('DaveStuff.count', -1) do
      delete dave_stuff_url(@dave_stuff)
    end

    assert_redirected_to dave_stuffs_path
  end
end
