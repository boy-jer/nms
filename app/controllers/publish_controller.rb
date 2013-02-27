class PublishController < ApplicationController
  before_filter :authenticate_user!
  respond_to :html, :js

  def index
    #sleep 1
    @published = News.where(:status => 1, :category => params[:cat], :publish_date => params[:date])
    @unpublished = News.where(:status => 2, :category => params[:cat], :publish_date => params[:date])
  	respond_to do |format|
      format.html # index.html.erb
      format.js
      format.json { render json: @publish }
    end
  end

  def show
  	@publish = News.find(params[:id])

#    if @news.status = 2

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @publish }
    end

  end

  def edit
  	@publish = News.find(params[:id])
  end

  def update

  	@publish = News.find(params[:id])

    respond_to do |format|
      if @publish.update_attributes(params[:publish])
        format.html { redirect_to action: "index", notice: 'Berita telah diupdate.' }
        format.js
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @publish.errors, status: :unprocessable_entity }
      end
    end
  	
  end

  def destroy
  end
end
