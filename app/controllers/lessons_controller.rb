class LessonsController < ApplicationController
  before_action :authenticate_user!
  before_action :require_authorized_for_current_lesson.section.course

  redirect_to root_url, alert: 'Error Message Here'


  def show
  end

  private

  helper_method :current_lesson
  def current_lesson
    @current_lesson ||= Lesson.find(params[:id])
  end
end
