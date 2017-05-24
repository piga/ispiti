require 'test_helper'

class ZadataksControllerTest < ActionController::TestCase
  setup do
    @zadatak = zadataks(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:zadataks)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create zadatak" do
    assert_difference('Zadatak.count') do
      post :create, zadatak: { problem: @zadatak.problem, solution: @zadatak.solution }
    end

    assert_redirected_to zadatak_path(assigns(:zadatak))
  end

  test "should show zadatak" do
    get :show, id: @zadatak
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @zadatak
    assert_response :success
  end

  test "should update zadatak" do
    patch :update, id: @zadatak, zadatak: { problem: @zadatak.problem, solution: @zadatak.solution }
    assert_redirected_to zadatak_path(assigns(:zadatak))
  end

  test "should destroy zadatak" do
    assert_difference('Zadatak.count', -1) do
      delete :destroy, id: @zadatak
    end

    assert_redirected_to zadataks_path
  end
end
