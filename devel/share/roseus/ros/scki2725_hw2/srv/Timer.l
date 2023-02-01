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
  :slots (_printing ))

(defmethod scki2725_hw2::TimerRequest
  (:init
   (&key
    ((:printing __printing) nil)
    )
   (send-super :init)
   (setq _printing __printing)
   self)
  (:printing
   (&optional (__printing :null))
   (if (not (eq __printing :null)) (setq _printing __printing)) _printing)
  (:serialization-length
   ()
   (+
    ;; bool _printing
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _printing
       (if _printing (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _printing
     (setq _printing (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass scki2725_hw2::TimerResponse
  :super ros::object
  :slots (_clock _stamp ))

(defmethod scki2725_hw2::TimerResponse
  (:init
   (&key
    ((:clock __clock) 0.0)
    ((:stamp __stamp) (instance ros::time :init))
    )
   (send-super :init)
   (setq _clock (float __clock))
   (setq _stamp __stamp)
   self)
  (:clock
   (&optional __clock)
   (if __clock (setq _clock __clock)) _clock)
  (:stamp
   (&optional __stamp)
   (if __stamp (setq _stamp __stamp)) _stamp)
  (:serialization-length
   ()
   (+
    ;; float64 _clock
    8
    ;; time _stamp
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _clock
       (sys::poke _clock (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; time _stamp
       (write-long (send _stamp :sec) s) (write-long (send _stamp :nsec) s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _clock
     (setq _clock (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; time _stamp
     (send _stamp :sec (sys::peek buf ptr- :integer)) (incf ptr- 4)  (send _stamp :nsec (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass scki2725_hw2::Timer
  :super ros::object
  :slots ())

(setf (get scki2725_hw2::Timer :md5sum-) "b68471fcd0db25b9058c843e54654d6a")
(setf (get scki2725_hw2::Timer :datatype-) "scki2725_hw2/Timer")
(setf (get scki2725_hw2::Timer :request) scki2725_hw2::TimerRequest)
(setf (get scki2725_hw2::Timer :response) scki2725_hw2::TimerResponse)

(defmethod scki2725_hw2::TimerRequest
  (:response () (instance scki2725_hw2::TimerResponse :init)))

(setf (get scki2725_hw2::TimerRequest :md5sum-) "b68471fcd0db25b9058c843e54654d6a")
(setf (get scki2725_hw2::TimerRequest :datatype-) "scki2725_hw2/TimerRequest")
(setf (get scki2725_hw2::TimerRequest :definition-)
      "bool printing
---
float64 clock
time stamp
")

(setf (get scki2725_hw2::TimerResponse :md5sum-) "b68471fcd0db25b9058c843e54654d6a")
(setf (get scki2725_hw2::TimerResponse :datatype-) "scki2725_hw2/TimerResponse")
(setf (get scki2725_hw2::TimerResponse :definition-)
      "bool printing
---
float64 clock
time stamp
")



(provide :scki2725_hw2/Timer "b68471fcd0db25b9058c843e54654d6a")


