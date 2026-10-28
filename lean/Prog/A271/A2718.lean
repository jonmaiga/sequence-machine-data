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
import Seq.B000.C011
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C019
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C031
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C039
import Seq.B000.C040
import Seq.B000.C041
import Seq.B000.C042
import Seq.B000.C043
import Seq.B000.C044
import Seq.B000.C045
import Seq.B000.C049
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C008
import Seq.B001.C010
import Seq.B001.C011
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C004
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
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
import Seq.Opaque.C016
import Seq.Opaque.C017
import Seq.Opaque.C018
import Seq.Opaque.C019
import Seq.Opaque.C020

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A271800: Five steps forward, four steps back.

The programs for A271800, the canonical program `A271800.P249619160150413481` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A271800 has offset 0).

The definition of A271800 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A271800.P8052734818483036577

`ogf((x+x^2+x^3+x^4+x^5-x^6-x^7-x^8-x^9)/(1-x-x^9+x^10))`
-/

namespace A271800.P8052734818483036577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, 1, 1, 1, 1, -1, -1, -1, -1] [1, -1, 0, 0, 0, 0, 0, 0, 0, -1, 1] n

end

end A271800.P8052734818483036577

namespace A271800

/-- `ogf((x+x^2+x^3+x^4+x^5-x^6-x^7-x^8-x^9)/(1-x-x^9+x^10))` -/
def P8052734818483036577.Spec : Prop :=
  ∀ n, P8052734818483036577.a n = A271800 n

end A271800

/-! ## A271800.P249619160150413481

`a(n-1)+a(n-9)-a(n-10)` with `a(0)=0, a(1)=1, a(2)=2, a(3)=3, a(4)=4, a(5)=5, a(6)=4, a(7)=3, a(8)=2, a(9)=1`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A271800

/-- `a(n-1)+a(n-9)-a(n-10)` -/
def P249619160150413481.Spec : Prop :=
  ∀ n, P249619160150413481.a n = A271800 n

theorem P249619160150413481.correct : P249619160150413481.Spec := by
  intro n
  simp only [A271800]

end A271800

/-! ## A271800.P278745123779947741

`∑[A057428(n)^A087483(A004396(n))]`
-/

