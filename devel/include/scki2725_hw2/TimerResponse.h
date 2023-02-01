// Generated by gencpp from file scki2725_hw2/TimerResponse.msg
// DO NOT EDIT!


#ifndef SCKI2725_HW2_MESSAGE_TIMERRESPONSE_H
#define SCKI2725_HW2_MESSAGE_TIMERRESPONSE_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace scki2725_hw2
{
template <class ContainerAllocator>
struct TimerResponse_
{
  typedef TimerResponse_<ContainerAllocator> Type;

  TimerResponse_()
    : end(0.0)  {
    }
  TimerResponse_(const ContainerAllocator& _alloc)
    : end(0.0)  {
  (void)_alloc;
    }



   typedef double _end_type;
  _end_type end;





  typedef boost::shared_ptr< ::scki2725_hw2::TimerResponse_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::scki2725_hw2::TimerResponse_<ContainerAllocator> const> ConstPtr;

}; // struct TimerResponse_

typedef ::scki2725_hw2::TimerResponse_<std::allocator<void> > TimerResponse;

typedef boost::shared_ptr< ::scki2725_hw2::TimerResponse > TimerResponsePtr;
typedef boost::shared_ptr< ::scki2725_hw2::TimerResponse const> TimerResponseConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::scki2725_hw2::TimerResponse_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::scki2725_hw2::TimerResponse_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::scki2725_hw2::TimerResponse_<ContainerAllocator1> & lhs, const ::scki2725_hw2::TimerResponse_<ContainerAllocator2> & rhs)
{
  return lhs.end == rhs.end;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::scki2725_hw2::TimerResponse_<ContainerAllocator1> & lhs, const ::scki2725_hw2::TimerResponse_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace scki2725_hw2

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::scki2725_hw2::TimerResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::scki2725_hw2::TimerResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::scki2725_hw2::TimerResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::scki2725_hw2::TimerResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::scki2725_hw2::TimerResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::scki2725_hw2::TimerResponse_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::scki2725_hw2::TimerResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "270bbe95388b4ce7389d41b4b3b90cb6";
  }

  static const char* value(const ::scki2725_hw2::TimerResponse_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x270bbe95388b4ce7ULL;
  static const uint64_t static_value2 = 0x389d41b4b3b90cb6ULL;
};

template<class ContainerAllocator>
struct DataType< ::scki2725_hw2::TimerResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "scki2725_hw2/TimerResponse";
  }

  static const char* value(const ::scki2725_hw2::TimerResponse_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::scki2725_hw2::TimerResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "float64 end\n"
;
  }

  static const char* value(const ::scki2725_hw2::TimerResponse_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::scki2725_hw2::TimerResponse_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.end);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct TimerResponse_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::scki2725_hw2::TimerResponse_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::scki2725_hw2::TimerResponse_<ContainerAllocator>& v)
  {
    s << indent << "end: ";
    Printer<double>::stream(s, indent + "  ", v.end);
  }
};

} // namespace message_operations
} // namespace ros

#endif // SCKI2725_HW2_MESSAGE_TIMERRESPONSE_H
