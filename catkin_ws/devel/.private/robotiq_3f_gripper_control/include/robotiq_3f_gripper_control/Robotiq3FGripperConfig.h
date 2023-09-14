//#line 2 "/opt/ros/melodic/share/dynamic_reconfigure/cmake/../templates/ConfigType.h.template"
// *********************************************************
//
// File autogenerated for the robotiq_3f_gripper_control package
// by the dynamic_reconfigure package.
// Please do not edit.
//
// ********************************************************/

#ifndef __robotiq_3f_gripper_control__ROBOTIQ3FGRIPPERCONFIG_H__
#define __robotiq_3f_gripper_control__ROBOTIQ3FGRIPPERCONFIG_H__

#if __cplusplus >= 201103L
#define DYNAMIC_RECONFIGURE_FINAL final
#else
#define DYNAMIC_RECONFIGURE_FINAL
#endif

#include <dynamic_reconfigure/config_tools.h>
#include <limits>
#include <ros/node_handle.h>
#include <dynamic_reconfigure/ConfigDescription.h>
#include <dynamic_reconfigure/ParamDescription.h>
#include <dynamic_reconfigure/Group.h>
#include <dynamic_reconfigure/config_init_mutex.h>
#include <boost/any.hpp>

namespace robotiq_3f_gripper_control
{
  class Robotiq3FGripperConfigStatics;

  class Robotiq3FGripperConfig
  {
  public:
    class AbstractParamDescription : public dynamic_reconfigure::ParamDescription
    {
    public:
      AbstractParamDescription(std::string n, std::string t, uint32_t l,
          std::string d, std::string e)
      {
        name = n;
        type = t;
        level = l;
        description = d;
        edit_method = e;
      }

      virtual void clamp(Robotiq3FGripperConfig &config, const Robotiq3FGripperConfig &max, const Robotiq3FGripperConfig &min) const = 0;
      virtual void calcLevel(uint32_t &level, const Robotiq3FGripperConfig &config1, const Robotiq3FGripperConfig &config2) const = 0;
      virtual void fromServer(const ros::NodeHandle &nh, Robotiq3FGripperConfig &config) const = 0;
      virtual void toServer(const ros::NodeHandle &nh, const Robotiq3FGripperConfig &config) const = 0;
      virtual bool fromMessage(const dynamic_reconfigure::Config &msg, Robotiq3FGripperConfig &config) const = 0;
      virtual void toMessage(dynamic_reconfigure::Config &msg, const Robotiq3FGripperConfig &config) const = 0;
      virtual void getValue(const Robotiq3FGripperConfig &config, boost::any &val) const = 0;
    };

    typedef boost::shared_ptr<AbstractParamDescription> AbstractParamDescriptionPtr;
    typedef boost::shared_ptr<const AbstractParamDescription> AbstractParamDescriptionConstPtr;

    // Final keyword added to class because it has virtual methods and inherits
    // from a class with a non-virtual destructor.
    template <class T>
    class ParamDescription DYNAMIC_RECONFIGURE_FINAL : public AbstractParamDescription
    {
    public:
      ParamDescription(std::string a_name, std::string a_type, uint32_t a_level,
          std::string a_description, std::string a_edit_method, T Robotiq3FGripperConfig::* a_f) :
        AbstractParamDescription(a_name, a_type, a_level, a_description, a_edit_method),
        field(a_f)
      {}

      T Robotiq3FGripperConfig::* field;

      virtual void clamp(Robotiq3FGripperConfig &config, const Robotiq3FGripperConfig &max, const Robotiq3FGripperConfig &min) const
      {
        if (config.*field > max.*field)
          config.*field = max.*field;

        if (config.*field < min.*field)
          config.*field = min.*field;
      }

      virtual void calcLevel(uint32_t &comb_level, const Robotiq3FGripperConfig &config1, const Robotiq3FGripperConfig &config2) const
      {
        if (config1.*field != config2.*field)
          comb_level |= level;
      }

      virtual void fromServer(const ros::NodeHandle &nh, Robotiq3FGripperConfig &config) const
      {
        nh.getParam(name, config.*field);
      }

