class BooksController < ApplicationController
  def index
    @book = Book.new
  end

  def show
  end

  def edit
  end
  
  def create
    book = Book.new(book_params)
    book.save
    redirect_to book_path(:id)
  end
  
  private
  
  def book_params
    params.permit(:title, :body)
  end

end
