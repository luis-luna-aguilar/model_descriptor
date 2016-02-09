class AddHasApiToApplication < ActiveRecord::Migration
  def change
    add_column :applications, :has_api, :boolean, default: false
  end
end
