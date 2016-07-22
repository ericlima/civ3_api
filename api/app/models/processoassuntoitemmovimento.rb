class Processoassuntoitemmovimento < ActiveRecord::Base
  belongs_to :processoassuntoitem
  belongs_to :responsavel
end
