// Generated by gencpp from file in2ulv_msgs/ControlResult.msg
// DO NOT EDIT!


#ifndef IN2ULV_MSGS_MESSAGE_CONTROLRESULT_H
#define IN2ULV_MSGS_MESSAGE_CONTROLRESULT_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <std_msgs/Header.h>

namespace in2ulv_msgs
{
template <class ContainerAllocator>
struct ControlResult_
{
  typedef ControlResult_<ContainerAllocator> Type;

  ControlResult_()
    : header()
    , steer(0.0)
    , brake(0.0)
    , if_brake(false)
    , speed_control(0.0)
    , if_speed(false)
    , acceleration_control(0.0)
    , if_acceleration(false)
    , is_left_lighting(false)
    , is_right_lighting(false)
    , is_hook_close(false)
    , hook_position(0.0)
    , gear_info(0)
    , speed_limit(0.0)
    , speed_out(0.0)  {
    }
  ControlResult_(const ContainerAllocator& _alloc)
    : header(_alloc)
    , steer(0.0)
    , brake(0.0)
    , if_brake(false)
    , speed_control(0.0)
    , if_speed(false)
    , acceleration_control(0.0)
    , if_acceleration(false)
    , is_left_lighting(false)
    , is_right_lighting(false)
    , is_hook_close(false)
    , hook_position(0.0)
    , gear_info(0)
    , speed_limit(0.0)
    , speed_out(0.0)  {
  (void)_alloc;
    }



   typedef  ::std_msgs::Header_<ContainerAllocator>  _header_type;
  _header_type header;

   typedef float _steer_type;
  _steer_type steer;

   typedef float _brake_type;
  _brake_type brake;

   typedef uint8_t _if_brake_type;
  _if_brake_type if_brake;

   typedef float _speed_control_type;
  _speed_control_type speed_control;

   typedef uint8_t _if_speed_type;
  _if_speed_type if_speed;

   typedef float _acceleration_control_type;
  _acceleration_control_type acceleration_control;

   typedef uint8_t _if_acceleration_type;
  _if_acceleration_type if_acceleration;

   typedef uint8_t _is_left_lighting_type;
  _is_left_lighting_type is_left_lighting;

   typedef uint8_t _is_right_lighting_type;
  _is_right_lighting_type is_right_lighting;

   typedef uint8_t _is_hook_close_type;
  _is_hook_close_type is_hook_close;

   typedef float _hook_position_type;
  _hook_position_type hook_position;

   typedef uint8_t _gear_info_type;
  _gear_info_type gear_info;

   typedef float _speed_limit_type;
  _speed_limit_type speed_limit;

   typedef float _speed_out_type;
  _speed_out_type speed_out;





