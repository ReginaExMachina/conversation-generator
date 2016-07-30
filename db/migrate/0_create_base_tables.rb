class CreateBassTables < ActiveRecord::Migration

	def change
		create_table :users do |t|
			t.string :username
			t.string :quirky_fact
			t.string :email
			t.string :password
			t.timestamps
		end

		create_table :posts do |t|
			t.string :convo
			t.timestamps
		end

		create_table :comments do |t|
			t.references :user
			t.references :post
			t.text :text
			t.timestamps
		end
	end
end