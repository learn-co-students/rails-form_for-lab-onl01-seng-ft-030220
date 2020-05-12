class StudentsController < ApplicationController

    def new
        @student = Student.new 
    end

    def create
        @student = Student.new(student_params)
        @student.save 
        redirect_to student_path(@student)
    end

    def student_params
        params.require(:student).permit!
    end
end