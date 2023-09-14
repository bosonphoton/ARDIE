// Generated by gencpp from file bwi_perception/DetectHorizontalPlanesResponse.msg
// DO NOT EDIT!


#ifndef BWI_PERCEPTION_MESSAGE_DETECTHORIZONTALPLANESRESPONSE_H
#define BWI_PERCEPTION_MESSAGE_DETECTHORIZONTALPLANESRESPONSE_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <sensor_msgs/PointCloud2.h>
#include <visualization_msgs/Marker.h>

namespace bwi_perception
{
template <class ContainerAllocator>
struct DetectHorizontalPlanesResponse_
{
  typedef DetectHorizontalPlanesResponse_<ContainerAllocator> Type;

  DetectHorizontalPlanesResponse_()
    : horizontal_planes()
    , horizontal_plane_coefs()
    , horizontal_plane_bounding_boxes()  {
    }
  DetectHorizontalPlanesResponse_(const ContainerAllocator& _alloc)
    : horizontal_planes(_alloc)
    , horizontal_plane_coefs(_alloc)
    , horizontal_plane_bounding_boxes(_alloc)  {
  (void)_alloc;
    }



   typedef std::vector< ::sensor_msgs::PointCloud2_<ContainerAllocator> , typename std::allocator_traits<ContainerAllocator>::template rebind_alloc< ::sensor_msgs::PointCloud2_<ContainerAllocator> >> _horizontal_planes_type;
  _horizontal_planes_type horizontal_planes;

   typedef std::vector<float, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<float>> _horizontal_plane_coefs_type;
  _horizontal_plane_coefs_type horizontal_plane_coefs;

   typedef std::vector< ::visualization_msgs::Marker_<ContainerAllocator> , typename std::allocator_traits<ContainerAllocator>::template rebind_alloc< ::visualization_msgs::Marker_<ContainerAllocator> >> _horizontal_plane_bounding_boxes_type;
  _horizontal_plane_bounding_boxes_type horizontal_plane_bounding_boxes;





  typedef boost::shared_ptr< ::bwi_perception::DetectHorizontalPlanesResponse_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::bwi_perception::DetectHorizontalPlanesResponse_<ContainerAllocator> const> ConstPtr;

}; // struct DetectHorizontalPlanesResponse_

typedef ::bwi_perception::DetectHorizontalPlanesResponse_<std::allocator<void> > DetectHorizontalPlanesResponse;

typedef boost::shared_ptr< ::bwi_perception::DetectHorizontalPlanesResponse > DetectHorizontalPlanesResponsePtr;
typedef boost::shared_ptr< ::bwi_perception::DetectHorizontalPlanesResponse const> DetectHorizontalPlanesResponseConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::bwi_perception::DetectHorizontalPlanesResponse_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::bwi_perception::DetectHorizontalPlanesResponse_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::bwi_perception::DetectHorizontalPlanesResponse_<ContainerAllocator1> & lhs, const ::bwi_perception::DetectHorizontalPlanesResponse_<ContainerAllocator2> & rhs)
{
  return lhs.horizontal_planes == rhs.horizontal_planes &&
    lhs.horizontal_plane_coefs == rhs.horizontal_plane_coefs &&
    lhs.horizontal_plane_bounding_boxes == rhs.horizontal_plane_bounding_boxes;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::bwi_perception::DetectHorizontalPlanesResponse_<ContainerAllocator1> & lhs, const ::bwi_perception::DetectHorizontalPlanesResponse_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace bwi_perception

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::bwi_perception::DetectHorizontalPlanesResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::bwi_perception::DetectHorizontalPlanesResponse_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::bwi_perception::DetectHorizontalPlanesResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::bwi_perception::DetectHorizontalPlanesResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::bwi_perception::DetectHorizontalPlanesResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::bwi_perception::DetectHorizontalPlanesResponse_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::bwi_perception::DetectHorizontalPlanesResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "cef300b2875581b5854da43f2d552a80";
  }

  static const char* value(const ::bwi_perception::DetectHorizontalPlanesResponse_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xcef300b2875581b5ULL;
  static const uint64_t static_value2 = 0x854da43f2d552a80ULL;
};

