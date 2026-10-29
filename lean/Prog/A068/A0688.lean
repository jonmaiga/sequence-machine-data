import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C005
import Seq.B000.C006
import Seq.B000.C007
import Seq.B000.C008
import Seq.B000.C009
import Seq.B000.C010
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
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C038
import Seq.B000.C039
import Seq.B000.C040
import Seq.B000.C045
import Seq.B000.C047
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C007
import Seq.B001.C012
import Seq.B001.C013
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C005
import Seq.B002.C006
import Seq.B002.C007
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
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

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A068801: Primes that can be formed by concatenating 2^a and 3^b.

The programs for A068801, there is no canonical definition to state claims against.
-/

/-! ## A068801.P18198001392164944416

`A335139(A335132(n+2)+6)`
-/

namespace A068801.P18198001392164944416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335139 (A335132 (n + 2) + 6).toNat

end

end A068801.P18198001392164944416

/-! ## A068801.P10385638004386686892

`∩[A166934(n+1), A386351(n+1)]`
-/

namespace A068801.P10385638004386686892
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166934 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386351 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A068801.P10385638004386686892

/-!
# A068802: Smaller of two consecutive squares which have no common digits.

The programs for A068802, there is no canonical definition to state claims against.
-/

/-! ## A068802.P4308001854703862579

`A156981(n+1)²`
-/

namespace A068802.P4308001854703862579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156981 (n + 1) ^ 2

end

end A068802.P4308001854703862579

/-! ## A068802.P4443168074696066125

`A156981(n+1)^(A000007(n)+2)`
-/

namespace A068802.P4443168074696066125
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A156981 (n + 1) : ℚ) ^ (A000007 n + 2 : ℤ)

end

end A068802.P4443168074696066125

/-! ## A068802.P1707892301980493261

`A156981(n+1)^A020639(2*(n+1))`
-/

namespace A068802.P1707892301980493261
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A156981 (n + 1) : ℚ) ^ (A020639 (2 * (n + 1)) : ℤ)

end

end A068802.P1707892301980493261

/-! ## A068802.P16059319157269559319

`A156981(n+1)^gcd(2, A000010(n+2))`
-/

namespace A068802.P16059319157269559319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156981 (n + 1) ^ Int.gcd 2 (A000010 (n + 2))

end

end A068802.P16059319157269559319

/-! ## A068802.P4293593537445926517

`A000290(and(2^n-1, A156981(n+1)))`
-/

namespace A068802.P4293593537445926517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (Int.land ((2 ^ n : ℤ) - 1) (A156981 (n + 1))).toNat

end

end A068802.P4293593537445926517

/-!
# A068803: Smaller of two consecutive primes which have no common digits.

The programs for A068803, there is no canonical definition to state claims against.
-/

/-! ## A068803.P2356219022373082013

`A000040(lt[A076490(n+1), 1]+1)`
-/

namespace A068803.P2356219022373082013
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076490 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1)

end

end A068803.P2356219022373082013

/-! ## A068803.P10660044363370732917

`p?[gcd(A000040(n+1), A076490(n+1))]`
-/

namespace A068803.P10660044363370732917
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000040 (n + 1)) (A076490 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A068803.P10660044363370732917

/-! ## A068803.P13542493165360884553

`p?[A076490(n+1)+p?[A239092(n+1)]]`
-/

namespace A068803.P13542493165360884553
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239092 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076490 (n + 1) + f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A068803.P13542493165360884553

/-!
# A068804: Triangular numbers whose digits can be rearranged to form a substring of 123456789012345678901234....

The programs for A068804, there is no canonical definition to state claims against.
-/

/-! ## A068804.P508653846496632119

`∩[A376300(n+1), A000217(n)]`
-/

namespace A068804.P508653846496632119
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376300 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A068804.P508653846496632119

/-! ## A068804.P16409224647160314570

`∩[A050760(n+1), A376300(n+1)]`
-/

namespace A068804.P16409224647160314570
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050760 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376300 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A068804.P16409224647160314570

/-! ## A068804.P7675024819447531177

`∩[A078256(n+1), A376300(n+1)]`
-/

namespace A068804.P7675024819447531177
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078256 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376300 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A068804.P7675024819447531177

/-! ## A068804.P9436235772707398592

`filter[A376300(n+1), A010054(#)]`
-/

namespace A068804.P9436235772707398592
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376300 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010054 (f1 j).toNat = 1) n)

end

end A068804.P9436235772707398592

/-! ## A068804.P6780407107420593989

`∩[A109811(n+1), A376300(n+1)]`
-/

namespace A068804.P6780407107420593989
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109811 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376300 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A068804.P6780407107420593989

/-!
# A068806: Ulam numbers that are powers of 2.

The programs for A068806, there is no canonical definition to state claims against.
-/

/-! ## A068806.P18288710722610834292

`record[A144464(Δ[A122768(n)])]`
-/

namespace A068806.P18288710722610834292
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122768 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144464 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A068806.P18288710722610834292

/-! ## A068806.P11044980818839796586

`2^eq[A316001(n), A316003(n)]`
-/

namespace A068806.P11044980818839796586
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316001 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316003 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A068806.P11044980818839796586

/-! ## A068806.P1208209844864151949

`A000079(A042073(n)%A002522(n))`
-/

namespace A068806.P1208209844864151949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (Int.tmod (A042073 n) (A002522 n)).toNat

end

end A068806.P1208209844864151949

/-! ## A068806.P7238071304689934429

`A000079(eq[A311063(n), A311071(n)])`
-/

namespace A068806.P7238071304689934429
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311063 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311071 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A068806.P7238071304689934429

/-!
# A068807: Primes whose sum of digits is a power of 2.

The programs for A068807, the canonical program `A068807.P3891556660410364740` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A068807 has offset 1).

The definition of A068807 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1409 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A068807.P3891556660410364740

`p?[A028838(n+1)]`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A068807

/-- `p?[A028838(n+1)]` -/
def P3891556660410364740.Spec : Prop :=
  ∀ n, P3891556660410364740.a n = A068807 (n + 1)

theorem P3891556660410364740.correct : P3891556660410364740.Spec := by
  intro n
  simp only [A068807, Nat.add_sub_cancel]

end A068807

/-! ## A068807.P15216485831425940792

`∩[A028838(n+1), A119449(n+1)]`
-/

namespace A068807.P15216485831425940792
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028838 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119449 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A068807.P15216485831425940792

namespace A068807

/-- `∩[A028838(n+1), A119449(n+1)]` -/
def P15216485831425940792.Spec : Prop :=
  ∀ n, (P15216485831425940792.a n : ℤ) = A068807 (n + 1)

end A068807

/-! ## A068807.P405327443144156591

`p?[A028838(A028310(n))-A000038(n)]`
-/

namespace A068807.P405327443144156591
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028838 (A028310 n).toNat - A000038 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A068807.P405327443144156591

namespace A068807

/-- `p?[A028838(A028310(n))-A000038(n)]` -/
def P405327443144156591.Spec : Prop :=
  ∀ n, P405327443144156591.a n = A068807 (n + 1)

end A068807

/-! ## A068807.P11285218656780673092

`p?[A028838(A028310(n))*A057427(n)]`
-/

namespace A068807.P11285218656780673092
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028838 (A028310 n).toNat * A057427 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A068807.P11285218656780673092

namespace A068807

/-- `p?[A028838(A028310(n))*A057427(n)]` -/
def P11285218656780673092.Spec : Prop :=
  ∀ n, P11285218656780673092.a n = A068807 (n + 1)

end A068807

/-! ## A068807.P2385667227505622093

`∩[A000040(n+1), A028838(n+1)]`
-/

namespace A068807.P2385667227505622093
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028838 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A068807.P2385667227505622093

namespace A068807

/-- `∩[A000040(n+1), A028838(n+1)]` -/
def P2385667227505622093.Spec : Prop :=
  ∀ n, (P2385667227505622093.a n : ℤ) = A068807 (n + 1)

end A068807

/-! ## A068807.P10029554669955069294

`∩[A028838(n+1), A045319(n+1)]`
-/

namespace A068807.P10029554669955069294
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028838 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A068807.P10029554669955069294

namespace A068807

/-- `∩[A028838(n+1), A045319(n+1)]` -/
def P10029554669955069294.Spec : Prop :=
  ∀ n, (P10029554669955069294.a n : ℤ) = A068807 (n + 1)

end A068807

/-! ## A068807.P6346470090199373026

`∩[A028838(n+1), A045344(n+1)]`
-/

namespace A068807.P6346470090199373026
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028838 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A068807.P6346470090199373026

namespace A068807

/-- `∩[A028838(n+1), A045344(n+1)]` -/
def P6346470090199373026.Spec : Prop :=
  ∀ n, (P6346470090199373026.a n : ℤ) = A068807 (n + 1)

end A068807

/-! ## A068807.P15618999656510836915

`∩[A028838(n+1), A053813(n+1)]`
-/

namespace A068807.P15618999656510836915
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028838 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053813 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A068807.P15618999656510836915

namespace A068807

/-- `∩[A028838(n+1), A053813(n+1)]` -/
def P15618999656510836915.Spec : Prop :=
  ∀ n, (P15618999656510836915.a n : ℤ) = A068807 (n + 1)

end A068807

/-! ## A068807.P14843851207668538849

`∩[A028838(n+1), A116974(n+1)]`
-/

namespace A068807.P14843851207668538849
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028838 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116974 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A068807.P14843851207668538849

namespace A068807

/-- `∩[A028838(n+1), A116974(n+1)]` -/
def P14843851207668538849.Spec : Prop :=
  ∀ n, (P14843851207668538849.a n : ℤ) = A068807 (n + 1)

end A068807

/-! ## A068807.P12673163500239694570

`∩[A028838(n+1), A182986(n+1)]`
-/

namespace A068807.P12673163500239694570
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028838 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A068807.P12673163500239694570

namespace A068807

/-- `∩[A028838(n+1), A182986(n+1)]` -/
def P12673163500239694570.Spec : Prop :=
  ∀ n, (P12673163500239694570.a n : ℤ) = A068807 (n + 1)

end A068807

/-! ## A068807.P15724241750910701717

`record[A008578(n+2)/A003963(A007605(n+1))]`
-/

namespace A068807.P15724241750910701717
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008578 (n + 2) : ℚ) / (A003963 (A007605 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A068807.P15724241750910701717

namespace A068807

/-- `record[A008578(n+2)/A003963(A007605(n+1))]` -/
def P15724241750910701717.Spec : Prop :=
  ∀ n, P15724241750910701717.a n = (A068807 (n + 1) : ℚ)

end A068807

/-! ## A068807.P12324758006073729223

`record[A020639(A028838(n+2))]`
-/

namespace A068807.P12324758006073729223
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A028838 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A068807.P12324758006073729223

namespace A068807

/-- `record[A020639(A028838(n+2))]` -/
def P12324758006073729223.Spec : Prop :=
  ∀ n, P12324758006073729223.a n = A068807 (n + 1)

end A068807

/-! ## A068807.P12475652008009021044

`filter[A028838(n+1), A010051(#)]`
-/

namespace A068807.P12475652008009021044
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028838 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A068807.P12475652008009021044

namespace A068807

/-- `filter[A028838(n+1), A010051(#)]` -/
def P12475652008009021044.Spec : Prop :=
  ∀ n, P12475652008009021044.a n = A068807 (n + 1)

end A068807

/-! ## A068807.P3644965322473520543

`filter[A028838(n+1), A323153(#)]`
-/

namespace A068807.P3644965322473520543
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028838 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323153 (f1 j).toNat = 1) n)

end

end A068807.P3644965322473520543

namespace A068807

/-- `filter[A028838(n+1), A323153(#)]` -/
def P3644965322473520543.Spec : Prop :=
  ∀ n, P3644965322473520543.a n = A068807 (n + 1)

end A068807

/-! ## A068807.P9324957167402324025

`filter[A028838(n+2), A323152(#)]`
-/

namespace A068807.P9324957167402324025
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028838 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323152 (f1 j).toNat = 1) n)

end

end A068807.P9324957167402324025

namespace A068807

/-- `filter[A028838(n+2), A323152(#)]` -/
def P9324957167402324025.Spec : Prop :=
  ∀ n, P9324957167402324025.a n = A068807 (n + 1)

end A068807

/-! ## A068807.P12894979437871299664

`∩[A028838(n+1), A106843(n+1)]`
-/

namespace A068807.P12894979437871299664
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028838 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106843 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A068807.P12894979437871299664

namespace A068807

/-- `∩[A028838(n+1), A106843(n+1)]` -/
def P12894979437871299664.Spec : Prop :=
  ∀ n, (P12894979437871299664.a n : ℤ) = A068807 (n + 1)

end A068807

/-! ## A068807.P17303236627232021188

`p?[A000040(n+1)*A000265(A007605(n+1))]`
-/

namespace A068807.P17303236627232021188
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * A000265 (A007605 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A068807.P17303236627232021188

namespace A068807

/-- `p?[A000040(n+1)*A000265(A007605(n+1))]` -/
def P17303236627232021188.Spec : Prop :=
  ∀ n, P17303236627232021188.a n = A068807 (n + 1)

end A068807

/-! ## A068807.P9336987872881070697

`p?[A005408(n)-A043545(A004092(n))]`
-/

namespace A068807.P9336987872881070697
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 n - A043545 (A004092 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A068807.P9336987872881070697

namespace A068807

/-- `p?[A005408(n)-A043545(A004092(n))]` -/
def P9336987872881070697.Spec : Prop :=
  ∀ n, P9336987872881070697.a n = A068807 (n + 1)

end A068807

/-! ## A068807.P16511310967399611092

`filter[A028838(n+2), A080339(#)]`
-/

namespace A068807.P16511310967399611092
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028838 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A080339 (f1 j).toNat = 1) n)

