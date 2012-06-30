require 'diesel/generators/install_base'

module FormsOnTheFly
  module Generators
    class InstallGenerator < Diesel::Generators::InstallBase
      def install
        form_model = "app/models/form.rb"
        unless File.exists?(form_model)
          template "form.rb", form_model
        end

        form_field_model = "app/models/form_field.rb"
        unless File.exists?(form_field_model)
          template "form_field.rb", form_field_model
        end

        user_input_model = "app/models/user_input.rb"
        unless File.exists?(user_input_model)
          template "user_input.rb", user_input_model
        end

        if File.exists?("spec")
          template "spec/factories.rb", "spec/factories/forms_on_the_fly.rb"
        else
          template "spec/factories.rb", "test/factories/forms_on_the_fly.rb"
        end

        readme "README"
      end

      private

      def migrations
        create_forms_table
        create_form_fields_table
        create_user_inputs_table
      end

      def create_forms_table
        if forms_table_exists?
          super.reject { |name| name.include?("create") } + ["db/migrate/create_forms.rb"]
        else
          super
        end
      end

      def create_form_fields_table
        if form_fields_table_exists?
          super.reject { |name| name.include?("create") } + ["db/migrate/create_form_fields.rb"]
        else
          super
        end
      end

      def create_user_inputs_table
        if user_inputs_table_exists?
          super.reject { |name| name.include?("create") } + ["db/migrate/create_user_inputs.rb"]
        else
          super
        end
      end

      def forms_table_exists?
        ActiveRecord::Base.connection.table_exists?(:forms)
      end

      def form_fields_table_exists?
        ActiveRecord::Base.connection.table_exists?(:form_fields)
      end

      def user_inputs_table_exists?
        ActiveRecord::Base.connection.table_exists?(:user_inputs)
      end

    end
  end
end
