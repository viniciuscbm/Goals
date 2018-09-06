class GoalsController < ApplicationController
  before_action :set_goal, only: [:show, :edit, :update, :destroy]
  before_action :set_stores, only: [:index, :new, :create, :edit, :update]

  # GET /goals
  # GET /goals.json
  def index
    @goals = current_user.admin? ? Goal.all : Goal.by_store_ids(@stores)
  end

  # GET /goals/1
  # GET /goals/1.json
  def show
  end

  # GET /goals/new
  def new
    if @stores.present?
      @goal = Goal.new
    else
      redirect_to new_store_path, notice: "Cadastre uma loja antes de adcionar metas."
    end
  end

  # GET /goals/1/edit
  def edit
  end

  # POST /goals
  # POST /goals.json
  def create
    @goal = Goal.new(goal_params)

    ActiveRecord::Base.transaction do
      begin
        respond_to do |format|
          if @goal.save
            format.html { redirect_to @goal, notice: 'Goal was successfully created.' }
            format.json { render :show, status: :created, location: @goal }
          else
            format.html { render :new }
            format.json { render json: @goal.errors, status: :unprocessable_entity }
          end
        end
      rescue Exception => e
        redirect_to new_goal_path, notice: e.message
        raise ActiveRecord::Rollback
      end
    end
  end

  # PATCH/PUT /goals/1
  # PATCH/PUT /goals/1.json
  def update
    ActiveRecord::Base.transaction do
      begin
        respond_to do |format|
          if @goal.update(goal_params)
            format.html { redirect_to @goal, notice: 'Goal was successfully updated.' }
            format.json { render :show, status: :ok, location: @goal }
          else
            format.html { render :edit }
            format.json { render json: @goal.errors, status: :unprocessable_entity }
          end
        end
      rescue Exception => e
        redirect_to edit_goal_path, notice: e.message
        raise ActiveRecord::Rollback
      end
    end
  end

  # DELETE /goals/1
  # DELETE /goals/1.json
  def destroy
    @goal.destroy
    respond_to do |format|
      format.html { redirect_to goals_url, notice: 'Goal was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_goal
      @goal = Goal.find(params[:id])
    end

    def set_stores
      @stores = Store.where(owner_id: current_user.owner)
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def goal_params
      params.require(:goal).permit(:name, :start_date, :end_date, :month_reference, :value, :store_id)
    end
end
