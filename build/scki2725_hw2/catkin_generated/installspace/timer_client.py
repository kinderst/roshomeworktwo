#!/usr/bin/env python3

from __future__ import print_function

import sys
import rospy
from scki2725_hw2.srv import *
#import time

def timer_client(should_print_param):
    rospy.wait_for_service('timer')
    try:
        timer = rospy.ServiceProxy('timer', Timer)
        resp1 = timer(should_print_param)
        #for checking clock
        #end_time = rospy.get_time()
        end_time = rospy.Time.now()
        total_time = end_time - resp1.stamp
        total_time = total_time.to_sec()
        #for checking clock
        # total_time = end_time - resp1.clock
        return total_time
    except rospy.ServiceException as e:
        print("Service call failed: %s"%e)

def usage():
    return "%s [x y]"%sys.argv[0]

if __name__ == "__main__":
    if len(sys.argv) == 2:
        should_print = bool(sys.argv[1])
    else:
        print(usage())
        sys.exit(1)
    print("Requesting timer with print = %s"%(should_print))
    print("yo: %s"%(timer_client(should_print)))
    data_array = []
    for i in range(400):
        data_array.append(timer_client(should_print))
    with open('cli_srv_results.txt', 'w') as f:
        for line in data_array:
            f.write("%s\n" % line)