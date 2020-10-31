class Vino < ApplicationRecord
    has_many :vino_cepas, dependent: :destroy 
    has_many :cepas, through: :vino_cepas, dependent: :destroy 
    has_many :vino_enologos, dependent: :destroy 
    has_many :enologos, through: :vino_enologos, dependent: :destroy 

    accepts_nested_attributes_for :vino_enologos
end
