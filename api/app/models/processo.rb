class Processo < ActiveRecord::Base
  belongs_to :orgao
  belongs_to :responsavel
end
