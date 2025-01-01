;; Auto-generated. Do not edit!


(when (boundp 'quadrotor_msgs::PolynomialMatrix)
  (if (not (find-package "QUADROTOR_MSGS"))
    (make-package "QUADROTOR_MSGS"))
  (shadow 'PolynomialMatrix (find-package "QUADROTOR_MSGS")))
(unless (find-package "QUADROTOR_MSGS::POLYNOMIALMATRIX")
  (make-package "QUADROTOR_MSGS::POLYNOMIALMATRIX"))

(in-package "ROS")
;;//! \htmlinclude PolynomialMatrix.msg.html


(defclass quadrotor_msgs::PolynomialMatrix
  :super ros::object
  :slots (_num_order _num_dim _data _duration ))

(defmethod quadrotor_msgs::PolynomialMatrix
  (:init
   (&key
    ((:num_order __num_order) 0)
    ((:num_dim __num_dim) 0)
    ((:data __data) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:duration __duration) 0.0)
    )
   (send-super :init)
   (setq _num_order (round __num_order))
   (setq _num_dim (round __num_dim))
   (setq _data __data)
   (setq _duration (float __duration))
   self)
  (:num_order
   (&optional __num_order)
   (if __num_order (setq _num_order __num_order)) _num_order)
  (:num_dim
   (&optional __num_dim)
   (if __num_dim (setq _num_dim __num_dim)) _num_dim)
  (:data
   (&optional __data)
   (if __data (setq _data __data)) _data)
  (:duration
   (&optional __duration)
   (if __duration (setq _duration __duration)) _duration)
  (:serialization-length
   ()
   (+
    ;; uint32 _num_order
    4
    ;; uint32 _num_dim
    4
    ;; float64[] _data
    (* 8    (length _data)) 4
    ;; float64 _duration
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint32 _num_order
       (write-long _num_order s)
     ;; uint32 _num_dim
       (write-long _num_dim s)
     ;; float64[] _data
     (write-long (length _data) s)
     (dotimes (i (length _data))
       (sys::poke (elt _data i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64 _duration
       (sys::poke _duration (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint32 _num_order
     (setq _num_order (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _num_dim
     (setq _num_dim (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float64[] _data
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _data (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _data i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; float64 _duration
     (setq _duration (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get quadrotor_msgs::PolynomialMatrix :md5sum-) "33f3d05d20db7dedec1bc61efdd169fc")
(setf (get quadrotor_msgs::PolynomialMatrix :datatype-) "quadrotor_msgs/PolynomialMatrix")
(setf (get quadrotor_msgs::PolynomialMatrix :definition-)
      "# the order of trajectory.
uint32 num_order
uint32 num_dim

# the polynomial coecfficients of the trajectory.

float64[] data
float64 duration

")



(provide :quadrotor_msgs/PolynomialMatrix "33f3d05d20db7dedec1bc61efdd169fc")


