class Complaint < ApplicationRecord
	belongs_to :landlord, optional: true
end
