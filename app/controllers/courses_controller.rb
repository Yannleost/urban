class CoursesController < ApplicationController
  def index
    @courses = Course.all
  end

  def show
    @course = Course.find(params[:id])
    @reviews = @course.reviews
    @steps =  @course.steps
    @markers = @steps.map do |step|
      {
        lat: step.latitude,
        lng: step.longitude#,
      }

    end
  end



  def filter
  end

  def search_courses
    #compliqué
  end


end
