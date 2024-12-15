// Generated by gencpp from file xsens_mti_driver/XsStatusWord.msg
// DO NOT EDIT!


#ifndef XSENS_MTI_DRIVER_MESSAGE_XSSTATUSWORD_H
#define XSENS_MTI_DRIVER_MESSAGE_XSSTATUSWORD_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace xsens_mti_driver
{
template <class ContainerAllocator>
struct XsStatusWord_
{
  typedef XsStatusWord_<ContainerAllocator> Type;

  XsStatusWord_()
    : selftest(false)
    , filter_valid(false)
    , gnss_fix(false)
    , no_rotation_update_status(0)
    , representative_motion(false)
    , clock_bias_estimation(false)
    , clipflag_acc_x(false)
    , clipflag_acc_y(false)
    , clipflag_acc_z(false)
    , clipflag_gyr_x(false)
    , clipflag_gyr_y(false)
    , clipflag_gyr_z(false)
    , clipflag_mag_x(false)
    , clipflag_mag_y(false)
    , clipflag_mag_z(false)
    , clipping_indication(false)
    , syncin_marker(false)
    , syncout_marker(false)
    , filter_mode(0)
    , have_gnss_time_pulse(false)
    , rtk_status(0)  {
    }
  XsStatusWord_(const ContainerAllocator& _alloc)
    : selftest(false)
    , filter_valid(false)
    , gnss_fix(false)
    , no_rotation_update_status(0)
    , representative_motion(false)
    , clock_bias_estimation(false)
    , clipflag_acc_x(false)
    , clipflag_acc_y(false)
    , clipflag_acc_z(false)
    , clipflag_gyr_x(false)
    , clipflag_gyr_y(false)
    , clipflag_gyr_z(false)
    , clipflag_mag_x(false)
    , clipflag_mag_y(false)
    , clipflag_mag_z(false)
    , clipping_indication(false)
    , syncin_marker(false)
    , syncout_marker(false)
    , filter_mode(0)
    , have_gnss_time_pulse(false)
    , rtk_status(0)  {
  (void)_alloc;
    }



   typedef uint8_t _selftest_type;
  _selftest_type selftest;

   typedef uint8_t _filter_valid_type;
  _filter_valid_type filter_valid;

   typedef uint8_t _gnss_fix_type;
  _gnss_fix_type gnss_fix;

   typedef uint8_t _no_rotation_update_status_type;
  _no_rotation_update_status_type no_rotation_update_status;

   typedef uint8_t _representative_motion_type;
  _representative_motion_type representative_motion;

   typedef uint8_t _clock_bias_estimation_type;
  _clock_bias_estimation_type clock_bias_estimation;

   typedef uint8_t _clipflag_acc_x_type;
  _clipflag_acc_x_type clipflag_acc_x;

   typedef uint8_t _clipflag_acc_y_type;
  _clipflag_acc_y_type clipflag_acc_y;

   typedef uint8_t _clipflag_acc_z_type;
  _clipflag_acc_z_type clipflag_acc_z;

   typedef uint8_t _clipflag_gyr_x_type;
  _clipflag_gyr_x_type clipflag_gyr_x;

   typedef uint8_t _clipflag_gyr_y_type;
  _clipflag_gyr_y_type clipflag_gyr_y;

   typedef uint8_t _clipflag_gyr_z_type;
  _clipflag_gyr_z_type clipflag_gyr_z;

   typedef uint8_t _clipflag_mag_x_type;
  _clipflag_mag_x_type clipflag_mag_x;

   typedef uint8_t _clipflag_mag_y_type;
  _clipflag_mag_y_type clipflag_mag_y;

   typedef uint8_t _clipflag_mag_z_type;
  _clipflag_mag_z_type clipflag_mag_z;

   typedef uint8_t _clipping_indication_type;
  _clipping_indication_type clipping_indication;

   typedef uint8_t _syncin_marker_type;
  _syncin_marker_type syncin_marker;

   typedef uint8_t _syncout_marker_type;
  _syncout_marker_type syncout_marker;

   typedef uint8_t _filter_mode_type;
  _filter_mode_type filter_mode;

   typedef uint8_t _have_gnss_time_pulse_type;
  _have_gnss_time_pulse_type have_gnss_time_pulse;

   typedef uint8_t _rtk_status_type;
  _rtk_status_type rtk_status;





  typedef boost::shared_ptr< ::xsens_mti_driver::XsStatusWord_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::xsens_mti_driver::XsStatusWord_<ContainerAllocator> const> ConstPtr;

}; // struct XsStatusWord_

typedef ::xsens_mti_driver::XsStatusWord_<std::allocator<void> > XsStatusWord;

typedef boost::shared_ptr< ::xsens_mti_driver::XsStatusWord > XsStatusWordPtr;
typedef boost::shared_ptr< ::xsens_mti_driver::XsStatusWord const> XsStatusWordConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::xsens_mti_driver::XsStatusWord_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::xsens_mti_driver::XsStatusWord_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::xsens_mti_driver::XsStatusWord_<ContainerAllocator1> & lhs, const ::xsens_mti_driver::XsStatusWord_<ContainerAllocator2> & rhs)
{
  return lhs.selftest == rhs.selftest &&
    lhs.filter_valid == rhs.filter_valid &&
    lhs.gnss_fix == rhs.gnss_fix &&
    lhs.no_rotation_update_status == rhs.no_rotation_update_status &&
    lhs.representative_motion == rhs.representative_motion &&
    lhs.clock_bias_estimation == rhs.clock_bias_estimation &&
    lhs.clipflag_acc_x == rhs.clipflag_acc_x &&
    lhs.clipflag_acc_y == rhs.clipflag_acc_y &&
    lhs.clipflag_acc_z == rhs.clipflag_acc_z &&
    lhs.clipflag_gyr_x == rhs.clipflag_gyr_x &&
    lhs.clipflag_gyr_y == rhs.clipflag_gyr_y &&
    lhs.clipflag_gyr_z == rhs.clipflag_gyr_z &&
    lhs.clipflag_mag_x == rhs.clipflag_mag_x &&
    lhs.clipflag_mag_y == rhs.clipflag_mag_y &&
    lhs.clipflag_mag_z == rhs.clipflag_mag_z &&
    lhs.clipping_indication == rhs.clipping_indication &&
    lhs.syncin_marker == rhs.syncin_marker &&
    lhs.syncout_marker == rhs.syncout_marker &&
    lhs.filter_mode == rhs.filter_mode &&
    lhs.have_gnss_time_pulse == rhs.have_gnss_time_pulse &&
    lhs.rtk_status == rhs.rtk_status;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::xsens_mti_driver::XsStatusWord_<ContainerAllocator1> & lhs, const ::xsens_mti_driver::XsStatusWord_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace xsens_mti_driver

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::xsens_mti_driver::XsStatusWord_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::xsens_mti_driver::XsStatusWord_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::xsens_mti_driver::XsStatusWord_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::xsens_mti_driver::XsStatusWord_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::xsens_mti_driver::XsStatusWord_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::xsens_mti_driver::XsStatusWord_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::xsens_mti_driver::XsStatusWord_<ContainerAllocator> >
{
  static const char* value()
  {
    return "dad684e003fb0f5d7e08711072d64f83";
  }

  static const char* value(const ::xsens_mti_driver::XsStatusWord_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xdad684e003fb0f5dULL;
  static const uint64_t static_value2 = 0x7e08711072d64f83ULL;
};

template<class ContainerAllocator>
struct DataType< ::xsens_mti_driver::XsStatusWord_<ContainerAllocator> >
{
  static const char* value()
  {
    return "xsens_mti_driver/XsStatusWord";
  }

  static const char* value(const ::xsens_mti_driver::XsStatusWord_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::xsens_mti_driver::XsStatusWord_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# Define the custom XsStatusWord message\n"
"bool selftest\n"
"bool filter_valid\n"
"bool gnss_fix\n"
"uint8 no_rotation_update_status ##0: not running, 2: aborted, 3:running\n"
"bool representative_motion\n"
"bool clock_bias_estimation\n"
"#bool reserved1\n"
"bool clipflag_acc_x\n"
"bool clipflag_acc_y\n"
"bool clipflag_acc_z\n"
"bool clipflag_gyr_x\n"
"bool clipflag_gyr_y\n"
"bool clipflag_gyr_z\n"
"bool clipflag_mag_x\n"
"bool clipflag_mag_y\n"
"bool clipflag_mag_z\n"
"#uint8 reserved2\n"
"bool clipping_indication\n"
"#bool reserved3\n"
"bool syncin_marker\n"
"bool syncout_marker\n"
"uint8 filter_mode ##0: Without GNSS, 1: Coasting, 3: With GNSS\n"
"bool have_gnss_time_pulse\n"
"uint8 rtk_status ##0: No RTK, 1: RTK Floating, 2: RTK Fix\n"
"#uint8 reserved4\n"
"\n"
"########################\n"
"####ref to MT Low Level Protocol Communication: https://mtidocs.xsens.com/messages\n"
"####1) Bit 0: Selftest, This flag indicates if the MT passed the self-test according to eMTS(electronic Motion Tracker Specification).\n"
"####2) Bit 1: Filter Valid, This flag indicates if input into the orientation filter is reliable and / or complete.\n"
"####3) Bit 2: GNSS fix, This flag indicates if the GNSS unit has a proper fix. \n"
"####4) Bit 3:4: NoRotationUpdate Status, This flag indicates the status of the no rotation update procedure in the filter after the SetNoRotation message has been sent. 11: Running with no rotation assumption; 10: Rotation detected, no gyro bias estimation (sticky); 00: Estimation complete, no errors.\n"
"####5) Bit 5: Representative Motion (RepMo), Indicates if the MTi is in In-run Compass Calibration Representative Mode\n"
"####6) Bit 6: Clock Bias Estimation (ClockSync), Indicates that the Clock Bias Estimation synchronization feature is active\n"
"####7) Bit 7: Reserved, Reserved for future use\n"
"####8) Bit 8: Clipflag Acc X, If set, an out of range acceleration on the X axis is detected\n"
"####9) Bit 9: Clipflag Acc Y, If set, an out of range acceleration on the Y axis is detected\n"
"####10) Bit 10: Clipflag Acc Z, If set, an out of range acceleration on the Z axis is detected\n"
"####11) Bit 11: Clipflag Gyr X, If set, an out of range angular velocity on the X axis is detected\n"
"####12) Bit 12: Clipflag Gyr Y, If set, an out of range angular velocity on the Y axis is detected\n"
"####13) Bit 13: Clipflag Gyr Z, If set, an out of range angular velocity on the Z axis is detected\n"
"####14) Bit 14: Clipflag Mag X, If set, an out of range magnetic field on the X axis is detected\n"
"####15) Bit 15: Clipflag Mag Y, If set, an out of range magnetic field on the Y axis is detected\n"
"####16) Bit 16: Clipflag Mag Z, If set, an out of range magnetic field on the Z axis is detected\n"
"####17) Bit 17:18, Reserved, Reserved for future use\n"
"####18) Bit 19, Clipping Indication, This flag indicates going out of range of one of the sensors (it is set when one or more bits from 8:16 are set)\n"
"####19) Bit 20,  Reserved, Reserved for future use\n"
"####20) Bit 21, SyncIn Marker, When a SyncIn is detected, this bit will rise to 1. \n"
"####21) Bit 22, SyncOut Marker, When SyncOut is active, this bit will rise to 1.\n"
"####22) Bit 23:25, Filter Mode, Indicates Filter Mode, currently only available for GNSS/INS devices:000: Without GNSS (filter profile is in VRU mode); 001: Coasting mode (GNSS has been lost <60 sec ago);011: With GNSS (default mode)\n"
"####23) Bit 26, HaveGnssTimePulse, Indicates that the 1PPS GNSS time pulse is present\n"
"####24) 27:28, RtkStatus, Indicates the availability and status of RTK: 00: No RTK; 01: RTK floating; 10: RTK fixed\n"
"####25) 29:31, Reserved, Reserved for future use\n"
;
  }

  static const char* value(const ::xsens_mti_driver::XsStatusWord_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::xsens_mti_driver::XsStatusWord_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.selftest);
      stream.next(m.filter_valid);
      stream.next(m.gnss_fix);
      stream.next(m.no_rotation_update_status);
      stream.next(m.representative_motion);
      stream.next(m.clock_bias_estimation);
      stream.next(m.clipflag_acc_x);
      stream.next(m.clipflag_acc_y);
      stream.next(m.clipflag_acc_z);
      stream.next(m.clipflag_gyr_x);
      stream.next(m.clipflag_gyr_y);
      stream.next(m.clipflag_gyr_z);
      stream.next(m.clipflag_mag_x);
      stream.next(m.clipflag_mag_y);
      stream.next(m.clipflag_mag_z);
      stream.next(m.clipping_indication);
      stream.next(m.syncin_marker);
      stream.next(m.syncout_marker);
      stream.next(m.filter_mode);
      stream.next(m.have_gnss_time_pulse);
      stream.next(m.rtk_status);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct XsStatusWord_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::xsens_mti_driver::XsStatusWord_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::xsens_mti_driver::XsStatusWord_<ContainerAllocator>& v)
  {
    s << indent << "selftest: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.selftest);
    s << indent << "filter_valid: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.filter_valid);
    s << indent << "gnss_fix: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.gnss_fix);
    s << indent << "no_rotation_update_status: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.no_rotation_update_status);
    s << indent << "representative_motion: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.representative_motion);
    s << indent << "clock_bias_estimation: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.clock_bias_estimation);
    s << indent << "clipflag_acc_x: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.clipflag_acc_x);
    s << indent << "clipflag_acc_y: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.clipflag_acc_y);
    s << indent << "clipflag_acc_z: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.clipflag_acc_z);
    s << indent << "clipflag_gyr_x: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.clipflag_gyr_x);
    s << indent << "clipflag_gyr_y: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.clipflag_gyr_y);
    s << indent << "clipflag_gyr_z: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.clipflag_gyr_z);
    s << indent << "clipflag_mag_x: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.clipflag_mag_x);
    s << indent << "clipflag_mag_y: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.clipflag_mag_y);
    s << indent << "clipflag_mag_z: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.clipflag_mag_z);
    s << indent << "clipping_indication: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.clipping_indication);
    s << indent << "syncin_marker: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.syncin_marker);
    s << indent << "syncout_marker: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.syncout_marker);
    s << indent << "filter_mode: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.filter_mode);
    s << indent << "have_gnss_time_pulse: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.have_gnss_time_pulse);
    s << indent << "rtk_status: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.rtk_status);
  }
};

} // namespace message_operations
} // namespace ros

#endif // XSENS_MTI_DRIVER_MESSAGE_XSSTATUSWORD_H