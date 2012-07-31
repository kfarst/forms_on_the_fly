class Form < ActiveRecord::Base
  belongs_to :formable, :polymorphic => true

  class FormBody < ActionView::Helpers::FormBuilder
  end
end
