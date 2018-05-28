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
    @course = Course.new
  end

  def search_course
    @courses = Course.all
   raise
    @courses = @courses.where(category: params[:category])
    @courses = @courses.where(difficulty: params[:difficulty])
    @courses = @courses.where(time: params[:time])

    if @courses.count > 1
      @course = @courses.sample
    else
      @courses = @course
    end
    # category = params[:category]
    # difficulty = params[:difficulty]
    # time = params[:time]
    redirect_to course_path(@course_id)
    # @courses = Course.all
end
    #
    #
    #


end
