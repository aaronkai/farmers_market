class AddStuff < ActiveRecord::Migration
  def change
    create_table :participations do |t|
      t.references :market, :vendor
    end

    create_table :markets do |t|
      t.integer :fmid
      t.string :name
      t.string :address
      t.string :url
      t.string :street
      t.string :city
      t.string :county
      t.string :state
      t.string :zip
      t.string :lat
      t.string :lon
      t.boolean :credit
      t.boolean :wic
      t.boolean :wcash
      t.boolean :sfmnp
      t.boolean :snap
      
      t.timestamps
    end
    
    create_table :notifications do |t|
      t.belongs_to :subscription, :presence
    end
    
    create_table :presences do |t|
      t.belongs_to :participation
      t.text :message
      t.date :date
    end
    
    create_table :subscriptions do |t|
      t.belongs_to :user, :participation
    end
    
    create_table :vendors do |t|
      t.belongs_to :user
      t.string :name
      
      t.timestamps
    end
  end
end
