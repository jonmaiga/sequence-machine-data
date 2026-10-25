import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C004
import Seq.B000.C005
import Seq.B000.C006
import Seq.B000.C007
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C038
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
import Seq.B012.C000
import Seq.B013.C000
import Seq.B014.C000
import Seq.Opaque.C000
import Seq.Opaque.C001
import Seq.Opaque.C002
import Seq.Opaque.C003
import Seq.Opaque.C004
import Seq.Opaque.C005
import Seq.Opaque.C006
import Seq.Opaque.C007
import Seq.Opaque.C008
import Seq.Opaque.C009
import Seq.Opaque.C010
import Seq.Opaque.C011
import Seq.Opaque.C012
import Seq.Opaque.C013
import Seq.Opaque.C014
import Seq.Opaque.C015
import Seq.Opaque.C016
import Seq.Opaque.C017
import Seq.Opaque.C018
import Seq.Opaque.C019
import Seq.Opaque.C020
import Seq.Opaque.C021
import Seq.Opaque.C022
import Seq.Opaque.C023
import Seq.Opaque.C024

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A256900: Number of (n+2)X(4+2) 0..1 arrays with every 3X3 subblock sum of the two medians of the central row and column plus the two sums of the diagonal and antidiagonal nondecreasing horizontally and vertically.

The programs for A256900, there is no canonical definition to state claims against.
-/

/-! ## A256900.P2037837415271951594

`A256904(∑[n+3]+7)`
-/

namespace A256900.P2037837415271951594
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256904 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A256900.P2037837415271951594

/-! ## A256900.P14991140736485773364

`abs((1-and(2, n))*A256904(A052905(n)+9))`
-/

namespace A256900.P14991140736485773364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(1 - (Nat.land 2 n : ℤ)) * A256904 (A052905 n + 9).toNat|

end

end A256900.P14991140736485773364

/-! ## A256900.P8783583829273405953

`3^C(n, 64)²*A256904(Δ[A005286(n)]+5)`
-/

namespace A256900.P8783583829273405953
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005286 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 ^ Nat.choose n 64 ^ 2 : ℤ) * A256904 (f1 (n + 1) - f1 n + 5).toNat

end

end A256900.P8783583829273405953

/-! ## A256900.P15998007659541760315

`A033999(n)²*A256904(A052905(n)+9)`
-/

namespace A256900.P15998007659541760315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n ^ 2 * A256904 (A052905 n + 9).toNat

end

end A256900.P15998007659541760315

/-! ## A256900.P15387527913692606570

`A256904(A052905(n)+9)%A256902(n+1)`
-/

namespace A256900.P15387527913692606570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A256904 (A052905 n + 9).toNat) (A256902 (n + 1))

end

end A256900.P15387527913692606570

/-! ## A256900.P2219539327202526427

`A256904(A167614(n+2)+1)%A256902(n+1)`
-/

namespace A256900.P2219539327202526427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A256904 (A167614 (n + 2) + 1).toNat) (A256902 (n + 1))

end

end A256900.P2219539327202526427

/-! ## A256900.P12728782763133802493

`A040131(2*n+1)*A256904(Δ[A005286(n)]+5)`
-/

namespace A256900.P12728782763133802493
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005286 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040131 (2 * n + 1) * A256904 (f1 (n + 1) - f1 n + 5).toNat

end

end A256900.P12728782763133802493

/-! ## A256900.P15953614911371982830

`A132380(4*n+2)²*A256904(Δ[A005286(n)]+5)`
-/

namespace A256900.P15953614911371982830
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005286 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132380 (4 * n + 2) ^ 2 * A256904 (f1 (n + 1) - f1 n + 5).toNat

end

end A256900.P15953614911371982830

/-! ## A256900.P253666769131545899

`A014963(A315727(n))*A256904(A167614(n+2)+1)`
-/

namespace A256900.P253666769131545899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A315727 n).toNat * A256904 (A167614 (n + 2) + 1).toNat

end

end A256900.P253666769131545899

/-! ## A256900.P2846799703960858748

`A001222(A046732(n+1))*A256904(A055998(n+2))`
-/

namespace A256900.P2846799703960858748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A046732 (n + 1)).toNat * A256904 (A055998 (n + 2)).toNat

end

end A256900.P2846799703960858748

/-!
# A256901: Number of (n+2)X(5+2) 0..1 arrays with every 3X3 subblock sum of the two medians of the central row and column plus the two sums of the diagonal and antidiagonal nondecreasing horizontally and vertically.

The programs for A256901, there is no canonical definition to state claims against.
-/

/-! ## A256901.P1206784095380884979

`A256904(record[a(n-1)-5+n]+1)` with `a(0)=14`
-/

namespace A256901.P1206784095380884979
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [14] fun n f1 =>
  f1 (n - 1) - 5 + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256904 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 1).toNat

end

end A256901.P1206784095380884979

/-! ## A256901.P4565714821726809870

`A256904(A167499(n+3))`
-/

namespace A256901.P4565714821726809870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256904 (A167499 (n + 3)).toNat

end

end A256901.P4565714821726809870

/-! ## A256901.P4533182864734001842

`A256904(A000217(n+4)+5)`
-/

namespace A256901.P4533182864734001842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256904 (A000217 (n + 4) + 5).toNat

end

end A256901.P4533182864734001842

/-! ## A256901.P8457517272923599883

`((n+1)%2)!*A256904(A155212(n)+13)`
-/

namespace A256901.P8457517272923599883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial ((n + 1) % 2) : ℤ) * A256904 (A155212 n + 13).toNat

end

end A256901.P8457517272923599883

/-! ## A256901.P11108788632863230846

`A256904(∑[n+5]+6)`
-/

namespace A256901.P11108788632863230846
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256904 (∑ j ∈ Finset.range (n + 1), f1 j + 6)

end

end A256901.P11108788632863230846

/-!
# A256902: Number of (n+2)X(6+2) 0..1 arrays with every 3X3 subblock sum of the two medians of the central row and column plus the two sums of the diagonal and antidiagonal nondecreasing horizontally and vertically.

The programs for A256902, there is no canonical definition to state claims against.
-/

/-! ## A256902.P5121411157055548229

`A005171((n+1)²)*A256904(A000217(n+5)+6)`
-/

namespace A256902.P5121411157055548229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005171 ((n + 1) ^ 2) * A256904 (A000217 (n + 5) + 6).toNat

end

end A256902.P5121411157055548229

/-! ## A256902.P7009275618505628479

`A256904(A000217(n+5)+6)+A015389(2*n+1)`
-/

namespace A256902.P7009275618505628479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256904 (A000217 (n + 5) + 6).toNat + A015389 (2 * n + 1)

end

end A256902.P7009275618505628479

/-! ## A256902.P5329056675863172132

`A256904(A000217(n+5)+6)+A005171(A000040(n+1))`
-/

namespace A256902.P5329056675863172132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256904 (A000217 (n + 5) + 6).toNat + A005171 (A000040 (n + 1)).toNat

end

end A256902.P5329056675863172132

/-! ## A256902.P333923556295296468

`A300372(A290104(n+1))+A256904(A000217(n+5)+6)`
-/

namespace A256902.P333923556295296468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300372 (A290104 (n + 1)).toNat + A256904 (A000217 (n + 5) + 6).toNat

end

end A256902.P333923556295296468

/-! ## A256902.P1149532801418219179

`A256904((n+4)²-∑[n+1]+1)`
-/

namespace A256902.P1149532801418219179
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256904 (((n + 4) ^ 2 : ℤ) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + 1).toNat

end

end A256902.P1149532801418219179

/-!
# A256903: Number of (n+2)X(7+2) 0..1 arrays with every 3X3 subblock sum of the two medians of the central row and column plus the two sums of the diagonal and antidiagonal nondecreasing horizontally and vertically.

The programs for A256903, there is no canonical definition to state claims against.
-/

/-! ## A256903.P2977596687718446828

`A256904(A000096(n+5)+8)`
-/

namespace A256903.P2977596687718446828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256904 (A000096 (n + 5) + 8).toNat

end

end A256903.P2977596687718446828

/-! ## A256903.P15615113678327030587

`A256904(A000217(n+6)+7)`
-/

namespace A256903.P15615113678327030587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256904 (A000217 (n + 6) + 7).toNat

end

end A256903.P15615113678327030587

/-! ## A256903.P6276642264048314112

`A256904(A027379(n+4)+10)`
-/

namespace A256903.P6276642264048314112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256904 (A027379 (n + 4) + 10).toNat

end

end A256903.P6276642264048314112

/-! ## A256903.P13608280305209798336

`A256904(A374008(n+1))`
-/

namespace A256903.P13608280305209798336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256904 (A374008 (n + 1)).toNat

end

end A256903.P13608280305209798336

/-! ## A256903.P7861906104902288062

`A256904(A055999(n+4))`
-/

namespace A256903.P7861906104902288062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256904 (A055999 (n + 4)).toNat

end

end A256903.P7861906104902288062

/-! ## A256903.P9773010527453597158

`A256904(Δ[A023551(n+2)])`
-/

namespace A256903.P9773010527453597158
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256904 (f1 (n + 1) - f1 n).toNat

end

end A256903.P9773010527453597158

/-! ## A256903.P13370662295935537688

`A256904(A000124(n+7)-7)`
-/

namespace A256903.P13370662295935537688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256904 (A000124 (n + 7) - 7).toNat

end

end A256903.P13370662295935537688

/-!
# A256908: Initialization a(n)=0 for all n; if a(n)=0, a(n+kp)=n where p=prime(n) and k=0,1,2,...

The programs for A256908, there is no canonical definition to state claims against.
-/

/-! ## A256908.P2971067817326501658

`A060680(n+2)%A070080(A077071(3*(n+1)))`
-/

namespace A256908.P2971067817326501658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A060680 (n + 2)) (A070080 (A077071 (3 * (n + 1))).toNat)

end

end A256908.P2971067817326501658

/-! ## A256908.P4556352274438122522

`(n+1)%A028233(A084380(n))`
-/

namespace A256908.P4556352274438122522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 1 : ℤ) (A028233 (A084380 n).toNat)

end

end A256908.P4556352274438122522

/-! ## A256908.P14486112068890681317

`A000027(n+1)%A034684(A084380(n))`
-/

namespace A256908.P14486112068890681317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000027 (n + 1)) (A034684 (A084380 n).toNat)

end

end A256908.P14486112068890681317

/-! ## A256908.P9966713336026846849

`A028310(n+1)%A134194(A084380(n))`
-/

namespace A256908.P9966713336026846849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A028310 (n + 1)) (A134194 (A084380 n).toNat)

end

end A256908.P9966713336026846849

/-!
# A256910: Trace of the enhanced triangular-number representation of n.

The programs for A256910, there is no canonical definition to state claims against.
-/

/-! ## A256910.P7755247521143345612

`A256909(∑[A256911(n)]-1)`
-/

namespace A256910.P7755247521143345612
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256911 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256909 (∑ j ∈ Finset.range (n + 1), f1 j - 1).toNat

end

end A256910.P7755247521143345612

/-! ## A256910.P15777037164139424063

`A256909(∑[(A256911(n)+1+n)%(n+1)])`
-/

namespace A256910.P15777037164139424063
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A256911 n + 1 + (n : ℤ)) (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256909 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A256910.P15777037164139424063

/-! ## A256910.P2640340527670845572

`A256909(∑[A256911(n)%A329503(n)])`
-/

namespace A256910.P2640340527670845572
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A256911 n) (A329503 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256909 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A256910.P2640340527670845572

/-!
# A256911: Number of terms in the enhanced triangular-number representation of n.

The programs for A256911, there is no canonical definition to state claims against.
-/

/-! ## A256911.P8089714550726743495

`A057945(1-A256910(n)+n)`
-/

namespace A256911.P8089714550726743495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057945 (1 - A256910 n + (n : ℤ)).toNat

end

end A256911.P8089714550726743495

/-! ## A256911.P1885118762233852316

`A057945(1-(A256910(n)-n))`
-/

namespace A256911.P1885118762233852316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057945 (1 - (A256910 n - (n : ℤ))).toNat

end

end A256911.P1885118762233852316

/-! ## A256911.P5750722354639670946

`∏{d}[a(A002260(n+1)-1)+1, A020639(#)]` with `a(0)=0, a(1)=1, a(2)=1`
-/

namespace A256911.P5750722354639670946
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 1] fun n f1 =>
  f1 (A002260 (n + 1) - 1).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n), A020639 d

end

end A256911.P5750722354639670946

/-! ## A256911.P1950492073354608166

`A293616(A256910(n))+A057945(A002262(n))`
-/

namespace A256911.P1950492073354608166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293616 (A256910 n).toNat + A057945 (A002262 n).toNat

end

end A256911.P1950492073354608166

/-! ## A256911.P4394548104159547512

`A293616(A256910(n))+A057945(A025668(n+1))`
-/

namespace A256911.P4394548104159547512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293616 (A256910 n).toNat + A057945 (A025668 (n + 1)).toNat

end

end A256911.P4394548104159547512

/-! ## A256911.P15696413639146603474

`A053260(A004457(A002260(n+1))%A182875(n+1))`
-/

namespace A256911.P15696413639146603474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053260 (Int.tmod (A004457 (A002260 (n + 1)).toNat) (A182875 (n + 1))).toNat

end

end A256911.P15696413639146603474

/-!
# A256914: Trace of the enhanced squares representation of n.

The programs for A256914, there is no canonical definition to state claims against.
-/

/-! ## A256914.P7470235229732902690

`A256913(∑[A256915(n)]-1)`
-/

namespace A256914.P7470235229732902690
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256915 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256913 (∑ j ∈ Finset.range (n + 1), f1 j - 1).toNat

end

end A256914.P7470235229732902690

/-! ## A256914.P9681811059668259647

`A256913(∑[A057427(n)*A256915(n)])`
-/

namespace A256914.P9681811059668259647
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A256915 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256913 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A256914.P9681811059668259647

/-! ## A256914.P14017298654774642493

`A256913(lt[A257047(n+1), A256913(n+1)²])`
-/

namespace A256914.P14017298654774642493
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257047 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256913 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256913 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A256914.P14017298654774642493

/-!
# A256915: Length of the enhanced squares representation of n.

The programs for A256915, there is no canonical definition to state claims against.
-/

/-! ## A256915.P10224359101822631336

`A190321(n-A256914(n))+1`
-/

namespace A256915.P10224359101822631336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190321 ((n : ℤ) - A256914 n).toNat + 1

end

end A256915.P10224359101822631336

/-! ## A256915.P11645149507296859694

`A190321(A028387(n-A256914(n)))`
-/

namespace A256915.P11645149507296859694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190321 (A028387 ((n : ℤ) - A256914 n).toNat).toNat

end

end A256915.P11645149507296859694

/-!
# A256916: a(n) = (a(n-1) * a(n-5) + a(n-3)^2) / a(n-6) with a(0) = a(1) = 1, a(2) = 0, a(3) = -1, a(4) = -3, a(8) = 29.

The programs for A256916, the canonical program `A256916.P11125759360836264170` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A256916 has offset 0).

The definition of A256916 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A256916.P5995265113089756656

`A256858(2*n)`
-/

namespace A256916.P5995265113089756656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256858 (2 * n)

end

end A256916.P5995265113089756656

namespace A256916

/-- `A256858(2*n)` -/
def P5995265113089756656.Spec : Prop :=
  ∀ n, P5995265113089756656.a n = A256916 n

end A256916

/-! ## A256916.P11125759360836264170

`(a(n-1)*a(n-5)+a(n-3)²)/a(n-6)` with `a(0)=1, a(1)=1, a(2)=0, a(3)=-1, a(4)=-3, a(5)=-3, a(6)=-2, a(7)=9, a(8)=29`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A256916

/-- `(a(n-1)*a(n-5)+a(n-3)²)/a(n-6)` -/
def P11125759360836264170.Spec : Prop :=
  ∀ n, P11125759360836264170.a n = (A256916 n : ℚ)

end A256916

/-! ## A256916.P13460012902792828162

`A256858(A005843(n))^(1-char[1])`
-/

namespace A256916.P13460012902792828162
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A256858 (A005843 n).toNat : ℚ) ^ (1 - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) : ℤ)

end

end A256916.P13460012902792828162

namespace A256916

/-- `A256858(A005843(n))^(1-char[1])` -/
def P13460012902792828162.Spec : Prop :=
  ∀ n, P13460012902792828162.a n = (A256916 n : ℚ)

end A256916

/-! ## A256916.P4484318576973990828

`or(n%2, A256858(A000267(n²)))`
-/

namespace A256916.P4484318576973990828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((n % 2 : ℕ) : ℤ) (A256858 (A000267 (n ^ 2)).toNat)

end

end A256916.P4484318576973990828

namespace A256916

/-- `or(n%2, A256858(A000267(n²)))` -/
def P4484318576973990828.Spec : Prop :=
  ∀ n, P4484318576973990828.a n = A256916 n

end A256916

/-! ## A256916.P10364480200772647096

`A256858(A005843(n))/A304042(n)`
-/

namespace A256916.P10364480200772647096
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A256858 (A005843 n).toNat : ℚ) / (A304042 n : ℚ)

end

end A256916.P10364480200772647096

namespace A256916

/-- `A256858(A005843(n))/A304042(n)` -/
def P10364480200772647096.Spec : Prop :=
  ∀ n, P10364480200772647096.a n = (A256916 n : ℚ)

end A256916

/-! ## A256916.P2041742619811662079

`or(A000007(n), A256858(A005843(n)))`
-/

namespace A256916.P2041742619811662079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A256858 (A005843 n).toNat)

end

end A256916.P2041742619811662079

namespace A256916

/-- `or(A000007(n), A256858(A005843(n)))` -/
def P2041742619811662079.Spec : Prop :=
  ∀ n, P2041742619811662079.a n = A256916 n

end A256916

/-! ## A256916.P8959475635057930130

