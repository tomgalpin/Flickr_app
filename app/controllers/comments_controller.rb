class CommentsController < ApplicationController
  def new
  end

  def create
    if params[:photo_id].present?
      @photo = Photo.find(params[:photo_id])

      @comment = @photo.comments.build(params[:comment])
      if @comment.save
        redirect_to album_path(@photo.album)
      end
    else
      @album = Album.find(params[:album_id])

      @comment = @album.comments.build(params[:comment])
      if @comment.save
        redirect_to user_path(current_user.id)
      end



    end
  end
end
