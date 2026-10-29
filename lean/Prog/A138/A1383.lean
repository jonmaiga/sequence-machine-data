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
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C040
import Seq.B000.C041
import Seq.B000.C043
import Seq.B000.C044
import Seq.B000.C045
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
import Seq.B005.C002
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
import Seq.Opaque.C024

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A138300: Differences of each column for atomic numbers of Mendeleyev-Seaborg 7*32 elements periodic table,first extension,A138096 table.86 terms.Horizontal lecture.

The programs for A138300, there is no canonical definition to state claims against.
-/

/-! ## A138300.P7882083689145993933

`2*∑[char[n*((n+1)²-3)]]²`
-/

namespace A138300.P7882083689145993933
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (((n + 1) ^ 2 : ℤ) - 3)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A138300.P7882083689145993933

/-! ## A138300.P10052589705708110430

`A138102(A049008(n+3))`
-/

namespace A138300.P10052589705708110430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138102 (A049008 (n + 3)).toNat

end

end A138300.P10052589705708110430

/-! ## A138300.P5642959122506985727

`A001105(ceil(root(A105343(n), 6)))`
-/

namespace A138300.P5642959122506985727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001105 ⌈(A105343 n : ℝ) ^ (1 / (6 : ℝ))⌉.toNat

end

end A138300.P5642959122506985727

/-! ## A138300.P7481641718866789642

`A137575(A049008(n+5)-1)`
-/

namespace A138300.P7481641718866789642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137575 (A049008 (n + 5) - 1).toNat

end

end A138300.P7481641718866789642

/-! ## A138300.P7223089305286846512

`A004277(ceil(root(A105343(n), 6))²)`
-/

namespace A138300.P7223089305286846512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (⌈(A105343 n : ℝ) ^ (1 / (6 : ℝ))⌉ ^ 2).toNat

end

end A138300.P7223089305286846512

/-! ## A138300.P1677629638910919171

`A005843(ceil(root(A105343(n), 6))²)`
-/

namespace A138300.P1677629638910919171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (⌈(A105343 n : ℝ) ^ (1 / (6 : ℝ))⌉ ^ 2).toNat

end

end A138300.P1677629638910919171

/-! ## A138300.P13296614626896202411

`A137575(A055048(n+1)-2*n)`
-/

namespace A138300.P13296614626896202411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137575 (A055048 (n + 1) - (2 * n : ℤ)).toNat

end

end A138300.P13296614626896202411

/-! ## A138300.P5105260389850147429

`A008574(ceil(root(A105343(n), 6))²)/2`
-/

namespace A138300.P5105260389850147429
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008574 (⌈(A105343 n : ℝ) ^ (1 / (6 : ℝ))⌉ ^ 2).toNat : ℚ) / 2

end

end A138300.P5105260389850147429

/-! ## A138300.P1423611094662765218

`A137575(A055048(n+1)-n-n)`
-/

namespace A138300.P1423611094662765218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137575 (A055048 (n + 1) - (n : ℤ) - (n : ℤ)).toNat

end

end A138300.P1423611094662765218

/-!
# A138301: Number of integers k < 10^n such that k*(k+1)-1 and k*(k+3)-1 are both first of twin primes.

The programs for A138301, there is no canonical definition to state claims against.
-/

/-! ## A138301.P2987164143492866182

`∑[A262249(Δ[and(-2, 2^n)])]`
-/

namespace A138301.P2987164143492866182
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-2) (2 ^ n : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262249 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A138301.P2987164143492866182

/-! ## A138301.P7862914549485522865

`A089167(a(n-1)+1)` with `a(0)=1, a(1)=2, a(2)=4`
-/

namespace A138301.P7862914549485522865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 4] fun n a =>
  A089167 (a (n - 1) + 1).toNat

end

end A138301.P7862914549485522865

/-!
# A138302: Exponentially 2^n-numbers: 1 together with positive integers k such that all exponents in prime factorization of k are powers of 2.

The programs for A138302, the canonical program `A138302.P16562127225600739451` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A138302 has offset 1).

The definition of A138302 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A138302.P9379833064447249936

`record[A270418(n+1)]`
-/

namespace A138302.P9379833064447249936
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270418 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A138302.P9379833064447249936

namespace A138302

/-- `record[A270418(n+1)]` -/
def P9379833064447249936.Spec : Prop :=
  ∀ n, P9379833064447249936.a n = A138302 (n + 1)

end A138302

/-! ## A138302.P16562127225600739451

`eq[1, A355823(n+1)]+1`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A138302

/-- `eq[1, A355823(n+1)]+1` -/
def P16562127225600739451.Spec : Prop :=
  ∀ n, (P16562127225600739451.a n : ℤ) = A138302 (n + 1)

theorem P16562127225600739451.correct : P16562127225600739451.Spec := by
  intro n
  simp only [A138302, Nat.add_sub_cancel]

end A138302

/-! ## A138302.P4423185552283167710

`filter[A270428(n+1), A355823(#)]`
-/

namespace A138302.P4423185552283167710
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270428 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355823 (f1 j).toNat = 1) n)

end

end A138302.P4423185552283167710

namespace A138302

/-- `filter[A270428(n+1), A355823(#)]` -/
def P4423185552283167710.Spec : Prop :=
  ∀ n, P4423185552283167710.a n = A138302 (n + 1)

end A138302

/-! ## A138302.P16542158767444453856

`filter[A392632(n+1), A355823(#)]`
-/

namespace A138302.P16542158767444453856
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392632 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355823 (f1 j).toNat = 1) n)

end

end A138302.P16542158767444453856

namespace A138302

/-- `filter[A392632(n+1), A355823(#)]` -/
def P16542158767444453856.Spec : Prop :=
  ∀ n, P16542158767444453856.a n = A138302 (n + 1)

end A138302

/-! ## A138302.P10035629542798782882

`filter[A390437(n+1), A355823(#)]`
-/

namespace A138302.P10035629542798782882
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390437 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355823 (f1 j).toNat = 1) n)

end

end A138302.P10035629542798782882

namespace A138302

/-- `filter[A390437(n+1), A355823(#)]` -/
def P10035629542798782882.Spec : Prop :=
  ∀ n, P10035629542798782882.a n = A138302 (n + 1)

end A138302

/-! ## A138302.P5826601135991074552

`filter[A336592(n+1), A355823(#)]`
-/

namespace A138302.P5826601135991074552
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336592 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355823 (f1 j).toNat = 1) n)

end

end A138302.P5826601135991074552

namespace A138302

/-- `filter[A336592(n+1), A355823(#)]` -/
def P5826601135991074552.Spec : Prop :=
  ∀ n, P5826601135991074552.a n = A138302 (n + 1)

end A138302

/-! ## A138302.P15391262419526340345

`filter[A386799(n+1), A355823(#)]`
-/

namespace A138302.P15391262419526340345
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386799 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355823 (f1 j).toNat = 1) n)

end

end A138302.P15391262419526340345

namespace A138302

/-- `filter[A386799(n+1), A355823(#)]` -/
def P15391262419526340345.Spec : Prop :=
  ∀ n, P15391262419526340345.a n = A138302 (n + 1)

end A138302

/-! ## A138302.P6837863844449691411

`filter[A386807(n+1), A355823(#)]`
-/

namespace A138302.P6837863844449691411
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386807 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355823 (f1 j).toNat = 1) n)

end

end A138302.P6837863844449691411

namespace A138302

/-- `filter[A386807(n+1), A355823(#)]` -/
def P6837863844449691411.Spec : Prop :=
  ∀ n, P6837863844449691411.a n = A138302 (n + 1)

end A138302

/-! ## A138302.P13851989320999601630

`record[A353897(n+1)]`
-/

namespace A138302.P13851989320999601630
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353897 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A138302.P13851989320999601630

namespace A138302

/-- `record[A353897(n+1)]` -/
def P13851989320999601630.Spec : Prop :=
  ∀ n, P13851989320999601630.a n = A138302 (n + 1)

end A138302

/-! ## A138302.P4846196461577643957

`record[A365296(n+1)]`
-/

namespace A138302.P4846196461577643957
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365296 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A138302.P4846196461577643957

namespace A138302

/-- `record[A365296(n+1)]` -/
def P4846196461577643957.Spec : Prop :=
  ∀ n, P4846196461577643957.a n = A138302 (n + 1)

end A138302

/-! ## A138302.P7425423237830238767

`record[A367168(n+1)]`
-/

namespace A138302.P7425423237830238767
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367168 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A138302.P7425423237830238767

namespace A138302

/-- `record[A367168(n+1)]` -/
def P7425423237830238767.Spec : Prop :=
  ∀ n, P7425423237830238767.a n = A138302 (n + 1)

end A138302

/-! ## A138302.P14012724167617563542

`eq[1, A359411(n+1)]+1`
-/

namespace A138302.P14012724167617563542
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359411 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A138302.P14012724167617563542

namespace A138302

/-- `eq[1, A359411(n+1)]+1` -/
def P14012724167617563542.Spec : Prop :=
  ∀ n, (P14012724167617563542.a n : ℤ) = A138302 (n + 1)

end A138302

/-! ## A138302.P11391564730520722652

`eq[1, A363329(n+1)]+1`
-/

namespace A138302.P11391564730520722652
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363329 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A138302.P11391564730520722652

namespace A138302

/-- `eq[1, A363329(n+1)]+1` -/
def P11391564730520722652.Spec : Prop :=
  ∀ n, (P11391564730520722652.a n : ℤ) = A138302 (n + 1)

end A138302

/-! ## A138302.P10643309023441581578

`filter[A038459(n+1), A355823(#)]`
-/

namespace A138302.P10643309023441581578
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038459 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355823 (f1 j).toNat = 1) n)

end

end A138302.P10643309023441581578

namespace A138302

/-- `filter[A038459(n+1), A355823(#)]` -/
def P10643309023441581578.Spec : Prop :=
  ∀ n, P10643309023441581578.a n = A138302 (n + 1)

end A138302

/-!
# A138305: Irregular triangle of prime primitive roots of prime(n).

The programs for A138305, there is no canonical definition to state claims against.
-/

/-! ## A138305.P14870356848238550201

`p?[A060749(n+1)]`
-/

namespace A138305.P14870356848238550201
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060749 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A138305.P14870356848238550201

/-! ## A138305.P15523441716548887563

`filter[A060749(n+1), A010051(#)]`
-/

namespace A138305.P15523441716548887563
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060749 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A138305.P15523441716548887563

/-! ## A138305.P16068766592746263987

`filter[A060749(n+1), A302777(#)]`
-/

namespace A138305.P16068766592746263987
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060749 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A302777 (f1 j).toNat = 1) n)

end

end A138305.P16068766592746263987

/-! ## A138305.P6124612109755029917

`filter[A060749(n+2), A080339(#)]`
-/

namespace A138305.P6124612109755029917
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060749 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A080339 (f1 j).toNat = 1) n)

end

end A138305.P6124612109755029917

/-! ## A138305.P18077139717130180438

`filter[A060749(n+2), A355937(#)]`
-/

namespace A138305.P18077139717130180438
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060749 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355937 (f1 j).toNat = 1) n)

end

end A138305.P18077139717130180438

/-!
# A138306: Least prime p such that 2n = p + g, where g is a prime primitive root of p, or 0 if there is no such prime p.

The programs for A138306, there is no canonical definition to state claims against.
-/

/-! ## A138306.P93411877727278808

`A138325(2*(n+1))%A088028(n+1)`
-/

namespace A138306.P93411877727278808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A138325 (2 * (n + 1))) (A088028 (n + 1))

end

end A138306.P93411877727278808

/-! ## A138306.P2107915157158783104

`A258292(A127345(n+1))+A138325(2*n+2)`
-/

namespace A138306.P2107915157158783104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258292 (A127345 (n + 1)).toNat + A138325 (2 * n + 2)

end

end A138306.P2107915157158783104

/-! ## A138306.P4343678597811146283

`A001222(A239685(n+1))*A138325(2*(n+1))`
-/

namespace A138306.P4343678597811146283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A239685 (n + 1)).toNat * A138325 (2 * (n + 1))

end

end A138306.P4343678597811146283

/-! ## A138306.P10664233919297462892

`A138325(2*n+2)*A321648(A078857(n+1))`
-/

namespace A138306.P10664233919297462892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138325 (2 * n + 2) * A321648 (A078857 (n + 1)).toNat

end

end A138306.P10664233919297462892

/-!
# A138307: Even numbers not representable as p+g, where p is a prime and g is a prime primitive root of p.

The programs for A138307, there is no canonical definition to state claims against.
-/

/-! ## A138307.P12883909471415115611

`record[gcd(2*(n+1), A138319(n+1))]`
-/

namespace A138307.P12883909471415115611
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (2 * (n + 1) : ℤ) (A138319 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A138307.P12883909471415115611

/-! ## A138307.P10867849842710441504

`record[A005843(n+1)-A138306(n+1)]`
-/

namespace A138307.P10867849842710441504
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (n + 1) - A138306 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A138307.P10867849842710441504

/-! ## A138307.P4056415876631123326

`A005843(record[gcd(n+1, A138306(n+1))])`
-/

namespace A138307.P4056415876631123326
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A138306 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A138307.P4056415876631123326

/-!
# A138309: a(1)=1. a(n) = smallest integer > a(n-1) that is coprime to every (nonzero) exponent in the prime factorization of n.

The programs for A138309, there is no canonical definition to state claims against.
-/

/-! ## A138309.P318567363365820941

`∑[A000034(A220523(or(4, n+4)))]`
-/

namespace A138309.P318567363365820941
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (A220523 (Nat.lor 4 (n + 4))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A138309.P318567363365820941

/-! ## A138309.P5641970008856743552

`∑[gcd(A115362(n), A328142(n+1))]`
-/

namespace A138309.P5641970008856743552
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A115362 n) (A328142 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A138309.P5641970008856743552

/-! ## A138309.P5194227834145375150

`∑[gcd(A115362(n), A212116(n))]`
-/

namespace A138309.P5194227834145375150
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A115362 n) (A212116 (n + 35))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A138309.P5194227834145375150

/-! ## A138309.P12242488831612017912

`∑[gcd(A000188(n+1), A334100(2*(n+1)))]`
-/

namespace A138309.P12242488831612017912
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000188 (n + 1)) (A334100 (2 * (n + 1)))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A138309.P12242488831612017912

/-!
# A138311: a(1)=1. a(n) = smallest positive integer not occurring among the first n-1 terms of the sequence that is coprime to every (nonzero) exponent in the prime factorization of n.

The programs for A138311, there is no canonical definition to state claims against.
-/

/-! ## A138311.P4858766638068160627

`A222254(A083219(n)+A062399(A065033(n)))`
-/

namespace A138311.P4858766638068160627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222254 (A083219 n + A062399 (A065033 n).toNat).toNat

end

end A138311.P4858766638068160627

/-! ## A138311.P10747799379059162759

`Δ[A294936(A121295(n))]+n+1`
-/

namespace A138311.P10747799379059162759
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294936 (A121295 (n + 10)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (n + 1 : ℤ)

end

end A138311.P10747799379059162759

/-! ## A138311.P13656936494282126498

`xor(n+1, A284932(A028495(n)))`
-/

namespace A138311.P13656936494282126498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n + 1 : ℤ) (A284932 (A028495 n).toNat)

end

end A138311.P13656936494282126498

/-! ## A138311.P14564845885272662539

`A061775(A056449(n))-A284775(n+1)`
-/

namespace A138311.P14564845885272662539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061775 (A056449 n).toNat - A284775 (n + 1)

end

end A138311.P14564845885272662539

/-!
# A138314: E.g.f. satisfies: A(x) = exp( Sum_{n>=0} a(n)*x^(2n+1)/(2n+1)! ).

The programs for A138314, there is no canonical definition to state claims against.
-/

/-! ## A138314.P6803914358650321732

`A004874(A309861(n))+A003724(n)`
-/

namespace A138314.P6803914358650321732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004874 (A309861 n).toNat + A003724 n

end

end A138314.P6803914358650321732

/-! ## A138314.P3131144314050683085

`A023443(A309861(n)+A003724(n))`
-/

namespace A138314.P3131144314050683085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A309861 n + A003724 n).toNat

end

end A138314.P3131144314050683085

/-! ## A138314.P17188177071139744362

`A205567(A199343(n))+A003724(n)`
-/

namespace A138314.P17188177071139744362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205567 (A199343 n).toNat + A003724 n

end

end A138314.P17188177071139744362

/-! ## A138314.P4089444626186512528

`A273045(A180503(n))+A003724(n)`
-/

namespace A138314.P4089444626186512528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273045 (A180503 n).toNat + A003724 n

end

end A138314.P4089444626186512528

/-! ## A138314.P11382037772455773584

`A055570(A205567(n+1))+A003724(n)`
-/

namespace A138314.P11382037772455773584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055570 (A205567 (n + 1)).toNat + A003724 n

end

end A138314.P11382037772455773584

/-!
# A138315: E.g.f. satisfies: A(x) = exp( Sum_{n>=0} a(n)*x^(2n+1)/(2n+1) ).

The programs for A138315, there is no canonical definition to state claims against.
-/

/-! ## A138315.P12950627994858834843

`A182243(A029574(n))+A000246(n)`
-/

namespace A138315.P12950627994858834843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182243 (A029574 n).toNat + A000246 n

end

end A138315.P12950627994858834843

/-! ## A138315.P15934398972520233470

`A182243(A291113(n))+A000246(n)`
-/

namespace A138315.P15934398972520233470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182243 (A291113 n).toNat + A000246 n

end

end A138315.P15934398972520233470

/-! ## A138315.P3286534223698054486

`A004273(A065033(∏[n-(n-1)%2])+A029574(n))`
-/

namespace A138315.P3286534223698054486
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - Int.tmod ((n : ℤ) - 1) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A065033 (∏ j ∈ Finset.range (n + 1), f1 j).toNat + A029574 n).toNat

end

end A138315.P3286534223698054486

/-!
# A138318: Even nonsquares not representable as p+g, where p is a prime and g is a prime primitive root of p.

The programs for A138318, there is no canonical definition to state claims against.
-/

/-! ## A138318.P6717392491322162016

`filter[A138307(n+1), A049240(#)]`
-/

namespace A138318.P6717392491322162016
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138307 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A049240 (f1 j).toNat = 1) n)

end

end A138318.P6717392491322162016

/-! ## A138318.P14732400237675769812

`filter[A138307(n+1), A080846(#)]`
-/

namespace A138318.P14732400237675769812
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138307 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A080846 (f1 j).toNat = 1) n)

end

end A138318.P14732400237675769812

/-! ## A138318.P13913365546869703444

`filter[A138307(n+1), A132350(#)]`
-/

namespace A138318.P13913365546869703444
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138307 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A132350 (f1 j).toNat = 1) n)

end

end A138318.P13913365546869703444

/-! ## A138318.P17727244077169469379

`filter[A138307(n+1), A189664(#)]`
-/

namespace A138318.P17727244077169469379
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138307 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A189664 (f1 j).toNat = 1) n)

end

end A138318.P17727244077169469379

/-!
# A138319: Number of ways in which 2n can be represented as p+g, where p is a prime and g is a prime primitive root of p.

The programs for A138319, there is no canonical definition to state claims against.
-/

/-! ## A138319.P11621036534459535267

`A024361(A176485(n+1)+1)`
-/

namespace A138319.P11621036534459535267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024361 (A176485 (n + 1) + 1).toNat

end

end A138319.P11621036534459535267

/-!
# A138320: Numerators of the difference between the squarefree totient analogs of the harmonic numbers and the harmonic numbers: F_n-H_n.

The programs for A138320, there is no canonical definition to state claims against.
-/

/-! ## A138320.P3331516957788856474

`A140263(A120814(n+1)+n)`
-/

namespace A138320.P3331516957788856474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140263 (A120814 (n + 1) + (n : ℤ)).toNat

end

end A138320.P3331516957788856474

/-! ## A138320.P9337092405625227186

`A298355(A298260(a(n-1)))` with `a(0)=0, a(1)=1, a(2)=2, a(3)=5, a(4)=7, a(5)=4`
-/

namespace A138320.P9337092405625227186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 2, 5, 7, 4] fun n a =>
  A298355 (A298260 (a (n - 1)).toNat).toNat

end

end A138320.P9337092405625227186

/-! ## A138320.P2429627252153199929

`A298355(A298356(a(n-1)))` with `a(0)=0, a(1)=1, a(2)=2, a(3)=5, a(4)=7, a(5)=4`
-/

namespace A138320.P2429627252153199929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 2, 5, 7, 4] fun n a =>
  A298355 (A298356 (a (n - 1)).toNat).toNat

end

end A138320.P2429627252153199929

/-!
# A138321: Denominators of the difference between the squarefree totient analogs of the harmonic numbers and the harmonic numbers: F_n - H_n.

The programs for A138321, there is no canonical definition to state claims against.
-/

/-! ## A138321.P18382832477218407789

`A094307(A000070(n))/A143897(n)`
-/

namespace A138321.P18382832477218407789
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A094307 (A000070 n).toNat : ℚ) / (A143897 n : ℚ)

end

end A138321.P18382832477218407789

/-! ## A138321.P18039968503593622362

`A181350(n+2)+A037213(A189315(n))`
-/

namespace A138321.P18039968503593622362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181350 (n + 2) + A037213 (A189315 n).toNat

end

end A138321.P18039968503593622362

/-! ## A138321.P4087773895214136816

`A023816(n+1)*A214950(A000311(n))`
-/

namespace A138321.P4087773895214136816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023816 (n + 1) * A214950 (A000311 n).toNat

end

end A138321.P4087773895214136816

/-!
# A138322: a(n) = 5*a(n-1) + 10*a(n-2).

