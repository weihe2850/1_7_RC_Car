// Generated by gencpp from file in2ulv_msgs/HDMapServiceResponse.msg
// DO NOT EDIT!


#ifndef IN2ULV_MSGS_MESSAGE_HDMAPSERVICERESPONSE_H
#define IN2ULV_MSGS_MESSAGE_HDMAPSERVICERESPONSE_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <in2ulv_msgs/HDMapBin.h>

namespace in2ulv_msgs
{
template <class ContainerAllocator>
struct HDMapServiceResponse_
{
  typedef HDMapServiceResponse_<ContainerAllocator> Type;

  HDMapServiceResponse_()
    : map()
    , answer(0)  {
    }
  HDMapServiceResponse_(const ContainerAllocator& _alloc)
    : map(_alloc)
    , answer(0)  {
  (void)_alloc;
    }



   typedef  ::in2ulv_msgs::HDMapBin_<ContainerAllocator>  _map_type;
  _map_type map;

   typedef int32_t _answer_type;
  _answer_type answer;





  typedef boost::shared_ptr< ::in2ulv_msgs::HDMapServiceResponse_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::in2ulv_msgs::HDMapServiceResponse_<ContainerAllocator> const> ConstPtr;

}; // struct HDMapServiceResponse_

typedef ::in2ulv_msgs::HDMapServiceResponse_<std::allocator<void> > HDMapServiceResponse;

typedef boost::shared_ptr< ::in2ulv_msgs::HDMapServiceResponse > HDMapServiceResponsePtr;
typedef boost::shared_ptr< ::in2ulv_msgs::HDMapServiceResponse const> HDMapServiceResponseConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::in2ulv_msgs::HDMapServiceResponse_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::in2ulv_msgs::HDMapServiceResponse_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::in2ulv_msgs::HDMapServiceResponse_<ContainerAllocator1> & lhs, const ::in2ulv_msgs::HDMapServiceResponse_<ContainerAllocator2> & rhs)
{
  return lhs.map == rhs.map &&
    lhs.answer == rhs.answer;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::in2ulv_msgs::HDMapServiceResponse_<ContainerAllocator1> & lhs, const ::in2ulv_msgs::HDMapServiceResponse_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace in2ulv_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::in2ulv_msgs::HDMapServiceResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::in2ulv_msgs::HDMapServiceResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::in2ulv_msgs::HDMapServiceResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::in2ulv_msgs::HDMapServiceResponse_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::in2ulv_msgs::HDMapServiceResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::in2ulv_msgs::HDMapServiceResponse_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::in2ulv_msgs::HDMapServiceResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "3310b2472ab23bd9d02f1bdd3d6851d3";
  }

  static const char* value(const ::in2ulv_msgs::HDMapServiceResponse_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x3310b2472ab23bd9ULL;
  static const uint64_t static_value2 = 0xd02f1bdd3d6851d3ULL;
};

template<class ContainerAllocator>
struct DataType< ::in2ulv_msgs::HDMapServiceResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "in2ulv_msgs/HDMapServiceResponse";
  }

  static const char* value(const ::in2ulv_msgs::HDMapServiceResponse_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::in2ulv_msgs::HDMapServiceResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "HDMapBin map\n"
"int32  answer\n"
"\n"
"================================================================================\n"
"MSG: in2ulv_msgs/HDMapBin\n"
"# This contains the lanelet map in binary format.\n"
"\n"
"# Timestamp and frame_id of the map\n"
"Header header\n"
"\n"
"# version of map format. keep this as empty string if unnecessary\n"
"string format_version\n"
"\n"
"# version of map version. keep this as empty string if unnecessary\n"
"string map_version\n"
"\n"
"# binary data of lanelet2 map. This is meant to be filled using toBinMsg() in lanelet2_extension library\n"
"int8[] data\n"
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
;
  }

  static const char* value(const ::in2ulv_msgs::HDMapServiceResponse_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::in2ulv_msgs::HDMapServiceResponse_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.map);
      stream.next(m.answer);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct HDMapServiceResponse_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::in2ulv_msgs::HDMapServiceResponse_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::in2ulv_msgs::HDMapServiceResponse_<ContainerAllocator>& v)
  {
    s << indent << "map: ";
    s << std::endl;
    Printer< ::in2ulv_msgs::HDMapBin_<ContainerAllocator> >::stream(s, indent + "  ", v.map);
    s << indent << "answer: ";
    Printer<int32_t>::stream(s, indent + "  ", v.answer);
  }
};

} // namespace message_operations
} // namespace ros

#endif // IN2ULV_MSGS_MESSAGE_HDMAPSERVICERESPONSE_H