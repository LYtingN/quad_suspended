// Generated by gencpp from file quadrotor_msgs/PolynomialTraj.msg
// DO NOT EDIT!


#ifndef QUADROTOR_MSGS_MESSAGE_POLYNOMIALTRAJ_H
#define QUADROTOR_MSGS_MESSAGE_POLYNOMIALTRAJ_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <std_msgs/Header.h>
#include <quadrotor_msgs/PolynomialMatrix.h>

namespace quadrotor_msgs
{
template <class ContainerAllocator>
struct PolynomialTraj_
{
  typedef PolynomialTraj_<ContainerAllocator> Type;

  PolynomialTraj_()
    : header()
    , trajectory_id(0)
    , action(0)
    , trajectory()  {
    }
  PolynomialTraj_(const ContainerAllocator& _alloc)
    : header(_alloc)
    , trajectory_id(0)
    , action(0)
    , trajectory(_alloc)  {
  (void)_alloc;
    }



   typedef  ::std_msgs::Header_<ContainerAllocator>  _header_type;
  _header_type header;

   typedef uint32_t _trajectory_id_type;
  _trajectory_id_type trajectory_id;

   typedef uint32_t _action_type;
  _action_type action;

   typedef std::vector< ::quadrotor_msgs::PolynomialMatrix_<ContainerAllocator> , typename std::allocator_traits<ContainerAllocator>::template rebind_alloc< ::quadrotor_msgs::PolynomialMatrix_<ContainerAllocator> >> _trajectory_type;
  _trajectory_type trajectory;



// reducing the odds to have name collisions with Windows.h 
#if defined(_WIN32) && defined(ACTION_ADD)
  #undef ACTION_ADD
#endif
#if defined(_WIN32) && defined(ACTION_ABORT)
  #undef ACTION_ABORT
#endif
#if defined(_WIN32) && defined(ACTION_WARN_START)
  #undef ACTION_WARN_START
#endif
#if defined(_WIN32) && defined(ACTION_WARN_FINAL)
  #undef ACTION_WARN_FINAL
#endif
#if defined(_WIN32) && defined(ACTION_WARN_IMPOSSIBLE)
  #undef ACTION_WARN_IMPOSSIBLE
#endif

  enum {
    ACTION_ADD = 1u,
    ACTION_ABORT = 2u,
    ACTION_WARN_START = 3u,
    ACTION_WARN_FINAL = 4u,
    ACTION_WARN_IMPOSSIBLE = 5u,
  };


