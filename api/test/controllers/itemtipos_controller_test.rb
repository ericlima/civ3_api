require 'test_helper'

class ItemtiposControllerTest < ActionController::TestCase
  setup do
    @itemtipo = itemtipos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:itemtipos)
  end

  test "should create itemtipo" do
    assert_difference('Itemtipo.count') do
      post :create, itemtipo: { nome: @itemtipo.nome }
    end

    assert_response 201
  end

  test "should show itemtipo" do
    get :show, id: @itemtipo
    assert_response :success
  end

  test "should update itemtipo" do
    put :update, id: @itemtipo, itemtipo: { nome: @itemtipo.nome }
    assert_response 204
  end

  test "should destroy itemtipo" do
    assert_difference('Itemtipo.count', -1) do
      delete :destroy, id: @itemtipo
    end

    assert_response 204
  end
end
