;; Auto-generated. Do not edit!


(when (boundp 'assignment_2_2022::goalTally)
  (if (not (find-package "ASSIGNMENT_2_2022"))
    (make-package "ASSIGNMENT_2_2022"))
  (shadow 'goalTally (find-package "ASSIGNMENT_2_2022")))
(unless (find-package "ASSIGNMENT_2_2022::GOALTALLY")
  (make-package "ASSIGNMENT_2_2022::GOALTALLY"))
(unless (find-package "ASSIGNMENT_2_2022::GOALTALLYREQUEST")
  (make-package "ASSIGNMENT_2_2022::GOALTALLYREQUEST"))
(unless (find-package "ASSIGNMENT_2_2022::GOALTALLYRESPONSE")
  (make-package "ASSIGNMENT_2_2022::GOALTALLYRESPONSE"))

(in-package "ROS")





(defclass assignment_2_2022::goalTallyRequest
  :super ros::object
  :slots ())

(defmethod assignment_2_2022::goalTallyRequest
  (:init
   (&key
    )
   (send-super :init)
   self)
  (:serialization-length
   ()
   (+
    0
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;;
   self)
  )

(defclass assignment_2_2022::goalTallyResponse
  :super ros::object
  :slots (_num_reached _num_cancelled ))

(defmethod assignment_2_2022::goalTallyResponse
  (:init
   (&key
    ((:num_reached __num_reached) 0)
    ((:num_cancelled __num_cancelled) 0)
    )
   (send-super :init)
   (setq _num_reached (round __num_reached))
   (setq _num_cancelled (round __num_cancelled))
   self)
  (:num_reached
   (&optional __num_reached)
   (if __num_reached (setq _num_reached __num_reached)) _num_reached)
  (:num_cancelled
   (&optional __num_cancelled)
   (if __num_cancelled (setq _num_cancelled __num_cancelled)) _num_cancelled)
  (:serialization-length
   ()
   (+
    ;; int32 _num_reached
    4
    ;; int32 _num_cancelled
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _num_reached
       (write-long _num_reached s)
     ;; int32 _num_cancelled
       (write-long _num_cancelled s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _num_reached
     (setq _num_reached (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _num_cancelled
     (setq _num_cancelled (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass assignment_2_2022::goalTally
  :super ros::object
  :slots ())

(setf (get assignment_2_2022::goalTally :md5sum-) "c3b2d0cebb6acdd5ec152404b217af96")
(setf (get assignment_2_2022::goalTally :datatype-) "assignment_2_2022/goalTally")
(setf (get assignment_2_2022::goalTally :request) assignment_2_2022::goalTallyRequest)
(setf (get assignment_2_2022::goalTally :response) assignment_2_2022::goalTallyResponse)

(defmethod assignment_2_2022::goalTallyRequest
  (:response () (instance assignment_2_2022::goalTallyResponse :init)))

(setf (get assignment_2_2022::goalTallyRequest :md5sum-) "c3b2d0cebb6acdd5ec152404b217af96")
(setf (get assignment_2_2022::goalTallyRequest :datatype-) "assignment_2_2022/goalTallyRequest")
(setf (get assignment_2_2022::goalTallyRequest :definition-)
      "---
int32 num_reached
int32 num_cancelled

")

(setf (get assignment_2_2022::goalTallyResponse :md5sum-) "c3b2d0cebb6acdd5ec152404b217af96")
(setf (get assignment_2_2022::goalTallyResponse :datatype-) "assignment_2_2022/goalTallyResponse")
(setf (get assignment_2_2022::goalTallyResponse :definition-)
      "---
int32 num_reached
int32 num_cancelled

")



(provide :assignment_2_2022/goalTally "c3b2d0cebb6acdd5ec152404b217af96")


