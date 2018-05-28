class CoursesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show, :filter]

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
    @courses = Course.all
  end

  def search_course
    time = params[:category]
    time = params[:difficulty]
    time = params[:time]
    # @courses = Course.all

    # @courses = @courses.where(category: params[:category])
    # @courses = @courses.where(difficulty: params[:difficulty])
    # @courses = @courses.where(time: params[:time])
  end


end
