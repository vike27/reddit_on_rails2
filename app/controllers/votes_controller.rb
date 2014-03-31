class VotesController < ApplicationController
  before_filter :authenticate_user!

	def show
	
	end

	def new
     
	end

	def create
	  
	end

	def destroy
	 
	end

	def edit
	  
	end

	def update
	
	end

private
    def link_params
      params.require(:vote).permit(:up, :link_id, :user_id)
    end
end
