class Person < ApplicationRecord
    before_save :average

    def average
        (self[:score].to_f / self[:rounds]).round(4)
    end
end
