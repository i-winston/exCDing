class AddImpressionsCountToProductsController < ApplicationController
  before_action :set_add_impressions_count_to_product, only: [:show, :edit, :update, :destroy]

  # GET /add_impressions_count_to_products
  # GET /add_impressions_count_to_products.json
  def index
    @add_impressions_count_to_products = AddImpressionsCountToProduct.all
  end

  # GET /add_impressions_count_to_products/1
  # GET /add_impressions_count_to_products/1.json
  def show
  end

  # GET /add_impressions_count_to_products/new
  def new
    @add_impressions_count_to_product = AddImpressionsCountToProduct.new
  end

  # GET /add_impressions_count_to_products/1/edit
  def edit
  end

  # POST /add_impressions_count_to_products
  # POST /add_impressions_count_to_products.json
  def create
    @add_impressions_count_to_product = AddImpressionsCountToProduct.new(add_impressions_count_to_product_params)

    respond_to do |format|
      if @add_impressions_count_to_product.save
        format.html { redirect_to @add_impressions_count_to_product, notice: 'Add impressions count to product was successfully created.' }
        format.json { render :show, status: :created, location: @add_impressions_count_to_product }
      else
        format.html { render :new }
        format.json { render json: @add_impressions_count_to_product.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /add_impressions_count_to_products/1
  # PATCH/PUT /add_impressions_count_to_products/1.json
  def update
    respond_to do |format|
      if @add_impressions_count_to_product.update(add_impressions_count_to_product_params)
        format.html { redirect_to @add_impressions_count_to_product, notice: 'Add impressions count to product was successfully updated.' }
        format.json { render :show, status: :ok, location: @add_impressions_count_to_product }
      else
        format.html { render :edit }
        format.json { render json: @add_impressions_count_to_product.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /add_impressions_count_to_products/1
  # DELETE /add_impressions_count_to_products/1.json
  def destroy
    @add_impressions_count_to_product.destroy
    respond_to do |format|
      format.html { redirect_to add_impressions_count_to_products_url, notice: 'Add impressions count to product was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_add_impressions_count_to_product
      @add_impressions_count_to_product = AddImpressionsCountToProduct.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def add_impressions_count_to_product_params
      params.require(:add_impressions_count_to_product).permit(:impressions_count)
    end
end