      virtual void toServer(const ros::NodeHandle &nh, const Robotiq3FGripperConfig &config) const
      {
        nh.setParam(name, config.*field);
      }

      virtual bool fromMessage(const dynamic_reconfigure::Config &msg, Robotiq3FGripperConfig &config) const
      {
        return dynamic_reconfigure::ConfigTools::getParameter(msg, name, config.*field);
      }

      virtual void toMessage(dynamic_reconfigure::Config &msg, const Robotiq3FGripperConfig &config) const
      {
        dynamic_reconfigure::ConfigTools::appendParameter(msg, name, config.*field);
      }

      virtual void getValue(const Robotiq3FGripperConfig &config, boost::any &val) const
      {
        val = config.*field;
      }
    };

    class AbstractGroupDescription : public dynamic_reconfigure::Group
    {
      public:
      AbstractGroupDescription(std::string n, std::string t, int p, int i, bool s)
      {
        name = n;
        type = t;
        parent = p;
        state = s;
        id = i;
      }

      std::vector<AbstractParamDescriptionConstPtr> abstract_parameters;
      bool state;

      virtual void toMessage(dynamic_reconfigure::Config &msg, const boost::any &config) const = 0;
      virtual bool fromMessage(const dynamic_reconfigure::Config &msg, boost::any &config) const =0;
      virtual void updateParams(boost::any &cfg, Robotiq3FGripperConfig &top) const= 0;
      virtual void setInitialState(boost::any &cfg) const = 0;


      void convertParams()
      {
        for(std::vector<AbstractParamDescriptionConstPtr>::const_iterator i = abstract_parameters.begin(); i != abstract_parameters.end(); ++i)
        {
          parameters.push_back(dynamic_reconfigure::ParamDescription(**i));
        }
      }
    };

    typedef boost::shared_ptr<AbstractGroupDescription> AbstractGroupDescriptionPtr;
    typedef boost::shared_ptr<const AbstractGroupDescription> AbstractGroupDescriptionConstPtr;

    // Final keyword added to class because it has virtual methods and inherits
    // from a class with a non-virtual destructor.
    template<class T, class PT>
    class GroupDescription DYNAMIC_RECONFIGURE_FINAL : public AbstractGroupDescription
    {
    public:
      GroupDescription(std::string a_name, std::string a_type, int a_parent, int a_id, bool a_s, T PT::* a_f) : AbstractGroupDescription(a_name, a_type, a_parent, a_id, a_s), field(a_f)
      {
      }

      GroupDescription(const GroupDescription<T, PT>& g): AbstractGroupDescription(g.name, g.type, g.parent, g.id, g.state), field(g.field), groups(g.groups)
      {
        parameters = g.parameters;
        abstract_parameters = g.abstract_parameters;
      }

      virtual bool fromMessage(const dynamic_reconfigure::Config &msg, boost::any &cfg) const
      {
        PT* config = boost::any_cast<PT*>(cfg);
        if(!dynamic_reconfigure::ConfigTools::getGroupState(msg, name, (*config).*field))
          return false;

        for(std::vector<AbstractGroupDescriptionConstPtr>::const_iterator i = groups.begin(); i != groups.end(); ++i)
        {
          boost::any n = &((*config).*field);
          if(!(*i)->fromMessage(msg, n))
            return false;
        }

        return true;
      }

      virtual void setInitialState(boost::any &cfg) const
      {
        PT* config = boost::any_cast<PT*>(cfg);
        T* group = &((*config).*field);
        group->state = state;

        for(std::vector<AbstractGroupDescriptionConstPtr>::const_iterator i = groups.begin(); i != groups.end(); ++i)
        {
          boost::any n = boost::any(&((*config).*field));
          (*i)->setInitialState(n);
        }

      }

      virtual void updateParams(boost::any &cfg, Robotiq3FGripperConfig &top) const
      {
        PT* config = boost::any_cast<PT*>(cfg);

        T* f = &((*config).*field);
        f->setParams(top, abstract_parameters);

        for(std::vector<AbstractGroupDescriptionConstPtr>::const_iterator i = groups.begin(); i != groups.end(); ++i)
        {
          boost::any n = &((*config).*field);
          (*i)->updateParams(n, top);
        }
      }

