# :nodoc:
module EventsHelper
    def attend_event(_current_user)
        render partial: 'events/attend_event' if logged_in? && @event.date > Date.today
      end
    
      def attend(current_user)
        if logged_in? && current_user.attending?(@event)
          render partial: 'events/cancel_event'
        else
          render partial: 'events/attend_event'
        end
      end
    
      def attendee_list
        if @event.attendees.any?
          render partial: 'events/attendee_list'
        else
          'No Attendees'
        end
      end
end
