class CardInfosController < ApplicationController
  before_action :set_card_info, only: [:show, :edit, :update, :destroy]

  # GET /card_infos
  def index
    @card_infos = CardInfo.all
  end

  # GET /card_infos/1
  def show
  end

  # GET /card_infos/new
  def new
    @card_info = CardInfo.new
  end

  # GET /card_infos/1/edit
  def edit
  end

  # POST /card_infos
  def create
    @card_info = CardInfo.new(card_info_params)

    if @card_info.save
      redirect_to @card_info, notice: 'Card info was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /card_infos/1
  def update
    if @card_info.update(card_info_params)
      redirect_to @card_info, notice: 'Card info was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /card_infos/1
  def destroy
    @card_info.destroy
    redirect_to card_infos_url, notice: 'Card info was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_card_info
      @card_info = CardInfo.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def card_info_params
      params.require(:card_info).permit(:card_nickname, :card_type, :name_on_card, :card_number, :exp_month, :exp_year, :ccv, :email, :birthday)
    end
end
