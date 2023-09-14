// Generated by gencpp from file bwi_msgs/UpdateObjectResponse.msg
// DO NOT EDIT!


#ifndef BWI_MSGS_MESSAGE_UPDATEOBJECTRESPONSE_H
#define BWI_MSGS_MESSAGE_UPDATEOBJECTRESPONSE_H


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
struct UpdateObjectResponse_
{
  typedef UpdateObjectResponse_<ContainerAllocator> Type;

  UpdateObjectResponse_()
    : success(false)  {
    }
  UpdateObjectResponse_(const ContainerAllocator& _alloc)
    : success(false)  {
  (void)_alloc;
    }



   typedef uint8_t _success_type;
  _success_type success;





  typedef boost::shared_ptr< ::bwi_msgs::UpdateObjectResponse_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::bwi_msgs::UpdateObjectResponse_<ContainerAllocator> const> ConstPtr;

}; // struct UpdateObjectResponse_

typedef ::bwi_msgs::UpdateObjectResponse_<std::allocator<void> > UpdateObjectResponse;

typedef boost::shared_ptr< ::bwi_msgs::UpdateObjectResponse > UpdateObjectResponsePtr;
typedef boost::shared_ptr< ::bwi_msgs::UpdateObjectResponse const> UpdateObjectResponseConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::bwi_msgs::UpdateObjectResponse_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::bwi_msgs::UpdateObjectResponse_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::bwi_msgs::UpdateObjectResponse_<ContainerAllocator1> & lhs, const ::bwi_msgs::UpdateObjectResponse_<ContainerAllocator2> & rhs)
{
  return lhs.success == rhs.success;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::bwi_msgs::UpdateObjectResponse_<ContainerAllocator1> & lhs, const ::bwi_msgs::UpdateObjectResponse_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace bwi_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::bwi_msgs::UpdateObjectResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::bwi_msgs::UpdateObjectResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::bwi_msgs::UpdateObjectResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::bwi_msgs::UpdateObjectResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::bwi_msgs::UpdateObjectResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::bwi_msgs::UpdateObjectResponse_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::bwi_msgs::UpdateObjectResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "358e233cde0c8a8bcfea4ce193f8fc15";
  }

  static const char* value(const ::bwi_msgs::UpdateObjectResponse_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x358e233cde0c8a8bULL;
  static const uint64_t static_value2 = 0xcfea4ce193f8fc15ULL;
};

template<class ContainerAllocator>
struct DataType< ::bwi_msgs::UpdateObjectResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "bwi_msgs/UpdateObjectResponse";
  }

  static const char* value(const ::bwi_msgs::UpdateObjectResponse_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::bwi_msgs::UpdateObjectResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "bool success\n"
;
  }

  static const char* value(const ::bwi_msgs::UpdateObjectResponse_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::bwi_msgs::UpdateObjectResponse_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.success);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct UpdateObjectResponse_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::bwi_msgs::UpdateObjectResponse_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::bwi_msgs::UpdateObjectResponse_<ContainerAllocator>& v)
  {
    s << indent << "success: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.success);
  }
};

} // namespace message_operations
} // namespace ros

#endif // BWI_MSGS_MESSAGE_UPDATEOBJECTRESPONSE_H