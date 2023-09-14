// Generated by gencpp from file plan_execution/AspFluent.msg
// DO NOT EDIT!


#ifndef PLAN_EXECUTION_MESSAGE_ASPFLUENT_H
#define PLAN_EXECUTION_MESSAGE_ASPFLUENT_H


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
struct AspFluent_
{
  typedef AspFluent_<ContainerAllocator> Type;

  AspFluent_()
    : name()
    , variables()
    , timeStep(0)  {
    }
  AspFluent_(const ContainerAllocator& _alloc)
    : name(_alloc)
    , variables(_alloc)
    , timeStep(0)  {
  (void)_alloc;
    }



   typedef std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>> _name_type;
  _name_type name;

   typedef std::vector<std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>>>> _variables_type;
  _variables_type variables;

   typedef uint32_t _timeStep_type;
  _timeStep_type timeStep;





  typedef boost::shared_ptr< ::plan_execution::AspFluent_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::plan_execution::AspFluent_<ContainerAllocator> const> ConstPtr;

}; // struct AspFluent_

typedef ::plan_execution::AspFluent_<std::allocator<void> > AspFluent;

typedef boost::shared_ptr< ::plan_execution::AspFluent > AspFluentPtr;
typedef boost::shared_ptr< ::plan_execution::AspFluent const> AspFluentConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::plan_execution::AspFluent_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::plan_execution::AspFluent_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::plan_execution::AspFluent_<ContainerAllocator1> & lhs, const ::plan_execution::AspFluent_<ContainerAllocator2> & rhs)
{
  return lhs.name == rhs.name &&
    lhs.variables == rhs.variables &&
    lhs.timeStep == rhs.timeStep;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::plan_execution::AspFluent_<ContainerAllocator1> & lhs, const ::plan_execution::AspFluent_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace plan_execution

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::plan_execution::AspFluent_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::plan_execution::AspFluent_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::plan_execution::AspFluent_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::plan_execution::AspFluent_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::plan_execution::AspFluent_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::plan_execution::AspFluent_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::plan_execution::AspFluent_<ContainerAllocator> >
{
  static const char* value()
  {
    return "8582b3c5ad01957af2b2eb3b38a251b2";
  }

  static const char* value(const ::plan_execution::AspFluent_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x8582b3c5ad01957aULL;
  static const uint64_t static_value2 = 0xf2b2eb3b38a251b2ULL;
};

template<class ContainerAllocator>
struct DataType< ::plan_execution::AspFluent_<ContainerAllocator> >
{
  static const char* value()
  {
    return "plan_execution/AspFluent";
  }

  static const char* value(const ::plan_execution::AspFluent_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::plan_execution::AspFluent_<ContainerAllocator> >
{
  static const char* value()
  {
    return "string name\n"
"string[] variables\n"
"uint32 timeStep\n"
;
  }

  static const char* value(const ::plan_execution::AspFluent_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::plan_execution::AspFluent_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.name);
      stream.next(m.variables);
      stream.next(m.timeStep);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct AspFluent_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::plan_execution::AspFluent_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::plan_execution::AspFluent_<ContainerAllocator>& v)
  {
    s << indent << "name: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>>>::stream(s, indent + "  ", v.name);
    s << indent << "variables[]" << std::endl;
    for (size_t i = 0; i < v.variables.size(); ++i)
    {
      s << indent << "  variables[" << i << "]: ";
      Printer<std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>>>::stream(s, indent + "  ", v.variables[i]);
    }
    s << indent << "timeStep: ";
    Printer<uint32_t>::stream(s, indent + "  ", v.timeStep);
  }
};

} // namespace message_operations
} // namespace ros

#endif // PLAN_EXECUTION_MESSAGE_ASPFLUENT_H