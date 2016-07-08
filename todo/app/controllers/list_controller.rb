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
  end

  def update
  end

  def destroy
  end
end

private

def render_not_found
  "404, Not Found"
end
