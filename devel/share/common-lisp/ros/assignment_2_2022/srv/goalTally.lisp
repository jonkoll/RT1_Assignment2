; Auto-generated. Do not edit!


(cl:in-package assignment_2_2022-srv)


;//! \htmlinclude goalTally-request.msg.html

(cl:defclass <goalTally-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass goalTally-request (<goalTally-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <goalTally-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'goalTally-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name assignment_2_2022-srv:<goalTally-request> is deprecated: use assignment_2_2022-srv:goalTally-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <goalTally-request>) ostream)
  "Serializes a message object of type '<goalTally-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <goalTally-request>) istream)
  "Deserializes a message object of type '<goalTally-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<goalTally-request>)))
  "Returns string type for a service object of type '<goalTally-request>"
  "assignment_2_2022/goalTallyRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'goalTally-request)))
  "Returns string type for a service object of type 'goalTally-request"
  "assignment_2_2022/goalTallyRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<goalTally-request>)))
  "Returns md5sum for a message object of type '<goalTally-request>"
  "c3b2d0cebb6acdd5ec152404b217af96")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'goalTally-request)))
  "Returns md5sum for a message object of type 'goalTally-request"
  "c3b2d0cebb6acdd5ec152404b217af96")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<goalTally-request>)))
  "Returns full string definition for message of type '<goalTally-request>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'goalTally-request)))
  "Returns full string definition for message of type 'goalTally-request"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <goalTally-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <goalTally-request>))
  "Converts a ROS message object to a list"
  (cl:list 'goalTally-request
))
;//! \htmlinclude goalTally-response.msg.html

(cl:defclass <goalTally-response> (roslisp-msg-protocol:ros-message)
  ((num_reached
    :reader num_reached
    :initarg :num_reached
    :type cl:integer
    :initform 0)
   (num_cancelled
    :reader num_cancelled
    :initarg :num_cancelled
    :type cl:integer
    :initform 0))
)

(cl:defclass goalTally-response (<goalTally-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <goalTally-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'goalTally-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name assignment_2_2022-srv:<goalTally-response> is deprecated: use assignment_2_2022-srv:goalTally-response instead.")))

(cl:ensure-generic-function 'num_reached-val :lambda-list '(m))
(cl:defmethod num_reached-val ((m <goalTally-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader assignment_2_2022-srv:num_reached-val is deprecated.  Use assignment_2_2022-srv:num_reached instead.")
  (num_reached m))

(cl:ensure-generic-function 'num_cancelled-val :lambda-list '(m))
(cl:defmethod num_cancelled-val ((m <goalTally-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader assignment_2_2022-srv:num_cancelled-val is deprecated.  Use assignment_2_2022-srv:num_cancelled instead.")
  (num_cancelled m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <goalTally-response>) ostream)
  "Serializes a message object of type '<goalTally-response>"
  (cl:let* ((signed (cl:slot-value msg 'num_reached)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'num_cancelled)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <goalTally-response>) istream)
  "Deserializes a message object of type '<goalTally-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'num_reached) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'num_cancelled) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<goalTally-response>)))
  "Returns string type for a service object of type '<goalTally-response>"
  "assignment_2_2022/goalTallyResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'goalTally-response)))
  "Returns string type for a service object of type 'goalTally-response"
  "assignment_2_2022/goalTallyResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<goalTally-response>)))
  "Returns md5sum for a message object of type '<goalTally-response>"
  "c3b2d0cebb6acdd5ec152404b217af96")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'goalTally-response)))
  "Returns md5sum for a message object of type 'goalTally-response"
  "c3b2d0cebb6acdd5ec152404b217af96")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<goalTally-response>)))
  "Returns full string definition for message of type '<goalTally-response>"
  (cl:format cl:nil "int32 num_reached~%int32 num_cancelled~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'goalTally-response)))
  "Returns full string definition for message of type 'goalTally-response"
  (cl:format cl:nil "int32 num_reached~%int32 num_cancelled~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <goalTally-response>))
  (cl:+ 0
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <goalTally-response>))
  "Converts a ROS message object to a list"
  (cl:list 'goalTally-response
    (cl:cons ':num_reached (num_reached msg))
    (cl:cons ':num_cancelled (num_cancelled msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'goalTally)))
  'goalTally-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'goalTally)))
  'goalTally-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'goalTally)))
  "Returns string type for a service object of type '<goalTally>"
  "assignment_2_2022/goalTally")