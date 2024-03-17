class AdminDashboardsController < ApplicationController
  before_action :set_admin_dashboard, only: %i[ show edit update destroy ]

  # GET /admin_dashboards or /admin_dashboards.json
  def index
    @admin_dashboards = AdminDashboard.all
  end

  # GET /admin_dashboards/1 or /admin_dashboards/1.json
  def show
  end

  # GET /admin_dashboards/new
  def new
    @admin_dashboard = AdminDashboard.new
  end

  # GET /admin_dashboards/1/edit
  def edit
  end

  # POST /admin_dashboards or /admin_dashboards.json
  def create
    @admin_dashboard = AdminDashboard.new(admin_dashboard_params)

    respond_to do |format|
      if @admin_dashboard.save
        format.html { redirect_to admin_dashboard_url(@admin_dashboard), notice: "Admin dashboard was successfully created." }
        format.json { render :show, status: :created, location: @admin_dashboard }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @admin_dashboard.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /admin_dashboards/1 or /admin_dashboards/1.json
  def update
    respond_to do |format|
      if @admin_dashboard.update(admin_dashboard_params)
        format.html { redirect_to admin_dashboard_url(@admin_dashboard), notice: "Admin dashboard was successfully updated." }
        format.json { render :show, status: :ok, location: @admin_dashboard }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @admin_dashboard.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /admin_dashboards/1 or /admin_dashboards/1.json
  def destroy
    @admin_dashboard.destroy!

    respond_to do |format|
      format.html { redirect_to admin_dashboards_url, notice: "Admin dashboard was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_admin_dashboard
      @admin_dashboard = AdminDashboard.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def admin_dashboard_params
      params.fetch(:admin_dashboard, {})
    end
end
