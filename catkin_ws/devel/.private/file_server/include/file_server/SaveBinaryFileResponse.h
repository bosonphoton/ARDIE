// Generated by gencpp from file file_server/SaveBinaryFileResponse.msg
// DO NOT EDIT!


#ifndef FILE_SERVER_MESSAGE_SAVEBINARYFILERESPONSE_H
#define FILE_SERVER_MESSAGE_SAVEBINARYFILERESPONSE_H


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
struct SaveBinaryFileResponse_
{
  typedef SaveBinaryFileResponse_<ContainerAllocator> Type;

  SaveBinaryFileResponse_()
    : name()  {
    }
  SaveBinaryFileResponse_(const ContainerAllocator& _alloc)
    : name(_alloc)  {
  (void)_alloc;
    }



   typedef std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>> _name_type;
  _name_type name;





  typedef boost::shared_ptr< ::file_server::SaveBinaryFileResponse_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::file_server::SaveBinaryFileResponse_<ContainerAllocator> const> ConstPtr;

}; // struct SaveBinaryFileResponse_

typedef ::file_server::SaveBinaryFileResponse_<std::allocator<void> > SaveBinaryFileResponse;

typedef boost::shared_ptr< ::file_server::SaveBinaryFileResponse > SaveBinaryFileResponsePtr;
typedef boost::shared_ptr< ::file_server::SaveBinaryFileResponse const> SaveBinaryFileResponseConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::file_server::SaveBinaryFileResponse_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::file_server::SaveBinaryFileResponse_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::file_server::SaveBinaryFileResponse_<ContainerAllocator1> & lhs, const ::file_server::SaveBinaryFileResponse_<ContainerAllocator2> & rhs)
{
  return lhs.name == rhs.name;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::file_server::SaveBinaryFileResponse_<ContainerAllocator1> & lhs, const ::file_server::SaveBinaryFileResponse_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace file_server

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::file_server::SaveBinaryFileResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::file_server::SaveBinaryFileResponse_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::file_server::SaveBinaryFileResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::file_server::SaveBinaryFileResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::file_server::SaveBinaryFileResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::file_server::SaveBinaryFileResponse_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::file_server::SaveBinaryFileResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "c1f3d28f1b044c871e6eff2e9fc3c667";
  }

  static const char* value(const ::file_server::SaveBinaryFileResponse_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xc1f3d28f1b044c87ULL;
  static const uint64_t static_value2 = 0x1e6eff2e9fc3c667ULL;
};

template<class ContainerAllocator>
struct DataType< ::file_server::SaveBinaryFileResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "file_server/SaveBinaryFileResponse";
  }

  static const char* value(const ::file_server::SaveBinaryFileResponse_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::file_server::SaveBinaryFileResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "string name\n"
"\n"
;
  }

  static const char* value(const ::file_server::SaveBinaryFileResponse_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::file_server::SaveBinaryFileResponse_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.name);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct SaveBinaryFileResponse_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::file_server::SaveBinaryFileResponse_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::file_server::SaveBinaryFileResponse_<ContainerAllocator>& v)
  {
    s << indent << "name: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>>>::stream(s, indent + "  ", v.name);
  }
};

} // namespace message_operations
} // namespace ros

#endif // FILE_SERVER_MESSAGE_SAVEBINARYFILERESPONSE_H
