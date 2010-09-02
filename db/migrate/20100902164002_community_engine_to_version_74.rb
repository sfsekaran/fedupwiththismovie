class CommunityEngineToVersion74 < ActiveRecord::Migration
  def self.up
    migrate_plugin(:community_engine, 74)  
  end

  def self.down
    migrate_plugin(:community_engine, 73)    
  end
end
