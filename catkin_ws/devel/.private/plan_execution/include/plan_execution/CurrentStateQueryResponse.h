// Generated by gencpp from file plan_execution/CurrentStateQueryResponse.msg
// DO NOT EDIT!


#ifndef PLAN_EXECUTION_MESSAGE_CURRENTSTATEQUERYRESPONSE_H
#define PLAN_EXECUTION_MESSAGE_CURRENTSTATEQUERYRESPONSE_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <plan_execution/AnswerSet.h>

namespace plan_execution
{
template <class ContainerAllocator>
struct CurrentStateQueryResponse_
{
  typedef CurrentStateQueryResponse_<ContainerAllocator> Type;

  CurrentStateQueryResponse_()
    : answer()  {
    }
  CurrentStateQueryResponse_(const ContainerAllocator& _alloc)
    : answer(_alloc)  {
  (void)_alloc;
    }



   typedef  ::plan_execution::AnswerSet_<ContainerAllocator>  _answer_type;
  _answer_type answer;





  typedef boost::shared_ptr< ::plan_execution::CurrentStateQueryResponse_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::plan_execution::CurrentStateQueryResponse_<ContainerAllocator> const> ConstPtr;

}; // struct CurrentStateQueryResponse_

typedef ::plan_execution::CurrentStateQueryResponse_<std::allocator<void> > CurrentStateQueryResponse;

typedef boost::shared_ptr< ::plan_execution::CurrentStateQueryResponse > CurrentStateQueryResponsePtr;
typedef boost::shared_ptr< ::plan_execution::CurrentStateQueryResponse const> CurrentStateQueryResponseConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::plan_execution::CurrentStateQueryResponse_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::plan_execution::CurrentStateQueryResponse_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::plan_execution::CurrentStateQueryResponse_<ContainerAllocator1> & lhs, const ::plan_execution::CurrentStateQueryResponse_<ContainerAllocator2> & rhs)
{
  return lhs.answer == rhs.answer;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::plan_execution::CurrentStateQueryResponse_<ContainerAllocator1> & lhs, const ::plan_execution::CurrentStateQueryResponse_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace plan_execution

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::plan_execution::CurrentStateQueryResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::plan_execution::CurrentStateQueryResponse_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::plan_execution::CurrentStateQueryResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::plan_execution::CurrentStateQueryResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::plan_execution::CurrentStateQueryResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::plan_execution::CurrentStateQueryResponse_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::plan_execution::CurrentStateQueryResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "ede65e7da70fc603627007f333530693";
  }

  static const char* value(const ::plan_execution::CurrentStateQueryResponse_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xede65e7da70fc603ULL;
  static const uint64_t static_value2 = 0x627007f333530693ULL;
};

template<class ContainerAllocator>
struct DataType< ::plan_execution::CurrentStateQueryResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "plan_execution/CurrentStateQueryResponse";
  }

  static const char* value(const ::plan_execution::CurrentStateQueryResponse_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::plan_execution::CurrentStateQueryResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "AnswerSet answer\n"
"\n"
"================================================================================\n"
"MSG: plan_execution/AnswerSet\n"
"AspFluent[] fluents\n"
"bool satisfied\n"
"\n"
"================================================================================\n"
"MSG: plan_execution/AspFluent\n"
"string name\n"
"string[] variables\n"
"uint32 timeStep\n"
;
  }

  static const char* value(const ::plan_execution::CurrentStateQueryResponse_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::plan_execution::CurrentStateQueryResponse_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.answer);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct CurrentStateQueryResponse_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::plan_execution::CurrentStateQueryResponse_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::plan_execution::CurrentStateQueryResponse_<ContainerAllocator>& v)
  {
    s << indent << "answer: ";
    s << std::endl;
    Printer< ::plan_execution::AnswerSet_<ContainerAllocator> >::stream(s, indent + "  ", v.answer);
  }
};

} // namespace message_operations
} // namespace ros

#endif // PLAN_EXECUTION_MESSAGE_CURRENTSTATEQUERYRESPONSE_H
