class TasksController < ApplicationController
  before_action :authenticate_user!
  before_action :set_task, only: [:show, :edit, :update, :destroy]

  # GET /tasks
  def index
  @campaign = current_user.campaigns.find(params[:campaign_id])
  @task   = current_user.campaigns.find(params[:campaign_id]).tasks

    @tasks = Task.all
  end

  # GET /tasks/1
  def show
  end

  # GET /tasks/new
  def new
    @campaign = current_user.campaigns.find(params[:campaign_id])
    @task = @campaign.tasks.new
  end

  # GET /tasks/1/edit
  def edit
  end

  # POST /tasks
  def create
    @campaign = current_user.campaigns.find(params[:campaign_id])
    @task = @campaign.tasks.new(task_params)

    if @task.save
      redirect_to campaign_tasks_url(params[:campaign_id]), notice: 'Task was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /tasks/1
  def update
    if @task.update(task_params)
      redirect_to task_path(@task), notice: 'Campaign task was successfully updated.'

    else
      render :edit
    end
  end

  # DELETE /tasks/1
  def destroy
    @task.destroy
    redirect_to campaign_tasks_url(@campaign), notice: 'Task was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_task
      @task   = Task.find(params[:id])
      # @task = Task.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def task_params
      params.require(:task).permit(:site_account_id, :status, :shoe_size, :billing_profile_id, :positive_key_word, :negative_key_word, :style_no, :early_link,
        :page_monitor, :notification_text_no, :notification_email,
        proxy_lists_attributes: ProxyList.attribute_names.map(&:to_sym).shift)
    end
end