end

end A068807.P16511310967399611092

namespace A068807

/-- `filter[A028838(n+2), A080339(#)]` -/
def P16511310967399611092.Spec : Prop :=
  ∀ n, P16511310967399611092.a n = A068807 (n + 1)

end A068807

/-! ## A068807.P7122961600727664845

`∩[A028838(n+1), A240960(n+1)]`
-/

namespace A068807.P7122961600727664845
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028838 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240960 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A068807.P7122961600727664845

namespace A068807

/-- `∩[A028838(n+1), A240960(n+1)]` -/
def P7122961600727664845.Spec : Prop :=
  ∀ n, (P7122961600727664845.a n : ℤ) = A068807 (n + 1)

end A068807

/-!
# A068808: Triangular numbers with strictly increasing sum of digits.

The programs for A068808, there is no canonical definition to state claims against.
-/

/-! ## A068808.P9844089983170267131

`C(A067991(n+1)+1, 2)`
-/

namespace A068808.P9844089983170267131
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A067991 (n + 1) + 1).toNat 2

end

end A068808.P9844089983170267131

/-! ## A068808.P12190336129592956686

`A000217(A067991(n+1))`
-/

namespace A068808.P12190336129592956686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A067991 (n + 1)).toNat

end

end A068808.P12190336129592956686

/-! ## A068808.P10819552960942039771

`A161680(A067991(n+1)+1)`
-/

namespace A068808.P10819552960942039771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161680 (A067991 (n + 1) + 1).toNat

end

end A068808.P10819552960942039771

/-! ## A068808.P230312795683302131

`A179865(A067991(n+1)+1)`
-/

namespace A068808.P230312795683302131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179865 (A067991 (n + 1) + 1).toNat

end

end A068808.P230312795683302131

/-! ## A068808.P13380041434336707490

`A000124(A067991(n+1))-A007318(∑[n])`
-/

namespace A068808.P13380041434336707490
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 (A067991 (n + 1)).toNat - A007318 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A068808.P13380041434336707490

/-!
# A068809: Squares with strictly increasing sum of digits.

The programs for A068809, there is no canonical definition to state claims against.
-/

/-! ## A068809.P1533759621029919550

`A068947(n+1)²`
-/

namespace A068809.P1533759621029919550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068947 (n + 1) ^ 2

end

end A068809.P1533759621029919550

/-! ## A068809.P14069609289482761136

`A062685(A068949(n+1))`
-/

namespace A068809.P14069609289482761136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062685 (A068949 (n + 1)).toNat

end

end A068809.P14069609289482761136

/-! ## A068809.P156592211068582573

`A068947(A000463(2*n+1))^2`
-/

namespace A068809.P156592211068582573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068947 (A000463 (2 * n + 1)).toNat ^ 2

end

end A068809.P156592211068582573

/-! ## A068809.P14493755466918333428

`A068947(n+1)^(A057427(n)+1)`
-/

namespace A068809.P14493755466918333428
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A068947 (n + 1) : ℚ) ^ (A057427 n + 1 : ℤ)

end

end A068809.P14493755466918333428

/-! ## A068809.P8100888633315606382

`A068947(n+1)^A020639(A000132(n))`
-/

namespace A068809.P8100888633315606382
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A068947 (n + 1) : ℚ) ^ (A020639 (A000132 n).toNat : ℤ)

end

end A068809.P8100888633315606382

/-! ## A068809.P3815209215129037767

`A068947(n+1)^A000005(A040047(n+1))`
-/

namespace A068809.P3815209215129037767
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A068947 (n + 1) : ℚ) ^ (A000005 (A040047 (n + 1)).toNat : ℤ)

end

end A068809.P3815209215129037767

/-! ## A068809.P502347287785435883

`A068947(n+1)^A000005(A068951(n+1))`
-/

namespace A068809.P502347287785435883
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A068947 (n + 1) : ℚ) ^ (A000005 (A068951 (n + 1)).toNat : ℤ)

end

end A068809.P502347287785435883

/-! ## A068809.P13066111208427078254

`A068947(n+1)^A000005(A068990(n+1))`
-/

namespace A068809.P13066111208427078254
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A068947 (n + 1) : ℚ) ^ (A000005 (A068990 (n + 1)).toNat : ℤ)

end

end A068809.P13066111208427078254

/-! ## A068809.P17566858393377860375

`A068947(n+1)^lcm(2, A000196(A000196(n)))`
-/

namespace A068809.P17566858393377860375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068947 (n + 1) ^ Int.lcm 2 (A000196 (A000196 n).toNat)

end

end A068809.P17566858393377860375

/-!
# A068810: Numbers n such that n and its 10's complement are both squares, i.e., n and 10^k - n (where k is the number of digits in n) are squares.

The programs for A068810, there is no canonical definition to state claims against.
-/

/-! ## A068810.P10514772961110123751

`∑[A000005(∑[A135159(n)])]²`
-/

namespace A068810.P10514772961110123751
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135159 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A068810.P10514772961110123751

/-! ## A068810.P878558968368728334

`∑[A000005(∑[A205571(n)])]²`
-/

namespace A068810.P878558968368728334
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205571 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A068810.P878558968368728334

/-! ## A068810.P16431449452850920314

`∩[A051221(n+1), comp[A200506(n)]²]`
-/

namespace A068810.P16431449452850920314
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051221 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200506 n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ (x : ℤ)) n ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A068810.P16431449452850920314

/-! ## A068810.P14404969818992466238

`∩[A051221(n+1), comp[A200512(n)]²]`
-/

namespace A068810.P14404969818992466238
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051221 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200512 n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ (x : ℤ)) n ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A068810.P14404969818992466238

/-!
# A068811: Numbers k such that k and its 10's complement (10^d-k, where d is the number of digits in k) are both primes.

The programs for A068811, the canonical program `A068811.P10074877036579306103` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A068811 has offset 1).

The definition of A068811 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1715 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A068811.P11334550157233760059

`record[A204938(n+1)]`
-/

namespace A068811.P11334550157233760059
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204938 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A068811.P11334550157233760059

namespace A068811

/-- `record[A204938(n+1)]` -/
def P11334550157233760059.Spec : Prop :=
  ∀ n, P11334550157233760059.a n = A068811 (n + 1)

end A068811

/-! ## A068811.P10074877036579306103

`p?[A000040(n+1)*A001222(A160668(n+1))]`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A068811

/-- `p?[A000040(n+1)*A001222(A160668(n+1))]` -/
def P10074877036579306103.Spec : Prop :=
  ∀ n, P10074877036579306103.a n = A068811 (n + 1)

theorem P10074877036579306103.correct : P10074877036579306103.Spec := by
  intro n
  simp only [A068811, Nat.add_sub_cancel]

end A068811

/-! ## A068811.P13761189960009292216

`p?[A228075(n+1)]`
-/

namespace A068811.P13761189960009292216
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228075 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A068811.P13761189960009292216

namespace A068811

/-- `p?[A228075(n+1)]` -/
def P13761189960009292216.Spec : Prop :=
  ∀ n, P13761189960009292216.a n = A068811 (n + 1)

end A068811

/-! ## A068811.P16378411116874243173

`filter[A228075(n+1), A010051(#)]`
-/

namespace A068811.P16378411116874243173
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228075 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A068811.P16378411116874243173

namespace A068811

/-- `filter[A228075(n+1), A010051(#)]` -/
def P16378411116874243173.Spec : Prop :=
  ∀ n, P16378411116874243173.a n = A068811 (n + 1)

end A068811

/-! ## A068811.P552513311939016043

`record[A006530(or(1, A228075(n+1)))]`
-/

namespace A068811.P552513311939016043
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (Int.lor 1 (A228075 (n + 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A068811.P552513311939016043

namespace A068811

/-- `record[A006530(or(1, A228075(n+1)))]` -/
def P552513311939016043.Spec : Prop :=
  ∀ n, P552513311939016043.a n = A068811 (n + 1)

end A068811

/-! ## A068811.P15235971589757955077

`∩[A000040(n+1), A228075(n+1)]`
-/

namespace A068811.P15235971589757955077
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228075 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A068811.P15235971589757955077

namespace A068811

/-- `∩[A000040(n+1), A228075(n+1)]` -/
def P15235971589757955077.Spec : Prop :=
  ∀ n, (P15235971589757955077.a n : ℤ) = A068811 (n + 1)

end A068811

/-! ## A068811.P9717048324691639797

`∩[A000430(n+1), A228075(n+1)]`
-/

namespace A068811.P9717048324691639797
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000430 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228075 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A068811.P9717048324691639797

namespace A068811

/-- `∩[A000430(n+1), A228075(n+1)]` -/
def P9717048324691639797.Spec : Prop :=
  ∀ n, (P9717048324691639797.a n : ℤ) = A068811 (n + 1)

end A068811

/-! ## A068811.P17769760039946232091

`∩[A006005(n+1), A228075(n+1)]`
-/

namespace A068811.P17769760039946232091
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228075 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A068811.P17769760039946232091

namespace A068811

/-- `∩[A006005(n+1), A228075(n+1)]` -/
def P17769760039946232091.Spec : Prop :=
  ∀ n, (P17769760039946232091.a n : ℤ) = A068811 (n + 1)

end A068811

/-! ## A068811.P1813060184565623367

`∩[A008578(n+1), A228075(n+1)]`
-/

namespace A068811.P1813060184565623367
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228075 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A068811.P1813060184565623367

namespace A068811

/-- `∩[A008578(n+1), A228075(n+1)]` -/
def P1813060184565623367.Spec : Prop :=
  ∀ n, (P1813060184565623367.a n : ℤ) = A068811 (n + 1)

end A068811

/-! ## A068811.P4506768909140498838

`∩[A033946(n+1), A228075(n+1)]`
-/

namespace A068811.P4506768909140498838
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033946 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228075 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A068811.P4506768909140498838

namespace A068811

/-- `∩[A033946(n+1), A228075(n+1)]` -/
def P4506768909140498838.Spec : Prop :=
  ∀ n, (P4506768909140498838.a n : ℤ) = A068811 (n + 1)

end A068811

/-! ## A068811.P8665427651316391557

`∩[A040085(n+1), A228075(n+1)]`
-/

namespace A068811.P8665427651316391557
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040085 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228075 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A068811.P8665427651316391557

namespace A068811

/-- `∩[A040085(n+1), A228075(n+1)]` -/
def P8665427651316391557.Spec : Prop :=
  ∀ n, (P8665427651316391557.a n : ℤ) = A068811 (n + 1)

end A068811

/-! ## A068811.P11951687801806081867

`∩[A046022(n+1), A228075(n+1)]`
-/

namespace A068811.P11951687801806081867
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046022 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228075 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A068811.P11951687801806081867

namespace A068811

/-- `∩[A046022(n+1), A228075(n+1)]` -/
def P11951687801806081867.Spec : Prop :=
  ∀ n, (P11951687801806081867.a n : ℤ) = A068811 (n + 1)

end A068811

/-! ## A068811.P9213638376851697178

`∩[A051948(n+1), A228075(n+1)]`
-/

namespace A068811.P9213638376851697178
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051948 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228075 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A068811.P9213638376851697178

namespace A068811

/-- `∩[A051948(n+1), A228075(n+1)]` -/
def P9213638376851697178.Spec : Prop :=
  ∀ n, (P9213638376851697178.a n : ℤ) = A068811 (n + 1)

end A068811

/-! ## A068811.P6935061368789872771

`∩[A053813(n+1), A228075(n+1)]`
-/

namespace A068811.P6935061368789872771
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053813 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228075 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A068811.P6935061368789872771

namespace A068811

/-- `∩[A053813(n+1), A228075(n+1)]` -/
def P6935061368789872771.Spec : Prop :=
  ∀ n, (P6935061368789872771.a n : ℤ) = A068811 (n + 1)

end A068811

/-! ## A068811.P562115369210073308

`∩[A065091(n+1), A228075(n+1)]`
-/

namespace A068811.P562115369210073308
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228075 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A068811.P562115369210073308

namespace A068811

/-- `∩[A065091(n+1), A228075(n+1)]` -/
def P562115369210073308.Spec : Prop :=
  ∀ n, (P562115369210073308.a n : ℤ) = A068811 (n + 1)

end A068811

/-! ## A068811.P12093378773959955540

`∩[A066050(n+1), A228075(n+1)]`
-/

namespace A068811.P12093378773959955540
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066050 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228075 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A068811.P12093378773959955540

namespace A068811

/-- `∩[A066050(n+1), A228075(n+1)]` -/
def P12093378773959955540.Spec : Prop :=
  ∀ n, (P12093378773959955540.a n : ℤ) = A068811 (n + 1)

end A068811

/-! ## A068811.P6624220957836678034

`∩[A067126(n+1), A228075(n+1)]`
-/

namespace A068811.P6624220957836678034
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067126 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228075 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A068811.P6624220957836678034

namespace A068811

/-- `∩[A067126(n+1), A228075(n+1)]` -/
def P6624220957836678034.Spec : Prop :=
  ∀ n, (P6624220957836678034.a n : ℤ) = A068811 (n + 1)

end A068811

/-! ## A068811.P6385224538520325087

`∩[A161346(n+1), A228075(n+1)]`
-/

namespace A068811.P6385224538520325087
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161346 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228075 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A068811.P6385224538520325087

namespace A068811

/-- `∩[A161346(n+1), A228075(n+1)]` -/
def P6385224538520325087.Spec : Prop :=
  ∀ n, (P6385224538520325087.a n : ℤ) = A068811 (n + 1)

end A068811

/-! ## A068811.P10106327583290168753

`filter[A228075(n+1), A323152(#)]`
-/

namespace A068811.P10106327583290168753
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228075 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323152 (f1 j).toNat = 1) n)

end

end A068811.P10106327583290168753

namespace A068811

/-- `filter[A228075(n+1), A323152(#)]` -/
def P10106327583290168753.Spec : Prop :=
  ∀ n, P10106327583290168753.a n = A068811 (n + 1)

end A068811

/-! ## A068811.P10948361581436674370

`filter[A228075(n+1), A323153(#)]`
-/

namespace A068811.P10948361581436674370
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228075 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323153 (f1 j).toNat = 1) n)

