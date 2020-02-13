class AccountsController < ApplicationController


    def index
      @accounts = Account.all
      render json: @accounts
    end

    def show
      @account = Account.find(params[:id])
      @accounts = Account.all

      @teacher_list = @accounts.where(teaching: @account.learning)

      @learner_list = @accounts.where(learning: @account.teaching)

      render json: {user: @account, teacher_list: @teacher_list, learner_list: @learner_list}
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

    def update
      @account = Account.find(params[:id])
      @account.update(name: @account.name, zip: params[:zip])

    end

    def destroy

    end

end
