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
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C040
import Seq.B000.C043
import Seq.B000.C045
import Seq.B000.C046
import Seq.B000.C048
import Seq.B000.C049
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
import Seq.B003.C004
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B007.C000
import Seq.B008.C000
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
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
import Seq.Opaque.C023
import SequenceMachineLib.Triangle

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A128200: Numbers of divisors of semiprime powers: A000005(A085155(n)).

The programs for A128200, the canonical program `A128200.P4601754634567503067` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A128200 has offset 1).

The definition of A128200 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A085155, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A128200.P4601754634567503067

`A000005(A085155(n+1))`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A128200

/-- `A000005(A085155(n+1))` -/
def P4601754634567503067.Spec : Prop :=
  ∀ n, P4601754634567503067.a n = A128200 (n + 1)

theorem P4601754634567503067.correct : P4601754634567503067.Spec := by
  intro n
  simp only [A128200, Nat.add_sub_cancel]

end A128200

/-! ## A128200.P1365849100175110986

`∑{d}[A085155(n+1), A062513(#)]`
-/

namespace A128200.P1365849100175110986
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085155 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A062513 d

end

end A128200.P1365849100175110986

namespace A128200

/-- `∑{d}[A085155(n+1), A062513(#)]` -/
def P1365849100175110986.Spec : Prop :=
  ∀ n, P1365849100175110986.a n = A128200 (n + 1)

end A128200

/-! ## A128200.P510792829310864138

`∑{d}[A085155(n+1), A057427(#)]`
-/

namespace A128200.P510792829310864138
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085155 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A057427 d

end

end A128200.P510792829310864138

namespace A128200

/-- `∑{d}[A085155(n+1), A057427(#)]` -/
def P510792829310864138.Spec : Prop :=
  ∀ n, P510792829310864138.a n = A128200 (n + 1)

end A128200

/-! ## A128200.P12089265385666196288

`∑{d}[A085155(n+1), A036622(A014963(2*#))]`
-/

namespace A128200.P12089265385666196288
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085155 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A036622 (A014963 (2 * d)).toNat

end

end A128200.P12089265385666196288

namespace A128200

/-- `∑{d}[A085155(n+1), A036622(A014963(2*#))]` -/
def P12089265385666196288.Spec : Prop :=
  ∀ n, P12089265385666196288.a n = A128200 (n + 1)

end A128200

/-! ## A128200.P4863735315486846000

`∑{d}[A085155(n+1), A014963(2*A056206(#))]`
-/

namespace A128200.P4863735315486846000
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085155 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A014963 (2 * A056206 d).toNat

end

end A128200.P4863735315486846000

namespace A128200

/-- `∑{d}[A085155(n+1), A014963(2*A056206(#))]` -/
def P4863735315486846000.Spec : Prop :=
  ∀ n, P4863735315486846000.a n = A128200 (n + 1)

end A128200

/-!
# A128201: Union of positive squares and the odd numbers.

The programs for A128201, the canonical program `A128201.P11268292657469231375` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A128201 has offset 1).

The definition of A128201 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A128201.P2742398543847822940

`comp[lcm(2, round(sqrt(n)+n))]`
-/

namespace A128201.P2742398543847822940
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (SequenceMachineLib.roundAway (Real.sqrt (n : ℝ) + (n : ℝ)))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A128201.P2742398543847822940

namespace A128201

/-- `comp[lcm(2, round(sqrt(n)+n))]` -/
def P2742398543847822940.Spec : Prop :=
  ∀ n, (P2742398543847822940.a n : ℤ) = A128201 (n + 1)

end A128201

/-! ## A128201.P2674420944994162059

`∪[(1+n)², Δ[n²]]`
-/

namespace A128201.P2674420944994162059
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (1 + n) ^ 2

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f3 (n + 1) : ℤ) - (f3 n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A128201.P2674420944994162059

namespace A128201

/-- `∪[(1+n)², Δ[n²]]` -/
def P2674420944994162059.Spec : Prop :=
  ∀ n, (P2674420944994162059.a n : ℤ) = A128201 (n + 1)

end A128201

/-! ## A128201.P6403042650357877540

`comp[2*comp[2*(n+1)²]]`
-/

namespace A128201.P6403042650357877540
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1) ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A128201.P6403042650357877540

namespace A128201

/-- `comp[2*comp[2*(n+1)²]]` -/
def P6403042650357877540.Spec : Prop :=
  ∀ n, (P6403042650357877540.a n : ℤ) = A128201 (n + 1)

end A128201

/-! ## A128201.P766442873118003883

`∪[2*n, n*(n+2)]+1`
-/

namespace A128201.P766442873118003883
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f2 j = x) n + 1

end

end A128201.P766442873118003883

namespace A128201

/-- `∪[2*n, n*(n+2)]+1` -/
def P766442873118003883.Spec : Prop :=
  ∀ n, (P766442873118003883.a n : ℤ) = A128201 (n + 1)

end A128201

/-! ## A128201.P2326158222509319225

`∑[gcd(2, A082234(n+1))]`
-/

namespace A128201.P2326158222509319225
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (A082234 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A128201.P2326158222509319225

namespace A128201

/-- `∑[gcd(2, A082234(n+1))]` -/
def P2326158222509319225.Spec : Prop :=
  ∀ n, (P2326158222509319225.a n : ℤ) = A128201 (n + 1)

end A128201

/-! ## A128201.P14732975497682056929

`lt[1-A056926(n), n%2]`
-/

namespace A128201.P14732975497682056929
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A056926 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A128201.P14732975497682056929

namespace A128201

/-- `lt[1-A056926(n), n%2]` -/
def P14732975497682056929.Spec : Prop :=
  ∀ n, (P14732975497682056929.a n : ℤ) = A128201 (n + 1)

end A128201

/-! ## A128201.P6264427701158453202

`∑[A132749(T(n-1,k-1)+T(n-1,k))]` with `a(0)=1, a(1)=2, a(2)=1`
-/

namespace A128201.P6264427701158453202
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 1] fun n f1 =>
  A132749 (SequenceMachineLib.triUpLeft f1 n + SequenceMachineLib.triUp f1 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A128201.P6264427701158453202

namespace A128201

/-- `∑[A132749(T(n-1,k-1)+T(n-1,k))]` -/
def P6264427701158453202.Spec : Prop :=
  ∀ n, P6264427701158453202.a n = A128201 (n + 1)

end A128201

/-! ## A128201.P16283425080986916730

`∑[A144112(n+1)%2]+n`
-/

namespace A128201.P16283425080986916730
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A144112 (n + 1)) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A128201.P16283425080986916730

namespace A128201

/-- `∑[A144112(n+1)%2]+n` -/
def P16283425080986916730.Spec : Prop :=
  ∀ n, P16283425080986916730.a n = A128201 (n + 1)

end A128201

/-! ## A128201.P11268292657469231375

`record[(n+1)*A009191(n+1)%2]`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A128201

/-- `record[(n+1)*A009191(n+1)%2]` -/
def P11268292657469231375.Spec : Prop :=
  ∀ n, P11268292657469231375.a n = A128201 (n + 1)

theorem P11268292657469231375.correct : P11268292657469231375.Spec := by
  intro n
  simp only [A128201, Nat.add_sub_cancel]

end A128201

/-! ## A128201.P17917922181721458787

`record[(n+1)*A331310(n+1)%2]`
-/

namespace A128201.P17917922181721458787
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * Int.tmod (A331310 (n + 1)) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A128201.P17917922181721458787

namespace A128201

/-- `record[(n+1)*A331310(n+1)%2]` -/
def P17917922181721458787.Spec : Prop :=
  ∀ n, P17917922181721458787.a n = A128201 (n + 1)

end A128201

/-! ## A128201.P7176193796711406522

`eq[A116891(n+1), A379952(n)]`
-/

namespace A128201.P7176193796711406522
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116891 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379952 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A128201.P7176193796711406522

namespace A128201

/-- `eq[A116891(n+1), A379952(n)]` -/
def P7176193796711406522.Spec : Prop :=
  ∀ n, (P7176193796711406522.a n : ℤ) = A128201 (n + 1)

end A128201

/-! ## A128201.P285482810606145130

`record[A244612(n+1)+A324908(n+1)+n]`
-/

namespace A128201.P285482810606145130
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244612 (n + 1) + (A324908 (n + 1) + (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A128201.P285482810606145130

namespace A128201

/-- `record[A244612(n+1)+A324908(n+1)+n]` -/
def P285482810606145130.Spec : Prop :=
  ∀ n, P285482810606145130.a n = A128201 (n + 1)

end A128201

/-! ## A128201.P7548740897033928756

`A001614(n+1)+A057212(n+1)*A057212(n+2)`
-/

namespace A128201.P7548740897033928756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001614 (n + 1) + A057212 (n + 1) * A057212 (n + 2)

end

end A128201.P7548740897033928756

namespace A128201

/-- `A001614(n+1)+A057212(n+1)*A057212(n+2)` -/
def P7548740897033928756.Spec : Prop :=
  ∀ n, P7548740897033928756.a n = A128201 (n + 1)

end A128201

/-! ## A128201.P5291861794125638356

`eq[A121262(n), A322996(n)]`
-/

namespace A128201.P5291861794125638356
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121262 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322996 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A128201.P5291861794125638356

namespace A128201

/-- `eq[A121262(n), A322996(n)]` -/
def P5291861794125638356.Spec : Prop :=
  ∀ n, (P5291861794125638356.a n : ℤ) = A128201 (n + 1)

end A128201

/-! ## A128201.P7175348414667638583

`filter[A003159(n+1), A379952(#)]`
-/

namespace A128201.P7175348414667638583
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003159 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A379952 (f1 j).toNat = 1) n)

end

end A128201.P7175348414667638583

namespace A128201

/-- `filter[A003159(n+1), A379952(#)]` -/
def P7175348414667638583.Spec : Prop :=
  ∀ n, P7175348414667638583.a n = A128201 (n + 1)

end A128201

/-! ## A128201.P4323615438365419671

`filter[A141259(n+1), A379952(#)]`
-/

namespace A128201.P4323615438365419671
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141259 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A379952 (f1 j).toNat = 1) n)

end

end A128201.P4323615438365419671

namespace A128201

/-- `filter[A141259(n+1), A379952(#)]` -/
def P4323615438365419671.Spec : Prop :=
  ∀ n, P4323615438365419671.a n = A128201 (n + 1)

end A128201

/-! ## A128201.P13643692149404669724

`filter[A260401(n+1), A379952(#)]`
-/

namespace A128201.P13643692149404669724
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260401 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A379952 (f1 j).toNat = 1) n)

end

end A128201.P13643692149404669724

namespace A128201

/-- `filter[A260401(n+1), A379952(#)]` -/
def P13643692149404669724.Spec : Prop :=
  ∀ n, P13643692149404669724.a n = A128201 (n + 1)

end A128201

/-! ## A128201.P5910607638931175912

`filter[A107750(n+1), A379952(#)]`
-/

namespace A128201.P5910607638931175912
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107750 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A379952 (f1 j).toNat = 1) n)

end

end A128201.P5910607638931175912

namespace A128201

/-- `filter[A107750(n+1), A379952(#)]` -/
def P5910607638931175912.Spec : Prop :=
  ∀ n, P5910607638931175912.a n = A128201 (n + 1)

end A128201

/-! ## A128201.P1019894126707740908

`filter[A042965(n+2), A379952(#)]`
-/

namespace A128201.P1019894126707740908
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042965 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A379952 (f1 j).toNat = 1) n)

end

end A128201.P1019894126707740908

namespace A128201

/-- `filter[A042965(n+2), A379952(#)]` -/
def P1019894126707740908.Spec : Prop :=
  ∀ n, P1019894126707740908.a n = A128201 (n + 1)

end A128201

/-! ## A128201.P4642595118824068647

`filter[A263715(n+2), A379952(#)]`
-/

namespace A128201.P4642595118824068647
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263715 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A379952 (f1 j).toNat = 1) n)

end

end A128201.P4642595118824068647

namespace A128201

/-- `filter[A263715(n+2), A379952(#)]` -/
def P4642595118824068647.Spec : Prop :=
  ∀ n, P4642595118824068647.a n = A128201 (n + 1)

end A128201

/-!
# A128202: Configuration of discs on pegs after n steps of the optimal solution to the Towers of Hanoi problem moving an odd number of discs from peg 0 to peg 2, or an even number from peg 0 to peg 1.

The programs for A128202, there is no canonical definition to state claims against.
-/

/-! ## A128202.P15032669947914034168

`floor(A055661(2*n)/3)`
-/

namespace A128202.P15032669947914034168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A055661 (2 * n) : ℚ) / 3⌋

end

end A128202.P15032669947914034168

/-! ## A128202.P4193741026340291979

`A004488(A055661(n))`
-/

namespace A128202.P4193741026340291979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004488 (A055661 n).toNat

end

end A128202.P4193741026340291979

/-! ## A128202.P2048370422191107337

`A002264(A055661(2*n))`
-/

namespace A128202.P2048370422191107337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A055661 (2 * n)).toNat

end

end A128202.P2048370422191107337

/-! ## A128202.P5281510472045525251

`A009947(A057078(n)+A055661(2*n))`
-/

namespace A128202.P5281510472045525251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009947 (A057078 n + A055661 (2 * n)).toNat

end

end A128202.P5281510472045525251

/-! ## A128202.P5765392286559456792

`A117966(A055661(n))+A028898(A055662(n))`
-/

namespace A128202.P5765392286559456792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117966 (A055661 n).toNat + A028898 (A055662 n).toNat

end

end A128202.P5765392286559456792

/-!
# A128203: Sum of the digits of n*(n+1).

The programs for A128203, the canonical program `A128203.P8982327639887167633` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A128203 has offset 0).

The definition of A128203 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007953, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A128203.P8982327639887167633

`A007953(n*(n+1))`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A128203

/-- `A007953(n*(n+1))` -/
def P8982327639887167633.Spec : Prop :=
  ∀ n, P8982327639887167633.a n = A128203 n

theorem P8982327639887167633.correct : P8982327639887167633.Spec := by
  intro n
  simp only [A128203]

end A128203

/-! ## A128203.P16419317917668275286

`∑{digits}[∑[2*n], #]`
-/

namespace A128203.P16419317917668275286
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum

end

end A128203.P16419317917668275286

namespace A128203

/-- `∑{digits}[∑[2*n], #]` -/
def P16419317917668275286.Spec : Prop :=
  ∀ n, (P16419317917668275286.a n : ℤ) = A128203 n

end A128203

/-! ## A128203.P15197455828339892494

`log(∏{digits}[∑[2*n], exp(#)])`
-/

namespace A128203.P15197455828339892494
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.log ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => Real.exp (x : ℝ)).prod

end

end A128203.P15197455828339892494

namespace A128203

/-- `log(∏{digits}[∑[2*n], exp(#)])` -/
def P15197455828339892494.Spec : Prop :=
  ∀ n, P15197455828339892494.a n = (A128203 n : ℝ)

end A128203

/-! ## A128203.P7320680619496809593

`log2(∏{digits}[∑[2*n], 2^#])`
-/

namespace A128203.P7320680619496809593
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 ((((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => 2 ^ x).prod : ℕ) : ℝ)

end

end A128203.P7320680619496809593

namespace A128203

/-- `log2(∏{digits}[∑[2*n], 2^#])` -/
def P7320680619496809593.Spec : Prop :=
  ∀ n, P7320680619496809593.a n = (A128203 n : ℝ)

end A128203

/-! ## A128203.P16951351785272787318

`abs(log(∏{digits}[n²+n, exp(#)]))`
-/

namespace A128203.P16951351785272787318
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2 + n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  |Real.log ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => Real.exp (x : ℝ)).prod|

end

end A128203.P16951351785272787318

namespace A128203

/-- `abs(log(∏{digits}[n²+n, exp(#)]))` -/
def P16951351785272787318.Spec : Prop :=
  ∀ n, P16951351785272787318.a n = (A128203 n : ℝ)

end A128203

/-! ## A128203.P10360829365829382646

`round(log(∏{digits}[n²+n, exp(#)]))`
-/

namespace A128203.P10360829365829382646
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.log ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => Real.exp (x : ℝ)).prod)

end

end A128203.P10360829365829382646

namespace A128203

/-- `round(log(∏{digits}[n²+n, exp(#)]))` -/
def P10360829365829382646.Spec : Prop :=
  ∀ n, P10360829365829382646.a n = A128203 n

end A128203

/-! ## A128203.P13616144753842132604

`val(∏{digits}[∑[2*n], 2^#], 2)`
-/

namespace A128203.P13616144753842132604
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => 2 ^ x).prod 2

end

end A128203.P13616144753842132604

namespace A128203

/-- `val(∏{digits}[∑[2*n], 2^#], 2)` -/
def P13616144753842132604.Spec : Prop :=
  ∀ n, (P13616144753842132604.a n : ℤ) = A128203 n

end A128203

/-! ## A128203.P7815123456320474109

`∑{digits}[n²+1+n, #]-1`
-/

namespace A128203.P7815123456320474109
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2 + 1 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum : ℕ) : ℤ) - 1

end

end A128203.P7815123456320474109

namespace A128203

/-- `∑{digits}[n²+1+n, #]-1` -/
def P7815123456320474109.Spec : Prop :=
  ∀ n, P7815123456320474109.a n = A128203 n

end A128203

/-! ## A128203.P14138682344479188589

`∑{digits}[n²+n, #]%(n+1)²`
-/

namespace A128203.P14138682344479188589
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2 + n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum % (n + 1) ^ 2

end

end A128203.P14138682344479188589

namespace A128203

/-- `∑{digits}[n²+n, #]%(n+1)²` -/
def P14138682344479188589.Spec : Prop :=
  ∀ n, (P14138682344479188589.a n : ℤ) = A128203 n

end A128203

/-! ## A128203.P9909397107788454405

`abs(∑{digits}[n*(n+1)+1, #]-1)`
-/

namespace A128203.P9909397107788454405
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |((((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum : ℕ) : ℤ) - 1|

end

end A128203.P9909397107788454405

namespace A128203

/-- `abs(∑{digits}[n*(n+1)+1, #]-1)` -/
def P9909397107788454405.Spec : Prop :=
  ∀ n, P9909397107788454405.a n = A128203 n

end A128203

/-! ## A128203.P17979236502526150528

`A004092(∑[n])`
-/

namespace A128203.P17979236502526150528
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004092 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A128203.P17979236502526150528

namespace A128203

/-- `A004092(∑[n])` -/
def P17979236502526150528.Spec : Prop :=
  ∀ n, P17979236502526150528.a n = A128203 n

end A128203

/-! ## A128203.P7249374685027964708

`A004155(∑[n])-1`
-/

namespace A128203.P7249374685027964708
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004155 (∑ j ∈ Finset.range (n + 1), f1 j) - 1

end

end A128203.P7249374685027964708

namespace A128203

/-- `A004155(∑[n])-1` -/
def P7249374685027964708.Spec : Prop :=
  ∀ n, P7249374685027964708.a n = A128203 n

end A128203

/-! ## A128203.P3998271528681811374

`A326746(∑[2*n])`
-/

namespace A128203.P3998271528681811374
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326746 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A128203.P3998271528681811374

namespace A128203

/-- `A326746(∑[2*n])` -/
def P3998271528681811374.Spec : Prop :=
  ∀ n, P3998271528681811374.a n = A128203 n

end A128203

/-! ## A128203.P2734727318744960404

`A092384(∑[2*n])`
-/

namespace A128203.P2734727318744960404
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092384 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A128203.P2734727318744960404

namespace A128203

/-- `A092384(∑[2*n])` -/
def P2734727318744960404.Spec : Prop :=
  ∀ n, P2734727318744960404.a n = A128203 n

end A128203

/-! ## A128203.P205395533538915688

`sqrt(A118881(∑[2*n]))`
-/

namespace A128203.P205395533538915688
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A118881 (∑ j ∈ Finset.range (n + 1), f1 j) : ℝ)

end

end A128203.P205395533538915688

namespace A128203

/-- `sqrt(A118881(∑[2*n]))` -/
def P205395533538915688.Spec : Prop :=
  ∀ n, P205395533538915688.a n = (A128203 n : ℝ)

end A128203

/-! ## A128203.P12051280987063749681

`log2(A329562(∑[2*n]))`
-/

namespace A128203.P12051280987063749681
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A329562 (∑ j ∈ Finset.range (n + 1), f1 j) : ℝ)

end

end A128203.P12051280987063749681

namespace A128203

/-- `log2(A329562(∑[2*n]))` -/
def P12051280987063749681.Spec : Prop :=
  ∀ n, P12051280987063749681.a n = (A128203 n : ℝ)

end A128203

/-! ## A128203.P1572633559943838812

`A169805(n²+n)/2`
-/

namespace A128203.P1572633559943838812
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A169805 (n ^ 2 + n) : ℚ) / 2

end

end A128203.P1572633559943838812

namespace A128203

/-- `A169805(n²+n)/2` -/
def P1572633559943838812.Spec : Prop :=
  ∀ n, P1572633559943838812.a n = (A128203 n : ℚ)

theorem P1572633559943838812.correct : P1572633559943838812.Spec := by
  intro n
  simp only [A128203, Nat.add_sub_cancel, A128203.P1572633559943838812.a, A128203.P8982327639887167633.a, A007953, A007953.P3472751987379697826.a, A169805, A169805.P17977796700678006772.a, A054899, A054899.P10770181254942084517.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A128203

/-!
# A128205: a(n) = 2^(n-1)*A047240(n).

The programs for A128205, the canonical program `A128205.P2573849499760512017` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A128205 has offset 0).

The definition of A128205 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A128205.P15415535173171186531

`2^(n-1)*A047240(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A128205.P15415535173171186531
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) * (A047240 (n + 1) : ℚ)

end

end A128205.P15415535173171186531

namespace A128205

/-- `2^(n-1)*A047240(n+1)` -/
def P15415535173171186531.Spec : Prop :=
  ∀ n, P15415535173171186531.a n = (A128205 n : ℚ)

end A128205

/-! ## A128205.P2573849499760512017

`2*a(n-1)+8*a(n-3)-16*a(n-4)` with `a(0)=0, a(1)=1, a(2)=4, a(3)=24`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A128205

/-- `2*a(n-1)+8*a(n-3)-16*a(n-4)` -/
def P2573849499760512017.Spec : Prop :=
  ∀ n, P2573849499760512017.a n = A128205 n

theorem P2573849499760512017.correct : P2573849499760512017.Spec := by
  intro n
  simp only [A128205]

end A128205

/-! ## A128205.P4715692360747792738

`ogf((x+2x^2+16x^3)/(1-2x-8x^3+16x^4))`
-/

namespace A128205.P4715692360747792738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, 2, 16] [1, -2, 0, -8, 16] n

end

end A128205.P4715692360747792738

namespace A128205

/-- `ogf((x+2x^2+16x^3)/(1-2x-8x^3+16x^4))` -/
def P4715692360747792738.Spec : Prop :=
  ∀ n, P4715692360747792738.a n = A128205 n

end A128205

/-! ## A128205.P13155291810208859839

`(2*n-n%3)*2^(n-1)`
-/

namespace A128205.P13155291810208859839
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((2 * n : ℤ) - ((n % 3 : ℕ) : ℤ) : ℚ) * (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)

end

end A128205.P13155291810208859839

namespace A128205

/-- `(2*n-n%3)*2^(n-1)` -/
def P13155291810208859839.Spec : Prop :=
  ∀ n, P13155291810208859839.a n = (A128205 n : ℚ)

end A128205

/-! ## A128205.P6423383306105147874

`abs(2*n-n%3)*A131577(n)`
-/

namespace A128205.P6423383306105147874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(2 * n : ℤ) - ((n % 3 : ℕ) : ℤ)| * A131577 n

end

end A128205.P6423383306105147874

namespace A128205

/-- `abs(2*n-n%3)*A131577(n)` -/
def P6423383306105147874.Spec : Prop :=
  ∀ n, P6423383306105147874.a n = A128205 n

end A128205

/-! ## A128205.P5328470316556314748

`(A047245(n+1)-1)*2^(n-1)`
-/

namespace A128205.P5328470316556314748
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A047245 (n + 1) - 1 : ℚ) * (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)

end

end A128205.P5328470316556314748

namespace A128205

/-- `(A047245(n+1)-1)*2^(n-1)` -/
def P5328470316556314748.Spec : Prop :=
  ∀ n, P5328470316556314748.a n = (A128205 n : ℚ)

end A128205

/-! ## A128205.P14290585648814562957

`Δ[A109340(n)]*A011782(n)`
-/

namespace A128205.P14290585648814562957
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109340 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A011782 n

end

end A128205.P14290585648814562957

namespace A128205

/-- `Δ[A109340(n)]*A011782(n)` -/
def P14290585648814562957.Spec : Prop :=
  ∀ n, P14290585648814562957.a n = A128205 n

end A128205

/-! ## A128205.P11851556596282550044

`A047240(n+1)*A131577(n)`
-/

namespace A128205.P11851556596282550044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047240 (n + 1) * A131577 n

end

end A128205.P11851556596282550044

namespace A128205

/-- `A047240(n+1)*A131577(n)` -/
def P11851556596282550044.Spec : Prop :=
  ∀ n, P11851556596282550044.a n = A128205 n

end A128205

/-! ## A128205.P18366894277945964305

`(A047228(n+1)-2)*A011782(n)`
-/

namespace A128205.P18366894277945964305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A047228 (n + 1) - 2) * A011782 n

end

end A128205.P18366894277945964305

namespace A128205

/-- `(A047228(n+1)-2)*A011782(n)` -/
def P18366894277945964305.Spec : Prop :=
  ∀ n, P18366894277945964305.a n = A128205 n

end A128205

/-! ## A128205.P2289140803259378447

`A047240(n+1)/2*A000079(n)`
-/

namespace A128205.P2289140803259378447
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A047240 (n + 1) : ℚ) / 2 * (A000079 n : ℚ)

end

end A128205.P2289140803259378447

namespace A128205

/-- `A047240(n+1)/2*A000079(n)` -/
def P2289140803259378447.Spec : Prop :=
  ∀ n, P2289140803259378447.a n = (A128205 n : ℚ)

end A128205

/-! ## A128205.P1089137615767142281

`(A064429(2*n+1)-2)*A034008(n+1)`
-/

namespace A128205.P1089137615767142281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A064429 (2 * n + 1) - 2) * A034008 (n + 1)

end

end A128205.P1089137615767142281

namespace A128205

/-- `(A064429(2*n+1)-2)*A034008(n+1)` -/
def P1089137615767142281.Spec : Prop :=
  ∀ n, P1089137615767142281.a n = A128205 n

end A128205

/-! ## A128205.P3711571653424371715

`eq[gcd(6, n+2), A020639(n+2)]*A011782(n)`
-/

namespace A128205.P3711571653424371715
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 6 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ) * A011782 n

end

end A128205.P3711571653424371715

namespace A128205

/-- `eq[gcd(6, n+2), A020639(n+2)]*A011782(n)` -/
def P3711571653424371715.Spec : Prop :=
  ∀ n, P3711571653424371715.a n = A128205 n

end A128205

/-! ## A128205.P1379545489775226605

`Δ[(1-n)²-A000010(gcd(n-3, 2*n))]*A011782(n)`
-/

namespace A128205.P1379545489775226605
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - (n : ℤ)) ^ 2 - A000010 (Int.gcd ((n : ℤ) - 3) (2 * n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A011782 n

end

end A128205.P1379545489775226605

namespace A128205

/-- `Δ[(1-n)²-A000010(gcd(n-3, 2*n))]*A011782(n)` -/
def P1379545489775226605.Spec : Prop :=
  ∀ n, P1379545489775226605.a n = A128205 n

end A128205

/-!
# A128206: Inverse of number triangle A128207.

The programs for A128206, the canonical program `A128206.P14119497991343743682` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A128206 has offset 0).

The definition of A128206 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A128206.P1756629800416711404

`T(n-1,k-1)+T(n-1,k)*T(row(n)-2, col(n)-2)` with `a(0)=1, a(1)=1`
-/

namespace A128206.P1756629800416711404
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n a =>
  SequenceMachineLib.triUpLeft a n + SequenceMachineLib.triUp a n * SequenceMachineLib.triAt a ((SequenceMachineLib.triRow n : ℤ) - 2) ((SequenceMachineLib.triCol n : ℤ) - 2)

end

end A128206.P1756629800416711404

namespace A128206

/-- `T(n-1,k-1)+T(n-1,k)*T(row(n)-2, col(n)-2)` -/
def P1756629800416711404.Spec : Prop :=
  ∀ n, (P1756629800416711404.a n : ℤ) = A128206 n

end A128206

/-! ## A128206.P4030898245318099799

`T(n-1,k-1)+T(n-2,k-1)*T(row(n)-2, col(n)-2)` with `a(0)=1, a(1)=1`
-/

namespace A128206.P4030898245318099799
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n a =>
  SequenceMachineLib.triUpLeft a n + SequenceMachineLib.triUp2Left a n * SequenceMachineLib.triAt a ((SequenceMachineLib.triRow n : ℤ) - 2) ((SequenceMachineLib.triCol n : ℤ) - 2)

end

end A128206.P4030898245318099799

namespace A128206

/-- `T(n-1,k-1)+T(n-2,k-1)*T(row(n)-2, col(n)-2)` -/
def P4030898245318099799.Spec : Prop :=
  ∀ n, (P4030898245318099799.a n : ℤ) = A128206 n

end A128206

/-! ## A128206.P1598737128416040550

`T(n-1,k-1)-(T(n-2,k)-T(n-1,k))*T(row(n)-2, col(n)-2)` with `a(0)=1, a(1)=1`
-/

namespace A128206.P1598737128416040550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  SequenceMachineLib.triUpLeft a n - (SequenceMachineLib.triUp2 a n - SequenceMachineLib.triUp a n) * SequenceMachineLib.triAt a ((SequenceMachineLib.triRow n : ℤ) - 2) ((SequenceMachineLib.triCol n : ℤ) - 2)

end

end A128206.P1598737128416040550

namespace A128206

/-- `T(n-1,k-1)-(T(n-2,k)-T(n-1,k))*T(row(n)-2, col(n)-2)` -/
def P1598737128416040550.Spec : Prop :=
  ∀ n, P1598737128416040550.a n = A128206 n

end A128206

/-! ## A128206.P1695452996731294961

`T(n-1,k-1)-(T(n-2,k)-T(n-2,k-1))*T(row(n)-2, col(n)-2)` with `a(0)=1, a(1)=1`
-/

namespace A128206.P1695452996731294961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  SequenceMachineLib.triUpLeft a n - (SequenceMachineLib.triUp2 a n - SequenceMachineLib.triUp2Left a n) * SequenceMachineLib.triAt a ((SequenceMachineLib.triRow n : ℤ) - 2) ((SequenceMachineLib.triCol n : ℤ) - 2)

end

end A128206.P1695452996731294961

namespace A128206

/-- `T(n-1,k-1)-(T(n-2,k)-T(n-2,k-1))*T(row(n)-2, col(n)-2)` -/
def P1695452996731294961.Spec : Prop :=
  ∀ n, P1695452996731294961.a n = A128206 n

end A128206

/-! ## A128206.P6647114296497206449

`T(n-1,k-1)-(T(n-1,k)-2)*T(n-1,k)*T(row(n)-2, col(n)-2)` with `a(0)=1, a(1)=1`
-/

namespace A128206.P6647114296497206449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  SequenceMachineLib.triUpLeft a n - (SequenceMachineLib.triUp a n - 2) * SequenceMachineLib.triUp a n * SequenceMachineLib.triAt a ((SequenceMachineLib.triRow n : ℤ) - 2) ((SequenceMachineLib.triCol n : ℤ) - 2)

end

end A128206.P6647114296497206449

namespace A128206

/-- `T(n-1,k-1)-(T(n-1,k)-2)*T(n-1,k)*T(row(n)-2, col(n)-2)` -/
def P6647114296497206449.Spec : Prop :=
  ∀ n, P6647114296497206449.a n = A128206 n

end A128206

/-! ## A128206.P6982060979820993003

`T(n-1,k-1)-(T(n-2,k-1)-2)*T(n-2,k-1)*T(row(n)-2, col(n)-2)` with `a(0)=1, a(1)=1`
-/

namespace A128206.P6982060979820993003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  SequenceMachineLib.triUpLeft a n - (SequenceMachineLib.triUp2Left a n - 2) * SequenceMachineLib.triUp2Left a n * SequenceMachineLib.triAt a ((SequenceMachineLib.triRow n : ℤ) - 2) ((SequenceMachineLib.triCol n : ℤ) - 2)

end

end A128206.P6982060979820993003

namespace A128206

/-- `T(n-1,k-1)-(T(n-2,k-1)-2)*T(n-2,k-1)*T(row(n)-2, col(n)-2)` -/
def P6982060979820993003.Spec : Prop :=
  ∀ n, P6982060979820993003.a n = A128206 n

end A128206

/-! ## A128206.P6390066065377082940

`T(n-1,k-1)+(row(n)-col(n))*T(row(n)-2, col(n)-2)` with `a(0)=1, a(1)=1`
-/

namespace A128206.P6390066065377082940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  SequenceMachineLib.triUpLeft a n + ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ)) * SequenceMachineLib.triAt a ((SequenceMachineLib.triRow n : ℤ) - 2) ((SequenceMachineLib.triCol n : ℤ) - 2)

end

end A128206.P6390066065377082940

namespace A128206

/-- `T(n-1,k-1)+(row(n)-col(n))*T(row(n)-2, col(n)-2)` -/
def P6390066065377082940.Spec : Prop :=
  ∀ n, P6390066065377082940.a n = A128206 n

end A128206

/-! ## A128206.P12862394674424483954

`T(n-1,k-1)-(col(n)-row(n))*T(row(n)-2, col(n)-2)` with `a(0)=1, a(1)=1`
-/

namespace A128206.P12862394674424483954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  SequenceMachineLib.triUpLeft a n - ((SequenceMachineLib.triCol n : ℤ) - (SequenceMachineLib.triRow n : ℤ)) * SequenceMachineLib.triAt a ((SequenceMachineLib.triRow n : ℤ) - 2) ((SequenceMachineLib.triCol n : ℤ) - 2)

end

end A128206.P12862394674424483954

namespace A128206

/-- `T(n-1,k-1)-(col(n)-row(n))*T(row(n)-2, col(n)-2)` -/
def P12862394674424483954.Spec : Prop :=
  ∀ n, P12862394674424483954.a n = A128206 n

end A128206

/-! ## A128206.P9908241494228228735

`A128541(n*char[comp[∑[n-1]]])`
-/

namespace A128206.P9908241494228228735
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128541 (n * (if ∃ j, f1 j = n then 1 else 0))

end

end A128206.P9908241494228228735

namespace A128206

/-- `A128541(n*char[comp[∑[n-1]]])` -/
def P9908241494228228735.Spec : Prop :=
  ∀ n, P9908241494228228735.a n = A128206 n

end A128206

/-! ## A128206.P9862651627282083500

`A000045(1-Δ[C(1+T(n-1,k-1), T(n-2,k-1))])` with `a(0)=1, a(1)=1`
-/

namespace A128206.P9862651627282083500
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  Nat.choose (1 + SequenceMachineLib.triUpLeft f1 n) (SequenceMachineLib.triUp2Left f1 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (1 - ((f1 (n + 1) : ℤ) - (f1 n : ℤ))).toNat

end

end A128206.P9862651627282083500

namespace A128206

/-- `A000045(1-Δ[C(1+T(n-1,k-1), T(n-2,k-1))])` -/
def P9862651627282083500.Spec : Prop :=
  ∀ n, P9862651627282083500.a n = A128206 n

end A128206

/-! ## A128206.P7248850908420736100

`A128541(n)^(C(comp[∑[n]]-n, 2)-(n+1))`
-/

namespace A128206.P7248850908420736100
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A128541 n : ℚ) ^ ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n + 1 : ℤ) : ℤ)

end

end A128206.P7248850908420736100

namespace A128206

/-- `A128541(n)^(C(comp[∑[n]]-n, 2)-(n+1))` -/
def P7248850908420736100.Spec : Prop :=
  ∀ n, P7248850908420736100.a n = (A128206 n : ℚ)

end A128206

/-! ## A128206.P14119497991343743682

`A053602(A134082(n))`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A128206

/-- `A053602(A134082(n))` -/
def P14119497991343743682.Spec : Prop :=
  ∀ n, P14119497991343743682.a n = A128206 n

theorem P14119497991343743682.correct : P14119497991343743682.Spec := by
  intro n
  simp only [A128206]

end A128206

/-! ## A128206.P9793002046538235247

`A000045(abs(A132013(n)))`
-/

namespace A128206.P9793002046538235247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 |A132013 n|.toNat

end

end A128206.P9793002046538235247

namespace A128206

/-- `A000045(abs(A132013(n)))` -/
def P9793002046538235247.Spec : Prop :=
  ∀ n, P9793002046538235247.a n = A128206 n

end A128206

/-! ## A128206.P15797641431092588810

`A000045(A128229(n+1))`
-/

namespace A128206.P15797641431092588810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A128229 (n + 1)).toNat

end

end A128206.P15797641431092588810

namespace A128206

/-- `A000045(A128229(n+1))` -/
def P15797641431092588810.Spec : Prop :=
  ∀ n, P15797641431092588810.a n = A128206 n

end A128206

/-! ## A128206.P7920071090963470868

`A129982(A132774(n+1)+1)`
-/

namespace A128206.P7920071090963470868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129982 (A132774 (n + 1) + 1).toNat

end

end A128206.P7920071090963470868

namespace A128206

/-- `A129982(A132774(n+1)+1)` -/
def P7920071090963470868.Spec : Prop :=
  ∀ n, P7920071090963470868.a n = A128206 n

end A128206

/-! ## A128206.P17364379071927389009

`A097806(n)*A144406(n+1)`
-/

namespace A128206.P17364379071927389009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097806 n * A144406 (n + 1)

end

end A128206.P17364379071927389009

namespace A128206

/-- `A097806(n)*A144406(n+1)` -/
def P17364379071927389009.Spec : Prop :=
  ∀ n, P17364379071927389009.a n = A128206 n

end A128206

/-! ## A128206.P12750926253595013283

`A097806(n)*A341694(n+1)`
-/

namespace A128206.P12750926253595013283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097806 n * A341694 (n + 1)

end

end A128206.P12750926253595013283

namespace A128206

/-- `A097806(n)*A341694(n+1)` -/
def P12750926253595013283.Spec : Prop :=
  ∀ n, P12750926253595013283.a n = A128206 n

end A128206

/-! ## A128206.P4990668944485581718

`A128541(n)/A111946(n+1)`
-/

namespace A128206.P4990668944485581718
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A128541 n : ℚ) / (A111946 (n + 1) : ℚ)

end

end A128206.P4990668944485581718

namespace A128206

/-- `A128541(n)/A111946(n+1)` -/
def P4990668944485581718.Spec : Prop :=
  ∀ n, P4990668944485581718.a n = (A128206 n : ℚ)

end A128206

/-! ## A128206.P14998640109359812836

`gcd(A127640(n+1), A128541(n))`
-/

namespace A128206.P14998640109359812836
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A127640 (n + 1)) (A128541 n)

end

end A128206.P14998640109359812836

namespace A128206

/-- `gcd(A127640(n+1), A128541(n))` -/
def P14998640109359812836.Spec : Prop :=
  ∀ n, (P14998640109359812836.a n : ℤ) = A128206 n

end A128206

/-! ## A128206.P4839118728500284842

`and(A144406(n+1), A167374(n))`
-/

namespace A128206.P4839118728500284842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A144406 (n + 1)) (A167374 n)

end

end A128206.P4839118728500284842

namespace A128206

/-- `and(A144406(n+1), A167374(n))` -/
def P4839118728500284842.Spec : Prop :=
  ∀ n, P4839118728500284842.a n = A128206 n

end A128206

/-!
# A128208: Inverse of number triangle A128210.

The programs for A128208, there is no canonical definition to state claims against.
-/

/-! ## A128208.P3583447663945127102

`T(n-1,k-1)+2*T(n-1,k)*T(row(n)-2, col(n)-2)` with `a(0)=1, a(1)=1`
-/

namespace A128208.P3583447663945127102
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n a =>
  SequenceMachineLib.triUpLeft a n + 2 * SequenceMachineLib.triUp a n * SequenceMachineLib.triAt a ((SequenceMachineLib.triRow n : ℤ) - 2) ((SequenceMachineLib.triCol n : ℤ) - 2)

end

end A128208.P3583447663945127102

/-! ## A128208.P16978744581576665002

`T(n-1,k-1)+2*T(n-2,k-1)*T(row(n)-2, col(n)-2)` with `a(0)=1, a(1)=1`
-/

namespace A128208.P16978744581576665002
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n a =>
  SequenceMachineLib.triUpLeft a n + 2 * SequenceMachineLib.triUp2Left a n * SequenceMachineLib.triAt a ((SequenceMachineLib.triRow n : ℤ) - 2) ((SequenceMachineLib.triCol n : ℤ) - 2)

end

end A128208.P16978744581576665002

/-! ## A128208.P13657037557936608416

`T(n-1,k-1)-2*(T(n-2,k)-T(n-1,k))*T(row(n)-2, col(n)-2)` with `a(0)=1, a(1)=1`
-/

namespace A128208.P13657037557936608416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  SequenceMachineLib.triUpLeft a n - 2 * (SequenceMachineLib.triUp2 a n - SequenceMachineLib.triUp a n) * SequenceMachineLib.triAt a ((SequenceMachineLib.triRow n : ℤ) - 2) ((SequenceMachineLib.triCol n : ℤ) - 2)

end

end A128208.P13657037557936608416

/-! ## A128208.P15132642054790109931

`T(n-1,k-1)-2*(T(n-2,k)-T(n-2,k-1))*T(row(n)-2, col(n)-2)` with `a(0)=1, a(1)=1`
-/

namespace A128208.P15132642054790109931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  SequenceMachineLib.triUpLeft a n - 2 * (SequenceMachineLib.triUp2 a n - SequenceMachineLib.triUp2Left a n) * SequenceMachineLib.triAt a ((SequenceMachineLib.triRow n : ℤ) - 2) ((SequenceMachineLib.triCol n : ℤ) - 2)

end

end A128208.P15132642054790109931

/-! ## A128208.P17964724396262046708

`T(n-1,k-1)+2*(row(n)-col(n))*T(row(n)-2, col(n)-2)` with `a(0)=1, a(1)=1`
-/

namespace A128208.P17964724396262046708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  SequenceMachineLib.triUpLeft a n + 2 * ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ)) * SequenceMachineLib.triAt a ((SequenceMachineLib.triRow n : ℤ) - 2) ((SequenceMachineLib.triCol n : ℤ) - 2)

end

end A128208.P17964724396262046708

/-! ## A128208.P9490058818090171483

`T(n-1,k-1)-2*(col(n)-row(n))*T(row(n)-2, col(n)-2)` with `a(0)=1, a(1)=1`
-/

namespace A128208.P9490058818090171483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  SequenceMachineLib.triUpLeft a n - 2 * ((SequenceMachineLib.triCol n : ℤ) - (SequenceMachineLib.triRow n : ℤ)) * SequenceMachineLib.triAt a ((SequenceMachineLib.triRow n : ℤ) - 2) ((SequenceMachineLib.triCol n : ℤ) - 2)

end

end A128208.P9490058818090171483

/-! ## A128208.P1112364648163546675

`round(2^A128229(n+1)/3)`
-/

namespace A128208.P1112364648163546675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((2 : ℚ) ^ (A128229 (n + 1) : ℤ) / 3)

end

end A128208.P1112364648163546675

/-! ## A128208.P11593312036331606358

`char[C(ceil(n/2), 2)+n]*A350470(n)`
-/

namespace A128208.P11593312036331606358
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose ⌈(n : ℚ) / 2⌉.toNat 2 + n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) * A350470 n

end

end A128208.P11593312036331606358

/-! ## A128208.P12303323161765458875

`A020946(A128206(n))`
-/

namespace A128208.P12303323161765458875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020946 (A128206 n).toNat

end

end A128208.P12303323161765458875

/-! ## A128208.P6742650903415224328

`A133684(A134082(n))`
-/

namespace A128208.P6742650903415224328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133684 (A134082 n).toNat

end

end A128208.P6742650903415224328

/-!
# A128209: Jacobsthal numbers(A001045) + 1.

The programs for A128209, the canonical program `A128209.P11590428575428942371` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A128209 has offset 0).

The definition of A128209 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A128209.P17254602738778112197

`ogf((1-3x^2)/(1-2x-x^2+2x^3))`
-/

namespace A128209.P17254602738778112197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 0, -3] [1, -2, -1, 2] n

end

end A128209.P17254602738778112197

namespace A128209

/-- `ogf((1-3x^2)/(1-2x-x^2+2x^3))` -/
def P17254602738778112197.Spec : Prop :=
  ∀ n, P17254602738778112197.a n = A128209 n

end A128209

/-! ## A128209.P2756399754360242730

`2*a(n-1)+a(n-2)-2*a(n-3)` with `a(0)=1, a(1)=2, a(2)=2`
-/

namespace A128209.P2756399754360242730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 2] fun n a =>
  2 * a (n - 1) + a (n - 2) - 2 * a (n - 3)

end

end A128209.P2756399754360242730

namespace A128209

/-- `2*a(n-1)+a(n-2)-2*a(n-3)` -/
def P2756399754360242730.Spec : Prop :=
  ∀ n, P2756399754360242730.a n = A128209 n

end A128209

/-! ## A128209.P11590428575428942371

`1+2^n/3-(-1)^n/3`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A128209

/-- `1+2^n/3-(-1)^n/3` -/
def P11590428575428942371.Spec : Prop :=
  ∀ n, P11590428575428942371.a n = (A128209 n : ℚ)

end A128209

/-! ## A128209.P5344385874904526447

`∑[ogf((-1+3x^2)/(-1+x+2x^2))]`
-/

namespace A128209.P5344385874904526447
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 0, -3] [1, -1, -2] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A128209.P5344385874904526447

namespace A128209

/-- `∑[ogf((-1+3x^2)/(-1+x+2x^2))]` -/
def P5344385874904526447.Spec : Prop :=
  ∀ n, P5344385874904526447.a n = A128209 n

end A128209

/-! ## A128209.P12568112970137806981

`a(n-2)+2^(n-2)` with `a(0)=1, a(1)=2`
-/

namespace A128209.P12568112970137806981
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (n - 2) + (2 : ℚ) ^ ((n : ℤ) - 2 : ℤ)

end

end A128209.P12568112970137806981

namespace A128209

/-- `a(n-2)+2^(n-2)` -/
def P12568112970137806981.Spec : Prop :=
  ∀ n, P12568112970137806981.a n = (A128209 n : ℚ)

end A128209

/-! ## A128209.P10032206597327132416

`2*(a(n-1)-∑[(-1)^n])` with `a(0)=1`
-/

namespace A128209.P10032206597327132416
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 * (a (n - 1) - ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A128209.P10032206597327132416

namespace A128209

/-- `2*(a(n-1)-∑[(-1)^n])` -/
def P10032206597327132416.Spec : Prop :=
  ∀ n, P10032206597327132416.a n = A128209 n

end A128209

/-! ## A128209.P5041254936438389809

`2*(a(n-1)+1-gcd(2, n))` with `a(0)=1`
-/

namespace A128209.P5041254936438389809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 * (a (n - 1) + 1 - (Nat.gcd 2 n : ℤ))

end

end A128209.P5041254936438389809

namespace A128209

/-- `2*(a(n-1)+1-gcd(2, n))` -/
def P5041254936438389809.Spec : Prop :=
  ∀ n, P5041254936438389809.a n = A128209 n

end A128209

/-! ## A128209.P16213894818742368632

`∑[2^(n-2)-a(n-1)]` with `a(0)=1, a(1)=1`
-/

namespace A128209.P16213894818742368632
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  (2 : ℚ) ^ ((n : ℤ) - 2 : ℤ) - f1 (n - 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A128209.P16213894818742368632

namespace A128209

/-- `∑[2^(n-2)-a(n-1)]` -/
def P16213894818742368632.Spec : Prop :=
  ∀ n, P16213894818742368632.a n = (A128209 n : ℚ)

end A128209

/-! ## A128209.P8186589971704501421

`2*floor(a(n-1)-(n-1)%2)` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A128209.P8186589971704501421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 * (a (n - 1) - Int.tmod ((n : ℤ) - 1) 2)

end

end A128209.P8186589971704501421

namespace A128209

/-- `2*floor(a(n-1)-(n-1)%2)` -/
def P8186589971704501421.Spec : Prop :=
  ∀ n, P8186589971704501421.a n = A128209 n

end A128209

/-! ## A128209.P1431240991503889938

`floor(2*(a(n-1)-and(1, n+1)))` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A128209.P1431240991503889938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 * (a (n - 1) - (Nat.land 1 (n + 1) : ℤ))

end

end A128209.P1431240991503889938

namespace A128209

/-- `floor(2*(a(n-1)-and(1, n+1)))` -/
def P1431240991503889938.Spec : Prop :=
  ∀ n, P1431240991503889938.a n = A128209 n

end A128209

/-! ## A128209.P7076929830380566686

`Δ[A340849(n)]`
-/

namespace A128209.P7076929830380566686
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340849 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A128209.P7076929830380566686

namespace A128209

/-- `Δ[A340849(n)]` -/
def P7076929830380566686.Spec : Prop :=
  ∀ n, P7076929830380566686.a n = A128209 n

end A128209

/-! ## A128209.P3168263468975282992

`(A277955(n)+1)/2`
-/

namespace A128209.P3168263468975282992
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A277955 n + 1 : ℚ) / 2

end

end A128209.P3168263468975282992

namespace A128209

/-- `(A277955(n)+1)/2` -/
def P3168263468975282992.Spec : Prop :=
  ∀ n, P3168263468975282992.a n = (A128209 n : ℚ)

end A128209

/-! ## A128209.P5714581878289160578

`A378105(n+2)/2`
-/

namespace A128209.P5714581878289160578
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A378105 (n + 2) : ℚ) / 2

end

end A128209.P5714581878289160578

namespace A128209

/-- `A378105(n+2)/2` -/
def P5714581878289160578.Spec : Prop :=
  ∀ n, P5714581878289160578.a n = (A128209 n : ℚ)

end A128209

/-! ## A128209.P5477777360933959417

`Δ[Δ[A357282(n)]]`
-/

namespace A128209.P5477777360933959417
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357282 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A128209.P5477777360933959417

namespace A128209

/-- `Δ[Δ[A357282(n)]]` -/
def P5477777360933959417.Spec : Prop :=
  ∀ n, P5477777360933959417.a n = A128209 n

end A128209

/-! ## A128209.P12329744241538898417

`A154890(n+2)/4`
-/

namespace A128209.P12329744241538898417
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A154890 (n + 2) : ℚ) / 4

end

end A128209.P12329744241538898417

namespace A128209

/-- `A154890(n+2)/4` -/
def P12329744241538898417.Spec : Prop :=
  ∀ n, P12329744241538898417.a n = (A128209 n : ℚ)

end A128209

/-! ## A128209.P2026109665829273876

`A048578(n)%A048573(n)`
-/

namespace A128209.P2026109665829273876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A048578 n) (A048573 n)

end

end A128209.P2026109665829273876

namespace A128209

/-- `A048578(n)%A048573(n)` -/
def P2026109665829273876.Spec : Prop :=
  ∀ n, P2026109665829273876.a n = A128209 n

end A128209

/-! ## A128209.P10877262437201640317

`xor(A084640(n), A126646(n))`
-/

namespace A128209.P10877262437201640317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A084640 n) (A126646 n)

end

end A128209.P10877262437201640317

namespace A128209

/-- `xor(A084640(n), A126646(n))` -/
def P10877262437201640317.Spec : Prop :=
  ∀ n, P10877262437201640317.a n = A128209 n

end A128209

/-! ## A128209.P13716398271438918485

`(3-A083943(n+1))/2`
-/

namespace A128209.P13716398271438918485
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 - A083943 (n + 1) : ℚ) / 2

end

end A128209.P13716398271438918485

namespace A128209

/-- `(3-A083943(n+1))/2` -/
def P13716398271438918485.Spec : Prop :=
  ∀ n, P13716398271438918485.a n = (A128209 n : ℚ)

end A128209

/-! ## A128209.P1072361765731247214

`A020737(n)%A383953(n)`
-/

namespace A128209.P1072361765731247214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A020737 n) (A383953 n)

end

end A128209.P1072361765731247214

namespace A128209

/-- `A020737(n)%A383953(n)` -/
def P1072361765731247214.Spec : Prop :=
  ∀ n, P1072361765731247214.a n = A128209 n

end A128209

/-! ## A128209.P6466847451842258067

`A383953(n)%A159290(n)`
-/

namespace A128209.P6466847451842258067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A383953 n) (A159290 n)

end

end A128209.P6466847451842258067

namespace A128209

/-- `A383953(n)%A159290(n)` -/
def P6466847451842258067.Spec : Prop :=
  ∀ n, P6466847451842258067.a n = A128209 n

end A128209

/-!
# A128211: A007376(8n+4).

The programs for A128211, there is no canonical definition to state claims against.
-/

/-! ## A128211.P5527102169881619012

`A007376(8*n+4)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A128211.P5527102169881619012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007376 (8 * n + 4)

