module FormsOnTheFly

  def forms_on_the_fly
    has_one :form, :as => :formable
    accepts_nested_attriutes_for :form
  end
end
