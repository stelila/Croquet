require 'test_helper'

class Programme2013sControllerTest < ActionController::TestCase
  setup do
    @programme_2013 = programme_2013s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:programme_2013s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create programme_2013" do
    assert_difference('Programme2013.count') do
      post :create, programme_2013: { date: @programme_2013.date, description: @programme_2013.description, title: @programme_2013.title }
    end

    assert_redirected_to programme_2013_path(assigns(:programme_2013))
  end

  test "should show programme_2013" do
    get :show, id: @programme_2013
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @programme_2013
    assert_response :success
  end

  test "should update programme_2013" do
    patch :update, id: @programme_2013, programme_2013: { date: @programme_2013.date, description: @programme_2013.description, title: @programme_2013.title }
    assert_redirected_to programme_2013_path(assigns(:programme_2013))
  end

  test "should destroy programme_2013" do
    assert_difference('Programme2013.count', -1) do
      delete :destroy, id: @programme_2013
    end

    assert_redirected_to programme_2013s_path
  end
end
