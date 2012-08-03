class DepartmentController < ApplicationController
def index
@data=Department.new
end

def create
@data=Department.new(params[:gtpl])  
if @data.save
 redirect_to :action=>'view'
end
end

def view
@data=Department.all
end

def show
@data=Department.find(params[:id])
end

def edit
@data=Department.find(params[:id])	
end

 def delete
 @data=Department.find(params[:id])
 if @data.destroy
 redirect_to :action=>'view'	
end
end

def update
@data=Department.find(params[:id])	
if @data.update_attributes(params[:department])
redirect_to :action=>'view',:id=>@data
else
	render :action=>'edit'
end
end
end	
	
	
