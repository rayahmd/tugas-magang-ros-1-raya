#include "ros/ros.h"
#include "tgs_ros/driver.h"
#include "driverfile.h"

int main(int argc, char** argv){
    ros::init(argc, argv, "driver_publisher");
    ros::NodeHandle n;
    driver_pub = n.advertise<tgs_ros::driver>("driver_registered", 1000);
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
    switch(opsi){
        case 1: 
        cout << "Masukkan nama anda: " << endl;
        getline(cin, usr);
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