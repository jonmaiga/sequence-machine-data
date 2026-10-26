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
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
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
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C005
import Seq.B002.C006
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
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
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
import Seq.Opaque.C019
import Seq.Opaque.C020
import Seq.Opaque.C021
import Seq.Opaque.C022
import Seq.Opaque.C023

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A242400: Differences between A008586 (multiples of 4) and A242399.

The programs for A242400, there is no canonical definition to state claims against.
-/

/-! ## A242400.P8095001480981486945

`4*n-A242399(n)`
-/

namespace A242400.P8095001480981486945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * n : ℤ) - A242399 n

end

end A242400.P8095001480981486945

/-! ## A242400.P13438659404827698842

`A008585(n)+n-A242399(n)`
-/

namespace A242400.P13438659404827698842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008585 n + ((n : ℤ) - A242399 n)

end

end A242400.P13438659404827698842

/-! ## A242400.P12402855559214361015

`A005843(n)+A005843(n)-A242399(n)`
-/

namespace A242400.P12402855559214361015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n + (A005843 n - A242399 n)

end

end A242400.P12402855559214361015

/-! ## A242400.P2856287300795992979

`A008586(n)+A008683(A008578(n+1))*A242399(n)`
-/

namespace A242400.P2856287300795992979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008586 n + A008683 (A008578 (n + 1)).toNat * A242399 n

end

end A242400.P2856287300795992979

/-! ## A242400.P12283793331708764764

`4*n-A060587(A004488(3*n))`
-/

namespace A242400.P12283793331708764764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * n : ℤ) - A060587 (A004488 (3 * n)).toNat

end

end A242400.P12283793331708764764

/-! ## A242400.P13512263367376777341

`4*n-A325820(A133263(n+4)+2)`
-/

namespace A242400.P13512263367376777341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * n : ℤ) - A325820 (A133263 (n + 4) + 2).toNat

end

end A242400.P13512263367376777341

/-!
# A242401: Numbers that are neither triangular nor square.

The programs for A242401, the canonical program `A242401.P14578160612207848124` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A242401 has offset 1).

The definition of A242401 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A242401.P8325458018224881173

`comp[∪[n², ∑[n]]]`
-/

namespace A242401.P8325458018224881173
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = x) ∨ ∃ j, f3 j = x) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A242401.P8325458018224881173

namespace A242401

/-- `comp[∪[n², ∑[n]]]` -/
def P8325458018224881173.Spec : Prop :=
  ∀ n, (P8325458018224881173.a n : ℤ) = A242401 (n + 1)

end A242401

/-! ## A242401.P6696613411026020155

`comp[round(lcm(n+1, 1-n)/4)]`
-/

namespace A242401.P6696613411026020155
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Int.lcm (n + 1 : ℤ) (1 - (n : ℤ)) : ℚ) / 4)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A242401.P6696613411026020155

namespace A242401

/-- `comp[round(lcm(n+1, 1-n)/4)]` -/
def P6696613411026020155.Spec : Prop :=
  ∀ n, (P6696613411026020155.a n : ℤ) = A242401 (n + 1)

end A242401

/-! ## A242401.P7647875676531986725

`comp[A123596(n)]`
-/

namespace A242401.P7647875676531986725
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123596 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A242401.P7647875676531986725

namespace A242401

/-- `comp[A123596(n)]` -/
def P7647875676531986725.Spec : Prop :=
  ∀ n, (P7647875676531986725.a n : ℤ) = A242401 (n + 1)

end A242401

/-! ## A242401.P10304926331960653574

`comp[A124093(n)]`
-/

namespace A242401.P10304926331960653574
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124093 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A242401.P10304926331960653574

namespace A242401

/-- `comp[A124093(n)]` -/
def P10304926331960653574.Spec : Prop :=
  ∀ n, (P10304926331960653574.a n : ℤ) = A242401 (n + 1)

end A242401

/-! ## A242401.P276664334446991881

`comp[A054686(n+1)]`
-/

namespace A242401.P276664334446991881
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054686 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A242401.P276664334446991881

namespace A242401

/-- `comp[A054686(n+1)]` -/
def P276664334446991881.Spec : Prop :=
  ∀ n, (P276664334446991881.a n : ℤ) = A242401 (n + 1)

end A242401

/-! ## A242401.P14578160612207848124

`eq[A056926(n), A123110(n)]`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A242401

/-- `eq[A056926(n), A123110(n)]` -/
def P14578160612207848124.Spec : Prop :=
  ∀ n, (P14578160612207848124.a n : ℤ) = A242401 (n + 1)

theorem P14578160612207848124.correct : P14578160612207848124.Spec := by
  intro n
  simp only [A242401, Nat.add_sub_cancel]

end A242401

/-! ## A242401.P17979189981192435675

`comp[A130845(n+1)*A130845(n)]`
-/

namespace A242401.P17979189981192435675
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130845 (n + 1) * A130845 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A242401.P17979189981192435675

namespace A242401

/-- `comp[A130845(n+1)*A130845(n)]` -/
def P17979189981192435675.Spec : Prop :=
  ∀ n, (P17979189981192435675.a n : ℤ) = A242401 (n + 1)

end A242401

/-! ## A242401.P15214098827455602175

`lt[A000005(8*n+1)%2, log2(A169695(n))]`
-/

namespace A242401.P15214098827455602175
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000005 (8 * n + 1)) 2

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A169695 n : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A242401.P15214098827455602175

namespace A242401

/-- `lt[A000005(8*n+1)%2, log2(A169695(n))]` -/
def P15214098827455602175.Spec : Prop :=
  ∀ n, (P15214098827455602175.a n : ℤ) = A242401 (n + 1)

end A242401

/-! ## A242401.P4089377532769026938

`lt[A000203(8*n+1)%2, log2(A169695(n))]`
-/

namespace A242401.P4089377532769026938
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000203 (8 * n + 1)) 2

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A169695 n : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A242401.P4089377532769026938

namespace A242401

/-- `lt[A000203(8*n+1)%2, log2(A169695(n))]` -/
def P4089377532769026938.Spec : Prop :=
  ∀ n, (P4089377532769026938.a n : ℤ) = A242401 (n + 1)

end A242401

/-! ## A242401.P17134934979015773882

`filter[A014132(n+1), A049240(#)]`
-/

namespace A242401.P17134934979015773882
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014132 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A049240 (f1 j).toNat = 1) n)

end

end A242401.P17134934979015773882

namespace A242401

/-- `filter[A014132(n+1), A049240(#)]` -/
def P17134934979015773882.Spec : Prop :=
  ∀ n, P17134934979015773882.a n = A242401 (n + 1)

end A242401

/-! ## A242401.P1502039132827367811

`∩[comp[n²], comp[∑[n]]]`
-/

namespace A242401.P1502039132827367811
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

open Classical in
def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f4 j ≠ x) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f3 j = x) n

end

end A242401.P1502039132827367811

namespace A242401

/-- `∩[comp[n²], comp[∑[n]]]` -/
def P1502039132827367811.Spec : Prop :=
  ∀ n, (P1502039132827367811.a n : ℤ) = A242401 (n + 1)

end A242401

/-! ## A242401.P13660402926347030558

`filter[A000037(n+1), A123110(#)]`
-/

namespace A242401.P13660402926347030558
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000037 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A123110 (f1 j).toNat = 1) n)

end

end A242401.P13660402926347030558

namespace A242401

/-- `filter[A000037(n+1), A123110(#)]` -/
def P13660402926347030558.Spec : Prop :=
  ∀ n, P13660402926347030558.a n = A242401 (n + 1)

end A242401

/-! ## A242401.P11825926380756317228

`filter[A164514(n+1), A123110(#)]`
-/

namespace A242401.P11825926380756317228
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164514 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A123110 (f1 j).toNat = 1) n)

end

end A242401.P11825926380756317228

namespace A242401

/-- `filter[A164514(n+1), A123110(#)]` -/
def P11825926380756317228.Spec : Prop :=
  ∀ n, P11825926380756317228.a n = A242401 (n + 1)

end A242401

/-! ## A242401.P3096633167980261031

`lt[char[A124093(n+1)], 1]`
-/

namespace A242401.P3096633167980261031
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124093 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f3 j) n

end

end A242401.P3096633167980261031

namespace A242401

/-- `lt[char[A124093(n+1)], 1]` -/
def P3096633167980261031.Spec : Prop :=
  ∀ n, (P3096633167980261031.a n : ℤ) = A242401 (n + 1)

end A242401

/-! ## A242401.P12264099978343386829

`eq[A010816(n), A037213(n)]`
-/

namespace A242401.P12264099978343386829
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010816 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037213 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A242401.P12264099978343386829

namespace A242401

/-- `eq[A010816(n), A037213(n)]` -/
def P12264099978343386829.Spec : Prop :=
  ∀ n, (P12264099978343386829.a n : ℤ) = A242401 (n + 1)

end A242401

/-! ## A242401.P17631813096199450913

`eq[A000122(n), A073423(n)]`
-/

namespace A242401.P17631813096199450913
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000122 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073423 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A242401.P17631813096199450913

namespace A242401

/-- `eq[A000122(n), A073423(n)]` -/
def P17631813096199450913.Spec : Prop :=
  ∀ n, (P17631813096199450913.a n : ℤ) = A242401 (n + 1)

end A242401

/-! ## A242401.P6990064098896187844

`eq[A000122(n), A073424(n)]`
-/

namespace A242401.P6990064098896187844
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000122 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073424 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A242401.P6990064098896187844

namespace A242401

/-- `eq[A000122(n), A073424(n)]` -/
def P6990064098896187844.Spec : Prop :=
  ∀ n, (P6990064098896187844.a n : ℤ) = A242401 (n + 1)

end A242401

/-! ## A242401.P9862634800139644904

`eq[A002448(n), A073423(n)]`
-/

namespace A242401.P9862634800139644904
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002448 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073423 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A242401.P9862634800139644904

namespace A242401

/-- `eq[A002448(n), A073423(n)]` -/
def P9862634800139644904.Spec : Prop :=
  ∀ n, (P9862634800139644904.a n : ℤ) = A242401 (n + 1)

end A242401

/-! ## A242401.P14088739570591320759

`eq[A002448(n), A073424(n)]`
-/

namespace A242401.P14088739570591320759
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002448 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073424 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A242401.P14088739570591320759

namespace A242401

/-- `eq[A002448(n), A073424(n)]` -/
def P14088739570591320759.Spec : Prop :=
  ∀ n, (P14088739570591320759.a n : ℤ) = A242401 (n + 1)

end A242401

/-!
# A242404: a(n) = Sum over i and j with j<=i and i=1.. sopf(n) of binomial(d(i), d(j)), where d(i) are the prime divisors of n and sopf(n) = sum of the distinct primes dividing n (A008472).

The programs for A242404, there is no canonical definition to state claims against.
-/

/-! ## A242404.P14139800016627489754

`A238531(A226040(n))-A130507(A332666(n))`
-/

namespace A242404.P14139800016627489754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238531 (A226040 n).toNat - A130507 (A332666 n).toNat

end

end A242404.P14139800016627489754

/-! ## A242404.P1768874762875029506

`A238531(A226040(n))%A006530(A000711(n))`
-/

namespace A242404.P1768874762875029506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A238531 (A226040 n).toNat) (A006530 (A000711 n).toNat)

end

end A242404.P1768874762875029506

/-! ## A242404.P16586809467147956771

`A001221(A000079(n))*A238531(A226040(n))`
-/

namespace A242404.P16586809467147956771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A000079 n).toNat * A238531 (A226040 n).toNat

end

end A242404.P16586809467147956771

/-! ## A242404.P2033045611397632712

`A027975(A226040(n))%A000203(A104721(n))`
-/

namespace A242404.P2033045611397632712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A027975 (A226040 n).toNat) (A000203 (A104721 n).toNat)

end

end A242404.P2033045611397632712

/-! ## A242404.P12400970250422934126

`A238531(A226040(n))+A008683(A291780(n+1))`
-/

namespace A242404.P12400970250422934126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238531 (A226040 n).toNat + A008683 (A291780 (n + 1)).toNat

end

end A242404.P12400970250422934126

/-!
# A242407: Numbers such that in ternary representation all pairs of adjacent digits have sums not greater than 2.

The programs for A242407, the canonical program `A242407.P18030510277826149703` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A242407 has offset 1).

The definition of A242407 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1429 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A242407.P7260905320761123411

`eq[0, A242400(n)]`
-/

namespace A242407.P7260905320761123411
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242400 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A242407.P7260905320761123411

namespace A242407

/-- `eq[0, A242400(n)]` -/
def P7260905320761123411.Spec : Prop :=
  ∀ n, (P7260905320761123411.a n : ℤ) = A242407 (n + 1)

end A242407

/-! ## A242407.P7845691639942140649

`eq[n, A265364(n)]`
-/

namespace A242407.P7845691639942140649
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265364 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A242407.P7845691639942140649

namespace A242407

/-- `eq[n, A265364(n)]` -/
def P7845691639942140649.Spec : Prop :=
  ∀ n, (P7845691639942140649.a n : ℤ) = A242407 (n + 1)

end A242407

/-! ## A242407.P16207572496078849051

`comp[A242408(n+1)]`
-/

namespace A242407.P16207572496078849051
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242408 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A242407.P16207572496078849051

namespace A242407

/-- `comp[A242408(n+1)]` -/
def P16207572496078849051.Spec : Prop :=
  ∀ n, (P16207572496078849051.a n : ℤ) = A242407 (n + 1)

end A242407

/-! ## A242407.P14438035666032384898

`record[A242399(n)/4]`
-/

namespace A242407.P14438035666032384898
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A242399 n : ℚ) / 4

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A242407.P14438035666032384898

namespace A242407

/-- `record[A242399(n)/4]` -/
def P14438035666032384898.Spec : Prop :=
  ∀ n, P14438035666032384898.a n = (A242407 (n + 1) : ℚ)

end A242407

/-! ## A242407.P7436900487297939695

`eq[A004773(n), A071770(n)]`
-/

namespace A242407.P7436900487297939695
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004773 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071770 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A242407.P7436900487297939695

namespace A242407

/-- `eq[A004773(n), A071770(n)]` -/
def P7436900487297939695.Spec : Prop :=
  ∀ n, (P7436900487297939695.a n : ℤ) = A242407 (n + 1)

end A242407

/-! ## A242407.P8488891927167997975

`eq[A008586(n), A242399(n)]`
-/

namespace A242407.P8488891927167997975
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008586 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242399 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A242407.P8488891927167997975

namespace A242407

/-- `eq[A008586(n), A242399(n)]` -/
def P8488891927167997975.Spec : Prop :=
  ∀ n, (P8488891927167997975.a n : ℤ) = A242407 (n + 1)

end A242407

/-! ## A242407.P991852731478706511

`eq[A005812(n), A324469(n)]`
-/

namespace A242407.P991852731478706511
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005812 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324469 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A242407.P991852731478706511

namespace A242407

/-- `eq[A005812(n), A324469(n)]` -/
def P991852731478706511.Spec : Prop :=
  ∀ n, (P991852731478706511.a n : ℤ) = A242407 (n + 1)

end A242407

/-! ## A242407.P11632814734134837803

`eq[A053735(n), A324469(n)]`
-/

namespace A242407.P11632814734134837803
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053735 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324469 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A242407.P11632814734134837803

namespace A242407

/-- `eq[A053735(n), A324469(n)]` -/
def P11632814734134837803.Spec : Prop :=
  ∀ n, (P11632814734134837803.a n : ℤ) = A242407 (n + 1)

end A242407

/-! ## A242407.P6788012480058690004

`eq[A263273(n), A264974(n)]`
-/

namespace A242407.P6788012480058690004
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263273 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264974 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A242407.P6788012480058690004

namespace A242407

/-- `eq[A263273(n), A264974(n)]` -/
def P6788012480058690004.Spec : Prop :=
  ∀ n, (P6788012480058690004.a n : ℤ) = A242407 (n + 1)

end A242407

/-! ## A242407.P6791374615475515418

`eq[A264976(n), A265351(n)]`
-/

namespace A242407.P6791374615475515418
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264976 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265351 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A242407.P6791374615475515418

namespace A242407

/-- `eq[A264976(n), A265351(n)]` -/
def P6791374615475515418.Spec : Prop :=
  ∀ n, (P6791374615475515418.a n : ℤ) = A242407 (n + 1)

end A242407

/-! ## A242407.P6635750390745660012

`eq[A265368(n), A265902(n)]`
-/

namespace A242407.P6635750390745660012
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265368 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265902 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A242407.P6635750390745660012

namespace A242407

/-- `eq[A265368(n), A265902(n)]` -/
def P6635750390745660012.Spec : Prop :=
  ∀ n, (P6635750390745660012.a n : ℤ) = A242407 (n + 1)

end A242407

/-! ## A242407.P18030510277826149703

`eq[A053735(n), A089643(2*n)]`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A242407

/-- `eq[A053735(n), A089643(2*n)]` -/
def P18030510277826149703.Spec : Prop :=
  ∀ n, (P18030510277826149703.a n : ℤ) = A242407 (n + 1)

theorem P18030510277826149703.correct : P18030510277826149703.Spec := by
  intro n
  simp only [A242407, Nat.add_sub_cancel]

end A242407

/-! ## A242407.P5215676320245104029

`eq[n, A265363(n)]`
-/

namespace A242407.P5215676320245104029
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265363 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A242407.P5215676320245104029

namespace A242407

/-- `eq[n, A265363(n)]` -/
def P5215676320245104029.Spec : Prop :=
  ∀ n, (P5215676320245104029.a n : ℤ) = A242407 (n + 1)

end A242407

/-! ## A242407.P7732619404519247184

`eq[n, A338242(A321726(n))]`
-/

namespace A242407.P7732619404519247184
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338242 (A321726 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A242407.P7732619404519247184

namespace A242407

/-- `eq[n, A338242(A321726(n))]` -/
def P7732619404519247184.Spec : Prop :=
  ∀ n, (P7732619404519247184.a n : ℤ) = A242407 (n + 1)

end A242407

/-! ## A242407.P11471458460461612755

`eq[A265351(n), A265358(A265362(n))]`
-/

namespace A242407.P11471458460461612755
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265351 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265358 (A265362 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A242407.P11471458460461612755

namespace A242407

/-- `eq[A265351(n), A265358(A265362(n))]` -/
def P11471458460461612755.Spec : Prop :=
  ∀ n, (P11471458460461612755.a n : ℤ) = A242407 (n + 1)

end A242407

/-!
# A242408: Numbers such that in ternary representation at least one pair of adjacent digits has a sum greater than 2.

The programs for A242408, the canonical program `A242408.P5047545838099332547` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A242408 has offset 1).

The definition of A242408 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A242408.P5047545838099332547

`comp[A242407(n+1)]`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A242408

/-- `comp[A242407(n+1)]` -/
def P5047545838099332547.Spec : Prop :=
  ∀ n, (P5047545838099332547.a n : ℤ) = A242408 (n + 1)

theorem P5047545838099332547.correct : P5047545838099332547.Spec := by
  intro n
  simp only [A242408, Nat.add_sub_cancel]

end A242408

/-! ## A242408.P16317551760386949125

`lt[0, A242400(n)]`
-/

namespace A242408.P16317551760386949125
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242400 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A242408.P16317551760386949125

namespace A242408

/-- `lt[0, A242400(n)]` -/
def P16317551760386949125.Spec : Prop :=
  ∀ n, (P16317551760386949125.a n : ℤ) = A242408 (n + 1)

end A242408

/-! ## A242408.P6050556638838890384

`eq[A000038(n)², A000038(A242400(n))]`
-/

namespace A242408.P6050556638838890384
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 (A242400 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A242408.P6050556638838890384

namespace A242408

/-- `eq[A000038(n)², A000038(A242400(n))]` -/
def P6050556638838890384.Spec : Prop :=
  ∀ n, (P6050556638838890384.a n : ℤ) = A242408 (n + 1)

end A242408

/-! ## A242408.P7417569791941495497

`lt[1, (n-A265364(n))²]`
-/

namespace A242408.P7417569791941495497
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - A265364 n) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A242408.P7417569791941495497

namespace A242408

/-- `lt[1, (n-A265364(n))²]` -/
def P7417569791941495497.Spec : Prop :=
  ∀ n, (P7417569791941495497.a n : ℤ) = A242408 (n + 1)

end A242408

/-! ## A242408.P18334988943770632241

`eq[A000038(n+1), A000038(A242400(n))]`
-/

namespace A242408.P18334988943770632241
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 (A242400 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A242408.P18334988943770632241

namespace A242408

/-- `eq[A000038(n+1), A000038(A242400(n))]` -/
def P18334988943770632241.Spec : Prop :=
  ∀ n, (P18334988943770632241.a n : ℤ) = A242408 (n + 1)

end A242408

/-! ## A242408.P16577562481565270848

`lt[1, (n-A265363(n))²]`
-/

namespace A242408.P16577562481565270848
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - A265363 n) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A242408.P16577562481565270848

namespace A242408

/-- `lt[1, (n-A265363(n))²]` -/
def P16577562481565270848.Spec : Prop :=
  ∀ n, (P16577562481565270848.a n : ℤ) = A242408 (n + 1)

end A242408

/-! ## A242408.P9835765851570256998

`eq[A057427(A242400(n)), A059841(2*n)]`
-/

namespace A242408.P9835765851570256998
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A242400 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A242408.P9835765851570256998

namespace A242408

/-- `eq[A057427(A242400(n)), A059841(2*n)]` -/
def P9835765851570256998.Spec : Prop :=
  ∀ n, (P9835765851570256998.a n : ℤ) = A242408 (n + 1)

end A242408

/-!
# A242410: a(1)=1 and for n>1, a(n) is the smallest number greater than a(n-1) such that a(n) is not divisible by a(d) for any divisor d of n (except 1 and n).

The programs for A242410, there is no canonical definition to state claims against.
-/

/-! ## A242410.P4046919499408625968

`eq[char[A289273(n+1)], A000007(n)]`
-/

namespace A242410.P4046919499408625968
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289273 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A242410.P4046919499408625968

/-! ## A242410.P3889710687619941039

`eq[char[A289273(n+1)], A000038(n)]`
-/

namespace A242410.P3889710687619941039
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289273 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A242410.P3889710687619941039

/-! ## A242410.P1674996973691966977

`eq[A005897(n)%2, char[A289273(n+1)]]`
-/

namespace A242410.P1674996973691966977
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A005897 n) 2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289273 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℤ)) n

end

end A242410.P1674996973691966977

/-! ## A242410.P17804373625439261029

`eq[char[A289273(n+1)], A163806(3*n)]`
-/

namespace A242410.P17804373625439261029
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289273 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163806 (3 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A242410.P17804373625439261029

/-! ## A242410.P8028373834641050739

`eq[char[A289273(n+1)], A163810(3*n)]`
-/

namespace A242410.P8028373834641050739
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289273 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163810 (3 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A242410.P8028373834641050739

/-!
# A242411: If n is a prime power, p_i^e, a(n) = 0, otherwise difference (i-j) of the indices of the two largest distinct primes p_i, p_j, i > j in the prime factorization of n: a(n) = A061395(n) - A061395(A051119(n)).

The programs for A242411, the canonical program `A242411.P17809886446598189912` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A242411 has offset 1).

The definition of A242411 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A242411.P9636775338617946874

`A241917(A340679(n+1))`
-/

namespace A242411.P9636775338617946874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241917 (A340679 (n + 1)).toNat

end

end A242411.P9636775338617946874

namespace A242411

/-- `A241917(A340679(n+1))` -/
def P9636775338617946874.Spec : Prop :=
  ∀ n, P9636775338617946874.a n = A242411 (n + 1)

end A242411

/-! ## A242411.P17809886446598189912

`A241919(n+1)-A297109(n+1)`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A242411

/-- `A241919(n+1)-A297109(n+1)` -/
def P17809886446598189912.Spec : Prop :=
  ∀ n, P17809886446598189912.a n = A242411 (n + 1)

theorem P17809886446598189912.correct : P17809886446598189912.Spec := by
  intro n
  simp only [A242411, Nat.add_sub_cancel]

end A242411

/-! ## A242411.P4493517117322531175

`A143731(n+1)*A241919(n+1)`
-/

namespace A242411.P4493517117322531175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143731 (n + 1) * A241919 (n + 1)

end

end A242411.P4493517117322531175

namespace A242411

/-- `A143731(n+1)*A241919(n+1)` -/
def P4493517117322531175.Spec : Prop :=
  ∀ n, P4493517117322531175.a n = A242411 (n + 1)

end A242411

/-! ## A242411.P9513100882519791398

`A241919(n+1)%A028234(n+1)`
-/

namespace A242411.P9513100882519791398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A241919 (n + 1)) (A028234 (n + 1))

