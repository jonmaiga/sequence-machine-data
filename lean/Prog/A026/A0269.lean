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
import Seq.B000.C008
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C012
import Seq.B000.C014
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C023
import Seq.B000.C025
import Seq.B000.C027
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C038
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C008
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B007.C000
import Seq.B008.C000
import Seq.B010.C000
import Seq.B011.C000
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

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A026900: T(2n+1,n+3), T given by A026780.

The programs for A026900, there is no canonical definition to state claims against.
-/

/-! ## A026900.P176045791229442145

`Δ[A026895(n+2)-∑[A026894(n+1)]]`
-/

namespace A026900.P176045791229442145
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026894 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026895 (n + 2) - ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A026900.P176045791229442145

/-! ## A026900.P17938612406786412785

`A249488(A268581(n+1))`
-/

namespace A026900.P17938612406786412785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249488 (A268581 (n + 1)).toNat

end

end A026900.P17938612406786412785

/-! ## A026900.P17947703851117585054

`A026780(A005893(n+3))`
-/

namespace A026900.P17947703851117585054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026780 (A005893 (n + 3)).toNat

end

end A026900.P17947703851117585054

/-! ## A026900.P9832509061842154597

`A026780(A103517((n+3)²))`
-/

namespace A026900.P9832509061842154597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026780 (A103517 ((n + 3) ^ 2)).toNat

end

end A026900.P9832509061842154597

/-! ## A026900.P17934628661599587946

`A026780(eq[5, -A114327(n)])`
-/

namespace A026900.P17934628661599587946
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A114327 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026780 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A026900.P17934628661599587946

/-! ## A026900.P5238736435658442367

`A026780(A093328(n+3)-1)`
-/

namespace A026900.P5238736435658442367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026780 (A093328 (n + 3) - 1).toNat

end

end A026900.P5238736435658442367

/-! ## A026900.P4453842368209804095

`A026780(A056220(n+3)+3)`
-/

namespace A026900.P4453842368209804095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026780 (A056220 (n + 3) + 3).toNat

end

end A026900.P4453842368209804095

/-! ## A026900.P2629501991899948708

`A026780(eq[n, A061579(n)+5])`
-/

namespace A026900.P2629501991899948708
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061579 n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026780 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A026900.P2629501991899948708

/-! ## A026900.P35486996894299837

`A026780(eq[n-4, A038722(n+1)])`
-/

namespace A026900.P35486996894299837
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038722 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026780 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A026900.P35486996894299837

/-!
# A026901: T(2n+1,n+4), T given by A026780.

The programs for A026901, there is no canonical definition to state claims against.
-/

/-! ## A026901.P1771659565428317330

`Δ[A026896(n+3)]-A026895(n+3)`
-/

namespace A026901.P1771659565428317330
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026896 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A026895 (n + 3)

end

end A026901.P1771659565428317330

/-! ## A026901.P754741854099712847

`Δ[A026896(n+3)%∑[A026895(n+2)]]`
-/

namespace A026901.P754741854099712847
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026895 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A026896 (n + 3)) (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A026901.P754741854099712847

/-! ## A026901.P13455964974077025365

`A026780(A093328(n+4))`
-/

namespace A026901.P13455964974077025365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026780 (A093328 (n + 4)).toNat

end

end A026901.P13455964974077025365

/-! ## A026901.P52148290709550827

`A026780(eq[A023448(n), A038722(n+1)])`
-/

namespace A026901.P52148290709550827
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023448 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038722 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026780 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A026901.P52148290709550827

/-! ## A026901.P1881445890505927615

`A026780(eq[A061579(n)+1, A023448(n)])`
-/

namespace A026901.P1881445890505927615
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061579 n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023448 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026780 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A026901.P1881445890505927615

/-! ## A026901.P15684528708464977119

`A026780(eq[1, A023448(n)-A061579(n)])`
-/

namespace A026901.P15684528708464977119
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023448 n - A061579 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026780 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A026901.P15684528708464977119

/-! ## A026901.P7904228966275428861

`A026780(A090288(n+3)-A005408(n+1))`
-/

namespace A026901.P7904228966275428861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026780 (A090288 (n + 3) - A005408 (n + 1)).toNat

end

end A026901.P7904228966275428861

/-!
# A026903: a(n) is the number of multisets S of positive integers satisfying E(S)=n, where E = 2nd elementary symmetric function.

The programs for A026903, there is no canonical definition to state claims against.
-/

/-! ## A026903.P6418154442450484751

`A262190(A081056(n))+A116373(n+1)`
-/

namespace A026903.P6418154442450484751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262190 (A081056 n).toNat + A116373 (n + 1)

end

end A026903.P6418154442450484751

/-! ## A026903.P10755898588331192259

`A110591(Δ[A107684(n)²])`
-/

namespace A026903.P10755898588331192259
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107684 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110591 (f1 (n + 1) - f1 n).toNat

end

end A026903.P10755898588331192259

/-! ## A026903.P11057960188851789371

`round(A340848(2*(n+1))/8)`
-/

namespace A026903.P11057960188851789371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A340848 (2 * (n + 1)) : ℚ) / 8)

end

end A026903.P11057960188851789371

/-! ## A026903.P1016904660936603278

`A051125(A160511(A001399(n)))`
-/

namespace A026903.P1016904660936603278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051125 (A160511 (A001399 n).toNat).toNat

end

end A026903.P1016904660936603278

/-! ## A026903.P14145760367729830424

`A058978(A108742(n+1))`
-/

namespace A026903.P14145760367729830424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058978 (A108742 (n + 1)).toNat

end

end A026903.P14145760367729830424

/-!
# A026904: Number of sets S of positive integers satisfying E(S)=n, where E = 2nd elementary symmetric function.

The programs for A026904, there is no canonical definition to state claims against.
-/

/-! ## A026904.P12669901550627985936

`A004526(A320111(2*(n+1)))+A324385(A166246(2*n+1))%A232529(n+1)`
-/

namespace A026904.P12669901550627985936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A320111 (2 * (n + 1))).toNat + Int.tmod (A324385 (A166246 (2 * n + 1)).toNat) (A232529 (n + 1))

end

end A026904.P12669901550627985936

/-! ## A026904.P7893673851815673793

`A001221(∑[A000961(n+2)^A291786(n+2)])`
-/

namespace A026904.P7893673851815673793
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000961 (n + 2) : ℚ) ^ (A291786 (n + 2) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A026904.P7893673851815673793

/-! ## A026904.P2932205326935622676

`A125029(A001611(A026741(n)))`
-/

namespace A026904.P2932205326935622676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125029 (A001611 (A026741 n).toNat).toNat

end

end A026904.P2932205326935622676

/-! ## A026904.P9259306782928493173

`A072273(A266719(n)+A001588(n))`
-/

namespace A026904.P9259306782928493173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072273 (A266719 n + A001588 n).toNat

end

end A026904.P9259306782928493173

/-! ## A026904.P845336965955267696

`A000120(A353709(n)^A006337(n+1))`
-/

namespace A026904.P845336965955267696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (SequenceMachineLib.roundAway ((A353709 n : ℚ) ^ (A006337 (n + 1) : ℤ))).toNat

end

end A026904.P845336965955267696

/-!
# A026905: Partial sums of the partition numbers A000041 of the positive integers.

The programs for A026905, there is no canonical definition to state claims against.
-/

/-! ## A026905.P2171307479664419737

`A000070(n+1)-1`
-/

namespace A026905.P2171307479664419737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000070 (n + 1) - 1

end

end A026905.P2171307479664419737

/-! ## A026905.P11806060440228991767

`∑[A000041(n+1)]`
-/

namespace A026905.P11806060440228991767
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A026905.P11806060440228991767

/-! ## A026905.P18127625843035029721

`∑[abs(Δ[A000070(n)])]`
-/

namespace A026905.P18127625843035029721
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000070 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A026905.P18127625843035029721

/-! ## A026905.P13022660770393353449

`A216053(n+2)-2`
-/

namespace A026905.P13022660770393353449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216053 (n + 2) - 2

end

end A026905.P13022660770393353449

/-! ## A026905.P11022521200221354448

`∑[∑[A187219(n+1)]]`
-/

namespace A026905.P11022521200221354448
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187219 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A026905.P11022521200221354448

/-! ## A026905.P8024694974434743896

`∑[Δ[A058682(n)]+1]`
-/

namespace A026905.P8024694974434743896
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058682 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A026905.P8024694974434743896

/-! ## A026905.P14239513672560238117

`∑[A000065(n+1)+1]`
-/

namespace A026905.P14239513672560238117
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000065 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A026905.P14239513672560238117

/-! ## A026905.P14290437013228323976

`∑[A052810(n+1)-1]`
-/

namespace A026905.P14290437013228323976
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052810 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A026905.P14290437013228323976

/-! ## A026905.P3500506753964645544

`∑[A139582(n+1)/2]`
-/

namespace A026905.P3500506753964645544
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A139582 (n + 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A026905.P3500506753964645544

/-! ## A026905.P7673686992640906465

`∑[A299473(n+1)/3]`
-/

namespace A026905.P7673686992640906465
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A299473 (n + 1) : ℚ) / 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A026905.P7673686992640906465

/-! ## A026905.P11990062117070827440

`∑[A299474(n+1)/4]`
-/

namespace A026905.P11990062117070827440
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A299474 (n + 1) : ℚ) / 4

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A026905.P11990062117070827440

/-! ## A026905.P8598611782308965922

`A058682(n+1)+1+n`
-/

namespace A026905.P8598611782308965922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058682 (n + 1) + 1 + (n : ℤ)

end

end A026905.P8598611782308965922

/-! ## A026905.P4747813893063786617

`∑[∑[A002865(n+1)]+1]`
-/

namespace A026905.P4747813893063786617
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A026905.P4747813893063786617

/-! ## A026905.P1482371616898384533

`∑[∑[A083751(n+1)+1]]`
-/

namespace A026905.P1482371616898384533
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083751 (n + 1) + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A026905.P1482371616898384533

/-! ## A026905.P3424652361186670827

`∑[A133041(n+1)-(n+1)]`
-/

namespace A026905.P3424652361186670827
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133041 (n + 1) - (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A026905.P3424652361186670827

/-! ## A026905.P8719789747827762371

`2*∑[A000041(2*n-(n-1))/2]`
-/

namespace A026905.P8719789747827762371
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000041 ((2 * n : ℤ) - ((n : ℤ) - 1)).toNat : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A026905.P8719789747827762371

/-! ## A026905.P6765520479891186988

`a(n-1)+A000041(2*n+1-n)` with `a(0)=1`
-/

namespace A026905.P6765520479891186988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + A000041 ((2 * n : ℤ) + (1 - (n : ℤ))).toNat

end

end A026905.P6765520479891186988

/-! ## A026905.P2341601875229026957

`∑[A000041(n)*ratio[A000041(n)]]`
-/

namespace A026905.P2341601875229026957
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000041 n : ℚ) * ((f2 (n + 1) : ℚ) / (f2 n : ℚ))

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A026905.P2341601875229026957

/-! ## A026905.P9692028965859335491

`A056870(n+1)+A026906(n+1)`
-/

namespace A026905.P9692028965859335491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056870 (n + 1) + A026906 (n + 1)

end

end A026905.P9692028965859335491

/-! ## A026905.P17649257985619752810

`A086741(n+1)+A014284(n+1)`
-/

namespace A026905.P17649257985619752810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086741 (n + 1) + A014284 (n + 1)

end

end A026905.P17649257985619752810

/-!
# A026906: Number of sums S of distinct positive integers satisfying S <= n.

The programs for A026906, there is no canonical definition to state claims against.
-/

/-! ## A026906.P3782468060466767820

`A036469(n+1)-1`
-/

namespace A026906.P3782468060466767820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036469 (n + 1) - 1

end

end A026906.P3782468060466767820

/-! ## A026906.P15479964761667812686

`∑[A000009(n+1)]`
-/

namespace A026906.P15479964761667812686
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A026906.P15479964761667812686

/-! ## A026906.P635152223747303794

`A317910(n+1)+1+n`
-/

namespace A026906.P635152223747303794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317910 (n + 1) + 1 + (n : ℤ)

end

end A026906.P635152223747303794

/-! ## A026906.P11175529169419605957

`∑[∑[A087897(n+1)]+1]`
-/

namespace A026906.P11175529169419605957
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087897 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A026906.P11175529169419605957

/-! ## A026906.P10943543055411144314

`∑[A066189(n+1)/(n+1)]`
-/

namespace A026906.P10943543055411144314
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A066189 (n + 1) : ℚ) / (n + 1 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A026906.P10943543055411144314

/-! ## A026906.P4716813514294261921

`∑[A025147(n+1)+A025147(n)]`
-/

namespace A026906.P4716813514294261921
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025147 (n + 1) + A025147 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A026906.P4716813514294261921

/-! ## A026906.P642018189545760542

`∑[abs(A081360(n+1))]`
-/

namespace A026906.P642018189545760542
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A081360 (n + 1)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A026906.P642018189545760542

/-! ## A026906.P3743247667927567701

`Δ[∑[A036469(n)]-n]`
-/

namespace A026906.P3743247667927567701
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036469 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A026906.P3743247667927567701

/-! ## A026906.P7758649692951414483

`floor(A248956(n+1)/2)`
-/

namespace A026906.P7758649692951414483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A248956 (n + 1) : ℚ) / 2⌋

end

end A026906.P7758649692951414483

/-! ## A026906.P437175941850830709

`∑[A111133(n+1)+1]`
-/

namespace A026906.P437175941850830709
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111133 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A026906.P437175941850830709

/-! ## A026906.P2793961873423754265

`∑[A052839(n+1)-1]`
-/

namespace A026906.P2793961873423754265
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052839 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A026906.P2793961873423754265

/-! ## A026906.P4466593149581904721

`Δ[A095944(n+1)]-1`
-/

namespace A026906.P4466593149581904721
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095944 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 1

end

end A026906.P4466593149581904721

/-! ## A026906.P2042594356579176055

`∑[A087135(n+1)/2]`
-/

namespace A026906.P2042594356579176055
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A087135 (n + 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A026906.P2042594356579176055

/-! ## A026906.P1534778162407818596

`∑[ceil(A333147(n+1)/2)]`
-/

namespace A026906.P1534778162407818596
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A333147 (n + 1) : ℚ) / 2⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A026906.P1534778162407818596

/-! ## A026906.P3392323189151340478

`A111133(n+1)+A036469(n)`
-/

namespace A026906.P3392323189151340478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111133 (n + 1) + A036469 n

end

end A026906.P3392323189151340478

/-! ## A026906.P477202828039015518

`∑[A057428(n+1)+A052839(n+1)]`
-/

namespace A026906.P477202828039015518
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (n + 1) + A052839 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A026906.P477202828039015518

/-! ## A026906.P3458617036339410116

`∑[lcm(A020985(n+1), A081360(n+1))]`
-/

namespace A026906.P3458617036339410116
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020985 (n + 1)) (A081360 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A026906.P3458617036339410116

/-! ## A026906.P12737364230859435388

`∑[A117409(n+3)]`
-/

namespace A026906.P12737364230859435388
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117409 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A026906.P12737364230859435388

/-! ## A026906.P14858824737883417865

`∑[A000041(n+1)-A047967(n+1)]`
-/

namespace A026906.P14858824737883417865
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (n + 1) - A047967 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A026906.P14858824737883417865

/-! ## A026906.P16573897263178657991

`A026905(n+1)-A056870(n+1)`
-/

namespace A026906.P16573897263178657991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026905 (n + 1) - A056870 (n + 1)

end

end A026906.P16573897263178657991

/-!
# A026908: a(n) = A026907(2*n, n).

The programs for A026908, the canonical program `A026908.P2582462986120220925` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A026908 has offset 0).

The definition of A026908 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A026908.P2582462986120220925

`C(2*n, n)+3*C(2*n+4, n+2)-18`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A026908

/-- `C(2*n, n)+3*C(2*n+4, n+2)-18` -/
def P2582462986120220925.Spec : Prop :=
  ∀ n, P2582462986120220925.a n = A026908 n

theorem P2582462986120220925.correct : P2582462986120220925.Spec := by
  intro n
  simp only [A026908]

end A026908

/-! ## A026908.P4107806842104188674

`A026914(2*n)`
-/

namespace A026908.P4107806842104188674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026914 (2 * n)

end

end A026908.P4107806842104188674

namespace A026908

/-- `A026914(2*n)` -/
def P4107806842104188674.Spec : Prop :=
  ∀ n, P4107806842104188674.a n = A026908 n

end A026908

/-! ## A026908.P6948832395071767598

`record[A026914(n)^and(1, n+1)]`
-/

namespace A026908.P6948832395071767598
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026914 n ^ Nat.land 1 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026908.P6948832395071767598

namespace A026908

/-- `record[A026914(n)^and(1, n+1)]` -/
def P6948832395071767598.Spec : Prop :=
  ∀ n, P6948832395071767598.a n = A026908 n

end A026908

/-! ## A026908.P11390970338395781649

`record[A026914(A014681(n))]`
-/

namespace A026908.P11390970338395781649
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026914 (A014681 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026908.P11390970338395781649

namespace A026908

/-- `record[A026914(A014681(n))]` -/
def P11390970338395781649.Spec : Prop :=
  ∀ n, P11390970338395781649.a n = A026908 n

end A026908

/-! ## A026908.P9335911309156009675

`record[A026914(A129760(n+1))]`
-/

namespace A026908.P9335911309156009675
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026914 (A129760 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026908.P9335911309156009675

namespace A026908

/-- `record[A026914(A129760(n+1))]` -/
def P9335911309156009675.Spec : Prop :=
  ∀ n, P9335911309156009675.a n = A026908 n

end A026908

/-! ## A026908.P9702593199269038854

`record[A026914(A240828(n+1))]`
-/

namespace A026908.P9702593199269038854
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026914 (A240828 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026908.P9702593199269038854

namespace A026908

/-- `record[A026914(A240828(n+1))]` -/
def P9702593199269038854.Spec : Prop :=
  ∀ n, P9702593199269038854.a n = A026908 n

end A026908

/-! ## A026908.P17928598087803186186

`record[and(A026914(n+1), A033999(n))]`
-/

namespace A026908.P17928598087803186186
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A026914 (n + 1)) (A033999 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026908.P17928598087803186186

namespace A026908

/-- `record[and(A026914(n+1), A033999(n))]` -/
def P17928598087803186186.Spec : Prop :=
  ∀ n, P17928598087803186186.a n = A026908 n

end A026908

/-! ## A026908.P3140388087583680687

`or(A000007(n), A026914(A005843(n)))`
-/

namespace A026908.P3140388087583680687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A026914 (A005843 n).toNat)

end

end A026908.P3140388087583680687

namespace A026908

/-- `or(A000007(n), A026914(A005843(n)))` -/
def P3140388087583680687.Spec : Prop :=
  ∀ n, P3140388087583680687.a n = A026908 n

end A026908

/-! ## A026908.P14094497490333823491

`record[A026914(n)%A026912(A008619(n))]`
-/

namespace A026908.P14094497490333823491
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A026914 n) (A026912 (A008619 n).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026908.P14094497490333823491

namespace A026908

/-- `record[A026914(n)%A026912(A008619(n))]` -/
def P14094497490333823491.Spec : Prop :=
  ∀ n, P14094497490333823491.a n = A026908 n

end A026908

/-! ## A026908.P3727516567343353320

`A026914(A005843(n))%A041148(n)`
-/

namespace A026908.P3727516567343353320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A026914 (A005843 n).toNat) (A041148 n)

end

end A026908.P3727516567343353320

namespace A026908

/-- `A026914(A005843(n))%A041148(n)` -/
def P3727516567343353320.Spec : Prop :=
  ∀ n, P3727516567343353320.a n = A026908 n

end A026908

/-!
# A026909: a(n) = (1/2)*A026907(2*n, n).

The programs for A026909, the canonical program `A026909.P13565066395960821180` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A026909 has offset 1).

The definition of A026909 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A026909.P13565066395960821180

`(C(2*(n+1), n+1)+3*C(2*(n+1)+4, n+3)-18)/2`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A026909

/-- `(C(2*(n+1), n+1)+3*C(2*(n+1)+4, n+3)-18)/2` -/
def P13565066395960821180.Spec : Prop :=
  ∀ n, P13565066395960821180.a n = (A026909 (n + 1) : ℚ)

end A026909

/-! ## A026909.P11304707238294284568

`A026912(n+1)+9`
-/

