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
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C039
import Seq.B000.C041
import Seq.B000.C043
import Seq.B000.C044
import Seq.B000.C047
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
import Seq.B001.C012
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
import Seq.B003.C003
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B005.C000
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B008.C000
import Seq.B009.C000
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
# A274200: Limiting reverse row of the array A274193.

The programs for A274200, there is no canonical definition to state claims against.
-/

/-! ## A274200.P17594643143516775237

`A274193(∑[4*n])`
-/

namespace A274200.P17594643143516775237
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274193 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A274200.P17594643143516775237

/-! ## A274200.P12378336115014598481

`xor(1, xor(1, A274193(A001844(n+1))))`
-/

namespace A274200.P12378336115014598481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (Int.xor 1 (A274193 (A001844 (n + 1)).toNat))

end

end A274200.P12378336115014598481

/-! ## A274200.P3612142166678337

`A274193(2*(n+1)²)+n*A000007(n)`
-/

namespace A274200.P3612142166678337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274193 (2 * (n + 1) ^ 2) + (n : ℤ) * A000007 n

end

end A274200.P3612142166678337

/-! ## A274200.P16650897542307912110

`A274193(A046092(n))%A017558(n)`
-/

namespace A274200.P16650897542307912110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A274193 (A046092 n).toNat) (A017558 n)

end

end A274200.P16650897542307912110

/-! ## A274200.P14701911791389062117

`A274193(A001844(n+1))/A007318(∑[n])`
-/

namespace A274200.P14701911791389062117
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A274193 (A001844 (n + 1)).toNat : ℚ) / (A007318 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ)

end

end A274200.P14701911791389062117

/-!
# A274201: Limiting reverse row of the array A274196.

The programs for A274201, there is no canonical definition to state claims against.
-/

/-! ## A274201.P5677856616097924563

`A274196(∑[4*n])`
-/

namespace A274201.P5677856616097924563
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274196 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A274201.P5677856616097924563

/-! ## A274201.P16624802101299137322

`and(-1, A274196(A046092(n)))`
-/

namespace A274201.P16624802101299137322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A274196 (A046092 n).toNat)

end

end A274201.P16624802101299137322

/-! ## A274201.P10844860806973519230

`or(char[1], A274196(A001844(n+1)))`
-/

namespace A274201.P10844860806973519230
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A274196 (A001844 (n + 1)).toNat)

end

end A274201.P10844860806973519230

/-! ## A274201.P740496079501749345

`A274196(A001844(n+1))+A025444(n)`
-/

namespace A274201.P740496079501749345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274196 (A001844 (n + 1)).toNat + A025444 n

end

end A274201.P740496079501749345

/-! ## A274201.P15965096263523178548

`A274196(A001844(n+1))%A068236(n)`
-/

namespace A274201.P15965096263523178548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A274196 (A001844 (n + 1)).toNat) (A068236 n)

end

end A274201.P15965096263523178548

/-! ## A274201.P3507223753264343978

`A274196(A046092(n))%A068374(n+1)`
-/

namespace A274201.P3507223753264343978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A274196 (A046092 n).toNat) (A068374 (n + 1))

end

end A274201.P3507223753264343978

/-! ## A274201.P4038891023745650383

`A274196(A001844(n+1))/A007318(∑[n])`
-/

namespace A274201.P4038891023745650383
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A274196 (A001844 (n + 1)).toNat : ℚ) / (A007318 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ)

end

end A274201.P4038891023745650383

/-! ## A274201.P2630700390171978212

`A007318(C(2, n))*A274196(A001844(n+1))`
-/

namespace A274201.P2630700390171978212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A274196 (A001844 (n + 1)).toNat

end

end A274201.P2630700390171978212

/-! ## A274201.P8595864863187261297

`A274196(A001844(n+1))^A007318(∑[n+1])`
-/

namespace A274201.P8595864863187261297
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A274196 (A001844 (n + 1)).toNat : ℚ) ^ (A007318 (∑ j ∈ Finset.range (n + 1), f1 j) : ℤ)

end

end A274201.P8595864863187261297

/-!
# A274202: Primes congruent to 31 mod 65.

The programs for A274202, the canonical program `A274202.P1701483818387671169` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A274202 has offset 1).

The definition of A274202 is `verified`: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A274202.anchor (n : ℕ) (hn : 1 ≤ n) : A274202 n = (Nat.nth (fun p => p.Prime ∧ p % 65 = 31) (n - 1) : ℤ)` in `Proof.A274.A274202`. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A274202.P18288751684699558175

`∩[A030430(n+1), A102732(n+1)]`
-/

namespace A274202.P18288751684699558175
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030430 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102732 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A274202.P18288751684699558175

namespace A274202

/-- `∩[A030430(n+1), A102732(n+1)]` -/
def P18288751684699558175.Spec : Prop :=
  ∀ n, (P18288751684699558175.a n : ℤ) = A274202 (n + 1)

end A274202

/-! ## A274202.P1701483818387671169

`p?[5*13*n+31]`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A274202

/-- `p?[5*13*n+31]` -/
def P1701483818387671169.Spec : Prop :=
  ∀ n, (P1701483818387671169.a n : ℤ) = A274202 (n + 1)

theorem P1701483818387671169.correct : P1701483818387671169.Spec := by
  intro n
  simp only [A274202, Nat.add_sub_cancel]

end A274202

/-! ## A274202.P12707392810138941815

`p?[A139606(n)+A053742(n)]%A017248(n)`
-/

namespace A274202.P12707392810138941815
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139606 n + A053742 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A017248 n)

end

end A274202.P12707392810138941815

namespace A274202

/-- `p?[A139606(n)+A053742(n)]%A017248(n)` -/
def P12707392810138941815.Spec : Prop :=
  ∀ n, P12707392810138941815.a n = A274202 (n + 1)

end A274202

/-! ## A274202.P12039313748722740054

`p?[A139606(n)+A053742(n)]/(A000040(n+1)%2)!`
-/

namespace A274202.P12039313748722740054
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139606 n + A053742 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ) / (Nat.factorial (Int.tmod (A000040 (n + 1)) 2).toNat : ℚ)

end

end A274202.P12039313748722740054

namespace A274202

/-- `p?[A139606(n)+A053742(n)]/(A000040(n+1)%2)!` -/
def P12039313748722740054.Spec : Prop :=
  ∀ n, P12039313748722740054.a n = (A274202 (n + 1) : ℚ)

end A274202

/-! ## A274202.P16972984574750399049

`A000027(p?[A139606(n)+A053742(n)])`
-/

namespace A274202.P16972984574750399049
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139606 n + A053742 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A274202.P16972984574750399049

namespace A274202

/-- `A000027(p?[A139606(n)+A053742(n)])` -/
def P16972984574750399049.Spec : Prop :=
  ∀ n, P16972984574750399049.a n = A274202 (n + 1)

end A274202

/-! ## A274202.P796835341196385331

`∩[A090756(n+1), A102732(n+1)]`
-/

namespace A274202.P796835341196385331
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090756 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102732 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A274202.P796835341196385331

namespace A274202

/-- `∩[A090756(n+1), A102732(n+1)]` -/
def P796835341196385331.Spec : Prop :=
  ∀ n, (P796835341196385331.a n : ℤ) = A274202 (n + 1)

end A274202

/-! ## A274202.P18241896611747302465

`∩[A102732(n+1), A327752(n+1)]`
-/

namespace A274202.P18241896611747302465
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102732 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327752 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A274202.P18241896611747302465

namespace A274202

/-- `∩[A102732(n+1), A327752(n+1)]` -/
def P18241896611747302465.Spec : Prop :=
  ∀ n, (P18241896611747302465.a n : ℤ) = A274202 (n + 1)

end A274202

/-! ## A274202.P13417650835014405570

`∩[A004615(n+1), A102732(n+1)]`
-/

namespace A274202.P13417650835014405570
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004615 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102732 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A274202.P13417650835014405570

namespace A274202

/-- `∩[A004615(n+1), A102732(n+1)]` -/
def P13417650835014405570.Spec : Prop :=
  ∀ n, (P13417650835014405570.a n : ℤ) = A274202 (n + 1)

end A274202

/-! ## A274202.P1733741351097172503

`∩[A030430(n+1), A154609(n)]`
-/

namespace A274202.P1733741351097172503
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030430 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154609 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A274202.P1733741351097172503

namespace A274202

/-- `∩[A030430(n+1), A154609(n)]` -/
def P1733741351097172503.Spec : Prop :=
  ∀ n, (P1733741351097172503.a n : ℤ) = A274202 (n + 1)

end A274202

/-! ## A274202.P17065989590065545896

`∩[A102732(n+1), A331194(n+1)]`
-/

namespace A274202.P17065989590065545896
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102732 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331194 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A274202.P17065989590065545896

namespace A274202

/-- `∩[A102732(n+1), A331194(n+1)]` -/
def P17065989590065545896.Spec : Prop :=
  ∀ n, (P17065989590065545896.a n : ℤ) = A274202 (n + 1)

end A274202

/-! ## A274202.P18429232105150399070

`∩[A102732(n+1), A017281(n)]`
-/

namespace A274202.P18429232105150399070
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102732 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017281 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A274202.P18429232105150399070

namespace A274202

/-- `∩[A102732(n+1), A017281(n)]` -/
def P18429232105150399070.Spec : Prop :=
  ∀ n, (P18429232105150399070.a n : ℤ) = A274202 (n + 1)

end A274202

/-! ## A274202.P2538967731935161889

`record[A020639(A154609(5*n+2))]`
-/

namespace A274202.P2538967731935161889
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A154609 (5 * n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A274202.P2538967731935161889

namespace A274202

/-- `record[A020639(A154609(5*n+2))]` -/
def P2538967731935161889.Spec : Prop :=
  ∀ n, P2538967731935161889.a n = A274202 (n + 1)

end A274202

/-! ## A274202.P6977435279372257797

`record[A020639(A139606(n)+A053742(n))]`
-/

namespace A274202.P6977435279372257797
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A139606 n + A053742 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A274202.P6977435279372257797

namespace A274202

/-- `record[A020639(A139606(n)+A053742(n))]` -/
def P6977435279372257797.Spec : Prop :=
  ∀ n, P6977435279372257797.a n = A274202 (n + 1)

end A274202

/-! ## A274202.P3536478844194941292

`∩[A102732(n+1), A277588(n+1)]`
-/

namespace A274202.P3536478844194941292
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102732 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277588 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A274202.P3536478844194941292

namespace A274202

/-- `∩[A102732(n+1), A277588(n+1)]` -/
def P3536478844194941292.Spec : Prop :=
  ∀ n, (P3536478844194941292.a n : ℤ) = A274202 (n + 1)

end A274202

/-! ## A274202.P10331548015298603570

`∩[A102732(n+1), A225297(n+1)]`
-/

namespace A274202.P10331548015298603570
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102732 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225297 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A274202.P10331548015298603570

namespace A274202

/-- `∩[A102732(n+1), A225297(n+1)]` -/
def P10331548015298603570.Spec : Prop :=
  ∀ n, (P10331548015298603570.a n : ℤ) = A274202 (n + 1)

end A274202

/-! ## A274202.P4301445881523037039

`filter[A154609(n), A185705(#)]`
-/

namespace A274202.P4301445881523037039
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154609 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A185705 (f1 j).toNat = 1) n)

end

end A274202.P4301445881523037039

namespace A274202

/-- `filter[A154609(n), A185705(#)]` -/
def P4301445881523037039.Spec : Prop :=
  ∀ n, P4301445881523037039.a n = A274202 (n + 1)

end A274202

/-! ## A274202.P3719557746409986802

`filter[A102732(n+1), A185705(#)]`
-/

namespace A274202.P3719557746409986802
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102732 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A185705 (f1 j).toNat = 1) n)

end

end A274202.P3719557746409986802

namespace A274202

/-- `filter[A102732(n+1), A185705(#)]` -/
def P3719557746409986802.Spec : Prop :=
  ∀ n, P3719557746409986802.a n = A274202 (n + 1)

end A274202

/-! ## A274202.P6508296403262213665

`filter[A155086(2*n+1), A185705(#)]`
-/

namespace A274202.P6508296403262213665
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155086 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A185705 (f1 j).toNat = 1) n)

end

end A274202.P6508296403262213665

namespace A274202

/-- `filter[A155086(2*n+1), A185705(#)]` -/
def P6508296403262213665.Spec : Prop :=
  ∀ n, P6508296403262213665.a n = A274202 (n + 1)

end A274202

/-! ## A274202.P12978041625593293665

`filter[A063219(3*n+1), A185705(#)]`
-/

namespace A274202.P12978041625593293665
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063219 (3 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A185705 (f1 j).toNat = 1) n)

end

end A274202.P12978041625593293665

namespace A274202

/-- `filter[A063219(3*n+1), A185705(#)]` -/
def P12978041625593293665.Spec : Prop :=
  ∀ n, P12978041625593293665.a n = A274202 (n + 1)

end A274202

/-! ## A274202.P2877571485997246123

`∩[A102732(n+1), A016861(n)]`
-/

namespace A274202.P2877571485997246123
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102732 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016861 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A274202.P2877571485997246123

namespace A274202

/-- `∩[A102732(n+1), A016861(n)]` -/
def P2877571485997246123.Spec : Prop :=
  ∀ n, (P2877571485997246123.a n : ℤ) = A274202 (n + 1)

end A274202

/-!
# A274203: Expansion of x*(1 - x - x^3)/((1 - x)*(1 - 2*x - 3*x^2 - 2*x^3 - x^4)).

The programs for A274203, the canonical program `A274203.P5208136347761681551` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A274203 has offset 0).

The definition of A274203 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((x-x^2-x^4)/(1-3x-x^2+x^3+x^4+x^5))` (program `A274203.P5208136347761681551`, by `A274203.P5208136347761681551.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A274203.P5208136347761681551

`ogf((x-x^2-x^4)/(1-3x-x^2+x^3+x^4+x^5))`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A274203

/-- `ogf((x-x^2-x^4)/(1-3x-x^2+x^3+x^4+x^5))` -/
def P5208136347761681551.Spec : Prop :=
  ∀ n, P5208136347761681551.a n = A274203 n

theorem P5208136347761681551.correct : P5208136347761681551.Spec := by
  intro n
  simp only [A274203]

end A274203

/-! ## A274203.P446899835104608017

`floor((sqrt(2)+1)*a(n-1)+(sqrt(2)+1)*a(n-2))` with `a(0)=0, a(1)=1`
-/

namespace A274203.P446899835104608017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  ⌊(Real.sqrt (2 : ℝ) + 1) * (a (n - 1) : ℝ) + (Real.sqrt (2 : ℝ) + 1) * (a (n - 2) : ℝ)⌋

end

end A274203.P446899835104608017

namespace A274203

/-- `floor((sqrt(2)+1)*a(n-1)+(sqrt(2)+1)*a(n-2))` -/
def P446899835104608017.Spec : Prop :=
  ∀ n, P446899835104608017.a n = A274203 n

end A274203

/-! ## A274203.P4532593564702059894

`3*a(n-1)+a(n-2)-a(n-3)-a(n-4)-a(n-5)` with `a(0)=0, a(1)=1, a(2)=2, a(3)=7, a(4)=21`
-/

namespace A274203.P4532593564702059894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 2, 7, 21] fun n a =>
  3 * a (n - 1) + a (n - 2) - a (n - 3) - a (n - 4) - a (n - 5)

end

end A274203.P4532593564702059894

namespace A274203

/-- `3*a(n-1)+a(n-2)-a(n-3)-a(n-4)-a(n-5)` -/
def P4532593564702059894.Spec : Prop :=
  ∀ n, P4532593564702059894.a n = A274203 n

end A274203

/-! ## A274203.P15458492600714860793

`floor((sqrt(2)+1)*(a(n-1)+a(n-2)))` with `a(0)=0, a(1)=1`
-/

namespace A274203.P15458492600714860793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  ⌊(Real.sqrt (2 : ℝ) + 1) * (a (n - 1) + a (n - 2) : ℝ)⌋

end

end A274203.P15458492600714860793

namespace A274203

/-- `floor((sqrt(2)+1)*(a(n-1)+a(n-2)))` -/
def P15458492600714860793.Spec : Prop :=
  ∀ n, P15458492600714860793.a n = A274203 n

end A274203

/-! ## A274203.P14921600413163886994

`floor((a(n-1)+a(n-2))/(sqrt(2)-1))` with `a(0)=0, a(1)=1`
-/

namespace A274203.P14921600413163886994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  ⌊(a (n - 1) + a (n - 2) : ℝ) / (Real.sqrt (2 : ℝ) - 1)⌋

end

end A274203.P14921600413163886994

namespace A274203

/-- `floor((a(n-1)+a(n-2))/(sqrt(2)-1))` -/
def P14921600413163886994.Spec : Prop :=
  ∀ n, P14921600413163886994.a n = A274203 n

end A274203

/-!
# A274204: Numbers n such that there is no cubefree number that is the sum of two nonzero squares in exactly n ways.

The programs for A274204, there is no canonical definition to state claims against.
-/

/-! ## A274204.P7842528669954268157

`lt[1, A301574(A004277(n))]`
-/

namespace A274204.P7842528669954268157
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301574 (A004277 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A274204.P7842528669954268157

/-! ## A274204.P506860927642617231

`comp[A124072(A003586(n+1))]`
-/

namespace A274204.P506860927642617231
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124072 (A003586 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A274204.P506860927642617231

/-! ## A274204.P11046497236671332448

`comp[floor(A008619(n)/A065330(n+1))]`
-/

namespace A274204.P11046497236671332448
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A008619 n : ℚ) / (A065330 (n + 1) : ℚ)⌋

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A274204.P11046497236671332448

/-! ## A274204.P13819454004366384974

`comp[A124072(A036561(n))]`
-/

namespace A274204.P13819454004366384974
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124072 (A036561 n).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A274204.P13819454004366384974

/-!
# A274205: Numbers such that the sum of divisors is twice the sum of the exponential divisors.

The programs for A274205, there is no canonical definition to state claims against.
-/

/-! ## A274205.P1100857379181136761

`A106618(floor(4*4^(n+1)/5))+floor(4*4^(n+1)/5)`
-/

namespace A274205.P1100857379181136761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106618 ⌊4 * ((4 ^ (n + 1) : ℚ) / 5)⌋.toNat + ⌊4 * ((4 ^ (n + 1) : ℚ) / 5)⌋

end

end A274205.P1100857379181136761

/-!
# A274206: a(n) = the last nonzero digit of n followed by all the trailing zeros of n.

The programs for A274206, the canonical program `A274206.P15406135447478181087` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A274206 has offset 1).

The definition of A274206 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A274206.P15406135447478181087

`(n+1)%(10^(val(n+1, 10)+1))`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A274206

/-- `(n+1)%(10^(val(n+1, 10)+1))` -/
def P15406135447478181087.Spec : Prop :=
  ∀ n, (P15406135447478181087.a n : ℤ) = A274206 (n + 1)

theorem P15406135447478181087.correct : P15406135447478181087.Spec := by
  intro n
  simp only [A274206, Nat.add_sub_cancel]

end A274206

/-! ## A274206.P16201747773322554499

`(n+1)%(10^A160094(n+1))`
-/

namespace A274206.P16201747773322554499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 1 : ℤ) (SequenceMachineLib.roundAway ((10 : ℚ) ^ (A160094 (n + 1) : ℤ)))

end

end A274206.P16201747773322554499

namespace A274206

/-- `(n+1)%(10^A160094(n+1))` -/
def P16201747773322554499.Spec : Prop :=
  ∀ n, P16201747773322554499.a n = A274206 (n + 1)

end A274206

/-! ## A274206.P11129958706044515480

`A251984(A055120(n+1))`
-/

namespace A274206.P11129958706044515480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251984 (A055120 (n + 1)).toNat

end

end A274206.P11129958706044515480

namespace A274206

/-- `A251984(A055120(n+1))` -/
def P11129958706044515480.Spec : Prop :=
  ∀ n, P11129958706044515480.a n = A274206 (n + 1)

end A274206

/-! ## A274206.P2195509890621295217

`A251984(A089186(n+1))`
-/

namespace A274206.P2195509890621295217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251984 (A089186 (n + 1)).toNat

end

end A274206.P2195509890621295217

namespace A274206

/-- `A251984(A089186(n+1))` -/
def P2195509890621295217.Spec : Prop :=
  ∀ n, P2195509890621295217.a n = A274206 (n + 1)

end A274206

/-! ## A274206.P14546189012156947891

`A143473(A251984(n+1))`
-/

namespace A274206.P14546189012156947891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143473 (A251984 (n + 1)).toNat

end

end A274206.P14546189012156947891

namespace A274206

/-- `A143473(A251984(n+1))` -/
def P14546189012156947891.Spec : Prop :=
  ∀ n, P14546189012156947891.a n = A274206 (n + 1)

end A274206

/-! ## A274206.P6440968225329582141

`A251984(A178914(n+1))`
-/

namespace A274206.P6440968225329582141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251984 (A178914 (n + 1)).toNat

end

end A274206.P6440968225329582141

namespace A274206

/-- `A251984(A178914(n+1))` -/
def P6440968225329582141.Spec : Prop :=
  ∀ n, P6440968225329582141.a n = A274206 (n + 1)

end A274206

/-! ## A274206.P7424545857439302478

