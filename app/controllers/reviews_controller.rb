class ReviewsController < ApplicationController

  def new
    @course = Course.find(params[:course_id])
    @review = Review.new
  end

  def create
    @course = Course.find(params[:course_id])
    @review = Review.new(review_params)
    @review.course = @course
    @review.user = current_user
    if @review.save
      redirect_to course_path(@course)
    else
      render "courses/show"
    end
  end

  def destroy
    @review = Review.find(params[:id])
    @review.destroy
    flash[:notice] = "commentaire supprimé"
    redirect_to profiles_path
  end


  private

  def review_params
    params.require(:review).permit(:note, :content, :selfie, :lost_calories, :felt_difficulties, :time_spent)
  end
end
