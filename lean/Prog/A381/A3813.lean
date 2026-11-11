import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C004
import Seq.B000.C006
import Seq.B000.C007
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C023
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C031
import Seq.B000.C033
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C039
import Seq.B000.C043
import Seq.B000.C044
import Seq.B000.C049
import Seq.B001.C000
import Seq.B001.C002
import Seq.B001.C005
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C011
import Seq.B001.C012
import Seq.B001.C013
import Seq.B001.C014
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C005
import Seq.B002.C006
import Seq.B002.C007
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C003
import Seq.B003.C004
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C003
import Seq.B004.C004
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
import SequenceMachineLib.Triangle

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A381301: E.g.f. A(x) satisfies A(x) = 1/( 1 - x * cos(x * A(x)^(1/2)) / A(x) ).

The programs for A381301, there is no canonical definition to state claims against.
-/

/-! ## A381301.P8437641851296016754

`A190392(n+1)+A010051(A007788(n))`
-/

namespace A381301.P8437641851296016754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190392 (n + 1) + A010051 (A007788 n).toNat

end

end A381301.P8437641851296016754

/-!
# A381302: E.g.f. A(x) satisfies A(x) = 1/( 1 - x * cos(x * A(x)^(1/2)) ).

The programs for A381302, there is no canonical definition to state claims against.
-/

/-! ## A381302.P11746956312001801228

`A216273(A011782(2*n))+n`
-/

namespace A381302.P11746956312001801228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216273 (A011782 (2 * n)).toNat + (n : ℤ)

end

end A381302.P11746956312001801228

/-! ## A381302.P16977835558895017510

`gcd(n, C(2, n²))-A257684(A002110(n))`
-/

namespace A381302.P16977835558895017510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.gcd n (Nat.choose 2 (n ^ 2)) : ℤ) - A257684 (A002110 n).toNat

end

end A381302.P16977835558895017510

/-!
# A381304: E.g.f. A(x) satisfies A(x) = 1/( 1 - sinh(x * A(x)^(1/2)) / A(x)^(1/2) ).

The programs for A381304, there is no canonical definition to state claims against.
-/

/-! ## A381304.P88960002487266804

`A052410(A276911(n+1))/(n+1)`
-/

namespace A381304.P88960002487266804
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052410 (A276911 (n + 1)).toNat : ℚ) / (n + 1 : ℚ)

end

end A381304.P88960002487266804

/-! ## A381304.P17387347193536864021

`A028310(A276911(n+1)/A005496(n))`
-/

namespace A381304.P17387347193536864021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (SequenceMachineLib.roundAway ((A276911 (n + 1) : ℚ) / (A005496 n : ℚ))).toNat

end

end A381304.P17387347193536864021

/-! ## A381304.P4558794891370260057

`A028310(A276911(n+1)/A077168(n))`
-/

namespace A381304.P4558794891370260057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (SequenceMachineLib.roundAway ((A276911 (n + 1) : ℚ) / (A077168 n : ℚ))).toNat

end

end A381304.P4558794891370260057

/-!
# A381307: E.g.f. A(x) satisfies A(x) = exp( x * cosh(x * A(x)^(1/2)) ).

The programs for A381307, there is no canonical definition to state claims against.
-/

/-! ## A381307.P14875246804847048676

`n*A003002(n!)+1-n²`
-/

namespace A381307.P14875246804847048676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A003002 (Nat.factorial n) + 1 - (n ^ 2 : ℤ)

end

end A381307.P14875246804847048676

/-! ## A381307.P9105904736520200303

`A373994(n*a(n-2))` with `a(0)=1, a(1)=1, a(2)=1, a(3)=4, a(4)=25`
-/

namespace A381307.P9105904736520200303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1, 4, 25] fun n a =>
  A373994 ((n : ℤ) * a (n - 2)).toNat

end

end A381307.P9105904736520200303

/-!
# A381308: E.g.f. A(x) satisfies A(x) = exp( x * cos(x * A(x)^(1/2)) ).

The programs for A381308, there is no canonical definition to state claims against.
-/

/-! ## A381308.P16353604586520717933

`1-A196443(A030273(3*n+2))`
-/

namespace A381308.P16353604586520717933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A196443 (A030273 (3 * n + 2)).toNat

end

end A381308.P16353604586520717933

/-! ## A381308.P11475382578678008031

`Δ[A090245(n)-A001678(2*(n+1))]`
-/

namespace A381308.P11475382578678008031
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090245 n - A001678 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A381308.P11475382578678008031

/-!
# A381309: E.g.f. A(x) satisfies A(x) = exp( sinh(x * A(x)^(1/2)) / A(x)^(1/2) ).

The programs for A381309, there is no canonical definition to state claims against.
-/

/-! ## A381309.P17202022923176250670

`∑{#}[n, (n/2-#/2+1)^(#-1)*A136630(C(n+1, 2)+#)]`
-/

namespace A381309.P17202022923176250670
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), ((n : ℚ) / 2 - (k : ℚ) / 2 + 1) ^ ((k : ℤ) - 1 : ℤ) * (A136630 (Nat.choose (n + 1) 2 + k) : ℚ)

end

end A381309.P17202022923176250670

/-! ## A381309.P11177905506067220979

`A078898(ceil(5^(n-1)))`
-/

namespace A381309.P11177905506067220979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078898 ⌈(5 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉.toNat

end

end A381309.P11177905506067220979

/-! ## A381309.P5112299888283270301

`A126760(A055842(n))`
-/

namespace A381309.P5112299888283270301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126760 (A055842 n).toNat

end

end A381309.P5112299888283270301

/-!
# A381310: E.g.f. A(x) satisfies A(x) = exp( sin(x * A(x)^(1/2)) / A(x)^(1/2) ).

The programs for A381310, there is no canonical definition to state claims against.
-/

/-! ## A381310.P2450343514556938071

`A333749(n+1)-A343984(A006252(n))`
-/

namespace A381310.P2450343514556938071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333749 (n + 1) - A343984 (A006252 n).toNat

end

end A381310.P2450343514556938071

/-! ## A381310.P1510100889988754366

`A211095(A081631(n))-A309630(3*n)`
-/

namespace A381310.P1510100889988754366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211095 (A081631 n).toNat - A309630 (3 * n)

end

end A381310.P1510100889988754366

/-! ## A381310.P1162509848547166741

`A272901(A282953(n))-A309630(3*n)`
-/

namespace A381310.P1162509848547166741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272901 (A282953 n).toNat - A309630 (3 * n)

end

end A381310.P1162509848547166741

/-!
# A381311: Numbers whose powerful part (A057521) is a power of a prime with an even exponent >= 2.

The programs for A381311, the canonical program `A381311.P8099793778329607200` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A381311 has offset 1).

The definition of A381311 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7211 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A381311.P4689796993907324364

`filter[A377816(n+1), A359466(#)]`
-/

namespace A381311.P4689796993907324364
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377816 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359466 (f1 j).toNat = 1) n)

end

end A381311.P4689796993907324364

namespace A381311

/-- `filter[A377816(n+1), A359466(#)]` -/
def P4689796993907324364.Spec : Prop :=
  ∀ n, P4689796993907324364.a n = A381311 (n + 1)

end A381311

/-! ## A381311.P152086442969158274

`filter[A162645(1+n), A359466(#)]`
-/

namespace A381311.P152086442969158274
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162645 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359466 (f1 j).toNat = 1) n)

end

end A381311.P152086442969158274

namespace A381311

/-- `filter[A162645(1+n), A359466(#)]` -/
def P152086442969158274.Spec : Prop :=
  ∀ n, P152086442969158274.a n = A381311 (n + 1)

end A381311

/-! ## A381311.P4956386726320883149

`filter[A384519(n+1), A359466(#)]`
-/

namespace A381311.P4956386726320883149
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384519 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359466 (f1 j).toNat = 1) n)

end

end A381311.P4956386726320883149

namespace A381311

/-- `filter[A384519(n+1), A359466(#)]` -/
def P4956386726320883149.Spec : Prop :=
  ∀ n, P4956386726320883149.a n = A381311 (n + 1)

end A381311

/-! ## A381311.P93254180427522463

`filter[A368714(n+1), A359466(#)]`
-/

namespace A381311.P93254180427522463
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368714 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359466 (f1 j).toNat = 1) n)

end

end A381311.P93254180427522463

namespace A381311

/-- `filter[A368714(n+1), A359466(#)]` -/
def P93254180427522463.Spec : Prop :=
  ∀ n, P93254180427522463.a n = A381311 (n + 1)

end A381311

/-! ## A381311.P11701098601784830203

`filter[A240112(n+1), A359466(#)]`
-/

namespace A381311.P11701098601784830203
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240112 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359466 (f1 j).toNat = 1) n)

end

end A381311.P11701098601784830203

namespace A381311

/-- `filter[A240112(n+1), A359466(#)]` -/
def P11701098601784830203.Spec : Prop :=
  ∀ n, P11701098601784830203.a n = A381311 (n + 1)

end A381311

/-! ## A381311.P4917773593610387176

`filter[A072587(n+1), A359466(#)]`
-/

namespace A381311.P4917773593610387176
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072587 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359466 (f1 j).toNat = 1) n)

end

end A381311.P4917773593610387176

namespace A381311

/-- `filter[A072587(n+1), A359466(#)]` -/
def P4917773593610387176.Spec : Prop :=
  ∀ n, P4917773593610387176.a n = A381311 (n + 1)

end A381311

/-! ## A381311.P8099793778329607200

`∩[A072587(n+1), A190641(n+1)]`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A381311

/-- `∩[A072587(n+1), A190641(n+1)]` -/
def P8099793778329607200.Spec : Prop :=
  ∀ n, (P8099793778329607200.a n : ℤ) = A381311 (n + 1)

theorem P8099793778329607200.correct : P8099793778329607200.Spec := by
  intro n
  simp only [A381311, Nat.add_sub_cancel]

end A381311

/-! ## A381311.P12169067289375320692

`∩[A162645(n+1), A190641(n+1)]`
-/

namespace A381311.P12169067289375320692
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162645 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190641 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A381311.P12169067289375320692

namespace A381311

/-- `∩[A162645(n+1), A190641(n+1)]` -/
def P12169067289375320692.Spec : Prop :=
  ∀ n, (P12169067289375320692.a n : ℤ) = A381311 (n + 1)

end A381311

/-! ## A381311.P363626130498663135

`∩[A190641(n+1), A240112(n+1)]`
-/

namespace A381311.P363626130498663135
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190641 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240112 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A381311.P363626130498663135

namespace A381311

/-- `∩[A190641(n+1), A240112(n+1)]` -/
def P363626130498663135.Spec : Prop :=
  ∀ n, (P363626130498663135.a n : ℤ) = A381311 (n + 1)

end A381311

/-! ## A381311.P10812345842933616557

`∩[A190641(n+1), A377816(n+1)]`
-/

namespace A381311.P10812345842933616557
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190641 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377816 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A381311.P10812345842933616557

namespace A381311

/-- `∩[A190641(n+1), A377816(n+1)]` -/
def P10812345842933616557.Spec : Prop :=
  ∀ n, (P10812345842933616557.a n : ℤ) = A381311 (n + 1)

end A381311

/-! ## A381311.P16494456060974701183

`filter[A335275(n+1), A359466(#)]`
-/

namespace A381311.P16494456060974701183
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335275 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359466 (f1 j).toNat = 1) n)

end

end A381311.P16494456060974701183

namespace A381311

/-- `filter[A335275(n+1), A359466(#)]` -/
def P16494456060974701183.Spec : Prop :=
  ∀ n, P16494456060974701183.a n = A381311 (n + 1)

end A381311

/-! ## A381311.P645119072684494378

`∩[A190641(n+1), A335275(n+1)]`
-/

namespace A381311.P645119072684494378
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190641 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335275 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A381311.P645119072684494378

namespace A381311

/-- `∩[A190641(n+1), A335275(n+1)]` -/
def P645119072684494378.Spec : Prop :=
  ∀ n, (P645119072684494378.a n : ℤ) = A381311 (n + 1)

end A381311

/-! ## A381311.P6264697851582765167

`filter[A337052(n+1), A359466(#)]`
-/

namespace A381311.P6264697851582765167
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337052 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359466 (f1 j).toNat = 1) n)

end

end A381311.P6264697851582765167

namespace A381311

/-- `filter[A337052(n+1), A359466(#)]` -/
def P6264697851582765167.Spec : Prop :=
  ∀ n, P6264697851582765167.a n = A381311 (n + 1)

end A381311

/-! ## A381311.P16099451988698735427

`∩[A190641(n+1), A337052(n+1)]`
-/

namespace A381311.P16099451988698735427
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190641 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337052 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A381311.P16099451988698735427

namespace A381311

/-- `∩[A190641(n+1), A337052(n+1)]` -/
def P16099451988698735427.Spec : Prop :=
  ∀ n, (P16099451988698735427.a n : ℤ) = A381311 (n + 1)

end A381311

/-!
# A381312: Numbers whose powerful part (A057521) is a power of a prime with an odd exponent >= 3 (A056824).

