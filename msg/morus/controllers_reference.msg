#
# Add comment.
#

float32 x		# referent x position in NED frame
float32 y   	# referent y position in NED frame
float32 z		# referent z position in NED frame

float32 vx		# referent x velocity in NED frame
float32 vy   	# referent y velocity in NED frame
float32 vz		# referent z velocity in NED frame

float32 yaw		# yaw reference
float32 vyaw	# yaw velocity reference

float32 roll		# roll reference (manual mode) in radians, should be ignored if position controllers on
float32 pitch		# pitch reference (manual mode) in radians, should be ignored if position controllers on
float32 throttle 	# throttle ref (manual mode) in percentage (0-1), should be ignored if height controller on

# TOPICS controllers_reference mcu_controllers_reference ctrl_sm_controllers_reference