end

end A068811.P10948361581436674370

namespace A068811

/-- `filter[A228075(n+1), A323153(#)]` -/
def P10948361581436674370.Spec : Prop :=
  ∀ n, P10948361581436674370.a n = A068811 (n + 1)

end A068811

/-!
# A068813: Primes with a 3 followed by 1's.

The programs for A068813, there is no canonical definition to state claims against.
-/

/-! ## A068813.P12530481107708264355

`A090151(A047363(n+1)+2)`
-/

namespace A068813.P12530481107708264355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090151 (A047363 (n + 1) + 2).toNat

end

end A068813.P12530481107708264355

/-!
# A068818: a(n) = smallest triangular number having no digit in common with the previous term, with a(1) = 1.

The programs for A068818, there is no canonical definition to state claims against.
-/

/-! ## A068818.P7614758774463218266

`A000217(∑[∏{e}[xor(3, n!), #]])`
-/

namespace A068818.P7614758774463218266
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 3 (Nat.factorial n)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A068818.P7614758774463218266

/-! ## A068818.P2850842811498480106

`∩[lt[n+1, A346478((n+2)²+1)], ∑[n+1]]`
-/

namespace A068818.P2850842811498480106
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346478 ((n + 2) ^ 2 + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f4 j = x) n

end

end A068818.P2850842811498480106

/-! ## A068818.P4560302691739450221

`eq[A241881(n), A259154(n)]`
-/

namespace A068818.P4560302691739450221
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241881 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259154 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A068818.P4560302691739450221

/-! ## A068818.P16354518543922360690

`A007425(∏[A318658(Δ[n²])])`
-/

namespace A068818.P16354518543922360690
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318658 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007425 (∏ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A068818.P16354518543922360690

/-! ## A068818.P7659879182554992504

`A007425(∏[A299150(2*n+1)])`
-/

namespace A068818.P7659879182554992504
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299150 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007425 (∏ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A068818.P7659879182554992504

/-!
# A068819: n!/((n+1)*(n+2)*...*(n+k)) where k is largest value that gives an integer quotient.

The programs for A068819, there is no canonical definition to state claims against.
-/

/-! ## A068819.P4825407932714966696

`(n+1)!%A272990((n+1)!)`
-/

namespace A068819.P4825407932714966696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Nat.factorial (n + 1) : ℤ) (A272990 (Nat.factorial (n + 1)))

end

end A068819.P4825407932714966696

/-! ## A068819.P17030761331592060094

`A123664(A008936(n))`
-/

namespace A068819.P17030761331592060094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123664 (A008936 n).toNat

end

end A068819.P17030761331592060094

/-!
# A068820: Ulam numbers that are primes.

The programs for A068820, there is no canonical definition to state claims against.
-/

/-! ## A068820.P14968117070340458454

`p?[A002858(n+1)]`
-/

namespace A068820.P14968117070340458454
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002858 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A068820.P14968117070340458454

/-! ## A068820.P3227957815772412132

`p?[Δ[A078663(n+1)]]`
-/

namespace A068820.P3227957815772412132
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078663 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A068820.P3227957815772412132

/-! ## A068820.P13268114780768071719

`p?[A072832(n+1)+a(n-1)]` with `a(0)=2`
-/

namespace A068820.P13268114780768071719
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f1 =>
  A072832 (n + 1) + f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A068820.P13268114780768071719

/-! ## A068820.P12723876270532534349

`A002858(A307328(n+1))`
-/

namespace A068820.P12723876270532534349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002858 (A307328 (n + 1)).toNat

end

end A068820.P12723876270532534349

/-! ## A068820.P3566547310232133547

`p?[A078663(n+2)-A078663(n+1)]`
-/

namespace A068820.P3566547310232133547
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078663 (n + 2) - A078663 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A068820.P3566547310232133547

/-! ## A068820.P15141712443029879503

`∩[A000040(n+1), A002858(n+1)]`
-/

namespace A068820.P15141712443029879503
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002858 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A068820.P15141712443029879503

/-! ## A068820.P5360570403061290992

`∩[A002858(n+1), A045319(n+1)]`
-/

namespace A068820.P5360570403061290992
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002858 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A068820.P5360570403061290992

/-! ## A068820.P13274242606801237354

`∩[A002858(n+1), A182986(n+1)]`
-/

namespace A068820.P13274242606801237354
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002858 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A068820.P13274242606801237354

/-! ## A068820.P8298657159433505606

`∩[A002858(n+1), A132630(n+1)]`
-/

namespace A068820.P8298657159433505606
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002858 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132630 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A068820.P8298657159433505606

/-! ## A068820.P17552846213486206859

`record[A020639(A002858(n+2))]`
-/

namespace A068820.P17552846213486206859
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A002858 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A068820.P17552846213486206859

/-! ## A068820.P6519272778073153634

`filter[A002858(n+1), A010051(#)]`
-/

namespace A068820.P6519272778073153634
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002858 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A068820.P6519272778073153634

/-! ## A068820.P5781142242258574279

`record[A020639(Δ[A078663(n+1)])]`
-/

namespace A068820.P5781142242258574279
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078663 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A068820.P5781142242258574279

/-!
# A068821: Triangular numbers such that both the number formed by the first floor((k+1)/2) digits and the remaining part (if any) are triangular numbers, where k is the number of digits.

The programs for A068821, there is no canonical definition to state claims against.
-/

/-! ## A068821.P13258436498794847193

`A062100(A032555(n+2))`
-/

namespace A068821.P13258436498794847193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062100 (A032555 (n + 2)).toNat

end

end A068821.P13258436498794847193

/-! ## A068821.P15336747175544226851

`A062100(A032557(n+2))`
-/

namespace A068821.P15336747175544226851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062100 (A032557 (n + 2)).toNat

end

end A068821.P15336747175544226851

/-! ## A068821.P14038396099248972598

`A062100(A032559(n+2))`
-/

namespace A068821.P14038396099248972598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062100 (A032559 (n + 2)).toNat

end

end A068821.P14038396099248972598

/-! ## A068821.P13179018882900357015

`A062100(A032563(n+2))`
-/

namespace A068821.P13179018882900357015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062100 (A032563 (n + 2)).toNat

end

end A068821.P13179018882900357015

/-!
# A068822: a(n) = gcd(n,c(n)), where c(n) is the 10's complement of n.

The programs for A068822, the canonical program `A068822.P12092756705496627243` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A068822 has offset 1).

The definition of A068822 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A089186, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A068822.P12092756705496627243

`gcd(n+1, A089186(n+1))`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A068822

/-- `gcd(n+1, A089186(n+1))` -/
def P12092756705496627243.Spec : Prop :=
  ∀ n, (P12092756705496627243.a n : ℤ) = A068822 (n + 1)

theorem P12092756705496627243.correct : P12092756705496627243.Spec := by
  intro n
  simp only [A068822, Nat.add_sub_cancel]

end A068822

/-! ## A068822.P12943702772074128916

`gcd(n+1, A061601(n))`
-/

namespace A068822.P12943702772074128916
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A061601 n)

end

end A068822.P12943702772074128916

namespace A068822

/-- `gcd(n+1, A061601(n))` -/
def P12943702772074128916.Spec : Prop :=
  ∀ n, (P12943702772074128916.a n : ℤ) = A068822 (n + 1)

end A068822

/-! ## A068822.P1141573937840560398

`(n+1)/A078268(n+1)`
-/

namespace A068822.P1141573937840560398
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A078268 (n + 1) : ℚ)

end

end A068822.P1141573937840560398

namespace A068822

/-- `(n+1)/A078268(n+1)` -/
def P1141573937840560398.Spec : Prop :=
  ∀ n, P1141573937840560398.a n = (A068822 (n + 1) : ℚ)

end A068822

/-! ## A068822.P10591976802038595140

`gcd(∑[2*n], A127421(n+1))`
-/

namespace A068822.P10591976802038595140
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) (A127421 (n + 1))

end

end A068822.P10591976802038595140

namespace A068822

/-- `gcd(∑[2*n], A127421(n+1))` -/
def P10591976802038595140.Spec : Prop :=
  ∀ n, (P10591976802038595140.a n : ℤ) = A068822 (n + 1)

end A068822

/-! ## A068822.P2165402610559698585

`gcd(A038502(n+1), A084021(n))`
-/

namespace A068822.P2165402610559698585
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A038502 (n + 1)) (A084021 n)

end

end A068822.P2165402610559698585

namespace A068822

/-- `gcd(A038502(n+1), A084021(n))` -/
def P2165402610559698585.Spec : Prop :=
  ∀ n, (P2165402610559698585.a n : ℤ) = A068822 (n + 1)

end A068822

/-! ## A068822.P1688361061665376771

`gcd(A165998(n), A261618(n+1))`
-/

namespace A068822.P1688361061665376771
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A165998 n) (A261618 (n + 1))

end

end A068822.P1688361061665376771

namespace A068822

/-- `gcd(A165998(n), A261618(n+1))` -/
def P1688361061665376771.Spec : Prop :=
  ∀ n, (P1688361061665376771.a n : ℤ) = A068822 (n + 1)

end A068822

/-! ## A068822.P18369325738441076030

`A068824(n+1)/A068823(n+1)`
-/

namespace A068822.P18369325738441076030
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A068824 (n + 1) : ℚ) / (A068823 (n + 1) : ℚ)

end

end A068822.P18369325738441076030

namespace A068822

/-- `A068824(n+1)/A068823(n+1)` -/
def P18369325738441076030.Spec : Prop :=
  ∀ n, P18369325738441076030.a n = (A068822 (n + 1) : ℚ)

end A068822

/-! ## A068822.P13839600687164697856

`gcd(A033286(n+1), A075110(n+1))`
-/

namespace A068822.P13839600687164697856
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A033286 (n + 1)) (A075110 (n + 1))

end

end A068822.P13839600687164697856

namespace A068822

/-- `gcd(A033286(n+1), A075110(n+1))` -/
def P13839600687164697856.Spec : Prop :=
  ∀ n, (P13839600687164697856.a n : ℤ) = A068822 (n + 1)

end A068822

/-! ## A068822.P16192831078576111885

`gcd(A095221(n+1), A132741(n+1))`
-/

namespace A068822.P16192831078576111885
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A095221 (n + 1)) (A132741 (n + 1))

end

end A068822.P16192831078576111885

namespace A068822

/-- `gcd(A095221(n+1), A132741(n+1))` -/
def P16192831078576111885.Spec : Prop :=
  ∀ n, (P16192831078576111885.a n : ℤ) = A068822 (n + 1)

end A068822

/-! ## A068822.P11268761160583118157

`gcd(A061019(n+1), A343275(n+1))`
-/

namespace A068822.P11268761160583118157
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A061019 (n + 1)) (A343275 (n + 1))

end

end A068822.P11268761160583118157

namespace A068822

/-- `gcd(A061019(n+1), A343275(n+1))` -/
def P11268761160583118157.Spec : Prop :=
  ∀ n, (P11268761160583118157.a n : ℤ) = A068822 (n + 1)

end A068822

/-! ## A068822.P638076203568612179

`gcd(A127421(n+1)+A002378(n), A002378(n))`
-/

namespace A068822.P638076203568612179
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A127421 (n + 1) + A002378 n) (A002378 n)

end

end A068822.P638076203568612179

namespace A068822

/-- `gcd(A127421(n+1)+A002378(n), A002378(n))` -/
def P638076203568612179.Spec : Prop :=
  ∀ n, (P638076203568612179.a n : ℤ) = A068822 (n + 1)

end A068822

/-! ## A068822.P10762157400712905515

`gcd(A343275(n+1)+A068823(n+1), A068823(n+1))`
-/

namespace A068822.P10762157400712905515
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A343275 (n + 1) + A068823 (n + 1)) (A068823 (n + 1))

end

end A068822.P10762157400712905515

namespace A068822

/-- `gcd(A343275(n+1)+A068823(n+1), A068823(n+1))` -/
def P10762157400712905515.Spec : Prop :=
  ∀ n, (P10762157400712905515.a n : ℤ) = A068822 (n + 1)

end A068822

/-! ## A068822.P2824833730579779983

`gcd(A111708(n+1)+1, A111708(n))`
-/

namespace A068822.P2824833730579779983
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A111708 (n + 1) + 1) (A111708 n)

end

end A068822.P2824833730579779983

namespace A068822

