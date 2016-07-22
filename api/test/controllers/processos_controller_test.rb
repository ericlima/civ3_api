require 'test_helper'

class ProcessosControllerTest < ActionController::TestCase
  setup do
    @processo = processos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:processos)
  end

  test "should create processo" do
    assert_difference('Processo.count') do
      post :create, processo: { ano: @processo.ano, nomero: @processo.nomero, orgao_id: @processo.orgao_id, responsavel_id: @processo.responsavel_id }
    end

    assert_response 201
  end

  test "should show processo" do
    get :show, id: @processo
    assert_response :success
  end

  test "should update processo" do
    put :update, id: @processo, processo: { ano: @processo.ano, nomero: @processo.nomero, orgao_id: @processo.orgao_id, responsavel_id: @processo.responsavel_id }
    assert_response 204
  end

  test "should destroy processo" do
    assert_difference('Processo.count', -1) do
      delete :destroy, id: @processo
    end

    assert_response 204
  end
end
