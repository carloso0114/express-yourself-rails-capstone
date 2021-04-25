class OpinionsController < ApplicationController
  before_action :logged_in_user

  def new
    @opinion = Opinion.new(opinion_params)
  end

  def index
    @opinion = Opinion.all
  end

  def create
    @opinion = Opinion.new(opinion_params)
    if @opinion.save
      flash[:success] = 'Opinion has been created!'
      redirect_to '/'
    else
      render 'new'
    end
  end

  private

  def opinion_params
    params.permit(:author_id, :text)
  end
end
