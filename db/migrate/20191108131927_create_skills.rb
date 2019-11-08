class CreateSkills < ActiveRecord::Migration[6.0]
  def change
    create_table :skills do |t|
      t.string :title
      t.integer :category_id, foreign_key: true

      t.timestamps
    end
  end
end
