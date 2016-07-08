class ListController < ApplicationController
  def index
  render User.all.to_json
  end

  def show
    if user_exist?
      render User.all[user_id].to_json
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
