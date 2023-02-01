#!/usr/bin/env python3

from __future__ import print_function

import sys
import rospy
from rospy_tutorials.srv import *
import time

def timer_client(should_print_param):
    rospy.wait_for_service('timer')
    try:
        start_time = time.time()
        timer = rospy.ServiceProxy('timer', Timer)
        resp1 = timer(should_print_param, start_time)
        end_time = time.time()
        total_time = end_time - resp1.time
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