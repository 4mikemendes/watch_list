class BookmarksController < ApplicationController
  def new
    @bookmark = Bookmark.new
  end

  def create
    @bookmark = Bookmark.new(boormark_params)
    if @bookmark.save
      redirect_to list_path(@list)
    else
      render :new
    end
  end

  def boormark_params
    params.require(:bookmark).permit(:comment, :movie_id)
  end
end
