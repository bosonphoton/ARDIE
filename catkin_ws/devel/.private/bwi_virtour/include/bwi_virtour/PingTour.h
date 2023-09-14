// Generated by gencpp from file bwi_virtour/PingTour.msg
// DO NOT EDIT!


#ifndef BWI_VIRTOUR_MESSAGE_PINGTOUR_H
#define BWI_VIRTOUR_MESSAGE_PINGTOUR_H

#include <ros/service_traits.h>


#include <bwi_virtour/PingTourRequest.h>
#include <bwi_virtour/PingTourResponse.h>


namespace bwi_virtour
{

struct PingTour
{

typedef PingTourRequest Request;
typedef PingTourResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct PingTour
} // namespace bwi_virtour


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::bwi_virtour::PingTour > {
  static const char* value()
  {
    return "bc80c1496c95e8ce6d65f53d86635b16";
  }

  static const char* value(const ::bwi_virtour::PingTour&) { return value(); }
};

template<>
struct DataType< ::bwi_virtour::PingTour > {
  static const char* value()
  {
    return "bwi_virtour/PingTour";
  }

  static const char* value(const ::bwi_virtour::PingTour&) { return value(); }
};


// service_traits::MD5Sum< ::bwi_virtour::PingTourRequest> should match
// service_traits::MD5Sum< ::bwi_virtour::PingTour >
template<>
struct MD5Sum< ::bwi_virtour::PingTourRequest>
{
  static const char* value()
  {
    return MD5Sum< ::bwi_virtour::PingTour >::value();
  }
  static const char* value(const ::bwi_virtour::PingTourRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::bwi_virtour::PingTourRequest> should match
// service_traits::DataType< ::bwi_virtour::PingTour >
template<>
struct DataType< ::bwi_virtour::PingTourRequest>
{
  static const char* value()
  {
    return DataType< ::bwi_virtour::PingTour >::value();
  }
  static const char* value(const ::bwi_virtour::PingTourRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::bwi_virtour::PingTourResponse> should match
// service_traits::MD5Sum< ::bwi_virtour::PingTour >
template<>
struct MD5Sum< ::bwi_virtour::PingTourResponse>
{
  static const char* value()
  {
    return MD5Sum< ::bwi_virtour::PingTour >::value();
  }
  static const char* value(const ::bwi_virtour::PingTourResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::bwi_virtour::PingTourResponse> should match
// service_traits::DataType< ::bwi_virtour::PingTour >
template<>
struct DataType< ::bwi_virtour::PingTourResponse>
{
  static const char* value()
  {
    return DataType< ::bwi_virtour::PingTour >::value();
  }
  static const char* value(const ::bwi_virtour::PingTourResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // BWI_VIRTOUR_MESSAGE_PINGTOUR_H