/-- `gcd(A111708(n+1)+1, A111708(n))` -/
def P2824833730579779983.Spec : Prop :=
  ∀ n, (P2824833730579779983.a n : ℤ) = A068822 (n + 1)

end A068822

/-! ## A068822.P12488591205932685327

`gcd(1-A020338(n+2), A032742(2*(n+1)))`
-/

namespace A068822.P12488591205932685327
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (1 - A020338 (n + 2)) (A032742 (2 * (n + 1)))

end

end A068822.P12488591205932685327

namespace A068822

/-- `gcd(1-A020338(n+2), A032742(2*(n+1)))` -/
def P12488591205932685327.Spec : Prop :=
  ∀ n, (P12488591205932685327.a n : ℤ) = A068822 (n + 1)

end A068822

/-! ## A068822.P6552262303689237502

`gcd(A154920(n), A261618(n+1))`
-/

namespace A068822.P6552262303689237502
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A154920 n) (A261618 (n + 1))

end

end A068822.P6552262303689237502

namespace A068822

/-- `gcd(A154920(n), A261618(n+1))` -/
def P6552262303689237502.Spec : Prop :=
  ∀ n, (P6552262303689237502.a n : ℤ) = A068822 (n + 1)

end A068822

/-!
# A068823: a(n) = lcm(n, c(n)), where c(n) is the 10's complement of n.

The programs for A068823, the canonical program `A068823.P18262872501573724830` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A068823 has offset 1).

The definition of A068823 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A068823.P18262872501573724830

`lcm(n+1, A061601(n+1)+1)`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A068823

/-- `lcm(n+1, A061601(n+1)+1)` -/
def P18262872501573724830.Spec : Prop :=
  ∀ n, (P18262872501573724830.a n : ℤ) = A068823 (n + 1)

theorem P18262872501573724830.correct : P18262872501573724830.Spec := by
  intro n
  simp only [A068823, Nat.add_sub_cancel]

end A068823

/-! ## A068823.P5394596428760074676

`A068824(n+1)/A068822(n+1)`
-/

namespace A068823.P5394596428760074676
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A068824 (n + 1) : ℚ) / (A068822 (n + 1) : ℚ)

end

end A068823.P5394596428760074676

namespace A068823

/-- `A068824(n+1)/A068822(n+1)` -/
def P5394596428760074676.Spec : Prop :=
  ∀ n, P5394596428760074676.a n = (A068823 (n + 1) : ℚ)

end A068823

/-! ## A068823.P6813017999088008111

`(n+1)*(A078267(n+1)-A078268(n+1))`
-/

namespace A068823.P6813017999088008111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A078267 (n + 1) - A078268 (n + 1))

end

end A068823.P6813017999088008111

namespace A068823

/-- `(n+1)*(A078267(n+1)-A078268(n+1))` -/
def P6813017999088008111.Spec : Prop :=
  ∀ n, P6813017999088008111.a n = A068823 (n + 1)

end A068823

/-! ## A068823.P9958533963688296253

`lcm(A068824(n+1)/A072436(n+1), A072436(n+1))`
-/

namespace A068823.P9958533963688296253
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (SequenceMachineLib.roundAway ((A068824 (n + 1) : ℚ) / (A072436 (n + 1) : ℚ))) (A072436 (n + 1))

end

end A068823.P9958533963688296253

namespace A068823

/-- `lcm(A068824(n+1)/A072436(n+1), A072436(n+1))` -/
def P9958533963688296253.Spec : Prop :=
  ∀ n, (P9958533963688296253.a n : ℤ) = A068823 (n + 1)

end A068823

/-! ## A068823.P12868770327020614513

`lcm(n+1, A089186(n+1))`
-/

namespace A068823.P12868770327020614513
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n + 1 : ℤ) (A089186 (n + 1))

end

end A068823.P12868770327020614513

namespace A068823

/-- `lcm(n+1, A089186(n+1))` -/
def P12868770327020614513.Spec : Prop :=
  ∀ n, (P12868770327020614513.a n : ℤ) = A068823 (n + 1)

end A068823

/-! ## A068823.P4115696685162355383

`A078268(n+1)*A089186(n+1)`
-/

namespace A068823.P4115696685162355383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078268 (n + 1) * A089186 (n + 1)

end

end A068823.P4115696685162355383

namespace A068823

/-- `A078268(n+1)*A089186(n+1)` -/
def P4115696685162355383.Spec : Prop :=
  ∀ n, P4115696685162355383.a n = A068823 (n + 1)

end A068823

/-!
# A068824: a(n) = n*c(n), where c(n) is the 10's complement of n.

The programs for A068824, the canonical program `A068824.P692798541818509398` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A068824 has offset 1).

The definition of A068824 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A068824.P692798541818509398

`(10^(1+A004216(n+1))-(n+1))*(n+1)`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A068824

/-- `(10^(1+A004216(n+1))-(n+1))*(n+1)` -/
def P692798541818509398.Spec : Prop :=
  ∀ n, P692798541818509398.a n = (A068824 (n + 1) : ℚ)

end A068824

/-! ## A068824.P8951866495167767291

`(n+1)*(∏{digits}[n+1, floor(#/10)+10]-(n+1))`
-/

namespace A068824.P8951866495167767291
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => ⌊(x : ℚ) / 10⌋ + 10).prod - (n + 1 : ℤ))

end

end A068824.P8951866495167767291

namespace A068824

/-- `(n+1)*(∏{digits}[n+1, floor(#/10)+10]-(n+1))` -/
def P8951866495167767291.Spec : Prop :=
  ∀ n, P8951866495167767291.a n = A068824 (n + 1)

end A068824

/-! ## A068824.P10978295177734914298

`∑[or(1, Δ[n*A061601(n)])]`
-/

namespace A068824.P10978295177734914298
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A061601 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A068824.P10978295177734914298

namespace A068824

/-- `∑[or(1, Δ[n*A061601(n)])]` -/
def P10978295177734914298.Spec : Prop :=
  ∀ n, P10978295177734914298.a n = A068824 (n + 1)

end A068824

/-! ## A068824.P12618897258413609433

`(n+1)*(A061601(n+1)+1)`
-/

namespace A068824.P12618897258413609433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A061601 (n + 1) + 1)

end

end A068824.P12618897258413609433

namespace A068824

/-- `(n+1)*(A061601(n+1)+1)` -/
def P12618897258413609433.Spec : Prop :=
  ∀ n, P12618897258413609433.a n = A068824 (n + 1)

end A068824

/-! ## A068824.P160537926363752086

`A020338(n+1)-(n+1)*(n+2)`
-/

namespace A068824.P160537926363752086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020338 (n + 1) - ((n + 1) * (n + 2) : ℤ)

end

end A068824.P160537926363752086

namespace A068824

/-- `A020338(n+1)-(n+1)*(n+2)` -/
def P160537926363752086.Spec : Prop :=
  ∀ n, P160537926363752086.a n = A068824 (n + 1)

end A068824

/-! ## A068824.P10821591092453854909

`A235497(n+1)-A105814(n+1)`
-/

namespace A068824.P10821591092453854909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235497 (n + 1) - A105814 (n + 1)

end

end A068824.P10821591092453854909

namespace A068824

/-- `A235497(n+1)-A105814(n+1)` -/
def P10821591092453854909.Spec : Prop :=
  ∀ n, P10821591092453854909.a n = A068824 (n + 1)

end A068824

/-! ## A068824.P11791964219886841211

`A068822(n+1)*A068823(n+1)`
-/

namespace A068824.P11791964219886841211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068822 (n + 1) * A068823 (n + 1)

end

end A068824.P11791964219886841211

namespace A068824

/-- `A068822(n+1)*A068823(n+1)` -/
def P11791964219886841211.Spec : Prop :=
  ∀ n, P11791964219886841211.a n = A068824 (n + 1)

end A068824

/-! ## A068824.P14033225150572099109

`gcd(A068823(n+1), A343275(n+1))*A068823(n+1)`
-/

namespace A068824.P14033225150572099109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd (A068823 (n + 1)) (A343275 (n + 1)) : ℤ) * A068823 (n + 1)

end

end A068824.P14033225150572099109

namespace A068824

/-- `gcd(A068823(n+1), A343275(n+1))*A068823(n+1)` -/
def P14033225150572099109.Spec : Prop :=
  ∀ n, P14033225150572099109.a n = A068824 (n + 1)

end A068824

/-! ## A068824.P14230926824541754624

`A084021(n+1)+1+n`
-/

namespace A068824.P14230926824541754624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084021 (n + 1) + 1 + (n : ℤ)

end

end A068824.P14230926824541754624

namespace A068824

/-- `A084021(n+1)+1+n` -/
def P14230926824541754624.Spec : Prop :=
  ∀ n, P14230926824541754624.a n = A068824 (n + 1)

end A068824

/-! ## A068824.P9317679291243441280

`(n+1)*A089186(n+1)`
-/

namespace A068824.P9317679291243441280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A089186 (n + 1)

end

end A068824.P9317679291243441280

namespace A068824

/-- `(n+1)*A089186(n+1)` -/
def P9317679291243441280.Spec : Prop :=
  ∀ n, P9317679291243441280.a n = A068824 (n + 1)

end A068824

/-! ## A068824.P11718481050329026958

`(n+1)*A178914(n+1)`
-/

namespace A068824.P11718481050329026958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A178914 (n + 1)

end

end A068824.P11718481050329026958

namespace A068824

/-- `(n+1)*A178914(n+1)` -/
def P11718481050329026958.Spec : Prop :=
  ∀ n, P11718481050329026958.a n = A068824 (n + 1)

end A068824

/-! ## A068824.P3283359150976912422

`A275238(n+1)+A033999(n)-A002378(n+1)`
-/

namespace A068824.P3283359150976912422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275238 (n + 1) + (A033999 n - A002378 (n + 1))

end

end A068824.P3283359150976912422

namespace A068824

/-- `A275238(n+1)+A033999(n)-A002378(n+1)` -/
def P3283359150976912422.Spec : Prop :=
  ∀ n, P3283359150976912422.a n = A068824 (n + 1)

end A068824

/-!
# A068827: a(1) = 2; for n > 1, a(n) is the smallest prime > a(n-1) such that each successive digit in the concatenation of terms (that does not follow 9) is greater than the previous digit.

The programs for A068827, there is no canonical definition to state claims against.
-/

/-! ## A068827.P6949505654199050086

`p?[∑[∏{d}[A108076(n), #]]]`
-/

namespace A068827.P6949505654199050086
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108076 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f3 n).natAbs, d

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A068827.P6949505654199050086

/-! ## A068827.P8150163592318318616

`p?[∑[A212363(∑[3*n])]]`
-/

namespace A068827.P8150163592318318616
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212363 (∑ j ∈ Finset.range (n + 1), f3 j)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A068827.P8150163592318318616

/-!
# A068828: Geometrically weak primes: primes that are smaller than the geometric mean of their neighbors (2 is included by convention).

The programs for A068828, there is no canonical definition to state claims against.
-/

/-! ## A068828.P9526423281164467692

`∪[A051635(n+1), A256454(n)]`
-/

namespace A068828.P9526423281164467692
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051635 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256454 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A068828.P9526423281164467692

/-! ## A068828.P5123477418025025086

`∪[A002386(n+1), A051635(n+1)]`
-/

namespace A068828.P5123477418025025086
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002386 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051635 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A068828.P5123477418025025086

/-! ## A068828.P5760758760723242752

`∪[A007352(n+1), A051635(n+1)]`
-/

namespace A068828.P5760758760723242752
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007352 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051635 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A068828.P5760758760723242752

/-! ## A068828.P11318775273377919264

`∪[A038537(n+1), A051635(n+1)]`
-/

namespace A068828.P11318775273377919264
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038537 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051635 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A068828.P11318775273377919264

/-! ## A068828.P12165148953810493283

`A051635(A028310(n))-A000007(n)`
-/

namespace A068828.P12165148953810493283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051635 (A028310 n).toNat - A000007 n

end

end A068828.P12165148953810493283

/-! ## A068828.P8894693369906575856

`A000040(lt[A118534(n+1), A008578(n+1)]+1)`
-/

namespace A068828.P8894693369906575856
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118534 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1)

end

end A068828.P8894693369906575856

/-! ## A068828.P7945840883085784527

`A008578(lt[A118534(n+1), A008578(n+1)]+2)`
-/

namespace A068828.P7945840883085784527
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118534 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 2)

end

end A068828.P7945840883085784527

/-! ## A068828.P7874923420366575678

`record[A006530(2*A225495(n+1))]`
-/