end

end A242411.P9513100882519791398

namespace A242411

/-- `A241919(n+1)%A028234(n+1)` -/
def P9513100882519791398.Spec : Prop :=
  ∀ n, P9513100882519791398.a n = A242411 (n + 1)

end A242411

/-! ## A242411.P2219814201436918303

`lcm(A079872(n+1), A241919(n+1))`
-/

namespace A242411.P2219814201436918303
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A079872 (n + 1)) (A241919 (n + 1))

end

end A242411.P2219814201436918303

namespace A242411

/-- `lcm(A079872(n+1), A241919(n+1))` -/
def P2219814201436918303.Spec : Prop :=
  ∀ n, (P2219814201436918303.a n : ℤ) = A242411 (n + 1)

end A242411

/-! ## A242411.P11057963526623398044

`A243055(n+1)-A243055(A051119(n+1))`
-/

namespace A242411.P11057963526623398044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243055 (n + 1) - A243055 (A051119 (n + 1)).toNat

end

end A242411.P11057963526623398044

namespace A242411

/-- `A243055(n+1)-A243055(A051119(n+1))` -/
def P11057963526623398044.Spec : Prop :=
  ∀ n, P11057963526623398044.a n = A242411 (n + 1)

end A242411

/-! ## A242411.P7418659455530774363

`A241919(n+1)*A322452(A088835(n+1))`
-/

namespace A242411.P7418659455530774363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241919 (n + 1) * A322452 (A088835 (n + 1)).toNat

end

end A242411.P7418659455530774363

namespace A242411

/-- `A241919(n+1)*A322452(A088835(n+1))` -/
def P7418659455530774363.Spec : Prop :=
  ∀ n, P7418659455530774363.a n = A242411 (n + 1)

end A242411

/-! ## A242411.P9597867194508934189

`A243055((n+1)/A051119(A051119(n+1)))`
-/

namespace A242411.P9597867194508934189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243055 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A051119 (A051119 (n + 1)).toNat : ℚ))).toNat

end

end A242411.P9597867194508934189

namespace A242411

/-- `A243055((n+1)/A051119(A051119(n+1)))` -/
def P9597867194508934189.Spec : Prop :=
  ∀ n, P9597867194508934189.a n = A242411 (n + 1)

end A242411

/-! ## A242411.P10167080500053774751

`A297173((n+1)/A051119(A051119(n+1)))`
-/

namespace A242411.P10167080500053774751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297173 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A051119 (A051119 (n + 1)).toNat : ℚ))).toNat

end

end A242411.P10167080500053774751

namespace A242411

/-- `A297173((n+1)/A051119(A051119(n+1)))` -/
def P10167080500053774751.Spec : Prop :=
  ∀ n, P10167080500053774751.a n = A242411 (n + 1)

end A242411

/-! ## A242411.P9988698981384546124

`A241917(A007947(n+1))%A028234(n+1)`
-/

namespace A242411.P9988698981384546124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A241917 (A007947 (n + 1)).toNat) (A028234 (n + 1))

end

end A242411.P9988698981384546124

namespace A242411

/-- `A241917(A007947(n+1))%A028234(n+1)` -/
def P9988698981384546124.Spec : Prop :=
  ∀ n, P9988698981384546124.a n = A242411 (n + 1)

end A242411

/-! ## A242411.P13392753819274227802

`A241919(∏{p}[A304404(n+1), #])`
-/

namespace A242411.P13392753819274227802
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304404 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241919 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A242411.P13392753819274227802

namespace A242411

/-- `A241919(∏{p}[A304404(n+1), #])` -/
def P13392753819274227802.Spec : Prop :=
  ∀ n, P13392753819274227802.a n = A242411 (n + 1)

end A242411

/-! ## A242411.P9755730473708462802

`A055396(A243057(n+1)/A006530(n+1))`
-/

namespace A242411.P9755730473708462802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (SequenceMachineLib.roundAway ((A243057 (n + 1) : ℚ) / (A006530 (n + 1) : ℚ))).toNat

end

end A242411.P9755730473708462802

namespace A242411

/-- `A055396(A243057(n+1)/A006530(n+1))` -/
def P9755730473708462802.Spec : Prop :=
  ∀ n, P9755730473708462802.a n = A242411 (n + 1)

end A242411

/-! ## A242411.P2922527214325630277

`A241919(A166142(n+1))`
-/

namespace A242411.P2922527214325630277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241919 (A166142 (n + 1)).toNat

end

end A242411.P2922527214325630277

namespace A242411

/-- `A241919(A166142(n+1))` -/
def P2922527214325630277.Spec : Prop :=
  ∀ n, P2922527214325630277.a n = A242411 (n + 1)

end A242411

/-! ## A242411.P1065082058323737018

`A241919(A304404(n+1))`
-/

namespace A242411.P1065082058323737018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241919 (A304404 (n + 1)).toNat

end

end A242411.P1065082058323737018

namespace A242411

/-- `A241919(A304404(n+1))` -/
def P1065082058323737018.Spec : Prop :=
  ∀ n, P1065082058323737018.a n = A242411 (n + 1)

end A242411

/-!
# A242412: a(n) = (2*n-1)^2 + 14.

The programs for A242412, the canonical program `A242412.P6089961274454358066` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A242412 has offset 1).

The definition of A242412 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(2*(n+1)-1)²+14` (program `A242412.P6089961274454358066`, by `A242412.P6089961274454358066.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A242412.P6089961274454358066

`(2*(n+1)-1)²+14`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A242412

/-- `(2*(n+1)-1)²+14` -/
def P6089961274454358066.Spec : Prop :=
  ∀ n, P6089961274454358066.a n = A242412 (n + 1)

theorem P6089961274454358066.correct : P6089961274454358066.Spec := by
  intro n
  simp only [A242412, Nat.add_sub_cancel]

end A242412

/-! ## A242412.P5273548945639028384

`∑[a(n-1)+8]` with `a(0)=15, a(1)=8`
-/

namespace A242412.P5273548945639028384
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [15, 8] fun n f1 =>
  f1 (n - 1) + 8

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A242412.P5273548945639028384

namespace A242412

/-- `∑[a(n-1)+8]` -/
def P5273548945639028384.Spec : Prop :=
  ∀ n, (P5273548945639028384.a n : ℤ) = A242412 (n + 1)

end A242412

/-! ## A242412.P3905950417650101041

`or(4, (2*n+1)²+10)`
-/

namespace A242412.P3905950417650101041
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 4 ((2 * n + 1) ^ 2 + 10)

end

end A242412.P3905950417650101041

namespace A242412

/-- `or(4, (2*n+1)²+10)` -/
def P3905950417650101041.Spec : Prop :=
  ∀ n, (P3905950417650101041.a n : ℤ) = A242412 (n + 1)

end A242412

/-! ## A242412.P490832150964413145

`xor(4, (2*n+1)²+10)`
-/

namespace A242412.P490832150964413145
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 4 ((2 * n + 1) ^ 2 + 10)

end

end A242412.P490832150964413145

namespace A242412

/-- `xor(4, (2*n+1)²+10)` -/
def P490832150964413145.Spec : Prop :=
  ∀ n, (P490832150964413145.a n : ℤ) = A242412 (n + 1)

end A242412

/-! ## A242412.P11768378963643823741

`floor(a(n-1)+8*n)` with `a(0)=15`

`floor` is left out, it is the identity on integers.
-/

namespace A242412.P11768378963643823741
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [15] fun n a =>
  a (n - 1) + 8 * n

end

end A242412.P11768378963643823741

namespace A242412

/-- `floor(a(n-1)+8*n)` -/
def P11768378963643823741.Spec : Prop :=
  ∀ n, (P11768378963643823741.a n : ℤ) = A242412 (n + 1)

theorem P11768378963643823741.correct : P11768378963643823741.Spec := by
  intro n
  induction n with
  | zero => simp [A242412, A242412.P11768378963643823741.a, A242412.P6089961274454358066.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
  | succ m ih =>
    simp only [A242412, Nat.add_sub_cancel, A242412.P11768378963643823741.a, A242412.P6089961274454358066.a, SequenceMachineLib.memo_apply] at ih ⊢
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    try simp only [Nat.add_sub_cancel, Nat.lt_add_one, ↓reduceIte]
    try push_cast at ih ⊢
    try linarith

end A242412

/-! ## A242412.P14624924293165022426

`abs(Δ[C(2*n+1, 3)]+14)`
-/

namespace A242412.P14624924293165022426
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (2 * n + 1) 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(f1 (n + 1) : ℤ) - (f1 n : ℤ) + 14|

end

end A242412.P14624924293165022426

namespace A242412

/-- `abs(Δ[C(2*n+1, 3)]+14)` -/
def P14624924293165022426.Spec : Prop :=
  ∀ n, P14624924293165022426.a n = A242412 (n + 1)

end A242412

/-! ## A242412.P12657049239971102320

`abs(4-A259054(n+1))`
-/

namespace A242412.P12657049239971102320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |4 - A259054 (n + 1)|

end

end A242412.P12657049239971102320

namespace A242412

/-- `abs(4-A259054(n+1))` -/
def P12657049239971102320.Spec : Prop :=
  ∀ n, P12657049239971102320.a n = A242412 (n + 1)

end A242412

/-! ## A242412.P13635587154890747255

`A061550(n)%A173960(n+1)`
-/

namespace A242412.P13635587154890747255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A061550 n) (A173960 (n + 1))

end

end A242412.P13635587154890747255

namespace A242412

/-- `A061550(n)%A173960(n+1)` -/
def P13635587154890747255.Spec : Prop :=
  ∀ n, P13635587154890747255.a n = A242412 (n + 1)

end A242412

/-! ## A242412.P16658393977724548517

`A114962(Δ[n²])`
-/

namespace A242412.P16658393977724548517
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114962 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A242412.P16658393977724548517

namespace A242412

/-- `A114962(Δ[n²])` -/
def P16658393977724548517.Spec : Prop :=
  ∀ n, P16658393977724548517.a n = A242412 (n + 1)

end A242412

/-! ## A242412.P12311668401888652550

`Δ[A017533(n+1)+A004006(2*n)]`
-/

namespace A242412.P12311668401888652550
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017533 (n + 1) + A004006 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A242412.P12311668401888652550

namespace A242412

/-- `Δ[A017533(n+1)+A004006(2*n)]` -/
def P12311668401888652550.Spec : Prop :=
  ∀ n, P12311668401888652550.a n = A242412 (n + 1)

theorem P12311668401888652550.correct : P12311668401888652550.Spec := by
  intro n
  simp only [A242412, Nat.add_sub_cancel, A242412.P12311668401888652550.f1, A242412.P12311668401888652550.a, A242412.P6089961274454358066.a, A004006, A004006.P3732720668660365450.a, A017533, A017533.P146508076441825746.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A242412

/-! ## A242412.P3869031004725245772

`Δ[A017545(n+1)+A004006(2*n)]`
-/

namespace A242412.P3869031004725245772
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017545 (n + 1) + A004006 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A242412.P3869031004725245772

namespace A242412

/-- `Δ[A017545(n+1)+A004006(2*n)]` -/
def P3869031004725245772.Spec : Prop :=
  ∀ n, P3869031004725245772.a n = A242412 (n + 1)

theorem P3869031004725245772.correct : P3869031004725245772.Spec := by
  intro n
  simp only [A242412, Nat.add_sub_cancel, A242412.P3869031004725245772.f1, A242412.P3869031004725245772.a, A242412.P6089961274454358066.a, A004006, A004006.P3732720668660365450.a, A017545, A017545.P14965093399951293214.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A242412

/-! ## A242412.P6018006103331903401

`A000027(Δ[n²]²+14)`
-/

namespace A242412.P6018006103331903401
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (((f1 (n + 1) : ℤ) - (f1 n : ℤ)) ^ 2 + 14).toNat

end

end A242412.P6018006103331903401

namespace A242412

/-- `A000027(Δ[n²]²+14)` -/
def P6018006103331903401.Spec : Prop :=
  ∀ n, P6018006103331903401.a n = A242412 (n + 1)

end A242412

/-! ## A242412.P8039910111614671328

`∩[2*n+1, A114962(n)]`
-/

namespace A242412.P8039910111614671328
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114962 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A242412.P8039910111614671328

namespace A242412

/-- `∩[2*n+1, A114962(n)]` -/
def P8039910111614671328.Spec : Prop :=
  ∀ n, (P8039910111614671328.a n : ℤ) = A242412 (n + 1)

end A242412

/-! ## A242412.P9940703399039139730

`A004771(∑[n]+1)`
-/

namespace A242412.P9940703399039139730
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004771 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A242412.P9940703399039139730

namespace A242412

/-- `A004771(∑[n]+1)` -/
def P9940703399039139730.Spec : Prop :=
  ∀ n, P9940703399039139730.a n = A242412 (n + 1)

end A242412

/-! ## A242412.P4698357887351007160

`A133655(∑[n]+2)`
-/

namespace A242412.P4698357887351007160
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133655 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A242412.P4698357887351007160

namespace A242412

/-- `A133655(∑[n]+2)` -/
def P4698357887351007160.Spec : Prop :=
  ∀ n, P4698357887351007160.a n = A242412 (n + 1)

end A242412

/-! ## A242412.P8976915711844229588

`∩[A114962(n), A133655(n)]`
-/

namespace A242412.P8976915711844229588
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114962 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133655 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A242412.P8976915711844229588

namespace A242412

/-- `∩[A114962(n), A133655(n)]` -/
def P8976915711844229588.Spec : Prop :=
  ∀ n, (P8976915711844229588.a n : ℤ) = A242412 (n + 1)

end A242412

/-! ## A242412.P6138855548983458469

`abs(4*A004277(A000217(n)+2)-1)`
-/

namespace A242412.P6138855548983458469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |4 * A004277 (A000217 n + 2).toNat - 1|

end

end A242412.P6138855548983458469

namespace A242412

/-- `abs(4*A004277(A000217(n)+2)-1)` -/
def P6138855548983458469.Spec : Prop :=
  ∀ n, P6138855548983458469.a n = A242412 (n + 1)

end A242412

/-! ## A242412.P5810529383572474006

`filter[A114962(n), A035263(#)]`
-/

namespace A242412.P5810529383572474006
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114962 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A035263 (f1 j).toNat = 1) n)

end

end A242412.P5810529383572474006

namespace A242412

/-- `filter[A114962(n), A035263(#)]` -/
def P5810529383572474006.Spec : Prop :=
  ∀ n, P5810529383572474006.a n = A242412 (n + 1)

end A242412

/-! ## A242412.P5935179242322325441

`filter[A114962(n), A152822(#)]`
-/

namespace A242412.P5935179242322325441
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114962 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A152822 (f1 j).toNat = 1) n)

end

end A242412.P5935179242322325441

namespace A242412

/-- `filter[A114962(n), A152822(#)]` -/
def P5935179242322325441.Spec : Prop :=
  ∀ n, P5935179242322325441.a n = A242412 (n + 1)

end A242412

/-!
# A242413: Numbers in whose prime factorization the first differences of indices of distinct primes form a palindrome; fixed points of A242415.

The programs for A242413, there is no canonical definition to state claims against.
-/

/-! ## A242413.P9558016242995241553

`eq[n+1, A242415(n+1)]+1`
-/

namespace A242413.P9558016242995241553
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242415 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A242413.P9558016242995241553

/-! ## A242413.P4969245723999786060

`record[gcd(A242415(n+1), A253560(n+1))]`
-/

namespace A242413.P4969245723999786060
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A242415 (n + 1)) (A253560 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A242413.P4969245723999786060

/-! ## A242413.P3472056058641521514

`eq[A069799(n+1), A242419(n+1)]+1`
-/

namespace A242413.P3472056058641521514
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069799 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242419 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A242413.P3472056058641521514

/-! ## A242413.P11028373853710577663

`A242415(record[(A242415(n+1)+n)%(n+1)]+1)`
-/

namespace A242413.P11028373853710577663
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A242415 (n + 1) + (n : ℤ)) (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242415 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 1).toNat

end

end A242413.P11028373853710577663

/-! ## A242413.P2793286089055659240

`A242415(record[n-xor(n+1, A242415(n+1))]+1)`
-/

namespace A242413.P2793286089055659240
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - Int.xor (n + 1 : ℤ) (A242415 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242415 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 1).toNat

end

end A242413.P2793286089055659240

/-!
# A242414: 

The programs for A242414, there is no canonical definition to state claims against.
-/

/-! ## A242414.P5137120479861196781

`comp[A242416(n+1)-1]+1`
-/

namespace A242414.P5137120479861196781
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242416 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A242414.P5137120479861196781

/-! ## A242414.P16254252998054163520

`eq[n, A069799(abs(1-n)+1)]`
-/

namespace A242414.P16254252998054163520
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069799 (|1 - (n : ℤ)| + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A242414.P16254252998054163520

/-! ## A242414.P11139755242008331806

`record[gcd(n+1, A069799(n+1))]`
-/

namespace A242414.P11139755242008331806
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A069799 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A242414.P11139755242008331806

/-! ## A242414.P15476722710754488027

`eq[A000027(n+1), A069799(n+1)]+1`
-/

namespace A242414.P15476722710754488027
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069799 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A242414.P15476722710754488027

/-! ## A242414.P5553380509449353782

`eq[A008619(2*n), A069799(n+1)]+1`
-/

namespace A242414.P5553380509449353782
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069799 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A242414.P5553380509449353782

/-! ## A242414.P2124488619405330790

`and(A085924(n), A375155(n+1))`
-/

namespace A242414.P2124488619405330790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A085924 n) (A375155 (n + 1))

end

end A242414.P2124488619405330790

/-! ## A242414.P11582052397889919680

`A085924(n)%A004733(n)`
-/

namespace A242414.P11582052397889919680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A085924 n) (A004733 n)

end

end A242414.P11582052397889919680

/-! ## A242414.P18324152397944651727

`and(A003261(n+1), A085924(n))`
-/

namespace A242414.P18324152397944651727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A003261 (n + 1)) (A085924 n)

end

end A242414.P18324152397944651727

/-! ## A242414.P16169104548834016144

`and(A085924(n), A163383(n+1))`
-/

namespace A242414.P16169104548834016144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A085924 n) (A163383 (n + 1))

end

end A242414.P16169104548834016144

/-! ## A242414.P18389001529294267159

`A085924(and(n, A055580(n)))`
-/

namespace A242414.P18389001529294267159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085924 (Int.land (n : ℤ) (A055580 n)).toNat

end

end A242414.P18389001529294267159

/-! ## A242414.P13242292134462481865

`A085924(and(n, A107392(n)))`
-/

namespace A242414.P13242292134462481865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085924 (Int.land (n : ℤ) (A107392 n)).toNat

end

end A242414.P13242292134462481865

/-! ## A242414.P1197237327931862390

`A085924(and(n, A107464(n)))`
-/

namespace A242414.P1197237327931862390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085924 (Int.land (n : ℤ) (A107464 n)).toNat

end

end A242414.P1197237327931862390

/-! ## A242414.P8672876205459620621

`A085924(and(n, A107953(n)))`
-/

namespace A242414.P8672876205459620621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085924 (Int.land (n : ℤ) (A107953 n)).toNat

end

end A242414.P8672876205459620621

/-! ## A242414.P7912140357294513491

`A085924(and(n, A211386(n)))`
-/

namespace A242414.P7912140357294513491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085924 (Int.land (n : ℤ) (A211386 n)).toNat

end

end A242414.P7912140357294513491

/-! ## A242414.P12497943726015062315

`A085924(and(n, A107954(n)))`
-/

namespace A242414.P12497943726015062315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085924 (Int.land (n : ℤ) (A107954 n)).toNat

end

end A242414.P12497943726015062315

/-! ## A242414.P7873528281267077671

`A085924(and(n, A107955(n)))`
-/

namespace A242414.P7873528281267077671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085924 (Int.land (n : ℤ) (A107955 n)).toNat

end

end A242414.P7873528281267077671

/-! ## A242414.P2171903557468015538

`and(A018886(n+1), A085924(n))`
-/

namespace A242414.P2171903557468015538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A018886 (n + 1)) (A085924 n)

end

end A242414.P2171903557468015538

/-! ## A242414.P13438162669796926679

`and(A085924(n), A164291(n+2))`
-/

namespace A242414.P13438162669796926679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A085924 n) (A164291 (n + 2))

end

end A242414.P13438162669796926679

/-! ## A242414.P11077298464756085549

`and(A060160(n+1), A085924(n))`
-/

namespace A242414.P11077298464756085549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A060160 (n + 1)) (A085924 n)

end

end A242414.P11077298464756085549

/-! ## A242414.P11083635738427525025

`A085924(and(n, A103454(n)))`
-/

namespace A242414.P11083635738427525025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085924 (Int.land (n : ℤ) (A103454 n)).toNat

end

end A242414.P11083635738427525025

/-!
# A242415: Reverse the deltas of indices of distinct primes in the prime factorization of n.

The programs for A242415, there is no canonical definition to state claims against.
-/

/-! ## A242415.P5692652134466550255

`A242419(A069799(n+1))`
-/

namespace A242415.P5692652134466550255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242419 (A069799 (n + 1)).toNat

end

end A242415.P5692652134466550255

/-! ## A242415.P14063529962248080722

`A242419(A225891(n+1)+val(A109494(n), 2*(n+1)))`
-/

namespace A242415.P14063529962248080722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242419 (A225891 (n + 1) + (SequenceMachineLib.valuation (A109494 n).toNat (2 * (n + 1)) : ℤ)).toNat

end

end A242415.P14063529962248080722

/-! ## A242415.P2437009543227376450

`A242419(A225891(n+1))%A345721(A167487(n))`
-/

namespace A242415.P2437009543227376450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A242419 (A225891 (n + 1)).toNat) (A345721 (A167487 n).toNat)

end

end A242415.P2437009543227376450

/-! ## A242415.P12401501986307213826

`A054977(A055013(n)+1)*A105119(A242419(n+1))`
-/

namespace A242415.P12401501986307213826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 (A055013 n + 1).toNat * A105119 (A242419 (n + 1)).toNat

end

end A242415.P12401501986307213826

/-! ## A242415.P17398936175997914770

`A242419(A242420(A242419(n+1)))`
-/

namespace A242415.P17398936175997914770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242419 (A242420 (A242419 (n + 1)).toNat).toNat

end

end A242415.P17398936175997914770

/-! ## A242415.P14016066057028749657

`A105119(A242419(n+1))%A135384(2*n+1)`
-/

namespace A242415.P14016066057028749657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A105119 (A242419 (n + 1)).toNat) (A135384 (2 * n + 1))

end

end A242415.P14016066057028749657

/-! ## A242415.P17141588265439004928

`A242419(A225891(n+1))^A008835(or(1, n+1))`
-/

namespace A242415.P17141588265439004928
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A242419 (A225891 (n + 1)).toNat : ℚ) ^ (A008835 (Nat.lor 1 (n + 1)) : ℤ)

end

end A242415.P17141588265439004928

/-!
# A242416: Numbers whose prime factorization viewed as a tuple of nonzero powers is not palindromic.

The programs for A242416, there is no canonical definition to state claims against.
-/

/-! ## A242416.P17803975470008298186

`lt[2, (A069799(n+1)-(n+1))²]+1`
-/

namespace A242416.P17803975470008298186
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A069799 (n + 1) - (n + 1 : ℤ)) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A242416.P17803975470008298186

/-! ## A242416.P7709988476343836411

`A360246(A277112(n+1))`
-/

namespace A242416.P7709988476343836411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360246 (A277112 (n + 1)).toNat

end

end A242416.P7709988476343836411

/-! ## A242416.P2176660482280180122

`A360246(comp[A056809(n+1)]+1)`
-/

namespace A242416.P2176660482280180122
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056809 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360246 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1)

end

end A242416.P2176660482280180122

/-! ## A242416.P13538760283432559246

`A360246(comp[A053156(n+4)]+1)`
-/

namespace A242416.P13538760283432559246
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053156 (n + 4)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360246 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1)

end

end A242416.P13538760283432559246

/-! ## A242416.P18334923171700327889

`A360246(comp[A145101(n+3)*A171016(n+1)])`
-/

