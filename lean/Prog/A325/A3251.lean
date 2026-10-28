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
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C039
import Seq.B000.C040
import Seq.B000.C041
import Seq.B000.C042
import Seq.B000.C043
import Seq.B000.C044
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
import Seq.B001.C013
import Seq.B001.C014
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
import Seq.B002.C007
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B008.C000
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
import Seq.B012.C000
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
# A325100: Heinz numbers of strict integer partitions with no binary carries.

The programs for A325100, there is no canonical definition to state claims against.
-/

/-! ## A325100.P12101350835386547212

`eq[1, A318762(n+1)%2]+1`
-/

namespace A325100.P12101350835386547212
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A318762 (n + 1)) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A325100.P12101350835386547212

/-! ## A325100.P11672685169148479696

`eq[1, A318808(2*(n+1))%2]+1`
-/

namespace A325100.P11672685169148479696
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A318808 (2 * (n + 1))) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A325100.P11672685169148479696

/-! ## A325100.P16535284332456534297

`lt[A010156(A318762(n+1)), 2]+1`
-/

namespace A325100.P16535284332456534297
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010156 (A318762 (n + 1)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A325100.P16535284332456534297

/-! ## A325100.P4539883468308094203

`eq[2, A322357(A318762(n+1)+1)]+1`
-/

namespace A325100.P4539883468308094203
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322357 (A318762 (n + 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A325100.P4539883468308094203

/-! ## A325100.P12820791076561018213

`eq[2, A020639(A318762(n+1)+3)]+1`
-/

namespace A325100.P12820791076561018213
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A318762 (n + 1) + 3).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A325100.P12820791076561018213

/-! ## A325100.P163458061392706942

`lt[and(A318762(n+1)+1, A060576(n)), 1]+1`
-/

namespace A325100.P163458061392706942
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A318762 (n + 1) + 1) (A060576 n)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A325100.P163458061392706942

/-! ## A325100.P16087509550279908364

`record[A000035(A124794(n+1))*A007913(n+1)]`
-/

namespace A325100.P16087509550279908364
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A124794 (n + 1)).toNat * A007913 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A325100.P16087509550279908364

/-! ## A325100.P13162994268460471449

`record[A000035(A124794(n+1))*A007947(n+1)]`
-/

namespace A325100.P13162994268460471449
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A124794 (n + 1)).toNat * A007947 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A325100.P13162994268460471449

/-!
# A325101: Number of divisible binary-containment pairs of positive integers up to n.

The programs for A325101, there is no canonical definition to state claims against.
-/

/-! ## A325101.P4765155770520518862

`A325106(n)+n`
-/

namespace A325101.P4765155770520518862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325106 n + (n : ℤ)

end

end A325101.P4765155770520518862

/-! ## A325101.P4083005615198486223

`∑[∑{d}[n, floor(n/or(n, #))]]`
-/

namespace A325101.P4083005615198486223
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), ⌊(n : ℚ) / (Nat.lor n d : ℚ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A325101.P4083005615198486223

/-! ## A325101.P18111844716742008121

`∑[∑{d}[n, floor(and(n, #)/#)]]`
-/

namespace A325101.P18111844716742008121
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), ⌊(Nat.land n d : ℚ) / (d : ℚ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A325101.P18111844716742008121

/-! ## A325101.P17269081965328544392

`A246600(n)+a(n-1)` with `a(0)=0`
-/

namespace A325101.P17269081965328544392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A246600 n + a (n - 1)

end

end A325101.P17269081965328544392

/-! ## A325101.P16019305402705342357

`∪[∑[A246600(n+1)], n^4]`
-/

namespace A325101.P16019305402705342357
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246600 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 4

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f3 j = x) n

end

end A325101.P16019305402705342357

/-! ## A325101.P13200197271261485911

`∑[A246600(A004277(n))]-1`
-/

namespace A325101.P13200197271261485911
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246600 (A004277 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A325101.P13200197271261485911

/-! ## A325101.P16545162172453914819

`∑[A246600(A008574(n))]-1`
-/

namespace A325101.P16545162172453914819
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246600 (A008574 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A325101.P16545162172453914819

/-! ## A325101.P7357873629007724986

`∑[A246600(A028310(n))]-1`
-/

namespace A325101.P7357873629007724986
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246600 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A325101.P7357873629007724986

/-! ## A325101.P8559165080412382022

`A005843(n)-(n-A325106(n))`
-/

namespace A325101.P8559165080412382022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n - ((n : ℤ) - A325106 n)

end

end A325101.P8559165080412382022

/-! ## A325101.P18189845739417250449

`∑[∑{d}[n, A047999(A000217(n)+#)]]`
-/

namespace A325101.P18189845739417250449
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), A047999 (A000217 n + (d : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A325101.P18189845739417250449

/-!
# A325102: Number of ordered pairs of positive integers up to n with no binary carries.

The programs for A325102, the canonical program `A325102.P14679269037956445384` is in `Seq.B001.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A325102 has offset 0).

The definition of A325102 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A325103, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A325102.P14679269037956445384

`2*A325103(n)`

The canonical program, it is in `Seq.B001.C012`.
-/

namespace A325102

/-- `2*A325103(n)` -/
def P14679269037956445384.Spec : Prop :=
  ∀ n, P14679269037956445384.a n = A325102 n

theorem P14679269037956445384.correct : P14679269037956445384.Spec := by
  intro n
  simp only [A325102]

end A325102

/-! ## A325102.P1951278945970464565

`∑[lcm(2, a(floor(n/2))+(n+1)%2)]` with `a(0)=0`
-/

namespace A325102.P1951278945970464565
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0] fun n f1 =>
  Nat.lcm 2 (f1 ⌊(n : ℚ) / 2⌋.toNat + (n + 1) % 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A325102.P1951278945970464565

namespace A325102

/-- `∑[lcm(2, a(floor(n/2))+(n+1)%2)]` -/
def P1951278945970464565.Spec : Prop :=
  ∀ n, (P1951278945970464565.a n : ℤ) = A325102 n

end A325102

/-! ## A325102.P7259835840943777994

`2*(∑[gcd(2, n)*a(floor(n/2))]-n)` with `a(0)=0, a(1)=1`
-/

namespace A325102.P7259835840943777994
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  Nat.gcd 2 n * f1 ⌊(n : ℚ) / 2⌋.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (n : ℤ))

end

end A325102.P7259835840943777994

namespace A325102

/-- `2*(∑[gcd(2, n)*a(floor(n/2))]-n)` -/
def P7259835840943777994.Spec : Prop :=
  ∀ n, P7259835840943777994.a n = A325102 n

end A325102

/-! ## A325102.P4173891009302294296

`2*(A268514(n)-n)`
-/

namespace A325102.P4173891009302294296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A268514 n - (n : ℤ))

end

end A325102.P4173891009302294296

namespace A325102

/-- `2*(A268514(n)-n)` -/
def P4173891009302294296.Spec : Prop :=
  ∀ n, P4173891009302294296.a n = A325102 n

end A325102

/-! ## A325102.P2399763377533020184

`n²-A080572(n+1)`
-/

namespace A325102.P2399763377533020184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) - A080572 (n + 1)

end

end A325102.P2399763377533020184

namespace A325102

/-- `n²-A080572(n+1)` -/
def P2399763377533020184.Spec : Prop :=
  ∀ n, P2399763377533020184.a n = A325102 n

end A325102

/-! ## A325102.P17570322695628675915

`∑[2*(n-A353292(n))]`
-/

namespace A325102.P17570322695628675915
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ((n : ℤ) - A353292 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A325102.P17570322695628675915

namespace A325102

/-- `∑[2*(n-A353292(n))]` -/
def P17570322695628675915.Spec : Prop :=
  ∀ n, P17570322695628675915.a n = A325102 n

end A325102

/-! ## A325102.P8819186552715031795

`A064194(n+1)-Δ[n²]`
-/

namespace A325102.P8819186552715031795
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064194 (n + 1) - ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A325102.P8819186552715031795

namespace A325102

/-- `A064194(n+1)-Δ[n²]` -/
def P8819186552715031795.Spec : Prop :=
  ∀ n, P8819186552715031795.a n = A325102 n

end A325102

/-! ## A325102.P3664095854228456907

`∑[A267584(2*n+1)-2]`
-/

namespace A325102.P3664095854228456907
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267584 (2 * n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A325102.P3664095854228456907

namespace A325102

/-- `∑[A267584(2*n+1)-2]` -/
def P3664095854228456907.Spec : Prop :=
  ∀ n, P3664095854228456907.a n = A325102 n

end A325102

/-! ## A325102.P4766496989070803653

`∑[A135540(2*n+1)-1]`
-/

namespace A325102.P4766496989070803653
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135540 (2 * n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A325102.P4766496989070803653

namespace A325102

/-- `∑[A135540(2*n+1)-1]` -/
def P4766496989070803653.Spec : Prop :=
  ∀ n, P4766496989070803653.a n = A325102 n

end A325102

/-! ## A325102.P7061724274296507553

`A005843(A325103(n))`
-/

namespace A325102.P7061724274296507553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A325103 n).toNat

end

end A325102.P7061724274296507553

namespace A325102

/-- `A005843(A325103(n))` -/
def P7061724274296507553.Spec : Prop :=
  ∀ n, P7061724274296507553.a n = A325102 n

end A325102

/-!
# A325103: Number of increasing pairs of positive integers up to n with no binary carries.

The programs for A325103, the canonical program `A325103.P15599426637933249116` is in `Seq.B000.C043`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A325103 has offset 0).

The definition of A325103 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A325103.P17288365615323846492

`A325102(n)/2`
-/

namespace A325103.P17288365615323846492
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A325102 n : ℚ) / 2

end

end A325103.P17288365615323846492

namespace A325103

/-- `A325102(n)/2` -/
def P17288365615323846492.Spec : Prop :=
  ∀ n, P17288365615323846492.a n = (A325103 n : ℚ)

theorem P17288365615323846492.correct : P17288365615323846492.Spec := by
  intro n
  simp only [A325103, Nat.add_sub_cancel, A325103.P17288365615323846492.a, A325103.P15599426637933249116.f1, A325103.P15599426637933249116.a, A325102, A325102.P14679269037956445384.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A325103

/-! ## A325103.P15599426637933249116

`∑[gcd(2, n)*a(floor(n/2))]-n` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C043`.
-/

namespace A325103

/-- `∑[gcd(2, n)*a(floor(n/2))]-n` -/
def P15599426637933249116.Spec : Prop :=
  ∀ n, P15599426637933249116.a n = A325103 n

theorem P15599426637933249116.correct : P15599426637933249116.Spec := by
  intro n
  simp only [A325103]

end A325103

/-! ## A325103.P957262525532837118

`∑[lcm(2, a(floor(n/2))+(n+1)%2)]/2` with `a(0)=0`
-/

namespace A325103.P957262525532837118
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0] fun n f1 =>
  Nat.lcm 2 (f1 ⌊(n : ℚ) / 2⌋.toNat + (n + 1) % 2)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / 2

end

end A325103.P957262525532837118

namespace A325103

/-- `∑[lcm(2, a(floor(n/2))+(n+1)%2)]/2` -/
def P957262525532837118.Spec : Prop :=
  ∀ n, P957262525532837118.a n = (A325103 n : ℚ)

end A325103

/-! ## A325103.P7288829982484623205

`A268514(n)-n`
-/

namespace A325103.P7288829982484623205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268514 n - (n : ℤ)

end

end A325103.P7288829982484623205

namespace A325103

/-- `A268514(n)-n` -/
def P7288829982484623205.Spec : Prop :=
  ∀ n, P7288829982484623205.a n = A325103 n

end A325103

/-! ## A325103.P16131815731398408294

`∑[A080100(n)-1]`
-/

namespace A325103.P16131815731398408294
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080100 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A325103.P16131815731398408294

namespace A325103

/-- `∑[A080100(n)-1]` -/
def P16131815731398408294.Spec : Prop :=
  ∀ n, P16131815731398408294.a n = A325103 n

end A325103

/-! ## A325103.P6464187702175636494

`∑[n-A353292(n)]`
-/

namespace A325103.P6464187702175636494
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A353292 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A325103.P6464187702175636494

namespace A325103

/-- `∑[n-A353292(n)]` -/
def P6464187702175636494.Spec : Prop :=
  ∀ n, P6464187702175636494.a n = A325103 n

end A325103

/-! ## A325103.P17739480237077215914

`∑[sqrt(A309074(n))-1]`
-/

namespace A325103.P17739480237077215914
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A309074 n : ℝ) - 1

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A325103.P17739480237077215914

namespace A325103

/-- `∑[sqrt(A309074(n))-1]` -/
def P17739480237077215914.Spec : Prop :=
  ∀ n, P17739480237077215914.a n = (A325103 n : ℝ)

end A325103

/-! ## A325103.P11077112806362494383

`∑[2^A080791(n)-1]`
-/

namespace A325103.P11077112806362494383
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A080791 n : ℤ) - 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A325103.P11077112806362494383

namespace A325103

/-- `∑[2^A080791(n)-1]` -/
def P11077112806362494383.Spec : Prop :=
  ∀ n, P11077112806362494383.a n = (A325103 n : ℚ)

end A325103

/-! ## A325103.P15639528220002378211

`A115378(n)+a(n-1)` with `a(0)=0`
-/

namespace A325103.P15639528220002378211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A115378 n + a (n - 1)

end

end A325103.P15639528220002378211

namespace A325103

/-- `A115378(n)+a(n-1)` -/
def P15639528220002378211.Spec : Prop :=
  ∀ n, P15639528220002378211.a n = A325103 n

end A325103

/-! ## A325103.P12754506091253076842

`A161680(n)-A325104(n)`
-/

namespace A325103.P12754506091253076842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161680 n - A325104 n

end

end A325103.P12754506091253076842

namespace A325103

/-- `A161680(n)-A325104(n)` -/
def P12754506091253076842.Spec : Prop :=
  ∀ n, P12754506091253076842.a n = A325103 n

end A325103

/-! ## A325103.P8867088889467849388

`∑[A115378(2*n+1)]`
-/

namespace A325103.P8867088889467849388
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115378 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A325103.P8867088889467849388

namespace A325103

/-- `∑[A115378(2*n+1)]` -/
def P8867088889467849388.Spec : Prop :=
  ∀ n, P8867088889467849388.a n = A325103 n

end A325103

/-! ## A325103.P13259362450320343246

`A368240(A005836(n+1))-n`
-/

namespace A325103.P13259362450320343246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368240 (A005836 (n + 1)).toNat - (n : ℤ)

end

end A325103.P13259362450320343246

namespace A325103

/-- `A368240(A005836(n+1))-n` -/
def P13259362450320343246.Spec : Prop :=
  ∀ n, P13259362450320343246.a n = A325103 n

end A325103

/-! ## A325103.P15623973577340166363

`A368240(A147991(n+1))-(n+1)`
-/

namespace A325103.P15623973577340166363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368240 (A147991 (n + 1)).toNat - (n + 1 : ℤ)

end

end A325103.P15623973577340166363

namespace A325103

/-- `A368240(A147991(n+1))-(n+1)` -/
def P15623973577340166363.Spec : Prop :=
  ∀ n, P15623973577340166363.a n = A325103 n

end A325103

/-! ## A325103.P14368723214299173321

`A001281(A325102(n))`
-/

namespace A325103.P14368723214299173321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A325102 n).toNat

end

end A325103.P14368723214299173321

namespace A325103

/-- `A001281(A325102(n))` -/
def P14368723214299173321.Spec : Prop :=
  ∀ n, P14368723214299173321.a n = A325103 n

end A325103

/-!
# A325104: Number of increasing pairs of positive integers up to n with at least one binary carry.

The programs for A325104, the canonical program `A325104.P10071957630781677036` is in `Seq.B002.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A325104 has offset 0).

The definition of A325104 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A080572, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A325104.P10071957630781677036

`(A080572(n+1)-n)/2`

The canonical program, it is in `Seq.B002.C007`.
-/

namespace A325104

/-- `(A080572(n+1)-n)/2` -/
def P10071957630781677036.Spec : Prop :=
  ∀ n, P10071957630781677036.a n = (A325104 n : ℚ)

end A325104

/-! ## A325104.P15327299073216423361

`∑[n]-A268514(n)`
-/

namespace A325104.P15327299073216423361
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A268514 n

end

end A325104.P15327299073216423361

namespace A325104

/-- `∑[n]-A268514(n)` -/
def P15327299073216423361.Spec : Prop :=
  ∀ n, P15327299073216423361.a n = A325104 n

end A325104

/-! ## A325104.P15361809911572973659

`∑[A353292(n)]-n`
-/

namespace A325104.P15361809911572973659
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353292 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A325104.P15361809911572973659

namespace A325104

/-- `∑[A353292(n)]-n` -/
def P15361809911572973659.Spec : Prop :=
  ∀ n, P15361809911572973659.a n = A325104 n

end A325104

/-! ## A325104.P13708505184574839343

`C(n, 2)-A325103(n)`
-/

namespace A325104.P13708505184574839343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose n 2 : ℤ) - A325103 n

end

end A325104.P13708505184574839343

namespace A325104

/-- `C(n, 2)-A325103(n)` -/
def P13708505184574839343.Spec : Prop :=
  ∀ n, P13708505184574839343.a n = A325104 n

end A325104

/-! ## A325104.P7680211736384800764

`∑[n-A080100(n)]+1`
-/

namespace A325104.P7680211736384800764
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A080100 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A325104.P7680211736384800764

namespace A325104

/-- `∑[n-A080100(n)]+1` -/
def P7680211736384800764.Spec : Prop :=
  ∀ n, P7680211736384800764.a n = A325104 n

end A325104

/-! ## A325104.P13479983164770983485

`∑[floor(Δ[A080572(n)/2])]`
-/

namespace A325104.P13479983164770983485
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A080572 n : ℚ) / 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊f2 (n + 1) - f2 n⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A325104.P13479983164770983485

namespace A325104

/-- `∑[floor(Δ[A080572(n)/2])]` -/
def P13479983164770983485.Spec : Prop :=
  ∀ n, P13479983164770983485.a n = A325104 n

end A325104

/-! ## A325104.P732025164643767056

`∑[n-floor(A267584(n)/2)]`
-/

namespace A325104.P732025164643767056
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ⌊(A267584 n : ℚ) / 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A325104.P732025164643767056

namespace A325104

/-- `∑[n-floor(A267584(n)/2)]` -/
def P732025164643767056.Spec : Prop :=
  ∀ n, P732025164643767056.a n = A325104 n

end A325104

/-! ## A325104.P7251552331784293625

`∑[n]-floor(A064194(n+1)/2)`
-/

namespace A325104.P7251552331784293625
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - ⌊(A064194 (n + 1) : ℚ) / 2⌋

end

end A325104.P7251552331784293625

namespace A325104

/-- `∑[n]-floor(A064194(n+1)/2)` -/
def P7251552331784293625.Spec : Prop :=
  ∀ n, P7251552331784293625.a n = A325104 n

end A325104

/-! ## A325104.P11085498220656217397

`∑[n]+1-∑[2^A080791(n)]`
-/

namespace A325104.P11085498220656217397
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A080791 n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j + 1 : ℕ) : ℚ) - ∑ j ∈ Finset.range (n + 1), f2 j

end

end A325104.P11085498220656217397

namespace A325104

/-- `∑[n]+1-∑[2^A080791(n)]` -/
def P11085498220656217397.Spec : Prop :=
  ∀ n, P11085498220656217397.a n = (A325104 n : ℚ)

end A325104

/-! ## A325104.P17271887029220836455

`A161680(n)-A325103(n)`
-/

namespace A325104.P17271887029220836455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161680 n - A325103 n

end

end A325104.P17271887029220836455

namespace A325104

/-- `A161680(n)-A325103(n)` -/
def P17271887029220836455.Spec : Prop :=
  ∀ n, P17271887029220836455.a n = A325104 n

end A325104

/-!
# A325105: Number of binary carry-connected subsets of {1...n}.

The programs for A325105, there is no canonical definition to state claims against.
-/

/-! ## A325105.P17516390464267133871

`∑[A306299(n)]`
-/

namespace A325105.P17516390464267133871
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306299 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A325105.P17516390464267133871

/-! ## A325105.P537619921264519105

`A306299(2*n-n)+a(n-1)` with `a(0)=1`
-/

namespace A325105.P537619921264519105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A306299 (2 * n - n) + a (n - 1)

end

end A325105.P537619921264519105

/-! ## A325105.P9983944668073237661

`∑{d}[A000079(n), A306299(log2(#))]`
-/

namespace A325105.P9983944668073237661
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A306299 (SequenceMachineLib.roundAway (Real.logb 2 (d : ℝ))).toNat

end

end A325105.P9983944668073237661

/-! ## A325105.P36672175405143573

`A000027(A306299(n)+a(n-1))` with `a(0)=1`
-/

namespace A325105.P36672175405143573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000027 (A306299 n + a (n - 1)).toNat

end

end A325105.P36672175405143573

/-! ## A325105.P9223600326399889994

`eq[1, A000120(A326749(n+1))]`
-/

namespace A325105.P9223600326399889994
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A326749 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A325105.P9223600326399889994

/-!
# A325106: Number of divisible binary-containment pairs of positive integers up to n.

The programs for A325106, there is no canonical definition to state claims against.
-/

/-! ## A325106.P17572791571217187312

`A325101(n)-n`
-/

namespace A325106.P17572791571217187312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325101 n - (n : ℤ)

end

end A325106.P17572791571217187312

/-! ## A325106.P16840572317635658368

`∑[∑{d}[n, floor(n/or(n, #))]]-n`
-/

namespace A325106.P16840572317635658368
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), ⌊(n : ℚ) / (Nat.lor n d : ℚ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A325106.P16840572317635658368

/-! ## A325106.P11234025816306069194

`∑[∑{d}[n, floor(and(n, #)/#)]]-n`
-/

namespace A325106.P11234025816306069194
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), ⌊(Nat.land n d : ℚ) / (d : ℚ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A325106.P11234025816306069194

/-! ## A325106.P1940122694010291819

`∑[A246600(floor(acot(n)+n))-1]`
-/

namespace A325106.P1940122694010291819
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246600 ⌊SequenceMachineLib.acot (n : ℝ) + (n : ℝ)⌋.toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A325106.P1940122694010291819

/-! ## A325106.P3365537191933488543

`A246600(n)+a(n-1)-1` with `a(0)=0`
-/

namespace A325106.P3365537191933488543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A246600 n + a (n - 1) - 1

end

end A325106.P3365537191933488543

/-! ## A325106.P8687421236337308232

`∑[A246600(abs(1-n)+1)-1]`
-/

namespace A325106.P8687421236337308232
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246600 (|1 - (n : ℤ)| + 1).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A325106.P8687421236337308232

/-! ## A325106.P10880980169406232737

`∑[abs(A246600(A004277(n))-1)]`
-/

namespace A325106.P10880980169406232737
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A246600 (A004277 n).toNat - 1|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A325106.P10880980169406232737

/-! ## A325106.P11059204750364034885

`∑[∑{d}[n, A047999(A000217(n)+#)]]-n`
-/

namespace A325106.P11059204750364034885
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), A047999 (A000217 n + (d : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A325106.P11059204750364034885

/-! ## A325106.P6952969948994725619

`∑[A246600(n+1)]-(A246600(n+1)+n)`
-/

namespace A325106.P6952969948994725619
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246600 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (A246600 (n + 1) + (n : ℤ))

end

end A325106.P6952969948994725619

/-! ## A325106.P126276135667441801

`∑[A002148(n)%A246600(A028310(n))]`
-/

namespace A325106.P126276135667441801
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002148 n) (A246600 (A028310 n).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A325106.P126276135667441801

/-!
# A325107: Number of subsets of {1...n} with no binary containments.

The programs for A325107, there is no canonical definition to state claims against.
-/

/-! ## A325107.P17449374130223769570

`∑[A132582(n)]`
-/

namespace A325107.P17449374130223769570
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132582 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A325107.P17449374130223769570

/-! ## A325107.P9431980619534456310

`∑[abs(Δ[A132581(n)])]`
-/

namespace A325107.P9431980619534456310
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132581 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A325107.P9431980619534456310

/-! ## A325107.P16073852736048168167

`A132581(n+1)-1`
-/

namespace A325107.P16073852736048168167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132581 (n + 1) - 1

end

end A325107.P16073852736048168167

/-! ## A325107.P11353859407615737182

`A132582(n-char[1])+a(n-1)` with `a(0)=1`
-/

namespace A325107.P11353859407615737182
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A132582 (n - (if ∃ j, f1 j = n then 1 else 0)) + a (n - 1)

end

end A325107.P11353859407615737182

/-! ## A325107.P7729885171462655593

`record[A132581(A103221(n))-1]`
-/

namespace A325107.P7729885171462655593
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132581 (A103221 n).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A325107.P7729885171462655593

/-! ## A325107.P17956516517421954486

`A132582(n)-(1-A132581(n))`
-/

namespace A325107.P17956516517421954486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132582 n - (1 - A132581 n)

end

end A325107.P17956516517421954486

/-! ## A325107.P195178535518537655

`∑[Δ[A132581(n)]%A016949(n)]`
-/

namespace A325107.P195178535518537655
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132581 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f2 (n + 1) - f2 n) (A016949 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A325107.P195178535518537655

/-! ## A325107.P12257087988681007466

`∑[A000007(n+1)+Δ[A132581(n)]]`
-/

namespace A325107.P12257087988681007466
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132581 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (n + 1) + (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A325107.P12257087988681007466

/-! ## A325107.P11873213439507213706

`∑[Δ[A132581(n)]+A008683(8*n+4)]`
-/

namespace A325107.P11873213439507213706
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132581 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n + A008683 (8 * n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A325107.P11873213439507213706

/-! ## A325107.P13186116784662706503

`∑[A014963(8*n+6)*Δ[A132581(n)]]`
-/

namespace A325107.P13186116784662706503
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132581 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (8 * n + 6) * (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A325107.P13186116784662706503

/-! ## A325107.P969850233775838820

`∑[A000040(n+2)%2*Δ[A132581(n)]]`
-/

namespace A325107.P969850233775838820
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132581 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (n + 2)) 2 * (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A325107.P969850233775838820

/-! ## A325107.P5000826254967775322

`a(n-1)-(A000007(n)-Δ[A132581(n)])` with `a(0)=1`
-/

namespace A325107.P5000826254967775322
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132581 n

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) - (A000007 n - (f1 (n + 1) - f1 n))

end

end A325107.P5000826254967775322

/-! ## A325107.P3757875734700587998

`record[A132581(A002265(n))-A019425(n)]`
-/

namespace A325107.P3757875734700587998
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132581 (A002265 n).toNat - A019425 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A325107.P3757875734700587998

/-! ## A325107.P4328369675195476148

`record[A132581(A004526(n))-A019425(n)]`
-/

namespace A325107.P4328369675195476148
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132581 (A004526 n).toNat - A019425 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A325107.P4328369675195476148

/-!
# A325109: Number of integer partitions of n whose distinct parts have no binary containments.

The programs for A325109, there is no canonical definition to state claims against.
-/

/-! ## A325109.P17328697759736256737

`A240020(A105782(n)+A002620(n))`
-/

namespace A325109.P17328697759736256737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240020 (A105782 n + A002620 n).toNat

end

end A325109.P17328697759736256737

/-!
# A325110: Number of strict integer partitions of n with no binary containments.

The programs for A325110, there is no canonical definition to state claims against.
-/

/-! ## A325110.P15525765654803723117

`A289496(n+1)+A083025(A052548(n))`
-/

namespace A325110.P15525765654803723117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289496 (n + 1) + A083025 (A052548 n).toNat

end

end A325110.P15525765654803723117

/-! ## A325110.P6047882261149220935

`A005496(A077168(n)-A278530(n+1))`
-/

namespace A325110.P6047882261149220935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005496 (A077168 n - A278530 (n + 1)).toNat

end

end A325110.P6047882261149220935

/-! ## A325110.P12089384306366289567

`A008727(A077168(n)-A278530(n+1))`
-/

namespace A325110.P12089384306366289567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008727 (A077168 n - A278530 (n + 1)).toNat

end

end A325110.P12089384306366289567

/-! ## A325110.P10923958073053292526

`A077168(A077168(n)-A278530(n+1))`
-/

namespace A325110.P10923958073053292526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077168 (A077168 n - A278530 (n + 1)).toNat

end

end A325110.P10923958073053292526

/-!
# A325111: Triangle read by rows: T(n,k) is the number of simple connected graphs on n unlabeled nodes with k articulation vertices, (0 <= k <= n).

The programs for A325111, there is no canonical definition to state claims against.
-/

/-! ## A325111.P3785991814864481397

`A182858(A370064(n))`
-/

namespace A325111.P3785991814864481397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182858 (A370064 n).toNat

end

end A325111.P3785991814864481397

/-! ## A325111.P2220672353501956317

`A376789(A292565(n+1))`
-/

namespace A325111.P2220672353501956317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376789 (A292565 (n + 1)).toNat

end

end A325111.P2220672353501956317

/-! ## A325111.P6638014244468799056

`A088568(A142583(n+2))`
-/

namespace A325111.P6638014244468799056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088568 (A142583 (n + 2)).toNat

end

end A325111.P6638014244468799056

/-! ## A325111.P13611708834256382029

`A087371(A190121(n+2))`
-/

namespace A325111.P13611708834256382029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087371 (A190121 (n + 2)).toNat

end

end A325111.P13611708834256382029

/-! ## A325111.P7198490522566536431

`A033264(5^A238128(n))`
-/

namespace A325111.P7198490522566536431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033264 (SequenceMachineLib.roundAway ((5 : ℚ) ^ (A238128 n : ℤ))).toNat

end

end A325111.P7198490522566536431

/-!
# A325112: Integers k such that no nonzero subsequence of the decimal representation of k is divisible by 3.

The programs for A325112, there is no canonical definition to state claims against.
-/

/-! ## A325112.P10928673590781687089

`record[A330355(n+1)]`
-/

namespace A325112.P10928673590781687089
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330355 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A325112.P10928673590781687089

/-! ## A325112.P5269584689941243034

`record[A028310(A330355(n))]`
-/

namespace A325112.P5269584689941243034
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A330355 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A325112.P5269584689941243034

/-! ## A325112.P3626394443333306064

`eq[n, A330355(A028310(n))]`
-/

namespace A325112.P3626394443333306064
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330355 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A325112.P3626394443333306064

/-! ## A325112.P14476978943043923383

`A330355(eq[n+1, A330355(n+1)]+1)`
-/

namespace A325112.P14476978943043923383
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330355 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330355 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A325112.P14476978943043923383

/-! ## A325112.P888723850768542076

`eq[A257174(n), A330355(n)]`
-/

namespace A325112.P888723850768542076
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257174 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330355 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A325112.P888723850768542076

/-! ## A325112.P7545336409342559345

`eq[A130509(n+1), A330355(n)]`
-/

namespace A325112.P7545336409342559345
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130509 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330355 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A325112.P7545336409342559345

/-! ## A325112.P5969830477240102073

`eq[A147534(n+1), A330355(n)]`
-/

namespace A325112.P5969830477240102073
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147534 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330355 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A325112.P5969830477240102073

/-! ## A325112.P5342552263973221039

`eq[n, A330355(A257174(n))]`
-/

namespace A325112.P5342552263973221039
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330355 (A257174 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A325112.P5342552263973221039

/-!
# A325113: Positive integers whose decimal representation has no nonzero subsequence that is divisible by 4.

The programs for A325113, there is no canonical definition to state claims against.
-/

/-! ## A325113.P8615897250695822886

`lt[A177499(A274710(2*n)), A177499(n)]`
-/

namespace A325113.P8615897250695822886
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177499 (A274710 (2 * n)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177499 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A325113.P8615897250695822886

/-! ## A325113.P11108389640333573959

`lt[A169743(A086449(n)), A169747(2*n+1)]`
-/

namespace A325113.P11108389640333573959
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169743 (A086449 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169747 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A325113.P11108389640333573959

/-! ## A325113.P1234037835545011227

`lt[(-1)^n*∑{d}[n+1, #], A267700(A333627(2*(n+1)))]`
-/

namespace A325113.P1234037835545011227
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * ((∑ d ∈ Nat.divisors (f2 n), d : ℕ) : ℤ)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267700 (A333627 (2 * (n + 1))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f3 j) n

end

end A325113.P1234037835545011227

/-! ## A325113.P4708059663391426367

`lt[A080577(A209374(n+2)), A143025(n)]`
-/

namespace A325113.P4708059663391426367
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080577 (A209374 (n + 2)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143025 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A325113.P4708059663391426367

/-!
# A325114: Integers k such that no nonzero subsequence of the decimal representation of k is divisible by 7.

The programs for A325114, there is no canonical definition to state claims against.
-/

/-! ## A325114.P11507167587434155252

`A376047(n+1)%∑[A374706(n+3)]`
-/

namespace A325114.P11507167587434155252
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374706 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A376047 (n + 1)) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A325114.P11507167587434155252

/-! ## A325114.P13649616521115034655

`A325830(A036962(n+1))*A376047(n+1)`
-/

namespace A325114.P13649616521115034655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325830 (A036962 (n + 1)).toNat * A376047 (n + 1)

end

end A325114.P13649616521115034655

/-! ## A325114.P12559160528256632697

`(comp[A092433(n+1)-1]+1)*A325830(A036962(n+1))`
-/

namespace A325114.P12559160528256632697
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092433 (n + 1) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1 : ℤ) * A325830 (A036962 (n + 1)).toNat

end

end A325114.P12559160528256632697

/-! ## A325114.P2978222815721452006

`A376047(n+1)+A164292(A290077(3*(n+1)))`
-/

namespace A325114.P2978222815721452006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376047 (n + 1) + A164292 (A290077 (3 * (n + 1))).toNat

end

end A325114.P2978222815721452006

/-! ## A325114.P10178475263105660536

`and(A057428(A060661(n+1)), A376047(n+1))`
-/

namespace A325114.P10178475263105660536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A057428 (A060661 (n + 1)).toNat) (A376047 (n + 1))

end

end A325114.P10178475263105660536

/-! ## A325114.P6094715816642545758

`A376047(n+1)%A002189(n)`
-/

namespace A325114.P6094715816642545758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A376047 (n + 1)) (A002189 n)

end

end A325114.P6094715816642545758

/-!
# A325115: Number of simple graphs on n unlabeled nodes with exactly 1 endpoint (node of degree 1).

The programs for A325115, there is no canonical definition to state claims against.
-/

/-! ## A325115.P1223134889719281479

`A327371(∑[n+1]+1)`
-/

namespace A325115.P1223134889719281479
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327371 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A325115.P1223134889719281479

/-! ## A325115.P2695946416970601176

`A327371(A000124(n+1))+A025443(n)`
-/

namespace A325115.P2695946416970601176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327371 (A000124 (n + 1)).toNat + A025443 n

end

end A325115.P2695946416970601176

/-! ## A325115.P5948414724042508546

`A019428(2*n)*A327371(A000124(n+1))`
-/

namespace A325115.P5948414724042508546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019428 (2 * n) * A327371 (A000124 (n + 1)).toNat

end

end A325115.P5948414724042508546

/-! ## A325115.P12880952786690300880

`A327371(A000124(n+1))+A035363(2*n+1)`
-/

namespace A325115.P12880952786690300880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327371 (A000124 (n + 1)).toNat + A035363 (2 * n + 1)

end

end A325115.P12880952786690300880

/-! ## A325115.P18249879625953470813

`A284939(2*(n+1))*A327371(A000124(n+1))`
-/

namespace A325115.P18249879625953470813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284939 (2 * (n + 1)) * A327371 (A000124 (n + 1)).toNat

end

end A325115.P18249879625953470813

/-!
# A325116: Length of longest run of consecutive even integers having exactly n divisors.

The programs for A325116, there is no canonical definition to state claims against.
-/

/-! ## A325116.P2824337613014895848

`A122297(gcd(∑[n], A019427(n)))`
-/

namespace A325116.P2824337613014895848
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122297 (Int.gcd ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) (A019427 n))

end

end A325116.P2824337613014895848

/-! ## A325116.P1638348975387553795

`A007895(A121283(n)^A085491(n))`
-/

namespace A325116.P1638348975387553795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007895 (SequenceMachineLib.roundAway ((A121283 n : ℚ) ^ (A085491 n : ℤ))).toNat

end

end A325116.P1638348975387553795

/-! ## A325116.P3484694081462150273

`A029179(gcd(A001550(n), A022369(n)))`
-/

namespace A325116.P3484694081462150273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029179 (Int.gcd (A001550 n) (A022369 n))

end

end A325116.P3484694081462150273

/-! ## A325116.P420891030210318138

`A060819(A081320(n+1))%A008576(n)`
-/

namespace A325116.P420891030210318138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A060819 (A081320 (n + 1)).toNat) (A008576 n)

end

end A325116.P420891030210318138

/-! ## A325116.P13800719346248280568

`A324840(A329900(n+1))%A078615(n+1)`
-/

namespace A325116.P13800719346248280568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A324840 (A329900 (n + 1)).toNat) (A078615 (n + 1))

end

end A325116.P13800719346248280568

/-!
# A325118: Heinz numbers of binary carry-connected integer partitions.

The programs for A325118, there is no canonical definition to state claims against.
-/

/-! ## A325118.P9785271034570027413

`lt[A371451(n+1), 2]+1`
-/

namespace A325118.P9785271034570027413
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371451 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A325118.P9785271034570027413

/-! ## A325118.P550746061072617838

`lt[A004569(2*(n+3)), A014963(A219209(n))]`
-/

namespace A325118.P550746061072617838
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004569 (2 * (n + 3))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A219209 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A325118.P550746061072617838

/-! ## A325118.P12191734271532050410

`record[A262689(A302602(n+1))]`
-/

namespace A325118.P12191734271532050410
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262689 (A302602 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A325118.P12191734271532050410

/-! ## A325118.P10417070029997992332

`∑[A111616(A033496(n+1))]`
-/

namespace A325118.P10417070029997992332
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111616 (A033496 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A325118.P10417070029997992332

/-!
# A325119: Heinz numbers of binary carry-connected strict integer partitions.

The programs for A325119, there is no canonical definition to state claims against.
-/

/-! ## A325119.P14284449146065651269

`record[A007913(A325118(n+1))]`
-/

namespace A325119.P14284449146065651269
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (A325118 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A325119.P14284449146065651269

/-! ## A325119.P3845281740135256581

`filter[A325118(n+1), A008966(#)]`
-/

namespace A325119.P3845281740135256581
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325118 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A008966 (f1 j).toNat = 1) n)

end

end A325119.P3845281740135256581

/-! ## A325119.P16255949180875874821

`filter[A325118(n+1), A323154(#)]`
-/

namespace A325119.P16255949180875874821
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325118 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323154 (f1 j).toNat = 1) n)

end

end A325119.P16255949180875874821

/-! ## A325119.P6820514035994673111

`filter[A325118(n+1), A353559(#)]`
-/

namespace A325119.P6820514035994673111
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325118 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353559 (f1 j).toNat = 1) n)

