class WalletsController < ApplicationController
  def index
    wallets = Wallet.all

    render status: :ok, json: wallets
  end

  def create
    wallet = Wallet.new wallet_params

    if wallet.save
      render status: :no_content, json: {}
    else
      render status: :bad_request, json: wallet.errors.messages
    end
  end

  def update
    wallet = Wallet.find params[:id]

    if wallet.update wallet_params
      render status: :no_content, json: {}
    else
      render status: :bad_request, json: wallet.errors.messages
    end
  end

  private

  def wallet_params
    params.permit(:name)
  end
end
