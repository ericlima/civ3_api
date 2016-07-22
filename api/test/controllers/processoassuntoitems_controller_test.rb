require 'test_helper'

class ProcessoassuntoitemsControllerTest < ActionController::TestCase
  setup do
    @processoassuntoitem = processoassuntoitems(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:processoassuntoitems)
  end

  test "should create processoassuntoitem" do
    assert_difference('Processoassuntoitem.count') do
      post :create, processoassuntoitem: { assunto_id: @processoassuntoitem.assunto_id, descricao: @processoassuntoitem.descricao, itemmodo_id: @processoassuntoitem.itemmodo_id, itemtipo_id: @processoassuntoitem.itemtipo_id, nome: @processoassuntoitem.nome, processoassunto_id: @processoassuntoitem.processoassunto_id, responsavel_id: @processoassuntoitem.responsavel_id }
    end

    assert_response 201
  end

  test "should show processoassuntoitem" do
    get :show, id: @processoassuntoitem
    assert_response :success
  end

  test "should update processoassuntoitem" do
    put :update, id: @processoassuntoitem, processoassuntoitem: { assunto_id: @processoassuntoitem.assunto_id, descricao: @processoassuntoitem.descricao, itemmodo_id: @processoassuntoitem.itemmodo_id, itemtipo_id: @processoassuntoitem.itemtipo_id, nome: @processoassuntoitem.nome, processoassunto_id: @processoassuntoitem.processoassunto_id, responsavel_id: @processoassuntoitem.responsavel_id }
    assert_response 204
  end

  test "should destroy processoassuntoitem" do
    assert_difference('Processoassuntoitem.count', -1) do
      delete :destroy, id: @processoassuntoitem
    end

    assert_response 204
  end
end
