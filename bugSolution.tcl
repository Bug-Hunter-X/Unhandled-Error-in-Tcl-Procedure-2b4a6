proc get_element {list index} { 
  if {$index < 0 || $index >= [llength $list]} { 
    return ""  ;# Return empty string on error 
  } 
  return [lindex $list $index] 
} 

# Example usage 
set myList {a b c d e} 
set result [get_element $myList 2] 
puts "Element at index 2: $result" 

set result [get_element $myList 5] 
puts "Element at index 5: $result" 

# More robust error handling using catch
proc get_element_catch {list index} { 
    set result "" 
    catch { 
        if {$index < 0 || $index >= [llength $list]} { 
            error "Index out of range" 
        } 
        set result [lindex $list $index] 
    } msg 
    if {$msg != ""} { 
        puts "Error: $msg" 
    } 
    return $result 
} 

set result [get_element_catch $myList 2] 
puts "Element at index 2: $result" 

set result [get_element_catch $myList 5] 
puts "Element at index 5: $result"