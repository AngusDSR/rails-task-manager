class TasksController < ApplicationController
  def index
    @tasks = Task.all
  end

  def show
    @task = Task.find(params[:id])
    @tasks = Task.all
  end

  def new
    @task = Task.new # this is needed for the form
  end

  def create
    @task = Task.new(task_params)
    @task.save
    redirect_to tasks_path(@task)
  end
end

private

def task_params
  params.require(:task).permit(:title, :details)
end