end

end A128211.P5527102169881619012

/-! ## A128211.P12652112784073088642

`dr(A007376(or(4, 8*n)))`
-/

namespace A128211.P12652112784073088642
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A007376 (Nat.lor 4 (8 * n)))

end

end A128211.P12652112784073088642

/-! ## A128211.P5163212500411350100

`dr(A007376(Δ[(2*n)²]))`
-/

namespace A128211.P5163212500411350100
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A007376 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat)

end

end A128211.P5163212500411350100

/-! ## A128211.P12837010086956685190

`A127734(Δ[n²])`
-/

namespace A128211.P12837010086956685190
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127734 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A128211.P12837010086956685190

/-! ## A128211.P6252666164397451020

`dr(A127734(2*n+1))`
-/

namespace A128211.P6252666164397451020
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A127734 (2 * n + 1))

end

end A128211.P6252666164397451020

/-! ## A128211.P16143397975781014943

`A091332(2*n+1)%10`
-/

namespace A128211.P16143397975781014943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A091332 (2 * n + 1)) 10

end

end A128211.P16143397975781014943

/-! ## A128211.P18154805397107521507

`A010879(A091332(2*n+1))`
-/

namespace A128211.P18154805397107521507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010879 (A091332 (2 * n + 1)).toNat

end

end A128211.P18154805397107521507

/-! ## A128211.P17040571293798558361

`A127353(4*n+2)`
-/

namespace A128211.P17040571293798558361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127353 (4 * n + 2)

end

end A128211.P17040571293798558361

/-! ## A128211.P10596086931223893985

`A033307(8*n+3)`
-/

namespace A128211.P10596086931223893985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033307 (8 * n + 3)

end

end A128211.P10596086931223893985

/-! ## A128211.P11584373647411021368

`A136414(8*n+3)%10`
-/

namespace A128211.P11584373647411021368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A136414 (8 * n + 3)) 10

end

end A128211.P11584373647411021368

/-! ## A128211.P1961568336839819519

`A261333(8*n+3)%10`
-/

namespace A128211.P1961568336839819519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A261333 (8 * n + 3)) 10

end

end A128211.P1961568336839819519

/-! ## A128211.P14815437615096775655

`A054899(A136414(8*n+4))`
-/

namespace A128211.P14815437615096775655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054899 (A136414 (8 * n + 4)).toNat

end

end A128211.P14815437615096775655

/-! ## A128211.P2655028942411775875

`A108202(Δ[8*n²])`
-/

namespace A128211.P2655028942411775875
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8 * n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108202 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A128211.P2655028942411775875

/-! ## A128211.P4688420613324899124

`A108712(A004771(2*n))`
-/

namespace A128211.P4688420613324899124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108712 (A004771 (2 * n)).toNat

end

end A128211.P4688420613324899124

/-!
# A128212: a(n) = Sum_digits(p), where p is the product of the digits of n.

The programs for A128212, the canonical program `A128212.P12226177893353124099` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A128212 has offset 1).

The definition of A128212 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007953, A007954, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A128212.P12226177893353124099

`A007953(A007954(n+1))`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A128212

/-- `A007953(A007954(n+1))` -/
def P12226177893353124099.Spec : Prop :=
  ∀ n, P12226177893353124099.a n = A128212 (n + 1)

theorem P12226177893353124099.correct : P12226177893353124099.Spec := by
  intro n
  simp only [A128212, Nat.add_sub_cancel]

end A128212

/-! ## A128212.P3578234266357632386

`∑{digits}[∏{digits}[n+1, #], #]`
-/

namespace A128212.P3578234266357632386
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f2 n)).map fun (x : ℕ) => x).prod

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum

end

end A128212.P3578234266357632386

namespace A128212

/-- `∑{digits}[∏{digits}[n+1, #], #]` -/
def P3578234266357632386.Spec : Prop :=
  ∀ n, (P3578234266357632386.a n : ℤ) = A128212 (n + 1)

end A128212

/-! ## A128212.P14449726868006193168

`log2(∏{digits}[∏{digits}[n+1, #], 2^#])`
-/

namespace A128212.P14449726868006193168
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f2 n)).map fun (x : ℕ) => x).prod

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 ((((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => 2 ^ x).prod : ℕ) : ℝ)

end

end A128212.P14449726868006193168

namespace A128212

/-- `log2(∏{digits}[∏{digits}[n+1, #], 2^#])` -/
def P14449726868006193168.Spec : Prop :=
  ∀ n, P14449726868006193168.a n = (A128212 (n + 1) : ℝ)

end A128212

/-! ## A128212.P8629058245818644248

`∑{digits}[Δ[A187845(n)], #]`
-/

namespace A128212.P8629058245818644248
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187845 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A128212.P8629058245818644248

namespace A128212

/-- `∑{digits}[Δ[A187845(n)], #]` -/
def P8629058245818644248.Spec : Prop :=
  ∀ n, (P8629058245818644248.a n : ℤ) = A128212 (n + 1)

end A128212

/-! ## A128212.P14197567898564241288

`∑{digits}[A007954(n+1), #]`
-/

namespace A128212.P14197567898564241288
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007954 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A128212.P14197567898564241288

namespace A128212

/-- `∑{digits}[A007954(n+1), #]` -/
def P14197567898564241288.Spec : Prop :=
  ∀ n, (P14197567898564241288.a n : ℤ) = A128212 (n + 1)

end A128212

/-! ## A128212.P7440706297659469834

`∑{digits}[A187844(n+1), #]`
-/

namespace A128212.P7440706297659469834
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187844 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A128212.P7440706297659469834

namespace A128212

/-- `∑{digits}[A187844(n+1), #]` -/
def P7440706297659469834.Spec : Prop :=
  ∀ n, (P7440706297659469834.a n : ℤ) = A128212 (n + 1)

end A128212

/-! ## A128212.P9556824713486046928

`A007953(∏{digits}[n+1, #])`
-/

namespace A128212.P9556824713486046928
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).prod

end

end A128212.P9556824713486046928

namespace A128212

/-- `A007953(∏{digits}[n+1, #])` -/
def P9556824713486046928.Spec : Prop :=
  ∀ n, P9556824713486046928.a n = A128212 (n + 1)

end A128212

/-! ## A128212.P10596696680282415411

`sqrt(A118881(∏{digits}[n+1, #]))`
-/

namespace A128212.P10596696680282415411
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A118881 ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).prod : ℝ)

end

end A128212.P10596696680282415411

namespace A128212

/-- `sqrt(A118881(∏{digits}[n+1, #]))` -/
def P10596696680282415411.Spec : Prop :=
  ∀ n, P10596696680282415411.a n = (A128212 (n + 1) : ℝ)

end A128212

/-! ## A128212.P15704767537373201446

`A007953(∑[1-Δ[A070565(n)]])`
-/

namespace A128212.P15704767537373201446
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070565 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A128212.P15704767537373201446

namespace A128212

/-- `A007953(∑[1-Δ[A070565(n)]])` -/
def P15704767537373201446.Spec : Prop :=
  ∀ n, P15704767537373201446.a n = A128212 (n + 1)

end A128212

/-! ## A128212.P5300320352648642322

`A007953(n+1-A070565(n+1))`
-/

namespace A128212.P5300320352648642322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 ((n + 1 : ℤ) - A070565 (n + 1)).toNat

end

end A128212.P5300320352648642322

namespace A128212

/-- `A007953(n+1-A070565(n+1))` -/
def P5300320352648642322.Spec : Prop :=
  ∀ n, P5300320352648642322.a n = A128212 (n + 1)

end A128212

/-! ## A128212.P1424495393707754802

`A007953(A230099(n+1)-(n+1))`
-/

namespace A128212.P1424495393707754802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (A230099 (n + 1) - (n + 1 : ℤ)).toNat

end

end A128212.P1424495393707754802

namespace A128212

/-- `A007953(A230099(n+1)-(n+1))` -/
def P1424495393707754802.Spec : Prop :=
  ∀ n, P1424495393707754802.a n = A128212 (n + 1)

end A128212

/-! ## A128212.P9890254287845477753

`A007953(A161351(n+1)-A062028(n+1))`
-/

namespace A128212.P9890254287845477753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (A161351 (n + 1) - A062028 (n + 1)).toNat

end

end A128212.P9890254287845477753

namespace A128212

/-- `A007953(A161351(n+1)-A062028(n+1))` -/
def P9890254287845477753.Spec : Prop :=
  ∀ n, P9890254287845477753.a n = A128212 (n + 1)

theorem P9890254287845477753.correct : P9890254287845477753.Spec := by
  intro n
  simp only [A128212, Nat.add_sub_cancel, A128212.P9890254287845477753.a, A128212.P12226177893353124099.a, A007953, A007953.P3472751987379697826.a, A007954, A007954.P17322577641810457605.a, A062028, A062028.P8420805724104474199.a, A161351, A161351.P14732412019003608859.a, A054899, A054899.P10770181254942084517.a, A187844, A187844.P2226367484960758357.f1, A187844.P2226367484960758357.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A128212

/-! ## A128212.P3896621372402797522

`A007953(A051801(n+1)*A168046(n+1))`
-/

namespace A128212.P3896621372402797522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (A051801 (n + 1) * A168046 (n + 1)).toNat

end

end A128212.P3896621372402797522

namespace A128212

/-- `A007953(A051801(n+1)*A168046(n+1))` -/
def P3896621372402797522.Spec : Prop :=
  ∀ n, P3896621372402797522.a n = A128212 (n + 1)

end A128212

/-! ## A128212.P6968665507494805935

`A007953(A066308(n+1)/A007953(n+1))`
-/

namespace A128212.P6968665507494805935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (SequenceMachineLib.roundAway ((A066308 (n + 1) : ℚ) / (A007953 (n + 1) : ℚ))).toNat

end

end A128212.P6968665507494805935

namespace A128212

/-- `A007953(A066308(n+1)/A007953(n+1))` -/
def P6968665507494805935.Spec : Prop :=
  ∀ n, P6968665507494805935.a n = A128212 (n + 1)

end A128212

/-! ## A128212.P15612818200308748608

`A007953(A098736(n+1)/(n+1))`
-/

namespace A128212.P15612818200308748608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (SequenceMachineLib.roundAway ((A098736 (n + 1) : ℚ) / (n + 1 : ℚ))).toNat

end

end A128212.P15612818200308748608

namespace A128212

/-- `A007953(A098736(n+1)/(n+1))` -/
def P15612818200308748608.Spec : Prop :=
  ∀ n, P15612818200308748608.a n = A128212 (n + 1)

end A128212

/-! ## A128212.P8101731592597586772

`A007953(A061762(n+1)-A007953(n+1))`
-/

namespace A128212.P8101731592597586772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (A061762 (n + 1) - A007953 (n + 1)).toNat

end

end A128212.P8101731592597586772

namespace A128212

/-- `A007953(A061762(n+1)-A007953(n+1))` -/
def P8101731592597586772.Spec : Prop :=
  ∀ n, P8101731592597586772.a n = A128212 (n + 1)

theorem P8101731592597586772.correct : P8101731592597586772.Spec := by
  intro n
  simp only [A128212, Nat.add_sub_cancel, A128212.P8101731592597586772.a, A128212.P12226177893353124099.a, A007953, A007953.P3472751987379697826.a, A007954, A007954.P17322577641810457605.a, A061762, A061762.P2226516995009236848.a, A054899, A054899.P10770181254942084517.a, A187844, A187844.P2226367484960758357.f1, A187844.P2226367484960758357.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A128212

/-! ## A128212.P8079330331481881565

`A007953(A007953(n+1)-A062329(n+1))`
-/

namespace A128212.P8079330331481881565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (A007953 (n + 1) - A062329 (n + 1)).toNat

end

end A128212.P8079330331481881565

namespace A128212

/-- `A007953(A007953(n+1)-A062329(n+1))` -/
def P8079330331481881565.Spec : Prop :=
  ∀ n, P8079330331481881565.a n = A128212 (n + 1)

end A128212

/-! ## A128212.P11658803459680972578

`A061762(10*A007954(n+1))`
-/

namespace A128212.P11658803459680972578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061762 (10 * A007954 (n + 1)).toNat

end

end A128212.P11658803459680972578

namespace A128212

/-- `A061762(10*A007954(n+1))` -/
def P11658803459680972578.Spec : Prop :=
  ∀ n, P11658803459680972578.a n = A128212 (n + 1)

end A128212

/-! ## A128212.P4036978185348283881

`A001222(∏{digits}[∏{digits}[n+1, #], 2^#])`
-/

namespace A128212.P4036978185348283881
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f2 n)).map fun (x : ℕ) => x).prod

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => 2 ^ x).prod

end

end A128212.P4036978185348283881

namespace A128212

/-- `A001222(∏{digits}[∏{digits}[n+1, #], 2^#])` -/
def P4036978185348283881.Spec : Prop :=
  ∀ n, P4036978185348283881.a n = A128212 (n + 1)

end A128212

/-!
# A128213: Expansion of (1-x+2x^2-2x^3)/(1-x+x^2)^2.

The programs for A128213, the canonical program `A128213.P138261595417339197` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A128213 has offset 0).

The definition of A128213 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-x+2x^2-2x^3)/(1-2x+3x^2-2x^3+x^4))` (program `A128213.P138261595417339197`, by `A128213.P138261595417339197.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A128213.P138261595417339197

`ogf((1-x+2x^2-2x^3)/(1-2x+3x^2-2x^3+x^4))`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A128213

/-- `ogf((1-x+2x^2-2x^3)/(1-2x+3x^2-2x^3+x^4))` -/
def P138261595417339197.Spec : Prop :=
  ∀ n, P138261595417339197.a n = A128213 n

theorem P138261595417339197.correct : P138261595417339197.Spec := by
  intro n
  simp only [A128213]

end A128213

/-! ## A128213.P5604649351857163299

`∑[abs(1-n)*round(cos(n%6))]`
-/

namespace A128213.P5604649351857163299
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (n : ℤ)| * SequenceMachineLib.roundAway (Real.cos ((n % 6 : ℕ) : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A128213.P5604649351857163299

namespace A128213

/-- `∑[abs(1-n)*round(cos(n%6))]` -/
def P5604649351857163299.Spec : Prop :=
  ∀ n, P5604649351857163299.a n = A128213 n

end A128213

/-! ## A128213.P13790773796663311292

`∑[abs(1-n)*A010892(n)]`
-/

namespace A128213.P13790773796663311292
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (n : ℤ)| * A010892 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A128213.P13790773796663311292

namespace A128213

/-- `∑[abs(1-n)*A010892(n)]` -/
def P13790773796663311292.Spec : Prop :=
  ∀ n, P13790773796663311292.a n = A128213 n

end A128213

/-! ## A128213.P9795696708259278481

`A084103(n)-a(n-3)` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A128213.P9795696708259278481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1] fun n a =>
  A084103 n - a (n - 3)

end

end A128213.P9795696708259278481

namespace A128213

/-- `A084103(n)-a(n-3)` -/
def P9795696708259278481.Spec : Prop :=
  ∀ n, P9795696708259278481.a n = A128213 n

end A128213

/-! ## A128213.P2940435754138789760

`A187307(n)-A128834(n)`
-/

namespace A128213.P2940435754138789760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187307 n - A128834 n

end

end A128213.P2940435754138789760

namespace A128213

/-- `A187307(n)-A128834(n)` -/
def P2940435754138789760.Spec : Prop :=
  ∀ n, P2940435754138789760.a n = A128213 n

end A128213

/-! ## A128213.P9827815759390840418

`A100050(n)+∑[A163810(n)]`
-/

namespace A128213.P9827815759390840418
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163810 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100050 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A128213.P9827815759390840418

namespace A128213

/-- `A100050(n)+∑[A163810(n)]` -/
def P9827815759390840418.Spec : Prop :=
  ∀ n, P9827815759390840418.a n = A128213 n

end A128213

/-! ## A128213.P17625176156337064246

`∑[A128214(n)*A165326(n)]`
-/

namespace A128213.P17625176156337064246
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128214 n * A165326 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A128213.P17625176156337064246

namespace A128213

/-- `∑[A128214(n)*A165326(n)]` -/
def P17625176156337064246.Spec : Prop :=
  ∀ n, P17625176156337064246.a n = A128213 n

end A128213

/-! ## A128213.P4659120651797462708

`A110666(n)+2-A164965(n)`
-/

namespace A128213.P4659120651797462708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110666 n + (2 - A164965 n)

end

end A128213.P4659120651797462708

namespace A128213

/-- `A110666(n)+2-A164965(n)` -/
def P4659120651797462708.Spec : Prop :=
  ∀ n, P4659120651797462708.a n = A128213 n

end A128213

/-! ## A128213.P2941316289330576430

`A165202(n)-2*A128834(n)`
-/

namespace A128213.P2941316289330576430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165202 n - 2 * A128834 n

end

end A128213.P2941316289330576430

namespace A128213

/-- `A165202(n)-2*A128834(n)` -/
def P2941316289330576430.Spec : Prop :=
  ∀ n, P2941316289330576430.a n = A128213 n

end A128213

/-! ## A128213.P14660172645598359357

`∑[A110665(n)-A010892(n)]+2`
-/

namespace A128213.P14660172645598359357
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110665 n - A010892 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 2

end

end A128213.P14660172645598359357

namespace A128213

/-- `∑[A110665(n)-A010892(n)]+2` -/
def P14660172645598359357.Spec : Prop :=
  ∀ n, P14660172645598359357.a n = A128213 n

end A128213

/-! ## A128213.P186411532973444375

`∑[abs(1-n)*A128834(n+1)]`
-/

namespace A128213.P186411532973444375
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (n : ℤ)| * A128834 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A128213.P186411532973444375

namespace A128213

/-- `∑[abs(1-n)*A128834(n+1)]` -/
def P186411532973444375.Spec : Prop :=
  ∀ n, P186411532973444375.a n = A128213 n

end A128213

/-! ## A128213.P11484032147152951754

`A100050(n)+A010892(n+1)`
-/

namespace A128213.P11484032147152951754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100050 n + A010892 (n + 1)

end

end A128213.P11484032147152951754

namespace A128213

/-- `A100050(n)+A010892(n+1)` -/
def P11484032147152951754.Spec : Prop :=
  ∀ n, P11484032147152951754.a n = A128213 n

end A128213

/-! ## A128213.P17934742179512235723

`A110665(n+1)-n*A100051(n+1)`
-/

namespace A128213.P17934742179512235723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110665 (n + 1) - (n : ℤ) * A100051 (n + 1)

end

end A128213.P17934742179512235723

namespace A128213

/-- `A110665(n+1)-n*A100051(n+1)` -/
def P17934742179512235723.Spec : Prop :=
  ∀ n, P17934742179512235723.a n = A128213 n

end A128213

/-! ## A128213.P7907215996860746768

`A187307(n)+A010892(n+2)`
-/

namespace A128213.P7907215996860746768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187307 n + A010892 (n + 2)

end

end A128213.P7907215996860746768

namespace A128213

/-- `A187307(n)+A010892(n+2)` -/
def P7907215996860746768.Spec : Prop :=
  ∀ n, P7907215996860746768.a n = A128213 n

end A128213

/-! ## A128213.P14468696239714104022

`A128834(n+2)+A100050(n)`
-/

namespace A128213.P14468696239714104022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128834 (n + 2) + A100050 n

end

end A128213.P14468696239714104022

namespace A128213

/-- `A128834(n+2)+A100050(n)` -/
def P14468696239714104022.Spec : Prop :=
  ∀ n, P14468696239714104022.a n = A128213 n

end A128213

/-! ## A128213.P5908443480491183931

`A100050(n)-A163810(n+2)`
-/

namespace A128213.P5908443480491183931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100050 n - A163810 (n + 2)

end

end A128213.P5908443480491183931

namespace A128213

/-- `A100050(n)-A163810(n+2)` -/
def P5908443480491183931.Spec : Prop :=
  ∀ n, P5908443480491183931.a n = A128213 n

end A128213

/-! ## A128213.P12292679495388103041

`∑[abs(1-n)*A260190(2*n)]`
-/

namespace A128213.P12292679495388103041
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (n : ℤ)| * A260190 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A128213.P12292679495388103041

namespace A128213

/-- `∑[abs(1-n)*A260190(2*n)]` -/
def P12292679495388103041.Spec : Prop :=
  ∀ n, P12292679495388103041.a n = A128213 n

end A128213

/-! ## A128213.P7738761955484601507

`∑[abs(1-n)*A014021(2*n)]`
-/

namespace A128213.P7738761955484601507
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (n : ℤ)| * A014021 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A128213.P7738761955484601507

namespace A128213

/-- `∑[abs(1-n)*A014021(2*n)]` -/
def P7738761955484601507.Spec : Prop :=
  ∀ n, P7738761955484601507.a n = A128213 n

end A128213

/-! ## A128213.P12893182646712067652

`∑{#}[n, C(n, #)*A128214(#)]`
-/

namespace A128213.P12893182646712067652
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (Nat.choose n k : ℤ) * A128214 k

end

end A128213.P12893182646712067652

namespace A128213

/-- `∑{#}[n, C(n, #)*A128214(#)]` -/
def P12893182646712067652.Spec : Prop :=
  ∀ n, P12893182646712067652.a n = A128213 n

end A128213

/-!
# A128214: Expansion of (1+2*x+3*x^2)/(1+x+x^2)^2.

The programs for A128214, the canonical program `A128214.P9910519595537823154` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A128214 has offset 0).

The definition of A128214 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1+2x+3x^2)/(1+2x+3x^2+2x^3+x^4))` (program `A128214.P9910519595537823154`, by `A128214.P9910519595537823154.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A128214.P9910519595537823154

`ogf((1+2x+3x^2)/(1+2x+3x^2+2x^3+x^4))`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A128214

/-- `ogf((1+2x+3x^2)/(1+2x+3x^2+2x^3+x^4))` -/
def P9910519595537823154.Spec : Prop :=
  ∀ n, P9910519595537823154.a n = A128214 n

theorem P9910519595537823154.correct : P9910519595537823154.Spec := by
  intro n
  simp only [A128214]

end A128214

/-! ## A128214.P7608413895231225861

`(n-1)*(n-2)²%3*(-1)^floor((2*n-2)/3)`
-/

namespace A128214.P7608413895231225861
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((n : ℤ) - 1) * Int.tmod (((n : ℤ) - 2) ^ 2) 3 : ℚ) * (-1 : ℚ) ^ (⌊((2 * n : ℤ) - 2 : ℚ) / 3⌋ : ℤ)

end

end A128214.P7608413895231225861

namespace A128214

/-- `(n-1)*(n-2)²%3*(-1)^floor((2*n-2)/3)` -/
def P7608413895231225861.Spec : Prop :=
  ∀ n, P7608413895231225861.a n = (A128214 n : ℚ)

end A128214

/-! ## A128214.P1252915533658804528

`(1-(n+2)%3)*(n-1)`
-/

namespace A128214.P1252915533658804528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - (((n + 2) % 3 : ℕ) : ℤ)) * ((n : ℤ) - 1)

end

end A128214.P1252915533658804528

namespace A128214

/-- `(1-(n+2)%3)*(n-1)` -/
def P1252915533658804528.Spec : Prop :=
  ∀ n, P1252915533658804528.a n = A128214 n

end A128214

/-! ## A128214.P10645175026066789296

`(1-n)*(1-(2*n)%3)`
-/

namespace A128214.P10645175026066789296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - (n : ℤ)) * (1 - ((2 * n % 3 : ℕ) : ℤ))

end

end A128214.P10645175026066789296

namespace A128214

/-- `(1-n)*(1-(2*n)%3)` -/
def P10645175026066789296.Spec : Prop :=
  ∀ n, P10645175026066789296.a n = A128214 n

end A128214

/-! ## A128214.P8869781182000410921

