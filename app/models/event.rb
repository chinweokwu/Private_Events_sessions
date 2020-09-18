# frozen_string_literal: true

class Event < ApplicationRecord
  belongs_to :creator, class_name: 'User'

  validates :name, presence: true
  validates :location, presence: true
  validates :description, presence: true
end
