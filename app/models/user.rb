class User < ApplicationRecord
    has_many :events, :foreign_key => :creator_id
    has_many :attended_events,  :through => :event_attendees
    has_many :event_attendees,  :foreign_key => :attendee_id

    EMAIL_FORMAT_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
    validates :username, presence: true, uniqueness: true
    validates :email, presence: true, format: { with: EMAIL_FORMAT_REGEX }, uniqueness: true
end
