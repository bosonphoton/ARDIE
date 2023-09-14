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

echo_and_run cd "/home/chelsea/catkin_ws/src/geometry2/tf2_geometry_msgs"

# ensure that Python install destination exists
echo_and_run mkdir -p "$DESTDIR/home/chelsea/catkin_ws/install/lib/python2.7/dist-packages"

# Note that PYTHONPATH is pulled from the environment to support installing
# into one location when some dependencies were installed in another
# location, #123.
echo_and_run /usr/bin/env \
    PYTHONPATH="/home/chelsea/catkin_ws/install/lib/python2.7/dist-packages:/home/chelsea/catkin_ws/build/tf2_geometry_msgs/lib/python2.7/dist-packages:$PYTHONPATH" \
    CATKIN_BINARY_DIR="/home/chelsea/catkin_ws/build/tf2_geometry_msgs" \
    "/usr/bin/python2" \
    "/home/chelsea/catkin_ws/src/geometry2/tf2_geometry_msgs/setup.py" \
     \
    build --build-base "/home/chelsea/catkin_ws/build/tf2_geometry_msgs" \
    install \
    --root="${DESTDIR-/}" \
    --install-layout=deb --prefix="/home/chelsea/catkin_ws/install" --install-scripts="/home/chelsea/catkin_ws/install/bin"