namespace A242416.P18334923171700327889
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145101 (n + 3) * A171016 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360246 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A242416.P18334923171700327889

/-! ## A242416.P4733918567344627832

`A360246(comp[A334533(3*n+1)%A001835(n)])`
-/

namespace A242416.P4733918567344627832
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A334533 (3 * n + 1)) (A001835 n)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360246 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A242416.P4733918567344627832

/-! ## A242416.P2324085672764830835

`A360246(comp[A244082(n+2)%A281434(n+4)])`
-/

namespace A242416.P2324085672764830835
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A244082 (n + 2)) (A281434 (n + 4))

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360246 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A242416.P2324085672764830835

/-!
# A242417: Numbers in whose prime factorization both the first differences of indices of distinct primes and their exponents form a palindrome; fixed points of A242419.

The programs for A242417, there is no canonical definition to state claims against.
-/

/-! ## A242417.P127493428832336298

`record[gcd(n+1, A242419(n+1))]`
-/

namespace A242417.P127493428832336298
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A242419 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A242417.P127493428832336298

/-! ## A242417.P2751413904426865179

`eq[n, A242419(A028310(n))]`
-/

namespace A242417.P2751413904426865179
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242419 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A242417.P2751413904426865179

/-! ## A242417.P2164933873734039751

`eq[2, A000045(a(A242419(n)%n))]` with `a(0)=3`
-/

namespace A242417.P2164933873734039751
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.rec [3] fun n f2 =>
  A000045 (f2 (Int.tmod (A242419 n) (n : ℤ)).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A242417.P2164933873734039751

/-! ## A242417.P12920022190385503722

`A000027(eq[n+1, A242419(n+1)]+1)`
-/

namespace A242417.P12920022190385503722
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242419 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A242417.P12920022190385503722

/-! ## A242417.P397249373633808874

`A242419(eq[n+1, A242419(n+1)]+1)`
-/

namespace A242417.P397249373633808874
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242419 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242419 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A242417.P397249373633808874

/-! ## A242417.P15978247144083918519

`A242419(record[n/(A242419(n+1)-n)]+1)`
-/

namespace A242417.P15978247144083918519
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (A242419 (n + 1) - (n : ℤ) : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242419 (SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 1)).toNat

end

end A242417.P15978247144083918519

/-! ## A242417.P10962693887300635341

`A242419(record[(A242419(n+1)-1)%(n+1)]+1)`
-/

namespace A242417.P10962693887300635341
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A242419 (n + 1) - 1) (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242419 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 1).toNat

end

end A242417.P10962693887300635341

/-! ## A242417.P11364826220122764185

`eq[A122111(n+1), A153212(n+1)]+1`
-/

namespace A242417.P11364826220122764185
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122111 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153212 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A242417.P11364826220122764185

/-! ## A242417.P11216374673808409308

`∩[A242413(n+1), A360247(n+1)]`
-/

namespace A242417.P11216374673808409308
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242413 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360247 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A242417.P11216374673808409308

/-!
# A242418: Numbers n in whose prime factorization, n = 2^e_1 * 3^e_2 * 5^e_3 * ... * p_k^e_k, the exponents (with only e_1 and e_k required to be nonzero) of prime factors from 2 to p_k form a palindrome, so that e_1 = e_k, e_2 = e_{k-1}, etc.

The programs for A242418, there is no canonical definition to state claims against.
-/

/-! ## A242418.P8025834625115387975

`record[gcd(n+1, A137502(n+1))]`
-/

namespace A242418.P8025834625115387975
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A137502 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A242418.P8025834625115387975

/-! ## A242418.P14878841843332202604

`eq[n, A137502(A004277(n)-n)]`
-/

