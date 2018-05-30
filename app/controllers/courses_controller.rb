

class CoursesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show, :filter, :search_cours]

  def index
    @courses = Course.all
  end

  def show
    @course = Course.find(params[:id])
    @reviews = @course.reviews
    all_notes = @reviews.pluck(:note)
    @average_notes = all_notes.sum.fdiv all_notes.count
    all_difficulties = @reviews.pluck(:felt_difficulties)
    if all_difficulties.count != 0
    @average_difficulties = all_difficulties.sum / all_difficulties.count
    else
      p "no reviews yet"
    end

    all_times = @reviews.pluck(:time_spent)
    if all_times.count != 0
    @average_times = all_times.sum / all_times.count
    else
      p "no reviews yet"
    end


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
    # @start = @markers.slice!(0)
    # @start[:icon] = "https://cdn3.iconfinder.com/data/icons/freeapplication/png/24x24/Go.png"
    # @end = @markers.slice!((@markers.length) - 1)
    # @end[:icon] = "https://cdn0.iconfinder.com/data/icons/iconsweets2/40/finish_line.png"
    # @path = @steps.map do |step|
    #   [step.latitude, step.longitude]
    # end
  end




  def filter
    @course = Course.new
  end

  def search_course
    sleep(3)
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
    if @course.present?
      redirect_to course_path(@course)
    else
      redirect_to filter_path
    end
    # @courses = Course.all
end
    #
    #
    #


end
