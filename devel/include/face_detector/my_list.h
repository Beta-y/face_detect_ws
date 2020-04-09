// Generated by gencpp from file face_detector/my_list.msg
// DO NOT EDIT!


#ifndef FACE_DETECTOR_MESSAGE_MY_LIST_H
#define FACE_DETECTOR_MESSAGE_MY_LIST_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace face_detector
{
template <class ContainerAllocator>
struct my_list_
{
  typedef my_list_<ContainerAllocator> Type;

  my_list_()
    : lable()
    , top(0)
    , right(0)
    , bottom(0)
    , left(0)  {
    }
  my_list_(const ContainerAllocator& _alloc)
    : lable(_alloc)
    , top(0)
    , right(0)
    , bottom(0)
    , left(0)  {
  (void)_alloc;
    }



   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _lable_type;
  _lable_type lable;

   typedef int16_t _top_type;
  _top_type top;

   typedef int16_t _right_type;
  _right_type right;

   typedef int16_t _bottom_type;
  _bottom_type bottom;

   typedef int16_t _left_type;
  _left_type left;





  typedef boost::shared_ptr< ::face_detector::my_list_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::face_detector::my_list_<ContainerAllocator> const> ConstPtr;

}; // struct my_list_

typedef ::face_detector::my_list_<std::allocator<void> > my_list;

typedef boost::shared_ptr< ::face_detector::my_list > my_listPtr;
typedef boost::shared_ptr< ::face_detector::my_list const> my_listConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::face_detector::my_list_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::face_detector::my_list_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace face_detector

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': False, 'IsMessage': True, 'HasHeader': False}
// {'face_detector': ['/home/beta/Desktop/face_detect_ws/src/face_detector/msg'], 'std_msgs': ['/opt/ros/melodic/share/std_msgs/cmake/../msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::face_detector::my_list_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::face_detector::my_list_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::face_detector::my_list_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::face_detector::my_list_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::face_detector::my_list_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::face_detector::my_list_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::face_detector::my_list_<ContainerAllocator> >
{
  static const char* value()
  {
    return "590156b43bd12635225eac7ca690e0d9";
  }

  static const char* value(const ::face_detector::my_list_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x590156b43bd12635ULL;
  static const uint64_t static_value2 = 0x225eac7ca690e0d9ULL;
};

template<class ContainerAllocator>
struct DataType< ::face_detector::my_list_<ContainerAllocator> >
{
  static const char* value()
  {
    return "face_detector/my_list";
  }

  static const char* value(const ::face_detector::my_list_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::face_detector::my_list_<ContainerAllocator> >
{
  static const char* value()
  {
    return "#list 4D\n"
"string lable\n"
"int16 top\n"
"int16 right\n"
"int16 bottom \n"
"int16 left\n"
"\n"
;
  }

  static const char* value(const ::face_detector::my_list_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::face_detector::my_list_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.lable);
      stream.next(m.top);
      stream.next(m.right);
      stream.next(m.bottom);
      stream.next(m.left);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct my_list_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::face_detector::my_list_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::face_detector::my_list_<ContainerAllocator>& v)
  {
    s << indent << "lable: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.lable);
    s << indent << "top: ";
    Printer<int16_t>::stream(s, indent + "  ", v.top);
    s << indent << "right: ";
    Printer<int16_t>::stream(s, indent + "  ", v.right);
    s << indent << "bottom: ";
    Printer<int16_t>::stream(s, indent + "  ", v.bottom);
    s << indent << "left: ";
    Printer<int16_t>::stream(s, indent + "  ", v.left);
  }
};

} // namespace message_operations
} // namespace ros

#endif // FACE_DETECTOR_MESSAGE_MY_LIST_H