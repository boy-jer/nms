class NewslayoutController < ApplicationController

  def index
  	@nl = News.where(:status => 1)
  	respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @nl }
    end
  end

  def show
  	@nl = News.find(params[:id])

#    if @news.status = 2

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @nl }
    end
  end
end
