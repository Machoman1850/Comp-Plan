class CompItem < ActiveRecord::Base
  belongs_to :head_count
  belongs_to :revenue
  belongs_to :capital_raised
  belongs_to :funding_round
  belongs_to :development_stage
  belongs_to :industry
  belongs_to :employee_region
  belongs_to :primary_title
end
