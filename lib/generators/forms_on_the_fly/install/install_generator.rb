require 'diesel/generators/install_base'

module FormsOnTheFly
  module Generators
    class InstallGenerator < Diesel::Generators::InstallBase
      def install
        readme "README"
      end

      private

      def migrations
        create_forms_table
        create_form_fields_table
        create_form_field_types_table
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

      def create_form_field_types_table
        if form_fields_table_exists?
          super.reject { |name| name.include?("create") } + ["db/migrate/create_form_field_types.rb"]
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
