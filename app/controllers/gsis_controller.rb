class GsisController < ApplicationController
  def new
    @gsi = Gsi.new
  end

  def create
    course = Course.find(params[:id])
    gsi = Gsi.new
    gsi.course = course.id
    gsi.update(gsi_params)
    gsi.save
    redirect_to course_path(course)
  end

  def show
    @gsi = Gsi.find(params[:id])
    @course = Course.find(@gsi.course)
  end


  def index
    @gsis = Gsi.all
  end

  def gsi_params
    params.require(:gsi).permit(:name)
  end

end