namespace A026909.P11304707238294284568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026912 (n + 1) + 9

end

end A026909.P11304707238294284568

namespace A026909

/-- `A026912(n+1)+9` -/
def P11304707238294284568.Spec : Prop :=
  ∀ n, P11304707238294284568.a n = A026909 (n + 1)

end A026909

/-! ## A026909.P11035543315709070050

`A026914(2*n+1)+9`
-/

namespace A026909.P11035543315709070050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026914 (2 * n + 1) + 9

end

end A026909.P11035543315709070050

namespace A026909

/-- `A026914(2*n+1)+9` -/
def P11035543315709070050.Spec : Prop :=
  ∀ n, P11035543315709070050.a n = A026909 (n + 1)

end A026909

/-! ## A026909.P8423297794762381171

`A026908(n+1)/2`
-/

namespace A026909.P8423297794762381171
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A026908 (n + 1) : ℚ) / 2

end

end A026909.P8423297794762381171

namespace A026909

/-- `A026908(n+1)/2` -/
def P8423297794762381171.Spec : Prop :=
  ∀ n, P8423297794762381171.a n = (A026909 (n + 1) : ℚ)

end A026909

/-! ## A026909.P3512586700869451589

`A026914(n+2+n)/2`
-/

namespace A026909.P3512586700869451589
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A026914 (n + 2 + n) : ℚ) / 2

end

end A026909.P3512586700869451589

namespace A026909

/-- `A026914(n+2+n)/2` -/
def P3512586700869451589.Spec : Prop :=
  ∀ n, P3512586700869451589.a n = (A026909 (n + 1) : ℚ)

end A026909

/-! ## A026909.P7027192199999841346

`record[A026908(gcd(1-n, floor(n/2)))/2]`
-/

namespace A026909.P7027192199999841346
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A026908 (Int.gcd (1 - (n : ℤ)) ⌊(n : ℚ) / 2⌋) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026909.P7027192199999841346

namespace A026909

/-- `record[A026908(gcd(1-n, floor(n/2)))/2]` -/
def P7027192199999841346.Spec : Prop :=
  ∀ n, P7027192199999841346.a n = (A026909 (n + 1) : ℚ)

end A026909

/-! ## A026909.P16538044680823052441

`record[A026908(A291769(n))/2]`
-/

namespace A026909.P16538044680823052441
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A026908 (A291769 n).toNat : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026909.P16538044680823052441

namespace A026909

/-- `record[A026908(A291769(n))/2]` -/
def P16538044680823052441.Spec : Prop :=
  ∀ n, P16538044680823052441.a n = (A026909 (n + 1) : ℚ)

end A026909

/-! ## A026909.P8691969763796643583

`A026907(2*(n+1)²)+9`
-/

namespace A026909.P8691969763796643583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026907 (2 * (n + 1) ^ 2) + 9

end

end A026909.P8691969763796643583

namespace A026909

/-- `A026907(2*(n+1)²)+9` -/
def P8691969763796643583.Spec : Prop :=
  ∀ n, P8691969763796643583.a n = A026909 (n + 1)

end A026909

/-! ## A026909.P12161849012636424084

`A026907(∑[4*(n+1)])/2`
-/

namespace A026909.P12161849012636424084
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A026907 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ) / 2

end

end A026909.P12161849012636424084

namespace A026909

/-- `A026907(∑[4*(n+1)])/2` -/
def P12161849012636424084.Spec : Prop :=
  ∀ n, P12161849012636424084.a n = (A026909 (n + 1) : ℚ)

end A026909

/-!
# A026910: a(n) = A026907(2*n, n-1).

The programs for A026910, the canonical program `A026910.P3458568743824377604` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A026910 has offset 1).

The definition of A026910 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A026910.P3458568743824377604

`(n+1)*A000108(n+1)+3*(n+3)*A000108(n+3)-18`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A026910

/-- `(n+1)*A000108(n+1)+3*(n+3)*A000108(n+3)-18` -/
def P3458568743824377604.Spec : Prop :=
  ∀ n, P3458568743824377604.a n = A026910 (n + 1)

theorem P3458568743824377604.correct : P3458568743824377604.Spec := by
  intro n
  simp only [A026910, Nat.add_sub_cancel]

end A026910

/-! ## A026910.P11321938129758213017

`C(2*(n+1), n)+3*C(2*(n+1)+4, n+2)-18`
-/

namespace A026910.P11321938129758213017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (2 * (n + 1)) n + 3 * Nat.choose (2 * (n + 1) + 4) (n + 2) : ℤ) - 18

end

end A026910.P11321938129758213017

namespace A026910

/-- `C(2*(n+1), n)+3*C(2*(n+1)+4, n+2)-18` -/
def P11321938129758213017.Spec : Prop :=
  ∀ n, P11321938129758213017.a n = A026910 (n + 1)

end A026910

/-! ## A026910.P12717378043650463544

`A026907((n+1)²+(n+2)²)`
-/

namespace A026910.P12717378043650463544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026907 ((n + 1) ^ 2 + (n + 2) ^ 2)

end

end A026910.P12717378043650463544

namespace A026910

/-- `A026907((n+1)²+(n+2)²)` -/
def P12717378043650463544.Spec : Prop :=
  ∀ n, P12717378043650463544.a n = A026910 (n + 1)

end A026910

/-! ## A026910.P11653852757209060030

`A026907(A001844(n+1))+A000007(n+4)`
-/

namespace A026910.P11653852757209060030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026907 (A001844 (n + 1)).toNat + A000007 (n + 4)

end

end A026910.P11653852757209060030

namespace A026910

/-- `A026907(A001844(n+1))+A000007(n+4)` -/
def P11653852757209060030.Spec : Prop :=
  ∀ n, P11653852757209060030.a n = A026910 (n + 1)

end A026910

/-! ## A026910.P16060422364085975595

`A026907(A001844(n+1))%A259413(n+1)`
-/

namespace A026910.P16060422364085975595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A026907 (A001844 (n + 1)).toNat) (A259413 (n + 1))

end

end A026910.P16060422364085975595

namespace A026910

/-- `A026907(A001844(n+1))%A259413(n+1)` -/
def P16060422364085975595.Spec : Prop :=
  ∀ n, P16060422364085975595.a n = A026910 (n + 1)

end A026910

/-! ## A026910.P1959691330293994757

`A026907(A001844(n+1))*A045778(A106927(n+1))`
-/

namespace A026910.P1959691330293994757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026907 (A001844 (n + 1)).toNat * A045778 (A106927 (n + 1)).toNat

end

end A026910.P1959691330293994757

namespace A026910

/-- `A026907(A001844(n+1))*A045778(A106927(n+1))` -/
def P1959691330293994757.Spec : Prop :=
  ∀ n, P1959691330293994757.a n = A026910 (n + 1)

end A026910

/-!
# A026911: a(n) = A026907(2*n, n-2).

The programs for A026911, the canonical program `A026911.P4257522571079835920` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A026911 has offset 2).

The definition of A026911 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A026911.P4257522571079835920

`C(2*(n+2), n)+3*C(2*(n+2)+4, n+2)-18`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A026911

/-- `C(2*(n+2), n)+3*C(2*(n+2)+4, n+2)-18` -/
def P4257522571079835920.Spec : Prop :=
  ∀ n, P4257522571079835920.a n = A026911 (n + 2)

theorem P4257522571079835920.correct : P4257522571079835920.Spec := by
  intro n
  simp only [A026911, Nat.add_sub_cancel]

end A026911

/-! ## A026911.P882363947640375031

`A026907(A090288(n+1))`
-/

namespace A026911.P882363947640375031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026907 (A090288 (n + 1)).toNat

end

end A026911.P882363947640375031

namespace A026911

/-- `A026907(A090288(n+1))` -/
def P882363947640375031.Spec : Prop :=
  ∀ n, P882363947640375031.a n = A026911 (n + 2)

end A026911

/-! ## A026911.P12225402579664799759

`A026907(A051890(n+3))`
-/

namespace A026911.P12225402579664799759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026907 (A051890 (n + 3)).toNat

end

end A026911.P12225402579664799759

namespace A026911

/-- `A026907(A051890(n+3))` -/
def P12225402579664799759.Spec : Prop :=
  ∀ n, P12225402579664799759.a n = A026911 (n + 2)

end A026911

/-! ## A026911.P13043242586818432407

`A026907(eq[4, A114327(n)])`
-/

namespace A026911.P13043242586818432407
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114327 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026907 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A026911.P13043242586818432407

namespace A026911

/-- `A026907(eq[4, A114327(n)])` -/
def P13043242586818432407.Spec : Prop :=
  ∀ n, P13043242586818432407.a n = A026911 (n + 2)

end A026911

/-! ## A026911.P11294143600061508380

`A026907(A016825(∑[n+2]))`
-/

namespace A026911.P11294143600061508380
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026907 (A016825 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A026911.P11294143600061508380

namespace A026911

/-- `A026907(A016825(∑[n+2]))` -/
def P11294143600061508380.Spec : Prop :=
  ∀ n, P11294143600061508380.a n = A026911 (n + 2)

end A026911

/-! ## A026911.P11972521287926796859

`A026907(A001844(n+2)+1)`
-/

namespace A026911.P11972521287926796859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026907 (A001844 (n + 2) + 1).toNat

end

end A026911.P11972521287926796859

namespace A026911

/-- `A026907(A001844(n+2)+1)` -/
def P11972521287926796859.Spec : Prop :=
  ∀ n, P11972521287926796859.a n = A026911 (n + 2)

end A026911

/-!
# A026912: a(n) = A026907(2*n-1,n-1).

The programs for A026912, the canonical program `A026912.P14007031557952711941` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A026912 has offset 1).

The definition of A026912 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A026912.P14007031557952711941

`C(2*(n+1)-1, n)+3*C(2*(n+1)+3, n+2)-18`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A026912

/-- `C(2*(n+1)-1, n)+3*C(2*(n+1)+3, n+2)-18` -/
def P14007031557952711941.Spec : Prop :=
  ∀ n, P14007031557952711941.a n = A026912 (n + 1)

theorem P14007031557952711941.correct : P14007031557952711941.Spec := by
  intro n
  simp only [A026912, Nat.add_sub_cancel]

end A026912

/-! ## A026912.P10394583861066317651

`A026914(Δ[n²])`
-/

namespace A026912.P10394583861066317651
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026914 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A026912.P10394583861066317651

namespace A026912

/-- `A026914(Δ[n²])` -/
def P10394583861066317651.Spec : Prop :=
  ∀ n, P10394583861066317651.a n = A026912 (n + 1)

end A026912

/-! ## A026912.P4642052967013887732

`A026909(n+1)-9`
-/

namespace A026912.P4642052967013887732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026909 (n + 1) - 9

end

end A026912.P4642052967013887732

namespace A026912

/-- `A026909(n+1)-9` -/
def P4642052967013887732.Spec : Prop :=
  ∀ n, P4642052967013887732.a n = A026912 (n + 1)

end A026912

/-! ## A026912.P12809367271613613360

`lcm((-1)^n, A026914(2*n+1))`
-/

namespace A026912.P12809367271613613360
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((-1) ^ n) (A026914 (2 * n + 1))

end

end A026912.P12809367271613613360

namespace A026912

/-- `lcm((-1)^n, A026914(2*n+1))` -/
def P12809367271613613360.Spec : Prop :=
  ∀ n, (P12809367271613613360.a n : ℤ) = A026912 (n + 1)

end A026912

/-! ## A026912.P9386494968954630519

`record[A026914(A014681(n)+1)]`
-/

namespace A026912.P9386494968954630519
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026914 (A014681 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026912.P9386494968954630519

namespace A026912

/-- `record[A026914(A014681(n)+1)]` -/
def P9386494968954630519.Spec : Prop :=
  ∀ n, P9386494968954630519.a n = A026912 (n + 1)

end A026912

/-! ## A026912.P18194534194065009865

`record[A026914(A033999(n)+n)]`
-/

namespace A026912.P18194534194065009865
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026914 (A033999 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026912.P18194534194065009865

namespace A026912

/-- `record[A026914(A033999(n)+n)]` -/
def P18194534194065009865.Spec : Prop :=
  ∀ n, P18194534194065009865.a n = A026912 (n + 1)

end A026912

/-! ## A026912.P4698451254168537011

`record[A026914(A129760(n+1)+1)]`
-/

namespace A026912.P4698451254168537011
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026914 (A129760 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026912.P4698451254168537011

namespace A026912

/-- `record[A026914(A129760(n+1)+1)]` -/
def P4698451254168537011.Spec : Prop :=
  ∀ n, P4698451254168537011.a n = A026912 (n + 1)

end A026912

/-! ## A026912.P11599174471659641813

`record[A026914(A240828(n+1)+1)]`
-/

namespace A026912.P11599174471659641813
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026914 (A240828 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026912.P11599174471659641813

namespace A026912

/-- `record[A026914(A240828(n+1)+1)]` -/
def P11599174471659641813.Spec : Prop :=
  ∀ n, P11599174471659641813.a n = A026912 (n + 1)

end A026912

/-! ## A026912.P16635514297852978288

`or(A000007(n), A026914(A005843(n)+1))`
-/

namespace A026912.P16635514297852978288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A026914 (A005843 n + 1).toNat)

end

end A026912.P16635514297852978288

namespace A026912

/-- `or(A000007(n), A026914(A005843(n)+1))` -/
def P16635514297852978288.Spec : Prop :=
  ∀ n, P16635514297852978288.a n = A026912 (n + 1)

end A026912

/-! ## A026912.P17012282511806613058

`A008619(2*n+1)*A026914(2*n+1)/(n+1)`
-/

namespace A026912.P17012282511806613058
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008619 (2 * n + 1) * A026914 (2 * n + 1) : ℚ) / (n + 1 : ℚ)

end

end A026912.P17012282511806613058

namespace A026912

/-- `A008619(2*n+1)*A026914(2*n+1)/(n+1)` -/
def P17012282511806613058.Spec : Prop :=
  ∀ n, P17012282511806613058.a n = (A026912 (n + 1) : ℚ)

end A026912

/-!
# A026913: a(n) = T(2n-1,n-2), T given by A026907.

The programs for A026913, the canonical program `A026913.P12802025317078229759` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A026913 has offset 2).

The definition of A026913 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A026913.P12802025317078229759

`C(2*(n+2)-1, n)+3*C(2*(n+2)+3, n+2)-18`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A026913

/-- `C(2*(n+2)-1, n)+3*C(2*(n+2)+3, n+2)-18` -/
def P12802025317078229759.Spec : Prop :=
  ∀ n, P12802025317078229759.a n = A026913 (n + 2)

theorem P12802025317078229759.correct : P12802025317078229759.Spec := by
  intro n
  simp only [A026913, Nat.add_sub_cancel]

end A026913

/-! ## A026913.P4202325224719680768

`A026907(2*(n+1)*(n+3))`
-/

namespace A026913.P4202325224719680768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026907 (2 * ((n + 1) * (n + 3)))

end

end A026913.P4202325224719680768

namespace A026913

/-- `A026907(2*(n+1)*(n+3))` -/
def P4202325224719680768.Spec : Prop :=
  ∀ n, P4202325224719680768.a n = A026913 (n + 2)

end A026913

/-!
# A026914: a(n) = T(n,[ n/2 ]), T given by A026907.

The programs for A026914, the canonical program `A026914.P9469730090265091289` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A026914 has offset 0).

The definition of A026914 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A026914.P9469730090265091289

`C(n, floor(n/2))+3*C(n+4, floor(n/2)+2)-18`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A026914

/-- `C(n, floor(n/2))+3*C(n+4, floor(n/2)+2)-18` -/
def P9469730090265091289.Spec : Prop :=
  ∀ n, P9469730090265091289.a n = A026914 n

theorem P9469730090265091289.correct : P9469730090265091289.Spec := by
  intro n
  simp only [A026914]

end A026914

/-! ## A026914.P453382243278800264

`∪[A026912(n+1), A026908(n)]`
-/

namespace A026914.P453382243278800264
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026912 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026908 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A026914.P453382243278800264

namespace A026914

/-- `∪[A026912(n+1), A026908(n)]` -/
def P453382243278800264.Spec : Prop :=
  ∀ n, (P453382243278800264.a n : ℤ) = A026914 n

end A026914

/-! ## A026914.P15154750639502663648

`A026907(A194274(n))`
-/

namespace A026914.P15154750639502663648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026907 (A194274 n).toNat

end

end A026914.P15154750639502663648

namespace A026914

/-- `A026907(A194274(n))` -/
def P15154750639502663648.Spec : Prop :=
  ∀ n, P15154750639502663648.a n = A026914 n

end A026914

/-! ## A026914.P17027091647013110287

`A026907(record[A151890(n)])`
-/

namespace A026914.P17027091647013110287
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151890 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026907 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A026914.P17027091647013110287

namespace A026914

/-- `A026907(record[A151890(n)])` -/
def P17027091647013110287.Spec : Prop :=
  ∀ n, P17027091647013110287.a n = A026914 n

end A026914

/-! ## A026914.P6814854942038813392

`A026907(A007590(n+1))`
-/

namespace A026914.P6814854942038813392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026907 (A007590 (n + 1)).toNat

end

end A026914.P6814854942038813392

namespace A026914

/-- `A026907(A007590(n+1))` -/
def P6814854942038813392.Spec : Prop :=
  ∀ n, P6814854942038813392.a n = A026914 n

end A026914

/-! ## A026914.P14651781234111538565

`A026907(A000982(n)+n)`
-/

namespace A026914.P14651781234111538565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026907 (A000982 n + (n : ℤ)).toNat

end

end A026914.P14651781234111538565

namespace A026914

/-- `A026907(A000982(n)+n)` -/
def P14651781234111538565.Spec : Prop :=
  ∀ n, P14651781234111538565.a n = A026914 n

end A026914

/-! ## A026914.P5128402410039260761

`A026907(∑[∑[A010673(n)]])`
-/

namespace A026914.P5128402410039260761
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010673 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026907 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A026914.P5128402410039260761

namespace A026914

/-- `A026907(∑[∑[A010673(n)]])` -/
def P5128402410039260761.Spec : Prop :=
  ∀ n, P5128402410039260761.a n = A026914 n

end A026914

/-! ## A026914.P9897364553727188049

`A026907(∑[2*A110654(n)])`
-/

namespace A026914.P9897364553727188049
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A110654 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026907 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A026914.P9897364553727188049

namespace A026914

/-- `A026907(∑[2*A110654(n)])` -/
def P9897364553727188049.Spec : Prop :=
  ∀ n, P9897364553727188049.a n = A026914 n

end A026914

/-! ## A026914.P5775122046396529250

`A026907(A110654(n)+∑[n])`
-/

namespace A026914.P5775122046396529250
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026907 (A110654 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A026914.P5775122046396529250

namespace A026914

/-- `A026907(A110654(n)+∑[n])` -/
def P5775122046396529250.Spec : Prop :=
  ∀ n, P5775122046396529250.a n = A026914 n

end A026914

/-! ## A026914.P5037753120096505533

`A026907(eq[A114327(n)², A114327(n)])`
-/

namespace A026914.P5037753120096505533
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114327 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114327 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026907 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A026914.P5037753120096505533

namespace A026914

/-- `A026907(eq[A114327(n)², A114327(n)])` -/
def P5037753120096505533.Spec : Prop :=
  ∀ n, P5037753120096505533.a n = A026914 n

end A026914

/-! ## A026914.P4709742810365225309

`A026907(A004524(n²)+n)`
-/

namespace A026914.P4709742810365225309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026907 (A004524 (n ^ 2) + (n : ℤ)).toNat

end

end A026914.P4709742810365225309

namespace A026914

/-- `A026907(A004524(n²)+n)` -/
def P4709742810365225309.Spec : Prop :=
  ∀ n, P4709742810365225309.a n = A026914 n

end A026914

/-! ## A026914.P10860099420003866524

`A026907(A004526(n²)+n)`
-/

namespace A026914.P10860099420003866524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026907 (A004526 (n ^ 2) + (n : ℤ)).toNat

end

end A026914.P10860099420003866524

namespace A026914

/-- `A026907(A004526(n²)+n)` -/
def P10860099420003866524.Spec : Prop :=
  ∀ n, P10860099420003866524.a n = A026914 n

end A026914

/-!
# A026915: a(n) = T(n,0) + T(n,1) + ... + T(n,n), T given by A026907.

The programs for A026915, the canonical program `A026915.P15696605191339146608` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A026915 has offset 0).

