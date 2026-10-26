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
import Seq.B000.C013
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C035
import Seq.B000.C039
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B001.C010
import Seq.B001.C011
import Seq.B001.C012
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B004.C000
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B008.C000
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
import Seq.B012.C000
import Seq.B013.C000
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
import Seq.Opaque.C020
import Seq.Opaque.C021
import Seq.Opaque.C022
import Seq.Opaque.C023
import Seq.Opaque.C025

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A253900: a(n) is the number of squares of the form x^2 + x + n^2 for 0 <= x <= n^2.

The programs for A253900, the canonical program `A253900.P3316093139165672320` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A253900 has offset 1).

The definition of A253900 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A253900.P2595983838478024910

`A264263(n+1)+1`
-/

namespace A253900.P2595983838478024910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264263 (n + 1) + 1

end

end A253900.P2595983838478024910

namespace A253900

/-- `A264263(n+1)+1` -/
def P2595983838478024910.Spec : Prop :=
  ∀ n, P2595983838478024910.a n = A253900 (n + 1)

theorem P2595983838478024910.correct : P2595983838478024910.Spec := by
  intro n
  simp only [A253900, Nat.add_sub_cancel, A253900.P2595983838478024910.a, A253900.P3316093139165672320.a, A129296, A129296.P6623402927569410718.f1, A129296.P6623402927569410718.a, A264263, A264263.P13926301945791695937.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A253900

/-! ## A253900.P3316093139165672320

`A129296(2*(n+1))`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A253900

/-- `A129296(2*(n+1))` -/
def P3316093139165672320.Spec : Prop :=
  ∀ n, P3316093139165672320.a n = A253900 (n + 1)

theorem P3316093139165672320.correct : P3316093139165672320.Spec := by
  intro n
  simp only [A253900, Nat.add_sub_cancel]

end A253900

/-! ## A253900.P13660255723889102256

`A066728(Δ[n²])+1`
-/

namespace A253900.P13660255723889102256
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066728 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat + 1

end

end A253900.P13660255723889102256

namespace A253900

/-- `A066728(Δ[n²])+1` -/
def P13660255723889102256.Spec : Prop :=
  ∀ n, P13660255723889102256.a n = A253900 (n + 1)

end A253900

/-! ## A253900.P14722169365823327997

`A347191(2*(n+1))/2`
-/

namespace A253900.P14722169365823327997
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A347191 (2 * (n + 1)) : ℚ) / 2

end

end A253900.P14722169365823327997

namespace A253900

/-- `A347191(2*(n+1))/2` -/
def P14722169365823327997.Spec : Prop :=
  ∀ n, P14722169365823327997.a n = (A253900 (n + 1) : ℚ)

end A253900

/-! ## A253900.P11620991392376472945

`A046667(A347191(2*(n+1))+2)`
-/

namespace A253900.P11620991392376472945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046667 (A347191 (2 * (n + 1)) + 2).toNat

end

end A253900.P11620991392376472945

namespace A253900

/-- `A046667(A347191(2*(n+1))+2)` -/
def P11620991392376472945.Spec : Prop :=
  ∀ n, P11620991392376472945.a n = A253900 (n + 1)

end A253900

/-! ## A253900.P17961715167127147021

`A075884(2*A347191(2*(n+1)))`
-/

namespace A253900.P17961715167127147021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075884 (2 * A347191 (2 * (n + 1))).toNat

end

end A253900.P17961715167127147021

namespace A253900

/-- `A075884(2*A347191(2*(n+1)))` -/
def P17961715167127147021.Spec : Prop :=
  ∀ n, P17961715167127147021.a n = A253900 (n + 1)

end A253900

/-! ## A253900.P330406064220797788

`A000005(A278160(2*n+1))/2`
-/

namespace A253900.P330406064220797788
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000005 (A278160 (2 * n + 1)).toNat : ℚ) / 2

end

end A253900.P330406064220797788

namespace A253900

/-- `A000005(A278160(2*n+1))/2` -/
def P330406064220797788.Spec : Prop :=
  ∀ n, P330406064220797788.a n = (A253900 (n + 1) : ℚ)

end A253900

/-! ## A253900.P15376734020275854234

`A000005(2*n+1)/2*A099774(n+2)`
-/

namespace A253900.P15376734020275854234
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000005 (2 * n + 1) : ℚ) / 2 * (A099774 (n + 2) : ℚ)

end

end A253900.P15376734020275854234

namespace A253900

/-- `A000005(2*n+1)/2*A099774(n+2)` -/
def P15376734020275854234.Spec : Prop :=
  ∀ n, P15376734020275854234.a n = (A253900 (n + 1) : ℚ)

end A253900

/-! ## A253900.P2704324935033928946

`A001227(2*n+1)/2*A099774(n+2)`
-/

namespace A253900.P2704324935033928946
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001227 (2 * n + 1) : ℚ) / 2 * (A099774 (n + 2) : ℚ)

end

end A253900.P2704324935033928946

namespace A253900

/-- `A001227(2*n+1)/2*A099774(n+2)` -/
def P2704324935033928946.Spec : Prop :=
  ∀ n, P2704324935033928946.a n = (A253900 (n + 1) : ℚ)

end A253900

/-! ## A253900.P17477989809178005253

`A137921(2*n+1)/2*A099774(n+2)`
-/

namespace A253900.P17477989809178005253
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A137921 (2 * n + 1) : ℚ) / 2 * (A099774 (n + 2) : ℚ)

end

end A253900.P17477989809178005253

namespace A253900

/-- `A137921(2*n+1)/2*A099774(n+2)` -/
def P17477989809178005253.Spec : Prop :=
  ∀ n, P17477989809178005253.a n = (A253900 (n + 1) : ℚ)

end A253900

/-! ## A253900.P2179866262159577987

`(A059907(2*(n+1))+A001227(2*n+1))/2`
-/

namespace A253900.P2179866262159577987
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A059907 (2 * (n + 1)) + A001227 (2 * n + 1) : ℚ) / 2

end

end A253900.P2179866262159577987

namespace A253900

/-- `(A059907(2*(n+1))+A001227(2*n+1))/2` -/
def P2179866262159577987.Spec : Prop :=
  ∀ n, P2179866262159577987.a n = (A253900 (n + 1) : ℚ)

end A253900

/-! ## A253900.P3257316316781869342

`A000005(2*n+1)*A000005(2*n+3)/2`
-/

namespace A253900.P3257316316781869342
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000005 (2 * n + 1) * A000005 (2 * n + 3) : ℚ) / 2

end

end A253900.P3257316316781869342

namespace A253900

/-- `A000005(2*n+1)*A000005(2*n+3)/2` -/
def P3257316316781869342.Spec : Prop :=
  ∀ n, P3257316316781869342.a n = (A253900 (n + 1) : ℚ)

end A253900

/-! ## A253900.P2468245469517669693

`A025480(A099774(n+1)*A099774(n+2))`
-/

namespace A253900.P2468245469517669693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A099774 (n + 1) * A099774 (n + 2)).toNat

end

end A253900.P2468245469517669693

namespace A253900

/-- `A025480(A099774(n+1)*A099774(n+2))` -/
def P2468245469517669693.Spec : Prop :=
  ∀ n, P2468245469517669693.a n = A253900 (n + 1)

end A253900

/-! ## A253900.P13144266175373485147

`A032742(A099774(n+1)*A099774(n+2))`
-/

namespace A253900.P13144266175373485147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (A099774 (n + 1) * A099774 (n + 2)).toNat

end

end A253900.P13144266175373485147

namespace A253900

/-- `A032742(A099774(n+1)*A099774(n+2))` -/
def P13144266175373485147.Spec : Prop :=
  ∀ n, P13144266175373485147.a n = A253900 (n + 1)

end A253900

/-! ## A253900.P418760684214220002

`A160413(A001227(2*n+3)*A320111(2*n+1))`
-/

namespace A253900.P418760684214220002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160413 (A001227 (2 * n + 3) * A320111 (2 * n + 1)).toNat

end

end A253900.P418760684214220002

namespace A253900

/-- `A160413(A001227(2*n+3)*A320111(2*n+1))` -/
def P418760684214220002.Spec : Prop :=
  ∀ n, P418760684214220002.a n = A253900 (n + 1)

end A253900

/-! ## A253900.P15236713915585302381

`∏{e}[(2*(n+1))²-1, #+1]/2`
-/

namespace A253900.P15236713915585302381
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 * (n + 1)) ^ 2 : ℤ) - 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (f1 n).natAbs, (Nat.factorization (f1 n).natAbs p + 1) : ℕ) : ℚ) / 2

end

end A253900.P15236713915585302381

namespace A253900

/-- `∏{e}[(2*(n+1))²-1, #+1]/2` -/
def P15236713915585302381.Spec : Prop :=
  ∀ n, P15236713915585302381.a n = (A253900 (n + 1) : ℚ)

end A253900

/-! ## A253900.P2688479137375113449

`floor(∏{e}[(2*n+1)²+4*n+2, #+1]/2)`
-/

namespace A253900.P2688479137375113449
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n + 1) ^ 2 + (4 * n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1) : ℕ) : ℚ) / 2⌋

end

end A253900.P2688479137375113449

namespace A253900

/-- `floor(∏{e}[(2*n+1)²+4*n+2, #+1]/2)` -/
def P2688479137375113449.Spec : Prop :=
  ∀ n, P2688479137375113449.a n = A253900 (n + 1)

end A253900

/-! ## A253900.P1818807841384458349

`A000005((2*(n+1))²-1)/2`
-/

namespace A253900.P1818807841384458349
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000005 ((2 * (n + 1)) ^ 2 - 1) : ℚ) / 2

end

end A253900.P1818807841384458349

namespace A253900

/-- `A000005((2*(n+1))²-1)/2` -/
def P1818807841384458349.Spec : Prop :=
  ∀ n, P1818807841384458349.a n = (A253900 (n + 1) : ℚ)

end A253900

/-! ## A253900.P4495498808705201959

`A004526(A000005(A005563(2*n+1)))`
-/

namespace A253900.P4495498808705201959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A000005 (A005563 (2 * n + 1)).toNat).toNat

end

end A253900.P4495498808705201959

namespace A253900

/-- `A004526(A000005(A005563(2*n+1)))` -/
def P4495498808705201959.Spec : Prop :=
  ∀ n, P4495498808705201959.a n = A253900 (n + 1)

end A253900

/-! ## A253900.P13284921984662713828

`A004525(A000005(A085046(2*(n+1))))`
-/

namespace A253900.P13284921984662713828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A000005 (A085046 (2 * (n + 1))).toNat).toNat

end

end A253900.P13284921984662713828

namespace A253900

/-- `A004525(A000005(A085046(2*(n+1))))` -/
def P13284921984662713828.Spec : Prop :=
  ∀ n, P13284921984662713828.a n = A253900 (n + 1)

end A253900

/-!
# A253901: a(n) = Product_{d divides n} ((d-1)!)^moebius(n/d).

The programs for A253901, there is no canonical definition to state claims against.
-/

/-! ## A253901.P16768971431848119603

`A250269(n+1)/A014963(n+1)`
-/

namespace A253901.P16768971431848119603
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A250269 (n + 1) : ℚ) / (A014963 (n + 1) : ℚ)

end

end A253901.P16768971431848119603

/-! ## A253901.P1727108421785477545

`A250269(n+1)/A014973(A007947(n+1))`
-/

namespace A253901.P1727108421785477545
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A250269 (n + 1) : ℚ) / (A014973 (A007947 (n + 1)).toNat : ℚ)

end

end A253901.P1727108421785477545

/-! ## A253901.P12177559252108256853

`A250269(n+1)/A014973(A052410(n+1))`
-/

namespace A253901.P12177559252108256853
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A250269 (n + 1) : ℚ) / (A014973 (A052410 (n + 1)).toNat : ℚ)

end

end A253901.P12177559252108256853

/-! ## A253901.P2041958932353613540

`A250269(n+1)/A003418(n+1)*A003418(n)`
-/

namespace A253901.P2041958932353613540
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A250269 (n + 1) : ℚ) / (A003418 (n + 1) : ℚ) * (A003418 n : ℚ)

end

end A253901.P2041958932353613540

/-! ## A253901.P7532576597317411914

`A001783(n+1)/A014963(n+1)*A193679(n+1)`
-/

namespace A253901.P7532576597317411914
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001783 (n + 1) : ℚ) / (A014963 (n + 1) : ℚ) * (A193679 (n + 1) : ℚ)

end

end A253901.P7532576597317411914

/-!
# A253902: Write numbers 1, then 2^2 down to 1, then 3^2 down to 1, then 4^2 down to 1 and so on.

The programs for A253902, there is no canonical definition to state claims against.
-/

/-! ## A253902.P13078497689885156922

`A000330(∑[char[∑[n²]]])-n`
-/

namespace A253902.P13078497689885156922
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000330 (∑ j ∈ Finset.range (n + 1), f1 j) - (n : ℤ)

end

end A253902.P13078497689885156922

/-! ## A253902.P15486814058933975462

`A074784(∑[char[∑[n²]]])-n`
-/

namespace A253902.P15486814058933975462
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074784 (∑ j ∈ Finset.range (n + 1), f1 j) - (n : ℤ)

end

end A253902.P15486814058933975462

/-! ## A253902.P11969325197360374402

`A231677(∑[char[∑[n²]]])-n`
-/

namespace A253902.P11969325197360374402
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231677 (∑ j ∈ Finset.range (n + 1), f1 j) - (n : ℤ)

end

end A253902.P11969325197360374402

/-! ## A253902.P18313570468567142718

`A231681(∑[char[∑[n²]]])-n`
-/

namespace A253902.P18313570468567142718
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231681 (∑ j ∈ Finset.range (n + 1), f1 j) - (n : ℤ)

end

end A253902.P18313570468567142718

/-! ## A253902.P13902064368063210047

`A231685(∑[char[∑[n²]]])-n`
-/

namespace A253902.P13902064368063210047
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231685 (∑ j ∈ Finset.range (n + 1), f1 j) - (n : ℤ)

end

end A253902.P13902064368063210047

/-! ## A253902.P14627752753361358282

`eq[1, A278111(n+1)]-2*n`
-/

namespace A253902.P14627752753361358282
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278111 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ) - (2 * n : ℤ)

end

end A253902.P14627752753361358282

/-! ## A253902.P406250424622860870

`round(root(3*(n+1), 3))²+1-A064866(n+1)`
-/

namespace A253902.P406250424622860870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((3 * (n + 1) : ℝ) ^ (1 / (3 : ℝ))) ^ 2 + (1 - A064866 (n + 1))

end

end A253902.P406250424622860870

/-! ## A253902.P14864494766628516311

`A056520(A074279(n+1))-(n+1)`
-/

namespace A253902.P14864494766628516311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056520 (A074279 (n + 1)).toNat - (n + 1 : ℤ)

end

end A253902.P14864494766628516311

/-! ## A253902.P3768439565900683466

`A145066(A074279(n+1))-A377721(n+1)`
-/

namespace A253902.P3768439565900683466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145066 (A074279 (n + 1)).toNat - A377721 (n + 1)

end

end A253902.P3768439565900683466

/-! ## A253902.P13322738010681107756

`A074279(n+1)²-A023443(A064866(n+1))`
-/

namespace A253902.P13322738010681107756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074279 (n + 1) ^ 2 - A023443 (A064866 (n + 1)).toNat

end

end A253902.P13322738010681107756

/-!
# A253903: The characteristic function of square pyramidal numbers.

The programs for A253903, the canonical program `A253903.P5728462217858652956` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A253903 has offset 0).

The definition of A253903 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A253903.P5728462217858652956

`char[∑[n²]]`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A253903

/-- `char[∑[n²]]` -/
def P5728462217858652956.Spec : Prop :=
  ∀ n, (P5728462217858652956.a n : ℤ) = A253903 n

theorem P5728462217858652956.correct : P5728462217858652956.Spec := by
  intro n
  simp only [A253903]

end A253903

/-! ## A253903.P17994140277384027455

`and(1, char[∑[n^2]])`
-/

namespace A253903.P17994140277384027455
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 (if ∃ j, f1 j = n then 1 else 0)

end

end A253903.P17994140277384027455

namespace A253903

/-- `and(1, char[∑[n^2]])` -/
def P17994140277384027455.Spec : Prop :=
  ∀ n, (P17994140277384027455.a n : ℤ) = A253903 n

end A253903

/-! ## A253903.P6432112774347661215

`ceil(tanh(char[∑[n^2]]))`
-/

namespace A253903.P6432112774347661215
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.tanh ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℝ)⌉

end

end A253903.P6432112774347661215

namespace A253903

/-- `ceil(tanh(char[∑[n^2]]))` -/
def P6432112774347661215.Spec : Prop :=
  ∀ n, P6432112774347661215.a n = A253903 n

end A253903

/-! ## A253903.P2188983326629426313

`floor(tan(char[∑[n*n]]))`
-/

namespace A253903.P2188983326629426313
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.tan ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℝ)⌋

end

end A253903.P2188983326629426313

namespace A253903

/-- `floor(tan(char[∑[n*n]]))` -/
def P2188983326629426313.Spec : Prop :=
  ∀ n, P2188983326629426313.a n = A253903 n

end A253903

/-! ## A253903.P13018751582152675458

`floor(sinh(char[∑[n*n]]))`
-/

namespace A253903.P13018751582152675458
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sinh ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℝ)⌋

end

end A253903.P13018751582152675458

namespace A253903

/-- `floor(sinh(char[∑[n*n]]))` -/
def P13018751582152675458.Spec : Prop :=
  ∀ n, P13018751582152675458.a n = A253903 n

end A253903

/-! ## A253903.P12497031791470068237

`C(char[∑[(n+1)*(n-1)+1]]+1, 2)`
-/

namespace A253903.P12497031791470068237
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * ((n : ℤ) - 1) + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose ((if ∃ j, f1 j = (n : ℤ) then 1 else 0) + 1) 2

end

end A253903.P12497031791470068237

namespace A253903

/-- `C(char[∑[(n+1)*(n-1)+1]]+1, 2)` -/
def P12497031791470068237.Spec : Prop :=
  ∀ n, (P12497031791470068237.a n : ℤ) = A253903 n

end A253903

/-! ## A253903.P15439103140670748043

`log2(char[∑[A000290(n)]]+1)`
-/

namespace A253903.P15439103140670748043
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (((if ∃ j, f1 j = (n : ℤ) then 1 else 0) + 1 : ℕ) : ℝ)

end

end A253903.P15439103140670748043

namespace A253903

/-- `log2(char[∑[A000290(n)]]+1)` -/
def P15439103140670748043.Spec : Prop :=
  ∀ n, P15439103140670748043.a n = (A253903 n : ℝ)

end A253903

/-! ## A253903.P15252811268724975767

`ceil(char[∑[A000290(n+1)]]/3)^n`
-/

namespace A253903.P15252811268724975767
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℚ) / 3⌉ ^ n

end

end A253903.P15252811268724975767

namespace A253903

/-- `ceil(char[∑[A000290(n+1)]]/3)^n` -/
def P15252811268724975767.Spec : Prop :=
  ∀ n, P15252811268724975767.a n = A253903 n

end A253903

/-! ## A253903.P11126399880136202991

`A010051(2*A064866(n+1))`
-/

namespace A253903.P11126399880136202991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (2 * A064866 (n + 1)).toNat

end

end A253903.P11126399880136202991

namespace A253903

/-- `A010051(2*A064866(n+1))` -/
def P11126399880136202991.Spec : Prop :=
  ∀ n, P11126399880136202991.a n = A253903 n

end A253903

/-! ## A253903.P12424316701283249317

`A010051(A064866(n+1)+A064866(n+1))`
-/

namespace A253903.P12424316701283249317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (A064866 (n + 1) + A064866 (n + 1)).toNat

end

end A253903.P12424316701283249317

namespace A253903

/-- `A010051(A064866(n+1)+A064866(n+1))` -/
def P12424316701283249317.Spec : Prop :=
  ∀ n, P12424316701283249317.a n = A253903 n

end A253903

/-! ## A253903.P8390346181691744335

`A062862(2*n)%2`
-/

namespace A253903.P8390346181691744335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A062862 (2 * n)) 2

end

end A253903.P8390346181691744335

namespace A253903

/-- `A062862(2*n)%2` -/
def P8390346181691744335.Spec : Prop :=
  ∀ n, P8390346181691744335.a n = A253903 n

end A253903

/-! ## A253903.P14219379773409856075

`A238121(lt[A238121(n), 2])`
-/

namespace A253903.P14219379773409856075
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238121 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238121 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A253903.P14219379773409856075

namespace A253903

/-- `A238121(lt[A238121(n), 2])` -/
def P14219379773409856075.Spec : Prop :=
  ∀ n, P14219379773409856075.a n = A253903 n

end A253903

/-! ## A253903.P18252590581655957700

`A238121(eq[A238121(n)²², A238121(n)])`
-/

namespace A253903.P18252590581655957700
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A238121 n ^ 2) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238121 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238121 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A253903.P18252590581655957700

namespace A253903

/-- `A238121(eq[A238121(n)²², A238121(n)])` -/
def P18252590581655957700.Spec : Prop :=
  ∀ n, P18252590581655957700.a n = A253903 n

end A253903

/-! ## A253903.P11252333742241164598

`A290430(∑[n+2]-1)`
-/

