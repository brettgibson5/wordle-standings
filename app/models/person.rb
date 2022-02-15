class Person < ApplicationRecord
    validates :name, presence: true
    before_save :calculate

    def calculate
        self.rounds = self[:row1].to_i + self[:row2].to_i + self[:row3].to_i + self[:row4].to_i + self[:row5].to_i + self[:row6].to_i + self[:rowFail].to_i
        self.score = self[:row1].to_i + (self[:row2].to_i * 2) + (self[:row3].to_i * 3) + (self[:row4].to_i * 4) + (self[:row5].to_i * 5) + (self[:row6].to_i * 6) + (self[:rowFail].to_i * 10)
        self.average = (self[:score].to_f / self[:rounds]).round(4)
    end
end
