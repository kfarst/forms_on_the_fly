class CreateForms < ActiveRecord::Migration
  def up
    create_table :forms do |t|
      t.string  :model_type
      t.integer :model_id
    end
  end

  def down
    drop_table :forms
  end
end
