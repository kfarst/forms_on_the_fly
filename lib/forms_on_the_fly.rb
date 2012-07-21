module FormsOnTheFly
  def self.forms_on_the_fly
    has_one :form
    accepts_nested_attriutes_for :form
  end
end
