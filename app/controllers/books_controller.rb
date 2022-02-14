class BooksController < ApplicationController
  def new
    @book = Book.new
  end

  def create
    @book = Book.new(book_params)
    if @book.save
      flash[:notice] = "successfully created book!"
      redirect_to bookshow_path(@book.id)
    else
      @books = Book.all
      render :index
    end
  end

  def index
    @books = Book.all
    @book = Book.new
  end

  def show
    @book = Book.find(params[:id])
  end

  def edit
    @book = Book.find(params[:id])
  end

  def update
    @book = Book.find(params[:id])
   # book.update(book_params)
    if @book.update(book_params)
      flash[:notice] = "successfully updated!"
    redirect_to bookshow_path(@book.id)
    else
      render :edit
    end
  end

  def destroy
    @book = Book.find(params[:id]) # データ（レコード）を1件取得
    if @book.destroy
      flash[:notice] = "successfully deleted" # データ（レコード）を削除
    redirect_to '/books'  # 投稿一覧画面へリダイレクト
    else
      render :index
    end
  end

  private
  def book_params
    params.require(:book).permit(:title, :body)
  end
end