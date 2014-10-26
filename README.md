SwiftAliases
============

Collection of short Swift aliases for often used boiler plate code.

# Installation
Drag the `QueueAliases.swift` file to your XCode project.

# Usage
Queue aliases: `mainQueue`, `defaultQueue`, `backgroundQueue`, `highPriorityQueue`, `lowPriorityQueue`.
```swift
  func doSomething() {
      defaultQueue {
        // Do something in the default queue.
        mainQueue {
          // Do something in the main queue.
        }
      }
  }
  
  // Which does the same as:
  func usedDoSomethingLikeThis() {
    dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0), {
       // Do something in the default queue.
        dispatch_async(dispatch_get_main_queue(), {
          // Do something in the main queue.
        })
    })
```

Delayed queues aliases: `delay:` (which is a shorthand notation for: `delayedMainQueue:`), `delayedDefaultQueue:`, `delayedBackgroundQueue:`, `delayedHighPriorityQueue:`, `delayedLowPriorityQueue:`.
```swift
  func doSomethingLater() {
    delay(4) {
      // Do something in the main queue after 4 seconds.
    }
    
    delayedBackgroundQueue(9) {
      // Do something in the background queue after 9 seconds.
    }
  }
```
