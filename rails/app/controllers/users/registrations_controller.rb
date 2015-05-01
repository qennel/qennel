class Users::RegistrationsController < Devise::RegistrationsController
	before_filter :configure_sign_up_params, only: [:create]
# before_filter :configure_account_update_params, only: [:update]

  # GET /resource/sign_up
  # def new
  #   super
  # end

  # POST /resource
	def create
    super

		if Profession.find_by_id(resource.profession_id).blank?
			resource.profession_id = nil
			resource.save
		end
		#validate_profession
		# resource.profession_id = 1
		# resource.save
		# resource.profession_id = sign_up_params[:profession_id]
		# resource.save
  end

  # GET /resource/edit
  # def edit
  #   super
  # end

  # PUT /resource
  # def update
  #   super
  # end

  # DELETE /resource
  # def destroy
  #   super
  # end

  # GET /resource/cancel
  # Forces the session data which is usually expired after sign
  # in to be expired now. This is useful if the user wants to
  # cancel oauth signing in/up in the middle of the process,
  # removing all OAuth session data.
  # def cancel
  #   super
  # end

  # protected

  # You can put the params you want to permit in the empty array.
  def configure_sign_up_params
    devise_parameter_sanitizer.for(:sign_up) << :profession_id
		#devise_parameter_sanitizer.for(:sign_up) { |u| u.permit( :first_name, :last_name, :profession_id, :password_confirmation, :password, :email ) }
  end

	def validate_profession
		if sign_up_params[:profession_id].present?
			if Profession.find_by_id(sign_up_params[:profession_id]).blank?
				sign_up_params[:profession_id] = nil
			end
		end
		debugger
	end
  # You can put the params you want to permit in the empty array.
  # def configure_account_update_params
  #   devise_parameter_sanitizer.for(:account_update) << :attribute
  # end

  # The path used after sign up.
  # def after_sign_up_path_for(resource)
  #   super(resource)
  # end

  # The path used after sign up for inactive accounts.
  # def after_inactive_sign_up_path_for(resource)
  #   super(resource)
  # end
end
