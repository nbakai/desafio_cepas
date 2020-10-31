class Enologo < ApplicationRecord
    has_many :vino_enologos
    has_many :vinos, through: :vino_enologos, dependent: :destroy 
    has_many :enologo_revists
    has_many :revists, through: :enologo_revists, dependent: :destroy 

    accepts_nested_attributes_for :enologo_revists
end
