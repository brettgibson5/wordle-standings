class Person < ApplicationRecord
    validates :name, :score, :rounds, presence: true
    before_save :calculate_average

    def calculate_average
        self.average = (self[:score].to_f / self[:rounds]).round(4)
    end
end
