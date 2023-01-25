;; Auto-generated. Do not edit!


(when (boundp 'assignment_2_2022::PosVel)
  (if (not (find-package "ASSIGNMENT_2_2022"))
    (make-package "ASSIGNMENT_2_2022"))
  (shadow 'PosVel (find-package "ASSIGNMENT_2_2022")))
(unless (find-package "ASSIGNMENT_2_2022::POSVEL")
  (make-package "ASSIGNMENT_2_2022::POSVEL"))

(in-package "ROS")
;;//! \htmlinclude PosVel.msg.html


(defclass assignment_2_2022::PosVel
  :super ros::object
  :slots (_msg_pos_x _msg_pos_y _msg_vel_x _msg_vel_y ))

(defmethod assignment_2_2022::PosVel
  (:init
   (&key
    ((:msg_pos_x __msg_pos_x) 0.0)
    ((:msg_pos_y __msg_pos_y) 0.0)
    ((:msg_vel_x __msg_vel_x) 0.0)
    ((:msg_vel_y __msg_vel_y) 0.0)
    )
   (send-super :init)
   (setq _msg_pos_x (float __msg_pos_x))
   (setq _msg_pos_y (float __msg_pos_y))
   (setq _msg_vel_x (float __msg_vel_x))
   (setq _msg_vel_y (float __msg_vel_y))
   self)
  (:msg_pos_x
   (&optional __msg_pos_x)
   (if __msg_pos_x (setq _msg_pos_x __msg_pos_x)) _msg_pos_x)
  (:msg_pos_y
   (&optional __msg_pos_y)
   (if __msg_pos_y (setq _msg_pos_y __msg_pos_y)) _msg_pos_y)
  (:msg_vel_x
   (&optional __msg_vel_x)
   (if __msg_vel_x (setq _msg_vel_x __msg_vel_x)) _msg_vel_x)
  (:msg_vel_y
   (&optional __msg_vel_y)
   (if __msg_vel_y (setq _msg_vel_y __msg_vel_y)) _msg_vel_y)
  (:serialization-length
   ()
   (+
    ;; float64 _msg_pos_x
    8
    ;; float64 _msg_pos_y
    8
    ;; float64 _msg_vel_x
    8
    ;; float64 _msg_vel_y
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _msg_pos_x
       (sys::poke _msg_pos_x (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _msg_pos_y
       (sys::poke _msg_pos_y (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _msg_vel_x
       (sys::poke _msg_vel_x (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _msg_vel_y
       (sys::poke _msg_vel_y (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _msg_pos_x
     (setq _msg_pos_x (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _msg_pos_y
     (setq _msg_pos_y (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _msg_vel_x
     (setq _msg_vel_x (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _msg_vel_y
     (setq _msg_vel_y (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get assignment_2_2022::PosVel :md5sum-) "62b77e440a60d59d72cbcf5ad778d584")
(setf (get assignment_2_2022::PosVel :datatype-) "assignment_2_2022/PosVel")
(setf (get assignment_2_2022::PosVel :definition-)
      "float64 msg_pos_x
float64 msg_pos_y
float64 msg_vel_x
float64 msg_vel_y

")



(provide :assignment_2_2022/PosVel "62b77e440a60d59d72cbcf5ad778d584")


