class Company < ApplicationRecord
  has_many :employees

  validates :name, presence: true

  def self.create_with_employees(name, employee_names)
    ActiveRecord::Base.transaction do
      company = Company.create!(name: name)
      employee_names.each do |employee_name|
        company.employees.create!(name: employee_name)
      end
    end
  end
end
