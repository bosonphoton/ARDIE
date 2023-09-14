// Generated by gencpp from file plan_execution/UpdateFluentsRequest.msg
// DO NOT EDIT!


#ifndef PLAN_EXECUTION_MESSAGE_UPDATEFLUENTSREQUEST_H
#define PLAN_EXECUTION_MESSAGE_UPDATEFLUENTSREQUEST_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <plan_execution/AspFluent.h>

namespace plan_execution
{
template <class ContainerAllocator>
struct UpdateFluentsRequest_
{
  typedef UpdateFluentsRequest_<ContainerAllocator> Type;

  UpdateFluentsRequest_()
    : fluents()  {
    }
  UpdateFluentsRequest_(const ContainerAllocator& _alloc)
    : fluents(_alloc)  {
  (void)_alloc;
    }



   typedef std::vector< ::plan_execution::AspFluent_<ContainerAllocator> , typename std::allocator_traits<ContainerAllocator>::template rebind_alloc< ::plan_execution::AspFluent_<ContainerAllocator> >> _fluents_type;
  _fluents_type fluents;





  typedef boost::shared_ptr< ::plan_execution::UpdateFluentsRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::plan_execution::UpdateFluentsRequest_<ContainerAllocator> const> ConstPtr;

}; // struct UpdateFluentsRequest_

typedef ::plan_execution::UpdateFluentsRequest_<std::allocator<void> > UpdateFluentsRequest;

typedef boost::shared_ptr< ::plan_execution::UpdateFluentsRequest > UpdateFluentsRequestPtr;
typedef boost::shared_ptr< ::plan_execution::UpdateFluentsRequest const> UpdateFluentsRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::plan_execution::UpdateFluentsRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::plan_execution::UpdateFluentsRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::plan_execution::UpdateFluentsRequest_<ContainerAllocator1> & lhs, const ::plan_execution::UpdateFluentsRequest_<ContainerAllocator2> & rhs)
{
  return lhs.fluents == rhs.fluents;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::plan_execution::UpdateFluentsRequest_<ContainerAllocator1> & lhs, const ::plan_execution::UpdateFluentsRequest_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace plan_execution

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::plan_execution::UpdateFluentsRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::plan_execution::UpdateFluentsRequest_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::plan_execution::UpdateFluentsRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::plan_execution::UpdateFluentsRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::plan_execution::UpdateFluentsRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::plan_execution::UpdateFluentsRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::plan_execution::UpdateFluentsRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "1f4c26fc97494fb1cf77da318e7c1d52";
  }

  static const char* value(const ::plan_execution::UpdateFluentsRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x1f4c26fc97494fb1ULL;
  static const uint64_t static_value2 = 0xcf77da318e7c1d52ULL;
};

template<class ContainerAllocator>
struct DataType< ::plan_execution::UpdateFluentsRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "plan_execution/UpdateFluentsRequest";
  }

  static const char* value(const ::plan_execution::UpdateFluentsRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::plan_execution::UpdateFluentsRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "AspFluent[] fluents\n"
"\n"
"================================================================================\n"
"MSG: plan_execution/AspFluent\n"
"string name\n"
"string[] variables\n"
"uint32 timeStep\n"
;
  }

  static const char* value(const ::plan_execution::UpdateFluentsRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::plan_execution::UpdateFluentsRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.fluents);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct UpdateFluentsRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::plan_execution::UpdateFluentsRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::plan_execution::UpdateFluentsRequest_<ContainerAllocator>& v)
  {
    s << indent << "fluents[]" << std::endl;
    for (size_t i = 0; i < v.fluents.size(); ++i)
    {
      s << indent << "  fluents[" << i << "]: ";
      s << std::endl;
      s << indent;
      Printer< ::plan_execution::AspFluent_<ContainerAllocator> >::stream(s, indent + "    ", v.fluents[i]);
    }
  }
};

} // namespace message_operations
} // namespace ros

#endif // PLAN_EXECUTION_MESSAGE_UPDATEFLUENTSREQUEST_H
