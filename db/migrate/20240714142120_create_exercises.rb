class CreateExercises < ActiveRecord::Migration[5.1]
  def change
    create_table :exercises do |t|
      t.string :name
      t.text :description
      t.references :workout, foreign_key: true
      t.integer :sets
      t.integer :reps
      t.integer :weight

      t.timestamps
    end
  end
end
