class Employee < ApplicationRecord
  belongs_to :company

  validates :name, presence: true

  def self.create_with_company(name, company_name)
    ActiveRecord::Base.transaction do
      company = Company.create!(name: company_name)
      company.employees.create!(name: name)
    end
  end
end