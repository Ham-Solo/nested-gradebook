class SessionsController < ApplicationController
  before_action :redirect_path, except: [:destroy]
  def new
  end

  def create
    if request.post?
      if t = Teacher.find_by_email(params[:email])
        if t && t.authenticate(params[:password])
          session[:teacher_id] = t.id
          redirect_to teachers_path, notice: "You've logged in."
          return
        else
          redirect_to root_path, notice: "Wrong email or password."
          return
        end
      elsif s = Student.find_by_email(params[:email])
        if s && s.authenticate(params[:password])
          session[:student_id] = s.id
          redirect_to students_path, notice: "You've logged in."
          return
        else
          redirect_to root_path, notice: "Wrong email or password."
          return
        end
      elsif p = Parent.find_by_email(params[:email])
        if p && p.authenticate(params[:password])
          session[:parent_id] = p.id
          redirect_to parents_path, notice: "You've logged in."
          return
        else
          redirect_to root_path, notice: "Wrong email or password."
          return
        end
      end
    end
    redirect_to root_path, notice: "Wrong email or password."
  end

  def destroy
    session[:teacher_id] = nil
    session[:student_id] = nil
    session[:parent_id] = nil
    redirect_to root_path, notice: "You've logged out."
  end
end
