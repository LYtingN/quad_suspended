;; Auto-generated. Do not edit!


(when (boundp 'quadrotor_msgs::PolynomialTraj)
  (if (not (find-package "QUADROTOR_MSGS"))
    (make-package "QUADROTOR_MSGS"))
  (shadow 'PolynomialTraj (find-package "QUADROTOR_MSGS")))
(unless (find-package "QUADROTOR_MSGS::POLYNOMIALTRAJ")
  (make-package "QUADROTOR_MSGS::POLYNOMIALTRAJ"))

(in-package "ROS")
;;//! \htmlinclude PolynomialTraj.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(intern "*ACTION_ADD*" (find-package "QUADROTOR_MSGS::POLYNOMIALTRAJ"))
(shadow '*ACTION_ADD* (find-package "QUADROTOR_MSGS::POLYNOMIALTRAJ"))
(defconstant quadrotor_msgs::PolynomialTraj::*ACTION_ADD* 1)
(intern "*ACTION_ABORT*" (find-package "QUADROTOR_MSGS::POLYNOMIALTRAJ"))
(shadow '*ACTION_ABORT* (find-package "QUADROTOR_MSGS::POLYNOMIALTRAJ"))
(defconstant quadrotor_msgs::PolynomialTraj::*ACTION_ABORT* 2)
(intern "*ACTION_WARN_START*" (find-package "QUADROTOR_MSGS::POLYNOMIALTRAJ"))
(shadow '*ACTION_WARN_START* (find-package "QUADROTOR_MSGS::POLYNOMIALTRAJ"))
(defconstant quadrotor_msgs::PolynomialTraj::*ACTION_WARN_START* 3)
(intern "*ACTION_WARN_FINAL*" (find-package "QUADROTOR_MSGS::POLYNOMIALTRAJ"))
(shadow '*ACTION_WARN_FINAL* (find-package "QUADROTOR_MSGS::POLYNOMIALTRAJ"))
(defconstant quadrotor_msgs::PolynomialTraj::*ACTION_WARN_FINAL* 4)
(intern "*ACTION_WARN_IMPOSSIBLE*" (find-package "QUADROTOR_MSGS::POLYNOMIALTRAJ"))
(shadow '*ACTION_WARN_IMPOSSIBLE* (find-package "QUADROTOR_MSGS::POLYNOMIALTRAJ"))
(defconstant quadrotor_msgs::PolynomialTraj::*ACTION_WARN_IMPOSSIBLE* 5)

(defun quadrotor_msgs::PolynomialTraj-to-symbol (const)
  (cond
        ((= const 1) 'quadrotor_msgs::PolynomialTraj::*ACTION_ADD*)
        ((= const 2) 'quadrotor_msgs::PolynomialTraj::*ACTION_ABORT*)
        ((= const 3) 'quadrotor_msgs::PolynomialTraj::*ACTION_WARN_START*)
        ((= const 4) 'quadrotor_msgs::PolynomialTraj::*ACTION_WARN_FINAL*)
        ((= const 5) 'quadrotor_msgs::PolynomialTraj::*ACTION_WARN_IMPOSSIBLE*)
        (t nil)))

(defclass quadrotor_msgs::PolynomialTraj
  :super ros::object
  :slots (_header _trajectory_id _action _trajectory ))

(defmethod quadrotor_msgs::PolynomialTraj
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:trajectory_id __trajectory_id) 0)
    ((:action __action) 0)
    ((:trajectory __trajectory) ())
    )
   (send-super :init)
   (setq _header __header)
   (setq _trajectory_id (round __trajectory_id))
   (setq _action (round __action))
   (setq _trajectory __trajectory)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:trajectory_id
   (&optional __trajectory_id)
   (if __trajectory_id (setq _trajectory_id __trajectory_id)) _trajectory_id)
  (:action
   (&optional __action)
   (if __action (setq _action __action)) _action)
  (:trajectory
   (&rest __trajectory)
   (if (keywordp (car __trajectory))
       (send* _trajectory __trajectory)
     (progn
       (if __trajectory (setq _trajectory (car __trajectory)))
       _trajectory)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; uint32 _trajectory_id
    4
    ;; uint32 _action
    4
    ;; quadrotor_msgs/PolynomialMatrix[] _trajectory
    (apply #'+ (send-all _trajectory :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; uint32 _trajectory_id
       (write-long _trajectory_id s)
     ;; uint32 _action
       (write-long _action s)
     ;; quadrotor_msgs/PolynomialMatrix[] _trajectory
     (write-long (length _trajectory) s)
     (dolist (elem _trajectory)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; uint32 _trajectory_id
     (setq _trajectory_id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _action
     (setq _action (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; quadrotor_msgs/PolynomialMatrix[] _trajectory
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _trajectory (let (r) (dotimes (i n) (push (instance quadrotor_msgs::PolynomialMatrix :init) r)) r))
     (dolist (elem- _trajectory)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get quadrotor_msgs::PolynomialTraj :md5sum-) "953704bac8e4c900f7bb35217887d6c4")
(setf (get quadrotor_msgs::PolynomialTraj :datatype-) "quadrotor_msgs/PolynomialTraj")
(setf (get quadrotor_msgs::PolynomialTraj :definition-)
      "Header header

# the trajectory id, starts from \"1\".
uint32 trajectory_id

# the action command for trajectory server.
uint32 ACTION_ADD           =   1
uint32 ACTION_ABORT         =   2
uint32 ACTION_WARN_START           =   3
uint32 ACTION_WARN_FINAL           =   4
uint32 ACTION_WARN_IMPOSSIBLE      =   5
uint32 action

# the order of trajectory.
quadrotor_msgs/PolynomialMatrix[] trajectory 

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

================================================================================
MSG: quadrotor_msgs/PolynomialMatrix
# the order of trajectory.
uint32 num_order
uint32 num_dim

# the polynomial coecfficients of the trajectory.

float64[] data
float64 duration

")



(provide :quadrotor_msgs/PolynomialTraj "953704bac8e4c900f7bb35217887d6c4")


