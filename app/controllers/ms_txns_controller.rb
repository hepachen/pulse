class MsTxnsController < ApplicationController
  # GET /ms_txns
  # GET /ms_txns.json
  def index
    @ms_txns = MsTxn.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @ms_txns }
    end
  end

  # GET /ms_txns/1
  # GET /ms_txns/1.json
  def show
    @ms_txn = MsTxn.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @ms_txn }
    end
  end

  # GET /ms_txns/new
  # GET /ms_txns/new.json
  def new
    @ms_txn = MsTxn.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @ms_txn }
    end
  end

  # GET /ms_txns/1/edit
  def edit
    @ms_txn = MsTxn.find(params[:id])
  end

  # POST /ms_txns
  # POST /ms_txns.json
  def create
    @ms_txn = MsTxn.new(params[:ms_txn])

    respond_to do |format|
      if @ms_txn.save
        format.html { redirect_to @ms_txn, notice: 'Ms txn was successfully created.' }
        format.json { render json: @ms_txn, status: :created, location: @ms_txn }
      else
        format.html { render action: "new" }
        format.json { render json: @ms_txn.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /ms_txns/1
  # PUT /ms_txns/1.json
  def update
    @ms_txn = MsTxn.find(params[:id])

    respond_to do |format|
      if @ms_txn.update_attributes(params[:ms_txn])
        format.html { redirect_to @ms_txn, notice: 'Ms txn was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @ms_txn.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ms_txns/1
  # DELETE /ms_txns/1.json
  def destroy
    @ms_txn = MsTxn.find(params[:id])
    @ms_txn.destroy

    respond_to do |format|
      format.html { redirect_to ms_txns_url }
      format.json { head :no_content }
    end
  end
end