namespace A253903.P11252333742241164598
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290430 (∑ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A253903.P11252333742241164598

namespace A253903

/-- `A290430(∑[n+2]-1)` -/
def P11252333742241164598.Spec : Prop :=
  ∀ n, P11252333742241164598.a n = A253903 n

end A253903

/-! ## A253903.P4728150997841799377

`floor(1/A317612(n+1))`
-/

namespace A253903.P4728150997841799377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊1 / (A317612 (n + 1) : ℚ)⌋

end

end A253903.P4728150997841799377

namespace A253903

/-- `floor(1/A317612(n+1))` -/
def P4728150997841799377.Spec : Prop :=
  ∀ n, P4728150997841799377.a n = A253903 n

end A253903

/-!
# A253908: Partial sums of A072272.

The programs for A253908, there is no canonical definition to state claims against.
-/

/-! ## A253908.P14181799351937461786

`∑[A072272(n)]`
-/

namespace A253908.P14181799351937461786
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072272 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A253908.P14181799351937461786

/-! ## A253908.P5491536458838408686

`A072272(char[1]+n)+a(n-1)` with `a(0)=1`
-/

namespace A253908.P5491536458838408686
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A072272 ((if ∃ j, f1 j = n then 1 else 0) + n) + a (n - 1)

end

end A253908.P5491536458838408686

/-! ## A253908.P16276317294683511993

`∑[A271805(2*n+1)-(A271806(2*n)+A271805(2*n))]`
-/

namespace A253908.P16276317294683511993
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271805 (2 * n + 1) - (A271806 (2 * n) + A271805 (2 * n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A253908.P16276317294683511993

/-! ## A253908.P12656577323368208547

`∑[A271803(A109043(n))]`
-/

namespace A253908.P12656577323368208547
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271803 (A109043 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A253908.P12656577323368208547

/-! ## A253908.P3129391894068741844

`∑[A271803(2*n)]`
-/

namespace A253908.P3129391894068741844
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271803 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A253908.P3129391894068741844

/-! ## A253908.P13967048549476097187

`A271803(4*n)+a(n-1)` with `a(0)=1`
-/

namespace A253908.P13967048549476097187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A271803 (4 * n) + a (n - 1)

end

end A253908.P13967048549476097187

/-! ## A253908.P13848528194636965534

`∑[A151885(2*n+1)]`
-/

namespace A253908.P13848528194636965534
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151885 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A253908.P13848528194636965534

/-! ## A253908.P1369007462647856553

`∑[∑[A151888(2*n+1)+A151888(2*n)]]`
-/

namespace A253908.P1369007462647856553
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151888 (2 * n + 1) + A151888 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A253908.P1369007462647856553

/-! ## A253908.P18100125933411532489

`∑[A247649(A048678(n))]`
-/

namespace A253908.P18100125933411532489
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247649 (A048678 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A253908.P18100125933411532489

/-! ## A253908.P16917170494113246519

`∑[A247649(A124108(n)/2)]`
-/

namespace A253908.P16917170494113246519
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247649 (SequenceMachineLib.roundAway ((A124108 n : ℚ) / 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A253908.P16917170494113246519

/-! ## A253908.P7831206734795384396

`∑[A247649(A212591(n+1))]`
-/

namespace A253908.P7831206734795384396
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247649 (A212591 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A253908.P7831206734795384396

/-! ## A253908.P13634591235743905026

`∑[A247649(A000695(n))]`
-/

namespace A253908.P13634591235743905026
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247649 (A000695 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A253908.P13634591235743905026

/-! ## A253908.P8972749379522338581

`∑[A247649(A054238(∑[n]))]`
-/

namespace A253908.P8972749379522338581
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247649 (A054238 (∑ j ∈ Finset.range (n + 1), f2 j)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A253908.P8972749379522338581

/-! ## A253908.P7548073692247446186

`∑[A247649(A124108(n))]`
-/

namespace A253908.P7548073692247446186
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247649 (A124108 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A253908.P7548073692247446186

/-!
# A253909: 1 together with the positive squares.

The programs for A253909, the canonical program `A253909.P4396033400827970723` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A253909 has offset 0).

The definition of A253909 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A253909.P4396033400827970723

`3*a(n-1)-3*a(n-2)+a(n-3)` with `a(0)=1, a(1)=1, a(2)=4, a(3)=9`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A253909

/-- `3*a(n-1)-3*a(n-2)+a(n-3)` -/
def P4396033400827970723.Spec : Prop :=
  ∀ n, P4396033400827970723.a n = A253909 n

theorem P4396033400827970723.correct : P4396033400827970723.Spec := by
  intro n
  simp only [A253909]

end A253909

/-! ## A253909.P16246206151810853442

`A028310(n)²`
-/

namespace A253909.P16246206151810853442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n ^ 2

end

end A253909.P16246206151810853442

namespace A253909

/-- `A028310(n)²` -/
def P16246206151810853442.Spec : Prop :=
  ∀ n, P16246206151810853442.a n = A253909 n

end A253909

/-! ## A253909.P6939370729442375875

`n^ceil(atan(n))`
-/

namespace A253909.P6939370729442375875
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) ^ (⌈Real.arctan (n : ℝ)⌉ : ℤ)

end

end A253909.P6939370729442375875

namespace A253909

/-- `n^ceil(atan(n))` -/
def P6939370729442375875.Spec : Prop :=
  ∀ n, P6939370729442375875.a n = (A253909 n : ℚ)

end A253909

/-! ## A253909.P7354532976247485837

`round(1/acot(n²))`
-/

namespace A253909.P7354532976247485837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (1 / SequenceMachineLib.acot (n ^ 2 : ℝ))

end

end A253909.P7354532976247485837

namespace A253909

/-- `round(1/acot(n²))` -/
def P7354532976247485837.Spec : Prop :=
  ∀ n, P7354532976247485837.a n = A253909 n

end A253909

/-! ## A253909.P15198548009628499005

`ceil(abs(γ-n))²`
-/

namespace A253909.P15198548009628499005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈|Real.eulerMascheroniConstant - (n : ℝ)|⌉ ^ 2

end

end A253909.P15198548009628499005

namespace A253909

/-- `ceil(abs(γ-n))²` -/
def P15198548009628499005.Spec : Prop :=
  ∀ n, P15198548009628499005.a n = A253909 n

end A253909

/-! ## A253909.P3020878477778711291

`floor(acot(n)+n²)`
-/

namespace A253909.P3020878477778711291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊SequenceMachineLib.acot (n : ℝ) + (n ^ 2 : ℝ)⌋

end

end A253909.P3020878477778711291

namespace A253909

/-- `floor(acot(n)+n²)` -/
def P3020878477778711291.Spec : Prop :=
  ∀ n, P3020878477778711291.a n = A253909 n

end A253909

/-! ## A253909.P8626562641884239072

`n²^floor(atan(n))`
-/

namespace A253909.P8626562641884239072
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℚ) ^ (⌊Real.arctan (n : ℝ)⌋ : ℤ)

end

end A253909.P8626562641884239072

namespace A253909

/-- `n²^floor(atan(n))` -/
def P8626562641884239072.Spec : Prop :=
  ∀ n, P8626562641884239072.a n = (A253909 n : ℚ)

end A253909

/-! ## A253909.P9469327461698384583

`C(n², floor(atan(n)))`
-/

namespace A253909.P9469327461698384583
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n ^ 2) ⌊Real.arctan (n : ℝ)⌋.toNat

end

end A253909.P9469327461698384583

namespace A253909

/-- `C(n², floor(atan(n)))` -/
def P9469327461698384583.Spec : Prop :=
  ∀ n, (P9469327461698384583.a n : ℤ) = A253909 n

end A253909

/-! ## A253909.P9975156449661945986

`gcd(n², floor(acot(n)))`
-/

namespace A253909.P9975156449661945986
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n ^ 2 : ℤ) ⌊SequenceMachineLib.acot (n : ℝ)⌋

end

end A253909.P9975156449661945986

namespace A253909

/-- `gcd(n², floor(acot(n)))` -/
def P9975156449661945986.Spec : Prop :=
  ∀ n, (P9975156449661945986.a n : ℤ) = A253909 n

end A253909

/-! ## A253909.P17130021444992961657

`or(n², floor(acot(n)))`
-/

namespace A253909.P17130021444992961657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n ^ 2 : ℤ) ⌊SequenceMachineLib.acot (n : ℝ)⌋

end

end A253909.P17130021444992961657

namespace A253909

/-- `or(n², floor(acot(n)))` -/
def P17130021444992961657.Spec : Prop :=
  ∀ n, P17130021444992961657.a n = A253909 n

end A253909

/-! ## A253909.P5696107639161142726

`xor(n², floor(acot(n)))`
-/

namespace A253909.P5696107639161142726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n ^ 2 : ℤ) ⌊SequenceMachineLib.acot (n : ℝ)⌋

end

end A253909.P5696107639161142726

namespace A253909

/-- `xor(n², floor(acot(n)))` -/
def P5696107639161142726.Spec : Prop :=
  ∀ n, P5696107639161142726.a n = A253909 n

end A253909

/-! ## A253909.P1197206930727966204

`floor(abs(cot(acot(n)²)))`
-/

namespace A253909.P1197206930727966204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊|Real.cot (SequenceMachineLib.acot (n : ℝ) ^ 2)|⌋

end

end A253909.P1197206930727966204

namespace A253909

/-- `floor(abs(cot(acot(n)²)))` -/
def P1197206930727966204.Spec : Prop :=
  ∀ n, P1197206930727966204.a n = A253909 n

end A253909

/-! ## A253909.P698723629449168533

`ceil(cot(-acot(n))²)`
-/

namespace A253909.P698723629449168533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.cot (-SequenceMachineLib.acot (n : ℝ)) ^ 2⌉

end

end A253909.P698723629449168533

namespace A253909

/-- `ceil(cot(-acot(n))²)` -/
def P698723629449168533.Spec : Prop :=
  ∀ n, P698723629449168533.a n = A253909 n

end A253909

/-! ## A253909.P5185790823891296305

`round(cot(cos(atan(n²))))`
-/

namespace A253909.P5185790823891296305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.cot (Real.cos (Real.arctan (n ^ 2 : ℝ))))

end

end A253909.P5185790823891296305

namespace A253909

/-- `round(cot(cos(atan(n²))))` -/
def P5185790823891296305.Spec : Prop :=
  ∀ n, P5185790823891296305.a n = A253909 n

end A253909

/-! ## A253909.P3417304734877370595

`floor(cot(sin(acot(n)²)))`
-/

namespace A253909.P3417304734877370595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.cot (Real.sin (SequenceMachineLib.acot (n : ℝ) ^ 2))⌋

end

end A253909.P3417304734877370595

namespace A253909

/-- `floor(cot(sin(acot(n)²)))` -/
def P3417304734877370595.Spec : Prop :=
  ∀ n, P3417304734877370595.a n = A253909 n

end A253909

/-! ## A253909.P2259879937358226270

`round(cot(sin(acot(n²))))`
-/

namespace A253909.P2259879937358226270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.cot (Real.sin (SequenceMachineLib.acot (n ^ 2 : ℝ))))

end

end A253909.P2259879937358226270

namespace A253909

/-- `round(cot(sin(acot(n²))))` -/
def P2259879937358226270.Spec : Prop :=
  ∀ n, P2259879937358226270.a n = A253909 n

end A253909

/-! ## A253909.P2856931860510650052

`round(tan(acot(acot(n²))))`
-/

namespace A253909.P2856931860510650052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.tan (SequenceMachineLib.acot (SequenceMachineLib.acot (n ^ 2 : ℝ))))

end

end A253909.P2856931860510650052

namespace A253909

/-- `round(tan(acot(acot(n²))))` -/
def P2856931860510650052.Spec : Prop :=
  ∀ n, P2856931860510650052.a n = A253909 n

end A253909

/-! ## A253909.P775159514621399895

`round(cot(atan(acot(n²))))`
-/

namespace A253909.P775159514621399895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.cot (Real.arctan (SequenceMachineLib.acot (n ^ 2 : ℝ))))

end

end A253909.P775159514621399895

namespace A253909

/-- `round(cot(atan(acot(n²))))` -/
def P775159514621399895.Spec : Prop :=
  ∀ n, P775159514621399895.a n = A253909 n

end A253909

/-! ## A253909.P15572869285002769772

`ceil(cot(sinh(acot(n)))²)`
-/

namespace A253909.P15572869285002769772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.cot (Real.sinh (SequenceMachineLib.acot (n : ℝ))) ^ 2⌉

end

end A253909.P15572869285002769772

namespace A253909

/-- `ceil(cot(sinh(acot(n)))²)` -/
def P15572869285002769772.Spec : Prop :=
  ∀ n, P15572869285002769772.a n = A253909 n

end A253909

/-! ## A253909.P11090180243633749661

`round(cot(sinh(acot(n)))²)`
-/

namespace A253909.P11090180243633749661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.cot (Real.sinh (SequenceMachineLib.acot (n : ℝ))) ^ 2)

end

end A253909.P11090180243633749661

namespace A253909

/-- `round(cot(sinh(acot(n)))²)` -/
def P11090180243633749661.Spec : Prop :=
  ∀ n, P11090180243633749661.a n = A253909 n

end A253909

/-!
# A253911: Concatenation of n-th nonprime and n-th prime.

The programs for A253911, there is no canonical definition to state claims against.
-/

/-! ## A253911.P4909236912936815466

`A004086(A253910(n+1)^A008480(n+1))`
-/

namespace A253911.P4909236912936815466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 (SequenceMachineLib.roundAway ((A253910 (n + 1) : ℚ) ^ (A008480 (n + 1) : ℤ))).toNat

end

end A253911.P4909236912936815466

/-!
# A253912: Fourth powers whose reversal is a prime.

The programs for A253912, there is no canonical definition to state claims against.
-/

/-! ## A253912.P14975710764865576013

`A059205(n+1)^4`
-/

namespace A253912.P14975710764865576013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059205 (n + 1) ^ 4

end

end A253912.P14975710764865576013

/-! ## A253912.P2035521377295779718

`A059205(Δ[n²]-n)²²`
-/

namespace A253912.P2035521377295779718
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A059205 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat ^ 2) ^ 2

end

end A253912.P2035521377295779718

/-! ## A253912.P18357600983804268219

`(A059205(n+1)²*A162511(n+1))²`
-/

namespace A253912.P18357600983804268219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A059205 (n + 1) ^ 2 * A162511 (n + 1)) ^ 2

end

end A253912.P18357600983804268219

/-! ## A253912.P950390251682273434

`(A059205(n+1)%A044319(n+1))²²`
-/

namespace A253912.P950390251682273434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.tmod (A059205 (n + 1)) (A044319 (n + 1)) ^ 2) ^ 2

end

end A253912.P950390251682273434

/-! ## A253912.P9699965085865081893

`(A059205(A000027(n+1))*A059205(n+1))²`
-/

namespace A253912.P9699965085865081893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A059205 (A000027 (n + 1)).toNat * A059205 (n + 1)) ^ 2

end

end A253912.P9699965085865081893

/-! ## A253912.P16123524787407968768

`(A059205(n+1)²*A009531(A158405(n+1)))²`
-/

namespace A253912.P16123524787407968768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A059205 (n + 1) ^ 2 * A009531 (A158405 (n + 1)).toNat) ^ 2

end

end A253912.P16123524787407968768

/-! ## A253912.P13602486651344740433

`A000583(A059205(n+1))`
-/

namespace A253912.P13602486651344740433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000583 (A059205 (n + 1)).toNat

end

end A253912.P13602486651344740433

/-!
# A253913: Numbers of the form m^k + m, with m >= 0 and k > 1.

The programs for A253913, there is no canonical definition to state claims against.
-/

/-! ## A253913.P12494732985867903632

`∑[2*∑{e}[n*a(n-1)+1, #]]` with `a(0)=1, a(1)=2, a(2)=4, a(3)=9`
-/

namespace A253913.P12494732985867903632
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 4, 9] fun n f2 =>
  n * f2 (n - 1) + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A253913.P12494732985867903632

/-! ## A253913.P11546448776119282647

`∑[2*A193929(n*A282724(n+1))]`
-/

namespace A253913.P11546448776119282647
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A193929 ((n : ℤ) * A282724 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A253913.P11546448776119282647

/-! ## A253913.P669009116886792875

`lt[∑{d}[n, (n*#)^3]%9, A008683(A187277(n+1))]`
-/

namespace A253913.P669009116886792875
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ d ∈ Nat.divisors (f2 n), (n * d) ^ 3) % 9

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A187277 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f3 j) n

end

end A253913.P669009116886792875

/-!
# A253914: Numbers that can be represented as both a^x + x and b^y + b, for some a, b, x, y > 1.

The programs for A253914, there is no canonical definition to state claims against.
-/

/-! ## A253914.P7584654640693484096

`∩[A099225(n+1), A253913(n+1)]`
-/

namespace A253914.P7584654640693484096
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099225 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253913 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A253914.P7584654640693484096

/-! ## A253914.P14204009717501486102

`A352030(A201821(n+1)+A026807(n+1))`
-/

namespace A253914.P14204009717501486102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352030 (A201821 (n + 1) + A026807 (n + 1)).toNat

end

end A253914.P14204009717501486102

/-!
# A253919: Indices of products of four distinct primes (A046386) in the sequence of products of 4 primes (A014613).

The programs for A253919, the canonical program `A253919.P16768892389429932842` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A253919 has offset 1).

The definition of A253919 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3465 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A253919.P16768892389429932842

`eq[1, A008683(A014613(n+1))]+1`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A253919

/-- `eq[1, A008683(A014613(n+1))]+1` -/
def P16768892389429932842.Spec : Prop :=
  ∀ n, (P16768892389429932842.a n : ℤ) = A253919 (n + 1)

theorem P16768892389429932842.correct : P16768892389429932842.Spec := by
  intro n
  simp only [A253919, Nat.add_sub_cancel]

end A253919

/-! ## A253919.P12804703131057539460

`A058933(A046386(n+1))`
-/

namespace A253919.P12804703131057539460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058933 (A046386 (n + 1)).toNat

end

end A253919.P12804703131057539460

namespace A253919

/-- `A058933(A046386(n+1))` -/
def P12804703131057539460.Spec : Prop :=
  ∀ n, P12804703131057539460.a n = A253919 (n + 1)

end A253919

/-! ## A253919.P15826701757472330759

`record[A058933(A033993(n+1))]`
-/

namespace A253919.P15826701757472330759
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058933 (A033993 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A253919.P15826701757472330759

namespace A253919

/-- `record[A058933(A033993(n+1))]` -/
def P15826701757472330759.Spec : Prop :=
  ∀ n, P15826701757472330759.a n = A253919 (n + 1)

end A253919

/-! ## A253919.P18325496922572708859

`A058933(root(A190377(n+1), 2))`
-/

namespace A253919.P18325496922572708859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058933 (SequenceMachineLib.roundAway ((A190377 (n + 1) : ℝ) ^ (1 / (2 : ℝ)))).toNat

end

end A253919.P18325496922572708859

namespace A253919

/-- `A058933(root(A190377(n+1), 2))` -/
def P18325496922572708859.Spec : Prop :=
  ∀ n, P18325496922572708859.a n = A253919 (n + 1)

end A253919

/-! ## A253919.P5643144572555707580

`A082996(A046386(n+1)+A000038(n))`
-/

namespace A253919.P5643144572555707580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082996 (A046386 (n + 1) + A000038 n).toNat

end

end A253919.P5643144572555707580

namespace A253919

/-- `A082996(A046386(n+1)+A000038(n))` -/
def P5643144572555707580.Spec : Prop :=
  ∀ n, P5643144572555707580.a n = A253919 (n + 1)

end A253919

/-! ## A253919.P7733956102608319664

`A082996(A046386(n+1)%A262509(n+1))`
-/

namespace A253919.P7733956102608319664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082996 (Int.tmod (A046386 (n + 1)) (A262509 (n + 1))).toNat

end

end A253919.P7733956102608319664

namespace A253919

/-- `A082996(A046386(n+1)%A262509(n+1))` -/
def P7733956102608319664.Spec : Prop :=
  ∀ n, P7733956102608319664.a n = A253919 (n + 1)

end A253919

/-!
# A253920: Indices of centered octagonal numbers (A016754) which are also heptagonal numbers (A000566).

The programs for A253920, there is no canonical definition to state claims against.
-/

/-! ## A253920.P16171797812616915052

`ceil(A046196(n+1)/2)`
-/

namespace A253920.P16171797812616915052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A046196 (n + 1) : ℚ) / 2⌉

end

end A253920.P16171797812616915052

/-! ## A253920.P3110360357060508594

`A251927(n+1)/2+1`
-/

namespace A253920.P3110360357060508594
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A251927 (n + 1) : ℚ) / 2 + 1

end

end A253920.P3110360357060508594

/-! ## A253920.P1942939968580460946

`ceil(A075873(2*(n+1))/2)`
-/

namespace A253920.P1942939968580460946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A075873 (2 * (n + 1)) : ℚ) / 2⌉

end

end A253920.P1942939968580460946

/-! ## A253920.P12529104019775992830

`(A046196(n+1)+1)/A020639(2*(n+1))`
-/

namespace A253920.P12529104019775992830
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A046196 (n + 1) + 1 : ℚ) / (A020639 (2 * (n + 1)) : ℚ)

end

end A253920.P12529104019775992830

/-! ## A253920.P18338404218858391658

`ceil(A075836(Δ[A202018(n)])/4)`
-/

namespace A253920.P18338404218858391658
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202018 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A075836 (f1 (n + 1) - f1 n).toNat : ℚ) / 4⌉

end

end A253920.P18338404218858391658

/-!
# A253926: a(n) is the excess of the number of Collatz permutations of length n (with first index 15) over the n-th Fibonacci number.

The programs for A253926, there is no canonical definition to state claims against.
-/

/-! ## A253926.P3035984499210168746

`A008619(A271661(n)+floor(sqrt(2*n)))`
-/

namespace A253926.P3035984499210168746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A271661 n + (Nat.sqrt (2 * n) : ℤ)).toNat

end

end A253926.P3035984499210168746

/-! ## A253926.P3640367700090926289

`A100617(A002984(n)+A002974(n+1))`
-/

namespace A253926.P3640367700090926289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100617 (A002984 n + A002974 (n + 1)).toNat

end

end A253926.P3640367700090926289

/-! ## A253926.P15597054915243475952

`A172471(n)+A115671(A171950(n+1))`
-/

namespace A253926.P15597054915243475952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172471 n + A115671 (A171950 (n + 1)).toNat

end

end A253926.P15597054915243475952

/-! ## A253926.P9784173141207877018

`A226763(A035294(n+1)+A004526(n+1))`
-/

namespace A253926.P9784173141207877018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226763 (A035294 (n + 1) + A004526 (n + 1)).toNat

end

end A253926.P9784173141207877018

/-! ## A253926.P9000238130763269814

`A004526(A271661(n)+A000196(2*n))+1`
-/

namespace A253926.P9000238130763269814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A271661 n + A000196 (2 * n)).toNat + 1

end

end A253926.P9000238130763269814

/-!
# A253927: Number of polyhexes (without holes) of size 6*n+1 with 6-fold rotational symmetry.

The programs for A253927, there is no canonical definition to state claims against.
-/

/-! ## A253927.P12030674637053467162

`A245465(n)+A159632(A077947(n))`
-/

namespace A253927.P12030674637053467162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245465 n + A159632 (A077947 n).toNat

end

end A253927.P12030674637053467162

/-! ## A253927.P13097630173383548948

`A117174(A052806(n))`
-/

namespace A253927.P13097630173383548948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117174 (A052806 n).toNat

end

end A253927.P13097630173383548948

/-! ## A253927.P7987943535018934863

`A048688(A145268(n))`
-/

namespace A253927.P7987943535018934863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048688 (A145268 n).toNat

end

end A253927.P7987943535018934863

/-!
# A253928: Number of (n+2) X (n+2) 0..1 arrays with every 3 X 3 subblock diagonal sum plus antidiagonal sum nondecreasing horizontally and vertically.

The programs for A253928, there is no canonical definition to state claims against.
-/

/-! ## A253928.P7352408525648180690

`A253935((n+1)²+n²)`
-/

namespace A253928.P7352408525648180690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253935 ((n + 1) ^ 2 + n ^ 2)

end

end A253928.P7352408525648180690

/-! ## A253928.P3875115156450349571

`lcm(2, A253935(∑[4*n]+1))`
-/

