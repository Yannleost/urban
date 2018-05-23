class CoursesController < ApplicationController
  def index
    @courses = Course.all
  end

  def show
    @course = Course.find(params[:id])
  end


  def filter
    #la personne selectionne une category : on recupere la param_id de la category
    #dans la category on selectionne un parcours et on recupere lle param_id du parcours de cette category
    #

  end

  def search_courses
    #compliqué
  end


end
