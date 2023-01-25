; Auto-generated. Do not edit!


(cl:in-package assignment_2_2022-msg)


;//! \htmlinclude PosVel.msg.html

(cl:defclass <PosVel> (roslisp-msg-protocol:ros-message)
  ((msg_pos_x
    :reader msg_pos_x
    :initarg :msg_pos_x
    :type cl:float
    :initform 0.0)
   (msg_pos_y
    :reader msg_pos_y
    :initarg :msg_pos_y
    :type cl:float
    :initform 0.0)
   (msg_vel_x
    :reader msg_vel_x
    :initarg :msg_vel_x
    :type cl:float
    :initform 0.0)
   (msg_vel_y
    :reader msg_vel_y
    :initarg :msg_vel_y
    :type cl:float
    :initform 0.0))
)

(cl:defclass PosVel (<PosVel>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PosVel>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PosVel)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name assignment_2_2022-msg:<PosVel> is deprecated: use assignment_2_2022-msg:PosVel instead.")))

(cl:ensure-generic-function 'msg_pos_x-val :lambda-list '(m))
(cl:defmethod msg_pos_x-val ((m <PosVel>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader assignment_2_2022-msg:msg_pos_x-val is deprecated.  Use assignment_2_2022-msg:msg_pos_x instead.")
  (msg_pos_x m))

(cl:ensure-generic-function 'msg_pos_y-val :lambda-list '(m))
(cl:defmethod msg_pos_y-val ((m <PosVel>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader assignment_2_2022-msg:msg_pos_y-val is deprecated.  Use assignment_2_2022-msg:msg_pos_y instead.")
  (msg_pos_y m))

(cl:ensure-generic-function 'msg_vel_x-val :lambda-list '(m))
(cl:defmethod msg_vel_x-val ((m <PosVel>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader assignment_2_2022-msg:msg_vel_x-val is deprecated.  Use assignment_2_2022-msg:msg_vel_x instead.")
  (msg_vel_x m))

(cl:ensure-generic-function 'msg_vel_y-val :lambda-list '(m))
(cl:defmethod msg_vel_y-val ((m <PosVel>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader assignment_2_2022-msg:msg_vel_y-val is deprecated.  Use assignment_2_2022-msg:msg_vel_y instead.")
  (msg_vel_y m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PosVel>) ostream)
  "Serializes a message object of type '<PosVel>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'msg_pos_x))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'msg_pos_y))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'msg_vel_x))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'msg_vel_y))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PosVel>) istream)
  "Deserializes a message object of type '<PosVel>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'msg_pos_x) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'msg_pos_y) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'msg_vel_x) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'msg_vel_y) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PosVel>)))
  "Returns string type for a message object of type '<PosVel>"
  "assignment_2_2022/PosVel")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PosVel)))
  "Returns string type for a message object of type 'PosVel"
  "assignment_2_2022/PosVel")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PosVel>)))
  "Returns md5sum for a message object of type '<PosVel>"
  "62b77e440a60d59d72cbcf5ad778d584")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PosVel)))
  "Returns md5sum for a message object of type 'PosVel"
  "62b77e440a60d59d72cbcf5ad778d584")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PosVel>)))
  "Returns full string definition for message of type '<PosVel>"
  (cl:format cl:nil "float64 msg_pos_x~%float64 msg_pos_y~%float64 msg_vel_x~%float64 msg_vel_y~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PosVel)))
  "Returns full string definition for message of type 'PosVel"
  (cl:format cl:nil "float64 msg_pos_x~%float64 msg_pos_y~%float64 msg_vel_x~%float64 msg_vel_y~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PosVel>))
  (cl:+ 0
     8
     8
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PosVel>))
  "Converts a ROS message object to a list"
  (cl:list 'PosVel
    (cl:cons ':msg_pos_x (msg_pos_x msg))
    (cl:cons ':msg_pos_y (msg_pos_y msg))
    (cl:cons ':msg_vel_x (msg_vel_x msg))
    (cl:cons ':msg_vel_y (msg_vel_y msg))
))
