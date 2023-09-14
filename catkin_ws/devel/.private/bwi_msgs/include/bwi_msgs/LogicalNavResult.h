// Generated by gencpp from file bwi_msgs/LogicalNavResult.msg
// DO NOT EDIT!


#ifndef BWI_MSGS_MESSAGE_LOGICALNAVRESULT_H
#define BWI_MSGS_MESSAGE_LOGICALNAVRESULT_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <bwi_msgs/LogicalNavigationState.h>

namespace bwi_msgs
{
template <class ContainerAllocator>
struct LogicalNavResult_
{
  typedef LogicalNavResult_<ContainerAllocator> Type;

  LogicalNavResult_()
    : success(false)
    , observations()  {
    }
  LogicalNavResult_(const ContainerAllocator& _alloc)
    : success(false)
    , observations(_alloc)  {
  (void)_alloc;
    }



   typedef uint8_t _success_type;
  _success_type success;

   typedef  ::bwi_msgs::LogicalNavigationState_<ContainerAllocator>  _observations_type;
  _observations_type observations;





  typedef boost::shared_ptr< ::bwi_msgs::LogicalNavResult_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::bwi_msgs::LogicalNavResult_<ContainerAllocator> const> ConstPtr;

}; // struct LogicalNavResult_

typedef ::bwi_msgs::LogicalNavResult_<std::allocator<void> > LogicalNavResult;

typedef boost::shared_ptr< ::bwi_msgs::LogicalNavResult > LogicalNavResultPtr;
typedef boost::shared_ptr< ::bwi_msgs::LogicalNavResult const> LogicalNavResultConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::bwi_msgs::LogicalNavResult_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::bwi_msgs::LogicalNavResult_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::bwi_msgs::LogicalNavResult_<ContainerAllocator1> & lhs, const ::bwi_msgs::LogicalNavResult_<ContainerAllocator2> & rhs)
{
  return lhs.success == rhs.success &&
    lhs.observations == rhs.observations;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::bwi_msgs::LogicalNavResult_<ContainerAllocator1> & lhs, const ::bwi_msgs::LogicalNavResult_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace bwi_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::bwi_msgs::LogicalNavResult_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::bwi_msgs::LogicalNavResult_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::bwi_msgs::LogicalNavResult_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::bwi_msgs::LogicalNavResult_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::bwi_msgs::LogicalNavResult_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::bwi_msgs::LogicalNavResult_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::bwi_msgs::LogicalNavResult_<ContainerAllocator> >
{
  static const char* value()
  {
    return "3fc464e1bc364c43cb74429554f6935d";
  }

  static const char* value(const ::bwi_msgs::LogicalNavResult_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x3fc464e1bc364c43ULL;
  static const uint64_t static_value2 = 0xcb74429554f6935dULL;
};

template<class ContainerAllocator>
struct DataType< ::bwi_msgs::LogicalNavResult_<ContainerAllocator> >
{
  static const char* value()
  {
    return "bwi_msgs/LogicalNavResult";
  }

  static const char* value(const ::bwi_msgs::LogicalNavResult_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::bwi_msgs::LogicalNavResult_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======\n"
"bool success\n"
"LogicalNavigationState observations\n"
"\n"
"================================================================================\n"
"MSG: bwi_msgs/LogicalNavigationState\n"
"string room\n"
"string[] nearby_locations\n"
"bool[] facing\n"
;
  }

  static const char* value(const ::bwi_msgs::LogicalNavResult_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::bwi_msgs::LogicalNavResult_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.success);
      stream.next(m.observations);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct LogicalNavResult_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::bwi_msgs::LogicalNavResult_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::bwi_msgs::LogicalNavResult_<ContainerAllocator>& v)
  {
    s << indent << "success: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.success);
    s << indent << "observations: ";
    s << std::endl;
    Printer< ::bwi_msgs::LogicalNavigationState_<ContainerAllocator> >::stream(s, indent + "  ", v.observations);
  }
};

} // namespace message_operations
} // namespace ros

#endif // BWI_MSGS_MESSAGE_LOGICALNAVRESULT_H
