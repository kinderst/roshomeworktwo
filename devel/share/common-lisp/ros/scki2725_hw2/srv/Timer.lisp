; Auto-generated. Do not edit!


(cl:in-package scki2725_hw2-srv)


;//! \htmlinclude Timer-request.msg.html

(cl:defclass <Timer-request> (roslisp-msg-protocol:ros-message)
  ((printing
    :reader printing
    :initarg :printing
    :type cl:boolean
    :initform cl:nil))
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
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Timer-request>) ostream)
  "Serializes a message object of type '<Timer-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'printing) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Timer-request>) istream)
  "Deserializes a message object of type '<Timer-request>"
    (cl:setf (cl:slot-value msg 'printing) (cl:not (cl:zerop (cl:read-byte istream))))
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
  "b68471fcd0db25b9058c843e54654d6a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Timer-request)))
  "Returns md5sum for a message object of type 'Timer-request"
  "b68471fcd0db25b9058c843e54654d6a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Timer-request>)))
  "Returns full string definition for message of type '<Timer-request>"
  (cl:format cl:nil "bool printing~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Timer-request)))
  "Returns full string definition for message of type 'Timer-request"
  (cl:format cl:nil "bool printing~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Timer-request>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Timer-request>))
  "Converts a ROS message object to a list"
  (cl:list 'Timer-request
    (cl:cons ':printing (printing msg))
))
;//! \htmlinclude Timer-response.msg.html

(cl:defclass <Timer-response> (roslisp-msg-protocol:ros-message)
  ((clock
    :reader clock
    :initarg :clock
    :type cl:float
    :initform 0.0)
   (stamp
    :reader stamp
    :initarg :stamp
    :type cl:real
    :initform 0))
)

(cl:defclass Timer-response (<Timer-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Timer-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Timer-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name scki2725_hw2-srv:<Timer-response> is deprecated: use scki2725_hw2-srv:Timer-response instead.")))

(cl:ensure-generic-function 'clock-val :lambda-list '(m))
(cl:defmethod clock-val ((m <Timer-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader scki2725_hw2-srv:clock-val is deprecated.  Use scki2725_hw2-srv:clock instead.")
  (clock m))

(cl:ensure-generic-function 'stamp-val :lambda-list '(m))
(cl:defmethod stamp-val ((m <Timer-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader scki2725_hw2-srv:stamp-val is deprecated.  Use scki2725_hw2-srv:stamp instead.")
  (stamp m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Timer-response>) ostream)
  "Serializes a message object of type '<Timer-response>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'clock))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((__sec (cl:floor (cl:slot-value msg 'stamp)))
        (__nsec (cl:round (cl:* 1e9 (cl:- (cl:slot-value msg 'stamp) (cl:floor (cl:slot-value msg 'stamp)))))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 0) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __nsec) ostream))
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
    (cl:setf (cl:slot-value msg 'clock) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((__sec 0) (__nsec 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 0) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __nsec) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'stamp) (cl:+ (cl:coerce __sec 'cl:double-float) (cl:/ __nsec 1e9))))
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
  "b68471fcd0db25b9058c843e54654d6a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Timer-response)))
  "Returns md5sum for a message object of type 'Timer-response"
  "b68471fcd0db25b9058c843e54654d6a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Timer-response>)))
  "Returns full string definition for message of type '<Timer-response>"
  (cl:format cl:nil "float64 clock~%time stamp~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Timer-response)))
  "Returns full string definition for message of type 'Timer-response"
  (cl:format cl:nil "float64 clock~%time stamp~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Timer-response>))
  (cl:+ 0
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Timer-response>))
  "Converts a ROS message object to a list"
  (cl:list 'Timer-response
    (cl:cons ':clock (clock msg))
    (cl:cons ':stamp (stamp msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'Timer)))
  'Timer-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'Timer)))
  'Timer-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Timer)))
  "Returns string type for a service object of type '<Timer>"
  "scki2725_hw2/Timer")