namespace A068828.P7874923420366575678
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (2 * A225495 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A068828.P7874923420366575678

/-! ## A068828.P14204130044407509853

`p?[comp[A046869(n+1)]]`
-/

namespace A068828.P14204130044407509853
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046869 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A068828.P14204130044407509853

/-! ## A068828.P11014330607481206968

`A051635(n)%A065091(a(n-1)+1)` with `a(0)=2`
-/

namespace A068828.P11014330607481206968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  Int.tmod (A051635 n) (A065091 (a (n - 1) + 1).toNat)

end

end A068828.P11014330607481206968

/-! ## A068828.P9093980655118531926

`A051635(n-A000040(a(n-1)+1)%2+1)` with `a(0)=2`
-/

namespace A068828.P9093980655118531926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A051635 ((n : ℤ) - Int.tmod (A000040 (a (n - 1) + 1).toNat) 2 + 1).toNat

end

end A068828.P9093980655118531926

/-! ## A068828.P11296181562282266714

`A051635(n-A006562(a(n-1)+1)%2+1)` with `a(0)=2`
-/

namespace A068828.P11296181562282266714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A051635 ((n : ℤ) - Int.tmod (A006562 (a (n - 1) + 1).toNat) 2 + 1).toNat

end

end A068828.P11296181562282266714

/-! ## A068828.P15368847041590959814

`A051635(n-A046869(a(n-1)+1)%2+1)` with `a(0)=2`
-/

namespace A068828.P15368847041590959814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A051635 ((n : ℤ) - Int.tmod (A046869 (a (n - 1) + 1).toNat) 2 + 1).toNat

end

end A068828.P15368847041590959814

/-! ## A068828.P10849627728752011081

`A051635(n-A051795(a(n-1)+1)%2+1)` with `a(0)=2`
-/

namespace A068828.P10849627728752011081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A051635 ((n : ℤ) - Int.tmod (A051795 (a (n - 1) + 1).toNat) 2 + 1).toNat

end

end A068828.P10849627728752011081

/-!
# A068831: Primes with all odd digits such that the next three primes also contain all odd digits.

The programs for A068831, there is no canonical definition to state claims against.
-/

/-! ## A068831.P8894416440704501333

`A364920(A057917(n+1))`
-/

namespace A068831.P8894416440704501333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364920 (A057917 (n + 1)).toNat

end

end A068831.P8894416440704501333

/-! ## A068831.P3792175746963049755

`record[p?[A213177(A213191(n))]]`
-/

namespace A068831.P3792175746963049755
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213177 (A213191 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A068831.P3792175746963049755

/-!
# A068832: Primes with all odd digits such that the next four primes also contain all odd digits.

The programs for A068832, there is no canonical definition to state claims against.
-/

/-! ## A068832.P9000180753048984228

`A068831(∑[A051700(10^n)])`
-/

namespace A068832.P9000180753048984228
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051700 (10 ^ n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068831 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A068832.P9000180753048984228

/-!
# A068834: Squares k such that k and the next three squares also have a square digit sum.

The programs for A068834, there is no canonical definition to state claims against.
-/

/-! ## A068834.P5545721404960345030

`((A097876(n!)+2)²+n)²`
-/

namespace A068834.P5545721404960345030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((A097876 (Nat.factorial n) + 2) ^ 2 + (n : ℤ)) ^ 2

end

end A068834.P5545721404960345030

/-!
# A068838: Smallest prime with concatenation of first n even numbers as leading digits.

The programs for A068838, there is no canonical definition to state claims against.
-/

/-! ## A068838.P8197209739412141793

`A087332(n+1)%A375764(A361778(n+1))`
-/

namespace A068838.P8197209739412141793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A087332 (n + 1)) (A375764 (A361778 (n + 1)).toNat)

end

end A068838.P8197209739412141793

/-! ## A068838.P7852459021471680666

`A087332(sqrt(A352598(n+1)))%A191809(3*(n+1))`
-/

namespace A068838.P7852459021471680666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A087332 (SequenceMachineLib.roundAway (Real.sqrt (A352598 (n + 1) : ℝ))).toNat) (A191809 (3 * (n + 1)))

end

end A068838.P7852459021471680666

/-!
# A068840: Smallest prime with leading digits the same as those of n^n.

The programs for A068840, there is no canonical definition to state claims against.
-/

/-! ## A068840.P13265149584828380794

`A030665(record[dr(n)^n])`
-/

namespace A068840.P13265149584828380794
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (n : ℤ) ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030665 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A068840.P13265149584828380794

/-!
# A068841: Smallest prime larger than 3^n whose digits begin with those of 3^n.

The programs for A068841, there is no canonical definition to state claims against.
-/

/-! ## A068841.P568832261435770894

`A030665(3^n)`
-/

namespace A068841.P568832261435770894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030665 (3 ^ n)

end

end A068841.P568832261435770894

/-! ## A068841.P5399557256613405390

`A218255(3^n)`
-/

namespace A068841.P5399557256613405390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218255 (3 ^ n)

end

end A068841.P5399557256613405390

/-! ## A068841.P17769663005550451710

`A151800(10*3^n)`
-/

namespace A068841.P17769663005550451710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (10 * 3 ^ n)

end

end A068841.P17769663005550451710

/-! ## A068841.P4355105232146032989

`record[A030665(A048883(n))]`
-/

namespace A068841.P4355105232146032989
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030665 (A048883 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A068841.P4355105232146032989

/-! ## A068841.P10770171850229006128

`record[A030665(A125824(n))]`
-/

namespace A068841.P10770171850229006128
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030665 (A125824 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A068841.P10770171850229006128

/-!
# A068842: Smallest prime larger than 2^n whose digits begin with those of 2^n.

The programs for A068842, there is no canonical definition to state claims against.
-/

/-! ## A068842.P4966813999526974188

`A030665(2^n)`
-/

namespace A068842.P4966813999526974188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030665 (2 ^ n)

end

end A068842.P4966813999526974188

/-!
# A068844: Smallest prime with same leading digits as n!.

The programs for A068844, there is no canonical definition to state claims against.
-/

/-! ## A068844.P748550797959487522

`A030665((n+1)!)`
-/

namespace A068844.P748550797959487522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030665 (Nat.factorial (n + 1))

end

end A068844.P748550797959487522

/-! ## A068844.P13210124458421449147

`record[A030665(ceil(xor(1, n)/2)!)]`
-/

namespace A068844.P13210124458421449147
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030665 (Nat.factorial ⌈(Nat.xor 1 n : ℚ) / 2⌉.toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A068844.P13210124458421449147

/-! ## A068844.P2188335522271268416

`A030665(A033646(n+1))`
-/

namespace A068844.P2188335522271268416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030665 (A033646 (n + 1)).toNat

end

end A068844.P2188335522271268416

/-!
# A068845: Final digits of the smallest prime starting with n!.

The programs for A068845, there is no canonical definition to state claims against.
-/

/-! ## A068845.P16897819096198591287

`and(A052551(n+1), A068844(n+1))`
-/

namespace A068845.P16897819096198591287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A052551 (n + 1)) (A068844 (n + 1))

end

end A068845.P16897819096198591287

/-! ## A068845.P8601896355971253043

`A068844(n+1)%A002182(A008619(2*(n+1)))`
-/

namespace A068845.P8601896355971253043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A068844 (n + 1)) (A002182 (A008619 (2 * (n + 1))).toNat)

end

end A068845.P8601896355971253043

/-! ## A068845.P13649585190238469293

`A068844(n+1)%A007416(A327473(n+1))`
-/

namespace A068845.P13649585190238469293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A068844 (n + 1)) (A007416 (A327473 (n + 1)).toNat)

end

end A068845.P13649585190238469293

/-! ## A068845.P15960244696146762175

`A343253(A343717(n+1))`
-/

namespace A068845.P15960244696146762175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343253 (A343717 (n + 1)).toNat

end

end A068845.P15960244696146762175

/-! ## A068845.P18182464109609124588

`A343717(n+1)%A343721(A343716(2*n+3))`
-/

namespace A068845.P18182464109609124588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A343717 (n + 1)) (A343721 (A343716 (2 * n + 3)).toNat)

end

end A068845.P18182464109609124588

/-!
# A068846: Smallest prime with same leading digits as 6^n.

The programs for A068846, there is no canonical definition to state claims against.
-/

/-! ## A068846.P3760469444332596803

`A018800(6^n)`
-/

namespace A068846.P3760469444332596803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018800 (6 ^ n)

end

end A068846.P3760469444332596803

/-! ## A068846.P8544587794162012718

`A030665(6^n)`
-/

namespace A068846.P8544587794162012718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030665 (6 ^ n)

end

end A068846.P8544587794162012718

/-!
# A068847: Smallest prime with same leading digits as 7^n.

The programs for A068847, there is no canonical definition to state claims against.
-/

/-! ## A068847.P4366191258838309378

`A030665(7^n)`
-/

namespace A068847.P4366191258838309378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030665 (7 ^ n)

end

end A068847.P4366191258838309378

/-!
# A068848: Smallest prime with same leading digits as 8^n.

The programs for A068848, there is no canonical definition to state claims against.
-/

/-! ## A068848.P6507937537580178258

`A068842(3*n)`
-/

namespace A068848.P6507937537580178258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068842 (3 * n)

end

end A068848.P6507937537580178258

/-! ## A068848.P6575118311736795902

`A068842(A008585(n))%A068851(n+1)`
-/

namespace A068848.P6575118311736795902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A068842 (A008585 n).toNat) (A068851 (n + 1))

end

end A068848.P6575118311736795902

/-! ## A068848.P17434781597090114308

`A068842(A008585(n))^A213217(n)`
-/

namespace A068848.P17434781597090114308
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A068842 (A008585 n).toNat : ℚ) ^ (A213217 n : ℤ)

end

end A068848.P17434781597090114308

/-! ## A068848.P16424346302238837712

`A068842(A022844(n))^A213217(n+2)`
-/

namespace A068848.P16424346302238837712
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A068842 (A022844 n).toNat : ℚ) ^ (A213217 (n + 2) : ℤ)

end

end A068848.P16424346302238837712

/-!
# A068853: a(1) = 2; a(n+1) is the smallest prime > a(n) which differs from it in every digit.

The programs for A068853, there is no canonical definition to state claims against.
-/

/-! ## A068853.P16728529664376068715

`record[A102095(A342098(n+1)+A000161(n))]`
-/

namespace A068853.P16728529664376068715
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102095 (A342098 (n + 1) + A000161 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A068853.P16728529664376068715

/-! ## A068853.P14943408731221003238

`filter[A228062(n+2), A110471(#)]`
-/

namespace A068853.P14943408731221003238
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228062 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A110471 (f1 j).toNat = 1) n)

end

end A068853.P14943408731221003238

/-! ## A068853.P17472644466108717753

`∩[A058226(n+1), A216823(n+1)]`
-/

namespace A068853.P17472644466108717753
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058226 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216823 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A068853.P17472644466108717753

/-! ## A068853.P4690218931127273690

`∩[A079346(n+1), A235986(n+1)]`
-/

namespace A068853.P4690218931127273690
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079346 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235986 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A068853.P4690218931127273690

/-! ## A068853.P5721456765742193917

`∩[A079346(n+1), A357758(n+1)]`
-/

namespace A068853.P5721456765742193917
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079346 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357758 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A068853.P5721456765742193917

/-!
# A068854: a(1) = 1; a(n) is the smallest square > a(n-1) which differs from it at every digit.

The programs for A068854, there is no canonical definition to state claims against.
-/

/-! ## A068854.P15586725304778125186

`∑[A316439(A320663(n))]²`
-/