The definition of A026915 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A026915.P15696605191339146608

`49*2^n-24*n-48`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A026915

/-- `49*2^n-24*n-48` -/
def P15696605191339146608.Spec : Prop :=
  ∀ n, P15696605191339146608.a n = A026915 n

theorem P15696605191339146608.correct : P15696605191339146608.Spec := by
  intro n
  simp only [A026915]

end A026915

/-! ## A026915.P3419387905866923911

`2*(a(n-1)+12*n)` with `a(0)=1`
-/

namespace A026915.P3419387905866923911
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  2 * (a (n - 1) + 12 * n)

end

end A026915.P3419387905866923911

namespace A026915

/-- `2*(a(n-1)+12*n)` -/
def P3419387905866923911.Spec : Prop :=
  ∀ n, (P3419387905866923911.a n : ℤ) = A026915 n

theorem P3419387905866923911.correct : P3419387905866923911.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A026915, Nat.add_sub_cancel, A026915.P3419387905866923911.a, A026915.P15696605191339146608.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A026915, Nat.add_sub_cancel, A026915.P3419387905866923911.a, A026915.P15696605191339146608.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A026915

/-! ## A026915.P4516481998634306442

`∑[A139698(n+1)-A131577(n)]`
-/

namespace A026915.P4516481998634306442
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139698 (n + 1) - A131577 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A026915.P4516481998634306442

namespace A026915

/-- `∑[A139698(n+1)-A131577(n)]` -/
def P4516481998634306442.Spec : Prop :=
  ∀ n, P4516481998634306442.a n = A026915 n

end A026915

/-! ## A026915.P5797537386632527482

`A004277(a(n-1)+12*n)` with `a(0)=1`
-/

namespace A026915.P5797537386632527482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A004277 (a (n - 1) + (12 * n : ℤ)).toNat

end

end A026915.P5797537386632527482

namespace A026915

/-- `A004277(a(n-1)+12*n)` -/
def P5797537386632527482.Spec : Prop :=
  ∀ n, P5797537386632527482.a n = A026915 n

end A026915

/-! ## A026915.P11252457746249149095

`A005843(a(n-1)+12*n)` with `a(0)=1`
-/

namespace A026915.P11252457746249149095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A005843 (a (n - 1) + (12 * n : ℤ)).toNat

end

end A026915.P11252457746249149095

namespace A026915

/-- `A005843(a(n-1)+12*n)` -/
def P11252457746249149095.Spec : Prop :=
  ∀ n, P11252457746249149095.a n = A026915 n

end A026915

/-!
# A026916: a(n) = T(n,0) + T(n,1) + ... + T(n,[ n/2 ]), T given by A026907.

The programs for A026916, there is no canonical definition to state claims against.
-/

/-! ## A026916.P12794627279967760092

`A126697(A191117(n+1))-∑{d}[n+1, #]`
-/

namespace A026916.P12794627279967760092
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126697 (A191117 (n + 1)).toNat - ((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℤ)

end

end A026916.P12794627279967760092

/-!
# A026917: a(n) = Sum{T(i,j)}, 0<=j<=i, 0<=i<=n, T given by A026907.

The programs for A026917, the canonical program `A026917.P17953961864262288015` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A026917 has offset 0).

The definition of A026917 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A026917.P17953961864262288015

`98*2^n-12*n²-60*n-97`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A026917

/-- `98*2^n-12*n²-60*n-97` -/
def P17953961864262288015.Spec : Prop :=
  ∀ n, P17953961864262288015.a n = A026917 n

theorem P17953961864262288015.correct : P17953961864262288015.Spec := by
  intro n
  simp only [A026917]

end A026917

/-! ## A026917.P5117995752388794600

`∑[2*(a(n-1)+12*n)]` with `a(0)=1`
-/

namespace A026917.P5117995752388794600
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  2 * (f1 (n - 1) + 12 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A026917.P5117995752388794600

namespace A026917

/-- `∑[2*(a(n-1)+12*n)]` -/
def P5117995752388794600.Spec : Prop :=
  ∀ n, (P5117995752388794600.a n : ℤ) = A026917 n

end A026917

/-! ## A026917.P8969094864691675295

`∑[A026915(n)]`
-/

namespace A026917.P8969094864691675295
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026915 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A026917.P8969094864691675295

namespace A026917

/-- `∑[A026915(n)]` -/
def P8969094864691675295.Spec : Prop :=
  ∀ n, P8969094864691675295.a n = A026917 n

end A026917

/-! ## A026917.P5604487713751100471

`∑[∑[A139698(n+1)]-A000225(n)]`
-/

namespace A026917.P5604487713751100471
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139698 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A000225 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A026917.P5604487713751100471

namespace A026917

/-- `∑[∑[A139698(n+1)]-A000225(n)]` -/
def P5604487713751100471.Spec : Prop :=
  ∀ n, P5604487713751100471.a n = A026917 n

end A026917

/-! ## A026917.P14515413831650494809

`∑[∑[A139698(n+1)-A131577(n)]]`
-/

namespace A026917.P14515413831650494809
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139698 (n + 1) - A131577 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A026917.P14515413831650494809

namespace A026917

/-- `∑[∑[A139698(n+1)-A131577(n)]]` -/
def P14515413831650494809.Spec : Prop :=
  ∀ n, P14515413831650494809.a n = A026917 n

end A026917

/-! ## A026917.P14702087864913842043

`∑[A000079(n)+∑[24*A000225(n)]]`
-/

namespace A026917.P14702087864913842043
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  24 * A000225 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n + ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A026917.P14702087864913842043

namespace A026917

/-- `∑[A000079(n)+∑[24*A000225(n)]]` -/
def P14702087864913842043.Spec : Prop :=
  ∀ n, P14702087864913842043.a n = A026917 n

end A026917

/-!
# A026918: Sum{T(n-k,k)}, 0<=k<=[ n/2 ], T given by A026907.

The programs for A026918, there is no canonical definition to state claims against.
-/

/-! ## A026918.P16934009212392321156

`A345436(A003215(n))+A027642(n)`
-/

namespace A026918.P16934009212392321156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345436 (A003215 n).toNat + A027642 n

end

end A026918.P16934009212392321156

/-!
# A026920: Triangular array O by rows: O(n,k) = number of partitions of n into an odd number of parts, the greatest being k.

The programs for A026920, there is no canonical definition to state claims against.
-/

/-! ## A026920.P11585776852558087380

`A008284(n+1)-A026921(n+1)`
-/

namespace A026920.P11585776852558087380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008284 (n + 1) - A026921 (n + 1)

end

end A026920.P11585776852558087380

/-! ## A026920.P8182527028744580675

`A106254(A122797(n+1))-A026921(n+1)`
-/

namespace A026920.P8182527028744580675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106254 (A122797 (n + 1)).toNat - A026921 (n + 1)

end

end A026920.P8182527028744580675

/-! ## A026920.P8580823574715478053

`A072233(A014132(n+1))-A026921(n+1)`
-/

namespace A026920.P8580823574715478053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072233 (A014132 (n + 1)).toNat - A026921 (n + 1)

end

end A026920.P8580823574715478053

/-! ## A026920.P9228359986620934127

`A058398(A038722(n+1))-A026921(n+1)`
-/

namespace A026920.P9228359986620934127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058398 (A038722 (n + 1)).toNat - A026921 (n + 1)

end

end A026920.P9228359986620934127

/-! ## A026920.P13737702360885076487

`A058398(A278818(n))-A026921(n+1)`
-/

namespace A026920.P13737702360885076487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058398 (A278818 n).toNat - A026921 (n + 1)

end

end A026920.P13737702360885076487

/-!
# A026921: Triangular array E by rows: E(n,k) = number of partitions of n into an even number of parts, the greatest being k.

The programs for A026921, there is no canonical definition to state claims against.
-/

/-! ## A026921.P4727775271365891419

`A008284(n+1)-A026920(n+1)`
-/

namespace A026921.P4727775271365891419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008284 (n + 1) - A026920 (n + 1)

end

end A026921.P4727775271365891419

/-! ## A026921.P15773077948719542499

`A106254(A122797(n+1))-A026920(n+1)`
-/

namespace A026921.P15773077948719542499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106254 (A122797 (n + 1)).toNat - A026920 (n + 1)

end

end A026921.P15773077948719542499

/-! ## A026921.P10225374351163353421

`A072233(∑[A035214(n)])-A026920(n+1)`
-/

namespace A026921.P10225374351163353421
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035214 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072233 (∑ j ∈ Finset.range (n + 1), f1 j).toNat - A026920 (n + 1)

end

end A026921.P10225374351163353421

/-! ## A026921.P15900218936574783113

`A072233(A014132(n+1))-A026920(n+1)`
-/

namespace A026921.P15900218936574783113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072233 (A014132 (n + 1)).toNat - A026920 (n + 1)

end

end A026921.P15900218936574783113

/-! ## A026921.P4947167692019026406

`A058398(A038722(n+1))-A026920(n+1)`
-/

namespace A026921.P4947167692019026406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058398 (A038722 (n + 1)).toNat - A026920 (n + 1)

end

end A026921.P4947167692019026406

/-! ## A026921.P512881971724401244

`A058398(A002024(n+1)²-n)-A026920(n+1)`
-/

namespace A026921.P512881971724401244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058398 (A002024 (n + 1) ^ 2 - (n : ℤ)).toNat - A026920 (n + 1)

end

end A026921.P512881971724401244

/-! ## A026921.P10771291484396509257

`A058398(A278818(n))-A026920(n+1)`
-/

namespace A026921.P10771291484396509257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058398 (A278818 n).toNat - A026920 (n + 1)

end

end A026921.P10771291484396509257

/-!
# A026922: Number of partitions of n into an odd number of parts, the greatest being 2; also, a(n+3) = number of partitions of n+1 into an even number of parts, each <=2.

The programs for A026922, the canonical program `A026922.P5306038030210758045` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A026922 has offset 1).

The definition of A026922 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A026922.P5306038030210758045

`a(n-1)+a(n-4)-a(n-5)` with `a(0)=0, a(1)=1, a(2)=0, a(3)=1, a(4)=1`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A026922

/-- `a(n-1)+a(n-4)-a(n-5)` -/
def P5306038030210758045.Spec : Prop :=
  ∀ n, P5306038030210758045.a n = A026922 (n + 1)

theorem P5306038030210758045.correct : P5306038030210758045.Spec := by
  intro n
  simp only [A026922, Nat.add_sub_cancel]

end A026922

/-! ## A026922.P17165740765455579003

`Δ[round(n²/8)]`
-/

namespace A026922.P17165740765455579003
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n ^ 2 : ℚ) / 8)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A026922.P17165740765455579003

namespace A026922

/-- `Δ[round(n²/8)]` -/
def P17165740765455579003.Spec : Prop :=
  ∀ n, P17165740765455579003.a n = A026922 (n + 1)

end A026922

/-! ## A026922.P2084969830477607962

`ceil(and(n, -3)/4)`
-/

namespace A026922.P2084969830477607962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Int.land (n : ℤ) (-3) : ℚ) / 4⌉

end

end A026922.P2084969830477607962

namespace A026922

/-- `ceil(and(n, -3)/4)` -/
def P2084969830477607962.Spec : Prop :=
  ∀ n, P2084969830477607962.a n = A026922 (n + 1)

end A026922

/-! ## A026922.P15400979579098201757

`floor((or(2, n)+1)/4)`
-/

namespace A026922.P15400979579098201757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.lor 2 n + 1 : ℚ) / 4⌋

end

end A026922.P15400979579098201757

namespace A026922

/-- `floor((or(2, n)+1)/4)` -/
def P15400979579098201757.Spec : Prop :=
  ∀ n, P15400979579098201757.a n = A026922 (n + 1)

end A026922

/-! ## A026922.P16337291259908609096

`ceil(xor(1, n-1)/4)`
-/

namespace A026922.P16337291259908609096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Int.xor 1 ((n : ℤ) - 1) : ℚ) / 4⌉

end

end A026922.P16337291259908609096

namespace A026922

/-- `ceil(xor(1, n-1)/4)` -/
def P16337291259908609096.Spec : Prop :=
  ∀ n, P16337291259908609096.a n = A026922 (n + 1)

end A026922

/-! ## A026922.P16718992861737424108

`round((or(2, n)-1)/4)`
-/

namespace A026922.P16718992861737424108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((Nat.lor 2 n : ℤ) - 1 : ℚ) / 4)

end

end A026922.P16718992861737424108

namespace A026922

/-- `round((or(2, n)-1)/4)` -/
def P16718992861737424108.Spec : Prop :=
  ∀ n, P16718992861737424108.a n = A026922 (n + 1)

end A026922

/-! ## A026922.P4002341286724081250

`ceil((or(2, n)-2)/4)`
-/

namespace A026922.P4002341286724081250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((Nat.lor 2 n : ℤ) - 2 : ℚ) / 4⌉

end

end A026922.P4002341286724081250

namespace A026922

/-- `ceil((or(2, n)-2)/4)` -/
def P4002341286724081250.Spec : Prop :=
  ∀ n, P4002341286724081250.a n = A026922 (n + 1)

end A026922

/-! ## A026922.P4590265354441842309

`floor(n%2+n/4)`
-/

namespace A026922.P4590265354441842309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((n % 2 : ℕ) : ℚ) + (n : ℚ) / 4⌋

end

end A026922.P4590265354441842309

namespace A026922

/-- `floor(n%2+n/4)` -/
def P4590265354441842309.Spec : Prop :=
  ∀ n, P4590265354441842309.a n = A026922 (n + 1)

end A026922

/-! ## A026922.P873553001269582925

`floor(and(1, n)+n/4)`
-/

namespace A026922.P873553001269582925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.land 1 n : ℚ) + (n : ℚ) / 4⌋

end

end A026922.P873553001269582925

namespace A026922

/-- `floor(and(1, n)+n/4)` -/
def P873553001269582925.Spec : Prop :=
  ∀ n, P873553001269582925.a n = A026922 (n + 1)

end A026922

/-! ## A026922.P14484325135942054759

`ceil((n-and(2, n))/4)`
-/

namespace A026922.P14484325135942054759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((n : ℤ) - (Nat.land 2 n : ℤ) : ℚ) / 4⌉

end

end A026922.P14484325135942054759

namespace A026922

/-- `ceil((n-and(2, n))/4)` -/
def P14484325135942054759.Spec : Prop :=
  ∀ n, P14484325135942054759.a n = A026922 (n + 1)

end A026922

/-! ## A026922.P3854754198528228199

`round(-(xor(1, -n)/4))`
-/

namespace A026922.P3854754198528228199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (-((Int.xor 1 (-(n : ℤ)) : ℚ) / 4))

end

end A026922.P3854754198528228199

namespace A026922

/-- `round(-(xor(1, -n)/4))` -/
def P3854754198528228199.Spec : Prop :=
  ∀ n, P3854754198528228199.a n = A026922 (n + 1)

end A026922

/-! ## A026922.P14852688582929467116

`∑[round(cos(gcd(4, n+2)))]`
-/

namespace A026922.P14852688582929467116
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.cos (Nat.gcd 4 (n + 2) : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A026922.P14852688582929467116

namespace A026922

/-- `∑[round(cos(gcd(4, n+2)))]` -/
def P14852688582929467116.Spec : Prop :=
  ∀ n, P14852688582929467116.a n = A026922 (n + 1)

end A026922

/-! ## A026922.P3235621150803648806

`a(n-4)+1` with `a(0)=0, a(1)=1, a(2)=0, a(3)=1`
-/

namespace A026922.P3235621150803648806
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 0, 1] fun n a =>
  a (n - 4) + 1

end

end A026922.P3235621150803648806

namespace A026922

/-- `a(n-4)+1` -/
def P3235621150803648806.Spec : Prop :=
  ∀ n, (P3235621150803648806.a n : ℤ) = A026922 (n + 1)

end A026922

/-! ## A026922.P9413439430397785112

`floor((xor(1, n+1)+1)/4)`
-/

namespace A026922.P9413439430397785112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.xor 1 (n + 1) + 1 : ℚ) / 4⌋

end

end A026922.P9413439430397785112

namespace A026922

/-- `floor((xor(1, n+1)+1)/4)` -/
def P9413439430397785112.Spec : Prop :=
  ∀ n, P9413439430397785112.a n = A026922 (n + 1)

end A026922

/-! ## A026922.P9240623686450794537

`round((xor(1, n+1)-1)/4)`
-/

namespace A026922.P9240623686450794537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((Nat.xor 1 (n + 1) : ℤ) - 1 : ℚ) / 4)

end

end A026922.P9240623686450794537

namespace A026922

/-- `round((xor(1, n+1)-1)/4)` -/
def P9240623686450794537.Spec : Prop :=
  ∀ n, P9240623686450794537.a n = A026922 (n + 1)

end A026922

/-! ## A026922.P412130389060446530

`floor(n/4+2-gcd(2, n))`
-/

namespace A026922.P412130389060446530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 4 + (2 - (Nat.gcd 2 n : ℤ) : ℚ)⌋

end

end A026922.P412130389060446530

namespace A026922

/-- `floor(n/4+2-gcd(2, n))` -/
def P412130389060446530.Spec : Prop :=
  ∀ n, P412130389060446530.a n = A026922 (n + 1)

end A026922

/-! ## A026922.P4791191805044551050

`round((1-and(2, n)+n)/4)`
-/

namespace A026922.P4791191805044551050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((1 - (Nat.land 2 n : ℤ) + (n : ℤ) : ℚ) / 4)

end

end A026922.P4791191805044551050

namespace A026922

/-- `round((1-and(2, n)+n)/4)` -/
def P4791191805044551050.Spec : Prop :=
  ∀ n, P4791191805044551050.a n = A026922 (n + 1)

end A026922

/-! ## A026922.P4761042676791933283

`round((2*n-xor(1, n))/4)`
-/

namespace A026922.P4761042676791933283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((2 * n : ℤ) - (Nat.xor 1 n : ℤ) : ℚ) / 4)

end

end A026922.P4761042676791933283

namespace A026922

/-- `round((2*n-xor(1, n))/4)` -/
def P4761042676791933283.Spec : Prop :=
  ∀ n, P4761042676791933283.a n = A026922 (n + 1)

end A026922

/-! ## A026922.P565985424888942213

`-floor(-(xor(1, n-1)/4))`
-/

namespace A026922.P565985424888942213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -⌊-((Int.xor 1 ((n : ℤ) - 1) : ℚ) / 4)⌋

end

end A026922.P565985424888942213

namespace A026922

/-- `-floor(-(xor(1, n-1)/4))` -/
def P565985424888942213.Spec : Prop :=
  ∀ n, P565985424888942213.a n = A026922 (n + 1)

end A026922

/-! ## A026922.P4003098759590294844

`-ceil(xor(1, -(n+2))/4)`
-/

namespace A026922.P4003098759590294844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -⌈(Int.xor 1 (-(n + 2 : ℤ)) : ℚ) / 4⌉

end

end A026922.P4003098759590294844

namespace A026922

/-- `-ceil(xor(1, -(n+2))/4)` -/
def P4003098759590294844.Spec : Prop :=
  ∀ n, P4003098759590294844.a n = A026922 (n + 1)

end A026922

/-!
# A026923: Number of partitions of n into an odd number of parts, the greatest being 3; also, a(n+5) = number of partitions of n+2 into an even number of parts, each <= 3.

The programs for A026923, the canonical program `A026923.P15473336771321964132` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A026923 has offset 1).

The definition of A026923 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A026923.P15759503902930987962

`A069905(n+1)-A026927(n+1)`
-/

namespace A026923.P15759503902930987962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069905 (n + 1) - A026927 (n + 1)

end

end A026923.P15759503902930987962

namespace A026923

/-- `A069905(n+1)-A026927(n+1)` -/
def P15759503902930987962.Spec : Prop :=
  ∀ n, P15759503902930987962.a n = A026923 (n + 1)

end A026923

/-! ## A026923.P15473336771321964132

`A005044(n+1)+A005044(A109613(n)-1)`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A026923

/-- `A005044(n+1)+A005044(A109613(n)-1)` -/
def P15473336771321964132.Spec : Prop :=
  ∀ n, P15473336771321964132.a n = A026923 (n + 1)

theorem P15473336771321964132.correct : P15473336771321964132.Spec := by
  intro n
  simp only [A026923, Nat.add_sub_cancel]

end A026923

/-! ## A026923.P9457355183884340381

`A005044(n+1)+A005044(n-A000035(n))`
-/

