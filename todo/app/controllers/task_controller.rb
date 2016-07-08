class TaskController < ApplicationController
  def index
  render User.all.to_json
  end

  def show
    if task.exist?
      render List.all[task_id].to_json, status: 200
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
