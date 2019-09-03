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
    @thumbnails = Thumbnail.where(comic_id: @comic.id)
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
  end

  def update
    @comic = Comic.find(params[:user_id])
    @comic.update(comic_params)
    redirect_to user_path(current_user)
  end


  def destroy
    @comic = Comic.find(params[:user_id])
    @comic.destroy
    redirect_to user_path(current_user)
  end

  private

  def comic_params
    params.require(:comic).permit(:title, :volume, :thought, :image, :image_two, :image_three, thumbnails_attributes: [:image]).merge(user_id: current_user.id)
  end
end
