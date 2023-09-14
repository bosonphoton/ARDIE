// Generated by gencpp from file bwi_msgs/ResolveChangeFloorResponse.msg
// DO NOT EDIT!


#ifndef BWI_MSGS_MESSAGE_RESOLVECHANGEFLOORRESPONSE_H
#define BWI_MSGS_MESSAGE_RESOLVECHANGEFLOORRESPONSE_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <geometry_msgs/PoseWithCovarianceStamped.h>

namespace bwi_msgs
{
template <class ContainerAllocator>
struct ResolveChangeFloorResponse_
{
  typedef ResolveChangeFloorResponse_<ContainerAllocator> Type;

  ResolveChangeFloorResponse_()
    : floor_name()
    , pose()
    , success(false)
    , error_message()  {
    }
  ResolveChangeFloorResponse_(const ContainerAllocator& _alloc)
    : floor_name(_alloc)
    , pose(_alloc)
    , success(false)
    , error_message(_alloc)  {
  (void)_alloc;
    }



   typedef std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>> _floor_name_type;
  _floor_name_type floor_name;

   typedef  ::geometry_msgs::PoseWithCovarianceStamped_<ContainerAllocator>  _pose_type;
  _pose_type pose;

   typedef uint8_t _success_type;
  _success_type success;

   typedef std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>> _error_message_type;
  _error_message_type error_message;





  typedef boost::shared_ptr< ::bwi_msgs::ResolveChangeFloorResponse_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::bwi_msgs::ResolveChangeFloorResponse_<ContainerAllocator> const> ConstPtr;

}; // struct ResolveChangeFloorResponse_

typedef ::bwi_msgs::ResolveChangeFloorResponse_<std::allocator<void> > ResolveChangeFloorResponse;

typedef boost::shared_ptr< ::bwi_msgs::ResolveChangeFloorResponse > ResolveChangeFloorResponsePtr;
typedef boost::shared_ptr< ::bwi_msgs::ResolveChangeFloorResponse const> ResolveChangeFloorResponseConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::bwi_msgs::ResolveChangeFloorResponse_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::bwi_msgs::ResolveChangeFloorResponse_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::bwi_msgs::ResolveChangeFloorResponse_<ContainerAllocator1> & lhs, const ::bwi_msgs::ResolveChangeFloorResponse_<ContainerAllocator2> & rhs)
{
  return lhs.floor_name == rhs.floor_name &&
    lhs.pose == rhs.pose &&
    lhs.success == rhs.success &&
    lhs.error_message == rhs.error_message;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::bwi_msgs::ResolveChangeFloorResponse_<ContainerAllocator1> & lhs, const ::bwi_msgs::ResolveChangeFloorResponse_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace bwi_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::bwi_msgs::ResolveChangeFloorResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::bwi_msgs::ResolveChangeFloorResponse_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::bwi_msgs::ResolveChangeFloorResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::bwi_msgs::ResolveChangeFloorResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::bwi_msgs::ResolveChangeFloorResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::bwi_msgs::ResolveChangeFloorResponse_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::bwi_msgs::ResolveChangeFloorResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "fd748bf9eec6b1b18bfa80fe9bc3674a";
  }

  static const char* value(const ::bwi_msgs::ResolveChangeFloorResponse_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xfd748bf9eec6b1b1ULL;
  static const uint64_t static_value2 = 0x8bfa80fe9bc3674aULL;
};

template<class ContainerAllocator>
struct DataType< ::bwi_msgs::ResolveChangeFloorResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "bwi_msgs/ResolveChangeFloorResponse";
  }

  static const char* value(const ::bwi_msgs::ResolveChangeFloorResponse_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::bwi_msgs::ResolveChangeFloorResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "string floor_name\n"
"geometry_msgs/PoseWithCovarianceStamped pose\n"
"bool success\n"
"string error_message\n"
"\n"
"\n"
"================================================================================\n"
"MSG: geometry_msgs/PoseWithCovarianceStamped\n"
"# This expresses an estimated pose with a reference coordinate frame and timestamp\n"
"\n"
"Header header\n"
"PoseWithCovariance pose\n"
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
"MSG: geometry_msgs/PoseWithCovariance\n"
"# This represents a pose in free space with uncertainty.\n"
"\n"
"Pose pose\n"
"\n"
"# Row-major representation of the 6x6 covariance matrix\n"
"# The orientation parameters use a fixed-axis representation.\n"
"# In order, the parameters are:\n"
"# (x, y, z, rotation about X axis, rotation about Y axis, rotation about Z axis)\n"
"float64[36] covariance\n"
"\n"
"================================================================================\n"
"MSG: geometry_msgs/Pose\n"
"# A representation of pose in free space, composed of position and orientation. \n"
"Point position\n"
"Quaternion orientation\n"
"\n"
"================================================================================\n"
"MSG: geometry_msgs/Point\n"
"# This contains the position of a point in free space\n"
"float64 x\n"
"float64 y\n"
"float64 z\n"
"\n"
"================================================================================\n"
"MSG: geometry_msgs/Quaternion\n"
"# This represents an orientation in free space in quaternion form.\n"
"\n"
"float64 x\n"
"float64 y\n"
"float64 z\n"
"float64 w\n"
;
  }

  static const char* value(const ::bwi_msgs::ResolveChangeFloorResponse_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::bwi_msgs::ResolveChangeFloorResponse_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.floor_name);
      stream.next(m.pose);
      stream.next(m.success);
      stream.next(m.error_message);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct ResolveChangeFloorResponse_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::bwi_msgs::ResolveChangeFloorResponse_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::bwi_msgs::ResolveChangeFloorResponse_<ContainerAllocator>& v)
  {
    s << indent << "floor_name: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>>>::stream(s, indent + "  ", v.floor_name);
    s << indent << "pose: ";
    s << std::endl;
    Printer< ::geometry_msgs::PoseWithCovarianceStamped_<ContainerAllocator> >::stream(s, indent + "  ", v.pose);
    s << indent << "success: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.success);
    s << indent << "error_message: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>>>::stream(s, indent + "  ", v.error_message);
  }
};

} // namespace message_operations
} // namespace ros

#endif // BWI_MSGS_MESSAGE_RESOLVECHANGEFLOORRESPONSE_H