`(1-n)*∑[floor(a(n-3))]` with `a(0)=1, a(1)=-2, a(2)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A128214.P8869781182000410921
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, -2, 1] fun n f1 =>
  f1 (n - 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - (n : ℤ)) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A128214.P8869781182000410921

namespace A128214

/-- `(1-n)*∑[floor(a(n-3))]` -/
def P8869781182000410921.Spec : Prop :=
  ∀ n, P8869781182000410921.a n = A128214 n

end A128214

/-! ## A128214.P1165072753121107786

`(1-n)*A049347(n)`
-/

namespace A128214.P1165072753121107786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - (n : ℤ)) * A049347 n

end

end A128214.P1165072753121107786

namespace A128214

/-- `(1-n)*A049347(n)` -/
def P1165072753121107786.Spec : Prop :=
  ∀ n, P1165072753121107786.a n = A128214 n

end A128214

/-! ## A128214.P959856084846806304

`(1-n)*∑[A131713(n)]`
-/

namespace A128214.P959856084846806304
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131713 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - (n : ℤ)) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A128214.P959856084846806304

namespace A128214

/-- `(1-n)*∑[A131713(n)]` -/
def P959856084846806304.Spec : Prop :=
  ∀ n, P959856084846806304.a n = A128214 n

end A128214

/-! ## A128214.P7572209785325438018

`(n-1)*(A080425(n)-1)`
-/

namespace A128214.P7572209785325438018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1) * (A080425 n - 1)

end

end A128214.P7572209785325438018

namespace A128214

/-- `(n-1)*(A080425(n)-1)` -/
def P7572209785325438018.Spec : Prop :=
  ∀ n, P7572209785325438018.a n = A128214 n

end A128214

/-! ## A128214.P15020477152204086476

`A239286(n)-a(n-1)` with `a(0)=1`
-/

namespace A128214.P15020477152204086476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A239286 n - a (n - 1)

end

end A128214.P15020477152204086476

namespace A128214

/-- `A239286(n)-a(n-1)` -/
def P15020477152204086476.Spec : Prop :=
  ∀ n, P15020477152204086476.a n = A128214 n

end A128214

/-! ## A128214.P2474145053885089885

`(1-n)*A102283(n+1)`
-/

namespace A128214.P2474145053885089885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - (n : ℤ)) * A102283 (n + 1)

end

end A128214.P2474145053885089885

namespace A128214

/-- `(1-n)*A102283(n+1)` -/
def P2474145053885089885.Spec : Prop :=
  ∀ n, P2474145053885089885.a n = A128214 n

end A128214

/-! ## A128214.P13822457537771385783

`(1-n)*A106510(n+1)`
-/

namespace A128214.P13822457537771385783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - (n : ℤ)) * A106510 (n + 1)

end

end A128214.P13822457537771385783

namespace A128214

/-- `(1-n)*A106510(n+1)` -/
def P13822457537771385783.Spec : Prop :=
  ∀ n, P13822457537771385783.a n = A128214 n

end A128214

/-! ## A128214.P8661930138602446738

`(n-1)*A163804(n+1)`
-/

namespace A128214.P8661930138602446738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1) * A163804 (n + 1)

end

end A128214.P8661930138602446738

namespace A128214

/-- `(n-1)*A163804(n+1)` -/
def P8661930138602446738.Spec : Prop :=
  ∀ n, P8661930138602446738.a n = A128214 n

end A128214

/-! ## A128214.P5223093765895802506

`(n-1)*A057078(n+2)`
-/

namespace A128214.P5223093765895802506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1) * A057078 (n + 2)

end

end A128214.P5223093765895802506

namespace A128214

/-- `(n-1)*A057078(n+2)` -/
def P5223093765895802506.Spec : Prop :=
  ∀ n, P5223093765895802506.a n = A128214 n

end A128214

/-! ## A128214.P5392919727253220447

`A102283(n+1)+A102283(n+1)-A162397(n+1)`
-/

namespace A128214.P5392919727253220447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102283 (n + 1) + (A102283 (n + 1) - A162397 (n + 1))

end

end A128214.P5392919727253220447

namespace A128214

/-- `A102283(n+1)+A102283(n+1)-A162397(n+1)` -/
def P5392919727253220447.Spec : Prop :=
  ∀ n, P5392919727253220447.a n = A128214 n

end A128214

/-! ## A128214.P5117288148194078307

`(n-1)*A122434(n+3)`
-/

namespace A128214.P5117288148194078307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1) * A122434 (n + 3)

end

end A128214.P5117288148194078307

namespace A128214

/-- `(n-1)*A122434(n+3)` -/
def P5117288148194078307.Spec : Prop :=
  ∀ n, P5117288148194078307.a n = A128214 n

end A128214

/-! ## A128214.P5928459209255294783

`(n-1)*A101675(2*n+1)`
-/

namespace A128214.P5928459209255294783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1) * A101675 (2 * n + 1)

end

end A128214.P5928459209255294783

namespace A128214

/-- `(n-1)*A101675(2*n+1)` -/
def P5928459209255294783.Spec : Prop :=
  ∀ n, P5928459209255294783.a n = A128214 n

end A128214

/-! ## A128214.P13906086196803338403

`∑{#}[n, (-1)^(n-#)*C(n, #)*A128213(#)]`
-/

namespace A128214.P13906086196803338403
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (-1 : ℚ) ^ ((n : ℤ) - (k : ℤ) : ℤ) * (Nat.choose n k : ℚ) * (A128213 k : ℚ)

end

end A128214.P13906086196803338403

namespace A128214

/-- `∑{#}[n, (-1)^(n-#)*C(n, #)*A128213(#)]` -/
def P13906086196803338403.Spec : Prop :=
  ∀ n, P13906086196803338403.a n = (A128214 n : ℚ)

end A128214

/-!
# A128215: a(1)=a(2)=1. a(n+1) = a(n) + a(largest prime dividing n).

The programs for A128215, the canonical program `A128215.P14850765395012742859` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A128215 has offset 1).

The definition of A128215 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2221 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A128215.P14850765395012742859

`a(n-1)+a(A070777(n))` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A128215

/-- `a(n-1)+a(A070777(n))` -/
def P14850765395012742859.Spec : Prop :=
  ∀ n, (P14850765395012742859.a n : ℤ) = A128215 (n + 1)

theorem P14850765395012742859.correct : P14850765395012742859.Spec := by
  intro n
  simp only [A128215, Nat.add_sub_cancel]

end A128215

/-! ## A128215.P2027182353213632077

`a(n-1)+a(A006530(n)-1)` with `a(0)=1, a(1)=1`
-/

namespace A128215.P2027182353213632077
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 1) + a (A006530 n - 1).toNat

end

end A128215.P2027182353213632077

namespace A128215

/-- `a(n-1)+a(A006530(n)-1)` -/
def P2027182353213632077.Spec : Prop :=
  ∀ n, (P2027182353213632077.a n : ℤ) = A128215 (n + 1)

end A128215

/-! ## A128215.P14286570065919629991

`a(n-1)+a(A225530(A006530(n)))` with `a(0)=1, a(1)=1`
-/

namespace A128215.P14286570065919629991
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 1) + a (A225530 (A006530 n).toNat).toNat

end

end A128215.P14286570065919629991

namespace A128215

/-- `a(n-1)+a(A225530(A006530(n)))` -/
def P14286570065919629991.Spec : Prop :=
  ∀ n, (P14286570065919629991.a n : ℤ) = A128215 (n + 1)

end A128215

/-!
# A128216: a(1)=a(2)=1. a(n+1) = a(n) + a(smallest prime dividing n).

The programs for A128216, there is no canonical definition to state claims against.
-/

/-! ## A128216.P10421157790534195060

`a(n-1)+a(A057237(n))` with `a(0)=1, a(1)=1`
-/

namespace A128216.P10421157790534195060
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 1) + a (A057237 n).toNat

end

end A128216.P10421157790534195060

/-! ## A128216.P18306334862532866346

`a(A020639(n)-1)+a(n-1)` with `a(0)=1, a(1)=1`
-/

namespace A128216.P18306334862532866346
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (A020639 n - 1).toNat + a (n - 1)

end

end A128216.P18306334862532866346

/-! ## A128216.P5932773691933636099

`a(A276331(A020639(n)))+a(n-1)` with `a(0)=1, a(1)=1`
-/

namespace A128216.P5932773691933636099
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (A276331 (A020639 n).toNat).toNat + a (n - 1)

end

end A128216.P5932773691933636099

/-! ## A128216.P2601471872122189589

`A001651(A113050(n+1)%A060215(n))`
-/

namespace A128216.P2601471872122189589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001651 (Int.tmod (A113050 (n + 1)) (A060215 n)).toNat

end

end A128216.P2601471872122189589

/-! ## A128216.P10629450322975881315

`A001651(A113050(n+1))+A000007(A037167(n+1))`
-/

namespace A128216.P10629450322975881315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001651 (A113050 (n + 1)).toNat + A000007 (A037167 (n + 1)).toNat

end

end A128216.P10629450322975881315

/-!
# A128217: Nonnegative integers n such that the square-root of n differs from its nearest integer by less than 1/4.

The programs for A128217, the canonical program `A128217.P3498553532010773377` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A128217 has offset 1).

The definition of A128217 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A128217.P843335279697644972

`lt[A221073(round(2*sqrt(n))), 4]`
-/

namespace A128217.P843335279697644972
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221073 (SequenceMachineLib.roundAway (2 * Real.sqrt (n : ℝ))).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A128217.P843335279697644972

namespace A128217

/-- `lt[A221073(round(2*sqrt(n))), 4]` -/
def P843335279697644972.Spec : Prop :=
  ∀ n, (P843335279697644972.a n : ℤ) = A128217 (n + 1)

end A128217

/-! ## A128217.P1470347180864826047

`A007590(round(sqrt(2*n)))+n`
-/

namespace A128217.P1470347180864826047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007590 (SequenceMachineLib.roundAway (Real.sqrt (2 * n : ℝ))).toNat + (n : ℤ)

end

end A128217.P1470347180864826047

namespace A128217

/-- `A007590(round(sqrt(2*n)))+n` -/
def P1470347180864826047.Spec : Prop :=
  ∀ n, P1470347180864826047.a n = A128217 (n + 1)

end A128217

/-! ## A128217.P4243596310205845458

`eq[1, A105931(round(2*sqrt(n))+1)]`
-/

namespace A128217.P4243596310205845458
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105931 (SequenceMachineLib.roundAway (2 * Real.sqrt (n : ℝ)) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A128217.P4243596310205845458

namespace A128217

/-- `eq[1, A105931(round(2*sqrt(n))+1)]` -/
def P4243596310205845458.Spec : Prop :=
  ∀ n, (P4243596310205845458.a n : ℤ) = A128217 (n + 1)

end A128217

/-! ## A128217.P2844917540690874818

`A099392(round(sqrt(2*n))+1)+n-1`
-/

namespace A128217.P2844917540690874818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099392 (SequenceMachineLib.roundAway (Real.sqrt (2 * n : ℝ)) + 1).toNat + ((n : ℤ) - 1)

end

end A128217.P2844917540690874818

namespace A128217

/-- `A099392(round(sqrt(2*n))+1)+n-1` -/
def P2844917540690874818.Spec : Prop :=
  ∀ n, P2844917540690874818.a n = A128217 (n + 1)

end A128217

/-! ## A128217.P3498553532010773377

`2*A002620(A123578(n))+n`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A128217

/-- `2*A002620(A123578(n))+n` -/
def P3498553532010773377.Spec : Prop :=
  ∀ n, P3498553532010773377.a n = A128217 (n + 1)

theorem P3498553532010773377.correct : P3498553532010773377.Spec := by
  intro n
  simp only [A128217, Nat.add_sub_cancel]

end A128217

/-! ## A128217.P17339649136296801605

`lt[n, (A020703(n+1)-n)²]`
-/

namespace A128217.P17339649136296801605
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A020703 (n + 1) - (n : ℤ)) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A128217.P17339649136296801605

namespace A128217

/-- `lt[n, (A020703(n+1)-n)²]` -/
def P17339649136296801605.Spec : Prop :=
  ∀ n, (P17339649136296801605.a n : ℤ) = A128217 (n + 1)

end A128217

/-! ## A128217.P6910499575651848791

`record[∑[n]%comp[A083245(n+2)²]]`
-/

namespace A128217.P6910499575651848791
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083245 (n + 2) ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) % SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A128217.P6910499575651848791

namespace A128217

/-- `record[∑[n]%comp[A083245(n+2)²]]` -/
def P6910499575651848791.Spec : Prop :=
  ∀ n, (P6910499575651848791.a n : ℤ) = A128217 (n + 1)

end A128217

/-! ## A128217.P12541650748618745060

`A004526(A168038(n))+n`
-/

namespace A128217.P12541650748618745060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A168038 n).toNat + (n : ℤ)

end

end A128217.P12541650748618745060

namespace A128217

/-- `A004526(A168038(n))+n` -/
def P12541650748618745060.Spec : Prop :=
  ∀ n, P12541650748618745060.a n = A128217 (n + 1)

end A128217

/-! ## A128217.P15644385262415893445

`A004526(A123578(n)²)+n`
-/

namespace A128217.P15644385262415893445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A123578 n ^ 2).toNat + (n : ℤ)

end

end A128217.P15644385262415893445

namespace A128217

/-- `A004526(A123578(n)²)+n` -/
def P15644385262415893445.Spec : Prop :=
  ∀ n, P15644385262415893445.a n = A128217 (n + 1)

end A128217

/-! ## A128217.P606052610063173863

`A004526(A274093(n)²)+n`
-/

namespace A128217.P606052610063173863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A274093 n ^ 2).toNat + (n : ℤ)

end

end A128217.P606052610063173863

namespace A128217

/-- `A004526(A274093(n)²)+n` -/
def P606052610063173863.Spec : Prop :=
  ∀ n, P606052610063173863.a n = A128217 (n + 1)

end A128217

/-! ## A128217.P6357963627421129116

`A004526(A274094(n)²)+n`
-/

namespace A128217.P6357963627421129116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A274094 n ^ 2).toNat + (n : ℤ)

end

end A128217.P6357963627421129116

namespace A128217

/-- `A004526(A274094(n)²)+n` -/
def P6357963627421129116.Spec : Prop :=
  ∀ n, P6357963627421129116.a n = A128217 (n + 1)

end A128217

/-! ## A128217.P10215101820572636207

`A004526(A000194(2*n)²)+n`
-/

namespace A128217.P10215101820572636207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A000194 (2 * n) ^ 2).toNat + (n : ℤ)

end

end A128217.P10215101820572636207

namespace A128217

/-- `A004526(A000194(2*n)²)+n` -/
def P10215101820572636207.Spec : Prop :=
  ∀ n, P10215101820572636207.a n = A128217 (n + 1)

end A128217

/-! ## A128217.P16104391008787351393

`lt[A274094(2*n), 1]`
-/

namespace A128217.P16104391008787351393
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274094 (2 * n)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A128217.P16104391008787351393

namespace A128217

/-- `lt[A274094(2*n), 1]` -/
def P16104391008787351393.Spec : Prop :=
  ∀ n, (P16104391008787351393.a n : ℤ) = A128217 (n + 1)

end A128217

/-! ## A128217.P7532254454699786870

`lt[1, A274093(2*n)+2]`
-/

namespace A128217.P7532254454699786870
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274093 (2 * n) + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A128217.P7532254454699786870

namespace A128217

/-- `lt[1, A274093(2*n)+2]` -/
def P7532254454699786870.Spec : Prop :=
  ∀ n, (P7532254454699786870.a n : ℤ) = A128217 (n + 1)

end A128217

/-! ## A128217.P8457809963615029404

`eq[1, A080036(2*n)%2]`
-/

namespace A128217.P8457809963615029404
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A080036 (2 * n)) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A128217.P8457809963615029404

namespace A128217

/-- `eq[1, A080036(2*n)%2]` -/
def P8457809963615029404.Spec : Prop :=
  ∀ n, (P8457809963615029404.a n : ℤ) = A128217 (n + 1)

end A128217

/-! ## A128217.P4101220751675459641

`lt[0, and(1, A003056(abs(1-2*n)))]`
-/

namespace A128217.P4101220751675459641
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A003056 |1 - (2 * n : ℤ)|.toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A128217.P4101220751675459641

namespace A128217

/-- `lt[0, and(1, A003056(abs(1-2*n)))]` -/
def P4101220751675459641.Spec : Prop :=
  ∀ n, (P4101220751675459641.a n : ℤ) = A128217 (n + 1)

end A128217

/-! ## A128217.P12026823468492423631

`eq[1, A000034(A123578(2*n))]`
-/

namespace A128217.P12026823468492423631
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (A123578 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A128217.P12026823468492423631

namespace A128217

/-- `eq[1, A000034(A123578(2*n))]` -/
def P12026823468492423631.Spec : Prop :=
  ∀ n, (P12026823468492423631.a n : ℤ) = A128217 (n + 1)

end A128217

/-! ## A128217.P8969872187671878625

`record[A025480(A000194(n)²+n)]`
-/

namespace A128217.P8969872187671878625
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A000194 n ^ 2 + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A128217.P8969872187671878625

namespace A128217

/-- `record[A025480(A000194(n)²+n)]` -/
def P8969872187671878625.Spec : Prop :=
  ∀ n, P8969872187671878625.a n = A128217 (n + 1)

end A128217

/-! ## A128217.P16386852804147984308

`record[A078898(A000194(n)²+n)]`
-/

namespace A128217.P16386852804147984308
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078898 (A000194 n ^ 2 + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A128217.P16386852804147984308

namespace A128217

/-- `record[A078898(A000194(n)²+n)]` -/
def P16386852804147984308.Spec : Prop :=
  ∀ n, P16386852804147984308.a n = A128217 (n + 1)

end A128217

/-! ## A128217.P17929755612204193829

`record[A130472(A000194(n)²+n)]`
-/

namespace A128217.P17929755612204193829
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130472 (A000194 n ^ 2 + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A128217.P17929755612204193829

namespace A128217

/-- `record[A130472(A000194(n)²+n)]` -/
def P17929755612204193829.Spec : Prop :=
  ∀ n, P17929755612204193829.a n = A128217 (n + 1)

end A128217

/-!
# A128218: First differences of A128217.

The programs for A128218, the canonical program `A128218.P17892042151444153462` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A128218 has offset 1).

The definition of A128218 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A128218.P2574266288988258315

`Δ[floor(round(sqrt(2*n))²/2)]+1`
-/

namespace A128218.P2574266288988258315
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(SequenceMachineLib.roundAway (Real.sqrt (2 * n : ℝ)) ^ 2 : ℚ) / 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 1

end

end A128218.P2574266288988258315

namespace A128218

/-- `Δ[floor(round(sqrt(2*n))²/2)]+1` -/
def P2574266288988258315.Spec : Prop :=
  ∀ n, P2574266288988258315.a n = A128218 (n + 1)

end A128218

/-! ## A128218.P15084270631602585485

`or(1, round(sqrt(2*n))*char[∑[n]]+1)`
-/

namespace A128218.P15084270631602585485
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (SequenceMachineLib.roundAway (Real.sqrt (2 * n : ℝ)) * ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) + 1)

end

end A128218.P15084270631602585485

namespace A128218

/-- `or(1, round(sqrt(2*n))*char[∑[n]]+1)` -/
def P15084270631602585485.Spec : Prop :=
  ∀ n, P15084270631602585485.a n = A128218 (n + 1)

end A128218

/-! ## A128218.P12930824379179306453

`xor(1, and(-2, A130296(n+1)))`
-/

namespace A128218.P12930824379179306453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (Int.land (-2) (A130296 (n + 1)))

end

end A128218.P12930824379179306453

namespace A128218

/-- `xor(1, and(-2, A130296(n+1)))` -/
def P12930824379179306453.Spec : Prop :=
  ∀ n, P12930824379179306453.a n = A128218 (n + 1)

end A128218

/-! ## A128218.P16036531399268158188

`A109613(∑[char[∑[n]]]*char[∑[n]])`
-/

namespace A128218.P16036531399268158188
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109613 ((∑ j ∈ Finset.range (n + 1), f1 j) * (if ∃ j, f4 j = n then 1 else 0))

end

end A128218.P16036531399268158188

namespace A128218

/-- `A109613(∑[char[∑[n]]]*char[∑[n]])` -/
def P16036531399268158188.Spec : Prop :=
  ∀ n, P16036531399268158188.a n = A128218 (n + 1)

end A128218

/-! ## A128218.P8075615875016347191

`A004525(Δ[round(sqrt(2*n))²]+2)`
-/

namespace A128218.P8075615875016347191
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (2 * n : ℝ)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (f1 (n + 1) - f1 n + 2).toNat

end

end A128218.P8075615875016347191

namespace A128218

/-- `A004525(Δ[round(sqrt(2*n))²]+2)` -/
def P8075615875016347191.Spec : Prop :=
  ∀ n, P8075615875016347191.a n = A128218 (n + 1)

end A128218

/-! ## A128218.P17892042151444153462

`A186422(A198954(n))`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A128218

/-- `A186422(A198954(n))` -/
def P17892042151444153462.Spec : Prop :=
  ∀ n, P17892042151444153462.a n = A128218 (n + 1)

theorem P17892042151444153462.correct : P17892042151444153462.Spec := by
  intro n
  simp only [A128218, Nat.add_sub_cancel]

end A128218

/-! ## A128218.P1072530435013002169

`gcd(A133571(n), A166124(n))`
-/

namespace A128218.P1072530435013002169
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A133571 n) (A166124 n)

end

end A128218.P1072530435013002169

namespace A128218

/-- `gcd(A133571(n), A166124(n))` -/
def P1072530435013002169.Spec : Prop :=
  ∀ n, (P1072530435013002169.a n : ℤ) = A128218 (n + 1)

end A128218

/-! ## A128218.P15084635354919262568

`Δ[A128217(n+1)]`
-/

namespace A128218.P15084635354919262568
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128217 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A128218.P15084635354919262568

namespace A128218

/-- `Δ[A128217(n+1)]` -/
def P15084635354919262568.Spec : Prop :=
  ∀ n, P15084635354919262568.a n = A128218 (n + 1)

end A128218

/-! ## A128218.P15792576576785723896

`A131821(or(1, A131821(n+1))+n)`
-/

namespace A128218.P15792576576785723896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131821 (Int.lor 1 (A131821 (n + 1)) + (n : ℤ)).toNat

end

end A128218.P15792576576785723896

namespace A128218

/-- `A131821(or(1, A131821(n+1))+n)` -/
def P15792576576785723896.Spec : Prop :=
  ∀ n, P15792576576785723896.a n = A128218 (n + 1)

end A128218

/-! ## A128218.P1239380995230134033

`filter[A131821(n+1), A000035(#)]`
-/

namespace A128218.P1239380995230134033
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131821 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A000035 (f1 j).toNat = 1) n)

end

end A128218.P1239380995230134033

namespace A128218

/-- `filter[A131821(n+1), A000035(#)]` -/
def P1239380995230134033.Spec : Prop :=
  ∀ n, P1239380995230134033.a n = A128218 (n + 1)

end A128218

/-! ## A128218.P302865054854202202

`A058224(A131231(n+1))`
-/

namespace A128218.P302865054854202202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058224 (A131231 (n + 1)).toNat

end

end A128218.P302865054854202202

namespace A128218

/-- `A058224(A131231(n+1))` -/
def P302865054854202202.Spec : Prop :=
  ∀ n, P302865054854202202.a n = A128218 (n + 1)

end A128218

/-! ## A128218.P3848889855971789765

`A000005((char[∑[n]]+1)^round(sqrt(record[n*ceil(sqrt(n+1))%2])))`
-/

namespace A128218.P3848889855971789765
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * Int.tmod ⌈Real.sqrt (n + 1 : ℝ)⌉ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway ((((if ∃ j, f1 j = n then 1 else 0) + 1 : ℕ) : ℚ) ^ (SequenceMachineLib.roundAway (Real.sqrt (f3 (SequenceMachineLib.nth (fun j => ∀ l < j, f3 l < f3 j) n) : ℝ)) : ℤ))).toNat

end

end A128218.P3848889855971789765

namespace A128218

/-- `A000005((char[∑[n]]+1)^round(sqrt(record[n*ceil(sqrt(n+1))%2])))` -/
def P3848889855971789765.Spec : Prop :=
  ∀ n, P3848889855971789765.a n = A128218 (n + 1)

end A128218

/-!
# A128219: A000012 * A127701. a(1) = 1, a(2) = 2, a(3) = 2; by rows, n-1 terms of 2, 3, 4, ... followed by "n".

The programs for A128219, the canonical program `A128219.P18331092363454411436` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A128219 has offset 1).

The definition of A128219 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A128219.P18331092363454411436

`T(n,k-1)+T(n-1,k)-T(n-2,k-1)` with `a(0)=1, a(1)=2`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A128219

/-- `T(n,k-1)+T(n-1,k)-T(n-2,k-1)` -/
def P18331092363454411436.Spec : Prop :=
  ∀ n, P18331092363454411436.a n = A128219 (n + 1)

theorem P18331092363454411436.correct : P18331092363454411436.Spec := by
  intro n
  simp only [A128219, Nat.add_sub_cancel]

end A128219

/-! ## A128219.P13298360526618425885

`char[∑[n]]+1+T(n-1,k-1)` with `a(0)=1`
-/

namespace A128219.P13298360526618425885
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  (if ∃ j, f1 j = n then 1 else 0) + 1 + SequenceMachineLib.triUpLeft a n

end

end A128219.P13298360526618425885

namespace A128219

/-- `char[∑[n]]+1+T(n-1,k-1)` -/
def P13298360526618425885.Spec : Prop :=
  ∀ n, (P13298360526618425885.a n : ℤ) = A128219 (n + 1)

end A128219

/-! ## A128219.P13827123354841768353

`col(n)+2-Δ[row(n)]`
-/

namespace A128219.P13827123354841768353
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.triRow n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.triCol n + 2 : ℤ) - ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A128219.P13827123354841768353

namespace A128219

/-- `col(n)+2-Δ[row(n)]` -/
def P13827123354841768353.Spec : Prop :=
  ∀ n, P13827123354841768353.a n = A128219 (n + 1)

end A128219

/-! ## A128219.P15469906819823113971

`2-(Δ[row(n)]-col(n))`
-/

namespace A128219.P15469906819823113971
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.triRow n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (SequenceMachineLib.triCol n : ℤ))

end

end A128219.P15469906819823113971

namespace A128219

/-- `2-(Δ[row(n)]-col(n))` -/
def P15469906819823113971.Spec : Prop :=
  ∀ n, P15469906819823113971.a n = A128219 (n + 1)

end A128219

/-! ## A128219.P3691226870497966415

`T(n-1,k-1)+col(n)+2-T(n,k-1)` with `a(0)=1`
-/

namespace A128219.P3691226870497966415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  SequenceMachineLib.triUpLeft a n + (SequenceMachineLib.triCol n : ℤ) + 2 - SequenceMachineLib.triLeft a n

end

end A128219.P3691226870497966415

namespace A128219

/-- `T(n-1,k-1)+col(n)+2-T(n,k-1)` -/
def P3691226870497966415.Spec : Prop :=
  ∀ n, P3691226870497966415.a n = A128219 (n + 1)

end A128219

/-! ## A128219.P1016049514673209765

`col(n)+2-C(col(n), row(n))`
-/

namespace A128219.P1016049514673209765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.triCol n + 2 : ℤ) - (Nat.choose (SequenceMachineLib.triCol n) (SequenceMachineLib.triRow n) : ℤ)

end

end A128219.P1016049514673209765

namespace A128219

/-- `col(n)+2-C(col(n), row(n))` -/
def P1016049514673209765.Spec : Prop :=
  ∀ n, P1016049514673209765.a n = A128219 (n + 1)

end A128219

/-! ## A128219.P3544073340244935807

`col(n)+gcd(2, C(col(n), row(n)))`
-/

namespace A128219.P3544073340244935807
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.triCol n + Nat.gcd 2 (Nat.choose (SequenceMachineLib.triCol n) (SequenceMachineLib.triRow n))

end

end A128219.P3544073340244935807

namespace A128219

/-- `col(n)+gcd(2, C(col(n), row(n)))` -/
def P3544073340244935807.Spec : Prop :=
  ∀ n, (P3544073340244935807.a n : ℤ) = A128219 (n + 1)

end A128219

/-! ## A128219.P712592846321331922

`T(T(n-1,k-1)-2, T(n-1,k-1)-2)+2` with `a(0)=1`
-/

namespace A128219.P712592846321331922
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  SequenceMachineLib.triAt a (((SequenceMachineLib.triUpLeft a n : ℕ) : ℤ) - 2) (((SequenceMachineLib.triUpLeft a n : ℕ) : ℤ) - 2) + 2

end

end A128219.P712592846321331922

namespace A128219

/-- `T(T(n-1,k-1)-2, T(n-1,k-1)-2)+2` -/
def P712592846321331922.Spec : Prop :=
  ∀ n, (P712592846321331922.a n : ℤ) = A128219 (n + 1)

end A128219

/-! ## A128219.P17287525444696526228

`T(T(n-1,k-1), 2*T(n-1,k-1))+T(n-1,k-1)+1` with `a(0)=1`
-/

namespace A128219.P17287525444696526228
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  SequenceMachineLib.triAt a ((SequenceMachineLib.triUpLeft a n : ℕ) : ℤ) (2 * SequenceMachineLib.triUpLeft a n : ℤ) + SequenceMachineLib.triUpLeft a n + 1

end

end A128219.P17287525444696526228

namespace A128219

/-- `T(T(n-1,k-1), 2*T(n-1,k-1))+T(n-1,k-1)+1` -/
def P17287525444696526228.Spec : Prop :=
  ∀ n, (P17287525444696526228.a n : ℤ) = A128219 (n + 1)

end A128219

/-! ## A128219.P16575708289133655782

`2-(1-T(n-1,k-1))*(T(n,k-1)-col(n))` with `a(0)=1`
-/

namespace A128219.P16575708289133655782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 - (1 - SequenceMachineLib.triUpLeft a n) * (SequenceMachineLib.triLeft a n - (SequenceMachineLib.triCol n : ℤ))

end

end A128219.P16575708289133655782

namespace A128219

/-- `2-(1-T(n-1,k-1))*(T(n,k-1)-col(n))` -/
def P16575708289133655782.Spec : Prop :=
  ∀ n, P16575708289133655782.a n = A128219 (n + 1)

end A128219

/-! ## A128219.P6593468500409999857

`T(n-1,k)-(1-T(n-1,k+1))*(T(n-2,k-1)-T(n,k-1))` with `a(0)=1, a(1)=2`
-/

namespace A128219.P6593468500409999857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  SequenceMachineLib.triUp a n - (1 - SequenceMachineLib.triUpRight a n) * (SequenceMachineLib.triUp2Left a n - SequenceMachineLib.triLeft a n)

end

end A128219.P6593468500409999857

namespace A128219

/-- `T(n-1,k)-(1-T(n-1,k+1))*(T(n-2,k-1)-T(n,k-1))` -/
def P6593468500409999857.Spec : Prop :=
  ∀ n, P6593468500409999857.a n = A128219 (n + 1)

end A128219

/-! ## A128219.P12624498076625108539

`T(n-1,k)-(1-T(n-2,k))*(T(n-2,k-1)-T(n,k-1))` with `a(0)=1, a(1)=2`
-/

namespace A128219.P12624498076625108539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  SequenceMachineLib.triUp a n - (1 - SequenceMachineLib.triUp2 a n) * (SequenceMachineLib.triUp2Left a n - SequenceMachineLib.triLeft a n)

end

end A128219.P12624498076625108539

namespace A128219

/-- `T(n-1,k)-(1-T(n-2,k))*(T(n-2,k-1)-T(n,k-1))` -/
def P12624498076625108539.Spec : Prop :=
  ∀ n, P12624498076625108539.a n = A128219 (n + 1)

end A128219

/-! ## A128219.P5284577219136508993

`col(n)+2-T(T(n-1,k+1), 2*T(n-1,k))` with `a(0)=1`
-/

namespace A128219.P5284577219136508993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (SequenceMachineLib.triCol n + 2 : ℤ) - SequenceMachineLib.triAt a (SequenceMachineLib.triUpRight a n) (2 * SequenceMachineLib.triUp a n)

end

end A128219.P5284577219136508993

namespace A128219

/-- `col(n)+2-T(T(n-1,k+1), 2*T(n-1,k))` -/
def P5284577219136508993.Spec : Prop :=
  ∀ n, P5284577219136508993.a n = A128219 (n + 1)

end A128219

/-! ## A128219.P17424848205468722772

`col(n)+2-T(T(n-1,k), 2*T(n-1,k))` with `a(0)=1`
-/

namespace A128219.P17424848205468722772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (SequenceMachineLib.triCol n + 2 : ℤ) - SequenceMachineLib.triAt a (SequenceMachineLib.triUp a n) (2 * SequenceMachineLib.triUp a n)

end

end A128219.P17424848205468722772

namespace A128219

/-- `col(n)+2-T(T(n-1,k), 2*T(n-1,k))` -/
def P17424848205468722772.Spec : Prop :=
  ∀ n, P17424848205468722772.a n = A128219 (n + 1)

end A128219

/-! ## A128219.P8754774012051930405

`col(n)+2-T(T(n-1,k+1), T(n-1,k)+T(n-1,k+1))` with `a(0)=1`
-/

namespace A128219.P8754774012051930405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (SequenceMachineLib.triCol n + 2 : ℤ) - SequenceMachineLib.triAt a (SequenceMachineLib.triUpRight a n) (SequenceMachineLib.triUp a n + SequenceMachineLib.triUpRight a n)

end

end A128219.P8754774012051930405

namespace A128219

/-- `col(n)+2-T(T(n-1,k+1), T(n-1,k)+T(n-1,k+1))` -/
def P8754774012051930405.Spec : Prop :=
  ∀ n, P8754774012051930405.a n = A128219 (n + 1)

end A128219

/-! ## A128219.P6973544964838789289

`T(T(n-1,k-1), T(n-1,k-1)+col(n))+T(n-1,k-1)+1` with `a(0)=1`
-/

namespace A128219.P6973544964838789289
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  SequenceMachineLib.triAt a ((SequenceMachineLib.triUpLeft a n : ℕ) : ℤ) (SequenceMachineLib.triUpLeft a n + SequenceMachineLib.triCol n : ℤ) + SequenceMachineLib.triUpLeft a n + 1

end

end A128219.P6973544964838789289

namespace A128219

/-- `T(T(n-1,k-1), T(n-1,k-1)+col(n))+T(n-1,k-1)+1` -/
def P6973544964838789289.Spec : Prop :=
  ∀ n, (P6973544964838789289.a n : ℤ) = A128219 (n + 1)

end A128219

/-! ## A128219.P9537251153506585924

`col(n)+C(2, C(col(n), row(n))+1)`
-/

namespace A128219.P9537251153506585924
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.triCol n + Nat.choose 2 (Nat.choose (SequenceMachineLib.triCol n) (SequenceMachineLib.triRow n) + 1)

end

end A128219.P9537251153506585924

namespace A128219

/-- `col(n)+C(2, C(col(n), row(n))+1)` -/
def P9537251153506585924.Spec : Prop :=
  ∀ n, (P9537251153506585924.a n : ℤ) = A128219 (n + 1)

end A128219

/-! ## A128219.P3656700214812813264

`T(n-1,k)-(col(n)-T(n,k-1))*(T(n,k-1)-T(n-2,k-1))` with `a(0)=1, a(1)=2`
-/

namespace A128219.P3656700214812813264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  SequenceMachineLib.triUp a n - ((SequenceMachineLib.triCol n : ℤ) - SequenceMachineLib.triLeft a n) * (SequenceMachineLib.triLeft a n - SequenceMachineLib.triUp2Left a n)

end

end A128219.P3656700214812813264

namespace A128219

/-- `T(n-1,k)-(col(n)-T(n,k-1))*(T(n,k-1)-T(n-2,k-1))` -/
def P3656700214812813264.Spec : Prop :=
  ∀ n, P3656700214812813264.a n = A128219 (n + 1)

end A128219

/-! ## A128219.P9246055310831346258

`T(T(1, T(n-1,k+1)+2), T(n-1,k-1))+T(n-1,k-1)+1` with `a(0)=1`
-/

namespace A128219.P9246055310831346258
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  SequenceMachineLib.triAt a ((SequenceMachineLib.triAt a 1 (SequenceMachineLib.triUpRight a n + 2 : ℤ) : ℕ) : ℤ) ((SequenceMachineLib.triUpLeft a n : ℕ) : ℤ) + SequenceMachineLib.triUpLeft a n + 1

end

end A128219.P9246055310831346258

namespace A128219

/-- `T(T(1, T(n-1,k+1)+2), T(n-1,k-1))+T(n-1,k-1)+1` -/
def P9246055310831346258.Spec : Prop :=
  ∀ n, (P9246055310831346258.a n : ℤ) = A128219 (n + 1)

end A128219

/-! ## A128219.P13669226504911000860

`T(T(1, T(n-1,k)+2), T(n-1,k-1))+T(n-1,k-1)+1` with `a(0)=1`
-/

namespace A128219.P13669226504911000860
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  SequenceMachineLib.triAt a ((SequenceMachineLib.triAt a 1 (SequenceMachineLib.triUp a n + 2 : ℤ) : ℕ) : ℤ) ((SequenceMachineLib.triUpLeft a n : ℕ) : ℤ) + SequenceMachineLib.triUpLeft a n + 1

end

end A128219.P13669226504911000860

namespace A128219

/-- `T(T(1, T(n-1,k)+2), T(n-1,k-1))+T(n-1,k-1)+1` -/
def P13669226504911000860.Spec : Prop :=
  ∀ n, (P13669226504911000860.a n : ℤ) = A128219 (n + 1)

end A128219

/-!
# A128220: Triangle, A127701 * A000012.

The programs for A128220, the canonical program `A128220.P8404700930990336866` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A128220 has offset 1).

The definition of A128220 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 153 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A128220.P11315492803284182708

`A200272(A057555(2*n+3)+A038722(n+1))`
-/

namespace A128220.P11315492803284182708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200272 (A057555 (2 * n + 3) + A038722 (n + 1)).toNat

end

end A128220.P11315492803284182708

namespace A128220

/-- `A200272(A057555(2*n+3)+A038722(n+1))` -/
def P11315492803284182708.Spec : Prop :=
  ∀ n, P11315492803284182708.a n = A128220 (n + 1)

end A128220

/-! ## A128220.P3024051810222790588

`A003057(n+2)-A010051(A276941(n+2))`
-/

namespace A128220.P3024051810222790588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003057 (n + 2) - A010051 (A276941 (n + 2)).toNat

end

end A128220.P3024051810222790588

namespace A128220

/-- `A003057(n+2)-A010051(A276941(n+2))` -/
def P3024051810222790588.Spec : Prop :=
  ∀ n, P3024051810222790588.a n = A128220 (n + 1)

end A128220

/-! ## A128220.P8252613490046781460

`A003056(n)+A020639(A124927(n+1))`
-/

namespace A128220.P8252613490046781460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 n + A020639 (A124927 (n + 1)).toNat

end

end A128220.P8252613490046781460

namespace A128220

/-- `A003056(n)+A020639(A124927(n+1))` -/
def P8252613490046781460.Spec : Prop :=
  ∀ n, P8252613490046781460.a n = A128220 (n + 1)

end A128220

/-! ## A128220.P3178224018016034266

`A003056(n)+A020639(A131112(n))`
-/

namespace A128220.P3178224018016034266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 n + A020639 (A131112 n).toNat

end

end A128220.P3178224018016034266

namespace A128220

/-- `A003056(n)+A020639(A131112(n))` -/
def P3178224018016034266.Spec : Prop :=
  ∀ n, P3178224018016034266.a n = A128220 (n + 1)

end A128220

/-! ## A128220.P12531253923910369125

`A002024(n+1)-A057428(A104244(n+1))`
-/

namespace A128220.P12531253923910369125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (n + 1) - A057428 (A104244 (n + 1)).toNat

end

end A128220.P12531253923910369125

namespace A128220

/-- `A002024(n+1)-A057428(A104244(n+1))` -/
def P12531253923910369125.Spec : Prop :=
  ∀ n, P12531253923910369125.a n = A128220 (n + 1)

end A128220

/-! ## A128220.P9881090342353747224

`∑{e}[2^(comp[∑[n]]-n), #-A010054(n+1)]`
-/

