#include <iostream>
#include "ros/ros.h"
#include "std_msgs/String.h"
#include "tgs_ros/order.h"

using namespace std;

ros::Subscriber sub_order;

void driverCallback(const tgs_ros::order::ConstPtr& order_msg) {
    cout << "Ada user masuk nih!:" << endl;
    cout << "Username: " << order_msg->user_name<< endl;
}



int main(int argc, char **argv)
{
  ros::init(argc, argv, "order_subscriber");
  ros::NodeHandle n;

  sub_order = n.subscribe("order_registered", 1000, driverCallback);
  ros::spin();

  return 0;
}