class LessonsController < ApplicationController
  before_action :authenticate_user!
  before_action :require_authorized_for_current_lesson, only: [:show]

  def require_authorized_for_current_lesson
    redirect_to course_path(current_user), alert: 'Not Valid!'
  end


  def show
  end

  private

  helper_method :current_lesson

  def current_lesson
    @current_lesson ||= Lesson.find(params[:id])
  end
end
