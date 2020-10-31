class ApplicationController < ActionController::Base

    def authorize_admi!
        unless current_user.admi?
            flash[:error] = "Debes ser admi para ingresar en esta sección"
            redirect_to new_user_session_url
        end
    end
end
