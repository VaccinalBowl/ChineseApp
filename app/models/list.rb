class List < ActiveRecord::Base
      has_many :words, dependent: :destroy
      validates :name, presence: true,
                    length: { minimum: 5 }
      validates :description, presence: true,
                    length: { minimum: 5 }


end
