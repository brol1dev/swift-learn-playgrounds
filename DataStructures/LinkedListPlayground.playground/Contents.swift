
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

//testRemoveNthToLastNode()

func testRemoveValue() {
  let list1 = LinkedList<Int>()
  list1.insertAtEnd(1)
  list1.insertAtEnd(2)
  list1.insertAtEnd(3)
  list1.printList()

  let copy1 = list1.removeValue(3)
  print("Remove 3s")
  copy1?.printList()
  
  let list2 = LinkedList<Int>()
  list2.insertAtEnd(8)
  list2.insertAtEnd(1)
  list2.insertAtEnd(1)
  list2.insertAtEnd(4)
  list2.insertAtEnd(12)
  list2.printList()

  let copy2 = list2.removeValue(1)
  print("Remove 1s")
  copy2?.printList()
  
  let list3 = LinkedList<Int>()
  list3.insertAtEnd(7)
  list3.insertAtEnd(12)
  list3.insertAtEnd(2)
  list3.insertAtEnd(9)
  list3.printList()

  let copy3 = list3.removeValue(7)
  print("Remove 7s")
  copy3?.printList()
}

testRemoveValue()
