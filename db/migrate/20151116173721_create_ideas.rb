class CreateIdeas < ActiveRecord::Migration
  def change
    create_table :ideas do |t|
      t.string :title
      t.text :body
      t.integer :view_count
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