`A055120(A251984(ϕ²-(ϕ-n)))`
-/

namespace A274206.P7424545857439302478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055120 (A251984 (SequenceMachineLib.roundAway (Real.goldenRatio ^ 2 - (Real.goldenRatio - (n : ℝ)))).toNat).toNat

end

end A274206.P7424545857439302478

namespace A274206

/-- `A055120(A251984(ϕ²-(ϕ-n)))` -/
def P7424545857439302478.Spec : Prop :=
  ∀ n, P7424545857439302478.a n = A274206 (n + 1)

end A274206

/-! ## A274206.P16212700303778735178

`A251984(xor(1, xor(1, A251984(n+1))))`
-/

namespace A274206.P16212700303778735178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251984 (Int.xor 1 (Int.xor 1 (A251984 (n + 1)))).toNat

end

end A274206.P16212700303778735178

namespace A274206

/-- `A251984(xor(1, xor(1, A251984(n+1))))` -/
def P16212700303778735178.Spec : Prop :=
  ∀ n, P16212700303778735178.a n = A274206 (n + 1)

end A274206

/-! ## A274206.P2628492640294740233

`A251984(A251984(n+1)+n*A000007(n))`
-/

namespace A274206.P2628492640294740233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251984 (A251984 (n + 1) + (n : ℤ) * A000007 n).toNat

end

end A274206.P2628492640294740233

namespace A274206

/-- `A251984(A251984(n+1)+n*A000007(n))` -/
def P2628492640294740233.Spec : Prop :=
  ∀ n, P2628492640294740233.a n = A274206 (n + 1)

end A274206

/-! ## A274206.P8894323554228440651

`A251984(2*A251984(n+1)-A251984(n+1))`
-/

namespace A274206.P8894323554228440651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251984 (2 * A251984 (n + 1) - A251984 (n + 1)).toNat

end

end A274206.P8894323554228440651

namespace A274206

/-- `A251984(2*A251984(n+1)-A251984(n+1))` -/
def P8894323554228440651.Spec : Prop :=
  ∀ n, P8894323554228440651.a n = A274206 (n + 1)

end A274206

/-! ## A274206.P17449776551683146653

`A251984(C(A251984(n+1), A251984(n+1)-1))`
-/

namespace A274206.P17449776551683146653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251984 (Nat.choose (A251984 (n + 1)).toNat (A251984 (n + 1) - 1).toNat)

end

end A274206.P17449776551683146653

namespace A274206

/-- `A251984(C(A251984(n+1), A251984(n+1)-1))` -/
def P17449776551683146653.Spec : Prop :=
  ∀ n, P17449776551683146653.a n = A274206 (n + 1)

end A274206

/-! ## A274206.P11211183649240686643

`A251984(A251984(n+1)-A000007(n))-A000007(n)`
-/

namespace A274206.P11211183649240686643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251984 (A251984 (n + 1) - A000007 n).toNat - A000007 n

end

end A274206.P11211183649240686643

namespace A274206

/-- `A251984(A251984(n+1)-A000007(n))-A000007(n)` -/
def P11211183649240686643.Spec : Prop :=
  ∀ n, P11211183649240686643.a n = A274206 (n + 1)

end A274206

/-! ## A274206.P7635159839398604231

`A251984(A251984(n+1)+and(2, A025620(n+1)))`
-/

namespace A274206.P7635159839398604231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251984 (A251984 (n + 1) + Int.land 2 (A025620 (n + 1))).toNat

end

end A274206.P7635159839398604231

namespace A274206

/-- `A251984(A251984(n+1)+and(2, A025620(n+1)))` -/
def P7635159839398604231.Spec : Prop :=
  ∀ n, P7635159839398604231.a n = A274206 (n + 1)

end A274206

/-! ## A274206.P13108712463043138545

`A251984(9*(n+1))`
-/

namespace A274206.P13108712463043138545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251984 (9 * (n + 1))

end

end A274206.P13108712463043138545

namespace A274206

/-- `A251984(9*(n+1))` -/
def P13108712463043138545.Spec : Prop :=
  ∀ n, P13108712463043138545.a n = A274206 (n + 1)

end A274206

/-! ## A274206.P12774512892978405800

`(n+1)%A011557(Δ[A171397(n)])`
-/

namespace A274206.P12774512892978405800
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171397 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 1 : ℤ) (A011557 (f1 (n + 1) - f1 n).toNat)

end

end A274206.P12774512892978405800

namespace A274206

/-- `(n+1)%A011557(Δ[A171397(n)])` -/
def P12774512892978405800.Spec : Prop :=
  ∀ n, P12774512892978405800.a n = A274206 (n + 1)

end A274206

/-!
# A274208: Sum of the areas of all bargraphs of site-perimeter n.

The programs for A274208, there is no canonical definition to state claims against.
-/

/-! ## A274208.P9944141334068921672

`A067817(A067868(n))%A167433(n)`
-/

namespace A274208.P9944141334068921672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A067817 (A067868 n).toNat) (A167433 n)

end

end A274208.P9944141334068921672

/-! ## A274208.P10408366590750710062

`A065237(A081472(n+1))%A076227(n)`
-/

namespace A274208.P10408366590750710062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A065237 (A081472 (n + 1)).toNat) (A076227 n)

end

end A274208.P10408366590750710062

/-! ## A274208.P6011341614181777074

`A277632(n+1)%A336946(A293607(n))`
-/

namespace A274208.P6011341614181777074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A277632 (n + 1)) (A336946 (A293607 n).toNat)

end

end A274208.P6011341614181777074

/-! ## A274208.P6376129899361216154

`A212134(A212082(n+1))%A348756(n+1)`
-/

namespace A274208.P6376129899361216154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A212134 (A212082 (n + 1)).toNat) (A348756 (n + 1))

end

end A274208.P6376129899361216154

/-! ## A274208.P12749020488453436105

`A344607(A344372(2*n+1))%A005169(n)`
-/

namespace A274208.P12749020488453436105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A344607 (A344372 (2 * n + 1)).toNat) (A005169 n)

end

end A274208.P12749020488453436105

/-!
# A274212: The factorization of n contains only lesser of twin primes.

The programs for A274212, there is no canonical definition to state claims against.
-/

/-! ## A274212.P13228783216986451363

`∩[A062505(n+1), A230780(n+1)]`
-/

namespace A274212.P13228783216986451363
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062505 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230780 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A274212.P13228783216986451363

/-! ## A274212.P1428691543348276359

`record[A072963(n+1)-A005072(n+1)]`
-/

namespace A274212.P1428691543348276359
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072963 (n + 1) - A005072 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A274212.P1428691543348276359

/-! ## A274212.P13573164826906444140

`record[A072963(n+1)/A170824(n+1)]`
-/

namespace A274212.P13573164826906444140
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A072963 (n + 1) : ℚ) / (A170824 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A274212.P13573164826906444140

/-! ## A274212.P15530820749088707739

`record[A072963(n+1)/A248909(n+1)]`
-/

namespace A274212.P15530820749088707739
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A072963 (n + 1) : ℚ) / (A248909 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A274212.P15530820749088707739

/-! ## A274212.P18029607841920303288

`eq[A003961(n+1), A166590(n+1)]+1`
-/

namespace A274212.P18029607841920303288
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003961 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166590 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A274212.P18029607841920303288

/-! ## A274212.P18269180609898864071

`A004442(eq[A003961(n+1), A166590(n+1)])`
-/

namespace A274212.P18269180609898864071
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003961 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166590 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A274212.P18269180609898864071

/-! ## A274212.P4056371226650753236

`A079097(eq[A003961(n+1), A166590(n+1)])`
-/

namespace A274212.P4056371226650753236
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003961 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166590 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079097 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A274212.P4056371226650753236

/-! ## A274212.P14484057848007526777

`A141310(eq[A003961(n+1), A166590(n+1)])`
-/

namespace A274212.P14484057848007526777
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003961 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166590 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141310 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A274212.P14484057848007526777

/-! ## A274212.P14837541316002558773

`∩[A062505(n+1), A166104(n+1)]`
-/

namespace A274212.P14837541316002558773
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062505 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166104 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A274212.P14837541316002558773

/-! ## A274212.P17640919039992912946

`eq[A003958(A003961(n+1)), A003959(n+1)]+1`
-/

namespace A274212.P17640919039992912946
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003958 (A003961 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003959 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A274212.P17640919039992912946

/-!
# A274213: Meta recurrence: a(0) = 1, a(1) = 2, a(2) = 3, a(n) = a(n - a(n-3)) + 3 for n > 2.

The programs for A274213, the canonical program `A274213.P8942127829647536100` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A274213 has offset 0).

The definition of A274213 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3+a(n-a(n-3))` (program `A274213.P8942127829647536100`, by `A274213.P8942127829647536100.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A274213.P8942127829647536100

`3+a(n-a(n-3))` with `a(0)=1, a(1)=2, a(2)=3`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A274213

/-- `3+a(n-a(n-3))` -/
def P8942127829647536100.Spec : Prop :=
  ∀ n, (P8942127829647536100.a n : ℤ) = A274213 n

theorem P8942127829647536100.correct : P8942127829647536100.Spec := by
  intro n
  simp only [A274213]

end A274213

/-! ## A274213.P6848672555813712895

`a(n-a(n-3))+3` with `a(0)=1, a(1)=2, a(2)=3`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A274213.P6848672555813712895
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 3] fun n a =>
  a (n - a (n - 3)) + 3

end

end A274213.P6848672555813712895

namespace A274213

/-- `a(n-a(n-3))+3` -/
def P6848672555813712895.Spec : Prop :=
  ∀ n, (P6848672555813712895.a n : ℤ) = A274213 n

theorem P6848672555813712895.correct : P6848672555813712895.Spec := by
  intro n
  simp only [A274213, Nat.add_sub_cancel, A274213.P6848672555813712895.a, A274213.P8942127829647536100.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A274213

/-! ## A274213.P1305155175338124444

`3-ceil(-a(n-a(n-3)))` with `a(0)=1, a(1)=2, a(2)=3`

`ceil` is left out, it is the identity on integers.
-/

namespace A274213.P1305155175338124444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 3] fun n a =>
  3 - (-a ((n : ℤ) - a (n - 3)).toNat)

end

end A274213.P1305155175338124444

namespace A274213

/-- `3-ceil(-a(n-a(n-3)))` -/
def P1305155175338124444.Spec : Prop :=
  ∀ n, P1305155175338124444.a n = A274213 n

end A274213

/-!
# A274215: Numbers n such that 8^n + 7^(n+1) is prime.

The programs for A274215, there is no canonical definition to state claims against.
-/

/-! ## A274215.P146464720280523837

`A119215(A119265(n+1))+A119113(n+1)`
-/

namespace A274215.P146464720280523837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119215 (A119265 (n + 1)).toNat + A119113 (n + 1)

end

end A274215.P146464720280523837

/-!
# A274216: Binary representation of the x-axis, from the origin to the right edge, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 22", based on the 5-celled von Neumann neighborhood.

The programs for A274216, the canonical program `A274216.P7897758151784817100` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A274216 has offset 0).

The definition of A274216 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 114 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A274216.P8189425616492807893

`A006943(floor(log2(A274473(n))))`
-/

namespace A274216.P8189425616492807893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006943 (Nat.log 2 (A274473 n).toNat)

end

end A274216.P8189425616492807893

namespace A274216

/-- `A006943(floor(log2(A274473(n))))` -/
def P8189425616492807893.Spec : Prop :=
  ∀ n, P8189425616492807893.a n = A274216 n

end A274216

/-! ## A274216.P7897758151784817100

`A006943(and(A003817(n), A042948(n)))`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A274216

/-- `A006943(and(A003817(n), A042948(n)))` -/
def P7897758151784817100.Spec : Prop :=
  ∀ n, P7897758151784817100.a n = A274216 n

theorem P7897758151784817100.correct : P7897758151784817100.Spec := by
  intro n
  simp only [A274216]

end A274216

/-! ## A274216.P12786963799363880712

`gcd(A006943(A003817(n)), A274060(n))`
-/

namespace A274216.P12786963799363880712
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A006943 (A003817 n).toNat) (A274060 n)

end

end A274216.P12786963799363880712

namespace A274216

/-- `gcd(A006943(A003817(n)), A274060(n))` -/
def P12786963799363880712.Spec : Prop :=
  ∀ n, (P12786963799363880712.a n : ℤ) = A274216 n

end A274216

/-! ## A274216.P10774022148178349330

`A007088(A274473(n))`
-/

namespace A274216.P10774022148178349330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A274473 n).toNat

end

end A274216.P10774022148178349330

namespace A274216

/-- `A007088(A274473(n))` -/
def P10774022148178349330.Spec : Prop :=
  ∀ n, P10774022148178349330.a n = A274216 n

end A274216

/-! ## A274216.P5527056132176164623

`A004288(A274473(n))`
-/

namespace A274216.P5527056132176164623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004288 (A274473 n).toNat

end

end A274216.P5527056132176164623

namespace A274216

/-- `A004288(A274473(n))` -/
def P5527056132176164623.Spec : Prop :=
  ∀ n, P5527056132176164623.a n = A274216 n

end A274216

/-!
# A274217: Sum of the site-perimeters of all bargraphs of area n.

The programs for A274217, there is no canonical definition to state claims against.
-/

/-! ## A274217.P6337733070929378124

`2*A055086(n*A150257(n))`
-/

namespace A274217.P6337733070929378124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A055086 ((n : ℤ) * A150257 n).toNat

end

end A274217.P6337733070929378124

/-! ## A274217.P5820098399042316902

`2*A276581(n*A150246(n))`
-/

namespace A274217.P5820098399042316902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A276581 ((n : ℤ) * A150246 n).toNat

end

end A274217.P5820098399042316902

/-! ## A274217.P7386598839779809631

`2*(A316355((A347760(n)+A000129(n))²)-A001221(3*n+5))`
-/

namespace A274217.P7386598839779809631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A316355 ((A347760 n + A000129 n) ^ 2).toNat - A001221 (3 * n + 5))

end

end A274217.P7386598839779809631

/-!
# A274219: Numbers n such that n^k is the average of a positive square and a positive cube for all k > 0.

The programs for A274219, there is no canonical definition to state claims against.
-/

/-! ## A274219.P12179673528559051400

`record[A035179(7*n+1)^3]`
-/

namespace A274219.P12179673528559051400
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035179 (7 * n + 1) ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A274219.P12179673528559051400

/-! ## A274219.P17575528867798801599

`A003484(A273335(n))^3`
-/

namespace A274219.P17575528867798801599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003484 (A273335 n).toNat ^ 3

end

end A274219.P17575528867798801599

/-!
# A274220: a(n) = (-cos(Pi/7)/cos(2*Pi/7))^n + (-cos(2*Pi/7)/cos(3*Pi/7))^n + (cos(3*Pi/7)/cos(Pi/7))^n.

The programs for A274220, the canonical program `A274220.P17913596185992292908` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A274220 has offset 0).

The definition of A274220 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A274220.P17913596185992292908

`ogf((3+8x+3x^2)/(1+4x+3x^2-x^3))`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A274220

/-- `ogf((3+8x+3x^2)/(1+4x+3x^2-x^3))` -/
def P17913596185992292908.Spec : Prop :=
  ∀ n, P17913596185992292908.a n = A274220 n

theorem P17913596185992292908.correct : P17913596185992292908.Spec := by
  intro n
  simp only [A274220]

end A274220

/-! ## A274220.P6462258376139822448

`A275830(3*n)/A000420(n)²`
-/

namespace A274220.P6462258376139822448
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A275830 (3 * n) : ℚ) / (A000420 n ^ 2 : ℚ)

end

end A274220.P6462258376139822448

namespace A274220

/-- `A275830(3*n)/A000420(n)²` -/
def P6462258376139822448.Spec : Prop :=
  ∀ n, P6462258376139822448.a n = (A274220 n : ℚ)

end A274220

/-! ## A274220.P6796770291645449598

`A275830(3*n)/A000420(2*n)`
-/

namespace A274220.P6796770291645449598
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A275830 (3 * n) : ℚ) / (A000420 (2 * n) : ℚ)

end

end A274220.P6796770291645449598

namespace A274220

/-- `A275830(3*n)/A000420(2*n)` -/
def P6796770291645449598.Spec : Prop :=
  ∀ n, P6796770291645449598.a n = (A274220 n : ℚ)

end A274220

/-!
# A274221: List of quadruples: 3*n*(3*n-1), 3*n*(3*n+1), (3*n+1)^2, (3*n+2)^2.

The programs for A274221, the canonical program `A274221.P8610136435322421130` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A274221 has offset 0).

The definition of A274221 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A274221.P8610136435322421130

`ogf((x^2+3x^3+x^4+3x^5+x^6)/(1-x-x^2+x^3-x^4+x^5+x^6-x^7))`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A274221

/-- `ogf((x^2+3x^3+x^4+3x^5+x^6)/(1-x-x^2+x^3-x^4+x^5+x^6-x^7))` -/
def P8610136435322421130.Spec : Prop :=
  ∀ n, P8610136435322421130.a n = A274221 n

theorem P8610136435322421130.correct : P8610136435322421130.Spec := by
  intro n
  simp only [A274221]

end A274221

/-! ## A274221.P11208627523782098995

`floor(record[(lcm(3, n)/6)²])`
-/

namespace A274221.P11208627523782098995
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((Nat.lcm 3 n : ℚ) / 6) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)⌋

end

end A274221.P11208627523782098995

namespace A274221

/-- `floor(record[(lcm(3, n)/6)²])` -/
def P11208627523782098995.Spec : Prop :=
  ∀ n, P11208627523782098995.a n = A274221 n

end A274221

/-! ## A274221.P9918292847676820112

`floor((comp[3*(n+1)]/2)²)`
-/

namespace A274221.P9918292847676820112
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℚ) / 2) ^ 2⌋

end

end A274221.P9918292847676820112

namespace A274221

/-- `floor((comp[3*(n+1)]/2)²)` -/
def P9918292847676820112.Spec : Prop :=
  ∀ n, P9918292847676820112.a n = A274221 n

end A274221

/-! ## A274221.P4871104082143679953

`round(record[(n/(2*gcd(3, n)))²])`
-/

namespace A274221.P4871104082143679953
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℚ) / (2 * Nat.gcd 3 n : ℚ)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A274221.P4871104082143679953

namespace A274221

/-- `round(record[(n/(2*gcd(3, n)))²])` -/
def P4871104082143679953.Spec : Prop :=
  ∀ n, P4871104082143679953.a n = A274221 n

end A274221

/-! ## A274221.P6687648749976239324

`A006368(n-1)+a(n-1)` with `a(0)=0`
-/

namespace A274221.P6687648749976239324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A006368 (n - 1) + a (n - 1)

end

end A274221.P6687648749976239324

namespace A274221

/-- `A006368(n-1)+a(n-1)` -/
def P6687648749976239324.Spec : Prop :=
  ∀ n, P6687648749976239324.a n = A274221 n

end A274221

/-! ## A274221.P1279838309567671465

`∑[A006368(n)]-A006368(n)`
-/

namespace A274221.P1279838309567671465
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006368 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A006368 n

end

end A274221.P1279838309567671465

namespace A274221

/-- `∑[A006368(n)]-A006368(n)` -/
def P1279838309567671465.Spec : Prop :=
  ∀ n, P1279838309567671465.a n = A274221 n

end A274221

/-! ## A274221.P14154856551373628592

`∑[A007494(A026741(n))]-A007494(n)`
-/

namespace A274221.P14154856551373628592
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007494 (A026741 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A007494 n

end

end A274221.P14154856551373628592

namespace A274221

/-- `∑[A007494(A026741(n))]-A007494(n)` -/
def P14154856551373628592.Spec : Prop :=
  ∀ n, P14154856551373628592.a n = A274221 n

end A274221

/-! ## A274221.P16203098297287269291

`A006578(n)-(A006578(A004526(n))+n)`
-/

namespace A274221.P16203098297287269291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006578 n - (A006578 (A004526 n).toNat + (n : ℤ))

end

end A274221.P16203098297287269291

namespace A274221

/-- `A006578(n)-(A006578(A004526(n))+n)` -/
def P16203098297287269291.Spec : Prop :=
  ∀ n, P16203098297287269291.a n = A274221 n

end A274221

/-! ## A274221.P16556517851092749332

`A002620(comp[3*(n+1)])`
-/

namespace A274221.P16556517851092749332
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A274221.P16556517851092749332

namespace A274221

/-- `A002620(comp[3*(n+1)])` -/
def P16556517851092749332.Spec : Prop :=
  ∀ n, P16556517851092749332.a n = A274221 n

end A274221

/-! ## A274221.P3736506803293458427

`A007590(A140106(n+1)+n)/2`
-/

namespace A274221.P3736506803293458427
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007590 (A140106 (n + 1) + (n : ℤ)).toNat : ℚ) / 2

end

end A274221.P3736506803293458427

namespace A274221

/-- `A007590(A140106(n+1)+n)/2` -/
def P3736506803293458427.Spec : Prop :=
  ∀ n, P3736506803293458427.a n = (A274221 n : ℚ)

end A274221

/-! ## A274221.P7413281790667345617

`A002620(A007494(n)+1)-A007494(n)`
-/

namespace A274221.P7413281790667345617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 (A007494 n + 1).toNat - A007494 n

end

end A274221.P7413281790667345617

