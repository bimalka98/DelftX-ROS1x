# Week 4

In this video, the manipulation overview will be explained. Our goal of this week is to perform simple object manipulation tasks.

* [4.0 Manipulation](https://youtu.be/U-9SQf8gICk)
* [4.1 Manipulation Basic Concepts](https://youtu.be/ZktvsKtP9m8)
* [4.2 Manipulation with Movelt](https://youtu.be/tY2fx1LcLEA)



    About MoveIt
    MoveIt is a software for manipulation, which is integrated with ROS.

    In this course, MoveIt will be used to plan motions for fixed serial link manipulators, like the UR10 and UR5 robots.  

    MoveIt is in essence a software platform to configure and use functionalities associated with manipulation.

    Per functional modules, there are many software options. 

    * Sensors:  Real Sense or the Ensenso 3D camera
    * Motion planning: OMPL or CHOMP
    * Collision Checking: Flexible Collision Library (FCL) or Bullet Physics Library
    * Trajectory processing: Iterative Parabolic Time Parameterization (IPTP) or Time Optimal Path Paramaterization (TOPP)
    * Motion Execution: Various robot drivers that are developed and supported by the ROS-Industrial consortium

* [4.3.1 MoveIt Setup Assistant - Part 1](https://youtu.be/n0wztPn7VGo)
* [4.3.2 MoveIt Setup Assistant - Part 2](https://youtu.be/i-DKVAsfzfQ)
* [4.3.3 MoveIt Setup Assistant - MoveIt configuration package](https://youtu.be/jXz66mRWSsE)
* 4.3.4 MoveIt Setup Assistant - Required Additional Steps

    A pdf of this comes here

* [4.3.5 MoveIt Setup Assistant - configuring controllers](https://youtu.be/oFrUIwdiwJo)

    A pdf of this comes here

* [4.4 MoveIt Commander](https://youtu.be/kiXuciLc12M)
    
    A pdf of this comes here

* [4.5 Move Group interface](https://youtu.be/X6K9scJs8bA)
* [4.5.1 Pick & Place: Part 1](https://youtu.be/yo5WpJBz2Hk)
* [4.5.2 Pick & Place: Part 2](https://youtu.be/wXgiQBSiV8s)
* [4.5.3 Pick & Place: Part 3](https://youtu.be/2eWL0XPemYo)
    
    A pdfs of this come here


* [4.6 Conclusion](https://youtu.be/oP43hCWAFHk)

    We have now reached the conclusion of this week. We certainly learned a lot!

    We learned about the MoveIt tool itself, and how to configure the tool to be used in our application.
    We also learned some of the command line tools and interfaces in order to program a simple pick-and-place pipeline.
    We didn't have any actual objects to pick up yet. We will change this next week, when we will learn about Logical cameras to help us detect and pick up actual objects.