namespace A128220.P9881090342353747224
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n : ℤ) - (n : ℤ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (SequenceMachineLib.roundAway (f1 n)).natAbs, ((Nat.factorization (SequenceMachineLib.roundAway (f1 n)).natAbs p : ℤ) - A010054 (n + 1))

end

end A128220.P9881090342353747224

namespace A128220

/-- `∑{e}[2^(comp[∑[n]]-n), #-A010054(n+1)]` -/
def P9881090342353747224.Spec : Prop :=
  ∀ n, P9881090342353747224.a n = A128220 (n + 1)

end A128220

/-! ## A128220.P7162989403639216782

`A072649(A193999(n+1))`
-/

namespace A128220.P7162989403639216782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072649 (A193999 (n + 1)).toNat

end

end A128220.P7162989403639216782

namespace A128220

/-- `A072649(A193999(n+1))` -/
def P7162989403639216782.Spec : Prop :=
  ∀ n, P7162989403639216782.a n = A128220 (n + 1)

end A128220

/-! ## A128220.P8404700930990336866

`A003056(n)+A006530(A130321(n))`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A128220

/-- `A003056(n)+A006530(A130321(n))` -/
def P8404700930990336866.Spec : Prop :=
  ∀ n, P8404700930990336866.a n = A128220 (n + 1)

theorem P8404700930990336866.correct : P8404700930990336866.Spec := by
  intro n
  simp only [A128220, Nat.add_sub_cancel]

end A128220

/-! ## A128220.P10873157962457136708

`∑[A010054(n)]+A001221(A130321(n))`
-/

namespace A128220.P10873157962457136708
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + A001221 (A130321 n).toNat

end

end A128220.P10873157962457136708

namespace A128220

/-- `∑[A010054(n)]+A001221(A130321(n))` -/
def P10873157962457136708.Spec : Prop :=
  ∀ n, P10873157962457136708.a n = A128220 (n + 1)

end A128220

/-! ## A128220.P17890521656316221192

`A002024(n+1)+A001221(A130321(n))`
-/

namespace A128220.P17890521656316221192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (n + 1) + A001221 (A130321 n).toNat

end

end A128220.P17890521656316221192

namespace A128220

/-- `A002024(n+1)+A001221(A130321(n))` -/
def P17890521656316221192.Spec : Prop :=
  ∀ n, P17890521656316221192.a n = A128220 (n + 1)

end A128220

/-! ## A128220.P6284612810539059254

`A002024(n+1)+A001221(sqrt(A262616(n)))`
-/

namespace A128220.P6284612810539059254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (n + 1) + A001221 (SequenceMachineLib.roundAway (Real.sqrt (A262616 n : ℝ))).toNat

end

end A128220.P6284612810539059254

namespace A128220

/-- `A002024(n+1)+A001221(sqrt(A262616(n)))` -/
def P6284612810539059254.Spec : Prop :=
  ∀ n, P6284612810539059254.a n = A128220 (n + 1)

end A128220

/-! ## A128220.P13061541421782221099

`A157928(A135278(n))+A002024(n+1)`
-/

namespace A128220.P13061541421782221099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157928 (A135278 n).toNat + A002024 (n + 1)

end

end A128220.P13061541421782221099

namespace A128220

/-- `A157928(A135278(n))+A002024(n+1)` -/
def P13061541421782221099.Spec : Prop :=
  ∀ n, P13061541421782221099.a n = A128220 (n + 1)

end A128220

/-! ## A128220.P17451195499644443411

`A003057(n+2)-A000007(A173787(n))`
-/

namespace A128220.P17451195499644443411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003057 (n + 2) - A000007 (A173787 n).toNat

end

end A128220.P17451195499644443411

namespace A128220

/-- `A003057(n+2)-A000007(A173787(n))` -/
def P17451195499644443411.Spec : Prop :=
  ∀ n, P17451195499644443411.a n = A128220 (n + 1)

end A128220

/-! ## A128220.P4591904341270957710

`A007456(A099627(n+1))`
-/

namespace A128220.P4591904341270957710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007456 (A099627 (n + 1)).toNat

end

end A128220.P4591904341270957710

namespace A128220

/-- `A007456(A099627(n+1))` -/
def P4591904341270957710.Spec : Prop :=
  ∀ n, P4591904341270957710.a n = A128220 (n + 1)

end A128220

/-!
# A128221: A128174 * A127701.

The programs for A128221, the canonical program `A128221.P5768733803824572043` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A128221 has offset 1).

The definition of A128221 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A128221.P12816404074104558635

`(T(n-2,k-1)+1-T(n-1,k))*T(n-1,k-1)+1` with `a(0)=1`
-/

namespace A128221.P12816404074104558635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (SequenceMachineLib.triUp2Left a n + 1 - SequenceMachineLib.triUp a n) * SequenceMachineLib.triUpLeft a n + 1

end

end A128221.P12816404074104558635

namespace A128221

/-- `(T(n-2,k-1)+1-T(n-1,k))*T(n-1,k-1)+1` -/
def P12816404074104558635.Spec : Prop :=
  ∀ n, P12816404074104558635.a n = A128221 (n + 1)

end A128221

/-! ## A128221.P8565322506729561045

`T(T(n-1,k-1), (1-T(n-1,k))*T(n-1,k))+T(n-1,k-1)` with `a(0)=1`
-/

namespace A128221.P8565322506729561045
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  SequenceMachineLib.triAt a ((SequenceMachineLib.triUpLeft a n : ℕ) : ℤ) ((1 - ((SequenceMachineLib.triUp a n : ℕ) : ℤ)) * ((SequenceMachineLib.triUp a n : ℕ) : ℤ)) + SequenceMachineLib.triUpLeft a n

end

end A128221.P8565322506729561045

namespace A128221

/-- `T(T(n-1,k-1), (1-T(n-1,k))*T(n-1,k))+T(n-1,k-1)` -/
def P8565322506729561045.Spec : Prop :=
  ∀ n, (P8565322506729561045.a n : ℤ) = A128221 (n + 1)

end A128221

/-! ## A128221.P3673379174470462302

`(T(n-2,k-1)+1-T(n-1,k))*col(n)+1` with `a(0)=1`
-/

namespace A128221.P3673379174470462302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (SequenceMachineLib.triUp2Left a n + 1 - SequenceMachineLib.triUp a n) * (SequenceMachineLib.triCol n : ℤ) + 1

end

end A128221.P3673379174470462302

namespace A128221

/-- `(T(n-2,k-1)+1-T(n-1,k))*col(n)+1` -/
def P3673379174470462302.Spec : Prop :=
  ∀ n, P3673379174470462302.a n = A128221 (n + 1)

end A128221

/-! ## A128221.P14721834521800916486

`T(2, 1-T(n-1,k))+T(n-1,k-1)` with `a(0)=1, a(1)=1, a(2)=2, a(3)=1`
-/

namespace A128221.P14721834521800916486
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 2, 1] fun n a =>
  SequenceMachineLib.triAt a 2 (1 - ((SequenceMachineLib.triUp a n : ℕ) : ℤ)) + SequenceMachineLib.triUpLeft a n

end

end A128221.P14721834521800916486

namespace A128221

/-- `T(2, 1-T(n-1,k))+T(n-1,k-1)` -/
def P14721834521800916486.Spec : Prop :=
  ∀ n, (P14721834521800916486.a n : ℤ) = A128221 (n + 1)

end A128221

/-! ## A128221.P17385418755715639917

`T(n-2,k-1)+col(n)+2-(T(n,k-1)+T(n-1,k))` with `a(0)=1`
-/

namespace A128221.P17385418755715639917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  SequenceMachineLib.triUp2Left a n + (SequenceMachineLib.triCol n : ℤ) + 2 - (SequenceMachineLib.triLeft a n + SequenceMachineLib.triUp a n)

end

end A128221.P17385418755715639917

namespace A128221

/-- `T(n-2,k-1)+col(n)+2-(T(n,k-1)+T(n-1,k))` -/
def P17385418755715639917.Spec : Prop :=
  ∀ n, P17385418755715639917.a n = A128221 (n + 1)

end A128221

/-! ## A128221.P10395841913670780561

`T(2, T(n-1,k)*T(n-1,k))+T(n-1,k-1)` with `a(0)=1, a(1)=1, a(2)=2, a(3)=1`
-/

namespace A128221.P10395841913670780561
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 2, 1] fun n a =>
  SequenceMachineLib.triAt a 2 (SequenceMachineLib.triUp a n * SequenceMachineLib.triUp a n : ℤ) + SequenceMachineLib.triUpLeft a n

end

end A128221.P10395841913670780561

namespace A128221

/-- `T(2, T(n-1,k)*T(n-1,k))+T(n-1,k-1)` -/
def P10395841913670780561.Spec : Prop :=
  ∀ n, (P10395841913670780561.a n : ℤ) = A128221 (n + 1)

end A128221

/-! ## A128221.P8267466345537702274

`col(n)+1-T(T(n-1,k), T(n-1,k)-2)` with `a(0)=1`
-/

namespace A128221.P8267466345537702274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (SequenceMachineLib.triCol n + 1 : ℤ) - SequenceMachineLib.triAt a (SequenceMachineLib.triUp a n) (SequenceMachineLib.triUp a n - 2)

end

end A128221.P8267466345537702274

namespace A128221

/-- `col(n)+1-T(T(n-1,k), T(n-1,k)-2)` -/
def P8267466345537702274.Spec : Prop :=
  ∀ n, P8267466345537702274.a n = A128221 (n + 1)

end A128221

/-! ## A128221.P12373341117390952669

`T(T(1, T(n-1,k)), T(n-1,k))+T(n-1,k-1)` with `a(0)=1, a(1)=1, a(2)=2, a(3)=1`
-/

namespace A128221.P12373341117390952669
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 2, 1] fun n a =>
  SequenceMachineLib.triAt a ((SequenceMachineLib.triAt a 1 ((SequenceMachineLib.triUp a n : ℕ) : ℤ) : ℕ) : ℤ) ((SequenceMachineLib.triUp a n : ℕ) : ℤ) + SequenceMachineLib.triUpLeft a n

end

end A128221.P12373341117390952669

namespace A128221

/-- `T(T(1, T(n-1,k)), T(n-1,k))+T(n-1,k-1)` -/
def P12373341117390952669.Spec : Prop :=
  ∀ n, (P12373341117390952669.a n : ℤ) = A128221 (n + 1)

end A128221

/-! ## A128221.P3845667909577721446

`1-((T(n-1,k)-T(n-2,k-1))*T(n-1,k-1)-1)*T(n-1,k-1)` with `a(0)=1`
-/

namespace A128221.P3845667909577721446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  1 - ((SequenceMachineLib.triUp a n - SequenceMachineLib.triUp2Left a n) * SequenceMachineLib.triUpLeft a n - 1) * SequenceMachineLib.triUpLeft a n

end

end A128221.P3845667909577721446

namespace A128221

/-- `1-((T(n-1,k)-T(n-2,k-1))*T(n-1,k-1)-1)*T(n-1,k-1)` -/
def P3845667909577721446.Spec : Prop :=
  ∀ n, P3845667909577721446.a n = A128221 (n + 1)

end A128221

/-! ## A128221.P13581998095360314402

`(T(n,k-1)+T(n-1,k+1)-(T(n-2,k-1)+T(n-2,k)))*T(n-1,k-1)+1` with `a(0)=1`
-/

namespace A128221.P13581998095360314402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (SequenceMachineLib.triLeft a n + SequenceMachineLib.triUpRight a n - (SequenceMachineLib.triUp2Left a n + SequenceMachineLib.triUp2 a n)) * SequenceMachineLib.triUpLeft a n + 1

end

end A128221.P13581998095360314402

namespace A128221

/-- `(T(n,k-1)+T(n-1,k+1)-(T(n-2,k-1)+T(n-2,k)))*T(n-1,k-1)+1` -/
def P13581998095360314402.Spec : Prop :=
  ∀ n, P13581998095360314402.a n = A128221 (n + 1)

end A128221

/-! ## A128221.P743348425873724182

`col(n)+(T(n-1,k+1)-(T(n-2,k)+1))*T(n-2,k-1)+1` with `a(0)=1`
-/

namespace A128221.P743348425873724182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (SequenceMachineLib.triCol n : ℤ) + (SequenceMachineLib.triUpRight a n - (SequenceMachineLib.triUp2 a n + 1)) * SequenceMachineLib.triUp2Left a n + 1

end

end A128221.P743348425873724182

namespace A128221

/-- `col(n)+(T(n-1,k+1)-(T(n-2,k)+1))*T(n-2,k-1)+1` -/
def P743348425873724182.Spec : Prop :=
  ∀ n, P743348425873724182.a n = A128221 (n + 1)

end A128221

/-! ## A128221.P7197422376394456722

`1-(T(col(n), T(n-1,k)-2)-1)*T(n-1,k-1)` with `a(0)=1`
-/

namespace A128221.P7197422376394456722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  1 - (SequenceMachineLib.triAt a (SequenceMachineLib.triCol n : ℤ) (SequenceMachineLib.triUp a n - 2) - 1) * SequenceMachineLib.triUpLeft a n

end

end A128221.P7197422376394456722

namespace A128221

/-- `1-(T(col(n), T(n-1,k)-2)-1)*T(n-1,k-1)` -/
def P7197422376394456722.Spec : Prop :=
  ∀ n, P7197422376394456722.a n = A128221 (n + 1)

end A128221

/-! ## A128221.P16762430792773307357

`1-((T(n-1,k)-col(n))*T(n,k-1)-T(n-2,k-1))*T(n,k-1)` with `a(0)=1`
-/

namespace A128221.P16762430792773307357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  1 - ((SequenceMachineLib.triUp a n - (SequenceMachineLib.triCol n : ℤ)) * SequenceMachineLib.triLeft a n - SequenceMachineLib.triUp2Left a n) * SequenceMachineLib.triLeft a n

end

end A128221.P16762430792773307357

namespace A128221

/-- `1-((T(n-1,k)-col(n))*T(n,k-1)-T(n-2,k-1))*T(n,k-1)` -/
def P16762430792773307357.Spec : Prop :=
  ∀ n, P16762430792773307357.a n = A128221 (n + 1)

end A128221

/-! ## A128221.P12210719902900703544

`1-(T(col(n), T(n-1,k)-2)-1)*col(n)` with `a(0)=1`
-/

namespace A128221.P12210719902900703544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  1 - (SequenceMachineLib.triAt a (SequenceMachineLib.triCol n : ℤ) (SequenceMachineLib.triUp a n - 2) - 1) * (SequenceMachineLib.triCol n : ℤ)

end

end A128221.P12210719902900703544

namespace A128221

/-- `1-(T(col(n), T(n-1,k)-2)-1)*col(n)` -/
def P12210719902900703544.Spec : Prop :=
  ∀ n, P12210719902900703544.a n = A128221 (n + 1)

end A128221

/-! ## A128221.P6129642236986080557

`col(n)*T(col(n), T(n-1,k)*T(col(n), T(n-1,k+1)))+1` with `a(0)=1`
-/

namespace A128221.P6129642236986080557
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  SequenceMachineLib.triCol n * SequenceMachineLib.triAt a (SequenceMachineLib.triCol n : ℤ) (SequenceMachineLib.triUp a n * SequenceMachineLib.triAt a (SequenceMachineLib.triCol n : ℤ) ((SequenceMachineLib.triUpRight a n : ℕ) : ℤ) : ℤ) + 1

end

end A128221.P6129642236986080557

namespace A128221

/-- `col(n)*T(col(n), T(n-1,k)*T(col(n), T(n-1,k+1)))+1` -/
def P6129642236986080557.Spec : Prop :=
  ∀ n, (P6129642236986080557.a n : ℤ) = A128221 (n + 1)

end A128221

/-! ## A128221.P3317764785219472431

`A002260(n+1)^(comp[∑[4*n]]%2)`
-/

namespace A128221.P3317764785219472431
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1) ^ (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n % 2)

end

end A128221.P3317764785219472431

namespace A128221

/-- `A002260(n+1)^(comp[∑[4*n]]%2)` -/
def P3317764785219472431.Spec : Prop :=
  ∀ n, P3317764785219472431.a n = A128221 (n + 1)

end A128221

/-! ## A128221.P5768733803824572043

`A028310(A128179(n+1))`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A128221

/-- `A028310(A128179(n+1))` -/
def P5768733803824572043.Spec : Prop :=
  ∀ n, P5768733803824572043.a n = A128221 (n + 1)

theorem P5768733803824572043.correct : P5768733803824572043.Spec := by
  intro n
  simp only [A128221, Nat.add_sub_cancel]

end A128221

/-! ## A128221.P4072180103672940289

`A134199(lcm(n, A369736(n)))`
-/

namespace A128221.P4072180103672940289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134199 (Int.lcm (n : ℤ) (A369736 n))

end

end A128221.P4072180103672940289

namespace A128221

/-- `A134199(lcm(n, A369736(n)))` -/
def P4072180103672940289.Spec : Prop :=
  ∀ n, P4072180103672940289.a n = A128221 (n + 1)

end A128221

/-! ## A128221.P9810165838871073209

`A134199(n*A369736(n)²)`
-/

namespace A128221.P9810165838871073209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134199 ((n : ℤ) * A369736 n ^ 2).toNat

end

end A128221.P9810165838871073209

namespace A128221

/-- `A134199(n*A369736(n)²)` -/
def P9810165838871073209.Spec : Prop :=
  ∀ n, P9810165838871073209.a n = A128221 (n + 1)

end A128221

/-! ## A128221.P15332043931245647186

`A134199(n*A128174(n+1))`
-/

namespace A128221.P15332043931245647186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134199 ((n : ℤ) * A128174 (n + 1)).toNat

end

end A128221.P15332043931245647186

namespace A128221

/-- `A134199(n*A128174(n+1))` -/
def P15332043931245647186.Spec : Prop :=
  ∀ n, P15332043931245647186.a n = A128221 (n + 1)

end A128221

/-!
# A128222: A127701 * A128174.

The programs for A128222, the canonical program `A128222.P7013101155895065222` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A128222 has offset 1).

The definition of A128222 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A128222.P18025372685229265687

`T(n-1,k+1)+row(n)+1-(T(n-2,k)+T(n-1,k))` with `a(0)=1`
-/

namespace A128222.P18025372685229265687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  SequenceMachineLib.triUpRight a n + (SequenceMachineLib.triRow n : ℤ) + 1 - (SequenceMachineLib.triUp2 a n + SequenceMachineLib.triUp a n)

end

end A128222.P18025372685229265687

namespace A128222

/-- `T(n-1,k+1)+row(n)+1-(T(n-2,k)+T(n-1,k))` -/
def P18025372685229265687.Spec : Prop :=
  ∀ n, P18025372685229265687.a n = A128222 (n + 1)

end A128222

/-! ## A128222.P14489419269677127774

`gcd(T(n-1,k+1), T(n-1,k-1))+comp[∑[4*n]]%2` with `a(0)=1, a(1)=1`
-/

namespace A128222.P14489419269677127774
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n a =>
  Nat.gcd (SequenceMachineLib.triUpRight a n) (SequenceMachineLib.triUpLeft a n) + SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n % 2

end

end A128222.P14489419269677127774

namespace A128222

/-- `gcd(T(n-1,k+1), T(n-1,k-1))+comp[∑[4*n]]%2` -/
def P14489419269677127774.Spec : Prop :=
  ∀ n, (P14489419269677127774.a n : ℤ) = A128222 (n + 1)

end A128222

/-! ## A128222.P3654793310659736636

`∑[char[∑[n]]]^(2-gcd(2, comp[∑[4*n]]))`
-/

namespace A128222.P3654793310659736636
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) ^ (2 - (Nat.gcd 2 (SequenceMachineLib.nth (fun x => ∀ j, f4 j ≠ x) n) : ℤ) : ℤ)

end

end A128222.P3654793310659736636

namespace A128222

/-- `∑[char[∑[n]]]^(2-gcd(2, comp[∑[4*n]]))` -/
def P3654793310659736636.Spec : Prop :=
  ∀ n, P3654793310659736636.a n = (A128222 (n + 1) : ℚ)

end A128222

/-! ## A128222.P9228516421758908384

`∑[char[∑[n]]]^(comp[2*(n²+n)]%2)`
-/

namespace A128222.P9228516421758908384
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n ^ 2 + n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ (SequenceMachineLib.nth (fun x => ∀ j, f4 j ≠ x) n % 2)

end

end A128222.P9228516421758908384

namespace A128222

/-- `∑[char[∑[n]]]^(comp[2*(n²+n)]%2)` -/
def P9228516421758908384.Spec : Prop :=
  ∀ n, (P9228516421758908384.a n : ℤ) = A128222 (n + 1)

end A128222

/-! ## A128222.P10174206126515336002

`row(n)+1-T(T(n-1,k)-1, row(n)-1)` with `a(0)=1`
-/

namespace A128222.P10174206126515336002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (SequenceMachineLib.triRow n + 1 : ℤ) - SequenceMachineLib.triAt a (SequenceMachineLib.triUp a n - 1) ((SequenceMachineLib.triRow n : ℤ) - 1)

end

end A128222.P10174206126515336002

namespace A128222

/-- `row(n)+1-T(T(n-1,k)-1, row(n)-1)` -/
def P10174206126515336002.Spec : Prop :=
  ∀ n, P10174206126515336002.a n = A128222 (n + 1)

end A128222

/-! ## A128222.P18160446257313125748

`1-(T(T(n-1,k+1), T(n-1,k)-row(n))-1)*row(n)` with `a(0)=1`
-/

namespace A128222.P18160446257313125748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  1 - (SequenceMachineLib.triAt a (SequenceMachineLib.triUpRight a n) (SequenceMachineLib.triUp a n - (SequenceMachineLib.triRow n : ℤ)) - 1) * (SequenceMachineLib.triRow n : ℤ)

end

end A128222.P18160446257313125748

namespace A128222

/-- `1-(T(T(n-1,k+1), T(n-1,k)-row(n))-1)*row(n)` -/
def P18160446257313125748.Spec : Prop :=
  ∀ n, P18160446257313125748.a n = A128222 (n + 1)

end A128222

/-! ## A128222.P5748991240257116382

`1-(T(T(n-1,k-1), T(n-1,k)-row(n))-1)*row(n)` with `a(0)=1`
-/

namespace A128222.P5748991240257116382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  1 - (SequenceMachineLib.triAt a (SequenceMachineLib.triUpLeft a n) (SequenceMachineLib.triUp a n - (SequenceMachineLib.triRow n : ℤ)) - 1) * (SequenceMachineLib.triRow n : ℤ)

end

end A128222.P5748991240257116382

namespace A128222

/-- `1-(T(T(n-1,k-1), T(n-1,k)-row(n))-1)*row(n)` -/
def P5748991240257116382.Spec : Prop :=
  ∀ n, P5748991240257116382.a n = A128222 (n + 1)

end A128222

/-! ## A128222.P2101889491900794252

`ceil(∑[char[∑[n]]]^(and(2, comp[∑[n]]+n)-1))`
-/

namespace A128222.P2101889491900794252
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) ^ ((Nat.land 2 (SequenceMachineLib.nth (fun x => ∀ j, f4 j ≠ x) n + n) : ℤ) - 1 : ℤ)⌉

end

end A128222.P2101889491900794252

namespace A128222

/-- `ceil(∑[char[∑[n]]]^(and(2, comp[∑[n]]+n)-1))` -/
def P2101889491900794252.Spec : Prop :=
  ∀ n, P2101889491900794252.a n = A128222 (n + 1)

end A128222

/-! ## A128222.P11374199982172435554

`ceil(root(∑[char[∑[n]]], and(2, comp[∑[n]]+n)-1))`
-/

namespace A128222.P11374199982172435554
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℝ) ^ (1 / ((Nat.land 2 (SequenceMachineLib.nth (fun x => ∀ j, f4 j ≠ x) n + n) : ℤ) - 1 : ℝ))⌉

end

end A128222.P11374199982172435554

namespace A128222

/-- `ceil(root(∑[char[∑[n]]], and(2, comp[∑[n]]+n)-1))` -/
def P11374199982172435554.Spec : Prop :=
  ∀ n, P11374199982172435554.a n = A128222 (n + 1)

end A128222

/-! ## A128222.P10618409989068777367

`1/2*(2+(1+(-1)^(row(n)-col(n)))*row(n))`
-/

namespace A128222.P10618409989068777367
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 2 * (2 + (1 + (-1 : ℚ) ^ ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ) : ℤ)) * (SequenceMachineLib.triRow n : ℚ))

end

end A128222.P10618409989068777367

namespace A128222

/-- `1/2*(2+(1+(-1)^(row(n)-col(n)))*row(n))` -/
def P10618409989068777367.Spec : Prop :=
  ∀ n, P10618409989068777367.a n = (A128222 (n + 1) : ℚ)

end A128222

/-! ## A128222.P3990666976481848865

`A007318(C(comp[∑[n]]-n, 2)+and(2, comp[∑[n]]+n)-1)`
-/

namespace A128222.P3990666976481848865
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) + ((Nat.land 2 (SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ x) n + n) : ℤ) - 1)).toNat

end

end A128222.P3990666976481848865

namespace A128222

/-- `A007318(C(comp[∑[n]]-n, 2)+and(2, comp[∑[n]]+n)-1)` -/
def P3990666976481848865.Spec : Prop :=
  ∀ n, P3990666976481848865.a n = A128222 (n + 1)

end A128222

/-! ## A128222.P16075685162404398800

`A028310(A128621(n+1))`
-/

namespace A128222.P16075685162404398800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A128621 (n + 1)).toNat

end

end A128222.P16075685162404398800

namespace A128222

/-- `A028310(A128621(n+1))` -/
def P16075685162404398800.Spec : Prop :=
  ∀ n, P16075685162404398800.a n = A128222 (n + 1)

end A128222

/-! ## A128222.P7013101155895065222

`A003056(n)*A128174(n+1)+1`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A128222

/-- `A003056(n)*A128174(n+1)+1` -/
def P7013101155895065222.Spec : Prop :=
  ∀ n, P7013101155895065222.a n = A128222 (n + 1)

theorem P7013101155895065222.correct : P7013101155895065222.Spec := by
  intro n
  simp only [A128222, Nat.add_sub_cancel]

end A128222

/-! ## A128222.P14363295272728892330

`A128621(n+1)+1-A128174(n+1)`
-/

namespace A128222.P14363295272728892330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128621 (n + 1) + (1 - A128174 (n + 1))

end

end A128222.P14363295272728892330

namespace A128222

/-- `A128621(n+1)+1-A128174(n+1)` -/
def P14363295272728892330.Spec : Prop :=
  ∀ n, P14363295272728892330.a n = A128222 (n + 1)

end A128222

/-! ## A128222.P4925293401144826199

`gcd(A002024(n+1), A128622(n+1))`
-/

namespace A128222.P4925293401144826199
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002024 (n + 1)) (A128622 (n + 1))

end

end A128222.P4925293401144826199

namespace A128222

/-- `gcd(A002024(n+1), A128622(n+1))` -/
def P4925293401144826199.Spec : Prop :=
  ∀ n, (P4925293401144826199.a n : ℤ) = A128222 (n + 1)

end A128222

/-! ## A128222.P5389966677982968202

`A095896(n+1)%A003057(n+2)`
-/

namespace A128222.P5389966677982968202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A095896 (n + 1)) (A003057 (n + 2))

end

end A128222.P5389966677982968202

namespace A128222

/-- `A095896(n+1)%A003057(n+2)` -/
def P5389966677982968202.Spec : Prop :=
  ∀ n, P5389966677982968202.a n = A128222 (n + 1)

end A128222

/-! ## A128222.P1226913469953815285

`∑{e}[A134352(n), #]+1`
-/

namespace A128222.P1226913469953815285
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134352 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p + 1

end

end A128222.P1226913469953815285

namespace A128222

/-- `∑{e}[A134352(n), #]+1` -/
def P1226913469953815285.Spec : Prop :=
  ∀ n, (P1226913469953815285.a n : ℤ) = A128222 (n + 1)

end A128222

/-! ## A128222.P6381361312280478136

`∑{d}[A134352(n), A001221(#)]+1`
-/

namespace A128222.P6381361312280478136
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134352 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A001221 d + 1

end

end A128222.P6381361312280478136

namespace A128222

/-- `∑{d}[A134352(n), A001221(#)]+1` -/
def P6381361312280478136.Spec : Prop :=
  ∀ n, P6381361312280478136.a n = A128222 (n + 1)

end A128222

/-! ## A128222.P5141453814088018412

`A003558(A134352(n))`
-/

namespace A128222.P5141453814088018412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003558 (A134352 n).toNat

end

end A128222.P5141453814088018412

namespace A128222

/-- `A003558(A134352(n))` -/
def P5141453814088018412.Spec : Prop :=
  ∀ n, P5141453814088018412.a n = A128222 (n + 1)

end A128222

/-!
# A128223: a(n) = if n mod 2 = 0 then n*(n+1)/2 otherwise (n+1)^2/2-1.

The programs for A128223, the canonical program `A128223.P18118016430647137938` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A128223 has offset 0).

The definition of A128223 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A128223.P5609826722856270393

`ogf((x+2x^2+2x^3-x^4)/(1-x-2x^2+2x^3+x^4-x^5))`
-/

namespace A128223.P5609826722856270393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, 2, 2, -1] [1, -1, -2, 2, 1, -1] n

end

end A128223.P5609826722856270393

namespace A128223

/-- `ogf((x+2x^2+2x^3-x^4)/(1-x-2x^2+2x^3+x^4-x^5))` -/
def P5609826722856270393.Spec : Prop :=
  ∀ n, P5609826722856270393.a n = A128223 n

end A128223

/-! ## A128223.P18118016430647137938

`a(n-1)+2*a(n-2)-2*a(n-3)-a(n-4)+a(n-5)` with `a(0)=0, a(1)=1, a(2)=3, a(3)=7, a(4)=10`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A128223

/-- `a(n-1)+2*a(n-2)-2*a(n-3)-a(n-4)+a(n-5)` -/
def P18118016430647137938.Spec : Prop :=
  ∀ n, P18118016430647137938.a n = A128223 n

theorem P18118016430647137938.correct : P18118016430647137938.Spec := by
  intro n
  simp only [A128223]

end A128223

/-! ## A128223.P4235013486867704330

`A053439(n)-1`
-/

namespace A128223.P4235013486867704330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053439 n - 1

end

end A128223.P4235013486867704330

namespace A128223

/-- `A053439(n)-1` -/
def P4235013486867704330.Spec : Prop :=
  ∀ n, P4235013486867704330.a n = A128223 n

end A128223

/-! ## A128223.P12462512817708199239

`floor((lcm(2, n)+n²)/2)`
-/

namespace A128223.P12462512817708199239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.lcm 2 n + n ^ 2 : ℚ) / 2⌋

end

end A128223.P12462512817708199239

namespace A128223

/-- `floor((lcm(2, n)+n²)/2)` -/
def P12462512817708199239.Spec : Prop :=
  ∀ n, P12462512817708199239.a n = A128223 n

end A128223

/-! ## A128223.P9885342143576413096

`∑[and(n, -2)]+gcd(n, ∑[n])`
-/

namespace A128223.P9885342143576413096
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (-2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (Nat.gcd n (∑ j ∈ Finset.range (n + 1), f2 j) : ℤ)

end

end A128223.P9885342143576413096

namespace A128223

/-- `∑[and(n, -2)]+gcd(n, ∑[n])` -/
def P9885342143576413096.Spec : Prop :=
  ∀ n, P9885342143576413096.a n = A128223 n

end A128223

/-! ## A128223.P17036403053708923951

`floor(n*or(1, n+1)/2)`
-/

namespace A128223.P17036403053708923951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) * ((Nat.lor 1 (n + 1) : ℚ) / 2)⌋

end

end A128223.P17036403053708923951

namespace A128223

/-- `floor(n*or(1, n+1)/2)` -/
def P17036403053708923951.Spec : Prop :=
  ∀ n, P17036403053708923951.a n = A128223 n

end A128223

/-! ## A128223.P13240818064335261082

`(n-1)*ceil(n/2)+n`
-/

namespace A128223.P13240818064335261082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1) * ⌈(n : ℚ) / 2⌉ + (n : ℤ)

end

end A128223.P13240818064335261082

namespace A128223

/-- `(n-1)*ceil(n/2)+n` -/
def P13240818064335261082.Spec : Prop :=
  ∀ n, P13240818064335261082.a n = A128223 n

end A128223

/-! ## A128223.P642398446054756243

`floor((n%2+1+n)*n/2)`
-/

namespace A128223.P642398446054756243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((n % 2 + 1 + n : ℕ) : ℚ) * ((n : ℚ) / 2)⌋

end

end A128223.P642398446054756243

namespace A128223

/-- `floor((n%2+1+n)*n/2)` -/
def P642398446054756243.Spec : Prop :=
  ∀ n, P642398446054756243.a n = A128223 n

end A128223

/-! ## A128223.P9049212400321716312

`floor((gcd(2, n+1)+n)*n/2)`
-/

namespace A128223.P9049212400321716312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.gcd 2 (n + 1) + n : ℚ) * ((n : ℚ) / 2)⌋

end

end A128223.P9049212400321716312

namespace A128223

/-- `floor((gcd(2, n+1)+n)*n/2)` -/
def P9049212400321716312.Spec : Prop :=
  ∀ n, P9049212400321716312.a n = A128223 n

end A128223

/-! ## A128223.P15516898257950882116

`floor(a(n-1)/n+n²-a(n-1))` with `a(0)=0`
-/

namespace A128223.P15516898257950882116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  ⌊(a (n - 1) : ℚ) / (n : ℚ) + ((n ^ 2 : ℤ) - a (n - 1) : ℚ)⌋

end

end A128223.P15516898257950882116

namespace A128223

/-- `floor(a(n-1)/n+n²-a(n-1))` -/
def P15516898257950882116.Spec : Prop :=
  ∀ n, P15516898257950882116.a n = A128223 n

end A128223

/-! ## A128223.P4376153245073751645

`floor(a(n-1)/n-(a(n-1)-n²))` with `a(0)=0`
-/

namespace A128223.P4376153245073751645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  ⌊(a (n - 1) : ℚ) / (n : ℚ) - (a (n - 1) - (n ^ 2 : ℤ) : ℚ)⌋

end

end A128223.P4376153245073751645

namespace A128223

/-- `floor(a(n-1)/n-(a(n-1)-n²))` -/
def P4376153245073751645.Spec : Prop :=
  ∀ n, P4376153245073751645.a n = A128223 n

end A128223

/-! ## A128223.P8626650107163554110

`floor(n*n-(a(n-1)-a(n-1)/n))` with `a(0)=0`
-/

namespace A128223.P8626650107163554110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  ⌊(n * n : ℚ) - ((a (n - 1) : ℚ) - (a (n - 1) : ℚ) / (n : ℚ))⌋

end

end A128223.P8626650107163554110

namespace A128223

/-- `floor(n*n-(a(n-1)-a(n-1)/n))` -/
def P8626650107163554110.Spec : Prop :=
  ∀ n, P8626650107163554110.a n = A128223 n

end A128223

/-! ## A128223.P2040298517908059835

`∑[∑[1-A099570(n)]]`
-/

namespace A128223.P2040298517908059835
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A099570 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A128223.P2040298517908059835

namespace A128223

/-- `∑[∑[1-A099570(n)]]` -/
def P2040298517908059835.Spec : Prop :=
  ∀ n, P2040298517908059835.a n = A128223 n

end A128223

/-! ## A128223.P5190152647288721483

`floor(A092530(n)-n/2)`
-/

namespace A128223.P5190152647288721483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A092530 n : ℚ) - (n : ℚ) / 2⌋

end

end A128223.P5190152647288721483

namespace A128223

/-- `floor(A092530(n)-n/2)` -/
def P5190152647288721483.Spec : Prop :=
  ∀ n, P5190152647288721483.a n = A128223 n

end A128223

/-! ## A128223.P1546898469977622610

`∑[A266285(n)%A266257(n)]`
-/

namespace A128223.P1546898469977622610
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A266285 n) (A266257 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A128223.P1546898469977622610

namespace A128223

/-- `∑[A266285(n)%A266257(n)]` -/
def P1546898469977622610.Spec : Prop :=
  ∀ n, P1546898469977622610.a n = A128223 n

end A128223

/-! ## A128223.P7031139962517487570

`A085046(n+1)%A093005(n+1)`
-/

namespace A128223.P7031139962517487570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A085046 (n + 1)) (A093005 (n + 1))

end

end A128223.P7031139962517487570

namespace A128223

/-- `A085046(n+1)%A093005(n+1)` -/
def P7031139962517487570.Spec : Prop :=
  ∀ n, P7031139962517487570.a n = A128223 n

end A128223

/-! ## A128223.P6415449832708153582

`∑[A110654(A019425(n)+n)]`
-/

namespace A128223.P6415449832708153582
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A019425 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A128223.P6415449832708153582

namespace A128223

/-- `∑[A110654(A019425(n)+n)]` -/
def P6415449832708153582.Spec : Prop :=
  ∀ n, P6415449832708153582.a n = A128223 n

end A128223

/-! ## A128223.P8792538906930923685

`∑{#}[n-1, n-C(floor(n/2), n^C(#, n-1))]`
-/

namespace A128223.P8792538906930923685
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1).toNat, ((n : ℤ) - (Nat.choose ⌊(n : ℚ) / 2⌋.toNat (n ^ Nat.choose k ((n : ℤ) - 1).toNat) : ℤ))

end

end A128223.P8792538906930923685

namespace A128223

/-- `∑{#}[n-1, n-C(floor(n/2), n^C(#, n-1))]` -/
def P8792538906930923685.Spec : Prop :=
  ∀ n, P8792538906930923685.a n = A128223 n

end A128223

/-! ## A128223.P15019150703640174862

`∑{#}[n, ((n-1)*(n-floor(n/2)))^C(#, n)]`
-/

namespace A128223.P15019150703640174862
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (((n : ℤ) - 1) * ((n : ℤ) - ⌊(n : ℚ) / 2⌋)) ^ Nat.choose k n

end

end A128223.P15019150703640174862

namespace A128223

/-- `∑{#}[n, ((n-1)*(n-floor(n/2)))^C(#, n)]` -/
def P15019150703640174862.Spec : Prop :=
  ∀ n, P15019150703640174862.a n = A128223 n

end A128223

/-! ## A128223.P1696648383467271834

`∑{#}[n, C((n-1)*(n-floor(n/2)), C(#, n))]`
-/

namespace A128223.P1696648383467271834
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), Nat.choose (((n : ℤ) - 1) * ((n : ℤ) - ⌊(n : ℚ) / 2⌋)).toNat (Nat.choose k n)

end

end A128223.P1696648383467271834

namespace A128223

/-- `∑{#}[n, C((n-1)*(n-floor(n/2)), C(#, n))]` -/
def P1696648383467271834.Spec : Prop :=
  ∀ n, (P1696648383467271834.a n : ℤ) = A128223 n

end A128223

/-!
# A128225: A127899 (unsigned) * A004736.

The programs for A128225, there is no canonical definition to state claims against.
-/

/-! ## A128225.P18121560374276454935

`(row(n)+1)*(2*(row(n)+1)-2*col(n)-1)`
-/

namespace A128225.P18121560374276454935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.triRow n + 1 : ℤ) * ((2 * (SequenceMachineLib.triRow n + 1) : ℤ) - (2 * SequenceMachineLib.triCol n : ℤ) - 1)

end

end A128225.P18121560374276454935

/-! ## A128225.P5521395818462690101