`or(A000035(n), A256858(A005843(n)))`
-/

namespace A256916.P8959475635057930130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000035 n) (A256858 (A005843 n).toNat)

end

end A256916.P8959475635057930130

namespace A256916

/-- `or(A000035(n), A256858(A005843(n)))` -/
def P8959475635057930130.Spec : Prop :=
  ∀ n, P8959475635057930130.a n = A256916 n

end A256916

/-! ## A256916.P2938729340748631686

`or(A011765(n+1), A256858(A005843(n)))`
-/

namespace A256916.P2938729340748631686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A011765 (n + 1)) (A256858 (A005843 n).toNat)

end

end A256916.P2938729340748631686

namespace A256916

/-- `or(A011765(n+1), A256858(A005843(n)))` -/
def P2938729340748631686.Spec : Prop :=
  ∀ n, P2938729340748631686.a n = A256916 n

end A256916

/-! ## A256916.P2729530630768843689

`A256858(n+n)^A061901(A061901(n))`
-/

namespace A256916.P2729530630768843689
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A256858 (n + n) : ℚ) ^ (A061901 (A061901 n).toNat : ℤ)

end

end A256916.P2729530630768843689

namespace A256916

/-- `A256858(n+n)^A061901(A061901(n))` -/
def P2729530630768843689.Spec : Prop :=
  ∀ n, P2729530630768843689.a n = (A256916 n : ℚ)

end A256916

/-! ## A256916.P2655291295585037204

`A256858(n+n)+A000007(A327782(n+7))`
-/

namespace A256916.P2655291295585037204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256858 (n + n) + A000007 (A327782 (n + 7)).toNat

end

end A256916.P2655291295585037204

namespace A256916

/-- `A256858(n+n)+A000007(A327782(n+7))` -/
def P2655291295585037204.Spec : Prop :=
  ∀ n, P2655291295585037204.a n = A256916 n

end A256916

/-!
# A256917: Primes which are not the sums of two consecutive nonsquares.

The programs for A256917, the canonical program `A256917.P831048343332531740` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A256917 has offset 1).

The definition of A256917 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 318 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A256917.P831048343332531740

`p?[or(1, (n+1)²-a(n-1))]` with `a(0)=2`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A256917

/-- `p?[or(1, (n+1)²-a(n-1))]` -/
def P831048343332531740.Spec : Prop :=
  ∀ n, P831048343332531740.a n = A256917 (n + 1)

theorem P831048343332531740.correct : P831048343332531740.Spec := by
  intro n
  simp only [A256917, Nat.add_sub_cancel]

end A256917

/-! ## A256917.P558004324597200870

`p?[∑[(n-1)*char[4*n-1]+1]+1]`
-/

namespace A256917.P558004324597200870
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * n : ℤ) - 1

open Classical in
def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1) * ((if ∃ j, f3 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A256917.P558004324597200870

namespace A256917

/-- `p?[∑[(n-1)*char[4*n-1]+1]+1]` -/
def P558004324597200870.Spec : Prop :=
  ∀ n, P558004324597200870.a n = A256917 (n + 1)

end A256917

/-! ## A256917.P15252686148531057420

`record[A006530(A004273(floor(n/2)²+n)+2)]`
-/

namespace A256917.P15252686148531057420
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A004273 (⌊(n : ℚ) / 2⌋ ^ 2 + (n : ℤ)).toNat + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A256917.P15252686148531057420

namespace A256917

/-- `record[A006530(A004273(floor(n/2)²+n)+2)]` -/
def P15252686148531057420.Spec : Prop :=
  ∀ n, P15252686148531057420.a n = A256917 (n + 1)

end A256917

/-! ## A256917.P13142670612494835960

`record[A014963(∑[A175676(4*n+1)]+n+2)]`
-/

namespace A256917.P13142670612494835960
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175676 (4 * n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (∑ j ∈ Finset.range (n + 1), f2 j + (n : ℤ) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A256917.P13142670612494835960

namespace A256917

/-- `record[A014963(∑[A175676(4*n+1)]+n+2)]` -/
def P13142670612494835960.Spec : Prop :=
  ∀ n, P13142670612494835960.a n = A256917 (n + 1)

end A256917

/-! ## A256917.P11362269497121591335

`eq[A018783(n), A051258(A053186(2*(n+1)))]`
-/

namespace A256917.P11362269497121591335
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018783 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051258 (A053186 (2 * (n + 1))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A256917.P11362269497121591335

namespace A256917

/-- `eq[A018783(n), A051258(A053186(2*(n+1)))]` -/
def P11362269497121591335.Spec : Prop :=
  ∀ n, (P11362269497121591335.a n : ℤ) = A256917 (n + 1)

end A256917

/-!
# A256918: Greatest common divisors of adjacent terms in A257218.

The programs for A256918, there is no canonical definition to state claims against.
-/

/-! ## A256918.P1940560198833772529

`gcd(A257218(n+1), A257218(n+2))`
-/

namespace A256918.P1940560198833772529
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A257218 (n + 1)) (A257218 (n + 2))

end

end A256918.P1940560198833772529

/-!
# A256921: Decimal expansion of Sum_{k>=2} zeta(k)/(k*2^k).

The programs for A256921, there is no canonical definition to state claims against.
-/

/-! ## A256921.P9323514406849853781

`9-A374775(n)`
-/

namespace A256921.P9323514406849853781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 - A374775 n

end

end A256921.P9323514406849853781

/-!
# A256928: Numbers k such that R_(k+2) + 4*10^k is prime, where R_k = 11...1 is the repunit (A002275) of length k.

The programs for A256928, there is no canonical definition to state claims against.
-/

/-! ## A256928.P11177769838365302697

`A113865(ceil(sinh(A191190(n+1))))`
-/

namespace A256928.P11177769838365302697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113865 ⌈Real.sinh (A191190 (n + 1) : ℝ)⌉.toNat

end

end A256928.P11177769838365302697

/-!
# A256933: Numbers k such that R_(k+2) + 7*10^k is prime, where R_k = 11...1 is the repunit (A002275) of length k.

The programs for A256933, there is no canonical definition to state claims against.
-/

/-! ## A256933.P1368793367661395328

`A004273(A080119(n+1))-n`
-/

namespace A256933.P1368793367661395328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A080119 (n + 1)).toNat - (n : ℤ)

end

end A256933.P1368793367661395328

/-!
# A256935: Concatenation of odd prime factors of numbers whose digits are all odd.

The programs for A256935, there is no canonical definition to state claims against.
-/

/-! ## A256935.P7347982300608162802

`A037276(A014261(n+1))-floor(acot(n))`
-/

namespace A256935.P7347982300608162802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037276 (A014261 (n + 1)).toNat - ⌊SequenceMachineLib.acot (n : ℝ)⌋

end

end A256935.P7347982300608162802

/-! ## A256935.P2163586753867481661

`A037276(A014261(n+1))-A000007(n)`
-/

namespace A256935.P2163586753867481661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037276 (A014261 (n + 1)).toNat - A000007 n

end

end A256935.P2163586753867481661

/-! ## A256935.P11318144622806150339

`A037276(A014261(n+1))*A057427(n)`
-/

namespace A256935.P11318144622806150339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037276 (A014261 (n + 1)).toNat * A057427 n

end

end A256935.P11318144622806150339

/-! ## A256935.P17578340637967453970

`A037276(A014261(n+1))%A005897(n)`
-/

namespace A256935.P17578340637967453970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A037276 (A014261 (n + 1)).toNat) (A005897 n)

end

end A256935.P17578340637967453970

/-! ## A256935.P12398184067993207448

`A037276(A014261(n+1))-C(n, A006002(n))`
-/

namespace A256935.P12398184067993207448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037276 (A014261 (n + 1)).toNat - (Nat.choose n (A006002 n).toNat : ℤ)

end

end A256935.P12398184067993207448

/-! ## A256935.P7721538415690435333

`A037276(A014261(n+1))-∏{d}[n, A001222(#)]`
-/

namespace A256935.P7721538415690435333
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037276 (A014261 (n + 1)).toNat - ∏ d ∈ Nat.divisors (f1 n), A001222 d

end

end A256935.P7721538415690435333

/-! ## A256935.P5173142789583484301

`A037276(A014261(n+1))-A008683((n+1)²)`
-/

namespace A256935.P5173142789583484301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037276 (A014261 (n + 1)).toNat - A008683 ((n + 1) ^ 2)

end

end A256935.P5173142789583484301

/-! ## A256935.P11574664183647703764

`A000040(n+1)%2*A037276(A014261(n+1))`
-/

namespace A256935.P11574664183647703764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (n + 1)) 2 * A037276 (A014261 (n + 1)).toNat

end

end A256935.P11574664183647703764

/-! ## A256935.P6010663378777538322

`A037276(A014261(n+1))-A000045(C(2, n+2))`
-/

namespace A256935.P6010663378777538322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037276 (A014261 (n + 1)).toNat - A000045 (Nat.choose 2 (n + 2))

end

end A256935.P6010663378777538322

/-! ## A256935.P12841481679867112846

`A037276(A014261(n+1))-∑{d}[n+1, A008683(#)]`
-/

namespace A256935.P12841481679867112846
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037276 (A014261 (n + 1)).toNat - ∑ d ∈ Nat.divisors (f1 n), A008683 d

end

end A256935.P12841481679867112846

/-!
# A256938: Expansion of g.f.: (1-3*z-sqrt(1-6*z+5*z^2+8*z^3-4*z^4))/(2*z^2*(1-z)).

The programs for A256938, there is no canonical definition to state claims against.
-/

/-! ## A256938.P4509819580607185055

`∑[abs(Δ[A176962(n)])]`
-/

namespace A256938.P4509819580607185055
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176962 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A256938.P4509819580607185055

/-! ## A256938.P8052514222664745181

`A176962(n+1)-1`
-/

namespace A256938.P8052514222664745181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176962 (n + 1) - 1

end

end A256938.P8052514222664745181

/-! ## A256938.P12448878109199461642

`∑[Δ[A176962(n)]*A000034(2*n)]`
-/

namespace A256938.P12448878109199461642
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176962 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n) * A000034 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A256938.P12448878109199461642

/-! ## A256938.P5213888566843508127

`∑[Δ[A176962(n)]^(1-A159075(n))]`
-/

namespace A256938.P5213888566843508127
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176962 n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n : ℚ) ^ (1 - A159075 n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A256938.P5213888566843508127

/-! ## A256938.P17971334836925216254

`∑[Δ[A176962(n)]%A025239(n+1)]`
-/

namespace A256938.P17971334836925216254
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176962 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f2 (n + 1) - f2 n) (A025239 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A256938.P17971334836925216254

/-! ## A256938.P11063365648614247598

`∑[Δ[A176962(n)]%A003499(n)]`
-/

namespace A256938.P11063365648614247598
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176962 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f2 (n + 1) - f2 n) (A003499 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A256938.P11063365648614247598

/-!
# A256939: Expansion of g.f.: (1-4*z-sqrt(1-8*z+12*z^2+8*z^3-4*z^4))/(2*z^2(1-z)).

The programs for A256939, there is no canonical definition to state claims against.
-/

/-! ## A256939.P11359428827328112256

`A049093(A216949(n+1))`
-/

namespace A256939.P11359428827328112256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049093 (A216949 (n + 1)).toNat

end

end A256939.P11359428827328112256

/-! ## A256939.P13198806670041000999

`or(1, A008620(A206902(n+1)))`
-/

namespace A256939.P13198806670041000999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A008620 (A206902 (n + 1)).toNat)

end

end A256939.P13198806670041000999

/-!
# A256941: a(n) is the number of free ends of a certain configuration of line segments after n iterations (see Comments lines for definition).

The programs for A256941, there is no canonical definition to state claims against.
-/

/-! ## A256941.P11675035504732886892

`A355911(4*n+5)`
-/

namespace A256941.P11675035504732886892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355911 (4 * n + 5)

end

end A256941.P11675035504732886892

/-! ## A256941.P12238218375506046884

`∑[A005881(A280781(n+1))]`
-/

namespace A256941.P12238218375506046884
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005881 (A280781 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A256941.P12238218375506046884

/-! ## A256941.P9996853447945649454

`A287707(A138327(n+1)+A014681(n))`
-/

namespace A256941.P9996853447945649454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287707 (A138327 (n + 1) + A014681 n).toNat

end

end A256941.P9996853447945649454

/-!
# A256942: Number of odd squarefree numbers <= 2^n.

The programs for A256942, there is no canonical definition to state claims against.
-/

/-! ## A256942.P10230934783403033474

`A143658(n)-a(n-1)` with `a(0)=1`
-/

namespace A256942.P10230934783403033474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A143658 n - a (n - 1)

end

end A256942.P10230934783403033474

/-! ## A256942.P16848875212788365825

`A000079(n)-A101836(n)-a(n-1)` with `a(0)=1`
-/

namespace A256942.P16848875212788365825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000079 n - A101836 n - a (n - 1)

end

end A256942.P16848875212788365825

/-! ## A256942.P5343977507178137965

`A011782(n+1)-(A101836(n)+a(n-1))` with `a(0)=1`
-/

namespace A256942.P5343977507178137965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A011782 (n + 1) - (A101836 n + a (n - 1))

end

end A256942.P5343977507178137965

/-! ## A256942.P7657367124884288408

`A013928(A000051(n))-a(n-1)` with `a(0)=1`
-/

namespace A256942.P7657367124884288408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A013928 (A000051 n).toNat - a (n - 1)

end

end A256942.P7657367124884288408

/-! ## A256942.P537443182992795026

`A013928(A000225(n)+2)-a(n-1)` with `a(0)=1`
-/

namespace A256942.P537443182992795026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A013928 (A000225 n + 2).toNat - a (n - 1)

end

end A256942.P537443182992795026

/-!
# A256943: Number of Grand Dyck-Motzkin paths of length n.

The programs for A256943, there is no canonical definition to state claims against.
-/

/-! ## A256943.P18011206599205170875

`A239077(n)+A183063(A000142(n))`
-/

namespace A256943.P18011206599205170875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239077 n + A183063 (A000142 n).toNat

end

end A256943.P18011206599205170875

/-! ## A256943.P9353149054578624895

`A367213(n)+A247911(A055887(n))`
-/

namespace A256943.P9353149054578624895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367213 n + A247911 (A055887 n).toNat

end

end A256943.P9353149054578624895

/-! ## A256943.P17514432967636859369

`A275207(n)-A102683(A301455(n))`
-/

namespace A256943.P17514432967636859369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275207 n - A102683 (A301455 n).toNat

end

end A256943.P17514432967636859369

/-! ## A256943.P1253376749010379852

`A275207(n)-A227837(A275165(n))`
-/

namespace A256943.P1253376749010379852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275207 n - A227837 (A275165 n).toNat

end

end A256943.P1253376749010379852

/-!
# A256944: Squares which are not the sums of two consecutive nonsquares.

The programs for A256944, the canonical program `A256944.P11403239477205446670` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A256944 has offset 1).

The definition of A256944 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A257282, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A256944.P11403239477205446670

`A257282(n+1)²`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A256944

/-- `A257282(n+1)²` -/
def P11403239477205446670.Spec : Prop :=
  ∀ n, P11403239477205446670.a n = A256944 (n + 1)

theorem P11403239477205446670.correct : P11403239477205446670.Spec := by
  intro n
  simp only [A256944, Nat.add_sub_cancel]

end A256944

/-! ## A256944.P6212000693410864334

`comp[A257292(n+1)]²`
-/

namespace A256944.P6212000693410864334
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257292 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n ^ 2

end

end A256944.P6212000693410864334

namespace A256944

/-- `comp[A257292(n+1)]²` -/
def P6212000693410864334.Spec : Prop :=
  ∀ n, (P6212000693410864334.a n : ℤ) = A256944 (n + 1)

end A256944

/-! ## A256944.P17514455340040122127

`comp[A257292(n+1)]*A257282(n+1)`
-/

namespace A256944.P17514455340040122127
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257292 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) * A257282 (n + 1)

end

end A256944.P17514455340040122127

namespace A256944

/-- `comp[A257292(n+1)]*A257282(n+1)` -/
def P17514455340040122127.Spec : Prop :=
  ∀ n, P17514455340040122127.a n = A256944 (n + 1)

end A256944

/-! ## A256944.P18439838980215117515

`A257282(A000027(n+1))*A257282(n+1)`
-/

namespace A256944.P18439838980215117515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257282 (A000027 (n + 1)).toNat * A257282 (n + 1)

end

end A256944.P18439838980215117515

namespace A256944

/-- `A257282(A000027(n+1))*A257282(n+1)` -/
def P18439838980215117515.Spec : Prop :=
  ∀ n, P18439838980215117515.a n = A256944 (n + 1)

end A256944

/-! ## A256944.P1667359483097296370

`A257282(n+1)^A020639(A257255(n+1))`
-/

namespace A256944.P1667359483097296370
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A257282 (n + 1) : ℚ) ^ (A020639 (A257255 (n + 1)).toNat : ℤ)

end

end A256944.P1667359483097296370

namespace A256944

/-- `A257282(n+1)^A020639(A257255(n+1))` -/
def P1667359483097296370.Spec : Prop :=
  ∀ n, P1667359483097296370.a n = (A256944 (n + 1) : ℚ)

end A256944

/-! ## A256944.P494131007311738546

`A257282(n+1)^A020639(A257257(n+1))`
-/

namespace A256944.P494131007311738546
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A257282 (n + 1) : ℚ) ^ (A020639 (A257257 (n + 1)).toNat : ℤ)

end

end A256944.P494131007311738546

namespace A256944

/-- `A257282(n+1)^A020639(A257257(n+1))` -/
def P494131007311738546.Spec : Prop :=
  ∀ n, P494131007311738546.a n = (A256944 (n + 1) : ℚ)

end A256944

/-! ## A256944.P10714853539757877993

`A257282(n+1)%A006261(n)*A257282(n+1)`
-/