namespace A271800.P278745123779947741
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A057428 n : ℚ) ^ (A087483 (A004396 n).toNat : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A271800.P278745123779947741

namespace A271800

/-- `∑[A057428(n)^A087483(A004396(n))]` -/
def P278745123779947741.Spec : Prop :=
  ∀ n, P278745123779947741.a n = (A271800 n : ℚ)

end A271800

/-! ## A271800.P8819937084955043124

`n-∑[and(2, dr(A008579(n+1)))]`
-/

namespace A271800.P8819937084955043124
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 2 (SequenceMachineLib.digitalRoot (A008579 (n + 1)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A271800.P8819937084955043124

namespace A271800

/-- `n-∑[and(2, dr(A008579(n+1)))]` -/
def P8819937084955043124.Spec : Prop :=
  ∀ n, P8819937084955043124.a n = A271800 n

end A271800

/-! ## A271800.P18209480402520099242

`∑[and(2, A322042(A322042(n+2)+1))]-n`
-/

namespace A271800.P18209480402520099242
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 2 (A322042 (A322042 (n + 2) + 1).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A271800.P18209480402520099242

namespace A271800

/-- `∑[and(2, A322042(A322042(n+2)+1))]-n` -/
def P18209480402520099242.Spec : Prop :=
  ∀ n, P18209480402520099242.a n = A271800 n

end A271800

/-! ## A271800.P6604955358713743018

`∑[A057428(n)^A052413(2*(n+2))]`
-/

namespace A271800.P6604955358713743018
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A057428 n : ℚ) ^ (A052413 (2 * (n + 2)) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A271800.P6604955358713743018

namespace A271800

/-- `∑[A057428(n)^A052413(2*(n+2))]` -/
def P6604955358713743018.Spec : Prop :=
  ∀ n, P6604955358713743018.a n = (A271800 n : ℚ)

end A271800

/-! ## A271800.P9976882655839375782

`∑[A062157(2*n)^A052413(2*(n+2))]`
-/

namespace A271800.P9976882655839375782
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A062157 (2 * n) : ℚ) ^ (A052413 (2 * (n + 2)) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A271800.P9976882655839375782

namespace A271800

/-- `∑[A062157(2*n)^A052413(2*(n+2))]` -/
def P9976882655839375782.Spec : Prop :=
  ∀ n, P9976882655839375782.a n = (A271800 n : ℚ)

end A271800

/-! ## A271800.P1327867177277844829

`∑{digits}[A051885(n), A280913(#)]`
-/

namespace A271800.P1327867177277844829
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051885 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A280913 x).sum

end

end A271800.P1327867177277844829

namespace A271800

/-- `∑{digits}[A051885(n), A280913(#)]` -/
def P1327867177277844829.Spec : Prop :=
  ∀ n, P1327867177277844829.a n = A271800 n

end A271800

/-! ## A271800.P5944441324599095811

`∑[A157241(A004396(n))%2]`
-/

namespace A271800.P5944441324599095811
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A157241 (A004396 n).toNat) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A271800.P5944441324599095811

namespace A271800

/-- `∑[A157241(A004396(n))%2]` -/
def P5944441324599095811.Spec : Prop :=
  ∀ n, P5944441324599095811.a n = A271800 n

end A271800

/-! ## A271800.P12837325190182890941

`A280913(A007095(n))%A160755(n+1)`
-/

namespace A271800.P12837325190182890941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A280913 (A007095 n).toNat) (A160755 (n + 1))

end

end A271800.P12837325190182890941

namespace A271800

/-- `A280913(A007095(n))%A160755(n+1)` -/
def P12837325190182890941.Spec : Prop :=
  ∀ n, P12837325190182890941.a n = A271800 n

end A271800

/-!
# A271801: Smallest composite k such that k divides (n^(k-1)-1)/(n-1), n > 1.

The programs for A271801, there is no canonical definition to state claims against.
-/

/-! ## A271801.P4645668385854901779

`A322120(A322107(n+3)+A073364(n+5))`
-/

namespace A271801.P4645668385854901779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322120 (A322107 (n + 3) + A073364 (n + 5)).toNat

end

end A271801.P4645668385854901779

/-!
# A271803: Number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 401", based on the 5-celled von Neumann neighborhood.

The programs for A271803, there is no canonical definition to state claims against.
-/

/-! ## A271803.P4090941991254379415

`∑[A271806(abs(1-n))]`
-/

namespace A271803.P4090941991254379415
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271806 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A271803.P4090941991254379415

/-! ## A271803.P17129615441704764893

`A271806(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A271803.P17129615441704764893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A271806 (n - 1) + a (n - 1)

end

end A271803.P17129615441704764893

/-! ## A271803.P1363735285575733523

`Δ[A271805(n)]-A271806(n)`
-/

namespace A271803.P1363735285575733523
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271805 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A271806 n

end

end A271803.P1363735285575733523

/-! ## A271803.P2901348607722459189

`∑[A271806(A000007(n)-1+n)]-2`
-/

namespace A271803.P2901348607722459189
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271806 (A000007 n - 1 + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 2

end

end A271803.P2901348607722459189

/-! ## A271803.P13133717113041952363

`A271805(n+1)-(A271806(n)+A271805(n))`
-/

namespace A271803.P13133717113041952363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271805 (n + 1) - (A271806 n + A271805 n)

end

end A271803.P13133717113041952363

/-!
# A271804: Number of active (ON, black) cells at stage 2^n-1 of the two-dimensional cellular automaton defined by "Rule 401", based on the 5-celled von Neumann neighborhood.

The programs for A271804, the canonical program `A271804.P5257004705304281030` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A271804 has offset 0).

The definition of A271804 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 165 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A271804.P5257004705304281030

`ogf((1-6x+25x^2-60x^3+12x^4+16x^5)/(1-10x+33x^2-36x^3-4x^4+16x^5))`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A271804

/-- `ogf((1-6x+25x^2-60x^3+12x^4+16x^5)/(1-10x+33x^2-36x^3-4x^4+16x^5))` -/
def P5257004705304281030.Spec : Prop :=
  ∀ n, P5257004705304281030.a n = A271804 n

theorem P5257004705304281030.correct : P5257004705304281030.Spec := by
  intro n
  simp only [A271804]

end A271804

/-! ## A271804.P14310413181925549334

`A271803(2^n-1)`
-/

namespace A271804.P14310413181925549334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271803 (2 ^ n - 1)

end

end A271804.P14310413181925549334

namespace A271804

/-- `A271803(2^n-1)` -/
def P14310413181925549334.Spec : Prop :=
  ∀ n, P14310413181925549334.a n = A271804 n

end A271804

/-! ## A271804.P10239447993011675657

`record[A271803(A091264(n))]`
-/

namespace A271804.P10239447993011675657
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271803 (A091264 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A271804.P10239447993011675657

namespace A271804

/-- `record[A271803(A091264(n))]` -/
def P10239447993011675657.Spec : Prop :=
  ∀ n, P10239447993011675657.a n = A271804 n

end A271804

/-! ## A271804.P15300029922200265612

`record[A271803(A173787(n))]`
-/

namespace A271804.P15300029922200265612
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271803 (A173787 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A271804.P15300029922200265612

namespace A271804

/-- `record[A271803(A173787(n))]` -/
def P15300029922200265612.Spec : Prop :=
  ∀ n, P15300029922200265612.a n = A271804 n

end A271804

/-! ## A271804.P17260899897500375509

`record[A271803(A232751(n))]`
-/

namespace A271804.P17260899897500375509
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271803 (A232751 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A271804.P17260899897500375509

namespace A271804

/-- `record[A271803(A232751(n))]` -/
def P17260899897500375509.Spec : Prop :=
  ∀ n, P17260899897500375509.a n = A271804 n

end A271804

/-!
# A271805: Partial sums of the number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 401", based on the 5-celled von Neumann neighborhood.

The programs for A271805, there is no canonical definition to state claims against.
-/

/-! ## A271805.P6259408308025172331

`∑[∑[A271806(abs(1-n))]]`
-/

namespace A271805.P6259408308025172331
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271806 |1 - (n : ℤ)|.toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A271805.P6259408308025172331

/-! ## A271805.P6439084964347307721

`∑[A271803(n)]`
-/

namespace A271805.P6439084964347307721
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271803 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A271805.P6439084964347307721

/-! ## A271805.P6959881317590798090

`A271803(n)+a(A023443(n))` with `a(0)=1`
-/

namespace A271805.P6959881317590798090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A271803 n + a (A023443 n).toNat

end

end A271805.P6959881317590798090

/-! ## A271805.P9285527281023861651

`a(n-1)+abs(A106400(n))*A271803(n)` with `a(0)=1`
-/

namespace A271805.P9285527281023861651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + |A106400 n| * A271803 n

end

end A271805.P9285527281023861651

/-! ## A271805.P152165480419538230

`a(n-1)+A271803(n)%A022816(n+1)` with `a(0)=1`
-/

namespace A271805.P152165480419538230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + Int.tmod (A271803 n) (A022816 (n + 1))

end

end A271805.P152165480419538230

/-! ## A271805.P322684469762255798

`a(n-1)-A121868(A074473(2*(n+1)))*A271803(n)` with `a(0)=1, a(1)=5`
-/

namespace A271805.P322684469762255798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 5] fun n a =>
  a (n - 1) - A121868 (A074473 (2 * (n + 1))).toNat * A271803 n

end

end A271805.P322684469762255798

/-!
# A271806: First differences of number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 401", based on the 5-celled von Neumann neighborhood.

The programs for A271806, there is no canonical definition to state claims against.
-/

/-! ## A271806.P12054927129674605614

`Δ[A271803(n)]`
-/

namespace A271806.P12054927129674605614
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271803 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A271806.P12054927129674605614

/-! ## A271806.P6566674487553750280

`A271803(n+1)-A271803(n)`
-/

namespace A271806.P6566674487553750280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271803 (n + 1) - A271803 n

end

end A271806.P6566674487553750280

/-!
# A271807: Number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 403", based on the 5-celled von Neumann neighborhood.

The programs for A271807, there is no canonical definition to state claims against.
-/

/-! ## A271807.P17929445250211732275

`A271810(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A271807.P17929445250211732275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A271810 (n - 1) + a (n - 1)

end

end A271807.P17929445250211732275

/-! ## A271807.P12775753067758269644

`Δ[A271809(n)]-A271810(n)`
-/

namespace A271807.P12775753067758269644
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271809 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A271810 n

end

end A271807.P12775753067758269644

/-! ## A271807.P18190460911206845050

`A271809(n+1)-(A271810(n)+A271809(n))`
-/

namespace A271807.P18190460911206845050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271809 (n + 1) - (A271810 n + A271809 n)

end

end A271807.P18190460911206845050

/-! ## A271807.P17754363004209421734

`A271809(A000027(n+1))%(A271810(n)+A271809(n))`
-/

namespace A271807.P17754363004209421734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A271809 (A000027 (n + 1)).toNat) (A271810 n + A271809 n)

end

end A271807.P17754363004209421734

/-!
# A271808: Number of active (ON, black) cells at stage 2^n-1 of the two-dimensional cellular automaton defined by "Rule 403", based on the 5-celled von Neumann neighborhood.

The programs for A271808, there is no canonical definition to state claims against.
-/

/-! ## A271808.P5798608958918662658

`A271807(2^n-1)`
-/

namespace A271808.P5798608958918662658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271807 (2 ^ n - 1)

end

end A271808.P5798608958918662658

/-! ## A271808.P5059641113856534105

`record[A271807(A173787(n))]`
-/

namespace A271808.P5059641113856534105
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271807 (A173787 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A271808.P5059641113856534105

/-! ## A271808.P13214709962807961231

`record[A271807(A218616(n))]`
-/

namespace A271808.P13214709962807961231
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271807 (A218616 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A271808.P13214709962807961231

/-! ## A271808.P18350306690213755269

`and(-1, A271807(A000225(n)))`
-/

namespace A271808.P18350306690213755269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A271807 (A000225 n).toNat)

end

end A271808.P18350306690213755269

/-! ## A271808.P1602348650296187278

`record[A271807(A243071(n+1))]`
-/

namespace A271808.P1602348650296187278
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271807 (A243071 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A271808.P1602348650296187278

/-!
# A271809: Partial sums of the number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 403", based on the 5-celled von Neumann neighborhood.

The programs for A271809, there is no canonical definition to state claims against.
-/

/-! ## A271809.P8428489471082908603

`∑[A271807(n)]`
-/

namespace A271809.P8428489471082908603
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271807 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A271809.P8428489471082908603

/-! ## A271809.P783229039056539086

`A271807(n)+a(A023443(n))` with `a(0)=1`
-/

namespace A271809.P783229039056539086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A271807 n + a (A023443 n).toNat

end

end A271809.P783229039056539086

/-! ## A271809.P8496124978995614640

`A271807(A028310(n))+a(n-1)` with `a(0)=1`
-/

namespace A271809.P8496124978995614640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A271807 (A028310 n).toNat + a (n - 1)

end

end A271809.P8496124978995614640

/-! ## A271809.P7200069165127845931

`A271807(A004526(n+n))+a(n-1)` with `a(0)=1`
-/

namespace A271809.P7200069165127845931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A271807 (A004526 (n + n)).toNat + a (n - 1)

end

end A271809.P7200069165127845931

/-! ## A271809.P12903905977959033834

`∑[∑[A271810(n)]+1-A271810(n)]`
-/

namespace A271809.P12903905977959033834
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271810 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + (1 - A271810 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A271809.P12903905977959033834

/-!
# A271810: First differences of number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 403", based on the 5-celled von Neumann neighborhood.

The programs for A271810, there is no canonical definition to state claims against.
-/

/-! ## A271810.P6085791158939770847

`Δ[A271807(n)]`
-/

namespace A271810.P6085791158939770847
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271807 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A271810.P6085791158939770847

/-! ## A271810.P9912296435873650019

`A271807(n+1)-A271807(n)`
-/

namespace A271810.P9912296435873650019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271807 (n + 1) - A271807 n

end

end A271810.P9912296435873650019

/-!
# A271811: Number of non-abelian groups of order prime(n)^6.

The programs for A271811, there is no canonical definition to state claims against.
-/

/-! ## A271811.P4550218719179257236

`A232106(n+1)-11`
-/

namespace A271811.P4550218719179257236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232106 (n + 1) - 11

end

end A271811.P4550218719179257236

/-! ## A271811.P10485897543580847733

`A023453(A232106(n+1))`
-/

namespace A271811.P10485897543580847733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023453 (A232106 (n + 1)).toNat

end

end A271811.P10485897543580847733

/-!
# A271812: Number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 405", based on the 5-celled von Neumann neighborhood.

The programs for A271812, there is no canonical definition to state claims against.
-/

/-! ## A271812.P16042433387803610619

`A271815(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A271812.P16042433387803610619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A271815 (n - 1) + a (n - 1)

end

end A271812.P16042433387803610619

/-! ## A271812.P11056778310539726731

`Δ[A271814(n)]-A271815(n)`
-/

namespace A271812.P11056778310539726731
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271814 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A271815 n

end

end A271812.P11056778310539726731

/-! ## A271812.P15528572233691283508

`A271814(n+1)-(A271815(n)+A271814(n))`
-/

namespace A271812.P15528572233691283508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271814 (n + 1) - (A271815 n + A271814 n)

end

end A271812.P15528572233691283508

/-!
# A271813: Number of active (ON, black) cells at stage 2^n-1 of the two-dimensional cellular automaton defined by "Rule 405", based on the 5-celled von Neumann neighborhood.

The programs for A271813, there is no canonical definition to state claims against.
-/

/-! ## A271813.P17955138513996311626

`A271812(2^n-1)`
-/

namespace A271813.P17955138513996311626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271812 (2 ^ n - 1)

end

end A271813.P17955138513996311626

/-! ## A271813.P13793247308557053778

`record[A271812(A173787(n))]`
-/

namespace A271813.P13793247308557053778
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271812 (A173787 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A271813.P13793247308557053778

/-! ## A271813.P270927721697458356

`record[A271812(Δ[A228693(n)])]`
-/

namespace A271813.P270927721697458356
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228693 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271812 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A271813.P270927721697458356

/-! ## A271813.P2269423564927662596

`record[A271812(A023758(n+1))]`
-/

namespace A271813.P2269423564927662596
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271812 (A023758 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A271813.P2269423564927662596

/-! ## A271813.P16544925760490839188

`record[A271812(A228693(n)-1)]`
-/

namespace A271813.P16544925760490839188
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271812 (A228693 n - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A271813.P16544925760490839188

/-!
# A271814: Partial sums of the number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 405", based on the 5-celled von Neumann neighborhood.

The programs for A271814, there is no canonical definition to state claims against.
-/

/-! ## A271814.P6946186409476034227

`∑[A271812(n)]`
-/

namespace A271814.P6946186409476034227
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271812 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A271814.P6946186409476034227

/-! ## A271814.P18019773413018173496

`A271812(n)+a(A023443(n))` with `a(0)=1`
-/

namespace A271814.P18019773413018173496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A271812 n + a (A023443 n).toNat

end

end A271814.P18019773413018173496

/-! ## A271814.P5288169231939240781

`a(n-1)+A271812(n)+A000007(n)` with `a(0)=1`
-/

namespace A271814.P5288169231939240781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A271812 n + A000007 n)

end

end A271814.P5288169231939240781

/-! ## A271814.P920326964371585602

`a(n-1)+A271812(n)+A000038(n)` with `a(0)=1`
-/

namespace A271814.P920326964371585602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A271812 n + A000038 n)

end

end A271814.P920326964371585602

/-! ## A271814.P16181593233200300034

`∑[∑[A271815(n)]+1-A271815(n)]`
-/

namespace A271814.P16181593233200300034
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271815 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + (1 - A271815 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A271814.P16181593233200300034

/-!
# A271815: First differences of number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 405", based on the 5-celled von Neumann neighborhood.

The programs for A271815, there is no canonical definition to state claims against.
-/

/-! ## A271815.P452971377005864129

`Δ[A271812(n)]`
-/

namespace A271815.P452971377005864129
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271812 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A271815.P452971377005864129

/-! ## A271815.P12044008723824730337

`A271812(n+1)-A271812(n)`
-/

namespace A271815.P12044008723824730337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271812 (n + 1) - A271812 n

end

end A271815.P12044008723824730337

/-!
# A271816: Deficient-perfect numbers: Deficient numbers n such that n/(2n-sigma(n)) is an integer.

The programs for A271816, there is no canonical definition to state claims against.
-/

/-! ## A271816.P14903171599718535001

`∪[A000079(n), A060326(n+1)]`
-/

namespace A271816.P14903171599718535001
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060326 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A271816.P14903171599718535001

/-! ## A271816.P1553406041122840562

`∩[A097498(n+1), A222264(n+1)]`
-/

namespace A271816.P1553406041122840562
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097498 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222264 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A271816.P1553406041122840562

/-! ## A271816.P6464752888928531723

`∩[A097498(n+1), A240073(n+1)]`
-/

namespace A271816.P6464752888928531723
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097498 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240073 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A271816.P6464752888928531723

/-! ## A271816.P1180125382213205880

`∩[A109884(n+1), A222264(n+1)]`
-/

namespace A271816.P1180125382213205880
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109884 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222264 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A271816.P1180125382213205880

/-! ## A271816.P17310032053345468459

`∩[A109884(n+1), A240073(n+1)]`
-/

namespace A271816.P17310032053345468459
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109884 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240073 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A271816.P17310032053345468459

/-!
# A271817: Smallest k > 1 such that none of k^2 + 0, k^2 + 1, k^2 + 2,..., k^2 + n are squarefree.

The programs for A271817, there is no canonical definition to state claims against.
-/

/-! ## A271817.P11746052159627600073

`A124653(A087980(2*(n+1))+n)`
-/

namespace A271817.P11746052159627600073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124653 (A087980 (2 * (n + 1)) + (n : ℤ)).toNat

end

end A271817.P11746052159627600073

/-!
# A271821: Numbers k such that (5*10^k - 143)/3 is prime.

The programs for A271821, there is no canonical definition to state claims against.
-/

/-! ## A271821.P13353790808120818863

`A204924(A213093(n)+A049408(n+1))`
-/

namespace A271821.P13353790808120818863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204924 (A213093 n + A049408 (n + 1)).toNat

end

end A271821.P13353790808120818863

/-!
# A271823: a(n) = binomial(2*n-4,n-1)*(n+3)/n.

The programs for A271823, the canonical program `A271823.P6491372009511408679` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A271823 has offset 1).

The definition of A271823 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 170 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A271823.P6491372009511408679

`A115140(n)+A077587(abs(1-n))`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A271823

/-- `A115140(n)+A077587(abs(1-n))` -/
def P6491372009511408679.Spec : Prop :=
  ∀ n, P6491372009511408679.a n = A271823 (n + 1)

theorem P6491372009511408679.correct : P6491372009511408679.Spec := by
  intro n
  simp only [A271823, Nat.add_sub_cancel]

end A271823

/-!
# A271824: Number of ordered ways to write n as x^2 + y^2 + z^2 + w^2 with (x+2*y)^2 + 8*z^2 + 40*w^2 a square, where x is a positive integer and y,z,w are nonnegative integers.

The programs for A271824, there is no canonical definition to state claims against.
-/

/-! ## A271824.P3131015788711804992

`A279387(A288204(n+1)+A157401(n+1))`
-/

namespace A271824.P3131015788711804992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279387 (A288204 (n + 1) + A157401 (n + 1)).toNat

end

end A271824.P3131015788711804992

/-! ## A271824.P12040669885418040591

`A001221(A117102(2*n)-A117112(n+1))`
-/

namespace A271824.P12040669885418040591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A117102 (2 * n) - A117112 (n + 1)).toNat

end

end A271824.P12040669885418040591

/-! ## A271824.P3913005729288510016

`A284582(A029784(2*or(1, n+1))-A233583(n+1))`
-/

namespace A271824.P3913005729288510016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284582 (A029784 (2 * Nat.lor 1 (n + 1)) - A233583 (n + 1)).toNat

end

end A271824.P3913005729288510016

/-!
# A271825: Triangle read by rows: T(n,m) = (-1)^(n-m-1)*m*binomial(2*n-3*m-1,n-m-1)/(n-m), T(n,n)=1.

The programs for A271825, there is no canonical definition to state claims against.
-/

/-! ## A271825.P1919260667889424347

`A097807(n)*A271875(n+1)`
-/

namespace A271825.P1919260667889424347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097807 n * A271875 (n + 1)

end

end A271825.P1919260667889424347

/-! ## A271825.P3011323900431162016

`A033999(A025581(n))*A271875(n+1)`
-/

namespace A271825.P3011323900431162016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A025581 n).toNat * A271875 (n + 1)

end

end A271825.P3011323900431162016

/-! ## A271825.P4993273231355888015

`A033999(A067731(n))*A271875(n+1)`
-/

namespace A271825.P4993273231355888015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A067731 n).toNat * A271875 (n + 1)

end

end A271825.P4993273231355888015

/-! ## A271825.P3421202470179208525

`A009531(A099375(n))*A271875(n+1)`
-/

namespace A271825.P3421202470179208525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009531 (A099375 n).toNat * A271875 (n + 1)

end

end A271825.P3421202470179208525

/-! ## A271825.P11923330758355004443

`A062157(A004736(n+1))*A271875(n+1)`
-/

namespace A271825.P11923330758355004443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062157 (A004736 (n + 1)).toNat * A271875 (n + 1)

end

end A271825.P11923330758355004443

/-! ## A271825.P2868090784535662451

`A009531(A131421(n+1))*A271875(n+1)`
-/

namespace A271825.P2868090784535662451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009531 (A131421 (n + 1)).toNat * A271875 (n + 1)

end

end A271825.P2868090784535662451

/-! ## A271825.P13626948022120368194

`A033999(A063656(n))*A271875(n+1)`
-/

namespace A271825.P13626948022120368194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A063656 n).toNat * A271875 (n + 1)

end

end A271825.P13626948022120368194

/-! ## A271825.P18139789873838489225

`A008836(A130321(n))*A271875(n+1)`
-/

namespace A271825.P18139789873838489225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008836 (A130321 n).toNat * A271875 (n + 1)

end

end A271825.P18139789873838489225

/-! ## A271825.P6628502261687900416

`A106400(A173787(n))*A271875(n+1)`
-/

namespace A271825.P6628502261687900416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106400 (A173787 n).toNat * A271875 (n + 1)

end

end A271825.P6628502261687900416

/-! ## A271825.P4962590043170773571

`A271875(n+1)*A309873(A054582(n))`
-/

namespace A271825.P4962590043170773571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271875 (n + 1) * A309873 (A054582 n).toNat

end

end A271825.P4962590043170773571

/-!
# A271826: Integers n such that n^2 = x^3 + y^3 + z^3, where x, y, z are positive integers, is soluble.

The programs for A271826, there is no canonical definition to state claims against.
-/

/-! ## A271826.P16370879013556186932

`sqrt(∩[A003072(n+1), n²])`
-/

namespace A271826.P16370879013556186932
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003072 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n : ℝ)

end

end A271826.P16370879013556186932

/-! ## A271826.P10749704904184909144

`lt[0, A025456(n²)]`
-/

namespace A271826.P10749704904184909144
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025456 (n ^ 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A271826.P10749704904184909144

/-! ## A271826.P3149495982873362593

`lt[0, A051344(n²)]`
-/

namespace A271826.P3149495982873362593
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051344 (n ^ 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A271826.P3149495982873362593

/-!
# A271827: Expansion of (x^5-2*x^4+2*x^3-x+1)/(x^4-2*x^3+3*x^2-3*x+1).

The programs for A271827, the canonical program `A271827.P13770822086099631610` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A271827 has offset 0).

The definition of A271827 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-x+2x^3-2x^4+x^5)/(1-3x+3x^2-2x^3+x^4))` (program `A271827.P13770822086099631610`, by `A271827.P13770822086099631610.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A271827.P13770822086099631610

`ogf((1-x+2x^3-2x^4+x^5)/(1-3x+3x^2-2x^3+x^4))`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A271827

/-- `ogf((1-x+2x^3-2x^4+x^5)/(1-3x+3x^2-2x^3+x^4))` -/
def P13770822086099631610.Spec : Prop :=
  ∀ n, P13770822086099631610.a n = A271827 n

theorem P13770822086099631610.correct : P13770822086099631610.Spec := by
  intro n
  simp only [A271827]

end A271827

/-! ## A271827.P13433024508355739565

`record[a(n-2)-a(n-3)]-1` with `a(0)=2, a(1)=3, a(2)=2, a(3)=4, a(4)=4`
-/

namespace A271827.P13433024508355739565
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2, 3, 2, 4, 4] fun n f1 =>
  f1 (n - 2) - f1 (n - 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - 1

end

end A271827.P13433024508355739565

namespace A271827

/-- `record[a(n-2)-a(n-3)]-1` -/
def P13433024508355739565.Spec : Prop :=
  ∀ n, P13433024508355739565.a n = A271827 n

end A271827

/-! ## A271827.P15221379181430896540

`A164394(n)-A157928(n)`
-/

namespace A271827.P15221379181430896540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164394 n - A157928 n

end

end A271827.P15221379181430896540

namespace A271827

/-- `A164394(n)-A157928(n)` -/
def P15221379181430896540.Spec : Prop :=
  ∀ n, P15221379181430896540.a n = A271827 n

end A271827

/-! ## A271827.P16644447159144323800

`A164394(n)-char[A038722(n+2)]`
-/

namespace A271827.P16644447159144323800
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038722 (n + 2)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164394 n - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A271827.P16644447159144323800

namespace A271827

/-- `A164394(n)-char[A038722(n+2)]` -/
def P16644447159144323800.Spec : Prop :=
  ∀ n, P16644447159144323800.a n = A271827 n

end A271827

/-! ## A271827.P13946700309504950386

`A023434(A223134(n))-A005251(n)`
-/

namespace A271827.P13946700309504950386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023434 (A223134 n).toNat - A005251 n

end

end A271827.P13946700309504950386

namespace A271827

/-- `A023434(A223134(n))-A005251(n)` -/
def P13946700309504950386.Spec : Prop :=
  ∀ n, P13946700309504950386.a n = A271827 n

end A271827

/-! ## A271827.P7375642889207236467

`A164394(n)-A069283(A151800(n))`
-/

namespace A271827.P7375642889207236467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164394 n - A069283 (A151800 n).toNat

end

end A271827.P7375642889207236467

namespace A271827

/-- `A164394(n)-A069283(A151800(n))` -/
def P7375642889207236467.Spec : Prop :=
  ∀ n, P7375642889207236467.a n = A271827 n

end A271827

/-! ## A271827.P13239709631056416460

`A164394(n)-A000035(A155828(n+1))`
-/

namespace A271827.P13239709631056416460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164394 n - A000035 (A155828 (n + 1)).toNat

end

end A271827.P13239709631056416460

namespace A271827

/-- `A164394(n)-A000035(A155828(n+1))` -/
def P13239709631056416460.Spec : Prop :=
  ∀ n, P13239709631056416460.a n = A271827 n

end A271827

/-! ## A271827.P14532454192991909465

`A164394(n)-A155828(A155828(n+1)+2)`
-/

namespace A271827.P14532454192991909465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164394 n - A155828 (A155828 (n + 1) + 2).toNat

end

end A271827.P14532454192991909465

namespace A271827

/-- `A164394(n)-A155828(A155828(n+1)+2)` -/
def P14532454192991909465.Spec : Prop :=
  ∀ n, P14532454192991909465.a n = A271827 n

end A271827

/-! ## A271827.P6866018384179025748

`A164394(n)-A043545(n²)`
-/

namespace A271827.P6866018384179025748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164394 n - A043545 (n ^ 2)

end

end A271827.P6866018384179025748

namespace A271827

/-- `A164394(n)-A043545(n²)` -/
def P6866018384179025748.Spec : Prop :=
  ∀ n, P6866018384179025748.a n = A271827 n

end A271827

/-!
# A271828: a(n) = 4*n^3 - 18*n^2 + 27*n - 12.

The programs for A271828, the canonical program `A271828.P7325374316528515433` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A271828 has offset 1).

The definition of A271828 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `4*(n+1)^3-18*(n+1)²+27*(n+1)-12` (program `A271828.P7325374316528515433`, by `A271828.P7325374316528515433.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A271828.P16468229355818304784

`((2*n-1)^3+3)/2`
-/

namespace A271828.P16468229355818304784
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((2 * n : ℤ) - 1) ^ 3 + 3 : ℚ) / 2

end

end A271828.P16468229355818304784

namespace A271828

/-- `((2*n-1)^3+3)/2` -/
def P16468229355818304784.Spec : Prop :=
  ∀ n, P16468229355818304784.a n = (A271828 (n + 1) : ℚ)

theorem P16468229355818304784.correct : P16468229355818304784.Spec := by
  intro n
  simp only [A271828, Nat.add_sub_cancel, A271828.P16468229355818304784.a, A271828.P7325374316528515433.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A271828

/-! ## A271828.P9596601519556438307

`ogf((1-2x+13x^2+12x^3)/(1-4x+6x^2-4x^3+x^4))`
-/

namespace A271828.P9596601519556438307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -2, 13, 12] [1, -4, 6, -4, 1] n

end

end A271828.P9596601519556438307

namespace A271828

/-- `ogf((1-2x+13x^2+12x^3)/(1-4x+6x^2-4x^3+x^4))` -/
def P9596601519556438307.Spec : Prop :=
  ∀ n, P9596601519556438307.a n = A271828 (n + 1)

end A271828

/-! ## A271828.P7325374316528515433

`4*(n+1)^3-18*(n+1)²+27*(n+1)-12`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A271828

/-- `4*(n+1)^3-18*(n+1)²+27*(n+1)-12` -/
def P7325374316528515433.Spec : Prop :=
  ∀ n, P7325374316528515433.a n = A271828 (n + 1)

theorem P7325374316528515433.correct : P7325374316528515433.Spec := by
  intro n
  simp only [A271828, Nat.add_sub_cancel]

end A271828

/-! ## A271828.P16918207099956669596

`∑[3*(2*(n-1)%(n+1))²+1]`
-/

namespace A271828.P16918207099956669596
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (2 * Int.tmod ((n : ℤ) - 1) (n + 1 : ℤ)) ^ 2 + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A271828.P16918207099956669596

namespace A271828

/-- `∑[3*(2*(n-1)%(n+1))²+1]` -/
def P16918207099956669596.Spec : Prop :=
  ∀ n, P16918207099956669596.a n = A271828 (n + 1)

end A271828

/-! ## A271828.P7439732701789795488

`abs(12*C(n, 2)-1-n*((2*n)²-3))`
-/

namespace A271828.P7439732701789795488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(12 * Nat.choose n 2 : ℤ) - 1 - (n : ℤ) * (((2 * n) ^ 2 : ℤ) - 3)|

end

end A271828.P7439732701789795488

namespace A271828

/-- `abs(12*C(n, 2)-1-n*((2*n)²-3))` -/
def P7439732701789795488.Spec : Prop :=
  ∀ n, P7439732701789795488.a n = A271828 (n + 1)

end A271828

/-! ## A271828.P17075651594374084074

`Δ[Δ[A060354(n)]+A067998(n)²]`
-/

namespace A271828.P17075651594374084074
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060354 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n + A067998 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A271828.P17075651594374084074

namespace A271828

/-- `Δ[Δ[A060354(n)]+A067998(n)²]` -/
def P17075651594374084074.Spec : Prop :=
  ∀ n, P17075651594374084074.a n = A271828 (n + 1)

end A271828

/-! ## A271828.P9808180958350455121

`Δ[Δ[A158498(n+1)]+A067998(n)²]`
-/

namespace A271828.P9808180958350455121
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158498 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n + A067998 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A271828.P9808180958350455121

namespace A271828

/-- `Δ[Δ[A158498(n+1)]+A067998(n)²]` -/
def P9808180958350455121.Spec : Prop :=
  ∀ n, P9808180958350455121.a n = A271828 (n + 1)

end A271828

/-! ## A271828.P16748328907674889315

`record[A001057(n)*A002061(n)+1]`
-/

namespace A271828.P16748328907674889315
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 n * A002061 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A271828.P16748328907674889315

namespace A271828

/-- `record[A001057(n)*A002061(n)+1]` -/
def P16748328907674889315.Spec : Prop :=
  ∀ n, P16748328907674889315.a n = A271828 (n + 1)

end A271828

/-! ## A271828.P1343671093728160105

`record[A002061(n)*A318518(n+1)+1]`
-/

namespace A271828.P1343671093728160105
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002061 n * A318518 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A271828.P1343671093728160105

namespace A271828

/-- `record[A002061(n)*A318518(n+1)+1]` -/
def P1343671093728160105.Spec : Prop :=
  ∀ n, P1343671093728160105.a n = A271828 (n + 1)

end A271828

/-!
# A271829: Prime powers p^k such that p^k = x^3 + y^3 + z^3 where x, y, z are positive integers and k > 1, is soluble.

The programs for A271829, there is no canonical definition to state claims against.
-/

/-! ## A271829.P3249938037621864866

`filter[A003072(n+1), A268340(#)]`
-/

namespace A271829.P3249938037621864866
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003072 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A268340 (f1 j).toNat = 1) n)

end

end A271829.P3249938037621864866

/-!
# A271830: Expansion of (3 - 4*x + 3*x^2 + x^4)/((1 - x)^2*(1 + x^2 + x^4)).

The programs for A271830, the canonical program `A271830.P4608339240049954701` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A271830 has offset 0).

The definition of A271830 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((3-4x+3x^2+x^4)/(1-2x+2x^2-2x^3+2x^4-2x^5+x^6))` (program `A271830.P4608339240049954701`, by `A271830.P4608339240049954701.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A271830.P4608339240049954701

`ogf((3-4x+3x^2+x^4)/(1-2x+2x^2-2x^3+2x^4-2x^5+x^6))`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A271830

/-- `ogf((3-4x+3x^2+x^4)/(1-2x+2x^2-2x^3+2x^4-2x^5+x^6))` -/
def P4608339240049954701.Spec : Prop :=
  ∀ n, P4608339240049954701.a n = A271830 n

theorem P4608339240049954701.correct : P4608339240049954701.Spec := by
  intro n
  simp only [A271830]

end A271830

/-! ## A271830.P6143283098536485788

`∑[3-(a(n-2)+a(n-4))]` with `a(0)=3, a(1)=-1, a(2)=-1, a(3)=3`
-/

namespace A271830.P6143283098536485788
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [3, -1, -1, 3] fun n f1 =>
  3 - (f1 (n - 2) + f1 (n - 4))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A271830.P6143283098536485788

namespace A271830

/-- `∑[3-(a(n-2)+a(n-4))]` -/
def P6143283098536485788.Spec : Prop :=
  ∀ n, P6143283098536485788.a n = A271830 n

end A271830

/-! ## A271830.P4318221943503494105

`∑[3-a(n-2)-a(n-4)]` with `a(0)=3, a(1)=-1, a(2)=-1, a(3)=3`
-/

namespace A271830.P4318221943503494105
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [3, -1, -1, 3] fun n f1 =>
  3 - f1 (n - 2) - f1 (n - 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A271830.P4318221943503494105

namespace A271830

/-- `∑[3-a(n-2)-a(n-4)]` -/
def P4318221943503494105.Spec : Prop :=
  ∀ n, P4318221943503494105.a n = A271830 n

end A271830

/-! ## A271830.P3172586840216519332

`2*a(n-2)%3+a(n-1)-1` with `a(0)=3, a(1)=2`
-/

namespace A271830.P3172586840216519332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 2] fun n a =>
  2 * Int.tmod (a (n - 2)) 3 + (a (n - 1) - 1)

end

end A271830.P3172586840216519332

namespace A271830

/-- `2*a(n-2)%3+a(n-1)-1` -/
def P3172586840216519332.Spec : Prop :=
  ∀ n, P3172586840216519332.a n = A271830 n

end A271830

/-! ## A271830.P644279197400379441

`∑[A165202(abs(A165202(n)))]`
-/

namespace A271830.P644279197400379441
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165202 |A165202 n|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A271830.P644279197400379441

namespace A271830

/-- `∑[A165202(abs(A165202(n)))]` -/
def P644279197400379441.Spec : Prop :=
  ∀ n, P644279197400379441.a n = A271830 n

end A271830

/-! ## A271830.P17695340851264880715

`∑[A156872(∑[A010892(n)])]`
-/

namespace A271830.P17695340851264880715
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010892 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156872 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A271830.P17695340851264880715

namespace A271830

/-- `∑[A156872(∑[A010892(n)])]` -/
def P17695340851264880715.Spec : Prop :=
  ∀ n, P17695340851264880715.a n = A271830 n

end A271830

/-! ## A271830.P16490785419110222819

`A010892(n)+A057078(n)+A030118(n)`
-/

namespace A271830.P16490785419110222819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010892 n + (A057078 n + A030118 n)

end

end A271830.P16490785419110222819

namespace A271830

/-- `A010892(n)+A057078(n)+A030118(n)` -/
def P16490785419110222819.Spec : Prop :=
  ∀ n, P16490785419110222819.a n = A271830 n

end A271830

/-! ## A271830.P13296024811081432933

`A113655(a(n-3)+3)` with `a(0)=3, a(1)=2, a(2)=1`
-/

namespace A271830.P13296024811081432933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 2, 1] fun n a =>
  A113655 (a (n - 3) + 3).toNat

