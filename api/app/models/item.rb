class Item < ActiveRecord::Base
  belongs_to :responsavel
  belongs_to :assunto
  belongs_to :itemmodo
  belongs_to :itemtipo
end