namespace A256944.P10714853539757877993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A257282 (n + 1)) (A006261 n) * A257282 (n + 1)

end

end A256944.P10714853539757877993

namespace A256944

/-- `A257282(n+1)%A006261(n)*A257282(n+1)` -/
def P10714853539757877993.Spec : Prop :=
  ∀ n, P10714853539757877993.a n = A256944 (n + 1)

end A256944

/-! ## A256944.P1663760485412231899

`A000290(A257282(n+2)-Δ[A257282(n+1)])`
-/

namespace A256944.P1663760485412231899
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257282 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (A257282 (n + 2) - (f1 (n + 1) - f1 n)).toNat

end

end A256944.P1663760485412231899

namespace A256944

/-- `A000290(A257282(n+2)-Δ[A257282(n+1)])` -/
def P1663760485412231899.Spec : Prop :=
  ∀ n, P1663760485412231899.a n = A256944 (n + 1)

end A256944

/-! ## A256944.P13547135369308360769

`A000290(2*A257282(n+1)-A257282(n+1))`
-/

namespace A256944.P13547135369308360769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (2 * A257282 (n + 1) - A257282 (n + 1)).toNat

end

end A256944.P13547135369308360769

namespace A256944

/-- `A000290(2*A257282(n+1)-A257282(n+1))` -/
def P13547135369308360769.Spec : Prop :=
  ∀ n, P13547135369308360769.a n = A256944 (n + 1)

end A256944

/-! ## A256944.P4150483093952961878

`A257282(n+1)*A257282((n+1)%A339803(n+1))`
-/

namespace A256944.P4150483093952961878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257282 (n + 1) * A257282 (Int.tmod (n + 1 : ℤ) (A339803 (n + 1))).toNat

end

end A256944.P4150483093952961878

namespace A256944

/-- `A257282(n+1)*A257282((n+1)%A339803(n+1))` -/
def P4150483093952961878.Spec : Prop :=
  ∀ n, P4150483093952961878.a n = A256944 (n + 1)

end A256944

/-! ## A256944.P6304599530984055349

`record[(A074840(n+1)/A152271(A265744(n)))²]`
-/

namespace A256944.P6304599530984055349
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A074840 (n + 1) : ℚ) / (A152271 (A265744 n).toNat : ℚ)) ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A256944.P6304599530984055349

namespace A256944

/-- `record[(A074840(n+1)/A152271(A265744(n)))²]` -/
def P6304599530984055349.Spec : Prop :=
  ∀ n, P6304599530984055349.a n = (A256944 (n + 1) : ℚ)

end A256944

/-! ## A256944.P15755823174328442044

`A257282(n+1)^A020639(A257251(n+1))`
-/

namespace A256944.P15755823174328442044
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A257282 (n + 1) : ℚ) ^ (A020639 (A257251 (n + 1)).toNat : ℤ)

end

end A256944.P15755823174328442044

namespace A256944

/-- `A257282(n+1)^A020639(A257251(n+1))` -/
def P15755823174328442044.Spec : Prop :=
  ∀ n, P15755823174328442044.a n = (A256944 (n + 1) : ℚ)

end A256944

/-! ## A256944.P11207912803460906008

`A257282(n+1)^A020639(A257252(n+1))`
-/

namespace A256944.P11207912803460906008
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A257282 (n + 1) : ℚ) ^ (A020639 (A257252 (n + 1)).toNat : ℤ)

end

end A256944.P11207912803460906008

namespace A256944

/-- `A257282(n+1)^A020639(A257252(n+1))` -/
def P11207912803460906008.Spec : Prop :=
  ∀ n, P11207912803460906008.a n = (A256944 (n + 1) : ℚ)

end A256944

/-! ## A256944.P14924752852433384422

`A257282(n+1)^A020639(A257256(n+1))`
-/

namespace A256944.P14924752852433384422
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A257282 (n + 1) : ℚ) ^ (A020639 (A257256 (n + 1)).toNat : ℤ)

end

end A256944.P14924752852433384422

namespace A256944

/-- `A257282(n+1)^A020639(A257256(n+1))` -/
def P14924752852433384422.Spec : Prop :=
  ∀ n, P14924752852433384422.a n = (A256944 (n + 1) : ℚ)

end A256944

/-! ## A256944.P1396113290329811829

`eq[A123596(n), A232091(A123596(n))]²`
-/

namespace A256944.P1396113290329811829
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123596 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232091 (A123596 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n ^ 2

end

end A256944.P1396113290329811829

namespace A256944

/-- `eq[A123596(n), A232091(A123596(n))]²` -/
def P1396113290329811829.Spec : Prop :=
  ∀ n, (P1396113290329811829.a n : ℤ) = A256944 (n + 1)

end A256944

/-!
# A256945: Number of periods of reduced indefinite binary quadratic forms with discriminant D(n) = A079896(n).

The programs for A256945, there is no canonical definition to state claims against.
-/

/-! ## A256945.P17051799872420012796

`A001221(A144303(n)+A001037(n+4))`
-/

namespace A256945.P17051799872420012796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A144303 n + A001037 (n + 4)).toNat

end

end A256945.P17051799872420012796

/-! ## A256945.P10429032491031580063

`A214566(eq[A037879(n+1), A214546(n)])`
-/

namespace A256945.P10429032491031580063
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037879 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214546 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214566 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A256945.P10429032491031580063

/-! ## A256945.P11966682968150192883

`A001221(∑[A195916(n+1)+A115178(n)])`
-/

namespace A256945.P11966682968150192883
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195916 (n + 1) + A115178 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A256945.P11966682968150192883

/-! ## A256945.P5017283046706698095

`A046951(A003159(n+1)^A175244(n+1))`
-/

namespace A256945.P5017283046706698095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046951 (SequenceMachineLib.roundAway ((A003159 (n + 1) : ℚ) ^ (A175244 (n + 1) : ℤ))).toNat

end

end A256945.P5017283046706698095

/-! ## A256945.P13884396863396099584

`A001221(((A130342(n)+1)²+1)²)`
-/

namespace A256945.P13884396863396099584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (((A130342 n + 1) ^ 2 + 1) ^ 2).toNat

end

end A256945.P13884396863396099584

/-!
# A256946: Irregular triangle where n-th row is integers from 1 to n*(n+2), sorted with first squares in order, then remaining numbers by fractional part of the square root.

The programs for A256946, there is no canonical definition to state claims against.
-/

/-! ## A256946.P8106170099039158245

`A000005(5^A368312(n+1))`
-/

namespace A256946.P8106170099039158245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway ((5 : ℚ) ^ (A368312 (n + 1) : ℤ))).toNat

end

end A256946.P8106170099039158245

/-! ## A256946.P8187902587127696927

`and(p?[A134151(n+1)+3], A026370(n+1))`
-/

namespace A256946.P8187902587127696927
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134151 (n + 1) + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A026370 (n + 1))

end

end A256946.P8187902587127696927

/-! ## A256946.P16523842827919786046

`(A368312(n+1)+1)%A339224(2*n+5)`
-/

namespace A256946.P16523842827919786046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A368312 (n + 1) + 1) (A339224 (2 * n + 5))

end

end A256946.P16523842827919786046

/-! ## A256946.P14921555043747724527

`A344616(A085789(2*(n+1))/(4-gcd(3, n)))`
-/

namespace A256946.P14921555043747724527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344616 (SequenceMachineLib.roundAway ((A085789 (2 * (n + 1)) : ℚ) / (4 - (Nat.gcd 3 n : ℤ) : ℚ))).toNat

end

end A256946.P14921555043747724527

/-! ## A256946.P2389935688238313433

`A061395(2*n+3)-A334028(C(n, ∑{digits}[n, #]))`
-/

namespace A256946.P2389935688238313433
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (2 * n + 3) - A334028 (Nat.choose n ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum)

end

end A256946.P2389935688238313433

/-!
# A256947: Number of (n+2)X(n+2) 0..1 arrays with every 3X3 subblock sum of the two sums of the central row and central column minus the two minimums of the diagonal and antidiagonal nondecreasing horizontally and vertically.

The programs for A256947, there is no canonical definition to state claims against.
-/

/-! ## A256947.P6896147144295071891

`A256954((n+1)²+n²)`
-/

namespace A256947.P6896147144295071891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256954 ((n + 1) ^ 2 + n ^ 2)

end

end A256947.P6896147144295071891

/-! ## A256947.P5610752424693576630

`A256954(A001844(n))+A185284(n)`
-/

namespace A256947.P5610752424693576630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256954 (A001844 n).toNat + A185284 n

end

end A256947.P5610752424693576630

/-! ## A256947.P9705147163260894968

`lcm(A155040(n), A256954(A001844(n)))`
-/

namespace A256947.P9705147163260894968
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A155040 n) (A256954 (A001844 n).toNat)

end

end A256947.P9705147163260894968

/-! ## A256947.P10037084057333084218

`char[A002487(n)]*A256954(A001844(n))`
-/

namespace A256947.P10037084057333084218
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A256954 (A001844 n).toNat

end

end A256947.P10037084057333084218

/-! ## A256947.P13792847993138497624

`char[A265351(n)]*A256954(A001844(n))`
-/

namespace A256947.P13792847993138497624
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265351 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A256954 (A001844 n).toNat

end

end A256947.P13792847993138497624

/-!
# A256948: Number of (n+2)X(2+2) 0..1 arrays with every 3X3 subblock sum of the two sums of the central row and central column minus the two minimums of the diagonal and antidiagonal nondecreasing horizontally and vertically.

The programs for A256948, there is no canonical definition to state claims against.
-/

/-! ## A256948.P8998380758244123623

`A256954(∑[n+1]+2)`
-/

namespace A256948.P8998380758244123623
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256954 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A256948.P8998380758244123623

/-! ## A256948.P5423454231833994871

`record[A256954(A133263(abs(1-n)))]`
-/

namespace A256948.P5423454231833994871
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256954 (A133263 |1 - (n : ℤ)|.toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A256948.P5423454231833994871

/-! ## A256948.P2740631316637382561

`record[A256954(A278504(n+1)+2)]`
-/

namespace A256948.P2740631316637382561
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256954 (A278504 (n + 1) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A256948.P2740631316637382561

/-! ## A256948.P10193607004063387599

`lcm(A165326(n), A256954(A167499(n)-3))`
-/

namespace A256948.P10193607004063387599
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A165326 n) (A256954 (A167499 n - 3).toNat)

end

end A256948.P10193607004063387599

/-! ## A256948.P3280307743475003810

`or(A000038(n), A256954(A167499(n)-3))`
-/

namespace A256948.P3280307743475003810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000038 n) (A256954 (A167499 n - 3).toNat)

end

end A256948.P3280307743475003810

/-! ## A256948.P6863590038979061624

`A007318(∑[n])*A256954(A167499(n)-3)`
-/

namespace A256948.P6863590038979061624
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j) * A256954 (A167499 n - 3).toNat

end

end A256948.P6863590038979061624

/-! ## A256948.P8640647637976303738

`char[A002262(n)]*A256954(A167499(n)-3)`
-/

namespace A256948.P8640647637976303738
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A256954 (A167499 n - 3).toNat

end

end A256948.P8640647637976303738

/-! ## A256948.P8742196637826489356

`A000041(C(2, n+2))*A256954(A167499(n)-3)`
-/

namespace A256948.P8742196637826489356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (Nat.choose 2 (n + 2)) * A256954 (A167499 n - 3).toNat

end

end A256948.P8742196637826489356

/-! ## A256948.P13567211586045176750

`A014963(78*(n+1))*A256954(A167499(n)-3)`
-/

namespace A256948.P13567211586045176750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (78 * (n + 1)) * A256954 (A167499 n - 3).toNat

end

end A256948.P13567211586045176750

/-! ## A256948.P15969260094277388696

`A256954(A167499(n)-3)/A331591(A320276(n))`
-/

namespace A256948.P15969260094277388696
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A256954 (A167499 n - 3).toNat : ℚ) / (A331591 (A320276 n).toNat : ℚ)

end

end A256948.P15969260094277388696

/-!
# A256949: Number of (n+2)X(3+2) 0..1 arrays with every 3X3 subblock sum of the two sums of the central row and central column minus the two minimums of the diagonal and antidiagonal nondecreasing horizontally and vertically.

The programs for A256949, there is no canonical definition to state claims against.
-/

/-! ## A256949.P13612634208730408028

`A256954(A167614(n+1))`
-/

namespace A256949.P13612634208730408028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256954 (A167614 (n + 1)).toNat

end

end A256949.P13612634208730408028

/-! ## A256949.P2095636914263429215

`A256954(A373663(n+1))`
-/

namespace A256949.P2095636914263429215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256954 (A373663 (n + 1)).toNat

end

end A256949.P2095636914263429215

/-! ## A256949.P8878095908314515371

`A256954(A046691(n)+7)`
-/

namespace A256949.P8878095908314515371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256954 (A046691 n + 7).toNat

end

end A256949.P8878095908314515371

/-! ## A256949.P1515390576040592817

`A256954(A167499(n)+n)`
-/

namespace A256949.P1515390576040592817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256954 (A167499 n + (n : ℤ)).toNat

end

end A256949.P1515390576040592817

/-! ## A256949.P11782200901932940754

`A256954(A038722(∑[n+3]+1))`
-/

namespace A256949.P11782200901932940754
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256954 (A038722 (∑ j ∈ Finset.range (n + 1), f1 j + 1)).toNat

end

end A256949.P11782200901932940754

/-! ## A256949.P11782406658333035760

`A256954(n-(A000038(n)-A167499(n)))`
-/

namespace A256949.P11782406658333035760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256954 ((n : ℤ) - (A000038 n - A167499 n)).toNat

end

end A256949.P11782406658333035760

/-! ## A256949.P7574233127909826052

`A256954(∑[n+3]+1)`
-/

namespace A256949.P7574233127909826052
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256954 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A256949.P7574233127909826052

/-! ## A256949.P11588484591189502972

`A256954(Δ[A008778(n)])%A256952(n+4)`
-/

namespace A256949.P11588484591189502972
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A256954 (f1 (n + 1) - f1 n).toNat) (A256952 (n + 4))

end

end A256949.P11588484591189502972

/-!
# A256950: Number of (n+2) X (4+2) 0..1 arrays with every 3 X 3 subblock sum of the two sums of the central row and central column minus the two minimums of the diagonal and antidiagonal nondecreasing horizontally and vertically.

The programs for A256950, there is no canonical definition to state claims against.
-/

/-! ## A256950.P17849836236864406084

`A256954(∑[n+3]+7)`
-/

namespace A256950.P17849836236864406084
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256954 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A256950.P17849836236864406084

/-! ## A256950.P11576000894438534920

`lcm(A155040(n), A256954(A167614(n+2)+1))`
-/

namespace A256950.P11576000894438534920
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A155040 n) (A256954 (A167614 (n + 2) + 1).toNat)

end

end A256950.P11576000894438534920

/-! ## A256950.P4890282406638882273

`char[A038572(n)]*A256954(A000217(n+3)+4)`
-/

namespace A256950.P4890282406638882273
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038572 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A256954 (A000217 (n + 3) + 4).toNat

end

end A256950.P4890282406638882273

/-! ## A256950.P8384539510778984691

`A256954(A000217(n+3)+4)*A352894(2*n+3)`
-/

namespace A256950.P8384539510778984691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256954 (A000217 (n + 3) + 4).toNat * A352894 (2 * n + 3)

end

end A256950.P8384539510778984691

/-! ## A256950.P12255512010687718399

`A256954(A056000(n)+7)%A256952(n+1)`
-/

namespace A256950.P12255512010687718399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A256954 (A056000 n + 7).toNat) (A256952 (n + 1))

end

end A256950.P12255512010687718399

/-!
# A256951: Number of (n+2)X(5+2) 0..1 arrays with every 3X3 subblock sum of the two sums of the central row and central column minus the two minimums of the diagonal and antidiagonal nondecreasing horizontally and vertically.

The programs for A256951, there is no canonical definition to state claims against.
-/

/-! ## A256951.P7367852188682630971

`A256954(A374005(n+1))`
-/

namespace A256951.P7367852188682630971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256954 (A374005 (n + 1)).toNat

end

end A256951.P7367852188682630971

/-! ## A256951.P14642580944785344545

`A256954(A167499(n+3))`
-/

namespace A256951.P14642580944785344545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256954 (A167499 (n + 3)).toNat

end

end A256951.P14642580944785344545

/-! ## A256951.P16701670692436253582

`lcm(A034947(n+1), A256954(A000217(n+4)+5))`
-/

namespace A256951.P16701670692436253582
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A034947 (n + 1)) (A256954 (A000217 (n + 4) + 5).toNat)

end

end A256951.P16701670692436253582

/-! ## A256951.P7598878044812874729

`A256954(∑[n+5]+6)`
-/

namespace A256951.P7598878044812874729
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256954 (∑ j ∈ Finset.range (n + 1), f1 j + 6)

end

end A256951.P7598878044812874729

/-! ## A256951.P8034457091435125687

`A033999(n)²*A256954(A046691(n+3))`
-/

namespace A256951.P8034457091435125687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n ^ 2 * A256954 (A046691 (n + 3)).toNat

end

end A256951.P8034457091435125687

/-! ## A256951.P10431364447884046953

`A256954(A046691(n+3))%A256952(n+1)`
-/

namespace A256951.P10431364447884046953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A256954 (A046691 (n + 3)).toNat) (A256952 (n + 1))

end

end A256951.P10431364447884046953

/-! ## A256951.P7991505985667654813

`lcm(A061704(n+1), A256954(A046691(n+3)))`
-/

namespace A256951.P7991505985667654813
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A061704 (n + 1)) (A256954 (A046691 (n + 3)).toNat)

end

end A256951.P7991505985667654813

/-!
# A256952: Number of (n+2)X(6+2) 0..1 arrays with every 3X3 subblock sum of the two sums of the central row and central column minus the two minimums of the diagonal and antidiagonal nondecreasing horizontally and vertically.

