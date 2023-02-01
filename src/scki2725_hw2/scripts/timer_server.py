#!/usr/bin/env python

from __future__ import print_function

from scki2725_hw2.srv import Timer, TimerResponse
import rospy
import time

#handles requests to the server
def handle_timer(req):
    #sends the start time of the request
    #note unclear if do this or just pass the start time
    #from client? I will pass start time from client instead
    #request_start_time = time.time()

    #otherwise just use the one passed in
    request_start_time = req.start
    if req.printing:
        print("Returning [%s]"%(request_start_time))
    return TimerResponse(request_start_time)

def timer_server():
    rospy.init_node('timer_server')
    s = rospy.Service('timer', Timer, handle_timer)
    print("Ready to do some timing.")
    rospy.spin()

if __name__ == "__main__":
    timer_server()