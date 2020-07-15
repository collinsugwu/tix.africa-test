module EventsHelper
    def owner?(event)
        return true if event.owner == current_user

        return false
    end

    def active?(event)
        return true if event.start_at < Time.current && event.end_at > Time.current

        return false
    end
end