  typedef boost::shared_ptr< ::in2ulv_msgs::ControlResult_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::in2ulv_msgs::ControlResult_<ContainerAllocator> const> ConstPtr;

}; // struct ControlResult_

typedef ::in2ulv_msgs::ControlResult_<std::allocator<void> > ControlResult;

typedef boost::shared_ptr< ::in2ulv_msgs::ControlResult > ControlResultPtr;
typedef boost::shared_ptr< ::in2ulv_msgs::ControlResult const> ControlResultConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::in2ulv_msgs::ControlResult_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::in2ulv_msgs::ControlResult_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::in2ulv_msgs::ControlResult_<ContainerAllocator1> & lhs, const ::in2ulv_msgs::ControlResult_<ContainerAllocator2> & rhs)
{
  return lhs.header == rhs.header &&
    lhs.steer == rhs.steer &&
    lhs.brake == rhs.brake &&
    lhs.if_brake == rhs.if_brake &&
    lhs.speed_control == rhs.speed_control &&
    lhs.if_speed == rhs.if_speed &&
    lhs.acceleration_control == rhs.acceleration_control &&
    lhs.if_acceleration == rhs.if_acceleration &&
    lhs.is_left_lighting == rhs.is_left_lighting &&
    lhs.is_right_lighting == rhs.is_right_lighting &&
    lhs.is_hook_close == rhs.is_hook_close &&
    lhs.hook_position == rhs.hook_position &&
    lhs.gear_info == rhs.gear_info &&
    lhs.speed_limit == rhs.speed_limit &&
    lhs.speed_out == rhs.speed_out;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::in2ulv_msgs::ControlResult_<ContainerAllocator1> & lhs, const ::in2ulv_msgs::ControlResult_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace in2ulv_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::in2ulv_msgs::ControlResult_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::in2ulv_msgs::ControlResult_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::in2ulv_msgs::ControlResult_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::in2ulv_msgs::ControlResult_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::in2ulv_msgs::ControlResult_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::in2ulv_msgs::ControlResult_<ContainerAllocator> const>
  : TrueType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::in2ulv_msgs::ControlResult_<ContainerAllocator> >
{
  static const char* value()
  {
    return "d0ea0e1d317647aa9e9251fc4a618a52";
  }

  static const char* value(const ::in2ulv_msgs::ControlResult_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xd0ea0e1d317647aaULL;
  static const uint64_t static_value2 = 0x9e9251fc4a618a52ULL;
};

template<class ContainerAllocator>
struct DataType< ::in2ulv_msgs::ControlResult_<ContainerAllocator> >
{
  static const char* value()
  {
    return "in2ulv_msgs/ControlResult";
  }

  static const char* value(const ::in2ulv_msgs::ControlResult_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::in2ulv_msgs::ControlResult_<ContainerAllocator> >
{
  static const char* value()
  {
    return "std_msgs/Header header\n"
"\n"
"#方向盘打角   -50 ———— +50   左正右负   -720~720\n"
"float32 steer   \n"
"\n"
"#油门       0 ———— +100  \n"
"# float32 throttle\n"
"\n"
"# 刹车 0-100.0\n"
"float32 brake\n"
"bool if_brake\n"
"\n"
"# 控速\n"
"float32 speed_control\n"
"bool if_speed\n"
"\n"
"# 控加速度\n"
"float32 acceleration_control\n"
"bool if_acceleration\n"
"\n"
"# 左车灯\n"
"bool is_left_lighting\n"
"\n"
"# 右车灯\n"
"bool is_right_lighting\n"
"\n"
"# 挂钩锁紧\n"
"bool is_hook_close\n"
"\n"
"# 挂钩位置\n"
"float32 hook_position\n"
"\n"
"# 档位\n"
"uint8 gear_info\n"
"\n"
"# pmx - debug\n"
"float32 speed_limit\n"
"float32 speed_out\n"
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
;
  }

  static const char* value(const ::in2ulv_msgs::ControlResult_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::in2ulv_msgs::ControlResult_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.header);
      stream.next(m.steer);
      stream.next(m.brake);
      stream.next(m.if_brake);
      stream.next(m.speed_control);
      stream.next(m.if_speed);
      stream.next(m.acceleration_control);
      stream.next(m.if_acceleration);
      stream.next(m.is_left_lighting);
      stream.next(m.is_right_lighting);
      stream.next(m.is_hook_close);
      stream.next(m.hook_position);
      stream.next(m.gear_info);
      stream.next(m.speed_limit);
      stream.next(m.speed_out);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct ControlResult_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::in2ulv_msgs::ControlResult_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::in2ulv_msgs::ControlResult_<ContainerAllocator>& v)
  {
    s << indent << "header: ";
    s << std::endl;
    Printer< ::std_msgs::Header_<ContainerAllocator> >::stream(s, indent + "  ", v.header);
    s << indent << "steer: ";
    Printer<float>::stream(s, indent + "  ", v.steer);
    s << indent << "brake: ";
    Printer<float>::stream(s, indent + "  ", v.brake);
    s << indent << "if_brake: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.if_brake);
    s << indent << "speed_control: ";
    Printer<float>::stream(s, indent + "  ", v.speed_control);
    s << indent << "if_speed: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.if_speed);
    s << indent << "acceleration_control: ";
    Printer<float>::stream(s, indent + "  ", v.acceleration_control);
    s << indent << "if_acceleration: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.if_acceleration);
    s << indent << "is_left_lighting: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.is_left_lighting);
    s << indent << "is_right_lighting: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.is_right_lighting);
    s << indent << "is_hook_close: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.is_hook_close);
    s << indent << "hook_position: ";
    Printer<float>::stream(s, indent + "  ", v.hook_position);
    s << indent << "gear_info: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.gear_info);
    s << indent << "speed_limit: ";
    Printer<float>::stream(s, indent + "  ", v.speed_limit);
    s << indent << "speed_out: ";
    Printer<float>::stream(s, indent + "  ", v.speed_out);
  }
};

} // namespace message_operations
} // namespace ros

#endif // IN2ULV_MSGS_MESSAGE_CONTROLRESULT_H