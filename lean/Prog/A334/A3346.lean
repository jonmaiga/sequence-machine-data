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
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C039
import Seq.B000.C041
import Seq.B000.C044
import Seq.B000.C046
import Seq.B000.C047
import Seq.B000.C048
import Seq.B000.C049
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C006
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
import Seq.B002.C004
import Seq.B002.C007
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
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
import Seq.Opaque.C015
import Seq.Opaque.C016
import Seq.Opaque.C017
import Seq.Opaque.C018
import Seq.Opaque.C019
import Seq.Opaque.C020
import Seq.Opaque.C021
import Seq.Opaque.C022
import Seq.Opaque.C023
import SequenceMachineLib.Triangle

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A334600: Number of length-n binary strings having a unique border.

The programs for A334600, there is no canonical definition to state claims against.
-/

/-! ## A334600.P17432992591414850107

`xor(A062510(n), A196564(A102911(n)))`
-/

namespace A334600.P17432992591414850107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A062510 n) (A196564 (A102911 n).toNat)

end

end A334600.P17432992591414850107

/-! ## A334600.P1722784081567651770

`Δ[2^n-A266161(A140420(n))]`
-/

namespace A334600.P1722784081567651770
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - A266161 (A140420 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A334600.P1722784081567651770

/-! ## A334600.P3517479722461791666

`A352931(n+1)+eq[1, A132582(n)]`
-/

namespace A334600.P3517479722461791666
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132582 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352931 (n + 1) + (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ)

end

end A334600.P3517479722461791666

/-! ## A334600.P14750920780475994197

`A002175(A097262(n))+A000918(n)`
-/

namespace A334600.P14750920780475994197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002175 (A097262 n).toNat + A000918 n

end

end A334600.P14750920780475994197

/-!
# A334601: Positive integers m such that sum of cubes of the digits of m, t=A055012(m), is a multiple of m (m/A055012(m) is an integer >= 1).

The programs for A334601, there is no canonical definition to state claims against.
-/

/-! ## A334601.P8315621636077397382

`record[gcd(n+1, A055012(n+1))]`
-/

namespace A334601.P8315621636077397382
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A055012 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A334601.P8315621636077397382

/-! ## A334601.P12382933781056813589

`record[gcd(∑{digits}[n, #*#²], A274922(n))]`
-/

namespace A334601.P12382933781056813589
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((((SequenceMachineLib.digits10 (f2 n)).map fun (x : ℕ) => x * x ^ 2).sum : ℕ) : ℤ) (A274922 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A334601.P12382933781056813589

/-! ## A334601.P8157133337565888206

`record[A028310(gcd(n, A055012(n)))]`
-/

namespace A334601.P8157133337565888206
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (Int.gcd (n : ℤ) (A055012 n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A334601.P8157133337565888206

/-! ## A334601.P13647611303497814407

`record[gcd(A055012(n+1), A131738(n))]`
-/

namespace A334601.P13647611303497814407
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A055012 (n + 1)) (A131738 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A334601.P13647611303497814407

/-! ## A334601.P12019956069687092026

`eq[A055012(n)%A028310(n), A000007(n)]`
-/

namespace A334601.P12019956069687092026
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A055012 n) (A028310 n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A334601.P12019956069687092026

/-!
# A334602: Number of self-avoiding walks on a 2-dimensional square lattice where the walk consists of steps of length 1 to n which can be taken in any order.

The programs for A334602, there is no canonical definition to state claims against.
-/

/-! ## A334602.P10133444039001182818

`A209211(∑[A008544(n)])`
-/

namespace A334602.P10133444039001182818
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008544 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209211 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A334602.P10133444039001182818

/-!
# A334603: Period of the fraction 1/11^n for n >= 1.

The programs for A334603, there is no canonical definition to state claims against.
-/

/-! ## A334603.P3877879608600110018

`2*11^n`
-/

namespace A334603.P3877879608600110018
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * 11 ^ n

end

end A334603.P3877879608600110018

/-!
# A334604: Denominator of Sum_{k=1..n} (-1)^(k+1)/k^5.

The programs for A334604, there is no canonical definition to state claims against.
-/

/-! ## A334604.P178838658081848916

`A003418(A077168(n))^5`
-/

namespace A334604.P178838658081848916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003418 (A077168 n).toNat ^ 5

end

end A334604.P178838658081848916

/-! ## A334604.P13036061779129811800

`A003418(n+1)^A107691(A269626(n+1))`
-/

namespace A334604.P13036061779129811800
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003418 (n + 1) : ℚ) ^ (A107691 (A269626 (n + 1)).toNat : ℤ)

end

end A334604.P13036061779129811800

/-! ## A334604.P196791099040099424

`A003418(A043318(n+1))^5`
-/

namespace A334604.P196791099040099424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003418 (A043318 (n + 1)).toNat ^ 5

end

end A334604.P196791099040099424

/-! ## A334604.P16932921138955333404

`A096179(∑[n+1])^5`
-/

namespace A334604.P16932921138955333404
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096179 (∑ j ∈ Finset.range (n + 1), f1 j) ^ 5

end

end A334604.P16932921138955333404

/-! ## A334604.P10954841189007976332

`A179661(∑[n+1])^5`
-/

namespace A334604.P10954841189007976332
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179661 (∑ j ∈ Finset.range (n + 1), f1 j) ^ 5

end

end A334604.P10954841189007976332

/-!
# A334605: Denominator of Sum_{k=1..n} (-1)^(k+1)/k^6.

The programs for A334605, there is no canonical definition to state claims against.
-/

/-! ## A334605.P16567627603005880532

`A000578(A109935(n+1))*A007409(n+1)`
-/

namespace A334605.P16567627603005880532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 (A109935 (n + 1)).toNat * A007409 (n + 1)

end

end A334605.P16567627603005880532

/-! ## A334605.P2236775264285895598

`A249950(n+1)/(n+1)*A000578(A109935(n+1))`
-/

namespace A334605.P2236775264285895598
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A249950 (n + 1) : ℚ) / (n + 1 : ℚ) * (A000578 (A109935 (n + 1)).toNat : ℚ)

end

end A334605.P2236775264285895598

/-! ## A334605.P984609394223307237

`A002805(n+1)*A068589(n+1)*A000578(A109935(n+1))`
-/

namespace A334605.P984609394223307237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002805 (n + 1) * A068589 (n + 1) * A000578 (A109935 (n + 1)).toNat

end

end A334605.P984609394223307237

/-! ## A334605.P13695321943420045032

`(A003418(A087051(n+1))²*A002805(n+1))²`
-/

namespace A334605.P13695321943420045032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A003418 (A087051 (n + 1)).toNat ^ 2 * A002805 (n + 1)) ^ 2

end

end A334605.P13695321943420045032

/-! ## A334605.P4031289106125375261

`A007407(A032559(n+1))^3/A110566(n+1)²`
-/

namespace A334605.P4031289106125375261
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007407 (A032559 (n + 1)).toNat ^ 3 : ℚ) / (A110566 (n + 1) ^ 2 : ℚ)

end

end A334605.P4031289106125375261

/-!
# A334606: Perimeters of Heronian triangles with exactly one square side length.

The programs for A334606, there is no canonical definition to state claims against.
-/

/-! ## A334606.P14474467475808411618

`A335100(∑[A089723(A172512(n+1))])`
-/

namespace A334606.P14474467475808411618
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089723 (A172512 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335100 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A334606.P14474467475808411618

/-! ## A334606.P10813404523458898897

`record[A335100(n+1)/A089723(A172512(n+1))]`
-/

namespace A334606.P10813404523458898897
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A335100 (n + 1) : ℚ) / (A089723 (A172512 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A334606.P10813404523458898897

/-! ## A334606.P8227085176352335542

`record[A267936(A251712(n))*A335100(n+1)]`
-/

namespace A334606.P8227085176352335542
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267936 (A251712 n).toNat * A335100 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A334606.P8227085176352335542

/-! ## A334606.P9293398212897668743

`A335100(∑[A318434(A004682(n+1))])`
-/

namespace A334606.P9293398212897668743
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318434 (A004682 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335100 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A334606.P9293398212897668743

/-! ## A334606.P15786852634329247035

`∩[A335100(n+1), A336143(n+1)]`
-/

namespace A334606.P15786852634329247035
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335100 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336143 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A334606.P15786852634329247035

/-!
# A334607: Number of Pythagorean triangles with perimeter A010814(n).

The programs for A334607, there is no canonical definition to state claims against.
-/

/-! ## A334607.P11379461088608515835

`A270417(A005279(n+1))`
-/

namespace A334607.P11379461088608515835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270417 (A005279 (n + 1)).toNat

end

end A334607.P11379461088608515835

/-! ## A334607.P9365521078858406296

`A270417(A010814(n+1)/2)`
-/

namespace A334607.P9365521078858406296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270417 (SequenceMachineLib.roundAway ((A010814 (n + 1) : ℚ) / 2)).toNat

end

end A334607.P9365521078858406296

/-! ## A334607.P4091759919705698965

`∑{d}[A010814(n+1), A070109(#)]`
-/

namespace A334607.P4091759919705698965
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010814 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A070109 d

end

end A334607.P4091759919705698965

/-! ## A334607.P14116527438874342185

`∑{d}[A005279(n+1), A070109(A005843(#))]`
-/

namespace A334607.P14116527438874342185
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005279 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A070109 (A005843 d).toNat

end

end A334607.P14116527438874342185

/-! ## A334607.P3750609623717553545

`runs[A009096(n+1)]`
-/

namespace A334607.P3750609623717553545
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009096 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) n

end

end A334607.P3750609623717553545

/-! ## A334607.P10184807286952676879

`runs[A107487(n+1)]`
-/

namespace A334607.P10184807286952676879
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107487 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) n

end

end A334607.P10184807286952676879

/-! ## A334607.P10129824658093486884

`A024155(A010814(n+1))`
-/

namespace A334607.P10129824658093486884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024155 (A010814 (n + 1)).toNat

end

end A334607.P10129824658093486884

/-! ## A334607.P251107871430922865

`A024155(A136000(n+1)+1)`
-/

namespace A334607.P251107871430922865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024155 (A136000 (n + 1) + 1).toNat

end

end A334607.P251107871430922865

/-! ## A334607.P12119221796734764366

`A024155(2*A005279(n+1))`
-/

namespace A334607.P12119221796734764366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024155 (2 * A005279 (n + 1)).toNat

end

end A334607.P12119221796734764366

/-! ## A334607.P7243273391875872288

`A334758(n+1)/A010814(n+1)`
-/

namespace A334607.P7243273391875872288
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A334758 (n + 1) : ℚ) / (A010814 (n + 1) : ℚ)

end

end A334607.P7243273391875872288

/-!
# A334608: a(n) is the total number of down-steps after the final up-step in all 3_1-Dyck paths of length 4*n (n up-steps and 3n down-steps).

The programs for A334608, the canonical program `A334608.P16320078294554590226` is in `Seq.B002.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A334608 has offset 0).

The definition of A334608 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A334608.P16320078294554590226

`Δ[A069271(n)]-A069271(n)`

The canonical program, it is in `Seq.B002.C007`.
-/

namespace A334608

/-- `Δ[A069271(n)]-A069271(n)` -/
def P16320078294554590226.Spec : Prop :=
  ∀ n, P16320078294554590226.a n = A334608 n

theorem P16320078294554590226.correct : P16320078294554590226.Spec := by
  intro n
  simp only [A334608]

end A334608

/-! ## A334608.P13529022272538251515

`A069271(n+1)-2*A069271(n)`
-/

namespace A334608.P13529022272538251515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069271 (n + 1) - 2 * A069271 n

end

end A334608.P13529022272538251515

namespace A334608

/-- `A069271(n+1)-2*A069271(n)` -/
def P13529022272538251515.Spec : Prop :=
  ∀ n, P13529022272538251515.a n = A334608 n

theorem P13529022272538251515.correct : P13529022272538251515.Spec := by
  intro n
  simp only [A334608, Nat.add_sub_cancel, A334608.P13529022272538251515.a, A334608.P16320078294554590226.f1, A334608.P16320078294554590226.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A334608

/-! ## A334608.P12966998114934757029

`Δ[A369472(2*n+1)]-A369472(2*n+1)`
-/

namespace A334608.P12966998114934757029
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369472 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A369472 (2 * n + 1)

end

end A334608.P12966998114934757029

namespace A334608

/-- `Δ[A369472(2*n+1)]-A369472(2*n+1)` -/
def P12966998114934757029.Spec : Prop :=
  ∀ n, P12966998114934757029.a n = A334608 n

end A334608

/-! ## A334608.P8949672742207397861

`A069271(n+1)-(A006632(n+1)+A000260(n))`
-/

namespace A334608.P8949672742207397861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069271 (n + 1) - (A006632 (n + 1) + A000260 n)

end

end A334608.P8949672742207397861

namespace A334608

/-- `A069271(n+1)-(A006632(n+1)+A000260(n))` -/
def P8949672742207397861.Spec : Prop :=
  ∀ n, P8949672742207397861.a n = A334608 n

end A334608

/-! ## A334608.P13564385500773147896

`Δ[(n+1)*A000260(n)]-A026005(n)/(n+1)`
-/

namespace A334608.P13564385500773147896
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A000260 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) - (A026005 n : ℚ) / (n + 1 : ℚ)

end

end A334608.P13564385500773147896

namespace A334608

/-- `Δ[(n+1)*A000260(n)]-A026005(n)/(n+1)` -/
def P13564385500773147896.Spec : Prop :=
  ∀ n, P13564385500773147896.a n = (A334608 n : ℚ)

end A334608

/-! ## A334608.P4908082608995615624

`Δ[C(4*n+2, n)/(2*n+1)]-C(4*n+2, n)/(2*n+1)`
-/

namespace A334608.P4908082608995615624
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose (4 * n + 2) n : ℚ) / (2 * n + 1 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - (Nat.choose (4 * n + 2) n : ℚ) / (2 * n + 1 : ℚ)

end

end A334608.P4908082608995615624

namespace A334608

/-- `Δ[C(4*n+2, n)/(2*n+1)]-C(4*n+2, n)/(2*n+1)` -/
def P4908082608995615624.Spec : Prop :=
  ∀ n, P4908082608995615624.a n = (A334608 n : ℚ)

end A334608

/-!
# A334609: a(n) is the total number of down-steps after the final up-step in all 3_2-Dyck paths of length 4*n (n up-steps and 3*n down-steps).

The programs for A334609, the canonical program `A334609.P14643117729935043828` is in `Seq.B001.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A334609 has offset 0).

The definition of A334609 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A334609.P14643117729935043828

`Δ[A006632(n+1)]-A112385(n+1)`

The canonical program, it is in `Seq.B001.C013`.
-/

namespace A334609

/-- `Δ[A006632(n+1)]-A112385(n+1)` -/
def P14643117729935043828.Spec : Prop :=
  ∀ n, P14643117729935043828.a n = A334609 n

theorem P14643117729935043828.correct : P14643117729935043828.Spec := by
  intro n
  simp only [A334609]

end A334609

/-! ## A334609.P15688392207322243611

`Δ[abs(A171790(n+1))]-A112385(n+1)`
-/

namespace A334609.P15688392207322243611
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A171790 (n + 1)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A112385 (n + 1)

end

end A334609.P15688392207322243611

namespace A334609

/-- `Δ[abs(A171790(n+1))]-A112385(n+1)` -/
def P15688392207322243611.Spec : Prop :=
  ∀ n, P15688392207322243611.a n = A334609 n

end A334609

/-! ## A334609.P6096906528229909788

`Δ[A069270(∑[n+3])]-A112385(n+1)`
-/

namespace A334609.P6096906528229909788
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069270 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A112385 (n + 1)

end

end A334609.P6096906528229909788

namespace A334609

/-- `Δ[A069270(∑[n+3])]-A112385(n+1)` -/
def P6096906528229909788.Spec : Prop :=
  ∀ n, P6096906528229909788.a n = A334609 n

end A334609

/-! ## A334609.P12098777315699125302

`Δ[A006632(n+1)]-A337291(n+1)/2`
-/

namespace A334609.P12098777315699125302
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006632 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) - (A337291 (n + 1) : ℚ) / 2

end

end A334609.P12098777315699125302

namespace A334609

/-- `Δ[A006632(n+1)]-A337291(n+1)/2` -/
def P12098777315699125302.Spec : Prop :=
  ∀ n, P12098777315699125302.a n = (A334609 n : ℚ)

end A334609

/-! ## A334609.P341455957757340078

`Δ[A069271(n)+n*A000260(n)]-A112385(n+1)`
-/

namespace A334609.P341455957757340078
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069271 n + (n : ℤ) * A000260 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A112385 (n + 1)

end

end A334609.P341455957757340078

namespace A334609

/-- `Δ[A069271(n)+n*A000260(n)]-A112385(n+1)` -/
def P341455957757340078.Spec : Prop :=
  ∀ n, P341455957757340078.a n = A334609 n

end A334609

/-! ## A334609.P7648971123304788681

`Δ[A337291(n+1)/4]-A112385(n+1)`
-/

namespace A334609.P7648971123304788681
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A337291 (n + 1) : ℚ) / 4

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - (A112385 (n + 1) : ℚ)

end

end A334609.P7648971123304788681

namespace A334609

/-- `Δ[A337291(n+1)/4]-A112385(n+1)` -/
def P7648971123304788681.Spec : Prop :=
  ∀ n, P7648971123304788681.a n = (A334609 n : ℚ)

