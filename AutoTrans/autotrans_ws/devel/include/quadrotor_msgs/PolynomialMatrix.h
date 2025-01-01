// Generated by gencpp from file quadrotor_msgs/PolynomialMatrix.msg
// DO NOT EDIT!


#ifndef QUADROTOR_MSGS_MESSAGE_POLYNOMIALMATRIX_H
#define QUADROTOR_MSGS_MESSAGE_POLYNOMIALMATRIX_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace quadrotor_msgs
{
template <class ContainerAllocator>
struct PolynomialMatrix_
{
  typedef PolynomialMatrix_<ContainerAllocator> Type;

  PolynomialMatrix_()
    : num_order(0)
    , num_dim(0)
    , data()
    , duration(0.0)  {
    }
  PolynomialMatrix_(const ContainerAllocator& _alloc)
    : num_order(0)
    , num_dim(0)
    , data(_alloc)
    , duration(0.0)  {
  (void)_alloc;
    }



   typedef uint32_t _num_order_type;
  _num_order_type num_order;

   typedef uint32_t _num_dim_type;
  _num_dim_type num_dim;

   typedef std::vector<double, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<double>> _data_type;
  _data_type data;

   typedef double _duration_type;
  _duration_type duration;





  typedef boost::shared_ptr< ::quadrotor_msgs::PolynomialMatrix_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::quadrotor_msgs::PolynomialMatrix_<ContainerAllocator> const> ConstPtr;

}; // struct PolynomialMatrix_

typedef ::quadrotor_msgs::PolynomialMatrix_<std::allocator<void> > PolynomialMatrix;

typedef boost::shared_ptr< ::quadrotor_msgs::PolynomialMatrix > PolynomialMatrixPtr;
typedef boost::shared_ptr< ::quadrotor_msgs::PolynomialMatrix const> PolynomialMatrixConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::quadrotor_msgs::PolynomialMatrix_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::quadrotor_msgs::PolynomialMatrix_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::quadrotor_msgs::PolynomialMatrix_<ContainerAllocator1> & lhs, const ::quadrotor_msgs::PolynomialMatrix_<ContainerAllocator2> & rhs)
{
  return lhs.num_order == rhs.num_order &&
    lhs.num_dim == rhs.num_dim &&
    lhs.data == rhs.data &&
    lhs.duration == rhs.duration;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::quadrotor_msgs::PolynomialMatrix_<ContainerAllocator1> & lhs, const ::quadrotor_msgs::PolynomialMatrix_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace quadrotor_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::quadrotor_msgs::PolynomialMatrix_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::quadrotor_msgs::PolynomialMatrix_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::quadrotor_msgs::PolynomialMatrix_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::quadrotor_msgs::PolynomialMatrix_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::quadrotor_msgs::PolynomialMatrix_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::quadrotor_msgs::PolynomialMatrix_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::quadrotor_msgs::PolynomialMatrix_<ContainerAllocator> >
{
  static const char* value()
  {
    return "33f3d05d20db7dedec1bc61efdd169fc";
  }

  static const char* value(const ::quadrotor_msgs::PolynomialMatrix_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x33f3d05d20db7dedULL;
  static const uint64_t static_value2 = 0xec1bc61efdd169fcULL;
};

template<class ContainerAllocator>
struct DataType< ::quadrotor_msgs::PolynomialMatrix_<ContainerAllocator> >
{
  static const char* value()
  {
    return "quadrotor_msgs/PolynomialMatrix";
  }

  static const char* value(const ::quadrotor_msgs::PolynomialMatrix_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::quadrotor_msgs::PolynomialMatrix_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# the order of trajectory.\n"
"uint32 num_order\n"
"uint32 num_dim\n"
"\n"
"# the polynomial coecfficients of the trajectory.\n"
"\n"
"float64[] data\n"
"float64 duration\n"
;
  }

  static const char* value(const ::quadrotor_msgs::PolynomialMatrix_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::quadrotor_msgs::PolynomialMatrix_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.num_order);
      stream.next(m.num_dim);
      stream.next(m.data);
      stream.next(m.duration);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct PolynomialMatrix_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::quadrotor_msgs::PolynomialMatrix_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::quadrotor_msgs::PolynomialMatrix_<ContainerAllocator>& v)
  {
    s << indent << "num_order: ";
    Printer<uint32_t>::stream(s, indent + "  ", v.num_order);
    s << indent << "num_dim: ";
    Printer<uint32_t>::stream(s, indent + "  ", v.num_dim);
    s << indent << "data[]" << std::endl;
    for (size_t i = 0; i < v.data.size(); ++i)
    {
      s << indent << "  data[" << i << "]: ";
      Printer<double>::stream(s, indent + "  ", v.data[i]);
    }
    s << indent << "duration: ";
    Printer<double>::stream(s, indent + "  ", v.duration);
  }
};

} // namespace message_operations
} // namespace ros

#endif // QUADROTOR_MSGS_MESSAGE_POLYNOMIALMATRIX_H
