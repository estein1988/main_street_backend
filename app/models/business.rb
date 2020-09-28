class Business < ApplicationRecord
    has_secure_password

    has_many :financials
end
