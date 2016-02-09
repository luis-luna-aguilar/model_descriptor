class AddEditableByUserToFields < ActiveRecord::Migration
  def change
    add_column :fields, :editable_by_user, :boolean, default: true
  end
end
