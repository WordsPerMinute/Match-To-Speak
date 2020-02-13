class MatchesController < ApplicationController

  def index
    @match = Match.all
    render json: @match, include: [:learner, :teacher]
  end

  def show
    @match = Match.find(params[:id])
    render json: @match, include: [:learner, :teacher]
  end

  def create
    @match = Match.create(
      learner: params[:account_id],
      teacher: params[:account_id],
      language: params[:language]

    )
  end


end