      virtual void toMessage(dynamic_reconfigure::Config &msg, const boost::any &cfg) const
      {
        const PT config = boost::any_cast<PT>(cfg);
        dynamic_reconfigure::ConfigTools::appendGroup<T>(msg, name, id, parent, config.*field);

        for(std::vector<AbstractGroupDescriptionConstPtr>::const_iterator i = groups.begin(); i != groups.end(); ++i)
        {
          (*i)->toMessage(msg, config.*field);
        }
      }

      T PT::* field;
      std::vector<Robotiq3FGripperConfig::AbstractGroupDescriptionConstPtr> groups;
    };

class DEFAULT
{
  public:
    DEFAULT()
    {
      state = true;
      name = "Default";
    }

    void setParams(Robotiq3FGripperConfig &config, const std::vector<AbstractParamDescriptionConstPtr> params)
    {
      for (std::vector<AbstractParamDescriptionConstPtr>::const_iterator _i = params.begin(); _i != params.end(); ++_i)
      {
        boost::any val;
        (*_i)->getValue(config, val);

        if("ind_control_fingers"==(*_i)->name){ind_control_fingers = boost::any_cast<bool>(val);}
        if("ind_control_scissor"==(*_i)->name){ind_control_scissor = boost::any_cast<bool>(val);}
        if("mode"==(*_i)->name){mode = boost::any_cast<int>(val);}
        if("velocity"==(*_i)->name){velocity = boost::any_cast<double>(val);}
        if("force"==(*_i)->name){force = boost::any_cast<double>(val);}
      }
    }

    bool ind_control_fingers;
bool ind_control_scissor;
int mode;
double velocity;
double force;

    bool state;
    std::string name;

    
}groups;



//#line 291 "/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      bool ind_control_fingers;
//#line 291 "/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      bool ind_control_scissor;
//#line 291 "/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      int mode;
//#line 291 "/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      double velocity;
//#line 291 "/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      double force;
//#line 228 "/opt/ros/melodic/share/dynamic_reconfigure/cmake/../templates/ConfigType.h.template"

    bool __fromMessage__(dynamic_reconfigure::Config &msg)
    {
      const std::vector<AbstractParamDescriptionConstPtr> &__param_descriptions__ = __getParamDescriptions__();
      const std::vector<AbstractGroupDescriptionConstPtr> &__group_descriptions__ = __getGroupDescriptions__();

      int count = 0;
      for (std::vector<AbstractParamDescriptionConstPtr>::const_iterator i = __param_descriptions__.begin(); i != __param_descriptions__.end(); ++i)
        if ((*i)->fromMessage(msg, *this))
          count++;

      for (std::vector<AbstractGroupDescriptionConstPtr>::const_iterator i = __group_descriptions__.begin(); i != __group_descriptions__.end(); i ++)
      {
        if ((*i)->id == 0)
        {
          boost::any n = boost::any(this);
          (*i)->updateParams(n, *this);
          (*i)->fromMessage(msg, n);
        }
      }

      if (count != dynamic_reconfigure::ConfigTools::size(msg))
      {
        ROS_ERROR("Robotiq3FGripperConfig::__fromMessage__ called with an unexpected parameter.");
        ROS_ERROR("Booleans:");
        for (unsigned int i = 0; i < msg.bools.size(); i++)
          ROS_ERROR("  %s", msg.bools[i].name.c_str());
        ROS_ERROR("Integers:");
        for (unsigned int i = 0; i < msg.ints.size(); i++)
          ROS_ERROR("  %s", msg.ints[i].name.c_str());
        ROS_ERROR("Doubles:");
        for (unsigned int i = 0; i < msg.doubles.size(); i++)
          ROS_ERROR("  %s", msg.doubles[i].name.c_str());
        ROS_ERROR("Strings:");
        for (unsigned int i = 0; i < msg.strs.size(); i++)
          ROS_ERROR("  %s", msg.strs[i].name.c_str());
        // @todo Check that there are no duplicates. Make this error more
        // explicit.
        return false;
      }
      return true;
    }