`(comp[∑[n-1]]-n)*(n²+1+n)%(comp[C(n, 2)]+1)`
-/

namespace A128225.P5521395818462690101
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - (n : ℤ)) * (((n ^ 2 + 1 + n) % (SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ x) n + 1) : ℕ) : ℤ)

end

end A128225.P5521395818462690101

/-! ## A128225.P10480770148749399859

`∑[char[∑[n]]]*A099375(n)`
-/

namespace A128225.P10480770148749399859
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A099375 n

end

end A128225.P10480770148749399859

/-! ## A128225.P8836786583662641191

`A079297(∑[char[∑[n]]]²-n)`
-/

namespace A128225.P8836786583662641191
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079297 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - n)

end

end A128225.P8836786583662641191

/-! ## A128225.P4835014065866526705

`∑[char[∑[n]]]+2*A095834(n+1)`
-/

namespace A128225.P4835014065866526705
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + 2 * A095834 (n + 1)

end

end A128225.P4835014065866526705

/-! ## A128225.P13854749505820606990

`(A212012(n+1)-1)*∑[char[∑[n]]]`
-/

namespace A128225.P13854749505820606990
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A212012 (n + 1) - 1) * ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A128225.P13854749505820606990

/-! ## A128225.P15726508775918013132

`(2*A025581(n)+1)*∑[char[∑[n]]]`
-/

namespace A128225.P15726508775918013132
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * A025581 n + 1) * ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A128225.P15726508775918013132

/-! ## A128225.P18318451277627909114

`A098832(A185868(n+1))`
-/

namespace A128225.P18318451277627909114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098832 (A185868 (n + 1)).toNat

end

end A128225.P18318451277627909114

/-! ## A128225.P1525754071875986039

`A049780(A128116(n+1)+n)`
-/

namespace A128225.P1525754071875986039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049780 (A128116 (n + 1) + (n : ℤ)).toNat

end

end A128225.P1525754071875986039

/-! ## A128225.P7176437591396068265

`A131784(n+1)+A091435(n)`
-/

namespace A128225.P7176437591396068265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131784 (n + 1) + A091435 n

end

end A128225.P7176437591396068265

/-!
# A128226: Triangle, A004736 * A127899 (unsigned).

The programs for A128226, the canonical program `A128226.P3712784761551478239` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A128226 has offset 1).

The definition of A128226 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A128226.P6717818078755883073

`A309557(n)-1`
-/

namespace A128226.P6717818078755883073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309557 n - 1

end

end A128226.P6717818078755883073

namespace A128226

/-- `A309557(n)-1` -/
def P6717818078755883073.Spec : Prop :=
  ∀ n, P6717818078755883073.a n = A128226 (n + 1)

theorem P6717818078755883073.correct : P6717818078755883073.Spec := by
  intro n
  simp only [A128226, Nat.add_sub_cancel, A128226.P6717818078755883073.a, A128226.P3712784761551478239.a, A094053, A094053.P7632435431613033853.a, A127738, A127738.P13771444761042262108.a, A309557, A309557.P16659385246118916463.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A128226

/-! ## A128226.P6788419745193443270

`∑[char[∑[n]]+2*A114327(n)]`
-/

namespace A128226.P6788419745193443270
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ) + 2 * A114327 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A128226.P6788419745193443270

namespace A128226

/-- `∑[char[∑[n]]+2*A114327(n)]` -/
def P6788419745193443270.Spec : Prop :=
  ∀ n, P6788419745193443270.a n = A128226 (n + 1)

end A128226

/-! ## A128226.P4453832688184082738

`round(sqrt(2*(n+1)))+2*A094053(n+1)`
-/

namespace A128226.P4453832688184082738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (2 * (n + 1) : ℝ)) + 2 * A094053 (n + 1)

end

end A128226.P4453832688184082738

namespace A128226

/-- `round(sqrt(2*(n+1)))+2*A094053(n+1)` -/
def P4453832688184082738.Spec : Prop :=
  ∀ n, P4453832688184082738.a n = A128226 (n + 1)

end A128226

/-! ## A128226.P5052889424377660674

`A141387(n)+A099375(n)`
-/

namespace A128226.P5052889424377660674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141387 n + A099375 n

end

end A128226.P5052889424377660674

namespace A128226

/-- `A141387(n)+A099375(n)` -/
def P5052889424377660674.Spec : Prop :=
  ∀ n, P5052889424377660674.a n = A128226 (n + 1)

end A128226

/-! ## A128226.P3712784761551478239

`A127738(n+1)+A094053(n+1)`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A128226

/-- `A127738(n+1)+A094053(n+1)` -/
def P3712784761551478239.Spec : Prop :=
  ∀ n, P3712784761551478239.a n = A128226 (n + 1)

theorem P3712784761551478239.correct : P3712784761551478239.Spec := by
  intro n
  simp only [A128226, Nat.add_sub_cancel]

end A128226

/-! ## A128226.P229163713580120132

`A129312(n+1)+A099375(n)-1`
-/

namespace A128226.P229163713580120132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129312 (n + 1) + (A099375 n - 1)

end

end A128226.P229163713580120132

namespace A128226

/-- `A129312(n+1)+A099375(n)-1` -/
def P229163713580120132.Spec : Prop :=
  ∀ n, P229163713580120132.a n = A128226 (n + 1)

end A128226

/-! ## A128226.P15582209152378306633

`A212012(n+1)+A141387(n)-1`
-/

namespace A128226.P15582209152378306633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212012 (n + 1) + (A141387 n - 1)

end

end A128226.P15582209152378306633

namespace A128226

/-- `A212012(n+1)+A141387(n)-1` -/
def P15582209152378306633.Spec : Prop :=
  ∀ n, P15582209152378306633.a n = A128226 (n + 1)

end A128226

/-! ## A128226.P6352596923615165895

`A094053(n+1)+A141429(n+1)-1`
-/

namespace A128226.P6352596923615165895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094053 (n + 1) + (A141429 (n + 1) - 1)

end

end A128226.P6352596923615165895

namespace A128226

/-- `A094053(n+1)+A141429(n+1)-1` -/
def P6352596923615165895.Spec : Prop :=
  ∀ n, P6352596923615165895.a n = A128226 (n + 1)

theorem P6352596923615165895.correct : P6352596923615165895.Spec := by
  intro n
  simp only [A128226, Nat.add_sub_cancel, A128226.P6352596923615165895.a, A128226.P3712784761551478239.a, A094053, A094053.P7632435431613033853.a, A127738, A127738.P13771444761042262108.a, A141429, A141429.P3778980955938111992.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A128226

/-! ## A128226.P15912399869624797716

`A130154(n+1)+A131914(n+1)-1`
-/

namespace A128226.P15912399869624797716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130154 (n + 1) + (A131914 (n + 1) - 1)

end

end A128226.P15912399869624797716

namespace A128226

/-- `A130154(n+1)+A131914(n+1)-1` -/
def P15912399869624797716.Spec : Prop :=
  ∀ n, P15912399869624797716.a n = A128226 (n + 1)

end A128226

/-! ## A128226.P10885458638762967495

`A004736(n+1)+A094053(n+1)+A059036(n)`
-/

namespace A128226.P10885458638762967495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1) + (A094053 (n + 1) + A059036 n)

end

end A128226.P10885458638762967495

namespace A128226

/-- `A004736(n+1)+A094053(n+1)+A059036(n)` -/
def P10885458638762967495.Spec : Prop :=
  ∀ n, P10885458638762967495.a n = A128226 (n + 1)

end A128226

/-! ## A128226.P16253917411224091387

`A101468(n+1)-A086460(n+1)`
-/

namespace A128226.P16253917411224091387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101468 (n + 1) - A086460 (n + 1)

end

end A128226.P16253917411224091387

namespace A128226

/-- `A101468(n+1)-A086460(n+1)` -/
def P16253917411224091387.Spec : Prop :=
  ∀ n, P16253917411224091387.a n = A128226 (n + 1)

end A128226

/-! ## A128226.P15237504169091678959

`A023443(A309557(n))`
-/

namespace A128226.P15237504169091678959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A309557 n).toNat

end

end A128226.P15237504169091678959

namespace A128226

/-- `A023443(A309557(n))` -/
def P15237504169091678959.Spec : Prop :=
  ∀ n, P15237504169091678959.a n = A128226 (n + 1)

end A128226

/-! ## A128226.P14270207154354779610

`A141387(comp[∑[n]])`
-/

namespace A128226.P14270207154354779610
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141387 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A128226.P14270207154354779610

namespace A128226

/-- `A141387(comp[∑[n]])` -/
def P14270207154354779610.Spec : Prop :=
  ∀ n, P14270207154354779610.a n = A128226 (n + 1)

end A128226

/-! ## A128226.P13467989459356943548

`A129312(comp[∑[n]]+1)-1`
-/

namespace A128226.P13467989459356943548
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129312 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 1) - 1

end

end A128226.P13467989459356943548

namespace A128226

/-- `A129312(comp[∑[n]]+1)-1` -/
def P13467989459356943548.Spec : Prop :=
  ∀ n, P13467989459356943548.a n = A128226 (n + 1)

end A128226

/-! ## A128226.P5061338051672062940

`A159919(n+1)-A158894(n+1)`
-/

namespace A128226.P5061338051672062940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159919 (n + 1) - A158894 (n + 1)

end

end A128226.P5061338051672062940

namespace A128226

/-- `A159919(n+1)-A158894(n+1)` -/
def P5061338051672062940.Spec : Prop :=
  ∀ n, P5061338051672062940.a n = A128226 (n + 1)

end A128226

/-!
# A128227: Right border (1,1,1,...) added to A002260.

The programs for A128227, the canonical program `A128227.P856051388498017565` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A128227 has offset 0).

The definition of A128227 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A128227.P856051388498017565

`C(1+T(n-1,k-1), T(n-2,k-1))` with `a(0)=1`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A128227

/-- `C(1+T(n-1,k-1), T(n-2,k-1))` -/
def P856051388498017565.Spec : Prop :=
  ∀ n, (P856051388498017565.a n : ℤ) = A128227 n

theorem P856051388498017565.correct : P856051388498017565.Spec := by
  intro n
  simp only [A128227]

end A128227

/-! ## A128227.P9488663780632356368

`T(n-1,k-1)+gcd(T(n-1,k), T(n-2,k-1))` with `a(0)=1`
-/

namespace A128227.P9488663780632356368
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  SequenceMachineLib.triUpLeft a n + Nat.gcd (SequenceMachineLib.triUp a n) (SequenceMachineLib.triUp2Left a n)

end

end A128227.P9488663780632356368

namespace A128227

/-- `T(n-1,k-1)+gcd(T(n-1,k), T(n-2,k-1))` -/
def P9488663780632356368.Spec : Prop :=
  ∀ n, (P9488663780632356368.a n : ℤ) = A128227 n

end A128227

/-! ## A128227.P17066576848675967591

`lcm(T(n,k-1), T(n-2,k-1))+1` with `a(0)=1, a(1)=1`
-/

namespace A128227.P17066576848675967591
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n a =>
  Nat.lcm (SequenceMachineLib.triLeft a n) (SequenceMachineLib.triUp2Left a n) + 1

end

end A128227.P17066576848675967591

namespace A128227

/-- `lcm(T(n,k-1), T(n-2,k-1))+1` -/
def P17066576848675967591.Spec : Prop :=
  ∀ n, (P17066576848675967591.a n : ℤ) = A128227 n

end A128227

/-! ## A128227.P7431654009441738271

`C(1+T(n,k-1), T(n-2,k-1))` with `a(0)=1, a(1)=1`
-/

namespace A128227.P7431654009441738271
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n a =>
  Nat.choose (1 + SequenceMachineLib.triLeft a n) (SequenceMachineLib.triUp2Left a n)

end

end A128227.P7431654009441738271

namespace A128227

/-- `C(1+T(n,k-1), T(n-2,k-1))` -/
def P7431654009441738271.Spec : Prop :=
  ∀ n, (P7431654009441738271.a n : ℤ) = A128227 n

end A128227

/-! ## A128227.P3733783965648495382

`C(col(n)+1, T(n-2,k-1))` with `a(0)=1`
-/

namespace A128227.P3733783965648495382
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.choose (SequenceMachineLib.triCol n + 1) (SequenceMachineLib.triUp2Left a n)

end

end A128227.P3733783965648495382

namespace A128227

/-- `C(col(n)+1, T(n-2,k-1))` -/
def P3733783965648495382.Spec : Prop :=
  ∀ n, (P3733783965648495382.a n : ℤ) = A128227 n

end A128227

/-! ## A128227.P8049344677175096902

`col(n-row(n))+1`
-/

namespace A128227.P8049344677175096902
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.triCol ((n : ℤ) - (SequenceMachineLib.triRow n : ℤ)).toNat + 1

end

end A128227.P8049344677175096902

namespace A128227

/-- `col(n-row(n))+1` -/
def P8049344677175096902.Spec : Prop :=
  ∀ n, (P8049344677175096902.a n : ℤ) = A128227 n

end A128227

/-! ## A128227.P16848985627885810726

`T(n-1,k-1)+1-Δ[row(n)]` with `a(0)=1`
-/

namespace A128227.P16848985627885810726
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.triRow n

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  SequenceMachineLib.triUpLeft a n + (1 - ((f1 (n + 1) : ℤ) - (f1 n : ℤ)))

end

end A128227.P16848985627885810726

namespace A128227

/-- `T(n-1,k-1)+1-Δ[row(n)]` -/
def P16848985627885810726.Spec : Prop :=
  ∀ n, P16848985627885810726.a n = A128227 n

end A128227

/-! ## A128227.P6011039803133533957

`T(n-1,k-1)+xor(1, Δ[row(n)])` with `a(0)=1`
-/

namespace A128227.P6011039803133533957
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.triRow n

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  SequenceMachineLib.triUpLeft a n + Int.xor 1 ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A128227.P6011039803133533957

namespace A128227

/-- `T(n-1,k-1)+xor(1, Δ[row(n)])` -/
def P6011039803133533957.Spec : Prop :=
  ∀ n, P6011039803133533957.a n = A128227 n

end A128227

/-! ## A128227.P7406182587150482509

`gcd(col(n)+1, Δ[row(n)])`
-/

namespace A128227.P7406182587150482509
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.triRow n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (SequenceMachineLib.triCol n + 1 : ℤ) ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A128227.P7406182587150482509

namespace A128227

/-- `gcd(col(n)+1, Δ[row(n)])` -/
def P7406182587150482509.Spec : Prop :=
  ∀ n, (P7406182587150482509.a n : ℤ) = A128227 n

end A128227

/-! ## A128227.P11842097602407635153

`T(T(n-1,k-1), T(n-1,k)-1)+T(n-1,k-1)` with `a(0)=1`
-/

namespace A128227.P11842097602407635153
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  SequenceMachineLib.triAt a ((SequenceMachineLib.triUpLeft a n : ℕ) : ℤ) (((SequenceMachineLib.triUp a n : ℕ) : ℤ) - 1) + SequenceMachineLib.triUpLeft a n

end

end A128227.P11842097602407635153

namespace A128227

/-- `T(T(n-1,k-1), T(n-1,k)-1)+T(n-1,k-1)` -/
def P11842097602407635153.Spec : Prop :=
  ∀ n, (P11842097602407635153.a n : ℤ) = A128227 n

end A128227

/-! ## A128227.P16242643813169237263

`T(T(n-1,k+1), T(T(n-1,k+1), T(n-1,k)))+T(n-1,k-1)` with `a(0)=1`
-/

namespace A128227.P16242643813169237263
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  SequenceMachineLib.triAt a ((SequenceMachineLib.triUpRight a n : ℕ) : ℤ) ((SequenceMachineLib.triAt a ((SequenceMachineLib.triUpRight a n : ℕ) : ℤ) ((SequenceMachineLib.triUp a n : ℕ) : ℤ) : ℕ) : ℤ) + SequenceMachineLib.triUpLeft a n

end

end A128227.P16242643813169237263

namespace A128227

/-- `T(T(n-1,k+1), T(T(n-1,k+1), T(n-1,k)))+T(n-1,k-1)` -/
def P16242643813169237263.Spec : Prop :=
  ∀ n, (P16242643813169237263.a n : ℤ) = A128227 n

end A128227

/-! ## A128227.P7309517096475672031

`C(1+a(n-1), T(n-2,k-1))` with `a(0)=1`
-/

namespace A128227.P7309517096475672031
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.choose (1 + a (n - 1)) (SequenceMachineLib.triUp2Left a n)

end

end A128227.P7309517096475672031

namespace A128227

/-- `C(1+a(n-1), T(n-2,k-1))` -/
def P7309517096475672031.Spec : Prop :=
  ∀ n, (P7309517096475672031.a n : ℤ) = A128227 n

end A128227

/-! ## A128227.P11881786355922783601

`col(n)+Δ[col(n)+row(n)]`
-/

namespace A128227.P11881786355922783601
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.triCol n + SequenceMachineLib.triRow n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.triCol n : ℤ) + ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A128227.P11881786355922783601

namespace A128227

/-- `col(n)+Δ[col(n)+row(n)]` -/
def P11881786355922783601.Spec : Prop :=
  ∀ n, P11881786355922783601.a n = A128227 n

end A128227

/-! ## A128227.P11110572745022299104

`T(T(n-1,k-1), col(n))+T(n-1,k-1)` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A128227.P11110572745022299104
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 1] fun n a =>
  SequenceMachineLib.triAt a ((SequenceMachineLib.triUpLeft a n : ℕ) : ℤ) (SequenceMachineLib.triCol n : ℤ) + SequenceMachineLib.triUpLeft a n

end

end A128227.P11110572745022299104

namespace A128227

/-- `T(T(n-1,k-1), col(n))+T(n-1,k-1)` -/
def P11110572745022299104.Spec : Prop :=
  ∀ n, (P11110572745022299104.a n : ℤ) = A128227 n

end A128227

/-! ## A128227.P18215161278131380296

`T(n-1,k)+T(n-1,k-1)*T(1, T(n-1,k))` with `a(0)=1, a(1)=1`
-/

namespace A128227.P18215161278131380296
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n a =>
  SequenceMachineLib.triUp a n + SequenceMachineLib.triUpLeft a n * SequenceMachineLib.triAt a 1 ((SequenceMachineLib.triUp a n : ℕ) : ℤ)

end

end A128227.P18215161278131380296

namespace A128227

/-- `T(n-1,k)+T(n-1,k-1)*T(1, T(n-1,k))` -/
def P18215161278131380296.Spec : Prop :=
  ∀ n, (P18215161278131380296.a n : ℤ) = A128227 n

end A128227

/-! ## A128227.P1748222623767709443

`T(T(n-1,k), T(1, T(n-1,k)))+T(n-1,k-1)` with `a(0)=1, a(1)=1`
-/

namespace A128227.P1748222623767709443
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n a =>
  SequenceMachineLib.triAt a ((SequenceMachineLib.triUp a n : ℕ) : ℤ) ((SequenceMachineLib.triAt a 1 ((SequenceMachineLib.triUp a n : ℕ) : ℤ) : ℕ) : ℤ) + SequenceMachineLib.triUpLeft a n

end

end A128227.P1748222623767709443

namespace A128227

/-- `T(T(n-1,k), T(1, T(n-1,k)))+T(n-1,k-1)` -/
def P1748222623767709443.Spec : Prop :=
  ∀ n, (P1748222623767709443.a n : ℤ) = A128227 n

end A128227

/-! ## A128227.P7924257861749670227

`(T(n-1,k-1)+1-T(n-2,k-1))*T(n-2,k-1)+1` with `a(0)=1`
-/

namespace A128227.P7924257861749670227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (SequenceMachineLib.triUpLeft a n + 1 - SequenceMachineLib.triUp2Left a n) * SequenceMachineLib.triUp2Left a n + 1

end

end A128227.P7924257861749670227

namespace A128227

/-- `(T(n-1,k-1)+1-T(n-2,k-1))*T(n-2,k-1)+1` -/
def P7924257861749670227.Spec : Prop :=
  ∀ n, P7924257861749670227.a n = A128227 n

end A128227

/-! ## A128227.P3077763892936015181

`(T(n,k-1)+1-T(n-2,k-1))*T(n-2,k-1)+1` with `a(0)=1`
-/

namespace A128227.P3077763892936015181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (SequenceMachineLib.triLeft a n + 1 - SequenceMachineLib.triUp2Left a n) * SequenceMachineLib.triUp2Left a n + 1

end

end A128227.P3077763892936015181

namespace A128227

/-- `(T(n,k-1)+1-T(n-2,k-1))*T(n-2,k-1)+1` -/
def P3077763892936015181.Spec : Prop :=
  ∀ n, P3077763892936015181.a n = A128227 n

end A128227

/-! ## A128227.P17090033792500966605

`col(n)%C(row(n), col(n))+1`
-/

namespace A128227.P17090033792500966605
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.triCol n % Nat.choose (SequenceMachineLib.triRow n) (SequenceMachineLib.triCol n) + 1

end

end A128227.P17090033792500966605

namespace A128227

/-- `col(n)%C(row(n), col(n))+1` -/
def P17090033792500966605.Spec : Prop :=
  ∀ n, (P17090033792500966605.a n : ℤ) = A128227 n

end A128227

/-! ## A128227.P7474496314940668450

`(col(n)+1-T(n-2,k-1))*T(n-2,k-1)+1` with `a(0)=1`
-/

namespace A128227.P7474496314940668450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ((SequenceMachineLib.triCol n + 1 : ℤ) - SequenceMachineLib.triUp2Left a n) * SequenceMachineLib.triUp2Left a n + 1

end

end A128227.P7474496314940668450

namespace A128227

/-- `(col(n)+1-T(n-2,k-1))*T(n-2,k-1)+1` -/
def P7474496314940668450.Spec : Prop :=
  ∀ n, P7474496314940668450.a n = A128227 n

end A128227

/-!
# A128228: A128229 * A002260.

The programs for A128228, the canonical program `A128228.P15670148006439190940` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A128228 has offset 1).

The definition of A128228 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A128228.P1895760778648003533

`col(n)+row(n)*T(col(n), T(col(n), T(n-1,k)))+1` with `a(0)=1`
-/

namespace A128228.P1895760778648003533
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  SequenceMachineLib.triCol n + SequenceMachineLib.triRow n * SequenceMachineLib.triAt a (SequenceMachineLib.triCol n : ℤ) ((SequenceMachineLib.triAt a (SequenceMachineLib.triCol n : ℤ) ((SequenceMachineLib.triUp a n : ℕ) : ℤ) : ℕ) : ℤ) + 1

end

end A128228.P1895760778648003533

namespace A128228

/-- `col(n)+row(n)*T(col(n), T(col(n), T(n-1,k)))+1` -/
def P1895760778648003533.Spec : Prop :=
  ∀ n, (P1895760778648003533.a n : ℤ) = A128228 (n + 1)

end A128228

/-! ## A128228.P16148736369540162358

`∑[char[∑[n]]]*A128227(n)`
-/

namespace A128228.P16148736369540162358
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A128227 n

end

end A128228.P16148736369540162358

namespace A128228

/-- `∑[char[∑[n]]]*A128227(n)` -/
def P16148736369540162358.Spec : Prop :=
  ∀ n, P16148736369540162358.a n = A128228 (n + 1)

end A128228

/-! ## A128228.P1654666809777472382

`A076110(n+2)+n-C(∑[char[∑[n]]], 2)`
-/

namespace A128228.P1654666809777472382
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076110 (n + 2) + ((n : ℤ) - (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 : ℤ))

end

end A128228.P1654666809777472382

namespace A128228

/-- `A076110(n+2)+n-C(∑[char[∑[n]]], 2)` -/
def P1654666809777472382.Spec : Prop :=
  ∀ n, P1654666809777472382.a n = A128228 (n + 1)

end A128228

/-! ## A128228.P11015701845767138895

`∑[char[∑[n]]]*A002260(∑[char[comp[∑[n+1]]]])`
-/

namespace A128228.P11015701845767138895
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def f7 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f6 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f7 j

open Classical in
def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f6 j ≠ x) n

open Classical in
def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f5 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A002260 (∑ j ∈ Finset.range (n + 1), f4 j)

end

end A128228.P11015701845767138895

namespace A128228

/-- `∑[char[∑[n]]]*A002260(∑[char[comp[∑[n+1]]]])` -/
def P11015701845767138895.Spec : Prop :=
  ∀ n, P11015701845767138895.a n = A128228 (n + 1)

end A128228

/-! ## A128228.P15670148006439190940

`A076110(n+2)+A002262(n)`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A128228

/-- `A076110(n+2)+A002262(n)` -/
def P15670148006439190940.Spec : Prop :=
  ∀ n, P15670148006439190940.a n = A128228 (n + 1)

theorem P15670148006439190940.correct : P15670148006439190940.Spec := by
  intro n
  simp only [A128228, Nat.add_sub_cancel]

end A128228

/-! ## A128228.P1261197603655866976

`A075362(n+1)/A051340(n)`
-/

namespace A128228.P1261197603655866976
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A075362 (n + 1) : ℚ) / (A051340 n : ℚ)

end

end A128228.P1261197603655866976

namespace A128228

/-- `A075362(n+1)/A051340(n)` -/
def P1261197603655866976.Spec : Prop :=
  ∀ n, P1261197603655866976.a n = (A128228 (n + 1) : ℚ)

end A128228

/-! ## A128228.P15259752573110222899

`gcd(A075362(n+1), A103516(n))`
-/

namespace A128228.P15259752573110222899
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A075362 (n + 1)) (A103516 n)

end

end A128228.P15259752573110222899

namespace A128228

/-- `gcd(A075362(n+1), A103516(n))` -/
def P15259752573110222899.Spec : Prop :=
  ∀ n, (P15259752573110222899.a n : ℤ) = A128228 (n + 1)

end A128228

/-! ## A128228.P17603610403632925144

`A079904(n+1)+A002260(n+1)`
-/

namespace A128228.P17603610403632925144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079904 (n + 1) + A002260 (n + 1)

end

end A128228.P17603610403632925144

namespace A128228

/-- `A079904(n+1)+A002260(n+1)` -/
def P17603610403632925144.Spec : Prop :=
  ∀ n, P17603610403632925144.a n = A128228 (n + 1)

theorem P17603610403632925144.correct : P17603610403632925144.Spec := by
  intro n
  simp only [A128228, Nat.add_sub_cancel, A128228.P17603610403632925144.a, A128228.P15670148006439190940.a, A002260, A002260.P9170571874073898642.a, A002262, A002262.P17823619022233514403.a, A076110, A076110.P1795246513683719096.a, A079904, A079904.P681072687927778273.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A128228

/-! ## A128228.P7112075175132209951

`A002024(n+1)*A028310(A048151(n+1))`
-/

namespace A128228.P7112075175132209951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (n + 1) * A028310 (A048151 (n + 1)).toNat

end

end A128228.P7112075175132209951

namespace A128228

/-- `A002024(n+1)*A028310(A048151(n+1))` -/
def P7112075175132209951.Spec : Prop :=
  ∀ n, P7112075175132209951.a n = A128228 (n + 1)

end A128228

/-! ## A128228.P8961703817796013822

`A076110(n+1)+A076110(n+2)-A162609(n+1)`
-/

namespace A128228.P8961703817796013822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076110 (n + 1) + (A076110 (n + 2) - A162609 (n + 1))

end

end A128228.P8961703817796013822

namespace A128228

/-- `A076110(n+1)+A076110(n+2)-A162609(n+1)` -/
def P8961703817796013822.Spec : Prop :=
  ∀ n, P8961703817796013822.a n = A128228 (n + 1)

theorem P8961703817796013822.correct : P8961703817796013822.Spec := by
  intro n
  simp only [A128228, Nat.add_sub_cancel, A128228.P8961703817796013822.a, A128228.P15670148006439190940.a, A002262, A002262.P17823619022233514403.a, A076110, A076110.P1795246513683719096.a, A162609, A162609.P12740708106325830142.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A128228

/-! ## A128228.P16885461683682682363

`(A094727(n+2)-A002024(n+1))*A002024(n+1)`
-/

namespace A128228.P16885461683682682363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A094727 (n + 2) - A002024 (n + 1)) * A002024 (n + 1)

end

end A128228.P16885461683682682363

namespace A128228

/-- `(A094727(n+2)-A002024(n+1))*A002024(n+1)` -/
def P16885461683682682363.Spec : Prop :=
  ∀ n, P16885461683682682363.a n = A128228 (n + 1)

end A128228

/-! ## A128228.P9704997346180957644

`A002024(n+1)*A131818(n+1)/A131821(n+1)`
-/

namespace A128228.P9704997346180957644
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002024 (n + 1) * A131818 (n + 1) : ℚ) / (A131821 (n + 1) : ℚ)

end

end A128228.P9704997346180957644

namespace A128228

/-- `A002024(n+1)*A131818(n+1)/A131821(n+1)` -/
def P9704997346180957644.Spec : Prop :=
  ∀ n, P9704997346180957644.a n = (A128228 (n + 1) : ℚ)

end A128228

/-! ## A128228.P892762526972525438

`∑[char[∑[n]]]*A144328(n+2)`
-/

namespace A128228.P892762526972525438
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A144328 (n + 2)

end

end A128228.P892762526972525438

namespace A128228

/-- `∑[char[∑[n]]]*A144328(n+2)` -/
def P892762526972525438.Spec : Prop :=
  ∀ n, P892762526972525438.a n = A128228 (n + 1)

end A128228

/-! ## A128228.P8625151265939908777

`A003991(n+1)+A002262(n+1)*A002262(n)`
-/

namespace A128228.P8625151265939908777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003991 (n + 1) + A002262 (n + 1) * A002262 n

end

end A128228.P8625151265939908777

namespace A128228

/-- `A003991(n+1)+A002262(n+1)*A002262(n)` -/
def P8625151265939908777.Spec : Prop :=
  ∀ n, P8625151265939908777.a n = A128228 (n + 1)

end A128228

/-! ## A128228.P11181716663015561454

`(A108872(n+2)-A003057(n+2))*A002024(n+1)`
-/

namespace A128228.P11181716663015561454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A108872 (n + 2) - A003057 (n + 2)) * A002024 (n + 1)

end

end A128228.P11181716663015561454

namespace A128228

/-- `(A108872(n+2)-A003057(n+2))*A002024(n+1)` -/
def P11181716663015561454.Spec : Prop :=
  ∀ n, P11181716663015561454.a n = A128228 (n + 1)

end A128228

/-! ## A128228.P15716034276223215203

`∑[char[∑[n]]]*A193592(∑[2*n]%comp[∑[n]])`
-/

namespace A128228.P15716034276223215203
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f6 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f6 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A193592 ((∑ j ∈ Finset.range (n + 1), f4 j) % SequenceMachineLib.nth (fun x => ∀ j, f5 j ≠ x) n)

end

end A128228.P15716034276223215203

namespace A128228

/-- `∑[char[∑[n]]]*A193592(∑[2*n]%comp[∑[n]])` -/
def P15716034276223215203.Spec : Prop :=
  ∀ n, P15716034276223215203.a n = A128228 (n + 1)

end A128228

/-! ## A128228.P17001572932791743373

`A279409(A185870(n+1)+1)`
-/

namespace A128228.P17001572932791743373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279409 (A185870 (n + 1) + 1).toNat

end

end A128228.P17001572932791743373

namespace A128228

/-- `A279409(A185870(n+1)+1)` -/
def P17001572932791743373.Spec : Prop :=
  ∀ n, P17001572932791743373.a n = A128228 (n + 1)

end A128228

/-! ## A128228.P17699716606234772689

`A002260(n+1)*A183110(n+1)`
-/

namespace A128228.P17699716606234772689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1) * A183110 (n + 1)

end

end A128228.P17699716606234772689

namespace A128228

/-- `A002260(n+1)*A183110(n+1)` -/
def P17699716606234772689.Spec : Prop :=
  ∀ n, P17699716606234772689.a n = A128228 (n + 1)

end A128228

/-! ## A128228.P15905452744261993075

`A183110(n+1)*A194832(A194833(n+1))`
-/

namespace A128228.P15905452744261993075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183110 (n + 1) * A194832 (A194833 (n + 1)).toNat

end

end A128228.P15905452744261993075

namespace A128228

/-- `A183110(n+1)*A194832(A194833(n+1))` -/
def P15905452744261993075.Spec : Prop :=
  ∀ n, P15905452744261993075.a n = A128228 (n + 1)

end A128228

/-! ## A128228.P2737814348650969286

`A183110(n+1)*A194905(A194906(n+1))`
-/

namespace A128228.P2737814348650969286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183110 (n + 1) * A194905 (A194906 (n + 1)).toNat

end

end A128228.P2737814348650969286

namespace A128228

/-- `A183110(n+1)*A194905(A194906(n+1))` -/
def P2737814348650969286.Spec : Prop :=
  ∀ n, P2737814348650969286.a n = A128228 (n + 1)

end A128228

/-!
# A128229: A natural number transform, inverse of signed A094587.

The programs for A128229, the canonical program `A128229.P10920205631399936659` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A128229 has offset 1).

The definition of A128229 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A128229.P10920205631399936659

