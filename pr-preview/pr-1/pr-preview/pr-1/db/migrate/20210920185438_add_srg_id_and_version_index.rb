# frozen_string_literal: true

class AddSrgIdAndVersionIndex < ActiveRecord::Migration[6.1]
  def change
    add_index :security_requirements_guides, %i[srg_id version], name: 'security_requirements_guides_id_and_version',
                                                                 unique: true
  end
end
