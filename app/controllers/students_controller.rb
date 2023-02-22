class StudentsController < ApplicationController

  def index
    students = Student.where("last_name LIKE ?", "%" + params[:name] + "%")
    render json: students
  end

  def show
      student = Student.find(params[:id])
      render json: student
  end

end