end

end A271830.P13296024811081432933

namespace A271830

/-- `A113655(a(n-3)+3)` -/
def P13296024811081432933.Spec : Prop :=
  ∀ n, P13296024811081432933.a n = A271830 n

end A271830

/-! ## A271830.P7662535941329972780

`A113655(A133259(n))`
-/

namespace A271830.P7662535941329972780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113655 (A133259 n).toNat

end

end A271830.P7662535941329972780

namespace A271830

/-- `A113655(A133259(n))` -/
def P7662535941329972780.Spec : Prop :=
  ∀ n, P7662535941329972780.a n = A271830 n

end A271830

/-! ## A271830.P16169459469256528289

`A133259(A330396(n))`
-/

namespace A271830.P16169459469256528289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133259 (A330396 n).toNat

end

end A271830.P16169459469256528289

namespace A271830

/-- `A133259(A330396(n))` -/
def P16169459469256528289.Spec : Prop :=
  ∀ n, P16169459469256528289.a n = A271830 n

end A271830

/-! ## A271830.P15509991450849206529

`A010892(n)+A030118(n)-A049347(n+1)`
-/

namespace A271830.P15509991450849206529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010892 n + (A030118 n - A049347 (n + 1))

end

end A271830.P15509991450849206529

namespace A271830

/-- `A010892(n)+A030118(n)-A049347(n+1)` -/
def P15509991450849206529.Spec : Prop :=
  ∀ n, P15509991450849206529.a n = A271830 n

end A271830

/-! ## A271830.P3308563545277977995

`A010892(n+1)+A113655(n+1)-A057078(n)`
-/

namespace A271830.P3308563545277977995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010892 (n + 1) + (A113655 (n + 1) - A057078 n)

end

end A271830.P3308563545277977995

namespace A271830

/-- `A010892(n+1)+A113655(n+1)-A057078(n)` -/
def P3308563545277977995.Spec : Prop :=
  ∀ n, P3308563545277977995.a n = A271830 n

end A271830

/-! ## A271830.P11931252857400568667

`A133259(n+3)-3`
-/

namespace A271830.P11931252857400568667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133259 (n + 3) - 3

end

end A271830.P11931252857400568667

namespace A271830

/-- `A133259(n+3)-3` -/
def P11931252857400568667.Spec : Prop :=
  ∀ n, P11931252857400568667.a n = A271830 n

end A271830

/-! ## A271830.P17030249626862752663

`n+3-2*A093718(n+3)`
-/

namespace A271830.P17030249626862752663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 3 : ℤ) - 2 * A093718 (n + 3)

end

end A271830.P17030249626862752663

namespace A271830

/-- `n+3-2*A093718(n+3)` -/
def P17030249626862752663.Spec : Prop :=
  ∀ n, P17030249626862752663.a n = A271830 n

end A271830

/-! ## A271830.P3157613859140774933

`∑[A156872(∑[A014021(2*n)])]`
-/

namespace A271830.P3157613859140774933
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014021 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156872 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A271830.P3157613859140774933

namespace A271830

/-- `∑[A156872(∑[A014021(2*n)])]` -/
def P3157613859140774933.Spec : Prop :=
  ∀ n, P3157613859140774933.a n = A271830 n

end A271830

/-! ## A271830.P3977298264555012471

`∑[A156872(∑[A156872(2*n+1)])]`
-/

namespace A271830.P3977298264555012471
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156872 (2 * n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156872 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A271830.P3977298264555012471

namespace A271830

/-- `∑[A156872(∑[A156872(2*n+1)])]` -/
def P3977298264555012471.Spec : Prop :=
  ∀ n, P3977298264555012471.a n = A271830 n

end A271830

/-! ## A271830.P18372492602439576028

`n+1+A010892(2*n)+A010892(n+1)`
-/

namespace A271830.P18372492602439576028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) + (A010892 (2 * n) + A010892 (n + 1))

end

end A271830.P18372492602439576028

namespace A271830

/-- `n+1+A010892(2*n)+A010892(n+1)` -/
def P18372492602439576028.Spec : Prop :=
  ∀ n, P18372492602439576028.a n = A271830 n

end A271830

/-! ## A271830.P13178934797650383618

`A128834(2*n+1)+A131026(n+2)+n`
-/

namespace A271830.P13178934797650383618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128834 (2 * n + 1) + (A131026 (n + 2) + (n : ℤ))

end

end A271830.P13178934797650383618

namespace A271830

/-- `A128834(2*n+1)+A131026(n+2)+n` -/
def P13178934797650383618.Spec : Prop :=
  ∀ n, P13178934797650383618.a n = A271830 n

end A271830

/-! ## A271830.P12492612471894440206

`∑[A165202(A165202(n)²)]`
-/

namespace A271830.P12492612471894440206
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165202 (A165202 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A271830.P12492612471894440206

namespace A271830

/-- `∑[A165202(A165202(n)²)]` -/
def P12492612471894440206.Spec : Prop :=
  ∀ n, P12492612471894440206.a n = A271830 n

end A271830

/-!
# A271832: Period 12 zigzag sequence: repeat [0,1,2,3,4,5,6,5,4,3,2,1].

The programs for A271832, the canonical program `A271832.P9489512384403522589` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A271832 has offset 0).

The definition of A271832 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A271832.P9489512384403522589

