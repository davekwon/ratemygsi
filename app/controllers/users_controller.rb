class ReviewsController < ApplicationController
  
  def create
  	gsi = Gsi.find(params[:id])
  	review = Review.new
  	review.user = current_user
  	review.gsi = gsi

  	review.update(review_params)
  	review.save
  	redirect_to gsi_path(gsi.id)
  end

  private

  def review_params
  	params.require(:review).permit(:content, :clarity, :attitude, :problem, :concept)
  end

end