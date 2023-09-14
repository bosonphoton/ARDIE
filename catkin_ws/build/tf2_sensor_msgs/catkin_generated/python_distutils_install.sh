#!/bin/sh

if [ -n "$DESTDIR" ] ; then
    case $DESTDIR in
        /*) # ok
            ;;
        *)
            /bin/echo "DESTDIR argument must be absolute... "
            /bin/echo "otherwise python's distutils will bork things."
            exit 1
    esac
fi

echo_and_run() { echo "+ $@" ; "$@" ; }

echo_and_run cd "/home/chels/catkin_ws/src/geometry2/tf2_sensor_msgs"

# ensure that Python install destination exists
echo_and_run mkdir -p "$DESTDIR/home/chels/catkin_ws/install/lib/python2.7/dist-packages"

# Note that PYTHONPATH is pulled from the environment to support installing
# into one location when some dependencies were installed in another
# location, #123.
echo_and_run /usr/bin/env \
    PYTHONPATH="/home/chels/catkin_ws/install/lib/python2.7/dist-packages:/home/chels/catkin_ws/build/tf2_sensor_msgs/lib/python2.7/dist-packages:$PYTHONPATH" \
    CATKIN_BINARY_DIR="/home/chels/catkin_ws/build/tf2_sensor_msgs" \
    "/usr/bin/python2" \
    "/home/chels/catkin_ws/src/geometry2/tf2_sensor_msgs/setup.py" \
     \
    build --build-base "/home/chels/catkin_ws/build/tf2_sensor_msgs" \
    install \
    --root="${DESTDIR-/}" \
    --install-layout=deb --prefix="/home/chels/catkin_ws/install" --install-scripts="/home/chels/catkin_ws/install/bin"