`abs(n-12*round(n/12))`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A271832

/-- `abs(n-12*round(n/12))` -/
def P9489512384403522589.Spec : Prop :=
  ∀ n, P9489512384403522589.a n = A271832 n

theorem P9489512384403522589.correct : P9489512384403522589.Spec := by
  intro n
  simp only [A271832]

end A271832

/-!
# A271833: Expansion of (1 + 2*x + 2*x^2 + 2*x^3 - 5*x^4 + 2*x^5 + 2*x^6 + 2*x^7)/((1 - x)^2*(1 + x + x^2 + x^3 + x^4 + x^5 + x^6 + x^7)).

The programs for A271833, the canonical program `A271833.P7123191138630736247` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A271833 has offset 0).

The definition of A271833 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1+2x+2x^2+2x^3-5x^4+2x^5+2x^6+2x^7)/(1-x-x^8+x^9))` (program `A271833.P7123191138630736247`, by `A271833.P7123191138630736247.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A271833.P4267527992823002995

`1+2*n+6*floor(n/8)-7*floor(n/4)`
-/

namespace A271833.P4267527992823002995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 + 2 * n : ℤ) + 6 * ⌊(n : ℚ) / 8⌋ - 7 * ⌊(n : ℚ) / 4⌋

end

end A271833.P4267527992823002995

namespace A271833

/-- `1+2*n+6*floor(n/8)-7*floor(n/4)` -/
def P4267527992823002995.Spec : Prop :=
  ∀ n, P4267527992823002995.a n = A271833 n

end A271833

/-! ## A271833.P7123191138630736247

`ogf((1+2x+2x^2+2x^3-5x^4+2x^5+2x^6+2x^7)/(1-x-x^8+x^9))`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A271833

/-- `ogf((1+2x+2x^2+2x^3-5x^4+2x^5+2x^6+2x^7)/(1-x-x^8+x^9))` -/
def P7123191138630736247.Spec : Prop :=
  ∀ n, P7123191138630736247.a n = A271833 n

theorem P7123191138630736247.correct : P7123191138630736247.Spec := by
  intro n
  simp only [A271833]

end A271833

/-! ## A271833.P6000751083896141469

`A116966(A080414(A080412(n)))`
-/

namespace A271833.P6000751083896141469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116966 (A080414 (A080412 n).toNat).toNat

end

end A271833.P6000751083896141469

namespace A271833

/-- `A116966(A080414(A080412(n)))` -/
def P6000751083896141469.Spec : Prop :=
  ∀ n, P6000751083896141469.a n = A271833 n

end A271833

/-! ## A271833.P12356269587276403956

`A080412(A292576(A092486(A080413(n))))`
-/

namespace A271833.P12356269587276403956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080412 (A292576 (A092486 (A080413 n).toNat).toNat).toNat

end

end A271833.P12356269587276403956

namespace A271833

/-- `A080412(A292576(A092486(A080413(n))))` -/
def P12356269587276403956.Spec : Prop :=
  ∀ n, P12356269587276403956.a n = A271833 n

end A271833

/-! ## A271833.P13880521716990329320

`A008619(2*A080414(A080414(n)))`
-/

namespace A271833.P13880521716990329320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (2 * A080414 (A080414 n).toNat).toNat

end

end A271833.P13880521716990329320

namespace A271833

/-- `A008619(2*A080414(A080414(n)))` -/
def P13880521716990329320.Spec : Prop :=
  ∀ n, P13880521716990329320.a n = A271833 n

end A271833

/-! ## A271833.P15749320999003776764

`A028242(2*A080414(A080414(n)))`
-/

namespace A271833.P15749320999003776764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 (2 * A080414 (A080414 n).toNat).toNat

end

end A271833.P15749320999003776764

namespace A271833

/-- `A028242(2*A080414(A080414(n)))` -/
def P15749320999003776764.Spec : Prop :=
  ∀ n, P15749320999003776764.a n = A271833 n

end A271833

/-! ## A271833.P4767662805839718945

`A008620(3*A080414(A080414(n)))`
-/

namespace A271833.P4767662805839718945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 (3 * A080414 (A080414 n).toNat).toNat

end

end A271833.P4767662805839718945

namespace A271833

/-- `A008620(3*A080414(A080414(n)))` -/
def P4767662805839718945.Spec : Prop :=
  ∀ n, P4767662805839718945.a n = A271833 n

end A271833

/-! ## A271833.P4225162499325483754

`A008621(4*A080414(A080414(n)))`
-/

namespace A271833.P4225162499325483754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008621 (4 * A080414 (A080414 n).toNat).toNat

end

end A271833.P4225162499325483754

namespace A271833

/-- `A008621(4*A080414(A080414(n)))` -/
def P4225162499325483754.Spec : Prop :=
  ∀ n, P4225162499325483754.a n = A271833 n

end A271833

/-!
# A271834: a(n) = 2^n - Sum_{m=0..n} binomial(n/gcd(n,m), m/gcd(n,m)) = 2^n - A082906.

The programs for A271834, the canonical program `A271834.P9570145317112852376` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A271834 has offset 1).

The definition of A271834 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2^(n+1)-∑{#}[n+1, C((n+1)/gcd(n+1, #), #/gcd(n+1, #))]` (program `A271834.P9570145317112852376`, by `A271834.P9570145317112852376.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A271834.P9570145317112852376

`2^(n+1)-∑{#}[n+1, C((n+1)/gcd(n+1, #), #/gcd(n+1, #))]`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A271834

/-- `2^(n+1)-∑{#}[n+1, C((n+1)/gcd(n+1, #), #/gcd(n+1, #))]` -/
def P9570145317112852376.Spec : Prop :=
  ∀ n, P9570145317112852376.a n = A271834 (n + 1)

theorem P9570145317112852376.correct : P9570145317112852376.Spec := by
  intro n
  simp only [A271834, Nat.add_sub_cancel]

end A271834

/-! ## A271834.P2891459821900003155

`2^(n+1)-A082906(n+1)`
-/

namespace A271834.P2891459821900003155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ (n + 1) : ℤ) - A082906 (n + 1)

end

end A271834.P2891459821900003155

namespace A271834

/-- `2^(n+1)-A082906(n+1)` -/
def P2891459821900003155.Spec : Prop :=
  ∀ n, P2891459821900003155.a n = A271834 (n + 1)

end A271834

/-! ## A271834.P14511283234513245403

`A019301(n+1)+A019302(n+1)-A082906(n+1)`
-/

namespace A271834.P14511283234513245403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019301 (n + 1) + (A019302 (n + 1) - A082906 (n + 1))

end

end A271834.P14511283234513245403

namespace A271834

/-- `A019301(n+1)+A019302(n+1)-A082906(n+1)` -/
def P14511283234513245403.Spec : Prop :=
  ∀ n, P14511283234513245403.a n = A271834 (n + 1)

end A271834

/-! ## A271834.P5052131751791428260

`A056045(n+1)+A056200(n+1)-A082906(n+1)`
-/

namespace A271834.P5052131751791428260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056045 (n + 1) + (A056200 (n + 1) - A082906 (n + 1))

end

end A271834.P5052131751791428260

namespace A271834

/-- `A056045(n+1)+A056200(n+1)-A082906(n+1)` -/
def P5052131751791428260.Spec : Prop :=
  ∀ n, P5052131751791428260.a n = A271834 (n + 1)

end A271834

/-!
# A271840: Primes of the form n^3 + 2n^2 + 5n + 11.

The programs for A271840, there is no canonical definition to state claims against.
-/

/-! ## A271840.P92128622989849864

`p?[(n+2)*(n²+5)+1]`
-/

namespace A271840.P92128622989849864
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 2) * (n ^ 2 + 5) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A271840.P92128622989849864

/-! ## A271840.P9179915412697645193

`or(1, p?[ceil((n+2)/acot(n²+5))])`
-/

namespace A271840.P9179915412697645193
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n + 2 : ℝ) / SequenceMachineLib.acot (n ^ 2 + 5 : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A271840.P9179915412697645193

/-! ## A271840.P13366188095821828596

`or(1, p?[A271779(n)])`
-/

namespace A271840.P13366188095821828596
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271779 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A271840.P13366188095821828596

/-! ## A271840.P16431903171891671104

`or(1, p?[or(1, (n+2)*(A000290(n)+5))])`
-/

namespace A271840.P16431903171891671104
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 ((n + 2 : ℤ) * (A000290 n + 5))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A271840.P16431903171891671104

/-! ## A271840.P10354690341995372694

`∩[A009087(n+1), A271779(n)]`
-/

namespace A271840.P10354690341995372694
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009087 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271779 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A271840.P10354690341995372694

/-!
# A271841: Number of set partitions of [2n] having exactly n pairs (m,m+1) such that m is in some block b and m+1 is in block b+1.

The programs for A271841, there is no canonical definition to state claims against.
-/

/-! ## A271841.P14148967206033723770

`A185982(2*n²+1)`
-/

namespace A271841.P14148967206033723770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185982 (2 * n ^ 2 + 1)

end

end A271841.P14148967206033723770

/-! ## A271841.P6093466560882817025

`A054977(n+2)*A185982(A058331(n))`
-/

namespace A271841.P6093466560882817025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 (n + 2) * A185982 (A058331 n).toNat

end

end A271841.P6093466560882817025

/-! ## A271841.P9899251170930104054

`A057427(n+3)*A185982(A058331(n))`
-/

namespace A271841.P9899251170930104054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (n + 3) * A185982 (A058331 n).toNat

end

end A271841.P9899251170930104054

/-! ## A271841.P11021047502494602130

`A158388(n+3)*A185982(A058331(n))`
-/

namespace A271841.P11021047502494602130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158388 (n + 3) * A185982 (A058331 n).toNat

end

end A271841.P11021047502494602130

/-! ## A271841.P3536199433136718333

`A185982(A058331(n))*A211666(n+4)`
-/

namespace A271841.P3536199433136718333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185982 (A058331 n).toNat * A211666 (n + 4)

end

end A271841.P3536199433136718333

/-!
# A271843: G.f. A(x) satisfies: A(x) = x + A( x*A(x) + x*A(x)^3 ).

The programs for A271843, there is no canonical definition to state claims against.
-/

/-! ## A271843.P11304294270276072521

`A194640(A292211(n+1))`
-/

namespace A271843.P11304294270276072521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194640 (A292211 (n + 1)).toNat

end

end A271843.P11304294270276072521

/-! ## A271843.P3322617833930784685

`A008676(A007689(n)+A001644(n))`
-/

namespace A271843.P3322617833930784685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008676 (A007689 n + A001644 n).toNat

end

end A271843.P3322617833930784685

/-! ## A271843.P13280589629026604651

`A035942(Δ[A001752(n)])`
-/

namespace A271843.P13280589629026604651
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001752 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035942 (f1 (n + 1) - f1 n).toNat

end

end A271843.P13280589629026604651

/-! ## A271843.P7496466521782903731

`A035942(A002623(n+1))`
-/

namespace A271843.P7496466521782903731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035942 (A002623 (n + 1)).toNat

end

end A271843.P7496466521782903731

/-!
# A271844: G.f. A(x) satisfies: A(x) = x + A( A(x)^2 + A(x)^4 ).

The programs for A271844, there is no canonical definition to state claims against.
-/

/-! ## A271844.P17079136451170882457

`A038572(A295760(n+1))`
-/

namespace A271844.P17079136451170882457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038572 (A295760 (n + 1)).toNat

end

end A271844.P17079136451170882457

/-! ## A271844.P3421043582649638488

`A318516(lcm(2, A295760(n+1)))`
-/

namespace A271844.P3421043582649638488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318516 (Int.lcm 2 (A295760 (n + 1)))

end

end A271844.P3421043582649638488

/-! ## A271844.P806959757489795569

`A295760(n+1)/A020639(A000302(n))`
-/

namespace A271844.P806959757489795569
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A295760 (n + 1) : ℚ) / (A020639 (A000302 n).toNat : ℚ)

end

end A271844.P806959757489795569

/-! ## A271844.P14597727228039979974

`A295760(n+1)/A020639(A047009(n))`
-/

namespace A271844.P14597727228039979974
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A295760 (n + 1) : ℚ) / (A020639 (A047009 n).toNat : ℚ)

end

end A271844.P14597727228039979974

/-! ## A271844.P11898828686931914720

`A295760(n+1)/A020639(A051945(n))`
-/

namespace A271844.P11898828686931914720
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A295760 (n + 1) : ℚ) / (A020639 (A051945 n).toNat : ℚ)

end

end A271844.P11898828686931914720

/-!
# A271845: Number of ways to move elements of an nXnXn triangular array to themselves or a neighbor, with no 2-cycles and with no more than 1-1 elements moved to themselves.

The programs for A271845, there is no canonical definition to state claims against.
-/

/-! ## A271845.P9076688001923357461

`A271852(∑[n+1])`
-/

namespace A271845.P9076688001923357461
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271852 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A271845.P9076688001923357461

/-! ## A271845.P954917622309898131

`lcm(2, A271852(A025747(n)))`
-/

namespace A271845.P954917622309898131
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A271852 (A025747 n).toNat)

end

end A271845.P954917622309898131

/-! ## A271845.P7823292889100658654

`A054977(n)*A271852(A025747(n))`
-/

namespace A271845.P7823292889100658654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n * A271852 (A025747 n).toNat

end

end A271845.P7823292889100658654

/-! ## A271845.P4374502886914890054

`A178334(n)*A271852(A025747(n))`
-/

namespace A271845.P4374502886914890054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178334 n * A271852 (A025747 n).toNat

end

end A271845.P4374502886914890054

/-! ## A271845.P11215670476121790933

`A178334(n)*A271852(record[A038722(n+1)])`
-/

namespace A271845.P11215670476121790933
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038722 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178334 n * A271852 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A271845.P11215670476121790933

/-!
# A271846: Number of ways to move elements of an nXnXn triangular array to themselves or a neighbor, with no 2-cycles and with no more than 2-1 elements moved to themselves.

The programs for A271846, there is no canonical definition to state claims against.
-/

/-! ## A271846.P14956514521305283024

`A271852(∑[n+2])`
-/

namespace A271846.P14956514521305283024
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271852 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A271846.P14956514521305283024

/-! ## A271846.P4081673071417786122

`record[A271852(A193974(n))]`
-/

