// Generated by gencpp from file in2ulv_msgs/Trajectory.msg
// DO NOT EDIT!


#ifndef IN2ULV_MSGS_MESSAGE_TRAJECTORY_H
#define IN2ULV_MSGS_MESSAGE_TRAJECTORY_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <std_msgs/Header.h>
#include <in2ulv_msgs/TrajectoryPoint.h>

namespace in2ulv_msgs
{
template <class ContainerAllocator>
struct Trajectory_
{
  typedef Trajectory_<ContainerAllocator> Type;

  Trajectory_()
    : header()
    , trajectory_points()  {
    }
  Trajectory_(const ContainerAllocator& _alloc)
    : header(_alloc)
    , trajectory_points(_alloc)  {
  (void)_alloc;
    }



   typedef  ::std_msgs::Header_<ContainerAllocator>  _header_type;
  _header_type header;

   typedef std::vector< ::in2ulv_msgs::TrajectoryPoint_<ContainerAllocator> , typename std::allocator_traits<ContainerAllocator>::template rebind_alloc< ::in2ulv_msgs::TrajectoryPoint_<ContainerAllocator> >> _trajectory_points_type;
  _trajectory_points_type trajectory_points;





  typedef boost::shared_ptr< ::in2ulv_msgs::Trajectory_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::in2ulv_msgs::Trajectory_<ContainerAllocator> const> ConstPtr;

}; // struct Trajectory_

typedef ::in2ulv_msgs::Trajectory_<std::allocator<void> > Trajectory;

typedef boost::shared_ptr< ::in2ulv_msgs::Trajectory > TrajectoryPtr;
typedef boost::shared_ptr< ::in2ulv_msgs::Trajectory const> TrajectoryConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::in2ulv_msgs::Trajectory_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::in2ulv_msgs::Trajectory_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::in2ulv_msgs::Trajectory_<ContainerAllocator1> & lhs, const ::in2ulv_msgs::Trajectory_<ContainerAllocator2> & rhs)
{
  return lhs.header == rhs.header &&
    lhs.trajectory_points == rhs.trajectory_points;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::in2ulv_msgs::Trajectory_<ContainerAllocator1> & lhs, const ::in2ulv_msgs::Trajectory_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace in2ulv_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::in2ulv_msgs::Trajectory_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::in2ulv_msgs::Trajectory_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::in2ulv_msgs::Trajectory_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::in2ulv_msgs::Trajectory_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::in2ulv_msgs::Trajectory_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::in2ulv_msgs::Trajectory_<ContainerAllocator> const>
  : TrueType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::in2ulv_msgs::Trajectory_<ContainerAllocator> >
{
  static const char* value()
  {
    return "0c5b86aedbc11da21d3e6c277583d882";
  }

  static const char* value(const ::in2ulv_msgs::Trajectory_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x0c5b86aedbc11da2ULL;
  static const uint64_t static_value2 = 0x1d3e6c277583d882ULL;
};

template<class ContainerAllocator>
struct DataType< ::in2ulv_msgs::Trajectory_<ContainerAllocator> >
{
  static const char* value()
  {
    return "in2ulv_msgs/Trajectory";
  }

  static const char* value(const ::in2ulv_msgs::Trajectory_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::in2ulv_msgs::Trajectory_<ContainerAllocator> >
{
  static const char* value()
  {
    return "std_msgs/Header header\n"
"\n"
"# 轨迹点序列，暂定长度为 301\n"
"TrajectoryPoint[] trajectory_points\n"
"\n"
"================================================================================\n"
"MSG: std_msgs/Header\n"
"# Standard metadata for higher-level stamped data types.\n"
"# This is generally used to communicate timestamped data \n"
"# in a particular coordinate frame.\n"
"# \n"
"# sequence ID: consecutively increasing ID \n"
"uint32 seq\n"
"#Two-integer timestamp that is expressed as:\n"
"# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')\n"
"# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')\n"
"# time-handling sugar is provided by the client library\n"
"time stamp\n"
"#Frame this data is associated with\n"
"string frame_id\n"
"\n"
"================================================================================\n"
"MSG: in2ulv_msgs/TrajectoryPoint\n"
"# 转向灯, 0不闪，1右转向灯闪，2左转向灯闪, 3双闪\n"
"uint8 indicator_status\n"
"\n"
"# 档位，0空挡，1为D档，2为R档，3为P档\n"
"uint8 gear\n"
"\n"
"# 车体坐标系导航位姿\n"
"float64 x\n"
"float64 y\n"
"float64 theta\n"
"float64 v\n"
"float64 a\n"
;
  }

  static const char* value(const ::in2ulv_msgs::Trajectory_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::in2ulv_msgs::Trajectory_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.header);
      stream.next(m.trajectory_points);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct Trajectory_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::in2ulv_msgs::Trajectory_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::in2ulv_msgs::Trajectory_<ContainerAllocator>& v)
  {
    s << indent << "header: ";
    s << std::endl;
    Printer< ::std_msgs::Header_<ContainerAllocator> >::stream(s, indent + "  ", v.header);
    s << indent << "trajectory_points[]" << std::endl;
    for (size_t i = 0; i < v.trajectory_points.size(); ++i)
    {
      s << indent << "  trajectory_points[" << i << "]: ";
      s << std::endl;
      s << indent;
      Printer< ::in2ulv_msgs::TrajectoryPoint_<ContainerAllocator> >::stream(s, indent + "    ", v.trajectory_points[i]);
    }
  }
};

} // namespace message_operations
} // namespace ros

#endif // IN2ULV_MSGS_MESSAGE_TRAJECTORY_H
