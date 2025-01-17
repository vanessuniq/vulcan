# frozen_string_literal: true

class CreateRuleSatisfactions < ActiveRecord::Migration[6.1]
  def change
    create_table :rule_satisfactions, id: false do |t|
      t.bigint :rule_id
      t.bigint :satisfied_by_rule_id
    end

    add_index :rule_satisfactions, %i[rule_id satisfied_by_rule_id], unique: true
    add_index :rule_satisfactions, %i[satisfied_by_rule_id rule_id], unique: true
  end
end
