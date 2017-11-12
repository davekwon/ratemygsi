class CoursesController < ApplicationController
	def new
		@course = Course.new
	end

	def create
		@course = Course.new
		@course.name = params[:course][:name]
		@course.save
		if @course.valid?
			redirect_to course_path([:course][:id])
		else
			flash[:error] = @course.errors.full_messages.to_sentence
			redirect_to pageToNewCourse_path
		end
	end

	def index
		@courses = Course.all
	end

	def show
		@course = Course.find(params[:id])
	end
end