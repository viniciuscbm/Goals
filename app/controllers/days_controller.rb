class DaysController < ApplicationController

  # GET /days/new
  def new
    @goal = Goal.find(params[:goal_id])
    @days = Day.where(goal_id: params[:goal_id])
    @salesmans = Salesman.where(store_id: @goal.store)
  end

  # POST /days
  def create

  end

  private

    # Never trust parameters from the scary internet, only allow the white list through.
    def day_params
      params.require(:day).permit(:date, :value, :goal_id,
        day_salesman_attributes: [:salesman_id, :day_id])
    end
end
