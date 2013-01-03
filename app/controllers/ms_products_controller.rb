class MsProductsController < ApplicationController
  # GET /ms_products
  # GET /ms_products.json
  def index
    @ms_products = MsProduct.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @ms_products }
    end
  end

  # GET /ms_products/1
  # GET /ms_products/1.json
  def show
    @ms_product = MsProduct.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @ms_product }
    end
  end

  # GET /ms_products/new
  # GET /ms_products/new.json
  def new
    @ms_product = MsProduct.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @ms_product }
    end
  end

  # GET /ms_products/1/edit
  def edit
    @ms_product = MsProduct.find(params[:id])
  end

  # POST /ms_products
  # POST /ms_products.json
  def create
    @ms_product = MsProduct.new(params[:ms_product])

    respond_to do |format|
      if @ms_product.save
        format.html { redirect_to @ms_product, notice: 'Ms product was successfully created.' }
        format.json { render json: @ms_product, status: :created, location: @ms_product }
      else
        format.html { render action: "new" }
        format.json { render json: @ms_product.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /ms_products/1
  # PUT /ms_products/1.json
  def update
    @ms_product = MsProduct.find(params[:id])

    respond_to do |format|
      if @ms_product.update_attributes(params[:ms_product])
        format.html { redirect_to @ms_product, notice: 'Ms product was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @ms_product.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ms_products/1
  # DELETE /ms_products/1.json
  def destroy
    @ms_product = MsProduct.find(params[:id])
    @ms_product.destroy

    respond_to do |format|
      format.html { redirect_to ms_products_url }
      format.json { head :no_content }
    end
  end
end
