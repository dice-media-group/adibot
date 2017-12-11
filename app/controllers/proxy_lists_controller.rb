class ProxyListsController < ApplicationController
  before_action :set_proxy_list, only: [:show, :edit, :update, :destroy]

  # GET /proxy_lists
  def index
    @proxy_lists = ProxyList.all
  end

  # GET /proxy_lists/1
  def show
  end

  # GET /proxy_lists/new
  def new
    @proxy_list = ProxyList.new
  end

  # GET /proxy_lists/1/edit
  def edit
  end

  # POST /proxy_lists
  def create
    @proxy_list = ProxyList.new(proxy_list_params)

    if @proxy_list.save
      redirect_to @proxy_list, notice: 'Proxy list was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /proxy_lists/1
  def update
    if @proxy_list.update(proxy_list_params)
      redirect_to @proxy_list, notice: 'Proxy list was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /proxy_lists/1
  def destroy
    @proxy_list.destroy
    redirect_to proxy_lists_url, notice: 'Proxy list was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_proxy_list
      @proxy_list = ProxyList.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def proxy_list_params
      params.require(:proxy_list).permit(:name, :provider_name, :enabled, :proxy_collection)
    end
end
