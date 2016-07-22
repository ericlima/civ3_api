require 'test_helper'

class ItemmodosControllerTest < ActionController::TestCase
  setup do
    @itemmodo = itemmodos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:itemmodos)
  end

  test "should create itemmodo" do
    assert_difference('Itemmodo.count') do
      post :create, itemmodo: { nome: @itemmodo.nome }
    end

    assert_response 201
  end

  test "should show itemmodo" do
    get :show, id: @itemmodo
    assert_response :success
  end

  test "should update itemmodo" do
    put :update, id: @itemmodo, itemmodo: { nome: @itemmodo.nome }
    assert_response 204
  end

  test "should destroy itemmodo" do
    assert_difference('Itemmodo.count', -1) do
      delete :destroy, id: @itemmodo
    end

    assert_response 204
  end
end
