// Generated by gencpp from file multi_level_map_msgs/LevelMetaData.msg
// DO NOT EDIT!


#ifndef MULTI_LEVEL_MAP_MSGS_MESSAGE_LEVELMETADATA_H
#define MULTI_LEVEL_MAP_MSGS_MESSAGE_LEVELMETADATA_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <nav_msgs/MapMetaData.h>

namespace multi_level_map_msgs
{
template <class ContainerAllocator>
struct LevelMetaData_
{
  typedef LevelMetaData_<ContainerAllocator> Type;

  LevelMetaData_()
    : level_id()
    , data_directory()
    , map_file()
    , info()  {
    }
  LevelMetaData_(const ContainerAllocator& _alloc)
    : level_id(_alloc)
    , data_directory(_alloc)
    , map_file(_alloc)
    , info(_alloc)  {
  (void)_alloc;
    }



   typedef std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>> _level_id_type;
  _level_id_type level_id;

   typedef std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>> _data_directory_type;
  _data_directory_type data_directory;

   typedef std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>> _map_file_type;
  _map_file_type map_file;

   typedef  ::nav_msgs::MapMetaData_<ContainerAllocator>  _info_type;
  _info_type info;





  typedef boost::shared_ptr< ::multi_level_map_msgs::LevelMetaData_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::multi_level_map_msgs::LevelMetaData_<ContainerAllocator> const> ConstPtr;

}; // struct LevelMetaData_

typedef ::multi_level_map_msgs::LevelMetaData_<std::allocator<void> > LevelMetaData;

typedef boost::shared_ptr< ::multi_level_map_msgs::LevelMetaData > LevelMetaDataPtr;
typedef boost::shared_ptr< ::multi_level_map_msgs::LevelMetaData const> LevelMetaDataConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::multi_level_map_msgs::LevelMetaData_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::multi_level_map_msgs::LevelMetaData_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::multi_level_map_msgs::LevelMetaData_<ContainerAllocator1> & lhs, const ::multi_level_map_msgs::LevelMetaData_<ContainerAllocator2> & rhs)
{
  return lhs.level_id == rhs.level_id &&
    lhs.data_directory == rhs.data_directory &&
    lhs.map_file == rhs.map_file &&
    lhs.info == rhs.info;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::multi_level_map_msgs::LevelMetaData_<ContainerAllocator1> & lhs, const ::multi_level_map_msgs::LevelMetaData_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace multi_level_map_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::multi_level_map_msgs::LevelMetaData_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::multi_level_map_msgs::LevelMetaData_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::multi_level_map_msgs::LevelMetaData_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::multi_level_map_msgs::LevelMetaData_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::multi_level_map_msgs::LevelMetaData_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::multi_level_map_msgs::LevelMetaData_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::multi_level_map_msgs::LevelMetaData_<ContainerAllocator> >
{
  static const char* value()
  {
    return "a9b9f2aeb1f506197c493af4a2fe197c";
  }

  static const char* value(const ::multi_level_map_msgs::LevelMetaData_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xa9b9f2aeb1f50619ULL;
  static const uint64_t static_value2 = 0x7c493af4a2fe197cULL;
};

template<class ContainerAllocator>
struct DataType< ::multi_level_map_msgs::LevelMetaData_<ContainerAllocator> >
{
  static const char* value()
  {
    return "multi_level_map_msgs/LevelMetaData";
  }

  static const char* value(const ::multi_level_map_msgs::LevelMetaData_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::multi_level_map_msgs::LevelMetaData_<ContainerAllocator> >
{
  static const char* value()
  {
    return "string level_id\n"
"string data_directory\n"
"string map_file\n"
"nav_msgs/MapMetaData info\n"
"\n"
"================================================================================\n"
"MSG: nav_msgs/MapMetaData\n"
"# This hold basic information about the characterists of the OccupancyGrid\n"
"\n"
"# The time at which the map was loaded\n"
"time map_load_time\n"
"# The map resolution [m/cell]\n"
"float32 resolution\n"
"# Map width [cells]\n"
"uint32 width\n"
"# Map height [cells]\n"
"uint32 height\n"
"# The origin of the map [m, m, rad].  This is the real-world pose of the\n"
"# cell (0,0) in the map.\n"
"geometry_msgs/Pose origin\n"
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

  static const char* value(const ::multi_level_map_msgs::LevelMetaData_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::multi_level_map_msgs::LevelMetaData_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.level_id);
      stream.next(m.data_directory);
      stream.next(m.map_file);
      stream.next(m.info);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct LevelMetaData_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::multi_level_map_msgs::LevelMetaData_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::multi_level_map_msgs::LevelMetaData_<ContainerAllocator>& v)
  {
    s << indent << "level_id: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>>>::stream(s, indent + "  ", v.level_id);
    s << indent << "data_directory: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>>>::stream(s, indent + "  ", v.data_directory);
    s << indent << "map_file: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>>>::stream(s, indent + "  ", v.map_file);
    s << indent << "info: ";
    s << std::endl;
    Printer< ::nav_msgs::MapMetaData_<ContainerAllocator> >::stream(s, indent + "  ", v.info);
  }
};

} // namespace message_operations
} // namespace ros

#endif // MULTI_LEVEL_MAP_MSGS_MESSAGE_LEVELMETADATA_H