The programs for A138322, the canonical program `A138322.P11109405073818217249` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A138322 has offset 0).

The definition of A138322 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `5*a(n-1)+10*a(n-2)` (program `A138322.P11109405073818217249`, by `A138322.P11109405073818217249.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A138322.P10175461134798491522

`ogf((1+10x)/(1-5x-10x^2))`
-/

namespace A138322.P10175461134798491522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 10] [1, -5, -10] n

end

end A138322.P10175461134798491522

namespace A138322

/-- `ogf((1+10x)/(1-5x-10x^2))` -/
def P10175461134798491522.Spec : Prop :=
  ∀ n, P10175461134798491522.a n = A138322 n

end A138322

/-! ## A138322.P11109405073818217249

`5*a(n-1)+10*a(n-2)` with `a(0)=1, a(1)=15`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A138322

/-- `5*a(n-1)+10*a(n-2)` -/
def P11109405073818217249.Spec : Prop :=
  ∀ n, (P11109405073818217249.a n : ℤ) = A138322 n

theorem P11109405073818217249.correct : P11109405073818217249.Spec := by
  intro n
  simp only [A138322]

end A138322

/-! ## A138322.P11665458388887185756

`5*(A005843(a(n-2))+a(n-1))` with `a(0)=1, a(1)=15`
-/

namespace A138322.P11665458388887185756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 15] fun n a =>
  5 * (A005843 (a (n - 2)).toNat + a (n - 1))

end

end A138322.P11665458388887185756

namespace A138322

/-- `5*(A005843(a(n-2))+a(n-1))` -/
def P11665458388887185756.Spec : Prop :=
  ∀ n, P11665458388887185756.a n = A138322 n

end A138322

/-!
# A138323: a(n) = Sum_{k = 1..n} prime(k)^prime(k + 1).

The programs for A138323, there is no canonical definition to state claims against.
-/

/-! ## A138323.P8742197744318615197

`∑[p?[comp[n²]]^p?[2*n+1]]`
-/

namespace A138323.P8742197744318615197
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ x) n

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n) ^ f4 (SequenceMachineLib.nth (fun j => (f4 j).Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A138323.P8742197744318615197

/-! ## A138323.P9739160624640504049

`∑[A053089(n+1)]`
-/

namespace A138323.P9739160624640504049
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053089 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A138323.P9739160624640504049

/-! ## A138323.P17457357086897173393

`∑[record[A006530(n+2)]^p?[2*n+1]]`
-/

namespace A138323.P17457357086897173393
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n) ^ f3 (SequenceMachineLib.nth (fun j => (f3 j).Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A138323.P17457357086897173393

/-! ## A138323.P14015318542571220715

`∑[record[A020639(n+2)]^p?[2*n+1]]`
-/

namespace A138323.P14015318542571220715
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n) ^ f3 (SequenceMachineLib.nth (fun j => (f3 j).Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A138323.P14015318542571220715

/-!
# A138324: a(n) = the second term in the simple continued fraction of Pi^n.

The programs for A138324, there is no canonical definition to state claims against.
-/

/-! ## A138324.P3116963907237446799

`A137299(∑[n+1]+2)`
-/

namespace A138324.P3116963907237446799
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137299 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A138324.P3116963907237446799

/-!
# A138325: Least prime p such that n = p + g, where g is a primitive root of p, or 0 if there is no such prime p.

The programs for A138325, there is no canonical definition to state claims against.
-/

/-! ## A138325.P2633066907464862107

`A006530(A103973(n))%A065228(n)`
-/

namespace A138325.P2633066907464862107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A006530 (A103973 n).toNat) (A065228 n)

end

end A138325.P2633066907464862107

/-! ## A138325.P8225718596883671932

`A006530(A103973(n))*A138328(n+1)`
-/

namespace A138325.P8225718596883671932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A103973 n).toNat * A138328 (n + 1)

end

end A138325.P8225718596883671932

/-! ## A138325.P12094603677820054640

`A006530(A103973(n))*A125005(A020897(3*n+2)+2)`
-/

namespace A138325.P12094603677820054640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A103973 n).toNat * A125005 (A020897 (3 * n + 2) + 2).toNat

end

end A138325.P12094603677820054640

/-!
# A138326: Numbers not representable as p+g, where p is a prime and g is a primitive root of p.

The programs for A138326, there is no canonical definition to state claims against.
-/

/-! ## A138326.P11593448872037862754

`record[gcd(n+1, A138328(n+1))]`
-/

namespace A138326.P11593448872037862754
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A138328 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A138326.P11593448872037862754

/-! ## A138326.P5867019860620342766

`record[1-A138325(n+1)+n]`
-/

namespace A138326.P5867019860620342766
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A138325 (n + 1) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A138326.P5867019860620342766

/-! ## A138326.P2804701091835217027

`record[gcd(A000027(n+1), A138325(n+1))]`
-/

namespace A138326.P2804701091835217027
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000027 (n + 1)) (A138325 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A138326.P2804701091835217027

/-! ## A138326.P3013969365684452826

`record[(n+1)/A026741(A138325(n+1)+1)]`
-/

namespace A138326.P3013969365684452826
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A026741 (A138325 (n + 1) + 1).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A138326.P3013969365684452826

/-! ## A138326.P17135150417629905638

`eq[A040325(n), A098055(n)]`
-/

namespace A138326.P17135150417629905638
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040325 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098055 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A138326.P17135150417629905638

/-!
# A138327: Nonsquares not representable as p+g, where p is a prime and g is a primitive root of p.

The programs for A138327, there is no canonical definition to state claims against.
-/

/-! ## A138327.P4726962519124341842

`∩[A138326(n+1), comp[n²]]`
-/

namespace A138327.P4726962519124341842
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138326 (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ x) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A138327.P4726962519124341842

/-! ## A138327.P16534213958148070499

`filter[A138326(n+1), A049240(#)]`
-/

namespace A138327.P16534213958148070499
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138326 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A049240 (f1 j).toNat = 1) n)

end

end A138327.P16534213958148070499

/-! ## A138327.P10937033835032164342

`filter[A138326(n+1), A080846(#)]`
-/

namespace A138327.P10937033835032164342
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138326 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A080846 (f1 j).toNat = 1) n)

end

end A138327.P10937033835032164342

/-! ## A138327.P9898524616211752446

`filter[A138326(n+1), A267594(#)]`
-/

namespace A138327.P9898524616211752446
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138326 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A267594 (f1 j).toNat = 1) n)

end

end A138327.P9898524616211752446

/-! ## A138327.P2412106372294865669

`filter[A138326(n+1), A267635(#)]`
-/

namespace A138327.P2412106372294865669
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138326 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A267635 (f1 j).toNat = 1) n)

end

end A138327.P2412106372294865669

/-!
# A138328: Number of ways in which n can be represented as p+g, where p is a prime and g is a primitive root of p.

The programs for A138328, there is no canonical definition to state claims against.
-/

/-! ## A138328.P14563160872340956001

`A001221(or(A080237(n+1), A185063(n)))`
-/

namespace A138328.P14563160872340956001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (Int.lor (A080237 (n + 1)) (A185063 n)).toNat

end

end A138328.P14563160872340956001

/-! ## A138328.P16885936601244305843

`A001221(or(A185063(n), A210208(n+1)))`
-/

namespace A138328.P16885936601244305843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (Int.lor (A185063 n) (A210208 (n + 1))).toNat

end

end A138328.P16885936601244305843

/-! ## A138328.P18052082343123210469

`A306446(or(A080237(n+1), A185063(n)))`
-/

namespace A138328.P18052082343123210469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306446 (Int.lor (A080237 (n + 1)) (A185063 n)).toNat

end

end A138328.P18052082343123210469

/-! ## A138328.P14263334164995537401

`A306446(or(A185063(n), A210208(n+1)))`
-/

namespace A138328.P14263334164995537401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306446 (Int.lor (A185063 n) (A210208 (n + 1))).toNat

end

end A138328.P14263334164995537401

/-! ## A138328.P11207633797485791496

`gcd(A083917(2*n+3), A083919(A003215(3*n)))`
-/

namespace A138328.P11207633797485791496
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A083917 (2 * n + 3)) (A083919 (A003215 (3 * n)).toNat)

end

end A138328.P11207633797485791496

/-!
# A138329: List of strictly non-palindromic twin primes {p, p+2}.

The programs for A138329, there is no canonical definition to state claims against.
-/

/-! ## A138329.P12027968488031797697

`A138348(A008619(n))+Δ[or(1, n)]`
-/

namespace A138329.P12027968488031797697
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138348 (A008619 n).toNat + ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A138329.P12027968488031797697

/-! ## A138329.P1659101502230792379

`∪[A138348(n+1)+2, A138348(n+1)]`
-/

namespace A138329.P1659101502230792379
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138348 (n + 1) + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138348 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A138329.P1659101502230792379

/-! ## A138329.P4059508028875950892

`A138348(A008619(n))+A010673(n)`
-/

namespace A138329.P4059508028875950892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138348 (A008619 n).toNat + A010673 n

end

end A138329.P4059508028875950892

/-! ## A138329.P14197172996438905425

`A138348(A008619(n))+1-A033999(n)`
-/

namespace A138329.P14197172996438905425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138348 (A008619 n).toNat + (1 - A033999 n)

end

end A138329.P14197172996438905425

/-! ## A138329.P5839768765409551393

`A138348(A008619(n))+A010873(2*n)`
-/

namespace A138329.P5839768765409551393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138348 (A008619 n).toNat + A010873 (2 * n)

end

end A138329.P5839768765409551393

/-!
# A138330: Beatty discrepancy (defined in A138253) giving the closeness of the pair (A136497,A136498) to the Beatty pair (A001951,A001952).

The programs for A138330, the canonical program `A138330.P10222527498663226633` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A138330 has offset 1).

The definition of A138330 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A138330.P10222527498663226633

`2*(n+1)-floor(sqrt(2)*floor(sqrt(2)*(n+1)))`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A138330

/-- `2*(n+1)-floor(sqrt(2)*floor(sqrt(2)*(n+1)))` -/
def P10222527498663226633.Spec : Prop :=
  ∀ n, P10222527498663226633.a n = A138330 (n + 1)

theorem P10222527498663226633.correct : P10222527498663226633.Spec := by
  intro n
  simp only [A138330, Nat.add_sub_cancel]

end A138330

/-! ## A138330.P7925204312873508492

`a(A332789(n))` with `a(0)=1, a(1)=2, a(2)=1`
-/

namespace A138330.P7925204312873508492
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 1] fun n a =>
  a (A332789 n).toNat

end

end A138330.P7925204312873508492

namespace A138330

/-- `a(A332789(n))` -/
def P7925204312873508492.Spec : Prop :=
  ∀ n, (P7925204312873508492.a n : ℤ) = A138330 (n + 1)

end A138330

/-! ## A138330.P11609548221285860090

`gcd(2, A007069(n+1))`
-/

namespace A138330.P11609548221285860090
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (A007069 (n + 1))

end

end A138330.P11609548221285860090

namespace A138330

/-- `gcd(2, A007069(n+1))` -/
def P11609548221285860090.Spec : Prop :=
  ∀ n, (P11609548221285860090.a n : ℤ) = A138330 (n + 1)

end A138330

/-! ## A138330.P856675557751220142

`round(sqrt(A332789(n+1)))`
-/

namespace A138330.P856675557751220142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A332789 (n + 1) : ℝ))

end

end A138330.P856675557751220142

namespace A138330

/-- `round(sqrt(A332789(n+1)))` -/
def P856675557751220142.Spec : Prop :=
  ∀ n, P856675557751220142.a n = A138330 (n + 1)

end A138330

/-! ## A138330.P8494440904091176436

`floor(((2*n+1)/A001951(n+1))²)`
-/

namespace A138330.P8494440904091176436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((2 * n + 1 : ℚ) / (A001951 (n + 1) : ℚ)) ^ 2⌋

end

end A138330.P8494440904091176436

namespace A138330

/-- `floor(((2*n+1)/A001951(n+1))²)` -/
def P8494440904091176436.Spec : Prop :=
  ∀ n, P8494440904091176436.a n = A138330 (n + 1)

end A138330

/-! ## A138330.P2303254332758170574

`A040001(A007069(n+1))`
-/

namespace A138330.P2303254332758170574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040001 (A007069 (n + 1)).toNat

end

end A138330.P2303254332758170574

namespace A138330

/-- `A040001(A007069(n+1))` -/
def P2303254332758170574.Spec : Prop :=
  ∀ n, P2303254332758170574.a n = A138330 (n + 1)

end A138330

/-! ## A138330.P18103986511618213427

`gcd(A006337(n+1), A342280(n))`
-/

namespace A138330.P18103986511618213427
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A006337 (n + 1)) (A342280 n)

end

end A138330.P18103986511618213427

namespace A138330

/-- `gcd(A006337(n+1), A342280(n))` -/
def P18103986511618213427.Spec : Prop :=
  ∀ n, (P18103986511618213427.a n : ℤ) = A138330 (n + 1)

end A138330

/-! ## A138330.P794838794685112934

`gcd(A097509(n), A279620(n+1))`
-/

namespace A138330.P794838794685112934
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A097509 n) (A279620 (n + 1))

end

end A138330.P794838794685112934

namespace A138330

/-- `gcd(A097509(n), A279620(n+1))` -/
def P794838794685112934.Spec : Prop :=
  ∀ n, (P794838794685112934.a n : ℤ) = A138330 (n + 1)

end A138330

/-! ## A138330.P4090879179063881079

`(A327205(n+1)+A327177(n))!`
-/

namespace A138330.P4090879179063881079
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A327205 (n + 1) + A327177 n).toNat

end

end A138330.P4090879179063881079

namespace A138330

/-- `(A327205(n+1)+A327177(n))!` -/
def P4090879179063881079.Spec : Prop :=
  ∀ n, (P4090879179063881079.a n : ℤ) = A138330 (n + 1)

end A138330

/-! ## A138330.P10649767094304851860

`2/(A001952(n+1)-A001954(n))`
-/

namespace A138330.P10649767094304851860
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 / (A001952 (n + 1) - A001954 n : ℚ)

end

end A138330.P10649767094304851860

namespace A138330

/-- `2/(A001952(n+1)-A001954(n))` -/
def P10649767094304851860.Spec : Prop :=
  ∀ n, P10649767094304851860.a n = (A138330 (n + 1) : ℚ)

end A138330

/-! ## A138330.P16429063767560925043

`A001952(n+1)%A341239(n+1)`
-/

namespace A138330.P16429063767560925043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001952 (n + 1)) (A341239 (n + 1))

end

end A138330.P16429063767560925043

namespace A138330

/-- `A001952(n+1)%A341239(n+1)` -/
def P16429063767560925043.Spec : Prop :=
  ∀ n, P16429063767560925043.a n = A138330 (n + 1)

end A138330

/-! ## A138330.P13894439393381456712

`A022804(n+1)%A341249(n+1)`
-/

namespace A138330.P13894439393381456712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A022804 (n + 1)) (A341249 (n + 1))

end

end A138330.P13894439393381456712

namespace A138330

/-- `A022804(n+1)%A341249(n+1)` -/
def P13894439393381456712.Spec : Prop :=
  ∀ n, P13894439393381456712.a n = A138330 (n + 1)

end A138330

/-! ## A138330.P11279246470033779969

`ceil(A026249(n+1)/A026252(n+1))`
-/

namespace A138330.P11279246470033779969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A026249 (n + 1) : ℚ) / (A026252 (n + 1) : ℚ)⌉

end

end A138330.P11279246470033779969

namespace A138330

/-- `ceil(A026249(n+1)/A026252(n+1))` -/
def P11279246470033779969.Spec : Prop :=
  ∀ n, P11279246470033779969.a n = A138330 (n + 1)

end A138330

/-! ## A138330.P14000816659476083487

`A002622(2*n+1-A007069(n+1))`
-/

namespace A138330.P14000816659476083487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002622 ((2 * n + 1 : ℤ) - A007069 (n + 1)).toNat

end

end A138330.P14000816659476083487

namespace A138330

/-- `A002622(2*n+1-A007069(n+1))` -/
def P14000816659476083487.Spec : Prop :=
  ∀ n, P14000816659476083487.a n = A138330 (n + 1)

end A138330

/-! ## A138330.P788955523012811061

`A001030(A001952(n+1)-A001954(n))`
-/

namespace A138330.P788955523012811061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001030 (A001952 (n + 1) - A001954 n).toNat

end

end A138330.P788955523012811061

namespace A138330

/-- `A001030(A001952(n+1)-A001954(n))` -/
def P788955523012811061.Spec : Prop :=
  ∀ n, P788955523012811061.a n = A138330 (n + 1)

end A138330

/-! ## A138330.P13001884919766905018

`A006337(A001951(n)+1)`
-/

namespace A138330.P13001884919766905018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006337 (A001951 n + 1).toNat

end

end A138330.P13001884919766905018

namespace A138330

/-- `A006337(A001951(n)+1)` -/
def P13001884919766905018.Spec : Prop :=
  ∀ n, P13001884919766905018.a n = A138330 (n + 1)

end A138330

/-! ## A138330.P6720799874882588604

`A006337(A184580(n+1))`
-/

namespace A138330.P6720799874882588604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006337 (A184580 (n + 1)).toNat

end

end A138330.P6720799874882588604

namespace A138330

/-- `A006337(A184580(n+1))` -/
def P6720799874882588604.Spec : Prop :=
  ∀ n, P6720799874882588604.a n = A138330 (n + 1)

end A138330

/-! ## A138330.P1983332251654111521

`A006337(A184622(n+1))`
-/

namespace A138330.P1983332251654111521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006337 (A184622 (n + 1)).toNat

end

end A138330.P1983332251654111521

namespace A138330

/-- `A006337(A184622(n+1))` -/
def P1983332251654111521.Spec : Prop :=
  ∀ n, P1983332251654111521.a n = A138330 (n + 1)

end A138330

/-! ## A138330.P6089995254240034198

`A006337(A184117(n+1))`
-/

namespace A138330.P6089995254240034198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006337 (A184117 (n + 1)).toNat

end

end A138330.P6089995254240034198

namespace A138330

/-- `A006337(A184117(n+1))` -/
def P6089995254240034198.Spec : Prop :=
  ∀ n, P6089995254240034198.a n = A138330 (n + 1)

end A138330

/-!
# A138331: a(n) = C(n+5, 5)*(n+3)*(-1)^(n+1)*16/3.

The programs for A138331, the canonical program `A138331.P9701934209222227417` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A138331 has offset 0).

The definition of A138331 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(n+5, 5)*(n+3)*(-1)^(n+1)*16/3` (program `A138331.P1805238586572736106`, by `A138331.P1805238586572736106.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A138331.P17112209265616815163

`ogf((-16+16x)/(1+7x+21x^2+35x^3+35x^4+21x^5+7x^6+x^7))`
-/

namespace A138331.P17112209265616815163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [-16, 16] [1, 7, 21, 35, 35, 21, 7, 1] n

end

end A138331.P17112209265616815163

namespace A138331

/-- `ogf((-16+16x)/(1+7x+21x^2+35x^3+35x^4+21x^5+7x^6+x^7))` -/
def P17112209265616815163.Spec : Prop :=
  ∀ n, P17112209265616815163.a n = A138331 n

end A138331

/-! ## A138331.P1805238586572736106

`C(n+5, 5)*(n+3)*(-1)^(n+1)*16/3`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A138331.P1805238586572736106
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((Nat.choose (n + 5) 5 * (n + 3) : ℤ) * (-1) ^ (n + 1) * 16 : ℚ) / 3

end

end A138331.P1805238586572736106

namespace A138331

/-- `C(n+5, 5)*(n+3)*(-1)^(n+1)*16/3` -/
def P1805238586572736106.Spec : Prop :=
  ∀ n, P1805238586572736106.a n = (A138331 n : ℚ)

theorem P1805238586572736106.correct : P1805238586572736106.Spec := by
  intro n
  simp only [A138331, Nat.add_sub_cancel, A138331.P1805238586572736106.a, A138331.P9701934209222227417.a, A040977, A040977.P17094286001024075111.a, A000579, A000579.P13663713855180125612.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A138331

/-! ## A138331.P9701934209222227417

`(-1)^(n+1)*16*A040977(n)`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A138331

/-- `(-1)^(n+1)*16*A040977(n)` -/
def P9701934209222227417.Spec : Prop :=
  ∀ n, P9701934209222227417.a n = A138331 n

theorem P9701934209222227417.correct : P9701934209222227417.Spec := by
  intro n
  simp only [A138331]

end A138331

/-! ## A138331.P1948693279256354772

`A123583((n+3)²+6)`
-/

namespace A138331.P1948693279256354772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123583 ((n + 3) ^ 2 + 6)

end

end A138331.P1948693279256354772

namespace A138331

/-- `A123583((n+3)²+6)` -/
def P1948693279256354772.Spec : Prop :=
  ∀ n, P1948693279256354772.a n = A138331 n

end A138331

/-! ## A138331.P15631698270188928635

`A123588(A167614(n+2))`
-/

namespace A138331.P15631698270188928635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123588 (A167614 (n + 2)).toNat

end

end A138331.P15631698270188928635

namespace A138331

/-- `A123588(A167614(n+2))` -/
def P15631698270188928635.Spec : Prop :=
  ∀ n, P15631698270188928635.a n = A138331 n

end A138331

/-!
# A138332: C(n+7, 7)*(n+4)*(-1)^(n+1)*16.

The programs for A138332, the canonical program `A138332.P12210435029806075016` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A138332 has offset 0).

The definition of A138332 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(n+7, 7)*(n+4)*(-1)^(n+1)*16` (program `A138332.P12210435029806075016`, by `A138332.P12210435029806075016.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A138332.P17406669995112766497

