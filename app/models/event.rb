# :nodoc:
class Event < ApplicationRecord
  belongs_to :creator, class_name: 'User'
  has_many :event_attendees, foreign_key: :attended_event_id
  has_many :attendees,	through: :event_attendees


  validates :name, presence: true
  validates :location, presence: true
  validates :description, presence: true

  scope :future_events, -> { where('date >= ?', Time.now) }
  scope :past_events, -> { where('date < ?', Time.now) }

  def future_events
    events.future
  end

  def past_events
    events.past
  end
end
