class CreateFormFields < ActiveRecord::Migration
  def up
    create_table :form_fields do |t|
      t.string  :type
      t.integer :form_id
      t.integer :form_field_type_id
    end
  end

  def down
    drop_table :form_fields
  end
end
