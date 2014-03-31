class PagesController < ApplicationController

	def index
	  @link = Link.paginate(:page => params[:page], :per_page => 3 )
	  params[:per_page] ||= 25
	  params[:page]     ||= 1
	end



	
end
