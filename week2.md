# Week 2

[Introduction to Week 2](https://youtu.be/V9G2uW-tlPQ) Welcome to week 2! In this week we are going to learn how to model the world using the Unified Robot Description Format. (URDF)

Modelling the robot environment is an essential part of creating a successful ROS application. With the Unified Robot Description Format (URDF) you can create a model of the factory environment that will be used in this course. By creating your own URDF model of a robot prototype, you can quickly analyze its behaviour and constraints.

We will treat the following topics in URDF:

* Basics of URDF
* Links, joints, geometry
* Model environments and robots
* Understanding URDF
* Add and remove simple objects
* Import complex models
* Limitations
* Tools

* [2.1.1 Introduction to URDF](https://youtu.be/pT5iQaG9aVU)
* [2.1.2 Limitations and XACRO](https://youtu.be/e2IPjl4pOgk)
* [2.1.3 Checking for Correctness](https://youtu.be/-K_HQmXU3WE)
* [2.2 Changing Worlds](https://youtu.be/sTAFLS6VusI)
<details>
  <summary markdown="span">details</summary>
    
    In this video we'll start changing the factory world so that we can use it in the coming weeks for navigation and picking and placing parts with the three robots.

    There are too many obstacles in the factory right now for the turtlebot (that will be added in later weeks) to come close to Robot 1, so some cleanup is needed.

    To get the factory simulation ready the following tasks need to be done:

    * Remove unneeded bins
    * Move bin to turtlebot delivery station
    * Add a pedestal
    * Add the second robot
    We suggest opening the URDF (.xacro file) using a text editor with support for XML highlighting, for example Atom, since it makes reading the file easier

    A few notable parts of the URDF are:

    * A link named "world": a link that everything else is connected to
    * There are also links created that instantiate other URDF models like the conveyor belt
    * After importing all of the building blocks of the world, it is important to then connect them to the world using joints
    * The "parent link='..'" specifies to what something should be connected and the "child link='..'" specifies what it is that should be connected to the parent.
    * the origin element describes the relative offset between the parent and the child

    To remove a model from a URDF world two things must be removed:

    * The joint that connects it to its parent
    * The "macro call" that adds it to the world (model instantiations)
    
    To remove four bins, the four model instantiations (ie: macro calls) and the four joints need to be removed.

    We leave one bin and relocate it to where it should be (behind the pallet with the crates) by changing the x and y coordinates of its origin element.

    A useful tool is "check_urdf", which can check if a URDF is valid. To do this, first convert the XACRO file to URDF, and then run check_urdf.

</details>


* [2.3 Creating a Pedestal (Part 1)](https://youtu.be/JhVEqNlRW9M)
<details>
  <summary markdown="span">details</summary>
    
    We can use primitive shapes to model complex geometry in a simple way.

    We will use such a primitive shape to create a box we can place our second robot on. Open your hrwros.xacro file in a text editor. Scroll all the way down to the bottom. We will need to add two things: a link, and a joint. You will need to give it a name, and this name is important! It must be unique, and should make the purpose of the link clear.

    Before it will become visible in the simulation, we will need to give it a visual element.

    With the link and joint in place, we can take a look at what we've created. First, save the URDF, then switch to the terminal, and start the visualization launch file.

    We've added the box, but we still need to modify it a little more before it becomes usable. We have defined the basic structure, and have connected it to the world. We will still need to update the dimensions, specify a color, place it on the floor, and put it next to the bin. We will do that in the next video.

</details>


* [2.3 Finishing the Pedestal (Part 2)](https://youtu.be/GPXRd1N6xFY)
<details>
  <summary markdown="span">details</summary>
    
    The current status of the pedestal is not yet satisfactory to the factory simulation. To make a proper pedestal, some default properties of the primitive shape need to be changed:

    * Adjust the size and shape
    * Raise the pedestal so that it rests on the floor
    * Change the color
    * Update its location


    The box can be made taller by updating the "size" property (following the x, y, z convention of ROS to configure the width, length and height respectively).

    The default origin for primitive shapes is the center of the shape, which means that the box is half sunk into the floor. To fix this, the z offset of the origin needs to be changed to half the height of the pedestal.

    Colors are added by adding a "material" element. Since the pedestal is one solid color the "color" element is used to specify the color with rgba.

    To change the location of the pedestal, the offset from the world needs to be redefined. This is done by changing the x and y coordinates of the "origin" element within the joint that connects the pedestal to the world (note: not the definition of the origin in the primitive shape itself).

</details>


* [2.4 Using Existing Models](https://youtu.be/Jrc09-1P0n0)
<details>
  <summary markdown="span">details</summary>
    
    To finish up the factory floor the second robot needs to be added to the world. Instead of using simple geometry to create our own robot, we will import a detailed model that was made by the ROS community. This is one of the advantages of ROS, allowing us to save time and work by using pre-existing models instead of having to create them ourselves.

    In order to add the robot to the factory, the following changes need to be made to the hrwros.xacro file:

    * Import the model definition (xacro macro)
    * Add the model to the factory (instantiation)
    * Fixing it in place (joint)
    * Updating orientation


    The import statement consists of a few parts:

    * The xacro:include statement itself
    * The filename attribute specifying the name of the file to import (using a package relative path)

    Finally, we also need to add the macro call, which will actually instantiate the model. To prevent nameclashes, we'll configure the new object to use a unique prefix (using the "prefix" parameter of the macro).

    To connect the robot to the factory, we will connect it to the pedestal rather than the world itself. This is so that if the pedestal ever needs to be moved, the robot will move with it, rather than having to update the robot's position manually. This is done by specifying the parent in the joint as the pedestal and the child as the robot.

    Finally, the orientation needs to be corrected. This is done by adding an rpy attribute to the origin element that specifies the orientation. As ROS uses radians for angles, we'll make use of the radians(..) convenience function which will do the conversion for us.

</details>

* [Week 2 Conclusion](https://youtu.be/wgoJP4pMyUk)