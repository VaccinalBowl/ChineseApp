class List < ActiveRecord::Base
  belongs_to :creator, class_name: "User", foreign_key:"user_id"
  has_and_belongs_to_many :collaborators, {class_name: "User", join_table: "collaborators_lists"}  
  has_and_belongs_to_many :learners , class_name: "User"
  has_and_belongs_to_many :words



  validates :name, presence: true,
            length: { minimum: 5 }
  validates :description, presence: true,
            length: { minimum: 5 }
  

end
