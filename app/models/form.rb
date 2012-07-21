class Form < ActiveRecord::Base
  belongs_to :formable, :polymorphic => true
end
