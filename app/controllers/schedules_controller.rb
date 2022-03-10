class SchedulesController < ApplicationController
  def index
    @schedules = Schedule.all
  end

  def new
    @schedule = Schedule.new
  end

  def create
    Schedule.create(schedule_parameter)
    redirect_to root_path
  end

  private
  def schedule_parameter
    params.require(:schedule).permit(:title, :content, :start_time)
  end
end
