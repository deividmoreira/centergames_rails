require 'test_helper'

class RelogiosControllerTest < ActionController::TestCase
  setup do
    @relogio = relogios(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:relogios)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create relogio" do
    assert_difference('Relogio.count') do
      post :create, relogio: @relogio.attributes
    end

    assert_redirected_to relogio_path(assigns(:relogio))
  end

  test "should show relogio" do
    get :show, id: @relogio.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @relogio.to_param
    assert_response :success
  end

  test "should update relogio" do
    put :update, id: @relogio.to_param, relogio: @relogio.attributes
    assert_redirected_to relogio_path(assigns(:relogio))
  end

  test "should destroy relogio" do
    assert_difference('Relogio.count', -1) do
      delete :destroy, id: @relogio.to_param
    end

    assert_redirected_to relogios_path
  end
end
