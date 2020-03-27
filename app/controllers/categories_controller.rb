class CategoriesController < ApplicationController
  def index
    categories = Category.all.order(:id)

    render status: :ok, json: categories
  end

  def show
    category = Category.find(params[:id])

    render status: :ok, json: category
  end

  def create
    category = Category.new categories_params

    if category.save
      render status: :no_content, json: {}
    else
      render status: :bad_request, json: category.errors.messages
    end
  end

  def update
    category = Category.find params[:id]

    if category.update categories_params
      render status: :no_content, json: {}
    else
      render status: :bad_request, json: category.errors.messages
    end
  end

  private

  def categories_params
    params.permit(:name)
  end
end
