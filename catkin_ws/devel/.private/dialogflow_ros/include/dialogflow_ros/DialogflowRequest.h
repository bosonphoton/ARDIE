// Generated by gencpp from file dialogflow_ros/DialogflowRequest.msg
// DO NOT EDIT!


#ifndef DIALOGFLOW_ROS_MESSAGE_DIALOGFLOWREQUEST_H
#define DIALOGFLOW_ROS_MESSAGE_DIALOGFLOWREQUEST_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <dialogflow_ros/DialogflowContext.h>

namespace dialogflow_ros
{
template <class ContainerAllocator>
struct DialogflowRequest_
{
  typedef DialogflowRequest_<ContainerAllocator> Type;

  DialogflowRequest_()
    : query_text()
    , contexts()  {
    }
  DialogflowRequest_(const ContainerAllocator& _alloc)
    : query_text(_alloc)
    , contexts(_alloc)  {
  (void)_alloc;
    }



   typedef std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>> _query_text_type;
  _query_text_type query_text;

   typedef std::vector< ::dialogflow_ros::DialogflowContext_<ContainerAllocator> , typename std::allocator_traits<ContainerAllocator>::template rebind_alloc< ::dialogflow_ros::DialogflowContext_<ContainerAllocator> >> _contexts_type;
  _contexts_type contexts;





  typedef boost::shared_ptr< ::dialogflow_ros::DialogflowRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::dialogflow_ros::DialogflowRequest_<ContainerAllocator> const> ConstPtr;

}; // struct DialogflowRequest_

typedef ::dialogflow_ros::DialogflowRequest_<std::allocator<void> > DialogflowRequest;

typedef boost::shared_ptr< ::dialogflow_ros::DialogflowRequest > DialogflowRequestPtr;
typedef boost::shared_ptr< ::dialogflow_ros::DialogflowRequest const> DialogflowRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::dialogflow_ros::DialogflowRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::dialogflow_ros::DialogflowRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::dialogflow_ros::DialogflowRequest_<ContainerAllocator1> & lhs, const ::dialogflow_ros::DialogflowRequest_<ContainerAllocator2> & rhs)
{
  return lhs.query_text == rhs.query_text &&
    lhs.contexts == rhs.contexts;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::dialogflow_ros::DialogflowRequest_<ContainerAllocator1> & lhs, const ::dialogflow_ros::DialogflowRequest_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace dialogflow_ros

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::dialogflow_ros::DialogflowRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::dialogflow_ros::DialogflowRequest_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::dialogflow_ros::DialogflowRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::dialogflow_ros::DialogflowRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::dialogflow_ros::DialogflowRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::dialogflow_ros::DialogflowRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::dialogflow_ros::DialogflowRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "4e7c6d1e65dc67cfb4606c28582ad7bf";
  }

  static const char* value(const ::dialogflow_ros::DialogflowRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x4e7c6d1e65dc67cfULL;
  static const uint64_t static_value2 = 0xb4606c28582ad7bfULL;
};

template<class ContainerAllocator>
struct DataType< ::dialogflow_ros::DialogflowRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "dialogflow_ros/DialogflowRequest";
  }

  static const char* value(const ::dialogflow_ros::DialogflowRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::dialogflow_ros::DialogflowRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "string query_text\n"
"DialogflowContext[] contexts\n"
"================================================================================\n"
"MSG: dialogflow_ros/DialogflowContext\n"
"string name\n"
"int32 lifespan_count\n"
"DialogflowParameter[] parameters\n"
"================================================================================\n"
"MSG: dialogflow_ros/DialogflowParameter\n"
"string param_name\n"
"string[] value\n"
;
  }

  static const char* value(const ::dialogflow_ros::DialogflowRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::dialogflow_ros::DialogflowRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.query_text);
      stream.next(m.contexts);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct DialogflowRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::dialogflow_ros::DialogflowRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::dialogflow_ros::DialogflowRequest_<ContainerAllocator>& v)
  {
    s << indent << "query_text: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>>>::stream(s, indent + "  ", v.query_text);
    s << indent << "contexts[]" << std::endl;
    for (size_t i = 0; i < v.contexts.size(); ++i)
    {
      s << indent << "  contexts[" << i << "]: ";
      s << std::endl;
      s << indent;
      Printer< ::dialogflow_ros::DialogflowContext_<ContainerAllocator> >::stream(s, indent + "    ", v.contexts[i]);
    }
  }
};

} // namespace message_operations
} // namespace ros

#endif // DIALOGFLOW_ROS_MESSAGE_DIALOGFLOWREQUEST_H
