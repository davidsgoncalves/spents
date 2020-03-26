class SpentsController < ApplicationController
  def index
    spents = Spent.all

    render status: :ok, json: spents
  end

  def create
    spent = Spent.new spents_params

    if spent.save
      render status: :no_content, json: {}
    else
      render status: :bad_request, json: spent.errors.messages
    end
  end

  def update
    spent = Spent.find params[:id]

    if spent.update wallet_params
      render status: :no_content, json: {}
    else
      render status: :bad_request, json: spent.errors.messages
    end
  end

  def delete
    spent = Spent.find params[:id]

    if spent.delete
      render status: :no_content, json: {}
    else
      render status: :bad_request, json: spent.errors.messages
    end
  end

  private

  def spents_params
    params.permit(:name, :wallet_id, :category_id)
  end
end
