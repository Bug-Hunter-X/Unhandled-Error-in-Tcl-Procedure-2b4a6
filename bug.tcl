proc get_element {list index} { 
  if {$index < 0 || $index >= [llength $list]} { 
    error "Index out of range" 
  } 
  return [lindex $list $index] 
} 

# Example usage
set myList {a b c d e} 
puts "Element at index 2: [get_element $myList 2]"  
puts "Element at index 5: [get_element $myList 5]"