namespace A253928.P3875115156450349571
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A253935 (∑ j ∈ Finset.range (n + 1), f1 j + 1))

end

end A253928.P3875115156450349571

/-! ## A253928.P1372448422351965427

`record[A214505(n)*A253935(n+1)]`
-/

namespace A253928.P1372448422351965427
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214505 n * A253935 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A253928.P1372448422351965427

/-! ## A253928.P7239825740047007651

`record[gcd(A214292(n), A253935(n+1))]`
-/

namespace A253928.P7239825740047007651
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A214292 n) (A253935 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A253928.P7239825740047007651

/-! ## A253928.P2287719335396297693

`record[(1-A003987(n))*A253935(n+1)]`
-/

namespace A253928.P2287719335396297693
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A003987 n) * A253935 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A253928.P2287719335396297693

/-!
# A253929: Number of (n+2)X(2+2) 0..1 arrays with every 3X3 subblock diagonal sum plus antidiagonal sum nondecreasing horizontally and vertically.

The programs for A253929, there is no canonical definition to state claims against.
-/

/-! ## A253929.P13088945435401675228

`A253935(∑[n+1]+2)`
-/

namespace A253929.P13088945435401675228
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253935 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A253929.P13088945435401675228

/-! ## A253929.P17479598822042030069

`xor(1, xor(1, A253935(A000096(n+1))))`
-/

namespace A253929.P17479598822042030069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (Int.xor 1 (A253935 (A000096 (n + 1)).toNat))

end

end A253929.P17479598822042030069

/-! ## A253929.P5696063649273619926

`A253935(A000096(n+1))+A000007(n+1)`
-/

namespace A253929.P5696063649273619926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253935 (A000096 (n + 1)).toNat + A000007 (n + 1)

end

end A253929.P5696063649273619926

/-! ## A253929.P6528370868491703010

`A014709(4*n)*A253935(A000096(n+1))`
-/

namespace A253929.P6528370868491703010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014709 (4 * n) * A253935 (A000096 (n + 1)).toNat

end

end A253929.P6528370868491703010

/-! ## A253929.P7441945787561302541

`A253935(A000096(n+1))+A008683(81*(n+1))`
-/

namespace A253929.P7441945787561302541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253935 (A000096 (n + 1)).toNat + A008683 (81 * (n + 1))

end

end A253929.P7441945787561302541

/-!
# A253930: Number of (n+2)X(3+2) 0..1 arrays with every 3X3 subblock diagonal sum plus antidiagonal sum nondecreasing horizontally and vertically.

The programs for A253930, there is no canonical definition to state claims against.
-/

/-! ## A253930.P6134585657533825742

`A253935(∑[n+2]+4)`
-/

namespace A253930.P6134585657533825742
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253935 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A253930.P6134585657533825742

/-! ## A253930.P13481160381961089901

`or(char[3], A253935(A167614(n+1)))`
-/

namespace A253930.P13481160381961089901
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A253935 (A167614 (n + 1)).toNat)

end

end A253930.P13481160381961089901

/-! ## A253930.P8347576281759661169

`A253935(A167614(n+1))+A000038(n+1)`
-/

namespace A253930.P8347576281759661169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253935 (A167614 (n + 1)).toNat + A000038 (n + 1)

end

end A253930.P8347576281759661169

/-! ## A253930.P16195882987728106667

`A000035(2*n+1)*A253935(A167614(n+1))`
-/

namespace A253930.P16195882987728106667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (2 * n + 1) * A253935 (A167614 (n + 1)).toNat

end

end A253930.P16195882987728106667

/-! ## A253930.P9941883305326059654

`A014963(A000082(n+1))*A253935(A167614(n+1))`
-/

namespace A253930.P9941883305326059654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A000082 (n + 1)).toNat * A253935 (A167614 (n + 1)).toNat

end

end A253930.P9941883305326059654

/-!
# A253931: Number of (n+2)X(4+2) 0..1 arrays with every 3X3 subblock diagonal sum plus antidiagonal sum nondecreasing horizontally and vertically.

The programs for A253931, there is no canonical definition to state claims against.
-/

/-! ## A253931.P2190018799241620295

`A253935(A374004(n+1))`
-/

namespace A253931.P2190018799241620295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253935 (A374004 (n + 1)).toNat

end

end A253931.P2190018799241620295

/-! ## A253931.P4952024436753110197

`A253935(A052905(n)+9)`
-/

namespace A253931.P4952024436753110197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253935 (A052905 n + 9).toNat

end

end A253931.P4952024436753110197

/-! ## A253931.P3118865097095588939

`A253935(A055999(n)+10)`
-/

namespace A253931.P3118865097095588939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253935 (A055999 n + 10).toNat

end

end A253931.P3118865097095588939

/-! ## A253931.P16666675651074065176

`A253935(A167614(n+2)+1)`
-/

namespace A253931.P16666675651074065176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253935 (A167614 (n + 2) + 1).toNat

end

end A253931.P16666675651074065176

/-! ## A253931.P17336967458833719090

`A253935(A112355(n+1)+4)`
-/

namespace A253931.P17336967458833719090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253935 (A112355 (n + 1) + 4).toNat

end

end A253931.P17336967458833719090

/-!
# A253932: Number of (n+2)X(5+2) 0..1 arrays with every 3X3 subblock diagonal sum plus antidiagonal sum nondecreasing horizontally and vertically.

The programs for A253932, there is no canonical definition to state claims against.
-/

/-! ## A253932.P16181679066759026655

`A253935(∑[n+4]+11)`
-/

namespace A253932.P16181679066759026655
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253935 (∑ j ∈ Finset.range (n + 1), f1 j + 11)

end

end A253932.P16181679066759026655

/-! ## A253932.P10078636929926880289

`or(char[1], A253935(A046691(n+3)))`
-/

namespace A253932.P10078636929926880289
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A253935 (A046691 (n + 3)).toNat)

end

end A253932.P10078636929926880289

/-! ## A253932.P1121266706523724774

`A253935(A046691(n+3))+(2*A007494(n))%2`
-/

namespace A253932.P1121266706523724774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253935 (A046691 (n + 3)).toNat + Int.tmod (2 * A007494 n) 2

end

end A253932.P1121266706523724774

/-! ## A253932.P5579324481723459419

`A253935(A046691(n+3))+n%(A000007(n)+n)`
-/

namespace A253932.P5579324481723459419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253935 (A046691 (n + 3)).toNat + Int.tmod (n : ℤ) (A000007 n + (n : ℤ))

end

end A253932.P5579324481723459419

/-!
# A253933: Number of (n+2)X(6+2) 0..1 arrays with every 3X3 subblock diagonal sum plus antidiagonal sum nondecreasing horizontally and vertically.

The programs for A253933, there is no canonical definition to state claims against.
-/

/-! ## A253933.P13975669605330523945

`A253935(A374007(n+1))`
-/

namespace A253933.P13975669605330523945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253935 (A374007 (n + 1)).toNat

end

end A253933.P13975669605330523945

/-! ## A253933.P15763241019455951560

`A253935(A000124(n+5)+5)`
-/

namespace A253933.P15763241019455951560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253935 (A000124 (n + 5) + 5).toNat

end

end A253933.P15763241019455951560

/-! ## A253933.P11108367205259595366

`A253935(A000217(n+5)+6)`
-/

namespace A253933.P11108367205259595366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253935 (A000217 (n + 5) + 6).toNat

end

end A253933.P11108367205259595366

/-! ## A253933.P771169844843387382

`A253935(A166136(A020705(n)))`
-/

namespace A253933.P771169844843387382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253935 (A166136 (A020705 n).toNat).toNat

end

end A253933.P771169844843387382

/-! ## A253933.P18193060454679490009

`A253935(A055999(n+4)-A005408(n))`
-/

namespace A253933.P18193060454679490009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253935 (A055999 (n + 4) - A005408 n).toNat

end

end A253933.P18193060454679490009

/-!
# A253934: Number of (n+2)X(7+2) 0..1 arrays with every 3X3 subblock diagonal sum plus antidiagonal sum nondecreasing horizontally and vertically.

The programs for A253934, there is no canonical definition to state claims against.
-/

/-! ## A253934.P5050544648294935527

`A253935(A374008(n+1))`
-/

namespace A253934.P5050544648294935527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253935 (A374008 (n + 1)).toNat

end

end A253934.P5050544648294935527

/-! ## A253934.P10256918200209137013

`A253935(A167499(n+5)+2)`
-/

namespace A253934.P10256918200209137013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253935 (A167499 (n + 5) + 2).toNat

end

end A253934.P10256918200209137013

/-! ## A253934.P18019072143812179076

`A253935(A000217(n+6)+7)`
-/

namespace A253934.P18019072143812179076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253935 (A000217 (n + 6) + 7).toNat

end

end A253934.P18019072143812179076

/-! ## A253934.P17730388769456345409

`A253935(A055999(n+4))`
-/

namespace A253934.P17730388769456345409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253935 (A055999 (n + 4)).toNat

end

end A253934.P17730388769456345409

/-! ## A253934.P1818324042506727255

`A253935(A000124(n+7)-7)`
-/

namespace A253934.P1818324042506727255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253935 (A000124 (n + 7) - 7).toNat

end

end A253934.P1818324042506727255

/-!
# A253936: a(n) = prime(n + (prime(n) mod 10)).

The programs for A253936, the canonical program `A253936.P2822011478479470688` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A253936 has offset 1).

The definition of A253936 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000040(n+1+A000040(n+1)%10)` (program `A253936.P2822011478479470688`, by `A253936.P2822011478479470688.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A253936.P2651308302355443036

`A000040(n+1+A007652(n+1))`
-/

namespace A253936.P2651308302355443036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 ((n + 1 : ℤ) + A007652 (n + 1)).toNat

end

end A253936.P2651308302355443036

namespace A253936

/-- `A000040(n+1+A007652(n+1))` -/
def P2651308302355443036.Spec : Prop :=
  ∀ n, P2651308302355443036.a n = A253936 (n + 1)

end A253936

/-! ## A253936.P2822011478479470688

`A000040(n+1+A000040(n+1)%10)`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A253936

/-- `A000040(n+1+A000040(n+1)%10)` -/
def P2822011478479470688.Spec : Prop :=
  ∀ n, P2822011478479470688.a n = A253936 (n + 1)

theorem P2822011478479470688.correct : P2822011478479470688.Spec := by
  intro n
  simp only [A253936, Nat.add_sub_cancel]

end A253936

/-! ## A253936.P14872080856260663755

