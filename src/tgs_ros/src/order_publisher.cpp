#include "ros/ros.h"
#include "tgs_ros/order.h"
#include "driverfile.h"

int main(int argc, char** argv){
    ros::init(argc, argv, "order_publisher");
    ros::NodeHandle n;
    order_pub = n.advertise<tgs_ros::order>("order_registered", 1000);
    circularLinkList driverlist;
    Administrator admin;
    User user(driverlist);
    int opsi;
    string username, usr;
    int pin;
    do{
    welcome_menu();
    cin >> opsi;
    cin.ignore();
    tgs_ros::order order_msg;
    switch(opsi){
        case 1: 
        cout << "Masukkan nama anda: " << endl;
        getline(cin, usr);
        order_msg.user_name = usr;
        order_pub.publish(order_msg);
        user.setUsername(usr);
        user.userMenu();
        break;
        case 2:
        cout << "Masukkan username anda: " << endl;
        getline(cin, username);
        cout << "Masukkan pin anda: " << endl;
        cin >> pin;
        cin.ignore();
        if(admin.login(username, pin)){
            admin.admin_menu(driverlist);
        }
        break;
        case 3:

        case 4:
        //summon class administrator
        default:
        cout << " " << endl;
        }
    } while (opsi != 0);

    ros::Rate loop_rate(10);
    while (ros::ok()) {
        ros::spinOnce();  // menjaga node tetap berjalan
        loop_rate.sleep();
    }
    return 0;
}