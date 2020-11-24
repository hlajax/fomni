class CustomFailureApp < Devise::FailureApp
    def redirect_url
      if warden_message == :unconfirmed
        return email_confirm_path(email: params[:auteur][:email])
      end
      super
    end
  
    # You need to override respond
    def respond
      if warden_message == :unconfirmed
        Rails.logger.debug "redirect"
        return redirect
      end
      super
    end
  end