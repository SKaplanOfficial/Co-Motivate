class ChallengesController < ApplicationController


    def new
        @challenge = Challenge.new
    end

    def forum
    end

    def create
        @challenge = Challenge.new(challenge_params)
        if true
            redirect_to @challenge
        end
    end

    def challenge_params
        params.require(:challenge).permit(:cat_seed, :topic_seed, :type_seed, :text, :discussion)
    end
end
