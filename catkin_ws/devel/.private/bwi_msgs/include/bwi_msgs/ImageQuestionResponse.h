// Generated by gencpp from file bwi_msgs/ImageQuestionResponse.msg
// DO NOT EDIT!


#ifndef BWI_MSGS_MESSAGE_IMAGEQUESTIONRESPONSE_H
#define BWI_MSGS_MESSAGE_IMAGEQUESTIONRESPONSE_H


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
struct ImageQuestionResponse_
{
  typedef ImageQuestionResponse_<ContainerAllocator> Type;

  ImageQuestionResponse_()
    : answers()
    , end_reason(0)  {
    }
  ImageQuestionResponse_(const ContainerAllocator& _alloc)
    : answers(_alloc)
    , end_reason(0)  {
  (void)_alloc;
    }



   typedef std::vector<std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>>>> _answers_type;
  _answers_type answers;

   typedef int32_t _end_reason_type;
  _end_reason_type end_reason;



// reducing the odds to have name collisions with Windows.h 
#if defined(_WIN32) && defined(SUCCESSFUL_ANSWER)
  #undef SUCCESSFUL_ANSWER
#endif
#if defined(_WIN32) && defined(TIMEOUT)
  #undef TIMEOUT
#endif
#if defined(_WIN32) && defined(CANCELLED)
  #undef CANCELLED
#endif

  enum {
    SUCCESSFUL_ANSWER = 0,
    TIMEOUT = 1,
    CANCELLED = 2,
  };


  typedef boost::shared_ptr< ::bwi_msgs::ImageQuestionResponse_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::bwi_msgs::ImageQuestionResponse_<ContainerAllocator> const> ConstPtr;

}; // struct ImageQuestionResponse_

typedef ::bwi_msgs::ImageQuestionResponse_<std::allocator<void> > ImageQuestionResponse;

typedef boost::shared_ptr< ::bwi_msgs::ImageQuestionResponse > ImageQuestionResponsePtr;
typedef boost::shared_ptr< ::bwi_msgs::ImageQuestionResponse const> ImageQuestionResponseConstPtr;

// constants requiring out of line definition

   

   

   



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::bwi_msgs::ImageQuestionResponse_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::bwi_msgs::ImageQuestionResponse_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::bwi_msgs::ImageQuestionResponse_<ContainerAllocator1> & lhs, const ::bwi_msgs::ImageQuestionResponse_<ContainerAllocator2> & rhs)
{
  return lhs.answers == rhs.answers &&
    lhs.end_reason == rhs.end_reason;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::bwi_msgs::ImageQuestionResponse_<ContainerAllocator1> & lhs, const ::bwi_msgs::ImageQuestionResponse_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace bwi_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::bwi_msgs::ImageQuestionResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::bwi_msgs::ImageQuestionResponse_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::bwi_msgs::ImageQuestionResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::bwi_msgs::ImageQuestionResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::bwi_msgs::ImageQuestionResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::bwi_msgs::ImageQuestionResponse_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::bwi_msgs::ImageQuestionResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "40010323bce4291465206eb424c88b57";
  }

  static const char* value(const ::bwi_msgs::ImageQuestionResponse_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x40010323bce42914ULL;
  static const uint64_t static_value2 = 0x65206eb424c88b57ULL;
};

template<class ContainerAllocator>
struct DataType< ::bwi_msgs::ImageQuestionResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "bwi_msgs/ImageQuestionResponse";
  }

  static const char* value(const ::bwi_msgs::ImageQuestionResponse_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::bwi_msgs::ImageQuestionResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "int32 SUCCESSFUL_ANSWER=0\n"
"int32 TIMEOUT=1\n"
"int32 CANCELLED=2\n"
"\n"
"string[] answers\n"
"int32 end_reason\n"
"\n"
;
  }

  static const char* value(const ::bwi_msgs::ImageQuestionResponse_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::bwi_msgs::ImageQuestionResponse_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.answers);
      stream.next(m.end_reason);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct ImageQuestionResponse_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::bwi_msgs::ImageQuestionResponse_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::bwi_msgs::ImageQuestionResponse_<ContainerAllocator>& v)
  {
    s << indent << "answers[]" << std::endl;
    for (size_t i = 0; i < v.answers.size(); ++i)
    {
      s << indent << "  answers[" << i << "]: ";
      Printer<std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>>>::stream(s, indent + "  ", v.answers[i]);
    }
    s << indent << "end_reason: ";
    Printer<int32_t>::stream(s, indent + "  ", v.end_reason);
  }
};

} // namespace message_operations
} // namespace ros

#endif // BWI_MSGS_MESSAGE_IMAGEQUESTIONRESPONSE_H