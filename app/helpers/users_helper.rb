# :nodoc:
module UsersHelper
  def future_attended_events(_user)
    @attended_events.future
  end

  def current_user?(user)
    current_user == user
  end
end
