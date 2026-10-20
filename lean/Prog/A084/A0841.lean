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
import Seq.B000.C017
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
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C036
import Seq.B000.C037
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
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
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
import Seq.B008.C001
import Seq.B009.C000
import Seq.B009.C001
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
import Seq.Opaque.C025

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A084100: Expansion of (1+x-x^2-x^3)/(1+x^2).

The programs for A084100, the canonical program `A084100.P18007050001072870375` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A084100 has offset 0).

The definition of A084100 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1+x-x^2-x^3)/(1+x^2))` (program `A084100.P18007050001072870375`, by `A084100.P18007050001072870375.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A084100.P18007050001072870375

`ogf((1+x-x^2-x^3)/(1+x^2))`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A084100

/-- `ogf((1+x-x^2-x^3)/(1+x^2))` -/
def P18007050001072870375.Spec : Prop :=
  ∀ n, P18007050001072870375.a n = A084100 n

theorem P18007050001072870375.correct : P18007050001072870375.Spec := by
  intro n
  simp only [A084100]

end A084100

/-!
# A084101: Expansion of (1+x)^2/((1-x)*(1+x^2)).

The programs for A084101, the canonical program `A084101.P14610846772449528862` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A084101 has offset 0).

The definition of A084101 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1+2x+x^2)/(1-x+x^2-x^3))` (program `A084101.P14610846772449528862`, by `A084101.P14610846772449528862.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A084101.P16997265706068985983

`a(n-4)` with `a(0)=1, a(1)=3, a(2)=3, a(3)=1`
-/

namespace A084101.P16997265706068985983
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 3, 3, 1] fun n a =>
  a (n - 4)

end

end A084101.P16997265706068985983

namespace A084101

/-- `a(n-4)` -/
def P16997265706068985983.Spec : Prop :=
  ∀ n, (P16997265706068985983.a n : ℤ) = A084101 n

end A084101

/-! ## A084101.P14610846772449528862

`ogf((1+2x+x^2)/(1-x+x^2-x^3))`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A084101

/-- `ogf((1+2x+x^2)/(1-x+x^2-x^3))` -/
def P14610846772449528862.Spec : Prop :=
  ∀ n, P14610846772449528862.a n = A084101 n

theorem P14610846772449528862.correct : P14610846772449528862.Spec := by
  intro n
  simp only [A084101]

end A084101

/-!
# A084102: Inverse binomial transform of A084101.

The programs for A084102, the canonical program `A084102.P14539122942848742704` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A084102 has offset 0).

The definition of A084102 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 665 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A084102.P17820667499074235676

`ogf((1+4x+4x^2)/(1+2x+2x^2))`
-/

namespace A084102.P17820667499074235676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 4, 4] [1, 2, 2] n

end

end A084102.P17820667499074235676

namespace A084102

/-- `ogf((1+4x+4x^2)/(1+2x+2x^2))` -/
def P17820667499074235676.Spec : Prop :=
  ∀ n, P17820667499074235676.a n = A084102 n

end A084102

/-! ## A084102.P14539122942848742704

`2*a(n-3)-a(n-1)` with `a(0)=1, a(1)=2, a(2)=-2, a(3)=0`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A084102

/-- `2*a(n-3)-a(n-1)` -/
def P14539122942848742704.Spec : Prop :=
  ∀ n, P14539122942848742704.a n = A084102 n

theorem P14539122942848742704.correct : P14539122942848742704.Spec := by
  intro n
  simp only [A084102]

end A084102

/-! ## A084102.P3138055386088646203

`a(n-3)+a(n-3)-a(n-1)` with `a(0)=1, a(1)=2, a(2)=-2, a(3)=0`
-/

namespace A084102.P3138055386088646203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, -2, 0] fun n a =>
  a (n - 3) + (a (n - 3) - a (n - 1))

end

end A084102.P3138055386088646203

namespace A084102

/-- `a(n-3)+a(n-3)-a(n-1)` -/
def P3138055386088646203.Spec : Prop :=
  ∀ n, P3138055386088646203.a n = A084102 n

theorem P3138055386088646203.correct : P3138055386088646203.Spec := by
  intro n
  simp only [A084102, Nat.add_sub_cancel, A084102.P3138055386088646203.a, A084102.P14539122942848742704.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A084102

/-! ## A084102.P6819678784014231654

`floor(a(n-3)-(a(n-1)-a(n-3)))` with `a(0)=1, a(1)=2, a(2)=-2, a(3)=0`

`floor` is left out, it is the identity on integers.
-/

namespace A084102.P6819678784014231654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, -2, 0] fun n a =>
  a (n - 3) - (a (n - 1) - a (n - 3))

end

end A084102.P6819678784014231654

namespace A084102

/-- `floor(a(n-3)-(a(n-1)-a(n-3)))` -/
def P6819678784014231654.Spec : Prop :=
  ∀ n, P6819678784014231654.a n = A084102 n

theorem P6819678784014231654.correct : P6819678784014231654.Spec := by
  intro n
  simp only [A084102, Nat.add_sub_cancel, A084102.P6819678784014231654.a, A084102.P14539122942848742704.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A084102

/-! ## A084102.P13155399477804651787

`xor(1, 1-A108520(n))`
-/

namespace A084102.P13155399477804651787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (1 - A108520 n)

end

end A084102.P13155399477804651787

namespace A084102

/-- `xor(1, 1-A108520(n))` -/
def P13155399477804651787.Spec : Prop :=
  ∀ n, P13155399477804651787.a n = A084102 n

end A084102

/-! ## A084102.P5919539036041303284

`xor(1, 1-∑[A078069(n)])`
-/

namespace A084102.P5919539036041303284
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078069 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (1 - ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A084102.P5919539036041303284

namespace A084102

/-- `xor(1, 1-∑[A078069(n)])` -/
def P5919539036041303284.Spec : Prop :=
  ∀ n, P5919539036041303284.a n = A084102 n

end A084102

/-! ## A084102.P12888809608386220765

`Δ[xor(1, A137505(n+1))]`
-/

namespace A084102.P12888809608386220765
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A137505 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A084102.P12888809608386220765

namespace A084102

/-- `Δ[xor(1, A137505(n+1))]` -/
def P12888809608386220765.Spec : Prop :=
  ∀ n, P12888809608386220765.a n = A084102 n

end A084102

/-! ## A084102.P2798347385861976633

`A000038(n)-A108520(n)`
-/

namespace A084102.P2798347385861976633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n - A108520 n

end

end A084102.P2798347385861976633

namespace A084102

/-- `A000038(n)-A108520(n)` -/
def P2798347385861976633.Spec : Prop :=
  ∀ n, P2798347385861976633.a n = A084102 n

end A084102

/-! ## A084102.P5224686699448520225

`A099087(n)*A165326(n)`
-/

namespace A084102.P5224686699448520225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099087 n * A165326 n

end

end A084102.P5224686699448520225

namespace A084102

/-- `A099087(n)*A165326(n)` -/
def P5224686699448520225.Spec : Prop :=
  ∀ n, P5224686699448520225.a n = A084102 n

end A084102

/-! ## A084102.P17024502810679631528

`A108520(n)*A153881(n+1)`
-/

namespace A084102.P17024502810679631528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108520 n * A153881 (n + 1)

end

end A084102.P17024502810679631528

namespace A084102

/-- `A108520(n)*A153881(n+1)` -/
def P17024502810679631528.Spec : Prop :=
  ∀ n, P17024502810679631528.a n = A084102 n

end A084102

/-! ## A084102.P10500856818394427309

`val(A000040(n+1)+2, 2)-∑[A078069(n)]`
-/

namespace A084102.P10500856818394427309
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078069 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.valuation (A000040 (n + 1) + 2).toNat 2 : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A084102.P10500856818394427309

namespace A084102

/-- `val(A000040(n+1)+2, 2)-∑[A078069(n)]` -/
def P10500856818394427309.Spec : Prop :=
  ∀ n, P10500856818394427309.a n = A084102 n

end A084102

/-! ## A084102.P4587106564955239325

`A000122(A000122(n)+n)-A108520(n)`
-/

namespace A084102.P4587106564955239325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000122 (A000122 n + (n : ℤ)).toNat - A108520 n

end

end A084102.P4587106564955239325

namespace A084102

/-- `A000122(A000122(n)+n)-A108520(n)` -/
def P4587106564955239325.Spec : Prop :=
  ∀ n, P4587106564955239325.a n = A084102 n

end A084102

/-! ## A084102.P8610846537401287886

`A090132(n-1)-a(n-1)` with `a(0)=1, a(1)=2`
-/

namespace A084102.P8610846537401287886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A090132 (n - 1) - a (n - 1)

end

end A084102.P8610846537401287886

namespace A084102

/-- `A090132(n-1)-a(n-1)` -/
def P8610846537401287886.Spec : Prop :=
  ∀ n, P8610846537401287886.a n = A084102 n

end A084102

/-! ## A084102.P12967264288257251755

`(A090132(n+1)+A090132(n))*A134824(n+1)`
-/

namespace A084102.P12967264288257251755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A090132 (n + 1) + A090132 n) * A134824 (n + 1)

end

end A084102.P12967264288257251755

namespace A084102

/-- `(A090132(n+1)+A090132(n))*A134824(n+1)` -/
def P12967264288257251755.Spec : Prop :=
  ∀ n, P12967264288257251755.a n = A084102 n

end A084102

/-! ## A084102.P3163078966721033411

`(A090132(n+1)+A090132(n))*A153881(n+1)`
-/

namespace A084102.P3163078966721033411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A090132 (n + 1) + A090132 n) * A153881 (n + 1)

end

end A084102.P3163078966721033411

namespace A084102

/-- `(A090132(n+1)+A090132(n))*A153881(n+1)` -/
def P3163078966721033411.Spec : Prop :=
  ∀ n, P3163078966721033411.a n = A084102 n

end A084102

/-! ## A084102.P6047385972579715312

`A099087(n)*A164660(n)`
-/

namespace A084102.P6047385972579715312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099087 n * A164660 n

end

end A084102.P6047385972579715312

namespace A084102

/-- `A099087(n)*A164660(n)` -/
def P6047385972579715312.Spec : Prop :=
  ∀ n, P6047385972579715312.a n = A084102 n

end A084102

/-!
# A084103: Expansion of (1+x)^3/(1+x^3).

The programs for A084103, the canonical program `A084103.P17100835781425445549` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A084103 has offset 0).

The definition of A084103 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1+3x+3x^2+x^3)/(1+x^3))` (program `A084103.P17100835781425445549`, by `A084103.P17100835781425445549.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A084103.P17100835781425445549

`ogf((1+3x+3x^2+x^3)/(1+x^3))`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A084103

/-- `ogf((1+3x+3x^2+x^3)/(1+x^3))` -/
def P17100835781425445549.Spec : Prop :=
  ∀ n, P17100835781425445549.a n = A084103 n

theorem P17100835781425445549.correct : P17100835781425445549.Spec := by
  intro n
  simp only [A084103]

end A084103

/-!
# A084104: A period 6 sequence.

The programs for A084104, the canonical program `A084104.P13830791889791743317` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A084104 has offset 0).

The definition of A084104 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A084104.P13830791889791743317

`dr(comp[3*n]²)`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A084104

/-- `dr(comp[3*n]²)` -/
def P13830791889791743317.Spec : Prop :=
  ∀ n, (P13830791889791743317.a n : ℤ) = A084104 n

theorem P13830791889791743317.correct : P13830791889791743317.Spec := by
  intro n
  simp only [A084104]

end A084104

/-!
# A084105: Middle q of three consecutive primes p,q,r, such that one adjacent prime is near, the other is far and the ratio of the differences (whichever of (r-q)/(q-p) or (q-p)/(r-q) is greater than 1) sets a record.

The programs for A084105, there is no canonical definition to state claims against.
-/

/-! ## A084105.P7931868533510099086

`∩[A198394(n+1), A060192(n)]`
-/

namespace A084105.P7931868533510099086
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198394 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060192 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A084105.P7931868533510099086

/-!
# A084109: n is congruent to 1 (mod 4) and is not the sum of two squares.

The programs for A084109, the canonical program `A084109.P4084513683396020648` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A084109 has offset 1).

The definition of A084109 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A084109.P4084513683396020648

`4*A020757(n+1)+1`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A084109

/-- `4*A020757(n+1)+1` -/
def P4084513683396020648.Spec : Prop :=
  ∀ n, P4084513683396020648.a n = A084109 (n + 1)

theorem P4084513683396020648.correct : P4084513683396020648.Spec := by
  intro n
  simp only [A084109, Nat.add_sub_cancel]

end A084109

/-! ## A084109.P13283056119236403700

`filter[A091113(n+1), A353809(#)]`
-/

namespace A084109.P13283056119236403700
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091113 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353809 (f1 j).toNat = 1) n)

end

end A084109.P13283056119236403700

namespace A084109

/-- `filter[A091113(n+1), A353809(#)]` -/
def P13283056119236403700.Spec : Prop :=
  ∀ n, P13283056119236403700.a n = A084109 (n + 1)

end A084109

/-! ## A084109.P10795514376649828543

`eq[1, A353809(n+1)]+1`
-/

namespace A084109.P10795514376649828543
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353809 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A084109.P10795514376649828543

namespace A084109

/-- `eq[1, A353809(n+1)]+1` -/
def P10795514376649828543.Spec : Prop :=
  ∀ n, (P10795514376649828543.a n : ℤ) = A084109 (n + 1)

end A084109

/-! ## A084109.P1412603194562204997

`filter[A077425(n+1), A353809(#)]`
-/

namespace A084109.P1412603194562204997
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077425 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353809 (f1 j).toNat = 1) n)

end

end A084109.P1412603194562204997

namespace A084109

/-- `filter[A077425(n+1), A353809(#)]` -/
def P1412603194562204997.Spec : Prop :=
  ∀ n, P1412603194562204997.a n = A084109 (n + 1)

end A084109

/-! ## A084109.P2173778075969705630

`filter[A119973(n+1), A323158(#)]`
-/

namespace A084109.P2173778075969705630
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119973 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323158 (f1 j).toNat = 1) n)

end

end A084109.P2173778075969705630

namespace A084109

/-- `filter[A119973(n+1), A323158(#)]` -/
def P2173778075969705630.Spec : Prop :=
  ∀ n, P2173778075969705630.a n = A084109 (n + 1)

end A084109

/-! ## A084109.P18233250865521919452

`filter[A119973(n+1), A324908(#)]`
-/

namespace A084109.P18233250865521919452
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119973 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A324908 (f1 j).toNat = 1) n)

end

end A084109.P18233250865521919452

namespace A084109

/-- `filter[A119973(n+1), A324908(#)]` -/
def P18233250865521919452.Spec : Prop :=
  ∀ n, P18233250865521919452.a n = A084109 (n + 1)

end A084109

/-! ## A084109.P5864000720657450847

`filter[A119973(n+1), A347871(#)]`
-/

namespace A084109.P5864000720657450847
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119973 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A347871 (f1 j).toNat = 1) n)

end

end A084109.P5864000720657450847

namespace A084109

/-- `filter[A119973(n+1), A347871(#)]` -/
def P5864000720657450847.Spec : Prop :=
  ∀ n, P5864000720657450847.a n = A084109 (n + 1)

end A084109

/-! ## A084109.P12281262479941905590

`filter[A119973(n+1), A353638(#)]`
-/

namespace A084109.P12281262479941905590
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119973 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353638 (f1 j).toNat = 1) n)

end

end A084109.P12281262479941905590

namespace A084109

/-- `filter[A119973(n+1), A353638(#)]` -/
def P12281262479941905590.Spec : Prop :=
  ∀ n, P12281262479941905590.a n = A084109 (n + 1)

end A084109

/-! ## A084109.P4383976898790411826

`filter[A181781(n+1), A353809(#)]`
-/

namespace A084109.P4383976898790411826
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181781 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353809 (f1 j).toNat = 1) n)

end

end A084109.P4383976898790411826

namespace A084109

/-- `filter[A181781(n+1), A353809(#)]` -/
def P4383976898790411826.Spec : Prop :=
  ∀ n, P4383976898790411826.a n = A084109 (n + 1)

end A084109

/-! ## A084109.P10221602813216228437

`4*eq[0, A000729(n)]+1`
-/

namespace A084109.P10221602813216228437
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000729 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A084109.P10221602813216228437

namespace A084109

/-- `4*eq[0, A000729(n)]+1` -/
def P10221602813216228437.Spec : Prop :=
  ∀ n, (P10221602813216228437.a n : ℤ) = A084109 (n + 1)

end A084109

/-! ## A084109.P17568674717636858202

`4*lt[A209941(n)², 1]+1`
-/

namespace A084109.P17568674717636858202
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209941 n ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A084109.P17568674717636858202

namespace A084109

/-- `4*lt[A209941(n)², 1]+1` -/
def P17568674717636858202.Spec : Prop :=
  ∀ n, (P17568674717636858202.a n : ℤ) = A084109 (n + 1)

end A084109

/-! ## A084109.P10900015216929840768

`A004766(A020757(n+1))`
-/

namespace A084109.P10900015216929840768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004766 (A020757 (n + 1)).toNat

end

end A084109.P10900015216929840768

namespace A084109

/-- `A004766(A020757(n+1))` -/
def P10900015216929840768.Spec : Prop :=
  ∀ n, P10900015216929840768.a n = A084109 (n + 1)

end A084109

/-! ## A084109.P11816830932220181026

`A016813(lt[A008441(n), 1])`
-/

namespace A084109.P11816830932220181026
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008441 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016813 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A084109.P11816830932220181026

namespace A084109

/-- `A016813(lt[A008441(n), 1])` -/
def P11816830932220181026.Spec : Prop :=
  ∀ n, P11816830932220181026.a n = A084109 (n + 1)

end A084109

/-! ## A084109.P2926803879439733115

`filter[A016813(n), A353809(#)]`
-/

namespace A084109.P2926803879439733115
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016813 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353809 (f1 j).toNat = 1) n)

end

end A084109.P2926803879439733115

namespace A084109

/-- `filter[A016813(n), A353809(#)]` -/
def P2926803879439733115.Spec : Prop :=
  ∀ n, P2926803879439733115.a n = A084109 (n + 1)

end A084109

/-! ## A084109.P4677390287910963389

`filter[A222945(n), A353809(#)]`
-/

namespace A084109.P4677390287910963389
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222945 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353809 (f1 j).toNat = 1) n)

end

end A084109.P4677390287910963389

namespace A084109

/-- `filter[A222945(n), A353809(#)]` -/
def P4677390287910963389.Spec : Prop :=
  ∀ n, P4677390287910963389.a n = A084109 (n + 1)

end A084109

/-! ## A084109.P10276860549879015935

`filter[A004766(n+1), A353809(#)]`
-/

namespace A084109.P10276860549879015935
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004766 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353809 (f1 j).toNat = 1) n)

end

end A084109.P10276860549879015935

namespace A084109

/-- `filter[A004766(n+1), A353809(#)]` -/
def P10276860549879015935.Spec : Prop :=
  ∀ n, P10276860549879015935.a n = A084109 (n + 1)

end A084109

/-! ## A084109.P13945440044631444008

`∩[A119973(n+1), A016813(n)]`
-/

namespace A084109.P13945440044631444008
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119973 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016813 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A084109.P13945440044631444008

namespace A084109

/-- `∩[A119973(n+1), A016813(n)]` -/
def P13945440044631444008.Spec : Prop :=
  ∀ n, (P13945440044631444008.a n : ℤ) = A084109 (n + 1)

end A084109

/-! ## A084109.P3421525272127129317

`∩[A119973(n+1), A222945(n)]`
-/

namespace A084109.P3421525272127129317
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119973 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222945 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A084109.P3421525272127129317

namespace A084109

/-- `∩[A119973(n+1), A222945(n)]` -/
def P3421525272127129317.Spec : Prop :=
  ∀ n, (P3421525272127129317.a n : ℤ) = A084109 (n + 1)

end A084109

/-! ## A084109.P9447110686596516519

`A008574(comp[A020756(n+1)])+1`
-/

namespace A084109.P9447110686596516519
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020756 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n) + 1

end

end A084109.P9447110686596516519

namespace A084109

/-- `A008574(comp[A020756(n+1)])+1` -/
def P9447110686596516519.Spec : Prop :=
  ∀ n, P9447110686596516519.a n = A084109 (n + 1)

end A084109

/-! ## A084109.P11388844729952107215

`∩[A004766(n+1), A119973(n+1)]`
-/

namespace A084109.P11388844729952107215
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004766 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119973 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A084109.P11388844729952107215

namespace A084109

/-- `∩[A004766(n+1), A119973(n+1)]` -/
def P11388844729952107215.Spec : Prop :=
  ∀ n, (P11388844729952107215.a n : ℤ) = A084109 (n + 1)

end A084109

/-!
# A084110: Let L(n) = ordered list of divisors of n = {d_1=1, d_2, ..., d_k=n}; set e_1=1, e_i = e_{i-1}/d_i if that is an integer otherwise e_i = e_{i-1}*d_i; then a(n) = e_k.

The programs for A084110, there is no canonical definition to state claims against.
-/

/-! ## A084110.P8437103572846881577

`A342768(n+1)^A145460(A050356(n+1))`
-/

namespace A084110.P8437103572846881577
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A342768 (n + 1) : ℚ) ^ (A145460 (A050356 (n + 1)).toNat : ℤ)

end

end A084110.P8437103572846881577

/-!
# A084111: Numbers m such that A084110(m) = m.

The programs for A084111, there is no canonical definition to state claims against.
-/

/-! ## A084111.P11827564477584379857

`∪[A000040(n+1), A084112(n+1)]`
-/

namespace A084111.P11827564477584379857
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084112 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A084111.P11827564477584379857

/-! ## A084111.P8113276689452206752

`∪[A008578(n+1), A084112(n+1)]`
-/

namespace A084111.P8113276689452206752
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084112 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A084111.P8113276689452206752

/-! ## A084111.P10359185415371379528

`eq[1, A353787(n+1)]+1`
-/

namespace A084111.P10359185415371379528
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353787 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A084111.P10359185415371379528

/-! ## A084111.P2078594206485830613

`filter[A369254(n+1), A353787(#)]`
-/

namespace A084111.P2078594206485830613
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369254 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353787 (f1 j).toNat = 1) n)

end

end A084111.P2078594206485830613

/-! ## A084111.P8861507262150392687

`filter[A265640(n+1), A353787(#)]`
-/

namespace A084111.P8861507262150392687
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265640 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353787 (f1 j).toNat = 1) n)

end

end A084111.P8861507262150392687

/-! ## A084111.P9699732815908921820

`filter[A304686(n+1), A353787(#)]`
-/

namespace A084111.P9699732815908921820
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304686 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353787 (f1 j).toNat = 1) n)

end

end A084111.P9699732815908921820

/-! ## A084111.P7238916408403578245

`filter[A130091(n+1), A353787(#)]`
-/

namespace A084111.P7238916408403578245
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130091 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353787 (f1 j).toNat = 1) n)

end

end A084111.P7238916408403578245

/-! ## A084111.P11528595346001076451

`filter[A212165(n+1), A353787(#)]`
-/

namespace A084111.P11528595346001076451
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212165 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353787 (f1 j).toNat = 1) n)

end

end A084111.P11528595346001076451

/-! ## A084111.P16764022976883772982

`filter[A285801(n+1), A353787(#)]`
-/

namespace A084111.P16764022976883772982
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285801 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353787 (f1 j).toNat = 1) n)

end

end A084111.P16764022976883772982

/-! ## A084111.P9368771812130261244

`filter[A082377(n+1), A353787(#)]`
-/

namespace A084111.P9368771812130261244
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082377 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353787 (f1 j).toNat = 1) n)

end

end A084111.P9368771812130261244

/-! ## A084111.P7446278606153056424

`filter[A364160(n+1), A353787(#)]`
-/

namespace A084111.P7446278606153056424
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364160 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353787 (f1 j).toNat = 1) n)

end

end A084111.P7446278606153056424

/-! ## A084111.P9476704172692264411

`filter[A100959(n+1), A353787(#)]`
-/

namespace A084111.P9476704172692264411
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100959 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353787 (f1 j).toNat = 1) n)

end

end A084111.P9476704172692264411

/-! ## A084111.P14442756698402821525

`filter[A210994(n+1), A353787(#)]`
-/

namespace A084111.P14442756698402821525
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210994 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353787 (f1 j).toNat = 1) n)

end

end A084111.P14442756698402821525

/-! ## A084111.P12932212437481002270

`filter[A246716(n+1), A353787(#)]`
-/

namespace A084111.P12932212437481002270
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246716 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353787 (f1 j).toNat = 1) n)

end

end A084111.P12932212437481002270

/-! ## A084111.P4347086956945194306

`filter[A239289(n+1), A353787(#)]`
-/

namespace A084111.P4347086956945194306
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239289 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353787 (f1 j).toNat = 1) n)

end

end A084111.P4347086956945194306

/-! ## A084111.P15950328709999996970

`filter[A107750(n+1), A353787(#)]`
-/

namespace A084111.P15950328709999996970
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107750 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353787 (f1 j).toNat = 1) n)

end

end A084111.P15950328709999996970

/-! ## A084111.P9994756728288703764

`filter[A253567(n+1), A353787(#)]`
-/

namespace A084111.P9994756728288703764
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253567 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353787 (f1 j).toNat = 1) n)

end

end A084111.P9994756728288703764

/-! ## A084111.P14351151280076863001

`filter[n+1, A353787(#)]`
-/

namespace A084111.P14351151280076863001
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353787 (f1 j) = 1) n)

end

end A084111.P14351151280076863001

/-! ## A084111.P17055266830894992919

`eq[n, A084110(abs(1-n)+1)]`
-/

namespace A084111.P17055266830894992919
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084110 (|1 - (n : ℤ)| + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A084111.P17055266830894992919

/-! ## A084111.P4831985596462073522

`eq[n+1, A084110(n+1)]+1`
-/

namespace A084111.P4831985596462073522
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084110 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A084111.P4831985596462073522

/-!
# A084112: Nonprimes in A084111.

The programs for A084112, there is no canonical definition to state claims against.
-/

/-! ## A084112.P15272475385259586629

`∩[A084111(n+1), A361204(n+1)]`
-/

namespace A084112.P15272475385259586629
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084111 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361204 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A084112.P15272475385259586629

/-! ## A084112.P18428811135019536727

`∩[A084111(n+1), A388985(n+1)]`
-/

namespace A084112.P18428811135019536727
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084111 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A388985 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A084112.P18428811135019536727

/-! ## A084112.P10896641272454425463

`filter[A084111(n+1), A005171(#)]`
-/

namespace A084112.P10896641272454425463
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084111 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A084112.P10896641272454425463

/-! ## A084112.P3356396397882867657

`∩[A084111(n+1), A162966(n+1)]`
-/

namespace A084112.P3356396397882867657
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084111 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162966 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A084112.P3356396397882867657

/-! ## A084112.P2369043415542221229

`∩[A084111(n+1), A244723(n+1)]`
-/

namespace A084112.P2369043415542221229
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084111 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244723 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A084112.P2369043415542221229

/-! ## A084112.P8141334745144965502

`∩[A084111(n+1), A328303(n+1)]`
-/

namespace A084112.P8141334745144965502
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084111 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328303 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A084112.P8141334745144965502

/-! ## A084112.P14693104547427519122

`∩[A084111(n+1), A111087(n+1)]`
-/

namespace A084112.P14693104547427519122
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084111 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111087 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A084112.P14693104547427519122

/-! ## A084112.P1564848454127051074

`∩[A084111(n+1), A289553(n+1)]`
-/

namespace A084112.P1564848454127051074
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084111 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289553 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A084112.P1564848454127051074

/-! ## A084112.P3533826426039817224

`∩[A084111(n+1), comp[A084116(n+1)]]`
-/

namespace A084112.P3533826426039817224
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084111 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084116 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A084112.P3533826426039817224

/-! ## A084112.P9093121597014701279

`∩[A084111(n+1), A145190(n+1)]`
-/

namespace A084112.P9093121597014701279
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084111 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145190 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A084112.P9093121597014701279

/-!
# A084113: Number of multiplications when calculating A084110(n).

The programs for A084113, there is no canonical definition to state claims against.
-/

/-! ## A084113.P12536621790283933656

`A084115(n+1)+A084114(n+1)`
-/

namespace A084113.P12536621790283933656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084115 (n + 1) + A084114 (n + 1)

end

end A084113.P12536621790283933656

/-! ## A084113.P15889700345811851142

`A032741(n+1)-A084114(n+1)`
-/

namespace A084113.P15889700345811851142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 (n + 1) - A084114 (n + 1)

end

end A084113.P15889700345811851142

/-! ## A084113.P15553199199355873491

`A000005(n+1)-(A084114(n+1)+1)`
-/

namespace A084113.P15553199199355873491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) - (A084114 (n + 1) + 1)

end

end A084113.P15553199199355873491

/-! ## A084113.P11240794945736239782

`(A084115(n+1)+A032741(n+1))/2`
-/

namespace A084113.P11240794945736239782
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A084115 (n + 1) + A032741 (n + 1) : ℚ) / 2

end

end A084113.P11240794945736239782

/-! ## A084113.P18060350281468890102

`A004526(A084115(n+1)+A000005(n+1))`
-/

namespace A084113.P18060350281468890102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A084115 (n + 1) + A000005 (n + 1)).toNat

end

end A084113.P18060350281468890102

/-! ## A084113.P14002777694784553311

`A141670(n+1)/A000041(n+1)-A084114(n+1)`
-/

namespace A084113.P14002777694784553311
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A141670 (n + 1) : ℚ) / (A000041 (n + 1) : ℚ) - (A084114 (n + 1) : ℚ)

end

end A084113.P14002777694784553311

/-! ## A084113.P15341878968346436598

`A080342(A100577(n+1))`
-/

namespace A084113.P15341878968346436598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080342 (A100577 (n + 1)).toNat

end

end A084113.P15341878968346436598

/-!
# A084114: Number of divisions when calculating A084110(n).

The programs for A084114, there is no canonical definition to state claims against.
-/

/-! ## A084114.P10666905043818844468

`A032741(n+1)-A084113(n+1)`
-/

namespace A084114.P10666905043818844468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 (n + 1) - A084113 (n + 1)

end

end A084114.P10666905043818844468

/-! ## A084114.P15956393089069297800

`A084113(n+1)-A084115(n+1)`
-/

namespace A084114.P15956393089069297800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084113 (n + 1) - A084115 (n + 1)

end

end A084114.P15956393089069297800

/-! ## A084114.P16182528010051008829

`A000005(n+1)-(A084113(n+1)+1)`
-/

namespace A084114.P16182528010051008829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) - (A084113 (n + 1) + 1)

end

end A084114.P16182528010051008829

/-! ## A084114.P13437806295020916498

`(A032741(n+1)-A084115(n+1))/2`
-/

namespace A084114.P13437806295020916498
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A032741 (n + 1) - A084115 (n + 1) : ℚ) / 2

end

end A084114.P13437806295020916498

/-! ## A084114.P16200939773059529862

`A004526(A000005(n+1)-A084115(n+1))`
-/

namespace A084114.P16200939773059529862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A000005 (n + 1) - A084115 (n + 1)).toNat

end

end A084114.P16200939773059529862

/-! ## A084114.P9101072185379174814

`A056595(3^A088434(n+1))`
-/

namespace A084114.P9101072185379174814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056595 (SequenceMachineLib.roundAway ((3 : ℚ) ^ (A088434 (n + 1) : ℤ))).toNat

end

end A084114.P9101072185379174814

/-! ## A084114.P3320246912735161751

`A347447(n+1)%A296133(n+1)`
-/

namespace A084114.P3320246912735161751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A347447 (n + 1)) (A296133 (n + 1))

end

end A084114.P3320246912735161751

/-! ## A084114.P6644761075504605642

`A347447(A045778(n+1))*A347447(n+1)`
-/

namespace A084114.P6644761075504605642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347447 (A045778 (n + 1)).toNat * A347447 (n + 1)

end

end A084114.P6644761075504605642

/-! ## A084114.P3479376133507864580

`A000196(A294787(n+1)+1)-1`
-/

namespace A084114.P3479376133507864580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A294787 (n + 1) + 1).toNat - 1

end

end A084114.P3479376133507864580

/-!
# A084115: a(n) = A084113(n) - A084114(n).

The programs for A084115, there is no canonical definition to state claims against.
-/

/-! ## A084115.P15822909274565646003

`A084113(n+1)-A084114(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A084115.P15822909274565646003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084113 (n + 1) - A084114 (n + 1)

end

end A084115.P15822909274565646003

/-! ## A084115.P16996241094736012400

`A032741(n+1)-2*A084114(n+1)`
-/

namespace A084115.P16996241094736012400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 (n + 1) - 2 * A084114 (n + 1)

end

end A084115.P16996241094736012400

/-! ## A084115.P1096014382602368330

`A000005(n+1)-A005408(A084114(n+1))`
-/

namespace A084115.P1096014382602368330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) - A005408 (A084114 (n + 1)).toNat

end

end A084115.P1096014382602368330

/-! ## A084115.P2192695077603005302

`A008619(A114003(n+1))-(2*A084114(n+1)+1)`
-/

namespace A084115.P2192695077603005302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A114003 (n + 1)).toNat - (2 * A084114 (n + 1) + 1)

end

end A084115.P2192695077603005302

/-! ## A084115.P1250104060353067080

`A084113(n+1)+A084113(n+1)-A032741(n+1)`
-/

namespace A084115.P1250104060353067080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084113 (n + 1) + (A084113 (n + 1) - A032741 (n + 1))

end

end A084115.P1250104060353067080

/-! ## A084115.P5005416567067657927

`A076622(41*A000005(n+1)²+1)-4`
-/

namespace A084115.P5005416567067657927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076622 (41 * A000005 (n + 1) ^ 2 + 1).toNat - 4

end

end A084115.P5005416567067657927

/-! ## A084115.P7930816621333880493

`A116939(A046660(A338506(n+1)))`
-/

namespace A084115.P7930816621333880493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116939 (A046660 (A338506 (n + 1)).toNat).toNat

end

end A084115.P7930816621333880493

/-! ## A084115.P6798052766938723246

`A198277(n)%A100795(A000005(n+1))`
-/

namespace A084115.P6798052766938723246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A198277 n) (A100795 (A000005 (n + 1)).toNat)

end

end A084115.P6798052766938723246

/-!
# A084116: Numbers m such that A084115(m) = 1.

The programs for A084116, the canonical program `A084116.P2149557461537845173` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A084116 has offset 1).

The definition of A084116 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A084116.P2149557461537845173

`eq[1, A353788(n+1)]+1`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A084116

/-- `eq[1, A353788(n+1)]+1` -/
def P2149557461537845173.Spec : Prop :=
  ∀ n, (P2149557461537845173.a n : ℤ) = A084116 (n + 1)

theorem P2149557461537845173.correct : P2149557461537845173.Spec := by
  intro n
  simp only [A084116, Nat.add_sub_cancel]

end A084116

/-! ## A084116.P17884699690772943555

`eq[1, 5%A000005(n+1)]+1`
-/

namespace A084116.P17884699690772943555
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod 5 (A000005 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A084116.P17884699690772943555

namespace A084116

/-- `eq[1, 5%A000005(n+1)]+1` -/
def P17884699690772943555.Spec : Prop :=
  ∀ n, (P17884699690772943555.a n : ℤ) = A084116 (n + 1)

end A084116

/-! ## A084116.P7411491385405626257

`eq[1, A009947(A000005(n+1))]+1`
-/

namespace A084116.P7411491385405626257
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009947 (A000005 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A084116.P7411491385405626257

namespace A084116

/-- `eq[1, A009947(A000005(n+1))]+1` -/
def P7411491385405626257.Spec : Prop :=
  ∀ n, (P7411491385405626257.a n : ℤ) = A084116 (n + 1)

end A084116

/-! ## A084116.P16006684242131899926

`∪[A000040(n+1), A030513(n+1)]`
-/

namespace A084116.P16006684242131899926
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030513 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A084116.P16006684242131899926

namespace A084116

/-- `∪[A000040(n+1), A030513(n+1)]` -/
def P16006684242131899926.Spec : Prop :=
  ∀ n, (P16006684242131899926.a n : ℤ) = A084116 (n + 1)

end A084116

/-! ## A084116.P8521771941632376259

`∪[A030513(n+1), A070159(n+1)]`
-/

namespace A084116.P8521771941632376259
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030513 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070159 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A084116.P8521771941632376259

namespace A084116

/-- `∪[A030513(n+1), A070159(n+1)]` -/
def P8521771941632376259.Spec : Prop :=
  ∀ n, (P8521771941632376259.a n : ℤ) = A084116 (n + 1)

end A084116

/-! ## A084116.P15427480071723325896

`eq[2, A051125(A000005(n+2)+1)]+2`
-/

namespace A084116.P15427480071723325896
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051125 (A000005 (n + 2) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A084116.P15427480071723325896

namespace A084116

/-- `eq[2, A051125(A000005(n+2)+1)]+2` -/
def P15427480071723325896.Spec : Prop :=
  ∀ n, (P15427480071723325896.a n : ℤ) = A084116 (n + 1)

end A084116

/-! ## A084116.P1824522274522481459

`eq[2, A000010(A000005(n+2)+2)]+2`
-/

namespace A084116.P1824522274522481459
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A000005 (n + 2) + 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A084116.P1824522274522481459

namespace A084116

/-- `eq[2, A000010(A000005(n+2)+2)]+2` -/
def P1824522274522481459.Spec : Prop :=
  ∀ n, (P1824522274522481459.a n : ℤ) = A084116 (n + 1)

end A084116

/-! ## A084116.P6835935352407652236

`eq[A000005(n+1), A238729(A000005(n+1)+2)]+1`
-/

namespace A084116.P6835935352407652236
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238729 (A000005 (n + 1) + 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A084116.P6835935352407652236

namespace A084116

/-- `eq[A000005(n+1), A238729(A000005(n+1)+2)]+1` -/
def P6835935352407652236.Spec : Prop :=
  ∀ n, (P6835935352407652236.a n : ℤ) = A084116 (n + 1)

end A084116

/-! ## A084116.P16396075576086543474

`filter[A007964(n+1), A049240(#)]`
-/

namespace A084116.P16396075576086543474
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007964 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A049240 (f1 j).toNat = 1) n)

end

end A084116.P16396075576086543474

namespace A084116

/-- `filter[A007964(n+1), A049240(#)]` -/
def P16396075576086543474.Spec : Prop :=
  ∀ n, P16396075576086543474.a n = A084116 (n + 1)

end A084116

/-! ## A084116.P4415380668558002688

`filter[A007964(n+1), A353788(#)]`
-/

namespace A084116.P4415380668558002688
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007964 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353788 (f1 j).toNat = 1) n)

end

end A084116.P4415380668558002688

namespace A084116

/-- `filter[A007964(n+1), A353788(#)]` -/
def P4415380668558002688.Spec : Prop :=
  ∀ n, P4415380668558002688.a n = A084116 (n + 1)

end A084116

/-! ## A084116.P18304255643410050084

`filter[A007964(n+2), A181183(#)]`
-/

namespace A084116.P18304255643410050084
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007964 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A181183 (f1 j).toNat = 1) n)

end

end A084116.P18304255643410050084

namespace A084116

/-- `filter[A007964(n+2), A181183(#)]` -/
def P18304255643410050084.Spec : Prop :=
  ∀ n, P18304255643410050084.a n = A084116 (n + 1)

end A084116

/-! ## A084116.P3303342449510411468

`filter[A007964(n+2), A295316(#)]`
-/

namespace A084116.P3303342449510411468
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007964 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A295316 (f1 j).toNat = 1) n)

end

end A084116.P3303342449510411468

namespace A084116

/-- `filter[A007964(n+2), A295316(#)]` -/
def P3303342449510411468.Spec : Prop :=
  ∀ n, P3303342449510411468.a n = A084116 (n + 1)

end A084116

/-! ## A084116.P1722083601345350965

`filter[A007964(n+2), A359473(#)]`
-/

namespace A084116.P1722083601345350965
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007964 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359473 (f1 j).toNat = 1) n)

end

end A084116.P1722083601345350965

namespace A084116

/-- `filter[A007964(n+2), A359473(#)]` -/
def P1722083601345350965.Spec : Prop :=
  ∀ n, P1722083601345350965.a n = A084116 (n + 1)

end A084116

/-! ## A084116.P1544852337216212018

`filter[A007964(n+2), A380458(#)]`
-/

namespace A084116.P1544852337216212018
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007964 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A380458 (f1 j).toNat = 1) n)

end

end A084116.P1544852337216212018

namespace A084116

/-- `filter[A007964(n+2), A380458(#)]` -/
def P1544852337216212018.Spec : Prop :=
  ∀ n, P1544852337216212018.a n = A084116 (n + 1)

end A084116

/-! ## A084116.P8193583133008104390

`filter[A354144(n+1), A353788(#)]`
-/

namespace A084116.P8193583133008104390
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354144 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353788 (f1 j).toNat = 1) n)

end

end A084116.P8193583133008104390

namespace A084116

/-- `filter[A354144(n+1), A353788(#)]` -/
def P8193583133008104390.Spec : Prop :=
  ∀ n, P8193583133008104390.a n = A084116 (n + 1)

end A084116

/-! ## A084116.P1127469012495736328

`filter[A085156(n+1), A353788(#)]`
-/

namespace A084116.P1127469012495736328
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085156 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353788 (f1 j).toNat = 1) n)

end

end A084116.P1127469012495736328

namespace A084116

/-- `filter[A085156(n+1), A353788(#)]` -/
def P1127469012495736328.Spec : Prop :=
  ∀ n, P1127469012495736328.a n = A084116 (n + 1)

end A084116

/-! ## A084116.P6077135444312745751

`filter[A119885(n+1), A353788(#)]`
-/

namespace A084116.P6077135444312745751
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119885 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353788 (f1 j).toNat = 1) n)

end

end A084116.P6077135444312745751

namespace A084116

/-- `filter[A119885(n+1), A353788(#)]` -/
def P6077135444312745751.Spec : Prop :=
  ∀ n, P6077135444312745751.a n = A084116 (n + 1)

end A084116

/-! ## A084116.P1979110476213998029

`filter[A119885(n+2), A295316(#)]`
-/

namespace A084116.P1979110476213998029
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119885 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A295316 (f1 j).toNat = 1) n)

end

end A084116.P1979110476213998029

namespace A084116

/-- `filter[A119885(n+2), A295316(#)]` -/
def P1979110476213998029.Spec : Prop :=
  ∀ n, P1979110476213998029.a n = A084116 (n + 1)

end A084116

/-! ## A084116.P11492398276901977849

`filter[A119885(n+2), A359473(#)]`
-/

namespace A084116.P11492398276901977849
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119885 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359473 (f1 j).toNat = 1) n)

end

end A084116.P11492398276901977849

namespace A084116

/-- `filter[A119885(n+2), A359473(#)]` -/
def P11492398276901977849.Spec : Prop :=
  ∀ n, P11492398276901977849.a n = A084116 (n + 1)

end A084116

/-! ## A084116.P5927180860995487080

`filter[A072510(n+1), A353788(#)]`
-/

namespace A084116.P5927180860995487080
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072510 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353788 (f1 j).toNat = 1) n)

end

end A084116.P5927180860995487080

namespace A084116

/-- `filter[A072510(n+1), A353788(#)]` -/
def P5927180860995487080.Spec : Prop :=
  ∀ n, P5927180860995487080.a n = A084116 (n + 1)

end A084116

/-!
# A084117: Multiplicity of the factor (1+x+x^2) in the characteristic polynomial modulo 2 of the symmetric matrix with entries binomial(i+j,i), 0<=i,j

The programs for A084117, there is no canonical definition to state claims against.
-/

/-! ## A084117.P12336708413761956651

`(n-A085015(n))/2`
-/

namespace A084117.P12336708413761956651
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - A085015 n : ℚ) / 2

end

end A084117.P12336708413761956651

/-! ## A084117.P15660469097176947691

`A001281(n-A085015(n))`
-/

namespace A084117.P15660469097176947691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 ((n : ℤ) - A085015 n).toNat

end

end A084117.P15660469097176947691

/-! ## A084117.P9101823740164778637

`A004525(n-A085015(n))`
-/

namespace A084117.P9101823740164778637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 ((n : ℤ) - A085015 n).toNat

end

end A084117.P9101823740164778637

/-! ## A084117.P1078386626684854287

`A004526(n-A085015(n))`
-/

namespace A084117.P1078386626684854287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 ((n : ℤ) - A085015 n).toNat

end

end A084117.P1078386626684854287

/-! ## A084117.P397207782315926524

`A006370(n-A085015(n))`
-/

namespace A084117.P397207782315926524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006370 ((n : ℤ) - A085015 n).toNat

end

end A084117.P397207782315926524

/-! ## A084117.P10950254562837761012

`A014682(n-A085015(n))`
-/

namespace A084117.P10950254562837761012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 ((n : ℤ) - A085015 n).toNat

end

end A084117.P10950254562837761012

/-! ## A084117.P11983898194469508308

`A025480(n-A085015(n))`
-/

namespace A084117.P11983898194469508308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 ((n : ℤ) - A085015 n).toNat

end

end A084117.P11983898194469508308

/-! ## A084117.P5450645929078706144

`A026741(n-A085015(n))`
-/

namespace A084117.P5450645929078706144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 ((n : ℤ) - A085015 n).toNat

end

end A084117.P5450645929078706144

/-! ## A084117.P6868099008163614383

`A029578(n-A085015(n))`
-/

namespace A084117.P6868099008163614383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029578 ((n : ℤ) - A085015 n).toNat

end

end A084117.P6868099008163614383

/-! ## A084117.P12903235307842577404

`(n-A085015(n))*A000032(C(2, n+2))^-1`
-/

namespace A084117.P12903235307842577404
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - A085015 n : ℚ) * (A000032 (Nat.choose 2 (n + 2)) : ℚ) ^ (-1 : ℤ)

end

end A084117.P12903235307842577404

/-! ## A084117.P12345597447762144792

`A085015(2*n)/2`
-/

namespace A084117.P12345597447762144792
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A085015 (2 * n) : ℚ) / 2

end

end A084117.P12345597447762144792

/-! ## A084117.P2252146863659397487

`A001281(A085015(2*n))`
-/

namespace A084117.P2252146863659397487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A085015 (2 * n)).toNat

end

end A084117.P2252146863659397487

/-! ## A084117.P12527551489428821698

`A085015(2*n)*A000032(C(2, n+2))^-1`
-/

namespace A084117.P12527551489428821698
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A085015 (2 * n) : ℚ) * (A000032 (Nat.choose 2 (n + 2)) : ℚ) ^ (-1 : ℤ)

end

end A084117.P12527551489428821698

/-!
# A084119: Decimal expansion of the Fibonacci binary number, Sum_{k>0} 1/2^F(k), where F(k) = A000045(k).

The programs for A084119, there is no canonical definition to state claims against.
-/

/-! ## A084119.P11517409829177395373

`A124091(n)-A316341(2*n+1)`
-/

namespace A084119.P11517409829177395373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124091 (n + 1) - A316341 (2 * n + 1)

end

end A084119.P11517409829177395373

/-! ## A084119.P10107316147990286963

`A147309(A147309(a(n-1))!)+A124091(n)` with `a(0)=1`
-/

namespace A084119.P10107316147990286963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A147309 (Nat.factorial (A147309 (a (n - 1)).toNat).toNat) + A124091 (n + 1)

end

end A084119.P10107316147990286963

/-! ## A084119.P15256122805272977610

`A194604(A147309(a(n-1))+1)+A124091(n)` with `a(0)=1`
-/

namespace A084119.P15256122805272977610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A194604 (A147309 (a (n - 1)).toNat + 1).toNat + A124091 (n + 1)

end

end A084119.P15256122805272977610

/-! ## A084119.P14947109606455652597

`A124091(n)/A034888(A284996(a(n-1)+1))` with `a(0)=1`
-/

namespace A084119.P14947109606455652597
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (A124091 (n + 1) : ℚ) / (A034888 (A284996 (SequenceMachineLib.roundAway (a (n - 1) + 1)).toNat).toNat : ℚ)

end

end A084119.P14947109606455652597

/-! ## A084119.P9651611691268341679

`A124091(A321713(2*n+1)+n)`
-/

namespace A084119.P9651611691268341679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124091 ((A321713 (2 * n + 1) + (n : ℤ)).toNat + 1)

end

end A084119.P9651611691268341679

/-! ## A084119.P8040361341514240744

`A124091(n)+A181313(n)-A125600(n)`
-/

namespace A084119.P8040361341514240744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124091 (n + 1) + (A181313 n - A125600 n)

end

end A084119.P8040361341514240744

/-! ## A084119.P11194371471171697904

`A124091(n)/A014963((n+1)²+n+1)`
-/

namespace A084119.P11194371471171697904
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A124091 (n + 1) : ℚ) / (A014963 ((n + 1) ^ 2 + (n + 1)) : ℚ)

end

end A084119.P11194371471171697904

/-!
# A084120: a(n) = 6*a(n-1) - 3*a(n-2), a(0)=1, a(1)=3.

The programs for A084120, the canonical program `A084120.P16212794635267177132` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A084120 has offset 0).

The definition of A084120 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `6*a(n-1)-3*a(n-2)` (program `A084120.P16212794635267177132`, by `A084120.P16212794635267177132.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A084120.P16212794635267177132

`6*a(n-1)-3*a(n-2)` with `a(0)=1, a(1)=3`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A084120

/-- `6*a(n-1)-3*a(n-2)` -/
def P16212794635267177132.Spec : Prop :=
  ∀ n, P16212794635267177132.a n = A084120 n

theorem P16212794635267177132.correct : P16212794635267177132.Spec := by
  intro n
  simp only [A084120]

end A084120

/-! ## A084120.P1526245001236360340

`ogf((1-3x)/(1-6x+3x^2))`
-/

namespace A084120.P1526245001236360340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -3] [1, -6, 3] n

end

end A084120.P1526245001236360340

namespace A084120

/-- `ogf((1-3x)/(1-6x+3x^2))` -/
def P1526245001236360340.Spec : Prop :=
  ∀ n, P1526245001236360340.a n = A084120 n

end A084120

/-! ## A084120.P17999941744858657833

`A056449(n)*A080872(n)`
-/

namespace A084120.P17999941744858657833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056449 n * A080872 n

end

end A084120.P17999941744858657833

namespace A084120

/-- `A056449(n)*A080872(n)` -/
def P17999941744858657833.Spec : Prop :=
  ∀ n, P17999941744858657833.a n = A084120 n

end A084120

/-! ## A084120.P4198643524119322418

`Δ[A129444(n+1)]*A056449(n)`
-/

namespace A084120.P4198643524119322418
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129444 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A056449 n

end

end A084120.P4198643524119322418

namespace A084120

/-- `Δ[A129444(n+1)]*A056449(n)` -/
def P4198643524119322418.Spec : Prop :=
  ∀ n, P4198643524119322418.a n = A084120 n

end A084120

/-! ## A084120.P351413304304112044

`A000244(A110654(n))*A080872(n)`
-/

namespace A084120.P351413304304112044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000244 (A110654 n).toNat * A080872 n

end

end A084120.P351413304304112044

namespace A084120

/-- `A000244(A110654(n))*A080872(n)` -/
def P351413304304112044.Spec : Prop :=
  ∀ n, P351413304304112044.a n = A084120 n

end A084120

/-! ## A084120.P18408846885528958610

`((3+sqrt(6))^n+(3-sqrt(6))^n)/2`
-/

namespace A084120.P18408846885528958610
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((3 + Real.sqrt (6 : ℝ)) ^ n + (3 - Real.sqrt (6 : ℝ)) ^ n) / 2

end

end A084120.P18408846885528958610

namespace A084120

/-- `((3+sqrt(6))^n+(3-sqrt(6))^n)/2` -/
def P18408846885528958610.Spec : Prop :=
  ∀ n, P18408846885528958610.a n = (A084120 n : ℝ)

end A084120

/-! ## A084120.P17282324576666185164

`2*A158869(n)-A164550(n)`
-/

namespace A084120.P17282324576666185164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A158869 n - A164550 n

end

end A084120.P17282324576666185164

namespace A084120

/-- `2*A158869(n)-A164550(n)` -/
def P17282324576666185164.Spec : Prop :=
  ∀ n, P17282324576666185164.a n = A084120 n

end A084120

/-! ## A084120.P18077156131510490352

`sqrt(3^n*A171640(n+1))`
-/

namespace A084120.P18077156131510490352
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt ((3 ^ n : ℤ) * A171640 (n + 1) : ℝ)

end

end A084120.P18077156131510490352

namespace A084120

/-- `sqrt(3^n*A171640(n+1))` -/
def P18077156131510490352.Spec : Prop :=
  ∀ n, P18077156131510490352.a n = (A084120 n : ℝ)

end A084120

/-!
# A084121: Primes p(n) such that n*p(n) is a palindrome.

The programs for A084121, there is no canonical definition to state claims against.
-/

/-! ## A084121.P1476152426847685087

`A084123(n+1)/A084122(n+1)`
-/

namespace A084121.P1476152426847685087
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A084123 (n + 1) : ℚ) / (A084122 (n + 1) : ℚ)

end

end A084121.P1476152426847685087

/-! ## A084121.P9637441217680637902

`p?[A116054(n+1)]`
-/

namespace A084121.P9637441217680637902
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116054 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A084121.P9637441217680637902

/-! ## A084121.P8983956241340227962

`A000040(A084122(n+1))`
-/

namespace A084121.P8983956241340227962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A084122 (n + 1)).toNat

end

end A084121.P8983956241340227962

/-!
# A084122: Numbers k such that k*prime(k) is a palindrome.

The programs for A084122, there is no canonical definition to state claims against.
-/

/-! ## A084122.P6741642533671843767

`A084123(n+1)/A084121(n+1)`
-/

namespace A084122.P6741642533671843767
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A084123 (n + 1) : ℚ) / (A084121 (n + 1) : ℚ)

end

end A084122.P6741642533671843767

/-! ## A084122.P7491071842004251459

`A000720(A084121(n+1))`
-/

namespace A084122.P7491071842004251459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A084121 (n + 1)).toNat

end

end A084122.P7491071842004251459

/-! ## A084122.P16603621255920596751

`A000720(p?[A116054(n+1)])`
-/

namespace A084122.P16603621255920596751
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116054 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A084122.P16603621255920596751

/-!
# A084123: Palindromic numbers which are equal to a number k multiplied by the k-th prime.

The programs for A084123, there is no canonical definition to state claims against.
-/

/-! ## A084123.P898258063817645000

`A084121(n+1)*A084122(n+1)`
-/

namespace A084123.P898258063817645000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084121 (n + 1) * A084122 (n + 1)

end

end A084123.P898258063817645000

/-! ## A084123.P8170303668933975073

`lcm(A084121(n+1), A084122(A077168(n)))`
-/

namespace A084123.P8170303668933975073
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A084121 (n + 1)) (A084122 (A077168 n).toNat)

end

end A084123.P8170303668933975073

/-! ## A084123.P15849996559268689958

`lcm(A084121(A000027(n+1)), A084122(n+1))`
-/

namespace A084123.P15849996559268689958
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A084121 (A000027 (n + 1)).toNat) (A084122 (n + 1))

end

end A084123.P15849996559268689958

/-!
# A084125: Numbers k such that 13*3^k + 2 is prime.

The programs for A084125, there is no canonical definition to state claims against.
-/

/-! ## A084125.P8799554058805510176

`A003204(A102122(n))+∑{p}[n+1, #*val(n+1, #)]`
-/

namespace A084125.P8799554058805510176
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003204 (A102122 n).toNat + ((∑ p ∈ Nat.primeFactors (f1 n), p * SequenceMachineLib.valuation (n + 1) p : ℕ) : ℤ)

end

end A084125.P8799554058805510176

/-! ## A084125.P1454383898912271958

`A177226(A007689(n)-A003958(n+1))`
-/

namespace A084125.P1454383898912271958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177226 (A007689 n - A003958 (n + 1)).toNat

end

end A084125.P1454383898912271958

/-! ## A084125.P11075242926158204504

`A177226(A007689(n)-A173557(n+1))`
-/

namespace A084125.P11075242926158204504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177226 (A007689 n - A173557 (n + 1)).toNat

end

end A084125.P11075242926158204504

/-!
# A084126: Prime factor <= other prime factor of n-th semiprime.

The programs for A084126, the canonical program `A084126.P17807045994218046963` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A084126 has offset 1).

The definition of A084126 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A084126.P9464616912956132714

`A020639(A001358(n+1))`
-/

namespace A084126.P9464616912956132714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A001358 (n + 1)).toNat

end

end A084126.P9464616912956132714

namespace A084126

/-- `A020639(A001358(n+1))` -/
def P9464616912956132714.Spec : Prop :=
  ∀ n, P9464616912956132714.a n = A084126 (n + 1)

end A084126

/-! ## A084126.P12257216271576031548

`A001358(n+1)/A084127(n+1)`
-/

namespace A084126.P12257216271576031548
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001358 (n + 1) : ℚ) / (A084127 (n + 1) : ℚ)

end

end A084126.P12257216271576031548

namespace A084126

/-- `A001358(n+1)/A084127(n+1)` -/
def P12257216271576031548.Spec : Prop :=
  ∀ n, P12257216271576031548.a n = (A084126 (n + 1) : ℚ)

end A084126

/-! ## A084126.P17807045994218046963

`p?[ceil(n/A006530(n+1))]`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A084126

/-- `p?[ceil(n/A006530(n+1))]` -/
def P17807045994218046963.Spec : Prop :=
  ∀ n, P17807045994218046963.a n = A084126 (n + 1)

theorem P17807045994218046963.correct : P17807045994218046963.Spec := by
  intro n
  simp only [A084126, Nat.add_sub_cancel]

end A084126

/-! ## A084126.P5038158233589108026

`A000040(A338912(n+1))`
-/

namespace A084126.P5038158233589108026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A338912 (n + 1)).toNat

end

end A084126.P5038158233589108026

namespace A084126

/-- `A000040(A338912(n+1))` -/
def P5038158233589108026.Spec : Prop :=
  ∀ n, P5038158233589108026.a n = A084126 (n + 1)

end A084126

/-! ## A084126.P17012596012119631011

`A020639(sqrt(A074985(n+1)))`
-/

namespace A084126.P17012596012119631011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (SequenceMachineLib.roundAway (Real.sqrt (A074985 (n + 1) : ℝ))).toNat

end

end A084126.P17012596012119631011

namespace A084126

/-- `A020639(sqrt(A074985(n+1)))` -/
def P17012596012119631011.Spec : Prop :=
  ∀ n, P17012596012119631011.a n = A084126 (n + 1)

end A084126

/-! ## A084126.P676405444927532123

`A020639(A186621(n+1)+1)`
-/

namespace A084126.P676405444927532123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A186621 (n + 1) + 1).toNat

end

end A084126.P676405444927532123

namespace A084126

/-- `A020639(A186621(n+1)+1)` -/
def P676405444927532123.Spec : Prop :=
  ∀ n, P676405444927532123.a n = A084126 (n + 1)

end A084126

/-! ## A084126.P11036734933430968773

`A020639(A088707(n+1)-1)`
-/

namespace A084126.P11036734933430968773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A088707 (n + 1) - 1).toNat

end

end A084126.P11036734933430968773

namespace A084126

/-- `A020639(A088707(n+1)-1)` -/
def P11036734933430968773.Spec : Prop :=
  ∀ n, P11036734933430968773.a n = A084126 (n + 1)

end A084126

/-! ## A084126.P17892983058416724742

`A020639(A075818(n+1)/2)`
-/

namespace A084126.P17892983058416724742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (SequenceMachineLib.roundAway ((A075818 (n + 1) : ℚ) / 2)).toNat

end

end A084126.P17892983058416724742

namespace A084126

/-- `A020639(A075818(n+1)/2)` -/
def P17892983058416724742.Spec : Prop :=
  ∀ n, P17892983058416724742.a n = A084126 (n + 1)

end A084126

/-! ## A084126.P9678230788290345954

`A020639(eq[2, A001222(n+1)]+1)`
-/

namespace A084126.P9678230788290345954
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A084126.P9678230788290345954

namespace A084126

/-- `A020639(eq[2, A001222(n+1)]+1)` -/
def P9678230788290345954.Spec : Prop :=
  ∀ n, P9678230788290345954.a n = A084126 (n + 1)

end A084126

/-! ## A084126.P14820477957530567410

`A068318(n+1)-A084127(n+1)`
-/

namespace A084126.P14820477957530567410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068318 (n + 1) - A084127 (n + 1)

end

end A084126.P14820477957530567410

namespace A084126

/-- `A068318(n+1)-A084127(n+1)` -/
def P14820477957530567410.Spec : Prop :=
  ∀ n, P14820477957530567410.a n = A084126 (n + 1)

end A084126

/-! ## A084126.P5663013929737172131

`A084127(n+1)-A109313(n+1)`
-/

namespace A084126.P5663013929737172131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084127 (n + 1) - A109313 (n + 1)

end

end A084126.P5663013929737172131

namespace A084126

/-- `A084127(n+1)-A109313(n+1)` -/
def P5663013929737172131.Spec : Prop :=
  ∀ n, P5663013929737172131.a n = A084126 (n + 1)

end A084126

/-! ## A084126.P4478461391125661093

`(A088707(n+1)-1)/A084127(n+1)`
-/

namespace A084126.P4478461391125661093
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A088707 (n + 1) - 1 : ℚ) / (A084127 (n + 1) : ℚ)

end

end A084126.P4478461391125661093

namespace A084126

/-- `(A088707(n+1)-1)/A084127(n+1)` -/
def P4478461391125661093.Spec : Prop :=
  ∀ n, P4478461391125661093.a n = (A084126 (n + 1) : ℚ)

end A084126

/-! ## A084126.P7985828721749963796

`(A068318(n+1)-A109313(n+1))/2`
-/

namespace A084126.P7985828721749963796
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A068318 (n + 1) - A109313 (n + 1) : ℚ) / 2

end

end A084126.P7985828721749963796

namespace A084126

/-- `(A068318(n+1)-A109313(n+1))/2` -/
def P7985828721749963796.Spec : Prop :=
  ∀ n, P7985828721749963796.a n = (A084126 (n + 1) : ℚ)

end A084126

/-! ## A084126.P9819157123140350516

`A075818(n+1)/(2*A084127(n+1))`
-/

namespace A084126.P9819157123140350516
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A075818 (n + 1) : ℚ) / (2 * A084127 (n + 1) : ℚ)

end

end A084126.P9819157123140350516

namespace A084126

/-- `A075818(n+1)/(2*A084127(n+1))` -/
def P9819157123140350516.Spec : Prop :=
  ∀ n, P9819157123140350516.a n = (A084126 (n + 1) : ℚ)

end A084126

/-! ## A084126.P3391791021012528843

`p?[(A001222(n+1)-1)*A020639(n+1)]`
-/

namespace A084126.P3391791021012528843
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A001222 (n + 1) - 1) * A020639 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A084126.P3391791021012528843

namespace A084126

/-- `p?[(A001222(n+1)-1)*A020639(n+1)]` -/
def P3391791021012528843.Spec : Prop :=
  ∀ n, P3391791021012528843.a n = A084126 (n + 1)

end A084126

/-! ## A084126.P14729427851575399690

`A020639(eq[n-1-a(A001222(n))², n-2])` with `a(0)=1, a(1)=0`
-/

namespace A084126.P14729427851575399690
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n f1 =>
  (n : ℤ) - 1 - f1 (A001222 n).toNat ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A084126.P14729427851575399690

namespace A084126

/-- `A020639(eq[n-1-a(A001222(n))², n-2])` -/
def P14729427851575399690.Spec : Prop :=
  ∀ n, P14729427851575399690.a n = A084126 (n + 1)

end A084126

/-! ## A084126.P4129669980513278516

`A068318(n+1)-A006530(A001358(n+1))`
-/

namespace A084126.P4129669980513278516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068318 (n + 1) - A006530 (A001358 (n + 1)).toNat

end

end A084126.P4129669980513278516

namespace A084126

/-- `A068318(n+1)-A006530(A001358(n+1))` -/
def P4129669980513278516.Spec : Prop :=
  ∀ n, P4129669980513278516.a n = A084126 (n + 1)

end A084126

/-! ## A084126.P18383270214266408045

`A004526(A068318(n+1)-A109313(n+1))`
-/

namespace A084126.P18383270214266408045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A068318 (n + 1) - A109313 (n + 1)).toNat

end

end A084126.P18383270214266408045

namespace A084126

/-- `A004526(A068318(n+1)-A109313(n+1))` -/
def P18383270214266408045.Spec : Prop :=
  ∀ n, P18383270214266408045.a n = A084126 (n + 1)

end A084126

/-! ## A084126.P468658405267460609

`A001358(n+1)-(A176347(n+1)+A084127(n+1))`
-/

namespace A084126.P468658405267460609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (n + 1) - (A176347 (n + 1) + A084127 (n + 1))

end

end A084126.P468658405267460609

namespace A084126

/-- `A001358(n+1)-(A176347(n+1)+A084127(n+1))` -/
def P468658405267460609.Spec : Prop :=
  ∀ n, P468658405267460609.a n = A084126 (n + 1)

end A084126

/-!
# A084127: Prime factor >= other prime factor of n-th semiprime.

The programs for A084127, the canonical program `A084127.P351147232306075665` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A084127 has offset 1).

The definition of A084127 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001358, A084126, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A084127.P14224378073844594225

`A006530(A001358(n+1))`
-/

namespace A084127.P14224378073844594225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A001358 (n + 1)).toNat

end

end A084127.P14224378073844594225

namespace A084127

/-- `A006530(A001358(n+1))` -/
def P14224378073844594225.Spec : Prop :=
  ∀ n, P14224378073844594225.a n = A084127 (n + 1)

end A084127

/-! ## A084127.P351147232306075665

`A001358(n+1)/A084126(n+1)`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A084127

/-- `A001358(n+1)/A084126(n+1)` -/
def P351147232306075665.Spec : Prop :=
  ∀ n, P351147232306075665.a n = (A084127 (n + 1) : ℚ)

end A084127

/-! ## A084127.P7397233423855939758

`p?[ceil(n/A020639(n+1))]`
-/

namespace A084127.P7397233423855939758
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℚ) / (A020639 (n + 1) : ℚ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A084127.P7397233423855939758

namespace A084127

/-- `p?[ceil(n/A020639(n+1))]` -/
def P7397233423855939758.Spec : Prop :=
  ∀ n, P7397233423855939758.a n = A084127 (n + 1)

end A084127

/-! ## A084127.P9455698863590631314

`A006530(A075818(n+1))`
-/

namespace A084127.P9455698863590631314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A075818 (n + 1)).toNat

end

end A084127.P9455698863590631314

namespace A084127

/-- `A006530(A075818(n+1))` -/
def P9455698863590631314.Spec : Prop :=
  ∀ n, P9455698863590631314.a n = A084127 (n + 1)

end A084127

/-! ## A084127.P11422160604252776891

`A000040(A338913(n+1))`
-/

namespace A084127.P11422160604252776891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A338913 (n + 1)).toNat

end

end A084127.P11422160604252776891

namespace A084127

/-- `A000040(A338913(n+1))` -/
def P11422160604252776891.Spec : Prop :=
  ∀ n, P11422160604252776891.a n = A084127 (n + 1)

end A084127

/-! ## A084127.P15847710140320612569

`A006530(sqrt(A074985(n+1)))`
-/

namespace A084127.P15847710140320612569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (SequenceMachineLib.roundAway (Real.sqrt (A074985 (n + 1) : ℝ))).toNat

end

end A084127.P15847710140320612569

namespace A084127

/-- `A006530(sqrt(A074985(n+1)))` -/
def P15847710140320612569.Spec : Prop :=
  ∀ n, P15847710140320612569.a n = A084127 (n + 1)

end A084127

/-! ## A084127.P403010756946580649

`A006530(A186621(n+1)+1)`
-/

namespace A084127.P403010756946580649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A186621 (n + 1) + 1).toNat

end

end A084127.P403010756946580649

namespace A084127

/-- `A006530(A186621(n+1)+1)` -/
def P403010756946580649.Spec : Prop :=
  ∀ n, P403010756946580649.a n = A084127 (n + 1)

end A084127

/-! ## A084127.P9537243450406505159

`A006530(A088707(n+1)-1)`
-/

namespace A084127.P9537243450406505159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A088707 (n + 1) - 1).toNat

end

end A084127.P9537243450406505159

namespace A084127

/-- `A006530(A088707(n+1)-1)` -/
def P9537243450406505159.Spec : Prop :=
  ∀ n, P9537243450406505159.a n = A084127 (n + 1)

end A084127

/-! ## A084127.P6319276527576033760

`A006530(eq[2, A001222(n+1)]+1)`
-/

namespace A084127.P6319276527576033760
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A084127.P6319276527576033760

namespace A084127

/-- `A006530(eq[2, A001222(n+1)]+1)` -/
def P6319276527576033760.Spec : Prop :=
  ∀ n, P6319276527576033760.a n = A084127 (n + 1)

end A084127

/-! ## A084127.P5815967658695050009

`A109313(n+1)+A084126(n+1)`
-/

namespace A084127.P5815967658695050009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109313 (n + 1) + A084126 (n + 1)

end

end A084127.P5815967658695050009

namespace A084127

/-- `A109313(n+1)+A084126(n+1)` -/
def P5815967658695050009.Spec : Prop :=
  ∀ n, P5815967658695050009.a n = A084127 (n + 1)

end A084127

/-! ## A084127.P14242282723315812854

`A068318(n+1)-A084126(n+1)`
-/

namespace A084127.P14242282723315812854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068318 (n + 1) - A084126 (n + 1)

end

end A084127.P14242282723315812854

namespace A084127

/-- `A068318(n+1)-A084126(n+1)` -/
def P14242282723315812854.Spec : Prop :=
  ∀ n, P14242282723315812854.a n = A084127 (n + 1)

end A084127

/-! ## A084127.P14031596443702754500

`p?[xor(A318505(n+1), A318507(n+1))]`
-/

namespace A084127.P14031596443702754500
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A318505 (n + 1)) (A318507 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A084127.P14031596443702754500

namespace A084127

/-- `p?[xor(A318505(n+1), A318507(n+1))]` -/
def P14031596443702754500.Spec : Prop :=
  ∀ n, P14031596443702754500.a n = A084127 (n + 1)

end A084127

/-! ## A084127.P10523777589932447000

`p?[(A001222(n+1)-1)*A006530(n+1)]`
-/

namespace A084127.P10523777589932447000
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A001222 (n + 1) - 1) * A006530 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A084127.P10523777589932447000

namespace A084127

/-- `p?[(A001222(n+1)-1)*A006530(n+1)]` -/
def P10523777589932447000.Spec : Prop :=
  ∀ n, P10523777589932447000.a n = A084127 (n + 1)

end A084127

/-! ## A084127.P16147774235048026870

`A006530(eq[n-1-a(A001222(n))², n-2])` with `a(0)=1, a(1)=0`
-/

namespace A084127.P16147774235048026870
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n f1 =>
  (n : ℤ) - 1 - f1 (A001222 n).toNat ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A084127.P16147774235048026870

namespace A084127

/-- `A006530(eq[n-1-a(A001222(n))², n-2])` -/
def P16147774235048026870.Spec : Prop :=
  ∀ n, P16147774235048026870.a n = A084127 (n + 1)

end A084127

/-! ## A084127.P17965513431278318447

`A006530(A133795(n+1)-A100959(n+1))`
-/

namespace A084127.P17965513431278318447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A133795 (n + 1) - A100959 (n + 1)).toNat

end

end A084127.P17965513431278318447

namespace A084127

/-- `A006530(A133795(n+1)-A100959(n+1))` -/
def P17965513431278318447.Spec : Prop :=
  ∀ n, P17965513431278318447.a n = A084127 (n + 1)

end A084127

/-! ## A084127.P2991335976887611764

`A001358(n+1)/A000040(A338912(n+1))`
-/

namespace A084127.P2991335976887611764
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001358 (n + 1) : ℚ) / (A000040 (A338912 (n + 1)).toNat : ℚ)

end

end A084127.P2991335976887611764

namespace A084127

/-- `A001358(n+1)/A000040(A338912(n+1))` -/
def P2991335976887611764.Spec : Prop :=
  ∀ n, P2991335976887611764.a n = (A084127 (n + 1) : ℚ)

end A084127

/-! ## A084127.P5509538991004564010

`A001358(n+1)-(A176347(n+1)+A084126(n+1))`
-/

namespace A084127.P5509538991004564010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (n + 1) - (A176347 (n + 1) + A084126 (n + 1))

end

end A084127.P5509538991004564010

namespace A084127

/-- `A001358(n+1)-(A176347(n+1)+A084126(n+1))` -/
def P5509538991004564010.Spec : Prop :=
  ∀ n, P5509538991004564010.a n = A084127 (n + 1)

end A084127

/-! ## A084127.P12863116881289911329

`(A176347(n+1)+A068318(n+1))/A084126(n+1)`
-/

namespace A084127.P12863116881289911329
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A176347 (n + 1) + A068318 (n + 1) : ℚ) / (A084126 (n + 1) : ℚ)

end

end A084127.P12863116881289911329

namespace A084127

/-- `(A176347(n+1)+A068318(n+1))/A084126(n+1)` -/
def P12863116881289911329.Spec : Prop :=
  ∀ n, P12863116881289911329.a n = (A084127 (n + 1) : ℚ)

end A084127

/-! ## A084127.P8047374817308817926

`A006530(A176540(n+2))`
-/

namespace A084127.P8047374817308817926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A176540 (n + 2)).toNat

end

end A084127.P8047374817308817926

namespace A084127

/-- `A006530(A176540(n+2))` -/
def P8047374817308817926.Spec : Prop :=
  ∀ n, P8047374817308817926.a n = A084127 (n + 1)

end A084127

/-!
# A084128: a(n) = 4*a(n-1) + 4*a(n-2), a(0)=1, a(1)=2.

The programs for A084128, the canonical program `A084128.P10414437184963256128` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A084128 has offset 0).

The definition of A084128 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `4*a(n-1)+4*a(n-2)` (program `A084128.P10414437184963256128`, by `A084128.P10414437184963256128.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A084128.P10414437184963256128

`4*a(n-1)+4*a(n-2)` with `a(0)=1, a(1)=2`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A084128

/-- `4*a(n-1)+4*a(n-2)` -/
def P10414437184963256128.Spec : Prop :=
  ∀ n, (P10414437184963256128.a n : ℤ) = A084128 n

theorem P10414437184963256128.correct : P10414437184963256128.Spec := by
  intro n
  simp only [A084128]

end A084128

/-! ## A084128.P11104985146048832516

`2^n*A001333(n)`
-/

namespace A084128.P11104985146048832516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A001333 n

end

end A084128.P11104985146048832516

namespace A084128

/-- `2^n*A001333(n)` -/
def P11104985146048832516.Spec : Prop :=
  ∀ n, P11104985146048832516.a n = A084128 n

end A084128

/-! ## A084128.P7299907998987733997

`2^(n-1)*A002203(n)`
-/

namespace A084128.P7299907998987733997
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) * (A002203 n : ℚ)

end

end A084128.P7299907998987733997

namespace A084128

/-- `2^(n-1)*A002203(n)` -/
def P7299907998987733997.Spec : Prop :=
  ∀ n, P7299907998987733997.a n = (A084128 n : ℚ)

end A084128

/-! ## A084128.P18292089522329461498

`ogf((-1+2x)/(-1+4x+4x^2))`
-/

namespace A084128.P18292089522329461498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -2] [1, -4, -4] n

end

end A084128.P18292089522329461498

namespace A084128

/-- `ogf((-1+2x)/(-1+4x+4x^2))` -/
def P18292089522329461498.Spec : Prop :=
  ∀ n, P18292089522329461498.a n = A084128 n

end A084128

/-! ## A084128.P3459379134369862498

`4*(a(n-1)+a(n-2))` with `a(0)=1, a(1)=2`
-/

namespace A084128.P3459379134369862498
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n a =>
  4 * (a (n - 1) + a (n - 2))

end

end A084128.P3459379134369862498

namespace A084128

/-- `4*(a(n-1)+a(n-2))` -/
def P3459379134369862498.Spec : Prop :=
  ∀ n, (P3459379134369862498.a n : ℤ) = A084128 n

theorem P3459379134369862498.correct : P3459379134369862498.Spec := by
  intro n
  simp only [A084128, Nat.add_sub_cancel, A084128.P3459379134369862498.a, A084128.P10414437184963256128.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A084128

/-! ## A084128.P14126315108158873744

`2^(n-1)*lcm(2, round((sqrt(2)+1)^n))`
-/

namespace A084128.P14126315108158873744
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) * (Int.lcm 2 (SequenceMachineLib.roundAway ((Real.sqrt (2 : ℝ) + 1) ^ n)) : ℚ)

end

end A084128.P14126315108158873744

namespace A084128

/-- `2^(n-1)*lcm(2, round((sqrt(2)+1)^n))` -/
def P14126315108158873744.Spec : Prop :=
  ∀ n, P14126315108158873744.a n = (A084128 n : ℚ)

end A084128

/-! ## A084128.P6978461557970362133

`lcm(a(n-1)+a(n-2), 2^n)` with `a(0)=1, a(1)=2`
-/

namespace A084128.P6978461557970362133
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n a =>
  Nat.lcm (a (n - 1) + a (n - 2)) (2 ^ n)

end

end A084128.P6978461557970362133

namespace A084128

/-- `lcm(a(n-1)+a(n-2), 2^n)` -/
def P6978461557970362133.Spec : Prop :=
  ∀ n, (P6978461557970362133.a n : ℤ) = A084128 n

end A084128

/-! ## A084128.P18109027314038597589

`4*(a(n-1)-floor(-a(n-2)))` with `a(0)=1, a(1)=2`

`floor` is left out, it is the identity on integers.
-/

namespace A084128.P18109027314038597589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  4 * (a (n - 1) - (-a (n - 2)))

end

end A084128.P18109027314038597589

namespace A084128

/-- `4*(a(n-1)-floor(-a(n-2)))` -/
def P18109027314038597589.Spec : Prop :=
  ∀ n, P18109027314038597589.a n = A084128 n

end A084128

/-! ## A084128.P2094489193742447518

`4*(a(n-1)-round(-a(n-2)))` with `a(0)=1, a(1)=2`

`round` is left out, it is the identity on integers.
-/

namespace A084128.P2094489193742447518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  4 * (a (n - 1) - (-a (n - 2)))

end

end A084128.P2094489193742447518

namespace A084128

/-- `4*(a(n-1)-round(-a(n-2)))` -/
def P2094489193742447518.Spec : Prop :=
  ∀ n, P2094489193742447518.a n = A084128 n

end A084128

/-! ## A084128.P7891617311457941142

`(a(n-1)+a(n-2))/(1/2)²` with `a(0)=1, a(1)=2`
-/

namespace A084128.P7891617311457941142
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 2] fun n a =>
  (a (n - 1) + a (n - 2)) / ((1 : ℚ) / 2) ^ 2

end

end A084128.P7891617311457941142

namespace A084128

/-- `(a(n-1)+a(n-2))/(1/2)²` -/
def P7891617311457941142.Spec : Prop :=
  ∀ n, P7891617311457941142.a n = (A084128 n : ℚ)

end A084128

/-! ## A084128.P7899641299391261925

`4*(a(n-1)-(char[1]-a(n-2)))` with `a(0)=1, a(1)=2`
-/

namespace A084128.P7899641299391261925
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  4 * (a (n - 1) - (((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) - a (n - 2)))

end

end A084128.P7899641299391261925

namespace A084128

/-- `4*(a(n-1)-(char[1]-a(n-2)))` -/
def P7899641299391261925.Spec : Prop :=
  ∀ n, P7899641299391261925.a n = A084128 n

end A084128

/-! ## A084128.P2334071997476339188

`4-4*(1-a(n-1)-a(n-2))` with `a(0)=1, a(1)=2`
-/

namespace A084128.P2334071997476339188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  4 - 4 * (1 - a (n - 1) - a (n - 2))

end

end A084128.P2334071997476339188

namespace A084128

/-- `4-4*(1-a(n-1)-a(n-2))` -/
def P2334071997476339188.Spec : Prop :=
  ∀ n, P2334071997476339188.a n = A084128 n

end A084128

/-! ## A084128.P12916097600476710178

`A170931(n)/2`
-/

namespace A084128.P12916097600476710178
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A170931 n : ℚ) / 2

end

end A084128.P12916097600476710178

namespace A084128

/-- `A170931(n)/2` -/
def P12916097600476710178.Spec : Prop :=
  ∀ n, P12916097600476710178.a n = (A084128 n : ℚ)

end A084128

/-! ## A084128.P7297459823197792723

`abs(2^n*A123335(n))`
-/

namespace A084128.P7297459823197792723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(2 ^ n : ℤ) * A123335 n|

end

end A084128.P7297459823197792723

namespace A084128

/-- `abs(2^n*A123335(n))` -/
def P7297459823197792723.Spec : Prop :=
  ∀ n, P7297459823197792723.a n = A084128 n

end A084128

/-! ## A084128.P14765231816352421447

`2^n*Δ[A000129(n)]`
-/

namespace A084128.P14765231816352421447
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000129 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * (f1 (n + 1) - f1 n)

end

end A084128.P14765231816352421447

namespace A084128

/-- `2^n*Δ[A000129(n)]` -/
def P14765231816352421447.Spec : Prop :=
  ∀ n, P14765231816352421447.a n = A084128 n

end A084128

/-! ## A084128.P13965972935649647230

`A164607(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A084128.P13965972935649647230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A164607 (n - 1) + a (n - 1)

end

end A084128.P13965972935649647230

namespace A084128

/-- `A164607(n-1)+a(n-1)` -/
def P13965972935649647230.Spec : Prop :=
  ∀ n, P13965972935649647230.a n = A084128 n

end A084128

/-! ## A084128.P4391642020668456357

`A011782(n)*A099425(n)`
-/

namespace A084128.P4391642020668456357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n * A099425 n

end

end A084128.P4391642020668456357

namespace A084128

/-- `A011782(n)*A099425(n)` -/
def P4391642020668456357.Spec : Prop :=
  ∀ n, P4391642020668456357.a n = A084128 n

end A084128

/-! ## A084128.P11152162112601503519

`A122803(n)*A123335(n)`
-/

namespace A084128.P11152162112601503519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122803 n * A123335 n

end

end A084128.P11152162112601503519

namespace A084128

/-- `A122803(n)*A123335(n)` -/
def P11152162112601503519.Spec : Prop :=
  ∀ n, P11152162112601503519.a n = A084128 n

end A084128

/-! ## A084128.P4600468266461314114

`lcm(A000079(n), A001333(n))`
-/

namespace A084128.P4600468266461314114
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000079 n) (A001333 n)

end

end A084128.P4600468266461314114

namespace A084128

/-- `lcm(A000079(n), A001333(n))` -/
def P4600468266461314114.Spec : Prop :=
  ∀ n, (P4600468266461314114.a n : ℤ) = A084128 n

end A084128

/-! ## A084128.P9746324281435717908

`lcm(A099425(n), A120617(n))`
-/

namespace A084128.P9746324281435717908
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A099425 n) (A120617 n)

end

end A084128.P9746324281435717908

namespace A084128

/-- `lcm(A099425(n), A120617(n))` -/
def P9746324281435717908.Spec : Prop :=
  ∀ n, (P9746324281435717908.a n : ℤ) = A084128 n

end A084128

/-!
# A084130: a(n) = 8*a(n-1) - 8*a(n-2), a(0)=1, a(1)=4.

The programs for A084130, the canonical program `A084130.P13173880069750155176` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A084130 has offset 0).

The definition of A084130 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `8*a(n-1)-8*a(n-2)` (program `A084130.P13173880069750155176`, by `A084130.P13173880069750155176.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A084130.P13173880069750155176

`8*a(n-1)-8*a(n-2)` with `a(0)=1, a(1)=4`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A084130

/-- `8*a(n-1)-8*a(n-2)` -/
def P13173880069750155176.Spec : Prop :=
  ∀ n, P13173880069750155176.a n = A084130 n

theorem P13173880069750155176.correct : P13173880069750155176.Spec := by
  intro n
  simp only [A084130]

end A084130

/-! ## A084130.P16836025347737915595

`ogf((1-4x)/(1-8x+8x^2))`
-/

namespace A084130.P16836025347737915595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -4] [1, -8, 8] n

end

end A084130.P16836025347737915595

namespace A084130

/-- `ogf((1-4x)/(1-8x+8x^2))` -/
def P16836025347737915595.Spec : Prop :=
  ∀ n, P16836025347737915595.a n = A084130 n

end A084130

/-! ## A084130.P2163443499924154023

`8*(a(n-1)-a(n-2))` with `a(0)=1, a(1)=4`
-/

namespace A084130.P2163443499924154023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4] fun n a =>
  8 * (a (n - 1) - a (n - 2))

end

end A084130.P2163443499924154023

namespace A084130

/-- `8*(a(n-1)-a(n-2))` -/
def P2163443499924154023.Spec : Prop :=
  ∀ n, P2163443499924154023.a n = A084130 n

theorem P2163443499924154023.correct : P2163443499924154023.Spec := by
  intro n
  simp only [A084130, Nat.add_sub_cancel, A084130.P2163443499924154023.a, A084130.P13173880069750155176.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A084130

/-! ## A084130.P13096585462781601554

`2^n*A006012(n)`
-/

namespace A084130.P13096585462781601554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A006012 n

end

end A084130.P13096585462781601554

namespace A084130

/-- `2^n*A006012(n)` -/
def P13096585462781601554.Spec : Prop :=
  ∀ n, P13096585462781601554.a n = A084130 n

end A084130

/-! ## A084130.P14109120089084657649

`2^(n-1)*A056236(n)`
-/

namespace A084130.P14109120089084657649
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) * (A056236 n : ℚ)

end

end A084130.P14109120089084657649

namespace A084130

/-- `2^(n-1)*A056236(n)` -/
def P14109120089084657649.Spec : Prop :=
  ∀ n, P14109120089084657649.a n = (A084130 n : ℚ)

end A084130

/-! ## A084130.P8873298678163625723

`2^(n-2)*A265185(n)`
-/

namespace A084130.P8873298678163625723
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((n : ℤ) - 2 : ℤ) * (A265185 n : ℚ)

end

end A084130.P8873298678163625723

namespace A084130

/-- `2^(n-2)*A265185(n)` -/
def P8873298678163625723.Spec : Prop :=
  ∀ n, P8873298678163625723.a n = (A084130 n : ℚ)

end A084130

/-! ## A084130.P9027393589363900453

`2^n*A030436(2*n)`
-/

namespace A084130.P9027393589363900453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A030436 (2 * n)

end

end A084130.P9027393589363900453

namespace A084130

/-- `2^n*A030436(2*n)` -/
def P9027393589363900453.Spec : Prop :=
  ∀ n, P9027393589363900453.a n = A084130 n

end A084130

/-! ## A084130.P15986070380164553655

`A114479(n)+a(n-1)` with `a(0)=1`
-/

namespace A084130.P15986070380164553655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A114479 n + a (n - 1)

end

end A084130.P15986070380164553655

namespace A084130

/-- `A114479(n)+a(n-1)` -/
def P15986070380164553655.Spec : Prop :=
  ∀ n, P15986070380164553655.a n = A084130 n

end A084130

/-! ## A084130.P9891620248979818438

`2^n*A062112(2*n+1)`
-/

namespace A084130.P9891620248979818438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A062112 (2 * n + 1)

end

end A084130.P9891620248979818438

namespace A084130

/-- `2^n*A062112(2*n+1)` -/
def P9891620248979818438.Spec : Prop :=
  ∀ n, P9891620248979818438.a n = A084130 n

end A084130

/-! ## A084130.P5029926071290344208

`A079496(n)*A094015(n)`
-/

namespace A084130.P5029926071290344208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079496 n * A094015 n

end

end A084130.P5029926071290344208

namespace A084130

/-- `A079496(n)*A094015(n)` -/
def P5029926071290344208.Spec : Prop :=
  ∀ n, P5029926071290344208.a n = A084130 n

end A084130

/-! ## A084130.P2981036774551405153

`lcm(A006012(n), A094015(n))`
-/

namespace A084130.P2981036774551405153
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A006012 n) (A094015 n)

end

end A084130.P2981036774551405153

namespace A084130

/-- `lcm(A006012(n), A094015(n))` -/
def P2981036774551405153.Spec : Prop :=
  ∀ n, (P2981036774551405153.a n : ℤ) = A084130 n

end A084130

/-! ## A084130.P7999126383983352125

`A006012(n)*A117317(∑[n])`
-/

namespace A084130.P7999126383983352125
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006012 n * A117317 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A084130.P7999126383983352125

namespace A084130

/-- `A006012(n)*A117317(∑[n])` -/
def P7999126383983352125.Spec : Prop :=
  ∀ n, P7999126383983352125.a n = A084130 n

end A084130

/-! ## A084130.P17364009361984911202

`A006012(n)*A011782(n+1)`
-/

namespace A084130.P17364009361984911202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006012 n * A011782 (n + 1)

end

end A084130.P17364009361984911202

namespace A084130

/-- `A006012(n)*A011782(n+1)` -/
def P17364009361984911202.Spec : Prop :=
  ∀ n, P17364009361984911202.a n = A084130 n

end A084130

/-! ## A084130.P3511926929952326511

`A006012(n)*A131577(n+1)`
-/

namespace A084130.P3511926929952326511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006012 n * A131577 (n + 1)

end

end A084130.P3511926929952326511

namespace A084130

/-- `A006012(n)*A131577(n+1)` -/
def P3511926929952326511.Spec : Prop :=
  ∀ n, P3511926929952326511.a n = A084130 n

end A084130

/-! ## A084130.P12346189233276430890

`A006012(n)*A034008(n+2)`
-/

namespace A084130.P12346189233276430890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006012 n * A034008 (n + 2)

end

end A084130.P12346189233276430890

namespace A084130

/-- `A006012(n)*A034008(n+2)` -/
def P12346189233276430890.Spec : Prop :=
  ∀ n, P12346189233276430890.a n = A084130 n

end A084130

/-! ## A084130.P15857273957871768278

`A006012(n)*A016116(2*n)`
-/

namespace A084130.P15857273957871768278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006012 n * A016116 (2 * n)

end

end A084130.P15857273957871768278

namespace A084130

/-- `A006012(n)*A016116(2*n)` -/
def P15857273957871768278.Spec : Prop :=
  ∀ n, P15857273957871768278.a n = A084130 n

end A084130

/-! ## A084130.P15230501208615733879

`A006012(n)*A077957(2*n)`
-/

namespace A084130.P15230501208615733879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006012 n * A077957 (2 * n)

end

end A084130.P15230501208615733879

namespace A084130

/-- `A006012(n)*A077957(2*n)` -/
def P15230501208615733879.Spec : Prop :=
  ∀ n, P15230501208615733879.a n = A084130 n

end A084130

/-! ## A084130.P5745755764454147097

`A006012(n)*A152166(2*n)`
-/

namespace A084130.P5745755764454147097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006012 n * A152166 (2 * n)

end

end A084130.P5745755764454147097

namespace A084130

/-- `A006012(n)*A152166(2*n)` -/
def P5745755764454147097.Spec : Prop :=
  ∀ n, P5745755764454147097.a n = A084130 n

end A084130

/-! ## A084130.P8092088874571186262

`∑[∑[A003480(n)]*A011782(n)]`
-/

namespace A084130.P8092088874571186262
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003480 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) * A011782 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A084130.P8092088874571186262

namespace A084130

/-- `∑[∑[A003480(n)]*A011782(n)]` -/
def P8092088874571186262.Spec : Prop :=
  ∀ n, P8092088874571186262.a n = A084130 n

end A084130

/-! ## A084130.P10867429874380529768

`∑[Δ[A131577(n)]*A007052(n)]`
-/

namespace A084130.P10867429874380529768
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131577 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n) * A007052 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A084130.P10867429874380529768

namespace A084130

/-- `∑[Δ[A131577(n)]*A007052(n)]` -/
def P10867429874380529768.Spec : Prop :=
  ∀ n, P10867429874380529768.a n = A084130 n

end A084130

/-!
# A084131: a(n) = 10*a(n-1) - 17*a(n-2), a(0) = 1, a(1) = 5.

The programs for A084131, the canonical program `A084131.P3267576476743274197` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A084131 has offset 0).

The definition of A084131 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `10*a(n-1)-17*a(n-2)` (program `A084131.P3267576476743274197`, by `A084131.P3267576476743274197.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A084131.P3267576476743274197

`10*a(n-1)-17*a(n-2)` with `a(0)=1, a(1)=5`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A084131

/-- `10*a(n-1)-17*a(n-2)` -/
def P3267576476743274197.Spec : Prop :=
  ∀ n, P3267576476743274197.a n = A084131 n

theorem P3267576476743274197.correct : P3267576476743274197.Spec := by
  intro n
  simp only [A084131]

end A084131

/-! ## A084131.P4325206751231915109

`(5+sqrt(8))^n/2+(5-sqrt(8))^n/2`
-/

namespace A084131.P4325206751231915109
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (5 + Real.sqrt (8 : ℝ)) ^ n / 2 + (5 - Real.sqrt (8 : ℝ)) ^ n / 2

end

end A084131.P4325206751231915109

namespace A084131

/-- `(5+sqrt(8))^n/2+(5-sqrt(8))^n/2` -/
def P4325206751231915109.Spec : Prop :=
  ∀ n, P4325206751231915109.a n = (A084131 n : ℝ)

end A084131

/-! ## A084131.P9965034130487219275

`ogf((1-5x)/(1-10x+17x^2))`
-/

namespace A084131.P9965034130487219275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -5] [1, -10, 17] n

end

end A084131.P9965034130487219275

namespace A084131

/-- `ogf((1-5x)/(1-10x+17x^2))` -/
def P9965034130487219275.Spec : Prop :=
  ∀ n, P9965034130487219275.a n = A084131 n

end A084131

/-!
# A084132: a(n) = 4*a(n-1) + 6*a(n-2), a(0)=1, a(1)=2.

The programs for A084132, the canonical program `A084132.P11586826591309386022` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A084132 has offset 0).

The definition of A084132 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `4*a(n-1)+6*a(n-2)` (program `A084132.P11586826591309386022`, by `A084132.P11586826591309386022.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A084132.P11586826591309386022

`4*a(n-1)+6*a(n-2)` with `a(0)=1, a(1)=2`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A084132

/-- `4*a(n-1)+6*a(n-2)` -/
def P11586826591309386022.Spec : Prop :=
  ∀ n, (P11586826591309386022.a n : ℤ) = A084132 n

theorem P11586826591309386022.correct : P11586826591309386022.Spec := by
  intro n
  simp only [A084132]

end A084132

/-! ## A084132.P5901422666789186748

`ogf((-1+2x)/(-1+4x+6x^2))`
-/

namespace A084132.P5901422666789186748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -2] [1, -4, -6] n

end

end A084132.P5901422666789186748

namespace A084132

/-- `ogf((-1+2x)/(-1+4x+6x^2))` -/
def P5901422666789186748.Spec : Prop :=
  ∀ n, P5901422666789186748.a n = A084132 n

end A084132

/-! ## A084132.P16243157778351689185

`A147518(n)-A085939(n)`
-/

namespace A084132.P16243157778351689185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147518 n - A085939 n

end

end A084132.P16243157778351689185

namespace A084132

/-- `A147518(n)-A085939(n)` -/
def P16243157778351689185.Spec : Prop :=
  ∀ n, P16243157778351689185.a n = A084132 n

end A084132

/-! ## A084132.P1359425321735008503

`A085939(n+1)-2*A085939(n)`
-/

namespace A084132.P1359425321735008503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085939 (n + 1) - 2 * A085939 n

end

end A084132.P1359425321735008503

namespace A084132

/-- `A085939(n+1)-2*A085939(n)` -/
def P1359425321735008503.Spec : Prop :=
  ∀ n, P1359425321735008503.a n = A084132 n

end A084132

/-! ## A084132.P5484459255117723076

`A138041(A028310(n))+A085939(n)`
-/

namespace A084132.P5484459255117723076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138041 (A028310 n).toNat + A085939 n

end

end A084132.P5484459255117723076

namespace A084132

/-- `A138041(A028310(n))+A085939(n)` -/
def P5484459255117723076.Spec : Prop :=
  ∀ n, P5484459255117723076.a n = A084132 n

end A084132

/-! ## A084132.P14460893126382379595

`(A085939(n+1)-A085939(n))%A274032(n)-A085939(n)`
-/

namespace A084132.P14460893126382379595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A085939 (n + 1) - A085939 n) (A274032 n) - A085939 n

end

end A084132.P14460893126382379595

namespace A084132

/-- `(A085939(n+1)-A085939(n))%A274032(n)-A085939(n)` -/
def P14460893126382379595.Spec : Prop :=
  ∀ n, P14460893126382379595.a n = A084132 n

end A084132

/-!
# A084134: a(n) = 8*a(n-1) - 6*a(n-2), a(0) = 1, a(1) = 4.

The programs for A084134, the canonical program `A084134.P868032317925365077` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A084134 has offset 0).

The definition of A084134 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `8*a(n-1)-6*a(n-2)` (program `A084134.P868032317925365077`, by `A084134.P868032317925365077.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A084134.P868032317925365077

`8*a(n-1)-6*a(n-2)` with `a(0)=1, a(1)=4`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A084134

/-- `8*a(n-1)-6*a(n-2)` -/
def P868032317925365077.Spec : Prop :=
  ∀ n, P868032317925365077.a n = A084134 n

theorem P868032317925365077.correct : P868032317925365077.Spec := by
  intro n
  simp only [A084134]

end A084134

/-! ## A084134.P335133180652453556

`ogf((1-4x)/(1-8x+6x^2))`
-/

namespace A084134.P335133180652453556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -4] [1, -8, 6] n

end

end A084134.P335133180652453556

namespace A084134

/-- `ogf((1-4x)/(1-8x+6x^2))` -/
def P335133180652453556.Spec : Prop :=
  ∀ n, P335133180652453556.a n = A084134 n

end A084134

/-! ## A084134.P7998303895507147940

`A147838(n)-2*A190978(n)`
-/

namespace A084134.P7998303895507147940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147838 n - 2 * A190978 n

end

end A084134.P7998303895507147940

namespace A084134

/-- `A147838(n)-2*A190978(n)` -/
def P7998303895507147940.Spec : Prop :=
  ∀ n, P7998303895507147940.a n = A084134 n

end A084134

/-! ## A084134.P16843005068917690699

`1/2*(4-sqrt(10))^n+1/2*(4+sqrt(10))^n`
-/

namespace A084134.P16843005068917690699
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((1 : ℚ) / 2 : ℝ) * (4 - Real.sqrt (10 : ℝ)) ^ n + ((1 : ℚ) / 2 : ℝ) * (4 + Real.sqrt (10 : ℝ)) ^ n

end

end A084134.P16843005068917690699

namespace A084134

/-- `1/2*(4-sqrt(10))^n+1/2*(4+sqrt(10))^n` -/
def P16843005068917690699.Spec : Prop :=
  ∀ n, P16843005068917690699.a n = (A084134 n : ℝ)

end A084134

/-! ## A084134.P12725237335970780976

`abs(Δ[A152620(n)/3])`
-/

namespace A084134.P12725237335970780976
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A152620 n : ℚ) / 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A084134.P12725237335970780976

namespace A084134

/-- `abs(Δ[A152620(n)/3])` -/
def P12725237335970780976.Spec : Prop :=
  ∀ n, P12725237335970780976.a n = (A084134 n : ℚ)

end A084134

/-! ## A084134.P3259428050187418048

`lcm(A242179(n)², Δ[A152620(n)/3])`
-/

namespace A084134.P3259428050187418048
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A152620 n : ℚ) / 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A242179 n ^ 2) (SequenceMachineLib.roundAway (f1 (n + 1) - f1 n))

end

end A084134.P3259428050187418048

namespace A084134

/-- `lcm(A242179(n)², Δ[A152620(n)/3])` -/
def P3259428050187418048.Spec : Prop :=
  ∀ n, (P3259428050187418048.a n : ℤ) = A084134 n

end A084134

/-! ## A084134.P13488250598487807275

`Δ[A152620(n)/3]*A062157(n+2)`
-/

namespace A084134.P13488250598487807275
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A152620 n : ℚ) / 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * (A062157 (n + 2) : ℚ)

end

end A084134.P13488250598487807275

namespace A084134

/-- `Δ[A152620(n)/3]*A062157(n+2)` -/
def P13488250598487807275.Spec : Prop :=
  ∀ n, P13488250598487807275.a n = (A084134 n : ℚ)

end A084134

/-!
# A084135: a(n) = 10*a(n-1) - 15*a(n-2), a(0)=1, a(1)=5.

The programs for A084135, the canonical program `A084135.P1595963892789047137` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A084135 has offset 0).

The definition of A084135 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `10*a(n-1)-15*a(n-2)` (program `A084135.P1595963892789047137`, by `A084135.P1595963892789047137.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A084135.P1595963892789047137

`10*a(n-1)-15*a(n-2)` with `a(0)=1, a(1)=5`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A084135

/-- `10*a(n-1)-15*a(n-2)` -/
def P1595963892789047137.Spec : Prop :=
  ∀ n, P1595963892789047137.a n = A084135 n

theorem P1595963892789047137.correct : P1595963892789047137.Spec := by
  intro n
  simp only [A084135]

end A084135

/-! ## A084135.P15453712334944186156

`ogf((1-5x)/(1-10x+15x^2))`
-/

namespace A084135.P15453712334944186156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -5] [1, -10, 15] n

end

end A084135.P15453712334944186156

namespace A084135

/-- `ogf((1-5x)/(1-10x+15x^2))` -/
def P15453712334944186156.Spec : Prop :=
  ∀ n, P15453712334944186156.a n = A084135 n

end A084135

/-!
# A084136: Binomial transform of cosh(sqrt(2)*x)^2.

The programs for A084136, the canonical program `A084136.P15723460493383535174` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A084136 has offset 0).

The definition of A084136 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A084136.P15723460493383535174

`(1+A084058(n))/2`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A084136

/-- `(1+A084058(n))/2` -/
def P15723460493383535174.Spec : Prop :=
  ∀ n, P15723460493383535174.a n = (A084136 n : ℚ)

end A084136

/-! ## A084136.P13555712873745552294

`∑[ogf((-1+2x+3x^2)/(-1+2x+7x^2))]`
-/

namespace A084136.P13555712873745552294
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -2, -3] [1, -2, -7] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A084136.P13555712873745552294

namespace A084136

/-- `∑[ogf((-1+2x+3x^2)/(-1+2x+7x^2))]` -/
def P13555712873745552294.Spec : Prop :=
  ∀ n, P13555712873745552294.a n = A084136 n

end A084136

/-! ## A084136.P14464040088513771442

`ogf((-1+2x+3x^2)/(-1+3x+5x^2-7x^3))`
-/

namespace A084136.P14464040088513771442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -2, -3] [1, -3, -5, 7] n

end

end A084136.P14464040088513771442

namespace A084136

/-- `ogf((-1+2x+3x^2)/(-1+3x+5x^2-7x^3))` -/
def P14464040088513771442.Spec : Prop :=
  ∀ n, P14464040088513771442.a n = A084136 n

end A084136

/-! ## A084136.P653783653346335868

`2*a(n-1)+7*a(n-2)-4` with `a(0)=1, a(1)=1`
-/

namespace A084136.P653783653346335868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  2 * a (n - 1) + 7 * a (n - 2) - 4

end

end A084136.P653783653346335868

namespace A084136

/-- `2*a(n-1)+7*a(n-2)-4` -/
def P653783653346335868.Spec : Prop :=
  ∀ n, P653783653346335868.a n = A084136 n

end A084136

/-! ## A084136.P334417333225083974

`a(n-2)-2*(2-3*a(n-2)-a(n-1))` with `a(0)=1, a(1)=1`
-/

namespace A084136.P334417333225083974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 2) - 2 * (2 - 3 * a (n - 2) - a (n - 1))

end

end A084136.P334417333225083974

namespace A084136

/-- `a(n-2)-2*(2-3*a(n-2)-a(n-1))` -/
def P334417333225083974.Spec : Prop :=
  ∀ n, P334417333225083974.a n = A084136 n

end A084136

/-! ## A084136.P6855430842741412352

`ceil(A084058(n)/2)`
-/

namespace A084136.P6855430842741412352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A084058 n : ℚ) / 2⌉

end

end A084136.P6855430842741412352

namespace A084136

/-- `ceil(A084058(n)/2)` -/
def P6855430842741412352.Spec : Prop :=
  ∀ n, P6855430842741412352.a n = A084136 n

end A084136

/-! ## A084136.P2334789646197823032

`4*A084150(n)+1`
-/

namespace A084136.P2334789646197823032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A084150 n + 1

end

end A084136.P2334789646197823032

namespace A084136

/-- `4*A084150(n)+1` -/
def P2334789646197823032.Spec : Prop :=
  ∀ n, P2334789646197823032.a n = A084136 n

end A084136

/-! ## A084136.P8181168782093213731

`4*∑[A015519(log2(A011782(n)))]+1`
-/

namespace A084136.P8181168782093213731
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015519 (SequenceMachineLib.roundAway (Real.logb 2 (A011782 n : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (∑ j ∈ Finset.range (n + 1), f1 j) + 1

end

end A084136.P8181168782093213731

namespace A084136

/-- `4*∑[A015519(log2(A011782(n)))]+1` -/
def P8181168782093213731.Spec : Prop :=
  ∀ n, P8181168782093213731.a n = A084136 n

end A084136

/-! ## A084136.P1956800126541050965

`((1+sqrt(8))^n+(1-sqrt(8))^n+2)/4`
-/

namespace A084136.P1956800126541050965
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((1 + Real.sqrt (8 : ℝ)) ^ n + (1 - Real.sqrt (8 : ℝ)) ^ n + 2) / 4

end

end A084136.P1956800126541050965

namespace A084136

/-- `((1+sqrt(8))^n+(1-sqrt(8))^n+2)/4` -/
def P1956800126541050965.Spec : Prop :=
  ∀ n, P1956800126541050965.a n = (A084136 n : ℝ)

end A084136

/-! ## A084136.P1999999602045362419

`ceil(Δ[A015519(n)/2])`
-/

namespace A084136.P1999999602045362419
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A015519 n : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈f1 (n + 1) - f1 n⌉

end

end A084136.P1999999602045362419

namespace A084136

/-- `ceil(Δ[A015519(n)/2])` -/
def P1999999602045362419.Spec : Prop :=
  ∀ n, P1999999602045362419.a n = A084136 n

end A084136

/-!
# A084137: Binomial transform of A084136.

The programs for A084137, the canonical program `A084137.P5848545648375498633` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A084137 has offset 0).

The definition of A084137 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A084137.P15762009626539661229

`2^(n-2)*(2+A002203(n))`
-/

namespace A084137.P15762009626539661229
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((n : ℤ) - 2 : ℤ) * (2 + A002203 n : ℚ)

end

end A084137.P15762009626539661229

namespace A084137

/-- `2^(n-2)*(2+A002203(n))` -/
def P15762009626539661229.Spec : Prop :=
  ∀ n, P15762009626539661229.a n = (A084137 n : ℚ)

end A084137

/-! ## A084137.P5848545648375498633

`6*a(n-1)-4*a(n-2)-8*a(n-3)` with `a(0)=1, a(1)=2, a(2)=8`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A084137

/-- `6*a(n-1)-4*a(n-2)-8*a(n-3)` -/
def P5848545648375498633.Spec : Prop :=
  ∀ n, P5848545648375498633.a n = A084137 n

theorem P5848545648375498633.correct : P5848545648375498633.Spec := by
  intro n
  simp only [A084137]

end A084137

/-! ## A084137.P14221237802338480852

`(A084128(n)+2^n)/2`
-/

namespace A084137.P14221237802338480852
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A084128 n + (2 ^ n : ℤ) : ℚ) / 2

end

end A084137.P14221237802338480852

namespace A084137

/-- `(A084128(n)+2^n)/2` -/
def P14221237802338480852.Spec : Prop :=
  ∀ n, P14221237802338480852.a n = (A084137 n : ℚ)

end A084137

/-! ## A084137.P3956894217890897696

`ogf((1-4x)/(1-6x+4x^2+8x^3))`
-/

namespace A084137.P3956894217890897696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -4] [1, -6, 4, 8] n

end

end A084137.P3956894217890897696

namespace A084137

/-- `ogf((1-4x)/(1-6x+4x^2+8x^3))` -/
def P3956894217890897696.Spec : Prop :=
  ∀ n, P3956894217890897696.a n = A084137 n

end A084137

/-! ## A084137.P1916414017381066925

`2^n*A171842(n)`
-/

namespace A084137.P1916414017381066925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A171842 n

end

end A084137.P1916414017381066925

namespace A084137

/-- `2^n*A171842(n)` -/
def P1916414017381066925.Spec : Prop :=
  ∀ n, P1916414017381066925.a n = A084137 n

end A084137

/-! ## A084137.P880369585870570890

`2^n*A247311(3*n)`
-/

namespace A084137.P880369585870570890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A247311 (3 * n)

end

end A084137.P880369585870570890

namespace A084137

/-- `2^n*A247311(3*n)` -/
def P880369585870570890.Spec : Prop :=
  ∀ n, P880369585870570890.a n = A084137 n

end A084137

/-! ## A084137.P12792365670771954073

`2^n*∑[A000129(abs(1-n))]`
-/

namespace A084137.P12792365670771954073
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000129 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A084137.P12792365670771954073

namespace A084137

/-- `2^n*∑[A000129(abs(1-n))]` -/
def P12792365670771954073.Spec : Prop :=
  ∀ n, P12792365670771954073.a n = A084137 n

end A084137

/-! ## A084137.P11338895722559767307

`a(n-1)+A094013(n)+a(n-1)` with `a(0)=1`
-/

namespace A084137.P11338895722559767307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A094013 n + a (n - 1))

end

end A084137.P11338895722559767307

namespace A084137

/-- `a(n-1)+A094013(n)+a(n-1)` -/
def P11338895722559767307.Spec : Prop :=
  ∀ n, P11338895722559767307.a n = A084137 n

end A084137

/-! ## A084137.P17178756156708057985

`4*(a(n-1)+a(n-2))-A000079(n)` with `a(0)=1, a(1)=2`
-/

namespace A084137.P17178756156708057985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  4 * (a (n - 1) + a (n - 2)) - A000079 n

end

end A084137.P17178756156708057985

namespace A084137

/-- `4*(a(n-1)+a(n-2))-A000079(n)` -/
def P17178756156708057985.Spec : Prop :=
  ∀ n, P17178756156708057985.a n = A084137 n

end A084137

/-! ## A084137.P6739512258120832434

`4*(a(n-1)+a(n-2))-A155559(n)` with `a(0)=1, a(1)=2`
-/

namespace A084137.P6739512258120832434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  4 * (a (n - 1) + a (n - 2)) - A155559 n

end

end A084137.P6739512258120832434

namespace A084137

/-- `4*(a(n-1)+a(n-2))-A155559(n)` -/
def P6739512258120832434.Spec : Prop :=
  ∀ n, P6739512258120832434.a n = A084137 n

end A084137

/-! ## A084137.P14033014129636281020

`A108051(n)+A011782(n)`
-/

namespace A084137.P14033014129636281020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108051 n + A011782 n

end

end A084137.P14033014129636281020

namespace A084137

/-- `A108051(n)+A011782(n)` -/
def P14033014129636281020.Spec : Prop :=
  ∀ n, P14033014129636281020.a n = A084137 n

end A084137

/-! ## A084137.P6836268820296310662

`A108051(n)+Δ[A131577(n)]`
-/

namespace A084137.P6836268820296310662
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131577 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108051 n + (f1 (n + 1) - f1 n)

end

end A084137.P6836268820296310662

namespace A084137

/-- `A108051(n)+Δ[A131577(n)]` -/
def P6836268820296310662.Spec : Prop :=
  ∀ n, P6836268820296310662.a n = A084137 n

end A084137

/-! ## A084137.P17876880464030829473

`A000079(n)+2*A006646(n)`
-/

namespace A084137.P17876880464030829473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n + 2 * A006646 n

end

end A084137.P17876880464030829473

namespace A084137

/-- `A000079(n)+2*A006646(n)` -/
def P17876880464030829473.Spec : Prop :=
  ∀ n, P17876880464030829473.a n = A084137 n

end A084137

/-! ## A084137.P8886521063220119470

`∑[abs(A176981(n))]*A000079(n)`
-/

namespace A084137.P8886521063220119470
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A176981 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A000079 n

end

end A084137.P8886521063220119470

namespace A084137

/-- `∑[abs(A176981(n))]*A000079(n)` -/
def P8886521063220119470.Spec : Prop :=
  ∀ n, P8886521063220119470.a n = A084137 n

end A084137

/-! ## A084137.P11974121533299181416

`round(A001333(n)/2)*A000079(n)`
-/

namespace A084137.P11974121533299181416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A001333 n : ℚ) / 2) * A000079 n

end

end A084137.P11974121533299181416

namespace A084137

/-- `round(A001333(n)/2)*A000079(n)` -/
def P11974121533299181416.Spec : Prop :=
  ∀ n, P11974121533299181416.a n = A084137 n

end A084137

/-! ## A084137.P10681267991435684

`(A024537(n)-A000129(n))*A000079(n)`
-/

namespace A084137.P10681267991435684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A024537 n - A000129 n) * A000079 n

end

end A084137.P10681267991435684

namespace A084137

/-- `(A024537(n)-A000129(n))*A000079(n)` -/
def P10681267991435684.Spec : Prop :=
  ∀ n, P10681267991435684.a n = A084137 n

end A084137

/-! ## A084137.P5763404678758310739

`lcm(A000079(n)*A171842(n), A000079(n))`
-/

namespace A084137.P5763404678758310739
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000079 n * A171842 n) (A000079 n)

end

end A084137.P5763404678758310739

namespace A084137

/-- `lcm(A000079(n)*A171842(n), A000079(n))` -/
def P5763404678758310739.Spec : Prop :=
  ∀ n, (P5763404678758310739.a n : ℤ) = A084137 n

end A084137

/-! ## A084137.P11810699016352780627

`A011782(n)+Δ[A011782(n)]*A001333(n)`
-/

namespace A084137.P11810699016352780627
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n + (f1 (n + 1) - f1 n) * A001333 n

end

end A084137.P11810699016352780627

namespace A084137

/-- `A011782(n)+Δ[A011782(n)]*A001333(n)` -/
def P11810699016352780627.Spec : Prop :=
  ∀ n, P11810699016352780627.a n = A084137 n

end A084137

/-! ## A084137.P3016101856154131239

`(A048739(n)-A293004(n+1))*A000079(n)`
-/

namespace A084137.P3016101856154131239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A048739 n - A293004 (n + 1)) * A000079 n

end

end A084137.P3016101856154131239

namespace A084137

/-- `(A048739(n)-A293004(n+1))*A000079(n)` -/
def P3016101856154131239.Spec : Prop :=
  ∀ n, P3016101856154131239.a n = A084137 n

end A084137

/-! ## A084137.P10744006314244057202

`Δ[A110052(n)]`
-/

namespace A084137.P10744006314244057202
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110052 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A084137.P10744006314244057202

namespace A084137

/-- `Δ[A110052(n)]` -/
def P10744006314244057202.Spec : Prop :=
  ∀ n, P10744006314244057202.a n = A084137 n

end A084137

/-!
# A084139: a(n) is the largest number for which exactly n primes are bounded between a(n) and 2a(n) exclusively.

The programs for A084139, there is no canonical definition to state claims against.
-/

/-! ## A084139.P15742894637593800281

`A084140(n+1)-1`
-/

namespace A084139.P15742894637593800281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084140 (n + 1) - 1

end

end A084139.P15742894637593800281

/-! ## A084139.P10790830375556582529

`floor(A104272(n+1)/2)`
-/

namespace A084139.P10790830375556582529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A104272 (n + 1) : ℚ) / 2⌋

end

end A084139.P10790830375556582529

/-! ## A084139.P8430241329695234169

`(A104272(n+1)-A057427(n))/2`
-/

namespace A084139.P8430241329695234169
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A104272 (n + 1) - A057427 n : ℚ) / 2

end

end A084139.P8430241329695234169

/-! ## A084139.P2614672771664627571

`(A104272(n+1)-A134824(n)²)/2`
-/

namespace A084139.P2614672771664627571
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A104272 (n + 1) - A134824 n ^ 2 : ℚ) / 2

end

end A084139.P2614672771664627571

/-! ## A084139.P10612994288274238195

`ceil((A104272(n+1)-A057077(A005408(n))²)/2)`
-/

namespace A084139.P10612994288274238195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A104272 (n + 1) - A057077 (A005408 n).toNat ^ 2 : ℚ) / 2⌉

end

end A084139.P10612994288274238195

/-! ## A084139.P5541730076256109929

`A130290(A179196(n+1))`
-/

namespace A084139.P5541730076256109929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130290 (A179196 (n + 1)).toNat

end

end A084139.P5541730076256109929

/-! ## A084139.P10538731607811128848

`A006093(A179196(n+1))/(A057427(n)+1)`
-/

namespace A084139.P10538731607811128848
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006093 (A179196 (n + 1)).toNat : ℚ) / (A057427 n + 1 : ℚ)

end

end A084139.P10538731607811128848

/-! ## A084139.P11916521123364179889

`A302042(A104272(n+1)-1)`
-/

namespace A084139.P11916521123364179889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302042 (A104272 (n + 1) - 1).toNat

end

end A084139.P11916521123364179889

/-! ## A084139.P2215612251888405114

`A305425(A104272(n+1)-1)`
-/

namespace A084139.P2215612251888405114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305425 (A104272 (n + 1) - 1).toNat

end

end A084139.P2215612251888405114

/-! ## A084139.P1954610381781636702

`A326139(A104272(n+1)-1)`
-/

namespace A084139.P1954610381781636702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326139 (A104272 (n + 1) - 1).toNat

end

end A084139.P1954610381781636702

/-! ## A084139.P13350904367973566337

`A000010(2*A104272(n+1))/2`
-/

namespace A084139.P13350904367973566337
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 (2 * A104272 (n + 1)).toNat : ℚ) / 2

end

end A084139.P13350904367973566337

/-! ## A084139.P9586481626406772773

`A003970(A084140(n+1))`
-/

namespace A084139.P9586481626406772773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003970 (A084140 (n + 1)).toNat

end

end A084139.P9586481626406772773

/-! ## A084139.P15928121665917163786

`A038572(A104272(n+1)-1)`
-/

namespace A084139.P15928121665917163786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038572 (A104272 (n + 1) - 1).toNat

end

end A084139.P15928121665917163786

/-! ## A084139.P9846360395168767204

`A004526(A104272(n+1))`
-/

namespace A084139.P9846360395168767204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A104272 (n + 1)).toNat

end

end A084139.P9846360395168767204

/-! ## A084139.P3333607453417146810

`A004525(A104272(n+1)-1)`
-/

namespace A084139.P3333607453417146810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A104272 (n + 1) - 1).toNat

end

end A084139.P3333607453417146810

/-! ## A084139.P2255297268062929531

`A026741(A104272(n+1)-1)`
-/

namespace A084139.P2255297268062929531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A104272 (n + 1) - 1).toNat

end

end A084139.P2255297268062929531

/-! ## A084139.P12498118077050629109

`A060681(A104272(n+1)+1)-1`
-/

namespace A084139.P12498118077050629109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060681 (A104272 (n + 1) + 1).toNat - 1

end

end A084139.P12498118077050629109

/-! ## A084139.P4831454884873616741

`A004524(A104272(n+1)+2)-1`
-/

namespace A084139.P4831454884873616741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (A104272 (n + 1) + 2).toNat - 1

end

end A084139.P4831454884873616741

/-! ## A084139.P164583346896550789

`A004524(A104272(n+1)+A000007(n))`
-/

namespace A084139.P164583346896550789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (A104272 (n + 1) + A000007 n).toNat

end

end A084139.P164583346896550789

/-! ## A084139.P1510653508588331036

`A001651(xor(1, A104272(n+1))+1)%A104272(n+1)`
-/

namespace A084139.P1510653508588331036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001651 (Int.xor 1 (A104272 (n + 1)) + 1).toNat) (A104272 (n + 1))

end

end A084139.P1510653508588331036

/-!
# A084140: a(n) is the smallest number j such that if x >= j there are at least n primes between x and 2x exclusively.

The programs for A084140, there is no canonical definition to state claims against.
-/

/-! ## A084140.P3118000732639166296

`ceil((A104272(n+1)+1)/2)`
-/

namespace A084140.P3118000732639166296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A104272 (n + 1) + 1 : ℚ) / 2⌉

end

end A084140.P3118000732639166296

/-! ## A084140.P933480530452509253

`A084139(n)+1`
-/

namespace A084140.P933480530452509253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084139 n + 1

end

end A084140.P933480530452509253

/-! ## A084140.P8743886037819023906

`ceil(cosh(log(A104272(n+1))))`
-/

namespace A084140.P8743886037819023906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.cosh (Real.log (A104272 (n + 1) : ℝ))⌉

end

end A084140.P8743886037819023906

/-! ## A084140.P894285668119143200

`floor(A104272(Δ[n²]-n)/2)+1`
-/

namespace A084140.P894285668119143200
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A104272 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat : ℚ) / 2⌋ + 1

end

end A084140.P894285668119143200

/-! ## A084140.P7061610168600219901

`A130291(A179196(n+1))`
-/

namespace A084140.P7061610168600219901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130291 (A179196 (n + 1)).toNat

end

end A084140.P7061610168600219901

/-! ## A084140.P11575334473401209279

`A305425(A104272(n+1)+1)`
-/

namespace A084140.P11575334473401209279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305425 (A104272 (n + 1) + 1).toNat

end

end A084140.P11575334473401209279

/-! ## A084140.P16224220150157668168

`A020725(A084139(n))`
-/

namespace A084140.P16224220150157668168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A084139 n).toNat

end

end A084140.P16224220150157668168

/-! ## A084140.P8925692708018178641

`A000224(A104272(n+1))`
-/

namespace A084140.P8925692708018178641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000224 (A104272 (n + 1)).toNat

end

end A084140.P8925692708018178641

/-! ## A084140.P13329432864765117536

`A060681(A104272(n+1)+1)`
-/

namespace A084140.P13329432864765117536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060681 (A104272 (n + 1) + 1).toNat

end

end A084140.P13329432864765117536

/-! ## A084140.P4630106968274740956

`A004524(A104272(n+1)+2)`
-/

namespace A084140.P4630106968274740956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (A104272 (n + 1) + 2).toNat

end

end A084140.P4630106968274740956

/-!
# A084141: a(n) is the index in sequence A084138 when the value of that sequence is 1; i.e., there is exactly one case where there are exactly a(n) primes between m and 2m, exclusively, for m > 0.

The programs for A084141, there is no canonical definition to state claims against.
-/

/-! ## A084141.P2005683706116567831

`eq[1, A084138(n)]`
-/

namespace A084141.P2005683706116567831
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084138 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A084141.P2005683706116567831

/-! ## A084141.P5606081484403030484

`eq[A104272(n+1)-A059316(n+1), A060756(n)]`
-/

namespace A084141.P5606081484403030484
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104272 (n + 1) - A059316 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060756 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A084141.P5606081484403030484

/-! ## A084141.P6045445549228058732

`A060715(A084142(n+1))`
-/

namespace A084141.P6045445549228058732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060715 (A084142 (n + 1)).toNat

end

end A084141.P6045445549228058732

/-! ## A084141.P14336975951142708095

`eq[A034694(A060756(n)), A104272(n+1)]`
-/

namespace A084141.P14336975951142708095
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034694 (A060756 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104272 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A084141.P14336975951142708095

/-! ## A084141.P4715174699243149018

`A108954(A084142(n+1))%A063490(2*n+1)`
-/

namespace A084141.P4715174699243149018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A108954 (A084142 (n + 1)).toNat) (A063490 (2 * n + 1))

end

end A084141.P4715174699243149018

/-!
# A084142: Positive numbers k such that the number of primes between k and 2*k is different from the number of primes between m and 2*m for every number m != k.

The programs for A084142, there is no canonical definition to state claims against.
-/

/-! ## A084142.P3188757670684673096

`A060756(A084141(n+1))`
-/

namespace A084142.P3188757670684673096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060756 (A084141 (n + 1)).toNat

end

end A084142.P3188757670684673096

/-! ## A084142.P16669616416474655933

`∩[A060756(n), A084139(n)]`
-/

namespace A084142.P16669616416474655933
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060756 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084139 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A084142.P16669616416474655933

/-! ## A084142.P6076985159672359979

`A084139(A084141(2*n+1-n))`
-/

namespace A084142.P6076985159672359979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084139 (A084141 (2 * n + 1 - n)).toNat

end

end A084142.P6076985159672359979

/-!
# A084143: Number of partitions of n into a sum of two or more consecutive primes.

The programs for A084143, there is no canonical definition to state claims against.
-/

/-! ## A084143.P16005473256359273005

`A054845(n+1)-A010051(n+1)`
-/

namespace A084143.P16005473256359273005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054845 (n + 1) - A010051 (n + 1)

end

end A084143.P16005473256359273005

/-! ## A084143.P13691498040386916747

`A054845(n+1)-char[record[A033883(n)]]`
-/

namespace A084143.P13691498040386916747
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033883 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054845 (n + 1) - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A084143.P13691498040386916747

/-! ## A084143.P9561323406110496373

`A054845(n+1)-char[record[A037225(n)]]`
-/

namespace A084143.P9561323406110496373
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037225 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054845 (n + 1) - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A084143.P9561323406110496373

/-! ## A084143.P2402441505609736565

`A054845(n+1)-A064911(2*(n+1))`
-/

namespace A084143.P2402441505609736565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054845 (n + 1) - A064911 (2 * (n + 1))

end

end A084143.P2402441505609736565

/-! ## A084143.P36488659282289507

`A054845(n+1)-char[A000040(n+1)-1]`
-/

namespace A084143.P36488659282289507
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054845 (n + 1) - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A084143.P36488659282289507

/-! ## A084143.P1927212557206574380

`A054845(n+1)-char[eq[2, A000005(n+1)]]`
-/

namespace A084143.P1927212557206574380
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054845 (n + 1) - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A084143.P1927212557206574380

/-! ## A084143.P8305168309257125145

`A054845(n+1)-Δ[A061395(A151800(n))]`
-/

namespace A084143.P8305168309257125145
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (A151800 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054845 (n + 1) - (f1 (n + 1) - f1 n)

end

end A084143.P8305168309257125145

/-!
# A084146: Integers that have exactly one representation as a sum of two or more consecutive primes.

The programs for A084146, there is no canonical definition to state claims against.
-/

/-! ## A084146.P14155638895810275059

`eq[1, A084143(n+1)]+1`
-/

namespace A084146.P14155638895810275059
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084143 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A084146.P14155638895810275059

/-! ## A084146.P7498790918967514231

`eq[n, n-a(A084143(n))]` with `a(0)=1`
-/

namespace A084146.P7498790918967514231
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f2 =>
  (n : ℤ) - f2 (A084143 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A084146.P7498790918967514231

/-! ## A084146.P16455396291494372647

`eq[1, A084143(A028310(n))]`
-/

namespace A084146.P16455396291494372647
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084143 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A084146.P16455396291494372647

/-! ## A084146.P11348024804698457349

`A020725(eq[1, A084143(n+1)])`
-/

namespace A084146.P11348024804698457349
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084143 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A084146.P11348024804698457349

/-! ## A084146.P9600088736283659281

`A065475(eq[1, A084143(n+1)])`
-/

namespace A084146.P9600088736283659281
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084143 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A084146.P9600088736283659281

/-! ## A084146.P12718111691114240821

`eq[char[A000040(n+1)]+1, A054845(n)]`
-/

namespace A084146.P12718111691114240821
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = (n : ℤ) then 1 else 0) + 1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054845 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A084146.P12718111691114240821

/-! ## A084146.P3533047633711542914

`record[A050936(n+1)/A084143(A050936(n+1))]`
-/

namespace A084146.P3533047633711542914
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A050936 (n + 1) : ℚ) / (A084143 (A050936 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A084146.P3533047633711542914

/-! ## A084146.P15281691033177832857

`A000720(p?[A000040(n+1)*A084143(n+1)])`
-/

namespace A084146.P15281691033177832857
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * A084143 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A084146.P15281691033177832857

/-! ## A084146.P9646289880962726888

`eq[1, A084143(A233583(n+1))]`
-/

namespace A084146.P9646289880962726888
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084143 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A084146.P9646289880962726888

/-!
# A084147: Integers that have exactly 2 representations as sums of consecutive primes.

The programs for A084147, there is no canonical definition to state claims against.
-/

/-! ## A084147.P15840498501244517410

`eq[2, A084143(n+1)]+1`
-/

namespace A084147.P15840498501244517410
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084143 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A084147.P15840498501244517410

/-! ## A084147.P11971751119680243942

`eq[2, A084143(A028310(n))]`
-/

namespace A084147.P11971751119680243942
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084143 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A084147.P11971751119680243942

/-! ## A084147.P4325139966781659912

`A020725(eq[2, A084143(n+1)])`
-/

namespace A084147.P4325139966781659912
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084143 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A084147.P4325139966781659912

/-! ## A084147.P17402043202358718623

`A065475(eq[2, A084143(n+1)])`
-/

namespace A084147.P17402043202358718623
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084143 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A084147.P17402043202358718623

/-! ## A084147.P16219208431801908682

`eq[2, A084143(A233583(n+1))]`
-/

namespace A084147.P16219208431801908682
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084143 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A084147.P16219208431801908682

/-!
# A084150: A Pell related sequence.

The programs for A084150, the canonical program `A084150.P1305068621019724723` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A084150 has offset 0).

The definition of A084150 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A084150.P1305068621019724723

`((1+sqrt(8))^n+(1-sqrt(8))^n-2)/16`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A084150

/-- `((1+sqrt(8))^n+(1-sqrt(8))^n-2)/16` -/
def P1305068621019724723.Spec : Prop :=
  ∀ n, P1305068621019724723.a n = (A084150 n : ℝ)

end A084150

/-! ## A084150.P13746829098002279216

`ogf(x^2/(1-3x-5x^2+7x^3))`
-/

namespace A084150.P13746829098002279216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 0, 1] [1, -3, -5, 7] n

end

end A084150.P13746829098002279216

namespace A084150

/-- `ogf(x^2/(1-3x-5x^2+7x^3))` -/
def P13746829098002279216.Spec : Prop :=
  ∀ n, P13746829098002279216.a n = A084150 n

end A084150

/-! ## A084150.P17759892118994458570

`2*a(n-1)+7*a(n-2)+1` with `a(0)=0, a(1)=0`
-/

namespace A084150.P17759892118994458570
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 0] fun n a =>
  2 * a (n - 1) + 7 * a (n - 2) + 1

end

end A084150.P17759892118994458570

namespace A084150

/-- `2*a(n-1)+7*a(n-2)+1` -/
def P17759892118994458570.Spec : Prop :=
  ∀ n, (P17759892118994458570.a n : ℤ) = A084150 n

end A084150

/-! ## A084150.P17786958937936605407

`A015519(n-1)+a(n-1)` with `a(0)=0`
-/

namespace A084150.P17786958937936605407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A015519 (n - 1) + a (n - 1)

end

end A084150.P17786958937936605407

namespace A084150

/-- `A015519(n-1)+a(n-1)` -/
def P17786958937936605407.Spec : Prop :=
  ∀ n, P17786958937936605407.a n = A084150 n

end A084150

/-! ## A084150.P15482798432193933772

`∑[A015519(round(sqrt(n²+1))-1)]`
-/

namespace A084150.P15482798432193933772
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015519 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ)) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A084150.P15482798432193933772

namespace A084150

/-- `∑[A015519(round(sqrt(n²+1))-1)]` -/
def P15482798432193933772.Spec : Prop :=
  ∀ n, P15482798432193933772.a n = A084150 n

end A084150

/-! ## A084150.P10347287503776677980

`floor(A084136(n)/4)`
-/

namespace A084150.P10347287503776677980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A084136 n : ℚ) / 4⌋

end

end A084150.P10347287503776677980

namespace A084150

/-- `floor(A084136(n)/4)` -/
def P10347287503776677980.Spec : Prop :=
  ∀ n, P10347287503776677980.a n = A084150 n

end A084150

/-! ## A084150.P14509400952982773326

`floor(A084058(n)/8)`
-/

namespace A084150.P14509400952982773326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A084058 n : ℚ) / 8⌋

end

end A084150.P14509400952982773326

namespace A084150

/-- `floor(A084058(n)/8)` -/
def P14509400952982773326.Spec : Prop :=
  ∀ n, P14509400952982773326.a n = A084150 n

end A084150

/-! ## A084150.P4613713496180247186

`∑[A015519(n)]-A015519(n)`
-/

namespace A084150.P4613713496180247186
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015519 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A015519 n

end

end A084150.P4613713496180247186

namespace A084150

/-- `∑[A015519(n)]-A015519(n)` -/
def P4613713496180247186.Spec : Prop :=
  ∀ n, P4613713496180247186.a n = A084150 n

end A084150

/-!
# A084151: Binomial transform of a Pell convolution.

The programs for A084151, the canonical program `A084151.P1065768061746022074` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A084151 has offset 0).

The definition of A084151 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A084151.P1065768061746022074

`(A001541(n)-3^n)/8`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A084151

/-- `(A001541(n)-3^n)/8` -/
def P1065768061746022074.Spec : Prop :=
  ∀ n, P1065768061746022074.a n = (A084151 n : ℚ)

end A084151

/-! ## A084151.P10935424864654671796

`((3+sqrt(8))^n+(3-sqrt(8))^n-2*3^n)/16`
-/

namespace A084151.P10935424864654671796
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((3 + Real.sqrt (8 : ℝ)) ^ n + (3 - Real.sqrt (8 : ℝ)) ^ n - (2 * 3 ^ n : ℝ)) / 16

end

end A084151.P10935424864654671796

namespace A084151

/-- `((3+sqrt(8))^n+(3-sqrt(8))^n-2*3^n)/16` -/
def P10935424864654671796.Spec : Prop :=
  ∀ n, P10935424864654671796.a n = (A084151 n : ℝ)

end A084151

/-! ## A084151.P15198980970863078130

`∑[A136201(comp[2*(n+1)])]`
-/

namespace A084151.P15198980970863078130
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136201 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A084151.P15198980970863078130

namespace A084151

/-- `∑[A136201(comp[2*(n+1)])]` -/
def P15198980970863078130.Spec : Prop :=
  ∀ n, P15198980970863078130.a n = A084151 n

end A084151

/-! ## A084151.P16695294774835182928

`-((A007051(n)-A055997(n+1))/4)`
-/

namespace A084151.P16695294774835182928
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  -((A007051 n - A055997 (n + 1) : ℚ) / 4)

end

end A084151.P16695294774835182928

namespace A084151

/-- `-((A007051(n)-A055997(n+1))/4)` -/
def P16695294774835182928.Spec : Prop :=
  ∀ n, P16695294774835182928.a n = (A084151 n : ℚ)

end A084151

/-! ## A084151.P16801872140227625415

`∑[A136201(2*n+1)]-A136201(2*n+1)`
-/

namespace A084151.P16801872140227625415
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136201 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A136201 (2 * n + 1)

end

end A084151.P16801872140227625415

namespace A084151

/-- `∑[A136201(2*n+1)]-A136201(2*n+1)` -/
def P16801872140227625415.Spec : Prop :=
  ∀ n, P16801872140227625415.a n = A084151 n

end A084151

/-! ## A084151.P6362434862240740170

`A137255(2*n+1)/2-A137255(2*n)`
-/

namespace A084151.P6362434862240740170
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A137255 (2 * n + 1) : ℚ) / 2 - (A137255 (2 * n) : ℚ)

end

end A084151.P6362434862240740170

namespace A084151

/-- `A137255(2*n+1)/2-A137255(2*n)` -/
def P6362434862240740170.Spec : Prop :=
  ∀ n, P6362434862240740170.a n = (A084151 n : ℚ)

end A084151

/-!
# A084152: Exponential self-convolution of Jacobsthal numbers (divided by 2).

The programs for A084152, the canonical program `A084152.P7589599783554655838` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A084152 has offset 0).

The definition of A084152 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A084152.P7589599783554655838

`3*a(n-1)+6*a(n-2)-8*a(n-3)` with `a(0)=0, a(1)=0, a(2)=1`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A084152

/-- `3*a(n-1)+6*a(n-2)-8*a(n-3)` -/
def P7589599783554655838.Spec : Prop :=
  ∀ n, P7589599783554655838.a n = A084152 n

theorem P7589599783554655838.correct : P7589599783554655838.Spec := by
  intro n
  simp only [A084152]

end A084152

/-! ## A084152.P8719834871184937056

`floor(2^n/3)*ceil(2^n/3)/2`
-/

namespace A084152.P8719834871184937056
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (⌊(2 ^ n : ℚ) / 3⌋ * ⌈(2 ^ n : ℚ) / 3⌉ : ℚ) / 2

end

end A084152.P8719834871184937056

namespace A084152

/-- `floor(2^n/3)*ceil(2^n/3)/2` -/
def P8719834871184937056.Spec : Prop :=
  ∀ n, P8719834871184937056.a n = (A084152 n : ℚ)

end A084152

/-! ## A084152.P16745907586133712155

`ogf(x^2/(1-3x-6x^2+8x^3))`
-/

namespace A084152.P16745907586133712155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 0, 1] [1, -3, -6, 8] n

end

end A084152.P16745907586133712155

namespace A084152

/-- `ogf(x^2/(1-3x-6x^2+8x^3))` -/
def P16745907586133712155.Spec : Prop :=
  ∀ n, P16745907586133712155.a n = A084152 n

end A084152

/-! ## A084152.P9482205647737554388

`2*(a(n-1)+4*a(n-2))+1` with `a(0)=0, a(1)=0`
-/

namespace A084152.P9482205647737554388
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 0] fun n a =>
  2 * (a (n - 1) + 4 * a (n - 2)) + 1

end

end A084152.P9482205647737554388

namespace A084152

/-- `2*(a(n-1)+4*a(n-2))+1` -/
def P9482205647737554388.Spec : Prop :=
  ∀ n, (P9482205647737554388.a n : ℤ) = A084152 n

end A084152

/-! ## A084152.P8196109088068169371

`A084175(n-ceil(sin(n)²))`
-/

namespace A084152.P8196109088068169371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084175 ((n : ℤ) - ⌈Real.sin (n : ℝ) ^ 2⌉).toNat

end

end A084152.P8196109088068169371

namespace A084152

/-- `A084175(n-ceil(sin(n)²))` -/
def P8196109088068169371.Spec : Prop :=
  ∀ n, P8196109088068169371.a n = A084152 n

end A084152

/-! ## A084152.P1863222021364357427

`A084175((n-1)%(n+1))`
-/

namespace A084152.P1863222021364357427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084175 (Int.tmod ((n : ℤ) - 1) (n + 1 : ℤ)).toNat

end

end A084152.P1863222021364357427

namespace A084152

/-- `A084175((n-1)%(n+1))` -/
def P1863222021364357427.Spec : Prop :=
  ∀ n, P1863222021364357427.a n = A084152 n

end A084152

/-! ## A084152.P16522128273008610698

`A084175(floor(acot(n))-1+n)`
-/

namespace A084152.P16522128273008610698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084175 (⌊SequenceMachineLib.acot (n : ℝ)⌋ - 1 + (n : ℤ)).toNat

end

end A084152.P16522128273008610698

namespace A084152

/-- `A084175(floor(acot(n))-1+n)` -/
def P16522128273008610698.Spec : Prop :=
  ∀ n, P16522128273008610698.a n = A084152 n

end A084152

/-! ## A084152.P17803812788848119207

`A138477(comp[2*(n+1)+1])`
-/

namespace A084152.P17803812788848119207
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1) + 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138477 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A084152.P17803812788848119207

namespace A084152

/-- `A138477(comp[2*(n+1)+1])` -/
def P17803812788848119207.Spec : Prop :=
  ∀ n, P17803812788848119207.a n = A084152 n

end A084152

/-! ## A084152.P8021250272135537204

`A084175(round(sqrt(n²+1))-1)`
-/

namespace A084152.P8021250272135537204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084175 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ)) - 1).toNat

end

end A084152.P8021250272135537204

namespace A084152

/-- `A084175(round(sqrt(n²+1))-1)` -/
def P8021250272135537204.Spec : Prop :=
  ∀ n, P8021250272135537204.a n = A084152 n

end A084152

/-! ## A084152.P17334988568772954887

`∑[A003683(log2(ceil(2^(n-1))))]`
-/

namespace A084152.P17334988568772954887
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003683 (SequenceMachineLib.roundAway (Real.logb 2 (⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉ : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A084152.P17334988568772954887

namespace A084152

/-- `∑[A003683(log2(ceil(2^(n-1))))]` -/
def P17334988568772954887.Spec : Prop :=
  ∀ n, P17334988568772954887.a n = A084152 n

end A084152

/-! ## A084152.P9235660289395049035

`A003683(n-1)+a(n-1)` with `a(0)=0`
-/

namespace A084152.P9235660289395049035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A003683 (n - 1) + a (n - 1)

end

end A084152.P9235660289395049035

namespace A084152

/-- `A003683(n-1)+a(n-1)` -/
def P9235660289395049035.Spec : Prop :=
  ∀ n, P9235660289395049035.a n = A084152 n

end A084152

/-! ## A084152.P15740945355622893509

`A138495(A289207(2*n))`
-/

namespace A084152.P15740945355622893509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138495 (A289207 (2 * n)).toNat

end

end A084152.P15740945355622893509

namespace A084152

/-- `A138495(A289207(2*n))` -/
def P15740945355622893509.Spec : Prop :=
  ∀ n, P15740945355622893509.a n = A084152 n

end A084152

/-! ## A084152.P8672809191796021262

`A138495(2*log2(A011782(n)))`
-/

namespace A084152.P8672809191796021262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138495 (SequenceMachineLib.roundAway (2 * Real.logb 2 (A011782 n : ℝ))).toNat

end

end A084152.P8672809191796021262

namespace A084152

/-- `A138495(2*log2(A011782(n)))` -/
def P8672809191796021262.Spec : Prop :=
  ∀ n, P8672809191796021262.a n = A084152 n

end A084152

/-! ## A084152.P4642296626370117740

`Δ[A023105(n)]*A001045(n)`
-/

namespace A084152.P4642296626370117740
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023105 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A001045 n

end

end A084152.P4642296626370117740

namespace A084152

/-- `Δ[A023105(n)]*A001045(n)` -/
def P4642296626370117740.Spec : Prop :=
  ∀ n, P4642296626370117740.a n = A084152 n

end A084152

/-! ## A084152.P18162163427265234678

`A138495(2*(A028310(n)-1))`
-/

namespace A084152.P18162163427265234678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138495 (2 * (A028310 n - 1)).toNat

end

end A084152.P18162163427265234678

namespace A084152

/-- `A138495(2*(A028310(n)-1))` -/
def P18162163427265234678.Spec : Prop :=
  ∀ n, P18162163427265234678.a n = A084152 n

end A084152

/-! ## A084152.P2168760770898744161

`A001045(n)*A328284(n+2)`
-/

namespace A084152.P2168760770898744161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001045 n * A328284 (n + 2)

end

end A084152.P2168760770898744161

namespace A084152

/-- `A001045(n)*A328284(n+2)` -/
def P2168760770898744161.Spec : Prop :=
  ∀ n, P2168760770898744161.a n = A084152 n

end A084152

/-! ## A084152.P14965068994716283121

`A138495(2*(A004273(n)-n))`
-/

namespace A084152.P14965068994716283121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138495 (2 * (A004273 n - (n : ℤ))).toNat

end

end A084152.P14965068994716283121

namespace A084152

/-- `A138495(2*(A004273(n)-n))` -/
def P14965068994716283121.Spec : Prop :=
  ∀ n, P14965068994716283121.a n = A084152 n

end A084152

/-! ## A084152.P7977565644195632486

`A138495(2*(n-A057427(n)))`
-/

namespace A084152.P7977565644195632486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138495 (2 * ((n : ℤ) - A057427 n)).toNat

end

end A084152.P7977565644195632486

namespace A084152

/-- `A138495(2*(n-A057427(n)))` -/
def P7977565644195632486.Spec : Prop :=
  ∀ n, P7977565644195632486.a n = A084152 n

end A084152

/-! ## A084152.P2824754949536345023

`A024493(n)/2*A242563(n)`
-/

namespace A084152.P2824754949536345023
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A024493 n : ℚ) / 2 * (A242563 n : ℚ)

end

end A084152.P2824754949536345023

namespace A084152

/-- `A024493(n)/2*A242563(n)` -/
def P2824754949536345023.Spec : Prop :=
  ∀ n, P2824754949536345023.a n = (A084152 n : ℚ)

end A084152

/-! ## A084152.P16932707304370358768

`(A011782(n)-A001045(n))*A001045(n)`
-/

namespace A084152.P16932707304370358768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A011782 n - A001045 n) * A001045 n

end

end A084152.P16932707304370358768

namespace A084152

/-- `(A011782(n)-A001045(n))*A001045(n)` -/
def P16932707304370358768.Spec : Prop :=
  ∀ n, P16932707304370358768.a n = A084152 n

end A084152

/-!
# A084153: Binomial transform of a Jacobsthal convolution.

The programs for A084153, the canonical program `A084153.P12589892505221921963` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A084153 has offset 0).

The definition of A084153 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A084153.P12589892505221921963

`(5^n-2^(n+1)+(-1)^n)/18`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A084153

/-- `(5^n-2^(n+1)+(-1)^n)/18` -/
def P12589892505221921963.Spec : Prop :=
  ∀ n, P12589892505221921963.a n = (A084153 n : ℚ)

end A084153

/-! ## A084153.P16734708585445801249

`ogf(x^2/(1-6x+3x^2+10x^3))`
-/

namespace A084153.P16734708585445801249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 0, 1] [1, -6, 3, 10] n

end

end A084153.P16734708585445801249

namespace A084153

/-- `ogf(x^2/(1-6x+3x^2+10x^3))` -/
def P16734708585445801249.Spec : Prop :=
  ∀ n, P16734708585445801249.a n = A084153 n

end A084153

/-! ## A084153.P13280657807668955559

`∑[A084177(floor(acot(n))-1+n)]`
-/

namespace A084153.P13280657807668955559
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084177 (⌊SequenceMachineLib.acot (n : ℝ)⌋ - 1 + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A084153.P13280657807668955559

namespace A084153

/-- `∑[A084177(floor(acot(n))-1+n)]` -/
def P13280657807668955559.Spec : Prop :=
  ∀ n, P13280657807668955559.a n = A084153 n

end A084153

/-! ## A084153.P14359175061659188287

`A084177(n-1)+a(n-1)` with `a(0)=0`
-/

namespace A084153.P14359175061659188287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A084177 (n - 1) + a (n - 1)

end

end A084153.P14359175061659188287

namespace A084153

/-- `A084177(n-1)+a(n-1)` -/
def P14359175061659188287.Spec : Prop :=
  ∀ n, P14359175061659188287.a n = A084153 n

end A084153

/-! ## A084153.P4970331205443741923

`A084177(n)-A015531(n)`
-/

namespace A084153.P4970331205443741923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084177 n - A015531 n

end

end A084153.P4970331205443741923

namespace A084153

/-- `A084177(n)-A015531(n)` -/
def P4970331205443741923.Spec : Prop :=
  ∀ n, P4970331205443741923.a n = A084153 n

end A084153

/-! ## A084153.P15576028993993336407

`∑[A084177(log2(A011782(n)))]`
-/

namespace A084153.P15576028993993336407
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084177 (SequenceMachineLib.roundAway (Real.logb 2 (A011782 n : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A084153.P15576028993993336407

namespace A084153

/-- `∑[A084177(log2(A011782(n)))]` -/
def P15576028993993336407.Spec : Prop :=
  ∀ n, P15576028993993336407.a n = A084153 n

end A084153

/-! ## A084153.P11043695957682064875

`∑[A084177(A004273(n)-n)]`
-/

namespace A084153.P11043695957682064875
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084177 (A004273 n - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A084153.P11043695957682064875

namespace A084153

/-- `∑[A084177(A004273(n)-n)]` -/
def P11043695957682064875.Spec : Prop :=
  ∀ n, P11043695957682064875.a n = A084153 n

end A084153

/-! ## A084153.P12572426373118573047

`abs((A078008(n)-A109500(n))/3)`
-/

namespace A084153.P12572426373118573047
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(A078008 n - A109500 n : ℚ) / 3|

end

end A084153.P12572426373118573047

namespace A084153

/-- `abs((A078008(n)-A109500(n))/3)` -/
def P12572426373118573047.Spec : Prop :=
  ∀ n, P12572426373118573047.a n = (A084153 n : ℚ)

end A084153

/-! ## A084153.P17268871642647770981

`∑[A084177(A076221(∑[n-1]+2))]`
-/

namespace A084153.P17268871642647770981
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084177 (A076221 (∑ j ∈ Finset.range (n + 1), f2 j + 2).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A084153.P17268871642647770981

namespace A084153

/-- `∑[A084177(A076221(∑[n-1]+2))]` -/
def P17268871642647770981.Spec : Prop :=
  ∀ n, P17268871642647770981.a n = A084153 n

end A084153

/-!
# A084154: Binomial transform of sinh(x)*cosh(sqrt(2)*x).

The programs for A084154, the canonical program `A084154.P7561336249840519692` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A084154 has offset 0).

The definition of A084154 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A084154.P7561336249840519692

`4*a(n-1)-8*a(n-3)+4*a(n-4)` with `a(0)=0, a(1)=1, a(2)=2, a(3)=10`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A084154

/-- `4*a(n-1)-8*a(n-3)+4*a(n-4)` -/
def P7561336249840519692.Spec : Prop :=
  ∀ n, P7561336249840519692.a n = A084154 n

theorem P7561336249840519692.correct : P7561336249840519692.Spec := by
  intro n
  simp only [A084154]

end A084154

/-! ## A084154.P15589680695624755807

`((2+sqrt(2))^n+(2-sqrt(2))^n-sqrt(2)^n-(-sqrt(2))^n)/4`
-/

namespace A084154.P15589680695624755807
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((2 + Real.sqrt (2 : ℝ)) ^ n + (2 - Real.sqrt (2 : ℝ)) ^ n - Real.sqrt (2 : ℝ) ^ n - (-Real.sqrt (2 : ℝ)) ^ n) / 4

end

end A084154.P15589680695624755807

namespace A084154

/-- `((2+sqrt(2))^n+(2-sqrt(2))^n-sqrt(2)^n-(-sqrt(2))^n)/4` -/
def P15589680695624755807.Spec : Prop :=
  ∀ n, P15589680695624755807.a n = (A084154 n : ℝ)

end A084154

/-! ## A084154.P4874834843753798365

`A006012(n)-A088013(n)`
-/

namespace A084154.P4874834843753798365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006012 n - A088013 n

end

end A084154.P4874834843753798365

namespace A084154

/-- `A006012(n)-A088013(n)` -/
def P4874834843753798365.Spec : Prop :=
  ∀ n, P4874834843753798365.a n = A084154 n

end A084154

/-! ## A084154.P4554326124684008099

`A088013(n)-A077957(n)`
-/

namespace A084154.P4554326124684008099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088013 n - A077957 n

end

end A084154.P4554326124684008099

namespace A084154

/-- `A088013(n)-A077957(n)` -/
def P4554326124684008099.Spec : Prop :=
  ∀ n, P4554326124684008099.a n = A084154 n

end A084154

/-! ## A084154.P12136569332361119399

`A007052(n)-A094038(n+1)`
-/

namespace A084154.P12136569332361119399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007052 n - A094038 (n + 1)

end

end A084154.P12136569332361119399

namespace A084154

/-- `A007052(n)-A094038(n+1)` -/
def P12136569332361119399.Spec : Prop :=
  ∀ n, P12136569332361119399.a n = A084154 n

end A084154

/-! ## A084154.P4567685649759860025

`A007052(n)-A030436(n)*A068912(n)`
-/

namespace A084154.P4567685649759860025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007052 n - A030436 n * A068912 n

end

end A084154.P4567685649759860025

namespace A084154

/-- `A007052(n)-A030436(n)*A068912(n)` -/
def P4567685649759860025.Spec : Prop :=
  ∀ n, P4567685649759860025.a n = A084154 n

end A084154

/-! ## A084154.P10779969116684106368

`(A000129(n)*A204089(n))%A006012(n)`
-/

namespace A084154.P10779969116684106368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000129 n * A204089 n) (A006012 n)

end

end A084154.P10779969116684106368

namespace A084154

/-- `(A000129(n)*A204089(n))%A006012(n)` -/
def P10779969116684106368.Spec : Prop :=
  ∀ n, P10779969116684106368.a n = A084154 n

end A084154

/-! ## A084154.P13071952571737132437

`(A000129(n)*A007052(n))%A006012(n)`
-/

namespace A084154.P13071952571737132437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000129 n * A007052 n) (A006012 n)

end

end A084154.P13071952571737132437

namespace A084154

/-- `(A000129(n)*A007052(n))%A006012(n)` -/
def P13071952571737132437.Spec : Prop :=
  ∀ n, P13071952571737132437.a n = A084154 n

end A084154

/-!
# A084155: A Pell-related fourth-order recurrence.

The programs for A084155, the canonical program `A084155.P15414191081316675539` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A084155 has offset 0).

The definition of A084155 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A084155.P6454473313053033341

`((3+sqrt(2))^n+(3-sqrt(2))^n-(1+sqrt(2))^n-(1-sqrt(2))^n)/4`
-/

namespace A084155.P6454473313053033341
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((3 + Real.sqrt (2 : ℝ)) ^ n + (3 - Real.sqrt (2 : ℝ)) ^ n - (1 + Real.sqrt (2 : ℝ)) ^ n - (1 - Real.sqrt (2 : ℝ)) ^ n) / 4

end

end A084155.P6454473313053033341

namespace A084155

/-- `((3+sqrt(2))^n+(3-sqrt(2))^n-(1+sqrt(2))^n-(1-sqrt(2))^n)/4` -/
def P6454473313053033341.Spec : Prop :=
  ∀ n, P6454473313053033341.a n = (A084155 n : ℝ)

end A084155

/-! ## A084155.P15414191081316675539

`8*a(n-1)-18*a(n-2)+8*a(n-3)+7*a(n-4)` with `a(0)=0, a(1)=1, a(2)=4, a(3)=19`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A084155

/-- `8*a(n-1)-18*a(n-2)+8*a(n-3)+7*a(n-4)` -/
def P15414191081316675539.Spec : Prop :=
  ∀ n, P15414191081316675539.a n = A084155 n

theorem P15414191081316675539.correct : P15414191081316675539.Spec := by
  intro n
  simp only [A084155]

end A084155

/-! ## A084155.P10854109367229957495

`A014682(((3-sqrt(2))^n+(sqrt(2)+3)^n)/2-A001333(n))`
-/

namespace A084155.P10854109367229957495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (SequenceMachineLib.roundAway (((3 - Real.sqrt (2 : ℝ)) ^ n + (Real.sqrt (2 : ℝ) + 3) ^ n) / 2 - (A001333 n : ℝ))).toNat

end

end A084155.P10854109367229957495

namespace A084155

/-- `A014682(((3-sqrt(2))^n+(sqrt(2)+3)^n)/2-A001333(n))` -/
def P10854109367229957495.Spec : Prop :=
  ∀ n, P10854109367229957495.a n = A084155 n

end A084155

/-!
# A084156: Binomial transform of sinh(x)*cosh(sqrt(3)*x).

The programs for A084156, the canonical program `A084156.P13449467701169593698` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A084156 has offset 0).

The definition of A084156 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A084156.P13449467701169593698

`4*a(n-1)+2*a(n-2)-12*a(n-3)+3*a(n-4)` with `a(0)=0, a(1)=1, a(2)=2, a(3)=13`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A084156

/-- `4*a(n-1)+2*a(n-2)-12*a(n-3)+3*a(n-4)` -/
def P13449467701169593698.Spec : Prop :=
  ∀ n, P13449467701169593698.a n = A084156 n

theorem P13449467701169593698.correct : P13449467701169593698.Spec := by
  intro n
  simp only [A084156]

end A084156

/-! ## A084156.P17498677336948685757

`(A001075(n)-A254006(n))/2`
-/

namespace A084156.P17498677336948685757
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001075 n - A254006 n : ℚ) / 2

end

end A084156.P17498677336948685757

namespace A084156

/-- `(A001075(n)-A254006(n))/2` -/
def P17498677336948685757.Spec : Prop :=
  ∀ n, P17498677336948685757.a n = (A084156 n : ℚ)

end A084156

/-! ## A084156.P13303154247251922695

`((2+sqrt(3))^n+(2-sqrt(3))^n-sqrt(3)^n-(-sqrt(3))^n)/4`
-/

namespace A084156.P13303154247251922695
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((2 + Real.sqrt (3 : ℝ)) ^ n + (2 - Real.sqrt (3 : ℝ)) ^ n - Real.sqrt (3 : ℝ) ^ n - (-Real.sqrt (3 : ℝ)) ^ n) / 4

end

end A084156.P13303154247251922695

namespace A084156

/-- `((2+sqrt(3))^n+(2-sqrt(3))^n-sqrt(3)^n-(-sqrt(3))^n)/4` -/
def P13303154247251922695.Spec : Prop :=
  ∀ n, P13303154247251922695.a n = (A084156 n : ℝ)

end A084156

/-! ## A084156.P12343202700385298059

`A014682(A121401(n)-1-sqrt(3*(n+1)%2)^n)`
-/

namespace A084156.P12343202700385298059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (SequenceMachineLib.roundAway ((A121401 n - 1 : ℝ) - Real.sqrt ((3 * ((n + 1) % 2) : ℕ) : ℝ) ^ n)).toNat

end

end A084156.P12343202700385298059

namespace A084156

/-- `A014682(A121401(n)-1-sqrt(3*(n+1)%2)^n)` -/
def P12343202700385298059.Spec : Prop :=
  ∀ n, P12343202700385298059.a n = A084156 n

end A084156

/-! ## A084156.P12874586726288289050

`A014682(A001075(n)-A254006(n))`
-/

namespace A084156.P12874586726288289050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A001075 n - A254006 n).toNat

end

end A084156.P12874586726288289050

namespace A084156

/-- `A014682(A001075(n)-A254006(n))` -/
def P12874586726288289050.Spec : Prop :=
  ∀ n, P12874586726288289050.a n = A084156 n

end A084156

/-!
# A084157: a(n) = 8*a(n-1) - 16*a(n-2) + 12*a(n-4) with a(0)=0, a(1)=1, a(2)=4, a(3)=22.

The programs for A084157, the canonical program `A084157.P518419611300703593` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A084157 has offset 0).

The definition of A084157 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `8*a(n-1)-16*a(n-2)+12*a(n-4)` (program `A084157.P518419611300703593`, by `A084157.P518419611300703593.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A084157.P518419611300703593

`8*a(n-1)-16*a(n-2)+12*a(n-4)` with `a(0)=0, a(1)=1, a(2)=4, a(3)=22`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A084157

/-- `8*a(n-1)-16*a(n-2)+12*a(n-4)` -/
def P518419611300703593.Spec : Prop :=
  ∀ n, P518419611300703593.a n = A084157 n

theorem P518419611300703593.correct : P518419611300703593.Spec := by
  intro n
  simp only [A084157]

end A084157

/-! ## A084157.P3273129769378859437

`(A083881(n)-A026150(n))/2`
-/

namespace A084157.P3273129769378859437
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A083881 n - A026150 n : ℚ) / 2

end

end A084157.P3273129769378859437

namespace A084157

/-- `(A083881(n)-A026150(n))/2` -/
def P3273129769378859437.Spec : Prop :=
  ∀ n, P3273129769378859437.a n = (A084157 n : ℚ)

end A084157

/-! ## A084157.P14248521030593176106

`((3+sqrt(3))^n+(3-sqrt(3))^n-(1+sqrt(3))^n-(1-sqrt(3))^n)/4`
-/

namespace A084157.P14248521030593176106
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((3 + Real.sqrt (3 : ℝ)) ^ n + (3 - Real.sqrt (3 : ℝ)) ^ n - (1 + Real.sqrt (3 : ℝ)) ^ n - (1 - Real.sqrt (3 : ℝ)) ^ n) / 4

end

end A084157.P14248521030593176106

namespace A084157

/-- `((3+sqrt(3))^n+(3-sqrt(3))^n-(1+sqrt(3))^n-(1-sqrt(3))^n)/4` -/
def P14248521030593176106.Spec : Prop :=
  ∀ n, P14248521030593176106.a n = (A084157 n : ℝ)

end A084157

/-! ## A084157.P15061088458009267964

`A014682(A083881(n)-A026150(n))`
-/

namespace A084157.P15061088458009267964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A083881 n - A026150 n).toNat

end

end A084157.P15061088458009267964

namespace A084157

/-- `A014682(A083881(n)-A026150(n))` -/
def P15061088458009267964.Spec : Prop :=
  ∀ n, P15061088458009267964.a n = A084157 n

end A084157

/-!
# A084158: a(n) = A000129(n) * A000129(n+1)/2.

The programs for A084158, the canonical program `A084158.P3989063176071994718` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A084158 has offset 0).

The definition of A084158 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A084158.P3989063176071994718

`6*a(n-1)-a(n-2)-(-1)^n` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A084158

/-- `6*a(n-1)-a(n-2)-(-1)^n` -/
def P3989063176071994718.Spec : Prop :=
  ∀ n, P3989063176071994718.a n = A084158 n

theorem P3989063176071994718.correct : P3989063176071994718.Spec := by
  intro n
  simp only [A084158]

end A084158

/-! ## A084158.P14098517391587620181

`5*a(n-1)+5*a(n-2)-a(n-3)` with `a(0)=0, a(1)=1, a(2)=5`
-/

namespace A084158.P14098517391587620181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 5] fun n a =>
  5 * a (n - 1) + 5 * a (n - 2) - a (n - 3)

end

end A084158.P14098517391587620181

namespace A084158

/-- `5*a(n-1)+5*a(n-2)-a(n-3)` -/
def P14098517391587620181.Spec : Prop :=
  ∀ n, P14098517391587620181.a n = A084158 n

end A084158

/-! ## A084158.P6501783894695631658

`A000129(n)*A000129(n+1)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A084158.P6501783894695631658
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000129 n * A000129 (n + 1) : ℚ) / 2

end

end A084158.P6501783894695631658

namespace A084158

/-- `A000129(n)*A000129(n+1)/2` -/
def P6501783894695631658.Spec : Prop :=
  ∀ n, P6501783894695631658.a n = (A084158 n : ℚ)

end A084158

/-! ## A084158.P9963226679750058092

`((sqrt(2)+1)^(2*n+1)-(sqrt(2)-1)^(2*n+1)-2*(-1)^n)/16`
-/

namespace A084158.P9963226679750058092
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((Real.sqrt (2 : ℝ) + 1) ^ (2 * n + 1) - (Real.sqrt (2 : ℝ) - 1) ^ (2 * n + 1) - (2 * (-1) ^ n : ℝ)) / 16

end

end A084158.P9963226679750058092

namespace A084158

/-- `((sqrt(2)+1)^(2*n+1)-(sqrt(2)-1)^(2*n+1)-2*(-1)^n)/16` -/
def P9963226679750058092.Spec : Prop :=
  ∀ n, P9963226679750058092.a n = (A084158 n : ℝ)

end A084158

/-! ## A084158.P4649013237188107382

`ogf(x/(1-5x-5x^2+x^3))`
-/

namespace A084158.P4649013237188107382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1] [1, -5, -5, 1] n

end

end A084158.P4649013237188107382

namespace A084158

/-- `ogf(x/(1-5x-5x^2+x^3))` -/
def P4649013237188107382.Spec : Prop :=
  ∀ n, P4649013237188107382.a n = A084158 n

end A084158

/-! ## A084158.P12330747254140276740

`floor(a(n-1)/(3-sqrt(8)))+n%2` with `a(0)=0`
-/

namespace A084158.P12330747254140276740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  ⌊(a (n - 1) : ℝ) / (3 - Real.sqrt (8 : ℝ))⌋ + ((n % 2 : ℕ) : ℤ)

end

end A084158.P12330747254140276740

namespace A084158

/-- `floor(a(n-1)/(3-sqrt(8)))+n%2` -/
def P12330747254140276740.Spec : Prop :=
  ∀ n, P12330747254140276740.a n = A084158 n

end A084158

/-! ## A084158.P15964885999265313405

`∑[∑[a(n-2)+2*a(n-1)]²]` with `a(0)=0, a(1)=1, a(2)=1`
-/

namespace A084158.P15964885999265313405
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 1] fun n f2 =>
  f2 (n - 2) + 2 * f2 (n - 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A084158.P15964885999265313405

namespace A084158

/-- `∑[∑[a(n-2)+2*a(n-1)]²]` -/
def P15964885999265313405.Spec : Prop :=
  ∀ n, (P15964885999265313405.a n : ℤ) = A084158 n

end A084158

/-! ## A084158.P4806022193882948537

`5*(a(n-1)+a(n-2))-a(n-3)` with `a(0)=0, a(1)=1, a(2)=5`
-/

namespace A084158.P4806022193882948537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 5] fun n a =>
  5 * (a (n - 1) + a (n - 2)) - a (n - 3)

end

end A084158.P4806022193882948537

namespace A084158

/-- `5*(a(n-1)+a(n-2))-a(n-3)` -/
def P4806022193882948537.Spec : Prop :=
  ∀ n, P4806022193882948537.a n = A084158 n

end A084158

/-! ## A084158.P17918663051772008818

`∑[((lcm(2, round((sqrt(2)+1)^n))/2)²-(-1)^n)/2]`
-/

namespace A084158.P17918663051772008818
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((Int.lcm 2 (SequenceMachineLib.roundAway ((Real.sqrt (2 : ℝ) + 1) ^ n)) : ℚ) / 2) ^ 2 - ((-1) ^ n : ℚ)) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A084158.P17918663051772008818

namespace A084158

/-- `∑[((lcm(2, round((sqrt(2)+1)^n))/2)²-(-1)^n)/2]` -/
def P17918663051772008818.Spec : Prop :=
  ∀ n, P17918663051772008818.a n = (A084158 n : ℚ)

end A084158

/-! ## A084158.P2517495532223625050

`∑[A079291(n)]`
-/

namespace A084158.P2517495532223625050
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079291 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A084158.P2517495532223625050

namespace A084158

/-- `∑[A079291(n)]` -/
def P2517495532223625050.Spec : Prop :=
  ∀ n, P2517495532223625050.a n = A084158 n

end A084158

/-! ## A084158.P3370923612923311322

`∑[A000129(n)²]`
-/

namespace A084158.P3370923612923311322
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000129 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A084158.P3370923612923311322

namespace A084158

/-- `∑[A000129(n)²]` -/
def P3370923612923311322.Spec : Prop :=
  ∀ n, P3370923612923311322.a n = A084158 n

end A084158

/-! ## A084158.P11642989479053915262

`∑[A114619(n)/2]`
-/

namespace A084158.P11642989479053915262
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A114619 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A084158.P11642989479053915262

namespace A084158

/-- `∑[A114619(n)/2]` -/
def P11642989479053915262.Spec : Prop :=
  ∀ n, P11642989479053915262.a n = (A084158 n : ℚ)

end A084158

/-! ## A084158.P2595994200576041931

`∑[Δ[A171842(n)]²]`
-/

namespace A084158.P2595994200576041931
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171842 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A084158.P2595994200576041931

namespace A084158

/-- `∑[Δ[A171842(n)]²]` -/
def P2595994200576041931.Spec : Prop :=
  ∀ n, P2595994200576041931.a n = A084158 n

end A084158

/-! ## A084158.P8868029083217047023

`∑[A176981(n+1)²]`
-/

namespace A084158.P8868029083217047023
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176981 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A084158.P8868029083217047023

namespace A084158

/-- `∑[A176981(n+1)²]` -/
def P8868029083217047023.Spec : Prop :=
  ∀ n, P8868029083217047023.a n = A084158 n

end A084158

/-! ## A084158.P16128760031641285755

`∑[(1-A174191(n))²]`
-/

namespace A084158.P16128760031641285755
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A174191 n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A084158.P16128760031641285755

namespace A084158

/-- `∑[(1-A174191(n))²]` -/
def P16128760031641285755.Spec : Prop :=
  ∀ n, P16128760031641285755.a n = A084158 n

end A084158

/-! ## A084158.P10597308913115038307

`∑[A215928(n)²]-1`
-/

namespace A084158.P10597308913115038307
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215928 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A084158.P10597308913115038307

namespace A084158

/-- `∑[A215928(n)²]-1` -/
def P10597308913115038307.Spec : Prop :=
  ∀ n, P10597308913115038307.a n = A084158 n

end A084158

/-! ## A084158.P5205091491530633543

`∑[A215936(n+2)²]`
-/

namespace A084158.P5205091491530633543
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215936 (n + 2) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A084158.P5205091491530633543

namespace A084158

/-- `∑[A215936(n+2)²]` -/
def P5205091491530633543.Spec : Prop :=
  ∀ n, P5205091491530633543.a n = A084158 n

end A084158

/-! ## A084158.P7652178972419475552

`∑[A002965(2*n)²]`
-/

namespace A084158.P7652178972419475552
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002965 (2 * n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A084158.P7652178972419475552

namespace A084158

/-- `∑[A002965(2*n)²]` -/
def P7652178972419475552.Spec : Prop :=
  ∀ n, P7652178972419475552.a n = A084158 n

end A084158

/-! ## A084158.P5879982189575954239

`∑[A116558(2*n)²]`
-/

namespace A084158.P5879982189575954239
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116558 (2 * n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A084158.P5879982189575954239

namespace A084158

/-- `∑[A116558(2*n)²]` -/
def P5879982189575954239.Spec : Prop :=
  ∀ n, P5879982189575954239.a n = A084158 n

end A084158

/-! ## A084158.P4280657247563915275

`∑[A135153(2*n)²]`
-/

namespace A084158.P4280657247563915275
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135153 (2 * n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A084158.P4280657247563915275

namespace A084158

/-- `∑[A135153(2*n)²]` -/
def P4280657247563915275.Spec : Prop :=
  ∀ n, P4280657247563915275.a n = A084158 n

end A084158

/-!
# A084159: Pell oblongs.

The programs for A084159, the canonical program `A084159.P5402543856181824921` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A084159 has offset 0).

The definition of A084159 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A084159.P5402543856181824921

`6*a(n-1)-a(n-2)+4*(-1)^n` with `a(0)=1, a(1)=3`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A084159

/-- `6*a(n-1)-a(n-2)+4*(-1)^n` -/
def P5402543856181824921.Spec : Prop :=
  ∀ n, P5402543856181824921.a n = A084159 n

theorem P5402543856181824921.correct : P5402543856181824921.Spec := by
  intro n
  simp only [A084159]

end A084159

/-! ## A084159.P13284948454939039075

`5*a(n-1)+5*a(n-2)-a(n-3)` with `a(0)=1, a(1)=3, a(2)=21`
-/

namespace A084159.P13284948454939039075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3, 21] fun n a =>
  5 * a (n - 1) + 5 * a (n - 2) - a (n - 3)

end

end A084159.P13284948454939039075

namespace A084159

/-- `5*a(n-1)+5*a(n-2)-a(n-3)` -/
def P13284948454939039075.Spec : Prop :=
  ∀ n, P13284948454939039075.a n = A084159 n

end A084159

/-! ## A084159.P7472389216194832464

`A078057(n)*A001333(n)`
-/

namespace A084159.P7472389216194832464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078057 n * A001333 n

end

end A084159.P7472389216194832464

namespace A084159

/-- `A078057(n)*A001333(n)` -/
def P7472389216194832464.Spec : Prop :=
  ∀ n, P7472389216194832464.a n = A084159 n

end A084159

/-! ## A084159.P18091527871275794171

`A001333(n)*A001333(n+1)`
-/

namespace A084159.P18091527871275794171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001333 n * A001333 (n + 1)

end

end A084159.P18091527871275794171

namespace A084159

/-- `A001333(n)*A001333(n+1)` -/
def P18091527871275794171.Spec : Prop :=
  ∀ n, P18091527871275794171.a n = A084159 n

end A084159

/-! ## A084159.P1263413043169525492

`ogf((1-2x+x^2)/(1-5x-5x^2+x^3))`
-/

namespace A084159.P1263413043169525492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -2, 1] [1, -5, -5, 1] n

end

end A084159.P1263413043169525492

namespace A084159

/-- `ogf((1-2x+x^2)/(1-5x-5x^2+x^3))` -/
def P1263413043169525492.Spec : Prop :=
  ∀ n, P1263413043169525492.a n = A084159 n

end A084159

/-! ## A084159.P9655309927571924887

`ceil(ceil(∑[((sqrt(2)+1)^n)²])/2)-n%2`
-/

namespace A084159.P9655309927571924887
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((Real.sqrt (2 : ℝ) + 1) ^ n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(⌈∑ j ∈ Finset.range (n + 1), f1 j⌉ : ℚ) / 2⌉ - ((n % 2 : ℕ) : ℤ)

end

end A084159.P9655309927571924887

namespace A084159

/-- `ceil(ceil(∑[((sqrt(2)+1)^n)²])/2)-n%2` -/
def P9655309927571924887.Spec : Prop :=
  ∀ n, P9655309927571924887.a n = A084159 n

end A084159

/-! ## A084159.P5948261912326242794

`Δ[((lcm(2, round((sqrt(2)+1)^n))/2)²-(-1)^n)/2]`
-/

namespace A084159.P5948261912326242794
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((Int.lcm 2 (SequenceMachineLib.roundAway ((Real.sqrt (2 : ℝ) + 1) ^ n)) : ℚ) / 2) ^ 2 - ((-1) ^ n : ℚ)) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A084159.P5948261912326242794

namespace A084159

/-- `Δ[((lcm(2, round((sqrt(2)+1)^n))/2)²-(-1)^n)/2]` -/
def P5948261912326242794.Spec : Prop :=
  ∀ n, P5948261912326242794.a n = (A084159 n : ℚ)

end A084159

/-! ## A084159.P16797125928923795151

`((sqrt(2)+1)^(2*n+1)-(sqrt(2)-1)^(2*n+1)+2*(-1)^n)/4`
-/

namespace A084159.P16797125928923795151
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((Real.sqrt (2 : ℝ) + 1) ^ (2 * n + 1) - (Real.sqrt (2 : ℝ) - 1) ^ (2 * n + 1) + (2 * (-1) ^ n : ℝ)) / 4

end

end A084159.P16797125928923795151

namespace A084159

/-- `((sqrt(2)+1)^(2*n+1)-(sqrt(2)-1)^(2*n+1)+2*(-1)^n)/4` -/
def P16797125928923795151.Spec : Prop :=
  ∀ n, P16797125928923795151.a n = (A084159 n : ℝ)

end A084159

/-! ## A084159.P4464547128064383898

`Δ[A079291(n)]`
-/

namespace A084159.P4464547128064383898
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079291 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A084159.P4464547128064383898

namespace A084159

/-- `Δ[A079291(n)]` -/
def P4464547128064383898.Spec : Prop :=
  ∀ n, P4464547128064383898.a n = A084159 n

end A084159

/-! ## A084159.P4563416016913647124

`or(1, A001652(n))`
-/

namespace A084159.P4563416016913647124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A001652 n)

end

end A084159.P4563416016913647124

namespace A084159

/-- `or(1, A001652(n))` -/
def P4563416016913647124.Spec : Prop :=
  ∀ n, P4563416016913647124.a n = A084159 n

end A084159

/-! ## A084159.P17627362653313365376

`or(1, A046727(n))`
-/

namespace A084159.P17627362653313365376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A046727 n)

end

end A084159.P17627362653313365376

namespace A084159

/-- `or(1, A046727(n))` -/
def P17627362653313365376.Spec : Prop :=
  ∀ n, P17627362653313365376.a n = A084159 n

end A084159

/-! ## A084159.P9293619203749028385

`Δ[A000129(n)²]`
-/

namespace A084159.P9293619203749028385
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000129 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A084159.P9293619203749028385

namespace A084159

/-- `Δ[A000129(n)²]` -/
def P9293619203749028385.Spec : Prop :=
  ∀ n, P9293619203749028385.a n = A084159 n

end A084159

/-! ## A084159.P18022856098060845799

`Δ[A114619(n)/2]`
-/

namespace A084159.P18022856098060845799
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A114619 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A084159.P18022856098060845799

namespace A084159

/-- `Δ[A114619(n)/2]` -/
def P18022856098060845799.Spec : Prop :=
  ∀ n, P18022856098060845799.a n = (A084159 n : ℚ)

end A084159

/-! ## A084159.P6404286478372483203

`Δ[Δ[A171842(n)]²]`
-/

namespace A084159.P6404286478372483203
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171842 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A084159.P6404286478372483203

namespace A084159

/-- `Δ[Δ[A171842(n)]²]` -/
def P6404286478372483203.Spec : Prop :=
  ∀ n, P6404286478372483203.a n = A084159 n

end A084159

/-! ## A084159.P4886685802658893046

`or(1, A046090(n)-1)`
-/

namespace A084159.P4886685802658893046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A046090 n - 1)

end

end A084159.P4886685802658893046

namespace A084159

/-- `or(1, A046090(n)-1)` -/
def P4886685802658893046.Spec : Prop :=
  ∀ n, P4886685802658893046.a n = A084159 n

end A084159

/-! ## A084159.P9985283037457624959

`Δ[A176981(n+1)²]`
-/

namespace A084159.P9985283037457624959
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176981 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A084159.P9985283037457624959

namespace A084159

/-- `Δ[A176981(n+1)²]` -/
def P9985283037457624959.Spec : Prop :=
  ∀ n, P9985283037457624959.a n = A084159 n

end A084159

/-! ## A084159.P5416793191882971071

`Δ[(1-A174191(n))²]`
-/

namespace A084159.P5416793191882971071
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A174191 n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A084159.P5416793191882971071

namespace A084159

/-- `Δ[(1-A174191(n))²]` -/
def P5416793191882971071.Spec : Prop :=
  ∀ n, P5416793191882971071.a n = A084159 n

end A084159

/-! ## A084159.P5037680088633920567

`Δ[A215936(n+2)²]`
-/

namespace A084159.P5037680088633920567
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215936 (n + 2) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A084159.P5037680088633920567

namespace A084159

/-- `Δ[A215936(n+2)²]` -/
def P5037680088633920567.Spec : Prop :=
  ∀ n, P5037680088633920567.a n = A084159 n

end A084159

/-! ## A084159.P11258004632349204093

`Δ[A002965(2*n)²]`
-/

namespace A084159.P11258004632349204093
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002965 (2 * n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A084159.P11258004632349204093

namespace A084159

/-- `Δ[A002965(2*n)²]` -/
def P11258004632349204093.Spec : Prop :=
  ∀ n, P11258004632349204093.a n = A084159 n

end A084159

/-! ## A084159.P9064143032507801462

`Δ[A116558(2*n)²]`
-/

namespace A084159.P9064143032507801462
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116558 (2 * n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A084159.P9064143032507801462

namespace A084159

/-- `Δ[A116558(2*n)²]` -/
def P9064143032507801462.Spec : Prop :=
  ∀ n, P9064143032507801462.a n = A084159 n

end A084159

/-!
# A084160: First occurrence prime gaps of the primes in sequence A002313 (Real primes with corresponding complex primes). a(0) = 2 with length of gap 3. For n>0 the size of the gap in the sequence is 4n, a(n) is the starting prime of the gap.

The programs for A084160, there is no canonical definition to state claims against.
-/

/-! ## A084160.P4843138360356617339

`A241758(A241726(2*n+1)*A241739(n+1))`
-/

namespace A084160.P4843138360356617339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241758 (A241726 (2 * n + 1 + 36) * A241739 (n + 1)).toNat

end

end A084160.P4843138360356617339

/-!
# A084161: Primes that are the sum of two squares and which set a record for the gap to the next prime of that form.

The programs for A084161, there is no canonical definition to state claims against.
-/

/-! ## A084161.P13803502507995192929

`A268963(n)-A084162(n)`
-/

namespace A084161.P13803502507995192929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268963 n - A084162 n

end

end A084161.P13803502507995192929

/-! ## A084161.P1131017130243044525

`A084160(floor(A084162(n)/4))`
-/

namespace A084161.P1131017130243044525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084160 ⌊(A084162 n : ℚ) / 4⌋.toNat

end

end A084161.P1131017130243044525

/-! ## A084161.P9792712669306434840

`A268963(n)-record[Δ[A002313(n+1)]]`
-/

namespace A084161.P9792712669306434840
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002313 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268963 n - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A084161.P9792712669306434840

/-! ## A084161.P8709433802158985862

`A268963(n)-record[A002144(n+1)-A002313(n+1)]`
-/

namespace A084161.P8709433802158985862
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002144 (n + 1) - A002313 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268963 n - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A084161.P8709433802158985862

/-! ## A084161.P223060383093516699

`A268963(n)-record[A002313(n+2)-A002313(n+1)]`
-/

namespace A084161.P223060383093516699
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002313 (n + 2) - A002313 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268963 n - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A084161.P223060383093516699

/-!
# A084162: a(n) is the length of the gap in sequence A084161.

The programs for A084162, there is no canonical definition to state claims against.
-/

/-! ## A084162.P12255148349024667881

`A268963(n)-A084161(n)`
-/

namespace A084162.P12255148349024667881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268963 n - A084161 n

end

end A084162.P12255148349024667881

/-! ## A084162.P13596482081243141501

`record[A002144(n+1)-A002313(n+1)]`
-/

namespace A084162.P13596482081243141501
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002144 (n + 1) - A002313 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A084162.P13596482081243141501

/-! ## A084162.P3681954532082345382

`record[A002313(n+2)-A002313(n+1)]`
-/

namespace A084162.P3681954532082345382
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002313 (n + 2) - A002313 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A084162.P3681954532082345382

/-! ## A084162.P1234950839619430718

`record[A002144(n+1)-floor(A294091(n+1)/2)]`
-/

namespace A084162.P1234950839619430718
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002144 (n + 1) - ⌊(A294091 (n + 1) : ℚ) / 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A084162.P1234950839619430718

/-! ## A084162.P14110424139473190275

`record[A280084(n+2)-floor(A294091(n+1)/2)]`
-/

namespace A084162.P14110424139473190275
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280084 (n + 2) - ⌊(A294091 (n + 1) : ℚ) / 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A084162.P14110424139473190275

/-!
# A084163: Primes which are -1 (mod m), where m is the index of the prime in sequence A002313 (Real primes with corresponding complex primes).

The programs for A084163, there is no canonical definition to state claims against.
-/

/-! ## A084163.P1132306834844271437

`A002313(A084164(n+1))`
-/

namespace A084163.P1132306834844271437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002313 (A084164 (n + 1)).toNat

end

end A084163.P1132306834844271437

/-! ## A084163.P13553321019933326277

`A091653(A220946(n))`
-/

namespace A084163.P13553321019933326277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091653 (A220946 n).toNat

end

end A084163.P13553321019933326277

/-!
# A084164: Index of the primes in A084163.

The programs for A084164, there is no canonical definition to state claims against.
-/

/-! ## A084164.P12397315298342766949

`A332897(A084163(n+1))`
-/

namespace A084164.P12397315298342766949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332897 (A084163 (n + 1)).toNat

end

end A084164.P12397315298342766949

/-! ## A084164.P14127731588486935384

`A066339(A084163(n+1)+1)+1`
-/

namespace A084164.P14127731588486935384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066339 (A084163 (n + 1) + 1).toNat + 1

end

end A084164.P14127731588486935384

/-!
# A084165: Primes which are 1 (mod m), where m is the index of the prime in sequence A002313 (Real primes with corresponding complex primes).

The programs for A084165, there is no canonical definition to state claims against.
-/

/-! ## A084165.P13072384963619014714

`A002313(A084166(n+1))`
-/

namespace A084165.P13072384963619014714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002313 (A084166 (n + 1)).toNat

end

end A084165.P13072384963619014714

/-!
# A084166: Index of the primes in A084165.

The programs for A084166, there is no canonical definition to state claims against.
-/

/-! ## A084166.P13667716906597224392

`A332897(A084165(n+1))`
-/

namespace A084166.P13667716906597224392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332897 (A084165 (n + 1)).toNat

end

end A084166.P13667716906597224392

/-! ## A084166.P14730968306180122870

`A066339(A084165(n+1)+1)+1`
-/

namespace A084166.P14730968306180122870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066339 (A084165 (n + 1) + 1).toNat + 1

end

end A084166.P14730968306180122870

/-!
# A084167: Numbers k in A002313 such that the count of primitive roots of k (A084168) are also in sequence A002313, where A002313 is the list of primes p having a unique representation as the sum of two squares, p = x^2 + y^2.

The programs for A084167, there is no canonical definition to state claims against.
-/

/-! ## A084167.P12226436317908716499

`A246333(A002524(n)*A009223(n+4))`
-/

namespace A084167.P12226436317908716499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246333 (A002524 n * A009223 (n + 4)).toNat

end

end A084167.P12226436317908716499

/-!
# A084169: A Pell Jacobsthal product.

The programs for A084169, the canonical program `A084169.P7090051231565700772` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A084169 has offset 0).

The definition of A084169 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A084169.P7090051231565700772

`A001045(n)*A000129(n)`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A084169

/-- `A001045(n)*A000129(n)` -/
def P7090051231565700772.Spec : Prop :=
  ∀ n, P7090051231565700772.a n = A084169 n

theorem P7090051231565700772.correct : P7090051231565700772.Spec := by
  intro n
  simp only [A084169]

end A084169

/-! ## A084169.P5893898971246715712

`(2^n-(-1)^n)*((1+sqrt(2))^n-(1-sqrt(2))^n)/(6*sqrt(2))`
-/

namespace A084169.P5893898971246715712
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((2 ^ n : ℤ) - (-1) ^ n : ℝ) * ((1 + Real.sqrt (2 : ℝ)) ^ n - (1 - Real.sqrt (2 : ℝ)) ^ n) / (6 * Real.sqrt (2 : ℝ))

end

end A084169.P5893898971246715712

namespace A084169

/-- `(2^n-(-1)^n)*((1+sqrt(2))^n-(1-sqrt(2))^n)/(6*sqrt(2))` -/
def P5893898971246715712.Spec : Prop :=
  ∀ n, P5893898971246715712.a n = (A084169 n : ℝ)

end A084169

/-! ## A084169.P8690175370752038760

`A000129(n)*A152046(n)`
-/

namespace A084169.P8690175370752038760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000129 n * A152046 n

end

end A084169.P8690175370752038760

namespace A084169

/-- `A000129(n)*A152046(n)` -/
def P8690175370752038760.Spec : Prop :=
  ∀ n, P8690175370752038760.a n = A084169 n

end A084169

/-! ## A084169.P2006345759113628040

`A000129(n)*A167167(n)`
-/

namespace A084169.P2006345759113628040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000129 n * A167167 n

end

end A084169.P2006345759113628040

namespace A084169

/-- `A000129(n)*A167167(n)` -/
def P2006345759113628040.Spec : Prop :=
  ∀ n, P2006345759113628040.a n = A084169 n

end A084169

/-! ## A084169.P12173081618997358397

`A001045(n)*A215928(n)`
-/

namespace A084169.P12173081618997358397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001045 n * A215928 n

end

end A084169.P12173081618997358397

namespace A084169

/-- `A001045(n)*A215928(n)` -/
def P12173081618997358397.Spec : Prop :=
  ∀ n, P12173081618997358397.a n = A084169 n

end A084169

/-! ## A084169.P7705559382163183849

`A152118(n)*A193652(n)`
-/

namespace A084169.P7705559382163183849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152118 n * A193652 n

end

end A084169.P7705559382163183849

namespace A084169

/-- `A152118(n)*A193652(n)` -/
def P7705559382163183849.Spec : Prop :=
  ∀ n, P7705559382163183849.a n = A084169 n

end A084169

/-! ## A084169.P3527354805425435591

`Δ[A171842(n)]*A001045(n)`
-/

namespace A084169.P3527354805425435591
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171842 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A001045 n

end

end A084169.P3527354805425435591

namespace A084169

/-- `Δ[A171842(n)]*A001045(n)` -/
def P3527354805425435591.Spec : Prop :=
  ∀ n, P3527354805425435591.a n = A084169 n

end A084169

/-! ## A084169.P6774786002563540003

`A000129(n)*A328284(n+3)`
-/

namespace A084169.P6774786002563540003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000129 n * A328284 (n + 3)

end

end A084169.P6774786002563540003

namespace A084169

/-- `A000129(n)*A328284(n+3)` -/
def P6774786002563540003.Spec : Prop :=
  ∀ n, P6774786002563540003.a n = A084169 n

end A084169

/-! ## A084169.P15653307259141417517

`A001045(n)*A002965(2*n)`
-/

namespace A084169.P15653307259141417517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001045 n * A002965 (2 * n)

end

end A084169.P15653307259141417517

namespace A084169

/-- `A001045(n)*A002965(2*n)` -/
def P15653307259141417517.Spec : Prop :=
  ∀ n, P15653307259141417517.a n = A084169 n

end A084169

/-! ## A084169.P15064728618711720870

`A001045(n)*A116558(2*n)`
-/

namespace A084169.P15064728618711720870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001045 n * A116558 (2 * n)

end

end A084169.P15064728618711720870

namespace A084169

/-- `A001045(n)*A116558(2*n)` -/
def P15064728618711720870.Spec : Prop :=
  ∀ n, P15064728618711720870.a n = A084169 n

end A084169

/-! ## A084169.P1625910134111156892

`A001045(n)*A135153(2*n)`
-/

namespace A084169.P1625910134111156892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001045 n * A135153 (2 * n)

end

end A084169.P1625910134111156892

namespace A084169

/-- `A001045(n)*A135153(2*n)` -/
def P1625910134111156892.Spec : Prop :=
  ∀ n, P1625910134111156892.a n = A084169 n

end A084169

/-! ## A084169.P16468906399410728697

`Δ[A005578(n)]*A002965(2*n)`
-/

namespace A084169.P16468906399410728697
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005578 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A002965 (2 * n)

end

end A084169.P16468906399410728697

namespace A084169

/-- `Δ[A005578(n)]*A002965(2*n)` -/
def P16468906399410728697.Spec : Prop :=
  ∀ n, P16468906399410728697.a n = A084169 n

end A084169

/-! ## A084169.P12164084917268500453

`A163271(n+1)/2*A001045(n)`
-/

namespace A084169.P12164084917268500453
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A163271 (n + 1) : ℚ) / 2 * (A001045 n : ℚ)

end

end A084169.P12164084917268500453

namespace A084169

/-- `A163271(n+1)/2*A001045(n)` -/
def P12164084917268500453.Spec : Prop :=
  ∀ n, P12164084917268500453.a n = (A084169 n : ℚ)

end A084169

/-! ## A084169.P6502648165333230142

`round(A001333(n)/sqrt(2)*A001045(n))`
-/

namespace A084169.P6502648165333230142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A001333 n : ℝ) / Real.sqrt (2 : ℝ) * (A001045 n : ℝ))

end

end A084169.P6502648165333230142

namespace A084169

/-- `round(A001333(n)/sqrt(2)*A001045(n))` -/
def P6502648165333230142.Spec : Prop :=
  ∀ n, P6502648165333230142.a n = A084169 n

end A084169

/-! ## A084169.P17089152729145962598

`abs((2-A140966(n))*A249576(3*n))`
-/

namespace A084169.P17089152729145962598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(2 - A140966 n) * A249576 (3 * n)|

end

end A084169.P17089152729145962598

namespace A084169

/-- `abs((2-A140966(n))*A249576(3*n))` -/
def P17089152729145962598.Spec : Prop :=
  ∀ n, P17089152729145962598.a n = A084169 n

end A084169

/-! ## A084169.P1635249265461511919

`(A097075(n+1)-A097076(n))*A001045(n)`
-/

namespace A084169.P1635249265461511919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A097075 (n + 1) - A097076 n) * A001045 n

end

end A084169.P1635249265461511919

namespace A084169

/-- `(A097075(n+1)-A097076(n))*A001045(n)` -/
def P1635249265461511919.Spec : Prop :=
  ∀ n, P1635249265461511919.a n = A084169 n

end A084169

/-! ## A084169.P15064777478647333426

`A000129(n)*A155118(A000096(n)-n)`
-/

namespace A084169.P15064777478647333426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000129 n * A155118 (A000096 n - (n : ℤ)).toNat

end

end A084169.P15064777478647333426

namespace A084169

/-- `A000129(n)*A155118(A000096(n)-n)` -/
def P15064777478647333426.Spec : Prop :=
  ∀ n, P15064777478647333426.a n = A084169 n

end A084169

/-!
# A084170: a(n) = (5*2^n + (-1)^n - 3)/3.

The programs for A084170, the canonical program `A084170.P3384186663672245564` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A084170 has offset 0).

The definition of A084170 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(5*2^n+(-1)^n-3)/3` (program `A084170.P17791206121429673391`, by `A084170.P17791206121429673391.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A084170.P3384186663672245564

`a(n-1)+2*a(n-2)+2` with `a(0)=1, a(1)=2`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A084170

/-- `a(n-1)+2*a(n-2)+2` -/
def P3384186663672245564.Spec : Prop :=
  ∀ n, (P3384186663672245564.a n : ℤ) = A084170 n

theorem P3384186663672245564.correct : P3384186663672245564.Spec := by
  intro n
  simp only [A084170]

end A084170

/-! ## A084170.P13155477876516137131

`A000225(n+1)-A001045(n)`
-/

namespace A084170.P13155477876516137131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 (n + 1) - A001045 n

end

end A084170.P13155477876516137131

namespace A084170

/-- `A000225(n+1)-A001045(n)` -/
def P13155477876516137131.Spec : Prop :=
  ∀ n, P13155477876516137131.a n = A084170 n

end A084170

/-! ## A084170.P12576816691433438386

`2/3*(5*2^(n-1)-1-n%2)`
-/

namespace A084170.P12576816691433438386
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) / 3 * (5 * (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) - 1 - ((n % 2 : ℕ) : ℚ))

end

end A084170.P12576816691433438386

namespace A084170

/-- `2/3*(5*2^(n-1)-1-n%2)` -/
def P12576816691433438386.Spec : Prop :=
  ∀ n, P12576816691433438386.a n = (A084170 n : ℚ)

end A084170

/-! ## A084170.P5312524230758242881

`(5*2^n+(-1)^n)/3-1`
-/

namespace A084170.P5312524230758242881
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((5 * 2 ^ n : ℤ) + (-1) ^ n : ℚ) / 3 - 1

end

end A084170.P5312524230758242881

namespace A084170

/-- `(5*2^n+(-1)^n)/3-1` -/
def P5312524230758242881.Spec : Prop :=
  ∀ n, P5312524230758242881.a n = (A084170 n : ℚ)

theorem P5312524230758242881.correct : P5312524230758242881.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A084170, Nat.add_sub_cancel, A084170.P5312524230758242881.a, A084170.P3384186663672245564.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A084170, Nat.add_sub_cancel, A084170.P5312524230758242881.a, A084170.P3384186663672245564.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A084170

/-! ## A084170.P17791206121429673391

`(5*2^n+(-1)^n-3)/3`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A084170.P17791206121429673391
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((5 * 2 ^ n : ℤ) + (-1) ^ n - 3 : ℚ) / 3

end

end A084170.P17791206121429673391

namespace A084170

/-- `(5*2^n+(-1)^n-3)/3` -/
def P17791206121429673391.Spec : Prop :=
  ∀ n, P17791206121429673391.a n = (A084170 n : ℚ)

theorem P17791206121429673391.correct : P17791206121429673391.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A084170, Nat.add_sub_cancel, A084170.P17791206121429673391.a, A084170.P3384186663672245564.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A084170, Nat.add_sub_cancel, A084170.P17791206121429673391.a, A084170.P3384186663672245564.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A084170

/-! ## A084170.P10365284401189506014

`ogf((1+x^2)/(1-2x-x^2+2x^3))`
-/

namespace A084170.P10365284401189506014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 0, 1] [1, -2, -1, 2] n

end

end A084170.P10365284401189506014

namespace A084170

/-- `ogf((1+x^2)/(1-2x-x^2+2x^3))` -/
def P10365284401189506014.Spec : Prop :=
  ∀ n, P10365284401189506014.a n = A084170 n

end A084170

/-! ## A084170.P929327869657127892

`2*(∑[(-1)^n]+a(n-1))` with `a(0)=1`
-/

namespace A084170.P929327869657127892
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 * (∑ j ∈ Finset.range (n + 1), f1 j + a (n - 1))

end

end A084170.P929327869657127892

namespace A084170

/-- `2*(∑[(-1)^n]+a(n-1))` -/
def P929327869657127892.Spec : Prop :=
  ∀ n, P929327869657127892.a n = A084170 n

end A084170

/-! ## A084170.P12039601640188161970

`2*(1-(n%2-a(n-1)))` with `a(0)=1`
-/

namespace A084170.P12039601640188161970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 * (1 - (((n % 2 : ℕ) : ℤ) - a (n - 1)))

end

end A084170.P12039601640188161970

namespace A084170

/-- `2*(1-(n%2-a(n-1)))` -/
def P12039601640188161970.Spec : Prop :=
  ∀ n, P12039601640188161970.a n = A084170 n

end A084170

/-! ## A084170.P13430235461359766439

`2*(gcd(2, n)+a(n-1)-1)` with `a(0)=1`
-/

namespace A084170.P13430235461359766439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 * ((Nat.gcd 2 n : ℤ) + (a (n - 1) - 1))

end

end A084170.P13430235461359766439

namespace A084170

/-- `2*(gcd(2, n)+a(n-1)-1)` -/
def P13430235461359766439.Spec : Prop :=
  ∀ n, P13430235461359766439.a n = A084170 n

end A084170

/-! ## A084170.P6950735759273819653

`2*(a(n-1)+and(1, n+1))` with `a(0)=1`
-/

namespace A084170.P6950735759273819653
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  2 * (a (n - 1) + Nat.land 1 (n + 1))

end

end A084170.P6950735759273819653

namespace A084170

/-- `2*(a(n-1)+and(1, n+1))` -/
def P6950735759273819653.Spec : Prop :=
  ∀ n, (P6950735759273819653.a n : ℤ) = A084170 n

end A084170

/-! ## A084170.P428936503474990186

`∑[A084214(n)]`
-/

namespace A084170.P428936503474990186
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084214 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A084170.P428936503474990186

namespace A084170

/-- `∑[A084214(n)]` -/
def P428936503474990186.Spec : Prop :=
  ∀ n, P428936503474990186.a n = A084170 n

end A084170

/-! ## A084170.P4200406857645860033

`xor(A052992(n), A062510(n))`
-/

namespace A084170.P4200406857645860033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A052992 n) (A062510 n)

end

end A084170.P4200406857645860033

namespace A084170

/-- `xor(A052992(n), A062510(n))` -/
def P4200406857645860033.Spec : Prop :=
  ∀ n, P4200406857645860033.a n = A084170 n

end A084170

/-! ## A084170.P4048163846186292520

`xor(A001045(n), A126646(n))`
-/

namespace A084170.P4048163846186292520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A001045 n) (A126646 n)

end

end A084170.P4048163846186292520

namespace A084170

/-- `xor(A001045(n), A126646(n))` -/
def P4048163846186292520.Spec : Prop :=
  ∀ n, P4048163846186292520.a n = A084170 n

end A084170

/-! ## A084170.P11403626086465372757

`xor(A000225(n), A283642(n))`
-/

namespace A084170.P11403626086465372757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000225 n) (A283642 n)

end

end A084170.P11403626086465372757

namespace A084170

/-- `xor(A000225(n), A283642(n))` -/
def P11403626086465372757.Spec : Prop :=
  ∀ n, P11403626086465372757.a n = A084170 n

end A084170

/-! ## A084170.P15236765178211556656

`xor(A193652(n), A285475(n))`
-/

namespace A084170.P15236765178211556656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A193652 n) (A285475 n)

end

end A084170.P15236765178211556656

namespace A084170

/-- `xor(A193652(n), A285475(n))` -/
def P15236765178211556656.Spec : Prop :=
  ∀ n, P15236765178211556656.a n = A084170 n

end A084170

/-! ## A084170.P11601126675107817807

`and(A081254(n+1), A095121(n))`
-/

namespace A084170.P11601126675107817807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A081254 (n + 1)) (A095121 n)

end

end A084170.P11601126675107817807

namespace A084170

/-- `and(A081254(n+1), A095121(n))` -/
def P11601126675107817807.Spec : Prop :=
  ∀ n, P11601126675107817807.a n = A084170 n

end A084170

/-! ## A084170.P13351888090530295127

`xor(A000035(n), A081254(n+1))`
-/

namespace A084170.P13351888090530295127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000035 n) (A081254 (n + 1))

end

end A084170.P13351888090530295127

namespace A084170

/-- `xor(A000035(n), A081254(n+1))` -/
def P13351888090530295127.Spec : Prop :=
  ∀ n, P13351888090530295127.a n = A084170 n

end A084170

/-! ## A084170.P6393407856006309756

`xor(A080924(n), A086893(n+1))`
-/

namespace A084170.P6393407856006309756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A080924 n) (A086893 (n + 1))

end

end A084170.P6393407856006309756

namespace A084170

/-- `xor(A080924(n), A086893(n+1))` -/
def P6393407856006309756.Spec : Prop :=
  ∀ n, P6393407856006309756.a n = A084170 n

end A084170

/-! ## A084170.P9592499799330117823

`xor(A084181(n), A096773(n+1))`
-/

namespace A084170.P9592499799330117823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A084181 n) (A096773 (n + 1))

end

end A084170.P9592499799330117823

namespace A084170

/-- `xor(A084181(n), A096773(n+1))` -/
def P9592499799330117823.Spec : Prop :=
  ∀ n, P9592499799330117823.a n = A084170 n

end A084170

/-! ## A084170.P2329479511082790482

`xor(A084184(n), A239024(n+1))`
-/

namespace A084170.P2329479511082790482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A084184 n) (A239024 (n + 1))

end

end A084170.P2329479511082790482

namespace A084170

/-- `xor(A084184(n), A239024(n+1))` -/
def P2329479511082790482.Spec : Prop :=
  ∀ n, P2329479511082790482.a n = A084170 n

end A084170

/-!
# A084171: Binomial transform of generalized Jacobsthal numbers A084170.

The programs for A084171, the canonical program `A084171.P6228664004075729660` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A084171 has offset 0).

The definition of A084171 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A084171.P6228664004075729660

`5*a(n-1)-6*a(n-2)` with `a(0)=1, a(1)=3, a(2)=11`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A084171

/-- `5*a(n-1)-6*a(n-2)` -/
def P6228664004075729660.Spec : Prop :=
  ∀ n, P6228664004075729660.a n = A084171 n

theorem P6228664004075729660.correct : P6228664004075729660.Spec := by
  intro n
  simp only [A084171]

end A084171

/-! ## A084171.P3805594084168352509

`ogf((1-2x+2x^2)/(1-5x+6x^2))`
-/

namespace A084171.P3805594084168352509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -2, 2] [1, -5, 6] n

end

end A084171.P3805594084168352509

namespace A084171

/-- `ogf((1-2x+2x^2)/(1-5x+6x^2))` -/
def P3805594084168352509.Spec : Prop :=
  ∀ n, P3805594084168352509.a n = A084171 n

end A084171

/-! ## A084171.P18076487460907118035

`2^(n-1)+3*a(n-1)` with `a(0)=1, a(1)=3`
-/

namespace A084171.P18076487460907118035
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 3] fun n a =>
  (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) + 3 * a (n - 1)

end

end A084171.P18076487460907118035

namespace A084171

/-- `2^(n-1)+3*a(n-1)` -/
def P18076487460907118035.Spec : Prop :=
  ∀ n, P18076487460907118035.a n = (A084171 n : ℚ)

end A084171

/-! ## A084171.P17114001583605534478

`∑[3*a(n-1)]-2^n` with `a(0)=2, a(1)=3, a(2)=10`
-/

namespace A084171.P17114001583605534478
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 3, 10] fun n f1 =>
  3 * f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (2 ^ n : ℤ)

end

end A084171.P17114001583605534478

namespace A084171

/-- `∑[3*a(n-1)]-2^n` -/
def P17114001583605534478.Spec : Prop :=
  ∀ n, P17114001583605534478.a n = A084171 n

end A084171

/-! ## A084171.P13138210866199201394

`Δ[floor(3^(n-1))]+3^n-2^n`
-/

namespace A084171.P13138210866199201394
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(3 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + ((3 ^ n : ℤ) - (2 ^ n : ℤ))

end

end A084171.P13138210866199201394

namespace A084171

/-- `Δ[floor(3^(n-1))]+3^n-2^n` -/
def P13138210866199201394.Spec : Prop :=
  ∀ n, P13138210866199201394.a n = A084171 n

end A084171

/-! ## A084171.P857614891279186985

`abs(A025192(n)+3^n-2^n)`
-/

namespace A084171.P857614891279186985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A025192 n + ((3 ^ n : ℤ) - (2 ^ n : ℤ))|

end

end A084171.P857614891279186985

namespace A084171

/-- `abs(A025192(n)+3^n-2^n)` -/
def P857614891279186985.Spec : Prop :=
  ∀ n, P857614891279186985.a n = A084171 n

end A084171

/-! ## A084171.P9460094352140727385

`or(1, A124302(n)+A053152(n+1))`
-/

namespace A084171.P9460094352140727385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A124302 n + A053152 (n + 1))

end

end A084171.P9460094352140727385

namespace A084171

/-- `or(1, A124302(n)+A053152(n+1))` -/
def P9460094352140727385.Spec : Prop :=
  ∀ n, P9460094352140727385.a n = A084171 n

end A084171

/-! ## A084171.P15307990049447290582

`Δ[A094033(n)+ceil(2^(n-1)+3^(n-1))]`
-/

namespace A084171.P15307990049447290582
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094033 n + ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) + (3 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A084171.P15307990049447290582

namespace A084171

/-- `Δ[A094033(n)+ceil(2^(n-1)+3^(n-1))]` -/
def P15307990049447290582.Spec : Prop :=
  ∀ n, P15307990049447290582.a n = A084171 n

end A084171

/-! ## A084171.P13399030227142650621

`Δ[A001047(n)-A124302(n)]`
-/

namespace A084171.P13399030227142650621
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001047 n - A124302 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A084171.P13399030227142650621

namespace A084171

/-- `Δ[A001047(n)-A124302(n)]` -/
def P13399030227142650621.Spec : Prop :=
  ∀ n, P13399030227142650621.a n = A084171 n

end A084171

/-! ## A084171.P8940274856123931889

`Δ[A007051(n)+2*A000392(n)]`
-/

namespace A084171.P8940274856123931889
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007051 n + 2 * A000392 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A084171.P8940274856123931889

namespace A084171

/-- `Δ[A007051(n)+2*A000392(n)]` -/
def P8940274856123931889.Spec : Prop :=
  ∀ n, P8940274856123931889.a n = A084171 n

end A084171

/-! ## A084171.P9333637973858532973

`Δ[∑[A304973(2*n+1)]-A304973(2*n)]`
-/

namespace A084171.P9333637973858532973
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304973 (2 * n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A304973 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A084171.P9333637973858532973

namespace A084171

/-- `Δ[∑[A304973(2*n+1)]-A304973(2*n)]` -/
def P9333637973858532973.Spec : Prop :=
  ∀ n, P9333637973858532973.a n = A084171 n

end A084171

/-!
# A084172: a(n) = 3*a(n-1) - a(n-2) - 3*a(n-3) + 2*a(n-4).

The programs for A084172, the canonical program `A084172.P9800446366735436527` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A084172 has offset 0).

The definition of A084172 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3*a(n-1)-a(n-2)-3*a(n-3)+2*a(n-4)` (program `A084172.P9800446366735436527`, by `A084172.P9800446366735436527.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A084172.P9800446366735436527

`3*a(n-1)-a(n-2)-3*a(n-3)+2*a(n-4)` with `a(0)=1, a(1)=2, a(2)=4, a(3)=9`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A084172

/-- `3*a(n-1)-a(n-2)-3*a(n-3)+2*a(n-4)` -/
def P9800446366735436527.Spec : Prop :=
  ∀ n, P9800446366735436527.a n = A084172 n

theorem P9800446366735436527.correct : P9800446366735436527.Spec := by
  intro n
  simp only [A084172]

end A084172

/-! ## A084172.P17273421888730275732

`A001045(n+1)+A083579(n)`
-/

namespace A084172.P17273421888730275732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001045 (n + 1) + A083579 n

end

end A084172.P17273421888730275732

namespace A084172

/-- `A001045(n+1)+A083579(n)` -/
def P17273421888730275732.Spec : Prop :=
  ∀ n, P17273421888730275732.a n = A084172 n

end A084172

/-! ## A084172.P1895821113823798912

`2^(n+2)/3-(-1)^n/12-(2*n+1)/4`
-/

namespace A084172.P1895821113823798912
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 ^ (n + 2) : ℚ) / 3 - ((-1) ^ n : ℚ) / 12 - (2 * n + 1 : ℚ) / 4

end

end A084172.P1895821113823798912

namespace A084172

/-- `2^(n+2)/3-(-1)^n/12-(2*n+1)/4` -/
def P1895821113823798912.Spec : Prop :=
  ∀ n, P1895821113823798912.a n = (A084172 n : ℚ)

theorem P1895821113823798912.correct : P1895821113823798912.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 =>
      simp [A084172, Nat.add_sub_cancel, A084172.P1895821113823798912.a, A084172.P9800446366735436527.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 4 =>
      have h1 := ih (m + 3) (by omega)
      have h2 := ih (m + 2) (by omega)
      have h3 := ih (m + 1) (by omega)
      have h4 := ih m (by omega)
      simp only [A084172, Nat.add_sub_cancel, A084172.P1895821113823798912.a, A084172.P9800446366735436527.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 4 - 1 = m + 3 by omega, show m + 4 - 2 = m + 2 by omega, show m + 4 - 3 = m + 1 by omega, show m + 4 - 4 = m by omega, show m + 3 < m + 4 by omega, show m + 2 < m + 4 by omega, show m + 1 < m + 4 by omega, show m < m + 4 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 ⊢
      rw [← h1, ← h2, ← h3, ← h4]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A084172

/-! ## A084172.P345144800719923806

`ogf((1-x-x^2+2x^3)/(1-3x+x^2+3x^3-2x^4))`
-/

namespace A084172.P345144800719923806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -1, -1, 2] [1, -3, 1, 3, -2] n

end

end A084172.P345144800719923806

namespace A084172

/-- `ogf((1-x-x^2+2x^3)/(1-3x+x^2+3x^3-2x^4))` -/
def P345144800719923806.Spec : Prop :=
  ∀ n, P345144800719923806.a n = A084172 n

end A084172

/-! ## A084172.P424980255398575093

`floor(2^n+a(n-2)-1)` with `a(0)=1, a(1)=2`

`floor` is left out, it is the identity on integers.
-/

namespace A084172.P424980255398575093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  (2 ^ n : ℤ) + (a (n - 2) - 1)

end

end A084172.P424980255398575093

namespace A084172

/-- `floor(2^n+a(n-2)-1)` -/
def P424980255398575093.Spec : Prop :=
  ∀ n, P424980255398575093.a n = A084172 n

end A084172

/-! ## A084172.P11397875414396480712

`floor(2^n-(1-a(n-2)))` with `a(0)=1, a(1)=2`

`floor` is left out, it is the identity on integers.
-/

namespace A084172.P11397875414396480712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  (2 ^ n : ℤ) - (1 - a (n - 2))

end

end A084172.P11397875414396480712

namespace A084172

/-- `floor(2^n-(1-a(n-2)))` -/
def P11397875414396480712.Spec : Prop :=
  ∀ n, P11397875414396480712.a n = A084172 n

end A084172

/-! ## A084172.P18313685427654116598

`∑[2^n-(a(n-1)+1)]` with `a(0)=1, a(1)=1`
-/

namespace A084172.P18313685427654116598
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  (2 ^ n : ℤ) - (f1 (n - 1) + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A084172.P18313685427654116598

namespace A084172

/-- `∑[2^n-(a(n-1)+1)]` -/
def P18313685427654116598.Spec : Prop :=
  ∀ n, P18313685427654116598.a n = A084172 n

end A084172

/-! ## A084172.P12182656847271848529

`∑[2^n-1-a(n-1)]` with `a(0)=1, a(1)=1`
-/

namespace A084172.P12182656847271848529
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  (2 ^ n : ℤ) - 1 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A084172.P12182656847271848529

namespace A084172

/-- `∑[2^n-1-a(n-1)]` -/
def P12182656847271848529.Spec : Prop :=
  ∀ n, P12182656847271848529.a n = A084172 n

end A084172

/-! ## A084172.P12251981065119024926

`∑[n%2+2*a(n-1)]` with `a(0)=1, a(1)=1`
-/

namespace A084172.P12251981065119024926
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  n % 2 + 2 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A084172.P12251981065119024926

namespace A084172

/-- `∑[n%2+2*a(n-1)]` -/
def P12251981065119024926.Spec : Prop :=
  ∀ n, (P12251981065119024926.a n : ℤ) = A084172 n

end A084172

/-! ## A084172.P12871454382815059560

`floor((n-1)/2+2*a(n-1))` with `a(0)=1`
-/

namespace A084172.P12871454382815059560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌊((n : ℤ) - 1 : ℚ) / 2 + (2 * a (n - 1) : ℚ)⌋

end

end A084172.P12871454382815059560

namespace A084172

/-- `floor((n-1)/2+2*a(n-1))` -/
def P12871454382815059560.Spec : Prop :=
  ∀ n, P12871454382815059560.a n = A084172 n

end A084172

/-! ## A084172.P16032857593136708506

`floor(2*a(n-1)-(1-n)/2)` with `a(0)=1`
-/

namespace A084172.P16032857593136708506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌊(2 * a (n - 1) : ℚ) - (1 - (n : ℤ) : ℚ) / 2⌋

end

end A084172.P16032857593136708506

namespace A084172

/-- `floor(2*a(n-1)-(1-n)/2)` -/
def P16032857593136708506.Spec : Prop :=
  ∀ n, P16032857593136708506.a n = A084172 n

end A084172

/-! ## A084172.P18401869433330097610

`∑[a(n-1)+or(1, a(n-1))]` with `a(0)=1, a(1)=1`
-/

namespace A084172.P18401869433330097610
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  f1 (n - 1) + Nat.lor 1 (f1 (n - 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A084172.P18401869433330097610

namespace A084172

/-- `∑[a(n-1)+or(1, a(n-1))]` -/
def P18401869433330097610.Spec : Prop :=
  ∀ n, (P18401869433330097610.a n : ℤ) = A084172 n

end A084172

/-! ## A084172.P6417101746417313685

`floor(a(n-1)+floor(a(n-1)+(n-1)/2))` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A084172.P6417101746417313685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + ⌊(a (n - 1) : ℚ) + ((n : ℤ) - 1 : ℚ) / 2⌋

end

end A084172.P6417101746417313685

namespace A084172

/-- `floor(a(n-1)+floor(a(n-1)+(n-1)/2))` -/
def P6417101746417313685.Spec : Prop :=
  ∀ n, P6417101746417313685.a n = A084172 n

end A084172

/-! ## A084172.P15641020124874970293

`floor(a(n-1)-floor(1-a(n-1)-n/2))` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A084172.P15641020124874970293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) - ⌊(1 - a (n - 1) : ℚ) - (n : ℚ) / 2⌋

end

end A084172.P15641020124874970293

namespace A084172

/-- `floor(a(n-1)-floor(1-a(n-1)-n/2))` -/
def P15641020124874970293.Spec : Prop :=
  ∀ n, P15641020124874970293.a n = A084172 n

end A084172

/-! ## A084172.P152828002524690

`∑[A057428(n)+∑[A152046(n)]]`
-/

namespace A084172.P152828002524690
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152046 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 n + ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A084172.P152828002524690

namespace A084172

/-- `∑[A057428(n)+∑[A152046(n)]]` -/
def P152828002524690.Spec : Prop :=
  ∀ n, P152828002524690.a n = A084172 n

end A084172

/-! ## A084172.P3122200503614481305

`∑[A062157(2*n)+A005578(n+1)]`
-/

namespace A084172.P3122200503614481305
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062157 (2 * n) + A005578 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A084172.P3122200503614481305

namespace A084172

/-- `∑[A062157(2*n)+A005578(n+1)]` -/
def P3122200503614481305.Spec : Prop :=
  ∀ n, P3122200503614481305.a n = A084172 n

end A084172

/-! ## A084172.P2916916094291335645

`A288206(n)/2`
-/

namespace A084172.P2916916094291335645
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A288206 n : ℚ) / 2

end

end A084172.P2916916094291335645

namespace A084172

/-- `A288206(n)/2` -/
def P2916916094291335645.Spec : Prop :=
  ∀ n, P2916916094291335645.a n = (A084172 n : ℚ)

end A084172

/-! ## A084172.P11036078707542981490

`(A026646(n)+1)/2`
-/

namespace A084172.P11036078707542981490
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A026646 n + 1 : ℚ) / 2

end

end A084172.P11036078707542981490

namespace A084172

/-- `(A026646(n)+1)/2` -/
def P11036078707542981490.Spec : Prop :=
  ∀ n, P11036078707542981490.a n = (A084172 n : ℚ)

end A084172

/-! ## A084172.P2964226217905887166

`(∑[A026644(n)]+1)/2`
-/

namespace A084172.P2964226217905887166
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026644 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j + 1 : ℤ) : ℚ) / 2

end

end A084172.P2964226217905887166

namespace A084172

/-- `(∑[A026644(n)]+1)/2` -/
def P2964226217905887166.Spec : Prop :=
  ∀ n, P2964226217905887166.a n = (A084172 n : ℚ)

end A084172

/-! ## A084172.P12387418768814662504

`(A000975(n+2)-n)/2`
-/

namespace A084172.P12387418768814662504
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000975 (n + 2) - (n : ℤ) : ℚ) / 2

end

end A084172.P12387418768814662504

namespace A084172

/-- `(A000975(n+2)-n)/2` -/
def P12387418768814662504.Spec : Prop :=
  ∀ n, P12387418768814662504.a n = (A084172 n : ℚ)

end A084172

/-!
# A084173: a(n) = 3*a(n-1) - a(n-2) - 3*a(n-3) + 2*a(n-4).

The programs for A084173, the canonical program `A084173.P9361734417861287204` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A084173 has offset 0).

The definition of A084173 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3*a(n-1)-a(n-2)-3*a(n-3)+2*a(n-4)` (program `A084173.P9361734417861287204`, by `A084173.P9361734417861287204.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A084173.P16946790857386404563

`2^(n+1)-(2*n+1)/2-(-1)^n/2`
-/

namespace A084173.P16946790857386404563
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 ^ (n + 1) : ℚ) - (2 * n + 1 : ℚ) / 2 - ((-1) ^ n : ℚ) / 2

end

end A084173.P16946790857386404563

namespace A084173

/-- `2^(n+1)-(2*n+1)/2-(-1)^n/2` -/
def P16946790857386404563.Spec : Prop :=
  ∀ n, P16946790857386404563.a n = (A084173 n : ℚ)

theorem P16946790857386404563.correct : P16946790857386404563.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 =>
      simp [A084173, Nat.add_sub_cancel, A084173.P16946790857386404563.a, A084173.P9361734417861287204.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 4 =>
      have h1 := ih (m + 3) (by omega)
      have h2 := ih (m + 2) (by omega)
      have h3 := ih (m + 1) (by omega)
      have h4 := ih m (by omega)
      simp only [A084173, Nat.add_sub_cancel, A084173.P16946790857386404563.a, A084173.P9361734417861287204.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 4 - 1 = m + 3 by omega, show m + 4 - 2 = m + 2 by omega, show m + 4 - 3 = m + 1 by omega, show m + 4 - 4 = m by omega, show m + 3 < m + 4 by omega, show m + 2 < m + 4 by omega, show m + 1 < m + 4 by omega, show m < m + 4 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 ⊢
      rw [← h1, ← h2, ← h3, ← h4]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A084173

/-! ## A084173.P9361734417861287204

`3*a(n-1)-a(n-2)-3*a(n-3)+2*a(n-4)` with `a(0)=1, a(1)=3, a(2)=5, a(3)=13`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A084173

/-- `3*a(n-1)-a(n-2)-3*a(n-3)+2*a(n-4)` -/
def P9361734417861287204.Spec : Prop :=
  ∀ n, P9361734417861287204.a n = A084173 n

theorem P9361734417861287204.correct : P9361734417861287204.Spec := by
  intro n
  simp only [A084173]

end A084173

/-! ## A084173.P15570421940066399425

`or(1, ∑[2^n]-n)`
-/

namespace A084173.P15570421940066399425
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (n : ℤ))

end

end A084173.P15570421940066399425

namespace A084173

/-- `or(1, ∑[2^n]-n)` -/
def P15570421940066399425.Spec : Prop :=
  ∀ n, P15570421940066399425.a n = A084173 n

end A084173

/-! ## A084173.P9878442054943681499

`-or(n, ∑[-2^n])`
-/

namespace A084173.P9878442054943681499
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(2 ^ n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.lor (n : ℤ) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A084173.P9878442054943681499

namespace A084173

/-- `-or(n, ∑[-2^n])` -/
def P9878442054943681499.Spec : Prop :=
  ∀ n, P9878442054943681499.a n = A084173 n

end A084173

/-! ## A084173.P14939544132411909112

`ogf((1-3x^2+4x^3)/(1-3x+x^2+3x^3-2x^4))`
-/

namespace A084173.P14939544132411909112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 0, -3, 4] [1, -3, 1, 3, -2] n

end

end A084173.P14939544132411909112

namespace A084173

/-- `ogf((1-3x^2+4x^3)/(1-3x+x^2+3x^3-2x^4))` -/
def P14939544132411909112.Spec : Prop :=
  ∀ n, P14939544132411909112.a n = A084173 n

end A084173

/-! ## A084173.P2731042800173357054

`xor(n, A101622(n)+1)`
-/

namespace A084173.P2731042800173357054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (A101622 n + 1)

end

end A084173.P2731042800173357054

namespace A084173

/-- `xor(n, A101622(n)+1)` -/
def P2731042800173357054.Spec : Prop :=
  ∀ n, P2731042800173357054.a n = A084173 n

end A084173

/-! ## A084173.P11424130022128523148

`xor(n, A140253(n+1))`
-/

namespace A084173.P11424130022128523148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (A140253 (n + 1))

end

end A084173.P11424130022128523148

namespace A084173

/-- `xor(n, A140253(n+1))` -/
def P11424130022128523148.Spec : Prop :=
  ∀ n, P11424130022128523148.a n = A084173 n

end A084173

/-! ## A084173.P13800304212930788229

`∑[abs(A225883(n)+1)]`
-/

namespace A084173.P13800304212930788229
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A225883 n + 1|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A084173.P13800304212930788229

namespace A084173

/-- `∑[abs(A225883(n)+1)]` -/
def P13800304212930788229.Spec : Prop :=
  ∀ n, P13800304212930788229.a n = A084173 n

end A084173

/-! ## A084173.P16943849100786757601

`∑[xor(1, A000295(n))+n]`
-/

namespace A084173.P16943849100786757601
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A000295 n) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A084173.P16943849100786757601

namespace A084173

/-- `∑[xor(1, A000295(n))+n]` -/
def P16943849100786757601.Spec : Prop :=
  ∀ n, P16943849100786757601.a n = A084173 n

end A084173

/-!
# A084174: a(n) = 3*a(n-1) - a(n-2) - 3*a(n-3) + 2*a(n-4).

The programs for A084174, the canonical program `A084174.P2184057933780339827` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A084174 has offset 0).

The definition of A084174 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3*a(n-1)-a(n-2)-3*a(n-3)+2*a(n-4)` (program `A084174.P2184057933780339827`, by `A084174.P2184057933780339827.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A084174.P5676725872649129065

`2^n+(-1)^n/4-(2*n+1)/4`
-/

namespace A084174.P5676725872649129065
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℚ) + ((-1) ^ n : ℚ) / 4 - (2 * n + 1 : ℚ) / 4

end

end A084174.P5676725872649129065

namespace A084174

/-- `2^n+(-1)^n/4-(2*n+1)/4` -/
def P5676725872649129065.Spec : Prop :=
  ∀ n, P5676725872649129065.a n = (A084174 n : ℚ)

theorem P5676725872649129065.correct : P5676725872649129065.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 =>
      simp [A084174, Nat.add_sub_cancel, A084174.P5676725872649129065.a, A084174.P2184057933780339827.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 4 =>
      have h1 := ih (m + 3) (by omega)
      have h2 := ih (m + 2) (by omega)
      have h3 := ih (m + 1) (by omega)
      have h4 := ih m (by omega)
      simp only [A084174, Nat.add_sub_cancel, A084174.P5676725872649129065.a, A084174.P2184057933780339827.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 4 - 1 = m + 3 by omega, show m + 4 - 2 = m + 2 by omega, show m + 4 - 3 = m + 1 by omega, show m + 4 - 4 = m by omega, show m + 3 < m + 4 by omega, show m + 2 < m + 4 by omega, show m + 1 < m + 4 by omega, show m < m + 4 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 ⊢
      rw [← h1, ← h2, ← h3, ← h4]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A084174

/-! ## A084174.P2184057933780339827

`3*a(n-1)-a(n-2)-3*a(n-3)+2*a(n-4)` with `a(0)=1, a(1)=1, a(2)=3, a(3)=6`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A084174

/-- `3*a(n-1)-a(n-2)-3*a(n-3)+2*a(n-4)` -/
def P2184057933780339827.Spec : Prop :=
  ∀ n, P2184057933780339827.a n = A084174 n

theorem P2184057933780339827.correct : P2184057933780339827.Spec := by
  intro n
  simp only [A084174]

end A084174

/-! ## A084174.P17087654314133494218

`ogf((1-2x+x^2+x^3)/(1-3x+x^2+3x^3-2x^4))`
-/

namespace A084174.P17087654314133494218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -2, 1, 1] [1, -3, 1, 3, -2] n

end

end A084174.P17087654314133494218

namespace A084174

/-- `ogf((1-2x+x^2+x^3)/(1-3x+x^2+3x^3-2x^4))` -/
def P17087654314133494218.Spec : Prop :=
  ∀ n, P17087654314133494218.a n = A084174 n

end A084174

/-! ## A084174.P11854782437645774470

`∑[A052950(n)-1]`
-/

namespace A084174.P11854782437645774470
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052950 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A084174.P11854782437645774470

namespace A084174

/-- `∑[A052950(n)-1]` -/
def P11854782437645774470.Spec : Prop :=
  ∀ n, P11854782437645774470.a n = A084174 n

end A084174

/-! ## A084174.P8170331112329762201

`∑[floor(A014551(n)/2)]`
-/

namespace A084174.P8170331112329762201
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A014551 n : ℚ) / 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A084174.P8170331112329762201

namespace A084174

/-- `∑[floor(A014551(n)/2)]` -/
def P8170331112329762201.Spec : Prop :=
  ∀ n, P8170331112329762201.a n = A084174 n

end A084174

/-!
# A084175: Jacobsthal oblong numbers.

The programs for A084175, the canonical program `A084175.P885176649370595918` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A084175 has offset 0).

The definition of A084175 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A084175.P885176649370595918

`round(2^n/3)*round(2^(n+1)/3)`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A084175

/-- `round(2^n/3)*round(2^(n+1)/3)` -/
def P885176649370595918.Spec : Prop :=
  ∀ n, P885176649370595918.a n = A084175 n

theorem P885176649370595918.correct : P885176649370595918.Spec := by
  intro n
  simp only [A084175]

end A084175

/-! ## A084175.P17439621081319773712

`3*a(n-1)+6*a(n-2)-8*a(n-3)` with `a(0)=0, a(1)=1, a(2)=3`
-/

namespace A084175.P17439621081319773712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 3] fun n a =>
  3 * a (n - 1) + 6 * a (n - 2) - 8 * a (n - 3)

end

end A084175.P17439621081319773712

namespace A084175

/-- `3*a(n-1)+6*a(n-2)-8*a(n-3)` -/
def P17439621081319773712.Spec : Prop :=
  ∀ n, P17439621081319773712.a n = A084175 n

end A084175

/-! ## A084175.P15384749377680837559

`ogf(x/(1-3x-6x^2+8x^3))`
-/

namespace A084175.P15384749377680837559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1] [1, -3, -6, 8] n

end

end A084175.P15384749377680837559

namespace A084175

/-- `ogf(x/(1-3x-6x^2+8x^3))` -/
def P15384749377680837559.Spec : Prop :=
  ∀ n, P15384749377680837559.a n = A084175 n

end A084175

/-! ## A084175.P3856497625417748005

`∑[4^(n-1)-2*a(n-1)]` with `a(0)=0`
-/

namespace A084175.P3856497625417748005
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [0] fun n f1 =>
  (4 : ℚ) ^ ((n : ℤ) - 1 : ℤ) - 2 * f1 (n - 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A084175.P3856497625417748005

namespace A084175

/-- `∑[4^(n-1)-2*a(n-1)]` -/
def P3856497625417748005.Spec : Prop :=
  ∀ n, P3856497625417748005.a n = (A084175 n : ℚ)

end A084175

/-! ## A084175.P8568762854131373998

`∑[2*(a(n-1)+4*a(n-2))]` with `a(0)=0, a(1)=1`
-/

namespace A084175.P8568762854131373998
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  2 * (f1 (n - 1) + 4 * f1 (n - 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A084175.P8568762854131373998

namespace A084175

/-- `∑[2*(a(n-1)+4*a(n-2))]` -/
def P8568762854131373998.Spec : Prop :=
  ∀ n, (P8568762854131373998.a n : ℤ) = A084175 n

end A084175

/-! ## A084175.P11382874176406582650

`2*(a(n-1)+4*a(n-2))+1` with `a(0)=0, a(1)=1`
-/

namespace A084175.P11382874176406582650
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n a =>
  2 * (a (n - 1) + 4 * a (n - 2)) + 1

end

end A084175.P11382874176406582650

namespace A084175

/-- `2*(a(n-1)+4*a(n-2))+1` -/
def P11382874176406582650.Spec : Prop :=
  ∀ n, (P11382874176406582650.a n : ℤ) = A084175 n

end A084175

/-! ## A084175.P9049601377553904042

`∑[A003683(n)]`
-/

namespace A084175.P9049601377553904042
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003683 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A084175.P9049601377553904042

namespace A084175

/-- `∑[A003683(n)]` -/
def P9049601377553904042.Spec : Prop :=
  ∀ n, P9049601377553904042.a n = A084175 n

end A084175

/-! ## A084175.P8485863269964498863

`A084152(n+1)`
-/

namespace A084175.P8485863269964498863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084152 (n + 1)

end

end A084175.P8485863269964498863

namespace A084175

/-- `A084152(n+1)` -/
def P8485863269964498863.Spec : Prop :=
  ∀ n, P8485863269964498863.a n = A084175 n

end A084175

/-! ## A084175.P8523670620588071966

`A138477(2*n)`
-/

namespace A084175.P8523670620588071966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138477 (2 * n)

end

end A084175.P8523670620588071966

namespace A084175

/-- `A138477(2*n)` -/
def P8523670620588071966.Spec : Prop :=
  ∀ n, P8523670620588071966.a n = A084175 n

end A084175

/-! ## A084175.P16074450124412043390

`A138495(2*n)`
-/

namespace A084175.P16074450124412043390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138495 (2 * n)

end

end A084175.P16074450124412043390

namespace A084175

/-- `A138495(2*n)` -/
def P16074450124412043390.Spec : Prop :=
  ∀ n, P16074450124412043390.a n = A084175 n

end A084175

/-! ## A084175.P17420698412915021624

`∑[2^(n-1)*A001045(n)]`
-/

namespace A084175.P17420698412915021624
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) * (A001045 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A084175.P17420698412915021624

namespace A084175

/-- `∑[2^(n-1)*A001045(n)]` -/
def P17420698412915021624.Spec : Prop :=
  ∀ n, P17420698412915021624.a n = (A084175 n : ℚ)

end A084175

/-! ## A084175.P7988549161327779811

`a(n-1)+A139818(n)+a(n-1)` with `a(0)=0`
-/

namespace A084175.P7988549161327779811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + (A139818 n + a (n - 1))

end

end A084175.P7988549161327779811

namespace A084175

/-- `a(n-1)+A139818(n)+a(n-1)` -/
def P7988549161327779811.Spec : Prop :=
  ∀ n, P7988549161327779811.a n = A084175 n

end A084175

/-! ## A084175.P13412860539481594753

`A241685(n)-A001045(n)`
-/

namespace A084175.P13412860539481594753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241685 n - A001045 n

end

end A084175.P13412860539481594753

namespace A084175

/-- `A241685(n)-A001045(n)` -/
def P13412860539481594753.Spec : Prop :=
  ∀ n, P13412860539481594753.a n = A084175 n

end A084175

/-! ## A084175.P13483405885829623289

`A241894(n)-A005578(n)`
-/

namespace A084175.P13483405885829623289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241894 n - A005578 n

end

end A084175.P13483405885829623289

namespace A084175

/-- `A241894(n)-A005578(n)` -/
def P13483405885829623289.Spec : Prop :=
  ∀ n, P13483405885829623289.a n = A084175 n

end A084175

/-! ## A084175.P226040460489103601

`lcm(A001045(n), A077925(n))`
-/

namespace A084175.P226040460489103601
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A001045 n) (A077925 n)

end

end A084175.P226040460489103601

namespace A084175

/-- `lcm(A001045(n), A077925(n))` -/
def P226040460489103601.Spec : Prop :=
  ∀ n, (P226040460489103601.a n : ℤ) = A084175 n

end A084175

/-! ## A084175.P11565203524786892776

`∑[A001045(n)*A011782(n)]`
-/

namespace A084175.P11565203524786892776
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001045 n * A011782 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A084175.P11565203524786892776

namespace A084175

/-- `∑[A001045(n)*A011782(n)]` -/
def P11565203524786892776.Spec : Prop :=
  ∀ n, P11565203524786892776.a n = A084175 n

end A084175

/-! ## A084175.P11008387992308782696

`∑[A001045(n)*A131577(n)]`
-/

namespace A084175.P11008387992308782696
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001045 n * A131577 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A084175.P11008387992308782696

namespace A084175

/-- `∑[A001045(n)*A131577(n)]` -/
def P11008387992308782696.Spec : Prop :=
  ∀ n, P11008387992308782696.a n = A084175 n

end A084175

/-! ## A084175.P5914897648695173737

`∑[A131577(n)*A167167(n)]`
-/

namespace A084175.P5914897648695173737
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131577 n * A167167 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A084175.P5914897648695173737

namespace A084175

/-- `∑[A131577(n)*A167167(n)]` -/
def P5914897648695173737.Spec : Prop :=
  ∀ n, P5914897648695173737.a n = A084175 n

end A084175

/-! ## A084175.P9244647439620663485

`A241683(n+1)+A001045(n)`
-/

namespace A084175.P9244647439620663485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241683 (n + 1) + A001045 n

end

end A084175.P9244647439620663485

namespace A084175

/-- `A241683(n+1)+A001045(n)` -/
def P9244647439620663485.Spec : Prop :=
  ∀ n, P9244647439620663485.a n = A084175 n

end A084175

/-! ## A084175.P9941809110514445014

`A003683(n)+A003683(n)-A139818(n)`
-/

namespace A084175.P9941809110514445014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003683 n + (A003683 n - A139818 n)

end

end A084175.P9941809110514445014

namespace A084175

/-- `A003683(n)+A003683(n)-A139818(n)` -/
def P9941809110514445014.Spec : Prop :=
  ∀ n, P9941809110514445014.a n = A084175 n

end A084175

/-!
# A084176: Sums of two Fibonacci numbers (allowing 0 as a summand).

The programs for A084176, the canonical program `A084176.P7826877778170467656` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A084176 has offset 1).

The definition of A084176 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9723 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A084176.P7826877778170467656

`record[A059389(n+1)%A108035(n+1)]`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A084176

/-- `record[A059389(n+1)%A108035(n+1)]` -/
def P7826877778170467656.Spec : Prop :=
  ∀ n, P7826877778170467656.a n = A084176 (n + 1)

theorem P7826877778170467656.correct : P7826877778170467656.Spec := by
  intro n
  simp only [A084176, Nat.add_sub_cancel]

end A084176

/-! ## A084176.P6134888136629300554

`record[A141169(n)+A000045(A123578(n))]`
-/

namespace A084176.P6134888136629300554
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141169 n + A000045 (A123578 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A084176.P6134888136629300554

namespace A084176

/-- `record[A141169(n)+A000045(A123578(n))]` -/
def P6134888136629300554.Spec : Prop :=
  ∀ n, P6134888136629300554.a n = A084176 (n + 1)

end A084176

/-! ## A084176.P16523600606925338108

`record[A141169(n)+A108036(n)]`
-/

namespace A084176.P16523600606925338108
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141169 n + A108036 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A084176.P16523600606925338108

namespace A084176

/-- `record[A141169(n)+A108036(n)]` -/
def P16523600606925338108.Spec : Prop :=
  ∀ n, P16523600606925338108.a n = A084176 (n + 1)

end A084176

/-! ## A084176.P17229059259557473732

`record[A193922(n)-A193922(A122797(n+1))]`
-/

namespace A084176.P17229059259557473732
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193922 n - A193922 (A122797 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A084176.P17229059259557473732

namespace A084176

/-- `record[A193922(n)-A193922(A122797(n+1))]` -/
def P17229059259557473732.Spec : Prop :=
  ∀ n, P17229059259557473732.a n = A084176 (n + 1)

end A084176

/-! ## A084176.P6769268262634141459

`∪[A059389(n+1), A059389(n+3)%A049997(3*n+1)]`
-/

namespace A084176.P6769268262634141459
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059389 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A059389 (n + 3)) (A049997 (3 * n + 1))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A084176.P6769268262634141459

namespace A084176

/-- `∪[A059389(n+1), A059389(n+3)%A049997(3*n+1)]` -/
def P6769268262634141459.Spec : Prop :=
  ∀ n, (P6769268262634141459.a n : ℤ) = A084176 (n + 1)

end A084176

/-! ## A084176.P7088731394996045494

`lt[A104324(n), 5]`
-/

namespace A084176.P7088731394996045494
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104324 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A084176.P7088731394996045494

namespace A084176

/-- `lt[A104324(n), 5]` -/
def P7088731394996045494.Spec : Prop :=
  ∀ n, (P7088731394996045494.a n : ℤ) = A084176 (n + 1)

end A084176

/-! ## A084176.P15885440989500747996

`lt[A007895(n), 3]`
-/

namespace A084176.P15885440989500747996
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007895 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A084176.P15885440989500747996

namespace A084176

/-- `lt[A007895(n), 3]` -/
def P15885440989500747996.Spec : Prop :=
  ∀ n, (P15885440989500747996.a n : ℤ) = A084176 (n + 1)

end A084176

/-! ## A084176.P856203528891224808

`lt[n-A219641(n), 3]`
-/

namespace A084176.P856203528891224808
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A219641 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A084176.P856203528891224808

namespace A084176

/-- `lt[n-A219641(n), 3]` -/
def P856203528891224808.Spec : Prop :=
  ∀ n, (P856203528891224808.a n : ℤ) = A084176 (n + 1)

end A084176

/-! ## A084176.P9970958208285179236

`lt[dr(A014417(n))-1, 2]`
-/

namespace A084176.P9970958208285179236
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.digitalRoot (A014417 n) : ℤ) - 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A084176.P9970958208285179236

namespace A084176

/-- `lt[dr(A014417(n))-1, 2]` -/
def P9970958208285179236.Spec : Prop :=
  ∀ n, (P9970958208285179236.a n : ℤ) = A084176 (n + 1)

end A084176

/-! ## A084176.P9700516074006808824

`lt[A066628(A066628(n)), 1]`
-/

namespace A084176.P9700516074006808824
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066628 (A066628 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A084176.P9700516074006808824

namespace A084176

/-- `lt[A066628(A066628(n)), 1]` -/
def P9700516074006808824.Spec : Prop :=
  ∀ n, (P9700516074006808824.a n : ℤ) = A084176 (n + 1)

end A084176

/-! ## A084176.P14066314102467636678

`eq[1, A182577(n-A219641(n))]`
-/

namespace A084176.P14066314102467636678
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182577 ((n : ℤ) - A219641 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A084176.P14066314102467636678

namespace A084176

/-- `eq[1, A182577(n-A219641(n))]` -/
def P14066314102467636678.Spec : Prop :=
  ∀ n, (P14066314102467636678.a n : ℤ) = A084176 (n + 1)

end A084176

/-! ## A084176.P14788763648371608816

`eq[1, A182577(∑{digits}[A014417(n), #])]`
-/

namespace A084176.P14788763648371608816
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014417 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182577 ((SequenceMachineLib.digits10 (f3 n).natAbs).map fun (x : ℕ) => x).sum

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A084176.P14788763648371608816

namespace A084176

/-- `eq[1, A182577(∑{digits}[A014417(n), #])]` -/
def P14788763648371608816.Spec : Prop :=
  ∀ n, (P14788763648371608816.a n : ℤ) = A084176 (n + 1)

end A084176

/-! ## A084176.P4259262077764543403

`eq[1, A158805(1-A219641(n)+n)]`
-/

namespace A084176.P4259262077764543403
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158805 (1 - A219641 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A084176.P4259262077764543403

namespace A084176

/-- `eq[1, A158805(1-A219641(n)+n)]` -/
def P4259262077764543403.Spec : Prop :=
  ∀ n, (P4259262077764543403.a n : ℤ) = A084176 (n + 1)

end A084176

/-! ## A084176.P5807135955426767946

`lt[A213911(A004956(n))-1, 2]`
-/

namespace A084176.P5807135955426767946
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213911 (A004956 n).toNat - 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A084176.P5807135955426767946

namespace A084176

/-- `lt[A213911(A004956(n))-1, 2]` -/
def P5807135955426767946.Spec : Prop :=
  ∀ n, (P5807135955426767946.a n : ℤ) = A084176 (n + 1)

end A084176

/-! ## A084176.P9644829208380980658

`eq[2, A000010(A001316(A003714(n))+2)]`
-/

namespace A084176.P9644829208380980658
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A001316 (A003714 n).toNat + 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A084176.P9644829208380980658

namespace A084176

/-- `eq[2, A000010(A001316(A003714(n))+2)]` -/
def P9644829208380980658.Spec : Prop :=
  ∀ n, (P9644829208380980658.a n : ℤ) = A084176 (n + 1)

end A084176

/-!
# A084177: Binomial transform of Jacobsthal oblongs.

The programs for A084177, the canonical program `A084177.P14172841219317612901` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A084177 has offset 0).

The definition of A084177 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A084177.P14172841219317612901

`6*a(n-1)-3*a(n-2)-10*a(n-3)` with `a(0)=0, a(1)=1, a(2)=5`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A084177

/-- `6*a(n-1)-3*a(n-2)-10*a(n-3)` -/
def P14172841219317612901.Spec : Prop :=
  ∀ n, P14172841219317612901.a n = A084177 n

theorem P14172841219317612901.correct : P14172841219317612901.Spec := by
  intro n
  simp only [A084177]

end A084177

/-! ## A084177.P14025450315136884530

`(2*5^n-(-1)^n-2^n)/9`
-/

namespace A084177.P14025450315136884530
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((2 * 5 ^ n : ℤ) - (-1) ^ n - (2 ^ n : ℤ) : ℚ) / 9

end

end A084177.P14025450315136884530

namespace A084177

/-- `(2*5^n-(-1)^n-2^n)/9` -/
def P14025450315136884530.Spec : Prop :=
  ∀ n, P14025450315136884530.a n = (A084177 n : ℚ)

theorem P14025450315136884530.correct : P14025450315136884530.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 =>
      simp [A084177, Nat.add_sub_cancel, A084177.P14025450315136884530.a, A084177.P14172841219317612901.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 3 =>
      have h1 := ih (m + 2) (by omega)
      have h2 := ih (m + 1) (by omega)
      have h3 := ih m (by omega)
      simp only [A084177, Nat.add_sub_cancel, A084177.P14025450315136884530.a, A084177.P14172841219317612901.a, SequenceMachineLib.memo_apply] at h1 h2 h3 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 3 - 1 = m + 2 by omega, show m + 3 - 2 = m + 1 by omega, show m + 3 - 3 = m by omega, show m + 2 < m + 3 by omega, show m + 1 < m + 3 by omega, show m < m + 3 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 ⊢
      rw [← h1, ← h2, ← h3]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A084177

/-! ## A084177.P9316837604479794481

`ogf((x-x^2)/(1-6x+3x^2+10x^3))`
-/

namespace A084177.P9316837604479794481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, -1] [1, -6, 3, 10] n

end

end A084177.P9316837604479794481

namespace A084177

/-- `ogf((x-x^2)/(1-6x+3x^2+10x^3))` -/
def P9316837604479794481.Spec : Prop :=
  ∀ n, P9316837604479794481.a n = A084177 n

end A084177

/-! ## A084177.P9302727193154045340

`A084153(n)+A015531(n)`
-/

namespace A084177.P9302727193154045340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084153 n + A015531 n

end

end A084177.P9302727193154045340

namespace A084177

/-- `A084153(n)+A015531(n)` -/
def P9302727193154045340.Spec : Prop :=
  ∀ n, P9302727193154045340.a n = A084177 n

end A084177

/-! ## A084177.P8174742988126731735

`Δ[A084153(n)]`
-/

namespace A084177.P8174742988126731735
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084153 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A084177.P8174742988126731735

namespace A084177

/-- `Δ[A084153(n)]` -/
def P8174742988126731735.Spec : Prop :=
  ∀ n, P8174742988126731735.a n = A084177 n

end A084177

/-! ## A084177.P11842668436383029236

`A084153(n+1)-A084153(n)`
-/

namespace A084177.P11842668436383029236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084153 (n + 1) - A084153 n

end

end A084177.P11842668436383029236

namespace A084177

/-- `A084153(n+1)-A084153(n)` -/
def P11842668436383029236.Spec : Prop :=
  ∀ n, P11842668436383029236.a n = A084177 n

end A084177

/-!
# A084178: Inverse binomial transform of Fibonacci oblongs.

The programs for A084178, the canonical program `A084178.P12281359306774147690` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A084178 has offset 0).

The definition of A084178 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A084178.P12281359306774147690

`((1/2+sqrt(5)/2)^(n+1)+(1/2-sqrt(5)/2)^(n+1)-(-2)^n)/5`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A084178

/-- `((1/2+sqrt(5)/2)^(n+1)+(1/2-sqrt(5)/2)^(n+1)-(-2)^n)/5` -/
def P12281359306774147690.Spec : Prop :=
  ∀ n, P12281359306774147690.a n = (A084178 n : ℝ)

end A084178

/-! ## A084178.P15025787640182180439

`ogf((x+x^2)/(1+x-3x^2-2x^3))`
-/

namespace A084178.P15025787640182180439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, 1] [1, 1, -3, -2] n

end

end A084178.P15025787640182180439

namespace A084178

/-- `ogf((x+x^2)/(1+x-3x^2-2x^3))` -/
def P15025787640182180439.Spec : Prop :=
  ∀ n, P15025787640182180439.a n = A084178 n

end A084178

/-! ## A084178.P18116297031990218319

`a(n-1)+a(n-2)-(-2)^(n-2)` with `a(0)=0, a(1)=1`
-/

namespace A084178.P18116297031990218319
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (n - 1) + (a (n - 2) - (-2 : ℚ) ^ ((n : ℤ) - 2 : ℤ))

end

end A084178.P18116297031990218319

namespace A084178

/-- `a(n-1)+a(n-2)-(-2)^(n-2)` -/
def P18116297031990218319.Spec : Prop :=
  ∀ n, P18116297031990218319.a n = (A084178 n : ℚ)

end A084178

/-! ## A084178.P1792169942179396851

`a(n-1)-((-2)^(n-2)-a(n-2))` with `a(0)=0, a(1)=1`
-/

namespace A084178.P1792169942179396851
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (n - 1) - ((-2 : ℚ) ^ ((n : ℤ) - 2 : ℤ) - a (n - 2))

end

end A084178.P1792169942179396851

namespace A084178

/-- `a(n-1)-((-2)^(n-2)-a(n-2))` -/
def P1792169942179396851.Spec : Prop :=
  ∀ n, P1792169942179396851.a n = (A084178 n : ℚ)

end A084178

/-! ## A084178.P6429780068064385169

`A000045(n+1)-2*a(n-1)` with `a(0)=0`
-/

namespace A084178.P6429780068064385169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A000045 (n + 1) - 2 * a (n - 1)

end

end A084178.P6429780068064385169

namespace A084178

/-- `A000045(n+1)-2*a(n-1)` -/
def P6429780068064385169.Spec : Prop :=
  ∀ n, P6429780068064385169.a n = A084178 n

end A084178

/-! ## A084178.P15054576740823435393

`4*a(n-2)-A000045(n-2)` with `a(0)=0, a(1)=1`
-/

namespace A084178.P15054576740823435393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  4 * a (n - 2) - A000045 (n - 2)

end

end A084178.P15054576740823435393

namespace A084178

/-- `4*a(n-2)-A000045(n-2)` -/
def P15054576740823435393.Spec : Prop :=
  ∀ n, P15054576740823435393.a n = A084178 n

end A084178

/-! ## A084178.P6944435638270680133

`2*A000045(n)-A224508(n)`
-/

namespace A084178.P6944435638270680133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000045 n - A224508 n

end

end A084178.P6944435638270680133

namespace A084178

/-- `2*A000045(n)-A224508(n)` -/
def P6944435638270680133.Spec : Prop :=
  ∀ n, P6944435638270680133.a n = A084178 n

end A084178

/-! ## A084178.P1188178094807937973

`-(A054877(n+1)/2*A010892(3*n))`
-/

namespace A084178.P1188178094807937973
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  -((A054877 (n + 1) : ℚ) / 2 * (A010892 (3 * n) : ℚ))

end

end A084178.P1188178094807937973

namespace A084178

/-- `-(A054877(n+1)/2*A010892(3*n))` -/
def P1188178094807937973.Spec : Prop :=
  ∀ n, P1188178094807937973.a n = (A084178 n : ℚ)

end A084178

/-! ## A084178.P3271993117764293197

`A084179(A289207(n+1))+A084179(n)`
-/

namespace A084178.P3271993117764293197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084179 (A289207 (n + 1)).toNat + A084179 n

end

end A084178.P3271993117764293197

namespace A084178

/-- `A084179(A289207(n+1))+A084179(n)` -/
def P3271993117764293197.Spec : Prop :=
  ∀ n, P3271993117764293197.a n = A084178 n

end A084178

/-! ## A084178.P6664260657782085636

`A052964(abs(1-n))*A055975(A166519(n))`
-/

namespace A084178.P6664260657782085636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052964 |1 - (n : ℤ)|.toNat * A055975 (A166519 n).toNat

end

end A084178.P6664260657782085636

namespace A084178

/-- `A052964(abs(1-n))*A055975(A166519(n))` -/
def P6664260657782085636.Spec : Prop :=
  ∀ n, P6664260657782085636.a n = A084178 n

end A084178

/-! ## A084178.P15107153421032386443

`Δ[A084179(n+1)+A084179(n)]%A000079(n)`
-/

namespace A084178.P15107153421032386443
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084179 (n + 1) + A084179 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) (A000079 n)

end

end A084178.P15107153421032386443

namespace A084178

/-- `Δ[A084179(n+1)+A084179(n)]%A000079(n)` -/
def P15107153421032386443.Spec : Prop :=
  ∀ n, P15107153421032386443.a n = A084178 n

end A084178

/-!
# A084179: Expansion of the g.f. x/((1+2x)(1-x-x^2)).

The programs for A084179, the canonical program `A084179.P10105469877148559484` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A084179 has offset 0).

The definition of A084179 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(x/(1+x-3x^2-2x^3))` (program `A084179.P10105469877148559484`, by `A084179.P10105469877148559484.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A084179.P10105469877148559484

`ogf(x/(1+x-3x^2-2x^3))`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A084179

/-- `ogf(x/(1+x-3x^2-2x^3))` -/
def P10105469877148559484.Spec : Prop :=
  ∀ n, P10105469877148559484.a n = A084179 n

theorem P10105469877148559484.correct : P10105469877148559484.Spec := by
  intro n
  simp only [A084179]

end A084179

/-! ## A084179.P2198651194300925054

`((1/2-sqrt(5)/2)^n+(1/2+sqrt(5)/2)^n-2*(-2)^n)/5`
-/

namespace A084179.P2198651194300925054
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((((1 : ℚ) / 2 : ℝ) - Real.sqrt (5 : ℝ) / 2) ^ n + (((1 : ℚ) / 2 : ℝ) + Real.sqrt (5 : ℝ) / 2) ^ n - (2 * (-2) ^ n : ℝ)) / 5

end

end A084179.P2198651194300925054

namespace A084179

/-- `((1/2-sqrt(5)/2)^n+(1/2+sqrt(5)/2)^n-2*(-2)^n)/5` -/
def P2198651194300925054.Spec : Prop :=
  ∀ n, P2198651194300925054.a n = (A084179 n : ℝ)

end A084179

/-! ## A084179.P12825797577072044532

`A000032(n)/5-2*(-2)^n/5`
-/

namespace A084179.P12825797577072044532
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000032 n : ℚ) / 5 - (2 * (-2) ^ n : ℚ) / 5

end

end A084179.P12825797577072044532

namespace A084179

/-- `A000032(n)/5-2*(-2)^n/5` -/
def P12825797577072044532.Spec : Prop :=
  ∀ n, P12825797577072044532.a n = (A084179 n : ℚ)

end A084179

/-! ## A084179.P11079212147406468819

`A000045(n)-2*a(n-1)` with `a(0)=0`
-/

namespace A084179.P11079212147406468819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A000045 n - 2 * a (n - 1)

end

end A084179.P11079212147406468819

namespace A084179

/-- `A000045(n)-2*a(n-1)` -/
def P11079212147406468819.Spec : Prop :=
  ∀ n, P11079212147406468819.a n = A084179 n

end A084179

/-! ## A084179.P10539252982386483828

`A001611(n)-1-2*a(n-1)` with `a(0)=0`
-/

namespace A084179.P10539252982386483828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A001611 n - 1 - 2 * a (n - 1)

end

end A084179.P10539252982386483828

namespace A084179

/-- `A001611(n)-1-2*a(n-1)` -/
def P10539252982386483828.Spec : Prop :=
  ∀ n, P10539252982386483828.a n = A084179 n

end A084179

/-! ## A084179.P12127174498480806273

`A212804(n+1)-a(n-1)-a(n-1)` with `a(0)=0`
-/

namespace A084179.P12127174498480806273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A212804 (n + 1) - a (n - 1) - a (n - 1)

end

end A084179.P12127174498480806273

namespace A084179

/-- `A212804(n+1)-a(n-1)-a(n-1)` -/
def P12127174498480806273.Spec : Prop :=
  ∀ n, P12127174498480806273.a n = A084179 n

end A084179

/-! ## A084179.P12468901436343664393

`Δ[A000045(n+1)]-(a(n-1)+a(n-1))` with `a(0)=0`
-/

namespace A084179.P12468901436343664393
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  f1 (n + 1) - f1 n - (a (n - 1) + a (n - 1))

end

end A084179.P12468901436343664393

namespace A084179

/-- `Δ[A000045(n+1)]-(a(n-1)+a(n-1))` -/
def P12468901436343664393.Spec : Prop :=
  ∀ n, P12468901436343664393.a n = A084179 n

end A084179

/-! ## A084179.P13783117685365927348

`Δ[A000071(n+1)-(a(n-1)+a(n-1))]` with `a(0)=0`
-/

namespace A084179.P13783117685365927348
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  A000071 (n + 1) - (f1 (n - 1) + f1 (n - 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A084179.P13783117685365927348

namespace A084179

/-- `Δ[A000071(n+1)-(a(n-1)+a(n-1))]` -/
def P13783117685365927348.Spec : Prop :=
  ∀ n, P13783117685365927348.a n = A084179 n

end A084179

/-! ## A084179.P13484850350344292667

`A224508(n+1)-A000045(n+1)`
-/

namespace A084179.P13484850350344292667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224508 (n + 1) - A000045 (n + 1)

end

end A084179.P13484850350344292667

namespace A084179

/-- `A224508(n+1)-A000045(n+1)` -/
def P13484850350344292667.Spec : Prop :=
  ∀ n, P13484850350344292667.a n = A084179 n

end A084179

/-! ## A084179.P18441675701328770616

`A084178(n)-a(n-1)` with `a(0)=0`
-/

namespace A084179.P18441675701328770616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A084178 n - a (n - 1)

end

end A084179.P18441675701328770616

namespace A084179

/-- `A084178(n)-a(n-1)` -/
def P18441675701328770616.Spec : Prop :=
  ∀ n, P18441675701328770616.a n = A084179 n

end A084179

/-! ## A084179.P4031517034845914452

`A073845(n+1)-A212804(n)`
-/

namespace A084179.P4031517034845914452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073845 (n + 1) - A212804 n

end

end A084179.P4031517034845914452

namespace A084179

/-- `A073845(n+1)-A212804(n)` -/
def P4031517034845914452.Spec : Prop :=
  ∀ n, P4031517034845914452.a n = A084179 n

end A084179

/-! ## A084179.P13183304162795032652

`2*A084178(n)-A000045(n)`
-/

namespace A084179.P13183304162795032652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A084178 n - A000045 n

end

end A084179.P13183304162795032652

namespace A084179

/-- `2*A084178(n)-A000045(n)` -/
def P13183304162795032652.Spec : Prop :=
  ∀ n, P13183304162795032652.a n = A084179 n

end A084179

/-! ## A084179.P5378723690078823934

`A073845(n+1)-A118658(n)/2`
-/

namespace A084179.P5378723690078823934
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A073845 (n + 1) : ℚ) - (A118658 n : ℚ) / 2

end

end A084179.P5378723690078823934

namespace A084179

/-- `A073845(n+1)-A118658(n)/2` -/
def P5378723690078823934.Spec : Prop :=
  ∀ n, P5378723690078823934.a n = (A084179 n : ℚ)

end A084179

/-! ## A084179.P5119158523464739021

`A000045(n+1)-A084178(n+1)`
-/

namespace A084179.P5119158523464739021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 1) - A084178 (n + 1)

end

end A084179.P5119158523464739021

namespace A084179

/-- `A000045(n+1)-A084178(n+1)` -/
def P5119158523464739021.Spec : Prop :=
  ∀ n, P5119158523464739021.a n = A084179 n

end A084179

/-! ## A084179.P17112745647789241045

`A098703(n+1)-(A094688(n)+A084178(n+1))`
-/

namespace A084179.P17112745647789241045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098703 (n + 1) - (A094688 n + A084178 (n + 1))

end

end A084179.P17112745647789241045

namespace A084179

/-- `A098703(n+1)-(A094688(n)+A084178(n+1))` -/
def P17112745647789241045.Spec : Prop :=
  ∀ n, P17112745647789241045.a n = A084179 n

end A084179

/-!
# A084181: a(n) = 2^n+(-2)^n-(-1)^n.

The programs for A084181, the canonical program `A084181.P6340182392316732116` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A084181 has offset 0).

The definition of A084181 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2^n+(-2)^n-(-1)^n` (program `A084181.P6340182392316732116`, by `A084181.P6340182392316732116.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A084181.P6340182392316732116

`2^n+(-2)^n-(-1)^n`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A084181

/-- `2^n+(-2)^n-(-1)^n` -/
def P6340182392316732116.Spec : Prop :=
  ∀ n, P6340182392316732116.a n = A084181 n

theorem P6340182392316732116.correct : P6340182392316732116.Spec := by
  intro n
  simp only [A084181]

end A084181

/-! ## A084181.P12083493835700767232

`gcd(n%2, ∑[2^n])`
-/

namespace A084181.P12083493835700767232
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd (n % 2) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A084181.P12083493835700767232

namespace A084181

/-- `gcd(n%2, ∑[2^n])` -/
def P12083493835700767232.Spec : Prop :=
  ∀ n, (P12083493835700767232.a n : ℤ) = A084181 n

end A084181

/-! ## A084181.P8698479351012852940

`ogf((1+2x+4x^2)/(1+x-4x^2-4x^3))`
-/

namespace A084181.P8698479351012852940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 2, 4] [1, 1, -4, -4] n

end

end A084181.P8698479351012852940

namespace A084181

/-- `ogf((1+2x+4x^2)/(1+x-4x^2-4x^3))` -/
def P8698479351012852940.Spec : Prop :=
  ∀ n, P8698479351012852940.a n = A084181 n

end A084181

/-! ## A084181.P11212687475086861280

`∑[2^n]^((n+1)%2)`
-/

namespace A084181.P11212687475086861280
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ ((n + 1) % 2)

end

end A084181.P11212687475086861280

namespace A084181

/-- `∑[2^n]^((n+1)%2)` -/
def P11212687475086861280.Spec : Prop :=
  ∀ n, (P11212687475086861280.a n : ℤ) = A084181 n

end A084181

/-! ## A084181.P1418620282778709379

`∑[2^n]^and(1, n+1)`
-/

namespace A084181.P1418620282778709379
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ Nat.land 1 (n + 1)

end

end A084181.P1418620282778709379

namespace A084181

/-- `∑[2^n]^and(1, n+1)` -/
def P1418620282778709379.Spec : Prop :=
  ∀ n, (P1418620282778709379.a n : ℤ) = A084181 n

end A084181

/-! ## A084181.P7589963615477503411

`or(1, A279872(n))`
-/

namespace A084181.P7589963615477503411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A279872 n)

end

end A084181.P7589963615477503411

namespace A084181

/-- `or(1, A279872(n))` -/
def P7589963615477503411.Spec : Prop :=
  ∀ n, P7589963615477503411.a n = A084181 n

end A084181

/-! ## A084181.P6205709055247276890

`or(1, A282413(n))`
-/

namespace A084181.P6205709055247276890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A282413 n)

end

end A084181.P6205709055247276890

namespace A084181

/-- `or(1, A282413(n))` -/
def P6205709055247276890.Spec : Prop :=
  ∀ n, P6205709055247276890.a n = A084181 n

end A084181

/-! ## A084181.P10002661417919035309

`Δ[A193652(n+1)]`
-/

namespace A084181.P10002661417919035309
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193652 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A084181.P10002661417919035309

namespace A084181

/-- `Δ[A193652(n+1)]` -/
def P10002661417919035309.Spec : Prop :=
  ∀ n, P10002661417919035309.a n = A084181 n

end A084181

/-! ## A084181.P9297730105144234357

`A094024(or(1, n)+n)`
-/

namespace A084181.P9297730105144234357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094024 (Nat.lor 1 n + n)

end

end A084181.P9297730105144234357

namespace A084181

/-- `A094024(or(1, n)+n)` -/
def P9297730105144234357.Spec : Prop :=
  ∀ n, P9297730105144234357.a n = A084181 n

end A084181

/-! ## A084181.P4782570700911419011

`A000225(C(or(1, n), n))`
-/

namespace A084181.P4782570700911419011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 (Nat.choose (Nat.lor 1 n) n)

end

end A084181.P4782570700911419011

namespace A084181

/-- `A000225(C(or(1, n), n))` -/
def P4782570700911419011.Spec : Prop :=
  ∀ n, P4782570700911419011.a n = A084181 n

end A084181

/-! ## A084181.P16267718054088288244

`floor(A282004(n+1)/2)`
-/

namespace A084181.P16267718054088288244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A282004 (n + 1) : ℚ) / 2⌋

end

end A084181.P16267718054088288244

namespace A084181

/-- `floor(A282004(n+1)/2)` -/
def P16267718054088288244.Spec : Prop :=
  ∀ n, P16267718054088288244.a n = A084181 n

end A084181

/-! ## A084181.P5716959596631689362

`round(A277866(n+1)/2)`
-/

namespace A084181.P5716959596631689362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A277866 (n + 1) : ℚ) / 2)

end

end A084181.P5716959596631689362

namespace A084181

/-- `round(A277866(n+1)/2)` -/
def P5716959596631689362.Spec : Prop :=
  ∀ n, P5716959596631689362.a n = A084181 n

end A084181

/-! ## A084181.P11179275647812588832

`A140252(n+1)/a(n-1)` with `a(0)=1`
-/

namespace A084181.P11179275647812588832
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (A140252 (n + 1) : ℚ) / a (n - 1)

end

end A084181.P11179275647812588832

namespace A084181

/-- `A140252(n+1)/a(n-1)` -/
def P11179275647812588832.Spec : Prop :=
  ∀ n, P11179275647812588832.a n = (A084181 n : ℚ)

end A084181

/-! ## A084181.P2343771323081913318

`A059990(A141310(n))`
-/

namespace A084181.P2343771323081913318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059990 (A141310 n).toNat

end

end A084181.P2343771323081913318

namespace A084181

/-- `A059990(A141310(n))` -/
def P2343771323081913318.Spec : Prop :=
  ∀ n, P2343771323081913318.a n = A084181 n

end A084181

/-! ## A084181.P16672828798154834544

`A083420(A142150(n))`
-/

namespace A084181.P16672828798154834544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083420 (A142150 n).toNat

end

end A084181.P16672828798154834544

namespace A084181

/-- `A083420(A142150(n))` -/
def P16672828798154834544.Spec : Prop :=
  ∀ n, P16672828798154834544.a n = A084181 n

end A084181

/-! ## A084181.P6817584894635629715

`A052551(A266222(n))`
-/

namespace A084181.P6817584894635629715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052551 (A266222 n).toNat

end

end A084181.P6817584894635629715

namespace A084181

/-- `A052551(A266222(n))` -/
def P6817584894635629715.Spec : Prop :=
  ∀ n, P6817584894635629715.a n = A084181 n

end A084181

/-! ## A084181.P6435328544679857142

`A052551(A266439(n))`
-/

namespace A084181.P6435328544679857142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052551 (A266439 n).toNat

end

end A084181.P6435328544679857142

namespace A084181

/-- `A052551(A266439(n))` -/
def P6435328544679857142.Spec : Prop :=
  ∀ n, P6435328544679857142.a n = A084181 n

end A084181

/-! ## A084181.P12602960918679732324

`A094360(A237420(n))`
-/

namespace A084181.P12602960918679732324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094360 (A237420 n).toNat

end

end A084181.P12602960918679732324

namespace A084181

/-- `A094360(A237420(n))` -/
def P12602960918679732324.Spec : Prop :=
  ∀ n, P12602960918679732324.a n = A084181 n

end A084181

/-! ## A084181.P5660510664670042035

`A094024(A339597(n))`
-/

namespace A084181.P5660510664670042035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094024 (A339597 n).toNat

end

end A084181.P5660510664670042035

namespace A084181

/-- `A094024(A339597(n))` -/
def P5660510664670042035.Spec : Prop :=
  ∀ n, P5660510664670042035.a n = A084181 n

end A084181

/-! ## A084181.P11400451405609714356

`A290422(A265723(n))`
-/

namespace A084181.P11400451405609714356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290422 (A265723 n).toNat

end

end A084181.P11400451405609714356

namespace A084181

/-- `A290422(A265723(n))` -/
def P11400451405609714356.Spec : Prop :=
  ∀ n, P11400451405609714356.a n = A084181 n

end A084181

/-!
# A084182: a(n) = 3^n + (-1)^n - [1/(n+1)], where [] represents the floor function.

The programs for A084182, the canonical program `A084182.P1702224824149023100` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A084182 has offset 0).

The definition of A084182 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 210 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A084182.P908938321505492218

`ogf((1+3x^2)/(1-2x-3x^2))`
-/

namespace A084182.P908938321505492218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 0, 3] [1, -2, -3] n

end

end A084182.P908938321505492218

namespace A084182

/-- `ogf((1+3x^2)/(1-2x-3x^2))` -/
def P908938321505492218.Spec : Prop :=
  ∀ n, P908938321505492218.a n = A084182 n

end A084182

/-! ## A084182.P11658678177630140083

`or(2, 3^n)-ceil(acot(n))`
-/

namespace A084182.P11658678177630140083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lor 2 (3 ^ n) : ℤ) - ⌈SequenceMachineLib.acot (n : ℝ)⌉

end

end A084182.P11658678177630140083

namespace A084182

/-- `or(2, 3^n)-ceil(acot(n))` -/
def P11658678177630140083.Spec : Prop :=
  ∀ n, P11658678177630140083.a n = A084182 n

end A084182

/-! ## A084182.P1318122389884051455

`abs(ceil(abs(sin(n)))+(-3)^n)`
-/

namespace A084182.P1318122389884051455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(⌈|Real.sin (n : ℝ)|⌉ + (-3) ^ n)|

end

end A084182.P1318122389884051455

namespace A084182

/-- `abs(ceil(abs(sin(n)))+(-3)^n)` -/
def P1318122389884051455.Spec : Prop :=
  ∀ n, P1318122389884051455.a n = A084182 n

end A084182

/-! ## A084182.P17543704236870802971

`or(3^n-1, ceil(cosh(sin(n))))`
-/

namespace A084182.P17543704236870802971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((3 ^ n : ℤ) - 1) ⌈Real.cosh (Real.sin (n : ℝ))⌉

end

end A084182.P17543704236870802971

namespace A084182

/-- `or(3^n-1, ceil(cosh(sin(n))))` -/
def P17543704236870802971.Spec : Prop :=
  ∀ n, P17543704236870802971.a n = A084182 n

end A084182

/-! ## A084182.P1211070419707454650

`3^n-ceil(tan(n*atan(n)))`
-/

namespace A084182.P1211070419707454650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 ^ n : ℤ) - ⌈Real.tan ((n : ℝ) * Real.arctan (n : ℝ))⌉

end

end A084182.P1211070419707454650

namespace A084182

/-- `3^n-ceil(tan(n*atan(n)))` -/
def P1211070419707454650.Spec : Prop :=
  ∀ n, P1211070419707454650.a n = A084182 n

end A084182

/-! ## A084182.P1702224824149023100

`Δ[xor(2, 3*a(n-1))]` with `a(0)=1, a(1)=2`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A084182

/-- `Δ[xor(2, 3*a(n-1))]` -/
def P1702224824149023100.Spec : Prop :=
  ∀ n, P1702224824149023100.a n = A084182 n

theorem P1702224824149023100.correct : P1702224824149023100.Spec := by
  intro n
  simp only [A084182]

end A084182

/-! ## A084182.P16682554472693281402

`or(3^n-1, abs(floor(atan(2-n²))))`
-/

namespace A084182.P16682554472693281402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((3 ^ n : ℤ) - 1) |⌊Real.arctan (2 - (n ^ 2 : ℤ) : ℝ)⌋|

end

end A084182.P16682554472693281402

namespace A084182

/-- `or(3^n-1, abs(floor(atan(2-n²))))` -/
def P16682554472693281402.Spec : Prop :=
  ∀ n, P16682554472693281402.a n = A084182 n

end A084182

/-! ## A084182.P17994973779243037248

`ceil(3^n+sin(n)²)-Δ[or(1, n)]`
-/

namespace A084182.P17994973779243037248
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(3 ^ n : ℝ) + Real.sin (n : ℝ) ^ 2⌉ - ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A084182.P17994973779243037248

namespace A084182

/-- `ceil(3^n+sin(n)²)-Δ[or(1, n)]` -/
def P17994973779243037248.Spec : Prop :=
  ∀ n, P17994973779243037248.a n = A084182 n

end A084182

/-! ## A084182.P6344321798547531237

`4*3^(n-1)-a(n-1)` with `a(0)=1, a(1)=2`
-/

namespace A084182.P6344321798547531237
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 2] fun n a =>
  4 * (3 : ℚ) ^ ((n : ℤ) - 1 : ℤ) - a (n - 1)

end

end A084182.P6344321798547531237

namespace A084182

/-- `4*3^(n-1)-a(n-1)` -/
def P6344321798547531237.Spec : Prop :=
  ∀ n, P6344321798547531237.a n = (A084182 n : ℚ)

end A084182

/-! ## A084182.P11091845307618523717

`or(2, 3^n-1)^(round(5*2^n/3)%2)`
-/

namespace A084182.P11091845307618523717
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lor 2 ((3 ^ n : ℤ) - 1) : ℚ) ^ (Int.tmod (SequenceMachineLib.roundAway (5 * ((2 ^ n : ℚ) / 3))) 2 : ℤ)

end

end A084182.P11091845307618523717

namespace A084182

/-- `or(2, 3^n-1)^(round(5*2^n/3)%2)` -/
def P11091845307618523717.Spec : Prop :=
  ∀ n, P11091845307618523717.a n = (A084182 n : ℚ)

end A084182

/-! ## A084182.P4082647232608088485

`Δ[A152011(n)]`
-/

namespace A084182.P4082647232608088485
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152011 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A084182.P4082647232608088485

namespace A084182

/-- `Δ[A152011(n)]` -/
def P4082647232608088485.Spec : Prop :=
  ∀ n, P4082647232608088485.a n = A084182 n

end A084182

/-! ## A084182.P16497660308442884796

`3^n-A062157(n)`
-/

namespace A084182.P16497660308442884796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 ^ n : ℤ) - A062157 n

end

end A084182.P16497660308442884796

namespace A084182

/-- `3^n-A062157(n)` -/
def P16497660308442884796.Spec : Prop :=
  ∀ n, P16497660308442884796.a n = A084182 n

end A084182

/-! ## A084182.P8620412583647900623

`A105812(n+1)+3^n`
-/

namespace A084182.P8620412583647900623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105812 (n + 1) + (3 ^ n : ℤ)

end

end A084182.P8620412583647900623

namespace A084182

/-- `A105812(n+1)+3^n` -/
def P8620412583647900623.Spec : Prop :=
  ∀ n, P8620412583647900623.a n = A084182 n

end A084182

/-! ## A084182.P16229769613058172219

`or(3^n-1, A020639(∏{e}[n²+1, #+1]))`
-/

namespace A084182.P16229769613058172219
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2 + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((3 ^ n : ℤ) - 1) (A020639 (∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1)))

end

end A084182.P16229769613058172219

namespace A084182

/-- `or(3^n-1, A020639(∏{e}[n²+1, #+1]))` -/
def P16229769613058172219.Spec : Prop :=
  ∀ n, P16229769613058172219.a n = A084182 n

end A084182

/-! ## A084182.P15898133041765262231

`A080925(n)+A046717(n)`
-/

namespace A084182.P15898133041765262231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080925 n + A046717 n

end

end A084182.P15898133041765262231

namespace A084182

/-- `A080925(n)+A046717(n)` -/
def P15898133041765262231.Spec : Prop :=
  ∀ n, P15898133041765262231.a n = A084182 n

end A084182

/-! ## A084182.P14799922505593071844

`A280560(n)+A105723(n)`
-/

namespace A084182.P14799922505593071844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280560 n + A105723 n

end

end A084182.P14799922505593071844

namespace A084182

/-- `A280560(n)+A105723(n)` -/
def P14799922505593071844.Spec : Prop :=
  ∀ n, P14799922505593071844.a n = A084182 n

end A084182

/-! ## A084182.P2863488971917394272

`A240506(n)+A166956(n)`
-/

namespace A084182.P2863488971917394272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240506 n + A166956 n

end

end A084182.P2863488971917394272

namespace A084182

/-- `A240506(n)+A166956(n)` -/
def P2863488971917394272.Spec : Prop :=
  ∀ n, P2863488971917394272.a n = A084182 n

end A084182

/-! ## A084182.P16499871420681514959

`A102345(n)-A000007(n)`
-/

namespace A084182.P16499871420681514959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102345 n - A000007 n

end

end A084182.P16499871420681514959

namespace A084182

/-- `A102345(n)-A000007(n)` -/
def P16499871420681514959.Spec : Prop :=
  ∀ n, P16499871420681514959.a n = A084182 n

end A084182

/-! ## A084182.P6254790779769747784

`A103457(n)-A010673(n)`
-/

namespace A084182.P6254790779769747784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103457 n - A010673 n

end

end A084182.P6254790779769747784

namespace A084182

/-- `A103457(n)-A010673(n)` -/
def P6254790779769747784.Spec : Prop :=
  ∀ n, P6254790779769747784.a n = A084182 n

end A084182

/-!
# A084183: Jacobsthal reverse-pair sequence.

The programs for A084183, the canonical program `A084183.P9988908318949352096` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A084183 has offset 0).

The definition of A084183 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A084183.P10855157269450556446

`ogf((x+2x^2+2x^3)/(1+x-4x^2-4x^3))`
-/

namespace A084183.P10855157269450556446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, 2, 2] [1, 1, -4, -4] n

end

end A084183.P10855157269450556446

namespace A084183

/-- `ogf((x+2x^2+2x^3)/(1+x-4x^2-4x^3))` -/
def P10855157269450556446.Spec : Prop :=
  ∀ n, P10855157269450556446.a n = A084183 n

end A084183

/-! ## A084183.P15655643084858299696

`floor(A094359(n+1)/2)`
-/

namespace A084183.P15655643084858299696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A094359 (n + 1) : ℚ) / 2⌋

end

end A084183.P15655643084858299696

namespace A084183

/-- `floor(A094359(n+1)/2)` -/
def P15655643084858299696.Spec : Prop :=
  ∀ n, P15655643084858299696.a n = A084183 n

end A084183

/-! ## A084183.P9988908318949352096

`round(A154383(n+1)/3)`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A084183

/-- `round(A154383(n+1)/3)` -/
def P9988908318949352096.Spec : Prop :=
  ∀ n, P9988908318949352096.a n = A084183 n

theorem P9988908318949352096.correct : P9988908318949352096.Spec := by
  intro n
  simp only [A084183]

end A084183

/-! ## A084183.P585681896036176077

`A001045(A014681(n))`
-/

namespace A084183.P585681896036176077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001045 (A014681 n).toNat

end

end A084183.P585681896036176077

namespace A084183

/-- `A001045(A014681(n))` -/
def P585681896036176077.Spec : Prop :=
  ∀ n, P585681896036176077.a n = A084183 n

end A084183

/-! ## A084183.P11107319010482079393

`A133730(A086970(n))`
-/

namespace A084183.P11107319010482079393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133730 (A086970 n).toNat

end

end A084183.P11107319010482079393

namespace A084183

/-- `A133730(A086970(n))` -/
def P11107319010482079393.Spec : Prop :=
  ∀ n, P11107319010482079393.a n = A084183 n

end A084183

/-! ## A084183.P4990581883047487193

`A001045(A062157(n)+n)`
-/

namespace A084183.P4990581883047487193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001045 (A062157 n + (n : ℤ)).toNat

end

end A084183.P4990581883047487193

namespace A084183

/-- `A001045(A062157(n)+n)` -/
def P4990581883047487193.Spec : Prop :=
  ∀ n, P4990581883047487193.a n = A084183 n

end A084183

/-! ## A084183.P115569769715253582

`A084214(n)-A092808(n)`
-/

namespace A084183.P115569769715253582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084214 n - A092808 n

end

end A084183.P115569769715253582

namespace A084183

/-- `A084214(n)-A092808(n)` -/
def P115569769715253582.Spec : Prop :=
  ∀ n, P115569769715253582.a n = A084183 n

end A084183

/-! ## A084183.P3343172815536338195

`A158302(n)-A152046(n)`
-/

namespace A084183.P3343172815536338195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158302 n - A152046 n

end

end A084183.P3343172815536338195

namespace A084183

/-- `A158302(n)-A152046(n)` -/
def P3343172815536338195.Spec : Prop :=
  ∀ n, P3343172815536338195.a n = A084183 n

end A084183

/-! ## A084183.P6304865407460077010

`xor(A011782(n), A092808(n))`
-/

namespace A084183.P6304865407460077010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A011782 n) (A092808 n)

end

end A084183.P6304865407460077010

namespace A084183

/-- `xor(A011782(n), A092808(n))` -/
def P6304865407460077010.Spec : Prop :=
  ∀ n, P6304865407460077010.a n = A084183 n

end A084183

/-! ## A084183.P4206778750185696717

`xor(Δ[A131577(n)], A092808(n))`
-/

namespace A084183.P4206778750185696717
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131577 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (f1 (n + 1) - f1 n) (A092808 n)

end

end A084183.P4206778750185696717

namespace A084183

/-- `xor(Δ[A131577(n)], A092808(n))` -/
def P4206778750185696717.Spec : Prop :=
  ∀ n, P4206778750185696717.a n = A084183 n

end A084183

/-! ## A084183.P4802489926507256328

`A001045(A065190(n+1)-1)`
-/

namespace A084183.P4802489926507256328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001045 (A065190 (n + 1) - 1).toNat

end

end A084183.P4802489926507256328

namespace A084183

/-- `A001045(A065190(n+1)-1)` -/
def P4802489926507256328.Spec : Prop :=
  ∀ n, P4802489926507256328.a n = A084183 n

end A084183

/-! ## A084183.P2082126524832022861

`A001045(A114112(n+2)-2)`
-/

namespace A084183.P2082126524832022861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001045 (A114112 (n + 2) - 2).toNat

end

end A084183.P2082126524832022861

namespace A084183

/-- `A001045(A114112(n+2)-2)` -/
def P2082126524832022861.Spec : Prop :=
  ∀ n, P2082126524832022861.a n = A084183 n

end A084183

/-! ## A084183.P2322701907387851453

`A001045(n-A105812(n+1))`
-/

namespace A084183.P2322701907387851453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001045 ((n : ℤ) - A105812 (n + 1)).toNat

end

end A084183.P2322701907387851453

namespace A084183

/-- `A001045(n-A105812(n+1))` -/
def P2322701907387851453.Spec : Prop :=
  ∀ n, P2322701907387851453.a n = A084183 n

end A084183

/-! ## A084183.P4533008522124756531

`A001045(n+1)-A199573(n)`
-/

namespace A084183.P4533008522124756531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001045 (n + 1) - A199573 n

end

end A084183.P4533008522124756531

namespace A084183

/-- `A001045(n+1)-A199573(n)` -/
def P4533008522124756531.Spec : Prop :=
  ∀ n, P4533008522124756531.a n = A084183 n

end A084183

/-! ## A084183.P15518016618042617080

`xor(A001045(xor(1, n)), A011782(n))`
-/

namespace A084183.P15518016618042617080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A001045 (Nat.xor 1 n)) (A011782 n)

end

end A084183.P15518016618042617080

namespace A084183

/-- `xor(A001045(xor(1, n)), A011782(n))` -/
def P15518016618042617080.Spec : Prop :=
  ∀ n, P15518016618042617080.a n = A084183 n

end A084183

/-! ## A084183.P14066019362270270688

`A133684(2*(A065190(n+1)-1))`
-/

namespace A084183.P14066019362270270688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133684 (2 * (A065190 (n + 1) - 1)).toNat

end

end A084183.P14066019362270270688

namespace A084183

/-- `A133684(2*(A065190(n+1)-1))` -/
def P14066019362270270688.Spec : Prop :=
  ∀ n, P14066019362270270688.a n = A084183 n

end A084183

/-! ## A084183.P9026298514836811472

`A001045(A000034(n)+n-A040001(n))`
-/

namespace A084183.P9026298514836811472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001045 (A000034 n + ((n : ℤ) - A040001 n)).toNat

end

end A084183.P9026298514836811472

namespace A084183

/-- `A001045(A000034(n)+n-A040001(n))` -/
def P9026298514836811472.Spec : Prop :=
  ∀ n, P9026298514836811472.a n = A084183 n

end A084183

/-! ## A084183.P18436935686087600644

`A001045(n-(A040001(n)-A000034(n)))`
-/

namespace A084183.P18436935686087600644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001045 ((n : ℤ) - (A040001 n - A000034 n)).toNat

end

end A084183.P18436935686087600644

namespace A084183

/-- `A001045(n-(A040001(n)-A000034(n)))` -/
def P18436935686087600644.Spec : Prop :=
  ∀ n, P18436935686087600644.a n = A084183 n

end A084183

/-! ## A084183.P12791168700089321580

`A133684(A065190(n+1)+A065190(n+1)-2)`
-/

namespace A084183.P12791168700089321580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133684 (A065190 (n + 1) + (A065190 (n + 1) - 2)).toNat

end

end A084183.P12791168700089321580

namespace A084183

/-- `A133684(A065190(n+1)+A065190(n+1)-2)` -/
def P12791168700089321580.Spec : Prop :=
  ∀ n, P12791168700089321580.a n = A084183 n

end A084183

/-! ## A084183.P1132991205362702095

`A290662(n)-A026644(n)`
-/

namespace A084183.P1132991205362702095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290662 n - A026644 n

end

end A084183.P1132991205362702095

namespace A084183

/-- `A290662(n)-A026644(n)` -/
def P1132991205362702095.Spec : Prop :=
  ∀ n, P1132991205362702095.a n = A084183 n

end A084183

/-!
# A084184: Partial sums of a Jacobsthal related sequence.

The programs for A084184, the canonical program `A084184.P1262505878033911118` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A084184 has offset 0).

The definition of A084184 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A084184.P1262505878033911118

`5*a(n-2)-4*a(n-4)` with `a(0)=0, a(1)=1, a(2)=2, a(3)=7`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A084184

/-- `5*a(n-2)-4*a(n-4)` -/
def P1262505878033911118.Spec : Prop :=
  ∀ n, P1262505878033911118.a n = A084184 n

theorem P1262505878033911118.correct : P1262505878033911118.Spec := by
  intro n
  simp only [A084184]

end A084184

/-! ## A084184.P15956638186502902318

`(5-(-1)^n)*(2^n-1)/6`
-/

namespace A084184.P15956638186502902318
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((5 - (-1) ^ n) * ((2 ^ n : ℤ) - 1) : ℚ) / 6

end

end A084184.P15956638186502902318

namespace A084184

/-- `(5-(-1)^n)*(2^n-1)/6` -/
def P15956638186502902318.Spec : Prop :=
  ∀ n, P15956638186502902318.a n = (A084184 n : ℚ)

theorem P15956638186502902318.correct : P15956638186502902318.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 =>
      simp [A084184, Nat.add_sub_cancel, A084184.P15956638186502902318.a, A084184.P1262505878033911118.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 4 =>
      have h2 := ih (m + 2) (by omega)
      have h4 := ih m (by omega)
      simp only [A084184, Nat.add_sub_cancel, A084184.P15956638186502902318.a, A084184.P1262505878033911118.a, SequenceMachineLib.memo_apply] at h2 h4 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 4 - 2 = m + 2 by omega, show m + 4 - 4 = m by omega, show m + 2 < m + 4 by omega, show m < m + 4 by omega, ↓reduceIte]
      push_cast at h2 h4 ⊢
      rw [← h2, ← h4]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A084184

/-! ## A084184.P11363543939690381631

`ogf((x+2x^2+2x^3)/(1-5x^2+4x^4))`
-/

namespace A084184.P11363543939690381631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, 2, 2] [1, 0, -5, 0, 4] n

end

end A084184.P11363543939690381631

namespace A084184

/-- `ogf((x+2x^2+2x^3)/(1-5x^2+4x^4))` -/
def P11363543939690381631.Spec : Prop :=
  ∀ n, P11363543939690381631.a n = A084184 n

end A084184

/-! ## A084184.P5864238167825340017

`4*a(n-2)+n%2+2` with `a(0)=0, a(1)=1`
-/

namespace A084184.P5864238167825340017
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n a =>
  4 * a (n - 2) + (n % 2 + 2)

end

end A084184.P5864238167825340017

namespace A084184

/-- `4*a(n-2)+n%2+2` -/
def P5864238167825340017.Spec : Prop :=
  ∀ n, (P5864238167825340017.a n : ℤ) = A084184 n

end A084184

/-! ## A084184.P6701108675078772767

`4*(a(n-2)+1)-gcd(2, n)` with `a(0)=0, a(1)=1`
-/

namespace A084184.P6701108675078772767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  4 * (a (n - 2) + 1) - (Nat.gcd 2 n : ℤ)

end

end A084184.P6701108675078772767

namespace A084184

/-- `4*(a(n-2)+1)-gcd(2, n)` -/
def P6701108675078772767.Spec : Prop :=
  ∀ n, P6701108675078772767.a n = A084184 n

end A084184

/-! ## A084184.P18191696207179778236

`∑[A084183(n)]`
-/

namespace A084184.P18191696207179778236
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084183 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A084184.P18191696207179778236

namespace A084184

/-- `∑[A084183(n)]` -/
def P18191696207179778236.Spec : Prop :=
  ∀ n, P18191696207179778236.a n = A084184 n

end A084184

/-! ## A084184.P5772260392664756959

`xor(char[2*n]+2*a(n-1), A167167(n))` with `a(0)=0`
-/

namespace A084184.P5772260392664756959
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  Int.xor (((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) + 2 * a (n - 1)) (A167167 n)

end

end A084184.P5772260392664756959

namespace A084184

/-- `xor(char[2*n]+2*a(n-1), A167167(n))` -/
def P5772260392664756959.Spec : Prop :=
  ∀ n, P5772260392664756959.a n = A084184 n

end A084184

/-! ## A084184.P13701083836537163554

`∑[A001045(A014681(n))]`
-/

namespace A084184.P13701083836537163554
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001045 (A014681 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A084184.P13701083836537163554

namespace A084184

/-- `∑[A001045(A014681(n))]` -/
def P13701083836537163554.Spec : Prop :=
  ∀ n, P13701083836537163554.a n = A084184 n

end A084184

/-! ## A084184.P10817349626932427364

`A135318(A014601(n))-1`
-/

namespace A084184.P10817349626932427364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135318 (A014601 n).toNat - 1

end

end A084184.P10817349626932427364

namespace A084184

/-- `A135318(A014601(n))-1` -/
def P10817349626932427364.Spec : Prop :=
  ∀ n, P10817349626932427364.a n = A084184 n

end A084184

/-! ## A084184.P14367560643973071360

`A084221(n)-A080880(n)`
-/

namespace A084184.P14367560643973071360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084221 n - A080880 n

end

end A084184.P14367560643973071360

namespace A084184

/-- `A084221(n)-A080880(n)` -/
def P14367560643973071360.Spec : Prop :=
  ∀ n, P14367560643973071360.a n = A084184 n

end A084184

/-! ## A084184.P1992693907391757709

`A131588(n)-A059841(n)`
-/

namespace A084184.P1992693907391757709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131588 n - A059841 n

end

end A084184.P1992693907391757709

namespace A084184

/-- `A131588(n)-A059841(n)` -/
def P1992693907391757709.Spec : Prop :=
  ∀ n, P1992693907391757709.a n = A084184 n

end A084184

/-! ## A084184.P2265265743870630096

`A255047(n)-A282577(n)`
-/

namespace A084184.P2265265743870630096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255047 n - A282577 n

end

end A084184.P2265265743870630096

namespace A084184

/-- `A255047(n)-A282577(n)` -/
def P2265265743870630096.Spec : Prop :=
  ∀ n, P2265265743870630096.a n = A084184 n

end A084184

/-! ## A084184.P4575292426521638651

`∑[A001045(A062157(n)+n)]`
-/

namespace A084184.P4575292426521638651
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001045 (A062157 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A084184.P4575292426521638651

namespace A084184

/-- `∑[A001045(A062157(n)+n)]` -/
def P4575292426521638651.Spec : Prop :=
  ∀ n, P4575292426521638651.a n = A084184 n

end A084184

/-! ## A084184.P13759155934352227020

`∑[xor(A011782(n), A092808(n))]`
-/

namespace A084184.P13759155934352227020
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A011782 n) (A092808 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A084184.P13759155934352227020

namespace A084184

/-- `∑[xor(A011782(n), A092808(n))]` -/
def P13759155934352227020.Spec : Prop :=
  ∀ n, P13759155934352227020.a n = A084184 n

end A084184

/-! ## A084184.P3140459051616602873

`A282124(n)-A066532(n+1)`
-/

namespace A084184.P3140459051616602873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282124 n - A066532 (n + 1)

end

end A084184.P3140459051616602873

namespace A084184

/-- `A282124(n)-A066532(n+1)` -/
def P3140459051616602873.Spec : Prop :=
  ∀ n, P3140459051616602873.a n = A084184 n

end A084184

/-! ## A084184.P799969544915729011

`A239024(n+1)-A128209(n)`
-/

namespace A084184.P799969544915729011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239024 (n + 1) - A128209 n

end

end A084184.P799969544915729011

namespace A084184

/-- `A239024(n+1)-A128209(n)` -/
def P799969544915729011.Spec : Prop :=
  ∀ n, P799969544915729011.a n = A084184 n

end A084184

/-! ## A084184.P14835561913864842363

`A005578(n)*A010693(n)-2`
-/

namespace A084184.P14835561913864842363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005578 n * A010693 n - 2

end

end A084184.P14835561913864842363

namespace A084184

/-- `A005578(n)*A010693(n)-2` -/
def P14835561913864842363.Spec : Prop :=
  ∀ n, P14835561913864842363.a n = A084184 n

end A084184

/-! ## A084184.P8177942769362644617

`or(A000975(n), A061547(n+1))`
-/

namespace A084184.P8177942769362644617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000975 n) (A061547 (n + 1))

end

end A084184.P8177942769362644617

namespace A084184

/-- `or(A000975(n), A061547(n+1))` -/
def P8177942769362644617.Spec : Prop :=
  ∀ n, P8177942769362644617.a n = A084184 n

end A084184

/-!
# A084187: First occurrence of exactly n 0's in the binary expansion of sqrt(2).

The programs for A084187, there is no canonical definition to state claims against.
-/

/-! ## A084187.P8250997200549381205

`A084185(A000079(n+2)+1)+1`
-/

namespace A084187.P8250997200549381205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084185 (A000079 (n + 2) + 1).toNat + 1

end

end A084187.P8250997200549381205

/-!
# A084188: a(0)=1, a(n+1) = 2*a(n) + b(n+2), where b(n)=A004539(n) is the n-th bit in the binary expansion of sqrt(2).

The programs for A084188, the canonical program `A084188.P10075373482138290167` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A084188 has offset 0).

The definition of A084188 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A084188.P10075373482138290167

`A017910(2*n+1)`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A084188

/-- `A017910(2*n+1)` -/
def P10075373482138290167.Spec : Prop :=
  ∀ n, P10075373482138290167.a n = A084188 n

theorem P10075373482138290167.correct : P10075373482138290167.Spec := by
  intro n
  simp only [A084188]

end A084188

/-! ## A084188.P1889552403390403719

`floor(sqrt(2)*2^n)`
-/

namespace A084188.P1889552403390403719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sqrt (2 : ℝ) * (2 ^ n : ℝ)⌋

end

end A084188.P1889552403390403719

namespace A084188

/-- `floor(sqrt(2)*2^n)` -/
def P1889552403390403719.Spec : Prop :=
  ∀ n, P1889552403390403719.a n = A084188 n

end A084188

/-! ## A084188.P8674327046962162926

`A116601(2*n+3)`
-/

namespace A084188.P8674327046962162926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116601 (2 * n + 3)

end

end A084188.P8674327046962162926

namespace A084188

/-- `A116601(2*n+3)` -/
def P8674327046962162926.Spec : Prop :=
  ∀ n, P8674327046962162926.a n = A084188 n

end A084188

/-! ## A084188.P15197634002220793159

`A018048(4*n+2)`
-/

namespace A084188.P15197634002220793159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018048 (4 * n + 2)

end

end A084188.P15197634002220793159

namespace A084188

/-- `A018048(4*n+2)` -/
def P15197634002220793159.Spec : Prop :=
  ∀ n, P15197634002220793159.a n = A084188 n

end A084188

/-! ## A084188.P4471901017355818629

`A017912(Δ[n²])-1`
-/

namespace A084188.P4471901017355818629
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017912 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat - 1

end

end A084188.P4471901017355818629

namespace A084188

/-- `A017912(Δ[n²])-1` -/
def P4471901017355818629.Spec : Prop :=
  ∀ n, P4471901017355818629.a n = A084188 n

end A084188

/-! ## A084188.P13609649461933442889

`A136417(Δ[n²])-1`
-/

namespace A084188.P13609649461933442889
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136417 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat - 1

end

end A084188.P13609649461933442889

namespace A084188

/-- `A136417(Δ[n²])-1` -/
def P13609649461933442889.Spec : Prop :=
  ∀ n, P13609649461933442889.a n = A084188 n

end A084188

/-! ## A084188.P3898350281344704693

`∑[round(sqrt(2)*A011782(n))]`
-/

namespace A084188.P3898350281344704693
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (2 : ℝ) * (A011782 n : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A084188.P3898350281344704693

namespace A084188

/-- `∑[round(sqrt(2)*A011782(n))]` -/
def P3898350281344704693.Spec : Prop :=
  ∀ n, P3898350281344704693.a n = A084188 n

end A084188

/-! ## A084188.P9117190702565783011

`record[floor(A135530(n)/sqrt(2))]`
-/

namespace A084188.P9117190702565783011
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A135530 n : ℝ) / Real.sqrt (2 : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A084188.P9117190702565783011

namespace A084188

/-- `record[floor(A135530(n)/sqrt(2))]` -/
def P9117190702565783011.Spec : Prop :=
  ∀ n, P9117190702565783011.a n = A084188 n

end A084188

/-! ## A084188.P5021727390868252323

`A188917(Δ[n²])-(n+1)`
-/

namespace A084188.P5021727390868252323
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188917 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat - (n + 1 : ℤ)

end

end A084188.P5021727390868252323

namespace A084188

/-- `A188917(Δ[n²])-(n+1)` -/
def P5021727390868252323.Spec : Prop :=
  ∀ n, P5021727390868252323.a n = A084188 n

end A084188

/-! ## A084188.P16740164815166292062

`record[floor((A324865(n+1)+1)*sqrt(2))]`
-/

namespace A084188.P16740164815166292062
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A324865 (n + 1) + 1 : ℝ) * Real.sqrt (2 : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A084188.P16740164815166292062

namespace A084188

/-- `record[floor((A324865(n+1)+1)*sqrt(2))]` -/
def P16740164815166292062.Spec : Prop :=
  ∀ n, P16740164815166292062.a n = A084188 n

end A084188

/-! ## A084188.P8241201799545398409

`floor((A000225(n)+1)*sqrt(2))+(2*n)%2`
-/

namespace A084188.P8241201799545398409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000225 n + 1 : ℝ) * Real.sqrt (2 : ℝ)⌋ + ((2 * n % 2 : ℕ) : ℤ)

end

end A084188.P8241201799545398409

namespace A084188

/-- `floor((A000225(n)+1)*sqrt(2))+(2*n)%2` -/
def P8241201799545398409.Spec : Prop :=
  ∀ n, P8241201799545398409.a n = A084188 n

end A084188

/-! ## A084188.P8932084933292461531

`record[A017910(A000265(n+1))]`
-/

namespace A084188.P8932084933292461531
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017910 (A000265 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A084188.P8932084933292461531

namespace A084188

/-- `record[A017910(A000265(n+1))]` -/
def P8932084933292461531.Spec : Prop :=
  ∀ n, P8932084933292461531.a n = A084188 n

end A084188

/-! ## A084188.P5627664716066910772

`A017911(2*n+1)-A004539(n+2)`
-/

namespace A084188.P5627664716066910772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017911 (2 * n + 1) - A004539 (n + 2)

end

end A084188.P5627664716066910772

namespace A084188

/-- `A017911(2*n+1)-A004539(n+2)` -/
def P5627664716066910772.Spec : Prop :=
  ∀ n, P5627664716066910772.a n = A084188 n

end A084188

/-! ## A084188.P2069097324447453222

`A001521(2*(n+1))-A000079(n)`
-/

namespace A084188.P2069097324447453222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001521 (2 * (n + 1)) - A000079 n

end

end A084188.P2069097324447453222

namespace A084188

/-- `A001521(2*(n+1))-A000079(n)` -/
def P2069097324447453222.Spec : Prop :=
  ∀ n, P2069097324447453222.a n = A084188 n

end A084188

/-! ## A084188.P9145333987613046442

`A001521(2*(n+1))-A017911(2*n)`
-/

namespace A084188.P9145333987613046442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001521 (2 * (n + 1)) - A017911 (2 * n)

end

end A084188.P9145333987613046442

namespace A084188

/-- `A001521(2*(n+1))-A017911(2*n)` -/
def P9145333987613046442.Spec : Prop :=
  ∀ n, P9145333987613046442.a n = A084188 n

end A084188

/-! ## A084188.P7317104631348671802

`A001521(2*n+3)-A057048(2*n+1)`
-/

namespace A084188.P7317104631348671802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001521 (2 * n + 3) - A057048 (2 * n + 1)

end

end A084188.P7317104631348671802

namespace A084188

/-- `A001521(2*n+3)-A057048(2*n+1)` -/
def P7317104631348671802.Spec : Prop :=
  ∀ n, P7317104631348671802.a n = A084188 n

end A084188

/-! ## A084188.P3834410571647408000

`sqrt(A065732(2*n+1))`
-/

namespace A084188.P3834410571647408000
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A065732 (2 * n + 1) : ℝ)

end

end A084188.P3834410571647408000

namespace A084188

/-- `sqrt(A065732(2*n+1))` -/
def P3834410571647408000.Spec : Prop :=
  ∀ n, P3834410571647408000.a n = (A084188 n : ℝ)

end A084188

/-!
# A084189: Minimum digit out of both prime factors of the numbers in A046376.

The programs for A084189, there is no canonical definition to state claims against.
-/

/-! ## A084189.P1300002250472134137

`A188260(2*(n+1))+A000122(A079955(2*n+1))`
-/

namespace A084189.P1300002250472134137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188260 (2 * (n + 1)) + A000122 (A079955 (2 * n + 1)).toNat

end

end A084189.P1300002250472134137

/-! ## A084189.P18375489369595014334

`A104273(A104307(3*n+4)+21)`
-/

namespace A084189.P18375489369595014334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104273 (A104307 (3 * n + 4) + 21).toNat

end

end A084189.P18375489369595014334

/-! ## A084189.P13187738223101026199

`A014860(a(n-1)*A000073(n))` with `a(0)=2, a(1)=2, a(2)=3`
-/

namespace A084189.P13187738223101026199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 2, 3] fun n a =>
  A014860 (a (n - 1) * A000073 n).toNat

end

end A084189.P13187738223101026199

/-! ## A084189.P10611212852426491599

`A014902(a(n-1)*A000073(n))` with `a(0)=2, a(1)=2, a(2)=3`
-/

namespace A084189.P10611212852426491599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 2, 3] fun n a =>
  A014902 (a (n - 1) * A000073 n).toNat

end

end A084189.P10611212852426491599

/-! ## A084189.P8399990362264085662

`A015130(a(n-1)*A000073(n))` with `a(0)=2, a(1)=2, a(2)=3`
-/

namespace A084189.P8399990362264085662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 2, 3] fun n a =>
  A015130 (a (n - 1) * A000073 n).toNat

end

end A084189.P8399990362264085662

/-!
# A084190: Least common multiple of {d-1: d > 1 and d divides n}.

The programs for A084190, there is no canonical definition to state claims against.
-/

/-! ## A084190.P12204877730216345101

`lcm(n+1, A258324(n+1))/(n+1)`
-/

namespace A084190.P12204877730216345101
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (n + 1 : ℤ) (A258324 (n + 1)) : ℚ) / (n + 1 : ℚ)

end

end A084190.P12204877730216345101

/-! ## A084190.P12009902627353318590

`A258324(n+1)/A048671(n+1)`
-/

namespace A084190.P12009902627353318590
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A258324 (n + 1) : ℚ) / (A048671 (n + 1) : ℚ)

end

end A084190.P12009902627353318590

/-! ## A084190.P15734368633263985948

`C(n, A088433(A077168(n)))`
-/

namespace A084190.P15734368633263985948
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n (A088433 (A077168 n).toNat).toNat

end

end A084190.P15734368633263985948

/-! ## A084190.P5553175774238427790

`C(n, A349326(A092809(n)))`
-/

namespace A084190.P5553175774238427790
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n (A349326 (A092809 n).toNat).toNat

end

end A084190.P5553175774238427790

/-! ## A084190.P11946580990408810923

`C(n, A119387(A034729(n+1)))`
-/

namespace A084190.P11946580990408810923
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n (A119387 (A034729 (n + 1)).toNat).toNat

end

end A084190.P11946580990408810923

/-!
# A084191: a(n) = A084190(A084190(n)).

The programs for A084191, there is no canonical definition to state claims against.
-/

/-! ## A084191.P3969416349819503758

`A084190(A084190(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A084191.P3969416349819503758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084190 (A084190 (n + 1)).toNat

end

end A084191.P3969416349819503758

/-! ## A084191.P13864298010899315479

`A084190(C(n, ∑{e}[A123747(n), #]))`
-/

namespace A084191.P13864298010899315479
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123747 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084190 (Nat.choose n (∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p))

end

end A084191.P13864298010899315479

/-!
# A084192: Array read by antidiagonals: T(n,k) = solution to postage stamp problem with n stamps and k denominations (n >= 1, k >= 1).

The programs for A084192, there is no canonical definition to state claims against.
-/

/-! ## A084192.P1101073462427550754

`A084193(∑[2*n]%comp[∑[n]])`
-/

namespace A084192.P1101073462427550754
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084193 ((∑ j ∈ Finset.range (n + 1), f1 j) % SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

end

end A084192.P1101073462427550754

/-! ## A084192.P16144354816928596385

`A084193(∑[char[∑[n]]]²-(n+1))`
-/

namespace A084192.P16144354816928596385
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084193 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - (n + 1))

end

end A084192.P16144354816928596385

/-! ## A084192.P13196755321431640785

`and(-1, A084193(A061579(n)))`
-/

namespace A084192.P13196755321431640785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A084193 (A061579 n).toNat)

end

end A084192.P13196755321431640785

/-! ## A084192.P6042948545756390416

`A084193(A061579(n))*A304042(n)`
-/

namespace A084192.P6042948545756390416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084193 (A061579 n).toNat * A304042 n

end

end A084192.P6042948545756390416

/-! ## A084192.P3330976305092697372

`A084193(A061579(n))^A178334(n)`
-/

namespace A084192.P3330976305092697372
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A084193 (A061579 n).toNat : ℚ) ^ (A178334 n : ℤ)

end

end A084192.P3330976305092697372

/-! ## A084192.P2159233235956559067

`A084193(A061579(n))%A002146(n)`
-/

namespace A084192.P2159233235956559067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A084193 (A061579 n).toNat) (A002146 n)

end

end A084192.P2159233235956559067

/-! ## A084192.P1861424496228295650

`gcd(A000038(n), A084193(A061579(n)))`
-/

namespace A084192.P1861424496228295650
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A084193 (A061579 n).toNat)

end

end A084192.P1861424496228295650

/-! ## A084192.P10608408929186361665

`∑{d}[A084193(A061579(n)), A000010(#)]`
-/

namespace A084192.P10608408929186361665
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084193 (A061579 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A084192.P10608408929186361665

/-! ## A084192.P10599605073261967258

`A007318(C(2, n))*A084193(A061579(n))`
-/

namespace A084192.P10599605073261967258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A084193 (A061579 n).toNat

end

end A084192.P10599605073261967258

/-!
# A084193: Array read by antidiagonals: T(k,n) = solution to postage stamp problem with n stamps and k denominations (n >= 1, k >= 1).

The programs for A084193, there is no canonical definition to state claims against.
-/

/-! ## A084193.P5982728719897224999

`A084192(∑[2*n]%comp[∑[n]])`
-/

namespace A084193.P5982728719897224999
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084192 ((∑ j ∈ Finset.range (n + 1), f1 j) % SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

end

end A084193.P5982728719897224999

/-! ## A084193.P18212076583984272381

`A084192(∑[char[∑[n]]]²-(n+1))`
-/

namespace A084193.P18212076583984272381
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084192 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - (n + 1))

end

end A084193.P18212076583984272381

/-! ## A084193.P5741520774525878423

`and(-1, A084192(A061579(n)))`
-/

namespace A084193.P5741520774525878423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A084192 (A061579 n).toNat)

end

end A084193.P5741520774525878423

/-! ## A084193.P2111055952667101553

`A084192(A061579(n))*A304042(n)`
-/

namespace A084193.P2111055952667101553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084192 (A061579 n).toNat * A304042 n

end

end A084193.P2111055952667101553

/-! ## A084193.P7214358073344284876

`A084192(A061579(n))^A178334(n)`
-/

namespace A084193.P7214358073344284876
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A084192 (A061579 n).toNat : ℚ) ^ (A178334 n : ℤ)

end

end A084193.P7214358073344284876

/-! ## A084193.P1066985624187251020

`A084192(A061579(n))%A004768(n)`
-/

namespace A084193.P1066985624187251020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A084192 (A061579 n).toNat) (A004768 n)

end

end A084193.P1066985624187251020

/-! ## A084193.P7453478072741204285

`gcd(A000038(n), A084192(A061579(n)))`
-/

namespace A084193.P7453478072741204285
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A084192 (A061579 n).toNat)

end

end A084193.P7453478072741204285

/-! ## A084193.P8249253569151310240

`A007318(C(3, n))*A084192(A061579(n))`
-/

namespace A084193.P8249253569151310240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 3 n) * A084192 (A061579 n).toNat

end

end A084193.P8249253569151310240

/-! ## A084193.P15815740764016178530

`(A007318(n)%2)!*A084192(A061579(n))`
-/

namespace A084193.P15815740764016178530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (Int.tmod (A007318 n) 2).toNat : ℤ) * A084192 (A061579 n).toNat

end

end A084193.P15815740764016178530

/-!
# A084194: Even numbers n such that the sum of the digits is prime and the sum of the digits of n/2 is also prime.

The programs for A084194, there is no canonical definition to state claims against.
-/

/-! ## A084194.P12554486583561541280

`∩[2*A028834(n+1), A028834(n+1)]`
-/

namespace A084194.P12554486583561541280
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028834 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028834 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A084194.P12554486583561541280

/-! ## A084194.P7026204816883116087

`∩[A028834(n+1), A004277(A028834(n+1))]`
-/

namespace A084194.P7026204816883116087
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028834 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A028834 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A084194.P7026204816883116087

/-! ## A084194.P10669221022488664943

`∩[A028834(n+2), A005843(A028834(n+2))]`
-/

namespace A084194.P10669221022488664943
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028834 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A028834 (n + 2)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A084194.P10669221022488664943

/-! ## A084194.P9102503171835852651

`∩[A004275(A028834(n+1)+1), A028834(n+1)]`
-/

namespace A084194.P9102503171835852651
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (A028834 (n + 1) + 1).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028834 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A084194.P9102503171835852651

/-!
# A084195: Even numbers n such that the sum of the digits is prime, n/2 is prime and the sum of the digits of n/2 is also prime.

The programs for A084195, there is no canonical definition to state claims against.
-/

/-! ## A084195.P14020825581186277717

`2*A084201(n+1)`
-/

namespace A084195.P14020825581186277717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A084201 (n + 1)

end

end A084195.P14020825581186277717

/-! ## A084195.P17371087793849818194

`∩[A001747(n+1), A093994(n+1)]`
-/

namespace A084195.P17371087793849818194
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001747 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093994 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A084195.P17371087793849818194

/-! ## A084195.P16377298617389692583

`∩[A066190(n+1), A093994(n+1)]`
-/

namespace A084195.P16377298617389692583
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066190 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093994 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A084195.P16377298617389692583

/-! ## A084195.P3739881942003001495

`∩[A066664(n+1), A093994(n+1)]`
-/

namespace A084195.P3739881942003001495
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066664 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093994 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A084195.P3739881942003001495

/-! ## A084195.P12048140001814876653

`∩[A073582(n+1), A093994(n+1)]`
-/

namespace A084195.P12048140001814876653
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073582 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093994 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A084195.P12048140001814876653

/-! ## A084195.P18204035628744462906

`∩[A074845(n+1), A093994(n+1)]`
-/

namespace A084195.P18204035628744462906
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074845 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093994 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A084195.P18204035628744462906

/-! ## A084195.P18320268431357541523

`∩[A093994(n+1), A100484(n+1)]`
-/

namespace A084195.P18320268431357541523
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093994 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100484 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A084195.P18320268431357541523

/-! ## A084195.P17572799783374833415

`∩[A015812(n+1), A093994(n+1)]`
-/

namespace A084195.P17572799783374833415
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015812 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093994 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A084195.P17572799783374833415

/-! ## A084195.P6914271035536667262

`∩[A050990(n+1), A093994(n+1)]`
-/

namespace A084195.P6914271035536667262
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050990 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093994 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A084195.P6914271035536667262

/-! ## A084195.P13227810575396185476

`∩[A093994(n+1), A119431(n+1)]`
-/

namespace A084195.P13227810575396185476
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093994 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119431 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A084195.P13227810575396185476

/-! ## A084195.P9649388485193190515

`∩[A001747(n+1), A084194(n+1)]`
-/

namespace A084195.P9649388485193190515
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001747 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084194 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A084195.P9649388485193190515

/-! ## A084195.P16604409780786419148

`∩[A055163(n+1), A084194(n+1)]`
-/

namespace A084195.P16604409780786419148
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055163 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084194 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A084195.P16604409780786419148

/-! ## A084195.P15157865287277794704

`∩[A066190(n+1), A084194(n+1)]`
-/

namespace A084195.P15157865287277794704
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066190 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084194 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A084195.P15157865287277794704

/-! ## A084195.P16360526671596567510

`∩[A066664(n+1), A084194(n+1)]`
-/

namespace A084195.P16360526671596567510
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066664 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084194 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A084195.P16360526671596567510

/-! ## A084195.P4762855570875356125

`∩[A073582(n+1), A084194(n+1)]`
-/

namespace A084195.P4762855570875356125
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073582 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084194 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A084195.P4762855570875356125

/-! ## A084195.P12578183207310162757

`∩[A074845(n+1), A084194(n+1)]`
-/

namespace A084195.P12578183207310162757
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074845 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084194 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A084195.P12578183207310162757

/-! ## A084195.P8984135607394704346

`∩[A084194(n+1), A100484(n+1)]`
-/

namespace A084195.P8984135607394704346
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084194 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100484 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A084195.P8984135607394704346

/-! ## A084195.P14083846232852841247

`∩[A084194(n+1), A119431(n+1)]`
-/

namespace A084195.P14083846232852841247
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084194 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119431 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A084195.P14083846232852841247

/-! ## A084195.P2853600798263678790

`∩[A161425(n+1), A084194(n+1)]`
-/

namespace A084195.P2853600798263678790
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161425 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084194 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A084195.P2853600798263678790

/-! ## A084195.P16036617135020163495

`∩[A207574(n+1), A084194(n+1)]`
-/

namespace A084195.P16036617135020163495
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207574 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084194 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A084195.P16036617135020163495

/-!
# A084196: Number of primes q

The programs for A084196, the canonical program `A084196.P3907743680021484046` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A084196 has offset 1).

The definition of A084196 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1229 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A084196.P3907743680021484046

`A072627(A008864(n+1))-1`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A084196

/-- `A072627(A008864(n+1))-1` -/
def P3907743680021484046.Spec : Prop :=
  ∀ n, P3907743680021484046.a n = A084196 (n + 1)

theorem P3907743680021484046.correct : P3907743680021484046.Spec := by
  intro n
  simp only [A084196, Nat.add_sub_cancel]

end A084196

/-! ## A084196.P1114916646884633552

`A072627(A175216(n+1))-1`
-/

namespace A084196.P1114916646884633552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072627 (A175216 (n + 1)).toNat - 1

end

end A084196.P1114916646884633552

namespace A084196

/-- `A072627(A175216(n+1))-1` -/
def P1114916646884633552.Spec : Prop :=
  ∀ n, P1114916646884633552.a n = A084196 (n + 1)

end A084196

/-! ## A084196.P17788837994458702354

`A072627(A299763(n+2))-1`
-/

namespace A084196.P17788837994458702354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072627 (A299763 (n + 2)).toNat - 1

end

end A084196.P17788837994458702354

namespace A084196

/-- `A072627(A299763(n+2))-1` -/
def P17788837994458702354.Spec : Prop :=
  ∀ n, P17788837994458702354.a n = A084196 (n + 1)

end A084196

/-! ## A084196.P6619064098446436716

`A072627(Δ[A007504(n)]+1)-1`
-/

namespace A084196.P6619064098446436716
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072627 (f1 (n + 1) - f1 n + 1).toNat - 1

end

end A084196.P6619064098446436716

namespace A084196

/-- `A072627(Δ[A007504(n)]+1)-1` -/
def P6619064098446436716.Spec : Prop :=
  ∀ n, P6619064098446436716.a n = A084196 (n + 1)

end A084196

/-! ## A084196.P818978757258451867

`A072627(A000040(n+1)+1)-1`
-/

namespace A084196.P818978757258451867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072627 (A000040 (n + 1) + 1).toNat - 1

end

end A084196.P818978757258451867

namespace A084196

/-- `A072627(A000040(n+1)+1)-1` -/
def P818978757258451867.Spec : Prop :=
  ∀ n, P818978757258451867.a n = A084196 (n + 1)

end A084196

/-! ## A084196.P6247014484576775308

`A072627(A006093(n+1)+2)-1`
-/

namespace A084196.P6247014484576775308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072627 (A006093 (n + 1) + 2).toNat - 1

end

end A084196.P6247014484576775308

namespace A084196

/-- `A072627(A006093(n+1)+2)-1` -/
def P6247014484576775308.Spec : Prop :=
  ∀ n, P6247014484576775308.a n = A084196 (n + 1)

end A084196

/-! ## A084196.P15982408160294140914

`A072627(A113935(n+1)-2)-1`
-/

namespace A084196.P15982408160294140914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072627 (A113935 (n + 1) - 2).toNat - 1

end

end A084196.P15982408160294140914

namespace A084196

/-- `A072627(A113935(n+1)-2)-1` -/
def P15982408160294140914.Spec : Prop :=
  ∀ n, P15982408160294140914.a n = A084196 (n + 1)

end A084196

/-! ## A084196.P8554011109595389697

`A072627(A139049(n+1)-5)-1`
-/

namespace A084196.P8554011109595389697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072627 (A139049 (n + 1) - 5).toNat - 1

end

end A084196.P8554011109595389697

namespace A084196

/-- `A072627(A139049(n+1)-5)-1` -/
def P8554011109595389697.Spec : Prop :=
  ∀ n, P8554011109595389697.a n = A084196 (n + 1)

end A084196

/-! ## A084196.P2100484010096399175

`A072627(A140353(n+1)-8)-1`
-/

namespace A084196.P2100484010096399175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072627 (A140353 (n + 1) - 8).toNat - 1

end

end A084196.P2100484010096399175

namespace A084196

/-- `A072627(A140353(n+1)-8)-1` -/
def P2100484010096399175.Spec : Prop :=
  ∀ n, P2100484010096399175.a n = A084196 (n + 1)

end A084196

/-! ## A084196.P14635612245986972370

`(A072627(Δ[A007504(n)]+1)+A057428(n+1))%(n+1)`
-/

namespace A084196.P14635612245986972370
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A072627 (f1 (n + 1) - f1 n + 1).toNat + A057428 (n + 1)) (n + 1 : ℤ)

end

end A084196.P14635612245986972370

namespace A084196

/-- `(A072627(Δ[A007504(n)]+1)+A057428(n+1))%(n+1)` -/
def P14635612245986972370.Spec : Prop :=
  ∀ n, P14635612245986972370.a n = A084196 (n + 1)

end A084196

/-! ## A084196.P5007318308831100392

`A339791(A014963(n+1))+A072627(A008864(n+1))`
-/

namespace A084196.P5007318308831100392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339791 (A014963 (n + 1)).toNat + A072627 (A008864 (n + 1)).toNat

end

end A084196.P5007318308831100392

namespace A084196

/-- `A339791(A014963(n+1))+A072627(A008864(n+1))` -/
def P5007318308831100392.Spec : Prop :=
  ∀ n, P5007318308831100392.a n = A084196 (n + 1)

end A084196

/-! ## A084196.P8410134600176248654

`A321804(A299236(n+1))+A072627(A008864(n+1))`
-/

namespace A084196.P8410134600176248654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321804 (A299236 (n + 1)).toNat + A072627 (A008864 (n + 1)).toNat

end

end A084196.P8410134600176248654

namespace A084196

/-- `A321804(A299236(n+1))+A072627(A008864(n+1))` -/
def P8410134600176248654.Spec : Prop :=
  ∀ n, P8410134600176248654.a n = A084196 (n + 1)

end A084196

/-!
# A084197: Primes p such that there exists at least one prime q

The programs for A084197, the canonical program `A084197.P18366855963661557325` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A084197 has offset 1).

The definition of A084197 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8443 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A084197.P17118078632446039955

`A000040(lt[1, A084199(n+1)]+1)`
-/

namespace A084197.P17118078632446039955
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084199 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1)

end

end A084197.P17118078632446039955

namespace A084197

/-- `A000040(lt[1, A084199(n+1)]+1)` -/
def P17118078632446039955.Spec : Prop :=
  ∀ n, P17118078632446039955.a n = A084197 (n + 1)

end A084197

/-! ## A084197.P18366855963661557325

`A000040(lt[1, (n+1)*A084196(n+1)]+1)`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A084197

/-- `A000040(lt[1, (n+1)*A084196(n+1)]+1)` -/
def P18366855963661557325.Spec : Prop :=
  ∀ n, P18366855963661557325.a n = A084197 (n + 1)

theorem P18366855963661557325.correct : P18366855963661557325.Spec := by
  intro n
  simp only [A084197, Nat.add_sub_cancel]

end A084197

/-! ## A084197.P12818580836955096289

`A008578(lt[1, A084199(n+1)]+2)`
-/

namespace A084197.P12818580836955096289
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084199 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 2)

end

end A084197.P12818580836955096289

namespace A084197

/-- `A008578(lt[1, A084199(n+1)]+2)` -/
def P12818580836955096289.Spec : Prop :=
  ∀ n, P12818580836955096289.a n = A084197 (n + 1)

end A084197

/-! ## A084197.P10056161482859325449

`p?[lt[n, A322702(n+1)]]`
-/

namespace A084197.P10056161482859325449
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322702 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A084197.P10056161482859325449

namespace A084197

/-- `p?[lt[n, A322702(n+1)]]` -/
def P10056161482859325449.Spec : Prop :=
  ∀ n, (P10056161482859325449.a n : ℤ) = A084197 (n + 1)

end A084197

/-! ## A084197.P1200363554575078851

`p?[lt[1, A072627(n+1)]]`
-/

namespace A084197.P1200363554575078851
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072627 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A084197.P1200363554575078851

namespace A084197

/-- `p?[lt[1, A072627(n+1)]]` -/
def P1200363554575078851.Spec : Prop :=
  ∀ n, (P1200363554575078851.a n : ℤ) = A084197 (n + 1)

end A084197

/-! ## A084197.P17063783557324650395

`p?[(n+1)%A322702(A007918(n)+1)]`
-/

namespace A084197.P17063783557324650395
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 1 : ℤ) (A322702 (A007918 n + 1).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A084197.P17063783557324650395

namespace A084197

/-- `p?[(n+1)%A322702(A007918(n)+1)]` -/
def P17063783557324650395.Spec : Prop :=
  ∀ n, P17063783557324650395.a n = A084197 (n + 1)

end A084197

/-! ## A084197.P14702263223674526046

`p?[A093178(n)*A157928(A072627(n+1))]`
-/

namespace A084197.P14702263223674526046
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093178 n * A157928 (A072627 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A084197.P14702263223674526046

namespace A084197

/-- `p?[A093178(n)*A157928(A072627(n+1))]` -/
def P14702263223674526046.Spec : Prop :=
  ∀ n, P14702263223674526046.a n = A084197 (n + 1)

end A084197

/-! ## A084197.P13467777580021305522

`eq[A053989(n+1), A060576(A072627(n+1))]`
-/

namespace A084197.P13467777580021305522
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053989 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060576 (A072627 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A084197.P13467777580021305522

namespace A084197

/-- `eq[A053989(n+1), A060576(A072627(n+1))]` -/
def P13467777580021305522.Spec : Prop :=
  ∀ n, (P13467777580021305522.a n : ℤ) = A084197 (n + 1)

end A084197

/-! ## A084197.P7501394092455253154

`p?[gcd(n, A249803(n+1))%A322702(n+1)]`
-/

namespace A084197.P7501394092455253154
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.gcd (n : ℤ) (A249803 (n + 1)) : ℤ) (A322702 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A084197.P7501394092455253154

namespace A084197

/-- `p?[gcd(n, A249803(n+1))%A322702(n+1)]` -/
def P7501394092455253154.Spec : Prop :=
  ∀ n, P7501394092455253154.a n = A084197 (n + 1)

end A084197

/-!
# A084198: Primes p such that there exists exactly one prime q

The programs for A084198, the canonical program `A084198.P914758902079436018` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A084198 has offset 1).

The definition of A084198 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1013 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A084198.P914758902079436018

`A000040(eq[1, A084196(n+1)]+1)`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A084198

/-- `A000040(eq[1, A084196(n+1)]+1)` -/
def P914758902079436018.Spec : Prop :=
  ∀ n, P914758902079436018.a n = A084198 (n + 1)

theorem P914758902079436018.correct : P914758902079436018.Spec := by
  intro n
  simp only [A084198, Nat.add_sub_cancel]

end A084198

/-! ## A084198.P7580645892348602063

`p?[A000040(n+1)*A084196(n+1)]`
-/

namespace A084198.P7580645892348602063
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * A084196 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A084198.P7580645892348602063

namespace A084198

/-- `p?[A000040(n+1)*A084196(n+1)]` -/
def P7580645892348602063.Spec : Prop :=
  ∀ n, P7580645892348602063.a n = A084198 (n + 1)

end A084198

/-! ## A084198.P10780558137139777221

`p?[A008578(n+2)*A084196(n+1)]`
-/

namespace A084198.P10780558137139777221
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 2) * A084196 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A084198.P10780558137139777221

namespace A084198

/-- `p?[A008578(n+2)*A084196(n+1)]` -/
def P10780558137139777221.Spec : Prop :=
  ∀ n, P10780558137139777221.a n = A084198 (n + 1)

end A084198

/-! ## A084198.P17064130286654688627

`p?[lcm(A073579(n+1), A084196(n+1))]`
-/

namespace A084198.P17064130286654688627
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A073579 (n + 1)) (A084196 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A084198.P17064130286654688627

namespace A084198

/-- `p?[lcm(A073579(n+1), A084196(n+1))]` -/
def P17064130286654688627.Spec : Prop :=
  ∀ n, (P17064130286654688627.a n : ℤ) = A084198 (n + 1)

end A084198

/-! ## A084198.P16774437706550251949

`p?[lcm(A008578(n+3), A084196(n+2))]`
-/

namespace A084198.P16774437706550251949
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A008578 (n + 3)) (A084196 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A084198.P16774437706550251949

namespace A084198

/-- `p?[lcm(A008578(n+3), A084196(n+2))]` -/
def P16774437706550251949.Spec : Prop :=
  ∀ n, (P16774437706550251949.a n : ℤ) = A084198 (n + 1)

end A084198

/-! ## A084198.P10621952790949375484

`p?[eq[2, A072627(n+1)]]`
-/

namespace A084198.P10621952790949375484
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072627 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A084198.P10621952790949375484

namespace A084198

/-- `p?[eq[2, A072627(n+1)]]` -/
def P10621952790949375484.Spec : Prop :=
  ∀ n, (P10621952790949375484.a n : ℤ) = A084198 (n + 1)

end A084198

/-! ## A084198.P2691225054571402495

`eq[A072627(n+1), A092976(n)]`
-/

namespace A084198.P2691225054571402495
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072627 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092976 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A084198.P2691225054571402495

namespace A084198

/-- `eq[A072627(n+1), A092976(n)]` -/
def P2691225054571402495.Spec : Prop :=
  ∀ n, (P2691225054571402495.a n : ℤ) = A084198 (n + 1)

end A084198

/-! ## A084198.P1611145490448643321

`eq[A072627(n+1), A225244(n)]`
-/

namespace A084198.P1611145490448643321
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072627 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225244 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A084198.P1611145490448643321

namespace A084198

/-- `eq[A072627(n+1), A225244(n)]` -/
def P1611145490448643321.Spec : Prop :=
  ∀ n, (P1611145490448643321.a n : ℤ) = A084198 (n + 1)

end A084198

/-! ## A084198.P12374594723854783914

`eq[A072627(n+1), A327859(n)]`
-/

namespace A084198.P12374594723854783914
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072627 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327859 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A084198.P12374594723854783914

namespace A084198

/-- `eq[A072627(n+1), A327859(n)]` -/
def P12374594723854783914.Spec : Prop :=
  ∀ n, (P12374594723854783914.a n : ℤ) = A084198 (n + 1)

end A084198

/-! ## A084198.P2517351871549217367

`eq[A072627(n+1), A343371(n)]`
-/

namespace A084198.P2517351871549217367
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072627 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343371 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A084198.P2517351871549217367

namespace A084198

/-- `eq[A072627(n+1), A343371(n)]` -/
def P2517351871549217367.Spec : Prop :=
  ∀ n, (P2517351871549217367.a n : ℤ) = A084198 (n + 1)

end A084198

/-! ## A084198.P9089897811328766929

`eq[A072627(n+1), A373982(n)]`
-/

namespace A084198.P9089897811328766929
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072627 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373982 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A084198.P9089897811328766929

namespace A084198

/-- `eq[A072627(n+1), A373982(n)]` -/
def P9089897811328766929.Spec : Prop :=
  ∀ n, (P9089897811328766929.a n : ℤ) = A084198 (n + 1)

end A084198

/-! ## A084198.P2990032363961494098

`eq[A072627(n+1), A398023(n)]`
-/

namespace A084198.P2990032363961494098
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072627 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398023 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A084198.P2990032363961494098

namespace A084198

/-- `eq[A072627(n+1), A398023(n)]` -/
def P2990032363961494098.Spec : Prop :=
  ∀ n, (P2990032363961494098.a n : ℤ) = A084198 (n + 1)

end A084198

/-! ## A084198.P15517869577997467878

`eq[A143862(n)+1, A072627(n+1)]`
-/

namespace A084198.P15517869577997467878
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143862 n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072627 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A084198.P15517869577997467878

namespace A084198

/-- `eq[A143862(n)+1, A072627(n+1)]` -/
def P15517869577997467878.Spec : Prop :=
  ∀ n, (P15517869577997467878.a n : ℤ) = A084198 (n + 1)

end A084198

/-! ## A084198.P2739893713602623553

`eq[A327642(n)+1, A072627(n+1)]`
-/

namespace A084198.P2739893713602623553
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327642 n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072627 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A084198.P2739893713602623553

namespace A084198

/-- `eq[A327642(n)+1, A072627(n+1)]` -/
def P2739893713602623553.Spec : Prop :=
  ∀ n, (P2739893713602623553.a n : ℤ) = A084198 (n + 1)

end A084198

/-! ## A084198.P9506578945625314265

`eq[2, A072627(n+1)+A007920(n)²]`
-/

namespace A084198.P9506578945625314265
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072627 (n + 1) + A007920 n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A084198.P9506578945625314265

namespace A084198

/-- `eq[2, A072627(n+1)+A007920(n)²]` -/
def P9506578945625314265.Spec : Prop :=
  ∀ n, (P9506578945625314265.a n : ℤ) = A084198 (n + 1)

end A084198

/-!
# A084199: Smallest prime q < prime(n) such that q+1 divides prime(n)+1, a(n) = 1 if no such q exists.

The programs for A084199, there is no canonical definition to state claims against.
-/

/-! ## A084199.P817235449492085542

`A060383(A084200(n+1))`
-/

namespace A084199.P817235449492085542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060383 (A084200 (n + 1)).toNat

end

end A084199.P817235449492085542

/-! ## A084199.P13385223210010752524

`gcd(A111538(n), A355739(A039710(n+1)))`
-/

namespace A084199.P13385223210010752524
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A111538 n) (A355739 (A039710 (n + 1)).toNat)

end

end A084199.P13385223210010752524

/-! ## A084199.P5268244841969640395

`gcd(A085331(n+1), A249576(A000040(n+1)))`
-/

namespace A084199.P5268244841969640395
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A085331 (n + 1)) (A249576 (A000040 (n + 1)).toNat)

end

end A084199.P5268244841969640395

/-! ## A084199.P2674768726034008438

`A090822(A128165(n+1)-A030302(2*n+3))`
-/

namespace A084199.P2674768726034008438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090822 (A128165 (n + 1) - A030302 (2 * n + 3)).toNat

end

end A084199.P2674768726034008438

/-! ## A084199.P12072969052693505576

`A124768(∪[A109298(3*n+1), A334587(n+1)])`
-/

namespace A084199.P12072969052693505576
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109298 (3 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334587 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124768 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n)

end

end A084199.P12072969052693505576

