class AccountSessionsController < ApplicationController

  def index
    @account_session = Account_session.all
    render json: @account_session
  end

  def show
    @account_session = Account_session.find(params[:id])
    render json: @account_session
  end

  def create
    @account_session = Account_session.create(
      account_id: params[:account_id],
      session_id: params[:session_id]

    )

    redirect to "http://localhost:3000"
  end

end