namespace A242418.P14878841843332202604
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137502 (A004277 n - (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A242418.P14878841843332202604

/-! ## A242418.P17502287698385246535

`A015906(eq[n+1, A137502(n+1)])`
-/

namespace A242418.P17502287698385246535
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137502 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015906 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A242418.P17502287698385246535

/-! ## A242418.P11828587385074010553

`A137502(eq[n+1, A137502(n+1)]+1)`
-/

namespace A242418.P11828587385074010553
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137502 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137502 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A242418.P11828587385074010553

/-! ## A242418.P14072280670294477009

`record[gcd(A007310(n+1)-n, A293448(n+1))]`
-/

namespace A242418.P14072280670294477009
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A007310 (n + 1) - (n : ℤ)) (A293448 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A242418.P14072280670294477009

/-! ## A242418.P836545482313559551

`eq[A026741(n), A241916(A065033(n))]`
-/

namespace A242418.P836545482313559551
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241916 (A065033 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A242418.P836545482313559551

/-! ## A242418.P11703314469615978296

`eq[A026741(n), A241916(A101279(n+1))]`
-/

namespace A242418.P11703314469615978296
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241916 (A101279 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A242418.P11703314469615978296

/-! ## A242418.P361204561617316995

`eq[n, A137502(A008619(A004273(n)))]`
-/

namespace A242418.P361204561617316995
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137502 (A008619 (A004273 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A242418.P361204561617316995

/-!
# A242419: Reverse both the exponents and the deltas of the indices of distinct primes present in the prime factorization of n.

The programs for A242419, there is no canonical definition to state claims against.
-/

/-! ## A242419.P14178459413517231136

`A242415(A069799(n+1))`
-/

namespace A242419.P14178459413517231136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242415 (A069799 (n + 1)).toNat

end

end A242419.P14178459413517231136

/-! ## A242419.P18203788880090107898

`A105119(A242420(n+1))`
-/

namespace A242419.P18203788880090107898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105119 (A242420 (n + 1)).toNat

end

end A242419.P18203788880090107898

/-! ## A242419.P1869340959233158095

`A153212(A122111(n+1))`
-/

namespace A242419.P1869340959233158095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153212 (A122111 (n + 1)).toNat

end

end A242419.P1869340959233158095

/-! ## A242419.P4445575565672845384

`A242420(A225891(n+1))`
-/

namespace A242419.P4445575565672845384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242420 (A225891 (n + 1)).toNat

end

end A242419.P4445575565672845384

/-! ## A242419.P4614952391572886806

`A105119(lcm(A053585(n+1), A243057(n+1)))`
-/

namespace A242419.P4614952391572886806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105119 (Int.lcm (A053585 (n + 1)) (A243057 (n + 1)))

end

end A242419.P4614952391572886806

/-! ## A242419.P4246483308110023099

`A242415(A225891(n+1))+A000007(A109494(n))`
-/

namespace A242419.P4246483308110023099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242415 (A225891 (n + 1)).toNat + A000007 (A109494 n).toNat

end

end A242419.P4246483308110023099

/-! ## A242419.P13233603947635769368

`A242415(A225891(n+1))%A007504(A272211(n+1))`
-/

namespace A242419.P13233603947635769368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A242415 (A225891 (n + 1)).toNat) (A007504 (A272211 (n + 1)).toNat)

end

end A242419.P13233603947635769368

/-! ## A242419.P15350231967398881030

`A242420(A069799(n+1))%A000096(A124207(n+1))`
-/

namespace A242419.P15350231967398881030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A242420 (A069799 (n + 1)).toNat) (A000096 (A124207 (n + 1)).toNat)

end

end A242419.P15350231967398881030

/-! ## A242419.P6585324205695322446

`A242420(or(A069799(n+1), A151934(n)))`
-/

namespace A242419.P6585324205695322446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242420 (Int.lor (A069799 (n + 1)) (A151934 n)).toNat

end

end A242419.P6585324205695322446

/-!
# A242420: Self-inverse permutation of positive integers: a(n) = (A006530(n)^(A071178(n)-1)) * A243057(n).

The programs for A242420, there is no canonical definition to state claims against.
-/

/-! ## A242420.P13547099295773392479

`A006530(n+1)^(A071178(n+1)-1)*A243057(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A242420.P13547099295773392479
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006530 (n + 1) : ℚ) ^ (A071178 (n + 1) - 1 : ℤ) * (A243057 (n + 1) : ℚ)

end

end A242420.P13547099295773392479

/-! ## A242420.P16278365308666720249

`A242419(A105119(n+1))`
-/

namespace A242420.P16278365308666720249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242419 (A105119 (n + 1)).toNat

end

end A242420.P16278365308666720249

/-! ## A242420.P14742411762959480518

`A225891(A242419(n+1))`
-/

namespace A242420.P14742411762959480518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225891 (A242419 (n + 1)).toNat

end

end A242420.P14742411762959480518

/-! ## A242420.P1083730617238986564

`lcm(A053585(n+1), A243057(n+1))`
-/

namespace A242420.P1083730617238986564
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A053585 (n + 1)) (A243057 (n + 1))

end

end A242420.P1083730617238986564

/-! ## A242420.P5144462396917799064

`(n+1)*A243057(n+1)/A243074(n+1)`
-/

namespace A242420.P5144462396917799064
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) * ((A243057 (n + 1) : ℚ) / (A243074 (n + 1) : ℚ))

end

end A242420.P5144462396917799064

/-! ## A242420.P3618385644230129062

`A052126(n+1)/A051119(n+1)*A243057(n+1)`
-/

namespace A242420.P3618385644230129062
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052126 (n + 1) : ℚ) / (A051119 (n + 1) : ℚ) * (A243057 (n + 1) : ℚ)

end

end A242420.P3618385644230129062

/-! ## A242420.P539767640557605597

`gcd(A052126(n+1), A053585(n+1))*A243057(n+1)`
-/

namespace A242420.P539767640557605597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd (A052126 (n + 1)) (A053585 (n + 1)) : ℤ) * A243057 (n + 1)

end

end A242420.P539767640557605597

/-! ## A242420.P8815354289836120699

`A052126(A053585(n+1))*A243057(A000027(n+1))`
-/

namespace A242420.P8815354289836120699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052126 (A053585 (n + 1)).toNat * A243057 (A000027 (n + 1)).toNat

end

end A242420.P8815354289836120699

/-! ## A242420.P920364460250239101

`A052126(A053585(n+1))*A243057(A243074(n+1))`
-/

namespace A242420.P920364460250239101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052126 (A053585 (n + 1)).toNat * A243057 (A243074 (n + 1)).toNat

end

end A242420.P920364460250239101

/-! ## A242420.P15386331086542622375

`A053585(n+1)*A064989(A137502(n+1))`
-/

namespace A242420.P15386331086542622375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053585 (n + 1) * A064989 (A137502 (n + 1)).toNat

end

end A242420.P15386331086542622375

/-! ## A242420.P10487702114929805721

`A000027(n+1)*A243057(n+1)/A243057(A243057(n+1))`
-/

namespace A242420.P10487702114929805721
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000027 (n + 1) * A243057 (n + 1) : ℚ) / (A243057 (A243057 (n + 1)).toNat : ℚ)

end

end A242420.P10487702114929805721

/-!
# A242421: Fixed points of A153212: After a(1) = 1, numbers of the form p_i1^i1 * p_i2^(i2-i1) * p_i3^(i3-i2) * ... * p_ik^(ik-i_{k-1}), where p_i's are distinct primes present in the prime factorization of n, with i1 < i2 < i3 < ... < ik, and k = A001221(n) and ik = A061395(n).

The programs for A242421, there is no canonical definition to state claims against.
-/

/-! ## A242421.P4925550353443897125

`record[gcd(n+1, A153212(n+1))]`
-/

namespace A242421.P4925550353443897125
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A153212 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A242421.P4925550353443897125

/-! ## A242421.P3222082477796697856

`eq[n, A153212(round(sqrt(n²+1)))]`
-/

namespace A242421.P3222082477796697856
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153212 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A242421.P3222082477796697856

/-! ## A242421.P7199274163200158830

`eq[A000027(n+1), A153212(n+1)]+1`
-/

namespace A242421.P7199274163200158830
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153212 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A242421.P7199274163200158830

/-! ## A242421.P17513088020402030469

`A153212(eq[n+1, A153212(n+1)]+1)`
-/

namespace A242421.P17513088020402030469
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153212 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153212 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A242421.P17513088020402030469

/-! ## A242421.P1012812009584496023

`eq[A122111(n+1), A242419(n+1)]+1`
-/

namespace A242421.P1012812009584496023
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122111 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242419 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A242421.P1012812009584496023

/-!
# A242422: Numbers in whose prime factorization the indices of primes sum to a triangular number.

The programs for A242422, there is no canonical definition to state claims against.
-/

/-! ## A242422.P4657473272456751597

`record[(n+1)/A277227(A316436(2*(n+1)))]`
-/

namespace A242422.P4657473272456751597
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A277227 (A316436 (2 * (n + 1))).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A242422.P4657473272456751597

/-! ## A242422.P10387757445637343668

`eq[0, A002262(A056239(n+1))]+1`
-/

namespace A242422.P10387757445637343668
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 (A056239 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A242422.P10387757445637343668

/-! ## A242422.P6189568734816982815

`eq[1, A002260(A056239(n+1)+1)]+1`
-/

namespace A242422.P6189568734816982815
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (A056239 (n + 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A242422.P6189568734816982815

/-! ## A242422.P8795012252640402834

`eq[1, A201811(A056239(n+1)+1)]+1`
-/

namespace A242422.P8795012252640402834
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201811 (A056239 (n + 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A242422.P8795012252640402834

/-! ## A242422.P6926571673622369209

`record[(n+1)/A129116(A056239(n+1)+1)]`
-/

namespace A242422.P6926571673622369209
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A129116 (A056239 (n + 1) + 1).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A242422.P6926571673622369209

/-! ## A242422.P9152406875134073002

`record[(n+1)/A208331(A056239(n+1)+1)]`
-/

namespace A242422.P9152406875134073002
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A208331 (A056239 (n + 1) + 1).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A242422.P9152406875134073002

/-! ## A242422.P9924099812670505645

`record[A000027(n+1)/A210489(A056239(n+1))]`
-/

namespace A242422.P9924099812670505645
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000027 (n + 1) : ℚ) / (A210489 (A056239 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A242422.P9924099812670505645

/-!
# A242423: Numbers in whose prime factorization the indices of primes do not sum to a triangular number.

The programs for A242423, the canonical program `A242423.P4715283412013862089` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A242423 has offset 1).

The definition of A242423 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8994 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A242423.P556423522115950170

`comp[A242422(n+1)-1]+1`
-/

namespace A242423.P556423522115950170
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242422 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A242423.P556423522115950170

namespace A242423

/-- `comp[A242422(n+1)-1]+1` -/
def P556423522115950170.Spec : Prop :=
  ∀ n, (P556423522115950170.a n : ℤ) = A242423 (n + 1)

end A242423

/-! ## A242423.P4715283412013862089

`eq[0, A010054(A056239(n+1))]+1`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A242423

/-- `eq[0, A010054(A056239(n+1))]+1` -/
def P4715283412013862089.Spec : Prop :=
  ∀ n, (P4715283412013862089.a n : ℤ) = A242423 (n + 1)

theorem P4715283412013862089.correct : P4715283412013862089.Spec := by
  intro n
  simp only [A242423, Nat.add_sub_cancel]

end A242423

/-! ## A242423.P135085981085538279

`eq[char[A242422(n+1)], A000007(n)]`
-/

namespace A242423.P135085981085538279
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242422 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A242423.P135085981085538279

namespace A242423

/-- `eq[char[A242422(n+1)], A000007(n)]` -/
def P135085981085538279.Spec : Prop :=
  ∀ n, (P135085981085538279.a n : ℤ) = A242423 (n + 1)

end A242423

/-! ## A242423.P4659264962052303984

`eq[char[A242422(n+1)], A000038(n)]`
-/

namespace A242423.P4659264962052303984
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242422 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A242423.P4659264962052303984

namespace A242423

/-- `eq[char[A242422(n+1)], A000038(n)]` -/
def P4659264962052303984.Spec : Prop :=
  ∀ n, (P4659264962052303984.a n : ℤ) = A242423 (n + 1)

end A242423

/-! ## A242423.P600724598559663370

`eq[char[A242422(n+1)], A130706(n)]`
-/

namespace A242423.P600724598559663370
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242422 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130706 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A242423.P600724598559663370

namespace A242423

/-- `eq[char[A242422(n+1)], A130706(n)]` -/
def P600724598559663370.Spec : Prop :=
  ∀ n, (P600724598559663370.a n : ℤ) = A242423 (n + 1)

end A242423

/-! ## A242423.P476000179118768823

`eq[char[A242422(n+1)], A010051(2*(n+1))]`
-/

namespace A242423.P476000179118768823
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242422 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A242423.P476000179118768823

namespace A242423

/-- `eq[char[A242422(n+1)], A010051(2*(n+1))]` -/
def P476000179118768823.Spec : Prop :=
  ∀ n, (P476000179118768823.a n : ℤ) = A242423 (n + 1)

end A242423

/-! ## A242423.P16814871253355747012

`eq[char[A242422(n+1)], A151933(n)]`
-/

namespace A242423.P16814871253355747012
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242422 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151933 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A242423.P16814871253355747012

namespace A242423

/-- `eq[char[A242422(n+1)], A151933(n)]` -/
def P16814871253355747012.Spec : Prop :=
  ∀ n, (P16814871253355747012.a n : ℤ) = A242423 (n + 1)

end A242423

/-!
# A242424: Bulgarian solitaire operation on partition list A112798: a(1) = 1, a(n) = A000040(A001222(n)) * A064989(n).

The programs for A242424, the canonical program `A242424.P1982955037292294461` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A242424 has offset 1).

The definition of A242424 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A064989, A105560, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A242424.P1982955037292294461

`A105560(n+1)*A064989(n+1)`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A242424

/-- `A105560(n+1)*A064989(n+1)` -/
def P1982955037292294461.Spec : Prop :=
  ∀ n, P1982955037292294461.a n = A242424 (n + 1)

theorem P1982955037292294461.correct : P1982955037292294461.Spec := by
  intro n
  simp only [A242424, Nat.add_sub_cancel]

end A242424

/-! ## A242424.P16738714210005843700

`A243353(A226062(A243354(n+1)))`
-/

namespace A242424.P16738714210005843700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243353 (A226062 (A243354 (n + 1)).toNat).toNat

end

end A242424.P16738714210005843700

namespace A242424

/-- `A243353(A226062(A243354(n+1)))` -/
def P16738714210005843700.Spec : Prop :=
  ∀ n, P16738714210005843700.a n = A242424 (n + 1)

end A242424

/-! ## A242424.P867198111202848724

`A241909(A243051(A241909(n+1)))`
-/

namespace A242424.P867198111202848724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241909 (A243051 (A241909 (n + 1)).toNat).toNat

end

end A242424.P867198111202848724

namespace A242424

/-- `A241909(A243051(A241909(n+1)))` -/
def P867198111202848724.Spec : Prop :=
  ∀ n, P867198111202848724.a n = A242424 (n + 1)

end A242424

/-! ## A242424.P8639443031809683361

`abs(A105560(n+1)*A290099(n+1))`
-/

namespace A242424.P8639443031809683361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A105560 (n + 1) * A290099 (n + 1)|

end

end A242424.P8639443031809683361

namespace A242424

/-- `abs(A105560(n+1)*A290099(n+1))` -/
def P8639443031809683361.Spec : Prop :=
  ∀ n, P8639443031809683361.a n = A242424 (n + 1)

end A242424

/-! ## A242424.P9628861635519574453

`A008578(A073093(n+1))*A064989(n+1)`
-/

namespace A242424.P9628861635519574453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A073093 (n + 1)).toNat * A064989 (n + 1)

end

end A242424.P9628861635519574453

namespace A242424

/-- `A008578(A073093(n+1))*A064989(n+1)` -/
def P9628861635519574453.Spec : Prop :=
  ∀ n, P9628861635519574453.a n = A242424 (n + 1)

end A242424

/-! ## A242424.P11929893688665425146

`A064216(A025480(n)+1)*A105560(n+1)`
-/

namespace A242424.P11929893688665425146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064216 (A025480 n + 1).toNat * A105560 (n + 1)

end

end A242424.P11929893688665425146

namespace A242424

/-- `A064216(A025480(n)+1)*A105560(n+1)` -/
def P11929893688665425146.Spec : Prop :=
  ∀ n, P11929893688665425146.a n = A242424 (n + 1)

end A242424

/-! ## A242424.P3294017593780031187

`A064989(n+1)*A243072(A061142(n+1))`
-/

namespace A242424.P3294017593780031187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064989 (n + 1) * A243072 (A061142 (n + 1)).toNat

end

end A242424.P3294017593780031187

namespace A242424

/-- `A064989(n+1)*A243072(A061142(n+1))` -/
def P3294017593780031187.Spec : Prop :=
  ∀ n, P3294017593780031187.a n = A242424 (n + 1)

end A242424

/-! ## A242424.P9441190417897124808

`abs(A008578(A073093(n+1))*A290099(n+1))`
-/

namespace A242424.P9441190417897124808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008578 (A073093 (n + 1)).toNat * A290099 (n + 1)|

end

end A242424.P9441190417897124808

namespace A242424

/-- `abs(A008578(A073093(n+1))*A290099(n+1))` -/
def P9441190417897124808.Spec : Prop :=
  ∀ n, P9441190417897124808.a n = A242424 (n + 1)

end A242424

/-! ## A242424.P4697551656448172890

`A005180(A001222(n+1)+1)*A064989(n+1)`
-/

namespace A242424.P4697551656448172890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005180 (A001222 (n + 1) + 1).toNat * A064989 (n + 1)

end

end A242424.P4697551656448172890

namespace A242424

/-- `A005180(A001222(n+1)+1)*A064989(n+1)` -/
def P4697551656448172890.Spec : Prop :=
  ∀ n, P4697551656448172890.a n = A242424 (n + 1)

end A242424

/-! ## A242424.P18301610682106262252

`A008578(A001222(n+1)+1)*A064989(n+1)`
-/

namespace A242424.P18301610682106262252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A001222 (n + 1) + 1).toNat * A064989 (n + 1)

end

end A242424.P18301610682106262252

namespace A242424

/-- `A008578(A001222(n+1)+1)*A064989(n+1)` -/
def P18301610682106262252.Spec : Prop :=
  ∀ n, P18301610682106262252.a n = A242424 (n + 1)

end A242424

/-! ## A242424.P17823068697071144748

`A064989(n+1)*A331170(2^A001222(n+1))`
-/

namespace A242424.P17823068697071144748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064989 (n + 1) * A331170 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A001222 (n + 1) : ℤ))).toNat

end

end A242424.P17823068697071144748

namespace A242424

/-- `A064989(n+1)*A331170(2^A001222(n+1))` -/
def P17823068697071144748.Spec : Prop :=
  ∀ n, P17823068697071144748.a n = A242424 (n + 1)

end A242424

/-! ## A242424.P4150540146901859312

`A105560(n+1)*A290099(n+1)*A309873(n+1)`
-/

namespace A242424.P4150540146901859312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105560 (n + 1) * A290099 (n + 1) * A309873 (n + 1)

end

end A242424.P4150540146901859312

namespace A242424

/-- `A105560(n+1)*A290099(n+1)*A309873(n+1)` -/
def P4150540146901859312.Spec : Prop :=
  ∀ n, P4150540146901859312.a n = A242424 (n + 1)

end A242424

/-! ## A242424.P12041674164498919615

`A064989(n+1)*A122111(2^A001222(n+1))`
-/

namespace A242424.P12041674164498919615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064989 (n + 1) * A122111 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A001222 (n + 1) : ℤ))).toNat

end

end A242424.P12041674164498919615

namespace A242424

/-- `A064989(n+1)*A122111(2^A001222(n+1))` -/
def P12041674164498919615.Spec : Prop :=
  ∀ n, P12041674164498919615.a n = A242424 (n + 1)

end A242424

/-! ## A242424.P10975678694424613417

`A064989(n+1)/A122111(A064989(n+1))*A122111(n+1)`
-/

namespace A242424.P10975678694424613417
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A064989 (n + 1) : ℚ) / (A122111 (A064989 (n + 1)).toNat : ℚ) * (A122111 (n + 1) : ℚ)

end

end A242424.P10975678694424613417

namespace A242424

/-- `A064989(n+1)/A122111(A064989(n+1))*A122111(n+1)` -/
def P10975678694424613417.Spec : Prop :=
  ∀ n, P10975678694424613417.a n = (A242424 (n + 1) : ℚ)

end A242424

/-! ## A242424.P14545733190677426384

`A243070(∑[n]+1)`
-/

namespace A242424.P14545733190677426384
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243070 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A242424.P14545733190677426384

namespace A242424

/-- `A243070(∑[n]+1)` -/
def P14545733190677426384.Spec : Prop :=
  ∀ n, P14545733190677426384.a n = A242424 (n + 1)

end A242424

/-! ## A242424.P12125697329423848539

`abs(A290099(n+1)*A325163(A061142(n+1)))`
-/

namespace A242424.P12125697329423848539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A290099 (n + 1) * A325163 (A061142 (n + 1)).toNat|

end

end A242424.P12125697329423848539

namespace A242424

/-- `abs(A290099(n+1)*A325163(A061142(n+1)))` -/
def P12125697329423848539.Spec : Prop :=
  ∀ n, P12125697329423848539.a n = A242424 (n + 1)

end A242424

/-! ## A242424.P5338266852582271879

`A325163(A061142(n+1))/A003958(n+1)*A353791(n+1)`
-/

namespace A242424.P5338266852582271879
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A325163 (A061142 (n + 1)).toNat : ℚ) / (A003958 (n + 1) : ℚ) * (A353791 (n + 1) : ℚ)

end

end A242424.P5338266852582271879

namespace A242424

/-- `A325163(A061142(n+1))/A003958(n+1)*A353791(n+1)` -/
def P5338266852582271879.Spec : Prop :=
  ∀ n, P5338266852582271879.a n = (A242424 (n + 1) : ℚ)

end A242424

/-!
# A242425: Number of squares k^2 < prime(n) with k^2*p == 1 (mod prime(n)) for some prime p < prime(n).

The programs for A242425, there is no canonical definition to state claims against.
-/

/-! ## A242425.P17925860463445156854

`A242444(A000040(n+1))`
-/

namespace A242425.P17925860463445156854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242444 (A000040 (n + 1)).toNat

end

end A242425.P17925860463445156854

/-! ## A242425.P7993465811766845546

`A242444(A006005(n+1))`
-/

namespace A242425.P7993465811766845546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242444 (A006005 (n + 1)).toNat

end

end A242425.P7993465811766845546

/-! ## A242425.P13595321980901284947

`A242444(A161847(n+1))`
-/

namespace A242425.P13595321980901284947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242444 (A161847 (n + 1)).toNat

end

end A242425.P13595321980901284947

/-! ## A242425.P14021742353762649333

`A242444(A008578(n+2))`
-/

namespace A242425.P14021742353762649333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242444 (A008578 (n + 2)).toNat

end

end A242425.P14021742353762649333

/-! ## A242425.P5892724729279192423

`A242444(A075643(n+2))`
-/

namespace A242425.P5892724729279192423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242444 (A075643 (n + 2)).toNat

end

end A242425.P5892724729279192423

/-! ## A242425.P14767387208755795252

`A242444(A116974(n+2))`
-/

namespace A242425.P14767387208755795252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242444 (A116974 (n + 2)).toNat

end

end A242425.P14767387208755795252

/-! ## A242425.P8112736249723433579

`A242444(A171525(n+2))`
-/

namespace A242425.P8112736249723433579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242444 (A171525 (n + 2)).toNat

end

end A242425.P8112736249723433579

/-! ## A242425.P6305140262925679816

`A242444(A175787(n+2))`
-/

namespace A242425.P6305140262925679816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242444 (A175787 (n + 2)).toNat

end

end A242425.P6305140262925679816

/-! ## A242425.P3092263263868765830

`A242444(A182986(n+2))`
-/

namespace A242425.P3092263263868765830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242444 (A182986 (n + 2)).toNat

end

end A242425.P3092263263868765830

/-! ## A242425.P15197026285961129323

`A242444(record[A006530(n+2)])`
-/

namespace A242425.P15197026285961129323
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242444 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A242425.P15197026285961129323

/-! ## A242425.P657539698909151708

`A242444(record[A014963(n+2)])`
-/

namespace A242425.P657539698909151708
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242444 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A242425.P657539698909151708

/-! ## A242425.P6394012344033159018

`A242444(record[A020639(n+2)])`
-/

namespace A242425.P6394012344033159018
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242444 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A242425.P6394012344033159018

/-!
# A242426: a(n) = floor(n! / n^3).

The programs for A242426, the canonical program `A242426.P13716831940440715046` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A242426 has offset 1).

The definition of A242426 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor((n+1)!/(n+1)^3)` (program `A242426.P13716831940440715046`, by `A242426.P13716831940440715046.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A242426.P10462711809197416920

`floor(A000142(n)/A000290(n+1))`
-/

namespace A242426.P10462711809197416920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000142 n : ℚ) / (A000290 (n + 1) : ℚ)⌋

end

end A242426.P10462711809197416920

namespace A242426

/-- `floor(A000142(n)/A000290(n+1))` -/
def P10462711809197416920.Spec : Prop :=
  ∀ n, P10462711809197416920.a n = A242426 (n + 1)

end A242426

/-! ## A242426.P13716831940440715046

`floor((n+1)!/(n+1)^3)`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A242426

/-- `floor((n+1)!/(n+1)^3)` -/
def P13716831940440715046.Spec : Prop :=
  ∀ n, P13716831940440715046.a n = A242426 (n + 1)

theorem P13716831940440715046.correct : P13716831940440715046.Spec := by
  intro n
  simp only [A242426, Nat.add_sub_cancel]

end A242426

/-! ## A242426.P7531475743796031144

`floor(A226198(n+1)/(n+1))`
-/

namespace A242426.P7531475743796031144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A226198 (n + 1) : ℚ) / (n + 1 : ℚ)⌋

end

end A242426.P7531475743796031144

namespace A242426

/-- `floor(A226198(n+1)/(n+1))` -/
def P7531475743796031144.Spec : Prop :=
  ∀ n, P7531475743796031144.a n = A242426 (n + 1)

end A242426

/-! ## A242426.P4532871017994502214

`floor((n+1)^-2*n!)`
-/

namespace A242426.P4532871017994502214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℚ) ^ (-2 : ℤ) * (Nat.factorial n : ℚ)⌋

end

end A242426.P4532871017994502214

namespace A242426

/-- `floor((n+1)^-2*n!)` -/
def P4532871017994502214.Spec : Prop :=
  ∀ n, P4532871017994502214.a n = A242426 (n + 1)

end A242426

/-! ## A242426.P10067045053527357887

`floor(floor(n!/(n+1))/(n+1))`
-/

namespace A242426.P10067045053527357887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(⌊(Nat.factorial n : ℚ) / (n + 1 : ℚ)⌋ : ℚ) / (n + 1 : ℚ)⌋

end

end A242426.P10067045053527357887

namespace A242426

/-- `floor(floor(n!/(n+1))/(n+1))` -/
def P10067045053527357887.Spec : Prop :=
  ∀ n, P10067045053527357887.a n = A242426 (n + 1)

end A242426

/-! ## A242426.P16428190433001267151

`floor(∏[n+1]/(n+1)^3)`
-/

namespace A242426.P16428190433001267151
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / ((n + 1) ^ 3 : ℚ)⌋

end

end A242426.P16428190433001267151

namespace A242426

/-- `floor(∏[n+1]/(n+1)^3)` -/
def P16428190433001267151.Spec : Prop :=
  ∀ n, P16428190433001267151.a n = A242426 (n + 1)

theorem P16428190433001267151.correct : P16428190433001267151.Spec := by
  intro n
  simp only [A242426, Nat.add_sub_cancel, A242426.P16428190433001267151.f1, A242426.P16428190433001267151.a, A242426.P13716831940440715046.a, SequenceMachineLib.memo_apply]
  try simp

end A242426

/-! ## A242426.P7577485524678325655

`(A000142(n+1)-A242427(n+1))/A000578(n+1)`
-/

namespace A242426.P7577485524678325655
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000142 (n + 1) - A242427 (n + 1) : ℚ) / (A000578 (n + 1) : ℚ)

end

end A242426.P7577485524678325655

namespace A242426

/-- `(A000142(n+1)-A242427(n+1))/A000578(n+1)` -/
def P7577485524678325655.Spec : Prop :=
  ∀ n, P7577485524678325655.a n = (A242426 (n + 1) : ℚ)

end A242426

/-!
# A242427: n! mod n^3.

The programs for A242427, the canonical program `A242427.P7734671627638362005` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A242427 has offset 1).

The definition of A242427 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+1)!%((n+1)^3)` (program `A242427.P7734671627638362005`, by `A242427.P7734671627638362005.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A242427.P7734671627638362005

`(n+1)!%((n+1)^3)`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A242427

/-- `(n+1)!%((n+1)^3)` -/
def P7734671627638362005.Spec : Prop :=
  ∀ n, (P7734671627638362005.a n : ℤ) = A242427 (n + 1)

theorem P7734671627638362005.correct : P7734671627638362005.Spec := by
  intro n
  simp only [A242427, Nat.add_sub_cancel]

end A242427

/-! ## A242427.P10483570447379537752

`(n+1)*n!%(n+1)²`
-/

namespace A242427.P10483570447379537752
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * (Nat.factorial n % (n + 1) ^ 2)

end

end A242427.P10483570447379537752

namespace A242427

/-- `(n+1)*n!%(n+1)²` -/
def P10483570447379537752.Spec : Prop :=
  ∀ n, (P10483570447379537752.a n : ℤ) = A242427 (n + 1)

end A242427

/-! ## A242427.P8855634586668703200

`(n+1)*A000142(n)%(n+1)²`
-/

namespace A242427.P8855634586668703200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * Int.tmod (A000142 n) ((n + 1) ^ 2 : ℤ)

end

end A242427.P8855634586668703200

namespace A242427

/-- `(n+1)*A000142(n)%(n+1)²` -/
def P8855634586668703200.Spec : Prop :=
  ∀ n, P8855634586668703200.a n = A242427 (n + 1)

end A242427

/-! ## A242427.P4623332758665903989

`∏[n+1]%((n+1)^3)`
-/

namespace A242427.P4623332758665903989
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∏ j ∈ Finset.range (n + 1), f1 j) % (n + 1) ^ 3

end

end A242427.P4623332758665903989

namespace A242427

/-- `∏[n+1]%((n+1)^3)` -/
def P4623332758665903989.Spec : Prop :=
  ∀ n, (P4623332758665903989.a n : ℤ) = A242427 (n + 1)

theorem P4623332758665903989.correct : P4623332758665903989.Spec := by
  intro n
  simp only [A242427, Nat.add_sub_cancel, A242427.P4623332758665903989.f1, A242427.P4623332758665903989.a, A242427.P7734671627638362005.a, SequenceMachineLib.memo_apply]
  try simp

end A242427

/-! ## A242427.P4104516760401110306

`A000142(n+1)-A000578(n+1)*A242426(n+1)`
-/

namespace A242427.P4104516760401110306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 (n + 1) - A000578 (n + 1) * A242426 (n + 1)

end

end A242427.P4104516760401110306

namespace A242427

/-- `A000142(n+1)-A000578(n+1)*A242426(n+1)` -/
def P4104516760401110306.Spec : Prop :=
  ∀ n, P4104516760401110306.a n = A242427 (n + 1)

end A242427

/-!
# A242429: Length of longest chain of nonempty proper subsemigroups of the monoid of partial injective order-preserving functions of a chain with n elements.

The programs for A242429, the canonical program `A242429.P3052792352124357347` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A242429 has offset 1).

The definition of A242429 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A242429.P3052792352124357347

`C(2*(n+1), n+1)/2+3*2^n-(n+1)-2`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A242429

/-- `C(2*(n+1), n+1)/2+3*2^n-(n+1)-2` -/
def P3052792352124357347.Spec : Prop :=
  ∀ n, P3052792352124357347.a n = (A242429 (n + 1) : ℚ)

end A242429

/-! ## A242429.P13944063349304539094

`A079583(n)+A010763(n)`
-/

namespace A242429.P13944063349304539094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079583 n + A010763 n

end

end A242429.P13944063349304539094

namespace A242429

/-- `A079583(n)+A010763(n)` -/
def P13944063349304539094.Spec : Prop :=
  ∀ n, P13944063349304539094.a n = A242429 (n + 1)

end A242429

/-! ## A242429.P10776516791873257344

`A095151(n)+A001700(n)`
-/

namespace A242429.P10776516791873257344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095151 n + A001700 n

end

end A242429.P10776516791873257344

namespace A242429

/-- `A095151(n)+A001700(n)` -/
def P10776516791873257344.Spec : Prop :=
  ∀ n, P10776516791873257344.a n = A242429 (n + 1)

end A242429

/-! ## A242429.P15594214598910404960

`A001700(n)+∑[A055010(n)]`
-/

namespace A242429.P15594214598910404960
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055010 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001700 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A242429.P15594214598910404960

namespace A242429

/-- `A001700(n)+∑[A055010(n)]` -/
def P15594214598910404960.Spec : Prop :=
  ∀ n, P15594214598910404960.a n = A242429 (n + 1)

end A242429

/-! ## A242429.P9686954212221670325

`A371036(n+1)+A052940(n)`
-/

namespace A242429.P9686954212221670325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371036 (n + 1) + A052940 n

end

end A242429.P9686954212221670325

namespace A242429

/-- `A371036(n+1)+A052940(n)` -/
def P9686954212221670325.Spec : Prop :=
  ∀ n, P9686954212221670325.a n = A242429 (n + 1)

end A242429

/-! ## A242429.P15153217672798499480

`A001700(n)+A079583(n)-1`
-/

namespace A242429.P15153217672798499480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001700 n + (A079583 n - 1)

end

end A242429.P15153217672798499480

namespace A242429

/-- `A001700(n)+A079583(n)-1` -/
def P15153217672798499480.Spec : Prop :=
  ∀ n, P15153217672798499480.a n = A242429 (n + 1)

end A242429

/-! ## A242429.P13984197921406525859

`A125128(n+1)+A108958(n+1)`
-/

namespace A242429.P13984197921406525859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125128 (n + 1) + A108958 (n + 1)

end

end A242429.P13984197921406525859

namespace A242429

/-- `A125128(n+1)+A108958(n+1)` -/
def P13984197921406525859.Spec : Prop :=
  ∀ n, P13984197921406525859.a n = A242429 (n + 1)

end A242429

/-! ## A242429.P13649105348486239787

`A108958(n+1)+∑[∑[A000079(n)]]`
-/

namespace A242429.P13649105348486239787
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108958 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A242429.P13649105348486239787

namespace A242429

/-- `A108958(n+1)+∑[∑[A000079(n)]]` -/
def P13649105348486239787.Spec : Prop :=
  ∀ n, P13649105348486239787.a n = A242429 (n + 1)

end A242429

/-! ## A242429.P4788085049412635238

`A108958(n+1)+∑[record[A077896(n)]]`
-/

namespace A242429.P4788085049412635238
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077896 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108958 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A242429.P4788085049412635238

namespace A242429

/-- `A108958(n+1)+∑[record[A077896(n)]]` -/
def P4788085049412635238.Spec : Prop :=
  ∀ n, P4788085049412635238.a n = A242429 (n + 1)

end A242429

/-! ## A242429.P16617353892560728105

`A108958(n+1)+∑[A000225(n+1)]`
-/

namespace A242429.P16617353892560728105
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108958 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A242429.P16617353892560728105

namespace A242429

/-- `A108958(n+1)+∑[A000225(n+1)]` -/
def P16617353892560728105.Spec : Prop :=
  ∀ n, P16617353892560728105.a n = A242429 (n + 1)

end A242429

/-! ## A242429.P6237472865779943543

`A000225(n)+A001700(n)+∑[A000225(n)]`
-/

namespace A242429.P6237472865779943543
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 n + (A001700 n + ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A242429.P6237472865779943543

namespace A242429

/-- `A000225(n)+A001700(n)+∑[A000225(n)]` -/
def P6237472865779943543.Spec : Prop :=
  ∀ n, P6237472865779943543.a n = A242429 (n + 1)

end A242429

/-!
# A242430: Decimal expansion of the unforgeable pattern-free binary word constant, a constant mentioned in A003000.

The programs for A242430, there is no canonical definition to state claims against.
-/

/-! ## A242430.P5163604876222846687

`9-A262312(n)`
-/

namespace A242430.P5163604876222846687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 - A262312 n

end

end A242430.P5163604876222846687

/-! ## A242430.P9241592980951085319

`A262312(n)/A008683(A240710(n+2))+9`
-/

namespace A242430.P9241592980951085319
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A262312 n : ℚ) / (A008683 (A240710 (n + 2)).toNat : ℚ) + 9

end

end A242430.P9241592980951085319

/-!
# A242431: Triangle read by rows: T(n, k) = (k + 1)*T(n-1, k) + Sum_{j=k..n-1} T(n-1, j) for k < n, T(n, n) = 1. T(n, k) for n >= 0 and 0 <= k <= n.

The programs for A242431, there is no canonical definition to state claims against.
-/

/-! ## A242431.P3278595198330477544

`A113219(A067345(n+1))`
-/

namespace A242431.P3278595198330477544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113219 (A067345 (n + 1)).toNat

end

end A242431.P3278595198330477544

/-! ## A242431.P14501143433323726750

`A236674(A067345(n+1)+1)`
-/

namespace A242431.P14501143433323726750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236674 (A067345 (n + 1) + 1).toNat

end

end A242431.P14501143433323726750

/-! ## A242431.P9584626055410393345

`A321993(A067345(n+1))+A178798(n)`
-/

namespace A242431.P9584626055410393345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321993 (A067345 (n + 1)).toNat + A178798 n

end

end A242431.P9584626055410393345

/-! ## A242431.P5560048415880915242

`A321993(A067345(n+1))+A184955(n)`
-/

namespace A242431.P5560048415880915242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321993 (A067345 (n + 1)).toNat + A184955 n

end

end A242431.P5560048415880915242

/-! ## A242431.P13056302845680279227

`or(A067345(n+1), A083892(A011782(n)))`
-/

namespace A242431.P13056302845680279227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A067345 (n + 1)) (A083892 (A011782 n).toNat)

end

end A242431.P13056302845680279227

/-!
# A242432: Length of longest chain of nonempty proper subsemigroups of the monoid of partial injective orientation-preserving functions of a chain with n elements.

The programs for A242432, there is no canonical definition to state claims against.
-/

/-! ## A242432.P5335080748501088520

`A005185(A002450(n+1)+A000346(n))`
-/

namespace A242432.P5335080748501088520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005185 (A002450 (n + 1) + A000346 n).toNat

end

end A242432.P5335080748501088520

/-! ## A242432.P13059084597728603275

`A004526(A002457(n)+A000070(2*n+1))`
-/

namespace A242432.P13059084597728603275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A002457 n + A000070 (2 * n + 1)).toNat

end

end A242432.P13059084597728603275

/-!
# A242436: a(n) = n^5 - 2n.

The programs for A242436, the canonical program `A242436.P7002809254185304160` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A242436 has offset 0).

The definition of A242436 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n^5-2*n` (program `A242436.P7002809254185304160`, by `A242436.P7002809254185304160.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A242436.P7002809254185304160

`n^5-2*n`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A242436

/-- `n^5-2*n` -/
def P7002809254185304160.Spec : Prop :=
  ∀ n, P7002809254185304160.a n = A242436 n

theorem P7002809254185304160.correct : P7002809254185304160.Spec := by
  intro n
  simp only [A242436]

end A242436

/-! ## A242436.P12634235093218826376

`n*(A000583(n)-2)`
-/

namespace A242436.P12634235093218826376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A000583 n - 2)

end

end A242436.P12634235093218826376

namespace A242436

/-- `n*(A000583(n)-2)` -/
def P12634235093218826376.Spec : Prop :=
  ∀ n, P12634235093218826376.a n = A242436 n

theorem P12634235093218826376.correct : P12634235093218826376.Spec := by
  intro n
  simp only [A242436, Nat.add_sub_cancel, A242436.P12634235093218826376.a, A242436.P7002809254185304160.a, A000583, A000583.P14547500281748394449.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A242436

/-! ## A242436.P16072475658280633106

`n*(A002523(n)-3)`
-/

namespace A242436.P16072475658280633106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A002523 n - 3)

end

end A242436.P16072475658280633106

namespace A242436

/-- `n*(A002523(n)-3)` -/
def P16072475658280633106.Spec : Prop :=
  ∀ n, P16072475658280633106.a n = A242436 n

theorem P16072475658280633106.correct : P16072475658280633106.Spec := by
  intro n
  simp only [A242436, Nat.add_sub_cancel, A242436.P16072475658280633106.a, A242436.P7002809254185304160.a, A002523, A002523.P178649398705969946.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A242436

/-! ## A242436.P4884926017351060701

`(A000578(n)*n-2)*n`
-/

namespace A242436.P4884926017351060701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000578 n * (n : ℤ) - 2) * (n : ℤ)

end

end A242436.P4884926017351060701

namespace A242436

/-- `(A000578(n)*n-2)*n` -/
def P4884926017351060701.Spec : Prop :=
  ∀ n, P4884926017351060701.a n = A242436 n

theorem P4884926017351060701.correct : P4884926017351060701.Spec := by
  intro n
  simp only [A242436, Nat.add_sub_cancel, A242436.P4884926017351060701.a, A242436.P7002809254185304160.a, A000578, A000578.P12162961755414704816.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A242436

/-! ## A242436.P11867655993746959669

`(A000290(A000290(n))-2)*n`
-/

namespace A242436.P11867655993746959669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000290 (A000290 n).toNat - 2) * (n : ℤ)

end

end A242436.P11867655993746959669

namespace A242436

/-- `(A000290(A000290(n))-2)*n` -/
def P11867655993746959669.Spec : Prop :=
  ∀ n, P11867655993746959669.a n = A242436 n

end A242436

/-!
# A242437: Numbers not appearing in the sequence of integers, beginning with 1, that can be formed by adding any digit of any previous term to that previous term.

The programs for A242437, there is no canonical definition to state claims against.
-/

/-! ## A242437.P2778544350207836931

`lt[A238781(n+1), A006257(n)]`
-/

namespace A242437.P2778544350207836931
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238781 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006257 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A242437.P2778544350207836931

/-! ## A242437.P4824526930042693237

`lt[A238781(n+1), A053645(2*n+1)]`
-/

namespace A242437.P4824526930042693237
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238781 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053645 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A242437.P4824526930042693237

/-! ## A242437.P11139074603408474774

`lt[A119370(A111894(n+1)), lcm(32, n)/32]`
-/

namespace A242437.P11139074603408474774
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119370 (A111894 (n + 1)).toNat

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.lcm 32 n : ℚ) / 32

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) < f2 j) n

end

end A242437.P11139074603408474774

/-! ## A242437.P16699321815380677032

`lt[A008619(A340760(n)), A006257(n)]`
-/

namespace A242437.P16699321815380677032
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A340760 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006257 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A242437.P16699321815380677032

/-! ## A242437.P13378456502485631795

`lt[A271832(A271831(n)), A000120(n)]`
-/

namespace A242437.P13378456502485631795
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271832 (A271831 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A242437.P13378456502485631795

/-!
# A242438: a(n) is the result of factoring a(n-1) + 1 into primes, replacing each prime 2 with a 3, and taking the product of the resulting factors.

The programs for A242438, there is no canonical definition to state claims against.
-/

/-! ## A242438.P1678347547208147460

`A070885(eq[1, A205083(n+1)]+1)`
-/

namespace A242438.P1678347547208147460
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205083 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070885 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A242438.P1678347547208147460

/-! ## A242438.P9723134031389717207

`A070885(record[(n+1)*A205083(n+1)])`
-/

namespace A242438.P9723134031389717207
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A205083 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070885 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A242438.P9723134031389717207

/-! ## A242438.P1175786544643789834

`A070885(record[(n+1)^A304273(n+1)])`
-/

namespace A242438.P1175786544643789834
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) ^ (A304273 (n + 1) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070885 (SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))).toNat

end

end A242438.P1175786544643789834

/-! ## A242438.P7395046552441934353

`record[A070885(n+1)%A305498(n+1)]`
-/

namespace A242438.P7395046552441934353
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A070885 (n + 1)) (A305498 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A242438.P7395046552441934353

/-! ## A242438.P6974816310190799118

`A070885(eq[1, and(1, A070885(n+1))]+1)`
-/

namespace A242438.P6974816310190799118
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A070885 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070885 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A242438.P6974816310190799118

/-!
# A242441: Numbers n such that there are no integer k < sqrt(n) and prime p < n with k^2*p == 1 (mod n).

The programs for A242441, there is no canonical definition to state claims against.
-/

/-! ## A242441.P9440892328312283113

`lt[A242444(n+1), 1]+1`
-/

namespace A242441.P9440892328312283113
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242444 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A242441.P9440892328312283113

/-! ## A242441.P6711543804660677555

`lt[A369019(A030101(n)), A226062(n)]`
-/

namespace A242441.P6711543804660677555
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369019 (A030101 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226062 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A242441.P6711543804660677555

/-!
# A242442: Number of ways of writing n, a positive integer, as an unordered sum of a triangular number (A000217), an odd square (A016754) and a pentagonal number (A000326).

The programs for A242442, there is no canonical definition to state claims against.
-/

/-! ## A242442.P12183106788805904562

`A240088(n+1)-A160325(n+1)`
-/

namespace A242442.P12183106788805904562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240088 (n + 1) - A160325 (n + 1)

end

end A242442.P12183106788805904562

/-! ## A242442.P10707465824088287951

`∑{p}[A100699(n+1)-A100720(n), A052126(#)]`
-/

namespace A242442.P10707465824088287951
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100699 (n + 1) - A100720 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A052126 p

end

end A242442.P10707465824088287951

/-! ## A242442.P4294275213538056705

`A179953(∑[(A004736(n+1)+n)*A000930(n)])`
-/

namespace A242442.P4294275213538056705
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A004736 (n + 1) + (n : ℤ)) * A000930 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179953 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A242442.P4294275213538056705

/-!
# A242443: Number of ways of writing n, a positive integer, as an unordered sum of a triangular number (A000217), an even square (A016742) and a generalized pentagonal number (A001318).

The programs for A242443, there is no canonical definition to state claims against.
-/

/-! ## A242443.P4265222840459161654

`A245717(n+1)+A127323(A115991(n))`
-/

namespace A242443.P4265222840459161654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245717 (n + 1) + A127323 (A115991 n).toNat

end

end A242443.P4265222840459161654

/-! ## A242443.P10652711373403692059

`A097154(A118680(n+2))`
-/

namespace A242443.P10652711373403692059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097154 (A118680 (n + 2)).toNat

end

end A242443.P10652711373403692059

/-! ## A242443.P17758124735153455320

`A037968(gcd(A037944(n+1), A037952(2*n)))`
-/

namespace A242443.P17758124735153455320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037968 (Int.gcd (A037944 (n + 1)) (A037952 (2 * n)))

end

end A242443.P17758124735153455320

/-! ## A242443.P18007565870153169968

`A165053(A299407(n)%A006598(n+3))`
-/

namespace A242443.P18007565870153169968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165053 (Int.tmod (A299407 n) (A006598 (n + 3))).toNat

end

end A242443.P18007565870153169968

/-! ## A242443.P13409717754468353871

`A333860(n+1)+Δ[A333870(A333882(n))]`
-/

namespace A242443.P13409717754468353871
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333870 (A333882 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333860 (n + 1) + (f1 (n + 1) - f1 n)

end

end A242443.P13409717754468353871

/-!
# A242444: Number of squares k^2 < n with k^2*p == 1 (mod n) for some prime p < n.

The programs for A242444, there is no canonical definition to state claims against.
-/

/-! ## A242444.P5414598498571574437

`A227533(A212146(n+1))%A227533(n+1)`
-/

namespace A242444.P5414598498571574437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A227533 (A212146 (n + 1)).toNat) (A227533 (n + 1))

end

end A242444.P5414598498571574437

/-! ## A242444.P8836662189333709961

`A211159(n+1)%A286343(A185420(n+1))`
-/

namespace A242444.P8836662189333709961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A211159 (n + 1)) (A286343 (A185420 (n + 1)).toNat)

end

end A242444.P8836662189333709961

/-! ## A242444.P1084705637446941842

`A001222(A003394(n+1))%A001222(n+2)`
-/

namespace A242444.P1084705637446941842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001222 (A003394 (n + 1)).toNat) (A001222 (n + 2))

end

end A242444.P1084705637446941842

/-! ## A242444.P2977657731097508812

`A079344(A295837(n+1)%A076526(n+2))`
-/

namespace A242444.P2977657731097508812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079344 (Int.tmod (A295837 (n + 1)) (A076526 (n + 2))).toNat

end

end A242444.P2977657731097508812

/-! ## A242444.P6431094483607771262

`and(A000002(A049453(2*n+1)), A185228(2*(n+2)))`
-/

namespace A242444.P6431094483607771262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000002 (A049453 (2 * n + 1)).toNat) (A185228 (2 * (n + 2)))

end

end A242444.P6431094483607771262

/-!
# A242446: a(n) = Sum_{k=1..n} C(n,k) * k^(2*n).

The programs for A242446, there is no canonical definition to state claims against.
-/

/-! ## A242446.P14623058121477159143

`A349706(A062725(n+1))`
-/

namespace A242446.P14623058121477159143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349706 (A062725 (n + 1)).toNat

end

end A242446.P14623058121477159143

/-!
# A242447: Number T(n,k) of compositions of n in which the maximal multiplicity of parts equals k; triangle T(n,k), n>=0, 0<=k<=n, read by rows.

The programs for A242447, there is no canonical definition to state claims against.
-/

/-! ## A242447.P1062404465304032516

`A325678(A271423(n)+A238342(n))`
-/

namespace A242447.P1062404465304032516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325678 (A271423 n + A238342 n).toNat

end

end A242447.P1062404465304032516

/-! ## A242447.P9114782293667136057

`A325678(A329861(n)+A271423(n))`
-/

namespace A242447.P9114782293667136057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325678 (A329861 n + A271423 n).toNat

end

end A242447.P9114782293667136057

/-! ## A242447.P15065416775953919282

`A325678(or(A238342(n), A271423(n)))`
-/

namespace A242447.P15065416775953919282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325678 (Int.lor (A238342 n) (A271423 n)).toNat

end

end A242447.P15065416775953919282

/-! ## A242447.P18294846158640765071

`and(A070925(2*n+3), A072660(A271423(n)))`
-/

namespace A242447.P18294846158640765071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A070925 (2 * n + 3)) (A072660 (A271423 n).toNat)

end

end A242447.P18294846158640765071

/-!
# A242448: Number of distinct linear polynomials b+c*x in row n of array generated as in Comments.

The programs for A242448, there is no canonical definition to state claims against.
-/

/-! ## A242448.P15795796590615359843

`ogf((1+x+x^3+x^4)/(1-2x+x^3))`
-/

namespace A242448.P15795796590615359843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1, 0, 1, 1] [1, -2, 0, 1] n

end

end A242448.P15795796590615359843

/-! ## A242448.P8474516220185526129

`ceil(ϕ*(a(n-1)+1))` with `a(0)=1, a(1)=3, a(2)=6`
-/

namespace A242448.P8474516220185526129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3, 6] fun n a =>
  ⌈Real.goldenRatio * (a (n - 1) + 1 : ℝ)⌉

end

end A242448.P8474516220185526129

/-! ## A242448.P12839488531890428484

`floor(ϕ*(a(n-1)+2))` with `a(0)=1, a(1)=3, a(2)=6`
-/

namespace A242448.P12839488531890428484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3, 6] fun n a =>
  ⌊Real.goldenRatio * (a (n - 1) + 2 : ℝ)⌋

end

end A242448.P12839488531890428484

/-! ## A242448.P14484062983603397708

`∑[round(ϕ*a(n-1))]` with `a(0)=1, a(1)=2, a(2)=3, a(3)=6`
-/

namespace A242448.P14484062983603397708
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 3, 6] fun n f1 =>
  SequenceMachineLib.roundAway (Real.goldenRatio * (f1 (n - 1) : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A242448.P14484062983603397708

/-! ## A242448.P17878329700181597104

`round(ϕ*(a(n-1)+ϕ))` with `a(0)=1, a(1)=3, a(2)=6`
-/

namespace A242448.P17878329700181597104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3, 6] fun n a =>
  SequenceMachineLib.roundAway (Real.goldenRatio * ((a (n - 1) : ℝ) + Real.goldenRatio))

end

end A242448.P17878329700181597104

/-!
# A242450: Number T(n,k) of Dyck paths of semilength n having exactly k (possibly overlapping) occurrences of the consecutive steps UUDDUDUUUUDUDDDDUUDD (with U=(1,1), D=(1,-1)); triangle T(n,k), n>=0, 0<=k<=max(0,floor((n-2)/8)), read by rows.

The programs for A242450, there is no canonical definition to state claims against.
-/

/-! ## A242450.P317771320775908744

`A243838(n)-A178798(A034451(n+1))`
-/

namespace A242450.P317771320775908744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243838 n - A178798 (A034451 (n + 1)).toNat

end

end A242450.P317771320775908744

/-! ## A242450.P17146291434077084720

`A307721(A056201(n+1)²)+A243838(n)`
-/

namespace A242450.P17146291434077084720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307721 (A056201 (n + 1) ^ 2).toNat + A243838 n

end

end A242450.P17146291434077084720

/-! ## A242450.P11490693708758180123

`A243838(n)+A178798(A034451(n+1)+1)`
-/

namespace A242450.P11490693708758180123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243838 n + A178798 (A034451 (n + 1) + 1).toNat

end

end A242450.P11490693708758180123

/-! ## A242450.P13072105335682232127

`A243838(n*A209438(∑[n]))`
-/

namespace A242450.P13072105335682232127
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243838 ((n : ℤ) * A209438 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A242450.P13072105335682232127

/-! ## A242450.P4372223463220116942

`A055229(A032157(n))*A243838(n)`
-/

namespace A242450.P4372223463220116942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055229 (A032157 n).toNat * A243838 n

end

end A242450.P4372223463220116942

/-!
# A242451: Number T(n,k) of compositions of n in which the minimal multiplicity of parts equals k; triangle T(n,k), n>=0, 0<=k<=n, read by rows.

The programs for A242451, there is no canonical definition to state claims against.
-/

/-! ## A242451.P11726943231776470487

`A231347(A271424(n)+1)`
-/

namespace A242451.P11726943231776470487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231347 (A271424 n + 1).toNat

end

end A242451.P11726943231776470487

/-! ## A242451.P7199969195713990937

`A003056(A003056(A243978(n)^5))`
-/

namespace A242451.P7199969195713990937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A003056 (A243978 n ^ 5).toNat).toNat

end

end A242451.P7199969195713990937

/-! ## A242451.P1379434740390541533

`A000217(A245151(n+1)%A153503(n+1))`
-/

namespace A242451.P1379434740390541533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (Int.tmod (A245151 (n + 1)) (A153503 (n + 1))).toNat

end

end A242451.P1379434740390541533

/-! ## A242451.P3223466860720152785

`A000217(A245151(n+1))%A173348(n+1)`
-/

namespace A242451.P3223466860720152785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000217 (A245151 (n + 1)).toNat) (A173348 (n + 1))

