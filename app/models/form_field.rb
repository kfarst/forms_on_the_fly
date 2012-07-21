class FormField < ActiveRecord::Base
  has_one :form_field
  has_one :form_field_type
end
