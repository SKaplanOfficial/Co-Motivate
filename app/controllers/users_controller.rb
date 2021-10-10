class UsersController < ApplicationController
    include ApplicationHelper
    before_action :authorized, only: [:show]

    def new
        @user = User.new
    end

    def create
        @user = User.new(user_params)
        if @user.valid? && @user.save
            session[:user_id] = @user.id
            redirect_to @user
        else
            render :new
        end
    end

    def show
        @user = User.find(params[:id])
    end

    def edit
        @user = User.find(params[:id])
    end

    def update
        @user = User.find(params[:id])

        @user.username = user_params[:username]

        if user_params[:new_password] != ""
            if @user.authenticate(user_params[:password])
                if user_params[:new_password] == user_params[:password_confirmation]
                    puts "Updating user password..."
                    @user.password = user_params[:new_password]
                    # @user.password_digest = BCrypt::Password.create(user_params[:new_password])
                end
            end
        end

        seed1 = user_params[:pref_short_challenges].to_i
        seed2 = user_params[:pref_long_challenges].to_i << 1
        seed3 = user_params[:pref_topic_challenges].to_i << 2
        seed4 = user_params[:pref_category_challenges].to_i << 3

        new_pref_seed = (seed1 | seed2 | seed3 | seed4).to_i
        if new_pref_seed != @user.pref_seed
            puts "Updating user challenge type preference..."
            @user.pref_seed = new_pref_seed
        end

        @user.icon = user_params[:icon]
        @user.message_color = user_params[:message_color]

        @user.pref_short_challenges = user_params[:pref_short_challenges]
        @user.pref_long_challenges = user_params[:pref_long_challenges]
        @user.pref_topic_challenges = user_params[:pref_topic_challenges]
        @user.pref_category_challenges = user_params[:pref_category_challenges]

        @user.save!
        render :edit
    end

    private

    def user_params
        params.require(:user).permit(:username, :password, :password_confirmation, :new_password, :icon, :message_color, :pref_short_challenges, :pref_long_challenges, :pref_topic_challenges, :pref_category_challenges, :pref_seed)
    end
end
