class TasksController < ApplicationController
  def index
    @tasks = Task.all.sort_by { |task| [task.priority, -task.added] }.reverse!
    @users = User.all
  end

  def clear
    Task.clear_tasks
    redirect_to tasks_path
  end

  def checkmark
    task = Task.find(params[:task])
    task.completed = !task.completed
    user = User.find(params[:user])
    task.user_complete = user.name
    task.complete_time = DateTime.now
    task.save!
    redirect_to tasks_path
  end

  def new; end

  def create
    new_task = Task.new
    new_task.name = params[:task_name]
    new_task.description = params[:task_description]
    new_task.category = params[:task_category]
    new_task.priority = params[:priority]
    new_task.added = DateTime.now
    new_task.user_add = current_user.name
    new_task.completed = false
    new_task.save!
    redirect_to tasks_path
  end

  def priority_color(priority)
    case priority
    when 1
      'text-success'
    when 2
      'text-warning'
    when 3
      'text-danger'
    else
      'text-primary'
    end
  end
end
