// Generated by gencpp from file my_robot_driver/Motor_Info.msg
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
struct Motor_Info_
{
  typedef Motor_Info_<ContainerAllocator> Type;

  Motor_Info_()
    : speed(0)
    , motor_state()  {
    }
  Motor_Info_(const ContainerAllocator& _alloc)
    : speed(0)
    , motor_state(_alloc)  {
  (void)_alloc;
    }



   typedef int32_t _speed_type;
  _speed_type speed;

   typedef std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>> _motor_state_type;
  _motor_state_type motor_state;





  typedef boost::shared_ptr< ::my_robot_driver::Motor_Info_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::my_robot_driver::Motor_Info_<ContainerAllocator> const> ConstPtr;

}; // struct Motor_Info_

typedef ::my_robot_driver::Motor_Info_<std::allocator<void> > Motor_Info;

typedef boost::shared_ptr< ::my_robot_driver::Motor_Info > Motor_InfoPtr;
typedef boost::shared_ptr< ::my_robot_driver::Motor_Info const> Motor_InfoConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::my_robot_driver::Motor_Info_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::my_robot_driver::Motor_Info_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::my_robot_driver::Motor_Info_<ContainerAllocator1> & lhs, const ::my_robot_driver::Motor_Info_<ContainerAllocator2> & rhs)
{
  return lhs.speed == rhs.speed &&
    lhs.motor_state == rhs.motor_state;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::my_robot_driver::Motor_Info_<ContainerAllocator1> & lhs, const ::my_robot_driver::Motor_Info_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace my_robot_driver

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::my_robot_driver::Motor_Info_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::my_robot_driver::Motor_Info_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::my_robot_driver::Motor_Info_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::my_robot_driver::Motor_Info_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::my_robot_driver::Motor_Info_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::my_robot_driver::Motor_Info_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::my_robot_driver::Motor_Info_<ContainerAllocator> >
{
  static const char* value()
  {
    return "727388caaf5c9d9c438c26406d5890e4";
  }

  static const char* value(const ::my_robot_driver::Motor_Info_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x727388caaf5c9d9cULL;
  static const uint64_t static_value2 = 0x438c26406d5890e4ULL;
};

template<class ContainerAllocator>
struct DataType< ::my_robot_driver::Motor_Info_<ContainerAllocator> >
{
  static const char* value()
  {
    return "my_robot_driver/Motor_Info";
  }

  static const char* value(const ::my_robot_driver::Motor_Info_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::my_robot_driver::Motor_Info_<ContainerAllocator> >
{
  static const char* value()
  {
    return "\n"
"int32 speed\n"
"string motor_state\n"
;
  }

  static const char* value(const ::my_robot_driver::Motor_Info_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::my_robot_driver::Motor_Info_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.speed);
      stream.next(m.motor_state);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct Motor_Info_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::my_robot_driver::Motor_Info_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::my_robot_driver::Motor_Info_<ContainerAllocator>& v)
  {
    s << indent << "speed: ";
    Printer<int32_t>::stream(s, indent + "  ", v.speed);
    s << indent << "motor_state: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>>>::stream(s, indent + "  ", v.motor_state);
  }
};

} // namespace message_operations
} // namespace ros

#endif // MY_ROBOT_DRIVER_MESSAGE_MOTOR_INFO_H
