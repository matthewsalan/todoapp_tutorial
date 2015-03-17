class TodoList < ActiveRecord::Base
  has_many :todo_items
  include PgSearch
  pg_search_scope :search_by_list, :against => [:title, :description]
end