    // This version of __toMessage__ is used during initialization of
    // statics when __getParamDescriptions__ can't be called yet.
    void __toMessage__(dynamic_reconfigure::Config &msg, const std::vector<AbstractParamDescriptionConstPtr> &__param_descriptions__, const std::vector<AbstractGroupDescriptionConstPtr> &__group_descriptions__) const
    {
      dynamic_reconfigure::ConfigTools::clear(msg);
      for (std::vector<AbstractParamDescriptionConstPtr>::const_iterator i = __param_descriptions__.begin(); i != __param_descriptions__.end(); ++i)
        (*i)->toMessage(msg, *this);

      for (std::vector<AbstractGroupDescriptionConstPtr>::const_iterator i = __group_descriptions__.begin(); i != __group_descriptions__.end(); ++i)
      {
        if((*i)->id == 0)
        {
          (*i)->toMessage(msg, *this);
        }
      }
    }

    void __toMessage__(dynamic_reconfigure::Config &msg) const
    {
      const std::vector<AbstractParamDescriptionConstPtr> &__param_descriptions__ = __getParamDescriptions__();
      const std::vector<AbstractGroupDescriptionConstPtr> &__group_descriptions__ = __getGroupDescriptions__();
      __toMessage__(msg, __param_descriptions__, __group_descriptions__);
    }

    void __toServer__(const ros::NodeHandle &nh) const
    {
      const std::vector<AbstractParamDescriptionConstPtr> &__param_descriptions__ = __getParamDescriptions__();
      for (std::vector<AbstractParamDescriptionConstPtr>::const_iterator i = __param_descriptions__.begin(); i != __param_descriptions__.end(); ++i)
        (*i)->toServer(nh, *this);
    }

    void __fromServer__(const ros::NodeHandle &nh)
    {
      static bool setup=false;

      const std::vector<AbstractParamDescriptionConstPtr> &__param_descriptions__ = __getParamDescriptions__();
      for (std::vector<AbstractParamDescriptionConstPtr>::const_iterator i = __param_descriptions__.begin(); i != __param_descriptions__.end(); ++i)
        (*i)->fromServer(nh, *this);

      const std::vector<AbstractGroupDescriptionConstPtr> &__group_descriptions__ = __getGroupDescriptions__();
      for (std::vector<AbstractGroupDescriptionConstPtr>::const_iterator i = __group_descriptions__.begin(); i != __group_descriptions__.end(); i++){
        if (!setup && (*i)->id == 0) {
          setup = true;
          boost::any n = boost::any(this);
          (*i)->setInitialState(n);
        }
      }
    }

    void __clamp__()
    {
      const std::vector<AbstractParamDescriptionConstPtr> &__param_descriptions__ = __getParamDescriptions__();
      const Robotiq3FGripperConfig &__max__ = __getMax__();
      const Robotiq3FGripperConfig &__min__ = __getMin__();
      for (std::vector<AbstractParamDescriptionConstPtr>::const_iterator i = __param_descriptions__.begin(); i != __param_descriptions__.end(); ++i)
        (*i)->clamp(*this, __max__, __min__);
    }

    uint32_t __level__(const Robotiq3FGripperConfig &config) const
    {
      const std::vector<AbstractParamDescriptionConstPtr> &__param_descriptions__ = __getParamDescriptions__();
      uint32_t level = 0;
      for (std::vector<AbstractParamDescriptionConstPtr>::const_iterator i = __param_descriptions__.begin(); i != __param_descriptions__.end(); ++i)
        (*i)->calcLevel(level, config, *this);
      return level;
    }

    static const dynamic_reconfigure::ConfigDescription &__getDescriptionMessage__();
    static const Robotiq3FGripperConfig &__getDefault__();
    static const Robotiq3FGripperConfig &__getMax__();
    static const Robotiq3FGripperConfig &__getMin__();
    static const std::vector<AbstractParamDescriptionConstPtr> &__getParamDescriptions__();
    static const std::vector<AbstractGroupDescriptionConstPtr> &__getGroupDescriptions__();

