require 'test_helper'

class LocacoesControllerTest < ActionController::TestCase
  setup do
    @locacao = locacoes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:locacoes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create locacao" do
    assert_difference('Locacao.count') do
      post :create, locacao: @locacao.attributes
    end

    assert_redirected_to locacao_path(assigns(:locacao))
  end

  test "should show locacao" do
    get :show, id: @locacao.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @locacao.to_param
    assert_response :success
  end

  test "should update locacao" do
    put :update, id: @locacao.to_param, locacao: @locacao.attributes
    assert_redirected_to locacao_path(assigns(:locacao))
  end

  test "should destroy locacao" do
    assert_difference('Locacao.count', -1) do
      delete :destroy, id: @locacao.to_param
    end

    assert_redirected_to locacoes_path
  end
end
