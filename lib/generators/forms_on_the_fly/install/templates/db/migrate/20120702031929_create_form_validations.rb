class CreateFormValidations < ActiveRecord::Migration
  def up
    create_table :form_validations do |t|
      t.string  :type
      t.string  :value
      t.integer :form_field_id
    end
  end

  def down
    drop_table :form_validations
  end
end