The programs for A256952, there is no canonical definition to state claims against.
-/

/-! ## A256952.P13419584668674810536

`A256954(A374007(n+1))`
-/

namespace A256952.P13419584668674810536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256954 (A374007 (n + 1)).toNat

end

end A256952.P13419584668674810536

/-! ## A256952.P11298846309355473386

`A256954(A000217(n+5)+6)`
-/

namespace A256952.P11298846309355473386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256954 (A000217 (n + 5) + 6).toNat

end

end A256952.P11298846309355473386

/-! ## A256952.P6254691402322231733

`A256954(Δ[A023551(n+1)]-n+6)`
-/

namespace A256952.P6254691402322231733
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256954 (f1 (n + 1) - f1 n - (n : ℤ) + 6).toNat

end

end A256952.P6254691402322231733

/-! ## A256952.P13126641137292542922

`record[A256954(n+16)/A098474(n+10)]`
-/

namespace A256952.P13126641137292542922
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A256954 (n + 16) : ℚ) / (A098474 (n + 10) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A256952.P13126641137292542922

/-! ## A256952.P11743198246036455240

`A256954(∑[n+6]+10)`
-/

namespace A256952.P11743198246036455240
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256954 (∑ j ∈ Finset.range (n + 1), f1 j + 10)

end

end A256952.P11743198246036455240

/-!
# A256953: Number of (n+2)X(7+2) 0..1 arrays with every 3X3 subblock sum of the two sums of the central row and central column minus the two minimums of the diagonal and antidiagonal nondecreasing horizontally and vertically.

The programs for A256953, there is no canonical definition to state claims against.
-/

/-! ## A256953.P4519060786185249272

`A256954(A374008(n+1))`
-/

namespace A256953.P4519060786185249272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256954 (A374008 (n + 1)).toNat

end

end A256953.P4519060786185249272

/-! ## A256953.P1534972003675670414

`A256954(A000096(n+5)+8)`
-/

namespace A256953.P1534972003675670414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256954 (A000096 (n + 5) + 8).toNat

end

end A256953.P1534972003675670414

/-! ## A256953.P12820070677181573965

`A256954(A000217(n+6)+7)`
-/

namespace A256953.P12820070677181573965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256954 (A000217 (n + 6) + 7).toNat

end

end A256953.P12820070677181573965

/-! ## A256953.P2639632908298153170

`A256954(A055999(n+4)-n+6)`
-/

namespace A256953.P2639632908298153170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256954 (A055999 (n + 4) - (n : ℤ) + 6).toNat

end

end A256953.P2639632908298153170

/-! ## A256953.P17757296732205922432

`A256954(Δ[A023551(n+2)]-n+6)`
-/

namespace A256953.P17757296732205922432
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256954 (f1 (n + 1) - f1 n - (n : ℤ) + 6).toNat

end

end A256953.P17757296732205922432

/-! ## A256953.P2115022787346182340

`A256954(A055999(n+4))`
-/

namespace A256953.P2115022787346182340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256954 (A055999 (n + 4)).toNat

end

end A256953.P2115022787346182340

/-! ## A256953.P6578037175197231562

`A256954(Δ[A023551(n+2)])`
-/

namespace A256953.P6578037175197231562
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256954 (f1 (n + 1) - f1 n).toNat

end

end A256953.P6578037175197231562

/-! ## A256953.P7401117539118400637

`A256954(A000124(n+7)-7)`
-/

namespace A256953.P7401117539118400637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256954 (A000124 (n + 7) - 7).toNat

end

end A256953.P7401117539118400637

/-!
# A256956: a(n) = pi(n) * pi(n+1), where pi(n) is the number of primes <= n.

The programs for A256956, the canonical program `A256956.P5934166374789852245` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A256956 has offset 1).

The definition of A256956 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A256956.P5934166374789852245

`A000720(n+1)*A000720(n+2)`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A256956

/-- `A000720(n+1)*A000720(n+2)` -/
def P5934166374789852245.Spec : Prop :=
  ∀ n, P5934166374789852245.a n = A256956 (n + 1)

theorem P5934166374789852245.correct : P5934166374789852245.Spec := by
  intro n
  simp only [A256956, Nat.add_sub_cancel]

end A256956

/-! ## A256956.P10388442190919962236

`A002620(A000720(n+1)+A000720(n+2))`
-/

namespace A256956.P10388442190919962236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 (A000720 (n + 1) + A000720 (n + 2)).toNat

end

end A256956.P10388442190919962236

namespace A256956

/-- `A002620(A000720(n+1)+A000720(n+2))` -/
def P10388442190919962236.Spec : Prop :=
  ∀ n, P10388442190919962236.a n = A256956 (n + 1)

end A256956

/-! ## A256956.P1427902922564601627

`A000720(n+2)²-A049084(n+2)`
-/

namespace A256956.P1427902922564601627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (n + 2) ^ 2 - A049084 (n + 2)

end

end A256956.P1427902922564601627

namespace A256956

/-- `A000720(n+2)²-A049084(n+2)` -/
def P1427902922564601627.Spec : Prop :=
  ∀ n, P1427902922564601627.a n = A256956 (n + 1)

end A256956

/-! ## A256956.P6373040766062106472

`∑[A010051(n+2)]*A230980(n+1)`
-/

namespace A256956.P6373040766062106472
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A230980 (n + 1)

end

end A256956.P6373040766062106472

namespace A256956

/-- `∑[A010051(n+2)]*A230980(n+1)` -/
def P6373040766062106472.Spec : Prop :=
  ∀ n, P6373040766062106472.a n = A256956 (n + 1)

end A256956

/-! ## A256956.P11178031440654087388

`∑[A080339(n+2)]*A230980(n+1)`
-/

namespace A256956.P11178031440654087388
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080339 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A230980 (n + 1)

end

end A256956.P11178031440654087388

namespace A256956

/-- `∑[A080339(n+2)]*A230980(n+1)` -/
def P11178031440654087388.Spec : Prop :=
  ∀ n, P11178031440654087388.a n = A256956 (n + 1)

end A256956

/-! ## A256956.P11096667408016445514

`(A033270(n+2)+1)*A230980(n+1)`
-/

namespace A256956.P11096667408016445514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A033270 (n + 2) + 1) * A230980 (n + 1)

end

end A256956.P11096667408016445514

namespace A256956

/-- `(A033270(n+2)+1)*A230980(n+1)` -/
def P11096667408016445514.Spec : Prop :=
  ∀ n, P11096667408016445514.a n = A256956 (n + 1)

end A256956

/-! ## A256956.P7963483871832275581

`∑[A010051(n+2)]²-A049084(n+2)`
-/

namespace A256956.P7963483871832275581
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - A049084 (n + 2)

end

end A256956.P7963483871832275581

namespace A256956

/-- `∑[A010051(n+2)]²-A049084(n+2)` -/
def P7963483871832275581.Spec : Prop :=
  ∀ n, P7963483871832275581.a n = A256956 (n + 1)

end A256956

/-! ## A256956.P10071524076471476305

`A230980(A109613(n+1))*A230980(n+1)`
-/

namespace A256956.P10071524076471476305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230980 (A109613 (n + 1)).toNat * A230980 (n + 1)

end

end A256956.P10071524076471476305

namespace A256956

/-- `A230980(A109613(n+1))*A230980(n+1)` -/
def P10071524076471476305.Spec : Prop :=
  ∀ n, P10071524076471476305.a n = A256956 (n + 1)

end A256956

/-! ## A256956.P1815029080452315560

`A230980(A166260(n+2))+A230980(n+1)²`
-/

namespace A256956.P1815029080452315560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230980 (A166260 (n + 2)).toNat + A230980 (n + 1) ^ 2

end

end A256956.P1815029080452315560

namespace A256956

/-- `A230980(A166260(n+2))+A230980(n+1)²` -/
def P1815029080452315560.Spec : Prop :=
  ∀ n, P1815029080452315560.a n = A256956 (n + 1)

end A256956

/-! ## A256956.P11064768963460505650

`A000720(n+2)²-A000720(A089026(n+2))`
-/

namespace A256956.P11064768963460505650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (n + 2) ^ 2 - A000720 (A089026 (n + 2)).toNat

end

end A256956.P11064768963460505650

namespace A256956

/-- `A000720(n+2)²-A000720(A089026(n+2))` -/
def P11064768963460505650.Spec : Prop :=
  ∀ n, P11064768963460505650.a n = A256956 (n + 1)

end A256956

/-! ## A256956.P17645960375781879750

`A230980(n+1)*A230980(n+2)`
-/

namespace A256956.P17645960375781879750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230980 (n + 1) * A230980 (n + 2)

end

end A256956.P17645960375781879750

namespace A256956

/-- `A230980(n+1)*A230980(n+2)` -/
def P17645960375781879750.Spec : Prop :=
  ∀ n, P17645960375781879750.a n = A256956 (n + 1)

end A256956

/-! ## A256956.P7865101666043607255

`∏{d}[A000040(n+1), A000720(A000005(#)+n)]`
-/

namespace A256956.P7865101666043607255
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, A000720 (A000005 d + (n : ℤ)).toNat

end

end A256956.P7865101666043607255

namespace A256956

/-- `∏{d}[A000040(n+1), A000720(A000005(#)+n)]` -/
def P7865101666043607255.Spec : Prop :=
  ∀ n, P7865101666043607255.a n = A256956 (n + 1)

end A256956

/-! ## A256956.P2193844304787244505

`∏{d}[A000040(n+1), A000720(A001222(#)+n+1)]`
-/

namespace A256956.P2193844304787244505
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, A000720 (A001222 d + (n + 1 : ℤ)).toNat

end

end A256956.P2193844304787244505

namespace A256956

/-- `∏{d}[A000040(n+1), A000720(A001222(#)+n+1)]` -/
def P2193844304787244505.Spec : Prop :=
  ∀ n, P2193844304787244505.a n = A256956 (n + 1)

end A256956

/-! ## A256956.P15431877496431106700

`∑[A010051(n+2)]*A056172(2*(n+1))`
-/

namespace A256956.P15431877496431106700
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A056172 (2 * (n + 1))

end

end A256956.P15431877496431106700

namespace A256956

/-- `∑[A010051(n+2)]*A056172(2*(n+1))` -/
def P15431877496431106700.Spec : Prop :=
  ∀ n, P15431877496431106700.a n = A256956 (n + 1)

end A256956

/-! ## A256956.P17241083520338479266

`(A036234(n+2)-1)*A056172(2*(n+1))`
-/

namespace A256956.P17241083520338479266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A036234 (n + 2) - 1) * A056172 (2 * (n + 1))

end

end A256956.P17241083520338479266

namespace A256956

/-- `(A036234(n+2)-1)*A056172(2*(n+1))` -/
def P17241083520338479266.Spec : Prop :=
  ∀ n, P17241083520338479266.a n = A256956 (n + 1)

end A256956

/-! ## A256956.P5347434157995023777

`(A056172(n+2)+A056171(n+2))*A056172(2*(n+1))`
-/

namespace A256956.P5347434157995023777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A056172 (n + 2) + A056171 (n + 2)) * A056172 (2 * (n + 1))

end

end A256956.P5347434157995023777

namespace A256956

/-- `(A056172(n+2)+A056171(n+2))*A056172(2*(n+1))` -/
def P5347434157995023777.Spec : Prop :=
  ∀ n, P5347434157995023777.a n = A256956 (n + 1)

end A256956

/-! ## A256956.P10828704685052395259

`(A080339(n+2)+A056172(2*(n+1)))*A056172(2*(n+1))`
-/

namespace A256956.P10828704685052395259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A080339 (n + 2) + A056172 (2 * (n + 1))) * A056172 (2 * (n + 1))

end

end A256956.P10828704685052395259

namespace A256956

/-- `(A080339(n+2)+A056172(2*(n+1)))*A056172(2*(n+1))` -/
def P10828704685052395259.Spec : Prop :=
  ∀ n, P10828704685052395259.a n = A256956 (n + 1)

end A256956

/-! ## A256956.P3911259580231041238

`A056172(2*(n+1))*A056172(2*(n+2))`
-/

namespace A256956.P3911259580231041238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056172 (2 * (n + 1)) * A056172 (2 * (n + 2))

end

end A256956.P3911259580231041238

namespace A256956

/-- `A056172(2*(n+1))*A056172(2*(n+2))` -/
def P3911259580231041238.Spec : Prop :=
  ∀ n, P3911259580231041238.a n = A256956 (n + 1)

end A256956

/-! ## A256956.P14602860049808256036

`A055679(2*(n+1))*A055679(A276000(n+2))`
-/

namespace A256956.P14602860049808256036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055679 (2 * (n + 1)) * A055679 (A276000 (n + 2)).toNat

end

end A256956.P14602860049808256036

namespace A256956

/-- `A055679(2*(n+1))*A055679(A276000(n+2))` -/
def P14602860049808256036.Spec : Prop :=
  ∀ n, P14602860049808256036.a n = A256956 (n + 1)

end A256956

/-! ## A256956.P10653044176639226036

`A055679(2*(n+1))*A055679(A103517(n+1))`
-/

namespace A256956.P10653044176639226036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055679 (2 * (n + 1)) * A055679 (A103517 (n + 1)).toNat

end

end A256956.P10653044176639226036

namespace A256956

/-- `A055679(2*(n+1))*A055679(A103517(n+1))` -/
def P10653044176639226036.Spec : Prop :=
  ∀ n, P10653044176639226036.a n = A256956 (n + 1)

end A256956

/-!
# A256958: The integers (shown from -50 on).

The programs for A256958, there is no canonical definition to state claims against.
-/

/-! ## A256958.P17204631068888421385

`2*a(n-1)-a(n-2)` with `a(0)=-50, a(1)=-49`
-/

namespace A256958.P17204631068888421385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [-50, -49] fun n a =>
  2 * a (n - 1) - a (n - 2)

end

end A256958.P17204631068888421385

/-!
# A256959: a(0)=1, a(1)=4; thereafter a(n) = 13*4^n/8-2^(n+1)+1.

The programs for A256959, the canonical program `A256959.P2578605939246807913` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A256959 has offset 0).

The definition of A256959 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A256959.P2578605939246807913

`7*a(n-1)-14*a(n-2)+8*a(n-3)` with `a(0)=1, a(1)=4, a(2)=19, a(3)=89, a(4)=385`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A256959

/-- `7*a(n-1)-14*a(n-2)+8*a(n-3)` -/
def P2578605939246807913.Spec : Prop :=
  ∀ n, P2578605939246807913.a n = A256959 n

theorem P2578605939246807913.correct : P2578605939246807913.Spec := by
  intro n
  simp only [A256959]

end A256959

/-! ## A256959.P15787666505423173285

`A307702(n+1)+A211012(n)`
-/

namespace A256959.P15787666505423173285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307702 (n + 1) + A211012 n

end

end A256959.P15787666505423173285

namespace A256959

/-- `A307702(n+1)+A211012(n)` -/
def P15787666505423173285.Spec : Prop :=
  ∀ n, P15787666505423173285.a n = A256959 n

end A256959

/-! ## A256959.P14611246226025631396

`A267536(n)-A000918(n+1)`
-/

namespace A256959.P14611246226025631396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267536 n - A000918 (n + 1)

end

end A256959.P14611246226025631396

namespace A256959

/-- `A267536(n)-A000918(n+1)` -/
def P14611246226025631396.Spec : Prop :=
  ∀ n, P14611246226025631396.a n = A256959 n

end A256959

/-! ## A256959.P14571092638783781040

`A267536(n)+1-A126646(n)`
-/

namespace A256959.P14571092638783781040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267536 n + (1 - A126646 n)

end

end A256959.P14571092638783781040

namespace A256959

/-- `A267536(n)+1-A126646(n)` -/
def P14571092638783781040.Spec : Prop :=
  ∀ n, P14571092638783781040.a n = A256959 n

end A256959

/-! ## A256959.P4240651572968553444

`A267536(n)-2*A000225(n)`
-/

namespace A256959.P4240651572968553444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267536 n - 2 * A000225 n

end

end A256959.P4240651572968553444

namespace A256959

/-- `A267536(n)-2*A000225(n)` -/
def P4240651572968553444.Spec : Prop :=
  ∀ n, P4240651572968553444.a n = A256959 n

end A256959

/-! ## A256959.P13138485038455375437

`A267539(2*n)+1-A000225(n+1)`
-/

namespace A256959.P13138485038455375437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267539 (2 * n) + (1 - A000225 (n + 1))

end

end A256959.P13138485038455375437

namespace A256959

/-- `A267539(2*n)+1-A000225(n+1)` -/
def P13138485038455375437.Spec : Prop :=
  ∀ n, P13138485038455375437.a n = A256959 n

end A256959

/-!
# A256960: a(0)=1, a(1)=4; thereafter a(n) = a(n-2)+2*A055099(n-1)+2^(n-1).

The programs for A256960, the canonical program `A256960.P2865654414197589884` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A256960 has offset 0).

The definition of A256960 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A256960.P2865654414197589884

`a(n-2)+2*A055099(n-1)+2^(n-1)` with `a(0)=1, a(1)=4`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A256960

/-- `a(n-2)+2*A055099(n-1)+2^(n-1)` -/
def P2865654414197589884.Spec : Prop :=
  ∀ n, P2865654414197589884.a n = (A256960 n : ℚ)

end A256960

/-! ## A256960.P9845218117274818281

`A101604(n)+A014113(n)`
-/

namespace A256960.P9845218117274818281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101604 n + A014113 n

end

end A256960.P9845218117274818281

namespace A256960

/-- `A101604(n)+A014113(n)` -/
def P9845218117274818281.Spec : Prop :=
  ∀ n, P9845218117274818281.a n = A256960 n

end A256960

/-! ## A256960.P7713871811028750847

`∑[A152046(n)+A106434(n+1)]`
-/

namespace A256960.P7713871811028750847
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152046 n + A106434 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A256960.P7713871811028750847

