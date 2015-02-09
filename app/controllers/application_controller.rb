class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  private

  def current_user
    if session[:teacher_id]
      Teacher.where(id: session[:teacher_id]).first
    elsif session[:student_id]
      Student.where(id: session[:student_id]).first
    elsif session[:parent_id]
      Parent.where(id: session[:parent_id]).first
    end
  end

  helper_method :current_user

  def logged_in?
    unless current_user
      redirect_to root_path
    end
  end

  def redirect_path
    if session[:teacher_id]
      redirect_to teachers_path
    elsif session[:student_id]
      redirect_to students_path
    elsif session[:parent_id]
      redirect_to parents_path
    end
  end

  def permission?
    unless session[:teacher_id]
      redirect_to root_path
    end
  end

  def student?
    if session[:student_id]
      redirect_to root_path
    end
  end

  def parent?
    if session[:parent_id]
      redirect_to root_path
    end
  end

end
