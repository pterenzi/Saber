require 'test_helper'

class PericopesControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:pericopes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create pericope" do
    assert_difference('Pericope.count') do
      post :create, :pericope => { }
    end

    assert_redirected_to pericope_path(assigns(:pericope))
  end

  test "should show pericope" do
    get :show, :id => pericopes(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => pericopes(:one).to_param
    assert_response :success
  end

  test "should update pericope" do
    put :update, :id => pericopes(:one).to_param, :pericope => { }
    assert_redirected_to pericope_path(assigns(:pericope))
  end

  test "should destroy pericope" do
    assert_difference('Pericope.count', -1) do
      delete :destroy, :id => pericopes(:one).to_param
    end

    assert_redirected_to pericopes_path
  end
end
