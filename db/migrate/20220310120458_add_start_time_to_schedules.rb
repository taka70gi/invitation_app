class AddStartTimeToSchedules < ActiveRecord::Migration[6.1]
  def change
    add_column :schedules, :start_time, :datetime
  end
end
