// Generated by gencpp from file bwi_perception/ExtractTabletopSceneResponse.msg
// DO NOT EDIT!


#ifndef BWI_PERCEPTION_MESSAGE_EXTRACTTABLETOPSCENERESPONSE_H
#define BWI_PERCEPTION_MESSAGE_EXTRACTTABLETOPSCENERESPONSE_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <sensor_msgs/PointCloud2.h>
#include <sensor_msgs/PointCloud2.h>

namespace bwi_perception
{
template <class ContainerAllocator>
struct ExtractTabletopSceneResponse_
{
  typedef ExtractTabletopSceneResponse_<ContainerAllocator> Type;

  ExtractTabletopSceneResponse_()
    : is_plane_found(false)
    , cloud_plane()
    , cloud_plane_coef()
    , cloud_clusters()  {
      cloud_plane_coef.assign(0.0);
  }
  ExtractTabletopSceneResponse_(const ContainerAllocator& _alloc)
    : is_plane_found(false)
    , cloud_plane(_alloc)
    , cloud_plane_coef()
    , cloud_clusters(_alloc)  {
  (void)_alloc;
      cloud_plane_coef.assign(0.0);
  }



   typedef uint8_t _is_plane_found_type;
  _is_plane_found_type is_plane_found;

   typedef  ::sensor_msgs::PointCloud2_<ContainerAllocator>  _cloud_plane_type;
  _cloud_plane_type cloud_plane;

   typedef boost::array<float, 4>  _cloud_plane_coef_type;
  _cloud_plane_coef_type cloud_plane_coef;

   typedef std::vector< ::sensor_msgs::PointCloud2_<ContainerAllocator> , typename std::allocator_traits<ContainerAllocator>::template rebind_alloc< ::sensor_msgs::PointCloud2_<ContainerAllocator> >> _cloud_clusters_type;
  _cloud_clusters_type cloud_clusters;





  typedef boost::shared_ptr< ::bwi_perception::ExtractTabletopSceneResponse_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::bwi_perception::ExtractTabletopSceneResponse_<ContainerAllocator> const> ConstPtr;

}; // struct ExtractTabletopSceneResponse_

typedef ::bwi_perception::ExtractTabletopSceneResponse_<std::allocator<void> > ExtractTabletopSceneResponse;

typedef boost::shared_ptr< ::bwi_perception::ExtractTabletopSceneResponse > ExtractTabletopSceneResponsePtr;
typedef boost::shared_ptr< ::bwi_perception::ExtractTabletopSceneResponse const> ExtractTabletopSceneResponseConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::bwi_perception::ExtractTabletopSceneResponse_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::bwi_perception::ExtractTabletopSceneResponse_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::bwi_perception::ExtractTabletopSceneResponse_<ContainerAllocator1> & lhs, const ::bwi_perception::ExtractTabletopSceneResponse_<ContainerAllocator2> & rhs)
{
  return lhs.is_plane_found == rhs.is_plane_found &&
    lhs.cloud_plane == rhs.cloud_plane &&
    lhs.cloud_plane_coef == rhs.cloud_plane_coef &&
    lhs.cloud_clusters == rhs.cloud_clusters;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::bwi_perception::ExtractTabletopSceneResponse_<ContainerAllocator1> & lhs, const ::bwi_perception::ExtractTabletopSceneResponse_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace bwi_perception

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::bwi_perception::ExtractTabletopSceneResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::bwi_perception::ExtractTabletopSceneResponse_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::bwi_perception::ExtractTabletopSceneResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::bwi_perception::ExtractTabletopSceneResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::bwi_perception::ExtractTabletopSceneResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::bwi_perception::ExtractTabletopSceneResponse_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::bwi_perception::ExtractTabletopSceneResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "63fb1944266fc7c39efe9e6ada4376ff";
  }

  static const char* value(const ::bwi_perception::ExtractTabletopSceneResponse_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x63fb1944266fc7c3ULL;
  static const uint64_t static_value2 = 0x9efe9e6ada4376ffULL;
};

template<class ContainerAllocator>
struct DataType< ::bwi_perception::ExtractTabletopSceneResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "bwi_perception/ExtractTabletopSceneResponse";
  }

  static const char* value(const ::bwi_perception::ExtractTabletopSceneResponse_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::bwi_perception::ExtractTabletopSceneResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "bool is_plane_found\n"
"sensor_msgs/PointCloud2 cloud_plane\n"
"float32[4] cloud_plane_coef\n"
"sensor_msgs/PointCloud2[] cloud_clusters\n"
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

  static const char* value(const ::bwi_perception::ExtractTabletopSceneResponse_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::bwi_perception::ExtractTabletopSceneResponse_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.is_plane_found);
      stream.next(m.cloud_plane);
      stream.next(m.cloud_plane_coef);
      stream.next(m.cloud_clusters);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct ExtractTabletopSceneResponse_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::bwi_perception::ExtractTabletopSceneResponse_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::bwi_perception::ExtractTabletopSceneResponse_<ContainerAllocator>& v)
  {
    s << indent << "is_plane_found: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.is_plane_found);
    s << indent << "cloud_plane: ";
    s << std::endl;
    Printer< ::sensor_msgs::PointCloud2_<ContainerAllocator> >::stream(s, indent + "  ", v.cloud_plane);
    s << indent << "cloud_plane_coef[]" << std::endl;
    for (size_t i = 0; i < v.cloud_plane_coef.size(); ++i)
    {
      s << indent << "  cloud_plane_coef[" << i << "]: ";
      Printer<float>::stream(s, indent + "  ", v.cloud_plane_coef[i]);
    }
    s << indent << "cloud_clusters[]" << std::endl;
    for (size_t i = 0; i < v.cloud_clusters.size(); ++i)
    {
      s << indent << "  cloud_clusters[" << i << "]: ";
      s << std::endl;
      s << indent;
      Printer< ::sensor_msgs::PointCloud2_<ContainerAllocator> >::stream(s, indent + "    ", v.cloud_clusters[i]);
    }
  }
};

} // namespace message_operations
} // namespace ros

#endif // BWI_PERCEPTION_MESSAGE_EXTRACTTABLETOPSCENERESPONSE_H