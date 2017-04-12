class CoursesController < ApplicationController

  def index
    @courses = Course.all
  end

  def show
    @course = Course.find(params[:id])
  end

  def new
    @course = Course.new
  end

  def create
    # if the course is able to be saved
      @course = Course.new(course_params)
      if @course.save
        redirect_to courses_path
      else
        # if it's not, we should show the user the new view again
        render 'new'
      end
    # and display all of the error message that we have
  end

  def edit
    @course = Course.find(params[:id])
  end

  private

  def course_params
    params.require(:course).permit(:name, :description)
  end

end