namespace A256960

/-- `∑[A152046(n)+A106434(n+1)]` -/
def P7713871811028750847.Spec : Prop :=
  ∀ n, P7713871811028750847.a n = A256960 n

end A256960

/-! ## A256960.P15527948865526686141

`A230269(n+2)+∑[A152046(n)]`
-/

namespace A256960.P15527948865526686141
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152046 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230269 (n + 2) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A256960.P15527948865526686141

namespace A256960

/-- `A230269(n+2)+∑[A152046(n)]` -/
def P15527948865526686141.Spec : Prop :=
  ∀ n, P15527948865526686141.a n = A256960 n

end A256960

/-! ## A256960.P8668795976320027682

`∑[A106434(n+1)+A001045(n)]+1`
-/

namespace A256960.P8668795976320027682
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106434 (n + 1) + A001045 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A256960.P8668795976320027682

namespace A256960

/-- `∑[A106434(n+1)+A001045(n)]+1` -/
def P8668795976320027682.Spec : Prop :=
  ∀ n, P8668795976320027682.a n = A256960 n

end A256960

/-! ## A256960.P13316285889474899949

`A005578(n+1)+∑[A106434(n+1)]`
-/

namespace A256960.P13316285889474899949
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106434 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005578 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A256960.P13316285889474899949

namespace A256960

/-- `A005578(n+1)+∑[A106434(n+1)]` -/
def P13316285889474899949.Spec : Prop :=
  ∀ n, P13316285889474899949.a n = A256960 n

end A256960

/-!
# A256963: Partial sums of A005210.

The programs for A256963, the canonical program `A256963.P16895018533411467036` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A256963 has offset 1).

The definition of A256963 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A256963.P16895018533411467036

`∑[abs(n+1-(a(n-1)+2*a(n-2)))]` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A256963

/-- `∑[abs(n+1-(a(n-1)+2*a(n-2)))]` -/
def P16895018533411467036.Spec : Prop :=
  ∀ n, P16895018533411467036.a n = A256963 (n + 1)

theorem P16895018533411467036.correct : P16895018533411467036.Spec := by
  intro n
  simp only [A256963, Nat.add_sub_cancel]

end A256963

/-! ## A256963.P4698175598521402779

`∑[A005210(n+1)]`
-/

namespace A256963.P4698175598521402779
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005210 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A256963.P4698175598521402779

namespace A256963

/-- `∑[A005210(n+1)]` -/
def P4698175598521402779.Spec : Prop :=
  ∀ n, P4698175598521402779.a n = A256963 (n + 1)

end A256963

/-! ## A256963.P6844803024277443465

`∑[A005210(Δ[n²]-n)]-(2*n)%2`
-/

namespace A256963.P6844803024277443465
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005210 ((f2 (n + 1) : ℤ) - (f2 n : ℤ) - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - ((2 * n % 2 : ℕ) : ℤ)

end

end A256963.P6844803024277443465

namespace A256963

/-- `∑[A005210(Δ[n²]-n)]-(2*n)%2` -/
def P6844803024277443465.Spec : Prop :=
  ∀ n, P6844803024277443465.a n = A256963 (n + 1)

end A256963

/-! ## A256963.P8412832081028948720

`∑[A005210(Δ[n²]-n)%A016825(n)]`
-/

namespace A256963.P8412832081028948720
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A005210 ((f2 (n + 1) : ℤ) - (f2 n : ℤ) - (n : ℤ)).toNat) (A016825 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A256963.P8412832081028948720

namespace A256963

/-- `∑[A005210(Δ[n²]-n)%A016825(n)]` -/
def P8412832081028948720.Spec : Prop :=
  ∀ n, P8412832081028948720.a n = A256963 (n + 1)

end A256963

/-! ## A256963.P12098822532242743811

`∑[A005210(Δ[n²]-n)]%(2-A008585(n)²)`
-/

namespace A256963.P12098822532242743811
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005210 ((f2 (n + 1) : ℤ) - (f2 n : ℤ) - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (2 - A008585 n ^ 2)

end

end A256963.P12098822532242743811

namespace A256963

/-- `∑[A005210(Δ[n²]-n)]%(2-A008585(n)²)` -/
def P12098822532242743811.Spec : Prop :=
  ∀ n, P12098822532242743811.a n = A256963 (n + 1)

end A256963

/-! ## A256963.P17993780234466312692

`∑[A005210(Δ[n²]-n)]-n*A000007(2*n)`
-/

namespace A256963.P17993780234466312692
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005210 ((f2 (n + 1) : ℤ) - (f2 n : ℤ) - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ) * A000007 (2 * n)

end

end A256963.P17993780234466312692

namespace A256963

/-- `∑[A005210(Δ[n²]-n)]-n*A000007(2*n)` -/
def P17993780234466312692.Spec : Prop :=
  ∀ n, P17993780234466312692.a n = A256963 (n + 1)

end A256963

/-! ## A256963.P6378068102092648995

`A028310(a(n-1))+A005210(n+1)` with `a(0)=1`
-/

namespace A256963.P6378068102092648995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A028310 (a (n - 1)).toNat + A005210 (n + 1)

end

end A256963.P6378068102092648995

namespace A256963

/-- `A028310(a(n-1))+A005210(n+1)` -/
def P6378068102092648995.Spec : Prop :=
  ∀ n, P6378068102092648995.a n = A256963 (n + 1)

end A256963

/-! ## A256963.P1932534469331638115

`A028310(∑[A005210(Δ[n²]-n)])`
-/

namespace A256963.P1932534469331638115
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005210 ((f2 (n + 1) : ℤ) - (f2 n : ℤ) - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A256963.P1932534469331638115

namespace A256963

/-- `A028310(∑[A005210(Δ[n²]-n)])` -/
def P1932534469331638115.Spec : Prop :=
  ∀ n, P1932534469331638115.a n = A256963 (n + 1)

end A256963

/-! ## A256963.P335688898356062707

`A005210(A051203(a(n-1)))+A005210(n+1)` with `a(0)=1`
-/

namespace A256963.P335688898356062707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A005210 (A051203 (a (n - 1)).toNat).toNat + A005210 (n + 1)

end

end A256963.P335688898356062707

namespace A256963

/-- `A005210(A051203(a(n-1)))+A005210(n+1)` -/
def P335688898356062707.Spec : Prop :=
  ∀ n, P335688898356062707.a n = A256963 (n + 1)

end A256963

/-!
# A256966: Partial sums of A072649.

The programs for A256966, the canonical program `A256966.P7229463913405472594` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A256966 has offset 1).

The definition of A256966 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A256966.P2280655565387111502

`∑[a(floor(n/ϕ))+1]` with `a(0)=1`
-/

namespace A256966.P2280655565387111502
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  f1 ⌊(n : ℝ) / Real.goldenRatio⌋.toNat + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A256966.P2280655565387111502

namespace A256966

/-- `∑[a(floor(n/ϕ))+1]` -/
def P2280655565387111502.Spec : Prop :=
  ∀ n, (P2280655565387111502.a n : ℤ) = A256966 (n + 1)

end A256966

/-! ## A256966.P17201718910829443938

`∑[∑[A192687(n)]]`
-/

namespace A256966.P17201718910829443938
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192687 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A256966.P17201718910829443938

namespace A256966

/-- `∑[∑[A192687(n)]]` -/
def P17201718910829443938.Spec : Prop :=
  ∀ n, P17201718910829443938.a n = A256966 (n + 1)

end A256966

/-! ## A256966.P17719606538493594556

`∑[A072649(n+1)]`
-/

namespace A256966.P17719606538493594556
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072649 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A256966.P17719606538493594556

namespace A256966

/-- `∑[A072649(n+1)]` -/
def P17719606538493594556.Spec : Prop :=
  ∀ n, P17719606538493594556.a n = A256966 (n + 1)

end A256966

/-! ## A256966.P7229463913405472594

`∑[A095791(n)]+n`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A256966

/-- `∑[A095791(n)]+n` -/
def P7229463913405472594.Spec : Prop :=
  ∀ n, P7229463913405472594.a n = A256966 (n + 1)

theorem P7229463913405472594.correct : P7229463913405472594.Spec := by
  intro n
  simp only [A256966, Nat.add_sub_cancel]

end A256966

/-! ## A256966.P860716272258429902

`∑[∑[A010056(n+1)]]`
-/

namespace A256966.P860716272258429902
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010056 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A256966.P860716272258429902

namespace A256966

/-- `∑[∑[A010056(n+1)]]` -/
def P860716272258429902.Spec : Prop :=
  ∀ n, P860716272258429902.a n = A256966 (n + 1)

end A256966

/-! ## A256966.P4900255431369878037

`∑[∑[1-A095792(n)]]`
-/

namespace A256966.P4900255431369878037
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A095792 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A256966.P4900255431369878037

namespace A256966

/-- `∑[∑[1-A095792(n)]]` -/
def P4900255431369878037.Spec : Prop :=
  ∀ n, P4900255431369878037.a n = A256966 (n + 1)

end A256966

/-! ## A256966.P3675139837743349772

`∑[A130233(n+1)-1]`
-/

namespace A256966.P3675139837743349772
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130233 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A256966.P3675139837743349772

namespace A256966

/-- `∑[A130233(n+1)-1]` -/
def P3675139837743349772.Spec : Prop :=
  ∀ n, P3675139837743349772.a n = A256966 (n + 1)

end A256966

/-! ## A256966.P1189713668714429373

`∑[A108852(n+1)-2]`
-/

namespace A256966.P1189713668714429373
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108852 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A256966.P1189713668714429373

namespace A256966

/-- `∑[A108852(n+1)-2]` -/
def P1189713668714429373.Spec : Prop :=
  ∀ n, P1189713668714429373.a n = A256966 (n + 1)

end A256966

/-! ## A256966.P10891671931341457462

`A256967(n+2)-1`
-/

namespace A256966.P10891671931341457462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256967 (n + 2) - 1

end

end A256966.P10891671931341457462

namespace A256966

/-- `A256967(n+2)-1` -/
def P10891671931341457462.Spec : Prop :=
  ∀ n, P10891671931341457462.a n = A256966 (n + 1)

end A256966

/-! ## A256966.P12697660853627519315

`∑[A131234(n+2)-1]`
-/

namespace A256966.P12697660853627519315
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131234 (n + 2) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A256966.P12697660853627519315

namespace A256966

/-- `∑[A131234(n+2)-1]` -/
def P12697660853627519315.Spec : Prop :=
  ∀ n, P12697660853627519315.a n = A256966 (n + 1)

end A256966

/-! ## A256966.P16794398361905437196

`A130235(n+1)-(n+1)`
-/

namespace A256966.P16794398361905437196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130235 (n + 1) - (n + 1 : ℤ)

end

end A256966.P16794398361905437196

namespace A256966

/-- `A130235(n+1)-(n+1)` -/
def P16794398361905437196.Spec : Prop :=
  ∀ n, P16794398361905437196.a n = A256966 (n + 1)

end A256966

/-! ## A256966.P11080287498802774503

`∑[A070939(A003714(n+1))]`
-/

namespace A256966.P11080287498802774503
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 (A003714 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A256966.P11080287498802774503

namespace A256966

/-- `∑[A070939(A003714(n+1))]` -/
def P11080287498802774503.Spec : Prop :=
  ∀ n, P11080287498802774503.a n = A256966 (n + 1)

end A256966

/-! ## A256966.P7742332732825950778

`A023443(A256967(n+2))`
-/

namespace A256966.P7742332732825950778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A256967 (n + 2)).toNat

end

end A256966.P7742332732825950778

namespace A256966

/-- `A023443(A256967(n+2))` -/
def P7742332732825950778.Spec : Prop :=
  ∀ n, P7742332732825950778.a n = A256966 (n + 1)

end A256966

/-! ## A256966.P17701144588877852429

`∑[A070939(A060142(n+1))]`
-/

namespace A256966.P17701144588877852429
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 (A060142 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A256966.P17701144588877852429

namespace A256966

/-- `∑[A070939(A060142(n+1))]` -/
def P17701144588877852429.Spec : Prop :=
  ∀ n, P17701144588877852429.a n = A256966 (n + 1)

end A256966

/-!
# A256967: a(n) = A256966(n) + 1.

The programs for A256967, the canonical program `A256967.P15746179834374025697` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A256967 has offset 1).

The definition of A256967 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A256967.P973779007548264518

`∑[char[a(n-2)+a(n-1)]+a(n-1)]-n` with `a(0)=1, a(1)=2`
-/

namespace A256967.P973779007548264518
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n f2 =>
  f2 (n - 2) + f2 (n - 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n f1 =>
  (if ∃ j, f2 j = n then 1 else 0) + f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (n : ℤ)

end

end A256967.P973779007548264518

namespace A256967

/-- `∑[char[a(n-2)+a(n-1)]+a(n-1)]-n` -/
def P973779007548264518.Spec : Prop :=
  ∀ n, P973779007548264518.a n = A256967 (n + 1)

end A256967

/-! ## A256967.P15746179834374025697

`A130235(n)+1-n`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A256967

/-- `A130235(n)+1-n` -/
def P15746179834374025697.Spec : Prop :=
  ∀ n, P15746179834374025697.a n = A256967 (n + 1)

theorem P15746179834374025697.correct : P15746179834374025697.Spec := by
  intro n
  simp only [A256967, Nat.add_sub_cancel]

end A256967

/-! ## A256967.P13874325375563059338

`∑[abs(2-A108852(n))]`
-/

namespace A256967.P13874325375563059338
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 - A108852 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A256967.P13874325375563059338

namespace A256967

/-- `∑[abs(2-A108852(n))]` -/
def P13874325375563059338.Spec : Prop :=
  ∀ n, P13874325375563059338.a n = A256967 (n + 1)

end A256967

/-! ## A256967.P13170122971024168292

`∑[∑[A010056(n)]]-n`
-/

namespace A256967.P13170122971024168292
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010056 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A256967.P13170122971024168292

namespace A256967

/-- `∑[∑[A010056(n)]]-n` -/
def P13170122971024168292.Spec : Prop :=
  ∀ n, P13170122971024168292.a n = A256967 (n + 1)

end A256967

/-! ## A256967.P10912449748231583069

`∑[A130233(n)-1]+2`
-/

namespace A256967.P10912449748231583069
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130233 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 2

end

end A256967.P10912449748231583069

namespace A256967

/-- `∑[A130233(n)-1]+2` -/
def P10912449748231583069.Spec : Prop :=
  ∀ n, P10912449748231583069.a n = A256967 (n + 1)

end A256967

/-! ## A256967.P13849436156955586030

`∑[A131234(n+1)]-n`
-/

namespace A256967.P13849436156955586030
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131234 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A256967.P13849436156955586030

namespace A256967

/-- `∑[A131234(n+1)]-n` -/
def P13849436156955586030.Spec : Prop :=
  ∀ n, P13849436156955586030.a n = A256967 (n + 1)

end A256967

/-! ## A256967.P4209884274936120245

`∑[∑[char[A020695(n)]]+1]`
-/

namespace A256967.P4209884274936120245
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020695 n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A256967.P4209884274936120245

namespace A256967

/-- `∑[∑[char[A020695(n)]]+1]` -/
def P4209884274936120245.Spec : Prop :=
  ∀ n, (P4209884274936120245.a n : ℤ) = A256967 (n + 1)

end A256967

/-! ## A256967.P2059958574436608677

`∑[∑[char[A000045(n)]]]-n`
-/

namespace A256967.P2059958574436608677
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (n : ℤ)

end

end A256967.P2059958574436608677

namespace A256967

/-- `∑[∑[char[A000045(n)]]]-n` -/
def P2059958574436608677.Spec : Prop :=
  ∀ n, P2059958574436608677.a n = A256967 (n + 1)

end A256967

/-! ## A256967.P10634793434316592388

`∑[∑[char[A212804(n)]]]-n`
-/

namespace A256967.P10634793434316592388
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (n : ℤ)

end

end A256967.P10634793434316592388

namespace A256967

/-- `∑[∑[char[A212804(n)]]]-n` -/
def P10634793434316592388.Spec : Prop :=
  ∀ n, P10634793434316592388.a n = A256967 (n + 1)

end A256967

/-! ## A256967.P7619197384880414652

`A072649(n)+a(n-1)` with `a(0)=1`
-/

namespace A256967.P7619197384880414652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A072649 n + a (n - 1)

end

end A256967.P7619197384880414652

namespace A256967

/-- `A072649(n)+a(n-1)` -/
def P7619197384880414652.Spec : Prop :=
  ∀ n, P7619197384880414652.a n = A256967 (n + 1)

end A256967

/-! ## A256967.P1510838999281207346

`∑[∑[char[A000045(n+3)]]+1]`
-/

namespace A256967.P1510838999281207346
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 3)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A256967.P1510838999281207346

namespace A256967

/-- `∑[∑[char[A000045(n+3)]]+1]` -/
def P1510838999281207346.Spec : Prop :=
  ∀ n, (P1510838999281207346.a n : ℤ) = A256967 (n + 1)

end A256967

/-! ## A256967.P2844051181134424463

`∑[A131234(A005206(n+1))]`
-/

namespace A256967.P2844051181134424463
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131234 (A005206 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A256967.P2844051181134424463

namespace A256967

/-- `∑[A131234(A005206(n+1))]` -/
def P2844051181134424463.Spec : Prop :=
  ∀ n, P2844051181134424463.a n = A256967 (n + 1)

end A256967

/-! ## A256967.P899378482714067645

`∑[A072649(n+1)]+1-A072649(n+1)`
-/

namespace A256967.P899378482714067645
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072649 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (1 - A072649 (n + 1))

end

end A256967.P899378482714067645

namespace A256967

/-- `∑[A072649(n+1)]+1-A072649(n+1)` -/
def P899378482714067645.Spec : Prop :=
  ∀ n, P899378482714067645.a n = A256967 (n + 1)

end A256967

/-! ## A256967.P5872199438503570821

`A130236(n+1)-2*n`
-/

namespace A256967.P5872199438503570821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130236 (n + 1) - (2 * n : ℤ)

end

end A256967.P5872199438503570821

namespace A256967

/-- `A130236(n+1)-2*n` -/
def P5872199438503570821.Spec : Prop :=
  ∀ n, P5872199438503570821.a n = A256967 (n + 1)

end A256967

/-! ## A256967.P6581870230088736254

`∑[A070939(A003714(n))]`
-/

namespace A256967.P6581870230088736254
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 (A003714 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A256967.P6581870230088736254

namespace A256967

/-- `∑[A070939(A003714(n))]` -/
def P6581870230088736254.Spec : Prop :=
  ∀ n, P6581870230088736254.a n = A256967 (n + 1)

end A256967

/-! ## A256967.P11681409153762989037

`∑[A070939(A060142(n))]`
-/

namespace A256967.P11681409153762989037
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 (A060142 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A256967.P11681409153762989037

namespace A256967

/-- `∑[A070939(A060142(n))]` -/
def P11681409153762989037.Spec : Prop :=
  ∀ n, P11681409153762989037.a n = A256967 (n + 1)

end A256967

/-!
# A256968: Let b(n) = Product_{i=1..n} p_i/(p_i - 1), p_i = i-th prime; a(n) = minimum k such that b(k) >= n.

The programs for A256968, there is no canonical definition to state claims against.
-/

/-! ## A256968.P13305280255699557621

`A005579(n)-A209229(A241381(n))`
-/

namespace A256968.P13305280255699557621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005579 n - A209229 (A241381 n).toNat

end

end A256968.P13305280255699557621

/-! ## A256968.P3288104881056321885

`A256969(n)-A329678(n)`
-/

namespace A256968.P3288104881056321885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256969 n - A329678 n

end

end A256968.P3288104881056321885

/-! ## A256968.P2891485654453318473

`A256969(n)-A209229(A003116(n))`
-/

namespace A256968.P2891485654453318473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256969 n - A209229 (A003116 n).toNat

end

end A256968.P2891485654453318473

/-! ## A256968.P4995137995986002116

`A256969(n)-A209229(A256942(n))`
-/

namespace A256968.P4995137995986002116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256969 n - A209229 (A256942 n).toNat

end

end A256968.P4995137995986002116

/-! ## A256968.P11762452559808053971

`A056239(A091440(C(2, n+2)+n))`
-/

namespace A256968.P11762452559808053971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (A091440 (Nat.choose 2 (n + 2) + n)).toNat

end

end A256968.P11762452559808053971

/-!
# A256969: Let b(n) = Product_{i=1..n} p_i/(p_i - 1), p_i = i-th prime; a(n) = minimum k such that b(k) > n.

The programs for A256969, there is no canonical definition to state claims against.
-/

/-! ## A256969.P8789845953706779052

`A005579(floor(1/(n+1))+n)`
-/

namespace A256969.P8789845953706779052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005579 (⌊1 / (n + 1 : ℚ)⌋ + (n : ℤ)).toNat

end

end A256969.P8789845953706779052

/-! ## A256969.P8797471535223461001

`A005579(n)+round(1/3^n)`
-/

namespace A256969.P8797471535223461001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005579 n + SequenceMachineLib.roundAway (1 / (3 ^ n : ℚ))

end

end A256969.P8797471535223461001

/-! ## A256969.P13747758551975014806

`A088157(n)+A005579(n)`
-/

namespace A256969.P13747758551975014806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088157 n + A005579 n

end

end A256969.P13747758551975014806

/-! ## A256969.P1773509640702632614

`A112316(n)+A005579(n)`
-/

namespace A256969.P1773509640702632614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112316 n + A005579 n

end

end A256969.P1773509640702632614

/-! ## A256969.P10774649950812653002

`gcd(round(A027337(n)/3^n), A005579(n))`
-/

namespace A256969.P10774649950812653002
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (SequenceMachineLib.roundAway ((A027337 n : ℚ) / (3 ^ n : ℚ))) (A005579 n)

end

end A256969.P10774649950812653002

/-!
# A256970: Smallest prime divisor of 4*n^2+1.

The programs for A256970, there is no canonical definition to state claims against.
-/

/-! ## A256970.P6615626229161245820

`A125256(2*(n+1))`
-/

namespace A256970.P6615626229161245820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125256 (2 * (n + 1))

end

end A256970.P6615626229161245820

/-! ## A256970.P836721297933068782

`A089120(2*(n+1))`
-/

namespace A256970.P836721297933068782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089120 (2 * (n + 1))

end

end A256970.P836721297933068782

/-! ## A256970.P4029052420592334380

`or(1, A089120(n+2+n))`
-/

namespace A256970.P4029052420592334380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A089120 (n + 2 + n))

end

end A256970.P4029052420592334380

/-! ## A256970.P14353023970499501199

`A014442(A247339(2*(n+1)))`
-/

namespace A256970.P14353023970499501199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014442 (A247339 (2 * (n + 1))).toNat

end

end A256970.P14353023970499501199

/-! ## A256970.P2422217367835662221

`A014442(2*(n+1))-A252096(2*(n+1))`
-/

namespace A256970.P2422217367835662221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014442 (2 * (n + 1)) - A252096 (2 * (n + 1))

end

end A256970.P2422217367835662221

/-! ## A256970.P6167822214087520863

`A250069(A247339(2*(n+1)))+A247339(2*n+1)`
-/

namespace A256970.P6167822214087520863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250069 (A247339 (2 * (n + 1))).toNat + A247339 (2 * n + 1)

end

end A256970.P6167822214087520863

/-! ## A256970.P6888232507582299382

`A259036(A247339(2*n+1)*A247339(2*(n+1)))`
-/

namespace A256970.P6888232507582299382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259036 (A247339 (2 * n + 1) * A247339 (2 * (n + 1))).toNat

end

end A256970.P6888232507582299382

/-! ## A256970.P9789824515097472700

`p?[A089120(n+2+n)]`
-/

namespace A256970.P9789824515097472700
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089120 (n + 2 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A256970.P9789824515097472700

/-! ## A256970.P14298822630623413809

`A002313(A248746(2*(n+1)))-A252096(2*(n+1))`
-/

namespace A256970.P14298822630623413809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002313 (A248746 (2 * (n + 1))).toNat - A252096 (2 * (n + 1))

end

end A256970.P14298822630623413809

/-! ## A256970.P14190281045965453610

`A006530(A247339(2*(n+1))²+1)`
-/

namespace A256970.P14190281045965453610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A247339 (2 * (n + 1)) ^ 2 + 1).toNat

end

end A256970.P14190281045965453610

/-! ## A256970.P12138535971134937824

`A020639((2*(n+1))²+1)`
-/

namespace A256970.P12138535971134937824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 ((2 * (n + 1)) ^ 2 + 1)

end

end A256970.P12138535971134937824

/-! ## A256970.P17087483506834894641

`∑{p}[A020639((n+2+n)²+1), #]`
-/

namespace A256970.P17087483506834894641
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 ((n + 2 + n) ^ 2 + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A256970.P17087483506834894641

/-! ## A256970.P2835180724160936465

`or(1, A020639((n+1)*4*(n+1)+1))`
-/

namespace A256970.P2835180724160936465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A020639 ((n + 1) * (4 * (n + 1)) + 1))

end

end A256970.P2835180724160936465

/-! ## A256970.P4720008841437372525

`p?[A020639(A228564(2*n))]`
-/

namespace A256970.P4720008841437372525
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A228564 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A256970.P4720008841437372525

/-! ## A256970.P12631159872201189567

`∑{d}[A020639(lt[2, A141056(n)]²+1), #]-1`
-/

namespace A256970.P12631159872201189567
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141056 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n ^ 2 + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n).natAbs, d : ℕ) : ℤ) - 1

end

end A256970.P12631159872201189567

/-! ## A256970.P17066536635375468869

`∏{p}[A020639((n+1)*(A004767(n)+1)+1), #]`
-/

namespace A256970.P17066536635375468869
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 ((n + 1 : ℤ) * (A004767 n + 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A256970.P17066536635375468869

/-! ## A256970.P12771949339931096834

`filter[A089120(n+1), A039982(#)]`
-/

namespace A256970.P12771949339931096834
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089120 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A039982 (f1 j).toNat = 1) n)

end

end A256970.P12771949339931096834

/-! ## A256970.P7636773927412179270

`filter[A089120(n+1), A093719(#)]`
-/

namespace A256970.P7636773927412179270
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089120 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A093719 (f1 j).toNat = 1) n)

