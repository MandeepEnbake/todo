class TasksController < ApplicationController
	def new
		@task = Task.new
		render :show_form
	end
	def create
		@task = Task.create(task_params)
		@tasks = Task.order("id DESC").all
		render :hide_form
	end
	def edit
		@task = Task.find(params[:id])
		render :show_form
	end
	def destroy
	    @task = Task.find(params[:id])
	    @task.destroy
	    @tasks = Task.order("id DESC").all
	  end
	def update
		@task = Task.find(params[:id])
		@task.update_attributes(task_params)
		@tasks = Task.order("id DESC").all
		render :hide_form
	end 
	private
	def task_params
		params.require(:task).permit(:title, :note, :completed)
	end
end
