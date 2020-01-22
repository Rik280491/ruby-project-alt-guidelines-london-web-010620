class Service < ActiveRecord::Base
    belongs_to :category
    has_many :subscriptions 
    has_many :customers, through: :subscriptions

end