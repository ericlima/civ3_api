require 'test_helper'

class ResponsavelsControllerTest < ActionController::TestCase
  setup do
    @responsavel = responsavels(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:responsavels)
  end

  test "should create responsavel" do
    assert_difference('Responsavel.count') do
      post :create, responsavel: { GeoSiapID: @responsavel.GeoSiapID, cpf: @responsavel.cpf, email: @responsavel.email, nome: @responsavel.nome }
    end

    assert_response 201
  end

  test "should show responsavel" do
    get :show, id: @responsavel
    assert_response :success
  end

  test "should update responsavel" do
    put :update, id: @responsavel, responsavel: { GeoSiapID: @responsavel.GeoSiapID, cpf: @responsavel.cpf, email: @responsavel.email, nome: @responsavel.nome }
    assert_response 204
  end

  test "should destroy responsavel" do
    assert_difference('Responsavel.count', -1) do
      delete :destroy, id: @responsavel
    end

    assert_response 204
  end
end
