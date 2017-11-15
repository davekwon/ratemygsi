class CoursesController < ApplicationController
	def new
		@course = Course.new
	end

	def create
		@course = Course.new
		@course.name = params[:course][:name]
		@course.save
		if @course.valid?
			puts params
			redirect_to root_path
		else
			flash[:error] = @course.errors.full_messages.to_sentence
			redirect_to pageToNewCourse_path
		end
	end

	def index
		@curUserId = current_user.id
		@courses = Course.all
	end

	def show
		@course = Course.find(params[:id])
		@gsiForThisCourse = Gsi.where(course: @course.id)
	end
end