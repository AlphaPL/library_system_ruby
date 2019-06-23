require 'test_helper'

class BooksControllerTest < ActionController::TestCase
  setup do
    @book = books(:one)
  end

  test "should get index" do
    get :index
    assert_response :found
  end

  test "should get new" do
    get :new
    assert_response :found
  end

  #test "should create book" do
   #   assert_difference('Book.count') do
    #  post :create, book: { title: "fakeTitle", description: 'fakeDescription', author: 'fakeAuthor', isbn: 'fakeIsbn',  is_borrowed: false, is_deleted: false,}
   # end

    #assert_redirected_to book_path(assigns(:book))
  #end

  test "should show book" do
    get :show, id: @book.id
    assert_response :found
  end

  test "should get edit" do
    get :edit, id: @book
    assert_response :found
  end

  test "should update book" do
    patch :update, id: @book.id, book: {title: @book.title, description: @book.description, author: @book.author, isbn: @book.isbn, is_borrowed: @book.is_borrowed, is_deleted: @book.is_deleted}
    assert_response :redirect
  end

  test "should destroy book" do
    delete :destroy, id: '1'
    assert_response :redirect
  end
end
