class Financial < ApplicationRecord
  belongs_to :business

  validates :sales_revenue, :service_revenue, numericality: {greater_than_or_equal_to: 0, less_than_or_equal_to: 100000, message: "must be a number 0 to 10,000,000"}
end
