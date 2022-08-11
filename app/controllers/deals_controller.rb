class DealsController < ApplicationController
  before_action :set_deal, only: %i[ show edit update destroy ]

  # GET /deals or /deals.json
  def index
    @category = Category.find(params[:category_id])
    @deals = @category.deals
  end

  # GET /deals/1 or /deals/1.json
  def show
  end

  # GET /deals/new
  def new
    @deal = Deal.new
    @categories = Category.all
  end

  # GET /deals/1/edit
  def edit
  end

  # POST /deals or /deals.json
  def create
    @categories = Category.all
    @deal = Deal.new(deal_params)
    @deal.author_id = current_user.id
    puts @deal.categories
  
    respond_to do |format|
      if @deal.save
         params[:deal][:category_ids].each{|id| CategoryDeal.create(deal_id:@deal.id,category_id: id.to_i)unless id==""}
        format.html { redirect_to deal_url(@deal), notice: "Deal was successfully created." }
        format.json { render :show, status: :created, location: @deal }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @deal.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /deals/1 or /deals/1.json
  def update
    respond_to do |format|
      if @deal.update(deal_params)
        format.html { redirect_to deal_url(@deal), notice: "Deal was successfully updated." }
        format.json { render :show, status: :ok, location: @deal }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @deal.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /deals/1 or /deals/1.json
  def destroy
    @deal.destroy

    respond_to do |format|
      format.html { redirect_to deals_url, notice: "Deal was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_deal
      @deal = Deal.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def deal_params
      params.require(:deal).permit(:name, :amount)
    end
end
