require 'test_helper'

class AssuntosControllerTest < ActionController::TestCase
  setup do
    @assunto = assuntos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:assuntos)
  end

  test "should create assunto" do
    assert_difference('Assunto.count') do
      post :create, assunto: { grupoassunto_id: @assunto.grupoassunto_id, nome: @assunto.nome, prazoqtd: @assunto.prazoqtd, prazotipo: @assunto.prazotipo, responsavel_id: @assunto.responsavel_id }
    end

    assert_response 201
  end

  test "should show assunto" do
    get :show, id: @assunto
    assert_response :success
  end

  test "should update assunto" do
    put :update, id: @assunto, assunto: { grupoassunto_id: @assunto.grupoassunto_id, nome: @assunto.nome, prazoqtd: @assunto.prazoqtd, prazotipo: @assunto.prazotipo, responsavel_id: @assunto.responsavel_id }
    assert_response 204
  end

  test "should destroy assunto" do
    assert_difference('Assunto.count', -1) do
      delete :destroy, id: @assunto
    end

    assert_response 204
  end
end
