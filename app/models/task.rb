class Task < ApplicationRecord

  def self.clear_tasks
    Task.delete_all
  end

  def self.checkmarks
    @task = Task.find(13)
    @task.completed = !@task.completed
  end
end