The programs for A381312, the canonical program `A381312.P9121051860855082325` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A381312 has offset 1).

The definition of A381312 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8129 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A381312.P4589774915701762566

`filter[A301517(1+n), A359466(#)]`
-/

namespace A381312.P4589774915701762566
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301517 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359466 (f1 j).toNat = 1) n)

end

end A381312.P4589774915701762566

namespace A381312

/-- `filter[A301517(1+n), A359466(#)]` -/
def P4589774915701762566.Spec : Prop :=
  ∀ n, P4589774915701762566.a n = A381312 (n + 1)

end A381312

/-! ## A381312.P71901771756625352

`filter[A374459(n+1), A359466(#)]`
-/

namespace A381312.P71901771756625352
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374459 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359466 (f1 j).toNat = 1) n)

end

end A381312.P71901771756625352

namespace A381312

/-- `filter[A374459(n+1), A359466(#)]` -/
def P71901771756625352.Spec : Prop :=
  ∀ n, P71901771756625352.a n = A381312 (n + 1)

end A381312

/-! ## A381312.P16548235278317159735

`filter[A384520(n+1), A359466(#)]`
-/

namespace A381312.P16548235278317159735
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384520 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359466 (f1 j).toNat = 1) n)

end

end A381312.P16548235278317159735

namespace A381312

/-- `filter[A384520(n+1), A359466(#)]` -/
def P16548235278317159735.Spec : Prop :=
  ∀ n, P16548235278317159735.a n = A381312 (n + 1)

end A381312

/-! ## A381312.P7267739363083885452

`filter[A240111(n+1), A359466(#)]`
-/

namespace A381312.P7267739363083885452
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240111 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359466 (f1 j).toNat = 1) n)

end

end A381312.P7267739363083885452

namespace A381312

/-- `filter[A240111(n+1), A359466(#)]` -/
def P7267739363083885452.Spec : Prop :=
  ∀ n, P7267739363083885452.a n = A381312 (n + 1)

end A381312

/-! ## A381312.P9121051860855082325

`filter[A377844(n+1), A359466(#)]`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A381312

/-- `filter[A377844(n+1), A359466(#)]` -/
def P9121051860855082325.Spec : Prop :=
  ∀ n, P9121051860855082325.a n = A381312 (n + 1)

theorem P9121051860855082325.correct : P9121051860855082325.Spec := by
  intro n
  simp only [A381312, Nat.add_sub_cancel]

end A381312

/-! ## A381312.P3560585746228814483

`filter[A376142(n+1), A359466(#)]`
-/

namespace A381312.P3560585746228814483
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376142 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359466 (f1 j).toNat = 1) n)

end

end A381312.P3560585746228814483

namespace A381312

/-- `filter[A376142(n+1), A359466(#)]` -/
def P3560585746228814483.Spec : Prop :=
  ∀ n, P3560585746228814483.a n = A381312 (n + 1)

end A381312

/-! ## A381312.P16513683924693147745

`filter[A295661(n+1), A359466(#)]`
-/

namespace A381312.P16513683924693147745
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295661 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359466 (f1 j).toNat = 1) n)

end

end A381312.P16513683924693147745

namespace A381312

/-- `filter[A295661(n+1), A359466(#)]` -/
def P16513683924693147745.Spec : Prop :=
  ∀ n, P16513683924693147745.a n = A381312 (n + 1)

end A381312

/-! ## A381312.P12659480856814164204

`∩[A240111(n+1), A381316(n+1)]`
-/

namespace A381312.P12659480856814164204
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240111 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381316 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A381312.P12659480856814164204

namespace A381312

/-- `∩[A240111(n+1), A381316(n+1)]` -/
def P12659480856814164204.Spec : Prop :=
  ∀ n, (P12659480856814164204.a n : ℤ) = A381312 (n + 1)

end A381312

/-! ## A381312.P9350801652546954906

`filter[A377844(n+1), A295316(#)]`
-/

namespace A381312.P9350801652546954906
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377844 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A295316 (f1 j).toNat = 1) n)

end

end A381312.P9350801652546954906

namespace A381312

/-- `filter[A377844(n+1), A295316(#)]` -/
def P9350801652546954906.Spec : Prop :=
  ∀ n, P9350801652546954906.a n = A381312 (n + 1)

end A381312

/-! ## A381312.P18127545881832103476

`filter[A381316(n+1), A295316(#)]`
-/

namespace A381312.P18127545881832103476
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381316 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A295316 (f1 j).toNat = 1) n)

end

end A381312.P18127545881832103476

namespace A381312

/-- `filter[A381316(n+1), A295316(#)]` -/
def P18127545881832103476.Spec : Prop :=
  ∀ n, P18127545881832103476.a n = A381312 (n + 1)

end A381312

/-! ## A381312.P3204376695944042213

`filter[A375145(n+1), A295316(#)]`
-/

namespace A381312.P3204376695944042213
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375145 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A295316 (f1 j).toNat = 1) n)

end

end A381312.P3204376695944042213

namespace A381312

/-- `filter[A375145(n+1), A295316(#)]` -/
def P3204376695944042213.Spec : Prop :=
  ∀ n, P3204376695944042213.a n = A381312 (n + 1)

end A381312

/-! ## A381312.P6135349599161242644

`filter[A190641(n+1), A295316(#)]`
-/

namespace A381312.P6135349599161242644
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190641 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A295316 (f1 j).toNat = 1) n)

end

end A381312.P6135349599161242644

namespace A381312

/-- `filter[A190641(n+1), A295316(#)]` -/
def P6135349599161242644.Spec : Prop :=
  ∀ n, P6135349599161242644.a n = A381312 (n + 1)

end A381312

/-! ## A381312.P4707067542760994565

`∩[A190641(n+1), A240111(n+1)]`
-/

namespace A381312.P4707067542760994565
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190641 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240111 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A381312.P4707067542760994565

namespace A381312

/-- `∩[A190641(n+1), A240111(n+1)]` -/
def P4707067542760994565.Spec : Prop :=
  ∀ n, (P4707067542760994565.a n : ℤ) = A381312 (n + 1)

end A381312

/-! ## A381312.P4403851692764628080

`∩[A190641(n+1), A295661(n+1)]`
-/

namespace A381312.P4403851692764628080
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190641 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295661 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A381312.P4403851692764628080

namespace A381312

/-- `∩[A190641(n+1), A295661(n+1)]` -/
def P4403851692764628080.Spec : Prop :=
  ∀ n, (P4403851692764628080.a n : ℤ) = A381312 (n + 1)

end A381312

/-! ## A381312.P9260435706522806389

`∩[A190641(n+1), A301517(n+1)]`
-/

namespace A381312.P9260435706522806389
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190641 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301517 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A381312.P9260435706522806389

namespace A381312

/-- `∩[A190641(n+1), A301517(n+1)]` -/
def P9260435706522806389.Spec : Prop :=
  ∀ n, (P9260435706522806389.a n : ℤ) = A381312 (n + 1)

end A381312

/-! ## A381312.P9083786734301414831

`∩[A190641(n+1), A374459(n+1)]`
-/

namespace A381312.P9083786734301414831
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190641 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374459 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A381312.P9083786734301414831

namespace A381312

/-- `∩[A190641(n+1), A374459(n+1)]` -/
def P9083786734301414831.Spec : Prop :=
  ∀ n, (P9083786734301414831.a n : ℤ) = A381312 (n + 1)

end A381312

/-! ## A381312.P9323057481702124586

`∩[A190641(n+1), A376142(n+1)]`
-/

namespace A381312.P9323057481702124586
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190641 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376142 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A381312.P9323057481702124586

namespace A381312

/-- `∩[A190641(n+1), A376142(n+1)]` -/
def P9323057481702124586.Spec : Prop :=
  ∀ n, (P9323057481702124586.a n : ℤ) = A381312 (n + 1)

end A381312

/-! ## A381312.P3643728077065947163

`∩[A190641(n+1), A377844(n+1)]`
-/

namespace A381312.P3643728077065947163
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190641 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377844 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A381312.P3643728077065947163

namespace A381312

/-- `∩[A190641(n+1), A377844(n+1)]` -/
def P3643728077065947163.Spec : Prop :=
  ∀ n, (P3643728077065947163.a n : ℤ) = A381312 (n + 1)

end A381312

/-! ## A381312.P15284624150026250055

`∩[A190641(n+1), A384520(n+1)]`
-/

namespace A381312.P15284624150026250055
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190641 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384520 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A381312.P15284624150026250055

namespace A381312

/-- `∩[A190641(n+1), A384520(n+1)]` -/
def P15284624150026250055.Spec : Prop :=
  ∀ n, (P15284624150026250055.a n : ℤ) = A381312 (n + 1)

end A381312

/-! ## A381312.P8365581327263630578

`∩[A356862(n+1), A384520(n+1)]`
-/

namespace A381312.P8365581327263630578
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356862 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384520 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A381312.P8365581327263630578

namespace A381312

/-- `∩[A356862(n+1), A384520(n+1)]` -/
def P8365581327263630578.Spec : Prop :=
  ∀ n, (P8365581327263630578.a n : ℤ) = A381312 (n + 1)

end A381312

/-!
# A381313: Numbers that are divisible by the cube of an odd prime.

The programs for A381313, the canonical program `A381313.P16274540658270787532` is in `Seq.B002.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A381313 has offset 1).

The definition of A381313 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 490 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A381313.P6223346913483511220

`eq[0, A327268(n+1)]+1`
-/

namespace A381313.P6223346913483511220
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327268 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A381313.P6223346913483511220

namespace A381313

/-- `eq[0, A327268(n+1)]+1` -/
def P6223346913483511220.Spec : Prop :=
  ∀ n, (P6223346913483511220.a n : ℤ) = A381313 (n + 1)

end A381313

/-! ## A381313.P16274540658270787532

`lt[2, A375669(n+1)]+1`

The canonical program, it is in `Seq.B002.C007`.
-/

namespace A381313

/-- `lt[2, A375669(n+1)]+1` -/
def P16274540658270787532.Spec : Prop :=
  ∀ n, (P16274540658270787532.a n : ℤ) = A381313 (n + 1)

theorem P16274540658270787532.correct : P16274540658270787532.Spec := by
  intro n
  simp only [A381313, Nat.add_sub_cancel]

end A381313

/-! ## A381313.P7569730968043210715

`lt[A050985(n+1), A000265(n+1)]+1`
-/

namespace A381313.P7569730968043210715
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050985 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A381313.P7569730968043210715

namespace A381313

/-- `lt[A050985(n+1), A000265(n+1)]+1` -/
def P7569730968043210715.Spec : Prop :=
  ∀ n, (P7569730968043210715.a n : ℤ) = A381313 (n + 1)

end A381313

/-! ## A381313.P5665161164608065714

`lt[A066990(n+1), A302044(2*(n+1))]+1`
-/

namespace A381313.P5665161164608065714
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066990 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302044 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A381313.P5665161164608065714

namespace A381313

/-- `lt[A066990(n+1), A302044(2*(n+1))]+1` -/
def P5665161164608065714.Spec : Prop :=
  ∀ n, (P5665161164608065714.a n : ℤ) = A381313 (n + 1)

end A381313

/-! ## A381313.P14666796431605989785

`lt[1, A295659(A234275(n))]`
-/

namespace A381313.P14666796431605989785
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295659 (A234275 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A381313.P14666796431605989785

namespace A381313

/-- `lt[1, A295659(A234275(n))]` -/
def P14666796431605989785.Spec : Prop :=
  ∀ n, (P14666796431605989785.a n : ℤ) = A381313 (n + 1)

end A381313

/-!
# A381314: Powerful numbers that have a single exponent in their prime factorization that equals 2.

The programs for A381314, the canonical program `A381314.P1696934832685863059` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A381314 has offset 1).

The definition of A381314 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 112 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A381314.P7364227761452428673

`∩[A001694(n+1), A386796(n+1)]`
-/

namespace A381314.P7364227761452428673
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001694 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386796 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A381314.P7364227761452428673

namespace A381314

/-- `∩[A001694(n+1), A386796(n+1)]` -/
def P7364227761452428673.Spec : Prop :=
  ∀ n, (P7364227761452428673.a n : ℤ) = A381314 (n + 1)

end A381314

/-! ## A381314.P8448700010891666433

`∩[A325240(n+1), A386796(n+1)]`
-/

namespace A381314.P8448700010891666433
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325240 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386796 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A381314.P8448700010891666433

namespace A381314

/-- `∩[A325240(n+1), A386796(n+1)]` -/
def P8448700010891666433.Spec : Prop :=
  ∀ n, (P8448700010891666433.a n : ℤ) = A381314 (n + 1)

end A381314

/-! ## A381314.P8384433821937097441

`∩[A376172(n+1), A386796(n+1)]`
-/

namespace A381314.P8384433821937097441
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376172 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386796 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A381314.P8384433821937097441

namespace A381314

/-- `∩[A376172(n+1), A386796(n+1)]` -/
def P8384433821937097441.Spec : Prop :=
  ∀ n, (P8384433821937097441.a n : ℤ) = A381314 (n + 1)

end A381314

/-! ## A381314.P11412271948785140469

`∩[A325240(n+1), A359178(n+1)]`
-/

namespace A381314.P11412271948785140469
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325240 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359178 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A381314.P11412271948785140469

namespace A381314

/-- `∩[A325240(n+1), A359178(n+1)]` -/
def P11412271948785140469.Spec : Prop :=
  ∀ n, (P11412271948785140469.a n : ℤ) = A381314 (n + 1)

end A381314

/-! ## A381314.P1696934832685863059

`∩[A386796(n+1), A393924(n+1)]`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A381314

/-- `∩[A386796(n+1), A393924(n+1)]` -/
def P1696934832685863059.Spec : Prop :=
  ∀ n, (P1696934832685863059.a n : ℤ) = A381314 (n + 1)

theorem P1696934832685863059.correct : P1696934832685863059.Spec := by
  intro n
  simp only [A381314, Nat.add_sub_cancel]

end A381314

/-! ## A381314.P5167845326300904963

`eq[4, A366147(n+1)+1]+1`
-/

namespace A381314.P5167845326300904963
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366147 (n + 1) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A381314.P5167845326300904963

namespace A381314

/-- `eq[4, A366147(n+1)+1]+1` -/
def P5167845326300904963.Spec : Prop :=
  ∀ n, (P5167845326300904963.a n : ℤ) = A381314 (n + 1)

end A381314

/-! ## A381314.P17385820096252482971

`eq[3, A366147(A028310(n))]`
-/

namespace A381314.P17385820096252482971
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366147 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A381314.P17385820096252482971

namespace A381314

/-- `eq[3, A366147(A028310(n))]` -/
def P17385820096252482971.Spec : Prop :=
  ∀ n, (P17385820096252482971.a n : ℤ) = A381314 (n + 1)

end A381314

/-! ## A381314.P12115356293975549702

`filter[A386796(n+1), A112526(#)]`
-/

namespace A381314.P12115356293975549702
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386796 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A112526 (f1 j).toNat = 1) n)

