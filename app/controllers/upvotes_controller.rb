class UpvotesController < ApplicationController

  def upvote_params
    params.require(:upvote).permit(:user_id, :review_id)
  end

  def create
  	@upvote = Upvote.new(secure_params)

    rid = params[:upvote][:review_id]
    if rid.nil?
      rid = params[:upvote][:review]
    end


    @upvote.review = Review.find(rid)
    if @upvote.save
    	puts "*******upvote saved"
    end
  end

  private
    def secure_params
      params.require(:upvote).permit(:user_id, :review_id)
    end

  def destroy
  end
end
