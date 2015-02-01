module API
  class BooksController < BaseController
    def index
      @books = Book.all
      render json: @books
    end

    def create
      @book = Book.new(book_params)

      if @book.save
        render json: @book
      else
        render json: { errors: @book.errors }
      end
    end

    protected

    def book_params
      params.require(:book).permit(:description)
    end
  end
end
