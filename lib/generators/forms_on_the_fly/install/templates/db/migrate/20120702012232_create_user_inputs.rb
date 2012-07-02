class CreateUserInputs < ActiveRecord::Migration
  def up
    create_table :user_inputs do |t|
      t.string  :entry
      t.integer :form_field_id
    end
  end

  def down
    drop_table :user_inputs
  end
end
