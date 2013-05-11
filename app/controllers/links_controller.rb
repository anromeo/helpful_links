class LinksController < ApplicationController
  def index
    @links = Link.all
    respond_to do |format|
      format.html
      format.json {render json: @links}
    end
  end

  def new
    @link = Link.new

  end

  def create
    @link = Link.new(params[:link])
    if @link.save
      flash[:notice] = 'Thanks for the new link!'
      redirect_to links_path
    else
      flash[:notice] = "Sorry but that link can't be added"
      render :new
    end
  end
  def show
    @link = Link.find(params[:id])
  end
end
