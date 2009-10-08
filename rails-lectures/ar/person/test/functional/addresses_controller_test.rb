require 'test_helper'

class AddressesControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:addresses)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create address" do
    assert_difference('Address.count') do
      post :create, :address => { }
    end

    assert_redirected_to address_path(assigns(:address))
  end

  test "should show address" do
    get :show, :id => addresses(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => addresses(:one).to_param
    assert_response :success
  end

  test "should update address" do
    put :update, :id => addresses(:one).to_param, :address => { }
    assert_redirected_to address_path(assigns(:address))
  end

  test "should destroy address" do
    assert_difference('Address.count', -1) do
      delete :destroy, :id => addresses(:one).to_param
    end

    assert_redirected_to addresses_path
  end
end