  private:
    static const Robotiq3FGripperConfigStatics *__get_statics__();
  };

  template <> // Max and min are ignored for strings.
  inline void Robotiq3FGripperConfig::ParamDescription<std::string>::clamp(Robotiq3FGripperConfig &config, const Robotiq3FGripperConfig &max, const Robotiq3FGripperConfig &min) const
  {
    (void) config;
    (void) min;
    (void) max;
    return;
  }

  class Robotiq3FGripperConfigStatics
  {
    friend class Robotiq3FGripperConfig;

    Robotiq3FGripperConfigStatics()
    {
Robotiq3FGripperConfig::GroupDescription<Robotiq3FGripperConfig::DEFAULT, Robotiq3FGripperConfig> Default("Default", "", 0, 0, true, &Robotiq3FGripperConfig::groups);
//#line 291 "/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __min__.ind_control_fingers = 0;
//#line 291 "/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __max__.ind_control_fingers = 1;
//#line 291 "/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __default__.ind_control_fingers = 0;
//#line 291 "/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      Default.abstract_parameters.push_back(Robotiq3FGripperConfig::AbstractParamDescriptionConstPtr(new Robotiq3FGripperConfig::ParamDescription<bool>("ind_control_fingers", "bool", 0, "Set individual control of fingers", "", &Robotiq3FGripperConfig::ind_control_fingers)));
//#line 291 "/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __param_descriptions__.push_back(Robotiq3FGripperConfig::AbstractParamDescriptionConstPtr(new Robotiq3FGripperConfig::ParamDescription<bool>("ind_control_fingers", "bool", 0, "Set individual control of fingers", "", &Robotiq3FGripperConfig::ind_control_fingers)));
//#line 291 "/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __min__.ind_control_scissor = 0;
//#line 291 "/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __max__.ind_control_scissor = 1;
//#line 291 "/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __default__.ind_control_scissor = 0;
//#line 291 "/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      Default.abstract_parameters.push_back(Robotiq3FGripperConfig::AbstractParamDescriptionConstPtr(new Robotiq3FGripperConfig::ParamDescription<bool>("ind_control_scissor", "bool", 0, "Set individual control of scissor", "", &Robotiq3FGripperConfig::ind_control_scissor)));
//#line 291 "/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __param_descriptions__.push_back(Robotiq3FGripperConfig::AbstractParamDescriptionConstPtr(new Robotiq3FGripperConfig::ParamDescription<bool>("ind_control_scissor", "bool", 0, "Set individual control of scissor", "", &Robotiq3FGripperConfig::ind_control_scissor)));
//#line 291 "/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __min__.mode = -2147483648;
//#line 291 "/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __max__.mode = 2147483647;
//#line 291 "/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __default__.mode = 0;
//#line 291 "/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      Default.abstract_parameters.push_back(Robotiq3FGripperConfig::AbstractParamDescriptionConstPtr(new Robotiq3FGripperConfig::ParamDescription<int>("mode", "int", 0, "The grasping mode", "{'enum_description': 'An enum to set the grasp operation mode', 'enum': [{'srcline': 37, 'description': 'Basic mode', 'srcfile': '/home/chels/catkin_ws/src/robotiq/robotiq_3f_gripper_control/cfg/Robotiq3FGripper.cfg', 'cconsttype': 'const int', 'value': 0, 'ctype': 'int', 'type': 'int', 'name': 'Basic'}, {'srcline': 38, 'description': 'Pinch mode', 'srcfile': '/home/chels/catkin_ws/src/robotiq/robotiq_3f_gripper_control/cfg/Robotiq3FGripper.cfg', 'cconsttype': 'const int', 'value': 1, 'ctype': 'int', 'type': 'int', 'name': 'Pinch'}, {'srcline': 39, 'description': 'Wide mode', 'srcfile': '/home/chels/catkin_ws/src/robotiq/robotiq_3f_gripper_control/cfg/Robotiq3FGripper.cfg', 'cconsttype': 'const int', 'value': 2, 'ctype': 'int', 'type': 'int', 'name': 'Wide'}, {'srcline': 40, 'description': 'Scissor mode', 'srcfile': '/home/chels/catkin_ws/src/robotiq/robotiq_3f_gripper_control/cfg/Robotiq3FGripper.cfg', 'cconsttype': 'const int', 'value': 3, 'ctype': 'int', 'type': 'int', 'name': 'Scissor'}]}", &Robotiq3FGripperConfig::mode)));
//#line 291 "/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __param_descriptions__.push_back(Robotiq3FGripperConfig::AbstractParamDescriptionConstPtr(new Robotiq3FGripperConfig::ParamDescription<int>("mode", "int", 0, "The grasping mode", "{'enum_description': 'An enum to set the grasp operation mode', 'enum': [{'srcline': 37, 'description': 'Basic mode', 'srcfile': '/home/chels/catkin_ws/src/robotiq/robotiq_3f_gripper_control/cfg/Robotiq3FGripper.cfg', 'cconsttype': 'const int', 'value': 0, 'ctype': 'int', 'type': 'int', 'name': 'Basic'}, {'srcline': 38, 'description': 'Pinch mode', 'srcfile': '/home/chels/catkin_ws/src/robotiq/robotiq_3f_gripper_control/cfg/Robotiq3FGripper.cfg', 'cconsttype': 'const int', 'value': 1, 'ctype': 'int', 'type': 'int', 'name': 'Pinch'}, {'srcline': 39, 'description': 'Wide mode', 'srcfile': '/home/chels/catkin_ws/src/robotiq/robotiq_3f_gripper_control/cfg/Robotiq3FGripper.cfg', 'cconsttype': 'const int', 'value': 2, 'ctype': 'int', 'type': 'int', 'name': 'Wide'}, {'srcline': 40, 'description': 'Scissor mode', 'srcfile': '/home/chels/catkin_ws/src/robotiq/robotiq_3f_gripper_control/cfg/Robotiq3FGripper.cfg', 'cconsttype': 'const int', 'value': 3, 'ctype': 'int', 'type': 'int', 'name': 'Scissor'}]}", &Robotiq3FGripperConfig::mode)));
//#line 291 "/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __min__.velocity = 22.0;
//#line 291 "/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __max__.velocity = 110.0;
//#line 291 "/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __default__.velocity = 66.0;
//#line 291 "/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      Default.abstract_parameters.push_back(Robotiq3FGripperConfig::AbstractParamDescriptionConstPtr(new Robotiq3FGripperConfig::ParamDescription<double>("velocity", "double", 0, "Set velocity for fingers", "", &Robotiq3FGripperConfig::velocity)));
//#line 291 "/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __param_descriptions__.push_back(Robotiq3FGripperConfig::AbstractParamDescriptionConstPtr(new Robotiq3FGripperConfig::ParamDescription<double>("velocity", "double", 0, "Set velocity for fingers", "", &Robotiq3FGripperConfig::velocity)));
//#line 291 "/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __min__.force = 15.0;
//#line 291 "/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __max__.force = 60.0;
//#line 291 "/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __default__.force = 30.0;
//#line 291 "/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      Default.abstract_parameters.push_back(Robotiq3FGripperConfig::AbstractParamDescriptionConstPtr(new Robotiq3FGripperConfig::ParamDescription<double>("force", "double", 0, "Set force for fingers", "", &Robotiq3FGripperConfig::force)));
//#line 291 "/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __param_descriptions__.push_back(Robotiq3FGripperConfig::AbstractParamDescriptionConstPtr(new Robotiq3FGripperConfig::ParamDescription<double>("force", "double", 0, "Set force for fingers", "", &Robotiq3FGripperConfig::force)));
//#line 246 "/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      Default.convertParams();
//#line 246 "/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __group_descriptions__.push_back(Robotiq3FGripperConfig::AbstractGroupDescriptionConstPtr(new Robotiq3FGripperConfig::GroupDescription<Robotiq3FGripperConfig::DEFAULT, Robotiq3FGripperConfig>(Default)));
//#line 366 "/opt/ros/melodic/share/dynamic_reconfigure/cmake/../templates/ConfigType.h.template"

      for (std::vector<Robotiq3FGripperConfig::AbstractGroupDescriptionConstPtr>::const_iterator i = __group_descriptions__.begin(); i != __group_descriptions__.end(); ++i)
      {
        __description_message__.groups.push_back(**i);
      }
      __max__.__toMessage__(__description_message__.max, __param_descriptions__, __group_descriptions__);
      __min__.__toMessage__(__description_message__.min, __param_descriptions__, __group_descriptions__);
      __default__.__toMessage__(__description_message__.dflt, __param_descriptions__, __group_descriptions__);
    }
    std::vector<Robotiq3FGripperConfig::AbstractParamDescriptionConstPtr> __param_descriptions__;
    std::vector<Robotiq3FGripperConfig::AbstractGroupDescriptionConstPtr> __group_descriptions__;
    Robotiq3FGripperConfig __max__;
    Robotiq3FGripperConfig __min__;
    Robotiq3FGripperConfig __default__;
    dynamic_reconfigure::ConfigDescription __description_message__;

