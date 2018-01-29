class CreateQuestions < ActiveRecord::Migration[5.1]
  def change
    create_table :questions do |t|
      t.references :list, foreign_key: true
      t.text :question
      t.integer :value_of_question
      t.integer :type_of_value
      t.integer :status

      t.timestamps
    end
  end
end
