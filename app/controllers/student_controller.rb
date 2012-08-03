class StudentController < ApplicationController
  before_filter :find_student,  :only => [:show, :edit, :update, :delete]
  def index
    @new=Student.new
    @fetch=Department.find(params[:id])
  end

  def create
    @fetch=Department.find(params[:id])
    @s=@fetch.students.create(params[:user])
    if @s.save
    redirect_to :controller=>'student',:action=>'view'
  else
    render :controller=>'student', :action=>"index"
  end
  end

  def view
    @new=Student.all
  end

  def delete
    if @new.destroy
      redirect_to :action=>'view'
    end
  end

  def update
    if @new.update_attributes(params[:student])
      redirect_to :action=>'view',:id=>@new
    else
      render :action=>'edit'
    end
  end

  def display
    @dis=Department.find(params[:id])
    @display=Student.find(:all, :conditions=>{:Department_id=>params[:id]})
  end

  def find_student
   @new=Student.find(params[:id])
  end

end

