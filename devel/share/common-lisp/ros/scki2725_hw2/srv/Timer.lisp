; Auto-generated. Do not edit!


(cl:in-package scki2725_hw2-srv)


;//! \htmlinclude Timer-request.msg.html

(cl:defclass <Timer-request> (roslisp-msg-protocol:ros-message)
  ((printing
    :reader printing
    :initarg :printing
    :type cl:boolean
    :initform cl:nil)
   (start
    :reader start
    :initarg :start
    :type cl:float
    :initform 0.0))
)

(cl:defclass Timer-request (<Timer-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Timer-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Timer-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name scki2725_hw2-srv:<Timer-request> is deprecated: use scki2725_hw2-srv:Timer-request instead.")))

(cl:ensure-generic-function 'printing-val :lambda-list '(m))
(cl:defmethod printing-val ((m <Timer-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader scki2725_hw2-srv:printing-val is deprecated.  Use scki2725_hw2-srv:printing instead.")
  (printing m))

(cl:ensure-generic-function 'start-val :lambda-list '(m))
(cl:defmethod start-val ((m <Timer-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader scki2725_hw2-srv:start-val is deprecated.  Use scki2725_hw2-srv:start instead.")
  (start m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Timer-request>) ostream)
  "Serializes a message object of type '<Timer-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'printing) 1 0)) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'start))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Timer-request>) istream)
  "Deserializes a message object of type '<Timer-request>"
    (cl:setf (cl:slot-value msg 'printing) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'start) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Timer-request>)))
  "Returns string type for a service object of type '<Timer-request>"
  "scki2725_hw2/TimerRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Timer-request)))
  "Returns string type for a service object of type 'Timer-request"
  "scki2725_hw2/TimerRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Timer-request>)))
  "Returns md5sum for a message object of type '<Timer-request>"
  "0e426c5e8189291ccb09331d326d8d33")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Timer-request)))
  "Returns md5sum for a message object of type 'Timer-request"
  "0e426c5e8189291ccb09331d326d8d33")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Timer-request>)))
  "Returns full string definition for message of type '<Timer-request>"
  (cl:format cl:nil "bool printing~%float64 start~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Timer-request)))
  "Returns full string definition for message of type 'Timer-request"
  (cl:format cl:nil "bool printing~%float64 start~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Timer-request>))
  (cl:+ 0
     1
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Timer-request>))
  "Converts a ROS message object to a list"
  (cl:list 'Timer-request
    (cl:cons ':printing (printing msg))
    (cl:cons ':start (start msg))
))
;//! \htmlinclude Timer-response.msg.html

(cl:defclass <Timer-response> (roslisp-msg-protocol:ros-message)
  ((end
    :reader end
    :initarg :end
    :type cl:float
    :initform 0.0))
)

(cl:defclass Timer-response (<Timer-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Timer-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Timer-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name scki2725_hw2-srv:<Timer-response> is deprecated: use scki2725_hw2-srv:Timer-response instead.")))

(cl:ensure-generic-function 'end-val :lambda-list '(m))
(cl:defmethod end-val ((m <Timer-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader scki2725_hw2-srv:end-val is deprecated.  Use scki2725_hw2-srv:end instead.")
  (end m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Timer-response>) ostream)
  "Serializes a message object of type '<Timer-response>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'end))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Timer-response>) istream)
  "Deserializes a message object of type '<Timer-response>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'end) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Timer-response>)))
  "Returns string type for a service object of type '<Timer-response>"
  "scki2725_hw2/TimerResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Timer-response)))
  "Returns string type for a service object of type 'Timer-response"
  "scki2725_hw2/TimerResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Timer-response>)))
  "Returns md5sum for a message object of type '<Timer-response>"
  "0e426c5e8189291ccb09331d326d8d33")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Timer-response)))
  "Returns md5sum for a message object of type 'Timer-response"
  "0e426c5e8189291ccb09331d326d8d33")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Timer-response>)))
  "Returns full string definition for message of type '<Timer-response>"
  (cl:format cl:nil "float64 end~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Timer-response)))
  "Returns full string definition for message of type 'Timer-response"
  (cl:format cl:nil "float64 end~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Timer-response>))
  (cl:+ 0
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Timer-response>))
  "Converts a ROS message object to a list"
  (cl:list 'Timer-response
    (cl:cons ':end (end msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'Timer)))
  'Timer-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'Timer)))
  'Timer-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Timer)))
  "Returns string type for a service object of type '<Timer>"
  "scki2725_hw2/Timer")