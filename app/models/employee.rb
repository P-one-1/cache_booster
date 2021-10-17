# Employee Model

class Employee < ApplicationRecord
  VALID_GENDER = %w(male female)
  after_commit :flush_cache!

  scope :by_gender, ->(gender) do
    if VALID_GENDER.include?(gender)
      # where gender: gender
      Rails.cache.fetch("employees_#{gender}") { puts 'evaluating...'; where gender: gender }
    else
      # all
      Rails.cache.fetch('all_employees') { puts 'evaluating...'; all }
    end
  end

  def final_salary
    Rails.cache.fetch("#{cache_key}/tax") { puts 'calculating tax...'; salary - salary * 0.13 }
  end

  private

  def flush_cache!
    puts 'flushing the cache...'
    Rails.cache.delete 'all_employees'
    Rails.cache.delete "employees_#{gender}"
  end
end
