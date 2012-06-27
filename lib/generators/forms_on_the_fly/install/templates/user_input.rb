class UserInput < ActiveRecord::Base
  belongs_to :form
  belongs_to :form_fields
end
