// Generated by gencpp from file bwi_msgs/StopBaseStatus.msg
// DO NOT EDIT!


#ifndef BWI_MSGS_MESSAGE_STOPBASESTATUS_H
#define BWI_MSGS_MESSAGE_STOPBASESTATUS_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace bwi_msgs
{
template <class ContainerAllocator>
struct StopBaseStatus_
{
  typedef StopBaseStatus_<ContainerAllocator> Type;

  StopBaseStatus_()
    : status(0)  {
    }
  StopBaseStatus_(const ContainerAllocator& _alloc)
    : status(0)  {
  (void)_alloc;
    }



   typedef uint8_t _status_type;
  _status_type status;



// reducing the odds to have name collisions with Windows.h 
#if defined(_WIN32) && defined(RUNNING)
  #undef RUNNING
#endif
#if defined(_WIN32) && defined(PAUSED)
  #undef PAUSED
#endif
#if defined(_WIN32) && defined(STOPPED)
  #undef STOPPED
#endif

  enum {
    RUNNING = 0u,
    PAUSED = 1u,
    STOPPED = 2u,
  };


  typedef boost::shared_ptr< ::bwi_msgs::StopBaseStatus_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::bwi_msgs::StopBaseStatus_<ContainerAllocator> const> ConstPtr;

}; // struct StopBaseStatus_

typedef ::bwi_msgs::StopBaseStatus_<std::allocator<void> > StopBaseStatus;

typedef boost::shared_ptr< ::bwi_msgs::StopBaseStatus > StopBaseStatusPtr;
typedef boost::shared_ptr< ::bwi_msgs::StopBaseStatus const> StopBaseStatusConstPtr;

// constants requiring out of line definition

   

   

   



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::bwi_msgs::StopBaseStatus_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::bwi_msgs::StopBaseStatus_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::bwi_msgs::StopBaseStatus_<ContainerAllocator1> & lhs, const ::bwi_msgs::StopBaseStatus_<ContainerAllocator2> & rhs)
{
  return lhs.status == rhs.status;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::bwi_msgs::StopBaseStatus_<ContainerAllocator1> & lhs, const ::bwi_msgs::StopBaseStatus_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace bwi_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::bwi_msgs::StopBaseStatus_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::bwi_msgs::StopBaseStatus_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::bwi_msgs::StopBaseStatus_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::bwi_msgs::StopBaseStatus_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::bwi_msgs::StopBaseStatus_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::bwi_msgs::StopBaseStatus_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::bwi_msgs::StopBaseStatus_<ContainerAllocator> >
{
  static const char* value()
  {
    return "8f231599c0ff2f9f109df07968a43c85";
  }

  static const char* value(const ::bwi_msgs::StopBaseStatus_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x8f231599c0ff2f9fULL;
  static const uint64_t static_value2 = 0x109df07968a43c85ULL;
};

template<class ContainerAllocator>
struct DataType< ::bwi_msgs::StopBaseStatus_<ContainerAllocator> >
{
  static const char* value()
  {
    return "bwi_msgs/StopBaseStatus";
  }

  static const char* value(const ::bwi_msgs::StopBaseStatus_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::bwi_msgs::StopBaseStatus_<ContainerAllocator> >
{
  static const char* value()
  {
    return "### Stop base controller status.\n"
"\n"
"uint8 status\n"
"\n"
"# Constants defining the possible states:\n"
"uint8 RUNNING = 0       # robot base running normally\n"
"uint8 PAUSED =  1       # robot base motion paused\n"
"uint8 STOPPED = 2       # terminal state: no more movement allowed\n"
;
  }

  static const char* value(const ::bwi_msgs::StopBaseStatus_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::bwi_msgs::StopBaseStatus_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.status);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct StopBaseStatus_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::bwi_msgs::StopBaseStatus_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::bwi_msgs::StopBaseStatus_<ContainerAllocator>& v)
  {
    s << indent << "status: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.status);
  }
};

} // namespace message_operations
} // namespace ros

#endif // BWI_MSGS_MESSAGE_STOPBASESTATUS_H
