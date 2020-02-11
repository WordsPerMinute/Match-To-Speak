class AccountsController < ApplicationController


    def index
      @account = Account.all
      render json: @account, include: [:sessions]
    end

    def show
      @account = Account.find(params[:id])
      render json: @account, include: [:sessions]
    end

    def create
      @account = Account.create(
        name: params[:name],
        zip: params[:zip],
        learning: params[:learning_id],
        teaching: params[:teaching_id],
        bio: params[:bio],
        email: params[:email]
      )

      redirect to "http://localhost:3000"
    end

end
