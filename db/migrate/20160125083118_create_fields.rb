class CreateFields < ActiveRecord::Migration
  def change
    create_table :fields do |t|
      t.string :name
      t.integer :attr_type
      t.string :default
      t.boolean :required
      t.references :model, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
