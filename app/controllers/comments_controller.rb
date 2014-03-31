class CommentsController < ApplicationController
  before_filter :authenticate_user!


	def create
	  @comment = current_user.comments.create(link_params)
	  redirect_to :back 
	end


private
    def link_params
      params.require(:comment).permit(:message, :link_id, :user_id)
    end
end