namespace A274221

/-- `A002620(A007494(n)+1)-A007494(n)` -/
def P7413281790667345617.Spec : Prop :=
  ∀ n, P7413281790667345617.a n = A274221 n

end A274221

/-! ## A274221.P13175379897265310497

`A002620(A294732(n+2)+1)-A294732(n+2)`
-/

namespace A274221.P13175379897265310497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 (A294732 (n + 2) + 1).toNat - A294732 (n + 2)

end

end A274221.P13175379897265310497

namespace A274221

/-- `A002620(A294732(n+2)+1)-A294732(n+2)` -/
def P13175379897265310497.Spec : Prop :=
  ∀ n, P13175379897265310497.a n = A274221 n

end A274221

/-! ## A274221.P5520085620979489069

`(A057353(n+1)-1)*A057360(2*n+1)`
-/

namespace A274221.P5520085620979489069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A057353 (n + 1) - 1) * A057360 (2 * n + 1)

end

end A274221.P5520085620979489069

namespace A274221

/-- `(A057353(n+1)-1)*A057360(2*n+1)` -/
def P5520085620979489069.Spec : Prop :=
  ∀ n, P5520085620979489069.a n = A274221 n

end A274221

/-! ## A274221.P1205042798465677892

`(n-A110655(n+1))*A057360(2*n+1)`
-/

namespace A274221.P1205042798465677892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - A110655 (n + 1)) * A057360 (2 * n + 1)

end

end A274221.P1205042798465677892

namespace A274221

/-- `(n-A110655(n+1))*A057360(2*n+1)` -/
def P1205042798465677892.Spec : Prop :=
  ∀ n, P1205042798465677892.a n = A274221 n

end A274221

/-! ## A274221.P17646484326634456569

`(n-A110656(2*n+1))*A057360(2*n+1)`
-/

namespace A274221.P17646484326634456569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - A110656 (2 * n + 1)) * A057360 (2 * n + 1)

end

end A274221.P17646484326634456569

namespace A274221

/-- `(n-A110656(2*n+1))*A057360(2*n+1)` -/
def P17646484326634456569.Spec : Prop :=
  ∀ n, P17646484326634456569.a n = A274221 n

end A274221

/-! ## A274221.P11153105534354805426

`A374243(A214068(n+1))`
-/

namespace A274221.P11153105534354805426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374243 (A214068 (n + 1)).toNat

end

end A274221.P11153105534354805426

namespace A274221

/-- `A374243(A214068(n+1))` -/
def P11153105534354805426.Spec : Prop :=
  ∀ n, P11153105534354805426.a n = A274221 n

end A274221

/-! ## A274221.P14443670504911278347

`A056822(2*n-(n-1)%2-1+n)`
-/

namespace A274221.P14443670504911278347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056822 ((2 * n : ℤ) - Int.tmod ((n : ℤ) - 1) 2 - 1 + (n : ℤ)).toNat

end

end A274221.P14443670504911278347

namespace A274221

/-- `A056822(2*n-(n-1)%2-1+n)` -/
def P14443670504911278347.Spec : Prop :=
  ∀ n, P14443670504911278347.a n = A274221 n

end A274221

/-! ## A274221.P2865313633836581003

`A008797(A053438(n)+n)`
-/

namespace A274221.P2865313633836581003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008797 (A053438 n + (n : ℤ)).toNat

end

end A274221.P2865313633836581003

namespace A274221

/-- `A008797(A053438(n)+n)` -/
def P2865313633836581003.Spec : Prop :=
  ∀ n, P2865313633836581003.a n = A274221 n

end A274221

/-! ## A274221.P14518799092789829363

`A130519(A053438(n)+n)/2`
-/

namespace A274221.P14518799092789829363
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A130519 (A053438 n + (n : ℤ)).toNat : ℚ) / 2

end

end A274221.P14518799092789829363

namespace A274221

/-- `A130519(A053438(n)+n)/2` -/
def P14518799092789829363.Spec : Prop :=
  ∀ n, P14518799092789829363.a n = (A274221 n : ℚ)

end A274221

/-! ## A274221.P4598553322781035178

`A008217(A126091(2*n+1)+n)`
-/

namespace A274221.P4598553322781035178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008217 (A126091 (2 * n + 1) + (n : ℤ)).toNat

end

end A274221.P4598553322781035178

namespace A274221

/-- `A008217(A126091(2*n+1)+n)` -/
def P4598553322781035178.Spec : Prop :=
  ∀ n, P4598553322781035178.a n = A274221 n

end A274221

/-!
# A274222: Numbers k = p_1^s_1...p_m^s_m such that k/p_i^s_i == 1 (mod p_i) for all 0 < i <= m.

The programs for A274222, there is no canonical definition to state claims against.
-/

/-! ## A274222.P9741480035847309553

`A326841(∑[A173441(A094024(n))])`
-/

namespace A274222.P9741480035847309553
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173441 (A094024 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326841 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A274222.P9741480035847309553

/-! ## A274222.P8401815258886726323

`record[A326841(n+1)/A173441(A094024(n))]`
-/

namespace A274222.P8401815258886726323
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A326841 (n + 1) : ℚ) / (A173441 (A094024 n).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A274222.P8401815258886726323

/-!
# A274224: Decimal representation of the x-axis, from the left edge to the origin, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 22", based on the 5-celled von Neumann neighborhood.

The programs for A274224, the canonical program `A274224.P8691790841403696657` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A274224 has offset 0).

The definition of A274224 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A274224.P8691790841403696657

`lcm(A273972(A052928(n)), A274473(n))`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A274224

/-- `lcm(A273972(A052928(n)), A274473(n))` -/
def P8691790841403696657.Spec : Prop :=
  ∀ n, (P8691790841403696657.a n : ℤ) = A274224 n

theorem P8691790841403696657.correct : P8691790841403696657.Spec := by
  intro n
  simp only [A274224]

end A274224

/-! ## A274224.P15587536467370190268

`Δ[A042948(n)]*A277918(A052928(n))`
-/

namespace A274224.P15587536467370190268
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042948 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A277918 (A052928 n).toNat

end

end A274224.P15587536467370190268

namespace A274224

/-- `Δ[A042948(n)]*A277918(A052928(n))` -/
def P15587536467370190268.Spec : Prop :=
  ∀ n, P15587536467370190268.a n = A274224 n

end A274224

/-! ## A274224.P11585320978406747026

`and(A077854(n), A277933(n))`
-/

namespace A274224.P11585320978406747026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A077854 n) (A277933 n)

end

end A274224.P11585320978406747026

namespace A274224

/-- `and(A077854(n), A277933(n))` -/
def P11585320978406747026.Spec : Prop :=
  ∀ n, P11585320978406747026.a n = A274224 n

end A274224

/-! ## A274224.P14307218730068165820

`and(∑[A007910(n)], A277933(n))`
-/

namespace A274224.P14307218730068165820
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007910 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (∑ j ∈ Finset.range (n + 1), f1 j) (A277933 n)

end

end A274224.P14307218730068165820

namespace A274224

/-- `and(∑[A007910(n)], A277933(n))` -/
def P14307218730068165820.Spec : Prop :=
  ∀ n, P14307218730068165820.a n = A274224 n

end A274224

/-! ## A274224.P15056492473528162752

`and(record[A274845(n)], A277933(n))`
-/

namespace A274224.P15056492473528162752
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274845 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (A277933 n)

end

end A274224.P15056492473528162752

namespace A274224

/-- `and(record[A274845(n)], A277933(n))` -/
def P15056492473528162752.Spec : Prop :=
  ∀ n, P15056492473528162752.a n = A274224 n

end A274224

/-! ## A274224.P11061026927765599884

`and(A007910(A052928(n+2)), A277933(n))`
-/

namespace A274224.P11061026927765599884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A007910 (A052928 (n + 2)).toNat) (A277933 n)

end

end A274224.P11061026927765599884

namespace A274224

/-- `and(A007910(A052928(n+2)), A277933(n))` -/
def P11061026927765599884.Spec : Prop :=
  ∀ n, P11061026927765599884.a n = A274224 n

end A274224

/-!
# A274225: Denominator of the ratio of consecutive prime gaps.

The programs for A274225, the canonical program `A274225.P17980933963953125294` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A274225 has offset 1).

The definition of A274225 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A274225.P17980933963953125294

`A001223(n+1)/A057467(n+1)`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A274225

/-- `A001223(n+1)/A057467(n+1)` -/
def P17980933963953125294.Spec : Prop :=
  ∀ n, P17980933963953125294.a n = (A274225 (n + 1) : ℚ)

end A274225

/-! ## A274225.P12272255883816702779

`A083552(n+1)/A272863(n+1)`
-/

namespace A274225.P12272255883816702779
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A083552 (n + 1) : ℚ) / (A272863 (n + 1) : ℚ)

end

end A274225.P12272255883816702779

namespace A274225

/-- `A083552(n+1)/A272863(n+1)` -/
def P12272255883816702779.Spec : Prop :=
  ∀ n, P12272255883816702779.a n = (A274225 (n + 1) : ℚ)

end A274225

/-! ## A274225.P10743209937683254488

`A083551(n+1)/A001223(n+2)`
-/

namespace A274225.P10743209937683254488
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A083551 (n + 1) : ℚ) / (A001223 (n + 2) : ℚ)

end

end A274225.P10743209937683254488

namespace A274225

/-- `A083551(n+1)/A001223(n+2)` -/
def P10743209937683254488.Spec : Prop :=
  ∀ n, P10743209937683254488.a n = (A274225 (n + 1) : ℚ)

end A274225

/-! ## A274225.P3810299462892118935

`Δ[A000040(n+1)]/A057467(n+1)`
-/

namespace A274225.P3810299462892118935
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) / (A057467 (n + 1) : ℚ)

end

end A274225.P3810299462892118935

namespace A274225

/-- `Δ[A000040(n+1)]/A057467(n+1)` -/
def P3810299462892118935.Spec : Prop :=
  ∀ n, P3810299462892118935.a n = (A274225 (n + 1) : ℚ)

end A274225

/-! ## A274225.P11474338902467793224

`A083551(n+1)/Δ[A065091(n+1)]`
-/

namespace A274225.P11474338902467793224
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A083551 (n + 1) : ℚ) / (f1 (n + 1) - f1 n : ℚ)

end

end A274225.P11474338902467793224

namespace A274225

/-- `A083551(n+1)/Δ[A065091(n+1)]` -/
def P11474338902467793224.Spec : Prop :=
  ∀ n, P11474338902467793224.a n = (A274225 (n + 1) : ℚ)

end A274225

/-! ## A274225.P17618083368724761401

`A083551(n+1)/Δ[A154115(n+1)]`
-/

namespace A274225.P17618083368724761401
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154115 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A083551 (n + 1) : ℚ) / (f1 (n + 1) - f1 n : ℚ)

end

end A274225.P17618083368724761401

namespace A274225

/-- `A083551(n+1)/Δ[A154115(n+1)]` -/
def P17618083368724761401.Spec : Prop :=
  ∀ n, P17618083368724761401.a n = (A274225 (n + 1) : ℚ)

end A274225

/-! ## A274225.P7179346010602859976

`A272863(n+1)/ratio[A001223(n+1)]`
-/

namespace A274225.P7179346010602859976
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A272863 (n + 1) : ℚ) / ((f1 (n + 1) : ℚ) / (f1 n : ℚ))

end

end A274225.P7179346010602859976

namespace A274225

/-- `A272863(n+1)/ratio[A001223(n+1)]` -/
def P7179346010602859976.Spec : Prop :=
  ∀ n, P7179346010602859976.a n = (A274225 (n + 1) : ℚ)

end A274225

/-! ## A274225.P1349643609420911669

`A219606(2*n+1)/A057467(n+1)`
-/

namespace A274225.P1349643609420911669
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A219606 (2 * n + 1) : ℚ) / (A057467 (n + 1) : ℚ)

end

end A274225.P1349643609420911669

namespace A274225

/-- `A219606(2*n+1)/A057467(n+1)` -/
def P1349643609420911669.Spec : Prop :=
  ∀ n, P1349643609420911669.a n = (A274225 (n + 1) : ℚ)

end A274225

/-! ## A274225.P16467356601270076789

`(A000040(n+2)-A000040(n+1))/A057467(n+1)`
-/

namespace A274225.P16467356601270076789
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000040 (n + 2) - A000040 (n + 1) : ℚ) / (A057467 (n + 1) : ℚ)

end

end A274225.P16467356601270076789

namespace A274225

/-- `(A000040(n+2)-A000040(n+1))/A057467(n+1)` -/
def P16467356601270076789.Spec : Prop :=
  ∀ n, P16467356601270076789.a n = (A274225 (n + 1) : ℚ)

end A274225

/-! ## A274225.P4278273165792933939

`A001223(n+1)*A272863(n+1)/A001223(n+2)`
-/

namespace A274225.P4278273165792933939
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001223 (n + 1) * A272863 (n + 1) : ℚ) / (A001223 (n + 2) : ℚ)

end

end A274225.P4278273165792933939

namespace A274225

/-- `A001223(n+1)*A272863(n+1)/A001223(n+2)` -/
def P4278273165792933939.Spec : Prop :=
  ∀ n, P4278273165792933939.a n = (A274225 (n + 1) : ℚ)

end A274225

/-! ## A274225.P12705919506084518181

`A001223(n+1)/gcd(A001223(n+1), A031131(n+1))`
-/

namespace A274225.P12705919506084518181
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001223 (n + 1) : ℚ) / (Int.gcd (A001223 (n + 1)) (A031131 (n + 1)) : ℚ)

end

end A274225.P12705919506084518181

namespace A274225

/-- `A001223(n+1)/gcd(A001223(n+1), A031131(n+1))` -/
def P12705919506084518181.Spec : Prop :=
  ∀ n, P12705919506084518181.a n = (A274225 (n + 1) : ℚ)

end A274225

/-! ## A274225.P16813252247355790939

`lcm(A001223(n+1), A109805(n+1))/A109805(n+1)`
-/

namespace A274225.P16813252247355790939
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (A001223 (n + 1)) (A109805 (n + 1)) : ℚ) / (A109805 (n + 1) : ℚ)

end

end A274225.P16813252247355790939

namespace A274225

/-- `lcm(A001223(n+1), A109805(n+1))/A109805(n+1)` -/
def P16813252247355790939.Spec : Prop :=
  ∀ n, P16813252247355790939.a n = (A274225 (n + 1) : ℚ)

end A274225

/-! ## A274225.P5924594298422936656

`A262138(2*n+1)/gcd(A262138(2*n+1), A262138(2*(n+1)))`
-/

namespace A274225.P5924594298422936656
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A262138 (2 * n + 1) : ℚ) / (Int.gcd (A262138 (2 * n + 1)) (A262138 (2 * (n + 1))) : ℚ)

end

end A274225.P5924594298422936656

namespace A274225

/-- `A262138(2*n+1)/gcd(A262138(2*n+1), A262138(2*(n+1)))` -/
def P5924594298422936656.Spec : Prop :=
  ∀ n, P5924594298422936656.a n = (A274225 (n + 1) : ℚ)

end A274225

/-!
# A274226: Numbers that have a unique representation as a sum of three nonzero squares, and furthermore in this representation the squares are distinct.

The programs for A274226, there is no canonical definition to state claims against.
-/

/-! ## A274226.P4631267401768645558

`∩[A025321(n+1), A025339(n+1)]`
-/

namespace A274226.P4631267401768645558
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025321 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025339 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A274226.P4631267401768645558

/-! ## A274226.P15198848085549891313

`∩[A004432(n+1), A025321(n+1)]`
-/

namespace A274226.P15198848085549891313
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004432 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025321 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A274226.P15198848085549891313

/-! ## A274226.P16371166169765297976

`eq[1, A025427(n)*A025442(n)]`
-/

namespace A274226.P16371166169765297976
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025427 n * A025442 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A274226.P16371166169765297976

/-! ## A274226.P8769813251847225952

`lt[(2*A025427(n))², A063691(n)]`
-/

namespace A274226.P8769813251847225952
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * A025427 n) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063691 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A274226.P8769813251847225952

/-! ## A274226.P17766708589725415910

`eq[A000032(A025427(n)), A025442(n)]`
-/

namespace A274226.P17766708589725415910
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (A025427 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025442 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A274226.P17766708589725415910

/-! ## A274226.P17952806606674076512

`eq[A025427(n), A033999(A063691(n))]`
-/

namespace A274226.P17952806606674076512
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025427 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A063691 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A274226.P17952806606674076512

/-! ## A274226.P4281134638793551413

`eq[A025442(n), A061987(A063691(n))]`
-/

namespace A274226.P4281134638793551413
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025442 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061987 (A063691 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A274226.P4281134638793551413

/-! ## A274226.P14631665992970378023

`eq[A025427(n), A167374(A033715(n))]`
-/

namespace A274226.P14631665992970378023
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025427 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167374 (A033715 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A274226.P14631665992970378023

/-! ## A274226.P18029797707147823337

`eq[A025427(n)^A063691(n), A025442(n)]`
-/

namespace A274226.P18029797707147823337
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A025427 n : ℚ) ^ (A063691 n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025442 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℚ)) n

end

end A274226.P18029797707147823337

/-!
# A274227: Primes in A274226.

The programs for A274227, there is no canonical definition to state claims against.
-/

/-! ## A274227.P90137067302116062

`p?[A055109(n+1)]`
-/

namespace A274227.P90137067302116062
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055109 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A274227.P90137067302116062

/-! ## A274227.P11909655042097630517

`p?[A274226(n+1)]`
-/

namespace A274227.P11909655042097630517
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274226 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A274227.P11909655042097630517

/-! ## A274227.P4555647239601916187

`p?[eq[6, A063691(n)]]`
-/

namespace A274227.P4555647239601916187
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063691 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A274227.P4555647239601916187

/-!
# A274228: Triangle read by rows: T(n,k) (n>=3, 0<=k<=n-3) = number of n-sequences of 0's and 1's with exactly one pair of adjacent 0's and exactly k pairs of adjacent 1's.

The programs for A274228, there is no canonical definition to state claims against.
-/

/-! ## A274228.P16333052835357790106

`A056239(A066119(n+1))+A008284(n+1)`
-/

namespace A274228.P16333052835357790106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (A066119 (n + 1)).toNat + A008284 (n + 1)

end

end A274228.P16333052835357790106

/-! ## A274228.P5548781140627601706

`A215521(n+1)+A056239(A066119(n+1))`
-/

namespace A274228.P5548781140627601706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215521 (n + 1) + A056239 (A066119 (n + 1)).toNat

end

end A274228.P5548781140627601706

/-! ## A274228.P11310371813605416076

`A119963(A253723(n+1))+A056239(A066119(n+1))`
-/

namespace A274228.P11310371813605416076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119963 (A253723 (n + 1)).toNat + A056239 (A066119 (n + 1)).toNat

end

end A274228.P11310371813605416076

/-! ## A274228.P10857875357506904991

`A008284(n+1)+A135278(n)+A000038(A174410(n))`
-/

namespace A274228.P10857875357506904991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008284 (n + 1) + (A135278 n + A000038 (A174410 n).toNat)

end

end A274228.P10857875357506904991

/-! ## A274228.P4345708131062906803

`A288120(A033622(n))+A075195(n+1)`
-/

namespace A274228.P4345708131062906803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288120 (A033622 n).toNat + A075195 (n + 1)

end

end A274228.P4345708131062906803

/-!
# A274230: Number of holes in a sheet of paper when you fold it n times and cut off the four corners.

The programs for A274230, the canonical program `A274230.P17892329975754457581` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A274230 has offset 0).

The definition of A274230 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A274230.P14424910803789891161

`ogf(x^2/(1-3x+6x^3-4x^4))`
-/

namespace A274230.P14424910803789891161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 0, 1] [1, -3, 0, 6, -4] n

end

end A274230.P14424910803789891161

namespace A274230

/-- `ogf(x^2/(1-3x+6x^3-4x^4))` -/
def P14424910803789891161.Spec : Prop :=
  ∀ n, P14424910803789891161.a n = A274230 n

end A274230

/-! ## A274230.P16295338665535936956

`(2^ceil(n/2)-1)*(2^floor(n/2)-1)`
-/

namespace A274230.P16295338665535936956
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((2 : ℚ) ^ (⌈(n : ℚ) / 2⌉ : ℤ) - 1) * ((2 : ℚ) ^ (⌊(n : ℚ) / 2⌋ : ℤ) - 1)

end

end A274230.P16295338665535936956

namespace A274230

/-- `(2^ceil(n/2)-1)*(2^floor(n/2)-1)` -/
def P16295338665535936956.Spec : Prop :=
  ∀ n, P16295338665535936956.a n = (A274230 n : ℚ)

end A274230

/-! ## A274230.P17892329975754457581

`3*a(n-1)-6*a(n-3)+4*a(n-4)` with `a(0)=0, a(1)=0, a(2)=1, a(3)=3`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A274230

/-- `3*a(n-1)-6*a(n-3)+4*a(n-4)` -/
def P17892329975754457581.Spec : Prop :=
  ∀ n, P17892329975754457581.a n = A274230 n

theorem P17892329975754457581.correct : P17892329975754457581.Spec := by
  intro n
  simp only [A274230]

end A274230

/-! ## A274230.P17807647236161955567

