class ShitsController < ApplicationController
  # GET /shits
  # GET /shits.json
  def index
    @shits = Shit.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @shits }
    end
  end

  # GET /shits/1
  # GET /shits/1.json
  def show
    @shit = Shit.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @shit }
    end
  end

  # GET /shits/new
  # GET /shits/new.json
  def new
    @shit = Shit.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @shit }
    end
  end

  # GET /shits/1/edit
  def edit
    @shit = Shit.find(params[:id])
  end

  # POST /shits
  # POST /shits.json
  def create
    @shit = Shit.new(params[:shit])

    respond_to do |format|
      if @shit.save
        format.html { redirect_to shits_path, notice: 'Shit was successfully created.' }
        format.json { render json: @shit, status: :created, location: @shit }
      else
        format.html { render action: "new" }
        format.json { render json: @shit.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /shits/1
  # PUT /shits/1.json
  def update
    @shit = Shit.find(params[:id])

    respond_to do |format|
      if @shit.update_attributes(params[:shit])
        format.html { redirect_to @shit, notice: 'Shit was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @shit.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /shits/1
  # DELETE /shits/1.json
  def destroy
    @shit = Shit.find(params[:id])
    @shit.destroy

    respond_to do |format|
      format.html { redirect_to shits_url }
      format.json { head :no_content }
    end
  end
end