theorem P7648971123304788681.correct : P7648971123304788681.Spec := by
  intro n
  simp only [A334609, Nat.add_sub_cancel, A334609.P7648971123304788681.f1, A334609.P7648971123304788681.a, A334609.P14643117729935043828.f1, A334609.P14643117729935043828.a, A006632, A006632.P308274545812418042.a, A112385, A112385.P11025466224261666892.a, A337291, A337291.P8125429750552470595.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A334609

/-! ## A334609.P17033100542087130530

`Δ[A257633(n)/(n+1)]-A112385(n+1)`
-/

namespace A334609.P17033100542087130530
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A257633 n : ℚ) / (n + 1 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - (A112385 (n + 1) : ℚ)

end

end A334609.P17033100542087130530

namespace A334609

/-- `Δ[A257633(n)/(n+1)]-A112385(n+1)` -/
def P17033100542087130530.Spec : Prop :=
  ∀ n, P17033100542087130530.a n = (A334609 n : ℚ)

end A334609

/-! ## A334609.P3548529957113317929

`Δ[C(4*n+2, n)/(n+1)]-2*C(4*n+2, n)/(n+1)`
-/

namespace A334609.P3548529957113317929
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose (4 * n + 2) n : ℚ) / (n + 1 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 2 * ((Nat.choose (4 * n + 2) n : ℚ) / (n + 1 : ℚ))

end

end A334609.P3548529957113317929

namespace A334609

/-- `Δ[C(4*n+2, n)/(n+1)]-2*C(4*n+2, n)/(n+1)` -/
def P3548529957113317929.Spec : Prop :=
  ∀ n, P3548529957113317929.a n = (A334609 n : ℚ)

end A334609

/-! ## A334609.P5981236144317920397

`Δ[(2*n+1)*A341856(A000096(n))]-A112385(n+1)`
-/

namespace A334609.P5981236144317920397
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) * A341856 (A000096 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A112385 (n + 1)

end

end A334609.P5981236144317920397

namespace A334609

/-- `Δ[(2*n+1)*A341856(A000096(n))]-A112385(n+1)` -/
def P5981236144317920397.Spec : Prop :=
  ∀ n, P5981236144317920397.a n = A334609 n

end A334609

/-!
# A334610: a(n) is the total number of down-steps after the final up-step in all 4_1-Dyck paths of length 5*n (n up-steps and 4*n down-steps).

The programs for A334610, there is no canonical definition to state claims against.
-/

/-! ## A334610.P10326668737761680936

`Δ[A118969(n)]-A118969(n)`
-/

namespace A334610.P10326668737761680936
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118969 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A118969 n

end

end A334610.P10326668737761680936

/-! ## A334610.P4150313410451539773

`A118969(n+1)-2*A118969(n)`
-/

namespace A334610.P4150313410451539773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118969 (n + 1) - 2 * A118969 n

end

end A334610.P4150313410451539773

/-! ## A334610.P2533375057033394615

`Δ[A016861(n)/3*A197272(n)]-A079589(n)/(2*n+1)`
-/

namespace A334610.P2533375057033394615
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016861 n : ℚ) / 3 * (A197272 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - (A079589 n : ℚ) / (2 * n + 1 : ℚ)

end

end A334610.P2533375057033394615

/-! ## A334610.P3733422411957441406

`Δ[(5*n+1)*A002294(n)/A005408(n)]-C(5*n+1, n)/(2*n+1)`
-/

namespace A334610.P3733422411957441406
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (5 * n + 1 : ℚ) * ((A002294 n : ℚ) / (A005408 n : ℚ))

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - (Nat.choose (5 * n + 1) n : ℚ) / (2 * n + 1 : ℚ)

end

end A334610.P3733422411957441406

/-! ## A334610.P1062557016123715978

`Δ[C(5*n+1, n)/(2*n+1)]-C(5*n+1, n)/(2*n+1)`
-/

namespace A334610.P1062557016123715978
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose (5 * n + 1) n : ℚ) / (2 * n + 1 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - (Nat.choose (5 * n + 1) n : ℚ) / (2 * n + 1 : ℚ)

end

end A334610.P1062557016123715978

/-!
# A334611: a(n) is the total number of down-steps after the final up-step in all 4_2-Dyck paths of length 5*n (n up-steps and 4*n down-steps).

The programs for A334611, there is no canonical definition to state claims against.
-/

/-! ## A334611.P3585299730111009227

`A118970(n+1)-A008585(A118970(n))`
-/

namespace A334611.P3585299730111009227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118970 (n + 1) - A008585 (A118970 n).toNat

end

end A334611.P3585299730111009227

/-!
# A334612: a(n) is the total number of down-steps after the final up-step in all 4_3-Dyck paths of length 5*n (n up-steps and 4*n down-steps).

The programs for A334612, there is no canonical definition to state claims against.
-/

/-! ## A334612.P11945283533483149140

`A118971(n+1)+A118971(n)-A337292(n+1)`
-/

namespace A334612.P11945283533483149140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118971 (n + 1) + (A118971 n - A337292 (n + 1))

end

end A334612.P11945283533483149140

/-! ## A334612.P7957458464107132964

`A118971(n+1)+A118971(n)-5*A329060(∑[n])`
-/

namespace A334612.P7957458464107132964
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118971 (n + 1) + (A118971 n - 5 * A329060 (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A334612.P7957458464107132964

/-!
# A334613: Number of distinct graceful labelings of bipartite graphs with n vertices and n-1 edges.

The programs for A334613, there is no canonical definition to state claims against.
-/

/-! ## A334613.P6512470130356625709

`A125151(A045633(n))`
-/

namespace A334613.P6512470130356625709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125151 (A045633 n).toNat

end

end A334613.P6512470130356625709

/-! ## A334613.P15634979031155553904

`A194640(A000608(n))`
-/

namespace A334613.P15634979031155553904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194640 (A000608 n).toNat

end

end A334613.P15634979031155553904

/-! ## A334613.P5332630256990980193

`A324588(A000571(n))`
-/

namespace A334613.P5332630256990980193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324588 (A000571 n).toNat

end

end A334613.P5332630256990980193

/-!
# A334614: a(n) = pi(prime(n) - n) + n, where pi is the prime counting function.

The programs for A334614, the canonical program `A334614.P10153012267315308629` is in `Seq.B001.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A334614 has offset 1).

The definition of A334614 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000720(A000040(n+1)-(n+1))+n+1` (program `A334614.P10153012267315308629`, by `A334614.P10153012267315308629.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A334614.P1750604770928679377

`A065328(n+1)+n+1`
-/

namespace A334614.P1750604770928679377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065328 (n + 1) + (n + 1 : ℤ)

end

end A334614.P1750604770928679377

namespace A334614

/-- `A065328(n+1)+n+1` -/
def P1750604770928679377.Spec : Prop :=
  ∀ n, P1750604770928679377.a n = A334614 (n + 1)

end A334614

/-! ## A334614.P9664731619651044951

`A000720(A014689(n+1))+n+1`
-/

namespace A334614.P9664731619651044951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A014689 (n + 1)).toNat + (n + 1 : ℤ)

end

end A334614.P9664731619651044951

namespace A334614

/-- `A000720(A014689(n+1))+n+1` -/
def P9664731619651044951.Spec : Prop :=
  ∀ n, P9664731619651044951.a n = A334614 (n + 1)

end A334614

/-! ## A334614.P15104341187932159077

`n+1+A000720(A000040(n+1)-(n+1))`
-/

namespace A334614.P15104341187932159077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) + A000720 (A000040 (n + 1) - (n + 1 : ℤ)).toNat

end

end A334614.P15104341187932159077

namespace A334614

/-- `n+1+A000720(A000040(n+1)-(n+1))` -/
def P15104341187932159077.Spec : Prop :=
  ∀ n, P15104341187932159077.a n = A334614 (n + 1)

theorem P15104341187932159077.correct : P15104341187932159077.Spec := by
  intro n
  simp only [A334614, Nat.add_sub_cancel, A334614.P15104341187932159077.a, A334614.P10153012267315308629.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A334614

/-! ## A334614.P10153012267315308629

`A000720(A000040(n+1)-(n+1))+n+1`

The canonical program, it is in `Seq.B001.C013`.
-/

namespace A334614

/-- `A000720(A000040(n+1)-(n+1))+n+1` -/
def P10153012267315308629.Spec : Prop :=
  ∀ n, P10153012267315308629.a n = A334614 (n + 1)

theorem P10153012267315308629.correct : P10153012267315308629.Spec := by
  intro n
  simp only [A334614, Nat.add_sub_cancel]

end A334614

/-! ## A334614.P10789168976288843835

`A000720(p?[round(8*n/7)]-n-1)+n+1`
-/

namespace A334614.P10789168976288843835
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (8 * ((n : ℚ) / 7))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - (n : ℤ) - 1).toNat + (n + 1 : ℤ)

end

end A334614.P10789168976288843835

namespace A334614

/-- `A000720(p?[round(8*n/7)]-n-1)+n+1` -/
def P10789168976288843835.Spec : Prop :=
  ∀ n, P10789168976288843835.a n = A334614 (n + 1)

end A334614

/-! ## A334614.P13084459675988222059

`A000720(record[A000010(n+1)]-n)+1+n`
-/

namespace A334614.P13084459675988222059
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - (n : ℤ)).toNat + 1 + (n : ℤ)

end

end A334614.P13084459675988222059

namespace A334614

/-- `A000720(record[A000010(n+1)]-n)+1+n` -/
def P13084459675988222059.Spec : Prop :=
  ∀ n, P13084459675988222059.a n = A334614 (n + 1)

end A334614

/-! ## A334614.P6842341494343632522

`A036234(A014689(n+1))+n`
-/

namespace A334614.P6842341494343632522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036234 (A014689 (n + 1)).toNat + (n : ℤ)

end

end A334614.P6842341494343632522

namespace A334614

/-- `A036234(A014689(n+1))+n` -/
def P6842341494343632522.Spec : Prop :=
  ∀ n, P6842341494343632522.a n = A334614 (n + 1)

theorem P6842341494343632522.correct : P6842341494343632522.Spec := by
  intro n
  simp only [A334614, Nat.add_sub_cancel, A334614.P6842341494343632522.a, A334614.P10153012267315308629.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A014689, A014689.P6286543075765329050.a, A036234, A036234.P2906282677021386800.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A334614

/-! ## A334614.P6396105824490546235

`A036234(A065890(n+1)+1)+n`
-/

namespace A334614.P6396105824490546235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036234 (A065890 (n + 1) + 1).toNat + (n : ℤ)

end

end A334614.P6396105824490546235

namespace A334614

/-- `A036234(A065890(n+1)+1)+n` -/
def P6396105824490546235.Spec : Prop :=
  ∀ n, P6396105824490546235.a n = A334614 (n + 1)

theorem P6396105824490546235.correct : P6396105824490546235.Spec := by
  intro n
  simp only [A334614, Nat.add_sub_cancel, A334614.P6396105824490546235.a, A334614.P10153012267315308629.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A036234, A036234.P2906282677021386800.a, A065890, A065890.P15936493256530540462.a, A014689, A014689.P6286543075765329050.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A334614

/-! ## A334614.P6104315396326311609

`A036234(record[A000010(n+1)]-n)+n`
-/

namespace A334614.P6104315396326311609
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036234 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - (n : ℤ)).toNat + (n : ℤ)

end

end A334614.P6104315396326311609

namespace A334614

/-- `A036234(record[A000010(n+1)]-n)+n` -/
def P6104315396326311609.Spec : Prop :=
  ∀ n, P6104315396326311609.a n = A334614 (n + 1)

end A334614

/-! ## A334614.P538491009978053899

`A036234(A000040(n+1)-(n+1))+n`
-/

namespace A334614.P538491009978053899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036234 (A000040 (n + 1) - (n + 1 : ℤ)).toNat + (n : ℤ)

end

end A334614.P538491009978053899

namespace A334614

/-- `A036234(A000040(n+1)-(n+1))+n` -/
def P538491009978053899.Spec : Prop :=
  ∀ n, P538491009978053899.a n = A334614 (n + 1)

theorem P538491009978053899.correct : P538491009978053899.Spec := by
  intro n
  simp only [A334614, Nat.add_sub_cancel, A334614.P538491009978053899.a, A334614.P10153012267315308629.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A036234, A036234.P2906282677021386800.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A334614

/-! ## A334614.P9998240485187685395

`A230980(A000040(n+1)-(n+1))+n+1`
-/

namespace A334614.P9998240485187685395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230980 (A000040 (n + 1) - (n + 1 : ℤ)).toNat + (n + 1 : ℤ)

end

end A334614.P9998240485187685395

namespace A334614

/-- `A230980(A000040(n+1)-(n+1))+n+1` -/
def P9998240485187685395.Spec : Prop :=
  ∀ n, P9998240485187685395.a n = A334614 (n + 1)

end A334614

/-! ## A334614.P10474455986455159251

`A000720(A062298(A000040(n+1)))+n+1`
-/

namespace A334614.P10474455986455159251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A062298 (A000040 (n + 1)).toNat).toNat + (n + 1 : ℤ)

end

end A334614.P10474455986455159251

namespace A334614

/-- `A000720(A062298(A000040(n+1)))+n+1` -/
def P10474455986455159251.Spec : Prop :=
  ∀ n, P10474455986455159251.a n = A334614 (n + 1)

end A334614

/-! ## A334614.P6908584449814084769

`A132090(A065994(n+1))+1+n`
-/

namespace A334614.P6908584449814084769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132090 (A065994 (n + 1)).toNat + 1 + (n : ℤ)

end

end A334614.P6908584449814084769

namespace A334614

/-- `A132090(A065994(n+1))+1+n` -/
def P6908584449814084769.Spec : Prop :=
  ∀ n, P6908584449814084769.a n = A334614 (n + 1)

end A334614

/-! ## A334614.P503762564146800835

`A000720(A137588(A006450(n+1)))+n+1`
-/

namespace A334614.P503762564146800835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A137588 (A006450 (n + 1)).toNat).toNat + (n + 1 : ℤ)

end

end A334614.P503762564146800835

namespace A334614

/-- `A000720(A137588(A006450(n+1)))+n+1` -/
def P503762564146800835.Spec : Prop :=
  ∀ n, P503762564146800835.a n = A334614 (n + 1)

end A334614

/-!
# A334615: a(n) is the number of semi-meanders with n top arches that has no arch of length 1 at the ends of the top arch configuration and no arch of length 1 adjacent to the center of the top arch configuration.

The programs for A334615, there is no canonical definition to state claims against.
-/

/-! ## A334615.P538956939153455859

`(A337581(n+4)-4*A337581(n+3)+4*A337581(n+2))/4`
-/

namespace A334615.P538956939153455859
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A337581 (n + 4) - 4 * A337581 (n + 3) + 4 * A337581 (n + 2) : ℚ) / 4

end

end A334615.P538956939153455859

/-! ## A334615.P1970361286680621954

`A000682(n+2)-A333971(n+2)`
-/

namespace A334615.P1970361286680621954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000682 (n + 2) - A333971 (n + 2)

end

end A334615.P1970361286680621954

/-! ## A334615.P18262219605852706020

`A000682(n+2)-Δ[A337581(n+2)]`
-/

namespace A334615.P18262219605852706020
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337581 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000682 (n + 2) - (f1 (n + 1) - f1 n)

end

end A334615.P18262219605852706020

/-! ## A334615.P11132035592911403201

`Δ[A330269(n+2)-A337581(n+2)]`
-/

namespace A334615.P11132035592911403201
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330269 (n + 2) - A337581 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A334615.P11132035592911403201

/-! ## A334615.P13244687444714722825

`A000682(log2(A020707(n)))%A333971(n+2)`
-/

namespace A334615.P13244687444714722825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000682 (SequenceMachineLib.roundAway (Real.logb 2 (A020707 n : ℝ))).toNat) (A333971 (n + 2))

end

end A334615.P13244687444714722825

/-!
# A334617: a(n) is the number of ways to tile a size n staircase polyomino with staircase polyominoes.

The programs for A334617, there is no canonical definition to state claims against.
-/

/-! ## A334617.P4063524786050827727

`A006068((2*n)^n+(2*n+1)^n-(2*(n+1))^n)+floor(2^(n-1))`
-/

namespace A334617.P4063524786050827727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006068 ((2 * n) ^ n + (2 * n + 1) ^ n - (2 * (n + 1)) ^ n) + ⌊(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋

end

end A334617.P4063524786050827727

/-!
# A334619: Squares visited on a board numbered in counterclockwise square spiral by successively turning to the left square if it is unvisited or to the right square otherwise.

The programs for A334619, there is no canonical definition to state claims against.
-/

/-! ## A334619.P1117504172416885005

`A217291(A337838(n+1))`
-/

namespace A334619.P1117504172416885005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217291 (A337838 (n + 1)).toNat

end

end A334619.P1117504172416885005

/-!
# A334620: a(n) is the smallest multiple of n formed by the concatenation 1,2,3,...,k for some k.

The programs for A334620, there is no canonical definition to state claims against.
-/

/-! ## A334620.P13980438562003622290

`A007908(A075002(n+1))`
-/

namespace A334620.P13980438562003622290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007908 (A075002 (n + 1)).toNat

end

end A334620.P13980438562003622290

/-! ## A334620.P14691794603355225503

`A262582(A075002(n+1))+A105519(n)`
-/

namespace A334620.P14691794603355225503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262582 (A075002 (n + 1)).toNat + A105519 n

end

end A334620.P14691794603355225503

/-! ## A334620.P7604282550850220739

`A359124(A075002(n+1))-A242784(n)`
-/

namespace A334620.P7604282550850220739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359124 (A075002 (n + 1)).toNat - A242784 n

end

end A334620.P7604282550850220739

/-! ## A334620.P16891581048845794497

`A262582(A075002(n+1)*A242784(n))`
-/

namespace A334620.P16891581048845794497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262582 (A075002 (n + 1) * A242784 n).toNat

end

end A334620.P16891581048845794497

/-! ## A334620.P15154786725560737874

`A262582(A075002(n+1)/A242784(n))`
-/

namespace A334620.P15154786725560737874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262582 (SequenceMachineLib.roundAway ((A075002 (n + 1) : ℚ) / (A242784 n : ℚ))).toNat

end

end A334620.P15154786725560737874

/-!
# A334621: Number of unitary prime divisors, p, of n such that n-p is squarefree.

The programs for A334621, there is no canonical definition to state claims against.
-/

/-! ## A334621.P15391381429967637135

`A027751(A194437(2*(n+1)))%A326840(n+1)`
-/

namespace A334621.P15391381429967637135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A027751 (A194437 (2 * (n + 1))).toNat) (A326840 (n + 1))

end

end A334621.P15391381429967637135

/-! ## A334621.P2075607934364053737

`A010947(n)%A324191(n+1)`
-/

namespace A334621.P2075607934364053737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A010947 n) (A324191 (n + 1))

end

end A334621.P2075607934364053737

/-! ## A334621.P5058295624080296039

`A273197(n)%A324191(n+1)`
-/

namespace A334621.P5058295624080296039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A273197 n) (A324191 (n + 1))

end

end A334621.P5058295624080296039

/-! ## A334621.P5172148442782163395

`A005540(n+1)%A324191(n+1)`
-/

namespace A334621.P5172148442782163395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A005540 (n + 1)) (A324191 (n + 1))

end

end A334621.P5172148442782163395

/-! ## A334621.P1088064763373107133

`A347890(n+1)%A324191(n+1)`
-/

namespace A334621.P1088064763373107133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A347890 (n + 1)) (A324191 (n + 1))

end

end A334621.P1088064763373107133

/-!
# A334622: A(n,k) is the sum of the k-th powers of the descent set statistics for permutations of [n]; square array A(n,k), n>=0, k>=0, read by antidiagonals.

The programs for A334622, there is no canonical definition to state claims against.
-/

/-! ## A334622.P15968775942243534700

`A373574(A208447(n))`
-/

namespace A334622.P15968775942243534700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373574 (A208447 n).toNat

end

end A334622.P15968775942243534700

/-! ## A334622.P1892804254385479829

`A178638(A156953(n))+1`
-/

namespace A334622.P1892804254385479829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178638 (A156953 n).toNat + 1

end

end A334622.P1892804254385479829

/-! ## A334622.P6154877040904579910

`A127157((1-A208447(n))²+1)`
-/

namespace A334622.P6154877040904579910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127157 ((1 - A208447 n) ^ 2 + 1).toNat

end

end A334622.P6154877040904579910

/-! ## A334622.P12920563711560961839

`A008620(A000005(A156953(n)²))`
-/

namespace A334622.P12920563711560961839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 (A000005 (A156953 n ^ 2).toNat).toNat

end

end A334622.P12920563711560961839

/-! ## A334622.P15168027894210719346

`A233763(A326322(n))`
-/

namespace A334622.P15168027894210719346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233763 (A326322 n).toNat

end

end A334622.P15168027894210719346

/-!
# A334623: Sum of the n-th powers of the descent set statistics for permutations of [n].

The programs for A334623, there is no canonical definition to state claims against.
-/

/-! ## A334623.P11221958036379956898

`A334622(C(n+n+1, 2)+n)`
-/

namespace A334623.P11221958036379956898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334622 (Nat.choose (n + n + 1) 2 + n)

end

end A334623.P11221958036379956898

/-! ## A334623.P16422969435795293884

`A334622(∑[4*n])`
-/

namespace A334623.P16422969435795293884
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334622 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A334623.P16422969435795293884

/-! ## A334623.P10683197313612027831

`gcd(A151622(n), A334622(A046092(n)))`
-/

namespace A334623.P10683197313612027831
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A151622 n) (A334622 (A046092 n).toNat)

end

end A334623.P10683197313612027831

/-! ## A334623.P14102207989246967905

`lcm(A059268(n), A334622(A046092(n)))`
-/

namespace A334623.P14102207989246967905
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A059268 n) (A334622 (A046092 n).toNat)

end

end A334623.P14102207989246967905

/-! ## A334623.P14587966788505379039

`A342720(n+1)+A334622(A046092(n))`
-/

namespace A334623.P14587966788505379039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342720 (n + 1) + A334622 (A046092 n).toNat

end

end A334623.P14587966788505379039

/-!
# A334625: Maximal size of a subset T of S = {1,2,...,n} with a cyclic arrangement of T such that any three neighbors can be reordered in an arithmetic progression.

The programs for A334625, the canonical program `A334625.P1282350833490529708` is in `Seq.B000.C044`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A334625 has offset 3).

The definition of A334625 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A334625.P1282350833490529708

`ogf((3+3x^6+3x^10-3x^12)/(1-x-x^6+x^7))`

The canonical program, it is in `Seq.B000.C044`.
-/

namespace A334625

/-- `ogf((3+3x^6+3x^10-3x^12)/(1-x-x^6+x^7))` -/
def P1282350833490529708.Spec : Prop :=
  ∀ n, P1282350833490529708.a n = A334625 (n + 3)

theorem P1282350833490529708.correct : P1282350833490529708.Spec := by
  intro n
  simp only [A334625, Nat.add_sub_cancel]

end A334625

/-! ## A334625.P8841784142188703299

`A136289(A123108(n)%A075182(n+1))`
-/

namespace A334625.P8841784142188703299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136289 (Int.tmod (A123108 n) (A075182 (n + 1))).toNat

end

end A334625.P8841784142188703299

namespace A334625

/-- `A136289(A123108(n)%A075182(n+1))` -/
def P8841784142188703299.Spec : Prop :=
  ∀ n, P8841784142188703299.a n = A334625 (n + 3)

end A334625

/-!
# A334626: G.f.: Sum_{k>=0} x^(k^3) / Product_{j=1..k^3} (1 - x^j).

The programs for A334626, there is no canonical definition to state claims against.
-/

/-! ## A334626.P16250797678193762868

`A026814(n)+A097479(n)!`
-/

namespace A334626.P16250797678193762868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026814 n + (Nat.factorial (A097479 n).toNat : ℤ)

end

end A334626.P16250797678193762868

/-! ## A334626.P6169009827830525414

`(A026814(n)+1)%A075929(n)`
-/

namespace A334626.P6169009827830525414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A026814 n + 1) (A075929 n)

end

end A334626.P6169009827830525414

/-! ## A334626.P12064021233290061433

`A026814(A157685(3*n+1))+1`
-/

namespace A334626.P12064021233290061433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026814 (A157685 (3 * n + 1)).toNat + 1

end

end A334626.P12064021233290061433

/-! ## A334626.P13222278484964522869

`A026814(n)%A109663(n+1)+1`
-/

namespace A334626.P13222278484964522869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A026814 n) (A109663 (n + 1)) + 1

end

end A334626.P13222278484964522869

/-! ## A334626.P13751655204291588101

`A026814(n)+A000035(A127975(n))`
-/

namespace A334626.P13751655204291588101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026814 n + A000035 (A127975 n).toNat

end

end A334626.P13751655204291588101

/-!
# A334628: Total area of all distinct rectangles whose length and width are relatively prime and L + W = n.

The programs for A334628, the canonical program `A334628.P13649027034782975356` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A334628 has offset 1).

The definition of A334628 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A334628.P1485680034096103713

`(n+1)*A066840(n+1)-A295574(n+1)`
-/

namespace A334628.P1485680034096103713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A066840 (n + 1) - A295574 (n + 1)

end

end A334628.P1485680034096103713

namespace A334628

/-- `(n+1)*A066840(n+1)-A295574(n+1)` -/
def P1485680034096103713.Spec : Prop :=
  ∀ n, P1485680034096103713.a n = A334628 (n + 1)

end A334628

/-! ## A334628.P13649027034782975356

`ceil(A057789(n+1)/2)`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A334628

/-- `ceil(A057789(n+1)/2)` -/
def P13649027034782975356.Spec : Prop :=
  ∀ n, P13649027034782975356.a n = A334628 (n + 1)

theorem P13649027034782975356.correct : P13649027034782975356.Spec := by
  intro n
  simp only [A334628, Nat.add_sub_cancel]

end A334628

/-! ## A334628.P1427151035723109224

`floor((A057789(n+1)+A000035(n))/2)`
-/

namespace A334628.P1427151035723109224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A057789 (n + 1) + A000035 n : ℚ) / 2⌋

end

end A334628.P1427151035723109224

namespace A334628

/-- `floor((A057789(n+1)+A000035(n))/2)` -/
def P1427151035723109224.Spec : Prop :=
  ∀ n, P1427151035723109224.a n = A334628 (n + 1)

end A334628

/-! ## A334628.P13632969009950005710

`A057789(n+1)/A000032(C(n, n²))`
-/

namespace A334628.P13632969009950005710
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A057789 (n + 1) : ℚ) / (A000032 (Nat.choose n (n ^ 2)) : ℚ)

end

end A334628.P13632969009950005710

namespace A334628

/-- `A057789(n+1)/A000032(C(n, n²))` -/
def P13632969009950005710.Spec : Prop :=
  ∀ n, P13632969009950005710.a n = (A334628 (n + 1) : ℚ)

end A334628

/-! ## A334628.P13149553783905097007

`round(A057789(n+1)/A020639(A001316(n)))`
-/

namespace A334628.P13149553783905097007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A057789 (n + 1) : ℚ) / (A020639 (A001316 n).toNat : ℚ))

end

end A334628.P13149553783905097007

namespace A334628

/-- `round(A057789(n+1)/A020639(A001316(n)))` -/
def P13149553783905097007.Spec : Prop :=
  ∀ n, P13149553783905097007.a n = A334628 (n + 1)

end A334628

/-! ## A334628.P9067442970465238312

`A057789(n+1)/A020639(A000010(n+1))`
-/

namespace A334628.P9067442970465238312
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A057789 (n + 1) : ℚ) / (A020639 (A000010 (n + 1)).toNat : ℚ)

end

end A334628.P9067442970465238312

namespace A334628

/-- `A057789(n+1)/A020639(A000010(n+1))` -/
def P9067442970465238312.Spec : Prop :=
  ∀ n, P9067442970465238312.a n = (A334628 (n + 1) : ℚ)

end A334628

/-! ## A334628.P12293672898218765798

`round(A057789(n+1)/2)%∑[A000041(n)]`
-/

namespace A334628.P12293672898218765798
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A057789 (n + 1) : ℚ) / 2)) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A334628.P12293672898218765798

namespace A334628

/-- `round(A057789(n+1)/2)%∑[A000041(n)]` -/
def P12293672898218765798.Spec : Prop :=
  ∀ n, P12293672898218765798.a n = A334628 (n + 1)

end A334628

/-! ## A334628.P14752870448965157457

`A057789(n+1)/A001221(A001747(n+1))`
-/

namespace A334628.P14752870448965157457
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A057789 (n + 1) : ℚ) / (A001221 (A001747 (n + 1)).toNat : ℚ)

end

end A334628.P14752870448965157457

namespace A334628

/-- `A057789(n+1)/A001221(A001747(n+1))` -/
def P14752870448965157457.Spec : Prop :=
  ∀ n, P14752870448965157457.a n = (A334628 (n + 1) : ℚ)

end A334628

/-! ## A334628.P16522605097851794661

`A057789(n+1)/A001221(A001748(n+1))`
-/

namespace A334628.P16522605097851794661
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A057789 (n + 1) : ℚ) / (A001221 (A001748 (n + 1)).toNat : ℚ)

end

end A334628.P16522605097851794661

namespace A334628

/-- `A057789(n+1)/A001221(A001748(n+1))` -/
def P16522605097851794661.Spec : Prop :=
  ∀ n, P16522605097851794661.a n = (A334628 (n + 1) : ℚ)

end A334628

/-! ## A334628.P3992841086917465373

`A057789(n+1)/A020639(∏{e}[n², #])`
-/

namespace A334628.P3992841086917465373
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A057789 (n + 1) : ℚ) / (A020639 (∏ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p) : ℚ)

end

end A334628.P3992841086917465373

namespace A334628

/-- `A057789(n+1)/A020639(∏{e}[n², #])` -/
def P3992841086917465373.Spec : Prop :=
  ∀ n, P3992841086917465373.a n = (A334628 (n + 1) : ℚ)

end A334628

/-! ## A334628.P15212366528656442211

`A007318(∑[n])*round(A057789(n+1)/2)`
-/

namespace A334628.P15212366528656442211
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j) * SequenceMachineLib.roundAway ((A057789 (n + 1) : ℚ) / 2)

end

end A334628.P15212366528656442211

namespace A334628

/-- `A007318(∑[n])*round(A057789(n+1)/2)` -/
def P15212366528656442211.Spec : Prop :=
  ∀ n, P15212366528656442211.a n = A334628 (n + 1)

end A334628

/-!
# A334630: Number of regions after generation n of Conant's dissection of a square when dissected with diagonal lines.

The programs for A334630, there is no canonical definition to state claims against.
-/

/-! ## A334630.P1348958783061080491

`A040001(A292402(3*n+2))+A010049(n)`
-/

namespace A334630.P1348958783061080491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040001 (A292402 (3 * n + 2)).toNat + A010049 n

end

end A334630.P1348958783061080491

/-! ## A334630.P14657915079075331163

`A201206(∑[ceil(∑[3^(n-2)])])`
-/

namespace A334630.P14657915079075331163
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) ^ ((n : ℤ) - 2 : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈∑ j ∈ Finset.range (n + 1), f2 j⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201206 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A334630.P14657915079075331163

/-! ## A334630.P9531798607277005499

`A257639(A120849(n)+1)`
-/

namespace A334630.P9531798607277005499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257639 (A120849 n + 1).toNat

end

end A334630.P9531798607277005499

/-! ## A334630.P9401191248338081171

`A257639(or(1, A120849(n)))`
-/

namespace A334630.P9401191248338081171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257639 (Int.lor 1 (A120849 n)).toNat

end

end A334630.P9401191248338081171

/-! ## A334630.P15979294774218497621

`A002024(A038504(n)+A014398(n))`
-/

namespace A334630.P15979294774218497621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (A038504 n + A014398 n).toNat

end

end A334630.P15979294774218497621

/-!
# A334633: Numbers k of the form p_1^p_m * p_2^p_(m-1) * ... * p_(m-1)^p_2 * p_m^p_1 for increasing primes p_i.

The programs for A334633, there is no canonical definition to state claims against.
-/

/-! ## A334633.P14013720652328324311

`A122406(eq[A026798(n), A122265(n)])`
-/

namespace A334633.P14013720652328324311
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026798 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122265 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122406 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A334633.P14013720652328324311

/-! ## A334633.P14413063450770981532

`A054412(lt[A263401(n), A212620(n+1)])`
-/

namespace A334633.P14413063450770981532
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263401 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212620 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054412 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A334633.P14413063450770981532

/-! ## A334633.P13415632081406110745

`A122406(A065609(n+1)%A093550(n+2))`
-/

namespace A334633.P13415632081406110745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122406 (Int.tmod (A065609 (n + 1)) (A093550 (n + 2))).toNat

end

end A334633.P13415632081406110745

/-! ## A334633.P5042238407876537895

`A122406(lt[A032945(n+1), A008475(n+1)])`
-/

namespace A334633.P5042238407876537895
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032945 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008475 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122406 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A334633.P5042238407876537895

/-!
# A334635: Number of different values of x_1*x_2*...*x_n where x_1=1 and x_i-x_{i-1} is 0 or 1.

The programs for A334635, there is no canonical definition to state claims against.
-/

/-! ## A334635.P1625023477950965632

`∑[A257639(A210680(n+1))]`
-/

namespace A334635.P1625023477950965632
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257639 (A210680 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A334635.P1625023477950965632

/-! ## A334635.P5994867493436554175

`A104103(A000227(n))-A000195(n+4)`
-/

namespace A334635.P5994867493436554175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104103 (A000227 n).toNat - A000195 (n + 4)

end

end A334635.P5994867493436554175

/-! ## A334635.P6171532352831668577

`∑[floor(sqrt(A050379(4^n)))]`
-/

namespace A334635.P6171532352831668577
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A050379 (4 ^ n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A334635.P6171532352831668577

/-! ## A334635.P5977144307050347654

`A375815(a(n-1)²)+1` with `a(0)=1`
-/

namespace A334635.P5977144307050347654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A375815 (a (n - 1) ^ 2).toNat + 1

end

end A334635.P5977144307050347654

/-! ## A334635.P1167523330997233167

`record[A358836(val(∑{digits}[n, 5^#], 5))]`
-/

namespace A334635.P1167523330997233167
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358836 (SequenceMachineLib.valuation ((SequenceMachineLib.digits10 (f2 n)).map fun (x : ℕ) => 5 ^ x).sum 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A334635.P1167523330997233167

/-!
# A334636: Number of different values of (x_n, x_1*x_2*...*x_n) where x_1=1 and x_i-x_{i-1} is 0 or 1.

The programs for A334636, there is no canonical definition to state claims against.
-/

/-! ## A334636.P7481194586243591702

`A323212(∑[n+2]-1)+1`
-/

namespace A334636.P7481194586243591702
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323212 (∑ j ∈ Finset.range (n + 1), f1 j - 1) + 1

end

end A334636.P7481194586243591702

/-! ## A334636.P17183125028440780167

`∑[A109680(A358836(n))]`
-/

namespace A334636.P17183125028440780167
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109680 (A358836 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A334636.P17183125028440780167

/-! ## A334636.P12225121585355862417

`∑[A262689(A358836(n)²)]`
-/

namespace A334636.P12225121585355862417
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262689 (A358836 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A334636.P12225121585355862417

/-! ## A334636.P11752657721627707514

`∑[A029907(A087051(n))]+1`
-/

namespace A334636.P11752657721627707514
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029907 (A087051 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A334636.P11752657721627707514

/-! ## A334636.P10022074171425844326

`∑[A358836(A004915(n+1))]`
-/

namespace A334636.P10022074171425844326
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358836 (A004915 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A334636.P10022074171425844326

/-!
# A334637: Sum of different values of x_1*x_2*...*x_n where x_1=1 and x_i-x_{i-1} is 0 or 1.

The programs for A334637, there is no canonical definition to state claims against.
-/

/-! ## A334637.P17703937827084324575

`A004525(A076726(n+1))-A052652(n)`
-/

namespace A334637.P17703937827084324575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A076726 (n + 1)).toNat - A052652 n

end

end A334637.P17703937827084324575

/-! ## A334637.P13278110398531227654

`A004525(A076726(n+1))-A052796(n)`
-/

namespace A334637.P13278110398531227654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A076726 (n + 1)).toNat - A052796 n

end

end A334637.P13278110398531227654

/-!
# A334638: Three-column array pPT read by rows: subsequence of primitive Pythagorean triples (x, y, z) with x = A153893^2 - A000079^2, y = 2*A153893*A000079, z = A153893^2 + A000079^2, ordered by increasing z.

The programs for A334638, the canonical program `A334638.P5093247352907289012` is in `Seq.B000.C044`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A334638 has offset 0).

The definition of A334638 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A334638.P5093247352907289012

`7*a(n-3)-14*a(n-6)+8*a(n-9)` with `a(0)=3, a(1)=4, a(2)=5, a(3)=21, a(4)=20, a(5)=29, a(6)=105, a(7)=88, a(8)=137`

The canonical program, it is in `Seq.B000.C044`.
-/

namespace A334638

/-- `7*a(n-3)-14*a(n-6)+8*a(n-9)` -/
def P5093247352907289012.Spec : Prop :=
  ∀ n, P5093247352907289012.a n = A334638 n

theorem P5093247352907289012.correct : P5093247352907289012.Spec := by
  intro n
  simp only [A334638]

end A334638

/-!
# A334640: a(n) is the total number of down steps between the 2nd and 3rd up steps in all 2-Dyck paths of length 3*n. A 2-Dyck path is a nonnegative lattice path with steps (1, 2), (1, -1) that starts and ends at y = 0.

The programs for A334640, there is no canonical definition to state claims against.
-/

/-! ## A334640.P14698141367013535255

`and(A006508(A328080(n)), A328080(n))`
-/

namespace A334640.P14698141367013535255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A006508 (A328080 n).toNat) (A328080 n)

end

end A334640.P14698141367013535255

/-!
# A334641: a(n) is the total number of down steps between the 3rd and 4th up steps in all 2-Dyck paths of length 3*n.

The programs for A334641, there is no canonical definition to state claims against.
-/

/-! ## A334641.P17464230830176045597

`col(A141236(3*n+1)+n)`
-/

namespace A334641.P17464230830176045597
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.triCol (A141236 (3 * n + 1) + (n : ℤ)).toNat

end

end A334641.P17464230830176045597

/-!
# A334642: a(n) is the total number of down steps between the first and second up steps in all 2_1-Dyck paths of length 3*n. A 2_1-Dyck path is a lattice path with steps (1, 2), (1, -1) that starts and ends at y = 0 and stays above the line y = -1.

The programs for A334642, there is no canonical definition to state claims against.
-/

/-! ## A334642.P8931637307845132568

`A059169(∑[A225294(n+2)+A053669(n+1)])`
-/

namespace A334642.P8931637307845132568
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225294 (n + 2) + A053669 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059169 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A334642.P8931637307845132568

/-!
# A334643: a(n) is the total number of down steps between the second and third up steps in all 2_1-Dyck paths of length 3*n. A 2_1-Dyck path is a lattice path with steps (1, 2), (1, -1) that starts and ends at y = 0 and stays above the line y = -1.

The programs for A334643, there is no canonical definition to state claims against.
-/

/-! ## A334643.P41816042705962030

`∑{p}[A001407(2*n), A030101(#)]`
-/

namespace A334643.P41816042705962030
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001407 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A030101 p

end

end A334643.P41816042705962030

/-!
# A334644: a(n) is the total number of down steps between the third and fourth up steps in all 2_1-Dyck paths of length 3*n. A 2_1-Dyck path is a lattice path with steps (1, 2), (1, -1) that starts and ends at y = 0 and stays above the line y = -1.

The programs for A334644, there is no canonical definition to state claims against.
-/

/-! ## A334644.P1331274875678613558

`∑{d}[12*C(n, 3), A265128(#)]`
-/

namespace A334644.P1331274875678613558
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12 * Nat.choose n 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A265128 d

end

end A334644.P1331274875678613558

/-!
# A334645: a(n) is the total number of down steps between the 2nd and 3rd up steps in all 3-Dyck paths of length 4*n. A 3-Dyck path is a nonnegative lattice path with steps (1, 3), (1, -1) that starts and ends at y = 0.

The programs for A334645, there is no canonical definition to state claims against.
-/

/-! ## A334645.P4673715046091738926

`∑[A068463(∑[A291005(n)])]`
-/

namespace A334645.P4673715046091738926
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291005 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068463 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A334645.P4673715046091738926

/-!
# A334646: a(n) is the total number of down steps between the 3rd and 4th up steps in all 3-Dyck paths of length 4*n.

The programs for A334646, there is no canonical definition to state claims against.
-/

/-! ## A334646.P4600067805683971630

`Δ[A243512(A005251(n)!)]`
-/

namespace A334646.P4600067805683971630
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243512 (Nat.factorial (A005251 n).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A334646.P4600067805683971630

/-!
# A334647: a(n) is the total number of down steps between the first and second up steps in all 3_1-Dyck paths of length 4*n.

The programs for A334647, there is no canonical definition to state claims against.
-/

/-! ## A334647.P17169574676904221068

`A323643(∑[∑[A050971(n+1)]])`
-/

namespace A334647.P17169574676904221068
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050971 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323643 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A334647.P17169574676904221068

/-!
# A334648: a(n) is the total number of down steps between the second and third up steps in all 3_1-Dyck paths of length 4*n.

The programs for A334648, there is no canonical definition to state claims against.
-/

/-! ## A334648.P8536001170894216503

`A194405(A352082(n))-A042375(n)`
-/

namespace A334648.P8536001170894216503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194405 (A352082 n).toNat - A042375 n

end

end A334648.P8536001170894216503

/-!
# A334649: a(n) is the total number of down steps between the third and fourth up steps in all 3_1-Dyck paths of length 4*n.

The programs for A334649, there is no canonical definition to state claims against.
-/

/-! ## A334649.P13287625199590226945

`A231957(n+4)%A355904(n!)`
-/

namespace A334649.P13287625199590226945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A231957 (n + 4)) (A355904 (Nat.factorial n))

end

end A334649.P13287625199590226945

/-!
# A334650: a(n) is the total number of down steps between the first and second up steps in all 3_2-Dyck paths of length 4*n.

The programs for A334650, there is no canonical definition to state claims against.
-/

/-! ## A334650.P8708816244650627986

`A057364(A074608(n))+∑[3*n]`
-/

namespace A334650.P8708816244650627986
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057364 (A074608 n).toNat + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A334650.P8708816244650627986

/-!
# A334652: Number of integer partitions of n with at least two parts, each greater than 1 and with the same multiplicity.

The programs for A334652, there is no canonical definition to state claims against.
-/

/-! ## A334652.P60793771100290123

`A329436(round(acot(n)+n))-1`
-/

namespace A334652.P60793771100290123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329436 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))).toNat - 1

end

end A334652.P60793771100290123

/-! ## A334652.P4616743539833270228

`A329436(round(A028310(n)+8/(n+3)²))-1`
-/

namespace A334652.P4616743539833270228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329436 (SequenceMachineLib.roundAway ((A028310 n : ℚ) + 8 / ((n + 3) ^ 2 : ℚ))).toNat - 1

end

end A334652.P4616743539833270228

/-! ## A334652.P1758822417457394687

`A329436(A233583(n+1))-1`
-/

namespace A334652.P1758822417457394687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329436 (A233583 (n + 1)).toNat - 1

end

end A334652.P1758822417457394687

/-! ## A334652.P11976375227734489890

`xor(-A329436(A233583(n+1)), A165326(2*(n+1)))`
-/

namespace A334652.P11976375227734489890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (-A329436 (A233583 (n + 1)).toNat) (A165326 (2 * (n + 1)))

end

end A334652.P11976375227734489890

/-! ## A334652.P8322178808749704917

`A028310(A329436(round(sqrt(n²+1))))-1`
-/

namespace A334652.P8322178808749704917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A329436 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat).toNat - 1

end

end A334652.P8322178808749704917

/-!
# A334653: Number of integer partitions of n with at least two parts, each greater than 1, at least two kinds of parts and all with the same multiplicity.

The programs for A334653, there is no canonical definition to state claims against.
-/

/-! ## A334653.P15607448621523880038

`∑{d}[n, A318029(#)]`
-/

namespace A334653.P15607448621523880038
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A318029 d

end

end A334653.P15607448621523880038

/-! ## A334653.P558099556625046441

`A105564(xor(2, A349795(n)))`
-/

namespace A334653.P558099556625046441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105564 (Int.xor 2 (A349795 n)).toNat

end

end A334653.P558099556625046441

/-!
# A334654: Number of equilateral triangles of edge length square root of 2n and having vertices in Z^4, one of which is the origin.

The programs for A334654, there is no canonical definition to state claims against.
-/

/-! ## A334654.P16145023598082169571

`96*A002260(A229650(n))`
-/

namespace A334654.P16145023598082169571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  96 * A002260 (A229650 n).toNat

end

end A334654.P16145023598082169571

/-!
# A334655: Number of integers less than n with the same number of distinct prime factors as n.

The programs for A334655, there is no canonical definition to state claims against.
-/

/-! ## A334655.P11899651402742462766

`A067003(n+1)-1`
-/

namespace A334655.P11899651402742462766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067003 (n + 1) - 1

end

end A334655.P11899651402742462766

/-! ## A334655.P2336950764724317137

`n-A070962(n+1)`
-/

namespace A334655.P2336950764724317137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A070962 (n + 1)

end

end A334655.P2336950764724317137

/-! ## A334655.P10362399981703514461

`n-(1-(n-2*n)-A067003(1-(n-2*n)))`
-/

namespace A334655.P10362399981703514461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (1 - ((n : ℤ) - (2 * n : ℤ)) - A067003 (1 - ((n : ℤ) - (2 * n : ℤ))).toNat)

end

end A334655.P10362399981703514461

/-! ## A334655.P10300643896493188926

`A023443(A067003(n+1))`
-/

namespace A334655.P10300643896493188926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A067003 (n + 1)).toNat

end

end A334655.P10300643896493188926

/-! ## A334655.P13716341273011395566

`A023444(A067003(n+1)+1)`
-/

namespace A334655.P13716341273011395566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023444 (A067003 (n + 1) + 1).toNat

end

end A334655.P13716341273011395566

/-! ## A334655.P10795035846057102643

`n-(A322841(n+1)+A322837(n+1))`
-/

namespace A334655.P10795035846057102643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (A322841 (n + 1) + A322837 (n + 1))

end

end A334655.P10795035846057102643

/-! ## A334655.P5805444377407996231

`log2(Δ[A339512(n)])`
-/

namespace A334655.P5805444377407996231
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339512 n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (f1 (n + 1) - f1 n : ℝ)

end

end A334655.P5805444377407996231

/-! ## A334655.P11171934209808840190

`log2(A339512(n+1)-A339512(n))`
-/

namespace A334655.P11171934209808840190
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A339512 (n + 1) - A339512 n : ℝ)

end

end A334655.P11171934209808840190

/-! ## A334655.P6559121135541587267

`A003056(C(A067003(n+1), 2))`
-/

namespace A334655.P6559121135541587267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (Nat.choose (A067003 (n + 1)).toNat 2)

end

end A334655.P6559121135541587267

/-! ## A334655.P15335535755167863770

`A114327(C(A067003(n+1), 2))`
-/

namespace A334655.P15335535755167863770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114327 (Nat.choose (A067003 (n + 1)).toNat 2)

end

end A334655.P15335535755167863770

/-! ## A334655.P5128185602098028526

`A070198(n)%A067003(n+1)`
-/

namespace A334655.P5128185602098028526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A070198 n) (A067003 (n + 1))