end

end A325119.P6820514035994673111

/-! ## A325119.P10688231218474327959

`∩[A005117(n+1), A325118(n+1)]`
-/

namespace A325119.P10688231218474327959
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325118 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A325119.P10688231218474327959

/-!
# A325120: Sum of binary lengths of the prime indices of n.

The programs for A325120, there is no canonical definition to state claims against.
-/

/-! ## A325120.P8946331560392095360

`∑{e}[A181821(n+1), A070939(#)]`
-/

namespace A325120.P8946331560392095360
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181821 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A070939 (Nat.factorization (f1 n).natAbs p)

end

end A325120.P8946331560392095360

/-! ## A325120.P12376436690053586877

`∑{e}[A181821(n+1), A113473(#)]`
-/

namespace A325120.P12376436690053586877
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181821 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A113473 (Nat.factorization (f1 n).natAbs p)

end

end A325120.P12376436690053586877

/-! ## A325120.P13310051462130698294

`∑{e}[A304660(n+1), A070939(#)]`
-/

namespace A325120.P13310051462130698294
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304660 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A070939 (Nat.factorization (f1 n).natAbs p)

end

end A325120.P13310051462130698294

/-! ## A325120.P632536011906801036

`∑{e}[A181821(n+1), A110591(#²)]`
-/

namespace A325120.P632536011906801036
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181821 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A110591 (Nat.factorization (f1 n).natAbs p ^ 2)

end

end A325120.P632536011906801036

/-! ## A325120.P1234131814557846660

`∑{e}[A181821(n+1), A000523(#)+1]`
-/

namespace A325120.P1234131814557846660
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181821 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, (A000523 (Nat.factorization (f1 n).natAbs p) + 1)

end

end A325120.P1234131814557846660

/-! ## A325120.P4629805836206372096

`∑{e}[A181821(n+1), A000005(A053644(#))]`
-/

namespace A325120.P4629805836206372096
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181821 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A000005 (A053644 (Nat.factorization (f1 n).natAbs p)).toNat

end

end A325120.P4629805836206372096

/-! ## A325120.P14667968195551237282

`∑{e}[A181821(n+1), A001222(A057335(#))]`
-/

namespace A325120.P14667968195551237282
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181821 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A001222 (A057335 (Nat.factorization (f1 n).natAbs p)).toNat

end

end A325120.P14667968195551237282

/-! ## A325120.P13864739879603982159

`∑{e}[A181821(n+1), A056239(A062383(#))]`
-/

namespace A325120.P13864739879603982159
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181821 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A056239 (A062383 (Nat.factorization (f1 n).natAbs p)).toNat

end

end A325120.P13864739879603982159

/-! ## A325120.P9606288894944775261

`∑{e}[A181821(n+1), A328477(A000523(#))]`
-/

namespace A325120.P9606288894944775261
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181821 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A328477 (A000523 (Nat.factorization (f1 n).natAbs p)).toNat

end

end A325120.P9606288894944775261

/-! ## A325120.P12157581457260485120

`∑{d}[A181821(n+1), A302777(#)]`
-/

namespace A325120.P12157581457260485120
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181821 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A302777 d

end

end A325120.P12157581457260485120

/-!
# A325121: Sum of binary digits of the prime indices of n.

The programs for A325121, the canonical program `A325121.P1499457179464283586` is in `Seq.B002.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A325121 has offset 1).

The definition of A325121 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A325121.P4434822729042158710

`A325122(n+1)+∑{e}[n+1, #]`
-/

namespace A325121.P4434822729042158710
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325122 (n + 1) + ((∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p : ℕ) : ℤ)

end

end A325121.P4434822729042158710

namespace A325121

/-- `A325122(n+1)+∑{e}[n+1, #]` -/
def P4434822729042158710.Spec : Prop :=
  ∀ n, P4434822729042158710.a n = A325121 (n + 1)

theorem P4434822729042158710.correct : P4434822729042158710.Spec := by
  intro n
  simp only [A325121, Nat.add_sub_cancel, A325121.P4434822729042158710.f1, A325121.P4434822729042158710.a, A325121.P1499457179464283586.f1, A325121.P1499457179464283586.a, A000120, A000120.P2816527436160941581.a, A297109, A297109.P3226708849595875613.a, A325122, A325122.P1813601502794908379.f1, A325122.P1813601502794908379.a, A005187, A005187.P3874015513960485494.a, A020500, A020500.P12751166166803317150.f1, A020500.P12751166166803317150.a, A230980, A230980.P7768329975809437652.f2, A230980.P7768329975809437652.f1, A230980.P7768329975809437652.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A325121

/-! ## A325121.P1499457179464283586

`∑{d}[n+1, A000120(A297109(#))]`

The canonical program, it is in `Seq.B002.C007`.
-/

namespace A325121

/-- `∑{d}[n+1, A000120(A297109(#))]` -/
def P1499457179464283586.Spec : Prop :=
  ∀ n, P1499457179464283586.a n = A325121 (n + 1)

theorem P1499457179464283586.correct : P1499457179464283586.Spec := by
  intro n
  simp only [A325121, Nat.add_sub_cancel]

end A325121

/-! ## A325121.P1832214694274832492

`A325122(n+1)+Δ[A022559(n)]`
-/

namespace A325121.P1832214694274832492
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022559 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325122 (n + 1) + (f1 (n + 1) - f1 n)

end

end A325121.P1832214694274832492

namespace A325121

/-- `A325122(n+1)+Δ[A022559(n)]` -/
def P1832214694274832492.Spec : Prop :=
  ∀ n, P1832214694274832492.a n = A325121 (n + 1)

end A325121

/-! ## A325121.P4491566379491157109

`A325122(n+1)+A001222(n+1)`
-/

namespace A325121.P4491566379491157109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325122 (n + 1) + A001222 (n + 1)

end

end A325121.P4491566379491157109

namespace A325121

/-- `A325122(n+1)+A001222(n+1)` -/
def P4491566379491157109.Spec : Prop :=
  ∀ n, P4491566379491157109.a n = A325121 (n + 1)

theorem P4491566379491157109.correct : P4491566379491157109.Spec := by
  intro n
  simp only [A325121, Nat.add_sub_cancel, A325121.P4491566379491157109.a, A325121.P1499457179464283586.f1, A325121.P1499457179464283586.a, A000120, A000120.P2816527436160941581.a, A001222, A001222.P667907507343207792.f1, A001222.P667907507343207792.a, A297109, A297109.P3226708849595875613.a, A325122, A325122.P1813601502794908379.f1, A325122.P1813601502794908379.a, A005187, A005187.P3874015513960485494.a, A020500, A020500.P12751166166803317150.f1, A020500.P12751166166803317150.a, A230980, A230980.P7768329975809437652.f2, A230980.P7768329975809437652.f1, A230980.P7768329975809437652.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A325121

/-! ## A325121.P16822715740708226270

`A325122(n+1)+log2(A061142(n+1))`
-/

namespace A325121.P16822715740708226270
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A325122 (n + 1) : ℝ) + Real.logb 2 (A061142 (n + 1) : ℝ)

end

end A325121.P16822715740708226270

namespace A325121

/-- `A325122(n+1)+log2(A061142(n+1))` -/
def P16822715740708226270.Spec : Prop :=
  ∀ n, P16822715740708226270.a n = (A325121 (n + 1) : ℝ)

end A325121

/-! ## A325121.P7573336160201958701

`A325122(n+1)+A065770(A105560(n+1))`
-/

namespace A325121.P7573336160201958701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325122 (n + 1) + A065770 (A105560 (n + 1)).toNat

end

end A325121.P7573336160201958701

namespace A325121

/-- `A325122(n+1)+A065770(A105560(n+1))` -/
def P7573336160201958701.Spec : Prop :=
  ∀ n, P7573336160201958701.a n = A325121 (n + 1)

end A325121

/-! ## A325121.P16727225050112589800

`A056239(n+1)+A325122(n+1)-A318995(n+1)`
-/

namespace A325121.P16727225050112589800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (n + 1) + (A325122 (n + 1) - A318995 (n + 1))

end

end A325121.P16727225050112589800

namespace A325121

/-- `A056239(n+1)+A325122(n+1)-A318995(n+1)` -/
def P16727225050112589800.Spec : Prop :=
  ∀ n, P16727225050112589800.a n = A325121 (n + 1)

end A325121

/-! ## A325121.P6766766691170227037

`A325122(n+1)+A302242(A000040(n+1))`
-/

namespace A325121.P6766766691170227037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325122 (n + 1) + A302242 (A000040 (n + 1)).toNat

end

end A325121.P6766766691170227037

namespace A325121

/-- `A325122(n+1)+A302242(A000040(n+1))` -/
def P6766766691170227037.Spec : Prop :=
  ∀ n, P6766766691170227037.a n = A325121 (n + 1)

end A325121

/-! ## A325121.P3243989769524777848

`∑{e}[A181821(n+1), A000120(#)]`
-/

namespace A325121.P3243989769524777848
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181821 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A000120 (Nat.factorization (f1 n).natAbs p)

end

end A325121.P3243989769524777848

namespace A325121

/-- `∑{e}[A181821(n+1), A000120(#)]` -/
def P3243989769524777848.Spec : Prop :=
  ∀ n, P3243989769524777848.a n = A325121 (n + 1)

end A325121

/-! ## A325121.P513271492660035644

`A064547(A181821(n+1))`
-/

namespace A325121.P513271492660035644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064547 (A181821 (n + 1)).toNat

end

end A325121.P513271492660035644

namespace A325121

/-- `A064547(A181821(n+1))` -/
def P513271492660035644.Spec : Prop :=
  ∀ n, P513271492660035644.a n = A325121 (n + 1)

end A325121

/-!
# A325122: Sum of binary digits of the prime indices of n, minus Omega(n).

The programs for A325122, the canonical program `A325122.P1813601502794908379` is in `Seq.B003.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A325122 has offset 1).

The definition of A325122 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A325122.P1813601502794908379

`A325121(n+1)-∑{e}[n+1, #]`

The canonical program, it is in `Seq.B003.C005`.
-/

namespace A325122

/-- `A325121(n+1)-∑{e}[n+1, #]` -/
def P1813601502794908379.Spec : Prop :=
  ∀ n, P1813601502794908379.a n = A325122 (n + 1)

theorem P1813601502794908379.correct : P1813601502794908379.Spec := by
  intro n
  simp only [A325122, Nat.add_sub_cancel]

end A325122

/-! ## A325122.P15739995366325185983

`A325121(n+1)-Δ[A022559(n)]`
-/

namespace A325122.P15739995366325185983
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022559 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325121 (n + 1) - (f1 (n + 1) - f1 n)

end

end A325122.P15739995366325185983

namespace A325122

/-- `A325121(n+1)-Δ[A022559(n)]` -/
def P15739995366325185983.Spec : Prop :=
  ∀ n, P15739995366325185983.a n = A325122 (n + 1)

end A325122

/-! ## A325122.P11596506273573056071

`A325121(n+1)-A001222(n+1)`
-/

namespace A325122.P11596506273573056071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325121 (n + 1) - A001222 (n + 1)

end

end A325122.P11596506273573056071

namespace A325122

/-- `A325121(n+1)-A001222(n+1)` -/
def P11596506273573056071.Spec : Prop :=
  ∀ n, P11596506273573056071.a n = A325122 (n + 1)

end A325122

/-! ## A325122.P14389586379102470428

`A325121(n+1)-A325121(A061142(n+1))`
-/

namespace A325122.P14389586379102470428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325121 (n + 1) - A325121 (A061142 (n + 1)).toNat

end

end A325122.P14389586379102470428

namespace A325122

/-- `A325121(n+1)-A325121(A061142(n+1))` -/
def P14389586379102470428.Spec : Prop :=
  ∀ n, P14389586379102470428.a n = A325122 (n + 1)

end A325122

/-! ## A325122.P4180231993686194803

`A318995(n+1)+A325121(n+1)-A056239(n+1)`
-/

namespace A325122.P4180231993686194803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318995 (n + 1) + (A325121 (n + 1) - A056239 (n + 1))

end

end A325122.P4180231993686194803

namespace A325122

/-- `A318995(n+1)+A325121(n+1)-A056239(n+1)` -/
def P4180231993686194803.Spec : Prop :=
  ∀ n, P4180231993686194803.a n = A325122 (n + 1)

end A325122

/-! ## A325122.P17419562422131401860

`A325121(n+1)-A302242(A000040(n+1))`
-/

namespace A325122.P17419562422131401860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325121 (n + 1) - A302242 (A000040 (n + 1)).toNat

end

end A325122.P17419562422131401860

namespace A325122

/-- `A325121(n+1)-A302242(A000040(n+1))` -/
def P17419562422131401860.Spec : Prop :=
  ∀ n, P17419562422131401860.a n = A325122 (n + 1)

end A325122

/-! ## A325122.P6704442183940272872

`A064547(A181821(n+1))-A001222(n+1)`
-/

namespace A325122.P6704442183940272872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064547 (A181821 (n + 1)).toNat - A001222 (n + 1)

end

end A325122.P6704442183940272872

namespace A325122

/-- `A064547(A181821(n+1))-A001222(n+1)` -/
def P6704442183940272872.Spec : Prop :=
  ∀ n, P6704442183940272872.a n = A325122 (n + 1)

end A325122

/-!
# A325123: Number of divisible pairs of positive integers up to n with no binary carries.

The programs for A325123, there is no canonical definition to state claims against.
-/

/-! ## A325123.P8869486975434427725

`∑[∑{d}[n, A000007(and(n, #))]]`
-/

namespace A325123.P8869486975434427725
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), A000007 (Nat.land n d)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A325123.P8869486975434427725

/-! ## A325123.P4267819338614302654

`∑[∑{d}[n, A075438(and(n, #)²)]]`
-/

namespace A325123.P4267819338614302654
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), A075438 (Nat.land n d ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A325123.P4267819338614302654

/-! ## A325123.P1130082725210303532

`A006218(n)-∑[∑{d}[n, ceil(and(n, #)/n)]]`
-/

namespace A325123.P1130082725210303532
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), ⌈(Nat.land n d : ℚ) / (n : ℚ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A325123.P1130082725210303532

/-! ## A325123.P2609976337695578072

`A006218(n)-∑[∑{d}[n, A057427(and(n, #))]]`
-/

namespace A325123.P2609976337695578072
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), A057427 (Nat.land n d)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A325123.P2609976337695578072

/-! ## A325123.P10828007860839275117

`∑[∑{d}[n, floor(atan(#))]]-A307230(n)`
-/

namespace A325123.P10828007860839275117
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), ⌊Real.arctan (d : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A307230 n

end

end A325123.P10828007860839275117

/-! ## A325123.P2565638204585293085

`∑[A032741(n)]-A307230(n)`
-/

namespace A325123.P2565638204585293085
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A307230 n

end

end A325123.P2565638204585293085

/-! ## A325123.P16336002873873039523

`A006218(n)-(A307230(n)+n)`
-/

namespace A325123.P16336002873873039523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 n - (A307230 n + (n : ℤ))

end

end A325123.P16336002873873039523

/-! ## A325123.P9226743508646774444

`A006218(n)%A028310(A307230(n)+n)`
-/

namespace A325123.P9226743508646774444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A006218 n) (A028310 (A307230 n + (n : ℤ)).toNat)

end

end A325123.P9226743508646774444

/-! ## A325123.P13347566775622399022

`∑[∏{e}[n, #+1]]-1-A325124(n)`
-/

namespace A325123.P13347566775622399022
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), (Nat.factorization (f2 n) p + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1 - A325124 n

end

end A325123.P13347566775622399022

/-! ## A325123.P12276191905195034395

`A006218(n)-A325124(n)`
-/

namespace A325123.P12276191905195034395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 n - A325124 n

end

end A325123.P12276191905195034395

/-!
# A325124: Number of divisible pairs of positive integers up to n with at least one binary carry.

The programs for A325124, there is no canonical definition to state claims against.
-/

/-! ## A325124.P10482810014009103674

`A307230(n)+n`
-/

namespace A325124.P10482810014009103674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307230 n + (n : ℤ)

end

end A325124.P10482810014009103674

/-! ## A325124.P9602142835513811256

`∑[∑{d}[n, ceil(and(n, #)/n)]]`
-/

namespace A325124.P9602142835513811256
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), ⌈(Nat.land n d : ℚ) / (n : ℚ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A325124.P9602142835513811256

/-! ## A325124.P11638181655296447296

`∑[∑{d}[n, A057427(and(n, #))]]`
-/

namespace A325124.P11638181655296447296
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), A057427 (Nat.land n d)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A325124.P11638181655296447296

/-! ## A325124.P5930784651231750979

`∑[∑{d}[n, A178334(and(n, #))]]`
-/

namespace A325124.P5930784651231750979
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), A178334 (Nat.land n d)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A325124.P5930784651231750979

/-! ## A325124.P1890420496214784942

`∑[∑{d}[n, ceil(acot(#))]]-A325123(n)`
-/

namespace A325124.P1890420496214784942
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), ⌈SequenceMachineLib.acot (d : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A325123 n

end

end A325124.P1890420496214784942

/-! ## A325124.P5763334259233605004

`A006218(n)-A325123(n)`
-/

namespace A325124.P5763334259233605004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 n - A325123 n

end

end A325124.P5763334259233605004

/-! ## A325124.P7581218894890463481

`abs(A001489(n)-A307230(n))`
-/

namespace A325124.P7581218894890463481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A001489 n - A307230 n|

end

end A325124.P7581218894890463481

/-! ## A325124.P5148597070012292335

`A054519(n)-(A325123(n)+1)`
-/

namespace A325124.P5148597070012292335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054519 n - (A325123 n + 1)

end

end A325124.P5148597070012292335

/-! ## A325124.P2624362941264941372

`∑[A000005(abs(1-n)+1)]-2-A325123(n)`
-/

namespace A325124.P2624362941264941372
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (|1 - (n : ℤ)| + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 2 - A325123 n

end

end A325124.P2624362941264941372

/-! ## A325124.P16510174138353236785

`∑[A000005(n+1)]-(A325123(n)+A000005(n+1))`
-/

namespace A325124.P16510174138353236785
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (A325123 n + A000005 (n + 1))

end

end A325124.P16510174138353236785

/-!
# A325125: Number of simple graphs on n unlabeled nodes with exactly 2 endpoints (nodes of degree 1).

The programs for A325125, there is no canonical definition to state claims against.
-/

/-! ## A325125.P7671308433631278202

`A327371(∑[char[1]+n]+n+2)`
-/

namespace A325125.P7671308433631278202
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = n then 1 else 0) + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327371 (∑ j ∈ Finset.range (n + 1), f1 j + n + 2)

end

end A325125.P7671308433631278202

/-! ## A325125.P1116467619999619624

`record[A327371(n+4)/A220386(n+2)]`
-/

namespace A325125.P1116467619999619624
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A327371 (n + 4) : ℚ) / (A220386 (n + 2) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A325125.P1116467619999619624

/-! ## A325125.P417134070680106482

`record[A327371(n+2)/A108990(n)]`
-/

namespace A325125.P417134070680106482
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A327371 (n + 2) : ℚ) / (A108990 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A325125.P417134070680106482

/-!
# A325126: a(1) = 1; a(n) = -Sum_{d|n, d<n} rad(n/d) * a(d), where rad = A007947.

The programs for A325126, the canonical program `A325126.P430462958955790884` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A325126 has offset 1).

The definition of A325126 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A325126.P5197963204030151187

`A008836(n+1)*A326297(n+1)*A007947(n+1)`
-/

namespace A325126.P5197963204030151187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008836 (n + 1) * A326297 (n + 1) * A007947 (n + 1)

end

end A325126.P5197963204030151187

namespace A325126

/-- `A008836(n+1)*A326297(n+1)*A007947(n+1)` -/
def P5197963204030151187.Spec : Prop :=
  ∀ n, P5197963204030151187.a n = A325126 (n + 1)

end A325126

/-! ## A325126.P13878394500342780998

`(n+1)/A000010(n+1)*A125131(n+1)`
-/

namespace A325126.P13878394500342780998
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A000010 (n + 1) : ℚ) * (A125131 (n + 1) : ℚ)

end

end A325126.P13878394500342780998

namespace A325126

/-- `(n+1)/A000010(n+1)*A125131(n+1)` -/
def P13878394500342780998.Spec : Prop :=
  ∀ n, P13878394500342780998.a n = (A325126 (n + 1) : ℚ)

end A325126

/-! ## A325126.P430462958955790884

`∑{d}[n+1, A008683(#)*A125131((n+1)/#)]`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A325126

/-- `∑{d}[n+1, A008683(#)*A125131((n+1)/#)]` -/
def P430462958955790884.Spec : Prop :=
  ∀ n, P430462958955790884.a n = A325126 (n + 1)

theorem P430462958955790884.correct : P430462958955790884.Spec := by
  intro n
  simp only [A325126, Nat.add_sub_cancel]

end A325126

/-! ## A325126.P6414553859168177227

`A062953(n+1)*A125131(A003557(n+1))`
-/

namespace A325126.P6414553859168177227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062953 (n + 1) * A125131 (A003557 (n + 1)).toNat

end

end A325126.P6414553859168177227

namespace A325126

/-- `A062953(n+1)*A125131(A003557(n+1))` -/
def P6414553859168177227.Spec : Prop :=
  ∀ n, P6414553859168177227.a n = A325126 (n + 1)

end A325126

/-! ## A325126.P18359007906893724525

`A007947(n+1)*A125131(n+1)/A173557(n+1)`
-/

namespace A325126.P18359007906893724525
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007947 (n + 1) * A125131 (n + 1) : ℚ) / (A173557 (n + 1) : ℚ)

end

end A325126.P18359007906893724525

namespace A325126

/-- `A007947(n+1)*A125131(n+1)/A173557(n+1)` -/
def P18359007906893724525.Spec : Prop :=
  ∀ n, P18359007906893724525.a n = (A325126 (n + 1) : ℚ)

end A325126

/-! ## A325126.P1162791005458109722

`A125131(A003557(n+1))*A328729(A078615(n+1))`
-/

namespace A325126.P1162791005458109722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125131 (A003557 (n + 1)).toNat * A328729 (A078615 (n + 1)).toNat

end

end A325126.P1162791005458109722

namespace A325126

/-- `A125131(A003557(n+1))*A328729(A078615(n+1))` -/
def P1162791005458109722.Spec : Prop :=
  ∀ n, P1162791005458109722.a n = A325126 (n + 1)

end A325126

/-!
# A325127: Numbers in whose prime factorization the exponent of prime(k) is greater than k for all prime indices k.

The programs for A325127, there is no canonical definition to state claims against.
-/

/-! ## A325127.P6335197274696589897

`∩[A324525(n+1), A325130(n+1)]`
-/

