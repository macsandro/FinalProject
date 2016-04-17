class Project < ActiveRecord::Base
  has_many :transactions, dependent: :destroy
  belongs_to :customer
end
