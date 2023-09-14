// Generated by gencpp from file bwi_perception/ProcessVisionRequest.msg
// DO NOT EDIT!


#ifndef BWI_PERCEPTION_MESSAGE_PROCESSVISIONREQUEST_H
#define BWI_PERCEPTION_MESSAGE_PROCESSVISIONREQUEST_H


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
struct ProcessVisionRequest_
{
  typedef ProcessVisionRequest_<ContainerAllocator> Type;

  ProcessVisionRequest_()
    : start(0)
    , generalImageFilePath()
    , generalDepthImagePath()  {
    }
  ProcessVisionRequest_(const ContainerAllocator& _alloc)
    : start(0)
    , generalImageFilePath(_alloc)
    , generalDepthImagePath(_alloc)  {
  (void)_alloc;
    }



   typedef int64_t _start_type;
  _start_type start;

   typedef std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>> _generalImageFilePath_type;
  _generalImageFilePath_type generalImageFilePath;

   typedef std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>> _generalDepthImagePath_type;
  _generalDepthImagePath_type generalDepthImagePath;





  typedef boost::shared_ptr< ::bwi_perception::ProcessVisionRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::bwi_perception::ProcessVisionRequest_<ContainerAllocator> const> ConstPtr;

}; // struct ProcessVisionRequest_

typedef ::bwi_perception::ProcessVisionRequest_<std::allocator<void> > ProcessVisionRequest;

typedef boost::shared_ptr< ::bwi_perception::ProcessVisionRequest > ProcessVisionRequestPtr;
typedef boost::shared_ptr< ::bwi_perception::ProcessVisionRequest const> ProcessVisionRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::bwi_perception::ProcessVisionRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::bwi_perception::ProcessVisionRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::bwi_perception::ProcessVisionRequest_<ContainerAllocator1> & lhs, const ::bwi_perception::ProcessVisionRequest_<ContainerAllocator2> & rhs)
{
  return lhs.start == rhs.start &&
    lhs.generalImageFilePath == rhs.generalImageFilePath &&
    lhs.generalDepthImagePath == rhs.generalDepthImagePath;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::bwi_perception::ProcessVisionRequest_<ContainerAllocator1> & lhs, const ::bwi_perception::ProcessVisionRequest_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace bwi_perception

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::bwi_perception::ProcessVisionRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::bwi_perception::ProcessVisionRequest_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::bwi_perception::ProcessVisionRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::bwi_perception::ProcessVisionRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::bwi_perception::ProcessVisionRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::bwi_perception::ProcessVisionRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::bwi_perception::ProcessVisionRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "65867062b0ed837813950bcb7007d189";
  }

  static const char* value(const ::bwi_perception::ProcessVisionRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x65867062b0ed8378ULL;
  static const uint64_t static_value2 = 0x13950bcb7007d189ULL;
};

template<class ContainerAllocator>
struct DataType< ::bwi_perception::ProcessVisionRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "bwi_perception/ProcessVisionRequest";
  }

  static const char* value(const ::bwi_perception::ProcessVisionRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::bwi_perception::ProcessVisionRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "int64 start\n"
"string generalImageFilePath\n"
"string generalDepthImagePath\n"
;
  }

  static const char* value(const ::bwi_perception::ProcessVisionRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::bwi_perception::ProcessVisionRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.start);
      stream.next(m.generalImageFilePath);
      stream.next(m.generalDepthImagePath);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct ProcessVisionRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::bwi_perception::ProcessVisionRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::bwi_perception::ProcessVisionRequest_<ContainerAllocator>& v)
  {
    s << indent << "start: ";
    Printer<int64_t>::stream(s, indent + "  ", v.start);
    s << indent << "generalImageFilePath: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>>>::stream(s, indent + "  ", v.generalImageFilePath);
    s << indent << "generalDepthImagePath: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>>>::stream(s, indent + "  ", v.generalDepthImagePath);
  }
};

} // namespace message_operations
} // namespace ros

#endif // BWI_PERCEPTION_MESSAGE_PROCESSVISIONREQUEST_H