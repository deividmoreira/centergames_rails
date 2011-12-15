require 'test_helper'

class ValorFichasControllerTest < ActionController::TestCase
  setup do
    @valor_ficha = valor_fichas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:valor_fichas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create valor_ficha" do
    assert_difference('ValorFicha.count') do
      post :create, valor_ficha: @valor_ficha.attributes
    end

    assert_redirected_to valor_ficha_path(assigns(:valor_ficha))
  end

  test "should show valor_ficha" do
    get :show, id: @valor_ficha.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @valor_ficha.to_param
    assert_response :success
  end

  test "should update valor_ficha" do
    put :update, id: @valor_ficha.to_param, valor_ficha: @valor_ficha.attributes
    assert_redirected_to valor_ficha_path(assigns(:valor_ficha))
  end

  test "should destroy valor_ficha" do
    assert_difference('ValorFicha.count', -1) do
      delete :destroy, id: @valor_ficha.to_param
    end

    assert_redirected_to valor_fichas_path
  end
end
