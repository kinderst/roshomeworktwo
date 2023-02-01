// Generated by gencpp from file scki2725_hw2/Timer.msg
// DO NOT EDIT!


#ifndef SCKI2725_HW2_MESSAGE_TIMER_H
#define SCKI2725_HW2_MESSAGE_TIMER_H

#include <ros/service_traits.h>


#include <scki2725_hw2/TimerRequest.h>
#include <scki2725_hw2/TimerResponse.h>


namespace scki2725_hw2
{

struct Timer
{

typedef TimerRequest Request;
typedef TimerResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct Timer
} // namespace scki2725_hw2


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::scki2725_hw2::Timer > {
  static const char* value()
  {
    return "b68471fcd0db25b9058c843e54654d6a";
  }

  static const char* value(const ::scki2725_hw2::Timer&) { return value(); }
};

template<>
struct DataType< ::scki2725_hw2::Timer > {
  static const char* value()
  {
    return "scki2725_hw2/Timer";
  }

  static const char* value(const ::scki2725_hw2::Timer&) { return value(); }
};


// service_traits::MD5Sum< ::scki2725_hw2::TimerRequest> should match
// service_traits::MD5Sum< ::scki2725_hw2::Timer >
template<>
struct MD5Sum< ::scki2725_hw2::TimerRequest>
{
  static const char* value()
  {
    return MD5Sum< ::scki2725_hw2::Timer >::value();
  }
  static const char* value(const ::scki2725_hw2::TimerRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::scki2725_hw2::TimerRequest> should match
// service_traits::DataType< ::scki2725_hw2::Timer >
template<>
struct DataType< ::scki2725_hw2::TimerRequest>
{
  static const char* value()
  {
    return DataType< ::scki2725_hw2::Timer >::value();
  }
  static const char* value(const ::scki2725_hw2::TimerRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::scki2725_hw2::TimerResponse> should match
// service_traits::MD5Sum< ::scki2725_hw2::Timer >
template<>
struct MD5Sum< ::scki2725_hw2::TimerResponse>
{
  static const char* value()
  {
    return MD5Sum< ::scki2725_hw2::Timer >::value();
  }
  static const char* value(const ::scki2725_hw2::TimerResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::scki2725_hw2::TimerResponse> should match
// service_traits::DataType< ::scki2725_hw2::Timer >
template<>
struct DataType< ::scki2725_hw2::TimerResponse>
{
  static const char* value()
  {
    return DataType< ::scki2725_hw2::Timer >::value();
  }
  static const char* value(const ::scki2725_hw2::TimerResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // SCKI2725_HW2_MESSAGE_TIMER_H
