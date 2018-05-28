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
        lng: step.longitude,
        infoWindow: {
          content: render_to_string(partial: "/steps/map_box", locals: { step: step })
        }

      }
    end

    @path = @steps.map do |step|
      [step.latitude, step.longitude]
    end
  end




  def filter
    @course = Course.new
  end

  def search_course
    @courses = Course.all
    @courses = @courses.where(category: params[:course][:category])
    @courses = @courses.where(difficulty: params[:course][:difficulty])
    @courses = @courses.where(time: params[:course][:time])


    if @courses.count > 1
      @course = @courses.sample
    else
      @course = @courses.first
    end
    # category = params[:category]
    # difficulty = params[:difficulty]
    # time = params[:time]
    redirect_to course_path(@course)
    # @courses = Course.all
end
    #
    #
    #


end
