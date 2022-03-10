class MotorReservation < ActiveRecord::Migration[7.0]
  def change
        create_table :motor_reservations do |t|
      t.references :motor,  null: false, foreign_key: true
      t.references :reservation,  null: false, foreign_key: true

      t.timestamps
    end
  end
end