namespace A271846.P4081673071417786122
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271852 (A193974 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A271846.P4081673071417786122

/-! ## A271846.P14882358203678498995

`record[A271852(A347633(n+1)+1)]`
-/

namespace A271846.P14882358203678498995
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271852 (A347633 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A271846.P14882358203678498995

/-! ## A271846.P8987141130211160598

`record[gcd(A008290(n), A271852(n+1))]`
-/

namespace A271846.P8987141130211160598
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A008290 n) (A271852 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A271846.P8987141130211160598

/-! ## A271846.P2497411612066080215

`record[gcd(A055138(n), A271852(n+2))]`
-/

namespace A271846.P2497411612066080215
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A055138 n) (A271852 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A271846.P2497411612066080215

/-!
# A271847: Number of ways to move elements of an nXnXn triangular array to themselves or a neighbor, with no 2-cycles and with no more than 3-1 elements moved to themselves.

The programs for A271847, there is no canonical definition to state claims against.
-/

/-! ## A271847.P468410836462752140

`A271852(∑[n+3]+1)`
-/

namespace A271847.P468410836462752140
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271852 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A271847.P468410836462752140

/-! ## A271847.P7892951378671617286

`record[A271852(A347633(n+2))]`
-/

namespace A271847.P7892951378671617286
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271852 (A347633 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A271847.P7892951378671617286

/-! ## A271847.P10814794104027982490

`record[gcd(A055138(n), A271852(n+1))]`
-/

namespace A271847.P10814794104027982490
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A055138 n) (A271852 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A271847.P10814794104027982490

/-!
# A271848: Number of ways to move elements of an nXnXn triangular array to themselves or a neighbor, with no 2-cycles and with no more than 4-1 elements moved to themselves.

The programs for A271848, there is no canonical definition to state claims against.
-/

/-! ## A271848.P3203373345153132741

`A271852(A141214(n+1))`
-/

namespace A271848.P3203373345153132741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271852 (A141214 (n + 1)).toNat

end

end A271848.P3203373345153132741

/-! ## A271848.P10778110589082250588

`A271852(eq[2, A152157(n)])`
-/

namespace A271848.P10778110589082250588
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152157 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271852 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A271848.P10778110589082250588

/-! ## A271848.P8116233939201205023

`A271852(eq[3, A193592(n)])`
-/

namespace A271848.P8116233939201205023
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271852 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A271848.P8116233939201205023

/-! ## A271848.P5315000031882380873

`A271852(A052905(n+1)+2)`
-/

namespace A271848.P5315000031882380873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271852 (A052905 (n + 1) + 2).toNat

end

end A271848.P5315000031882380873

/-! ## A271848.P14708594455345348098

`A271852(eq[2, A096669(n+1)])`
-/

namespace A271848.P14708594455345348098
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096669 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271852 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A271848.P14708594455345348098

/-!
# A271849: Number of ways to move elements of an nXnXn triangular array to themselves or a neighbor, with no 2-cycles and with no more than 5-1 elements moved to themselves.

The programs for A271849, there is no canonical definition to state claims against.
-/

/-! ## A271849.P11315103764094405105

`A271852(4*(n+2)+∑[n+1]+2)`
-/

namespace A271849.P11315103764094405105
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271852 (4 * (n + 2) + (∑ j ∈ Finset.range (n + 1), f1 j + 2))

end

end A271849.P11315103764094405105

/-!
# A271850: Number of ways to move elements of an nXnXn triangular array to themselves or a neighbor, with no 2-cycles and with no more than 6-1 elements moved to themselves.

The programs for A271850, there is no canonical definition to state claims against.
-/

/-! ## A271850.P14367301088811666726

`A271852(A052905(n+3))`
-/

namespace A271850.P14367301088811666726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271852 (A052905 (n + 3)).toNat

end

end A271850.P14367301088811666726

/-! ## A271850.P5019516234160406644

`A271852(eq[3, A219347(n)])`
-/

namespace A271850.P5019516234160406644
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271852 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A271850.P5019516234160406644

/-! ## A271850.P7307735580867387811

`A271852(eq[5, A152157(n)])`
-/

namespace A271850.P7307735580867387811
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152157 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271852 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A271850.P7307735580867387811

/-!
# A271851: Number of ways to move elements of an nXnXn triangular array to themselves or a neighbor, with no 2-cycles and with no more than 7-1 elements moved to themselves.

The programs for A271851, there is no canonical definition to state claims against.
-/

/-! ## A271851.P12060669586962731059

`A271852(A055999(n+4))`
-/

namespace A271851.P12060669586962731059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271852 (A055999 (n + 4)).toNat

end

end A271851.P12060669586962731059

/-! ## A271851.P13000681117179553684

`A271852(eq[4, A219347(n)])`
-/

namespace A271851.P13000681117179553684
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271852 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A271851.P13000681117179553684

/-!
# A271857: Number of ways to dissect a hexagon with side length n exactly into six identical parts in a triangular lattice.

The programs for A271857, there is no canonical definition to state claims against.
-/

/-! ## A271857.P8224421598485161278

`∑[A174416(A174845(n))]`
-/

namespace A271857.P8224421598485161278
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174416 (A174845 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A271857.P8224421598485161278

/-!
# A271858: Number of ways to trisect a triangle with side length n exactly into three identical parts in a triangular lattice.

The programs for A271858, there is no canonical definition to state claims against.
-/

/-! ## A271858.P8459130388984791746

`C(A000005(A221409(n)), A271518(n+4))`
-/

namespace A271858.P8459130388984791746
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A000005 (A221409 n).toNat).toNat (A271518 (n + 4)).toNat

end

end A271858.P8459130388984791746

/-!
# A271859: Six steps forward, five steps back.

The programs for A271859, the canonical program `A271859.P15823094685610658248` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A271859 has offset 0).

The definition of A271859 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A271859.P15823094685610658248

`ogf((x+x^2+x^3+x^4+x^5+x^6-x^7-x^8-x^9-x^10-x^11)/(1-x-x^11+x^12))`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A271859

/-- `ogf((x+x^2+x^3+x^4+x^5+x^6-x^7-x^8-x^9-x^10-x^11)/(1-x-x^11+x^12))` -/
def P15823094685610658248.Spec : Prop :=
  ∀ n, P15823094685610658248.a n = A271859 n

theorem P15823094685610658248.correct : P15823094685610658248.Spec := by
  intro n
  simp only [A271859]

end A271859

/-! ## A271859.P17621566559710261846

`∑[and(2, -A312927(n+1))]-n`
-/

namespace A271859.P17621566559710261846
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 2 (-A312927 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A271859.P17621566559710261846

namespace A271859

/-- `∑[and(2, -A312927(n+1))]-n` -/
def P17621566559710261846.Spec : Prop :=
  ∀ n, P17621566559710261846.a n = A271859 n

end A271859

/-! ## A271859.P17893861231623339934

`∑[A057428(n)+and(2, -A312927(n+1))]`
-/

namespace A271859.P17893861231623339934
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 n + Int.land 2 (-A312927 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A271859.P17893861231623339934

namespace A271859

/-- `∑[A057428(n)+and(2, -A312927(n+1))]` -/
def P17893861231623339934.Spec : Prop :=
  ∀ n, P17893861231623339934.a n = A271859 n

end A271859

/-! ## A271859.P17927545136287305134

`A023443(a(n-1))+and(2, -A312927(n+1))` with `a(0)=0`
-/

namespace A271859.P17927545136287305134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A023443 (a (n - 1)).toNat + Int.land 2 (-A312927 (n + 1))

end

end A271859.P17927545136287305134

namespace A271859

/-- `A023443(a(n-1))+and(2, -A312927(n+1))` -/
def P17927545136287305134.Spec : Prop :=
  ∀ n, P17927545136287305134.a n = A271859 n

end A271859

/-! ## A271859.P9496131123087654899

`A287655(record[1-Δ[A287655(n)]+n])`
-/

namespace A271859.P9496131123087654899
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287655 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (f2 (n + 1) - f2 n) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287655 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A271859.P9496131123087654899

namespace A271859

/-- `A287655(record[1-Δ[A287655(n)]+n])` -/
def P9496131123087654899.Spec : Prop :=
  ∀ n, P9496131123087654899.a n = A271859 n

end A271859

/-! ## A271859.P17629867398464929281

`∑[A033999(A057347(3*(n+1)))]+1`
-/

namespace A271859.P17629867398464929281
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A057347 (3 * (n + 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A271859.P17629867398464929281

namespace A271859

/-- `∑[A033999(A057347(3*(n+1)))]+1` -/
def P17629867398464929281.Spec : Prop :=
  ∀ n, P17629867398464929281.a n = A271859 n

end A271859

/-! ## A271859.P778590296381008205

`A196199(n²)+∑[and(2, -A312927(n+1))]`
-/

namespace A271859.P778590296381008205
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 2 (-A312927 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196199 (n ^ 2) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A271859.P778590296381008205

namespace A271859

/-- `A196199(n²)+∑[and(2, -A312927(n+1))]` -/
def P778590296381008205.Spec : Prop :=
  ∀ n, P778590296381008205.a n = A271859 n

end A271859

/-! ## A271859.P8149111867213787764

`∑[A057428(n)^A119589(A005408(n))]`
-/

namespace A271859.P8149111867213787764
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A057428 n : ℚ) ^ (A119589 (A005408 n).toNat : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A271859.P8149111867213787764

namespace A271859

/-- `∑[A057428(n)^A119589(A005408(n))]` -/
def P8149111867213787764.Spec : Prop :=
  ∀ n, P8149111867213787764.a n = (A271859 n : ℚ)

end A271859

/-!
# A271860: a(n) = -Sum_{i=1..n} (-1)^floor(n/i).

The programs for A271860, the canonical program `A271860.P3677312302539639278` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A271860 has offset 0).

The definition of A271860 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A271860.P3677312302539639278

`-∑{#}[n-1, (-1)^floor(n/(#+1))]`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A271860

/-- `-∑{#}[n-1, (-1)^floor(n/(#+1))]` -/
def P3677312302539639278.Spec : Prop :=
  ∀ n, P3677312302539639278.a n = (A271860 n : ℚ)

end A271860

/-! ## A271860.P9320768908146729078

`2*∑[∑{d}[n, -(-1)^#]]-n`
-/

namespace A271860.P9320768908146729078
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), (-((-1) ^ d))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f1 j) - (n : ℤ)

end

end A271860.P9320768908146729078

namespace A271860

/-- `2*∑[∑{d}[n, -(-1)^#]]-n` -/
def P9320768908146729078.Spec : Prop :=
  ∀ n, P9320768908146729078.a n = A271860 n

end A271860

/-! ## A271860.P2750348476470373538

`2*A059851(n)-n`
-/

namespace A271860.P2750348476470373538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A059851 n - (n : ℤ)

end

end A271860.P2750348476470373538

namespace A271860

/-- `2*A059851(n)-n` -/
def P2750348476470373538.Spec : Prop :=
  ∀ n, P2750348476470373538.a n = A271860 n

end A271860

/-! ## A271860.P10395627032319422258

`n-2*A075997(n)`
-/

namespace A271860.P10395627032319422258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 2 * A075997 n

end

end A271860.P10395627032319422258

namespace A271860

/-- `n-2*A075997(n)` -/
def P10395627032319422258.Spec : Prop :=
  ∀ n, P10395627032319422258.a n = A271860 n

end A271860

/-! ## A271860.P13623147447981961395

`A005843(A059851(n))-n`
-/

namespace A271860.P13623147447981961395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A059851 n).toNat - (n : ℤ)

end

end A271860.P13623147447981961395

namespace A271860

/-- `A005843(A059851(n))-n` -/
def P13623147447981961395.Spec : Prop :=
  ∀ n, P13623147447981961395.a n = A271860 n

end A271860

/-! ## A271860.P17763350155733030536

`n-A005843(A075997(n))`
-/

namespace A271860.P17763350155733030536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A005843 (A075997 n).toNat

end

end A271860.P17763350155733030536

namespace A271860

/-- `n-A005843(A075997(n))` -/
def P17763350155733030536.Spec : Prop :=
  ∀ n, P17763350155733030536.a n = A271860 n

end A271860

/-! ## A271860.P8288221014131547545

`A059851(n)-A075997(n)`
-/

namespace A271860.P8288221014131547545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059851 n - A075997 n

end

end A271860.P8288221014131547545

namespace A271860

/-- `A059851(n)-A075997(n)` -/
def P8288221014131547545.Spec : Prop :=
  ∀ n, P8288221014131547545.a n = A271860 n

end A271860

/-! ## A271860.P16053494556675710813

`A001489(n)+2*A059851(n)`
-/

namespace A271860.P16053494556675710813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001489 n + 2 * A059851 n

end

end A271860.P16053494556675710813

namespace A271860

/-- `A001489(n)+2*A059851(n)` -/
def P16053494556675710813.Spec : Prop :=
  ∀ n, P16053494556675710813.a n = A271860 n

end A271860

/-! ## A271860.P10703560956683767265

`∑[∑{d}[n, #-A014681(A004442(#))]]`
-/

namespace A271860.P10703560956683767265
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), ((d : ℤ) - A014681 (A004442 d).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A271860.P10703560956683767265

namespace A271860

/-- `∑[∑{d}[n, #-A014681(A004442(#))]]` -/
def P10703560956683767265.Spec : Prop :=
  ∀ n, P10703560956683767265.a n = A271860 n

end A271860

/-! ## A271860.P10475750817853188229

`A004273(A059851(n))+n-A004273(n)`
-/

namespace A271860.P10475750817853188229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A059851 n).toNat + ((n : ℤ) - A004273 n)

end

end A271860.P10475750817853188229

namespace A271860

/-- `A004273(A059851(n))+n-A004273(n)` -/
def P10475750817853188229.Spec : Prop :=
  ∀ n, P10475750817853188229.a n = A271860 n

end A271860

/-! ## A271860.P262387169259661208

`A005408(A059851(n))+n-A005408(n)`
-/

namespace A271860.P262387169259661208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (A059851 n).toNat + ((n : ℤ) - A005408 n)

end

end A271860.P262387169259661208

namespace A271860

/-- `A005408(A059851(n))+n-A005408(n)` -/
def P262387169259661208.Spec : Prop :=
  ∀ n, P262387169259661208.a n = A271860 n

end A271860

/-! ## A271860.P11019978057476849088

`A059851(n)+A001489(n-A059851(n))`
-/

namespace A271860.P11019978057476849088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059851 n + A001489 ((n : ℤ) - A059851 n).toNat

end

end A271860.P11019978057476849088

namespace A271860

/-- `A059851(n)+A001489(n-A059851(n))` -/
def P11019978057476849088.Spec : Prop :=
  ∀ n, P11019978057476849088.a n = A271860 n

end A271860

/-! ## A271860.P3577762917301446507

`A059851(n+1)+A325939(n+1)-A330926(n+1)`
-/

namespace A271860.P3577762917301446507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059851 (n + 1) + (A325939 (n + 1) - A330926 (n + 1))

end

end A271860.P3577762917301446507

namespace A271860

/-- `A059851(n+1)+A325939(n+1)-A330926(n+1)` -/
def P3577762917301446507.Spec : Prop :=
  ∀ n, P3577762917301446507.a n = A271860 n

end A271860

/-! ## A271860.P11548897079791066041

`A004273(A059851(n))-A004524(A004273(n))`
-/

namespace A271860.P11548897079791066041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A059851 n).toNat - A004524 (A004273 n).toNat

end

end A271860.P11548897079791066041

namespace A271860

/-- `A004273(A059851(n))-A004524(A004273(n))` -/
def P11548897079791066041.Spec : Prop :=
  ∀ n, P11548897079791066041.a n = A271860 n

end A271860

/-!
# A271870: Convolution of nonzero hexagonal numbers (A000384) with themselves.

The programs for A271870, the canonical program `A271870.P14162339265200465522` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A271870 has offset 0).

The definition of A271870 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A271870.P15326844082713890978

`ogf((1+6x+9x^2)/(1-6x+15x^2-20x^3+15x^4-6x^5+x^6))`
-/

namespace A271870.P15326844082713890978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 6, 9] [1, -6, 15, -20, 15, -6, 1] n

end

end A271870.P15326844082713890978

namespace A271870

/-- `ogf((1+6x+9x^2)/(1-6x+15x^2-20x^3+15x^4-6x^5+x^6))` -/
def P15326844082713890978.Spec : Prop :=
  ∀ n, P15326844082713890978.a n = A271870 n

end A271870

/-! ## A271870.P14162339265200465522

`C(n+3, 3)*(4*n²+6*n+5)/5`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A271870

/-- `C(n+3, 3)*(4*n²+6*n+5)/5` -/
def P14162339265200465522.Spec : Prop :=
  ∀ n, P14162339265200465522.a n = (A271870 n : ℚ)

end A271870

/-! ## A271870.P1911422812772340244

`(n+1)*(n+2)*(n+3)*(4*n²+6*n+5)/30`
-/

namespace A271870.P1911422812772340244
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1) * (n + 2) * (n + 3) * (4 * n ^ 2 + 6 * n + 5) : ℚ) / 30

end

end A271870.P1911422812772340244

namespace A271870

