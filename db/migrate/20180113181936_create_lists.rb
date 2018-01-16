class CreateLists < ActiveRecord::Migration[5.1]
  def change
    create_table :lists do |t|
      t.references :user, foreign_key: true
      t.string :title
      t.integer :type_of_list
      t.integer :mode
      t.integer :to_approve
      t.integer :type_to_approve

      t.timestamps
    end
  end
end
