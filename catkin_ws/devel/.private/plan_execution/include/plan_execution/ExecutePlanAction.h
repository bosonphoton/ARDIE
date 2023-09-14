// Generated by gencpp from file plan_execution/ExecutePlanAction.msg
// DO NOT EDIT!


#ifndef PLAN_EXECUTION_MESSAGE_EXECUTEPLANACTION_H
#define PLAN_EXECUTION_MESSAGE_EXECUTEPLANACTION_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <plan_execution/ExecutePlanActionGoal.h>
#include <plan_execution/ExecutePlanActionResult.h>
#include <plan_execution/ExecutePlanActionFeedback.h>

namespace plan_execution
{
template <class ContainerAllocator>
struct ExecutePlanAction_
{
  typedef ExecutePlanAction_<ContainerAllocator> Type;

  ExecutePlanAction_()
    : action_goal()
    , action_result()
    , action_feedback()  {
    }
  ExecutePlanAction_(const ContainerAllocator& _alloc)
    : action_goal(_alloc)
    , action_result(_alloc)
    , action_feedback(_alloc)  {
  (void)_alloc;
    }



   typedef  ::plan_execution::ExecutePlanActionGoal_<ContainerAllocator>  _action_goal_type;
  _action_goal_type action_goal;

   typedef  ::plan_execution::ExecutePlanActionResult_<ContainerAllocator>  _action_result_type;
  _action_result_type action_result;

   typedef  ::plan_execution::ExecutePlanActionFeedback_<ContainerAllocator>  _action_feedback_type;
  _action_feedback_type action_feedback;





