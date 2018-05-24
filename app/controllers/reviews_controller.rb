class ReviewsController < ApplicationController

  def new
    @course = Course.find(params[:course_id])
    @review = Review.new
  end

  def create
    @review = Review.new(review_params)
    @review.course = Course.find(params[:course_id])
    @review.save
  end

  def destroy
    @review = Review.find(params[:id])
    @review.destroy
    redirect_to course_reviews_path
  end

  private

  def review_params
    params.require(:review).permit(:note, :contents, :selfie, :lost_calories, :felt_difficulties, :time_spent)
  end
end
