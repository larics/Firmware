#
# Add comment.
#

bool ON=True                     # gas motor ignition on
bool OFF=False                   # gas motor ignition off
uint8 GAS_MOTOR_NUMBER=4         # the number of gas motors
uint8 GAS_MOTOR_ALL_ID=0         # the id used to select all motors
uint8 GAS_MOTOR_FRONT_ID=1       # the id of the front gas motor
uint8 GAS_MOTOR_LEFT_ID=2        # the id of the left gas motor
uint8 GAS_MOTOR_BACK_ID=3        # the id of the back gas motor
uint8 GAS_MOTOR_RIGHT_ID=4       # the id of the right gas motor

uint8 id                         # gas motor id, 0 selects all motors
bool ignition                    # gas motor ignition reference, use values ON/OFF

# TOPICS gas_motor_ignition_reference mcu_gas_motor_ignition_reference commander_gas_motor_ignition_reference
