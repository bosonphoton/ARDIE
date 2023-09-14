// Generated by gencpp from file plan_execution/CurrentStateQueryRequest.msg
// DO NOT EDIT!


#ifndef PLAN_EXECUTION_MESSAGE_CURRENTSTATEQUERYREQUEST_H
#define PLAN_EXECUTION_MESSAGE_CURRENTSTATEQUERYREQUEST_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <plan_execution/AspRule.h>

namespace plan_execution
{
template <class ContainerAllocator>
struct CurrentStateQueryRequest_
{
  typedef CurrentStateQueryRequest_<ContainerAllocator> Type;

  CurrentStateQueryRequest_()
    : query()  {
    }
  CurrentStateQueryRequest_(const ContainerAllocator& _alloc)
    : query(_alloc)  {
  (void)_alloc;
    }



   typedef std::vector< ::plan_execution::AspRule_<ContainerAllocator> , typename std::allocator_traits<ContainerAllocator>::template rebind_alloc< ::plan_execution::AspRule_<ContainerAllocator> >> _query_type;
  _query_type query;





  typedef boost::shared_ptr< ::plan_execution::CurrentStateQueryRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::plan_execution::CurrentStateQueryRequest_<ContainerAllocator> const> ConstPtr;

}; // struct CurrentStateQueryRequest_

typedef ::plan_execution::CurrentStateQueryRequest_<std::allocator<void> > CurrentStateQueryRequest;

typedef boost::shared_ptr< ::plan_execution::CurrentStateQueryRequest > CurrentStateQueryRequestPtr;
typedef boost::shared_ptr< ::plan_execution::CurrentStateQueryRequest const> CurrentStateQueryRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::plan_execution::CurrentStateQueryRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::plan_execution::CurrentStateQueryRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::plan_execution::CurrentStateQueryRequest_<ContainerAllocator1> & lhs, const ::plan_execution::CurrentStateQueryRequest_<ContainerAllocator2> & rhs)
{
  return lhs.query == rhs.query;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::plan_execution::CurrentStateQueryRequest_<ContainerAllocator1> & lhs, const ::plan_execution::CurrentStateQueryRequest_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace plan_execution

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::plan_execution::CurrentStateQueryRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::plan_execution::CurrentStateQueryRequest_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::plan_execution::CurrentStateQueryRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::plan_execution::CurrentStateQueryRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::plan_execution::CurrentStateQueryRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::plan_execution::CurrentStateQueryRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::plan_execution::CurrentStateQueryRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "a20201e158d8a211d764fdce4a0d1095";
  }

  static const char* value(const ::plan_execution::CurrentStateQueryRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xa20201e158d8a211ULL;
  static const uint64_t static_value2 = 0xd764fdce4a0d1095ULL;
};

template<class ContainerAllocator>
struct DataType< ::plan_execution::CurrentStateQueryRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "plan_execution/CurrentStateQueryRequest";
  }

  static const char* value(const ::plan_execution::CurrentStateQueryRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::plan_execution::CurrentStateQueryRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "AspRule[] query\n"
"\n"
"================================================================================\n"
"MSG: plan_execution/AspRule\n"
"AspFluent[] head\n"
"AspFluent[] body\n"
"\n"
"================================================================================\n"
"MSG: plan_execution/AspFluent\n"
"string name\n"
"string[] variables\n"
"uint32 timeStep\n"
;
  }

  static const char* value(const ::plan_execution::CurrentStateQueryRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::plan_execution::CurrentStateQueryRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.query);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct CurrentStateQueryRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::plan_execution::CurrentStateQueryRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::plan_execution::CurrentStateQueryRequest_<ContainerAllocator>& v)
  {
    s << indent << "query[]" << std::endl;
    for (size_t i = 0; i < v.query.size(); ++i)
    {
      s << indent << "  query[" << i << "]: ";
      s << std::endl;
      s << indent;
      Printer< ::plan_execution::AspRule_<ContainerAllocator> >::stream(s, indent + "    ", v.query[i]);
    }
  }
};

} // namespace message_operations
} // namespace ros

#endif // PLAN_EXECUTION_MESSAGE_CURRENTSTATEQUERYREQUEST_H