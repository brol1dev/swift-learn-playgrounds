import Foundation

public class LinkedList<T: Equatable> {
  var head: Node<T>?
  
  public init() {
    
  }
  
  public class Node<T: Equatable>: NSCopying {
    var value: T
    var next: Node?
    
    init(_ value: T) {
      self.value = value
    }
    
    public func copy(with zone: NSZone? = nil) -> Any {
      let copy = Node(self.value)
      copy.next = self.next?.copy() as? Node<T>
      return copy
    }
  }
  
  public var isEmpty: Bool {
    head == nil
  }
  
  public var first: Node<T>? {
    head
  }
  
  public var length: Int {
    var count = 0
    var currentNode = head
    while (currentNode != nil) {
      count += 1
      currentNode = currentNode?.next
    }
    return count
  }
  
  public func insertAtEnd(_ value: T) {
    guard !isEmpty else {
      head = Node(value)
      return
    }
    
    var currentNode = head
    while (currentNode?.next != nil) {
      currentNode = currentNode?.next
    }
    
    currentNode?.next = Node(value)
  }
  
  public func insertAtFront(_ value: T) {
    guard !isEmpty else {
      head = Node(value)
      return
    }
    
    let prevHead = head
    head = Node(value)
    head?.next = prevHead
  }
  
  public func printList() {
    var currentNode = head
    while currentNode != nil {
      print(currentNode?.value ?? "", terminator: " -> ")
      currentNode = currentNode?.next
    }
    print("nil")
  }
}