`ogf((-64+64x)/(1+9x+36x^2+84x^3+126x^4+126x^5+84x^6+36x^7+9x^8+x^9))`
-/

namespace A138332.P17406669995112766497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [-64, 64] [1, 9, 36, 84, 126, 126, 84, 36, 9, 1] n

end

end A138332.P17406669995112766497

namespace A138332

/-- `ogf((-64+64x)/(1+9x+36x^2+84x^3+126x^4+126x^5+84x^6+36x^7+9x^8+x^9))` -/
def P17406669995112766497.Spec : Prop :=
  ∀ n, P17406669995112766497.a n = A138332 n

end A138332

/-! ## A138332.P12210435029806075016

`C(n+7, 7)*(n+4)*(-1)^(n+1)*16`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A138332

/-- `C(n+7, 7)*(n+4)*(-1)^(n+1)*16` -/
def P12210435029806075016.Spec : Prop :=
  ∀ n, P12210435029806075016.a n = A138332 n

theorem P12210435029806075016.correct : P12210435029806075016.Spec := by
  intro n
  simp only [A138332]

end A138332

/-! ## A138332.P4552948557231549155

`(-1)^(n+1)*64*A053347(n)`
-/

namespace A138332.P4552948557231549155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ (n + 1) * 64 * A053347 n

end

end A138332.P4552948557231549155

namespace A138332

/-- `(-1)^(n+1)*64*A053347(n)` -/
def P4552948557231549155.Spec : Prop :=
  ∀ n, P4552948557231549155.a n = A138332 n

theorem P4552948557231549155.correct : P4552948557231549155.Spec := by
  intro n
  simp only [A138332, Nat.add_sub_cancel, A138332.P4552948557231549155.a, A138332.P12210435029806075016.a, A053347, A053347.P9328606196330463444.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A138332

/-! ## A138332.P6465945896382629679

`64*A053347(n)/A033999(n+1)`
-/

namespace A138332.P6465945896382629679
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (64 * A053347 n : ℚ) / (A033999 (n + 1) : ℚ)

end

end A138332.P6465945896382629679

namespace A138332

/-- `64*A053347(n)/A033999(n+1)` -/
def P6465945896382629679.Spec : Prop :=
  ∀ n, P6465945896382629679.a n = (A138332 n : ℚ)

end A138332

/-! ## A138332.P14909366552760737113

`A123588(A167499(n+3)-1)`
-/

namespace A138332.P14909366552760737113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123588 (A167499 (n + 3) - 1).toNat

end

end A138332.P14909366552760737113

namespace A138332

/-- `A123588(A167499(n+3)-1)` -/
def P14909366552760737113.Spec : Prop :=
  ∀ n, P14909366552760737113.a n = A138332 n

end A138332

/-!
# A138333: C(n+9, 9)*(n+5)*(-1)^(n+1)*256/5.

The programs for A138333, the canonical program `A138333.P9068112614881478183` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A138333 has offset 0).

The definition of A138333 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A138333.P3669488993207031090

`C(n+9, 9)*(n+5)*(-1)^(n+1)*256/5`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A138333.P3669488993207031090
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((Nat.choose (n + 9) 9 * (n + 5) : ℤ) * (-1) ^ (n + 1) * 256 : ℚ) / 5

end

end A138333.P3669488993207031090

namespace A138333

/-- `C(n+9, 9)*(n+5)*(-1)^(n+1)*256/5` -/
def P3669488993207031090.Spec : Prop :=
  ∀ n, P3669488993207031090.a n = (A138333 n : ℚ)

end A138333

/-! ## A138333.P9068112614881478183

`(-1)^(n+1)*256*A054334(n)`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A138333

/-- `(-1)^(n+1)*256*A054334(n)` -/
def P9068112614881478183.Spec : Prop :=
  ∀ n, P9068112614881478183.a n = A138333 n

theorem P9068112614881478183.correct : P9068112614881478183.Spec := by
  intro n
  simp only [A138333]

end A138333

/-! ## A138333.P14590021843391751036

`A123588(eq[32, A059268(n)])`
-/

namespace A138333.P14590021843391751036
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  32

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123588 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A138333.P14590021843391751036

namespace A138333

/-- `A123588(eq[32, A059268(n)])` -/
def P14590021843391751036.Spec : Prop :=
  ∀ n, P14590021843391751036.a n = A138333 n

end A138333

/-! ## A138333.P12118143132768023756

`A123588(A000124(n+5)+4)`
-/

namespace A138333.P12118143132768023756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123588 (A000124 (n + 5) + 4).toNat

end

end A138333.P12118143132768023756

namespace A138333

/-- `A123588(A000124(n+5)+4)` -/
def P12118143132768023756.Spec : Prop :=
  ∀ n, P12118143132768023756.a n = A138333 n

end A138333

/-! ## A138333.P2096354081266659260

`A123588(A000217(n+5)+5)`
-/

namespace A138333.P2096354081266659260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123588 (A000217 (n + 5) + 5).toNat

end

end A138333.P2096354081266659260

namespace A138333

/-- `A123588(A000217(n+5)+5)` -/
def P2096354081266659260.Spec : Prop :=
  ∀ n, P2096354081266659260.a n = A138333 n

end A138333

/-!
# A138334: a(n) = C(n+11, 11)*(n+6)*(-1)^(n+1)*512/3.

The programs for A138334, the canonical program `A138334.P7170464237992104542` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A138334 has offset 0).

The definition of A138334 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A138334.P7170464237992104542

`C(n+11, 11)*(n+6)*(-1)^(n+1)*512/3`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A138334

/-- `C(n+11, 11)*(n+6)*(-1)^(n+1)*512/3` -/
def P7170464237992104542.Spec : Prop :=
  ∀ n, P7170464237992104542.a n = (A138334 n : ℚ)

end A138334

/-! ## A138334.P7885232822222894048

`A123588(A166136(n+5))`
-/

namespace A138334.P7885232822222894048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123588 (A166136 (n + 5)).toNat

end

end A138334.P7885232822222894048

namespace A138334

/-- `A123588(A166136(n+5))` -/
def P7885232822222894048.Spec : Prop :=
  ∀ n, P7885232822222894048.a n = A138334 n

end A138334

/-! ## A138334.P15004346130412911942

`A123583(A020715(n)²+12)`
-/

namespace A138334.P15004346130412911942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123583 (A020715 n ^ 2 + 12).toNat

end

end A138334.P15004346130412911942

namespace A138334

/-- `A123583(A020715(n)²+12)` -/
def P15004346130412911942.Spec : Prop :=
  ∀ n, P15004346130412911942.a n = A138334 n

end A138334

/-! ## A138334.P13949243688796848510

`A123588(A167614(n+5)+3)`
-/

namespace A138334.P13949243688796848510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123588 (A167614 (n + 5) + 3).toNat

end

end A138334.P13949243688796848510

namespace A138334

/-- `A123588(A167614(n+5)+3)` -/
def P13949243688796848510.Spec : Prop :=
  ∀ n, P13949243688796848510.a n = A138334 n

end A138334

/-! ## A138334.P15910652995545107815

`A123588(A133263(n+6)+4)`
-/

namespace A138334.P15910652995545107815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123588 (A133263 (n + 6) + 4).toNat

end

end A138334.P15910652995545107815

namespace A138334

/-- `A123588(A133263(n+6)+4)` -/
def P15910652995545107815.Spec : Prop :=
  ∀ n, P15910652995545107815.a n = A138334 n

end A138334

/-!
# A138338: Primes of the form n^2+8.

The programs for A138338, there is no canonical definition to state claims against.
-/

/-! ## A138338.P5716122553638358365

`A114271(n+1)²+8`
-/

namespace A138338.P5716122553638358365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114271 (n + 1) ^ 2 + 8

end

end A138338.P5716122553638358365

/-! ## A138338.P17636036399512918413

`A189833(A114271(n+1))`
-/

namespace A138338.P17636036399512918413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189833 (A114271 (n + 1)).toNat

end

end A138338.P17636036399512918413

/-! ## A138338.P18197032156020518947

`A117619(A114271(n+1))-A057428(n+1)`
-/

namespace A138338.P18197032156020518947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117619 (A114271 (n + 1)).toNat - A057428 (n + 1)

end

end A138338.P18197032156020518947

/-! ## A138338.P16381848047706165427

`xor(A157532(n+3), A189834(A114271(n+1)))`
-/

namespace A138338.P16381848047706165427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A157532 (n + 3)) (A189834 (A114271 (n + 1)).toNat)

end

end A138338.P16381848047706165427

/-! ## A138338.P12667363731945178787

`A027693(A114271(n+1))-A114271(A000027(n+1))`
-/

namespace A138338.P12667363731945178787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027693 (A114271 (n + 1)).toNat - A114271 (A000027 (n + 1)).toNat

end

end A138338.P12667363731945178787

/-! ## A138338.P17879058951783040593

`∩[A066649(n+1), A189833(n)]`
-/

namespace A138338.P17879058951783040593
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066649 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189833 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A138338.P17879058951783040593

/-! ## A138338.P8514176966492004640

`∩[A142105(n+1), A189833(n)]`
-/

namespace A138338.P8514176966492004640
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142105 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189833 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A138338.P8514176966492004640

/-! ## A138338.P12013196116014215157

`∩[A121243(n+1), A189833(n)]`
-/

namespace A138338.P12013196116014215157
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121243 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189833 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A138338.P12013196116014215157

/-! ## A138338.P17145965668016818253

`∩[A107181(n+1), A189833(n)]`
-/

namespace A138338.P17145965668016818253
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107181 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189833 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A138338.P17145965668016818253

/-! ## A138338.P8949750326206625075

`p?[n²+8]`
-/

namespace A138338.P8949750326206625075
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2 + 8

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A138338.P8949750326206625075

/-!
# A138340: Expansion of (1-8*x)/(1-4*x+16*x^2).

The programs for A138340, the canonical program `A138340.P1454632241236243002` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A138340 has offset 0).

The definition of A138340 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-8x)/(1-4x+16x^2))` (program `A138340.P1454632241236243002`, by `A138340.P1454632241236243002.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A138340.P1454632241236243002

`ogf((1-8x)/(1-4x+16x^2))`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A138340

/-- `ogf((1-8x)/(1-4x+16x^2))` -/
def P1454632241236243002.Spec : Prop :=
  ∀ n, P1454632241236243002.a n = A138340 n

theorem P1454632241236243002.correct : P1454632241236243002.Spec := by
  intro n
  simp only [A138340]

end A138340

/-! ## A138340.P6364204206096009085

`2*4^n*cos(π*(n+1)/3)`
-/

namespace A138340.P6364204206096009085
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (2 * 4 ^ n : ℝ) * Real.cos (Real.pi * (n + 1 : ℝ) / 3)

end

end A138340.P6364204206096009085

namespace A138340

/-- `2*4^n*cos(π*(n+1)/3)` -/
def P6364204206096009085.Spec : Prop :=
  ∀ n, P6364204206096009085.a n = (A138340 n : ℝ)

end A138340

/-! ## A138340.P930459986582559878

`4*a(n-1)-16*a(n-2)` with `a(0)=1, a(1)=-4`
-/

namespace A138340.P930459986582559878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, -4] fun n a =>
  4 * a (n - 1) - 16 * a (n - 2)

end

end A138340.P930459986582559878

namespace A138340

/-- `4*a(n-1)-16*a(n-2)` -/
def P930459986582559878.Spec : Prop :=
  ∀ n, P930459986582559878.a n = A138340 n

end A138340

/-! ## A138340.P13169645245715798711

`A128018(n)*2^n`
-/

namespace A138340.P13169645245715798711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128018 n * (2 ^ n : ℤ)

end

end A138340.P13169645245715798711

namespace A138340

/-- `A128018(n)*2^n` -/
def P13169645245715798711.Spec : Prop :=
  ∀ n, P13169645245715798711.a n = A138340 n

end A138340

/-! ## A138340.P17337527677057627843

`2^n*A128018(n)`
-/

namespace A138340.P17337527677057627843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A128018 n

end

end A138340.P17337527677057627843

namespace A138340

/-- `2^n*A128018(n)` -/
def P17337527677057627843.Spec : Prop :=
  ∀ n, P17337527677057627843.a n = A138340 n

end A138340

/-! ## A138340.P12752073241337123794

`A096252(2*(n+1))/8`
-/

namespace A138340.P12752073241337123794
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A096252 (2 * (n + 1)) : ℚ) / 8

end

end A138340.P12752073241337123794

namespace A138340

/-- `A096252(2*(n+1))/8` -/
def P12752073241337123794.Spec : Prop :=
  ∀ n, P12752073241337123794.a n = (A138340 n : ℚ)

end A138340

/-! ## A138340.P8269672891018416344

`2^n*A138230(n+1)`
-/

namespace A138340.P8269672891018416344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A138230 (n + 1)

end

end A138340.P8269672891018416344

namespace A138340

/-- `2^n*A138230(n+1)` -/
def P8269672891018416344.Spec : Prop :=
  ∀ n, P8269672891018416344.a n = A138340 n

end A138340

/-! ## A138340.P4453026148757246046

`4^n*A087204(n+1)`
-/

namespace A138340.P4453026148757246046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 ^ n : ℤ) * A087204 (n + 1)

end

end A138340.P4453026148757246046

namespace A138340

/-- `4^n*A087204(n+1)` -/
def P4453026148757246046.Spec : Prop :=
  ∀ n, P4453026148757246046.a n = A138340 n

end A138340

/-! ## A138340.P16132993912168239263

`2*a(n-1)*Δ[A004482(n)]` with `a(0)=1`
-/

namespace A138340.P16132993912168239263
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004482 n

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 * a (n - 1) * (f1 (n + 1) - f1 n)

end

end A138340.P16132993912168239263

namespace A138340

/-- `2*a(n-1)*Δ[A004482(n)]` -/
def P16132993912168239263.Spec : Prop :=
  ∀ n, P16132993912168239263.a n = A138340 n

end A138340

/-! ## A138340.P2659184812288820005

`A120617(A047267(n+1))`
-/

namespace A138340.P2659184812288820005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120617 (A047267 (n + 1)).toNat

end

end A138340.P2659184812288820005

namespace A138340

/-- `A120617(A047267(n+1))` -/
def P2659184812288820005.Spec : Prop :=
  ∀ n, P2659184812288820005.a n = A138340 n

end A138340

/-! ## A138340.P9497709508402354316

`A061347(n+1)*A262710(n)`
-/

namespace A138340.P9497709508402354316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061347 (n + 1) * A262710 n

end

end A138340.P9497709508402354316

namespace A138340

/-- `A061347(n+1)*A262710(n)` -/
def P9497709508402354316.Spec : Prop :=
  ∀ n, P9497709508402354316.a n = A138340 n

end A138340

/-! ## A138340.P9767479539069802765

`A000302(n)*A057079(n+2)`
-/

namespace A138340.P9767479539069802765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000302 n * A057079 (n + 2)

end

end A138340.P9767479539069802765

namespace A138340

/-- `A000302(n)*A057079(n+2)` -/
def P9767479539069802765.Spec : Prop :=
  ∀ n, P9767479539069802765.a n = A138340 n

end A138340

/-! ## A138340.P2821087903635264513

`(A157240(n)-1)*A000079(n)`
-/

namespace A138340.P2821087903635264513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A157240 n - 1) * A000079 n

end

end A138340.P2821087903635264513

namespace A138340

/-- `(A157240(n)-1)*A000079(n)` -/
def P2821087903635264513.Spec : Prop :=
  ∀ n, P2821087903635264513.a n = A138340 n

end A138340

/-! ## A138340.P8757184344888963199

`A033999(n)*A137717(2*n)`
-/

namespace A138340.P8757184344888963199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A137717 (2 * n)

end

end A138340.P8757184344888963199

namespace A138340

/-- `A033999(n)*A137717(2*n)` -/
def P8757184344888963199.Spec : Prop :=
  ∀ n, P8757184344888963199.a n = A138340 n

end A138340

/-! ## A138340.P11857597233233979353

`A104537(2*n)*A132954(n)`
-/

namespace A138340.P11857597233233979353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104537 (2 * n) * A132954 n

end

end A138340.P11857597233233979353

namespace A138340

/-- `A104537(2*n)*A132954(n)` -/
def P11857597233233979353.Spec : Prop :=
  ∀ n, P11857597233233979353.a n = A138340 n

end A138340

/-! ## A138340.P15551929794163907120

`A000079(n)²*A057079(n+2)`
-/

namespace A138340.P15551929794163907120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n ^ 2 * A057079 (n + 2)

end

end A138340.P15551929794163907120

namespace A138340

/-- `A000079(n)²*A057079(n+2)` -/
def P15551929794163907120.Spec : Prop :=
  ∀ n, P15551929794163907120.a n = A138340 n

end A138340

/-! ## A138340.P16866719618349125428

`A000079(2*n)*A057079(n+2)`
-/

namespace A138340.P16866719618349125428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (2 * n) * A057079 (n + 2)

end

end A138340.P16866719618349125428

namespace A138340

/-- `A000079(2*n)*A057079(n+2)` -/
def P16866719618349125428.Spec : Prop :=
  ∀ n, P16866719618349125428.a n = A138340 n

end A138340

/-! ## A138340.P4246193468121775038

`A056594(2*n)*A137717(2*n)`
-/

namespace A138340.P4246193468121775038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056594 (2 * n) * A137717 (2 * n)

end

end A138340.P4246193468121775038

namespace A138340

/-- `A056594(2*n)*A137717(2*n)` -/
def P4246193468121775038.Spec : Prop :=
  ∀ n, P4246193468121775038.a n = A138340 n

end A138340

/-! ## A138340.P10012768665560264355

`A057077(2*n)*A137717(2*n)`
-/

namespace A138340.P10012768665560264355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057077 (2 * n) * A137717 (2 * n)

end

end A138340.P10012768665560264355

namespace A138340

/-- `A057077(2*n)*A137717(2*n)` -/
def P10012768665560264355.Spec : Prop :=
  ∀ n, P10012768665560264355.a n = A138340 n

end A138340

/-! ## A138340.P6165983944084462768

`(A000225(n)+1)²*A100051(n+1)`
-/

namespace A138340.P6165983944084462768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000225 n + 1) ^ 2 * A100051 (n + 1)

end

end A138340.P6165983944084462768

namespace A138340

/-- `(A000225(n)+1)²*A100051(n+1)` -/
def P6165983944084462768.Spec : Prop :=
  ∀ n, P6165983944084462768.a n = A138340 n

end A138340

/-!
# A138341: Expansion of (1-4x-x^3)/(1-x+x^2)^2.

The programs for A138341, the canonical program `A138341.P8228141236223954592` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A138341 has offset 0).

The definition of A138341 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-4x-x^3)/(1-2x+3x^2-2x^3+x^4))` (program `A138341.P8228141236223954592`, by `A138341.P8228141236223954592.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A138341.P8228141236223954592

`ogf((1-4x-x^3)/(1-2x+3x^2-2x^3+x^4))`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A138341

/-- `ogf((1-4x-x^3)/(1-2x+3x^2-2x^3+x^4))` -/
def P8228141236223954592.Spec : Prop :=
  ∀ n, P8228141236223954592.a n = A138341 n

theorem P8228141236223954592.correct : P8228141236223954592.Spec := by
  intro n
  simp only [A138341]

end A138341

/-! ## A138341.P15542627481988342977

`2*a(n-1)-3*a(n-2)+2*a(n-3)-a(n-4)` with `a(0)=1, a(1)=-2, a(2)=-7, a(3)=-7`
-/

namespace A138341.P15542627481988342977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, -2, -7, -7] fun n a =>
  2 * a (n - 1) - 3 * a (n - 2) + 2 * a (n - 3) - a (n - 4)

end

end A138341.P15542627481988342977

namespace A138341

/-- `2*a(n-1)-3*a(n-2)+2*a(n-3)-a(n-4)` -/
def P15542627481988342977.Spec : Prop :=
  ∀ n, P15542627481988342977.a n = A138341 n

end A138341

/-! ## A138341.P10368526733693669476

`a(n-1)-round(cos((1-n)%6))*Δ[n²]` with `a(0)=1`
-/

namespace A138341.P10368526733693669476
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) - SequenceMachineLib.roundAway (Real.cos (Int.tmod (1 - (n : ℤ)) 6 : ℝ)) * ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A138341.P10368526733693669476

namespace A138341

/-- `a(n-1)-round(cos((1-n)%6))*Δ[n²]` -/
def P10368526733693669476.Spec : Prop :=
  ∀ n, P10368526733693669476.a n = A138341 n

end A138341

/-! ## A138341.P11788519344203453311

`∑[Δ[n²]*A163810(n)]`
-/

namespace A138341.P11788519344203453311
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((f2 (n + 1) : ℤ) - (f2 n : ℤ)) * A163810 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A138341.P11788519344203453311

namespace A138341

/-- `∑[Δ[n²]*A163810(n)]` -/
def P11788519344203453311.Spec : Prop :=
  ∀ n, P11788519344203453311.a n = A138341 n

end A138341

/-! ## A138341.P13594148397426431948

`∑[A106510(n)*A157142(n)]`
-/

namespace A138341.P13594148397426431948
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106510 n * A157142 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A138341.P13594148397426431948

namespace A138341

/-- `∑[A106510(n)*A157142(n)]` -/
def P13594148397426431948.Spec : Prop :=
  ∀ n, P13594148397426431948.a n = A138341 n

end A138341

/-! ## A138341.P4617347088447494857

`∑[A163810(n)-2*A100050(n)]`
-/

namespace A138341.P4617347088447494857
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163810 n - 2 * A100050 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A138341.P4617347088447494857

namespace A138341

/-- `∑[A163810(n)-2*A100050(n)]` -/
def P4617347088447494857.Spec : Prop :=
  ∀ n, P4617347088447494857.a n = A138341 n