end

end A256970.P7636773927412179270

/-! ## A256970.P16663369332578157234

`filter[A089120(n+1), A105234(#)]`
-/

namespace A256970.P16663369332578157234
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089120 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A105234 (f1 j).toNat = 1) n)

end

end A256970.P16663369332578157234

/-!
# A256971: Partial sums of A256970.

The programs for A256971, there is no canonical definition to state claims against.
-/

/-! ## A256971.P14071502720138791526

`∑[A256970(n+1)]`
-/

namespace A256971.P14071502720138791526
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256970 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A256971.P14071502720138791526

/-! ## A256971.P2582165074601874809

`∑[A125256(2*(n+1))]`
-/

namespace A256971.P2582165074601874809
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125256 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A256971.P2582165074601874809

/-! ## A256971.P5421806181348460217

`∑[A089120(2*(n+1))]`
-/

namespace A256971.P5421806181348460217
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089120 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A256971.P5421806181348460217

/-! ## A256971.P10522463962821269294

`∑[A014442(A247339(2*(n+1)))]`
-/

namespace A256971.P10522463962821269294
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014442 (A247339 (2 * (n + 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A256971.P10522463962821269294

/-! ## A256971.P10316731343919672017

`∑[A089120(n+2+n)+A000007(n)]-1`
-/

namespace A256971.P10316731343919672017
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089120 (n + 2 + n) + A000007 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A256971.P10316731343919672017

/-! ## A256971.P3014771248038841540

`∑[p?[A089120(A005843(n+1))]]`
-/

namespace A256971.P3014771248038841540
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089120 (A005843 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A256971.P3014771248038841540

/-! ## A256971.P16799428281492231279

`∑[A020639((2*(n+1))²+1)]`
-/

namespace A256971.P16799428281492231279
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 ((2 * (n + 1)) ^ 2 + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A256971.P16799428281492231279

/-! ## A256971.P16551881718249831154

`∑[A078311(A102631(2*(n+1)))]`
-/

namespace A256971.P16551881718249831154
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078311 (A102631 (2 * (n + 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A256971.P16551881718249831154

/-!
# A256974: A254077(n)-A255582(n).

The programs for A256974, there is no canonical definition to state claims against.
-/

/-! ## A256974.P13680632774799737431

`A254077(n+1)-A255582(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A256974.P13680632774799737431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254077 (n + 1) - A255582 (n + 1)

end

end A256974.P13680632774799737431

/-! ## A256974.P12338580525729538287

`A098760(C(floor(n/(xor(n, n+1)+1)), 14))`
-/

namespace A256974.P12338580525729538287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098760 (Nat.choose ⌊(n : ℚ) / (Nat.xor n (n + 1) + 1 : ℚ)⌋.toNat 14)

end

end A256974.P12338580525729538287

/-! ## A256974.P4617441585053860136

`∑{p}[A124774(A186727(n)), #]`
-/

namespace A256974.P4617441585053860136
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124774 (A186727 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A256974.P4617441585053860136

/-! ## A256974.P4216271797128693563

`∑{digits}[A319472(A186747(n)), #]`
-/

namespace A256974.P4216271797128693563
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319472 (A186747 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A256974.P4216271797128693563

/-! ## A256974.P13168631038255034861

`A185037(A109395(n+1))%20`
-/

namespace A256974.P13168631038255034861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A185037 (A109395 (n + 1)).toNat) 20

end

end A256974.P13168631038255034861

/-!
# A256975: G.f.: (1 + x^4 + x^5 + x^6 + x^10 + x^11 + x^12 + x^16)/Product_{i=1..8} (1 - x^i).

The programs for A256975, there is no canonical definition to state claims against.
-/

/-! ## A256975.P16653049508950098931

`A034298(A266771(n))`
-/

namespace A256975.P16653049508950098931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034298 (A266771 n).toNat

end

end A256975.P16653049508950098931

/-! ## A256975.P16745805653587380651

`ceil(Δ[A008374(n+1)/5])`
-/

namespace A256975.P16745805653587380651
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008374 (n + 1) : ℚ) / 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈f1 (n + 1) - f1 n⌉

end

end A256975.P16745805653587380651

/-! ## A256975.P17033901040530171055

`A335469(A001522(n)+A000041(n))`
-/

namespace A256975.P17033901040530171055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335469 (A001522 n + A000041 n).toNat

end

end A256975.P17033901040530171055

/-! ## A256975.P13188452853740441596

`A319642(n)-∑[A152467(A036635(n))]`
-/

namespace A256975.P13188452853740441596
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152467 (A036635 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319642 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A256975.P13188452853740441596

/-! ## A256975.P719906190370922927

`A000005(∏[A376661(2*(n+2))])`
-/

namespace A256975.P719906190370922927
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376661 (2 * (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (∏ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A256975.P719906190370922927

/-!
# A256976: G.f.: (1 + x^4 - x^5 - x^6 - x^10 - x^11 + x^12 + x^16)/Product_{i=1..8} (1 - x^i).

The programs for A256976, there is no canonical definition to state claims against.
-/

/-! ## A256976.P9554839320916818422

`A325712(n+1)+A116087(A111575(n))`
-/

namespace A256976.P9554839320916818422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325712 (n + 1) + A116087 (A111575 n).toNat

end

end A256976.P9554839320916818422

/-! ## A256976.P10104457665032252574

`2*A266771(n)-A034298(A266771(n))`
-/

namespace A256976.P10104457665032252574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A266771 n - A034298 (A266771 n).toNat

end

end A256976.P10104457665032252574

/-! ## A256976.P989142339643179531

`A060953(A011782(n))+A008630(n)`
-/

namespace A256976.P989142339643179531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060953 (A011782 n).toNat + A008630 n

end

end A256976.P989142339643179531

/-! ## A256976.P18219529404876593224

`A000041(n)-A364046(A072850(n))`
-/

namespace A256976.P18219529404876593224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - A364046 (A072850 n).toNat

end

end A256976.P18219529404876593224

/-!
# A256977: G.f.: (1 + 5*x + 5*x^2 + x^3)/Product_{i=1..10} (1 - x^i).

The programs for A256977, there is no canonical definition to state claims against.
-/

/-! ## A256977.P3787346803239866642

`A207188(A070885(n+1))-A345182(n+1)`
-/

namespace A256977.P3787346803239866642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207188 (A070885 (n + 1)).toNat - A345182 (n + 1)

end

end A256977.P3787346803239866642

/-!
# A256981: Number of benzenoid graphs with n hexagonal faces and forcing number 0.

The programs for A256981, there is no canonical definition to state claims against.
-/

/-! ## A256981.P14721356088410186524

`A289494(A003499(n)+A001057(n))`
-/

namespace A256981.P14721356088410186524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289494 (A003499 n + A001057 n).toNat

end

end A256981.P14721356088410186524

/-! ## A256981.P1077699768807630677

`A086901(n+1)-A088432(A199475(n))`
-/

namespace A256981.P1077699768807630677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086901 (n + 1) - A088432 (A199475 n).toNat

end

end A256981.P1077699768807630677

/-!
# A256982: Number of benzenoid graphs with n hexagonal faces and forcing number 1.

The programs for A256982, there is no canonical definition to state claims against.
-/

/-! ## A256982.P2912309744759763071

`A323926(n+1)+A217154(A010750(n))`
-/

namespace A256982.P2912309744759763071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323926 (n + 1) + A217154 (A010750 n).toNat

end

end A256982.P2912309744759763071

/-! ## A256982.P33670457174367950

`or(A001222(A036731(n)), A323926(n+1))`
-/

namespace A256982.P33670457174367950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A001222 (A036731 n).toNat) (A323926 (n + 1))

end

end A256982.P33670457174367950

/-! ## A256982.P2279209602490897759

`or(A001222(A220778(n)), A323926(n+1))`
-/

namespace A256982.P2279209602490897759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A001222 (A220778 n).toNat) (A323926 (n + 1))

end

end A256982.P2279209602490897759

/-! ## A256982.P8977059205016534742

`or(A001842(A291116(n)), A323926(n+1))`
-/

namespace A256982.P8977059205016534742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A001842 (A291116 n).toNat) (A323926 (n + 1))

end

end A256982.P8977059205016534742

/-!
# A256983: Triangle read by rows: T(n,k) = number of vector partitions of n with crank k (0 <= k <= n).

The programs for A256983, there is no canonical definition to state claims against.
-/

/-! ## A256983.P6924489559653948036

`A115360(A201636(n+1))`
-/

namespace A256983.P6924489559653948036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115360 (A201636 (n + 1)).toNat

end

end A256983.P6924489559653948036

/-! ## A256983.P2761368254948985132

`and(and(2, comp[∑[n]]+n)-1, A219977(A105599(n+1)))`
-/

namespace A256983.P2761368254948985132
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land ((Nat.land 2 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + n) : ℤ) - 1) (A219977 (A105599 (n + 1)).toNat)

end

end A256983.P2761368254948985132

/-! ## A256983.P8262987485810620449

`A219977(A105599(n+1))^A004275(n)`
-/

namespace A256983.P8262987485810620449
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A219977 (A105599 (n + 1)).toNat : ℚ) ^ (A004275 n : ℤ)

end

end A256983.P8262987485810620449

/-! ## A256983.P5912080415325027985

`A219977(A105599(n+1))^A122200(n)`
-/

namespace A256983.P5912080415325027985
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A219977 (A105599 (n + 1)).toNat : ℚ) ^ (A122200 n : ℤ)

end

end A256983.P5912080415325027985

/-! ## A256983.P4214061297562352837

`A121373(and(A007052(n+1), A332291(n+1)))`
-/

namespace A256983.P4214061297562352837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121373 (Int.land (A007052 (n + 1)) (A332291 (n + 1))).toNat

end

end A256983.P4214061297562352837

/-!
# A256986: Solution to Popular Computing Contest 4, the Square Spiral.

The programs for A256986, there is no canonical definition to state claims against.
-/

/-! ## A256986.P14986831617756729684

`∑[∑[A038571(A001808(n))]]`
-/

namespace A256986.P14986831617756729684
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038571 (A001808 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A256986.P14986831617756729684

/-! ## A256986.P5331507054332612075

`∑[∑[A115973(A311634(n))]]`
-/

namespace A256986.P5331507054332612075
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115973 (A311634 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A256986.P5331507054332612075

/-! ## A256986.P13640587623622353952

`∑[∑[A329697(A062628(n+1))]]`
-/

namespace A256986.P13640587623622353952
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329697 (A062628 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A256986.P13640587623622353952

/-!
# A256989: One-based column index of n in array A256995.

The programs for A256989, there is no canonical definition to state claims against.
-/

/-! ## A256989.P15332886911465440573

`A256990(n+1)+A256998(n+1)-A256996(n+1)`
-/

namespace A256989.P15332886911465440573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256990 (n + 1) + (A256998 (n + 1) - A256996 (n + 1))

end

end A256989.P15332886911465440573

/-! ## A256989.P11757018322685954384

`A055396(∏{p}[A279348(n+1), #])`
-/

namespace A256989.P11757018322685954384
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279348 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A256989.P11757018322685954384

/-! ## A256989.P3618019689152948928

`A055396(A279348(n+1))`
-/

namespace A256989.P3618019689152948928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (A279348 (n + 1)).toNat

end

end A256989.P3618019689152948928

/-! ## A256989.P6061684121155800033

`A277697(∏{p}[A279336(n+1), #])`
-/

namespace A256989.P6061684121155800033
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279336 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277697 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A256989.P6061684121155800033

/-! ## A256989.P2073574253174403267

`∑{d}[A020639(A279336(n+1)), A000720(#)]`
-/

namespace A256989.P2073574253174403267
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A279336 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000720 d

end

end A256989.P2073574253174403267

/-! ## A256989.P6780536714175462349

`A055396(A279338(n+1))`
-/

namespace A256989.P6780536714175462349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (A279338 (n + 1)).toNat

end

end A256989.P6780536714175462349

/-! ## A256989.P2394636521186127276

`A055396(A279336(n+1))`
-/

namespace A256989.P2394636521186127276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (A279336 (n + 1)).toNat

end

end A256989.P2394636521186127276

/-!
# A256990: One-based row index of n in array A256995.

The programs for A256990, there is no canonical definition to state claims against.
-/

/-! ## A256990.P8860558345714158462

`A256989(n+1)+A256996(n+1)-A256998(n+1)`
-/

namespace A256990.P8860558345714158462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256989 (n + 1) + (A256996 (n + 1) - A256998 (n + 1))

end

end A256990.P8860558345714158462

/-! ## A256990.P14493285684529026511

`A305897(A279336(n+1))-1`
-/

namespace A256990.P14493285684529026511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305897 (A279336 (n + 1)).toNat - 1

end

end A256990.P14493285684529026511

/-! ## A256990.P12578303155697889618

`A131818(A256996(n+1))-1`
-/

namespace A256990.P12578303155697889618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (A256996 (n + 1)).toNat - 1

end

end A256990.P12578303155697889618

/-! ## A256990.P13404845276267808425

`A316441(A063908(n+1))+A131818(A256996(n+1))`
-/

namespace A256990.P13404845276267808425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316441 (A063908 (n + 1)).toNat + A131818 (A256996 (n + 1)).toNat

end

end A256990.P13404845276267808425

/-! ## A256990.P16772241304287036199

`A219428(A247339(2*n+3))+A131818(A256996(n+1))`
-/

namespace A256990.P16772241304287036199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219428 (A247339 (2 * n + 3)).toNat + A131818 (A256996 (n + 1)).toNat

end

end A256990.P16772241304287036199

/-! ## A256990.P11335696748199354988

`A246277(A279336(n+1))`
-/

namespace A256990.P11335696748199354988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246277 (A279336 (n + 1)).toNat

end

end A256990.P11335696748199354988

/-! ## A256990.P16687275537693057221

`A070198(n)%A305897(A279336(n+1))`
-/

namespace A256990.P16687275537693057221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A070198 n) (A305897 (A279336 (n + 1)).toNat)

end

end A256990.P16687275537693057221

/-! ## A256990.P12233249760552878505

`A072828(n+1)%A305897(A279336(n+1))`
-/

namespace A256990.P12233249760552878505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A072828 (n + 1)) (A305897 (A279336 (n + 1)).toNat)

end

end A256990.P12233249760552878505

/-!
# A256991: If A079559(n) = 1, a(n) = A213714(n) - 1, otherwise a(n) = A234017(n).

The programs for A256991, the canonical program `A256991.P15627668895340715446` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A256991 has offset 1).

The definition of A256991 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A256991.P15627668895340715446

`A256992(n+1)-A079559(n+1)`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A256991

/-- `A256992(n+1)-A079559(n+1)` -/
def P15627668895340715446.Spec : Prop :=
  ∀ n, P15627668895340715446.a n = A256991 (n + 1)

theorem P15627668895340715446.correct : P15627668895340715446.Spec := by
  intro n
  simp only [A256991, Nat.add_sub_cancel]

end A256991

/-! ## A256991.P3840656987102546745

`A213714(n+1)+A234017(n+1)-A079559(n+1)`
-/

namespace A256991.P3840656987102546745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213714 (n + 1) + A234017 (n + 1) - A079559 (n + 1)

end

end A256991.P3840656987102546745

namespace A256991

/-- `A213714(n+1)+A234017(n+1)-A079559(n+1)` -/
def P3840656987102546745.Spec : Prop :=
  ∀ n, P3840656987102546745.a n = A256991 (n + 1)

end A256991

/-! ## A256991.P8521239209188795345

`A256992(n+1)-A001222(Δ[A055938(n+1)])`
-/

namespace A256991.P8521239209188795345
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055938 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256992 (n + 1) - A001222 (f1 (n + 1) - f1 n).toNat

end

end A256991.P8521239209188795345

namespace A256991

/-- `A256992(n+1)-A001222(Δ[A055938(n+1)])` -/
def P8521239209188795345.Spec : Prop :=
  ∀ n, P8521239209188795345.a n = A256991 (n + 1)

end A256991

/-! ## A256991.P1856635426622205100

`A256992(n+1)-A279346(Δ[A055938(n+1)])`
-/

namespace A256991.P1856635426622205100
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055938 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256992 (n + 1) - A279346 (f1 (n + 1) - f1 n).toNat

end

end A256991.P1856635426622205100

namespace A256991

/-- `A256992(n+1)-A279346(Δ[A055938(n+1)])` -/
def P1856635426622205100.Spec : Prop :=
  ∀ n, P1856635426622205100.a n = A256991 (n + 1)

end A256991

/-! ## A256991.P12978557371306813100

`A256992(n+1)-A213714(n+1)/A256992(n+1)`
-/

namespace A256991.P12978557371306813100
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A256992 (n + 1) : ℚ) - (A213714 (n + 1) : ℚ) / (A256992 (n + 1) : ℚ)

end

end A256991.P12978557371306813100

namespace A256991

/-- `A256992(n+1)-A213714(n+1)/A256992(n+1)` -/
def P12978557371306813100.Spec : Prop :=
  ∀ n, P12978557371306813100.a n = (A256991 (n + 1) : ℚ)

end A256991

/-!
# A256992: Position of n in either of the complementary sequences, A005187 or A055938: a(n) = A213714(n) + A234017(n).

The programs for A256992, the canonical program `A256992.P2364808251290263884` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A256992 has offset 1).

The definition of A256992 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A256992.P4133648005285831698

`A256991(n+1)+A079559(n+1)`
-/

namespace A256992.P4133648005285831698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256991 (n + 1) + A079559 (n + 1)

end

end A256992.P4133648005285831698

namespace A256992

/-- `A256991(n+1)+A079559(n+1)` -/
def P4133648005285831698.Spec : Prop :=
  ∀ n, P4133648005285831698.a n = A256992 (n + 1)

theorem P4133648005285831698.correct : P4133648005285831698.Spec := by
  intro n
  simp only [A256992, Nat.add_sub_cancel, A256992.P4133648005285831698.a, A256992.P2364808251290263884.a, A079559, A079559.P6833565121082423031.a, A213714, A213714.P736048023233046129.a, A234017, A234017.P14444333569528327869.a, A256991, A256991.P15627668895340715446.a, A043545, A043545.P6199121594405564387.a, A046699, A046699.P9378092664418736944.a, A053644, A053644.P1707366427427647095.a, A234016, A234016.P16847082992809600842.a, A036987, A036987.P1789601236562705309.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A256992

/-! ## A256992.P2364808251290263884

`A213714(n+1)+A234017(n+1)`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A256992

/-- `A213714(n+1)+A234017(n+1)` -/
def P2364808251290263884.Spec : Prop :=
  ∀ n, P2364808251290263884.a n = A256992 (n + 1)

theorem P2364808251290263884.correct : P2364808251290263884.Spec := by
  intro n
  simp only [A256992, Nat.add_sub_cancel]

end A256992

/-! ## A256992.P13980922287724257721

`A234017(n+1)+A046699(n+2)*A079559(n+1)`
-/

namespace A256992.P13980922287724257721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234017 (n + 1) + A046699 (n + 2) * A079559 (n + 1)

end

end A256992.P13980922287724257721

namespace A256992

/-- `A234017(n+1)+A046699(n+2)*A079559(n+1)` -/
def P13980922287724257721.Spec : Prop :=
  ∀ n, P13980922287724257721.a n = A256992 (n + 1)

end A256992

/-! ## A256992.P13832528127802012119

`A234016(n+1)+A000120(A213714(n+1))`
-/

namespace A256992.P13832528127802012119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234016 (n + 1) + A000120 (A213714 (n + 1)).toNat

end

end A256992.P13832528127802012119

namespace A256992

/-- `A234016(n+1)+A000120(A213714(n+1))` -/
def P13832528127802012119.Spec : Prop :=
  ∀ n, P13832528127802012119.a n = A256992 (n + 1)

end A256992

/-! ## A256992.P3849215291202777080

`A234017(n+1)+Δ[A254108(A254111(n+1)+n)]`
-/

namespace A256992.P3849215291202777080
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254108 (A254111 (n + 1) + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234017 (n + 1) + (f1 (n + 1) - f1 n)

end

end A256992.P3849215291202777080

namespace A256992

/-- `A234017(n+1)+Δ[A254108(A254111(n+1)+n)]` -/
def P3849215291202777080.Spec : Prop :=
  ∀ n, P3849215291202777080.a n = A256992 (n + 1)

end A256992

/-!
# A256993: a(1) = 0; for n > 1, a(n) = 1 + a(A256992(n)).

The programs for A256993, the canonical program `A256993.P4133820312878921263` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A256993 has offset 1).

The definition of A256993 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A256993.P4133820312878921263

`1+a(A256992(n+1)-1)` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A256993

/-- `1+a(A256992(n+1)-1)` -/
def P4133820312878921263.Spec : Prop :=
  ∀ n, (P4133820312878921263.a n : ℤ) = A256993 (n + 1)

theorem P4133820312878921263.correct : P4133820312878921263.Spec := by
  intro n
  simp only [A256993, Nat.add_sub_cancel]

end A256993

/-! ## A256993.P16020946329340350711

`a(A256992(n+1)-1)+1` with `a(0)=0`
-/

namespace A256993.P16020946329340350711
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a (A256992 (n + 1) - 1).toNat + 1

end

end A256993.P16020946329340350711

namespace A256993

/-- `a(A256992(n+1)-1)+1` -/
def P16020946329340350711.Spec : Prop :=
  ∀ n, (P16020946329340350711.a n : ℤ) = A256993 (n + 1)

end A256993

/-! ## A256993.P7288730305769125109

`A057427(n)*A070939(A279343(n+1))`
-/

namespace A256993.P7288730305769125109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A070939 (A279343 (n + 1)).toNat

end

end A256993.P7288730305769125109

namespace A256993

/-- `A057427(n)*A070939(A279343(n+1))` -/
def P7288730305769125109.Spec : Prop :=
  ∀ n, P7288730305769125109.a n = A256993 (n + 1)

end A256993

/-! ## A256993.P15152697912348724756

`A279346(n+1)+A080791(A279343(n+1))`
-/

namespace A256993.P15152697912348724756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279346 (n + 1) + A080791 (A279343 (n + 1)).toNat

end

end A256993.P15152697912348724756

namespace A256993

/-- `A279346(n+1)+A080791(A279343(n+1))` -/
def P15152697912348724756.Spec : Prop :=
  ∀ n, P15152697912348724756.a n = A256993 (n + 1)

end A256993

/-! ## A256993.P11243643326518807435

`A070939(A279343(n+1))%A000469(n+1)`
-/

namespace A256993.P11243643326518807435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A070939 (A279343 (n + 1)).toNat) (A000469 (n + 1))

end

end A256993.P11243643326518807435

namespace A256993

/-- `A070939(A279343(n+1))%A000469(n+1)` -/
def P11243643326518807435.Spec : Prop :=
  ∀ n, P11243643326518807435.a n = A256993 (n + 1)

end A256993

/-! ## A256993.P9263262543326320858

`A029837(A279341(n+1)+1)`
-/

namespace A256993.P9263262543326320858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029837 (A279341 (n + 1) + 1).toNat

end

end A256993.P9263262543326320858

namespace A256993

/-- `A029837(A279341(n+1)+1)` -/
def P9263262543326320858.Spec : Prop :=
  ∀ n, P9263262543326320858.a n = A256993 (n + 1)

end A256993

/-! ## A256993.P1322814353939780370

`A057427(n)*A070939(A279341(n+1))`
-/

namespace A256993.P1322814353939780370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A070939 (A279341 (n + 1)).toNat

end

end A256993.P1322814353939780370

namespace A256993

/-- `A057427(n)*A070939(A279341(n+1))` -/
def P1322814353939780370.Spec : Prop :=
  ∀ n, P1322814353939780370.a n = A256993 (n + 1)

end A256993

/-! ## A256993.P14173717784492459783

`A279345(n+1)+A080791(A279341(n+1))`
-/

namespace A256993.P14173717784492459783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279345 (n + 1) + A080791 (A279341 (n + 1)).toNat

end

end A256993.P14173717784492459783

namespace A256993

/-- `A279345(n+1)+A080791(A279341(n+1))` -/
def P14173717784492459783.Spec : Prop :=
  ∀ n, P14173717784492459783.a n = A256993 (n + 1)

end A256993

/-! ## A256993.P1187866930340300170

`A000120(or(A279341(n+1), A279343(n+1)))`
-/

namespace A256993.P1187866930340300170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (Int.lor (A279341 (n + 1)) (A279343 (n + 1))).toNat

end

end A256993.P1187866930340300170

namespace A256993

/-- `A000120(or(A279341(n+1), A279343(n+1)))` -/
def P1187866930340300170.Spec : Prop :=
  ∀ n, P1187866930340300170.a n = A256993 (n + 1)

end A256993

/-! ## A256993.P2416008168003053584

`A070939(2*A279343(n+1))-1`
-/

namespace A256993.P2416008168003053584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 (2 * A279343 (n + 1)).toNat - 1

end

end A256993.P2416008168003053584

namespace A256993

/-- `A070939(2*A279343(n+1))-1` -/
def P2416008168003053584.Spec : Prop :=
  ∀ n, P2416008168003053584.a n = A256993 (n + 1)

end A256993

/-! ## A256993.P17798501523173135945

`A070939(2*A279341(n+1))-1`
-/

namespace A256993.P17798501523173135945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 (2 * A279341 (n + 1)).toNat - 1

end

end A256993.P17798501523173135945

namespace A256993

/-- `A070939(2*A279341(n+1))-1` -/
def P17798501523173135945.Spec : Prop :=
  ∀ n, P17798501523173135945.a n = A256993 (n + 1)

end A256993

/-! ## A256993.P7200055253441143255

`A000120(A279343(n+1)+A279341(n+1))`
-/

namespace A256993.P7200055253441143255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A279343 (n + 1) + A279341 (n + 1)).toNat

end

end A256993.P7200055253441143255

namespace A256993

/-- `A000120(A279343(n+1)+A279341(n+1))` -/
def P7200055253441143255.Spec : Prop :=
  ∀ n, P7200055253441143255.a n = A256993 (n + 1)

end A256993

/-! ## A256993.P7465105964380984280

`A253555(A279348(n+1))`
-/

namespace A256993.P7465105964380984280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253555 (A279348 (n + 1)).toNat

end

end A256993.P7465105964380984280

namespace A256993

/-- `A253555(A279348(n+1))` -/
def P7465105964380984280.Spec : Prop :=
  ∀ n, P7465105964380984280.a n = A256993 (n + 1)

end A256993

/-! ## A256993.P15945527601126277734

`A252464(A279338(n+1))`
-/

namespace A256993.P15945527601126277734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252464 (A279338 (n + 1)).toNat

end

end A256993.P15945527601126277734

namespace A256993

/-- `A252464(A279338(n+1))` -/
def P15945527601126277734.Spec : Prop :=
  ∀ n, P15945527601126277734.a n = A256993 (n + 1)

end A256993

/-!
# A256994: a(n) = n + 1 when n <= 3, otherwise a(n) = 2^(n-2) + 3; also iterates of A005187 starting from a(1) = 2.

The programs for A256994, the canonical program `A256994.P15075604067325130117` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A256994 has offset 1).

The definition of A256994 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A256994.P15075604067325130117

`A005187(a(n-1))` with `a(0)=2`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A256994

/-- `A005187(a(n-1))` -/
def P15075604067325130117.Spec : Prop :=
  ∀ n, P15075604067325130117.a n = A256994 (n + 1)

theorem P15075604067325130117.correct : P15075604067325130117.Spec := by
  intro n
  simp only [A256994, Nat.add_sub_cancel]

end A256994

/-! ## A256994.P14345106326062225126

`∑[ogf((-2+3x+x^2-x^3+2x^4)/(-1+2x))]`
-/

namespace A256994.P14345106326062225126
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, -3, -1, 1, -2] [1, -2] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A256994.P14345106326062225126

namespace A256994

/-- `∑[ogf((-2+3x+x^2-x^3+2x^4)/(-1+2x))]` -/
def P14345106326062225126.Spec : Prop :=
  ∀ n, P14345106326062225126.a n = A256994 (n + 1)

end A256994

/-! ## A256994.P7214770313154765413

`ogf((2-3x-x^2+x^3-2x^4)/(1-3x+2x^2))`
-/

namespace A256994.P7214770313154765413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, -3, -1, 1, -2] [1, -3, 2] n

end

end A256994.P7214770313154765413

namespace A256994

/-- `ogf((2-3x-x^2+x^3-2x^4)/(1-3x+2x^2))` -/
def P7214770313154765413.Spec : Prop :=
  ∀ n, P7214770313154765413.a n = A256994 (n + 1)

end A256994

/-! ## A256994.P9597017547233572949

`2*a(n-1)-3` with `a(0)=2, a(1)=3, a(2)=4, a(3)=7`
-/

namespace A256994.P9597017547233572949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 3, 4, 7] fun n a =>
  2 * a (n - 1) - 3

