class TasksController < ApplicationController
  before_action :find_task, only: [:show, :edit, :update, :destroy]

  def index
    @tasks = Task.all
  end

  def show
  end

  def new
   @task = Task.new
 end

 def create
  Task.create(task_params)
  redirect_to tasks_path
end

def edit
end

def update
  @task.update(task_params)
  redirect_to task_path(@task)
end

def destroy
  @task.destroy
  redirect_to tasks_path
end

private

def find_task
  @task = Task.find(params[:id])
end

def task_params
  params.require(:task).permit(:name, :complete, :importance)
end
end