namespace A026923.P9457355183884340381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005044 (n + 1) + A005044 ((n : ℤ) - A000035 n).toNat

end

end A026923.P9457355183884340381

namespace A026923

/-- `A005044(n+1)+A005044(n-A000035(n))` -/
def P9457355183884340381.Spec : Prop :=
  ∀ n, P9457355183884340381.a n = A026923 (n + 1)

end A026923

/-! ## A026923.P15249285504499075394

`A182079(n+1)-∑[A002265(n+1)]`
-/

namespace A026923.P15249285504499075394
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182079 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A026923.P15249285504499075394

namespace A026923

/-- `A182079(n+1)-∑[A002265(n+1)]` -/
def P15249285504499075394.Spec : Prop :=
  ∀ n, P15249285504499075394.a n = A026923 (n + 1)

end A026923

/-! ## A026923.P6151529221217293379

`A309683(n+1)+A309685(n)-A309687(n)`
-/

namespace A026923.P6151529221217293379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309683 (n + 1) + (A309685 n - A309687 n)

end

end A026923.P6151529221217293379

namespace A026923

/-- `A309683(n+1)+A309685(n)-A309687(n)` -/
def P6151529221217293379.Spec : Prop :=
  ∀ n, P6151529221217293379.a n = A026923 (n + 1)

end A026923

/-! ## A026923.P2094373822015380457

`A309683(n+1)+A309689(n)-A309683(n)`
-/

namespace A026923.P2094373822015380457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309683 (n + 1) + (A309689 n - A309683 n)

end

end A026923.P2094373822015380457

namespace A026923

/-- `A309683(n+1)+A309689(n)-A309683(n)` -/
def P2094373822015380457.Spec : Prop :=
  ∀ n, P2094373822015380457.a n = A026923 (n + 1)

end A026923

/-! ## A026923.P2327518230354314871

`A309683(n+1)+A309685(n+1)-A026927(n+1)`
-/

namespace A026923.P2327518230354314871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309683 (n + 1) + (A309685 (n + 1) - A026927 (n + 1))

end

end A026923.P2327518230354314871

namespace A026923

/-- `A309683(n+1)+A309685(n+1)-A026927(n+1)` -/
def P2327518230354314871.Spec : Prop :=
  ∀ n, P2327518230354314871.a n = A026923 (n + 1)

end A026923

/-! ## A026923.P16735004874397378440

`A026927(A065168(n+1))`
-/

namespace A026923.P16735004874397378440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026927 (A065168 (n + 1)).toNat

end

end A026923.P16735004874397378440

namespace A026923

/-- `A026927(A065168(n+1))` -/
def P16735004874397378440.Spec : Prop :=
  ∀ n, P16735004874397378440.a n = A026923 (n + 1)

end A026923

/-! ## A026923.P10623878300591635840

`A005044(A004524(2*n))+A005044(n+1)`
-/

namespace A026923.P10623878300591635840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005044 (A004524 (2 * n)).toNat + A005044 (n + 1)

end

end A026923.P10623878300591635840

namespace A026923

/-- `A005044(A004524(2*n))+A005044(n+1)` -/
def P10623878300591635840.Spec : Prop :=
  ∀ n, P10623878300591635840.a n = A026923 (n + 1)

end A026923

/-! ## A026923.P7499037869393383815

`A069905(A008615(3*n))+A005044(n+1)`
-/

namespace A026923.P7499037869393383815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069905 (A008615 (3 * n)).toNat + A005044 (n + 1)

end

end A026923.P7499037869393383815

namespace A026923

/-- `A069905(A008615(3*n))+A005044(n+1)` -/
def P7499037869393383815.Spec : Prop :=
  ∀ n, P7499037869393383815.a n = A026923 (n + 1)

end A026923

/-! ## A026923.P8129754390866117607

`A025902(A092242(n+1))`
-/

namespace A026923.P8129754390866117607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025902 (A092242 (n + 1)).toNat

end

end A026923.P8129754390866117607

namespace A026923

/-- `A025902(A092242(n+1))` -/
def P8129754390866117607.Spec : Prop :=
  ∀ n, P8129754390866117607.a n = A026923 (n + 1)

end A026923

/-! ## A026923.P2068399475993128388

`A004526(A004526(A004526(A267489(A014681(n+1)))))`
-/

namespace A026923.P2068399475993128388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A004526 (A004526 (A267489 (A014681 (n + 1)).toNat).toNat).toNat).toNat

end

end A026923.P2068399475993128388

namespace A026923

/-- `A004526(A004526(A004526(A267489(A014681(n+1)))))` -/
def P2068399475993128388.Spec : Prop :=
  ∀ n, P2068399475993128388.a n = A026923 (n + 1)

end A026923

/-!
# A026924: Number of partitions of n into an odd number of parts, the greatest being 4; also, a(n+7) = number of partitions of n+3 into an even number of parts, each <=4.

The programs for A026924, there is no canonical definition to state claims against.
-/

/-! ## A026924.P16479443913315582297

`∑[A005044(n)]-A026928(n+1)`
-/

namespace A026924.P16479443913315582297
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005044 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A026928 (n + 1)

end

end A026924.P16479443913315582297

/-! ## A026924.P8147784005644386923

`A026810(n+1)-A026928(n+1)`
-/

namespace A026924.P8147784005644386923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026810 (n + 1) - A026928 (n + 1)

end

end A026924.P8147784005644386923

/-! ## A026924.P13718393116927392179

`A309795(n)+Δ[A309712(n)]`
-/

namespace A026924.P13718393116927392179
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309712 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309795 n + (f1 (n + 1) - f1 n)

end

end A026924.P13718393116927392179

/-! ## A026924.P2281173051435274332

`A309795(n)+Δ[A026810(n)-A309715(n)]`
-/

namespace A026924.P2281173051435274332
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026810 n - A309715 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309795 n + (f1 (n + 1) - f1 n)

end

end A026924.P2281173051435274332

/-! ## A026924.P17991738354435695160

`A309793(n+1)+A309795(n+1)-A026928(n+1)`
-/

namespace A026924.P17991738354435695160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309793 (n + 1) + (A309795 (n + 1) - A026928 (n + 1))

end

end A026924.P17991738354435695160

/-! ## A026924.P8947163957557656893

`A026920(A179865(n+1)+4)`
-/

namespace A026924.P8947163957557656893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026920 (A179865 (n + 1) + 4).toNat

end

end A026924.P8947163957557656893

/-! ## A026924.P2093484729817421977

`A026920(A133263(n)-A028310(n)+n+2)`
-/

namespace A026924.P2093484729817421977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026920 (A133263 n - A028310 n + (n + 2 : ℤ)).toNat

end

end A026924.P2093484729817421977

/-!
# A026925: Number of partitions of n into an odd number of parts, the greatest being 5; also, a(n+9) = number of partitions of n+4 into an even number of parts, each <=5.

The programs for A026925, there is no canonical definition to state claims against.
-/

/-! ## A026925.P5358499172913344345

`A026811(n+1)-A026929(n+1)`
-/

namespace A026925.P5358499172913344345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026811 (n + 1) - A026929 (n + 1)

end

end A026925.P5358499172913344345

/-! ## A026925.P11531678061262831191

`A001401(n)-(A026929(n+1)+A008669(n))`
-/

namespace A026925.P11531678061262831191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001401 n - (A026929 (n + 1) + A008669 n)

end

end A026925.P11531678061262831191

/-! ## A026925.P13797676305225352306

`A288166(A113127(n)+1)-A026929(n+1)`
-/

namespace A026925.P13797676305225352306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288166 (A113127 n + 1).toNat - A026929 (n + 1)

end

end A026925.P13797676305225352306

/-! ## A026925.P16051539886379929658

`A026811(n+1)-A026921(A077169(n)+n)`
-/

namespace A026925.P16051539886379929658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026811 (n + 1) - A026921 (A077169 n + (n : ℤ)).toNat

end

end A026925.P16051539886379929658

/-! ## A026925.P9719938642672213305

`A026811(n+1)-A026921(A210032(n+1)+A000217(n))`
-/

namespace A026925.P9719938642672213305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026811 (n + 1) - A026921 (A210032 (n + 1) + A000217 n).toNat

end

end A026925.P9719938642672213305

/-!
# A026927: Number of partitions of n into an even number of parts, the greatest being 3; also, a(n+5) = number of partitions of n+2 into an odd number of parts, each <= 3.

The programs for A026927, the canonical program `A026927.P6487270754321091837` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A026927 has offset 1).

The definition of A026927 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A026927.P6487270754321091837

`∑[A008615(n)]-A026923(n+1)`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A026927

/-- `∑[A008615(n)]-A026923(n+1)` -/
def P6487270754321091837.Spec : Prop :=
  ∀ n, P6487270754321091837.a n = A026927 (n + 1)

theorem P6487270754321091837.correct : P6487270754321091837.Spec := by
  intro n
  simp only [A026927, Nat.add_sub_cancel]

end A026927

/-! ## A026927.P3562981935369779341

`A069905(n+1)-A026923(n+1)`
-/

namespace A026927.P3562981935369779341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069905 (n + 1) - A026923 (n + 1)

end

end A026927.P3562981935369779341

namespace A026927

/-- `A069905(n+1)-A026923(n+1)` -/
def P3562981935369779341.Spec : Prop :=
  ∀ n, P3562981935369779341.a n = A026927 (n + 1)

end A026927

/-! ## A026927.P15090730576833825790

`A026923(A065164(n+1))`
-/

namespace A026927.P15090730576833825790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026923 (A065164 (n + 1)).toNat

end

end A026927.P15090730576833825790

namespace A026927

/-- `A026923(A065164(n+1))` -/
def P15090730576833825790.Spec : Prop :=
  ∀ n, P15090730576833825790.a n = A026927 (n + 1)

end A026927

/-! ## A026927.P11111415435162333693

`floor(A036410(A014681(n))/2)`
-/

namespace A026927.P11111415435162333693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A036410 (A014681 n).toNat : ℚ) / 2⌋

end

end A026927.P11111415435162333693

namespace A026927

/-- `floor(A036410(A014681(n))/2)` -/
def P11111415435162333693.Spec : Prop :=
  ∀ n, P11111415435162333693.a n = A026927 (n + 1)

end A026927

/-! ## A026927.P8692567060194305445

`A309687(n)+Δ[A309685(n)]`
-/

namespace A026927.P8692567060194305445
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309685 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309687 n + (f1 (n + 1) - f1 n)

end

end A026927.P8692567060194305445

namespace A026927

/-- `A309687(n)+Δ[A309685(n)]` -/
def P8692567060194305445.Spec : Prop :=
  ∀ n, P8692567060194305445.a n = A026927 (n + 1)

end A026927

/-! ## A026927.P6450844116007096531

`A309685(n+1)+A309683(n)-A309689(n)`
-/

namespace A026927.P6450844116007096531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309685 (n + 1) + (A309683 n - A309689 n)

end

end A026927.P6450844116007096531

namespace A026927

/-- `A309685(n+1)+A309683(n)-A309689(n)` -/
def P6450844116007096531.Spec : Prop :=
  ∀ n, P6450844116007096531.a n = A026927 (n + 1)

end A026927

/-! ## A026927.P17251175919955686890

`A309685(n+1)+A309687(n)-A309685(n)`
-/

namespace A026927.P17251175919955686890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309685 (n + 1) + (A309687 n - A309685 n)

end

end A026927.P17251175919955686890

namespace A026927

/-- `A309685(n+1)+A309687(n)-A309685(n)` -/
def P17251175919955686890.Spec : Prop :=
  ∀ n, P17251175919955686890.a n = A026927 (n + 1)

end A026927

/-! ## A026927.P7285906776690200841

`A309683(n+1)+A309685(n+1)-A026923(n+1)`
-/

namespace A026927.P7285906776690200841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309683 (n + 1) + (A309685 (n + 1) - A026923 (n + 1))

end

end A026927.P7285906776690200841

namespace A026927

/-- `A309683(n+1)+A309685(n+1)-A026923(n+1)` -/
def P7285906776690200841.Spec : Prop :=
  ∀ n, P7285906776690200841.a n = A026927 (n + 1)

end A026927

/-! ## A026927.P2003220751393716588

`A026923(n+4)-A026922(n+3)`
-/

namespace A026927.P2003220751393716588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026923 (n + 4) - A026922 (n + 3)

end

end A026927.P2003220751393716588

namespace A026927

/-- `A026923(n+4)-A026922(n+3)` -/
def P2003220751393716588.Spec : Prop :=
  ∀ n, P2003220751393716588.a n = A026927 (n + 1)

end A026927

/-! ## A026927.P3479532317898078146

`A130519(n+1)-A000212(A002265(2*n))`
-/

namespace A026927.P3479532317898078146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130519 (n + 1) - A000212 (A002265 (2 * n)).toNat

end

end A026927.P3479532317898078146

namespace A026927

/-- `A130519(n+1)-A000212(A002265(2*n))` -/
def P3479532317898078146.Spec : Prop :=
  ∀ n, P3479532317898078146.a n = A026927 (n + 1)

end A026927

/-! ## A026927.P791042419100731600

`A025902(A146512(n+1))`
-/

namespace A026927.P791042419100731600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025902 (A146512 (n + 1)).toNat

end

end A026927.P791042419100731600

namespace A026927

/-- `A025902(A146512(n+1))` -/
def P791042419100731600.Spec : Prop :=
  ∀ n, P791042419100731600.a n = A026927 (n + 1)

end A026927

/-! ## A026927.P1103261856986906205

`A025902(A091998(n+1))`
-/

namespace A026927.P1103261856986906205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025902 (A091998 (n + 1)).toNat

end

end A026927.P1103261856986906205

namespace A026927

/-- `A025902(A091998(n+1))` -/
def P1103261856986906205.Spec : Prop :=
  ∀ n, P1103261856986906205.a n = A026927 (n + 1)

end A026927

/-! ## A026927.P4466003636293280618

`A004526(A036410(A014681(n)))`
-/

namespace A026927.P4466003636293280618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A036410 (A014681 n).toNat).toNat

end

end A026927.P4466003636293280618

namespace A026927

/-- `A004526(A036410(A014681(n)))` -/
def P4466003636293280618.Spec : Prop :=
  ∀ n, P4466003636293280618.a n = A026927 (n + 1)

end A026927

/-! ## A026927.P6506879931077412434

`A004525(A008724(A065190(n+1)))`
-/

namespace A026927.P6506879931077412434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A008724 (A065190 (n + 1)).toNat).toNat

end

end A026927.P6506879931077412434

namespace A026927

/-- `A004525(A008724(A065190(n+1)))` -/
def P6506879931077412434.Spec : Prop :=
  ∀ n, P6506879931077412434.a n = A026927 (n + 1)

end A026927

/-! ## A026927.P10426780857573631136

`A002265(A008747(A014681(n))+1)`
-/

namespace A026927.P10426780857573631136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A008747 (A014681 n).toNat + 1).toNat

end

end A026927.P10426780857573631136

namespace A026927

/-- `A002265(A008747(A014681(n))+1)` -/
def P10426780857573631136.Spec : Prop :=
  ∀ n, P10426780857573631136.a n = A026927 (n + 1)

end A026927

/-! ## A026927.P11599179441445592358

`A130519(n+1)-A002264(A002265(2*n)²)`
-/

namespace A026927.P11599179441445592358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130519 (n + 1) - A002264 (A002265 (2 * n) ^ 2).toNat

end

end A026927.P11599179441445592358

namespace A026927

/-- `A130519(n+1)-A002264(A002265(2*n)²)` -/
def P11599179441445592358.Spec : Prop :=
  ∀ n, P11599179441445592358.a n = A026927 (n + 1)

end A026927

/-! ## A026927.P10077214591158126020

`A004526(A002620(n))-A000212(A004526(n))`
-/

namespace A026927.P10077214591158126020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A002620 n).toNat - A000212 (A004526 n).toNat

end

end A026927.P10077214591158126020

namespace A026927

/-- `A004526(A002620(n))-A000212(A004526(n))` -/
def P10077214591158126020.Spec : Prop :=
  ∀ n, P10077214591158126020.a n = A026927 (n + 1)

end A026927

/-! ## A026927.P8030122002295509438

`A008615(A004652(xor(1, n+1)))`
-/

namespace A026927.P8030122002295509438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (A004652 (Nat.xor 1 (n + 1))).toNat

end

end A026927.P8030122002295509438

namespace A026927

/-- `A008615(A004652(xor(1, n+1)))` -/
def P8030122002295509438.Spec : Prop :=
  ∀ n, P8030122002295509438.a n = A026927 (n + 1)

end A026927

/-! ## A026927.P5706560370378089172

`A008615(∑[A008619(n)]-A141310(n))`
-/

namespace A026927.P5706560370378089172
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (∑ j ∈ Finset.range (n + 1), f1 j - A141310 n).toNat

end

end A026927.P5706560370378089172

namespace A026927

/-- `A008615(∑[A008619(n)]-A141310(n))` -/
def P5706560370378089172.Spec : Prop :=
  ∀ n, P5706560370378089172.a n = A026927 (n + 1)

end A026927

/-! ## A026927.P12280804271656241119

`A026921(∑[n]+3)`
-/

namespace A026927.P12280804271656241119
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026921 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A026927.P12280804271656241119

namespace A026927

/-- `A026921(∑[n]+3)` -/
def P12280804271656241119.Spec : Prop :=
  ∀ n, P12280804271656241119.a n = A026927 (n + 1)

end A026927

/-!
# A026928: Number of partitions of n into an even number of parts, the greatest being 4; also, a(n+7) = number of partitions of n+3 into an odd number of parts, each <=4.

The programs for A026928, there is no canonical definition to state claims against.
-/

/-! ## A026928.P12471422316821471887

`∑[A005044(n)]-A026924(n+1)`
-/

namespace A026928.P12471422316821471887
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005044 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A026924 (n + 1)

end

end A026928.P12471422316821471887

/-! ## A026928.P10339725777583084328

`A026810(n+1)-A026924(n+1)`
-/

namespace A026928.P10339725777583084328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026810 (n + 1) - A026924 (n + 1)

end

end A026928.P10339725777583084328

/-! ## A026928.P4459535103255386583

`A309793(n)+Δ[A309715(n)]`
-/

namespace A026928.P4459535103255386583
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309715 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309793 n + (f1 (n + 1) - f1 n)

end

end A026928.P4459535103255386583

/-! ## A026928.P17860362812801547188

`A026810(n)+Δ[A309715(n)]-A309795(n)`
-/

namespace A026928.P17860362812801547188
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309715 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026810 n + (f1 (n + 1) - f1 n - A309795 n)

end

end A026928.P17860362812801547188

/-! ## A026928.P17843663315492884248

`A309793(n+1)+A309795(n+1)-A026924(n+1)`
-/

namespace A026928.P17843663315492884248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309793 (n + 1) + (A309795 (n + 1) - A026924 (n + 1))

end

end A026928.P17843663315492884248

/-! ## A026928.P17794049516378673567

`∑[A008615(or(1, A008797(n)))]`
-/

