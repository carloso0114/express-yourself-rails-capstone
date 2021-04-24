class OpinionsController < ApplicationController
  before_action :logged_in_user

  def home; end

  def new
    @opinion = current_user.opinion.new
  end

  def index
    @opinion = Opinion.all
  end

  def create
    @opinion = current_user.opinions.build(opinion_params)
    if @opinion.save
      flash[:success] = 'Opinion has been created!'
      redirect_to @opinion
    else
      render 'new'
    end
  end

  def edit
    @opinion = current_user.opinions.find(params[:id])
  end

  def update
    @opinion = current_user.opinions.find(params[:id])
    if @opinion.update_attributes(opinion_params)
      flash[:success] = 'Opinion updated'
      redirect_to @opinion
    else
      render 'edit'
    end
  end

  def destroy
    @opinion = current_user.opinions.find(params[:id])
    if @opinion
      @opinion.destroy
      flash[:success] = 'Opinion has been deleted'
    else
      flash[:alert] = 'Error'
    end
    redirect_to root_path
  end

  def show
    @opinion = Opinion.find(params[:id])
  end

  private

  def opinion_params
    params.require(:opinion).permit(:author_id, :text)
  end
end