/-- `(n+1)*(n+2)*(n+3)*(4*n²+6*n+5)/30` -/
def P1911422812772340244.Spec : Prop :=
  ∀ n, P1911422812772340244.a n = (A271870 n : ℚ)

end A271870

/-! ## A271870.P1208275347890033884

`∑[A213840(n+1)]`
-/

namespace A271870.P1208275347890033884
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213840 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A271870.P1208275347890033884

namespace A271870

/-- `∑[A213840(n+1)]` -/
def P1208275347890033884.Spec : Prop :=
  ∀ n, P1208275347890033884.a n = A271870 n

end A271870

/-! ## A271870.P11645606569748546478

`∑[∑[A336288(n+1)]]`
-/

namespace A271870.P11645606569748546478
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336288 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A271870.P11645606569748546478

namespace A271870

/-- `∑[∑[A336288(n+1)]]` -/
def P11645606569748546478.Spec : Prop :=
  ∀ n, P11645606569748546478.a n = A271870 n

end A271870

/-! ## A271870.P571242818600669106

`∑[A330805(n)+n+1]`
-/

namespace A271870.P571242818600669106
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330805 n + (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A271870.P571242818600669106

namespace A271870

/-- `∑[A330805(n)+n+1]` -/
def P571242818600669106.Spec : Prop :=
  ∀ n, P571242818600669106.a n = A271870 n

end A271870

/-! ## A271870.P12760235418395814791

`A085461(n+1)-∑[∑[n]]`
-/

namespace A271870.P12760235418395814791
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085461 (n + 1) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A271870.P12760235418395814791

namespace A271870

/-- `A085461(n+1)-∑[∑[n]]` -/
def P12760235418395814791.Spec : Prop :=
  ∀ n, P12760235418395814791.a n = A271870 n

end A271870

/-! ## A271870.P1398617458452688334

`A225007(n)-A033488(n)`
-/

namespace A271870.P1398617458452688334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225007 n - A033488 n

end

end A271870.P1398617458452688334

namespace A271870

/-- `A225007(n)-A033488(n)` -/
def P1398617458452688334.Spec : Prop :=
  ∀ n, P1398617458452688334.a n = A271870 n

end A271870

/-! ## A271870.P14982048768072980624

`A293475(n)+A257199(n+1)`
-/

namespace A271870.P14982048768072980624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293475 n + A257199 (n + 1)

end

end A271870.P14982048768072980624

namespace A271870

/-- `A293475(n)+A257199(n+1)` -/
def P14982048768072980624.Spec : Prop :=
  ∀ n, P14982048768072980624.a n = A271870 n

end A271870

/-! ## A271870.P784492902208481617

`∑[A071270(n+1)]-∑[∑[n]]`
-/

namespace A271870.P784492902208481617
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071270 (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

end

end A271870.P784492902208481617

namespace A271870

/-- `∑[A071270(n+1)]-∑[∑[n]]` -/
def P784492902208481617.Spec : Prop :=
  ∀ n, P784492902208481617.a n = A271870 n

end A271870

/-! ## A271870.P8730566729084899248

`A277229(n+1)+A277229(n+1)-A002417(n+1)`
-/

namespace A271870.P8730566729084899248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277229 (n + 1) + (A277229 (n + 1) - A002417 (n + 1))

end

end A271870.P8730566729084899248

namespace A271870

/-- `A277229(n+1)+A277229(n+1)-A002417(n+1)` -/
def P8730566729084899248.Spec : Prop :=
  ∀ n, P8730566729084899248.a n = A271870 n

end A271870

/-! ## A271870.P647469033611602523

`A001753(2*n)-n*A000292(n+1)`
-/

namespace A271870.P647469033611602523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001753 (2 * n) - (n : ℤ) * A000292 (n + 1)

end

end A271870.P647469033611602523

namespace A271870

/-- `A001753(2*n)-n*A000292(n+1)` -/
def P647469033611602523.Spec : Prop :=
  ∀ n, P647469033611602523.a n = A271870 n

end A271870

/-! ## A271870.P11776531068044023645

`A005995(2*n)`
-/

namespace A271870.P11776531068044023645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005995 (2 * n)

end

end A271870.P11776531068044023645

namespace A271870

/-- `A005995(2*n)` -/
def P11776531068044023645.Spec : Prop :=
  ∀ n, P11776531068044023645.a n = A271870 n

end A271870

/-! ## A271870.P8719416427143582255

`∑[A394279(2*n+1)]`
-/

namespace A271870.P8719416427143582255
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394279 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A271870.P8719416427143582255

namespace A271870

/-- `∑[A394279(2*n+1)]` -/
def P8719416427143582255.Spec : Prop :=
  ∀ n, P8719416427143582255.a n = A271870 n

end A271870

/-! ## A271870.P7182884417128365017

`record[A005995(n)/(-1)^n]`
-/

namespace A271870.P7182884417128365017
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005995 n : ℚ) / ((-1) ^ n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A271870.P7182884417128365017

namespace A271870

/-- `record[A005995(n)/(-1)^n]` -/
def P7182884417128365017.Spec : Prop :=
  ∀ n, P7182884417128365017.a n = (A271870 n : ℚ)

end A271870

/-! ## A271870.P15791142292421815464

`A001753(2*n)-2*A096338(2*n)`
-/

namespace A271870.P15791142292421815464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001753 (2 * n) - 2 * A096338 (2 * n)

end

end A271870.P15791142292421815464

namespace A271870

/-- `A001753(2*n)-2*A096338(2*n)` -/
def P15791142292421815464.Spec : Prop :=
  ∀ n, P15791142292421815464.a n = A271870 n

end A271870

/-! ## A271870.P13881579779866379269

`A032092(2*n+7)-A032091(2*(n+3))`
-/

namespace A271870.P13881579779866379269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032092 (2 * n + 7) - A032091 (2 * (n + 3))

end

end A271870.P13881579779866379269

namespace A271870

/-- `A032092(2*n+7)-A032091(2*(n+3))` -/
def P13881579779866379269.Spec : Prop :=
  ∀ n, P13881579779866379269.a n = A271870 n

end A271870

/-! ## A271870.P15823465034856632249

`A032092(2*n+7)-2*A002624(2*n)`
-/

namespace A271870.P15823465034856632249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032092 (2 * n + 7) - 2 * A002624 (2 * n)

end

end A271870.P15823465034856632249

namespace A271870

/-- `A032092(2*n+7)-2*A002624(2*n)` -/
def P15823465034856632249.Spec : Prop :=
  ∀ n, P15823465034856632249.a n = A271870 n

end A271870

/-!
# A271874: Smallest base-n Fermat pseudoprime with n distinct prime factors.

The programs for A271874, there is no canonical definition to state claims against.
-/

/-! ## A271874.P12009874450803835048

`A271873(A016825(∑[n]))`
-/

namespace A271874.P12009874450803835048
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271873 (A016825 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A271874.P12009874450803835048

/-! ## A271874.P1050275903047838276

`A271873(A001844(n)+1)`
-/

namespace A271874.P1050275903047838276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271873 (A001844 n + 1).toNat

end

end A271874.P1050275903047838276

/-! ## A271874.P7912166087437711904

`A271873(A051890(n+1))`
-/

namespace A271874.P7912166087437711904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271873 (A051890 (n + 1)).toNat

end

end A271874.P7912166087437711904

/-! ## A271874.P15194136805152284075

`A271873(A046092(n)+2)`
-/

namespace A271874.P15194136805152284075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271873 (A046092 n + 2).toNat

end

end A271874.P15194136805152284075

/-! ## A271874.P6770915095664179843

`A271873(∑[A008574(n)]+1)`
-/

namespace A271874.P6770915095664179843
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271873 (∑ j ∈ Finset.range (n + 1), f1 j + 1).toNat

end

end A271874.P6770915095664179843

/-!
# A271875: Triangle T(n,m) = Sum_{k=1..n-m} (k*(-1)^k*binomial(m+k-1,k)*binomial(2*(n-m),n-m-k))/(n-m), with T(n,n)=1.

The programs for A271875, there is no canonical definition to state claims against.
-/

/-! ## A271875.P735213431799389790

`A097807(n)*A271825(n+1)`
-/

namespace A271875.P735213431799389790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097807 n * A271825 (n + 1)

end

end A271875.P735213431799389790

/-! ## A271875.P4792430818563561423

`A033999(A025581(n))*A271825(n+1)`
-/

namespace A271875.P4792430818563561423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A025581 n).toNat * A271825 (n + 1)

end

end A271875.P4792430818563561423

/-! ## A271875.P1672971734304851965

`A257196(A099375(n))*A271825(n+1)`
-/

namespace A271875.P1672971734304851965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257196 (A099375 n).toNat * A271825 (n + 1)

end

end A271875.P1672971734304851965

/-! ## A271875.P14257502632358280859

`A062157(A004736(n+1))*A271825(n+1)`
-/

namespace A271875.P14257502632358280859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062157 (A004736 (n + 1)).toNat * A271825 (n + 1)

end

end A271875.P14257502632358280859

/-! ## A271875.P9589483463162581355

`A009531(A131421(n+1))*A271825(n+1)`
-/

namespace A271875.P9589483463162581355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009531 (A131421 (n + 1)).toNat * A271825 (n + 1)

end

end A271875.P9589483463162581355

/-! ## A271875.P8865597133000649119

`A033999(A063656(n))*A271825(n+1)`
-/

namespace A271875.P8865597133000649119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A063656 n).toNat * A271825 (n + 1)

end

end A271875.P8865597133000649119

/-! ## A271875.P11633077647889162629

`A008836(A130321(n))*A271825(n+1)`
-/

namespace A271875.P11633077647889162629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008836 (A130321 n).toNat * A271825 (n + 1)

end

end A271875.P11633077647889162629

/-! ## A271875.P17320770309203942182

`A106400(A173787(n))*A271825(n+1)`
-/

namespace A271875.P17320770309203942182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106400 (A173787 n).toNat * A271825 (n + 1)

end

end A271875.P17320770309203942182

/-! ## A271875.P8294767746189816801

`A271825(n+1)*A309873(A054582(n))`
-/

namespace A271875.P8294767746189816801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271825 (n + 1) * A309873 (A054582 n).toNat

end

end A271875.P8294767746189816801

/-! ## A271875.P6817061972171102635

`A033999(A319573(n))*A271825(n+1)`
-/

namespace A271875.P6817061972171102635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A319573 n).toNat * A271825 (n + 1)

end

end A271875.P6817061972171102635

/-!
# A271880: Decimal expansion of the probability that a random real number is evil.

The programs for A271880, there is no canonical definition to state claims against.
-/

/-! ## A271880.P11210407598989007848

`A325375(A151934(n)+3)`
-/

namespace A271880.P11210407598989007848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325375 (A151934 n + 3).toNat

end

end A271880.P11210407598989007848

/-! ## A271880.P2530212944781867261

`A325375(A151935(n)+3)`
-/

namespace A271880.P2530212944781867261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325375 (A151935 n + 3).toNat

end

end A271880.P2530212944781867261

/-! ## A271880.P3420208503587449653

`A033307(A151934(n)+8)`
-/

namespace A271880.P3420208503587449653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033307 (A151934 n + 8).toNat

end

end A271880.P3420208503587449653

/-! ## A271880.P626252356362944626

`A033307(A151935(n)+8)`
-/

namespace A271880.P626252356362944626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033307 (A151935 n + 8).toNat

end

end A271880.P626252356362944626

/-! ## A271880.P1024065347688367237

`A010537(lcm(5, A151934(n)))`
-/

namespace A271880.P1024065347688367237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010537 (Int.lcm 5 (A151934 n) + 1)

end

end A271880.P1024065347688367237

/-! ## A271880.P3212431194096604858

`A033307(or(8, A151934(n)))`
-/

namespace A271880.P3212431194096604858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033307 (Int.lor 8 (A151934 n)).toNat

end

end A271880.P3212431194096604858

/-! ## A271880.P7370338419999131072

`A033307(or(8, A151935(n)))`
-/

namespace A271880.P7370338419999131072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033307 (Int.lor 8 (A151935 n)).toNat

end

end A271880.P7370338419999131072

/-! ## A271880.P5474292482395849601

`A033307(xor(8, A151934(n)))`
-/

namespace A271880.P5474292482395849601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033307 (Int.xor 8 (A151934 n)).toNat

end

end A271880.P5474292482395849601

/-! ## A271880.P13158808858133290059

`A002161(A151934(n)+74)`
-/

namespace A271880.P13158808858133290059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002161 ((A151934 n + 74).toNat + 1)

end

end A271880.P13158808858133290059

/-! ## A271880.P9316907656270740862

`A002161(A151935(n)+74)`
-/

namespace A271880.P9316907656270740862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002161 ((A151935 n + 74).toNat + 1)

end

end A271880.P9316907656270740862

/-!
# A271882: Numbers k such that (10^k + 101)/3 is prime.

The programs for A271882, there is no canonical definition to state claims against.
-/

/-! ## A271882.P9025309386599310180

`A285293(n)+A225654(A271884(n+1))`
-/

namespace A271882.P9025309386599310180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285293 n + A225654 (A271884 (n + 1)).toNat

end

end A271882.P9025309386599310180

/-! ## A271882.P16352016804214611516

`A287770(n+1)+A108500(A098051(n)+1)`
-/

namespace A271882.P16352016804214611516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287770 (n + 1) + A108500 (A098051 n + 1).toNat

end

end A271882.P16352016804214611516

/-! ## A271882.P7929446287516786384

`A285293(n)+A285277(A285291(2*(n+1)))`
-/

namespace A271882.P7929446287516786384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285293 n + A285277 (A285291 (2 * (n + 1))).toNat

end

end A271882.P7929446287516786384

/-! ## A271882.P3380958550525610960

`A285293(n)+A086483(A073785(2*(n+2)))`
-/

namespace A271882.P3380958550525610960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285293 n + A086483 (A073785 (2 * (n + 2))).toNat

end

end A271882.P3380958550525610960

/-! ## A271882.P16966767632709122176

`A285293(n)+A285252(A247500(3*(n+1)))`
-/

namespace A271882.P16966767632709122176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285293 n + A285252 (A247500 (3 * (n + 1))).toNat

end

end A271882.P16966767632709122176

/-!
# A271884: Numbers n such that 4^n-3^(n-1) is prime.

The programs for A271884, there is no canonical definition to state claims against.
-/

/-! ## A271884.P17193005954604343440

`eq[1, A034968(A329038(n))]`
-/

