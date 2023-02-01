;; Auto-generated. Do not edit!


(when (boundp 'scki2725_hw2::TimeCheck)
  (if (not (find-package "SCKI2725_HW2"))
    (make-package "SCKI2725_HW2"))
  (shadow 'TimeCheck (find-package "SCKI2725_HW2")))
(unless (find-package "SCKI2725_HW2::TIMECHECK")
  (make-package "SCKI2725_HW2::TIMECHECK"))

(in-package "ROS")
;;//! \htmlinclude TimeCheck.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass scki2725_hw2::TimeCheck
  :super ros::object
  :slots (_header _checking ))

(defmethod scki2725_hw2::TimeCheck
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:checking __checking) 0.0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _checking (float __checking))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:checking
   (&optional __checking)
   (if __checking (setq _checking __checking)) _checking)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; float64 _checking
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; float64 _checking
       (sys::poke _checking (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; float64 _checking
     (setq _checking (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get scki2725_hw2::TimeCheck :md5sum-) "9a43739a327e2a965e0fd1f1de9acbb9")
(setf (get scki2725_hw2::TimeCheck :datatype-) "scki2725_hw2/TimeCheck")
(setf (get scki2725_hw2::TimeCheck :definition-)
      "Header header
float64 checking
================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

")



(provide :scki2725_hw2/TimeCheck "9a43739a327e2a965e0fd1f1de9acbb9")


