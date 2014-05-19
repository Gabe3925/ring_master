class Event < ActiveRecord::Base
belongs_to :band
belongs_to :venue

def self.search(search)
  if search
    find_by(:all, :conditions => ['date LIKE ?', "%#{search}%"])
  else
    find(:all)
  end
end

end
