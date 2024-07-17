#include <ros/ros.h>
#include <std_msgs/String.h>
 
int main(int argc, char **argv)
{
  ros::init(argc, argv, "talker");
  ros::NodeHandle nh;
 

  ros::Rate loop_rate(10);
 
  int count = 0;
  while (ros::ok())
  {
    ROS_INFO("hello world");
 

    ros::spinOnce();
 
    loop_rate.sleep();
    ++count;
  }
 
  return 0;
}