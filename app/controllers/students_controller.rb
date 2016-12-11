class StudentsController < ApplicationController


  def index 
    @student_details = []
    if params[:column].present? && Student.column_names.include?(params[:column]) 
      @student_details = Student.all.pluck(params[:column])
    else
      flash.now[:notice] = "Nothing to show"
    end
  end


end
