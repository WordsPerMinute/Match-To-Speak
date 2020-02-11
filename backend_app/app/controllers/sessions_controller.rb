class SessionsController < ApplicationController

  def index
    @session = Session.all
    render json: @session, include: [:accounts]
  end

  def show
    @session = Session.find(params[:id])
    render json: @session, include: [:accounts]
  end

  def create
    @session = Session.create(
      learner: params[:account_id],
      teacher: params[:account_id],
      language: params[:language]

    )

    redirect to "http://localhost:3000"
  end

end
