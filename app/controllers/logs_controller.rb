# frozen_string_literal: true

class LogsController < ApplicationController
  layout 'no_white_container'

  def index
    @logs ||= integrated_logs
  end

  private

  def integrated_logs
    logs = [
      current_user.physical_therapy_sessions.to_a,
      current_user.pain_logs.to_a,
      current_user.exercise_logs.to_a
    ]

    logs.flatten.sort_by { |a| a[:datetime_occurred] }.reverse!
  end
end
