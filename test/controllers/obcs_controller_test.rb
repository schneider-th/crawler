require 'test_helper'

class ObcsControllerTest < ActionController::TestCase
  setup do
    @obc = obcs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:obcs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create obc" do
    assert_difference('Obc.count') do
      post :create, obc: { first_level: @obc.first_level, landingpage: @obc.landingpage }
    end

    assert_redirected_to obc_path(assigns(:obc))
  end

  test "should show obc" do
    get :show, id: @obc
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @obc
    assert_response :success
  end

  test "should update obc" do
    patch :update, id: @obc, obc: { first_level: @obc.first_level, landingpage: @obc.landingpage }
    assert_redirected_to obc_path(assigns(:obc))
  end

  test "should destroy obc" do
    assert_difference('Obc.count', -1) do
      delete :destroy, id: @obc
    end

    assert_redirected_to obcs_path
  end
end
