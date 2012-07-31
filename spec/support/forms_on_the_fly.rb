require 'forms_on_the_fly'

FormsOnTheFly.configure do |config|
end

class FormKlass < ActiveRecord::Base
  include FormsOnTheFly
end