`T(n-1,k-1)+(1-T(n-1,k+1))*T(n-1,k)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A128229

/-- `T(n-1,k-1)+(1-T(n-1,k+1))*T(n-1,k)` -/
def P10920205631399936659.Spec : Prop :=
  ∀ n, P10920205631399936659.a n = A128229 (n + 1)

theorem P10920205631399936659.correct : P10920205631399936659.Spec := by
  intro n
  simp only [A128229, Nat.add_sub_cancel]

end A128229

/-! ## A128229.P12676725008670418262

`T(n-1,k-1)-(T(n-1,k+1)-1)*T(n-1,k)` with `a(0)=1`
-/

namespace A128229.P12676725008670418262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  SequenceMachineLib.triUpLeft a n - (SequenceMachineLib.triUpRight a n - 1) * SequenceMachineLib.triUp a n

end

end A128229.P12676725008670418262

namespace A128229

/-- `T(n-1,k-1)-(T(n-1,k+1)-1)*T(n-1,k)` -/
def P12676725008670418262.Spec : Prop :=
  ∀ n, P12676725008670418262.a n = A128229 (n + 1)

theorem P12676725008670418262.correct : P12676725008670418262.Spec := by
  intro n
  simp only [A128229, Nat.add_sub_cancel, A128229.P12676725008670418262.a, A128229.P10920205631399936659.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A128229

/-! ## A128229.P9672522107726229513

`T(n-1,k-1)+(1-T(n-2,k))*T(n-1,k)` with `a(0)=1`
-/

namespace A128229.P9672522107726229513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  SequenceMachineLib.triUpLeft a n + (1 - SequenceMachineLib.triUp2 a n) * SequenceMachineLib.triUp a n

end

end A128229.P9672522107726229513

namespace A128229

/-- `T(n-1,k-1)+(1-T(n-2,k))*T(n-1,k)` -/
def P9672522107726229513.Spec : Prop :=
  ∀ n, P9672522107726229513.a n = A128229 (n + 1)

end A128229

/-! ## A128229.P6073511653585512736

`T(n-1,k-1)-(T(n-2,k)-1)*T(n-1,k)` with `a(0)=1`
-/

namespace A128229.P6073511653585512736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  SequenceMachineLib.triUpLeft a n - (SequenceMachineLib.triUp2 a n - 1) * SequenceMachineLib.triUp a n

end

end A128229.P6073511653585512736

namespace A128229

/-- `T(n-1,k-1)-(T(n-2,k)-1)*T(n-1,k)` -/
def P6073511653585512736.Spec : Prop :=
  ∀ n, P6073511653585512736.a n = A128229 (n + 1)

end A128229

/-! ## A128229.P2400300756931714478

`T(n-1,k-1)+lcm(T(n-1,k+1)-1, T(n-1,k))` with `a(0)=1`
-/

namespace A128229.P2400300756931714478
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  SequenceMachineLib.triUpLeft a n + Int.lcm (((SequenceMachineLib.triUpRight a n : ℕ) : ℤ) - 1) ((SequenceMachineLib.triUp a n : ℕ) : ℤ)

end

end A128229.P2400300756931714478

namespace A128229

/-- `T(n-1,k-1)+lcm(T(n-1,k+1)-1, T(n-1,k))` -/
def P2400300756931714478.Spec : Prop :=
  ∀ n, (P2400300756931714478.a n : ℤ) = A128229 (n + 1)

end A128229

/-! ## A128229.P7677804463511960207

`1-Δ[C(1+T(n-1,k-1), T(n-2,k-1))]` with `a(0)=1`
-/

namespace A128229.P7677804463511960207
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  Nat.choose (1 + SequenceMachineLib.triUpLeft f1 n) (SequenceMachineLib.triUp2Left f1 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A128229.P7677804463511960207

namespace A128229

/-- `1-Δ[C(1+T(n-1,k-1), T(n-2,k-1))]` -/
def P7677804463511960207.Spec : Prop :=
  ∀ n, P7677804463511960207.a n = A128229 (n + 1)

end A128229

/-! ## A128229.P8183723031253829906

`T(n-1,k-1)+(1-T(n-1,k+1))*T(n-2,k-1)` with `a(0)=1, a(1)=1`
-/

namespace A128229.P8183723031253829906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  SequenceMachineLib.triUpLeft a n + (1 - SequenceMachineLib.triUpRight a n) * SequenceMachineLib.triUp2Left a n

end

end A128229.P8183723031253829906

namespace A128229

/-- `T(n-1,k-1)+(1-T(n-1,k+1))*T(n-2,k-1)` -/
def P8183723031253829906.Spec : Prop :=
  ∀ n, P8183723031253829906.a n = A128229 (n + 1)

end A128229

/-! ## A128229.P4443973828439393665

`T(n-1,k-1)-(T(n-1,k+1)-1)*T(n-2,k-1)` with `a(0)=1, a(1)=1`
-/

namespace A128229.P4443973828439393665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  SequenceMachineLib.triUpLeft a n - (SequenceMachineLib.triUpRight a n - 1) * SequenceMachineLib.triUp2Left a n

end

end A128229.P4443973828439393665

namespace A128229

/-- `T(n-1,k-1)-(T(n-1,k+1)-1)*T(n-2,k-1)` -/
def P4443973828439393665.Spec : Prop :=
  ∀ n, P4443973828439393665.a n = A128229 (n + 1)

end A128229

/-! ## A128229.P2546386615468058942

`T(n-1,k-1)+(1-T(n-2,k))*T(n-2,k-1)` with `a(0)=1, a(1)=1`
-/

namespace A128229.P2546386615468058942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  SequenceMachineLib.triUpLeft a n + (1 - SequenceMachineLib.triUp2 a n) * SequenceMachineLib.triUp2Left a n

end

end A128229.P2546386615468058942

namespace A128229

/-- `T(n-1,k-1)+(1-T(n-2,k))*T(n-2,k-1)` -/
def P2546386615468058942.Spec : Prop :=
  ∀ n, P2546386615468058942.a n = A128229 (n + 1)

end A128229

/-! ## A128229.P5094727950219497449

`T(n-1,k-1)-(T(n-2,k)-1)*T(n-2,k-1)` with `a(0)=1, a(1)=1`
-/

namespace A128229.P5094727950219497449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  SequenceMachineLib.triUpLeft a n - (SequenceMachineLib.triUp2 a n - 1) * SequenceMachineLib.triUp2Left a n

end

end A128229.P5094727950219497449

namespace A128229

/-- `T(n-1,k-1)-(T(n-2,k)-1)*T(n-2,k-1)` -/
def P5094727950219497449.Spec : Prop :=
  ∀ n, P5094727950219497449.a n = A128229 (n + 1)

end A128229

/-! ## A128229.P9833042748611675270

`T(T(n-1,k+1), 1-(T(n-1,k)+T(n-1,k+1)))+T(n-1,k-1)` with `a(0)=1`
-/

namespace A128229.P9833042748611675270
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  SequenceMachineLib.triAt a ((SequenceMachineLib.triUpRight a n : ℕ) : ℤ) (1 - (SequenceMachineLib.triUp a n + SequenceMachineLib.triUpRight a n : ℤ)) + SequenceMachineLib.triUpLeft a n

end

end A128229.P9833042748611675270

namespace A128229

/-- `T(T(n-1,k+1), 1-(T(n-1,k)+T(n-1,k+1)))+T(n-1,k-1)` -/
def P9833042748611675270.Spec : Prop :=
  ∀ n, (P9833042748611675270.a n : ℤ) = A128229 (n + 1)

end A128229

/-! ## A128229.P9607242773522315195

`(T(n-1,k-1)+T(n-1,k))*T(T(n-1,k+1), 2*T(n-1,k+1))` with `a(0)=1`
-/

namespace A128229.P9607242773522315195
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  (SequenceMachineLib.triUpLeft a n + SequenceMachineLib.triUp a n) * SequenceMachineLib.triAt a ((SequenceMachineLib.triUpRight a n : ℕ) : ℤ) (2 * SequenceMachineLib.triUpRight a n : ℤ)

end

end A128229.P9607242773522315195

namespace A128229

/-- `(T(n-1,k-1)+T(n-1,k))*T(T(n-1,k+1), 2*T(n-1,k+1))` -/
def P9607242773522315195.Spec : Prop :=
  ∀ n, (P9607242773522315195.a n : ℤ) = A128229 (n + 1)

end A128229

/-! ## A128229.P11788816383196654228

`C(row(n), C(row(n), col(n)+1)²)`
-/

namespace A128229.P11788816383196654228
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (SequenceMachineLib.triRow n) (Nat.choose (SequenceMachineLib.triRow n) (SequenceMachineLib.triCol n + 1) ^ 2)

end

end A128229.P11788816383196654228

namespace A128229

/-- `C(row(n), C(row(n), col(n)+1)²)` -/
def P11788816383196654228.Spec : Prop :=
  ∀ n, (P11788816383196654228.a n : ℤ) = A128229 (n + 1)

end A128229

/-! ## A128229.P2149329251537327805

`(T(n-1,k-1)+T(n-1,k))*(T(n-2,k-1)+1-T(n-1,k))` with `a(0)=1, a(1)=1`
-/

namespace A128229.P2149329251537327805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  (SequenceMachineLib.triUpLeft a n + SequenceMachineLib.triUp a n) * (SequenceMachineLib.triUp2Left a n + 1 - SequenceMachineLib.triUp a n)

end

end A128229.P2149329251537327805

namespace A128229

/-- `(T(n-1,k-1)+T(n-1,k))*(T(n-2,k-1)+1-T(n-1,k))` -/
def P2149329251537327805.Spec : Prop :=
  ∀ n, P2149329251537327805.a n = A128229 (n + 1)

end A128229

/-! ## A128229.P16675096982819537032

`T(T(n-1,k), row(n)-T(n-1,k-1))+T(n-1,k-1)` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A128229.P16675096982819537032
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 1] fun n a =>
  SequenceMachineLib.triAt a ((SequenceMachineLib.triUp a n : ℕ) : ℤ) ((SequenceMachineLib.triRow n : ℤ) - ((SequenceMachineLib.triUpLeft a n : ℕ) : ℤ)) + SequenceMachineLib.triUpLeft a n

end

end A128229.P16675096982819537032

namespace A128229

/-- `T(T(n-1,k), row(n)-T(n-1,k-1))+T(n-1,k-1)` -/
def P16675096982819537032.Spec : Prop :=
  ∀ n, (P16675096982819537032.a n : ℤ) = A128229 (n + 1)

end A128229

/-! ## A128229.P14825749780969678268

`T(T(n-1,k-1)-1, T(n-1,k-1)-T(n-1,k))+T(n-1,k-1)` with `a(0)=1, a(1)=1`
-/

namespace A128229.P14825749780969678268
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n a =>
  SequenceMachineLib.triAt a (((SequenceMachineLib.triUpLeft a n : ℕ) : ℤ) - 1) (((SequenceMachineLib.triUpLeft a n : ℕ) : ℤ) - ((SequenceMachineLib.triUp a n : ℕ) : ℤ)) + SequenceMachineLib.triUpLeft a n

end

end A128229.P14825749780969678268

namespace A128229

/-- `T(T(n-1,k-1)-1, T(n-1,k-1)-T(n-1,k))+T(n-1,k-1)` -/
def P14825749780969678268.Spec : Prop :=
  ∀ n, (P14825749780969678268.a n : ℤ) = A128229 (n + 1)

end A128229

/-! ## A128229.P1529393019746383865

`T(T(n-1,k), T(T(n-1,k), T(n-1,k+1))+T(n-1,k+1))+T(n-1,k-1)` with `a(0)=1, a(1)=1`
-/

namespace A128229.P1529393019746383865
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n a =>
  SequenceMachineLib.triAt a ((SequenceMachineLib.triUp a n : ℕ) : ℤ) (SequenceMachineLib.triAt a ((SequenceMachineLib.triUp a n : ℕ) : ℤ) ((SequenceMachineLib.triUpRight a n : ℕ) : ℤ) + SequenceMachineLib.triUpRight a n : ℤ) + SequenceMachineLib.triUpLeft a n

end

end A128229.P1529393019746383865

namespace A128229

/-- `T(T(n-1,k), T(T(n-1,k), T(n-1,k+1))+T(n-1,k+1))+T(n-1,k-1)` -/
def P1529393019746383865.Spec : Prop :=
  ∀ n, (P1529393019746383865.a n : ℤ) = A128229 (n + 1)

end A128229

/-! ## A128229.P2773778631940928517

`C(col(n)+1, C(row(n), col(n)+1))`
-/

namespace A128229.P2773778631940928517
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (SequenceMachineLib.triCol n + 1) (Nat.choose (SequenceMachineLib.triRow n) (SequenceMachineLib.triCol n + 1))

end

end A128229.P2773778631940928517

namespace A128229

/-- `C(col(n)+1, C(row(n), col(n)+1))` -/
def P2773778631940928517.Spec : Prop :=
  ∀ n, (P2773778631940928517.a n : ℤ) = A128229 (n + 1)

end A128229

/-! ## A128229.P8409271677299708946

`T(n-1,k-1)+(col(n)+2-row(n))*T(n-1,k)` with `a(0)=1`
-/

namespace A128229.P8409271677299708946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  SequenceMachineLib.triUpLeft a n + ((SequenceMachineLib.triCol n + 2 : ℤ) - (SequenceMachineLib.triRow n : ℤ)) * SequenceMachineLib.triUp a n

end

end A128229.P8409271677299708946

namespace A128229

/-- `T(n-1,k-1)+(col(n)+2-row(n))*T(n-1,k)` -/
def P8409271677299708946.Spec : Prop :=
  ∀ n, P8409271677299708946.a n = A128229 (n + 1)

end A128229

/-! ## A128229.P9549491509647400418

`T(n-1,k-1)+(T(n-2,k-1)+T(n-1,k-1)-col(n))*T(n-2,k-1)` with `a(0)=1, a(1)=1`
-/

namespace A128229.P9549491509647400418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  SequenceMachineLib.triUpLeft a n + (SequenceMachineLib.triUp2Left a n + SequenceMachineLib.triUpLeft a n - (SequenceMachineLib.triCol n : ℤ)) * SequenceMachineLib.triUp2Left a n

end

end A128229.P9549491509647400418

namespace A128229

/-- `T(n-1,k-1)+(T(n-2,k-1)+T(n-1,k-1)-col(n))*T(n-2,k-1)` -/
def P9549491509647400418.Spec : Prop :=
  ∀ n, P9549491509647400418.a n = A128229 (n + 1)

end A128229

/-!
# A128230: Expansion of exp(x)/(1 - x - x^2/2!), where a(n) = 1 + n*a(n-1) + C(n,2)*a(n-2).

The programs for A128230, the canonical program `A128230.P2849751478738025489` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A128230 has offset 0).

The definition of A128230 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `1+n*a(n-1)+C(n, 2)*a(n-2)` (program `A128230.P2849751478738025489`, by `A128230.P2849751478738025489.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A128230.P2849751478738025489

`1+n*a(n-1)+C(n, 2)*a(n-2)` with `a(0)=1, a(1)=2`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A128230

/-- `1+n*a(n-1)+C(n, 2)*a(n-2)` -/
def P2849751478738025489.Spec : Prop :=
  ∀ n, (P2849751478738025489.a n : ℤ) = A128230 n

theorem P2849751478738025489.correct : P2849751478738025489.Spec := by
  intro n
  simp only [A128230]

end A128230

/-! ## A128230.P18043850350233125683

`n*(a(n-1)+(n-1)*a(n-2)/2)+1` with `a(0)=1, a(1)=2`
-/

namespace A128230.P18043850350233125683
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 2] fun n a =>
  (n : ℚ) * (a (n - 1) + ((n : ℤ) - 1 : ℚ) * (a (n - 2) / 2)) + 1

end

end A128230.P18043850350233125683

namespace A128230

/-- `n*(a(n-1)+(n-1)*a(n-2)/2)+1` -/
def P18043850350233125683.Spec : Prop :=
  ∀ n, P18043850350233125683.a n = (A128230 n : ℚ)

end A128230

/-! ## A128230.P11618761234500360069

`A188070(n*a(n-1))` with `a(0)=1`
-/

namespace A128230.P11618761234500360069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A188070 ((n : ℤ) * a (n - 1)).toNat

end

end A128230.P11618761234500360069

namespace A128230

/-- `A188070(n*a(n-1))` -/
def P11618761234500360069.Spec : Prop :=
  ∀ n, P11618761234500360069.a n = A128230 n

end A128230

/-!
# A128231: Expansion of exp(x)/(1 - x^3/3!), where a(n) = 1 + binomial(n,3)*a(n-3).

The programs for A128231, the canonical program `A128231.P7714821244292302331` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A128231 has offset 0).

The definition of A128231 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `1+C(n, 3)*a(n-3)` (program `A128231.P7714821244292302331`, by `A128231.P7714821244292302331.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A128231.P7714821244292302331

`1+C(n, 3)*a(n-3)` with `a(0)=1, a(1)=1, a(2)=1`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A128231

/-- `1+C(n, 3)*a(n-3)` -/
def P7714821244292302331.Spec : Prop :=
  ∀ n, (P7714821244292302331.a n : ℤ) = A128231 n

theorem P7714821244292302331.correct : P7714821244292302331.Spec := by
  intro n
  simp only [A128231]

end A128231

/-! ## A128231.P3515712577368640017

`A000463(A053499(n))`
-/

namespace A128231.P3515712577368640017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000463 (A053499 n).toNat

end

end A128231.P3515712577368640017

namespace A128231

/-- `A000463(A053499(n))` -/
def P3515712577368640017.Spec : Prop :=
  ∀ n, P3515712577368640017.a n = A128231 n

end A128231

/-! ## A128231.P13109665625980797631

`A000463(A118932(n))`
-/

namespace A128231.P13109665625980797631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000463 (A118932 n).toNat

end

end A128231.P13109665625980797631

namespace A128231

/-- `A000463(A118932(n))` -/
def P13109665625980797631.Spec : Prop :=
  ∀ n, P13109665625980797631.a n = A128231 n

end A128231

/-! ## A128231.P5515317314807655639

`A065033(A218003(n))`
-/

namespace A128231.P5515317314807655639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A218003 n).toNat

end

end A128231.P5515317314807655639

namespace A128231

/-- `A065033(A218003(n))` -/
def P5515317314807655639.Spec : Prop :=
  ∀ n, P5515317314807655639.a n = A128231 n

end A128231

/-! ## A128231.P3470734746339305815

`A001281(A053499(n)+1)`
-/

namespace A128231.P3470734746339305815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A053499 n + 1).toNat

end

end A128231.P3470734746339305815

namespace A128231

/-- `A001281(A053499(n)+1)` -/
def P3470734746339305815.Spec : Prop :=
  ∀ n, P3470734746339305815.a n = A128231 n

end A128231

/-!
# A128232: Expansion of exp(x)/(1 - x^4/4!), where a(n) = 1 + C(n,4)*a(n-4).

The programs for A128232, the canonical program `A128232.P7555567706754973627` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A128232 has offset 0).

The definition of A128232 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `1+C(n, 4)*a(n-4)` (program `A128232.P7555567706754973627`, by `A128232.P7555567706754973627.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A128232.P7555567706754973627

`1+C(n, 4)*a(n-4)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=1`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A128232

/-- `1+C(n, 4)*a(n-4)` -/
def P7555567706754973627.Spec : Prop :=
  ∀ n, (P7555567706754973627.a n : ℤ) = A128232 n

theorem P7555567706754973627.correct : P7555567706754973627.Spec := by
  intro n
  simp only [A128232]

end A128232

/-! ## A128232.P10783102554893644280

`A065883(70*C(n, 8)+2*C(n, 4)+1)-C(n, 4)`
-/

namespace A128232.P10783102554893644280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065883 (70 * Nat.choose n 8 + 2 * Nat.choose n 4 + 1) - (Nat.choose n 4 : ℤ)

end

end A128232.P10783102554893644280

namespace A128232

/-- `A065883(70*C(n, 8)+2*C(n, 4)+1)-C(n, 4)` -/
def P10783102554893644280.Spec : Prop :=
  ∀ n, P10783102554893644280.a n = A128232 n

end A128232

/-! ## A128232.P10011036140036868867

`A065883(A341705(n))-A000332(n)`
-/

namespace A128232.P10011036140036868867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065883 (A341705 n).toNat - A000332 n

end

end A128232.P10011036140036868867

namespace A128232

/-- `A065883(A341705(n))-A000332(n)` -/
def P10011036140036868867.Spec : Prop :=
  ∀ n, P10011036140036868867.a n = A128232 n

end A128232

/-! ## A128232.P15066316827738177081

`A351930(n)+A038572(A000704(n)-A351930(n))`
-/

namespace A128232.P15066316827738177081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351930 n + A038572 (A000704 n - A351930 n).toNat

end

end A128232.P15066316827738177081

namespace A128232

/-- `A351930(n)+A038572(A000704(n)-A351930(n))` -/
def P15066316827738177081.Spec : Prop :=
  ∀ n, P15066316827738177081.a n = A128232 n

end A128232

/-! ## A128232.P15989301672925194839

`A002034(70*C(n, 8)+2*C(n, 4)+1)-C(n, 4)`
-/

namespace A128232.P15989301672925194839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002034 (70 * Nat.choose n 8 + 2 * Nat.choose n 4 + 1) - (Nat.choose n 4 : ℤ)

end

end A128232.P15989301672925194839

namespace A128232

/-- `A002034(70*C(n, 8)+2*C(n, 4)+1)-C(n, 4)` -/
def P15989301672925194839.Spec : Prop :=
  ∀ n, P15989301672925194839.a n = A128232 n

end A128232

/-!
# A128233: Average of p(n) and p(p(n)), where p(k) is the k-th prime.

The programs for A128233, the canonical program `A128233.P7871519001457918597` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A128233 has offset 2).

The definition of A128233 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A128233.P7871519001457918597

`(A000040(n+2)+A000040(A000040(n+2)))/2`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A128233

/-- `(A000040(n+2)+A000040(A000040(n+2)))/2` -/
def P7871519001457918597.Spec : Prop :=
  ∀ n, P7871519001457918597.a n = (A128233 (n + 2) : ℚ)

end A128233

/-! ## A128233.P433587596464947071

`A073136(n+2)/2`
-/

namespace A128233.P433587596464947071
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A073136 (n + 2) : ℚ) / 2

end

end A128233.P433587596464947071

namespace A128233

/-- `A073136(n+2)/2` -/
def P433587596464947071.Spec : Prop :=
  ∀ n, P433587596464947071.a n = (A128233 (n + 2) : ℚ)

end A128233

/-! ## A128233.P5559125936626573000

`A014688(p?[2*n+1])/2`
-/

namespace A128233.P5559125936626573000
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A014688 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)) : ℚ) / 2

end

end A128233.P5559125936626573000

namespace A128233

/-- `A014688(p?[2*n+1])/2` -/
def P5559125936626573000.Spec : Prop :=
  ∀ n, P5559125936626573000.a n = (A128233 (n + 2) : ℚ)

end A128233

/-! ## A128233.P18164149466398920277

`A001281(A073136(n+2))`
-/

namespace A128233.P18164149466398920277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A073136 (n + 2)).toNat

end

end A128233.P18164149466398920277

namespace A128233

/-- `A001281(A073136(n+2))` -/
def P18164149466398920277.Spec : Prop :=
  ∀ n, P18164149466398920277.a n = A128233 (n + 2)

end A128233

/-! ## A128233.P14473384481752550641

`A004526(A073136(n+2)+1)`
-/

namespace A128233.P14473384481752550641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A073136 (n + 2) + 1).toNat

end

end A128233.P14473384481752550641

namespace A128233

/-- `A004526(A073136(n+2)+1)` -/
def P14473384481752550641.Spec : Prop :=
  ∀ n, P14473384481752550641.a n = A128233 (n + 2)

end A128233

/-! ## A128233.P3865678656949205777

`A163294(A000040(n+2))-2`
-/

namespace A128233.P3865678656949205777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163294 (A000040 (n + 2)).toNat - 2

end

end A128233.P3865678656949205777

namespace A128233

/-- `A163294(A000040(n+2))-2` -/
def P3865678656949205777.Spec : Prop :=
  ∀ n, P3865678656949205777.a n = A128233 (n + 2)

end A128233

/-! ## A128233.P8617573630569126455

`A014688(A065091(n+1))/2`
-/

namespace A128233.P8617573630569126455
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A014688 (A065091 (n + 1)).toNat : ℚ) / 2

end

end A128233.P8617573630569126455

namespace A128233

/-- `A014688(A065091(n+1))/2` -/
def P8617573630569126455.Spec : Prop :=
  ∀ n, P8617573630569126455.a n = (A128233 (n + 2) : ℚ)

end A128233

/-! ## A128233.P10602722825886840680

`A014688(A006005(n+2))/2`
-/

namespace A128233.P10602722825886840680
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A014688 (A006005 (n + 2)).toNat : ℚ) / 2

end

end A128233.P10602722825886840680

namespace A128233

/-- `A014688(A006005(n+2))/2` -/
def P10602722825886840680.Spec : Prop :=
  ∀ n, P10602722825886840680.a n = (A128233 (n + 2) : ℚ)

end A128233

/-! ## A128233.P6214757743499662607

`A014688(A008578(n+3))/2`
-/

namespace A128233.P6214757743499662607
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A014688 (A008578 (n + 3)).toNat : ℚ) / 2

end

end A128233.P6214757743499662607

namespace A128233

/-- `A014688(A008578(n+3))/2` -/
def P6214757743499662607.Spec : Prop :=
  ∀ n, P6214757743499662607.a n = (A128233 (n + 2) : ℚ)

end A128233

/-! ## A128233.P13043112538118928664

`A014688(record[A006530(n+3)])/2`
-/

namespace A128233.P13043112538118928664
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 3)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A014688 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat : ℚ) / 2

end

end A128233.P13043112538118928664

namespace A128233

/-- `A014688(record[A006530(n+3)])/2` -/
def P13043112538118928664.Spec : Prop :=
  ∀ n, P13043112538118928664.a n = (A128233 (n + 2) : ℚ)

end A128233

/-!
# A128234: Values of n such that the average of p(n) and p(p(n)), where p(k) denotes the k-th prime, is prime.

The programs for A128234, there is no canonical definition to state claims against.
-/

/-! ## A128234.P9429061952803205164

`A000720(p?[A225861(n+1)])`
-/

namespace A128234.P9429061952803205164
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225861 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A128234.P9429061952803205164

/-! ## A128234.P3366583359952321061

`A003963(p?[A225861(n+1)])`
-/

namespace A128234.P3366583359952321061
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225861 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A128234.P3366583359952321061

/-! ## A128234.P4259085355039887672

`A026233(p?[A225861(n+1)])`
-/

namespace A128234.P4259085355039887672
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225861 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026233 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A128234.P4259085355039887672

/-! ## A128234.P7399350557215404090

`A026238(p?[A225861(n+1)])`
-/

namespace A128234.P7399350557215404090
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225861 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026238 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A128234.P7399350557215404090

/-! ## A128234.P3500849722365495175

`A049084(p?[A225861(n+1)])`
-/

namespace A128234.P3500849722365495175
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225861 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049084 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A128234.P3500849722365495175

/-! ## A128234.P14466822180193320810

`A055396(p?[A225861(n+1)])`
-/

namespace A128234.P14466822180193320810
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225861 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A128234.P14466822180193320810

/-! ## A128234.P10948064385404779004

`A056239(p?[A225861(n+1)])`
-/

namespace A128234.P10948064385404779004
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225861 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A128234.P10948064385404779004

/-! ## A128234.P11154331643714166693

`A061395(p?[A225861(n+1)])`
-/

namespace A128234.P11154331643714166693
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225861 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A128234.P11154331643714166693

/-! ## A128234.P12492932001250236877

`A252464(p?[A225861(n+1)])`
-/

namespace A128234.P12492932001250236877
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225861 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252464 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A128234.P12492932001250236877

/-!
# A128236: Number of n-node (unlabeled) graphs with girth 3.

The programs for A128236, there is no canonical definition to state claims against.
-/

/-! ## A128236.P1898964315804195576

`A000088(n+3)-A006785(n+3)`
-/

namespace A128236.P1898964315804195576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000088 (n + 3) - A006785 (n + 3)

end

end A128236.P1898964315804195576

/-! ## A128236.P2261195119137038714

`A128041(∑[n]+3)`
-/

namespace A128236.P2261195119137038714
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128041 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A128236.P2261195119137038714

/-! ## A128236.P14197290596110501248

`record[A128041(n+3)]`
-/

namespace A128236.P14197290596110501248
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128041 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A128236.P14197290596110501248

/-! ## A128236.P4501042832222472591

`A128041(A152950(n+1))+char[10]`
-/

namespace A128236.P4501042832222472591
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128041 (A152950 (n + 1)).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A128236.P4501042832222472591

/-! ## A128236.P3447471477230733612

`A332281(n)+A128041(A152950(n+1))`
-/

namespace A128236.P3447471477230733612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332281 n + A128041 (A152950 (n + 1)).toNat

end

end A128236.P3447471477230733612

/-!
# A128237: Number of n-node (unlabeled) graphs with girth 4.

The programs for A128237, there is no canonical definition to state claims against.
-/

/-! ## A128237.P12260489566112490920

`A006785(n+3)-A006787(n+3)`
-/

namespace A128237.P12260489566112490920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006785 (n + 3) - A006787 (n + 3)

end

end A128237.P12260489566112490920

/-! ## A128237.P11915671366779154906

`record[A002262(n)*A128041(n+3)]`
-/

namespace A128237.P11915671366779154906
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n * A128041 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A128237.P11915671366779154906

/-! ## A128237.P11469895848115200218

`record[A082859(n)*A128041(n+3)]`
-/

namespace A128237.P11469895848115200218
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082859 n * A128041 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A128237.P11469895848115200218

/-! ## A128237.P15381859702855873425

`record[A112367(n)*A128041(n+3)]`
-/

namespace A128237.P15381859702855873425
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112367 n * A128041 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A128237.P15381859702855873425

/-! ## A128237.P14945409321115189491

`record[A128041(n+3)*A136431(n)]`
-/

namespace A128237.P14945409321115189491
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128041 (n + 3) * A136431 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A128237.P14945409321115189491

/-!
# A128238: Number of n-node (unlabeled) graphs with girth 5.

The programs for A128238, there is no canonical definition to state claims against.
-/

/-! ## A128238.P8893063665841879444

`A008676(A149974(n)+A149965(n))`
-/

namespace A128238.P8893063665841879444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008676 (A149974 n + A149965 n).toNat

end

end A128238.P8893063665841879444

/-! ## A128238.P18107246175397452003

`A332650(n+1)-A061142(A032035(n+1))`
-/

namespace A128238.P18107246175397452003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332650 (n + 1) - A061142 (A032035 (n + 1)).toNat

end

end A128238.P18107246175397452003

/-! ## A128238.P2954951048054772857

`A076223(A196018(n))`
-/

namespace A128238.P2954951048054772857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076223 (A196018 n).toNat

end

end A128238.P2954951048054772857

/-!
# A128239: Number of n-node (unlabeled) graphs with girth 6.

The programs for A128239, there is no canonical definition to state claims against.
-/

/-! ## A128239.P17667100304089239206

`A246552(A058663(n+1)*A239230(n))`
-/

namespace A128239.P17667100304089239206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246552 (A058663 (n + 1) * A239230 n).toNat

end

end A128239.P17667100304089239206

/-! ## A128239.P6876169577578615970

`A246552(A239230(n)^A058663(n+1))`
-/

namespace A128239.P6876169577578615970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246552 (SequenceMachineLib.roundAway ((A239230 n : ℚ) ^ (A058663 (n + 1) : ℤ))).toNat

end

end A128239.P6876169577578615970

/-! ## A128239.P1777119372323235254

`A246552(A239230(n)%A079574(n+5))`
-/

namespace A128239.P1777119372323235254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246552 (Int.tmod (A239230 n) (A079574 (n + 5))).toNat

end

end A128239.P1777119372323235254

/-! ## A128239.P5623295171156502558

`A246552(C(A239230(n), A058663(n+1)))`
-/

namespace A128239.P5623295171156502558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246552 (Nat.choose (A239230 n).toNat (A058663 (n + 1)).toNat)

end

end A128239.P5623295171156502558

/-!
# A128240: Number of n-node (unlabeled) connected graphs with girth 3.

The programs for A128240, there is no canonical definition to state claims against.
-/

/-! ## A128240.P5190794150997035036

`A001349(n+1)-A024607(n+1)`
-/

namespace A128240.P5190794150997035036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001349 (n + 1) - A024607 (n + 1)

end

end A128240.P5190794150997035036

/-! ## A128240.P3044603207887021599

`A001349(n+1)-A283417(∑[n+1]+1)`
-/

namespace A128240.P3044603207887021599
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001349 (n + 1) - A283417 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A128240.P3044603207887021599

/-! ## A128240.P5820117559456022997

`A201922(A000124(n))-A024607(n+1)`
-/

namespace A128240.P5820117559456022997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201922 (A000124 n).toNat - A024607 (n + 1)

end

end A128240.P5820117559456022997

/-! ## A128240.P10237245688653895187

`A201922(A000124(n))-A283417(∑[n+1]+1)`
-/

namespace A128240.P10237245688653895187
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201922 (A000124 n).toNat - A283417 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A128240.P10237245688653895187

/-! ## A128240.P17730569353212999549

`A003049(n+1)+A158007(n+1)-A024607(n+1)`
-/

namespace A128240.P17730569353212999549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003049 (n + 1) + (A158007 (n + 1) - A024607 (n + 1))

end

end A128240.P17730569353212999549

/-!
# A128241: Number of n-node (unlabeled) connected graphs with girth 4.

The programs for A128241, there is no canonical definition to state claims against.
-/

/-! ## A128241.P14741789802799074977

`A024607(n+3)-A126757(n+3)`
-/

namespace A128241.P14741789802799074977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024607 (n + 3) - A126757 (n + 3)

end

end A128241.P14741789802799074977

/-! ## A128241.P14666324029213569303

`record[A002262(n)*A128042(n+3)]`
-/

namespace A128241.P14666324029213569303
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n * A128042 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A128241.P14666324029213569303

/-! ## A128241.P7481091972414795869

`record[A082859(n)*A128042(n+3)]`
-/

namespace A128241.P7481091972414795869
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082859 n * A128042 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A128241.P7481091972414795869

/-! ## A128241.P5520632341640933476

`record[A128042(n+3)*A139600(n)]`
-/

namespace A128241.P5520632341640933476
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128042 (n + 3) * A139600 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A128241.P5520632341640933476

/-! ## A128241.P6724610495057341138

`record[A128042(n+3)*A141169(n)]`
-/

namespace A128241.P6724610495057341138
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128042 (n + 3) * A141169 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A128241.P6724610495057341138

/-!
# A128242: Number of n-node (unlabeled) connected graphs with girth 5.

The programs for A128242, there is no canonical definition to state claims against.
-/

/-! ## A128242.P16241703143225132718

`Δ[A008617(A148737(n))]`
-/

namespace A128242.P16241703143225132718
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008617 (A148737 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A128242.P16241703143225132718

/-! ## A128242.P13929039095471657190

`A165190(A122446(n+1)-n)`
-/

namespace A128242.P13929039095471657190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165190 (A122446 (n + 1) - (n : ℤ)).toNat

end

end A128242.P13929039095471657190

/-! ## A128242.P6998560943958701534

`A008651(A085204(n)+A039648(n))`
-/

namespace A128242.P6998560943958701534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008651 (A085204 n + A039648 n).toNat

end

end A128242.P6998560943958701534

/-! ## A128242.P12107933578053072626

`A008676(A149604(n)+A012855(n))`
-/

namespace A128242.P12107933578053072626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008676 (A149604 n + A012855 n).toNat

end

end A128242.P12107933578053072626

/-!
# A128243: Number of n-node (unlabeled) connected graphs with girth 6.

The programs for A128243, there is no canonical definition to state claims against.
-/

/-! ## A128243.P16722285136015858829

`A126257(A056359(n+1)+1)`
-/

namespace A128243.P16722285136015858829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126257 (A056359 (n + 1) + 1).toNat

end

end A128243.P16722285136015858829

/-! ## A128243.P9004507586448885235

`A110654(C(A056359(n+1), A175010(n+1)))`
-/

namespace A128243.P9004507586448885235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (Nat.choose (A056359 (n + 1)).toNat (A175010 (n + 1)).toNat)

end

end A128243.P9004507586448885235

/-! ## A128243.P606828982199238012

`A110654(A056359(n+1)%A006785(2*n+1))`
-/

namespace A128243.P606828982199238012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (Int.tmod (A056359 (n + 1)) (A006785 (2 * n + 1))).toNat

end

end A128243.P606828982199238012

/-! ## A128243.P7929378939506312969

`A110654(A175010(n+1)²²*A056359(n+1))`
-/

namespace A128243.P7929378939506312969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 ((A175010 (n + 1) ^ 2) ^ 2 * A056359 (n + 1)).toNat

end

end A128243.P7929378939506312969

/-!
# A128244: Let s be the sum of the digits of n; a(n) is the product of the digits of s.

The programs for A128244, the canonical program `A128244.P376771842225601192` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A128244 has offset 1).

The definition of A128244 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007953, A007954, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A128244.P376771842225601192

`A007954(A007953(n+1))`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A128244

/-- `A007954(A007953(n+1))` -/
def P376771842225601192.Spec : Prop :=
  ∀ n, P376771842225601192.a n = A128244 (n + 1)

theorem P376771842225601192.correct : P376771842225601192.Spec := by
  intro n
  simp only [A128244, Nat.add_sub_cancel]

end A128244

/-! ## A128244.P14051433736175562421

`∏{digits}[∑{digits}[n+1, #], #]`
-/

namespace A128244.P14051433736175562421
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f2 n)).map fun (x : ℕ) => x).sum

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).prod

end

end A128244.P14051433736175562421

namespace A128244

/-- `∏{digits}[∑{digits}[n+1, #], #]` -/
def P14051433736175562421.Spec : Prop :=
  ∀ n, (P14051433736175562421.a n : ℤ) = A128244 (n + 1)

end A128244

/-! ## A128244.P10190327965105780935

`∏{digits}[log2(∏{digits}[n+1, 2^#]), #]`
-/

namespace A128244.P10190327965105780935
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 ((((SequenceMachineLib.digits10 (f2 n)).map fun (x : ℕ) => 2 ^ x).prod : ℕ) : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (SequenceMachineLib.roundAway (f1 n)).natAbs).map fun (x : ℕ) => x).prod

end

end A128244.P10190327965105780935

namespace A128244

/-- `∏{digits}[log2(∏{digits}[n+1, 2^#]), #]` -/
def P10190327965105780935.Spec : Prop :=
  ∀ n, (P10190327965105780935.a n : ℤ) = A128244 (n + 1)

end A128244

/-! ## A128244.P17220882433943867243

`A007954(∑{digits}[n+1, #])`
-/

namespace A128244.P17220882433943867243
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007954 ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum

end

end A128244.P17220882433943867243

namespace A128244

/-- `A007954(∑{digits}[n+1, #])` -/
def P17220882433943867243.Spec : Prop :=
  ∀ n, P17220882433943867243.a n = A128244 (n + 1)

end A128244

/-! ## A128244.P379870887490756091

`∏{digits}[A007953(n+1), #]`
-/

namespace A128244.P379870887490756091
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).prod

end

end A128244.P379870887490756091

namespace A128244

/-- `∏{digits}[A007953(n+1), #]` -/
def P379870887490756091.Spec : Prop :=
  ∀ n, (P379870887490756091.a n : ℤ) = A128244 (n + 1)

end A128244

/-! ## A128244.P8160332706692564907

`∏{digits}[sqrt(A118881(n+1)), #]`
-/

namespace A128244.P8160332706692564907
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A118881 (n + 1) : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (SequenceMachineLib.roundAway (f1 n)).natAbs).map fun (x : ℕ) => x).prod

end

end A128244.P8160332706692564907

namespace A128244

/-- `∏{digits}[sqrt(A118881(n+1)), #]` -/
def P8160332706692564907.Spec : Prop :=
  ∀ n, (P8160332706692564907.a n : ℤ) = A128244 (n + 1)

end A128244

/-! ## A128244.P5108705474215151954

`∏{digits}[log2(A329562(n+1)), #]`
-/

namespace A128244.P5108705474215151954
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A329562 (n + 1) : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (SequenceMachineLib.roundAway (f1 n)).natAbs).map fun (x : ℕ) => x).prod

end

end A128244.P5108705474215151954

namespace A128244

/-- `∏{digits}[log2(A329562(n+1)), #]` -/
def P5108705474215151954.Spec : Prop :=
  ∀ n, (P5108705474215151954.a n : ℤ) = A128244 (n + 1)

end A128244

/-! ## A128244.P10134071461131399025

`A007954(Δ[A037123(n)])`
-/

namespace A128244.P10134071461131399025
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037123 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007954 (f1 (n + 1) - f1 n).toNat

end

end A128244.P10134071461131399025

namespace A128244

/-- `A007954(Δ[A037123(n)])` -/
def P10134071461131399025.Spec : Prop :=
  ∀ n, P10134071461131399025.a n = A128244 (n + 1)

end A128244

/-! ## A128244.P7542694145388002444

`A007954(sqrt(A118881(n+1)))`
-/

namespace A128244.P7542694145388002444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007954 (SequenceMachineLib.roundAway (Real.sqrt (A118881 (n + 1) : ℝ))).toNat

end

end A128244.P7542694145388002444

namespace A128244

/-- `A007954(sqrt(A118881(n+1)))` -/
def P7542694145388002444.Spec : Prop :=
  ∀ n, P7542694145388002444.a n = A128244 (n + 1)

end A128244

/-! ## A128244.P7020646388845846246

`A007954(log2(A329562(n+1)))`
-/

namespace A128244.P7020646388845846246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007954 (SequenceMachineLib.roundAway (Real.logb 2 (A329562 (n + 1) : ℝ))).toNat

end

end A128244.P7020646388845846246

namespace A128244

/-- `A007954(log2(A329562(n+1)))` -/
def P7020646388845846246.Spec : Prop :=
  ∀ n, P7020646388845846246.a n = A128244 (n + 1)

end A128244

/-! ## A128244.P283715382800613790

`A007954(A062028(n+1)-(n+1))`
-/

namespace A128244.P283715382800613790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007954 (A062028 (n + 1) - (n + 1 : ℤ)).toNat

end

end A128244.P283715382800613790

namespace A128244

/-- `A007954(A062028(n+1)-(n+1))` -/
def P283715382800613790.Spec : Prop :=
  ∀ n, P283715382800613790.a n = A128244 (n + 1)

