// Generated by gencpp from file bwi_perception/ButtonDetectionResponse.msg
// DO NOT EDIT!


#ifndef BWI_PERCEPTION_MESSAGE_BUTTONDETECTIONRESPONSE_H
#define BWI_PERCEPTION_MESSAGE_BUTTONDETECTIONRESPONSE_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <sensor_msgs/PointCloud2.h>

namespace bwi_perception
{
template <class ContainerAllocator>
struct ButtonDetectionResponse_
{
  typedef ButtonDetectionResponse_<ContainerAllocator> Type;

  ButtonDetectionResponse_()
    : button_found(false)
    , cloud_button()  {
    }
  ButtonDetectionResponse_(const ContainerAllocator& _alloc)
    : button_found(false)
    , cloud_button(_alloc)  {
  (void)_alloc;
    }



   typedef uint8_t _button_found_type;
  _button_found_type button_found;

   typedef  ::sensor_msgs::PointCloud2_<ContainerAllocator>  _cloud_button_type;
  _cloud_button_type cloud_button;





  typedef boost::shared_ptr< ::bwi_perception::ButtonDetectionResponse_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::bwi_perception::ButtonDetectionResponse_<ContainerAllocator> const> ConstPtr;

}; // struct ButtonDetectionResponse_

typedef ::bwi_perception::ButtonDetectionResponse_<std::allocator<void> > ButtonDetectionResponse;

typedef boost::shared_ptr< ::bwi_perception::ButtonDetectionResponse > ButtonDetectionResponsePtr;
typedef boost::shared_ptr< ::bwi_perception::ButtonDetectionResponse const> ButtonDetectionResponseConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::bwi_perception::ButtonDetectionResponse_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::bwi_perception::ButtonDetectionResponse_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::bwi_perception::ButtonDetectionResponse_<ContainerAllocator1> & lhs, const ::bwi_perception::ButtonDetectionResponse_<ContainerAllocator2> & rhs)
{
  return lhs.button_found == rhs.button_found &&
    lhs.cloud_button == rhs.cloud_button;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::bwi_perception::ButtonDetectionResponse_<ContainerAllocator1> & lhs, const ::bwi_perception::ButtonDetectionResponse_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace bwi_perception

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::bwi_perception::ButtonDetectionResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::bwi_perception::ButtonDetectionResponse_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::bwi_perception::ButtonDetectionResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::bwi_perception::ButtonDetectionResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::bwi_perception::ButtonDetectionResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::bwi_perception::ButtonDetectionResponse_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::bwi_perception::ButtonDetectionResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "db92d35083261fda0bc93a2e246a3490";
  }

  static const char* value(const ::bwi_perception::ButtonDetectionResponse_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xdb92d35083261fdaULL;
  static const uint64_t static_value2 = 0x0bc93a2e246a3490ULL;
};

template<class ContainerAllocator>
struct DataType< ::bwi_perception::ButtonDetectionResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "bwi_perception/ButtonDetectionResponse";
  }

  static const char* value(const ::bwi_perception::ButtonDetectionResponse_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::bwi_perception::ButtonDetectionResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "bool button_found\n"
"sensor_msgs/PointCloud2 cloud_button\n"
"\n"
"\n"
"================================================================================\n"
"MSG: sensor_msgs/PointCloud2\n"
"# This message holds a collection of N-dimensional points, which may\n"
"# contain additional information such as normals, intensity, etc. The\n"
"# point data is stored as a binary blob, its layout described by the\n"
"# contents of the \"fields\" array.\n"
"\n"
"# The point cloud data may be organized 2d (image-like) or 1d\n"
"# (unordered). Point clouds organized as 2d images may be produced by\n"
"# camera depth sensors such as stereo or time-of-flight.\n"
"\n"
"# Time of sensor data acquisition, and the coordinate frame ID (for 3d\n"
"# points).\n"
"Header header\n"
"\n"
"# 2D structure of the point cloud. If the cloud is unordered, height is\n"
"# 1 and width is the length of the point cloud.\n"
"uint32 height\n"
"uint32 width\n"
"\n"
"# Describes the channels and their layout in the binary data blob.\n"
"PointField[] fields\n"
"\n"
"bool    is_bigendian # Is this data bigendian?\n"
"uint32  point_step   # Length of a point in bytes\n"
"uint32  row_step     # Length of a row in bytes\n"
"uint8[] data         # Actual point data, size is (row_step*height)\n"
"\n"
"bool is_dense        # True if there are no invalid points\n"
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
"MSG: sensor_msgs/PointField\n"
"# This message holds the description of one point entry in the\n"
"# PointCloud2 message format.\n"
"uint8 INT8    = 1\n"
"uint8 UINT8   = 2\n"
"uint8 INT16   = 3\n"
"uint8 UINT16  = 4\n"
"uint8 INT32   = 5\n"
"uint8 UINT32  = 6\n"
"uint8 FLOAT32 = 7\n"
"uint8 FLOAT64 = 8\n"
"\n"
"string name      # Name of field\n"
"uint32 offset    # Offset from start of point struct\n"
"uint8  datatype  # Datatype enumeration, see above\n"
"uint32 count     # How many elements in the field\n"
;
  }

  static const char* value(const ::bwi_perception::ButtonDetectionResponse_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::bwi_perception::ButtonDetectionResponse_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.button_found);
      stream.next(m.cloud_button);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct ButtonDetectionResponse_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::bwi_perception::ButtonDetectionResponse_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::bwi_perception::ButtonDetectionResponse_<ContainerAllocator>& v)
  {
    s << indent << "button_found: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.button_found);
    s << indent << "cloud_button: ";
    s << std::endl;
    Printer< ::sensor_msgs::PointCloud2_<ContainerAllocator> >::stream(s, indent + "  ", v.cloud_button);
  }
};

} // namespace message_operations
} // namespace ros

#endif // BWI_PERCEPTION_MESSAGE_BUTTONDETECTIONRESPONSE_H
