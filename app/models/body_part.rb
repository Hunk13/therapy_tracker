# frozen_string_literal: true

class BodyPart < ApplicationRecord
  extend Nameable

  belongs_to :user
  has_many :exercise_logs, dependent: :destroy
  has_many :pain_logs, dependent: :destroy
  has_many :pt_sessions, dependent: :destroy

  validates :name,
            presence: true,
            uniqueness: {
              case_sensitive: false,
              scope: :user_id }

  def self.active
    where(archived: false)
  end
end
