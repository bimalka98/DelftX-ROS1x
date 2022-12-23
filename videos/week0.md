# Week 0

* [Welcome and course structure](https://youtu.be/daBgTxUWvtM)

During this course, we will follow a few general conventions about how we name things, what we use to show examples to students, or how we refer to certain folders on your computer. Every convention will be detailed on this page, so please read it through carefully. Not every term used here might make sense to you yet, but if you ever get confused by a term in the future please make sure to check back here!

##  General conventions
* Lines starting with a $ are shell input. The $ is part of the prompt, not of the command. It should not be typed into the course command shell or terminal.
* Command output (not commands) is shown in videos as black text on a white background. Output does not contain commands to be typed in a command shell.
* The text editors used by the instructors are examples only, you do not need to use the exact same editor as the instructors. Just use your own text editor (and do not try to start it from the course command shell!).
* Do not forget to source your workspace! Include the command source `$HOME/hrwros_ws/devel/setup.bash`. This needs to be done in every course command shell.
* In the point above, we use the $HOME environment variable to point to a location on your computer. Throughout the course, either /home/$USER or $HOME might be used. These two environment variables essentially point to the same location, so don't be confused by them!
* Never try to mix catkin_make commands with catkin commands. They are not compatible. In the context of the MOOC, we never use catkin_make.

## Singularity
* The Course Command Shell (CCS) via Singularity provides a platform where you can execute ROS commands. The folder or files you create from the CCS are also reflected in your Linux installation in the corresponding folder. So, when you want to edit the files while doing assignments, it is not necessary to be in the CCS.
* You can just use your normal text editors outside the CCS and only use the CCS to run your ROS commands.
* Instructors don't use the CCS, instead they have a normal installation of ROS. On your screen, things might look visually different but the output should remain the same.
* For example, you will not be able to start an editor from inside a Course Command Shell. So, you should actually start a text editor from the unity-dash and then edit the files.
* 
* The Singularity image is read-only. You can not use sudo apt-get to install new ROS or Ubuntu packages into it.
* Only use the Singularity version provided in by the MOOC instructors!
* DO NOT install singularity using apt-get or from any other way source than the one provided as they will not work.
* You only have to source the noetic setup files ONCE!
* `$ source /opt/ros/noetic/setup.bash`
* Subsequently, you will only be sourcing your workspace setup files with `$ source <path_to_your_workspace>/devel/setup.bash`
* The instructions on how to install Singularity and the image for this course, are explained in the Course Setup unit.

## Setup your workspace
* To set up your own workspace, you must use the following command. This setup only needs to be done once! 
* `$ source /opt/ros/noetic/setup.bash`
* After that, you need to use the following command to source your workspace. You will need to do this every time you go into a new Course Command Shell!
* `$ source $HOME/hrwros_ws/devel/setup.bash`

## ROS Distribution
* All the course material uses the Noetic distribution of ROS, which is currently the recommended distribution for ROS.

## Further conventions
* ROS Noetic only supports Python 3 Please keep this in mind when programming!