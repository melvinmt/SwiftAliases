//    Copyright (c) 2014 Melvin Tercan
//
//    Permission is hereby granted, free of charge, to any person obtaining a copy
//    of this software and associated documentation files (the "Software"), to deal
//    in the Software without restriction, including without limitation the rights
//    to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
//    copies of the Software, and to permit persons to whom the Software is
//    furnished to do so, subject to the following conditions:
//
//    The above copyright notice and this permission notice shall be included in all
//    copies or substantial portions of the Software.
//
//    THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
//    IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
//    FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
//    AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
//    LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
//    OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
//    SOFTWARE.

import Foundation

func mainQueue(dispatch_block: dispatch_block_t) {
    dispatch_async(dispatch_get_main_queue()) {
        dispatch_block()
    }
}

func defaultQueue(dispatch_block: dispatch_block_t) {
    dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0)) {
        dispatch_block()
    }
}

func backgroundQueue(dispatch_block: dispatch_block_t) {
    dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_BACKGROUND, 0)) {
        dispatch_block()
    }
}

func highPriorityQueue(dispatch_block: dispatch_block_t) {
    dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_HIGH, 0)) {
        dispatch_block()
    }
}

func lowPriorityQueue(dispatch_block: dispatch_block_t) {
    dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_LOW, 0)) {
        dispatch_block()
    }
}

/*
 * DELAYED
 */

func delay(delaySecs:Double, dispatch_block:dispatch_block_t) {
    delayedMainQueue(delaySecs, dispatch_block)
}

func delayedMainQueue(delaySecs:Double, dispatch_block:dispatch_block_t) {
    dispatch_after(
        dispatch_time(
            DISPATCH_TIME_NOW,
            Int64(delaySecs * Double(NSEC_PER_SEC))
        ),
        dispatch_get_main_queue(), dispatch_block)
}

func delayedDefaultQueue(delaySecs:Double, dispatch_block:dispatch_block_t) {
    dispatch_after(
        dispatch_time(
            DISPATCH_TIME_NOW,
            Int64(delaySecs * Double(NSEC_PER_SEC))
        ),
        dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0), dispatch_block)
}

func delayedBackgroundQueue(delaySecs:Double, dispatch_block:dispatch_block_t) {
    dispatch_after(
        dispatch_time(
            DISPATCH_TIME_NOW,
            Int64(delaySecs * Double(NSEC_PER_SEC))
        ),
        dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_BACKGROUND, 0), dispatch_block)
}

func delayedHighPriorityQueue(delaySecs:Double, dispatch_block:dispatch_block_t) {
    dispatch_after(
        dispatch_time(
            DISPATCH_TIME_NOW,
            Int64(delaySecs * Double(NSEC_PER_SEC))
        ),
        dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_HIGH, 0), dispatch_block)
}

func delayedLowPriorityQueue(delaySecs:Double, dispatch_block:dispatch_block_t) {
    dispatch_after(
        dispatch_time(
            DISPATCH_TIME_NOW,
            Int64(delaySecs * Double(NSEC_PER_SEC))
        ),
        dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_LOW, 0), dispatch_block)
}
