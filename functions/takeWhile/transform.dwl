%dw 2.0
import some from dw::core::Arrays
import * from dw::core::Objects
//import * from dw::util::Coercions

/* fun containsEmptyValues(value: Null) = true
fun containsEmptyValues(value: String) = isEmpty(value)

fun containsEmptyValues(obj: Array)  = obj match {
   case [] -> true
   case obj is Array -> obj some isEmpty($)
   else -> isEmpty(obj) 
}

fun containsEmptyValues(obj: Object)  = obj match {
   case [] -> true
   case obj is Array -> obj some isEmpty($)
   else -> isEmpty(obj) 
} */
output application/json
---
 payload takeWhile ((value, key) -> isEmpty(value) != true )
// isEmpty([{}]) returns false
