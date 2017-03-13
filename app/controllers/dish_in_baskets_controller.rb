class DishInBasketsController < ApplicationController
  before_action :set_dish_in_basket, only: [:show, :edit, :update, :destroy]

  # GET /dish_in_baskets
  # GET /dish_in_baskets.json
  def index
    @dish_in_baskets = DishInBasket.all
  end

  # GET /dish_in_baskets/1
  # GET /dish_in_baskets/1.json


  # GET /dish_in_baskets/new
  def new
    @dish_in_basket = DishInBasket.new
  end

  # GET /dish_in_baskets/1/edit
 

  # POST /dish_in_baskets
  # POST /dish_in_baskets.json
  def create
    @dish_in_basket = DishInBasket.new(dish_in_basket_params)

    respond_to do |format|
      if @dish_in_basket.save
        format.html { redirect_to :back, notice: 'Dish in basket was successfully created.' }
        format.json { render :show, status: :created, location: @dish_in_basket }
        format.js {}
      else

        format.html { render :new }
        format.json { render json: @dish_in_basket.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /dish_in_baskets/1
  # PATCH/PUT /dish_in_baskets/1.json
  def update
    respond_to do |format|
      if @dish_in_basket.update(dish_in_basket_params)
        format.html { redirect_to @dish_in_basket, notice: 'Dish in basket was successfully updated.' }
        format.json { render :show, status: :ok, location: @dish_in_basket }
      else
        format.html { render :edit }
        format.json { render json: @dish_in_basket.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /dish_in_baskets/1
  # DELETE /dish_in_baskets/1.json
  def destroy
    DishInBasket.destroy(params[:id])
    respond_to do |format|
      format.html { redirect_to :back, notice: 'Dish in basket was successfully destroyed.' }
      format.json { head :no_content }
      format.js {} 
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_dish_in_basket
      @dish_in_basket = DishInBasket.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def dish_in_basket_params
      params.require(:dish_in_basket).permit(:basket_id, :dish_id, :title, :price, :quantity, :total)
    end
end
