class Public::UsersController < ApplicationController

  def login
  end

  def register_user
    begin
      @user = User.new(user_params)
      if @user.save
        auth_token = User.generate_token(@user)
        render_success auth_token
      else
        render json: {status: :ERROR}, status: 500
      end
    rescue Exception => e
      render json: {status: :ERROR}, status: 500
    end
    
  end
  private

  def user_params
    params.require(:user).permit(:name, :email, :password_digest)
    #params.require(:user).permit(:name,:email,:password_digest)
  end
end