namespace A068854.P15586725304778125186
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316439 (A320663 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A068854.P15586725304778125186

/-! ## A068854.P16914147606174618972

`∑[A229897(A147021(n+1))]²`
-/

namespace A068854.P16914147606174618972
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229897 (A147021 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A068854.P16914147606174618972

/-! ## A068854.P12437132114252403591

`∑[A320267(A026307(n))]²`
-/

namespace A068854.P12437132114252403591
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320267 (A026307 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A068854.P12437132114252403591

/-! ## A068854.P5792336483178253044

`record[A117707(A029229(n))²]`
-/

namespace A068854.P5792336483178253044
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117707 (A029229 n).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A068854.P5792336483178253044

/-! ## A068854.P16700426512255032784

`record[A114327(A100224(n))²]`
-/

namespace A068854.P16700426512255032784
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114327 (A100224 n).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A068854.P16700426512255032784

/-!
# A068855: a(1) = 1; a(n) is the smallest triangular number > a(n-1) which differs from it at every digit.

The programs for A068855, there is no canonical definition to state claims against.
-/

/-! ## A068855.P17288233907441250187

`record[A068865(A097876(n))]`
-/

namespace A068855.P17288233907441250187
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068865 (A097876 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A068855.P17288233907441250187

/-! ## A068855.P17943678875866557621

`record[A068865(n+1)%A068830(n+1)]`
-/

namespace A068855.P17943678875866557621
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A068865 (n + 1)) (A068830 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A068855.P17943678875866557621

/-! ## A068855.P9458698984688524841

`eq[A023919(n), A082859(n)]`
-/

namespace A068855.P9458698984688524841
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023919 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082859 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A068855.P9458698984688524841

/-! ## A068855.P14067569526510779239

`eq[A023927(n), A082859(n)]`
-/

namespace A068855.P14067569526510779239
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023927 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082859 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A068855.P14067569526510779239

/-! ## A068855.P271575046737781668

`eq[A023919(n), A115247(n)]`
-/

namespace A068855.P271575046737781668
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023919 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115247 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A068855.P271575046737781668

/-!
# A068857: a(0) = 0, a(1) = 8; for n>=2: a(n) = smallest multiple of a(n-1) which is of the form 2k*(2k+2).

The programs for A068857, there is no canonical definition to state claims against.
-/

/-! ## A068857.P268719533074755809

`A283364(A283364(2*n+1))²-1`
-/

namespace A068857.P268719533074755809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283364 (A283364 (2 * n + 1)).toNat ^ 2 - 1

end

end A068857.P268719533074755809

/-! ## A068857.P16410703611733365342

`A033996(eq[A080110(n+1), A335885(2*n+1)])`
-/

namespace A068857.P16410703611733365342
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080110 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335885 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033996 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A068857.P16410703611733365342

/-!
# A068859: a(1) = 3 = 1*3; a(n) = smallest multiple of a(n-1) which is of the form k(k+2).

The programs for A068859, there is no canonical definition to state claims against.
-/

/-! ## A068859.P4979267615101647443

`∏[A087334(n+1)]`
-/

namespace A068859.P4979267615101647443
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087334 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A068859.P4979267615101647443

/-! ## A068859.P880733406781542752

`A087335(n+1)-1`
-/

namespace A068859.P880733406781542752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087335 (n + 1) - 1

end

end A068859.P880733406781542752

/-! ## A068859.P10373593870265874566

`A247108(gcd(n, n+1))+A087335(n+1)`
-/

namespace A068859.P10373593870265874566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247108 (Nat.gcd n (n + 1)) + A087335 (n + 1)

end

end A068859.P10373593870265874566

/-! ## A068859.P14637847401230493346

`abs(A087335(n+1)+A033999(A268581(n)))`
-/

namespace A068859.P14637847401230493346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A087335 (n + 1) + A033999 (A268581 n).toNat|

end

end A068859.P14637847401230493346

/-! ## A068859.P10548250740238751660

`A087960(A020639(2*(n+1)))+A087335(n+1)`
-/

namespace A068859.P10548250740238751660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087960 (A020639 (2 * (n + 1))).toNat + A087335 (n + 1)

end

end A068859.P10548250740238751660

/-!
# A068860: a(1) = 1; a(n+1) is the smallest number > a(n) which differs from it at every digit.

The programs for A068860, there is no canonical definition to state claims against.
-/

/-! ## A068860.P13852539574402551975

`A228723(A037124(n+1))`
-/

namespace A068860.P13852539574402551975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228723 (A037124 (n + 1)).toNat

end

end A068860.P13852539574402551975

/-! ## A068860.P12571727841737458164

`A228723(A051885(n)+1)`
-/

namespace A068860.P12571727841737458164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228723 (A051885 n + 1).toNat

end

end A068860.P12571727841737458164

/-! ## A068860.P5051009562320047478

`A228723(eq[A004185(n), A051801(n)])`
-/

namespace A068860.P5051009562320047478
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004185 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051801 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228723 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A068860.P5051009562320047478

/-! ## A068860.P10939757870472609171

`A228723(eq[A004086(n), A214950(n)])`
-/

namespace A068860.P10939757870472609171
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214950 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228723 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A068860.P10939757870472609171

/-! ## A068860.P17412413140611099278

`A228723(eq[A000007(n), A035930(n)])`
-/

namespace A068860.P17412413140611099278
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035930 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228723 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A068860.P17412413140611099278

/-!
# A068862: Numbers n such that A068861(n) = n.

The programs for A068862, there is no canonical definition to state claims against.
-/

/-! ## A068862.P17397171586526391375

`eq[n, A068861(abs(1-n)+1)]`
-/

namespace A068862.P17397171586526391375
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068861 (|1 - (n : ℤ)| + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A068862.P17397171586526391375

/-! ## A068862.P8781633034897335030

`record[gcd(n+1, A068861(n+1))]`
-/

namespace A068862.P8781633034897335030
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A068861 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A068862.P8781633034897335030

/-! ## A068862.P3686518896725539359

`record[gcd(A068861(n+1), A103517(n))]`
-/

namespace A068862.P3686518896725539359
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A068861 (n + 1)) (A103517 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A068862.P3686518896725539359

/-! ## A068862.P641586435619987590

`eq[A068861(A028310(n))+1, n+1]`
-/

namespace A068862.P641586435619987590
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068861 (A028310 n).toNat + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℤ)) n

end

end A068862.P641586435619987590

/-! ## A068862.P2896183578054406733

`A068861(eq[n+1, A068861(n+1)]+1)`
-/

namespace A068862.P2896183578054406733
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068861 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068861 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A068862.P2896183578054406733

/-!
# A068864: a(1) = 1; a(n+1) is the smallest square not already in the sequence which differs from a(n) at every digit.

The programs for A068864, there is no canonical definition to state claims against.
-/

/-! ## A068864.P10218106515363649146

`((2*A185284(3*n+2))²+1+n)²`
-/

namespace A068864.P10218106515363649146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 * A185284 (3 * n + 2)) ^ 2 + 1 + (n : ℤ)) ^ 2

end

end A068864.P10218106515363649146

/-! ## A068864.P12371334728198340407

`(A003557(A105476(n))+n)²`
-/

namespace A068864.P12371334728198340407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A003557 (A105476 n).toNat + (n : ℤ)) ^ 2

end

end A068864.P12371334728198340407

/-! ## A068864.P8201853637989245231

`(A196416(A001678(n))+n)²`
-/

namespace A068864.P8201853637989245231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A196416 (A001678 n).toNat + (n : ℤ)) ^ 2

end

end A068864.P8201853637989245231

/-! ## A068864.P8795334797217341173

`(A366573(A144845(n))+n)²`
-/

namespace A068864.P8795334797217341173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A366573 (A144845 n).toNat + (n : ℤ)) ^ 2

end

end A068864.P8795334797217341173

/-! ## A068864.P15461236643469663802

`(A366573(A366571(n))+n)²`
-/

namespace A068864.P15461236643469663802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A366573 (A366571 n).toNat + (n : ℤ)) ^ 2

end

end A068864.P15461236643469663802

/-!
# A068865: a(1) = 1; a(n) is the smallest triangular number not already in the sequence which differs from a(n-1) at every digit.

The programs for A068865, there is no canonical definition to state claims against.
-/

/-! ## A068865.P17553092327371107504

`C(A130935(n+2), A173013(A058157(n+5)))`
-/

namespace A068865.P17553092327371107504
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A130935 (n + 2)).toNat (A173013 (A058157 (n + 5)).toNat).toNat

end

end A068865.P17553092327371107504

/-!
# A068866: Triangular numbers k*(k+1)/2 such that A068865(k) = k*(k+1)/2.

The programs for A068866, there is no canonical definition to state claims against.
-/

/-! ## A068866.P1747153271534409748

`eq[A010060(A007318(n+3)), A061336(n)]`
-/

namespace A068866.P1747153271534409748
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 (A007318 (n + 3)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061336 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A068866.P1747153271534409748

/-! ## A068866.P5059653515436481270

`eq[A010060(A007318(n+3)), A096940(n)]`
-/

namespace A068866.P5059653515436481270
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 (A007318 (n + 3)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096940 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A068866.P5059653515436481270

/-! ## A068866.P11401891144993166644

`lt[A084938(n), A010060(A007318(n+3))]`
-/

namespace A068866.P11401891144993166644
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084938 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 (A007318 (n + 3)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A068866.P11401891144993166644

/-! ## A068866.P15168037422774457099

`lt[A106566(n), A010060(A007318(n+3))]`
-/

namespace A068866.P15168037422774457099
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106566 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 (A007318 (n + 3)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A068866.P15168037422774457099

/-! ## A068866.P6181482702519584177

`lt[A132393(n), A010060(A034851(n+3))]`
-/

namespace A068866.P6181482702519584177
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132393 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 (A034851 (n + 3)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A068866.P6181482702519584177

/-!
# A068867: Squares k^2 such that A068864(k) = k^2.

The programs for A068867, there is no canonical definition to state claims against.
-/

/-! ## A068867.P4457822514056934312

`lt[A097986(n+1), A299160(n)]²`
-/

namespace A068867.P4457822514056934312
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097986 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299160 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n ^ 2

end

end A068867.P4457822514056934312

/-! ## A068867.P4406027226227141926

`lt[A026798(2*n)², ∏{d}[n, #]]²`
-/

namespace A068867.P4406027226227141926
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026798 (2 * n) ^ 2

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f3 n), d

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n ^ 2

end

end A068867.P4406027226227141926

/-! ## A068867.P815704360458206227

`A000290(∑[A309864(n)])`
-/

namespace A068867.P815704360458206227
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309864 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A068867.P815704360458206227

/-! ## A068867.P6121318619562119289

`∑[A253563(A185293(n))]²`
-/

namespace A068867.P6121318619562119289
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253563 (A185293 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A068867.P6121318619562119289

/-! ## A068867.P4356490601931464728

`∑[A091909(A348290(n))]²`
-/

namespace A068867.P4356490601931464728
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091909 (A348290 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A068867.P4356490601931464728

/-!
# A068869: Smallest number k such that n! + k is a square.

The programs for A068869, the canonical program `A068869.P17738796255132670994` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A068869 has offset 1).

The definition of A068869 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A068869.P18145112414721557916

`ceil(sqrt((n+1)!))²-(n+1)!`
-/

namespace A068869.P18145112414721557916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (Nat.factorial (n + 1) : ℝ)⌉ ^ 2 - (Nat.factorial (n + 1) : ℤ)

end

end A068869.P18145112414721557916

namespace A068869

/-- `ceil(sqrt((n+1)!))²-(n+1)!` -/
def P18145112414721557916.Spec : Prop :=
  ∀ n, P18145112414721557916.a n = A068869 (n + 1)

end A068869

/-! ## A068869.P17738796255132670994

`A055228(n+1)²-(n+1)!`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A068869

/-- `A055228(n+1)²-(n+1)!` -/
def P17738796255132670994.Spec : Prop :=
  ∀ n, P17738796255132670994.a n = A068869 (n + 1)

theorem P17738796255132670994.correct : P17738796255132670994.Spec := by
  intro n
  simp only [A068869, Nat.add_sub_cancel]

end A068869

/-! ## A068869.P13330870434976662374

`A240939(n+1)+A185012(n)`
-/

namespace A068869.P13330870434976662374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240939 (n + 1) + A185012 n

end

end A068869.P13330870434976662374

namespace A068869

/-- `A240939(n+1)+A185012(n)` -/
def P13330870434976662374.Spec : Prop :=
  ∀ n, P13330870434976662374.a n = A068869 (n + 1)

theorem P13330870434976662374.correct : P13330870434976662374.Spec := by
  intro n
  simp only [A068869, Nat.add_sub_cancel, A068869.P13330870434976662374.a, A068869.P17738796255132670994.a, A055228, A055228.P5197048720928582146.a, A185012, A185012.P4776339623456628527.f1, A185012.P4776339623456628527.a, A240939, A240939.P940604586909977599.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A068869

/-! ## A068869.P13944487777250018436

`(A082995(n+1)+1)*A178334(n)`
-/

namespace A068869.P13944487777250018436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A082995 (n + 1) + 1) * A178334 n

end

end A068869.P13944487777250018436

namespace A068869

/-- `(A082995(n+1)+1)*A178334(n)` -/
def P13944487777250018436.Spec : Prop :=
  ∀ n, P13944487777250018436.a n = A068869 (n + 1)

end A068869

/-! ## A068869.P5282474060007116948

`A083007(A014963(∑[2*(n+1)]))+A082995(n+1)`
-/

namespace A068869.P5282474060007116948
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083007 (A014963 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat + A082995 (n + 1)

end

end A068869.P5282474060007116948

namespace A068869

/-- `A083007(A014963(∑[2*(n+1)]))+A082995(n+1)` -/
def P5282474060007116948.Spec : Prop :=
  ∀ n, P5282474060007116948.a n = A068869 (n + 1)

end A068869

/-! ## A068869.P16167376949386159541

`A055228(n+1)²-A000142(n+1)`
-/

namespace A068869.P16167376949386159541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055228 (n + 1) ^ 2 - A000142 (n + 1)

end

end A068869.P16167376949386159541

namespace A068869

/-- `A055228(n+1)²-A000142(n+1)` -/
def P16167376949386159541.Spec : Prop :=
  ∀ n, P16167376949386159541.a n = A068869 (n + 1)

end A068869

/-! ## A068869.P12926054718367130097

`A038507(n+1)+A087374(n+1)-A052898(n+1)`
-/

namespace A068869.P12926054718367130097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038507 (n + 1) + (A087374 (n + 1) - A052898 (n + 1))

end

end A068869.P12926054718367130097

namespace A068869

/-- `A038507(n+1)+A087374(n+1)-A052898(n+1)` -/
def P12926054718367130097.Spec : Prop :=
  ∀ n, P12926054718367130097.a n = A068869 (n + 1)

end A068869

/-! ## A068869.P15573942165381984436

`A082995(n+1)-A280193(A231791(n+1))`
-/

namespace A068869.P15573942165381984436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082995 (n + 1) - A280193 (A231791 (n + 1)).toNat

end

end A068869.P15573942165381984436

namespace A068869

/-- `A082995(n+1)-A280193(A231791(n+1))` -/
def P15573942165381984436.Spec : Prop :=
  ∀ n, P15573942165381984436.a n = A068869 (n + 1)

end A068869

/-!
# A068870: Number of polyhypercubes or 4-dimensional polyominoes with n cells (regarding mirror-images as identical).

The programs for A068870, there is no canonical definition to state claims against.
-/

/-! ## A068870.P7250793519539774364

`A290305(n)-A006761(round(acot(n)+n))`
-/

namespace A068870.P7250793519539774364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290305 n - A006761 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))).toNat

end

end A068870.P7250793519539774364

/-! ## A068870.P8267307406979996302

`A008620(A039599(n)+A000266(n))`
-/

namespace A068870.P8267307406979996302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 (A039599 n + A000266 n).toNat

end

end A068870.P8267307406979996302

/-! ## A068870.P572608447244914830

`A138997(A108694(n)+A000142(n))`
-/

namespace A068870.P572608447244914830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138997 (A108694 n + A000142 n).toNat

end

end A068870.P572608447244914830

/-! ## A068870.P18400751183322777012

`or(A008620(A000266(n)), A071766(n))`
-/

namespace A068870.P18400751183322777012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A008620 (A000266 n).toNat) (A071766 n)

end

end A068870.P18400751183322777012

/-!
# A068872: Composite numbers with all divisors congruent to 1 mod 10.

The programs for A068872, there is no canonical definition to state claims against.
-/

/-! ## A068872.P9839821810587533682

`∩[A004615(n+1), A062649(n+1)]`
-/

namespace A068872.P9839821810587533682
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004615 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062649 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A068872.P9839821810587533682

/-! ## A068872.P5731602323486650534

`∩[A004615(n+1), A346507(n+1)]`
-/

namespace A068872.P5731602323486650534
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004615 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346507 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A068872.P5731602323486650534

/-! ## A068872.P8370743352560668262

`∩[A004615(n+1), A071263(n+1)]`
-/

namespace A068872.P8370743352560668262
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004615 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071263 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A068872.P8370743352560668262

/-! ## A068872.P7993948551532797087

`∩[A004615(n+1), A178705(n+1)]`
-/

namespace A068872.P7993948551532797087
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004615 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178705 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A068872.P7993948551532797087

/-! ## A068872.P12294136879744287044

`∩[A004615(n+1), A038511(n+1)]`
-/

namespace A068872.P12294136879744287044
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004615 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038511 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A068872.P12294136879744287044

/-! ## A068872.P12728998604501829335

`∩[A004615(n+1), A271630(n+1)]`
-/

namespace A068872.P12728998604501829335
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004615 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271630 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A068872.P12728998604501829335

/-! ## A068872.P11672687166907563668

`∩[A004615(n+1), A181782(n+1)]`
-/

namespace A068872.P11672687166907563668
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004615 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181782 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A068872.P11672687166907563668

/-! ## A068872.P1860408183256363029

`filter[A004615(n+1), A066247(#)]`
-/

namespace A068872.P1860408183256363029
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004615 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A066247 (f1 j).toNat = 1) n)

