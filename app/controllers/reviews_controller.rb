class ReviewsController < ApplicationController
  
  def create
    if not user_signed_in?
      redirect_to new_user_session_path, :flash => { :error => "Please sign in to review" }
    else
    	gsi = Gsi.find(params[:id])
    	review = Review.new
    	review.user = current_user
    	review.gsi = gsi

    	review.update(review_params)
      if not review.valid?
        flash[:error] = "Ratings are out of 10."
      end
    	review.save
    	redirect_to gsi_path(gsi.id)
    end
  end

  private

  def review_params
  	params.require(:review).permit(:content, :clarity, :attitude, :problem, :concept)
  end

  def edit

  end

end