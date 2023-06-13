class CoursesController < ApplicationController
  def new
    @course = Course.new
  end

  def create
      @course = Course.new(course_params)
  Rails.logger.debug course_params
    # @course = Course.new(course_params)

    if @course.save
      redirect_to @course, notice: 'Course was successfully created.'
    else
      render :new
    end
  end

  private

  def course_params
    params.require(:course).permit(:name, :description)
  end
end
