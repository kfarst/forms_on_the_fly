require 'spec_helper'

describe FormKlass, :adapter => :active_record do

  describe "included in a class" do
    it "has a form" do
      FormKlass.new.should respond_to?(:form) 
    end
  end
end
