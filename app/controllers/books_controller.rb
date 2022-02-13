class BooksController < ApplicationController
  def new
  end

  def index
    @books = Books.all
  end

  def show
  end

  def edit
  end
end