end

end A381314.P12115356293975549702

namespace A381314

/-- `filter[A386796(n+1), A112526(#)]` -/
def P12115356293975549702.Spec : Prop :=
  ∀ n, P12115356293975549702.a n = A381314 (n + 1)

end A381314

/-! ## A381314.P5892034917929498232

`eq[1, A161664(A366147(n+1))]+1`
-/

namespace A381314.P5892034917929498232
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161664 (A366147 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A381314.P5892034917929498232

namespace A381314

/-- `eq[1, A161664(A366147(n+1))]+1` -/
def P5892034917929498232.Spec : Prop :=
  ∀ n, (P5892034917929498232.a n : ℤ) = A381314 (n + 1)

end A381314

/-!
# A381315: Numbers whose prime factorization exponents include exactly one 3 and no exponent greater than 3.

The programs for A381315, the canonical program `A381315.P9914003275205982349` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A381315 has offset 1).

The definition of A381315 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7798 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A381315.P4882275899062806648

`∩[A375072(n+1), A386800(n+1)]`
-/

namespace A381315.P4882275899062806648
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375072 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386800 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A381315.P4882275899062806648

namespace A381315

/-- `∩[A375072(n+1), A386800(n+1)]` -/
def P4882275899062806648.Spec : Prop :=
  ∀ n, (P4882275899062806648.a n : ℤ) = A381315 (n + 1)

end A381315

/-! ## A381315.P9914003275205982349

`∩[A375072(n+1), A377844(n+1)]`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A381315

/-- `∩[A375072(n+1), A377844(n+1)]` -/
def P9914003275205982349.Spec : Prop :=
  ∀ n, (P9914003275205982349.a n : ℤ) = A381315 (n + 1)

theorem P9914003275205982349.correct : P9914003275205982349.Spec := by
  intro n
  simp only [A381315, Nat.add_sub_cancel]

end A381315

/-! ## A381315.P9386126071343556260

`∩[A375072(n+1), A382292(n+1)]`
-/

namespace A381315.P9386126071343556260
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375072 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382292 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A381315.P9386126071343556260

namespace A381315

/-- `∩[A375072(n+1), A382292(n+1)]` -/
def P9386126071343556260.Spec : Prop :=
  ∀ n, (P9386126071343556260.a n : ℤ) = A381315 (n + 1)

end A381315

/-! ## A381315.P8909861284571725473

`∩[A176297(n+1), A375145(n+1)]`
-/

namespace A381315.P8909861284571725473
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176297 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375145 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A381315.P8909861284571725473

namespace A381315

/-- `∩[A176297(n+1), A375145(n+1)]` -/
def P8909861284571725473.Spec : Prop :=
  ∀ n, (P8909861284571725473.a n : ℤ) = A381315 (n + 1)

end A381315

/-! ## A381315.P6786583150200089787

`∩[A375072(n+1), A375145(n+1)]`
-/

namespace A381315.P6786583150200089787
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375072 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375145 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A381315.P6786583150200089787

namespace A381315

/-- `∩[A375072(n+1), A375145(n+1)]` -/
def P6786583150200089787.Spec : Prop :=
  ∀ n, (P6786583150200089787.a n : ℤ) = A381315 (n + 1)

end A381315

/-! ## A381315.P11024783282336546479

`∩[A375145(n+1), A386800(n+1)]`
-/

namespace A381315.P11024783282336546479
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375145 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386800 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A381315.P11024783282336546479

namespace A381315

/-- `∩[A375145(n+1), A386800(n+1)]` -/
def P11024783282336546479.Spec : Prop :=
  ∀ n, (P11024783282336546479.a n : ℤ) = A381315 (n + 1)

end A381315

/-! ## A381315.P11995840409153789666

`∩[A375145(n+1), A382967(n+1)]`
-/

namespace A381315.P11995840409153789666
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375145 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382967 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A381315.P11995840409153789666

namespace A381315

/-- `∩[A375145(n+1), A382967(n+1)]` -/
def P11995840409153789666.Spec : Prop :=
  ∀ n, (P11995840409153789666.a n : ℤ) = A381315 (n + 1)

end A381315

/-! ## A381315.P18216564247935314804

`∩[A377844(n+1), A382967(n+1)]`
-/

namespace A381315.P18216564247935314804
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377844 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382967 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A381315.P18216564247935314804

namespace A381315

/-- `∩[A377844(n+1), A382967(n+1)]` -/
def P18216564247935314804.Spec : Prop :=
  ∀ n, (P18216564247935314804.a n : ℤ) = A381315 (n + 1)

end A381315

/-! ## A381315.P2653053270013117727

`∩[A382292(n+1), A382967(n+1)]`
-/

namespace A381315.P2653053270013117727
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382292 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382967 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A381315.P2653053270013117727

namespace A381315

/-- `∩[A382292(n+1), A382967(n+1)]` -/
def P2653053270013117727.Spec : Prop :=
  ∀ n, (P2653053270013117727.a n : ℤ) = A381315 (n + 1)

end A381315

/-! ## A381315.P9055753912171088488

`∩[A356862(n+1), A375072(n+1)]`
-/

namespace A381315.P9055753912171088488
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356862 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375072 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A381315.P9055753912171088488

namespace A381315

/-- `∩[A356862(n+1), A375072(n+1)]` -/
def P9055753912171088488.Spec : Prop :=
  ∀ n, (P9055753912171088488.a n : ℤ) = A381315 (n + 1)

end A381315

/-! ## A381315.P10812030079861338025

`∩[A046100(n+1), A375145(n+1)]`
-/

namespace A381315.P10812030079861338025
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046100 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375145 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A381315.P10812030079861338025

namespace A381315

/-- `∩[A046100(n+1), A375145(n+1)]` -/
def P10812030079861338025.Spec : Prop :=
  ∀ n, (P10812030079861338025.a n : ℤ) = A381315 (n + 1)

end A381315

/-! ## A381315.P15128267726913339441

`∩[A046100(n+1), A377844(n+1)]`
-/

namespace A381315.P15128267726913339441
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046100 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377844 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A381315.P15128267726913339441

namespace A381315

/-- `∩[A046100(n+1), A377844(n+1)]` -/
def P15128267726913339441.Spec : Prop :=
  ∀ n, (P15128267726913339441.a n : ℤ) = A381315 (n + 1)

end A381315

/-! ## A381315.P7611230572930239115

`∩[A046100(n+1), A382292(n+1)]`
-/

namespace A381315.P7611230572930239115
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046100 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382292 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A381315.P7611230572930239115

namespace A381315

/-- `∩[A046100(n+1), A382292(n+1)]` -/
def P7611230572930239115.Spec : Prop :=
  ∀ n, (P7611230572930239115.a n : ℤ) = A381315 (n + 1)

end A381315

/-! ## A381315.P619348501540723231

`eq[2, A190867(n+1)]+1`
-/

namespace A381315.P619348501540723231
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190867 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A381315.P619348501540723231

namespace A381315

/-- `eq[2, A190867(n+1)]+1` -/
def P619348501540723231.Spec : Prop :=
  ∀ n, (P619348501540723231.a n : ℤ) = A381315 (n + 1)

end A381315

/-! ## A381315.P11261099946071630231

`filter[A375145(n+1), A307430(#)]`
-/

namespace A381315.P11261099946071630231
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375145 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A307430 (f1 j).toNat = 1) n)

end

end A381315.P11261099946071630231

namespace A381315

/-- `filter[A375145(n+1), A307430(#)]` -/
def P11261099946071630231.Spec : Prop :=
  ∀ n, P11261099946071630231.a n = A381315 (n + 1)

end A381315

/-! ## A381315.P12622881881220031587

`filter[A377844(n+1), A307430(#)]`
-/

namespace A381315.P12622881881220031587
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377844 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A307430 (f1 j).toNat = 1) n)

end

end A381315.P12622881881220031587

namespace A381315

/-- `filter[A377844(n+1), A307430(#)]` -/
def P12622881881220031587.Spec : Prop :=
  ∀ n, P12622881881220031587.a n = A381315 (n + 1)

end A381315

/-! ## A381315.P10574967100887879355

`filter[A382292(n+1), A307430(#)]`
-/

namespace A381315.P10574967100887879355
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382292 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A307430 (f1 j).toNat = 1) n)

end

end A381315.P10574967100887879355

namespace A381315

/-- `filter[A382292(n+1), A307430(#)]` -/
def P10574967100887879355.Spec : Prop :=
  ∀ n, P10574967100887879355.a n = A381315 (n + 1)

end A381315

/-! ## A381315.P5242302254769654025

`filter[A386800(n+1), A307430(#)]`
-/

namespace A381315.P5242302254769654025
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386800 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A307430 (f1 j).toNat = 1) n)

end

end A381315.P5242302254769654025

namespace A381315

/-- `filter[A386800(n+1), A307430(#)]` -/
def P5242302254769654025.Spec : Prop :=
  ∀ n, P5242302254769654025.a n = A381315 (n + 1)

end A381315

/-!
# A381316: Numbers whose powerful part (A057521) is a power of a prime with an exponent >= 3 (A246549).

The programs for A381316, the canonical program `A381316.P10823107300725866756` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A381316 has offset 1).

The definition of A381316 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8345 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A381316.P10823107300725866756

`filter[A375145(n+1), A359466(#)]`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A381316

/-- `filter[A375145(n+1), A359466(#)]` -/
def P10823107300725866756.Spec : Prop :=
  ∀ n, P10823107300725866756.a n = A381316 (n + 1)

theorem P10823107300725866756.correct : P10823107300725866756.Spec := by
  intro n
  simp only [A381316, Nat.add_sub_cancel]

end A381316

/-! ## A381316.P18385675116007856037

`filter[A046099(1+n), A359466(#)]`
-/

namespace A381316.P18385675116007856037
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046099 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359466 (f1 j).toNat = 1) n)

end

end A381316.P18385675116007856037

namespace A381316

/-- `filter[A046099(1+n), A359466(#)]` -/
def P18385675116007856037.Spec : Prop :=
  ∀ n, P18385675116007856037.a n = A381316 (n + 1)

end A381316

/-! ## A381316.P11372486611256082356

`filter[A048108(1+n), A359466(#)]`
-/

namespace A381316.P11372486611256082356
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048108 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359466 (f1 j).toNat = 1) n)

end

end A381316.P11372486611256082356

namespace A381316

/-- `filter[A048108(1+n), A359466(#)]` -/
def P11372486611256082356.Spec : Prop :=
  ∀ n, P11372486611256082356.a n = A381316 (n + 1)

end A381316

/-! ## A381316.P9290159140708526165

`∩[A046099(n+1), A190641(n+1)]`
-/

namespace A381316.P9290159140708526165
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046099 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190641 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A381316.P9290159140708526165

namespace A381316

/-- `∩[A046099(n+1), A190641(n+1)]` -/
def P9290159140708526165.Spec : Prop :=
  ∀ n, (P9290159140708526165.a n : ℤ) = A381316 (n + 1)

end A381316

