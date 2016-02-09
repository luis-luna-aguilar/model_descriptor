class AddHasDeviseToApplication < ActiveRecord::Migration
  def change
    add_column :applications, :has_devise, :boolean, default: false
  end
end
