; Auto-generated. Do not edit!


(cl:in-package scki2725_hw2-msg)


;//! \htmlinclude TimeCheck.msg.html

(cl:defclass <TimeCheck> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (checking
    :reader checking
    :initarg :checking
    :type cl:float
    :initform 0.0))
)

(cl:defclass TimeCheck (<TimeCheck>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TimeCheck>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TimeCheck)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name scki2725_hw2-msg:<TimeCheck> is deprecated: use scki2725_hw2-msg:TimeCheck instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <TimeCheck>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader scki2725_hw2-msg:header-val is deprecated.  Use scki2725_hw2-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'checking-val :lambda-list '(m))
(cl:defmethod checking-val ((m <TimeCheck>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader scki2725_hw2-msg:checking-val is deprecated.  Use scki2725_hw2-msg:checking instead.")
  (checking m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TimeCheck>) ostream)
  "Serializes a message object of type '<TimeCheck>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'checking))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TimeCheck>) istream)
  "Deserializes a message object of type '<TimeCheck>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'checking) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TimeCheck>)))
  "Returns string type for a message object of type '<TimeCheck>"
  "scki2725_hw2/TimeCheck")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TimeCheck)))
  "Returns string type for a message object of type 'TimeCheck"
  "scki2725_hw2/TimeCheck")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TimeCheck>)))
  "Returns md5sum for a message object of type '<TimeCheck>"
  "9a43739a327e2a965e0fd1f1de9acbb9")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TimeCheck)))
  "Returns md5sum for a message object of type 'TimeCheck"
  "9a43739a327e2a965e0fd1f1de9acbb9")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TimeCheck>)))
  "Returns full string definition for message of type '<TimeCheck>"
  (cl:format cl:nil "Header header~%float64 checking~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TimeCheck)))
  "Returns full string definition for message of type 'TimeCheck"
  (cl:format cl:nil "Header header~%float64 checking~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TimeCheck>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TimeCheck>))
  "Converts a ROS message object to a list"
  (cl:list 'TimeCheck
    (cl:cons ':header (header msg))
    (cl:cons ':checking (checking msg))
))
