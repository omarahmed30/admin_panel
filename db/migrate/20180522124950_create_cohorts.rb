class CreateCohorts < ActiveRecord::Migration[5.2]
  def change
    create_table :cohorts do |t|
      t.string :name
      t.date :stratdate
      t.date :enddate
      t.integer :course_id

      t.timestamps
    end
  end
end
