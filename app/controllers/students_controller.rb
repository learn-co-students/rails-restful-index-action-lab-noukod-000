class StudentsController < ApplicationController
get '/view/students'
@student = Student.all
 erb :"/view/students"
  end
end