`A000040(n+A000040(n+1)%10+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A253936.P14872080856260663755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 ((n : ℤ) + Int.tmod (A000040 (n + 1)) 10 + 1).toNat

end

end A253936.P14872080856260663755

namespace A253936

/-- `A000040(n+A000040(n+1)%10+1)` -/
def P14872080856260663755.Spec : Prop :=
  ∀ n, P14872080856260663755.a n = A253936 (n + 1)

theorem P14872080856260663755.correct : P14872080856260663755.Spec := by
  intro n
  simp only [A253936, Nat.add_sub_cancel, A253936.P14872080856260663755.a, A253936.P2822011478479470688.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A253936

/-! ## A253936.P12381723891254058049

`A000040(n+1+A010879(A000040(n+1)))`
-/

namespace A253936.P12381723891254058049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 ((n + 1 : ℤ) + A010879 (A000040 (n + 1)).toNat).toNat

end

end A253936.P12381723891254058049

namespace A253936

/-- `A000040(n+1+A010879(A000040(n+1)))` -/
def P12381723891254058049.Spec : Prop :=
  ∀ n, P12381723891254058049.a n = A253936 (n + 1)

end A253936

/-! ## A253936.P10088587199617460972

`A045344(A007652(n+1)+n)`
-/

namespace A253936.P10088587199617460972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (A007652 (n + 1) + (n : ℤ)).toNat

end

end A253936.P10088587199617460972

namespace A253936

/-- `A045344(A007652(n+1)+n)` -/
def P10088587199617460972.Spec : Prop :=
  ∀ n, P10088587199617460972.a n = A253936 (n + 1)

end A253936

/-! ## A253936.P17368133154278012189

`A065091(A007652(n+1)+n)`
-/

namespace A253936.P17368133154278012189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (A007652 (n + 1) + (n : ℤ)).toNat

end

end A253936.P17368133154278012189

namespace A253936

/-- `A065091(A007652(n+1)+n)` -/
def P17368133154278012189.Spec : Prop :=
  ∀ n, P17368133154278012189.a n = A253936 (n + 1)

end A253936

/-! ## A253936.P4449053689894983676

`A008578(A007652(n+1)+2+n)`
-/

namespace A253936.P4449053689894983676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A007652 (n + 1) + 2 + (n : ℤ)).toNat

end

end A253936.P4449053689894983676

namespace A253936

/-- `A008578(A007652(n+1)+2+n)` -/
def P4449053689894983676.Spec : Prop :=
  ∀ n, P4449053689894983676.a n = A253936 (n + 1)

end A253936

/-! ## A253936.P5592227275920620107

`A000040(n+6-A277097(n+1))`
-/

namespace A253936.P5592227275920620107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 ((n + 6 : ℤ) - A277097 (n + 1)).toNat

end

end A253936.P5592227275920620107

namespace A253936

/-- `A000040(n+6-A277097(n+1))` -/
def P5592227275920620107.Spec : Prop :=
  ∀ n, P5592227275920620107.a n = A253936 (n + 1)

theorem P5592227275920620107.correct : P5592227275920620107.Spec := by
  intro n
  simp only [A253936, Nat.add_sub_cancel, A253936.P5592227275920620107.a, A253936.P2822011478479470688.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A277097, A277097.P9767810022556960971.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A253936

/-! ## A253936.P1964266753626420120

`A045344(A000040(n+1)%10+n)`
-/

namespace A253936.P1964266753626420120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (Int.tmod (A000040 (n + 1)) 10 + (n : ℤ)).toNat

end

end A253936.P1964266753626420120

namespace A253936

/-- `A045344(A000040(n+1)%10+n)` -/
def P1964266753626420120.Spec : Prop :=
  ∀ n, P1964266753626420120.a n = A253936 (n + 1)

end A253936

/-! ## A253936.P3473858768219932224

`A000040(A002024(A161625(n+1))+n+1)`
-/

namespace A253936.P3473858768219932224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A002024 (A161625 (n + 1)).toNat + (n + 1 : ℤ)).toNat

end

end A253936.P3473858768219932224

namespace A253936

/-- `A000040(A002024(A161625(n+1))+n+1)` -/
def P3473858768219932224.Spec : Prop :=
  ∀ n, P3473858768219932224.a n = A253936 (n + 1)

end A253936

/-! ## A253936.P12686505435681546599

`A045344(record[A020639(n+2)]%10+n)`
-/

namespace A253936.P12686505435681546599
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) 10 + (n : ℤ)).toNat

end

end A253936.P12686505435681546599

namespace A253936

/-- `A045344(record[A020639(n+2)]%10+n)` -/
def P12686505435681546599.Spec : Prop :=
  ∀ n, P12686505435681546599.a n = A253936 (n + 1)

end A253936

/-! ## A253936.P11761927102863217920

`A000040(A010889(A000040(n+1))+n)`
-/

namespace A253936.P11761927102863217920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A010889 (A000040 (n + 1)).toNat + (n : ℤ)).toNat

end

end A253936.P11761927102863217920

namespace A253936

/-- `A000040(A010889(A000040(n+1))+n)` -/
def P11761927102863217920.Spec : Prop :=
  ∀ n, P11761927102863217920.a n = A253936 (n + 1)

end A253936

/-! ## A253936.P13619976694249908359

`A000040(A367476(A000040(n+1))+n+1)`
-/

namespace A253936.P13619976694249908359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A367476 (A000040 (n + 1)).toNat + (n + 1 : ℤ)).toNat

end

end A253936.P13619976694249908359

namespace A253936

/-- `A000040(A367476(A000040(n+1))+n+1)` -/
def P13619976694249908359.Spec : Prop :=
  ∀ n, P13619976694249908359.a n = A253936 (n + 1)

end A253936

/-! ## A253936.P10172189705581552595

`A003961(A000040(A007652(n+1)+n))`
-/

namespace A253936.P10172189705581552595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003961 (A000040 (A007652 (n + 1) + (n : ℤ)).toNat).toNat

end

end A253936.P10172189705581552595

namespace A253936

/-- `A003961(A000040(A007652(n+1)+n))` -/
def P10172189705581552595.Spec : Prop :=
  ∀ n, P10172189705581552595.a n = A253936 (n + 1)

end A253936

/-!
# A253942: a(n) = 3*binomial(n+1, 5).

The programs for A253942, the canonical program `A253942.P11522209056307406865` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A253942 has offset 1).

The definition of A253942 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3*C(n+2, 5)` (program `A253942.P11522209056307406865`, by `A253942.P11522209056307406865.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A253942.P11522209056307406865

`3*C(n+2, 5)`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A253942

/-- `3*C(n+2, 5)` -/
def P11522209056307406865.Spec : Prop :=
  ∀ n, (P11522209056307406865.a n : ℤ) = A253942 (n + 1)

theorem P11522209056307406865.correct : P11522209056307406865.Spec := by
  intro n
  simp only [A253942, Nat.add_sub_cancel]

end A253942

/-! ## A253942.P742780766179180140

`(n-2)*(n-1)*n*(n+1)*(1+n+1)/40`
-/

namespace A253942.P742780766179180140
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((n : ℤ) - 2) * ((n : ℤ) - 1) * (n : ℤ) * (n + 1 : ℤ) * (1 + (n + 1) : ℤ) : ℚ) / 40

end

end A253942.P742780766179180140

namespace A253942

/-- `(n-2)*(n-1)*n*(n+1)*(1+n+1)/40` -/
def P742780766179180140.Spec : Prop :=
  ∀ n, P742780766179180140.a n = (A253942 (n + 1) : ℚ)

theorem P742780766179180140.correct : P742780766179180140.Spec := by
  intro n
  simp only [A253942, Nat.add_sub_cancel, A253942.P742780766179180140.a, A253942.P11522209056307406865.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A253942

/-! ## A253942.P5768130406141976423

`3*A000389(n+2)`
-/

namespace A253942.P5768130406141976423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A000389 (n + 2)

end

end A253942.P5768130406141976423

namespace A253942

/-- `3*A000389(n+2)` -/
def P5768130406141976423.Spec : Prop :=
  ∀ n, P5768130406141976423.a n = A253942 (n + 1)

theorem P5768130406141976423.correct : P5768130406141976423.Spec := by
  intro n
  simp only [A253942, Nat.add_sub_cancel, A253942.P5768130406141976423.a, A253942.P11522209056307406865.a, A000389, A000389.P15450220129395289428.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A253942

/-! ## A253942.P952254534661736241

`∑[C(C(n, 2), 2)]`
-/

namespace A253942.P952254534661736241
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (Nat.choose n 2) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A253942.P952254534661736241

namespace A253942

/-- `∑[C(C(n, 2), 2)]` -/
def P952254534661736241.Spec : Prop :=
  ∀ n, (P952254534661736241.a n : ℤ) = A253942 (n + 1)

end A253942

/-! ## A253942.P9074603636845274179

`a(n-1)+C(C(n, 2), 2)` with `a(0)=0`
-/

namespace A253942.P9074603636845274179
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + Nat.choose (Nat.choose n 2) 2

end

end A253942.P9074603636845274179

namespace A253942

/-- `a(n-1)+C(C(n, 2), 2)` -/
def P9074603636845274179.Spec : Prop :=
  ∀ n, (P9074603636845274179.a n : ℤ) = A253942 (n + 1)

end A253942

/-! ## A253942.P10797560230848769537

`∑[A050534(n)]`
-/

namespace A253942.P10797560230848769537
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050534 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A253942.P10797560230848769537

namespace A253942

/-- `∑[A050534(n)]` -/
def P10797560230848769537.Spec : Prop :=
  ∀ n, P10797560230848769537.a n = A253942 (n + 1)

end A253942

/-! ## A253942.P9478214690264523943

`∑[A037255(n)-n²]`
-/

namespace A253942.P9478214690264523943
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037255 n - (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A253942.P9478214690264523943

namespace A253942

/-- `∑[A037255(n)-n²]` -/
def P9478214690264523943.Spec : Prop :=
  ∀ n, P9478214690264523943.a n = A253942 (n + 1)

end A253942

/-! ## A253942.P8509071291439074966

`∑[3*A000332(n+1)]`
-/

namespace A253942.P8509071291439074966
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A000332 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A253942.P8509071291439074966

namespace A253942

/-- `∑[3*A000332(n+1)]` -/
def P8509071291439074966.Spec : Prop :=
  ∀ n, P8509071291439074966.a n = A253942 (n + 1)

end A253942

/-! ## A253942.P6815517908675877288

`∑[A060008(n+1)/3]`
-/

namespace A253942.P6815517908675877288
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A060008 (n + 1) : ℚ) / 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A253942.P6815517908675877288

namespace A253942

/-- `∑[A060008(n+1)/3]` -/
def P6815517908675877288.Spec : Prop :=
  ∀ n, P6815517908675877288.a n = (A253942 (n + 1) : ℚ)

end A253942

/-! ## A253942.P6226545068424670889

`A210569(n+1)-A000389(n+2)`
-/

namespace A253942.P6226545068424670889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210569 (n + 1) - A000389 (n + 2)

end

end A253942.P6226545068424670889

namespace A253942

/-- `A210569(n+1)-A000389(n+2)` -/
def P6226545068424670889.Spec : Prop :=
  ∀ n, P6226545068424670889.a n = A253942 (n + 1)

theorem P6226545068424670889.correct : P6226545068424670889.Spec := by
  intro n
  simp only [A253942, Nat.add_sub_cancel, A253942.P6226545068424670889.a, A253942.P11522209056307406865.a, A000389, A000389.P15450220129395289428.a, A210569, A210569.P2904850707922656817.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A253942

/-! ## A253942.P15593350135857254060

`∑[A161680(A161680(n))]`
-/

namespace A253942.P15593350135857254060
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161680 (A161680 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A253942.P15593350135857254060

namespace A253942

/-- `∑[A161680(A161680(n))]` -/
def P15593350135857254060.Spec : Prop :=
  ∀ n, P15593350135857254060.a n = A253942 (n + 1)

end A253942

/-! ## A253942.P7898561684178378980

`∑[A130519(n²-n)]`
-/

namespace A253942.P7898561684178378980
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130519 (n ^ 2 - n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A253942.P7898561684178378980

namespace A253942

/-- `∑[A130519(n²-n)]` -/
def P7898561684178378980.Spec : Prop :=
  ∀ n, P7898561684178378980.a n = A253942 (n + 1)

end A253942

/-!
# A253943: a(n) = 3*binomial(n+1,6).

The programs for A253943, the canonical program `A253943.P13811631243431024580` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A253943 has offset 5).

The definition of A253943 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3*C(n+6, 6)` (program `A253943.P13811631243431024580`, by `A253943.P13811631243431024580.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A253943.P13811631243431024580

`3*C(n+6, 6)`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A253943

/-- `3*C(n+6, 6)` -/
def P13811631243431024580.Spec : Prop :=
  ∀ n, (P13811631243431024580.a n : ℤ) = A253943 (n + 5)

theorem P13811631243431024580.correct : P13811631243431024580.Spec := by
  intro n
  simp only [A253943, Nat.add_sub_cancel]

end A253943

/-! ## A253943.P18254206855449656144

`3*A000579(n+6)`
-/

namespace A253943.P18254206855449656144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A000579 (n + 6)

end

end A253943.P18254206855449656144

namespace A253943

/-- `3*A000579(n+6)` -/
def P18254206855449656144.Spec : Prop :=
  ∀ n, P18254206855449656144.a n = A253943 (n + 5)

theorem P18254206855449656144.correct : P18254206855449656144.Spec := by
  intro n
  simp only [A253943, Nat.add_sub_cancel, A253943.P18254206855449656144.a, A253943.P13811631243431024580.a, A000579, A000579.P13663713855180125612.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A253943

/-! ## A253943.P3136252635533793725

`∑[∑[C(C(n+3, 2), 2)]]`
-/

namespace A253943.P3136252635533793725
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (Nat.choose (n + 3) 2) 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A253943.P3136252635533793725

namespace A253943

/-- `∑[∑[C(C(n+3, 2), 2)]]` -/
def P3136252635533793725.Spec : Prop :=
  ∀ n, (P3136252635533793725.a n : ℤ) = A253943 (n + 5)

end A253943

/-! ## A253943.P10250723406696933131

`∑[∑[∑[∑[∑[3*(n+1)]]]]]`
-/

namespace A253943.P10250723406696933131
noncomputable section

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * (n + 1)

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A253943.P10250723406696933131

namespace A253943

/-- `∑[∑[∑[∑[∑[3*(n+1)]]]]]` -/
def P10250723406696933131.Spec : Prop :=
  ∀ n, (P10250723406696933131.a n : ℤ) = A253943 (n + 5)

end A253943

/-! ## A253943.P6370789695236094336

`(6/n+1)*a(n-1)` with `a(0)=3`
-/

namespace A253943.P6370789695236094336
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [3] fun n a =>
  (6 / (n : ℚ) + 1) * a (n - 1)

end

end A253943.P6370789695236094336

namespace A253943

/-- `(6/n+1)*a(n-1)` -/
def P6370789695236094336.Spec : Prop :=
  ∀ n, P6370789695236094336.a n = (A253943 (n + 5) : ℚ)

end A253943

/-! ## A253943.P12338796929435591010

`floor(∑[∑[∑[∑[∑[a(n-1)+3]]]]])` with `a(0)=3`

`floor` is left out, it is the identity on integers.
-/

namespace A253943.P12338796929435591010
noncomputable section

def f5 : ℕ → ℕ := SequenceMachineLib.rec [3] fun n f5 =>
  f5 (n - 1) + 3

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A253943.P12338796929435591010

namespace A253943

/-- `floor(∑[∑[∑[∑[∑[a(n-1)+3]]]]])` -/
def P12338796929435591010.Spec : Prop :=
  ∀ n, (P12338796929435591010.a n : ℤ) = A253943 (n + 5)

end A253943

/-! ## A253943.P4423949924315565008

`∑[∑[∑[∑[a(n-1)+3]]]]+a(n-1)` with `a(0)=3`
-/

namespace A253943.P4423949924315565008
noncomputable section

def f4 : ℕ → ℕ := SequenceMachineLib.rec [3] fun n f4 =>
  f4 (n - 1) + 3

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.rec [3] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j + a (n - 1)

end

end A253943.P4423949924315565008

namespace A253943

/-- `∑[∑[∑[∑[a(n-1)+3]]]]+a(n-1)` -/
def P4423949924315565008.Spec : Prop :=
  ∀ n, (P4423949924315565008.a n : ℤ) = A253943 (n + 5)

end A253943

/-! ## A253943.P15306420309477402674

`A253946(n+5)/2`
-/

namespace A253943.P15306420309477402674
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A253946 (n + 5) : ℚ) / 2

end

end A253943.P15306420309477402674

namespace A253943

/-- `A253946(n+5)/2` -/
def P15306420309477402674.Spec : Prop :=
  ∀ n, P15306420309477402674.a n = (A253943 (n + 5) : ℚ)

theorem P15306420309477402674.correct : P15306420309477402674.Spec := by
  intro n
  simp only [A253943, Nat.add_sub_cancel, A253943.P15306420309477402674.a, A253943.P13811631243431024580.a, A253946, A253946.P6076803449469898878.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A253943

/-! ## A253943.P12608677856097648878

`3*(A124089(n+6)+1)`
-/

namespace A253943.P12608677856097648878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (A124089 (n + 6) + 1)

end

end A253943.P12608677856097648878

namespace A253943

/-- `3*(A124089(n+6)+1)` -/
def P12608677856097648878.Spec : Prop :=
  ∀ n, P12608677856097648878.a n = A253943 (n + 5)

theorem P12608677856097648878.correct : P12608677856097648878.Spec := by
  intro n
  simp only [A253943, Nat.add_sub_cancel, A253943.P12608677856097648878.a, A253943.P13811631243431024580.a, A124089, A124089.P16269199596857535660.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A253943

/-! ## A253943.P9881803408234127146

`A027811(n+1)/(n+2)`
-/

namespace A253943.P9881803408234127146
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A027811 (n + 1) : ℚ) / (n + 2 : ℚ)

end

end A253943.P9881803408234127146

namespace A253943

/-- `A027811(n+1)/(n+2)` -/
def P9881803408234127146.Spec : Prop :=
  ∀ n, P9881803408234127146.a n = (A253943 (n + 5) : ℚ)

end A253943

/-! ## A253943.P999308369275592205

`3*(A062989(n)+1+n)`
-/

namespace A253943.P999308369275592205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (A062989 n + 1 + (n : ℤ))

end

end A253943.P999308369275592205

namespace A253943

/-- `3*(A062989(n)+1+n)` -/
def P999308369275592205.Spec : Prop :=
  ∀ n, P999308369275592205.a n = A253943 (n + 5)

theorem P999308369275592205.correct : P999308369275592205.Spec := by
  intro n
  simp only [A253943, Nat.add_sub_cancel, A253943.P999308369275592205.a, A253943.P13811631243431024580.a, A062989, A062989.P942204784021349880.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A253943

/-! ## A253943.P16764938416475224771

`3/(n+1)*A027818(n)`
-/

namespace A253943.P16764938416475224771
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  3 / (n + 1 : ℚ) * (A027818 n : ℚ)

end

end A253943.P16764938416475224771

namespace A253943

/-- `3/(n+1)*A027818(n)` -/
def P16764938416475224771.Spec : Prop :=
  ∀ n, P16764938416475224771.a n = (A253943 (n + 5) : ℚ)

end A253943

/-! ## A253943.P7013999560475052182

`A097298(n)-A095663(n)`
-/

namespace A253943.P7013999560475052182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097298 n - A095663 n

end

end A253943.P7013999560475052182

namespace A253943

/-- `A097298(n)-A095663(n)` -/
def P7013999560475052182.Spec : Prop :=
  ∀ n, P7013999560475052182.a n = A253943 (n + 5)

end A253943

/-! ## A253943.P11838316558614962309

`A040977(n)+A005584(n+1)`
-/

namespace A253943.P11838316558614962309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040977 n + A005584 (n + 1)

end

end A253943.P11838316558614962309

namespace A253943

/-- `A040977(n)+A005584(n+1)` -/
def P11838316558614962309.Spec : Prop :=
  ∀ n, P11838316558614962309.a n = A253943 (n + 5)

end A253943

/-! ## A253943.P8104397779851579234

`(A096944(n)+A051946(n))/2`
-/

namespace A253943.P8104397779851579234
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A096944 n + A051946 n : ℚ) / 2

end

end A253943.P8104397779851579234

namespace A253943

/-- `(A096944(n)+A051946(n))/2` -/
def P8104397779851579234.Spec : Prop :=
  ∀ n, P8104397779851579234.a n = (A253943 (n + 5) : ℚ)

end A253943

/-! ## A253943.P6352384549460212235

`A027779(n+4)/A020710(n)`
-/

namespace A253943.P6352384549460212235
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A027779 (n + 4) : ℚ) / (A020710 n : ℚ)

end

end A253943.P6352384549460212235

namespace A253943

/-- `A027779(n+4)/A020710(n)` -/
def P6352384549460212235.Spec : Prop :=
  ∀ n, P6352384549460212235.a n = (A253943 (n + 5) : ℚ)

end A253943

/-! ## A253943.P18118577996409955921

`A095670(n)-A000580(n+7)`
-/

namespace A253943.P18118577996409955921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095670 n - A000580 (n + 7)

end

end A253943.P18118577996409955921

namespace A253943

/-- `A095670(n)-A000580(n+7)` -/
def P18118577996409955921.Spec : Prop :=
  ∀ n, P18118577996409955921.a n = A253943 (n + 5)

end A253943

/-! ## A253943.P11391611773710137084

`(A112459(n+3)+A095662(n))/2`
-/

namespace A253943.P11391611773710137084
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A112459 (n + 3) + A095662 n : ℚ) / 2

end

end A253943.P11391611773710137084

namespace A253943

/-- `(A112459(n+3)+A095662(n))/2` -/
def P11391611773710137084.Spec : Prop :=
  ∀ n, P11391611773710137084.a n = (A253943 (n + 5) : ℚ)

end A253943

/-! ## A253943.P16271137609872065844

`A005584(n+1)+∑[A005585(n+1)]`
-/

namespace A253943.P16271137609872065844
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005585 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005584 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A253943.P16271137609872065844

namespace A253943

/-- `A005584(n+1)+∑[A005585(n+1)]` -/
def P16271137609872065844.Spec : Prop :=
  ∀ n, P16271137609872065844.a n = A253943 (n + 5)

end A253943

/-! ## A253943.P18131322210050830106

`(n+1)*A051923(n+1)/(n+3)`
-/

namespace A253943.P18131322210050830106
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) * ((A051923 (n + 1) : ℚ) / (n + 3 : ℚ))

end

end A253943.P18131322210050830106

namespace A253943

/-- `(n+1)*A051923(n+1)/(n+3)` -/
def P18131322210050830106.Spec : Prop :=
  ∀ n, P18131322210050830106.a n = (A253943 (n + 5) : ℚ)

end A253943

/-!
# A253944: a(n) = 3*binomial(n+1,7).

The programs for A253944, the canonical program `A253944.P13400668633738721158` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A253944 has offset 6).

The definition of A253944 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3*C(n+7, 7)` (program `A253944.P13400668633738721158`, by `A253944.P13400668633738721158.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A253944.P13400668633738721158

`3*C(n+7, 7)`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A253944

/-- `3*C(n+7, 7)` -/
def P13400668633738721158.Spec : Prop :=
  ∀ n, (P13400668633738721158.a n : ℤ) = A253944 (n + 6)

theorem P13400668633738721158.correct : P13400668633738721158.Spec := by
  intro n
  simp only [A253944, Nat.add_sub_cancel]

end A253944

/-! ## A253944.P18219818549142345844

`3*A000580(n+7)`
-/

namespace A253944.P18219818549142345844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A000580 (n + 7)

end

end A253944.P18219818549142345844

namespace A253944

/-- `3*A000580(n+7)` -/
def P18219818549142345844.Spec : Prop :=
  ∀ n, P18219818549142345844.a n = A253944 (n + 6)

theorem P18219818549142345844.correct : P18219818549142345844.Spec := by
  intro n
  simp only [A253944, Nat.add_sub_cancel, A253944.P18219818549142345844.a, A253944.P13400668633738721158.a, A000580, A000580.P16667415707980948191.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A253944

/-! ## A253944.P6810801500180955472

`∑[∑[∑[C(C(n+3, 2), 2)]]]`
-/

namespace A253944.P6810801500180955472
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (Nat.choose (n + 3) 2) 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A253944.P6810801500180955472

namespace A253944

/-- `∑[∑[∑[C(C(n+3, 2), 2)]]]` -/
def P6810801500180955472.Spec : Prop :=
  ∀ n, (P6810801500180955472.a n : ℤ) = A253944 (n + 6)

end A253944

/-! ## A253944.P8308896647340550679

`C(n+7, 7)/(1-2/3)`
-/

namespace A253944.P8308896647340550679
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose (n + 7) 7 : ℚ) / (1 - (2 : ℚ) / 3)

end

end A253944.P8308896647340550679

namespace A253944

/-- `C(n+7, 7)/(1-2/3)` -/
def P8308896647340550679.Spec : Prop :=
  ∀ n, P8308896647340550679.a n = (A253944 (n + 6) : ℚ)

theorem P8308896647340550679.correct : P8308896647340550679.Spec := by
  intro n
  simp only [A253944, Nat.add_sub_cancel, A253944.P8308896647340550679.a, A253944.P13400668633738721158.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A253944

/-! ## A253944.P7408341264502833915

`(7/n+1)*a(n-1)` with `a(0)=3`
-/

namespace A253944.P7408341264502833915
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [3] fun n a =>
  (7 / (n : ℚ) + 1) * a (n - 1)

end

end A253944.P7408341264502833915

namespace A253944

/-- `(7/n+1)*a(n-1)` -/
def P7408341264502833915.Spec : Prop :=
  ∀ n, P7408341264502833915.a n = (A253944 (n + 6) : ℚ)

end A253944

/-! ## A253944.P2014527764524026925

`∑[∑[∑[∑[∑[∑[3*(n+1)]]]]]]`
-/

namespace A253944.P2014527764524026925
noncomputable section

def f6 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * (n + 1)

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f6 j

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A253944.P2014527764524026925

namespace A253944

/-- `∑[∑[∑[∑[∑[∑[3*(n+1)]]]]]]` -/
def P2014527764524026925.Spec : Prop :=
  ∀ n, (P2014527764524026925.a n : ℤ) = A253944 (n + 6)

end A253944

/-! ## A253944.P13861976409439680258

`A253947(n+6)/2`
-/

namespace A253944.P13861976409439680258
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A253947 (n + 6) : ℚ) / 2

end

end A253944.P13861976409439680258

namespace A253944

/-- `A253947(n+6)/2` -/
def P13861976409439680258.Spec : Prop :=
  ∀ n, P13861976409439680258.a n = (A253944 (n + 6) : ℚ)

theorem P13861976409439680258.correct : P13861976409439680258.Spec := by
  intro n
  simp only [A253944, Nat.add_sub_cancel, A253944.P13861976409439680258.a, A253944.P13400668633738721158.a, A253947, A253947.P518104505896872323.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A253944

/-! ## A253944.P8973223854689574010

`3/(n+1)*A056001(n)`
-/

namespace A253944.P8973223854689574010
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  3 / (n + 1 : ℚ) * (A056001 n : ℚ)

end

end A253944.P8973223854689574010

namespace A253944

/-- `3/(n+1)*A056001(n)` -/
def P8973223854689574010.Spec : Prop :=
  ∀ n, P8973223854689574010.a n = (A253944 (n + 6) : ℚ)

end A253944

/-! ## A253944.P4621518817383003702

`A097299(n)-A095664(n)`
-/

namespace A253944.P4621518817383003702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097299 n - A095664 n

end

end A253944.P4621518817383003702

namespace A253944

/-- `A097299(n)-A095664(n)` -/
def P4621518817383003702.Spec : Prop :=
  ∀ n, P4621518817383003702.a n = A253944 (n + 6)

end A253944

/-! ## A253944.P3756163883675385567

`(A096945(n)+A050484(n))/2`
-/

namespace A253944.P3756163883675385567
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A096945 n + A050484 n : ℚ) / 2

end

end A253944.P3756163883675385567

namespace A253944

/-- `(A096945(n)+A050484(n))/2` -/
def P3756163883675385567.Spec : Prop :=
  ∀ n, P3756163883675385567.a n = (A253944 (n + 6) : ℚ)

end A253944

/-! ## A253944.P15902562892167530713

`A095671(n)-A000581(n+8)`
-/

namespace A253944.P15902562892167530713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095671 n - A000581 (n + 8)

end

end A253944.P15902562892167530713

namespace A253944

/-- `A095671(n)-A000581(n+8)` -/
def P15902562892167530713.Spec : Prop :=
  ∀ n, P15902562892167530713.a n = A253944 (n + 6)

end A253944

/-! ## A253944.P12089367780875854871

`(A027767(n+6)-A056001(n))/2`
-/

namespace A253944.P12089367780875854871
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A027767 (n + 6) - A056001 n : ℚ) / 2

end

end A253944.P12089367780875854871

namespace A253944

/-- `(A027767(n+6)-A056001(n))/2` -/
def P12089367780875854871.Spec : Prop :=
  ∀ n, P12089367780875854871.a n = (A253944 (n + 6) : ℚ)

theorem P12089367780875854871.correct : P12089367780875854871.Spec := by
  intro n
  simp only [A253944, Nat.add_sub_cancel, A253944.P12089367780875854871.a, A253944.P13400668633738721158.a, A027767, A027767.P16883382579102568469.a, A056001, A056001.P7199293198047440355.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A253944

/-! ## A253944.P652068841654999503

`A027792(n+4)%A112460(n+4)`
-/

namespace A253944.P652068841654999503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A027792 (n + 4)) (A112460 (n + 4))

end

end A253944.P652068841654999503

namespace A253944

/-- `A027792(n+4)%A112460(n+4)` -/
def P652068841654999503.Spec : Prop :=
  ∀ n, P652068841654999503.a n = A253944 (n + 6)

end A253944

/-! ## A253944.P3670680912879898876

`(A101097(n+1)+A027765(n+4))/2`
-/

namespace A253944.P3670680912879898876
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A101097 (n + 1) + A027765 (n + 4) : ℚ) / 2

end

end A253944.P3670680912879898876

namespace A253944

/-- `(A101097(n+1)+A027765(n+4))/2` -/
def P3670680912879898876.Spec : Prop :=
  ∀ n, P3670680912879898876.a n = (A253944 (n + 6) : ℚ)

end A253944

/-! ## A253944.P1248042119010990206

`A095665(n)+A095671(n)-∑[A095671(n)]`
-/

namespace A253944.P1248042119010990206
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095671 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095665 n + (A095671 n - ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A253944.P1248042119010990206

namespace A253944

/-- `A095665(n)+A095671(n)-∑[A095671(n)]` -/
def P1248042119010990206.Spec : Prop :=
  ∀ n, P1248042119010990206.a n = A253944 (n + 6)

end A253944

/-! ## A253944.P4066085197757831278

`A000580(n+7)+A000580(n+7)+A000580(A020719(n))`
-/

namespace A253944.P4066085197757831278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000580 (n + 7) + (A000580 (n + 7) + A000580 (A020719 n).toNat)

end

end A253944.P4066085197757831278

namespace A253944

/-- `A000580(n+7)+A000580(n+7)+A000580(A020719(n))` -/
def P4066085197757831278.Spec : Prop :=
  ∀ n, P4066085197757831278.a n = A253944 (n + 6)

end A253944

/-! ## A253944.P2267115478473061805

`A266733(n+1)/7`
-/

namespace A253944.P2267115478473061805
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A266733 (n + 1) : ℚ) / 7

end

end A253944.P2267115478473061805

namespace A253944

/-- `A266733(n+1)/7` -/
def P2267115478473061805.Spec : Prop :=
  ∀ n, P2267115478473061805.a n = (A253944 (n + 6) : ℚ)

theorem P2267115478473061805.correct : P2267115478473061805.Spec := by
  intro n
  simp only [A253944, Nat.add_sub_cancel, A253944.P2267115478473061805.a, A253944.P13400668633738721158.a, A266733, A266733.P17331750459027999541.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A253944

/-! ## A253944.P7095604051093842470

`A050494(n+1)+A000580(n+7)-A000580(n+8)`
-/

namespace A253944.P7095604051093842470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050494 (n + 1) + (A000580 (n + 7) - A000580 (n + 8))

end

end A253944.P7095604051093842470

namespace A253944

/-- `A050494(n+1)+A000580(n+7)-A000580(n+8)` -/
def P7095604051093842470.Spec : Prop :=
  ∀ n, P7095604051093842470.a n = A253944 (n + 6)

end A253944

/-! ## A253944.P8386126425338165144

`Δ[record[3*(C(n, 8)-char[1])]]`
-/

namespace A253944.P8386126425338165144
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * ((Nat.choose n 8 : ℤ) - ((if ∃ j, f3 j = n then 1 else 0 : ℕ) : ℤ))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A253944.P8386126425338165144

namespace A253944

/-- `Δ[record[3*(C(n, 8)-char[1])]]` -/
def P8386126425338165144.Spec : Prop :=
  ∀ n, P8386126425338165144.a n = A253944 (n + 6)

end A253944

/-! ## A253944.P416174032859727766

`A178440(2*n+1)+A178440(2*n+1)/2`
-/

namespace A253944.P416174032859727766
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A178440 (2 * n + 1) : ℚ) + (A178440 (2 * n + 1) : ℚ) / 2

end

end A253944.P416174032859727766

namespace A253944

/-- `A178440(2*n+1)+A178440(2*n+1)/2` -/
def P416174032859727766.Spec : Prop :=
  ∀ n, P416174032859727766.a n = (A253944 (n + 6) : ℚ)

end A253944

/-!
# A253945: a(n) = 6*binomial(n+1,5).

The programs for A253945, the canonical program `A253945.P17970283316615102890` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A253945 has offset 4).

The definition of A253945 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `6*C(n+5, 5)` (program `A253945.P17970283316615102890`, by `A253945.P17970283316615102890.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A253945.P17970283316615102890

`6*C(n+5, 5)`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A253945

/-- `6*C(n+5, 5)` -/
def P17970283316615102890.Spec : Prop :=
  ∀ n, (P17970283316615102890.a n : ℤ) = A253945 (n + 4)

theorem P17970283316615102890.correct : P17970283316615102890.Spec := by
  intro n
  simp only [A253945, Nat.add_sub_cancel]

end A253945

/-! ## A253945.P13727257074998344482

`6*A000389(n+5)`
-/

namespace A253945.P13727257074998344482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A000389 (n + 5)

end

end A253945.P13727257074998344482

namespace A253945

/-- `6*A000389(n+5)` -/
def P13727257074998344482.Spec : Prop :=
  ∀ n, P13727257074998344482.a n = A253945 (n + 4)

theorem P13727257074998344482.correct : P13727257074998344482.Spec := by
  intro n
  simp only [A253945, Nat.add_sub_cancel, A253945.P13727257074998344482.a, A253945.P17970283316615102890.a, A000389, A000389.P15450220129395289428.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A253945

/-! ## A253945.P1078572832351632827

`∑[∑[∑[∑[6*(n+1)]]]]`
-/

namespace A253945.P1078572832351632827
noncomputable section

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 * (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A253945.P1078572832351632827

namespace A253945

/-- `∑[∑[∑[∑[6*(n+1)]]]]` -/
def P1078572832351632827.Spec : Prop :=
  ∀ n, (P1078572832351632827.a n : ℤ) = A253945 (n + 4)

end A253945

/-! ## A253945.P14434558337859050727

`(5/n+1)*a(n-1)` with `a(0)=6`
-/

namespace A253945.P14434558337859050727
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [6] fun n a =>
  (5 / (n : ℚ) + 1) * a (n - 1)

end

end A253945.P14434558337859050727

namespace A253945

/-- `(5/n+1)*a(n-1)` -/
def P14434558337859050727.Spec : Prop :=
  ∀ n, P14434558337859050727.a n = (A253945 (n + 4) : ℚ)

end A253945

/-! ## A253945.P12036469390711342982

`floor(∑[∑[∑[∑[a(n-1)+6]]]])` with `a(0)=6`

`floor` is left out, it is the identity on integers.
-/

namespace A253945.P12036469390711342982
noncomputable section

def f4 : ℕ → ℕ := SequenceMachineLib.rec [6] fun n f4 =>
  f4 (n - 1) + 6

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A253945.P12036469390711342982

namespace A253945

/-- `floor(∑[∑[∑[∑[a(n-1)+6]]]])` -/
def P12036469390711342982.Spec : Prop :=
  ∀ n, (P12036469390711342982.a n : ℤ) = A253945 (n + 4)

end A253945

/-! ## A253945.P1415390760752172250

`∑[∑[∑[a(n-1)+6]]]+a(n-1)` with `a(0)=6`
-/

namespace A253945.P1415390760752172250
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.rec [6] fun n f3 =>
  f3 (n - 1) + 6

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.rec [6] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j + a (n - 1)

end

end A253945.P1415390760752172250

namespace A253945

/-- `∑[∑[∑[a(n-1)+6]]]+a(n-1)` -/
def P1415390760752172250.Spec : Prop :=
  ∀ n, (P1415390760752172250.a n : ℤ) = A253945 (n + 4)

end A253945

/-! ## A253945.P8148890711534274976

`A158874(n+1)/4`
-/

namespace A253945.P8148890711534274976
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A158874 (n + 1) : ℚ) / 4

end

end A253945.P8148890711534274976

namespace A253945

/-- `A158874(n+1)/4` -/
def P8148890711534274976.Spec : Prop :=
  ∀ n, P8148890711534274976.a n = (A253945 (n + 4) : ℚ)

theorem P8148890711534274976.correct : P8148890711534274976.Spec := by
  intro n
  simp only [A253945, Nat.add_sub_cancel, A253945.P8148890711534274976.a, A253945.P17970283316615102890.a, A158874, A158874.P5308552197139117171.a, A000389, A000389.P15450220129395289428.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A253945

/-! ## A253945.P8971064085214890527

`A054559(n+5)/5`
-/

namespace A253945.P8971064085214890527
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A054559 (n + 5) : ℚ) / 5

end

end A253945.P8971064085214890527

namespace A253945

/-- `A054559(n+5)/5` -/
def P8971064085214890527.Spec : Prop :=
  ∀ n, P8971064085214890527.a n = (A253945 (n + 4) : ℚ)

theorem P8971064085214890527.correct : P8971064085214890527.Spec := by
  intro n
  simp only [A253945, Nat.add_sub_cancel, A253945.P8971064085214890527.a, A253945.P17970283316615102890.a, A054559, A054559.P15202165871438408034.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A253945

/-! ## A253945.P2860674716946019547

`A096943(n)+A027800(n)`
-/

namespace A253945.P2860674716946019547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096943 n + A027800 n

end

end A253945.P2860674716946019547

namespace A253945

/-- `A096943(n)+A027800(n)` -/
def P2860674716946019547.Spec : Prop :=
  ∀ n, P2860674716946019547.a n = A253945 (n + 4)

end A253945

/-! ## A253945.P6641300384135210371

`A174002(n)+A096959(n)`
-/

namespace A253945.P6641300384135210371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174002 n + A096959 n

end

end A253945.P6641300384135210371

namespace A253945

/-- `A174002(n)+A096959(n)` -/
def P6641300384135210371.Spec : Prop :=
  ∀ n, P6641300384135210371.a n = A253945 (n + 4)

end A253945

/-! ## A253945.P6529978950364084784

`A095668(n)+A006470(n+1)`
-/

namespace A253945.P6529978950364084784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095668 n + A006470 (n + 1)

end

end A253945.P6529978950364084784

namespace A253945

/-- `A095668(n)+A006470(n+1)` -/
def P6529978950364084784.Spec : Prop :=
  ∀ n, P6529978950364084784.a n = A253945 (n + 4)

end A253945

/-! ## A253945.P12833301905979353657

`2*(A097297(n)-A095662(n))`
-/

namespace A253945.P12833301905979353657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A097297 n - A095662 n)

end

end A253945.P12833301905979353657

namespace A253945

/-- `2*(A097297(n)-A095662(n))` -/
def P12833301905979353657.Spec : Prop :=
  ∀ n, P12833301905979353657.a n = A253945 (n + 4)

end A253945

/-! ## A253945.P9326701613367367318

`A051880(n+1)-A034263(n+1)`
-/

namespace A253945.P9326701613367367318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051880 (n + 1) - A034263 (n + 1)

end

end A253945.P9326701613367367318

namespace A253945

/-- `A051880(n+1)-A034263(n+1)` -/
def P9326701613367367318.Spec : Prop :=
  ∀ n, P9326701613367367318.a n = A253945 (n + 4)

theorem P9326701613367367318.correct : P9326701613367367318.Spec := by
  intro n
  simp only [A253945, Nat.add_sub_cancel, A253945.P9326701613367367318.a, A253945.P17970283316615102890.a, A034263, A034263.P5868129197671622568.a, A051880, A051880.P18339695450162809644.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A253945

/-! ## A253945.P1088195757719028734

`A006411(n+1)+A000574(n+3)`
-/

namespace A253945.P1088195757719028734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006411 (n + 1) + A000574 (n + 3)

end

end A253945.P1088195757719028734

namespace A253945

/-- `A006411(n+1)+A000574(n+3)` -/
def P1088195757719028734.Spec : Prop :=
  ∀ n, P1088195757719028734.a n = A253945 (n + 4)

end A253945

/-! ## A253945.P16730720915485290910

`A027764(n+3)+A005583(n+1)`
-/

namespace A253945.P16730720915485290910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027764 (n + 3) + A005583 (n + 1)

end

end A253945.P16730720915485290910

namespace A253945

/-- `A027764(n+3)+A005583(n+1)` -/
def P16730720915485290910.Spec : Prop :=
  ∀ n, P16730720915485290910.a n = A253945 (n + 4)

end A253945

/-! ## A253945.P9673407708155907689

`2*(A027789(n+1)-A051877(n))`
-/

namespace A253945.P9673407708155907689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A027789 (n + 1) - A051877 n)

end

end A253945.P9673407708155907689

namespace A253945

/-- `2*(A027789(n+1)-A051877(n))` -/
def P9673407708155907689.Spec : Prop :=
  ∀ n, P9673407708155907689.a n = A253945 (n + 4)

end A253945

/-! ## A253945.P13312958898714625033

`2*(A096944(n)-A005584(n+1))`
-/

namespace A253945.P13312958898714625033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A096944 n - A005584 (n + 1))

end

end A253945.P13312958898714625033

namespace A253945

/-- `2*(A096944(n)-A005584(n+1))` -/
def P13312958898714625033.Spec : Prop :=
  ∀ n, P13312958898714625033.a n = A253945 (n + 4)

end A253945

/-! ## A253945.P16553507790998461184

`A264750(n+5)+A005585(n+1)`
-/

namespace A253945.P16553507790998461184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264750 (n + 5) + A005585 (n + 1)

end

end A253945.P16553507790998461184

namespace A253945

/-- `A264750(n+5)+A005585(n+1)` -/
def P16553507790998461184.Spec : Prop :=
  ∀ n, P16553507790998461184.a n = A253945 (n + 4)

end A253945

/-! ## A253945.P10159262610945156396

`2*(A001919(n+3)-A095663(n))`
-/

namespace A253945.P10159262610945156396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A001919 (n + 3) - A095663 n)

end

end A253945.P10159262610945156396

namespace A253945

/-- `2*(A001919(n+3)-A095663(n))` -/
def P10159262610945156396.Spec : Prop :=
  ∀ n, P10159262610945156396.a n = A253945 (n + 4)

end A253945

/-! ## A253945.P7080030232072896057

`2*(A095671(n)-A005716(n+4))`
-/

namespace A253945.P7080030232072896057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A095671 n - A005716 (n + 4))

end

end A253945.P7080030232072896057

namespace A253945

/-- `2*(A095671(n)-A005716(n+4))` -/
def P7080030232072896057.Spec : Prop :=
  ∀ n, P7080030232072896057.a n = A253945 (n + 4)

end A253945

/-!
# A253946: a(n) = 6*binomial(n+1, 6).

The programs for A253946, the canonical program `A253946.P6076803449469898878` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A253946 has offset 5).