template<class ContainerAllocator>
struct DataType< ::bwi_perception::DetectHorizontalPlanesResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "bwi_perception/DetectHorizontalPlanesResponse";
  }

  static const char* value(const ::bwi_perception::DetectHorizontalPlanesResponse_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::bwi_perception::DetectHorizontalPlanesResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "sensor_msgs/PointCloud2[] horizontal_planes\n"
"float32[] horizontal_plane_coefs\n"
"visualization_msgs/Marker[] horizontal_plane_bounding_boxes\n"
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
"\n"
"================================================================================\n"
"MSG: visualization_msgs/Marker\n"
"# See http://www.ros.org/wiki/rviz/DisplayTypes/Marker and http://www.ros.org/wiki/rviz/Tutorials/Markers%3A%20Basic%20Shapes for more information on using this message with rviz\n"
"\n"
"uint8 ARROW=0\n"
"uint8 CUBE=1\n"
"uint8 SPHERE=2\n"
"uint8 CYLINDER=3\n"
"uint8 LINE_STRIP=4\n"
"uint8 LINE_LIST=5\n"
"uint8 CUBE_LIST=6\n"
"uint8 SPHERE_LIST=7\n"
"uint8 POINTS=8\n"
"uint8 TEXT_VIEW_FACING=9\n"
"uint8 MESH_RESOURCE=10\n"
"uint8 TRIANGLE_LIST=11\n"
"\n"
"uint8 ADD=0\n"
"uint8 MODIFY=0\n"
"uint8 DELETE=2\n"
"uint8 DELETEALL=3\n"
"\n"
"Header header                        # header for time/frame information\n"
"string ns                            # Namespace to place this object in... used in conjunction with id to create a unique name for the object\n"
"int32 id 		                         # object ID useful in conjunction with the namespace for manipulating and deleting the object later\n"
"int32 type 		                       # Type of object\n"
"int32 action 	                       # 0 add/modify an object, 1 (deprecated), 2 deletes an object, 3 deletes all objects\n"
"geometry_msgs/Pose pose                 # Pose of the object\n"
"geometry_msgs/Vector3 scale             # Scale of the object 1,1,1 means default (usually 1 meter square)\n"
"std_msgs/ColorRGBA color             # Color [0.0-1.0]\n"
"duration lifetime                    # How long the object should last before being automatically deleted.  0 means forever\n"
"bool frame_locked                    # If this marker should be frame-locked, i.e. retransformed into its frame every timestep\n"
"\n"
"#Only used if the type specified has some use for them (eg. POINTS, LINE_STRIP, ...)\n"
"geometry_msgs/Point[] points\n"
"#Only used if the type specified has some use for them (eg. POINTS, LINE_STRIP, ...)\n"
"#number of colors must either be 0 or equal to the number of points\n"
"#NOTE: alpha is not yet used\n"
"std_msgs/ColorRGBA[] colors\n"
"\n"
"# NOTE: only used for text markers\n"
"string text\n"
"\n"
"# NOTE: only used for MESH_RESOURCE markers\n"
"string mesh_resource\n"
"bool mesh_use_embedded_materials\n"
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
"\n"
"================================================================================\n"
"MSG: geometry_msgs/Vector3\n"
"# This represents a vector in free space. \n"
"# It is only meant to represent a direction. Therefore, it does not\n"
"# make sense to apply a translation to it (e.g., when applying a \n"
"# generic rigid transformation to a Vector3, tf2 will only apply the\n"
"# rotation). If you want your data to be translatable too, use the\n"
"# geometry_msgs/Point message instead.\n"
"\n"
"float64 x\n"
"float64 y\n"
"float64 z\n"
"================================================================================\n"
"MSG: std_msgs/ColorRGBA\n"
"float32 r\n"
"float32 g\n"
"float32 b\n"
"float32 a\n"
;
  }

  static const char* value(const ::bwi_perception::DetectHorizontalPlanesResponse_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::bwi_perception::DetectHorizontalPlanesResponse_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.horizontal_planes);
      stream.next(m.horizontal_plane_coefs);
      stream.next(m.horizontal_plane_bounding_boxes);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct DetectHorizontalPlanesResponse_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::bwi_perception::DetectHorizontalPlanesResponse_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::bwi_perception::DetectHorizontalPlanesResponse_<ContainerAllocator>& v)
  {
    s << indent << "horizontal_planes[]" << std::endl;
    for (size_t i = 0; i < v.horizontal_planes.size(); ++i)
    {
      s << indent << "  horizontal_planes[" << i << "]: ";
      s << std::endl;
      s << indent;
      Printer< ::sensor_msgs::PointCloud2_<ContainerAllocator> >::stream(s, indent + "    ", v.horizontal_planes[i]);
    }
    s << indent << "horizontal_plane_coefs[]" << std::endl;
    for (size_t i = 0; i < v.horizontal_plane_coefs.size(); ++i)
    {
      s << indent << "  horizontal_plane_coefs[" << i << "]: ";
      Printer<float>::stream(s, indent + "  ", v.horizontal_plane_coefs[i]);
    }
    s << indent << "horizontal_plane_bounding_boxes[]" << std::endl;
    for (size_t i = 0; i < v.horizontal_plane_bounding_boxes.size(); ++i)
    {
      s << indent << "  horizontal_plane_bounding_boxes[" << i << "]: ";
      s << std::endl;
      s << indent;
      Printer< ::visualization_msgs::Marker_<ContainerAllocator> >::stream(s, indent + "    ", v.horizontal_plane_bounding_boxes[i]);
    }
  }
};

} // namespace message_operations
} // namespace ros

#endif // BWI_PERCEPTION_MESSAGE_DETECTHORIZONTALPLANESRESPONSE_H
