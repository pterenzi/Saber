require 'test_helper'

class TestamentosControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:testamentos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create testamento" do
    assert_difference('Testamento.count') do
      post :create, :testamento => { }
    end

    assert_redirected_to testamento_path(assigns(:testamento))
  end

  test "should show testamento" do
    get :show, :id => testamentos(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => testamentos(:one).to_param
    assert_response :success
  end

  test "should update testamento" do
    put :update, :id => testamentos(:one).to_param, :testamento => { }
    assert_redirected_to testamento_path(assigns(:testamento))
  end

  test "should destroy testamento" do
    assert_difference('Testamento.count', -1) do
      delete :destroy, :id => testamentos(:one).to_param
    end

    assert_redirected_to testamentos_path
  end
end
