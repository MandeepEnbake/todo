class TasksController < ApplicationController
	def new
		@task = Task.new
	end
	def create
		@task = Task.create(task_params)
		@tasks = Task.order("id DESC").all
	end
	def destroy
	    @task = Task.find(params[:id])
	    @task.destroy
	    @tasks = Task.order("id DESC").all
	  end
	private
	def task_params
		params.require(:task).permit(:title, :note, :completed)
	end
end