theorem P283715382800613790.correct : P283715382800613790.Spec := by
  intro n
  simp only [A128244, Nat.add_sub_cancel, A128244.P283715382800613790.a, A128244.P376771842225601192.a, A007953, A007953.P3472751987379697826.a, A007954, A007954.P17322577641810457605.a, A062028, A062028.P8420805724104474199.a, A054899, A054899.P10770181254942084517.a, A187844, A187844.P2226367484960758357.f1, A187844.P2226367484960758357.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A128244

/-! ## A128244.P5341734676894012251

`A007954(A057147(n+1)/(n+1))`
-/

namespace A128244.P5341734676894012251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007954 (SequenceMachineLib.roundAway ((A057147 (n + 1) : ℚ) / (n + 1 : ℚ))).toNat

end

end A128244.P5341734676894012251

namespace A128244

/-- `A007954(A057147(n+1)/(n+1))` -/
def P5341734676894012251.Spec : Prop :=
  ∀ n, P5341734676894012251.a n = A128244 (n + 1)

end A128244

/-! ## A128244.P16933059493848316328

`A007954(A118137(n)-A007953(n))`
-/

namespace A128244.P16933059493848316328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007954 (A118137 n - A007953 n).toNat

end

end A128244.P16933059493848316328

namespace A128244

/-- `A007954(A118137(n)-A007953(n))` -/
def P16933059493848316328.Spec : Prop :=
  ∀ n, P16933059493848316328.a n = A128244 (n + 1)

theorem P16933059493848316328.correct : P16933059493848316328.Spec := by
  intro n
  simp only [A128244, Nat.add_sub_cancel, A128244.P16933059493848316328.a, A128244.P376771842225601192.a, A007953, A007953.P3472751987379697826.a, A007954, A007954.P17322577641810457605.a, A118137, A118137.P7047369831656418636.a, A054899, A054899.P10770181254942084517.a, A187844, A187844.P2226367484960758357.f1, A187844.P2226367484960758357.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A128244

/-! ## A128244.P5787316041263240617

`A007954(A037123(n+1)-A037123(n))`
-/

namespace A128244.P5787316041263240617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007954 (A037123 (n + 1) - A037123 n).toNat

end

end A128244.P5787316041263240617

namespace A128244

/-- `A007954(A037123(n+1)-A037123(n))` -/
def P5787316041263240617.Spec : Prop :=
  ∀ n, P5787316041263240617.a n = A128244 (n + 1)

end A128244

/-! ## A128244.P14179789607828910994

`A007954(A169805(n+1)/2)`
-/

namespace A128244.P14179789607828910994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007954 (SequenceMachineLib.roundAway ((A169805 (n + 1) : ℚ) / 2)).toNat

end

end A128244.P14179789607828910994

namespace A128244

/-- `A007954(A169805(n+1)/2)` -/
def P14179789607828910994.Spec : Prop :=
  ∀ n, P14179789607828910994.a n = A128244 (n + 1)

end A128244

/-! ## A128244.P8579446815882117433

`A007954(A160939(n+2)-(n+2))`
-/

namespace A128244.P8579446815882117433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007954 (A160939 (n + 2) - (n + 2 : ℤ)).toNat

end

end A128244.P8579446815882117433

namespace A128244

/-- `A007954(A160939(n+2)-(n+2))` -/
def P8579446815882117433.Spec : Prop :=
  ∀ n, P8579446815882117433.a n = A128244 (n + 1)

theorem P8579446815882117433.correct : P8579446815882117433.Spec := by
  intro n
  simp only [A128244, Nat.add_sub_cancel, A128244.P8579446815882117433.a, A128244.P376771842225601192.a, A007953, A007953.P3472751987379697826.a, A007954, A007954.P17322577641810457605.a, A160939, A160939.P10335950988782502839.a, A054899, A054899.P10770181254942084517.a, A062028, A062028.P8420805724104474199.a, A187844, A187844.P2226367484960758357.f1, A187844.P2226367484960758357.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A128244

/-! ## A128244.P9136281282791643847

`A007954(A062329(n+1)+A007954(n+1))`
-/

namespace A128244.P9136281282791643847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007954 (A062329 (n + 1) + A007954 (n + 1)).toNat

end

end A128244.P9136281282791643847

namespace A128244

/-- `A007954(A062329(n+1)+A007954(n+1))` -/
def P9136281282791643847.Spec : Prop :=
  ∀ n, P9136281282791643847.a n = A128244 (n + 1)

end A128244

/-! ## A128244.P9311531584831802523

`A007954(A061762(n+1)-A007954(n+1))`
-/

namespace A128244.P9311531584831802523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007954 (A061762 (n + 1) - A007954 (n + 1)).toNat

end

end A128244.P9311531584831802523

namespace A128244

/-- `A007954(A061762(n+1)-A007954(n+1))` -/
def P9311531584831802523.Spec : Prop :=
  ∀ n, P9311531584831802523.a n = A128244 (n + 1)

theorem P9311531584831802523.correct : P9311531584831802523.Spec := by
  intro n
  simp only [A128244, Nat.add_sub_cancel, A128244.P9311531584831802523.a, A128244.P376771842225601192.a, A007953, A007953.P3472751987379697826.a, A007954, A007954.P17322577641810457605.a, A061762, A061762.P2226516995009236848.a, A054899, A054899.P10770181254942084517.a, A187844, A187844.P2226367484960758357.f1, A187844.P2226367484960758357.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A128244

/-! ## A128244.P16843549434798275213

`A010879(A108773(n+1))`
-/

namespace A128244.P16843549434798275213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010879 (A108773 (n + 1)).toNat

end

end A128244.P16843549434798275213

namespace A128244

/-- `A010879(A108773(n+1))` -/
def P16843549434798275213.Spec : Prop :=
  ∀ n, P16843549434798275213.a n = A128244 (n + 1)

end A128244

/-! ## A128244.P6876516400279609623

`A144468(A108773(A059626(n+1)))`
-/

namespace A128244.P6876516400279609623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144468 (A108773 (A059626 (n + 1)).toNat).toNat

end

end A128244.P6876516400279609623

namespace A128244

/-- `A144468(A108773(A059626(n+1)))` -/
def P6876516400279609623.Spec : Prop :=
  ∀ n, P6876516400279609623.a n = A128244 (n + 1)

end A128244

/-!
# A128245: Smallest of three consecutive composite numbers whose sum is prime.

The programs for A128245, the canonical program `A128245.P15864719787506353209` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A128245 has offset 1).

The definition of A128245 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 253 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A128245.P13256649421098908349

`A126760(A060328(n+1))-2`
-/

namespace A128245.P13256649421098908349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126760 (A060328 (n + 1)).toNat - 2

end

end A128245.P13256649421098908349

namespace A128245

/-- `A126760(A060328(n+1))-2` -/
def P13256649421098908349.Spec : Prop :=
  ∀ n, P13256649421098908349.a n = A128245 (n + 1)

end A128245

/-! ## A128245.P7995808305809820220

`A126760(A167610(n+3))-2`
-/

namespace A128245.P7995808305809820220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126760 (A167610 (n + 3)).toNat - 2

end

end A128245.P7995808305809820220

namespace A128245

/-- `A126760(A167610(n+3))-2` -/
def P7995808305809820220.Spec : Prop :=
  ∀ n, P7995808305809820220.a n = A128245 (n + 1)

end A128245

/-! ## A128245.P9151485734532414891

`A126760(p?[A166039(n+3)])-2`
-/

namespace A128245.P9151485734532414891
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166039 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126760 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat - 2

end

end A128245.P9151485734532414891

namespace A128245

/-- `A126760(p?[A166039(n+3)])-2` -/
def P9151485734532414891.Spec : Prop :=
  ∀ n, P9151485734532414891.a n = A128245 (n + 1)

end A128245

/-! ## A128245.P12459321633068806559

`A126760(p?[A101203(n+5)-A101203(n+1)])-2`
-/

namespace A128245.P12459321633068806559
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101203 (n + 5) - A101203 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126760 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat - 2

end

end A128245.P12459321633068806559

namespace A128245

/-- `A126760(p?[A101203(n+5)-A101203(n+1)])-2` -/
def P12459321633068806559.Spec : Prop :=
  ∀ n, P12459321633068806559.a n = A128245 (n + 1)

end A128245

/-! ## A128245.P2674247613581539493

`A002264(p?[A166039(n+3)])-1`
-/

namespace A128245.P2674247613581539493
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166039 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat - 1

end

end A128245.P2674247613581539493

namespace A128245

/-- `A002264(p?[A166039(n+3)])-1` -/
def P2674247613581539493.Spec : Prop :=
  ∀ n, P2674247613581539493.a n = A128245 (n + 1)

end A128245

/-! ## A128245.P9932096927981878049

`A008620(p?[A166039(n+3)])-2`
-/

namespace A128245.P9932096927981878049
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166039 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat - 2

end

end A128245.P9932096927981878049

namespace A128245

/-- `A008620(p?[A166039(n+3)])-2` -/
def P9932096927981878049.Spec : Prop :=
  ∀ n, P9932096927981878049.a n = A128245 (n + 1)

end A128245

/-! ## A128245.P7087617065429669731

`A087508(p?[A166039(n+3)])-2`
-/

namespace A128245.P7087617065429669731
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166039 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087508 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat - 2

end

end A128245.P7087617065429669731

namespace A128245

/-- `A087508(p?[A166039(n+3)])-2` -/
def P7087617065429669731.Spec : Prop :=
  ∀ n, P7087617065429669731.a n = A128245 (n + 1)

end A128245

/-! ## A128245.P13793387039909277483

`A126759(p?[A166039(n+3)])-3`
-/

namespace A128245.P13793387039909277483
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166039 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126759 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat - 3

end

end A128245.P13793387039909277483

namespace A128245

/-- `A126759(p?[A166039(n+3)])-3` -/
def P13793387039909277483.Spec : Prop :=
  ∀ n, P13793387039909277483.a n = A128245 (n + 1)

end A128245

/-! ## A128245.P3453572702483080312

`A086161(p?[A166039(n+3)]-7)`
-/

namespace A128245.P3453572702483080312
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166039 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086161 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - 7).toNat

end

end A128245.P3453572702483080312

namespace A128245

/-- `A086161(p?[A166039(n+3)]-7)` -/
def P3453572702483080312.Spec : Prop :=
  ∀ n, P3453572702483080312.a n = A128245 (n + 1)

end A128245

/-! ## A128245.P15864719787506353209

`A002264(p?[A101203(n+5)-A101203(n+1)])-1`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A128245

/-- `A002264(p?[A101203(n+5)-A101203(n+1)])-1` -/
def P15864719787506353209.Spec : Prop :=
  ∀ n, P15864719787506353209.a n = A128245 (n + 1)

theorem P15864719787506353209.correct : P15864719787506353209.Spec := by
  intro n
  simp only [A128245, Nat.add_sub_cancel]

end A128245

/-! ## A128245.P1696279841599294843

`A008620(p?[A101203(n+5)-A101203(n+1)])-2`
-/

namespace A128245.P1696279841599294843
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101203 (n + 5) - A101203 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat - 2

end

end A128245.P1696279841599294843

namespace A128245

/-- `A008620(p?[A101203(n+5)-A101203(n+1)])-2` -/
def P1696279841599294843.Spec : Prop :=
  ∀ n, P1696279841599294843.a n = A128245 (n + 1)

theorem P1696279841599294843.correct : P1696279841599294843.Spec := by
  intro n
  simp only [A128245, Nat.add_sub_cancel, A128245.P1696279841599294843.f1, A128245.P1696279841599294843.a, A128245.P15864719787506353209.f1, A128245.P15864719787506353209.a, A002264, A002264.P5647656940077635922.a, A008620, A008620.P16090772857505074278.a, A101203, A101203.P14556017355783921895.a, A191558, A191558.P14009675995309042097.a, A061397, A061397.P17730824645895443051.a, A000027, A000027.P10331202704469894836.a, A010051, A010051.P2964579406648181973.f1, A010051.P2964579406648181973.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A128245

/-! ## A128245.P13924478030906192656

`A087508(p?[A101203(n+5)-A101203(n+1)])-2`
-/

namespace A128245.P13924478030906192656
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101203 (n + 5) - A101203 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087508 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat - 2

end

end A128245.P13924478030906192656

namespace A128245

/-- `A087508(p?[A101203(n+5)-A101203(n+1)])-2` -/
def P13924478030906192656.Spec : Prop :=
  ∀ n, P13924478030906192656.a n = A128245 (n + 1)

end A128245

/-! ## A128245.P17271532352212085274

`A126759(p?[A101203(n+5)-A101203(n+1)])-3`
-/

namespace A128245.P17271532352212085274
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101203 (n + 5) - A101203 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126759 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat - 3

end

end A128245.P17271532352212085274

namespace A128245

/-- `A126759(p?[A101203(n+5)-A101203(n+1)])-3` -/
def P17271532352212085274.Spec : Prop :=
  ∀ n, P17271532352212085274.a n = A128245 (n + 1)

end A128245

/-! ## A128245.P16915003175193571707

`A086161(p?[A101203(n+5)-A101203(n+1)]-7)`
-/

namespace A128245.P16915003175193571707
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101203 (n + 5) - A101203 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086161 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - 7).toNat

end

end A128245.P16915003175193571707

namespace A128245

/-- `A086161(p?[A101203(n+5)-A101203(n+1)]-7)` -/
def P16915003175193571707.Spec : Prop :=
  ∀ n, P16915003175193571707.a n = A128245 (n + 1)

end A128245

/-!
# A128247: a(n) = A001783(n)/A038610(n).

The programs for A128247, there is no canonical definition to state claims against.
-/

/-! ## A128247.P3447801326928287027

`A001783(n+1)/A038610(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A128247.P3447801326928287027
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001783 (n + 1) : ℚ) / (A038610 (n + 1) : ℚ)

end

end A128247.P3447801326928287027

/-! ## A128247.P18193774629850937842

`A124441(n+1)/A038610(n+1)*A124442(n+1)`
-/

namespace A128247.P18193774629850937842
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A124441 (n + 1) : ℚ) / (A038610 (n + 1) : ℚ) * (A124442 (n + 1) : ℚ)

end

end A128247.P18193774629850937842

/-! ## A128247.P12921448648903246310

`A025527(n+1)/A066570(n+1)*A064446(n+1)`
-/

namespace A128247.P12921448648903246310
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A025527 (n + 1) : ℚ) / (A066570 (n + 1) : ℚ) * (A064446 (n + 1) : ℚ)

end

end A128247.P12921448648903246310

/-! ## A128247.P10285341964151379713

`lcm(A001783(n+1), A003418(n))/A003418(n)`
-/

namespace A128247.P10285341964151379713
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (A001783 (n + 1)) (A003418 n) : ℚ) / (A003418 n : ℚ)

end

end A128247.P10285341964151379713

/-! ## A128247.P264783598486902654

`A001783(n+1)/gcd(A003418(n), A095996(n+1))`
-/

namespace A128247.P264783598486902654
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001783 (n + 1) : ℚ) / (Int.gcd (A003418 n) (A095996 (n + 1)) : ℚ)

end

end A128247.P264783598486902654

/-! ## A128247.P15070508449345045238

`A001783(n+1)/A002944(n+1)*A133910(n+1)`
-/

namespace A128247.P15070508449345045238
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001783 (n + 1) : ℚ) / (A002944 (n + 1) : ℚ) * (A133910 (n + 1) : ℚ)

end

end A128247.P15070508449345045238

/-!
# A128248: a(n) = Sum_{k=1..phi(n)} t(k,n)*(-1)^k, where t(k,n) is the k-th positive integer that is coprime to n and phi(n) = A000010(n).

The programs for A128248, there is no canonical definition to state claims against.
-/

/-! ## A128248.P5803223076695085026

`A209281(A054432(n+1))-1`
-/

namespace A128248.P5803223076695085026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209281 (A054432 (n + 1)).toNat - 1

end

end A128248.P5803223076695085026

/-!
# A128249: T(n,k) is the number of unlabeled acyclic single-source automata with n transient states on a (k+1)-letter input alphabet.

The programs for A128249, there is no canonical definition to state claims against.
-/

/-! ## A128249.P12223394301782555628

`A102012(A303367(n+1))`
-/

namespace A128249.P12223394301782555628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102012 (A303367 (n + 1)).toNat

end

end A128249.P12223394301782555628

/-! ## A128249.P8526443559421201096

`A320904(A293934(n+1))`
-/

namespace A128249.P8526443559421201096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320904 (A293934 (n + 1)).toNat

end

end A128249.P8526443559421201096

/-! ## A128249.P1671508767292107874

`A102012(∑[A146717(n+1)])`
-/

namespace A128249.P1671508767292107874
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146717 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102012 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A128249.P1671508767292107874

/-!
# A128250: LCG periods: periods of the output sequences produced by multiplicative linear congruential generators (LCGs) with prime moduli, for all valid combinations of multiplier and modulus.

The programs for A128250, there is no canonical definition to state claims against.
-/

/-! ## A128250.P2998125141806577526

`A086145(n+1)%19`
-/

namespace A128250.P2998125141806577526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A086145 (n + 1)) 19

end

end A128250.P2998125141806577526

/-! ## A128250.P11061184411063046106

`A003965(A086145(n+1))`
-/

namespace A128250.P11061184411063046106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003965 (A086145 (n + 1)).toNat

end

end A128250.P11061184411063046106

/-! ## A128250.P7653003327685884205

`A086145(A118759(n)+1)`
-/

namespace A128250.P7653003327685884205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086145 (A118759 n + 1).toNat

end

end A128250.P7653003327685884205

/-! ## A128250.P12625327674963742926

`A086145(A296879(n+1))`
-/

namespace A128250.P12625327674963742926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086145 (A296879 (n + 1)).toNat

end

end A128250.P12625327674963742926

/-! ## A128250.P9455950981112626136

`A086145(A296894(n+1))`
-/

namespace A128250.P9455950981112626136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086145 (A296894 (n + 1)).toNat

end

end A128250.P9455950981112626136

/-! ## A128250.P145961246472179912

`A086145(A033619(n+2))`
-/

namespace A128250.P145961246472179912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086145 (A033619 (n + 2)).toNat

end

end A128250.P145961246472179912

/-! ## A128250.P17242226033687384915

`and(-A017080(n), A086145(n+1))`
-/

namespace A128250.P17242226033687384915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-A017080 n) (A086145 (n + 1))

end

end A128250.P17242226033687384915

/-! ## A128250.P3327810040311482639

`∑{d}[A086145(n+1), dr(A000010(#))]`
-/

namespace A128250.P3327810040311482639
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086145 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, SequenceMachineLib.digitalRoot (A000010 d)

end

end A128250.P3327810040311482639

/-! ## A128250.P1095765324857550021

`lcm(A007318(val(n+1, 4)+1), A086145(n+1))`
-/

namespace A128250.P1095765324857550021
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A007318 (SequenceMachineLib.valuation (n + 1) 4 + 1)) (A086145 (n + 1))

end

end A128250.P1095765324857550021

/-!
# A128251: n^4 - 1 divided by its largest fourth power divisor.

The programs for A128251, the canonical program `A128251.P3815899443712150694` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A128251 has offset 2).

The definition of A128251 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A128251.P3815899443712150694

`((n+2)^4-1)/A008835((n+2)^4-1)`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A128251

/-- `((n+2)^4-1)/A008835((n+2)^4-1)` -/
def P3815899443712150694.Spec : Prop :=
  ∀ n, P3815899443712150694.a n = (A128251 (n + 2) : ℚ)

end A128251

/-! ## A128251.P18169527082559214964

`A061041((2*(n+2))²)`
-/

namespace A128251.P18169527082559214964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061041 ((2 * (n + 2)) ^ 2)

end

end A128251.P18169527082559214964

namespace A128251

/-- `A061041((2*(n+2))²)` -/
def P18169527082559214964.Spec : Prop :=
  ∀ n, P18169527082559214964.a n = A128251 (n + 2)

end A128251

/-! ## A128251.P11357044245501375230

`A174680((2*(n+2))²)`
-/

namespace A128251.P11357044245501375230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174680 ((2 * (n + 2)) ^ 2)

end

end A128251.P11357044245501375230

namespace A128251

/-- `A174680((2*(n+2))²)` -/
def P11357044245501375230.Spec : Prop :=
  ∀ n, P11357044245501375230.a n = A128251 (n + 2)

end A128251

/-! ## A128251.P17434685646949119690

`A220838(A022998(n+2)²+1)`
-/

namespace A128251.P17434685646949119690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220838 (A022998 (n + 2) ^ 2 + 1).toNat

end

end A128251.P17434685646949119690

namespace A128251

/-- `A220838(A022998(n+2)²+1)` -/
def P17434685646949119690.Spec : Prop :=
  ∀ n, P17434685646949119690.a n = A128251 (n + 2)

end A128251

/-! ## A128251.P15370496462117683790

`A065883(A123865(n+2))`
-/

namespace A128251.P15370496462117683790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065883 (A123865 (n + 2)).toNat

end

end A128251.P15370496462117683790

namespace A128251

/-- `A065883(A123865(n+2))` -/
def P15370496462117683790.Spec : Prop :=
  ∀ n, P15370496462117683790.a n = A128251 (n + 2)

end A128251

/-!
# A128255: A114219(signed) * A007318.

The programs for A128255, there is no canonical definition to state claims against.
-/

/-! ## A128255.P17422114502005353522

`A103450(n)+T(n-2,k)` with `a(0)=1`
-/

namespace A128255.P17422114502005353522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A103450 n + SequenceMachineLib.triUp2 a n

end

end A128255.P17422114502005353522

/-! ## A128255.P3447698747134274321

`A093375(n+1)-T(n-1,k)` with `a(0)=1`
-/

namespace A128255.P3447698747134274321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A093375 (n + 1) - SequenceMachineLib.triUp a n

end

end A128255.P3447698747134274321

/-! ## A128255.P2759954967685142714

`A071919(n)+T(n-1,k-1)+T(n-2,k)+T(n-2,k-1)` with `a(0)=1`
-/

namespace A128255.P2759954967685142714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A071919 n + (SequenceMachineLib.triUpLeft a n + SequenceMachineLib.triUp2 a n + SequenceMachineLib.triUp2Left a n)

end

end A128255.P2759954967685142714

/-! ## A128255.P4069558837089201989

`T(n-2,k)+A127954(n+2)-Δ[A097805(n)]` with `a(0)=1`
-/

namespace A128255.P4069558837089201989
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097805 n

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  SequenceMachineLib.triUp2 a n + (A127954 (n + 2) - (f1 (n + 1) - f1 n))

end

end A128255.P4069558837089201989

/-! ## A128255.P6917246397910172404

`T(n-2,k)+A097805(n)+A002262(n+1)*A097805(n+1)` with `a(0)=1`
-/

namespace A128255.P6917246397910172404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  SequenceMachineLib.triUp2 a n + (A097805 n + A002262 (n + 1) * A097805 (n + 1))

end

end A128255.P6917246397910172404

/-!
# A128256: Matrix product of (-1)^(n-k) * A004736(n+1,k+1) with A007318 (Pascal's triangle).

The programs for A128256, the canonical program `A128256.P1400701575165243337` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A128256 has offset 0).

The definition of A128256 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A128256.P1400701575165243337

`A059260(n)-T(n-1,k)` with `a(0)=1`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A128256

/-- `A059260(n)-T(n-1,k)` -/
def P1400701575165243337.Spec : Prop :=
  ∀ n, P1400701575165243337.a n = A128256 n

theorem P1400701575165243337.correct : P1400701575165243337.Spec := by
  intro n
  simp only [A128256]

end A128256

/-! ## A128256.P14509841922133982821

`A007318(n)-T(n-2,k)-2*T(n-1,k)` with `a(0)=1`
-/

namespace A128256.P14509841922133982821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A007318 n - SequenceMachineLib.triUp2 a n - 2 * SequenceMachineLib.triUp a n

end

end A128256.P14509841922133982821

namespace A128256

/-- `A007318(n)-T(n-2,k)-2*T(n-1,k)` -/
def P14509841922133982821.Spec : Prop :=
  ∀ n, P14509841922133982821.a n = A128256 n

end A128256

/-! ## A128256.P2151278303365685394

`A010816(n)+2*T(n-1,k)+T(n-1,k-1)-T(n-2,k)-T(n-2,k-1)` with `a(0)=1`
-/

namespace A128256.P2151278303365685394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A010816 n + (2 * SequenceMachineLib.triUp a n + SequenceMachineLib.triUpLeft a n - SequenceMachineLib.triUp2 a n - SequenceMachineLib.triUp2Left a n)

end

end A128256.P2151278303365685394

namespace A128256

/-- `A010816(n)+2*T(n-1,k)+T(n-1,k-1)-T(n-2,k)-T(n-2,k-1)` -/
def P2151278303365685394.Spec : Prop :=
  ∀ n, P2151278303365685394.a n = A128256 n

end A128256

/-! ## A128256.P13755545027951427287

`(A062534(n)+A059260(n))/2`
-/

namespace A128256.P13755545027951427287
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A062534 n + A059260 n : ℚ) / 2

end

end A128256.P13755545027951427287

namespace A128256

/-- `(A062534(n)+A059260(n))/2` -/
def P13755545027951427287.Spec : Prop :=
  ∀ n, P13755545027951427287.a n = (A128256 n : ℚ)

end A128256

/-! ## A128256.P16516494989913745205

`A062534(comp[∑[n]])`
-/

namespace A128256.P16516494989913745205
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062534 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A128256.P16516494989913745205

namespace A128256

/-- `A062534(comp[∑[n]])` -/
def P16516494989913745205.Spec : Prop :=
  ∀ n, P16516494989913745205.a n = A128256 n

end A128256

/-! ## A128256.P8081718944006741687

`abs(A097807(n))*A062534(A014132(n+1))`
-/

namespace A128256.P8081718944006741687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A097807 n| * A062534 (A014132 (n + 1)).toNat

end

end A128256.P8081718944006741687

namespace A128256

/-- `abs(A097807(n))*A062534(A014132(n+1))` -/
def P8081718944006741687.Spec : Prop :=
  ∀ n, P8081718944006741687.a n = A128256 n

end A128256

/-! ## A128256.P15333965352218682985

`A062534(A014132(n+1))+A000007(n+1)`
-/

namespace A128256.P15333965352218682985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062534 (A014132 (n + 1)).toNat + A000007 (n + 1)

end

end A128256.P15333965352218682985

namespace A128256

/-- `A062534(A014132(n+1))+A000007(n+1)` -/
def P15333965352218682985.Spec : Prop :=
  ∀ n, P15333965352218682985.a n = A128256 n

end A128256

/-! ## A128256.P10019044794223361982

`A062534(A014132(n+1))+A000038(n+1)`
-/

namespace A128256.P10019044794223361982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062534 (A014132 (n + 1)).toNat + A000038 (n + 1)

end

end A128256.P10019044794223361982

namespace A128256

/-- `A062534(A014132(n+1))+A000038(n+1)` -/
def P10019044794223361982.Spec : Prop :=
  ∀ n, P10019044794223361982.a n = A128256 n

end A128256

/-! ## A128256.P10293666777589445378

`A062534(A014132(n+1))/A007318(C(2, n))`
-/

namespace A128256.P10293666777589445378
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A062534 (A014132 (n + 1)).toNat : ℚ) / (A007318 (Nat.choose 2 n) : ℚ)

end

end A128256.P10293666777589445378

namespace A128256

/-- `A062534(A014132(n+1))/A007318(C(2, n))` -/
def P10293666777589445378.Spec : Prop :=
  ∀ n, P10293666777589445378.a n = (A128256 n : ℚ)

end A128256

/-! ## A128256.P18417316305678282902

`A062534(A014132(n+1))^A000045(A020639(70*(n+1)))`
-/

namespace A128256.P18417316305678282902
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A062534 (A014132 (n + 1)).toNat : ℚ) ^ (A000045 (A020639 (70 * (n + 1))).toNat : ℤ)

end

end A128256.P18417316305678282902

namespace A128256

/-- `A062534(A014132(n+1))^A000045(A020639(70*(n+1)))` -/
def P18417316305678282902.Spec : Prop :=
  ∀ n, P18417316305678282902.a n = (A128256 n : ℚ)

end A128256

/-! ## A128256.P11715179502277575920

`A007318(C(n, 2))²*A062534(A014132(n+1))`
-/

namespace A128256.P11715179502277575920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose n 2) ^ 2 * A062534 (A014132 (n + 1)).toNat

end

end A128256.P11715179502277575920

namespace A128256

/-- `A007318(C(n, 2))²*A062534(A014132(n+1))` -/
def P11715179502277575920.Spec : Prop :=
  ∀ n, P11715179502277575920.a n = A128256 n

end A128256

/-! ## A128256.P7534321781724131059

`A007318(∑[n])*A062534(A014132(n+1))`
-/

namespace A128256.P7534321781724131059
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j) * A062534 (A014132 (n + 1)).toNat

end

end A128256.P7534321781724131059

namespace A128256

/-- `A007318(∑[n])*A062534(A014132(n+1))` -/
def P7534321781724131059.Spec : Prop :=
  ∀ n, P7534321781724131059.a n = A128256 n

end A128256

/-!
# A128257: Inverse Moebius transform of A097807.

The programs for A128257, there is no canonical definition to state claims against.
-/

/-! ## A128257.P18004471820408985487

`A254379(A053287(n+1))+(-1)^∑[∪[2*n+1, n²]]`
-/

namespace A128257.P18004471820408985487
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = x) ∨ ∃ j, f3 j = x) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254379 (A053287 (n + 1)).toNat + (-1) ^ (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A128257.P18004471820408985487

/-! ## A128257.P11155582452313265739

`A114116(∑[A003415(A005728(n))])`
-/

namespace A128257.P11155582452313265739
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (A005728 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114116 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A128257.P11155582452313265739

/-! ## A128257.P5516392978536058462

`A254379(A053287(n+1))+A097807(n)`
-/

namespace A128257.P5516392978536058462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254379 (A053287 (n + 1)).toNat + A097807 n

end

end A128257.P5516392978536058462

/-! ## A128257.P1006368717485628766

`A254379(A053287(n+1))+or(1, A122750(n))`
-/

namespace A128257.P1006368717485628766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254379 (A053287 (n + 1)).toNat + Int.lor 1 (A122750 n)

end

end A128257.P1006368717485628766

/-! ## A128257.P5326631792252585062

`A254379(A053287(n+1))+(-1)^A051162(n)`
-/

namespace A128257.P5326631792252585062
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A254379 (A053287 (n + 1)).toNat : ℚ) + (-1 : ℚ) ^ (A051162 n : ℤ)

end

end A128257.P5326631792252585062

/-!
# A128258: Moebius transform of A128229.

The programs for A128258, the canonical program `A128258.P4012319948261339764` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A128258 has offset 1).

The definition of A128258 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A128258.P4012319948261339764

`A127448(n+2)-Δ[A054525(n+1)]`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A128258

/-- `A127448(n+2)-Δ[A054525(n+1)]` -/
def P4012319948261339764.Spec : Prop :=
  ∀ n, P4012319948261339764.a n = A128258 (n + 1)

theorem P4012319948261339764.correct : P4012319948261339764.Spec := by
  intro n
  simp only [A128258, Nat.add_sub_cancel]

end A128258

/-! ## A128258.P11454694685278292044

`A127448(n+2)-Δ[A143468(n+1)%2]`
-/

namespace A128258.P11454694685278292044
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A143468 (n + 1)) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127448 (n + 2) - (f1 (n + 1) - f1 n)

end

end A128258.P11454694685278292044

namespace A128258

/-- `A127448(n+2)-Δ[A143468(n+1)%2]` -/
def P11454694685278292044.Spec : Prop :=
  ∀ n, P11454694685278292044.a n = A128258 (n + 1)

end A128258

/-! ## A128258.P13943596768114176931

`A054525(n+1)+A127448(n+2)-A054525(n+2)`
-/

namespace A128258.P13943596768114176931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054525 (n + 1) + (A127448 (n + 2) - A054525 (n + 2))

end

end A128258.P13943596768114176931

namespace A128258

/-- `A054525(n+1)+A127448(n+2)-A054525(n+2)` -/
def P13943596768114176931.Spec : Prop :=
  ∀ n, P13943596768114176931.a n = A128258 (n + 1)

theorem P13943596768114176931.correct : P13943596768114176931.Spec := by
  intro n
  simp only [A128258, Nat.add_sub_cancel, A128258.P13943596768114176931.a, A128258.P4012319948261339764.f1, A128258.P4012319948261339764.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A128258

/-! ## A128258.P1342826166115182880

`A127448(n+2)-Δ[A125093(n+1)/A049840(n+1)]`
-/

namespace A128258.P1342826166115182880
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A125093 (n + 1) : ℚ) / (A049840 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A127448 (n + 2) : ℚ) - (f1 (n + 1) - f1 n)

end

end A128258.P1342826166115182880

namespace A128258

/-- `A127448(n+2)-Δ[A125093(n+1)/A049840(n+1)]` -/
def P1342826166115182880.Spec : Prop :=
  ∀ n, P1342826166115182880.a n = (A128258 (n + 1) : ℚ)

end A128258

/-! ## A128258.P12137845499364891624

`A127448(n+2)-Δ[A127139(n+1)/A049834(n+1)]`
-/

namespace A128258.P12137845499364891624
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A127139 (n + 1) : ℚ) / (A049834 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A127448 (n + 2) : ℚ) - (f1 (n + 1) - f1 n)

end

end A128258.P12137845499364891624

namespace A128258

/-- `A127448(n+2)-Δ[A127139(n+1)/A049834(n+1)]` -/
def P12137845499364891624.Spec : Prop :=
  ∀ n, P12137845499364891624.a n = (A128258 (n + 1) : ℚ)

end A128258

/-! ## A128258.P14150151292760329257

`A127448(n+2)-Δ[A127448(n+1)/A050873(n+1)]`
-/

namespace A128258.P14150151292760329257
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A127448 (n + 1) : ℚ) / (A050873 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A127448 (n + 2) : ℚ) - (f1 (n + 1) - f1 n)

end

end A128258.P14150151292760329257

namespace A128258

/-- `A127448(n+2)-Δ[A127448(n+1)/A050873(n+1)]` -/
def P14150151292760329257.Spec : Prop :=
  ∀ n, P14150151292760329257.a n = (A128258 (n + 1) : ℚ)

end A128258

/-!
# A128259: Inverse Moebius transform of A128229.

The programs for A128259, the canonical program `A128259.P12325578355127469057` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A128259 has offset 1).

The definition of A128259 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A128259.P12325578355127469057

`A127093(n+2)-Δ[A051731(n+1)]`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A128259

/-- `A127093(n+2)-Δ[A051731(n+1)]` -/
def P12325578355127469057.Spec : Prop :=
  ∀ n, P12325578355127469057.a n = A128259 (n + 1)

theorem P12325578355127469057.correct : P12325578355127469057.Spec := by
  intro n
  simp only [A128259, Nat.add_sub_cancel]

end A128259

/-! ## A128259.P2044411189272861496

`A127093(n+2)-Δ[C(2, A173541(n+1)²)]`
-/

namespace A128259.P2044411189272861496
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (A173541 (n + 1) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127093 (n + 2) - ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A128259.P2044411189272861496

namespace A128259

/-- `A127093(n+2)-Δ[C(2, A173541(n+1)²)]` -/
def P2044411189272861496.Spec : Prop :=
  ∀ n, P2044411189272861496.a n = A128259 (n + 1)

end A128259

/-! ## A128259.P9553068343005018894

`A127093(n+2)-Δ[floor(1/A107435(n+1))]`
-/

namespace A128259.P9553068343005018894
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊1 / (A107435 (n + 1) : ℚ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127093 (n + 2) - (f1 (n + 1) - f1 n)

end

end A128259.P9553068343005018894

namespace A128259

/-- `A127093(n+2)-Δ[floor(1/A107435(n+1))]` -/
def P9553068343005018894.Spec : Prop :=
  ∀ n, P9553068343005018894.a n = A128259 (n + 1)

end A128259

/-! ## A128259.P5057606484354347187

`A051731(n+1)+A127093(n+2)-A051731(n+2)`
-/

namespace A128259.P5057606484354347187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051731 (n + 1) + (A127093 (n + 2) - A051731 (n + 2))

end

end A128259.P5057606484354347187

namespace A128259

/-- `A051731(n+1)+A127093(n+2)-A051731(n+2)` -/
def P5057606484354347187.Spec : Prop :=
  ∀ n, P5057606484354347187.a n = A128259 (n + 1)

theorem P5057606484354347187.correct : P5057606484354347187.Spec := by
  intro n
  simp only [A128259, Nat.add_sub_cancel, A128259.P5057606484354347187.a, A128259.P12325578355127469057.f1, A128259.P12325578355127469057.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A128259

/-! ## A128259.P3402826259786429399

`A051731(n+1)+A051731(n+2)*A176079(n+2)`
-/

namespace A128259.P3402826259786429399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051731 (n + 1) + A051731 (n + 2) * A176079 (n + 2)

end

end A128259.P3402826259786429399

namespace A128259

/-- `A051731(n+1)+A051731(n+2)*A176079(n+2)` -/
def P3402826259786429399.Spec : Prop :=
  ∀ n, P3402826259786429399.a n = A128259 (n + 1)

end A128259

/-! ## A128259.P16635218492650102371

`A127093(n+1)+Δ[A307662(n+1)]`
-/

namespace A128259.P16635218492650102371
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307662 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127093 (n + 1) + (f1 (n + 1) - f1 n)

end

end A128259.P16635218492650102371

namespace A128259

/-- `A127093(n+1)+Δ[A307662(n+1)]` -/
def P16635218492650102371.Spec : Prop :=
  ∀ n, P16635218492650102371.a n = A128259 (n + 1)

end A128259

/-! ## A128259.P580597064013574294

`A051731(n+1)+A307662(n+2)-1`
-/

namespace A128259.P580597064013574294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051731 (n + 1) + (A307662 (n + 2) - 1)

end

end A128259.P580597064013574294

namespace A128259

/-- `A051731(n+1)+A307662(n+2)-1` -/
def P580597064013574294.Spec : Prop :=
  ∀ n, P580597064013574294.a n = A128259 (n + 1)

end A128259

/-! ## A128259.P12006382569410736777

`Δ[A307662(n+1)]+sqrt(A134575(n+1))`
-/

namespace A128259.P12006382569410736777
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307662 (n + 1)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℝ) + Real.sqrt (A134575 (n + 1) : ℝ)

end

end A128259.P12006382569410736777

namespace A128259

/-- `Δ[A307662(n+1)]+sqrt(A134575(n+1))` -/
def P12006382569410736777.Spec : Prop :=
  ∀ n, P12006382569410736777.a n = (A128259 (n + 1) : ℝ)

end A128259

/-! ## A128259.P13609492136024104082

`A127093(n+1)+A307662(n+2)-A307662(n+1)`
-/

namespace A128259.P13609492136024104082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127093 (n + 1) + (A307662 (n + 2) - A307662 (n + 1))

end

end A128259.P13609492136024104082

namespace A128259

/-- `A127093(n+1)+A307662(n+2)-A307662(n+1)` -/
def P13609492136024104082.Spec : Prop :=
  ∀ n, P13609492136024104082.a n = A128259 (n + 1)

end A128259

/-!
# A128260: A128229 * A051731.

The programs for A128260, there is no canonical definition to state claims against.
-/

/-! ## A128260.P17359876265851385190

`A135227(n)%A001223(A130755(n))`
-/

namespace A128260.P17359876265851385190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A135227 n) (A001223 (A130755 n).toNat)

end

end A128260.P17359876265851385190

/-! ## A128260.P15036278557255897143

`and(A135227(n), A336494(A008550(n)))`
-/

namespace A128260.P15036278557255897143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A135227 n) (A336494 (A008550 n).toNat)

end

end A128260.P15036278557255897143

/-! ## A128260.P10129587178795661965

`C(A135227(n), A151510(A151510(n)²))`
-/

namespace A128260.P10129587178795661965
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A135227 n).toNat (A151510 (A151510 n ^ 2).toNat).toNat

end

end A128260.P10129587178795661965

/-! ## A128260.P16545083126670564974

`and(A059801(A282131(n+3)), A135227(n))`
-/

namespace A128260.P16545083126670564974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A059801 (A282131 (n + 3)).toNat) (A135227 n)

end

end A128260.P16545083126670564974

/-! ## A128260.P14562660713712077684

`C(A135227(n), A151510(A007318(3*(n+1))))`
-/

namespace A128260.P14562660713712077684
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A135227 n).toNat (A151510 (A007318 (3 * (n + 1))).toNat).toNat

end

end A128260.P14562660713712077684

/-!
# A128261: a(n) = tau(n) + (n-1)*tau(n-1).

The programs for A128261, the canonical program `A128261.P7710168921898590399` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A128261 has offset 1).

The definition of A128261 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A128261.P7710168921898590399

`∏{e}[n+1, #+1]+n*(∏{e}[n, #+1]-1)+n`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A128261

/-- `∏{e}[n+1, #+1]+n*(∏{e}[n, #+1]-1)+n` -/
def P7710168921898590399.Spec : Prop :=
  ∀ n, P7710168921898590399.a n = A128261 (n + 1)

theorem P7710168921898590399.correct : P7710168921898590399.Spec := by
  intro n
  simp only [A128261, Nat.add_sub_cancel]

end A128261

/-! ## A128261.P3907764075096671692

`A000005(n+1)+n*∏{e}[n, #+1]`
-/

namespace A128261.P3907764075096671692
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) + ((n * (∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1)) : ℕ) : ℤ)

end

end A128261.P3907764075096671692

namespace A128261

/-- `A000005(n+1)+n*∏{e}[n, #+1]` -/
def P3907764075096671692.Spec : Prop :=
  ∀ n, P3907764075096671692.a n = A128261 (n + 1)

end A128261

/-! ## A128261.P16955506837576839205

`A168014(n)+A158907(n+1)`
-/

namespace A128261.P16955506837576839205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168014 n + A158907 (n + 1)

end

