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
        email: params[:email],
        photo_url: params[:photo_url]
      )

      @accounts = Account.all
      @redirect_account = @accounts.where(bio: params[:bio])
      @redirect_id = @redirect_account.id

      redirect to "http://localhost:3001/show.html?user_id=#{@redirect_id}"
    end

    def update
      @account = Account.find(params[:id])
      @account.update(name: @account.name, zip: params[:zip])

    end

    def destroy

    end

end
