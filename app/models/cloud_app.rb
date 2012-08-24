class CloudApp < ActiveRecord::Base
  attr_accessible :name, :org_id, :apps_item_attributes
  belongs_to :organization, :foreign_key  => 'org_id'
  

  has_many :apps_items, :foreign_key  => 'cloud_app_id'
  accepts_nested_attributes_for :apps_items, :update_only => true


end
