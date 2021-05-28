class BookmarksController < ApplicationController
  def new
    @bookmark = Bookmark.new
  end

  def create
    @bookmark = Bookmark.new(boormark_params)

  end

  def boormark_params
    params.require(:bookmark).permit(:comment)
  end
end