namespace A325127.P6335197274696589897
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324525 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325130 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A325127.P6335197274696589897

/-!
# A325128: Numbers in whose prime factorization the exponent of prime(k) is less than k for all prime indices k.

The programs for A325128, the canonical program `A325128.P17736158704221876707` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A325128 has offset 1).

The definition of A325128 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A325128.P17736158704221876707

`filter[2*n+1, A353567(#)]`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A325128

/-- `filter[2*n+1, A353567(#)]` -/
def P17736158704221876707.Spec : Prop :=
  ∀ n, (P17736158704221876707.a n : ℤ) = A325128 (n + 1)

theorem P17736158704221876707.correct : P17736158704221876707.Spec := by
  intro n
  simp only [A325128, Nat.add_sub_cancel]

end A325128

/-! ## A325128.P10482724418479784234

`record[sqrt(A328621(n+1))]`
-/

namespace A325128.P10482724418479784234
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A328621 (n + 1) : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A325128.P10482724418479784234

namespace A325128

/-- `record[sqrt(A328621(n+1))]` -/
def P10482724418479784234.Spec : Prop :=
  ∀ n, P10482724418479784234.a n = (A325128 (n + 1) : ℝ)

end A325128

/-! ## A325128.P14903873367924375447

`record[sqrt(A328618(2*n+1))]`
-/

namespace A325128.P14903873367924375447
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A328618 (2 * n + 1) : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A325128.P14903873367924375447

namespace A325128

/-- `record[sqrt(A328618(2*n+1))]` -/
def P14903873367924375447.Spec : Prop :=
  ∀ n, P14903873367924375447.a n = (A325128 (n + 1) : ℝ)

end A325128

/-! ## A325128.P5342672170111760650

`record[A328618(n+1)/(n+1)]`
-/

namespace A325128.P5342672170111760650
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A328618 (n + 1) : ℚ) / (n + 1 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A325128.P5342672170111760650

namespace A325128

/-- `record[A328618(n+1)/(n+1)]` -/
def P5342672170111760650.Spec : Prop :=
  ∀ n, P5342672170111760650.a n = (A325128 (n + 1) : ℚ)

end A325128

/-! ## A325128.P10338778803327595803

`sqrt(A328618(eq[(n+1)², A328618(n+1)]+1))`
-/

namespace A325128.P10338778803327595803
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328618 (n + 1)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A328618 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1) : ℝ)

end

end A325128.P10338778803327595803

namespace A325128

/-- `sqrt(A328618(eq[(n+1)², A328618(n+1)]+1))` -/
def P10338778803327595803.Spec : Prop :=
  ∀ n, P10338778803327595803.a n = (A325128 (n + 1) : ℝ)

end A325128

/-! ## A325128.P10549820628936107497

`sqrt(A328621(eq[(n+1)², A328621(n+1)]+1))`
-/

namespace A325128.P10549820628936107497
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328621 (n + 1)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A328621 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1) : ℝ)

end

end A325128.P10549820628936107497

namespace A325128

/-- `sqrt(A328621(eq[(n+1)², A328621(n+1)]+1))` -/
def P10549820628936107497.Spec : Prop :=
  ∀ n, P10549820628936107497.a n = (A325128 (n + 1) : ℝ)

end A325128

/-! ## A325128.P6372425245699547453

`eq[1, A359550(n²)]`
-/

namespace A325128.P6372425245699547453
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359550 (n ^ 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A325128.P6372425245699547453

namespace A325128

/-- `eq[1, A359550(n²)]` -/
def P6372425245699547453.Spec : Prop :=
  ∀ n, (P6372425245699547453.a n : ℤ) = A325128 (n + 1)

end A325128

/-! ## A325128.P7905344795617209752

`eq[n², A327938(A253909(n))]`
-/

namespace A325128.P7905344795617209752
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327938 (A253909 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A325128.P7905344795617209752

namespace A325128

/-- `eq[n², A327938(A253909(n))]` -/
def P7905344795617209752.Spec : Prop :=
  ∀ n, (P7905344795617209752.a n : ℤ) = A325128 (n + 1)

end A325128

/-! ## A325128.P4501008636476064463

`∪[A015223(n), A352830(n+1)]`
-/

namespace A325128.P4501008636476064463
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015223 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352830 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A325128.P4501008636476064463

namespace A325128

/-- `∪[A015223(n), A352830(n+1)]` -/
def P4501008636476064463.Spec : Prop :=
  ∀ n, (P4501008636476064463.a n : ℤ) = A325128 (n + 1)

end A325128

/-! ## A325128.P7473044344242979364

`∪[A026701(n), A352830(n+1)]`
-/

namespace A325128.P7473044344242979364
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026701 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352830 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A325128.P7473044344242979364

namespace A325128

/-- `∪[A026701(n), A352830(n+1)]` -/
def P7473044344242979364.Spec : Prop :=
  ∀ n, (P7473044344242979364.a n : ℤ) = A325128 (n + 1)

end A325128

/-!
# A325129: Heinz numbers of integer partitions into nonsquares (A087153).

The programs for A325129, there is no canonical definition to state claims against.
-/

/-! ## A325129.P12993961511447451667

`eq[A284443(A047933(2*(n+2))), A284443(3*n+2)]`
-/

namespace A325129.P12993961511447451667
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284443 (A047933 (2 * (n + 2))).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284443 (3 * n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A325129.P12993961511447451667

/-! ## A325129.P7642301123630202826

`A162699(∑[A119569(n^(n%2))])`
-/

namespace A325129.P7642301123630202826
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119569 (n ^ (n % 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162699 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A325129.P7642301123630202826

/-! ## A325129.P4413447774627999035

`eq[A070641(A361277(n)), A070651(n)]`
-/

namespace A325129.P4413447774627999035
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070641 (A361277 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070651 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A325129.P4413447774627999035

/-! ## A325129.P7997659939416024109

`∑[gcd(A278233(n+1), A291162(2*n+5))]`
-/

namespace A325129.P7997659939416024109
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A278233 (n + 1)) (A291162 (2 * n + 5))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A325129.P7997659939416024109

/-! ## A325129.P6468789834828691988

`eq[A165226(n), A237271(A050469(2*(n+2)))]`
-/

namespace A325129.P6468789834828691988
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165226 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237271 (A050469 (2 * (n + 2))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A325129.P6468789834828691988

/-!
# A325130: Numbers in whose prime factorization the exponent of prime(k) is not equal to k for any prime index k.

The programs for A325130, the canonical program `A325130.P7314425242101421070` is in `Seq.B002.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A325130 has offset 1).

The definition of A325130 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6897 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A325130.P7314425242101421070

`lt[A276935(n+1), 1]+1`

The canonical program, it is in `Seq.B002.C007`.
-/

namespace A325130

/-- `lt[A276935(n+1), 1]+1` -/
def P7314425242101421070.Spec : Prop :=
  ∀ n, (P7314425242101421070.a n : ℤ) = A325130 (n + 1)

theorem P7314425242101421070.correct : P7314425242101421070.Spec := by
  intro n
  simp only [A325130, Nat.add_sub_cancel]

end A325130

/-! ## A325130.P1162065427989193417

`record[n+1-A045828(n)*A276935(n+1)]`
-/

namespace A325130.P1162065427989193417
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A045828 n * A276935 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A325130.P1162065427989193417

namespace A325130

/-- `record[n+1-A045828(n)*A276935(n+1)]` -/
def P1162065427989193417.Spec : Prop :=
  ∀ n, P1162065427989193417.a n = A325130 (n + 1)

end A325130

/-! ## A325130.P3788066461500995309

`record[n+1-A000005(n+1)*A276935(n+1)]`
-/

namespace A325130.P3788066461500995309
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A000005 (n + 1) * A276935 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A325130.P3788066461500995309

namespace A325130

/-- `record[n+1-A000005(n+1)*A276935(n+1)]` -/
def P3788066461500995309.Spec : Prop :=
  ∀ n, P3788066461500995309.a n = A325130 (n + 1)

end A325130

/-! ## A325130.P10414729489530410748

`record[n+1-A002113(n*A276935(n+1)+1)]`
-/

namespace A325130.P10414729489530410748
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A002113 ((n : ℤ) * A276935 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A325130.P10414729489530410748

namespace A325130

/-- `record[n+1-A002113(n*A276935(n+1)+1)]` -/
def P10414729489530410748.Spec : Prop :=
  ∀ n, P10414729489530410748.a n = A325130 (n + 1)

end A325130

/-! ## A325130.P5961009853190659185

`record[n+1-A276935(n+1)*A294669(n)]`
-/

namespace A325130.P5961009853190659185
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A276935 (n + 1) * A294669 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A325130.P5961009853190659185

namespace A325130

/-- `record[n+1-A276935(n+1)*A294669(n)]` -/
def P5961009853190659185.Spec : Prop :=
  ∀ n, P5961009853190659185.a n = A325130 (n + 1)

end A325130

/-!
# A325131: Heinz numbers of integer partitions where the set of distinct parts is disjoint from the set of distinct multiplicities.

The programs for A325131, there is no canonical definition to state claims against.
-/

/-! ## A325131.P16810250178250778858

`eq[1, A373246(n+1)]+1`
-/

namespace A325131.P16810250178250778858
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373246 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A325131.P16810250178250778858

/-! ## A325131.P15750733210695485682

`eq[2, A108352(abs(1-n)+2)]+1`
-/

namespace A325131.P15750733210695485682
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108352 (|1 - (n : ℤ)| + 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A325131.P15750733210695485682

/-! ## A325131.P16856221724959255562

`eq[1, gcd(3, A108352(n+1)+3)]+1`
-/

namespace A325131.P16856221724959255562
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 3 (A108352 (n + 1) + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A325131.P16856221724959255562

/-! ## A325131.P11572119652168885309

`eq[1, gcd(n+1, A048767(n+1))]+1`
-/

namespace A325131.P11572119652168885309
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A048767 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A325131.P11572119652168885309

/-! ## A325131.P18157011404770245806

`record[A062759(A325130(n+1))]`
-/

namespace A325131.P18157011404770245806
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062759 (A325130 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A325131.P18157011404770245806

/-! ## A325131.P5818843207154269469

`eq[2, A108352(A085229(n+1))]`
-/

namespace A325131.P5818843207154269469
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108352 (A085229 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A325131.P5818843207154269469

/-! ## A325131.P9189816135356366648

`filter[A325130(n+1), A384667(#)]`
-/

namespace A325131.P9189816135356366648
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325130 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A384667 (f1 j).toNat = 1) n)

end

end A325131.P9189816135356366648

/-! ## A325131.P10460798251338110616

`∩[A325130(n+1), A085924(n)]`
-/

namespace A325131.P10460798251338110616
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325130 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085924 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A325131.P10460798251338110616

/-! ## A325131.P5522728445962887520

`∩[A072774(n+1), A325130(n+1)]`
-/

namespace A325131.P5522728445962887520
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072774 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325130 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A325131.P5522728445962887520

/-!
# A325132: Number of integer partitions of n where the multiplicity of each part k is at least prime(k).

The programs for A325132, there is no canonical definition to state claims against.
-/

/-! ## A325132.P6143295331741812409

`Δ[A347697(A006982(n))]-A115360(3*n+1)`
-/

namespace A325132.P6143295331741812409
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347697 (A006982 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A115360 (3 * n + 1)

end

end A325132.P6143295331741812409

/-! ## A325132.P17190429706096710860

`A307598(A064628(n))+A025797(n)`
-/

namespace A325132.P17190429706096710860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307598 (A064628 n).toNat + A025797 n

end

end A325132.P17190429706096710860

/-! ## A325132.P13640916061192314827

`A115584(n)-A340998(A008766(n))`
-/

namespace A325132.P13640916061192314827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115584 n - A340998 ((A008766 n).toNat + 140)

end

end A325132.P13640916061192314827

/-! ## A325132.P15757634395010661076

`A111972(A292496(n)+A232753(n+1))`
-/

namespace A325132.P15757634395010661076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111972 (A292496 n + A232753 (n + 1)).toNat

end

end A325132.P15757634395010661076

/-! ## A325132.P763655878309564721

`A286574(A010355(n+1))`
-/

namespace A325132.P763655878309564721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286574 (A010355 (n + 1)).toNat

end

end A325132.P763655878309564721

/-!
# A325133: Heinz number of the integer partition obtained by removing the inner lining, or, equivalently, the largest hook, of the integer partition with Heinz number n.

The programs for A325133, the canonical program `A325133.P17746794442660718236` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A325133 has offset 1).

The definition of A325133 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A052126, A064989, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A325133.P17746794442660718236

`A064989(A052126(n+1))`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A325133

/-- `A064989(A052126(n+1))` -/
def P17746794442660718236.Spec : Prop :=
  ∀ n, P17746794442660718236.a n = A325133 (n + 1)

theorem P17746794442660718236.correct : P17746794442660718236.Spec := by
  intro n
  simp only [A325133, Nat.add_sub_cancel]

end A325133

/-! ## A325133.P14597437124411021206

`A052126(abs(A290099(n+1)))`
-/

namespace A325133.P14597437124411021206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052126 |A290099 (n + 1)|.toNat

end

end A325133.P14597437124411021206

namespace A325133

/-- `A052126(abs(A290099(n+1)))` -/
def P14597437124411021206.Spec : Prop :=
  ∀ n, P14597437124411021206.a n = A325133 (n + 1)

end A325133

/-! ## A325133.P848324971134355275

`A064989(n+1-A171462(n+1))`
-/

namespace A325133.P848324971134355275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064989 ((n + 1 : ℤ) - A171462 (n + 1)).toNat

end

end A325133.P848324971134355275

namespace A325133

/-- `A064989(n+1-A171462(n+1))` -/
def P848324971134355275.Spec : Prop :=
  ∀ n, P848324971134355275.a n = A325133 (n + 1)

theorem P848324971134355275.correct : P848324971134355275.Spec := by
  intro n
  simp only [A325133, Nat.add_sub_cancel, A325133.P848324971134355275.a, A325133.P17746794442660718236.a, A052126, A052126.P1944428405920482243.a, A064989, A064989.P13349672914146769936.a, A171462, A171462.P186066025836437895.a, A006530, A006530.P13372528560459906635.a, A008578, A008578.P3639467937083264764.a, A061395, A061395.P8431317036300486107.a, A029837, A029837.P1050578713049589.a, A070229, A070229.P5792893597916963980.a, A087207, A087207.P12536008426233777954.a, A158611, A158611.P9275629407611603775.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A028815, A028815.P810525423351225743.a, A048675, A048675.P15792214674053257917.f1, A048675.P15792214674053257917.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A325133

/-! ## A325133.P11162786739629350943

`A064989((n+1)/A006530(n+1))`
-/

namespace A325133.P11162786739629350943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064989 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A006530 (n + 1) : ℚ))).toNat

end

end A325133.P11162786739629350943

namespace A325133

/-- `A064989((n+1)/A006530(n+1))` -/
def P11162786739629350943.Spec : Prop :=
  ∀ n, P11162786739629350943.a n = A325133 (n + 1)

end A325133

/-! ## A325133.P628685337773252701

`A064989(n+1)/A117364(n+1)`
-/

namespace A325133.P628685337773252701
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A064989 (n + 1) : ℚ) / (A117364 (n + 1) : ℚ)

end

end A325133.P628685337773252701

namespace A325133

/-- `A064989(n+1)/A117364(n+1)` -/
def P628685337773252701.Spec : Prop :=
  ∀ n, P628685337773252701.a n = (A325133 (n + 1) : ℚ)

end A325133

/-! ## A325133.P13089737583814975626

`A052126(A353749(n+1)/Δ[A002088(n)])`
-/

namespace A325133.P13089737583814975626
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002088 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052126 (SequenceMachineLib.roundAway ((A353749 (n + 1) : ℚ) / (f1 (n + 1) - f1 n : ℚ))).toNat

end

end A325133.P13089737583814975626

namespace A325133

/-- `A052126(A353749(n+1)/Δ[A002088(n)])` -/
def P13089737583814975626.Spec : Prop :=
  ∀ n, P13089737583814975626.a n = A325133 (n + 1)

end A325133

/-! ## A325133.P606426927509717124

`A064989(A003557(n+1)*A293810(n+1))`
-/

namespace A325133.P606426927509717124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064989 (A003557 (n + 1) * A293810 (n + 1)).toNat

end

end A325133.P606426927509717124

namespace A325133

/-- `A064989(A003557(n+1)*A293810(n+1))` -/
def P606426927509717124.Spec : Prop :=
  ∀ n, P606426927509717124.a n = A325133 (n + 1)

end A325133

/-! ## A325133.P12356217997682669401

`A064989(n+1)/A064989(A111089(n+1))`
-/

namespace A325133.P12356217997682669401
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A064989 (n + 1) : ℚ) / (A064989 (A111089 (n + 1)).toNat : ℚ)

end

end A325133.P12356217997682669401

namespace A325133

/-- `A064989(n+1)/A064989(A111089(n+1))` -/
def P12356217997682669401.Spec : Prop :=
  ∀ n, P12356217997682669401.a n = (A325133 (n + 1) : ℚ)

end A325133

/-! ## A325133.P3506300541162530365

`A064989(n+1)/A064989(A299766(n+1))`
-/

namespace A325133.P3506300541162530365
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A064989 (n + 1) : ℚ) / (A064989 (A299766 (n + 1)).toNat : ℚ)

end

end A325133.P3506300541162530365

namespace A325133

/-- `A064989(n+1)/A064989(A299766(n+1))` -/
def P3506300541162530365.Spec : Prop :=
  ∀ n, P3506300541162530365.a n = (A325133 (n + 1) : ℚ)

end A325133

/-! ## A325133.P12139317325875692169

`abs(A290099(n+1)/A290099(A006530(n+1)))`
-/

namespace A325133.P12139317325875692169
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(A290099 (n + 1) : ℚ) / (A290099 (A006530 (n + 1)).toNat : ℚ)|

end

end A325133.P12139317325875692169

namespace A325133

/-- `abs(A290099(n+1)/A290099(A006530(n+1)))` -/
def P12139317325875692169.Spec : Prop :=
  ∀ n, P12139317325875692169.a n = (A325133 (n + 1) : ℚ)

end A325133

/-! ## A325133.P10452238716111044203

`A052126(A353749(n+1)/(A109606(n+1)+1))`
-/

namespace A325133.P10452238716111044203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052126 (SequenceMachineLib.roundAway ((A353749 (n + 1) : ℚ) / (A109606 (n + 1) + 1 : ℚ))).toNat

end

end A325133.P10452238716111044203

namespace A325133

/-- `A052126(A353749(n+1)/(A109606(n+1)+1))` -/
def P10452238716111044203.Spec : Prop :=
  ∀ n, P10452238716111044203.a n = A325133 (n + 1)

end A325133

/-! ## A325133.P7577478622400919589

`A052126(A242424(n+1)/A105560(n+1))`
-/

namespace A325133.P7577478622400919589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052126 (SequenceMachineLib.roundAway ((A242424 (n + 1) : ℚ) / (A105560 (n + 1) : ℚ))).toNat

end

end A325133.P7577478622400919589

namespace A325133

/-- `A052126(A242424(n+1)/A105560(n+1))` -/
def P7577478622400919589.Spec : Prop :=
  ∀ n, P7577478622400919589.a n = A325133 (n + 1)

end A325133

/-! ## A325133.P16105044918883140455

`A064989(A073752(2*(n+1)))`
-/

namespace A325133.P16105044918883140455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064989 (A073752 (2 * (n + 1))).toNat

end

end A325133.P16105044918883140455

namespace A325133

/-- `A064989(A073752(2*(n+1)))` -/
def P16105044918883140455.Spec : Prop :=
  ∀ n, P16105044918883140455.a n = A325133 (n + 1)

end A325133

/-! ## A325133.P17574978478102012202

`A200746(A052126(2*(n+1)))/A052126(2*(n+1))`
-/

namespace A325133.P17574978478102012202
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A200746 (A052126 (2 * (n + 1))).toNat : ℚ) / (A052126 (2 * (n + 1)) : ℚ)

end

end A325133.P17574978478102012202

namespace A325133

/-- `A200746(A052126(2*(n+1)))/A052126(2*(n+1))` -/
def P17574978478102012202.Spec : Prop :=
  ∀ n, P17574978478102012202.a n = (A325133 (n + 1) : ℚ)

end A325133

/-! ## A325133.P3474596754238353961

`A064989(2*(n+1))²/A253560(A064989(2*(n+1)))`
-/

namespace A325133.P3474596754238353961
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A064989 (2 * (n + 1)) ^ 2 : ℚ) / (A253560 (A064989 (2 * (n + 1))).toNat : ℚ)

end

end A325133.P3474596754238353961

namespace A325133

/-- `A064989(2*(n+1))²/A253560(A064989(2*(n+1)))` -/
def P3474596754238353961.Spec : Prop :=
  ∀ n, P3474596754238353961.a n = (A325133 (n + 1) : ℚ)

end A325133

/-! ## A325133.P4752320359013331760

`A052126(A353749(n+1)/(A049633(n)-A049632(n)))`
-/

namespace A325133.P4752320359013331760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052126 (SequenceMachineLib.roundAway ((A353749 (n + 1) : ℚ) / (A049633 n - A049632 n : ℚ))).toNat

end

end A325133.P4752320359013331760

namespace A325133

/-- `A052126(A353749(n+1)/(A049633(n)-A049632(n)))` -/
def P4752320359013331760.Spec : Prop :=
  ∀ n, P4752320359013331760.a n = A325133 (n + 1)

end A325133

/-! ## A325133.P2599191967926770146

`A122111(A064989(A322865(A064989(n+1))))`
-/

namespace A325133.P2599191967926770146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122111 (A064989 (A322865 (A064989 (n + 1)).toNat).toNat).toNat

end

end A325133.P2599191967926770146

namespace A325133

/-- `A122111(A064989(A322865(A064989(n+1))))` -/
def P2599191967926770146.Spec : Prop :=
  ∀ n, P2599191967926770146.a n = A325133 (n + 1)

end A325133

/-! ## A325133.P5600400345153928867

`A052126(A122111(A052126(A322865(n+1))))`
-/

namespace A325133.P5600400345153928867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052126 (A122111 (A052126 (A322865 (n + 1)).toNat).toNat).toNat

end

end A325133.P5600400345153928867

namespace A325133

/-- `A052126(A122111(A052126(A322865(n+1))))` -/
def P5600400345153928867.Spec : Prop :=
  ∀ n, P5600400345153928867.a n = A325133 (n + 1)

end A325133

/-! ## A325133.P17670760623650381730

`A064989(A302024(A302776(A302023(n+1))))`
-/

namespace A325133.P17670760623650381730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064989 (A302024 (A302776 (A302023 (n + 1)).toNat).toNat).toNat

end

end A325133.P17670760623650381730

namespace A325133

/-- `A064989(A302024(A302776(A302023(n+1))))` -/
def P17670760623650381730.Spec : Prop :=
  ∀ n, P17670760623650381730.a n = A325133 (n + 1)

end A325133

/-! ## A325133.P15838851982941133135

`A064989((n+1)²)/A253560(A064989(n+1))`
-/

namespace A325133.P15838851982941133135
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A064989 ((n + 1) ^ 2) : ℚ) / (A253560 (A064989 (n + 1)).toNat : ℚ)

end

end A325133.P15838851982941133135

namespace A325133

/-- `A064989((n+1)²)/A253560(A064989(n+1))` -/
def P15838851982941133135.Spec : Prop :=
  ∀ n, P15838851982941133135.a n = (A325133 (n + 1) : ℚ)

end A325133

/-!
# A325134: a(1) = 1; a(n) = number of prime factors of n counted with multiplicity plus the largest prime index of n.

The programs for A325134, the canonical program `A325134.P8946370293622767949` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A325134 has offset 1).

The definition of A325134 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A252464, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A325134.P8946370293622767949

`A252464(n+1)+1`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A325134

/-- `A252464(n+1)+1` -/
def P8946370293622767949.Spec : Prop :=
  ∀ n, P8946370293622767949.a n = A325134 (n + 1)

theorem P8946370293622767949.correct : P8946370293622767949.Spec := by
  intro n
  simp only [A325134, Nat.add_sub_cancel]

end A325134

/-! ## A325134.P13228845867519850814

`1+A252464(n+1)`
-/

namespace A325134.P13228845867519850814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + A252464 (n + 1)

end

end A325134.P13228845867519850814

namespace A325134

/-- `1+A252464(n+1)` -/
def P13228845867519850814.Spec : Prop :=
  ∀ n, P13228845867519850814.a n = A325134 (n + 1)

