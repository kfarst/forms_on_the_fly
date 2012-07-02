class CreateFormFieldTypes < ActiveRecord::Migration
  def up
    create_table :form_field_types do |t|
      t.string  :type
    end
  end

  def down
    drop_table :form_field_types
  end
end