end A138341

/-! ## A138341.P10814740721981653360

`∑[Δ[n²]*A010892(n+2)]+1`
-/

namespace A138341.P10814740721981653360
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((f2 (n + 1) : ℤ) - (f2 n : ℤ)) * A010892 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A138341.P10814740721981653360

namespace A138341

/-- `∑[Δ[n²]*A010892(n+2)]+1` -/
def P10814740721981653360.Spec : Prop :=
  ∀ n, P10814740721981653360.a n = A138341 n

end A138341

/-! ## A138341.P3573287708884194628

`∑[A005408(n)*A010892(A065475(n+1))]`
-/

namespace A138341.P3573287708884194628
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 n * A010892 (A065475 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A138341.P3573287708884194628

namespace A138341

/-- `∑[A005408(n)*A010892(A065475(n+1))]` -/
def P3573287708884194628.Spec : Prop :=
  ∀ n, P3573287708884194628.a n = A138341 n

end A138341

/-! ## A138341.P10765252580589090325

`A151912(n)/2^n`
-/

namespace A138341.P10765252580589090325
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A151912 n : ℚ) / (2 ^ n : ℚ)

end

end A138341.P10765252580589090325

namespace A138341

/-- `A151912(n)/2^n` -/
def P10765252580589090325.Spec : Prop :=
  ∀ n, P10765252580589090325.a n = (A138341 n : ℚ)

end A138341

/-! ## A138341.P5779189385684611567

`∑[(2*n+1)*A010815(A001840(n))]`
-/

namespace A138341.P5779189385684611567
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) * A010815 (A001840 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A138341.P5779189385684611567

namespace A138341

/-- `∑[(2*n+1)*A010815(A001840(n))]` -/
def P5779189385684611567.Spec : Prop :=
  ∀ n, P5779189385684611567.a n = A138341 n

end A138341

/-!
# A138342: First differences of A007088.

The programs for A138342, the canonical program `A138342.P15743762624797914969` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A138342 has offset 1).

The definition of A138342 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A138342.P15743762624797914969

`A059482(A007814(n+1))`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A138342

/-- `A059482(A007814(n+1))` -/
def P15743762624797914969.Spec : Prop :=
  ∀ n, P15743762624797914969.a n = A138342 (n + 1)

theorem P15743762624797914969.correct : P15743762624797914969.Spec := by
  intro n
  simp only [A138342, Nat.add_sub_cancel]

end A138342

/-! ## A138342.P10167826530617819173

`A007088(n+1)-A007088(n)`
-/

namespace A138342.P10167826530617819173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (n + 1) - A007088 n

end

end A138342.P10167826530617819173

namespace A138342

/-- `A007088(n+1)-A007088(n)` -/
def P10167826530617819173.Spec : Prop :=
  ∀ n, P10167826530617819173.a n = A138342 (n + 1)

end A138342

/-! ## A138342.P6966475702411514206

`Δ[A007088(n)]`
-/

namespace A138342.P6966475702411514206
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A138342.P6966475702411514206

namespace A138342

/-- `Δ[A007088(n)]` -/
def P6966475702411514206.Spec : Prop :=
  ∀ n, P6966475702411514206.a n = A138342 (n + 1)

end A138342

/-! ## A138342.P1166779088572173391

`Δ[A228071(n)]+1`
-/

namespace A138342.P1166779088572173391
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228071 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 1

end

end A138342.P1166779088572173391

namespace A138342

/-- `Δ[A228071(n)]+1` -/
def P1166779088572173391.Spec : Prop :=
  ∀ n, P1166779088572173391.a n = A138342 (n + 1)

end A138342

/-! ## A138342.P8092115582471863211

`Δ[A204093(n)/6]`
-/

namespace A138342.P8092115582471863211
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A204093 n : ℚ) / 6

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A138342.P8092115582471863211

namespace A138342

/-- `Δ[A204093(n)/6]` -/
def P8092115582471863211.Spec : Prop :=
  ∀ n, P8092115582471863211.a n = (A138342 (n + 1) : ℚ)

end A138342

/-! ## A138342.P1196102930657638748

`Δ[A204094(n)/7]`
-/

namespace A138342.P1196102930657638748
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A204094 n : ℚ) / 7

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A138342.P1196102930657638748

namespace A138342

/-- `Δ[A204094(n)/7]` -/
def P1196102930657638748.Spec : Prop :=
  ∀ n, P1196102930657638748.a n = (A138342 (n + 1) : ℚ)

end A138342

/-! ## A138342.P10736092479874179713

`Δ[A204095(n)/8]`
-/

namespace A138342.P10736092479874179713
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A204095 n : ℚ) / 8

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A138342.P10736092479874179713

namespace A138342

/-- `Δ[A204095(n)/8]` -/
def P10736092479874179713.Spec : Prop :=
  ∀ n, P10736092479874179713.a n = (A138342 (n + 1) : ℚ)

end A138342

/-! ## A138342.P5958599605498578325

`Δ[A097256(n)/9]`
-/

namespace A138342.P5958599605498578325
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A097256 n : ℚ) / 9

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A138342.P5958599605498578325

namespace A138342

/-- `Δ[A097256(n)/9]` -/
def P5958599605498578325.Spec : Prop :=
  ∀ n, P5958599605498578325.a n = (A138342 (n + 1) : ℚ)

end A138342

/-! ## A138342.P2685250326870554402

`A059482(val(n+1, 2))`
-/

namespace A138342.P2685250326870554402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059482 (SequenceMachineLib.valuation (n + 1) 2)

end

end A138342.P2685250326870554402

namespace A138342

/-- `A059482(val(n+1, 2))` -/
def P2685250326870554402.Spec : Prop :=
  ∀ n, P2685250326870554402.a n = A138342 (n + 1)

end A138342

/-! ## A138342.P13263824242943469078

`A359925(A006519(n+1))`
-/

namespace A138342.P13263824242943469078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359925 (A006519 (n + 1)).toNat

end

end A138342.P13263824242943469078

namespace A138342

/-- `A359925(A006519(n+1))` -/
def P13263824242943469078.Spec : Prop :=
  ∀ n, P13263824242943469078.a n = A138342 (n + 1)

end A138342

/-! ## A138342.P5880265051455810339

`record[A007088(A344180(n))]-A007088(n)`
-/

namespace A138342.P5880265051455810339
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A344180 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A007088 n

end

end A138342.P5880265051455810339

namespace A138342

/-- `record[A007088(A344180(n))]-A007088(n)` -/
def P5880265051455810339.Spec : Prop :=
  ∀ n, P5880265051455810339.a n = A138342 (n + 1)

end A138342

/-! ## A138342.P7037772330051291898

`Δ[sqrt(A063009(n))]`
-/

namespace A138342.P7037772330051291898
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A063009 n : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A138342.P7037772330051291898

namespace A138342

/-- `Δ[sqrt(A063009(n))]` -/
def P7037772330051291898.Spec : Prop :=
  ∀ n, P7037772330051291898.a n = (A138342 (n + 1) : ℝ)

end A138342

/-! ## A138342.P6280769197956072444

`Δ[A269130(n)]-1`
-/

namespace A138342.P6280769197956072444
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269130 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 1

end

end A138342.P6280769197956072444

namespace A138342

/-- `Δ[A269130(n)]-1` -/
def P6280769197956072444.Spec : Prop :=
  ∀ n, P6280769197956072444.a n = A138342 (n + 1)

end A138342

/-! ## A138342.P12371213669186957016

`Δ[A099820(n)/10]`
-/

namespace A138342.P12371213669186957016
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A099820 n : ℚ) / 10

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A138342.P12371213669186957016

namespace A138342

/-- `Δ[A099820(n)/10]` -/
def P12371213669186957016.Spec : Prop :=
  ∀ n, P12371213669186957016.a n = (A138342 (n + 1) : ℚ)

end A138342

/-! ## A138342.P10187386736599182025

`Δ[A169965(n+1)/2]`
-/

namespace A138342.P10187386736599182025
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A169965 (n + 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A138342.P10187386736599182025

namespace A138342

/-- `Δ[A169965(n+1)/2]` -/
def P10187386736599182025.Spec : Prop :=
  ∀ n, P10187386736599182025.a n = (A138342 (n + 1) : ℚ)

end A138342

/-! ## A138342.P6005329383338760669

`Δ[A169966(n+1)/3]`
-/

namespace A138342.P6005329383338760669
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A169966 (n + 1) : ℚ) / 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A138342.P6005329383338760669

namespace A138342

/-- `Δ[A169966(n+1)/3]` -/
def P6005329383338760669.Spec : Prop :=
  ∀ n, P6005329383338760669.a n = (A138342 (n + 1) : ℚ)

end A138342

/-! ## A138342.P13956646428730344329

`Δ[A169967(n+1)/4]`
-/

namespace A138342.P13956646428730344329
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A169967 (n + 1) : ℚ) / 4

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A138342.P13956646428730344329

namespace A138342

/-- `Δ[A169967(n+1)/4]` -/
def P13956646428730344329.Spec : Prop :=
  ∀ n, P13956646428730344329.a n = (A138342 (n + 1) : ℚ)

end A138342

/-! ## A138342.P17470087124367261624

`Δ[A169964(n+1)/5]`
-/

namespace A138342.P17470087124367261624
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A169964 (n + 1) : ℚ) / 5

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A138342.P17470087124367261624

namespace A138342

/-- `Δ[A169964(n+1)/5]` -/
def P17470087124367261624.Spec : Prop :=
  ∀ n, P17470087124367261624.a n = (A138342 (n + 1) : ℚ)

end A138342

/-! ## A138342.P2788141204333739399

`Δ[A169964(n+1)-A169967(n+1)]`
-/

namespace A138342.P2788141204333739399
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169964 (n + 1) - A169967 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A138342.P2788141204333739399

namespace A138342

/-- `Δ[A169964(n+1)-A169967(n+1)]` -/
def P2788141204333739399.Spec : Prop :=
  ∀ n, P2788141204333739399.a n = A138342 (n + 1)

end A138342

/-! ## A138342.P10480818140158157829

`Δ[A185544(2*n)]`
-/

namespace A138342.P10480818140158157829
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A138342.P10480818140158157829

namespace A138342

/-- `Δ[A185544(2*n)]` -/
def P10480818140158157829.Spec : Prop :=
  ∀ n, P10480818140158157829.a n = A138342 (n + 1)

end A138342

/-!
# A138344: Absolute values of first differences of A049541.

The programs for A138344, there is no canonical definition to state claims against.
-/

/-! ## A138344.P13298462792931238565

`abs(A049541(n+1)-A049541(n))`
-/

namespace A138344.P13298462792931238565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A049541 (n + 1) - A049541 n|

end

end A138344.P13298462792931238565

/-! ## A138344.P8849223996284360967

`abs(Δ[A049541(n)])`
-/

namespace A138344.P8849223996284360967
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049541 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A138344.P8849223996284360967

/-! ## A138344.P15443742145205324029

`A000194(Δ[A049541(n)]²)`
-/

namespace A138344.P15443742145205324029
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049541 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 ((f1 (n + 1) - f1 n) ^ 2).toNat

end

end A138344.P15443742145205324029

/-! ## A138344.P10195778660759667480

`A000196(Δ[A049541(n)]²)`
-/

namespace A138344.P10195778660759667480
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049541 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 ((f1 (n + 1) - f1 n) ^ 2).toNat

end

end A138344.P10195778660759667480

/-! ## A138344.P14478266739733583337

`A007966(Δ[A049541(n)]²)`
-/

namespace A138344.P14478266739733583337
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049541 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007966 ((f1 (n + 1) - f1 n) ^ 2).toNat

end

end A138344.P14478266739733583337

/-! ## A138344.P6076621103681255500

`A007967(Δ[A049541(n)]²)`
-/

namespace A138344.P6076621103681255500
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049541 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007967 ((f1 (n + 1) - f1 n) ^ 2).toNat

end

end A138344.P6076621103681255500

/-! ## A138344.P15497487863334157101

`A037213(Δ[A049541(n)]²)`
-/

namespace A138344.P15497487863334157101
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049541 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037213 ((f1 (n + 1) - f1 n) ^ 2).toNat

end

end A138344.P15497487863334157101

/-! ## A138344.P8971574447555135498

`A067693(Δ[A049541(n)]²)`
-/

namespace A138344.P8971574447555135498
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049541 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067693 ((f1 (n + 1) - f1 n) ^ 2).toNat

end

end A138344.P8971574447555135498

/-! ## A138344.P5041324153481113607

`A322832(Δ[A049541(n)]²)`
-/

namespace A138344.P5041324153481113607
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049541 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322832 ((f1 (n + 1) - f1 n) ^ 2).toNat

end

end A138344.P5041324153481113607

/-! ## A138344.P8867336141033508253

`gcd(Δ[A049541(n)], A000038(n))`
-/

namespace A138344.P8867336141033508253
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049541 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (f1 (n + 1) - f1 n) (A000038 n)

end

end A138344.P8867336141033508253

/-! ## A138344.P10146501274668283473

`∑{d}[Δ[A049541(n)], A000010(#)]`
-/

namespace A138344.P10146501274668283473
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049541 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A138344.P10146501274668283473

/-! ## A138344.P2900098463739483092

`lcm(Δ[A049541(n)], A071935(n+1))`
-/

namespace A138344.P2900098463739483092
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049541 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (f1 (n + 1) - f1 n) (A071935 (n + 1))

end

end A138344.P2900098463739483092

/-! ## A138344.P9461445911115517374

`dr(Δ[A049541(n)]%A001283(n+2))`
-/

namespace A138344.P9461445911115517374
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049541 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (Int.tmod (f1 (n + 1) - f1 n) (A001283 (n + 2)))

end

end A138344.P9461445911115517374

/-! ## A138344.P7660277028504191128

`dr(A049541(n+1)-A049541(n%(n+1)))`
-/

namespace A138344.P7660277028504191128
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A049541 (n + 1) - A049541 (n % (n + 1)))

end

end A138344.P7660277028504191128

/-! ## A138344.P12873326446621458120

`abs(Δ[A188340(n)])`
-/

namespace A138344.P12873326446621458120
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188340 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A138344.P12873326446621458120

/-! ## A138344.P4665719153178284329

`∑{d}[Δ[A188340(n)], A000010(#)]`
-/

namespace A138344.P4665719153178284329
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188340 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A138344.P4665719153178284329

/-! ## A138344.P302512267802610002

`abs(A188340(n+1)-A188340(n))`
-/

namespace A138344.P302512267802610002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A188340 (n + 1) - A188340 n|

end

end A138344.P302512267802610002

/-! ## A138344.P13179092363229691205

`(A049541(n+1)-A049541(n))*A138345(n+1)`
-/

namespace A138344.P13179092363229691205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A049541 (n + 1) - A049541 n) * A138345 (n + 1)

end

end A138344.P13179092363229691205

/-!
# A138345: a(n) = -1 if (n+1)-st decimal digit of 1/Pi is smaller than n-th digit of 1/Pi, 0 if they are equal, 1 if larger.

The programs for A138345, there is no canonical definition to state claims against.
-/

/-! ## A138345.P5807582626853783098

`round(atan(Δ[A049541(n)]))`
-/

namespace A138345.P5807582626853783098
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049541 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.arctan (f1 (n + 1) - f1 n : ℝ))

end

end A138345.P5807582626853783098

/-! ## A138345.P15265854341708270554

`round(atan(A049541(n+1)-A049541(n)))`
-/

namespace A138345.P15265854341708270554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.arctan (A049541 (n + 1) - A049541 n : ℝ))

end

end A138345.P15265854341708270554

/-! ## A138345.P9845794375444093515

`round(-atan(A188340(n+1)-A188340(n)))`
-/

namespace A138345.P9845794375444093515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (-Real.arctan (A188340 (n + 1) - A188340 n : ℝ))

end

end A138345.P9845794375444093515

/-!
# A138346: Second smallest m such that (2^n)! + m is a prime.

The programs for A138346, there is no canonical definition to state claims against.
-/

/-! ## A138346.P13067432031104266221

`gcd(C(2, n+1), A087202(2^n))`
-/

namespace A138346.P13067432031104266221
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (Nat.choose 2 (n + 1) : ℤ) (A087202 (2 ^ n))

end

end A138346.P13067432031104266221

/-!
# A138348: Lesser of twin primes such that both twin primes have no bases b, 1 < b < p-1, in which p is a palindrome.

The programs for A138348, there is no canonical definition to state claims against.
-/

/-! ## A138348.P8272880630686096708

`A138329(Δ[n²])`
-/

namespace A138348.P8272880630686096708
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138329 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A138348.P8272880630686096708

/-! ## A138348.P15137254931053517390

`record[A138329(n^(n%2))]`
-/

namespace A138348.P15137254931053517390
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138329 (n ^ (n % 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A138348.P15137254931053517390

/-! ## A138348.P4653545608641403472

`or(1, A138329(2*n+1))`
-/

namespace A138348.P4653545608641403472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A138329 (2 * n + 1))

end

end A138348.P4653545608641403472

/-! ## A138348.P16217713523283214073

`p?[A138329(n+1)+2]-2`
-/

namespace A138348.P16217713523283214073
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138329 (n + 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - 2

end

end A138348.P16217713523283214073

/-! ## A138348.P8760659912627527648

`∩[A087693(n), A138329(n+1)]`
-/

namespace A138348.P8760659912627527648
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087693 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138329 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A138348.P8760659912627527648

/-!
# A138349: Moment sequence of tr(A) in USp(4).

The programs for A138349, the canonical program `A138349.P13572013119910435224` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A138349 has offset 0).

The definition of A138349 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A126120, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A138349.P13572013119910435224

`A126120(n)*A126120(n+4)-A126120(n+2)²`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A138349

/-- `A126120(n)*A126120(n+4)-A126120(n+2)²` -/
def P13572013119910435224.Spec : Prop :=
  ∀ n, P13572013119910435224.a n = A138349 n

theorem P13572013119910435224.correct : P13572013119910435224.Spec := by
  intro n
  simp only [A138349]

end A138349

/-! ## A138349.P10354687171018509708

`A005700(A142150(n))-A000035(n)`
-/

namespace A138349.P10354687171018509708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005700 (A142150 n).toNat - A000035 n

end

end A138349.P10354687171018509708

namespace A138349

/-- `A005700(A142150(n))-A000035(n)` -/
def P10354687171018509708.Spec : Prop :=
  ∀ n, P10354687171018509708.a n = A138349 n

end A138349

/-! ## A138349.P1689971599992353481

`A005700(A004526(n))*A059841(n)`
-/

namespace A138349.P1689971599992353481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005700 (A004526 n).toNat * A059841 n

end

end A138349.P1689971599992353481

namespace A138349

/-- `A005700(A004526(n))*A059841(n)` -/
def P1689971599992353481.Spec : Prop :=
  ∀ n, P1689971599992353481.a n = A138349 n

end A138349

/-! ## A138349.P12365579668288184820

`A005700(A142150(n))*A059841(n)`
-/

namespace A138349.P12365579668288184820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005700 (A142150 n).toNat * A059841 n

end

end A138349.P12365579668288184820

namespace A138349

/-- `A005700(A142150(n))*A059841(n)` -/
def P12365579668288184820.Spec : Prop :=
  ∀ n, P12365579668288184820.a n = A138349 n

end A138349

/-! ## A138349.P3185066996234642926

`lcm(A005700(A004526(n)), A056594(n))`
-/

namespace A138349.P3185066996234642926
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A005700 (A004526 n).toNat) (A056594 n)

end

end A138349.P3185066996234642926

namespace A138349

/-- `lcm(A005700(A004526(n)), A056594(n))` -/
def P3185066996234642926.Spec : Prop :=
  ∀ n, (P3185066996234642926.a n : ℤ) = A138349 n

end A138349

/-! ## A138349.P6024967281071450729

`Δ[ratio[A005817(n)]]*A005817(n)`
-/

namespace A138349.P6024967281071450729
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005817 n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℚ) / (f2 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * (A005817 n : ℚ)

end

end A138349.P6024967281071450729

namespace A138349

/-- `Δ[ratio[A005817(n)]]*A005817(n)` -/
def P6024967281071450729.Spec : Prop :=
  ∀ n, P6024967281071450729.a n = (A138349 n : ℚ)

end A138349

/-!
# A138350: Moment sequence of tr(A^2) in USp(4).

The programs for A138350, the canonical program `A138350.P14922345514326361988` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A138350 has offset 0).

The definition of A138350 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A126120, A138364, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A138350.P14922345514326361988

`A126120(n)*A138364(n+1)-A138364(n)*A126120(n+1)`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A138350

/-- `A126120(n)*A138364(n+1)-A138364(n)*A126120(n+1)` -/
def P14922345514326361988.Spec : Prop :=
  ∀ n, P14922345514326361988.a n = A138350 n

theorem P14922345514326361988.correct : P14922345514326361988.Spec := by
  intro n
  simp only [A138350]

end A138350

/-! ## A138350.P8927389923228421988

`A133815(∑[n+3])`
-/

namespace A138350.P8927389923228421988
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133815 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A138350.P8927389923228421988

namespace A138350

/-- `A133815(∑[n+3])` -/
def P8927389923228421988.Spec : Prop :=
  ∀ n, P8927389923228421988.a n = A138350 n

end A138350

/-! ## A138350.P11806176536787304838

`(-1)^n*A005558(n)`
-/

namespace A138350.P11806176536787304838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A005558 n

end

end A138350.P11806176536787304838

namespace A138350

/-- `(-1)^n*A005558(n)` -/
def P11806176536787304838.Spec : Prop :=
  ∀ n, P11806176536787304838.a n = A138350 n

end A138350

/-! ## A138350.P13401356909402697924

