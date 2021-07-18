class UsersController < ApplicationController
  def new
  end

  def create
    departments = Department.select(:id,:name)
    if departments.map(&:name).include?(params[:department])
      dep_id = departments.select{ |x| x.name == params[:department]}.first.id
    else
      dep_id = Department.create({'name':params[:department]}).id
    end
	  user = User.new(user_params)
    user.department_id = dep_id
	  if user.save!
	    session[:user_id] = user.id
	    redirect_to '/'
	  else
	    redirect_to '/signup'
	  end
  end

  private

  def user_params
  	params.permit(:name, :email, :password, :password_confirmation)
  end
end