  typedef boost::shared_ptr< ::plan_execution::ExecutePlanAction_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::plan_execution::ExecutePlanAction_<ContainerAllocator> const> ConstPtr;

}; // struct ExecutePlanAction_

typedef ::plan_execution::ExecutePlanAction_<std::allocator<void> > ExecutePlanAction;

typedef boost::shared_ptr< ::plan_execution::ExecutePlanAction > ExecutePlanActionPtr;
typedef boost::shared_ptr< ::plan_execution::ExecutePlanAction const> ExecutePlanActionConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::plan_execution::ExecutePlanAction_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::plan_execution::ExecutePlanAction_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::plan_execution::ExecutePlanAction_<ContainerAllocator1> & lhs, const ::plan_execution::ExecutePlanAction_<ContainerAllocator2> & rhs)
{
  return lhs.action_goal == rhs.action_goal &&
    lhs.action_result == rhs.action_result &&
    lhs.action_feedback == rhs.action_feedback;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::plan_execution::ExecutePlanAction_<ContainerAllocator1> & lhs, const ::plan_execution::ExecutePlanAction_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace plan_execution

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::plan_execution::ExecutePlanAction_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::plan_execution::ExecutePlanAction_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::plan_execution::ExecutePlanAction_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::plan_execution::ExecutePlanAction_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::plan_execution::ExecutePlanAction_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::plan_execution::ExecutePlanAction_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::plan_execution::ExecutePlanAction_<ContainerAllocator> >
{
  static const char* value()
  {
    return "0b95ad386f398d190d0962cfe62fd58f";
  }

  static const char* value(const ::plan_execution::ExecutePlanAction_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x0b95ad386f398d19ULL;
  static const uint64_t static_value2 = 0x0d0962cfe62fd58fULL;
};

template<class ContainerAllocator>
struct DataType< ::plan_execution::ExecutePlanAction_<ContainerAllocator> >
{
  static const char* value()
  {
    return "plan_execution/ExecutePlanAction";
  }

  static const char* value(const ::plan_execution::ExecutePlanAction_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::plan_execution::ExecutePlanAction_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======\n"
"\n"
"ExecutePlanActionGoal action_goal\n"
"ExecutePlanActionResult action_result\n"
"ExecutePlanActionFeedback action_feedback\n"
"\n"
"================================================================================\n"
"MSG: plan_execution/ExecutePlanActionGoal\n"
"# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======\n"
"\n"
"Header header\n"
"actionlib_msgs/GoalID goal_id\n"
"ExecutePlanGoal goal\n"
"\n"
"================================================================================\n"
"MSG: std_msgs/Header\n"
"# Standard metadata for higher-level stamped data types.\n"
"# This is generally used to communicate timestamped data \n"
"# in a particular coordinate frame.\n"
"# \n"
"# sequence ID: consecutively increasing ID \n"
"uint32 seq\n"
"#Two-integer timestamp that is expressed as:\n"
"# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')\n"
"# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')\n"
"# time-handling sugar is provided by the client library\n"
"time stamp\n"
"#Frame this data is associated with\n"
"string frame_id\n"
"\n"
"================================================================================\n"
"MSG: actionlib_msgs/GoalID\n"
"# The stamp should store the time at which this goal was requested.\n"
"# It is used by an action server when it tries to preempt all\n"
"# goals that were requested before a certain time\n"
"time stamp\n"
"\n"
"# The id provides a way to associate feedback and\n"
"# result message with specific goal requests. The id\n"
"# specified must be unique.\n"
"string id\n"
"\n"
"\n"
"================================================================================\n"
"MSG: plan_execution/ExecutePlanGoal\n"
"# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======\n"
"AspRule[] aspGoal\n"
"\n"
"================================================================================\n"
"MSG: plan_execution/AspRule\n"
"AspFluent[] head\n"
"AspFluent[] body\n"
"\n"
"================================================================================\n"
"MSG: plan_execution/AspFluent\n"
"string name\n"
"string[] variables\n"
"uint32 timeStep\n"
"\n"
"================================================================================\n"
"MSG: plan_execution/ExecutePlanActionResult\n"
"# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======\n"
"\n"
"Header header\n"
"actionlib_msgs/GoalStatus status\n"
"ExecutePlanResult result\n"
"\n"
"================================================================================\n"
"MSG: actionlib_msgs/GoalStatus\n"
"GoalID goal_id\n"
"uint8 status\n"
"uint8 PENDING         = 0   # The goal has yet to be processed by the action server\n"
"uint8 ACTIVE          = 1   # The goal is currently being processed by the action server\n"
"uint8 PREEMPTED       = 2   # The goal received a cancel request after it started executing\n"
"                            #   and has since completed its execution (Terminal State)\n"
"uint8 SUCCEEDED       = 3   # The goal was achieved successfully by the action server (Terminal State)\n"
"uint8 ABORTED         = 4   # The goal was aborted during execution by the action server due\n"
"                            #    to some failure (Terminal State)\n"
"uint8 REJECTED        = 5   # The goal was rejected by the action server without being processed,\n"
"                            #    because the goal was unattainable or invalid (Terminal State)\n"
"uint8 PREEMPTING      = 6   # The goal received a cancel request after it started executing\n"
"                            #    and has not yet completed execution\n"
"uint8 RECALLING       = 7   # The goal received a cancel request before it started executing,\n"
"                            #    but the action server has not yet confirmed that the goal is canceled\n"
"uint8 RECALLED        = 8   # The goal received a cancel request before it started executing\n"
"                            #    and was successfully cancelled (Terminal State)\n"
"uint8 LOST            = 9   # An action client can determine that a goal is LOST. This should not be\n"
"                            #    sent over the wire by an action server\n"
"\n"
"#Allow for the user to associate a string with GoalStatus for debugging\n"
"string text\n"
"\n"
"\n"
"================================================================================\n"
"MSG: plan_execution/ExecutePlanResult\n"
"# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======\n"
"int32 SUCCEEDED = 1\n"
"int32 FAILED_TO_PLAN = 2\n"
"int32 TOO_MANY_ACTION_FAILURES = 3\n"
"int32 status\n"
"AspFluent final_action\n"
"AspFluent[] plan_remainder\n"
"AspRule[] inconsistent_rules\n"
"string message\n"
"\n"
"================================================================================\n"
"MSG: plan_execution/ExecutePlanActionFeedback\n"
"# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======\n"
"\n"
"Header header\n"
"actionlib_msgs/GoalStatus status\n"
"ExecutePlanFeedback feedback\n"
"\n"
"================================================================================\n"
"MSG: plan_execution/ExecutePlanFeedback\n"
"# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======\n"
"int32 PLAN_CHANGED_EVENT = 1\n"
"int32 ACTION_STARTED_EVENT = 2\n"
"int32 ACTION_ENDED_EVENT = 3\n"
"int32 event_type\n"
"AspFluent[] plan\n"
"\n"
;
  }

  static const char* value(const ::plan_execution::ExecutePlanAction_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::plan_execution::ExecutePlanAction_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.action_goal);
      stream.next(m.action_result);
      stream.next(m.action_feedback);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct ExecutePlanAction_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::plan_execution::ExecutePlanAction_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::plan_execution::ExecutePlanAction_<ContainerAllocator>& v)
  {
    s << indent << "action_goal: ";
    s << std::endl;
    Printer< ::plan_execution::ExecutePlanActionGoal_<ContainerAllocator> >::stream(s, indent + "  ", v.action_goal);
    s << indent << "action_result: ";
    s << std::endl;
    Printer< ::plan_execution::ExecutePlanActionResult_<ContainerAllocator> >::stream(s, indent + "  ", v.action_result);
    s << indent << "action_feedback: ";
    s << std::endl;
    Printer< ::plan_execution::ExecutePlanActionFeedback_<ContainerAllocator> >::stream(s, indent + "  ", v.action_feedback);
  }
};

} // namespace message_operations
} // namespace ros

#endif // PLAN_EXECUTION_MESSAGE_EXECUTEPLANACTION_H
