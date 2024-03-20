require "rails_helper"

RSpec.describe Company, type: :model do
  it "is valid with a name" do
    company = Company.new(name: "Example Company")
    expect(company).to be_valid
  end

  it "is invalid without a name" do
    company = Company.new()
    company.valid?
    expect(company.errors[:name]).to include("can't be blank")
  end

  describe ".create_with_employees" do
    it "creates a company with employees" do
      company = Company.create_with_employees("Example Company", ["Alice", "Bob"])

      expect(company.employees.count).to eq(2)
      expect(company.employees[0].name).to eq("Alice")
    end
  end
end
