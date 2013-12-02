require 'test_helper'

class BookALawnsControllerTest < ActionController::TestCase
  setup do
    @book_a_lawn = book_a_lawns(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:book_a_lawns)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create book_a_lawn" do
    assert_difference('BookALawn.count') do
      post :create, book_a_lawn: { date: @book_a_lawn.date, description: @book_a_lawn.description, title: @book_a_lawn.title }
    end

    assert_redirected_to book_a_lawn_path(assigns(:book_a_lawn))
  end

  test "should show book_a_lawn" do
    get :show, id: @book_a_lawn
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @book_a_lawn
    assert_response :success
  end

  test "should update book_a_lawn" do
    patch :update, id: @book_a_lawn, book_a_lawn: { date: @book_a_lawn.date, description: @book_a_lawn.description, title: @book_a_lawn.title }
    assert_redirected_to book_a_lawn_path(assigns(:book_a_lawn))
  end

  test "should destroy book_a_lawn" do
    assert_difference('BookALawn.count', -1) do
      delete :destroy, id: @book_a_lawn
    end

    assert_redirected_to book_a_lawns_path
  end
end
