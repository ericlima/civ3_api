require 'test_helper'

class OrgaosControllerTest < ActionController::TestCase
  setup do
    @orgao = orgaos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:orgaos)
  end

  test "should create orgao" do
    assert_difference('Orgao.count') do
      post :create, orgao: { codigo: @orgao.codigo, nome: @orgao.nome, responsavel_id: @orgao.responsavel_id }
    end

    assert_response 201
  end

  test "should show orgao" do
    get :show, id: @orgao
    assert_response :success
  end

  test "should update orgao" do
    put :update, id: @orgao, orgao: { codigo: @orgao.codigo, nome: @orgao.nome, responsavel_id: @orgao.responsavel_id }
    assert_response 204
  end

  test "should destroy orgao" do
    assert_difference('Orgao.count', -1) do
      delete :destroy, id: @orgao
    end

    assert_response 204
  end
end