end

end A334655.P5128185602098028526

/-! ## A334655.P13778137300034596675

`A079782(n+1)%A067003(n+1)`
-/

namespace A334655.P13778137300034596675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A079782 (n + 1)) (A067003 (n + 1))

end

end A334655.P13778137300034596675

/-! ## A334655.P14659910167511150597

`A083685(n+1)%A067003(n+1)`
-/

namespace A334655.P14659910167511150597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A083685 (n + 1)) (A067003 (n + 1))

end

end A334655.P14659910167511150597

/-! ## A334655.P14287386433671723730

`A121934(n+1)%A067003(n+1)`
-/

namespace A334655.P14287386433671723730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A121934 (n + 1)) (A067003 (n + 1))

end

end A334655.P14287386433671723730

/-! ## A334655.P2002433211636051956

`A259361(A067003(n+1)²)`
-/

namespace A334655.P2002433211636051956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259361 (A067003 (n + 1) ^ 2).toNat

end

end A334655.P2002433211636051956

/-!
# A334656: a(n) is the number of words of length n on the alphabet {0,1,2} with the number of 0's plus the number of 1's congruent to the number of 2's modulo 3.

The programs for A334656, the canonical program `A334656.P13745379952582008951` is in `Seq.B000.C044`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A334656 has offset 0).

The definition of A334656 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A334656.P7674822012205908938

`ogf((1-2x^2)/(1-6x^2-9x^3))`
-/

namespace A334656.P7674822012205908938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 0, -2] [1, 0, -6, -9] n

end

end A334656.P7674822012205908938

namespace A334656

/-- `ogf((1-2x^2)/(1-6x^2-9x^3))` -/
def P7674822012205908938.Spec : Prop :=
  ∀ n, P7674822012205908938.a n = A334656 n

end A334656

/-! ## A334656.P13745379952582008951

`6*a(n-2)+9*a(n-3)` with `a(0)=1, a(1)=0, a(2)=4`

The canonical program, it is in `Seq.B000.C044`.
-/

namespace A334656

/-- `6*a(n-2)+9*a(n-3)` -/
def P13745379952582008951.Spec : Prop :=
  ∀ n, (P13745379952582008951.a n : ℤ) = A334656 n

theorem P13745379952582008951.correct : P13745379952582008951.Spec := by
  intro n
  simp only [A334656]

end A334656

/-! ## A334656.P7602012995944113098

`abs(ceil((-3)^(n-1))-A057681(n))`
-/

namespace A334656.P7602012995944113098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |⌈(-3 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉ - A057681 n|

end

end A334656.P7602012995944113098

namespace A334656

/-- `abs(ceil((-3)^(n-1))-A057681(n))` -/
def P7602012995944113098.Spec : Prop :=
  ∀ n, P7602012995944113098.a n = A334656 n

end A334656

/-! ## A334656.P640025626231172584

`A133494(n)-A057681(n)*A062157(n)`
-/

namespace A334656.P640025626231172584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133494 n - A057681 n * A062157 n

end

end A334656.P640025626231172584

namespace A334656

/-- `A133494(n)-A057681(n)*A062157(n)` -/
def P640025626231172584.Spec : Prop :=
  ∀ n, P640025626231172584.a n = A334656 n

end A334656

/-! ## A334656.P7517333352705691080

`∑{#}[n, (-1)^(n-#)*C(n, #)*A387843(#)]`
-/

namespace A334656.P7517333352705691080
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (-1 : ℚ) ^ ((n : ℤ) - (k : ℤ) : ℤ) * (Nat.choose n k : ℚ) * (A387843 k : ℚ)

end

end A334656.P7517333352705691080

namespace A334656

/-- `∑{#}[n, (-1)^(n-#)*C(n, #)*A387843(#)]` -/
def P7517333352705691080.Spec : Prop :=
  ∀ n, P7517333352705691080.a n = (A334656 n : ℚ)

end A334656

/-!
# A334657: Dirichlet g.f.: 1 / zeta(s-2).

The programs for A334657, the canonical program `A334657.P15465611070505972424` is in `Seq.B001.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A334657 has offset 1).

The definition of A334657 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A334657.P15465611070505972424

`A008683(n+1)*(n+1)²`

The canonical program, it is in `Seq.B001.C013`.
-/

namespace A334657

/-- `A008683(n+1)*(n+1)²` -/
def P15465611070505972424.Spec : Prop :=
  ∀ n, P15465611070505972424.a n = A334657 (n + 1)

theorem P15465611070505972424.correct : P15465611070505972424.Spec := by
  intro n
  simp only [A334657, Nat.add_sub_cancel]

end A334657

/-! ## A334657.P9024647142795782878

`(n+1)²*∏{e}[n+1, -#!]%2`
-/

namespace A334657.P9024647142795782878
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) * Int.tmod (∏ p ∈ Nat.primeFactors (f1 n), (-(Nat.factorial (Nat.factorization (f1 n) p) : ℤ))) 2

end

end A334657.P9024647142795782878

namespace A334657

/-- `(n+1)²*∏{e}[n+1, -#!]%2` -/
def P9024647142795782878.Spec : Prop :=
  ∀ n, P9024647142795782878.a n = A334657 (n + 1)

end A334657

/-! ## A334657.P783613411813419381

`C(∏{p}[n+1, #], n)*∏{p}[n+1, -#]`
-/

namespace A334657.P783613411813419381
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (∏ p ∈ Nat.primeFactors (f1 n), p) n : ℤ) * (∏ p ∈ Nat.primeFactors (f2 n), (-(p : ℤ)))