namespace A271884.P17193005954604343440
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034968 (A329038 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A271884.P17193005954604343440

/-! ## A271884.P8078856754209249200

`A004275(eq[A084061(n), A098082(n)])`
-/

namespace A271884.P8078856754209249200
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084061 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098082 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A271884.P8078856754209249200

/-! ## A271884.P14897038935399633716

`A162578(eq[A033665(n), A245792(n)])`
-/

namespace A271884.P14897038935399633716
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033665 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245792 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162578 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A271884.P14897038935399633716

/-! ## A271884.P5701227075591821768

`eq[A168181(n), A302034(A276086(n))]`
-/

namespace A271884.P5701227075591821768
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168181 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302034 (A276086 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A271884.P5701227075591821768

/-! ## A271884.P5066256943559227041

`A161207(A219753(n)+A000961(n+1))`
-/

namespace A271884.P5066256943559227041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161207 (A219753 n + A000961 (n + 1)).toNat

end

end A271884.P5066256943559227041

/-!
# A271885: Number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 406", based on the 5-celled von Neumann neighborhood.

The programs for A271885, there is no canonical definition to state claims against.
-/

/-! ## A271885.P915633937424861038

`A271888(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A271885.P915633937424861038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A271888 (n - 1) + a (n - 1)

end

end A271885.P915633937424861038

/-! ## A271885.P13373215458662664005

`Δ[A271772(n)]-A271888(n)`
-/

namespace A271885.P13373215458662664005
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271772 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A271888 n

end

end A271885.P13373215458662664005

/-! ## A271885.P17091163482871201716

`A271772(n+1)-(A271888(n)+A271772(n))`
-/

namespace A271885.P17091163482871201716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271772 (n + 1) - (A271888 n + A271772 n)

end

end A271885.P17091163482871201716

/-! ## A271885.P105328252497388521

`A033954(n)%A272330(n)+1+n`
-/

namespace A271885.P105328252497388521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A033954 n) (A272330 n) + 1 + (n : ℤ)

end

end A271885.P105328252497388521

/-! ## A271885.P11107159519846704562

`(2*n+1)²-A272330(n)%A005898(n)`
-/

namespace A271885.P11107159519846704562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 * n + 1) ^ 2 : ℤ) - Int.tmod (A272330 n) (A005898 n)

end

end A271885.P11107159519846704562

/-! ## A271885.P18041687522844972016

`A181385(A016825(n))-A272330(n)`
-/

namespace A271885.P18041687522844972016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181385 (A016825 n).toNat - A272330 n

end

end A271885.P18041687522844972016

/-! ## A271885.P2290215191767564768

`A008740(A008458(n))-A272330(n)`
-/

namespace A271885.P2290215191767564768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008740 (A008458 n).toNat - A272330 n

end

end A271885.P2290215191767564768

/-!
# A271887: Number of active (ON, black) cells at stage 2^n-1 of the two-dimensional cellular automaton defined by "Rule 406", based on the 5-celled von Neumann neighborhood.

The programs for A271887, there is no canonical definition to state claims against.
-/

/-! ## A271887.P17108765448346085390

`A271885(2^n-1)`
-/

namespace A271887.P17108765448346085390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271885 (2 ^ n - 1)

end

end A271887.P17108765448346085390

/-! ## A271887.P1711078535288761482

`record[A271885(Δ[A228693(n)])]`
-/

namespace A271887.P1711078535288761482
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228693 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271885 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A271887.P1711078535288761482

/-! ## A271887.P12569382342841106674

`and(-3, A271885(A000225(n)))`
-/

namespace A271887.P12569382342841106674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-3) (A271885 (A000225 n).toNat)

end

end A271887.P12569382342841106674

/-! ## A271887.P3127133377877486265

`record[A271885(A324865(n+1))]`
-/

namespace A271887.P3127133377877486265
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271885 (A324865 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A271887.P3127133377877486265

/-! ## A271887.P762195950927173312

`record[root(A271885(n), A048896(n))]`
-/

namespace A271887.P762195950927173312
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A271885 n : ℝ) ^ (1 / (A048896 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A271887.P762195950927173312

/-!
# A271888: First differences of number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 406", based on the 5-celled von Neumann neighborhood.

The programs for A271888, there is no canonical definition to state claims against.
-/

/-! ## A271888.P14011262583753690358

`Δ[A271885(n)]`
-/

namespace A271888.P14011262583753690358
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271885 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A271888.P14011262583753690358

/-! ## A271888.P12328591824109941247

`A271885(n+1)-A271885(n)`
-/

namespace A271888.P12328591824109941247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271885 (n + 1) - A271885 n

end

end A271888.P12328591824109941247

/-! ## A271888.P15415387208480999623

`Δ[A033954(n)%A272330(n)]+1`
-/

namespace A271888.P15415387208480999623
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A033954 n) (A272330 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 1

end

end A271888.P15415387208480999623

/-! ## A271888.P16949516643134102847

`Δ[(2*n+1)²-A272330(n)%A016754(n)]`
-/

namespace A271888.P16949516643134102847
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 * n + 1) ^ 2 : ℤ) - Int.tmod (A272330 n) (A016754 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A271888.P16949516643134102847

/-! ## A271888.P5726789343072479795

`Δ[A181385(A016825(n))-A272330(n)]`
-/

namespace A271888.P5726789343072479795
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181385 (A016825 n).toNat - A272330 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A271888.P5726789343072479795

/-! ## A271888.P8728171903582525861

`Δ[A181385(A016825(n))]-A272825(n)`
-/

namespace A271888.P8728171903582525861
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181385 (A016825 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A272825 n

end

end A271888.P8728171903582525861

/-!
# A271889: Number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 411", based on the 5-celled von Neumann neighborhood.

The programs for A271889, there is no canonical definition to state claims against.
-/

/-! ## A271889.P6250070418827869316

`∑[A271892(abs(1-n))]-3`
-/

namespace A271889.P6250070418827869316
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271892 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 3

end

end A271889.P6250070418827869316

/-! ## A271889.P10896005370644646559

`A271892(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A271889.P10896005370644646559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A271892 (n - 1) + a (n - 1)

end

end A271889.P10896005370644646559

/-! ## A271889.P8087465227104254957

`∑[A271892((n-1)%(a(n-1)^3))]` with `a(0)=1`
-/

namespace A271889.P8087465227104254957
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A271892 (Int.tmod ((n : ℤ) - 1) (f1 (n - 1) ^ 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A271889.P8087465227104254957

/-! ## A271889.P1312226171411150112

`Δ[A271891(n)]-A271892(n)`
-/

namespace A271889.P1312226171411150112
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271891 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A271892 n

end

end A271889.P1312226171411150112

/-! ## A271889.P12145591761826490852

`A271891(n+1)-(A271892(n)+A271891(n))`
-/

namespace A271889.P12145591761826490852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271891 (n + 1) - (A271892 n + A271891 n)

end

end A271889.P12145591761826490852

/-!
# A271890: Number of active (ON, black) cells at stage 2^n-1 of the two-dimensional cellular automaton defined by "Rule 411", based on the 5-celled von Neumann neighborhood.

The programs for A271890, there is no canonical definition to state claims against.
-/

/-! ## A271890.P11883922746098051947

`A271889(2^n-1)`
-/

namespace A271890.P11883922746098051947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271889 (2 ^ n - 1)

end

end A271890.P11883922746098051947

/-! ## A271890.P13757005793245428051

`record[A271889(A173787(n))]`
-/

namespace A271890.P13757005793245428051
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271889 (A173787 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A271890.P13757005793245428051

/-! ## A271890.P6153201529884604461

`record[A271889(A218616(n))]`
-/

namespace A271890.P6153201529884604461
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271889 (A218616 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A271890.P6153201529884604461

/-! ## A271890.P5986991839565367937

`record[A271889(A324865(n+1))]`
-/

namespace A271890.P5986991839565367937
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271889 (A324865 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A271890.P5986991839565367937

/-! ## A271890.P4073921308793266461

`record[A036987(n)*A271889(n)]`
-/

namespace A271890.P4073921308793266461
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036987 n * A271889 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A271890.P4073921308793266461

/-!
# A271891: Partial sums of the number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 411", based on the 5-celled von Neumann neighborhood.

The programs for A271891, there is no canonical definition to state claims against.
-/

/-! ## A271891.P6229122143417400910

`∑[A271889(n)]`
-/

namespace A271891.P6229122143417400910
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271889 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A271891.P6229122143417400910

/-! ## A271891.P6092413194850574275

`a(n-1)+∑[A271892(abs(1-n))]-3` with `a(0)=1`
-/

namespace A271891.P6092413194850574275
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271892 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (∑ j ∈ Finset.range (n + 1), f1 j - 3)

end

end A271891.P6092413194850574275

/-! ## A271891.P17714210135042310645

`∑[∑[A271892(n)]+1-A271892(n)]`
-/

namespace A271891.P17714210135042310645
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271892 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + (1 - A271892 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A271891.P17714210135042310645

/-! ## A271891.P2002407088264113045

`a(n-1)+A271889(n)+A000007(n)` with `a(0)=1`
-/

namespace A271891.P2002407088264113045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A271889 n + A000007 n)

end

end A271891.P2002407088264113045

/-! ## A271891.P17264483967344399808

`A271889(gcd(n, A008458(n)))+a(n-1)` with `a(0)=1`
-/

namespace A271891.P17264483967344399808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A271889 (Int.gcd (n : ℤ) (A008458 n)) + a (n - 1)

end

end A271891.P17264483967344399808

/-! ## A271891.P18369363494400172950

`a(n-1)+char[A324347(n)]*A271889(n)` with `a(0)=1`
-/

namespace A271891.P18369363494400172950
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324347 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A271889 n

end

end A271891.P18369363494400172950

/-! ## A271891.P10373769730775229635

`A271889(n)+a(A259361(n²))` with `a(0)=1`
-/

namespace A271891.P10373769730775229635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A271889 n + a (A259361 (n ^ 2)).toNat

end

end A271891.P10373769730775229635

/-!
# A271892: First differences of number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 411", based on the 5-celled von Neumann neighborhood.

The programs for A271892, there is no canonical definition to state claims against.
-/

/-! ## A271892.P17743786428071882024

`Δ[A271889(n)]`
-/

namespace A271892.P17743786428071882024
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271889 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A271892.P17743786428071882024

/-! ## A271892.P4145849886175380916

`A271889(n+1)-A271889(n)`
-/

namespace A271892.P4145849886175380916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271889 (n + 1) - A271889 n

end

end A271892.P4145849886175380916

/-! ## A271892.P13025368423768967936

`A271889(n+1)+A196199(A271889(n)²)`
-/

namespace A271892.P13025368423768967936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271889 (n + 1) + A196199 (A271889 n ^ 2).toNat

end

end A271892.P13025368423768967936

/-!
# A271893: Expansion of (2*x+1)*(1-x) / ( 1-2*x-4*x^2+6*x^3 ).

The programs for A271893, the canonical program `A271893.P1902602701960892077` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A271893 has offset 0).

The definition of A271893 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1+x-2x^2)/(1-2x-4x^2+6x^3))` (program `A271893.P1902602701960892077`, by `A271893.P1902602701960892077.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A271893.P1902602701960892077

`ogf((1+x-2x^2)/(1-2x-4x^2+6x^3))`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A271893

/-- `ogf((1+x-2x^2)/(1-2x-4x^2+6x^3))` -/
def P1902602701960892077.Spec : Prop :=
  ∀ n, P1902602701960892077.a n = A271893 n

theorem P1902602701960892077.correct : P1902602701960892077.Spec := by
  intro n
  simp only [A271893]

end A271893

/-! ## A271893.P17918986386880254882

`2*a(n-1)+4*a(n-2)-6*a(n-3)` with `a(0)=1, a(1)=3, a(2)=8`
-/

namespace A271893.P17918986386880254882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3, 8] fun n a =>
  2 * a (n - 1) + 4 * a (n - 2) - 6 * a (n - 3)

end

end A271893.P17918986386880254882

namespace A271893

/-- `2*a(n-1)+4*a(n-2)-6*a(n-3)` -/
def P17918986386880254882.Spec : Prop :=
  ∀ n, P17918986386880254882.a n = A271893 n

end A271893

/-! ## A271893.P10468316129661069433

`A271894(n+1)-2*A271895(n)`
-/

namespace A271893.P10468316129661069433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271894 (n + 1) - 2 * A271895 n

end

end A271893.P10468316129661069433

namespace A271893

/-- `A271894(n+1)-2*A271895(n)` -/
def P10468316129661069433.Spec : Prop :=
  ∀ n, P10468316129661069433.a n = A271893 n

end A271893

/-! ## A271893.P7303908748171977

`A278615(n)-(A271895(n)+A271894(n))`
-/

namespace A271893.P7303908748171977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278615 n - (A271895 n + A271894 n)

end

end A271893.P7303908748171977

namespace A271893

/-- `A278615(n)-(A271895(n)+A271894(n))` -/
def P7303908748171977.Spec : Prop :=
  ∀ n, P7303908748171977.a n = A271893 n

theorem P7303908748171977.correct : P7303908748171977.Spec := by
  intro n
  simp only [A271893, Nat.add_sub_cancel, A271893.P7303908748171977.a, A271893.P1902602701960892077.a, A271894, A271894.P5017146891122805871.a, A271895, A271895.P149276792780790227.a, A278615, A278615.P1388989089013917215.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A271893

/-! ## A271893.P7712854648809283212

`Δ[A278615(n+1)]%A278615(n)`
-/

namespace A271893.P7712854648809283212
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278615 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) (A278615 n)

end

end A271893.P7712854648809283212

namespace A271893

/-- `Δ[A278615(n+1)]%A278615(n)` -/
def P7712854648809283212.Spec : Prop :=
  ∀ n, P7712854648809283212.a n = A271893 n

end A271893

/-!
# A271894: Expansion of (1+x-3*x^2) / ( 1-2*x-4*x^2+6*x^3 ).

The programs for A271894, the canonical program `A271894.P5017146891122805871` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A271894 has offset 0).

The definition of A271894 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1+x-3x^2)/(1-2x-4x^2+6x^3))` (program `A271894.P5017146891122805871`, by `A271894.P5017146891122805871.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A271894.P5017146891122805871

`ogf((1+x-3x^2)/(1-2x-4x^2+6x^3))`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A271894

/-- `ogf((1+x-3x^2)/(1-2x-4x^2+6x^3))` -/
def P5017146891122805871.Spec : Prop :=
  ∀ n, P5017146891122805871.a n = A271894 n

theorem P5017146891122805871.correct : P5017146891122805871.Spec := by
  intro n
  simp only [A271894]

end A271894

/-! ## A271894.P2446466682916937442

`A271895(n+1)/2`
-/

namespace A271894.P2446466682916937442
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A271895 (n + 1) : ℚ) / 2

end

end A271894.P2446466682916937442

namespace A271894

/-- `A271895(n+1)/2` -/
def P2446466682916937442.Spec : Prop :=
  ∀ n, P2446466682916937442.a n = (A271894 n : ℚ)

end A271894

/-! ## A271894.P17706090409304828850

`Δ[∑[A271895(n)]/2]`
-/

namespace A271894.P17706090409304828850
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271895 n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℤ) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A271894.P17706090409304828850

namespace A271894

/-- `Δ[∑[A271895(n)]/2]` -/
def P17706090409304828850.Spec : Prop :=
  ∀ n, P17706090409304828850.a n = (A271894 n : ℚ)

end A271894

/-! ## A271894.P3119643626705669095

`A278615(n)-Δ[A271893(n)]`
-/

namespace A271894.P3119643626705669095
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271893 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278615 n - (f1 (n + 1) - f1 n)

end

end A271894.P3119643626705669095

namespace A271894

/-- `A278615(n)-Δ[A271893(n)]` -/
def P3119643626705669095.Spec : Prop :=
  ∀ n, P3119643626705669095.a n = A271894 n

end A271894

/-! ## A271894.P11882998275221347954

`A278615(n)-(A271895(n)+A271893(n))`
-/

namespace A271894.P11882998275221347954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278615 n - (A271895 n + A271893 n)

end

end A271894.P11882998275221347954

namespace A271894

/-- `A278615(n)-(A271895(n)+A271893(n))` -/
def P11882998275221347954.Spec : Prop :=
  ∀ n, P11882998275221347954.a n = A271894 n

theorem P11882998275221347954.correct : P11882998275221347954.Spec := by
  intro n
  simp only [A271894, Nat.add_sub_cancel, A271894.P11882998275221347954.a, A271894.P5017146891122805871.a, A271893, A271893.P1902602701960892077.a, A271895, A271895.P149276792780790227.a, A278615, A278615.P1388989089013917215.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A271894

/-! ## A271894.P10459534013027278097

`A271893(n)+A278615(n)-A271893(n+1)`
-/

namespace A271894.P10459534013027278097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271893 n + (A278615 n - A271893 (n + 1))

end

end A271894.P10459534013027278097

namespace A271894

/-- `A271893(n)+A278615(n)-A271893(n+1)` -/
def P10459534013027278097.Spec : Prop :=
  ∀ n, P10459534013027278097.a n = A271894 n

end A271894

/-!
# A271895: Expansion of (1-2*x^2) / ( 1-2*x-4*x^2+6*x^3 ).

The programs for A271895, the canonical program `A271895.P149276792780790227` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A271895 has offset 0).

