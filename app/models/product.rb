class Product < ApplicationRecord
    
    validates :name, :price, presence: true
    

    def to_s                                    #makes sure product name is always displayed and not object 
        name 
    end 
end