end

end A242451.P3223466860720152785

/-! ## A242451.P18344916046646139396

`A353852(A238341(n)%A132382(3*n+4))`
-/

namespace A242451.P18344916046646139396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353852 (Int.tmod (A238341 n) (A132382 (3 * n + 4))).toNat

end

end A242451.P18344916046646139396

/-!
# A242452: Number of length n words on {1,2,3} with no more than one consecutive 1 and no more than two consecutive 2's and no more than three consecutive 3's.

The programs for A242452, there is no canonical definition to state claims against.
-/

/-! ## A242452.P8457961152508901282

`A242464(∑[n+3]+n+3)`
-/

namespace A242452.P8457961152508901282
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242464 (∑ j ∈ Finset.range (n + 1), f1 j + (n + 3))

end

end A242452.P8457961152508901282

/-! ## A242452.P15669920385714781579

`record[A242464(abs(A046691(n)))]`
-/

namespace A242452.P15669920385714781579
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242464 |A046691 n|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A242452.P15669920385714781579

/-! ## A242452.P9645502708289424237

`record[A242464(A027379(n)-1)]`
-/

namespace A242452.P9645502708289424237
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242464 (A027379 n - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A242452.P9645502708289424237

/-! ## A242452.P6401918210729398968

`record[A242464(A153151(A027379(n)))]`
-/

namespace A242452.P6401918210729398968
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242464 (A153151 (A027379 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A242452.P6401918210729398968

/-! ## A242452.P410724062626921594

`record[A242464(A038722(A167499(n)))]`
-/

namespace A242452.P410724062626921594
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242464 (A038722 (A167499 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A242452.P410724062626921594

/-!
# A242453: (Conjectured) infinite nondecreasing sequence with a(1) = 1 such that the divisors of n appear a total of a(n) times in the sequence.

The programs for A242453, there is no canonical definition to state claims against.
-/

/-! ## A242453.P881676273579246228

`A221671(∑[A268507(n+1)])`
-/

namespace A242453.P881676273579246228
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268507 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221671 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A242453.P881676273579246228

/-! ## A242453.P14955967929245496040

`round(sqrt(A342028(n+1)+A338743(3*n+4)))-1`
-/

namespace A242453.P14955967929245496040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A342028 (n + 1) + A338743 (3 * n + 4) : ℝ)) - 1

end

end A242453.P14955967929245496040

/-! ## A242453.P2413678682561564947

`A000523(A338325(n+1)+A129012(n+1))`
-/

namespace A242453.P2413678682561564947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000523 (A338325 (n + 1) + A129012 (n + 1)).toNat

end

end A242453.P2413678682561564947

/-! ## A242453.P338200142368699948

`A236857(A015128(n))`
-/

namespace A242453.P338200142368699948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236857 (A015128 n).toNat

end

end A242453.P338200142368699948

/-! ## A242453.P5191874168912907233

`A236857(A262146(n))`
-/

namespace A242453.P5191874168912907233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236857 (A262146 n).toNat

end

end A242453.P5191874168912907233

/-!
# A242454: Triangular numbers T such that sum of digits of T is semiprime.

The programs for A242454, the canonical program `A242454.P17030880495983827344` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A242454 has offset 1).

The definition of A242454 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 110 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A242454.P17030880495983827344

`∩[A085802(n+1), A000217(n)]`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A242454

/-- `∩[A085802(n+1), A000217(n)]` -/
def P17030880495983827344.Spec : Prop :=
  ∀ n, (P17030880495983827344.a n : ℤ) = A242454 (n + 1)

theorem P17030880495983827344.correct : P17030880495983827344.Spec := by
  intro n
  simp only [A242454, Nat.add_sub_cancel]

end A242454

/-! ## A242454.P8742043183682112539

`∩[A085802(n+1), A253145(n)]`
-/

namespace A242454.P8742043183682112539
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085802 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253145 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A242454.P8742043183682112539

namespace A242454

/-- `∩[A085802(n+1), A253145(n)]` -/
def P8742043183682112539.Spec : Prop :=
  ∀ n, (P8742043183682112539.a n : ℤ) = A242454 (n + 1)

end A242454

/-! ## A242454.P16005144511556814101

`∩[A085802(n+1), A186783(n+1)]`
-/

namespace A242454.P16005144511556814101
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085802 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186783 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A242454.P16005144511556814101

namespace A242454

/-- `∩[A085802(n+1), A186783(n+1)]` -/
def P16005144511556814101.Spec : Prop :=
  ∀ n, (P16005144511556814101.a n : ℤ) = A242454 (n + 1)

end A242454

/-! ## A242454.P8558181383121193438

`∩[A085802(n+1), A350295(n+3)]`
-/

namespace A242454.P8558181383121193438
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085802 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350295 (n + 3)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A242454.P8558181383121193438

namespace A242454

/-- `∩[A085802(n+1), A350295(n+3)]` -/
def P8558181383121193438.Spec : Prop :=
  ∀ n, (P8558181383121193438.a n : ℤ) = A242454 (n + 1)

end A242454

/-! ## A242454.P15701258898005230205

`filter[A085802(n+1), A073424(#)]`
-/

namespace A242454.P15701258898005230205
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085802 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A073424 (f1 j).toNat = 1) n)

end

end A242454.P15701258898005230205

namespace A242454

/-- `filter[A085802(n+1), A073424(#)]` -/
def P15701258898005230205.Spec : Prop :=
  ∀ n, P15701258898005230205.a n = A242454 (n + 1)

end A242454

/-! ## A242454.P3176096987790948303

`filter[A085802(n+1), A010054(#)]`
-/

namespace A242454.P3176096987790948303
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085802 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010054 (f1 j).toNat = 1) n)

end

end A242454.P3176096987790948303

namespace A242454

/-- `filter[A085802(n+1), A010054(#)]` -/
def P3176096987790948303.Spec : Prop :=
  ∀ n, P3176096987790948303.a n = A242454 (n + 1)

end A242454

/-! ## A242454.P14807374986297036238

`eq[A128710(n), A226378(A007953(n))]`
-/