/-! ## A381316.P2248332307134493696

`∩[A048108(n+1), A190641(n+1)]`
-/

namespace A381316.P2248332307134493696
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048108 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190641 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A381316.P2248332307134493696

namespace A381316

/-- `∩[A048108(n+1), A190641(n+1)]` -/
def P2248332307134493696.Spec : Prop :=
  ∀ n, (P2248332307134493696.a n : ℤ) = A381316 (n + 1)

end A381316

/-! ## A381316.P7578777407622813217

`∩[A190641(n+1), A375145(n+1)]`
-/

namespace A381316.P7578777407622813217
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190641 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375145 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A381316.P7578777407622813217

namespace A381316

/-- `∩[A190641(n+1), A375145(n+1)]` -/
def P7578777407622813217.Spec : Prop :=
  ∀ n, (P7578777407622813217.a n : ℤ) = A381316 (n + 1)

end A381316

/-! ## A381316.P14205190460121650892

`∩[A375142(n+1), A375145(n+1)]`
-/

namespace A381316.P14205190460121650892
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375142 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375145 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A381316.P14205190460121650892

namespace A381316

/-- `∩[A375142(n+1), A375145(n+1)]` -/
def P14205190460121650892.Spec : Prop :=
  ∀ n, (P14205190460121650892.a n : ℤ) = A381316 (n + 1)

end A381316

/-! ## A381316.P11771126080423622956

`filter[A337050(n+1), A359466(#)]`
-/

namespace A381316.P11771126080423622956
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337050 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359466 (f1 j).toNat = 1) n)

end

end A381316.P11771126080423622956

namespace A381316

/-- `filter[A337050(n+1), A359466(#)]` -/
def P11771126080423622956.Spec : Prop :=
  ∀ n, P11771126080423622956.a n = A381316 (n + 1)

end A381316

/-! ## A381316.P18187500275951556025

`∩[A190641(n+1), A337050(n+1)]`
-/

namespace A381316.P18187500275951556025
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190641 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337050 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A381316.P18187500275951556025

namespace A381316

/-- `∩[A190641(n+1), A337050(n+1)]` -/
def P18187500275951556025.Spec : Prop :=
  ∀ n, (P18187500275951556025.a n : ℤ) = A381316 (n + 1)

end A381316

/-! ## A381316.P9205723131300875182

`∩[A327877(n+1), A337050(n+1)]`
-/

namespace A381316.P9205723131300875182
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327877 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337050 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A381316.P9205723131300875182

namespace A381316

/-- `∩[A327877(n+1), A337050(n+1)]` -/
def P9205723131300875182.Spec : Prop :=
  ∀ n, (P9205723131300875182.a n : ℤ) = A381316 (n + 1)

end A381316

/-! ## A381316.P3369485238990852134

`filter[A046099(n+1), A056170(#)]`
-/

namespace A381316.P3369485238990852134
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046099 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A056170 (f1 j).toNat = 1) n)

end

end A381316.P3369485238990852134

namespace A381316

/-- `filter[A046099(n+1), A056170(#)]` -/
def P3369485238990852134.Spec : Prop :=
  ∀ n, P3369485238990852134.a n = A381316 (n + 1)

end A381316

/-! ## A381316.P6966094567772302602

`filter[A304364(n+1), A087049(#)]`
-/

namespace A381316.P6966094567772302602
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304364 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A087049 (f1 j).toNat = 1) n)

end

end A381316.P6966094567772302602

namespace A381316

/-- `filter[A304364(n+1), A087049(#)]` -/
def P6966094567772302602.Spec : Prop :=
  ∀ n, P6966094567772302602.a n = A381316 (n + 1)

end A381316

/-! ## A381316.P5612922373030411091

`filter[A304364(n+1), A107078(#)]`
-/

namespace A381316.P5612922373030411091
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304364 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A107078 (f1 j).toNat = 1) n)

end

end A381316.P5612922373030411091

namespace A381316

/-- `filter[A304364(n+1), A107078(#)]` -/
def P5612922373030411091.Spec : Prop :=
  ∀ n, P5612922373030411091.a n = A381316 (n + 1)

end A381316

/-! ## A381316.P15598763401004217831

`filter[A304364(n+1), A359466(#)]`
-/

namespace A381316.P15598763401004217831
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304364 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359466 (f1 j).toNat = 1) n)

end

end A381316.P15598763401004217831

namespace A381316

/-- `filter[A304364(n+1), A359466(#)]` -/
def P15598763401004217831.Spec : Prop :=
  ∀ n, P15598763401004217831.a n = A381316 (n + 1)

end A381316

/-! ## A381316.P11227375578524426536

`filter[A304364(n+1), A359467(#)]`
-/

namespace A381316.P11227375578524426536
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304364 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359467 (f1 j).toNat = 1) n)

end

end A381316.P11227375578524426536

namespace A381316

/-- `filter[A304364(n+1), A359467(#)]` -/
def P11227375578524426536.Spec : Prop :=
  ∀ n, P11227375578524426536.a n = A381316 (n + 1)

end A381316

/-! ## A381316.P7746854575264914015

`filter[A304364(n+1), A359469(#)]`
-/

namespace A381316.P7746854575264914015
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304364 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359469 (f1 j).toNat = 1) n)

end

end A381316.P7746854575264914015

namespace A381316

/-- `filter[A304364(n+1), A359469(#)]` -/
def P7746854575264914015.Spec : Prop :=
  ∀ n, P7746854575264914015.a n = A381316 (n + 1)

end A381316

/-! ## A381316.P15307364038376761840

`∩[A013929(n+1), A304364(n+1)]`
-/

namespace A381316.P15307364038376761840
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013929 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304364 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A381316.P15307364038376761840

namespace A381316

/-- `∩[A013929(n+1), A304364(n+1)]` -/
def P15307364038376761840.Spec : Prop :=
  ∀ n, (P15307364038376761840.a n : ℤ) = A381316 (n + 1)

end A381316

/-! ## A381316.P15803154991335663439

`∩[A046099(n+1), A304364(n+1)]`
-/

namespace A381316.P15803154991335663439
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046099 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304364 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A381316.P15803154991335663439

namespace A381316

/-- `∩[A046099(n+1), A304364(n+1)]` -/
def P15803154991335663439.Spec : Prop :=
  ∀ n, (P15803154991335663439.a n : ℤ) = A381316 (n + 1)

end A381316

/-! ## A381316.P15170201630308827380

`∩[A046790(n+1), A304364(n+1)]`
-/

namespace A381316.P15170201630308827380
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046790 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304364 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A381316.P15170201630308827380

namespace A381316

/-- `∩[A046790(n+1), A304364(n+1)]` -/
def P15170201630308827380.Spec : Prop :=
  ∀ n, (P15170201630308827380.a n : ℤ) = A381316 (n + 1)

end A381316

/-! ## A381316.P14065435198249221139

`∩[A048108(n+1), A304364(n+1)]`
-/

namespace A381316.P14065435198249221139
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048108 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304364 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A381316.P14065435198249221139

namespace A381316

/-- `∩[A048108(n+1), A304364(n+1)]` -/
def P14065435198249221139.Spec : Prop :=
  ∀ n, (P14065435198249221139.a n : ℤ) = A381316 (n + 1)

end A381316

/-!
# A381317: Numbers of the form p^(p +- 1), where p is prime.

The programs for A381317, there is no canonical definition to state claims against.
-/

/-! ## A381317.P7294920995480909978

`A109763(n+1)^(A109763(n+1)-A033999(n))`
-/

namespace A381317.P7294920995480909978
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A109763 (n + 1) : ℚ) ^ (A109763 (n + 1) - A033999 n : ℤ)

end

end A381317.P7294920995480909978

/-! ## A381317.P5981650587406039505

`∩[A192139(n+1), A381215(n+1)]`
-/

namespace A381317.P5981650587406039505
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192139 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381215 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A381317.P5981650587406039505

/-! ## A381317.P4341828177403109564

`∩[A192139(n+1), A392047(n+1)]`
-/

namespace A381317.P4341828177403109564
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192139 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392047 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A381317.P4341828177403109564

/-!
# A381319: Order of linear recurrence with constant coefficients of solutions of k satisfying k^(n-1) == 1 (mod n^2) for a given n.

The programs for A381319, the canonical program `A381319.P14834546129870653751` is in `Seq.B001.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A381319 has offset 2).

The definition of A381319 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A063994, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A381319.P14834546129870653751

`1+A063994(n+2)`

The canonical program, it is in `Seq.B001.C014`.
-/

namespace A381319

/-- `1+A063994(n+2)` -/
def P14834546129870653751.Spec : Prop :=
  ∀ n, P14834546129870653751.a n = A381319 (n + 2)

theorem P14834546129870653751.correct : P14834546129870653751.Spec := by
  intro n
  simp only [A381319, Nat.add_sub_cancel]

end A381319

/-! ## A381319.P9280903585175824431

`∏{p}[n+2, gcd(n+1, floor(n/#))]+1`
-/

namespace A381319.P9280903585175824431
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), Int.gcd (n + 1 : ℤ) ⌊(n : ℚ) / (p : ℚ)⌋ + 1

end

end A381319.P9280903585175824431

namespace A381319

/-- `∏{p}[n+2, gcd(n+1, floor(n/#))]+1` -/
def P9280903585175824431.Spec : Prop :=
  ∀ n, (P9280903585175824431.a n : ℤ) = A381319 (n + 2)

end A381319

/-! ## A381319.P12756462415941214136

`A348259(2+n)+2`
-/

namespace A381319.P12756462415941214136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348259 (2 + n) + 2

end

end A381319.P12756462415941214136

namespace A381319

/-- `A348259(2+n)+2` -/
def P12756462415941214136.Spec : Prop :=
  ∀ n, P12756462415941214136.a n = A381319 (n + 2)

end A381319

/-! ## A381319.P7438078490981585312

`3-A318828(n+2)+n`
-/

namespace A381319.P7438078490981585312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - A318828 (n + 2) + (n : ℤ)

end

end A381319.P7438078490981585312

namespace A381319

/-- `3-A318828(n+2)+n` -/
def P7438078490981585312.Spec : Prop :=
  ∀ n, P7438078490981585312.a n = A381319 (n + 2)

theorem P7438078490981585312.correct : P7438078490981585312.Spec := by
  intro n
  simp only [A381319, Nat.add_sub_cancel, A381319.P7438078490981585312.a, A381319.P14834546129870653751.a, A063994, A063994.P8769144511171476510.f1, A063994.P8769144511171476510.a, A318828, A318828.P2519863586055671682.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A381319

/-! ## A381319.P14108950589402316405

`∑{d}[2+n, A340190(#)]+1`
-/

namespace A381319.P14108950589402316405
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A340190 d + 1

end

end A381319.P14108950589402316405

namespace A381319

/-- `∑{d}[2+n, A340190(#)]+1` -/
def P14108950589402316405.Spec : Prop :=
  ∀ n, P14108950589402316405.a n = A381319 (n + 2)

end A381319

/-! ## A381319.P10478823240769715202

`A020725(A063994(n+2))`
-/

namespace A381319.P10478823240769715202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A063994 (n + 2)).toNat

end

end A381319.P10478823240769715202

namespace A381319

/-- `A020725(A063994(n+2))` -/
def P10478823240769715202.Spec : Prop :=
  ∀ n, P10478823240769715202.a n = A381319 (n + 2)

end A381319

/-! ## A381319.P18147696620559336949

`A039649(n+2)-A318840(n+2)`
-/

namespace A381319.P18147696620559336949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039649 (n + 2) - A318840 (n + 2)

end

end A381319.P18147696620559336949

namespace A381319

/-- `A039649(n+2)-A318840(n+2)` -/
def P18147696620559336949.Spec : Prop :=
  ∀ n, P18147696620559336949.a n = A381319 (n + 2)

theorem P18147696620559336949.correct : P18147696620559336949.Spec := by
  intro n
  simp only [A381319, Nat.add_sub_cancel, A381319.P18147696620559336949.a, A381319.P14834546129870653751.a, A039649, A039649.P16717312505280968063.a, A063994, A063994.P8769144511171476510.f1, A063994.P8769144511171476510.a, A318840, A318840.P4824797439622119668.a, A000010, A000010.P4673923239450215316.a, A003557, A003557.P6364735403900941810.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A381319

/-! ## A381319.P15230678477460659681

`(A247074(n+2)+A000010(n+2))/A247074(n+2)`
-/

namespace A381319.P15230678477460659681
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A247074 (n + 2) + A000010 (n + 2) : ℚ) / (A247074 (n + 2) : ℚ)

end

end A381319.P15230678477460659681

namespace A381319

/-- `(A247074(n+2)+A000010(n+2))/A247074(n+2)` -/
def P15230678477460659681.Spec : Prop :=
  ∀ n, P15230678477460659681.a n = (A381319 (n + 2) : ℚ)

end A381319

/-!
# A381321: Numbers k such that sigma(k)/k - 1 equals (sigma(m)/m - 1)^2 for some m <= k.

The programs for A381321, there is no canonical definition to state claims against.
-/

/-! ## A381321.P4174447680960849954

`record[A245092(A383482(n+1))]`
-/

namespace A381321.P4174447680960849954
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245092 (A383482 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A381321.P4174447680960849954

/-! ## A381321.P10595946420597341365

`filter[A383482(n+1), A322860(#)]`
-/

namespace A381321.P10595946420597341365
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383482 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A322860 (f1 j).toNat = 1) n)

end

end A381321.P10595946420597341365

/-! ## A381321.P472956698326880277

`filter[A383482(n+1), A365429(#)]`
-/

namespace A381321.P472956698326880277
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383482 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A365429 (f1 j).toNat = 1) n)

