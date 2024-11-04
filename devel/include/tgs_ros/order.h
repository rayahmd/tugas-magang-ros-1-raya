// Generated by gencpp from file tgs_ros/order.msg
// DO NOT EDIT!


#ifndef TGS_ROS_MESSAGE_ORDER_H
#define TGS_ROS_MESSAGE_ORDER_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace tgs_ros
{
template <class ContainerAllocator>
struct order_
{
  typedef order_<ContainerAllocator> Type;

  order_()
    : user_name()  {
    }
  order_(const ContainerAllocator& _alloc)
    : user_name(_alloc)  {
  (void)_alloc;
    }



   typedef std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>> _user_name_type;
  _user_name_type user_name;





  typedef boost::shared_ptr< ::tgs_ros::order_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::tgs_ros::order_<ContainerAllocator> const> ConstPtr;

}; // struct order_

typedef ::tgs_ros::order_<std::allocator<void> > order;

typedef boost::shared_ptr< ::tgs_ros::order > orderPtr;
typedef boost::shared_ptr< ::tgs_ros::order const> orderConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::tgs_ros::order_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::tgs_ros::order_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::tgs_ros::order_<ContainerAllocator1> & lhs, const ::tgs_ros::order_<ContainerAllocator2> & rhs)
{
  return lhs.user_name == rhs.user_name;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::tgs_ros::order_<ContainerAllocator1> & lhs, const ::tgs_ros::order_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace tgs_ros

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::tgs_ros::order_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::tgs_ros::order_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::tgs_ros::order_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::tgs_ros::order_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::tgs_ros::order_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::tgs_ros::order_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::tgs_ros::order_<ContainerAllocator> >
{
  static const char* value()
  {
    return "159b36609af19853383ab1313ed185b0";
  }

  static const char* value(const ::tgs_ros::order_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x159b36609af19853ULL;
  static const uint64_t static_value2 = 0x383ab1313ed185b0ULL;
};

template<class ContainerAllocator>
struct DataType< ::tgs_ros::order_<ContainerAllocator> >
{
  static const char* value()
  {
    return "tgs_ros/order";
  }

  static const char* value(const ::tgs_ros::order_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::tgs_ros::order_<ContainerAllocator> >
{
  static const char* value()
  {
    return "string user_name\n"
;
  }

  static const char* value(const ::tgs_ros::order_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::tgs_ros::order_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.user_name);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct order_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::tgs_ros::order_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::tgs_ros::order_<ContainerAllocator>& v)
  {
    s << indent << "user_name: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>>>::stream(s, indent + "  ", v.user_name);
  }
};

} // namespace message_operations
} // namespace ros

#endif // TGS_ROS_MESSAGE_ORDER_H
