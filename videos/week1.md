# Week 1
Welcome to the very first lesson of this ROS MOOC! Before we dive into ROS, it is helpful to know something about how ROS works internally. In this video, we will outline the ROS essentials, which are: Nodes, Topics, and how they interact. 

---

There are two fundamental concepts in ROS, which are: Nodes and Topics. 

* Nodes:
    These are software processes that do 'stuff' (e.g. process data, command hardware, execute algorithms). Nodes provide modularity to robotic projects that use ROS. They are often written in C++ or Python. In this course, we will use Python to write them. ROS Noetic compatible with Python 3.x.

* Topics:
    Transport information between nodes, in the form of messages.

In a real robot application you will often have to deal with a large number of nodes and topics. It is important to know which nodes are talking to each other, and what topics are being used to pass the information (messages) between nodes.

* [1 ROS Essentials](https://youtu.be/0qUiBV94vL8)
* [1.1 ROS Nodes](https://youtu.be/eqNDKlW3nKM)
* [1.2 ROS Topics](https://youtu.be/45WNgtntZys)
* [1.3 ROS application introduction](https://youtu.be/ci5a4dSmHZY)
* [1.3.1/1.3.2 Build your own ROS Application - Publisher and subscriber nodes](https://youtu.be/gSTuuEykD4g)
* [1.3.3 ROS File system - part 1](https://youtu.be/bG3tDJV-I48)
* [1.3.3 ROS File system - part 2](https://youtu.be/5_I5ZYbbZKs)
* [1.3.4 Custom message types](https://youtu.be/-7iNb7la3Ls)
* [1.3.5 Define and build custom message types](https://youtu.be/5vwyfS7kM5k)
* [1.3.6 Publisher node with custom message type](https://youtu.be/rHnMmyPhnHo)
* [1.3.7 Subscriber ROS node with a custom message type](https://youtu.be/Za9uhhcJ9K8)
* [1.4 ROS Services](https://youtu.be/MVnXfGLQb-c)
* [1.4.1 ROS Services code illustration: Service server part 1](https://youtu.be/7kWdRwww8eE)
* [1.4.1 ROS Services code illustration: Service client part 2](https://youtu.be/ufoxhGzXvrQ)
* [1.5 ROS Actions client server communication](https://youtu.be/whDNzdOx2TI)
* [1.5.1 ROS Actions action message and goal processing](https://youtu.be/M1CI1QHQi1s)
* [1.5.2 ROS Actions code illustration: Part 1](https://youtu.be/NGHym4h7th8)
* [1.5.2 ROS Actions code illustration: Part 2](https://youtu.be/kY0FGTzusPA)
* [1.6 ROS Launch Files](https://youtu.be/Rpj2_FBLkwI)
* [Week 1 Conclusion](https://youtu.be/Pq36Evbqbi0)