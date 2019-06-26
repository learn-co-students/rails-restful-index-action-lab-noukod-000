class studentsController < ApplicationController
  def index
     @students = Student.all

   end
end
