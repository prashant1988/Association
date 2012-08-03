class Student < ActiveRecord::Base
  attr_accessible :age, :name
  belongs_to :department
  
  

  #validates :name, :presence => true, :format => { :with => /\A[a-zA-Z]+\z/}
   #:message => "Only letters allowed" }

  
end