end

end A068872.P1860408183256363029

/-! ## A068872.P9662445139454249665

`filter[A004615(n+1), A202238(#)]`
-/

namespace A068872.P9662445139454249665
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004615 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A202238 (f1 j).toNat = 1) n)

end

end A068872.P9662445139454249665

/-! ## A068872.P8131348267703887233

`filter[A004615(n+1), A323162(#)]`
-/

namespace A068872.P8131348267703887233
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004615 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323162 (f1 j).toNat = 1) n)

end

end A068872.P8131348267703887233

/-! ## A068872.P1099386608557068848

`filter[A004615(n+2), A005171(#)]`
-/

namespace A068872.P1099386608557068848
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004615 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A068872.P1099386608557068848

/-! ## A068872.P7436468009071015201

`filter[A004615(n+2), A292438(#)]`
-/

namespace A068872.P7436468009071015201
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004615 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A292438 (f1 j).toNat = 1) n)

end

end A068872.P7436468009071015201

/-! ## A068872.P18358101681992830799

`∩[A004615(n+1), A038510(n+1)]`
-/

namespace A068872.P18358101681992830799
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004615 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038510 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A068872.P18358101681992830799

/-! ## A068872.P2800127330237728841

`∩[A004615(n+1), A052054(n+1)]`
-/

namespace A068872.P2800127330237728841
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004615 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052054 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A068872.P2800127330237728841

/-! ## A068872.P5098748351079238506

`∩[A004615(n+1), A133630(n+1)]`
-/

namespace A068872.P5098748351079238506
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004615 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133630 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A068872.P5098748351079238506

/-! ## A068872.P16673117928092792075

`∩[A004615(n+1), A038509(n+1)]`
-/

namespace A068872.P16673117928092792075
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004615 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038509 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A068872.P16673117928092792075

/-! ## A068872.P3084417567798891831

`A017281(lt[4, A031362(n+1)])`
-/

namespace A068872.P3084417567798891831
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031362 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017281 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A068872.P3084417567798891831

/-! ## A068872.P13174875729501092769

`∩[A004615(n+1), A181781(n+1)]`
-/

namespace A068872.P13174875729501092769
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004615 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181781 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A068872.P13174875729501092769

/-! ## A068872.P14985609657596312428

`∩[A004615(n+1), A069063(n+1)]`
-/

namespace A068872.P14985609657596312428
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004615 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069063 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A068872.P14985609657596312428

/-! ## A068872.P18262098324300790554

`∩[A004615(n+1), A052202(n+1)]`
-/

namespace A068872.P18262098324300790554
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004615 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052202 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A068872.P18262098324300790554

/-!
# A068875: Expansion of (1 + x*C)*C, where C = (1 - (1 - 4*x)^(1/2))/(2*x) is the g.f. for Catalan numbers, A000108.

The programs for A068875, the canonical program `A068875.P941133582365312759` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A068875 has offset 0).

The definition of A068875 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 172 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A068875.P2349146480922201439

`(4-6/(n+1))*a(n-1)` with `a(0)=1, a(1)=2`
-/

namespace A068875.P2349146480922201439
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 2] fun n a =>
  (4 - 6 / (n + 1 : ℚ)) * a (n - 1)

end

end A068875.P2349146480922201439

namespace A068875

/-- `(4-6/(n+1))*a(n-1)` -/
def P2349146480922201439.Spec : Prop :=
  ∀ n, P2349146480922201439.a n = (A068875 n : ℚ)

end A068875

/-! ## A068875.P13015290560180793301

`record[(4-6/n)*a(n-1)]` with `a(0)=1, a(1)=0, a(2)=2`
-/

namespace A068875.P13015290560180793301
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1, 0, 2] fun n f1 =>
  (4 - 6 / (n : ℚ)) * f1 (n - 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A068875.P13015290560180793301

namespace A068875

/-- `record[(4-6/n)*a(n-1)]` -/
def P13015290560180793301.Spec : Prop :=
  ∀ n, P13015290560180793301.a n = (A068875 n : ℚ)

end A068875

/-! ## A068875.P941133582365312759

`A329688(3*n)`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A068875

/-- `A329688(3*n)` -/
def P941133582365312759.Spec : Prop :=
  ∀ n, P941133582365312759.a n = A068875 n

theorem P941133582365312759.correct : P941133582365312759.Spec := by
  intro n
  simp only [A068875]

end A068875

/-! ## A068875.P16586504601139749597

`A329686(4*n)`
-/

namespace A068875.P16586504601139749597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329686 (4 * n)

end

end A068875.P16586504601139749597

namespace A068875

/-- `A329686(4*n)` -/
def P16586504601139749597.Spec : Prop :=
  ∀ n, P16586504601139749597.a n = A068875 n

end A068875

/-! ## A068875.P17372329864313882930

`record[abs(A104624(n))]`
-/

namespace A068875.P17372329864313882930
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A104624 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A068875.P17372329864313882930

namespace A068875

/-- `record[abs(A104624(n))]` -/
def P17372329864313882930.Spec : Prop :=
  ∀ n, P17372329864313882930.a n = A068875 n

end A068875

/-! ## A068875.P2350808565992956347

`record[abs(A182122(n))]`
-/

namespace A068875.P2350808565992956347
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A182122 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A068875.P2350808565992956347

namespace A068875

/-- `record[abs(A182122(n))]` -/
def P2350808565992956347.Spec : Prop :=
  ∀ n, P2350808565992956347.a n = A068875 n

end A068875

/-! ## A068875.P1254818702248568811

`ceil(A131428(n)+abs(sin(n)))`
-/

namespace A068875.P1254818702248568811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A131428 n : ℝ) + |Real.sin (n : ℝ)|⌉

end

end A068875.P1254818702248568811

namespace A068875

/-- `ceil(A131428(n)+abs(sin(n)))` -/
def P1254818702248568811.Spec : Prop :=
  ∀ n, P1254818702248568811.a n = A068875 n

end A068875

/-! ## A068875.P12702886455086704930

`ceil(cosh(sin(n)))*A000108(n)`
-/

namespace A068875.P12702886455086704930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.cosh (Real.sin (n : ℝ))⌉ * A000108 n

end

end A068875.P12702886455086704930

namespace A068875

/-- `ceil(cosh(sin(n)))*A000108(n)` -/
def P12702886455086704930.Spec : Prop :=
  ∀ n, P12702886455086704930.a n = A068875 n

end A068875

/-! ## A068875.P6684271589663992253

`A104722(A004273(n))`
-/

namespace A068875.P6684271589663992253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104722 (A004273 n).toNat

end

end A068875.P6684271589663992253

namespace A068875

/-- `A104722(A004273(n))` -/
def P6684271589663992253.Spec : Prop :=
  ∀ n, P6684271589663992253.a n = A068875 n

end A068875

/-! ## A068875.P18404429590669490324

`A089408(A103517(n))`
-/

namespace A068875.P18404429590669490324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089408 (A103517 n).toNat

end

end A068875.P18404429590669490324

namespace A068875

/-- `A089408(A103517(n))` -/
def P18404429590669490324.Spec : Prop :=
  ∀ n, P18404429590669490324.a n = A068875 n

end A068875

/-! ## A068875.P1302915723979156354

`record[A089408(A014681(n))]`
-/

namespace A068875.P1302915723979156354
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089408 (A014681 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A068875.P1302915723979156354

namespace A068875

/-- `record[A089408(A014681(n))]` -/
def P1302915723979156354.Spec : Prop :=
  ∀ n, P1302915723979156354.a n = A068875 n

end A068875

/-! ## A068875.P18405742526698211677

`A104722(record[A026741(n)])`
-/

namespace A068875.P18405742526698211677
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104722 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A068875.P18405742526698211677

namespace A068875

/-- `A104722(record[A026741(n)])` -/
def P18405742526698211677.Spec : Prop :=
  ∀ n, P18405742526698211677.a n = A068875 n

end A068875

/-! ## A068875.P10722491459221111210

`A089408(A163300(n+1))`
-/

namespace A068875.P10722491459221111210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089408 (A163300 (n + 1)).toNat

end

end A068875.P10722491459221111210

namespace A068875

/-- `A089408(A163300(n+1))` -/
def P10722491459221111210.Spec : Prop :=
  ∀ n, P10722491459221111210.a n = A068875 n

end A068875

/-! ## A068875.P4158800949542248009

`A104722(A004277(n)-1)`
-/

namespace A068875.P4158800949542248009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104722 (A004277 n - 1).toNat

end

end A068875.P4158800949542248009

namespace A068875

/-- `A104722(A004277(n)-1)` -/
def P4158800949542248009.Spec : Prop :=
  ∀ n, P4158800949542248009.a n = A068875 n

end A068875

/-! ## A068875.P13008958969408052089

`A089408(A051755(n+2))`
-/

namespace A068875.P13008958969408052089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089408 (A051755 (n + 2)).toNat

end

end A068875.P13008958969408052089

namespace A068875

/-- `A089408(A051755(n+2))` -/
def P13008958969408052089.Spec : Prop :=
  ∀ n, P13008958969408052089.a n = A068875 n

end A068875

/-! ## A068875.P8321304461427503579

`A131428(n)+A057427(n)`
-/

namespace A068875.P8321304461427503579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131428 n + A057427 n

end

end A068875.P8321304461427503579

namespace A068875

/-- `A131428(n)+A057427(n)` -/
def P8321304461427503579.Spec : Prop :=
  ∀ n, P8321304461427503579.a n = A068875 n

end A068875

/-! ## A068875.P3849153247473142992

`A131428(n)-A057428(n)`
-/

namespace A068875.P3849153247473142992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131428 n - A057428 n

end

end A068875.P3849153247473142992

namespace A068875

/-- `A131428(n)-A057428(n)` -/
def P3849153247473142992.Spec : Prop :=
  ∀ n, P3849153247473142992.a n = A068875 n

end A068875

/-! ## A068875.P10163004129346120505

`A383251(n)-A054977(n)`
-/

namespace A068875.P10163004129346120505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383251 n - A054977 n

end

end A068875.P10163004129346120505

namespace A068875

/-- `A383251(n)-A054977(n)` -/
def P10163004129346120505.Spec : Prop :=
  ∀ n, P10163004129346120505.a n = A068875 n

end A068875

/-! ## A068875.P7836232025841020231

`A168491(n)*A280560(n)`
-/

namespace A068875.P7836232025841020231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168491 n * A280560 n

end

end A068875.P7836232025841020231

namespace A068875

/-- `A168491(n)*A280560(n)` -/
def P7836232025841020231.Spec : Prop :=
  ∀ n, P7836232025841020231.a n = A068875 n

end A068875

/-!
# A068878: Denominators of nonzero terms in the expansion of sin(x)+exp(x)-1-2*x.

The programs for A068878, there is no canonical definition to state claims against.
-/

/-! ## A068878.P8600096896554337933

`A187741(A047528(n+2))`
-/

namespace A068878.P8600096896554337933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187741 (A047528 (n + 2)).toNat

end

end A068878.P8600096896554337933

/-! ## A068878.P8776344520686475866

`A004773(n+2)!/A177702(n)`
-/

namespace A068878.P8776344520686475866
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A004773 (n + 2)).toNat : ℚ) / (A177702 n : ℚ)

end

end A068878.P8776344520686475866

/-! ## A068878.P10425410731782943774

`A004773(n+2)!/Δ[A004773(n)]`
-/

namespace A068878.P10425410731782943774
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004773 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A004773 (n + 2)).toNat : ℚ) / (f1 (n + 1) - f1 n : ℚ)

end

end A068878.P10425410731782943774

