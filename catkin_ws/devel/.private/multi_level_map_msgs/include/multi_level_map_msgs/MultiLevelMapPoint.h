// Generated by gencpp from file multi_level_map_msgs/MultiLevelMapPoint.msg
// DO NOT EDIT!


#ifndef MULTI_LEVEL_MAP_MSGS_MESSAGE_MULTILEVELMAPPOINT_H
#define MULTI_LEVEL_MAP_MSGS_MESSAGE_MULTILEVELMAPPOINT_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <geometry_msgs/Point.h>

namespace multi_level_map_msgs
{
template <class ContainerAllocator>
struct MultiLevelMapPoint_
{
  typedef MultiLevelMapPoint_<ContainerAllocator> Type;

  MultiLevelMapPoint_()
    : level_id()
    , point()  {
    }
  MultiLevelMapPoint_(const ContainerAllocator& _alloc)
    : level_id(_alloc)
    , point(_alloc)  {
  (void)_alloc;
    }



   typedef std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>> _level_id_type;
  _level_id_type level_id;

   typedef  ::geometry_msgs::Point_<ContainerAllocator>  _point_type;
  _point_type point;





  typedef boost::shared_ptr< ::multi_level_map_msgs::MultiLevelMapPoint_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::multi_level_map_msgs::MultiLevelMapPoint_<ContainerAllocator> const> ConstPtr;

}; // struct MultiLevelMapPoint_

typedef ::multi_level_map_msgs::MultiLevelMapPoint_<std::allocator<void> > MultiLevelMapPoint;

typedef boost::shared_ptr< ::multi_level_map_msgs::MultiLevelMapPoint > MultiLevelMapPointPtr;
typedef boost::shared_ptr< ::multi_level_map_msgs::MultiLevelMapPoint const> MultiLevelMapPointConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::multi_level_map_msgs::MultiLevelMapPoint_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::multi_level_map_msgs::MultiLevelMapPoint_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::multi_level_map_msgs::MultiLevelMapPoint_<ContainerAllocator1> & lhs, const ::multi_level_map_msgs::MultiLevelMapPoint_<ContainerAllocator2> & rhs)
{
  return lhs.level_id == rhs.level_id &&
    lhs.point == rhs.point;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::multi_level_map_msgs::MultiLevelMapPoint_<ContainerAllocator1> & lhs, const ::multi_level_map_msgs::MultiLevelMapPoint_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace multi_level_map_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::multi_level_map_msgs::MultiLevelMapPoint_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::multi_level_map_msgs::MultiLevelMapPoint_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::multi_level_map_msgs::MultiLevelMapPoint_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::multi_level_map_msgs::MultiLevelMapPoint_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::multi_level_map_msgs::MultiLevelMapPoint_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::multi_level_map_msgs::MultiLevelMapPoint_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::multi_level_map_msgs::MultiLevelMapPoint_<ContainerAllocator> >
{
  static const char* value()
  {
    return "c23d10c5d5876c43aeb09f6ec5564702";
  }

  static const char* value(const ::multi_level_map_msgs::MultiLevelMapPoint_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xc23d10c5d5876c43ULL;
  static const uint64_t static_value2 = 0xaeb09f6ec5564702ULL;
};

template<class ContainerAllocator>
struct DataType< ::multi_level_map_msgs::MultiLevelMapPoint_<ContainerAllocator> >
{
  static const char* value()
  {
    return "multi_level_map_msgs/MultiLevelMapPoint";
  }

  static const char* value(const ::multi_level_map_msgs::MultiLevelMapPoint_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::multi_level_map_msgs::MultiLevelMapPoint_<ContainerAllocator> >
{
  static const char* value()
  {
    return "string level_id\n"
"geometry_msgs/Point point\n"
"\n"
"================================================================================\n"
"MSG: geometry_msgs/Point\n"
"# This contains the position of a point in free space\n"
"float64 x\n"
"float64 y\n"
"float64 z\n"
;
  }

  static const char* value(const ::multi_level_map_msgs::MultiLevelMapPoint_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::multi_level_map_msgs::MultiLevelMapPoint_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.level_id);
      stream.next(m.point);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct MultiLevelMapPoint_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::multi_level_map_msgs::MultiLevelMapPoint_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::multi_level_map_msgs::MultiLevelMapPoint_<ContainerAllocator>& v)
  {
    s << indent << "level_id: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>>>::stream(s, indent + "  ", v.level_id);
    s << indent << "point: ";
    s << std::endl;
    Printer< ::geometry_msgs::Point_<ContainerAllocator> >::stream(s, indent + "  ", v.point);
  }
};

} // namespace message_operations
} // namespace ros

#endif // MULTI_LEVEL_MAP_MSGS_MESSAGE_MULTILEVELMAPPOINT_H
