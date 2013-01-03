class MsDevelopersController < ApplicationController
  # GET /ms_developers
  # GET /ms_developers.json
  def index
    @ms_developers = MsDeveloper.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @ms_developers }
    end
  end

  # GET /ms_developers/1
  # GET /ms_developers/1.json
  def show
    @ms_developer = MsDeveloper.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @ms_developer }
    end
  end

  # GET /ms_developers/new
  # GET /ms_developers/new.json
  def new
    @ms_developer = MsDeveloper.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @ms_developer }
    end
  end

  # GET /ms_developers/1/edit
  def edit
    @ms_developer = MsDeveloper.find(params[:id])
  end

  # POST /ms_developers
  # POST /ms_developers.json
  def create
    @ms_developer = MsDeveloper.new(params[:ms_developer])

    respond_to do |format|
      if @ms_developer.save
        format.html { redirect_to @ms_developer, notice: 'Ms developer was successfully created.' }
        format.json { render json: @ms_developer, status: :created, location: @ms_developer }
      else
        format.html { render action: "new" }
        format.json { render json: @ms_developer.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /ms_developers/1
  # PUT /ms_developers/1.json
  def update
    @ms_developer = MsDeveloper.find(params[:id])

    respond_to do |format|
      if @ms_developer.update_attributes(params[:ms_developer])
        format.html { redirect_to @ms_developer, notice: 'Ms developer was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @ms_developer.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ms_developers/1
  # DELETE /ms_developers/1.json
  def destroy
    @ms_developer = MsDeveloper.find(params[:id])
    @ms_developer.destroy

    respond_to do |format|
      format.html { redirect_to ms_developers_url }
      format.json { head :no_content }
    end
  end
end
