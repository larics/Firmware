#
# Add comment.
#

uint64 acu_can_timestamp	# can timestamp on acu

float32 temperature_R		# measured temperature of right cylinder [°C] 
float32 temperature_L		# measured temperature of left cylinder [°C]

float32 throttle		# measured throttle position 
uint8 choke			# measured choke position
uint8 fuel_level		# measured fuel level [%]

float32[5] vibration_frequency 	# frequency of measured vibrations
float32[5] vibration_amplitude	# amplitude of measured vibrations

uint8 throttle_dyn_error	# error code for throttle dynamixel motor, 
uint8 choke_dyn_error		# error code for choke dynamixel motor 
				

# TOPICS gm_status left_gm_status right_gm_status back_gm_status front_gm_status