namespace A026928.P17794049516378673567
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (Int.lor 1 (A008797 n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A026928.P17794049516378673567

/-! ## A026928.P7195923557928691877

`∑[A004396(A002265(A008797(n)))]`
-/

namespace A026928.P7195923557928691877
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A002265 (A008797 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A026928.P7195923557928691877

/-! ## A026928.P10396183784242701855

`A026921(A077169(n+1)-1)`
-/

namespace A026928.P10396183784242701855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026921 (A077169 (n + 1) - 1).toNat

end

end A026928.P10396183784242701855

/-!
# A026929: Number of partitions of n into an even number of parts, the greatest being 5; also, a(n+9) = number of partitions of n+4 into an odd number of parts, each <=5.

The programs for A026929, there is no canonical definition to state claims against.
-/

/-! ## A026929.P16457239267313070407

`A026811(n+1)-A026925(n+1)`
-/

namespace A026929.P16457239267313070407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026811 (n + 1) - A026925 (n + 1)

end

end A026929.P16457239267313070407

/-! ## A026929.P15300006415891391063

`A001401(n)-(A026925(n+1)+A008669(n))`
-/

namespace A026929.P15300006415891391063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001401 n - (A026925 (n + 1) + A008669 n)

end

end A026929.P15300006415891391063

/-! ## A026929.P4728634544726927349

`A026921(A077169(n)+n)`
-/

namespace A026929.P4728634544726927349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026921 (A077169 n + (n : ℤ)).toNat

end

end A026929.P4728634544726927349

/-! ## A026929.P5143511825783788992

`A026921(A210032(n+1)+A000217(n))`
-/

namespace A026929.P5143511825783788992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026921 (A210032 (n + 1) + A000217 n).toNat

end

end A026929.P5143511825783788992

/-!
# A026930: Number of partitions of n into an even number of parts, the greatest being 6; also, a(n+11) = number of partitions of n+5 into an odd number of parts, each <=6.

The programs for A026930, there is no canonical definition to state claims against.
-/

/-! ## A026930.P14448933525863796301

`A026812(n+1)-A026926(n+1)`
-/

namespace A026930.P14448933525863796301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026812 (n + 1) - A026926 (n + 1)

end

end A026930.P14448933525863796301

/-!
# A026931: Triangular array T read by rows: T(n,k) = number of partitions of n into an odd number of parts, each <= k.

The programs for A026931, there is no canonical definition to state claims against.
-/

/-! ## A026931.P8239541305150293006

`A026820(n+1)-A026932(n+1)`
-/

namespace A026931.P8239541305150293006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026820 (n + 1) - A026932 (n + 1)

end

end A026931.P8239541305150293006

/-! ## A026931.P4823976884483752879

`A058400(A038722(n+1))-A026932(n+1)`
-/

namespace A026931.P4823976884483752879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058400 (A038722 (n + 1)).toNat - A026932 (n + 1)

end

end A026931.P4823976884483752879

/-! ## A026931.P12394414624927567546

`A008284(A245300(n)+A108872(n+1))-A026932(n+1)`
-/

namespace A026931.P12394414624927567546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008284 (A245300 n + A108872 (n + 1)).toNat - A026932 (n + 1)

end

end A026931.P12394414624927567546

/-! ## A026931.P5146633549708601961

`A106254(A245300(n)+1)-A026932(n+1)`
-/

namespace A026931.P5146633549708601961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106254 (A245300 n + 1).toNat - A026932 (n + 1)

end

end A026931.P5146633549708601961

/-! ## A026931.P8231494279515070520

`A026921(A245300(n)+A108872(n+1))`
-/

namespace A026931.P8231494279515070520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026921 (A245300 n + A108872 (n + 1)).toNat

end

end A026931.P8231494279515070520

/-! ## A026931.P6313502867684862634

`A026820(n+1)-A026920(A245300(n)+A108872(n+1))`
-/

namespace A026931.P6313502867684862634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026820 (n + 1) - A026920 (A245300 n + A108872 (n + 1)).toNat

end

end A026931.P6313502867684862634

/-!
# A026932: Triangular array T read by rows: T(n,k) = number of partitions of n into an even number of parts, each <= k.

The programs for A026932, there is no canonical definition to state claims against.
-/

/-! ## A026932.P1017673088580807089

`A026820(n+1)-A026931(n+1)`
-/

namespace A026932.P1017673088580807089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026820 (n + 1) - A026931 (n + 1)

end

end A026932.P1017673088580807089

/-! ## A026932.P7682210246623030846

`A058400(A038722(n+1))-A026931(n+1)`
-/

namespace A026932.P7682210246623030846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058400 (A038722 (n + 1)).toNat - A026931 (n + 1)

end

end A026932.P7682210246623030846

/-! ## A026932.P12873554961502559602

`A008284(A245300(n)+A108872(n+1))-A026931(n+1)`
-/

namespace A026932.P12873554961502559602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008284 (A245300 n + A108872 (n + 1)).toNat - A026931 (n + 1)

end

end A026932.P12873554961502559602

/-! ## A026932.P15447070273337790885

`A106254(A245300(n)+1)-A026931(n+1)`
-/

namespace A026932.P15447070273337790885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106254 (A245300 n + 1).toNat - A026931 (n + 1)

end

end A026932.P15447070273337790885

/-! ## A026932.P11009640868407831067

`A026920(A245300(n)+A108872(n+1))`
-/

namespace A026932.P11009640868407831067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026920 (A245300 n + A108872 (n + 1)).toNat

end

end A026932.P11009640868407831067

/-! ## A026932.P2077077496015129800

`A026820(n+1)-A026921(A245300(n)+A108872(n+1))`
-/

namespace A026932.P2077077496015129800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026820 (n + 1) - A026921 (A245300 n + A108872 (n + 1)).toNat

end

end A026932.P2077077496015129800

/-!
# A026933: Self-convolution of array T given by A008288.

The programs for A026933, the canonical program `A026933.P5317002051161615524` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A026933 has offset 0).

The definition of A026933 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 133 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A026933.P5317002051161615524

`A001850(n)-a(n-1)` with `a(0)=1`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A026933

/-- `A001850(n)-a(n-1)` -/
def P5317002051161615524.Spec : Prop :=
  ∀ n, P5317002051161615524.a n = A026933 n

theorem P5317002051161615524.correct : P5317002051161615524.Spec := by
  intro n
  simp only [A026933]

end A026933

/-! ## A026933.P11912740756475109881

`A110170(n)+a(n-2)` with `a(0)=1, a(1)=2`
-/

namespace A026933.P11912740756475109881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A110170 n + a (n - 2)

end

end A026933.P11912740756475109881

namespace A026933

/-- `A110170(n)+a(n-2)` -/
def P11912740756475109881.Spec : Prop :=
  ∀ n, P11912740756475109881.a n = A026933 n

end A026933

/-! ## A026933.P16862723722253151268

`A026003(2*n)-a(n-1)` with `a(0)=1`
-/

namespace A026933.P16862723722253151268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A026003 (2 * n) - a (n - 1)

end

end A026933.P16862723722253151268

namespace A026933

/-- `A026003(2*n)-a(n-1)` -/
def P16862723722253151268.Spec : Prop :=
  ∀ n, P16862723722253151268.a n = A026933 n

end A026933

/-! ## A026933.P10797186934858577530

`a(n-2)+2*A002002(n)` with `a(0)=1, a(1)=2`
-/

namespace A026933.P10797186934858577530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (n - 2) + 2 * A002002 n

end

end A026933.P10797186934858577530

namespace A026933

/-- `a(n-2)+2*A002002(n)` -/
def P10797186934858577530.Spec : Prop :=
  ∀ n, P10797186934858577530.a n = A026933 n

end A026933

/-! ## A026933.P10932206420578474305

`2*A226994(n)-1-a(n-1)` with `a(0)=1`
-/

namespace A026933.P10932206420578474305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 * A226994 n - 1 - a (n - 1)

end

end A026933.P10932206420578474305

namespace A026933

/-- `2*A226994(n)-1-a(n-1)` -/
def P10932206420578474305.Spec : Prop :=
  ∀ n, P10932206420578474305.a n = A026933 n

end A026933

/-! ## A026933.P17380952638277158634

`abs(∑[A001850(n)*A033999(n)])`
-/

namespace A026933.P17380952638277158634
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001850 n * A033999 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j|

end

end A026933.P17380952638277158634

namespace A026933

/-- `abs(∑[A001850(n)*A033999(n)])` -/
def P17380952638277158634.Spec : Prop :=
  ∀ n, P17380952638277158634.a n = A026933 n

end A026933

/-! ## A026933.P3687002663676259130

`A297192(∑[n]+n)-a(n-1)` with `a(0)=1`
-/

namespace A026933.P3687002663676259130
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A297192 (∑ j ∈ Finset.range (n + 1), f1 j + n) - a (n - 1)

end

end A026933.P3687002663676259130

namespace A026933

/-- `A297192(∑[n]+n)-a(n-1)` -/
def P3687002663676259130.Spec : Prop :=
  ∀ n, P3687002663676259130.a n = A026933 n

end A026933

/-! ## A026933.P5575943497031332403

`abs(a(n-1)-A084773(n)/A000079(n))` with `a(0)=1`
-/

namespace A026933.P5575943497031332403
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  |a (n - 1) - (A084773 n : ℚ) / (A000079 n : ℚ)|

end

end A026933.P5575943497031332403

namespace A026933

/-- `abs(a(n-1)-A084773(n)/A000079(n))` -/
def P5575943497031332403.Spec : Prop :=
  ∀ n, P5575943497031332403.a n = (A026933 n : ℚ)

end A026933

/-!
# A026934: a(n) = Sum_{k=0..n-1} T(n,k) * T(n,k+1), with T given by A008288.

The programs for A026934, the canonical program `A026934.P3574988771703309430` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A026934 has offset 1).

The definition of A026934 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 132 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A026934.P3574988771703309430

`A026002(n+1)-a(n-1)` with `a(0)=1`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A026934

/-- `A026002(n+1)-a(n-1)` -/
def P3574988771703309430.Spec : Prop :=
  ∀ n, P3574988771703309430.a n = A026934 (n + 1)

theorem P3574988771703309430.correct : P3574988771703309430.Spec := by
  intro n
  simp only [A026934, Nat.add_sub_cancel]

end A026934

/-! ## A026934.P202244103778957007

`Δ[n*A006318(n)]-A001850(n)-a(n-1)` with `a(0)=1`
-/

namespace A026934.P202244103778957007
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A006318 n

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  f1 (n + 1) - f1 n - A001850 n - a (n - 1)

end

end A026934.P202244103778957007

namespace A026934

/-- `Δ[n*A006318(n)]-A001850(n)-a(n-1)` -/
def P202244103778957007.Spec : Prop :=
  ∀ n, P202244103778957007.a n = A026934 (n + 1)

end A026934

/-! ## A026934.P13754134091022901230

`A085403(n+2)+A001850(n+1)-a(n-1)` with `a(0)=1`
-/

namespace A026934.P13754134091022901230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A085403 (n + 2) + A001850 (n + 1) - a (n - 1)

end

end A026934.P13754134091022901230

namespace A026934

/-- `A085403(n+2)+A001850(n+1)-a(n-1)` -/
def P13754134091022901230.Spec : Prop :=
  ∀ n, P13754134091022901230.a n = A026934 (n + 1)

end A026934

/-! ## A026934.P3508703657491954229

`A002002(n+1)+A002003(n+1)-A006318(n+1)-a(n-1)` with `a(0)=1`
-/

namespace A026934.P3508703657491954229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A002002 (n + 1) + (A002003 (n + 1) - A006318 (n + 1)) - a (n - 1)

end

end A026934.P3508703657491954229

namespace A026934

/-- `A002002(n+1)+A002003(n+1)-A006318(n+1)-a(n-1)` -/
def P3508703657491954229.Spec : Prop :=
  ∀ n, P3508703657491954229.a n = A026934 (n + 1)

end A026934

/-!
# A026935: a(n) = Sum_{k=0..n-2} T(n,k) * T(n,k+2), with T given by A008288.

The programs for A026935, there is no canonical definition to state claims against.
-/

/-! ## A026935.P16621604434215676497

`A258009((n+1)*5^n)`
-/

namespace A026935.P16621604434215676497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258009 ((n + 1) * 5 ^ n)

end

end A026935.P16621604434215676497

/-!
# A026937: a(n) = Sum_{k=0..n} (k+1)*T(n, n-k), where T is given by A008288.

The programs for A026937, the canonical program `A026937.P16958316754417448956` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A026937 has offset 0).

The definition of A026937 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A026937.P16958316754417448956

`4*a(n-1)-2*a(n-2)-4*a(n-3)-a(n-4)` with `a(0)=1, a(1)=3, a(2)=10, a(3)=30`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A026937

/-- `4*a(n-1)-2*a(n-2)-4*a(n-3)-a(n-4)` -/
def P16958316754417448956.Spec : Prop :=
  ∀ n, P16958316754417448956.a n = A026937 n

theorem P16958316754417448956.correct : P16958316754417448956.Spec := by
  intro n
  simp only [A026937]

end A026937

/-! ## A026937.P4037761130689022455

`A361732(n+2)/2`
-/

namespace A026937.P4037761130689022455
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A361732 (n + 2) : ℚ) / 2

end

end A026937.P4037761130689022455

namespace A026937

/-- `A361732(n+2)/2` -/
def P4037761130689022455.Spec : Prop :=
  ∀ n, P4037761130689022455.a n = (A026937 n : ℚ)

end A026937

/-! ## A026937.P14893429255218476479

`(n+2)/2*A000129(n+1)`
-/

namespace A026937.P14893429255218476479
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℚ) / 2 * (A000129 (n + 1) : ℚ)

end

end A026937.P14893429255218476479

namespace A026937

/-- `(n+2)/2*A000129(n+1)` -/
def P14893429255218476479.Spec : Prop :=
  ∀ n, P14893429255218476479.a n = (A026937 n : ℚ)

end A026937

/-! ## A026937.P4276689528344504813

`A006645(n+2)-A006645(n+1)`
-/

namespace A026937.P4276689528344504813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006645 (n + 2) - A006645 (n + 1)

end

end A026937.P4276689528344504813

namespace A026937

/-- `A006645(n+2)-A006645(n+1)` -/
def P4276689528344504813.Spec : Prop :=
  ∀ n, P4276689528344504813.a n = A026937 n

end A026937

/-! ## A026937.P13095534810480855143

`ogf((1-x)/(1-4x+2x^2+4x^3+x^4))`
-/

namespace A026937.P13095534810480855143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -1] [1, -4, 2, 4, 1] n

end

end A026937.P13095534810480855143

namespace A026937

/-- `ogf((1-x)/(1-4x+2x^2+4x^3+x^4))` -/
def P13095534810480855143.Spec : Prop :=
  ∀ n, P13095534810480855143.a n = A026937 n

end A026937

/-! ## A026937.P3665505772554635788

`Δ[A006645(n+1)]`
-/

namespace A026937.P3665505772554635788
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006645 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A026937.P3665505772554635788

namespace A026937

/-- `Δ[A006645(n+1)]` -/
def P3665505772554635788.Spec : Prop :=
  ∀ n, P3665505772554635788.a n = A026937 n

end A026937

/-! ## A026937.P1174877173518532555

`(n+2)/4*∑[A002203(n)]`
-/

namespace A026937.P1174877173518532555
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002203 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℚ) / 4 * ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ)

end

end A026937.P1174877173518532555

namespace A026937

/-- `(n+2)/4*∑[A002203(n)]` -/
def P1174877173518532555.Spec : Prop :=
  ∀ n, P1174877173518532555.a n = (A026937 n : ℚ)

end A026937

/-! ## A026937.P8380457012447410478

`(n+2)/2*A215928(n+1)`
-/

namespace A026937.P8380457012447410478
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℚ) / 2 * (A215928 (n + 1) : ℚ)

end

end A026937.P8380457012447410478

namespace A026937

/-- `(n+2)/2*A215928(n+1)` -/
def P8380457012447410478.Spec : Prop :=
  ∀ n, P8380457012447410478.a n = (A026937 n : ℚ)

end A026937

/-! ## A026937.P5729585099309076610

`A119915(n+1)-a(n-1)` with `a(0)=1`
-/

namespace A026937.P5729585099309076610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A119915 (n + 1) - a (n - 1)

end

end A026937.P5729585099309076610

namespace A026937

/-- `A119915(n+1)-a(n-1)` -/
def P5729585099309076610.Spec : Prop :=
  ∀ n, P5729585099309076610.a n = A026937 n

end A026937

/-! ## A026937.P3061020939461452250

