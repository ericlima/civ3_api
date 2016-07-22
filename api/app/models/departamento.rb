class Departamento < ActiveRecord::Base
  belongs_to :orgao
  belongs_to :responsavel
end