end

end A334657.P783613411813419381

namespace A334657

/-- `C(∏{p}[n+1, #], n)*∏{p}[n+1, -#]` -/
def P783613411813419381.Spec : Prop :=
  ∀ n, P783613411813419381.a n = A334657 (n + 1)

end A334657

/-! ## A334657.P11473318602549028963

`round(1/∏{e}[n+1, -#²])*(n+1)²`
-/

namespace A334657.P11473318602549028963
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (1 / ((∏ p ∈ Nat.primeFactors (f1 n), (-(Nat.factorization (f1 n) p ^ 2 : ℤ)) : ℤ) : ℚ)) * ((n + 1) ^ 2 : ℤ)

end

end A334657.P11473318602549028963

namespace A334657

/-- `round(1/∏{e}[n+1, -#²])*(n+1)²` -/
def P11473318602549028963.Spec : Prop :=
  ∀ n, P11473318602549028963.a n = A334657 (n + 1)

end A334657

/-! ## A334657.P17733510834398029189

`(n+1)²*round(∏{p}[n+1, -#]/(n+2))`
-/

namespace A334657.P17733510834398029189
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) * SequenceMachineLib.roundAway (((∏ p ∈ Nat.primeFactors (f1 n), (-(p : ℤ)) : ℤ) : ℚ) / (n + 2 : ℚ))

end

end A334657.P17733510834398029189

namespace A334657

/-- `(n+1)²*round(∏{p}[n+1, -#]/(n+2))` -/
def P17733510834398029189.Spec : Prop :=
  ∀ n, P17733510834398029189.a n = A334657 (n + 1)

end A334657

/-! ## A334657.P1860969195851527978

`(1+n)*(1+n)*∏{e}[n+1, -floor(1/#)]`
-/

namespace A334657.P1860969195851527978
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 + n : ℤ) * ((1 + n : ℤ) * (∏ p ∈ Nat.primeFactors (f1 n), (-⌊1 / (Nat.factorization (f1 n) p : ℚ)⌋)))

end

end A334657.P1860969195851527978

namespace A334657

/-- `(1+n)*(1+n)*∏{e}[n+1, -floor(1/#)]` -/
def P1860969195851527978.Spec : Prop :=
  ∀ n, P1860969195851527978.a n = A334657 (n + 1)

theorem P1860969195851527978.correct : P1860969195851527978.Spec := by
  intro n
  simp only [A334657, Nat.add_sub_cancel, A334657.P1860969195851527978.f1, A334657.P1860969195851527978.a, A334657.P15465611070505972424.a, A008683, A008683.P10736294816071761024.f1, A008683.P10736294816071761024.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A334657

/-! ## A334657.P14810316469295246159

`∑{d}[n+1, A053822(#)]`
-/

namespace A334657.P14810316469295246159
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A053822 d

end

end A334657.P14810316469295246159

namespace A334657

/-- `∑{d}[n+1, A053822(#)]` -/
def P14810316469295246159.Spec : Prop :=
  ∀ n, P14810316469295246159.a n = A334657 (n + 1)

end A334657

/-! ## A334657.P16558674390629412597

`(n+1)*A055615(n+1)`
-/

namespace A334657.P16558674390629412597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A055615 (n + 1)

end

end A334657.P16558674390629412597

namespace A334657

/-- `(n+1)*A055615(n+1)` -/
def P16558674390629412597.Spec : Prop :=
  ∀ n, P16558674390629412597.a n = A334657 (n + 1)

theorem P16558674390629412597.correct : P16558674390629412597.Spec := by
  intro n
  simp only [A334657, Nat.add_sub_cancel, A334657.P16558674390629412597.a, A334657.P15465611070505972424.a, A008683, A008683.P10736294816071761024.f1, A008683.P10736294816071761024.a, A055615, A055615.P8993130195977213181.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A334657

/-! ## A334657.P15165872089819310015

`A334659(n+1)/(n+1)`
-/

namespace A334657.P15165872089819310015
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A334659 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A334657.P15165872089819310015

namespace A334657

/-- `A334659(n+1)/(n+1)` -/
def P15165872089819310015.Spec : Prop :=
  ∀ n, P15165872089819310015.a n = (A334657 (n + 1) : ℚ)

end A334657

/-! ## A334657.P1069495477865264331

`(n+1)²*A008683(n+1)`
-/

namespace A334657.P1069495477865264331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) * A008683 (n + 1)

end

end A334657.P1069495477865264331

namespace A334657

/-- `(n+1)²*A008683(n+1)` -/
def P1069495477865264331.Spec : Prop :=
  ∀ n, P1069495477865264331.a n = A334657 (n + 1)

theorem P1069495477865264331.correct : P1069495477865264331.Spec := by
  intro n
  simp only [A334657, Nat.add_sub_cancel, A334657.P1069495477865264331.a, A334657.P15465611070505972424.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A334657

/-! ## A334657.P16225280526512744052

`A334660(n+1)/(n+1)²`
-/

namespace A334657.P16225280526512744052
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A334660 (n + 1) : ℚ) / ((n + 1) ^ 2 : ℚ)

end

end A334657.P16225280526512744052

namespace A334657

/-- `A334660(n+1)/(n+1)²` -/
def P16225280526512744052.Spec : Prop :=
  ∀ n, P16225280526512744052.a n = (A334657 (n + 1) : ℚ)

end A334657

/-! ## A334657.P18147874011204625972

`(n+1)/2*A062004(n+1)`
-/

namespace A334657.P18147874011204625972
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / 2 * (A062004 (n + 1) : ℚ)

end

end A334657.P18147874011204625972

namespace A334657

/-- `(n+1)/2*A062004(n+1)` -/
def P18147874011204625972.Spec : Prop :=
  ∀ n, P18147874011204625972.a n = (A334657 (n + 1) : ℚ)

theorem P18147874011204625972.correct : P18147874011204625972.Spec := by
  intro n
  simp only [A334657, Nat.add_sub_cancel, A334657.P18147874011204625972.a, A334657.P15465611070505972424.a, A008683, A008683.P10736294816071761024.f1, A008683.P10736294816071761024.a, A062004, A062004.P15381032056684289952.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A334657

/-! ## A334657.P14295617907044354023

`(n+1)*(A061669(n+1)-(n+1))`
-/

namespace A334657.P14295617907044354023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A061669 (n + 1) - (n + 1 : ℤ))

end

end A334657.P14295617907044354023

namespace A334657

/-- `(n+1)*(A061669(n+1)-(n+1))` -/
def P14295617907044354023.Spec : Prop :=
  ∀ n, P14295617907044354023.a n = A334657 (n + 1)

theorem P14295617907044354023.correct : P14295617907044354023.Spec := by
  intro n
  simp only [A334657, Nat.add_sub_cancel, A334657.P14295617907044354023.a, A334657.P15465611070505972424.a, A008683, A008683.P10736294816071761024.f1, A008683.P10736294816071761024.a, A061669, A061669.P9904449998917605232.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A334657

/-! ## A334657.P8500774745288011432

`A008683(C(n+1, n))/(1/(n+1))²`
-/

namespace A334657.P8500774745288011432
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008683 (Nat.choose (n + 1) n) : ℚ) / (1 / (n + 1 : ℚ)) ^ 2

end

end A334657.P8500774745288011432

namespace A334657

/-- `A008683(C(n+1, n))/(1/(n+1))²` -/
def P8500774745288011432.Spec : Prop :=
  ∀ n, P8500774745288011432.a n = (A334657 (n + 1) : ℚ)

theorem P8500774745288011432.correct : P8500774745288011432.Spec := by
  intro n
  simp only [A334657, Nat.add_sub_cancel, A334657.P8500774745288011432.a, A334657.P15465611070505972424.a, SequenceMachineLib.memo_apply]
  try simp

end A334657

/-! ## A334657.P6904881041571702653

`(n+1)²*A007423(n+1)-(n+1)²`
-/

namespace A334657.P6904881041571702653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) * A007423 (n + 1) - ((n + 1) ^ 2 : ℤ)

end

end A334657.P6904881041571702653

namespace A334657

/-- `(n+1)²*A007423(n+1)-(n+1)²` -/
def P6904881041571702653.Spec : Prop :=
  ∀ n, P6904881041571702653.a n = A334657 (n + 1)

theorem P6904881041571702653.correct : P6904881041571702653.Spec := by
  intro n
  simp only [A334657, Nat.add_sub_cancel, A334657.P6904881041571702653.a, A334657.P15465611070505972424.a, A007423, A007423.P17981127199039660822.a, A008683, A008683.P10736294816071761024.f1, A008683.P10736294816071761024.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A334657

/-! ## A334657.P240475405097128056

`(n+1)*(n+1)*A008683(2*n+1-n)`
-/

namespace A334657.P240475405097128056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * ((n + 1 : ℤ) * A008683 (2 * n + 1 - n))

end

end A334657.P240475405097128056

namespace A334657

/-- `(n+1)*(n+1)*A008683(2*n+1-n)` -/
def P240475405097128056.Spec : Prop :=
  ∀ n, P240475405097128056.a n = A334657 (n + 1)

end A334657

/-! ## A334657.P2760701492411292463

`A140651(n+1)*A140664(n+1)`
-/

namespace A334657.P2760701492411292463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140651 (n + 1) * A140664 (n + 1)

end

end A334657.P2760701492411292463

namespace A334657

/-- `A140651(n+1)*A140664(n+1)` -/
def P2760701492411292463.Spec : Prop :=
  ∀ n, P2760701492411292463.a n = A334657 (n + 1)

end A334657

/-! ## A334657.P6282096537810229266

`∑{d}[n+1, A062354(#)*A008683(n+1)]`
-/

namespace A334657.P6282096537810229266
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A062354 d * A008683 (n + 1)

end

end A334657.P6282096537810229266

namespace A334657

/-- `∑{d}[n+1, A062354(#)*A008683(n+1)]` -/
def P6282096537810229266.Spec : Prop :=
  ∀ n, P6282096537810229266.a n = A334657 (n + 1)

end A334657

/-! ## A334657.P8012396349447859965

`(n+1)*A008683(n+1)*A000027(n+1)`
-/

namespace A334657.P8012396349447859965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A008683 (n + 1) * A000027 (n + 1))

end

end A334657.P8012396349447859965

namespace A334657

/-- `(n+1)*A008683(n+1)*A000027(n+1)` -/
def P8012396349447859965.Spec : Prop :=
  ∀ n, P8012396349447859965.a n = A334657 (n + 1)

theorem P8012396349447859965.correct : P8012396349447859965.Spec := by
  intro n
  simp only [A334657, Nat.add_sub_cancel, A334657.P8012396349447859965.a, A334657.P15465611070505972424.a, A000027, A000027.P10331202704469894836.a, A008683, A008683.P10736294816071761024.f1, A008683.P10736294816071761024.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A334657

/-! ## A334657.P13828755556986981297

`∑{d}[n+1, A008683(#)*A046970((n+1)/#)]`
-/

namespace A334657.P13828755556986981297
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A046970 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A334657.P13828755556986981297

namespace A334657

/-- `∑{d}[n+1, A008683(#)*A046970((n+1)/#)]` -/
def P13828755556986981297.Spec : Prop :=
  ∀ n, P13828755556986981297.a n = A334657 (n + 1)

end A334657

/-!
# A334659: Dirichlet g.f.: 1 / zeta(s-3).

The programs for A334659, the canonical program `A334659.P4253169947487790436` is in `Seq.B001.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A334659 has offset 1).

The definition of A334659 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A334659.P4253169947487790436

`A008683(n+1)*(n+1)^3`

The canonical program, it is in `Seq.B001.C013`.
-/

namespace A334659

/-- `A008683(n+1)*(n+1)^3` -/
def P4253169947487790436.Spec : Prop :=
  ∀ n, P4253169947487790436.a n = A334659 (n + 1)

theorem P4253169947487790436.correct : P4253169947487790436.Spec := by
  intro n
  simp only [A334659, Nat.add_sub_cancel]

end A334659

/-! ## A334659.P9996695864900447035

`((1+n)*∏{e}[n+1, -floor(1/#)])^3`
-/

namespace A334659.P9996695864900447035
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((1 + n : ℤ) * (∏ p ∈ Nat.primeFactors (f1 n), (-⌊1 / (Nat.factorization (f1 n) p : ℚ)⌋))) ^ 3

end

end A334659.P9996695864900447035

namespace A334659

/-- `((1+n)*∏{e}[n+1, -floor(1/#)])^3` -/
def P9996695864900447035.Spec : Prop :=
  ∀ n, P9996695864900447035.a n = A334659 (n + 1)

end A334659

/-! ## A334659.P8043070619719274067

`((n+1)*round(1/∏{e}[n+1, -#²]))^3`
-/

namespace A334659.P8043070619719274067
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℤ) * SequenceMachineLib.roundAway (1 / ((∏ p ∈ Nat.primeFactors (f1 n), (-(Nat.factorization (f1 n) p ^ 2 : ℤ)) : ℤ) : ℚ))) ^ 3

end

end A334659.P8043070619719274067

namespace A334659

/-- `((n+1)*round(1/∏{e}[n+1, -#²]))^3` -/
def P8043070619719274067.Spec : Prop :=
  ∀ n, P8043070619719274067.a n = A334659 (n + 1)

end A334659

/-! ## A334659.P14198371221351151641

`(1+n)*∏{e}[n+1, -floor(1/#)]*(n+1)²`
-/

namespace A334659.P14198371221351151641
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 + n : ℤ) * (∏ p ∈ Nat.primeFactors (f1 n), (-⌊1 / (Nat.factorization (f1 n) p : ℚ)⌋)) * ((n + 1) ^ 2 : ℤ)

end

end A334659.P14198371221351151641

namespace A334659

/-- `(1+n)*∏{e}[n+1, -floor(1/#)]*(n+1)²` -/
def P14198371221351151641.Spec : Prop :=
  ∀ n, P14198371221351151641.a n = A334659 (n + 1)

theorem P14198371221351151641.correct : P14198371221351151641.Spec := by
  intro n
  simp only [A334659, Nat.add_sub_cancel, A334659.P14198371221351151641.f1, A334659.P14198371221351151641.a, A334659.P4253169947487790436.a, A008683, A008683.P10736294816071761024.f1, A008683.P10736294816071761024.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A334659

/-! ## A334659.P7204738337036491542

`(n+1)*C(∏{p}[n+1, #], n)*∏{p}[n+1, -#]`
-/

namespace A334659.P7204738337036491542
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * ((Nat.choose (∏ p ∈ Nat.primeFactors (f1 n), p) n : ℤ) * (∏ p ∈ Nat.primeFactors (f2 n), (-(p : ℤ))))

end

end A334659.P7204738337036491542

namespace A334659

/-- `(n+1)*C(∏{p}[n+1, #], n)*∏{p}[n+1, -#]` -/
def P7204738337036491542.Spec : Prop :=
  ∀ n, P7204738337036491542.a n = A334659 (n + 1)

end A334659

/-! ## A334659.P12471252176278920325

`(n+1)*round(1/∏{e}[n+1, -#²])*(n+1)²`
-/

namespace A334659.P12471252176278920325
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * SequenceMachineLib.roundAway (1 / ((∏ p ∈ Nat.primeFactors (f1 n), (-(Nat.factorization (f1 n) p ^ 2 : ℤ)) : ℤ) : ℚ)) * ((n + 1) ^ 2 : ℤ)

end

end A334659.P12471252176278920325

namespace A334659

/-- `(n+1)*round(1/∏{e}[n+1, -#²])*(n+1)²` -/
def P12471252176278920325.Spec : Prop :=
  ∀ n, P12471252176278920325.a n = A334659 (n + 1)

end A334659

/-! ## A334659.P5050098418409244661

`((n+1)*(abs(round(∏{p}[n+1, -#]/Δ[n²])+2)-2))^3`
-/

namespace A334659.P5050098418409244661
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℤ) * (|SequenceMachineLib.roundAway (((∏ p ∈ Nat.primeFactors (f1 n), (-(p : ℤ)) : ℤ) : ℚ) / ((f2 (n + 1) : ℤ) - (f2 n : ℤ) : ℚ)) + 2| - 2)) ^ 3

end

end A334659.P5050098418409244661

namespace A334659

/-- `((n+1)*(abs(round(∏{p}[n+1, -#]/Δ[n²])+2)-2))^3` -/
def P5050098418409244661.Spec : Prop :=
  ∀ n, P5050098418409244661.a n = A334659 (n + 1)

end A334659

/-! ## A334659.P1325962066004070725

`(n+1)*(abs(round(∏{p}[n+1, -#]/Δ[n²])+2)-2)*(n+1)²`
-/

namespace A334659.P1325962066004070725
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (|SequenceMachineLib.roundAway (((∏ p ∈ Nat.primeFactors (f1 n), (-(p : ℤ)) : ℤ) : ℚ) / ((f2 (n + 1) : ℤ) - (f2 n : ℤ) : ℚ)) + 2| - 2) * ((n + 1) ^ 2 : ℤ)

end

end A334659.P1325962066004070725

namespace A334659

/-- `(n+1)*(abs(round(∏{p}[n+1, -#]/Δ[n²])+2)-2)*(n+1)²` -/
def P1325962066004070725.Spec : Prop :=
  ∀ n, P1325962066004070725.a n = A334659 (n + 1)

end A334659

/-! ## A334659.P8847532296460179578

`A055615(n+1)^3`
-/

namespace A334659.P8847532296460179578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055615 (n + 1) ^ 3

end

end A334659.P8847532296460179578

namespace A334659

/-- `A055615(n+1)^3` -/
def P8847532296460179578.Spec : Prop :=
  ∀ n, P8847532296460179578.a n = A334659 (n + 1)

end A334659

/-! ## A334659.P12921013567132322396

`∑{d}[n+1, A053825(#)]`
-/

namespace A334659.P12921013567132322396
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A053825 d

end

end A334659.P12921013567132322396

namespace A334659

/-- `∑{d}[n+1, A053825(#)]` -/
def P12921013567132322396.Spec : Prop :=
  ∀ n, P12921013567132322396.a n = A334659 (n + 1)

end A334659

/-! ## A334659.P3085820634381553678

`(A062004(n+1)/2)^3`
-/

namespace A334659.P3085820634381553678
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A062004 (n + 1) : ℚ) / 2) ^ 3

end

end A334659.P3085820634381553678

namespace A334659

/-- `(A062004(n+1)/2)^3` -/
def P3085820634381553678.Spec : Prop :=
  ∀ n, P3085820634381553678.a n = (A334659 (n + 1) : ℚ)

end A334659

/-! ## A334659.P7281390226179233978

`(n+1)*A334657(n+1)`
-/

namespace A334659.P7281390226179233978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A334657 (n + 1)

end

end A334659.P7281390226179233978

namespace A334659

/-- `(n+1)*A334657(n+1)` -/
def P7281390226179233978.Spec : Prop :=
  ∀ n, P7281390226179233978.a n = A334659 (n + 1)

theorem P7281390226179233978.correct : P7281390226179233978.Spec := by
  intro n
  simp only [A334659, Nat.add_sub_cancel, A334659.P7281390226179233978.a, A334659.P4253169947487790436.a, A008683, A008683.P10736294816071761024.f1, A008683.P10736294816071761024.a, A334657, A334657.P15465611070505972424.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A334659

/-! ## A334659.P14459829261124519758

`A334660(n+1)/(n+1)`
-/

namespace A334659.P14459829261124519758
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A334660 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A334659.P14459829261124519758

namespace A334659

/-- `A334660(n+1)/(n+1)` -/
def P14459829261124519758.Spec : Prop :=
  ∀ n, P14459829261124519758.a n = (A334659 (n + 1) : ℚ)

end A334659

/-! ## A334659.P929971083309796752

`(A061669(n+1)-(n+1))^3`
-/

namespace A334659.P929971083309796752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A061669 (n + 1) - (n + 1 : ℤ)) ^ 3

end

end A334659.P929971083309796752

namespace A334659

/-- `(A061669(n+1)-(n+1))^3` -/
def P929971083309796752.Spec : Prop :=
  ∀ n, P929971083309796752.a n = A334659 (n + 1)

end A334659

/-! ## A334659.P2541401798786496408

`(n+1)^3*A008683(n+1)`
-/

namespace A334659.P2541401798786496408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 3 : ℤ) * A008683 (n + 1)

end

end A334659.P2541401798786496408

namespace A334659

/-- `(n+1)^3*A008683(n+1)` -/
def P2541401798786496408.Spec : Prop :=
  ∀ n, P2541401798786496408.a n = A334659 (n + 1)

theorem P2541401798786496408.correct : P2541401798786496408.Spec := by
  intro n
  simp only [A334659, Nat.add_sub_cancel, A334659.P2541401798786496408.a, A334659.P4253169947487790436.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A334659

/-! ## A334659.P15080118852842689237

`(n+1)*A008683(C(n+1, n))*(n+1)²`
-/

namespace A334659.P15080118852842689237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A008683 (Nat.choose (n + 1) n) * ((n + 1) ^ 2 : ℤ)

end

end A334659.P15080118852842689237

namespace A334659

/-- `(n+1)*A008683(C(n+1, n))*(n+1)²` -/
def P15080118852842689237.Spec : Prop :=
  ∀ n, P15080118852842689237.a n = A334659 (n + 1)

theorem P15080118852842689237.correct : P15080118852842689237.Spec := by
  intro n
  simp only [A334659, Nat.add_sub_cancel, A334659.P15080118852842689237.a, A334659.P4253169947487790436.a, SequenceMachineLib.memo_apply]
  try norm_num [Nat.choose_two_right, Nat.factorial]
  try ring_nf

end A334659

/-! ## A334659.P9529596558828648374

`(n+1)*A008683(2*n+1-n)*(n+1)²`
-/

namespace A334659.P9529596558828648374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A008683 (2 * n + 1 - n) * ((n + 1) ^ 2 : ℤ))

end

end A334659.P9529596558828648374

namespace A334659

/-- `(n+1)*A008683(2*n+1-n)*(n+1)²` -/
def P9529596558828648374.Spec : Prop :=
  ∀ n, P9529596558828648374.a n = A334659 (n + 1)

end A334659

/-! ## A334659.P8538387259796342181

`A000290(n+1)*A055615(n+1)`
-/

namespace A334659.P8538387259796342181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (n + 1) * A055615 (n + 1)

end

end A334659.P8538387259796342181

namespace A334659

/-- `A000290(n+1)*A055615(n+1)` -/
def P8538387259796342181.Spec : Prop :=
  ∀ n, P8538387259796342181.a n = A334659 (n + 1)

