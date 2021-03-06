require 'test_helper'

class BookHistoriesControllerTest < ActionController::TestCase
  setup do
    @book_history = book_histories(:one)
  end

  test "should get index" do
    get :index
    assert_response :found
  end

  test "should get new" do
    get :new
    assert_response :found
  end

  test "should create book_history" do
    post :create, book_history: { book_id: 123, chk_in_date: @book_history.chk_in_date, chk_out_dt: @book_history.chk_out_dt, user_id: @book_history.user_id }
    assert_response :redirect
  end

  test "should show book_history" do
    get :show, id: @book_history
    assert_response :found
  end

  test "should get edit" do
    get :edit, id: @book_history
    assert_response :found
  end

  test "should update book_history" do
    patch :update, id: @book_history, book_history: { book_id: @book_history.book_id, chk_in_date: @book_history.chk_in_date, chk_out_dt: @book_history.chk_out_dt, user_id: @book_history.user_id }
    assert_response :redirect
  end

 # test "should destroy book_history" do
  #  assert_difference('BookHistory.count', -1) do
   #   delete :destroy, id: @book_history
    #end

   # assert_redirected_to book_histories_path
  #end
end
