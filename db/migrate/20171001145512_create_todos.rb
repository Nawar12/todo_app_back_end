class CreateTodos < ActiveRecord::Migration
  def change
    create_table :todos do |t|
      t.string :description
      t.integer :order
      t.boolean :complete
      t.string :name

      t.timestamps null: false
    end
  end
end