  typedef boost::shared_ptr< ::quadrotor_msgs::PolynomialTraj_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::quadrotor_msgs::PolynomialTraj_<ContainerAllocator> const> ConstPtr;

}; // struct PolynomialTraj_

typedef ::quadrotor_msgs::PolynomialTraj_<std::allocator<void> > PolynomialTraj;

typedef boost::shared_ptr< ::quadrotor_msgs::PolynomialTraj > PolynomialTrajPtr;
typedef boost::shared_ptr< ::quadrotor_msgs::PolynomialTraj const> PolynomialTrajConstPtr;

// constants requiring out of line definition

   

   

   

   

   



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::quadrotor_msgs::PolynomialTraj_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::quadrotor_msgs::PolynomialTraj_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::quadrotor_msgs::PolynomialTraj_<ContainerAllocator1> & lhs, const ::quadrotor_msgs::PolynomialTraj_<ContainerAllocator2> & rhs)
{
  return lhs.header == rhs.header &&
    lhs.trajectory_id == rhs.trajectory_id &&
    lhs.action == rhs.action &&
    lhs.trajectory == rhs.trajectory;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::quadrotor_msgs::PolynomialTraj_<ContainerAllocator1> & lhs, const ::quadrotor_msgs::PolynomialTraj_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace quadrotor_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::quadrotor_msgs::PolynomialTraj_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::quadrotor_msgs::PolynomialTraj_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::quadrotor_msgs::PolynomialTraj_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::quadrotor_msgs::PolynomialTraj_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::quadrotor_msgs::PolynomialTraj_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::quadrotor_msgs::PolynomialTraj_<ContainerAllocator> const>
  : TrueType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::quadrotor_msgs::PolynomialTraj_<ContainerAllocator> >
{
  static const char* value()
  {
    return "953704bac8e4c900f7bb35217887d6c4";
  }

  static const char* value(const ::quadrotor_msgs::PolynomialTraj_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x953704bac8e4c900ULL;
  static const uint64_t static_value2 = 0xf7bb35217887d6c4ULL;
};

template<class ContainerAllocator>
struct DataType< ::quadrotor_msgs::PolynomialTraj_<ContainerAllocator> >
{
  static const char* value()
  {
    return "quadrotor_msgs/PolynomialTraj";
  }

  static const char* value(const ::quadrotor_msgs::PolynomialTraj_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::quadrotor_msgs::PolynomialTraj_<ContainerAllocator> >
{
  static const char* value()
  {
    return "Header header\n"
"\n"
"# the trajectory id, starts from \"1\".\n"
"uint32 trajectory_id\n"
"\n"
"# the action command for trajectory server.\n"
"uint32 ACTION_ADD           =   1\n"
"uint32 ACTION_ABORT         =   2\n"
"uint32 ACTION_WARN_START           =   3\n"
"uint32 ACTION_WARN_FINAL           =   4\n"
"uint32 ACTION_WARN_IMPOSSIBLE      =   5\n"
"uint32 action\n"
"\n"
"# the order of trajectory.\n"
"quadrotor_msgs/PolynomialMatrix[] trajectory \n"
"\n"
"================================================================================\n"
"MSG: std_msgs/Header\n"
"# Standard metadata for higher-level stamped data types.\n"
"# This is generally used to communicate timestamped data \n"
"# in a particular coordinate frame.\n"
"# \n"
"# sequence ID: consecutively increasing ID \n"
"uint32 seq\n"
"#Two-integer timestamp that is expressed as:\n"
"# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')\n"
"# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')\n"
"# time-handling sugar is provided by the client library\n"
"time stamp\n"
"#Frame this data is associated with\n"
"string frame_id\n"
"\n"
"================================================================================\n"
"MSG: quadrotor_msgs/PolynomialMatrix\n"
"# the order of trajectory.\n"
"uint32 num_order\n"
"uint32 num_dim\n"
"\n"
"# the polynomial coecfficients of the trajectory.\n"
"\n"
"float64[] data\n"
"float64 duration\n"
;
  }

  static const char* value(const ::quadrotor_msgs::PolynomialTraj_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::quadrotor_msgs::PolynomialTraj_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.header);
      stream.next(m.trajectory_id);
      stream.next(m.action);
      stream.next(m.trajectory);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct PolynomialTraj_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::quadrotor_msgs::PolynomialTraj_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::quadrotor_msgs::PolynomialTraj_<ContainerAllocator>& v)
  {
    s << indent << "header: ";
    s << std::endl;
    Printer< ::std_msgs::Header_<ContainerAllocator> >::stream(s, indent + "  ", v.header);
    s << indent << "trajectory_id: ";
    Printer<uint32_t>::stream(s, indent + "  ", v.trajectory_id);
    s << indent << "action: ";
    Printer<uint32_t>::stream(s, indent + "  ", v.action);
    s << indent << "trajectory[]" << std::endl;
    for (size_t i = 0; i < v.trajectory.size(); ++i)
    {
      s << indent << "  trajectory[" << i << "]: ";
      s << std::endl;
      s << indent;
      Printer< ::quadrotor_msgs::PolynomialMatrix_<ContainerAllocator> >::stream(s, indent + "    ", v.trajectory[i]);
    }
  }
};

} // namespace message_operations
} // namespace ros

#endif // QUADROTOR_MSGS_MESSAGE_POLYNOMIALTRAJ_H
