class Item < ActiveRecord::Base
  def self.find_not_done
  	find_all_by_done(false)
  end
  
  def self.find_done
  	find_all_by_done(true)
  end
  
  def state(opposite = false)
    done = opposite ? !done? : done?
    done ? "done" : "undone"
  end
  
  def opposite_state
    state(true)
  end
  
  def toggle
    update_attribute(:done, !done?)
    done?
  end
end
