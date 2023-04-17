import Foundation

extension LinkedList {
  public func removeValue(_ value: T) -> LinkedList? {
    let copyList = LinkedList<T>()
    copyList.head = head?.copy() as? Node<T>
    
    var currentNode = copyList.head
    var previousNode: Node<T>?
    while let node = currentNode {
      if node.value == value {
        if let previousNode = previousNode {
          previousNode.next = node.next
        } else {
          copyList.head = node.next
        }
      } else {
        previousNode = node
      }
      currentNode = node.next
    }
    
    return copyList
  }
}