end

end A381321.P472956698326880277

/-! ## A381321.P5052639599127613264

`filter[A383482(n+1), A374197(#)]`
-/

namespace A381321.P5052639599127613264
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383482 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374197 (f1 j).toNat = 1) n)

end

end A381321.P5052639599127613264

/-! ## A381321.P13738372229934022838

`filter[A383482(n+1), A378550(#)]`
-/

namespace A381321.P13738372229934022838
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383482 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A378550 (f1 j).toNat = 1) n)

end

end A381321.P13738372229934022838

/-!
# A381322: Least prime pn such that there is a set p1 < p2 < ... < pn of primes such that, for any distinct p and q in the set, (p + q)/2 is prime.

The programs for A381322, there is no canonical definition to state claims against.
-/

/-! ## A381322.P10044820625907001480

`A265769(A028909(n+1))`
-/

namespace A381322.P10044820625907001480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265769 (A028909 (n + 1)).toNat

end

end A381322.P10044820625907001480

/-!
# A381324: Number of true implications over all possible pairs of unique logical sentences of n quantified variables in prenex normal form with a fixed proposition.

The programs for A381324, there is no canonical definition to state claims against.
-/

/-! ## A381324.P17799209640536295390

`A000629(n+1)²-A381325(n+1)`
-/

namespace A381324.P17799209640536295390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000629 (n + 1) ^ 2 - A381325 (n + 1)

end

end A381324.P17799209640536295390

/-!
# A381325: Number of false implications over all possible pairs of unique logical sentences of n quantified variables in prenex normal form with a fixed proposition.

The programs for A381325, there is no canonical definition to state claims against.
-/

/-! ## A381325.P16399390904641079369

`A000629(n+1)²-A381324(n+1)`
-/

namespace A381325.P16399390904641079369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000629 (n + 1) ^ 2 - A381324 (n + 1)

end

end A381325.P16399390904641079369

/-!
# A381326: Number of (undirected) Hamiltonian cycles in the complete 4-partite graph K_{n,n,n,n}.

The programs for A381326, there is no canonical definition to state claims against.
-/

/-! ## A381326.P13889746702484955306

`A378241(n+1)/2`
-/

namespace A381326.P13889746702484955306
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A378241 (n + 1) : ℚ) / 2

end

end A381326.P13889746702484955306

/-!
# A381328: a(n+1) is the least k such that k - (a(n-1)+a(n)) and k + (a(n-1)+a(n)) are primes; a(0)=0, a(1)=1.

The programs for A381328, there is no canonical definition to state claims against.
-/

/-! ## A381328.P5106400750903547355

`A087711(a(n-1)-round(-a(n-2)))` with `a(0)=0, a(1)=1`

`round` is left out, it is the identity on integers.
-/

namespace A381328.P5106400750903547355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  A087711 (a (n - 1) - (-a (n - 2))).toNat

end

end A381328.P5106400750903547355

/-! ## A381328.P9481333610174649786

`A002883(n+4)-A092264(n+1)`
-/

namespace A381328.P9481333610174649786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002883 (n + 4) - A092264 (n + 1)

end

end A381328.P9481333610174649786

/-! ## A381328.P11004688823614223594

`A324925(3*n)-A121373(A059076(2*(n+1)))`
-/

namespace A381328.P11004688823614223594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324925 (3 * n) - A121373 (A059076 (2 * (n + 1))).toNat

end

end A381328.P11004688823614223594

/-!
# A381330: Numbers that are the sum of a prime and the square of a prime in more than one way.

The programs for A381330, there is no canonical definition to state claims against.
-/

/-! ## A381330.P2364713880957544657

`lt[1, A258139(1+n)]+1`
-/

namespace A381330.P2364713880957544657
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258139 (1 + n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A381330.P2364713880957544657

/-! ## A381330.P1509783115083815367

`lt[1, A258139(A028310(n))]`
-/

namespace A381330.P1509783115083815367
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258139 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A381330.P1509783115083815367

/-! ## A381330.P3785245091335179420

`eq[1, A000010(a(A258139(n)))]` with `a(0)=3, a(1)=3`
-/

namespace A381330.P3785245091335179420
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [3, 3] fun n f2 =>
  A000010 (f2 (A258139 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A381330.P3785245091335179420

/-! ## A381330.P9097199253425159887

`eq[1, A373810(a(A258139(n)))]` with `a(0)=3, a(1)=3`
-/

namespace A381330.P9097199253425159887
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [3, 3] fun n f2 =>
  A373810 (f2 (A258139 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A381330.P9097199253425159887

/-! ## A381330.P16341646746865895263

`eq[1, A373811(a(A258139(n)))]` with `a(0)=3, a(1)=4`
-/

namespace A381330.P16341646746865895263
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [3, 4] fun n f2 =>
  A373811 (f2 (A258139 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A381330.P16341646746865895263

/-! ## A381330.P3149128697948321386

`eq[2, A000005(a(A258139(n)))]` with `a(0)=4, a(1)=4`
-/

namespace A381330.P3149128697948321386
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.rec [4, 4] fun n f2 =>
  A000005 (f2 (A258139 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A381330.P3149128697948321386

/-! ## A381330.P2641043805177409940

`eq[1, A093709(a(A258139(n))+1)]` with `a(0)=2, a(1)=2`
-/

namespace A381330.P2641043805177409940
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [2, 2] fun n f2 =>
  A093709 (f2 (A258139 n).toNat + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A381330.P2641043805177409940

/-! ## A381330.P3220898687999134119

`eq[1, A028234(a(A258139(n))+4)]` with `a(0)=2, a(1)=2`
-/

namespace A381330.P3220898687999134119
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [2, 2] fun n f2 =>
  A028234 (f2 (A258139 n).toNat + 4).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A381330.P3220898687999134119

/-! ## A381330.P11417437405384059902

`lt[4, n^a(A258139(n))]` with `a(0)=0, a(1)=0, a(2)=4`
-/

namespace A381330.P11417437405384059902
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 4] fun n f2 =>
  n ^ f2 (A258139 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A381330.P11417437405384059902

/-! ## A381330.P6720264304787034

`lt[1, A258139(A233583(1+n))]`
-/

namespace A381330.P6720264304787034
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258139 (A233583 (1 + n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A381330.P6720264304787034

/-!
# A381331: a(1) = a(2) = 1; for n > 2, a(n) = floor((n - 2)*a(n - 1)/a(n - 2)) + GCD(n - 2, a(n - 2)).

The programs for A381331, the canonical program `A381331.P861136830259296737` is in `Seq.B000.C049`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A381331 has offset 1).

The definition of A381331 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor((n-1)*a(n-1)/a(n-2))+gcd(n-1, a(n-2))` (program `A381331.P861136830259296737`, by `A381331.P861136830259296737.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A381331.P861136830259296737

`floor((n-1)*a(n-1)/a(n-2))+gcd(n-1, a(n-2))` with `a(0)=1, a(1)=1, a(2)=2`

The canonical program, it is in `Seq.B000.C049`.
-/

namespace A381331

/-- `floor((n-1)*a(n-1)/a(n-2))+gcd(n-1, a(n-2))` -/
def P861136830259296737.Spec : Prop :=
  ∀ n, P861136830259296737.a n = A381331 (n + 1)

theorem P861136830259296737.correct : P861136830259296737.Spec := by
  intro n
  simp only [A381331, Nat.add_sub_cancel]

end A381331

/-!
# A381332: a(n) is the number of different hooklength lists of the plane partitions of n.

The programs for A381332, there is no canonical definition to state claims against.
-/

/-! ## A381332.P11503030508065037726

`A342524(A017985(n))`
-/

namespace A381332.P11503030508065037726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342524 (A017985 n).toNat

end

end A381332.P11503030508065037726

/-! ## A381332.P1368710906121927034

`A232746(A367657(n))`
-/

namespace A381332.P1368710906121927034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232746 (A367657 n).toNat

end

end A381332.P1368710906121927034

/-! ## A381332.P8163368713888674599

`A000196(Δ[A309237(n)])`
-/

namespace A381332.P8163368713888674599
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309237 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (f1 (n + 1) - f1 n).toNat

end

end A381332.P8163368713888674599

/-! ## A381332.P1742934333458302635

`A105223(A002040(n+1))`
-/

namespace A381332.P1742934333458302635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105223 (A002040 (n + 1)).toNat

end

end A381332.P1742934333458302635

/-! ## A381332.P13832562687164039215

`A135664(A052995(n+1))`
-/

namespace A381332.P13832562687164039215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135664 (A052995 (n + 1)).toNat

end

end A381332.P13832562687164039215

/-!
# A381333: Smallest integer that is the sum of a prime and the square of a prime in n or more ways.

The programs for A381333, there is no canonical definition to state claims against.
-/

/-! ## A381333.P115090650811445718

`A381334(A365822(n+1))`
-/

namespace A381333.P115090650811445718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381334 (A365822 (n + 1)).toNat

end

end A381333.P115090650811445718

/-! ## A381333.P2527713385950943524

`A381334(A004903(n+2))`
-/

namespace A381333.P2527713385950943524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381334 (A004903 (n + 2)).toNat

end

end A381333.P2527713385950943524

/-! ## A381333.P18091649452223294224

`A381334(A004914(n+2))`
-/

namespace A381333.P18091649452223294224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381334 (A004914 (n + 2)).toNat

end

end A381333.P18091649452223294224

/-! ## A381333.P135232246209757177

`A381334(A004902(n+1)+1)`
-/

namespace A381333.P135232246209757177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381334 (A004902 (n + 1) + 1).toNat

end

end A381333.P135232246209757177

/-!
# A381339: Number of vector differences between two permutations of order n, up to multiplication by nonzero rational numbers and permutations of the components.

The programs for A381339, there is no canonical definition to state claims against.
-/

/-! ## A381339.P18272907939655684838

`A003963(∏[n!%2+n]-floor(log2(n+1)))`
-/

namespace A381339.P18272907939655684838
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n % 2 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (∏ j ∈ Finset.range (n + 1), f1 j - Nat.log 2 (n + 1))

end

end A381339.P18272907939655684838

/-! ## A381339.P15274178022574880896

`A295218(A150587(n))`
-/

namespace A381339.P15274178022574880896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295218 (A150587 n).toNat

end

end A381339.P15274178022574880896

/-! ## A381339.P7533095944923299087

`A344296(A114584(n))`
-/

namespace A381339.P7533095944923299087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344296 (A114584 n).toNat

end

end A381339.P7533095944923299087

/-!
# A381344: Expansion of e.g.f. 1/( 1 - x * cosh(sqrt(2)*x) ).

The programs for A381344, there is no canonical definition to state claims against.
-/

/-! ## A381344.P15277879455000107375

`A178908(A000262(n))`
-/

namespace A381344.P15277879455000107375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178908 (A000262 n).toNat

end

end A381344.P15277879455000107375

/-! ## A381344.P1478091777828494221

`A096605(3*A000262(n))`
-/

namespace A381344.P1478091777828494221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096605 (3 * A000262 n).toNat

end

end A381344.P1478091777828494221

/-!
# A381345: Expansion of e.g.f. 1/( 1 - x * cos(sqrt(2)*x) ).

The programs for A381345, there is no canonical definition to state claims against.
-/

/-! ## A381345.P8725432086559919216

`A085697(n)-(A079205(2*(n+2))-1)`
-/

namespace A381345.P8725432086559919216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085697 n - (A079205 (2 * (n + 2)) - 1)

end

end A381345.P8725432086559919216

/-! ## A381345.P14621254706447919338

`col(n)+1-A400190(A000051(2*(n+1)))`
-/

namespace A381345.P14621254706447919338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.triCol n + 1 : ℤ) - A400190 (A000051 (2 * (n + 1))).toNat

end

end A381345.P14621254706447919338

/-!
# A381346: Expansion of e.g.f. 1/( 1 - sinh(sqrt(2)*x) / sqrt(2) ).

The programs for A381346, there is no canonical definition to state claims against.
-/

/-! ## A381346.P1393752857095168371

`∑{#}[n, #!*2^((n-#)/2)*A136630(C(n+1, 2)+#)]`
-/

namespace A381346.P1393752857095168371
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (Nat.factorial k : ℝ) * (2 : ℝ) ^ (((n : ℤ) - (k : ℤ) : ℚ) / 2 : ℝ) * (A136630 (Nat.choose (n + 1) 2 + k) : ℝ)

end

end A381346.P1393752857095168371

/-! ## A381346.P2606389730654254491

`A034887(A000669(n+2)*A007476(n))`
-/

namespace A381346.P2606389730654254491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034887 (A000669 (n + 2) * A007476 n).toNat

end

end A381346.P2606389730654254491

/-!
# A381347: Expansion of e.g.f. 1/( 1 - sin(sqrt(2)*x) / sqrt(2) ).

The programs for A381347, there is no canonical definition to state claims against.
-/

/-! ## A381347.P13368063012423627699

`A011782(n)-A065715(A000670(n))`
-/

namespace A381347.P13368063012423627699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n - A065715 (A000670 n).toNat

end

end A381347.P13368063012423627699

/-! ## A381347.P6500239047455829950

`A302322(n+1)-A331423(A018036(n))`
-/

namespace A381347.P6500239047455829950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302322 (n + 1) - A331423 (A018036 n).toNat

end

end A381347.P6500239047455829950

/-!
# A381348: Irregular triangle read by rows in which row n lists the largest subset of Z/nZ fixed by x -> x^2.

The programs for A381348, there is no canonical definition to state claims against.
-/

/-! ## A381348.P9460893657244837884

`A096008(lt[A091247(n), A326154(3*(n+1))]+1)`
-/

namespace A381348.P9460893657244837884
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091247 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326154 (3 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096008 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1)

end

end A381348.P9460893657244837884

/-! ## A381348.P13851824635036397621

`A096008(A052382(n+1))%A161206(3*(n+1))`
-/

namespace A381348.P13851824635036397621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A096008 (A052382 (n + 1)).toNat) (A161206 (3 * (n + 1)))

end

end A381348.P13851824635036397621

/-! ## A381348.P2264944927038603428

`A168316(A113378(n))%A304746(n)`
-/

namespace A381348.P2264944927038603428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A168316 (A113378 n).toNat) (A304746 n)

end

end A381348.P2264944927038603428

/-! ## A381348.P15007341074143305064

`A195206(A317932(n+1))%A304746(n)`
-/

namespace A381348.P15007341074143305064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A195206 (A317932 (n + 1)).toNat) (A304746 n)

end

end A381348.P15007341074143305064

/-! ## A381348.P17384920987731487599

`A360676(A078458(2*n+1)+A011782(n))`
-/

namespace A381348.P17384920987731487599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360676 (A078458 (2 * n + 1) + A011782 n).toNat

end

end A381348.P17384920987731487599

/-!
# A381349: Triangle read by rows: T(n,k) is the number of distinct tuples E each corresponding to some k-ary word W = (w_1, ..., w_n), where E is a tuple (e_1, ..., e_{n-1}) with e_i being the number of pairs of equal letters (w_j,w_k) in W such that j + i = k.

The programs for A381349, there is no canonical definition to state claims against.
-/

/-! ## A381349.P10388146609715828180

`A338331(A049400(n+1))`
-/

namespace A381349.P10388146609715828180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338331 (A049400 (n + 1)).toNat

end

end A381349.P10388146609715828180

/-!
# A381350: Number of subsets of 8 integers between 1 and n such that their sum is 2 modulo n.

The programs for A381350, there is no canonical definition to state claims against.
-/

/-! ## A381350.P4465645281293840598

`A381291(n+9)-A307985(A110655(3*n+1))`
-/

namespace A381350.P4465645281293840598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381291 (n + 9) - A307985 (A110655 (3 * n + 1)).toNat

end

end A381350.P4465645281293840598

/-! ## A381350.P10316921226560872106

`A381291(n+9)-A307985(A002265(3*n+4))`
-/

namespace A381350.P10316921226560872106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381291 (n + 9) - A307985 (A002265 (3 * n + 4)).toNat

end

end A381350.P10316921226560872106

/-! ## A381350.P18363060601592418537

`A381291(n+9)-A179527(A303858(n+10))`
-/

namespace A381350.P18363060601592418537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381291 (n + 9) - A179527 (A303858 (n + 10)).toNat

end

end A381350.P18363060601592418537

/-! ## A381350.P9080589283435480946

`A002265(A018211(n+1))`
-/

namespace A381350.P9080589283435480946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A018211 (n + 1)).toNat

end

end A381350.P9080589283435480946

/-! ## A381350.P11394515306131156776

`A110655(A018211(n+1)-3)`
-/

namespace A381350.P11394515306131156776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110655 (A018211 (n + 1) - 3).toNat

end

end A381350.P11394515306131156776

/-!
# A381351: Number of subsets of 9 integers between 1 and n such that their sum is 3 modulo n.

The programs for A381351, there is no canonical definition to state claims against.
-/

/-! ## A381351.P15019568224795481286

`A032194(n+10)-A357385(A002445(3*n+4))`
-/

namespace A381351.P15019568224795481286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032194 (n + 10) - A357385 (A002445 (3 * n + 4)).toNat

end

end A381351.P15019568224795481286

/-! ## A381351.P17720244918631375138

`A070321(A032194(n+10))`
-/

namespace A381351.P17720244918631375138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070321 (A032194 (n + 10)).toNat

end

end A381351.P17720244918631375138

/-! ## A381351.P16429230255069442597

`A032194(n+10)%A001748(A001589(n))`
-/

namespace A381351.P16429230255069442597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A032194 (n + 10)) (A001748 (A001589 n).toNat)

end

end A381351.P16429230255069442597

/-! ## A381351.P16538216277370176925

`A032194(n+10)^A390063(A344834(2*n+3))`
-/

namespace A381351.P16538216277370176925
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A032194 (n + 10) : ℚ) ^ (A390063 (A344834 (2 * n + 3)).toNat : ℤ)

end

end A381351.P16538216277370176925

/-!
# A381354: G.f. satisfies x = Sum_{n>=1} -(-1)^(n mod 3) * x^n * abs(1/A(x)^n), where abs(F(x)) equals the series expansion formed by the unsigned coefficients in F(x).

The programs for A381354, there is no canonical definition to state claims against.
-/

/-! ## A381354.P1568050716758435678

`A177078(a(n-1))+1` with `a(0)=1, a(1)=1`
-/

namespace A381354.P1568050716758435678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A177078 (a (n - 1)).toNat + 1

end

end A381354.P1568050716758435678

/-! ## A381354.P12861584174249287158

`A229608(a(n-1))+3` with `a(0)=1, a(1)=1, a(2)=4`
-/

namespace A381354.P12861584174249287158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 4] fun n a =>
  A229608 (a (n - 1)).toNat + 3

end

end A381354.P12861584174249287158

/-!
# A381355: G.f. A(x) = x*F'(x)/F(x) where F(x) is the g.f. of A381353 that satisfies [x^n] F(x)^prime(n) = 0 for n > 1.

The programs for A381355, there is no canonical definition to state claims against.
-/

/-! ## A381355.P2900929249910348476

`A346739(n)-A051344(A077413(n))`
-/

namespace A381355.P2900929249910348476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346739 n - A051344 (A077413 n).toNat

end

end A381355.P2900929249910348476

/-!
# A381356: Limit of rows in irregular triangle A381587.

The programs for A381356, there is no canonical definition to state claims against.
-/

/-! ## A381356.P10362108720548782644

`runs[runs[A381587(n+1)]]`
-/

namespace A381356.P10362108720548782644
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381587 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => j = 0 ∨ f2 j ≠ f2 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f2 j ≠ f2 (j - 1)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) n

end

end A381356.P10362108720548782644

/-! ## A381356.P15835563011886711533

`runs[A306346(n+1)]`
-/

namespace A381356.P15835563011886711533
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306346 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) n

end

end A381356.P15835563011886711533

/-! ## A381356.P1278139296583616855

`A381587(A385776(n+4)+A240219(n+1))`
-/

namespace A381356.P1278139296583616855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381587 (A385776 (n + 4) + A240219 (n + 1)).toNat

end

end A381356.P1278139296583616855

/-! ## A381356.P3473140359672696569

`A321904(runs[runs[A323438(n+1)]])`
-/

namespace A381356.P3473140359672696569
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323438 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => j = 0 ∨ f2 j ≠ f2 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f2 j ≠ f2 (j - 1)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321904 (SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) n)

