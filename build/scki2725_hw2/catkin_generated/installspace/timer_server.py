#!/usr/bin/env python3

from __future__ import print_function

from scki2725_hw2.srv import Timer, TimerResponse
import rospy
#import time

#handles requests to the server
def handle_timer(req):
    #I guess we start the timer here, since that would
    #time execution time and return to client (ignore time to srv)
    time_stamp = rospy.Time.now()
    time_clock = rospy.get_time()
    if req.printing:
        print("Returning [%s, %s]"%(time_stamp, time_clock))
    return TimerResponse(time_stamp, time_clock)

def timer_server():
    rospy.init_node('timer_server')
    s = rospy.Service('timer', Timer, handle_timer)
    print("Ready to do some timing.")
    rospy.spin()

if __name__ == "__main__":
    timer_server()