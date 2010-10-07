require 'test_helper'

class TestamentsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:testaments)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create testament" do
    assert_difference('Testament.count') do
      post :create, :testament => { }
    end

    assert_redirected_to testament_path(assigns(:testament))
  end

  test "should show testament" do
    get :show, :id => testaments(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => testaments(:one).to_param
    assert_response :success
  end

  test "should update testament" do
    put :update, :id => testaments(:one).to_param, :testament => { }
    assert_redirected_to testament_path(assigns(:testament))
  end

  test "should destroy testament" do
    assert_difference('Testament.count', -1) do
      delete :destroy, :id => testaments(:one).to_param
    end

    assert_redirected_to testaments_path
  end
end
