require 'test_helper'

class ProcessoassuntoitemmovimentosControllerTest < ActionController::TestCase
  setup do
    @processoassuntoitemmovimento = processoassuntoitemmovimentos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:processoassuntoitemmovimentos)
  end

  test "should create processoassuntoitemmovimento" do
    assert_difference('Processoassuntoitemmovimento.count') do
      post :create, processoassuntoitemmovimento: { dataatendimento: @processoassuntoitemmovimento.dataatendimento, datasolicitacao: @processoassuntoitemmovimento.datasolicitacao, descricao: @processoassuntoitemmovimento.descricao, processoassuntoitem_id: @processoassuntoitemmovimento.processoassuntoitem_id, responsavel_id: @processoassuntoitemmovimento.responsavel_id }
    end

    assert_response 201
  end

  test "should show processoassuntoitemmovimento" do
    get :show, id: @processoassuntoitemmovimento
    assert_response :success
  end

  test "should update processoassuntoitemmovimento" do
    put :update, id: @processoassuntoitemmovimento, processoassuntoitemmovimento: { dataatendimento: @processoassuntoitemmovimento.dataatendimento, datasolicitacao: @processoassuntoitemmovimento.datasolicitacao, descricao: @processoassuntoitemmovimento.descricao, processoassuntoitem_id: @processoassuntoitemmovimento.processoassuntoitem_id, responsavel_id: @processoassuntoitemmovimento.responsavel_id }
    assert_response 204
  end

  test "should destroy processoassuntoitemmovimento" do
    assert_difference('Processoassuntoitemmovimento.count', -1) do
      delete :destroy, id: @processoassuntoitemmovimento
    end

    assert_response 204
  end
end
