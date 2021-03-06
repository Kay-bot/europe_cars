class UsersController < ApplicationController
    def new
        @user = User.new
      end
      

      def create
        form_params = params.require(:user).permit(:name, :email, :password, :password_confirmation)
        @user = User.new(form_params)
        if @user.save
          session[:user_id] = @user.id
          redirect_to root_url, notice: "Thank you for signing up!"
        else
          render "new"
        end
      end
end
  