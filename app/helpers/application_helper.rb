# :nodoc:
# rubocop:disable Style/GuardClause
module ApplicationHelper
  def user_allowed
    logged_in? && (current_user.id == @event.creator_id)
  end

  def future_attended_events(_user)
    @attended_events.future
  end

  def notification(notice, alert)
    if notice
      content_tag(:p, notice, class: 'notice notification is-primary global-notification')
    elsif alert
      content_tag(:p, alert, class: 'alert notification is-danger global-notification')
    end
  end

  def show_user
    if user_allowed # rubocop:todo Style/GuardClause
      (link_to 'Edit', edit_event_path(@event)) +
        (link_to 'Destroy', @event, method: :delete, data: { confirm: 'Are you sure?' })
    end
  end

  def login_helper(_current_user)
    if logged_in?
      render partial: 'layouts/signed_in'
    else
      (link_to 'Events', events_path, class: 'navbar-item') +
        (link_to 'Sign In', new_user_session_path, class: 'navbar-item') +
        (link_to 'Sign up', new_user_registration_path, class: 'navbar-item')
    end
  end
end
# rubocop:enable Style/GuardClause
