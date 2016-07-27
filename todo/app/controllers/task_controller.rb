class TaskController < ApplicationController
  def index
  render Task.all.to_json
  end

  def show
    if task.exist?
      render Task.all[task_id].to_json, status: 200
    else
      render_not_found
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
    task = Task.find (params[:id])
  end

  def destroy
    if Task.exists?(params[:id])
      Task.destroy(params[:id])
      render json: { message: "Task destroyed." }, status: 200
    else
      render json: { message: "Task not found." }, status: 404
    end
  end
end

private

def render_not_found
  "404, Not Found"
end
