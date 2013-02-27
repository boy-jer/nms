class ArchiveController < ApplicationController
before_filter :authenticate_user!	
  def index
#  	@arc = News.any_of({"$or"=> [{:publish_date => params[:dates]}]}, {"$or" => [{:category => params[:cat]}]}, {"$or"=>[{:submitted_by => params[:journalists]}]}, {"$or" => [{:status => params[:stat]}]})


  	@arc = News.where(
  						:publish_date => params[:dates], 
  						:category => params[:cat] 
					 ).any_of(
  								{"$and"=>[{:submitted_by => params[:journalists]},
  				 				{:status => params[:stat]}]}
  				 			 )


	@arc2 = News.any_of(:content => /.*#{params[:keyword]}.*/)					 

  end

  def show
  	@arc = News.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @arc }
    end  
  end
end