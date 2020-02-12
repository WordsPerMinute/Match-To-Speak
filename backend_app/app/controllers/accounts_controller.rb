class AccountsController < ApplicationController


    def index
      @account = Account.all
      render json: @account
    end

    def show
      @account = Account.find(params[:id])
      render json: @account
    end

    def create
      @account = Account.create(
        name: params[:name],
        zip: params[:zip],
        learning: params[:learning],
        teaching: params[:teaching],
        bio: params[:bio],
        email: params[:email]
      )

      redirect to "http://localhost:3001"
    end


end
