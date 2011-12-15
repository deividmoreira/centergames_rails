require 'test_helper'

class TipoMesasControllerTest < ActionController::TestCase
  setup do
    @tipo_mesa = tipo_mesas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:tipo_mesas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create tipo_mesa" do
    assert_difference('TipoMesa.count') do
      post :create, tipo_mesa: @tipo_mesa.attributes
    end

    assert_redirected_to tipo_mesa_path(assigns(:tipo_mesa))
  end

  test "should show tipo_mesa" do
    get :show, id: @tipo_mesa.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @tipo_mesa.to_param
    assert_response :success
  end

  test "should update tipo_mesa" do
    put :update, id: @tipo_mesa.to_param, tipo_mesa: @tipo_mesa.attributes
    assert_redirected_to tipo_mesa_path(assigns(:tipo_mesa))
  end

  test "should destroy tipo_mesa" do
    assert_difference('TipoMesa.count', -1) do
      delete :destroy, id: @tipo_mesa.to_param
    end

    assert_redirected_to tipo_mesas_path
  end
end