`A292400(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A026937.P3061020939461452250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A292400 (n - 1) + a (n - 1)

end

end A026937.P3061020939461452250

namespace A026937

/-- `A292400(n-1)+a(n-1)` -/
def P3061020939461452250.Spec : Prop :=
  ∀ n, P3061020939461452250.a n = A026937 n

end A026937

/-! ## A026937.P12647897458580570858

`A054447(n)+A006645(n)`
-/

namespace A026937.P12647897458580570858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054447 n + A006645 n

end

end A026937.P12647897458580570858

namespace A026937

/-- `A054447(n)+A006645(n)` -/
def P12647897458580570858.Spec : Prop :=
  ∀ n, P12647897458580570858.a n = A026937 n

end A026937

/-! ## A026937.P937262095604260240

`A364553(n)+A000129(n+1)`
-/

namespace A026937.P937262095604260240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364553 n + A000129 (n + 1)

end

end A026937.P937262095604260240

namespace A026937

/-- `A364553(n)+A000129(n+1)` -/
def P937262095604260240.Spec : Prop :=
  ∀ n, P937262095604260240.a n = A026937 n

end A026937

/-! ## A026937.P2704954711238856585

`A364655(n)+A133654(n+1)`
-/

namespace A026937.P2704954711238856585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364655 n + A133654 (n + 1)

end

end A026937.P2704954711238856585

namespace A026937

/-- `A364655(n)+A133654(n+1)` -/
def P2704954711238856585.Spec : Prop :=
  ∀ n, P2704954711238856585.a n = A026937 n

end A026937

/-! ## A026937.P9193325742222236513

`A093967(n+1)-A364553(n)`
-/

namespace A026937.P9193325742222236513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093967 (n + 1) - A364553 n

end

end A026937.P9193325742222236513

namespace A026937

/-- `A093967(n+1)-A364553(n)` -/
def P9193325742222236513.Spec : Prop :=
  ∀ n, P9193325742222236513.a n = A026937 n

end A026937

/-! ## A026937.P6358051136123317891

`A041011(n)*A145051(n+1)`
-/

namespace A026937.P6358051136123317891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041011 n * A145051 (n + 1)

end

end A026937.P6358051136123317891

namespace A026937

/-- `A041011(n)*A145051(n+1)` -/
def P6358051136123317891.Spec : Prop :=
  ∀ n, P6358051136123317891.a n = A026937 n

end A026937

/-! ## A026937.P7336141487285416113

`(A088210(n)+A001333(n))/2`
-/

namespace A026937.P7336141487285416113
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A088210 n + A001333 n : ℚ) / 2

end

end A026937.P7336141487285416113

namespace A026937

/-- `(A088210(n)+A001333(n))/2` -/
def P7336141487285416113.Spec : Prop :=
  ∀ n, P7336141487285416113.a n = (A026937 n : ℚ)

end A026937

/-! ## A026937.P4432530030605262929

`Δ[A074084(n+1)+A000129(n)]`
-/

namespace A026937.P4432530030605262929
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074084 (n + 1) + A000129 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A026937.P4432530030605262929

namespace A026937

/-- `Δ[A074084(n+1)+A000129(n)]` -/
def P4432530030605262929.Spec : Prop :=
  ∀ n, P4432530030605262929.a n = A026937 n

end A026937

/-! ## A026937.P10343638541745272192

`(A093967(n+1)+A000129(n+1))/2`
-/

namespace A026937.P10343638541745272192
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A093967 (n + 1) + A000129 (n + 1) : ℚ) / 2

end

end A026937.P10343638541745272192

namespace A026937

/-- `(A093967(n+1)+A000129(n+1))/2` -/
def P10343638541745272192.Spec : Prop :=
  ∀ n, P10343638541745272192.a n = (A026937 n : ℚ)

end A026937

/-! ## A026937.P955567451218008101

`A000129(n+1)+A006645(n+1)+A006645(n)`
-/

namespace A026937.P955567451218008101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000129 (n + 1) + (A006645 (n + 1) + A006645 n)

end

end A026937.P955567451218008101

namespace A026937

/-- `A000129(n+1)+A006645(n+1)+A006645(n)` -/
def P955567451218008101.Spec : Prop :=
  ∀ n, P955567451218008101.a n = A026937 n

end A026937

/-! ## A026937.P8229172413433356710

`A292327(n+1)-(A292327(n)+A002203(n+1))`
-/

namespace A026937.P8229172413433356710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292327 (n + 1) - (A292327 n + A002203 (n + 1))

end

end A026937.P8229172413433356710

namespace A026937

/-- `A292327(n+1)-(A292327(n)+A002203(n+1))` -/
def P8229172413433356710.Spec : Prop :=
  ∀ n, P8229172413433356710.a n = A026937 n

end A026937

/-!
# A026938: Greatest number in row of n array T given by A026300.

The programs for A026938, there is no canonical definition to state claims against.
-/

/-! ## A026938.P10285562476436993961

`A064189(∑[A010054(3*n+4)+n])`
-/

namespace A026938.P10285562476436993961
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 (3 * n + 4) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064189 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A026938.P10285562476436993961

/-! ## A026938.P8272469777762187447

`A064189(A245793(n)+A000124(n))`
-/

namespace A026938.P8272469777762187447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064189 (A245793 n + A000124 n).toNat

end

end A026938.P8272469777762187447

/-! ## A026938.P2469061026743257757

`A000027(A064189(A048766(n)+A000217(n)))`
-/

namespace A026938.P2469061026743257757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A064189 (A048766 n + A000217 n).toNat).toNat

end

end A026938.P2469061026743257757

/-! ## A026938.P14615809566737474309

`A026300(floor(log2(A203211(n+1))))`
-/

namespace A026938.P14615809566737474309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026300 (Nat.log 2 (A203211 (n + 1)).toNat)

end

end A026938.P14615809566737474309

/-!
# A026939: Self-convolution of array T given by A026300.

The programs for A026939, there is no canonical definition to state claims against.
-/

/-! ## A026939.P15515441452040677797

`A088455(2*(n+1)²)`
-/

namespace A026939.P15515441452040677797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088455 (2 * (n + 1) ^ 2)

end

end A026939.P15515441452040677797

/-! ## A026939.P888598591816185621

`record[A088455(A159915(n))]`
-/

namespace A026939.P888598591816185621
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088455 (A159915 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026939.P888598591816185621

/-!
# A026940: a(n) = Sum_{k=0..n-1} T(n,k) * T(n,k+1), with T given by A026300.

The programs for A026940, the canonical program `A026940.P12530646046903949845` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A026940 has offset 1).

The definition of A026940 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A026940.P12530646046903949845

`A002026(2*(n+1))/2`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A026940

/-- `A002026(2*(n+1))/2` -/
def P12530646046903949845.Spec : Prop :=
  ∀ n, P12530646046903949845.a n = (A026940 (n + 1) : ℚ)

end A026940

/-! ## A026940.P18007380377009749167

`A275207(Δ[n²])`
-/

namespace A026940.P18007380377009749167
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275207 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A026940.P18007380377009749167

namespace A026940

/-- `A275207(Δ[n²])` -/
def P18007380377009749167.Spec : Prop :=
  ∀ n, P18007380377009749167.a n = A026940 (n + 1)

end A026940

/-! ## A026940.P1083809010589504792

`A275208(Δ[n²])`
-/

namespace A026940.P1083809010589504792
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275208 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A026940.P1083809010589504792

namespace A026940

/-- `A275208(Δ[n²])` -/
def P1083809010589504792.Spec : Prop :=
  ∀ n, P1083809010589504792.a n = A026940 (n + 1)

end A026940

/-! ## A026940.P74436992517348986

`record[A275207(n*n%2)]`
-/

namespace A026940.P74436992517348986
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275207 (n * (n % 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026940.P74436992517348986

namespace A026940

/-- `record[A275207(n*n%2)]` -/
def P74436992517348986.Spec : Prop :=
  ∀ n, P74436992517348986.a n = A026940 (n + 1)

end A026940

/-! ## A026940.P9770515685049457310

`∑[A026269(2*n+3)/2]`
-/

namespace A026940.P9770515685049457310
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A026269 (2 * n + 3) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A026940.P9770515685049457310

namespace A026940

/-- `∑[A026269(2*n+3)/2]` -/
def P9770515685049457310.Spec : Prop :=
  ∀ n, P9770515685049457310.a n = (A026940 (n + 1) : ℚ)

end A026940

/-! ## A026940.P3751123728826468913

`record[A275207(A000265(n+1))]`
-/

namespace A026940.P3751123728826468913
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275207 (A000265 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026940.P3751123728826468913

namespace A026940

/-- `record[A275207(A000265(n+1))]` -/
def P3751123728826468913.Spec : Prop :=
  ∀ n, P3751123728826468913.a n = A026940 (n + 1)

end A026940

/-! ## A026940.P15535601530253354217

`record[A275207(A065190(n+1))]`
-/

namespace A026940.P15535601530253354217
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275207 (A065190 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026940.P15535601530253354217

namespace A026940

/-- `record[A275207(A065190(n+1))]` -/
def P15535601530253354217.Spec : Prop :=
  ∀ n, P15535601530253354217.a n = A026940 (n + 1)

end A026940

/-! ## A026940.P13821646091433297822

`record[A275207(A033999(n)+n)]`
-/

namespace A026940.P13821646091433297822
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275207 (A033999 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026940.P13821646091433297822

namespace A026940

/-- `record[A275207(A033999(n)+n)]` -/
def P13821646091433297822.Spec : Prop :=
  ∀ n, P13821646091433297822.a n = A026940 (n + 1)

end A026940

/-! ## A026940.P17794975023666060827

`record[A275207(n-A142150(n))]`
-/

namespace A026940.P17794975023666060827
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275207 ((n : ℤ) - A142150 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026940.P17794975023666060827

namespace A026940

/-- `record[A275207(n-A142150(n))]` -/
def P17794975023666060827.Spec : Prop :=
  ∀ n, P17794975023666060827.a n = A026940 (n + 1)

end A026940

/-! ## A026940.P3127372528927002596

`record[A275207(gcd(n, A142150(n)))]`
-/

namespace A026940.P3127372528927002596
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275207 (Int.gcd (n : ℤ) (A142150 n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026940.P3127372528927002596

namespace A026940

/-- `record[A275207(gcd(n, A142150(n)))]` -/
def P3127372528927002596.Spec : Prop :=
  ∀ n, P3127372528927002596.a n = A026940 (n + 1)

end A026940

/-! ## A026940.P1591021997748507386

`record[A275207(and(n, A033999(n)))]`
-/

namespace A026940.P1591021997748507386
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275207 (Int.land (n : ℤ) (A033999 n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026940.P1591021997748507386

namespace A026940

/-- `record[A275207(and(n, A033999(n)))]` -/
def P1591021997748507386.Spec : Prop :=
  ∀ n, P1591021997748507386.a n = A026940 (n + 1)

end A026940

/-! ## A026940.P4619648134319279996

`record[A275208(n^Δ[A004526(n)])]`
-/

namespace A026940.P4619648134319279996
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275208 (SequenceMachineLib.roundAway ((n : ℚ) ^ (f2 (n + 1) - f2 n : ℤ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026940.P4619648134319279996

namespace A026940

/-- `record[A275208(n^Δ[A004526(n)])]` -/
def P4619648134319279996.Spec : Prop :=
  ∀ n, P4619648134319279996.a n = A026940 (n + 1)

end A026940

/-! ## A026940.P13993757493235099120

`record[A275207(n)/A153284(n+1)]`
-/

namespace A026940.P13993757493235099120
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A275207 n : ℚ) / (A153284 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026940.P13993757493235099120

namespace A026940

/-- `record[A275207(n)/A153284(n+1)]` -/
def P13993757493235099120.Spec : Prop :=
  ∀ n, P13993757493235099120.a n = (A026940 (n + 1) : ℚ)

end A026940

/-! ## A026940.P6918146125242860413

`A275207(2*n+1)^A178334(n)`
-/

namespace A026940.P6918146125242860413
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A275207 (2 * n + 1) : ℚ) ^ (A178334 n : ℤ)

end

end A026940.P6918146125242860413

namespace A026940

/-- `A275207(2*n+1)^A178334(n)` -/
def P6918146125242860413.Spec : Prop :=
  ∀ n, P6918146125242860413.a n = (A026940 (n + 1) : ℚ)

end A026940

/-! ## A026940.P5590248669096649236

`A275209(2*n+1)+A001006(2*n+1)`
-/

namespace A026940.P5590248669096649236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275209 (2 * n + 1) + A001006 (2 * n + 1)

end

end A026940.P5590248669096649236

namespace A026940

/-- `A275209(2*n+1)+A001006(2*n+1)` -/
def P5590248669096649236.Spec : Prop :=
  ∀ n, P5590248669096649236.a n = A026940 (n + 1)

end A026940

/-! ## A026940.P10013050382976848795

`A275210(2*n+1)+A001006(2*n+1)`
-/

namespace A026940.P10013050382976848795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275210 (2 * n + 1) + A001006 (2 * n + 1)

end

end A026940.P10013050382976848795

namespace A026940

/-- `A275210(2*n+1)+A001006(2*n+1)` -/
def P10013050382976848795.Spec : Prop :=
  ∀ n, P10013050382976848795.a n = A026940 (n + 1)

end A026940

/-! ## A026940.P13041133156758548796

`A087960(n)²*A275207(A005408(n))`
-/

namespace A026940.P13041133156758548796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087960 n ^ 2 * A275207 (A005408 n).toNat

end

end A026940.P13041133156758548796

namespace A026940

/-- `A087960(n)²*A275207(A005408(n))` -/
def P13041133156758548796.Spec : Prop :=
  ∀ n, P13041133156758548796.a n = A026940 (n + 1)

end A026940

/-! ## A026940.P1002915728883301696

`record[A275207(n)^A087960(A005408(n))]`
-/

namespace A026940.P1002915728883301696
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A275207 n : ℚ) ^ (A087960 (A005408 n).toNat : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026940.P1002915728883301696

namespace A026940

/-- `record[A275207(n)^A087960(A005408(n))]` -/
def P1002915728883301696.Spec : Prop :=
  ∀ n, P1002915728883301696.a n = (A026940 (n + 1) : ℚ)

end A026940

/-! ## A026940.P17183530838875390500

`record[A275207(n+1)/A087960(A005408(n+1))]`
-/

namespace A026940.P17183530838875390500
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A275207 (n + 1) : ℚ) / (A087960 (A005408 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026940.P17183530838875390500

namespace A026940

/-- `record[A275207(n+1)/A087960(A005408(n+1))]` -/
def P17183530838875390500.Spec : Prop :=
  ∀ n, P17183530838875390500.a n = (A026940 (n + 1) : ℚ)

end A026940

/-! ## A026940.P4111477052249604642

`Δ[record[A099323(n)/2]]`
-/

namespace A026940.P4111477052249604642
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A099323 n : ℚ) / 2

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A026940.P4111477052249604642

namespace A026940

/-- `Δ[record[A099323(n)/2]]` -/
def P4111477052249604642.Spec : Prop :=
  ∀ n, P4111477052249604642.a n = (A026940 (n + 1) : ℚ)

end A026940

/-!
# A026941: a(n) = Sum_{k=0..n-2} T(n,k) * T(n,k+2), with T given by A026300.

The programs for A026941, there is no canonical definition to state claims against.
-/

/-! ## A026941.P13353894146784065813

`A064052(A016203(n))`
-/

namespace A026941.P13353894146784065813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064052 (A016203 n).toNat

end

end A026941.P13353894146784065813

/-!
# A026943: a(n) = Sum_{k=0..n} (k+1) * T(n, k), with T given by A026300.

The programs for A026943, the canonical program `A026943.P8016539442401033073` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A026943 has offset 0).

The definition of A026943 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 208 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A026943.P3071721170397080290

`(n+2)*∑[A025566(n+1)]-3^n`
-/

namespace A026943.P3071721170397080290
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025566 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j) - (3 ^ n : ℤ)

end

end A026943.P3071721170397080290

namespace A026943

/-- `(n+2)*∑[A025566(n+1)]-3^n` -/
def P3071721170397080290.Spec : Prop :=
  ∀ n, P3071721170397080290.a n = A026943 n

end A026943

/-! ## A026943.P8016539442401033073

`A092690(n+1)-Δ[A027914(n)]`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A026943

/-- `A092690(n+1)-Δ[A027914(n)]` -/
def P8016539442401033073.Spec : Prop :=
  ∀ n, P8016539442401033073.a n = A026943 n

theorem P8016539442401033073.correct : P8016539442401033073.Spec := by
  intro n
  simp only [A026943]

end A026943

/-! ## A026943.P3385101165445982992

`Δ[∑[A092690(n)]-A027914(n)]`
-/

namespace A026943.P3385101165445982992
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092690 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A027914 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A026943.P3385101165445982992

namespace A026943

/-- `Δ[∑[A092690(n)]-A027914(n)]` -/
def P3385101165445982992.Spec : Prop :=
  ∀ n, P3385101165445982992.a n = A026943 n

end A026943

/-!
# A026944: E.g.f. is inverse function to y -> integral from 0 to y of exp(-s^2).

The programs for A026944, there is no canonical definition to state claims against.
-/

/-! ## A026944.P6980256475492149171

`A002067(n)*2^n`
-/

namespace A026944.P6980256475492149171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002067 n * (2 ^ n : ℤ)

end

end A026944.P6980256475492149171

/-! ## A026944.P11390633465369092171

`lcm(record[A001316(n)], A002067(n))`
-/

namespace A026944.P11390633465369092171
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001316 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (A002067 n)

end

end A026944.P11390633465369092171

/-! ## A026944.P9325239298313409939

`2^n*A320842(C(n, 2)+1)`
-/

namespace A026944.P9325239298313409939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A320842 (Nat.choose n 2 + 1)

end

end A026944.P9325239298313409939

/-!
# A026945: A bisection of the Motzkin numbers A001006.

The programs for A026945, the canonical program `A026945.P3909534042926224548` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A026945 has offset 0).

The definition of A026945 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A026945.P3909534042926224548

`A005043(2*n)+A005043(2*n+1)`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A026945

/-- `A005043(2*n)+A005043(2*n+1)` -/
def P3909534042926224548.Spec : Prop :=
  ∀ n, P3909534042926224548.a n = A026945 n

theorem P3909534042926224548.correct : P3909534042926224548.Spec := by
  intro n
  simp only [A026945]

end A026945

/-! ## A026945.P11588207225461593035

`record[A166587(n)]`
-/

namespace A026945.P11588207225461593035
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166587 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026945.P11588207225461593035

namespace A026945

/-- `record[A166587(n)]` -/
def P11588207225461593035.Spec : Prop :=
  ∀ n, P11588207225461593035.a n = A026945 n

end A026945

/-! ## A026945.P15725472823572615357

`A001006(2*n)`
-/

namespace A026945.P15725472823572615357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001006 (2 * n)

end

end A026945.P15725472823572615357

namespace A026945

/-- `A001006(2*n)` -/
def P15725472823572615357.Spec : Prop :=
  ∀ n, P15725472823572615357.a n = A026945 n

end A026945

/-! ## A026945.P4922907482283298312

`A166587(Δ[n²])`
-/

namespace A026945.P4922907482283298312
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166587 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A026945.P4922907482283298312

namespace A026945

/-- `A166587(Δ[n²])` -/
def P4922907482283298312.Spec : Prop :=
  ∀ n, P4922907482283298312.a n = A026945 n

end A026945

/-! ## A026945.P6607481751249218528

`A086246(2*(n+1))`
-/

namespace A026945.P6607481751249218528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086246 (2 * (n + 1))

end

end A026945.P6607481751249218528

namespace A026945

/-- `A086246(2*(n+1))` -/
def P6607481751249218528.Spec : Prop :=
  ∀ n, P6607481751249218528.a n = A026945 n

end A026945

/-! ## A026945.P14546631112779794490

`A168049(2*(n+1))`
-/

namespace A026945.P14546631112779794490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168049 (2 * (n + 1))

end

end A026945.P14546631112779794490

namespace A026945

/-- `A168049(2*(n+1))` -/
def P14546631112779794490.Spec : Prop :=
  ∀ n, P14546631112779794490.a n = A026945 n

end A026945

/-! ## A026945.P11594343790073923197

`record[Δ[A174297(n+2)]]`
-/

namespace A026945.P11594343790073923197
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174297 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026945.P11594343790073923197

namespace A026945

/-- `record[Δ[A174297(n+2)]]` -/
def P11594343790073923197.Spec : Prop :=
  ∀ n, P11594343790073923197.a n = A026945 n

end A026945

/-! ## A026945.P7759948466443612316

`abs(A166587(2*n+1))`
-/

namespace A026945.P7759948466443612316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A166587 (2 * n + 1)|

end

end A026945.P7759948466443612316

namespace A026945

/-- `abs(A166587(2*n+1))` -/
def P7759948466443612316.Spec : Prop :=
  ∀ n, P7759948466443612316.a n = A026945 n

end A026945

/-! ## A026945.P2309616001356577276

`A217526(2*(n+1))+n+1`
-/

namespace A026945.P2309616001356577276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217526 (2 * (n + 1)) + (n + 1 : ℤ)

end

end A026945.P2309616001356577276

namespace A026945

/-- `A217526(2*(n+1))+n+1` -/
def P2309616001356577276.Spec : Prop :=
  ∀ n, P2309616001356577276.a n = A026945 n

end A026945

/-! ## A026945.P14073231956735728742

`record[A001006(A014681(n))]`
-/

namespace A026945.P14073231956735728742
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001006 (A014681 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026945.P14073231956735728742

namespace A026945

/-- `record[A001006(A014681(n))]` -/
def P14073231956735728742.Spec : Prop :=
  ∀ n, P14073231956735728742.a n = A026945 n

end A026945

/-! ## A026945.P15750539307830533772

`A099252(n)+A099251(n)`
-/

namespace A026945.P15750539307830533772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099252 n + A099251 n

end

end A026945.P15750539307830533772

namespace A026945

/-- `A099252(n)+A099251(n)` -/
def P15750539307830533772.Spec : Prop :=
  ∀ n, P15750539307830533772.a n = A026945 n

end A026945

/-! ## A026945.P7838650973319616348

`record[A001006(A026741(n)+1)]`
-/

namespace A026945.P7838650973319616348
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001006 (A026741 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026945.P7838650973319616348

namespace A026945

/-- `record[A001006(A026741(n)+1)]` -/
def P7838650973319616348.Spec : Prop :=
  ∀ n, P7838650973319616348.a n = A026945 n

end A026945

/-! ## A026945.P18283670099318395108

`A099252(n)+A005043(2*n)`
-/

namespace A026945.P18283670099318395108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099252 n + A005043 (2 * n)

end

end A026945.P18283670099318395108

namespace A026945

/-- `A099252(n)+A005043(2*n)` -/
def P18283670099318395108.Spec : Prop :=
  ∀ n, P18283670099318395108.a n = A026945 n

end A026945

/-! ## A026945.P2350778360479793977

`record[Δ[A097332(n)]/A000034(n)²]`
-/

namespace A026945.P2350778360479793977
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097332 n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n : ℚ) / (A000034 n ^ 2 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026945.P2350778360479793977

namespace A026945

/-- `record[Δ[A097332(n)]/A000034(n)²]` -/
def P2350778360479793977.Spec : Prop :=
  ∀ n, P2350778360479793977.a n = (A026945 n : ℚ)

end A026945

/-! ## A026945.P11989410180205982845

`A099251(n)+A005043(2*n+1)`
-/

namespace A026945.P11989410180205982845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099251 n + A005043 (2 * n + 1)

end

end A026945.P11989410180205982845

namespace A026945

/-- `A099251(n)+A005043(2*n+1)` -/
def P11989410180205982845.Spec : Prop :=
  ∀ n, P11989410180205982845.a n = A026945 n

end A026945

/-! ## A026945.P15417137799541612594

`A290265(2*n)+A005773(n+1)`
-/

namespace A026945.P15417137799541612594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290265 (2 * n) + A005773 (n + 1)

end

end A026945.P15417137799541612594

namespace A026945

/-- `A290265(2*n)+A005773(n+1)` -/
def P15417137799541612594.Spec : Prop :=
  ∀ n, P15417137799541612594.a n = A026945 n

end A026945

/-! ## A026945.P5277726447868788972

`A343386(2*n)+A107587(2*n)`
-/

namespace A026945.P5277726447868788972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343386 (2 * n) + A107587 (2 * n)

end

end A026945.P5277726447868788972

namespace A026945

/-- `A343386(2*n)+A107587(2*n)` -/
def P5277726447868788972.Spec : Prop :=
  ∀ n, P5277726447868788972.a n = A026945 n

end A026945

/-! ## A026945.P3551877227403552213

`A307573(2*n)+A307564(2*n)`
-/

namespace A026945.P3551877227403552213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307573 (2 * n) + A307564 (2 * n)

end

end A026945.P3551877227403552213

namespace A026945

/-- `A307573(2*n)+A307564(2*n)` -/
def P3551877227403552213.Spec : Prop :=
  ∀ n, P3551877227403552213.a n = A026945 n

end A026945

/-! ## A026945.P4243315929154580708

`A152981(2*n)-A152982(2*n)`
-/

namespace A026945.P4243315929154580708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152981 (2 * n) - A152982 (2 * n)

end

end A026945.P4243315929154580708

namespace A026945

/-- `A152981(2*n)-A152982(2*n)` -/
def P4243315929154580708.Spec : Prop :=
  ∀ n, P4243315929154580708.a n = A026945 n

end A026945

/-! ## A026945.P14575094072903232724

`A097332(2*n+1)-A097332(2*n)`
-/

namespace A026945.P14575094072903232724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097332 (2 * n + 1) - A097332 (2 * n)

end

end A026945.P14575094072903232724

namespace A026945

/-- `A097332(2*n+1)-A097332(2*n)` -/
def P14575094072903232724.Spec : Prop :=
  ∀ n, P14575094072903232724.a n = A026945 n

end A026945

/-!
# A026946: Self-convolution of array T given by A026374.

The programs for A026946, there is no canonical definition to state claims against.
-/

/-! ## A026946.P259491579598396362

`A163841(∑[n]+n%2)`
-/

namespace A026946.P259491579598396362
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163841 (∑ j ∈ Finset.range (n + 1), f1 j + n % 2)

end

end A026946.P259491579598396362

/-! ## A026946.P16889256678551323622

`A163841(∑[A014681(n)])`
-/

namespace A026946.P16889256678551323622
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163841 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A026946.P16889256678551323622

/-! ## A026946.P4209707216390024477

`A163841(A000217(n)+A000035(n))`
-/

namespace A026946.P4209707216390024477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163841 (A000217 n + A000035 n).toNat

end

end A026946.P4209707216390024477

/-! ## A026946.P12332886546242536437

`A163841(A110654(n)+A000982(n))`
-/

namespace A026946.P12332886546242536437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163841 (A110654 n + A000982 n).toNat

end

end A026946.P12332886546242536437

/-! ## A026946.P15787070805916588712

`A163841(A133263(n)-A040001(n))`
-/

namespace A026946.P15787070805916588712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163841 (A133263 n - A040001 n).toNat

end

end A026946.P15787070805916588712

/-! ## A026946.P9636011555599790385

`A163841(eq[A008279(n), A130595(n)])`
-/

namespace A026946.P9636011555599790385
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008279 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130595 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163841 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A026946.P9636011555599790385

/-! ## A026946.P10366697516692139553

`A163841(A110654(n²)+A110654(n))`
-/

namespace A026946.P10366697516692139553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163841 (A110654 (n ^ 2) + A110654 n).toNat

end

end A026946.P10366697516692139553

/-!
# A026947: a(n) = Sum_{k=0..n-1} T(n,k) * T(n,k+1), with T given by A026374.

The programs for A026947, there is no canonical definition to state claims against.
-/

/-! ## A026947.P13556254139964725543

`A154122(or(A172062(n), A262616(n)))`
-/

namespace A026947.P13556254139964725543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154122 (Int.lor (A172062 n) (A262616 n)).toNat

end

end A026947.P13556254139964725543

/-!
# A026950: a(n) = Sum_{k=0..n} (k+1) * T(n,k), with T given by A026374.

The programs for A026950, the canonical program `A026950.P6238047312210780844` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A026950 has offset 0).

The definition of A026950 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A026950.P6238047312210780844

`10*a(n-2)-25*a(n-4)` with `a(0)=1, a(1)=3, a(2)=10, a(3)=25`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A026950

/-- `10*a(n-2)-25*a(n-4)` -/
def P6238047312210780844.Spec : Prop :=
  ∀ n, P6238047312210780844.a n = A026950 n

theorem P6238047312210780844.correct : P6238047312210780844.Spec := by
  intro n
  simp only [A026950]

end A026950

/-! ## A026950.P16525049459915026629

`(n+2)*(7+3*(-1)^n)*5^floor((n-1)/2)/4`
-/

namespace A026950.P16525049459915026629
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 2 : ℤ) * (7 + 3 * (-1) ^ n) : ℚ) * (5 : ℚ) ^ (⌊((n : ℤ) - 1 : ℚ) / 2⌋ : ℤ) / 4

end

end A026950.P16525049459915026629

namespace A026950

/-- `(n+2)*(7+3*(-1)^n)*5^floor((n-1)/2)/4` -/
def P16525049459915026629.Spec : Prop :=
  ∀ n, P16525049459915026629.a n = (A026950 n : ℚ)

end A026950

/-! ## A026950.P16210962381671346331

`(10/n+5)*a(n-2)` with `a(0)=1, a(1)=3`
-/

namespace A026950.P16210962381671346331
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 3] fun n a =>
  (10 / (n : ℚ) + 5) * a (n - 2)

end

end A026950.P16210962381671346331

namespace A026950

/-- `(10/n+5)*a(n-2)` -/
def P16210962381671346331.Spec : Prop :=
  ∀ n, P16210962381671346331.a n = (A026950 n : ℚ)

end A026950

/-! ## A026950.P1471138517573145946

`(n+2)/2*A026383(n)`
-/

namespace A026950.P1471138517573145946
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℚ) / 2 * (A026383 n : ℚ)

end

end A026950.P1471138517573145946

namespace A026950

/-- `(n+2)/2*A026383(n)` -/
def P1471138517573145946.Spec : Prop :=
  ∀ n, P1471138517573145946.a n = (A026950 n : ℚ)

end A026950

/-! ## A026950.P15547971909481879417

`A074872(n+1)*A145051(n+1)`
-/

namespace A026950.P15547971909481879417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074872 (n + 1) * A145051 (n + 1)

end

end A026950.P15547971909481879417

namespace A026950

/-- `A074872(n+1)*A145051(n+1)` -/
def P15547971909481879417.Spec : Prop :=
  ∀ n, P15547971909481879417.a n = A026950 n

end A026950

/-! ## A026950.P15789116322679818033

`A026741(n+2)*A074872(n+1)`
-/

namespace A026950.P15789116322679818033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (n + 2) * A074872 (n + 1)

end

end A026950.P15789116322679818033

namespace A026950

/-- `A026741(n+2)*A074872(n+1)` -/
def P15789116322679818033.Spec : Prop :=
  ∀ n, P15789116322679818033.a n = A026950 n

end A026950

/-! ## A026950.P13810779445295744707

`5^A004526(n)*A026741(n+2)`
-/

namespace A026950.P13810779445295744707
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (5 : ℚ) ^ (A004526 n : ℤ) * (A026741 (n + 2) : ℚ)

end

end A026950.P13810779445295744707

namespace A026950

/-- `5^A004526(n)*A026741(n+2)` -/
def P13810779445295744707.Spec : Prop :=
  ∀ n, P13810779445295744707.a n = (A026950 n : ℚ)

end A026950

/-!
# A026951: Self-convolution of array T given by A026386.

The programs for A026951, there is no canonical definition to state claims against.
-/

/-! ## A026951.P13640097770280557905

`A163841(A134451(n)+∑[n])`
-/

namespace A026951.P13640097770280557905
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163841 (A134451 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A026951.P13640097770280557905

/-! ## A026951.P9029387485053887334

`A163841(A040001(n)+A133263(n)-2)`
-/

namespace A026951.P9029387485053887334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163841 (A040001 n + (A133263 n - 2)).toNat

end

end A026951.P9029387485053887334

/-! ## A026951.P13133708386885843199

`A163841(A040001(n)-(2-A133263(n)))`
-/

namespace A026951.P13133708386885843199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163841 (A040001 n - (2 - A133263 n)).toNat

end

end A026951.P13133708386885843199

/-!
# A026952: a(n) = Sum_{k=0..n-1} T(n,k) * T(n,k+1), with T given by A026386.

The programs for A026952, there is no canonical definition to state claims against.
-/

/-! ## A026952.P9134828199838507176

`A130353(A000079(n)*A180965(n))`
-/

namespace A026952.P9134828199838507176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130353 (A000079 n * A180965 n).toNat

end

end A026952.P9134828199838507176

/-!
# A026953: a(n) = Sum_{k=0..n-2} T(n,k) * T(n,k+2), with T given by A026386.

The programs for A026953, there is no canonical definition to state claims against.
-/

/-! ## A026953.P16935307879973360534

`A130339(A059174(n)*A135859(n+1))`
-/

namespace A026953.P16935307879973360534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130339 (A059174 n * A135859 (n + 1)).toNat

end

end A026953.P16935307879973360534

/-!
# A026955: a(n) = Sum_{k=0..n} (k+1) * T(n,k), with T given by A026386.

The programs for A026955, the canonical program `A026955.P6371924643160440037` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A026955 has offset 0).

The definition of A026955 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A026955.P6371924643160440037

`10*a(n-2)-25*a(n-4)` with `a(0)=1, a(1)=3, a(2)=8, a(3)=25, a(4)=60`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A026955

/-- `10*a(n-2)-25*a(n-4)` -/
def P6371924643160440037.Spec : Prop :=
  ∀ n, P6371924643160440037.a n = A026955 n

theorem P6371924643160440037.correct : P6371924643160440037.Spec := by
  intro n
  simp only [A026955]

end A026955

/-! ## A026955.P16035451133885324840

`(10/n+5)*a(n-2)` with `a(0)=1, a(1)=3, a(2)=8`
-/

namespace A026955.P16035451133885324840
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 3, 8] fun n a =>
  (10 / (n : ℚ) + 5) * a (n - 2)

end

end A026955.P16035451133885324840

namespace A026955

/-- `(10/n+5)*a(n-2)` -/
def P16035451133885324840.Spec : Prop :=
  ∀ n, P16035451133885324840.a n = (A026955 n : ℚ)

end A026955

/-! ## A026955.P5020520659870161614

`(n+2)/2*A026395(n)`
-/

namespace A026955.P5020520659870161614
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℚ) / 2 * (A026395 n : ℚ)

end

end A026955.P5020520659870161614

namespace A026955

/-- `(n+2)/2*A026395(n)` -/
def P5020520659870161614.Spec : Prop :=
  ∀ n, P5020520659870161614.a n = (A026955 n : ℚ)

end A026955

/-! ## A026955.P15022133469853848053

`A037459(A011782(n))*A065475(n+1)`
-/

namespace A026955.P15022133469853848053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037459 (A011782 n).toNat * A065475 (n + 1)

end

end A026955.P15022133469853848053

namespace A026955

/-- `A037459(A011782(n))*A065475(n+1)` -/
def P15022133469853848053.Spec : Prop :=
  ∀ n, P15022133469853848053.a n = A026955 n

end A026955

/-! ## A026955.P9922948995500049431

`A065475(n+1)*A273943(A026395(n))`
-/

namespace A026955.P9922948995500049431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (n + 1) * A273943 (A026395 n).toNat

end

end A026955.P9922948995500049431

namespace A026955

/-- `A065475(n+1)*A273943(A026395(n))` -/
def P9922948995500049431.Spec : Prop :=
  ∀ n, P9922948995500049431.a n = A026955 n

end A026955

/-!
# A026956: Self-convolution of array T given by A026615.

The programs for A026956, there is no canonical definition to state claims against.
-/

/-! ## A026956.P15341671753863435812

`A026986(A001096(n))`
-/

namespace A026956.P15341671753863435812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026986 (A001096 n).toNat

end

end A026956.P15341671753863435812

/-! ## A026956.P11147235072012709591

`filter[A026986(n), A100672(#)]`
-/

namespace A026956.P11147235072012709591
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026986 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A100672 (f1 j).toNat = 1) n)