The definition of A253946 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `6*C(n+6, 6)` (program `A253946.P6076803449469898878`, by `A253946.P6076803449469898878.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A253946.P6076803449469898878

`6*C(n+6, 6)`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A253946

/-- `6*C(n+6, 6)` -/
def P6076803449469898878.Spec : Prop :=
  ∀ n, (P6076803449469898878.a n : ℤ) = A253946 (n + 5)

theorem P6076803449469898878.correct : P6076803449469898878.Spec := by
  intro n
  simp only [A253946, Nat.add_sub_cancel]

end A253946

/-! ## A253946.P3957810539205751144

`6*A000579(n+6)`
-/

namespace A253946.P3957810539205751144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A000579 (n + 6)

end

end A253946.P3957810539205751144

namespace A253946

/-- `6*A000579(n+6)` -/
def P3957810539205751144.Spec : Prop :=
  ∀ n, P3957810539205751144.a n = A253946 (n + 5)

theorem P3957810539205751144.correct : P3957810539205751144.Spec := by
  intro n
  simp only [A253946, Nat.add_sub_cancel, A253946.P3957810539205751144.a, A253946.P6076803449469898878.a, A000579, A000579.P13663713855180125612.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A253946

/-! ## A253946.P8036548665463999437

`∑[∑[∑[∑[∑[6*(n+1)]]]]]`
-/

namespace A253946.P8036548665463999437
noncomputable section

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 * (n + 1)

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A253946.P8036548665463999437

namespace A253946

/-- `∑[∑[∑[∑[∑[6*(n+1)]]]]]` -/
def P8036548665463999437.Spec : Prop :=
  ∀ n, (P8036548665463999437.a n : ℤ) = A253946 (n + 5)

end A253946

/-! ## A253946.P15931334386514450150

`(6/n+1)*a(n-1)` with `a(0)=6`
-/

namespace A253946.P15931334386514450150
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [6] fun n a =>
  (6 / (n : ℚ) + 1) * a (n - 1)

end

end A253946.P15931334386514450150

namespace A253946

/-- `(6/n+1)*a(n-1)` -/
def P15931334386514450150.Spec : Prop :=
  ∀ n, P15931334386514450150.a n = (A253946 (n + 5) : ℚ)

end A253946

/-! ## A253946.P18037189132451408673

`2*A253943(n+5)`
-/

namespace A253946.P18037189132451408673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A253943 (n + 5)

end

end A253946.P18037189132451408673

namespace A253946

/-- `2*A253943(n+5)` -/
def P18037189132451408673.Spec : Prop :=
  ∀ n, P18037189132451408673.a n = A253946 (n + 5)

theorem P18037189132451408673.correct : P18037189132451408673.Spec := by
  intro n
  simp only [A253946, Nat.add_sub_cancel, A253946.P18037189132451408673.a, A253946.P6076803449469898878.a, A253943, A253943.P13811631243431024580.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A253946

/-! ## A253946.P2436786695549249954

`∑[A054559(n+5)]/5`
-/

namespace A253946.P2436786695549249954
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054559 (n + 5)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 5

end

end A253946.P2436786695549249954

namespace A253946

/-- `∑[A054559(n+5)]/5` -/
def P2436786695549249954.Spec : Prop :=
  ∀ n, P2436786695549249954.a n = (A253946 (n + 5) : ℚ)

end A253946

/-! ## A253946.P11661047359064799687

`∏[(n+6)/A028310(n)]`
-/

namespace A253946.P11661047359064799687
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 6 : ℚ) / (A028310 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A253946.P11661047359064799687

namespace A253946

/-- `∏[(n+6)/A028310(n)]` -/
def P11661047359064799687.Spec : Prop :=
  ∀ n, P11661047359064799687.a n = (A253946 (n + 5) : ℚ)

end A253946

/-! ## A253946.P4415333486160017047

`(n+1)*(A062988(n)+1)`
-/

namespace A253946.P4415333486160017047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A062988 n + 1)

end

end A253946.P4415333486160017047

namespace A253946

/-- `(n+1)*(A062988(n)+1)` -/
def P4415333486160017047.Spec : Prop :=
  ∀ n, P4415333486160017047.a n = A253946 (n + 5)

theorem P4415333486160017047.correct : P4415333486160017047.Spec := by
  intro n
  simp only [A253946, Nat.add_sub_cancel, A253946.P4415333486160017047.a, A253946.P6076803449469898878.a, A062988, A062988.P10319984421922645529.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A253946

/-! ## A253946.P3790890129353185122

`(n+1)*(A166808(n+1)+2)`
-/

namespace A253946.P3790890129353185122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A166808 (n + 1) + 2)

end

end A253946.P3790890129353185122

namespace A253946

/-- `(n+1)*(A166808(n+1)+2)` -/
def P3790890129353185122.Spec : Prop :=
  ∀ n, P3790890129353185122.a n = A253946 (n + 5)

theorem P3790890129353185122.correct : P3790890129353185122.Spec := by
  intro n
  simp only [A253946, Nat.add_sub_cancel, A253946.P3790890129353185122.a, A253946.P6076803449469898878.a, A166808, A166808.P9614524992927031431.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A253946

/-! ## A253946.P2159162143876659905

`2*A027811(n+1)/(n+2)`
-/

namespace A253946.P2159162143876659905
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 * ((A027811 (n + 1) : ℚ) / (n + 2 : ℚ))

end

end A253946.P2159162143876659905

namespace A253946

/-- `2*A027811(n+1)/(n+2)` -/
def P2159162143876659905.Spec : Prop :=
  ∀ n, P2159162143876659905.a n = (A253946 (n + 5) : ℚ)

theorem P2159162143876659905.correct : P2159162143876659905.Spec := by
  intro n
  simp only [A253946, Nat.add_sub_cancel, A253946.P2159162143876659905.a, A253946.P6076803449469898878.a, A027811, A027811.P17959991506038065412.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A253946

/-! ## A253946.P6856515693003352461

`(n+1)*(A027659(n)+2+n)`
-/

namespace A253946.P6856515693003352461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A027659 n + 2 + (n : ℤ))

end

end A253946.P6856515693003352461

namespace A253946

/-- `(n+1)*(A027659(n)+2+n)` -/
def P6856515693003352461.Spec : Prop :=
  ∀ n, P6856515693003352461.a n = A253946 (n + 5)

theorem P6856515693003352461.correct : P6856515693003352461.Spec := by
  intro n
  simp only [A253946, Nat.add_sub_cancel, A253946.P6856515693003352461.a, A253946.P6076803449469898878.a, A027659, A027659.P8446224191872039570.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A253946

/-! ## A253946.P12075182387867250702

`A096944(n)+A051946(n)`
-/

namespace A253946.P12075182387867250702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096944 n + A051946 n

end

end A253946.P12075182387867250702

namespace A253946

/-- `A096944(n)+A051946(n)` -/
def P12075182387867250702.Spec : Prop :=
  ∀ n, P12075182387867250702.a n = A253946 (n + 5)

end A253946

/-! ## A253946.P7668036511348786477

`A027811(n+1)-A266733(n)`
-/

namespace A253946.P7668036511348786477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027811 (n + 1) - A266733 n

end

end A253946.P7668036511348786477

namespace A253946

/-- `A027811(n+1)-A266733(n)` -/
def P7668036511348786477.Spec : Prop :=
  ∀ n, P7668036511348786477.a n = A253946 (n + 5)

theorem P7668036511348786477.correct : P7668036511348786477.Spec := by
  intro n
  simp only [A253946, Nat.add_sub_cancel, A253946.P7668036511348786477.a, A253946.P6076803449469898878.a, A027811, A027811.P17959991506038065412.a, A266733, A266733.P17331750459027999541.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A253946

/-! ## A253946.P405230240565582684

`A112459(n+3)+A095662(n)`
-/

namespace A253946.P405230240565582684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112459 (n + 3) + A095662 n

end

end A253946.P405230240565582684

namespace A253946

/-- `A112459(n+3)+A095662(n)` -/
def P405230240565582684.Spec : Prop :=
  ∀ n, P405230240565582684.a n = A253946 (n + 5)

end A253946

/-! ## A253946.P15607780409847850174

`2*(A097298(n)-A095663(n))`
-/

namespace A253946.P15607780409847850174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A097298 n - A095663 n)

end

end A253946.P15607780409847850174

namespace A253946

/-- `2*(A097298(n)-A095663(n))` -/
def P15607780409847850174.Spec : Prop :=
  ∀ n, P15607780409847850174.a n = A253946 (n + 5)

end A253946

/-! ## A253946.P2731515342938635128

`2*(A040977(n)+A005584(n+1))`
-/

namespace A253946.P2731515342938635128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A040977 n + A005584 (n + 1))

end

end A253946.P2731515342938635128

namespace A253946

/-- `2*(A040977(n)+A005584(n+1))` -/
def P2731515342938635128.Spec : Prop :=
  ∀ n, P2731515342938635128.a n = A253946 (n + 5)

end A253946

/-! ## A253946.P5486574720665908756

`2*A027779(n+4)/A020710(n)`
-/

namespace A253946.P5486574720665908756
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 * ((A027779 (n + 4) : ℚ) / (A020710 n : ℚ))

end

end A253946.P5486574720665908756

namespace A253946

/-- `2*A027779(n+4)/A020710(n)` -/
def P5486574720665908756.Spec : Prop :=
  ∀ n, P5486574720665908756.a n = (A253946 (n + 5) : ℚ)

theorem P5486574720665908756.correct : P5486574720665908756.Spec := by
  intro n
  simp only [A253946, Nat.add_sub_cancel, A253946.P5486574720665908756.a, A253946.P6076803449469898878.a, A020710, A020710.P12161966585787702209.a, A027779, A027779.P1262678986337575963.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A253946

/-! ## A253946.P14940252512020738330

`2*(A095670(n)-A000580(n+7))`
-/

namespace A253946.P14940252512020738330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A095670 n - A000580 (n + 7))

end

end A253946.P14940252512020738330

namespace A253946

/-- `2*(A095670(n)-A000580(n+7))` -/
def P14940252512020738330.Spec : Prop :=
  ∀ n, P14940252512020738330.a n = A253946 (n + 5)

end A253946

/-! ## A253946.P577348359992676384

`A253943(n+5)+A253943(A020710(n))`
-/

namespace A253946.P577348359992676384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253943 (n + 5) + A253943 (A020710 n).toNat

end

end A253946.P577348359992676384

namespace A253946

/-- `A253943(n+5)+A253943(A020710(n))` -/
def P577348359992676384.Spec : Prop :=
  ∀ n, P577348359992676384.a n = A253946 (n + 5)

end A253946

/-! ## A253946.P9420506972324510237

`A027765(n+4)+A027765(n+4)/A020710(n)`
-/

namespace A253946.P9420506972324510237
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A027765 (n + 4) : ℚ) + (A027765 (n + 4) : ℚ) / (A020710 n : ℚ)

end

end A253946.P9420506972324510237

namespace A253946

/-- `A027765(n+4)+A027765(n+4)/A020710(n)` -/
def P9420506972324510237.Spec : Prop :=
  ∀ n, P9420506972324510237.a n = (A253946 (n + 5) : ℚ)

theorem P9420506972324510237.correct : P9420506972324510237.Spec := by
  intro n
  simp only [A253946, Nat.add_sub_cancel, A253946.P9420506972324510237.a, A253946.P6076803449469898878.a, A020710, A020710.P12161966585787702209.a, A027765, A027765.P15969066504210946878.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A253946

/-!
# A253947: a(n) = 6*binomial(n+1,7).

The programs for A253947, the canonical program `A253947.P518104505896872323` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A253947 has offset 6).

The definition of A253947 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `6*C(n+7, 7)` (program `A253947.P518104505896872323`, by `A253947.P518104505896872323.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A253947.P518104505896872323

`6*C(n+7, 7)`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A253947

/-- `6*C(n+7, 7)` -/
def P518104505896872323.Spec : Prop :=
  ∀ n, (P518104505896872323.a n : ℤ) = A253947 (n + 6)

theorem P518104505896872323.correct : P518104505896872323.Spec := by
  intro n
  simp only [A253947, Nat.add_sub_cancel]

end A253947

/-! ## A253947.P18190009878537455231

`6*A000580(n+7)`
-/

namespace A253947.P18190009878537455231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A000580 (n + 7)

end

end A253947.P18190009878537455231

namespace A253947

/-- `6*A000580(n+7)` -/
def P18190009878537455231.Spec : Prop :=
  ∀ n, P18190009878537455231.a n = A253947 (n + 6)

theorem P18190009878537455231.correct : P18190009878537455231.Spec := by
  intro n
  simp only [A253947, Nat.add_sub_cancel, A253947.P18190009878537455231.a, A253947.P518104505896872323.a, A000580, A000580.P16667415707980948191.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A253947

/-! ## A253947.P287451442065276041

`(7/n+1)*a(n-1)` with `a(0)=6`
-/

namespace A253947.P287451442065276041
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [6] fun n a =>
  (7 / (n : ℚ) + 1) * a (n - 1)

end

end A253947.P287451442065276041

namespace A253947

/-- `(7/n+1)*a(n-1)` -/
def P287451442065276041.Spec : Prop :=
  ∀ n, P287451442065276041.a n = (A253947 (n + 6) : ℚ)

end A253947

/-! ## A253947.P16788753379669880621

`∑[∑[∑[∑[∑[∑[6*(n+1)]]]]]]`
-/

namespace A253947.P16788753379669880621
noncomputable section

def f6 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 * (n + 1)

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f6 j

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A253947.P16788753379669880621

namespace A253947

/-- `∑[∑[∑[∑[∑[∑[6*(n+1)]]]]]]` -/
def P16788753379669880621.Spec : Prop :=
  ∀ n, (P16788753379669880621.a n : ℤ) = A253947 (n + 6)

end A253947

/-! ## A253947.P769985828827148237

`2*A253944(n+6)`
-/

namespace A253947.P769985828827148237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A253944 (n + 6)

end

end A253947.P769985828827148237

namespace A253947

/-- `2*A253944(n+6)` -/
def P769985828827148237.Spec : Prop :=
  ∀ n, P769985828827148237.a n = A253947 (n + 6)

theorem P769985828827148237.correct : P769985828827148237.Spec := by
  intro n
  simp only [A253947, Nat.add_sub_cancel, A253947.P769985828827148237.a, A253947.P518104505896872323.a, A253944, A253944.P13400668633738721158.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A253947

/-! ## A253947.P2335806786966890566

`6*∑[A124089(n+6)+1]`
-/

namespace A253947.P2335806786966890566
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124089 (n + 6) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A253947.P2335806786966890566

namespace A253947

/-- `6*∑[A124089(n+6)+1]` -/
def P2335806786966890566.Spec : Prop :=
  ∀ n, P2335806786966890566.a n = A253947 (n + 6)

end A253947

/-! ## A253947.P6328796581788870176

`A096945(n)+A050484(n)`
-/

namespace A253947.P6328796581788870176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096945 n + A050484 n

end

end A253947.P6328796581788870176

namespace A253947

/-- `A096945(n)+A050484(n)` -/
def P6328796581788870176.Spec : Prop :=
  ∀ n, P6328796581788870176.a n = A253947 (n + 6)

end A253947

/-! ## A253947.P3503217458057801139

`2*(A097299(n)-A095664(n))`
-/

namespace A253947.P3503217458057801139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A097299 n - A095664 n)

end

end A253947.P3503217458057801139

namespace A253947

/-- `2*(A097299(n)-A095664(n))` -/
def P3503217458057801139.Spec : Prop :=
  ∀ n, P3503217458057801139.a n = A253947 (n + 6)

end A253947

/-! ## A253947.P9967526935577587239

`A027767(n+6)-A056001(n)`
-/

namespace A253947.P9967526935577587239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027767 (n + 6) - A056001 n

end

end A253947.P9967526935577587239

namespace A253947

/-- `A027767(n+6)-A056001(n)` -/
def P9967526935577587239.Spec : Prop :=
  ∀ n, P9967526935577587239.a n = A253947 (n + 6)

theorem P9967526935577587239.correct : P9967526935577587239.Spec := by
  intro n
  simp only [A253947, Nat.add_sub_cancel, A253947.P9967526935577587239.a, A253947.P518104505896872323.a, A027767, A027767.P16883382579102568469.a, A056001, A056001.P7199293198047440355.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A253947

/-! ## A253947.P6358623989845349814

`A101097(n+1)+A027765(n+4)`
-/

namespace A253947.P6358623989845349814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101097 (n + 1) + A027765 (n + 4)

end

end A253947.P6358623989845349814

namespace A253947

/-- `A101097(n+1)+A027765(n+4)` -/
def P6358623989845349814.Spec : Prop :=
  ∀ n, P6358623989845349814.a n = A253947 (n + 6)

end A253947

/-! ## A253947.P10004260278316675873

`2*(A095671(n)-A000581(n+8))`
-/

namespace A253947.P10004260278316675873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A095671 n - A000581 (n + 8))

end

end A253947.P10004260278316675873

namespace A253947

/-- `2*(A095671(n)-A000581(n+8))` -/
def P10004260278316675873.Spec : Prop :=
  ∀ n, P10004260278316675873.a n = A253947 (n + 6)

end A253947

/-! ## A253947.P16283612741664227207

`A253944(n+6)²/A000580(n+7)-A253944(n+6)`
-/

namespace A253947.P16283612741664227207
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A253944 (n + 6) ^ 2 : ℚ) / (A000580 (n + 7) : ℚ) - (A253944 (n + 6) : ℚ)

end

end A253947.P16283612741664227207

namespace A253947

/-- `A253944(n+6)²/A000580(n+7)-A253944(n+6)` -/
def P16283612741664227207.Spec : Prop :=
  ∀ n, P16283612741664227207.a n = (A253947 (n + 6) : ℚ)

theorem P16283612741664227207.correct : P16283612741664227207.Spec := by
  intro n
  simp only [A253947, Nat.add_sub_cancel, A253947.P16283612741664227207.a, A253947.P518104505896872323.a, A000580, A000580.P16667415707980948191.a, A253944, A253944.P13400668633738721158.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A253947

/-! ## A253947.P3985535935345598720

`A027765(n+4)+∑[A027765(n+4)-A027764(n+3)]`
-/

namespace A253947.P3985535935345598720
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027765 (n + 4) - A027764 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027765 (n + 4) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A253947.P3985535935345598720

namespace A253947

/-- `A027765(n+4)+∑[A027765(n+4)-A027764(n+3)]` -/
def P3985535935345598720.Spec : Prop :=
  ∀ n, P3985535935345598720.a n = A253947 (n + 6)

end A253947

/-! ## A253947.P1742673654963136576

`2*A266733(n+1)/7`
-/

namespace A253947.P1742673654963136576
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 * ((A266733 (n + 1) : ℚ) / 7)

end

end A253947.P1742673654963136576

namespace A253947

/-- `2*A266733(n+1)/7` -/
def P1742673654963136576.Spec : Prop :=
  ∀ n, P1742673654963136576.a n = (A253947 (n + 6) : ℚ)

theorem P1742673654963136576.correct : P1742673654963136576.Spec := by
  intro n
  simp only [A253947, Nat.add_sub_cancel, A253947.P1742673654963136576.a, A253947.P518104505896872323.a, A266733, A266733.P17331750459027999541.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A253947

/-! ## A253947.P1006416032328684241

`A027818(n+1)+A000581(n+8)-A000581(n+9)`
-/

namespace A253947.P1006416032328684241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027818 (n + 1) + (A000581 (n + 8) - A000581 (n + 9))

end

end A253947.P1006416032328684241

namespace A253947

/-- `A027818(n+1)+A000581(n+8)-A000581(n+9)` -/
def P1006416032328684241.Spec : Prop :=
  ∀ n, P1006416032328684241.a n = A253947 (n + 6)

theorem P1006416032328684241.correct : P1006416032328684241.Spec := by
  intro n
  simp only [A253947, Nat.add_sub_cancel, A253947.P1006416032328684241.a, A253947.P518104505896872323.a, A000581, A000581.P12083568850536544774.a, A027818, A027818.P2026887167249722118.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A253947

/-! ## A253947.P8257927827133353685

`A253944(n+7)+A253944(n+7)-A253946(n+6)`
-/

namespace A253947.P8257927827133353685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253944 (n + 7) + (A253944 (n + 7) - A253946 (n + 6))

end

end A253947.P8257927827133353685

namespace A253947

/-- `A253944(n+7)+A253944(n+7)-A253946(n+6)` -/
def P8257927827133353685.Spec : Prop :=
  ∀ n, P8257927827133353685.a n = A253947 (n + 6)

theorem P8257927827133353685.correct : P8257927827133353685.Spec := by
  intro n
  simp only [A253947, Nat.add_sub_cancel, A253947.P8257927827133353685.a, A253947.P518104505896872323.a, A253944, A253944.P13400668633738721158.a, A253946, A253946.P6076803449469898878.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A253947

/-! ## A253947.P15357604148696968946

`2*∑[∑[∑[A050534(n+3)]]]`
-/

namespace A253947.P15357604148696968946
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050534 (n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A253947.P15357604148696968946

namespace A253947

/-- `2*∑[∑[∑[A050534(n+3)]]]` -/
def P15357604148696968946.Spec : Prop :=
  ∀ n, P15357604148696968946.a n = A253947 (n + 6)

end A253947

/-! ## A253947.P8833931093529759728

`A256861(n+3)-A000580(n+9)`
-/

namespace A253947.P8833931093529759728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256861 (n + 3) - A000580 (n + 9)

end

end A253947.P8833931093529759728

namespace A253947

/-- `A256861(n+3)-A000580(n+9)` -/
def P8833931093529759728.Spec : Prop :=
  ∀ n, P8833931093529759728.a n = A253947 (n + 6)

end A253947

/-! ## A253947.P10689342129409855817

`3*A178440(Δ[n²])`
-/

namespace A253947.P10689342129409855817
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A178440 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A253947.P10689342129409855817

namespace A253947

/-- `3*A178440(Δ[n²])` -/
def P10689342129409855817.Spec : Prop :=
  ∀ n, P10689342129409855817.a n = A253947 (n + 6)

end A253947

/-! ## A253947.P1117768935108442192

`A178440(2*n+1)+2*A178440(2*n+1)`
-/

namespace A253947.P1117768935108442192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178440 (2 * n + 1) + 2 * A178440 (2 * n + 1)

end

end A253947.P1117768935108442192

namespace A253947

/-- `A178440(2*n+1)+2*A178440(2*n+1)` -/
def P1117768935108442192.Spec : Prop :=
  ∀ n, P1117768935108442192.a n = A253947 (n + 6)

end A253947

/-!
# A253948: Number of finite, negative, Archimedean, commutative, totally ordered monoids of size n (semi-groups with a neutral element that is also the top element).

The programs for A253948, there is no canonical definition to state claims against.
-/

/-! ## A253948.P12816880513962604008

`A110266(∏[floor((n+1)/∑[(1/(n+1))²])])`
-/

namespace A253948.P12816880513962604008
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 / (n + 1 : ℚ)) ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℚ) / (∑ j ∈ Finset.range (n + 1), f2 j)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110266 (∏ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A253948.P12816880513962604008

/-! ## A253948.P7273761015948981842

`A268675(A268699(log2(ceil(2^(n-1)))))`
-/

namespace A253948.P7273761015948981842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268675 (A268699 (SequenceMachineLib.roundAway (Real.logb 2 (⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉ : ℝ))).toNat).toNat

end

end A253948.P7273761015948981842

/-! ## A253948.P10137525768414359055

`A268699(A073788(floor(n-atan(n))+1))`
-/

namespace A253948.P10137525768414359055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268699 (A073788 (⌊(n : ℝ) - Real.arctan (n : ℝ)⌋ + 1).toNat).toNat

end

end A253948.P10137525768414359055

/-! ## A253948.P18322389860551451213

`A054900(∑[A045501(n+1)+2^ceil(n/2)])+1`
-/

namespace A253948.P18322389860551451213
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A045501 (n + 1) : ℚ) + (2 : ℚ) ^ (⌈(n : ℚ) / 2⌉ : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054900 (SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)).toNat + 1

end

end A253948.P18322389860551451213

/-!
# A253949: Number of finite, negative, Archimedean, totally ordered monoids of size n (semi-groups with a neutral element that is also the top element).

The programs for A253949, there is no canonical definition to state claims against.
-/

/-! ## A253949.P14938083540322464530

`A126101(A024641(n))`
-/

namespace A253949.P14938083540322464530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126101 (A024641 n).toNat

end

end A253949.P14938083540322464530

/-! ## A253949.P16070474039696165372

`A195174(A113235(n))`
-/

namespace A253949.P16070474039696165372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195174 (A113235 n).toNat

end

end A253949.P16070474039696165372

/-! ## A253949.P9176303237664115949

`A298205(A352853(n))`
-/

namespace A253949.P9176303237664115949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298205 (A352853 n).toNat

end

end A253949.P9176303237664115949

/-!
# A253952: Numbers that require three steps to collapse to a single digit in base 4 (written in base 10).

The programs for A253952, there is no canonical definition to state claims against.
-/

/-! ## A253952.P5233422044172820899

`A028899(A253953(n+1))`
-/

namespace A253952.P5233422044172820899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028899 (A253953 (n + 1)).toNat

end

end A253952.P5233422044172820899

/-!
# A253953: Numbers that require three steps to collapse to a single digit in base 4 (written in base 4).

The programs for A253953, there is no canonical definition to state claims against.
-/

/-! ## A253953.P17649727677072654361

`A007090(A253952(n+1))`
-/

namespace A253953.P17649727677072654361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007090 (A253952 (n + 1)).toNat

end

end A253953.P17649727677072654361

/-!
# A253954: Number of (n+2)X(n+2) 0..1 arrays with every 3X3 subblock diagonal median minus antidiagonal median nondecreasing horizontally, vertically and ne-to-sw antidiagonally.

The programs for A253954, there is no canonical definition to state claims against.
-/

/-! ## A253954.P625560176503576430

`A253961((n+1)²+n²)`
-/

namespace A253954.P625560176503576430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253961 ((n + 1) ^ 2 + n ^ 2)

end

end A253954.P625560176503576430

/-!
# A253955: Number of (n+2)X(2+2) 0..1 arrays with every 3X3 subblock diagonal median minus antidiagonal median nondecreasing horizontally, vertically and ne-to-sw antidiagonally.

The programs for A253955, there is no canonical definition to state claims against.
-/

/-! ## A253955.P5241587639559329667

`A253961(∑[n+2])`
-/

namespace A253955.P5241587639559329667
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253961 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A253955.P5241587639559329667

/-! ## A253955.P14277303679923051913

`record[gcd(A116598(n+1), A253961(n+2))]`
-/

namespace A253955.P14277303679923051913
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A116598 (n + 1)) (A253961 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A253955.P14277303679923051913

/-! ## A253955.P888520962228057043

`A253961(A000096(n+1))+A070204(n+1)`
-/

namespace A253955.P888520962228057043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253961 (A000096 (n + 1)).toNat + A070204 (n + 1)

end

end A253955.P888520962228057043

/-! ## A253955.P6135642442154440230

`A253961(A000096(n+1))%A017730(n+4)`
-/

namespace A253955.P6135642442154440230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A253961 (A000096 (n + 1)).toNat) (A017730 (n + 4 + 66))

end

end A253955.P6135642442154440230

/-! ## A253955.P4613885895105678854

`record[A253961(n+2)/A219421(n+3)]`
-/

namespace A253955.P4613885895105678854
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A253961 (n + 2) : ℚ) / (A219421 (n + 3) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A253955.P4613885895105678854

/-!
# A253956: Number of (n+2)X(3+2) 0..1 arrays with every 3X3 subblock diagonal median minus antidiagonal median nondecreasing horizontally, vertically and ne-to-sw antidiagonally.

The programs for A253956, there is no canonical definition to state claims against.
-/

/-! ## A253956.P18075644271647165547

`A253961(∑[n+3]+1)`
-/

namespace A253956.P18075644271647165547
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253961 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A253956.P18075644271647165547

/-! ## A253956.P16669903353484779856

`record[gcd(A116598(n+4), A253961(n+4))]`
-/

namespace A253956.P16669903353484779856
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A116598 (n + 4)) (A253961 (n + 4))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A253956.P16669903353484779856

/-!
# A253957: Number of (n+2)X(4+2) 0..1 arrays with every 3X3 subblock diagonal median minus antidiagonal median nondecreasing horizontally, vertically and ne-to-sw antidiagonally.

The programs for A253957, there is no canonical definition to state claims against.
-/

/-! ## A253957.P4232691456606747071

`A253961(A141214(n+1))`
-/

namespace A253957.P4232691456606747071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253961 (A141214 (n + 1)).toNat

end

end A253957.P4232691456606747071

/-! ## A253957.P16170589965823525261

`A253961(A056000(n)+7)`
-/

namespace A253957.P16170589965823525261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253961 (A056000 n + 7).toNat

end

end A253957.P16170589965823525261

/-! ## A253957.P2736586463934211203

`A253961(eq[3, A193592(n)])`
-/

namespace A253957.P2736586463934211203
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253961 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A253957.P2736586463934211203

/-! ## A253957.P10480748357164996110

`A253961(eq[4, A166065(n)])`
-/

namespace A253957.P10480748357164996110
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166065 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253961 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A253957.P10480748357164996110

/-! ## A253957.P9623279657900760610

`A253961(A000217(n+4)-3)`
-/

namespace A253957.P9623279657900760610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253961 (A000217 (n + 4) - 3).toNat

end

end A253957.P9623279657900760610

/-!
# A253958: Number of (n+2)X(5+2) 0..1 arrays with every 3X3 subblock diagonal median minus antidiagonal median nondecreasing horizontally, vertically and ne-to-sw antidiagonally.

The programs for A253958, there is no canonical definition to state claims against.
-/

/-! ## A253958.P6918258427021657104

`A253961(A056115(n)+11)`
-/

namespace A253958.P6918258427021657104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253961 (A056115 n + 11).toNat

end

end A253958.P6918258427021657104

/-! ## A253958.P4937266745255633719

`A253961(eq[4, A193592(n)])`
-/

namespace A253958.P4937266745255633719
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253961 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A253958.P4937266745255633719

/-! ## A253958.P2246735139403940031

`A253961(eq[8, A140996(n)])`
-/

namespace A253958.P2246735139403940031
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140996 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253961 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A253958.P2246735139403940031

/-! ## A253958.P16806241459353894946

`A253961(Δ[A023545(n+1)])`
-/

namespace A253958.P16806241459353894946
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253961 (f1 (n + 1) - f1 n).toNat

end

end A253958.P16806241459353894946

/-! ## A253958.P4874492252912217376

`A253961(A034856(n+4)-2)`
-/

namespace A253958.P4874492252912217376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253961 (A034856 (n + 4) - 2).toNat

end

end A253958.P4874492252912217376

/-!
# A253959: Number of (n+2)X(6+2) 0..1 arrays with every 3X3 subblock diagonal median minus antidiagonal median nondecreasing horizontally, vertically and ne-to-sw antidiagonally.

The programs for A253959, there is no canonical definition to state claims against.
-/

/-! ## A253959.P14730340896728308750

`A253961(eq[3, A219347(n)])`
-/

namespace A253959.P14730340896728308750
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253961 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A253959.P14730340896728308750

/-! ## A253959.P4443556354989366807

`A253961(eq[5, A193592(n)])`
-/

namespace A253959.P4443556354989366807
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253961 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A253959.P4443556354989366807

/-! ## A253959.P611267362090180034

`A253961(eq[16, A166065(n)])`
-/

namespace A253959.P611267362090180034
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166065 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253961 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A253959.P611267362090180034

/-! ## A253959.P4875317903289450391

`A253961(eq[8, A185782(n+1)])`
-/

namespace A253959.P4875317903289450391
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253961 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A253959.P4875317903289450391

/-! ## A253959.P3880281394668134769

`A253961(Δ[Δ[A006504(n+1)]])`
-/

namespace A253959.P3880281394668134769
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006504 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253961 (f1 (n + 1) - f1 n).toNat

end

end A253959.P3880281394668134769

/-!
# A253960: Number of (n+2)X(7+2) 0..1 arrays with every 3X3 subblock diagonal median minus antidiagonal median nondecreasing horizontally, vertically and ne-to-sw antidiagonally.

The programs for A253960, there is no canonical definition to state claims against.
-/

/-! ## A253960.P8958986970413256024

`A253961(eq[6, A193592(n)])`
-/

namespace A253960.P8958986970413256024
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253961 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A253960.P8958986970413256024

/-! ## A253960.P7520307420184838797

`A253961(eq[2, A219347(n)-2])`
-/

namespace A253960.P7520307420184838797
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253961 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A253960.P7520307420184838797

/-!
# A253962: Number of (2+2)X(n+2) 0..1 arrays with every 3X3 subblock diagonal median minus antidiagonal median nondecreasing horizontally, vertically and ne-to-sw antidiagonally.

The programs for A253962, there is no canonical definition to state claims against.
-/

/-! ## A253962.P1133697966442303071

`A253961(∑[n+1]+2)`
-/

namespace A253962.P1133697966442303071
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253961 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A253962.P1133697966442303071

/-! ## A253962.P17063619558158556175

`record[A010054(n)*A253961(n+2)]`
-/

namespace A253962.P17063619558158556175
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A253961 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A253962.P17063619558158556175

/-! ## A253962.P16616687421359112406

`record[root(A253961(n+2), A200370(n+1))]`
-/

namespace A253962.P16616687421359112406
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A253961 (n + 2) : ℝ) ^ (1 / (A200370 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A253962.P16616687421359112406

/-! ## A253962.P2875351754188858737

`A253961(A133263(n+1))+A000007(n+1)`
-/

namespace A253962.P2875351754188858737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253961 (A133263 (n + 1)).toNat + A000007 (n + 1)

end

end A253962.P2875351754188858737

/-! ## A253962.P2514443045446837046

`A253961(A133263(n+1))%A253963(n+1)`
-/

namespace A253962.P2514443045446837046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A253961 (A133263 (n + 1)).toNat) (A253963 (n + 1))

end

end A253962.P2514443045446837046

/-!
# A253963: Number of (3+2)X(n+2) 0..1 arrays with every 3X3 subblock diagonal median minus antidiagonal median nondecreasing horizontally, vertically and ne-to-sw antidiagonally.

The programs for A253963, there is no canonical definition to state claims against.
-/

/-! ## A253963.P7702611876020454139

`A253961(∑[n+2]+4)`
-/

namespace A253963.P7702611876020454139
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253961 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A253963.P7702611876020454139

/-! ## A253963.P7579874026949117201

`lcm(A033999(n), A253961(A167614(n+1)))`
-/

namespace A253963.P7579874026949117201
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A253961 (A167614 (n + 1)).toNat)

end

end A253963.P7579874026949117201

/-! ## A253963.P14932400554652005148

`or(A253961(A167614(n+1)), A330549(n))`
-/

namespace A253963.P14932400554652005148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A253961 (A167614 (n + 1)).toNat) (A330549 n)

