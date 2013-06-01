class AddStuff < ActiveRecord::Migration
  def change
    create_table :participations do |t|
      t.references :market, :vendor
    end

    create_table :markets do |t|
      t.string :name
      t.string :address
      t.boolean :ebt
      
      t.timestamps
    end
    
    create_table :presences do |t|
      t.belongs_to :market, :vendor
      t.date :available
    end
    
    create_table :subscriptions do |t|
      t.belongs_to :user, :market
      t.boolean :sms
      t.boolean :email
    end
    
    create_table :vendors do |t|
      t.belongs_to :user
      t.string :name
      
      t.timestamps
    end
  end
end
