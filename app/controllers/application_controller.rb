class ApplicationController < ActionController::Base
    helper_method :logged_in_as_admin?
    helper_method :current_admin
    helper_method :authenticate
    helper_method :render_flash

    # helper_method :current_auth_token
    # helper_method :require_guest_uuid

    def logged_in_as_admin?
        !!current_admin
    end

    def current_admin
        # Look up the current student based on user_id in the session cookie:
        @current_admin_user ||= Admin::User.find(decoded_auth_token[:session_id]) if decoded_auth_token
    end

    def decoded_auth_token
        @decoded_auth_token ||= JsonWebToken.decode(http_auth_cookie)
    end

    def http_auth_cookie
        if cookies[:auth_token].present?
            logger.debug("Cookies present")
            return cookies[:auth_token]
        else
            logger.debug 'Missing token'
        end
    end

    def authenticate
        if !logged_in_as_admin?
            # cookies[:referer] = { value: request.url, domain: ".#{Notebank::DOMAIN}" }
            redirect_to admin_login_url
        end
    end
end
