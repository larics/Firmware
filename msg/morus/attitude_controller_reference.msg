#
# Add comment.
#

bool ARMED=True         # vehicle armed
bool DISARMED=False     # vehicle disarmed
bool ON=True            # controller on
bool OFF=False           # controller off

float32 roll            # roll reference in NED frame
float32 pitch           # pitch reference in NED frame
float32 yaw             # yaw reference in NED frame
float32 yaw_rate        # yawrate reference in NED frame
float32 throttle        # throttle reference


bool armed              # values ARMED or DISARMED

bool roll_control        # values ON or OFF
bool pitch_control        # values ON or OFF
bool yaw_control        # values ON or OFF
bool yaw_rate_control   # values ON or OFF

# TOPICS attitude_controller_reference