#include <iostream>
#include "ros/ros.h"
#include "std_msgs/String.h"
#include "tgs_ros/driver.h"

using namespace std;

ros::Subscriber sub_driver;

void driverCallback(const tgs_ros::driver::ConstPtr& msg) {
    cout << "Driver baru terdaftar:" << endl;
    cout << "ID Driver: " << msg->driver_id << endl;
    cout << "Nama: " << msg->name << endl;
    cout << "Mobil: " << msg->car_brand << " " << msg->car_type << endl;
    cout << "Plat Nomor: " << msg->plate << endl;
}



int main(int argc, char **argv)
{
  ros::init(argc, argv, "driver_subscriber");
  ros::NodeHandle n;

  sub_driver = n.subscribe("driver_registered", 1000, driverCallback);
  ros::spin();

  return 0;
}