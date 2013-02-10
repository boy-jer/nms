class IklansController < ApplicationController
  before_filter :authenticate_user!
  # GET /iklans
  # GET /iklans.json
  def index
    @iklans = Iklan.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @iklans }
    end
  end

  # GET /iklans/1
  # GET /iklans/1.json
  def show
    @iklan = Iklan.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @iklan }
    end
  end

  # GET /iklans/new
  # GET /iklans/new.json
  def new
    @iklan = Iklan.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @iklan }
    end
  end

  # GET /iklans/1/edit
  def edit
    @iklan = Iklan.find(params[:id])
  end

  # POST /iklans
  # POST /iklans.json
  def create
    @iklan = Iklan.new(params[:iklan])

    respond_to do |format|
      if @iklan.save
        format.html { redirect_to @iklan, notice: 'Iklan was successfully created.' }
        format.json { render json: @iklan, status: :created, location: @iklan }
      else
        format.html { render action: "new" }
        format.json { render json: @iklan.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /iklans/1
  # PUT /iklans/1.json
  def update
    @iklan = Iklan.find(params[:id])

    respond_to do |format|
      if @iklan.update_attributes(params[:iklan])
        format.html { redirect_to @iklan, notice: 'Iklan was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @iklan.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /iklans/1
  # DELETE /iklans/1.json
  def destroy
    @iklan = Iklan.find(params[:id])
    @iklan.destroy

    respond_to do |format|
      format.html { redirect_to iklans_url }
      format.json { head :no_content }
    end
  end
end