end

end A256994.P9597017547233572949

namespace A256994

/-- `2*a(n-1)-3` -/
def P9597017547233572949.Spec : Prop :=
  ∀ n, P9597017547233572949.a n = A256994 (n + 1)

end A256994

/-! ## A256994.P1763273532076292649

`ceil(2^(n-1))+ceil(atan(sqrt(n)))+1`
-/

namespace A256994.P1763273532076292649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉ + (⌈Real.arctan (Real.sqrt (n : ℝ))⌉ + 1)

end

end A256994.P1763273532076292649

namespace A256994

/-- `ceil(2^(n-1))+ceil(atan(sqrt(n)))+1` -/
def P1763273532076292649.Spec : Prop :=
  ∀ n, P1763273532076292649.a n = A256994 (n + 1)

end A256994

/-! ## A256994.P1509218864966293665

`a(n-1)+a(n-1)-3` with `a(0)=2, a(1)=3, a(2)=4, a(3)=7`
-/

namespace A256994.P1509218864966293665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 3, 4, 7] fun n a =>
  a (n - 1) + (a (n - 1) - 3)

end

end A256994.P1509218864966293665

namespace A256994

/-- `a(n-1)+a(n-1)-3` -/
def P1509218864966293665.Spec : Prop :=
  ∀ n, P1509218864966293665.a n = A256994 (n + 1)