`(-1)^n*A052174(∑[n])`
-/

namespace A138350.P13401356909402697924
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A052174 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A138350.P13401356909402697924

namespace A138350

/-- `(-1)^n*A052174(∑[n])` -/
def P13401356909402697924.Spec : Prop :=
  ∀ n, P13401356909402697924.a n = A138350 n

end A138350

/-! ## A138350.P8559545346605878036

`A005558(n-char[1])/(-1)^n`
-/

namespace A138350.P8559545346605878036
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005558 (n - (if ∃ j, f1 j = n then 1 else 0)) : ℚ) / ((-1) ^ n : ℚ)

end

end A138350.P8559545346605878036

namespace A138350

/-- `A005558(n-char[1])/(-1)^n` -/
def P8559545346605878036.Spec : Prop :=
  ∀ n, P8559545346605878036.a n = (A138350 n : ℚ)

end A138350

/-!
# A138351: Central moment sequence of tr(A^2) in USp(4).

The programs for A138351, the canonical program `A138351.P8934172581703761651` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A138351 has offset 0).

The definition of A138351 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A138350, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A138351.P8934172581703761651

`∑{#}[n, C(n, #)*A138350(#)]`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A138351

/-- `∑{#}[n, C(n, #)*A138350(#)]` -/
def P8934172581703761651.Spec : Prop :=
  ∀ n, P8934172581703761651.a n = A138351 n

theorem P8934172581703761651.correct : P8934172581703761651.Spec := by
  intro n
  simp only [A138351]

end A138351

/-! ## A138351.P1778234990673772561

`2*A302183(n)-A145847(n)`
-/

namespace A138351.P1778234990673772561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A302183 n - A145847 n

end

end A138351.P1778234990673772561

namespace A138351

/-- `2*A302183(n)-A145847(n)` -/
def P1778234990673772561.Spec : Prop :=
  ∀ n, P1778234990673772561.a n = A138351 n

end A138351

/-!
# A138352: Table read by antidiagonals: T(n,k) is the number of transitive directed multigraphs with loops with n arcs and k vertices.

The programs for A138352, there is no canonical definition to state claims against.
-/

/-! ## A138352.P11130862243275872097

`A065039(A277239(n))`
-/

namespace A138352.P11130862243275872097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065039 (A277239 n).toNat

end

end A138352.P11130862243275872097

/-! ## A138352.P64318605538550918

`A010784(A277239(n)+1)`
-/

namespace A138352.P64318605538550918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010784 (A277239 n + 1).toNat

end

end A138352.P64318605538550918

/-! ## A138352.P2854131274601820481

`A023805(A277239(n)+1)`
-/

namespace A138352.P2854131274601820481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023805 (A277239 n + 1).toNat

end

end A138352.P2854131274601820481

/-! ## A138352.P1070025028746789100

`A023806(A277239(n)+1)`
-/

namespace A138352.P1070025028746789100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023806 (A277239 n + 1).toNat

end

end A138352.P1070025028746789100

/-! ## A138352.P13996893934730974453

`A063742(A277239(n)+1)`
-/

namespace A138352.P13996893934730974453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063742 (A277239 n + 1).toNat

end

end A138352.P13996893934730974453

/-!
# A138353: Primes of the form k^2 + 9.

The programs for A138353, there is no canonical definition to state claims against.
-/

/-! ## A138353.P11579825578504996428

`(2*A002970(n+1))²+9`
-/

namespace A138353.P11579825578504996428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * A002970 (n + 1)) ^ 2 + 9

end

end A138353.P11579825578504996428

/-! ## A138353.P6082109690490398043

`A005843(A002970(n+1))²+9`
-/

namespace A138353.P6082109690490398043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A002970 (n + 1)).toNat ^ 2 + 9

end

end A138353.P6082109690490398043

/-! ## A138353.P3204694902399917354

`A189834(A114272(n+1))`
-/

namespace A138353.P3204694902399917354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189834 (A114272 (n + 1)).toNat

end

end A138353.P3204694902399917354

/-! ## A138353.P2756764667169670336

`A189834(2*A002970(n+1))`
-/

namespace A138353.P2756764667169670336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189834 (2 * A002970 (n + 1)).toNat

end

end A138353.P2756764667169670336

/-! ## A138353.P5341717148995211411

`A241749(2*A002970(n+1))-4`
-/

namespace A138353.P5341717148995211411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241749 (2 * A002970 (n + 1)).toNat - 4

end

end A138353.P5341717148995211411

/-! ## A138353.P18137832907431918957

`p?[n²+9]`
-/

namespace A138353.P18137832907431918957
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2 + 9

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A138353.P18137832907431918957

/-!
# A138354: Central moment sequence of tr(A^4) in USp(4).

The programs for A138354, the canonical program `A138354.P7330514430290575171` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A138354 has offset 0).

The definition of A138354 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A201805, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A138354.P7330514430290575171

`(5*A201805(n)-A201805(n+1))/4`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A138354

/-- `(5*A201805(n)-A201805(n+1))/4` -/
def P7330514430290575171.Spec : Prop :=
  ∀ n, P7330514430290575171.a n = (A138354 n : ℚ)

end A138354

/-! ## A138354.P11320955478291389325

`2*A201805(n)-A150500(n)`
-/

namespace A138354.P11320955478291389325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A201805 n - A150500 n

end

end A138354.P11320955478291389325

namespace A138354

/-- `2*A201805(n)-A150500(n)` -/
def P11320955478291389325.Spec : Prop :=
  ∀ n, P11320955478291389325.a n = A138354 n

end A138354

/-!
# A138355: Primes of the form k^2 + 10.

The programs for A138355, there is no canonical definition to state claims against.
-/

/-! ## A138355.P10075604915013773428

`A114273(n+1)²+10`
-/

namespace A138355.P10075604915013773428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114273 (n + 1) ^ 2 + 10

end

end A138355.P10075604915013773428

/-! ## A138355.P2717990073428240749

`A114948(A114273(n+1))`
-/

namespace A138355.P2717990073428240749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114948 (A114273 (n + 1)).toNat

end

end A138355.P2717990073428240749

/-! ## A138355.P5370883070827067931

`A189836(A114273(n+1))-A019426(A212595(n))`
-/

namespace A138355.P5370883070827067931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189836 (A114273 (n + 1)).toNat - A019426 (A212595 (n + 10)).toNat

end

end A138355.P5370883070827067931

/-! ## A138355.P13242815417321945198

`A189836(A114273(n+1))-A247339(A005408(n))`
-/

namespace A138355.P13242815417321945198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189836 (A114273 (n + 1)).toNat - A247339 (A005408 n).toNat

end

end A138355.P13242815417321945198

/-! ## A138355.P969861165815121411

`A189834(A114273(n+1))+A001222(A198273(n+1))`
-/

namespace A138355.P969861165815121411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189834 (A114273 (n + 1)).toNat + A001222 (A198273 (n + 1)).toNat

end

end A138355.P969861165815121411

/-! ## A138355.P14200014155651779598

`A189836(A114273(n+1))-A028920(A049422(n+1))`
-/

namespace A138355.P14200014155651779598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189836 (A114273 (n + 1)).toNat - A028920 (A049422 (n + 1)).toNat

end

end A138355.P14200014155651779598

/-! ## A138355.P16727118366706658504

`A189836(A114273(n+1))-A028920(A339873(n+2))`
-/

namespace A138355.P16727118366706658504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189836 (A114273 (n + 1)).toNat - A028920 (A339873 (n + 2)).toNat

end

end A138355.P16727118366706658504

/-! ## A138355.P12598000723539686589

`A189836(A114273(n+1))-A056926(A002522(n))`
-/

namespace A138355.P12598000723539686589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189836 (A114273 (n + 1)).toNat - A056926 (A002522 n).toNat

end

end A138355.P12598000723539686589

/-! ## A138355.P1594199257020646578

`A189836(A114273(n+1))-A056926(A028884(n))`
-/

namespace A138355.P1594199257020646578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189836 (A114273 (n + 1)).toNat - A056926 (A028884 n).toNat

end

end A138355.P1594199257020646578

/-! ## A138355.P2068276387291210106

`p?[n²+10]`
-/

namespace A138355.P2068276387291210106
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2 + 10

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A138355.P2068276387291210106

/-!
# A138356: Moment sequence of t^2 coefficient in det(tI-A) for random matrix A in USp(4).

The programs for A138356, there is no canonical definition to state claims against.
-/

/-! ## A138356.P2756942381545715644

`A005843(A000085(n))-A005817(n)`
-/

namespace A138356.P2756942381545715644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A000085 n).toNat - A005817 n

end

end A138356.P2756942381545715644

/-! ## A138356.P9215663065368196900

`A247971(A148196(n))`
-/

namespace A138356.P9215663065368196900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247971 (A148196 n).toNat

end

end A138356.P9215663065368196900

/-! ## A138356.P13437976656155937663

`A034973(A200539(n)+(n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1])`
-/

namespace A138356.P13437976656155937663
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034973 (SequenceMachineLib.roundAway ((A200539 n : ℚ) + (n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ) * ((∏ p ∈ Nat.primeFactors (f2 n), ((p : ℤ) - 1) : ℤ) : ℚ))).toNat

end

end A138356.P13437976656155937663

/-! ## A138356.P16988896099634431649

`A024417(A319564(n)+A148497(n))`
-/

namespace A138356.P16988896099634431649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024417 (A319564 n + A148497 n).toNat

end

end A138356.P16988896099634431649

/-!
# A138357: Floor of sum of the first n^2 square roots.

The programs for A138357, there is no canonical definition to state claims against.
-/

/-! ## A138357.P6934388874355078722

`A025224(n²)`
-/

namespace A138357.P6934388874355078722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025224 (n ^ 2)

end

end A138357.P6934388874355078722

/-! ## A138357.P5182283718484982980

`floor(sqrt(A338277(n²)))`
-/

namespace A138357.P5182283718484982980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A338277 (n ^ 2))

end

end A138357.P5182283718484982980

/-! ## A138357.P17410556811836506307

`floor(A002817(2*n)/(3*(n+1)))`
-/

namespace A138357.P17410556811836506307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A002817 (2 * n) : ℚ) / (3 * (n + 1) : ℚ)⌋

end

end A138357.P17410556811836506307

/-! ## A138357.P9443699332093733024

`A005900(n)+∑[char[6*(n+1)+2]]`
-/

namespace A138357.P9443699332093733024
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 * (n + 1) + 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005900 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A138357.P9443699332093733024

/-! ## A138357.P12479539522319376265

`record[A025224(round(lcm(n+1, 1-n)/4))]`
-/

namespace A138357.P12479539522319376265
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025224 (SequenceMachineLib.roundAway ((Int.lcm (n + 1 : ℤ) (1 - (n : ℤ)) : ℚ) / 4)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A138357.P12479539522319376265

/-!
# A138361: First differences of A068985.

The programs for A138361, there is no canonical definition to state claims against.
-/

/-! ## A138361.P822116189473485963

`Δ[A068985(n)]`
-/

namespace A138361.P822116189473485963
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068985 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A138361.P822116189473485963

/-! ## A138361.P9753672594983377790

`A068985(n+1)-A068985(n)`
-/

namespace A138361.P9753672594983377790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068985 (n + 1) - A068985 n

end

end A138361.P9753672594983377790

/-! ## A138361.P1441222492462648275

`Δ[-A068996(n)]`
-/

namespace A138361.P1441222492462648275
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A068996 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A138361.P1441222492462648275

/-! ## A138361.P6014642904190491871

`A068996(n)-A068996(n+1)`
-/

namespace A138361.P6014642904190491871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068996 n - A068996 (n + 1)

end

end A138361.P6014642904190491871

/-! ## A138361.P6808751607763190944

`Δ[n*A000007(n)-A068996(n)]`
-/

namespace A138361.P6808751607763190944
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A000007 n - A068996 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A138361.P6808751607763190944

/-! ## A138361.P12958620527053206155

`Δ[A000007(A008619(n))-A068996(n)]`
-/

namespace A138361.P12958620527053206155
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A008619 n).toNat - A068996 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A138361.P12958620527053206155

/-! ## A138361.P10794669661169132275

`A000007(A008486(n))-Δ[A068996(n)]`
-/

namespace A138361.P10794669661169132275
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068996 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A008486 n).toNat - (f1 (n + 1) - f1 n)

end

end A138361.P10794669661169132275

/-! ## A138361.P5842973830725987032

`Δ[A095712(2*(n+1)²)]`
-/

namespace A138361.P5842973830725987032
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095712 (2 * (n + 1) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A138361.P5842973830725987032

/-!
# A138362: Primes of the form k^2 + 11.

The programs for A138362, there is no canonical definition to state claims against.
-/

/-! ## A138362.P9875001272205781353

`A114274(n+1)²+11`
-/

namespace A138362.P9875001272205781353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114274 (n + 1) ^ 2 + 11

end

end A138362.P9875001272205781353

/-! ## A138362.P14906969622349189691

`A189836(A114274(n+1))`
-/

namespace A138362.P14906969622349189691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189836 (A114274 (n + 1)).toNat

end

end A138362.P14906969622349189691

/-! ## A138362.P632674006891943372

`A048058(A114274(n+1))-A114274(A000027(n+1))`
-/

namespace A138362.P632674006891943372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048058 (A114274 (n + 1)).toNat - A114274 (A000027 (n + 1)).toNat

end

end A138362.P632674006891943372

/-! ## A138362.P3965136603977832040

`∩[A107149(n+1), A189836(n)]`
-/

namespace A138362.P3965136603977832040
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107149 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189836 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A138362.P3965136603977832040

/-! ## A138362.P11432965632751722792

`∩[A107216(n+1), A189836(n)]`
-/

namespace A138362.P11432965632751722792
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107216 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189836 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A138362.P11432965632751722792

/-! ## A138362.P7795939041363820674

`∩[A142103(n+1), A189836(n)]`
-/

namespace A138362.P7795939041363820674
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142103 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189836 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A138362.P7795939041363820674

/-!
# A138363: Number of prime powers p^e with e>1 and 0<prime(n)-p^e<p.

The programs for A138363, there is no canonical definition to state claims against.
-/

/-! ## A138363.P14597670233773284417

`val(A227975(n+1)%A288380(n), 5)`
-/

namespace A138363.P14597670233773284417
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (Int.tmod (A227975 (n + 1)) (A288380 n)).toNat 5

end

end A138363.P14597670233773284417

/-! ## A138363.P8107337235279390096

`and(A326918(n), A351720(A299844(n+1)))`
-/

namespace A138363.P8107337235279390096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A326918 n) (A351720 (A299844 (n + 1)).toNat)

end

end A138363.P8107337235279390096

/-! ## A138363.P7783748724445629920

`C(A179759(n+1), A179766(A161180(n+1)))`
-/

namespace A138363.P7783748724445629920
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A179759 (n + 1)).toNat (A179766 (A161180 (n + 1)).toNat).toNat

end

end A138363.P7783748724445629920

/-! ## A138363.P2198287738195306633

`A000070(2*n+1)%A358235(A277014(2*n+1))`
-/

namespace A138363.P2198287738195306633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000070 (2 * n + 1)) (A358235 (A277014 (2 * n + 1)).toNat)

end

end A138363.P2198287738195306633

/-! ## A138363.P2764189331261596719

`val(A039780(n+1), A096502(A338086(n)))`
-/

namespace A138363.P2764189331261596719
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A039780 (n + 1)).toNat (A096502 (A338086 n).toNat).toNat

end

end A138363.P2764189331261596719

/-!
# A138364: The number of Motzkin n-paths with exactly one flat step.

The programs for A138364, the canonical program `A138364.P9887947875911683220` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A138364 has offset 0).

The definition of A138364 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 337 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A138364.P2502117202721915483

`4/(1/n+1)*a(n-2)` with `a(0)=0, a(1)=1`
-/

namespace A138364.P2502117202721915483
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0, 1] fun n a =>
  4 / (1 / (n : ℚ) + 1) * a (n - 2)

end

end A138364.P2502117202721915483

namespace A138364

/-- `4/(1/n+1)*a(n-2)` -/
def P2502117202721915483.Spec : Prop :=
  ∀ n, P2502117202721915483.a n = (A138364 n : ℚ)

end A138364

/-! ## A138364.P2437265469937492926

`a(n-2)/∑[2*n]*(2*n)²` with `a(0)=0, a(1)=1`
-/

namespace A138364.P2437265469937492926
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℚ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (n - 2) / ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) * ((2 * n) ^ 2 : ℚ)

end

end A138364.P2437265469937492926

namespace A138364

/-- `a(n-2)/∑[2*n]*(2*n)²` -/
def P2437265469937492926.Spec : Prop :=
  ∀ n, P2437265469937492926.a n = (A138364 n : ℚ)

end A138364

/-! ## A138364.P9887947875911683220

`n*A097331(n)`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A138364

/-- `n*A097331(n)` -/
def P9887947875911683220.Spec : Prop :=
  ∀ n, P9887947875911683220.a n = A138364 n

theorem P9887947875911683220.correct : P9887947875911683220.Spec := by
  intro n
  simp only [A138364]

end A138364

/-! ## A138364.P297647309015467841

`abs(n*A090192(n))`
-/

namespace A138364.P297647309015467841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n : ℤ) * A090192 n|

end

end A138364.P297647309015467841

namespace A138364

/-- `abs(n*A090192(n))` -/
def P297647309015467841.Spec : Prop :=
  ∀ n, P297647309015467841.a n = A138364 n

end A138364

/-! ## A138364.P15721360979487012896

`abs(n*A105523(n))`
-/

namespace A138364.P15721360979487012896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n : ℤ) * A105523 n|

end

end A138364.P15721360979487012896

namespace A138364

/-- `abs(n*A105523(n))` -/
def P15721360979487012896.Spec : Prop :=
  ∀ n, P15721360979487012896.a n = A138364 n

end A138364

/-! ## A138364.P2591379041665691393

`abs(n*A210628(n))`
-/

namespace A138364.P2591379041665691393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n : ℤ) * A210628 n|

end

end A138364.P2591379041665691393

namespace A138364

/-- `abs(n*A210628(n))` -/
def P2591379041665691393.Spec : Prop :=
  ∀ n, P2591379041665691393.a n = A138364 n

end A138364

/-! ## A138364.P3432930758992160036

`A126869(n+1)/2`
-/

namespace A138364.P3432930758992160036
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A126869 (n + 1) : ℚ) / 2

end

end A138364.P3432930758992160036

namespace A138364

/-- `A126869(n+1)/2` -/
def P3432930758992160036.Spec : Prop :=
  ∀ n, P3432930758992160036.a n = (A138364 n : ℚ)

end A138364

/-! ## A138364.P17966627127421638900

`A037952(lcm(2, n)-n)`
-/

namespace A138364.P17966627127421638900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037952 (Nat.lcm 2 n - n)

end

end A138364.P17966627127421638900

namespace A138364

/-- `A037952(lcm(2, n)-n)` -/
def P17966627127421638900.Spec : Prop :=
  ∀ n, P17966627127421638900.a n = A138364 n

end A138364

/-! ## A138364.P15380112722020994726

`and(1, n)*A001405(n)`
-/

namespace A138364.P15380112722020994726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.land 1 n : ℤ) * A001405 n

end

end A138364.P15380112722020994726

namespace A138364

/-- `and(1, n)*A001405(n)` -/
def P15380112722020994726.Spec : Prop :=
  ∀ n, P15380112722020994726.a n = A138364 n

end A138364

/-! ## A138364.P4434316424847486971

`and(1, n)*A037952(n)`
-/

namespace A138364.P4434316424847486971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.land 1 n : ℤ) * A037952 n

end

end A138364.P4434316424847486971

namespace A138364

/-- `and(1, n)*A037952(n)` -/
def P4434316424847486971.Spec : Prop :=
  ∀ n, P4434316424847486971.a n = A138364 n

end A138364

/-! ## A138364.P1566203657172750278

`n*A126120(xor(1, n))`
-/

namespace A138364.P1566203657172750278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A126120 (Nat.xor 1 n)

end

end A138364.P1566203657172750278

namespace A138364

/-- `n*A126120(xor(1, n))` -/
def P1566203657172750278.Spec : Prop :=
  ∀ n, P1566203657172750278.a n = A138364 n

end A138364

/-! ## A138364.P17858001943437657507

`A037952(C(n, xor(1, n)))`
-/

namespace A138364.P17858001943437657507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037952 (Nat.choose n (Nat.xor 1 n))

end

end A138364.P17858001943437657507

namespace A138364

/-- `A037952(C(n, xor(1, n)))` -/
def P17858001943437657507.Spec : Prop :=
  ∀ n, P17858001943437657507.a n = A138364 n

end A138364

/-! ## A138364.P13061609592860151330

`Δ[A100066(n+1)/2]`
-/

namespace A138364.P13061609592860151330
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A100066 (n + 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A138364.P13061609592860151330

namespace A138364

/-- `Δ[A100066(n+1)/2]` -/
def P13061609592860151330.Spec : Prop :=
  ∀ n, P13061609592860151330.a n = (A138364 n : ℚ)

end A138364

/-! ## A138364.P7582461826134303957

`and(1, n)*A210736(n+1)`
-/

namespace A138364.P7582461826134303957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.land 1 n : ℤ) * A210736 (n + 1)

end

end A138364.P7582461826134303957

namespace A138364

/-- `and(1, n)*A210736(n+1)` -/
def P7582461826134303957.Spec : Prop :=
  ∀ n, P7582461826134303957.a n = A138364 n

end A138364

/-! ## A138364.P5389553173756489440

`abs(n*A182492(2*n+1))`
-/

namespace A138364.P5389553173756489440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n : ℤ) * A182492 (2 * n + 1)|

end

end A138364.P5389553173756489440

