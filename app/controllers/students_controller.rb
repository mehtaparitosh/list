class StudentsController < ApplicationController

  before_action :find_student, only: [:show, :edit, :update, :destroy]

  def index
    @students = Student.search(params[:support]).order(:grade, :name)
    @supports = Student.uniq.pluck(:support)
    respond_to do |format|
      format.html
      format.xls

    end
  end

  def show
  end

  def new
    @student = Student.new
  end

  def create
    @student = Student.new(student_params)

    if @student.save
      redirect_to @student, notice: "Successfully Created"
    else
      render 'new'
    end
  end

  def edit
  end

  def update
    if @student.update(student_params)
      redirect_to @student
    else
      render 'edit'
    end
  end

  def destroy
    @student.destroy
    redirect_to root_path, notice: "Successfully Deleted"
  end


  def import
    Student.import(params[:file])
    redirect_to root_path, notice: "Students Imported"
  end

  private

  def find_student
    @student = Student.find(params[:id])
  end

  def student_params
    params.require(:student).permit(:st_id, :program, :support, :name, :school, :grade)
  end
end
