// Generated by gencpp from file bwi_msgs/SemanticParserRequest.msg
// DO NOT EDIT!


#ifndef BWI_MSGS_MESSAGE_SEMANTICPARSERREQUEST_H
#define BWI_MSGS_MESSAGE_SEMANTICPARSERREQUEST_H


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
struct SemanticParserRequest_
{
  typedef SemanticParserRequest_<ContainerAllocator> Type;

  SemanticParserRequest_()
    : type(0)
    , input_text()  {
    }
  SemanticParserRequest_(const ContainerAllocator& _alloc)
    : type(0)
    , input_text(_alloc)  {
  (void)_alloc;
    }



   typedef int32_t _type_type;
  _type_type type;

   typedef std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>> _input_text_type;
  _input_text_type input_text;



// reducing the odds to have name collisions with Windows.h 
#if defined(_WIN32) && defined(QUESTION_ASKING)
  #undef QUESTION_ASKING
#endif
#if defined(_WIN32) && defined(TRAINING)
  #undef TRAINING
#endif
#if defined(_WIN32) && defined(STARTOVER)
  #undef STARTOVER
#endif
#if defined(_WIN32) && defined(GETID)
  #undef GETID
#endif

  enum {
    QUESTION_ASKING = 0,
    TRAINING = 1,
    STARTOVER = 2,
    GETID = 3,
  };


  typedef boost::shared_ptr< ::bwi_msgs::SemanticParserRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::bwi_msgs::SemanticParserRequest_<ContainerAllocator> const> ConstPtr;

}; // struct SemanticParserRequest_

typedef ::bwi_msgs::SemanticParserRequest_<std::allocator<void> > SemanticParserRequest;

typedef boost::shared_ptr< ::bwi_msgs::SemanticParserRequest > SemanticParserRequestPtr;
typedef boost::shared_ptr< ::bwi_msgs::SemanticParserRequest const> SemanticParserRequestConstPtr;

// constants requiring out of line definition

   

   

   

   



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::bwi_msgs::SemanticParserRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::bwi_msgs::SemanticParserRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::bwi_msgs::SemanticParserRequest_<ContainerAllocator1> & lhs, const ::bwi_msgs::SemanticParserRequest_<ContainerAllocator2> & rhs)
{
  return lhs.type == rhs.type &&
    lhs.input_text == rhs.input_text;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::bwi_msgs::SemanticParserRequest_<ContainerAllocator1> & lhs, const ::bwi_msgs::SemanticParserRequest_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace bwi_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::bwi_msgs::SemanticParserRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::bwi_msgs::SemanticParserRequest_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::bwi_msgs::SemanticParserRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::bwi_msgs::SemanticParserRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::bwi_msgs::SemanticParserRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::bwi_msgs::SemanticParserRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::bwi_msgs::SemanticParserRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "1250825de9ebfa59119ec6348d0f8a79";
  }

  static const char* value(const ::bwi_msgs::SemanticParserRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x1250825de9ebfa59ULL;
  static const uint64_t static_value2 = 0x119ec6348d0f8a79ULL;
};

template<class ContainerAllocator>
struct DataType< ::bwi_msgs::SemanticParserRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "bwi_msgs/SemanticParserRequest";
  }

  static const char* value(const ::bwi_msgs::SemanticParserRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::bwi_msgs::SemanticParserRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# Constants defining type\n"
"int32 QUESTION_ASKING = 0\n"
"int32 TRAINING = 1\n"
"int32 STARTOVER = 2\n"
"int32 GETID = 3\n"
"\n"
"int32 type\n"
"string input_text\n"
;
  }

  static const char* value(const ::bwi_msgs::SemanticParserRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::bwi_msgs::SemanticParserRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.type);
      stream.next(m.input_text);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct SemanticParserRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::bwi_msgs::SemanticParserRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::bwi_msgs::SemanticParserRequest_<ContainerAllocator>& v)
  {
    s << indent << "type: ";
    Printer<int32_t>::stream(s, indent + "  ", v.type);
    s << indent << "input_text: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>>>::stream(s, indent + "  ", v.input_text);
  }
};

} // namespace message_operations
} // namespace ros

#endif // BWI_MSGS_MESSAGE_SEMANTICPARSERREQUEST_H
