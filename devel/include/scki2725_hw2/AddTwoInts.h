// Generated by gencpp from file scki2725_hw2/AddTwoInts.msg
// DO NOT EDIT!


#ifndef SCKI2725_HW2_MESSAGE_ADDTWOINTS_H
#define SCKI2725_HW2_MESSAGE_ADDTWOINTS_H

#include <ros/service_traits.h>


#include <scki2725_hw2/AddTwoIntsRequest.h>
#include <scki2725_hw2/AddTwoIntsResponse.h>


namespace scki2725_hw2
{

struct AddTwoInts
{

typedef AddTwoIntsRequest Request;
typedef AddTwoIntsResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct AddTwoInts
} // namespace scki2725_hw2


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::scki2725_hw2::AddTwoInts > {
  static const char* value()
  {
    return "6a2e34150c00229791cc89ff309fff21";
  }

  static const char* value(const ::scki2725_hw2::AddTwoInts&) { return value(); }
};

template<>
struct DataType< ::scki2725_hw2::AddTwoInts > {
  static const char* value()
  {
    return "scki2725_hw2/AddTwoInts";
  }

  static const char* value(const ::scki2725_hw2::AddTwoInts&) { return value(); }
};


// service_traits::MD5Sum< ::scki2725_hw2::AddTwoIntsRequest> should match
// service_traits::MD5Sum< ::scki2725_hw2::AddTwoInts >
template<>
struct MD5Sum< ::scki2725_hw2::AddTwoIntsRequest>
{
  static const char* value()
  {
    return MD5Sum< ::scki2725_hw2::AddTwoInts >::value();
  }
  static const char* value(const ::scki2725_hw2::AddTwoIntsRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::scki2725_hw2::AddTwoIntsRequest> should match
// service_traits::DataType< ::scki2725_hw2::AddTwoInts >
template<>
struct DataType< ::scki2725_hw2::AddTwoIntsRequest>
{
  static const char* value()
  {
    return DataType< ::scki2725_hw2::AddTwoInts >::value();
  }
  static const char* value(const ::scki2725_hw2::AddTwoIntsRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::scki2725_hw2::AddTwoIntsResponse> should match
// service_traits::MD5Sum< ::scki2725_hw2::AddTwoInts >
template<>
struct MD5Sum< ::scki2725_hw2::AddTwoIntsResponse>
{
  static const char* value()
  {
    return MD5Sum< ::scki2725_hw2::AddTwoInts >::value();
  }
  static const char* value(const ::scki2725_hw2::AddTwoIntsResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::scki2725_hw2::AddTwoIntsResponse> should match
// service_traits::DataType< ::scki2725_hw2::AddTwoInts >
template<>
struct DataType< ::scki2725_hw2::AddTwoIntsResponse>
{
  static const char* value()
  {
    return DataType< ::scki2725_hw2::AddTwoInts >::value();
  }
  static const char* value(const ::scki2725_hw2::AddTwoIntsResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // SCKI2725_HW2_MESSAGE_ADDTWOINTS_H
