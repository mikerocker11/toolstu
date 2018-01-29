class CreateAnswers < ActiveRecord::Migration[5.1]
  def change
    create_table :answers do |t|
      t.references :question, foreign_key: true
      t.text :response
      t.boolean :is_correct

      t.timestamps
    end
  end
end
