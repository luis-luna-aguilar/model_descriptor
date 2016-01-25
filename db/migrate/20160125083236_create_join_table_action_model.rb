class CreateJoinTableActionModel < ActiveRecord::Migration
  def change
    create_join_table :actions, :models do |t|
      t.index [:action_id, :model_id]
      t.index [:model_id, :action_id]
    end
  end
end
