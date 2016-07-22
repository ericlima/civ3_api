require 'test_helper'

class DepartamentosControllerTest < ActionController::TestCase
  setup do
    @departamento = departamentos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:departamentos)
  end

  test "should create departamento" do
    assert_difference('Departamento.count') do
      post :create, departamento: { codigo: @departamento.codigo, nome: @departamento.nome, orgao_id: @departamento.orgao_id, responsavel_id: @departamento.responsavel_id }
    end

    assert_response 201
  end

  test "should show departamento" do
    get :show, id: @departamento
    assert_response :success
  end

  test "should update departamento" do
    put :update, id: @departamento, departamento: { codigo: @departamento.codigo, nome: @departamento.nome, orgao_id: @departamento.orgao_id, responsavel_id: @departamento.responsavel_id }
    assert_response 204
  end

  test "should destroy departamento" do
    assert_difference('Departamento.count', -1) do
      delete :destroy, id: @departamento
    end

    assert_response 204
  end
end
