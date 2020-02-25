class CreateQuestionnaires < ActiveRecord::Migration[5.2]
  def change
    create_table :questionnaires do |t|
      t.references :user, foreign_key: true
      t.text :question1
      t.text :question2
      t.text :question3
      t.text :question4
      t.text :question5
      t.integer :importance1
      t.integer :importance2
      t.integer :importance3
      t.integer :importance4
      t.integer :importance5

      t.timestamps
    end
  end
end
