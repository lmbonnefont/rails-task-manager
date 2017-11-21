class TasksController < ApplicationController
  def index
    @tasks = Task.all
  end

  def new
    @task = Task.new
  end

  def create
    Task.create(tasks_params)
    redirect_to tasks_path
  end

  def show
    @task = Task.find(params["id"])
  end

  def edit
    @task = Task.find(params["id"])
  end

  def update
    binding.pry
    @task = Task.find(params["id"])
    @task.update(tasks_params)
    redirect_to tasks_path
  end

  def destroy
    @task = Task.find(params["id"])
    @task.destroy
    redirect_to tasks_path
  end

  private
  def tasks_params
    params.require("task").permit("title", "details", "completed")
  end
end