namespace A242454.P14807374986297036238
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128710 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226378 (A007953 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A242454.P14807374986297036238

namespace A242454

/-- `eq[A128710(n), A226378(A007953(n))]` -/
def P14807374986297036238.Spec : Prop :=
  ∀ n, (P14807374986297036238.a n : ℤ) = A242454 (n + 1)

end A242454

/-! ## A242454.P11772520998593426273

`eq[A029656(n+1), A284289(A007953(n))]`
-/

namespace A242454.P11772520998593426273
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029656 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284289 (A007953 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A242454.P11772520998593426273

namespace A242454

/-- `eq[A029656(n+1), A284289(A007953(n))]` -/
def P11772520998593426273.Spec : Prop :=
  ∀ n, (P11772520998593426273.a n : ℤ) = A242454 (n + 1)

end A242454

/-! ## A242454.P17653293267264852989

`lt[A002260(n+1), A105700(A007953(n))]`
-/

namespace A242454.P17653293267264852989
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105700 (A007953 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A242454.P17653293267264852989

namespace A242454

/-- `lt[A002260(n+1), A105700(A007953(n))]` -/
def P17653293267264852989.Spec : Prop :=
  ∀ n, (P17653293267264852989.a n : ℤ) = A242454 (n + 1)

end A242454

/-! ## A242454.P13670841715338635289

`lt[A002260(n+1), A105700(A169805(n)/2)]`
-/

namespace A242454.P13670841715338635289
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105700 (SequenceMachineLib.roundAway ((A169805 n : ℚ) / 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A242454.P13670841715338635289

namespace A242454

/-- `lt[A002260(n+1), A105700(A169805(n)/2)]` -/
def P13670841715338635289.Spec : Prop :=
  ∀ n, (P13670841715338635289.a n : ℤ) = A242454 (n + 1)

end A242454

/-!
# A242455: Numbers are the product of k primes: prime(n_1)...prime(n_k), where prime(x) is the x-th prime. This is a list of maximal numbers given k and the sum n_1+n_2+...+n_k.

The programs for A242455, there is no canonical definition to state claims against.
-/

/-! ## A242455.P6237948515941788050

`lt[3, A249033(A000041(n+1))]`
-/

namespace A242455.P6237948515941788050
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249033 (A000041 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A242455.P6237948515941788050

/-!
# A242456: Least number k such that n!/k is prime.

The programs for A242456, the canonical program `A242456.P17431878854406711509` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A242456 has offset 2).

The definition of A242456 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A242456.P17431878854406711509

`A000142(n+2)/A007917(n+2)`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A242456

/-- `A000142(n+2)/A007917(n+2)` -/
def P17431878854406711509.Spec : Prop :=
  ∀ n, P17431878854406711509.a n = (A242456 (n + 2) : ℚ)

end A242456

/-! ## A242456.P17633384940559486238

`(n+2)!/A000040(A000720(n+2))`
-/

namespace A242456.P17633384940559486238
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (n + 2) : ℚ) / (A000040 (A000720 (n + 2)).toNat : ℚ)

end

end A242456.P17633384940559486238

namespace A242456

/-- `(n+2)!/A000040(A000720(n+2))` -/
def P17633384940559486238.Spec : Prop :=
  ∀ n, P17633384940559486238.a n = (A242456 (n + 2) : ℚ)

end A242456

/-! ## A242456.P4769697814870407603

`A242516(A061536(n+1))`
-/

namespace A242456.P4769697814870407603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242516 (A061536 (n + 1)).toNat

end

end A242456.P4769697814870407603

namespace A242456

/-- `A242516(A061536(n+1))` -/
def P4769697814870407603.Spec : Prop :=
  ∀ n, P4769697814870407603.a n = A242456 (n + 2)

end A242456

/-! ## A242456.P2229712968731754442

`A242516(A046992(n+1)+1)`
-/

namespace A242456.P2229712968731754442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242516 (A046992 (n + 1) + 1).toNat

end

end A242456.P2229712968731754442

namespace A242456

/-- `A242516(A046992(n+1)+1)` -/
def P2229712968731754442.Spec : Prop :=
  ∀ n, P2229712968731754442.a n = A242456 (n + 2)

end A242456

/-! ## A242456.P16935881786860645256

`A000142(n+2)/A136548(n+3)`
-/

namespace A242456.P16935881786860645256
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000142 (n + 2) : ℚ) / (A136548 (n + 3) : ℚ)

end

end A242456.P16935881786860645256

namespace A242456

/-- `A000142(n+2)/A136548(n+3)` -/
def P16935881786860645256.Spec : Prop :=
  ∀ n, P16935881786860645256.a n = (A242456 (n + 2) : ℚ)

end A242456

/-! ## A242456.P8734182621317102321

`A000142(n+2)/A055377(2*(n+2))`
-/

namespace A242456.P8734182621317102321
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000142 (n + 2) : ℚ) / (A055377 (2 * (n + 2)) : ℚ)

end

end A242456.P8734182621317102321

namespace A242456

/-- `A000142(n+2)/A055377(2*(n+2))` -/
def P8734182621317102321.Spec : Prop :=
  ∀ n, P8734182621317102321.a n = (A242456 (n + 2) : ℚ)

end A242456

/-!
# A242457: Least number k such that k!/n is prime, or 0 if no such number exists.

The programs for A242457, there is no canonical definition to state claims against.
-/

/-! ## A242457.P457451536068948414

`A084556(A286341(n+1))*A316341(A064538(n))`
-/

namespace A242457.P457451536068948414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084556 (A286341 (n + 1)).toNat * A316341 (A064538 n).toNat

end

end A242457.P457451536068948414

/-!
# A242459: Maximal differences of A029707.

The programs for A242459, there is no canonical definition to state claims against.
-/

/-! ## A242459.P3786003215528697915

`record[A027833(n+1)]`
-/

namespace A242459.P3786003215528697915
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027833 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A242459.P3786003215528697915

/-! ## A242459.P8279755100401806846

`record[A242767(n+2)]`
-/

namespace A242459.P8279755100401806846
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242767 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A242459.P8279755100401806846

/-! ## A242459.P13781757330769544881

`record[A029707(n+2)-A029707(n+1)]`
-/

namespace A242459.P13781757330769544881
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029707 (n + 2) - A029707 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A242459.P13781757330769544881

/-! ## A242459.P13477831839028719256

`record[A242768(A000040(n+1))]`
-/

namespace A242459.P13477831839028719256
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242768 (A000040 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A242459.P13477831839028719256

/-! ## A242459.P3032891074139106034

`record[A242768(A001747(n+1))]`
-/

namespace A242459.P3032891074139106034
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242768 (A001747 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A242459.P3032891074139106034

/-!
# A242460: Integers in the Hadron Collider: Composite integers, n, break apart into a(n)>=2 factors in order to minimize the product: (number of factors)*(max factor - min factor). In case of ties, a(n) is chosen to be as small as possible.

The programs for A242460, there is no canonical definition to state claims against.
-/

/-! ## A242460.P1185585190666921714

`A008472(A328026(n+2)%A305676(n+1))`
-/

namespace A242460.P1185585190666921714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 (Int.tmod (A328026 (n + 2)) (A305676 (n + 1))).toNat

end

end A242460.P1185585190666921714

/-! ## A242460.P8243942222813330696

`A295664(A329000(A069157(n+2)))`
-/

namespace A242460.P8243942222813330696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295664 (A329000 (A069157 (n + 2)).toNat).toNat

end

end A242460.P8243942222813330696

/-! ## A242460.P18291252158576156617

`A176170(A001248(n+1))%A281113(n+2)`
-/

namespace A242460.P18291252158576156617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A176170 (A001248 (n + 1)).toNat) (A281113 (n + 2))

end

end A242460.P18291252158576156617

/-! ## A242460.P3724479485462815109

`∑{p}[A001222(n+2), A000005(A000688((n+1)^#+1)+1)]`
-/

namespace A242460.P3724479485462815109
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A000005 (A000688 ((n + 1) ^ p + 1) + 1).toNat

end

end A242460.P3724479485462815109

/-! ## A242460.P2942521466537526101

`A210468(A118654(3*n+1)%A001222(n+2))`
-/

namespace A242460.P2942521466537526101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210468 (Int.tmod (A118654 (3 * n + 1)) (A001222 (n + 2))).toNat

end

end A242460.P2942521466537526101

/-!
# A242463: a(n) = A152466(n) + 1.

The programs for A242463, there is no canonical definition to state claims against.
-/

/-! ## A242463.P4592856025066198788

`A152466(n+1)+1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A242463.P4592856025066198788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152466 (n + 1) + 1

end

end A242463.P4592856025066198788

/-! ## A242463.P10007653426614076183

`or(1, A152466(A077168(n)))`
-/

namespace A242463.P10007653426614076183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A152466 (A077168 n).toNat)

end

end A242463.P10007653426614076183

/-! ## A242463.P17274820549313119476

`xor(A152466(A077168(n)), A284562(n))`
-/

namespace A242463.P17274820549313119476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A152466 (A077168 n).toNat) (A284562 n)

end

end A242463.P17274820549313119476

/-!
# A242464: Number A(n,k) of n-length words w over a k-ary alphabet {a_1,...,a_k} such that w contains never more than j consecutive letters a_j (for 1<=j<=k); square array A(n,k), n>=0, k>=0, read by antidiagonals.

The programs for A242464, there is no canonical definition to state claims against.
-/

/-! ## A242464.P993851094222103620

`A213276(n)-A321312(A368025(n))`
-/

namespace A242464.P993851094222103620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213276 n - A321312 (A368025 n).toNat

end

end A242464.P993851094222103620

/-! ## A242464.P12721881281783254134

`A350529(n)+A340998(A174545(n))`
-/

namespace A242464.P12721881281783254134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350529 n + A340998 ((A174545 n).toNat + 140)

end

end A242464.P12721881281783254134

/-! ## A242464.P6806520754088276902

`A353434(n)+A340998(A174545(n))`
-/

namespace A242464.P6806520754088276902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353434 n + A340998 ((A174545 n).toNat + 140)

end

end A242464.P6806520754088276902

/-! ## A242464.P14794472082201345901

`A350529(n)+A089048(A334709(n+1)²)`
-/

namespace A242464.P14794472082201345901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350529 n + A089048 (A334709 (n + 1) ^ 2).toNat

end

end A242464.P14794472082201345901

/-! ## A242464.P16599769627538471988

`A000523(2^A118340(n))-A321312(A368025(n))`
-/

namespace A242464.P16599769627538471988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000523 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A118340 n : ℤ))).toNat - A321312 (A368025 n).toNat

end

end A242464.P16599769627538471988

/-!
# A242466: A term in this sequence a(n) is such that n and n+1 have isomorphic factor decomposition binary trees.

The programs for A242466, there is no canonical definition to state claims against.
-/

/-! ## A242466.P14866403319464964232

`eq[A103586(A284289(n)), A238745(n+1)]`
-/

namespace A242466.P14866403319464964232
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103586 (A284289 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238745 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A242466.P14866403319464964232

/-! ## A242466.P13582844444883662757

`eq[A105700(n), A188584(n+1)]`
-/

namespace A242466.P13582844444883662757
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105700 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188584 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A242466.P13582844444883662757

/-! ## A242466.P2262591552221488646

`∩[A045920(n+1), A325366(n+1)]`
-/

namespace A242466.P2262591552221488646
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045920 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325366 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A242466.P2262591552221488646

/-! ## A242466.P18004445715072861120

`∩[A045920(n+1), A340682(n+1)]`
-/

namespace A242466.P18004445715072861120
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045920 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340682 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A242466.P18004445715072861120

/-! ## A242466.P10247032270703980497

`eq[A105700(n), A296132(n+1)]`
-/

namespace A242466.P10247032270703980497
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105700 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296132 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A242466.P10247032270703980497

/-!
# A242467: Number of length n+2 0..n arrays with no three equal elements in a row and new values 0..n introduced in 0..n order.

The programs for A242467, there is no canonical definition to state claims against.
-/

/-! ## A242467.P3638085755974590620

`A345123(∑[n+1])+A211829(n+1)`
-/

namespace A242467.P3638085755974590620
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345123 (∑ j ∈ Finset.range (n + 1), f1 j) + A211829 (n + 1)

end

end A242467.P3638085755974590620

/-! ## A242467.P6792052560126743900

`A242472(∑[4*n]+1)`
-/

namespace A242467.P6792052560126743900
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242472 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A242467.P6792052560126743900

/-! ## A242467.P14111480471576444481

`record[A003982(n)*A242472(n+1)]`
-/

namespace A242467.P14111480471576444481
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A242472 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A242467.P14111480471576444481

/-! ## A242467.P11781618156168417279

`record[gcd(A003987(n), A242472(n+1))]`
-/

namespace A242467.P11781618156168417279
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A003987 n) (A242472 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A242467.P11781618156168417279

/-! ## A242467.P18005215458364132051

`or(A000038(n), A242472(A001844(n)))`
-/

namespace A242467.P18005215458364132051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000038 n) (A242472 (A001844 n).toNat)

end

end A242467.P18005215458364132051

/-!
# A242468: Number of length n+2 0..5 arrays with no three equal elements in a row and new values 0..5 introduced in 0..5 order.

The programs for A242468, there is no canonical definition to state claims against.
-/

/-! ## A242468.P5756877529959235137

`A242472(A046691(n+3))`
-/

namespace A242468.P5756877529959235137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242472 (A046691 (n + 3)).toNat

end

end A242468.P5756877529959235137

/-! ## A242468.P16994790998380648254

`A242472(Δ[A023545(n+1)])`
-/

namespace A242468.P16994790998380648254
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242472 (f1 (n + 1) - f1 n).toNat

end

end A242468.P16994790998380648254

/-! ## A242468.P3700826989046502917

`A242472(A052905(n+2)+1)`
-/

namespace A242468.P3700826989046502917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242472 (A052905 (n + 2) + 1).toNat

end

end A242468.P3700826989046502917

/-! ## A242468.P12183514170562663572

`A242472(Δ[n²]+A055999(n)+10)`
-/

namespace A242468.P12183514170562663572
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242472 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) + (A055999 n + 10)).toNat

end

end A242468.P12183514170562663572

/-! ## A242468.P2478601956733358683

`A242472(A005408(n)+Δ[A006503(n)]+7)`
-/

namespace A242468.P2478601956733358683
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006503 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242472 (A005408 n + (f1 (n + 1) - f1 n + 7)).toNat

end

end A242468.P2478601956733358683

/-!
# A242469: Number of length n+2 0..6 arrays with no three equal elements in a row and new values 0..6 introduced in 0..6 order.

The programs for A242469, there is no canonical definition to state claims against.
-/

/-! ## A242469.P18165439164825641083

`A242472(A052905(n+3))`
-/

namespace A242469.P18165439164825641083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242472 (A052905 (n + 3)).toNat

end

end A242469.P18165439164825641083

/-! ## A242469.P11115515593414140393

`A242472(A000217(n+6)-5)`
-/

namespace A242469.P11115515593414140393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242472 (A000217 (n + 6) - 5).toNat

end

end A242469.P11115515593414140393

/-! ## A242469.P6918120587765818789

`A242472(A000124(n+6)-6)`
-/

namespace A242469.P6918120587765818789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242472 (A000124 (n + 6) - 6).toNat

end

end A242469.P6918120587765818789

/-! ## A242469.P10128227258039872465

`A242472(Δ[A023545(n+2)]-1)`
-/

namespace A242469.P10128227258039872465
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242472 (f1 (n + 1) - f1 n - 1).toNat

end

end A242469.P10128227258039872465

/-! ## A242469.P6053573002231538723

`A242472(A046691(n+3)+n+5)`
-/

namespace A242469.P6053573002231538723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242472 (A046691 (n + 3) + (n + 5 : ℤ)).toNat

end

end A242469.P6053573002231538723

/-! ## A242469.P7677860533261000714

`A242472(A167499(n+3)+2*n+1)`
-/

namespace A242469.P7677860533261000714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242472 (A167499 (n + 3) + (2 * n + 1 : ℤ)).toNat

end

end A242469.P7677860533261000714

/-!
# A242470: Number of length n+2 0..7 arrays with no three equal elements in a row and new values 0..7 introduced in 0..7 order.

The programs for A242470, there is no canonical definition to state claims against.
-/

/-! ## A242470.P9690146337674924633

`A242472(A055999(n+4))`
-/

namespace A242470.P9690146337674924633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242472 (A055999 (n + 4)).toNat

end

end A242470.P9690146337674924633

/-! ## A242470.P15856249638273636276

`A242472(A000124(n+7)-7)`
-/

namespace A242470.P15856249638273636276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242472 (A000124 (n + 7) - 7).toNat

end

end A242470.P15856249638273636276

/-! ## A242470.P16024868135019999045

`A242472(A167614(n+6)-9)`
-/

namespace A242470.P16024868135019999045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242472 (A167614 (n + 6) - 9).toNat

end

end A242470.P16024868135019999045

/-! ## A242470.P3023385675604693877

`A242472(A000217(n+6)+n+1)`
-/

namespace A242470.P3023385675604693877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242472 (A000217 (n + 6) + (n + 1 : ℤ)).toNat

end

end A242470.P3023385675604693877

/-! ## A242470.P4966146082512666863

`A242472(A133263(n+6)+n-1)`
-/

namespace A242470.P4966146082512666863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242472 (A133263 (n + 6) + ((n : ℤ) - 1)).toNat

end

end A242470.P4966146082512666863

/-!
# A242471: Number of length n+2 0..8 arrays with no three equal elements in a row and new values 0..8 introduced in 0..8 order.

The programs for A242471, there is no canonical definition to state claims against.
-/

/-! ## A242471.P7958827501650469648

`A242472(A055999(n+5)-1)`
-/

namespace A242471.P7958827501650469648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242472 (A055999 (n + 5) - 1).toNat

end

end A242471.P7958827501650469648

/-! ## A242471.P1898930780893469611

`A242472(A000096(n+7)-6)`
-/

namespace A242471.P1898930780893469611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242472 (A000096 (n + 7) - 6).toNat

end

end A242471.P1898930780893469611

/-! ## A242471.P13106516487233920865

`A242472(A000217(n+8)-7)`
-/

namespace A242471.P13106516487233920865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242472 (A000217 (n + 8) - 7).toNat

end

end A242471.P13106516487233920865

/-! ## A242471.P726310207191561361

`A242472(A000124(n+8)-8)`
-/

namespace A242471.P726310207191561361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242472 (A000124 (n + 8) - 8).toNat

end

end A242471.P726310207191561361

/-! ## A242471.P7286265988467460787

`A242472(A005408(n)+A000217(n+6)+7)`
-/

namespace A242471.P7286265988467460787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242472 (A005408 n + (A000217 (n + 6) + 7)).toNat

end

end A242471.P7286265988467460787

/-!
# A242473: Binomial(2p-1,p-1) modulo p^4, with p=prime(n).

The programs for A242473, there is no canonical definition to state claims against.
-/

/-! ## A242473.P13709670316535116139

`A000040(n+1)*A260209(n+1)+1`
-/

namespace A242473.P13709670316535116139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * A260209 (n + 1) + 1

end

end A242473.P13709670316535116139

/-! ## A242473.P13941242651698536127

`A282410(n+1)%A030514(n+1)`
-/

namespace A242473.P13941242651698536127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A282410 (n + 1)) (A030514 (n + 1))

end

end A242473.P13941242651698536127

/-! ## A242473.P8810047808980342166

`A099908(p?[comp[n²]])`
-/

namespace A242473.P8810047808980342166
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099908 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A242473.P8810047808980342166

/-! ## A242473.P676219519891998677

`A099908(A000040(n+1))`
-/

namespace A242473.P676219519891998677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099908 (A000040 (n + 1)).toNat

end

end A242473.P676219519891998677

/-! ## A242473.P4804324434260326636

`A099908(A008578(n+2))`
-/

namespace A242473.P4804324434260326636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099908 (A008578 (n + 2)).toNat

end

end A242473.P4804324434260326636

/-! ## A242473.P4081514330009622070

`A099908(A182986(n+2))`
-/

namespace A242473.P4081514330009622070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099908 (A182986 (n + 2)).toNat

end

end A242473.P4081514330009622070

/-! ## A242473.P4329837440249265154

`A099908(record[A006530(n+2)])`
-/

namespace A242473.P4329837440249265154
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099908 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A242473.P4329837440249265154

/-! ## A242473.P10343252464355824821

`A099908(record[A014963(n+2)])`
-/

namespace A242473.P10343252464355824821
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099908 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A242473.P10343252464355824821

/-! ## A242473.P9645754836411916392

`A099908(record[A020639(n+2)])`
-/

namespace A242473.P9645754836411916392
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099908 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A242473.P9645754836411916392

/-! ## A242473.P1449198178466577089

`A099908(A050997(n+1)/A001248(n+1)²)`
-/

namespace A242473.P1449198178466577089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099908 (SequenceMachineLib.roundAway ((A050997 (n + 1) : ℚ) / (A001248 (n + 1) ^ 2 : ℚ))).toNat

end

end A242473.P1449198178466577089

/-!
# A242474: Numbers n such that A = n - digitsum(n) is divisible by the largest power of 10 <= A.

The programs for A242474, there is no canonical definition to state claims against.
-/

/-! ## A242474.P3114492183587402279

`∑[A005900(A059807(A086892(n+1)))]`
-/

namespace A242474.P3114492183587402279
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005900 (A059807 (A086892 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A242474.P3114492183587402279

/-! ## A242474.P16469285364234854790

`∑[A051123(A000108(A037860(n+1)²))]`
-/

namespace A242474.P16469285364234854790
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051123 (A000108 (A037860 (n + 1) ^ 2).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A242474.P16469285364234854790

/-! ## A242474.P16138484136327427702

`∑[A240201(A123028(A085393(n+1)))]`
-/

namespace A242474.P16138484136327427702
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240201 (A123028 (A085393 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A242474.P16138484136327427702

/-! ## A242474.P12401799022135520923

`∑[A247648(A098173(n)!)]`
-/

namespace A242474.P12401799022135520923
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247648 (Nat.factorial (A098173 n).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A242474.P12401799022135520923

/-! ## A242474.P5887891749724190588

`∑[A227964(A098173(n)^A001222(n+1))]`
-/

namespace A242474.P5887891749724190588
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227964 (SequenceMachineLib.roundAway ((A098173 n : ℚ) ^ (A001222 (n + 1) : ℤ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A242474.P5887891749724190588

/-!
# A242475: a(n) = 2^n + 8.

The programs for A242475, the canonical program `A242475.P2006482224610185527` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A242475 has offset 0).

The definition of A242475 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2^n+8` (program `A242475.P2006482224610185527`, by `A242475.P2006482224610185527.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A242475.P2006482224610185527

`2^n+8`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A242475

/-- `2^n+8` -/
def P2006482224610185527.Spec : Prop :=
  ∀ n, (P2006482224610185527.a n : ℤ) = A242475 n

theorem P2006482224610185527.correct : P2006482224610185527.Spec := by
  intro n
  simp only [A242475]

end A242475

/-!
# A242476: Primes p such that p + 22 is also prime.

The programs for A242476, there is no canonical definition to state claims against.
-/

/-! ## A242476.P10581123400138377220

`A140447(Δ[n²])`
-/

namespace A242476.P10581123400138377220
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140447 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A242476.P10581123400138377220

/-! ## A242476.P12829919104035782386

`record[A140447(n+1)/(-1)^n]`
-/

namespace A242476.P12829919104035782386
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A140447 (n + 1) : ℚ) / ((-1) ^ n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A242476.P12829919104035782386

/-! ## A242476.P14340002782807993077

`or(1, A140447(Δ[A000290(n)]))`
-/

namespace A242476.P14340002782807993077
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A140447 (f1 (n + 1) - f1 n).toNat)

end

end A242476.P14340002782807993077

/-! ## A242476.P9045034827918971709

`or(A059841(n), A140447(2*n+1))`
-/

namespace A242476.P9045034827918971709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A059841 n) (A140447 (2 * n + 1))

end

end A242476.P9045034827918971709

/-! ## A242476.P10727038517266187886

`filter[A140447(n+1), A070563(#)]`
-/

namespace A242476.P10727038517266187886
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140447 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A070563 (f1 j).toNat = 1) n)

end

end A242476.P10727038517266187886

/-! ## A242476.P7278061720542606672

`p?[p?[2*n+1]-22]`
-/

namespace A242476.P7278061720542606672
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n) : ℤ) - 22

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A242476.P7278061720542606672

/-! ## A242476.P1802700893595179600

`p?[A006093(n+1)-21]`
-/

namespace A242476.P1802700893595179600
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (n + 1) - 21

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A242476.P1802700893595179600

/-! ## A242476.P9733601998679533285

`p?[A000040(n+1)-22]`
-/

namespace A242476.P9733601998679533285
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - 22

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A242476.P9733601998679533285

/-! ## A242476.P13717650279349191456

`p?[A008578(n+1)-22]`
-/

namespace A242476.P13717650279349191456
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1) - 22

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A242476.P13717650279349191456

/-! ## A242476.P15912279081410158817

`p?[record[A000010(n+1)]-21]`
-/

namespace A242476.P15912279081410158817
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n) - 21

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A242476.P15912279081410158817

/-! ## A242476.P13925382096851186978

`p?[record[A006530(n+1)]-22]`
-/

namespace A242476.P13925382096851186978
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n) - 22

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A242476.P13925382096851186978

/-! ## A242476.P4518480824072748811

`p?[record[A020639(n+1)]-22]`
-/

namespace A242476.P4518480824072748811
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n) - 22

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A242476.P4518480824072748811

/-! ## A242476.P13417518714561811832

`filter[A140447(n+1), A353815(#)]`
-/

namespace A242476.P13417518714561811832
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140447 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353815 (f1 j).toNat = 1) n)

end

end A242476.P13417518714561811832

/-! ## A242476.P5872739902381446584

`filter[A140447(n+1), A353816(#)]`
-/

namespace A242476.P5872739902381446584
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140447 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353816 (f1 j).toNat = 1) n)

end

end A242476.P5872739902381446584

/-! ## A242476.P16007102551940601712

`filter[A140447(n+1), A354982(#)]`
-/

namespace A242476.P16007102551940601712
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140447 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354982 (f1 j).toNat = 1) n)

end

end A242476.P16007102551940601712

/-!
# A242477: a(n) = floor(3*n^2/4).

The programs for A242477, the canonical program `A242477.P12292320476624931246` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A242477 has offset 0).

The definition of A242477 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(3*n²/4)` (program `A242477.P12292320476624931246`, by `A242477.P12292320476624931246.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A242477.P4702052557497548069

`3*floor(n²/4)`
-/

namespace A242477.P4702052557497548069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * ⌊(n ^ 2 : ℚ) / 4⌋

end

end A242477.P4702052557497548069

namespace A242477

/-- `3*floor(n²/4)` -/
def P4702052557497548069.Spec : Prop :=
  ∀ n, P4702052557497548069.a n = A242477 n

end A242477

/-! ## A242477.P12292320476624931246

`floor(3*n²/4)`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A242477

/-- `floor(3*n²/4)` -/
def P12292320476624931246.Spec : Prop :=
  ∀ n, P12292320476624931246.a n = A242477 n

theorem P12292320476624931246.correct : P12292320476624931246.Spec := by
  intro n
  simp only [A242477]

end A242477

/-! ## A242477.P7234615880789942351

`a(n-2)+3*(n-1)` with `a(0)=0, a(1)=0`
-/

namespace A242477.P7234615880789942351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0] fun n a =>
  a (n - 2) + 3 * ((n : ℤ) - 1)

end

end A242477.P7234615880789942351

namespace A242477

/-- `a(n-2)+3*(n-1)` -/
def P7234615880789942351.Spec : Prop :=
  ∀ n, P7234615880789942351.a n = A242477 n

end A242477

/-! ## A242477.P14558967971440628082

`∑[a(n-2)+3]` with `a(0)=0, a(1)=0`
-/

namespace A242477.P14558967971440628082
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 0] fun n f1 =>
  f1 (n - 2) + 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A242477.P14558967971440628082

namespace A242477

/-- `∑[a(n-2)+3]` -/
def P14558967971440628082.Spec : Prop :=
  ∀ n, (P14558967971440628082.a n : ℤ) = A242477 n

end A242477

/-! ## A242477.P10236748457070903350

`∑[lcm(3, 3*floor(n/2))]`
-/

namespace A242477.P10236748457070903350
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 3 (3 * ⌊(n : ℚ) / 2⌋)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A242477.P10236748457070903350

namespace A242477

/-- `∑[lcm(3, 3*floor(n/2))]` -/
def P10236748457070903350.Spec : Prop :=
  ∀ n, (P10236748457070903350.a n : ℤ) = A242477 n

end A242477

/-! ## A242477.P5685063178933838616

`∑[3*(n-∑[n%2])]`
-/

namespace A242477.P5685063178933838616
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * ((n : ℤ) - ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A242477.P5685063178933838616

namespace A242477

/-- `∑[3*(n-∑[n%2])]` -/
def P5685063178933838616.Spec : Prop :=
  ∀ n, P5685063178933838616.a n = A242477 n

end A242477

/-! ## A242477.P12550546461166374075

`∑[3*(n-∑[and(1, n)])]`
-/

namespace A242477.P12550546461166374075
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * ((n : ℤ) - ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A242477.P12550546461166374075

namespace A242477

/-- `∑[3*(n-∑[and(1, n)])]` -/
def P12550546461166374075.Spec : Prop :=
  ∀ n, P12550546461166374075.a n = A242477 n

end A242477

/-! ## A242477.P8015314901638809

`round(and(3*n², -3)/4)`
-/

namespace A242477.P8015314901638809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Int.land (3 * n ^ 2 : ℤ) (-3) : ℚ) / 4)

end

end A242477.P8015314901638809

namespace A242477

/-- `round(and(3*n², -3)/4)` -/
def P8015314901638809.Spec : Prop :=
  ∀ n, P8015314901638809.a n = A242477 n

end A242477

/-! ## A242477.P16575288487068203634

`∑[floor(n/2)+and(n, -2)]`
-/

namespace A242477.P16575288487068203634
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 2⌋ + Int.land (n : ℤ) (-2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A242477.P16575288487068203634

namespace A242477

/-- `∑[floor(n/2)+and(n, -2)]` -/
def P16575288487068203634.Spec : Prop :=
  ∀ n, P16575288487068203634.a n = A242477 n

end A242477

/-! ## A242477.P5150532316219962876

`abs(∑[a(n-2)-3])` with `a(0)=0, a(1)=0`
-/

namespace A242477.P5150532316219962876
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 0] fun n f1 =>
  f1 (n - 2) - 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j|

end

end A242477.P5150532316219962876

namespace A242477

/-- `abs(∑[a(n-2)-3])` -/
def P5150532316219962876.Spec : Prop :=
  ∀ n, P5150532316219962876.a n = A242477 n

end A242477

/-! ## A242477.P889811656804858703

`-∑[a(n-2)-3]` with `a(0)=0, a(1)=0`
-/

namespace A242477.P889811656804858703
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 0] fun n f1 =>
  f1 (n - 2) - 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(∑ j ∈ Finset.range (n + 1), f1 j)

end

end A242477.P889811656804858703

namespace A242477

/-- `-∑[a(n-2)-3]` -/
def P889811656804858703.Spec : Prop :=
  ∀ n, P889811656804858703.a n = A242477 n

end A242477

/-! ## A242477.P6523908256046215033

`∑[∑[3-a(n-1)]]` with `a(0)=0, a(1)=0`
-/

