class ListController < ApplicationController
  def index
  render json: list.all, status: 200
  end

  def show
    if list.exist?(params{list.id})
      render List.all[list_id].to_json, status: 200
    else
      render json: { message: "Not Found" }, status: 404
    end
  end

  def create
    list = List.new(id: params[:id])

    if list.save
      render json: list.to_json, status: 200
    else
      render json: list.errors.to_json, status: :unprocessable_entity
    end
  end

  def update
    list = List.find (params[:id])
    if list.update(list_id: params[:list_id], list_id: params[:list_id], quantity: params[:quantity])
      render json: order.to_json, status: 200
    else
      render json: order.errors.to_json, status: :unprocessable_entity
    end
  end

  def destroy
    if List.exists?(params[:id])
      List.destroy(params[:id])
      render json: { message: "List destroyed." }, status: 200
    else
      render json: { message: "List not found." }, status: 404
    end
  end
end

private

def render_not_found
  "404, Not Found"
end
