// Generated by gencpp from file exploration_msgs/ExploreResult.msg
// DO NOT EDIT!


#ifndef EXPLORATION_MSGS_MESSAGE_EXPLORERESULT_H
#define EXPLORATION_MSGS_MESSAGE_EXPLORERESULT_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace exploration_msgs
{
template <class ContainerAllocator>
struct ExploreResult_
{
  typedef ExploreResult_<ContainerAllocator> Type;

  ExploreResult_()
    {
    }
  ExploreResult_(const ContainerAllocator& _alloc)
    {
  (void)_alloc;
    }







  typedef boost::shared_ptr< ::exploration_msgs::ExploreResult_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::exploration_msgs::ExploreResult_<ContainerAllocator> const> ConstPtr;

}; // struct ExploreResult_

typedef ::exploration_msgs::ExploreResult_<std::allocator<void> > ExploreResult;

typedef boost::shared_ptr< ::exploration_msgs::ExploreResult > ExploreResultPtr;
typedef boost::shared_ptr< ::exploration_msgs::ExploreResult const> ExploreResultConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::exploration_msgs::ExploreResult_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::exploration_msgs::ExploreResult_<ContainerAllocator> >::stream(s, "", v);
return s;
}


} // namespace exploration_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::exploration_msgs::ExploreResult_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::exploration_msgs::ExploreResult_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::exploration_msgs::ExploreResult_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::exploration_msgs::ExploreResult_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::exploration_msgs::ExploreResult_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::exploration_msgs::ExploreResult_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::exploration_msgs::ExploreResult_<ContainerAllocator> >
{
  static const char* value()
  {
    return "d41d8cd98f00b204e9800998ecf8427e";
  }

  static const char* value(const ::exploration_msgs::ExploreResult_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xd41d8cd98f00b204ULL;
  static const uint64_t static_value2 = 0xe9800998ecf8427eULL;
};

template<class ContainerAllocator>
struct DataType< ::exploration_msgs::ExploreResult_<ContainerAllocator> >
{
  static const char* value()
  {
    return "exploration_msgs/ExploreResult";
  }

  static const char* value(const ::exploration_msgs::ExploreResult_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::exploration_msgs::ExploreResult_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======\n"
;
  }

  static const char* value(const ::exploration_msgs::ExploreResult_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::exploration_msgs::ExploreResult_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream&, T)
    {}

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct ExploreResult_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::exploration_msgs::ExploreResult_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream&, const std::string&, const ::exploration_msgs::ExploreResult_<ContainerAllocator>&)
  {}
};

} // namespace message_operations
} // namespace ros

#endif // EXPLORATION_MSGS_MESSAGE_EXPLORERESULT_H
