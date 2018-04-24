class MyRegistrationsController < Devise::RegistrationsController

  def destroy
    resource.soft_delete
    Devise.sign_out_all_scopes ? sign_out : sign_out(resource_name)
    set_flash_message :notice, :destroyed
    yield resource if block_given?
    respond_with_navigational(reource){ redirect_to after_sign_out_path_for(resource_name) }
  end

  def create
    build_resource(sign_up_params)
    email_input = User.find_by(email: resource.email)
    if email_input != nil and email_input.is_deleted = true
      cookies['email'] = {
        :value => email_input.email,
        :expires => 1.year.from_now
      }
      flash[:notice] = "Hi there, seems like you deleted your account in the past. Please restore your account below or sign-up with a different email address." 
      super
    else
      super
    end 
  end

  def restore
    User.restore_user(cookies[:email])
    byebug
    redirect_to new_user_session_path
  end 

  private

  def sign_up_params
    params.require(:user).permit(:first_name, :last_name, :email, :phone_number_mobile, :phone_number_office, :password, :password_confirmation)
  end

  def account_update_params
    params.require(:user).permit(:first_name, :last_name, :email, :phone_number_mobile, :phone_number_office, :password, :password_confirmation, :current_password)
  end
end
