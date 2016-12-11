class StudentsController < ApplicationController


  def index 
    if params[:column].present? && Student.column_names.include?(params[:column])
      @student_details = Student.all.pluck(params[:column])
    else
      @student_details = []
    end
  end

end