namespace A138364

/-- `abs(n*A182492(2*n+1))` -/
def P5389553173756489440.Spec : Prop :=
  ∀ n, P5389553173756489440.a n = A138364 n

end A138364

/-! ## A138364.P335944595137821911

`A001405(n)-A126869(n)`
-/

namespace A138364.P335944595137821911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001405 n - A126869 n

end

end A138364.P335944595137821911

namespace A138364

/-- `A001405(n)-A126869(n)` -/
def P335944595137821911.Spec : Prop :=
  ∀ n, P335944595137821911.a n = A138364 n

end A138364

/-! ## A138364.P14583679031537764561

`A063886(n)-A089849(n)`
-/

namespace A138364.P14583679031537764561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063886 n - A089849 n

end

end A138364.P14583679031537764561

namespace A138364

/-- `A063886(n)-A089849(n)` -/
def P14583679031537764561.Spec : Prop :=
  ∀ n, P14583679031537764561.a n = A138364 n

end A138364

/-! ## A138364.P9168153598031902526

`A057977(n)-A126120(n)`
-/

namespace A138364.P9168153598031902526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057977 n - A126120 n

end

end A138364.P9168153598031902526

namespace A138364

/-- `A057977(n)-A126120(n)` -/
def P9168153598031902526.Spec : Prop :=
  ∀ n, P9168153598031902526.a n = A138364 n

end A138364

/-! ## A138364.P7868244729870647516

`A126869(n)-A126930(n)`
-/

namespace A138364.P7868244729870647516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126869 n - A126930 n

end

end A138364.P7868244729870647516

namespace A138364

/-- `A126869(n)-A126930(n)` -/
def P7868244729870647516.Spec : Prop :=
  ∀ n, P7868244729870647516.a n = A138364 n

end A138364

/-! ## A138364.P165603737678357974

`A000035(n)*A001405(n)`
-/

namespace A138364.P165603737678357974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 n * A001405 n

end

end A138364.P165603737678357974

namespace A138364

/-- `A000035(n)*A001405(n)` -/
def P165603737678357974.Spec : Prop :=
  ∀ n, P165603737678357974.a n = A138364 n

end A138364

/-!
# A138365: a(n) = A006190(n) * A006190(n+2).

The programs for A138365, the canonical program `A138365.P3398846623714641803` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A138365 has offset 1).

The definition of A138365 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A006190(n+1)*A006190(n+3)` (program `A138365.P3398846623714641803`, by `A138365.P3398846623714641803.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A138365.P3398846623714641803

`A006190(n+1)*A006190(n+3)`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A138365

/-- `A006190(n+1)*A006190(n+3)` -/
def P3398846623714641803.Spec : Prop :=
  ∀ n, P3398846623714641803.a n = A138365 (n + 1)

theorem P3398846623714641803.correct : P3398846623714641803.Spec := by
  intro n
  simp only [A138365, Nat.add_sub_cancel]

end A138365

/-! ## A138365.P5435202439940978592

`ogf((10-x)/(1-10x-10x^2+x^3))`
-/

namespace A138365.P5435202439940978592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [10, -1] [1, -10, -10, 1] n

end

end A138365.P5435202439940978592

namespace A138365

/-- `ogf((10-x)/(1-10x-10x^2+x^3))` -/
def P5435202439940978592.Spec : Prop :=
  ∀ n, P5435202439940978592.a n = A138365 (n + 1)

end A138365

/-! ## A138365.P4634312981144540659

`A033999(n)+A020704(n)²`
-/

namespace A138365.P4634312981144540659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n + A020704 n ^ 2

end

end A138365.P4634312981144540659

namespace A138365

/-- `A033999(n)+A020704(n)²` -/
def P4634312981144540659.Spec : Prop :=
  ∀ n, P4634312981144540659.a n = A138365 (n + 1)

end A138365

/-! ## A138365.P4665233159221771829

`A092936(n+2)+A033999(n)`
-/

namespace A138365.P4665233159221771829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092936 (n + 2) + A033999 n

end

end A138365.P4665233159221771829

namespace A138365

/-- `A092936(n+2)+A033999(n)` -/
def P4665233159221771829.Spec : Prop :=
  ∀ n, P4665233159221771829.a n = A138365 (n + 1)

end A138365

/-! ## A138365.P12354466838494147846

`A033999(n)+A006190(n+2)²`
-/

namespace A138365.P12354466838494147846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n + A006190 (n + 2) ^ 2

end

end A138365.P12354466838494147846

namespace A138365

/-- `A033999(n)+A006190(n+2)²` -/
def P12354466838494147846.Spec : Prop :=
  ∀ n, P12354466838494147846.a n = A138365 (n + 1)

end A138365

/-! ## A138365.P13676618538453197093

`A056594(2*n)+A020704(n)²`
-/

namespace A138365.P13676618538453197093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056594 (2 * n) + A020704 n ^ 2

end

end A138365.P13676618538453197093

namespace A138365

/-- `A056594(2*n)+A020704(n)²` -/
def P13676618538453197093.Spec : Prop :=
  ∀ n, P13676618538453197093.a n = A138365 (n + 1)

end A138365

/-! ## A138365.P8343735990192511682

`A006190(n+1)*A020704(n+1)`
-/

namespace A138365.P8343735990192511682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006190 (n + 1) * A020704 (n + 1)

end

end A138365.P8343735990192511682

namespace A138365

/-- `A006190(n+1)*A020704(n+1)` -/
def P8343735990192511682.Spec : Prop :=
  ∀ n, P8343735990192511682.a n = A138365 (n + 1)

end A138365

/-!
# A138368: Primes of the form k^2 + 12.

The programs for A138368, there is no canonical definition to state claims against.
-/

/-! ## A138368.P8625210463523377858

`A241748(A114275(n+1))`
-/

namespace A138368.P8625210463523377858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241748 (A114275 (n + 1)).toNat

end

end A138368.P8625210463523377858

/-! ## A138368.P2503683788347698537

`∩[A139530(n+1), A241748(n)]`
-/

namespace A138368.P2503683788347698537
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139530 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241748 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A138368.P2503683788347698537

/-! ## A138368.P7902187164558215876

`p?[n²+12]`
-/

namespace A138368.P7902187164558215876
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2 + 12

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A138368.P7902187164558215876

/-! ## A138368.P12242081627879036941

`or(1, p?[n^2+12])`
-/

namespace A138368.P12242081627879036941
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2 + 12

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A138368.P12242081627879036941

/-! ## A138368.P10748787754225180837

`and(-3, p?[n^2+12])`
-/

namespace A138368.P10748787754225180837
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2 + 12

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-3) (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℤ)

end

end A138368.P10748787754225180837

/-! ## A138368.P17722781970343890609

`lcm((-1)^n, p?[n^2+12])`
-/

namespace A138368.P17722781970343890609
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2 + 12

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((-1) ^ n) (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℤ)

end

end A138368.P17722781970343890609

/-! ## A138368.P3890036569448668954

`(n%2)!*p?[n^2+12]`
-/

namespace A138368.P3890036569448668954
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2 + 12

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (n % 2) * f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A138368.P3890036569448668954

/-! ## A138368.P1445270698557447545

`abs((-1)^n*p?[n^2+12])`
-/

namespace A138368.P1445270698557447545
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2 + 12

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(-1) ^ n * (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℤ)|

end

end A138368.P1445270698557447545

/-! ## A138368.P11554417588645313677

`p?[n^2+12]+A008683(4*(n+1))`
-/

namespace A138368.P11554417588645313677
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2 + 12

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℤ) + A008683 (4 * (n + 1))

end

end A138368.P11554417588645313677

/-! ## A138368.P7466474552956466113

`∩[A007521(n+1), A241748(n)]`
-/

namespace A138368.P7466474552956466113
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007521 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241748 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A138368.P7466474552956466113

/-!
# A138372: Count of post-period decimal digits up to which the rounded n-th convergent to A103814 agrees with the exact value.

The programs for A138372, there is no canonical definition to state claims against.
-/

/-! ## A138372.P17113185877029342990

`A070939(A324467(n)+A239553(n))`
-/

namespace A138372.P17113185877029342990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 (A324467 n + A239553 n).toNat

end

end A138372.P17113185877029342990

/-! ## A138372.P1480577731253694250

`A070939(A056342(n+1)+dr(A057216(3*n+4)))`
-/

namespace A138372.P1480577731253694250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 (A056342 (n + 1) + (SequenceMachineLib.digitalRoot (A057216 (3 * n + 4)) : ℤ)).toNat

end

end A138372.P1480577731253694250

/-!
# A138373: Count of post-period decimal digits up to which the rounded n-th convergent to sqrt(5)/2 agrees with the exact value.

The programs for A138373, there is no canonical definition to state claims against.
-/

/-! ## A138373.P5141936258061124227

`A055642(A060920(3*(n+1)))+n`
-/

namespace A138373.P5141936258061124227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 (A060920 (3 * (n + 1))).toNat + (n : ℤ)

end

end A138373.P5141936258061124227

/-! ## A138373.P4970877098546910944

`A352227(n+1)+A115570(A173020(n+1))`
-/

namespace A138373.P4970877098546910944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352227 (n + 1) + A115570 (A173020 (n + 1)).toNat

end

end A138373.P4970877098546910944

/-!
# A138375: Primes of the form k^2 + 13.

The programs for A138375, there is no canonical definition to state claims against.
-/

/-! ## A138375.P5540880748415512556

`A241749(A113536(n+1))`
-/

namespace A138375.P5540880748415512556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241749 (A113536 (n + 1)).toNat

end

end A138375.P5540880748415512556

/-! ## A138375.P5264271450716610321

`∩[A107159(n+1), A241749(n)]`
-/

namespace A138375.P5264271450716610321
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107159 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241749 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A138375.P5264271450716610321

/-! ## A138375.P15227626731297414813

`p?[n²+13]`
-/

namespace A138375.P15227626731297414813
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2 + 13

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A138375.P15227626731297414813

/-! ## A138375.P494651382945991602

`or(1, p?[n^2+13])`
-/

namespace A138375.P494651382945991602
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2 + 13

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A138375.P494651382945991602

/-! ## A138375.P10291200337022499588

`lcm(p?[A241749(n)], A158388(n))`
-/

namespace A138375.P10291200337022499588
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241749 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A158388 n)

end

end A138375.P10291200337022499588

/-! ## A138375.P8270495594511947510

`p?[A241749(n)]%A030514(n+1)`
-/

namespace A138375.P8270495594511947510
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241749 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A030514 (n + 1))

end

end A138375.P8270495594511947510

/-! ## A138375.P9851483373035753030

`∩[A033210(n+1), A241749(n)]`
-/

namespace A138375.P9851483373035753030
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033210 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241749 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A138375.P9851483373035753030

/-! ## A138375.P14434704363268593624

`∩[A241749(n), A278494(n+1)]`
-/

namespace A138375.P14434704363268593624
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241749 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278494 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A138375.P14434704363268593624

/-! ## A138375.P12938803209452121677

`∩[A002144(n+1), A241749(n)]`
-/

namespace A138375.P12938803209452121677
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002144 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241749 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A138375.P12938803209452121677

/-! ## A138375.P909587062357130182

`∩[A002313(n+1), A241749(n)]`
-/

namespace A138375.P909587062357130182
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002313 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241749 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A138375.P909587062357130182

/-!
# A138376: a(n+1) = abs[ a(n) + (-1)^(n+1) * Sum_of_digits_of(n+1)], with a(0)=0.

The programs for A138376, the canonical program `A138376.P5369023578764869031` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A138376 has offset 0).

The definition of A138376 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A138376.P5369023578764869031

`∑{digits}[xor(n, a(n-1)), #]` with `a(0)=0`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A138376

/-- `∑{digits}[xor(n, a(n-1)), #]` -/
def P5369023578764869031.Spec : Prop :=
  ∀ n, (P5369023578764869031.a n : ℤ) = A138376 n

theorem P5369023578764869031.correct : P5369023578764869031.Spec := by
  intro n
  simp only [A138376]

end A138376

/-! ## A138376.P3193290438914608318

`∑{digits}[A003815(n), #]`
-/

namespace A138376.P3193290438914608318
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003815 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A138376.P3193290438914608318

namespace A138376

/-- `∑{digits}[A003815(n), #]` -/
def P3193290438914608318.Spec : Prop :=
  ∀ n, (P3193290438914608318.a n : ℤ) = A138376 n

end A138376

/-! ## A138376.P10606425035866625294

`A007953(A003815(n))`
-/

namespace A138376.P10606425035866625294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (A003815 n).toNat

end

end A138376.P10606425035866625294

namespace A138376

/-- `A007953(A003815(n))` -/
def P10606425035866625294.Spec : Prop :=
  ∀ n, P10606425035866625294.a n = A138376 n

end A138376

/-! ## A138376.P13898245829365299432

`∑{digits}[A047250(n+1)-A014682(n), #]`
-/

namespace A138376.P13898245829365299432
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047250 (n + 1) - A014682 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A138376.P13898245829365299432

namespace A138376

/-- `∑{digits}[A047250(n+1)-A014682(n), #]` -/
def P13898245829365299432.Spec : Prop :=
  ∀ n, (P13898245829365299432.a n : ℤ) = A138376 n

end A138376

/-! ## A138376.P2111539810018003297

`∑{digits}[xor(A133265(n), A298364(n+1)), #]`
-/

namespace A138376.P2111539810018003297
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A133265 n) (A298364 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A138376.P2111539810018003297

namespace A138376

/-- `∑{digits}[xor(A133265(n), A298364(n+1)), #]` -/
def P2111539810018003297.Spec : Prop :=
  ∀ n, (P2111539810018003297.a n : ℤ) = A138376 n

end A138376

/-!
# A138377: a(0) = 0, a(1) = 1, a(2) = 3, a(3) = 2; thereafter a(n) = -4*a(n-4).

The programs for A138377, the canonical program `A138377.P11053093133888834120` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A138377 has offset 0).

