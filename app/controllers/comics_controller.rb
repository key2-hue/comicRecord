class ComicsController < ApplicationController
  before_action :authenticate_user!, except: :index
  def new
    @comic = Comic.new
    3.times { @comic.thumbnails.build }
  end

  def index
    if user_signed_in?
      redirect_to user_path(current_user)
    else

    end
  end

  def show
    @comic = Comic.find(params[:user_id])
    @thumbnails = Thumbnail.where(comic_id: @comic)
  end

  def create
    @comic = Comic.new(comic_params)
    if @comic.save
      redirect_to user_path(current_user), notice: "登録完了！"
    else
      redirect_to user_path(current_user)
    end
  end

  def edit
    @comic = Comic.find(params[:user_id])
    @thumbnails = Thumbnail.where(comic_id: @comic.id)
  end

  def update
    @comic = Comic.find(params[:user_id])
    @thumbnails = Thumbnail.where(comic_id: @comic.id)
    @thumbnails.each do |thumb|
      if thumb
        Thumbnail.update(image: thumb.image.url)
      else
      end
    end
    # binding.pry
    @comic.update(comic_params)
    # @thumnails.update(thumbnail_params)
    redirect_to user_path(current_user)
  end


  def destroy
    @comic = Comic.find(params[:user_id])
    @thumbnail = Thumbnail.find_by(comic_id: @comic)
    @comic.destroy
    if @thumbnail
      @thumbnail.destroy
    end
    redirect_to user_path(current_user)
  end

  private

  def comic_params
    params.require(:comic).permit(:title, :volume, :thought, :genre, thumbnails_attributes: [:image]).merge(user_id: current_user.id)
  end

  def thumbnail_params
    params.require(:thumbnail).permit(:id, :comic_id, :image)
  end
end