theorem P13228845867519850814.correct : P13228845867519850814.Spec := by
  intro n
  simp only [A325134, Nat.add_sub_cancel, A325134.P13228845867519850814.a, A325134.P8946370293622767949.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A325134

/-! ## A325134.P7213638115729653573

`1+a(A252463(n+1)-1)` with `a(0)=1`
-/

namespace A325134.P7213638115729653573
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  1 + a (A252463 (n + 1) - 1).toNat

end

end A325134.P7213638115729653573

namespace A325134

/-- `1+a(A252463(n+1)-1)` -/
def P7213638115729653573.Spec : Prop :=
  ∀ n, (P7213638115729653573.a n : ℤ) = A325134 (n + 1)

end A325134

/-! ## A325134.P1213604559393559190

`a(A253553(n+1)-1)+1` with `a(0)=1`
-/

namespace A325134.P1213604559393559190
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (A253553 (n + 1) - 1).toNat + 1

end

end A325134.P1213604559393559190

namespace A325134

/-- `a(A253553(n+1)-1)+1` -/
def P1213604559393559190.Spec : Prop :=
  ∀ n, (P1213604559393559190.a n : ℤ) = A325134 (n + 1)

end A325134

/-! ## A325134.P7796898097625529668

`A056239(A325351(n+1))+1`
-/

namespace A325134.P7796898097625529668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (A325351 (n + 1)).toNat + 1

end

end A325134.P7796898097625529668

namespace A325134

/-- `A056239(A325351(n+1))+1` -/
def P7796898097625529668.Spec : Prop :=
  ∀ n, P7796898097625529668.a n = A325134 (n + 1)

end A325134

/-! ## A325134.P3770394983998507225

`A332894(A108548(n+1))+1`
-/

namespace A325134.P3770394983998507225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332894 (A108548 (n + 1)).toNat + 1

end

end A325134.P3770394983998507225

namespace A325134

/-- `A332894(A108548(n+1))+1` -/
def P3770394983998507225.Spec : Prop :=
  ∀ n, P3770394983998507225.a n = A325134 (n + 1)

end A325134

/-! ## A325134.P1903518759984510734

`A086436(n+1)+A061395(n+1)`
-/

namespace A325134.P1903518759984510734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086436 (n + 1) + A061395 (n + 1)

end

end A325134.P1903518759984510734

namespace A325134

/-- `A086436(n+1)+A061395(n+1)` -/
def P1903518759984510734.Spec : Prop :=
  ∀ n, P1903518759984510734.a n = A325134 (n + 1)

theorem P1903518759984510734.correct : P1903518759984510734.Spec := by
  intro n
  simp only [A325134, Nat.add_sub_cancel, A325134.P1903518759984510734.a, A325134.P8946370293622767949.a, A061395, A061395.P8431317036300486107.a, A086436, A086436.P11265761020980018024.f1, A086436.P11265761020980018024.a, A252464, A252464.P11274602121942962009.a, A029837, A029837.P1050578713049589.a, A087207, A087207.P12536008426233777954.a, A252736, A252736.P2865412191134230649.f1, A252736.P2865412191134230649.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A048675, A048675.P15792214674053257917.f1, A048675.P15792214674053257917.a, A297108, A297108.P15990807296291497671.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A325134

/-! ## A325134.P78810807989927713

`A252735(n+1)+A073093(n+1)`
-/

namespace A325134.P78810807989927713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252735 (n + 1) + A073093 (n + 1)

end

end A325134.P78810807989927713

namespace A325134

/-- `A252735(n+1)+A073093(n+1)` -/
def P78810807989927713.Spec : Prop :=
  ∀ n, P78810807989927713.a n = A325134 (n + 1)

end A325134

/-! ## A325134.P2265886742317689948

`A297167(n+1)+A083399(n+1)`
-/

namespace A325134.P2265886742317689948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297167 (n + 1) + A083399 (n + 1)

end

end A325134.P2265886742317689948

namespace A325134

/-- `A297167(n+1)+A083399(n+1)` -/
def P2265886742317689948.Spec : Prop :=
  ∀ n, P2265886742317689948.a n = A325134 (n + 1)

theorem P2265886742317689948.correct : P2265886742317689948.Spec := by
  intro n
  simp only [A325134, Nat.add_sub_cancel, A325134.P2265886742317689948.a, A325134.P8946370293622767949.a, A083399, A083399.P16148020281325742632.a, A252464, A252464.P11274602121942962009.a, A297167, A297167.P13113550866660970867.a, A000005, A000005.P16091521709108585461.a, A001221, A001221.P14816172234621668833.f1, A001221.P14816172234621668833.a, A055212, A055212.P14412881054625885538.a, A061395, A061395.P8431317036300486107.a, A252736, A252736.P2865412191134230649.f1, A252736.P2865412191134230649.a, A029837, A029837.P1050578713049589.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, A033273, A033273.P18420659424697249895.a, A087207, A087207.P12536008426233777954.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A048675, A048675.P15792214674053257917.f1, A048675.P15792214674053257917.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A325134

/-! ## A325134.P4804914031412430053

`A252736(n+1)+A159081(n+1)`
-/

namespace A325134.P4804914031412430053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252736 (n + 1) + A159081 (n + 1)

end

end A325134.P4804914031412430053

namespace A325134

/-- `A252736(n+1)+A159081(n+1)` -/
def P4804914031412430053.Spec : Prop :=
  ∀ n, P4804914031412430053.a n = A325134 (n + 1)

end A325134

/-! ## A325134.P5670473461304082434

`A001222(n+1)+A252735(n+1)+1`
-/

namespace A325134.P5670473461304082434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1) + (A252735 (n + 1) + 1)

end

end A325134.P5670473461304082434

namespace A325134

/-- `A001222(n+1)+A252735(n+1)+1` -/
def P5670473461304082434.Spec : Prop :=
  ∀ n, P5670473461304082434.a n = A325134 (n + 1)

end A325134

/-! ## A325134.P10617233811721677181

`A001221(n+1)+A297167(n+1)+1`
-/

namespace A325134.P10617233811721677181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1) + (A297167 (n + 1) + 1)

end

end A325134.P10617233811721677181

namespace A325134

/-- `A001221(n+1)+A297167(n+1)+1` -/
def P10617233811721677181.Spec : Prop :=
  ∀ n, P10617233811721677181.a n = A325134 (n + 1)

theorem P10617233811721677181.correct : P10617233811721677181.Spec := by
  intro n
  simp only [A325134, Nat.add_sub_cancel, A325134.P10617233811721677181.a, A325134.P8946370293622767949.a, A001221, A001221.P14816172234621668833.f1, A001221.P14816172234621668833.a, A252464, A252464.P11274602121942962009.a, A297167, A297167.P13113550866660970867.a, A061395, A061395.P8431317036300486107.a, A252736, A252736.P2865412191134230649.f1, A252736.P2865412191134230649.a, A029837, A029837.P1050578713049589.a, A087207, A087207.P12536008426233777954.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A048675, A048675.P15792214674053257917.f1, A048675.P15792214674053257917.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A325134

/-! ## A325134.P7307703404218459026

`A061395(n+1)+A252736(n+1)+1`
-/

namespace A325134.P7307703404218459026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (n + 1) + (A252736 (n + 1) + 1)

end

end A325134.P7307703404218459026

namespace A325134

/-- `A061395(n+1)+A252736(n+1)+1` -/
def P7307703404218459026.Spec : Prop :=
  ∀ n, P7307703404218459026.a n = A325134 (n + 1)

theorem P7307703404218459026.correct : P7307703404218459026.Spec := by
  intro n
  simp only [A325134, Nat.add_sub_cancel, A325134.P7307703404218459026.a, A325134.P8946370293622767949.a, A061395, A061395.P8431317036300486107.a, A252464, A252464.P11274602121942962009.a, A252736, A252736.P2865412191134230649.f1, A252736.P2865412191134230649.a, A029837, A029837.P1050578713049589.a, A087207, A087207.P12536008426233777954.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A048675, A048675.P15792214674053257917.f1, A048675.P15792214674053257917.a, A297108, A297108.P15990807296291497671.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A325134

/-! ## A325134.P17466798236532682469

`A297113(n+1)+A297155(n+1)+1`
-/

namespace A325134.P17466798236532682469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297113 (n + 1) + (A297155 (n + 1) + 1)

end

end A325134.P17466798236532682469

namespace A325134

/-- `A297113(n+1)+A297155(n+1)+1` -/
def P17466798236532682469.Spec : Prop :=
  ∀ n, P17466798236532682469.a n = A325134 (n + 1)

theorem P17466798236532682469.correct : P17466798236532682469.Spec := by
  intro n
  simp only [A325134, Nat.add_sub_cancel, A325134.P17466798236532682469.a, A325134.P8946370293622767949.a, A252464, A252464.P11274602121942962009.a, A297113, A297113.P441289280190658386.a, A297155, A297155.P1611206963555320167.a, A046660, A046660.P3614759855976580945.a, A061395, A061395.P8431317036300486107.a, A252736, A252736.P2865412191134230649.f1, A252736.P2865412191134230649.a, A001221, A001221.P14816172234621668833.f1, A001221.P14816172234621668833.a, A001222, A001222.P667907507343207792.f1, A001222.P667907507343207792.a, A029837, A029837.P1050578713049589.a, A087207, A087207.P12536008426233777954.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A048675, A048675.P15792214674053257917.f1, A048675.P15792214674053257917.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A325134

/-! ## A325134.P15367776673380930825

`A347380(n+1)+A347381(n+1)+1`
-/

namespace A325134.P15367776673380930825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347380 (n + 1) + (A347381 (n + 1) + 1)

end

end A325134.P15367776673380930825

namespace A325134

/-- `A347380(n+1)+A347381(n+1)+1` -/
def P15367776673380930825.Spec : Prop :=
  ∀ n, P15367776673380930825.a n = A325134 (n + 1)

end A325134

/-! ## A325134.P6069537805502848042

`A364569(n+1)+A364570(n+1)+1`
-/

namespace A325134.P6069537805502848042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364569 (n + 1) + (A364570 (n + 1) + 1)

end

end A325134.P6069537805502848042

namespace A325134

/-- `A364569(n+1)+A364570(n+1)+1` -/
def P6069537805502848042.Spec : Prop :=
  ∀ n, P6069537805502848042.a n = A325134 (n + 1)

end A325134

/-! ## A325134.P16311105293737821932

`A056239(n+1)+1-A325135(n+1)`
-/

namespace A325134.P16311105293737821932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (n + 1) + 1 - A325135 (n + 1)

end

end A325134.P16311105293737821932

namespace A325134

/-- `A056239(n+1)+1-A325135(n+1)` -/
def P16311105293737821932.Spec : Prop :=
  ∀ n, P16311105293737821932.a n = A325134 (n + 1)

end A325134

/-! ## A325134.P16258683969420353774

`A061395(2*(n+1))+A001222(n+1)`
-/

namespace A325134.P16258683969420353774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (2 * (n + 1)) + A001222 (n + 1)

end

end A325134.P16258683969420353774

namespace A325134

/-- `A061395(2*(n+1))+A001222(n+1)` -/
def P16258683969420353774.Spec : Prop :=
  ∀ n, P16258683969420353774.a n = A325134 (n + 1)

end A325134

/-! ## A325134.P9415467702271069750

`A364955(2*(n+1))+A364954(2*(n+1))`
-/

namespace A325134.P9415467702271069750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364955 (2 * (n + 1)) + A364954 (2 * (n + 1))

end

end A325134.P9415467702271069750

namespace A325134

/-- `A364955(2*(n+1))+A364954(2*(n+1))` -/
def P9415467702271069750.Spec : Prop :=
  ∀ n, P9415467702271069750.a n = A325134 (n + 1)

end A325134

/-! ## A325134.P8991058665956743988

`A048865(A006530(2*(n+1)))+A001222(n+1)+1`
-/

namespace A325134.P8991058665956743988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048865 (A006530 (2 * (n + 1))).toNat + (A001222 (n + 1) + 1)

end

end A325134.P8991058665956743988

namespace A325134

/-- `A048865(A006530(2*(n+1)))+A001222(n+1)+1` -/
def P8991058665956743988.Spec : Prop :=
  ∀ n, P8991058665956743988.a n = A325134 (n + 1)

end A325134

/-!
# A325135: Size of the integer partition with Heinz number n after its inner lining, or, equivalently, its largest hook, is removed.

The programs for A325135, the canonical program `A325135.P4087831456306891406` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A325135 has offset 1).

The definition of A325135 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A056239, A325133, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A325135.P4087831456306891406

`A056239(A325133(n+1))`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A325135

/-- `A056239(A325133(n+1))` -/
def P4087831456306891406.Spec : Prop :=
  ∀ n, P4087831456306891406.a n = A325135 (n + 1)

theorem P4087831456306891406.correct : P4087831456306891406.Spec := by
  intro n
  simp only [A325135, Nat.add_sub_cancel]

end A325135

/-! ## A325135.P723858522553438036

`A056239(n+1)-A252464(n+1)`
-/

namespace A325135.P723858522553438036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (n + 1) - A252464 (n + 1)

end

end A325135.P723858522553438036

namespace A325135

/-- `A056239(n+1)-A252464(n+1)` -/
def P723858522553438036.Spec : Prop :=
  ∀ n, P723858522553438036.a n = A325135 (n + 1)

end A325135

/-! ## A325135.P11363576082595339288

`A056239(n+1)-A325134(n+1)+1`
-/

namespace A325135.P11363576082595339288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (n + 1) - A325134 (n + 1) + 1

end

end A325135.P11363576082595339288

namespace A325135

/-- `A056239(n+1)-A325134(n+1)+1` -/
def P11363576082595339288.Spec : Prop :=
  ∀ n, P11363576082595339288.a n = A325135 (n + 1)

end A325135

/-! ## A325135.P12267155802251461292

`A318995(A052126(n+1))`
-/

namespace A325135.P12267155802251461292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318995 (A052126 (n + 1)).toNat

end

end A325135.P12267155802251461292

namespace A325135

/-- `A318995(A052126(n+1))` -/
def P12267155802251461292.Spec : Prop :=
  ∀ n, P12267155802251461292.a n = A325135 (n + 1)

end A325135

/-! ## A325135.P14951904523510454092

`A359358(2*A052126(n+1))`
-/

namespace A325135.P14951904523510454092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359358 (2 * A052126 (n + 1)).toNat

end

end A325135.P14951904523510454092

namespace A325135

/-- `A359358(2*A052126(n+1))` -/
def P14951904523510454092.Spec : Prop :=
  ∀ n, P14951904523510454092.a n = A325135 (n + 1)

end A325135

/-! ## A325135.P18435051276520944107

`A318995(n+1-A171462(n+1))`
-/

namespace A325135.P18435051276520944107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318995 ((n + 1 : ℤ) - A171462 (n + 1)).toNat

end

end A325135.P18435051276520944107

namespace A325135

/-- `A318995(n+1-A171462(n+1))` -/
def P18435051276520944107.Spec : Prop :=
  ∀ n, P18435051276520944107.a n = A325135 (n + 1)

theorem P18435051276520944107.correct : P18435051276520944107.Spec := by
  intro n
  simp only [A325135, Nat.add_sub_cancel, A325135.P18435051276520944107.a, A325135.P4087831456306891406.a, A056239, A056239.P11316688788989965672.a, A171462, A171462.P186066025836437895.a, A318995, A318995.P16362577245677106084.a, A325133, A325133.P17746794442660718236.a, A052126, A052126.P1944428405920482243.a, A064989, A064989.P13349672914146769936.a, A156552, A156552.P4268073137713085227.a, A161511, A161511.P16266007976091900386.a, A005941, A005941.P9595689460679922607.f1, A005941.P9595689460679922607.a, A006530, A006530.P13372528560459906635.a, A008578, A008578.P3639467937083264764.a, A048896, A048896.P6461019053085857547.a, A061395, A061395.P8431317036300486107.a, A029837, A029837.P1050578713049589.a, A048881, A048881.P16567064232951496228.a, A070229, A070229.P5792893597916963980.a, A087207, A087207.P12536008426233777954.a, A158611, A158611.P9275629407611603775.a, A364557, A364557.P16113127302810243144.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A325135

/-! ## A325135.P12580089152413115380

`A326846(n+1)-A243503(n+1)`
-/

namespace A325135.P12580089152413115380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326846 (n + 1) - A243503 (n + 1)

end

end A325135.P12580089152413115380

namespace A325135

/-- `A326846(n+1)-A243503(n+1)` -/
def P12580089152413115380.Spec : Prop :=
  ∀ n, P12580089152413115380.a n = A325135 (n + 1)

end A325135

/-! ## A325135.P14120789424715526612

`A318995(n+1)-A252735(n+1)`
-/

namespace A325135.P14120789424715526612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318995 (n + 1) - A252735 (n + 1)

end

end A325135.P14120789424715526612

namespace A325135

/-- `A318995(n+1)-A252735(n+1)` -/
def P14120789424715526612.Spec : Prop :=
  ∀ n, P14120789424715526612.a n = A325135 (n + 1)

end A325135

/-! ## A325135.P16991211054386491785

`A326844(n+1)-A278520(n+1)`
-/

namespace A325135.P16991211054386491785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326844 (n + 1) - A278520 (n + 1)

end

end A325135.P16991211054386491785

namespace A325135

/-- `A326844(n+1)-A278520(n+1)` -/
def P16991211054386491785.Spec : Prop :=
  ∀ n, P16991211054386491785.a n = A325135 (n + 1)

end A325135

/-! ## A325135.P1815075668158968978

`A325166(n+1)-A297155(n+1)`
-/

namespace A325135.P1815075668158968978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325166 (n + 1) - A297155 (n + 1)

end

end A325135.P1815075668158968978

namespace A325135

/-- `A325166(n+1)-A297155(n+1)` -/
def P1815075668158968978.Spec : Prop :=
  ∀ n, P1815075668158968978.a n = A325135 (n + 1)

end A325135

/-! ## A325135.P11063445009088156247

`A318995(n+1)+1-A061395(2*(n+1))`
-/

namespace A325135.P11063445009088156247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318995 (n + 1) + (1 - A061395 (2 * (n + 1)))

end

end A325135.P11063445009088156247

namespace A325135

/-- `A318995(n+1)+1-A061395(2*(n+1))` -/
def P11063445009088156247.Spec : Prop :=
  ∀ n, P11063445009088156247.a n = A325135 (n + 1)

end A325135

/-! ## A325135.P13063544860823192241

`A325166(2*(n+1))+1-A001221(2*(n+1))`
-/

namespace A325135.P13063544860823192241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325166 (2 * (n + 1)) + (1 - A001221 (2 * (n + 1)))

end

end A325135.P13063544860823192241

namespace A325135

/-- `A325166(2*(n+1))+1-A001221(2*(n+1))` -/
def P13063544860823192241.Spec : Prop :=
  ∀ n, P13063544860823192241.a n = A325135 (n + 1)

end A325135

/-! ## A325135.P883366952330035868

`A056239(A064989(n+1))-A252735(n+1)`
-/

namespace A325135.P883366952330035868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (A064989 (n + 1)).toNat - A252735 (n + 1)

end

end A325135.P883366952330035868

namespace A325135

/-- `A056239(A064989(n+1))-A252735(n+1)` -/
def P883366952330035868.Spec : Prop :=
  ∀ n, P883366952330035868.a n = A325135 (n + 1)

end A325135

/-! ## A325135.P1953772990453520464

`A056239(n+1)-A056239(A325351(n+1))`
-/

namespace A325135.P1953772990453520464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (n + 1) - A056239 (A325351 (n + 1)).toNat

end

end A325135.P1953772990453520464

namespace A325135

/-- `A056239(n+1)-A056239(A325351(n+1))` -/
def P1953772990453520464.Spec : Prop :=
  ∀ n, P1953772990453520464.a n = A325135 (n + 1)

end A325135

/-! ## A325135.P17939078013747368819

`A318995(n+1)-A061395(A064989(n+1))`
-/

namespace A325135.P17939078013747368819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318995 (n + 1) - A061395 (A064989 (n + 1)).toNat

end

end A325135.P17939078013747368819

namespace A325135

/-- `A318995(n+1)-A061395(A064989(n+1))` -/
def P17939078013747368819.Spec : Prop :=
  ∀ n, P17939078013747368819.a n = A325135 (n + 1)

end A325135

/-! ## A325135.P15233744723351795109

`A359358(2*(n+1))-A243055(2*(n+1))`
-/

namespace A325135.P15233744723351795109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359358 (2 * (n + 1)) - A243055 (2 * (n + 1))

end

end A325135.P15233744723351795109

namespace A325135

/-- `A359358(2*(n+1))-A243055(2*(n+1))` -/
def P15233744723351795109.Spec : Prop :=
  ∀ n, P15233744723351795109.a n = A325135 (n + 1)

end A325135

/-! ## A325135.P642049795554012487

`A323077(A122111((n+1)/A006530(n+1)))`
-/

namespace A325135.P642049795554012487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323077 (A122111 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A006530 (n + 1) : ℚ))).toNat).toNat

end

end A325135.P642049795554012487

namespace A325135

/-- `A323077(A122111((n+1)/A006530(n+1)))` -/
def P642049795554012487.Spec : Prop :=
  ∀ n, P642049795554012487.a n = A325135 (n + 1)

end A325135

/-!
# A325136: The product of primes <= 2n that are strongly prime to 2n, bisection of A181836.

The programs for A325136, there is no canonical definition to state claims against.
-/

/-! ## A325136.P16169969457677922855

`A034386(2*n)/∏{p}[A002939(n), #]`
-/

namespace A325136.P16169969457677922855
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002939 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A034386 (2 * n) : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n).natAbs, p : ℕ) : ℚ)

end

end A325136.P16169969457677922855

/-! ## A325136.P15256644091728393593

`A181836(2*n)`
-/

namespace A325136.P15256644091728393593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181836 (2 * n)

end

end A325136.P15256644091728393593

/-! ## A325136.P3026724033361386052

`or(1, A181836(gcd(n, C(2, n))+n))`
-/

namespace A325136.P3026724033361386052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A181836 (Nat.gcd n (Nat.choose 2 n) + n))

end

end A325136.P3026724033361386052

/-! ## A325136.P11704937679422508723

`or(1, A181836(A004277(n)))`
-/

namespace A325136.P11704937679422508723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A181836 (A004277 n).toNat)

end

end A325136.P11704937679422508723

/-! ## A325136.P12328585130482686506

`or(1, A181836(A005843(n)))`
-/

namespace A325136.P12328585130482686506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A181836 (A005843 n).toNat)

end

end A325136.P12328585130482686506

/-!
# A325138: a(n) = Sum_{k=0..n} Sum_{j=0..n-k} binomial(j+k, k)*|Stirling1(n, j+k)|*(k+1)^j.

The programs for A325138, there is no canonical definition to state claims against.
-/

/-! ## A325138.P11985166335545181580

`A087761(n)+n*a(n-1)` with `a(0)=1`
-/

namespace A325138.P11985166335545181580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A087761 n + (n : ℤ) * a (n - 1)

end

end A325138.P11985166335545181580

/-! ## A325138.P13990652797653199487

`A230374(A150110(n))`
-/

namespace A325138.P13990652797653199487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230374 (A150110 n).toNat

end

end A325138.P13990652797653199487

/-!
# A325139: Triangle T(n, k) = [t^n] Gamma(n + k + m + t)/Gamma(k + m + t) for m = 2 and 0 <= k <= n, read by rows.

The programs for A325139, there is no canonical definition to state claims against.
-/

/-! ## A325139.P10810125720322193776

`or(A090582(n+1), A213509(A174410(n)))`
-/

namespace A325139.P10810125720322193776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A090582 (n + 1)) (A213509 (A174410 n).toNat)

end

end A325139.P10810125720322193776

/-! ## A325139.P15398688499591234761

`A222159(n+1)+A213509(A111578(n+1))`
-/

namespace A325139.P15398688499591234761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222159 (n + 1) + A213509 (A111578 (n + 1)).toNat

end

end A325139.P15398688499591234761

/-!
# A325140: a(n) = Sum_{k=0..n} Sum_{j=0..n-k} binomial(j+k, k)*|Stirling1(n, j+k)|*(k+2)^j.

The programs for A325140, there is no canonical definition to state claims against.
-/

/-! ## A325140.P13055735887728340139

`A325138(n)+n*a(n-1)` with `a(0)=1`
-/

namespace A325140.P13055735887728340139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A325138 n + (n : ℤ) * a (n - 1)

end

end A325140.P13055735887728340139

/-!
# A325142: a(n) = k if (n - k, n + k) is the centered Goldbach partition of 2n if it exists and -1 otherwise.

The programs for A325142, there is no canonical definition to state claims against.
-/

/-! ## A325142.P2523692785712667546

`A028310(n)-A331634(2*A028310(n))`
-/

namespace A325142.P2523692785712667546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n - A331634 (2 * A028310 n).toNat

end

end A325142.P2523692785712667546

/-! ## A325142.P12241818133220926698

`A047160(A233583(n+1))-char[1-n²]`
-/

namespace A325142.P12241818133220926698
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (n ^ 2 : ℤ)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047160 (A233583 (n + 1)).toNat - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A325142.P12241818133220926698

/-! ## A325142.P6278202837946829144

`A028310(n)-A112823(A233583(n+1))`
-/

namespace A325142.P6278202837946829144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n - A112823 (A233583 (n + 1)).toNat

end

end A325142.P6278202837946829144

/-! ## A325142.P12030504214757332394

`A065033(2*n)-A112823(A233583(n+1))`
-/

namespace A325142.P12030504214757332394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (2 * n) - A112823 (A233583 (n + 1)).toNat

end

end A325142.P12030504214757332394

/-! ## A325142.P3748771538720905015

`A000007(n)-A112823(A233583(n+1))+n`
-/

namespace A325142.P3748771538720905015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n - A112823 (A233583 (n + 1)).toNat + (n : ℤ)

end

end A325142.P3748771538720905015

/-! ## A325142.P11333018393675271308

`gcd(n, A008486(n))-A112823(A233583(n+1))`
-/

namespace A325142.P11333018393675271308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd (n : ℤ) (A008486 n) : ℤ) - A112823 (A233583 (n + 1)).toNat

end

end A325142.P11333018393675271308

/-! ## A325142.P2640166379289574052

`A163811(A226602(n))+A047160(A233583(n+1))`
-/

namespace A325142.P2640166379289574052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163811 (A226602 n).toNat + A047160 (A233583 (n + 1)).toNat

end

end A325142.P2640166379289574052

/-! ## A325142.P10895388998005561175

`A233583(n+1)-A331634(A233583(n+1)+A028310(n))`
-/

namespace A325142.P10895388998005561175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (n + 1) - A331634 (A233583 (n + 1) + A028310 n).toNat

end

end A325142.P10895388998005561175

/-! ## A325142.P9780728855590107127

`A007318(A000124(n))-A112823(A233583(n+1))`
-/

namespace A325142.P9780728855590107127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A000124 n).toNat - A112823 (A233583 (n + 1)).toNat

end

end A325142.P9780728855590107127

/-!
# A325143: Primes represented by cyclotomic binary forms.

The programs for A325143, there is no canonical definition to state claims against.
-/

/-! ## A325143.P11849606086573807545

`p?[A296095(n+1)]`
-/

namespace A325143.P11849606086573807545
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296095 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A325143.P11849606086573807545

/-! ## A325143.P3507940229895502502

`filter[A296095(n+1), A010051(#)]`
-/

namespace A325143.P3507940229895502502
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296095 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A325143.P3507940229895502502

/-! ## A325143.P10950703036365139028

`filter[A296095(n+1), A080339(#)]`
-/

namespace A325143.P10950703036365139028
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296095 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A080339 (f1 j).toNat = 1) n)

end

end A325143.P10950703036365139028

/-! ## A325143.P12950955055578746309

`filter[A296095(n+1), A080545(#)]`
-/

namespace A325143.P12950955055578746309
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296095 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A080545 (f1 j).toNat = 1) n)

end

end A325143.P12950955055578746309

/-! ## A325143.P4029481494526001690

`record[A006530(2*A296095(n+1))]`
-/

namespace A325143.P4029481494526001690
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (2 * A296095 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A325143.P4029481494526001690

/-! ## A325143.P1847804549003073599

`record[A006530(lcm(2, A296095(n+1)))]`
-/

namespace A325143.P1847804549003073599
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (Int.lcm 2 (A296095 (n + 1)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A325143.P1847804549003073599

/-! ## A325143.P17771051705519853612

`record[A014963(A296095(-xor(n, -1)))]`
-/

namespace A325143.P17771051705519853612
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A296095 (-Int.xor (n : ℤ) (-1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A325143.P17771051705519853612

/-! ## A325143.P14008018518644900536

`∩[A000040(n+1), A296095(n+1)]`
-/

namespace A325143.P14008018518644900536
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296095 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A325143.P14008018518644900536

/-! ## A325143.P17607490706779288948

`∩[A006005(n+1), A296095(n+1)]`
-/

namespace A325143.P17607490706779288948
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296095 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A325143.P17607490706779288948

/-! ## A325143.P14648620726662900441

`∩[A008578(n+1), A296095(n+1)]`
-/

namespace A325143.P14648620726662900441
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296095 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A325143.P14648620726662900441

/-! ## A325143.P17216753983979151929

`∩[A065091(n+1), A296095(n+1)]`
-/

namespace A325143.P17216753983979151929
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296095 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A325143.P17216753983979151929

/-! ## A325143.P18091878462380608235

`∩[A116974(n+1), A296095(n+1)]`
-/

namespace A325143.P18091878462380608235
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116974 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296095 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A325143.P18091878462380608235

/-! ## A325143.P13471412512266384844

`∩[A158611(n+1), A296095(n+1)]`
-/

namespace A325143.P13471412512266384844
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158611 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296095 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A325143.P13471412512266384844

/-! ## A325143.P1662938184168632655

`∩[A182140(n+1), A296095(n+1)]`
-/

namespace A325143.P1662938184168632655
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182140 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296095 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A325143.P1662938184168632655

/-! ## A325143.P1181378311272195088

`∩[A182986(n+1), A296095(n+1)]`
-/

namespace A325143.P1181378311272195088
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296095 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A325143.P1181378311272195088

/-! ## A325143.P8556022627791997707

`∩[A240960(n+1), A296095(n+1)]`
-/

namespace A325143.P8556022627791997707
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240960 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296095 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A325143.P8556022627791997707

/-! ## A325143.P2202170043421495087

`∩[A296095(n+1), A326715(n+1)]`
-/

namespace A325143.P2202170043421495087
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296095 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326715 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A325143.P2202170043421495087

/-! ## A325143.P12237848813717021774

`record[A014963(A296095(A005378(n)))]`
-/

namespace A325143.P12237848813717021774
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A296095 (A005378 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A325143.P12237848813717021774

/-! ## A325143.P11944230654460378051

`record[A014963(A296095(A008619(n)))]`
-/

namespace A325143.P11944230654460378051
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A296095 (A008619 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A325143.P11944230654460378051

/-! ## A325143.P2706921423934955993

`record[A014963(A296095(A020915(n)))]`
-/

namespace A325143.P2706921423934955993
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A296095 (A020915 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A325143.P2706921423934955993

/-!
# A325144: a(n) = - Sum_{d | n} (-1)^d *a(d) if n != 1, a(1) = 1.

The programs for A325144, there is no canonical definition to state claims against.
-/

/-! ## A325144.P4627486614312373031

`A074206(A026741(n*A166486(n)))`
-/

namespace A325144.P4627486614312373031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074206 (A026741 ((n : ℤ) * A166486 n).toNat).toNat

end

end A325144.P4627486614312373031

/-! ## A325144.P15976147631233822319

`A074206(A215495(n)%A097362(n+1))`
-/

namespace A325144.P15976147631233822319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074206 (Int.tmod (A215495 n) (A097362 (n + 1))).toNat

end

end A325144.P15976147631233822319

/-! ## A325144.P2886846326786464265

`A074206(and(1, A026741(n))*A026741(n))`
-/

namespace A325144.P2886846326786464265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074206 (Int.land 1 (A026741 n) * A026741 n).toNat

end

end A325144.P2886846326786464265

/-! ## A325144.P13127762871938690736

`A074206(A026741(n*A000035(A026741(n))))`
-/

namespace A325144.P13127762871938690736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074206 (A026741 ((n : ℤ) * A000035 (A026741 n).toNat).toNat).toNat

end

end A325144.P13127762871938690736

/-! ## A325144.P17383848960765075878

`A074206(abs(Δ[A272212(n)]))`
-/

namespace A325144.P17383848960765075878
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272212 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074206 |f1 (n + 1) - f1 n|.toNat

end

end A325144.P17383848960765075878

/-! ## A325144.P4927937581542719182

`A074206(A319290(A026741(n)²))`
-/

namespace A325144.P4927937581542719182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074206 (A319290 (A026741 n ^ 2).toNat).toNat

end

end A325144.P4927937581542719182

/-!
# A325145: Primes not representable by cyclotomic binary forms.

The programs for A325145, there is no canonical definition to state claims against.
-/

/-! ## A325145.P7485388922963045794

`p?[(n+1)*(A299214(n+1)+1)]`
-/

namespace A325145.P7485388922963045794
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A299214 (n + 1) + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A325145.P7485388922963045794

/-! ## A325145.P14802539454309777260

`p?[12*n-1]%A325143(∑[21*n]+1)`
-/

namespace A325145.P14802539454309777260
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (12 * n : ℤ) - 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  21 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A325143 (∑ j ∈ Finset.range (n + 1), f2 j + 1))

end

end A325145.P14802539454309777260

/-! ## A325145.P13941534747087759071

`p?[A017653(n)]%A284691(n+1)`
-/

namespace A325145.P13941534747087759071
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017653 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A284691 (n + 1))

end

end A325145.P13941534747087759071

/-! ## A325145.P8014151548518357286

`p?[A180713(n)]%A284691(n+1)`
-/

namespace A325145.P8014151548518357286
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180713 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A284691 (n + 1))

end

end A325145.P8014151548518357286

/-! ## A325145.P6902678050489223852

`A068231(n+1)%A067202(n+1)`
-/

namespace A325145.P6902678050489223852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A068231 (n + 1)) (A067202 (n + 1))

end

end A325145.P6902678050489223852

/-!
# A325146: A(n, k) = Stirling2(n + k, k)*A053657(n)*k!/(n + k)!, array read by ascending antidiagonals for n >= 0 and k >= 0.

The programs for A325146, there is no canonical definition to state claims against.
-/

/-! ## A325146.P11665374784188744828

`A053615(lcm(A097710(n), A196182(n)))`
-/

namespace A325146.P11665374784188744828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053615 (Int.lcm (A097710 n) (A196182 n))

end

end A325146.P11665374784188744828

/-! ## A325146.P9864635393529902065

`A000196(A196182(n)^A162299(n))`
-/

namespace A325146.P9864635393529902065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (SequenceMachineLib.roundAway ((A196182 n : ℚ) ^ (A162299 n : ℤ))).toNat

end

end A325146.P9864635393529902065

/-! ## A325146.P1771772845634966276

`A342383(gcd(A113092(n), A307985(n+1)))`
-/

namespace A325146.P1771772845634966276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342383 (Int.gcd (A113092 n) (A307985 (n + 1)))

end

end A325146.P1771772845634966276

/-! ## A325146.P7077850193810296549

`A275327(A007318(A256893(n)))+A275327(n)`
-/

namespace A325146.P7077850193810296549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275327 (A007318 (A256893 n).toNat).toNat + A275327 n

end

end A325146.P7077850193810296549

/-! ## A325146.P3222028395508557443

`A275332(A275281(3*n+2))+A275327(n)`
-/

namespace A325146.P3222028395508557443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275332 (A275281 (3 * n + 2)).toNat + A275327 n

end

end A325146.P3222028395508557443

/-!
# A325147: Reduced Clausen numbers.

The programs for A325147, there is no canonical definition to state claims against.
-/

/-! ## A325147.P6866697206308268243

`A140219(A225498(n+1))`
-/

namespace A325147.P6866697206308268243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140219 (A225498 (n + 1)).toNat

end

end A325147.P6866697206308268243

/-! ## A325147.P4339965467311553691

`A100616(A225498(n+1))`
-/

namespace A325147.P4339965467311553691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100616 (A225498 (n + 1)).toNat

end

end A325147.P4339965467311553691

/-! ## A325147.P1224404043439761021

`A100616(∩[A014076(n+1), A080062(n+1)])`
-/

namespace A325147.P1224404043439761021
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014076 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080062 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100616 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A325147.P1224404043439761021

/-! ## A325147.P6139788856551259734

`A100616(∩[A067887(n+1), A080062(n+1)])`
-/

namespace A325147.P6139788856551259734
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067887 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080062 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100616 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A325147.P6139788856551259734

/-! ## A325147.P17670153748678010661

`A100616(∩[A071904(n+1), A087441(n+1)])`
-/

namespace A325147.P17670153748678010661
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071904 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087441 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100616 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A325147.P17670153748678010661

/-!
# A325148: Squares which can be expressed as the product of a number and its reversal.

The programs for A325148, there is no canonical definition to state claims against.
-/

/-! ## A325148.P1061696556177334569

`A325152(n+1)²`
-/

namespace A325148.P1061696556177334569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325152 (n + 1) ^ 2

end

end A325148.P1061696556177334569

/-! ## A325148.P7439320597591069321

`∪[A083406(n+1), A325149(n+1)]%A083406(n+1)`
-/

namespace A325148.P7439320597591069321
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083406 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325149 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n : ℤ) (A083406 (n + 1))

end

end A325148.P7439320597591069321

/-! ## A325148.P17681056646813072761

`∩[A305231(n+1), n²]`
-/

namespace A325148.P17681056646813072761
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305231 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A325148.P17681056646813072761

/-! ## A325148.P16981191863925066399

`∩[A000290(n), A305231(n+1)]`
-/

namespace A325148.P16981191863925066399
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305231 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A325148.P16981191863925066399

/-! ## A325148.P5427622361568338276

`∩[A188915(n), A305231(n+1)]`
-/

namespace A325148.P5427622361568338276
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188915 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305231 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A325148.P5427622361568338276

/-! ## A325148.P6454121928102140241

`∩[A181385(n), A305231(n+1)]`
-/

namespace A325148.P6454121928102140241
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181385 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305231 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A325148.P6454121928102140241

/-! ## A325148.P13388955181333134460

`∩[A089237(n+1), A305231(n+1)]`
-/

namespace A325148.P13388955181333134460
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089237 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305231 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A325148.P13388955181333134460

/-!
# A325149: Squares which can be expressed as the product of a number and its reverse in exactly one way.

The programs for A325149, there is no canonical definition to state claims against.
-/

/-! ## A325149.P14112538118004392825

`A325148(A180925(n+1))%A088726(n)`
-/

namespace A325149.P14112538118004392825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A325148 (A180925 (n + 1)).toNat) (A088726 n)

end

end A325149.P14112538118004392825

/-! ## A325149.P11053180448742055963

`A325148(A180925(n+1))+A000007(A003215(n))`
-/

namespace A325149.P11053180448742055963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325148 (A180925 (n + 1)).toNat + A000007 (A003215 n).toNat

end

end A325149.P11053180448742055963

/-! ## A325149.P2174339651129953987

`A057979(A129958(n))*A325148(A180925(n+1))`
-/

namespace A325149.P2174339651129953987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057979 (A129958 n).toNat * A325148 (A180925 (n + 1)).toNat

end

end A325149.P2174339651129953987

/-! ## A325149.P5915275450400799797

`A325148(A180925(n+1))+A079998(A275058(n+1))`
-/

namespace A325149.P5915275450400799797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325148 (A180925 (n + 1)).toNat + A079998 (A275058 (n + 1)).toNat

end

end A325149.P5915275450400799797

/-! ## A325149.P12654357736272603158

`A288132(4*A130665(n)+2)*A325148(A180925(n+1))`
-/

namespace A325149.P12654357736272603158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288132 (4 * A130665 n + 2).toNat * A325148 (A180925 (n + 1)).toNat

end

end A325149.P12654357736272603158

/-! ## A325149.P2784345464261527780

`A000189(A156615(n+1))*A325148(A180925(n+1))`
-/

namespace A325149.P2784345464261527780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000189 (A156615 (n + 1)).toNat * A325148 (A180925 (n + 1)).toNat

end

end A325149.P2784345464261527780

/-!
# A325150: Squares which can be expressed as the product of a number and its reversal in exactly two ways.

The programs for A325150, there is no canonical definition to state claims against.
-/

/-! ## A325150.P13193479060035856521

`A083406(A003511(n+1))^A061674(A061674(n))`
-/

namespace A325150.P13193479060035856521
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A083406 (A003511 (n + 1)).toNat : ℚ) ^ (A061674 (A061674 n).toNat : ℤ)

end

end A325150.P13193479060035856521

/-! ## A325150.P7805220164858879646

`A083406(A003511(n+1)^A061674(n))`
-/

namespace A325150.P7805220164858879646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083406 (SequenceMachineLib.roundAway ((A003511 (n + 1) : ℚ) ^ (A061674 n : ℤ))).toNat

end

end A325150.P7805220164858879646

/-! ## A325150.P10107573339308571564

`A083406(A003511(n+1)^A061906(n))`
-/

namespace A325150.P10107573339308571564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083406 (SequenceMachineLib.roundAway ((A003511 (n + 1) : ℚ) ^ (A061906 n : ℤ))).toNat

end

end A325150.P10107573339308571564

/-!
# A325151: Non-palindromes numbers not ending in 0 whose square is the product of a number and its reverse in only one way.

The programs for A325151, there is no canonical definition to state claims against.
-/

/-! ## A325151.P14569291898843545556

`filter[A207373(n+1), A068434(#)]`
-/

namespace A325151.P14569291898843545556
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207373 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A068434 (f1 j).toNat = 1) n)