end

end A026956.P11147235072012709591

/-!
# A026957: a(n) = Sum_{k=0..n-1} T(n,k) * T(n,k+1), with T given by A026615.

The programs for A026957, there is no canonical definition to state claims against.
-/

/-! ## A026957.P11579592470712843650

`∏{p}[A026987(n+1)², #]`
-/

namespace A026957.P11579592470712843650
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026987 (n + 1) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A026957.P11579592470712843650

/-!
# A026960: a(n) = Sum_{k=0..n} (k+1) * A026615(n,k).

The programs for A026960, the canonical program `A026960.P5400671589596375653` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A026960 has offset 0).

The definition of A026960 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A026960.P5400671589596375653

`6*a(n-1)-13*a(n-2)+12*a(n-3)-4*a(n-4)` with `a(0)=1, a(1)=3, a(2)=10, a(3)=30, a(4)=78, a(5)=189`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A026960

/-- `6*a(n-1)-13*a(n-2)+12*a(n-3)-4*a(n-4)` -/
def P5400671589596375653.Spec : Prop :=
  ∀ n, P5400671589596375653.a n = A026960 n

theorem P5400671589596375653.correct : P5400671589596375653.Spec := by
  intro n
  simp only [A026960]

end A026960

/-! ## A026960.P12936547361879437636

`(n/2+1)*A026622(n)`
-/

namespace A026960.P12936547361879437636
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℚ) / 2 + 1) * (A026622 n : ℚ)

end

end A026960.P12936547361879437636

namespace A026960

/-- `(n/2+1)*A026622(n)` -/
def P12936547361879437636.Spec : Prop :=
  ∀ n, P12936547361879437636.a n = (A026960 n : ℚ)

end A026960

/-! ## A026960.P2137277097550013899

`(A005843(n)-(n-2))*A026622(n)/2`
-/

namespace A026960.P2137277097550013899
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005843 n - ((n : ℤ) - 2) : ℚ) * ((A026622 n : ℚ) / 2)

end

end A026960.P2137277097550013899

namespace A026960

/-- `(A005843(n)-(n-2))*A026622(n)/2` -/
def P2137277097550013899.Spec : Prop :=
  ∀ n, P2137277097550013899.a n = (A026960 n : ℚ)

end A026960

/-! ## A026960.P143891654200719912

`floor(A026622(n)/2*A052938(A103517(n)))`
-/

namespace A026960.P143891654200719912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A026622 n : ℚ) / 2 * (A052938 (A103517 n).toNat : ℚ)⌋

end

end A026960.P143891654200719912

namespace A026960

/-- `floor(A026622(n)/2*A052938(A103517(n)))` -/
def P143891654200719912.Spec : Prop :=
  ∀ n, P143891654200719912.a n = A026960 n

end A026960

/-! ## A026960.P2660993498830303021

`A026622(n)/2*A007318(Δ[A008778(n)])`
-/

namespace A026960.P2660993498830303021
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A026622 n : ℚ) / 2 * (A007318 (f1 (n + 1) - f1 n).toNat : ℚ)

end

end A026960.P2660993498830303021

namespace A026960

/-- `A026622(n)/2*A007318(Δ[A008778(n)])` -/
def P2660993498830303021.Spec : Prop :=
  ∀ n, P2660993498830303021.a n = (A026960 n : ℚ)

end A026960

/-!
# A026961: Self-convolution of array T given by A026626.

The programs for A026961, there is no canonical definition to state claims against.
-/

/-! ## A026961.P17619889862872568882

`A026971(A001096(n))`
-/

namespace A026961.P17619889862872568882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026971 (A001096 n).toNat

end

end A026961.P17619889862872568882

/-! ## A026961.P15152151388547279513

`A026971(A058835(n)+n)`
-/

namespace A026961.P15152151388547279513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026971 (A058835 n + (n : ℤ)).toNat

end

end A026961.P15152151388547279513

/-!
# A026962: a(n) = Sum_{k=0..n-1} T(n,k) * T(n,k+1), with T given by A026626.

The programs for A026962, there is no canonical definition to state claims against.
-/

/-! ## A026962.P15096321222099692721

`A345674(A129637(n+1))`
-/

namespace A026962.P15096321222099692721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345674 (A129637 (n + 1)).toNat

end

end A026962.P15096321222099692721

/-!
# A026963: a(n) = Sum_{k=0..n-2} T(n,k) * T(n,k+2), with T given by A026626.

The programs for A026963, there is no canonical definition to state claims against.
-/

/-! ## A026963.P4646817830255898787

`and(xor(n, -1), A130392(A141783(n)))`
-/

namespace A026963.P4646817830255898787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (Int.xor (n : ℤ) (-1)) (A130392 (A141783 (n + 13)).toNat)

end

end A026963.P4646817830255898787

/-!
# A026964: a(n) = Sum_{k=0..n-3} T(n,k) * T(n,k+3), with T given by A026626.

The programs for A026964, there is no canonical definition to state claims against.
-/

/-! ## A026964.P17846472019933948102

`A228429(A094557(3*n+1))+A071746(n)`
-/

namespace A026964.P17846472019933948102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228429 (A094557 (3 * n + 1)).toNat + A071746 n

end

end A026964.P17846472019933948102

/-!
# A026965: a(n) = Sum_{k=0..n} (k+1) * A026626(n,k).

The programs for A026965, the canonical program `A026965.P15880974110038291362` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A026965 has offset 0).

The definition of A026965 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 325 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A026965.P15880974110038291362

`(n/2+1)*A026633(n)`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A026965

/-- `(n/2+1)*A026633(n)` -/
def P15880974110038291362.Spec : Prop :=
  ∀ n, P15880974110038291362.a n = (A026965 n : ℚ)

end A026965

/-! ## A026965.P8460686050485110854

`A273943((n+2)*A026633(n))`
-/

namespace A026965.P8460686050485110854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273943 ((n + 2 : ℤ) * A026633 n).toNat

end

end A026965.P8460686050485110854

namespace A026965

/-- `A273943((n+2)*A026633(n))` -/
def P8460686050485110854.Spec : Prop :=
  ∀ n, P8460686050485110854.a n = A026965 n

end A026965

/-! ## A026965.P12817157253843616205

`A001281((n+2)*A026633(n))`
-/

namespace A026965.P12817157253843616205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 ((n + 2 : ℤ) * A026633 n).toNat

end

end A026965.P12817157253843616205

namespace A026965

/-- `A001281((n+2)*A026633(n))` -/
def P12817157253843616205.Spec : Prop :=
  ∀ n, P12817157253843616205.a n = A026965 n

end A026965

/-! ## A026965.P17329218083185577400

`A004526((n+2)*A026633(n))`
-/

namespace A026965.P17329218083185577400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 ((n + 2 : ℤ) * A026633 n).toNat

end

end A026965.P17329218083185577400

namespace A026965

/-- `A004526((n+2)*A026633(n))` -/
def P17329218083185577400.Spec : Prop :=
  ∀ n, P17329218083185577400.a n = A026965 n

end A026965

/-! ## A026965.P10097496633523326969

`A026741((n+2)*A026633(n))`
-/

namespace A026965.P10097496633523326969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 ((n + 2 : ℤ) * A026633 n).toNat

end

end A026965.P10097496633523326969

namespace A026965

/-- `A026741((n+2)*A026633(n))` -/
def P10097496633523326969.Spec : Prop :=
  ∀ n, P10097496633523326969.a n = A026965 n

end A026965

/-!
# A026966: Self-convolution of array T given by A026637.

The programs for A026966, there is no canonical definition to state claims against.
-/

/-! ## A026966.P5272525767453266345

`A026976(n)%p?[2^n-1]`
-/

namespace A026966.P5272525767453266345
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A026976 n) (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A026966.P5272525767453266345

/-! ## A026966.P4887171973169603622

`A026976(A073788(n))`
-/

namespace A026966.P4887171973169603622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026976 (A073788 n).toNat

end

end A026966.P4887171973169603622

/-! ## A026966.P14443050604459661022

`A127287(A026976(n))`
-/

namespace A026966.P14443050604459661022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127287 (A026976 n).toNat

end

end A026966.P14443050604459661022

/-!
# A026967: a(n) = Sum_{k=0..n-1} T(n,k) * T(n,k+1), with T given by A026637.

The programs for A026967, there is no canonical definition to state claims against.
-/

/-! ## A026967.P7048733086687982686

`A026977(A001096(n)+1)`
-/

namespace A026967.P7048733086687982686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026977 (A001096 n + 1).toNat

end

end A026967.P7048733086687982686

/-! ## A026967.P6887524595913538320

`A004525(2*A026977(n+1))`
-/

namespace A026967.P6887524595913538320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (2 * A026977 (n + 1)).toNat

end

end A026967.P6887524595913538320

/-!
# A026968: a(n) = Sum_{k=0..n-2} T(n,k) * T(n,k+2), with T given by A026637.

The programs for A026968, there is no canonical definition to state claims against.
-/

/-! ## A026968.P5526780354149163385

`A250250(A026978(n+2))`
-/

namespace A026968.P5526780354149163385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250250 (A026978 (n + 2)).toNat

end

end A026968.P5526780354149163385

/-!
# A026969: a(n) = Sum_{k=0..n-3} T(n,k) * T(n,k+3), with T given by A026637.

The programs for A026969, there is no canonical definition to state claims against.
-/

/-! ## A026969.P11158700458326687190

`A026362(A295735(3*(n+1))+A295728(n))`
-/

namespace A026969.P11158700458326687190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026362 (A295735 (3 * (n + 1)) + A295728 n).toNat

end

end A026969.P11158700458326687190

/-!
# A026970: a(n) = Sum_{k=0..n} (k+1) * A026637(n,k).

The programs for A026970, the canonical program `A026970.P7642699064589138744` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A026970 has offset 0).

