require 'spec_helper'

describe FormsOnTheFly do
  subject do
    Class.new do
      forms_on_the_fly
    end
  end

  describe "included in a class" do
    it { should have_one :form }
    it { should accept_nested_attributes_for :form }
  end
end
