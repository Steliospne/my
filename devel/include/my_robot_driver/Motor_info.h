// Generated by gencpp from file my_robot_driver/Motor_info.msg
// DO NOT EDIT!


#ifndef MY_ROBOT_DRIVER_MESSAGE_MOTOR_INFO_H
#define MY_ROBOT_DRIVER_MESSAGE_MOTOR_INFO_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace my_robot_driver
{
template <class ContainerAllocator>
struct Motor_info_
{
  typedef Motor_info_<ContainerAllocator> Type;

  Motor_info_()
    : state()  {
    }
  Motor_info_(const ContainerAllocator& _alloc)
    : state(_alloc)  {
  (void)_alloc;
    }



   typedef std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>> _state_type;
  _state_type state;





  typedef boost::shared_ptr< ::my_robot_driver::Motor_info_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::my_robot_driver::Motor_info_<ContainerAllocator> const> ConstPtr;

}; // struct Motor_info_

typedef ::my_robot_driver::Motor_info_<std::allocator<void> > Motor_info;

typedef boost::shared_ptr< ::my_robot_driver::Motor_info > Motor_infoPtr;
typedef boost::shared_ptr< ::my_robot_driver::Motor_info const> Motor_infoConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::my_robot_driver::Motor_info_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::my_robot_driver::Motor_info_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::my_robot_driver::Motor_info_<ContainerAllocator1> & lhs, const ::my_robot_driver::Motor_info_<ContainerAllocator2> & rhs)
{
  return lhs.state == rhs.state;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::my_robot_driver::Motor_info_<ContainerAllocator1> & lhs, const ::my_robot_driver::Motor_info_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace my_robot_driver

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::my_robot_driver::Motor_info_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::my_robot_driver::Motor_info_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::my_robot_driver::Motor_info_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::my_robot_driver::Motor_info_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::my_robot_driver::Motor_info_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::my_robot_driver::Motor_info_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::my_robot_driver::Motor_info_<ContainerAllocator> >
{
  static const char* value()
  {
    return "af6d3a99f0fbeb66d3248fa4b3e675fb";
  }

  static const char* value(const ::my_robot_driver::Motor_info_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xaf6d3a99f0fbeb66ULL;
  static const uint64_t static_value2 = 0xd3248fa4b3e675fbULL;
};

template<class ContainerAllocator>
struct DataType< ::my_robot_driver::Motor_info_<ContainerAllocator> >
{
  static const char* value()
  {
    return "my_robot_driver/Motor_info";
  }

  static const char* value(const ::my_robot_driver::Motor_info_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::my_robot_driver::Motor_info_<ContainerAllocator> >
{
  static const char* value()
  {
    return "string state\n"
;
  }

  static const char* value(const ::my_robot_driver::Motor_info_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::my_robot_driver::Motor_info_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.state);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct Motor_info_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::my_robot_driver::Motor_info_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::my_robot_driver::Motor_info_<ContainerAllocator>& v)
  {
    s << indent << "state: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>>>::stream(s, indent + "  ", v.state);
  }
};

} // namespace message_operations
} // namespace ros

#endif // MY_ROBOT_DRIVER_MESSAGE_MOTOR_INFO_H
