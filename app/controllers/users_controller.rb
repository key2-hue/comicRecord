class UsersController < ApplicationController
  
  def show
    @user = User.find(params[:id])
    @comics = @user.comics.order("id DESC").page(params[:page]).per(6)
    @comicsReverse = @user.comics.order("id ASC").page(params[:page]).per(6)
    @comicNumber = @user.comics.count
  end

end
