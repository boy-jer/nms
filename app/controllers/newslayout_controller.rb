class NewslayoutController < ApplicationController
before_filter :authenticate_user!
  def index
    @nl = News.where(:status => 1, :category => params[:cat], :publish_date => params[:date])
    #@nl = News.any_of({:category => params[:cat]},{:publish_date => params[:date]}).where(:status => "1")
    #@newsstats = News.any_of({:status => "1", :submitted_by => current_user.username},{:status => "2", :submitted_by => current_user.username}).count 
  	respond_to do |format|
      format.html # index.html.erb
      format.js
      format.json { render json: @nl }
    end
  end

  def show
  	@nl = News.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @nl }
    end
  end
end
