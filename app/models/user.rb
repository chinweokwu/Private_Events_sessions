# frozen_string_literal: true

class User < ApplicationRecord
  has_many :events, foreign_key: :creator_id

  EMAIL_FORMAT_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i.freeze
  validates :username, presence: true, uniqueness: true
  validates :email, presence: true, format: { with: EMAIL_FORMAT_REGEX }, uniqueness: true
end
