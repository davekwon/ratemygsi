class GsisController < ApplicationController
  def new
    @gsi = Gsi.new
  end

  def create
    course = Course.find(params[:id])
    gsi = Gsi.new
    gsi.course = course
    gsi.update(gsi_params)
    gsi.save
    redirect_to course_path(course)
  end

  def show
    @gsi = Gsi.find(params[:id])
  end

  def gsi_params
    params.require(:gsi).permit(:name)
  end

end