The definition of A271895 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-2x^2)/(1-2x-4x^2+6x^3))` (program `A271895.P149276792780790227`, by `A271895.P149276792780790227.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A271895.P149276792780790227

`ogf((1-2x^2)/(1-2x-4x^2+6x^3))`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A271895

/-- `ogf((1-2x^2)/(1-2x-4x^2+6x^3))` -/
def P149276792780790227.Spec : Prop :=
  ∀ n, P149276792780790227.a n = A271895 n

theorem P149276792780790227.correct : P149276792780790227.Spec := by
  intro n
  simp only [A271895]

end A271895

/-! ## A271895.P1252302694247036640

`A297695(n-1)+a(n-1)` with `a(0)=1, a(1)=2`
-/

namespace A271895.P1252302694247036640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A297695 (n - 1) + a (n - 1)

end

end A271895.P1252302694247036640

namespace A271895

/-- `A297695(n-1)+a(n-1)` -/
def P1252302694247036640.Spec : Prop :=
  ∀ n, P1252302694247036640.a n = A271895 n

end A271895

/-! ## A271895.P14179868023493578199

`record[A000005(n+1)*A271894(A252735(n+1))]`
-/

namespace A271895.P14179868023493578199
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) * A271894 (A252735 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A271895.P14179868023493578199

namespace A271895

/-- `record[A000005(n+1)*A271894(A252735(n+1))]` -/
def P14179868023493578199.Spec : Prop :=
  ∀ n, P14179868023493578199.a n = A271895 n

end A271895

/-! ## A271895.P12038412752659696051

`Δ[A271893(n)]-A271893(n)`
-/

namespace A271895.P12038412752659696051
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271893 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A271893 n

end

end A271895.P12038412752659696051

namespace A271895

/-- `Δ[A271893(n)]-A271893(n)` -/
def P12038412752659696051.Spec : Prop :=
  ∀ n, P12038412752659696051.a n = A271895 n

end A271895

/-! ## A271895.P18112662781346241844

`A271893(n+1)-2*A271893(n)`
-/

namespace A271895.P18112662781346241844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271893 (n + 1) - 2 * A271893 n

end

end A271895.P18112662781346241844

namespace A271895

/-- `A271893(n+1)-2*A271893(n)` -/
def P18112662781346241844.Spec : Prop :=
  ∀ n, P18112662781346241844.a n = A271895 n

end A271895

/-! ## A271895.P8613964327292613892

`A278615(n)-(A271894(n)+A271893(n))`
-/

namespace A271895.P8613964327292613892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278615 n - (A271894 n + A271893 n)

end

end A271895.P8613964327292613892

namespace A271895

/-- `A278615(n)-(A271894(n)+A271893(n))` -/
def P8613964327292613892.Spec : Prop :=
  ∀ n, P8613964327292613892.a n = A271895 n

theorem P8613964327292613892.correct : P8613964327292613892.Spec := by
  intro n
  simp only [A271895, Nat.add_sub_cancel, A271895.P8613964327292613892.a, A271895.P149276792780790227.a, A271893, A271893.P1902602701960892077.a, A271894, A271894.P5017146891122805871.a, A278615, A278615.P1388989089013917215.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A271895

/-! ## A271895.P751333598611417747

`A271894(n+1)+A271894(n)-A278615(n)`
-/

namespace A271895.P751333598611417747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271894 (n + 1) + (A271894 n - A278615 n)

end

end A271895.P751333598611417747

namespace A271895

/-- `A271894(n+1)+A271894(n)-A278615(n)` -/
def P751333598611417747.Spec : Prop :=
  ∀ n, P751333598611417747.a n = A271895 n

end A271895

/-!
# A271896: Expansion of (x-1)^2 / ( 1-4*x+5*x^2-4*x^3 ).

The programs for A271896, the canonical program `A271896.P6566710167280203159` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A271896 has offset 0).

The definition of A271896 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-2x+x^2)/(1-4x+5x^2-4x^3))` (program `A271896.P6566710167280203159`, by `A271896.P6566710167280203159.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A271896.P6566710167280203159

`ogf((1-2x+x^2)/(1-4x+5x^2-4x^3))`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A271896

/-- `ogf((1-2x+x^2)/(1-4x+5x^2-4x^3))` -/
def P6566710167280203159.Spec : Prop :=
  ∀ n, P6566710167280203159.a n = A271896 n

theorem P6566710167280203159.correct : P6566710167280203159.Spec := by
  intro n
  simp only [A271896]

end A271896

/-! ## A271896.P3556246979865694496

`A271897(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A271896.P3556246979865694496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A271897 (n - 1) + a (n - 1)

end

end A271896.P3556246979865694496

namespace A271896

/-- `A271897(n-1)+a(n-1)` -/
def P3556246979865694496.Spec : Prop :=
  ∀ n, P3556246979865694496.a n = A271896 n

end A271896

/-! ## A271896.P3428494526836001318

`∑[A271897(log2(A011782(n)))]`
-/

namespace A271896.P3428494526836001318
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271897 (SequenceMachineLib.roundAway (Real.logb 2 (A011782 n : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A271896.P3428494526836001318

namespace A271896

/-- `∑[A271897(log2(A011782(n)))]` -/
def P3428494526836001318.Spec : Prop :=
  ∀ n, P3428494526836001318.a n = A271896 n

end A271896

/-! ## A271896.P5700940498029587302

`∑[A271897(A004273(n)-n)]`
-/

namespace A271896.P5700940498029587302
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271897 (A004273 n - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A271896.P5700940498029587302

namespace A271896

/-- `∑[A271897(A004273(n)-n)]` -/
def P5700940498029587302.Spec : Prop :=
  ∀ n, P5700940498029587302.a n = A271896 n

end A271896

/-! ## A271896.P11204511800306926267

`∑[A271897(A004526(A004273(n)))]`
-/

namespace A271896.P11204511800306926267
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271897 (A004526 (A004273 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A271896.P11204511800306926267

namespace A271896

/-- `∑[A271897(A004526(A004273(n)))]` -/
def P11204511800306926267.Spec : Prop :=
  ∀ n, P11204511800306926267.a n = A271896 n

end A271896

/-! ## A271896.P6408489463993506034

`A278612(n)-A271897(n+1)`
-/

namespace A271896.P6408489463993506034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278612 n - A271897 (n + 1)

end

end A271896.P6408489463993506034

namespace A271896

/-- `A278612(n)-A271897(n+1)` -/
def P6408489463993506034.Spec : Prop :=
  ∀ n, P6408489463993506034.a n = A271896 n

end A271896

/-! ## A271896.P182323403055197085

`∑[A271897(n)]+1-A271897(n)`
-/

namespace A271896.P182323403055197085
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271897 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (1 - A271897 n)

end

end A271896.P182323403055197085

namespace A271896

/-- `∑[A271897(n)]+1-A271897(n)` -/
def P182323403055197085.Spec : Prop :=
  ∀ n, P182323403055197085.a n = A271896 n

end A271896

/-! ## A271896.P9670025524935761654

`A278612(n)%A271897(A000027(n+1))`
-/

namespace A271896.P9670025524935761654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A278612 n) (A271897 (A000027 (n + 1)).toNat)

end

end A271896.P9670025524935761654

namespace A271896

/-- `A278612(n)%A271897(A000027(n+1))` -/
def P9670025524935761654.Spec : Prop :=
  ∀ n, P9670025524935761654.a n = A271896 n

end A271896

/-! ## A271896.P13129031658168170311

`A278612(n)-A271897(n)-A271898(n)`
-/

namespace A271896.P13129031658168170311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278612 n - A271897 n - A271898 n

end

end A271896.P13129031658168170311

namespace A271896

/-- `A278612(n)-A271897(n)-A271898(n)` -/
def P13129031658168170311.Spec : Prop :=
  ∀ n, P13129031658168170311.a n = A271896 n

end A271896

/-! ## A271896.P13338426873425158002

`A271898(n+1)/2-A271898(n)`
-/

namespace A271896.P13338426873425158002
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A271898 (n + 1) : ℚ) / 2 - (A271898 n : ℚ)

end

end A271896.P13338426873425158002

namespace A271896

/-- `A271898(n+1)/2-A271898(n)` -/
def P13338426873425158002.Spec : Prop :=
  ∀ n, P13338426873425158002.a n = (A271896 n : ℚ)

end A271896

/-!
# A271897: Expansion of ( 1-2*x+3*x^2 ) / ( 1-4*x+5*x^2-4*x^3 ).

The programs for A271897, the canonical program `A271897.P14703378389926598608` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A271897 has offset 0).

The definition of A271897 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-2x+3x^2)/(1-4x+5x^2-4x^3))` (program `A271897.P14703378389926598608`, by `A271897.P14703378389926598608.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A271897.P14703378389926598608

`ogf((1-2x+3x^2)/(1-4x+5x^2-4x^3))`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A271897

/-- `ogf((1-2x+3x^2)/(1-4x+5x^2-4x^3))` -/
def P14703378389926598608.Spec : Prop :=
  ∀ n, P14703378389926598608.a n = A271897 n

theorem P14703378389926598608.correct : P14703378389926598608.Spec := by
  intro n
  simp only [A271897]

end A271897

/-! ## A271897.P6589364888955273364

`∑[A271898(floor(n²/(n+1)))]`
-/

namespace A271897.P6589364888955273364
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271898 ⌊(n ^ 2 : ℚ) / (n + 1 : ℚ)⌋.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A271897.P6589364888955273364

namespace A271897

/-- `∑[A271898(floor(n²/(n+1)))]` -/
def P6589364888955273364.Spec : Prop :=
  ∀ n, P6589364888955273364.a n = A271897 n

end A271897

/-! ## A271897.P17935098747186571460

`A271898(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A271897.P17935098747186571460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A271898 (n - 1) + a (n - 1)

end

end A271897.P17935098747186571460

namespace A271897

/-- `A271898(n-1)+a(n-1)` -/
def P17935098747186571460.Spec : Prop :=
  ∀ n, P17935098747186571460.a n = A271897 n

end A271897

/-! ## A271897.P5870185563089779393

`Δ[A271896(n)]`
-/

namespace A271897.P5870185563089779393
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271896 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A271897.P5870185563089779393

namespace A271897

/-- `Δ[A271896(n)]` -/
def P5870185563089779393.Spec : Prop :=
  ∀ n, P5870185563089779393.a n = A271897 n

end A271897

/-! ## A271897.P17989371166553689908

`A271896(n+1)-A271896(n)`
-/

namespace A271897.P17989371166553689908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271896 (n + 1) - A271896 n

end

end A271897.P17989371166553689908

namespace A271897

/-- `A271896(n+1)-A271896(n)` -/
def P17989371166553689908.Spec : Prop :=
  ∀ n, P17989371166553689908.a n = A271897 n

end A271897

/-! ## A271897.P13066328677575953037

`∑[A271898(n)]+1-A271898(n)`
-/

namespace A271897.P13066328677575953037
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271898 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (1 - A271898 n)

end

end A271897.P13066328677575953037

namespace A271897

/-- `∑[A271898(n)]+1-A271898(n)` -/
def P13066328677575953037.Spec : Prop :=
  ∀ n, P13066328677575953037.a n = A271897 n

end A271897

/-! ## A271897.P18162648623845005545

`A278612(n)-A271896(n)-A271898(n)`
-/

namespace A271897.P18162648623845005545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278612 n - A271896 n - A271898 n

end

end A271897.P18162648623845005545

namespace A271897

/-- `A278612(n)-A271896(n)-A271898(n)` -/
def P18162648623845005545.Spec : Prop :=
  ∀ n, P18162648623845005545.a n = A271897 n

end A271897

/-! ## A271897.P3691999307110458495

`A271896(n+2)%A278612(n)`
-/

namespace A271897.P3691999307110458495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A271896 (n + 2)) (A278612 n)

end

end A271897.P3691999307110458495

namespace A271897

/-- `A271896(n+2)%A278612(n)` -/
def P3691999307110458495.Spec : Prop :=
  ∀ n, P3691999307110458495.a n = A271897 n

end A271897

/-! ## A271897.P12775307738136184510

`A278612(n+1)-(A278612(n)+A271898(n+1))`
-/

namespace A271897.P12775307738136184510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278612 (n + 1) - (A278612 n + A271898 (n + 1))

end

end A271897.P12775307738136184510

namespace A271897

/-- `A278612(n+1)-(A278612(n)+A271898(n+1))` -/
def P12775307738136184510.Spec : Prop :=
  ∀ n, P12775307738136184510.a n = A271897 n

end A271897

/-!
# A271898: Expansion of ( 1+x^2 ) / ( 1-4*x+5*x^2-4*x^3 ).

The programs for A271898, the canonical program `A271898.P1146136900619357386` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A271898 has offset 0).

The definition of A271898 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1+x^2)/(1-4x+5x^2-4x^3))` (program `A271898.P1146136900619357386`, by `A271898.P1146136900619357386.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A271898.P1146136900619357386

`ogf((1+x^2)/(1-4x+5x^2-4x^3))`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A271898

/-- `ogf((1+x^2)/(1-4x+5x^2-4x^3))` -/
def P1146136900619357386.Spec : Prop :=
  ∀ n, P1146136900619357386.a n = A271898 n

theorem P1146136900619357386.correct : P1146136900619357386.Spec := by
  intro n
  simp only [A271898]

end A271898

/-! ## A271898.P2348554958865252879

`Δ[A271897(n)]`
-/

namespace A271898.P2348554958865252879
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271897 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A271898.P2348554958865252879

namespace A271898

/-- `Δ[A271897(n)]` -/
def P2348554958865252879.Spec : Prop :=
  ∀ n, P2348554958865252879.a n = A271898 n

end A271898

/-! ## A271898.P8932295363685510256

`A271897(n+1)-A271897(n)`
-/

namespace A271898.P8932295363685510256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271897 (n + 1) - A271897 n

end

end A271898.P8932295363685510256

namespace A271898

/-- `A271897(n+1)-A271897(n)` -/
def P8932295363685510256.Spec : Prop :=
  ∀ n, P8932295363685510256.a n = A271898 n

end A271898

/-! ## A271898.P9949301779469831333

`A278612(n)-A271896(n+1)`
-/

namespace A271898.P9949301779469831333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278612 n - A271896 (n + 1)

end

end A271898.P9949301779469831333

namespace A271898

/-- `A278612(n)-A271896(n+1)` -/
def P9949301779469831333.Spec : Prop :=
  ∀ n, P9949301779469831333.a n = A271898 n

end A271898

/-! ## A271898.P1613794605777594996

`A278612(n)-A271896(n)-A271897(n)`
-/

namespace A271898.P1613794605777594996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278612 n - A271896 n - A271897 n

end

end A271898.P1613794605777594996

namespace A271898

/-- `A278612(n)-A271896(n)-A271897(n)` -/
def P1613794605777594996.Spec : Prop :=
  ∀ n, P1613794605777594996.a n = A271898 n

end A271898

/-! ## A271898.P17633718443828771537

`Δ[Δ[A271896(n)]]`
-/

namespace A271898.P17633718443828771537
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271896 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A271898.P17633718443828771537

namespace A271898

/-- `Δ[Δ[A271896(n)]]` -/
def P17633718443828771537.Spec : Prop :=
  ∀ n, P17633718443828771537.a n = A271898 n

end A271898

