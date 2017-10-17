#
# Add comment.
#

bool ARMED=True                     # vehicle armed
bool DISARMED=False                 # vehicle disarmed
bool AUTO=True                      # controller in automatic mode
bool MANUAL=False                   # controller in manual mode

bool armed                          # values ARMED or DISARMED

bool controller_x                   # values AUTO or MAN
bool controller_y                   # values AUTO or MAN
bool controller_z                   # values AUTO or MAN

bool controller_velocity_x          # values AUTO or MAN
bool controller_velocity_y          # values AUTO or MAN
bool controller_velocity_z          # values AUTO or MAN


bool controller_roll                # values AUTO or MAN
bool controller_pitch               # values AUTO or MAN
bool controller_yaw                 # values AUTO or MAN
bool controller_yaw_rate            # values AUTO or MAN

# TOPICS controllers_mode mcu_controllers_mode commander_controllers_mode
