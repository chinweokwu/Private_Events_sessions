# frozen_string_literal: true

# :nodoc:
class CreateEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :events do |t|
      t.string :name
      t.string :location
      t.text :description
      t.datetime :date

      t.timestamps
    end
  end
end
