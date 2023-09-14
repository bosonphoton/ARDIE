// Generated by gencpp from file bwi_perception/ButtonDetectionRequest.msg
// DO NOT EDIT!


#ifndef BWI_PERCEPTION_MESSAGE_BUTTONDETECTIONREQUEST_H
#define BWI_PERCEPTION_MESSAGE_BUTTONDETECTIONREQUEST_H


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
struct ButtonDetectionRequest_
{
  typedef ButtonDetectionRequest_<ContainerAllocator> Type;

  ButtonDetectionRequest_()
    {
    }
  ButtonDetectionRequest_(const ContainerAllocator& _alloc)
    {
  (void)_alloc;
    }







  typedef boost::shared_ptr< ::bwi_perception::ButtonDetectionRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::bwi_perception::ButtonDetectionRequest_<ContainerAllocator> const> ConstPtr;

}; // struct ButtonDetectionRequest_

typedef ::bwi_perception::ButtonDetectionRequest_<std::allocator<void> > ButtonDetectionRequest;

typedef boost::shared_ptr< ::bwi_perception::ButtonDetectionRequest > ButtonDetectionRequestPtr;
typedef boost::shared_ptr< ::bwi_perception::ButtonDetectionRequest const> ButtonDetectionRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::bwi_perception::ButtonDetectionRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::bwi_perception::ButtonDetectionRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}


} // namespace bwi_perception

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::bwi_perception::ButtonDetectionRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::bwi_perception::ButtonDetectionRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::bwi_perception::ButtonDetectionRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::bwi_perception::ButtonDetectionRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::bwi_perception::ButtonDetectionRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::bwi_perception::ButtonDetectionRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::bwi_perception::ButtonDetectionRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "d41d8cd98f00b204e9800998ecf8427e";
  }

  static const char* value(const ::bwi_perception::ButtonDetectionRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xd41d8cd98f00b204ULL;
  static const uint64_t static_value2 = 0xe9800998ecf8427eULL;
};

template<class ContainerAllocator>
struct DataType< ::bwi_perception::ButtonDetectionRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "bwi_perception/ButtonDetectionRequest";
  }

  static const char* value(const ::bwi_perception::ButtonDetectionRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::bwi_perception::ButtonDetectionRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "\n"
;
  }

  static const char* value(const ::bwi_perception::ButtonDetectionRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::bwi_perception::ButtonDetectionRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream&, T)
    {}

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct ButtonDetectionRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::bwi_perception::ButtonDetectionRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream&, const std::string&, const ::bwi_perception::ButtonDetectionRequest_<ContainerAllocator>&)
  {}
};

} // namespace message_operations
} // namespace ros

#endif // BWI_PERCEPTION_MESSAGE_BUTTONDETECTIONREQUEST_H