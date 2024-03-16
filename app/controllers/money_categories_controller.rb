class MoneyCategoriesController < ApplicationController
  before_action :set_money_category, only: %i[ show edit update destroy ]

  # GET /money_categories or /money_categories.json
  def index
    @money_categories = MoneyCategory.all
  end

  # GET /money_categories/1 or /money_categories/1.json
  def show
  end

  # GET /money_categories/new
  def new
    @money_category = MoneyCategory.new
  end

  # GET /money_categories/1/edit
  def edit
  end

  # POST /money_categories or /money_categories.json
  def create
    @money_category = MoneyCategory.new(money_category_params)

    respond_to do |format|
      if @money_category.save
        format.html { redirect_to money_category_url(@money_category), notice: "Money category was successfully created." }
        format.json { render :show, status: :created, location: @money_category }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @money_category.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /money_categories/1 or /money_categories/1.json
  def update
    respond_to do |format|
      if @money_category.update(money_category_params)
        format.html { redirect_to money_category_url(@money_category), notice: "Money category was successfully updated." }
        format.json { render :show, status: :ok, location: @money_category }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @money_category.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /money_categories/1 or /money_categories/1.json
  def destroy
    @money_category.destroy!

    respond_to do |format|
      format.html { redirect_to money_categories_url, notice: "Money category was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_money_category
      @money_category = MoneyCategory.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def money_category_params
      params.require(:money_category).permit(:title)
    end
end
