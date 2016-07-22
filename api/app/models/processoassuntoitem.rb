class Processoassuntoitem < ActiveRecord::Base
  belongs_to :processoassunto
  belongs_to :responsavel
  belongs_to :assunto
  belongs_to :itemtipo
  belongs_to :itemmodo
end