/-!
# A068880: Smallest n-digit square with property that digits alternate in parity.

The programs for A068880, there is no canonical definition to state claims against.
-/

/-! ## A068880.P2342989806030217558

`A248227(2*A148802(n+1))²`
-/

namespace A068880.P2342989806030217558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248227 (2 * A148802 (n + 1)).toNat ^ 2

end

end A068880.P2342989806030217558

/-!
# A068882: Triangular numbers with property that digits alternate in parity.

The programs for A068882, there is no canonical definition to state claims against.
-/

/-! ## A068882.P6574637794123313294

`filter[A030141(n+1), A073424(#)]`
-/

namespace A068882.P6574637794123313294
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030141 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A073424 (f1 j).toNat = 1) n)

end

end A068882.P6574637794123313294

/-! ## A068882.P14793094368098526710

`eq[A006019(n), A228710(n)]`
-/

namespace A068882.P14793094368098526710
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006019 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228710 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A068882.P14793094368098526710

/-! ## A068882.P13116702775053170505

`eq[A029635(n), A228710(n)]`
-/

namespace A068882.P13116702775053170505
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029635 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228710 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A068882.P13116702775053170505

/-! ## A068882.P8894092374882762154

`eq[A046902(n), A228710(n)]`
-/

namespace A068882.P8894092374882762154
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046902 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228710 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A068882.P8894092374882762154

/-! ## A068882.P13885315088332305028

`eq[A057945(n), A228710(n)]`
-/

namespace A068882.P13885315088332305028
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057945 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228710 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A068882.P13885315088332305028

/-!
# A068885: Numerator of Sum_{k=1..n} k/phi(k).

The programs for A068885, there is no canonical definition to state claims against.
-/

/-! ## A068885.P6977735178537339241

`A007306(A228385(n+1))-A011782(n)`
-/

namespace A068885.P6977735178537339241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007306 (A228385 (n + 1)).toNat - A011782 n

end

end A068885.P6977735178537339241

/-! ## A068885.P9903248320013937700

`A007306(A228385(n+1))-A066178(n)`
-/

namespace A068885.P9903248320013937700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007306 (A228385 (n + 1)).toNat - A066178 n

end

end A068885.P9903248320013937700

/-!
# A068886: First of n consecutive numbers such that the k-th number is divisible by a k-th power for k = 1,...,n.

The programs for A068886, there is no canonical definition to state claims against.
-/

/-! ## A068886.P2260226533542776316

`A088079(ceil(sqrt(∑[2*n])))-n`
-/

namespace A068886.P2260226533542776316
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088079 ⌈Real.sqrt ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℝ)⌉.toNat - (n : ℤ)

end

end A068886.P2260226533542776316

/-! ## A068886.P17420476649955735115

`A088078(n+1)+char[abs(xor(n, -2))]`
-/

namespace A068886.P17420476649955735115
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.xor (n : ℤ) (-2)|

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088078 (n + 1) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A068886.P17420476649955735115

/-!
# A068887: Primes with property that digits alternate in parity individually as well as in concatenation with previous terms.

The programs for A068887, there is no canonical definition to state claims against.
-/

/-! ## A068887.P15114146484008610971

`p?[∪[A226016(n+1), ∑[n]]]`
-/

namespace A068887.P15114146484008610971
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226016 (n + 1)

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = x) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A068887.P15114146484008610971

/-! ## A068887.P10418345542321526326

`A226016(A123108(2*n))+char[1]`
-/

namespace A068887.P10418345542321526326
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226016 (A123108 (2 * n)).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A068887.P10418345542321526326

/-! ## A068887.P10985594918652040449

`∪[A226016(n+1), A229092(n+1)]`
-/

namespace A068887.P10985594918652040449
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226016 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229092 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A068887.P10985594918652040449

/-! ## A068887.P9486351235007120280

`∪[A226016(n+1), A244113(n+1)]`
-/

namespace A068887.P9486351235007120280
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226016 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244113 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A068887.P9486351235007120280

/-! ## A068887.P11183542036739349027

`record[A020639(A062285(round(acot(n)+n)))]`
-/

namespace A068887.P11183542036739349027
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A062285 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A068887.P11183542036739349027

/-!
# A068888: Squares with property that digits alternate in parity individually as well as in concatenation with previous terms.

The programs for A068888, there is no canonical definition to state claims against.
-/

/-! ## A068888.P9093255289759284294

`∑[A045778(A076875(n))]²`
-/

namespace A068888.P9093255289759284294
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045778 (A076875 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A068888.P9093255289759284294

/-! ## A068888.P13629162838427812055

`∑[A027748(A141761(n))]²`
-/

namespace A068888.P13629162838427812055
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027748 (A141761 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A068888.P13629162838427812055

/-! ## A068888.P14230268294959619769

`∑[A376758(A177335(n+1))]²`
-/

namespace A068888.P14230268294959619769
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376758 (A177335 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A068888.P14230268294959619769

/-! ## A068888.P10339321194245184371

`record[A242357(A137756(n+1))²]`
-/

namespace A068888.P10339321194245184371
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242357 (A137756 (n + 1)).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A068888.P10339321194245184371

/-!
# A068889: Triangular numbers with property that digits alternate in parity individually as well as in concatenation with previous terms.

The programs for A068889, there is no canonical definition to state claims against.
-/

/-! ## A068889.P5335320911203238631

`A068882(eq[A000700(n), A303399(n+1)])`
-/

namespace A068889.P5335320911203238631
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000700 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303399 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068882 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A068889.P5335320911203238631

/-! ## A068889.P2934692286992739373

`A337333(A006043(n))`
-/

namespace A068889.P2934692286992739373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337333 (A006043 n).toNat

end

end A068889.P2934692286992739373

/-!
# A068890: a(1) = 1; a(n) = smallest nontrivial n-th power with property that digits alternate in parity.

The programs for A068890, there is no canonical definition to state claims against.
-/

/-! ## A068890.P14514073254900196177

`∑{e}[and(n+3, -2), #]^(n+1)`
-/

namespace A068890.P14514073254900196177
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n + 3 : ℤ) (-2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p) ^ (n + 1)

end

end A068890.P14514073254900196177

/-! ## A068890.P5533941290048846642

`∑{e}[n%2+n+2, #]^(n+1)`
-/

namespace A068890.P5533941290048846642
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 2 + n + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p) ^ (n + 1)

end

end A068890.P5533941290048846642

/-! ## A068890.P10647099934012697499

`round(sqrt(∏{p}[n+1, #+1]))^(n+1)`
-/

namespace A068890.P10647099934012697499
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt ((∏ p ∈ Nat.primeFactors (f1 n), (p + 1) : ℕ) : ℝ)) ^ (n + 1)

end

end A068890.P10647099934012697499

/-! ## A068890.P4627424389469300882

`∑{e}[∑{d}[n+1, 2^#], #]^(n+1)`
-/

namespace A068890.P4627424389469300882
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), 2 ^ d

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p) ^ (n + 1)

end

end A068890.P4627424389469300882

/-!
# A068893: Nonpalindromic numbers that have the same prime signature as their digit reversal.

The programs for A068893, there is no canonical definition to state claims against.
-/

/-! ## A068893.P13521379325088885256

`∩[A085869(n+1), A350867(n+1)]`
-/

namespace A068893.P13521379325088885256
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085869 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350867 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A068893.P13521379325088885256

/-! ## A068893.P2335144391314529158

`∩[A062895(n+1), A109019(n+1)]`
-/

namespace A068893.P2335144391314529158
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062895 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109019 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A068893.P2335144391314529158

/-! ## A068893.P2988088125906710330

`∩[A085869(n+1), A109019(n+1)]`
-/

namespace A068893.P2988088125906710330
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085869 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109019 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A068893.P2988088125906710330

/-! ## A068893.P11054339180610315477

`∩[A109019(n+1), A350867(n+1)]`
-/

namespace A068893.P11054339180610315477
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109019 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350867 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A068893.P11054339180610315477

/-! ## A068893.P62718577791345770

`∩[A029742(n+1), A085869(n+1)]`
-/

namespace A068893.P62718577791345770
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029742 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085869 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A068893.P62718577791345770

/-! ## A068893.P2106256813410888238

`∩[A062895(n+1), A115662(n+1)]`
-/

namespace A068893.P2106256813410888238
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062895 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115662 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A068893.P2106256813410888238

/-! ## A068893.P744485390514877503

`∩[A085869(n+1), A115662(n+1)]`
-/

namespace A068893.P744485390514877503
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085869 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115662 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A068893.P744485390514877503

/-! ## A068893.P17445467312034421435

`∩[A115662(n+1), A350867(n+1)]`
-/

namespace A068893.P17445467312034421435
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115662 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350867 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A068893.P17445467312034421435

/-! ## A068893.P11545712549718561842

`∩[A109019(n+1), A115661(n+1)]`
-/

namespace A068893.P11545712549718561842
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109019 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115661 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A068893.P11545712549718561842

/-! ## A068893.P12895329775911044065

`∩[A115661(n+1), A350867(n+1)]`
-/

namespace A068893.P12895329775911044065
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115661 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350867 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A068893.P12895329775911044065

/-!
# A068896: Primes containing 2k digits in which the sum of the first k digits is that of the last k digits.

The programs for A068896, there is no canonical definition to state claims against.
-/

/-! ## A068896.P2665034319755408954

`p?[A240927(n+1)]`
-/

namespace A068896.P2665034319755408954
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240927 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A068896.P2665034319755408954

/-! ## A068896.P3548013636160824617

`record[p?[A240927(A065648(n))]]`
-/

namespace A068896.P3548013636160824617
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240927 (A065648 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A068896.P3548013636160824617

/-! ## A068896.P6615231146766911373

`filter[A240927(n+1), A010051(#)]`
-/

namespace A068896.P6615231146766911373
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240927 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A068896.P6615231146766911373

/-! ## A068896.P12797498992494782866

`filter[A240927(n+1), A080339(#)]`
-/

namespace A068896.P12797498992494782866
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240927 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A080339 (f1 j).toNat = 1) n)

end

end A068896.P12797498992494782866

/-! ## A068896.P11381073930597075945

`filter[A240927(n+1), A080545(#)]`
-/

namespace A068896.P11381073930597075945
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240927 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A080545 (f1 j).toNat = 1) n)

end

end A068896.P11381073930597075945

/-! ## A068896.P8959165746577603728

`filter[A240927(n+1), A171387(#)]`
-/

namespace A068896.P8959165746577603728
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240927 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A171387 (f1 j).toNat = 1) n)

end

end A068896.P8959165746577603728

/-! ## A068896.P17232919843174112244

`filter[A240927(n+1), A257531(#)]`
-/

namespace A068896.P17232919843174112244
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240927 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A257531 (f1 j).toNat = 1) n)

end

end A068896.P17232919843174112244

/-! ## A068896.P8461434900821852794

`filter[A240927(n+1), A323152(#)]`
-/

namespace A068896.P8461434900821852794
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240927 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323152 (f1 j).toNat = 1) n)

end

end A068896.P8461434900821852794

/-! ## A068896.P1433386410657928360

`filter[A240927(n+1), A323153(#)]`
-/

namespace A068896.P1433386410657928360
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240927 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323153 (f1 j).toNat = 1) n)

end

end A068896.P1433386410657928360

/-! ## A068896.P8484807262167242487

`filter[A240927(n+1), A351957(#)]`
-/

namespace A068896.P8484807262167242487
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240927 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A351957 (f1 j).toNat = 1) n)

end

end A068896.P8484807262167242487

/-!
# A068898: Triangular numbers containing 2k digits in which the sum of the first k digits = that of the rest.

The programs for A068898, there is no canonical definition to state claims against.
-/

/-! ## A068898.P17944709173470107395

`filter[A240927(n+1), A010054(#)]`
-/

namespace A068898.P17944709173470107395
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240927 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010054 (f1 j).toNat = 1) n)

end

end A068898.P17944709173470107395

/-! ## A068898.P16559280835658391020

`filter[A240927(n+1), A073424(#)]`
-/

namespace A068898.P16559280835658391020
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240927 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A073424 (f1 j).toNat = 1) n)

end

end A068898.P16559280835658391020

/-! ## A068898.P6948858335668092304

`∩[A240927(n+1), A000217(n)]`
-/

namespace A068898.P6948858335668092304
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240927 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A068898.P6948858335668092304

/-!
# A068899: Triangular numbers containing 2n digits obtained by duplicating the first n digits; i.e., triangular numbers in A020338.

The programs for A068899, there is no canonical definition to state claims against.
-/

/-! ## A068899.P2732996440915201280

`∩[ceil(or(1, n*(n+3))/2), A020338(n+3)]`
-/

namespace A068899.P2732996440915201280
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Nat.lor 1 (n * (n + 3)) : ℚ) / 2⌉

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020338 (n + 3)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A068899.P2732996440915201280

/-! ## A068899.P12106362481955099499

`∩[A020338(n+1), A000217(n)]`
-/

namespace A068899.P12106362481955099499
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020338 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A068899.P12106362481955099499

/-! ## A068899.P11764817813378343478

`∩[A020338(n+1), A068898(n+1)]`
-/

namespace A068899.P11764817813378343478
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020338 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068898 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A068899.P11764817813378343478

/-! ## A068899.P15158887101964262932

`∩[A020338(n+1), A133263(n+9)-2]`
-/

namespace A068899.P15158887101964262932
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020338 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133263 (n + 9) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A068899.P15158887101964262932