`2^n-∑[2*a(n-2)]` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A274230.P17807647236161955567
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 1] fun n f1 =>
  2 * f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A274230.P17807647236161955567

namespace A274230

/-- `2^n-∑[2*a(n-2)]` -/
def P17807647236161955567.Spec : Prop :=
  ∀ n, P17807647236161955567.a n = A274230 n

end A274230

/-! ## A274230.P13322121505138706985

`∑[A233411(n)/2]`
-/

namespace A274230.P13322121505138706985
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A233411 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A274230.P13322121505138706985

namespace A274230

/-- `∑[A233411(n)/2]` -/
def P13322121505138706985.Spec : Prop :=
  ∀ n, P13322121505138706985.a n = (A274230 n : ℚ)

end A274230

/-! ## A274230.P5791657933918622673

`2^n-A052955(n)`
-/

namespace A274230.P5791657933918622673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - A052955 n

end

end A274230.P5791657933918622673

namespace A274230

/-- `2^n-A052955(n)` -/
def P5791657933918622673.Spec : Prop :=
  ∀ n, P5791657933918622673.a n = A274230 n

end A274230

/-! ## A274230.P13256516796091139085

`∑[2^n-A005418(n+1)]`
-/

namespace A274230.P13256516796091139085
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - A005418 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A274230.P13256516796091139085

namespace A274230

/-- `∑[2^n-A005418(n+1)]` -/
def P13256516796091139085.Spec : Prop :=
  ∀ n, P13256516796091139085.a n = A274230 n

end A274230

/-! ## A274230.P12250375058382084272

`2^n-∑[A158780(n+1)]`
-/

namespace A274230.P12250375058382084272
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158780 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A274230.P12250375058382084272

namespace A274230

/-- `2^n-∑[A158780(n+1)]` -/
def P12250375058382084272.Spec : Prop :=
  ∀ n, P12250375058382084272.a n = A274230 n

end A274230

/-! ## A274230.P11729973636126481984

`A008466(n)+A005673(n)`
-/

namespace A274230.P11729973636126481984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008466 n + A005673 n

end

end A274230.P11729973636126481984

namespace A274230

/-- `A008466(n)+A005673(n)` -/
def P11729973636126481984.Spec : Prop :=
  ∀ n, P11729973636126481984.a n = A274230 n

end A274230

/-! ## A274230.P2086008003347377179

`A295724(n)+A232580(n)`
-/

namespace A274230.P2086008003347377179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295724 n + A232580 n

end

end A274230.P2086008003347377179

namespace A274230

/-- `A295724(n)+A232580(n)` -/
def P2086008003347377179.Spec : Prop :=
  ∀ n, P2086008003347377179.a n = A274230 n

end A274230

/-! ## A274230.P5291429525325078485

`A083318(n)-A063759(n)`
-/

namespace A274230.P5291429525325078485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083318 n - A063759 n

end

end A274230.P5291429525325078485

namespace A274230

/-- `A083318(n)-A063759(n)` -/
def P5291429525325078485.Spec : Prop :=
  ∀ n, P5291429525325078485.a n = A274230 n

end A274230

/-! ## A274230.P4191254920675111043

`A146528(n)-A343177(n)`
-/

namespace A274230.P4191254920675111043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146528 n - A343177 n

end

end A274230.P4191254920675111043

namespace A274230

/-- `A146528(n)-A343177(n)` -/
def P4191254920675111043.Spec : Prop :=
  ∀ n, P4191254920675111043.a n = A274230 n

end A274230

/-! ## A274230.P1127630192314566615

`and(-A052955(n), A000225(n))`
-/

namespace A274230.P1127630192314566615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-A052955 n) (A000225 n)

end

end A274230.P1127630192314566615

namespace A274230

/-- `and(-A052955(n), A000225(n))` -/
def P1127630192314566615.Spec : Prop :=
  ∀ n, P1127630192314566615.a n = A274230 n

end A274230

/-! ## A274230.P1658801625442961235

`A016116(n)+A027556(n)-1`
-/

namespace A274230.P1658801625442961235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016116 n + (A027556 n - 1)

end

end A274230.P1658801625442961235

namespace A274230

/-- `A016116(n)+A027556(n)-1` -/
def P1658801625442961235.Spec : Prop :=
  ∀ n, P1658801625442961235.a n = A274230 n

end A274230

/-! ## A274230.P4635450052645065391

`A000051(n)-(A052955(n)+1)`
-/

namespace A274230.P4635450052645065391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000051 n - (A052955 n + 1)

end

end A274230.P4635450052645065391

namespace A274230

/-- `A000051(n)-(A052955(n)+1)` -/
def P4635450052645065391.Spec : Prop :=
  ∀ n, P4635450052645065391.a n = A274230 n

end A274230

/-! ## A274230.P9301597064364480874

`A007179(n+1)-A052551(n)`
-/

namespace A274230.P9301597064364480874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007179 (n + 1) - A052551 n

end

end A274230.P9301597064364480874

namespace A274230

/-- `A007179(n+1)-A052551(n)` -/
def P9301597064364480874.Spec : Prop :=
  ∀ n, P9301597064364480874.a n = A274230 n

end A274230

/-! ## A274230.P4545888920941194845

`A051437(n)-A052551(n+1)`
-/

namespace A274230.P4545888920941194845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051437 n - A052551 (n + 1)

end

end A274230.P4545888920941194845

namespace A274230

/-- `A051437(n)-A052551(n+1)` -/
def P4545888920941194845.Spec : Prop :=
  ∀ n, P4545888920941194845.a n = A274230 n

end A274230

/-! ## A274230.P11665431402153948632

`A000051(n)-A164090(n+1)`
-/

namespace A274230.P11665431402153948632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000051 n - A164090 (n + 1)

end

end A274230.P11665431402153948632

namespace A274230

/-- `A000051(n)-A164090(n+1)` -/
def P11665431402153948632.Spec : Prop :=
  ∀ n, P11665431402153948632.a n = A274230 n

end A274230

/-! ## A274230.P10022030515469699806

`A233411(n)+1-A016116(n)`
-/

namespace A274230.P10022030515469699806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233411 n + (1 - A016116 n)

end

end A274230.P10022030515469699806

namespace A274230

/-- `A233411(n)+1-A016116(n)` -/
def P10022030515469699806.Spec : Prop :=
  ∀ n, P10022030515469699806.a n = A274230 n

end A274230

/-! ## A274230.P7366354204000276019

`A052548(n)-A209721(n+1)`
-/

namespace A274230.P7366354204000276019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052548 n - A209721 (n + 1)

end

end A274230.P7366354204000276019

namespace A274230

/-- `A052548(n)-A209721(n+1)` -/
def P7366354204000276019.Spec : Prop :=
  ∀ n, P7366354204000276019.a n = A274230 n

end A274230

/-!
# A274231: Ternary representation with index set {0, 1, 5}.

The programs for A274231, there is no canonical definition to state claims against.
-/

/-! ## A274231.P12834720898607001889

`comp[A338246(n)+2*n-1]`
-/

namespace A274231.P12834720898607001889
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338246 n + ((2 * n : ℤ) - 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A274231.P12834720898607001889

/-! ## A274231.P15661808115832086926

`comp[A338247(n)-A005408(n)]`
-/

namespace A274231.P15661808115832086926
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338247 n - A005408 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A274231.P15661808115832086926

/-! ## A274231.P2819244148808254722

`comp[A023443(n)+2*A338246(n)]`
-/

namespace A274231.P2819244148808254722
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 n + 2 * A338246 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A274231.P2819244148808254722

/-! ## A274231.P10426245272091502394

`comp[A023443(A338246(n)+n+n)]`
-/

namespace A274231.P10426245272091502394
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A338246 n + (n : ℤ) + (n : ℤ)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A274231.P10426245272091502394

/-! ## A274231.P481763543327360543

`comp[A060373(3*n)-A132141(n+1)]`
-/

namespace A274231.P481763543327360543
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060373 (3 * n) - A132141 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A274231.P481763543327360543

/-!
# A274232: Number of partitions of 2^n into at most three parts.

The programs for A274232, the canonical program `A274232.P18323128439496248053` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A274232 has offset 0).

The definition of A274232 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 168 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A274232.P13410794026777679056

`ogf((1-5x+4x^2+2x^3)/(1-7x+14x^2-8x^3))`
-/

namespace A274232.P13410794026777679056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -5, 4, 2] [1, -7, 14, -8] n

end

end A274232.P13410794026777679056

namespace A274232

/-- `ogf((1-5x+4x^2+2x^3)/(1-7x+14x^2-8x^3))` -/
def P13410794026777679056.Spec : Prop :=
  ∀ n, P13410794026777679056.a n = A274232 n

end A274232

/-! ## A274232.P11603088905115461791

`∑[floor(((ceil(2^(n-1))+1)/2)²)]`
-/

namespace A274232.P11603088905115461791
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉ + 1 : ℚ) / 2) ^ 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A274232.P11603088905115461791

namespace A274232

/-- `∑[floor(((ceil(2^(n-1))+1)/2)²)]` -/
def P11603088905115461791.Spec : Prop :=
  ∀ n, P11603088905115461791.a n = A274232 n

end A274232

/-! ## A274232.P2178434693505405447

`(8*a(n-1)-2^n)/2-2` with `a(0)=1, a(1)=2`
-/

namespace A274232.P2178434693505405447
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 2] fun n a =>
  (8 * a (n - 1) - (2 ^ n : ℚ)) / 2 - 2

end

end A274232.P2178434693505405447

namespace A274232

/-- `(8*a(n-1)-2^n)/2-2` -/
def P2178434693505405447.Spec : Prop :=
  ∀ n, P2178434693505405447.a n = (A274232 n : ℚ)

end A274232

/-! ## A274232.P1079336933361285833

`abs(∑[2*(3*a(n-1)-4*a(n-2))])` with `a(0)=1, a(1)=1, a(2)=2, a(3)=6`
-/

namespace A274232.P1079336933361285833
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2, 6] fun n f1 =>
  2 * (3 * f1 (n - 1) - 4 * f1 (n - 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j|

end

end A274232.P1079336933361285833

namespace A274232

/-- `abs(∑[2*(3*a(n-1)-4*a(n-2))])` -/
def P1079336933361285833.Spec : Prop :=
  ∀ n, P1079336933361285833.a n = A274232 n

end A274232

/-! ## A274232.P16621355866423781526

`floor(∑[2*(3*a(n-1)-4*a(n-2))])` with `a(0)=1, a(1)=1, a(2)=2, a(3)=6`

`floor` is left out, it is the identity on integers.
-/

namespace A274232.P16621355866423781526
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2, 6] fun n f1 =>
  2 * (3 * f1 (n - 1) - 4 * f1 (n - 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A274232.P16621355866423781526

namespace A274232

/-- `floor(∑[2*(3*a(n-1)-4*a(n-2))])` -/
def P16621355866423781526.Spec : Prop :=
  ∀ n, P16621355866423781526.a n = A274232 n

end A274232

/-! ## A274232.P6044504909285870727

`ceil(∑[2*(3*a(n-1)-4*a(n-2))])` with `a(0)=1, a(1)=1, a(2)=2, a(3)=6`

`ceil` is left out, it is the identity on integers.
-/

namespace A274232.P6044504909285870727
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2, 6] fun n f1 =>
  2 * (3 * f1 (n - 1) - 4 * f1 (n - 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A274232.P6044504909285870727

namespace A274232

/-- `ceil(∑[2*(3*a(n-1)-4*a(n-2))])` -/
def P6044504909285870727.Spec : Prop :=
  ∀ n, P6044504909285870727.a n = A274232 n

end A274232

/-! ## A274232.P18323128439496248053

`7*a(n-1)-14*a(n-2)+8*a(n-3)` with `a(0)=1, a(1)=2, a(2)=4, a(3)=10`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A274232

/-- `7*a(n-1)-14*a(n-2)+8*a(n-3)` -/
def P18323128439496248053.Spec : Prop :=
  ∀ n, P18323128439496248053.a n = A274232 n

theorem P18323128439496248053.correct : P18323128439496248053.Spec := by
  intro n
  simp only [A274232]

end A274232

/-! ## A274232.P2263975706778592191

`(ceil(sin(n)²)+1)*A124303(n)`
-/

namespace A274232.P2263975706778592191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (⌈Real.sin (n : ℝ) ^ 2⌉ + 1) * A124303 n

end

end A274232.P2263975706778592191

namespace A274232

/-- `(ceil(sin(n)²)+1)*A124303(n)` -/
def P2263975706778592191.Spec : Prop :=
  ∀ n, P2263975706778592191.a n = A274232 n

end A274232

/-! ## A274232.P15418532329909210590

`A161168(n-2)+a(n-1)` with `a(0)=1, a(1)=2`
-/

namespace A274232.P15418532329909210590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A161168 (n - 2) + a (n - 1)

end

end A274232.P15418532329909210590

namespace A274232

/-- `A161168(n-2)+a(n-1)` -/
def P15418532329909210590.Spec : Prop :=
  ∀ n, P15418532329909210590.a n = A274232 n

end A274232

/-! ## A274232.P3084420192365577254

`xor(1, 4*a(n-1)-1-A011782(n))` with `a(0)=1, a(1)=2`
-/

namespace A274232.P3084420192365577254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  Int.xor 1 (4 * a (n - 1) - 1 - A011782 n)

end

end A274232.P3084420192365577254

namespace A274232

/-- `xor(1, 4*a(n-1)-1-A011782(n))` -/
def P3084420192365577254.Spec : Prop :=
  ∀ n, P3084420192365577254.a n = A274232 n

end A274232

/-! ## A274232.P10227372227584682737

`xor(1, 4*a(n-1)-1-A131577(n))` with `a(0)=1, a(1)=2`
-/

namespace A274232.P10227372227584682737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  Int.xor 1 (4 * a (n - 1) - 1 - A131577 n)

end

end A274232.P10227372227584682737

namespace A274232

/-- `xor(1, 4*a(n-1)-1-A131577(n))` -/
def P10227372227584682737.Spec : Prop :=
  ∀ n, P10227372227584682737.a n = A274232 n

end A274232

/-! ## A274232.P17333699625738604460

`A117220(A022331(n))`
-/

namespace A274232.P17333699625738604460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117220 (A022331 n).toNat

end

end A274232.P17333699625738604460

namespace A274232

/-- `A117220(A022331(n))` -/
def P17333699625738604460.Spec : Prop :=
  ∀ n, P17333699625738604460.a n = A274232 n

end A274232

/-! ## A274232.P4724524943105711083

`A123166(n)-A006095(n)`
-/

namespace A274232.P4724524943105711083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123166 n - A006095 n

end

end A274232.P4724524943105711083

namespace A274232

/-- `A123166(n)-A006095(n)` -/
def P4724524943105711083.Spec : Prop :=
  ∀ n, P4724524943105711083.a n = A274232 n

end A274232

/-! ## A274232.P292789430720624660

`A036453(n+1)*A124303(n)`
-/

namespace A274232.P292789430720624660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036453 (n + 1) * A124303 n

end

end A274232.P292789430720624660

namespace A274232

/-- `A036453(n+1)*A124303(n)` -/
def P292789430720624660.Spec : Prop :=
  ∀ n, P292789430720624660.a n = A274232 n

end A274232

/-! ## A274232.P12019409785340002057

`(A057427(n)+1)*A124303(n)`
-/

namespace A274232.P12019409785340002057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A057427 n + 1) * A124303 n

end

end A274232.P12019409785340002057

namespace A274232

/-- `(A057427(n)+1)*A124303(n)` -/
def P12019409785340002057.Spec : Prop :=
  ∀ n, P12019409785340002057.a n = A274232 n

end A274232

/-! ## A274232.P6688448586513262771

`A011782(n)+∑[A166444(n)²]`
-/

namespace A274232.P6688448586513262771
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166444 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A274232.P6688448586513262771

namespace A274232

/-- `A011782(n)+∑[A166444(n)²]` -/
def P6688448586513262771.Spec : Prop :=
  ∀ n, P6688448586513262771.a n = A274232 n

end A274232

/-! ## A274232.P17926555496787519941

`A020639(A008458(n))*A124303(n)`
-/

namespace A274232.P17926555496787519941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A008458 n).toNat * A124303 n

end

end A274232.P17926555496787519941

namespace A274232

/-- `A020639(A008458(n))*A124303(n)` -/
def P17926555496787519941.Spec : Prop :=
  ∀ n, P17926555496787519941.a n = A274232 n

end A274232

/-! ## A274232.P17200220466357428280

`A020639(A008574(n))*A124303(n)`
-/

namespace A274232.P17200220466357428280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A008574 n).toNat * A124303 n

end

end A274232.P17200220466357428280

namespace A274232

/-- `A020639(A008574(n))*A124303(n)` -/
def P17200220466357428280.Spec : Prop :=
  ∀ n, P17200220466357428280.a n = A274232 n

end A274232

/-!
# A274233: Number of partitions of n*(n-1)/2 into at most three parts.

The programs for A274233, the canonical program `A274233.P10757993427894549092` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A274233 has offset 1).

The definition of A274233 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A274233.P10757993427894549092

`round((∑[n]+3)²/12)`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A274233

/-- `round((∑[n]+3)²/12)` -/
def P10757993427894549092.Spec : Prop :=
  ∀ n, P10757993427894549092.a n = A274233 (n + 1)

theorem P10757993427894549092.correct : P10757993427894549092.Spec := by
  intro n
  simp only [A274233, Nat.add_sub_cancel]

end A274233

/-! ## A274233.P12144751433786971727

`ogf((1-3x+6x^2-7x^3+9x^4-7x^5+6x^6-3x^7+x^8)/(1-4x+7x^2-9x^3+11x^4-11x^5+9x^6-7x^7+4x^8-x^9))`
-/

namespace A274233.P12144751433786971727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -3, 6, -7, 9, -7, 6, -3, 1] [1, -4, 7, -9, 11, -11, 9, -7, 4, -1] n

end

end A274233.P12144751433786971727

namespace A274233

/-- `ogf((1-3x+6x^2-7x^3+9x^4-7x^5+6x^6-3x^7+x^8)/(1-4x+7x^2-9x^3+11x^4-11x^5+9x^6-7x^7+4x^8-x^9))` -/
def P12144751433786971727.Spec : Prop :=
  ∀ n, P12144751433786971727.a n = A274233 (n + 1)

end A274233

/-! ## A274233.P1910024666289667399

`floor((A152950(n+1)²+4)/12)`
-/

namespace A274233.P1910024666289667399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A152950 (n + 1) ^ 2 + 4 : ℚ) / 12⌋

end

end A274233.P1910024666289667399

namespace A274233

/-- `floor((A152950(n+1)²+4)/12)` -/
def P1910024666289667399.Spec : Prop :=
  ∀ n, P1910024666289667399.a n = A274233 (n + 1)

end A274233

/-! ## A274233.P10356518892021648693

`A008748(n)+∑[∑[A054925(n)]]`
-/

namespace A274233.P10356518892021648693
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054925 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008748 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A274233.P10356518892021648693

namespace A274233

/-- `A008748(n)+∑[∑[A054925(n)]]` -/
def P10356518892021648693.Spec : Prop :=
  ∀ n, P10356518892021648693.a n = A274233 (n + 1)

end A274233

/-! ## A274233.P15450230013251085173

`A323879(2*n+1)+round((A000217(n)+3)²/12)`
-/

namespace A274233.P15450230013251085173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323879 (2 * n + 1) + SequenceMachineLib.roundAway (((A000217 n + 3) ^ 2 : ℚ) / 12)

end

end A274233.P15450230013251085173

namespace A274233

/-- `A323879(2*n+1)+round((A000217(n)+3)²/12)` -/
def P15450230013251085173.Spec : Prop :=
  ∀ n, P15450230013251085173.a n = A274233 (n + 1)

end A274233

/-! ## A274233.P9833720520962985542

`ceil((∑[n]+3)²/12-2^A008683(A003629(n+1)))`
-/

namespace A274233.P9833720520962985542
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(((∑ j ∈ Finset.range (n + 1), f1 j + 3) ^ 2 : ℕ) : ℚ) / 12 - (2 : ℚ) ^ (A008683 (A003629 (n + 1)).toNat : ℤ)⌉

end

end A274233.P9833720520962985542

namespace A274233

/-- `ceil((∑[n]+3)²/12-2^A008683(A003629(n+1)))` -/
def P9833720520962985542.Spec : Prop :=
  ∀ n, P9833720520962985542.a n = A274233 (n + 1)

end A274233

/-! ## A274233.P8487460673668475260

`A001399(∑[n])`
-/

namespace A274233.P8487460673668475260
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001399 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A274233.P8487460673668475260

namespace A274233

/-- `A001399(∑[n])` -/
def P8487460673668475260.Spec : Prop :=
  ∀ n, P8487460673668475260.a n = A274233 (n + 1)

theorem P8487460673668475260.correct : P8487460673668475260.Spec := by
  intro n
  simp only [A274233, Nat.add_sub_cancel, A274233.P8487460673668475260.f1, A274233.P8487460673668475260.a, A274233.P10757993427894549092.f1, A274233.P10757993427894549092.a, A001399, A001399.P15968082049530848519.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A274233

/-! ## A274233.P17692438052165214916

`or(char[1], A001399(C(n+1, 2)))`
-/

namespace A274233.P17692438052165214916
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A001399 (Nat.choose (n + 1) 2))

end