end

end A381356.P3473140359672696569

/-!
# A381357: Row lengths of irregular triangle A381587.

The programs for A381357, there is no canonical definition to state claims against.
-/

/-! ## A381357.P11123366546980084084

`A000007(n)+Δ[A381358(n+1)]`
-/

namespace A381357.P11123366546980084084
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381358 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + (f1 (n + 1) - f1 n)

end

end A381357.P11123366546980084084

/-! ## A381357.P2868860619398062307

`Δ[A381358(n+1)%A000079(n)]`
-/

namespace A381357.P2868860619398062307
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A381358 (n + 1)) (A000079 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A381357.P2868860619398062307

/-! ## A381357.P2892149066898993060

`A154281(2*n+1)+Δ[A381358(n+1)]`
-/

namespace A381357.P2892149066898993060
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381358 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154281 (2 * n + 1) + (f1 (n + 1) - f1 n)

end

end A381357.P2892149066898993060

/-! ## A381357.P9611969246406092728

`A028310(Δ[A381358(n+1)])`
-/

namespace A381357.P9611969246406092728
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381358 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (f1 (n + 1) - f1 n).toNat

end

end A381357.P9611969246406092728

/-! ## A381357.P8090254547013640442

`A028310(A381358(n+2)%A381358(n+1))`
-/

namespace A381357.P8090254547013640442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (Int.tmod (A381358 (n + 2)) (A381358 (n + 1))).toNat

end

end A381357.P8090254547013640442

/-!
# A381358: Row sums of irregular triangle A381587.

The programs for A381358, there is no canonical definition to state claims against.
-/

/-! ## A381358.P5692506682456432555

`A381357(n)+a(n-1)` with `a(0)=1, a(1)=1`
-/

namespace A381358.P5692506682456432555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A381357 n + a (n - 1)

end

end A381358.P5692506682456432555

/-! ## A381358.P14343696787463577921

`A241151(A049075(n+1)+1)`
-/

namespace A381358.P14343696787463577921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241151 (A049075 (n + 1) + 1).toNat

end

end A381358.P14343696787463577921

/-! ## A381358.P12590398520618858976

`A071860(A001519(n))`
-/

namespace A381358.P12590398520618858976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071860 (A001519 n).toNat

end

end A381358.P12590398520618858976

/-! ## A381358.P9793889736380598328

`A105223(A107381(n))`
-/

namespace A381358.P9793889736380598328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105223 (A107381 n).toNat

end

end A381358.P9793889736380598328

/-!
# A381359: E.g.f. A(x) satisfies 1 - A'(x)^2 + 4*A(x)^3 = 0.

The programs for A381359, there is no canonical definition to state claims against.
-/

/-! ## A381359.P2226103081526283348

`A381360(3*n+1)`
-/

namespace A381359.P2226103081526283348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381360 (3 * n + 1)

end

end A381359.P2226103081526283348

/-! ## A381359.P6227598223398173969

`record[A381360(A204028(n+1))]`
-/

namespace A381359.P6227598223398173969
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381360 (A204028 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A381359.P6227598223398173969

/-!
# A381360: E.g.f. satisfies A(x) = exp( Integral abs(1/A(x)) dx ), where abs(F(x)) equals the series expansion formed by the unsigned coefficients in F(x).

The programs for A381360, there is no canonical definition to state claims against.
-/

/-! ## A381360.P7547333719582502410

`A000010(A326294(n)+A154312(n))`
-/

namespace A381360.P7547333719582502410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A326294 n + A154312 n).toNat

end

end A381360.P7547333719582502410

/-! ## A381360.P9141268547199876263

`A372672(A352522(n)+A287008(n+1))`
-/

namespace A381360.P9141268547199876263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372672 (A352522 n + A287008 (n + 1)).toNat

end

end A381360.P9141268547199876263

/-! ## A381360.P5951989149805373827

`A080444(A000142(n)-A079262(2*(n+1)))`
-/

namespace A381360.P5951989149805373827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080444 (A000142 n - A079262 (2 * (n + 1))).toNat

end

end A381360.P5951989149805373827

/-!
# A381361: E.g.f. satisfies A(x) = exp( Integral abs(1/A(x)^2) dx ), where abs(F(x)) equals the series expansion formed by the unsigned coefficients in F(x).

The programs for A381361, there is no canonical definition to state claims against.
-/

/-! ## A381361.P11997939179196827111

`A063951(A148191(n))`
-/

namespace A381361.P11997939179196827111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063951 (A148191 n).toNat

end

end A381361.P11997939179196827111

/-! ## A381361.P17175519881907925629

`A172308(A319616(n))`
-/

namespace A381361.P17175519881907925629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172308 (A319616 n).toNat

end

end A381361.P17175519881907925629

/-!
# A381368: a(n) is the least k > n for which prime(n) + prime(k) is a square.

The programs for A381368, there is no canonical definition to state claims against.
-/

/-! ## A381368.P11365819837943371121

`A000720(A259232(n+1))`
-/

namespace A381368.P11365819837943371121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A259232 (n + 1)).toNat

