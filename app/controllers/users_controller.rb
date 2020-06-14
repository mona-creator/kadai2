class UsersController < ApplicationController
    before_action :authenticate_user!

  def index
        @book_new=Book.new
        @user = current_user
        @users = User.all
  end
  def show
  	    @book_new=Book.new
        @user = User.find(params[:id])
        @books =@user.books

  end
  def edit
        @user = User.find(params[:id])
        if @user == current_user
           render "edit"
        else
            redirect_to user_path(current_user)
        end
  end
  def update
  	@user = User.find(params[:id])
        if @user.update(user_params)
           redirect_to user_path(@user.id), notice:'successfully'
        else
          render "edit"
        end
  end

private
    def user_params
        params.require(:user).permit(:name, :introduction, :profile_image)
    end

end
