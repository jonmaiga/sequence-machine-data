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
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C039
import Seq.B000.C040
import Seq.B000.C041
import Seq.B000.C043
import Seq.B000.C044
import Seq.B000.C045
import Seq.B000.C049
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C009
import Seq.B001.C011
import Seq.B001.C012
import Seq.B001.C013
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
import Seq.B003.C004
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
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
import SequenceMachineLib.Triangle

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A168501: Numbers without the decimal digits 2, 4 and 6.

The programs for A168501, there is no canonical definition to state claims against.
-/

/-! ## A168501.P12835975308057212584

`lt[A004183(A001613(n)), 1]`
-/

namespace A168501.P12835975308057212584
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004183 (A001613 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A168501.P12835975308057212584

/-! ## A168501.P3903513324491563892

`eq[n, A222230(A004179(n))]`
-/

namespace A168501.P3903513324491563892
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222230 (A004179 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A168501.P3903513324491563892

/-! ## A168501.P17858346346820252637

`eq[n, A222228(A004181(n))]`
-/

namespace A168501.P17858346346820252637
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222228 (A004181 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A168501.P17858346346820252637

/-! ## A168501.P127608120962517836

`eq[n, A222241(A004177(n))]`
-/

namespace A168501.P127608120962517836
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222241 (A004177 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A168501.P127608120962517836

/-! ## A168501.P326786951342262128

`eq[n, A222243(A107128(n))]`
-/

namespace A168501.P326786951342262128
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222243 (A107128 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A168501.P326786951342262128

/-! ## A168501.P14957598202662288941

`eq[n, A222230(A222228(n))]`
-/

namespace A168501.P14957598202662288941
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222230 (A222228 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A168501.P14957598202662288941

/-! ## A168501.P10853810286624658236

`eq[A222228(n), A222241(n)]`
-/

namespace A168501.P10853810286624658236
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222228 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222241 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A168501.P10853810286624658236

/-! ## A168501.P6983584186039021070

`eq[n, A222241(A222230(n))]`
-/

namespace A168501.P6983584186039021070
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222241 (A222230 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A168501.P6983584186039021070

/-! ## A168501.P11190383304353299289

`lt[A004179(A001613(n)/2), 1]`
-/

namespace A168501.P11190383304353299289
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004179 (SequenceMachineLib.roundAway ((A001613 n : ℚ) / 2)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A168501.P11190383304353299289

/-! ## A168501.P13072715725602435104

`eq[A004183(n), A107128(A004183(n))]`
-/

namespace A168501.P13072715725602435104
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004183 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107128 (A004183 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A168501.P13072715725602435104

/-! ## A168501.P3486413934547222271

`eq[A107128(A107128(n)), A222232(n)]`
-/

namespace A168501.P3486413934547222271
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107128 (A107128 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222232 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A168501.P3486413934547222271

/-!
# A168502: For each permutation of {1,2,...,n} one or more integers might not be part of any longest increasing subsequence (LIS) of that permutation. The sequence lists the number of permutations for which ceiling(n/2) is not part of any LIS. For example, if n=4, 2 is not in any LIS of the two permutations (1342) and (3421).

The programs for A168502, there is no canonical definition to state claims against.
-/

/-! ## A168502.P2947258184689166944

`A002265(A001563(n)-A006190(n))`
-/

namespace A168502.P2947258184689166944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A001563 n - A006190 n).toNat

end

end A168502.P2947258184689166944

/-! ## A168502.P779199683883409767

`A002264(A319755(n)+A292294(n+1))`
-/

namespace A168502.P779199683883409767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A319755 n + A292294 (n + 1)).toNat

end

end A168502.P779199683883409767

/-! ## A168502.P15022278675171409436

`A219180(A339380(n)+A082282(n+1))`
-/

namespace A168502.P15022278675171409436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219180 (A339380 n + A082282 (n + 1)).toNat

end

end A168502.P15022278675171409436

/-!
# A168503: Expansion of 1/(1-x/(1-2x/(1-3x/(1-x/(1-2x/(1-3x/(1-... (continued fraction).

The programs for A168503, there is no canonical definition to state claims against.
-/

/-! ## A168503.P332599059598802515

`A278288(A355361(n))`
-/

namespace A168503.P332599059598802515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278288 (A355361 n).toNat

end

end A168503.P332599059598802515

/-! ## A168503.P18402127145350391937

`or(1, A002264(A161798(n)))`
-/

namespace A168503.P18402127145350391937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A002264 (A161798 n).toNat)

end

end A168503.P18402127145350391937

/-!
# A168504: Hankel transform of A168503.

The programs for A168504, the canonical program `A168504.P17519443222025340193` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A168504 has offset 0).

The definition of A168504 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A168504.P17519443222025340193

`36*a(n-1)*a(n-3)/a(n-4)` with `a(0)=1, a(1)=2, a(2)=12, a(3)=432`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A168504

/-- `36*a(n-1)*a(n-3)/a(n-4)` -/
def P17519443222025340193.Spec : Prop :=
  ∀ n, P17519443222025340193.a n = (A168504 n : ℚ)

end A168504

/-! ## A168504.P14074898550180252015

`∏[A026549(A004773(n))]`
-/

namespace A168504.P14074898550180252015
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026549 (A004773 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A168504.P14074898550180252015

namespace A168504

/-- `∏[A026549(A004773(n))]` -/
def P14074898550180252015.Spec : Prop :=
  ∀ n, P14074898550180252015.a n = A168504 n

end A168504

/-! ## A168504.P12989094838592229445

`3^A000212(n)*A179532(n)`
-/

namespace A168504.P12989094838592229445
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) ^ (A000212 n : ℤ) * (A179532 n : ℚ)

end

end A168504.P12989094838592229445

namespace A168504

/-- `3^A000212(n)*A179532(n)` -/
def P12989094838592229445.Spec : Prop :=
  ∀ n, P12989094838592229445.a n = (A168504 n : ℚ)

end A168504

/-! ## A168504.P16287730427405730707

`∏[∏[A040409(A000079(n))]]`
-/

namespace A168504.P16287730427405730707
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040409 (A000079 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A168504.P16287730427405730707

namespace A168504

/-- `∏[∏[A040409(A000079(n))]]` -/
def P16287730427405730707.Spec : Prop :=
  ∀ n, P16287730427405730707.a n = A168504 n

end A168504

/-! ## A168504.P11916074338153663725

`∏[record[A226532(A000792(n))]]`
-/

namespace A168504.P11916074338153663725
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226532 (A000792 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A168504.P11916074338153663725

namespace A168504

/-- `∏[record[A226532(A000792(n))]]` -/
def P11916074338153663725.Spec : Prop :=
  ∀ n, P11916074338153663725.a n = A168504 n

end A168504

/-!
# A168505: Expansion of 1/(1-x/(1+x/(1-x/(1-x/(1+x/(1-x/(1-x/(1+x/(1-... (continued fraction).

The programs for A168505, the canonical program `A168505.P9674899564726539021` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A168505 has offset 0).

The definition of A168505 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 343 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A168505.P3669544154134437382

`2-A174015(n)`
-/

namespace A168505.P3669544154134437382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A174015 n

end

end A168505.P3669544154134437382

namespace A168505

/-- `2-A174015(n)` -/
def P3669544154134437382.Spec : Prop :=
  ∀ n, P3669544154134437382.a n = A168505 n

end A168505

/-! ## A168505.P9674899564726539021

`a(n-1)-A349047(n-2)` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A168505

/-- `a(n-1)-A349047(n-2)` -/
def P9674899564726539021.Spec : Prop :=
  ∀ n, P9674899564726539021.a n = A168505 n

theorem P9674899564726539021.correct : P9674899564726539021.Spec := by
  intro n
  simp only [A168505]

end A168505

/-! ## A168505.P4821024306448832961

`2-A174014(∑[n])`
-/

namespace A168505.P4821024306448832961
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A174014 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A168505.P4821024306448832961

namespace A168505

/-- `2-A174014(∑[n])` -/
def P4821024306448832961.Spec : Prop :=
  ∀ n, P4821024306448832961.a n = A168505 n

end A168505

/-!
# A168506: Number of rooted plane trees of total weight n whose nodes are themselves planted plane trees whose roots are distinguished as either red or blue, the weight of each such node being equal to the size of the corresponding planted tree.

The programs for A168506, there is no canonical definition to state claims against.
-/

/-! ## A168506.P14435376190432068960

`A343228(A040992(n!))`
-/

namespace A168506.P14435376190432068960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343228 (A040992 (Nat.factorial n)).toNat

end

end A168506.P14435376190432068960

/-! ## A168506.P8195574590764967225

`A349079(A368098(n)+1)`
-/

namespace A168506.P8195574590764967225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349079 (A368098 n + 1).toNat

end

end A168506.P8195574590764967225

/-!
# A168507: a(n) = n^5*(n^10 + 1)/2.

The programs for A168507, the canonical program `A168507.P7360139832923134569` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A168507 has offset 0).

The definition of A168507 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A168507.P10842348366847253685

`n^5*(n^10+1)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A168507.P10842348366847253685
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n ^ 5 * (n ^ 10 + 1) : ℚ) / 2

end

end A168507.P10842348366847253685

namespace A168507

/-- `n^5*(n^10+1)/2` -/
def P10842348366847253685.Spec : Prop :=
  ∀ n, P10842348366847253685.a n = (A168507 n : ℚ)

end A168507

/-! ## A168507.P7360139832923134569

`A006003(n^5)`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A168507

/-- `A006003(n^5)` -/
def P7360139832923134569.Spec : Prop :=
  ∀ n, P7360139832923134569.a n = A168507 n

theorem P7360139832923134569.correct : P7360139832923134569.Spec := by
  intro n
  simp only [A168507]

end A168507

/-! ## A168507.P15553911239121211195

`n*A168346(n)`
-/

namespace A168507.P15553911239121211195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A168346 n

end

end A168507.P15553911239121211195

namespace A168507

/-- `n*A168346(n)` -/
def P15553911239121211195.Spec : Prop :=
  ∀ n, P15553911239121211195.a n = A168507 n

end A168507

/-! ## A168507.P13472845075821194228

`n*n*A168191(n)`
-/

namespace A168507.P13472845075821194228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * ((n : ℤ) * A168191 n)

end

end A168507.P13472845075821194228

namespace A168507

/-- `n*n*A168191(n)` -/
def P13472845075821194228.Spec : Prop :=
  ∀ n, P13472845075821194228.a n = A168507 n

end A168507

/-! ## A168507.P13093802995133175445

`n²²*A168119(n)`
-/

namespace A168507.P13093802995133175445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n ^ 2) ^ 2 : ℤ) * A168119 n

end

end A168507.P13093802995133175445

namespace A168507

/-- `n²²*A168119(n)` -/
def P13093802995133175445.Spec : Prop :=
  ∀ n, P13093802995133175445.a n = A168507 n

end A168507

/-! ## A168507.P1637091011911539911

`A060892(n)*A168364(n)`
-/

namespace A168507.P1637091011911539911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060892 n * A168364 n

end

end A168507.P1637091011911539911

namespace A168507

/-- `A060892(n)*A168364(n)` -/
def P1637091011911539911.Spec : Prop :=
  ∀ n, P1637091011911539911.a n = A168507 n

end A168507

/-! ## A168507.P14352215488502239690

`lcm(A168119(n), A168364(n))`
-/

namespace A168507.P14352215488502239690
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A168119 n) (A168364 n)

end

end A168507.P14352215488502239690

namespace A168507

/-- `lcm(A168119(n), A168364(n))` -/
def P14352215488502239690.Spec : Prop :=
  ∀ n, (P14352215488502239690.a n : ℤ) = A168507 n

end A168507

/-! ## A168507.P651066683278052362

`record[n*A037213(n)*A167963(n)]`
-/

namespace A168507.P651066683278052362
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A037213 n * A167963 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A168507.P651066683278052362

namespace A168507

/-- `record[n*A037213(n)*A167963(n)]` -/
def P651066683278052362.Spec : Prop :=
  ∀ n, P651066683278052362.a n = A168507 n

end A168507

/-! ## A168507.P16372375839558584800

`n*A168123(n²)`
-/

namespace A168507.P16372375839558584800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A168123 (n ^ 2)

end

end A168507.P16372375839558584800

namespace A168507

/-- `n*A168123(n²)` -/
def P16372375839558584800.Spec : Prop :=
  ∀ n, P16372375839558584800.a n = A168507 n

end A168507

/-! ## A168507.P2351190399371338346

`record[A037213(n)*A168123(n)]`
-/

namespace A168507.P2351190399371338346
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037213 n * A168123 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A168507.P2351190399371338346

namespace A168507

/-- `record[A037213(n)*A168123(n)]` -/
def P2351190399371338346.Spec : Prop :=
  ∀ n, P2351190399371338346.a n = A168507 n

end A168507

/-!
# A168508: Triangle read by rows: A101688 * A051731.

The programs for A168508, the canonical program `A168508.P14657316585371629995` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A168508 has offset 1).

The definition of A168508 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A168508.P14657316585371629995

`ceil(ratio[A074909(n)]/2)`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A168508

/-- `ceil(ratio[A074909(n)]/2)` -/
def P14657316585371629995.Spec : Prop :=
  ∀ n, P14657316585371629995.a n = A168508 (n + 1)

theorem P14657316585371629995.correct : P14657316585371629995.Spec := by
  intro n
  simp only [A168508, Nat.add_sub_cancel]

end A168508

/-! ## A168508.P15134014354469732327

`ceil(ratio[A181971(n)]/2)`
-/

namespace A168508.P15134014354469732327
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181971 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(f1 (n + 1) : ℚ) / (f1 n : ℚ) / 2⌉

end

end A168508.P15134014354469732327

namespace A168508

/-- `ceil(ratio[A181971(n)]/2)` -/
def P15134014354469732327.Spec : Prop :=
  ∀ n, P15134014354469732327.a n = A168508 (n + 1)

end A168508

/-! ## A168508.P568618220050822944

`ceil(A010766(n+1)/2)`
-/

namespace A168508.P568618220050822944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A010766 (n + 1) : ℚ) / 2⌉

end

end A168508.P568618220050822944

namespace A168508

/-- `ceil(A010766(n+1)/2)` -/
def P568618220050822944.Spec : Prop :=
  ∀ n, P568618220050822944.a n = A168508 (n + 1)

end A168508

/-! ## A168508.P6441495550820797835

`floor(A050206(n+2)/2)`
-/

namespace A168508.P6441495550820797835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A050206 (n + 2) : ℚ) / 2⌋

end

end A168508.P6441495550820797835

namespace A168508

/-- `floor(A050206(n+2)/2)` -/
def P6441495550820797835.Spec : Prop :=
  ∀ n, P6441495550820797835.a n = A168508 (n + 1)

end A168508

/-! ## A168508.P3068589032874646795

`round(sqrt(A085383(n+1))/2)`
-/

namespace A168508.P3068589032874646795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A085383 (n + 1) : ℝ) / 2)

end

end A168508.P3068589032874646795

namespace A168508

/-- `round(sqrt(A085383(n+1))/2)` -/
def P3068589032874646795.Spec : Prop :=
  ∀ n, P3068589032874646795.a n = A168508 (n + 1)

end A168508

/-! ## A168508.P2332922559243019407

`ceil(ratio[A029656(n+1)]/2)`
-/

namespace A168508.P2332922559243019407
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029656 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(f1 (n + 1) : ℚ) / (f1 n : ℚ) / 2⌉

end

end A168508.P2332922559243019407

namespace A168508

/-- `ceil(ratio[A029656(n+1)]/2)` -/
def P2332922559243019407.Spec : Prop :=
  ∀ n, P2332922559243019407.a n = A168508 (n + 1)

end A168508

/-! ## A168508.P576320159159646802

`A110654(A010766(n+1))`
-/

namespace A168508.P576320159159646802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A010766 (n + 1)).toNat

end

end A168508.P576320159159646802

namespace A168508

/-- `A110654(A010766(n+1))` -/
def P576320159159646802.Spec : Prop :=
  ∀ n, P576320159159646802.a n = A168508 (n + 1)

end A168508

/-! ## A168508.P17847210472942275508

`A115514(A286245(n+1))`
-/

namespace A168508.P17847210472942275508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115514 (A286245 (n + 1)).toNat

end

end A168508.P17847210472942275508

namespace A168508

/-- `A115514(A286245(n+1))` -/
def P17847210472942275508.Spec : Prop :=
  ∀ n, P17847210472942275508.a n = A168508 (n + 1)

end A168508

/-! ## A168508.P951939055721462342

`A004526(A050206(n+2))`
-/

namespace A168508.P951939055721462342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A050206 (n + 2)).toNat

end

end A168508.P951939055721462342

namespace A168508

/-- `A004526(A050206(n+2))` -/
def P951939055721462342.Spec : Prop :=
  ∀ n, P951939055721462342.a n = A168508 (n + 1)

end A168508

/-! ## A168508.P10711605876787719684

`A004526(A010766(n+1)+1)`
-/

namespace A168508.P10711605876787719684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A010766 (n + 1) + 1).toNat

end

end A168508.P10711605876787719684

namespace A168508

/-- `A004526(A010766(n+1)+1)` -/
def P10711605876787719684.Spec : Prop :=
  ∀ n, P10711605876787719684.a n = A168508 (n + 1)

end A168508

/-! ## A168508.P17335599813675642748

`A008619(A010766(n+1)-1)`
-/

namespace A168508.P17335599813675642748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A010766 (n + 1) - 1).toNat

end

end A168508.P17335599813675642748

namespace A168508

/-- `A008619(A010766(n+1)-1)` -/
def P17335599813675642748.Spec : Prop :=
  ∀ n, P17335599813675642748.a n = A168508 (n + 1)

end A168508

/-! ## A168508.P8290191562968242171

`A110655(2*A010766(n+1))`
-/

namespace A168508.P8290191562968242171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110655 (2 * A010766 (n + 1)).toNat

end

end A168508.P8290191562968242171

namespace A168508

/-- `A110655(2*A010766(n+1))` -/
def P8290191562968242171.Spec : Prop :=
  ∀ n, P8290191562968242171.a n = A168508 (n + 1)

end A168508

/-! ## A168508.P14242404840433345761

`A004526(ceil(ratio[A074909(n)])+1)`
-/

namespace A168508.P14242404840433345761
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074909 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (⌈(f1 (n + 1) : ℚ) / (f1 n : ℚ)⌉ + 1).toNat

end

end A168508.P14242404840433345761

namespace A168508

/-- `A004526(ceil(ratio[A074909(n)])+1)` -/
def P14242404840433345761.Spec : Prop :=
  ∀ n, P14242404840433345761.a n = A168508 (n + 1)

end A168508

/-! ## A168508.P1676605520734680529

`A246552(2*ceil(ratio[A074909(n)]))`
-/

namespace A168508.P1676605520734680529
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074909 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246552 (2 * ⌈(f1 (n + 1) : ℚ) / (f1 n : ℚ)⌉).toNat

end

end A168508.P1676605520734680529

namespace A168508

/-- `A246552(2*ceil(ratio[A074909(n)]))` -/
def P1676605520734680529.Spec : Prop :=
  ∀ n, P1676605520734680529.a n = A168508 (n + 1)

end A168508

/-! ## A168508.P3895278406021474655

`A110655(A010766(n+1)+A010766(n+1))`
-/

namespace A168508.P3895278406021474655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110655 (A010766 (n + 1) + A010766 (n + 1)).toNat

end

end A168508.P3895278406021474655

namespace A168508

/-- `A110655(A010766(n+1)+A010766(n+1))` -/
def P3895278406021474655.Spec : Prop :=
  ∀ n, P3895278406021474655.a n = A168508 (n + 1)

end A168508

/-! ## A168508.P5354066874316125166

`ceil(ratio[A029635(n)]/2)`
-/

namespace A168508.P5354066874316125166
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029635 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(f1 (n + 1) : ℚ) / (f1 n : ℚ) / 2⌉

end

end A168508.P5354066874316125166

namespace A168508

/-- `ceil(ratio[A029635(n)]/2)` -/
def P5354066874316125166.Spec : Prop :=
  ∀ n, P5354066874316125166.a n = A168508 (n + 1)

end A168508

/-! ## A168508.P12084663700901009261

`A004526(ceil(ratio[A029635(n)])+1)`
-/

namespace A168508.P12084663700901009261
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029635 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (⌈(f1 (n + 1) : ℚ) / (f1 n : ℚ)⌉ + 1).toNat

end

end A168508.P12084663700901009261

namespace A168508

/-- `A004526(ceil(ratio[A029635(n)])+1)` -/
def P12084663700901009261.Spec : Prop :=
  ∀ n, P12084663700901009261.a n = A168508 (n + 1)

end A168508

/-! ## A168508.P13981487203098565522

`A246552(2*ceil(ratio[A029635(n)]))`
-/

namespace A168508.P13981487203098565522
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029635 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246552 (2 * ⌈(f1 (n + 1) : ℚ) / (f1 n : ℚ)⌉).toNat

end

end A168508.P13981487203098565522

namespace A168508

/-- `A246552(2*ceil(ratio[A029635(n)]))` -/
def P13981487203098565522.Spec : Prop :=
  ∀ n, P13981487203098565522.a n = A168508 (n + 1)

end A168508

/-! ## A168508.P10195636214286399172

`A257212(A128489(n+1)-1)`
-/

namespace A168508.P10195636214286399172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257212 (A128489 (n + 1) - 1).toNat

end

end A168508.P10195636214286399172

namespace A168508

/-- `A257212(A128489(n+1)-1)` -/
def P10195636214286399172.Spec : Prop :=
  ∀ n, P10195636214286399172.a n = A168508 (n + 1)

end A168508

/-! ## A168508.P11333086239693163240

`A234575(A008619(A010766(n+1)²))`
-/

namespace A168508.P11333086239693163240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234575 (A008619 (A010766 (n + 1) ^ 2).toNat).toNat

end

end A168508.P11333086239693163240

namespace A168508

/-- `A234575(A008619(A010766(n+1)²))` -/
def P11333086239693163240.Spec : Prop :=
  ∀ n, P11333086239693163240.a n = A168508 (n + 1)

end A168508

/-!
# A168509: Triangle read by rows, A051731 * A101688.

The programs for A168509, there is no canonical definition to state claims against.
-/

/-! ## A168509.P14731972335402104764

`A249351(A189782(n+1)-(n+1))`
-/

namespace A168509.P14731972335402104764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249351 (A189782 (n + 1) - (n + 1 : ℤ)).toNat

end

end A168509.P14731972335402104764

/-! ## A168509.P3328975378642107250

`A249351(floor(∑[(A343156(3*(n+1))+2)^(1/2)]))`
-/

namespace A168509.P3328975378642107250
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A343156 (3 * (n + 1)) + 2 : ℝ) ^ ((1 : ℚ) / 2 : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249351 ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋.toNat

end

end A168509.P3328975378642107250

/-! ## A168509.P10647473580260959421

`A128184(n+1)^and(A128185(n+1), A133705(n+1))`
-/

namespace A168509.P10647473580260959421
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A128184 (n + 1) : ℚ) ^ (Int.land (A128185 (n + 1)) (A133705 (n + 1)) : ℤ)

end

end A168509.P10647473580260959421

/-! ## A168509.P5144708404059669217

`A249351(A329329(n+1)+A325399(n+1))`
-/

namespace A168509.P5144708404059669217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249351 (A329329 (n + 1) + A325399 (n + 1)).toNat

end

end A168509.P5144708404059669217

/-! ## A168509.P17944534136020133490

`A321923(A238341(n)+1)`
-/

namespace A168509.P17944534136020133490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321923 (A238341 n + 1).toNat

end

end A168509.P17944534136020133490

/-!
# A168510: Products across consecutive rows of the denominators of the Leibniz harmonic triangle (A003506).

The programs for A168510, there is no canonical definition to state claims against.
-/

/-! ## A168510.P16247353450857118312

`∏[(n+1)^(n+1)/n!]`
-/

namespace A168510.P16247353450857118312
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ (n + 1) : ℚ) / (Nat.factorial n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A168510.P16247353450857118312

/-! ## A168510.P1351531952672902261

`(n+1)^(n+1)/n!*a(n-1)` with `a(0)=1`
-/

namespace A168510.P1351531952672902261
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  ((n + 1) ^ (n + 1) : ℚ) / (Nat.factorial n : ℚ) * a (n - 1)

end

end A168510.P1351531952672902261

/-! ## A168510.P9849189186247958196

`A208651(n+2)/(n+2)`
-/

namespace A168510.P9849189186247958196
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A208651 (n + 2) : ℚ) / (n + 2 : ℚ)

end

end A168510.P9849189186247958196

/-! ## A168510.P17786735322249652202

`A000312(n+1)*A001142(n)`
-/

namespace A168510.P17786735322249652202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000312 (n + 1) * A001142 n

end

end A168510.P17786735322249652202

/-! ## A168510.P1901447724437698760

`A000142(n+1)*A001142(n+1)`
-/

namespace A168510.P1901447724437698760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 (n + 1) * A001142 (n + 1)

end

end A168510.P1901447724437698760

/-!
# A168511: Triangle T(n,k), read by rows, given by [0,0,1,1,0,0,1,1,0,0,1,1,0,0,1,1,...] DELTA [1,1,0,0,1,1,0,0,1,1,0,0,1,1,0,0,...] where DELTA is the operator defined in A084938.

The programs for A168511, there is no canonical definition to state claims against.
-/

/-! ## A168511.P5032763468405747254

`A124747(n)*A147810(A182522(n))`
-/

namespace A168511.P5032763468405747254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124747 n * A147810 (A182522 n).toNat

end

end A168511.P5032763468405747254

/-! ## A168511.P9772593172810859354

`and(A008987(A035679(n+1)), A111146(n))`
-/

namespace A168511.P9772593172810859354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A008987 (A035679 (n + 1)).toNat) (A111146 n)

end

end A168511.P9772593172810859354

/-! ## A168511.P16787741979956341268

`and(A093017(A329383(n+1)), A111146(n))`
-/

namespace A168511.P16787741979956341268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A093017 (A329383 (n + 1)).toNat) (A111146 n)

end

end A168511.P16787741979956341268

/-! ## A168511.P15668196655428668548

`and(A111146(n), A202822(A144156(2*n)))`
-/

namespace A168511.P15668196655428668548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A111146 n) (A202822 (A144156 (2 * n)).toNat)

end

end A168511.P15668196655428668548

/-! ## A168511.P12895238942058538647

`A053644(A111146(n)%A359907(3*n+4))`
-/

namespace A168511.P12895238942058538647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053644 (Int.tmod (A111146 n) (A359907 (3 * n + 4))).toNat

end

end A168511.P12895238942058538647

/-!
# A168512: Sum of divisors of n weighted by divisor multiplicity in n.

The programs for A168512, the canonical program `A168512.P2192914386239545548` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A168512 has offset 1).

The definition of A168512 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A168512.P2192914386239545548

`∑{d}[n+1, A175067(#)]`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A168512

/-- `∑{d}[n+1, A175067(#)]` -/
def P2192914386239545548.Spec : Prop :=
  ∀ n, P2192914386239545548.a n = A168512 (n + 1)

theorem P2192914386239545548.correct : P2192914386239545548.Spec := by
  intro n
  simp only [A168512, Nat.add_sub_cancel]

end A168512

/-! ## A168512.P18105090571734187028

`A033999(n)²*∑{d}[A028242(2*n), A175067(#)]`
-/

namespace A168512.P18105090571734187028
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n ^ 2 * (∑ d ∈ Nat.divisors (f1 n).natAbs, A175067 d)

end

end A168512.P18105090571734187028

namespace A168512

/-- `A033999(n)²*∑{d}[A028242(2*n), A175067(#)]` -/
def P18105090571734187028.Spec : Prop :=
  ∀ n, P18105090571734187028.a n = A168512 (n + 1)

end A168512

/-! ## A168512.P15377397758372738236

`A057077(n)²*∑{d}[A028242(2*n), A175067(#)]`
-/

namespace A168512.P15377397758372738236
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057077 n ^ 2 * (∑ d ∈ Nat.divisors (f1 n).natAbs, A175067 d)

end

end A168512.P15377397758372738236

namespace A168512

/-- `A057077(n)²*∑{d}[A028242(2*n), A175067(#)]` -/
def P15377397758372738236.Spec : Prop :=
  ∀ n, P15377397758372738236.a n = A168512 (n + 1)

end A168512

/-! ## A168512.P14009814732557539019

`∑{d}[A028242(2*n), A175067(#)]^A057428(n)²`
-/

namespace A168512.P14009814732557539019
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 (2 * n)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n).natAbs, A175067 d : ℤ) : ℚ) ^ (A057428 n ^ 2 : ℤ)

end

end A168512.P14009814732557539019

namespace A168512

/-- `∑{d}[A028242(2*n), A175067(#)]^A057428(n)²` -/
def P14009814732557539019.Spec : Prop :=
  ∀ n, P14009814732557539019.a n = (A168512 (n + 1) : ℚ)

end A168512

/-! ## A168512.P7980290209224409456

`A028310(∑{d}[A028242(2*n), A175067(#)])`
-/

namespace A168512.P7980290209224409456
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (∑ d ∈ Nat.divisors (f1 n).natAbs, A175067 d).toNat

end

end A168512.P7980290209224409456

namespace A168512

/-- `A028310(∑{d}[A028242(2*n), A175067(#)])` -/
def P7980290209224409456.Spec : Prop :=
  ∀ n, P7980290209224409456.a n = A168512 (n + 1)

end A168512

/-!
# A168514: Number of prime divisors (counted with multiplicity) of Fibonacci(n)+1.

The programs for A168514, the canonical program `A168514.P6706706680364708610` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A168514 has offset 1).

The definition of A168514 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A168514.P6706706680364708610

`A001222(A001611(n+1))`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A168514

/-- `A001222(A001611(n+1))` -/
def P6706706680364708610.Spec : Prop :=
  ∀ n, P6706706680364708610.a n = A168514 (n + 1)

theorem P6706706680364708610.correct : P6706706680364708610.Spec := by
  intro n
  simp only [A168514, Nat.add_sub_cancel]

end A168514

/-! ## A168514.P10246517306124346721

`A001222(A000045(n+1)+1)`
-/

namespace A168514.P10246517306124346721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A000045 (n + 1) + 1).toNat

end

end A168514.P10246517306124346721

namespace A168514

/-- `A001222(A000045(n+1)+1)` -/
def P10246517306124346721.Spec : Prop :=
  ∀ n, P10246517306124346721.a n = A168514 (n + 1)

end A168514

/-! ## A168514.P5649218474491308537

`∑{e}[floor(ϕ*a(n-1)), #]` with `a(0)=2, a(1)=2`
-/

namespace A168514.P5649218474491308537
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2, 2] fun n f1 =>
  ⌊Real.goldenRatio * (f1 (n - 1) : ℝ)⌋

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A168514.P5649218474491308537

namespace A168514

/-- `∑{e}[floor(ϕ*a(n-1)), #]` -/
def P5649218474491308537.Spec : Prop :=
  ∀ n, (P5649218474491308537.a n : ℤ) = A168514 (n + 1)

end A168514

/-! ## A168514.P13989628619211474834

`∑{e}[∑[round(ϕ*a(n-1))], #]` with `a(0)=2, a(1)=0, a(2)=1, a(3)=1`
-/

namespace A168514.P13989628619211474834
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [2, 0, 1, 1] fun n f2 =>
  SequenceMachineLib.roundAway (Real.goldenRatio * (f2 (n - 1) : ℝ))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A168514.P13989628619211474834

namespace A168514

/-- `∑{e}[∑[round(ϕ*a(n-1))], #]` -/
def P13989628619211474834.Spec : Prop :=
  ∀ n, (P13989628619211474834.a n : ℤ) = A168514 (n + 1)

end A168514

/-!
# A168517: Expansion of g.f. (1/2)*( a*(1+x)^n + b*(1-x)^(n+2)*LerchPhi(x, -n-1, 1) + c*2^(n+1)*(1-x)^(n+1)*LerchPhi(x, -n, 1/2) ), where a = -1, b = 1, and c = 1, read by rows.

The programs for A168517, the canonical program `A168517.P3987419255871127776` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A168517 has offset 0).

The definition of A168517 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1916 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A168517.P2606579701152245291

`A290448(n)+A060187(n+1)`
-/

namespace A168517.P2606579701152245291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290448 n + A060187 (n + 1)

end

end A168517.P2606579701152245291

namespace A168517

/-- `A290448(n)+A060187(n+1)` -/
def P2606579701152245291.Spec : Prop :=
  ∀ n, P2606579701152245291.a n = A168517 n

end A168517

/-! ## A168517.P4365787547119415907

`2*A168551(n)-A168552(n)`
-/

namespace A168517.P4365787547119415907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A168551 n - A168552 n

end

end A168517.P4365787547119415907

namespace A168517

/-- `2*A168551(n)-A168552(n)` -/
def P4365787547119415907.Spec : Prop :=
  ∀ n, P4365787547119415907.a n = A168517 n

theorem P4365787547119415907.correct : P4365787547119415907.Spec := by
  intro n
  simp only [A168517, Nat.add_sub_cancel, A168517.P4365787547119415907.a, A168517.P3987419255871127776.a, A008292, A008292.P18172958035633294905.a, A060187, A060187.P2858299442381557721.a, A141689, A141689.P17765687442390039653.a, A168551, A168551.P16251001762095970515.a, A168552, A168552.P16861038903126470007.a, A014473, A014473.P9301799580602651200.a, A007318, A007318.P11755526479805562006.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A168517

/-! ## A168517.P1611331416004512883

`2*A060187(n+1)-A168551(n)`
-/

namespace A168517.P1611331416004512883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A060187 (n + 1) - A168551 n

end

end A168517.P1611331416004512883

namespace A168517

/-- `2*A060187(n+1)-A168551(n)` -/
def P1611331416004512883.Spec : Prop :=
  ∀ n, P1611331416004512883.a n = A168517 n

theorem P1611331416004512883.correct : P1611331416004512883.Spec := by
  intro n
  simp only [A168517, Nat.add_sub_cancel, A168517.P1611331416004512883.a, A168517.P3987419255871127776.a, A008292, A008292.P18172958035633294905.a, A060187, A060187.P2858299442381557721.a, A141689, A141689.P17765687442390039653.a, A168551, A168551.P16251001762095970515.a, A014473, A014473.P9301799580602651200.a, A007318, A007318.P11755526479805562006.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A168517

/-! ## A168517.P10768367215976485481

`A141690(n)+A168551(n)-A008292(n+1)`
-/

namespace A168517.P10768367215976485481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141690 n + (A168551 n - A008292 (n + 1))

end

end A168517.P10768367215976485481

namespace A168517

/-- `A141690(n)+A168551(n)-A008292(n+1)` -/
def P10768367215976485481.Spec : Prop :=
  ∀ n, P10768367215976485481.a n = A168517 n

end A168517

/-! ## A168517.P3987419255871127776

`A008292(n+1)+A060187(n+1)-A141689(n+1)`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A168517

/-- `A008292(n+1)+A060187(n+1)-A141689(n+1)` -/
def P3987419255871127776.Spec : Prop :=
  ∀ n, P3987419255871127776.a n = A168517 n

theorem P3987419255871127776.correct : P3987419255871127776.Spec := by
  intro n
  simp only [A168517]

end A168517

/-! ## A168517.P13205754590311494513

`A168523(n)-A290448(n)`
-/

namespace A168517.P13205754590311494513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168523 n - A290448 n

end

end A168517.P13205754590311494513

namespace A168517

/-- `A168523(n)-A290448(n)` -/
def P13205754590311494513.Spec : Prop :=
  ∀ n, P13205754590311494513.a n = A168517 n

theorem P13205754590311494513.correct : P13205754590311494513.Spec := by
  intro n
  simp only [A168517, Nat.add_sub_cancel, A168517.P13205754590311494513.a, A168517.P3987419255871127776.a, A008292, A008292.P18172958035633294905.a, A060187, A060187.P2858299442381557721.a, A141689, A141689.P17765687442390039653.a, A168523, A168523.P2818392945840428829.a, A290448, A290448.P7491466255583086115.a, A007318, A007318.P11755526479805562006.a, A014473, A014473.P9301799580602651200.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A168517

/-! ## A168517.P2627704311510237480

`(A168523(n)+A060187(n+1))/2`
-/

namespace A168517.P2627704311510237480
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A168523 n + A060187 (n + 1) : ℚ) / 2

end

end A168517.P2627704311510237480

namespace A168517

/-- `(A168523(n)+A060187(n+1))/2` -/
def P2627704311510237480.Spec : Prop :=
  ∀ n, P2627704311510237480.a n = (A168517 n : ℚ)

end A168517

/-! ## A168517.P9860517403055821460

`A168524(n)+A168551(n)-A168523(n)`
-/

namespace A168517.P9860517403055821460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168524 n + (A168551 n - A168523 n)

end

end A168517.P9860517403055821460

namespace A168517

/-- `A168524(n)+A168551(n)-A168523(n)` -/
def P9860517403055821460.Spec : Prop :=
  ∀ n, P9860517403055821460.a n = A168517 n

end A168517

/-! ## A168517.P15613113877514822373

`A168523(n)+A168551(n)-A060187(n+1)`
-/

namespace A168517.P15613113877514822373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168523 n + (A168551 n - A060187 (n + 1))

end

end A168517.P15613113877514822373

namespace A168517

/-- `A168523(n)+A168551(n)-A060187(n+1)` -/
def P15613113877514822373.Spec : Prop :=
  ∀ n, P15613113877514822373.a n = A168517 n

end A168517

/-! ## A168517.P983478009660536670

`(A154335(n)+A141690(n))/2`
-/

namespace A168517.P983478009660536670
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A154335 n + A141690 n : ℚ) / 2

end

end A168517.P983478009660536670

namespace A168517

/-- `(A154335(n)+A141690(n))/2` -/
def P983478009660536670.Spec : Prop :=
  ∀ n, P983478009660536670.a n = (A168517 n : ℚ)

end A168517

/-! ## A168517.P2645413515910735091

`2*A154334(n)-A141689(n+1)`
-/

namespace A168517.P2645413515910735091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A154334 n - A141689 (n + 1)

end

end A168517.P2645413515910735091

namespace A168517

/-- `2*A154334(n)-A141689(n+1)` -/
def P2645413515910735091.Spec : Prop :=
  ∀ n, P2645413515910735091.a n = A168517 n

end A168517

/-!
# A168518: Expansion of g.f. (1/2)*( a*(1+x)^n + b*(1-x)^(n+2)*LerchPhi(x, -n-1, 1) + c*2^(n+1)*(1-x)^(n+1)*LerchPhi(x, -n, 1/2) ), where a = -4, b = 2, and c = 2, read by rows.

The programs for A168518, the canonical program `A168518.P6554383422937222946` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A168518 has offset 0).

The definition of A168518 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1916 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A168518.P6554383422937222946

`2*A168517(n)-A007318(n)`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A168518

/-- `2*A168517(n)-A007318(n)` -/
def P6554383422937222946.Spec : Prop :=
  ∀ n, P6554383422937222946.a n = A168518 n

theorem P6554383422937222946.correct : P6554383422937222946.Spec := by
  intro n
  simp only [A168518]

end A168518

/-! ## A168518.P12363921991564663321

`2*A168523(n)-A008292(n+1)`
-/

namespace A168518.P12363921991564663321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A168523 n - A008292 (n + 1)

end

end A168518.P12363921991564663321

namespace A168518

/-- `2*A168523(n)-A008292(n+1)` -/
def P12363921991564663321.Spec : Prop :=
  ∀ n, P12363921991564663321.a n = A168518 n

end A168518

/-! ## A168518.P368656816447316483

`2*A168524(n)-A141696(n+1)`
-/

namespace A168518.P368656816447316483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A168524 n - A141696 (n + 1)

end

end A168518.P368656816447316483

namespace A168518

/-- `2*A168524(n)-A141696(n+1)` -/
def P368656816447316483.Spec : Prop :=
  ∀ n, P368656816447316483.a n = A168518 n

end A168518

/-! ## A168518.P2843979959739205407

`A168523(n)+A168524(n)-A141690(n)`
-/

namespace A168518.P2843979959739205407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168523 n + (A168524 n - A141690 n)

end

end A168518.P2843979959739205407

namespace A168518

/-- `A168523(n)+A168524(n)-A141690(n)` -/
def P2843979959739205407.Spec : Prop :=
  ∀ n, P2843979959739205407.a n = A168518 n

end A168518

/-! ## A168518.P4642168129289634335

`A154335(n)+4*A290448(n)`
-/

namespace A168518.P4642168129289634335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154335 n + 4 * A290448 n

end

end A168518.P4642168129289634335

namespace A168518

/-- `A154335(n)+4*A290448(n)` -/
def P4642168129289634335.Spec : Prop :=
  ∀ n, P4642168129289634335.a n = A168518 n

end A168518

/-! ## A168518.P5985913736047338724

`A141690(n)+A154335(n)-A007318(n)`
-/

namespace A168518.P5985913736047338724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141690 n + (A154335 n - A007318 n)

end

end A168518.P5985913736047338724

namespace A168518

/-- `A141690(n)+A154335(n)-A007318(n)` -/
def P5985913736047338724.Spec : Prop :=
  ∀ n, P5985913736047338724.a n = A168518 n

end A168518

/-! ## A168518.P7440274488992687446

`A154335(n)+A176200(n)-A109128(n)`
-/

namespace A168518.P7440274488992687446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154335 n + (A176200 n - A109128 n)

end

end A168518.P7440274488992687446

namespace A168518

/-- `A154335(n)+A176200(n)-A109128(n)` -/
def P7440274488992687446.Spec : Prop :=
  ∀ n, P7440274488992687446.a n = A168518 n

end A168518

/-!
# A168520: a(n) = 98*a(n-1) - a(n-2); a(1) = 0, a(2) = 10.

The programs for A168520, the canonical program `A168520.P5730804735122612622` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A168520 has offset 1).

The definition of A168520 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `98*a(n-1)-a(n-2)` (program `A168520.P5730804735122612622`, by `A168520.P5730804735122612622.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A168520.P10194818401646017441

`ogf(10x/(1-98x+x^2))`
-/

namespace A168520.P10194818401646017441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 10] [1, -98, 1] n

end

end A168520.P10194818401646017441

namespace A168520

/-- `ogf(10x/(1-98x+x^2))` -/
def P10194818401646017441.Spec : Prop :=
  ∀ n, P10194818401646017441.a n = A168520 (n + 1)

end A168520

/-! ## A168520.P5730804735122612622

`98*a(n-1)-a(n-2)` with `a(0)=0, a(1)=10`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A168520

/-- `98*a(n-1)-a(n-2)` -/
def P5730804735122612622.Spec : Prop :=
  ∀ n, P5730804735122612622.a n = A168520 (n + 1)

theorem P5730804735122612622.correct : P5730804735122612622.Spec := by
  intro n
  simp only [A168520, Nat.add_sub_cancel]

end A168520

/-! ## A168520.P10187744996592611868

`A004189(2*n)`
-/

namespace A168520.P10187744996592611868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004189 (2 * n)

end

end A168520.P10187744996592611868

namespace A168520

/-- `A004189(2*n)` -/
def P10187744996592611868.Spec : Prop :=
  ∀ n, P10187744996592611868.a n = A168520 (n + 1)

end A168520

/-! ## A168520.P8995948367965271398

`A072818(n)/2`
-/

namespace A168520.P8995948367965271398
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A072818 n : ℚ) / 2

end

end A168520.P8995948367965271398

namespace A168520

/-- `A072818(n)/2` -/
def P8995948367965271398.Spec : Prop :=
  ∀ n, P8995948367965271398.a n = (A168520 (n + 1) : ℚ)

end A168520

/-! ## A168520.P15741152069422594044

`A001078(2*n)/2`
-/

namespace A168520.P15741152069422594044
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001078 (2 * n) : ℚ) / 2

end

end A168520.P15741152069422594044

namespace A168520

/-- `A001078(2*n)/2` -/
def P15741152069422594044.Spec : Prop :=
  ∀ n, P15741152069422594044.a n = (A168520 (n + 1) : ℚ)

end A168520

/-! ## A168520.P5515312537908007129

`A122652(2*n)/4`
-/

namespace A168520.P5515312537908007129
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A122652 (2 * n) : ℚ) / 4

end

end A168520.P5515312537908007129

namespace A168520

/-- `A122652(2*n)/4` -/
def P5515312537908007129.Spec : Prop :=
  ∀ n, P5515312537908007129.a n = (A168520 (n + 1) : ℚ)

end A168520

/-! ## A168520.P11301817861571891443

`A122653(2*n)/6`
-/

namespace A168520.P11301817861571891443
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A122653 (2 * n) : ℚ) / 6

end

end A168520.P11301817861571891443

namespace A168520

/-- `A122653(2*n)/6` -/
def P11301817861571891443.Spec : Prop :=
  ∀ n, P11301817861571891443.a n = (A168520 (n + 1) : ℚ)

end A168520

/-! ## A168520.P4352994856274933349

`record[A004189(A014681(n))]`
-/

namespace A168520.P4352994856274933349
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004189 (A014681 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A168520.P4352994856274933349

namespace A168520

/-- `record[A004189(A014681(n))]` -/
def P4352994856274933349.Spec : Prop :=
  ∀ n, P4352994856274933349.a n = A168520 (n + 1)

end A168520

/-! ## A168520.P12084273197428189946

`A204519(A016933(n))/2`
-/

namespace A168520.P12084273197428189946
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A204519 (A016933 n).toNat : ℚ) / 2

end

end A168520.P12084273197428189946

namespace A168520

/-- `A204519(A016933(n))/2` -/
def P12084273197428189946.Spec : Prop :=
  ∀ n, P12084273197428189946.a n = (A168520 (n + 1) : ℚ)

end A168520

/-! ## A168520.P4996493344993292645

`A001078(n)*A001079(n)`
-/

namespace A168520.P4996493344993292645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001078 n * A001079 n

end

end A168520.P4996493344993292645

namespace A168520

/-- `A001078(n)*A001079(n)` -/
def P4996493344993292645.Spec : Prop :=
  ∀ n, P4996493344993292645.a n = A168520 (n + 1)

end A168520

/-!
# A168521: Sort numbers by value of sum of squares of prime factors (cf. A067666). Break ties by putting smaller numbers first. Begin with 0, 1.

The programs for A168521, there is no canonical definition to state claims against.
-/

/-! ## A168521.P15695334091337503281

`A052126(A023898(n+1))%A064411(n+1)`
-/

namespace A168521.P15695334091337503281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A052126 (A023898 (n + 1)).toNat) (A064411 (n + 1))

end

end A168521.P15695334091337503281

/-!
# A168522: a(n) = 98*a(n-1) - 2*a(n-2); a(1) = 0, a(2) = 1.

The programs for A168522, the canonical program `A168522.P2607111796601416602` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A168522 has offset 1).

The definition of A168522 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `98*a(n-1)-2*a(n-2)` (program `A168522.P2607111796601416602`, by `A168522.P2607111796601416602.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A168522.P8126743555911198552

`ogf(x/(1-98x+2x^2))`
-/

namespace A168522.P8126743555911198552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1] [1, -98, 2] n

end

end A168522.P8126743555911198552

namespace A168522

/-- `ogf(x/(1-98x+2x^2))` -/
def P8126743555911198552.Spec : Prop :=
  ∀ n, P8126743555911198552.a n = A168522 (n + 1)

end A168522

/-! ## A168522.P2607111796601416602

`98*a(n-1)-2*a(n-2)` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A168522

/-- `98*a(n-1)-2*a(n-2)` -/
def P2607111796601416602.Spec : Prop :=
  ∀ n, P2607111796601416602.a n = A168522 (n + 1)

theorem P2607111796601416602.correct : P2607111796601416602.Spec := by
  intro n
  simp only [A168522, Nat.add_sub_cancel]

end A168522

/-!
# A168523: Triangle of coefficients of g.f. a*(1+x)^n + b*(1-x)^(n+2)*polylog(-n-1, x)/x + 2^n*c*(1-x)^(n+1)*LerchPhi(x, -n, 1/2), with a = -1, b = 1, c = 1.

The programs for A168523, the canonical program `A168523.P2818392945840428829` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A168523 has offset 0).

The definition of A168523 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1326 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A168523.P5537163493007972040

`A290448(n)+A168517(n)`
-/

namespace A168523.P5537163493007972040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290448 n + A168517 n

end

end A168523.P5537163493007972040

namespace A168523

/-- `A290448(n)+A168517(n)` -/
def P5537163493007972040.Spec : Prop :=
  ∀ n, P5537163493007972040.a n = A168523 n

theorem P5537163493007972040.correct : P5537163493007972040.Spec := by
  intro n
  simp only [A168523, Nat.add_sub_cancel, A168523.P5537163493007972040.a, A168523.P2818392945840428829.a, A007318, A007318.P11755526479805562006.a, A008292, A008292.P18172958035633294905.a, A060187, A060187.P2858299442381557721.a, A168517, A168517.P3987419255871127776.a, A290448, A290448.P7491466255583086115.a, A141689, A141689.P17765687442390039653.a, A014473, A014473.P9301799580602651200.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A168523

/-! ## A168523.P8997018600150802063

`2*A168517(n)-A060187(n+1)`
-/

namespace A168523.P8997018600150802063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A168517 n - A060187 (n + 1)

end

end A168523.P8997018600150802063

namespace A168523

/-- `2*A168517(n)-A060187(n+1)` -/
def P8997018600150802063.Spec : Prop :=
  ∀ n, P8997018600150802063.a n = A168523 n

end A168523

/-! ## A168523.P12233907351950967856

`(A168524(n)+A060187(n+1))/2`
-/

namespace A168523.P12233907351950967856
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A168524 n + A060187 (n + 1) : ℚ) / 2

end

end A168523.P12233907351950967856

namespace A168523

/-- `(A168524(n)+A060187(n+1))/2` -/
def P12233907351950967856.Spec : Prop :=
  ∀ n, P12233907351950967856.a n = (A168523 n : ℚ)

theorem P12233907351950967856.correct : P12233907351950967856.Spec := by
  intro n
  simp only [A168523, Nat.add_sub_cancel, A168523.P12233907351950967856.a, A168523.P2818392945840428829.a, A007318, A007318.P11755526479805562006.a, A008292, A008292.P18172958035633294905.a, A060187, A060187.P2858299442381557721.a, A168524, A168524.P793834532850151239.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A168523

/-! ## A168523.P992566412547937563

`A007318(n)+A168524(n)-A008292(n+1)`
-/

namespace A168523.P992566412547937563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n + (A168524 n - A008292 (n + 1))

end

end A168523.P992566412547937563

namespace A168523

/-- `A007318(n)+A168524(n)-A008292(n+1)` -/
def P992566412547937563.Spec : Prop :=
  ∀ n, P992566412547937563.a n = A168523 n

theorem P992566412547937563.correct : P992566412547937563.Spec := by
  intro n
  simp only [A168523, Nat.add_sub_cancel, A168523.P992566412547937563.a, A168523.P2818392945840428829.a, A007318, A007318.P11755526479805562006.a, A008292, A008292.P18172958035633294905.a, A060187, A060187.P2858299442381557721.a, A168524, A168524.P793834532850151239.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A168523

/-! ## A168523.P413439116692964202

`A060187(n+1)+A168517(n)-A168551(n)`
-/

namespace A168523.P413439116692964202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060187 (n + 1) + (A168517 n - A168551 n)

end

end A168523.P413439116692964202

namespace A168523

/-- `A060187(n+1)+A168517(n)-A168551(n)` -/
def P413439116692964202.Spec : Prop :=
  ∀ n, P413439116692964202.a n = A168523 n

end A168523

/-! ## A168523.P2818392945840428829

`A008292(n+1)+A060187(n+1)-A007318(n)`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A168523

/-- `A008292(n+1)+A060187(n+1)-A007318(n)` -/
def P2818392945840428829.Spec : Prop :=
  ∀ n, P2818392945840428829.a n = A168523 n

theorem P2818392945840428829.correct : P2818392945840428829.Spec := by
  intro n
  simp only [A168523]

end A168523

/-! ## A168523.P10583360910466195452

`A060187(n+1)+A141690(n)-A008292(n+1)`
-/

namespace A168523.P10583360910466195452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060187 (n + 1) + (A141690 n - A008292 (n + 1))

end

end A168523.P10583360910466195452

namespace A168523

/-- `A060187(n+1)+A141690(n)-A008292(n+1)` -/
def P10583360910466195452.Spec : Prop :=
  ∀ n, P10583360910466195452.a n = A168523 n

theorem P10583360910466195452.correct : P10583360910466195452.Spec := by
  intro n
  simp only [A168523, Nat.add_sub_cancel, A168523.P10583360910466195452.a, A168523.P2818392945840428829.a, A007318, A007318.P11755526479805562006.a, A008292, A008292.P18172958035633294905.a, A060187, A060187.P2858299442381557721.a, A141690, A141690.P1589277232017455012.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A168523

/-! ## A168523.P9256176898555565732

`2*A154334(n)-A007318(n)`
-/

namespace A168523.P9256176898555565732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A154334 n - A007318 n

end

end A168523.P9256176898555565732

namespace A168523

/-- `2*A154334(n)-A007318(n)` -/
def P9256176898555565732.Spec : Prop :=
  ∀ n, P9256176898555565732.a n = A168523 n

end A168523

/-! ## A168523.P10089553244245910331

`2*A154334(n)-sqrt(A008459(n))`
-/

namespace A168523.P10089553244245910331
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (2 * A154334 n : ℝ) - Real.sqrt (A008459 n : ℝ)

end

end A168523.P10089553244245910331

namespace A168523

/-- `2*A154334(n)-sqrt(A008459(n))` -/
def P10089553244245910331.Spec : Prop :=
  ∀ n, P10089553244245910331.a n = (A168523 n : ℝ)

end A168523

/-! ## A168523.P12495054864902242126

`(A154335(n)+A141696(n+1))/2`
-/

namespace A168523.P12495054864902242126
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A154335 n + A141696 (n + 1) : ℚ) / 2

end

end A168523.P12495054864902242126

namespace A168523

/-- `(A154335(n)+A141696(n+1))/2` -/
def P12495054864902242126.Spec : Prop :=
  ∀ n, P12495054864902242126.a n = (A168523 n : ℚ)

theorem P12495054864902242126.correct : P12495054864902242126.Spec := by
  intro n
  simp only [A168523, Nat.add_sub_cancel, A168523.P12495054864902242126.a, A168523.P2818392945840428829.a, A007318, A007318.P11755526479805562006.a, A008292, A008292.P18172958035633294905.a, A060187, A060187.P2858299442381557721.a, A141696, A141696.P6177568062758844150.a, A154335, A154335.P1248576058103309358.a, A141690, A141690.P1589277232017455012.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A168523

/-! ## A168523.P311354436429315728

`A141690(n)+A154336(n)-A154335(n)`
-/

namespace A168523.P311354436429315728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141690 n + (A154336 n - A154335 n)

end

end A168523.P311354436429315728

namespace A168523

/-- `A141690(n)+A154336(n)-A154335(n)` -/
def P311354436429315728.Spec : Prop :=
  ∀ n, P311354436429315728.a n = A168523 n

theorem P311354436429315728.correct : P311354436429315728.Spec := by
  intro n
  simp only [A168523, Nat.add_sub_cancel, A168523.P311354436429315728.a, A168523.P2818392945840428829.a, A007318, A007318.P11755526479805562006.a, A008292, A008292.P18172958035633294905.a, A060187, A060187.P2858299442381557721.a, A141690, A141690.P1589277232017455012.a, A154335, A154335.P1248576058103309358.a, A154336, A154336.P13527652642687108654.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A168523

/-!
# A168524: Triangle of coefficients of g.f. a*(1+x)^n + b*(1-x)^(n+2)*polylog(-n-1, x)/x + 2^n*c*(1-x)^(n+1)*LerchPhi(x, -n, 1/2), with a = -2, b = 2, c = 1.

The programs for A168524, the canonical program `A168524.P793834532850151239` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A168524 has offset 0).

The definition of A168524 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1326 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A168524.P8592810315819334714

`A168523(n)+2*A290448(n)`
-/

namespace A168524.P8592810315819334714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168523 n + 2 * A290448 n

end

end A168524.P8592810315819334714

namespace A168524

/-- `A168523(n)+2*A290448(n)` -/
def P8592810315819334714.Spec : Prop :=
  ∀ n, P8592810315819334714.a n = A168524 n

end A168524

/-! ## A168524.P10250612151022401315

`A168517(n)+3*A290448(n)`
-/

namespace A168524.P10250612151022401315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168517 n + 3 * A290448 n

end

end A168524.P10250612151022401315

namespace A168524

/-- `A168517(n)+3*A290448(n)` -/
def P10250612151022401315.Spec : Prop :=
  ∀ n, P10250612151022401315.a n = A168524 n

end A168524

/-! ## A168524.P793834532850151239

`2*A168523(n)-A060187(n+1)`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A168524

/-- `2*A168523(n)-A060187(n+1)` -/
def P793834532850151239.Spec : Prop :=
  ∀ n, P793834532850151239.a n = A168524 n

theorem P793834532850151239.correct : P793834532850151239.Spec := by
  intro n
  simp only [A168524]

end A168524

/-! ## A168524.P7152634318876123972

`A168517(n)+A168523(n)-A168551(n)`
-/

namespace A168524.P7152634318876123972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168517 n + (A168523 n - A168551 n)

end

end A168524.P7152634318876123972

namespace A168524

/-- `A168517(n)+A168523(n)-A168551(n)` -/
def P7152634318876123972.Spec : Prop :=
  ∀ n, P7152634318876123972.a n = A168524 n

end A168524

/-! ## A168524.P6923004232322711431

`A168523(n)+A168551(n)-A168552(n)`
-/

namespace A168524.P6923004232322711431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168523 n + (A168551 n - A168552 n)

end

end A168524.P6923004232322711431

namespace A168524

/-- `A168523(n)+A168551(n)-A168552(n)` -/
def P6923004232322711431.Spec : Prop :=
  ∀ n, P6923004232322711431.a n = A168524 n

end A168524

/-! ## A168524.P9097619023840183719

`A141690(n)+A168523(n)-A008292(n+1)`
-/

namespace A168524.P9097619023840183719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141690 n + (A168523 n - A008292 (n + 1))

end

end A168524.P9097619023840183719

namespace A168524

/-- `A141690(n)+A168523(n)-A008292(n+1)` -/
def P9097619023840183719.Spec : Prop :=
  ∀ n, P9097619023840183719.a n = A168524 n

theorem P9097619023840183719.correct : P9097619023840183719.Spec := by
  intro n
  simp only [A168524, Nat.add_sub_cancel, A168524.P9097619023840183719.a, A168524.P793834532850151239.a, A008292, A008292.P18172958035633294905.a, A060187, A060187.P2858299442381557721.a, A141690, A141690.P1589277232017455012.a, A168523, A168523.P2818392945840428829.a, A007318, A007318.P11755526479805562006.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A168524

/-! ## A168524.P7828354693126153588

`A060187(n+1)+A141696(n+1)-A008292(n+1)`
-/

namespace A168524.P7828354693126153588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060187 (n + 1) + (A141696 (n + 1) - A008292 (n + 1))

end

end A168524.P7828354693126153588

namespace A168524

/-- `A060187(n+1)+A141696(n+1)-A008292(n+1)` -/
def P7828354693126153588.Spec : Prop :=
  ∀ n, P7828354693126153588.a n = A168524 n

theorem P7828354693126153588.correct : P7828354693126153588.Spec := by
  intro n
  simp only [A168524, Nat.add_sub_cancel, A168524.P7828354693126153588.a, A168524.P793834532850151239.a, A008292, A008292.P18172958035633294905.a, A060187, A060187.P2858299442381557721.a, A141696, A141696.P6177568062758844150.a, A168523, A168523.P2818392945840428829.a, A007318, A007318.P11755526479805562006.a, A141690, A141690.P1589277232017455012.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A168524

/-! ## A168524.P16674352432217599928

`2*A141690(n)-A154338(n)`
-/

namespace A168524.P16674352432217599928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A141690 n - A154338 n

end

end A168524.P16674352432217599928

namespace A168524

/-- `2*A141690(n)-A154338(n)` -/
def P16674352432217599928.Spec : Prop :=
  ∀ n, P16674352432217599928.a n = A168524 n

theorem P16674352432217599928.correct : P16674352432217599928.Spec := by
  intro n
  simp only [A168524, Nat.add_sub_cancel, A168524.P16674352432217599928.a, A168524.P793834532850151239.a, A060187, A060187.P2858299442381557721.a, A141690, A141690.P1589277232017455012.a, A154338, A154338.P12998775636047877976.a, A168523, A168523.P2818392945840428829.a, A007318, A007318.P11755526479805562006.a, A008292, A008292.P18172958035633294905.a, A154336, A154336.P13527652642687108654.a, A154335, A154335.P1248576058103309358.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A168524

/-! ## A168524.P2443742288312572520

`A008292(n+1)+A141696(n+1)-A154338(n)`
-/

namespace A168524.P2443742288312572520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008292 (n + 1) + (A141696 (n + 1) - A154338 n)

end

end A168524.P2443742288312572520

namespace A168524

/-- `A008292(n+1)+A141696(n+1)-A154338(n)` -/
def P2443742288312572520.Spec : Prop :=
  ∀ n, P2443742288312572520.a n = A168524 n

theorem P2443742288312572520.correct : P2443742288312572520.Spec := by
  intro n
  simp only [A168524, Nat.add_sub_cancel, A168524.P2443742288312572520.a, A168524.P793834532850151239.a, A008292, A008292.P18172958035633294905.a, A060187, A060187.P2858299442381557721.a, A141696, A141696.P6177568062758844150.a, A154338, A154338.P12998775636047877976.a, A168523, A168523.P2818392945840428829.a, A007318, A007318.P11755526479805562006.a, A141690, A141690.P1589277232017455012.a, A154336, A154336.P13527652642687108654.a, A154335, A154335.P1248576058103309358.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A168524

/-! ## A168524.P10996740647916205712

`A141696(n+1)+A154335(n)-A060187(n+1)`
-/

namespace A168524.P10996740647916205712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141696 (n + 1) + (A154335 n - A060187 (n + 1))

end

end A168524.P10996740647916205712

namespace A168524

/-- `A141696(n+1)+A154335(n)-A060187(n+1)` -/
def P10996740647916205712.Spec : Prop :=
  ∀ n, P10996740647916205712.a n = A168524 n

theorem P10996740647916205712.correct : P10996740647916205712.Spec := by
  intro n
  simp only [A168524, Nat.add_sub_cancel, A168524.P10996740647916205712.a, A168524.P793834532850151239.a, A060187, A060187.P2858299442381557721.a, A141696, A141696.P6177568062758844150.a, A154335, A154335.P1248576058103309358.a, A168523, A168523.P2818392945840428829.a, A007318, A007318.P11755526479805562006.a, A008292, A008292.P18172958035633294905.a, A141690, A141690.P1589277232017455012.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A168524

/-!
# A168526: a(n) = n^6*(n + 1)/2.

The programs for A168526, the canonical program `A168526.P7414752990000463124` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A168526 has offset 0).

The definition of A168526 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n^6*(n+1)/2` (program `A168526.P2872708610808010071`, by `A168526.P2872708610808010071.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A168526.P2872708610808010071

`n^6*(n+1)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A168526.P2872708610808010071
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n ^ 6 * (n + 1) : ℚ) / 2

end

end A168526.P2872708610808010071

namespace A168526

/-- `n^6*(n+1)/2` -/
def P2872708610808010071.Spec : Prop :=
  ∀ n, P2872708610808010071.a n = (A168526 n : ℚ)

theorem P2872708610808010071.correct : P2872708610808010071.Spec := by
  intro n
  simp only [A168526, Nat.add_sub_cancel, A168526.P2872708610808010071.a, A168526.P7414752990000463124.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A168526

/-! ## A168526.P7414752990000463124

`n^5*C(n+1, 2)`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A168526

/-- `n^5*C(n+1, 2)` -/
def P7414752990000463124.Spec : Prop :=
  ∀ n, (P7414752990000463124.a n : ℤ) = A168526 n

theorem P7414752990000463124.correct : P7414752990000463124.Spec := by
  intro n
  simp only [A168526]

end A168526

/-! ## A168526.P17270409935551654560

`n*A168351(n)`
-/

namespace A168526.P17270409935551654560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A168351 n

end

end A168526.P17270409935551654560

namespace A168526

/-- `n*A168351(n)` -/
def P17270409935551654560.Spec : Prop :=
  ∀ n, P17270409935551654560.a n = A168526 n

theorem P17270409935551654560.correct : P17270409935551654560.Spec := by
  intro n
  simp only [A168526, Nat.add_sub_cancel, A168526.P17270409935551654560.a, A168526.P7414752990000463124.a, A168351, A168351.P7899270696741764413.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A168526

/-! ## A168526.P11028970321697110857

`A168179(n)+A085744(n)`
-/

namespace A168526.P11028970321697110857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168179 n + A085744 n

end

end A168526.P11028970321697110857

namespace A168526

/-- `A168179(n)+A085744(n)` -/
def P11028970321697110857.Spec : Prop :=
  ∀ n, P11028970321697110857.a n = A168526 n

theorem P11028970321697110857.correct : P11028970321697110857.Spec := by
  intro n
  simp only [A168526, Nat.add_sub_cancel, A168526.P11028970321697110857.a, A168526.P7414752990000463124.a, A085744, A085744.P6091616498061970500.a, A168179, A168179.P8566416021942520231.a, A000217, A000217.P10269402890581615239.a, A021003, A021003.P1631402243745340027.a, A071252, A071252.P13937739183146272210.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A168526

/-! ## A168526.P14870218097301057884

`A163275(n)-A168351(n)`
-/

namespace A168526.P14870218097301057884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163275 n - A168351 n

end

end A168526.P14870218097301057884

namespace A168526

/-- `A163275(n)-A168351(n)` -/
def P14870218097301057884.Spec : Prop :=
  ∀ n, P14870218097301057884.a n = A168526 n

theorem P14870218097301057884.correct : P14870218097301057884.Spec := by
  intro n
  simp only [A168526, Nat.add_sub_cancel, A168526.P14870218097301057884.a, A168526.P7414752990000463124.a, A163275, A163275.P10130318515127563795.a, A168351, A168351.P7899270696741764413.a, A000217, A000217.P10269402890581615239.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A168526

/-! ## A168526.P10768361550355569366

`A163276(n)-A168635(n)`
-/

namespace A168526.P10768361550355569366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163276 n - A168635 n

end

end A168526.P10768361550355569366

namespace A168526

/-- `A163276(n)-A168635(n)` -/
def P10768361550355569366.Spec : Prop :=
  ∀ n, P10768361550355569366.a n = A168526 n

theorem P10768361550355569366.correct : P10768361550355569366.Spec := by
  intro n
  simp only [A168526, Nat.add_sub_cancel, A168526.P10768361550355569366.a, A168526.P7414752990000463124.a, A163276, A163276.P13370388899047673994.a, A168635, A168635.P17459078224104995455.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A168526

/-! ## A168526.P13360240749253715375

`A000217(n)*A000584(n)`
-/

namespace A168526.P13360240749253715375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 n * A000584 n

end

end A168526.P13360240749253715375

namespace A168526

/-- `A000217(n)*A000584(n)` -/
def P13360240749253715375.Spec : Prop :=
  ∀ n, P13360240749253715375.a n = A168526 n

theorem P13360240749253715375.correct : P13360240749253715375.Spec := by
  intro n
  simp only [A168526, Nat.add_sub_cancel, A168526.P13360240749253715375.a, A168526.P7414752990000463124.a, A000217, A000217.P10269402890581615239.a, A000584, A000584.P5477385692209315495.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A168526

/-! ## A168526.P638177458322433018

`A000583(n)*A002411(n)`
-/

namespace A168526.P638177458322433018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000583 n * A002411 n

end

end A168526.P638177458322433018

namespace A168526

/-- `A000583(n)*A002411(n)` -/
def P638177458322433018.Spec : Prop :=
  ∀ n, P638177458322433018.a n = A168526 n

end A168526

/-! ## A168526.P563301134626507606

`gcd(A163276(n), A170783(n))`
-/

namespace A168526.P563301134626507606
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A163276 n) (A170783 n)

end

end A168526.P563301134626507606

namespace A168526

/-- `gcd(A163276(n), A170783(n))` -/
def P563301134626507606.Spec : Prop :=
  ∀ n, (P563301134626507606.a n : ℤ) = A168526 n

end A168526

/-! ## A168526.P9773073013249650739

`gcd(A168555(n), A168627(n))`
-/

namespace A168526.P9773073013249650739
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A168555 n) (A168627 n)

end

end A168526.P9773073013249650739

namespace A168526

/-- `gcd(A168555(n), A168627(n))` -/
def P9773073013249650739.Spec : Prop :=
  ∀ n, (P9773073013249650739.a n : ℤ) = A168526 n

end A168526

/-! ## A168526.P814907752708021393

`A000584(n)*A179865(n+1)`
-/

namespace A168526.P814907752708021393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000584 n * A179865 (n + 1)

end

end A168526.P814907752708021393

namespace A168526

/-- `A000584(n)*A179865(n+1)` -/
def P814907752708021393.Spec : Prop :=
  ∀ n, P814907752708021393.a n = A168526 n

end A168526

/-! ## A168526.P2013790371084711684

`A001015(n)-A240930(n)/2`
-/

namespace A168526.P2013790371084711684
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001015 n : ℚ) - (A240930 n : ℚ) / 2

end

end A168526.P2013790371084711684

namespace A168526

/-- `A001015(n)-A240930(n)/2` -/
def P2013790371084711684.Spec : Prop :=
  ∀ n, P2013790371084711684.a n = (A168526 n : ℚ)

theorem P2013790371084711684.correct : P2013790371084711684.Spec := by
  intro n
  simp only [A168526, Nat.add_sub_cancel, A168526.P2013790371084711684.a, A168526.P7414752990000463124.a, A001015, A001015.P16876498052081657174.a, A240930, A240930.P4459008851257504207.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A168526

/-! ## A168526.P12025365035009274467

`(A005449(n)-n²)*A000584(n)`
-/

namespace A168526.P12025365035009274467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A005449 n - (n ^ 2 : ℤ)) * A000584 n

end

end A168526.P12025365035009274467

namespace A168526

/-- `(A005449(n)-n²)*A000584(n)` -/
def P12025365035009274467.Spec : Prop :=
  ∀ n, P12025365035009274467.a n = A168526 n

end A168526

/-! ## A168526.P16223976610120516917

`n²*A000217(n)*A000578(n)`
-/

namespace A168526.P16223976610120516917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) * A000217 n * A000578 n

end

end A168526.P16223976610120516917

namespace A168526

/-- `n²*A000217(n)*A000578(n)` -/
def P16223976610120516917.Spec : Prop :=
  ∀ n, P16223976610120516917.a n = A168526 n

theorem P16223976610120516917.correct : P16223976610120516917.Spec := by
  intro n
  simp only [A168526, Nat.add_sub_cancel, A168526.P16223976610120516917.a, A168526.P7414752990000463124.a, A000217, A000217.P10269402890581615239.a, A000578, A000578.P12162961755414704816.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A168526

/-! ## A168526.P14921053044934414399

`(A000326(n+1)-(n+1)²)*A000584(n)`
-/

namespace A168526.P14921053044934414399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000326 (n + 1) - ((n + 1) ^ 2 : ℤ)) * A000584 n

end

end A168526.P14921053044934414399

namespace A168526

/-- `(A000326(n+1)-(n+1)²)*A000584(n)` -/
def P14921053044934414399.Spec : Prop :=
  ∀ n, P14921053044934414399.a n = A168526 n

theorem P14921053044934414399.correct : P14921053044934414399.Spec := by
  intro n
  simp only [A168526, Nat.add_sub_cancel, A168526.P14921053044934414399.a, A168526.P7414752990000463124.a, A000326, A000326.P15785277619453972366.a, A000584, A000584.P5477385692209315495.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A168526

/-! ## A168526.P4842498460489951384

`A167963(n)+A168635(n)-A168067(n)`
-/

namespace A168526.P4842498460489951384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167963 n + (A168635 n - A168067 n)

end

end A168526.P4842498460489951384

namespace A168526

/-- `A167963(n)+A168635(n)-A168067(n)` -/
def P4842498460489951384.Spec : Prop :=
  ∀ n, P4842498460489951384.a n = A168526 n

end A168526

/-! ## A168526.P10264018926800270749

`A000124(n)*A000584(n)-A000584(n)`
-/

namespace A168526.P10264018926800270749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 n * A000584 n - A000584 n

end

end A168526.P10264018926800270749

namespace A168526

/-- `A000124(n)*A000584(n)-A000584(n)` -/
def P10264018926800270749.Spec : Prop :=
  ∀ n, P10264018926800270749.a n = A168526 n

end A168526

/-! ## A168526.P15302447923177422410

`A000217(n)*A000290(n)*A000578(n)`
-/

namespace A168526.P15302447923177422410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 n * A000290 n * A000578 n

end

end A168526.P15302447923177422410

namespace A168526

/-- `A000217(n)*A000290(n)*A000578(n)` -/
def P15302447923177422410.Spec : Prop :=
  ∀ n, P15302447923177422410.a n = A168526 n

theorem P15302447923177422410.correct : P15302447923177422410.Spec := by
  intro n
  simp only [A168526, Nat.add_sub_cancel, A168526.P15302447923177422410.a, A168526.P7414752990000463124.a, A000217, A000217.P10269402890581615239.a, A000290, A000290.P12206242496348924484.a, A000578, A000578.P12162961755414704816.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A168526

/-! ## A168526.P3547251925800850717

`n²*A019583(n+1)`
-/

namespace A168526.P3547251925800850717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) * A019583 (n + 1)

end

end A168526.P3547251925800850717

namespace A168526

/-- `n²*A019583(n+1)` -/
def P3547251925800850717.Spec : Prop :=
  ∀ n, P3547251925800850717.a n = A168526 n

theorem P3547251925800850717.correct : P3547251925800850717.Spec := by
  intro n
  simp only [A168526, Nat.add_sub_cancel, A168526.P3547251925800850717.a, A168526.P7414752990000463124.a, A019583, A019583.P18156360696424512505.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A168526

/-! ## A168526.P6982932941743485383

`(A263689(n+1)-A263689(n))*A000217(n)`
-/

namespace A168526.P6982932941743485383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A263689 (n + 1) - A263689 n) * A000217 n

end

end A168526.P6982932941743485383

namespace A168526

/-- `(A263689(n+1)-A263689(n))*A000217(n)` -/
def P6982932941743485383.Spec : Prop :=
  ∀ n, P6982932941743485383.a n = A168526 n

end A168526

/-!
# A168527: a(n) = n^6*(n^2 + 1)/2.

The programs for A168527, the canonical program `A168527.P1805667808445417469` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A168527 has offset 0).

The definition of A168527 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n^6*(n²+1)/2` (program `A168527.P7082546390321037933`, by `A168527.P7082546390321037933.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A168527.P7082546390321037933

`n^6*(n²+1)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A168527.P7082546390321037933
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n ^ 6 * (n ^ 2 + 1) : ℚ) / 2

end

end A168527.P7082546390321037933

namespace A168527

/-- `n^6*(n²+1)/2` -/
def P7082546390321037933.Spec : Prop :=
  ∀ n, P7082546390321037933.a n = (A168527 n : ℚ)

theorem P7082546390321037933.correct : P7082546390321037933.Spec := by
  intro n
  simp only [A168527, Nat.add_sub_cancel, A168527.P7082546390321037933.a, A168527.P1805667808445417469.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A168527

/-! ## A168527.P1805667808445417469

`n^4*C(n²+1, 2)`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A168527

/-- `n^4*C(n²+1, 2)` -/
def P1805667808445417469.Spec : Prop :=
  ∀ n, (P1805667808445417469.a n : ℤ) = A168527 n

theorem P1805667808445417469.correct : P1805667808445417469.Spec := by
  intro n
  simp only [A168527]

end A168527

/-! ## A168527.P17099867634994800236

`n*Δ[C(n, 2)^4]`
-/

namespace A168527.P17099867634994800236
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 2 ^ 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A168527.P17099867634994800236

namespace A168527

/-- `n*Δ[C(n, 2)^4]` -/
def P17099867634994800236.Spec : Prop :=
  ∀ n, P17099867634994800236.a n = A168527 n

theorem P17099867634994800236.correct : P17099867634994800236.Spec := by
  intro n
  simp only [A168527, Nat.add_sub_cancel, A168527.P17099867634994800236.f1, A168527.P17099867634994800236.a, A168527.P1805667808445417469.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A168527

/-! ## A168527.P13699753471555014571

`n*Δ[C(n, 2)²²]`
-/

namespace A168527.P13699753471555014571
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (Nat.choose n 2 ^ 2) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A168527.P13699753471555014571

namespace A168527

/-- `n*Δ[C(n, 2)²²]` -/
def P13699753471555014571.Spec : Prop :=
  ∀ n, P13699753471555014571.a n = A168527 n

theorem P13699753471555014571.correct : P13699753471555014571.Spec := by
  intro n
  simp only [A168527, Nat.add_sub_cancel, A168527.P13699753471555014571.f1, A168527.P13699753471555014571.a, A168527.P1805667808445417469.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A168527

/-! ## A168527.P6728890888308900369

`n*A168364(n)`
-/

namespace A168527.P6728890888308900369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A168364 n

end

end A168527.P6728890888308900369

namespace A168527

/-- `n*A168364(n)` -/
def P6728890888308900369.Spec : Prop :=
  ∀ n, P6728890888308900369.a n = A168527 n

theorem P6728890888308900369.correct : P6728890888308900369.Spec := by
  intro n
  simp only [A168527, Nat.add_sub_cancel, A168527.P6728890888308900369.a, A168527.P1805667808445417469.a, A168364, A168364.P2705335552495042316.f1, A168364.P2705335552495042316.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A168527

/-! ## A168527.P11635068061005438649

`n²*A168192(n)`
-/

namespace A168527.P11635068061005438649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) * A168192 n

end

end A168527.P11635068061005438649

namespace A168527

/-- `n²*A168192(n)` -/
def P11635068061005438649.Spec : Prop :=
  ∀ n, P11635068061005438649.a n = A168527 n

theorem P11635068061005438649.correct : P11635068061005438649.Spec := by
  intro n
  simp only [A168527, Nat.add_sub_cancel, A168527.P11635068061005438649.a, A168527.P1805667808445417469.a, A168192, A168192.P15515922026751719373.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A168527

/-! ## A168527.P14048757066481306106

`n^3*A168178(n)`
-/

namespace A168527.P14048757066481306106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 3 : ℤ) * A168178 n

end

end A168527.P14048757066481306106

namespace A168527

/-- `n^3*A168178(n)` -/
def P14048757066481306106.Spec : Prop :=
  ∀ n, P14048757066481306106.a n = A168527 n

theorem P14048757066481306106.correct : P14048757066481306106.Spec := by
  intro n
  simp only [A168527, Nat.add_sub_cancel, A168527.P14048757066481306106.a, A168527.P1805667808445417469.a, A168178, A168178.P7150128011749350720.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A168527

/-! ## A168527.P4040039053842055328

`n²²*A037270(n)`
-/

namespace A168527.P4040039053842055328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n ^ 2) ^ 2 : ℤ) * A037270 n

end

end A168527.P4040039053842055328

namespace A168527

/-- `n²²*A037270(n)` -/
def P4040039053842055328.Spec : Prop :=
  ∀ n, P4040039053842055328.a n = A168527 n

end A168527

/-! ## A168527.P9444475457429805881

`A168180(n)+A085744(n)`
-/

namespace A168527.P9444475457429805881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168180 n + A085744 n

end

end A168527.P9444475457429805881

namespace A168527

/-- `A168180(n)+A085744(n)` -/
def P9444475457429805881.Spec : Prop :=
  ∀ n, P9444475457429805881.a n = A168527 n

end A168527

/-! ## A168527.P10690575347994152499

`A163276(n)-A001015(n)`
-/

namespace A168527.P10690575347994152499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163276 n - A001015 n

end

end A168527.P10690575347994152499

namespace A168527

/-- `A163276(n)-A001015(n)` -/
def P10690575347994152499.Spec : Prop :=
  ∀ n, P10690575347994152499.a n = A168527 n

theorem P10690575347994152499.correct : P10690575347994152499.Spec := by
  intro n
  simp only [A168527, Nat.add_sub_cancel, A168527.P10690575347994152499.a, A168527.P1805667808445417469.a, A001015, A001015.P16876498052081657174.a, A163276, A163276.P13370388899047673994.a, A168526, A168526.P7414752990000463124.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A168527

/-! ## A168527.P14288983714783743018

`A000584(n)*A006003(n)`
-/

namespace A168527.P14288983714783743018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000584 n * A006003 n

end

end A168527.P14288983714783743018

namespace A168527

/-- `A000584(n)*A006003(n)` -/
def P14288983714783743018.Spec : Prop :=
  ∀ n, P14288983714783743018.a n = A168527 n

end A168527

/-! ## A168527.P2174753744926640566

`A168192(n)*A253909(n)`
-/

namespace A168527.P2174753744926640566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168192 n * A253909 n

end

end A168527.P2174753744926640566

namespace A168527

/-- `A168192(n)*A253909(n)` -/
def P2174753744926640566.Spec : Prop :=
  ∀ n, P2174753744926640566.a n = A168527 n

end A168527

/-! ## A168527.P15952607297085495723

`A167963(n)+A168635(n)-A168029(n)`
-/

namespace A168527.P15952607297085495723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167963 n + (A168635 n - A168029 n)

end

end A168527.P15952607297085495723

namespace A168527

/-- `A167963(n)+A168635(n)-A168029(n)` -/
def P15952607297085495723.Spec : Prop :=
  ∀ n, P15952607297085495723.a n = A168527 n

end A168527

/-! ## A168527.P16259442642822964983

`(A321672(n)+A000578(n))*A000578(n)`
-/

namespace A168527.P16259442642822964983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A321672 n + A000578 n) * A000578 n

end

end A168527.P16259442642822964983

namespace A168527

/-- `(A321672(n)+A000578(n))*A000578(n)` -/
def P16259442642822964983.Spec : Prop :=
  ∀ n, P16259442642822964983.a n = A168527 n

theorem P16259442642822964983.correct : P16259442642822964983.Spec := by
  intro n
  simp only [A168527, Nat.add_sub_cancel, A168527.P16259442642822964983.a, A168527.P1805667808445417469.a, A000578, A000578.P12162961755414704816.a, A321672, A321672.P12387618061068922238.a, A000584, A000584.P5477385692209315495.a, A168178, A168178.P7150128011749350720.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A168527

/-! ## A168527.P1228417786472598503

`(A000584(n)-A321672(n))*A000578(n)`
-/

namespace A168527.P1228417786472598503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000584 n - A321672 n) * A000578 n

end

end A168527.P1228417786472598503

namespace A168527

/-- `(A000584(n)-A321672(n))*A000578(n)` -/
def P1228417786472598503.Spec : Prop :=
  ∀ n, P1228417786472598503.a n = A168527 n

theorem P1228417786472598503.correct : P1228417786472598503.Spec := by
  intro n
  simp only [A168527, Nat.add_sub_cancel, A168527.P1228417786472598503.a, A168527.P1805667808445417469.a, A000578, A000578.P12162961755414704816.a, A000584, A000584.P5477385692209315495.a, A321672, A321672.P12387618061068922238.a, A168178, A168178.P7150128011749350720.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A168527

/-! ## A168527.P18356620565409864512

`A000217(n²)*A000583(n)`
-/

namespace A168527.P18356620565409864512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (n ^ 2) * A000583 n

end

end A168527.P18356620565409864512

namespace A168527

/-- `A000217(n²)*A000583(n)` -/
def P18356620565409864512.Spec : Prop :=
  ∀ n, P18356620565409864512.a n = A168527 n

theorem P18356620565409864512.correct : P18356620565409864512.Spec := by
  intro n
  simp only [A168527, Nat.add_sub_cancel, A168527.P18356620565409864512.a, A168527.P1805667808445417469.a, A000217, A000217.P10269402890581615239.a, A000583, A000583.P14547500281748394449.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A168527

/-! ## A168527.P5868424534877500821

`A019582(n²+1)`
-/

namespace A168527.P5868424534877500821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019582 (n ^ 2 + 1)

end

end A168527.P5868424534877500821

namespace A168527

/-- `A019582(n²+1)` -/
def P5868424534877500821.Spec : Prop :=
  ∀ n, P5868424534877500821.a n = A168527 n

theorem P5868424534877500821.correct : P5868424534877500821.Spec := by
  intro n
  simp only [A168527, Nat.add_sub_cancel, A168527.P5868424534877500821.a, A168527.P1805667808445417469.a, A019582, A019582.P15270751167170736155.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A168527

/-! ## A168527.P10732652157142518032

`n²*A002411(n²)`
-/

namespace A168527.P10732652157142518032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) * A002411 (n ^ 2)

end

end A168527.P10732652157142518032

namespace A168527

/-- `n²*A002411(n²)` -/
def P10732652157142518032.Spec : Prop :=
  ∀ n, P10732652157142518032.a n = A168527 n

end A168527

/-!
# A168529: Primes n that are concatenation of two 3-digit primes p<q.

The programs for A168529, there is no canonical definition to state claims against.
-/

/-! ## A168529.P17794081990317959138

`p?[or(A010894(n), A255976(n+1))]`
-/

namespace A168529.P17794081990317959138
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A010894 (n + 21)) (A255976 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A168529.P17794081990317959138

/-! ## A168529.P12026208733414046295

`A255976(∑[A010894(n)!])`
-/

namespace A168529.P12026208733414046295
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A010894 (n + 21)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255976 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A168529.P12026208733414046295

/-! ## A168529.P6154491067969267183

`A255976(A010894(n)!+n)`
-/

namespace A168529.P6154491067969267183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255976 (Nat.factorial (A010894 (n + 21)).toNat + n)

end

end A168529.P6154491067969267183

/-! ## A168529.P11095020274226113361

`A255976(n+1)+A000007(A208615(n))`
-/

namespace A168529.P11095020274226113361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255976 (n + 1) + A000007 (A208615 n).toNat

end

end A168529.P11095020274226113361

/-! ## A168529.P15608635797142775468

`A255976(n+1)%A201051(n+1)`
-/

namespace A168529.P15608635797142775468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A255976 (n + 1)) (A201051 (n + 1))

end

end A168529.P15608635797142775468

/-!
# A168530: Numbers that are the product of two distinct primes and they are sum of 3 consecutive products of two distinct primes.

The programs for A168530, there is no canonical definition to state claims against.
-/

/-! ## A168530.P12490046110932561481

`A059841(A004029(n))+A033553(2*n+5)`
-/

namespace A168530.P12490046110932561481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 (A004029 n).toNat + A033553 (2 * n + 5)

end

end A168530.P12490046110932561481

/-!
# A168532: Triangle read by rows, A054525 * A168021.

The programs for A168532, there is no canonical definition to state claims against.
-/

/-! ## A168532.P15084348499741503390

`∑{d}[A126988(n+1), A100953(#)]`
-/

namespace A168532.P15084348499741503390
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126988 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A100953 d

end

end A168532.P15084348499741503390

/-! ## A168532.P9089499033807519493

`A000837(A010766(n+1))*A051731(n+1)`
-/

namespace A168532.P9089499033807519493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000837 (A010766 (n + 1)).toNat * A051731 (n + 1)

end

end A168532.P9089499033807519493

/-! ## A168532.P16152794613955380266

`A000837(A049834(n+1))*A051731(n+1)`
-/

namespace A168532.P16152794613955380266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000837 (A049834 (n + 1)).toNat * A051731 (n + 1)

end

end A168532.P16152794613955380266

/-! ## A168532.P5084634403875984079

`A000837(A054531(n+1))*A051731(n+1)`
-/

namespace A168532.P5084634403875984079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000837 (A054531 (n + 1)).toNat * A051731 (n + 1)

end

end A168532.P5084634403875984079

/-! ## A168532.P7359643022128618593

`A000837(A126988(n+1))*A051731(n+1)`
-/

namespace A168532.P7359643022128618593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000837 (A126988 (n + 1)).toNat * A051731 (n + 1)

end

end A168532.P7359643022128618593

/-! ## A168532.P2027627553033509054

`A000837(A051537(n+1)*A051731(n+1))*A051731(n+1)`
-/

namespace A168532.P2027627553033509054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000837 (A051537 (n + 1) * A051731 (n + 1)).toNat * A051731 (n + 1)

end

end A168532.P2027627553033509054

/-! ## A168532.P7932392866118498844

`A000837(A051537(n+1))*A051731(n+1)`
-/

namespace A168532.P7932392866118498844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000837 (A051537 (n + 1)).toNat * A051731 (n + 1)

end

end A168532.P7932392866118498844

/-! ## A168532.P7856847431311349763

`A130162(A120913(n+1))`
-/

namespace A168532.P7856847431311349763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130162 (A120913 (n + 1)).toNat

end

end A168532.P7856847431311349763

/-!
# A168533: Triangle read by rows, A000012 * A168532, as infinite lower triangular matrices.

The programs for A168533, there is no canonical definition to state claims against.
-/

/-! ## A168533.P683517990275171125

`gcd(A004019(A130167(n)), A231272(n+1))`
-/

namespace A168533.P683517990275171125
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A004019 (A130167 n).toNat) (A231272 (n + 1))

end

end A168533.P683517990275171125

/-! ## A168533.P17733828459101551544

`gcd(A135898(A055645(n)), A272576(n+1))`
-/

namespace A168533.P17733828459101551544
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A135898 (A055645 n).toNat) (A272576 (n + 1))

end

end A168533.P17733828459101551544

/-! ## A168533.P17891719246943782049

`A071136(A342446(n))`
-/

namespace A168533.P17891719246943782049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071136 (A342446 n).toNat

end

end A168533.P17891719246943782049

/-! ## A168533.P1243715263838498778

`A228720(gcd(A077169(n), A107424(n+1)))`
-/

namespace A168533.P1243715263838498778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228720 (Int.gcd (A077169 n) (A107424 (n + 1)))

end

end A168533.P1243715263838498778

/-! ## A168533.P1691601602645838845

`A007094(gcd(A161951(n+1), A333213(n)))`
-/

namespace A168533.P1691601602645838845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007094 (Int.gcd (A161951 (n + 1)) (A333213 n))

end

end A168533.P1691601602645838845

/-!
# A168534: Triangle read by rows, A168532 * A000012; as infinite lower triangular matrices.

The programs for A168534, there is no canonical definition to state claims against.
-/

/-! ## A168534.P3026309422002765144

`A026807(n+1)^C(n, A057889(n))`
-/

namespace A168534.P3026309422002765144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026807 (n + 1) ^ Nat.choose n (A057889 n).toNat

end

end A168534.P3026309422002765144

/-! ## A168534.P10599090440678715815

`A026807(n+1)^A320606(A286158(n+1))`
-/

namespace A168534.P10599090440678715815
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A026807 (n + 1) : ℚ) ^ (A320606 (A286158 (n + 1)).toNat : ℤ)

end

end A168534.P10599090440678715815

/-! ## A168534.P15571373188187008731

`A026807(n+1)^A221857(A123580(3*n))`
-/

namespace A168534.P15571373188187008731
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A026807 (n + 1) : ℚ) ^ (A221857 (A123580 (3 * n)).toNat : ℤ)

end

end A168534.P15571373188187008731

/-! ## A168534.P11541638937864373884

`gcd(A001222(A157151(n)), A026807(n+1))`
-/

namespace A168534.P11541638937864373884
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A001222 (A157151 n).toNat) (A026807 (n + 1))

end

end A168534.P11541638937864373884

/-! ## A168534.P5907410562999108411

`A026807(n+1)^A320606(A179000(n+1))`
-/

namespace A168534.P5907410562999108411
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A026807 (n + 1) : ℚ) ^ (A320606 (A179000 (n + 1)).toNat : ℤ)

end

end A168534.P5907410562999108411

/-!
# A168536: The lesser of twin primes p such that p*q+a+b+c are also the lesser of twin primes, (p and q are twin primes, p+2=q, a=p-1,b=(p+q)/2,c=q+1).

The programs for A168536, there is no canonical definition to state claims against.
-/

/-! ## A168536.P6096598670909853620

`floor(sqrt(A168537(n+1)))-2`
-/

namespace A168536.P6096598670909853620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A168537 (n + 1)) - 2

end

end A168536.P6096598670909853620

/-! ## A168536.P2758566136904970151

`A000010(round(sqrt(A168537(n+1))))-1`
-/

namespace A168536.P2758566136904970151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (SequenceMachineLib.roundAway (Real.sqrt (A168537 (n + 1) : ℝ))).toNat - 1

end

end A168536.P2758566136904970151

/-! ## A168536.P1967648603132494505

`A006530(round(sqrt(A168537(n+1)))-2)`
-/

namespace A168536.P1967648603132494505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (SequenceMachineLib.roundAway (Real.sqrt (A168537 (n + 1) : ℝ)) - 2).toNat

end

end A168536.P1967648603132494505

/-! ## A168536.P2615457713147418867

`A000203(round(sqrt(A168537(n+1))))-3`
-/

namespace A168536.P2615457713147418867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (SequenceMachineLib.roundAway (Real.sqrt (A168537 (n + 1) : ℝ))).toNat - 3

end

end A168536.P2615457713147418867

/-! ## A168536.P7691993077162948180

`A064989(floor(sqrt(A168537(n+1))))`
-/

namespace A168536.P7691993077162948180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064989 (Int.sqrt (A168537 (n + 1))).toNat

end

end A168536.P7691993077162948180

/-!
# A168537: The lesser of twin primes p of the form p*q+a+b+c, (p and q are twin primes, p+2=q, a=p-1, b=(p+q)/2, c=q+1).

The programs for A168537, there is no canonical definition to state claims against.
-/

/-! ## A168537.P11154412193562178706

`A082111(A168536(n+1))+2`
-/

namespace A168537.P11154412193562178706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082111 (A168536 (n + 1)).toNat + 2

end

end A168537.P11154412193562178706

/-!
# A168538: a(n) = (n+6)*(n+1)*(n^2 + 7*n + 16)/4.

The programs for A168538, there is no canonical definition to state claims against.
-/

/-! ## A168538.P12124114208695612379

`n/4*(n+5)*(n²+5*n+10)`
-/

namespace A168538.P12124114208695612379
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / 4 * (n + 5 : ℚ) * (n ^ 2 + 5 * n + 10 : ℚ)

end

end A168538.P12124114208695612379

/-! ## A168538.P6197329879180634127

`(n+5)*n*((n-1)²+7*(n-1)+16)/4`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A168538.P6197329879180634127
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((n + 5) * n : ℤ) * (((n : ℤ) - 1) ^ 2 + 7 * ((n : ℤ) - 1) + 16) : ℚ) / 4

end

end A168538.P6197329879180634127

/-! ## A168538.P2364104308425201887

`5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` with `a(0)=0, a(1)=24, a(2)=84, a(3)=204, a(4)=414`
-/

namespace A168538.P2364104308425201887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 24, 84, 204, 414] fun n a =>
  5 * a (n - 1) - 10 * a (n - 2) + 10 * a (n - 3) - 5 * a (n - 4) + a (n - 5)

end

end A168538.P2364104308425201887

/-! ## A168538.P12524874330775645156

`∑[∑[∑[a(n-1)+6]]]-6` with `a(0)=6`
-/

namespace A168538.P12524874330775645156
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.rec [6] fun n f3 =>
  f3 (n - 1) + 6

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 6

end

end A168538.P12524874330775645156

/-! ## A168538.P17622439531165004336

`a(n-1)+(n+2)^3-(n+2)` with `a(0)=0`
-/

namespace A168538.P17622439531165004336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + (((n + 2) ^ 3 : ℤ) - (n + 2 : ℤ))

end

end A168538.P17622439531165004336

/-! ## A168538.P8083743458997323476

`a(n-1)+(n+2)*(n+2)²-(n+2)` with `a(0)=0`
-/

namespace A168538.P8083743458997323476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + ((n + 2) * (n + 2) ^ 2 : ℤ) - (n + 2 : ℤ)

end

end A168538.P8083743458997323476

/-! ## A168538.P15074911726637544272

`floor(a(n-1)+(n+1)*(n+2)*(n+3))` with `a(0)=0`

`floor` is left out, it is the identity on integers.
-/

namespace A168538.P15074911726637544272
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + (n + 1) * ((n + 2) * (n + 3))

end

end A168538.P15074911726637544272

/-! ## A168538.P8094257148881172145

`A212331(n)+A055998(n)²`
-/

namespace A168538.P8094257148881172145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212331 n + A055998 n ^ 2

end

end A168538.P8094257148881172145

/-! ## A168538.P8681459709494489346

`A277978(n)+∑[∑[A277978(n)]]`
-/

namespace A168538.P8681459709494489346
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277978 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277978 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A168538.P8681459709494489346

/-! ## A168538.P15265634846090420215

`A212331(n)+(A000096(n)+n)²`
-/

namespace A168538.P15265634846090420215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212331 n + (A000096 n + (n : ℤ)) ^ 2

end

end A168538.P15265634846090420215

/-! ## A168538.P15886334416865283935

`A212331(n)+(n-A055999(n))²`
-/

namespace A168538.P15886334416865283935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212331 n + ((n : ℤ) - A055999 n) ^ 2

end

end A168538.P15886334416865283935

/-! ## A168538.P15463319872247331724

`A034856(n+1)²+A140673(n)-1`
-/

namespace A168538.P15463319872247331724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034856 (n + 1) ^ 2 + (A140673 n - 1)

end

end A168538.P15463319872247331724

/-! ## A168538.P11283723416679573354

`A055998(n)*A167614(n+1)-A055998(n)`
-/

namespace A168538.P11283723416679573354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055998 n * A167614 (n + 1) - A055998 n

end

end A168538.P11283723416679573354

/-! ## A168538.P10591201367358756454

`A033487(n+1)-6`
-/

namespace A168538.P10591201367358756454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033487 (n + 1) - 6

end

end A168538.P10591201367358756454

/-! ## A168538.P6788360840065907256

`A055998(n)*A167499(n+1)-A140673(n)`
-/

namespace A168538.P6788360840065907256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055998 n * A167499 (n + 1) - A140673 n

end

end A168538.P6788360840065907256

/-! ## A168538.P16018142171810381945

`abs(6-∑[A007531(n+3)])`
-/

namespace A168538.P16018142171810381945
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007531 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |6 - ∑ j ∈ Finset.range (n + 1), f1 j|

end

end A168538.P16018142171810381945

/-! ## A168538.P6612472463937801373

`∑[A007531(n+4)]-A007531(n+4)`
-/

namespace A168538.P6612472463937801373
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007531 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A007531 (n + 4)

end

end A168538.P6612472463937801373

/-! ## A168538.P2353213781389984186

`∑[record[Δ[A055522(n+3)]]]`
-/

namespace A168538.P2353213781389984186
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055522 (n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A168538.P2353213781389984186

/-! ## A168538.P6744076860344679179

`∑[A052938(A103517(n))]²-A166136(n+1)`
-/

namespace A168538.P6744076860344679179
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052938 (A103517 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - A166136 (n + 1)

end

end A168538.P6744076860344679179

/-! ## A168538.P13269938660679518898

`A028557(A055998(n))`
-/

namespace A168538.P13269938660679518898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028557 (A055998 n).toNat

end

end A168538.P13269938660679518898

/-!
# A168539: Terms of A123239 which are prime in Z(i), Z(rho) and Z(sqrt(2)).

The programs for A168539, the canonical program `A168539.P16516583657687144427` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A168539 has offset 1).

The definition of A168539 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A168539.P16516583657687144427

`A107007(n+2)`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A168539

/-- `A107007(n+2)` -/
def P16516583657687144427.Spec : Prop :=
  ∀ n, P16516583657687144427.a n = A168539 (n + 1)

theorem P16516583657687144427.correct : P16516583657687144427.Spec := by
  intro n
  simp only [A168539, Nat.add_sub_cancel]

end A168539

/-! ## A168539.P11656922500049455286

`p?[24*n+11]`
-/

namespace A168539.P11656922500049455286
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  24 * n + 11

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A168539.P11656922500049455286

namespace A168539

/-- `p?[24*n+11]` -/
def P11656922500049455286.Spec : Prop :=
  ∀ n, (P11656922500049455286.a n : ℤ) = A168539 (n + 1)

end A168539

/-! ## A168539.P4439373005726031177

`or(1, p?[a(n-1)+24])` with `a(0)=11`
-/

namespace A168539.P4439373005726031177
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [11] fun n f1 =>
  f1 (n - 1) + 24

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A168539.P4439373005726031177

namespace A168539

/-- `or(1, p?[a(n-1)+24])` -/
def P4439373005726031177.Spec : Prop :=
  ∀ n, (P4439373005726031177.a n : ℤ) = A168539 (n + 1)

end A168539

/-! ## A168539.P3542363964641847777

`record[p?[a(n-2)+24]]` with `a(0)=11, a(1)=2`
-/

namespace A168539.P3542363964641847777
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [11, 2] fun n f2 =>
  f2 (n - 2) + 24

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A168539.P3542363964641847777

namespace A168539

/-- `record[p?[a(n-2)+24]]` -/
def P3542363964641847777.Spec : Prop :=
  ∀ n, (P3542363964641847777.a n : ℤ) = A168539 (n + 1)

end A168539

/-! ## A168539.P588169998680423731

`A348845(A139528(n+1))`
-/

namespace A168539.P588169998680423731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348845 (A139528 (n + 1)).toNat

end

end A168539.P588169998680423731

namespace A168539

/-- `A348845(A139528(n+1))` -/
def P588169998680423731.Spec : Prop :=
  ∀ n, P588169998680423731.a n = A168539 (n + 1)

end A168539

/-! ## A168539.P15908624659489525706

`∩[A045309(n+1), A348845(n)]`
-/

namespace A168539.P15908624659489525706
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045309 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348845 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A168539.P15908624659489525706

namespace A168539

/-- `∩[A045309(n+1), A348845(n)]` -/
def P15908624659489525706.Spec : Prop :=
  ∀ n, (P15908624659489525706.a n : ℤ) = A168539 (n + 1)

end A168539

/-! ## A168539.P11529122206073603970

`∩[A002145(n+1), A348845(n)]`
-/

namespace A168539.P11529122206073603970
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002145 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348845 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A168539.P11529122206073603970

namespace A168539

/-- `∩[A002145(n+1), A348845(n)]` -/
def P11529122206073603970.Spec : Prop :=
  ∀ n, (P11529122206073603970.a n : ℤ) = A168539 (n + 1)

end A168539

/-! ## A168539.P12276963233364105486

`∩[A045326(n+1), A348845(n)]`
-/

namespace A168539.P12276963233364105486
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045326 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348845 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A168539.P12276963233364105486

namespace A168539

/-- `∩[A045326(n+1), A348845(n)]` -/
def P12276963233364105486.Spec : Prop :=
  ∀ n, (P12276963233364105486.a n : ℤ) = A168539 (n + 1)

end A168539

/-! ## A168539.P11845861597056356312

`∩[A332516(n+1), A003629(n+1)]`
-/

namespace A168539.P11845861597056356312
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332516 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003629 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A168539.P11845861597056356312

namespace A168539

/-- `∩[A332516(n+1), A003629(n+1)]` -/
def P11845861597056356312.Spec : Prop :=
  ∀ n, (P11845861597056356312.a n : ℤ) = A168539 (n + 1)

end A168539

/-! ## A168539.P8420495390851846455

`∩[A040108(n+1), A348845(n)]`
-/

namespace A168539.P8420495390851846455
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040108 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348845 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A168539.P8420495390851846455

namespace A168539

/-- `∩[A040108(n+1), A348845(n)]` -/
def P8420495390851846455.Spec : Prop :=
  ∀ n, (P8420495390851846455.a n : ℤ) = A168539 (n + 1)

end A168539

/-! ## A168539.P13857071773552851735

`∩[A164319(n+1), A348845(n)]`
-/

namespace A168539.P13857071773552851735
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164319 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348845 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A168539.P13857071773552851735

namespace A168539

/-- `∩[A164319(n+1), A348845(n)]` -/
def P13857071773552851735.Spec : Prop :=
  ∀ n, (P13857071773552851735.a n : ℤ) = A168539 (n + 1)

end A168539

/-! ## A168539.P11756210600728738624

`∩[A348845(n), A380468(n+1)]`
-/

namespace A168539.P11756210600728738624
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348845 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380468 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A168539.P11756210600728738624

namespace A168539

/-- `∩[A348845(n), A380468(n+1)]` -/
def P11756210600728738624.Spec : Prop :=
  ∀ n, (P11756210600728738624.a n : ℤ) = A168539 (n + 1)

end A168539

/-! ## A168539.P498198873467486508

`∩[A040044(n+1), A348845(n)]`
-/

namespace A168539.P498198873467486508
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040044 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348845 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A168539.P498198873467486508

namespace A168539

/-- `∩[A040044(n+1), A348845(n)]` -/
def P498198873467486508.Spec : Prop :=
  ∀ n, (P498198873467486508.a n : ℤ) = A168539 (n + 1)

end A168539

/-! ## A168539.P17595859656106600066

`∩[A040046(n+1), A348845(n)]`
-/

namespace A168539.P17595859656106600066
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040046 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348845 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A168539.P17595859656106600066

namespace A168539

/-- `∩[A040046(n+1), A348845(n)]` -/
def P17595859656106600066.Spec : Prop :=
  ∀ n, (P17595859656106600066.a n : ℤ) = A168539 (n + 1)

end A168539

/-! ## A168539.P17905897566698457831

`∩[A040087(n+1), A348845(n)]`
-/

namespace A168539.P17905897566698457831
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040087 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348845 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A168539.P17905897566698457831

namespace A168539

/-- `∩[A040087(n+1), A348845(n)]` -/
def P17905897566698457831.Spec : Prop :=
  ∀ n, (P17905897566698457831.a n : ℤ) = A168539 (n + 1)

end A168539

/-! ## A168539.P8210846308830629216

`∩[A140409(n+1), A348845(n)]`
-/

namespace A168539.P8210846308830629216
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140409 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348845 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A168539.P8210846308830629216

namespace A168539

/-- `∩[A140409(n+1), A348845(n)]` -/
def P8210846308830629216.Spec : Prop :=
  ∀ n, (P8210846308830629216.a n : ℤ) = A168539 (n + 1)

end A168539

/-! ## A168539.P11529800294062203878

`∩[A040060(n+1), A348845(n)]`
-/

namespace A168539.P11529800294062203878
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040060 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348845 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A168539.P11529800294062203878

namespace A168539

/-- `∩[A040060(n+1), A348845(n)]` -/
def P11529800294062203878.Spec : Prop :=
  ∀ n, (P11529800294062203878.a n : ℤ) = A168539 (n + 1)

end A168539

/-! ## A168539.P1835558710605610000

`∩[A040083(n+1), A348845(n)]`
-/

namespace A168539.P1835558710605610000
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040083 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348845 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A168539.P1835558710605610000

namespace A168539

/-- `∩[A040083(n+1), A348845(n)]` -/
def P1835558710605610000.Spec : Prop :=
  ∀ n, (P1835558710605610000.a n : ℤ) = A168539 (n + 1)

end A168539

/-! ## A168539.P5623041827460754825

`∩[A040095(n+1), A348845(n)]`
-/

namespace A168539.P5623041827460754825
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040095 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348845 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A168539.P5623041827460754825

namespace A168539

/-- `∩[A040095(n+1), A348845(n)]` -/
def P5623041827460754825.Spec : Prop :=
  ∀ n, (P5623041827460754825.a n : ℤ) = A168539 (n + 1)

end A168539

/-!
# A168540: Natural numbers n for which 100n^3 + 27 is prime.

The programs for A168540, there is no canonical definition to state claims against.
-/

/-! ## A168540.P3914722782938192479

`A007306((2-∏{e}[n+1, #+1]+n)*A000079(n))`
-/

namespace A168540.P3914722782938192479
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007306 ((2 - ((∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1) : ℕ) : ℤ) + (n : ℤ)) * A000079 n).toNat

end

end A168540.P3914722782938192479

/-! ## A168540.P2044110583021788664

`A007306(A000079(n)*A062968(n+1))`
-/

namespace A168540.P2044110583021788664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007306 (A000079 n * A062968 (n + 1)).toNat

end

end A168540.P2044110583021788664

/-! ## A168540.P16341354285467048797

`lt[A270831(n+3), A269909(A077116(n+1))]`
-/

namespace A168540.P16341354285467048797
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270831 (n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269909 (A077116 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A168540.P16341354285467048797

/-! ## A168540.P15337464930765837669

`eq[A174340(A214878(n)), A327642(2*n+3)]`
-/

namespace A168540.P15337464930765837669
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174340 (A214878 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327642 (2 * n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A168540.P15337464930765837669

/-! ## A168540.P12771511677203334402

`A156262(n*A001083(A156262(n+2)+1)+1)`
-/

namespace A168540.P12771511677203334402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156262 ((n : ℤ) * A001083 (A156262 (n + 2) + 1).toNat + 1).toNat

end

end A168540.P12771511677203334402

/-!
# A168541: Numbers consisting of either 2's and 0's or 5's and 0's.

The programs for A168541, there is no canonical definition to state claims against.
-/

/-! ## A168541.P2714992245270619546

`filter[A136900(n+1), A225183(#)]`
-/

namespace A168541.P2714992245270619546
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136900 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A225183 (f1 j).toNat = 1) n)

end

end A168541.P2714992245270619546

/-! ## A168541.P443775725646607236

`∩[A136900(n+1), A392291(n+1)]`
-/

namespace A168541.P443775725646607236
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136900 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392291 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A168541.P443775725646607236

/-!
# A168543: pi(n-th single or isolated number).

The programs for A168543, the canonical program `A168543.P7013413832630956114` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A168543 has offset 1).

The definition of A168543 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A167706, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A168543.P7013413832630956114

`A000720(A167706(n+1))`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A168543

/-- `A000720(A167706(n+1))` -/
def P7013413832630956114.Spec : Prop :=
  ∀ n, P7013413832630956114.a n = A168543 (n + 1)

theorem P7013413832630956114.correct : P7013413832630956114.Spec := by
  intro n
  simp only [A168543, Nat.add_sub_cancel]

end A168543

/-! ## A168543.P9695575506728777965

`record[A062602(n+1)+1]`
-/

namespace A168543.P9695575506728777965
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062602 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A168543.P9695575506728777965

namespace A168543

/-- `record[A062602(n+1)+1]` -/
def P9695575506728777965.Spec : Prop :=
  ∀ n, P9695575506728777965.a n = A168543 (n + 1)

end A168543

/-! ## A168543.P12048919197048625409

`record[A224712(n+1)+1]`
-/

namespace A168543.P12048919197048625409
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224712 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A168543.P12048919197048625409

namespace A168543

/-- `record[A224712(n+1)+1]` -/
def P12048919197048625409.Spec : Prop :=
  ∀ n, P12048919197048625409.a n = A168543 (n + 1)

end A168543

/-! ## A168543.P9163544166782633039

`record[A224714(n+1)+1]`
-/

namespace A168543.P9163544166782633039
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224714 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A168543.P9163544166782633039

namespace A168543

/-- `record[A224714(n+1)+1]` -/
def P9163544166782633039.Spec : Prop :=
  ∀ n, P9163544166782633039.a n = A168543 (n + 1)

end A168543

/-! ## A168543.P12383001637751639832

`comp[A029707(n+2)]+1`
-/

namespace A168543.P12383001637751639832
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029707 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A168543.P12383001637751639832

namespace A168543

/-- `comp[A029707(n+2)]+1` -/
def P12383001637751639832.Spec : Prop :=
  ∀ n, (P12383001637751639832.a n : ℤ) = A168543 (n + 1)

end A168543

/-! ## A168543.P18006248024191950631

`record[abs(A163975(n+1)-n)]`
-/

namespace A168543.P18006248024191950631
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A163975 (n + 1) - (n : ℤ)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A168543.P18006248024191950631

namespace A168543

/-- `record[abs(A163975(n+1)-n)]` -/
def P18006248024191950631.Spec : Prop :=
  ∀ n, P18006248024191950631.a n = A168543 (n + 1)

end A168543

/-! ## A168543.P3200299277817248107

`A082462(a(n-1))+n` with `a(0)=1, a(1)=2`
-/

namespace A168543.P3200299277817248107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A082462 (a (n - 1)).toNat + (n : ℤ)

end

end A168543.P3200299277817248107

namespace A168543

/-- `A082462(a(n-1))+n` -/
def P3200299277817248107.Spec : Prop :=
  ∀ n, P3200299277817248107.a n = A168543 (n + 1)

end A168543

/-! ## A168543.P14293561062502961791

`comp[A334142(2*(n+1))]+1`
-/

namespace A168543.P14293561062502961791
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334142 (2 * (n + 1))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A168543.P14293561062502961791

namespace A168543

/-- `comp[A334142(2*(n+1))]+1` -/
def P14293561062502961791.Spec : Prop :=
  ∀ n, (P14293561062502961791.a n : ℤ) = A168543 (n + 1)

end A168543

/-! ## A168543.P3464375162748070918

`record[A163975(n+2)-(n+1)]`
-/

namespace A168543.P3464375162748070918
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163975 (n + 2) - (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A168543.P3464375162748070918

namespace A168543

/-- `record[A163975(n+2)-(n+1)]` -/
def P3464375162748070918.Spec : Prop :=
  ∀ n, P3464375162748070918.a n = A168543 (n + 1)

end A168543

/-!
# A168544: The nonprime halves of even single (or even isolated) numbers.

The programs for A168544, there is no canonical definition to state claims against.
-/

/-! ## A168544.P11568117203023550631

`A008486(A002822(n+1)%A006851(n))`
-/

namespace A168544.P11568117203023550631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 (Int.tmod (A002822 (n + 1)) (A006851 n)).toNat

end

end A168544.P11568117203023550631

/-! ## A168544.P1513049467586107596

`A001057(A001359(n+2)%A163188(n+1))`
-/

namespace A168544.P1513049467586107596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 (Int.tmod (A001359 (n + 2)) (A163188 (n + 1))).toNat

end

end A168544.P1513049467586107596

/-! ## A168544.P4429694464706579045

`A003602(A001359(n+2))%A210467(n+3)`
-/

namespace A168544.P4429694464706579045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A003602 (A001359 (n + 2)).toNat) (A210467 (n + 3))

end

end A168544.P4429694464706579045

/-! ## A168544.P155080640392538727

`gcd(A000045(A151909(2*n)), A040040(n+2))`
-/

namespace A168544.P155080640392538727
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000045 (A151909 (2 * n)).toNat) (A040040 (n + 2))

end

end A168544.P155080640392538727

/-! ## A168544.P15297866741909231312

`A040040(n+2)%(A005520(2*n+3)-A016755(n))`
-/

namespace A168544.P15297866741909231312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A040040 (n + 2)) (A005520 (2 * n + 3) - A016755 n)

end

end A168544.P15297866741909231312

/-!
# A168545: Primes p such that the concatenation of p and 29 is a square number: "p 29" = N = m^2.

The programs for A168545, the canonical program `A168545.P5591216854163291025` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A168545 has offset 1).

The definition of A168545 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A168545.P5591216854163291025

`p?[2*A316725(n)+5]`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A168545

/-- `p?[2*A316725(n)+5]` -/
def P5591216854163291025.Spec : Prop :=
  ∀ n, P5591216854163291025.a n = A168545 (n + 1)

theorem P5591216854163291025.correct : P5591216854163291025.Spec := by
  intro n
  simp only [A168545, Nat.add_sub_cancel]

end A168545

/-! ## A168545.P2973585498175388002

`p?[A038714(n)+A036498(n+1)]`
-/

namespace A168545.P2973585498175388002
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038714 n + A036498 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A168545.P2973585498175388002

namespace A168545

/-- `p?[A038714(n)+A036498(n+1)]` -/
def P2973585498175388002.Spec : Prop :=
  ∀ n, P2973585498175388002.a n = A168545 (n + 1)

end A168545

/-! ## A168545.P2721569393935226917

`p?[A110660(A110654(n))+A036498(n+1)]`
-/

namespace A168545.P2721569393935226917
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110660 (A110654 n).toNat + A036498 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A168545.P2721569393935226917

namespace A168545

/-- `p?[A110660(A110654(n))+A036498(n+1)]` -/
def P2721569393935226917.Spec : Prop :=
  ∀ n, P2721569393935226917.a n = A168545 (n + 1)

end A168545

/-! ## A168545.P2135133560596092925

`p?[A110660(A047208(n+1))-A001057(n)]`
-/

namespace A168545.P2135133560596092925
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110660 (A047208 (n + 1)).toNat - A001057 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A168545.P2135133560596092925

namespace A168545

/-- `p?[A110660(A047208(n+1))-A001057(n)]` -/
def P2135133560596092925.Spec : Prop :=
  ∀ n, P2135133560596092925.a n = A168545 (n + 1)

end A168545

/-!
# A168547: a(n) = 1 - 2*n^2 + 4*n*(1 + 2*n^2)/3.

The programs for A168547, the canonical program `A168547.P16365202704234955359` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A168547 has offset 0).

The definition of A168547 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `1-2*n²+4*n*(1+2*n²)/3` (program `A168547.P17009202902646791344`, by `A168547.P17009202902646791344.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A168547.P8814033519425875727

`ogf((1-x+11x^2+5x^3)/(1-4x+6x^2-4x^3+x^4))`
-/

namespace A168547.P8814033519425875727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -1, 11, 5] [1, -4, 6, -4, 1] n

end

end A168547.P8814033519425875727

namespace A168547

/-- `ogf((1-x+11x^2+5x^3)/(1-4x+6x^2-4x^3+x^4))` -/
def P8814033519425875727.Spec : Prop :=
  ∀ n, P8814033519425875727.a n = A168547 n

end A168547

/-! ## A168547.P17009202902646791344

`1-2*n²+4*n*(1+2*n²)/3`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A168547.P17009202902646791344
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 - (2 * n ^ 2 : ℤ) : ℚ) + (4 * n * (1 + 2 * n ^ 2) : ℚ) / 3

end

end A168547.P17009202902646791344

namespace A168547

/-- `1-2*n²+4*n*(1+2*n²)/3` -/
def P17009202902646791344.Spec : Prop :=
  ∀ n, P17009202902646791344.a n = (A168547 n : ℚ)

theorem P17009202902646791344.correct : P17009202902646791344.Spec := by
  intro n
  simp only [A168547, Nat.add_sub_cancel, A168547.P17009202902646791344.a, A168547.P16365202704234955359.f1, A168547.P16365202704234955359.a, A000217, A000217.P10269402890581615239.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A168547

/-! ## A168547.P3213644827815826921

`Δ[C(2*n, 4)]+n+1`
-/

namespace A168547.P3213644827815826921
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (2 * n) 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) + (n + 1 : ℤ)

end

end A168547.P3213644827815826921

namespace A168547

/-- `Δ[C(2*n, 4)]+n+1` -/
def P3213644827815826921.Spec : Prop :=
  ∀ n, P3213644827815826921.a n = A168547 n

theorem P3213644827815826921.correct : P3213644827815826921.Spec := by
  intro n
  simp only [A168547, Nat.add_sub_cancel, A168547.P3213644827815826921.f1, A168547.P3213644827815826921.a, A168547.P16365202704234955359.f1, A168547.P16365202704234955359.a, A000217, A000217.P10269402890581615239.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A168547

/-! ## A168547.P15007429856794732523

`∑[∑[a(n-1)+16]]` with `a(0)=1, a(1)=1, a(2)=12`
-/

namespace A168547.P15007429856794732523
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 12] fun n f2 =>
  f2 (n - 1) + 16

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A168547.P15007429856794732523

namespace A168547

/-- `∑[∑[a(n-1)+16]]` -/
def P15007429856794732523.Spec : Prop :=
  ∀ n, (P15007429856794732523.a n : ℤ) = A168547 n

end A168547

/-! ## A168547.P16365202704234955359

`Δ[A000217(n)+C(2*n, 4)]`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A168547

/-- `Δ[A000217(n)+C(2*n, 4)]` -/
def P16365202704234955359.Spec : Prop :=
  ∀ n, P16365202704234955359.a n = A168547 n

theorem P16365202704234955359.correct : P16365202704234955359.Spec := by
  intro n
  simp only [A168547]

end A168547

/-! ## A168547.P6944972135635814893

`((A054552(n)+1)*2*n+3)/3`
-/

namespace A168547.P6944972135635814893
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A054552 n + 1) * (2 * n : ℤ) + 3 : ℚ) / 3

end

end A168547.P6944972135635814893

namespace A168547

/-- `((A054552(n)+1)*2*n+3)/3` -/
def P6944972135635814893.Spec : Prop :=
  ∀ n, P6944972135635814893.a n = (A168547 n : ℚ)

theorem P6944972135635814893.correct : P6944972135635814893.Spec := by
  intro n
  simp only [A168547, Nat.add_sub_cancel, A168547.P6944972135635814893.a, A168547.P16365202704234955359.f1, A168547.P16365202704234955359.a, A000217, A000217.P10269402890581615239.a, A054552, A054552.P9181386657183712970.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A168547

/-! ## A168547.P4689384826707227969

`abs(A034721(n)-A146298(n))`
-/

namespace A168547.P4689384826707227969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A034721 n - A146298 n|

end

end A168547.P4689384826707227969

namespace A168547

/-- `abs(A034721(n)-A146298(n))` -/
def P4689384826707227969.Spec : Prop :=
  ∀ n, P4689384826707227969.a n = A168547 n

end A168547

/-! ## A168547.P944406982148666256

`Δ[n*(A161703(n)-1)/2]`
-/

namespace A168547.P944406982148666256
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) * ((A161703 n - 1 : ℚ) / 2)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A168547.P944406982148666256

namespace A168547

/-- `Δ[n*(A161703(n)-1)/2]` -/
def P944406982148666256.Spec : Prop :=
  ∀ n, P944406982148666256.a n = (A168547 n : ℚ)

end A168547

/-! ## A168547.P15653912167284786099

`A168582(2*n)`
-/

namespace A168547.P15653912167284786099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168582 (2 * n)

end

end A168547.P15653912167284786099

namespace A168547

/-- `A168582(2*n)` -/
def P15653912167284786099.Spec : Prop :=
  ∀ n, P15653912167284786099.a n = A168547 n

end A168547

/-! ## A168547.P5689161717934504680

`record[A168582(n)/(-1)^n]`
-/

namespace A168547.P5689161717934504680
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A168582 n : ℚ) / ((-1) ^ n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A168547.P5689161717934504680

namespace A168547

/-- `record[A168582(n)/(-1)^n]` -/
def P5689161717934504680.Spec : Prop :=
  ∀ n, P5689161717934504680.a n = (A168547 n : ℚ)

end A168547

/-! ## A168547.P8612277054288989009

`record[A168582(Δ[floor(n/2)²+n])]`
-/

namespace A168547.P8612277054288989009
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 2⌋ ^ 2 + (n : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168582 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A168547.P8612277054288989009

namespace A168547

/-- `record[A168582(Δ[floor(n/2)²+n])]` -/
def P8612277054288989009.Spec : Prop :=
  ∀ n, P8612277054288989009.a n = A168547 n

end A168547

/-! ## A168547.P11918398620177631275

`∑[∑[A110185(A004275(n))]+1]`
-/

namespace A168547.P11918398620177631275
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110185 (A004275 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A168547.P11918398620177631275

namespace A168547

/-- `∑[∑[A110185(A004275(n))]+1]` -/
def P11918398620177631275.Spec : Prop :=
  ∀ n, P11918398620177631275.a n = A168547 n

end A168547

/-! ## A168547.P17129950231407286950

`record[gcd(A142150(n), A168582(n+1))]`
-/

namespace A168547.P17129950231407286950
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A142150 n) (A168582 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A168547.P17129950231407286950

namespace A168547

/-- `record[gcd(A142150(n), A168582(n+1))]` -/
def P17129950231407286950.Spec : Prop :=
  ∀ n, (P17129950231407286950.a n : ℤ) = A168547 n

end A168547

/-! ## A168547.P3304757368935773922

`abs(A081490(2*n+1)-n)`
-/

namespace A168547.P3304757368935773922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A081490 (2 * n + 1) - (n : ℤ)|

end

end A168547.P3304757368935773922

namespace A168547

/-- `abs(A081490(2*n+1)-n)` -/
def P3304757368935773922.Spec : Prop :=
  ∀ n, P3304757368935773922.a n = A168547 n

end A168547

/-! ## A168547.P16493219724728721911

`Δ[A000332(2*n)+∑[n]]`
-/

namespace A168547.P16493219724728721911
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000332 (2 * n) + ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A168547.P16493219724728721911

namespace A168547

/-- `Δ[A000332(2*n)+∑[n]]` -/
def P16493219724728721911.Spec : Prop :=
  ∀ n, P16493219724728721911.a n = A168547 n

end A168547

/-!
# A168549: Expansion of g.f. (1/2)*( a*(1+x)^n + b*(1-x)^(n+2)*LerchPhi(x, -n-1, 1) + c*2^(n+1)*(1-x)^(n+1)*LerchPhi(x, -n, 1/2) ), where a = 31, b = -59, and c = 15, read by rows.

The programs for A168549, there is no canonical definition to state claims against.
-/

/-! ## A168549.P10875742170964810888

`A144094(a(n-2))` with `a(0)=1, a(1)=1, a(2)=1, a(3)=1, a(4)=3, a(5)=1, a(6)=1`
-/

namespace A168549.P10875742170964810888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1, 1, 3, 1, 1] fun n a =>
  A144094 (a (n - 2)).toNat

end

end A168549.P10875742170964810888

/-! ## A168549.P3291660138001857394

`A219093(A340130(n+2))`
-/

namespace A168549.P3291660138001857394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219093 (A340130 (n + 2)).toNat

end

end A168549.P3291660138001857394

/-! ## A168549.P13189133750827216133

`and(67, A066207(A303284(n)))`
-/

namespace A168549.P13189133750827216133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 67 (A066207 (A303284 n).toNat)

end

end A168549.P13189133750827216133

/-! ## A168549.P14269610948243760690

`and(67, A282720(A282741(n)))`
-/

namespace A168549.P14269610948243760690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 67 (A282720 (A282741 n).toNat)

end

end A168549.P14269610948243760690

/-! ## A168549.P6962121165527724066

`A337983(A237593(n+1)+floor(∑[2^n]/(n+1)))`
-/

namespace A168549.P6962121165527724066
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337983 (A237593 (n + 1) + ⌊((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / (n + 1 : ℚ)⌋).toNat

end

end A168549.P6962121165527724066

/-!
# A168550: Natural numbers k for which 1 + 2*k^3 is prime.

The programs for A168550, there is no canonical definition to state claims against.
-/

/-! ## A168550.P7124821572433163827

`eq[1, ∑{e}[2*n*n²+1, #]]`
-/

namespace A168550.P7124821572433163827
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n * n ^ 2) + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n), Nat.factorization (f3 n) p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A168550.P7124821572433163827

/-! ## A168550.P12873320788561739302

`eq[2, ∏{e}[2*n*n²+1, #+1]]`
-/

namespace A168550.P12873320788561739302
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n * n ^ 2) + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f3 n), (Nat.factorization (f3 n) p + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A168550.P12873320788561739302

/-! ## A168550.P12213492940977057022

`lt[A238847(n+1), 3]+1`
-/

namespace A168550.P12213492940977057022
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238847 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A168550.P12213492940977057022

/-! ## A168550.P10098984897128337226

`eq[A036453(n+1), A238847(n+1)]+1`
-/

namespace A168550.P10098984897128337226
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036453 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238847 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A168550.P10098984897128337226

/-!
# A168551: Expansion of g.f. (1/2)*( a*(1+x)^n + b*(1-x)^(n+2)*LerchPhi(x, -n-1, 1) + c*2^(n+1)*(1-x)^(n+1)*LerchPhi(x, -n, 1/2) ), where a = 1, b = -1, and c = 1, read by rows.

The programs for A168551, the canonical program `A168551.P16251001762095970515` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A168551 has offset 0).

The definition of A168551 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1916 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A168551.P12611869867519698702

`A060187(n+1)-A290448(n)`
-/

namespace A168551.P12611869867519698702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060187 (n + 1) - A290448 n

end

end A168551.P12611869867519698702

namespace A168551

/-- `A060187(n+1)-A290448(n)` -/
def P12611869867519698702.Spec : Prop :=
  ∀ n, P12611869867519698702.a n = A168551 n

end A168551

/-! ## A168551.P16404330291596032653

`(A168552(n)+A168517(n))/2`
-/

namespace A168551.P16404330291596032653
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A168552 n + A168517 n : ℚ) / 2

end

end A168551.P16404330291596032653

namespace A168551

/-- `(A168552(n)+A168517(n))/2` -/
def P16404330291596032653.Spec : Prop :=
  ∀ n, P16404330291596032653.a n = (A168551 n : ℚ)

theorem P16404330291596032653.correct : P16404330291596032653.Spec := by
  intro n
  simp only [A168551, Nat.add_sub_cancel, A168551.P16404330291596032653.a, A168551.P16251001762095970515.a, A060187, A060187.P2858299442381557721.a, A168517, A168517.P3987419255871127776.a, A168552, A168552.P16861038903126470007.a, A008292, A008292.P18172958035633294905.a, A141689, A141689.P17765687442390039653.a, A014473, A014473.P9301799580602651200.a, A007318, A007318.P11755526479805562006.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A168551

/-! ## A168551.P16251001762095970515

`2*A060187(n+1)-A168517(n)`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A168551

/-- `2*A060187(n+1)-A168517(n)` -/
def P16251001762095970515.Spec : Prop :=
  ∀ n, P16251001762095970515.a n = A168551 n

theorem P16251001762095970515.correct : P16251001762095970515.Spec := by
  intro n
  simp only [A168551]

end A168551

/-! ## A168551.P12282146753415206954

`A008292(n+1)+A168552(n)-A007318(n)`
-/

namespace A168551.P12282146753415206954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008292 (n + 1) + (A168552 n - A007318 n)

end

end A168551.P12282146753415206954

namespace A168551

/-- `A008292(n+1)+A168552(n)-A007318(n)` -/
def P12282146753415206954.Spec : Prop :=
  ∀ n, P12282146753415206954.a n = A168551 n

end A168551

/-! ## A168551.P13994039190589683115

`A008292(n+1)+A168517(n)-A141690(n)`
-/

namespace A168551.P13994039190589683115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008292 (n + 1) + (A168517 n - A141690 n)

end

end A168551.P13994039190589683115

namespace A168551

/-- `A008292(n+1)+A168517(n)-A141690(n)` -/
def P13994039190589683115.Spec : Prop :=
  ∀ n, P13994039190589683115.a n = A168551 n

end A168551

/-! ## A168551.P554607333938509159

`A060187(n+1)+A141689(n+1)-A008292(n+1)`
-/

namespace A168551.P554607333938509159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060187 (n + 1) + (A141689 (n + 1) - A008292 (n + 1))

end

end A168551.P554607333938509159

namespace A168551

/-- `A060187(n+1)+A141689(n+1)-A008292(n+1)` -/
def P554607333938509159.Spec : Prop :=
  ∀ n, P554607333938509159.a n = A168551 n

theorem P554607333938509159.correct : P554607333938509159.Spec := by
  intro n
  simp only [A168551, Nat.add_sub_cancel, A168551.P554607333938509159.a, A168551.P16251001762095970515.a, A008292, A008292.P18172958035633294905.a, A060187, A060187.P2858299442381557721.a, A141689, A141689.P17765687442390039653.a, A168517, A168517.P3987419255871127776.a, A014473, A014473.P9301799580602651200.a, A007318, A007318.P11755526479805562006.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A168551

/-! ## A168551.P5714523582488495747

`2*A147565(n)-A141689(n+1)`
-/

namespace A168551.P5714523582488495747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A147565 n - A141689 (n + 1)

end

end A168551.P5714523582488495747

namespace A168551

/-- `2*A147565(n)-A141689(n+1)` -/
def P5714523582488495747.Spec : Prop :=
  ∀ n, P5714523582488495747.a n = A168551 n

end A168551

/-! ## A168551.P17522792178231527818

`A168517(n)+A168523(n)-A168524(n)`
-/

namespace A168551.P17522792178231527818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168517 n + (A168523 n - A168524 n)

end

end A168551.P17522792178231527818

namespace A168551

/-- `A168517(n)+A168523(n)-A168524(n)` -/
def P17522792178231527818.Spec : Prop :=
  ∀ n, P17522792178231527818.a n = A168551 n

end A168551

/-! ## A168551.P4779643269907186598

`A060187(n+1)+A168517(n)-A168523(n)`
-/

namespace A168551.P4779643269907186598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060187 (n + 1) + (A168517 n - A168523 n)

end

end A168551.P4779643269907186598

namespace A168551

/-- `A060187(n+1)+A168517(n)-A168523(n)` -/
def P4779643269907186598.Spec : Prop :=
  ∀ n, P4779643269907186598.a n = A168551 n

end A168551

/-! ## A168551.P9105697785558112441

`A141689(n+1)+A168523(n)-A141690(n)`
-/

namespace A168551.P9105697785558112441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141689 (n + 1) + (A168523 n - A141690 n)

end

end A168551.P9105697785558112441

namespace A168551

/-- `A141689(n+1)+A168523(n)-A141690(n)` -/
def P9105697785558112441.Spec : Prop :=
  ∀ n, P9105697785558112441.a n = A168551 n

theorem P9105697785558112441.correct : P9105697785558112441.Spec := by
  intro n
  simp only [A168551, Nat.add_sub_cancel, A168551.P9105697785558112441.a, A168551.P16251001762095970515.a, A060187, A060187.P2858299442381557721.a, A141689, A141689.P17765687442390039653.a, A141690, A141690.P1589277232017455012.a, A168517, A168517.P3987419255871127776.a, A168523, A168523.P2818392945840428829.a, A007318, A007318.P11755526479805562006.a, A008292, A008292.P18172958035633294905.a, A014473, A014473.P9301799580602651200.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A168551

/-! ## A168551.P13313269279612861215

`(A154335(n)+A007318(n))/2`
-/

namespace A168551.P13313269279612861215
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A154335 n + A007318 n : ℚ) / 2

end

end A168551.P13313269279612861215

namespace A168551

/-- `(A154335(n)+A007318(n))/2` -/
def P13313269279612861215.Spec : Prop :=
  ∀ n, P13313269279612861215.a n = (A168551 n : ℚ)

end A168551

/-! ## A168551.P2083663147278834890

`A154334(n)+A154337(n)-A168517(n)`
-/

namespace A168551.P2083663147278834890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154334 n + (A154337 n - A168517 n)

end

end A168551.P2083663147278834890

namespace A168551

/-- `A154334(n)+A154337(n)-A168517(n)` -/
def P2083663147278834890.Spec : Prop :=
  ∀ n, P2083663147278834890.a n = A168551 n

theorem P2083663147278834890.correct : P2083663147278834890.Spec := by
  intro n
  simp only [A168551, Nat.add_sub_cancel, A168551.P2083663147278834890.a, A168551.P16251001762095970515.a, A060187, A060187.P2858299442381557721.a, A154334, A154334.P4393523931861115202.a, A154337, A154337.P2678158000755905541.a, A168517, A168517.P3987419255871127776.a, A007318, A007318.P11755526479805562006.a, A008292, A008292.P18172958035633294905.a, A141689, A141689.P17765687442390039653.a, A168523, A168523.P2818392945840428829.a, A014473, A014473.P9301799580602651200.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A168551

/-! ## A168551.P7343634817041783849

`A154336(n)+A154338(n)-A168517(n)`
-/

namespace A168551.P7343634817041783849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154336 n + (A154338 n - A168517 n)

end

end A168551.P7343634817041783849

namespace A168551

/-- `A154336(n)+A154338(n)-A168517(n)` -/
def P7343634817041783849.Spec : Prop :=
  ∀ n, P7343634817041783849.a n = A168551 n

theorem P7343634817041783849.correct : P7343634817041783849.Spec := by
  intro n
  simp only [A168551, Nat.add_sub_cancel, A168551.P7343634817041783849.a, A168551.P16251001762095970515.a, A060187, A060187.P2858299442381557721.a, A154336, A154336.P13527652642687108654.a, A154338, A154338.P12998775636047877976.a, A168517, A168517.P3987419255871127776.a, A008292, A008292.P18172958035633294905.a, A141689, A141689.P17765687442390039653.a, A154335, A154335.P1248576058103309358.a, A014473, A014473.P9301799580602651200.a, A007318, A007318.P11755526479805562006.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A168551

/-! ## A168551.P13999935451913798444

`A008292(n+1)+A154335(n)-A168517(n)`
-/

namespace A168551.P13999935451913798444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008292 (n + 1) + (A154335 n - A168517 n)

end

end A168551.P13999935451913798444

namespace A168551

/-- `A008292(n+1)+A154335(n)-A168517(n)` -/
def P13999935451913798444.Spec : Prop :=
  ∀ n, P13999935451913798444.a n = A168551 n

theorem P13999935451913798444.correct : P13999935451913798444.Spec := by
  intro n
  simp only [A168551, Nat.add_sub_cancel, A168551.P13999935451913798444.a, A168551.P16251001762095970515.a, A008292, A008292.P18172958035633294905.a, A060187, A060187.P2858299442381557721.a, A154335, A154335.P1248576058103309358.a, A168517, A168517.P3987419255871127776.a, A141689, A141689.P17765687442390039653.a, A014473, A014473.P9301799580602651200.a, A007318, A007318.P11755526479805562006.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A168551

/-! ## A168551.P1129707299424122818

`A008292(n+1)+A141689(n+1)-A154338(n)`
-/

namespace A168551.P1129707299424122818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008292 (n + 1) + (A141689 (n + 1) - A154338 n)

end

end A168551.P1129707299424122818

namespace A168551

/-- `A008292(n+1)+A141689(n+1)-A154338(n)` -/
def P1129707299424122818.Spec : Prop :=
  ∀ n, P1129707299424122818.a n = A168551 n

theorem P1129707299424122818.correct : P1129707299424122818.Spec := by
  intro n
  simp only [A168551, Nat.add_sub_cancel, A168551.P1129707299424122818.a, A168551.P16251001762095970515.a, A008292, A008292.P18172958035633294905.a, A060187, A060187.P2858299442381557721.a, A141689, A141689.P17765687442390039653.a, A154338, A154338.P12998775636047877976.a, A168517, A168517.P3987419255871127776.a, A014473, A014473.P9301799580602651200.a, A154336, A154336.P13527652642687108654.a, A007318, A007318.P11755526479805562006.a, A154335, A154335.P1248576058103309358.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A168551

/-!
# A168552: Expansion of g.f. (1/2)*( a*(1+x)^n + b*(1-x)^(n+2)*LerchPhi(x, -n-1, 1) + c*2^(n+1)*(1-x)^(n+1)*LerchPhi(x, -n, 1/2) ), where a = 3, b = -3, and c = 1, read by rows.

The programs for A168552, the canonical program `A168552.P16861038903126470007` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A168552 has offset 0).

The definition of A168552 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1916 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A168552.P16861038903126470007

`2*A168551(n)-A168517(n)`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A168552

/-- `2*A168551(n)-A168517(n)` -/
def P16861038903126470007.Spec : Prop :=
  ∀ n, P16861038903126470007.a n = A168552 n

theorem P16861038903126470007.correct : P16861038903126470007.Spec := by
  intro n
  simp only [A168552]

end A168552

/-! ## A168552.P4225277017371921163

`A168551(n)-2*A290448(n)`
-/

namespace A168552.P4225277017371921163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168551 n - 2 * A290448 n

end

end A168552.P4225277017371921163

namespace A168552

/-- `A168551(n)-2*A290448(n)` -/
def P4225277017371921163.Spec : Prop :=
  ∀ n, P4225277017371921163.a n = A168552 n

end A168552

/-! ## A168552.P17943110338824371408

`A008292(n+1)+A168551(n)-A141690(n)`
-/

namespace A168552.P17943110338824371408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008292 (n + 1) + (A168551 n - A141690 n)

end

end A168552.P17943110338824371408

namespace A168552

/-- `A008292(n+1)+A168551(n)-A141690(n)` -/
def P17943110338824371408.Spec : Prop :=
  ∀ n, P17943110338824371408.a n = A168552 n

end A168552

/-! ## A168552.P8147385277589215186

`A008292(n+1)+A168517(n)-A141696(n+1)`
-/

namespace A168552.P8147385277589215186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008292 (n + 1) + (A168517 n - A141696 (n + 1))

end

end A168552.P8147385277589215186

namespace A168552

/-- `A008292(n+1)+A168517(n)-A141696(n+1)` -/
def P8147385277589215186.Spec : Prop :=
  ∀ n, P8147385277589215186.a n = A168552 n

end A168552

/-! ## A168552.P1709244632306844319

`A060187(n+1)+A141689(n+1)-A141690(n)`
-/

namespace A168552.P1709244632306844319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060187 (n + 1) + (A141689 (n + 1) - A141690 n)

end

end A168552.P1709244632306844319

namespace A168552

/-- `A060187(n+1)+A141689(n+1)-A141690(n)` -/
def P1709244632306844319.Spec : Prop :=
  ∀ n, P1709244632306844319.a n = A168552 n

end A168552

/-! ## A168552.P2108788143212536656

`A168523(n)+A168551(n)-A168524(n)`
-/

namespace A168552.P2108788143212536656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168523 n + (A168551 n - A168524 n)

end

end A168552.P2108788143212536656

namespace A168552

/-- `A168523(n)+A168551(n)-A168524(n)` -/
def P2108788143212536656.Spec : Prop :=
  ∀ n, P2108788143212536656.a n = A168552 n

end A168552

/-! ## A168552.P13777629411120634965

`A060187(n+1)+A168517(n)-A168524(n)`
-/

namespace A168552.P13777629411120634965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060187 (n + 1) + (A168517 n - A168524 n)

end

end A168552.P13777629411120634965

namespace A168552

/-- `A060187(n+1)+A168517(n)-A168524(n)` -/
def P13777629411120634965.Spec : Prop :=
  ∀ n, P13777629411120634965.a n = A168552 n

end A168552

/-! ## A168552.P6679565856424191146

`A060187(n+1)+A168551(n)-A168523(n)`
-/

namespace A168552.P6679565856424191146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060187 (n + 1) + (A168551 n - A168523 n)

end

end A168552.P6679565856424191146

namespace A168552

/-- `A060187(n+1)+A168551(n)-A168523(n)` -/
def P6679565856424191146.Spec : Prop :=
  ∀ n, P6679565856424191146.a n = A168552 n

end A168552

/-! ## A168552.P8068416514632002028

`A141689(n+1)+A168523(n)-A141696(n+1)`
-/

namespace A168552.P8068416514632002028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141689 (n + 1) + (A168523 n - A141696 (n + 1))

end

end A168552.P8068416514632002028

namespace A168552

/-- `A141689(n+1)+A168523(n)-A141696(n+1)` -/
def P8068416514632002028.Spec : Prop :=
  ∀ n, P8068416514632002028.a n = A168552 n

end A168552

/-! ## A168552.P8557912053423571585

`A141689(n+1)+A154335(n)-A168523(n)`
-/

namespace A168552.P8557912053423571585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141689 (n + 1) + (A154335 n - A168523 n)

end

end A168552.P8557912053423571585

namespace A168552

/-- `A141689(n+1)+A154335(n)-A168523(n)` -/
def P8557912053423571585.Spec : Prop :=
  ∀ n, P8557912053423571585.a n = A168552 n

end A168552

/-!
# A168555: a(n) = n^6*(n^3 + 1)/2.

The programs for A168555, the canonical program `A168555.P8829824917545449198` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A168555 has offset 0).

The definition of A168555 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n^6*(n^3+1)/2` (program `A168555.P2467753698632672851`, by `A168555.P2467753698632672851.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A168555.P7390530352028298611

`(n^6+n^9)/2`
-/

namespace A168555.P7390530352028298611
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n ^ 6 + n ^ 9 : ℚ) / 2

end

end A168555.P7390530352028298611

namespace A168555

/-- `(n^6+n^9)/2` -/
def P7390530352028298611.Spec : Prop :=
  ∀ n, P7390530352028298611.a n = (A168555 n : ℚ)

theorem P7390530352028298611.correct : P7390530352028298611.Spec := by
  intro n
  simp only [A168555, Nat.add_sub_cancel, A168555.P7390530352028298611.a, A168555.P8829824917545449198.a, A071232, A071232.P17086031509511629369.a, A000217, A000217.P10269402890581615239.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A168555

/-! ## A168555.P2467753698632672851

`n^6*(n^3+1)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A168555.P2467753698632672851
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n ^ 6 * (n ^ 3 + 1) : ℚ) / 2

end

end A168555.P2467753698632672851

namespace A168555

/-- `n^6*(n^3+1)/2` -/
def P2467753698632672851.Spec : Prop :=
  ∀ n, P2467753698632672851.a n = (A168555 n : ℚ)

theorem P2467753698632672851.correct : P2467753698632672851.Spec := by
  intro n
  simp only [A168555, Nat.add_sub_cancel, A168555.P2467753698632672851.a, A168555.P8829824917545449198.a, A071232, A071232.P17086031509511629369.a, A000217, A000217.P10269402890581615239.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A168555

/-! ## A168555.P16860452972021271694

`n*A168371(n)`
-/

namespace A168555.P16860452972021271694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A168371 n

end

end A168555.P16860452972021271694

namespace A168555

/-- `n*A168371(n)` -/
def P16860452972021271694.Spec : Prop :=
  ∀ n, P16860452972021271694.a n = A168555 n

theorem P16860452972021271694.correct : P16860452972021271694.Spec := by
  intro n
  simp only [A168555, Nat.add_sub_cancel, A168555.P16860452972021271694.a, A168555.P8829824917545449198.a, A071232, A071232.P17086031509511629369.a, A168371, A168371.P6876523043073551234.a, A000217, A000217.P10269402890581615239.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A168555

/-! ## A168555.P7937865155039514960

`n²*A168194(n)`
-/

namespace A168555.P7937865155039514960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) * A168194 n

end

end A168555.P7937865155039514960

namespace A168555

/-- `n²*A168194(n)` -/
def P7937865155039514960.Spec : Prop :=
  ∀ n, P7937865155039514960.a n = A168555 n

theorem P7937865155039514960.correct : P7937865155039514960.Spec := by
  intro n
  simp only [A168555, Nat.add_sub_cancel, A168555.P7937865155039514960.a, A168555.P8829824917545449198.a, A071232, A071232.P17086031509511629369.a, A168194, A168194.P12245219511492537405.a, A000217, A000217.P10269402890581615239.a, A085744, A085744.P6091616498061970500.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A168555

/-! ## A168555.P8829824917545449198

`n^3*A071232(n)`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A168555

/-- `n^3*A071232(n)` -/
def P8829824917545449198.Spec : Prop :=
  ∀ n, P8829824917545449198.a n = A168555 n

theorem P8829824917545449198.correct : P8829824917545449198.Spec := by
  intro n
  simp only [A168555]

end A168555

/-! ## A168555.P10074054314788653790

`n²²*A101378(n)`
-/

namespace A168555.P10074054314788653790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n ^ 2) ^ 2 : ℤ) * A101378 n

end

end A168555.P10074054314788653790

namespace A168555

/-- `n²²*A101378(n)` -/
def P10074054314788653790.Spec : Prop :=
  ∀ n, P10074054314788653790.a n = A168555 n

end A168555

/-! ## A168555.P3308491626594297984

`A168187(n)+A085744(n)`
-/

namespace A168555.P3308491626594297984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168187 n + A085744 n

end

end A168555.P3308491626594297984

namespace A168555

/-- `A168187(n)+A085744(n)` -/
def P3308491626594297984.Spec : Prop :=
  ∀ n, P3308491626594297984.a n = A168555 n

end A168555

/-! ## A168555.P1687881848764510682

`A000584(n)*A027441(n)`
-/

namespace A168555.P1687881848764510682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000584 n * A027441 n

end

end A168555.P1687881848764510682

namespace A168555

/-- `A000584(n)*A027441(n)` -/
def P1687881848764510682.Spec : Prop :=
  ∀ n, P1687881848764510682.a n = A168555 n

end A168555

/-! ## A168555.P1419969389826179324

`A002061(n)*A168526(n)`
-/

namespace A168555.P1419969389826179324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002061 n * A168526 n

end

end A168555.P1419969389826179324

namespace A168555

/-- `A002061(n)*A168526(n)` -/
def P1419969389826179324.Spec : Prop :=
  ∀ n, P1419969389826179324.a n = A168555 n

theorem P1419969389826179324.correct : P1419969389826179324.Spec := by
  intro n
  simp only [A168555, Nat.add_sub_cancel, A168555.P1419969389826179324.a, A168555.P8829824917545449198.a, A002061, A002061.P13016590216674735232.a, A071232, A071232.P17086031509511629369.a, A168526, A168526.P7414752990000463124.a, A000217, A000217.P10269402890581615239.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A168555

/-! ## A168555.P546744750613009364

`A168194(n)*A253909(n)`
-/

namespace A168555.P546744750613009364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168194 n * A253909 n

end

end A168555.P546744750613009364

namespace A168555

/-- `A168194(n)*A253909(n)` -/
def P546744750613009364.Spec : Prop :=
  ∀ n, P546744750613009364.a n = A168555 n

end A168555

/-! ## A168555.P6679477045144157235

`lcm(A027441(n), A168526(n))`
-/

namespace A168555.P6679477045144157235
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A027441 n) (A168526 n)

end

end A168555.P6679477045144157235

namespace A168555

/-- `lcm(A027441(n), A168526(n))` -/
def P6679477045144157235.Spec : Prop :=
  ∀ n, (P6679477045144157235.a n : ℤ) = A168555 n

end A168555

/-! ## A168555.P2421407685390148493

`A167963(n)+A168116(n)-n`
-/

namespace A168555.P2421407685390148493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167963 n + (A168116 n - (n : ℤ))

end

end A168555.P2421407685390148493

namespace A168555

/-- `A167963(n)+A168116(n)-n` -/
def P2421407685390148493.Spec : Prop :=
  ∀ n, P2421407685390148493.a n = A168555 n

end A168555

/-! ## A168555.P17410150390787873520

`A168351(n)+A168372(n)-A000584(n)`
-/

namespace A168555.P17410150390787873520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168351 n + (A168372 n - A000584 n)

end

end A168555.P17410150390787873520

namespace A168555

/-- `A168351(n)+A168372(n)-A000584(n)` -/
def P17410150390787873520.Spec : Prop :=
  ∀ n, P17410150390787873520.a n = A168555 n

theorem P17410150390787873520.correct : P17410150390787873520.Spec := by
  intro n
  simp only [A168555, Nat.add_sub_cancel, A168555.P17410150390787873520.a, A168555.P8829824917545449198.a, A000584, A000584.P5477385692209315495.a, A071232, A071232.P17086031509511629369.a, A168351, A168351.P7899270696741764413.a, A168372, A168372.P10457771885874801747.a, A000217, A000217.P10269402890581615239.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A168555

/-! ## A168555.P14021751536742314473

`A001017(n)+A168351(n)-A168372(n)`
-/

namespace A168555.P14021751536742314473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001017 n + (A168351 n - A168372 n)

end

end A168555.P14021751536742314473

namespace A168555

/-- `A001017(n)+A168351(n)-A168372(n)` -/
def P14021751536742314473.Spec : Prop :=
  ∀ n, P14021751536742314473.a n = A168555 n

theorem P14021751536742314473.correct : P14021751536742314473.Spec := by
  intro n
  simp only [A168555, Nat.add_sub_cancel, A168555.P14021751536742314473.a, A168555.P8829824917545449198.a, A001017, A001017.P9152421289291957289.a, A071232, A071232.P17086031509511629369.a, A168351, A168351.P7899270696741764413.a, A168372, A168372.P10457771885874801747.a, A000217, A000217.P10269402890581615239.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A168555

/-! ## A168555.P11039951772264287153

`A168116(n)+A168526(n)-A168029(n)`
-/

namespace A168555.P11039951772264287153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168116 n + (A168526 n - A168029 n)

end

end A168555.P11039951772264287153

namespace A168555

/-- `A168116(n)+A168526(n)-A168029(n)` -/
def P11039951772264287153.Spec : Prop :=
  ∀ n, P11039951772264287153.a n = A168555 n

end A168555

/-! ## A168555.P14568302791355670975

`A167963(n)+A170783(n)-A168118(n)`
-/

namespace A168555.P14568302791355670975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167963 n + (A170783 n - A168118 n)

end

end A168555.P14568302791355670975

namespace A168555

/-- `A167963(n)+A170783(n)-A168118(n)` -/
def P14568302791355670975.Spec : Prop :=
  ∀ n, P14568302791355670975.a n = A168555 n

end A168555

/-! ## A168555.P13307258029602391524

`(A085744(n)+A000578(n))*A000578(n)`
-/

namespace A168555.P13307258029602391524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A085744 n + A000578 n) * A000578 n

end

end A168555.P13307258029602391524

namespace A168555

/-- `(A085744(n)+A000578(n))*A000578(n)` -/
def P13307258029602391524.Spec : Prop :=
  ∀ n, P13307258029602391524.a n = A168555 n

theorem P13307258029602391524.correct : P13307258029602391524.Spec := by
  intro n
  simp only [A168555, Nat.add_sub_cancel, A168555.P13307258029602391524.a, A168555.P8829824917545449198.a, A000578, A000578.P12162961755414704816.a, A071232, A071232.P17086031509511629369.a, A085744, A085744.P6091616498061970500.a, A000217, A000217.P10269402890581615239.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A168555

/-! ## A168555.P16065366870423611603

`(A001014(n)-A085744(n))*A000578(n)`
-/

namespace A168555.P16065366870423611603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A001014 n - A085744 n) * A000578 n

end

end A168555.P16065366870423611603

namespace A168555

/-- `(A001014(n)-A085744(n))*A000578(n)` -/
def P16065366870423611603.Spec : Prop :=
  ∀ n, P16065366870423611603.a n = A168555 n

theorem P16065366870423611603.correct : P16065366870423611603.Spec := by
  intro n
  simp only [A168555, Nat.add_sub_cancel, A168555.P16065366870423611603.a, A168555.P8829824917545449198.a, A000578, A000578.P12162961755414704816.a, A001014, A001014.P10270364271630987481.a, A071232, A071232.P17086031509511629369.a, A085744, A085744.P6091616498061970500.a, A000217, A000217.P10269402890581615239.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A168555

/-!
# A168558: a(n) = n + a(n-1)^2 for n>1, a(1)=0.

The programs for A168558, the canonical program `A168558.P9671679696310754121` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A168558 has offset 1).

The definition of A168558 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n+1+a(n-1)²` (program `A168558.P9671679696310754121`, by `A168558.P9671679696310754121.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A168558.P9671679696310754121

`n+1+a(n-1)²` with `a(0)=0`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A168558

/-- `n+1+a(n-1)²` -/
def P9671679696310754121.Spec : Prop :=
  ∀ n, (P9671679696310754121.a n : ℤ) = A168558 (n + 1)

theorem P9671679696310754121.correct : P9671679696310754121.Spec := by
  intro n
  simp only [A168558, Nat.add_sub_cancel]

end A168558

/-! ## A168558.P8937095498305002391

`a(n-1)^2+1+n` with `a(0)=0`
-/

namespace A168558.P8937095498305002391
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) ^ 2 + 1 + n

end

end A168558.P8937095498305002391

namespace A168558

/-- `a(n-1)^2+1+n` -/
def P8937095498305002391.Spec : Prop :=
  ∀ n, (P8937095498305002391.a n : ℤ) = A168558 (n + 1)

end A168558

/-! ## A168558.P12040312596533065806

`a(n-1)²-xor(n, -1)` with `a(0)=0`
-/

namespace A168558.P12040312596533065806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) ^ 2 - Int.xor (n : ℤ) (-1)

end

end A168558.P12040312596533065806

namespace A168558

/-- `a(n-1)²-xor(n, -1)` -/
def P12040312596533065806.Spec : Prop :=
  ∀ n, P12040312596533065806.a n = A168558 (n + 1)

end A168558

/-! ## A168558.P13903657918952686536

`a(n-1)²-(n-Δ[n²])` with `a(0)=0`
-/

namespace A168558.P13903657918952686536
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) ^ 2 - ((n : ℤ) - ((f1 (n + 1) : ℤ) - (f1 n : ℤ)))

end

end A168558.P13903657918952686536

namespace A168558

/-- `a(n-1)²-(n-Δ[n²])` -/
def P13903657918952686536.Spec : Prop :=
  ∀ n, P13903657918952686536.a n = A168558 (n + 1)

end A168558

/-! ## A168558.P2564630309748454771

`root(a(n-1), 1/2)+n+1` with `a(0)=0`
-/

namespace A168558.P2564630309748454771
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) ^ (1 / ((1 : ℚ) / 2 : ℝ)) + (n + 1 : ℝ)

end

end A168558.P2564630309748454771

namespace A168558

/-- `root(a(n-1), 1/2)+n+1` -/
def P2564630309748454771.Spec : Prop :=
  ∀ n, P2564630309748454771.a n = (A168558 (n + 1) : ℝ)

end A168558

/-!
# A168559: a(n) = n^2 + a(n-1), with a(1)=0.

The programs for A168559, the canonical program `A168559.P11760679101330420194` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A168559 has offset 1).

The definition of A168559 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+1)²+a(n-1)` (program `A168559.P11760679101330420194`, by `A168559.P11760679101330420194.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A168559.P11760679101330420194

`(n+1)²+a(n-1)` with `a(0)=0`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A168559

/-- `(n+1)²+a(n-1)` -/
def P11760679101330420194.Spec : Prop :=
  ∀ n, (P11760679101330420194.a n : ℤ) = A168559 (n + 1)

theorem P11760679101330420194.correct : P11760679101330420194.Spec := by
  intro n
  simp only [A168559, Nat.add_sub_cancel]

end A168559

/-! ## A168559.P10659929588865554582

`ogf((4x-3x^2+x^3)/(1-4x+6x^2-4x^3+x^4))`
-/

namespace A168559.P10659929588865554582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 4, -3, 1] [1, -4, 6, -4, 1] n

end

end A168559.P10659929588865554582

namespace A168559

/-- `ogf((4x-3x^2+x^3)/(1-4x+6x^2-4x^3+x^4))` -/
def P10659929588865554582.Spec : Prop :=
  ∀ n, P10659929588865554582.a n = A168559 (n + 1)

end A168559

/-! ## A168559.P2970625298829026233

`(n+1)^3/3+(n+1)²/2+(n+1)/6-1`
-/

namespace A168559.P2970625298829026233
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 3 : ℚ) / 3 + ((n + 1) ^ 2 : ℚ) / 2 + (n + 1 : ℚ) / 6 - 1

end

end A168559.P2970625298829026233

namespace A168559

/-- `(n+1)^3/3+(n+1)²/2+(n+1)/6-1` -/
def P2970625298829026233.Spec : Prop :=
  ∀ n, P2970625298829026233.a n = (A168559 (n + 1) : ℚ)

theorem P2970625298829026233.correct : P2970625298829026233.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A168559, Nat.add_sub_cancel, A168559.P2970625298829026233.a, A168559.P11760679101330420194.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A168559, Nat.add_sub_cancel, A168559.P2970625298829026233.a, A168559.P11760679101330420194.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [← h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A168559

/-! ## A168559.P13035572198585311989

`∑[record[(n-1)²]]-1`
-/

namespace A168559.P13035572198585311989
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1) ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A168559.P13035572198585311989

namespace A168559

/-- `∑[record[(n-1)²]]-1` -/
def P13035572198585311989.Spec : Prop :=
  ∀ n, P13035572198585311989.a n = A168559 (n + 1)

end A168559

/-! ## A168559.P13624086803493024316

`∑[xor(1, record[xor(1, n²)])]`
-/

namespace A168559.P13624086803493024316
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (n ^ 2)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A168559.P13624086803493024316

namespace A168559

/-- `∑[xor(1, record[xor(1, n²)])]` -/
def P13624086803493024316.Spec : Prop :=
  ∀ n, (P13624086803493024316.a n : ℤ) = A168559 (n + 1)

end A168559

/-! ## A168559.P10400537505449298413

`∑[ceil(n/acot(n+2))]`
-/

namespace A168559.P10400537505449298413
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℝ) / SequenceMachineLib.acot (n + 2 : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A168559.P10400537505449298413

namespace A168559

/-- `∑[ceil(n/acot(n+2))]` -/
def P10400537505449298413.Spec : Prop :=
  ∀ n, P10400537505449298413.a n = A168559 (n + 1)

end A168559

/-! ## A168559.P3151347002793935323

`∑[ceil(sin(n)²+n)²]`
-/

namespace A168559.P3151347002793935323
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sin (n : ℝ) ^ 2 + (n : ℝ)⌉ ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A168559.P3151347002793935323

namespace A168559

/-- `∑[ceil(sin(n)²+n)²]` -/
def P3151347002793935323.Spec : Prop :=
  ∀ n, P3151347002793935323.a n = A168559 (n + 1)

end A168559

/-! ## A168559.P11451978569785265213

`∑[round(atan(atan(n))+n)²]`
-/

namespace A168559.P11451978569785265213
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.arctan (Real.arctan (n : ℝ)) + (n : ℝ)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A168559.P11451978569785265213

namespace A168559

/-- `∑[round(atan(atan(n))+n)²]` -/
def P11451978569785265213.Spec : Prop :=
  ∀ n, P11451978569785265213.a n = A168559 (n + 1)

end A168559

/-! ## A168559.P6269046470251054262

`∑[∑[xor(1, 2*n)]]-1`
-/

namespace A168559.P6269046470251054262
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (2 * n)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1

end

end A168559.P6269046470251054262

namespace A168559

/-- `∑[∑[xor(1, 2*n)]]-1` -/
def P6269046470251054262.Spec : Prop :=
  ∀ n, P6269046470251054262.a n = A168559 (n + 1)

end A168559

/-! ## A168559.P9388610051794787542

`xor(-1, ∑[-(n+1)²])`
-/

namespace A168559.P9388610051794787542
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -((n + 1) ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (-1) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A168559.P9388610051794787542

namespace A168559

/-- `xor(-1, ∑[-(n+1)²])` -/
def P9388610051794787542.Spec : Prop :=
  ∀ n, P9388610051794787542.a n = A168559 (n + 1)

end A168559

/-! ## A168559.P17538084770413923426

`floor(∑[cot((1/(n+1))²)])`
-/

namespace A168559.P17538084770413923426
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.cot ((1 / (n + 1 : ℚ)) ^ 2 : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋

end

end A168559.P17538084770413923426

namespace A168559

/-- `floor(∑[cot((1/(n+1))²)])` -/
def P17538084770413923426.Spec : Prop :=
  ∀ n, P17538084770413923426.a n = A168559 (n + 1)

end A168559

/-! ## A168559.P944998556370250196

`∑[floor(atan(n+1)+n)²]`
-/

namespace A168559.P944998556370250196
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.arctan (n + 1 : ℝ) + (n : ℝ)⌋ ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A168559.P944998556370250196

namespace A168559

/-- `∑[floor(atan(n+1)+n)²]` -/
def P944998556370250196.Spec : Prop :=
  ∀ n, P944998556370250196.a n = A168559 (n + 1)

end A168559

/-! ## A168559.P8243764630506232432

`∑[(n+1)²%Δ[n^3]]`
-/

namespace A168559.P8243764630506232432
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 3

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((n + 1) ^ 2 : ℤ) ((f2 (n + 1) : ℤ) - (f2 n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A168559.P8243764630506232432

namespace A168559

/-- `∑[(n+1)²%Δ[n^3]]` -/
def P8243764630506232432.Spec : Prop :=
  ∀ n, P8243764630506232432.a n = A168559 (n + 1)

end A168559

/-! ## A168559.P13817338096829578823

`∑[∪[(2*n)², (n+2)²]]`
-/

namespace A168559.P13817338096829578823
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n) ^ 2

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 2) ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = x) ∨ ∃ j, f3 j = x) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A168559.P13817338096829578823

namespace A168559

/-- `∑[∪[(2*n)², (n+2)²]]` -/
def P13817338096829578823.Spec : Prop :=
  ∀ n, (P13817338096829578823.a n : ℤ) = A168559 (n + 1)

end A168559

/-! ## A168559.P2357324864114297964

`∑[ceil(sinh(log(2*n+1)))²]`
-/

namespace A168559.P2357324864114297964
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sinh (Real.log (2 * n + 1 : ℝ))⌉ ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A168559.P2357324864114297964

namespace A168559

/-- `∑[ceil(sinh(log(2*n+1)))²]` -/
def P2357324864114297964.Spec : Prop :=
  ∀ n, P2357324864114297964.a n = A168559 (n + 1)

end A168559

/-! ## A168559.P13889870877889176628

`∑[floor(acot(acot(n+1))+n)²]`
-/

namespace A168559.P13889870877889176628
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊SequenceMachineLib.acot (SequenceMachineLib.acot (n + 1 : ℝ)) + (n : ℝ)⌋ ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A168559.P13889870877889176628

namespace A168559

/-- `∑[floor(acot(acot(n+1))+n)²]` -/
def P13889870877889176628.Spec : Prop :=
  ∀ n, P13889870877889176628.a n = A168559 (n + 1)

end A168559

/-! ## A168559.P9429079414059008980

`∑[∑[a(n-1)+2]]` with `a(0)=0, a(1)=4, a(2)=5`
-/

namespace A168559.P9429079414059008980
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 4, 5] fun n f2 =>
  f2 (n - 1) + 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A168559.P9429079414059008980

namespace A168559

/-- `∑[∑[a(n-1)+2]]` -/
def P9429079414059008980.Spec : Prop :=
  ∀ n, (P9429079414059008980.a n : ℤ) = A168559 (n + 1)

end A168559

/-! ## A168559.P10062383533024803135

`∑[(1-(C(2, n+2)-n))²]`
-/

namespace A168559.P10062383533024803135
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - ((Nat.choose 2 (n + 2) : ℤ) - (n : ℤ))) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A168559.P10062383533024803135

namespace A168559

/-- `∑[(1-(C(2, n+2)-n))²]` -/
def P10062383533024803135.Spec : Prop :=
  ∀ n, P10062383533024803135.a n = A168559 (n + 1)

end A168559

/-! ## A168559.P10435599567004889603

`∑[(C(n, C(2, n+1))+n)²]`
-/

namespace A168559.P10435599567004889603
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (Nat.choose n (Nat.choose 2 (n + 1)) + n) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A168559.P10435599567004889603

namespace A168559

/-- `∑[(C(n, C(2, n+1))+n)²]` -/
def P10435599567004889603.Spec : Prop :=
  ∀ n, (P10435599567004889603.a n : ℤ) = A168559 (n + 1)

end A168559

/-!
# A168561: Triangle of coefficients of the Fibonacci polynomials, starting with F(0, x) = 1, F(1, x) = x.

The programs for A168561, the canonical program `A168561.P3183119596903847201` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A168561 has offset 0).

The definition of A168561 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A168561.P3183119596903847201

`T(n-1,k-1)+T(n-2,k)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A168561

/-- `T(n-1,k-1)+T(n-2,k)` -/
def P3183119596903847201.Spec : Prop :=
  ∀ n, (P3183119596903847201.a n : ℤ) = A168561 n

theorem P3183119596903847201.correct : P3183119596903847201.Spec := by
  intro n
  simp only [A168561]

end A168561

/-! ## A168561.P10254736052481460580

`T(n-1,k-1)-(2*T(n-1,k)-1)*T(n-2,k)` with `a(0)=1`
-/

namespace A168561.P10254736052481460580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  SequenceMachineLib.triUpLeft a n - (2 * SequenceMachineLib.triUp a n - 1) * SequenceMachineLib.triUp2 a n

end

end A168561.P10254736052481460580

namespace A168561

/-- `T(n-1,k-1)-(2*T(n-1,k)-1)*T(n-2,k)` -/
def P10254736052481460580.Spec : Prop :=
  ∀ n, P10254736052481460580.a n = A168561 n

end A168561

/-! ## A168561.P5110966505006991161

`T(n-1,k-1)-(2*T(n,k-1)-1)*T(n-2,k)` with `a(0)=1`
-/

namespace A168561.P5110966505006991161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  SequenceMachineLib.triUpLeft a n - (2 * SequenceMachineLib.triLeft a n - 1) * SequenceMachineLib.triUp2 a n

end

end A168561.P5110966505006991161

namespace A168561

/-- `T(n-1,k-1)-(2*T(n,k-1)-1)*T(n-2,k)` -/
def P5110966505006991161.Spec : Prop :=
  ∀ n, P5110966505006991161.a n = A168561 n

end A168561

/-! ## A168561.P10780600582765129325

`T(n-1,k-1)-(2*T(n-2,k-1)-1)*T(n-2,k)` with `a(0)=1`
-/

namespace A168561.P10780600582765129325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  SequenceMachineLib.triUpLeft a n - (2 * SequenceMachineLib.triUp2Left a n - 1) * SequenceMachineLib.triUp2 a n

end

end A168561.P10780600582765129325

namespace A168561

/-- `T(n-1,k-1)-(2*T(n-2,k-1)-1)*T(n-2,k)` -/
def P10780600582765129325.Spec : Prop :=
  ∀ n, P10780600582765129325.a n = A168561 n

end A168561

/-! ## A168561.P7340824106439069272

`abs(A049310(n))`
-/

namespace A168561.P7340824106439069272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A049310 n|

end

end A168561.P7340824106439069272

namespace A168561

/-- `abs(A049310(n))` -/
def P7340824106439069272.Spec : Prop :=
  ∀ n, P7340824106439069272.a n = A168561 n

end A168561

/-! ## A168561.P3247322925574764723

`A135222(n)-A023532(n)`
-/

namespace A168561.P3247322925574764723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135222 n - A023532 n

end

end A168561.P3247322925574764723

namespace A168561

/-- `A135222(n)-A023532(n)` -/
def P3247322925574764723.Spec : Prop :=
  ∀ n, P3247322925574764723.a n = A168561 n

theorem P3247322925574764723.correct : P3247322925574764723.Spec := by
  intro n
  simp only [A168561, Nat.add_sub_cancel, A168561.P3247322925574764723.a, A168561.P3183119596903847201.a, A023532, A023532.P12646681522116481213.a, A135222, A135222.P1424862729621191095.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A168561

/-! ## A168561.P15908465324365625827

`A028326(n)-A131350(n)`
-/

namespace A168561.P15908465324365625827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028326 n - A131350 n

end

end A168561.P15908465324365625827

namespace A168561

/-- `A028326(n)-A131350(n)` -/
def P15908465324365625827.Spec : Prop :=
  ∀ n, P15908465324365625827.a n = A168561 n

theorem P15908465324365625827.correct : P15908465324365625827.Spec := by
  intro n
  simp only [A168561, Nat.add_sub_cancel, A168561.P15908465324365625827.a, A168561.P3183119596903847201.a, A028326, A028326.P7676793339942299677.a, A131350, A131350.P11902932173127582114.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A168561

/-! ## A168561.P11379841945005895326

`A049310(n)*A117568(n)`
-/

namespace A168561.P11379841945005895326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049310 n * A117568 n

end

end A168561.P11379841945005895326

namespace A168561

/-- `A049310(n)*A117568(n)` -/
def P11379841945005895326.Spec : Prop :=
  ∀ n, P11379841945005895326.a n = A168561 n

end A168561

/-! ## A168561.P11831788357242804533

`A049310(n)*A369736(n)`
-/

namespace A168561.P11831788357242804533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049310 n * A369736 n

end

end A168561.P11831788357242804533

namespace A168561

/-- `A049310(n)*A369736(n)` -/
def P11831788357242804533.Spec : Prop :=
  ∀ n, P11831788357242804533.a n = A168561 n

end A168561

/-! ## A168561.P16108438638962500160

`A130777(n)*A369736(n)`
-/

namespace A168561.P16108438638962500160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130777 n * A369736 n

end

end A168561.P16108438638962500160

namespace A168561

/-- `A130777(n)*A369736(n)` -/
def P16108438638962500160.Spec : Prop :=
  ∀ n, P16108438638962500160.a n = A168561 n

end A168561

/-! ## A168561.P1864526018381490183

`A109187(n)/A061554(n)`
-/

namespace A168561.P1864526018381490183
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A109187 n : ℚ) / (A061554 n : ℚ)

end

end A168561.P1864526018381490183

namespace A168561

/-- `A109187(n)/A061554(n)` -/
def P1864526018381490183.Spec : Prop :=
  ∀ n, P1864526018381490183.a n = (A168561 n : ℚ)

end A168561

/-! ## A168561.P11166593848131158837

`gcd(A000038(n), A049310(n))`
-/

namespace A168561.P11166593848131158837
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A049310 n)

end

end A168561.P11166593848131158837

namespace A168561

/-- `gcd(A000038(n), A049310(n))` -/
def P11166593848131158837.Spec : Prop :=
  ∀ n, (P11166593848131158837.a n : ℤ) = A168561 n

end A168561

/-! ## A168561.P7859497379682098689

`lcm(A020985(n), A049310(n))`
-/

namespace A168561.P7859497379682098689
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020985 n) (A049310 n)

end

end A168561.P7859497379682098689

namespace A168561

/-- `lcm(A020985(n), A049310(n))` -/
def P7859497379682098689.Spec : Prop :=
  ∀ n, (P7859497379682098689.a n : ℤ) = A168561 n

end A168561

/-! ## A168561.P4498655583767642257

`lcm(A046854(n), A369736(n))`
-/

namespace A168561.P4498655583767642257
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A046854 n) (A369736 n)

end

end A168561.P4498655583767642257

namespace A168561

/-- `lcm(A046854(n), A369736(n))` -/
def P4498655583767642257.Spec : Prop :=
  ∀ n, (P4498655583767642257.a n : ℤ) = A168561 n

end A168561

/-! ## A168561.P906342881231109173

`A369736(n)²*A134513(n)`
-/

namespace A168561.P906342881231109173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369736 n ^ 2 * A134513 n

end

end A168561.P906342881231109173

namespace A168561

/-- `A369736(n)²*A134513(n)` -/
def P906342881231109173.Spec : Prop :=
  ∀ n, P906342881231109173.a n = A168561 n

end A168561

/-! ## A168561.P15014533481793978738

`A049310(n)²/A046854(n)`
-/

namespace A168561.P15014533481793978738
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A049310 n ^ 2 : ℚ) / (A046854 n : ℚ)

end

end A168561.P15014533481793978738

namespace A168561

/-- `A049310(n)²/A046854(n)` -/
def P15014533481793978738.Spec : Prop :=
  ∀ n, P15014533481793978738.a n = (A168561 n : ℚ)

end A168561

/-! ## A168561.P8971582881830025947

`A049310(n)²/A134513(n)`
-/

namespace A168561.P8971582881830025947
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A049310 n ^ 2 : ℚ) / (A134513 n : ℚ)

end

end A168561.P8971582881830025947

namespace A168561

/-- `A049310(n)²/A134513(n)` -/
def P8971582881830025947.Spec : Prop :=
  ∀ n, P8971582881830025947.a n = (A168561 n : ℚ)

end A168561

/-! ## A168561.P3516346217125392484

`A046854(n)*A128174(n+1)`
-/

namespace A168561.P3516346217125392484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046854 n * A128174 (n + 1)

end

end A168561.P3516346217125392484

namespace A168561

/-- `A046854(n)*A128174(n+1)` -/
def P3516346217125392484.Spec : Prop :=
  ∀ n, P3516346217125392484.a n = A168561 n

end A168561

/-! ## A168561.P6244388092641231096

`A049310(n)*A130194(n+1)`
-/

namespace A168561.P6244388092641231096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049310 n * A130194 (n + 1)

end

end A168561.P6244388092641231096

namespace A168561

/-- `A049310(n)*A130194(n+1)` -/
def P6244388092641231096.Spec : Prop :=
  ∀ n, P6244388092641231096.a n = A168561 n

end A168561

/-! ## A168561.P8228269009533363131

`A128174(n+1)*A134513(n)`
-/

namespace A168561.P8228269009533363131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128174 (n + 1) * A134513 n

end

end A168561.P8228269009533363131

namespace A168561

/-- `A128174(n+1)*A134513(n)` -/
def P8228269009533363131.Spec : Prop :=
  ∀ n, P8228269009533363131.a n = A168561 n

end A168561

/-!
# A168562: Sum of squares of Eulerian numbers in row n of triangle A008292 with a(0)=1.

The programs for A168562, there is no canonical definition to state claims against.
-/

/-! ## A168562.P11913011930659085308

`A165889(n²-n)`
-/

namespace A168562.P11913011930659085308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165889 (n ^ 2 - n)

end

end A168562.P11913011930659085308

/-! ## A168562.P16579099120347135593

`A335545(∑[n+3])`
-/

namespace A168562.P16579099120347135593
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335545 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A168562.P16579099120347135593

/-! ## A168562.P6023360236621994163

`A335545(A141214(n))+A066035(n)`
-/

namespace A168562.P6023360236621994163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335545 (A141214 n).toNat + A066035 n

end

end A168562.P6023360236621994163

/-! ## A168562.P6486236593727373265

`A007318(∑[n])*A335545(A141214(n))`
-/

namespace A168562.P6486236593727373265
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j) * A335545 (A141214 n).toNat

end

end A168562.P6486236593727373265

/-! ## A168562.P18438201358938904617

`A335545(A141214(n))/A020639(gcd(n, n+1))`
-/

namespace A168562.P18438201358938904617
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A335545 (A141214 n).toNat : ℚ) / (A020639 (Nat.gcd n (n + 1)) : ℚ)

end

end A168562.P18438201358938904617

/-!
# A168563: a(n) = (n-th prime > 3) minus (n-th composite number).

The programs for A168563, the canonical program `A168563.P15869300188145346420` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A168563 has offset 1).

The definition of A168563 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A168563.P15869300188145346420

`A161671(n+3)`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A168563

/-- `A161671(n+3)` -/
def P15869300188145346420.Spec : Prop :=
  ∀ n, P15869300188145346420.a n = A168563 (n + 1)

theorem P15869300188145346420.correct : P15869300188145346420.Spec := by
  intro n
  simp only [A168563, Nat.add_sub_cancel]

end A168563

/-! ## A168563.P2821295169905579470

`A000040(n+3)-A002808(n+1)`
-/

namespace A168563.P2821295169905579470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 3) - A002808 (n + 1)

end

end A168563.P2821295169905579470

namespace A168563

/-- `A000040(n+3)-A002808(n+1)` -/
def P2821295169905579470.Spec : Prop :=
  ∀ n, P2821295169905579470.a n = A168563 (n + 1)

end A168563

/-! ## A168563.P8877256324755880596

`A215848(n+1)-Δ[A053767(n)]`
-/

namespace A168563.P8877256324755880596
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053767 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215848 (n + 1) - (f1 (n + 1) - f1 n)

end

end A168563.P8877256324755880596

namespace A168563

/-- `A215848(n+1)-Δ[A053767(n)]` -/
def P8877256324755880596.Spec : Prop :=
  ∀ n, P8877256324755880596.a n = A168563 (n + 1)

end A168563

/-! ## A168563.P13111141397253180345

`A038529(n+1)+A031131(n+1)`
-/

namespace A168563.P13111141397253180345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038529 (n + 1) + A031131 (n + 1)

end

end A168563.P13111141397253180345

namespace A168563

/-- `A038529(n+1)+A031131(n+1)` -/
def P13111141397253180345.Spec : Prop :=
  ∀ n, P13111141397253180345.a n = A168563 (n + 1)

end A168563

/-! ## A168563.P11277616776151789072

`A215848(n+1)-A002808(n+1)`
-/

namespace A168563.P11277616776151789072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215848 (n + 1) - A002808 (n + 1)

end

end A168563.P11277616776151789072

namespace A168563

/-- `A215848(n+1)-A002808(n+1)` -/
def P11277616776151789072.Spec : Prop :=
  ∀ n, P11277616776151789072.a n = A168563 (n + 1)

end A168563

/-! ## A168563.P14438695582883091749

`A156037(n+3)-A072668(n+1)`
-/

namespace A168563.P14438695582883091749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156037 (n + 3) - A072668 (n + 1)

end

end A168563.P14438695582883091749

namespace A168563

/-- `A156037(n+3)-A072668(n+1)` -/
def P14438695582883091749.Spec : Prop :=
  ∀ n, P14438695582883091749.a n = A168563 (n + 1)

end A168563

/-! ## A168563.P7389045850135174032

`A215848(n+1)-lt[1, A074206(n)]`
-/

namespace A168563.P7389045850135174032
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074206 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215848 (n + 1) - (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n : ℤ)

end

end A168563.P7389045850135174032

namespace A168563

/-- `A215848(n+1)-lt[1, A074206(n)]` -/
def P7389045850135174032.Spec : Prop :=
  ∀ n, P7389045850135174032.a n = A168563 (n + 1)

end A168563

/-! ## A168563.P11256807817920657789

`Δ[A007504(n+2)]-A002808(n+1)`
-/

namespace A168563.P11256807817920657789
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A002808 (n + 1)

end

end A168563.P11256807817920657789

namespace A168563

/-- `Δ[A007504(n+2)]-A002808(n+1)` -/
def P11256807817920657789.Spec : Prop :=
  ∀ n, P11256807817920657789.a n = A168563 (n + 1)

end A168563

/-! ## A168563.P1737115863177712427

`A172367(n+1)-comp[A172367(n+1)]`
-/

namespace A168563.P1737115863177712427
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172367 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172367 (n + 1) - (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ)

end

end A168563.P1737115863177712427

namespace A168563

/-- `A172367(n+1)-comp[A172367(n+1)]` -/
def P1737115863177712427.Spec : Prop :=
  ∀ n, P1737115863177712427.a n = A168563 (n + 1)

end A168563

/-! ## A168563.P6940500855570973785

`A046301(n+1)/A006094(n+1)-A002808(n+1)`
-/

namespace A168563.P6940500855570973785
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A046301 (n + 1) : ℚ) / (A006094 (n + 1) : ℚ) - (A002808 (n + 1) : ℚ)

end

end A168563.P6940500855570973785

namespace A168563

/-- `A046301(n+1)/A006094(n+1)-A002808(n+1)` -/
def P6940500855570973785.Spec : Prop :=
  ∀ n, P6940500855570973785.a n = (A168563 (n + 1) : ℚ)

end A168563

/-! ## A168563.P8185719551514764756

`A045344(n+2)-A002808(n+1)`
-/

namespace A168563.P8185719551514764756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 2) - A002808 (n + 1)

end

end A168563.P8185719551514764756

namespace A168563

/-- `A045344(n+2)-A002808(n+1)` -/
def P8185719551514764756.Spec : Prop :=
  ∀ n, P8185719551514764756.a n = A168563 (n + 1)

end A168563

/-! ## A168563.P9506447847183241110

`A065091(n+2)-A002808(n+1)`
-/

namespace A168563.P9506447847183241110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 2) - A002808 (n + 1)

end

end A168563.P9506447847183241110

namespace A168563

/-- `A065091(n+2)-A002808(n+1)` -/
def P9506447847183241110.Spec : Prop :=
  ∀ n, P9506447847183241110.a n = A168563 (n + 1)

end A168563

/-! ## A168563.P16141036499794587924

`A140475(n+2)-A002808(n+1)`
-/

namespace A168563.P16141036499794587924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140475 (n + 2) - A002808 (n + 1)

end

end A168563.P16141036499794587924

namespace A168563

/-- `A140475(n+2)-A002808(n+1)` -/
def P16141036499794587924.Spec : Prop :=
  ∀ n, P16141036499794587924.a n = A168563 (n + 1)

end A168563

/-! ## A168563.P17129809924071544321

`A045344(n+2)-A018252(n+2)`
-/

namespace A168563.P17129809924071544321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 2) - A018252 (n + 2)

end

end A168563.P17129809924071544321

namespace A168563

/-- `A045344(n+2)-A018252(n+2)` -/
def P17129809924071544321.Spec : Prop :=
  ∀ n, P17129809924071544321.a n = A168563 (n + 1)

end A168563

/-! ## A168563.P12096438142386070469

`A065091(n+2)-A018252(n+2)`
-/

namespace A168563.P12096438142386070469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 2) - A018252 (n + 2)

end

end A168563.P12096438142386070469

namespace A168563

/-- `A065091(n+2)-A018252(n+2)` -/
def P12096438142386070469.Spec : Prop :=
  ∀ n, P12096438142386070469.a n = A168563 (n + 1)

end A168563

/-! ## A168563.P5465949847225550655

`A045344(n+2)-A141468(n+3)`
-/

namespace A168563.P5465949847225550655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 2) - A141468 (n + 3)

end

end A168563.P5465949847225550655

namespace A168563

/-- `A045344(n+2)-A141468(n+3)` -/
def P5465949847225550655.Spec : Prop :=
  ∀ n, P5465949847225550655.a n = A168563 (n + 1)

end A168563

/-! ## A168563.P2741020083613017339

`A140475(n+2)-A141468(n+3)`
-/

namespace A168563.P2741020083613017339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140475 (n + 2) - A141468 (n + 3)

end

end A168563.P2741020083613017339

namespace A168563

/-- `A140475(n+2)-A141468(n+3)` -/
def P2741020083613017339.Spec : Prop :=
  ∀ n, P2741020083613017339.a n = A168563 (n + 1)

end A168563

/-! ## A168563.P6927691804187162145

`A045344(n+2)-(A060462(n+2)+1)`
-/

namespace A168563.P6927691804187162145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 2) - (A060462 (n + 2) + 1)

end

end A168563.P6927691804187162145

namespace A168563

/-- `A045344(n+2)-(A060462(n+2)+1)` -/
def P6927691804187162145.Spec : Prop :=
  ∀ n, P6927691804187162145.a n = A168563 (n + 1)

end A168563

/-! ## A168563.P75937322129823859

`A005097(n+2)+A006254(n+2)-A002808(n+1)`
-/

namespace A168563.P75937322129823859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005097 (n + 2) + (A006254 (n + 2) - A002808 (n + 1))

end

end A168563.P75937322129823859

namespace A168563

/-- `A005097(n+2)+A006254(n+2)-A002808(n+1)` -/
def P75937322129823859.Spec : Prop :=
  ∀ n, P75937322129823859.a n = A168563 (n + 1)

end A168563

/-! ## A168563.P12487348407855062288

`A071904(n+2)+A129146(n+2)-A002808(n+1)`
-/

namespace A168563.P12487348407855062288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071904 (n + 2) + (A129146 (n + 2) - A002808 (n + 1))

end

end A168563.P12487348407855062288

namespace A168563

/-- `A071904(n+2)+A129146(n+2)-A002808(n+1)` -/
def P12487348407855062288.Spec : Prop :=
  ∀ n, P12487348407855062288.a n = A168563 (n + 1)

end A168563

/-!
# A168564: a(n) = n^6*(n^4 + 1)/2.

The programs for A168564, the canonical program `A168564.P11056738406142394499` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A168564 has offset 0).

The definition of A168564 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n^6*(n^4+1)/2` (program `A168564.P8629166897274801892`, by `A168564.P8629166897274801892.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A168564.P8629166897274801892

`n^6*(n^4+1)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A168564.P8629166897274801892
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n ^ 6 * (n ^ 4 + 1) : ℚ) / 2

end

end A168564.P8629166897274801892

namespace A168564

/-- `n^6*(n^4+1)/2` -/
def P8629166897274801892.Spec : Prop :=
  ∀ n, P8629166897274801892.a n = (A168564 n : ℚ)

theorem P8629166897274801892.correct : P8629166897274801892.Spec := by
  intro n
  simp only [A168564, Nat.add_sub_cancel, A168564.P8629166897274801892.a, A168564.P11056738406142394499.a, A168372, A168372.P10457771885874801747.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A168564

/-! ## A168564.P11056738406142394499

`n*A168372(n)`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A168564

/-- `n*A168372(n)` -/
def P11056738406142394499.Spec : Prop :=
  ∀ n, P11056738406142394499.a n = A168564 n

theorem P11056738406142394499.correct : P11056738406142394499.Spec := by
  intro n
  simp only [A168564]

end A168564

/-! ## A168564.P11388292845889230439

`n²*A071231(n)`
-/

namespace A168564.P11388292845889230439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) * A071231 n

end

end A168564.P11388292845889230439

namespace A168564

/-- `n²*A071231(n)` -/
def P11388292845889230439.Spec : Prop :=
  ∀ n, P11388292845889230439.a n = A168564 n

theorem P11388292845889230439.correct : P11388292845889230439.Spec := by
  intro n
  simp only [A168564, Nat.add_sub_cancel, A168564.P11388292845889230439.a, A168564.P11056738406142394499.a, A071231, A071231.P12099353623809023742.a, A168372, A168372.P10457771885874801747.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A168564

/-! ## A168564.P2771182783805025071

`n^3*A168179(n)`
-/

namespace A168564.P2771182783805025071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 3 : ℤ) * A168179 n

end

end A168564.P2771182783805025071

namespace A168564

/-- `n^3*A168179(n)` -/
def P2771182783805025071.Spec : Prop :=
  ∀ n, P2771182783805025071.a n = A168564 n

theorem P2771182783805025071.correct : P2771182783805025071.Spec := by
  intro n
  simp only [A168564, Nat.add_sub_cancel, A168564.P2771182783805025071.a, A168564.P11056738406142394499.a, A168179, A168179.P8566416021942520231.a, A168372, A168372.P10457771885874801747.a, A021003, A021003.P1631402243745340027.a, A071252, A071252.P13937739183146272210.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A168564

/-! ## A168564.P983119468322951380

`n²²*A168122(n)`
-/

namespace A168564.P983119468322951380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n ^ 2) ^ 2 : ℤ) * A168122 n

end

end A168564.P983119468322951380

namespace A168564

/-- `n²²*A168122(n)` -/
def P983119468322951380.Spec : Prop :=
  ∀ n, P983119468322951380.a n = A168564 n

theorem P983119468322951380.correct : P983119468322951380.Spec := by
  intro n
  simp only [A168564, Nat.add_sub_cancel, A168564.P983119468322951380.a, A168564.P11056738406142394499.a, A168122, A168122.P7248320265553921643.a, A168372, A168372.P10457771885874801747.a, A021003, A021003.P1631402243745340027.a, A071252, A071252.P13937739183146272210.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A168564

/-! ## A168564.P4576950720389107045

`A168188(n)+A085744(n)`
-/

namespace A168564.P4576950720389107045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168188 n + A085744 n

end

end A168564.P4576950720389107045

namespace A168564

/-- `A168188(n)+A085744(n)` -/
def P4576950720389107045.Spec : Prop :=
  ∀ n, P4576950720389107045.a n = A168564 n

end A168564

/-! ## A168564.P9454847194465453221

`A000584(n)*A021003(n)`
-/

namespace A168564.P9454847194465453221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000584 n * A021003 n

end

end A168564.P9454847194465453221

namespace A168564

/-- `A000584(n)*A021003(n)` -/
def P9454847194465453221.Spec : Prop :=
  ∀ n, P9454847194465453221.a n = A168564 n

theorem P9454847194465453221.correct : P9454847194465453221.Spec := by
  intro n
  simp only [A168564, Nat.add_sub_cancel, A168564.P9454847194465453221.a, A168564.P11056738406142394499.a, A000584, A000584.P5477385692209315495.a, A021003, A021003.P1631402243745340027.a, A168372, A168372.P10457771885874801747.a, A071252, A071252.P13937739183146272210.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A168564

/-! ## A168564.P12354200219576143682

`A071231(n)*A253909(n)`
-/

namespace A168564.P12354200219576143682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071231 n * A253909 n

end

end A168564.P12354200219576143682

namespace A168564

/-- `A071231(n)*A253909(n)` -/
def P12354200219576143682.Spec : Prop :=
  ∀ n, P12354200219576143682.a n = A168564 n

end A168564

/-! ## A168564.P16167092379281710579

`A135509(n)²-A135503(n)²²`
-/

namespace A168564.P16167092379281710579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135509 n ^ 2 - (A135503 n ^ 2) ^ 2

end

end A168564.P16167092379281710579

namespace A168564

/-- `A135509(n)²-A135503(n)²²` -/
def P16167092379281710579.Spec : Prop :=
  ∀ n, P16167092379281710579.a n = A168564 n

end A168564

/-! ## A168564.P16777754290874588767

`A008454(n)+A168351(n)-A071236(n)`
-/

namespace A168564.P16777754290874588767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008454 n + (A168351 n - A071236 n)

end

end A168564.P16777754290874588767

namespace A168564

/-- `A008454(n)+A168351(n)-A071236(n)` -/
def P16777754290874588767.Spec : Prop :=
  ∀ n, P16777754290874588767.a n = A168564 n

theorem P16777754290874588767.correct : P16777754290874588767.Spec := by
  intro n
  simp only [A168564, Nat.add_sub_cancel, A168564.P16777754290874588767.a, A168564.P11056738406142394499.a, A008454, A008454.P6486498320967950731.a, A071236, A071236.P15431836850010159814.a, A168351, A168351.P7899270696741764413.a, A168372, A168372.P10457771885874801747.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A168564

/-! ## A168564.P12424567828348727815

`A167963(n)+A168660(n)-A168029(n)`
-/

namespace A168564.P12424567828348727815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167963 n + (A168660 n - A168029 n)

end

end A168564.P12424567828348727815

namespace A168564

/-- `A167963(n)+A168660(n)-A168029(n)` -/
def P12424567828348727815.Spec : Prop :=
  ∀ n, P12424567828348727815.a n = A168564 n

end A168564

/-! ## A168564.P3273807689323227727

`A168118(n)+A168526(n)-A168029(n)`
-/

namespace A168564.P3273807689323227727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168118 n + (A168526 n - A168029 n)

end

end A168564.P3273807689323227727

namespace A168564

/-- `A168118(n)+A168526(n)-A168029(n)` -/
def P3273807689323227727.Spec : Prop :=
  ∀ n, P3273807689323227727.a n = A168564 n

end A168564

/-! ## A168564.P18363356523641884860

`A167963(n)+A170793(n)-A168119(n)`
-/

namespace A168564.P18363356523641884860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167963 n + (A170793 n - A168119 n)

end

end A168564.P18363356523641884860

namespace A168564

/-- `A167963(n)+A170793(n)-A168119(n)` -/
def P18363356523641884860.Spec : Prop :=
  ∀ n, P18363356523641884860.a n = A168564 n

end A168564

/-! ## A168564.P14561181447712753175

`A168178(n²)`
-/

namespace A168564.P14561181447712753175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168178 (n ^ 2)

end

end A168564.P14561181447712753175

namespace A168564

/-- `A168178(n²)` -/
def P14561181447712753175.Spec : Prop :=
  ∀ n, P14561181447712753175.a n = A168564 n

theorem P14561181447712753175.correct : P14561181447712753175.Spec := by
  intro n
  simp only [A168564, Nat.add_sub_cancel, A168564.P14561181447712753175.a, A168564.P11056738406142394499.a, A168178, A168178.P7150128011749350720.a, A168372, A168372.P10457771885874801747.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A168564

/-! ## A168564.P6955784644596716388

`n²*A037270(n²)`
-/

namespace A168564.P6955784644596716388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) * A037270 (n ^ 2)

end

end A168564.P6955784644596716388

namespace A168564

/-- `n²*A037270(n²)` -/
def P6955784644596716388.Spec : Prop :=
  ∀ n, P6955784644596716388.a n = A168564 n

end A168564

/-!
# A168565: Let p = prime(n); then a(n) = p + (p-1)/2.

The programs for A168565, the canonical program `A168565.P13447160439645326531` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A168565 has offset 2).

The definition of A168565 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A168565.P13447160439645326531

`(3*A000040(n+2)-1)/2`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A168565

/-- `(3*A000040(n+2)-1)/2` -/
def P13447160439645326531.Spec : Prop :=
  ∀ n, P13447160439645326531.a n = (A168565 (n + 2) : ℚ)

end A168565

/-! ## A168565.P15687639850893792445

`floor(3/2*p?[2*n+1])`
-/

namespace A168565.P15687639850893792445
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(3 : ℚ) / 2 * (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℚ)⌋

end

end A168565.P15687639850893792445

namespace A168565

/-- `floor(3/2*p?[2*n+1])` -/
def P15687639850893792445.Spec : Prop :=
  ∀ n, P15687639850893792445.a n = A168565 (n + 2)

end A168565

/-! ## A168565.P147535629619852087

`(3*p?[2*n+1]-1)/2`
-/

namespace A168565.P147535629619852087
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((3 * f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℤ) - 1 : ℚ) / 2

end

end A168565.P147535629619852087

namespace A168565

/-- `(3*p?[2*n+1]-1)/2` -/
def P147535629619852087.Spec : Prop :=
  ∀ n, P147535629619852087.a n = (A168565 (n + 2) : ℚ)

end A168565

/-! ## A168565.P1306267120846495815

`A179893(n+2)+1`
-/

namespace A168565.P1306267120846495815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179893 (n + 2) + 1

end

end A168565.P1306267120846495815

namespace A168565

/-- `A179893(n+2)+1` -/
def P1306267120846495815.Spec : Prop :=
  ∀ n, P1306267120846495815.a n = A168565 (n + 2)

end A168565

/-! ## A168565.P3309866738528742211

`A245685(n+1)-2`
-/

namespace A168565.P3309866738528742211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245685 (n + 1) - 2

end

end A168565.P3309866738528742211

namespace A168565

/-- `A245685(n+1)-2` -/
def P3309866738528742211.Spec : Prop :=
  ∀ n, P3309866738528742211.a n = A168565 (n + 2)

end A168565

/-! ## A168565.P16752345852414196830

`floor(A001748(n+2)/2)`
-/

namespace A168565.P16752345852414196830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A001748 (n + 2) : ℚ) / 2⌋

end

end A168565.P16752345852414196830

namespace A168565

/-- `floor(A001748(n+2)/2)` -/
def P16752345852414196830.Spec : Prop :=
  ∀ n, P16752345852414196830.a n = A168565 (n + 2)

end A168565

/-! ## A168565.P13835089996076100545

`3*A005097(n+1)+1`
-/

namespace A168565.P13835089996076100545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A005097 (n + 1) + 1

end

end A168565.P13835089996076100545

namespace A168565

/-- `3*A005097(n+1)+1` -/
def P13835089996076100545.Spec : Prop :=
  ∀ n, P13835089996076100545.a n = A168565 (n + 2)

end A168565

/-! ## A168565.P2804441469836801583

`3*A006254(n+1)-2`
-/

namespace A168565.P2804441469836801583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A006254 (n + 1) - 2

end

end A168565.P2804441469836801583

namespace A168565

/-- `3*A006254(n+1)-2` -/
def P2804441469836801583.Spec : Prop :=
  ∀ n, P2804441469836801583.a n = A168565 (n + 2)

end A168565

/-! ## A168565.P17459170293860868158

`3*A067076(n+1)+4`
-/

namespace A168565.P17459170293860868158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A067076 (n + 1) + 4

end

end A168565.P17459170293860868158

namespace A168565

/-- `3*A067076(n+1)+4` -/
def P17459170293860868158.Spec : Prop :=
  ∀ n, P17459170293860868158.a n = A168565 (n + 2)

end A168565

/-! ## A168565.P8682558327205173983

`3*A098090(n+1)-5`
-/

namespace A168565.P8682558327205173983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A098090 (n + 1) - 5

end

end A168565.P8682558327205173983

namespace A168565

/-- `3*A098090(n+1)-5` -/
def P8682558327205173983.Spec : Prop :=
  ∀ n, P8682558327205173983.a n = A168565 (n + 2)

end A168565

/-! ## A168565.P11058519041437921229

`A014690(n+1)+A008507(n+1)`
-/

namespace A168565.P11058519041437921229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014690 (n + 1) + A008507 (n + 1)

end

end A168565.P11058519041437921229

namespace A168565

/-- `A014690(n+1)+A008507(n+1)` -/
def P11058519041437921229.Spec : Prop :=
  ∀ n, P11058519041437921229.a n = A168565 (n + 2)

end A168565

/-! ## A168565.P4167803880103228627

`A065091(n+1)+A005097(n+1)`
-/

namespace A168565.P4167803880103228627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1) + A005097 (n + 1)

end

end A168565.P4167803880103228627

namespace A168565

/-- `A065091(n+1)+A005097(n+1)` -/
def P4167803880103228627.Spec : Prop :=
  ∀ n, P4167803880103228627.a n = A168565 (n + 2)

end A168565

/-! ## A168565.P13660329808717103416

`A118538(n+1)+A097338(n+1)`
-/

namespace A168565.P13660329808717103416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118538 (n + 1) + A097338 (n + 1)

end

end A168565.P13660329808717103416

namespace A168565

/-- `A118538(n+1)+A097338(n+1)` -/
def P13660329808717103416.Spec : Prop :=
  ∀ n, P13660329808717103416.a n = A168565 (n + 2)

end A168565

/-! ## A168565.P8189942578192923737

`A154115(n+1)+A089253(n+1)`
-/

namespace A168565.P8189942578192923737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154115 (n + 1) + A089253 (n + 1)

end

end A168565.P8189942578192923737

namespace A168565

/-- `A154115(n+1)+A089253(n+1)` -/
def P8189942578192923737.Spec : Prop :=
  ∀ n, P8189942578192923737.a n = A168565 (n + 2)

end A168565

/-! ## A168565.P8196272033727038564

`A283623(n+1)+A046933(n+1)`
-/

namespace A168565.P8196272033727038564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283623 (n + 1) + A046933 (n + 1)

end

end A168565.P8196272033727038564

namespace A168565

/-- `A283623(n+1)+A046933(n+1)` -/
def P8196272033727038564.Spec : Prop :=
  ∀ n, P8196272033727038564.a n = A168565 (n + 2)

end A168565

/-! ## A168565.P9284997798128082526

`A364411(n+1)-A283623(n+1)`
-/

namespace A168565.P9284997798128082526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364411 (n + 1) - A283623 (n + 1)

end

end A168565.P9284997798128082526

namespace A168565

/-- `A364411(n+1)-A283623(n+1)` -/
def P9284997798128082526.Spec : Prop :=
  ∀ n, P9284997798128082526.a n = A168565 (n + 2)

end A168565

/-! ## A168565.P14516189401011968306

`A065091(n+1)+A175540(n+1)-n`
-/

namespace A168565.P14516189401011968306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1) + (A175540 (n + 1) - (n : ℤ))

end

end A168565.P14516189401011968306

namespace A168565

/-- `A065091(n+1)+A175540(n+1)-n` -/
def P14516189401011968306.Spec : Prop :=
  ∀ n, P14516189401011968306.a n = A168565 (n + 2)

end A168565

/-! ## A168565.P3634791042468665425

`A005097(n+1)+A006254(n+1)+A005097(n+1)`
-/

namespace A168565.P3634791042468665425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005097 (n + 1) + (A006254 (n + 1) + A005097 (n + 1))

end

end A168565.P3634791042468665425

namespace A168565

/-- `A005097(n+1)+A006254(n+1)+A005097(n+1)` -/
def P3634791042468665425.Spec : Prop :=
  ∀ n, P3634791042468665425.a n = A168565 (n + 2)

end A168565

/-! ## A168565.P15992156831684023211

`A006254(n+1)+A067076(n+1)+A006254(n+1)`
-/

namespace A168565.P15992156831684023211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006254 (n + 1) + (A067076 (n + 1) + A006254 (n + 1))

end

end A168565.P15992156831684023211

namespace A168565

/-- `A006254(n+1)+A067076(n+1)+A006254(n+1)` -/
def P15992156831684023211.Spec : Prop :=
  ∀ n, P15992156831684023211.a n = A168565 (n + 2)

end A168565

/-! ## A168565.P1393174222280791202

`A067076(n+1)+A089253(n+1)+A067076(n+1)`
-/

namespace A168565.P1393174222280791202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067076 (n + 1) + (A089253 (n + 1) + A067076 (n + 1))

end

end A168565.P1393174222280791202

namespace A168565

/-- `A067076(n+1)+A089253(n+1)+A067076(n+1)` -/
def P1393174222280791202.Spec : Prop :=
  ∀ n, P1393174222280791202.a n = A168565 (n + 2)

end A168565

/-!
# A168566: a(n) = (n-1)*(n+2)*(n^2 + n + 2)/4.

The programs for A168566, the canonical program `A168566.P16269992860390584502` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A168566 has offset 1).

The definition of A168566 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(n+3)*((n+1)²+n+1+2)/4` (program `A168566.P3702217656183757707`, by `A168566.P3702217656183757707.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A168566.P14266159014998892284

`ogf((8x-5x^2+4x^3-x^4)/(1-5x+10x^2-10x^3+5x^4-x^5))`
-/

namespace A168566.P14266159014998892284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 8, -5, 4, -1] [1, -5, 10, -10, 5, -1] n

end

end A168566.P14266159014998892284

namespace A168566

/-- `ogf((8x-5x^2+4x^3-x^4)/(1-5x+10x^2-10x^3+5x^4-x^5))` -/
def P14266159014998892284.Spec : Prop :=
  ∀ n, P14266159014998892284.a n = A168566 (n + 1)

end A168566

/-! ## A168566.P3702217656183757707

`n*(n+3)*((n+1)²+n+1+2)/4`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A168566.P3702217656183757707
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n * (n + 3) * ((n + 1) ^ 2 + (n + 1) + 2) : ℚ) / 4

end

end A168566.P3702217656183757707

namespace A168566

/-- `n*(n+3)*((n+1)²+n+1+2)/4` -/
def P3702217656183757707.Spec : Prop :=
  ∀ n, P3702217656183757707.a n = (A168566 (n + 1) : ℚ)

theorem P3702217656183757707.correct : P3702217656183757707.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 | 4 =>
      simp [A168566, Nat.add_sub_cancel, A168566.P3702217656183757707.a, A168566.P16269992860390584502.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 5 =>
      have h1 := ih (m + 4) (by omega)
      have h2 := ih (m + 3) (by omega)
      have h3 := ih (m + 2) (by omega)
      have h4 := ih (m + 1) (by omega)
      have h5 := ih m (by omega)
      simp only [A168566, Nat.add_sub_cancel, A168566.P3702217656183757707.a, A168566.P16269992860390584502.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 h5 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 5 - 1 = m + 4 by omega, show m + 5 - 2 = m + 3 by omega, show m + 5 - 3 = m + 2 by omega, show m + 5 - 4 = m + 1 by omega, show m + 5 - 5 = m by omega, show m + 4 < m + 5 by omega, show m + 3 < m + 5 by omega, show m + 2 < m + 5 by omega, show m + 1 < m + 5 by omega, show m < m + 5 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 h5 ⊢
      rw [← h1, ← h2, ← h3, ← h4, ← h5]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A168566

/-! ## A168566.P16269992860390584502

`5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` with `a(0)=0, a(1)=8, a(2)=35, a(3)=99, a(4)=224`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A168566

/-- `5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` -/
def P16269992860390584502.Spec : Prop :=
  ∀ n, P16269992860390584502.a n = A168566 (n + 1)

theorem P16269992860390584502.correct : P16269992860390584502.Spec := by
  intro n
  simp only [A168566, Nat.add_sub_cancel]

end A168566

/-! ## A168566.P13504792820704811569

`A000217(n+1)²-1`
-/

namespace A168566.P13504792820704811569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (n + 1) ^ 2 - 1

end

end A168566.P13504792820704811569

namespace A168566

/-- `A000217(n+1)²-1` -/
def P13504792820704811569.Spec : Prop :=
  ∀ n, P13504792820704811569.a n = A168566 (n + 1)

end A168566

/-! ## A168566.P3332634657288302764

`A000537(n+1)-1`
-/

namespace A168566.P3332634657288302764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000537 (n + 1) - 1

end

end A168566.P3332634657288302764

namespace A168566

/-- `A000537(n+1)-1` -/
def P3332634657288302764.Spec : Prop :=
  ∀ n, P3332634657288302764.a n = A168566 (n + 1)

end A168566

/-! ## A168566.P5450814333321885283

`abs(1-C(n+2, 2)²)`
-/

namespace A168566.P5450814333321885283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (Nat.choose (n + 2) 2 ^ 2 : ℤ)|

end

end A168566.P5450814333321885283

namespace A168566

/-- `abs(1-C(n+2, 2)²)` -/
def P5450814333321885283.Spec : Prop :=
  ∀ n, P5450814333321885283.a n = A168566 (n + 1)

end A168566

/-! ## A168566.P642895320044696295

`xor(-1, -∑[n+1]²)`
-/

namespace A168566.P642895320044696295
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (-1) (-(((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℤ))

end

end A168566.P642895320044696295

namespace A168566

/-- `xor(-1, -∑[n+1]²)` -/
def P642895320044696295.Spec : Prop :=
  ∀ n, P642895320044696295.a n = A168566 (n + 1)

end A168566

/-! ## A168566.P8385618556831459893

`floor(cot((1/∑[n+1])²))`
-/

namespace A168566.P8385618556831459893
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.cot ((1 / ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ)) ^ 2 : ℝ)⌋

end

end A168566.P8385618556831459893

namespace A168566

/-- `floor(cot((1/∑[n+1])²))` -/
def P8385618556831459893.Spec : Prop :=
  ∀ n, P8385618556831459893.a n = A168566 (n + 1)

end A168566

/-! ## A168566.P10321457263846586623

`round(cot(1/∑[n+1])²)`
-/

namespace A168566.P10321457263846586623
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.cot (1 / ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) : ℝ) ^ 2)

end

end A168566.P10321457263846586623

namespace A168566

/-- `round(cot(1/∑[n+1])²)` -/
def P10321457263846586623.Spec : Prop :=
  ∀ n, P10321457263846586623.a n = A168566 (n + 1)

end A168566

/-! ## A168566.P764251462908975110

`cot(asin(1/∑[n+1]))²`
-/

namespace A168566.P764251462908975110
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.cot (Real.arcsin (1 / ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) : ℝ)) ^ 2

end

end A168566.P764251462908975110

namespace A168566

/-- `cot(asin(1/∑[n+1]))²` -/
def P764251462908975110.Spec : Prop :=
  ∀ n, P764251462908975110.a n = (A168566 (n + 1) : ℝ)

end A168566

/-! ## A168566.P6292882173062355637

`floor(∑[cot(1/(n+1)^3)])`
-/

namespace A168566.P6292882173062355637
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.cot (1 / ((n + 1) ^ 3 : ℚ) : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋

end

end A168566.P6292882173062355637

namespace A168566

/-- `floor(∑[cot(1/(n+1)^3)])` -/
def P6292882173062355637.Spec : Prop :=
  ∀ n, P6292882173062355637.a n = A168566 (n + 1)

end A168566

/-! ## A168566.P4976277704981824678

`∑[floor(atan(n+1)+n)^3]`
-/

namespace A168566.P4976277704981824678
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.arctan (n + 1 : ℝ) + (n : ℝ)⌋ ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A168566.P4976277704981824678

namespace A168566

/-- `∑[floor(atan(n+1)+n)^3]` -/
def P4976277704981824678.Spec : Prop :=
  ∀ n, P4976277704981824678.a n = A168566 (n + 1)

end A168566

/-! ## A168566.P17348370351014363320

`∑[(n+1)^3-floor(acot(n))]`
-/

namespace A168566.P17348370351014363320
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 3 : ℤ) - ⌊SequenceMachineLib.acot (n : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A168566.P17348370351014363320

namespace A168566

/-- `∑[(n+1)^3-floor(acot(n))]` -/
def P17348370351014363320.Spec : Prop :=
  ∀ n, P17348370351014363320.a n = A168566 (n + 1)

end A168566

/-! ## A168566.P9568415275807550460

`∑[ceil((n+1)^3-acot(n))]`
-/

namespace A168566.P9568415275807550460
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((n + 1) ^ 3 : ℝ) - SequenceMachineLib.acot (n : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A168566.P9568415275807550460

namespace A168566

/-- `∑[ceil((n+1)^3-acot(n))]` -/
def P9568415275807550460.Spec : Prop :=
  ∀ n, P9568415275807550460.a n = A168566 (n + 1)

end A168566

/-! ## A168566.P9720200068653768145

`a(n-1)+(n+1)^3` with `a(0)=0`
-/

namespace A168566.P9720200068653768145
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + (n + 1) ^ 3

end

end A168566.P9720200068653768145

namespace A168566

/-- `a(n-1)+(n+1)^3` -/
def P9720200068653768145.Spec : Prop :=
  ∀ n, (P9720200068653768145.a n : ℤ) = A168566 (n + 1)

end A168566

/-! ## A168566.P11960589556700359876

`(lcm(n+1, n+2)²-4)/4`
-/

namespace A168566.P11960589556700359876
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((Nat.lcm (n + 1) (n + 2) ^ 2 : ℤ) - 4 : ℚ) / 4

end

end A168566.P11960589556700359876

namespace A168566

/-- `(lcm(n+1, n+2)²-4)/4` -/
def P11960589556700359876.Spec : Prop :=
  ∀ n, P11960589556700359876.a n = (A168566 (n + 1) : ℚ)

end A168566

/-! ## A168566.P2483302305283073509

`∑[(n+1-C(2, n+2))^3]`
-/

namespace A168566.P2483302305283073509
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℤ) - (Nat.choose 2 (n + 2) : ℤ)) ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A168566.P2483302305283073509

namespace A168566

/-- `∑[(n+1-C(2, n+2))^3]` -/
def P2483302305283073509.Spec : Prop :=
  ∀ n, P2483302305283073509.a n = A168566 (n + 1)

end A168566

/-!
# A168567: Sum of divisors (sigma(n)) of the prime's previous and next numbers.

The programs for A168567, the canonical program `A168567.P3820506037250447474` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A168567 has offset 1).

The definition of A168567 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A168567.P3820506037250447474

`A008333(n+1)+A008332(n+1)`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A168567

/-- `A008333(n+1)+A008332(n+1)` -/
def P3820506037250447474.Spec : Prop :=
  ∀ n, P3820506037250447474.a n = A168567 (n + 1)

theorem P3820506037250447474.correct : P3820506037250447474.Spec := by
  intro n
  simp only [A168567, Nat.add_sub_cancel]

end A168567

/-! ## A168567.P18052284821507755138

`A008333(n+1)+A000203(A006093(n+1))`
-/

namespace A168567.P18052284821507755138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008333 (n + 1) + A000203 (A006093 (n + 1)).toNat

end

end A168567.P18052284821507755138

namespace A168567

/-- `A008333(n+1)+A000203(A006093(n+1))` -/
def P18052284821507755138.Spec : Prop :=
  ∀ n, P18052284821507755138.a n = A168567 (n + 1)

end A168567

/-! ## A168567.P12038015432385288348

`A008332(n+1)+A000203(A008864(n+1))`
-/

namespace A168567.P12038015432385288348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008332 (n + 1) + A000203 (A008864 (n + 1)).toNat

end

end A168567.P12038015432385288348

namespace A168567

/-- `A008332(n+1)+A000203(A008864(n+1))` -/
def P12038015432385288348.Spec : Prop :=
  ∀ n, P12038015432385288348.a n = A168567 (n + 1)

theorem P12038015432385288348.correct : P12038015432385288348.Spec := by
  intro n
  simp only [A168567, Nat.add_sub_cancel, A168567.P12038015432385288348.a, A168567.P3820506037250447474.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A008332, A008332.P8248868211495396359.a, A008333, A008333.P5442699997753752084.a, A008864, A008864.P9177617808325052279.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A006093, A006093.P2906174024863549003.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A168567

/-! ## A168567.P12662220895584521506

`A008332(n+1)+A000203(A006093(n+1)+2)`
-/

namespace A168567.P12662220895584521506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008332 (n + 1) + A000203 (A006093 (n + 1) + 2).toNat

end

end A168567.P12662220895584521506

namespace A168567

/-- `A008332(n+1)+A000203(A006093(n+1)+2)` -/
def P12662220895584521506.Spec : Prop :=
  ∀ n, P12662220895584521506.a n = A168567 (n + 1)

theorem P12662220895584521506.correct : P12662220895584521506.Spec := by
  intro n
  simp only [A168567, Nat.add_sub_cancel, A168567.P12662220895584521506.a, A168567.P3820506037250447474.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A006093, A006093.P2906174024863549003.a, A008332, A008332.P8248868211495396359.a, A008333, A008333.P5442699997753752084.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A008864, A008864.P9177617808325052279.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A168567

/-! ## A168567.P16070417404105666488

`A000203(A006093(n+1))+A000203(A008864(n+1))`
-/

namespace A168567.P16070417404105666488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A006093 (n + 1)).toNat + A000203 (A008864 (n + 1)).toNat

end

end A168567.P16070417404105666488

namespace A168567

/-- `A000203(A006093(n+1))+A000203(A008864(n+1))` -/
def P16070417404105666488.Spec : Prop :=
  ∀ n, P16070417404105666488.a n = A168567 (n + 1)

theorem P16070417404105666488.correct : P16070417404105666488.Spec := by
  intro n
  simp only [A168567, Nat.add_sub_cancel, A168567.P16070417404105666488.a, A168567.P3820506037250447474.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A006093, A006093.P2906174024863549003.a, A008332, A008332.P8248868211495396359.a, A008333, A008333.P5442699997753752084.a, A008864, A008864.P9177617808325052279.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A168567

/-! ## A168567.P7512195760954363096

`A000203(A039915(n+1))+A000203(A055670(n+1))`
-/

namespace A168567.P7512195760954363096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A039915 (n + 1)).toNat + A000203 (A055670 (n + 1)).toNat

end

end A168567.P7512195760954363096

namespace A168567

/-- `A000203(A039915(n+1))+A000203(A055670(n+1))` -/
def P7512195760954363096.Spec : Prop :=
  ∀ n, P7512195760954363096.a n = A168567 (n + 1)

end A168567

/-! ## A168567.P14920891648317434014

`A245092(A072055(n+1))+A008332(n+1)`
-/

namespace A168567.P14920891648317434014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245092 (A072055 (n + 1)).toNat + A008332 (n + 1)

end

end A168567.P14920891648317434014

namespace A168567

/-- `A245092(A072055(n+1))+A008332(n+1)` -/
def P14920891648317434014.Spec : Prop :=
  ∀ n, P14920891648317434014.a n = A168567 (n + 1)

end A168567

/-!
# A168569: a(n) = 9*(3^n - 1)/2.

The programs for A168569, the canonical program `A168569.P13969219728979856736` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A168569 has offset 0).

The definition of A168569 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `9*(3^n-1)/2` (program `A168569.P8440604971483054931`, by `A168569.P8440604971483054931.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A168569.P17900704504954767732

`ogf(9x/(1-4x+3x^2))`
-/

namespace A168569.P17900704504954767732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 9] [1, -4, 3] n

end

end A168569.P17900704504954767732

namespace A168569

/-- `ogf(9x/(1-4x+3x^2))` -/
def P17900704504954767732.Spec : Prop :=
  ∀ n, P17900704504954767732.a n = A168569 n

end A168569

/-! ## A168569.P3373426653938397790

`9*A003462(n)`
-/

namespace A168569.P3373426653938397790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 * A003462 n

end

end A168569.P3373426653938397790

namespace A168569

/-- `9*A003462(n)` -/
def P3373426653938397790.Spec : Prop :=
  ∀ n, P3373426653938397790.a n = A168569 n

end A168569

/-! ## A168569.P8440604971483054931

`9*(3^n-1)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A168569.P8440604971483054931
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (9 * ((3 ^ n : ℤ) - 1) : ℚ) / 2

end

end A168569.P8440604971483054931

namespace A168569

/-- `9*(3^n-1)/2` -/
def P8440604971483054931.Spec : Prop :=
  ∀ n, P8440604971483054931.a n = (A168569 n : ℚ)

theorem P8440604971483054931.correct : P8440604971483054931.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A168569, Nat.add_sub_cancel, A168569.P8440604971483054931.a, A168569.P13969219728979856736.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A168569, Nat.add_sub_cancel, A168569.P8440604971483054931.a, A168569.P13969219728979856736.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A168569

/-! ## A168569.P13969219728979856736

`4*a(n-1)-3*a(n-2)` with `a(0)=0, a(1)=9`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A168569

/-- `4*a(n-1)-3*a(n-2)` -/
def P13969219728979856736.Spec : Prop :=
  ∀ n, P13969219728979856736.a n = A168569 n

theorem P13969219728979856736.correct : P13969219728979856736.Spec := by
  intro n
  simp only [A168569]

end A168569

/-! ## A168569.P1065806344270269902

`lcm(9, floor(3^n/2))`
-/

namespace A168569.P1065806344270269902
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 9 ⌊(3 ^ n : ℚ) / 2⌋

end

end A168569.P1065806344270269902

namespace A168569

/-- `lcm(9, floor(3^n/2))` -/
def P1065806344270269902.Spec : Prop :=
  ∀ n, (P1065806344270269902.a n : ℤ) = A168569 n

end A168569

/-! ## A168569.P9794979465989484957

`3*(a(n-1)+3)` with `a(0)=0`
-/

namespace A168569.P9794979465989484957
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  3 * (a (n - 1) + 3)

end

end A168569.P9794979465989484957

namespace A168569

/-- `3*(a(n-1)+3)` -/
def P9794979465989484957.Spec : Prop :=
  ∀ n, (P9794979465989484957.a n : ℤ) = A168569 n

end A168569

/-! ## A168569.P10503500990596080590

`∑[3*a(n-1)]` with `a(0)=0, a(1)=9`
-/

namespace A168569.P10503500990596080590
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 9] fun n f1 =>
  3 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A168569.P10503500990596080590

namespace A168569

/-- `∑[3*a(n-1)]` -/
def P10503500990596080590.Spec : Prop :=
  ∀ n, (P10503500990596080590.a n : ℤ) = A168569 n

end A168569

/-! ## A168569.P7308418162277208250

`∑[3^n*3%(n+3)]`
-/

namespace A168569.P7308418162277208250
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ n * (3 % (n + 3))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A168569.P7308418162277208250

namespace A168569

/-- `∑[3^n*3%(n+3)]` -/
def P7308418162277208250.Spec : Prop :=
  ∀ n, (P7308418162277208250.a n : ℤ) = A168569 n

end A168569

/-! ## A168569.P1024279957629044093

`xor(∑[-3^(n+1)], -3)`
-/

namespace A168569.P1024279957629044093
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(3 ^ (n + 1) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (∑ j ∈ Finset.range (n + 1), f1 j) (-3)

end

end A168569.P1024279957629044093

namespace A168569

/-- `xor(∑[-3^(n+1)], -3)` -/
def P1024279957629044093.Spec : Prop :=
  ∀ n, P1024279957629044093.a n = A168569 n

end A168569

/-! ## A168569.P13780888553197413006

`a(n-1)+3^(n+1)` with `a(0)=0`
-/

namespace A168569.P13780888553197413006
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + 3 ^ (n + 1)

end

end A168569.P13780888553197413006

namespace A168569

/-- `a(n-1)+3^(n+1)` -/
def P13780888553197413006.Spec : Prop :=
  ∀ n, (P13780888553197413006.a n : ℤ) = A168569 n

end A168569

/-! ## A168569.P1075981905739068692

`3*(3-floor(-a(n-1)))` with `a(0)=0`

`floor` is left out, it is the identity on integers.
-/

namespace A168569.P1075981905739068692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  3 * (3 - (-a (n - 1)))

end

end A168569.P1075981905739068692

namespace A168569

/-- `3*(3-floor(-a(n-1)))` -/
def P1075981905739068692.Spec : Prop :=
  ∀ n, P1075981905739068692.a n = A168569 n

end A168569

/-! ## A168569.P6101571741299839305

`3*(3-ceil(-a(n-1)))` with `a(0)=0`

`ceil` is left out, it is the identity on integers.
-/

namespace A168569.P6101571741299839305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  3 * (3 - (-a (n - 1)))

end

end A168569.P6101571741299839305

namespace A168569

/-- `3*(3-ceil(-a(n-1)))` -/
def P6101571741299839305.Spec : Prop :=
  ∀ n, P6101571741299839305.a n = A168569 n

end A168569

/-! ## A168569.P18004012557360318974

`3*(3-round(-a(n-1)))` with `a(0)=0`

`round` is left out, it is the identity on integers.
-/

namespace A168569.P18004012557360318974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  3 * (3 - (-a (n - 1)))

end

end A168569.P18004012557360318974

namespace A168569

/-- `3*(3-round(-a(n-1)))` -/
def P18004012557360318974.Spec : Prop :=
  ∀ n, P18004012557360318974.a n = A168569 n

end A168569

/-! ## A168569.P12722828914806065251

`-(3*xor(-3, a(n-1)))` with `a(0)=0`
-/

namespace A168569.P12722828914806065251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  -(3 * Int.xor (-3) (a (n - 1)))

end

end A168569.P12722828914806065251

namespace A168569

/-- `-(3*xor(-3, a(n-1)))` -/
def P12722828914806065251.Spec : Prop :=
  ∀ n, P12722828914806065251.a n = A168569 n

end A168569

/-! ## A168569.P16075496860456369174

`∑[(dr(9*n)/3)^(n+1)]`
-/

namespace A168569.P16075496860456369174
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digitalRoot (9 * n : ℤ) : ℚ) / 3) ^ (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A168569.P16075496860456369174

namespace A168569

/-- `∑[(dr(9*n)/3)^(n+1)]` -/
def P16075496860456369174.Spec : Prop :=
  ∀ n, P16075496860456369174.a n = (A168569 n : ℚ)

end A168569

/-! ## A168569.P10508031582969641923

`∑{#}[n-1, 3^(n+1-#)]`
-/

namespace A168569.P10508031582969641923
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1).toNat, (3 : ℚ) ^ ((n + 1 : ℤ) - (k : ℤ) : ℤ)

end

end A168569.P10508031582969641923

namespace A168569

/-- `∑{#}[n-1, 3^(n+1-#)]` -/
def P10508031582969641923.Spec : Prop :=
  ∀ n, P10508031582969641923.a n = (A168569 n : ℚ)

end A168569

/-! ## A168569.P15544190448772845417

`∑[3^(n+1)*floor(atan(n+1))]`
-/

namespace A168569.P15544190448772845417
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 ^ (n + 1) : ℤ) * ⌊Real.arctan (n + 1 : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A168569.P15544190448772845417

namespace A168569

/-- `∑[3^(n+1)*floor(atan(n+1))]` -/
def P15544190448772845417.Spec : Prop :=
  ∀ n, P15544190448772845417.a n = A168569 n

end A168569

/-! ## A168569.P3558977798443903896

`3*(5-(4/2-a(n-1)))` with `a(0)=0`
-/

namespace A168569.P3558977798443903896
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0] fun n a =>
  3 * (5 - ((4 : ℚ) / 2 - a (n - 1)))

end

end A168569.P3558977798443903896

namespace A168569

/-- `3*(5-(4/2-a(n-1)))` -/
def P3558977798443903896.Spec : Prop :=
  ∀ n, P3558977798443903896.a n = (A168569 n : ℚ)

end A168569

/-! ## A168569.P2749663174109421457

`∑[(3^(n+1))%∑[3^(n+1)]]`
-/

namespace A168569.P2749663174109421457
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ (n + 1) % (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A168569.P2749663174109421457

namespace A168569

/-- `∑[(3^(n+1))%∑[3^(n+1)]]` -/
def P2749663174109421457.Spec : Prop :=
  ∀ n, (P2749663174109421457.a n : ℤ) = A168569 n

end A168569

/-! ## A168569.P16858419093646958042

`3*(3-(floor(n-a(n-1))-n))` with `a(0)=0`

`floor` is left out, it is the identity on integers.
-/

namespace A168569.P16858419093646958042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  3 * (3 - ((n : ℤ) - a (n - 1) - (n : ℤ)))

end

end A168569.P16858419093646958042

namespace A168569

/-- `3*(3-(floor(n-a(n-1))-n))` -/
def P16858419093646958042.Spec : Prop :=
  ∀ n, P16858419093646958042.a n = A168569 n

end A168569

/-!
# A168570: Exponent of 3 in 2^n - 1.

The programs for A168570, the canonical program `A168570.P7632924302945433340` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A168570 has offset 1).

The definition of A168570 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A168570.P7632924302945433340

`val(2^(n+1)-1, 3)`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A168570

/-- `val(2^(n+1)-1, 3)` -/
def P7632924302945433340.Spec : Prop :=
  ∀ n, (P7632924302945433340.a n : ℤ) = A168570 (n + 1)

theorem P7632924302945433340.correct : P7632924302945433340.Spec := by
  intro n
  simp only [A168570, Nat.add_sub_cancel]

end A168570

/-! ## A168570.P15409018798226164023

`and(1, n)*A051064(n+1)`
-/

namespace A168570.P15409018798226164023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.land 1 n : ℤ) * A051064 (n + 1)

end

end A168570.P15409018798226164023

namespace A168570

/-- `and(1, n)*A051064(n+1)` -/
def P15409018798226164023.Spec : Prop :=
  ∀ n, P15409018798226164023.a n = A168570 (n + 1)

end A168570

/-! ## A168570.P10648770168471285321

`A000035(n)*A051064(n+1)`
-/

namespace A168570.P10648770168471285321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 n * A051064 (n + 1)

end

end A168570.P10648770168471285321

namespace A168570

/-- `A000035(n)*A051064(n+1)` -/
def P10648770168471285321.Spec : Prop :=
  ∀ n, P10648770168471285321.a n = A168570 (n + 1)

end A168570

/-! ## A168570.P11085120138110001973

`lcm(A051064(n+1), A091337(n))`
-/

namespace A168570.P11085120138110001973
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A051064 (n + 1)) (A091337 n)

end

end A168570.P11085120138110001973

namespace A168570

/-- `lcm(A051064(n+1), A091337(n))` -/
def P11085120138110001973.Spec : Prop :=
  ∀ n, (P11085120138110001973.a n : ℤ) = A168570 (n + 1)

end A168570

/-! ## A168570.P4079795848407520103

`and(A051064(n+1), A097262(n))`
-/

namespace A168570.P4079795848407520103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A051064 (n + 1)) (A097262 n)

end

end A168570.P4079795848407520103

namespace A168570

/-- `and(A051064(n+1), A097262(n))` -/
def P4079795848407520103.Spec : Prop :=
  ∀ n, P4079795848407520103.a n = A168570 (n + 1)

end A168570

/-! ## A168570.P3625837840032775801

`and(A051064(n+1), A131734(n))`
-/

namespace A168570.P3625837840032775801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A051064 (n + 1)) (A131734 n)

end

end A168570.P3625837840032775801

namespace A168570

/-- `and(A051064(n+1), A131734(n))` -/
def P3625837840032775801.Spec : Prop :=
  ∀ n, P3625837840032775801.a n = A168570 (n + 1)

end A168570

/-! ## A168570.P3821881332846943893

`A051064(n+1)-A284413(n+1)`
-/

namespace A168570.P3821881332846943893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051064 (n + 1) - A284413 (n + 1)

end

end A168570.P3821881332846943893

namespace A168570

/-- `A051064(n+1)-A284413(n+1)` -/
def P3821881332846943893.Spec : Prop :=
  ∀ n, P3821881332846943893.a n = A168570 (n + 1)

end A168570

/-! ## A168570.P16222081254514418208

`(A007949(n+1)+1)*A000035(n)`
-/

namespace A168570.P16222081254514418208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A007949 (n + 1) + 1) * A000035 n

end

end A168570.P16222081254514418208

namespace A168570

/-- `(A007949(n+1)+1)*A000035(n)` -/
def P16222081254514418208.Spec : Prop :=
  ∀ n, P16222081254514418208.a n = A168570 (n + 1)

end A168570

/-! ## A168570.P2151079132316933056

`(A000034(n)-1)*A051064(n+1)`
-/

namespace A168570.P2151079132316933056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000034 n - 1) * A051064 (n + 1)

end

end A168570.P2151079132316933056

namespace A168570

/-- `(A000034(n)-1)*A051064(n+1)` -/
def P2151079132316933056.Spec : Prop :=
  ∀ n, P2151079132316933056.a n = A168570 (n + 1)

end A168570

/-! ## A168570.P17988762215761929862

`(1-A059841(n))*A051064(n+1)`
-/

namespace A168570.P17988762215761929862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A059841 n) * A051064 (n + 1)

end

end A168570.P17988762215761929862

namespace A168570

/-- `(1-A059841(n))*A051064(n+1)` -/
def P17988762215761929862.Spec : Prop :=
  ∀ n, P17988762215761929862.a n = A168570 (n + 1)

end A168570

/-! ## A168570.P8002125322616982569

`∑{d}[n+1, A156277(#)*A183063((n+1)/#)]`
-/

namespace A168570.P8002125322616982569
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A156277 d * A183063 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A168570.P8002125322616982569

namespace A168570

/-- `∑{d}[n+1, A156277(#)*A183063((n+1)/#)]` -/
def P8002125322616982569.Spec : Prop :=
  ∀ n, P8002125322616982569.a n = A168570 (n + 1)

end A168570

/-! ## A168570.P725866861626807663

`A358360(n)+A284413(n+1)-A358360(n+1)`
-/

namespace A168570.P725866861626807663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358360 n + A284413 (n + 1) - A358360 (n + 1)

end

end A168570.P725866861626807663

namespace A168570

/-- `A358360(n)+A284413(n+1)-A358360(n+1)` -/
def P725866861626807663.Spec : Prop :=
  ∀ n, P725866861626807663.a n = A168570 (n + 1)

end A168570

/-! ## A168570.P17563918872589532376

`A059841(n+1)*A051064(n+1)`
-/

namespace A168570.P17563918872589532376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 (n + 1) * A051064 (n + 1)

end

end A168570.P17563918872589532376

namespace A168570

/-- `A059841(n+1)*A051064(n+1)` -/
def P17563918872589532376.Spec : Prop :=
  ∀ n, P17563918872589532376.a n = A168570 (n + 1)

end A168570

/-! ## A168570.P8089868749333830901

`A004128(n+1)-(A284413(n+1)+A004128(n))`
-/

namespace A168570.P8089868749333830901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004128 (n + 1) - (A284413 (n + 1) + A004128 n)

end

end A168570.P8089868749333830901

namespace A168570

/-- `A004128(n+1)-(A284413(n+1)+A004128(n))` -/
def P8089868749333830901.Spec : Prop :=
  ∀ n, P8089868749333830901.a n = A168570 (n + 1)

end A168570

/-! ## A168570.P4239470300406869761

`A059841(n+1)+A007949(n+1)*A059841(n+1)`
-/

namespace A168570.P4239470300406869761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 (n + 1) + A007949 (n + 1) * A059841 (n + 1)

end

end A168570.P4239470300406869761

namespace A168570

/-- `A059841(n+1)+A007949(n+1)*A059841(n+1)` -/
def P4239470300406869761.Spec : Prop :=
  ∀ n, P4239470300406869761.a n = A168570 (n + 1)

end A168570

/-! ## A168570.P1599252643683388027

`A051064(n+1)/A051064(n+2)*A284413(n+2)`
-/

namespace A168570.P1599252643683388027
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A051064 (n + 1) : ℚ) / (A051064 (n + 2) : ℚ) * (A284413 (n + 2) : ℚ)

end

end A168570.P1599252643683388027

namespace A168570

/-- `A051064(n+1)/A051064(n+2)*A284413(n+2)` -/
def P1599252643683388027.Spec : Prop :=
  ∀ n, P1599252643683388027.a n = (A168570 (n + 1) : ℚ)

end A168570

/-! ## A168570.P2583139718729120010

`A007949(A006368(n+1))`
-/

namespace A168570.P2583139718729120010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007949 (A006368 (n + 1)).toNat

end

end A168570.P2583139718729120010

namespace A168570

/-- `A007949(A006368(n+1))` -/
def P2583139718729120010.Spec : Prop :=
  ∀ n, P2583139718729120010.a n = A168570 (n + 1)

end A168570

/-! ## A168570.P2019187504890757863

`A007949(A026137(n+1))`
-/

namespace A168570.P2019187504890757863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007949 (A026137 (n + 1)).toNat

end

end A168570.P2019187504890757863

namespace A168570

/-- `A007949(A026137(n+1))` -/
def P2019187504890757863.Spec : Prop :=
  ∀ n, P2019187504890757863.a n = A168570 (n + 1)

end A168570

/-! ## A168570.P1070867362091939325

`A007949(A032766(n+1))`
-/

namespace A168570.P1070867362091939325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007949 (A032766 (n + 1)).toNat

end

end A168570.P1070867362091939325

namespace A168570

/-- `A007949(A032766(n+1))` -/
def P1070867362091939325.Spec : Prop :=
  ∀ n, P1070867362091939325.a n = A168570 (n + 1)

end A168570

/-! ## A168570.P5255078011655081811

`A007949(A074306(n+1))`
-/

namespace A168570.P5255078011655081811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007949 (A074306 (n + 1)).toNat

end

end A168570.P5255078011655081811

namespace A168570

/-- `A007949(A074306(n+1))` -/
def P5255078011655081811.Spec : Prop :=
  ∀ n, P5255078011655081811.a n = A168570 (n + 1)

end A168570

/-!
# A168571: a(n) = 25*(5^n - 1)/4.

The programs for A168571, the canonical program `A168571.P16861918854586276376` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A168571 has offset 0).

The definition of A168571 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `25*(5^n-1)/4` (program `A168571.P16126776314959898051`, by `A168571.P16126776314959898051.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A168571.P14246515283464421416

`ogf(25x/(1-6x+5x^2))`
-/

namespace A168571.P14246515283464421416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 25] [1, -6, 5] n

end

end A168571.P14246515283464421416

namespace A168571

/-- `ogf(25x/(1-6x+5x^2))` -/
def P14246515283464421416.Spec : Prop :=
  ∀ n, P14246515283464421416.a n = A168571 n

end A168571

/-! ## A168571.P16126776314959898051

`25*(5^n-1)/4`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A168571.P16126776314959898051
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (25 * ((5 ^ n : ℤ) - 1) : ℚ) / 4

end

end A168571.P16126776314959898051

namespace A168571

/-- `25*(5^n-1)/4` -/
def P16126776314959898051.Spec : Prop :=
  ∀ n, P16126776314959898051.a n = (A168571 n : ℚ)

theorem P16126776314959898051.correct : P16126776314959898051.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A168571, Nat.add_sub_cancel, A168571.P16126776314959898051.a, A168571.P16861918854586276376.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A168571, Nat.add_sub_cancel, A168571.P16126776314959898051.a, A168571.P16861918854586276376.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A168571

/-! ## A168571.P16861918854586276376

`6*a(n-1)-5*a(n-2)` with `a(0)=0, a(1)=25`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A168571

/-- `6*a(n-1)-5*a(n-2)` -/
def P16861918854586276376.Spec : Prop :=
  ∀ n, P16861918854586276376.a n = A168571 n

theorem P16861918854586276376.correct : P16861918854586276376.Spec := by
  intro n
  simp only [A168571]

end A168571

/-! ## A168571.P16997302618809739721

`25*A003463(n)`
-/

namespace A168571.P16997302618809739721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  25 * A003463 n

end

end A168571.P16997302618809739721

namespace A168571

/-- `25*A003463(n)` -/
def P16997302618809739721.Spec : Prop :=
  ∀ n, P16997302618809739721.a n = A168571 n

end A168571

/-! ## A168571.P13082556446964895500

`lcm(25, ∑[5^n]-1)`
-/

namespace A168571.P13082556446964895500
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 ^ n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 25 (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1)

end

end A168571.P13082556446964895500

namespace A168571

/-- `lcm(25, ∑[5^n]-1)` -/
def P13082556446964895500.Spec : Prop :=
  ∀ n, (P13082556446964895500.a n : ℤ) = A168571 n

end A168571

/-! ## A168571.P13324835014221806751

`5*(a(n-1)+5)` with `a(0)=0`
-/

namespace A168571.P13324835014221806751
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  5 * (a (n - 1) + 5)

end

end A168571.P13324835014221806751

namespace A168571

/-- `5*(a(n-1)+5)` -/
def P13324835014221806751.Spec : Prop :=
  ∀ n, (P13324835014221806751.a n : ℤ) = A168571 n

end A168571

/-! ## A168571.P14151935709696525083

`∑[5*a(n-1)]` with `a(0)=0, a(1)=25`
-/

namespace A168571.P14151935709696525083
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 25] fun n f1 =>
  5 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A168571.P14151935709696525083

namespace A168571

/-- `∑[5*a(n-1)]` -/
def P14151935709696525083.Spec : Prop :=
  ∀ n, (P14151935709696525083.a n : ℤ) = A168571 n

end A168571

/-! ## A168571.P97184876063162719

`∑[5^n*5%(n+5)]`
-/

namespace A168571.P97184876063162719
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 ^ n * (5 % (n + 5))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A168571.P97184876063162719

namespace A168571

/-- `∑[5^n*5%(n+5)]` -/
def P97184876063162719.Spec : Prop :=
  ∀ n, (P97184876063162719.a n : ℤ) = A168571 n

end A168571

/-! ## A168571.P8628551314128505554

`a(n-1)+5^(n+1)` with `a(0)=0`
-/

namespace A168571.P8628551314128505554
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + 5 ^ (n + 1)

end

end A168571.P8628551314128505554

namespace A168571

/-- `a(n-1)+5^(n+1)` -/
def P8628551314128505554.Spec : Prop :=
  ∀ n, (P8628551314128505554.a n : ℤ) = A168571 n

end A168571

/-! ## A168571.P7450461471053545812

`5*(5-floor(-a(n-1)))` with `a(0)=0`

`floor` is left out, it is the identity on integers.
-/

namespace A168571.P7450461471053545812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  5 * (5 - (-a (n - 1)))

end

end A168571.P7450461471053545812

namespace A168571

/-- `5*(5-floor(-a(n-1)))` -/
def P7450461471053545812.Spec : Prop :=
  ∀ n, P7450461471053545812.a n = A168571 n

end A168571

/-! ## A168571.P12138039899954790906

`5*(5-ceil(-a(n-1)))` with `a(0)=0`

`ceil` is left out, it is the identity on integers.
-/

namespace A168571.P12138039899954790906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  5 * (5 - (-a (n - 1)))

end

end A168571.P12138039899954790906

namespace A168571

/-- `5*(5-ceil(-a(n-1)))` -/
def P12138039899954790906.Spec : Prop :=
  ∀ n, P12138039899954790906.a n = A168571 n

end A168571

/-! ## A168571.P16143935384429867019

`5*(5-round(-a(n-1)))` with `a(0)=0`

`round` is left out, it is the identity on integers.
-/

namespace A168571.P16143935384429867019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  5 * (5 - (-a (n - 1)))

end

end A168571.P16143935384429867019

namespace A168571

/-- `5*(5-round(-a(n-1)))` -/
def P16143935384429867019.Spec : Prop :=
  ∀ n, P16143935384429867019.a n = A168571 n

end A168571

/-! ## A168571.P8830502641430066842

`∑[gcd(5, a(2%n))^(n+1)]` with `a(0)=0`
-/

namespace A168571.P8830502641430066842
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0] fun n f1 =>
  Nat.gcd 5 (f1 (2 % n)) ^ (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A168571.P8830502641430066842

namespace A168571

/-- `∑[gcd(5, a(2%n))^(n+1)]` -/
def P8830502641430066842.Spec : Prop :=
  ∀ n, (P8830502641430066842.a n : ℤ) = A168571 n

end A168571

/-! ## A168571.P9890288970066210772

`∑[(5^(n+1))%∑[5^(n+1)]]`
-/

namespace A168571.P9890288970066210772
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 ^ (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 ^ (n + 1) % (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A168571.P9890288970066210772

namespace A168571

/-- `∑[(5^(n+1))%∑[5^(n+1)]]` -/
def P9890288970066210772.Spec : Prop :=
  ∀ n, (P9890288970066210772.a n : ℤ) = A168571 n

end A168571

/-! ## A168571.P1280999604376103998

`5*A104891(n)`
-/

namespace A168571.P1280999604376103998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A104891 n

end

end A168571.P1280999604376103998

namespace A168571

/-- `5*A104891(n)` -/
def P1280999604376103998.Spec : Prop :=
  ∀ n, P1280999604376103998.a n = A168571 n

end A168571

/-! ## A168571.P11213825645179827833

`A104891(n+1)-5`
-/

namespace A168571.P11213825645179827833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104891 (n + 1) - 5

end

end A168571.P11213825645179827833

namespace A168571

/-- `A104891(n+1)-5` -/
def P11213825645179827833.Spec : Prop :=
  ∀ n, P11213825645179827833.a n = A168571 n

end A168571

/-! ## A168571.P632467121831273417

`A003463(n+2)-6`
-/

namespace A168571.P632467121831273417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003463 (n + 2) - 6

end

end A168571.P632467121831273417

namespace A168571

/-- `A003463(n+2)-6` -/
def P632467121831273417.Spec : Prop :=
  ∀ n, P632467121831273417.a n = A168571 n

end A168571

/-! ## A168571.P13889489205205727116

`A047850(n+2)-7`
-/

namespace A168571.P13889489205205727116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047850 (n + 2) - 7

end

end A168571.P13889489205205727116

namespace A168571

/-- `A047850(n+2)-7` -/
def P13889489205205727116.Spec : Prop :=
  ∀ n, P13889489205205727116.a n = A168571 n

end A168571

/-! ## A168571.P8185718048337937635

`A133629(2*(n+1))-5`
-/

namespace A168571.P8185718048337937635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133629 (2 * (n + 1)) - 5

end

end A168571.P8185718048337937635

namespace A168571

/-- `A133629(2*(n+1))-5` -/
def P8185718048337937635.Spec : Prop :=
  ∀ n, P8185718048337937635.a n = A168571 n

end A168571

/-! ## A168571.P14528659660985213161

`A040601(n)*A152417(n)`
-/

namespace A168571.P14528659660985213161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040601 n * A152417 n

end

end A168571.P14528659660985213161

namespace A168571

/-- `A040601(n)*A152417(n)` -/
def P14528659660985213161.Spec : Prop :=
  ∀ n, P14528659660985213161.a n = A168571 n

end A168571

/-!
# A168572: a(n) = Sum_{k=2..n}(7^k).

The programs for A168572, the canonical program `A168572.P11592040072489604316` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A168572 has offset 1).

The definition of A168572 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A168572.P11197780409961963326

`ogf(49x/(1-8x+7x^2))`
-/

namespace A168572.P11197780409961963326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 49] [1, -8, 7] n

end

end A168572.P11197780409961963326

namespace A168572

/-- `ogf(49x/(1-8x+7x^2))` -/
def P11197780409961963326.Spec : Prop :=
  ∀ n, P11197780409961963326.a n = A168572 (n + 1)

end A168572

/-! ## A168572.P11878837066431216737

`7^(n+1)+a(n-1)` with `a(0)=0`
-/

namespace A168572.P11878837066431216737
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  7 ^ (n + 1) + a (n - 1)

end

end A168572.P11878837066431216737

namespace A168572

/-- `7^(n+1)+a(n-1)` -/
def P11878837066431216737.Spec : Prop :=
  ∀ n, (P11878837066431216737.a n : ℤ) = A168572 (n + 1)

end A168572

/-! ## A168572.P11592040072489604316

`8*a(n-1)-7*a(n-2)` with `a(0)=0, a(1)=49`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A168572

/-- `8*a(n-1)-7*a(n-2)` -/
def P11592040072489604316.Spec : Prop :=
  ∀ n, P11592040072489604316.a n = A168572 (n + 1)

theorem P11592040072489604316.correct : P11592040072489604316.Spec := by
  intro n
  simp only [A168572, Nat.add_sub_cancel]

end A168572

/-! ## A168572.P17097003280119484187

`A104896(n+1)-7`
-/

namespace A168572.P17097003280119484187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104896 (n + 1) - 7

end

end A168572.P17097003280119484187

namespace A168572

/-- `A104896(n+1)-7` -/
def P17097003280119484187.Spec : Prop :=
  ∀ n, P17097003280119484187.a n = A168572 (n + 1)

end A168572

/-! ## A168572.P3566486000393987863

`7*(7^(n+1)-7)/6`
-/

namespace A168572.P3566486000393987863
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (7 * ((7 ^ (n + 1) : ℤ) - 7) : ℚ) / 6

end

end A168572.P3566486000393987863

namespace A168572

/-- `7*(7^(n+1)-7)/6` -/
def P3566486000393987863.Spec : Prop :=
  ∀ n, P3566486000393987863.a n = (A168572 (n + 1) : ℚ)

theorem P3566486000393987863.correct : P3566486000393987863.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A168572, Nat.add_sub_cancel, A168572.P3566486000393987863.a, A168572.P11592040072489604316.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A168572, Nat.add_sub_cancel, A168572.P3566486000393987863.a, A168572.P11592040072489604316.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A168572

/-! ## A168572.P16464361260654651577

`7*(a(n-1)+7)` with `a(0)=0`
-/

namespace A168572.P16464361260654651577
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  7 * (a (n - 1) + 7)

end

end A168572.P16464361260654651577

namespace A168572

/-- `7*(a(n-1)+7)` -/
def P16464361260654651577.Spec : Prop :=
  ∀ n, (P16464361260654651577.a n : ℤ) = A168572 (n + 1)

end A168572

/-! ## A168572.P6052644448230232347

`∑[7*a(n-1)]` with `a(0)=0, a(1)=49`
-/

namespace A168572.P6052644448230232347
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 49] fun n f1 =>
  7 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A168572.P6052644448230232347

namespace A168572

/-- `∑[7*a(n-1)]` -/
def P6052644448230232347.Spec : Prop :=
  ∀ n, (P6052644448230232347.a n : ℤ) = A168572 (n + 1)

end A168572

/-! ## A168572.P13598278093514325918

`∑[(7^(n+1))%∑[7^(n+1)]]`
-/

namespace A168572.P13598278093514325918
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7 ^ (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7 ^ (n + 1) % (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A168572.P13598278093514325918

namespace A168572

/-- `∑[(7^(n+1))%∑[7^(n+1)]]` -/
def P13598278093514325918.Spec : Prop :=
  ∀ n, (P13598278093514325918.a n : ℤ) = A168572 (n + 1)

end A168572

/-! ## A168572.P16759152275813127429

`7*A104896(n)`
-/

namespace A168572.P16759152275813127429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  7 * A104896 n

end

end A168572.P16759152275813127429

namespace A168572

/-- `7*A104896(n)` -/
def P16759152275813127429.Spec : Prop :=
  ∀ n, P16759152275813127429.a n = A168572 (n + 1)

end A168572

/-! ## A168572.P13263569699984825864

`A023000(n+2)-8`
-/

namespace A168572.P13263569699984825864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023000 (n + 2) - 8

end

end A168572.P13263569699984825864

namespace A168572

/-- `A023000(n+2)-8` -/
def P13263569699984825864.Spec : Prop :=
  ∀ n, P13263569699984825864.a n = A168572 (n + 1)

end A168572

/-! ## A168572.P6616494235920983042

`A047852(n+2)-9`
-/

namespace A168572.P6616494235920983042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047852 (n + 2) - 9

end

end A168572.P6616494235920983042

namespace A168572

/-- `A047852(n+2)-9` -/
def P6616494235920983042.Spec : Prop :=
  ∀ n, P6616494235920983042.a n = A168572 (n + 1)

end A168572

/-! ## A168572.P517686055108607905

`∑[A000420(n+2)]%A000420(n+2)`
-/

namespace A168572.P517686055108607905
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000420 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (A000420 (n + 2))

end

end A168572.P517686055108607905

namespace A168572

/-- `∑[A000420(n+2)]%A000420(n+2)` -/
def P517686055108607905.Spec : Prop :=
  ∀ n, P517686055108607905.a n = A168572 (n + 1)

end A168572

/-! ## A168572.P18112696571111720044

`∑[A186684((n+1)²)^(n+1)]`
-/

namespace A168572.P18112696571111720044
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186684 ((n + 1) ^ 2) ^ (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A168572.P18112696571111720044

namespace A168572

/-- `∑[A186684((n+1)²)^(n+1)]` -/
def P18112696571111720044.Spec : Prop :=
  ∀ n, P18112696571111720044.a n = A168572 (n + 1)

end A168572

/-!
# A168573: Numbers requiring exactly one step to reach 14 using map n -> sum of largest digit of all divisors of n (A168239).

The programs for A168573, there is no canonical definition to state claims against.
-/

/-! ## A168573.P12703524240712578622

`eq[1, A168239(n+2)]+2`
-/

namespace A168573.P12703524240712578622
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168239 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A168573.P12703524240712578622

/-! ## A168573.P6645117671343737649

`eq[1, A168239(A233583(n+1))]`
-/

namespace A168573.P6645117671343737649
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168239 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A168573.P6645117671343737649

/-!
# A168574: a(n) = (4*n + 3)*(1 + 2*n^2)/3.

The programs for A168574, the canonical program `A168574.P6229937044706170804` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A168574 has offset 0).

The definition of A168574 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(4*n+3)*(1+2*n²)/3` (program `A168574.P4071926667564905022`, by `A168574.P4071926667564905022.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A168574.P15096538233881557237

`ogf((1+3x+11x^2+x^3)/(1-4x+6x^2-4x^3+x^4))`
-/

namespace A168574.P15096538233881557237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 3, 11, 1] [1, -4, 6, -4, 1] n

end

end A168574.P15096538233881557237

namespace A168574

/-- `ogf((1+3x+11x^2+x^3)/(1-4x+6x^2-4x^3+x^4))` -/
def P15096538233881557237.Spec : Prop :=
  ∀ n, P15096538233881557237.a n = A168574 n

end A168574

/-! ## A168574.P4071926667564905022

`(4*n+3)*(1+2*n²)/3`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A168574.P4071926667564905022
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((4 * n + 3) * (1 + 2 * n ^ 2) : ℚ) / 3

end

end A168574.P4071926667564905022

namespace A168574

/-- `(4*n+3)*(1+2*n²)/3` -/
def P4071926667564905022.Spec : Prop :=
  ∀ n, P4071926667564905022.a n = (A168574 n : ℚ)

theorem P4071926667564905022.correct : P4071926667564905022.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 =>
      simp [A168574, Nat.add_sub_cancel, A168574.P4071926667564905022.a, A168574.P6229937044706170804.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 3 =>
      have h1 := ih (m + 2) (by omega)
      have h2 := ih (m + 1) (by omega)
      have h3 := ih m (by omega)
      simp only [A168574, Nat.add_sub_cancel, A168574.P4071926667564905022.a, A168574.P6229937044706170804.a, SequenceMachineLib.memo_apply] at h1 h2 h3 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 3 - 1 = m + 2 by omega, show m + 3 - 2 = m + 1 by omega, show m + 3 - 3 = m by omega, show m + 2 < m + 3 by omega, show m + 1 < m + 3 by omega, show m < m + 3 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 ⊢
      rw [← h1, ← h2, ← h3]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A168574

/-! ## A168574.P6229937044706170804

`3*a(n-1)-3*a(n-2)+a(n-3)+16` with `a(0)=1, a(1)=7, a(2)=33`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A168574

/-- `3*a(n-1)-3*a(n-2)+a(n-3)+16` -/
def P6229937044706170804.Spec : Prop :=
  ∀ n, P6229937044706170804.a n = A168574 n

theorem P6229937044706170804.correct : P6229937044706170804.Spec := by
  intro n
  simp only [A168574]

end A168574

/-! ## A168574.P3741862798135434693

`A168582(2*n+1)`
-/

namespace A168574.P3741862798135434693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168582 (2 * n + 1)

end

end A168574.P3741862798135434693

namespace A168574

/-- `A168582(2*n+1)` -/
def P3741862798135434693.Spec : Prop :=
  ∀ n, P3741862798135434693.a n = A168574 n

end A168574

/-! ## A168574.P7820371513253565441

`∑[∑[a(n-1)+16]]` with `a(0)=1, a(1)=5, a(2)=20`
-/

namespace A168574.P7820371513253565441
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 5, 20] fun n f2 =>
  f2 (n - 1) + 16

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A168574.P7820371513253565441

namespace A168574

/-- `∑[∑[a(n-1)+16]]` -/
def P7820371513253565441.Spec : Prop :=
  ∀ n, (P7820371513253565441.a n : ℤ) = A168574 n

end A168574

/-! ## A168574.P2614270336004908783

`∑[n*record[lcm(4, n)]+1]+n`
-/

namespace A168574.P2614270336004908783
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 4 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + n

end

end A168574.P2614270336004908783

namespace A168574

/-- `∑[n*record[lcm(4, n)]+1]+n` -/
def P2614270336004908783.Spec : Prop :=
  ∀ n, (P2614270336004908783.a n : ℤ) = A168574 n

end A168574

/-! ## A168574.P8078464636015904477

`Δ[C(2*n+1, 4)]+1+n`
-/

namespace A168574.P8078464636015904477
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (2 * n + 1) 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) + 1 + (n : ℤ)

end

end A168574.P8078464636015904477

namespace A168574

/-- `Δ[C(2*n+1, 4)]+1+n` -/
def P8078464636015904477.Spec : Prop :=
  ∀ n, P8078464636015904477.a n = A168574 n

end A168574

/-! ## A168574.P11540334857930389683

`∑[4*C(2*n, 2)+1]+n`
-/

namespace A168574.P11540334857930389683
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * Nat.choose (2 * n) 2 + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + n

end

end A168574.P11540334857930389683

namespace A168574

/-- `∑[4*C(2*n, 2)+1]+n` -/
def P11540334857930389683.Spec : Prop :=
  ∀ n, (P11540334857930389683.a n : ℤ) = A168574 n

end A168574

/-! ## A168574.P5947253799893038966

`Δ[C(n+1+n, 4)]+n+1`
-/

namespace A168574.P5947253799893038966
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 1 + n) 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) + (n + 1 : ℤ)

end

end A168574.P5947253799893038966

namespace A168574

/-- `Δ[C(n+1+n, 4)]+n+1` -/
def P5947253799893038966.Spec : Prop :=
  ∀ n, P5947253799893038966.a n = A168574 n

end A168574

/-! ## A168574.P17733346744452646681

`∑[A080856(n)]+n`
-/

namespace A168574.P17733346744452646681
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080856 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A168574.P17733346744452646681

namespace A168574

/-- `∑[A080856(n)]+n` -/
def P17733346744452646681.Spec : Prop :=
  ∀ n, P17733346744452646681.a n = A168574 n

end A168574

/-! ## A168574.P15680479944468517629

`A258582(n)+1+n`
-/

namespace A168574.P15680479944468517629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258582 n + 1 + (n : ℤ)

end

end A168574.P15680479944468517629

namespace A168574

/-- `A258582(n)+1+n` -/
def P15680479944468517629.Spec : Prop :=
  ∀ n, P15680479944468517629.a n = A168574 n

end A168574

/-! ## A168574.P5085051397784095909

`∑[A185438(n)]-n²`
-/

namespace A168574.P5085051397784095909
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185438 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n ^ 2 : ℤ)

end

end A168574.P5085051397784095909

namespace A168574

/-- `∑[A185438(n)]-n²` -/
def P5085051397784095909.Spec : Prop :=
  ∀ n, P5085051397784095909.a n = A168574 n

end A168574

/-! ## A168574.P4725641644978242845

`A316224(n)/3+n+1`
-/

namespace A168574.P4725641644978242845
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A316224 n : ℚ) / 3 + (n + 1 : ℚ)

end

end A168574.P4725641644978242845

namespace A168574

/-- `A316224(n)/3+n+1` -/
def P4725641644978242845.Spec : Prop :=
  ∀ n, P4725641644978242845.a n = (A168574 n : ℚ)

theorem P4725641644978242845.correct : P4725641644978242845.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 =>
      simp [A168574, Nat.add_sub_cancel, A168574.P4725641644978242845.a, A168574.P6229937044706170804.a, A316224, A316224.P13763735533833760107.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf)
    | m + 3 =>
      have h1 := ih (m + 2) (by omega)
      have h2 := ih (m + 1) (by omega)
      have h3 := ih m (by omega)
      simp only [A168574, Nat.add_sub_cancel, A168574.P4725641644978242845.a, A168574.P6229937044706170804.a, A316224, A316224.P13763735533833760107.a, SequenceMachineLib.memo_apply] at h1 h2 h3 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 3 - 1 = m + 2 by omega, show m + 3 - 2 = m + 1 by omega, show m + 3 - 3 = m by omega, show m + 2 < m + 3 by omega, show m + 1 < m + 3 by omega, show m < m + 3 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 ⊢
      rw [← h1, ← h2, ← h3]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith | ((try field_simp); ring_nf)

end A168574

/-! ## A168574.P13426626938054155082

`A254527(n)+a(n-1)` with `a(0)=1`
-/

namespace A168574.P13426626938054155082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A254527 n + a (n - 1)

end

end A168574.P13426626938054155082

namespace A168574

/-- `A254527(n)+a(n-1)` -/
def P13426626938054155082.Spec : Prop :=
  ∀ n, P13426626938054155082.a n = A168574 n

end A168574

/-! ## A168574.P16736239526786960961

`A389090(n+1)-n²²`
-/

namespace A168574.P16736239526786960961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389090 (n + 1) - ((n ^ 2) ^ 2 : ℤ)

end

end A168574.P16736239526786960961

namespace A168574

/-- `A389090(n+1)-n²²` -/
def P16736239526786960961.Spec : Prop :=
  ∀ n, P16736239526786960961.a n = A168574 n

end A168574

/-! ## A168574.P11166916200636863661

`abs(∑[4*n]-A057813(n))`
-/

namespace A168574.P11166916200636863661
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A057813 n|

end

end A168574.P11166916200636863661

namespace A168574

/-- `abs(∑[4*n]-A057813(n))` -/
def P11166916200636863661.Spec : Prop :=
  ∀ n, P11166916200636863661.a n = A168574 n

end A168574

/-! ## A168574.P7075363598605839801

`∑[A139267(n)+(n²+1)*ceil(atan(n+1))]`
-/

namespace A168574.P7075363598605839801
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139267 n + (n ^ 2 + 1 : ℤ) * ⌈Real.arctan (n + 1 : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A168574.P7075363598605839801

namespace A168574

/-- `∑[A139267(n)+(n²+1)*ceil(atan(n+1))]` -/
def P7075363598605839801.Spec : Prop :=
  ∀ n, P7075363598605839801.a n = A168574 n

end A168574

/-! ## A168574.P14703293458068359214

`abs(1-2*∑[2*n*record[A006257(n)]+1])`
-/

namespace A168574.P14703293458068359214
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006257 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) * f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - 2 * (∑ j ∈ Finset.range (n + 1), f1 j)|

end

end A168574.P14703293458068359214

namespace A168574

/-- `abs(1-2*∑[2*n*record[A006257(n)]+1])` -/
def P14703293458068359214.Spec : Prop :=
  ∀ n, P14703293458068359214.a n = A168574 n

end A168574

/-! ## A168574.P7434867102399470635

`A069778(n)+A004466(n)`
-/

namespace A168574.P7434867102399470635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069778 n + A004466 n

end

end A168574.P7434867102399470635

namespace A168574

/-- `A069778(n)+A004466(n)` -/
def P7434867102399470635.Spec : Prop :=
  ∀ n, P7434867102399470635.a n = A168574 n

end A168574

/-! ## A168574.P11950292548591217682

`A171272(n)+A001105(n)`
-/

namespace A168574.P11950292548591217682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171272 n + A001105 n

end

end A168574.P11950292548591217682

namespace A168574

/-- `A171272(n)+A001105(n)` -/
def P11950292548591217682.Spec : Prop :=
  ∀ n, P11950292548591217682.a n = A168574 n

end A168574

/-!
# A168575: a(n) = (10^n + 1)^3.

The programs for A168575, the canonical program `A168575.P15733329323860089696` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A168575 has offset 0).

The definition of A168575 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(10^n+1)^3` (program `A168575.P15733329323860089696`, by `A168575.P15733329323860089696.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A168575.P15733329323860089696

`(10^n+1)^3`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A168575

/-- `(10^n+1)^3` -/
def P15733329323860089696.Spec : Prop :=
  ∀ n, (P15733329323860089696.a n : ℤ) = A168575 n

theorem P15733329323860089696.correct : P15733329323860089696.Spec := by
  intro n
  simp only [A168575]

end A168575

/-! ## A168575.P7077703433241773620

`floor(sqrt(A033934(n))^3)`
-/

namespace A168575.P7077703433241773620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sqrt (A033934 n : ℝ) ^ 3⌋

end

end A168575.P7077703433241773620

namespace A168575

/-- `floor(sqrt(A033934(n))^3)` -/
def P7077703433241773620.Spec : Prop :=
  ∀ n, P7077703433241773620.a n = A168575 n

end A168575

/-! ## A168575.P14448526674136105904

`A033934(n)*A062397(n)`
-/

namespace A168575.P14448526674136105904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033934 n * A062397 n

end

end A168575.P14448526674136105904

namespace A168575

/-- `A033934(n)*A062397(n)` -/
def P14448526674136105904.Spec : Prop :=
  ∀ n, P14448526674136105904.a n = A168575 n

theorem P14448526674136105904.correct : P14448526674136105904.Spec := by
  intro n
  simp only [A168575, Nat.add_sub_cancel, A168575.P14448526674136105904.a, A168575.P15733329323860089696.a, A033934, A033934.P11766874347427226134.a, A062397, A062397.P11904164326522871108.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A168575

/-! ## A168575.P10565533235460580562

`(A134230(n)+1)*A062397(n)`
-/

namespace A168575.P10565533235460580562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A134230 n + 1) * A062397 n

end

end A168575.P10565533235460580562

namespace A168575

/-- `(A134230(n)+1)*A062397(n)` -/
def P10565533235460580562.Spec : Prop :=
  ∀ n, P10565533235460580562.a n = A168575 n

theorem P10565533235460580562.correct : P10565533235460580562.Spec := by
  intro n
  simp only [A168575, Nat.add_sub_cancel, A168575.P10565533235460580562.a, A168575.P15733329323860089696.a, A062397, A062397.P11904164326522871108.a, A134230, A134230.P7961735828533681939.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A168575

/-!
# A168576: 

The programs for A168576, there is no canonical definition to state claims against.
-/

/-! ## A168576.P14324296292967132262

`(10^n+1)^4`
-/

namespace A168576.P14324296292967132262
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (10 ^ n + 1) ^ 4

end

end A168576.P14324296292967132262

/-! ## A168576.P6134854402020659029

`∑[10*a(n-1)]²²` with `a(0)=2, a(1)=9`
-/

namespace A168576.P6134854402020659029
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 9] fun n f1 =>
  10 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2) ^ 2

end

end A168576.P6134854402020659029

/-! ## A168576.P9465093365365154419

`A033934(n)²`
-/

namespace A168576.P9465093365365154419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033934 n ^ 2

end

end A168576.P9465093365365154419

/-! ## A168576.P2790180965917023971

`A062397(n)²²`
-/

namespace A168576.P2790180965917023971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A062397 n ^ 2) ^ 2

end

end A168576.P2790180965917023971

/-! ## A168576.P9792489991952772920

`(A134230(n)+1)²`
-/

namespace A168576.P9792489991952772920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A134230 n + 1) ^ 2

end

end A168576.P9792489991952772920

/-!
# A168577: Pascal's triangle, first two columns and diagonal removed.

The programs for A168577, the canonical program `A168577.P14364464542492817144` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A168577 has offset 2).

The definition of A168577 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A168577.P10188779326106612931

`C(row(n)+3, col(n)+2)`
-/

namespace A168577.P10188779326106612931
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (SequenceMachineLib.triRow n + 3) (SequenceMachineLib.triCol n + 2)

end

end A168577.P10188779326106612931

namespace A168577

/-- `C(row(n)+3, col(n)+2)` -/
def P10188779326106612931.Spec : Prop :=
  ∀ n, (P10188779326106612931.a n : ℤ) = A168577 (n + 2)

end A168577

/-! ## A168577.P14189031515406363905

`C(∑[char[∑[n]]]+2, C(comp[∑[n]]-n, 2)-n)`
-/

namespace A168577.P14189031515406363905
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
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j + 2) ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f4 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n : ℤ)).toNat

end

end A168577.P14189031515406363905

namespace A168577

/-- `C(∑[char[∑[n]]]+2, C(comp[∑[n]]-n, 2)-n)` -/
def P14189031515406363905.Spec : Prop :=
  ∀ n, (P14189031515406363905.a n : ℤ) = A168577 (n + 2)

end A168577

/-! ## A168577.P3640292086050754793

`A014410(comp[∑[n]]+2)`
-/

namespace A168577.P3640292086050754793
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014410 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 2)

end

end A168577.P3640292086050754793

namespace A168577

/-- `A014410(comp[∑[n]]+2)` -/
def P3640292086050754793.Spec : Prop :=
  ∀ n, P3640292086050754793.a n = A168577 (n + 2)

end A168577

/-! ## A168577.P2233976051301567770

`A074909(2*comp[∑[n]]-(n-1))`
-/

namespace A168577.P2233976051301567770
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074909 ((2 * SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - ((n : ℤ) - 1)).toNat

end

end A168577.P2233976051301567770

namespace A168577

/-- `A074909(2*comp[∑[n]]-(n-1))` -/
def P2233976051301567770.Spec : Prop :=
  ∀ n, P2233976051301567770.a n = A168577 (n + 2)

end A168577

/-! ## A168577.P14718964868786270886

`A194121(n)-A209518(n)`
-/

namespace A168577.P14718964868786270886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194121 n - A209518 n

end

end A168577.P14718964868786270886

namespace A168577

/-- `A194121(n)-A209518(n)` -/
def P14718964868786270886.Spec : Prop :=
  ∀ n, P14718964868786270886.a n = A168577 (n + 2)

end A168577

/-! ## A168577.P16576019970755385055

`A124051(n)/A074909(n)`
-/

namespace A168577.P16576019970755385055
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A124051 n : ℚ) / (A074909 n : ℚ)

end

end A168577.P16576019970755385055

namespace A168577

/-- `A124051(n)/A074909(n)` -/
def P16576019970755385055.Spec : Prop :=
  ∀ n, P16576019970755385055.a n = (A168577 (n + 2) : ℚ)

end A168577

/-! ## A168577.P16253564697456003836

`A264357(n+1)+A028263(n)`
-/

namespace A168577.P16253564697456003836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264357 (n + 1) + A028263 n

end

end A168577.P16253564697456003836

namespace A168577

/-- `A264357(n+1)+A028263(n)` -/
def P16253564697456003836.Spec : Prop :=
  ∀ n, P16253564697456003836.a n = A168577 (n + 2)

end A168577

/-! ## A168577.P15829466787700639276

`A104712(n+2)+A014410(n+2)`
-/

namespace A168577.P15829466787700639276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104712 (n + 2) + A014410 (n + 2)

end

end A168577.P15829466787700639276

namespace A168577

/-- `A104712(n+2)+A014410(n+2)` -/
def P15829466787700639276.Spec : Prop :=
  ∀ n, P15829466787700639276.a n = A168577 (n + 2)

theorem P15829466787700639276.correct : P15829466787700639276.Spec := by
  intro n
  simp only [A168577, Nat.add_sub_cancel, A168577.P15829466787700639276.a, A168577.P14364464542492817144.a, A002024, A002024.P11700297927830783882.a, A004736, A004736.P10337537277358081527.a, A014410, A014410.P12420516935091573692.a, A104712, A104712.P8393777965278521263.a, A000217, A000217.P10269402890581615239.a, A003057, A003057.P16308936517940939054.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A168577

/-! ## A168577.P6502735123204170481

`A104712(n+2)+A028327(n)/2`
-/

namespace A168577.P6502735123204170481
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A104712 (n + 2) : ℚ) + (A028327 n : ℚ) / 2

end

end A168577.P6502735123204170481

namespace A168577

/-- `A104712(n+2)+A028327(n)/2` -/
def P6502735123204170481.Spec : Prop :=
  ∀ n, P6502735123204170481.a n = (A168577 (n + 2) : ℚ)

end A168577

/-! ## A168577.P14364464542492817144

`C(A002024(n+1)+2, A004736(n+1))`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A168577

/-- `C(A002024(n+1)+2, A004736(n+1))` -/
def P14364464542492817144.Spec : Prop :=
  ∀ n, (P14364464542492817144.a n : ℤ) = A168577 (n + 2)

theorem P14364464542492817144.correct : P14364464542492817144.Spec := by
  intro n
  simp only [A168577, Nat.add_sub_cancel]

end A168577

/-! ## A168577.P9178596150960222188

`C(A003057(n+2)+1, A004736(n+1))`
-/

namespace A168577.P9178596150960222188
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A003057 (n + 2) + 1).toNat (A004736 (n + 1)).toNat

end

end A168577.P9178596150960222188

namespace A168577

/-- `C(A003057(n+2)+1, A004736(n+1))` -/
def P9178596150960222188.Spec : Prop :=
  ∀ n, (P9178596150960222188.a n : ℤ) = A168577 (n + 2)

end A168577

/-! ## A168577.P2735105100383482607

`A104712(n+2)+A135278(n)+A074909(n)`
-/

namespace A168577.P2735105100383482607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104712 (n + 2) + (A135278 n + A074909 n)

end

end A168577.P2735105100383482607

namespace A168577

/-- `A104712(n+2)+A135278(n)+A074909(n)` -/
def P2735105100383482607.Spec : Prop :=
  ∀ n, P2735105100383482607.a n = A168577 (n + 2)

end A168577

/-! ## A168577.P2788710039404648987

`A074909(n+1)+A104712(n+2)+A074909(n)`
-/

namespace A168577.P2788710039404648987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074909 (n + 1) + (A104712 (n + 2) + A074909 n)

end

end A168577.P2788710039404648987

namespace A168577

/-- `A074909(n+1)+A104712(n+2)+A074909(n)` -/
def P2788710039404648987.Spec : Prop :=
  ∀ n, P2788710039404648987.a n = A168577 (n + 2)

end A168577

/-! ## A168577.P3342225264728018703

`A104712(comp[∑[n]]+1)`
-/

namespace A168577.P3342225264728018703
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104712 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 1)

end

end A168577.P3342225264728018703

namespace A168577

/-- `A104712(comp[∑[n]]+1)` -/
def P3342225264728018703.Spec : Prop :=
  ∀ n, P3342225264728018703.a n = A168577 (n + 2)

end A168577

/-! ## A168577.P14403218452727575034

`A014430(comp[∑[n]])+1`
-/

namespace A168577.P14403218452727575034
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014430 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) + 1

end

end A168577.P14403218452727575034

namespace A168577

/-- `A014430(comp[∑[n]])+1` -/
def P14403218452727575034.Spec : Prop :=
  ∀ n, P14403218452727575034.a n = A168577 (n + 2)

end A168577

/-! ## A168577.P4891727218039723044

`A028327(comp[∑[n]])/2`
-/

namespace A168577.P4891727218039723044
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028327 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) : ℚ) / 2

end

end A168577.P4891727218039723044

namespace A168577

/-- `A028327(comp[∑[n]])/2` -/
def P4891727218039723044.Spec : Prop :=
  ∀ n, P4891727218039723044.a n = (A168577 (n + 2) : ℚ)

end A168577

/-! ## A168577.P8620675034184903716

`sqrt(A014719(comp[∑[n]]+2))`
-/

namespace A168577.P8620675034184903716
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A014719 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 2) : ℝ)

end

end A168577.P8620675034184903716

namespace A168577

/-- `sqrt(A014719(comp[∑[n]]+2))` -/
def P8620675034184903716.Spec : Prop :=
  ∀ n, P8620675034184903716.a n = (A168577 (n + 2) : ℝ)

end A168577

/-! ## A168577.P14562369389223863183

`A007318(∑[(char[∑[n]]+1)²]+4)`
-/

namespace A168577.P14562369389223863183
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f2 j = n then 1 else 0) + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A168577.P14562369389223863183

namespace A168577

/-- `A007318(∑[(char[∑[n]]+1)²]+4)` -/
def P14562369389223863183.Spec : Prop :=
  ∀ n, P14562369389223863183.a n = A168577 (n + 2)

end A168577

/-! ## A168577.P5319716432382378607

`A135278(lt[1, A007318(n)])`
-/

namespace A168577.P5319716432382378607
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135278 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A168577.P5319716432382378607

namespace A168577

/-- `A135278(lt[1, A007318(n)])` -/
def P5319716432382378607.Spec : Prop :=
  ∀ n, P5319716432382378607.a n = A168577 (n + 2)

end A168577

/-! ## A168577.P11349257497638725288

`A135278(lt[1, A365770(n)])`
-/

namespace A168577.P11349257497638725288
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365770 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135278 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A168577.P11349257497638725288

namespace A168577

/-- `A135278(lt[1, A365770(n)])` -/
def P11349257497638725288.Spec : Prop :=
  ∀ n, P11349257497638725288.a n = A168577 (n + 2)

end A168577

/-!
# A168579: G.f.: 1/(1-x-16*x^2).

The programs for A168579, the canonical program `A168579.P2273076190921488724` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A168579 has offset 0).

The definition of A168579 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A168579.P2273076190921488724

`a(n-1)+16*a(n-2)` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A168579

/-- `a(n-1)+16*a(n-2)` -/
def P2273076190921488724.Spec : Prop :=
  ∀ n, (P2273076190921488724.a n : ℤ) = A168579 n

theorem P2273076190921488724.correct : P2273076190921488724.Spec := by
  intro n
  simp only [A168579]

end A168579

/-! ## A168579.P14402175411941025404

`1/sqrt(65)*(((1+sqrt(65))/2)^(n+1)-((1-sqrt(65))/2)^(n+1))`
-/

namespace A168579.P14402175411941025404
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  1 / Real.sqrt (65 : ℝ) * (((1 + Real.sqrt (65 : ℝ)) / 2) ^ (n + 1) - ((1 - Real.sqrt (65 : ℝ)) / 2) ^ (n + 1))

end

end A168579.P14402175411941025404

namespace A168579

/-- `1/sqrt(65)*(((1+sqrt(65))/2)^(n+1)-((1-sqrt(65))/2)^(n+1))` -/
def P14402175411941025404.Spec : Prop :=
  ∀ n, P14402175411941025404.a n = (A168579 n : ℝ)

theorem P14402175411941025404.correct : P14402175411941025404.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A168579, Nat.add_sub_cancel, A168579.P14402175411941025404.a, A168579.P2273076190921488724.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A168579, Nat.add_sub_cancel, A168579.P14402175411941025404.a, A168579.P2273076190921488724.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A168579

/-! ## A168579.P10075786330143275914

`ogf(1/(1-x-16x^2))`
-/

namespace A168579.P10075786330143275914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1] [1, -1, -16] n

end

end A168579.P10075786330143275914

namespace A168579

/-- `ogf(1/(1-x-16x^2))` -/
def P10075786330143275914.Spec : Prop :=
  ∀ n, P10075786330143275914.a n = A168579 n

end A168579

/-! ## A168579.P14294839454318566926

`a(n-1)+lcm(16, a(n-2))` with `a(0)=1, a(1)=1`
-/

namespace A168579.P14294839454318566926
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 1) + Nat.lcm 16 (a (n - 2))

end

end A168579.P14294839454318566926

namespace A168579

/-- `a(n-1)+lcm(16, a(n-2))` -/
def P14294839454318566926.Spec : Prop :=
  ∀ n, (P14294839454318566926.a n : ℤ) = A168579 n

end A168579

/-! ## A168579.P17689172667865748971

`a(n-1)+a(n-2)/(1/4)²` with `a(0)=1, a(1)=1`
-/

namespace A168579.P17689172667865748971
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 1) + a (n - 2) / ((1 : ℚ) / 4) ^ 2

end

end A168579.P17689172667865748971

namespace A168579

/-- `a(n-1)+a(n-2)/(1/4)²` -/
def P17689172667865748971.Spec : Prop :=
  ∀ n, P17689172667865748971.a n = (A168579 n : ℚ)

end A168579

/-! ## A168579.P16086268148000548809

`a(n-1)-4*(a(n-2)-5*a(n-2))` with `a(0)=1, a(1)=1`
-/

namespace A168579.P16086268148000548809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 1) - 4 * (a (n - 2) - 5 * a (n - 2))

end

end A168579.P16086268148000548809

namespace A168579

/-- `a(n-1)-4*(a(n-2)-5*a(n-2))` -/
def P16086268148000548809.Spec : Prop :=
  ∀ n, P16086268148000548809.a n = A168579 n

end A168579

/-!
# A168580: a(n) = (n-th prime > 3) minus 3*n.

The programs for A168580, the canonical program `A168580.P12688489534614723486` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A168580 has offset 1).

The definition of A168580 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A168580.P12688489534614723486

`A000040(n+3)-3*(n+1)`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A168580

/-- `A000040(n+3)-3*(n+1)` -/
def P12688489534614723486.Spec : Prop :=
  ∀ n, P12688489534614723486.a n = A168580 (n + 1)

theorem P12688489534614723486.correct : P12688489534614723486.Spec := by
  intro n
  simp only [A168580, Nat.add_sub_cancel]

end A168580

/-! ## A168580.P4157713427980173575

`∑[A135732(n+1)-2]+2`
-/

namespace A168580.P4157713427980173575
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135732 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 2

end

end A168580.P4157713427980173575

namespace A168580

/-- `∑[A135732(n+1)-2]+2` -/
def P4157713427980173575.Spec : Prop :=
  ∀ n, P4157713427980173575.a n = A168580 (n + 1)

end A168580

/-! ## A168580.P1900692385231685999

`A215848(n+1)-3*(n+1)`
-/

namespace A168580.P1900692385231685999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215848 (n + 1) - (3 * (n + 1) : ℤ)

end

end A168580.P1900692385231685999

namespace A168580

/-- `A215848(n+1)-3*(n+1)` -/
def P1900692385231685999.Spec : Prop :=
  ∀ n, P1900692385231685999.a n = A168580 (n + 1)

end A168580

/-! ## A168580.P17468282360650764288

`∑[abs(Δ[p?[2*n+1]])]-3*n`
-/

namespace A168580.P17468282360650764288
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => (f3 j).Prime) n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(f2 (n + 1) : ℤ) - (f2 n : ℤ)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (3 * n : ℤ)

end

end A168580.P17468282360650764288

namespace A168580

/-- `∑[abs(Δ[p?[2*n+1]])]-3*n` -/
def P17468282360650764288.Spec : Prop :=
  ∀ n, P17468282360650764288.a n = A168580 (n + 1)

end A168580

/-! ## A168580.P14398960621337305243

`A154115(n+2)-3*n`
-/

namespace A168580.P14398960621337305243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154115 (n + 2) - (3 * n : ℤ)

end

end A168580.P14398960621337305243

namespace A168580

/-- `A154115(n+2)-3*n` -/
def P14398960621337305243.Spec : Prop :=
  ∀ n, P14398960621337305243.a n = A168580 (n + 1)

theorem P14398960621337305243.correct : P14398960621337305243.Spec := by
  intro n
  simp only [A168580, Nat.add_sub_cancel, A168580.P14398960621337305243.a, A168580.P12688489534614723486.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A154115, A154115.P220062109648616098.a, A086801, A086801.P17699144881820784956.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A168580

/-! ## A168580.P2008485420511141300

`A045344(n+2)-3*(n+1)`
-/

namespace A168580.P2008485420511141300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 2) - (3 * (n + 1) : ℤ)

end

end A168580.P2008485420511141300

namespace A168580

/-- `A045344(n+2)-3*(n+1)` -/
def P2008485420511141300.Spec : Prop :=
  ∀ n, P2008485420511141300.a n = A168580 (n + 1)

end A168580

/-! ## A168580.P15045763380804937977

`A065091(n+2)-3*(n+1)`
-/

namespace A168580.P15045763380804937977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 2) - (3 * (n + 1) : ℤ)

end

end A168580.P15045763380804937977

namespace A168580

/-- `A065091(n+2)-3*(n+1)` -/
def P15045763380804937977.Spec : Prop :=
  ∀ n, P15045763380804937977.a n = A168580 (n + 1)

theorem P15045763380804937977.correct : P15045763380804937977.Spec := by
  intro n
  simp only [A168580, Nat.add_sub_cancel, A168580.P15045763380804937977.a, A168580.P12688489534614723486.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A065091, A065091.P6971844946592549357.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A168580

/-! ## A168580.P8938251565852994983

`2*A008507(n+2)-(n-2)`
-/

namespace A168580.P8938251565852994983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008507 (n + 2) - ((n : ℤ) - 2)

end

end A168580.P8938251565852994983

namespace A168580

/-- `2*A008507(n+2)-(n-2)` -/
def P8938251565852994983.Spec : Prop :=
  ∀ n, P8938251565852994983.a n = A168580 (n + 1)

end A168580

/-! ## A168580.P11043948982364034709

`A005097(n+2)+A008507(n+2)-A005843(n)`
-/

namespace A168580.P11043948982364034709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005097 (n + 2) + (A008507 (n + 2) - A005843 n)

end

end A168580.P11043948982364034709

namespace A168580

/-- `A005097(n+2)+A008507(n+2)-A005843(n)` -/
def P11043948982364034709.Spec : Prop :=
  ∀ n, P11043948982364034709.a n = A168580 (n + 1)

end A168580

/-! ## A168580.P9388798652723663659

`A005097(n+2)+A005097(n+2)-A016789(n)`
-/

namespace A168580.P9388798652723663659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005097 (n + 2) + (A005097 (n + 2) - A016789 n)

end

end A168580.P9388798652723663659

namespace A168580

/-- `A005097(n+2)+A005097(n+2)-A016789(n)` -/
def P9388798652723663659.Spec : Prop :=
  ∀ n, P9388798652723663659.a n = A168580 (n + 1)

end A168580

/-! ## A168580.P10669620597883933235

`A067076(n+2)+A067076(n+2)-A008585(n)`
-/

namespace A168580.P10669620597883933235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067076 (n + 2) + (A067076 (n + 2) - A008585 n)

end

end A168580.P10669620597883933235

namespace A168580

/-- `A067076(n+2)+A067076(n+2)-A008585(n)` -/
def P10669620597883933235.Spec : Prop :=
  ∀ n, P10669620597883933235.a n = A168580 (n + 1)

end A168580

/-! ## A168580.P1339733012887152445

`A173072(n+3)+1-n`
-/

namespace A168580.P1339733012887152445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173072 (n + 3) + (1 - (n : ℤ))

end

end A168580.P1339733012887152445

namespace A168580

/-- `A173072(n+3)+1-n` -/
def P1339733012887152445.Spec : Prop :=
  ∀ n, P1339733012887152445.a n = A168580 (n + 1)

theorem P1339733012887152445.correct : P1339733012887152445.Spec := by
  intro n
  simp only [A168580, Nat.add_sub_cancel, A168580.P1339733012887152445.a, A168580.P12688489534614723486.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A173072, A173072.P15776542700832946734.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A168580

/-! ## A168580.P11431856198486120745

`A131733(n+3)+2-n`
-/

namespace A168580.P11431856198486120745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131733 (n + 3) + (2 - (n : ℤ))

end

end A168580.P11431856198486120745

namespace A168580

/-- `A131733(n+3)+2-n` -/
def P11431856198486120745.Spec : Prop :=
  ∀ n, P11431856198486120745.a n = A168580 (n + 1)

theorem P11431856198486120745.correct : P11431856198486120745.Spec := by
  intro n
  simp only [A168580, Nat.add_sub_cancel, A168580.P11431856198486120745.a, A168580.P12688489534614723486.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A131733, A131733.P2209471722626615476.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A168580

/-! ## A168580.P11212754581247400571

`A014689(n+3)-2*n`
-/

namespace A168580.P11212754581247400571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014689 (n + 3) - (2 * n : ℤ)

end

end A168580.P11212754581247400571

namespace A168580

/-- `A014689(n+3)-2*n` -/
def P11212754581247400571.Spec : Prop :=
  ∀ n, P11212754581247400571.a n = A168580 (n + 1)

theorem P11212754581247400571.correct : P11212754581247400571.Spec := by
  intro n
  simp only [A168580, Nat.add_sub_cancel, A168580.P11212754581247400571.a, A168580.P12688489534614723486.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A014689, A014689.P6286543075765329050.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A168580

/-! ## A168580.P2620395132266427297

`2*A129768(n+3)-n`
-/

namespace A168580.P2620395132266427297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A129768 (n + 3) - (n : ℤ)

end

end A168580.P2620395132266427297

namespace A168580

/-- `2*A129768(n+3)-n` -/
def P2620395132266427297.Spec : Prop :=
  ∀ n, P2620395132266427297.a n = A168580 (n + 1)

end A168580

/-! ## A168580.P13938089308956252875

`A086801(n+3)-3*n`
-/

namespace A168580.P13938089308956252875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086801 (n + 3) - (3 * n : ℤ)

end

end A168580.P13938089308956252875

namespace A168580

/-- `A086801(n+3)-3*n` -/
def P13938089308956252875.Spec : Prop :=
  ∀ n, P13938089308956252875.a n = A168580 (n + 1)

theorem P13938089308956252875.correct : P13938089308956252875.Spec := by
  intro n
  simp only [A168580, Nat.add_sub_cancel, A168580.P13938089308956252875.a, A168580.P12688489534614723486.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A086801, A086801.P17699144881820784956.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A168580

/-! ## A168580.P3659006883270856695

`A014692(n+3)-Δ[n²]`
-/

namespace A168580.P3659006883270856695
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014692 (n + 3) - ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A168580.P3659006883270856695

namespace A168580

/-- `A014692(n+3)-Δ[n²]` -/
def P3659006883270856695.Spec : Prop :=
  ∀ n, P3659006883270856695.a n = A168580 (n + 1)

theorem P3659006883270856695.correct : P3659006883270856695.Spec := by
  intro n
  simp only [A168580, Nat.add_sub_cancel, A168580.P3659006883270856695.f1, A168580.P3659006883270856695.a, A168580.P12688489534614723486.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A014692, A014692.P2004927767556050134.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A168580

/-! ## A168580.P10173009136295348753

`A006005(n+3)-3*(n+1)`
-/

namespace A168580.P10173009136295348753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (n + 3) - (3 * (n + 1) : ℤ)

end

end A168580.P10173009136295348753

namespace A168580

/-- `A006005(n+3)-3*(n+1)` -/
def P10173009136295348753.Spec : Prop :=
  ∀ n, P10173009136295348753.a n = A168580 (n + 1)

theorem P10173009136295348753.correct : P10173009136295348753.Spec := by
  intro n
  simp only [A168580, Nat.add_sub_cancel, A168580.P10173009136295348753.a, A168580.P12688489534614723486.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A006005, A006005.P1228063357782503489.a, A000007, A000007.P6599383543502402472.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A168580

/-! ## A168580.P1057652017414802045

`A006093(n+3)-(3*n+2)`
-/

namespace A168580.P1057652017414802045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (n + 3) - (3 * n + 2 : ℤ)

end

end A168580.P1057652017414802045

namespace A168580

/-- `A006093(n+3)-(3*n+2)` -/
def P1057652017414802045.Spec : Prop :=
  ∀ n, P1057652017414802045.a n = A168580 (n + 1)

theorem P1057652017414802045.correct : P1057652017414802045.Spec := by
  intro n
  simp only [A168580, Nat.add_sub_cancel, A168580.P1057652017414802045.a, A168580.P12688489534614723486.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A006093, A006093.P2906174024863549003.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A168580

/-! ## A168580.P17025315877127270027

`∑[Δ[A000040(n+2)]-2]-(n-2)`
-/

namespace A168580.P17025315877127270027
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - ((n : ℤ) - 2)

end

end A168580.P17025315877127270027

namespace A168580

/-- `∑[Δ[A000040(n+2)]-2]-(n-2)` -/
def P17025315877127270027.Spec : Prop :=
  ∀ n, P17025315877127270027.a n = A168580 (n + 1)

end A168580

/-!
# A168582: a(n) = (4*n^3 - 6*n^2 + 8*n + 9 + 3*(-1)^n)/12.

The programs for A168582, the canonical program `A168582.P14162484879938655251` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A168582 has offset 0).

The definition of A168582 is `verified`: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A168582.anchor (n : ℕ) : (A168582 n : ℚ) = ((4 * n ^ 3 : ℤ) - (6 * n ^ 2 : ℤ) + (8 * n : ℤ) + 9 + 3 * (-1) ^ n : ℚ) / 12` in `Proof.A168.A168582`. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A168582.P10175646264532129625

`ogf((1-2x+2x^2+2x^3+x^4)/(1-3x+2x^2+2x^3-3x^4+x^5))`
-/

namespace A168582.P10175646264532129625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -2, 2, 2, 1] [1, -3, 2, 2, -3, 1] n

end

end A168582.P10175646264532129625

namespace A168582

/-- `ogf((1-2x+2x^2+2x^3+x^4)/(1-3x+2x^2+2x^3-3x^4+x^5))` -/
def P10175646264532129625.Spec : Prop :=
  ∀ n, P10175646264532129625.a n = A168582 n

end A168582

/-! ## A168582.P14162484879938655251

`(4*n^3-6*n²+8*n+9+3*(-1)^n)/12`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A168582

/-- `(4*n^3-6*n²+8*n+9+3*(-1)^n)/12` -/
def P14162484879938655251.Spec : Prop :=
  ∀ n, P14162484879938655251.a n = (A168582 n : ℚ)

end A168582

/-! ## A168582.P7016128838405315783

`∑[or(1, n²)]-n²`
-/

namespace A168582.P7016128838405315783
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (n ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (n ^ 2 : ℤ)

end

end A168582.P7016128838405315783

namespace A168582

/-- `∑[or(1, n²)]-n²` -/
def P7016128838405315783.Spec : Prop :=
  ∀ n, P7016128838405315783.a n = A168582 n

end A168582

/-! ## A168582.P15298190336320720679

`∑[(1-n)²-and(1, n)]+n`
-/

namespace A168582.P15298190336320720679
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - (n : ℤ)) ^ 2 - (Nat.land 1 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A168582.P15298190336320720679

namespace A168582

/-- `∑[(1-n)²-and(1, n)]+n` -/
def P15298190336320720679.Spec : Prop :=
  ∀ n, P15298190336320720679.a n = A168582 n

end A168582

/-! ## A168582.P14190392536880297145

`n-∑[and(1, n)-(1-n)²]`
-/

namespace A168582.P14190392536880297145
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.land 1 n : ℤ) - (1 - (n : ℤ)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A168582.P14190392536880297145

namespace A168582

/-- `n-∑[and(1, n)-(1-n)²]` -/
def P14190392536880297145.Spec : Prop :=
  ∀ n, P14190392536880297145.a n = A168582 n

end A168582

/-! ## A168582.P4937081964516017521

`or(1, a(n-1)+(1-n)²)` with `a(0)=1`
-/

namespace A168582.P4937081964516017521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.lor 1 (a (n - 1) + (1 - (n : ℤ)) ^ 2)

end

end A168582.P4937081964516017521

namespace A168582

/-- `or(1, a(n-1)+(1-n)²)` -/
def P4937081964516017521.Spec : Prop :=
  ∀ n, P4937081964516017521.a n = A168582 n

end A168582

/-! ## A168582.P10579148587387475081

`∑[(n+1)%2+n²]-n²`
-/

namespace A168582.P10579148587387475081
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) % 2 + n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (n ^ 2 : ℤ)

end

end A168582.P10579148587387475081

namespace A168582

/-- `∑[(n+1)%2+n²]-n²` -/
def P10579148587387475081.Spec : Prop :=
  ∀ n, P10579148587387475081.a n = A168582 n

end A168582

/-! ## A168582.P3981915226293881978

`∑[∑[a(n-2)+4]]` with `a(0)=1, a(1)=-1, a(2)=2, a(3)=2`
-/

namespace A168582.P3981915226293881978
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1, -1, 2, 2] fun n f2 =>
  f2 (n - 2) + 4

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A168582.P3981915226293881978

namespace A168582

/-- `∑[∑[a(n-2)+4]]` -/
def P3981915226293881978.Spec : Prop :=
  ∀ n, P3981915226293881978.a n = A168582 n

end A168582

/-! ## A168582.P12961722863891460483

`∑[gcd(2, n)+(1-n)²]-(n+2)`
-/

namespace A168582.P12961722863891460483
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.gcd 2 n : ℤ) + (1 - (n : ℤ)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n + 2 : ℤ)

end

end A168582.P12961722863891460483

namespace A168582

/-- `∑[gcd(2, n)+(1-n)²]-(n+2)` -/
def P12961722863891460483.Spec : Prop :=
  ∀ n, P12961722863891460483.a n = A168582 n

end A168582

/-! ## A168582.P12937711257285568180

`ceil((C(2*n, 3)+2*n+1)/4)`
-/

namespace A168582.P12937711257285568180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Nat.choose (2 * n) 3 + (2 * n + 1) : ℚ) / 4⌉

end

end A168582.P12937711257285568180

namespace A168582

/-- `ceil((C(2*n, 3)+2*n+1)/4)` -/
def P12937711257285568180.Spec : Prop :=
  ∀ n, P12937711257285568180.a n = A168582 n

end A168582

/-! ## A168582.P11583564143772174183

`and(1, n+1)+a(n-1)+(1-n)²` with `a(0)=1`
-/

namespace A168582.P11583564143772174183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (Nat.land 1 (n + 1) : ℤ) + (a (n - 1) + (1 - (n : ℤ)) ^ 2)

end

end A168582.P11583564143772174183

namespace A168582

/-- `and(1, n+1)+a(n-1)+(1-n)²` -/
def P11583564143772174183.Spec : Prop :=
  ∀ n, P11583564143772174183.a n = A168582 n

end A168582

/-! ## A168582.P3128532439690044926

`floor(A037235(n)/2)+1`
-/

namespace A168582.P3128532439690044926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A037235 n : ℚ) / 2⌋ + 1

end

end A168582.P3128532439690044926

namespace A168582

/-- `floor(A037235(n)/2)+1` -/
def P3128532439690044926.Spec : Prop :=
  ∀ n, P3128532439690044926.a n = A168582 n

end A168582

/-! ## A168582.P18026887757724885573

`A004526(n)+∑[(1-n)²]`
-/

namespace A168582.P18026887757724885573
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - (n : ℤ)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A168582.P18026887757724885573

namespace A168582

/-- `A004526(n)+∑[(1-n)²]` -/
def P18026887757724885573.Spec : Prop :=
  ∀ n, P18026887757724885573.a n = A168582 n

end A168582

/-! ## A168582.P1914686578268065520

`∑[n²]+A008619(n)-n²`
-/

namespace A168582.P1914686578268065520
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + (A008619 n - (n ^ 2 : ℤ))

end

end A168582.P1914686578268065520

namespace A168582

/-- `∑[n²]+A008619(n)-n²` -/
def P1914686578268065520.Spec : Prop :=
  ∀ n, P1914686578268065520.a n = A168582 n

end A168582

/-! ## A168582.P817340364892570275

`2*A116731(n)-a(n-1)` with `a(0)=1`
-/

namespace A168582.P817340364892570275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 * A116731 n - a (n - 1)

end

end A168582.P817340364892570275

namespace A168582

/-- `2*A116731(n)-a(n-1)` -/
def P817340364892570275.Spec : Prop :=
  ∀ n, P817340364892570275.a n = A168582 n

end A168582

/-! ## A168582.P8990163153993560811

`A137928(n-1)+a(n-1)` with `a(0)=1, a(1)=1`
-/

namespace A168582.P8990163153993560811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A137928 (n - 1) + a (n - 1)

end

end A168582.P8990163153993560811

namespace A168582

/-- `A137928(n-1)+a(n-1)` -/
def P8990163153993560811.Spec : Prop :=
  ∀ n, P8990163153993560811.a n = A168582 n

end A168582

/-! ## A168582.P17821131773697804967

`A225972(n)+A158416(n)`
-/

namespace A168582.P17821131773697804967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225972 n + A158416 n

end

end A168582.P17821131773697804967

namespace A168582

/-- `A225972(n)+A158416(n)` -/
def P17821131773697804967.Spec : Prop :=
  ∀ n, P17821131773697804967.a n = A168582 n

end A168582

/-! ## A168582.P8191838696722954675

`A056520(n)-A014848(n)`
-/

namespace A168582.P8191838696722954675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056520 n - A014848 n

end

end A168582.P8191838696722954675

namespace A168582

/-- `A056520(n)-A014848(n)` -/
def P8191838696722954675.Spec : Prop :=
  ∀ n, P8191838696722954675.a n = A168582 n

end A168582

/-! ## A168582.P1271724332132570609

`A274324(n)-A005581(n)`
-/

namespace A168582.P1271724332132570609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274324 n - A005581 n

end

end A168582.P1271724332132570609

namespace A168582

/-- `A274324(n)-A005581(n)` -/
def P1271724332132570609.Spec : Prop :=
  ∀ n, P1271724332132570609.a n = A168582 n

end A168582

/-! ## A168582.P10213707249572827022

`A100705(n)-A213045(n)`
-/

namespace A168582.P10213707249572827022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100705 n - A213045 n

end

end A168582.P10213707249572827022

namespace A168582

/-- `A100705(n)-A213045(n)` -/
def P10213707249572827022.Spec : Prop :=
  ∀ n, P10213707249572827022.a n = A168582 n

end A168582

/-!
# A168583: The number of ways of partitioning the multiset {1,1,2,3,...,n-1} into exactly three nonempty parts.

The programs for A168583, the canonical program `A168583.P3956923535721516061` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A168583 has offset 3).

The definition of A168583 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A168583.P9241974609461626606

`ogf((1-2x+3x^2)/(1-6x+11x^2-6x^3))`
-/

namespace A168583.P9241974609461626606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -2, 3] [1, -6, 11, -6] n

end

end A168583.P9241974609461626606

namespace A168583

/-- `ogf((1-2x+3x^2)/(1-6x+11x^2-6x^3))` -/
def P9241974609461626606.Spec : Prop :=
  ∀ n, P9241974609461626606.a n = A168583 (n + 3)

end A168583

/-! ## A168583.P3956923535721516061

`3^(n+1)-3*2^n+1`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A168583

/-- `3^(n+1)-3*2^n+1` -/
def P3956923535721516061.Spec : Prop :=
  ∀ n, P3956923535721516061.a n = A168583 (n + 3)

theorem P3956923535721516061.correct : P3956923535721516061.Spec := by
  intro n
  simp only [A168583, Nat.add_sub_cancel]

end A168583

/-! ## A168583.P13637568043871279166

`∑[ogf((1-2x+3x^2)/(1-5x+6x^2))]`
-/

namespace A168583.P13637568043871279166
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -2, 3] [1, -5, 6] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A168583.P13637568043871279166

namespace A168583

/-- `∑[ogf((1-2x+3x^2)/(1-5x+6x^2))]` -/
def P13637568043871279166.Spec : Prop :=
  ∀ n, P13637568043871279166.a n = A168583 (n + 3)

end A168583

/-! ## A168583.P11114391805609775317

`∑[ceil(A166060(n)/2)]`
-/

namespace A168583.P11114391805609775317
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A166060 n : ℚ) / 2⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A168583.P11114391805609775317

namespace A168583

/-- `∑[ceil(A166060(n)/2)]` -/
def P11114391805609775317.Spec : Prop :=
  ∀ n, P11114391805609775317.a n = A168583 (n + 3)

end A168583

/-! ## A168583.P3500564373235877626

`Δ[A094033(n+1)+n]`
-/

namespace A168583.P3500564373235877626
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094033 (n + 1) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A168583.P3500564373235877626

namespace A168583

/-- `Δ[A094033(n+1)+n]` -/
def P3500564373235877626.Spec : Prop :=
  ∀ n, P3500564373235877626.a n = A168583 (n + 3)

end A168583

/-! ## A168583.P3510658156651857601

`Δ[A094734(n+1)+n]`
-/

namespace A168583.P3510658156651857601
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094734 (n + 1) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A168583.P3510658156651857601

namespace A168583

/-- `Δ[A094734(n+1)+n]` -/
def P3510658156651857601.Spec : Prop :=
  ∀ n, P3510658156651857601.a n = A168583 (n + 3)

end A168583

/-! ## A168583.P3157173137723687599

`2*(a(n-1)+A007051(n)-1)` with `a(0)=1`
-/

namespace A168583.P3157173137723687599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 * (a (n - 1) + (A007051 n - 1))

end

end A168583.P3157173137723687599

namespace A168583

/-- `2*(a(n-1)+A007051(n)-1)` -/
def P3157173137723687599.Spec : Prop :=
  ∀ n, P3157173137723687599.a n = A168583 (n + 3)

end A168583

/-! ## A168583.P15062400153098036295

`∑[A056182(n)+2^((2*n)%(n+1))]`
-/

namespace A168583.P15062400153098036295
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056182 n + (2 ^ (2 * n % (n + 1)) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A168583.P15062400153098036295

namespace A168583

/-- `∑[A056182(n)+2^((2*n)%(n+1))]` -/
def P15062400153098036295.Spec : Prop :=
  ∀ n, P15062400153098036295.a n = A168583 (n + 3)

end A168583

/-! ## A168583.P3513524415454915030

`∑[A048473(n)-floor(∑[3*2^(n-2)])]`
-/

namespace A168583.P3513524415454915030
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  3 * (2 : ℚ) ^ ((n : ℤ) - 2 : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048473 n - ⌊∑ j ∈ Finset.range (n + 1), f2 j⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A168583.P3513524415454915030

namespace A168583

/-- `∑[A048473(n)-floor(∑[3*2^(n-2)])]` -/
def P3513524415454915030.Spec : Prop :=
  ∀ n, P3513524415454915030.a n = A168583 (n + 3)

end A168583

/-! ## A168583.P17470831059307755032

`∑[A083313(n)+A001047(n)]`
-/

namespace A168583.P17470831059307755032
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083313 n + A001047 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A168583.P17470831059307755032

namespace A168583

/-- `∑[A083313(n)+A001047(n)]` -/
def P17470831059307755032.Spec : Prop :=
  ∀ n, P17470831059307755032.a n = A168583 (n + 3)

end A168583

/-! ## A168583.P16008036448520907501

`∑[A008776(n)-A003945(n)]`
-/

namespace A168583.P16008036448520907501
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008776 n - A003945 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A168583.P16008036448520907501

namespace A168583

/-- `∑[A008776(n)-A003945(n)]` -/
def P16008036448520907501.Spec : Prop :=
  ∀ n, P16008036448520907501.a n = A168583 (n + 3)

end A168583

/-! ## A168583.P1748172795241567607

`Δ[A036550(n)-A000079(n)]`
-/

namespace A168583.P1748172795241567607
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036550 n - A000079 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A168583.P1748172795241567607

namespace A168583

/-- `Δ[A036550(n)-A000079(n)]` -/
def P1748172795241567607.Spec : Prop :=
  ∀ n, P1748172795241567607.a n = A168583 (n + 3)

end A168583

/-! ## A168583.P15451079411303894288

`∑[Δ[A000244(n)]-A003945(n)]`
-/

namespace A168583.P15451079411303894288
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000244 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - A003945 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A168583.P15451079411303894288

namespace A168583

/-- `∑[Δ[A000244(n)]-A003945(n)]` -/
def P15451079411303894288.Spec : Prop :=
  ∀ n, P15451079411303894288.a n = A168583 (n + 3)

end A168583

/-! ## A168583.P1415341140150572692

`floor(A002783(n)+A002783(n)/2)`
-/

namespace A168583.P1415341140150572692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A002783 n : ℚ) + (A002783 n : ℚ) / 2⌋

end

end A168583.P1415341140150572692

namespace A168583

/-- `floor(A002783(n)+A002783(n)/2)` -/
def P1415341140150572692.Spec : Prop :=
  ∀ n, P1415341140150572692.a n = A168583 (n + 3)

end A168583

/-! ## A168583.P15739383521642224877

`abs(3*(A024023(n)-A000225(n))+1)`
-/

namespace A168583.P15739383521642224877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |3 * (A024023 n - A000225 n) + 1|

end

end A168583.P15739383521642224877

namespace A168583

/-- `abs(3*(A024023(n)-A000225(n))+1)` -/
def P15739383521642224877.Spec : Prop :=
  ∀ n, P15739383521642224877.a n = A168583 (n + 3)

end A168583

/-! ## A168583.P9955016190705046451

`Δ[A053156(n+1)-A000295(n+1)]`
-/

namespace A168583.P9955016190705046451
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053156 (n + 1) - A000295 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A168583.P9955016190705046451

namespace A168583

/-- `Δ[A053156(n+1)-A000295(n+1)]` -/
def P9955016190705046451.Spec : Prop :=
  ∀ n, P9955016190705046451.a n = A168583 (n + 3)

end A168583

/-! ## A168583.P3728500966705873200

`∑[A056182(n)+A020639(A000010(n+1))^(n-1)]`
-/

namespace A168583.P3728500966705873200
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A056182 n : ℚ) + (A020639 (A000010 (n + 1)).toNat : ℚ) ^ ((n : ℤ) - 1 : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A168583.P3728500966705873200

namespace A168583

/-- `∑[A056182(n)+A020639(A000010(n+1))^(n-1)]` -/
def P3728500966705873200.Spec : Prop :=
  ∀ n, P3728500966705873200.a n = (A168583 (n + 3) : ℚ)

end A168583

/-! ## A168583.P16220073393675819363

`(A091344(n+1)+1)/2`
-/

namespace A168583.P16220073393675819363
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A091344 (n + 1) + 1 : ℚ) / 2

end

end A168583.P16220073393675819363

namespace A168583

/-- `(A091344(n+1)+1)/2` -/
def P16220073393675819363.Spec : Prop :=
  ∀ n, P16220073393675819363.a n = (A168583 (n + 3) : ℚ)

theorem P16220073393675819363.correct : P16220073393675819363.Spec := by
  intro n
  simp only [A168583, Nat.add_sub_cancel, A168583.P16220073393675819363.a, A168583.P3956923535721516061.a, A091344, A091344.P9314832849917747821.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A168583

/-! ## A168583.P14127419059413008964

`(A002783(n+1)-A000225(n+1))/2`
-/

namespace A168583.P14127419059413008964
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002783 (n + 1) - A000225 (n + 1) : ℚ) / 2

end

end A168583.P14127419059413008964

namespace A168583

/-- `(A002783(n+1)-A000225(n+1))/2` -/
def P14127419059413008964.Spec : Prop :=
  ∀ n, P14127419059413008964.a n = (A168583 (n + 3) : ℚ)

theorem P14127419059413008964.correct : P14127419059413008964.Spec := by
  intro n
  simp only [A168583, Nat.add_sub_cancel, A168583.P14127419059413008964.a, A168583.P3956923535721516061.a, A000225, A000225.P6535533121115206393.a, A002783, A002783.P13135652513880479999.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A168583

/-!
# A168584: Number of ways of partitioning the multiset {1,1,2,3,...,n-1} into exactly four nonempty parts.

The programs for A168584, the canonical program `A168584.P5142154675770972157` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A168584 has offset 4).

The definition of A168584 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A168584.P5142154675770972157

`(5*4^(n+1)-3^(n+3)+3*2^(n+2)-2)/3`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A168584

/-- `(5*4^(n+1)-3^(n+3)+3*2^(n+2)-2)/3` -/
def P5142154675770972157.Spec : Prop :=
  ∀ n, P5142154675770972157.a n = (A168584 (n + 4) : ℚ)

end A168584

/-! ## A168584.P4909534845770880741

`4*a(n-1)+A003063(n+2)+2` with `a(0)=1`
-/

namespace A168584.P4909534845770880741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  4 * a (n - 1) + (A003063 (n + 2) + 2)

end

end A168584.P4909534845770880741

namespace A168584

/-- `4*a(n-1)+A003063(n+2)+2` -/
def P4909534845770880741.Spec : Prop :=
  ∀ n, P4909534845770880741.a n = A168584 (n + 4)

end A168584

/-! ## A168584.P1817298917167204594

`A016269(n)-∑[A020522(n)]`
-/

namespace A168584.P1817298917167204594
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020522 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016269 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A168584.P1817298917167204594

namespace A168584

/-- `A016269(n)-∑[A020522(n)]` -/
def P1817298917167204594.Spec : Prop :=
  ∀ n, P1817298917167204594.a n = A168584 (n + 4)

end A168584

/-! ## A168584.P12069347279217044229

`∑[A027650(n)-A020522(n)]`
-/

namespace A168584.P12069347279217044229
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027650 n - A020522 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A168584.P12069347279217044229

namespace A168584

/-- `∑[A027650(n)-A020522(n)]` -/
def P12069347279217044229.Spec : Prop :=
  ∀ n, P12069347279217044229.a n = A168584 (n + 4)

end A168584

/-! ## A168584.P13252086709314489289

`A223173(n+1)+∑[A004171(n)]`
-/

namespace A168584.P13252086709314489289
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004171 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223173 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A168584.P13252086709314489289

namespace A168584

/-- `A223173(n+1)+∑[A004171(n)]` -/
def P13252086709314489289.Spec : Prop :=
  ∀ n, P13252086709314489289.a n = A168584 (n + 4)

end A168584

/-! ## A168584.P5377010351809625594

`A028244(n+2)+∑[A171476(n)]`
-/

namespace A168584.P5377010351809625594
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171476 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028244 (n + 2) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A168584.P5377010351809625594

namespace A168584

/-- `A028244(n+2)+∑[A171476(n)]` -/
def P5377010351809625594.Spec : Prop :=
  ∀ n, P5377010351809625594.a n = A168584 (n + 4)

end A168584

/-! ## A168584.P1003581070506700885

`record[A084214(A004273(n))-A001047(n)]`
-/

namespace A168584.P1003581070506700885
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084214 (A004273 n).toNat - A001047 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A168584.P1003581070506700885

namespace A168584

/-- `record[A084214(A004273(n))-A001047(n)]` -/
def P1003581070506700885.Spec : Prop :=
  ∀ n, P1003581070506700885.a n = A168584 (n + 4)

end A168584

/-! ## A168584.P11755573592087475603

`A016269(n)-(A006095(n+1)+A006095(n+1))`
-/

namespace A168584.P11755573592087475603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016269 n - (A006095 (n + 1) + A006095 (n + 1))

end

end A168584.P11755573592087475603

namespace A168584

/-- `A016269(n)-(A006095(n+1)+A006095(n+1))` -/
def P11755573592087475603.Spec : Prop :=
  ∀ n, P11755573592087475603.a n = A168584 (n + 4)

end A168584

/-! ## A168584.P13590238722081869850

`A032263(n+2)+A171477(n)+A032263(n+2)`
-/

namespace A168584.P13590238722081869850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032263 (n + 2) + (A171477 n + A032263 (n + 2))

end

end A168584.P13590238722081869850

namespace A168584

/-- `A032263(n+2)+A171477(n)+A032263(n+2)` -/
def P13590238722081869850.Spec : Prop :=
  ∀ n, P13590238722081869850.a n = A168584 (n + 4)

end A168584

/-!
# A168585: Number of ways of partitioning the multiset {1,1,2,3,...,n-1} into exactly five nonempty parts.

The programs for A168585, there is no canonical definition to state claims against.
-/

/-! ## A168585.P8070812328943905006

`A241500(∑[n+4]+11)`
-/

namespace A168585.P8070812328943905006
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241500 (∑ j ∈ Finset.range (n + 1), f1 j + 11)

end

end A168585.P8070812328943905006

/-!
# A168587: Smallest digit sum of an n-digit prime with only digits 0 and 1 (or 0, if no such prime exists).

The programs for A168587, the canonical program `A168587.P5996363685767537479` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A168587 has offset 1).

The definition of A168587 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A168587.P5996363685767537479

`a(n-1)` with `a(0)=0, a(1)=2, a(2)=2, a(3)=0, a(4)=4, a(5)=5, a(6)=4`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A168587

/-- `a(n-1)` -/
def P5996363685767537479.Spec : Prop :=
  ∀ n, (P5996363685767537479.a n : ℤ) = A168587 (n + 1)

theorem P5996363685767537479.correct : P5996363685767537479.Spec := by
  intro n
  simp only [A168587, Nat.add_sub_cancel]

end A168587

/-!
# A168589: a(n) = (2 - 3^n)*(-1)^n.

The programs for A168589, the canonical program `A168589.P18235169709934923945` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A168589 has offset 0).

The definition of A168589 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(2-3^n)*(-1)^n` (program `A168589.P18235169709934923945`, by `A168589.P18235169709934923945.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A168589.P12191029512490173131

`ogf((1+5x)/(1+4x+3x^2))`
-/

namespace A168589.P12191029512490173131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 5] [1, 4, 3] n

end

end A168589.P12191029512490173131

namespace A168589

/-- `ogf((1+5x)/(1+4x+3x^2))` -/
def P12191029512490173131.Spec : Prop :=
  ∀ n, P12191029512490173131.a n = A168589 n

end A168589

/-! ## A168589.P18235169709934923945

`(2-3^n)*(-1)^n`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A168589

/-- `(2-3^n)*(-1)^n` -/
def P18235169709934923945.Spec : Prop :=
  ∀ n, P18235169709934923945.a n = A168589 n

theorem P18235169709934923945.correct : P18235169709934923945.Spec := by
  intro n
  simp only [A168589]

end A168589

/-! ## A168589.P9149186073342623020

`and(2-(-3)^n, -5)`
-/

namespace A168589.P9149186073342623020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (2 - (-3) ^ n) (-5)

end

end A168589.P9149186073342623020

namespace A168589

/-- `and(2-(-3)^n, -5)` -/
def P9149186073342623020.Spec : Prop :=
  ∀ n, P9149186073342623020.a n = A168589 n

end A168589

/-! ## A168589.P9902601630038710213

`or(4, 1-(-3)^n)-3`
-/

namespace A168589.P9902601630038710213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 4 (1 - (-3) ^ n) - 3

end

end A168589.P9902601630038710213

namespace A168589

/-- `or(4, 1-(-3)^n)-3` -/
def P9902601630038710213.Spec : Prop :=
  ∀ n, P9902601630038710213.a n = A168589 n

end A168589

/-! ## A168589.P11306231314624733633

`xor(1-3^n, (-1)^n)`
-/

namespace A168589.P11306231314624733633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (1 - (3 ^ n : ℤ)) ((-1) ^ n)

end

end A168589.P11306231314624733633

namespace A168589

/-- `xor(1-3^n, (-1)^n)` -/
def P11306231314624733633.Spec : Prop :=
  ∀ n, P11306231314624733633.a n = A168589 n

end A168589

/-! ## A168589.P13734281788264920475

`-(3*a(n-2)+4*a(n-1))` with `a(0)=1, a(1)=1`
-/

namespace A168589.P13734281788264920475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  -(3 * a (n - 2) + 4 * a (n - 1))

end

end A168589.P13734281788264920475

namespace A168589

/-- `-(3*a(n-2)+4*a(n-1))` -/
def P13734281788264920475.Spec : Prop :=
  ∀ n, P13734281788264920475.a n = A168589 n

theorem P13734281788264920475.correct : P13734281788264920475.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A168589, Nat.add_sub_cancel, A168589.P13734281788264920475.a, A168589.P18235169709934923945.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A168589, Nat.add_sub_cancel, A168589.P13734281788264920475.a, A168589.P18235169709934923945.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [h1, h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A168589

/-! ## A168589.P12262291674242480110

`a(n-2)-4*(a(n-1)+a(n-2))` with `a(0)=1, a(1)=1`
-/

namespace A168589.P12262291674242480110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 2) - 4 * (a (n - 1) + a (n - 2))

end

end A168589.P12262291674242480110

namespace A168589

/-- `a(n-2)-4*(a(n-1)+a(n-2))` -/
def P12262291674242480110.Spec : Prop :=
  ∀ n, P12262291674242480110.a n = A168589 n

theorem P12262291674242480110.correct : P12262291674242480110.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A168589, Nat.add_sub_cancel, A168589.P12262291674242480110.a, A168589.P18235169709934923945.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A168589, Nat.add_sub_cancel, A168589.P12262291674242480110.a, A168589.P18235169709934923945.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [h1, h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A168589

/-! ## A168589.P125083474219413151

`a(n-2)-4*a(n-1)-4*a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A168589.P125083474219413151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 2) - 4 * a (n - 1) - 4 * a (n - 2)

end

end A168589.P125083474219413151

namespace A168589

/-- `a(n-2)-4*a(n-1)-4*a(n-2)` -/
def P125083474219413151.Spec : Prop :=
  ∀ n, P125083474219413151.a n = A168589 n

theorem P125083474219413151.correct : P125083474219413151.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A168589, Nat.add_sub_cancel, A168589.P125083474219413151.a, A168589.P18235169709934923945.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A168589, Nat.add_sub_cancel, A168589.P125083474219413151.a, A168589.P18235169709934923945.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [h1, h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A168589

/-! ## A168589.P10578248854588551992

`Δ[xor(1, A084567(n))]`
-/

namespace A168589.P10578248854588551992
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A084567 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A168589.P10578248854588551992

namespace A168589

/-- `Δ[xor(1, A084567(n))]` -/
def P10578248854588551992.Spec : Prop :=
  ∀ n, P10578248854588551992.a n = A168589 n

end A168589

/-! ## A168589.P17600643295896456983

`A225883(n)+A083321(n)`
-/

namespace A168589.P17600643295896456983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225883 n + A083321 n

end

end A168589.P17600643295896456983

namespace A168589

/-- `A225883(n)+A083321(n)` -/
def P17600643295896456983.Spec : Prop :=
  ∀ n, P17600643295896456983.a n = A168589 n

end A168589

/-! ## A168589.P12323304869227440954

`A081630(n)-A010675(n)`
-/

namespace A168589.P12323304869227440954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081630 n - A010675 n

end

end A168589.P12323304869227440954

namespace A168589

/-- `A081630(n)-A010675(n)` -/
def P12323304869227440954.Spec : Prop :=
  ∀ n, P12323304869227440954.a n = A168589 n

end A168589

/-! ## A168589.P16962403931512241688

`A033999(n)-2*A076040(n)`
-/

namespace A168589.P16962403931512241688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n - 2 * A076040 n

end

end A168589.P16962403931512241688

namespace A168589

/-- `A033999(n)-2*A076040(n)` -/
def P16962403931512241688.Spec : Prop :=
  ∀ n, P16962403931512241688.a n = A168589 n

end A168589

/-! ## A168589.P8710935710041557476

`2*A033999(n)-A352779(n)`
-/

namespace A168589.P8710935710041557476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A033999 n - A352779 n

end

end A168589.P8710935710041557476

namespace A168589

/-- `2*A033999(n)-A352779(n)` -/
def P8710935710041557476.Spec : Prop :=
  ∀ n, P8710935710041557476.a n = A168589 n

end A168589

/-! ## A168589.P3807298084899409657

`A081630(n)-4*A000035(n)`
-/

namespace A168589.P3807298084899409657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081630 n - 4 * A000035 n

end

end A168589.P3807298084899409657

namespace A168589

/-- `A081630(n)-4*A000035(n)` -/
def P3807298084899409657.Spec : Prop :=
  ∀ n, P3807298084899409657.a n = A168589 n

end A168589

/-! ## A168589.P1546407533763365469

`2-Δ[A014983(n)]-and(4, A004767(n))`
-/

namespace A168589.P1546407533763365469
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014983 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (f1 (n + 1) - f1 n) - Int.land 4 (A004767 n)

end

end A168589.P1546407533763365469

namespace A168589

/-- `2-Δ[A014983(n)]-and(4, A004767(n))` -/
def P1546407533763365469.Spec : Prop :=
  ∀ n, P1546407533763365469.a n = A168589 n

end A168589

/-! ## A168589.P14041054749861096073

`A033999(n)-A024023(n)*A033999(n)`
-/

namespace A168589.P14041054749861096073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n - A024023 n * A033999 n

end

end A168589.P14041054749861096073

namespace A168589

/-- `A033999(n)-A024023(n)*A033999(n)` -/
def P14041054749861096073.Spec : Prop :=
  ∀ n, P14041054749861096073.a n = A168589 n

theorem P14041054749861096073.correct : P14041054749861096073.Spec := by
  intro n
  simp only [A168589, Nat.add_sub_cancel, A168589.P14041054749861096073.a, A168589.P18235169709934923945.a, A024023, A024023.P3457506902639293536.a, A033999, A033999.P17703899380244199787.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A168589

/-! ## A168589.P15458688103699999864

`A029858(n+1)*A033999(n+1)-A341463(n)`
-/

namespace A168589.P15458688103699999864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029858 (n + 1) * A033999 (n + 1) - A341463 n

end

end A168589.P15458688103699999864

namespace A168589

/-- `A029858(n+1)*A033999(n+1)-A341463(n)` -/
def P15458688103699999864.Spec : Prop :=
  ∀ n, P15458688103699999864.a n = A168589 n

end A168589

/-! ## A168589.P2696222021287335770

`A024023(n)/A033999(n+1)-A033999(n+1)`
-/

namespace A168589.P2696222021287335770
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A024023 n : ℚ) / (A033999 (n + 1) : ℚ) - (A033999 (n + 1) : ℚ)

end

end A168589.P2696222021287335770

namespace A168589

/-- `A024023(n)/A033999(n+1)-A033999(n+1)` -/
def P2696222021287335770.Spec : Prop :=
  ∀ n, P2696222021287335770.a n = (A168589 n : ℚ)

end A168589

/-!
# A168592: G.f.: exp( Sum_{n>=1} A082758(n)*x^n/n ), where A082758(n) = sum of the squares of the trinomial coefficients in row n of triangle A027907.

The programs for A168592, there is no canonical definition to state claims against.
-/

/-! ## A168592.P10059100090463961744

`A333217(A321087(n+1))+A246867(n)`
-/

namespace A168592.P10059100090463961744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333217 (A321087 (n + 1)).toNat + A246867 n

end

end A168592.P10059100090463961744

/-!
# A168593: G.f.: exp( Sum_{n>=1} A132303(n)*x^n/n ), where A132303(n) = sum of the cubes of the trinomial coefficients in row n of triangle A027907.

The programs for A168593, there is no canonical definition to state claims against.
-/

/-! ## A168593.P6138521497999371729

`xor(A008619(n), A172475(A212425(n+1)))`
-/

namespace A168593.P6138521497999371729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A008619 n) (A172475 (A212425 (n + 1)).toNat)

end

end A168593.P6138521497999371729

/-!
# A168594: G.f. A(x) satisfies: A(x) = F(x/A(x)) where A(x*F(x)) = F(x) = g.f. of A133053, which is the squares of Motzkin numbers (A001006).

The programs for A168594, there is no canonical definition to state claims against.
-/

/-! ## A168594.P15158135934887938715

`A004788(A053500(n))+A001472(n)`
-/

namespace A168594.P15158135934887938715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004788 (A053500 n).toNat + A001472 n

end

end A168594.P15158135934887938715

/-! ## A168594.P12503625169314759481

`A053498(n)+A004788(A053500(n))`
-/

namespace A168594.P12503625169314759481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053498 n + A004788 (A053500 n).toNat

end

end A168594.P12503625169314759481

/-! ## A168594.P1513430391475995466

`A255072(A181997(n)+A000695(n))`
-/

namespace A168594.P1513430391475995466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255072 (A181997 n + A000695 n).toNat

end

end A168594.P1513430391475995466

/-!
# A168595: a(n) = Sum_{k=0..2n} C(2n,k)*A027907(n,k) where A027907 is the triangle of trinomial coefficients.

The programs for A168595, there is no canonical definition to state claims against.
-/

/-! ## A168595.P11634211797120510112

`∑{#}[n, C(n, #)*C(2*n+#, 2*n-#)]`
-/

namespace A168595.P11634211797120510112
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), Nat.choose n k * Nat.choose (2 * n + k) ((2 * n : ℤ) - (k : ℤ)).toNat

end

end A168595.P11634211797120510112

/-! ## A168595.P12384094679889816158

`∏{e}[A020639(n+1)², #*A132306(n)]`
-/

namespace A168595.P12384094679889816158
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (Nat.factorization (f1 n).natAbs p : ℤ) * A132306 n

end

end A168595.P12384094679889816158

/-! ## A168595.P4224790421576588769

`A020639(A067720(n+1))*A132306(n)`
-/

namespace A168595.P4224790421576588769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A067720 (n + 1)).toNat * A132306 n

end

end A168595.P4224790421576588769

/-! ## A168595.P8614519445492881008

`∏{e}[A020639(n+1), A132306(n)*A132306(#)]`
-/

namespace A168595.P8614519445492881008
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A132306 n * A132306 (Nat.factorization (f1 n).natAbs p)

end

end A168595.P8614519445492881008

/-!
# A168596: a(n) = 2*a(n-1) - 1 with a(0)=14.

The programs for A168596, the canonical program `A168596.P5310469418955877328` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A168596 has offset 0).

The definition of A168596 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*a(n-1)-1` (program `A168596.P5310469418955877328`, by `A168596.P5310469418955877328.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A168596.P5419895815209657710

`13*2^n+1`
-/

namespace A168596.P5419895815209657710
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  13 * 2 ^ n + 1

end

end A168596.P5419895815209657710

namespace A168596

/-- `13*2^n+1` -/
def P5419895815209657710.Spec : Prop :=
  ∀ n, (P5419895815209657710.a n : ℤ) = A168596 n

theorem P5419895815209657710.correct : P5419895815209657710.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A168596, Nat.add_sub_cancel, A168596.P5419895815209657710.a, A168596.P5310469418955877328.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A168596, Nat.add_sub_cancel, A168596.P5419895815209657710.a, A168596.P5310469418955877328.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [← h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A168596

/-! ## A168596.P15309610886269400566

`ogf((14-15x)/(1-3x+2x^2))`
-/

namespace A168596.P15309610886269400566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [14, -15] [1, -3, 2] n

end

end A168596.P15309610886269400566

namespace A168596

/-- `ogf((14-15x)/(1-3x+2x^2))` -/
def P15309610886269400566.Spec : Prop :=
  ∀ n, P15309610886269400566.a n = A168596 n

end A168596

/-! ## A168596.P5310469418955877328

`2*a(n-1)-1` with `a(0)=14`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A168596

/-- `2*a(n-1)-1` -/
def P5310469418955877328.Spec : Prop :=
  ∀ n, P5310469418955877328.a n = A168596 n

theorem P5310469418955877328.correct : P5310469418955877328.Spec := by
  intro n
  simp only [A168596]

end A168596

/-! ## A168596.P515572421171249365

`∑[a(n-1)+a(n-1)]` with `a(0)=14, a(1)=13`
-/

namespace A168596.P515572421171249365
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [14, 13] fun n f1 =>
  f1 (n - 1) + f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A168596.P515572421171249365

namespace A168596

/-- `∑[a(n-1)+a(n-1)]` -/
def P515572421171249365.Spec : Prop :=
  ∀ n, (P515572421171249365.a n : ℤ) = A168596 n

end A168596

/-! ## A168596.P1951256132529521075

`floor(a(n-1)+a(n-1)-1)` with `a(0)=14`

`floor` is left out, it is the identity on integers.
-/

namespace A168596.P1951256132529521075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [14] fun n a =>
  a (n - 1) + (a (n - 1) - 1)

end

end A168596.P1951256132529521075

namespace A168596

/-- `floor(a(n-1)+a(n-1)-1)` -/
def P1951256132529521075.Spec : Prop :=
  ∀ n, P1951256132529521075.a n = A168596 n

theorem P1951256132529521075.correct : P1951256132529521075.Spec := by
  intro n
  simp only [A168596, Nat.add_sub_cancel, A168596.P1951256132529521075.a, A168596.P5310469418955877328.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A168596

/-! ## A168596.P5923580160524797151

`floor(a(n-1)-(1-a(n-1)))` with `a(0)=14`

`floor` is left out, it is the identity on integers.
-/

namespace A168596.P5923580160524797151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [14] fun n a =>
  a (n - 1) - (1 - a (n - 1))

end

end A168596.P5923580160524797151

namespace A168596

/-- `floor(a(n-1)-(1-a(n-1)))` -/
def P5923580160524797151.Spec : Prop :=
  ∀ n, P5923580160524797151.a n = A168596 n

theorem P5923580160524797151.correct : P5923580160524797151.Spec := by
  intro n
  simp only [A168596, Nat.add_sub_cancel, A168596.P5923580160524797151.a, A168596.P5310469418955877328.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A168596

/-! ## A168596.P10732329031710077342

`or(A083575(n), A083705(n))`
-/

namespace A168596.P10732329031710077342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A083575 n) (A083705 n)

end

end A168596.P10732329031710077342

namespace A168596

/-- `or(A083575(n), A083705(n))` -/
def P10732329031710077342.Spec : Prop :=
  ∀ n, P10732329031710077342.a n = A168596 n

end A168596

/-! ## A168596.P8438688400691971652

`xor(A020707(n), A083705(n))`
-/

namespace A168596.P8438688400691971652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A020707 n) (A083705 n)

end

end A168596.P8438688400691971652

namespace A168596

/-- `xor(A020707(n), A083705(n))` -/
def P8438688400691971652.Spec : Prop :=
  ∀ n, P8438688400691971652.a n = A168596 n

end A168596

/-! ## A168596.P7888509562205533080

`xor(A000051(n), A081808(n+1))`
-/

namespace A168596.P7888509562205533080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000051 n) (A081808 (n + 1))

end

end A168596.P7888509562205533080

namespace A168596

/-- `xor(A000051(n), A081808(n+1))` -/
def P7888509562205533080.Spec : Prop :=
  ∀ n, P7888509562205533080.a n = A168596 n

end A168596

/-! ## A168596.P8318246408545011287

`abs(A005009(n+1)-A000225(n))`
-/

namespace A168596.P8318246408545011287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A005009 (n + 1) - A000225 n|

end

end A168596.P8318246408545011287

namespace A168596

/-- `abs(A005009(n+1)-A000225(n))` -/
def P8318246408545011287.Spec : Prop :=
  ∀ n, P8318246408545011287.a n = A168596 n

end A168596

/-! ## A168596.P5638844211726193348

`abs(14*A000079(n)+1-Δ[A000225(n)])`
-/

namespace A168596.P5638844211726193348
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |14 * A000079 n + 1 - (f1 (n + 1) - f1 n)|

end

end A168596.P5638844211726193348

namespace A168596

/-- `abs(14*A000079(n)+1-Δ[A000225(n)])` -/
def P5638844211726193348.Spec : Prop :=
  ∀ n, P5638844211726193348.a n = A168596 n

end A168596

/-! ## A168596.P10760094771047729860

`Δ[A005029(n)+n]`
-/

namespace A168596.P10760094771047729860
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005029 n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A168596.P10760094771047729860

namespace A168596

/-- `Δ[A005029(n)+n]` -/
def P10760094771047729860.Spec : Prop :=
  ∀ n, P10760094771047729860.a n = A168596 n

theorem P10760094771047729860.correct : P10760094771047729860.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A168596, Nat.add_sub_cancel, A168596.P10760094771047729860.f1, A168596.P10760094771047729860.a, A168596.P5310469418955877328.a, A005029, A005029.P908746192262662913.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf)
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A168596, Nat.add_sub_cancel, A168596.P10760094771047729860.f1, A168596.P10760094771047729860.a, A168596.P5310469418955877328.a, A005029, A005029.P908746192262662913.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [← h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith | ((try field_simp); ring_nf)

end A168596

/-! ## A168596.P15096416491225092445

`(A198274(n+1)+3)/2`
-/

namespace A168596.P15096416491225092445
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A198274 (n + 1) + 3 : ℚ) / 2

end

end A168596.P15096416491225092445

namespace A168596

/-- `(A198274(n+1)+3)/2` -/
def P15096416491225092445.Spec : Prop :=
  ∀ n, P15096416491225092445.a n = (A168596 n : ℚ)

theorem P15096416491225092445.correct : P15096416491225092445.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A168596, Nat.add_sub_cancel, A168596.P15096416491225092445.a, A168596.P5310469418955877328.a, A198274, A198274.P4222715629638251242.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf)
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A168596, Nat.add_sub_cancel, A168596.P15096416491225092445.a, A168596.P5310469418955877328.a, A198274, A198274.P4222715629638251242.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [← h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith | ((try field_simp); ring_nf)

end A168596

/-! ## A168596.P12162340813814074978

`ceil((13*A131577(n+2)+1)/2)`
-/

namespace A168596.P12162340813814074978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(13 * A131577 (n + 2) + 1 : ℚ) / 2⌉

end

end A168596.P12162340813814074978

namespace A168596

/-- `ceil((13*A131577(n+2)+1)/2)` -/
def P12162340813814074978.Spec : Prop :=
  ∀ n, P12162340813814074978.a n = A168596 n

end A168596

/-! ## A168596.P5478697127664122466

`A195744(n)%A110287(n)`
-/

namespace A168596.P5478697127664122466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A195744 n) (A110287 n)

end

end A168596.P5478697127664122466

namespace A168596

/-- `A195744(n)%A110287(n)` -/
def P5478697127664122466.Spec : Prop :=
  ∀ n, P5478697127664122466.a n = A168596 n

end A168596

/-! ## A168596.P17474456313895139657

`Δ[A083706(n+1)+A083705(n)]`
-/

namespace A168596.P17474456313895139657
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083706 (n + 1) + A083705 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A168596.P17474456313895139657

namespace A168596

/-- `Δ[A083706(n+1)+A083705(n)]` -/
def P17474456313895139657.Spec : Prop :=
  ∀ n, P17474456313895139657.a n = A168596 n

end A168596

/-! ## A168596.P13529480850082021315

`(A122041(n+1)+A020737(n))/2`
-/

namespace A168596.P13529480850082021315
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A122041 (n + 1) + A020737 n : ℚ) / 2

end

end A168596.P13529480850082021315

namespace A168596

/-- `(A122041(n+1)+A020737(n))/2` -/
def P13529480850082021315.Spec : Prop :=
  ∀ n, P13529480850082021315.a n = (A168596 n : ℚ)

end A168596

/-! ## A168596.P12817624520735602454

`(A083705(n+1)+A020737(n+1))/2`
-/

namespace A168596.P12817624520735602454
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A083705 (n + 1) + A020737 (n + 1) : ℚ) / 2

end

end A168596.P12817624520735602454

namespace A168596

/-- `(A083705(n+1)+A020737(n+1))/2` -/
def P12817624520735602454.Spec : Prop :=
  ∀ n, P12817624520735602454.a n = (A168596 n : ℚ)

end A168596

/-! ## A168596.P8896472022410107416

`A258073(n+1)%A175805(n)`
-/

namespace A168596.P8896472022410107416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A258073 (n + 1)) (A175805 n)

end

end A168596.P8896472022410107416

namespace A168596

/-- `A258073(n+1)%A175805(n)` -/
def P8896472022410107416.Spec : Prop :=
  ∀ n, P8896472022410107416.a n = A168596 n

end A168596

/-!
# A168597: Squares of the central trinomial coefficients (A002426).

The programs for A168597, the canonical program `A168597.P15490916615143292873` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A168597 has offset 0).

The definition of A168597 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A168597.P15490916615143292873

`A002426(n)²`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A168597

/-- `A002426(n)²` -/
def P15490916615143292873.Spec : Prop :=
  ∀ n, P15490916615143292873.a n = A168597 n

theorem P15490916615143292873.correct : P15490916615143292873.Spec := by
  intro n
  simp only [A168597]

end A168597

/-! ## A168597.P13640268509334230674

`∑{#}[n, (-3)^(n-#)*C(2*#, #)*C(n, #)*C(n+#, #)]`
-/

namespace A168597.P13640268509334230674
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (-3 : ℚ) ^ ((n : ℤ) - (k : ℤ) : ℤ) * (Nat.choose (2 * k) k : ℚ) * (Nat.choose n k : ℚ) * (Nat.choose (n + k) k : ℚ)

end

end A168597.P13640268509334230674

namespace A168597

/-- `∑{#}[n, (-3)^(n-#)*C(2*#, #)*C(n, #)*C(n+#, #)]` -/
def P13640268509334230674.Spec : Prop :=
  ∀ n, P13640268509334230674.a n = (A168597 n : ℚ)

end A168597

/-! ## A168597.P14935030933868370870

`∑[A007987(n)]`
-/

namespace A168597.P14935030933868370870
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007987 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A168597.P14935030933868370870

namespace A168597

/-- `∑[A007987(n)]` -/
def P14935030933868370870.Spec : Prop :=
  ∀ n, P14935030933868370870.a n = A168597 n

end A168597

/-! ## A168597.P12711636985164255891

`∑[A085455(n)]²`
-/

namespace A168597.P12711636985164255891
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085455 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A168597.P12711636985164255891

namespace A168597

/-- `∑[A085455(n)]²` -/
def P12711636985164255891.Spec : Prop :=
  ∀ n, P12711636985164255891.a n = A168597 n

end A168597

/-! ## A168597.P7697362978122156070

`A094531(∑[n])²`
-/

namespace A168597.P7697362978122156070
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094531 (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A168597.P7697362978122156070

namespace A168597

/-- `A094531(∑[n])²` -/
def P7697362978122156070.Spec : Prop :=
  ∀ n, P7697362978122156070.a n = A168597 n

end A168597

/-! ## A168597.P9433255371593880500

`A111960(∑[n])²`
-/

namespace A168597.P9433255371593880500
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111960 (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A168597.P9433255371593880500

namespace A168597

/-- `A111960(∑[n])²` -/
def P9433255371593880500.Spec : Prop :=
  ∀ n, P9433255371593880500.a n = A168597 n

end A168597

/-! ## A168597.P9241948784293887462

`A114422(∑[n])²`
-/

namespace A168597.P9241948784293887462
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114422 (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A168597.P9241948784293887462

namespace A168597

/-- `A114422(∑[n])²` -/
def P9241948784293887462.Spec : Prop :=
  ∀ n, P9241948784293887462.a n = A168597 n

end A168597

/-! ## A168597.P7803210865712957058

`A115990(∑[n])²`
-/

namespace A168597.P7803210865712957058
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115990 (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A168597.P7803210865712957058

namespace A168597

/-- `A115990(∑[n])²` -/
def P7803210865712957058.Spec : Prop :=
  ∀ n, P7803210865712957058.a n = A168597 n

end A168597

/-! ## A168597.P7486799765489137920

`A158793(∑[n])²`
-/

namespace A168597.P7486799765489137920
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158793 (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A168597.P7486799765489137920

namespace A168597

/-- `A158793(∑[n])²` -/
def P7486799765489137920.Spec : Prop :=
  ∀ n, P7486799765489137920.a n = A168597 n

end A168597

/-! ## A168597.P4333114026315572544

`A171128(∑[n])²`
-/

namespace A168597.P4333114026315572544
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171128 (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A168597.P4333114026315572544

namespace A168597

/-- `A171128(∑[n])²` -/
def P4333114026315572544.Spec : Prop :=
  ∀ n, P4333114026315572544.a n = A168597 n

end A168597

/-! ## A168597.P18143325379523249604

`A328347(∑[n])²`
-/

namespace A168597.P18143325379523249604
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328347 (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A168597.P18143325379523249604

namespace A168597

/-- `A328347(∑[n])²` -/
def P18143325379523249604.Spec : Prop :=
  ∀ n, P18143325379523249604.a n = A168597 n

end A168597

/-! ## A168597.P13217647907750324714

`A346540(∑[n])²`
-/

namespace A168597.P13217647907750324714
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346540 (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A168597.P13217647907750324714

namespace A168597

/-- `A346540(∑[n])²` -/
def P13217647907750324714.Spec : Prop :=
  ∀ n, P13217647907750324714.a n = A168597 n

end A168597

/-! ## A168597.P11239296408835391764

`A376827(∑[n])²`
-/

namespace A168597.P11239296408835391764
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376827 (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A168597.P11239296408835391764

namespace A168597

/-- `A376827(∑[n])²` -/
def P11239296408835391764.Spec : Prop :=
  ∀ n, P11239296408835391764.a n = A168597 n

end A168597

/-! ## A168597.P16012521012914884607

`A005213(2*n)²`
-/

namespace A168597.P16012521012914884607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005213 (2 * n) ^ 2

end

end A168597.P16012521012914884607

namespace A168597

/-- `A005213(2*n)²` -/
def P16012521012914884607.Spec : Prop :=
  ∀ n, P16012521012914884607.a n = A168597 n

end A168597

/-! ## A168597.P6634849137503943785

`A111808(∑[n+1])²`
-/

namespace A168597.P6634849137503943785
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111808 (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A168597.P6634849137503943785

namespace A168597

/-- `A111808(∑[n+1])²` -/
def P6634849137503943785.Spec : Prop :=
  ∀ n, P6634849137503943785.a n = A168597 n

end A168597

/-! ## A168597.P17324355035655272903

`A305161(∑[n+3])²`
-/

namespace A168597.P17324355035655272903
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305161 (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A168597.P17324355035655272903

namespace A168597

/-- `A305161(∑[n+3])²` -/
def P17324355035655272903.Spec : Prop :=
  ∀ n, P17324355035655272903.a n = A168597 n

end A168597

/-! ## A168597.P15961373265354080882

`A135091(∑[n]+n)²`
-/

namespace A168597.P15961373265354080882
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135091 (∑ j ∈ Finset.range (n + 1), f1 j + n) ^ 2

end

end A168597.P15961373265354080882

namespace A168597

/-- `A135091(∑[n]+n)²` -/
def P15961373265354080882.Spec : Prop :=
  ∀ n, P15961373265354080882.a n = A168597 n

end A168597

/-! ## A168597.P18113788730115484074

`Δ[n*A099323(n)]²`
-/

namespace A168597.P18113788730115484074
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A099323 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 2

end

end A168597.P18113788730115484074

namespace A168597

/-- `Δ[n*A099323(n)]²` -/
def P18113788730115484074.Spec : Prop :=
  ∀ n, P18113788730115484074.a n = A168597 n

end A168597

/-! ## A168597.P7508325296169822953

`(2*A097861(n)+1)²`
-/

namespace A168597.P7508325296169822953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * A097861 n + 1) ^ 2

end

end A168597.P7508325296169822953

namespace A168597

/-- `(2*A097861(n)+1)²` -/
def P7508325296169822953.Spec : Prop :=
  ∀ n, P7508325296169822953.a n = A168597 n

end A168597

/-! ## A168597.P1187930728774746242

`(1-2*A257520(n))²`
-/

namespace A168597.P1187930728774746242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - 2 * A257520 n) ^ 2

end

end A168597.P1187930728774746242

namespace A168597

/-- `(1-2*A257520(n))²` -/
def P1187930728774746242.Spec : Prop :=
  ∀ n, P1187930728774746242.a n = A168597 n

end A168597

/-!
# A168598: G.f.: exp( Sum_{n>=1} A002426(n)^2*x^n/n ), where A002426(n) is the central trinomial coefficients.

The programs for A168598, there is no canonical definition to state claims against.
-/

/-! ## A168598.P566351024828118566

`A152355(n+1)-A204016(A152364(n+1))`
-/

namespace A168598.P566351024828118566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152355 (n + 1) - A204016 (A152364 (n + 1)).toNat

end

end A168598.P566351024828118566

/-! ## A168598.P6217345484775284019

`A152356(n+1)-A204016(A152364(n+1))`
-/

namespace A168598.P6217345484775284019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152356 (n + 1) - A204016 (A152364 (n + 1)).toNat

end

end A168598.P6217345484775284019

/-!
# A168599: G.f.: exp( Sum_{n>=1} A002426(n)^n * x^n/n ), where A002426(n) is the central trinomial coefficients.

The programs for A168599, there is no canonical definition to state claims against.
-/

/-! ## A168599.P5053315715955461303

`or(A262626(n+1), A337481(A277280(n)))`
-/

namespace A168599.P5053315715955461303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A262626 (n + 1)) (A337481 (A277280 n).toNat)

end

end A168599.P5053315715955461303

