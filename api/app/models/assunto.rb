class Assunto < ActiveRecord::Base
  belongs_to :grupoassunto
  belongs_to :responsavel
end
