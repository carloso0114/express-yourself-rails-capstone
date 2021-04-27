class VotesController < ApplicationController
    def create
        @vote = current_user.votes.new(opinion_id: params[:opinion_id])
    
        if @vote.save
            redirect_to '/'
        end
    end
end