namespace A242477.P6523908256046215033
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0, 0] fun n f2 =>
  3 - f2 (n - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A242477.P6523908256046215033

namespace A242477

/-- `∑[∑[3-a(n-1)]]` -/
def P6523908256046215033.Spec : Prop :=
  ∀ n, P6523908256046215033.a n = A242477 n

end A242477

/-! ## A242477.P12205778829769838948

`∑[∑[(n²-1)%4]+1]`
-/

namespace A242477.P12205778829769838948
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((n ^ 2 : ℤ) - 1) 4

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A242477.P12205778829769838948

namespace A242477

/-- `∑[∑[(n²-1)%4]+1]` -/
def P12205778829769838948.Spec : Prop :=
  ∀ n, P12205778829769838948.a n = A242477 n

end A242477

/-! ## A242477.P5464481365738734779

`∑[1-∑[(1-n²)%4]]`
-/

namespace A242477.P5464481365738734779
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (1 - (n ^ 2 : ℤ)) 4

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A242477.P5464481365738734779

namespace A242477

/-- `∑[1-∑[(1-n²)%4]]` -/
def P5464481365738734779.Spec : Prop :=
  ∀ n, P5464481365738734779.a n = A242477 n

end A242477

/-! ## A242477.P6985282541143911667

`∑[∑[3*char[lcm(2, n+1)]]]`
-/

namespace A242477.P6985282541143911667
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 2 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * (if ∃ j, f3 j = n then 1 else 0)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A242477.P6985282541143911667

namespace A242477

/-- `∑[∑[3*char[lcm(2, n+1)]]]` -/
def P6985282541143911667.Spec : Prop :=
  ∀ n, (P6985282541143911667.a n : ℤ) = A242477 n

end A242477

/-! ## A242477.P6510433552302672744

`∑[∑[∑[ogf(3x^2/(1+x))]]]`
-/

namespace A242477.P6510433552302672744
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 0, 3] [1, 1] n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A242477.P6510433552302672744

namespace A242477

/-- `∑[∑[∑[ogf(3x^2/(1+x))]]]` -/
def P6510433552302672744.Spec : Prop :=
  ∀ n, P6510433552302672744.a n = A242477 n

end A242477

/-! ## A242477.P13027211907192996485

`ogf(3x^2/(1-2x+2x^3-x^4))`
-/

namespace A242477.P13027211907192996485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 0, 3] [1, -2, 0, 2, -1] n

end

end A242477.P13027211907192996485

namespace A242477

/-- `ogf(3x^2/(1-2x+2x^3-x^4))` -/
def P13027211907192996485.Spec : Prop :=
  ∀ n, P13027211907192996485.a n = A242477 n

end A242477

/-! ## A242477.P5805497922283691652

`3*C(n, 2)-a(n-1)` with `a(0)=0`
-/

namespace A242477.P5805497922283691652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (3 * Nat.choose n 2 : ℤ) - a (n - 1)

end

end A242477.P5805497922283691652

namespace A242477

/-- `3*C(n, 2)-a(n-1)` -/
def P5805497922283691652.Spec : Prop :=
  ∀ n, P5805497922283691652.a n = A242477 n

end A242477

/-! ## A242477.P579558460598149346

`3*n-(3-a(n-2))` with `a(0)=0, a(1)=0`
-/

namespace A242477.P579558460598149346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0] fun n a =>
  (3 * n : ℤ) - (3 - a (n - 2))

end

end A242477.P579558460598149346

namespace A242477

/-- `3*n-(3-a(n-2))` -/
def P579558460598149346.Spec : Prop :=
  ∀ n, P579558460598149346.a n = A242477 n

end A242477

/-! ## A242477.P4609421358966058294

`a(n-2)-3+n+n+n` with `a(0)=0, a(1)=0`
-/

namespace A242477.P4609421358966058294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0] fun n a =>
  a (n - 2) - 3 + (n : ℤ) + (n : ℤ) + (n : ℤ)

end

end A242477.P4609421358966058294

namespace A242477

/-- `a(n-2)-3+n+n+n` -/
def P4609421358966058294.Spec : Prop :=
  ∀ n, P4609421358966058294.a n = A242477 n

end A242477

/-!
# A242480: a(n) = (n*(n+1)/2) mod n + sigma(n) mod n + antisigma(n) mod n.

The programs for A242480, the canonical program `A242480.P3191042440145874501` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A242480 has offset 1).

The definition of A242480 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A242480.P11769880307207456974

`A242481(n+1)*(n+1)`
-/

namespace A242480.P11769880307207456974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242481 (n + 1) * (n + 1 : ℤ)

end

end A242480.P11769880307207456974

namespace A242480

/-- `A242481(n+1)*(n+1)` -/
def P11769880307207456974.Spec : Prop :=
  ∀ n, P11769880307207456974.a n = A242480 (n + 1)

end A242480

/-! ## A242480.P18382460486574373633

`A000217(n+1)%(n+1)+A000203(n+1)%(n+1)+A024816(n+1)%(n+1)`
-/

namespace A242480.P18382460486574373633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000217 (n + 1)) (n + 1 : ℤ) + Int.tmod (A000203 (n + 1)) (n + 1 : ℤ) + Int.tmod (A024816 (n + 1)) (n + 1 : ℤ)

end

end A242480.P18382460486574373633

namespace A242480

/-- `A000217(n+1)%(n+1)+A000203(n+1)%(n+1)+A024816(n+1)%(n+1)` -/
def P18382460486574373633.Spec : Prop :=
  ∀ n, P18382460486574373633.a n = A242480 (n + 1)

end A242480

/-! ## A242480.P3191042440145874501

`A142150(n+1)+A054024(n+1)+A229110(n+1)`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A242480

/-- `A142150(n+1)+A054024(n+1)+A229110(n+1)` -/
def P3191042440145874501.Spec : Prop :=
  ∀ n, P3191042440145874501.a n = A242480 (n + 1)

theorem P3191042440145874501.correct : P3191042440145874501.Spec := by
  intro n
  simp only [A242480, Nat.add_sub_cancel]

end A242480

/-! ## A242480.P18124243126629614301

`A242481(n+1)+lcm(A028310(n), A242481(n+1))`
-/

namespace A242480.P18124243126629614301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242481 (n + 1) + (Int.lcm (A028310 n) (A242481 (n + 1)) : ℤ)

end

end A242480.P18124243126629614301

namespace A242480

/-- `A242481(n+1)+lcm(A028310(n), A242481(n+1))` -/
def P18124243126629614301.Spec : Prop :=
  ∀ n, P18124243126629614301.a n = A242480 (n + 1)

end A242480

/-! ## A242480.P16521334455358598969

`A029578(A242481(n+1)+A005408(n))`
-/

namespace A242480.P16521334455358598969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029578 (A242481 (n + 1) + A005408 n).toNat

end

end A242480.P16521334455358598969

namespace A242480

/-- `A029578(A242481(n+1)+A005408(n))` -/
def P16521334455358598969.Spec : Prop :=
  ∀ n, P16521334455358598969.a n = A242480 (n + 1)

end A242480

/-! ## A242480.P10646198111244535453

`A186731(A242481(n+1)+A016777(n))`
-/

namespace A242480.P10646198111244535453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186731 (A242481 (n + 1) + A016777 n).toNat

end

end A242480.P10646198111244535453

namespace A242480

/-- `A186731(A242481(n+1)+A016777(n))` -/
def P10646198111244535453.Spec : Prop :=
  ∀ n, P10646198111244535453.a n = A242480 (n + 1)

end A242480

/-!
# A242481: a(n) = ((n*(n+1)/2) mod n + sigma(n) mod n + antisigma(n) mod n) / n.

The programs for A242481, the canonical program `A242481.P14390238496426978029` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A242481 has offset 1).

The definition of A242481 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A242481.P14390238496426978029

`A242480(n+1)/(n+1)`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A242481

/-- `A242480(n+1)/(n+1)` -/
def P14390238496426978029.Spec : Prop :=
  ∀ n, P14390238496426978029.a n = (A242481 (n + 1) : ℚ)

end A242481

/-! ## A242481.P13773271368334687380

`(A000217(n+1)%(n+1)+A000203(n+1)%(n+1)+A024816(n+1)%(n+1))/(n+1)`
-/

namespace A242481.P13773271368334687380
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.tmod (A000217 (n + 1)) (n + 1 : ℤ) + Int.tmod (A000203 (n + 1)) (n + 1 : ℤ) + Int.tmod (A024816 (n + 1)) (n + 1 : ℤ) : ℚ) / (n + 1 : ℚ)

end

end A242481.P13773271368334687380

namespace A242481

/-- `(A000217(n+1)%(n+1)+A000203(n+1)%(n+1)+A024816(n+1)%(n+1))/(n+1)` -/
def P13773271368334687380.Spec : Prop :=
  ∀ n, P13773271368334687380.a n = (A242481 (n + 1) : ℚ)

end A242481

/-! ## A242481.P12379681960199081089

`(A142150(n+1)+A054024(n+1)+A229110(n+1))/(n+1)`
-/

namespace A242481.P12379681960199081089
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A142150 (n + 1) + A054024 (n + 1) + A229110 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A242481.P12379681960199081089

namespace A242481

/-- `(A142150(n+1)+A054024(n+1)+A229110(n+1))/(n+1)` -/
def P12379681960199081089.Spec : Prop :=
  ∀ n, P12379681960199081089.a n = (A242481 (n + 1) : ℚ)

end A242481

/-! ## A242481.P2656300796772830683

`A046698(A242480(n+1)-n)`
-/

namespace A242481.P2656300796772830683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046698 (A242480 (n + 1) - (n : ℤ)).toNat

end

end A242481.P2656300796772830683

namespace A242481

/-- `A046698(A242480(n+1)-n)` -/
def P2656300796772830683.Spec : Prop :=
  ∀ n, P2656300796772830683.a n = A242481 (n + 1)

end A242481

/-! ## A242481.P13218483745060027151

`A269735(A242480(n+1)-n)`
-/

namespace A242481.P13218483745060027151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269735 (A242480 (n + 1) - (n : ℤ)).toNat

end

end A242481.P13218483745060027151

namespace A242481

/-- `A269735(A242480(n+1)-n)` -/
def P13218483745060027151.Spec : Prop :=
  ∀ n, P13218483745060027151.a n = A242481 (n + 1)

end A242481

/-! ## A242481.P2767519573253291552

`((n+1)*A242480(n+1))%A242480(n+2)`
-/

namespace A242481.P2767519573253291552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((n + 1 : ℤ) * A242480 (n + 1)) (A242480 (n + 2))

end

end A242481.P2767519573253291552

namespace A242481

/-- `((n+1)*A242480(n+1))%A242480(n+2)` -/
def P2767519573253291552.Spec : Prop :=
  ∀ n, P2767519573253291552.a n = A242481 (n + 1)

end A242481

/-! ## A242481.P14057135575864902578

`A005843(A242480(n+1))%A005408(n)`
-/

namespace A242481.P14057135575864902578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A005843 (A242480 (n + 1)).toNat) (A005408 n)

end

end A242481.P14057135575864902578

namespace A242481

/-- `A005843(A242480(n+1))%A005408(n)` -/
def P14057135575864902578.Spec : Prop :=
  ∀ n, P14057135575864902578.a n = A242481 (n + 1)

end A242481

/-! ## A242481.P1584364943901478427

`n+1-A002024(∑[n+1]-A242480(n+1))`
-/

namespace A242481.P1584364943901478427
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A002024 (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A242480 (n + 1)).toNat

end

end A242481.P1584364943901478427

namespace A242481

/-- `n+1-A002024(∑[n+1]-A242480(n+1))` -/
def P1584364943901478427.Spec : Prop :=
  ∀ n, P1584364943901478427.a n = A242481 (n + 1)

end A242481

/-!
# A242482: Numbers n such that A242481(n) = ((n*(n+1)/2) mod n + sigma(n) mod n + antisigma(n) mod n) / n = 1.

The programs for A242482, the canonical program `A242482.P4940555900676613198` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A242482 has offset 1).

The definition of A242482 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6754 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A242482.P4940555900676613198

`eq[1, A242481(n+1)]+1`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A242482

/-- `eq[1, A242481(n+1)]+1` -/
def P4940555900676613198.Spec : Prop :=
  ∀ n, (P4940555900676613198.a n : ℤ) = A242482 (n + 1)

theorem P4940555900676613198.correct : P4940555900676613198.Spec := by
  intro n
  simp only [A242482, Nat.add_sub_cancel]

end A242482

/-! ## A242482.P18372887280661684917

`eq[n+1, A242480(n+1)]+1`
-/

namespace A242482.P18372887280661684917
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242480 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A242482.P18372887280661684917

namespace A242482

/-- `eq[n+1, A242480(n+1)]+1` -/
def P18372887280661684917.Spec : Prop :=
  ∀ n, (P18372887280661684917.a n : ℤ) = A242482 (n + 1)

end A242482

/-! ## A242482.P11003905230961896976

`A242481(a(n-1)+1)+a(n-1)` with `a(0)=2`
-/

namespace A242482.P11003905230961896976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A242481 (a (n - 1) + 1).toNat + a (n - 1)

end

end A242482.P11003905230961896976

namespace A242482

/-- `A242481(a(n-1)+1)+a(n-1)` -/
def P11003905230961896976.Spec : Prop :=
  ∀ n, P11003905230961896976.a n = A242482 (n + 1)

end A242482

/-! ## A242482.P5724392207283832839

`eq[3, A229110(a(A242481(n)))]` with `a(0)=5`
-/

namespace A242482.P5724392207283832839
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.rec [5] fun n f2 =>
  A229110 (f2 (A242481 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A242482.P5724392207283832839

namespace A242482

/-- `eq[3, A229110(a(A242481(n)))]` -/
def P5724392207283832839.Spec : Prop :=
  ∀ n, (P5724392207283832839.a n : ℤ) = A242482 (n + 1)

end A242482

/-! ## A242482.P14083887614514796118

`eq[n, A242480(A000038(n)+n)]`
-/

namespace A242482.P14083887614514796118
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242480 (A000038 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A242482.P14083887614514796118

namespace A242482

/-- `eq[n, A242480(A000038(n)+n)]` -/
def P14083887614514796118.Spec : Prop :=
  ∀ n, (P14083887614514796118.a n : ℤ) = A242482 (n + 1)

end A242482

/-! ## A242482.P17957323465351954147

`eq[1, A082784(a(A242481(n)))]` with `a(0)=0, a(1)=0`
-/

namespace A242482.P17957323465351954147
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0, 0] fun n f2 =>
  A082784 (f2 (A242481 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A242482.P17957323465351954147

namespace A242482

/-- `eq[1, A082784(a(A242481(n)))]` -/
def P17957323465351954147.Spec : Prop :=
  ∀ n, (P17957323465351954147.a n : ℤ) = A242482 (n + 1)

end A242482

/-! ## A242482.P13232820320394525412

`eq[1, A054024(a(A242481(n)))]` with `a(0)=3, a(1)=3`
-/

namespace A242482.P13232820320394525412
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [3, 3] fun n f2 =>
  A054024 (f2 (A242481 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A242482.P13232820320394525412

namespace A242482

/-- `eq[1, A054024(a(A242481(n)))]` -/
def P13232820320394525412.Spec : Prop :=
  ∀ n, (P13232820320394525412.a n : ℤ) = A242482 (n + 1)

end A242482

/-!
# A242483: Numbers n such that A242481(n) = ((n*(n+1)/2) mod n + sigma(n) mod n + antisigma(n) mod n) / n = 2.

The programs for A242483, the canonical program `A242483.P4194193378462052771` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A242483 has offset 1).

The definition of A242483 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6516 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A242483.P4194193378462052771

`2*lt[n, A054024(A004277(n))]`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A242483

/-- `2*lt[n, A054024(A004277(n))]` -/
def P4194193378462052771.Spec : Prop :=
  ∀ n, (P4194193378462052771.a n : ℤ) = A242483 (n + 1)

theorem P4194193378462052771.correct : P4194193378462052771.Spec := by
  intro n
  simp only [A242483, Nat.add_sub_cancel]

end A242483

/-! ## A242483.P7024269154515301718

`lt[1, A242481(n+1)]+1`
-/

namespace A242483.P7024269154515301718
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242481 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A242483.P7024269154515301718

namespace A242483

/-- `lt[1, A242481(n+1)]+1` -/
def P7024269154515301718.Spec : Prop :=
  ∀ n, (P7024269154515301718.a n : ℤ) = A242483 (n + 1)

end A242483

/-! ## A242483.P11523364984496759319

`eq[2*(n+1), A242480(n+1)]+1`
-/

namespace A242483.P11523364984496759319
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242480 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A242483.P11523364984496759319

namespace A242483

/-- `eq[2*(n+1), A242480(n+1)]+1` -/
def P11523364984496759319.Spec : Prop :=
  ∀ n, (P11523364984496759319.a n : ℤ) = A242483 (n + 1)

end A242483

/-! ## A242483.P17202473994667908937

`eq[3, A054024(a(A242481(n)))]` with `a(0)=30`
-/

namespace A242483.P17202473994667908937
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.rec [30] fun n f2 =>
  A054024 (f2 (A242481 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A242483.P17202473994667908937

namespace A242483

/-- `eq[3, A054024(a(A242481(n)))]` -/
def P17202473994667908937.Spec : Prop :=
  ∀ n, (P17202473994667908937.a n : ℤ) = A242483 (n + 1)

end A242483

/-! ## A242483.P18168948181738147649

`eq[1, A051700(a(A242481(n)))]` with `a(0)=0, a(1)=0`
-/

namespace A242483.P18168948181738147649
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0, 0] fun n f2 =>
  A051700 (f2 (A242481 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A242483.P18168948181738147649

namespace A242483

/-- `eq[1, A051700(a(A242481(n)))]` -/
def P18168948181738147649.Spec : Prop :=
  ∀ n, (P18168948181738147649.a n : ℤ) = A242483 (n + 1)

end A242483

/-! ## A242483.P828736222574364276

`eq[3, A242482(a(A242481(n)))]` with `a(0)=1, a(1)=1`
-/

namespace A242483.P828736222574364276
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n f2 =>
  A242482 (f2 (A242481 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A242483.P828736222574364276

namespace A242483

/-- `eq[3, A242482(a(A242481(n)))]` -/
def P828736222574364276.Spec : Prop :=
  ∀ n, (P828736222574364276.a n : ℤ) = A242483 (n + 1)

end A242483

/-! ## A242483.P1653812457511140503

`eq[n+1, A142150(A242480(n+1))]+1`
-/

namespace A242483.P1653812457511140503
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142150 (A242480 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A242483.P1653812457511140503

namespace A242483

/-- `eq[n+1, A142150(A242480(n+1))]+1` -/
def P1653812457511140503.Spec : Prop :=
  ∀ n, (P1653812457511140503.a n : ℤ) = A242483 (n + 1)

end A242483

/-!
# A242484: Numbers n such that antisigma(n) mod n = 0, where antisigma(n) = A024816(n) = sum of numbers less than n which do not divide n.

The programs for A242484, there is no canonical definition to state claims against.
-/

/-! ## A242484.P3389163713361228601

`A159907(A028310(n))-A000007(n)`
-/

namespace A242484.P3389163713361228601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159907 (A028310 n).toNat - A000007 n

end

end A242484.P3389163713361228601

/-! ## A242484.P15809536140422675788

`A159907(A134478(∑[n]))-A000007(n)`
-/

namespace A242484.P15809536140422675788
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159907 (A134478 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat - A000007 n

end

end A242484.P15809536140422675788

/-! ## A242484.P14463798082307578119

`A159907(A000007(n)+n)-A000007(n)`
-/

namespace A242484.P14463798082307578119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159907 (A000007 n + (n : ℤ)).toNat - A000007 n

end

end A242484.P14463798082307578119

/-! ## A242484.P2017053945176937144

`A159907(gcd(n, A022144(n)))-A000007(n)`
-/

namespace A242484.P2017053945176937144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159907 (Int.gcd (n : ℤ) (A022144 n)) - A000007 n

end

end A242484.P2017053945176937144

/-! ## A242484.P4375039188277064441

`∏{e}[A000079(n), A159907(#)]`
-/

namespace A242484.P4375039188277064441
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A159907 (Nat.factorization (f1 n).natAbs p)

end

end A242484.P4375039188277064441

/-!
# A242485: Possible values of A242480(n) in increasing order.

The programs for A242485, there is no canonical definition to state claims against.
-/

/-! ## A242485.P16629411473449136258

`comp[A242486(n+1)]`
-/

namespace A242485.P16629411473449136258
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242486 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A242485.P16629411473449136258

/-! ## A242485.P12139497518145990378

`eq[1, char[A242480(n+1)]]`
-/

namespace A242485.P12139497518145990378
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242480 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A242485.P12139497518145990378

/-! ## A242485.P12580185185123551839

`comp[and(comp[(n+1)*A242481(n+1)], -1)]`
-/

namespace A242485.P12580185185123551839
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A242481 (n + 1)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n : ℤ) (-1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A242485.P12580185185123551839

/-! ## A242485.P12591895517904823095

`comp[record[A242486(A065648(n))]]`
-/

namespace A242485.P12591895517904823095
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242486 (A065648 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A242485.P12591895517904823095

/-! ## A242485.P8430219669291477857

`comp[record[A242486(A134478(n))]]`
-/

namespace A242485.P8430219669291477857
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242486 (A134478 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A242485.P8430219669291477857

/-! ## A242485.P5461920794965388108

`comp[A000027(comp[A242480(n+1)])]`
-/

namespace A242485.P5461920794965388108
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242480 (n + 1)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A242485.P5461920794965388108

/-! ## A242485.P14471245895878154469

`comp[A014683(comp[A242480(n+1)])]`
-/

namespace A242485.P14471245895878154469
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242480 (n + 1)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014683 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A242485.P14471245895878154469

/-! ## A242485.P7440624112991399416

`comp[A028310(comp[A242480(n+1)])]`
-/

namespace A242485.P7440624112991399416
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242480 (n + 1)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A242485.P7440624112991399416

/-! ## A242485.P1559507022235498492

`comp[A245092(comp[A242480(n+1)])]`
-/

namespace A242485.P1559507022235498492
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242480 (n + 1)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245092 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A242485.P1559507022235498492

/-!
# A242486: Numbers n such that A242480(x) = n has no solution.

The programs for A242486, there is no canonical definition to state claims against.
-/

/-! ## A242486.P4355185413568672781

`comp[A242480(n+1)]`
-/

namespace A242486.P4355185413568672781
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242480 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A242486.P4355185413568672781

/-! ## A242486.P15113829978676633521

`comp[(n+1)*A242481(n+1)]`
-/

namespace A242486.P15113829978676633521
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A242481 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A242486.P15113829978676633521

/-! ## A242486.P12008785116835400683

`eq[char[A242480(n+1)], A000038(n)]`
-/

namespace A242486.P12008785116835400683
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242480 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A242486.P12008785116835400683

/-! ## A242486.P14578032834067717776

`eq[char[A242480(n+2)], A000007(n)]`
-/

namespace A242486.P14578032834067717776
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242480 (n + 2)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A242486.P14578032834067717776

/-! ## A242486.P11778155575347506433

`eq[char[A242480(n+1)], A158678(n+1)]`
-/

namespace A242486.P11778155575347506433
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242480 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158678 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A242486.P11778155575347506433

/-! ## A242486.P2984591875941223430

`eq[char[A242480(n+1)], A142150(2*n+1)]`
-/

namespace A242486.P2984591875941223430
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242480 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142150 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A242486.P2984591875941223430

/-!
# A242487: Numbers k such that (2*k)! + k! + 1 is prime.

The programs for A242487, there is no canonical definition to state claims against.
-/

/-! ## A242487.P13712506884657104511

`∑[xor(A002805(n+1), A261244(n+1))]`
-/

namespace A242487.P13712506884657104511
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A002805 (n + 1)) (A261244 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A242487.P13712506884657104511

/-!
# A242489: Smallest even k such that lpf(k-1) = prime(n), while lpf(k-3) > prime(n), where lpf=least prime factor (A020639).

The programs for A242489, there is no canonical definition to state claims against.
-/

/-! ## A242489.P2308233563903202557

`2*A173979(n+2)`
-/

namespace A242489.P2308233563903202557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A173979 (n + 2)

end

end A242489.P2308233563903202557

/-! ## A242489.P4297884372861159974

`A173979(A020725(n+1))+A173979(n+2)`
-/

namespace A242489.P4297884372861159974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173979 (A020725 (n + 1)).toNat + A173979 (n + 2)

end

end A242489.P4297884372861159974

/-! ## A242489.P7917427445259813951

`A173979(A000027(n+2))+A173979(n+2)`
-/

namespace A242489.P7917427445259813951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173979 (A000027 (n + 2)).toNat + A173979 (n + 2)

end

end A242489.P7917427445259813951

/-! ## A242489.P961543955766049103

`∑{d}[A174022(n+1), A173979(n+2)-and(4, #²)]`
-/

namespace A242489.P961543955766049103
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174022 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, (A173979 (n + 2) - (Nat.land 4 (d ^ 2) : ℤ))

end

end A242489.P961543955766049103

/-! ## A242489.P5660913633682000536

`A004277(A173979(n+2))`
-/

namespace A242489.P5660913633682000536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A173979 (n + 2)).toNat

end

end A242489.P5660913633682000536

/-!
# A242490: Smallest even number k such that lpf(k-3) = prime(n) while lpf(k-1) > lpf(k-3), where lpf=least prime factor (A020639).

The programs for A242490, there is no canonical definition to state claims against.
-/

/-! ## A242490.P9404763920131492695

`A340468(n+2)+1`
-/

namespace A242490.P9404763920131492695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340468 (n + 2) + 1

end

end A242490.P9404763920131492695

/-! ## A242490.P8522127842581138531

`A000203(A340468(n+2))`
-/

namespace A242490.P8522127842581138531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A340468 (n + 2)).toNat

end

end A242490.P8522127842581138531

/-! ## A242490.P5528461320856915576

`A076605(A061216(n+2))+1`
-/

namespace A242490.P5528461320856915576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076605 (A061216 (n + 2)).toNat + 1

end

end A242490.P5528461320856915576

/-!
# A242491: Numbers avoiding subtractive notation when written in Roman numerals.

The programs for A242491, there is no canonical definition to state claims against.
-/

/-! ## A242491.P8618434972299153184

`∑[A135322(val(n+1, 2))]`
-/

namespace A242491.P8618434972299153184
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135322 (SequenceMachineLib.valuation (n + 1) 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A242491.P8618434972299153184

/-! ## A242491.P6343796481189299790

`A007094(2*(n+1))/2`
-/

namespace A242491.P6343796481189299790
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007094 (2 * (n + 1)) : ℚ) / 2

end

end A242491.P6343796481189299790

/-! ## A242491.P12986291028362788262

`lt[1, C(8, A054055(2*n))]`
-/

namespace A242491.P12986291028362788262
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 8 (A054055 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A242491.P12986291028362788262

/-! ## A242491.P4739386729569879505

`Δ[∑[A007094(2*n)]/2]`
-/

namespace A242491.P4739386729569879505
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007094 (2 * n)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℤ) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A242491.P4739386729569879505

/-! ## A242491.P12457289010305570439

`lt[n*A102681(2*n), n]`
-/

namespace A242491.P12457289010305570439
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A102681 (2 * n)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A242491.P12457289010305570439

/-! ## A242491.P13357270183570821119

`eq[round(1/acot(n)), A222244(n)]`
-/

namespace A242491.P13357270183570821119
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (1 / SequenceMachineLib.acot (n : ℝ))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222244 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A242491.P13357270183570821119

/-! ## A242491.P2735260012052292680

`comp[A120433(n+1)-1]+1`
-/

namespace A242491.P2735260012052292680
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120433 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A242491.P2735260012052292680

/-! ## A242491.P6747025275945285550

`floor(A007094(n+2+n)/2)`
-/

namespace A242491.P6747025275945285550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A007094 (n + 2 + n) : ℚ) / 2⌋

end

end A242491.P6747025275945285550

/-! ## A242491.P2715484126655354247

`eq[n, A093783(abs(1-n)+1)]`
-/

namespace A242491.P2715484126655354247
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093783 (|1 - (n : ℤ)| + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A242491.P2715484126655354247

/-! ## A242491.P14073548164083994788

`record[gcd(n+1, A093783(n+1))]`
-/

namespace A242491.P14073548164083994788
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A093783 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A242491.P14073548164083994788

/-!
# A242492: For any integer m > 1, the m-th term of the sequence is the minimal squarefree integer x with exactly m prime divisors such that x+1 and x+2 are also squarefree integers with exactly m prime divisors.

The programs for A242492, there is no canonical definition to state claims against.
-/

/-! ## A242492.P3290714504354345123

`A093550(n+2)-1`
-/

namespace A242492.P3290714504354345123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093550 (n + 2) - 1

end

end A242492.P3290714504354345123

/-! ## A242492.P11067863660130797544

`xor(3, A093550(comp[C(n, 12)]))`
-/

namespace A242492.P11067863660130797544
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 12

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 3 (A093550 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n))

end

end A242492.P11067863660130797544

/-! ## A242492.P8024372995968493233

`xor(3, A093550(A100637(n)))`
-/

namespace A242492.P8024372995968493233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 3 (A093550 (A100637 n).toNat)

end

end A242492.P8024372995968493233

/-!
# A242493: a(n) is the number of not-sqrt-smooth numbers ("jagged" numbers) not exceeding n. This is the counting function of A064052.

The programs for A242493, the canonical program `A242493.P16512276420622633304` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A242493 has offset 1).

The definition of A242493 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A064775, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A242493.P16512276420622633304

`n+1-A064775(n+1)`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A242493

/-- `n+1-A064775(n+1)` -/
def P16512276420622633304.Spec : Prop :=
  ∀ n, P16512276420622633304.a n = A242493 (n + 1)

theorem P16512276420622633304.correct : P16512276420622633304.Spec := by
  intro n
  simp only [A242493, Nat.add_sub_cancel]

end A242493

/-! ## A242493.P8577962175330499405

`∑[∑{p}[n+1, ceil((#-sqrt(n+1))/n)]]`
-/

namespace A242493.P8577962175330499405
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), ⌈((p : ℝ) - Real.sqrt (n + 1 : ℝ)) / (n : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A242493.P8577962175330499405

namespace A242493

/-- `∑[∑{p}[n+1, ceil((#-sqrt(n+1))/n)]]` -/
def P8577962175330499405.Spec : Prop :=
  ∀ n, P8577962175330499405.a n = A242493 (n + 1)

end A242493

/-! ## A242493.P13645807901721560258

`∑[A341642(n+1)]`
-/

namespace A242493.P13645807901721560258
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341642 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A242493.P13645807901721560258

namespace A242493

/-- `∑[A341642(n+1)]` -/
def P13645807901721560258.Spec : Prop :=
  ∀ n, P13645807901721560258.a n = A242493 (n + 1)

end A242493

/-! ## A242493.P7073586433979025208

`∑[char[A064052(n+1)-1]]`
-/

namespace A242493.P7073586433979025208
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064052 (n + 1) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A242493.P7073586433979025208

namespace A242493

/-- `∑[char[A064052(n+1)-1]]` -/
def P7073586433979025208.Spec : Prop :=
  ∀ n, (P7073586433979025208.a n : ℤ) = A242493 (n + 1)

end A242493

/-! ## A242493.P12714804070309399440

`∑[char[lt[n+1, A006530(n+1)²]]]`
-/

namespace A242493.P12714804070309399440
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 1) ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f3 j : ℤ) < f4 j) n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A242493.P12714804070309399440

namespace A242493

/-- `∑[char[lt[n+1, A006530(n+1)²]]]` -/
def P12714804070309399440.Spec : Prop :=
  ∀ n, (P12714804070309399440.a n : ℤ) = A242493 (n + 1)

end A242493

/-! ## A242493.P17933961131377847970

`∑[char[(n+2)%A006530(n+2)²-1]]`
-/

namespace A242493.P17933961131377847970
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 2 : ℤ) (A006530 (n + 2) ^ 2) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A242493.P17933961131377847970

namespace A242493

/-- `∑[char[(n+2)%A006530(n+2)²-1]]` -/
def P17933961131377847970.Spec : Prop :=
  ∀ n, (P17933961131377847970.a n : ℤ) = A242493 (n + 1)

end A242493

/-! ## A242493.P16910266954816063858

`∑[A010051(A140271(n+1))]`
-/

namespace A242493.P16910266954816063858
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (A140271 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A242493.P16910266954816063858

namespace A242493

/-- `∑[A010051(A140271(n+1))]` -/
def P16910266954816063858.Spec : Prop :=
  ∀ n, P16910266954816063858.a n = A242493 (n + 1)

end A242493

/-! ## A242493.P14415409675544266909

`∑[A001221(n+1)-A063962(n+1)]`
-/

namespace A242493.P14415409675544266909
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1) - A063962 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A242493.P14415409675544266909

namespace A242493

/-- `∑[A001221(n+1)-A063962(n+1)]` -/
def P14415409675544266909.Spec : Prop :=
  ∀ n, P14415409675544266909.a n = A242493 (n + 1)

end A242493

/-! ## A242493.P10613852842303980506

`∑[char[lt[∏{p}[n, n-#²], 0]-1]]`
-/

namespace A242493.P10613852842303980506
noncomputable section

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f4 n), ((n : ℤ) - (p ^ 2 : ℤ))

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f3 j < (f5 j : ℤ)) n : ℤ) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A242493.P10613852842303980506

namespace A242493

/-- `∑[char[lt[∏{p}[n, n-#²], 0]-1]]` -/
def P10613852842303980506.Spec : Prop :=
  ∀ n, (P10613852842303980506.a n : ℤ) = A242493 (n + 1)

end A242493

/-! ## A242493.P3399234470334470310

`char[lt[∏{p}[n, n-#²], 0]-1]+a(n-1)` with `a(0)=0`
-/

namespace A242493.P3399234470334470310
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f3 n), ((n : ℤ) - (p ^ 2 : ℤ))

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f2 j < (f4 j : ℤ)) n : ℤ) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  (if ∃ j, f1 j = (n : ℤ) then 1 else 0) + a (n - 1)

