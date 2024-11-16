// Generated by gencpp from file in2ulv_msgs/GetNextStationResponse.msg
// DO NOT EDIT!


#ifndef IN2ULV_MSGS_MESSAGE_GETNEXTSTATIONRESPONSE_H
#define IN2ULV_MSGS_MESSAGE_GETNEXTSTATIONRESPONSE_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace in2ulv_msgs
{
template <class ContainerAllocator>
struct GetNextStationResponse_
{
  typedef GetNextStationResponse_<ContainerAllocator> Type;

  GetNextStationResponse_()
    : target_index(0)  {
    }
  GetNextStationResponse_(const ContainerAllocator& _alloc)
    : target_index(0)  {
  (void)_alloc;
    }



   typedef int16_t _target_index_type;
  _target_index_type target_index;





  typedef boost::shared_ptr< ::in2ulv_msgs::GetNextStationResponse_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::in2ulv_msgs::GetNextStationResponse_<ContainerAllocator> const> ConstPtr;

}; // struct GetNextStationResponse_

typedef ::in2ulv_msgs::GetNextStationResponse_<std::allocator<void> > GetNextStationResponse;

typedef boost::shared_ptr< ::in2ulv_msgs::GetNextStationResponse > GetNextStationResponsePtr;
typedef boost::shared_ptr< ::in2ulv_msgs::GetNextStationResponse const> GetNextStationResponseConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::in2ulv_msgs::GetNextStationResponse_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::in2ulv_msgs::GetNextStationResponse_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::in2ulv_msgs::GetNextStationResponse_<ContainerAllocator1> & lhs, const ::in2ulv_msgs::GetNextStationResponse_<ContainerAllocator2> & rhs)
{
  return lhs.target_index == rhs.target_index;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::in2ulv_msgs::GetNextStationResponse_<ContainerAllocator1> & lhs, const ::in2ulv_msgs::GetNextStationResponse_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace in2ulv_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::in2ulv_msgs::GetNextStationResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::in2ulv_msgs::GetNextStationResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::in2ulv_msgs::GetNextStationResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::in2ulv_msgs::GetNextStationResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::in2ulv_msgs::GetNextStationResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::in2ulv_msgs::GetNextStationResponse_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::in2ulv_msgs::GetNextStationResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "5831f688e23bf4ec7487cbde647bbdd1";
  }

  static const char* value(const ::in2ulv_msgs::GetNextStationResponse_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x5831f688e23bf4ecULL;
  static const uint64_t static_value2 = 0x7487cbde647bbdd1ULL;
};

template<class ContainerAllocator>
struct DataType< ::in2ulv_msgs::GetNextStationResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "in2ulv_msgs/GetNextStationResponse";
  }

  static const char* value(const ::in2ulv_msgs::GetNextStationResponse_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::in2ulv_msgs::GetNextStationResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# 目标站点索引\n"
"int16 target_index\n"
;
  }

  static const char* value(const ::in2ulv_msgs::GetNextStationResponse_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::in2ulv_msgs::GetNextStationResponse_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.target_index);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct GetNextStationResponse_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::in2ulv_msgs::GetNextStationResponse_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::in2ulv_msgs::GetNextStationResponse_<ContainerAllocator>& v)
  {
    s << indent << "target_index: ";
    Printer<int16_t>::stream(s, indent + "  ", v.target_index);
  }
};

} // namespace message_operations
} // namespace ros

#endif // IN2ULV_MSGS_MESSAGE_GETNEXTSTATIONRESPONSE_H
