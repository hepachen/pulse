class MsOffersController < ApplicationController
  # GET /ms_offers
  # GET /ms_offers.json
  def index
    @ms_offers = MsOffer.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @ms_offers }
    end
  end

  # GET /ms_offers/1
  # GET /ms_offers/1.json
  def show
    @ms_offer = MsOffer.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @ms_offer }
    end
  end

  # GET /ms_offers/new
  # GET /ms_offers/new.json
  def new
    @ms_offer = MsOffer.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @ms_offer }
    end
  end

  # GET /ms_offers/1/edit
  def edit
    @ms_offer = MsOffer.find(params[:id])
  end

  # POST /ms_offers
  # POST /ms_offers.json
  def create
    @ms_offer = MsOffer.new(params[:ms_offer])

    respond_to do |format|
      if @ms_offer.save
        format.html { redirect_to @ms_offer, notice: 'Ms offer was successfully created.' }
        format.json { render json: @ms_offer, status: :created, location: @ms_offer }
      else
        format.html { render action: "new" }
        format.json { render json: @ms_offer.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /ms_offers/1
  # PUT /ms_offers/1.json
  def update
    @ms_offer = MsOffer.find(params[:id])

    respond_to do |format|
      if @ms_offer.update_attributes(params[:ms_offer])
        format.html { redirect_to @ms_offer, notice: 'Ms offer was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @ms_offer.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ms_offers/1
  # DELETE /ms_offers/1.json
  def destroy
    @ms_offer = MsOffer.find(params[:id])
    @ms_offer.destroy

    respond_to do |format|
      format.html { redirect_to ms_offers_url }
      format.json { head :no_content }
    end
  end
end