end

end A253963.P14932400554652005148

/-! ## A253963.P5616907114051157573

`A253961(A167614(n+1))+A212619(n+1)`
-/

namespace A253963.P5616907114051157573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253961 (A167614 (n + 1)).toNat + A212619 (n + 1)

end

end A253963.P5616907114051157573

/-! ## A253963.P13657197671700282447

`A060576(2*n)*A253961(A167614(n+1))`
-/

namespace A253963.P13657197671700282447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060576 (2 * n) * A253961 (A167614 (n + 1)).toNat

end

end A253963.P13657197671700282447

/-!
# A253964: Number of (4+2)X(n+2) 0..1 arrays with every 3X3 subblock diagonal median minus antidiagonal median nondecreasing horizontally, vertically and ne-to-sw antidiagonally.

The programs for A253964, there is no canonical definition to state claims against.
-/

/-! ## A253964.P15541553883580734129

`A253961(∑[n+3]+7)`
-/

namespace A253964.P15541553883580734129
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253961 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A253964.P15541553883580734129

/-! ## A253964.P1365940609583064903

`A253961(A055999(n)+10)+A000007(3*n+1)`
-/

namespace A253964.P1365940609583064903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253961 (A055999 n + 10).toNat + A000007 (3 * n + 1)

end

end A253964.P1365940609583064903

/-!
# A253965: Number of (5+2)X(n+2) 0..1 arrays with every 3X3 subblock diagonal median minus antidiagonal median nondecreasing horizontally, vertically and ne-to-sw antidiagonally.

