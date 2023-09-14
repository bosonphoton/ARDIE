// Generated by gencpp from file plan_execution/ExecuteSmachStateMachineGoal.msg
// DO NOT EDIT!


#ifndef PLAN_EXECUTION_MESSAGE_EXECUTESMACHSTATEMACHINEGOAL_H
#define PLAN_EXECUTION_MESSAGE_EXECUTESMACHSTATEMACHINEGOAL_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace plan_execution
{
template <class ContainerAllocator>
struct ExecuteSmachStateMachineGoal_
{
  typedef ExecuteSmachStateMachineGoal_<ContainerAllocator> Type;

  ExecuteSmachStateMachineGoal_()
    : parameters()  {
    }
  ExecuteSmachStateMachineGoal_(const ContainerAllocator& _alloc)
    : parameters(_alloc)  {
  (void)_alloc;
    }



   typedef std::vector<std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>>>> _parameters_type;
  _parameters_type parameters;





  typedef boost::shared_ptr< ::plan_execution::ExecuteSmachStateMachineGoal_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::plan_execution::ExecuteSmachStateMachineGoal_<ContainerAllocator> const> ConstPtr;

}; // struct ExecuteSmachStateMachineGoal_

typedef ::plan_execution::ExecuteSmachStateMachineGoal_<std::allocator<void> > ExecuteSmachStateMachineGoal;

typedef boost::shared_ptr< ::plan_execution::ExecuteSmachStateMachineGoal > ExecuteSmachStateMachineGoalPtr;
typedef boost::shared_ptr< ::plan_execution::ExecuteSmachStateMachineGoal const> ExecuteSmachStateMachineGoalConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::plan_execution::ExecuteSmachStateMachineGoal_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::plan_execution::ExecuteSmachStateMachineGoal_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::plan_execution::ExecuteSmachStateMachineGoal_<ContainerAllocator1> & lhs, const ::plan_execution::ExecuteSmachStateMachineGoal_<ContainerAllocator2> & rhs)
{
  return lhs.parameters == rhs.parameters;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::plan_execution::ExecuteSmachStateMachineGoal_<ContainerAllocator1> & lhs, const ::plan_execution::ExecuteSmachStateMachineGoal_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace plan_execution

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::plan_execution::ExecuteSmachStateMachineGoal_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::plan_execution::ExecuteSmachStateMachineGoal_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::plan_execution::ExecuteSmachStateMachineGoal_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::plan_execution::ExecuteSmachStateMachineGoal_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::plan_execution::ExecuteSmachStateMachineGoal_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::plan_execution::ExecuteSmachStateMachineGoal_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::plan_execution::ExecuteSmachStateMachineGoal_<ContainerAllocator> >
{
  static const char* value()
  {
    return "2c50df2951af5e4b68e504b450b867f2";
  }

  static const char* value(const ::plan_execution::ExecuteSmachStateMachineGoal_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x2c50df2951af5e4bULL;
  static const uint64_t static_value2 = 0x68e504b450b867f2ULL;
};

template<class ContainerAllocator>
struct DataType< ::plan_execution::ExecuteSmachStateMachineGoal_<ContainerAllocator> >
{
  static const char* value()
  {
    return "plan_execution/ExecuteSmachStateMachineGoal";
  }

  static const char* value(const ::plan_execution::ExecuteSmachStateMachineGoal_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::plan_execution::ExecuteSmachStateMachineGoal_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======\n"
"string[] parameters\n"
;
  }

  static const char* value(const ::plan_execution::ExecuteSmachStateMachineGoal_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::plan_execution::ExecuteSmachStateMachineGoal_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.parameters);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct ExecuteSmachStateMachineGoal_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::plan_execution::ExecuteSmachStateMachineGoal_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::plan_execution::ExecuteSmachStateMachineGoal_<ContainerAllocator>& v)
  {
    s << indent << "parameters[]" << std::endl;
    for (size_t i = 0; i < v.parameters.size(); ++i)
    {
      s << indent << "  parameters[" << i << "]: ";
      Printer<std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>>>::stream(s, indent + "  ", v.parameters[i]);
    }
  }
};

} // namespace message_operations
} // namespace ros

#endif // PLAN_EXECUTION_MESSAGE_EXECUTESMACHSTATEMACHINEGOAL_H