theorem P8538387259796342181.correct : P8538387259796342181.Spec := by
  intro n
  simp only [A334659, Nat.add_sub_cancel, A334659.P8538387259796342181.a, A334659.P4253169947487790436.a, A000290, A000290.P12206242496348924484.a, A008683, A008683.P10736294816071761024.f1, A008683.P10736294816071761024.a, A055615, A055615.P8993130195977213181.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A334659

/-! ## A334659.P12282524524966759611

`A011262(n+1)*A055615(n+1)`
-/

namespace A334659.P12282524524966759611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011262 (n + 1) * A055615 (n + 1)

end

end A334659.P12282524524966759611

namespace A334659

/-- `A011262(n+1)*A055615(n+1)` -/
def P12282524524966759611.Spec : Prop :=
  ∀ n, P12282524524966759611.a n = A334659 (n + 1)

end A334659

/-! ## A334659.P12302021526016853243

`A048798(n+1)*A055615(n+1)`
-/

namespace A334659.P12302021526016853243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048798 (n + 1) * A055615 (n + 1)

end

end A334659.P12302021526016853243

namespace A334659

/-- `A048798(n+1)*A055615(n+1)` -/
def P12302021526016853243.Spec : Prop :=
  ∀ n, P12302021526016853243.a n = A334659 (n + 1)

end A334659

/-!
# A334660: Dirichlet g.f.: 1 / zeta(s-4).

The programs for A334660, the canonical program `A334660.P7721692706303750522` is in `Seq.B001.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A334660 has offset 1).

The definition of A334660 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A334660.P7721692706303750522

`A008683(n+1)*(n+1)^4`

The canonical program, it is in `Seq.B001.C013`.
-/

namespace A334660

/-- `A008683(n+1)*(n+1)^4` -/
def P7721692706303750522.Spec : Prop :=
  ∀ n, P7721692706303750522.a n = A334660 (n + 1)

theorem P7721692706303750522.correct : P7721692706303750522.Spec := by
  intro n
  simp only [A334660, Nat.add_sub_cancel]

end A334660

/-! ## A334660.P16040635704895775275

`(n+1)*round(1/∏{e}[n+1, -#²])*(n+1)^3`
-/

namespace A334660.P16040635704895775275
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * SequenceMachineLib.roundAway (1 / ((∏ p ∈ Nat.primeFactors (f1 n), (-(Nat.factorization (f1 n) p ^ 2 : ℤ)) : ℤ) : ℚ)) * ((n + 1) ^ 3 : ℤ)

end

end A334660.P16040635704895775275

namespace A334660

/-- `(n+1)*round(1/∏{e}[n+1, -#²])*(n+1)^3` -/
def P16040635704895775275.Spec : Prop :=
  ∀ n, P16040635704895775275.a n = A334660 (n + 1)

end A334660

/-! ## A334660.P15694923922280271411

`(1+n)*∏{e}[n+1, -floor(1/#)]*∑[3*n*(n+1)+1]`
-/

namespace A334660.P15694923922280271411
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n * (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 + n : ℤ) * (∏ p ∈ Nat.primeFactors (f1 n), (-⌊1 / (Nat.factorization (f1 n) p : ℚ)⌋)) * ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

end

end A334660.P15694923922280271411

namespace A334660

/-- `(1+n)*∏{e}[n+1, -floor(1/#)]*∑[3*n*(n+1)+1]` -/
def P15694923922280271411.Spec : Prop :=
  ∀ n, P15694923922280271411.a n = A334660 (n + 1)

end A334660

/-! ## A334660.P3692624749690549185

`(1+n)*∏{e}[n+1, -floor(1/#)]*(n+1)*(n+1)*(n+1)`
-/

namespace A334660.P3692624749690549185
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 + n : ℤ) * (∏ p ∈ Nat.primeFactors (f1 n), (-⌊1 / (Nat.factorization (f1 n) p : ℚ)⌋)) * (n + 1 : ℤ) * (n + 1 : ℤ) * (n + 1 : ℤ)

end

end A334660.P3692624749690549185

namespace A334660

/-- `(1+n)*∏{e}[n+1, -floor(1/#)]*(n+1)*(n+1)*(n+1)` -/
def P3692624749690549185.Spec : Prop :=
  ∀ n, P3692624749690549185.a n = A334660 (n + 1)

theorem P3692624749690549185.correct : P3692624749690549185.Spec := by
  intro n
  simp only [A334660, Nat.add_sub_cancel, A334660.P3692624749690549185.f1, A334660.P3692624749690549185.a, A334660.P7721692706303750522.a, A008683, A008683.P10736294816071761024.f1, A008683.P10736294816071761024.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A334660

/-! ## A334660.P17085166261727388822

`∑{d}[n+1, A053826(#)]`
-/

namespace A334660.P17085166261727388822
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A053826 d

end

end A334660.P17085166261727388822

namespace A334660

/-- `∑{d}[n+1, A053826(#)]` -/
def P17085166261727388822.Spec : Prop :=
  ∀ n, P17085166261727388822.a n = A334660 (n + 1)

end A334660

/-! ## A334660.P1743725835122029455

`(n+1)*A334659(n+1)`
-/

namespace A334660.P1743725835122029455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A334659 (n + 1)

end

end A334660.P1743725835122029455

namespace A334660

/-- `(n+1)*A334659(n+1)` -/
def P1743725835122029455.Spec : Prop :=
  ∀ n, P1743725835122029455.a n = A334660 (n + 1)

theorem P1743725835122029455.correct : P1743725835122029455.Spec := by
  intro n
  simp only [A334660, Nat.add_sub_cancel, A334660.P1743725835122029455.a, A334660.P7721692706303750522.a, A008683, A008683.P10736294816071761024.f1, A008683.P10736294816071761024.a, A334659, A334659.P4253169947487790436.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A334660

/-! ## A334660.P429924048041599858

`(n+1)²*A334657(n+1)`
-/

namespace A334660.P429924048041599858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) * A334657 (n + 1)

end

end A334660.P429924048041599858

namespace A334660

/-- `(n+1)²*A334657(n+1)` -/
def P429924048041599858.Spec : Prop :=
  ∀ n, P429924048041599858.a n = A334660 (n + 1)

theorem P429924048041599858.correct : P429924048041599858.Spec := by
  intro n
  simp only [A334660, Nat.add_sub_cancel, A334660.P429924048041599858.a, A334660.P7721692706303750522.a, A008683, A008683.P10736294816071761024.f1, A008683.P10736294816071761024.a, A334657, A334657.P15465611070505972424.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A334660

/-! ## A334660.P6668593912162570945

`(n+1)^3*A055615(n+1)`
-/

namespace A334660.P6668593912162570945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 3 : ℤ) * A055615 (n + 1)

end

end A334660.P6668593912162570945

namespace A334660

/-- `(n+1)^3*A055615(n+1)` -/
def P6668593912162570945.Spec : Prop :=
  ∀ n, P6668593912162570945.a n = A334660 (n + 1)

theorem P6668593912162570945.correct : P6668593912162570945.Spec := by
  intro n
  simp only [A334660, Nat.add_sub_cancel, A334660.P6668593912162570945.a, A334660.P7721692706303750522.a, A008683, A008683.P10736294816071761024.f1, A008683.P10736294816071761024.a, A055615, A055615.P8993130195977213181.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A334660

/-! ## A334660.P6424939421637756508

`A055615(n+1)*A056551(n+1)`
-/

namespace A334660.P6424939421637756508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055615 (n + 1) * A056551 (n + 1)

end

end A334660.P6424939421637756508

namespace A334660

/-- `A055615(n+1)*A056551(n+1)` -/
def P6424939421637756508.Spec : Prop :=
  ∀ n, P6424939421637756508.a n = A334660 (n + 1)

end A334660

/-! ## A334660.P7236414672122521095

`A055615(n+1)*A056555(n+1)`
-/

namespace A334660.P7236414672122521095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055615 (n + 1) * A056555 (n + 1)

end

end A334660.P7236414672122521095

namespace A334660

/-- `A055615(n+1)*A056555(n+1)` -/
def P7236414672122521095.Spec : Prop :=
  ∀ n, P7236414672122521095.a n = A334660 (n + 1)

end A334660

/-! ## A334660.P6811380798862941317

`A055615(n+1)*A254521(n+1)`
-/

namespace A334660.P6811380798862941317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055615 (n + 1) * A254521 (n + 1)

end

end A334660.P6811380798862941317

namespace A334660

/-- `A055615(n+1)*A254521(n+1)` -/
def P6811380798862941317.Spec : Prop :=
  ∀ n, P6811380798862941317.a n = A334660 (n + 1)

end A334660

/-! ## A334660.P14461851016016429778

`A055615(n+1)*A270437(n+1)`
-/

namespace A334660.P14461851016016429778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055615 (n + 1) * A270437 (n + 1)

end

end A334660.P14461851016016429778

namespace A334660

/-- `A055615(n+1)*A270437(n+1)` -/
def P14461851016016429778.Spec : Prop :=
  ∀ n, P14461851016016429778.a n = A334660 (n + 1)

end A334660

/-! ## A334660.P5479337523285343038

`A055615(n+1)*A351601(n+1)`
-/

namespace A334660.P5479337523285343038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055615 (n + 1) * A351601 (n + 1)

end

end A334660.P5479337523285343038

namespace A334660

/-- `A055615(n+1)*A351601(n+1)` -/
def P5479337523285343038.Spec : Prop :=
  ∀ n, P5479337523285343038.a n = A334660 (n + 1)

end A334660

/-! ## A334660.P11452307745556883295

`∑{d}[n+1, A008683(#)*A189922((n+1)/#)]`
-/

namespace A334660.P11452307745556883295
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A189922 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A334660.P11452307745556883295

namespace A334660

/-- `∑{d}[n+1, A008683(#)*A189922((n+1)/#)]` -/
def P11452307745556883295.Spec : Prop :=
  ∀ n, P11452307745556883295.a n = A334660 (n + 1)

end A334660

/-! ## A334660.P18411428360097056993

`∑{d}[n+1, A178448(#)*A372965((n+1)/#)]`
-/

namespace A334660.P18411428360097056993
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A178448 d * A372965 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A334660.P18411428360097056993

namespace A334660

/-- `∑{d}[n+1, A178448(#)*A372965((n+1)/#)]` -/
def P18411428360097056993.Spec : Prop :=
  ∀ n, P18411428360097056993.a n = A334660 (n + 1)

end A334660

/-! ## A334660.P13331843551330200983

`A008683(n+1)*A048798(n+1)*A048798(n+1)`
-/

namespace A334660.P13331843551330200983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (n + 1) * A048798 (n + 1) * A048798 (n + 1)

end

end A334660.P13331843551330200983

namespace A334660

/-- `A008683(n+1)*A048798(n+1)*A048798(n+1)` -/
def P13331843551330200983.Spec : Prop :=
  ∀ n, P13331843551330200983.a n = A334660 (n + 1)

end A334660

/-! ## A334660.P5810381961868122252

`A008683(n+1)*A055491(n+1)*A055491(n+1)`
-/

namespace A334660.P5810381961868122252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (n + 1) * A055491 (n + 1) * A055491 (n + 1)

end

end A334660.P5810381961868122252

namespace A334660

/-- `A008683(n+1)*A055491(n+1)*A055491(n+1)` -/
def P5810381961868122252.Spec : Prop :=
  ∀ n, P5810381961868122252.a n = A334660 (n + 1)

end A334660

/-! ## A334660.P12409663894793699913

`A008683(n+1)*A078615(n+1)*A078615(n+1)`
-/

namespace A334660.P12409663894793699913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (n + 1) * A078615 (n + 1) * A078615 (n + 1)

end

end A334660.P12409663894793699913

namespace A334660

/-- `A008683(n+1)*A078615(n+1)*A078615(n+1)` -/
def P12409663894793699913.Spec : Prop :=
  ∀ n, P12409663894793699913.a n = A334660 (n + 1)

end A334660

/-! ## A334660.P6556623649783226417

`A008683(n+1)*A162395(n+1)*A162395(n+1)`
-/

namespace A334660.P6556623649783226417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (n + 1) * A162395 (n + 1) * A162395 (n + 1)

end

end A334660.P6556623649783226417

namespace A334660

/-- `A008683(n+1)*A162395(n+1)*A162395(n+1)` -/
def P6556623649783226417.Spec : Prop :=
  ∀ n, P6556623649783226417.a n = A334660 (n + 1)

end A334660

/-! ## A334660.P18025208957242011905

`A008683(n+1)*A254520(n+1)*A254520(n+1)`
-/

namespace A334660.P18025208957242011905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (n + 1) * A254520 (n + 1) * A254520 (n + 1)

end

end A334660.P18025208957242011905

namespace A334660

/-- `A008683(n+1)*A254520(n+1)*A254520(n+1)` -/
def P18025208957242011905.Spec : Prop :=
  ∀ n, P18025208957242011905.a n = A334660 (n + 1)

end A334660

/-!
# A334661: Numbers k such that k*sod(k) and k+sod(k) are both palindromes, where sod(k) denotes the sum of digits of k (A007953).

The programs for A334661, there is no canonical definition to state claims against.
-/

/-! ## A334661.P16199449012656742191

`∩[A229545(n+1), A229549(n+1)]`
-/

namespace A334661.P16199449012656742191
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229545 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229549 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A334661.P16199449012656742191

/-!
# A334662: a(n) = Sum_{d|n} gcd(tau(d), pod(d)), where pod(k) is the product of the divisors of k (A007955).

The programs for A334662, the canonical program `A334662.P8497653626660670943` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A334662 has offset 1).

The definition of A334662 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A334662.P8497653626660670943

`∑{d}[n+1, A306671(#)]`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A334662

/-- `∑{d}[n+1, A306671(#)]` -/
def P8497653626660670943.Spec : Prop :=
  ∀ n, P8497653626660670943.a n = A334662 (n + 1)

theorem P8497653626660670943.correct : P8497653626660670943.Spec := by
  intro n
  simp only [A334662, Nat.add_sub_cancel]

end A334662

/-! ## A334662.P15753251309285636138

`∑{d}[n+1, gcd(#^5, A000005(#))]`
-/

namespace A334662.P15753251309285636138
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), Int.gcd (d ^ 5 : ℤ) (A000005 d)

end

end A334662.P15753251309285636138

namespace A334662

/-- `∑{d}[n+1, gcd(#^5, A000005(#))]` -/
def P15753251309285636138.Spec : Prop :=
  ∀ n, (P15753251309285636138.a n : ℤ) = A334662 (n + 1)

end A334662

/-! ## A334662.P13240118094209947207

`∑{d}[n+1, gcd(A000005(#), A007955(#))]`
-/

namespace A334662.P13240118094209947207
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), Int.gcd (A000005 d) (A007955 d)

end

end A334662.P13240118094209947207

namespace A334662

/-- `∑{d}[n+1, gcd(A000005(#), A007955(#))]` -/
def P13240118094209947207.Spec : Prop :=
  ∀ n, (P13240118094209947207.a n : ℤ) = A334662 (n + 1)

end A334662

/-! ## A334662.P8036945642657194881

`∏{e}[A077168(n)²*A000005(n+1), #]`
-/

namespace A334662.P8036945642657194881
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077168 n ^ 2 * A000005 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A334662.P8036945642657194881

namespace A334662

/-- `∏{e}[A077168(n)²*A000005(n+1), #]` -/
def P8036945642657194881.Spec : Prop :=
  ∀ n, (P8036945642657194881.a n : ℤ) = A334662 (n + 1)

end A334662

/-!
# A334663: a(n) = Sum_{d|n} gcd(sigma(d), pod(d)), where pod(k) is the product of the divisors of k (A007955).

The programs for A334663, the canonical program `A334663.P14091501089652923176` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A334663 has offset 1).

The definition of A334663 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A334663.P14091501089652923176

`∑{d}[n+1, A306682(#)]`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A334663

/-- `∑{d}[n+1, A306682(#)]` -/
def P14091501089652923176.Spec : Prop :=
  ∀ n, P14091501089652923176.a n = A334663 (n + 1)

theorem P14091501089652923176.correct : P14091501089652923176.Spec := by
  intro n
  simp only [A334663, Nat.add_sub_cancel]

end A334663

/-! ## A334663.P9476750461236854510

`∑{d}[n+1, gcd(A000203(#), A007955(#))]`
-/

namespace A334663.P9476750461236854510
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), Int.gcd (A000203 d) (A007955 d)

end

end A334663.P9476750461236854510

namespace A334663

/-- `∑{d}[n+1, gcd(A000203(#), A007955(#))]` -/
def P9476750461236854510.Spec : Prop :=
  ∀ n, (P9476750461236854510.a n : ℤ) = A334663 (n + 1)

end A334663

/-!
# A334664: a(n) = Product_{d|n} gcd(d, tau(d)).

The programs for A334664, the canonical program `A334664.P3656540446261014513` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A334664 has offset 1).

The definition of A334664 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A334664.P3656540446261014513

`∏{d}[n+1, A009191(#)]`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A334664

/-- `∏{d}[n+1, A009191(#)]` -/
def P3656540446261014513.Spec : Prop :=
  ∀ n, P3656540446261014513.a n = A334664 (n + 1)

theorem P3656540446261014513.correct : P3656540446261014513.Spec := by
  intro n
  simp only [A334664, Nat.add_sub_cancel]

end A334664

/-! ## A334664.P2829926486128907542

`∏{d}[n+1, #/A090395(#)]`
-/

namespace A334664.P2829926486128907542
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n), (d : ℚ) / (A090395 d : ℚ)

end

end A334664.P2829926486128907542

namespace A334664

/-- `∏{d}[n+1, #/A090395(#)]` -/
def P2829926486128907542.Spec : Prop :=
  ∀ n, P2829926486128907542.a n = (A334664 (n + 1) : ℚ)

end A334664

/-! ## A334664.P16689623425709243973

`∏{d}[1+n, gcd(#, A000005(#))]`
-/

namespace A334664.P16689623425709243973
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n), Int.gcd (d : ℤ) (A000005 d)

end

end A334664.P16689623425709243973

namespace A334664

/-- `∏{d}[1+n, gcd(#, A000005(#))]` -/
def P16689623425709243973.Spec : Prop :=
  ∀ n, (P16689623425709243973.a n : ℤ) = A334664 (n + 1)

end A334664

/-! ## A334664.P7015010442248412603

`A306705(n+1)/A334795(n+1)`
-/

namespace A334664.P7015010442248412603
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A306705 (n + 1) : ℚ) / (A334795 (n + 1) : ℚ)

end

end A334664.P7015010442248412603

namespace A334664

/-- `A306705(n+1)/A334795(n+1)` -/
def P7015010442248412603.Spec : Prop :=
  ∀ n, P7015010442248412603.a n = (A334664 (n + 1) : ℚ)

end A334664

/-! ## A334664.P14123729447414196674

`A306705(n+1)/∏{d}[n+1, A009230(#)]`
-/

namespace A334664.P14123729447414196674
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A306705 (n + 1) : ℚ) / ((∏ d ∈ Nat.divisors (f1 n), A009230 d : ℤ) : ℚ)

end

end A334664.P14123729447414196674

namespace A334664

/-- `A306705(n+1)/∏{d}[n+1, A009230(#)]` -/
def P14123729447414196674.Spec : Prop :=
  ∀ n, P14123729447414196674.a n = (A334664 (n + 1) : ℚ)

end A334664

/-! ## A334664.P14918006572569955878

`A306705(n+1)/∏{d}[n+1, lcm(#, A000005(#))]`
-/

namespace A334664.P14918006572569955878
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A306705 (n + 1) : ℚ) / ((∏ d ∈ Nat.divisors (f1 n), Int.lcm (d : ℤ) (A000005 d) : ℕ) : ℚ)

end

end A334664.P14918006572569955878

namespace A334664

/-- `A306705(n+1)/∏{d}[n+1, lcm(#, A000005(#))]` -/
def P14918006572569955878.Spec : Prop :=
  ∀ n, P14918006572569955878.a n = (A334664 (n + 1) : ℚ)

end A334664

/-!
# A334665: Perimeters of Heronian triangles with mutually distinct side lengths.

The programs for A334665, there is no canonical definition to state claims against.
-/

/-! ## A334665.P13616924939596794633

`lt[0, A024153(n+1)]+1`
-/

namespace A334665.P13616924939596794633
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024153 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A334665.P13616924939596794633

/-! ## A334665.P2897309947896377654

`lt[0, A024153(A028310(n))]`
-/

namespace A334665.P2897309947896377654
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024153 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A334665.P2897309947896377654

/-! ## A334665.P11814355633328721098

`eq[1, A031253(a(A024153(n)))]` with `a(0)=2`
-/