    static const Robotiq3FGripperConfigStatics *get_instance()
    {
      // Split this off in a separate function because I know that
      // instance will get initialized the first time get_instance is
      // called, and I am guaranteeing that get_instance gets called at
      // most once.
      static Robotiq3FGripperConfigStatics instance;
      return &instance;
    }
  };

  inline const dynamic_reconfigure::ConfigDescription &Robotiq3FGripperConfig::__getDescriptionMessage__()
  {
    return __get_statics__()->__description_message__;
  }

  inline const Robotiq3FGripperConfig &Robotiq3FGripperConfig::__getDefault__()
  {
    return __get_statics__()->__default__;
  }

  inline const Robotiq3FGripperConfig &Robotiq3FGripperConfig::__getMax__()
  {
    return __get_statics__()->__max__;
  }

  inline const Robotiq3FGripperConfig &Robotiq3FGripperConfig::__getMin__()
  {
    return __get_statics__()->__min__;
  }

  inline const std::vector<Robotiq3FGripperConfig::AbstractParamDescriptionConstPtr> &Robotiq3FGripperConfig::__getParamDescriptions__()
  {
    return __get_statics__()->__param_descriptions__;
  }

  inline const std::vector<Robotiq3FGripperConfig::AbstractGroupDescriptionConstPtr> &Robotiq3FGripperConfig::__getGroupDescriptions__()
  {
    return __get_statics__()->__group_descriptions__;
  }

