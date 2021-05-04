// z is only removed after the if (after the jumpdest)
{ let z := mload(0) if z { let x := z } let t := 3 }
// ====
// stackOptimization: true
// ----
//     /* "":72:73   */
//   0x00
//     /* "":66:74   */
//   mload
//     /* "":57:74   */
//   dup1
//   tag_1
//   jumpi
// tag_2:
//   pop
//     /* "":104:105   */
//   0x03
//     /* "":95:105   */
//   pop
//   stop
// tag_1:
//     /* "":82:92   */
//   pop
//   calldatasize
//   jump(tag_2)
