// Generated by gencpp from file bwi_perception/GetPCDRequest.msg
// DO NOT EDIT!


#ifndef BWI_PERCEPTION_MESSAGE_GETPCDREQUEST_H
#define BWI_PERCEPTION_MESSAGE_GETPCDREQUEST_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace bwi_perception
{
template <class ContainerAllocator>
struct GetPCDRequest_
{
  typedef GetPCDRequest_<ContainerAllocator> Type;

  GetPCDRequest_()
    : generalImageFilePath()  {
    }
  GetPCDRequest_(const ContainerAllocator& _alloc)
    : generalImageFilePath(_alloc)  {
  (void)_alloc;
    }



   typedef std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>> _generalImageFilePath_type;
  _generalImageFilePath_type generalImageFilePath;





  typedef boost::shared_ptr< ::bwi_perception::GetPCDRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::bwi_perception::GetPCDRequest_<ContainerAllocator> const> ConstPtr;

}; // struct GetPCDRequest_

typedef ::bwi_perception::GetPCDRequest_<std::allocator<void> > GetPCDRequest;

typedef boost::shared_ptr< ::bwi_perception::GetPCDRequest > GetPCDRequestPtr;
typedef boost::shared_ptr< ::bwi_perception::GetPCDRequest const> GetPCDRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::bwi_perception::GetPCDRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::bwi_perception::GetPCDRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::bwi_perception::GetPCDRequest_<ContainerAllocator1> & lhs, const ::bwi_perception::GetPCDRequest_<ContainerAllocator2> & rhs)
{
  return lhs.generalImageFilePath == rhs.generalImageFilePath;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::bwi_perception::GetPCDRequest_<ContainerAllocator1> & lhs, const ::bwi_perception::GetPCDRequest_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace bwi_perception

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::bwi_perception::GetPCDRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::bwi_perception::GetPCDRequest_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::bwi_perception::GetPCDRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::bwi_perception::GetPCDRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::bwi_perception::GetPCDRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::bwi_perception::GetPCDRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::bwi_perception::GetPCDRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "cdca2b60c53a4d63fd5769c161d1c480";
  }

  static const char* value(const ::bwi_perception::GetPCDRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xcdca2b60c53a4d63ULL;
  static const uint64_t static_value2 = 0xfd5769c161d1c480ULL;
};

template<class ContainerAllocator>
struct DataType< ::bwi_perception::GetPCDRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "bwi_perception/GetPCDRequest";
  }

  static const char* value(const ::bwi_perception::GetPCDRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::bwi_perception::GetPCDRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "string generalImageFilePath\n"
;
  }

  static const char* value(const ::bwi_perception::GetPCDRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::bwi_perception::GetPCDRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.generalImageFilePath);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct GetPCDRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::bwi_perception::GetPCDRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::bwi_perception::GetPCDRequest_<ContainerAllocator>& v)
  {
    s << indent << "generalImageFilePath: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>>>::stream(s, indent + "  ", v.generalImageFilePath);
  }
};

} // namespace message_operations
} // namespace ros

#endif // BWI_PERCEPTION_MESSAGE_GETPCDREQUEST_H
