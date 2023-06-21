class AddColumnTitles < ActiveRecord::Migration[7.0]
  def change
    add_column :study_times, :status, :integer, default: 0
  end
end
