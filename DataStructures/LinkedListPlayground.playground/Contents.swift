
func testRemoveNthToLastNode() {
  let list = LinkedList<Int>()
  list.insertAtEnd(1)
  list.insertAtEnd(2)
  list.insertAtEnd(3)
  list.printList()

  let copy1 = list.removeFromLast(0)
  copy1?.printList()
  let copy2 = list.removeFromLast(1)
  copy2?.printList()
  let copy3 = list.removeFromLast(2)
  copy3?.printList()
  let copy4 = list.removeFromLast(-1)
  copy4?.printList()
  let copy5 = list.removeFromLast(3)
  copy5?.printList()
}

testRemoveNthToLastNode()
