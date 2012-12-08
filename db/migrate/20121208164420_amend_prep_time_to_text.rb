class AmendPrepTimeToText < ActiveRecord::Migration
  change_table :recipes do |t|  
        t.change :preperation_time, :text 
    end
end