end

end A325151.P14569291898843545556

/-!
# A325152: Numbers whose squares can be expressed as the product of a number and its reversal.

The programs for A325152, there is no canonical definition to state claims against.
-/

/-! ## A325152.P12090107625962031536

`sqrt(A325148(n+1))`
-/

namespace A325152.P12090107625962031536
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A325148 (n + 1) : ℝ)

end

end A325152.P12090107625962031536

/-! ## A325152.P17910410293572141769

`sqrt(∩[A305231(n+1), n²])`
-/

namespace A325152.P17910410293572141769
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305231 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n : ℝ)

end

end A325152.P17910410293572141769

/-!
# A325153: A column of triangle A322220; a(n) = A322220(n,1) for n >= 1.

The programs for A325153, the canonical program `A325153.P12947968302438654322` is in `Seq.B000.C043`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A325153 has offset 1).

The definition of A325153 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A325153.P6012568224766146941

`ogf((1-6x-3x^2)/(1-11x+19x^2-9x^3))`
-/

namespace A325153.P6012568224766146941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -6, -3] [1, -11, 19, -9] n

end

end A325153.P6012568224766146941

namespace A325153

/-- `ogf((1-6x-3x^2)/(1-11x+19x^2-9x^3))` -/
def P6012568224766146941.Spec : Prop :=
  ∀ n, P6012568224766146941.a n = A325153 (n + 1)

end A325153

/-! ## A325153.P12947968302438654322

`(9^(n+1)-9)/24+n+1`

The canonical program, it is in `Seq.B000.C043`.
-/

namespace A325153

/-- `(9^(n+1)-9)/24+n+1` -/
def P12947968302438654322.Spec : Prop :=
  ∀ n, P12947968302438654322.a n = (A325153 (n + 1) : ℚ)

end A325153

/-! ## A325153.P17441089839393305800

`∑[∑[ogf((-1+6x+3x^2)/(-1+9x))]]`
-/

namespace A325153.P17441089839393305800
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -6, -3] [1, -9] n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A325153.P17441089839393305800

namespace A325153

/-- `∑[∑[ogf((-1+6x+3x^2)/(-1+9x))]]` -/
def P17441089839393305800.Spec : Prop :=
  ∀ n, P17441089839393305800.a n = A325153 (n + 1)

end A325153

/-! ## A325153.P142544313139203653

`∑[9*a(n-1)-8]` with `a(0)=1, a(1)=4`
-/

namespace A325153.P142544313139203653
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 4] fun n f1 =>
  9 * f1 (n - 1) - 8

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A325153.P142544313139203653

namespace A325153

/-- `∑[9*a(n-1)-8]` -/
def P142544313139203653.Spec : Prop :=
  ∀ n, P142544313139203653.a n = A325153 (n + 1)

end A325153

/-! ## A325153.P809386631138323236

`record[n-3*a(n-2)]` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A325153.P809386631138323236
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1] fun n f1 =>
  (n : ℤ) - 3 * f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A325153.P809386631138323236

namespace A325153

/-- `record[n-3*a(n-2)]` -/
def P809386631138323236.Spec : Prop :=
  ∀ n, P809386631138323236.a n = A325153 (n + 1)

end A325153

/-! ## A325153.P6224043459506636950

`∑[A094388(2*n)]`
-/

namespace A325153.P6224043459506636950
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094388 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A325153.P6224043459506636950

namespace A325153

/-- `∑[A094388(2*n)]` -/
def P6224043459506636950.Spec : Prop :=
  ∀ n, P6224043459506636950.a n = A325153 (n + 1)

end A325153

/-! ## A325153.P7796136274407047704

`∑[∑[A118264(2*n)]]`
-/

namespace A325153.P7796136274407047704
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118264 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A325153.P7796136274407047704

namespace A325153

/-- `∑[∑[A118264(2*n)]]` -/
def P7796136274407047704.Spec : Prop :=
  ∀ n, P7796136274407047704.a n = A325153 (n + 1)

end A325153

/-! ## A325153.P18295857674014723368

`or(1, 3*A002452(n)+n)`
-/

namespace A325153.P18295857674014723368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (3 * A002452 n + (n : ℤ))

end

end A325153.P18295857674014723368

namespace A325153

/-- `or(1, 3*A002452(n)+n)` -/
def P18295857674014723368.Spec : Prop :=
  ∀ n, P18295857674014723368.a n = A325153 (n + 1)

end A325153

/-!
# A325154: G.f. A(x) satisfies: 1 = Sum_{n>=0} ((1+x)^(2*n-1) - A(x))^n.

The programs for A325154, there is no canonical definition to state claims against.
-/

/-! ## A325154.P16571497390656799604

`A140106(A243942(n))+1`
-/

namespace A325154.P16571497390656799604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140106 (A243942 n).toNat + 1

end

end A325154.P16571497390656799604

/-!
# A325155: G.f. A(x) satisfies: x = Sum_{n>=1} x^n * (1+x)^(n^2/2) / A(x)^(n/2).

The programs for A325155, there is no canonical definition to state claims against.
-/

/-! ## A325155.P1101489239852074114

`A001650(∑[∑[A303871(n)]])`
-/

namespace A325155.P1101489239852074114
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303871 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001650 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A325155.P1101489239852074114

/-! ## A325155.P9091786119433572441

`record[gcd(A046454(n), A072150(n))]`
-/

namespace A325155.P9091786119433572441
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A046454 n) (A072150 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A325155.P9091786119433572441

/-! ## A325155.P15614621852583688163

`A001650(A024420(n)+2*n)`
-/

namespace A325155.P15614621852583688163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001650 (A024420 n + (2 * n : ℤ)).toNat

end

end A325155.P15614621852583688163

/-! ## A325155.P17558640103348876789

`A179874(A238425(n))+2*n`
-/

namespace A325155.P17558640103348876789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179874 (A238425 n).toNat + (2 * n : ℤ)

end

end A325155.P17558640103348876789

/-!
# A325156: G.f.: A(x) = Sum_{n>=0} x^n * (1 + (-1)^n * sqrt(A(x)))^n / (1 - (-1)^n * x*sqrt(A(x)))^(n+1).

The programs for A325156, there is no canonical definition to state claims against.
-/

/-! ## A325156.P2020829522905984164

`A117451(A117421(n)-A000124(n))`
-/

namespace A325156.P2020829522905984164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117451 (A117421 n - A000124 n).toNat

end

end A325156.P2020829522905984164

/-! ## A325156.P289743783683563964

`or(A001076(n), A051119(A059032(n)))`
-/

namespace A325156.P289743783683563964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A001076 n) (A051119 (A059032 n).toNat)

end

end A325156.P289743783683563964

/-! ## A325156.P262259258559473054

`or(A001076(n), A178334(A032164(n)))`
-/

namespace A325156.P262259258559473054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A001076 n) (A178334 (A032164 n).toNat)

end

end A325156.P262259258559473054

/-!
# A325158: Numerators of convergents to Pi using best rational approximation whose denominator is between consecutive powers of 2: [2^n, 2^(n+1)-1], where n = 0, 1, 2, ...

The programs for A325158, there is no canonical definition to state claims against.
-/

/-! ## A325158.P8887527502020354170

`round(π*A325159(n))`
-/

namespace A325158.P8887527502020354170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.pi * (A325159 n : ℝ))

end

end A325158.P8887527502020354170

/-! ## A325158.P7778692341733709177

`floor(acot(A040008(n))+π*A325159(n))`
-/

namespace A325158.P7778692341733709177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊SequenceMachineLib.acot (A040008 n : ℝ) + Real.pi * (A325159 n : ℝ)⌋

end

end A325158.P7778692341733709177

/-! ## A325158.P10658447195586367637

`floor(acot(A301684(n))+π*A325159(n))`
-/

namespace A325158.P10658447195586367637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊SequenceMachineLib.acot (A301684 n : ℝ) + Real.pi * (A325159 n : ℝ)⌋

end

end A325158.P10658447195586367637

/-! ## A325158.P14303976012182776837

`floor(acot(A006005(n+1))+π*A325159(n))`
-/

namespace A325158.P14303976012182776837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊SequenceMachineLib.acot (A006005 (n + 1) : ℝ) + Real.pi * (A325159 n : ℝ)⌋

end

end A325158.P14303976012182776837

/-! ## A325158.P17216608631113476873

`floor(acot(A047356(n+1))+π*A325159(n))`
-/

namespace A325158.P17216608631113476873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊SequenceMachineLib.acot (A047356 (n + 1) : ℝ) + Real.pi * (A325159 n : ℝ)⌋

end

end A325158.P17216608631113476873

/-! ## A325158.P3631960796758886961

`floor(acot(A087909(n+1))+π*A325159(n))`
-/

namespace A325158.P3631960796758886961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊SequenceMachineLib.acot (A087909 (n + 1) : ℝ) + Real.pi * (A325159 n : ℝ)⌋

end

end A325158.P3631960796758886961

/-!
# A325159: Denominators of convergents to Pi using best rational approximation whose denominator is between consecutive powers of 2: [2^n, 2^(n+1)-1], where n = 0, 1, 2, ...

The programs for A325159, there is no canonical definition to state claims against.
-/

/-! ## A325159.P16761927128777837356

`round(A325158(n)/π)`
-/

namespace A325159.P16761927128777837356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A325158 n : ℝ) / Real.pi)

end

end A325159.P16761927128777837356

/-! ## A325159.P4952192728308200151

`A062299(A325158(n))`
-/

namespace A325159.P4952192728308200151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062299 (A325158 n).toNat

end

end A325159.P4952192728308200151

/-! ## A325159.P6235107233263116647

`A032615(A325158(n)+1)`
-/

namespace A325159.P6235107233263116647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032615 (A325158 n + 1).toNat

end

end A325159.P6235107233263116647

/-! ## A325159.P6056324403732713479

`A296357(A325158(n)-1)`
-/

namespace A325159.P6056324403732713479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296357 (A325158 n - 1).toNat

end

end A325159.P6056324403732713479

/-!
# A325160: Products of distinct, non-consecutive primes. Squarefree numbers not divisible by any two consecutive primes.

The programs for A325160, the canonical program `A325160.P4590925138915238216` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A325160 has offset 1).

The definition of A325160 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6822 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A325160.P12883454015877161632

`record[A348990(A007913(n+1))]`
-/

namespace A325160.P12883454015877161632
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348990 (A007913 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A325160.P12883454015877161632

namespace A325160

/-- `record[A348990(A007913(n+1))]` -/
def P12883454015877161632.Spec : Prop :=
  ∀ n, P12883454015877161632.a n = A325160 (n + 1)

end A325160

/-! ## A325160.P15667783618433578883

`filter[A005117(n+1), A356173(#)]`
-/

namespace A325160.P15667783618433578883
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A356173 (f1 j).toNat = 1) n)

end

end A325160.P15667783618433578883

namespace A325160

/-- `filter[A005117(n+1), A356173(#)]` -/
def P15667783618433578883.Spec : Prop :=
  ∀ n, P15667783618433578883.a n = A325160 (n + 1)

end A325160

/-! ## A325160.P3064671250502536311

`filter[A348499(n+1), A356173(#)]`
-/

namespace A325160.P3064671250502536311
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348499 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A356173 (f1 j).toNat = 1) n)

end

end A325160.P3064671250502536311

namespace A325160

/-- `filter[A348499(n+1), A356173(#)]` -/
def P3064671250502536311.Spec : Prop :=
  ∀ n, P3064671250502536311.a n = A325160 (n + 1)

end A325160

/-! ## A325160.P2342466677283055604

`filter[A348506(n+1), A356173(#)]`
-/

namespace A325160.P2342466677283055604
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348506 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A356173 (f1 j).toNat = 1) n)

end

end A325160.P2342466677283055604

namespace A325160

/-- `filter[A348506(n+1), A356173(#)]` -/
def P2342466677283055604.Spec : Prop :=
  ∀ n, P2342466677283055604.a n = A325160 (n + 1)

end A325160

/-! ## A325160.P4387913025916179136

`∪[A000040(n+1), A325161(n+1)]`
-/

namespace A325160.P4387913025916179136
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325161 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A325160.P4387913025916179136

namespace A325160

/-- `∪[A000040(n+1), A325161(n+1)]` -/
def P4387913025916179136.Spec : Prop :=
  ∀ n, (P4387913025916179136.a n : ℤ) = A325160 (n + 1)

end A325160

/-! ## A325160.P14575367570701590892

`∪[A008578(n+1), A325161(n+1)]`
-/

namespace A325160.P14575367570701590892
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325161 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A325160.P14575367570701590892

namespace A325160

/-- `∪[A008578(n+1), A325161(n+1)]` -/
def P14575367570701590892.Spec : Prop :=
  ∀ n, (P14575367570701590892.a n : ℤ) = A325160 (n + 1)

end A325160

/-! ## A325160.P4590925138915238216

`filter[A319630(n+1), A008966(#)]`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A325160

/-- `filter[A319630(n+1), A008966(#)]` -/
def P4590925138915238216.Spec : Prop :=
  ∀ n, P4590925138915238216.a n = A325160 (n + 1)

theorem P4590925138915238216.correct : P4590925138915238216.Spec := by
  intro n
  simp only [A325160, Nat.add_sub_cancel]

end A325160

/-! ## A325160.P780003778370152343

`filter[A319630(n+1), A353559(#)]`
-/

namespace A325160.P780003778370152343
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319630 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353559 (f1 j).toNat = 1) n)

end

end A325160.P780003778370152343

namespace A325160

/-- `filter[A319630(n+1), A353559(#)]` -/
def P780003778370152343.Spec : Prop :=
  ∀ n, P780003778370152343.a n = A325160 (n + 1)

end A325160

/-! ## A325160.P5631740974676418733

`∩[A005117(n+1), A319630(n+1)]`
-/

namespace A325160.P5631740974676418733
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319630 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A325160.P5631740974676418733

namespace A325160

/-- `∩[A005117(n+1), A319630(n+1)]` -/
def P5631740974676418733.Spec : Prop :=
  ∀ n, (P5631740974676418733.a n : ℤ) = A325160 (n + 1)

end A325160

/-! ## A325160.P17895137211880090257

`∩[A319630(n+1), A348499(n+1)]`
-/

namespace A325160.P17895137211880090257
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319630 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348499 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A325160.P17895137211880090257

namespace A325160

/-- `∩[A319630(n+1), A348499(n+1)]` -/
def P17895137211880090257.Spec : Prop :=
  ∀ n, (P17895137211880090257.a n : ℤ) = A325160 (n + 1)

end A325160

/-! ## A325160.P6909844837437709015

`∩[A319630(n+1), A348506(n+1)]`
-/

namespace A325160.P6909844837437709015
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319630 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348506 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A325160.P6909844837437709015

namespace A325160

/-- `∩[A319630(n+1), A348506(n+1)]` -/
def P6909844837437709015.Spec : Prop :=
  ∀ n, (P6909844837437709015.a n : ℤ) = A325160 (n + 1)

end A325160

/-! ## A325160.P14435204829840682430

`record[abs(A354350(n+1)-(n+1))]`
-/

namespace A325160.P14435204829840682430
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A354350 (n + 1) - (n + 1 : ℤ)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A325160.P14435204829840682430

namespace A325160

/-- `record[abs(A354350(n+1)-(n+1))]` -/
def P14435204829840682430.Spec : Prop :=
  ∀ n, P14435204829840682430.a n = A325160 (n + 1)

end A325160

/-! ## A325160.P10856157611279532989

`record[abs(A354365(n+1))]`
-/

namespace A325160.P10856157611279532989
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A354365 (n + 1)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A325160.P10856157611279532989

namespace A325160

/-- `record[abs(A354365(n+1))]` -/
def P10856157611279532989.Spec : Prop :=
  ∀ n, P10856157611279532989.a n = A325160 (n + 1)

end A325160

/-! ## A325160.P8706654435369510431

`record[A007913(A319626(n+1))]`
-/

namespace A325160.P8706654435369510431
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (A319626 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A325160.P8706654435369510431

namespace A325160

/-- `record[A007913(A319626(n+1))]` -/
def P8706654435369510431.Spec : Prop :=
  ∀ n, P8706654435369510431.a n = A325160 (n + 1)

end A325160

/-! ## A325160.P3595191778698662754

`record[A319626(A007947(n+1))]`
-/

namespace A325160.P3595191778698662754
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319626 (A007947 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A325160.P3595191778698662754

namespace A325160

/-- `record[A319626(A007947(n+1))]` -/
def P3595191778698662754.Spec : Prop :=
  ∀ n, P3595191778698662754.a n = A325160 (n + 1)

end A325160

/-! ## A325160.P4737396662891218265

`record[A319626(A015053(n+1))]`
-/

namespace A325160.P4737396662891218265
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319626 (A015053 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A325160.P4737396662891218265

namespace A325160

/-- `record[A319626(A015053(n+1))]` -/
def P4737396662891218265.Spec : Prop :=
  ∀ n, P4737396662891218265.a n = A325160 (n + 1)

end A325160

/-! ## A325160.P16760542666592149215

`record[A319626(A053166(n+1))]`
-/

namespace A325160.P16760542666592149215
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319626 (A053166 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A325160.P16760542666592149215

namespace A325160

/-- `record[A319626(A053166(n+1))]` -/
def P16760542666592149215.Spec : Prop :=
  ∀ n, P16760542666592149215.a n = A325160 (n + 1)

end A325160

/-! ## A325160.P5482801854878228150

`filter[A088610(2*n+1), A356173(#)]`
-/

namespace A325160.P5482801854878228150
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088610 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A356173 (f1 j).toNat = 1) n)

end

end A325160.P5482801854878228150

namespace A325160

/-- `filter[A088610(2*n+1), A356173(#)]` -/
def P5482801854878228150.Spec : Prop :=
  ∀ n, P5482801854878228150.a n = A325160 (n + 1)

end A325160

/-! ## A325160.P3196399236731017472

`filter[A225354(n+1), A356173(#)]`
-/

namespace A325160.P3196399236731017472
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225354 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A356173 (f1 j).toNat = 1) n)

end

end A325160.P3196399236731017472

namespace A325160

/-- `filter[A225354(n+1), A356173(#)]` -/
def P3196399236731017472.Spec : Prop :=
  ∀ n, P3196399236731017472.a n = A325160 (n + 1)

end A325160

/-! ## A325160.P3110061999124538564

`∩[A225354(n+1), A319630(n+1)]`
-/

namespace A325160.P3110061999124538564
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225354 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319630 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A325160.P3110061999124538564

namespace A325160

/-- `∩[A225354(n+1), A319630(n+1)]` -/
def P3110061999124538564.Spec : Prop :=
  ∀ n, (P3110061999124538564.a n : ℤ) = A325160 (n + 1)

end A325160

/-!
# A325161: Nonprime squarefree numbers not divisible by any two consecutive primes.

The programs for A325161, the canonical program `A325161.P4005082633071071506` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A325161 has offset 1).

The definition of A325161 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7797 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A325161.P16291911394162626173

`filter[A000469(n+1), A356173(#)]`
-/

namespace A325161.P16291911394162626173
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000469 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A356173 (f1 j).toNat = 1) n)

end

end A325161.P16291911394162626173

namespace A325161

/-- `filter[A000469(n+1), A356173(#)]` -/
def P16291911394162626173.Spec : Prop :=
  ∀ n, P16291911394162626173.a n = A325161 (n + 1)

end A325161

/-! ## A325161.P4005082633071071506

`filter[A325160(n+1), A005171(#)]`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A325161

/-- `filter[A325160(n+1), A005171(#)]` -/
def P4005082633071071506.Spec : Prop :=
  ∀ n, P4005082633071071506.a n = A325161 (n + 1)

theorem P4005082633071071506.correct : P4005082633071071506.Spec := by
  intro n
  simp only [A325161, Nat.add_sub_cancel]

end A325161

/-! ## A325161.P10789484767259218180

`filter[A325160(n+1), A292438(#)]`
-/

namespace A325161.P10789484767259218180
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325160 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A292438 (f1 j).toNat = 1) n)

end

end A325161.P10789484767259218180

namespace A325161

/-- `filter[A325160(n+1), A292438(#)]` -/
def P10789484767259218180.Spec : Prop :=
  ∀ n, P10789484767259218180.a n = A325161 (n + 1)

end A325161

/-! ## A325161.P10468844691239834312

`filter[A325160(n+1), A354819(#)]`
-/

namespace A325161.P10468844691239834312
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325160 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354819 (f1 j).toNat = 1) n)

end

end A325161.P10468844691239834312

namespace A325161

/-- `filter[A325160(n+1), A354819(#)]` -/
def P10468844691239834312.Spec : Prop :=
  ∀ n, P10468844691239834312.a n = A325161 (n + 1)

end A325161

/-! ## A325161.P747736573223966446

`∩[A000469(n+1), A325160(n+1)]`
-/

namespace A325161.P747736573223966446
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000469 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325160 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A325161.P747736573223966446

namespace A325161

/-- `∩[A000469(n+1), A325160(n+1)]` -/
def P747736573223966446.Spec : Prop :=
  ∀ n, (P747736573223966446.a n : ℤ) = A325161 (n + 1)

end A325161

/-! ## A325161.P8550030301610427901

`∩[A018252(n+1), A325160(n+1)]`
-/

namespace A325161.P8550030301610427901
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325160 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A325161.P8550030301610427901

namespace A325161

/-- `∩[A018252(n+1), A325160(n+1)]` -/
def P8550030301610427901.Spec : Prop :=
  ∀ n, (P8550030301610427901.a n : ℤ) = A325161 (n + 1)

end A325161

/-! ## A325161.P774107799462069505

`∩[A141468(n+1), A325160(n+1)]`
-/

namespace A325161.P774107799462069505
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141468 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325160 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A325161.P774107799462069505

namespace A325161

/-- `∩[A141468(n+1), A325160(n+1)]` -/
def P774107799462069505.Spec : Prop :=
  ∀ n, (P774107799462069505.a n : ℤ) = A325161 (n + 1)

end A325161

/-! ## A325161.P18090877968764371937

`∩[A067582(n+1), A325160(n+1)]`
-/

namespace A325161.P18090877968764371937
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067582 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325160 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A325161.P18090877968764371937

namespace A325161

/-- `∩[A067582(n+1), A325160(n+1)]` -/
def P18090877968764371937.Spec : Prop :=
  ∀ n, (P18090877968764371937.a n : ℤ) = A325161 (n + 1)

end A325161

/-! ## A325161.P413803380974678319

`∩[A069169(n+1), A325160(n+1)]`
-/

namespace A325161.P413803380974678319
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069169 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325160 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A325161.P413803380974678319

namespace A325161

/-- `∩[A069169(n+1), A325160(n+1)]` -/
def P413803380974678319.Spec : Prop :=
  ∀ n, (P413803380974678319.a n : ℤ) = A325161 (n + 1)

end A325161

/-! ## A325161.P17252043612253332482

`∩[A325160(n+1), A377880(n+1)]`
-/

namespace A325161.P17252043612253332482
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325160 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377880 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A325161.P17252043612253332482

namespace A325161

/-- `∩[A325160(n+1), A377880(n+1)]` -/
def P17252043612253332482.Spec : Prop :=
  ∀ n, (P17252043612253332482.a n : ℤ) = A325161 (n + 1)

end A325161

/-! ## A325161.P3460214005184231987

`∩[A240938(n+1), A325160(n+1)]`
-/

namespace A325161.P3460214005184231987
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240938 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325160 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A325161.P3460214005184231987

namespace A325161

/-- `∩[A240938(n+1), A325160(n+1)]` -/
def P3460214005184231987.Spec : Prop :=
  ∀ n, (P3460214005184231987.a n : ℤ) = A325161 (n + 1)

end A325161

/-! ## A325161.P3693566032240045164

`filter[A319630(n+1), A354819(#)]`
-/

namespace A325161.P3693566032240045164
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319630 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354819 (f1 j).toNat = 1) n)

end

end A325161.P3693566032240045164

namespace A325161

/-- `filter[A319630(n+1), A354819(#)]` -/
def P3693566032240045164.Spec : Prop :=
  ∀ n, P3693566032240045164.a n = A325161 (n + 1)

end A325161

/-! ## A325161.P6884380828806746797

`∩[A000469(n+1), A319630(n+1)]`
-/

namespace A325161.P6884380828806746797
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000469 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319630 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A325161.P6884380828806746797

namespace A325161

/-- `∩[A000469(n+1), A319630(n+1)]` -/
def P6884380828806746797.Spec : Prop :=
  ∀ n, (P6884380828806746797.a n : ℤ) = A325161 (n + 1)

end A325161

/-! ## A325161.P15503439878184822566

`∩[A048943(n+1), A325160(n+1)]`
-/

namespace A325161.P15503439878184822566
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048943 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325160 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A325161.P15503439878184822566

namespace A325161

/-- `∩[A048943(n+1), A325160(n+1)]` -/
def P15503439878184822566.Spec : Prop :=
  ∀ n, (P15503439878184822566.a n : ℤ) = A325161 (n + 1)

end A325161

/-! ## A325161.P481978558752592040

`∩[A233182(n+1), A325160(n+1)]`
-/

namespace A325161.P481978558752592040
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233182 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325160 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A325161.P481978558752592040

namespace A325161

/-- `∩[A233182(n+1), A325160(n+1)]` -/
def P481978558752592040.Spec : Prop :=
  ∀ n, (P481978558752592040.a n : ℤ) = A325161 (n + 1)

end A325161

/-! ## A325161.P11211269010557508114

`∩[A231879(n+1), A325160(n+1)]`
-/

namespace A325161.P11211269010557508114
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231879 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325160 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A325161.P11211269010557508114

namespace A325161

/-- `∩[A231879(n+1), A325160(n+1)]` -/
def P11211269010557508114.Spec : Prop :=
  ∀ n, (P11211269010557508114.a n : ℤ) = A325161 (n + 1)

end A325161

/-! ## A325161.P6951178943174551060

`∩[A325160(n+1), A359870(n+1)]`
-/

namespace A325161.P6951178943174551060
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325160 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359870 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A325161.P6951178943174551060

namespace A325161

/-- `∩[A325160(n+1), A359870(n+1)]` -/
def P6951178943174551060.Spec : Prop :=
  ∀ n, (P6951178943174551060.a n : ℤ) = A325161 (n + 1)

end A325161

