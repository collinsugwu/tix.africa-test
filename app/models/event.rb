class Event < ApplicationRecord
    extend FriendlyId
    friendly_id :title, use: :slugged

    self.per_page = 10

    belongs_to :owner, class_name: 'User', foreign_key: :owner_id
    validates :title, presence: true
    validates :event_type,:start_at, :end_at, presence: true
    validates :description, presence: true, length: { minimum: 5 }
    validate :end_at_after_start_at

    private

    def end_at_after_start_at
        return if end_at.blank? || start_at.blank?

        if end_at < start_at
            errors.add(:end_at, "must be after start date")
        end
    end
end
