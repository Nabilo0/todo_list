class UsersController < Clearance::UsersController
#ApplicationController
def show
@user = User.find_by_id(params[:id])
 end


def edit
@user = User.find(params[:id])
	end

	def update
		@user = User.find(current_user)
		@user.update(user_params)
		redirect_to root_path
		flash[:notice]= "Done Homie"

	end


private


def user_params

params.require(:user).permit(:email)
end
end