/-! ## A325161.P2569651781533634693

`∩[A164276(n+1), A325160(n+1)]`
-/

namespace A325161.P2569651781533634693
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164276 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325160 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A325161.P2569651781533634693

namespace A325161

/-- `∩[A164276(n+1), A325160(n+1)]` -/
def P2569651781533634693.Spec : Prop :=
  ∀ n, (P2569651781533634693.a n : ℤ) = A325161 (n + 1)

end A325161

/-! ## A325161.P3015449488910461767

`∩[A325160(n+1), A361102(n+1)]`
-/

namespace A325161.P3015449488910461767
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325160 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361102 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A325161.P3015449488910461767

namespace A325161

/-- `∩[A325160(n+1), A361102(n+1)]` -/
def P3015449488910461767.Spec : Prop :=
  ∀ n, (P3015449488910461767.a n : ℤ) = A325161 (n + 1)

end A325161

/-! ## A325161.P14319310108535896472

`∩[A139118(n+1), A325160(n+1)]`
-/

namespace A325161.P14319310108535896472
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139118 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325160 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A325161.P14319310108535896472

namespace A325161

/-- `∩[A139118(n+1), A325160(n+1)]` -/
def P14319310108535896472.Spec : Prop :=
  ∀ n, (P14319310108535896472.a n : ℤ) = A325161 (n + 1)

end A325161

/-!
# A325162: Squarefree numbers with no two prime indices differing by less than 3.

The programs for A325162, there is no canonical definition to state claims against.
-/

/-! ## A325162.P9020804965571986356

`record[A319626(A015053(n+1)*A079068(n+1))]`
-/

namespace A325162.P9020804965571986356
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319626 (A015053 (n + 1) * A079068 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A325162.P9020804965571986356

/-! ## A325162.P9622149462610837988

`record[A319626(A053166(n+1)*A079068(n+1))]`
-/

namespace A325162.P9622149462610837988
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319626 (A053166 (n + 1) * A079068 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A325162.P9622149462610837988

/-! ## A325162.P15943588869496631573

`record[A319626(A007913(n+1)*A319627(n+1))]`
-/

namespace A325162.P15943588869496631573
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319626 (A007913 (n + 1) * A319627 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A325162.P15943588869496631573

/-! ## A325162.P1995749785834215839

`record[A319626(A007947(n+1)*A319627(n+1))]`
-/

namespace A325162.P1995749785834215839
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319626 (A007947 (n + 1) * A319627 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A325162.P1995749785834215839

/-!
# A325163: Heinz number of the inner lining partition of the integer partition with Heinz number n.

The programs for A325163, there is no canonical definition to state claims against.
-/

/-! ## A325163.P398929478545690577

`A374995(A000607(2*n+3))+A025480(n)`
-/

namespace A325163.P398929478545690577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374995 (A000607 (2 * n + 3)).toNat + A025480 n

end

end A325163.P398929478545690577

/-! ## A325163.P4667489635780934027

`A001222(A287594(n)*A321876(n))`
-/

namespace A325163.P4667489635780934027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A287594 n * A321876 n).toNat

end

end A325163.P4667489635780934027

/-! ## A325163.P3034284000218173633

`A124798(A110267(n))+A124763(n+2)`
-/

namespace A325163.P3034284000218173633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124798 (A110267 n).toNat + A124763 (n + 2)

end

end A325163.P3034284000218173633

/-! ## A325163.P5421467668816942478

`A002034(A332462(n+1)^A187783(n))`
-/

namespace A325163.P5421467668816942478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002034 (SequenceMachineLib.roundAway ((A332462 (n + 1) : ℚ) ^ (A187783 n : ℤ))).toNat

end

end A325163.P5421467668816942478

/-! ## A325163.P6361625197658667192

`or(A001222(A287594(n)), A265753(n+1))`
-/

namespace A325163.P6361625197658667192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A001222 (A287594 n).toNat) (A265753 (n + 1))

end

end A325163.P6361625197658667192

/-!
# A325164: Heinz numbers of integer partitions with Durfee square of length 2.

The programs for A325164, there is no canonical definition to state claims against.
-/

/-! ## A325164.P1948623155272053712

`eq[2, A257990(n+1)]+1`
-/

namespace A325164.P1948623155272053712
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257990 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A325164.P1948623155272053712

/-! ## A325164.P870269132464368023

`eq[2, A257990(n^floor(atan(n)))]`
-/

namespace A325164.P870269132464368023
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257990 (SequenceMachineLib.roundAway ((n : ℚ) ^ (⌊Real.arctan (n : ℝ)⌋ : ℤ))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A325164.P870269132464368023

/-! ## A325164.P8481408303760363394

`eq[2, 2^a(A325133(n))]` with `a(0)=1, a(1)=0`
-/

namespace A325164.P8481408303760363394
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 0] fun n f2 =>
  2 ^ f2 (A325133 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A325164.P8481408303760363394

/-! ## A325164.P15248882925974486668

`eq[2, A257990(n*a(n-1))]` with `a(0)=0, a(1)=1`
-/

namespace A325164.P15248882925974486668
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n f2 =>
  A257990 ((n : ℤ) * f2 (n - 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A325164.P15248882925974486668

/-! ## A325164.P10587281663005645903

`eq[2, A257990(A004277(n))]`
-/

namespace A325164.P10587281663005645903
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257990 (A004277 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A325164.P10587281663005645903

/-! ## A325164.P4303658140309349183

`eq[2, A257990(A008574(n))]`
-/

namespace A325164.P4303658140309349183
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257990 (A008574 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A325164.P4303658140309349183

/-! ## A325164.P803393140493268922

`A020725(eq[2, A257990(n+1)])`
-/

namespace A325164.P803393140493268922
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257990 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A325164.P803393140493268922

/-! ## A325164.P4012233375938354480

`A065475(eq[2, A257990(n+1)])`
-/

namespace A325164.P4012233375938354480
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257990 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A325164.P4012233375938354480

/-! ## A325164.P1412717759147991744

`A181569(eq[2, A257990(n+1)])`
-/

namespace A325164.P1412717759147991744
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257990 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181569 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A325164.P1412717759147991744

/-! ## A325164.P3477884535037399710

`eq[2, A000010(a(A325133(n)))]` with `a(0)=0, a(1)=5`
-/

namespace A325164.P3477884535037399710
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0, 5] fun n f2 =>
  A000010 (f2 (A325133 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A325164.P3477884535037399710

/-!
# A325165: Regular triangle read by rows where T(n,k) is the number of integer partitions of n whose inner lining partition has last (smallest) part equal to k.

The programs for A325165, there is no canonical definition to state claims against.
-/

/-! ## A325165.P1929178329111652926

`A007814(A000040(n+1)*A329332(n+2))`
-/

namespace A325165.P1929178329111652926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A000040 (n + 1) * A329332 (n + 2)).toNat

end

end A325165.P1929178329111652926

/-! ## A325165.P3186111077314869096

`A007814(lcm(A000040(n+1), A329332(n+2)))`
-/

namespace A325165.P3186111077314869096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (Int.lcm (A000040 (n + 1)) (A329332 (n + 2)))

end

end A325165.P3186111077314869096

/-! ## A325165.P12971966513312569821

`A000010(A316941(2*n+1))%A004736(n+2)`
-/

namespace A325165.P12971966513312569821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000010 (A316941 (2 * n + 1)).toNat) (A004736 (n + 2))

end

end A325165.P12971966513312569821

/-! ## A325165.P11547278060358944119

`A007814(A329332(n+2)+A273172(n))`
-/

namespace A325165.P11547278060358944119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A329332 (n + 2) + A273172 n).toNat

end

end A325165.P11547278060358944119

/-! ## A325165.P17183849757597689496

`and(A004736(A018048(n)), A281624(n+1))`
-/

namespace A325165.P17183849757597689496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A004736 (A018048 n).toNat) (A281624 (n + 1))

end

end A325165.P17183849757597689496

/-!
# A325166: Size of the internal portion of the integer partition with Heinz number n.

The programs for A325166, the canonical program `A325166.P2969046862009635167` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A325166 has offset 1).

The definition of A325166 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A056239, A297113, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A325166.P2969046862009635167

`A056239(n+1)-A297113(n+1)`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A325166

/-- `A056239(n+1)-A297113(n+1)` -/
def P2969046862009635167.Spec : Prop :=
  ∀ n, P2969046862009635167.a n = A325166 (n + 1)

theorem P2969046862009635167.correct : P2969046862009635167.Spec := by
  intro n
  simp only [A325166, Nat.add_sub_cancel]

end A325166

/-! ## A325166.P8639786872175176469

`A056239(n+1)-A061395(n+1)-A001222(n+1)+A001221(n+1)`
-/

namespace A325166.P8639786872175176469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (n + 1) - A061395 (n + 1) - A001222 (n + 1) + A001221 (n + 1)

end

end A325166.P8639786872175176469

namespace A325166

/-- `A056239(n+1)-A061395(n+1)-A001222(n+1)+A001221(n+1)` -/
def P8639786872175176469.Spec : Prop :=
  ∀ n, P8639786872175176469.a n = A325166 (n + 1)

theorem P8639786872175176469.correct : P8639786872175176469.Spec := by
  intro n
  simp only [A325166, Nat.add_sub_cancel, A325166.P8639786872175176469.a, A325166.P2969046862009635167.a, A001221, A001221.P14816172234621668833.f1, A001221.P14816172234621668833.a, A001222, A001222.P667907507343207792.f1, A001222.P667907507343207792.a, A056239, A056239.P11316688788989965672.a, A061395, A061395.P8431317036300486107.a, A297113, A297113.P441289280190658386.a, A029837, A029837.P1050578713049589.a, A046660, A046660.P3614759855976580945.a, A087207, A087207.P12536008426233777954.a, A156552, A156552.P4268073137713085227.a, A161511, A161511.P16266007976091900386.a, A005941, A005941.P9595689460679922607.f1, A005941.P9595689460679922607.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A048675, A048675.P15792214674053257917.f1, A048675.P15792214674053257917.a, A048896, A048896.P6461019053085857547.a, A048881, A048881.P16567064232951496228.a, A297108, A297108.P15990807296291497671.a, A364557, A364557.P16113127302810243144.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A325166

/-! ## A325166.P1233447766627491741

`A325135(n+1)+A297155(n+1)`
-/

namespace A325166.P1233447766627491741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325135 (n + 1) + A297155 (n + 1)

end

end A325166.P1233447766627491741

namespace A325166

/-- `A325135(n+1)+A297155(n+1)` -/
def P1233447766627491741.Spec : Prop :=
  ∀ n, P1233447766627491741.a n = A325166 (n + 1)

end A325166

/-! ## A325166.P6852378355305289038

`A318995(n+1)-A079067(n+1)`
-/

namespace A325166.P6852378355305289038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318995 (n + 1) - A079067 (n + 1)

end

end A325166.P6852378355305289038

namespace A325166

/-- `A318995(n+1)-A079067(n+1)` -/
def P6852378355305289038.Spec : Prop :=
  ∀ n, P6852378355305289038.a n = A325166 (n + 1)

end A325166

/-! ## A325166.P15862035207013271347

`A056239(A052126(n+1))-A046660(n+1)`
-/

namespace A325166.P15862035207013271347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (A052126 (n + 1)).toNat - A046660 (n + 1)

end

end A325166.P15862035207013271347

namespace A325166

/-- `A056239(A052126(n+1))-A046660(n+1)` -/
def P15862035207013271347.Spec : Prop :=
  ∀ n, P15862035207013271347.a n = A325166 (n + 1)

end A325166

/-! ## A325166.P11787070673733115239

`A056239(n+1)-(A061395(n+1)+A046660(n+1))`
-/

namespace A325166.P11787070673733115239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (n + 1) - (A061395 (n + 1) + A046660 (n + 1))

end

end A325166.P11787070673733115239

namespace A325166

/-- `A056239(n+1)-(A061395(n+1)+A046660(n+1))` -/
def P11787070673733115239.Spec : Prop :=
  ∀ n, P11787070673733115239.a n = A325166 (n + 1)

theorem P11787070673733115239.correct : P11787070673733115239.Spec := by
  intro n
  simp only [A325166, Nat.add_sub_cancel, A325166.P11787070673733115239.a, A325166.P2969046862009635167.a, A046660, A046660.P3614759855976580945.a, A056239, A056239.P11316688788989965672.a, A061395, A061395.P8431317036300486107.a, A297113, A297113.P441289280190658386.a, A001221, A001221.P14816172234621668833.f1, A001221.P14816172234621668833.a, A001222, A001222.P667907507343207792.f1, A001222.P667907507343207792.a, A029837, A029837.P1050578713049589.a, A087207, A087207.P12536008426233777954.a, A156552, A156552.P4268073137713085227.a, A161511, A161511.P16266007976091900386.a, A005941, A005941.P9595689460679922607.f1, A005941.P9595689460679922607.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A048675, A048675.P15792214674053257917.f1, A048675.P15792214674053257917.a, A048896, A048896.P6461019053085857547.a, A048881, A048881.P16567064232951496228.a, A297108, A297108.P15990807296291497671.a, A364557, A364557.P16113127302810243144.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A325166

/-! ## A325166.P8222075302746619969

`A001222(n+1)+A318995(n+1)-A297113(n+1)`
-/

namespace A325166.P8222075302746619969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1) + (A318995 (n + 1) - A297113 (n + 1))

end

end A325166.P8222075302746619969

namespace A325166

/-- `A001222(n+1)+A318995(n+1)-A297113(n+1)` -/
def P8222075302746619969.Spec : Prop :=
  ∀ n, P8222075302746619969.a n = A325166 (n + 1)

end A325166

/-! ## A325166.P4053799205524890528

`A318995(n+1)+A255201(n+1)/2-A297113(n+1)`
-/

namespace A325166.P4053799205524890528
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A318995 (n + 1) : ℚ) + (A255201 (n + 1) : ℚ) / 2 - (A297113 (n + 1) : ℚ)

end

end A325166.P4053799205524890528

namespace A325166

/-- `A318995(n+1)+A255201(n+1)/2-A297113(n+1)` -/
def P4053799205524890528.Spec : Prop :=
  ∀ n, P4053799205524890528.a n = (A325166 (n + 1) : ℚ)

end A325166

/-! ## A325166.P9895554118203556408

`A323077(A325183(n+1))`
-/

namespace A325166.P9895554118203556408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323077 (A325183 (n + 1)).toNat

end

end A325166.P9895554118203556408

namespace A325166

/-- `A323077(A325183(n+1))` -/
def P9895554118203556408.Spec : Prop :=
  ∀ n, P9895554118203556408.a n = A325166 (n + 1)

end A325166

/-!
# A325167: Heinz number of the internal portion of the integer partition with Heinz number n.

The programs for A325167, there is no canonical definition to state claims against.
-/

/-! ## A325167.P18100438324608220626

`A064989((n+1)/∏{p}[n+1, #])*A293810(n+1)`
-/

namespace A325167.P18100438324608220626
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064989 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ))).toNat * A293810 (n + 1)

end

end A325167.P18100438324608220626

/-! ## A325167.P5294901349795674582

`A064989(A000190(n+1))*A293810(n+1)`
-/

namespace A325167.P5294901349795674582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064989 (A000190 (n + 1)).toNat * A293810 (n + 1)

end

end A325167.P5294901349795674582

/-! ## A325167.P15249402670663315727

`A064989(A003557(n+1))*A293810(n+1)`
-/

namespace A325167.P15249402670663315727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064989 (A003557 (n + 1)).toNat * A293810 (n + 1)

end

end A325167.P15249402670663315727

/-! ## A325167.P11902299584351839876

`A073752(A064989(n+1))*A293810(n+1)`
-/

namespace A325167.P11902299584351839876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073752 (A064989 (n + 1)).toNat * A293810 (n + 1)

end

end A325167.P11902299584351839876

/-! ## A325167.P8225041000340916521

`A003557(A332819(n+1))*A293810(n+1)`
-/

namespace A325167.P8225041000340916521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003557 (A332819 (n + 1)).toNat * A293810 (n + 1)

end

end A325167.P8225041000340916521

/-! ## A325167.P10234544126281196037

`A293810(n+1)*A299200(A336651(n+1))`
-/

namespace A325167.P10234544126281196037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293810 (n + 1) * A299200 (A336651 (n + 1)).toNat

end

end A325167.P10234544126281196037

/-! ## A325167.P2018138094889749986

`A052126(A200746(n+1)/A065769(n+1))`
-/

namespace A325167.P2018138094889749986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052126 (SequenceMachineLib.roundAway ((A200746 (n + 1) : ℚ) / (A065769 (n + 1) : ℚ))).toNat

end

end A325167.P2018138094889749986

/-! ## A325167.P6562104556850708944

`A200746(n+1)/A065769(A119416(n+1))`
-/

namespace A325167.P6562104556850708944
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A200746 (n + 1) : ℚ) / (A065769 (A119416 (n + 1)).toNat : ℚ)

end

end A325167.P6562104556850708944

/-! ## A325167.P9774049668229199579

`A238745(A331188(n+1)/A003557(n+1))`
-/

namespace A325167.P9774049668229199579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238745 (SequenceMachineLib.roundAway ((A331188 (n + 1) : ℚ) / (A003557 (n + 1) : ℚ))).toNat

end

end A325167.P9774049668229199579

/-! ## A325167.P12362127673364070919

`A319626(A331188(n+1)/A003557(n+1))`
-/

namespace A325167.P12362127673364070919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319626 (SequenceMachineLib.roundAway ((A331188 (n + 1) : ℚ) / (A003557 (n + 1) : ℚ))).toNat

end

end A325167.P12362127673364070919

/-!
# A325168: Number of integer partitions of n with origin-to-boundary graph-distance equal to 2.

The programs for A325168, the canonical program `A325168.P4650958670598860959` is in `Seq.B000.C043`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A325168 has offset 0).

The definition of A325168 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A325168.P12943199462503005090

`ogf((x^3+2x^4+x^5+x^6-x^7)/(1-x-x^2+x^3))`
-/

namespace A325168.P12943199462503005090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 0, 0, 1, 2, 1, 1, -1] [1, -1, -1, 1] n

end

end A325168.P12943199462503005090

namespace A325168

/-- `ogf((x^3+2x^4+x^5+x^6-x^7)/(1-x-x^2+x^3))` -/
def P12943199462503005090.Spec : Prop :=
  ∀ n, P12943199462503005090.a n = A325168 n

end A325168

/-! ## A325168.P4650958670598860959

`a(n-1)+a(n-2)-a(n-3)` with `a(0)=0, a(1)=0, a(2)=0, a(3)=1, a(4)=3, a(5)=5, a(6)=8, a(7)=9`

The canonical program, it is in `Seq.B000.C043`.
-/

namespace A325168

/-- `a(n-1)+a(n-2)-a(n-3)` -/
def P4650958670598860959.Spec : Prop :=
  ∀ n, P4650958670598860959.a n = A325168 n

theorem P4650958670598860959.correct : P4650958670598860959.Spec := by
  intro n
  simp only [A325168]

end A325168

/-! ## A325168.P12246731569094256687

`a(n-2)+4` with `a(0)=0, a(1)=0, a(2)=0, a(3)=1, a(4)=3, a(5)=5, a(6)=8`
-/

namespace A325168.P12246731569094256687
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 0, 1, 3, 5, 8] fun n a =>
  a (n - 2) + 4

end

end A325168.P12246731569094256687

namespace A325168

/-- `a(n-2)+4` -/
def P12246731569094256687.Spec : Prop :=
  ∀ n, (P12246731569094256687.a n : ℤ) = A325168 n

end A325168

/-! ## A325168.P10478688659929347362

`∑[3/a(n-1)]` with `a(0)=0, a(1)=0, a(2)=0, a(3)=1, a(4)=2, a(5)=2, a(6)=3`
-/

namespace A325168.P10478688659929347362
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [0, 0, 0, 1, 2, 2, 3] fun n f1 =>
  3 / f1 (n - 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A325168.P10478688659929347362

namespace A325168

/-- `∑[3/a(n-1)]` -/
def P10478688659929347362.Spec : Prop :=
  ∀ n, P10478688659929347362.a n = (A325168 n : ℚ)

end A325168

/-! ## A325168.P9045847511076339614

`∑[gcd(3, a(n-2))]` with `a(0)=0, a(1)=0, a(2)=0, a(3)=1, a(4)=2, a(5)=2, a(6)=3`
-/

namespace A325168.P9045847511076339614
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 0, 1, 2, 2, 3] fun n f1 =>
  Nat.gcd 3 (f1 (n - 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A325168.P9045847511076339614

namespace A325168

/-- `∑[gcd(3, a(n-2))]` -/
def P9045847511076339614.Spec : Prop :=
  ∀ n, (P9045847511076339614.a n : ℤ) = A325168 n

end A325168

/-! ## A325168.P3328058859985167033

`∑[floor(a(n-2))]` with `a(0)=0, a(1)=0, a(2)=0, a(3)=1, a(4)=2, a(5)=2, a(6)=3, a(7)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A325168.P3328058859985167033
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 0, 1, 2, 2, 3, 1] fun n f1 =>
  f1 (n - 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A325168.P3328058859985167033

namespace A325168

/-- `∑[floor(a(n-2))]` -/
def P3328058859985167033.Spec : Prop :=
  ∀ n, (P3328058859985167033.a n : ℤ) = A325168 n

end A325168

/-! ## A325168.P8301863860082825411

`A042948(A289207(n))-char[4]`
-/

namespace A325168.P8301863860082825411
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042948 (A289207 n).toNat - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A325168.P8301863860082825411

namespace A325168

/-- `A042948(A289207(n))-char[4]` -/
def P8301863860082825411.Spec : Prop :=
  ∀ n, P8301863860082825411.a n = A325168 n

end A325168

/-! ## A325168.P2919707779635135391

`A325188(A133263(n))`
-/

namespace A325168.P2919707779635135391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325188 (A133263 n).toNat

end

end A325168.P2919707779635135391

namespace A325168

/-- `A325188(A133263(n))` -/
def P2919707779635135391.Spec : Prop :=
  ∀ n, P2919707779635135391.a n = A325168 n

end A325168

/-! ## A325168.P3033608536543304996

`A325188(A238531(n+1))`
-/

namespace A325168.P3033608536543304996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325188 (A238531 (n + 1)).toNat

end

end A325168.P3033608536543304996

namespace A325168

/-- `A325188(A238531(n+1))` -/
def P3033608536543304996.Spec : Prop :=
  ∀ n, P3033608536543304996.a n = A325168 n

end A325168

/-!
# A325169: Origin-to-boundary graph-distance of the Young diagram of the integer partition with Heinz number n.

The programs for A325169, there is no canonical definition to state claims against.
-/

/-! ## A325169.P15510996085186446109

`a(A325167(n+1)-1)+1` with `a(0)=0`
-/

namespace A325169.P15510996085186446109
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a (A325167 (n + 1) - 1).toNat + 1

end

end A325169.P15510996085186446109

/-! ## A325169.P7018286163278659054

`ceil(sqrt(A069283((n+1)*3^(n%2))))`
-/

namespace A325169.P7018286163278659054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A069283 ((n + 1) * 3 ^ (n % 2)) : ℝ)⌉

end

end A325169.P7018286163278659054

/-! ## A325169.P3827265238631025596

`A325225((n+1)/ceil(xor(n, n+1)/4))`
-/

namespace A325169.P3827265238631025596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325225 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (⌈(Nat.xor n (n + 1) : ℚ) / 4⌉ : ℚ))).toNat

end

end A325169.P3827265238631025596

/-! ## A325169.P4382422382449034813

`A325225(lcm((n+1)/2^val(n+1, 2), ∏{p}[n+1, #]))`
-/

namespace A325169.P4382422382449034813
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325225 (Int.lcm (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ))) ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℤ))

end

end A325169.P4382422382449034813

/-! ## A325169.P8279257029418299377

`A110475(∏{p}[n+1, gcd((n+1)*(n+2), #²)]+∏{p}[n+1, #])`
-/

namespace A325169.P8279257029418299377
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110475 (∏ p ∈ Nat.primeFactors (f1 n), Nat.gcd ((n + 1) * (n + 2)) (p ^ 2) + ∏ p ∈ Nat.primeFactors (f2 n), p)

end

end A325169.P8279257029418299377

/-! ## A325169.P11278552723980484064

`A325225(A259445(n+1))`
-/

namespace A325169.P11278552723980484064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325225 (A259445 (n + 1)).toNat

end

end A325169.P11278552723980484064

/-! ## A325169.P12226266498808460555

`A325225(A327937(n+1))`
-/

namespace A325169.P12226266498808460555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325225 (A327937 (n + 1)).toNat

end

end A325169.P12226266498808460555

/-! ## A325169.P16727872857503564725

`A110475(2*A331170(n+1))`
-/

namespace A325169.P16727872857503564725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110475 (2 * A331170 (n + 1)).toNat

end

end A325169.P16727872857503564725

/-! ## A325169.P18435838099960535969

`A001221((n+1)*A292589(2*(n+1)))`
-/

namespace A325169.P18435838099960535969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 ((n + 1 : ℤ) * A292589 (2 * (n + 1))).toNat

end

end A325169.P18435838099960535969

/-!
# A325170: Heinz numbers of integer partitions with origin-to-boundary graph-distance equal to 2.

The programs for A325170, there is no canonical definition to state claims against.
-/

/-! ## A325170.P1211030247369897028

`eq[2, ceil(sqrt(A069283((n+1)*3^(n%2))))]+1`
-/

namespace A325170.P1211030247369897028
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A069283 ((n + 1) * 3 ^ (n % 2)) : ℝ)⌉

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A325170.P1211030247369897028

/-! ## A325170.P8133747648313356406

`eq[2, A325225((n+1)/ceil(xor(n, n+1)/4))]+1`
-/

namespace A325170.P8133747648313356406
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325225 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (⌈(Nat.xor n (n + 1) : ℚ) / 4⌉ : ℚ))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A325170.P8133747648313356406

/-! ## A325170.P7257279206624556706

`eq[1, A106405(A257143(n))]`
-/

