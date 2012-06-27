class FormField < ActiveRecord::Base
  has_many :user_inputs, :polymorphic => true
  belongs_to :form
end