end

end A381368.P11365819837943371121

/-! ## A381368.P2261828964419333188

`A061395(or(1, A259232(n+1)))`
-/

namespace A381368.P2261828964419333188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (Int.lor 1 (A259232 (n + 1))).toNat

end

end A381368.P2261828964419333188

/-! ## A381368.P15120837603674434248

`A061395(A259232(n+1))%A002407(n+1)`
-/

namespace A381368.P15120837603674434248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A061395 (A259232 (n + 1)).toNat) (A002407 (n + 1))

end

end A381368.P15120837603674434248

/-! ## A381368.P15397617217194622806

`A061395(A259232(n+1)%A068963(n+4))`
-/

namespace A381368.P15397617217194622806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (Int.tmod (A259232 (n + 1)) (A068963 (n + 4))).toNat

end

end A381368.P15397617217194622806

/-! ## A381368.P13720780212468336845

`A297109(A259232(2*n+1-n))`
-/

namespace A381368.P13720780212468336845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297109 (A259232 (2 * n + 1 - n)).toNat

end

end A381368.P13720780212468336845

/-! ## A381368.P5529960551330201105

`A061395(2*A259232(n+1))`
-/

namespace A381368.P5529960551330201105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (2 * A259232 (n + 1)).toNat

end

end A381368.P5529960551330201105

/-! ## A381368.P15144307713974621800

`A056239(A259232(1+n))`
-/

namespace A381368.P15144307713974621800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (A259232 (1 + n)).toNat

end

end A381368.P15144307713974621800

/-! ## A381368.P15039390929104407564

`A090113(A259232(n+1)+1)`
-/

namespace A381368.P15039390929104407564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090113 (A259232 (n + 1) + 1).toNat

end

end A381368.P15039390929104407564

/-! ## A381368.P2890192930465162023

`A230980(A259232(n+1)+1)`
-/

namespace A381368.P2890192930465162023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230980 (A259232 (n + 1) + 1).toNat

end

end A381368.P2890192930465162023

/-! ## A381368.P13619302819802521523

`A055396(or(1, A259232(n+1)))`
-/

namespace A381368.P13619302819802521523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (Int.lor 1 (A259232 (n + 1))).toNat

end

end A381368.P13619302819802521523

/-! ## A381368.P17740667259176932803

`A156061(A259232(A156061(A000040(n+1))))`
-/

namespace A381368.P17740667259176932803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156061 (A259232 (A156061 (A000040 (n + 1)).toNat).toNat).toNat

end

end A381368.P17740667259176932803

/-! ## A381368.P16363176215876765244

`A156061(2*A259232(n+1))`
-/

namespace A381368.P16363176215876765244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156061 (2 * A259232 (n + 1)).toNat

end

end A381368.P16363176215876765244

/-!
# A381369: A(n,k) is the sum over all partitions of [n] of k^j for a partition with j inversions; square array A(n,k), n>=0, k>=0, read by antidiagonals.

The programs for A381369, there is no canonical definition to state claims against.
-/

/-! ## A381369.P8146181734347293802

`A342591(A113143(n))`
-/

namespace A381369.P8146181734347293802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342591 (A113143 n).toNat

end

end A381369.P8146181734347293802

/-!
# A381373: Sum over all partitions of [n] of n^j for a partition with j inversions.

The programs for A381373, there is no canonical definition to state claims against.
-/

/-! ## A381373.P13305303467448028446

`A381369(C(n+n+1, 2)+n)`
-/

namespace A381373.P13305303467448028446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381369 (Nat.choose (n + n + 1) 2 + n)

end

end A381373.P13305303467448028446

/-! ## A381373.P16815590034728002965

`A381369(∑[4*n])`
-/

namespace A381373.P16815590034728002965
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381369 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A381373.P16815590034728002965

/-! ## A381373.P6216805068371139324

`gcd(A000038(n), A381369(A046092(n)))`
-/

namespace A381373.P6216805068371139324
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A381369 (A046092 n).toNat)

end

end A381373.P6216805068371139324

/-! ## A381373.P14942275739038711072

`A381369(A046092(n))+A000007(3*n+1)`
-/

namespace A381373.P14942275739038711072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381369 (A046092 n).toNat + A000007 (3 * n + 1)

end

end A381373.P14942275739038711072

/-! ## A381373.P8178855932287427265

`A063995(3*n+1)*A381369(A046092(n))`
-/

namespace A381373.P8178855932287427265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063995 (3 * n + 1) * A381369 (A046092 n).toNat

end

end A381373.P8178855932287427265

/-!
# A381374: Little Hankel transform of A317614: a(n) = A317614(n+1)^2 - A317614(n)*A317614(n+2).

The programs for A381374, the canonical program `A381374.P15605486632285589483` is in `Seq.B000.C049`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A381374 has offset 1).

The definition of A381374 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A381374.P15605486632285589483

`ogf((1+x+92x^2+44x^3+294x^4+54x^5+92x^6-4x^7+x^8+x^9)/(1-5x^2+10x^4-10x^6+5x^8-x^10))`

The canonical program, it is in `Seq.B000.C049`.
-/

namespace A381374

/-- `ogf((1+x+92x^2+44x^3+294x^4+54x^5+92x^6-4x^7+x^8+x^9)/(1-5x^2+10x^4-10x^6+5x^8-x^10))` -/
def P15605486632285589483.Spec : Prop :=
  ∀ n, P15605486632285589483.a n = A381374 (n + 1)

theorem P15605486632285589483.correct : P15605486632285589483.Spec := by
  intro n
  simp only [A381374, Nat.add_sub_cancel]

end A381374

/-!
# A381376: E.g.f. A(x) satisfies A(x) = 1/( 1 - x * cosh(x * A(x)^2) ).

The programs for A381376, there is no canonical definition to state claims against.
-/

/-! ## A381376.P18355153051000355127

`n*A354166(floor(3/2*a(n-1))²)` with `a(0)=1`
-/

namespace A381376.P18355153051000355127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (n : ℤ) * A354166 (⌊(3 : ℚ) / 2 * (a (n - 1) : ℚ)⌋ ^ 2).toNat

end

end A381376.P18355153051000355127

/-! ## A381376.P18289466895330115420

`A212255(A106228(n))`
-/

namespace A381376.P18289466895330115420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212255 (A106228 n).toNat

end

end A381376.P18289466895330115420

/-!
# A381377: E.g.f. A(x) satisfies A(x) = 1/( 1 - x * cosh(x * A(x)) )^2.

The programs for A381377, there is no canonical definition to state claims against.
-/

/-! ## A381377.P11738056330479992818

`A079667(A319938(n+1)+A073757(n+1))`
-/

namespace A381377.P11738056330479992818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079667 (A319938 (n + 1) + A073757 (n + 1)).toNat

end

end A381377.P11738056330479992818

/-!
# A381382: E.g.f. A(x) satisfies A(x) = 1/( 1 - sinh(x * A(x)^2) / A(x)^2 ).

The programs for A381382, there is no canonical definition to state claims against.
-/

/-! ## A381382.P17658666762699711830

`∑{#}[n, #!*C(2*n-#+1, #)/(2*n-#+1)*A136630(C(n+1, 2)+#)]`
-/

namespace A381382.P17658666762699711830
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (Nat.factorial k * Nat.choose ((2 * n : ℤ) - (k : ℤ) + 1).toNat k : ℚ) / ((2 * n : ℤ) - (k : ℤ) + 1 : ℚ) * (A136630 (Nat.choose (n + 1) 2 + k) : ℚ)

end

end A381382.P17658666762699711830

/-! ## A381382.P4607011662497549342

`ceil((A126706(n^n)+1)/15)`
-/

namespace A381382.P4607011662497549342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A126706 (n ^ n) + 1 : ℚ) / 15⌉

end

end A381382.P4607011662497549342

/-!
# A381383: E.g.f. A(x) satisfies A(x) = 1/( 1 - sinh(x * A(x)) / A(x) )^2.

The programs for A381383, there is no canonical definition to state claims against.
-/

/-! ## A381383.P9127734151587450449

`A083535(A167142(n))+A000142(n)`
-/

namespace A381383.P9127734151587450449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083535 (A167142 n).toNat + A000142 n

end

end A381383.P9127734151587450449

/-! ## A381383.P12890373537032338305

`A010784(A258325(n)+A011776(n+1))`
-/

namespace A381383.P12890373537032338305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010784 (A258325 n + A011776 (n + 1)).toNat

end

end A381383.P12890373537032338305

/-!
# A381384: E.g.f. A(x) satisfies A(x) = 1/( 1 - sin(x * A(x)^2) / A(x)^2 ).

The programs for A381384, there is no canonical definition to state claims against.
-/

/-! ## A381384.P8131673685854549315

`A002426(n)-A083414(A158876(n))`
-/

namespace A381384.P8131673685854549315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002426 n - A083414 (A158876 n).toNat

end

end A381384.P8131673685854549315

/-! ## A381384.P13782577096874918652

`A002799(n)-A339619(A000108(n))`
-/

namespace A381384.P13782577096874918652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002799 n - A339619 (A000108 n).toNat

end

end A381384.P13782577096874918652

/-!
# A381386: E.g.f. A(x) satisfies A(x) = 1/( 1 - sinh(x * A(x)^2) ).

The programs for A381386, there is no canonical definition to state claims against.
-/

/-! ## A381386.P2672781362780829671

`∑{#}[n, #!*C(2*n+#+1, #)/(2*n+#+1)*A136630(C(n+1, 2)+#)]`
-/

namespace A381386.P2672781362780829671
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (Nat.factorial k * Nat.choose (2 * n + k + 1) k : ℚ) / (2 * n + k + 1 : ℚ) * (A136630 (Nat.choose (n + 1) 2 + k) : ℚ)

end

end A381386.P2672781362780829671

/-!
# A381387: E.g.f. A(x) satisfies A(x) = 1/( 1 - sinh(x * A(x)) )^2.

The programs for A381387, there is no canonical definition to state claims against.
-/

/-! ## A381387.P15102221602903766084

`A006370(A381478(n)+A381389(n))`
-/

namespace A381387.P15102221602903766084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006370 (A381478 n + A381389 n).toNat

end

end A381387.P15102221602903766084

/-!
# A381388: E.g.f. A(x) satisfies A(x) = 1/( 1 - sin(x * A(x)^2) ).

The programs for A381388, there is no canonical definition to state claims against.
-/

/-! ## A381388.P9233039851027578573

`A070899(A001168(n))`
-/

namespace A381388.P9233039851027578573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070899 (A001168 n).toNat

end

end A381388.P9233039851027578573

/-!
# A381389: E.g.f. A(x) satisfies A(x) = 1/( 1 - sin(x * A(x)) )^2.

The programs for A381389, there is no canonical definition to state claims against.
-/

/-! ## A381389.P13379529595706119237

`A277791(A375868(n)+char[(n+1)²]+char[n²])`
-/

namespace A381389.P13379529595706119237
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277791 (A375868 n + (((if ∃ j, f1 j = n then 1 else 0) + (if ∃ j, f2 j = n then 1 else 0) : ℕ) : ℤ)).toNat

end

end A381389.P13379529595706119237

/-!
# A381390: a(n) = 12*n^2 + 4*n + 1.

The programs for A381390, the canonical program `A381390.P5706993922574982670` is in `Seq.B000.C049`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A381390 has offset 0).

