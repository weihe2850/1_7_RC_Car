# A route within a high-definition map defined by the start and goal points and map primitives describing the route between the two.

# 帧头，包含时间戳信息
std_msgs/Header header

# The start_pose must exist within the bounds of the primitives in the first segment defined in the route_segments array.
geometry_msgs/Pose start_pose

# The goal_pose must exist within the bounds of the primitives in the last segment defined in the route_semgents array.
geometry_msgs/Pose goal_pose

HDMapSegment[] segments
