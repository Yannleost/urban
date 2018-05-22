class CoursesController < ApplicationController
  def index
    @courses = Course.all
  end

  def show
    @course = Course.find(params[:id])
  end


  def filter
  end

  def search_courses
    #compliqué
  end


end
