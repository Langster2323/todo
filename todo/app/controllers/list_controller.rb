class ListController < ApplicationController
  def index
  render List.all.to_json
  end

  def show
    if list.exist?
      render List.all[list_id].to_json, status: 200
    else
      render_not_found
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
