class Product < ActiveRecord::Base

   validates :name, :presence => {message:"can't be blank"},length: {minimum: 3, maximum: 30, :message => "must be between 3 and 30 characters."},
            :format => { :without => /[\s]/,:message => "should not have space" }
    validates :price , :presence => {message: "can't be blank"}, :numericality => {message: "is not a number"}
    validates :description, :presence => {message: "can't be blank"}, length: {minimum: 3, maximum: 400, :message => "must be between 3 and 400 characters."},
            :format => { :without => /[\s]/,:message => "should not have space" }
end
