require 'test_helper'

class GrupoassuntosControllerTest < ActionController::TestCase
  setup do
    @grupoassunto = grupoassuntos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:grupoassuntos)
  end

  test "should create grupoassunto" do
    assert_difference('Grupoassunto.count') do
      post :create, grupoassunto: { descricao: @grupoassunto.descricao, nome: @grupoassunto.nome }
    end

    assert_response 201
  end

  test "should show grupoassunto" do
    get :show, id: @grupoassunto
    assert_response :success
  end

  test "should update grupoassunto" do
    put :update, id: @grupoassunto, grupoassunto: { descricao: @grupoassunto.descricao, nome: @grupoassunto.nome }
    assert_response 204
  end

  test "should destroy grupoassunto" do
    assert_difference('Grupoassunto.count', -1) do
      delete :destroy, id: @grupoassunto
    end

    assert_response 204
  end
end
