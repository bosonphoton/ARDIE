## *********************************************************
##
## File autogenerated for the segway_ros package
## by the dynamic_reconfigure package.
## Please do not edit.
##
## ********************************************************/

from dynamic_reconfigure.encoding import extract_params

inf = float('inf')

config_description = {'upper': 'DEFAULT', 'lower': 'groups', 'srcline': 246, 'name': 'Default', 'parent': 0, 'srcfile': '/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'cstate': 'true', 'parentname': 'Default', 'class': 'DEFAULT', 'field': 'default', 'state': True, 'parentclass': '', 'groups': [], 'parameters': [{'srcline': 291, 'description': 'Maximum velocity in m/s for teleop', 'max': 8.0, 'cconsttype': 'const double', 'ctype': 'double', 'srcfile': '/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'name': 'teleop_vel_limit_mps', 'edit_method': '', 'default': 0.5, 'level': 2, 'min': 0.0, 'type': 'double'}, {'srcline': 291, 'description': 'Maximum velocity in m/s for teleop', 'max': 7.848, 'cconsttype': 'const double', 'ctype': 'double', 'srcfile': '/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'name': 'teleop_accel_limit_mps2', 'edit_method': '', 'default': 0.5, 'level': 4, 'min': 0.05, 'type': 'double'}, {'srcline': 291, 'description': 'Maximum yaw_rate in rad/s for teleop', 'max': 4.5, 'cconsttype': 'const double', 'ctype': 'double', 'srcfile': '/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'name': 'teleop_yaw_rate_limit_rps', 'edit_method': '', 'default': 1.0, 'level': 8, 'min': 0.0, 'type': 'double'}, {'srcline': 291, 'description': 'Maximum yaw acceleration in rad/s^2 for teleop', 'max': 28.274, 'cconsttype': 'const double', 'ctype': 'double', 'srcfile': '/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'name': 'teleop_yaw_accel_limit_rps2', 'edit_method': '', 'default': 1.0, 'level': 16, 'min': 0.063, 'type': 'double'}, {'srcline': 291, 'description': 'Maximum velocity in m/s for RMP', 'max': 8.0, 'cconsttype': 'const double', 'ctype': 'double', 'srcfile': '/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'name': 'vel_limit_mps', 'edit_method': '', 'default': 1.0, 'level': 32, 'min': 0.0, 'type': 'double'}, {'srcline': 291, 'description': 'Maximum acceleration in m/s^2 for RMP', 'max': 7.848, 'cconsttype': 'const double', 'ctype': 'double', 'srcfile': '/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'name': 'accel_limit_mps2', 'edit_method': '', 'default': 0.5, 'level': 64, 'min': 0.05, 'type': 'double'}, {'srcline': 291, 'description': 'Maximum deceleration in m/s^2 for RMP', 'max': 7.848, 'cconsttype': 'const double', 'ctype': 'double', 'srcfile': '/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'name': 'decel_limit_mps2', 'edit_method': '', 'default': 0.5, 'level': 128, 'min': 0.05, 'type': 'double'}, {'srcline': 291, 'description': 'Maximum emergency DTZ deceleration in m/s^2 for RMP', 'max': 7.848, 'cconsttype': 'const double', 'ctype': 'double', 'srcfile': '/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'name': 'dtz_decel_limit_mps2', 'edit_method': '', 'default': 1.0, 'level': 256, 'min': 0.981, 'type': 'double'}, {'srcline': 291, 'description': 'Maximum yaw rate in rad/s for RMP', 'max': 4.5, 'cconsttype': 'const double', 'ctype': 'double', 'srcfile': '/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'name': 'yaw_rate_limit_rps', 'edit_method': '', 'default': 1.0, 'level': 512, 'min': 0.01, 'type': 'double'}, {'srcline': 291, 'description': 'Maximum yaw acceleration in rad/s^2 for RMP', 'max': 28.274, 'cconsttype': 'const double', 'ctype': 'double', 'srcfile': '/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'name': 'yaw_accel_limit_rps2', 'edit_method': '', 'default': 1.0, 'level': 1024, 'min': 0.063, 'type': 'double'}, {'srcline': 291, 'description': 'Maximum lateral acceleration in m/s^2 for RMP', 'max': 9.81, 'cconsttype': 'const double', 'ctype': 'double', 'srcfile': '/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'name': 'lateral_accel_limit_mps2', 'edit_method': '', 'default': 4.905, 'level': 2048, 'min': 0.981, 'type': 'double'}, {'srcline': 291, 'description': 'Tire rolling diameter in m for RMP', 'max': 1.0, 'cconsttype': 'const double', 'ctype': 'double', 'srcfile': '/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'name': 'tire_rolling_diameter_m', 'edit_method': '', 'default': 0.46228, 'level': 4096, 'min': 0.05, 'type': 'double'}, {'srcline': 291, 'description': 'Distance between front and rear contact patch in m for RMP', 'max': 1.0, 'cconsttype': 'const double', 'ctype': 'double', 'srcfile': '/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'name': 'wheel_base_length_m', 'edit_method': '', 'default': 0.5842, 'level': 8192, 'min': 0.4142, 'type': 'double'}, {'srcline': 291, 'description': 'Distance between left and right contact patch in m for RMP', 'max': 1.0, 'cconsttype': 'const double', 'ctype': 'double', 'srcfile': '/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'name': 'wheel_track_width_m', 'edit_method': '', 'default': 0.569976, 'level': 16384, 'min': 0.3556, 'type': 'double'}, {'srcline': 291, 'description': 'yaw correction factor to adjust omni odometry', 'max': 5.0, 'cconsttype': 'const double', 'ctype': 'double', 'srcfile': '/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'name': 'omni_yaw_correction_factor', 'edit_method': '', 'default': 1.0, 'level': 32768, 'min': 0.0, 'type': 'double'}, {'srcline': 291, 'description': 'straffe correction factor to adjust omni odometry', 'max': 5.0, 'cconsttype': 'const double', 'ctype': 'double', 'srcfile': '/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'name': 'omni_straffe_correction_factor', 'edit_method': '', 'default': 1.0, 'level': 65536, 'min': 0.0, 'type': 'double'}, {'srcline': 291, 'description': 'Input to ouput gear ratio for RMP', 'max': 200.0, 'cconsttype': 'const double', 'ctype': 'double', 'srcfile': '/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'name': 'gear_ratio', 'edit_method': '', 'default': 24.2667, 'level': 131072, 'min': 1.0, 'type': 'double'}, {'srcline': 291, 'description': 'Check to enable audio', 'max': True, 'cconsttype': 'const bool', 'ctype': 'bool', 'srcfile': '/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'name': 'enable_audio', 'edit_method': '', 'default': True, 'level': 262144, 'min': False, 'type': 'bool'}, {'srcline': 291, 'description': 'Allow motion with charger connected', 'max': True, 'cconsttype': 'const bool', 'ctype': 'bool', 'srcfile': '/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'name': 'motion_while_charging', 'edit_method': '', 'default': False, 'level': 262144, 'min': False, 'type': 'bool'}, {'srcline': 291, 'description': 'Allow transition to balance mode; only for RMP220', 'max': True, 'cconsttype': 'const bool', 'ctype': 'bool', 'srcfile': '/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'name': 'balance_mode_enabled', 'edit_method': '', 'default': False, 'level': 262144, 'min': False, 'type': 'bool'}, {'srcline': 291, 'description': 'Balance Gain Schedule', 'max': 2147483647, 'cconsttype': 'const int', 'ctype': 'int', 'srcfile': '/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'name': 'balace_gains', 'edit_method': "{'enum_description': 'Balance gain tunings (see manual for RMP220)', 'enum': [{'srcline': 34, 'description': '', 'srcfile': '/home/chels/catkin_ws/src/segway_v3/segway_ros/cfg/segway.cfg', 'cconsttype': 'const int', 'value': 0, 'ctype': 'int', 'type': 'int', 'name': 'Default'}, {'srcline': 35, 'description': '', 'srcfile': '/home/chels/catkin_ws/src/segway_v3/segway_ros/cfg/segway.cfg', 'cconsttype': 'const int', 'value': 1, 'ctype': 'int', 'type': 'int', 'name': 'Light'}, {'srcline': 36, 'description': '', 'srcfile': '/home/chels/catkin_ws/src/segway_v3/segway_ros/cfg/segway.cfg', 'cconsttype': 'const int', 'value': 2, 'ctype': 'int', 'type': 'int', 'name': 'Tall'}, {'srcline': 37, 'description': '', 'srcfile': '/home/chels/catkin_ws/src/segway_v3/segway_ros/cfg/segway.cfg', 'cconsttype': 'const int', 'value': 4, 'ctype': 'int', 'type': 'int', 'name': 'Heavy'}, {'srcline': 38, 'description': '', 'srcfile': '/home/chels/catkin_ws/src/segway_v3/segway_ros/cfg/segway.cfg', 'cconsttype': 'const int', 'value': 8, 'ctype': 'int', 'type': 'int', 'name': 'Custom'}]}", 'default': 0, 'level': 262144, 'min': -2147483648, 'type': 'int'}, {'srcline': 291, 'description': 'Velocity Input Filter Cutoff', 'max': 2147483647, 'cconsttype': 'const int', 'ctype': 'int', 'srcfile': '/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'name': 'vel_ctl_input_filter', 'edit_method': "{'enum_description': 'Velocity controller input filter cutoff frequency', 'enum': [{'srcline': 42, 'description': '', 'srcfile': '/home/chels/catkin_ws/src/segway_v3/segway_ros/cfg/segway.cfg', 'cconsttype': 'const int', 'value': 0, 'ctype': 'int', 'type': 'int', 'name': 'filter_10Hz_Cutoff'}, {'srcline': 43, 'description': '', 'srcfile': '/home/chels/catkin_ws/src/segway_v3/segway_ros/cfg/segway.cfg', 'cconsttype': 'const int', 'value': 1, 'ctype': 'int', 'type': 'int', 'name': 'filter_4Hz_Cutoff'}, {'srcline': 44, 'description': '', 'srcfile': '/home/chels/catkin_ws/src/segway_v3/segway_ros/cfg/segway.cfg', 'cconsttype': 'const int', 'value': 2, 'ctype': 'int', 'type': 'int', 'name': 'filter_1Hz_Cutoff'}, {'srcline': 45, 'description': '', 'srcfile': '/home/chels/catkin_ws/src/segway_v3/segway_ros/cfg/segway.cfg', 'cconsttype': 'const int', 'value': 4, 'ctype': 'int', 'type': 'int', 'name': 'filter_0p5Hz_Cutoff'}, {'srcline': 46, 'description': '', 'srcfile': '/home/chels/catkin_ws/src/segway_v3/segway_ros/cfg/segway.cfg', 'cconsttype': 'const int', 'value': 8, 'ctype': 'int', 'type': 'int', 'name': 'filter_0p2Hz_Cutoff'}]}", 'default': 0, 'level': 262144, 'min': -2147483648, 'type': 'int'}, {'srcline': 291, 'description': 'Yaw Input Filter Cutoff', 'max': 2147483647, 'cconsttype': 'const int', 'ctype': 'int', 'srcfile': '/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'name': 'yaw_ctl_input_filter', 'edit_method': "{'enum_description': 'Yaw controller input filter cutoff frequency', 'enum': [{'srcline': 50, 'description': '', 'srcfile': '/home/chels/catkin_ws/src/segway_v3/segway_ros/cfg/segway.cfg', 'cconsttype': 'const int', 'value': 0, 'ctype': 'int', 'type': 'int', 'name': 'filter_10Hz_Cutoff'}, {'srcline': 51, 'description': '', 'srcfile': '/home/chels/catkin_ws/src/segway_v3/segway_ros/cfg/segway.cfg', 'cconsttype': 'const int', 'value': 1, 'ctype': 'int', 'type': 'int', 'name': 'filter_4Hz_Cutoff'}, {'srcline': 52, 'description': '', 'srcfile': '/home/chels/catkin_ws/src/segway_v3/segway_ros/cfg/segway.cfg', 'cconsttype': 'const int', 'value': 2, 'ctype': 'int', 'type': 'int', 'name': 'filter_1Hz_Cutoff'}, {'srcline': 53, 'description': '', 'srcfile': '/home/chels/catkin_ws/src/segway_v3/segway_ros/cfg/segway.cfg', 'cconsttype': 'const int', 'value': 4, 'ctype': 'int', 'type': 'int', 'name': 'filter_0p5Hz_Cutoff'}, {'srcline': 54, 'description': '', 'srcfile': '/home/chels/catkin_ws/src/segway_v3/segway_ros/cfg/segway.cfg', 'cconsttype': 'const int', 'value': 8, 'ctype': 'int', 'type': 'int', 'name': 'filter_0p2Hz_Cutoff'}]}", 'default': 0, 'level': 262144, 'min': -2147483648, 'type': 'int'}, {'srcline': 291, 'description': 'Enable AHS correction for IMU yaw estimate', 'max': True, 'cconsttype': 'const bool', 'ctype': 'bool', 'srcfile': '/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'name': 'imu_ahs_correction_enabled', 'edit_method': '', 'default': False, 'level': 262144, 'min': False, 'type': 'bool'}, {'srcline': 291, 'description': 'Limits peak torque from from system 0-100% of system capability', 'max': 100.0, 'cconsttype': 'const double', 'ctype': 'double', 'srcfile': '/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'name': 'torqe_limit', 'edit_method': '', 'default': 100.0, 'level': 524288, 'min': 0.0, 'type': 'double'}], 'type': '', 'id': 0}

min = {}
max = {}
defaults = {}
level = {}
type = {}
all_level = 0

#def extract_params(config):
#    params = []
#    params.extend(config['parameters'])
#    for group in config['groups']:
#        params.extend(extract_params(group))
#    return params

for param in extract_params(config_description):
    min[param['name']] = param['min']
    max[param['name']] = param['max']
    defaults[param['name']] = param['default']
    level[param['name']] = param['level']
    type[param['name']] = param['type']
    all_level = all_level | param['level']

segway_Default = 0
segway_Light = 1
segway_Tall = 2
segway_Heavy = 4
segway_Custom = 8
segway_filter_10Hz_Cutoff = 0
segway_filter_4Hz_Cutoff = 1
segway_filter_1Hz_Cutoff = 2
segway_filter_0p5Hz_Cutoff = 4
segway_filter_0p2Hz_Cutoff = 8
segway_filter_10Hz_Cutoff = 0
segway_filter_4Hz_Cutoff = 1
segway_filter_1Hz_Cutoff = 2
segway_filter_0p5Hz_Cutoff = 4
segway_filter_0p2Hz_Cutoff = 8
