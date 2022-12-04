class PhoneNumbersController < ApplicationController
  def create
    @user=User.find(params[:user_id])
    @phone=PhoneNumber.new(check_params)
    if @user.phoneNumber=@phone
        redirect_to @user
    else
      render :new , status: :unprocessable_entity
    end
  end
  def new 
    @user=User.find(params[:user_id])
    @phone=PhoneNumber.new
  end

  private
  def check_params
    params.require(:phoneNumber).permit(:number)
  end
end