The definition of A381390 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `12*n²+4*n+1` (program `A381390.P5706993922574982670`, by `A381390.P5706993922574982670.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A381390.P1055365636423760366

`ogf((1+14x+9x^2)/(1-3x+3x^2-x^3))`
-/

namespace A381390.P1055365636423760366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 14, 9] [1, -3, 3, -1] n

end

end A381390.P1055365636423760366

namespace A381390

/-- `ogf((1+14x+9x^2)/(1-3x+3x^2-x^3))` -/
def P1055365636423760366.Spec : Prop :=
  ∀ n, P1055365636423760366.a n = A381390 n

end A381390

/-! ## A381390.P5706993922574982670

`12*n²+4*n+1`

The canonical program, it is in `Seq.B000.C049`.
-/

namespace A381390

/-- `12*n²+4*n+1` -/
def P5706993922574982670.Spec : Prop :=
  ∀ n, (P5706993922574982670.a n : ℤ) = A381390 n

theorem P5706993922574982670.correct : P5706993922574982670.Spec := by
  intro n
  simp only [A381390]

end A381390

/-! ## A381390.P8611663674420838100

`∑[24+a(n-1)]` with `a(0)=1, a(1)=16`
-/

namespace A381390.P8611663674420838100
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 16] fun n f1 =>
  24 + f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A381390.P8611663674420838100

namespace A381390

/-- `∑[24+a(n-1)]` -/
def P8611663674420838100.Spec : Prop :=
  ∀ n, (P8611663674420838100.a n : ℤ) = A381390 n

end A381390

/-! ## A381390.P13914074486015843324

`xor(1, (12*n+4)*n)`
-/

namespace A381390.P13914074486015843324
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 ((12 * n + 4) * n)

end

end A381390.P13914074486015843324

namespace A381390

/-- `xor(1, (12*n+4)*n)` -/
def P13914074486015843324.Spec : Prop :=
  ∀ n, (P13914074486015843324.a n : ℤ) = A381390 n

end A381390

/-! ## A381390.P15729429068986942752

`ceil(or(1, 6*n)²/3)`
-/

namespace A381390.P15729429068986942752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Nat.lor 1 (6 * n) ^ 2 : ℚ) / 3⌉

end

end A381390.P15729429068986942752

namespace A381390

/-- `ceil(or(1, 6*n)²/3)` -/
def P15729429068986942752.Spec : Prop :=
  ∀ n, P15729429068986942752.a n = A381390 n

end A381390

/-! ## A381390.P3880212707799300026

`ceil(xor(1, 6*n)²/3)`
-/

namespace A381390.P3880212707799300026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Nat.xor 1 (6 * n) ^ 2 : ℚ) / 3⌉

end

end A381390.P3880212707799300026

namespace A381390

/-- `ceil(xor(1, 6*n)²/3)` -/
def P3880212707799300026.Spec : Prop :=
  ∀ n, P3880212707799300026.a n = A381390 n

end A381390

/-! ## A381390.P4338708641505047007

`Δ[lcm((2*n-1)², n)]`
-/

namespace A381390.P4338708641505047007
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (((2 * n : ℤ) - 1) ^ 2) (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A381390.P4338708641505047007

namespace A381390

/-- `Δ[lcm((2*n-1)², n)]` -/
def P4338708641505047007.Spec : Prop :=
  ∀ n, P4338708641505047007.a n = A381390 n

end A381390

/-! ## A381390.P17972481913493898701

`Δ[n*row(2*n²)²]`
-/

namespace A381390.P17972481913493898701
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * SequenceMachineLib.triRow (2 * n ^ 2) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A381390.P17972481913493898701

namespace A381390

/-- `Δ[n*row(2*n²)²]` -/
def P17972481913493898701.Spec : Prop :=
  ∀ n, P17972481913493898701.a n = A381390 n

end A381390

/-! ## A381390.P6426841751058646326

`Δ[n*(8*C(n, 2)+1)]`
-/

namespace A381390.P6426841751058646326
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (8 * Nat.choose n 2 + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A381390.P6426841751058646326

namespace A381390

/-- `Δ[n*(8*C(n, 2)+1)]` -/
def P6426841751058646326.Spec : Prop :=
  ∀ n, P6426841751058646326.a n = A381390 n

theorem P6426841751058646326.correct : P6426841751058646326.Spec := by
  intro n
  simp only [A381390, Nat.add_sub_cancel, A381390.P6426841751058646326.f1, A381390.P6426841751058646326.a, A381390.P5706993922574982670.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A381390

/-! ## A381390.P6645646731516692991

`Δ[(2*n-1)*C(2*n, 2)]`
-/

namespace A381390.P6645646731516692991
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 * n : ℤ) - 1) * (Nat.choose (2 * n) 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A381390.P6645646731516692991

namespace A381390

/-- `Δ[(2*n-1)*C(2*n, 2)]` -/
def P6645646731516692991.Spec : Prop :=
  ∀ n, P6645646731516692991.a n = A381390 n

theorem P6645646731516692991.correct : P6645646731516692991.Spec := by
  intro n
  simp only [A381390, Nat.add_sub_cancel, A381390.P6645646731516692991.f1, A381390.P6645646731516692991.a, A381390.P5706993922574982670.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A381390

/-! ## A381390.P16624536064130409782

`or(1, Δ[2*n*(n-1)*2*n])`
-/

namespace A381390.P16624536064130409782
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) * (((n : ℤ) - 1) * (2 * n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (n + 1) - f1 n)

end

end A381390.P16624536064130409782

namespace A381390

/-- `or(1, Δ[2*n*(n-1)*2*n])` -/
def P16624536064130409782.Spec : Prop :=
  ∀ n, P16624536064130409782.a n = A381390 n

end A381390

/-! ## A381390.P6760914982275526438

`(A016922(n)+2)/3`
-/

namespace A381390.P6760914982275526438
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016922 n + 2 : ℚ) / 3

end

end A381390.P6760914982275526438

namespace A381390

/-- `(A016922(n)+2)/3` -/
def P6760914982275526438.Spec : Prop :=
  ∀ n, P6760914982275526438.a n = (A381390 n : ℚ)

theorem P6760914982275526438.correct : P6760914982275526438.Spec := by
  intro n
  simp only [A381390, Nat.add_sub_cancel, A381390.P6760914982275526438.a, A381390.P5706993922574982670.a, A016922, A016922.P12735287873668454303.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A381390

/-! ## A381390.P17909324878671275442

`A056109(2*n)`
-/

namespace A381390.P17909324878671275442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056109 (2 * n)

end

end A381390.P17909324878671275442

namespace A381390

/-- `A056109(2*n)` -/
def P17909324878671275442.Spec : Prop :=
  ∀ n, P17909324878671275442.a n = A381390 n

theorem P17909324878671275442.correct : P17909324878671275442.Spec := by
  intro n
  simp only [A381390, Nat.add_sub_cancel, A381390.P17909324878671275442.a, A381390.P5706993922574982670.a, A056109, A056109.P1021656474208167212.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A381390

/-! ## A381390.P10428028954575934676

`A008577(3*n)`
-/

namespace A381390.P10428028954575934676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008577 (3 * n)

end

end A381390.P10428028954575934676

namespace A381390

/-- `A008577(3*n)` -/
def P10428028954575934676.Spec : Prop :=
  ∀ n, P10428028954575934676.a n = A381390 n

end A381390

/-! ## A381390.P7584711690189058238

`A164897(3*n)/3`
-/

namespace A381390.P7584711690189058238
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A164897 (3 * n) : ℚ) / 3

end

end A381390.P7584711690189058238

namespace A381390

/-- `A164897(3*n)/3` -/
def P7584711690189058238.Spec : Prop :=
  ∀ n, P7584711690189058238.a n = (A381390 n : ℚ)

theorem P7584711690189058238.correct : P7584711690189058238.Spec := by
  intro n
  simp only [A381390, Nat.add_sub_cancel, A381390.P7584711690189058238.a, A381390.P5706993922574982670.a, A164897, A164897.P2809855780232688833.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A381390

/-! ## A381390.P14080056353669520298

`∩[A008577(n), A056109(n)]`
-/

namespace A381390.P14080056353669520298
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008577 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056109 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A381390.P14080056353669520298

namespace A381390

/-- `∩[A008577(n), A056109(n)]` -/
def P14080056353669520298.Spec : Prop :=
  ∀ n, (P14080056353669520298.a n : ℤ) = A381390 n

end A381390

/-! ## A381390.P6639864192543403693

`A257083(4*n)`
-/

namespace A381390.P6639864192543403693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257083 (4 * n)

end

end A381390.P6639864192543403693

namespace A381390

/-- `A257083(4*n)` -/
def P6639864192543403693.Spec : Prop :=
  ∀ n, P6639864192543403693.a n = A381390 n

end A381390

/-! ## A381390.P3215828229716632674

`A238377(4*n)`
-/

namespace A381390.P3215828229716632674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238377 (4 * n)

end

end A381390.P3215828229716632674

namespace A381390

/-- `A238377(4*n)` -/
def P3215828229716632674.Spec : Prop :=
  ∀ n, P3215828229716632674.a n = A381390 n

end A381390

/-! ## A381390.P4907881010787744782

`A263807(4*n)`
-/

namespace A381390.P4907881010787744782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263807 (4 * n)

end

end A381390.P4907881010787744782

namespace A381390

/-- `A263807(4*n)` -/
def P4907881010787744782.Spec : Prop :=
  ∀ n, P4907881010787744782.a n = A381390 n

end A381390

/-! ## A381390.P17551791220021312470

`Δ[A028724(4*n)]`
-/

namespace A381390.P17551791220021312470
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028724 (4 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A381390.P17551791220021312470

namespace A381390

/-- `Δ[A028724(4*n)]` -/
def P17551791220021312470.Spec : Prop :=
  ∀ n, P17551791220021312470.a n = A381390 n

end A381390

/-!
# A381391: Number of k <= 10^n that are neither squarefree nor prime powers (i.e., k is in A126706).

The programs for A381391, there is no canonical definition to state claims against.
-/

/-! ## A381391.P17921393108869259025

`A011557(n+1)-A071172(n+1)-A267574(n+1)`
-/

namespace A381391.P17921393108869259025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011557 (n + 1) - A071172 (n + 1) - A267574 (n + 1)

end

end A381391.P17921393108869259025

/-! ## A381391.P11174773728317770715

`A063035(n+1)-A267574(n+1)`
-/

namespace A381391.P11174773728317770715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063035 (n + 1) - A267574 (n + 1)

end

end A381391.P11174773728317770715

/-!
# A381398: Irregular triangle read by rows, where row n lists the elements of the set of bases and exponents (including exponents = 1) in the prime factorization of n.

The programs for A381398, there is no canonical definition to state claims against.
-/

/-! ## A381398.P14669296603588663972

`A381178(lt[1, A113384(2*n)])`
-/

namespace A381398.P14669296603588663972
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113384 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381178 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A381398.P14669296603588663972

/-! ## A381398.P3054429205144716622

`A001055(eq[2, A124768(3*n+1)])`
-/

namespace A381398.P3054429205144716622
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124768 (3 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001055 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A381398.P3054429205144716622

/-!
# A381399: a(n) is the number of prime elements in the set of bases and exponents in the prime factorization of n.

The programs for A381399, there is no canonical definition to state claims against.
-/

/-! ## A381399.P4995724628431497666

`A005087(lcm(∏{e}[2*(n+1), #+1], A003961(n+1)))`
-/

namespace A381399.P4995724628431497666
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005087 (Int.lcm ((∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1) : ℕ) : ℤ) (A003961 (n + 1)))

end

end A381399.P4995724628431497666

/-! ## A381399.P12806040217295003644

`A005087(∏{e}[2*(n+1), #+1]*A003961(n+1))`
-/

namespace A381399.P12806040217295003644
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005087 (((∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1) : ℕ) : ℤ) * A003961 (n + 1)).toNat

end

end A381399.P12806040217295003644

/-! ## A381399.P1240642370013022477

`A001221((n+1)/∏{p}[n+1, #]*∏{e}[n+1, #]*(n+1)²)`
-/

namespace A381399.P1240642370013022477
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ) * ((∏ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p : ℕ) : ℚ) * ((n + 1) ^ 2 : ℚ))).toNat

end

end A381399.P1240642370013022477

/-! ## A381399.P14297721085908145399

`A087624((n+1)²/∏{p}[n+1, #]*∏{p}[n+1, #*val(n+1, #)])`
-/

namespace A381399.P14297721085908145399
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087624 (SequenceMachineLib.roundAway (((n + 1) ^ 2 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ) * ((∏ p ∈ Nat.primeFactors (f2 n), p * SequenceMachineLib.valuation (n + 1) p : ℕ) : ℚ))).toNat

end

end A381399.P14297721085908145399

/-! ## A381399.P3064948279921377004

`A001221((n+1)*A112622(n+1))`
-/

namespace A381399.P3064948279921377004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 ((n + 1 : ℤ) * A112622 (n + 1)).toNat

end

end A381399.P3064948279921377004

/-! ## A381399.P3324635683300772947

`A063962((n+1)²*A005361(n+1))`
-/

namespace A381399.P3324635683300772947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063962 (((n + 1) ^ 2 : ℤ) * A005361 (n + 1)).toNat

end

end A381399.P3324635683300772947

/-! ## A381399.P18394353004496751764

`A001221(A000026(n+1)^A052409(n+1))`
-/

namespace A381399.P18394353004496751764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (SequenceMachineLib.roundAway ((A000026 (n + 1) : ℚ) ^ (A052409 (n + 1) : ℤ))).toNat

end

end A381399.P18394353004496751764

/-! ## A381399.P6862141035961285356

`A001221(A381588(n+1)%A349799(n+1))`
-/

namespace A381399.P6862141035961285356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (Int.tmod (A381588 (n + 1)) (A349799 (n + 1))).toNat

end

end A381399.P6862141035961285356

/-! ## A381399.P7290120911967655483

`A001221(∏{p}[n+1, #*val(n+1, #)]^A001221(n+5))`
-/

namespace A381399.P7290120911967655483
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (SequenceMachineLib.roundAway (((∏ p ∈ Nat.primeFactors (f1 n), p * SequenceMachineLib.valuation (n + 1) p : ℕ) : ℚ) ^ (A001221 (n + 5) : ℤ))).toNat

end

end A381399.P7290120911967655483

/-! ## A381399.P14890164010906575655

`A001221(A188385(n+1)^A329443(n))`
-/

namespace A381399.P14890164010906575655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (SequenceMachineLib.roundAway ((A188385 (n + 1) : ℚ) ^ (A329443 n : ℤ))).toNat

end

end A381399.P14890164010906575655