end A274233.P17692438052165214916

namespace A274233

/-- `or(char[1], A001399(C(n+1, 2)))` -/
def P17692438052165214916.Spec : Prop :=
  ∀ n, P17692438052165214916.a n = A274233 (n + 1)

end A274233

/-! ## A274233.P5019090540491661247

`or(char[1], A001399(A000217(n)))`
-/

namespace A274233.P5019090540491661247
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A001399 (A000217 n).toNat)

end

end A274233.P5019090540491661247

namespace A274233

/-- `or(char[1], A001399(A000217(n)))` -/
def P5019090540491661247.Spec : Prop :=
  ∀ n, P5019090540491661247.a n = A274233 (n + 1)

end A274233

/-! ## A274233.P4020969210868574219

`A001399(A000217(n))%A001546(n)`
-/

namespace A274233.P4020969210868574219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001399 (A000217 n).toNat) (A001546 n)

end

end A274233.P4020969210868574219

namespace A274233

/-- `A001399(A000217(n))%A001546(n)` -/
def P4020969210868574219.Spec : Prop :=
  ∀ n, P4020969210868574219.a n = A274233 (n + 1)

end A274233

/-! ## A274233.P13725258631925544518

`gcd(2, A001844(n))*A001399(A000217(n))`
-/

namespace A274233.P13725258631925544518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd 2 (A001844 n) : ℤ) * A001399 (A000217 n).toNat

end

end A274233.P13725258631925544518

namespace A274233

/-- `gcd(2, A001844(n))*A001399(A000217(n))` -/
def P13725258631925544518.Spec : Prop :=
  ∀ n, P13725258631925544518.a n = A274233 (n + 1)

end A274233

/-! ## A274233.P15638554675075296159

`and(1, A003215(n))*A001399(A000217(n))`
-/

namespace A274233.P15638554675075296159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A003215 n) * A001399 (A000217 n).toNat

end

end A274233.P15638554675075296159

namespace A274233

/-- `and(1, A003215(n))*A001399(A000217(n))` -/
def P15638554675075296159.Spec : Prop :=
  ∀ n, P15638554675075296159.a n = A274233 (n + 1)

end A274233

/-! ## A274233.P1527058800384565388

`A001399(A000217(n))^A014963(4*n+2)`
-/

namespace A274233.P1527058800384565388
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001399 (A000217 n).toNat : ℚ) ^ (A014963 (4 * n + 2) : ℤ)

end

end A274233.P1527058800384565388

namespace A274233

/-- `A001399(A000217(n))^A014963(4*n+2)` -/
def P1527058800384565388.Spec : Prop :=
  ∀ n, P1527058800384565388.a n = (A274233 (n + 1) : ℚ)

end A274233

/-! ## A274233.P10767473483822158871

`A000040(n+2)%2*A001399(A000217(n))`
-/

namespace A274233.P10767473483822158871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (n + 2)) 2 * A001399 (A000217 n).toNat

end

end A274233.P10767473483822158871

namespace A274233

/-- `A000040(n+2)%2*A001399(A000217(n))` -/
def P10767473483822158871.Spec : Prop :=
  ∀ n, P10767473483822158871.a n = A274233 (n + 1)

end A274233

/-! ## A274233.P7660262981533463906

`A001399(A000217(n))^(A000040(n+1)%2)`
-/

namespace A274233.P7660262981533463906
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001399 (A000217 n).toNat : ℚ) ^ (Int.tmod (A000040 (n + 1)) 2 : ℤ)

end

end A274233.P7660262981533463906

namespace A274233

/-- `A001399(A000217(n))^(A000040(n+1)%2)` -/
def P7660262981533463906.Spec : Prop :=
  ∀ n, P7660262981533463906.a n = (A274233 (n + 1) : ℚ)

end A274233

/-! ## A274233.P8196062122542747845

`A000041(C(2, n+2))*A001399(A000217(n))`
-/

namespace A274233.P8196062122542747845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (Nat.choose 2 (n + 2)) * A001399 (A000217 n).toNat

end

end A274233.P8196062122542747845

namespace A274233

/-- `A000041(C(2, n+2))*A001399(A000217(n))` -/
def P8196062122542747845.Spec : Prop :=
  ∀ n, P8196062122542747845.a n = A274233 (n + 1)

end A274233

/-! ## A274233.P6231523942640396297

`A069905(∑[n]+3)`
-/

namespace A274233.P6231523942640396297
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069905 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A274233.P6231523942640396297

namespace A274233

/-- `A069905(∑[n]+3)` -/
def P6231523942640396297.Spec : Prop :=
  ∀ n, P6231523942640396297.a n = A274233 (n + 1)

theorem P6231523942640396297.correct : P6231523942640396297.Spec := by
  intro n
  simp only [A274233, Nat.add_sub_cancel, A274233.P6231523942640396297.f1, A274233.P6231523942640396297.a, A274233.P10757993427894549092.f1, A274233.P10757993427894549092.a, A069905, A069905.P9161905402948910103.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A274233

/-! ## A274233.P18418482298462961879

`A211540(∑[n]+5)`
-/

namespace A274233.P18418482298462961879
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211540 (∑ j ∈ Finset.range (n + 1), f1 j + 5)

end

end A274233.P18418482298462961879

namespace A274233

/-- `A211540(∑[n]+5)` -/
def P18418482298462961879.Spec : Prop :=
  ∀ n, P18418482298462961879.a n = A274233 (n + 1)

theorem P18418482298462961879.correct : P18418482298462961879.Spec := by
  intro n
  simp only [A274233, Nat.add_sub_cancel, A274233.P18418482298462961879.f1, A274233.P18418482298462961879.a, A274233.P10757993427894549092.f1, A274233.P10757993427894549092.a, A211540, A211540.P9449273519256082514.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A274233

/-! ## A274233.P3737568512550874650

`A128012(∑[n])/3`
-/

namespace A274233.P3737568512550874650
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A128012 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ) / 3

end

end A274233.P3737568512550874650

namespace A274233

/-- `A128012(∑[n])/3` -/
def P3737568512550874650.Spec : Prop :=
  ∀ n, P3737568512550874650.a n = (A274233 (n + 1) : ℚ)

theorem P3737568512550874650.correct : P3737568512550874650.Spec := by
  intro n
  simp only [A274233, Nat.add_sub_cancel, A274233.P3737568512550874650.f1, A274233.P3737568512550874650.a, A274233.P10757993427894549092.f1, A274233.P10757993427894549092.a, A128012, A128012.P6644255252158757568.a, A001399, A001399.P15968082049530848519.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A274233

/-!
# A274239: Numbers n such that 9^n + 8^(n+1) is prime.

The programs for A274239, there is no canonical definition to state claims against.
-/

/-! ## A274239.P9779539925431781212

`A192391(A009884(n))`
-/

namespace A274239.P9779539925431781212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192391 (A009884 n).toNat

end

end A274239.P9779539925431781212

/-! ## A274239.P14057143763504864600

`A049581(A209668(n))+A000292(n)`
-/

namespace A274239.P14057143763504864600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049581 (A209668 n).toNat + A000292 n

end

end A274239.P14057143763504864600

/-!
# A274242: Numbers whose factorization contains only the greater members of twin prime pairs.

The programs for A274242, the canonical program `A274242.P14150804800791898491` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A274242 has offset 1).

The definition of A274242 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 524 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A274242.P1655564148732792002

`eq[n, A166590(A283463(n+1))]`
-/

namespace A274242.P1655564148732792002
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166590 (A283463 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A274242.P1655564148732792002

namespace A274242

/-- `eq[n, A166590(A283463(n+1))]` -/
def P1655564148732792002.Spec : Prop :=
  ∀ n, (P1655564148732792002.a n : ℤ) = A274242 (n + 1)

end A274242

/-! ## A274242.P8668061234871709409

`record[gcd(n+1, A166590(A064989(n+1)))]`
-/

namespace A274242.P8668061234871709409
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A166590 (A064989 (n + 1)).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A274242.P8668061234871709409

namespace A274242

/-- `record[gcd(n+1, A166590(A064989(n+1)))]` -/
def P8668061234871709409.Spec : Prop :=
  ∀ n, (P8668061234871709409.a n : ℤ) = A274242 (n + 1)

end A274242

/-! ## A274242.P14150804800791898491

`eq[A064989(n+1), A166586(n+1)]+1`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A274242

/-- `eq[A064989(n+1), A166586(n+1)]+1` -/
def P14150804800791898491.Spec : Prop :=
  ∀ n, (P14150804800791898491.a n : ℤ) = A274242 (n + 1)

theorem P14150804800791898491.correct : P14150804800791898491.Spec := by
  intro n
  simp only [A274242, Nat.add_sub_cancel]

end A274242

/-! ## A274242.P9780587170440983432

`eq[A166586(n+1), A349122(n+1)]+1`
-/

namespace A274242.P9780587170440983432
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166586 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349122 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A274242.P9780587170440983432

namespace A274242

/-- `eq[A166586(n+1), A349122(n+1)]+1` -/
def P9780587170440983432.Spec : Prop :=
  ∀ n, (P9780587170440983432.a n : ℤ) = A274242 (n + 1)

end A274242

/-! ## A274242.P3062314128852954443

`eq[A000290(n), A167358(A283463(n+1))]`
-/

namespace A274242.P3062314128852954443
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167358 (A283463 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A274242.P3062314128852954443

namespace A274242

/-- `eq[A000290(n), A167358(A283463(n+1))]` -/
def P3062314128852954443.Spec : Prop :=
  ∀ n, (P3062314128852954443.a n : ℤ) = A274242 (n + 1)

end A274242

/-! ## A274242.P14916160386254867743

`A004442(eq[A064989(n+1), A166586(n+1)])`
-/

namespace A274242.P14916160386254867743
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064989 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166586 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A274242.P14916160386254867743

namespace A274242

/-- `A004442(eq[A064989(n+1), A166586(n+1)])` -/
def P14916160386254867743.Spec : Prop :=
  ∀ n, P14916160386254867743.a n = A274242 (n + 1)

end A274242

/-! ## A274242.P11072229578714821419

`A079097(eq[A064989(n+1), A166586(n+1)])`
-/

namespace A274242.P11072229578714821419
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064989 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166586 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079097 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A274242.P11072229578714821419

namespace A274242

/-- `A079097(eq[A064989(n+1), A166586(n+1)])` -/
def P11072229578714821419.Spec : Prop :=
  ∀ n, P11072229578714821419.a n = A274242 (n + 1)

end A274242

/-! ## A274242.P694700681957019869

`A109613(eq[A064989(n+1), A166586(n+1)])`
-/

namespace A274242.P694700681957019869
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064989 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166586 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109613 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A274242.P694700681957019869

namespace A274242

/-- `A109613(eq[A064989(n+1), A166586(n+1)])` -/
def P694700681957019869.Spec : Prop :=
  ∀ n, P694700681957019869.a n = A274242 (n + 1)

end A274242

/-! ## A274242.P75646448535044488

`A079097(eq[A166586(n+1), A349122(n+1)])`
-/

namespace A274242.P75646448535044488
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166586 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349122 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079097 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A274242.P75646448535044488

namespace A274242

/-- `A079097(eq[A166586(n+1), A349122(n+1)])` -/
def P75646448535044488.Spec : Prop :=
  ∀ n, P75646448535044488.a n = A274242 (n + 1)

end A274242

/-!
# A274243: Numbers n for which the sum of the odd numbers in the Collatz (3x+1) iteration of n is prime.

The programs for A274243, there is no canonical definition to state claims against.
-/

/-! ## A274243.P6179517725319416703

`eq[2, A000005(A213916(n+1))]+1`
-/

namespace A274243.P6179517725319416703
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A213916 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A274243.P6179517725319416703

/-! ## A274243.P8108705896661677253

`eq[2, A001222(2*A213916(n+1))]+1`
-/

namespace A274243.P8108705896661677253
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (2 * A213916 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A274243.P8108705896661677253

/-!
# A274246: a(n) = Sum_{k=0..n} binomial(n, k)^3 * 2^(n-k) * k!.

The programs for A274246, the canonical program `A274246.P3685447373455217666` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A274246 has offset 0).

The definition of A274246 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A274246.P3685447373455217666

`∑{#}[n, C(n, #)^3*2^(n-#)*#!]`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A274246

/-- `∑{#}[n, C(n, #)^3*2^(n-#)*#!]` -/
def P3685447373455217666.Spec : Prop :=
  ∀ n, P3685447373455217666.a n = (A274246 n : ℚ)

end A274246

/-!
# A274248: Row sums of A273751.

The programs for A274248, the canonical program `A274248.P9253862500487995918` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A274248 has offset 1).

The definition of A274248 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A274248.P17515302005437634749

`ogf((1+2x+3x^2+x^3)/(1-3x+2x^2+2x^3-3x^4+x^5))`
-/

namespace A274248.P17515302005437634749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 2, 3, 1] [1, -3, 2, 2, -3, 1] n

end

end A274248.P17515302005437634749

namespace A274248

/-- `ogf((1+2x+3x^2+x^3)/(1-3x+2x^2+2x^3-3x^4+x^5))` -/
def P17515302005437634749.Spec : Prop :=
  ∀ n, P17515302005437634749.a n = A274248 (n + 1)

end A274248

/-! ## A274248.P9253862500487995918

`((n+1)*(20-6*(n+1)+28*(n+1)²)+6*(n+1)%2)/48`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A274248

/-- `((n+1)*(20-6*(n+1)+28*(n+1)²)+6*(n+1)%2)/48` -/
def P9253862500487995918.Spec : Prop :=
  ∀ n, P9253862500487995918.a n = (A274248 (n + 1) : ℚ)

end A274248

/-! ## A274248.P15309177332595154007

`((n+1)*(20-6*(n+1)+28*(n+1)²)+3*(1-(-1)^(n+1)))/48`
-/

namespace A274248.P15309177332595154007
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℤ) * (20 - (6 * (n + 1) : ℤ) + (28 * (n + 1) ^ 2 : ℤ)) + 3 * (1 - (-1) ^ (n + 1)) : ℚ) / 48

end

end A274248.P15309177332595154007

namespace A274248

/-- `((n+1)*(20-6*(n+1)+28*(n+1)²)+3*(1-(-1)^(n+1)))/48` -/
def P15309177332595154007.Spec : Prop :=
  ∀ n, P15309177332595154007.a n = (A274248 (n + 1) : ℚ)

end A274248

/-! ## A274248.P2266988081384106235

`∑[∑[a(n-2)+7]]` with `a(0)=1, a(1)=3, a(2)=7`
-/

namespace A274248.P2266988081384106235
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 3, 7] fun n f2 =>
  f2 (n - 2) + 7

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A274248.P2266988081384106235

namespace A274248

/-- `∑[∑[a(n-2)+7]]` -/
def P2266988081384106235.Spec : Prop :=
  ∀ n, (P2266988081384106235.a n : ℤ) = A274248 (n + 1)

end A274248

/-! ## A274248.P17134487443760478220

`∑[∑[∑[7-a(n-1)]]]` with `a(0)=1, a(1)=2, a(2)=4`
-/

namespace A274248.P17134487443760478220
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 4] fun n f3 =>
  7 - f3 (n - 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A274248.P17134487443760478220

namespace A274248

/-- `∑[∑[∑[7-a(n-1)]]]` -/
def P17134487443760478220.Spec : Prop :=
  ∀ n, P17134487443760478220.a n = A274248 (n + 1)

end A274248

/-! ## A274248.P1750949463157669513

`∑[A271937(n)-n]`
-/

namespace A274248.P1750949463157669513
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271937 n - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A274248.P1750949463157669513

namespace A274248

/-- `∑[A271937(n)-n]` -/
def P1750949463157669513.Spec : Prop :=
  ∀ n, P1750949463157669513.a n = A274248 (n + 1)

end A274248

/-! ## A274248.P18133276705369341097

`(n+1)^3-A212982(n)`
-/

namespace A274248.P18133276705369341097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 3 : ℤ) - A212982 n

end

end A274248.P18133276705369341097

namespace A274248

/-- `(n+1)^3-A212982(n)` -/
def P18133276705369341097.Spec : Prop :=
  ∀ n, P18133276705369341097.a n = A274248 (n + 1)

end A274248

/-! ## A274248.P7528205753146388624

`A045947(n)+∑[(n+1)²]`
-/

namespace A274248.P7528205753146388624
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045947 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A274248.P7528205753146388624

namespace A274248

/-- `A045947(n)+∑[(n+1)²]` -/
def P7528205753146388624.Spec : Prop :=
  ∀ n, P7528205753146388624.a n = A274248 (n + 1)

end A274248

/-! ## A274248.P6559326391481111363

`∑[A077043(n+1)+n²]`
-/

namespace A274248.P6559326391481111363
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077043 (n + 1) + (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A274248.P6559326391481111363

namespace A274248

/-- `∑[A077043(n+1)+n²]` -/
def P6559326391481111363.Spec : Prop :=
  ∀ n, P6559326391481111363.a n = A274248 (n + 1)

end A274248

/-! ## A274248.P15459531745221762481

`A002623(n)+(n+1)*∑[n]`
-/

namespace A274248.P15459531745221762481
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002623 n + (((n + 1) * (∑ j ∈ Finset.range (n + 1), f1 j) : ℕ) : ℤ)

end

end A274248.P15459531745221762481

namespace A274248

/-- `A002623(n)+(n+1)*∑[n]` -/
def P15459531745221762481.Spec : Prop :=
  ∀ n, P15459531745221762481.a n = A274248 (n + 1)

end A274248

/-! ## A274248.P14780706238093067680

`∑[A249547(n)+∑[n]]+n+1`
-/

namespace A274248.P14780706238093067680
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249547 n + ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n + 1 : ℤ)

end

end A274248.P14780706238093067680

namespace A274248

/-- `∑[A249547(n)+∑[n]]+n+1` -/
def P14780706238093067680.Spec : Prop :=
  ∀ n, P14780706238093067680.a n = A274248 (n + 1)

end A274248

/-! ## A274248.P17519516761038745323

`A006002(n)+A002623(n)`
-/

namespace A274248.P17519516761038745323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006002 n + A002623 n

end

end A274248.P17519516761038745323

namespace A274248

/-- `A006002(n)+A002623(n)` -/
def P17519516761038745323.Spec : Prop :=
  ∀ n, P17519516761038745323.a n = A274248 (n + 1)

end A274248

/-! ## A274248.P12775309644777136310

`A006000(n)+A005744(n)`
-/

namespace A274248.P12775309644777136310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006000 n + A005744 n

end

end A274248.P12775309644777136310

namespace A274248

/-- `A006000(n)+A005744(n)` -/
def P12775309644777136310.Spec : Prop :=
  ∀ n, P12775309644777136310.a n = A274248 (n + 1)

end A274248

/-! ## A274248.P9494069018633123544

`A167875(n)+A002717(n)`
-/

namespace A274248.P9494069018633123544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167875 n + A002717 n

end

end A274248.P9494069018633123544

namespace A274248

/-- `A167875(n)+A002717(n)` -/
def P9494069018633123544.Spec : Prop :=
  ∀ n, P9494069018633123544.a n = A274248 (n + 1)

end A274248

/-! ## A274248.P9332750191860948090

`A266464(n)+A027480(n)`
-/

namespace A274248.P9332750191860948090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266464 n + A027480 n

end

end A274248.P9332750191860948090

namespace A274248

/-- `A266464(n)+A027480(n)` -/
def P9332750191860948090.Spec : Prop :=
  ∀ n, P9332750191860948090.a n = A274248 (n + 1)

end A274248

/-! ## A274248.P12795108480541807340

`A248851(n)+A056520(n)`
-/

namespace A274248.P12795108480541807340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248851 n + A056520 n

end

end A274248.P12795108480541807340

namespace A274248

/-- `A248851(n)+A056520(n)` -/
def P12795108480541807340.Spec : Prop :=
  ∀ n, P12795108480541807340.a n = A274248 (n + 1)

end A274248

/-! ## A274248.P13418228078833354712

`A081436(n)-A212981(n)`
-/

namespace A274248.P13418228078833354712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081436 n - A212981 n

end

end A274248.P13418228078833354712

namespace A274248

/-- `A081436(n)-A212981(n)` -/
def P13418228078833354712.Spec : Prop :=
  ∀ n, P13418228078833354712.a n = A274248 (n + 1)

end A274248

/-! ## A274248.P3933419092630972516

`A212981(n)+A131941(n+1)`
-/

namespace A274248.P3933419092630972516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212981 n + A131941 (n + 1)

end

end A274248.P3933419092630972516

namespace A274248

/-- `A212981(n)+A131941(n+1)` -/
def P3933419092630972516.Spec : Prop :=
  ∀ n, P3933419092630972516.a n = A274248 (n + 1)

end A274248

/-! ## A274248.P8773231663518207138

`A006000(n)+∑[A002620(n)+n]`
-/

namespace A274248.P8773231663518207138
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006000 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A274248.P8773231663518207138

namespace A274248

/-- `A006000(n)+∑[A002620(n)+n]` -/
def P8773231663518207138.Spec : Prop :=
  ∀ n, P8773231663518207138.a n = A274248 (n + 1)

end A274248

/-! ## A274248.P1291140899332311495

`A296197(n+1)+A110426(n+1)`
-/

namespace A274248.P1291140899332311495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296197 (n + 1) + A110426 (n + 1)

