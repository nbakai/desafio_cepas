class Revist < ApplicationRecord
    has_many :enologo_revists
    has_many :enologos, through: :enologo_revists, dependent: :destroy 
end
