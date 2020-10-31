class Cepa < ApplicationRecord
    has_many :vino_cepas
    has_many :vinos, through: :vino_cepas, dependent: :destroy 
end
