class SessionsController < ApplicationController
    def new
    end

    def create
        @user = User.find_by(username: params[:username])

        # Attempt to authenticate
        if !!@user && @user.authenticate(params[:password])
            # Redirect on success
            session[:user_id] = @user.id
            redirect_to @user
        else
            # Display error on failure
            message = "Incorrect username or password!"
            redirect_to login_path, notice: message
        end
    end

    def destroy
        session[:user_id] = nil
        redirect_to login_path
    end
end