The definition of A138377 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `-4*a(n-4)` (program `A138377.P11053093133888834120`, by `A138377.P11053093133888834120.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A138377.P11053093133888834120

`-4*a(n-4)` with `a(0)=0, a(1)=1, a(2)=3, a(3)=2`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A138377

/-- `-4*a(n-4)` -/
def P11053093133888834120.Spec : Prop :=
  ∀ n, P11053093133888834120.a n = A138377 n

theorem P11053093133888834120.correct : P11053093133888834120.Spec := by
  intro n
  simp only [A138377]

end A138377

/-! ## A138377.P16541275479879532358

`ogf((x+3x^2+2x^3)/(1+4x^4))`
-/

namespace A138377.P16541275479879532358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, 3, 2] [1, 0, 0, 0, 4] n

end

end A138377.P16541275479879532358

namespace A138377

/-- `ogf((x+3x^2+2x^3)/(1+4x^4))` -/
def P16541275479879532358.Spec : Prop :=
  ∀ n, P16541275479879532358.a n = A138377 n

end A138377

/-! ## A138377.P5869655232874307894

`-(4*a(n-4))` with `a(0)=0, a(1)=1, a(2)=3, a(3)=2`
-/

namespace A138377.P5869655232874307894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 3, 2] fun n a =>
  -(4 * a (n - 4))

end

end A138377.P5869655232874307894

namespace A138377

/-- `-(4*a(n-4))` -/
def P5869655232874307894.Spec : Prop :=
  ∀ n, P5869655232874307894.a n = A138377 n

theorem P5869655232874307894.correct : P5869655232874307894.Spec := by
  intro n
  simp only [A138377, Nat.add_sub_cancel, A138377.P5869655232874307894.a, A138377.P11053093133888834120.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A138377

/-! ## A138377.P16571355401780146962

`A009545(n)+A009545(A237420(n))/2`
-/

namespace A138377.P16571355401780146962
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A009545 n : ℚ) + (A009545 (A237420 n).toNat : ℚ) / 2

end

end A138377.P16571355401780146962

namespace A138377

/-- `A009545(n)+A009545(A237420(n))/2` -/
def P16571355401780146962.Spec : Prop :=
  ∀ n, P16571355401780146962.a n = (A138377 n : ℚ)

end A138377

/-! ## A138377.P4408942085147552737

`a(n-4)-5*a(n-4)` with `a(0)=0, a(1)=1, a(2)=3, a(3)=2`
-/

namespace A138377.P4408942085147552737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 3, 2] fun n a =>
  a (n - 4) - 5 * a (n - 4)

end

end A138377.P4408942085147552737

namespace A138377

/-- `a(n-4)-5*a(n-4)` -/
def P4408942085147552737.Spec : Prop :=
  ∀ n, P4408942085147552737.a n = A138377 n

theorem P4408942085147552737.correct : P4408942085147552737.Spec := by
  intro n
  simp only [A138377, Nat.add_sub_cancel, A138377.P4408942085147552737.a, A138377.P11053093133888834120.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A138377

/-! ## A138377.P16677097921158928574

`∑[A138380(n)]-A138380(n)`
-/

namespace A138377.P16677097921158928574
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138380 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A138380 n

end

end A138377.P16677097921158928574

namespace A138377

/-- `∑[A138380(n)]-A138380(n)` -/
def P16677097921158928574.Spec : Prop :=
  ∀ n, P16677097921158928574.a n = A138377 n

end A138377

/-! ## A138377.P3041631561285000673

`A046978(n)*A074323(n)`
-/

namespace A138377.P3041631561285000673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046978 n * A074323 n

end

end A138377.P3041631561285000673

namespace A138377

/-- `A046978(n)*A074323(n)` -/
def P3041631561285000673.Spec : Prop :=
  ∀ n, P3041631561285000673.a n = A138377 n

end A138377

/-! ## A138377.P13900133502215407226

`A108520(n)+A138380(n)-A138380(n+1)`
-/

namespace A138377.P13900133502215407226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108520 n + (A138380 n - A138380 (n + 1))

end

end A138377.P13900133502215407226

namespace A138377

/-- `A108520(n)+A138380(n)-A138380(n+1)` -/
def P13900133502215407226.Spec : Prop :=
  ∀ n, P13900133502215407226.a n = A138377 n

end A138377

/-! ## A138377.P1840913524066938761

`A046978(n)*A164073(n+2)/2`
-/

namespace A138377.P1840913524066938761
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A046978 n * A164073 (n + 2) : ℚ) / 2

end

end A138377.P1840913524066938761

namespace A138377

/-- `A046978(n)*A164073(n+2)/2` -/
def P1840913524066938761.Spec : Prop :=
  ∀ n, P1840913524066938761.a n = (A138377 n : ℚ)

end A138377

/-! ## A138377.P13680947114441463492

`A137329(A159966(n))`
-/

namespace A138377.P13680947114441463492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137329 (A159966 n).toNat

end

end A138377.P13680947114441463492

namespace A138377

/-- `A137329(A159966(n))` -/
def P13680947114441463492.Spec : Prop :=
  ∀ n, P13680947114441463492.a n = A138377 n

end A138377

/-! ## A138377.P4778138650043951260

`A137329(A113778(n+1))`
-/

namespace A138377.P4778138650043951260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137329 (A113778 (n + 1)).toNat

end

end A138377.P4778138650043951260

namespace A138377

/-- `A137329(A113778(n+1))` -/
def P4778138650043951260.Spec : Prop :=
  ∀ n, P4778138650043951260.a n = A138377 n

end A138377

/-! ## A138377.P16099334673094403320

`A108520(n)-A138382(n)`
-/

namespace A138377.P16099334673094403320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108520 n - A138382 n

end

end A138377.P16099334673094403320

namespace A138377

/-- `A108520(n)-A138382(n)` -/
def P16099334673094403320.Spec : Prop :=
  ∀ n, P16099334673094403320.a n = A138377 n

end A138377

/-! ## A138377.P5734060326667011180

`A090132(n+1)+A090132(n)-A138382(n)`
-/

namespace A138377.P5734060326667011180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090132 (n + 1) + (A090132 n - A138382 n)

end

end A138377.P5734060326667011180

namespace A138377

/-- `A090132(n+1)+A090132(n)-A138382(n)` -/
def P5734060326667011180.Spec : Prop :=
  ∀ n, P5734060326667011180.a n = A138377 n

end A138377

/-! ## A138377.P12518445213031848500

`A138380(n)-A000079(n)/A138380(n)`
-/

namespace A138377.P12518445213031848500
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138380 n : ℚ) - (A000079 n : ℚ) / (A138380 n : ℚ)

end

end A138377.P12518445213031848500

namespace A138377

/-- `A138380(n)-A000079(n)/A138380(n)` -/
def P12518445213031848500.Spec : Prop :=
  ∀ n, P12518445213031848500.a n = (A138377 n : ℚ)

end A138377

/-!
# A138379: Number of embedded coalitions in an n-person game where the position of the individual player is important.

The programs for A138379, there is no canonical definition to state claims against.
-/

/-! ## A138379.P9524708259595932349

`n!*A127741(n)`
-/

namespace A138379.P9524708259595932349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * A127741 n

end

end A138379.P9524708259595932349

/-! ## A138379.P1723363083128325914

`(n+1)!*A005493(n)`
-/

namespace A138379.P1723363083128325914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (n + 1) : ℤ) * A005493 n

end

end A138379.P1723363083128325914

/-! ## A138379.P9679786815465311728

`Δ[A000110(n+1)]*∏[n+1]`
-/

namespace A138379.P9679786815465311728
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000110 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * ((∏ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

end

end A138379.P9679786815465311728

/-! ## A138379.P8086111325935708421

`(n+1)*n!*Δ[A011971(∑[n+1])]`
-/

namespace A138379.P8086111325935708421
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011971 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * ((Nat.factorial n : ℤ) * (f1 (n + 1) - f1 n))

end

end A138379.P8086111325935708421

/-! ## A138379.P8027575299504721393

`A000142(n+1)*A005493(n)`
-/

namespace A138379.P8027575299504721393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 (n + 1) * A005493 n

end

end A138379.P8027575299504721393

/-!
# A138380: First differences of A138377.

The programs for A138380, the canonical program `A138380.P12581775225981857732` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A138380 has offset 0).

The definition of A138380 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A138380.P12581775225981857732

`ogf((1+2x-x^2-2x^3)/(1+4x^4))`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A138380

/-- `ogf((1+2x-x^2-2x^3)/(1+4x^4))` -/
def P12581775225981857732.Spec : Prop :=
  ∀ n, P12581775225981857732.a n = A138380 n

theorem P12581775225981857732.correct : P12581775225981857732.Spec := by
  intro n
  simp only [A138380]

end A138380

/-! ## A138380.P6236366823746655038

`Δ[-(4*a(n-4))]` with `a(0)=0, a(1)=1, a(2)=3, a(3)=2`
-/

namespace A138380.P6236366823746655038
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 3, 2] fun n f1 =>
  -(4 * f1 (n - 4))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A138380.P6236366823746655038

namespace A138380

/-- `Δ[-(4*a(n-4))]` -/
def P6236366823746655038.Spec : Prop :=
  ∀ n, P6236366823746655038.a n = A138380 n

end A138380

/-! ## A138380.P7020124566856802991

`Δ[A138377(n)]`
-/

namespace A138380.P7020124566856802991
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138377 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A138380.P7020124566856802991

namespace A138380

/-- `Δ[A138377(n)]` -/
def P7020124566856802991.Spec : Prop :=
  ∀ n, P7020124566856802991.a n = A138380 n

end A138380

/-! ## A138380.P3003943273957242570

`A138377(n+1)-A138377(n)`
-/

namespace A138380.P3003943273957242570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138377 (n + 1) - A138377 n

end

end A138380.P3003943273957242570

namespace A138380

/-- `A138377(n+1)-A138377(n)` -/
def P3003943273957242570.Spec : Prop :=
  ∀ n, P3003943273957242570.a n = A138380 n

end A138380

/-! ## A138380.P15491734466475568425

`A009545(A057077(n)+n)*A057077(n)`
-/

namespace A138380.P15491734466475568425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009545 (A057077 n + (n : ℤ)).toNat * A057077 n

end

end A138380.P15491734466475568425

namespace A138380

/-- `A009545(A057077(n)+n)*A057077(n)` -/
def P15491734466475568425.Spec : Prop :=
  ∀ n, P15491734466475568425.a n = A138380 n

end A138380

/-! ## A138380.P13993694170503529207

`Δ[A009545(n)+A009545(A237420(n))/2]`
-/

namespace A138380.P13993694170503529207
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A009545 n : ℚ) + (A009545 (A237420 n).toNat : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A138380.P13993694170503529207

namespace A138380

/-- `Δ[A009545(n)+A009545(A237420(n))/2]` -/
def P13993694170503529207.Spec : Prop :=
  ∀ n, P13993694170503529207.a n = (A138380 n : ℚ)

end A138380

/-! ## A138380.P17832004952425885960

`A108520(xor(2, n))-A108520(n)`
-/

namespace A138380.P17832004952425885960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108520 (Nat.xor 2 n) - A108520 n

end

end A138380.P17832004952425885960

namespace A138380

/-- `A108520(xor(2, n))-A108520(n)` -/
def P17832004952425885960.Spec : Prop :=
  ∀ n, P17832004952425885960.a n = A138380 n

end A138380

/-! ## A138380.P17977742226332925481

`A009116(xor(2, n+1))-A009116(n)`
-/

namespace A138380.P17977742226332925481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009116 (Nat.xor 2 (n + 1)) - A009116 n

end

end A138380.P17977742226332925481

namespace A138380

/-- `A009116(xor(2, n+1))-A009116(n)` -/
def P17977742226332925481.Spec : Prop :=
  ∀ n, P17977742226332925481.a n = A138380 n

end A138380

/-! ## A138380.P11612932743832985905

`A138382(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A138380.P11612932743832985905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A138382 (n - 1) + a (n - 1)

end

end A138380.P11612932743832985905

namespace A138380

/-- `A138382(n-1)+a(n-1)` -/
def P11612932743832985905.Spec : Prop :=
  ∀ n, P11612932743832985905.a n = A138380 n

end A138380

/-! ## A138380.P9699589964133834431

`Δ[A137329(A113778(n+1))]`
-/

namespace A138380.P9699589964133834431
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137329 (A113778 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A138380.P9699589964133834431

namespace A138380

/-- `Δ[A137329(A113778(n+1))]` -/
def P9699589964133834431.Spec : Prop :=
  ∀ n, P9699589964133834431.a n = A138380 n

end A138380

/-! ## A138380.P16694502851473989248

`A078069(n+1)+A138382(n)-A138382(n+1)`
-/

namespace A138380.P16694502851473989248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078069 (n + 1) + (A138382 n - A138382 (n + 1))

end

end A138380.P16694502851473989248

namespace A138380

/-- `A078069(n+1)+A138382(n)-A138382(n+1)` -/
def P16694502851473989248.Spec : Prop :=
  ∀ n, P16694502851473989248.a n = A138380 n

end A138380

/-! ## A138380.P17471559163172638150

`A164111(n-1)/a(n-2)` with `a(0)=1, a(1)=2`
-/

namespace A138380.P17471559163172638150
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 2] fun n a =>
  (A164111 (n - 1) : ℚ) / a (n - 2)

end

end A138380.P17471559163172638150

namespace A138380

/-- `A164111(n-1)/a(n-2)` -/
def P17471559163172638150.Spec : Prop :=
  ∀ n, P17471559163172638150.a n = (A138380 n : ℚ)

end A138380

/-!
# A138381: Numbers which are the sum of a strictly positive square and a square of a prime in two or more ways.

The programs for A138381, there is no canonical definition to state claims against.
-/

/-! ## A138381.P9321449112415341787

`A007692(lt[A135086(3*n+4), A013609(2*n+3)])`
-/

namespace A138381.P9321449112415341787
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135086 (3 * n + 4)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013609 (2 * n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007692 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A138381.P9321449112415341787

/-! ## A138381.P4271216392746647574

`A007692(A075458(3*n+2)-(floor(n/2)-floor(n/3)))`
-/

namespace A138381.P4271216392746647574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007692 (A075458 (3 * n + 2) - (⌊(n : ℚ) / 2⌋ - ⌊(n : ℚ) / 3⌋)).toNat

end

end A138381.P4271216392746647574

/-!
# A138382: First differences of A138380. Second differences of A138377.

The programs for A138382, the canonical program `A138382.P3400157567111419201` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A138382 has offset 0).

The definition of A138382 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 658 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A138382.P12831742057881070159

`ogf((1-3x-x^2-2x^3)/(1+4x^4))`
-/

namespace A138382.P12831742057881070159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -3, -1, -2] [1, 0, 0, 0, 4] n

end

end A138382.P12831742057881070159

namespace A138382

/-- `ogf((1-3x-x^2-2x^3)/(1+4x^4))` -/
def P12831742057881070159.Spec : Prop :=
  ∀ n, P12831742057881070159.a n = A138382 n

end A138382

/-! ## A138382.P3400157567111419201

`Δ[Δ[-(4*a(n-4))]]` with `a(0)=0, a(1)=1, a(2)=3, a(3)=2`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A138382

/-- `Δ[Δ[-(4*a(n-4))]]` -/
def P3400157567111419201.Spec : Prop :=
  ∀ n, P3400157567111419201.a n = A138382 n

theorem P3400157567111419201.correct : P3400157567111419201.Spec := by
  intro n
  simp only [A138382]

end A138382

/-! ## A138382.P5608465391668459214

`Δ[A138380(n)]`
-/

namespace A138382.P5608465391668459214
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138380 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A138382.P5608465391668459214

namespace A138382

/-- `Δ[A138380(n)]` -/
def P5608465391668459214.Spec : Prop :=
  ∀ n, P5608465391668459214.a n = A138382 n

end A138382

/-! ## A138382.P4410540546801249810

`Δ[Δ[A138377(n)]]`
-/

namespace A138382.P4410540546801249810
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138377 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A138382.P4410540546801249810

namespace A138382

/-- `Δ[Δ[A138377(n)]]` -/
def P4410540546801249810.Spec : Prop :=
  ∀ n, P4410540546801249810.a n = A138382 n

theorem P4410540546801249810.correct : P4410540546801249810.Spec := by
  intro n
  simp only [A138382, Nat.add_sub_cancel, A138382.P4410540546801249810.f2, A138382.P4410540546801249810.f1, A138382.P4410540546801249810.a, A138382.P3400157567111419201.f2, A138382.P3400157567111419201.f1, A138382.P3400157567111419201.a, A138377, A138377.P11053093133888834120.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A138382

/-! ## A138382.P7833367764356076018

`A108520(n)-A138377(n)`
-/

namespace A138382.P7833367764356076018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108520 n - A138377 n

end

end A138382.P7833367764356076018

namespace A138382

/-- `A108520(n)-A138377(n)` -/
def P7833367764356076018.Spec : Prop :=
  ∀ n, P7833367764356076018.a n = A138382 n

end A138382

/-! ## A138382.P6650625153905359445

`∑[A078069(n)]-A138377(n)`
-/

namespace A138382.P6650625153905359445
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078069 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A138377 n

end

end A138382.P6650625153905359445

namespace A138382

/-- `∑[A078069(n)]-A138377(n)` -/
def P6650625153905359445.Spec : Prop :=
  ∀ n, P6650625153905359445.a n = A138382 n

end A138382

/-! ## A138382.P1553042407477779202

`A138380(n+1)-A138380(n)`
-/

namespace A138382.P1553042407477779202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138380 (n + 1) - A138380 n

end

end A138382.P1553042407477779202

namespace A138382

/-- `A138380(n+1)-A138380(n)` -/
def P1553042407477779202.Spec : Prop :=
  ∀ n, P1553042407477779202.a n = A138382 n

end A138382

/-! ## A138382.P6702823270919129809

`Δ[Δ[A137329(A113778(n+1))]]`
-/

namespace A138382.P6702823270919129809
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137329 (A113778 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A138382.P6702823270919129809

namespace A138382

/-- `Δ[Δ[A137329(A113778(n+1))]]` -/
def P6702823270919129809.Spec : Prop :=
  ∀ n, P6702823270919129809.a n = A138382 n

end A138382

/-! ## A138382.P12941058619739588613

`A090132(n+1)+A090132(n)-A138377(n)`
-/

namespace A138382.P12941058619739588613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090132 (n + 1) + (A090132 n - A138377 n)

end

end A138382.P12941058619739588613

namespace A138382

/-- `A090132(n+1)+A090132(n)-A138377(n)` -/
def P12941058619739588613.Spec : Prop :=
  ∀ n, P12941058619739588613.a n = A138382 n

end A138382

/-! ## A138382.P11814442629272271271

`A138377(n)+A000079(n+1)/A138380(n+1)`
-/

namespace A138382.P11814442629272271271
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138377 n : ℚ) + (A000079 (n + 1) : ℚ) / (A138380 (n + 1) : ℚ)

end

end A138382.P11814442629272271271

namespace A138382

/-- `A138377(n)+A000079(n+1)/A138380(n+1)` -/
def P11814442629272271271.Spec : Prop :=
  ∀ n, P11814442629272271271.a n = (A138382 n : ℚ)

end A138382

/-! ## A138382.P6764948019394107397

`A016116(2*n)/A137429(2*n+1)*A137429(n+1)`
-/

namespace A138382.P6764948019394107397
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016116 (2 * n) : ℚ) / (A137429 (2 * n + 1) : ℚ) * (A137429 (n + 1) : ℚ)

end

end A138382.P6764948019394107397

namespace A138382

/-- `A016116(2*n)/A137429(2*n+1)*A137429(n+1)` -/
def P6764948019394107397.Spec : Prop :=
  ∀ n, P6764948019394107397.a n = (A138382 n : ℚ)

end A138382

/-!
# A138383: If prime(i) = i-th prime, a(n) = prime(n)+1 + prime(n)+2 + ... + prime(n+1). a(0) = 3 by convention.

The programs for A138383, the canonical program `A138383.P12057680443366448035` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A138383 has offset 0).

The definition of A138383 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A138383.P17117460222610702746

`A137174(n)+a(n-1)` with `a(0)=3`
-/

namespace A138383.P17117460222610702746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  A137174 n + a (n - 1)

end

end A138383.P17117460222610702746

namespace A138383

/-- `A137174(n)+a(n-1)` -/
def P17117460222610702746.Spec : Prop :=
  ∀ n, P17117460222610702746.a n = A138383 n

end A138383

/-! ## A138383.P12057680443366448035

`abs(Δ[A034953(abs(1-n)+1)])`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A138383

/-- `abs(Δ[A034953(abs(1-n)+1)])` -/
def P12057680443366448035.Spec : Prop :=
  ∀ n, P12057680443366448035.a n = A138383 n

theorem P12057680443366448035.correct : P12057680443366448035.Spec := by
  intro n
  simp only [A138383]

end A138383

/-! ## A138383.P9870195273998740138

`Δ[C(A028815(n)%(n+1)², 2)]`
-/

namespace A138383.P9870195273998740138
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (Int.tmod (A028815 n) ((n + 1) ^ 2 : ℤ)).toNat 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A138383.P9870195273998740138

namespace A138383

/-- `Δ[C(A028815(n)%(n+1)², 2)]` -/
def P9870195273998740138.Spec : Prop :=
  ∀ n, P9870195273998740138.a n = A138383 n

end A138383

/-! ## A138383.P14636114468691203868

`A371201(n)+A054541(n+1)`
-/

namespace A138383.P14636114468691203868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371201 n + A054541 (n + 1)

end

end A138383.P14636114468691203868

namespace A138383

/-- `A371201(n)+A054541(n+1)` -/
def P14636114468691203868.Spec : Prop :=
  ∀ n, P14636114468691203868.a n = A138383 n

theorem P14636114468691203868.correct : P14636114468691203868.Spec := by
  intro n
  simp only [A138383, Nat.add_sub_cancel, A138383.P14636114468691203868.a, A138383.P12057680443366448035.f1, A138383.P12057680443366448035.a, A034953, A034953.P12568728140146877898.a, A054541, A054541.P347795157194570387.a, A371201, A371201.P4499511649538821653.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A000217, A000217.P10269402890581615239.a, A046930, A046930.P1162450832993365803.f1, A046930.P1162450832993365803.a, A011974, A011974.P2665693327137284562.a, A001043, A001043.P18269783162673735460.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A138383

/-! ## A138383.P8872748858134287445

`A000007(n)+Δ[C(A028815(n), 2)]`
-/

namespace A138383.P8872748858134287445
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A028815 n).toNat 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A138383.P8872748858134287445

namespace A138383

/-- `A000007(n)+Δ[C(A028815(n), 2)]` -/
def P8872748858134287445.Spec : Prop :=
  ∀ n, P8872748858134287445.a n = A138383 n

end A138383

/-! ## A138383.P6299344493344209095

`A034953(n+2)-(A137174(n+1)+A034953(n+1))`
-/

namespace A138383.P6299344493344209095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034953 (n + 2) - (A137174 (n + 1) + A034953 (n + 1))

end

end A138383.P6299344493344209095

namespace A138383

/-- `A034953(n+2)-(A137174(n+1)+A034953(n+1))` -/
def P6299344493344209095.Spec : Prop :=
  ∀ n, P6299344493344209095.a n = A138383 n

end A138383

/-! ## A138383.P7431809989505314882

`Δ[A000217(A182986(n+1))]`
-/

namespace A138383.P7431809989505314882
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A182986 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A138383.P7431809989505314882

namespace A138383

/-- `Δ[A000217(A182986(n+1))]` -/
def P7431809989505314882.Spec : Prop :=
  ∀ n, P7431809989505314882.a n = A138383 n

end A138383

/-! ## A138383.P12531611984692367296

`Δ[record[C(∑{p}[n+1, #]+1, 2)]]`
-/

namespace A138383.P12531611984692367296
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (∑ p ∈ Nat.primeFactors (f3 n), p + 1) 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A138383.P12531611984692367296

namespace A138383

/-- `Δ[record[C(∑{p}[n+1, #]+1, 2)]]` -/
def P12531611984692367296.Spec : Prop :=
  ∀ n, P12531611984692367296.a n = A138383 n

end A138383

/-! ## A138383.P5199991836056133925

`Δ[record[A341885(n+1)]]`
-/

namespace A138383.P5199991836056133925
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341885 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A138383.P5199991836056133925

namespace A138383

/-- `Δ[record[A341885(n+1)]]` -/
def P5199991836056133925.Spec : Prop :=
  ∀ n, P5199991836056133925.a n = A138383 n

end A138383

/-! ## A138383.P14465577974284742372

`Δ[A007437(A008578(n+1))]`
-/

namespace A138383.P14465577974284742372
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007437 (A008578 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A138383.P14465577974284742372

namespace A138383

/-- `Δ[A007437(A008578(n+1))]` -/
def P14465577974284742372.Spec : Prop :=
  ∀ n, P14465577974284742372.a n = A138383 n

end A138383

/-! ## A138383.P10208630494844350948

`Δ[A000217(record[A061397(n+1)])]`
-/

namespace A138383.P10208630494844350948
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061397 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A138383.P10208630494844350948

namespace A138383

/-- `Δ[A000217(record[A061397(n+1)])]` -/
def P10208630494844350948.Spec : Prop :=
  ∀ n, P10208630494844350948.a n = A138383 n

end A138383

/-! ## A138383.P13315683703452332179

`Δ[A253145(A008578(n+1)-1)]`
-/

namespace A138383.P13315683703452332179
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253145 (A008578 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A138383.P13315683703452332179

namespace A138383

/-- `Δ[A253145(A008578(n+1)-1)]` -/
def P13315683703452332179.Spec : Prop :=
  ∀ n, P13315683703452332179.a n = A138383 n

end A138383

/-! ## A138383.P14408152562701211407

`A109921(2*n+1)+A000040(n+1)`
-/

namespace A138383.P14408152562701211407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109921 (2 * n + 1) + A000040 (n + 1)

end

end A138383.P14408152562701211407

namespace A138383

/-- `A109921(2*n+1)+A000040(n+1)` -/
def P14408152562701211407.Spec : Prop :=
  ∀ n, P14408152562701211407.a n = A138383 n

end A138383

/-! ## A138383.P12699539922692858031

`A109921(2*n+1)+p?[A109921(n+1)]`
-/

namespace A138383.P12699539922692858031
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109921 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109921 (2 * n + 1) + f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A138383.P12699539922692858031

namespace A138383

/-- `A109921(2*n+1)+p?[A109921(n+1)]` -/
def P12699539922692858031.Spec : Prop :=
  ∀ n, P12699539922692858031.a n = A138383 n

end A138383

/-! ## A138383.P17542120356028135599

`A109921(2*n+1)+A109921(2*(n+1))`
-/

namespace A138383.P17542120356028135599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109921 (2 * n + 1) + A109921 (2 * (n + 1))

end

end A138383.P17542120356028135599

namespace A138383

/-- `A109921(2*n+1)+A109921(2*(n+1))` -/
def P17542120356028135599.Spec : Prop :=
  ∀ n, P17542120356028135599.a n = A138383 n

end A138383

/-!
# A138384: Reverse groups of five Fibonacci numbers.

The programs for A138384, the canonical program `A138384.P9990498103153441437` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A138384 has offset 0).

The definition of A138384 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A138384.P9990498103153441437

`11*a(n-5)+a(n-10)` with `a(0)=3, a(1)=2, a(2)=1, a(3)=1, a(4)=0, a(5)=34, a(6)=21, a(7)=13, a(8)=8, a(9)=5`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A138384

/-- `11*a(n-5)+a(n-10)` -/
def P9990498103153441437.Spec : Prop :=
  ∀ n, (P9990498103153441437.a n : ℤ) = A138384 n

theorem P9990498103153441437.correct : P9990498103153441437.Spec := by
  intro n
  simp only [A138384]

end A138384

/-! ## A138384.P9376480635524554212

`ogf((3+2x+x^2+x^3+x^5-x^6+2x^7-3x^8+5x^9)/(1-11x^5-x^10))`
-/

namespace A138384.P9376480635524554212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, 2, 1, 1, 0, 1, -1, 2, -3, 5] [1, 0, 0, 0, 0, -11, 0, 0, 0, 0, -1] n

end

end A138384.P9376480635524554212

namespace A138384

/-- `ogf((3+2x+x^2+x^3+x^5-x^6+2x^7-3x^8+5x^9)/(1-11x^5-x^10))` -/
def P9376480635524554212.Spec : Prop :=
  ∀ n, P9376480635524554212.a n = A138384 n

end A138384

/-! ## A138384.P3558360862723824669

`A000045(2*(2-n%5)+n)`
-/

namespace A138384.P3558360862723824669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (2 * (2 - ((n % 5 : ℕ) : ℤ)) + (n : ℤ)).toNat

end

end A138384.P3558360862723824669

namespace A138384

/-- `A000045(2*(2-n%5)+n)` -/
def P3558360862723824669.Spec : Prop :=
  ∀ n, P3558360862723824669.a n = A138384 n

end A138384

/-! ## A138384.P13443617433917494597

`A212804(A266084(n))`
-/

namespace A138384.P13443617433917494597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 (A266084 n).toNat

end

end A138384.P13443617433917494597

namespace A138384

/-- `A212804(A266084(n))` -/
def P13443617433917494597.Spec : Prop :=
  ∀ n, P13443617433917494597.a n = A138384 n

end A138384

/-! ## A138384.P16743475842757351785