end

end A242493.P3399234470334470310

namespace A242493

/-- `char[lt[∏{p}[n, n-#²], 0]-1]+a(n-1)` -/
def P3399234470334470310.Spec : Prop :=
  ∀ n, (P3399234470334470310.a n : ℤ) = A242493 (n + 1)

end A242493

/-!
# A242495: Number of length n words on {1,2,3,4} with at most one consecutive 1 and at most two consecutive 2's and at most three consecutive 3's and at most four consecutive 4's.

The programs for A242495, there is no canonical definition to state claims against.
-/

/-! ## A242495.P6273271778982674846

`record[A242464(A052905(n))]`
-/

namespace A242495.P6273271778982674846
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242464 (A052905 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A242495.P6273271778982674846

/-! ## A242495.P2934055776298518432

`A242464(A052905(n+2))`
-/

namespace A242495.P2934055776298518432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242464 (A052905 (n + 2)).toNat

end

end A242495.P2934055776298518432

/-! ## A242495.P3598823465348470379

`A242464(eq[4, A025581(n)])`
-/

namespace A242495.P3598823465348470379
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242464 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A242495.P3598823465348470379

/-! ## A242495.P9951534857452090007

`record[A242464(A055999(n)+1)]`
-/

namespace A242495.P9951534857452090007
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242464 (A055999 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A242495.P9951534857452090007

/-! ## A242495.P16725487674077048185

`record[A242464(abs(A046691(n))-1)]`
-/

namespace A242495.P16725487674077048185
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242464 (|A046691 n| - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A242495.P16725487674077048185

/-! ## A242495.P10207035621256932965

`record[A242464(A046691(n+1)-1)]`
-/

namespace A242495.P10207035621256932965
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242464 (A046691 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A242495.P10207035621256932965

/-! ## A242495.P17651223248936796922

`record[A242464(A027379(n+1)-2)]`
-/

namespace A242495.P17651223248936796922
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242464 (A027379 (n + 1) - 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A242495.P17651223248936796922

/-! ## A242495.P521067737767001643

`record[A242464(A034856(n+2)-3)]`
-/

namespace A242495.P521067737767001643
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242464 (A034856 (n + 2) - 3).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A242495.P521067737767001643

/-! ## A242495.P8474419960634096340

`record[A242464(A083920(A055999(n)))]`
-/

namespace A242495.P8474419960634096340
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242464 (A083920 (A055999 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A242495.P8474419960634096340

/-!
# A242496: a(n)=sum_{j=0..n} sum_{i=0..j} F(i)*L(j), where F(n)=A000045(n) and L(n)=A000032(n).

The programs for A242496, the canonical program `A242496.P2613612296024816382` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A242496 has offset 0).

The definition of A242496 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A242496.P2613612296024816382

`A001519(n+2)-A000032(n+2)+A059841(n)`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A242496

/-- `A001519(n+2)-A000032(n+2)+A059841(n)` -/
def P2613612296024816382.Spec : Prop :=
  ∀ n, P2613612296024816382.a n = A242496 n

theorem P2613612296024816382.correct : P2613612296024816382.Spec := by
  intro n
  simp only [A242496]

end A242496

/-! ## A242496.P6814147412059788283

`A242300(n)-A027941(n)`
-/

namespace A242496.P6814147412059788283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242300 n - A027941 n

end

end A242496.P6814147412059788283

namespace A242496

/-- `A242300(n)-A027941(n)` -/
def P6814147412059788283.Spec : Prop :=
  ∀ n, P6814147412059788283.a n = A242496 n

theorem P6814147412059788283.correct : P6814147412059788283.Spec := by
  intro n
  simp only [A242496, Nat.add_sub_cancel, A242496.P6814147412059788283.a, A242496.P2613612296024816382.a, A000032, A000032.P8352177345629330861.a, A001519, A001519.P3024448327137573148.a, A027941, A027941.P8226647174057246379.a, A059841, A059841.P7264174615531153985.a, A242300, A242300.P18198570952785436576.a, A000045, A000045.P11838749114346432762.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A242496

/-! ## A242496.P6921629790584365189

`∑[∑[A000045(n)]*A000032(n)]`
-/

namespace A242496.P6921629790584365189
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) * A000032 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A242496.P6921629790584365189

namespace A242496

/-- `∑[∑[A000045(n)]*A000032(n)]` -/
def P6921629790584365189.Spec : Prop :=
  ∀ n, P6921629790584365189.a n = A242496 n

end A242496

/-! ## A242496.P1399699315654882070

`∑[A000032(n)*A000071(n+2)]`
-/

namespace A242496.P1399699315654882070
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 n * A000071 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A242496.P1399699315654882070

namespace A242496

/-- `∑[A000032(n)*A000071(n+2)]` -/
def P1399699315654882070.Spec : Prop :=
  ∀ n, P1399699315654882070.a n = A242496 n

end A242496

/-! ## A242496.P13898074533386608832

`A122367(n+1)-A014217(n+2)`
-/

namespace A242496.P13898074533386608832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122367 (n + 1) - A014217 (n + 2)

end

end A242496.P13898074533386608832

namespace A242496

/-- `A122367(n+1)-A014217(n+2)` -/
def P13898074533386608832.Spec : Prop :=
  ∀ n, P13898074533386608832.a n = A242496 n

end A242496

/-! ## A242496.P18173951105407702492

`A001519(n+2)-A014217(n+2)`
-/

namespace A242496.P18173951105407702492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001519 (n + 2) - A014217 (n + 2)

end

end A242496.P18173951105407702492

namespace A242496

/-- `A001519(n+2)-A014217(n+2)` -/
def P18173951105407702492.Spec : Prop :=
  ∀ n, P18173951105407702492.a n = A242496 n

end A242496

/-! ## A242496.P10087830397291603755

`∑[Δ[A001610(n)]*A000071(n+2)]`
-/

namespace A242496.P10087830397291603755
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001610 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n) * A000071 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A242496.P10087830397291603755

namespace A242496

/-- `∑[Δ[A001610(n)]*A000071(n+2)]` -/
def P10087830397291603755.Spec : Prop :=
  ∀ n, P10087830397291603755.a n = A242496 n

end A242496

/-! ## A242496.P17683861067717630341

`∑[(A001612(n)-1)*A000071(n+2)]`
-/

namespace A242496.P17683861067717630341
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A001612 n - 1) * A000071 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A242496.P17683861067717630341

namespace A242496

/-- `∑[(A001612(n)-1)*A000071(n+2)]` -/
def P17683861067717630341.Spec : Prop :=
  ∀ n, P17683861067717630341.a n = A242496 n

end A242496

/-! ## A242496.P4084091315684227605

`A000071(2*n+3)-A301653(n+1)`
-/

namespace A242496.P4084091315684227605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000071 (2 * n + 3) - A301653 (n + 1)

end

end A242496.P4084091315684227605

namespace A242496

/-- `A000071(2*n+3)-A301653(n+1)` -/
def P4084091315684227605.Spec : Prop :=
  ∀ n, P4084091315684227605.a n = A242496 n

end A242496

/-! ## A242496.P14149577604414181571

`∑[Δ[A000204(n+1)]*A000071(n+2)]`
-/

namespace A242496.P14149577604414181571
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000204 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n) * A000071 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A242496.P14149577604414181571

namespace A242496

/-- `∑[Δ[A000204(n+1)]*A000071(n+2)]` -/
def P14149577604414181571.Spec : Prop :=
  ∀ n, P14149577604414181571.a n = A242496 n

end A242496

/-! ## A242496.P5623853650751763259

`∑[∑[A212804(n+1)]*A127218(2*n)]`
-/

namespace A242496.P5623853650751763259
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) * A127218 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A242496.P5623853650751763259

namespace A242496

/-- `∑[∑[A212804(n+1)]*A127218(2*n)]` -/
def P5623853650751763259.Spec : Prop :=
  ∀ n, P5623853650751763259.a n = A242496 n

end A242496

/-! ## A242496.P12780883540130315739

`∑[∑[A302126(2*n)]*A302126(2*n+1)]`
-/

namespace A242496.P12780883540130315739
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302126 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) * A302126 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A242496.P12780883540130315739

namespace A242496

/-- `∑[∑[A302126(2*n)]*A302126(2*n+1)]` -/
def P12780883540130315739.Spec : Prop :=
  ∀ n, P12780883540130315739.a n = A242496 n

end A242496

/-! ## A242496.P9153966615428370901

`∑[∑[A303427(2*n+1)]*A303427(2*n)]`
-/

namespace A242496.P9153966615428370901
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303427 (2 * n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) * A303427 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A242496.P9153966615428370901

namespace A242496

/-- `∑[∑[A303427(2*n+1)]*A303427(2*n)]` -/
def P9153966615428370901.Spec : Prop :=
  ∀ n, P9153966615428370901.a n = A242496 n

end A242496

/-! ## A242496.P12865049362047357904

`∑[Δ[A339572(2*n+1)]*A339572(2*n)]`
-/

namespace A242496.P12865049362047357904
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339572 (2 * n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n) * A339572 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A242496.P12865049362047357904

namespace A242496

/-- `∑[Δ[A339572(2*n+1)]*A339572(2*n)]` -/
def P12865049362047357904.Spec : Prop :=
  ∀ n, P12865049362047357904.a n = A242496 n

end A242496

/-! ## A242496.P12347267259185792685

`A000032(2*n+1)+a(n-2)-A000032(n+1)` with `a(0)=0, a(1)=1`
-/

namespace A242496.P12347267259185792685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  A000032 (2 * n + 1) + (a (n - 2) - A000032 (n + 1))

end

end A242496.P12347267259185792685

namespace A242496

/-- `A000032(2*n+1)+a(n-2)-A000032(n+1)` -/
def P12347267259185792685.Spec : Prop :=
  ∀ n, P12347267259185792685.a n = A242496 n

end A242496

/-! ## A242496.P13207571610378952195

`A027941(n+1)+A281362(n)-A129696(n+2)`
-/

namespace A242496.P13207571610378952195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027941 (n + 1) + (A281362 n - A129696 (n + 2))

end

end A242496.P13207571610378952195

namespace A242496

/-- `A027941(n+1)+A281362(n)-A129696(n+2)` -/
def P13207571610378952195.Spec : Prop :=
  ∀ n, P13207571610378952195.a n = A242496 n

end A242496

/-! ## A242496.P17603626512945106795

`A000035(n)+A000071(n+1)*A000204(n+2)`
-/

namespace A242496.P17603626512945106795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 n + A000071 (n + 1) * A000204 (n + 2)

end

end A242496.P17603626512945106795

namespace A242496

/-- `A000035(n)+A000071(n+1)*A000204(n+2)` -/
def P17603626512945106795.Spec : Prop :=
  ∀ n, P17603626512945106795.a n = A242496 n

end A242496

/-! ## A242496.P15336342385081796135

`∑[(A212804(n)+A000045(n+1))*A000071(n+2)]`
-/

namespace A242496.P15336342385081796135
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A212804 n + A000045 (n + 1)) * A000071 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A242496.P15336342385081796135

namespace A242496

/-- `∑[(A212804(n)+A000045(n+1))*A000071(n+2)]` -/
def P15336342385081796135.Spec : Prop :=
  ∀ n, P15336342385081796135.a n = A242496 n

end A242496

/-! ## A242496.P11947900408055961669

`A190173(n+1)+A000045(n+1)*A000071(n+1)`
-/

namespace A242496.P11947900408055961669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190173 (n + 1) + A000045 (n + 1) * A000071 (n + 1)

end

end A242496.P11947900408055961669

namespace A242496

/-- `A190173(n+1)+A000045(n+1)*A000071(n+1)` -/
def P11947900408055961669.Spec : Prop :=
  ∀ n, P11947900408055961669.a n = A242496 n

end A242496

/-! ## A242496.P17421836996285723293

`∑[(2*A000045(n+1)-A000045(n))*A000071(n+2)]`
-/

namespace A242496.P17421836996285723293
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * A000045 (n + 1) - A000045 n) * A000071 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A242496.P17421836996285723293

namespace A242496

/-- `∑[(2*A000045(n+1)-A000045(n))*A000071(n+2)]` -/
def P17421836996285723293.Spec : Prop :=
  ∀ n, P17421836996285723293.a n = A242496 n

end A242496

/-!
# A242497: Sides of (Heronian) triangles where sides are consecutive integers and area is an integer.

The programs for A242497, there is no canonical definition to state claims against.
-/

/-! ## A242497.P13459780470111162987

`A259559(A060828(n))+n`
-/

namespace A242497.P13459780470111162987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259559 (A060828 n).toNat + (n : ℤ)

end

end A242497.P13459780470111162987

/-! ## A242497.P2768117525003764218

`∑[∏{d}[A112798(A201648(n+1)), #]]+1`
-/

namespace A242497.P2768117525003764218
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112798 (A201648 (n + 1)).toNat

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f2 n).natAbs, d

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A242497.P2768117525003764218

/-!
# A242498: Number T(n,k) of compositions of n, where k is the difference between the number of odd parts and the number of even parts; triangle T(n,k), n>=0, -floor(n/2)+(n mod 2)<=k<=n, read by rows.

The programs for A242498, there is no canonical definition to state claims against.
-/

/-! ## A242498.P15381023154956167668

`A000930(A188462(A290312(n)))%4`
-/

namespace A242498.P15381023154956167668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000930 (A188462 (A290312 n).toNat).toNat) 4

end

end A242498.P15381023154956167668

/-! ## A242498.P17063944677407469550

`A046213(A107452(3*(n+2)))*A240009(n)`
-/

namespace A242498.P17063944677407469550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046213 (A107452 (3 * (n + 2))).toNat * A240009 n

end

end A242498.P17063944677407469550

/-! ## A242498.P339289527091383982

`and(A361150(A361111(n+2)), A361158(n+3))`
-/

namespace A242498.P339289527091383982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A361150 (A361111 (n + 2)).toNat) (A361158 (n + 3))

end

end A242498.P339289527091383982

/-!
# A242499: Number of compositions of n, where the difference between the number of odd parts and the number of even parts is 1.

The programs for A242499, there is no canonical definition to state claims against.
-/

/-! ## A242499.P16029054758635323298

`(A098123(n+3)-A098123(n+1))/2`
-/

namespace A242499.P16029054758635323298
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A098123 (n + 3) - A098123 (n + 1) : ℚ) / 2

end

end A242499.P16029054758635323298

/-! ## A242499.P9072793255962741056

`A242498(A194073(n+1))`
-/

namespace A242499.P9072793255962741056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242498 (A194073 (n + 1)).toNat

end

end A242499.P9072793255962741056

/-! ## A242499.P13111699307482134788

`A242498(A242477(n+1)+1)`
-/

namespace A242499.P13111699307482134788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242498 (A242477 (n + 1) + 1).toNat

end

end A242499.P13111699307482134788

/-! ## A242499.P8467726539769472661

`A242498(A004652(n)+∑[n+1])`
-/

namespace A242499.P8467726539769472661
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242498 (A004652 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A242499.P8467726539769472661

/-! ## A242499.P12835053144842336150

`A242498(∑[A001651(n+1)]+n%2)`
-/

namespace A242499.P12835053144842336150
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001651 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242498 (∑ j ∈ Finset.range (n + 1), f1 j + ((n % 2 : ℕ) : ℤ)).toNat

end

end A242499.P12835053144842336150