namespace A325170.P7257279206624556706
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106405 (A257143 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A325170.P7257279206624556706

/-! ## A325170.P6152571372637476171

`eq[2, A325225(A259445(n+1))]+1`
-/

namespace A325170.P6152571372637476171
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325225 (A259445 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A325170.P6152571372637476171

/-! ## A325170.P11356097083506889289

`eq[2, A325225(A327937(n+1))]+1`
-/

namespace A325170.P11356097083506889289
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325225 (A327937 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A325170.P11356097083506889289

/-! ## A325170.P5808556147268433330

`∪[A100368(n+1), A325229(n+1)]`
-/

namespace A325170.P5808556147268433330
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100368 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325229 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A325170.P5808556147268433330

/-! ## A325170.P16241039218548474541

`∪[A289558(n+1), A325229(n+1)]`
-/

namespace A325170.P16241039218548474541
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289558 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325229 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A325170.P16241039218548474541

/-! ## A325170.P6834940120762059018

`eq[2, A001221((n+1)*A292589(2*(n+1)))]+1`
-/

namespace A325170.P6834940120762059018
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 ((n + 1 : ℤ) * A292589 (2 * (n + 1))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A325170.P6834940120762059018

/-!
# A325171: Down-integers: integers k such that w_(s+1) = floor(phi*k) for some k-slow Fibonacci walk, with phi=(1+sqrt(5))/2. See comments for further explanation.

The programs for A325171, there is no canonical definition to state claims against.
-/

/-! ## A325171.P8343079222086554886

`lt[A088858(n+1)²%2, 1]+1`
-/

namespace A325171.P8343079222086554886
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A088858 (n + 1) ^ 2) 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A325171.P8343079222086554886

/-! ## A325171.P8960021382881052198

`lt[A006232(A088858(n+1)), 1]+1`
-/

namespace A325171.P8960021382881052198
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006232 (A088858 (n + 1)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A325171.P8960021382881052198

/-! ## A325171.P3015114762582362109

`eq[2, A062756(A088858(n+1)²)]+1`
-/

namespace A325171.P3015114762582362109
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062756 (A088858 (n + 1) ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A325171.P3015114762582362109

/-! ## A325171.P12475941490060751900

`lt[2, A020639(A088858(n+1)+1)]+1`
-/

namespace A325171.P12475941490060751900
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A088858 (n + 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A325171.P12475941490060751900

/-! ## A325171.P4512016420640359481

`lt[A327832(A088858(n+1)+1), 2]+1`
-/

namespace A325171.P4512016420640359481
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327832 (A088858 (n + 1) + 1).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A325171.P4512016420640359481

/-! ## A325171.P11400589617545594176

`eq[1, A001222(val(A088858(n+1)², 2)+1)]+1`
-/

namespace A325171.P11400589617545594176
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.valuation (A088858 (n + 1) ^ 2).toNat 2 + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A325171.P11400589617545594176

/-!
# A325172: Up-integers: integers k such that w_(s+1) = ceiling(phi*k) for some k-slow Fibonacci walk, with phi=(1+sqrt(5))/2. See comments for further explanation.

The programs for A325172, there is no canonical definition to state claims against.
-/

/-! ## A325172.P7634269878608850054

`lt[2, A020639(A088858(n+1))]+1`
-/

namespace A325172.P7634269878608850054
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A088858 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A325172.P7634269878608850054

/-! ## A325172.P10121478961942063007

`eq[3, A175851(A088858(n+1)²)]+1`
-/

namespace A325172.P10121478961942063007
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175851 (A088858 (n + 1) ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A325172.P10121478961942063007

/-!
# A325173: Perfect squares of the form a + b^2 + c^3, where a,b,c are consecutive numbers.

The programs for A325173, the canonical program `A325173.P4855763111500258147` is in `Seq.B000.C043`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A325173 has offset 1).

The definition of A325173 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A325173.P4855763111500258147

`(n+1)²*(2+(n+1)²)²`

The canonical program, it is in `Seq.B000.C043`.
-/

namespace A325173

/-- `(n+1)²*(2+(n+1)²)²` -/
def P4855763111500258147.Spec : Prop :=
  ∀ n, (P4855763111500258147.a n : ℤ) = A325173 (n + 1)

theorem P4855763111500258147.correct : P4855763111500258147.Spec := by
  intro n
  simp only [A325173, Nat.add_sub_cancel]

end A325173

/-! ## A325173.P2919820240707007687

`ogf((9+81x+270x^2+270x^3+81x^4+9x^5)/(1-7x+21x^2-35x^3+35x^4-21x^5+7x^6-x^7))`
-/

namespace A325173.P2919820240707007687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [9, 81, 270, 270, 81, 9] [1, -7, 21, -35, 35, -21, 7, -1] n

end

end A325173.P2919820240707007687

namespace A325173

/-- `ogf((9+81x+270x^2+270x^3+81x^4+9x^5)/(1-7x+21x^2-35x^3+35x^4-21x^5+7x^6-x^7))` -/
def P2919820240707007687.Spec : Prop :=
  ∀ n, P2919820240707007687.a n = A325173 (n + 1)

end A325173

/-! ## A325173.P12852583401951638877

`A000290(A054602(n+1))`
-/

namespace A325173.P12852583401951638877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (A054602 (n + 1)).toNat

end

end A325173.P12852583401951638877

namespace A325173

/-- `A000290(A054602(n+1))` -/
def P12852583401951638877.Spec : Prop :=
  ∀ n, P12852583401951638877.a n = A325173 (n + 1)

end A325173

/-! ## A325173.P9346254836973100506

`∑[∑[a(n-1)+6]]²` with `a(0)=3, a(1)=6`
-/

namespace A325173.P9346254836973100506
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [3, 6] fun n f2 =>
  f2 (n - 1) + 6

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A325173.P9346254836973100506

namespace A325173

/-- `∑[∑[a(n-1)+6]]²` -/
def P9346254836973100506.Spec : Prop :=
  ∀ n, (P9346254836973100506.a n : ℤ) = A325173 (n + 1)

end A325173

/-! ## A325173.P485334896877510097

`A054602(n+1)²`
-/

namespace A325173.P485334896877510097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054602 (n + 1) ^ 2

end

end A325173.P485334896877510097

namespace A325173

/-- `A054602(n+1)²` -/
def P485334896877510097.Spec : Prop :=
  ∀ n, P485334896877510097.a n = A325173 (n + 1)

theorem P485334896877510097.correct : P485334896877510097.Spec := by
  intro n
  simp only [A325173, Nat.add_sub_cancel, A325173.P485334896877510097.a, A325173.P4855763111500258147.a, A054602, A054602.P284734914928046851.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A325173

/-! ## A325173.P7424268674216324219

`(A094792(n)+1)²`
-/

namespace A325173.P7424268674216324219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A094792 n + 1) ^ 2

end

end A325173.P7424268674216324219

namespace A325173

/-- `(A094792(n)+1)²` -/
def P7424268674216324219.Spec : Prop :=
  ∀ n, P7424268674216324219.a n = A325173 (n + 1)

theorem P7424268674216324219.correct : P7424268674216324219.Spec := by
  intro n
  simp only [A325173, Nat.add_sub_cancel, A325173.P7424268674216324219.a, A325173.P4855763111500258147.a, A094792, A094792.P13284551861407983223.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A325173

/-! ## A325173.P2733404693161273658

`(3*A167875(n))²`
-/

namespace A325173.P2733404693161273658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * A167875 n) ^ 2

end

end A325173.P2733404693161273658

namespace A325173

/-- `(3*A167875(n))²` -/
def P2733404693161273658.Spec : Prop :=
  ∀ n, P2733404693161273658.a n = A325173 (n + 1)

end A325173

/-! ## A325173.P5790478603386451361

`(A027602(n)/3)²`
-/

namespace A325173.P5790478603386451361
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A027602 n : ℚ) / 3) ^ 2

end

end A325173.P5790478603386451361

namespace A325173

/-- `(A027602(n)/3)²` -/
def P5790478603386451361.Spec : Prop :=
  ∀ n, P5790478603386451361.a n = (A325173 (n + 1) : ℚ)

theorem P5790478603386451361.correct : P5790478603386451361.Spec := by
  intro n
  simp only [A325173, Nat.add_sub_cancel, A325173.P5790478603386451361.a, A325173.P4855763111500258147.a, A027602, A027602.P2679377937091624113.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A325173

/-! ## A325173.P14654093622172960030

`∑[A003215(n)+2]²`
-/

namespace A325173.P14654093622172960030
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003215 n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A325173.P14654093622172960030

namespace A325173

/-- `∑[A003215(n)+2]²` -/
def P14654093622172960030.Spec : Prop :=
  ∀ n, P14654093622172960030.a n = A325173 (n + 1)

end A325173

/-! ## A325173.P6721575285096395124

`∑[A028896(n)+3]²`
-/

namespace A325173.P6721575285096395124
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028896 n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A325173.P6721575285096395124

namespace A325173

/-- `∑[A028896(n)+3]²` -/
def P6721575285096395124.Spec : Prop :=
  ∀ n, P6721575285096395124.a n = A325173 (n + 1)

end A325173

/-! ## A325173.P614218631411664835

`(A292022(n+1)/4)²`
-/

namespace A325173.P614218631411664835
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A292022 (n + 1) : ℚ) / 4) ^ 2

end

end A325173.P614218631411664835

namespace A325173

/-- `(A292022(n+1)/4)²` -/
def P614218631411664835.Spec : Prop :=
  ∀ n, P614218631411664835.a n = (A325173 (n + 1) : ℚ)

theorem P614218631411664835.correct : P614218631411664835.Spec := by
  intro n
  simp only [A325173, Nat.add_sub_cancel, A325173.P614218631411664835.a, A325173.P4855763111500258147.a, A292022, A292022.P2362487258136494988.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A325173

/-! ## A325173.P2093587863523374542

`∑[A141631(n+1)+n+1]²`
-/

namespace A325173.P2093587863523374542
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141631 (n + 1) + (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A325173.P2093587863523374542

namespace A325173

/-- `∑[A141631(n+1)+n+1]²` -/
def P2093587863523374542.Spec : Prop :=
  ∀ n, P2093587863523374542.a n = A325173 (n + 1)

end A325173

/-! ## A325173.P7048248127458782705

`Δ[A061316(n)]²`
-/

namespace A325173.P7048248127458782705
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061316 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 2

end

end A325173.P7048248127458782705

namespace A325173

/-- `Δ[A061316(n)]²` -/
def P7048248127458782705.Spec : Prop :=
  ∀ n, P7048248127458782705.a n = A325173 (n + 1)

end A325173

/-! ## A325173.P5441321720512615811

`Δ[A086601(n)]²`
-/

namespace A325173.P5441321720512615811
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086601 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 2

end

end A325173.P5441321720512615811

namespace A325173

/-- `Δ[A086601(n)]²` -/
def P5441321720512615811.Spec : Prop :=
  ∀ n, P5441321720512615811.a n = A325173 (n + 1)

end A325173

/-! ## A325173.P911115695565286545

`Δ[A000124(n)²]²`
-/

namespace A325173.P911115695565286545
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 2

end

end A325173.P911115695565286545

namespace A325173

/-- `Δ[A000124(n)²]²` -/
def P911115695565286545.Spec : Prop :=
  ∀ n, P911115695565286545.a n = A325173 (n + 1)

end A325173

/-! ## A325173.P15869939626371340118

`(Δ[A123350(n)]+1)²`
-/

namespace A325173.P15869939626371340118
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123350 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n + 1) ^ 2

end

end A325173.P15869939626371340118

namespace A325173

/-- `(Δ[A123350(n)]+1)²` -/
def P15869939626371340118.Spec : Prop :=
  ∀ n, P15869939626371340118.a n = A325173 (n + 1)

end A325173

/-! ## A325173.P10844602983950900775

`(1-Δ[A334694(n)])²`
-/

namespace A325173.P10844602983950900775
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334694 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - (f1 (n + 1) - f1 n)) ^ 2

end

end A325173.P10844602983950900775

namespace A325173

/-- `(1-Δ[A334694(n)])²` -/
def P10844602983950900775.Spec : Prop :=
  ∀ n, P10844602983950900775.a n = A325173 (n + 1)

end A325173

/-! ## A325173.P4632392263137976465

`Δ[3*A006007(n)]²`
-/

namespace A325173.P4632392263137976465
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A006007 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 2

end

end A325173.P4632392263137976465

namespace A325173

/-- `Δ[3*A006007(n)]²` -/
def P4632392263137976465.Spec : Prop :=
  ∀ n, P4632392263137976465.a n = A325173 (n + 1)

end A325173

/-! ## A325173.P8238084388477550050

`Δ[A383834(n)/2]²`
-/

namespace A325173.P8238084388477550050
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A383834 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 2

end

end A325173.P8238084388477550050

namespace A325173

/-- `Δ[A383834(n)/2]²` -/
def P8238084388477550050.Spec : Prop :=
  ∀ n, P8238084388477550050.a n = (A325173 (n + 1) : ℚ)

end A325173

/-! ## A325173.P4466657982617580163

`(3*A006527(n+1))²`
-/

namespace A325173.P4466657982617580163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * A006527 (n + 1)) ^ 2

end

end A325173.P4466657982617580163

namespace A325173

/-- `(3*A006527(n+1))²` -/
def P4466657982617580163.Spec : Prop :=
  ∀ n, P4466657982617580163.a n = A325173 (n + 1)

end A325173

/-!
# A325174: a(n) = Fibonacci(n)^n mod prime(n).

The programs for A325174, there is no canonical definition to state claims against.
-/

/-! ## A325174.P12947088530870030072

`(A000045(n+1)^(n+1))%A000040(n+1)`
-/

namespace A325174.P12947088530870030072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000045 (n + 1) ^ (n + 1)) (A000040 (n + 1))

end

end A325174.P12947088530870030072

/-!
# A325178: Difference between the length of the minimal square containing and the maximal square contained in the Young diagram of the integer partition with Heinz number n.

The programs for A325178, the canonical program `A325178.P15779599173894516213` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A325178 has offset 1).

The definition of A325178 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A257990, A263297, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A325178.P15779599173894516213

`A263297(n+1)-A257990(n+1)`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A325178

/-- `A263297(n+1)-A257990(n+1)` -/
def P15779599173894516213.Spec : Prop :=
  ∀ n, P15779599173894516213.a n = A325178 (n + 1)

theorem P15779599173894516213.correct : P15779599173894516213.Spec := by
  intro n
  simp only [A325178, Nat.add_sub_cancel]

end A325178

/-! ## A325178.P8525878559553246559

`round(A263297(n+1)-log(A335616(n+1)))`
-/

namespace A325178.P8525878559553246559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A263297 (n + 1) : ℝ) - Real.log (A335616 (n + 1) : ℝ))

end

end A325178.P8525878559553246559

namespace A325178

/-- `round(A263297(n+1)-log(A335616(n+1)))` -/
def P8525878559553246559.Spec : Prop :=
  ∀ n, P8525878559553246559.a n = A325178 (n + 1)

end A325178

/-! ## A325178.P4224236714882298535

`A263297(n+1)-A000193(A335616(n+1))`
-/

namespace A325178.P4224236714882298535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263297 (n + 1) - A000193 (A335616 (n + 1)).toNat

end

end A325178.P4224236714882298535

namespace A325178

/-- `A263297(n+1)-A000193(A335616(n+1))` -/
def P4224236714882298535.Spec : Prop :=
  ∀ n, P4224236714882298535.a n = A325178 (n + 1)

end A325178

/-! ## A325178.P713493940180882219

`A061395(A331170(n+1))-A257990(n+1)`
-/

namespace A325178.P713493940180882219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (A331170 (n + 1)).toNat - A257990 (n + 1)

end

end A325178.P713493940180882219

namespace A325178

/-- `A061395(A331170(n+1))-A257990(n+1)` -/
def P713493940180882219.Spec : Prop :=
  ∀ n, P713493940180882219.a n = A325178 (n + 1)

end A325178

/-! ## A325178.P11147674845788266308

`A263297(n+1)+A057428(n)*A257990(n+1)`
-/

namespace A325178.P11147674845788266308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263297 (n + 1) + A057428 n * A257990 (n + 1)

end

end A325178.P11147674845788266308

namespace A325178

/-- `A263297(n+1)+A057428(n)*A257990(n+1)` -/
def P11147674845788266308.Spec : Prop :=
  ∀ n, P11147674845788266308.a n = A325178 (n + 1)

end A325178

/-! ## A325178.P2868864180683443346

`A056239(n+1)-(A325223(n+1)+A257990(n+1))`
-/

namespace A325178.P2868864180683443346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (n + 1) - (A325223 (n + 1) + A257990 (n + 1))

end

end A325178.P2868864180683443346

namespace A325178

/-- `A056239(n+1)-(A325223(n+1)+A257990(n+1))` -/
def P2868864180683443346.Spec : Prop :=
  ∀ n, P2868864180683443346.a n = A325178 (n + 1)

theorem P2868864180683443346.correct : P2868864180683443346.Spec := by
  intro n
  simp only [A325178, Nat.add_sub_cancel, A325178.P2868864180683443346.a, A325178.P15779599173894516213.a, A056239, A056239.P11316688788989965672.a, A257990, A257990.P2125078117225993032.a, A263297, A263297.P13367388864379357855.a, A325223, A325223.P14926081058052058470.a, A000265, A000265.P16482698636471710744.a, A061395, A061395.P8431317036300486107.a, A105560, A105560.P10934841406439867276.a, A156552, A156552.P4268073137713085227.a, A161511, A161511.P16266007976091900386.a, A325133, A325133.P17746794442660718236.a, A001222, A001222.P667907507343207792.f1, A001222.P667907507343207792.a, A005941, A005941.P9595689460679922607.f1, A005941.P9595689460679922607.a, A008578, A008578.P3639467937083264764.a, A029837, A029837.P1050578713049589.a, A048896, A048896.P6461019053085857547.a, A052126, A052126.P1944428405920482243.a, A064989, A064989.P13349672914146769936.a, A087207, A087207.P12536008426233777954.a, A006530, A006530.P13372528560459906635.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A048675, A048675.P15792214674053257917.f1, A048675.P15792214674053257917.a, A048881, A048881.P16567064232951496228.a, A158611, A158611.P9275629407611603775.a, A364557, A364557.P16113127302810243144.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A325178

/-! ## A325178.P16372042892336580373

`A263297(n+1)-A020639(A325133(n+1)!)%(n+1)`
-/

namespace A325178.P16372042892336580373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263297 (n + 1) - Int.tmod (A020639 (Nat.factorial (A325133 (n + 1)).toNat)) (n + 1 : ℤ)

end

end A325178.P16372042892336580373

namespace A325178

/-- `A263297(n+1)-A020639(A325133(n+1)!)%(n+1)` -/
def P16372042892336580373.Spec : Prop :=
  ∀ n, P16372042892336580373.a n = A325178 (n + 1)

end A325178

/-! ## A325178.P9689552281195365791

`A263297(n+1)-(A178334(A104515(n+1))+A178334(n))`
-/

namespace A325178.P9689552281195365791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263297 (n + 1) - (A178334 (A104515 (n + 1)).toNat + A178334 n)

end

end A325178.P9689552281195365791

namespace A325178

/-- `A263297(n+1)-(A178334(A104515(n+1))+A178334(n))` -/
def P9689552281195365791.Spec : Prop :=
  ∀ n, P9689552281195365791.a n = A325178 (n + 1)

end A325178

/-! ## A325178.P15477666298117464358

`A263297(n+1)-A001221(A087039(n+1)*A319862(n))`
-/

namespace A325178.P15477666298117464358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263297 (n + 1) - A001221 (A087039 (n + 1) * A319862 n).toNat

end

end A325178.P15477666298117464358

namespace A325178

/-- `A263297(n+1)-A001221(A087039(n+1)*A319862(n))` -/
def P15477666298117464358.Spec : Prop :=
  ∀ n, P15477666298117464358.a n = A325178 (n + 1)

end A325178

/-! ## A325178.P12295098640910280615

`A263297(n+1)-A000194(A001227(n+1))%A187228(n+1)`
-/

namespace A325178.P12295098640910280615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263297 (n + 1) - Int.tmod (A000194 (A001227 (n + 1)).toNat) (A187228 (n + 1))

end

end A325178.P12295098640910280615

namespace A325178

/-- `A263297(n+1)-A000194(A001227(n+1))%A187228(n+1)` -/
def P12295098640910280615.Spec : Prop :=
  ∀ n, P12295098640910280615.a n = A325178 (n + 1)

end A325178

/-!
# A325179: Heinz numbers of integer partitions such that the difference between the length of the minimal square containing and the maximal square contained in the Young diagram is 1.

The programs for A325179, there is no canonical definition to state claims against.
-/

/-! ## A325179.P12779733291971324365

`A020725(eq[1, A263297(n+1)-A257990(n+1)])`
-/

namespace A325179.P12779733291971324365
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263297 (n + 1) - A257990 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A325179.P12779733291971324365

/-! ## A325179.P11418655129638907595

`A065475(eq[1, A263297(n+1)-A257990(n+1)])`
-/

namespace A325179.P11418655129638907595
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263297 (n + 1) - A257990 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A325179.P11418655129638907595

/-! ## A325179.P692949070694907606

`eq[1, A263297(n+1)+A057428(n)*A257990(n+1)]+1`
-/

namespace A325179.P692949070694907606
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263297 (n + 1) + A057428 n * A257990 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A325179.P692949070694907606

/-! ## A325179.P13992000879389925088

`eq[1, A325178(n+1)]+1`
-/

namespace A325179.P13992000879389925088
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325178 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A325179.P13992000879389925088

/-! ## A325179.P14366650872139874094

`eq[1, A325178(gcd(n, C(2, n)))]`
-/

namespace A325179.P14366650872139874094
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325178 (Nat.gcd n (Nat.choose 2 n))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A325179.P14366650872139874094

/-!
# A325180: Heinz number of integer partitions such that the difference between the length of the minimal square containing and the maximal square contained in the Young diagram is 2.

The programs for A325180, there is no canonical definition to state claims against.
-/

/-! ## A325180.P7884323208248767908

`A020725(eq[2, A263297(n+1)-A257990(n+1)])`
-/

namespace A325180.P7884323208248767908
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263297 (n + 1) - A257990 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A325180.P7884323208248767908

/-! ## A325180.P9984573361865343643

`eq[2, A263297(n+1)+A057428(n)*A257990(n+1)]+1`
-/

namespace A325180.P9984573361865343643
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263297 (n + 1) + A057428 n * A257990 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A325180.P9984573361865343643

/-! ## A325180.P14137280341563800188

`eq[2, A325178(n+1)]+1`
-/

namespace A325180.P14137280341563800188
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325178 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A325180.P14137280341563800188

/-! ## A325180.P1377981504532259560

`eq[2, A325178(gcd(n, C(2, n)))]`
-/

namespace A325180.P1377981504532259560
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325178 (Nat.gcd n (Nat.choose 2 n))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A325180.P1377981504532259560

/-! ## A325180.P15525310441682824640

`eq[2, A325178(A028310(n))]`
-/

namespace A325180.P15525310441682824640
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325178 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A325180.P15525310441682824640

/-!
# A325181: Number of integer partitions of n such that the difference between the length of the minimal square containing and the maximal square contained in the Young diagram is 1.

The programs for A325181, the canonical program `A325181.P17553818438216459321` is in `Seq.B002.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A325181 has offset 0).

The definition of A325181 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 151 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A325181.P4540319982114293061

`sqrt(round(1/2+n-round(sqrt(n))²)²-char[n²])`
-/

namespace A325181.P4540319982114293061
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (SequenceMachineLib.roundAway ((1 : ℚ) / 2 + (n : ℚ) - (SequenceMachineLib.roundAway (Real.sqrt (n : ℝ)) ^ 2 : ℚ)) ^ 2 - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) : ℝ)

end

end A325181.P4540319982114293061

namespace A325181

/-- `sqrt(round(1/2+n-round(sqrt(n))²)²-char[n²])` -/
def P4540319982114293061.Spec : Prop :=
  ∀ n, P4540319982114293061.a n = (A325181 n : ℝ)

end A325181

/-! ## A325181.P2561303877803002294

`A053615(ceil(sqrt(n)+n))`
-/

namespace A325181.P2561303877803002294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053615 ⌈Real.sqrt (n : ℝ) + (n : ℝ)⌉.toNat

end

end A325181.P2561303877803002294

namespace A325181

/-- `A053615(ceil(sqrt(n)+n))` -/
def P2561303877803002294.Spec : Prop :=
  ∀ n, P2561303877803002294.a n = A325181 n

end A325181

/-! ## A325181.P9834677466631626789

`ceil(sqrt(n)-A053615(n))`
-/

namespace A325181.P9834677466631626789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (n : ℝ) - (A053615 n : ℝ)⌉

end

end A325181.P9834677466631626789

namespace A325181

/-- `ceil(sqrt(n)-A053615(n))` -/
def P9834677466631626789.Spec : Prop :=
  ∀ n, P9834677466631626789.a n = A325181 n

end A325181

/-! ## A325181.P617194588333822355

`A004737(n+1)-char[n²]`
-/

namespace A325181.P617194588333822355
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004737 (n + 1) - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A325181.P617194588333822355

namespace A325181

/-- `A004737(n+1)-char[n²]` -/
def P617194588333822355.Spec : Prop :=
  ∀ n, P617194588333822355.a n = A325181 n

end A325181

/-! ## A325181.P14140229448511306083

`root(A133823(n), 3)-char[n²]`
-/

namespace A325181.P14140229448511306083
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A133823 n : ℝ) ^ (1 / (3 : ℝ)) - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℝ)

end

end A325181.P14140229448511306083

namespace A325181

/-- `root(A133823(n), 3)-char[n²]` -/
def P14140229448511306083.Spec : Prop :=
  ∀ n, P14140229448511306083.a n = (A325181 n : ℝ)

end A325181

/-! ## A325181.P11801417194093457305

`A004739(comp[n²])-char[n²]`
-/

namespace A325181.P11801417194093457305
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004739 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

end

end A325181.P11801417194093457305

namespace A325181

/-- `A004739(comp[n²])-char[n²]` -/
def P11801417194093457305.Spec : Prop :=
  ∀ n, P11801417194093457305.a n = A325181 n

end A325181

/-! ## A325181.P13779954662751167294

`abs(A329116(comp[∑[2*n]+1]))`
-/

namespace A325181.P13779954662751167294
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A329116 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)|

end

end A325181.P13779954662751167294

namespace A325181

/-- `abs(A329116(comp[∑[2*n]+1]))` -/
def P13779954662751167294.Spec : Prop :=
  ∀ n, P13779954662751167294.a n = A325181 n

end A325181

/-! ## A325181.P2978599424078852797

`root(A124258(n+1), 2)-char[n²]`
-/

namespace A325181.P2978599424078852797
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A124258 (n + 1) : ℝ) ^ (1 / (2 : ℝ)) - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℝ)

end

end A325181.P2978599424078852797

namespace A325181

/-- `root(A124258(n+1), 2)-char[n²]` -/
def P2978599424078852797.Spec : Prop :=
  ∀ n, P2978599424078852797.a n = (A325181 n : ℝ)

end A325181

/-! ## A325181.P2971323066506897317

`xor(char[n²], A004737(Δ[n²]-n))`
-/

namespace A325181.P2971323066506897317
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A004737 ((f2 (n + 1) : ℤ) - (f2 n : ℤ) - (n : ℤ)).toNat)

end

end A325181.P2971323066506897317

namespace A325181

/-- `xor(char[n²], A004737(Δ[n²]-n))` -/
def P2971323066506897317.Spec : Prop :=
  ∀ n, P2971323066506897317.a n = A325181 n

end A325181

/-! ## A325181.P17553818438216459321

`A010751(A165775(n))`

The canonical program, it is in `Seq.B002.C007`.
-/

namespace A325181

/-- `A010751(A165775(n))` -/
def P17553818438216459321.Spec : Prop :=
  ∀ n, P17553818438216459321.a n = A325181 n

theorem P17553818438216459321.correct : P17553818438216459321.Spec := by
  intro n
  simp only [A325181]

end A325181

/-! ## A325181.P17293205531440709267

`A053188(eq[1, A265411(n)])`
-/

namespace A325181.P17293205531440709267
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265411 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053188 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A325181.P17293205531440709267

namespace A325181

/-- `A053188(eq[1, A265411(n)])` -/
def P17293205531440709267.Spec : Prop :=
  ∀ n, P17293205531440709267.a n = A325181 n

end A325181

/-! ## A325181.P7738179310972489167

`A135034(n)-A053615(n)`
-/

namespace A325181.P7738179310972489167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135034 n - A053615 n

end

end A325181.P7738179310972489167

namespace A325181

/-- `A135034(n)-A053615(n)` -/
def P7738179310972489167.Spec : Prop :=
  ∀ n, P7738179310972489167.a n = A325181 n

end A325181

/-! ## A325181.P2255398466184368130

`sqrt(A048761(n))-A053615(n)`
-/

namespace A325181.P2255398466184368130
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A048761 n : ℝ) - (A053615 n : ℝ)

end

end A325181.P2255398466184368130

namespace A325181

/-- `sqrt(A048761(n))-A053615(n)` -/
def P2255398466184368130.Spec : Prop :=
  ∀ n, P2255398466184368130.a n = (A325181 n : ℝ)

end A325181

/-! ## A325181.P9156628690636789526

`A004737(n+1)%A156789(n)`
-/

namespace A325181.P9156628690636789526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004737 (n + 1)) (A156789 n)

end

end A325181.P9156628690636789526

namespace A325181

/-- `A004737(n+1)%A156789(n)` -/
def P9156628690636789526.Spec : Prop :=
  ∀ n, P9156628690636789526.a n = A325181 n

end A325181

/-! ## A325181.P5337514250189513696

`lcm(A004737(n+1), A397085(n))`
-/

namespace A325181.P5337514250189513696
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A004737 (n + 1)) (A397085 n)

end

end A325181.P5337514250189513696

namespace A325181

/-- `lcm(A004737(n+1), A397085(n))` -/
def P5337514250189513696.Spec : Prop :=
  ∀ n, (P5337514250189513696.a n : ℤ) = A325181 n

end A325181

/-! ## A325181.P231045278850019028

`xor(A004737(n+1), A010052(n))`
-/

namespace A325181.P231045278850019028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A004737 (n + 1)) (A010052 n)

end

end A325181.P231045278850019028

namespace A325181

/-- `xor(A004737(n+1), A010052(n))` -/
def P231045278850019028.Spec : Prop :=
  ∀ n, P231045278850019028.a n = A325181 n

end A325181

/-! ## A325181.P4119907857801148817

`char[A000037(n+1)]*A004737(n+1)`
-/

namespace A325181.P4119907857801148817
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000037 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A004737 (n + 1)

end

end A325181.P4119907857801148817

namespace A325181

/-- `char[A000037(n+1)]*A004737(n+1)` -/
def P4119907857801148817.Spec : Prop :=
  ∀ n, P4119907857801148817.a n = A325181 n

end A325181

/-! ## A325181.P16124711044917393184

`A000194(A028392(n))-A053615(n)`
-/

namespace A325181.P16124711044917393184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (A028392 n).toNat - A053615 n

end

end A325181.P16124711044917393184

namespace A325181

/-- `A000194(A028392(n))-A053615(n)` -/
def P16124711044917393184.Spec : Prop :=
  ∀ n, P16124711044917393184.a n = A325181 n

end A325181

/-! ## A325181.P13316297540409851306

`A053188(n)+A023969(A000194(n)+n)`
-/

namespace A325181.P13316297540409851306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053188 n + A023969 (A000194 n + (n : ℤ)).toNat

end

end A325181.P13316297540409851306

namespace A325181

/-- `A053188(n)+A023969(A000194(n)+n)` -/
def P13316297540409851306.Spec : Prop :=
  ∀ n, P13316297540409851306.a n = A325181 n

end A325181

/-! ## A325181.P17412030943607482157

`A053188(n)+A023969(A000196(n)+n)`
-/

namespace A325181.P17412030943607482157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053188 n + A023969 (A000196 n + (n : ℤ)).toNat

end

end A325181.P17412030943607482157

namespace A325181

/-- `A053188(n)+A023969(A000196(n)+n)` -/
def P17412030943607482157.Spec : Prop :=
  ∀ n, P17412030943607482157.a n = A325181 n

end A325181

/-!
# A325182: Number of integer partitions of n such that the difference between the length of the minimal square containing and the maximal square contained in the Young diagram is 2.

The programs for A325182, there is no canonical definition to state claims against.
-/

/-! ## A325182.P8560621847443824795

`A325192(∑[n]+2)`
-/

namespace A325182.P8560621847443824795
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325192 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A325182.P8560621847443824795

/-!
# A325183: Heinz number of the origin-to-boundary partition of the Young diagram of the integer partition with Heinz number n.

The programs for A325183, there is no canonical definition to state claims against.
-/

/-! ## A325183.P937602909384042740

`A331170(n+1)+A044941(A023105(n))`
-/

namespace A325183.P937602909384042740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331170 (n + 1) + A044941 (A023105 n).toNat

end

end A325183.P937602909384042740

/-! ## A325183.P7612874161747404617

`A331170(n+1)+A225569(A306859(n))`
-/

namespace A325183.P7612874161747404617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331170 (n + 1) + A225569 (A306859 n).toNat

end

end A325183.P7612874161747404617

/-! ## A325183.P6577871100672847268

`A076752(or(A151838(n), A331170(n+1)))`
-/

namespace A325183.P6577871100672847268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076752 (Int.lor (A151838 n) (A331170 (n + 1))).toNat

end

end A325183.P6577871100672847268

/-! ## A325183.P1057588540953865324

`A331170(n+1)+A073424(A019274(n+1))`
-/

namespace A325183.P1057588540953865324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331170 (n + 1) + A073424 (A019274 (n + 1)).toNat

end

end A325183.P1057588540953865324

/-! ## A325183.P5388682839347170258

`A331170(n+1)+A072401(A330375(n+1))`
-/

namespace A325183.P5388682839347170258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331170 (n + 1) + A072401 (A330375 (n + 1)).toNat

end

end A325183.P5388682839347170258

/-!
# A325184: Last part of the origin-to-boundary partition of the Young diagram of the integer partition with Heinz number n.

The programs for A325184, there is no canonical definition to state claims against.
-/

/-! ## A325184.P9849585800547241852

`A055396(A325183(n+1))`
-/

namespace A325184.P9849585800547241852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (A325183 (n + 1)).toNat

end

end A325184.P9849585800547241852

/-! ## A325184.P10020302228268580138

`A277697(A325183(char[2]+1+n))`
-/

namespace A325184.P10020302228268580138
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277697 (A325183 ((if ∃ j, f1 j = n then 1 else 0) + 1 + n)).toNat

end

end A325184.P10020302228268580138

/-! ## A325184.P11604664107443350503

`A277697(A325183(n+1))/A054977(n)`
-/

namespace A325184.P11604664107443350503
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A277697 (A325183 (n + 1)).toNat : ℚ) / (A054977 n : ℚ)

end

end A325184.P11604664107443350503

/-! ## A325184.P17451013958254393745

`A277697(A325183(n+1))%A002146(n)`
-/

namespace A325184.P17451013958254393745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A277697 (A325183 (n + 1)).toNat) (A002146 n)

end

end A325184.P17451013958254393745

/-! ## A325184.P1543604095307471429

`A353931(A325183(n+1)%A139607(n))`
-/

namespace A325184.P1543604095307471429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353931 (Int.tmod (A325183 (n + 1)) (A139607 n)).toNat

end

end A325184.P1543604095307471429

/-! ## A325184.P13942796083958352757

`A277697(or(A000007(n), A325183(n+1)))`
-/

namespace A325184.P13942796083958352757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277697 (Int.lor (A000007 n) (A325183 (n + 1))).toNat

end

end A325184.P13942796083958352757

/-! ## A325184.P823617672074271987

`∑{d}[A020639(A325183(n+1)), A065770(#)]`
-/

namespace A325184.P823617672074271987
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A325183 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A065770 d

end

end A325184.P823617672074271987

/-! ## A325184.P4982010932640639021

`∑{d}[A020639(A325183(n+1)), A297113(#)]`
-/

namespace A325184.P4982010932640639021
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A325183 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A297113 d

end

end A325184.P4982010932640639021

/-! ## A325184.P13452222874113065488

`A297167(n+1)+A057427(n)-A243055(A325183(n+1))`
-/

namespace A325184.P13452222874113065488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297167 (n + 1) + (A057427 n - A243055 (A325183 (n + 1)).toNat)

end

end A325184.P13452222874113065488

/-!
# A325185: Heinz numbers of integer partitions such that the upper-left square of the Young diagram has strictly greater graph-distance from the lower-right boundary than any other square.

The programs for A325185, there is no canonical definition to state claims against.
-/

/-! ## A325185.P17483842448378506957

`eq[1, A325184(n+1)]+1`
-/

namespace A325185.P17483842448378506957
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325184 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A325185.P17483842448378506957

/-! ## A325185.P12063835400660769838

`record[(n+2)/A325184(n+2)]`
-/

namespace A325185.P12063835400660769838
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℚ) / (A325184 (n + 2) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A325185.P12063835400660769838

/-! ## A325185.P2272125247021123126

`eq[1, A325184(A028310(n))]`
-/

namespace A325185.P2272125247021123126
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325184 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A325185.P2272125247021123126

/-! ## A325185.P10866904960432930524

`A020725(eq[1, A325184(n+1)])`
-/

namespace A325185.P10866904960432930524
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325184 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A325185.P10866904960432930524

/-! ## A325185.P10237345543848596947

`eq[1, A325184(A065033(2*n))]`
-/

namespace A325185.P10237345543848596947
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325184 (A065033 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A325185.P10237345543848596947

/-!
# A325186: Heinz numbers of integer partitions whose Young diagram has last part of its origin-to-boundary partition equal to 2.

The programs for A325186, there is no canonical definition to state claims against.
-/

/-! ## A325186.P7609093546577379129

`eq[2, A325184(n+1)]+1`
-/

namespace A325186.P7609093546577379129
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325184 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A325186.P7609093546577379129

/-! ## A325186.P11070763714496699019

`eq[2, A325184(A028310(n))]`
-/

namespace A325186.P11070763714496699019
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325184 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A325186.P11070763714496699019

/-! ## A325186.P1115769752208051495

`A020725(eq[2, A325184(n+1)])`
-/

namespace A325186.P1115769752208051495
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325184 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A325186.P1115769752208051495

/-! ## A325186.P5475201624647279471

`A065475(eq[2, A325184(n+1)])`
-/

namespace A325186.P5475201624647279471
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325184 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A325186.P5475201624647279471

/-! ## A325186.P10777023875353520453

`A114637(eq[2, A325184(n+1)])`
-/

namespace A325186.P10777023875353520453
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325184 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114637 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A325186.P10777023875353520453

/-!
# A325187: Number of integer partitions of n such that the upper-left square of the Young diagram has strictly greater graph-distance from the lower-right boundary than any other square.

The programs for A325187, there is no canonical definition to state claims against.
-/

/-! ## A325187.P9384885582316516646

`A238395(n+1)-A238394(n+1)`
-/

namespace A325187.P9384885582316516646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238395 (n + 1) - A238394 (n + 1)

end

end A325187.P9384885582316516646

/-! ## A325187.P9662746964820569432

`Δ[A000070(n)]-2*A238394(n+1)`
-/

namespace A325187.P9662746964820569432
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000070 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 2 * A238394 (n + 1)

end

end A325187.P9662746964820569432

/-! ## A325187.P9555101174021734475

`2*A238395(n+1)-Δ[A000070(n)]`
-/

namespace A325187.P9555101174021734475
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000070 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A238395 (n + 1) - (f1 (n + 1) - f1 n)

end

end A325187.P9555101174021734475

/-! ## A325187.P4208238775869703463

`A000041(n+1)-2*A238394(n+1)`
-/

namespace A325187.P4208238775869703463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (n + 1) - 2 * A238394 (n + 1)

end

end A325187.P4208238775869703463

/-! ## A325187.P11929469218164507524

`2*A238395(n+1)-A000041(n+1)`
-/

namespace A325187.P11929469218164507524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A238395 (n + 1) - A000041 (n + 1)

end

end A325187.P11929469218164507524

/-!
# A325188: Regular triangle read by rows where T(n,k) is the number of integer partitions of n with origin-to-boundary graph-distance equal to k.

The programs for A325188, there is no canonical definition to state claims against.
-/

/-! ## A325188.P2276948659472899114

`A010051(A137855(n+1))+A187080(n)%A187095(n+1)`
-/

namespace A325188.P2276948659472899114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (A137855 (n + 1)).toNat + Int.tmod (A187080 n) (A187095 (n + 1))

end

end A325188.P2276948659472899114

/-! ## A325188.P1293128127306384069

`A325227(n+1)^A061395(2^n)`
-/

namespace A325188.P1293128127306384069
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A325227 (n + 1) : ℚ) ^ (A061395 (2 ^ n) : ℤ)

end

end A325188.P1293128127306384069

/-! ## A325188.P9070224331667647936

`or(A325227(n+1), A336868(ceil(((2*n+1)/2^(2*n/(n+1)))²)))`
-/

namespace A325188.P9070224331667647936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A325227 (n + 1)) (A336868 ⌈((2 * n + 1 : ℝ) / (2 : ℝ) ^ ((2 * n : ℚ) / (n + 1 : ℚ) : ℝ)) ^ 2⌉.toNat)

end

end A325188.P9070224331667647936

/-! ## A325188.P12147320578400762671

`A048793(C(A394444(n), A347699(n+1)))`
-/

namespace A325188.P12147320578400762671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048793 (Nat.choose (A394444 n).toNat (A347699 (n + 1)).toNat)

end

end A325188.P12147320578400762671

/-! ## A325188.P4965553924076179239

`A333755(n)-A381886(A268115(n+1))`
-/

namespace A325188.P4965553924076179239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333755 n - A381886 (A268115 (n + 1)).toNat

end

end A325188.P4965553924076179239

/-!
# A325189: Regular triangle read by rows where T(n,k) is the number of integer partitions of n with maximum origin-to-boundary graph-distance equal to k.

The programs for A325189, there is no canonical definition to state claims against.
-/

/-! ## A325189.P7756722428633895307

`A060500(A016825(n)*A343088(n))`
-/

namespace A325189.P7756722428633895307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060500 (A016825 n * A343088 n).toNat

end

end A325189.P7756722428633895307

/-! ## A325189.P12880022163489962084

`A267263(A027642(n)*A343088(n))`
-/

namespace A325189.P12880022163489962084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267263 (A027642 n * A343088 n).toNat

end

end A325189.P12880022163489962084

/-! ## A325189.P861416833314630949

`A268317(A073429(n)^A088440(n))`
-/

namespace A325189.P861416833314630949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268317 (SequenceMachineLib.roundAway ((A073429 n : ℚ) ^ (A088440 n : ℤ))).toNat

end

end A325189.P861416833314630949

/-! ## A325189.P960290601628929298

`A268317(A073429(n)%A187707(n+1))`
-/

namespace A325189.P960290601628929298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268317 (Int.tmod (A073429 n) (A187707 (n + 1))).toNat

end

end A325189.P960290601628929298

/-! ## A325189.P12766886700447857662

`A267263(∑[A242641(n+1)]*A259857(n+1))`
-/

namespace A325189.P12766886700447857662
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242641 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267263 ((∑ j ∈ Finset.range (n + 1), f1 j) * A259857 (n + 1)).toNat

end

end A325189.P12766886700447857662

/-!
# A325190: Number of integer partitions of n whose Young diagram has last part of its origin-to-boundary partition equal to 2.

The programs for A325190, there is no canonical definition to state claims against.
-/

/-! ## A325190.P13549076035977520284

`A052928(A052971(n))%A052928(n+3)`
-/

namespace A325190.P13549076035977520284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A052928 (A052971 n).toNat) (A052928 (n + 3))

end

end A325190.P13549076035977520284

/-! ## A325190.P14384066042416891592

`and(A174522(n+2), A292736(A359047(n+1)))`
-/

namespace A325190.P14384066042416891592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A174522 (n + 2)) (A292736 (A359047 (n + 1)).toNat)