The programs for A253965, there is no canonical definition to state claims against.
-/

/-! ## A253965.P12266942775983684798

`A253961(A167499(n+3))`
-/

namespace A253965.P12266942775983684798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253961 (A167499 (n + 3)).toNat

end

end A253965.P12266942775983684798

/-! ## A253965.P8238434218711973159

`A253961(A155212(n)+13)`
-/

namespace A253965.P8238434218711973159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253961 (A155212 n + 13).toNat

end

end A253965.P8238434218711973159

/-! ## A253965.P1704970007996312689

`A253961(eq[7, A066657(n)])`
-/

namespace A253965.P1704970007996312689
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253961 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A253965.P1704970007996312689

/-! ## A253965.P15489142880169760617

`A253961(A000217(n+4)+5)`
-/

namespace A253965.P15489142880169760617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253961 (A000217 (n + 4) + 5).toNat

end

end A253965.P15489142880169760617

/-! ## A253965.P11101106744671408125

`A253961(A051936(n+4)+14)`
-/

namespace A253965.P11101106744671408125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253961 (A051936 (n + 4) + 14).toNat

end

end A253965.P11101106744671408125

/-!
# A253966: Number of (6+2)X(n+2) 0..1 arrays with every 3X3 subblock diagonal median minus antidiagonal median nondecreasing horizontally, vertically and ne-to-sw antidiagonally.

The programs for A253966, there is no canonical definition to state claims against.
-/

/-! ## A253966.P629327648562793780

`A253961(A166136(n+4))`
-/

namespace A253966.P629327648562793780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253961 (A166136 (n + 4)).toNat

end

end A253966.P629327648562793780

/-! ## A253966.P8669614396287095677

`A253961(A056115(n)+21)`
-/

namespace A253966.P8669614396287095677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253961 (A056115 n + 21).toNat

end

end A253966.P8669614396287095677

/-! ## A253966.P16844632899123571279

`A253961(A000096(n+4)+7)`
-/

namespace A253966.P16844632899123571279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253961 (A000096 (n + 4) + 7).toNat

end

end A253966.P16844632899123571279

/-! ## A253966.P11569986150404576255

`A253961(A155212(n+1)+14)`
-/

namespace A253966.P11569986150404576255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253961 (A155212 (n + 1) + 14).toNat

end

end A253966.P11569986150404576255

/-! ## A253966.P13382354749415182854

`A253961(eq[7, A131818(n+1)])`
-/

namespace A253966.P13382354749415182854
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253961 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A253966.P13382354749415182854

/-!
# A253967: Number of (7+2)X(n+2) 0..1 arrays with every 3X3 subblock diagonal median minus antidiagonal median nondecreasing horizontally, vertically and ne-to-sw antidiagonally.

The programs for A253967, there is no canonical definition to state claims against.
-/

/-! ## A253967.P18241932678019424611

`A253961(eq[8, A131818(n+1)])`
-/

namespace A253967.P18241932678019424611
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253961 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A253967.P18241932678019424611

/-!
# A253969: Primes p such that p + nextprime(p) is divisible by 6.

The programs for A253969, the canonical program `A253969.P1574330651743664428` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A253969 has offset 1).

The definition of A253969 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5979 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A253969.P13217190547936532301

`A000040(A270189(n+3))`
-/

namespace A253969.P13217190547936532301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A270189 (n + 3)).toNat

end

end A253969.P13217190547936532301

namespace A253969

/-- `A000040(A270189(n+3))` -/
def P13217190547936532301.Spec : Prop :=
  ∀ n, P13217190547936532301.a n = A253969 (n + 1)

end A253969

/-! ## A253969.P1574330651743664428

`A000040(eq[2, A006094(n+2)%3]+2)`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A253969

/-- `A000040(eq[2, A006094(n+2)%3]+2)` -/
def P1574330651743664428.Spec : Prop :=
  ∀ n, P1574330651743664428.a n = A253969 (n + 1)

theorem P1574330651743664428.correct : P1574330651743664428.Spec := by
  intro n
  simp only [A253969, Nat.add_sub_cancel]

end A253969

/-! ## A253969.P5792521583360782997

`A000040(eq[1, Δ[A039701(n+1)]²]+1)`
-/

namespace A253969.P5792521583360782997
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039701 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f3 (n + 1) - f3 n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A253969.P5792521583360782997

namespace A253969

/-- `A000040(eq[1, Δ[A039701(n+1)]²]+1)` -/
def P5792521583360782997.Spec : Prop :=
  ∀ n, P5792521583360782997.a n = A253969 (n + 1)

end A253969

/-! ## A253969.P16745496634927328984

`A000040(eq[0, A134323(n+2)+A134323(n+1)]+1)`
-/

namespace A253969.P16745496634927328984
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134323 (n + 2) + A134323 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A253969.P16745496634927328984

namespace A253969

/-- `A000040(eq[0, A134323(n+2)+A134323(n+1)]+1)` -/
def P16745496634927328984.Spec : Prop :=
  ∀ n, P16745496634927328984.a n = A253969 (n + 1)

end A253969

/-! ## A253969.P6191578111497257700

`A000040(eq[3, A039701(n+2)+A039701(n+1)]+1)`
-/

namespace A253969.P6191578111497257700
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039701 (n + 2) + A039701 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A253969.P6191578111497257700

namespace A253969

/-- `A000040(eq[3, A039701(n+2)+A039701(n+1)]+1)` -/
def P6191578111497257700.Spec : Prop :=
  ∀ n, P6191578111497257700.a n = A253969 (n + 1)

end A253969

/-! ## A253969.P2399201279284311368

`A081259(A391352(n+1))`
-/

namespace A253969.P2399201279284311368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081259 (A391352 (n + 1)).toNat

end

end A253969.P2399201279284311368

namespace A253969

/-- `A081259(A391352(n+1))` -/
def P2399201279284311368.Spec : Prop :=
  ∀ n, P2399201279284311368.a n = A253969 (n + 1)

end A253969

/-! ## A253969.P16500566084468974091

`A064989(A175442(n+2))`
-/

namespace A253969.P16500566084468974091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064989 (A175442 (n + 2)).toNat

end

end A253969.P16500566084468974091

namespace A253969

/-- `A064989(A175442(n+2))` -/
def P16500566084468974091.Spec : Prop :=
  ∀ n, P16500566084468974091.a n = A253969 (n + 1)

end A253969

/-! ## A253969.P2852000834024721039

`p?[A284429(A151800(n+1)+n)+n]`
-/

namespace A253969.P2852000834024721039
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284429 (A151800 (n + 1) + (n : ℤ)).toNat + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A253969.P2852000834024721039

namespace A253969

/-- `p?[A284429(A151800(n+1)+n)+n]` -/
def P2852000834024721039.Spec : Prop :=
  ∀ n, P2852000834024721039.a n = A253969 (n + 1)

end A253969

/-! ## A253969.P16569564487219155382

`A064989(A101635(n+2))`
-/

namespace A253969.P16569564487219155382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064989 (A101635 (n + 2)).toNat

end

end A253969.P16569564487219155382

namespace A253969

/-- `A064989(A101635(n+2))` -/
def P16569564487219155382.Spec : Prop :=
  ∀ n, P16569564487219155382.a n = A253969 (n + 1)

end A253969

/-!
# A253970: Primes p such that p + nextprime(p) is divisible by 5.

The programs for A253970, the canonical program `A253970.P10693384126688661835` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A253970 has offset 1).

The definition of A253970 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 299 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A253970.P16980257970048856522

`p?[n*A079998(A013634(n))]`
-/

namespace A253970.P16980257970048856522
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A079998 (A013634 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A253970.P16980257970048856522

namespace A253970

/-- `p?[n*A079998(A013634(n))]` -/
def P16980257970048856522.Spec : Prop :=
  ∀ n, P16980257970048856522.a n = A253970 (n + 1)

end A253970

/-! ## A253970.P5717686939575065211

`eq[A079998(A013634(n)), A317086(n)]`
-/

namespace A253970.P5717686939575065211
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079998 (A013634 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317086 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A253970.P5717686939575065211

namespace A253970

/-- `eq[A079998(A013634(n)), A317086(n)]` -/
def P5717686939575065211.Spec : Prop :=
  ∀ n, (P5717686939575065211.a n : ℤ) = A253970 (n + 1)

end A253970

/-! ## A253970.P585154284681601239

`lt[A082023(n), A079998(A013634(n))]`
-/

namespace A253970.P585154284681601239
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082023 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079998 (A013634 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A253970.P585154284681601239

namespace A253970

/-- `lt[A082023(n), A079998(A013634(n))]` -/
def P585154284681601239.Spec : Prop :=
  ∀ n, (P585154284681601239.a n : ℤ) = A253970 (n + 1)

end A253970

/-! ## A253970.P10693384126688661835

`A000040(eq[1, A079998(A011974(n+1))])`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A253970

/-- `A000040(eq[1, A079998(A011974(n+1))])` -/
def P10693384126688661835.Spec : Prop :=
  ∀ n, P10693384126688661835.a n = A253970 (n + 1)

theorem P10693384126688661835.correct : P10693384126688661835.Spec := by
  intro n
  simp only [A253970, Nat.add_sub_cancel]

end A253970

/-! ## A253970.P10545878821367259525

`eq[A079998(A013634(n)), A231820(n+1)]`
-/

namespace A253970.P10545878821367259525
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079998 (A013634 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231820 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A253970.P10545878821367259525

namespace A253970

/-- `eq[A079998(A013634(n)), A231820(n+1)]` -/
def P10545878821367259525.Spec : Prop :=
  ∀ n, (P10545878821367259525.a n : ℤ) = A253970 (n + 1)

end A253970

/-!
# A253971: Prime(n) is included iff prime(n) + n^2 is also prime.

The programs for A253971, there is no canonical definition to state claims against.
-/

/-! ## A253971.P13214564609677911891

`A000040(A064711(n+1))`
-/

namespace A253971.P13214564609677911891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A064711 (n + 1)).toNat

end

end A253971.P13214564609677911891

/-! ## A253971.P1774369599087556785

`A184935(n+1)-A064711(n+1)²`
-/

namespace A253971.P1774369599087556785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184935 (n + 1) - A064711 (n + 1) ^ 2

end

end A253971.P1774369599087556785

/-! ## A253971.P15204653154636664500

`A008578(A064711(n+1)+1)`
-/

namespace A253971.P15204653154636664500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A064711 (n + 1) + 1).toNat

end

end A253971.P15204653154636664500

/-! ## A253971.P8922319458957592316

`A182986(A064711(n+1)+1)`
-/

namespace A253971.P8922319458957592316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (A064711 (n + 1) + 1).toNat

end

end A253971.P8922319458957592316

/-! ## A253971.P3997919916099025875

`A158611(A064711(n+1)+2)`
-/

namespace A253971.P3997919916099025875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158611 (A064711 (n + 1) + 2).toNat

end

end A253971.P3997919916099025875

/-! ## A253971.P15319315974407860914

`A073846(2*A064711(n+1))`
-/

namespace A253971.P15319315974407860914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073846 (2 * A064711 (n + 1)).toNat

end

end A253971.P15319315974407860914

/-! ## A253971.P9776589094821234084

`A082500(2*A064711(n+1))`
-/

namespace A253971.P9776589094821234084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082500 (2 * A064711 (n + 1)).toNat

end

end A253971.P9776589094821234084

/-!
# A253972: Primes p such that p + nextprime(p) is divisible by 8.

The programs for A253972, the canonical program `A253972.P8307719435572186236` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A253972 has offset 1).

The definition of A253972 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A253972.P6988868787637385911

`A357373(A391355(n+1))`
-/

namespace A253972.P6988868787637385911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357373 (A391355 (n + 1)).toNat

end

end A253972.P6988868787637385911

namespace A253972

/-- `A357373(A391355(n+1))` -/
def P6988868787637385911.Spec : Prop :=
  ∀ n, P6988868787637385911.a n = A253972 (n + 1)

end A253972

/-! ## A253972.P3421151390358433872

`A000040(lt[2, A023528(n+1)])`
-/

namespace A253972.P3421151390358433872
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023528 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A253972.P3421151390358433872

namespace A253972

/-- `A000040(lt[2, A023528(n+1)])` -/
def P3421151390358433872.Spec : Prop :=
  ∀ n, P3421151390358433872.a n = A253972 (n + 1)

end A253972

/-! ## A253972.P8307719435572186236

`A065091(lt[2, A237881(n+1)])`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A253972

/-- `A065091(lt[2, A237881(n+1)])` -/
def P8307719435572186236.Spec : Prop :=
  ∀ n, P8307719435572186236.a n = A253972 (n + 1)

theorem P8307719435572186236.correct : P8307719435572186236.Spec := by
  intro n
  simp only [A253972, Nat.add_sub_cancel]

end A253972

/-! ## A253972.P16353715450047869602

`A006093(lt[2, A023528(n+1)])+1`
-/

namespace A253972.P16353715450047869602
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023528 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n) + 1

end

end A253972.P16353715450047869602

namespace A253972

/-- `A006093(lt[2, A023528(n+1)])+1` -/
def P16353715450047869602.Spec : Prop :=
  ∀ n, P16353715450047869602.a n = A253972 (n + 1)

end A253972

/-! ## A253972.P13365476912818676341

`A008578(lt[2, A023528(n+1)]+1)`
-/

namespace A253972.P13365476912818676341
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023528 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1)

end

end A253972.P13365476912818676341

namespace A253972

/-- `A008578(lt[2, A023528(n+1)]+1)` -/
def P13365476912818676341.Spec : Prop :=
  ∀ n, P13365476912818676341.a n = A253972 (n + 1)

end A253972

/-! ## A253972.P4267465234766661652

`A000040(lt[2, A237881(n+1)]+1)`
-/

namespace A253972.P4267465234766661652
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237881 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1)

end

end A253972.P4267465234766661652

namespace A253972

/-- `A000040(lt[2, A237881(n+1)]+1)` -/
def P4267465234766661652.Spec : Prop :=
  ∀ n, P4267465234766661652.a n = A253972 (n + 1)

end A253972

/-! ## A253972.P1465720787861799544

`A006005(lt[2, A237881(n+1)]+1)`
-/

namespace A253972.P1465720787861799544
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237881 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1)

end

end A253972.P1465720787861799544

namespace A253972

/-- `A006005(lt[2, A237881(n+1)]+1)` -/
def P1465720787861799544.Spec : Prop :=
  ∀ n, P1465720787861799544.a n = A253972 (n + 1)

end A253972

/-! ## A253972.P793110880682359341

`A000040(lt[2, val(A023523(n+1), 2)])`
-/

namespace A253972.P793110880682359341
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A023523 (n + 1)).toNat 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A253972.P793110880682359341

namespace A253972

/-- `A000040(lt[2, val(A023523(n+1), 2)])` -/
def P793110880682359341.Spec : Prop :=
  ∀ n, P793110880682359341.a n = A253972 (n + 1)

end A253972

/-! ## A253972.P16667668773242825149

`A000040(lt[2, val(A023515(n+1)+2, 2)])`
-/

namespace A253972.P16667668773242825149
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A023515 (n + 1) + 2).toNat 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A253972.P16667668773242825149

namespace A253972

/-- `A000040(lt[2, val(A023515(n+1)+2, 2)])` -/
def P16667668773242825149.Spec : Prop :=
  ∀ n, P16667668773242825149.a n = A253972 (n + 1)

end A253972

/-! ## A253972.P2697224884475736883

`p?[A004277(4*n)-A051697(4*n+1)]`
-/

namespace A253972.P2697224884475736883
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (4 * n) - A051697 (4 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A253972.P2697224884475736883

namespace A253972

/-- `p?[A004277(4*n)-A051697(4*n+1)]` -/
def P2697224884475736883.Spec : Prop :=
  ∀ n, P2697224884475736883.a n = A253972 (n + 1)

end A253972

/-! ## A253972.P2860884301725735761

`p?[A051697(4*n)%A051697(4*n+1)]`
-/

namespace A253972.P2860884301725735761
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A051697 (4 * n)) (A051697 (4 * n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A253972.P2860884301725735761

namespace A253972

/-- `p?[A051697(4*n)%A051697(4*n+1)]` -/
def P2860884301725735761.Spec : Prop :=
  ∀ n, P2860884301725735761.a n = A253972 (n + 1)

end A253972

/-!
# A253973: Primes p such that p + nextprime(p) is divisible by 9.

The programs for A253973, the canonical program `A253973.P8343327783554958465` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A253973 has offset 1).

The definition of A253973 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A253973.P4487163993271904977

`A008578(eq[8, dr(A076273(n))])`
-/

namespace A253973.P4487163993271904977
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A076273 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A253973.P4487163993271904977

namespace A253973

/-- `A008578(eq[8, dr(A076273(n))])` -/
def P4487163993271904977.Spec : Prop :=
  ∀ n, P4487163993271904977.a n = A253973 (n + 1)

end A253973

/-! ## A253973.P8343327783554958465

`A000040(eq[9, dr(A011974(n+1))])`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A253973

/-- `A000040(eq[9, dr(A011974(n+1))])` -/
def P8343327783554958465.Spec : Prop :=
  ∀ n, P8343327783554958465.a n = A253973 (n + 1)

theorem P8343327783554958465.correct : P8343327783554958465.Spec := by
  intro n
  simp only [A253973, Nat.add_sub_cancel]

end A253973

/-! ## A253973.P7324766344715525005

`A065091(eq[9, dr(A001043(n+1))])`
-/

namespace A253973.P7324766344715525005
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A001043 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A253973.P7324766344715525005

namespace A253973

/-- `A065091(eq[9, dr(A001043(n+1))])` -/
def P7324766344715525005.Spec : Prop :=
  ∀ n, P7324766344715525005.a n = A253973 (n + 1)

end A253973

/-! ## A253973.P16553693578626396365

`A000040(eq[9, dr(A001043(n+1))]+1)`
-/

namespace A253973.P16553693578626396365
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A001043 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1)

end

end A253973.P16553693578626396365

namespace A253973

/-- `A000040(eq[9, dr(A001043(n+1))]+1)` -/
def P16553693578626396365.Spec : Prop :=
  ∀ n, P16553693578626396365.a n = A253973 (n + 1)

end A253973

/-! ## A253973.P8824750039019785925

`A004139(eq[9, dr(A011974(n+1))]-2)`
-/

namespace A253973.P8824750039019785925
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A011974 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n - 2)

end

end A253973.P8824750039019785925

namespace A253973

/-- `A004139(eq[9, dr(A011974(n+1))]-2)` -/
def P8824750039019785925.Spec : Prop :=
  ∀ n, P8824750039019785925.a n = A253973 (n + 1)

end A253973

/-! ## A253973.P5825495491630193084

`A000040(eq[9, A038194(n+2)+A038194(n+1)]+1)`
-/

namespace A253973.P5825495491630193084
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038194 (n + 2) + A038194 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A253973.P5825495491630193084

namespace A253973

/-- `A000040(eq[9, A038194(n+2)+A038194(n+1)]+1)` -/
def P5825495491630193084.Spec : Prop :=
  ∀ n, P5825495491630193084.a n = A253973 (n + 1)

end A253973

/-!
# A253975: a(n) is the smallest number k representable as x*y+x+y, where x>=y>1, in exactly n ways, or -1 if no such k exists.

The programs for A253975, there is no canonical definition to state claims against.
-/

/-! ## A253975.P11651885305162193809

`A072671(n+2)-A034188(A256473(2*n+1))`
-/

namespace A253975.P11651885305162193809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072671 (n + 2) - A034188 (A256473 (2 * n + 1)).toNat

end

end A253975.P11651885305162193809

/-!
# A253976: Primes p such that (p^2 + 5)/6, (p^4 + 5)/6, (p^6 + 5)/6 and (p^8 + 5)/6 are prime.

The programs for A253976, there is no canonical definition to state claims against.
-/

/-! ## A253976.P4148358419331420631

`∩[A253939(n+1), A253940(n+1)]`
-/

namespace A253976.P4148358419331420631
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253939 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253940 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A253976.P4148358419331420631

/-!
# A253977: Number of (n+2)X(n+2) 0..1 arrays with every 3X3 subblock diagonal maximum plus antidiagonal maximum nondecreasing horizontally and vertically.

The programs for A253977, there is no canonical definition to state claims against.
-/

/-! ## A253977.P16723815781901264390

`A253985((n+1)²+n²)`
-/

namespace A253977.P16723815781901264390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253985 ((n + 1) ^ 2 + n ^ 2)

end

end A253977.P16723815781901264390

/-!
# A253978: Number of (n+2)X(1+2) 0..1 arrays with every 3X3 subblock diagonal maximum plus antidiagonal maximum nondecreasing horizontally and vertically.

The programs for A253978, there is no canonical definition to state claims against.
-/

/-! ## A253978.P2267298950073006296

`A254390(∑[n]+1)`
-/

namespace A253978.P2267298950073006296
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254390 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A253978.P2267298950073006296

/-! ## A253978.P7250190237691949219

`lcm(2, A254390(A000124(n)))`
-/

namespace A253978.P7250190237691949219
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A254390 (A000124 n).toNat)

end

end A253978.P7250190237691949219

/-! ## A253978.P7736159414645240516

`record[A010054(n)*A254390(n+1)]`
-/

namespace A253978.P7736159414645240516
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A254390 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A253978.P7736159414645240516

/-! ## A253978.P7445861652541054788

`record[root(A254390(n+1), A071948(n))]`
-/

