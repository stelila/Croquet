require 'test_helper'

class Programme2013sControllerTest < ActionController::TestCase
  setup do
    @programme2013 = programme2013s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:programme2013s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create programme2013" do
    assert_difference('Programme2013.count') do
      post :create, programme2013: { date: @programme2013.date, description: @programme2013.description, title: @programme2013.title }
    end

    assert_redirected_to programme2013_path(assigns(:programme2013))
  end

  test "should show programme2013" do
    get :show, id: @programme2013
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @programme2013
    assert_response :success
  end

  test "should update programme2013" do
    patch :update, id: @programme2013, programme2013: { date: @programme2013.date, description: @programme2013.description, title: @programme2013.title }
    assert_redirected_to programme2013_path(assigns(:programme2013))
  end

  test "should destroy programme2013" do
    assert_difference('Programme2013.count', -1) do
      delete :destroy, id: @programme2013
    end

    assert_redirected_to programme2013s_path
  end
end
