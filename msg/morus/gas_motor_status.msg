#
# Add comment.
#

uint64 acu_can_timestamp	# can timestamp on acu

float32 temperature_R		# measured temperature of right cylinder [°C], range: [-55,150]
float32 temperature_L		# measured temperature of left cylinder [°C], range: [-55,150]

float32 throttle		# measured throttle position, in percentage (0-1) 
uint8 choke			# measured choke position, range: [0, 1]
float32 fuel_level		# measured fuel level [%], range: [0, 1]

float32[5] vibration_frequency 	# frequency of measured vibrations
float32[5] vibration_amplitude	# amplitude of measured vibrations

uint8 throttle_dyn_error	# error code for throttle dynamixel motor, 
uint8 choke_dyn_error		# error code for choke dynamixel motor 
				

# TOPICS gas_motor_status left_gas_motor_status right_gas_motor_status back_gas_motor_status front_gas_motor_status
