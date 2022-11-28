# frozen_string_literal: true

class AddInspecCodeToRules < ActiveRecord::Migration[6.1]
  def up
    add_column :base_rules, :inspec_control_body, :text
    add_column :base_rules, :inspec_control_file, :text

    ActiveRecord::Base.transaction do
      Rule.unscoped.each(&:save)
    end
  end

  def down
    remove_column :base_rules, :inspec_control_body, :text
    remove_column :base_rules, :inspec_control_file, :text
  end
end