end

end A274248.P1291140899332311495

namespace A274248

/-- `A296197(n+1)+A110426(n+1)` -/
def P1291140899332311495.Spec : Prop :=
  ∀ n, P1291140899332311495.a n = A274248 (n + 1)

end A274248

/-!
# A274250: Number of partitions of n^2 into at most three parts.

The programs for A274250, the canonical program `A274250.P9942730966497482126` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A274250 has offset 0).

The definition of A274250 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A274250.P9942730966497482126

`round((n²+3)²/12)`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A274250

/-- `round((n²+3)²/12)` -/
def P9942730966497482126.Spec : Prop :=
  ∀ n, P9942730966497482126.a n = A274250 n

theorem P9942730966497482126.correct : P9942730966497482126.Spec := by
  intro n
  simp only [A274250]

end A274250

/-! ## A274250.P3885906494366949874

`ogf((1-2x+3x^2+3x^3+3x^4+2x^5+x^6+x^7)/(1-3x+2x^2+x^3-x^5-2x^6+3x^7-x^8))`
-/

namespace A274250.P3885906494366949874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -2, 3, 3, 3, 2, 1, 1] [1, -3, 2, 1, 0, -1, -2, 3, -1] n

end

end A274250.P3885906494366949874

namespace A274250

/-- `ogf((1-2x+3x^2+3x^3+3x^4+2x^5+x^6+x^7)/(1-3x+2x^2+x^3-x^5-2x^6+3x^7-x^8))` -/
def P3885906494366949874.Spec : Prop :=
  ∀ n, P3885906494366949874.a n = A274250 n

end A274250

/-! ## A274250.P13964096070248230551

`A001399(n²)`
-/

namespace A274250.P13964096070248230551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001399 (n ^ 2)

end

end A274250.P13964096070248230551

namespace A274250

/-- `A001399(n²)` -/
def P13964096070248230551.Spec : Prop :=
  ∀ n, P13964096070248230551.a n = A274250 n

theorem P13964096070248230551.correct : P13964096070248230551.Spec := by
  intro n
  simp only [A274250, Nat.add_sub_cancel, A274250.P13964096070248230551.a, A274250.P9942730966497482126.a, A001399, A001399.P15968082049530848519.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A274250

/-! ## A274250.P4855112325598949488

`floor((((n-1)/2-A000124(n))²+1)/3)`
-/

namespace A274250.P4855112325598949488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((((n : ℤ) - 1 : ℚ) / 2 - (A000124 n : ℚ)) ^ 2 + 1) / 3⌋

end

end A274250.P4855112325598949488

namespace A274250

/-- `floor((((n-1)/2-A000124(n))²+1)/3)` -/
def P4855112325598949488.Spec : Prop :=
  ∀ n, P4855112325598949488.a n = A274250 n

end A274250

/-! ## A274250.P14161221294790897741

`A001399(n)+A161680(n)+A002415(n)`
-/

namespace A274250.P14161221294790897741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001399 n + (A161680 n + A002415 n)

end

end A274250.P14161221294790897741

namespace A274250

/-- `A001399(n)+A161680(n)+A002415(n)` -/
def P14161221294790897741.Spec : Prop :=
  ∀ n, P14161221294790897741.a n = A274250 n

end A274250

/-! ## A274250.P12858583292280349916

`A001399(n)+A008911(n)-A117662(n)`
-/

namespace A274250.P12858583292280349916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001399 n + (A008911 n - A117662 n)

end

end A274250.P12858583292280349916

namespace A274250

/-- `A001399(n)+A008911(n)-A117662(n)` -/
def P12858583292280349916.Spec : Prop :=
  ∀ n, P12858583292280349916.a n = A274250 n

end A274250

/-! ## A274250.P14555647837863994282

`A000212(A004652(n))+A033638(n)²`
-/

namespace A274250.P14555647837863994282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000212 (A004652 n).toNat + A033638 n ^ 2

end

end A274250.P14555647837863994282

namespace A274250

/-- `A000212(A004652(n))+A033638(n)²` -/
def P14555647837863994282.Spec : Prop :=
  ∀ n, P14555647837863994282.a n = A274250 n

end A274250

/-! ## A274250.P258164730591139199

`root(A001399(n^2)^2, 2)`
-/

namespace A274250.P258164730591139199
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A001399 (n ^ 2) ^ 2 : ℝ) ^ (1 / (2 : ℝ))

end

end A274250.P258164730591139199

namespace A274250

/-- `root(A001399(n^2)^2, 2)` -/
def P258164730591139199.Spec : Prop :=
  ∀ n, P258164730591139199.a n = (A274250 n : ℝ)

end A274250

/-! ## A274250.P8657209980271436308

`or(char[1], A001399(A000290(n)))`
-/

namespace A274250.P8657209980271436308
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A001399 (A000290 n).toNat)

end

end A274250.P8657209980271436308

namespace A274250

/-- `or(char[1], A001399(A000290(n)))` -/
def P8657209980271436308.Spec : Prop :=
  ∀ n, P8657209980271436308.a n = A274250 n

end A274250

/-! ## A274250.P12834049626362816361

`A001263(A000124(n))*A001399(A000290(n))`
-/

namespace A274250.P12834049626362816361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001263 (A000124 n).toNat * A001399 (A000290 n).toNat

end

end A274250.P12834049626362816361

namespace A274250

/-- `A001263(A000124(n))*A001399(A000290(n))` -/
def P12834049626362816361.Spec : Prop :=
  ∀ n, P12834049626362816361.a n = A274250 n

end A274250

/-! ## A274250.P11423776905593008303

`A001399(A000290(n))%A014641(A001399(n))`
-/

namespace A274250.P11423776905593008303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001399 (A000290 n).toNat) (A014641 (A001399 n).toNat)

end

end A274250.P11423776905593008303

namespace A274250

/-- `A001399(A000290(n))%A014641(A001399(n))` -/
def P11423776905593008303.Spec : Prop :=
  ∀ n, P11423776905593008303.a n = A274250 n

end A274250

/-! ## A274250.P5558902142730012306

`A069905(n²+3)`
-/

namespace A274250.P5558902142730012306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069905 (n ^ 2 + 3)

end

end A274250.P5558902142730012306

namespace A274250

/-- `A069905(n²+3)` -/
def P5558902142730012306.Spec : Prop :=
  ∀ n, P5558902142730012306.a n = A274250 n

theorem P5558902142730012306.correct : P5558902142730012306.Spec := by
  intro n
  simp only [A274250, Nat.add_sub_cancel, A274250.P5558902142730012306.a, A274250.P9942730966497482126.a, A069905, A069905.P9161905402948910103.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A274250

/-! ## A274250.P17549060988304210992

`A211540(n²+5)`
-/

namespace A274250.P17549060988304210992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211540 (n ^ 2 + 5)

end

end A274250.P17549060988304210992

namespace A274250

/-- `A211540(n²+5)` -/
def P17549060988304210992.Spec : Prop :=
  ∀ n, P17549060988304210992.a n = A274250 n

theorem P17549060988304210992.correct : P17549060988304210992.Spec := by
  intro n
  simp only [A274250, Nat.add_sub_cancel, A274250.P17549060988304210992.a, A274250.P9942730966497482126.a, A211540, A211540.P9449273519256082514.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A274250

/-! ## A274250.P15905994269140373804

`A128012(n²)/3`
-/

namespace A274250.P15905994269140373804
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A128012 (n ^ 2) : ℚ) / 3

end

end A274250.P15905994269140373804

namespace A274250

/-- `A128012(n²)/3` -/
def P15905994269140373804.Spec : Prop :=
  ∀ n, P15905994269140373804.a n = (A274250 n : ℚ)

theorem P15905994269140373804.correct : P15905994269140373804.Spec := by
  intro n
  simp only [A274250, Nat.add_sub_cancel, A274250.P15905994269140373804.a, A274250.P9942730966497482126.a, A128012, A128012.P6644255252158757568.a, A001399, A001399.P15968082049530848519.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A274250

/-! ## A274250.P7320764355254985208

`A036410(n²)+A008724(2*n)`
-/

namespace A274250.P7320764355254985208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036410 (n ^ 2) + A008724 (2 * n)

end

end A274250.P7320764355254985208

namespace A274250

/-- `A036410(n²)+A008724(2*n)` -/
def P7320764355254985208.Spec : Prop :=
  ∀ n, P7320764355254985208.a n = A274250 n

end A274250

/-!
# A274251: Number of partitions of n^3 into at most three parts.

The programs for A274251, the canonical program `A274251.P16207073542617588327` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A274251 has offset 0).

The definition of A274251 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A274251.P16207073542617588327

`round((n^3+3)²/12)`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A274251

/-- `round((n^3+3)²/12)` -/
def P16207073542617588327.Spec : Prop :=
  ∀ n, P16207073542617588327.a n = A274251 n

theorem P16207073542617588327.correct : P16207073542617588327.Spec := by
  intro n
  simp only [A274251]

end A274251

/-! ## A274251.P7546975471991633202

`ogf((1-4x+14x^2+28x^3+83x^4+110x^5+88x^6+38x^7+2x^8)/(1-5x+9x^2-6x^3+6x^7-9x^8+5x^9-x^10))`
-/

namespace A274251.P7546975471991633202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -4, 14, 28, 83, 110, 88, 38, 2] [1, -5, 9, -6, 0, 0, 0, 6, -9, 5, -1] n

end

end A274251.P7546975471991633202

namespace A274251

/-- `ogf((1-4x+14x^2+28x^3+83x^4+110x^5+88x^6+38x^7+2x^8)/(1-5x+9x^2-6x^3+6x^7-9x^8+5x^9-x^10))` -/
def P7546975471991633202.Spec : Prop :=
  ∀ n, P7546975471991633202.a n = A274251 n

end A274251

/-! ## A274251.P8750827573529849382

`A001399(n^3)`
-/

namespace A274251.P8750827573529849382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001399 (n ^ 3)

end

end A274251.P8750827573529849382

namespace A274251

/-- `A001399(n^3)` -/
def P8750827573529849382.Spec : Prop :=
  ∀ n, P8750827573529849382.a n = A274251 n

theorem P8750827573529849382.correct : P8750827573529849382.Spec := by
  intro n
  simp only [A274251, Nat.add_sub_cancel, A274251.P8750827573529849382.a, A274251.P16207073542617588327.a, A001399, A001399.P15968082049530848519.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A274251

/-! ## A274251.P10124649836079879748

`gcd(4*char[1], A001399(n*n²))`
-/

namespace A274251.P10124649836079879748
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((4 * (if ∃ j, f1 j = n then 1 else 0) : ℕ) : ℤ) (A001399 (n * n ^ 2))

end

end A274251.P10124649836079879748

namespace A274251

/-- `gcd(4*char[1], A001399(n*n²))` -/
def P10124649836079879748.Spec : Prop :=
  ∀ n, (P10124649836079879748.a n : ℤ) = A274251 n

end A274251

/-! ## A274251.P15435838097169001345

`and(-1, A001399(A000578(n)))`
-/

namespace A274251.P15435838097169001345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A001399 (A000578 n).toNat)

end

end A274251.P15435838097169001345

namespace A274251

/-- `and(-1, A001399(A000578(n)))` -/
def P15435838097169001345.Spec : Prop :=
  ∀ n, P15435838097169001345.a n = A274251 n

end A274251

/-!
# A274252: Number of partitions of n^5 into at most three parts.

The programs for A274252, the canonical program `A274252.P10301283185175700853` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A274252 has offset 0).

The definition of A274252 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A274252.P10301283185175700853

`round((n^5+3)²/12)`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A274252

/-- `round((n^5+3)²/12)` -/
def P10301283185175700853.Spec : Prop :=
  ∀ n, P10301283185175700853.a n = A274252 n

theorem P10301283185175700853.correct : P10301283185175700853.Spec := by
  intro n
  simp only [A274252]

end A274252

/-! ## A274252.P15190840046712342563

`A001399(n^5)`
-/

namespace A274252.P15190840046712342563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001399 (n ^ 5)

end

end A274252.P15190840046712342563

namespace A274252

/-- `A001399(n^5)` -/
def P15190840046712342563.Spec : Prop :=
  ∀ n, P15190840046712342563.a n = A274252 n

theorem P15190840046712342563.correct : P15190840046712342563.Spec := by
  intro n
  simp only [A274252, Nat.add_sub_cancel, A274252.P15190840046712342563.a, A274252.P10301283185175700853.a, A001399, A001399.P15968082049530848519.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A274252

/-! ## A274252.P16546037805523858543

`and(-1, A001399(A000584(n)))`
-/

namespace A274252.P16546037805523858543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A001399 (A000584 n).toNat)

end

end A274252.P16546037805523858543

namespace A274252

/-- `and(-1, A001399(A000584(n)))` -/
def P16546037805523858543.Spec : Prop :=
  ∀ n, P16546037805523858543.a n = A274252 n

end A274252

/-! ## A274252.P12788099982673474131

`A001399(A000584(n))+A000249(n)`
-/

namespace A274252.P12788099982673474131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001399 (A000584 n).toNat + A000249 n

end

end A274252.P12788099982673474131

namespace A274252

/-- `A001399(A000584(n))+A000249(n)` -/
def P12788099982673474131.Spec : Prop :=
  ∀ n, P12788099982673474131.a n = A274252 n

end A274252

/-!
# A274253: Number of partitions of n^7 into at most three parts.

The programs for A274253, the canonical program `A274253.P15056269477215385421` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A274253 has offset 0).

The definition of A274253 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A274253.P15056269477215385421

`round((n^7+3)²/12)`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A274253

/-- `round((n^7+3)²/12)` -/
def P15056269477215385421.Spec : Prop :=
  ∀ n, P15056269477215385421.a n = A274253 n

theorem P15056269477215385421.correct : P15056269477215385421.Spec := by
  intro n
  simp only [A274253]

end A274253

/-!
# A274254: Number of partitions of n^11 into at most three parts.

The programs for A274254, the canonical program `A274254.P17194606758648136294` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A274254 has offset 0).

The definition of A274254 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A274254.P17194606758648136294

`round((n^11+3)²/12)`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A274254

/-- `round((n^11+3)²/12)` -/
def P17194606758648136294.Spec : Prop :=
  ∀ n, P17194606758648136294.a n = A274254 n

theorem P17194606758648136294.correct : P17194606758648136294.Spec := by
  intro n
  simp only [A274254]

end A274254

/-!
# A274255: Numbers n such that n^2 is the sum of three nonzero squares while n is not.

The programs for A274255, there is no canonical definition to state claims against.
-/

/-! ## A274255.P9050248283109033488

`lt[A037215(n), A181786(n)]`
-/

namespace A274255.P9050248283109033488
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037215 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181786 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A274255.P9050248283109033488

/-! ## A274255.P7074567874504574318

`lt[A347802(n), A181786(n)]`
-/

namespace A274255.P7074567874504574318
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347802 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181786 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A274255.P7074567874504574318

/-! ## A274255.P6756624138942578290

`lt[A063691(n), atan(A181786(n))]`
-/

namespace A274255.P6756624138942578290
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063691 n

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.arctan (A181786 n : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A274255.P6756624138942578290

/-! ## A274255.P16260744343777108848

`lt[A037215(n), A025427(2*n)]`
-/

namespace A274255.P16260744343777108848
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037215 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025427 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A274255.P16260744343777108848

/-! ## A274255.P9756117121568976096

`lt[A347802(n), A025427(2*n)]`
-/

namespace A274255.P9756117121568976096
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347802 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025427 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A274255.P9756117121568976096

/-! ## A274255.P1461929402559309749

`lt[A347802(n), A025437(2*n)]`
-/

namespace A274255.P1461929402559309749
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347802 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025437 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A274255.P1461929402559309749

/-! ## A274255.P7544219592845794001

`lt[A063691(n)², A025427(2*n)]`
-/

namespace A274255.P7544219592845794001
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063691 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025427 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A274255.P7544219592845794001

/-! ## A274255.P1063771667342962712

`eq[0, A025427(n)^A025427(2*n)]`
-/

namespace A274255.P1063771667342962712
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A025427 n : ℚ) ^ (A025427 (2 * n) : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) = f2 j) n

end

end A274255.P1063771667342962712

/-! ## A274255.P16429023628838970749

`∩[A004214(n+1), A005767(n+1)]`
-/

namespace A274255.P16429023628838970749
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004214 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005767 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A274255.P16429023628838970749

/-! ## A274255.P3750596151667803387

`∩[A004214(n+1), A161992(n+1)]`
-/

namespace A274255.P3750596151667803387
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004214 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161992 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A274255.P3750596151667803387

/-!
# A274262: Number of positive integers possessing exactly n Fibonacci representations (A000121).

The programs for A274262, there is no canonical definition to state claims against.
-/

/-! ## A274262.P16493796784343684145

`A006874(n+1)*A036453(A057335(n))`
-/

namespace A274262.P16493796784343684145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006874 (n + 1) * A036453 (A057335 n).toNat

end

end A274262.P16493796784343684145

/-! ## A274262.P12684570039933912277

`A000034(A173460(n))*A006874(n+1)`
-/

namespace A274262.P12684570039933912277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (A173460 n).toNat * A006874 (n + 1)

end

end A274262.P12684570039933912277

/-! ## A274262.P5955209663456086053

`A001511(A269697(n))*A006874(n+1)`
-/

namespace A274262.P5955209663456086053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (A269697 n).toNat * A006874 (n + 1)

end

end A274262.P5955209663456086053

/-! ## A274262.P1582474916082489326

`A005811(A329562(n))*A006874(n+1)`
-/

namespace A274262.P1582474916082489326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005811 (A329562 n).toNat * A006874 (n + 1)

end

end A274262.P1582474916082489326

/-! ## A274262.P9660757740841737011

`A006874(n+1)*A020639(A229488(n+1))`
-/

namespace A274262.P9660757740841737011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006874 (n + 1) * A020639 (A229488 (n + 1)).toNat

end

end A274262.P9660757740841737011

/-!
# A274263: Integer part of the ratio of consecutive prime gaps.

The programs for A274263, the canonical program `A274263.P9426455071173877905` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A274263 has offset 1).

The definition of A274263 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A274263.P9426455071173877905

`floor(A001223(n+2)/A001223(n+1))`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A274263

/-- `floor(A001223(n+2)/A001223(n+1))` -/
def P9426455071173877905.Spec : Prop :=
  ∀ n, P9426455071173877905.a n = A274263 (n + 1)

theorem P9426455071173877905.correct : P9426455071173877905.Spec := by
  intro n
  simp only [A274263, Nat.add_sub_cancel]

end A274263

/-! ## A274263.P16976582833903848521

`floor(ratio[A001223(n+1)])`
-/

namespace A274263.P16976582833903848521
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(f1 (n + 1) : ℚ) / (f1 n : ℚ)⌋

end

end A274263.P16976582833903848521

namespace A274263

/-- `floor(ratio[A001223(n+1)])` -/
def P16976582833903848521.Spec : Prop :=
  ∀ n, P16976582833903848521.a n = A274263 (n + 1)

theorem P16976582833903848521.correct : P16976582833903848521.Spec := by
  intro n
  simp only [A274263, Nat.add_sub_cancel, A274263.P16976582833903848521.f1, A274263.P16976582833903848521.a, A274263.P9426455071173877905.a, SequenceMachineLib.memo_apply]

end A274263

/-! ## A274263.P11869359340583066732

`(A001223(n+2)-A276812(n+1))/A001223(n+1)`
-/

namespace A274263.P11869359340583066732
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001223 (n + 2) - A276812 (n + 1) : ℚ) / (A001223 (n + 1) : ℚ)

end

end A274263.P11869359340583066732

namespace A274263

/-- `(A001223(n+2)-A276812(n+1))/A001223(n+1)` -/
def P11869359340583066732.Spec : Prop :=
  ∀ n, P11869359340583066732.a n = (A274263 (n + 1) : ℚ)

end A274263

/-! ## A274263.P13112705928224801635

`floor(ratio[log2(A218075(n+1))])`
-/

namespace A274263.P13112705928224801635
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A218075 (n + 1) : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊f1 (n + 1) / f1 n⌋

end

end A274263.P13112705928224801635

namespace A274263

/-- `floor(ratio[log2(A218075(n+1))])` -/
def P13112705928224801635.Spec : Prop :=
  ∀ n, P13112705928224801635.a n = A274263 (n + 1)

end A274263

/-! ## A274263.P12064341226348972109

`val(A140299(n+1), A140299(n))`
-/

namespace A274263.P12064341226348972109
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A140299 (n + 1)).toNat (A140299 n).toNat

end

end A274263.P12064341226348972109

namespace A274263

/-- `val(A140299(n+1), A140299(n))` -/
def P12064341226348972109.Spec : Prop :=
  ∀ n, (P12064341226348972109.a n : ℤ) = A274263 (n + 1)

end A274263

/-! ## A274263.P17510769423590237396

`floor(ratio[A001043(n+1)-A100484(n+1)])`
-/

namespace A274263.P17510769423590237396
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001043 (n + 1) - A100484 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(f1 (n + 1) : ℚ) / (f1 n : ℚ)⌋

end

end A274263.P17510769423590237396

namespace A274263

/-- `floor(ratio[A001043(n+1)-A100484(n+1)])` -/
def P17510769423590237396.Spec : Prop :=
  ∀ n, P17510769423590237396.a n = A274263 (n + 1)