The definition of A026970 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 325 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A026970.P17820420890365585544

`(n+2)/2*A026644(n)`
-/

namespace A026970.P17820420890365585544
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℚ) / 2 * (A026644 n : ℚ)

end

end A026970.P17820420890365585544

namespace A026970

/-- `(n+2)/2*A026644(n)` -/
def P17820420890365585544.Spec : Prop :=
  ∀ n, P17820420890365585544.a n = (A026970 n : ℚ)

end A026970

/-! ## A026970.P7642699064589138744

`A026644(n)+n*A000975(n)`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A026970

/-- `A026644(n)+n*A000975(n)` -/
def P7642699064589138744.Spec : Prop :=
  ∀ n, P7642699064589138744.a n = A026970 n

theorem P7642699064589138744.correct : P7642699064589138744.Spec := by
  intro n
  simp only [A026970]

end A026970

/-! ## A026970.P3711475230464303357

`A000007(n)+(n+2)*A000975(n)`
-/

namespace A026970.P3711475230464303357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + (n + 2 : ℤ) * A000975 n

end

end A026970.P3711475230464303357

namespace A026970

/-- `A000007(n)+(n+2)*A000975(n)` -/
def P3711475230464303357.Spec : Prop :=
  ∀ n, P3711475230464303357.a n = A026970 n

end A026970

/-! ## A026970.P17295781699758065157

`A000975(A028310(n))*A065475(n+1)`
-/

namespace A026970.P17295781699758065157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000975 (A028310 n).toNat * A065475 (n + 1)

end

end A026970.P17295781699758065157

namespace A026970

/-- `A000975(A028310(n))*A065475(n+1)` -/
def P17295781699758065157.Spec : Prop :=
  ∀ n, P17295781699758065157.a n = A026970 n

end A026970

/-! ## A026970.P15757104613732741039

`or((n+2)*A000975(n), A000089(A036561(n)))`
-/

namespace A026970.P15757104613732741039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((n + 2 : ℤ) * A000975 n) (A000089 (A036561 n).toNat)

end

end A026970.P15757104613732741039

namespace A026970

/-- `or((n+2)*A000975(n), A000089(A036561(n)))` -/
def P15757104613732741039.Spec : Prop :=
  ∀ n, P15757104613732741039.a n = A026970 n

end A026970

/-!
# A026973: a(n) = Sum_{k=0..n-2} T(n,k) * T(n,k+2), with T given by A026648.

The programs for A026973, there is no canonical definition to state claims against.
-/

/-! ## A026973.P8350418040861539398

`A028901(A294466(n)*A315749(n))`
-/

namespace A026973.P8350418040861539398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028901 (A294466 n * A315749 n).toNat

end

end A026973.P8350418040861539398

/-!
# A026975: a(n) = Sum_{k=0..n} (k+1) * A026648(n,k).

The programs for A026975, the canonical program `A026975.P1099561128268939798` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A026975 has offset 0).

The definition of A026975 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 301 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A026975.P258779238593618241

`(n/2+1)*A026655(n)`
-/

namespace A026975.P258779238593618241
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℚ) / 2 + 1) * (A026655 n : ℚ)

end

end A026975.P258779238593618241

namespace A026975

/-- `(n/2+1)*A026655(n)` -/
def P258779238593618241.Spec : Prop :=
  ∀ n, P258779238593618241.a n = (A026975 n : ℚ)

end A026975

/-! ## A026975.P4477801458846720582

`(n/2+1)*A000034(n)*A123347(A004526(n))`
-/

namespace A026975.P4477801458846720582
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℚ) / 2 + 1) * (A000034 n * A123347 (A004526 n).toNat : ℚ)

end

end A026975.P4477801458846720582

namespace A026975

/-- `(n/2+1)*A000034(n)*A123347(A004526(n))` -/
def P4477801458846720582.Spec : Prop :=
  ∀ n, P4477801458846720582.a n = (A026975 n : ℚ)

end A026975

/-! ## A026975.P1099561128268939798

`8*a(n-2)-12*a(n-4)-16*a(n-6)-4*a(n-8)` with `a(0)=1, a(1)=3, a(2)=10, a(3)=25, a(4)=66, a(5)=154, a(6)=392, a(7)=882`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A026975

/-- `8*a(n-2)-12*a(n-4)-16*a(n-6)-4*a(n-8)` -/
def P1099561128268939798.Spec : Prop :=
  ∀ n, P1099561128268939798.a n = A026975 n

theorem P1099561128268939798.correct : P1099561128268939798.Spec := by
  intro n
  simp only [A026975]

end A026975

/-! ## A026975.P7229243607098411060

`A014682((n+2)*A026655(n))`
-/

namespace A026975.P7229243607098411060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 ((n + 2 : ℤ) * A026655 n).toNat

end

end A026975.P7229243607098411060

namespace A026975

/-- `A014682((n+2)*A026655(n))` -/
def P7229243607098411060.Spec : Prop :=
  ∀ n, P7229243607098411060.a n = A026975 n

end A026975

/-! ## A026975.P15267382828009595986

`A014682(A026655(n)*A058321(n))`
-/

namespace A026975.P15267382828009595986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A026655 n * A058321 n).toNat

end

end A026975.P15267382828009595986

namespace A026975

/-- `A014682(A026655(n)*A058321(n))` -/
def P15267382828009595986.Spec : Prop :=
  ∀ n, P15267382828009595986.a n = A026975 n

end A026975

/-!
# A026980: a(n) = Sum_{k=0..n} (k+1) * A026659(n,k).

The programs for A026980, there is no canonical definition to state claims against.
-/

/-! ## A026980.P5692947272923124385

`(n/2+1)*A026666(n)`
-/

namespace A026980.P5692947272923124385
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℚ) / 2 + 1) * (A026666 n : ℚ)

end

end A026980.P5692947272923124385

/-! ## A026980.P13667298187935861190

`A026666(n)+A014682(n*A026666(n))`
-/

namespace A026980.P13667298187935861190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026666 n + A014682 ((n : ℤ) * A026666 n).toNat

end

end A026980.P13667298187935861190

/-! ## A026980.P12004480170493437144

`A014682((n+2)*A026666(n))`
-/

namespace A026980.P12004480170493437144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 ((n + 2 : ℤ) * A026666 n).toNat

end

end A026980.P12004480170493437144

/-! ## A026980.P8633625728160494724

`A014682(A026666(n)*A058321(n))`
-/

namespace A026980.P8633625728160494724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A026666 n * A058321 n).toNat

end

end A026980.P8633625728160494724

/-! ## A026980.P12694938648278584035

`A110654((n+2)*A026666(n))`
-/

namespace A026980.P12694938648278584035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 ((n + 2 : ℤ) * A026666 n).toNat

end

end A026980.P12694938648278584035

/-!
# A026981: Self-convolution of array T given by A026670.

The programs for A026981, there is no canonical definition to state claims against.
-/

/-! ## A026981.P10714443382710413094

`A225618(n+1)+A003056(A042735(n))`
-/

namespace A026981.P10714443382710413094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225618 (n + 1) + A003056 (A042735 n).toNat

end

end A026981.P10714443382710413094

/-! ## A026981.P1171261970271643261

`A269384(lcm(A045499(n), A269384(n+1)))`
-/

namespace A026981.P1171261970271643261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269384 (Int.lcm (A045499 n) (A269384 (n + 1)))

end

end A026981.P1171261970271643261

/-!
# A026982: a(n) = Sum_{k=0..n-1} T(n,k) * T(n,k+1), with T given by A026670.

The programs for A026982, there is no canonical definition to state claims against.
-/

/-! ## A026982.P7679093067341113619

`A065361(A006958(n+1)*A080620(n))`
-/

namespace A026982.P7679093067341113619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065361 (A006958 (n + 1) * A080620 n).toNat

end

end A026982.P7679093067341113619

/-!
# A026983: a(n) = Sum_{k=0..n-2} T(n,k) * T(n,k+2), with T given by A026670.

The programs for A026983, there is no canonical definition to state claims against.
-/

/-! ## A026983.P11063684529433462688

`A320521(n+1)-A070080(A006976(n))`
-/

namespace A026983.P11063684529433462688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320521 (n + 1) - A070080 (A006976 n).toNat

end

end A026983.P11063684529433462688

/-!
# A026985: a(n) = Sum_{k=0..n} (k+1) * A026670(n, k).

The programs for A026985, the canonical program `A026985.P17962102269186298352` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A026985 has offset 0).

The definition of A026985 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 312 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A026985.P7887774388539295249

`(n/2+1)*A026677(n)`
-/

namespace A026985.P7887774388539295249
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℚ) / 2 + 1) * (A026677 n : ℚ)

end

end A026985.P7887774388539295249

namespace A026985

/-- `(n/2+1)*A026677(n)` -/
def P7887774388539295249.Spec : Prop :=
  ∀ n, P7887774388539295249.a n = (A026985 n : ℚ)

end A026985

/-! ## A026985.P13127445629343576831

`(n+2)/2*∑[A026733(n)]`
-/

namespace A026985.P13127445629343576831
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026733 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℚ) / 2 * ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ)

end

end A026985.P13127445629343576831

namespace A026985

/-- `(n+2)/2*∑[A026733(n)]` -/
def P13127445629343576831.Spec : Prop :=
  ∀ n, P13127445629343576831.a n = (A026985 n : ℚ)

end A026985

/-! ## A026985.P17962102269186298352

`A026733(or(1, n))*A026741(n+2)`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A026985

/-- `A026733(or(1, n))*A026741(n+2)` -/
def P17962102269186298352.Spec : Prop :=
  ∀ n, P17962102269186298352.a n = A026985 n

theorem P17962102269186298352.correct : P17962102269186298352.Spec := by
  intro n
  simp only [A026985]

end A026985

/-! ## A026985.P13949809601492246213

`A026733(A109613(n))*A026741(n+2)`
-/

namespace A026985.P13949809601492246213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026733 (A109613 n).toNat * A026741 (n + 2)

end

end A026985.P13949809601492246213

namespace A026985

/-- `A026733(A109613(n))*A026741(n+2)` -/
def P13949809601492246213.Spec : Prop :=
  ∀ n, P13949809601492246213.a n = A026985 n

end A026985

/-! ## A026985.P17161335661992183372

`A014682((n+2)*A026677(n))`
-/

namespace A026985.P17161335661992183372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 ((n + 2 : ℤ) * A026677 n).toNat

end

end A026985.P17161335661992183372

namespace A026985

/-- `A014682((n+2)*A026677(n))` -/
def P17161335661992183372.Spec : Prop :=
  ∀ n, P17161335661992183372.a n = A026985 n

end A026985

/-!
# A026990: a(n) = Sum_{k=0..n} (k+1) * A026681(n, k).

The programs for A026990, there is no canonical definition to state claims against.
-/

/-! ## A026990.P13272086570326771953

`(n/2+1)*A026688(n)`
-/

namespace A026990.P13272086570326771953
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℚ) / 2 + 1) * (A026688 n : ℚ)

end

end A026990.P13272086570326771953

/-! ## A026990.P15333482384736670983

`A014682((n+2)*A026688(n))`
-/

namespace A026990.P15333482384736670983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 ((n + 2 : ℤ) * A026688 n).toNat

end

end A026990.P15333482384736670983

/-! ## A026990.P5407729260276685413

`A318518((n+2)*A026688(n))`
-/

namespace A026990.P5407729260276685413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318518 ((n + 2 : ℤ) * A026688 n).toNat

end

end A026990.P5407729260276685413

/-! ## A026990.P10531398937251875814

`A006370((n+2)*A026688(n))`
-/

namespace A026990.P10531398937251875814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006370 ((n + 2 : ℤ) * A026688 n).toNat

end

end A026990.P10531398937251875814

/-! ## A026990.P216639457766165956

`A030451((n+2)*A026688(n))`
-/

namespace A026990.P216639457766165956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030451 ((n + 2 : ℤ) * A026688 n).toNat

end

end A026990.P216639457766165956

/-!
# A026991: Self-convolution of array T given by A026692.

The programs for A026991, there is no canonical definition to state claims against.
-/

/-! ## A026991.P13381819992428416595

`A348565(2^n)+∏{e}[n+1, #+1]-∑{e}[n+1, #]`
-/

namespace A026991.P13381819992428416595
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348565 (2 ^ n) + (((∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1) : ℕ) : ℤ) - ((∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p : ℕ) : ℤ))

end

end A026991.P13381819992428416595

/-! ## A026991.P15156510816562356404

`A359236(5^n)+A047781(n)`
-/

namespace A026991.P15156510816562356404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359236 (5 ^ n) + A047781 n

end

end A026991.P15156510816562356404

/-!
# A026992: a(n) = Sum_{k=0..n-1} T(n,k) * T(n,k+1), with T given by A026692.

The programs for A026992, there is no canonical definition to state claims against.
-/

/-! ## A026992.P18052621866249057797

`eq[0, C(2*n+1, n)%3]*A001764(n*(n*(n-5)+5)²)`
-/

namespace A026992.P18052621866249057797
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (2 * n + 1) n % 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j = f2 j) n : ℤ) * A001764 ((n : ℤ) * ((n : ℤ) * ((n : ℤ) - 5) + 5) ^ 2).toNat

end

end A026992.P18052621866249057797

/-!
# A026993: a(n) = Sum_{k=0..n-2} T(n,k) * T(n,k+2), with T given by A026692.

The programs for A026993, there is no canonical definition to state claims against.
-/

/-! ## A026993.P4500129458618228921

`A194920(∑[∑{d}[A177408(n+2), #]])`
-/

namespace A026993.P4500129458618228921
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177408 (n + 2)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n).natAbs, d

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194920 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A026993.P4500129458618228921

/-!
# A026994: a(n) = Sum_{k=0..n-3} T(n,k) * T(n,k+3), with T given by A026692.

The programs for A026994, there is no canonical definition to state claims against.
-/

/-! ## A026994.P8963148175254579706

`A056847(or(3, A065928(n)))`
-/

namespace A026994.P8963148175254579706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056847 (Int.lor 3 (A065928 n)).toNat

end

end A026994.P8963148175254579706

/-!
# A026995: a(n) = Sum_{k=0..n} (k+1) * A026692(n, k).

The programs for A026995, there is no canonical definition to state claims against.
-/

/-! ## A026995.P15808153136943415384

`(n+2)/2*A026699(n)`
-/

namespace A026995.P15808153136943415384
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℚ) / 2 * (A026699 n : ℚ)

end

end A026995.P15808153136943415384

/-! ## A026995.P3150301642820435630

`A026699(n)+A006370(n*A026699(n))`
-/

namespace A026995.P3150301642820435630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026699 n + A006370 ((n : ℤ) * A026699 n).toNat

end

end A026995.P3150301642820435630

/-! ## A026995.P3569067715292900525

`A026741(n*A026699(n))+A026699(n)`
-/

namespace A026995.P3569067715292900525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 ((n : ℤ) * A026699 n).toNat + A026699 n

end

end A026995.P3569067715292900525

/-! ## A026995.P2790716780870961043

`A006370((n+2)*A026699(n))`
-/

namespace A026995.P2790716780870961043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006370 ((n + 2 : ℤ) * A026699 n).toNat

end

end A026995.P2790716780870961043

/-! ## A026995.P7440086052848356220

`A026741((n+2)*A026699(n))`
-/

namespace A026995.P7440086052848356220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 ((n + 2 : ℤ) * A026699 n).toNat

end

end A026995.P7440086052848356220

/-!
# A026996: Self-convolution of array T given by A026703.

The programs for A026996, there is no canonical definition to state claims against.
-/

/-! ## A026996.P11692011734957491795

`A210380(A150326(n))`
-/

namespace A026996.P11692011734957491795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210380 (A150326 n).toNat

end

end A026996.P11692011734957491795

/-!
# A026997: a(n) = Sum_{k=0..n-1} T(n,k) * T(n,k+1), with T given by A026703.

The programs for A026997, there is no canonical definition to state claims against.
-/

/-! ## A026997.P2702781103909322687

`A161153(A000351(n))-A001109(n)`
-/

namespace A026997.P2702781103909322687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161153 (A000351 n).toNat - A001109 n

end

end A026997.P2702781103909322687

/-!
# A026998: Triangular array T read by rows: T(n, k) = t(n, 2k), t given by A027960, 0 <= k <= n, n >= 0.

The programs for A026998, there is no canonical definition to state claims against.
-/

/-! ## A026998.P13293692932980228183

`A210215(n+1)+A210872(n+1)-A027935(n)`
-/

namespace A026998.P13293692932980228183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210215 (n + 1) + (A210872 (n + 1) - A027935 n)

end

end A026998.P13293692932980228183

/-! ## A026998.P15934256346795304752

`A027960(2*n-∑[char[∑[n+1]]])`
-/

namespace A026998.P15934256346795304752
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027960 (2 * n - ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A026998.P15934256346795304752

/-! ## A026998.P3026967042296295197

`A020985(n)²*A027960(A133280(n))`
-/

namespace A026998.P3026967042296295197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020985 n ^ 2 * A027960 (A133280 n).toNat

end

end A026998.P3026967042296295197

/-! ## A026998.P5866625968821891633

`A027960(A133280(n))*A054977(n+3)`
-/

namespace A026998.P5866625968821891633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027960 (A133280 n).toNat * A054977 (n + 3)

end

end A026998.P5866625968821891633

/-! ## A026998.P8029078743244172425

`A027960(A133280(n))%(A013610(n)+1)`
-/

namespace A026998.P8029078743244172425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A027960 (A133280 n).toNat) (A013610 n + 1)

end

end A026998.P8029078743244172425

/-! ## A026998.P1695641202961634882

`A027960(A133280(n))+A053741(n+1)%2`
-/

namespace A026998.P1695641202961634882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027960 (A133280 n).toNat + Int.tmod (A053741 (n + 1)) 2

end

end A026998.P1695641202961634882

/-! ## A026998.P16839002782893746751

`A027960(A133280(n))+A163300(n+1)%2`
-/

namespace A026998.P16839002782893746751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027960 (A133280 n).toNat + Int.tmod (A163300 (n + 1)) 2

end

end A026998.P16839002782893746751

/-! ## A026998.P16072782246152294188

`A027960(A133280(n))/∑{e}[A020639(n+1), #]!`
-/

namespace A026998.P16072782246152294188
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A027960 (A133280 n).toNat : ℚ) / (Nat.factorial (∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p) : ℚ)

end

end A026998.P16072782246152294188

/-! ## A026998.P176548797303465354

`A027960(A133280(n))/A057979(2*n)`
-/

namespace A026998.P176548797303465354
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A027960 (A133280 n).toNat : ℚ) / (A057979 (2 * n) : ℚ)

end

end A026998.P176548797303465354

/-! ## A026998.P6491841329469711603

`A027960(A133280(n))*A057427(3*n+4)`
-/

namespace A026998.P6491841329469711603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027960 (A133280 n).toNat * A057427 (3 * n + 4)

end

end A026998.P6491841329469711603

/-! ## A026998.P6360639992235036257

`(A027960(A133280(n))+1)*A010052(A262678((n+1)²))-1`
-/

namespace A026998.P6360639992235036257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A027960 (A133280 n).toNat + 1) * A010052 (A262678 ((n + 1) ^ 2)).toNat - 1

end

end A026998.P6360639992235036257

/-!
# A026999: Distinct values of A026998.

The programs for A026999, there is no canonical definition to state claims against.
-/

/-! ## A026999.P4221328004522949919

`eq[1, char[A026998(n)]]`
-/

namespace A026999.P4221328004522949919
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026998 n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A026999.P4221328004522949919

/-! ## A026999.P15370716058582786891

`eq[0, A124539(A244414(n+1))]`
-/

namespace A026999.P15370716058582786891
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124539 (A244414 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A026999.P15370716058582786891

/-! ## A026999.P17238957068992247204

`eq[1, A363718(A318557(n+1))]`
-/

namespace A026999.P17238957068992247204
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363718 (A318557 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A026999.P17238957068992247204

/-! ## A026999.P12295912294870338666

`lt[1, A147843(A259447(n+1))]`
-/

namespace A026999.P12295912294870338666
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147843 (A259447 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A026999.P12295912294870338666

/-! ## A026999.P5697052519034984256

`eq[1, A245207(A039807(n))%5]`
-/

namespace A026999.P5697052519034984256
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A245207 (A039807 n).toNat) 5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A026999.P5697052519034984256

