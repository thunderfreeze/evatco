class CreateEvaluations < ActiveRecord::Migration[5.2]
  def change
    create_table :evaluations do |t|
      t.references :questionnaire, foreign_key: true
      t.integer :value1
      t.integer :value2
      t.integer :value3
      t.integer :value4
      t.integer :value5
      t.float :score

      t.timestamps
    end
  end
end
