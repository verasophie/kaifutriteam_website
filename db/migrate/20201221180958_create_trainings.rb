class CreateTrainings < ActiveRecord::Migration[6.0]
  def change
    create_table :trainings do |t|
      t.string :title
      t.string :type
      t.datetime :starts_at
      t.datetime :ends_at
      t.integer :participant_number
      t.string :coach
      t.string :location
      t.text :description

      t.timestamps
    end
  end
end