theorem P17510769423590237396.correct : P17510769423590237396.Spec := by
  intro n
  simp only [A274263, Nat.add_sub_cancel, A274263.P17510769423590237396.f1, A274263.P17510769423590237396.a, A274263.P9426455071173877905.a, A001043, A001043.P18269783162673735460.a, A001223, A001223.P5034056745985311719.a, A100484, A100484.P9678625670825099636.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A274263

/-! ## A274263.P4633809677403179316

`floor(ratio[A075526(n+1)])`
-/

namespace A274263.P4633809677403179316
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075526 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(f1 (n + 1) : ℚ) / (f1 n : ℚ)⌋

end

end A274263.P4633809677403179316

namespace A274263

/-- `floor(ratio[A075526(n+1)])` -/
def P4633809677403179316.Spec : Prop :=
  ∀ n, P4633809677403179316.a n = A274263 (n + 1)

end A274263

/-! ## A274263.P8903430534738023552

`floor(ratio[A054541(n+2)])`
-/

namespace A274263.P8903430534738023552
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054541 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(f1 (n + 1) : ℚ) / (f1 n : ℚ)⌋

end

end A274263.P8903430534738023552

namespace A274263

/-- `floor(ratio[A054541(n+2)])` -/
def P8903430534738023552.Spec : Prop :=
  ∀ n, P8903430534738023552.a n = A274263 (n + 1)

end A274263

/-! ## A274263.P7620494551581824739

`floor(ratio[A125266(n+2)])`
-/

namespace A274263.P7620494551581824739
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125266 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(f1 (n + 1) : ℚ) / (f1 n : ℚ)⌋

end

end A274263.P7620494551581824739

namespace A274263

/-- `floor(ratio[A125266(n+2)])` -/
def P7620494551581824739.Spec : Prop :=
  ∀ n, P7620494551581824739.a n = A274263 (n + 1)

end A274263

/-! ## A274263.P9681166264390617426

`floor(ratio[Δ[A000040(n+1)]])`
-/

namespace A274263.P9681166264390617426
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(f1 (n + 1) : ℚ) / (f1 n : ℚ)⌋

end

end A274263.P9681166264390617426

namespace A274263

/-- `floor(ratio[Δ[A000040(n+1)]])` -/
def P9681166264390617426.Spec : Prop :=
  ∀ n, P9681166264390617426.a n = A274263 (n + 1)

theorem P9681166264390617426.correct : P9681166264390617426.Spec := by
  intro n
  simp only [A274263, Nat.add_sub_cancel, A274263.P9681166264390617426.f2, A274263.P9681166264390617426.f1, A274263.P9681166264390617426.a, A274263.P9426455071173877905.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A001223, A001223.P5034056745985311719.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A274263

/-! ## A274263.P16385964690168936399

`floor(ratio[Δ[A006093(n+1)]])`
-/

namespace A274263.P16385964690168936399
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(f1 (n + 1) : ℚ) / (f1 n : ℚ)⌋

end

end A274263.P16385964690168936399

namespace A274263

/-- `floor(ratio[Δ[A006093(n+1)]])` -/
def P16385964690168936399.Spec : Prop :=
  ∀ n, P16385964690168936399.a n = A274263 (n + 1)

theorem P16385964690168936399.correct : P16385964690168936399.Spec := by
  intro n
  simp only [A274263, Nat.add_sub_cancel, A274263.P16385964690168936399.f2, A274263.P16385964690168936399.f1, A274263.P16385964690168936399.a, A274263.P9426455071173877905.a, A001223, A001223.P5034056745985311719.a, A006093, A006093.P2906174024863549003.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A274263

/-! ## A274263.P729132532374558223

`floor(ratio[Δ[record[A000010(n+1)]]])`
-/

namespace A274263.P729132532374558223
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => ∀ l < j, f3 l < f3 j) n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(f1 (n + 1) : ℚ) / (f1 n : ℚ)⌋

end

end A274263.P729132532374558223

namespace A274263

/-- `floor(ratio[Δ[record[A000010(n+1)]]])` -/
def P729132532374558223.Spec : Prop :=
  ∀ n, P729132532374558223.a n = A274263 (n + 1)

end A274263

/-! ## A274263.P18032753125481181728

`floor(ratio[A219606(2*n+1)])`
-/

namespace A274263.P18032753125481181728
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219606 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(f1 (n + 1) : ℚ) / (f1 n : ℚ)⌋

end

end A274263.P18032753125481181728

namespace A274263

/-- `floor(ratio[A219606(2*n+1)])` -/
def P18032753125481181728.Spec : Prop :=
  ∀ n, P18032753125481181728.a n = A274263 (n + 1)

end A274263

/-! ## A274263.P6285019318239281789

`floor(ratio[A262138(2*n+1)])`
-/

namespace A274263.P6285019318239281789
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262138 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(f1 (n + 1) : ℚ) / (f1 n : ℚ)⌋

end

end A274263.P6285019318239281789

namespace A274263

/-- `floor(ratio[A262138(2*n+1)])` -/
def P6285019318239281789.Spec : Prop :=
  ∀ n, P6285019318239281789.a n = A274263 (n + 1)

end A274263

/-!
# A274264: Number of squarefree integers congruent to {5, 6, 7} mod 8 <= 10^n.

The programs for A274264, there is no canonical definition to state claims against.
-/

/-! ## A274264.P3895917151564730325

`A071172(n+1)-A274043(n+1)`
-/

namespace A274264.P3895917151564730325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071172 (n + 1) - A274043 (n + 1)

end

end A274264.P3895917151564730325

/-!
# A274265: a(n) = (3*n - 1)^(n-1).

The programs for A274265, the canonical program `A274265.P2356930073708972825` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A274265 has offset 1).

The definition of A274265 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(3*(n+1)-1)^n` (program `A274265.P2356930073708972825`, by `A274265.P2356930073708972825.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A274265.P2356930073708972825

`(3*(n+1)-1)^n`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A274265

/-- `(3*(n+1)-1)^n` -/
def P2356930073708972825.Spec : Prop :=
  ∀ n, P2356930073708972825.a n = A274265 (n + 1)

theorem P2356930073708972825.correct : P2356930073708972825.Spec := by
  intro n
  simp only [A274265, Nat.add_sub_cancel]

end A274265

/-! ## A274265.P17981629690824804850

`record[Δ[n*floor(n/2)]^floor(n/2)]`
-/

namespace A274265.P17981629690824804850
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * ⌊(n : ℚ) / 2⌋

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n : ℚ) ^ (⌊(n : ℚ) / 2⌋ : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A274265.P17981629690824804850

namespace A274265

/-- `record[Δ[n*floor(n/2)]^floor(n/2)]` -/
def P17981629690824804850.Spec : Prop :=
  ∀ n, P17981629690824804850.a n = (A274265 (n + 1) : ℚ)

end A274265

/-! ## A274265.P16282877393203990439

`A009999(A194268(n))`
-/

namespace A274265.P16282877393203990439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009999 (A194268 n).toNat

end

end A274265.P16282877393203990439

namespace A274265

/-- `A009999(A194268(n))` -/
def P16282877393203990439.Spec : Prop :=
  ∀ n, P16282877393203990439.a n = A274265 (n + 1)

end A274265

/-! ## A274265.P16527881733921998372

`A009998(A125201(n+1))`
-/

namespace A274265.P16527881733921998372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009998 (A125201 (n + 1)).toNat

end

end A274265.P16527881733921998372

namespace A274265

/-- `A009998(A125201(n+1))` -/
def P16527881733921998372.Spec : Prop :=
  ∀ n, P16527881733921998372.a n = A274265 (n + 1)

end A274265

/-!
# A274266: Expansion of e.g.f. (1 + x)^3*log(1 + x).

The programs for A274266, there is no canonical definition to state claims against.
-/

/-! ## A274266.P14449906203553801227

`A274268(n+1)-(n+1)*a(n-1)` with `a(0)=1`
-/

namespace A274266.P14449906203553801227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A274268 (n + 1) - (n + 1 : ℤ) * a (n - 1)

end

end A274266.P14449906203553801227

/-!
# A274267: a(n) = (4*n - 1)^(n-1).

The programs for A274267, the canonical program `A274267.P16298475441469699123` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A274267 has offset 1).

The definition of A274267 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(4*(n+1)-1)^n` (program `A274267.P16298475441469699123`, by `A274267.P16298475441469699123.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A274267.P16298475441469699123

`(4*(n+1)-1)^n`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A274267

/-- `(4*(n+1)-1)^n` -/
def P16298475441469699123.Spec : Prop :=
  ∀ n, P16298475441469699123.a n = A274267 (n + 1)

theorem P16298475441469699123.correct : P16298475441469699123.Spec := by
  intro n
  simp only [A274267, Nat.add_sub_cancel]

end A274267

/-! ## A274267.P6842532325832025809

`record[xor(3, n)]^n`
-/

namespace A274267.P6842532325832025809
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 3 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) ^ n

end

end A274267.P6842532325832025809

namespace A274267

/-- `record[xor(3, n)]^n` -/
def P6842532325832025809.Spec : Prop :=
  ∀ n, (P6842532325832025809.a n : ℤ) = A274267 (n + 1)

end A274267

/-! ## A274267.P9241356996776924018

`Δ[C(Δ[n²], 2)]^n`
-/

namespace A274267.P9241356996776924018
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) ^ n

end

end A274267.P9241356996776924018

namespace A274267

/-- `Δ[C(Δ[n²], 2)]^n` -/
def P9241356996776924018.Spec : Prop :=
  ∀ n, P9241356996776924018.a n = A274267 (n + 1)

end A274267

/-! ## A274267.P321114277038394499

`ceil(∑[tanh(n)+3])^n`
-/

namespace A274267.P321114277038394499
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.tanh (n : ℝ) + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈∑ j ∈ Finset.range (n + 1), f1 j⌉ ^ n

end

end A274267.P321114277038394499

namespace A274267

/-- `ceil(∑[tanh(n)+3])^n` -/
def P321114277038394499.Spec : Prop :=
  ∀ n, P321114277038394499.a n = A274267 (n + 1)

end A274267

/-! ## A274267.P9621713751444112257

`round(∑[tanh(n)+3])^n`
-/

namespace A274267.P9621713751444112257
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.tanh (n : ℝ) + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j) ^ n

end

end A274267.P9621713751444112257

namespace A274267

/-- `round(∑[tanh(n)+3])^n` -/
def P9621713751444112257.Spec : Prop :=
  ∀ n, P9621713751444112257.a n = A274267 (n + 1)

end A274267

/-!
# A274268: Expansion of e.g.f. (1 + x)^4*log(1 + x).

The programs for A274268, there is no canonical definition to state claims against.
-/

/-! ## A274268.P10542765528323541593

`A274270(n+1)-(n+1)*a(n-1)` with `a(0)=1`
-/

namespace A274268.P10542765528323541593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A274270 (n + 1) - (n + 1 : ℤ) * a (n - 1)

end

end A274268.P10542765528323541593

/-!
# A274269: a(n) = (5*n - 1)^(n-1).

The programs for A274269, the canonical program `A274269.P7971921253692867021` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A274269 has offset 1).

The definition of A274269 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(5*(n+1)-1)^n` (program `A274269.P7971921253692867021`, by `A274269.P7971921253692867021.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A274269.P7971921253692867021

`(5*(n+1)-1)^n`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A274269

/-- `(5*(n+1)-1)^n` -/
def P7971921253692867021.Spec : Prop :=
  ∀ n, P7971921253692867021.a n = A274269 (n + 1)

theorem P7971921253692867021.correct : P7971921253692867021.Spec := by
  intro n
  simp only [A274269, Nat.add_sub_cancel]

end A274269

/-! ## A274269.P3973951543777587447

`abs((-A016897(n))^n)`
-/

namespace A274269.P3973951543777587447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(-A016897 n) ^ n|

end

end A274269.P3973951543777587447

namespace A274269

/-- `abs((-A016897(n))^n)` -/
def P3973951543777587447.Spec : Prop :=
  ∀ n, P3973951543777587447.a n = A274269 (n + 1)

end A274269

/-! ## A274269.P3733085631914110082

`(sqrt(A016885(n)+1)^n)²`
-/

namespace A274269.P3733085631914110082
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (Real.sqrt (A016885 n + 1 : ℝ) ^ n) ^ 2

end

end A274269.P3733085631914110082

namespace A274269

/-- `(sqrt(A016885(n)+1)^n)²` -/
def P3733085631914110082.Spec : Prop :=
  ∀ n, P3733085631914110082.a n = (A274269 (n + 1) : ℝ)

end A274269

/-! ## A274269.P2137182346251863578

`sqrt(A016898(n)^n)`
-/

namespace A274269.P2137182346251863578
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A016898 n ^ n : ℝ)

end

end A274269.P2137182346251863578

namespace A274269

/-- `sqrt(A016898(n)^n)` -/
def P2137182346251863578.Spec : Prop :=
  ∀ n, P2137182346251863578.a n = (A274269 (n + 1) : ℝ)

end A274269

/-! ## A274269.P12059885730389054279

`sqrt(sqrt(A016900(n))^n)`
-/

namespace A274269.P12059885730389054279
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (Real.sqrt (A016900 n : ℝ) ^ n)

end

end A274269.P12059885730389054279

namespace A274269

/-- `sqrt(sqrt(A016900(n))^n)` -/
def P12059885730389054279.Spec : Prop :=
  ∀ n, P12059885730389054279.a n = (A274269 (n + 1) : ℝ)

end A274269

/-!
# A274270: Expansion of e.g.f. (1 + x)^5*log(1 + x).

The programs for A274270, there is no canonical definition to state claims against.
-/

/-! ## A274270.P5439247968223786243

`A253668(eq[4, A219347(n)])`
-/

namespace A274270.P5439247968223786243
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253668 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A274270.P5439247968223786243

/-!
# A274271: Number of partitions of 3^n into at most four parts.

The programs for A274271, there is no canonical definition to state claims against.
-/

/-! ## A274271.P6601804929787913525

`A256524(floor(3^(n-1)))`
-/

