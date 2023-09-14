// Generated by gencpp from file bwi_perception/ExtractTabletopScene.msg
// DO NOT EDIT!


#ifndef BWI_PERCEPTION_MESSAGE_EXTRACTTABLETOPSCENE_H
#define BWI_PERCEPTION_MESSAGE_EXTRACTTABLETOPSCENE_H

#include <ros/service_traits.h>


#include <bwi_perception/ExtractTabletopSceneRequest.h>
#include <bwi_perception/ExtractTabletopSceneResponse.h>


namespace bwi_perception
{

struct ExtractTabletopScene
{

typedef ExtractTabletopSceneRequest Request;
typedef ExtractTabletopSceneResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct ExtractTabletopScene
} // namespace bwi_perception


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::bwi_perception::ExtractTabletopScene > {
  static const char* value()
  {
    return "99f74d00a07a5046120147218fc37153";
  }

  static const char* value(const ::bwi_perception::ExtractTabletopScene&) { return value(); }
};

template<>
struct DataType< ::bwi_perception::ExtractTabletopScene > {
  static const char* value()
  {
    return "bwi_perception/ExtractTabletopScene";
  }

  static const char* value(const ::bwi_perception::ExtractTabletopScene&) { return value(); }
};


// service_traits::MD5Sum< ::bwi_perception::ExtractTabletopSceneRequest> should match
// service_traits::MD5Sum< ::bwi_perception::ExtractTabletopScene >
template<>
struct MD5Sum< ::bwi_perception::ExtractTabletopSceneRequest>
{
  static const char* value()
  {
    return MD5Sum< ::bwi_perception::ExtractTabletopScene >::value();
  }
  static const char* value(const ::bwi_perception::ExtractTabletopSceneRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::bwi_perception::ExtractTabletopSceneRequest> should match
// service_traits::DataType< ::bwi_perception::ExtractTabletopScene >
template<>
struct DataType< ::bwi_perception::ExtractTabletopSceneRequest>
{
  static const char* value()
  {
    return DataType< ::bwi_perception::ExtractTabletopScene >::value();
  }
  static const char* value(const ::bwi_perception::ExtractTabletopSceneRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::bwi_perception::ExtractTabletopSceneResponse> should match
// service_traits::MD5Sum< ::bwi_perception::ExtractTabletopScene >
template<>
struct MD5Sum< ::bwi_perception::ExtractTabletopSceneResponse>
{
  static const char* value()
  {
    return MD5Sum< ::bwi_perception::ExtractTabletopScene >::value();
  }
  static const char* value(const ::bwi_perception::ExtractTabletopSceneResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::bwi_perception::ExtractTabletopSceneResponse> should match
// service_traits::DataType< ::bwi_perception::ExtractTabletopScene >
template<>
struct DataType< ::bwi_perception::ExtractTabletopSceneResponse>
{
  static const char* value()
  {
    return DataType< ::bwi_perception::ExtractTabletopScene >::value();
  }
  static const char* value(const ::bwi_perception::ExtractTabletopSceneResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // BWI_PERCEPTION_MESSAGE_EXTRACTTABLETOPSCENE_H
