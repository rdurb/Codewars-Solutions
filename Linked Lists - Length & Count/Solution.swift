class Node {
    var data: Int
    var next: Node?
    init(_ data: Int) {
        self.data = data
    }
}

func length(_ head: Node?) -> Int {  
  var current = head
  var length: Int = 0
  
  // Traverse the list, incrementing the counter with each node
  while (current != nil) {
    length += 1
    current = current?.next
  }
  
  return length
}

func count(_ head: Node?, _ data: Int) -> Int {
  var current = head
  
  // Traverse the list, incrementing the counter if the data matches the data parameter
  var dataCounter = 0
  while (current != nil) {
    if (current?.data == data) {
      dataCounter += 1
    }
    current = current?.next
  }

  return dataCounter
}