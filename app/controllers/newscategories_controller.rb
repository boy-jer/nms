class NewscategoriesController < ApplicationController
  before_filter :authenticate_user!
  # GET /newscategories
  # GET /newscategories.json
  def index
    @newscategories = Newscategory.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @newscategories }
    end
  end

  # GET /newscategories/1
  # GET /newscategories/1.json
  def show
    @newscategory = Newscategory.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @newscategory }
    end
  end

  # GET /newscategories/new
  # GET /newscategories/new.json
  def new
    @newscategory = Newscategory.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @newscategory }
    end
  end

  # GET /newscategories/1/edit
  def edit
    @newscategory = Newscategory.find(params[:id])
  end

  # POST /newscategories
  # POST /newscategories.json
  def create
    @newscategory = Newscategory.new(params[:newscategory])

    respond_to do |format|
      if @newscategory.save
        format.html { redirect_to @newscategory, notice: 'Newscategory was successfully created.' }
        format.json { render json: @newscategory, status: :created, location: @newscategory }
      else
        format.html { render action: "new" }
        format.json { render json: @newscategory.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /newscategories/1
  # PUT /newscategories/1.json
  def update
    @newscategory = Newscategory.find(params[:id])

    respond_to do |format|
      if @newscategory.update_attributes(params[:newscategory])
        format.html { redirect_to @newscategory, notice: 'Newscategory was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @newscategory.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /newscategories/1
  # DELETE /newscategories/1.json
  def destroy
    @newscategory = Newscategory.find(params[:id])
    @newscategory.destroy

    respond_to do |format|
      format.html { redirect_to newscategories_url }
      format.json { head :no_content }
    end
  end
end
