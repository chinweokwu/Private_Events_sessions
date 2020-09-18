class Event < ApplicationRecord
    belongs_to :creator, :class_name => "User"
    has_many :attendees, 		:through => :event_attendees
    has_many :event_attendees,  :foreign_key => :attended_event_id

    validates :name, presence: true
    validates :location, presence: true
    validates :description, presence: true
end
