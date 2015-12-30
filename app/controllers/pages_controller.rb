class PagesController < ApplicationController
	def home
		@tasks = Task.order("id DESC").all
	end
end
