# frozen_string_literal: true

# :nodoc:
class AddCreatorToEvents < ActiveRecord::Migration[5.2]
  def change
    add_column :events, :creator_id, :integer
    add_index :events, :creator_id
  end
end
