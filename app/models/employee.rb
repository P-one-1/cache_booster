class Employee < ApplicationRecord
  VALID_GENDER = %w(male female)

  scope :by_gender, lambda do |gender|
    if VALID_GENDER.include?(gender)
      where gender: gender
    else
      all
    end
  end
end
