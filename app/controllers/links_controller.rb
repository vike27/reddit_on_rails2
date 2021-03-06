class LinksController < ApplicationController

	def index
      @link = Link.paginate(:page => params[:page], :per_page => 3 )
	  params[:per_page] ||= 25
	  params[:page]     ||= 1
	end

	def show
	  @link   = Link.find(params[:id])
	  @comment = Comment.new
	  @vote = Vote.new
	end

	def new
      @link = Link.new
	end

	def create
	  @link = Link.new(link_params)
		if @link.save
			redirect_to @link 
		else
			render action: 'new'
		end
	end

	def destroy
	  @link = Link.find(params[:id])
	  if @link.destroy
	  	redirect_to action: 'index'
	  else
	  	render action: 'show'
	  end
	end

	def edit
	  @link = Link.find(params[:id])
	end

	def update
	@link = Link.find params[:id]
      if @link.update(link_params)
      	redirect_to @link 
      else
        render action: 'edit'
      end
	end

private
    def link_params
      params.require(:link).permit(:id, :url, :title)
    end


end