namespace A274271.P6601804929787913525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256524 ⌊(3 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋.toNat

end

end A274271.P6601804929787913525

/-! ## A274271.P13835165780616547635

`A014125(floor(3^n/2))`
-/

namespace A274271.P13835165780616547635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014125 ⌊(3 ^ n : ℚ) / 2⌋.toNat

end

end A274271.P13835165780616547635

/-! ## A274271.P4788256561713710753

`record[A014125(A255044(n))]`
-/

namespace A274271.P4788256561713710753
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014125 (A255044 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A274271.P4788256561713710753

/-! ## A274271.P6789746557356948825

`A217330(∑[floor(3^(n-1))]-A057428(n))`
-/

namespace A274271.P6789746557356948825
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(3 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217330 (∑ j ∈ Finset.range (n + 1), f1 j - A057428 n).toNat

end

end A274271.P6789746557356948825

/-! ## A274271.P8966218818850230422

`A137579(n)+A014125(A003462(n))`
-/

namespace A274271.P8966218818850230422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137579 n + A014125 (A003462 n).toNat

end

end A274271.P8966218818850230422

/-!
# A274272: Number of partitions of 5^n into at most four parts.

The programs for A274272, there is no canonical definition to state claims against.
-/

/-! ## A274272.P6943189481518963790

`(57+8*(-1)^n+63*5^n+3*5^(1+2*n)+125^n)/144`
-/

namespace A274272.P6943189481518963790
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (57 + 8 * (-1) ^ n + (63 * 5 ^ n : ℤ) + (3 * 5 ^ (1 + 2 * n) : ℤ) + (125 ^ n : ℤ) : ℚ) / 144

end

end A274272.P6943189481518963790

/-! ## A274272.P14692559157784189458

`A014125(floor(5^n/2))`
-/

namespace A274272.P14692559157784189458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014125 ⌊(5 ^ n : ℚ) / 2⌋.toNat

end

end A274272.P14692559157784189458

/-!
# A274273: Number of noncomposite areas of a Venn diagram for n multisets.

The programs for A274273, there is no canonical definition to state claims against.
-/

/-! ## A274273.P3786511308128467225

`A343583(n)+1`
-/

namespace A274273.P3786511308128467225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343583 n + 1

end

end A274273.P3786511308128467225

/-! ## A274273.P14684327298976099627

`Δ[A052856(n)]-A052875(n)`
-/

namespace A274273.P14684327298976099627
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052856 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A052875 n

end

end A274273.P14684327298976099627

/-! ## A274273.P14642683655996097759

`record[A122101(n)]-A002050(n)`
-/

namespace A274273.P14642683655996097759
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122101 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A002050 n

end

end A274273.P14642683655996097759

/-! ## A274273.P12803936771500973466

`record[A154921(n)]-A002050(n)`
-/

namespace A274273.P12803936771500973466
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154921 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A002050 n

end

end A274273.P12803936771500973466

/-! ## A274273.P3680699525018906299

`A000670(n+1)-A002050(n)`
-/

namespace A274273.P3680699525018906299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000670 (n + 1) - A002050 n

end

end A274273.P3680699525018906299

/-! ## A274273.P5816395280038011436

`A052856(n+1)-A000629(n)`
-/

namespace A274273.P5816395280038011436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052856 (n + 1) - A000629 n

end

end A274273.P5816395280038011436

/-! ## A274273.P14798803472516427506

`A000670(n+1)+1-A000629(n)`
-/

namespace A274273.P14798803472516427506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000670 (n + 1) + (1 - A000629 n)

end

end A274273.P14798803472516427506

/-! ## A274273.P11736747374593063891

`A052856(n+1)-A129062(A000124(n+1))`
-/

namespace A274273.P11736747374593063891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052856 (n + 1) - A129062 (A000124 (n + 1)).toNat

end

end A274273.P11736747374593063891

/-!
# A274274: Number of ordered ways to write n as x^3 + y^2 + z^2, where x,y,z are nonnegative integers with y <= z.

The programs for A274274, there is no canonical definition to state claims against.
-/

/-! ## A274274.P14161580890949402922

`A324904(A273944(2*(n+1))+A172251(n+2))`
-/

namespace A274274.P14161580890949402922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324904 (A273944 (2 * (n + 1)) + A172251 (n + 2)).toNat

end

end A274274.P14161580890949402922

/-! ## A274274.P16506395247268040864

`A358525(n+4)%A219686(A082392(n))`
-/

namespace A274274.P16506395247268040864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A358525 (n + 4)) (A219686 (A082392 n).toNat)

end

end A274274.P16506395247268040864

/-! ## A274274.P8189867282072216692

`A260736(A014976(n+1)-A038722(2*n+3))`
-/

namespace A274274.P8189867282072216692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260736 (A014976 (n + 1) - A038722 (2 * n + 3)).toNat

end

end A274274.P8189867282072216692

/-!
# A274275: E.g.f. A(x) satisfies: A( sqrt( A(x^2*exp(-2*x)) ) ) = x.

The programs for A274275, there is no canonical definition to state claims against.
-/

/-! ## A274275.P4063386540825987136

`(n+1)*A274276(n+1)`
-/

namespace A274275.P4063386540825987136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A274276 (n + 1)

end

end A274275.P4063386540825987136

/-! ## A274275.P9751358402628861085

`record[A152271(n)*A274276(A152271(n))]`
-/

namespace A274275.P9751358402628861085
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152271 n * A274276 (A152271 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A274275.P9751358402628861085

/-!
# A274276: E.g.f. A(x) satisfies: A( sqrt( A(x^2*exp(-2*x)) ) ) = x, where A(x) = Sum_{n>=1} a(n)*x^n/(n-1)!.

The programs for A274276, there is no canonical definition to state claims against.
-/

/-! ## A274276.P17011420795828470333

`A274275(n+1)/(n+1)`
-/

namespace A274276.P17011420795828470333
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A274275 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A274276.P17011420795828470333

/-! ## A274276.P2567525572126708293

`A005185(∑[A134095(n)])`
-/

namespace A274276.P2567525572126708293
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134095 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005185 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A274276.P2567525572126708293

/-!
# A274277: E.g.f. A(x) satisfies: A( A(x)^2 ) = x^2 * exp(-2*x).

The programs for A274277, there is no canonical definition to state claims against.
-/

/-! ## A274277.P10605219389044606550

`(-1)^n*A000027(A274482(n+1))`
-/

namespace A274277.P10605219389044606550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A000027 (A274482 (n + 1)).toNat

end

end A274277.P10605219389044606550

/-! ## A274277.P8441123901142693444

`A000027(A274482(n+1))*A033999(n)`
-/

namespace A274277.P8441123901142693444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A274482 (n + 1)).toNat * A033999 n

end

end A274277.P8441123901142693444

/-! ## A274277.P18140346729433204783

`A274482(n+1)*A330025(A266302(n))`
-/

namespace A274277.P18140346729433204783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274482 (n + 1) * A330025 (A266302 n).toNat

end

end A274277.P18140346729433204783

/-!
# A274278: a(n) = ((n+1)^(n-1) - (n-1)^(n-1))/2 for n>=1.

The programs for A274278, the canonical program `A274278.P1311593317035291873` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A274278 has offset 0).

The definition of A274278 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A274278.P1311593317035291873

`((n+1)^(n-1)-(n-1)^(n-1))/2`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A274278

/-- `((n+1)^(n-1)-(n-1)^(n-1))/2` -/
def P1311593317035291873.Spec : Prop :=
  ∀ n, P1311593317035291873.a n = (A274278 n : ℚ)

end A274278

/-! ## A274278.P13457865826871884977

`A336742(C(n, floor(n/6))*comp[2*(n+1)])`
-/

namespace A274278.P13457865826871884977
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336742 (Nat.choose n ⌊(n : ℚ) / 6⌋.toNat * SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A274278.P13457865826871884977

namespace A274278

/-- `A336742(C(n, floor(n/6))*comp[2*(n+1)])` -/
def P13457865826871884977.Spec : Prop :=
  ∀ n, P13457865826871884977.a n = A274278 n

end A274278

/-!
# A274279: Expansion of e.g.f.: tanh(x*W(x)), where W(x) = LambertW(-x)/(-x).

The programs for A274279, there is no canonical definition to state claims against.
-/

/-! ## A274279.P17927543133283453485

`A258334(A000311(n+1))+n-1`
-/

namespace A274279.P17927543133283453485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258334 (A000311 (n + 1)).toNat + ((n : ℤ) - 1)

end

end A274279.P17927543133283453485

/-! ## A274279.P13211187346309818839

`A070141(A031973(n))+A031973(n)`
-/

namespace A274279.P13211187346309818839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070141 (A031973 n).toNat + A031973 n

end

end A274279.P13211187346309818839

/-!
# A274280: Numbers that are a product of distinct Lucas numbers (1,3,4,7,11,...)

The programs for A274280, there is no canonical definition to state claims against.
-/

/-! ## A274280.P4431452006799206393

`∩[A158037(n+1), A272909(n+1)]`
-/

namespace A274280.P4431452006799206393
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158037 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272909 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A274280.P4431452006799206393

/-! ## A274280.P15088976849889176201

`∩[A246786(n+1), A272909(n+1)]`
-/

namespace A274280.P15088976849889176201
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246786 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272909 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A274280.P15088976849889176201

/-!
# A274281: Numbers that are a product of distinct Lucas numbers (2,1,3,4,7,11,...)

The programs for A274281, there is no canonical definition to state claims against.
-/

/-! ## A274281.P14629727088868578345

`∪[2*A274280(n+1), A274280(n+1)]`
-/

namespace A274281.P14629727088868578345
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A274280 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274280 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A274281.P14629727088868578345

/-! ## A274281.P17708473776826712207

`record[gcd(A077105(n+3), A128908(n))]`
-/

namespace A274281.P17708473776826712207
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A077105 (n + 3)) (A128908 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A274281.P17708473776826712207

/-! ## A274281.P17309462467255676945

`A081754(∑[A014675(A173464(n+1)²)])`
-/

namespace A274281.P17309462467255676945
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014675 (A173464 (n + 1) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081754 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A274281.P17309462467255676945

/-! ## A274281.P6039712347813733258

`∑[A064286(A317446(n)+1)]`
-/

namespace A274281.P6039712347813733258
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064286 (A317446 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A274281.P6039712347813733258

/-! ## A274281.P11379513912816334473

`A096076(eq[0, A096094(n+3)])`
-/

namespace A274281.P11379513912816334473
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096094 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096076 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A274281.P11379513912816334473

/-!
# A274282: Numbers that are a product of distinct numbers in A000285.

The programs for A274282, there is no canonical definition to state claims against.
-/

/-! ## A274282.P1372272344648892883

`lt[A013632(A114440(n+1)), A008441(n+2)]`
-/

namespace A274282.P1372272344648892883
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013632 (A114440 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008441 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A274282.P1372272344648892883

/-! ## A274282.P9656947980346474651

`∑[A000005(A305301(2*(n+1))^A305296(n))]`
-/

namespace A274282.P9656947980346474651
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway ((A305301 (2 * (n + 1)) : ℚ) ^ (A305296 n : ℤ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A274282.P9656947980346474651

/-!
# A274284: Numbers that are a product of distinct numbers in A006355.

The programs for A274284, there is no canonical definition to state claims against.
-/

/-! ## A274284.P8754955506413464439

`2*A173643(A043320(n+1))`
-/

namespace A274284.P8754955506413464439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A173643 (A043320 (n + 1)).toNat

end

end A274284.P8754955506413464439

/-! ## A274284.P11364443559304991004

`2*A173643(A044917(n+1))`
-/

namespace A274284.P11364443559304991004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A173643 (A044917 (n + 1)).toNat

end

end A274284.P11364443559304991004

/-! ## A274284.P15012605733752954060

`2*A173643(A161953(n+1))`
-/

namespace A274284.P15012605733752954060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A173643 (A161953 (n + 1)).toNat

end

end A274284.P15012605733752954060

/-! ## A274284.P7291360492451293191

`2*A173643(A187829(n+1))`
-/

namespace A274284.P7291360492451293191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A173643 (A187829 (n + 1)).toNat

end

end A274284.P7291360492451293191

/-! ## A274284.P11594438595024138174

`A351870(2*A173643(n+1))`
-/

namespace A274284.P11594438595024138174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351870 (2 * A173643 (n + 1)).toNat

end

end A274284.P11594438595024138174

/-!
# A274285: Numbers that are a product of distinct numbers in A013655.

The programs for A274285, there is no canonical definition to state claims against.
-/

/-! ## A274285.P3184902236240245526

`A052435(24*2^(n+1)-25)+n`
-/

namespace A274285.P3184902236240245526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052435 (24 * 2 ^ (n + 1) - 25) + (n : ℤ)

end

end A274285.P3184902236240245526

/-! ## A274285.P11642135798560135992

`∑[p?[A010473(A114099(n))]]`
-/

namespace A274285.P11642135798560135992
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010473 ((A114099 n).toNat + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A274285.P11642135798560135992

/-! ## A274285.P4024428412377808275

`∑[p?[A048881(A111314(n))]]`
-/

namespace A274285.P4024428412377808275
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048881 (A111314 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A274285.P4024428412377808275

/-!
# A274288: Numbers that are a product of distinct numbers in row 4 of the Wythoff array, A035513.

The programs for A274288, there is no canonical definition to state claims against.
-/

/-! ## A274288.P11939266431698335221

`A184416(A048577(n)+A003593(n+1))`
-/

namespace A274288.P11939266431698335221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184416 (A048577 n + A003593 (n + 1)).toNat

end

end A274288.P11939266431698335221

/-! ## A274288.P13311063298751087032

`A105447((n+2)²)`
-/

namespace A274288.P13311063298751087032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105447 ((n + 2) ^ 2)

end

end A274288.P13311063298751087032

/-!
# A274289: Number of equivalence classes of Dyck paths of semilength n for the string udu.

The programs for A274289, there is no canonical definition to state claims against.
-/

/-! ## A274289.P15405489218402992033

`A124156(A187003(n+1))`
-/

namespace A274289.P15405489218402992033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124156 (A187003 (n + 1)).toNat

end

end A274289.P15405489218402992033

/-! ## A274289.P4001197322286212493

`A157271(5*a(n-1)-2)` with `a(0)=1, a(1)=1`
-/

namespace A274289.P4001197322286212493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A157271 (5 * a (n - 1) - 2).toNat

end

end A274289.P4001197322286212493

/-! ## A274289.P6235984378750512357

`A245473(A128086(n))`
-/

namespace A274289.P6235984378750512357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245473 (A128086 n).toNat

end

end A274289.P6235984378750512357

/-! ## A274289.P14963654017796306431

`A166287(A032555(n+1))+1`
-/

namespace A274289.P14963654017796306431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166287 (A032555 (n + 1)).toNat + 1

end

end A274289.P14963654017796306431

/-! ## A274289.P12198510598174666863

`A166287(A000005(4^n)%2+n)+1`
-/

namespace A274289.P12198510598174666863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166287 (Int.tmod (A000005 (4 ^ n)) 2 + (n : ℤ)).toNat + 1

end

end A274289.P12198510598174666863

/-!
# A274291: The width of the lattice of Dyck paths of length 2n ordered by the relation that one Dyck path lies above another one.

The programs for A274291, there is no canonical definition to state claims against.
-/

/-! ## A274291.P17096277261705033427

`A056173(A148238(n)+1)`
-/

namespace A274291.P17096277261705033427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056173 (A148238 n + 1).toNat

end

end A274291.P17096277261705033427

/-! ## A274291.P10624117869310596710

`A126257(A294875(n+1)+A201951(n))`
-/

namespace A274291.P10624117869310596710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126257 (A294875 (n + 1) + A201951 n).toNat

end

end A274291.P10624117869310596710

/-! ## A274291.P15040970929798779602

`A241952(A018156(n))`
-/

namespace A274291.P15040970929798779602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241952 (A018156 n).toNat

end

end A274291.P15040970929798779602

/-! ## A274291.P5860662395665674290

`A051889(A378383(n))+1`
-/

namespace A274291.P5860662395665674290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051889 (A378383 n).toNat + 1

end

end A274291.P5860662395665674290

/-! ## A274291.P12517262143164789515

`A071839(A240651(n+1))+1`
-/

namespace A274291.P12517262143164789515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071839 (A240651 (n + 1)).toNat + 1

end

end A274291.P12517262143164789515

/-!
# A274292: Triangle read by rows: T(n,k) (0<=k<=n) given by T(n,0)=1, T(n,n) = binomial(2n,n); otherwise T(n,k) = T(n,k-1)+T(n-1,k).

The programs for A274292, there is no canonical definition to state claims against.
-/

/-! ## A274292.P2116032448341122910

`A171661(A038722(n+1)%A080036(n))`
-/

namespace A274292.P2116032448341122910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171661 (Int.tmod (A038722 (n + 1)) (A080036 n)).toNat

end

end A274292.P2116032448341122910

/-! ## A274292.P9110681716788331627

`A171661(char[A014132(n+1)]*A038722(n+1))`
-/

namespace A274292.P9110681716788331627
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014132 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171661 (((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A038722 (n + 1)).toNat

end

end A274292.P9110681716788331627

/-! ## A274292.P12266891303430707296

`gcd(A143433(n), A171661(A038722(n+1)))`
-/

namespace A274292.P12266891303430707296
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A143433 n) (A171661 (A038722 (n + 1)).toNat)

end

end A274292.P12266891303430707296

/-!
# A274294: a(n) = 1+(n+1)^2+n!+Sum_{k=1..n-1} binomial(n,k)*n!/(n-k)!.

The programs for A274294, the canonical program `A274294.P16307466046688447694` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A274294 has offset 0).

The definition of A274294 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A274294.P16307466046688447694

`1+(n+1)²+n!+∑{#}[n-1-1, C(n, #+1)*n!/(n-(#+1))!]`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A274294

/-- `1+(n+1)²+n!+∑{#}[n-1-1, C(n, #+1)*n!/(n-(#+1))!]` -/
def P16307466046688447694.Spec : Prop :=
  ∀ n, P16307466046688447694.a n = (A274294 n : ℚ)

end A274294

/-! ## A274294.P2539760927687654249

`floor(A317094(n)+acot(n))`
-/

namespace A274294.P2539760927687654249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A317094 n : ℝ) + SequenceMachineLib.acot (n : ℝ)⌋

end

end A274294.P2539760927687654249

namespace A274294

/-- `floor(A317094(n)+acot(n))` -/
def P2539760927687654249.Spec : Prop :=
  ∀ n, P2539760927687654249.a n = A274294 n

end A274294

/-! ## A274294.P15032545264184564680

`A002720(round(sqrt(n²+1)))+(n+1)²`
-/

namespace A274294.P15032545264184564680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002720 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat + ((n + 1) ^ 2 : ℤ)

end

end A274294.P15032545264184564680

namespace A274294

/-- `A002720(round(sqrt(n²+1)))+(n+1)²` -/
def P15032545264184564680.Spec : Prop :=
  ∀ n, P15032545264184564680.a n = A274294 n

end A274294

/-! ## A274294.P13671147804816906238

`floor(acot(n)+(n+1)²+A097662(n)+1)`
-/

namespace A274294.P13671147804816906238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊SequenceMachineLib.acot (n : ℝ) + (((n + 1) ^ 2 : ℤ) + (A097662 n + 1) : ℝ)⌋

end

end A274294.P13671147804816906238

namespace A274294

/-- `floor(acot(n)+(n+1)²+A097662(n)+1)` -/
def P13671147804816906238.Spec : Prop :=
  ∀ n, P13671147804816906238.a n = A274294 n

end A274294

/-! ## A274294.P9389660965544800671

`A317094(n)+A000007(n)`
-/

namespace A274294.P9389660965544800671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317094 n + A000007 n

end

end A274294.P9389660965544800671

namespace A274294

/-- `A317094(n)+A000007(n)` -/
def P9389660965544800671.Spec : Prop :=
  ∀ n, P9389660965544800671.a n = A274294 n

end A274294

/-! ## A274294.P3624823707495089664

`A317094(n)+char[A328356(n)²]`
-/

namespace A274294.P3624823707495089664
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328356 n ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317094 n + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A274294.P3624823707495089664

namespace A274294

/-- `A317094(n)+char[A328356(n)²]` -/
def P3624823707495089664.Spec : Prop :=
  ∀ n, P3624823707495089664.a n = A274294 n

end A274294

/-!
# A274295: a(n) = n+binomial(2*n-6,n-3)+binomial(2*n-5,n-3)+binomial(n-1,n-3)+Sum_{i=1..n-3} (binomial(n+i-3,n-3)+2*n-i-5).

The programs for A274295, there is no canonical definition to state claims against.
-/

/-! ## A274295.P4294300488657773691

`A221057(n)+A036541(A218263(n+3))`
-/

namespace A274295.P4294300488657773691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221057 n + A036541 (A218263 (n + 3)).toNat

end

end A274295.P4294300488657773691

/-! ## A274295.P8014120841682231862

`A172471(∏[n/a(n-1)+n+1])` with `a(0)=1, a(1)=1`
-/

namespace A274295.P8014120841682231862
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  (n : ℚ) / f1 (n - 1) + (n + 1 : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172471 (SequenceMachineLib.roundAway (∏ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A274295.P8014120841682231862

/-! ## A274295.P17471530895095560094

`A023190(A149117(n))`
-/

namespace A274295.P17471530895095560094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023190 (A149117 n).toNat

end

end A274295.P17471530895095560094

/-!
# A274297: a(n) = 2*A090495(n) - 1.

The programs for A274297, there is no canonical definition to state claims against.
-/

/-! ## A274297.P11895753293287532988

`2*A090495(n+1)-1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A274297.P11895753293287532988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A090495 (n + 1) - 1

end

end A274297.P11895753293287532988

/-! ## A274297.P546791373722056360

`A066182(2*A090495(n+1))`
-/

namespace A274297.P546791373722056360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066182 (2 * A090495 (n + 1)).toNat

end

end A274297.P546791373722056360

/-! ## A274297.P1079797402721816534

`A016825(A090495(n+1)-1)/2`
-/

namespace A274297.P1079797402721816534
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016825 (A090495 (n + 1) - 1).toNat : ℚ) / 2

end

end A274297.P1079797402721816534

/-! ## A274297.P14318653110249607650

`(-1)^A000040(n+2)+2*A090495(n+1)`
-/

namespace A274297.P14318653110249607650
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (-1 : ℚ) ^ (A000040 (n + 2) : ℤ) + (2 * A090495 (n + 1) : ℚ)

end

end A274297.P14318653110249607650

/-!
# A274298: A bisection of A002326.

The programs for A274298, there is no canonical definition to state claims against.
-/

/-! ## A274298.P6479682176904386031

`A002326(2*n)`
-/

namespace A274298.P6479682176904386031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002326 (2 * n)

end

end A274298.P6479682176904386031

/-! ## A274298.P6702474682960639444

`and(-1, A002326(A005843(n)))`
-/

namespace A274298.P6702474682960639444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A002326 (A005843 n).toNat)

end

end A274298.P6702474682960639444

/-! ## A274298.P10784412839512347019

`A000027(A002326(Δ[n²]-1))`
-/

namespace A274298.P10784412839512347019
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A002326 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - 1).toNat).toNat

end

end A274298.P10784412839512347019

/-! ## A274298.P18333193829550868146

`A037225(2*n)/A037226(2*n)`
-/

namespace A274298.P18333193829550868146
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A037225 (2 * n) : ℚ) / (A037226 (2 * n) : ℚ)

end

end A274298.P18333193829550868146

/-! ## A274298.P17878575820216808116

`A002326(n+n)%A001122(n+1)`
-/

namespace A274298.P17878575820216808116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002326 (n + n)) (A001122 (n + 1))

end

end A274298.P17878575820216808116

/-! ## A274298.P17150024130338001780

`A002326(A005843(n))%A017029(n)`
-/

namespace A274298.P17150024130338001780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002326 (A005843 n).toNat) (A017029 n)

end

end A274298.P17150024130338001780

/-! ## A274298.P11383732794458509026

`lcm(A003558(2*n), A053451(2*n))`
-/

namespace A274298.P11383732794458509026
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A003558 (2 * n)) (A053451 (2 * n))

end

end A274298.P11383732794458509026

/-! ## A274298.P24324299687778406

`A336843(A064216(2*n+1))`
-/

namespace A274298.P24324299687778406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336843 (A064216 (2 * n + 1)).toNat

end

end A274298.P24324299687778406

/-! ## A274298.P7956712652219549263

`A336843(A243502(2*n+1)/2)`
-/

namespace A274298.P7956712652219549263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336843 (SequenceMachineLib.roundAway ((A243502 (2 * n + 1) : ℚ) / 2)).toNat

end

end A274298.P7956712652219549263

/-! ## A274298.P13661680735048093107

`A007733(4*n+1)`
-/

namespace A274298.P13661680735048093107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007733 (4 * n + 1)

end

end A274298.P13661680735048093107

/-! ## A274298.P13570071684085320220

`A054703(4*n+1)`
-/

namespace A274298.P13570071684085320220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054703 (4 * n + 1)

end

end A274298.P13570071684085320220

/-! ## A274298.P15501073571744600263

`A024222(4*n+2)`
-/

namespace A274298.P15501073571744600263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024222 (4 * n + 2)

end

end A274298.P15501073571744600263

/-! ## A274298.P17681347945950594536

`A371531(3*n+n+1)`
-/

namespace A274298.P17681347945950594536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371531 (3 * n + (n + 1))

end

end A274298.P17681347945950594536

/-! ## A274298.P3428022706452212643

`A330091(A329303(A002326(n+n)))`
-/

namespace A274298.P3428022706452212643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330091 (A329303 (A002326 (n + n)).toNat).toNat

end

end A274298.P3428022706452212643

/-! ## A274298.P767880312007332186

`A165783(2*n+1)-A179382(2*n+1)`
-/

namespace A274298.P767880312007332186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165783 (2 * n + 1) - A179382 (2 * n + 1)

end

end A274298.P767880312007332186

/-! ## A274298.P14300232576712443279

`A204987(4*n+1)-1`
-/

namespace A274298.P14300232576712443279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204987 (4 * n + 1) - 1

end

end A274298.P14300232576712443279

/-!
# A274299: A bisection of A002326.

The programs for A274299, there is no canonical definition to state claims against.
-/

/-! ## A274299.P17313814058754862722

`A002326(2*n+1)`
-/

namespace A274299.P17313814058754862722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002326 (2 * n + 1)

end

end A274299.P17313814058754862722

/-! ## A274299.P13032153329728347887

`lcm(A228826(n), A294673(n))`
-/

namespace A274299.P13032153329728347887
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A228826 n) (A294673 n)

end

end A274299.P13032153329728347887

/-! ## A274299.P3491485216621764179

`A395069(2*n+1)/(2*n+1)`
-/

namespace A274299.P3491485216621764179
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A395069 (2 * n + 1) : ℚ) / (2 * n + 1 : ℚ)

end

end A274299.P3491485216621764179

/-! ## A274299.P15711160912907733648

`A359147(2*n+1)-A359147(2*n)`
-/

namespace A274299.P15711160912907733648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359147 (2 * n + 1) - A359147 (2 * n)

end

end A274299.P15711160912907733648

/-! ## A274299.P10035619819092010163

`A037225(2*n+1)/A037226(2*n+1)`
-/

namespace A274299.P10035619819092010163
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A037225 (2 * n + 1) : ℚ) / (A037226 (2 * n + 1) : ℚ)

end

end A274299.P10035619819092010163

/-! ## A274299.P4130769555569567658

`A024222(4*(n+1))`
-/

namespace A274299.P4130769555569567658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024222 (4 * (n + 1))

end

end A274299.P4130769555569567658

/-! ## A274299.P3056149547348257091

`A007733(3*(n+1)+n)`
-/

namespace A274299.P3056149547348257091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007733 (3 * (n + 1) + n)

end

end A274299.P3056149547348257091

/-! ## A274299.P15103485413206913100

`A054703(3*(n+1)+n)`
-/

namespace A274299.P15103485413206913100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054703 (3 * (n + 1) + n)

end

end A274299.P15103485413206913100

/-! ## A274299.P17154444355207954706

`A371531(3*(n+1)+n)`
-/

namespace A274299.P17154444355207954706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371531 (3 * (n + 1) + n)

end

end A274299.P17154444355207954706

/-! ## A274299.P6246080708848253788

`A057593(A108099(n))`
-/

namespace A274299.P6246080708848253788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057593 (A108099 n).toNat

end

end A274299.P6246080708848253788

