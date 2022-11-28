# frozen_string_literal: true

class CreateAdditionalQuestions < ActiveRecord::Migration[6.1]
  def change
    create_table :additional_questions do |t|
      t.string :name, null: false
      t.string :question_type, null: false
      t.string :options, array: true, default: []
      t.references :component, index: true
      t.index %i[component_id name], unique: true
      t.timestamps
    end
  end
end
