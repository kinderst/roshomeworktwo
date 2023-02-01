;; Auto-generated. Do not edit!


(when (boundp 'scki2725_hw2::Timer)
  (if (not (find-package "SCKI2725_HW2"))
    (make-package "SCKI2725_HW2"))
  (shadow 'Timer (find-package "SCKI2725_HW2")))
(unless (find-package "SCKI2725_HW2::TIMER")
  (make-package "SCKI2725_HW2::TIMER"))
(unless (find-package "SCKI2725_HW2::TIMERREQUEST")
  (make-package "SCKI2725_HW2::TIMERREQUEST"))
(unless (find-package "SCKI2725_HW2::TIMERRESPONSE")
  (make-package "SCKI2725_HW2::TIMERRESPONSE"))

(in-package "ROS")





(defclass scki2725_hw2::TimerRequest
  :super ros::object
  :slots (_printing _start ))

(defmethod scki2725_hw2::TimerRequest
  (:init
   (&key
    ((:printing __printing) nil)
    ((:start __start) 0.0)
    )
   (send-super :init)
   (setq _printing __printing)
   (setq _start (float __start))
   self)
  (:printing
   (&optional (__printing :null))
   (if (not (eq __printing :null)) (setq _printing __printing)) _printing)
  (:start
   (&optional __start)
   (if __start (setq _start __start)) _start)
  (:serialization-length
   ()
   (+
    ;; bool _printing
    1
    ;; float64 _start
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _printing
       (if _printing (write-byte -1 s) (write-byte 0 s))
     ;; float64 _start
       (sys::poke _start (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _printing
     (setq _printing (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; float64 _start
     (setq _start (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(defclass scki2725_hw2::TimerResponse
  :super ros::object
  :slots (_end ))

(defmethod scki2725_hw2::TimerResponse
  (:init
   (&key
    ((:end __end) 0.0)
    )
   (send-super :init)
   (setq _end (float __end))
   self)
  (:end
   (&optional __end)
   (if __end (setq _end __end)) _end)
  (:serialization-length
   ()
   (+
    ;; float64 _end
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _end
       (sys::poke _end (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _end
     (setq _end (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(defclass scki2725_hw2::Timer
  :super ros::object
  :slots ())

(setf (get scki2725_hw2::Timer :md5sum-) "0e426c5e8189291ccb09331d326d8d33")
(setf (get scki2725_hw2::Timer :datatype-) "scki2725_hw2/Timer")
(setf (get scki2725_hw2::Timer :request) scki2725_hw2::TimerRequest)
(setf (get scki2725_hw2::Timer :response) scki2725_hw2::TimerResponse)

(defmethod scki2725_hw2::TimerRequest
  (:response () (instance scki2725_hw2::TimerResponse :init)))

(setf (get scki2725_hw2::TimerRequest :md5sum-) "0e426c5e8189291ccb09331d326d8d33")
(setf (get scki2725_hw2::TimerRequest :datatype-) "scki2725_hw2/TimerRequest")
(setf (get scki2725_hw2::TimerRequest :definition-)
      "bool printing
float64 start
---
float64 end
")

(setf (get scki2725_hw2::TimerResponse :md5sum-) "0e426c5e8189291ccb09331d326d8d33")
(setf (get scki2725_hw2::TimerResponse :datatype-) "scki2725_hw2/TimerResponse")
(setf (get scki2725_hw2::TimerResponse :definition-)
      "bool printing
float64 start
---
float64 end
")



(provide :scki2725_hw2/Timer "0e426c5e8189291ccb09331d326d8d33")