  inline const Robotiq3FGripperConfigStatics *Robotiq3FGripperConfig::__get_statics__()
  {
    const static Robotiq3FGripperConfigStatics *statics;

    if (statics) // Common case
      return statics;

    boost::mutex::scoped_lock lock(dynamic_reconfigure::__init_mutex__);

    if (statics) // In case we lost a race.
      return statics;

    statics = Robotiq3FGripperConfigStatics::get_instance();

    return statics;
  }

//#line 37 "/home/chels/catkin_ws/src/robotiq/robotiq_3f_gripper_control/cfg/Robotiq3FGripper.cfg"
      const int Robotiq3FGripper_Basic = 0;
//#line 38 "/home/chels/catkin_ws/src/robotiq/robotiq_3f_gripper_control/cfg/Robotiq3FGripper.cfg"
      const int Robotiq3FGripper_Pinch = 1;
//#line 39 "/home/chels/catkin_ws/src/robotiq/robotiq_3f_gripper_control/cfg/Robotiq3FGripper.cfg"
      const int Robotiq3FGripper_Wide = 2;
//#line 40 "/home/chels/catkin_ws/src/robotiq/robotiq_3f_gripper_control/cfg/Robotiq3FGripper.cfg"
      const int Robotiq3FGripper_Scissor = 3;
}

#undef DYNAMIC_RECONFIGURE_FINAL

#endif // __ROBOTIQ3FGRIPPERRECONFIGURATOR_H__
