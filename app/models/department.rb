class Department < ActiveRecord::Base
  attr_accessible :name,:roomno
  has_many :students
  #validates_presence_of :name, :roomno
# validates :name, :presence => true, :format => { :with => /\A[a-zA-Z]+\z/,
   # :message => "Only letters allowed" }
 #validates :name, :presence => true, :format => { :with => /\A[a-zA-Z]+\z/,
    #:message => "Only letters allowed" }

end