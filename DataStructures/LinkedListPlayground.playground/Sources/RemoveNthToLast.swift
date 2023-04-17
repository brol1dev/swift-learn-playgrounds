import Foundation

extension LinkedList {
  public func removeFromLast(_ n: Int) -> LinkedList? {
    let count = self.length
    guard n < count, n >= 0 else {
      return nil
    }
    
    let copyList = LinkedList<T>()
    copyList.head = head?.copy() as? Node<T>
    
    let indexToRemove = count - n - 1
    var currentIndex = 0
    var currentNode = copyList.head
    var previousNode: Node<T>?
    while currentIndex < indexToRemove {
      currentIndex += 1
      previousNode = currentNode
      currentNode = currentNode?.next
    }
    
    if let previousNode = previousNode {
      previousNode.next = currentNode?.next
      currentNode?.next = nil
    } else {
      copyList.head = currentNode?.next
    }
    
    return copyList
  }
}
