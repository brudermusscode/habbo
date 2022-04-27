# frozen_string_literal: true

class DeviseCreateYuuzaas < ActiveRecord::Migration[7.0]
  def change
    create_table :yuuzaas do |t|
      ## Database authenticatable
      t.string :username, null: false, default: ''
      t.string :email, null: false, default: ''
      t.string :encrypted_password, null: false, default: ''
      t.integer :credits, null: false, default: 100
      t.integer :vip_points, null: false, default: 100
      t.integer :activity_points, null: false, default: 0
      t.datetime :activity_points_lastupdate
      t.string :look, null: false,
                      default: 'ca-1804-100.ch-3215-110.sh-3016-99.lg-275-110.hr-110-1316.fa-1204-62.ea-3108-99-108.hd-180-3.wa-3073-62'
      t.string :gender, null: false, default: ''
      t.string :motto, null: true, default: 'I love it!'
      t.boolean :online, null: false, default: false
      t.integer :home_room, null: false, default: 0
      t.integer :respect, null: false, default: 0
      t.integer :daily_respect_points, null: false, default: 3
      t.integer :daily_pet_respect_points, null: false, default: 3
      t.boolean :newbie_status, null: false, default: true
      t.boolean :is_muted, null: false, default: false
      t.boolean :mutant_penalty, null: false, default: false
      t.datetime :mutant_penalty_expire

      ## Recoverable
      t.string   :reset_password_token
      t.datetime :reset_password_sent_at

      ## Rememberable
      t.datetime :remember_created_at

      ## Trackable
      t.integer  :sign_in_count, default: 0, null: false
      t.datetime :current_sign_in_at
      t.datetime :last_sign_in_at
      t.string   :current_sign_in_ip
      t.string   :last_sign_in_ip

      ## Confirmable
      t.string   :confirmation_token
      t.datetime :confirmed_at
      t.datetime :confirmation_sent_at
      t.string   :unconfirmed_email # Only if using reconfirmable

      ## Lockable
      # t.integer  :failed_attempts, default: 0, null: false # Only if lock strategy is :failed_attempts
      # t.string   :unlock_token # Only if unlock strategy is :email or :both
      # t.datetime :locked_at

      t.timestamps null: false
    end

    add_index :yuuzaas, :username,             unique: true
    add_index :yuuzaas, :email,                unique: true
    add_index :yuuzaas, :reset_password_token, unique: true
    add_index :yuuzaas, :confirmation_token,   unique: true
    # add_index :yuuzaas, :unlock_token,         unique: true
  end
end