end

end A325190.P14384066042416891592

/-!
# A325191: Number of integer partitions of n such that the difference between the length of the minimal triangular partition containing and the maximal triangular partition contained in the Young diagram is 1.

The programs for A325191, the canonical program `A325191.P1948114789834443761` is in `Seq.B002.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A325191 has offset 0).

The definition of A325191 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A325191.P1948114789834443761

`A074909(n)-A010054(n)`

The canonical program, it is in `Seq.B002.C007`.
-/

namespace A325191

/-- `A074909(n)-A010054(n)` -/
def P1948114789834443761.Spec : Prop :=
  ∀ n, P1948114789834443761.a n = A325191 n

theorem P1948114789834443761.correct : P1948114789834443761.Spec := by
  intro n
  simp only [A325191]

end A325191

/-! ## A325191.P3971570175810492172

`C(round(sqrt(2*n)), A004736(n+1))`
-/

namespace A325191.P3971570175810492172
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (SequenceMachineLib.roundAway (Real.sqrt (2 * n : ℝ))).toNat (A004736 (n + 1)).toNat

end

end A325191.P3971570175810492172

namespace A325191

/-- `C(round(sqrt(2*n)), A004736(n+1))` -/
def P3971570175810492172.Spec : Prop :=
  ∀ n, (P3971570175810492172.a n : ℤ) = A325191 n

end A325191

/-! ## A325191.P14506502096543418618

`C(round(sqrt(2*n)), A025581(n)+1)`
-/

namespace A325191.P14506502096543418618
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (SequenceMachineLib.roundAway (Real.sqrt (2 * n : ℝ))).toNat (A025581 n + 1).toNat

end

end A325191.P14506502096543418618

namespace A325191

/-- `C(round(sqrt(2*n)), A025581(n)+1)` -/
def P14506502096543418618.Spec : Prop :=
  ∀ n, (P14506502096543418618.a n : ℤ) = A325191 n

end A325191

/-! ## A325191.P16613511482605366879

`A198321(A080036(n))`
-/

namespace A325191.P16613511482605366879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198321 (A080036 n).toNat

end

end A325191.P16613511482605366879

namespace A325191

/-- `A198321(A080036(n))` -/
def P16613511482605366879.Spec : Prop :=
  ∀ n, P16613511482605366879.a n = A325191 n

end A325191

/-! ## A325191.P4112074067535946276

`A029655(n)-A007318(n)`
-/

namespace A325191.P4112074067535946276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029655 n - A007318 n

end

end A325191.P4112074067535946276

namespace A325191

/-- `A029655(n)-A007318(n)` -/
def P4112074067535946276.Spec : Prop :=
  ∀ n, P4112074067535946276.a n = A325191 n

theorem P4112074067535946276.correct : P4112074067535946276.Spec := by
  intro n
  simp only [A325191, Nat.add_sub_cancel, A325191.P4112074067535946276.a, A325191.P1948114789834443761.a, A007318, A007318.P11755526479805562006.a, A010054, A010054.P18347828677204923252.a, A029655, A029655.P14912270738703485013.a, A074909, A074909.P6402560185863182536.a, A005369, A005369.P10796159359873341658.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A325191

/-! ## A325191.P13927701399233777094

`A124927(n)-A080233(n)`
-/

namespace A325191.P13927701399233777094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124927 n - A080233 n

end

end A325191.P13927701399233777094

namespace A325191

/-- `A124927(n)-A080233(n)` -/
def P13927701399233777094.Spec : Prop :=
  ∀ n, P13927701399233777094.a n = A325191 n

end A325191

/-! ## A325191.P11014509786836151966

`A029621(n)%A029655(n)`
-/

namespace A325191.P11014509786836151966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A029621 n) (A029655 n)

end

end A325191.P11014509786836151966

namespace A325191

/-- `A029621(n)%A029655(n)` -/
def P11014509786836151966.Spec : Prop :=
  ∀ n, P11014509786836151966.a n = A325191 n

end A325191

/-! ## A325191.P14441587504741213676

`A074909(n)%A013610(n)`
-/

namespace A325191.P14441587504741213676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A074909 n) (A013610 n)

end

end A325191.P14441587504741213676

namespace A325191

/-- `A074909(n)%A013610(n)` -/
def P14441587504741213676.Spec : Prop :=
  ∀ n, P14441587504741213676.a n = A325191 n

end A325191

/-! ## A325191.P5630552810683314116

`A227396(n)%A013610(n)`
-/

namespace A325191.P5630552810683314116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A227396 n) (A013610 n)

end

end A325191.P5630552810683314116

namespace A325191

/-- `A227396(n)%A013610(n)` -/
def P5630552810683314116.Spec : Prop :=
  ∀ n, P5630552810683314116.a n = A325191 n

end A325191

/-! ## A325191.P9608840115912450458

`A029602(n)%A029637(n+1)`
-/

namespace A325191.P9608840115912450458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A029602 n) (A029637 (n + 1))

end

end A325191.P9608840115912450458

namespace A325191

/-- `A029602(n)%A029637(n+1)` -/
def P9608840115912450458.Spec : Prop :=
  ∀ n, P9608840115912450458.a n = A325191 n

end A325191

/-! ## A325191.P880781488655414742

`A212362(n)%A029637(n+1)`
-/

namespace A325191.P880781488655414742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A212362 n) (A029637 (n + 1))

end

end A325191.P880781488655414742

namespace A325191

/-- `A212362(n)%A029637(n+1)` -/
def P880781488655414742.Spec : Prop :=
  ∀ n, P880781488655414742.a n = A325191 n

end A325191

/-! ## A325191.P8713920811001617680

`A007318(A007401(n+1))-char[∑[n]]`
-/

namespace A325191.P8713920811001617680
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A007401 (n + 1)).toNat - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A325191.P8713920811001617680

namespace A325191

/-- `A007318(A007401(n+1))-char[∑[n]]` -/
def P8713920811001617680.Spec : Prop :=
  ∀ n, P8713920811001617680.a n = A325191 n

end A325191

/-! ## A325191.P17004457845338698350

`ceil(A074909(n)-1/A002260(n+1))`
-/

namespace A325191.P17004457845338698350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A074909 n : ℚ) - 1 / (A002260 (n + 1) : ℚ)⌉

end

end A325191.P17004457845338698350

namespace A325191

/-- `ceil(A074909(n)-1/A002260(n+1))` -/
def P17004457845338698350.Spec : Prop :=
  ∀ n, P17004457845338698350.a n = A325191 n

end A325191

/-! ## A325191.P5988204684972921595

`A110813((2*n)%(n+1))-A007318(n)`
-/

namespace A325191.P5988204684972921595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110813 (2 * n % (n + 1)) - A007318 n

end

end A325191.P5988204684972921595

namespace A325191

/-- `A110813((2*n)%(n+1))-A007318(n)` -/
def P5988204684972921595.Spec : Prop :=
  ∀ n, P5988204684972921595.a n = A325191 n

end A325191

/-! ## A325191.P17432494939123353203

`A057427(A002262(n))*A074909(n)`
-/

namespace A325191.P17432494939123353203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A002262 n).toNat * A074909 n

end

end A325191.P17432494939123353203

namespace A325191

/-- `A057427(A002262(n))*A074909(n)` -/
def P17432494939123353203.Spec : Prop :=
  ∀ n, P17432494939123353203.a n = A325191 n

end A325191

/-! ## A325191.P2308154870774918662

`A060576(A002262(n)+1)*A074909(n)`
-/

namespace A325191.P2308154870774918662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060576 (A002262 n + 1).toNat * A074909 n

end

end A325191.P2308154870774918662

namespace A325191

/-- `A060576(A002262(n)+1)*A074909(n)` -/
def P2308154870774918662.Spec : Prop :=
  ∀ n, P2308154870774918662.a n = A325191 n

end A325191

/-! ## A325191.P9251852117676452979

`A007318(A007401(n+1))%A013610(n)`
-/

namespace A325191.P9251852117676452979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007318 (A007401 (n + 1)).toNat) (A013610 n)

end

end A325191.P9251852117676452979

namespace A325191

/-- `A007318(A007401(n+1))%A013610(n)` -/
def P9251852117676452979.Spec : Prop :=
  ∀ n, P9251852117676452979.a n = A325191 n

end A325191

/-! ## A325191.P5114194664442460525

`A074909(n)+A124927(n)-A028326(n)`
-/

namespace A325191.P5114194664442460525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074909 n + (A124927 n - A028326 n)

end

end A325191.P5114194664442460525

namespace A325191

/-- `A074909(n)+A124927(n)-A028326(n)` -/
def P5114194664442460525.Spec : Prop :=
  ∀ n, P5114194664442460525.a n = A325191 n

end A325191

/-! ## A325191.P2171092993523595433

`A206735(comp[∑[n-1]])`
-/

namespace A325191.P2171092993523595433
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206735 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A325191.P2171092993523595433

namespace A325191

/-- `A206735(comp[∑[n-1]])` -/
def P2171092993523595433.Spec : Prop :=
  ∀ n, P2171092993523595433.a n = A325191 n

end A325191

/-!
# A325192: Regular triangle read by rows where T(n,k) is the number of integer partitions of n such that the difference between the length of the minimal square containing and the maximal square contained in the Young diagram is k.

The programs for A325192, there is no canonical definition to state claims against.
-/

/-! ## A325192.P15635680120787144021

`A277142(A157446(2*(n+1))-A008619(n))`
-/

namespace A325192.P15635680120787144021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277142 (A157446 (2 * (n + 1)) - A008619 n).toNat

end

end A325192.P15635680120787144021

/-! ## A325192.P5249420864097664002

`A036581(A073651(3*n+2)+A004526(n))`
-/

namespace A325192.P5249420864097664002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036581 (A073651 (3 * n + 2) + A004526 n).toNat

end

end A325192.P5249420864097664002

/-! ## A325192.P41812622400989604

`A304382(3*n+4)%gcd(n+2, A000225(2*n))`
-/

namespace A325192.P41812622400989604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A304382 (3 * n + 4)) (Int.gcd (n + 2 : ℤ) (A000225 (2 * n)) : ℤ)

end

end A325192.P41812622400989604

/-! ## A325192.P16530920380016512365

`and(A271224(A001405(n)), A317023(n))`
-/

namespace A325192.P16530920380016512365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A271224 (A001405 n).toNat) (A317023 n)

end

end A325192.P16530920380016512365

/-! ## A325192.P5390945451881662343

`A080843(A153663(n+1)-A001971(n))`
-/

namespace A325192.P5390945451881662343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080843 (A153663 (n + 1) - A001971 n).toNat

end

end A325192.P5390945451881662343

/-!
# A325193: Number of integer partitions whose sum plus co-rank is n, where co-rank is maximum of length and largest part.

The programs for A325193, there is no canonical definition to state claims against.
-/

/-! ## A325193.P14406904618495141927

`A000726(n)-A123580(A027193(n))`
-/

namespace A325193.P14406904618495141927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000726 n - A123580 (A027193 n).toNat

end

end A325193.P14406904618495141927

/-! ## A325193.P1907844427467812442

`Δ[A321729(n)-A023895(n)]`
-/

namespace A325193.P1907844427467812442
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321729 n - A023895 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A325193.P1907844427467812442

/-! ## A325193.P12995160574509010353

`A085811(n+1)+A074206(A132456(n)%A367910(n+2))`
-/

namespace A325193.P12995160574509010353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085811 (n + 1) + A074206 (Int.tmod (A132456 n) (A367910 (n + 2))).toNat

end

end A325193.P12995160574509010353

/-! ## A325193.P5340831662214827951

`A051061(A051053(n))+A005916(n)`
-/

namespace A325193.P5340831662214827951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051061 (A051053 n).toNat + A005916 n

end

end A325193.P5340831662214827951

/-! ## A325193.P1606085233570726230

`A189640(A006452(n))+A181531(n)`
-/

namespace A325193.P1606085233570726230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189640 (A006452 n).toNat + A181531 n

end

end A325193.P1606085233570726230

/-!
# A325194: Regular triangle read by rows where T(n,k) is the number of integer partitions of n with co-rank n - k, where co-rank is the greater of the length and the largest part.

The programs for A325194, there is no canonical definition to state claims against.
-/

/-! ## A325194.P11848451179923791689

`A284557(A122848(n)*A151512(n))`
-/

namespace A325194.P11848451179923791689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284557 (A122848 n * A151512 n).toNat

end

end A325194.P11848451179923791689

/-! ## A325194.P6669885207783116423

`A248639(A208673(n))+A010052(2*n+1)`
-/

namespace A325194.P6669885207783116423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248639 (A208673 n).toNat + A010052 (2 * n + 1)

end

end A325194.P6669885207783116423

/-! ## A325194.P4030512868298079554

`C(A332278(A238802(n)), A337942(n+1))`
-/

namespace A325194.P4030512868298079554
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A332278 (A238802 n).toNat).toNat (A337942 (n + 1)).toNat

end

end A325194.P4030512868298079554

/-! ## A325194.P18137143831308930734

`A259170(n)%A399381(n+1)`
-/

namespace A325194.P18137143831308930734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A259170 n) (A399381 (n + 1))

end

end A325194.P18137143831308930734

/-!
# A325195: Difference between the length of the minimal triangular partition containing and the maximal triangular partition contained in the Young diagram of the integer partition with Heinz number n.

The programs for A325195, there is no canonical definition to state claims against.
-/

/-! ## A325195.P18134509972581156933

`A065770(n+1)-A325169(n+1)`
-/

namespace A325195.P18134509972581156933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065770 (n + 1) - A325169 (n + 1)

end

end A325195.P18134509972581156933

/-! ## A325195.P6885454702758553707

`A065770(n+1)-ceil(sqrt(A069283((n+1)*3^(n%2))))`
-/

namespace A325195.P6885454702758553707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065770 (n + 1) - ⌈Real.sqrt (A069283 ((n + 1) * 3 ^ (n % 2)) : ℝ)⌉

end

end A325195.P6885454702758553707

/-! ## A325195.P15086980474619364175

`A065770(n+1)-A325225((n+1)/ceil(xor(n, n+1)/4))`
-/

namespace A325195.P15086980474619364175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065770 (n + 1) - A325225 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (⌈(Nat.xor n (n + 1) : ℚ) / 4⌉ : ℚ))).toNat

end

end A325195.P15086980474619364175

/-! ## A325195.P14163152931598373974

`A065770(n+1)-A325225(A259445(n+1))`
-/

namespace A325195.P14163152931598373974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065770 (n + 1) - A325225 (A259445 (n + 1)).toNat

end

end A325195.P14163152931598373974

/-! ## A325195.P10266945205078034781

`A065770(n+1)-A325225(A327937(n+1))`
-/

namespace A325195.P10266945205078034781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065770 (n + 1) - A325225 (A327937 (n + 1)).toNat

end

end A325195.P10266945205078034781

/-! ## A325195.P16614969733315475113

`A297113(n+1)-(A325169(n+1)+A324179(n+1))`
-/

namespace A325195.P16614969733315475113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297113 (n + 1) - (A325169 (n + 1) + A324179 (n + 1))

end

end A325195.P16614969733315475113

/-! ## A325195.P18428551641729692215

`A065770(n+1)-A001222(A325183(n+1))`
-/

namespace A325195.P18428551641729692215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065770 (n + 1) - A001222 (A325183 (n + 1)).toNat

end

end A325195.P18428551641729692215

/-! ## A325195.P14624807180631063348

`A079067(A325183(n+1))-A324179(n+1)`
-/

namespace A325195.P14624807180631063348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079067 (A325183 (n + 1)).toNat - A324179 (n + 1)

end

end A325195.P14624807180631063348

/-! ## A325195.P8799876587089211005

`A065770(n+1)-A046660(A325183(n+1)²)`
-/

namespace A325195.P8799876587089211005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065770 (n + 1) - A046660 (A325183 (n + 1) ^ 2).toNat

end

end A325195.P8799876587089211005

/-! ## A325195.P15055285121093385314

`A263297(n+1)-A001221(A122111(n+1))`
-/

namespace A325195.P15055285121093385314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263297 (n + 1) - A001221 (A122111 (n + 1)).toNat

end

end A325195.P15055285121093385314

/-!
# A325196: Heinz numbers of integer partitions such that the difference between the length of the minimal triangular partition containing and the maximal triangular partition contained in the Young diagram is 1.

The programs for A325196, there is no canonical definition to state claims against.
-/

/-! ## A325196.P2130223362469409780

`eq[1, A325195(n+1)]+1`
-/

namespace A325196.P2130223362469409780
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325195 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A325196.P2130223362469409780

/-! ## A325196.P14830658003858497766

`eq[1, A325195(A028310(n))]`
-/

namespace A325196.P14830658003858497766
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325195 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A325196.P14830658003858497766

/-! ## A325196.P16526194623896471085

`A020725(eq[1, A325195(n+1)])`
-/

namespace A325196.P16526194623896471085
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325195 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A325196.P16526194623896471085

/-! ## A325196.P10663256675720638675

`A065475(eq[1, A325195(n+1)])`
-/

namespace A325196.P10663256675720638675
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325195 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A325196.P10663256675720638675

/-! ## A325196.P15460087475831308650

`eq[1, A325195(A233583(n+1))]`
-/

namespace A325196.P15460087475831308650
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325195 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A325196.P15460087475831308650

/-!
# A325197: Heinz numbers of integer partitions such that the difference between the length of the minimal triangular partition containing and the maximal triangular partition contained in the Young diagram is 2.

The programs for A325197, there is no canonical definition to state claims against.
-/

/-! ## A325197.P18426596094232164119

`eq[2, A325195(n+1)]+1`
-/

namespace A325197.P18426596094232164119
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325195 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A325197.P18426596094232164119

/-! ## A325197.P9617086310517801304

`eq[2, A325195(A028310(n))]`
-/

namespace A325197.P9617086310517801304
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325195 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A325197.P9617086310517801304

/-! ## A325197.P6914892817476364889

`A020725(eq[2, A325195(n+1)])`
-/

namespace A325197.P6914892817476364889
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325195 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A325197.P6914892817476364889

/-! ## A325197.P2116680215992558459

`A065475(eq[2, A325195(n+1)])`
-/

namespace A325197.P2116680215992558459
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325195 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A325197.P2116680215992558459

/-! ## A325197.P5697890274261945618

`eq[2, A325195(A233583(n+1))]`
-/

namespace A325197.P5697890274261945618
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325195 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A325197.P5697890274261945618

/-!
# A325198: Positive numbers whose maximum prime index minus minimum prime index is 2.

The programs for A325198, the canonical program `A325198.P878202517069305870` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A325198 has offset 1).

The definition of A325198 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 164 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A325198.P17128471525986040819

`eq[1, A117370(n+1)]+1`
-/

namespace A325198.P17128471525986040819
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117370 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A325198.P17128471525986040819

namespace A325198

/-- `eq[1, A117370(n+1)]+1` -/
def P17128471525986040819.Spec : Prop :=
  ∀ n, (P17128471525986040819.a n : ℤ) = A325198 (n + 1)

end A325198

/-! ## A325198.P878202517069305870

`eq[2, A243055(n+1)]+1`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A325198

/-- `eq[2, A243055(n+1)]+1` -/
def P878202517069305870.Spec : Prop :=
  ∀ n, (P878202517069305870.a n : ℤ) = A325198 (n + 1)

theorem P878202517069305870.correct : P878202517069305870.Spec := by
  intro n
  simp only [A325198, Nat.add_sub_cancel]

end A325198

/-! ## A325198.P15344480510558692613

`eq[2, A243056(n+7)]+7`
-/

namespace A325198.P15344480510558692613
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243056 (n + 7)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 7

end

end A325198.P15344480510558692613

namespace A325198

/-- `eq[2, A243056(n+7)]+7` -/
def P15344480510558692613.Spec : Prop :=
  ∀ n, (P15344480510558692613.a n : ℤ) = A325198 (n + 1)

end A325198

/-! ## A325198.P8830953245129386264

`A061767(eq[1, A117370(n+1)])`
-/

namespace A325198.P8830953245129386264
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061767 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A325198.P8830953245129386264

namespace A325198

/-- `A061767(eq[1, A117370(n+1)])` -/
def P8830953245129386264.Spec : Prop :=
  ∀ n, P8830953245129386264.a n = A325198 (n + 1)

end A325198

/-! ## A325198.P8661959144785847906

`eq[1, A117370(A060000(n+1))]`
-/

namespace A325198.P8661959144785847906
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117370 (A060000 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A325198.P8661959144785847906

namespace A325198

/-- `eq[1, A117370(A060000(n+1))]` -/
def P8661959144785847906.Spec : Prop :=
  ∀ n, (P8661959144785847906.a n : ℤ) = A325198 (n + 1)

end A325198

/-! ## A325198.P3625850160869928750

`eq[A006530(n+1), A117367(A117367(n+1))]+1`
-/

namespace A325198.P3625850160869928750
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117367 (A117367 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A325198.P3625850160869928750

namespace A325198

/-- `eq[A006530(n+1), A117367(A117367(n+1))]+1` -/
def P3625850160869928750.Spec : Prop :=
  ∀ n, (P3625850160869928750.a n : ℤ) = A325198 (n + 1)

end A325198

/-!
# A325199: Number of integer partitions of n such that the difference between the length of the minimal triangular partition containing and the maximal triangular partition contained in the Young diagram is 2.

The programs for A325199, there is no canonical definition to state claims against.
-/

/-! ## A325199.P18400291423223122706

`A325200(∑[n]+2)`
-/

namespace A325199.P18400291423223122706
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325200 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A325199.P18400291423223122706

/-! ## A325199.P10925651106243409364

`A325200(A133263(n))-A000007(n)`
-/

namespace A325199.P10925651106243409364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325200 (A133263 n).toNat - A000007 n

end

end A325199.P10925651106243409364

/-! ## A325199.P2945424884459154084

`A325200(A133263(n))-A151909(n)`
-/

namespace A325199.P2945424884459154084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325200 (A133263 n).toNat - A151909 n

end

end A325199.P2945424884459154084

/-! ## A325199.P15209908496078014411

`A057427(n)*A325200(A133263(n))`
-/

namespace A325199.P15209908496078014411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A325200 (A133263 n).toNat

end

end A325199.P15209908496078014411

/-! ## A325199.P10565378822082445694

`A325200(A133263(n))%A000041(n)`
-/

namespace A325199.P10565378822082445694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A325200 (A133263 n).toNat) (A000041 n)

end

end A325199.P10565378822082445694

