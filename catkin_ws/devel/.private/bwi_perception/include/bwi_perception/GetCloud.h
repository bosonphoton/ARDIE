// Generated by gencpp from file bwi_perception/GetCloud.msg
// DO NOT EDIT!


#ifndef BWI_PERCEPTION_MESSAGE_GETCLOUD_H
#define BWI_PERCEPTION_MESSAGE_GETCLOUD_H

#include <ros/service_traits.h>


#include <bwi_perception/GetCloudRequest.h>
#include <bwi_perception/GetCloudResponse.h>


namespace bwi_perception
{

struct GetCloud
{

typedef GetCloudRequest Request;
typedef GetCloudResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct GetCloud
} // namespace bwi_perception


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::bwi_perception::GetCloud > {
  static const char* value()
  {
    return "96cec5374164b3b3d1d7ef5d7628a7ed";
  }

  static const char* value(const ::bwi_perception::GetCloud&) { return value(); }
};

template<>
struct DataType< ::bwi_perception::GetCloud > {
  static const char* value()
  {
    return "bwi_perception/GetCloud";
  }

  static const char* value(const ::bwi_perception::GetCloud&) { return value(); }
};


// service_traits::MD5Sum< ::bwi_perception::GetCloudRequest> should match
// service_traits::MD5Sum< ::bwi_perception::GetCloud >
template<>
struct MD5Sum< ::bwi_perception::GetCloudRequest>
{
  static const char* value()
  {
    return MD5Sum< ::bwi_perception::GetCloud >::value();
  }
  static const char* value(const ::bwi_perception::GetCloudRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::bwi_perception::GetCloudRequest> should match
// service_traits::DataType< ::bwi_perception::GetCloud >
template<>
struct DataType< ::bwi_perception::GetCloudRequest>
{
  static const char* value()
  {
    return DataType< ::bwi_perception::GetCloud >::value();
  }
  static const char* value(const ::bwi_perception::GetCloudRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::bwi_perception::GetCloudResponse> should match
// service_traits::MD5Sum< ::bwi_perception::GetCloud >
template<>
struct MD5Sum< ::bwi_perception::GetCloudResponse>
{
  static const char* value()
  {
    return MD5Sum< ::bwi_perception::GetCloud >::value();
  }
  static const char* value(const ::bwi_perception::GetCloudResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::bwi_perception::GetCloudResponse> should match
// service_traits::DataType< ::bwi_perception::GetCloud >
template<>
struct DataType< ::bwi_perception::GetCloudResponse>
{
  static const char* value()
  {
    return DataType< ::bwi_perception::GetCloud >::value();
  }
  static const char* value(const ::bwi_perception::GetCloudResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // BWI_PERCEPTION_MESSAGE_GETCLOUD_H