namespace A253978.P7445861652541054788
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A254390 (n + 1) : ℝ) ^ (1 / (A071948 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A253978.P7445861652541054788

/-! ## A253978.P4320485660563072117

`record[gcd(A002262(n), A254390(n+1))]`
-/

namespace A253978.P4320485660563072117
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A254390 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A253978.P4320485660563072117

/-!
# A253979: Number of (n+2)X(2+2) 0..1 arrays with every 3X3 subblock diagonal maximum plus antidiagonal maximum nondecreasing horizontally and vertically.

The programs for A253979, there is no canonical definition to state claims against.
-/

/-! ## A253979.P4286239440169429048

`A253985(∑[n+1]+2)`
-/

namespace A253979.P4286239440169429048
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253985 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A253979.P4286239440169429048

/-! ## A253979.P11518096903219216083

`record[A010054(n)*A253985(n+2)]`
-/

namespace A253979.P11518096903219216083
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A253985 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A253979.P11518096903219216083

/-! ## A253979.P13550107096130952925

`record[A253985(abs(A201163(n)))]`
-/

namespace A253979.P13550107096130952925
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253985 |A201163 n|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A253979.P13550107096130952925

/-! ## A253979.P8385397171138761911

`record[A253985(Δ[A003453(n+5)])]`
-/

namespace A253979.P8385397171138761911
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003453 (n + 5)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253985 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A253979.P8385397171138761911

/-! ## A253979.P9201139877914835684

`A253985(A000096(n+1))/A008683(n²+1+n)²`
-/

namespace A253979.P9201139877914835684
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A253985 (A000096 (n + 1)).toNat : ℚ) / (A008683 (n ^ 2 + 1 + n) ^ 2 : ℚ)

end

end A253979.P9201139877914835684

/-!
# A253980: Number of (n+2) X (3+2) 0..1 arrays with every 3X3 subblock diagonal maximum plus antidiagonal maximum nondecreasing horizontally and vertically.

The programs for A253980, there is no canonical definition to state claims against.
-/

/-! ## A253980.P12792154672601996453

`A253985(∑[n+2]+4)`
-/

namespace A253980.P12792154672601996453
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253985 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A253980.P12792154672601996453

/-! ## A253980.P17700804815502993091

`A253985(A167614(n+1))+A025469(n)`
-/

namespace A253980.P17700804815502993091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253985 (A167614 (n + 1)).toNat + A025469 n

end

end A253980.P17700804815502993091

/-! ## A253980.P18017073751656732944

`A063435(n)*A253985(A167614(n+1))`
-/

namespace A253980.P18017073751656732944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063435 n * A253985 (A167614 (n + 1)).toNat

end

end A253980.P18017073751656732944

/-! ## A253980.P10564083393116172737

`A253985(A167614(n+1))*A287091(n)`
-/

namespace A253980.P10564083393116172737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253985 (A167614 (n + 1)).toNat * A287091 n

end

end A253980.P10564083393116172737

/-! ## A253980.P9681805092936908711

`lcm(A033999(n), A253985(A167614(n+1)))`
-/

namespace A253980.P9681805092936908711
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A253985 (A167614 (n + 1)).toNat)

end

end A253980.P9681805092936908711

/-!
# A253981: Number of (n+2)X(4+2) 0..1 arrays with every 3X3 subblock diagonal maximum plus antidiagonal maximum nondecreasing horizontally and vertically.

The programs for A253981, there is no canonical definition to state claims against.
-/

/-! ## A253981.P5732211772678246044

`A253985(A052905(n)+9)`
-/

namespace A253981.P5732211772678246044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253985 (A052905 n + 9).toNat

end

end A253981.P5732211772678246044

/-! ## A253981.P1109894778147210473

`A253985(A055999(n)+10)`
-/

namespace A253981.P1109894778147210473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253985 (A055999 n + 10).toNat

end

end A253981.P1109894778147210473

/-! ## A253981.P8390356990619463378

`A253985(A167614(n+2)+1)`
-/

namespace A253981.P8390356990619463378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253985 (A167614 (n + 2) + 1).toNat

end

end A253981.P8390356990619463378

/-! ## A253981.P18416245467239374757

`A253985(A166136(n+2)-2)`
-/

namespace A253981.P18416245467239374757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253985 (A166136 (n + 2) - 2).toNat

end

end A253981.P18416245467239374757

/-! ## A253981.P12794936874952706437

`A253985(A166136(n+1)+1+n)`
-/

namespace A253981.P12794936874952706437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253985 (A166136 (n + 1) + 1 + (n : ℤ)).toNat

end

end A253981.P12794936874952706437

/-!
# A253982: Number of (n+2) X (5+2) 0..1 arrays with every 3 X 3 subblock diagonal maximum plus antidiagonal maximum nondecreasing horizontally and vertically.

The programs for A253982, there is no canonical definition to state claims against.
-/

/-! ## A253982.P7250568251846586470

`A253985(A167499(n+3))`
-/

namespace A253982.P7250568251846586470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253985 (A167499 (n + 3)).toNat

end

end A253982.P7250568251846586470

/-! ## A253982.P11678648890211821366

`A253985(A155212(n)+13)`
-/

namespace A253982.P11678648890211821366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253985 (A155212 n + 13).toNat

end

end A253982.P11678648890211821366

/-! ## A253982.P15883661599398541289

`A253985(A056000(n)+15)`
-/

namespace A253982.P15883661599398541289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253985 (A056000 n + 15).toNat

end

end A253982.P15883661599398541289

/-! ## A253982.P10893440132966167623

`A253985(eq[7, A066657(n)])`
-/

namespace A253982.P10893440132966167623
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253985 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A253982.P10893440132966167623

/-! ## A253982.P14147695634387146438

`A253985(eq[6, A131818(n+1)])`
-/

namespace A253982.P14147695634387146438
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253985 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A253982.P14147695634387146438

/-!
# A253983: Number of (n+2)X(6+2) 0..1 arrays with every 3X3 subblock diagonal maximum plus antidiagonal maximum nondecreasing horizontally and vertically.

The programs for A253983, there is no canonical definition to state claims against.
-/

/-! ## A253983.P467930266232898492

`A253985(A166136(n+4))`
-/

namespace A253983.P467930266232898492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253985 (A166136 (n + 4)).toNat

end

end A253983.P467930266232898492

/-! ## A253983.P7475754946402646994

`A253985(A167614(n+4)+3)`
-/

namespace A253983.P7475754946402646994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253985 (A167614 (n + 4) + 3).toNat

end

end A253983.P7475754946402646994

/-! ## A253983.P14735009791216903785

`A253985(eq[7, A131818(n+1)])`
-/

namespace A253983.P14735009791216903785
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253985 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A253983.P14735009791216903785

/-! ## A253983.P14812954042169859144

`A253985(A000217(n+7)-7-record[A276151(n+1)])`
-/

namespace A253983.P14812954042169859144
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276151 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253985 (A000217 (n + 7) - 7 - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A253983.P14812954042169859144

/-! ## A253983.P4668667506413116504

`A253985(A374007(n+1))`
-/

namespace A253983.P4668667506413116504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253985 (A374007 (n + 1)).toNat

end

end A253983.P4668667506413116504

/-!
# A253984: 

The programs for A253984, there is no canonical definition to state claims against.
-/

/-! ## A253984.P13421468705857312904

`A253985(eq[8, A131818(n+1)])`
-/

namespace A253984.P13421468705857312904
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253985 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A253984.P13421468705857312904

/-! ## A253984.P7485134863662324432

`A253985(eq[4, A219347(n)])`
-/

namespace A253984.P7485134863662324432
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253985 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A253984.P7485134863662324432

/-! ## A253984.P7466580564339692811

`A253985(eq[6, A193592(n)])`
-/

namespace A253984.P7466580564339692811
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253985 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A253984.P7466580564339692811

/-!
# A253986: Number of (n+2)X(1+2) 0..1 arrays with every 3X3 subblock diagonal median plus antidiagonal median nondecreasing horizontally, vertically and ne-to-sw antidiagonally.

The programs for A253986, there is no canonical definition to state claims against.
-/

/-! ## A253986.P8161200718892376519

`A253993(∑[n]+1)`
-/

namespace A253986.P8161200718892376519
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253993 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A253986.P8161200718892376519

/-! ## A253986.P17038582561379679887

`lcm(2, A253993(A000124(n)))`
-/

namespace A253986.P17038582561379679887
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A253993 (A000124 n).toNat)

end

end A253986.P17038582561379679887

/-! ## A253986.P12507317998154510906

`record[A253993(A246276(n+1))]`
-/

namespace A253986.P12507317998154510906
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253993 (A246276 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A253986.P12507317998154510906

/-! ## A253986.P14793941535936688467

`record[A010054(n)*A253993(n+1)]`
-/

namespace A253986.P14793941535936688467
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A253993 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A253986.P14793941535936688467

/-! ## A253986.P3588093921912501941

`record[A103451(n)*A253993(n+1)]`
-/

namespace A253986.P3588093921912501941
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103451 n * A253993 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A253986.P3588093921912501941

/-!
# A253987: Number of (n+2)X(2+2) 0..1 arrays with every 3X3 subblock diagonal median plus antidiagonal median nondecreasing horizontally, vertically and ne-to-sw antidiagonally.

The programs for A253987, there is no canonical definition to state claims against.
-/

/-! ## A253987.P3461986525317106772

`A253993(∑[n+2])`
-/

namespace A253987.P3461986525317106772
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253993 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A253987.P3461986525317106772

/-! ## A253987.P3289009577694413833

`record[A253993(Δ[A003453(n+5)])]`
-/

namespace A253987.P3289009577694413833
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003453 (n + 5)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253993 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A253987.P3289009577694413833

/-! ## A253987.P17968070346241887659

`record[A097806(n+1)*A253993(n+2)]`
-/

namespace A253987.P17968070346241887659
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097806 (n + 1) * A253993 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A253987.P17968070346241887659

/-! ## A253987.P12437113678421707687

`record[A129184(n+2)*A253993(n+2)]`
-/

namespace A253987.P12437113678421707687
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129184 (n + 2) * A253993 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A253987.P12437113678421707687

/-! ## A253987.P4710516405682553019

`record[A253993(A000096(A003963(n+1)))]`
-/

namespace A253987.P4710516405682553019
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253993 (A000096 (A003963 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A253987.P4710516405682553019

/-!
# A253988: Number of (n+2)X(3+2) 0..1 arrays with every 3X3 subblock diagonal median plus antidiagonal median nondecreasing horizontally, vertically and ne-to-sw antidiagonally.

The programs for A253988, there is no canonical definition to state claims against.
-/

/-! ## A253988.P16169645465163527890

`A253993(∑[n+3]+1)`
-/

namespace A253988.P16169645465163527890
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253993 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A253988.P16169645465163527890

/-! ## A253988.P7249033613215789296

`record[A253993(A198464(n+1))]`
-/

namespace A253988.P7249033613215789296
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253993 (A198464 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A253988.P7249033613215789296

/-! ## A253988.P9600352933413785414

`record[A129184(n+5)*A253993(n+4)]`
-/

namespace A253988.P9600352933413785414
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129184 (n + 5) * A253993 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A253988.P9600352933413785414

/-! ## A253988.P1519549046537704592

`A253993(A055999(n)+4)-A326457(n)-A326458(n)`
-/

namespace A253988.P1519549046537704592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253993 (A055999 n + 4).toNat - A326457 n - A326458 n

end

end A253988.P1519549046537704592

/-!
# A253989: Number of (n+2)X(4+2) 0..1 arrays with every 3X3 subblock diagonal median plus antidiagonal median nondecreasing horizontally, vertically and ne-to-sw antidiagonally.

The programs for A253989, there is no canonical definition to state claims against.
-/

/-! ## A253989.P1774694292384785031

`A253993(∑[n+4]+3)`
-/

namespace A253989.P1774694292384785031
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253993 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A253989.P1774694292384785031

/-! ## A253989.P11211027151697599217

`record[A253993(A198464(n+2)-1)]`
-/

namespace A253989.P11211027151697599217
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253993 (A198464 (n + 2) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A253989.P11211027151697599217

/-! ## A253989.P609375777112211396

`A253993(A141214(n+1))%A253996(n+5)`
-/

namespace A253989.P609375777112211396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A253993 (A141214 (n + 1)).toNat) (A253996 (n + 5))

end

end A253989.P609375777112211396

/-!
# A253990: Number of (n+2)X(5+2) 0..1 arrays with every 3X3 subblock diagonal median plus antidiagonal median nondecreasing horizontally, vertically and ne-to-sw antidiagonally.

The programs for A253990, there is no canonical definition to state claims against.
-/

/-! ## A253990.P18272289153262251067

`A253993(Δ[A264443(n)])`
-/

namespace A253990.P18272289153262251067
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253993 (f1 (n + 1) - f1 n).toNat

end

end A253990.P18272289153262251067

/-! ## A253990.P2552293036412820687

`A253993(eq[4, A193592(n)])`
-/

namespace A253990.P2552293036412820687
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253993 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A253990.P2552293036412820687

/-! ## A253990.P6622427792025256676

`A253993(Δ[A023545(n+1)])`
-/

namespace A253990.P6622427792025256676
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253993 (f1 (n + 1) - f1 n).toNat

end

end A253990.P6622427792025256676

/-! ## A253990.P15265802764943406886

`A253993(eq[5, A194921(n+1)])`
-/

namespace A253990.P15265802764943406886
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194921 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253993 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A253990.P15265802764943406886

/-! ## A253990.P6041918115175357324

`A253993(eq[6, A185782(n+1)])`
-/

namespace A253990.P6041918115175357324
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253993 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A253990.P6041918115175357324

/-!
# A253991: Number of (n+2)X(6+2) 0..1 arrays with every 3X3 subblock diagonal median plus antidiagonal median nondecreasing horizontally, vertically and ne-to-sw antidiagonally.

The programs for A253991, there is no canonical definition to state claims against.
-/

/-! ## A253991.P18402599476673612996

`A253993(A052905(n+3))`
-/

namespace A253991.P18402599476673612996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253993 (A052905 (n + 3)).toNat

end

end A253991.P18402599476673612996

/-! ## A253991.P6889226954693867761

`A253993(eq[3, A219347(n)])`
-/

namespace A253991.P6889226954693867761
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253993 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A253991.P6889226954693867761

/-! ## A253991.P12919154452235369462

`A253993(eq[5, A193592(n)])`
-/

namespace A253991.P12919154452235369462
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253993 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A253991.P12919154452235369462

/-! ## A253991.P1558522411709889303

`A253993(eq[8, A258709(n)])`
-/

namespace A253991.P1558522411709889303
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258709 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253993 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A253991.P1558522411709889303

/-! ## A253991.P4263744473466067319

`A253993(A046691(n+4)-1)`
-/

namespace A253991.P4263744473466067319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253993 (A046691 (n + 4) - 1).toNat

end

end A253991.P4263744473466067319

/-!
# A253992: Number of (n+2)X(7+2) 0..1 arrays with every 3X3 subblock diagonal median plus antidiagonal median nondecreasing horizontally, vertically and ne-to-sw antidiagonally.

The programs for A253992, there is no canonical definition to state claims against.
-/

/-! ## A253992.P14075226495926311227

`A253993(A055999(n+4))`
-/

namespace A253992.P14075226495926311227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253993 (A055999 (n + 4)).toNat

end

end A253992.P14075226495926311227

/-! ## A253992.P12651535031609161143

`A253993(eq[4, A219347(n)])`
-/

namespace A253992.P12651535031609161143
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253993 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A253992.P12651535031609161143

/-! ## A253992.P5011592407165438064

`A253993(eq[6, A193592(n)])`
-/

namespace A253992.P5011592407165438064
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253993 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A253992.P5011592407165438064

/-! ## A253992.P1301749155797560874

`A253993(eq[7, A200370(n+1)])`
-/

namespace A253992.P1301749155797560874
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253993 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A253992.P1301749155797560874

/-! ## A253992.P14719592525570236048

`A253993(eq[10, A185782(n+1)])`
-/

namespace A253992.P14719592525570236048
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253993 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A253992.P14719592525570236048

/-!
# A253994: Number of (2+2)X(n+2) 0..1 arrays with every 3X3 subblock diagonal median plus antidiagonal median nondecreasing horizontally, vertically and ne-to-sw antidiagonally.

The programs for A253994, there is no canonical definition to state claims against.
-/

/-! ## A253994.P18289626841584781628

`A253993(∑[n+1]+2)`
-/

namespace A253994.P18289626841584781628
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253993 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A253994.P18289626841584781628

/-! ## A253994.P2911891945590419426

`record[A010054(n)*A253993(n+2)]`
-/

namespace A253994.P2911891945590419426
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A253993 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A253994.P2911891945590419426

/-! ## A253994.P3077411959362868334

`record[gcd(A053616(n), A253993(n+2))]`
-/

namespace A253994.P3077411959362868334
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A053616 n) (A253993 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A253994.P3077411959362868334

/-! ## A253994.P562788594355049939

`lcm(A186035(n), A253993(A133263(n+1)))`
-/

namespace A253994.P562788594355049939
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A186035 n) (A253993 (A133263 (n + 1)).toNat)

end

end A253994.P562788594355049939

/-! ## A253994.P4603011785169126686

`A253993(A133263(n+1))*A260390(2*n+5)`
-/

namespace A253994.P4603011785169126686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253993 (A133263 (n + 1)).toNat * A260390 (2 * n + 5)

end

end A253994.P4603011785169126686

/-!
# A253995: Number of (3+2)X(n+2) 0..1 arrays with every 3X3 subblock diagonal median plus antidiagonal median nondecreasing horizontally, vertically and ne-to-sw antidiagonally.

The programs for A253995, there is no canonical definition to state claims against.
-/

/-! ## A253995.P10071638027667719418

`A253993(∑[n+2]+4)`
-/

namespace A253995.P10071638027667719418
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253993 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A253995.P10071638027667719418

/-! ## A253995.P2206271220691599069

`lcm((-1)^n, A253993(A167614(n+1)))`
-/

namespace A253995.P2206271220691599069
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((-1) ^ n) (A253993 (A167614 (n + 1)).toNat)

end

end A253995.P2206271220691599069

/-! ## A253995.P9835060553388109600

`A253993(A167614(n+1))+A185237(n)`
-/

namespace A253995.P9835060553388109600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253993 (A167614 (n + 1)).toNat + A185237 n

end

end A253995.P9835060553388109600

/-! ## A253995.P16760312730538714598

`A253993(A167614(n+1))+A185284(n)`
-/

namespace A253995.P16760312730538714598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253993 (A167614 (n + 1)).toNat + A185284 n

end

end A253995.P16760312730538714598

/-! ## A253995.P1678950050052441567

`A253993(A167614(n+1))+A085974(n+1)`
-/

namespace A253995.P1678950050052441567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253993 (A167614 (n + 1)).toNat + A085974 (n + 1)

end

end A253995.P1678950050052441567

/-!
# A253996: Number of (4+2)X(n+2) 0..1 arrays with every 3X3 subblock diagonal median plus antidiagonal median nondecreasing horizontally, vertically and ne-to-sw antidiagonally.

The programs for A253996, there is no canonical definition to state claims against.
-/

/-! ## A253996.P10562229328144678724

`A253993(A141214(n)+7)`
-/

namespace A253996.P10562229328144678724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253993 (A141214 n + 7).toNat

end

end A253996.P10562229328144678724

/-! ## A253996.P13968509182908800298

`A253993(A052905(n)+9)`
-/

namespace A253996.P13968509182908800298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253993 (A052905 n + 9).toNat

end

end A253996.P13968509182908800298

/-! ## A253996.P16735714048650390380

`A253993(A055999(n)+10)`
-/

namespace A253996.P16735714048650390380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253993 (A055999 n + 10).toNat

end

end A253996.P16735714048650390380

/-! ## A253996.P17802934859607883421

`A253993(A167614(n+2)+1)`
-/

namespace A253996.P17802934859607883421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253993 (A167614 (n + 2) + 1).toNat

end

end A253996.P17802934859607883421

/-! ## A253996.P2718343344618585492

`A253993(A166136(n+2)-2)`
-/

namespace A253996.P2718343344618585492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253993 (A166136 (n + 2) - 2).toNat

end

end A253996.P2718343344618585492

/-!
# A253997: Number of (5+2)X(n+2) 0..1 arrays with every 3X3 subblock diagonal median plus antidiagonal median nondecreasing horizontally, vertically and ne-to-sw antidiagonally.

The programs for A253997, there is no canonical definition to state claims against.
-/

/-! ## A253997.P5217734586960390620

`A253993(A167499(n+3))`
-/

namespace A253997.P5217734586960390620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253993 (A167499 (n + 3)).toNat

end

end A253997.P5217734586960390620

/-! ## A253997.P9122684438708841023

`A253993(A155212(n)+13)`
-/

namespace A253997.P9122684438708841023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253993 (A155212 n + 13).toNat

end

end A253997.P9122684438708841023

/-! ## A253997.P8759353680611634252

`A253993(A056000(n)+15)`
-/

namespace A253997.P8759353680611634252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253993 (A056000 n + 15).toNat

end

end A253997.P8759353680611634252

/-! ## A253997.P8526592232677287664

`A253993(eq[6, A131818(n+1)])`
-/

namespace A253997.P8526592232677287664
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253993 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A253997.P8526592232677287664

/-! ## A253997.P15125623328096544342

`A253993(A167614(n+4)-(n+3))`
-/

namespace A253997.P15125623328096544342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253993 (A167614 (n + 4) - (n + 3 : ℤ)).toNat

end

end A253997.P15125623328096544342

/-!
# A253998: Number of (6+2)X(n+2) 0..1 arrays with every 3X3 subblock diagonal median plus antidiagonal median nondecreasing horizontally, vertically and ne-to-sw antidiagonally.

The programs for A253998, there is no canonical definition to state claims against.
-/

/-! ## A253998.P10896519128786548980

`A253993(A166136(n+4))`
-/

namespace A253998.P10896519128786548980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253993 (A166136 (n + 4)).toNat

end

end A253998.P10896519128786548980

/-! ## A253998.P6095520407220374405

`A253993(A056115(n)+21)`
-/

namespace A253998.P6095520407220374405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253993 (A056115 n + 21).toNat

end

end A253998.P6095520407220374405

/-! ## A253998.P2528281791286449226

`A253993(A167499(n+4)+1)`
-/

namespace A253998.P2528281791286449226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253993 (A167499 (n + 4) + 1).toNat

end

end A253998.P2528281791286449226

/-! ## A253998.P8419783592602369199

`A253993(eq[7, A131818(n+1)])`
-/

namespace A253998.P8419783592602369199
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253993 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A253998.P8419783592602369199

/-! ## A253998.P398047104633874940

`A253993(A167614(n+1)+A008486(n+5))`
-/

namespace A253998.P398047104633874940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253993 (A167614 (n + 1) + A008486 (n + 5)).toNat

end

end A253998.P398047104633874940

/-!
# A253999: Number of (7+2)X(n+2) 0..1 arrays with every 3X3 subblock diagonal median plus antidiagonal median nondecreasing horizontally, vertically and ne-to-sw antidiagonally.

The programs for A253999, there is no canonical definition to state claims against.
-/

/-! ## A253999.P1445766021154647294

`A253993(eq[11, A066657(n)])`
-/

namespace A253999.P1445766021154647294
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253993 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A253999.P1445766021154647294

/-! ## A253999.P3361392082467840741

`A253993(A000217(n+6)+7)`
-/

namespace A253999.P3361392082467840741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253993 (A000217 (n + 6) + 7).toNat

end

end A253999.P3361392082467840741

/-! ## A253999.P6021084024893810759

`A253993(A155212(n+2)+15)`
-/

namespace A253999.P6021084024893810759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253993 (A155212 (n + 2) + 15).toNat

end

end A253999.P6021084024893810759

/-! ## A253999.P7263132958656145390

`A253993(eq[8, A131818(n+1)])`
-/

namespace A253999.P7263132958656145390
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253993 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A253999.P7263132958656145390

/-! ## A253999.P5781554168906733458

`A253993(A167614(n+5)+3-A260196(n+2))`
-/

namespace A253999.P5781554168906733458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253993 (A167614 (n + 5) + 3 - A260196 (n + 2)).toNat

end

end A253999.P5781554168906733458

