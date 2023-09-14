// Generated by gencpp from file file_server/GetBinaryFileResponse.msg
// DO NOT EDIT!


#ifndef FILE_SERVER_MESSAGE_GETBINARYFILERESPONSE_H
#define FILE_SERVER_MESSAGE_GETBINARYFILERESPONSE_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace file_server
{
template <class ContainerAllocator>
struct GetBinaryFileResponse_
{
  typedef GetBinaryFileResponse_<ContainerAllocator> Type;

  GetBinaryFileResponse_()
    : value()  {
    }
  GetBinaryFileResponse_(const ContainerAllocator& _alloc)
    : value(_alloc)  {
  (void)_alloc;
    }



   typedef std::vector<uint8_t, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<uint8_t>> _value_type;
  _value_type value;





  typedef boost::shared_ptr< ::file_server::GetBinaryFileResponse_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::file_server::GetBinaryFileResponse_<ContainerAllocator> const> ConstPtr;

}; // struct GetBinaryFileResponse_

typedef ::file_server::GetBinaryFileResponse_<std::allocator<void> > GetBinaryFileResponse;

typedef boost::shared_ptr< ::file_server::GetBinaryFileResponse > GetBinaryFileResponsePtr;
typedef boost::shared_ptr< ::file_server::GetBinaryFileResponse const> GetBinaryFileResponseConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::file_server::GetBinaryFileResponse_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::file_server::GetBinaryFileResponse_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::file_server::GetBinaryFileResponse_<ContainerAllocator1> & lhs, const ::file_server::GetBinaryFileResponse_<ContainerAllocator2> & rhs)
{
  return lhs.value == rhs.value;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::file_server::GetBinaryFileResponse_<ContainerAllocator1> & lhs, const ::file_server::GetBinaryFileResponse_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace file_server

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::file_server::GetBinaryFileResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::file_server::GetBinaryFileResponse_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::file_server::GetBinaryFileResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::file_server::GetBinaryFileResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::file_server::GetBinaryFileResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::file_server::GetBinaryFileResponse_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::file_server::GetBinaryFileResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "72e657d2b2f20ddbb39a6191a8a83513";
  }

  static const char* value(const ::file_server::GetBinaryFileResponse_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x72e657d2b2f20ddbULL;
  static const uint64_t static_value2 = 0xb39a6191a8a83513ULL;
};

template<class ContainerAllocator>
struct DataType< ::file_server::GetBinaryFileResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "file_server/GetBinaryFileResponse";
  }

  static const char* value(const ::file_server::GetBinaryFileResponse_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::file_server::GetBinaryFileResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "uint8[] value\n"
"\n"
"\n"
;
  }

  static const char* value(const ::file_server::GetBinaryFileResponse_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::file_server::GetBinaryFileResponse_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.value);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct GetBinaryFileResponse_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::file_server::GetBinaryFileResponse_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::file_server::GetBinaryFileResponse_<ContainerAllocator>& v)
  {
    s << indent << "value[]" << std::endl;
    for (size_t i = 0; i < v.value.size(); ++i)
    {
      s << indent << "  value[" << i << "]: ";
      Printer<uint8_t>::stream(s, indent + "  ", v.value[i]);
    }
  }
};

} // namespace message_operations
} // namespace ros

#endif // FILE_SERVER_MESSAGE_GETBINARYFILERESPONSE_H
