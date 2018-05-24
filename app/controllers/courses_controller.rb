class CoursesController < ApplicationController
  def index
    @courses = Course.all
  end

  def show
    @course = Course.find(params[:id])
    # @reviews = Review.all(@course)
    @steps =  @course.steps
    @markers = @steps.map do |step|
      {
        lat: step.latitude,
        lng: step.longitude#,
      }

    end
  end



  def filter
    #la personne selectionne une category : on recupere la param_id de la category
    #dans la category on selectionne un parcours et on recupere lle param_id du parcours de cette category
    #
    @course = Course.new

  end

  def search_course
    time = params[:time]
    difficulty = params[:difficulty]
    category = params[:category]

    #compliqué
  end


end