end A128261.P16955506837576839205

namespace A128261

/-- `A168014(n)+A158907(n+1)` -/
def P16955506837576839205.Spec : Prop :=
  ∀ n, P16955506837576839205.a n = A128261 (n + 1)

end A128261

/-! ## A128261.P291176772725799134

`Δ[A006218(n)]+A168014(n)+n`
-/

namespace A128261.P291176772725799134
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (A168014 n + (n : ℤ))

end

end A128261.P291176772725799134

namespace A128261

/-- `Δ[A006218(n)]+A168014(n)+n` -/
def P291176772725799134.Spec : Prop :=
  ∀ n, P291176772725799134.a n = A128261 (n + 1)

end A128261

/-! ## A128261.P14472424948723351302

`A000005(n+1)+A168014(n)+n`
-/

namespace A128261.P14472424948723351302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) + (A168014 n + (n : ℤ))

end

end A128261.P14472424948723351302

namespace A128261

/-- `A000005(n+1)+A168014(n)+n` -/
def P14472424948723351302.Spec : Prop :=
  ∀ n, P14472424948723351302.a n = A128261 (n + 1)

end A128261

/-! ## A128261.P17578638965293991696

`A158907(n+1)+n*A032741(n)`
-/

namespace A128261.P17578638965293991696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158907 (n + 1) + (n : ℤ) * A032741 n

end

end A128261.P17578638965293991696

namespace A128261

/-- `A158907(n+1)+n*A032741(n)` -/
def P17578638965293991696.Spec : Prop :=
  ∀ n, P17578638965293991696.a n = A128261 (n + 1)

end A128261

/-! ## A128261.P8885853441126327819

`A038040(n+1)-n*Δ[A032741(n)]`
-/

namespace A128261.P8885853441126327819
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038040 (n + 1) - (n : ℤ) * (f1 (n + 1) - f1 n)

end

end A128261.P8885853441126327819

namespace A128261

/-- `A038040(n+1)-n*Δ[A032741(n)]` -/
def P8885853441126327819.Spec : Prop :=
  ∀ n, P8885853441126327819.a n = A128261 (n + 1)

end A128261

/-! ## A128261.P17941474783567943605

`n+1+A168014(n)+A032741(n+1)`
-/

namespace A128261.P17941474783567943605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) + (A168014 n + A032741 (n + 1))

end

end A128261.P17941474783567943605

namespace A128261

/-- `n+1+A168014(n)+A032741(n+1)` -/
def P17941474783567943605.Spec : Prop :=
  ∀ n, P17941474783567943605.a n = A128261 (n + 1)

end A128261

/-! ## A128261.P17017432798324843735

`A000005(n+1)+n*(A032741(n)+1)`
-/

namespace A128261.P17017432798324843735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) + (n : ℤ) * (A032741 n + 1)

end

end A128261.P17017432798324843735

namespace A128261

/-- `A000005(n+1)+n*(A032741(n)+1)` -/
def P17017432798324843735.Spec : Prop :=
  ∀ n, P17017432798324843735.a n = A128261 (n + 1)

end A128261

/-! ## A128261.P9543374128401520283

`A000005(n+1)+n*A000005(A028310(n))`
-/

namespace A128261.P9543374128401520283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) + (n : ℤ) * A000005 (A028310 n).toNat

end

end A128261.P9543374128401520283

namespace A128261

/-- `A000005(n+1)+n*A000005(A028310(n))` -/
def P9543374128401520283.Spec : Prop :=
  ∀ n, P9543374128401520283.a n = A128261 (n + 1)

end A128261

/-! ## A128261.P16077269546848917521

`A049820(n+1)+A114003(n+1)+n*A032741(n)`
-/

namespace A128261.P16077269546848917521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049820 (n + 1) + (A114003 (n + 1) + (n : ℤ) * A032741 n)

end

end A128261.P16077269546848917521

namespace A128261

/-- `A049820(n+1)+A114003(n+1)+n*A032741(n)` -/
def P16077269546848917521.Spec : Prop :=
  ∀ n, P16077269546848917521.a n = A128261 (n + 1)

end A128261

/-! ## A128261.P14334697413678996293

`A000005(n+1)+n*A194621(A000217(n))`
-/

namespace A128261.P14334697413678996293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) + (n : ℤ) * A194621 (A000217 n).toNat

end

end A128261.P14334697413678996293

namespace A128261

/-- `A000005(n+1)+n*A194621(A000217(n))` -/
def P14334697413678996293.Spec : Prop :=
  ∀ n, P14334697413678996293.a n = A128261 (n + 1)

end A128261

/-!
# A128262: Inverse Moebius transform of A127899 (unsigned).

The programs for A128262, there is no canonical definition to state claims against.
-/

/-! ## A128262.P3615498842462365583

`A134559(n+1)%A134559(n+3)`
-/

namespace A128262.P3615498842462365583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A134559 (n + 1)) (A134559 (n + 3))

end

end A128262.P3615498842462365583

/-! ## A128262.P18374677810717706861

`A127093(n+2)+A127093(n+1)-A010054(n+1)`
-/

namespace A128262.P18374677810717706861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127093 (n + 2) + (A127093 (n + 1) - A010054 (n + 1))

end

end A128262.P18374677810717706861

/-! ## A128262.P1286822961632413989

`A127093(n+1)-(A073424(n+1)-A127093(n+2))`
-/

namespace A128262.P1286822961632413989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127093 (n + 1) - (A073424 (n + 1) - A127093 (n + 2))

end

end A128262.P1286822961632413989

/-! ## A128262.P15574348627245141348

`A127093(n+1)+A051731(n+2)*A173539(n+2)`
-/

namespace A128262.P15574348627245141348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127093 (n + 1) + A051731 (n + 2) * A173539 (n + 2)

end

end A128262.P15574348627245141348

/-! ## A128262.P3039074462254241187

`A127093(n+1)+A127093(n+2)*A191904(n+2)`
-/

namespace A128262.P3039074462254241187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127093 (n + 1) + A127093 (n + 2) * A191904 (n + 2)

end

end A128262.P3039074462254241187

/-!
# A128264: Triangle read by rows, 1 <= m <= n: t(n,m) = lcm(s(n,m), S(n,m)), where s(n,m) is an unsigned Stirling number of the first kind and S(n,m) is a Stirling number of the second kind.

The programs for A128264, the canonical program `A128264.P1267588020066334074` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A128264 has offset 1).

The definition of A128264 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1281 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A128264.P1267588020066334074

`lcm(A008277(n+1), A130534(n))`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A128264

/-- `lcm(A008277(n+1), A130534(n))` -/
def P1267588020066334074.Spec : Prop :=
  ∀ n, (P1267588020066334074.a n : ℤ) = A128264 (n + 1)

theorem P1267588020066334074.correct : P1267588020066334074.Spec := by
  intro n
  simp only [A128264, Nat.add_sub_cancel]

end A128264

/-! ## A128264.P6569974252406643696

`lcm(A008275(n+1), A080417(n+1))`
-/

namespace A128264.P6569974252406643696
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A008275 (n + 1)) (A080417 (n + 1))

end

end A128264.P6569974252406643696

namespace A128264

/-- `lcm(A008275(n+1), A080417(n+1))` -/
def P6569974252406643696.Spec : Prop :=
  ∀ n, (P6569974252406643696.a n : ℤ) = A128264 (n + 1)

end A128264

/-! ## A128264.P4291941274649860448

`lcm(abs(A008275(n+1)), A048993(comp[C(n, 2)]))`
-/

namespace A128264.P4291941274649860448
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm |A008275 (n + 1)| (A048993 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n))

end

end A128264.P4291941274649860448

namespace A128264

/-- `lcm(abs(A008275(n+1)), A048993(comp[C(n, 2)]))` -/
def P4291941274649860448.Spec : Prop :=
  ∀ n, (P4291941274649860448.a n : ℤ) = A128264 (n + 1)

end A128264

/-! ## A128264.P3620729235259618332

`lcm(A080417(n+1), A130534(A028310(n)))`
-/

namespace A128264.P3620729235259618332
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A080417 (n + 1)) (A130534 (A028310 n).toNat)

end

end A128264.P3620729235259618332

namespace A128264

/-- `lcm(A080417(n+1), A130534(A028310(n)))` -/
def P3620729235259618332.Spec : Prop :=
  ∀ n, (P3620729235259618332.a n : ℤ) = A128264 (n + 1)

end A128264

/-! ## A128264.P88744592435826052

`lcm(A130534(n), A213735(A061579(n)))`
-/

namespace A128264.P88744592435826052
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A130534 n) (A213735 (A061579 n).toNat)

end

end A128264.P88744592435826052

namespace A128264

/-- `lcm(A130534(n), A213735(A061579(n)))` -/
def P88744592435826052.Spec : Prop :=
  ∀ n, (P88744592435826052.a n : ℤ) = A128264 (n + 1)

end A128264

/-!
# A128265: a(n) = Sum_{m=1..n} lcm(s(n,m),S(n,m)), where s(n,m) is an unsigned Stirling number of the first kind and S(n,m) is a Stirling number of the second kind. (a(n) = sum of terms in n-th row of triangle A128264.)

The programs for A128265, there is no canonical definition to state claims against.
-/

/-! ## A128265.P13173047706293358977

`∏[A282561(n^(n+1))]`
-/

namespace A128265.P13173047706293358977
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282561 (n ^ (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A128265.P13173047706293358977

/-!
# A128266: a(n) = Sum_{m=1..n} gcd(s(n,m), S(n,m)), where s(n,m) is an unsigned Stirling number of the first kind and S(n,m) is a Stirling number of the second kind.

The programs for A128266, there is no canonical definition to state claims against.
-/

/-! ## A128266.P5655400691399090123

`A194040(ceil(2^(n-1)))+A192873(n)`
-/

namespace A128266.P5655400691399090123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194040 ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉.toNat + A192873 n

end

end A128266.P5655400691399090123

/-! ## A128266.P2515032637963450887

`A280026(A186997(n)+A085174(n))`
-/

namespace A128266.P2515032637963450887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280026 (A186997 n + A085174 n).toNat

end

end A128266.P2515032637963450887

/-! ## A128266.P14868523666414933780

`A333222(A384175(n))+A001156(n)`
-/

namespace A128266.P14868523666414933780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333222 (A384175 n).toNat + A001156 n

end

end A128266.P14868523666414933780

/-!
# A128267: a(0) = 1; a(n) = gcd((number of earlier terms which are coprime to n), (sum of the earlier terms which are coprime to n)).

The programs for A128267, there is no canonical definition to state claims against.
-/

/-! ## A128267.P14885652457851075161

`A003586(gcd(A055396(n+1), A101193(n)))`
-/

namespace A128267.P14885652457851075161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003586 (Int.gcd (A055396 (n + 1)) (A101193 n))

end

end A128267.P14885652457851075161

/-! ## A128267.P3107483018144379901

`gcd(A346488(A346466(n+1)), A346498(n+1))`
-/

namespace A128267.P3107483018144379901
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A346488 (A346466 (n + 1)).toNat) (A346498 (n + 1))

end

end A128267.P3107483018144379901

/-! ## A128267.P7166975652193313629

`gcd(A005206(A020639(n+1)), A101612(n+2))`
-/

namespace A128267.P7166975652193313629
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A005206 (A020639 (n + 1)).toNat) (A101612 (n + 2))

end

end A128267.P7166975652193313629

/-! ## A128267.P7148683305767436781

`gcd(Δ[A188529(n+1)], A160714(n))`
-/

namespace A128267.P7148683305767436781
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188529 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (f1 (n + 1) - f1 n) (A160714 n)

end

end A128267.P7148683305767436781

/-! ## A128267.P16753851816173137688

`gcd(A292681(n), A344180(A080924(n)))`
-/

namespace A128267.P16753851816173137688
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A292681 n) (A344180 (A080924 n).toNat)

end

end A128267.P16753851816173137688

/-!
# A128271: a(n) = the denominator of b(n): {b(n)} is such that the continued fraction (of rational terms) [b(1);b(2),...,b(n)] equals the n-th prime, for every positive integer n.

The programs for A128271, there is no canonical definition to state claims against.
-/

/-! ## A128271.P10094569027904198737

`gcd(n%2, A060632(n!))`
-/

namespace A128271.P10094569027904198737
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((n % 2 : ℕ) : ℤ) (A060632 (Nat.factorial n))

end

end A128271.P10094569027904198737

/-! ## A128271.P9703479163729227157

`gcd(n^n, A001316(n!))`
-/

namespace A128271.P9703479163729227157
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n ^ n : ℤ) (A001316 (Nat.factorial n))

end

end A128271.P9703479163729227157

/-! ## A128271.P1851290596908023503

`A060632(gcd(n, Δ[xor(1, n)!])!)`
-/

namespace A128271.P1851290596908023503
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (Nat.xor 1 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060632 (Nat.factorial (Int.gcd (n : ℤ) ((f1 (n + 1) : ℤ) - (f1 n : ℤ))))

end

end A128271.P1851290596908023503

/-! ## A128271.P13798235168415408927

`A007734((3-(n+1)%2)^n)`
-/

namespace A128271.P13798235168415408927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007734 ((3 - (((n + 1) % 2 : ℕ) : ℤ)) ^ n).toNat

end

end A128271.P13798235168415408927

/-! ## A128271.P10270258976650718899

`A348678(A103481(n))`
-/

namespace A128271.P10270258976650718899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348678 (A103481 n).toNat

end

end A128271.P10270258976650718899

/-!
# A128273: a(n) = the denominator of b(n): {b(n)} is such that the continued fraction (of rational terms) [b(1);b(2),...,b(n)] equals the F(n+1)^2/F(n)^2, for every positive integer n, where F(n) is the n-th Fibonacci number.

The programs for A128273, there is no canonical definition to state claims against.
-/

/-! ## A128273.P2751675102765716579

`A002487(A304176(n))*A116903(n)`
-/

namespace A128273.P2751675102765716579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (A304176 n).toNat * A116903 n

end

end A128273.P2751675102765716579

/-!
# A128274: Absolute values of numerators of series expansion of cosh(x)/sqrt((cosh(x))^2+(sinh(x))^2) about 0 (even-indexed coefficients only).

The programs for A128274, there is no canonical definition to state claims against.
-/

/-! ## A128274.P5983550166727388021

`A012085(n)/gcd(A001147(n), A012085(n))`
-/

namespace A128274.P5983550166727388021
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A012085 n : ℚ) / (Int.gcd (A001147 n) (A012085 n) : ℚ)

end

end A128274.P5983550166727388021

/-! ## A128274.P7811581264613737965

`A012085(n)/A070644(A012259(n))`
-/

namespace A128274.P7811581264613737965
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A012085 n : ℚ) / (A070644 (A012259 n).toNat : ℚ)

end

end A128274.P7811581264613737965

/-! ## A128274.P17880528522843531774

`A012085(n)/A070644(abs(A202038(n)))`
-/

namespace A128274.P17880528522843531774
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A012085 n : ℚ) / (A070644 |A202038 n|.toNat : ℚ)

end

end A128274.P17880528522843531774

/-! ## A128274.P10413883925321637326

`A012259(2*n)/A070644(A012259(n))`
-/

namespace A128274.P10413883925321637326
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A012259 (2 * n) : ℚ) / (A070644 (A012259 n).toNat : ℚ)

end

end A128274.P10413883925321637326

/-!
# A128275: Absolute values of numerators of series expansion of sinh(x)/sqrt((cosh(x))^2+(sinh(x))^2) about 0 (odd indexed coefficients only).

The programs for A128275, there is no canonical definition to state claims against.
-/

/-! ## A128275.P13043588592937626557

`A012077(n)/A116407(A028386(n+1))`
-/

namespace A128275.P13043588592937626557
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A012077 n : ℚ) / (A116407 (A028386 (n + 1)).toNat : ℚ)

end

end A128275.P13043588592937626557

/-!
# A128278: an=n-th smallest integer m=p1*p2*p3, product of 3 odd primes such that d+2m/d are all primes for d dividing 2m.

The programs for A128278, there is no canonical definition to state claims against.
-/

/-! ## A128278.P254766025673250517

`filter[A244520(n+1), A354926(#)]`
-/

namespace A128278.P254766025673250517
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244520 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354926 (f1 j).toNat = 1) n)

end

end A128278.P254766025673250517

/-! ## A128278.P8045495308356520909

`filter[A244520(n+1), A358753(#)]`
-/

namespace A128278.P8045495308356520909
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244520 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A358753 (f1 j).toNat = 1) n)

end

end A128278.P8045495308356520909

/-! ## A128278.P14857015016906400081

`filter[A244520(n+1), A358773(#)]`
-/

namespace A128278.P14857015016906400081
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244520 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A358773 (f1 j).toNat = 1) n)

end

end A128278.P14857015016906400081

/-! ## A128278.P16766048902897860003

`filter[A244520(n+1), A369058(#)]`
-/

namespace A128278.P16766048902897860003
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244520 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A369058 (f1 j).toNat = 1) n)

end

end A128278.P16766048902897860003

/-! ## A128278.P1069992921417267071

`filter[A244520(n+2), A373975(#)]`
-/

namespace A128278.P1069992921417267071
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244520 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373975 (f1 j).toNat = 1) n)

end

end A128278.P1069992921417267071

/-!
# A128279: an=n-th smallest integer of the form m=p1*p2 where pi are odd primes such that d+2m/d are all primes for d dividing 2m.

The programs for A128279, there is no canonical definition to state claims against.
-/

/-! ## A128279.P17145287207021286898

`filter[A244520(n+1), A064911(#)]`
-/

namespace A128279.P17145287207021286898
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244520 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A064911 (f1 j).toNat = 1) n)

end

end A128279.P17145287207021286898

/-! ## A128279.P7758848262738050157

`filter[A244520(n+1), A215480(#)]`
-/

namespace A128279.P7758848262738050157
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244520 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A215480 (f1 j).toNat = 1) n)

end

end A128279.P7758848262738050157

/-! ## A128279.P5368282790290668130

`filter[A244520(n+1), A280710(#)]`
-/

namespace A128279.P5368282790290668130
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244520 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A280710 (f1 j).toNat = 1) n)

end

end A128279.P5368282790290668130

/-! ## A128279.P12966068956956680676

`filter[A244520(n+1), A340370(#)]`
-/

namespace A128279.P12966068956956680676
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244520 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A340370 (f1 j).toNat = 1) n)

end

end A128279.P12966068956956680676

/-! ## A128279.P17275478443891486672

`filter[A244520(n+1), A353480(#)]`
-/

namespace A128279.P17275478443891486672
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244520 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353480 (f1 j).toNat = 1) n)

end

end A128279.P17275478443891486672

/-!
# A128280: a(n) is the least number not occurring earlier such that a(n)+a(n-1) is prime, a(0) = 0.

The programs for A128280, there is no canonical definition to state claims against.
-/

/-! ## A128280.P11742495670450031940

`A086526(A028310(n))/2-(-1)^n`
-/

namespace A128280.P11742495670450031940
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A086526 (A028310 n).toNat : ℚ) / 2 - ((-1) ^ n : ℚ)

end

end A128280.P11742495670450031940

/-! ## A128280.P1798120951803909577

`A282695(A028310(n))+A014681(n)`
-/

namespace A128280.P1798120951803909577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282695 (A028310 n).toNat + A014681 n

end

end A128280.P1798120951803909577

/-! ## A128280.P7406307581523584618

`A055265(A028310(n))-A033999(n)`
-/

namespace A128280.P7406307581523584618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055265 (A028310 n).toNat - A033999 n

end

end A128280.P7406307581523584618

/-! ## A128280.P1815894737454645451

`A282695(A065033(2*n))+A014681(n)`
-/

namespace A128280.P1815894737454645451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282695 (A065033 (2 * n)).toNat + A014681 n

end

end A128280.P1815894737454645451

/-! ## A128280.P8532929980557445005

`A282695(A123108(2*n))+A014681(n)`
-/

namespace A128280.P8532929980557445005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282695 (A123108 (2 * n)).toNat + A014681 n

end

end A128280.P8532929980557445005

/-! ## A128280.P8542380550763583191

`A055265(A065033(2*n))-A033999(n)`
-/

namespace A128280.P8542380550763583191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055265 (A065033 (2 * n)).toNat - A033999 n

end

end A128280.P8542380550763583191

/-! ## A128280.P2823380743684524715

`A055265(A123108(2*n))-A033999(n)`
-/

namespace A128280.P2823380743684524715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055265 (A123108 (2 * n)).toNat - A033999 n

end

end A128280.P2823380743684524715

/-! ## A128280.P14847694711862833782

`A055265(A123108(2*n))-A034947(2*n+1)`
-/

namespace A128280.P14847694711862833782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055265 (A123108 (2 * n)).toNat - A034947 (2 * n + 1)

end

end A128280.P14847694711862833782

/-! ## A128280.P7633102105013540967

`A282695(A233583(n+1))+A014681(n)`
-/

namespace A128280.P7633102105013540967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282695 (A233583 (n + 1)).toNat + A014681 n

end

end A128280.P7633102105013540967

/-!
# A128281: a(n) is the least product of n distinct odd primes m=p_1*p_2*...*p_n, such that (d+m/d)/2 are all primes for each d dividing m.

The programs for A128281, there is no canonical definition to state claims against.
-/

/-! ## A128281.P3896125814072633018

`A340483(n+1)+A055667(A055673(n+1))`
-/

namespace A128281.P3896125814072633018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340483 (n + 1) + A055667 (A055673 (n + 1)).toNat

end

end A128281.P3896125814072633018

/-!
# A128282: Regular symmetric triangle, read by rows, whose left half consists of the positive integers.

The programs for A128282, there is no canonical definition to state claims against.
-/

/-! ## A128282.P16865048725724122144

`A344646(n)+1`
-/

namespace A128282.P16865048725724122144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344646 n + 1

end

end A128282.P16865048725724122144

/-! ## A128282.P17345096174988616589

`A008619(2*A344646(n))`
-/

namespace A128282.P17345096174988616589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (2 * A344646 n).toNat

end

end A128282.P17345096174988616589

/-! ## A128282.P15259147139709580378

`A027656(2*A344646(n))`
-/

namespace A128282.P15259147139709580378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027656 (2 * A344646 n).toNat

end

end A128282.P15259147139709580378

/-! ## A128282.P3391806662970838390

`A028242(2*A344646(n))`
-/

namespace A128282.P3391806662970838390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 (2 * A344646 n).toNat

end

end A128282.P3391806662970838390

/-! ## A128282.P16701070195625059365

`A029579(2*A344646(n))`
-/

namespace A128282.P16701070195625059365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029579 (2 * A344646 n).toNat

end

end A128282.P16701070195625059365

/-! ## A128282.P17361063469540421923

`A052938(2*A344646(n))`
-/

namespace A128282.P17361063469540421923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052938 (2 * A344646 n).toNat

end

end A128282.P17361063469540421923

/-! ## A128282.P8265764068203486870

`A080513(2*A344646(n))`
-/

namespace A128282.P8265764068203486870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080513 (2 * A344646 n).toNat

end

end A128282.P8265764068203486870

/-! ## A128282.P18129511715630253524

`A008611(3*A344646(n))`
-/

namespace A128282.P18129511715630253524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 (3 * A344646 n).toNat

end

end A128282.P18129511715630253524

/-! ## A128282.P7119444676617823946

`A008620(3*A344646(n))`
-/

namespace A128282.P7119444676617823946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 (3 * A344646 n).toNat

end

end A128282.P7119444676617823946

/-! ## A128282.P13657005279565115381

`A008621(4*A344646(n))`
-/

namespace A128282.P13657005279565115381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008621 (4 * A344646 n).toNat

end

end A128282.P13657005279565115381

/-!
# A128283: Numbers of the form m = p1 * p2 where for each d|m we have (d+m/d)/2 prime and p1 < p2 both prime.

The programs for A128283, there is no canonical definition to state claims against.
-/

/-! ## A128283.P17664412953463386785

`∩[A271101(n+1), A303437(n+1)]`
-/

namespace A128283.P17664412953463386785
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271101 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303437 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A128283.P17664412953463386785

/-! ## A128283.P705100129867504895

`∩[A039832(n+1), A089765(n+1)]`
-/

namespace A128283.P705100129867504895
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039832 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089765 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A128283.P705100129867504895

/-! ## A128283.P17300050549781151630

`∩[A039832(n+1), A271101(n+1)]`
-/

namespace A128283.P17300050549781151630
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039832 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271101 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A128283.P17300050549781151630

/-! ## A128283.P1158315670436228075

`∩[A039832(n+1), A303437(n+1)]`
-/

namespace A128283.P1158315670436228075
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039832 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303437 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A128283.P1158315670436228075

/-! ## A128283.P17575841720081037002

`∩[A089765(n+1), A263990(n+1)]`
-/

namespace A128283.P17575841720081037002
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089765 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263990 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A128283.P17575841720081037002

/-! ## A128283.P7795449921284342762

`∩[A039832(n+1), A334261(n+1)]`
-/

namespace A128283.P7795449921284342762
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039832 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334261 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A128283.P7795449921284342762

/-! ## A128283.P12525563637446855028

`∩[A303437(n+1), A263990(n+1)]`
-/

namespace A128283.P12525563637446855028
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303437 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263990 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A128283.P12525563637446855028

/-! ## A128283.P3017282239798580608

`∩[A263990(n+1), A334261(n+1)]`
-/

namespace A128283.P3017282239798580608
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263990 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334261 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A128283.P3017282239798580608

/-! ## A128283.P17750086437587406390

`∩[A070552(n+1), A271101(n+1)]`
-/

namespace A128283.P17750086437587406390
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070552 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271101 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A128283.P17750086437587406390

/-! ## A128283.P5023587433998963024

`∩[A039832(n+1), A187073(n+1)]`
-/

namespace A128283.P5023587433998963024
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039832 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187073 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A128283.P5023587433998963024

/-! ## A128283.P127767256019980414

`∩[A070552(n+1), A187073(n+1)]`
-/

namespace A128283.P127767256019980414
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070552 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187073 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A128283.P127767256019980414

/-! ## A128283.P2841962729980208727

`∩[A187073(n+1), A263990(n+1)]`
-/

namespace A128283.P2841962729980208727
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187073 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263990 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A128283.P2841962729980208727

/-! ## A128283.P2947469245302091486

`∩[A089765(n+1), A233562(n+1)]`
-/

namespace A128283.P2947469245302091486
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089765 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233562 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A128283.P2947469245302091486

/-! ## A128283.P6984066437582355640

`∩[A033945(n+1), A271101(n+1)]`
-/

namespace A128283.P6984066437582355640
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033945 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271101 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A128283.P6984066437582355640

/-! ## A128283.P13235407047853805314

`∩[A076274(n+1), A271101(n+1)]`
-/

namespace A128283.P13235407047853805314
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076274 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271101 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A128283.P13235407047853805314

/-! ## A128283.P9377697641771291714

`∩[A039832(n+1), A070006(n+1)]`
-/

namespace A128283.P9377697641771291714
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039832 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070006 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A128283.P9377697641771291714

/-! ## A128283.P11864157770701079368

`∩[A070006(n+1), A070552(n+1)]`
-/

namespace A128283.P11864157770701079368
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070006 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070552 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A128283.P11864157770701079368

/-! ## A128283.P15075341001579137688

`∩[A070006(n+1), A233562(n+1)]`
-/

namespace A128283.P15075341001579137688
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070006 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233562 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A128283.P15075341001579137688

/-! ## A128283.P14938751579111657446

`∩[A070006(n+1), A263990(n+1)]`
-/

namespace A128283.P14938751579111657446
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070006 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263990 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A128283.P14938751579111657446

/-! ## A128283.P5736280041594276989

`∩[A038456(n+1), A070006(n+1)]`
-/

namespace A128283.P5736280041594276989
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038456 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070006 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A128283.P5736280041594276989

/-!
# A128284: Numbers of the form m = p1 * p2 * p3 where for each d|m we have (d+m/d)/2 prime and p1 < p2 < p3 each prime.

The programs for A128284, there is no canonical definition to state claims against.
-/

/-! ## A128284.P16868050607332222416

`∩[A234103(n+1), A303437(n+1)]`
-/

namespace A128284.P16868050607332222416
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234103 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303437 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A128284.P16868050607332222416

/-! ## A128284.P11979952799632880657

`∩[A068405(n+1), A303437(n+1)]`
-/

namespace A128284.P11979952799632880657
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068405 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303437 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A128284.P11979952799632880657

/-!
# A128288: a(n) = A023163(n)/3 for n > 1.

The programs for A128288, the canonical program `A128288.P7303772657565545819` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A128288 has offset 2).

The definition of A128288 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A023163, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A128288.P7303772657565545819

`A023163(n+2)/3`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A128288

/-- `A023163(n+2)/3` -/
def P7303772657565545819.Spec : Prop :=
  ∀ n, P7303772657565545819.a n = (A128288 (n + 2) : ℚ)

end A128288

/-! ## A128288.P8304759619939940144

`A002264(A023163(n+2))`
-/

namespace A128288.P8304759619939940144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A023163 (n + 2)).toNat

end

end A128288.P8304759619939940144

namespace A128288

/-- `A002264(A023163(n+2))` -/
def P8304759619939940144.Spec : Prop :=
  ∀ n, P8304759619939940144.a n = A128288 (n + 2)

end A128288

/-! ## A128288.P13692511334559829782

`A008615(2*A023163(n+2))`
-/

namespace A128288.P13692511334559829782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (2 * A023163 (n + 2)).toNat

end

end A128288.P13692511334559829782

namespace A128288

/-- `A008615(2*A023163(n+2))` -/
def P13692511334559829782.Spec : Prop :=
  ∀ n, P13692511334559829782.a n = A128288 (n + 2)

end A128288

/-! ## A128288.P17908458489065808390

`∩[A141179(n+1), A350690(n+1)]`
-/

namespace A128288.P17908458489065808390
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141179 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350690 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A128288.P17908458489065808390

namespace A128288

/-- `∩[A141179(n+1), A350690(n+1)]` -/
def P17908458489065808390.Spec : Prop :=
  ∀ n, (P17908458489065808390.a n : ℤ) = A128288 (n + 2)

end A128288

/-! ## A128288.P3977896917685691817

`∩[A090864(n+1), A141179(n+1)]`
-/

namespace A128288.P3977896917685691817
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090864 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141179 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A128288.P3977896917685691817

namespace A128288

/-- `∩[A090864(n+1), A141179(n+1)]` -/
def P3977896917685691817.Spec : Prop :=
  ∀ n, (P3977896917685691817.a n : ℤ) = A128288 (n + 2)

end A128288

/-!
# A128289: Composite terms in A128288(n) = A023163(n)/3 for n>1.

The programs for A128289, there is no canonical definition to state claims against.
-/

/-! ## A128289.P8497538149731969311

`filter[A128288(3*n+2), A005171(#)]`
-/

namespace A128289.P8497538149731969311
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128288 (3 * n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A128289.P8497538149731969311

/-!
# A128290: If p(x) is the product of the digits of the number x and s(x) the sum of the digits then the sequence lists all the numbers k for which p(s(k)) = s(p(k)), with k >= 1.

The programs for A128290, the canonical program `A128290.P17234554926705773976` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A128290 has offset 1).

The definition of A128290 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 666 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A128290.P17234554926705773976

`eq[A128212(n+1), A128244(n+1)]+1`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A128290

/-- `eq[A128212(n+1), A128244(n+1)]+1` -/
def P17234554926705773976.Spec : Prop :=
  ∀ n, (P17234554926705773976.a n : ℤ) = A128290 (n + 1)

theorem P17234554926705773976.correct : P17234554926705773976.Spec := by
  intro n
  simp only [A128290, Nat.add_sub_cancel]

end A128290

/-! ## A128290.P12317801669317394168

`A085735(A045910(n+1))`
-/

namespace A128290.P12317801669317394168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085735 (A045910 (n + 1)).toNat

end

end A128290.P12317801669317394168

namespace A128290

/-- `A085735(A045910(n+1))` -/
def P12317801669317394168.Spec : Prop :=
  ∀ n, P12317801669317394168.a n = A128290 (n + 1)

end A128290

/-! ## A128290.P4453340740856181171

`A085735(A274124(n+1))`
-/

namespace A128290.P4453340740856181171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085735 (A274124 (n + 1)).toNat

end

end A128290.P4453340740856181171

namespace A128290

/-- `A085735(A274124(n+1))` -/
def P4453340740856181171.Spec : Prop :=
  ∀ n, P4453340740856181171.a n = A128290 (n + 1)

end A128290

/-! ## A128290.P17074817430886360985

`A037264(∑[A309471(n)!])`
-/

namespace A128290.P17074817430886360985
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A309471 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037264 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A128290.P17074817430886360985

namespace A128290

/-- `A037264(∑[A309471(n)!])` -/
def P17074817430886360985.Spec : Prop :=
  ∀ n, P17074817430886360985.a n = A128290 (n + 1)

end A128290

/-! ## A128290.P8250159058384435903

`∩[A033892(n+1), A037264(n+1)]`
-/

namespace A128290.P8250159058384435903
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033892 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037264 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A128290.P8250159058384435903

namespace A128290

/-- `∩[A033892(n+1), A037264(n+1)]` -/
def P8250159058384435903.Spec : Prop :=
  ∀ n, (P8250159058384435903.a n : ℤ) = A128290 (n + 1)

end A128290

/-!
# A128291: Complement of A118248.

The programs for A128291, there is no canonical definition to state claims against.
-/

/-! ## A128291.P6818768193858006200

`comp[A118248(n)]`
-/

namespace A128291.P6818768193858006200
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118248 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A128291.P6818768193858006200

/-! ## A128291.P13633632036933945282

`eq[0, char[A118248(A014681(n))]]`
-/

namespace A128291.P13633632036933945282
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118248 (A014681 n).toNat

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A128291.P13633632036933945282

/-! ## A128291.P15759989845718420110

`eq[char[A118248(n)], A000038(n)]`
-/

namespace A128291.P15759989845718420110
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118248 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A128291.P15759989845718420110

/-! ## A128291.P10905297473866616189

`eq[0, char[A118248(A105390(n+1))]]`
-/

namespace A128291.P10905297473866616189
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118248 (A105390 (n + 1)).toNat

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A128291.P10905297473866616189

/-! ## A128291.P9451328710116710876

`eq[0, char[A118248(A131981(n+1))]]`
-/

namespace A128291.P9451328710116710876
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118248 (A131981 (n + 1)).toNat

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A128291.P9451328710116710876

/-! ## A128291.P6874782848886744469

`eq[char[A118248(n)], A000035(2*n)]`
-/

namespace A128291.P6874782848886744469
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118248 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A128291.P6874782848886744469

/-!
# A128292: Primes not in A126769.

The programs for A128292, there is no canonical definition to state claims against.
-/

/-! ## A128292.P2120179604436306984

`p?[eq[1, A245618(A059317(n))]]`
-/

namespace A128292.P2120179604436306984
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245618 (A059317 n).toNat

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A128292.P2120179604436306984

/-! ## A128292.P15808470683826912345

`eq[A032741(n), A245618(A059317(n))]`
-/

namespace A128292.P15808470683826912345
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245618 (A059317 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A128292.P15808470683826912345

/-! ## A128292.P1095723543202659311

`A151800(eq[A291960(n), A318559(n+1)])`
-/

namespace A128292.P1095723543202659311
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291960 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318559 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A128292.P1095723543202659311

/-! ## A128292.P1357274465612091198

`A371694(A078931(n+1))`
-/

namespace A128292.P1357274465612091198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371694 (A078931 (n + 1)).toNat

end

end A128292.P1357274465612091198

/-! ## A128292.P15900221433083890006

`∩[A152245(n+1), A191925(n+1)]`
-/

namespace A128292.P15900221433083890006
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152245 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191925 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A128292.P15900221433083890006

/-!
# A128293: a(n) = numerator of b(n): b(1)=1; b(n+1) = b(n) + [b(1);b(2),...,b(n)], where [...] is a continued fraction of rational terms.

The programs for A128293, there is no canonical definition to state claims against.
-/

/-! ## A128293.P16706995036193438492

`A057889(A002605(∑[n])+1)`
-/

namespace A128293.P16706995036193438492
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057889 (A002605 (∑ j ∈ Finset.range (n + 1), f1 j) + 1).toNat

end

end A128293.P16706995036193438492

/-!
# A128294: a(n) = denominator of b(n): b(1)=1; b(n+1) = b(n) + [b(1);b(2),...,b(n)], where [...] is a continued fraction of rational terms.

The programs for A128294, there is no canonical definition to state claims against.
-/

/-! ## A128294.P4396500955162226384

`∑[A110654(C(n, 2)^n)]`
-/

namespace A128294.P4396500955162226384
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (Nat.choose n 2 ^ n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A128294.P4396500955162226384

/-!
# A128295: a(n) = numerator of b(n): b(1)=1; b(n+1) = b(n) * [b(1);b(2),...,b(n)], where [...] is a continued fraction of rational terms.

The programs for A128295, there is no canonical definition to state claims against.
-/

/-! ## A128295.P13222787338080879541

`A343658(∏[∑[n]+1]+1)`
-/

namespace A128295.P13222787338080879541
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343658 (∏ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A128295.P13222787338080879541

/-!
# A128296: a(n) = denominator of b(n): b(1)=1; b(n+1) = b(n) * [b(1);b(2),...,b(n)], where [...] is a continued fraction of rational terms.

The programs for A128296, there is no canonical definition to state claims against.
-/

/-! ## A128296.P10654484788351509721

`∏[∏[A058933(A305844(n))]]`
-/

namespace A128296.P10654484788351509721
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058933 (A305844 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A128296.P10654484788351509721

/-!
# A128297: a(n) = numerator of b(n): b(1)=1; b(n+1) = [b(1);b(2),...,b(n)]/b(n), where [...] is a continued fraction of rational terms.

The programs for A128297, there is no canonical definition to state claims against.
-/

/-! ## A128297.P17921152221867745732

`A325648(A014210(n))+A000041(n)`
-/

namespace A128297.P17921152221867745732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325648 (A014210 n).toNat + A000041 n

end

end A128297.P17921152221867745732

/-!
# A128298: a(n) = denominator of b(n): b(1)=1; b(n+1) = [b(1);b(2),...,b(n)]/b(n), where [...] is a continued fraction of rational terms.

The programs for A128298, there is no canonical definition to state claims against.
-/

/-! ## A128298.P14940917333239574123

`A034709(C(A135588(n), A214086(n)))`
-/

namespace A128298.P14940917333239574123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034709 (Nat.choose (A135588 n).toNat (A214086 n).toNat)

end

end A128298.P14940917333239574123

/-! ## A128298.P6282569081608245424

`A034709(C(A135588(n), A246660(n+1)))`
-/

namespace A128298.P6282569081608245424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034709 (Nat.choose (A135588 n).toNat (A246660 (n + 1)).toNat)

end

end A128298.P6282569081608245424

/-!
# A128299: a(n) = numerator of b(n): b(1)=1; b(n+1) = [b(1);b(2),...,b(n),1], where [...] is a continued fraction of rational terms.

The programs for A128299, there is no canonical definition to state claims against.
-/

/-! ## A128299.P4268600887528838027

`A086956(∏[2*n!])`
-/

namespace A128299.P4268600887528838027
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * Nat.factorial n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086956 (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A128299.P4268600887528838027