namespace A334665.P11814355633328721098
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f2 =>
  A031253 (f2 (A024153 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A334665.P11814355633328721098

/-! ## A334665.P9724832986877106134

`eq[1, A000009(a(A024153(n)))]` with `a(0)=3`
-/

namespace A334665.P9724832986877106134
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [3] fun n f2 =>
  A000009 (f2 (A024153 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A334665.P9724832986877106134

/-! ## A334665.P4168621702115918685

`eq[1, A000010(a(A024153(n)))]` with `a(0)=3`
-/

namespace A334665.P4168621702115918685
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [3] fun n f2 =>
  A000010 (f2 (A024153 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A334665.P4168621702115918685

/-! ## A334665.P13059746067268688913

`eq[1, A000045(a(A024153(n)))]` with `a(0)=3`
-/

namespace A334665.P13059746067268688913
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [3] fun n f2 =>
  A000045 (f2 (A024153 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A334665.P13059746067268688913

/-! ## A334665.P13687572463481576483

`eq[1, A000081(a(A024153(n)))]` with `a(0)=3`
-/

namespace A334665.P13687572463481576483
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [3] fun n f2 =>
  A000081 (f2 (A024153 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A334665.P13687572463481576483

/-! ## A334665.P6975592151087527162

`eq[1, A000111(a(A024153(n)))]` with `a(0)=3`
-/

namespace A334665.P6975592151087527162
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [3] fun n f2 =>
  A000111 (f2 (A024153 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A334665.P6975592151087527162

/-! ## A334665.P13123969063032806209

`eq[1, A001222(a(A024153(n))+1)]` with `a(0)=3`
-/

namespace A334665.P13123969063032806209
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [3] fun n f2 =>
  A001222 (f2 (A024153 n).toNat + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A334665.P13123969063032806209

/-! ## A334665.P11062042226175315116

`∪[A044211(n+1), A331367(n+1)]`
-/

namespace A334665.P11062042226175315116
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044211 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331367 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A334665.P11062042226175315116

/-!
# A334666: For any number with binary expansion (b_1, ..., b_w), replace the i-th "1" by b_i for i = 1..A000120(n) and the j-th "0" by b_{w+1-j} for j = 1..A023416(n); the resulting binary expansion is that of a(n).

The programs for A334666, there is no canonical definition to state claims against.
-/

/-! ## A334666.P11995911923691354770

`A233569(n)-A083895(A041790(A000720(n+1)))`
-/

namespace A334666.P11995911923691354770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233569 n - A083895 (A041790 (A000720 (n + 1)).toNat).toNat

end

end A334666.P11995911923691354770

/-! ## A334666.P10998538268513194400

`A233569(n)-A337380(A052992(n))`
-/

namespace A334666.P10998538268513194400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233569 n - A337380 (A052992 n).toNat

end

end A334666.P10998538268513194400

/-! ## A334666.P3561236292439701042

`A233569(n)-A055641(A038280(n))`
-/

namespace A334666.P3561236292439701042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233569 n - A055641 (A038280 n).toNat

end

end A334666.P3561236292439701042

/-!
# A334667: For any number with binary expansion (b_1, ..., b_w), replace the i-th "1" by b_{w+1-i} for i = 1..A000120(n) and the j-th "0" by b_j for j = 1..A023416(n); the resulting binary expansion is that of a(n).

The programs for A334667, there is no canonical definition to state claims against.
-/

/-! ## A334667.P3848001156004488852

`A185284(3*n+4)+A038572(n)`
-/

namespace A334667.P3848001156004488852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185284 (3 * n + 4) + A038572 n

end

end A334667.P3848001156004488852

/-! ## A334667.P16543644157743954419

`A038572(n)+A025466(A005909(n))`
-/

namespace A334667.P16543644157743954419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038572 n + A025466 (A005909 n).toNat

end

end A334667.P16543644157743954419

/-! ## A334667.P15240909647597995520

`A083918(A001006(n))+A038572(n)`
-/

namespace A334667.P15240909647597995520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083918 (A001006 n).toNat + A038572 n

end

end A334667.P15240909647597995520

/-! ## A334667.P11459965675967041153

`A079365(A016116(n))+A038572(n)`
-/

namespace A334667.P11459965675967041153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079365 (A016116 n).toNat + A038572 n

end

end A334667.P11459965675967041153

/-!
# A334669: Denominator of Sum_{k=1..n} (-1)^(k+1)/k^7.

The programs for A334669, there is no canonical definition to state claims against.
-/

/-! ## A334669.P9822941367595051500

`A003418(A351374(n+1))^7`
-/

namespace A334669.P9822941367595051500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003418 (A351374 (n + 1)).toNat ^ 7

end

end A334669.P9822941367595051500

/-! ## A334669.P12236905227882918764

`sqrt(A051418(n+1)^7)`
-/

namespace A334669.P12236905227882918764
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A051418 (n + 1) ^ 7 : ℝ)

end

end A334669.P12236905227882918764

/-! ## A334669.P14639345959920554679

`A003418(A077168(n))^7`
-/

namespace A334669.P14639345959920554679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003418 (A077168 n).toNat ^ 7

end

end A334669.P14639345959920554679

/-! ## A334669.P8562687489817680359

`A058312(n+1)^A126196(A119788(n+1))`
-/

namespace A334669.P8562687489817680359
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A058312 (n + 1) : ℚ) ^ (A126196 (A119788 (n + 1)).toNat : ℤ)

end

end A334669.P8562687489817680359

/-! ## A334669.P7820385164792193288

`A001015(A003418(n+1))`
-/

namespace A334669.P7820385164792193288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001015 (A003418 (n + 1)).toNat

end

end A334669.P7820385164792193288

/-!
# A334670: a(n) = (2*n+1)!! * (Sum_{k=1..n} 1/(2*k+1)).

The programs for A334670, the canonical program `A334670.P1019668788374680318` is in `Seq.B001.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A334670 has offset 0).

The definition of A334670 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A334670.P8705293391397063512

`4*n*a(n-1)-(2*n-1)²*a(n-2)` with `a(0)=0, a(1)=1`
-/

namespace A334670.P8705293391397063512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  (4 * n : ℤ) * a (n - 1) - ((2 * n : ℤ) - 1) ^ 2 * a (n - 2)

end

end A334670.P8705293391397063512

namespace A334670

/-- `4*n*a(n-1)-(2*n-1)²*a(n-2)` -/
def P8705293391397063512.Spec : Prop :=
  ∀ n, P8705293391397063512.a n = A334670 n

end A334670

/-! ## A334670.P1019668788374680318

`(2*n+1)*a(n-1)+A001147(n)` with `a(0)=0`

The canonical program, it is in `Seq.B001.C013`.
-/

namespace A334670

/-- `(2*n+1)*a(n-1)+A001147(n)` -/
def P1019668788374680318.Spec : Prop :=
  ∀ n, P1019668788374680318.a n = A334670 n

theorem P1019668788374680318.correct : P1019668788374680318.Spec := by
  intro n
  simp only [A334670]

end A334670

/-! ## A334670.P11280673140470175318

`A004041(n)-∏[A005408(n)]`
-/

namespace A334670.P11280673140470175318
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004041 n - ∏ j ∈ Finset.range (n + 1), f1 j

end

end A334670.P11280673140470175318

namespace A334670

/-- `A004041(n)-∏[A005408(n)]` -/
def P11280673140470175318.Spec : Prop :=
  ∀ n, P11280673140470175318.a n = A334670 n

end A334670

/-! ## A334670.P15346868361969081043

`A004041(n)-record[A055634(n)]`
-/

namespace A334670.P15346868361969081043
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055634 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004041 n - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A334670.P15346868361969081043

namespace A334670

/-- `A004041(n)-record[A055634(n)]` -/
def P15346868361969081043.Spec : Prop :=
  ∀ n, P15346868361969081043.a n = A334670 n

end A334670

/-! ## A334670.P5065362927233689985

`A004041(n)-A001147(n+1)`
-/

namespace A334670.P5065362927233689985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004041 n - A001147 (n + 1)

end

end A334670.P5065362927233689985

namespace A334670

/-- `A004041(n)-A001147(n+1)` -/
def P5065362927233689985.Spec : Prop :=
  ∀ n, P5065362927233689985.a n = A334670 n

end A334670

/-! ## A334670.P15339502505145761123

`A055634(2*n+1)+A004041(n)`
-/

namespace A334670.P15339502505145761123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055634 (2 * n + 1) + A004041 n

end

end A334670.P15339502505145761123

namespace A334670

/-- `A055634(2*n+1)+A004041(n)` -/
def P15339502505145761123.Spec : Prop :=
  ∀ n, P15339502505145761123.a n = A334670 n

end A334670

/-! ## A334670.P8144725037298650912

`A114160(n+1)-2*A001147(n+1)`
-/

namespace A334670.P8144725037298650912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114160 (n + 1) - 2 * A001147 (n + 1)

end

end A334670.P8144725037298650912

namespace A334670

/-- `A114160(n+1)-2*A001147(n+1)` -/
def P8144725037298650912.Spec : Prop :=
  ∀ n, P8144725037298650912.a n = A334670 n

end A334670

/-! ## A334670.P1928436530785691366

`A004041(n)-A133221(A103517(n))`
-/

namespace A334670.P1928436530785691366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004041 n - A133221 (A103517 n).toNat

end

end A334670.P1928436530785691366

namespace A334670

/-- `A004041(n)-A133221(A103517(n))` -/
def P1928436530785691366.Spec : Prop :=
  ∀ n, P1928436530785691366.a n = A334670 n

end A334670

/-! ## A334670.P14128732063054557307

`A004041(n)+A004041(n)-A114160(n+1)`
-/

namespace A334670.P14128732063054557307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004041 n + (A004041 n - A114160 (n + 1))

end

end A334670.P14128732063054557307

namespace A334670

/-- `A004041(n)+A004041(n)-A114160(n+1)` -/
def P14128732063054557307.Spec : Prop :=
  ∀ n, P14128732063054557307.a n = A334670 n

end A334670

/-! ## A334670.P16136606284045732071

`A004041(n)+A129890(n)-A000165(n+1)`
-/

namespace A334670.P16136606284045732071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004041 n + (A129890 n - A000165 (n + 1))

end

end A334670.P16136606284045732071

namespace A334670

/-- `A004041(n)+A129890(n)-A000165(n+1)` -/
def P16136606284045732071.Spec : Prop :=
  ∀ n, P16136606284045732071.a n = A334670 n

end A334670

/-!
# A334671: Number of ways to write n as the sum of a squarefree number (A005117) and a square (A000290).

The programs for A334671, there is no canonical definition to state claims against.
-/

/-! ## A334671.P1051636225144411192

`A085263(n+1)+char[∏{p}[n, #]-1]`
-/

namespace A334671.P1051636225144411192
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (f2 n), p : ℕ) : ℤ) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085263 (n + 1) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A334671.P1051636225144411192

/-! ## A334671.P17878439975367174491

`A085263(n+1)+A008966(n+1)`
-/

namespace A334671.P17878439975367174491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085263 (n + 1) + A008966 (n + 1)

end

end A334671.P17878439975367174491

/-! ## A334671.P16708077217066473370

`A085263(n+1)+abs(A008683(n+1))`
-/

namespace A334671.P16708077217066473370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085263 (n + 1) + |A008683 (n + 1)|

end

end A334671.P16708077217066473370

/-! ## A334671.P6822446437579057113

`A085263(n+1)+abs(A080323(n+1))`
-/

namespace A334671.P6822446437579057113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085263 (n + 1) + |A080323 (n + 1)|

end

end A334671.P6822446437579057113

/-! ## A334671.P10261955934888728069

`A085263(n+1)+Δ[A013928(n+1)]`
-/

namespace A334671.P10261955934888728069
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013928 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085263 (n + 1) + (f1 (n + 1) - f1 n)

end

end A334671.P10261955934888728069

/-! ## A334671.P1403639761322651267

`A085263(n+1)+Δ[A107079(n+1)]`
-/

namespace A334671.P1403639761322651267
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107079 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085263 (n + 1) + (f1 (n + 1) - f1 n)

end

end A334671.P1403639761322651267

/-! ## A334671.P13855542947430253058

`A085263(n+1)+and(1, A050356(n+1))`
-/

namespace A334671.P13855542947430253058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085263 (n + 1) + Int.land 1 (A050356 (n + 1))

end

end A334671.P13855542947430253058

/-! ## A334671.P14728885140307039780

`A085263(Δ[n²]-n)+A008683(n+1)²`
-/

namespace A334671.P14728885140307039780
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085263 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat + A008683 (n + 1) ^ 2

end

end A334671.P14728885140307039780

/-! ## A334671.P9530291775544910803

`A085263(n+1)+A000045(∏{e}[n+1, -C(2, #+1)]²)`
-/

namespace A334671.P9530291775544910803
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085263 (n + 1) + A000045 ((∏ p ∈ Nat.primeFactors (f1 n), (-(Nat.choose 2 (Nat.factorization (f1 n) p + 1) : ℤ))) ^ 2).toNat

end

end A334671.P9530291775544910803

/-! ## A334671.P11927338738828594791

`A085263(n+1)+A008683(A008477(n+1))`
-/

namespace A334671.P11927338738828594791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085263 (n + 1) + A008683 (A008477 (n + 1)).toNat

end

end A334671.P11927338738828594791

/-!
# A334672: Inverse permutation to A338500.

The programs for A334672, there is no canonical definition to state claims against.
-/

/-! ## A334672.P6736097955621328247

`A338500(lt[A008720(n), 6])`
-/

namespace A334672.P6736097955621328247
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008720 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338500 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A334672.P6736097955621328247

/-! ## A334672.P6830746973084169297

`A338500(lt[A289435(3*n+4), 15])`
-/

namespace A334672.P6830746973084169297
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289435 (3 * n + 4)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  15

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338500 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A334672.P6830746973084169297

/-! ## A334672.P471751866752873297

`A338500(lt[A326115(n), A338500(n+3)])`
-/

namespace A334672.P471751866752873297
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326115 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338500 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338500 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A334672.P471751866752873297

/-! ## A334672.P7494215228119537410

`A338500(lt[A338536(n+1), A038596(n+1)])`
-/

namespace A334672.P7494215228119537410
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338536 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038596 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338500 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A334672.P7494215228119537410

/-! ## A334672.P1764988605652969961

`A338500(lt[A338536(n+1), A338541(n+1)])`
-/

namespace A334672.P1764988605652969961
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338536 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338541 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338500 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A334672.P1764988605652969961

/-!
# A334673: a(n) = 23*a(n-1) - a(n-2) + 1 for n > 1, a(0)=0, a(1)=1.

The programs for A334673, the canonical program `A334673.P11436505229691272632` is in `Seq.B000.C044`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A334673 has offset 0).

The definition of A334673 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `23*a(n-1)-a(n-2)+1` (program `A334673.P11436505229691272632`, by `A334673.P11436505229691272632.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A334673.P7001087532783530922

`ogf(x/(1-24x+24x^2-x^3))`
-/

namespace A334673.P7001087532783530922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1] [1, -24, 24, -1] n

end

end A334673.P7001087532783530922

namespace A334673

/-- `ogf(x/(1-24x+24x^2-x^3))` -/
def P7001087532783530922.Spec : Prop :=
  ∀ n, P7001087532783530922.a n = A334673 n

end A334673

/-! ## A334673.P11436505229691272632

`23*a(n-1)-a(n-2)+1` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C044`.
-/

namespace A334673

/-- `23*a(n-1)-a(n-2)+1` -/
def P11436505229691272632.Spec : Prop :=
  ∀ n, P11436505229691272632.a n = A334673 n

theorem P11436505229691272632.correct : P11436505229691272632.Spec := by
  intro n
  simp only [A334673]

end A334673

/-! ## A334673.P5178708466552821117

`A160695(n+1)/5`
-/

namespace A334673.P5178708466552821117
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A160695 (n + 1) : ℚ) / 5

end

end A334673.P5178708466552821117

namespace A334673

/-- `A160695(n+1)/5` -/
def P5178708466552821117.Spec : Prop :=
  ∀ n, P5178708466552821117.a n = (A334673 n : ℚ)

end A334673

/-! ## A334673.P12704358256814657468

`(A030221(n)²-1)/35`
-/

namespace A334673.P12704358256814657468
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A030221 n ^ 2 - 1 : ℚ) / 35

end

end A334673.P12704358256814657468

namespace A334673

/-- `(A030221(n)²-1)/35` -/
def P12704358256814657468.Spec : Prop :=
  ∀ n, P12704358256814657468.a n = (A334673 n : ℚ)

end A334673

/-! ## A334673.P17185066114470614447

`(A004253(n+1)²-1)/15`
-/

namespace A334673.P17185066114470614447
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004253 (n + 1) ^ 2 - 1 : ℚ) / 15

end

end A334673.P17185066114470614447

namespace A334673

/-- `(A004253(n+1)²-1)/15` -/
def P17185066114470614447.Spec : Prop :=
  ∀ n, P17185066114470614447.a n = (A334673 n : ℚ)

end A334673

/-! ## A334673.P16674909790290159382

`A004254(n)*A004254(n+1)/5`
-/

namespace A334673.P16674909790290159382
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004254 n * A004254 (n + 1) : ℚ) / 5

end

end A334673.P16674909790290159382

namespace A334673

/-- `A004254(n)*A004254(n+1)/5` -/
def P16674909790290159382.Spec : Prop :=
  ∀ n, P16674909790290159382.a n = (A334673 n : ℚ)

end A334673

/-! ## A334673.P1773822405339439366

`∑[A004254(2*n)/5]`
-/

namespace A334673.P1773822405339439366
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004254 (2 * n) : ℚ) / 5

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A334673.P1773822405339439366

namespace A334673

/-- `∑[A004254(2*n)/5]` -/
def P1773822405339439366.Spec : Prop :=
  ∀ n, P1773822405339439366.a n = (A334673 n : ℚ)

end A334673

/-! ## A334673.P7663349056464764363

`floor(A004253(n+1)²/15)`
-/

namespace A334673.P7663349056464764363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A004253 (n + 1) ^ 2 : ℚ) / 15⌋

end

end A334673.P7663349056464764363

namespace A334673

/-- `floor(A004253(n+1)²/15)` -/
def P7663349056464764363.Spec : Prop :=
  ∀ n, P7663349056464764363.a n = A334673 n

end A334673

/-! ## A334673.P7496018793989607917

`∑[A097778(n)]-A097778(n)`
-/

namespace A334673.P7496018793989607917
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097778 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A097778 n

end

end A334673.P7496018793989607917

namespace A334673

/-- `∑[A097778(n)]-A097778(n)` -/
def P7496018793989607917.Spec : Prop :=
  ∀ n, P7496018793989607917.a n = A334673 n

end A334673

/-!
# A334674: Perimeters of nonprimitive Heronian triangles with mutually distinct side lengths.

The programs for A334674, there is no canonical definition to state claims against.
-/

/-! ## A334674.P13823171144114375796

`lt[A063123(A126330(n+1)), A074206(n)]`
-/

namespace A334674.P13823171144114375796
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063123 (A126330 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074206 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A334674.P13823171144114375796

/-! ## A334674.P522636316530271681

`lt[A227183(A015859(n+1)), A074206(n)]`
-/

namespace A334674.P522636316530271681
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227183 (A015859 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074206 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A334674.P522636316530271681

/-! ## A334674.P16009285170041490498

`lt[A067581(A005670(n+1)), A166974(n)]`
-/

namespace A334674.P16009285170041490498
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067581 (A005670 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166974 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A334674.P16009285170041490498

/-! ## A334674.P5576023495603569149

`∩[A128997(n+1), A334589(n+1)]`
-/

namespace A334674.P5576023495603569149
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128997 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334589 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A334674.P5576023495603569149

/-! ## A334674.P16889780906396611531

`lt[A056239(A316490(n)), A074206(n)]`
-/

namespace A334674.P16889780906396611531
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (A316490 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074206 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A334674.P16889780906396611531

/-!
# A334675: Number of nonprimitive Heronian triangles with mutually distinct side lengths and perimeter A334674(n).

The programs for A334675, there is no canonical definition to state claims against.
-/

/-! ## A334675.P577125448490558625

`A099244(A190162(n)+1)`
-/

namespace A334675.P577125448490558625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099244 (A190162 n + 1).toNat

end

end A334675.P577125448490558625

/-! ## A334675.P17867049701736878283

`A099244(or(1, A190162(n)))`
-/

namespace A334675.P17867049701736878283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099244 (Int.lor 1 (A190162 n)).toNat

end

end A334675.P17867049701736878283

/-! ## A334675.P2899448127513052035

`A325758(A286065(2*(n+1))-A029883(n+1))`
-/

namespace A334675.P2899448127513052035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325758 (A286065 (2 * (n + 1)) - A029883 (n + 1)).toNat

end

end A334675.P2899448127513052035

/-! ## A334675.P9329375480875322456

`A087230(A064453(n+1))`
-/

namespace A334675.P9329375480875322456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087230 (A064453 (n + 1)).toNat

end

end A334675.P9329375480875322456

/-!
# A334676: a(n) is the least number that can be reached starting from n and iterating the nondeterministic map x -> x/d where d is a nonzero digit of x dividing x.

The programs for A334676, there is no canonical definition to state claims against.
-/

/-! ## A334676.P15510457587979609607

`A382895(A334684(n+1)%A253035(n+1))`
-/

namespace A334676.P15510457587979609607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382895 (Int.tmod (A334684 (n + 1)) (A253035 (n + 1))).toNat

end

end A334676.P15510457587979609607

/-! ## A334676.P10679220055004617086

`A382895(A334684(n+1)%A206169(n+1))`
-/

namespace A334676.P10679220055004617086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382895 (Int.tmod (A334684 (n + 1)) (A206169 (n + 1))).toNat

end

end A334676.P10679220055004617086

/-! ## A334676.P17608475945717260910

`A382895(A334684(n+1))%A162283(n+1)`
-/

namespace A334676.P17608475945717260910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A382895 (A334684 (n + 1)).toNat) (A162283 (n + 1))

end

end A334676.P17608475945717260910

/-! ## A334676.P11769228552059946337

`A382895(A334684(n+1)^A326073(2*n+1))`
-/

namespace A334676.P11769228552059946337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382895 (SequenceMachineLib.roundAway ((A334684 (n + 1) : ℚ) ^ (A326073 (2 * n + 1) : ℤ))).toNat

end

end A334676.P11769228552059946337

/-! ## A334676.P17971334349253421102

`A382895(A382895(n+1)%A240905(n+1))`
-/

namespace A334676.P17971334349253421102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382895 (Int.tmod (A382895 (n + 1)) (A240905 (n + 1))).toNat

end

end A334676.P17971334349253421102

/-!
# A334677: Number of integer-sided triangles with nonintegral area and perimeter A009005(n).

The programs for A334677, there is no canonical definition to state claims against.
-/

/-! ## A334677.P14710789358299964349

`A005044(A009005(n+1))-A051516(n+4)`
-/

namespace A334677.P14710789358299964349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005044 (A009005 (n + 1)).toNat - A051516 (n + 4)

end

end A334677.P14710789358299964349

/-! ## A334677.P11989091684909008916

`xor(A014671(n), A266755(A187829(n+1)))`
-/

namespace A334677.P11989091684909008916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A014671 n) (A266755 (A187829 (n + 1)).toNat)

end

end A334677.P11989091684909008916

/-! ## A334677.P7920053664490116551

`A179080(n)-A055641(A271269(2*(n+1)))`
-/

namespace A334677.P7920053664490116551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179080 n - A055641 (A271269 (2 * (n + 1))).toNat

end

end A334677.P7920053664490116551

/-! ## A334677.P14340261575671867521

`A097868(4*A047485(n+1))`
-/

namespace A334677.P14340261575671867521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097868 (4 * A047485 (n + 1)).toNat

end

end A334677.P14340261575671867521

/-! ## A334677.P17639338253212225021

`A117728(record[A007318(n)+1])/2`
-/

namespace A334677.P17639338253212225021
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A117728 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat : ℚ) / 2

end

end A334677.P17639338253212225021

/-!
# A334678: Largest possible hypotenuse of a Pythagorean triangle with perimeter A010814(n).

The programs for A334678, there is no canonical definition to state claims against.
-/

/-! ## A334678.P3420775627704135984

`A005279(n+1)+A053629(n+1)-A053628(n+1)`
-/

namespace A334678.P3420775627704135984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005279 (n + 1) + (A053629 (n + 1) - A053628 (n + 1))

end

end A334678.P3420775627704135984

/-! ## A334678.P9361016343883920413

`A010814(n+1)-(A334718(n+1)+A053628(n+1))`
-/

namespace A334678.P9361016343883920413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010814 (n + 1) - (A334718 (n + 1) + A053628 (n + 1))

end

end A334678.P9361016343883920413

/-! ## A334678.P7444483805267167489

`record[A198389(A187829(n+1))]`
-/

namespace A334678.P7444483805267167489
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198389 (A187829 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A334678.P7444483805267167489

/-! ## A334678.P1342458611359696665

`record[A198389(n+1)-A184955(n)]`
-/

namespace A334678.P1342458611359696665
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198389 (n + 1) - A184955 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A334678.P1342458611359696665

/-! ## A334678.P3232964856624435860

`record[A198389(n+1)%A103278(n+4)]`
-/

namespace A334678.P3232964856624435860
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A198389 (n + 1)) (A103278 (n + 4))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A334678.P3232964856624435860

/-!
# A334680: a(n) is the total number of down-steps after the final up-step in all 2-Dyck paths of length 3*n (n up-steps and 2*n down-steps).

The programs for A334680, the canonical program `A334680.P3839281056250453021` is in `Seq.B000.C044`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A334680 has offset 0).

The definition of A334680 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A334680.P3839281056250453021

`C(3*n+4, n+1)/(3*n+4)-C(3*n+1, n)/(3*n+1)`

The canonical program, it is in `Seq.B000.C044`.
-/

namespace A334680

/-- `C(3*n+4, n+1)/(3*n+4)-C(3*n+1, n)/(3*n+1)` -/
def P3839281056250453021.Spec : Prop :=
  ∀ n, P3839281056250453021.a n = (A334680 n : ℚ)

end A334680

/-! ## A334680.P17110386577092033244

`Δ[A001764(n)]`
-/

namespace A334680.P17110386577092033244
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001764 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A334680.P17110386577092033244

namespace A334680

/-- `Δ[A001764(n)]` -/
def P17110386577092033244.Spec : Prop :=
  ∀ n, P17110386577092033244.a n = A334680 n

end A334680

/-! ## A334680.P2042294813376909468

`Δ[A073147(∑[n])]`
-/

namespace A334680.P2042294813376909468
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073147 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A334680.P2042294813376909468

namespace A334680

/-- `Δ[A073147(∑[n])]` -/
def P2042294813376909468.Spec : Prop :=
  ∀ n, P2042294813376909468.a n = A334680 n

end A334680

/-! ## A334680.P18209244192055667875

`Δ[A110616(∑[n])]`
-/

namespace A334680.P18209244192055667875
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110616 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A334680.P18209244192055667875

namespace A334680

/-- `Δ[A110616(∑[n])]` -/
def P18209244192055667875.Spec : Prop :=
  ∀ n, P18209244192055667875.a n = A334680 n

end A334680

/-! ## A334680.P3231089757021098630

`Δ[A047749(2*n)]`
-/

namespace A334680.P3231089757021098630
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047749 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A334680.P3231089757021098630

namespace A334680

/-- `Δ[A047749(2*n)]` -/
def P3231089757021098630.Spec : Prop :=
  ∀ n, P3231089757021098630.a n = A334680 n

end A334680

/-! ## A334680.P5011509052256806722

`Δ[A127898(C(n, 2))]`
-/

namespace A334680.P5011509052256806722
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127898 (Nat.choose n 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A334680.P5011509052256806722

namespace A334680

/-- `Δ[A127898(C(n, 2))]` -/
def P5011509052256806722.Spec : Prop :=
  ∀ n, P5011509052256806722.a n = A334680 n

end A334680

/-! ## A334680.P10866167303823781122

`Δ[A047761(abs(1-2*n))]`
-/

namespace A334680.P10866167303823781122
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047761 |1 - (2 * n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A334680.P10866167303823781122

namespace A334680

/-- `Δ[A047761(abs(1-2*n))]` -/
def P10866167303823781122.Spec : Prop :=
  ∀ n, P10866167303823781122.a n = A334680 n

end A334680

/-! ## A334680.P9288878718842632883

`Δ[(n+1)/2*A000139(n)]`
-/

namespace A334680.P9288878718842632883
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / 2 * (A000139 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A334680.P9288878718842632883

namespace A334680

/-- `Δ[(n+1)/2*A000139(n)]` -/
def P9288878718842632883.Spec : Prop :=
  ∀ n, P9288878718842632883.a n = (A334680 n : ℚ)

end A334680

/-! ## A334680.P7283533832115846769

`Δ[a(n-1)+A336945(n)+a(n-1)]` with `a(0)=1`
-/

namespace A334680.P7283533832115846769
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  f1 (n - 1) + (A336945 n + f1 (n - 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A334680.P7283533832115846769

namespace A334680

/-- `Δ[a(n-1)+A336945(n)+a(n-1)]` -/
def P7283533832115846769.Spec : Prop :=
  ∀ n, P7283533832115846769.a n = A334680 n

end A334680

/-! ## A334680.P5173265202563923082

`Δ[A047764(A017545(n))]`
-/

namespace A334680.P5173265202563923082
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047764 (A017545 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A334680.P5173265202563923082

namespace A334680

/-- `Δ[A047764(A017545(n))]` -/
def P5173265202563923082.Spec : Prop :=
  ∀ n, P5173265202563923082.a n = A334680 n

end A334680

/-! ## A334680.P1072661241907954493

`A336945(n+1)+A001764(n)`
-/

namespace A334680.P1072661241907954493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336945 (n + 1) + A001764 n

end

end A334680.P1072661241907954493

namespace A334680

/-- `A336945(n+1)+A001764(n)` -/
def P1072661241907954493.Spec : Prop :=
  ∀ n, P1072661241907954493.a n = A334680 n

end A334680

/-! ## A334680.P7041811561495491857

`A001764(n+1)-A001764(n)`
-/

namespace A334680.P7041811561495491857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001764 (n + 1) - A001764 n

end

end A334680.P7041811561495491857

namespace A334680

/-- `A001764(n+1)-A001764(n)` -/
def P7041811561495491857.Spec : Prop :=
  ∀ n, P7041811561495491857.a n = A334680 n

end A334680

/-! ## A334680.P7212537391844663403

`Δ[A103938(n+1)-A000139(n)]`
-/

namespace A334680.P7212537391844663403
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103938 (n + 1) - A000139 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A334680.P7212537391844663403

namespace A334680

/-- `Δ[A103938(n+1)-A000139(n)]` -/
def P7212537391844663403.Spec : Prop :=
  ∀ n, P7212537391844663403.a n = A334680 n

end A334680

/-! ## A334680.P9767441194269849863

`A336945(n+1)+A047749(2*n)`
-/

namespace A334680.P9767441194269849863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336945 (n + 1) + A047749 (2 * n)

end

end A334680.P9767441194269849863

namespace A334680

/-- `A336945(n+1)+A047749(2*n)` -/
def P9767441194269849863.Spec : Prop :=
  ∀ n, P9767441194269849863.a n = A334680 n

end A334680

/-! ## A334680.P4689464044363234460

`2*A102893(n+1)-A102594(n+1)`
-/

namespace A334680.P4689464044363234460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A102893 (n + 1) - A102594 (n + 1)

end

end A334680.P4689464044363234460

namespace A334680

/-- `2*A102893(n+1)-A102594(n+1)` -/
def P4689464044363234460.Spec : Prop :=
  ∀ n, P4689464044363234460.a n = A334680 n

end A334680

/-! ## A334680.P14409848590999437232

`A047749(2*(n+1))-A047749(2*n)`
-/

namespace A334680.P14409848590999437232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047749 (2 * (n + 1)) - A047749 (2 * n)

end

end A334680.P14409848590999437232

namespace A334680

/-- `A047749(2*(n+1))-A047749(2*n)` -/
def P14409848590999437232.Spec : Prop :=
  ∀ n, P14409848590999437232.a n = A334680 n

end A334680

/-! ## A334680.P3074576029406247256

`A336945(n+1)+A047764(A017545(n))`
-/

namespace A334680.P3074576029406247256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336945 (n + 1) + A047764 (A017545 n).toNat

end

end A334680.P3074576029406247256

namespace A334680

/-- `A336945(n+1)+A047764(A017545(n))` -/
def P3074576029406247256.Spec : Prop :=
  ∀ n, P3074576029406247256.a n = A334680 n

end A334680

/-! ## A334680.P2712418338702914933

`A336945(n+1)+A047761(A004274(n+1))`
-/

namespace A334680.P2712418338702914933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336945 (n + 1) + A047761 (A004274 (n + 1)).toNat

end

end A334680.P2712418338702914933

namespace A334680

/-- `A336945(n+1)+A047761(A004274(n+1))` -/
def P2712418338702914933.Spec : Prop :=
  ∀ n, P2712418338702914933.a n = A334680 n

end A334680

/-! ## A334680.P8490566530188051507

`A047761(2*n+1)-A047761(A004274(n+1))`
-/

namespace A334680.P8490566530188051507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047761 (2 * n + 1) - A047761 (A004274 (n + 1)).toNat

end

end A334680.P8490566530188051507

namespace A334680

/-- `A047761(2*n+1)-A047761(A004274(n+1))` -/
def P8490566530188051507.Spec : Prop :=
  ∀ n, P8490566530188051507.a n = A334680 n

end A334680

/-! ## A334680.P17101225564435050543

`floor(Δ[A116637(2*n)/2])`
-/

namespace A334680.P17101225564435050543
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A116637 (2 * n) : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊f1 (n + 1) - f1 n⌋

end

end A334680.P17101225564435050543

namespace A334680

/-- `floor(Δ[A116637(2*n)/2])` -/
def P17101225564435050543.Spec : Prop :=
  ∀ n, P17101225564435050543.a n = A334680 n

end A334680

/-!
# A334682: a(n) is the total number of down-steps after the final up-step in all 3-Dyck paths of length 4*n (n up-steps and 3*n down-steps).

The programs for A334682, the canonical program `A334682.P12278974037665394167` is in `Seq.B002.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A334682 has offset 0).

The definition of A334682 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 106 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A334682.P12278974037665394167

`Δ[A002293(n)]`

The canonical program, it is in `Seq.B002.C007`.
-/

namespace A334682

/-- `Δ[A002293(n)]` -/
def P12278974037665394167.Spec : Prop :=
  ∀ n, P12278974037665394167.a n = A334682 n

theorem P12278974037665394167.correct : P12278974037665394167.Spec := by
  intro n
  simp only [A334682]

end A334682

/-! ## A334682.P5076066021238559473

`Δ[A369082(2*n)]`
-/

namespace A334682.P5076066021238559473
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369082 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A334682.P5076066021238559473

namespace A334682

/-- `Δ[A369082(2*n)]` -/
def P5076066021238559473.Spec : Prop :=
  ∀ n, P5076066021238559473.a n = A334682 n

end A334682

/-! ## A334682.P14587593712518221421

`Δ[A124753(3*n)]`
-/

namespace A334682.P14587593712518221421
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124753 (3 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A334682.P14587593712518221421

namespace A334682

/-- `Δ[A124753(3*n)]` -/
def P14587593712518221421.Spec : Prop :=
  ∀ n, P14587593712518221421.a n = A334682 n

end A334682

/-! ## A334682.P8721565811992258489

`Δ[abs(A109962(∑[n]))]`
-/

namespace A334682.P8721565811992258489
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A109962 (∑ j ∈ Finset.range (n + 1), f2 j)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A334682.P8721565811992258489

namespace A334682

/-- `Δ[abs(A109962(∑[n]))]` -/
def P8721565811992258489.Spec : Prop :=
  ∀ n, P8721565811992258489.a n = A334682 n

end A334682

/-! ## A334682.P17206145950302550073

`Δ[A069270(∑[n]+n)]`
-/

namespace A334682.P17206145950302550073
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069270 (∑ j ∈ Finset.range (n + 1), f2 j + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A334682.P17206145950302550073

namespace A334682

/-- `Δ[A069270(∑[n]+n)]` -/
def P17206145950302550073.Spec : Prop :=
  ∀ n, P17206145950302550073.a n = A334682 n

end A334682

/-! ## A334682.P3552295451356309251

`A002293(n+1)-A002293(n)`
-/

namespace A334682.P3552295451356309251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002293 (n + 1) - A002293 n

end

end A334682.P3552295451356309251

namespace A334682

/-- `A002293(n+1)-A002293(n)` -/
def P3552295451356309251.Spec : Prop :=
  ∀ n, P3552295451356309251.a n = A334682 n

theorem P3552295451356309251.correct : P3552295451356309251.Spec := by
  intro n
  simp only [A334682, Nat.add_sub_cancel, A334682.P3552295451356309251.a, A334682.P12278974037665394167.f1, A334682.P12278974037665394167.a, SequenceMachineLib.memo_apply]

end A334682

/-! ## A334682.P17040532140949924447

`A369082(A114752(2*(n+1)))-A369082(2*n)`
-/

namespace A334682.P17040532140949924447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369082 (A114752 (2 * (n + 1))).toNat - A369082 (2 * n)

end

end A334682.P17040532140949924447

namespace A334682

/-- `A369082(A114752(2*(n+1)))-A369082(2*n)` -/
def P17040532140949924447.Spec : Prop :=
  ∀ n, P17040532140949924447.a n = A334682 n

end A334682

/-! ## A334682.P924661129148022799

`Δ[A188108(A133263(n))]`
-/

namespace A334682.P924661129148022799
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188108 (A133263 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A334682.P924661129148022799

namespace A334682

/-- `Δ[A188108(A133263(n))]` -/
def P924661129148022799.Spec : Prop :=
  ∀ n, P924661129148022799.a n = A334682 n

end A334682

/-! ## A334682.P12592371337488501745

`Δ[A126596(n)/Δ[n²]]`
-/

namespace A334682.P12592371337488501745
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A126596 n : ℚ) / ((f2 (n + 1) : ℤ) - (f2 n : ℤ) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A334682.P12592371337488501745

namespace A334682

/-- `Δ[A126596(n)/Δ[n²]]` -/
def P12592371337488501745.Spec : Prop :=
  ∀ n, P12592371337488501745.a n = (A334682 n : ℚ)

end A334682

/-! ## A334682.P15707309833765689764

`Δ[A005810(n)/A016777(n)]`
-/

namespace A334682.P15707309833765689764
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005810 n : ℚ) / (A016777 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A334682.P15707309833765689764

namespace A334682

/-- `Δ[A005810(n)/A016777(n)]` -/
def P15707309833765689764.Spec : Prop :=
  ∀ n, P15707309833765689764.a n = (A334682 n : ℚ)

end A334682

/-! ## A334682.P7655960792560349470

`Δ[A052204(n)/A016861(n)]`
-/

namespace A334682.P7655960792560349470
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052204 n : ℚ) / (A016861 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A334682.P7655960792560349470

namespace A334682

/-- `Δ[A052204(n)/A016861(n)]` -/
def P7655960792560349470.Spec : Prop :=
  ∀ n, P7655960792560349470.a n = (A334682 n : ℚ)

end A334682

/-! ## A334682.P4098527108453618074

`Δ[gcd(A005810(n), A052203(n))]`
-/

namespace A334682.P4098527108453618074
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A005810 n) (A052203 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A334682.P4098527108453618074

namespace A334682

/-- `Δ[gcd(A005810(n), A052203(n))]` -/
def P4098527108453618074.Spec : Prop :=
  ∀ n, P4098527108453618074.a n = A334682 n

end A334682

/-!
# A334683: Antidiagonal sums of A068914.

The programs for A334683, there is no canonical definition to state claims against.
-/

/-! ## A334683.P18082974503061610394

`A210671(n)+A000194(A265725(n))`
-/

namespace A334683.P18082974503061610394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210671 n + A000194 (A265725 n).toNat

end

end A334683.P18082974503061610394

/-! ## A334683.P13435741566550288667

`A119931(a(n-2))+a(n-2)` with `a(0)=1, a(1)=1, a(2)=2`
-/

namespace A334683.P13435741566550288667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2] fun n a =>
  A119931 (a (n - 2)).toNat + a (n - 2)

end

end A334683.P13435741566550288667

/-! ## A334683.P4942363685770393458

`A341936(A206290(n))`
-/

namespace A334683.P4942363685770393458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341936 (A206290 n).toNat

end

end A334683.P4942363685770393458

/-! ## A334683.P2299126285264242936

`A327036(2*A000041(n))+char[8]`
-/

namespace A334683.P2299126285264242936
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327036 (2 * A000041 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A334683.P2299126285264242936

/-! ## A334683.P3769953076916166820

`A172471(A368421(n)+A128015(n))`
-/

namespace A334683.P3769953076916166820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172471 (A368421 n + A128015 n).toNat

end

end A334683.P3769953076916166820

/-!
# A334685: Start with n, and successively apply phi, phi, sigma, phi, phi, sigma, phi, ... until reaching 1; a(n) is the number of steps needed (phi = A000010, sigma = A000203); or a(n) = -1 if 1 is never reached.

The programs for A334685, there is no canonical definition to state claims against.
-/

/-! ## A334685.P12022033692191979725

`A000093(A003434(n+1))*A001222(A120937(n))`
-/

namespace A334685.P12022033692191979725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000093 (A003434 (n + 1)).toNat * A001222 (A120937 n).toNat

end

end A334685.P12022033692191979725

/-! ## A334685.P152396811960589215

`A000093(A003434(n+1))%A046002(n+5)`
-/

namespace A334685.P152396811960589215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000093 (A003434 (n + 1)).toNat) (A046002 (n + 5))

end

end A334685.P152396811960589215

/-! ## A334685.P3040733427047676674

`A000093(A003434(n+1))^A000108(A006983(n+1))`
-/

namespace A334685.P3040733427047676674
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000093 (A003434 (n + 1)).toNat : ℚ) ^ (A000108 (A006983 (n + 1)).toNat : ℤ)

end

end A334685.P3040733427047676674

/-! ## A334685.P1250400590220292448

`A000093(A003434(n+1)+A000108(n)*A006983(n+1))`
-/

namespace A334685.P1250400590220292448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000093 (A003434 (n + 1) + A000108 n * A006983 (n + 1)).toNat

end

end A334685.P1250400590220292448

/-! ## A334685.P2053859327656118850

`A263449(A049108(n+1))%A185064(n+1)`
-/

namespace A334685.P2053859327656118850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A263449 (A049108 (n + 1)).toNat) (A185064 (n + 1))

end

end A334685.P2053859327656118850

/-!
# A334686: Start with n, and successively apply phi, phi, sigma', phi, phi, sigma', phi, ... until reaching either 0 or 1; a(n) is the number of steps needed (phi = A000010, sigma' = A001065); or a(n) = -1 if 0 or 1 is never reached.

The programs for A334686, there is no canonical definition to state claims against.
-/

/-! ## A334686.P16042747627051605870

`A029927(A003434(n+1))%A326391(n+1)`
-/

namespace A334686.P16042747627051605870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A029927 (A003434 (n + 1)).toNat) (A326391 (n + 1))

end

end A334686.P16042747627051605870

/-! ## A334686.P16241525430913474345

`A294849(A003434(n+1))%A294820(n+1)`
-/

namespace A334686.P16241525430913474345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A294849 (A003434 (n + 1)).toNat) (A294820 (n + 1))

end

end A334686.P16241525430913474345

/-! ## A334686.P9256391305621042940

`A361443(A003434(n+1))%A049054(n+1)`
-/

namespace A334686.P9256391305621042940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A361443 (A003434 (n + 1)).toNat) (A049054 (n + 1))

end

end A334686.P9256391305621042940

/-! ## A334686.P6984271669984962786

`A059041(A049108(n+1)%A069354(n+1))`
-/

namespace A334686.P6984271669984962786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059041 (Int.tmod (A049108 (n + 1)) (A069354 (n + 1))).toNat

end

end A334686.P6984271669984962786

/-! ## A334686.P9477890791439557786

`A374994((a((n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1]-1)+1)!)` with `a(0)=0`
-/

namespace A334686.P9477890791439557786
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A374994 (Nat.factorial (a (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ) * ((∏ p ∈ Nat.primeFactors (f2 n), ((p : ℤ) - 1) : ℤ) : ℚ) - 1)).toNat + 1).toNat)

end

end A334686.P9477890791439557786

/-!
# A334688: Numbers missing from Pascal's spiral A334742.

The programs for A334688, there is no canonical definition to state claims against.
-/

/-! ## A334688.P713367097911107470

`comp[A334742(n+1)-char[1]]`
-/

namespace A334688.P713367097911107470
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334742 (n + 1) - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A334688.P713367097911107470

/-! ## A334688.P2871879681362270489

`comp[A334742(n+1)%A001935(n)]`
-/

namespace A334688.P2871879681362270489
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A334742 (n + 1)) (A001935 n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A334688.P2871879681362270489

/-! ## A334688.P14747514469875692788

`comp[A334742(n+2)%A097334(n)]`
-/

namespace A334688.P14747514469875692788
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A334742 (n + 2)) (A097334 n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A334688.P14747514469875692788

/-! ## A334688.P11576255244996829629

`comp[xor(A000007(n), A334742(n+1))]`
-/

namespace A334688.P11576255244996829629
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000007 n) (A334742 (n + 1))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A334688.P11576255244996829629

/-! ## A334688.P760110868488040097

`eq[char[A334742(n+1)], A000038(n)]`
-/

namespace A334688.P760110868488040097
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334742 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A334688.P760110868488040097

/-! ## A334688.P12532181227955596126

`eq[char[A334742(n+1)], A066156(n)]`
-/

namespace A334688.P12532181227955596126
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334742 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066156 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A334688.P12532181227955596126

/-! ## A334688.P5226652103185683755

`eq[n, A028310(n)-char[A334742(n+1)]]`
-/

namespace A334688.P5226652103185683755
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334742 (n + 1)

open Classical in
def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n - ((if ∃ j, f3 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A334688.P5226652103185683755

/-! ## A334688.P8147383945308058977

`eq[char[A334742(n+1)], A122698(2*n+1)]`
-/

namespace A334688.P8147383945308058977
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334742 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122698 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A334688.P8147383945308058977

/-!
# A334689: Triangle read by rows: T(n,k) (0 <= k <= n) = k!*(Stirling2(n,k)+(k+1)*Stirling2(n,k+1))^2.

The programs for A334689, there is no canonical definition to state claims against.
-/

/-! ## A334689.P14984908556676427795

`A163626(n)²/col(n)!`
-/

namespace A334689.P14984908556676427795
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A163626 n ^ 2 : ℚ) / (Nat.factorial (SequenceMachineLib.triCol n) : ℚ)

end

end A334689.P14984908556676427795

/-! ## A334689.P10950709084294014419

`A028246(n+1)²/col(n)!`
-/

namespace A334689.P10950709084294014419
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028246 (n + 1) ^ 2 : ℚ) / (Nat.factorial (SequenceMachineLib.triCol n) : ℚ)

end

end A334689.P10950709084294014419

/-! ## A334689.P8543917398730191520

`A008277(n+1)^2*col(n)!`
-/

namespace A334689.P8543917398730191520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008277 (n + 1) ^ 2 * (Nat.factorial (SequenceMachineLib.triCol n) : ℤ)

end

end A334689.P8543917398730191520

/-! ## A334689.P11901499845474056920

`A163626(n)²/A233543(n)`
-/

namespace A334689.P11901499845474056920
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A163626 n ^ 2 : ℚ) / (A233543 n : ℚ)

end

end A334689.P11901499845474056920

/-! ## A334689.P8909203593457868835

`A080417(n+1)*A163626(n)`
-/

namespace A334689.P8909203593457868835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080417 (n + 1) * A163626 n

end

end A334689.P8909203593457868835

/-!
# A334690: a(n) is the number of points in the interior of the n-th figure shown in A255011 (meaning the figure with 4n points on the perimeter).

The programs for A334690, there is no canonical definition to state claims against.
-/

/-! ## A334690.P2419063698952309306

`A331449(n+1)-4*(n+1)`
-/

namespace A334690.P2419063698952309306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331449 (n + 1) - (4 * (n + 1) : ℤ)

end

end A334690.P2419063698952309306

/-! ## A334690.P1189670478457934479

`1-(A004766(n+1)-A331449(n+1))`
-/

namespace A334690.P1189670478457934479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (A004766 (n + 1) - A331449 (n + 1))

end

end A334690.P1189670478457934479

/-! ## A334690.P14448954959381466492

`A334697(n+1)+A331449(n+1)-A334698(n+1)`
-/

namespace A334690.P14448954959381466492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334697 (n + 1) + A331449 (n + 1) - A334698 (n + 1)

end

end A334690.P14448954959381466492

/-! ## A334690.P10391818774212964082

`A367277(n)+A331449(n+1)-A367276(n)`
-/

namespace A334690.P10391818774212964082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367277 n + A331449 (n + 1) - A367276 n

end

end A334690.P10391818774212964082

/-!
# A334691: Irregular triangle read by rows: T(n,k) (n >= 1, 2 <= k <= 2*n) = number of interior vertices in the n-th figure shown in A255011 (meaning the figure with 4n points on the perimeter) where k lines meet.

The programs for A334691, there is no canonical definition to state claims against.
-/

/-! ## A334691.P17455081412548089117

`A362258(A216033(n+2))`
-/

namespace A334691.P17455081412548089117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362258 (A216033 (n + 2)).toNat

end

end A334691.P17455081412548089117

/-!
# A334692: Column k=2 of A334691.

The programs for A334692, there is no canonical definition to state claims against.
-/

/-! ## A334692.P12014261751714510440

`A334691(n²+1)`
-/

namespace A334692.P12014261751714510440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334691 (n ^ 2 + 1)

end

end A334692.P12014261751714510440

/-! ## A334692.P7597717898025271830

`record[A334691(n+1)]`
-/

namespace A334692.P7597717898025271830
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334691 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A334692.P7597717898025271830

/-! ## A334692.P9828256739006549335

`A334691(A002522(n))+A054899(n)`
-/

namespace A334692.P9828256739006549335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334691 (A002522 n).toNat + A054899 n

end

end A334692.P9828256739006549335

/-!
# A334693: Column k=3 of A334691.

The programs for A334693, there is no canonical definition to state claims against.
-/

/-! ## A334693.P4996676365865028680

`record[A007968(n)*A334691(n+1)]`
-/

namespace A334693.P4996676365865028680
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007968 n * A334691 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A334693.P4996676365865028680

/-! ## A334693.P2693206221567829710

`record[A053186(n)*A334691(n+1)]`
-/

namespace A334693.P2693206221567829710
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053186 n * A334691 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A334693.P2693206221567829710

/-!
# A334694: a(n) = (n/4)*(n^3+2*n^2+5*n+8).

The programs for A334694, the canonical program `A334694.P14935809960962451458` is in `Seq.B000.C044`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A334694 has offset 0).

The definition of A334694 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n/4*(n^3+2*n²+5*n+8)` (program `A334694.P6281256113225798687`, by `A334694.P6281256113225798687.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A334694.P10041724148269404586

`ogf((4x-3x^2+6x^3-x^4)/(1-5x+10x^2-10x^3+5x^4-x^5))`
-/

namespace A334694.P10041724148269404586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 4, -3, 6, -1] [1, -5, 10, -10, 5, -1] n

end

end A334694.P10041724148269404586

namespace A334694

/-- `ogf((4x-3x^2+6x^3-x^4)/(1-5x+10x^2-10x^3+5x^4-x^5))` -/
def P10041724148269404586.Spec : Prop :=
  ∀ n, P10041724148269404586.a n = A334694 n

end A334694

/-! ## A334694.P6281256113225798687

`n/4*(n^3+2*n²+5*n+8)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A334694.P6281256113225798687
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / 4 * (n ^ 3 + 2 * n ^ 2 + 5 * n + 8 : ℚ)

end

end A334694.P6281256113225798687

namespace A334694

/-- `n/4*(n^3+2*n²+5*n+8)` -/
def P6281256113225798687.Spec : Prop :=
  ∀ n, P6281256113225798687.a n = (A334694 n : ℚ)

theorem P6281256113225798687.correct : P6281256113225798687.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 | 4 =>
      simp [A334694, Nat.add_sub_cancel, A334694.P6281256113225798687.a, A334694.P14935809960962451458.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 5 =>
      have h1 := ih (m + 4) (by omega)
      have h2 := ih (m + 3) (by omega)
      have h3 := ih (m + 2) (by omega)
      have h4 := ih (m + 1) (by omega)
      have h5 := ih m (by omega)
      simp only [A334694, Nat.add_sub_cancel, A334694.P6281256113225798687.a, A334694.P14935809960962451458.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 h5 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 5 - 1 = m + 4 by omega, show m + 5 - 2 = m + 3 by omega, show m + 5 - 3 = m + 2 by omega, show m + 5 - 4 = m + 1 by omega, show m + 5 - 5 = m by omega, show m + 4 < m + 5 by omega, show m + 3 < m + 5 by omega, show m + 2 < m + 5 by omega, show m + 1 < m + 5 by omega, show m < m + 5 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 h5 ⊢
      rw [← h1, ← h2, ← h3, ← h4, ← h5]
      first | ring1 | ring_nf | (field_simp; (first | ring1 | ring_nf)) | omega | (push_cast; ring_nf) | nlinarith

end A334694

/-! ## A334694.P14935809960962451458

`5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` with `a(0)=0, a(1)=4, a(2)=17, a(3)=51, a(4)=124`

The canonical program, it is in `Seq.B000.C044`.
-/

namespace A334694

/-- `5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` -/
def P14935809960962451458.Spec : Prop :=
  ∀ n, P14935809960962451458.a n = A334694 n

theorem P14935809960962451458.correct : P14935809960962451458.Spec := by
  intro n
  simp only [A334694]

end A334694

/-! ## A334694.P12636120160182651152

`xor(∑[n], -1)²+n-1`
-/

namespace A334694.P12636120160182651152
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) (-1) ^ 2 + (n : ℤ) - 1

end

end A334694.P12636120160182651152

namespace A334694

/-- `xor(∑[n], -1)²+n-1` -/
def P12636120160182651152.Spec : Prop :=
  ∀ n, P12636120160182651152.a n = A334694 n

end A334694

/-! ## A334694.P17015495807355885524

`∑{#}[2, C(n+1, #)²]-2`
-/

namespace A334694.P17015495807355885524
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ k ∈ Finset.range (f1 n + 1), Nat.choose (n + 1) k ^ 2 : ℕ) : ℤ) - 2

end

end A334694.P17015495807355885524

namespace A334694

/-- `∑{#}[2, C(n+1, #)²]-2` -/
def P17015495807355885524.Spec : Prop :=
  ∀ n, P17015495807355885524.a n = A334694 n

end A334694

/-! ## A334694.P1758499476489918408

`(C(n+1, 2)+1)²+n-1`
-/

namespace A334694.P1758499476489918408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((Nat.choose (n + 1) 2 + 1) ^ 2 : ℤ) + ((n : ℤ) - 1)

end

end A334694.P1758499476489918408

namespace A334694

/-- `(C(n+1, 2)+1)²+n-1` -/
def P1758499476489918408.Spec : Prop :=
  ∀ n, P1758499476489918408.a n = A334694 n

end A334694

/-! ## A334694.P11676910574157259084

`C(n+1, 2)²+n*(n+2)`
-/

namespace A334694.P11676910574157259084
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 1) 2 ^ 2 + n * (n + 2)

end

end A334694.P11676910574157259084

namespace A334694

/-- `C(n+1, 2)²+n*(n+2)` -/
def P11676910574157259084.Spec : Prop :=
  ∀ n, (P11676910574157259084.a n : ℤ) = A334694 n

end A334694

/-! ## A334694.P14865742896352430707

`A061316(n)+n`
-/

namespace A334694.P14865742896352430707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061316 n + (n : ℤ)

end

end A334694.P14865742896352430707

namespace A334694

/-- `A061316(n)+n` -/
def P14865742896352430707.Spec : Prop :=
  ∀ n, P14865742896352430707.a n = A334694 n

end A334694

/-! ## A334694.P16585988124222562018

`∑[A054602(n)]+n`
-/

namespace A334694.P16585988124222562018
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054602 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A334694.P16585988124222562018

namespace A334694

/-- `∑[A054602(n)]+n` -/
def P16585988124222562018.Spec : Prop :=
  ∀ n, P16585988124222562018.a n = A334694 n

end A334694

/-! ## A334694.P12797410371887544104

`A125641(n+1)-1`
-/

namespace A334694.P12797410371887544104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125641 (n + 1) - 1

end

end A334694.P12797410371887544104

namespace A334694

/-- `A125641(n+1)-1` -/
def P12797410371887544104.Spec : Prop :=
  ∀ n, P12797410371887544104.a n = A334694 n

end A334694

/-! ## A334694.P11014038648525730313

`A086601(n)-1+n`
-/

namespace A334694.P11014038648525730313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086601 n - 1 + (n : ℤ)

end

end A334694.P11014038648525730313

namespace A334694

/-- `A086601(n)-1+n` -/
def P11014038648525730313.Spec : Prop :=
  ∀ n, P11014038648525730313.a n = A334694 n

end A334694

/-! ## A334694.P17389426322486780692

`3*A006007(n)+n`
-/

namespace A334694.P17389426322486780692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A006007 n + (n : ℤ)

end

end A334694.P17389426322486780692

namespace A334694

/-- `3*A006007(n)+n` -/
def P17389426322486780692.Spec : Prop :=
  ∀ n, P17389426322486780692.a n = A334694 n

end A334694

/-! ## A334694.P4796871140821553886

`∑[A155965(n)]-n²`
-/

namespace A334694.P4796871140821553886
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155965 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n ^ 2 : ℤ)

end

end A334694.P4796871140821553886

namespace A334694

/-- `∑[A155965(n)]-n²` -/
def P4796871140821553886.Spec : Prop :=
  ∀ n, P4796871140821553886.a n = A334694 n

end A334694

/-! ## A334694.P16401415905264337759

`∑[A135859(n+1)]-1`
-/

namespace A334694.P16401415905264337759
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135859 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A334694.P16401415905264337759

namespace A334694

/-- `∑[A135859(n+1)]-1` -/
def P16401415905264337759.Spec : Prop :=
  ∀ n, P16401415905264337759.a n = A334694 n

end A334694

/-! ## A334694.P8851233436599588394

`A117717(n+1)+2*n`
-/

namespace A334694.P8851233436599588394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117717 (n + 1) + (2 * n : ℤ)

end

end A334694.P8851233436599588394

namespace A334694

/-- `A117717(n+1)+2*n` -/
def P8851233436599588394.Spec : Prop :=
  ∀ n, P8851233436599588394.a n = A334694 n

end A334694

/-! ## A334694.P17126826896909697869

`abs(1-(A000124(n)²+n))`
-/

namespace A334694.P17126826896909697869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (A000124 n ^ 2 + (n : ℤ))|

end

end A334694.P17126826896909697869

namespace A334694

/-- `abs(1-(A000124(n)²+n))` -/
def P17126826896909697869.Spec : Prop :=
  ∀ n, P17126826896909697869.a n = A334694 n

end A334694

/-! ## A334694.P17598921291994110326

`∑[A079908(n)-abs(1-n)]`
-/

namespace A334694.P17598921291994110326
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079908 n - |1 - (n : ℤ)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A334694.P17598921291994110326

namespace A334694

/-- `∑[A079908(n)-abs(1-n)]` -/
def P17598921291994110326.Spec : Prop :=
  ∀ n, P17598921291994110326.a n = A334694 n

end A334694

/-! ## A334694.P10868911326908852474

`∑[comp[A004277(n)]+n^3]`
-/

namespace A334694.P10868911326908852474
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n + n ^ 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A334694.P10868911326908852474

namespace A334694

/-- `∑[comp[A004277(n)]+n^3]` -/
def P10868911326908852474.Spec : Prop :=
  ∀ n, (P10868911326908852474.a n : ℤ) = A334694 n

end A334694

/-! ## A334694.P6303123426123749643

`(A000217(n)+1)²+n-1`
-/

namespace A334694.P6303123426123749643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000217 n + 1) ^ 2 + (n : ℤ) - 1

end

end A334694.P6303123426123749643

namespace A334694

/-- `(A000217(n)+1)²+n-1` -/
def P6303123426123749643.Spec : Prop :=
  ∀ n, P6303123426123749643.a n = A334694 n

end A334694

/-!
# A334695: First column of A334700.

The programs for A334695, there is no canonical definition to state claims against.
-/

/-! ## A334695.P5517250684771723225

`A334700(∑[n]+1)`
-/

namespace A334695.P5517250684771723225
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334700 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A334695.P5517250684771723225

/-! ## A334695.P10676864371199643227

`record[A334700(n+1)]`
-/

namespace A334695.P10676864371199643227
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334700 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A334695.P10676864371199643227

/-! ## A334695.P9972256310475052205

`record[A334699(n+1)/4]`
-/

namespace A334695.P9972256310475052205
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A334699 (n + 1) : ℚ) / 4

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A334695.P9972256310475052205

/-!
# A334696: Column k=2 of triangle in A334700.

The programs for A334696, there is no canonical definition to state claims against.
-/

/-! ## A334696.P840836591126569062

`A334700(∑[n+1]+2)`
-/

namespace A334696.P840836591126569062
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334700 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A334696.P840836591126569062

/-!
# A334697: a(n) is the number of interior points in the n-th figure shown in A255011 (meaning the figure with 4n points on the perimeter), counted with multiplicity.

The programs for A334697, the canonical program `A334697.P16181938694668024539` is in `Seq.B000.C044`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A334697 has offset 1).

The definition of A334697 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A334697.P5141164297458036738

`ogf((1+45x+123x^2+35x^3)/(1-5x+10x^2-10x^3+5x^4-x^5))`
-/

namespace A334697.P5141164297458036738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 45, 123, 35] [1, -5, 10, -10, 5, -1] n

end

end A334697.P5141164297458036738

namespace A334697

/-- `ogf((1+45x+123x^2+35x^3)/(1-5x+10x^2-10x^3+5x^4-x^5))` -/
def P5141164297458036738.Spec : Prop :=
  ∀ n, P5141164297458036738.a n = A334697 (n + 1)

end A334697

/-! ## A334697.P16181938694668024539

`(n+1)*((n+1)*((n+1)*(17*(n+1)-30)+19)-4)/2`

The canonical program, it is in `Seq.B000.C044`.
-/

namespace A334697

/-- `(n+1)*((n+1)*((n+1)*(17*(n+1)-30)+19)-4)/2` -/
def P16181938694668024539.Spec : Prop :=
  ∀ n, P16181938694668024539.a n = (A334697 (n + 1) : ℚ)

end A334697

/-! ## A334697.P11131517026996618500

`A334698(n+1)-4*(n+1)`
-/

namespace A334697.P11131517026996618500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334698 (n + 1) - (4 * (n + 1) : ℤ)

end

end A334697.P11131517026996618500

namespace A334697

/-- `A334698(n+1)-4*(n+1)` -/
def P11131517026996618500.Spec : Prop :=
  ∀ n, P11131517026996618500.a n = A334697 (n + 1)

end A334697

/-! ## A334697.P1657536039867048900

`A334698(n+1)-3-A016813(n)`
-/

namespace A334697.P1657536039867048900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334698 (n + 1) - 3 - A016813 n

end

end A334697.P1657536039867048900

namespace A334697

/-- `A334698(n+1)-3-A016813(n)` -/
def P1657536039867048900.Spec : Prop :=
  ∀ n, P1657536039867048900.a n = A334697 (n + 1)

end A334697

/-! ## A334697.P18095562972199588050

`A334698(n+1)-A317440(n+1)-A317440(n+1)`
-/

namespace A334697.P18095562972199588050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334698 (n + 1) - A317440 (n + 1) - A317440 (n + 1)

end

end A334697.P18095562972199588050

namespace A334697

/-- `A334698(n+1)-A317440(n+1)-A317440(n+1)` -/
def P18095562972199588050.Spec : Prop :=
  ∀ n, P18095562972199588050.a n = A334697 (n + 1)

end A334697

/-! ## A334697.P17706803496466400202

`A334698(n+1)-3-record[A266072(n)]`
-/

namespace A334697.P17706803496466400202
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266072 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334698 (n + 1) - 3 - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A334697.P17706803496466400202

namespace A334697

/-- `A334698(n+1)-3-record[A266072(n)]` -/
def P17706803496466400202.Spec : Prop :=
  ∀ n, P17706803496466400202.a n = A334697 (n + 1)

end A334697

/-! ## A334697.P14521157446262977201

`A212560(2*n+1)+A036464(n+1)`
-/

namespace A334697.P14521157446262977201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212560 (2 * n + 1) + A036464 (n + 1)

end

end A334697.P14521157446262977201

namespace A334697

/-- `A212560(2*n+1)+A036464(n+1)` -/
def P14521157446262977201.Spec : Prop :=
  ∀ n, P14521157446262977201.a n = A334697 (n + 1)

end A334697

/-! ## A334697.P3763430376865905654

`A334690(n+1)+A334698(n+1)-A331449(n+1)`
-/

namespace A334697.P3763430376865905654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334690 (n + 1) + (A334698 (n + 1) - A331449 (n + 1))

end

end A334697.P3763430376865905654

namespace A334697

/-- `A334690(n+1)+A334698(n+1)-A331449(n+1)` -/
def P3763430376865905654.Spec : Prop :=
  ∀ n, P3763430376865905654.a n = A334697 (n + 1)

end A334697

/-!
# A334698: a(n) is the total number of points (both boundary and interior points) in the n-th figure shown in A255011 (meaning the figure with 4n points on the perimeter), where the interior points are counted with multiplicity.

The programs for A334698, the canonical program `A334698.P16515017716359797938` is in `Seq.B000.C044`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A334698 has offset 1).

The definition of A334698 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A334698.P6104790084384616758

`ogf((5+33x+135x^2+31x^3)/(1-5x+10x^2-10x^3+5x^4-x^5))`
-/

namespace A334698.P6104790084384616758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [5, 33, 135, 31] [1, -5, 10, -10, 5, -1] n

end

end A334698.P6104790084384616758

namespace A334698

/-- `ogf((5+33x+135x^2+31x^3)/(1-5x+10x^2-10x^3+5x^4-x^5))` -/
def P6104790084384616758.Spec : Prop :=
  ∀ n, P6104790084384616758.a n = A334698 (n + 1)

end A334698

/-! ## A334698.P16515017716359797938

`(n+1)*(17*(n+1)^3-30*(n+1)²+19*(n+1)+4)/2`

The canonical program, it is in `Seq.B000.C044`.
-/

namespace A334698

/-- `(n+1)*(17*(n+1)^3-30*(n+1)²+19*(n+1)+4)/2` -/
def P16515017716359797938.Spec : Prop :=
  ∀ n, P16515017716359797938.a n = (A334698 (n + 1) : ℚ)

end A334698

/-! ## A334698.P6510440759799665021

`A367122(n)-A367121(n)+1`
-/

namespace A334698.P6510440759799665021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367122 n - A367121 n + 1

end

end A334698.P6510440759799665021

namespace A334698

/-- `A367122(n)-A367121(n)+1` -/
def P6510440759799665021.Spec : Prop :=
  ∀ n, P6510440759799665021.a n = A334698 (n + 1)

end A334698

/-! ## A334698.P17453282906277666117

`A334697(n+1)+4*(n+1)`
-/

namespace A334698.P17453282906277666117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334697 (n + 1) + (4 * (n + 1) : ℤ)

end

end A334698.P17453282906277666117

namespace A334698

/-- `A334697(n+1)+4*(n+1)` -/
def P17453282906277666117.Spec : Prop :=
  ∀ n, P17453282906277666117.a n = A334698 (n + 1)

end A334698

/-! ## A334698.P18257553026469228718

`A334697(n+1)+A016813(n)+3`
-/

namespace A334698.P18257553026469228718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334697 (n + 1) + A016813 n + 3

end

end A334698.P18257553026469228718

namespace A334698

/-- `A334697(n+1)+A016813(n)+3` -/
def P18257553026469228718.Spec : Prop :=
  ∀ n, P18257553026469228718.a n = A334698 (n + 1)

end A334698

/-! ## A334698.P3119752988101471121

`A008586(n)+A334697(n+1)+4`
-/

namespace A334698.P3119752988101471121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008586 n + (A334697 (n + 1) + 4)

end

end A334698.P3119752988101471121

namespace A334698

/-- `A008586(n)+A334697(n+1)+4` -/
def P3119752988101471121.Spec : Prop :=
  ∀ n, P3119752988101471121.a n = A334698 (n + 1)

end A334698

/-! ## A334698.P17405504349562101032

`A317440(n+1)+A334697(n+1)+A317440(n+1)`
-/

namespace A334698.P17405504349562101032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317440 (n + 1) + (A334697 (n + 1) + A317440 (n + 1))

end

end A334698.P17405504349562101032

namespace A334698

/-- `A317440(n+1)+A334697(n+1)+A317440(n+1)` -/
def P17405504349562101032.Spec : Prop :=
  ∀ n, P17405504349562101032.a n = A334698 (n + 1)

end A334698

/-! ## A334698.P6600567539433681233

`4*(n+1)+A212560(2*n+1)+A036464(n+1)`
-/

namespace A334698.P6600567539433681233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * (n + 1) : ℤ) + (A212560 (2 * n + 1) + A036464 (n + 1))

end

end A334698.P6600567539433681233

namespace A334698

/-- `4*(n+1)+A212560(2*n+1)+A036464(n+1)` -/
def P6600567539433681233.Spec : Prop :=
  ∀ n, P6600567539433681233.a n = A334698 (n + 1)

end A334698

/-! ## A334698.P17309336817302600042

`n+1+A077221(A046092(n))+A046092(A000217(n+1))`
-/

namespace A334698.P17309336817302600042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) + (A077221 (A046092 n).toNat + A046092 (A000217 (n + 1)).toNat)

end

end A334698.P17309336817302600042

namespace A334698

/-- `n+1+A077221(A046092(n))+A046092(A000217(n+1))` -/
def P17309336817302600042.Spec : Prop :=
  ∀ n, P17309336817302600042.a n = A334698 (n + 1)

end A334698

/-! ## A334698.P12251487520116848816

`A331449(n+1)+A334697(n+1)-A334690(n+1)`
-/

namespace A334698.P12251487520116848816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331449 (n + 1) + (A334697 (n + 1) - A334690 (n + 1))

end

end A334698.P12251487520116848816

namespace A334698

/-- `A331449(n+1)+A334697(n+1)-A334690(n+1)` -/
def P12251487520116848816.Spec : Prop :=
  ∀ n, P12251487520116848816.a n = A334698 (n + 1)

end A334698

/-!
# A334699: Triangle read by rows: T(n,k) (n >= 1, 3 <= k <= n+2) = number of k-sided cells in the n-th figure shown in A255011 (meaning the figure with 4n points on the perimeter).

The programs for A334699, there is no canonical definition to state claims against.
-/

/-! ## A334699.P17528582733151413043

`4*A334700(n+1)`
-/

namespace A334699.P17528582733151413043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A334700 (n + 1)

end

end A334699.P17528582733151413043

/-! ## A334699.P16831570311345281291

`A008586(A334700(n+1))`
-/

namespace A334699.P16831570311345281291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008586 (A334700 (n + 1)).toNat

end

end A334699.P16831570311345281291

/-! ## A334699.P9205977601900916525

`A016813(A334700(n+1))-A007318(∑[n])`
-/

namespace A334699.P9205977601900916525
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016813 (A334700 (n + 1)).toNat - A007318 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A334699.P9205977601900916525

/-! ## A334699.P11179145795517952297

`A005843(A334700(n+1)+A334700(n+1))`
-/

namespace A334699.P11179145795517952297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A334700 (n + 1) + A334700 (n + 1)).toNat

end

end A334699.P11179145795517952297

/-! ## A334699.P7367923179148880579

`A014601(A334700(n+1)+A334700(n+1))`
-/

namespace A334699.P7367923179148880579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014601 (A334700 (n + 1) + A334700 (n + 1)).toNat

end

end A334699.P7367923179148880579

