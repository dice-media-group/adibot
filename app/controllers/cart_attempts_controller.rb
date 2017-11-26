class CartAttemptsController < ApplicationController
  before_action :set_cart_attempt, only: [:show, :update, :destroy]
  skip_before_action :verify_authenticity_token, only: [:create, :update]
  # GET /cart_attempts
  def index
    @cart_attempts = CartAttempt.all

    render json: @cart_attempts
  end

  # GET /cart_attempts/1
  def show
    render json: @cart_attempt
  end

  # POST /cart_attempts
  def create
    @cart_attempt = CartAttempt.new(cart_attempt_params)

    if @cart_attempt.save
      render json: @cart_attempt, status: :created, location: @cart_attempt
    else
      render json: @cart_attempt.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /cart_attempts/1
  def update
    if @cart_attempt.update(cart_attempt_params)
      render json: @cart_attempt
    else
      render json: @cart_attempt.errors, status: :unprocessable_entity
    end
  end

  # DELETE /cart_attempts/1
  def destroy
    @cart_attempt.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cart_attempt
      @cart_attempt = CartAttempt.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def cart_attempt_params
      params.require(:cart_attempt).permit(:body)
    end
end