end A256994

/-! ## A256994.P10397769315668127306

`a(n-1)-(3-a(n-1))` with `a(0)=2, a(1)=3, a(2)=4, a(3)=7`
-/

namespace A256994.P10397769315668127306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 3, 4, 7] fun n a =>
  a (n - 1) - (3 - a (n - 1))

end

end A256994.P10397769315668127306

namespace A256994

/-- `a(n-1)-(3-a(n-1))` -/
def P10397769315668127306.Spec : Prop :=
  ∀ n, P10397769315668127306.a n = A256994 (n + 1)

end A256994

/-! ## A256994.P4692573218274905208

`A127904(n)+2-char[2]`
-/

namespace A256994.P4692573218274905208
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127904 n + (2 - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ))

end

end A256994.P4692573218274905208

namespace A256994

/-- `A127904(n)+2-char[2]` -/
def P4692573218274905208.Spec : Prop :=
  ∀ n, P4692573218274905208.a n = A256994 (n + 1)

end A256994

/-! ## A256994.P17847550944828820012

`A011782(n)+floor(atan(n-1))+2`
-/

namespace A256994.P17847550944828820012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n + (⌊Real.arctan ((n : ℤ) - 1 : ℝ)⌋ + 2)

end

end A256994.P17847550944828820012

namespace A256994

/-- `A011782(n)+floor(atan(n-1))+2` -/
def P17847550944828820012.Spec : Prop :=
  ∀ n, P17847550944828820012.a n = A256994 (n + 1)

end A256994

/-! ## A256994.P6669778622685935841

`A329683(n)+A094373(n)`
-/

namespace A256994.P6669778622685935841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329683 n + A094373 n

end

end A256994.P6669778622685935841

namespace A256994

/-- `A329683(n)+A094373(n)` -/
def P6669778622685935841.Spec : Prop :=
  ∀ n, P6669778622685935841.a n = A256994 (n + 1)

end A256994

/-! ## A256994.P2130644411668699615

`A279337(A000040(n+1))`
-/

namespace A256994.P2130644411668699615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279337 (A000040 (n + 1)).toNat

end

end A256994.P2130644411668699615

namespace A256994

/-- `A279337(A000040(n+1))` -/
def P2130644411668699615.Spec : Prop :=
  ∀ n, P2130644411668699615.a n = A256994 (n + 1)

end A256994

/-! ## A256994.P3659052104043629379

`A279337(A008578(n+2))`
-/

namespace A256994.P3659052104043629379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279337 (A008578 (n + 2)).toNat

end

end A256994.P3659052104043629379

namespace A256994

/-- `A279337(A008578(n+2))` -/
def P3659052104043629379.Spec : Prop :=
  ∀ n, P3659052104043629379.a n = A256994 (n + 1)

end A256994

/-! ## A256994.P1440093043173968611

`A279337(A182986(n+2))`
-/

namespace A256994.P1440093043173968611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279337 (A182986 (n + 2)).toNat

end

end A256994.P1440093043173968611

namespace A256994

/-- `A279337(A182986(n+2))` -/
def P1440093043173968611.Spec : Prop :=
  ∀ n, P1440093043173968611.a n = A256994 (n + 1)

end A256994

/-! ## A256994.P12110716879011494049

`A279337(record[A006530(n+2)])`
-/

namespace A256994.P12110716879011494049
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279337 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A256994.P12110716879011494049

namespace A256994

/-- `A279337(record[A006530(n+2)])` -/
def P12110716879011494049.Spec : Prop :=
  ∀ n, P12110716879011494049.a n = A256994 (n + 1)

end A256994

/-! ## A256994.P7973933153017417282

`A279337(record[A014963(n+2)])`
-/

namespace A256994.P7973933153017417282
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279337 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A256994.P7973933153017417282

namespace A256994

/-- `A279337(record[A014963(n+2)])` -/
def P7973933153017417282.Spec : Prop :=
  ∀ n, P7973933153017417282.a n = A256994 (n + 1)

end A256994

/-! ## A256994.P5875778009079512819

`A279337(record[A020639(n+2)])`
-/

namespace A256994.P5875778009079512819
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279337 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A256994.P5875778009079512819

namespace A256994

/-- `A279337(record[A020639(n+2)])` -/
def P5875778009079512819.Spec : Prop :=
  ∀ n, P5875778009079512819.a n = A256994 (n + 1)

end A256994

/-! ## A256994.P14235805523090980989

`A165020(n+2)+A131577(n)`
-/

namespace A256994.P14235805523090980989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165020 (n + 2) + A131577 n

end

end A256994.P14235805523090980989

namespace A256994

/-- `A165020(n+2)+A131577(n)` -/
def P14235805523090980989.Spec : Prop :=
  ∀ n, P14235805523090980989.a n = A256994 (n + 1)

end A256994

/-! ## A256994.P911977487278921537

`A256995(∑[n]+2)`
-/

namespace A256994.P911977487278921537
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256995 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A256994.P911977487278921537

namespace A256994

/-- `A256995(∑[n]+2)` -/
def P911977487278921537.Spec : Prop :=
  ∀ n, P911977487278921537.a n = A256994 (n + 1)

end A256994

/-! ## A256994.P16463814264792872476

`A256997(∑[n+1]+1)`
-/

namespace A256994.P16463814264792872476
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256997 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A256994.P16463814264792872476

namespace A256994

/-- `A256997(∑[n+1]+1)` -/
def P16463814264792872476.Spec : Prop :=
  ∀ n, P16463814264792872476.a n = A256994 (n + 1)

end A256994

/-! ## A256994.P14507351164274423641

`A099627(A089071(n+1))`
-/

namespace A256994.P14507351164274423641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099627 (A089071 (n + 1)).toNat

end

end A256994.P14507351164274423641

namespace A256994

/-- `A099627(A089071(n+1))` -/
def P14507351164274423641.Spec : Prop :=
  ∀ n, P14507351164274423641.a n = A256994 (n + 1)

end A256994

/-!
# A256995: Square array A(row,col) read by antidiagonals: A(row,1) = A055938(row), and for col > 1, A(row,col) = A005187(A(row,col-1)).

The programs for A256995, there is no canonical definition to state claims against.
-/

/-! ## A256995.P459041724224411352

`A256997(A061579(n)+2)`
-/

namespace A256995.P459041724224411352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256997 (A061579 n + 2).toNat

end

end A256995.P459041724224411352

/-! ## A256995.P17357880996798594906

`A256997(A038722(n+1)+1)`
-/

namespace A256995.P17357880996798594906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256997 (A038722 (n + 1) + 1).toNat

end

end A256995.P17357880996798594906

/-! ## A256995.P9846627503134612499

`A256997(A114327(n)+2+n)`
-/

namespace A256995.P9846627503134612499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256997 (A114327 n + 2 + (n : ℤ)).toNat

end

end A256995.P9846627503134612499

/-! ## A256995.P15121994036997713706

`A256997(A265129(n+1)-n)`
-/

namespace A256995.P15121994036997713706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256997 (A265129 (n + 1) - (n : ℤ)).toNat

end

end A256995.P15121994036997713706

/-! ## A256995.P401362306378497767

`A256997(A093995(n+1)+1-n)`
-/

namespace A256995.P401362306378497767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256997 (A093995 (n + 1) + (1 - (n : ℤ))).toNat

end

end A256995.P401362306378497767

/-! ## A256995.P14609261587430414478

`A256997(A122797(n+1)+A099375(n))`
-/

namespace A256995.P14609261587430414478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256997 (A122797 (n + 1) + A099375 n).toNat

end

end A256995.P14609261587430414478

/-! ## A256995.P8150449173558288478

`A256997(A185870(n+1)-A016777(n))`
-/

namespace A256995.P8150449173558288478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256997 (A185870 (n + 1) - A016777 n).toNat

end

end A256995.P8150449173558288478

/-! ## A256995.P2714699216892355682

`A256997(A256996(A256997(n+2)))`
-/

namespace A256995.P2714699216892355682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256997 (A256996 (A256997 (n + 2)).toNat).toNat

end

end A256995.P2714699216892355682

/-!
# A256996: Inverse to A256995 considered as a permutation of natural numbers, with assumed fixed initial term a(1) = 1.

The programs for A256996, there is no canonical definition to state claims against.
-/

/-! ## A256996.P15832109611298523157

`A256990(n+1)+A256998(n+1)-A256989(n+1)`
-/

namespace A256996.P15832109611298523157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256990 (n + 1) + (A256998 (n + 1) - A256989 (n + 1))

end

end A256996.P15832109611298523157

/-!
# A256997: Square array A(row,col) read by antidiagonals: A(1,col) = A055938(col), and for row > 1, A(row,col) = A005187(A(row-1,col)).

The programs for A256997, there is no canonical definition to state claims against.
-/

/-! ## A256997.P13011925255815835173

`A256995(A061579(n)+2)`
-/

namespace A256997.P13011925255815835173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256995 (A061579 n + 2).toNat

end

end A256997.P13011925255815835173

/-! ## A256997.P8792778434417175346

`A256995(A038722(n+1)+1)`
-/

namespace A256997.P8792778434417175346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256995 (A038722 (n + 1) + 1).toNat

end

end A256997.P8792778434417175346

/-! ## A256997.P3163109199793997746

`A256995(A114327(n)+2+n)`
-/

namespace A256997.P3163109199793997746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256995 (A114327 n + 2 + (n : ℤ)).toNat

end

end A256997.P3163109199793997746

/-! ## A256997.P16412001697263797117

`A256995(A265129(n+1)-n)`
-/

namespace A256997.P16412001697263797117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256995 (A265129 (n + 1) - (n : ℤ)).toNat

end

end A256997.P16412001697263797117

/-! ## A256997.P245817551780452686

`A256995(A093995(n+1)+1-n)`
-/

namespace A256997.P245817551780452686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256995 (A093995 (n + 1) + (1 - (n : ℤ))).toNat

end

end A256997.P245817551780452686

/-! ## A256997.P17123620518064569320

`A256995(A122797(n+1)+A099375(n))`
-/

namespace A256997.P17123620518064569320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256995 (A122797 (n + 1) + A099375 n).toNat

end

end A256997.P17123620518064569320

/-! ## A256997.P5361011648521684650

`A256995(A185870(n+1)-A016777(n))`
-/

namespace A256997.P5361011648521684650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256995 (A185870 (n + 1) - A016777 n).toNat

end

end A256997.P5361011648521684650

/-! ## A256997.P1862594634407815466

`A256995(A004736(n+1)+n-A002260(n+1)+2)`
-/

namespace A256997.P1862594634407815466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256995 (A004736 (n + 1) + ((n : ℤ) - A002260 (n + 1)) + 2).toNat

end

end A256997.P1862594634407815466

/-! ## A256997.P7069240703797225477

`A256995(A256998(A256995(n+2)))`
-/

namespace A256997.P7069240703797225477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256995 (A256998 (A256995 (n + 2)).toNat).toNat

end

end A256997.P7069240703797225477

/-!
# A256998: Inverse to A256997 considered as a permutation of natural numbers, with the assumed fixed term a(1) = 1.

The programs for A256998, there is no canonical definition to state claims against.
-/

/-! ## A256998.P10568534494097119077

`A256989(n+1)+A256996(n+1)-A256990(n+1)`
-/

namespace A256998.P10568534494097119077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256989 (n + 1) + (A256996 (n + 1) - A256990 (n + 1))

end

end A256998.P10568534494097119077

/-! ## A256998.P4619337599767425122

`A252752(A279336(n+1))`
-/

namespace A256998.P4619337599767425122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252752 (A279336 (n + 1)).toNat

end

end A256998.P4619337599767425122

/-! ## A256998.P644645092085944746

`A255128(A279336(n+1))+A025480(A000225(n))`
-/

namespace A256998.P644645092085944746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255128 (A279336 (n + 1)).toNat + A025480 (A000225 n).toNat

end

end A256998.P644645092085944746

/-!
# A256999: a(n)=n for n <= 1; for n >= 2, a(n) = largest number that can be obtained by rotating non-msb bits of binary expansion of n (with A080541 or A080542).

The programs for A256999, there is no canonical definition to state claims against.
-/

/-! ## A256999.P12777422594044452341

`A257697(n)+A053644(n)`
-/

namespace A256999.P12777422594044452341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257697 n + A053644 n

end

end A256999.P12777422594044452341

/-! ## A256999.P15602395141511696161

`or(A257697(n), A342126(n))`
-/

namespace A256999.P15602395141511696161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A257697 n) (A342126 n)

end

end A256999.P15602395141511696161

/-! ## A256999.P1063570801286967317

`or(A053644(A073137(n)), A257697(n))`
-/

namespace A256999.P1063570801286967317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A053644 (A073137 n).toNat) (A257697 n)

end

end A256999.P1063570801286967317

/-! ## A256999.P18339473120689885120

`or(A053644(A073138(n)), A257697(n))`
-/

namespace A256999.P18339473120689885120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A053644 (A073138 n).toNat) (A257697 n)

end

end A256999.P18339473120689885120

/-! ## A256999.P18215357920277284107

`xor(A053644(A331857(n)), A257697(n))`
-/

namespace A256999.P18215357920277284107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A053644 (A331857 n).toNat) (A257697 n)

end

end A256999.P18215357920277284107

/-! ## A256999.P8892003145118474689

`A257697(n)+A123108(A062383(n))`
-/

namespace A256999.P8892003145118474689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257697 n + A123108 (A062383 n).toNat

end

end A256999.P8892003145118474689

/-! ## A256999.P5504511999534291406

`or(A053644(A003817(n)), A257697(n))`
-/

namespace A256999.P5504511999534291406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A053644 (A003817 n).toNat) (A257697 n)

end

end A256999.P5504511999534291406

/-! ## A256999.P10889741075932117973

`A257697(n)+A072376(2*n)`
-/

namespace A256999.P10889741075932117973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257697 n + A072376 (2 * n)

end

end A256999.P10889741075932117973

/-! ## A256999.P17964232965377321399

`or(A053644(A004526(2*n)), A257697(n))`
-/

namespace A256999.P17964232965377321399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A053644 (A004526 (2 * n)).toNat) (A257697 n)

end

end A256999.P17964232965377321399

/-! ## A256999.P17740596986373944879

`xor(A053644(n), A257697(A004526(2*n)))`
-/

namespace A256999.P17740596986373944879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A053644 n) (A257697 (A004526 (2 * n)).toNat)

end

end A256999.P17740596986373944879

/-! ## A256999.P10433726774707951760

`A257697(A062383(n)+1)+A257697(n)`
-/

namespace A256999.P10433726774707951760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257697 (A062383 n + 1).toNat + A257697 n

end

end A256999.P10433726774707951760

/-! ## A256999.P9835150126382884802

`A257697(A003817(n)+2)+A257697(n)`
-/

namespace A256999.P9835150126382884802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257697 (A003817 n + 2).toNat + A257697 n

end

end A256999.P9835150126382884802