`A000045(A266084(n)-1)`
-/

namespace A138384.P16743475842757351785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A266084 n - 1).toNat

end

end A138384.P16743475842757351785

namespace A138384

/-- `A000045(A266084(n)-1)` -/
def P16743475842757351785.Spec : Prop :=
  ∀ n, P16743475842757351785.a n = A138384 n

end A138384

/-! ## A138384.P7625074348645861420

`A000045(A074067(n+3)-3)`
-/

namespace A138384.P7625074348645861420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A074067 (n + 3) - 3).toNat

end

end A138384.P7625074348645861420

namespace A138384

/-- `A000045(A074067(n+3)-3)` -/
def P7625074348645861420.Spec : Prop :=
  ∀ n, P7625074348645861420.a n = A138384 n

end A138384

/-! ## A138384.P4641676635064722364

`A000045(5*A130497(n)-(n+1))`
-/

namespace A138384.P4641676635064722364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (5 * A130497 n - (n + 1 : ℤ)).toNat

end

end A138384.P4641676635064722364

namespace A138384

/-- `A000045(5*A130497(n)-(n+1))` -/
def P4641676635064722364.Spec : Prop :=
  ∀ n, P4641676635064722364.a n = A138384 n

end A138384

/-! ## A138384.P15632981066266556852

`A000045(n+4-A004520(n)%10)`
-/

namespace A138384.P15632981066266556852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 ((n + 4 : ℤ) - Int.tmod (A004520 n) 10).toNat

end

end A138384.P15632981066266556852

namespace A138384

/-- `A000045(n+4-A004520(n)%10)` -/
def P15632981066266556852.Spec : Prop :=
  ∀ n, P15632981066266556852.a n = A138384 n

end A138384

/-! ## A138384.P2733360441585850797

`A000045(A020710(n)-A141518(n))`
-/

namespace A138384.P2733360441585850797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A020710 n - A141518 n).toNat

end

end A138384.P2733360441585850797

namespace A138384

/-- `A000045(A020710(n)-A141518(n))` -/
def P2733360441585850797.Spec : Prop :=
  ∀ n, P2733360441585850797.a n = A138384 n

end A138384

/-! ## A138384.P10877242831195258285

`A212804(A020715(n)-A141518(n))`
-/

namespace A138384.P10877242831195258285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 (A020715 n - A141518 n).toNat

end

end A138384.P10877242831195258285

namespace A138384

/-- `A212804(A020715(n)-A141518(n))` -/
def P10877242831195258285.Spec : Prop :=
  ∀ n, P10877242831195258285.a n = A138384 n

end A138384

/-!
# A138386: The initial values of the m-th row of table T of A137918 as m tends to infinity.

The programs for A138386, there is no canonical definition to state claims against.
-/

/-! ## A138386.P2253793810659695022

`A061598(A292398(n))`
-/

namespace A138386.P2253793810659695022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061598 (A292398 n).toNat

end

end A138386.P2253793810659695022

/-! ## A138386.P2989808076190163967

`A289496(A272944(n)+1)`
-/

namespace A138386.P2989808076190163967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289496 (A272944 n + 1).toNat

end

end A138386.P2989808076190163967

/-!
# A138387: Numbers of unlabeled graphs with n vertices and 2 unicyclic components.

The programs for A138387, there is no canonical definition to state claims against.
-/

/-! ## A138387.P2077438954357410940

`A137918(∑[ceil(n/3)+1]+6)`
-/

namespace A138387.P2077438954357410940
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℚ) / 3⌉ + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137918 (∑ j ∈ Finset.range (n + 1), f1 j + 6).toNat

end

end A138387.P2077438954357410940

/-! ## A138387.P8716290136531125142

`record[A137918(n+7)%A137918(n+6)]`
-/

namespace A138387.P8716290136531125142
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A137918 (n + 7)) (A137918 (n + 6))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A138387.P8716290136531125142

/-! ## A138387.P16307198030375261888

`A063727(n)-A343344(A248518(2*(n+2)))`
-/

namespace A138387.P16307198030375261888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063727 n - A343344 (A248518 (2 * (n + 2))).toNat

end

end A138387.P16307198030375261888

/-!
# A138388: Numbers of unlabeled graphs with n vertices and 3 unicyclic components.

The programs for A138388, there is no canonical definition to state claims against.
-/

/-! ## A138388.P10593219516611549507

`A362598(A300377(n+2))`
-/

namespace A138388.P10593219516611549507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362598 (A300377 (n + 2)).toNat

end

end A138388.P10593219516611549507

/-! ## A138388.P15540278136732988208

`∑[A366844(∑[A260647(n+1)])]`
-/

namespace A138388.P15540278136732988208
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260647 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366844 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A138388.P15540278136732988208

/-!
# A138389: Binomial primes: positive integers n such that every i not coprime to n and not exceeding n/2 does not divide binomial(n-i-1,i-1).

The programs for A138389, there is no canonical definition to state claims against.
-/

/-! ## A138389.P9293895150294001443

`∪[A000430(n+1), A269135(n+1)]`
-/

namespace A138389.P9293895150294001443
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000430 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269135 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A138389.P9293895150294001443

/-! ## A138389.P6223553779312077866

`∪[A135785(n+1), A269135(n+1)]`
-/

namespace A138389.P6223553779312077866
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135785 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269135 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A138389.P6223553779312077866

/-! ## A138389.P10014859818604474693

`∪[A166684(n+1), A269135(n+1)]`
-/

namespace A138389.P10014859818604474693
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166684 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269135 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A138389.P10014859818604474693

/-! ## A138389.P18227352958651874463

`∪[A269135(n+1), A280619(n+1)]`
-/

namespace A138389.P18227352958651874463
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269135 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280619 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A138389.P18227352958651874463

/-! ## A138389.P6864787344698515866

`eq[0, A178101(n+1)]+1`
-/

namespace A138389.P6864787344698515866
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178101 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A138389.P6864787344698515866

/-! ## A138389.P17681018275862530452

`eq[1, A159285(a(A178101(n)))]` with `a(0)=2`
-/

namespace A138389.P17681018275862530452
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f2 =>
  A159285 (f2 (A178101 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A138389.P17681018275862530452

/-! ## A138389.P8590014206788491322

`eq[2, A316388(a(A178101(n)))]` with `a(0)=4`
-/

namespace A138389.P8590014206788491322
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.rec [4] fun n f2 =>
  A316388 (f2 (A178101 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A138389.P8590014206788491322

/-! ## A138389.P11990559234574105189

`eq[2, A067694(a(A178101(n)))]` with `a(0)=5`
-/

namespace A138389.P11990559234574105189
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.rec [5] fun n f2 =>
  A067694 (f2 (A178101 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A138389.P11990559234574105189

/-! ## A138389.P1271867198128255176

`eq[0, A178109(n+1)]+1`
-/

namespace A138389.P1271867198128255176
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178109 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A138389.P1271867198128255176

/-!
# A138390: Record values in A138385.

The programs for A138390, there is no canonical definition to state claims against.
-/

/-! ## A138390.P15472788283332765935

`comp[floor(sinh(n-7)+n)]`
-/

namespace A138390.P15472788283332765935
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sinh ((n : ℤ) - 7 : ℝ) + (n : ℝ)⌋

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A138390.P15472788283332765935

/-! ## A138390.P17744182048932800890

`comp[floor(n-sinh(7-n))]`
-/

namespace A138390.P17744182048932800890
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) - Real.sinh (7 - (n : ℤ) : ℝ)⌋

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A138390.P17744182048932800890

/-! ## A138390.P12511808869756854941

`comp[n-ceil(sinh(7-n))]`
-/

namespace A138390.P12511808869756854941
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ⌈Real.sinh (7 - (n : ℤ) : ℝ)⌉

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A138390.P12511808869756854941

/-! ## A138390.P4603785065510939148

`comp[ceil(ϕ*a(n-1))]` with `a(0)=1, a(1)=9, a(2)=4`
-/

namespace A138390.P4603785065510939148
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 9, 4] fun n f1 =>
  ⌈Real.goldenRatio * (f1 (n - 1) : ℝ)⌉

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A138390.P4603785065510939148

/-! ## A138390.P12196909047939419314

`comp[A026584(∑[n+4])]`
-/

namespace A138390.P12196909047939419314
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026584 (∑ j ∈ Finset.range (n + 1), f2 j)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A138390.P12196909047939419314

/-!
# A138392: Hankel transform of A062992 with interpolated zeros.

The programs for A138392, there is no canonical definition to state claims against.
-/

/-! ## A138392.P3043318814759821122

`A011782(∑[n])*A026834(3*n+2)`
-/

namespace A138392.P3043318814759821122
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (∑ j ∈ Finset.range (n + 1), f1 j) * A026834 (3 * n + 2)

end

end A138392.P3043318814759821122

/-! ## A138392.P5837696579338794679

`(Δ[A002620(n)]+2)/2*A006125(n+1)`
-/

namespace A138392.P5837696579338794679
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n + 2 : ℚ) / 2 * (A006125 (n + 1) : ℚ)

end

end A138392.P5837696579338794679

/-!
# A138393: Numbers of form 8k+1 which are not squares.

The programs for A138393, there is no canonical definition to state claims against.
-/

/-! ## A138393.P7637912492472746476

`8*comp[∑[n]]+1`
-/

namespace A138393.P7637912492472746476
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8 * SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 1

end

end A138393.P7637912492472746476

/-! ## A138393.P18057167021097348721

`or(1, 8*comp[∑[n]])`
-/

namespace A138393.P18057167021097348721
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (8 * SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A138393.P18057167021097348721

/-! ## A138393.P3988159144098466896

`xor(1, 8*comp[∑[n]])`
-/

namespace A138393.P3988159144098466896
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (8 * SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A138393.P3988159144098466896

/-! ## A138393.P12108545270038973121

`ceil(2/acot(4*comp[∑[n]]))`
-/

namespace A138393.P12108545270038973121
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈2 / SequenceMachineLib.acot (4 * SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℝ)⌉

end

end A138393.P12108545270038973121

/-! ## A138393.P1515585420473872765

`xor(3, 24*comp[C(n, 2)])/3`
-/

namespace A138393.P1515585420473872765
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 2

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.xor 3 (24 * SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) : ℚ) / 3

end

end A138393.P1515585420473872765

/-! ## A138393.P16494781291013796778

`-xor(8*comp[C(n, 2)], -1)`
-/

namespace A138393.P16494781291013796778
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.xor (8 * SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) (-1)

end

end A138393.P16494781291013796778

/-! ## A138393.P11438597017009818247

`A017077(comp[∑[n]])`
-/

namespace A138393.P11438597017009818247
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017077 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A138393.P11438597017009818247

/-! ## A138393.P9070989988712567068

`sqrt(A017078(comp[∑[n]]))`
-/

namespace A138393.P9070989988712567068
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A017078 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) : ℝ)

end

end A138393.P9070989988712567068

/-! ## A138393.P2548525137438688253

`A004768(comp[∑[n-1]])`
-/

namespace A138393.P2548525137438688253
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004768 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A138393.P2548525137438688253

/-! ## A138393.P5589483475626055831

`A004766(2*comp[∑[n]])`
-/

namespace A138393.P5589483475626055831
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004766 (2 * SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A138393.P5589483475626055831

/-!
# A138394: Smallest number with a(n) divisors is in A134865.

The programs for A138394, there is no canonical definition to state claims against.
-/

/-! ## A138394.P5507534206330847705

`A000005(A140753(n+1))`
-/

namespace A138394.P5507534206330847705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A140753 (n + 1)).toNat

end

end A138394.P5507534206330847705

/-! ## A138394.P3435362420959321395

`record[A140752(n+1)%A038875(n+1)]`
-/

namespace A138394.P3435362420959321395
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A140752 (n + 1)) (A038875 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A138394.P3435362420959321395

/-! ## A138394.P5236574981371739032

`record[∏{e}[A134865(n+1), #+1]%A140755(n+1)]`
-/

namespace A138394.P5236574981371739032
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134865 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((∏ p ∈ Nat.primeFactors (f2 n).natAbs, (Nat.factorization (f2 n).natAbs p + 1) : ℕ) : ℤ) (A140755 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A138394.P5236574981371739032

/-! ## A138394.P1403695198629780782

`A140752(∑[A034450(n+1)!])`
-/

namespace A138394.P1403695198629780782
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A034450 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140752 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A138394.P1403695198629780782

/-! ## A138394.P14726758639678202982

`∏{e}[A134865(A034450(n+1)!+n), A302834(#)]`
-/

namespace A138394.P14726758639678202982
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134865 (Nat.factorial (A034450 (n + 1)).toNat + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A302834 (Nat.factorization (f1 n).natAbs p)

end

end A138394.P14726758639678202982

/-!
# A138395: a(n) = 6*a(n-1) - 3*a(n-2), a(1) = 1, a(2) = 6.

The programs for A138395, the canonical program `A138395.P13020747131087724218` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A138395 has offset 1).

The definition of A138395 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `6*a(n-1)-3*a(n-2)` (program `A138395.P13020747131087724218`, by `A138395.P13020747131087724218.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A138395.P539101621202030157

`ogf(1/(1-6x+3x^2))`
-/

namespace A138395.P539101621202030157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1] [1, -6, 3] n

end

end A138395.P539101621202030157

namespace A138395

/-- `ogf(1/(1-6x+3x^2))` -/
def P539101621202030157.Spec : Prop :=
  ∀ n, P539101621202030157.a n = A138395 (n + 1)

end A138395

/-! ## A138395.P13020747131087724218

`6*a(n-1)-3*a(n-2)` with `a(0)=1, a(1)=6`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A138395

/-- `6*a(n-1)-3*a(n-2)` -/
def P13020747131087724218.Spec : Prop :=
  ∀ n, P13020747131087724218.a n = A138395 (n + 1)

theorem P13020747131087724218.correct : P13020747131087724218.Spec := by
  intro n
  simp only [A138395, Nat.add_sub_cancel]

end A138395

/-! ## A138395.P5602876804777918246

`((3+sqrt(6))^(n+1)-(3-sqrt(6))^(n+1))/(2*sqrt(6))`
-/

namespace A138395.P5602876804777918246
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((3 + Real.sqrt (6 : ℝ)) ^ (n + 1) - (3 - Real.sqrt (6 : ℝ)) ^ (n + 1)) / (2 * Real.sqrt (6 : ℝ))

end

end A138395.P5602876804777918246

namespace A138395

/-- `((3+sqrt(6))^(n+1)-(3-sqrt(6))^(n+1))/(2*sqrt(6))` -/
def P5602876804777918246.Spec : Prop :=
  ∀ n, P5602876804777918246.a n = (A138395 (n + 1) : ℝ)

theorem P5602876804777918246.correct : P5602876804777918246.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A138395, Nat.add_sub_cancel, A138395.P5602876804777918246.a, A138395.P13020747131087724218.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A138395, Nat.add_sub_cancel, A138395.P5602876804777918246.a, A138395.P13020747131087724218.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A138395

/-! ## A138395.P15663738199722236752

`ceil((sqrt(6)+3)*a(n-1))` with `a(0)=1`
-/

namespace A138395.P15663738199722236752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌈(Real.sqrt (6 : ℝ) + 3) * (a (n - 1) : ℝ)⌉

end

end A138395.P15663738199722236752

namespace A138395

/-- `ceil((sqrt(6)+3)*a(n-1))` -/
def P15663738199722236752.Spec : Prop :=
  ∀ n, P15663738199722236752.a n = A138395 (n + 1)

end A138395

/-! ## A138395.P9762260430175835791

`∑[floor((sqrt(6)+3)*a(n-1))]` with `a(0)=1`
-/

namespace A138395.P9762260430175835791
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  ⌊(Real.sqrt (6 : ℝ) + 3) * (f1 (n - 1) : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A138395.P9762260430175835791

namespace A138395

/-- `∑[floor((sqrt(6)+3)*a(n-1))]` -/
def P9762260430175835791.Spec : Prop :=
  ∀ n, P9762260430175835791.a n = A138395 (n + 1)

end A138395

/-! ## A138395.P6548836300150605397

`3*(2*a(n-1)-a(n-2))` with `a(0)=1, a(1)=6`
-/

namespace A138395.P6548836300150605397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 6] fun n a =>
  3 * (2 * a (n - 1) - a (n - 2))

end

end A138395.P6548836300150605397

namespace A138395

/-- `3*(2*a(n-1)-a(n-2))` -/
def P6548836300150605397.Spec : Prop :=
  ∀ n, P6548836300150605397.a n = A138395 (n + 1)

theorem P6548836300150605397.correct : P6548836300150605397.Spec := by
  intro n
  simp only [A138395, Nat.add_sub_cancel, A138395.P6548836300150605397.a, A138395.P13020747131087724218.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A138395

/-! ## A138395.P3115985910984480768

`∑[A158869(n)]`
-/

namespace A138395.P3115985910984480768
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158869 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A138395.P3115985910984480768

namespace A138395

/-- `∑[A158869(n)]` -/
def P3115985910984480768.Spec : Prop :=
  ∀ n, P3115985910984480768.a n = A138395 (n + 1)

end A138395

/-! ## A138395.P5994522382668912454

`Δ[A084120(n)/2]`
-/

namespace A138395.P5994522382668912454
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A084120 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A138395.P5994522382668912454

namespace A138395

/-- `Δ[A084120(n)/2]` -/
def P5994522382668912454.Spec : Prop :=
  ∀ n, P5994522382668912454.a n = (A138395 (n + 1) : ℚ)

end A138395

/-! ## A138395.P7650720458276099574

`∑[A084120(n+1)/3]`
-/

namespace A138395.P7650720458276099574
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A084120 (n + 1) : ℚ) / 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A138395.P7650720458276099574

namespace A138395

/-- `∑[A084120(n+1)/3]` -/
def P7650720458276099574.Spec : Prop :=
  ∀ n, P7650720458276099574.a n = (A138395 (n + 1) : ℚ)

end A138395

/-! ## A138395.P1145024594236104858

`A164550(n)-a(n-1)` with `a(0)=1`
-/

namespace A138395.P1145024594236104858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A164550 n - a (n - 1)

end

end A138395.P1145024594236104858

namespace A138395

/-- `A164550(n)-a(n-1)` -/
def P1145024594236104858.Spec : Prop :=
  ∀ n, P1145024594236104858.a n = A138395 (n + 1)

end A138395

/-! ## A138395.P14909535048685892540

`Δ[A077288(n)]*A056449(n)`
-/

namespace A138395.P14909535048685892540
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077288 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A056449 n

end

end A138395.P14909535048685892540

namespace A138395

/-- `Δ[A077288(n)]*A056449(n)` -/
def P14909535048685892540.Spec : Prop :=
  ∀ n, P14909535048685892540.a n = A138395 (n + 1)

end A138395

/-! ## A138395.P4914553088539524869

`Δ[A181442(n)]*A056449(n)`
-/

namespace A138395.P4914553088539524869
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181442 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A056449 n

end

end A138395.P4914553088539524869

namespace A138395

/-- `Δ[A181442(n)]*A056449(n)` -/
def P4914553088539524869.Spec : Prop :=
  ∀ n, P4914553088539524869.a n = A138395 (n + 1)

end A138395

/-! ## A138395.P8093932845516316386

`A038754(n)*A085376(n+1)`
-/

namespace A138395.P8093932845516316386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038754 n * A085376 (n + 1)

end

end A138395.P8093932845516316386

namespace A138395

/-- `A038754(n)*A085376(n+1)` -/
def P8093932845516316386.Spec : Prop :=
  ∀ n, P8093932845516316386.a n = A138395 (n + 1)

end A138395

/-! ## A138395.P10311432985381609787

`∑[A164550(n)]+1-A084120(n)`
-/

namespace A138395.P10311432985381609787
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164550 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (1 - A084120 n)

end

end A138395.P10311432985381609787

namespace A138395

/-- `∑[A164550(n)]+1-A084120(n)` -/
def P10311432985381609787.Spec : Prop :=
  ∀ n, P10311432985381609787.a n = A138395 (n + 1)

end A138395

/-! ## A138395.P15736203232824268132

`∑[A129445(n+1)]*A038754(n)`
-/

namespace A138395.P15736203232824268132
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129445 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A038754 n

end

end A138395.P15736203232824268132

namespace A138395

/-- `∑[A129445(n+1)]*A038754(n)` -/
def P15736203232824268132.Spec : Prop :=
  ∀ n, P15736203232824268132.a n = A138395 (n + 1)

end A138395

/-!
# A138398: Values of records in A140067.

The programs for A138398, there is no canonical definition to state claims against.
-/

/-! ## A138398.P12652652016765205542

`record[A137849(n+1)]`
-/

namespace A138398.P12652652016765205542
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137849 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A138398.P12652652016765205542

/-! ## A138398.P18130163226896530650

`record[1-A241972(n+1)+n]`
-/

namespace A138398.P18130163226896530650
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A241972 (n + 1) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A138398.P18130163226896530650

/-! ## A138398.P16350985118708999737

`A137849(A140067(n+1))`
-/

namespace A138398.P16350985118708999737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137849 (A140067 (n + 1)).toNat

end

end A138398.P16350985118708999737

/-! ## A138398.P17226489354121236290

`record[n-A023443(A241972(n+1))]`
-/

namespace A138398.P17226489354121236290
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A023443 (A241972 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A138398.P17226489354121236290

/-! ## A138398.P10903586745674486942

`record[A061800(n)-A241972(n+1)]`
-/

namespace A138398.P10903586745674486942
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061800 n - A241972 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A138398.P10903586745674486942

/-! ## A138398.P10882941505924379325

`record[A008619(n)-A241972(A008619(n))]`
-/

namespace A138398.P10882941505924379325
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n - A241972 (A008619 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A138398.P10882941505924379325

