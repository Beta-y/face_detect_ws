# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from face_detector/face_msgs.msg. Do not edit."""
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct

import face_detector.msg

class face_msgs(genpy.Message):
  _md5sum = "8b8cdd61744da60b1fa004570af7b850"
  _type = "face_detector/face_msgs"
  _has_header = False #flag to mark the presence of a Header object
  _full_text = """int16 index
my_list[] location

================================================================================
MSG: face_detector/my_list
#list 4D
string lable
int16 top
int16 right
int16 bottom 
int16 left

"""
  __slots__ = ['index','location']
  _slot_types = ['int16','face_detector/my_list[]']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       index,location

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(face_msgs, self).__init__(*args, **kwds)
      #message fields cannot be None, assign default values for those that are
      if self.index is None:
        self.index = 0
      if self.location is None:
        self.location = []
    else:
      self.index = 0
      self.location = []

  def _get_types(self):
    """
    internal API method
    """
    return self._slot_types

  def serialize(self, buff):
    """
    serialize message into buffer
    :param buff: buffer, ``StringIO``
    """
    try:
      buff.write(_get_struct_h().pack(self.index))
      length = len(self.location)
      buff.write(_struct_I.pack(length))
      for val1 in self.location:
        _x = val1.lable
        length = len(_x)
        if python3 or type(_x) == unicode:
          _x = _x.encode('utf-8')
          length = len(_x)
        buff.write(struct.pack('<I%ss'%length, length, _x))
        _x = val1
        buff.write(_get_struct_4h().pack(_x.top, _x.right, _x.bottom, _x.left))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    try:
      if self.location is None:
        self.location = None
      end = 0
      start = end
      end += 2
      (self.index,) = _get_struct_h().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.location = []
      for i in range(0, length):
        val1 = face_detector.msg.my_list()
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        start = end
        end += length
        if python3:
          val1.lable = str[start:end].decode('utf-8')
        else:
          val1.lable = str[start:end]
        _x = val1
        start = end
        end += 8
        (_x.top, _x.right, _x.bottom, _x.left,) = _get_struct_4h().unpack(str[start:end])
        self.location.append(val1)
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill


  def serialize_numpy(self, buff, numpy):
    """
    serialize message with numpy array types into buffer
    :param buff: buffer, ``StringIO``
    :param numpy: numpy python module
    """
    try:
      buff.write(_get_struct_h().pack(self.index))
      length = len(self.location)
      buff.write(_struct_I.pack(length))
      for val1 in self.location:
        _x = val1.lable
        length = len(_x)
        if python3 or type(_x) == unicode:
          _x = _x.encode('utf-8')
          length = len(_x)
        buff.write(struct.pack('<I%ss'%length, length, _x))
        _x = val1
        buff.write(_get_struct_4h().pack(_x.top, _x.right, _x.bottom, _x.left))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    try:
      if self.location is None:
        self.location = None
      end = 0
      start = end
      end += 2
      (self.index,) = _get_struct_h().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.location = []
      for i in range(0, length):
        val1 = face_detector.msg.my_list()
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        start = end
        end += length
        if python3:
          val1.lable = str[start:end].decode('utf-8')
        else:
          val1.lable = str[start:end]
        _x = val1
        start = end
        end += 8
        (_x.top, _x.right, _x.bottom, _x.left,) = _get_struct_4h().unpack(str[start:end])
        self.location.append(val1)
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_h = None
def _get_struct_h():
    global _struct_h
    if _struct_h is None:
        _struct_h = struct.Struct("<h")
    return _struct_h
_struct_4h = None
def _get_struct_4h():
    global _struct_4h
    if _struct_4h is None:
        _struct_4h = struct.Struct("<4h")
    return _struct_4h
