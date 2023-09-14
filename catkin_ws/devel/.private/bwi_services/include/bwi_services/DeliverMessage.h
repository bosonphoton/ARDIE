// Generated by gencpp from file bwi_services/DeliverMessage.msg
// DO NOT EDIT!


#ifndef BWI_SERVICES_MESSAGE_DELIVERMESSAGE_H
#define BWI_SERVICES_MESSAGE_DELIVERMESSAGE_H

#include <ros/service_traits.h>


#include <bwi_services/DeliverMessageRequest.h>
#include <bwi_services/DeliverMessageResponse.h>


namespace bwi_services
{

struct DeliverMessage
{

typedef DeliverMessageRequest Request;
typedef DeliverMessageResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct DeliverMessage
} // namespace bwi_services


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::bwi_services::DeliverMessage > {
  static const char* value()
  {
    return "e951bc044db93112f1ee530c255f7550";
  }

  static const char* value(const ::bwi_services::DeliverMessage&) { return value(); }
};

template<>
struct DataType< ::bwi_services::DeliverMessage > {
  static const char* value()
  {
    return "bwi_services/DeliverMessage";
  }

  static const char* value(const ::bwi_services::DeliverMessage&) { return value(); }
};


// service_traits::MD5Sum< ::bwi_services::DeliverMessageRequest> should match
// service_traits::MD5Sum< ::bwi_services::DeliverMessage >
template<>
struct MD5Sum< ::bwi_services::DeliverMessageRequest>
{
  static const char* value()
  {
    return MD5Sum< ::bwi_services::DeliverMessage >::value();
  }
  static const char* value(const ::bwi_services::DeliverMessageRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::bwi_services::DeliverMessageRequest> should match
// service_traits::DataType< ::bwi_services::DeliverMessage >
template<>
struct DataType< ::bwi_services::DeliverMessageRequest>
{
  static const char* value()
  {
    return DataType< ::bwi_services::DeliverMessage >::value();
  }
  static const char* value(const ::bwi_services::DeliverMessageRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::bwi_services::DeliverMessageResponse> should match
// service_traits::MD5Sum< ::bwi_services::DeliverMessage >
template<>
struct MD5Sum< ::bwi_services::DeliverMessageResponse>
{
  static const char* value()
  {
    return MD5Sum< ::bwi_services::DeliverMessage >::value();
  }
  static const char* value(const ::bwi_services::DeliverMessageResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::bwi_services::DeliverMessageResponse> should match
// service_traits::DataType< ::bwi_services::DeliverMessage >
template<>
struct DataType< ::bwi_services::DeliverMessageResponse>
{
  static const char* value()
  {
    return DataType< ::bwi_services::DeliverMessage >::value();
  }
  static const char* value(const ::bwi_services::DeliverMessageResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // BWI_SERVICES_MESSAGE_DELIVERMESSAGE_H