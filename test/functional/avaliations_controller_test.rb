require 'test_helper'

class AvaliationsControllerTest < ActionController::TestCase
  setup do
    @avaliation = avaliations(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:avaliations)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create avaliation" do
    assert_difference('Avaliation.count') do
      post :create, avaliation: { avaliation: @avaliation.avaliation, step: @avaliation.step }
    end

    assert_redirected_to avaliation_path(assigns(:avaliation))
  end

  test "should show avaliation" do
    get :show, id: @avaliation
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @avaliation
    assert_response :success
  end

  test "should update avaliation" do
    put :update, id: @avaliation, avaliation: { avaliation: @avaliation.avaliation, step: @avaliation.step }
    assert_redirected_to avaliation_path(assigns(:avaliation))
  end

  test "should destroy avaliation" do
    assert_difference('Avaliation.count', -1) do
      delete :destroy, id: @avaliation
    end

    assert_redirected_to avaliations_path
  end
end
