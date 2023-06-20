class CreateStudyTimes < ActiveRecord::Migration[7.0]
  def change
    create_table :study_times do |t|
      t.references :user, null: false, foreign_key: true
      t.integer :total_time, default: 0
      t.timestamps
    end
  end
end
