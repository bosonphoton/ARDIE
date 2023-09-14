// Generated by gencpp from file bwi_msgs/NextLocationResponse.msg
// DO NOT EDIT!


#ifndef BWI_MSGS_MESSAGE_NEXTLOCATIONRESPONSE_H
#define BWI_MSGS_MESSAGE_NEXTLOCATIONRESPONSE_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace bwi_msgs
{
template <class ContainerAllocator>
struct NextLocationResponse_
{
  typedef NextLocationResponse_<ContainerAllocator> Type;

  NextLocationResponse_()
    : success(false)
    , locationName()  {
    }
  NextLocationResponse_(const ContainerAllocator& _alloc)
    : success(false)
    , locationName(_alloc)  {
  (void)_alloc;
    }



   typedef uint8_t _success_type;
  _success_type success;

   typedef std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>> _locationName_type;
  _locationName_type locationName;





  typedef boost::shared_ptr< ::bwi_msgs::NextLocationResponse_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::bwi_msgs::NextLocationResponse_<ContainerAllocator> const> ConstPtr;

}; // struct NextLocationResponse_

typedef ::bwi_msgs::NextLocationResponse_<std::allocator<void> > NextLocationResponse;

typedef boost::shared_ptr< ::bwi_msgs::NextLocationResponse > NextLocationResponsePtr;
typedef boost::shared_ptr< ::bwi_msgs::NextLocationResponse const> NextLocationResponseConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::bwi_msgs::NextLocationResponse_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::bwi_msgs::NextLocationResponse_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::bwi_msgs::NextLocationResponse_<ContainerAllocator1> & lhs, const ::bwi_msgs::NextLocationResponse_<ContainerAllocator2> & rhs)
{
  return lhs.success == rhs.success &&
    lhs.locationName == rhs.locationName;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::bwi_msgs::NextLocationResponse_<ContainerAllocator1> & lhs, const ::bwi_msgs::NextLocationResponse_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace bwi_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::bwi_msgs::NextLocationResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::bwi_msgs::NextLocationResponse_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::bwi_msgs::NextLocationResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::bwi_msgs::NextLocationResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::bwi_msgs::NextLocationResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::bwi_msgs::NextLocationResponse_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::bwi_msgs::NextLocationResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "7f666469cc7c83a848e9c8c747e8937f";
  }

  static const char* value(const ::bwi_msgs::NextLocationResponse_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x7f666469cc7c83a8ULL;
  static const uint64_t static_value2 = 0x48e9c8c747e8937fULL;
};

template<class ContainerAllocator>
struct DataType< ::bwi_msgs::NextLocationResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "bwi_msgs/NextLocationResponse";
  }

  static const char* value(const ::bwi_msgs::NextLocationResponse_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::bwi_msgs::NextLocationResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "bool success\n"
"string locationName\n"
"\n"
"\n"
;
  }

  static const char* value(const ::bwi_msgs::NextLocationResponse_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::bwi_msgs::NextLocationResponse_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.success);
      stream.next(m.locationName);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct NextLocationResponse_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::bwi_msgs::NextLocationResponse_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::bwi_msgs::NextLocationResponse_<ContainerAllocator>& v)
  {
    s << indent << "success: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.success);
    s << indent << "locationName: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>>>::stream(s, indent + "  ", v.locationName);
  }
};

} // namespace message_operations
} // namespace ros

#endif // BWI_MSGS_MESSAGE_NEXTLOCATIONRESPONSE_H
