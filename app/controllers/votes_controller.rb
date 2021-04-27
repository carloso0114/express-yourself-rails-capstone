class VotesController < ApplicationController
  def create
    @vote = current_user.votes.new(opinion_id: params[:opinion_id])

    redirect_to '/' if @vote.save
  end
end
