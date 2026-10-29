import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C004
import Seq.B000.C005
import Seq.B000.C006
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
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C033
import Seq.B000.C035
import Seq.B000.C038
import Seq.B000.C041
import Seq.B000.C042
import Seq.B000.C044
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C008
import Seq.B001.C009
import Seq.B001.C010
import Seq.B001.C011
import Seq.B001.C012
import Seq.B001.C013
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C004
import Seq.B002.C006
import Seq.B002.C007
import Seq.B002.C008
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
import Seq.B006.C001
import Seq.B007.C000
import Seq.B008.C000
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
import Seq.B012.C000
import Seq.Opaque.C000
import Seq.Opaque.C001
import Seq.Opaque.C003
import Seq.Opaque.C004
import Seq.Opaque.C005
import Seq.Opaque.C006
import Seq.Opaque.C007
import Seq.Opaque.C008
import Seq.Opaque.C009
import Seq.Opaque.C010
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

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A102501: Primes of the concatenated form 7nn7.

The programs for A102501, there is no canonical definition to state claims against.
-/

/-! ## A102501.P6233800183365106196

`A100897(A102500(n+1))`
-/

namespace A102501.P6233800183365106196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100897 (A102500 (n + 1)).toNat

end

end A102501.P6233800183365106196

/-! ## A102501.P16991443434841474324

`p?[A100897(n)]`
-/

namespace A102501.P16991443434841474324
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100897 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A102501.P16991443434841474324

/-! ## A102501.P17258266915399507139

`∩[A297994(n+1), A100897(n)]`
-/

namespace A102501.P17258266915399507139
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297994 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100897 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A102501.P17258266915399507139

/-! ## A102501.P12101054577667460627

`∩[A100897(n), A297994(A008619(2*n))]`
-/

namespace A102501.P12101054577667460627
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100897 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297994 (A008619 (2 * n)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A102501.P12101054577667460627

/-! ## A102501.P13828205397855544550

`p?[A102484(n+1)+A100846(n)-A100896(n)]`
-/

namespace A102501.P13828205397855544550
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102484 (n + 1) + (A100846 n - A100896 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A102501.P13828205397855544550

/-!
# A102502: Values of n for which the concatenation 9nn9 (from sequence A102484) are primes.

The programs for A102502, there is no canonical definition to state claims against.
-/

/-! ## A102502.P950214176445829617

`eq[1, ∑{e}[A102484(n+1), #]]`
-/

namespace A102502.P950214176445829617
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102484 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n).natAbs, Nat.factorization (f3 n).natAbs p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A102502.P950214176445829617

/-! ## A102502.P5154349492017256136

`eq[2, ∏{e}[A102484(n+1), A000040(#)]]`
-/

namespace A102502.P5154349492017256136
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102484 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f3 n).natAbs, A000040 (Nat.factorization (f3 n).natAbs p)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A102502.P5154349492017256136

/-! ## A102502.P6947598227622005208

`record[A213443(3*n+4)+A055396(n+1)]`
-/

namespace A102502.P6947598227622005208
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213443 (3 * n + 4) + A055396 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A102502.P6947598227622005208

/-! ## A102502.P2134564467762557504

`xor(A060990(A119052(n+1)), A333237(n+1))`
-/

namespace A102502.P2134564467762557504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A060990 (A119052 (n + 1)).toNat) (A333237 (n + 1))

end

end A102502.P2134564467762557504

/-! ## A102502.P4680971832927701815

`lt[A104461(n+1), A104477(A104464(2*(n+1)))]`
-/

namespace A102502.P4680971832927701815
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104461 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104477 (A104464 (2 * (n + 1))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A102502.P4680971832927701815

/-!
# A102503: Primes of the concatenated form 9nn9.

The programs for A102503, there is no canonical definition to state claims against.
-/

/-! ## A102503.P274991689548871758

`A102484(A102502(n+1)+1)`
-/

namespace A102503.P274991689548871758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102484 (A102502 (n + 1) + 1).toNat

end

end A102503.P274991689548871758

/-! ## A102503.P10859269585645069215

`p?[A102484(n+1)]`
-/

namespace A102503.P10859269585645069215
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102484 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A102503.P10859269585645069215

/-! ## A102503.P9767679750721520101

`p?[record[A102484(A052938(n))]]`
-/

namespace A102503.P9767679750721520101
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102484 (A052938 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A102503.P9767679750721520101

/-! ## A102503.P13001075011273032768

`p?[record[A102484(A106466(n))]]`
-/

namespace A102503.P13001075011273032768
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102484 (A106466 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A102503.P13001075011273032768

/-! ## A102503.P702394101960708570

`p?[record[A102484(A133310(n))]]`
-/

namespace A102503.P702394101960708570
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102484 (A133310 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A102503.P702394101960708570

/-!
# A102505: Integers k such that there exist integers x,y,z from {1,2,...,n-1} for which x*y*z = (k-x)*(k-y)*(k-z) and the factors x, y, z, k-x, k-y, k-z are all different.

The programs for A102505, there is no canonical definition to state claims against.
-/

/-! ## A102505.P17505747654024502193

`record[A102495(A128262(n+1)+2)]`
-/

namespace A102505.P17505747654024502193
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102495 (A128262 (n + 1) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A102505.P17505747654024502193

/-!
# A102508: Suppose there are equally spaced chairs around a round table. Then a(n) is the maximal number of chairs for which there exists a seating arrangement of n people around the table such that if a waiter puts two glasses (randomly) on the table in front of two (different) chairs, it is always possible to turn the table so that the two glasses end up in front of two seated persons.

The programs for A102508, there is no canonical definition to state claims against.
-/

/-! ## A102508.P9083858546755488390

`2*(∑[n]+1)-A293701(A280688(3*n+2))`
-/

namespace A102508.P9083858546755488390
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 * (∑ j ∈ Finset.range (n + 1), f1 j + 1) : ℕ) : ℤ) - A293701 (A280688 (3 * n + 2)).toNat

end

end A102508.P9083858546755488390

/-! ## A102508.P8419211645912491994

`A012222(A325799(n+1))+A002378(n)`
-/

namespace A102508.P8419211645912491994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012222 (A325799 (n + 1)).toNat + A002378 n

end

end A102508.P8419211645912491994

/-! ## A102508.P6212322611187516601

`A307460(A322838(n+1))+A002378(n)`
-/

namespace A102508.P6212322611187516601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307460 (A322838 (n + 1)).toNat + A002378 n

end

end A102508.P6212322611187516601

/-! ## A102508.P17654269169071160981

`A014206(n)-A131061(A014473(2*(n+2)))`
-/

namespace A102508.P17654269169071160981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014206 n - A131061 (A014473 (2 * (n + 2))).toNat

end

end A102508.P17654269169071160981

/-! ## A102508.P4581587777688304839

`record[or(∑{digits}[n, n*#], A091401(n+1))]`
-/

namespace A102508.P4581587777688304839
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((((SequenceMachineLib.digits10 (f2 n)).map fun (x : ℕ) => n * x).sum : ℕ) : ℤ) (A091401 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A102508.P4581587777688304839

/-!
# A102510: If n is squarefree then A090705(A100112(n)) else n.

The programs for A102510, there is no canonical definition to state claims against.
-/

/-! ## A102510.P14886379853960507676

`A102512(A102513(n+1))`
-/

namespace A102510.P14886379853960507676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102512 (A102513 (n + 1)).toNat

end

end A102510.P14886379853960507676

/-! ## A102510.P16371541820189747556

`A102513(A102512(n+1))`
-/

namespace A102510.P16371541820189747556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102513 (A102512 (n + 1)).toNat

end

end A102510.P16371541820189747556

/-!
# A102511: Sum(A008683(A102510(k)): k<=n).

The programs for A102511, the canonical program `A102511.P10514776173454835247` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A102511 has offset 1).

The definition of A102511 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A102511.P10514776173454835247

`∑[∏{e}[n+1, #!]]%2`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A102511

/-- `∑[∏{e}[n+1, #!]]%2` -/
def P10514776173454835247.Spec : Prop :=
  ∀ n, (P10514776173454835247.a n : ℤ) = A102511 (n + 1)

theorem P10514776173454835247.correct : P10514776173454835247.Spec := by
  intro n
  simp only [A102511, Nat.add_sub_cancel]

end A102511

/-! ## A102511.P2012178961769329501

`and(1, ∑[∏{e}[n+1, #!]])`
-/

namespace A102511.P2012178961769329501
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), Nat.factorial (Nat.factorization (f2 n) p)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A102511.P2012178961769329501

namespace A102511

/-- `and(1, ∑[∏{e}[n+1, #!]])` -/
def P2012178961769329501.Spec : Prop :=
  ∀ n, (P2012178961769329501.a n : ℤ) = A102511 (n + 1)

theorem P2012178961769329501.correct : P2012178961769329501.Spec := by
  intro n
  simp only [A102511, Nat.add_sub_cancel, A102511.P2012178961769329501.f2, A102511.P2012178961769329501.f1, A102511.P2012178961769329501.a, A102511.P10514776173454835247.f2, A102511.P10514776173454835247.f1, A102511.P10514776173454835247.a, SequenceMachineLib.memo_apply]
  try simp

end A102511

/-! ## A102511.P13894739069107376004

`∑[char[∏{p}[n, #]-1]]%2`
-/

namespace A102511.P13894739069107376004
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (f3 n), p : ℕ) : ℤ) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) % 2

end

end A102511.P13894739069107376004

namespace A102511

/-- `∑[char[∏{p}[n, #]-1]]%2` -/
def P13894739069107376004.Spec : Prop :=
  ∀ n, (P13894739069107376004.a n : ℤ) = A102511 (n + 1)

end A102511

/-! ## A102511.P763636985307618190

`and(1, ∑[char[∏{p}[n, #]-1]])`
-/

namespace A102511.P763636985307618190
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (f3 n), p : ℕ) : ℤ) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A102511.P763636985307618190

namespace A102511

/-- `and(1, ∑[char[∏{p}[n, #]-1]])` -/
def P763636985307618190.Spec : Prop :=
  ∀ n, (P763636985307618190.a n : ℤ) = A102511 (n + 1)

end A102511

/-! ## A102511.P3214323279979659838

`∑[ceil(atan(∏{e}[n+1, #]))]%2`
-/

namespace A102511.P3214323279979659838
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.arctan ((∏ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p : ℕ) : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) 2

end

end A102511.P3214323279979659838

namespace A102511

/-- `∑[ceil(atan(∏{e}[n+1, #]))]%2` -/
def P3214323279979659838.Spec : Prop :=
  ∀ n, P3214323279979659838.a n = A102511 (n + 1)

end A102511

/-! ## A102511.P5777510507839349470

`∑[floor(1/∏{e}[n+1, #])]%2`
-/

namespace A102511.P5777510507839349470
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊1 / ((∏ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p : ℕ) : ℚ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) 2

end

end A102511.P5777510507839349470

namespace A102511

/-- `∑[floor(1/∏{e}[n+1, #])]%2` -/
def P5777510507839349470.Spec : Prop :=
  ∀ n, P5777510507839349470.a n = A102511 (n + 1)

end A102511

/-! ## A102511.P665440870763544327

`and(1, ∑[floor(1/∏{e}[n+1, #])])`
-/

namespace A102511.P665440870763544327
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊1 / ((∏ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p : ℕ) : ℚ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A102511.P665440870763544327

namespace A102511

/-- `and(1, ∑[floor(1/∏{e}[n+1, #])])` -/
def P665440870763544327.Spec : Prop :=
  ∀ n, P665440870763544327.a n = A102511 (n + 1)

end A102511

/-! ## A102511.P14305205128158414795

`∑[char[n%∏{p}[n+1, #]]]%2`
-/

namespace A102511.P14305205128158414795
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % (∏ p ∈ Nat.primeFactors (f3 n), p)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) % 2

end

end A102511.P14305205128158414795

namespace A102511

/-- `∑[char[n%∏{p}[n+1, #]]]%2` -/
def P14305205128158414795.Spec : Prop :=
  ∀ n, (P14305205128158414795.a n : ℤ) = A102511 (n + 1)

end A102511

/-! ## A102511.P6093625580616688777

`∑[2^∑{e}[n+1, #-1]]%2`
-/

namespace A102511.P6093625580616688777
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (∑ p ∈ Nat.primeFactors (f2 n), ((Nat.factorization (f2 n) p : ℤ) - 1) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)) 2

end

end A102511.P6093625580616688777

namespace A102511

/-- `∑[2^∑{e}[n+1, #-1]]%2` -/
def P6093625580616688777.Spec : Prop :=
  ∀ n, P6093625580616688777.a n = A102511 (n + 1)

end A102511

/-! ## A102511.P5390456672442991104

`and(1, ∑[2^∑{e}[n+1, #-1]])`
-/

namespace A102511.P5390456672442991104
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (∑ p ∈ Nat.primeFactors (f2 n), ((Nat.factorization (f2 n) p : ℤ) - 1) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A102511.P5390456672442991104

namespace A102511

/-- `and(1, ∑[2^∑{e}[n+1, #-1]])` -/
def P5390456672442991104.Spec : Prop :=
  ∀ n, P5390456672442991104.a n = A102511 (n + 1)

end A102511

/-! ## A102511.P3361957857687268651

`∑[floor(∏{p}[n+1, #]/(n+1))]%2`
-/

namespace A102511.P3361957857687268651
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∏ p ∈ Nat.primeFactors (f2 n), p : ℕ) : ℚ) / (n + 1 : ℚ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) 2

end

end A102511.P3361957857687268651

namespace A102511

/-- `∑[floor(∏{p}[n+1, #]/(n+1))]%2` -/
def P3361957857687268651.Spec : Prop :=
  ∀ n, P3361957857687268651.a n = A102511 (n + 1)

end A102511

/-! ## A102511.P17283390486557359919

`∑[A002033(n)]%2`
-/

namespace A102511.P17283390486557359919
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002033 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) 2

end

end A102511.P17283390486557359919

namespace A102511

/-- `∑[A002033(n)]%2` -/
def P17283390486557359919.Spec : Prop :=
  ∀ n, P17283390486557359919.a n = A102511 (n + 1)

end A102511

/-! ## A102511.P17750746724329884268

`A025523(n+1)%2`
-/

namespace A102511.P17750746724329884268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A025523 (n + 1)) 2

end

end A102511.P17750746724329884268

namespace A102511

/-- `A025523(n+1)%2` -/
def P17750746724329884268.Spec : Prop :=
  ∀ n, P17750746724329884268.a n = A102511 (n + 1)

end A102511

/-! ## A102511.P2648394836517735452

`A081240(n+1)%2`
-/

namespace A102511.P2648394836517735452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A081240 (n + 1)) 2

end

end A102511.P2648394836517735452

namespace A102511

/-- `A081240(n+1)%2` -/
def P2648394836517735452.Spec : Prop :=
  ∀ n, P2648394836517735452.a n = A102511 (n + 1)

end A102511

/-! ## A102511.P6142959104321961319

`A085945(n+1)%2`
-/

namespace A102511.P6142959104321961319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A085945 (n + 1)) 2

end

end A102511.P6142959104321961319

namespace A102511

/-- `A085945(n+1)%2` -/
def P6142959104321961319.Spec : Prop :=
  ∀ n, P6142959104321961319.a n = A102511 (n + 1)

end A102511

/-! ## A102511.P16761453774480051857

`A173382(n+1)%2`
-/

namespace A102511.P16761453774480051857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A173382 (n + 1)) 2

end

end A102511.P16761453774480051857

namespace A102511

/-- `A173382(n+1)%2` -/
def P16761453774480051857.Spec : Prop :=
  ∀ n, P16761453774480051857.a n = A102511 (n + 1)

end A102511

/-! ## A102511.P3578168518488546097

`A292524(n+1)%2`
-/

namespace A102511.P3578168518488546097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A292524 (n + 1)) 2

end

end A102511.P3578168518488546097

namespace A102511

/-- `A292524(n+1)%2` -/
def P3578168518488546097.Spec : Prop :=
  ∀ n, P3578168518488546097.a n = A102511 (n + 1)

end A102511

/-! ## A102511.P8150231504590058048

`A320088(n+1)%2`
-/

namespace A102511.P8150231504590058048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A320088 (n + 1)) 2

end

end A102511.P8150231504590058048

namespace A102511

/-- `A320088(n+1)%2` -/
def P8150231504590058048.Spec : Prop :=
  ∀ n, P8150231504590058048.a n = A102511 (n + 1)

end A102511

/-! ## A102511.P12176783024870039522

`A320090(n+1)%2`
-/

namespace A102511.P12176783024870039522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A320090 (n + 1)) 2

end

end A102511.P12176783024870039522

namespace A102511

/-- `A320090(n+1)%2` -/
def P12176783024870039522.Spec : Prop :=
  ∀ n, P12176783024870039522.a n = A102511 (n + 1)

end A102511

/-! ## A102511.P17844346074526187879

`A320092(n+1)%2`
-/

namespace A102511.P17844346074526187879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A320092 (n + 1)) 2

end

end A102511.P17844346074526187879

namespace A102511

/-- `A320092(n+1)%2` -/
def P17844346074526187879.Spec : Prop :=
  ∀ n, P17844346074526187879.a n = A102511 (n + 1)

end A102511

/-!
# A102512: A102510(A102510(n)).

The programs for A102512, there is no canonical definition to state claims against.
-/

/-! ## A102512.P2073518163843559012

`A102510(A102510(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A102512.P2073518163843559012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102510 (A102510 (n + 1)).toNat

end

end A102512.P2073518163843559012

/-!
# A102513: Inverse permutation to A102510.

The programs for A102513, there is no canonical definition to state claims against.
-/

/-! ## A102513.P16498834460418808670

`A102514(A102510(n+1))`
-/

namespace A102513.P16498834460418808670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102514 (A102510 (n + 1)).toNat

end

end A102513.P16498834460418808670

/-! ## A102513.P1595200288132774491

`A102510(A102514(n-log2(1/2)))`
-/

namespace A102513.P1595200288132774491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102510 (A102514 (SequenceMachineLib.roundAway ((n : ℝ) - Real.logb 2 ((1 : ℚ) / 2 : ℝ))).toNat).toNat

end

end A102513.P1595200288132774491

/-!
# A102514: Inverse permutation to A102512.

The programs for A102514, there is no canonical definition to state claims against.
-/

/-! ## A102514.P14487945171424148902

`A102513(A102513(n+1))`
-/

namespace A102514.P14487945171424148902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102513 (A102513 (n + 1)).toNat

end

end A102514.P14487945171424148902

/-!
# A102515: a(n) = floor(1 + sqrt(2n + 1)).

The programs for A102515, the canonical program `A102515.P16770355387636139013` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A102515 has offset 0).

The definition of A102515 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(1+sqrt(2*n+1))` (program `A102515.P16770355387636139013`, by `A102515.P16770355387636139013.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A102515.P16770355387636139013

`floor(1+sqrt(2*n+1))`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A102515

/-- `floor(1+sqrt(2*n+1))` -/
def P16770355387636139013.Spec : Prop :=
  ∀ n, P16770355387636139013.a n = A102515 n

theorem P16770355387636139013.correct : P16770355387636139013.Spec := by
  intro n
  simp only [A102515]

end A102515

/-! ## A102515.P10420634140135197622

`A339399(n+1)+A339443(n+1)`
-/

namespace A102515.P10420634140135197622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339399 (n + 1) + A339443 (n + 1)

end

end A102515.P10420634140135197622

namespace A102515

/-- `A339399(n+1)+A339443(n+1)` -/
def P10420634140135197622.Spec : Prop :=
  ∀ n, P10420634140135197622.a n = A102515 n

end A102515

/-! ## A102515.P6045129697035525674

`ceil(record[sqrt(or(2, n))])`
-/

namespace A102515.P6045129697035525674
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (Nat.lor 2 n : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)⌉

end

end A102515.P6045129697035525674

namespace A102515

/-- `ceil(record[sqrt(or(2, n))])` -/
def P6045129697035525674.Spec : Prop :=
  ∀ n, P6045129697035525674.a n = A102515 n

end A102515

/-! ## A102515.P15220111134414950241

`ceil(record[sqrt(xor(2, n))])`
-/

namespace A102515.P15220111134414950241
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (Nat.xor 2 n : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)⌉

end

end A102515.P15220111134414950241

namespace A102515

/-- `ceil(record[sqrt(xor(2, n))])` -/
def P15220111134414950241.Spec : Prop :=
  ∀ n, P15220111134414950241.a n = A102515 n

end A102515

/-! ## A102515.P14111048333676599242

`floor(record[sqrt(xor(1, n))])+1`
-/

namespace A102515.P14111048333676599242
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (Nat.xor 1 n : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)⌋ + 1

end

end A102515.P14111048333676599242

namespace A102515

/-- `floor(record[sqrt(xor(1, n))])+1` -/
def P14111048333676599242.Spec : Prop :=
  ∀ n, P14111048333676599242.a n = A102515 n

end A102515

/-! ## A102515.P16258016114391867177

`∑[dr(Δ[ceil(sqrt(2*n))])]`
-/

namespace A102515.P16258016114391867177
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (2 * n : ℝ)⌉

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (f2 (n + 1) - f2 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A102515.P16258016114391867177

namespace A102515

/-- `∑[dr(Δ[ceil(sqrt(2*n))])]` -/
def P16258016114391867177.Spec : Prop :=
  ∀ n, (P16258016114391867177.a n : ℤ) = A102515 n

end A102515

/-! ## A102515.P17161913680574112883

`floor(sqrt(or(1, n)+n))+1`
-/

namespace A102515.P17161913680574112883
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.sqrt (Nat.lor 1 n + n) + 1

end

end A102515.P17161913680574112883

namespace A102515

/-- `floor(sqrt(or(1, n)+n))+1` -/
def P17161913680574112883.Spec : Prop :=
  ∀ n, (P17161913680574112883.a n : ℤ) = A102515 n

end A102515

/-! ## A102515.P5158869523491577026

`comp[∑[or(1, n-1)]]-n`
-/

namespace A102515.P5158869523491577026
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 ((n : ℤ) - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - (n : ℤ)

end

end A102515.P5158869523491577026

namespace A102515

/-- `comp[∑[or(1, n-1)]]-n` -/
def P5158869523491577026.Spec : Prop :=
  ∀ n, P5158869523491577026.a n = A102515 n

end A102515

/-! ## A102515.P1382988838756021569

`round(sqrt(∑[char[C(n, 2)]+2]))`
-/

namespace A102515.P1382988838756021569
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = n then 1 else 0) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℝ))

end

end A102515.P1382988838756021569

namespace A102515

/-- `round(sqrt(∑[char[C(n, 2)]+2]))` -/
def P1382988838756021569.Spec : Prop :=
  ∀ n, P1382988838756021569.a n = A102515 n

end A102515

/-! ## A102515.P2197837725967666971

`round(sqrt(or(1, comp[∑[n]]+n)))`
-/

namespace A102515.P2197837725967666971
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (Nat.lor 1 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + n) : ℝ))

end

end A102515.P2197837725967666971

namespace A102515

/-- `round(sqrt(or(1, comp[∑[n]]+n)))` -/
def P2197837725967666971.Spec : Prop :=
  ∀ n, P2197837725967666971.a n = A102515 n

end A102515

/-! ## A102515.P12655520245667322507

`round(sqrt(comp[n^(n%2+1)]))`
-/

namespace A102515.P12655520245667322507
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ (n % 2 + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℝ))

end

end A102515.P12655520245667322507

namespace A102515

/-- `round(sqrt(comp[n^(n%2+1)]))` -/
def P12655520245667322507.Spec : Prop :=
  ∀ n, P12655520245667322507.a n = A102515 n

end A102515

/-! ## A102515.P2793996515895538422

`ceil(sqrt(2*(n+1)))%(n+3)`
-/

namespace A102515.P2793996515895538422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ⌈Real.sqrt (2 * (n + 1) : ℝ)⌉ (n + 3 : ℤ)

end

end A102515.P2793996515895538422

namespace A102515

/-- `ceil(sqrt(2*(n+1)))%(n+3)` -/
def P2793996515895538422.Spec : Prop :=
  ∀ n, P2793996515895538422.a n = A102515 n

end A102515

/-! ## A102515.P5931113289207606140

`2-floor(a(n-1)²/(n+1)-a(n-1))` with `a(0)=2`
-/

namespace A102515.P5931113289207606140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  2 - ⌊(a (n - 1) ^ 2 : ℚ) / (n + 1 : ℚ) - (a (n - 1) : ℚ)⌋

end

end A102515.P5931113289207606140

namespace A102515

/-- `2-floor(a(n-1)²/(n+1)-a(n-1))` -/
def P5931113289207606140.Spec : Prop :=
  ∀ n, P5931113289207606140.a n = A102515 n

end A102515

/-! ## A102515.P5755262228571556745

`2-floor(((a(n-1)-n)*a(n-1)-2)/n)` with `a(0)=2`
-/

namespace A102515.P5755262228571556745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  2 - ⌊((a (n - 1) - (n : ℤ)) * a (n - 1) - 2 : ℚ) / (n : ℚ)⌋

end

end A102515.P5755262228571556745

namespace A102515

/-- `2-floor(((a(n-1)-n)*a(n-1)-2)/n)` -/
def P5755262228571556745.Spec : Prop :=
  ∀ n, P5755262228571556745.a n = A102515 n

end A102515

/-! ## A102515.P9995825911726978344

`A101776(or(1, n))`
-/

namespace A102515.P9995825911726978344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101776 (Nat.lor 1 n)

end

end A102515.P9995825911726978344

namespace A102515

/-- `A101776(or(1, n))` -/
def P9995825911726978344.Spec : Prop :=
  ∀ n, P9995825911726978344.a n = A102515 n

end A102515

/-! ## A102515.P1393620483506431718

`A103128(n+1)+1`
-/

namespace A102515.P1393620483506431718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103128 (n + 1) + 1

end

end A102515.P1393620483506431718

namespace A102515

/-- `A103128(n+1)+1` -/
def P1393620483506431718.Spec : Prop :=
  ∀ n, P1393620483506431718.a n = A102515 n

end A102515

/-! ## A102515.P16681768875681005167

`A183572(n+1)-n`
-/

namespace A102515.P16681768875681005167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183572 (n + 1) - (n : ℤ)

end

end A102515.P16681768875681005167

namespace A102515

/-- `A183572(n+1)-n` -/
def P16681768875681005167.Spec : Prop :=
  ∀ n, P16681768875681005167.a n = A102515 n

end A102515

/-! ## A102515.P4328113700743871655

`ceil(sqrt(A004277(n+1)))`
-/

namespace A102515.P4328113700743871655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A004277 (n + 1) : ℝ)⌉

end

end A102515.P4328113700743871655

namespace A102515

/-- `ceil(sqrt(A004277(n+1)))` -/
def P4328113700743871655.Spec : Prop :=
  ∀ n, P4328113700743871655.a n = A102515 n

end A102515

/-! ## A102515.P13905353863157276383

`ceil(sqrt(A005843(n+1)))`
-/

namespace A102515.P13905353863157276383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A005843 (n + 1) : ℝ)⌉

end

end A102515.P13905353863157276383

namespace A102515

/-- `ceil(sqrt(A005843(n+1)))` -/
def P13905353863157276383.Spec : Prop :=
  ∀ n, P13905353863157276383.a n = A102515 n

end A102515

/-! ## A102515.P4310286618475200746

`ceil(sqrt(A042964(n+1)))`
-/

namespace A102515.P4310286618475200746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A042964 (n + 1) : ℝ)⌉

end

end A102515.P4310286618475200746

namespace A102515

/-- `ceil(sqrt(A042964(n+1)))` -/
def P4310286618475200746.Spec : Prop :=
  ∀ n, P4310286618475200746.a n = A102515 n

end A102515

/-!
# A102516: Sum C(n-3k,3k+1), k=0..floor(n/6).

The programs for A102516, the canonical program `A102516.P6892957859011433415` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A102516 has offset 0).

The definition of A102516 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A102516.P6892957859011433415

`ogf((x-x^2)/(1-3x+3x^2-x^3-x^6))`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A102516

/-- `ogf((x-x^2)/(1-3x+3x^2-x^3-x^6))` -/
def P6892957859011433415.Spec : Prop :=
  ∀ n, P6892957859011433415.a n = A102516 n

theorem P6892957859011433415.correct : P6892957859011433415.Spec := by
  intro n
  simp only [A102516]

end A102516

/-! ## A102516.P15752394676013825574

`∑[A100134(n)]-A100134(n)`
-/

namespace A102516.P15752394676013825574
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100134 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A100134 n

end

end A102516.P15752394676013825574

namespace A102516

/-- `∑[A100134(n)]-A100134(n)` -/
def P15752394676013825574.Spec : Prop :=
  ∀ n, P15752394676013825574.a n = A102516 n

end A102516

/-! ## A102516.P8435803866044279069

`Δ[A101551(n+2)]`
-/

namespace A102516.P8435803866044279069
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101551 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A102516.P8435803866044279069

namespace A102516

/-- `Δ[A101551(n+2)]` -/
def P8435803866044279069.Spec : Prop :=
  ∀ n, P8435803866044279069.a n = A102516 n

end A102516

/-! ## A102516.P10509072960448237920

`record[Δ[A101551(A004396(n))]]`
-/

namespace A102516.P10509072960448237920
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101551 (A004396 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A102516.P10509072960448237920

namespace A102516

/-- `record[Δ[A101551(A004396(n))]]` -/
def P10509072960448237920.Spec : Prop :=
  ∀ n, P10509072960448237920.a n = A102516 n

end A102516

/-! ## A102516.P14513338318001633973

`record[Δ[A101551(A028391(n))]]`
-/

namespace A102516.P14513338318001633973
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101551 (A028391 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A102516.P14513338318001633973

namespace A102516

/-- `record[Δ[A101551(A028391(n))]]` -/
def P14513338318001633973.Spec : Prop :=
  ∀ n, P14513338318001633973.a n = A102516 n

end A102516

/-! ## A102516.P15888834532831105581

`A101551(n+3)-A101551(n+2)`
-/

namespace A102516.P15888834532831105581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101551 (n + 3) - A101551 (n + 2)

end

end A102516.P15888834532831105581

namespace A102516

/-- `A101551(n+3)-A101551(n+2)` -/
def P15888834532831105581.Spec : Prop :=
  ∀ n, P15888834532831105581.a n = A102516 n

end A102516

/-! ## A102516.P6087683711994341093

`Δ[Δ[A100134(n+3)]]`
-/

namespace A102516.P6087683711994341093
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100134 (n + 3)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A102516.P6087683711994341093

namespace A102516

/-- `Δ[Δ[A100134(n+3)]]` -/
def P6087683711994341093.Spec : Prop :=
  ∀ n, P6087683711994341093.a n = A102516 n

end A102516

/-!
# A102517: Expansion of (1+x^2)/((1-x+x^2)*(1+2*x^2)).

The programs for A102517, the canonical program `A102517.P11941214508308388376` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A102517 has offset 0).

The definition of A102517 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1+x^2)/(1-x+3x^2-2x^3+2x^4))` (program `A102517.P11941214508308388376`, by `A102517.P11941214508308388376.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A102517.P11941214508308388376

`ogf((1+x^2)/(1-x+3x^2-2x^3+2x^4))`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A102517

/-- `ogf((1+x^2)/(1-x+3x^2-2x^3+2x^4))` -/
def P11941214508308388376.Spec : Prop :=
  ∀ n, P11941214508308388376.a n = A102517 n

theorem P11941214508308388376.correct : P11941214508308388376.Spec := by
  intro n
  simp only [A102517]

end A102517

/-! ## A102517.P7506969643384127384

`a(n-1)-3*a(n-2)+2*a(n-3)-2*a(n-4)` with `a(0)=1, a(1)=1, a(2)=-1, a(3)=-2`
-/

namespace A102517.P7506969643384127384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, -1, -2] fun n a =>
  a (n - 1) - 3 * a (n - 2) + 2 * a (n - 3) - 2 * a (n - 4)

end

end A102517.P7506969643384127384

namespace A102517

/-- `a(n-1)-3*a(n-2)+2*a(n-3)-2*a(n-4)` -/
def P7506969643384127384.Spec : Prop :=
  ∀ n, P7506969643384127384.a n = A102517 n

end A102517

/-! ## A102517.P1591923754135437223

`∑[∑[a(n-1)-a(n-2)]-2*a(n-2)]` with `a(0)=1, a(1)=0`
-/

namespace A102517.P1591923754135437223
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n f2 =>
  f2 (n - 1) - f2 (n - 2)

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n f1 =>
  ∑ j ∈ Finset.range (n + 1), f2 j - 2 * f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A102517.P1591923754135437223

namespace A102517

/-- `∑[∑[a(n-1)-a(n-2)]-2*a(n-2)]` -/
def P1591923754135437223.Spec : Prop :=
  ∀ n, P1591923754135437223.a n = A102517 n

end A102517

/-! ## A102517.P2503765756951631690

`∑[∑[a(n-1)-a(n-2)]-a(n-2)-a(n-2)]` with `a(0)=1, a(1)=0`
-/

namespace A102517.P2503765756951631690
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n f2 =>
  f2 (n - 1) - f2 (n - 2)

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n f1 =>
  ∑ j ∈ Finset.range (n + 1), f2 j - f1 (n - 2) - f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A102517.P2503765756951631690

namespace A102517

/-- `∑[∑[a(n-1)-a(n-2)]-a(n-2)-a(n-2)]` -/
def P2503765756951631690.Spec : Prop :=
  ∀ n, P2503765756951631690.a n = A102517 n

end A102517

/-! ## A102517.P8169003402609923417

`A128834(n)-2*a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A102517.P8169003402609923417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A128834 n - 2 * a (n - 2)

end

end A102517.P8169003402609923417

namespace A102517

/-- `A128834(n)-2*a(n-2)` -/
def P8169003402609923417.Spec : Prop :=
  ∀ n, P8169003402609923417.a n = A102517 n

end A102517

/-!
# A102518: a(n) = Sum_{k=0..n} binomial(n, k) * Sum_{j=0..k} binomial(3k, 3j).

The programs for A102518, the canonical program `A102518.P534865779481100969` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A102518 has offset 0).

The definition of A102518 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A102518.P534865779481100969

`ogf((1-6x)/(1-9x))`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A102518

/-- `ogf((1-6x)/(1-9x))` -/
def P534865779481100969.Spec : Prop :=
  ∀ n, P534865779481100969.a n = A102518 n

theorem P534865779481100969.correct : P534865779481100969.Spec := by
  intro n
  simp only [A102518]

end A102518

/-! ## A102518.P10804728541855596924

`abs(record[-(-3)^n])`
-/

namespace A102518.P10804728541855596924
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -((-3) ^ n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)|

end

end A102518.P10804728541855596924

namespace A102518

/-- `abs(record[-(-3)^n])` -/
def P10804728541855596924.Spec : Prop :=
  ∀ n, P10804728541855596924.a n = A102518 n

end A102518

/-! ## A102518.P18050905713503197232

`sqrt(3)^record[lcm(2, n)]`
-/

namespace A102518.P18050905713503197232
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 2 n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (3 : ℝ) ^ f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A102518.P18050905713503197232

namespace A102518

/-- `sqrt(3)^record[lcm(2, n)]` -/
def P18050905713503197232.Spec : Prop :=
  ∀ n, P18050905713503197232.a n = (A102518 n : ℝ)

end A102518

/-! ## A102518.P9004217342570451050

`record[3^gcd(n, ∑[n])]`
-/

namespace A102518.P9004217342570451050
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ Nat.gcd n (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A102518.P9004217342570451050

namespace A102518

/-- `record[3^gcd(n, ∑[n])]` -/
def P9004217342570451050.Spec : Prop :=
  ∀ n, (P9004217342570451050.a n : ℤ) = A102518 n

end A102518

/-! ## A102518.P939475754114259482

`3^ceil(log(cosh(n)²))`
-/

namespace A102518.P939475754114259482
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) ^ (⌈Real.log (Real.cosh (n : ℝ) ^ 2)⌉ : ℤ)

end

end A102518.P939475754114259482

namespace A102518

/-- `3^ceil(log(cosh(n)²))` -/
def P939475754114259482.Spec : Prop :=
  ∀ n, P939475754114259482.a n = (A102518 n : ℚ)

end A102518

/-! ## A102518.P12924990681448573222

`9*a(n-1)` with `a(0)=1, a(1)=3`
-/

namespace A102518.P12924990681448573222
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 3] fun n a =>
  9 * a (n - 1)

end

end A102518.P12924990681448573222

namespace A102518

/-- `9*a(n-1)` -/
def P12924990681448573222.Spec : Prop :=
  ∀ n, (P12924990681448573222.a n : ℤ) = A102518 n

end A102518

/-! ## A102518.P18264095851322980283

`ceil(3^(2*n-1))`
-/

namespace A102518.P18264095851322980283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(3 : ℚ) ^ ((2 * n : ℤ) - 1 : ℤ)⌉

end

end A102518.P18264095851322980283

namespace A102518

/-- `ceil(3^(2*n-1))` -/
def P18264095851322980283.Spec : Prop :=
  ∀ n, P18264095851322980283.a n = A102518 n

end A102518

/-! ## A102518.P15496281050659098673

`3^lt[(-2)^n, 2]`
-/

namespace A102518.P15496281050659098673
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-2) ^ n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A102518.P15496281050659098673

namespace A102518

/-- `3^lt[(-2)^n, 2]` -/
def P15496281050659098673.Spec : Prop :=
  ∀ n, (P15496281050659098673.a n : ℤ) = A102518 n

end A102518

/-! ## A102518.P2522606850799701900

`3^comp[or(1, n)+1]`
-/

namespace A102518.P2522606850799701900
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 n + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A102518.P2522606850799701900

namespace A102518

/-- `3^comp[or(1, n)+1]` -/
def P2522606850799701900.Spec : Prop :=
  ∀ n, (P2522606850799701900.a n : ℤ) = A102518 n

end A102518

/-! ## A102518.P16980548606908385570

`record[(3*n%2)^n]`
-/

namespace A102518.P16980548606908385570
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (3 * (n % 2)) ^ n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A102518.P16980548606908385570

namespace A102518

/-- `record[(3*n%2)^n]` -/
def P16980548606908385570.Spec : Prop :=
  ∀ n, (P16980548606908385570.a n : ℤ) = A102518 n

end A102518

/-! ## A102518.P14670964983006317970

`record[(3*and(1, n))^n]`
-/

namespace A102518.P14670964983006317970
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (3 * Nat.land 1 n) ^ n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A102518.P14670964983006317970

namespace A102518

/-- `record[(3*and(1, n))^n]` -/
def P14670964983006317970.Spec : Prop :=
  ∀ n, (P14670964983006317970.a n : ℤ) = A102518 n

end A102518

/-! ## A102518.P2563891150361835635

`record[(3^and(1, n))^n]`
-/

namespace A102518.P2563891150361835635
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (3 ^ Nat.land 1 n) ^ n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A102518.P2563891150361835635

namespace A102518

/-- `record[(3^and(1, n))^n]` -/
def P2563891150361835635.Spec : Prop :=
  ∀ n, (P2563891150361835635.a n : ℤ) = A102518 n

end A102518

/-! ## A102518.P15076631727319687450

`record[-floor((-3)^(n-1))]`
-/

namespace A102518.P15076631727319687450
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -⌊(-3 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A102518.P15076631727319687450

namespace A102518

/-- `record[-floor((-3)^(n-1))]` -/
def P15076631727319687450.Spec : Prop :=
  ∀ n, P15076631727319687450.a n = A102518 n

end A102518

/-! ## A102518.P17608241511975360338

`or(1, floor(3^(2*n-1)))`
-/

namespace A102518.P17608241511975360338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 ⌊(3 : ℚ) ^ ((2 * n : ℤ) - 1 : ℤ)⌋

end

end A102518.P17608241511975360338

namespace A102518

/-- `or(1, floor(3^(2*n-1)))` -/
def P17608241511975360338.Spec : Prop :=
  ∀ n, P17608241511975360338.a n = A102518 n

end A102518

/-! ## A102518.P8170553592139308693

`3^comp[a(n-1)+2]` with `a(0)=2`
-/

namespace A102518.P8170553592139308693
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2] fun n f1 =>
  f1 (n - 1) + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A102518.P8170553592139308693

namespace A102518

/-- `3^comp[a(n-1)+2]` -/
def P8170553592139308693.Spec : Prop :=
  ∀ n, (P8170553592139308693.a n : ℤ) = A102518 n

end A102518

/-! ## A102518.P5601580419164663620

`3^comp[and(n, n+1)+2]`
-/

namespace A102518.P5601580419164663620
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land n (n + 1) + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A102518.P5601580419164663620

namespace A102518

/-- `3^comp[and(n, n+1)+2]` -/
def P5601580419164663620.Spec : Prop :=
  ∀ n, (P5601580419164663620.a n : ℤ) = A102518 n

end A102518

/-! ## A102518.P9249016472102482794

`3^comp[2*C(n+1, n)]`
-/

namespace A102518.P9249016472102482794
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * Nat.choose (n + 1) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A102518.P9249016472102482794

namespace A102518

/-- `3^comp[2*C(n+1, n)]` -/
def P9249016472102482794.Spec : Prop :=
  ∀ n, (P9249016472102482794.a n : ℤ) = A102518 n

end A102518

/-! ## A102518.P14359833902766753509

`3^eq[1, xor(n, n-1)²]`
-/

namespace A102518.P14359833902766753509
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) ((n : ℤ) - 1) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A102518.P14359833902766753509

namespace A102518

/-- `3^eq[1, xor(n, n-1)²]` -/
def P14359833902766753509.Spec : Prop :=
  ∀ n, (P14359833902766753509.a n : ℤ) = A102518 n

end A102518

/-! ## A102518.P8716253434824972136

`3^record[n/xor(n, n-1)]`
-/

namespace A102518.P8716253434824972136
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (Int.xor (n : ℤ) ((n : ℤ) - 1) : ℚ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (3 : ℝ) ^ (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℝ)

end

end A102518.P8716253434824972136

namespace A102518

/-- `3^record[n/xor(n, n-1)]` -/
def P8716253434824972136.Spec : Prop :=
  ∀ n, P8716253434824972136.a n = (A102518 n : ℝ)

end A102518

/-! ## A102518.P16763230234701594001

`3^eq[n, gcd(2*n, n²)]`
-/

namespace A102518.P16763230234701594001
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd (2 * n) (n ^ 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A102518.P16763230234701594001

namespace A102518

/-- `3^eq[n, gcd(2*n, n²)]` -/
def P16763230234701594001.Spec : Prop :=
  ∀ n, (P16763230234701594001.a n : ℤ) = A102518 n

end A102518

/-!
# A102519: Decimal expansion of 1-(3*sqrt(3))/(4*Pi).

The programs for A102519, there is no canonical definition to state claims against.
-/

/-! ## A102519.P15505734081232552170

`9-A240935(n)`
-/

namespace A102519.P15505734081232552170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 - A240935 n

end

end A102519.P15505734081232552170

/-!
# A102523: Lengths of runs in A100060.

The programs for A102523, there is no canonical definition to state claims against.
-/

/-! ## A102523.P5632540437170577274

`A330348(or(A185283(n), A256773(n+1)))`
-/

namespace A102523.P5632540437170577274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330348 (Int.lor (A185283 n) (A256773 (n + 1))).toNat

end

end A102523.P5632540437170577274

/-! ## A102523.P12657833114313889665

`A337260(A211097(n+1)+A033075(n+1))`
-/

namespace A102523.P12657833114313889665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337260 (A211097 (n + 1) + A033075 (n + 1)).toNat

end

end A102523.P12657833114313889665

/-! ## A102523.P11415248775806982951

`A108465(A314963(n)+2)`
-/

namespace A102523.P11415248775806982951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108465 (A314963 n + 2).toNat

end

end A102523.P11415248775806982951

/-! ## A102523.P5400660304676076820

`A241918(A145444(3*n+2)+A089408(n))`
-/

namespace A102523.P5400660304676076820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241918 (A145444 (3 * n + 2) + A089408 n).toNat

end

end A102523.P5400660304676076820

/-!
# A102525: Decimal expansion of log(2)/log(3).

The programs for A102525, there is no canonical definition to state claims against.
-/

/-! ## A102525.P8894274762176887580

`A152549(n+1)`
-/

namespace A102525.P8894274762176887580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152549 (n + 1 + 1)

end

end A102525.P8894274762176887580

/-! ## A102525.P909309369824733885

`A153459(n+1)`
-/

namespace A102525.P909309369824733885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153459 (n + 1 + 1)

end

end A102525.P909309369824733885

/-! ## A102525.P5109558657093212330

`9-A346640(n+1)`
-/

namespace A102525.P5109558657093212330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 - A346640 (n + 1 + 1)

end

end A102525.P5109558657093212330

/-!
# A102528: a(n)=least positive integer not a(k) or a(k)+floor(k/2) for any k<n.

The programs for A102528, there is no canonical definition to state claims against.
-/

/-! ## A102528.P11872530712507752370

`comp[A184414(n+1)]+1`
-/

namespace A102528.P11872530712507752370
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184414 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A102528.P11872530712507752370

/-! ## A102528.P15736975218750886612

`comp[A102529(n+1)-1]+1`
-/

namespace A102528.P15736975218750886612
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102529 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A102528.P15736975218750886612

/-! ## A102528.P12944960150536698656

`∪[A184413(n+1), n^4]+1`
-/

namespace A102528.P12944960150536698656
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184413 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 4

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = x) n + 1

end

end A102528.P12944960150536698656

/-! ## A102528.P1660616038992795278

`comp[A023443(A102529(n+1))]+1`
-/

namespace A102528.P1660616038992795278
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A102529 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A102528.P1660616038992795278

/-! ## A102528.P10134715978325369056

`∪[A184413(n+1)+1, A270335(n)]`
-/

namespace A102528.P10134715978325369056
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184413 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270335 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A102528.P10134715978325369056

/-! ## A102528.P7008781301821680607

`comp[A184413(n+1)+A008619(n)]+1`
-/

namespace A102528.P7008781301821680607
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184413 (n + 1) + A008619 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A102528.P7008781301821680607

/-! ## A102528.P17622941643625970366

`comp[A184413(n+1)+∑[A059841(n)]]+1`
-/

namespace A102528.P17622941643625970366
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184413 (n + 1) + ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A102528.P17622941643625970366

/-! ## A102528.P9627119402483585208

`comp[A184413(n+1)+A004526(n)+1]+1`
-/

namespace A102528.P9627119402483585208
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184413 (n + 1) + A004526 n + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A102528.P9627119402483585208

/-!
# A102529: Complement of A102528.

The programs for A102529, there is no canonical definition to state claims against.
-/

/-! ## A102529.P16378049586184513032

`A184414(n+1)+1`
-/

namespace A102529.P16378049586184513032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184414 (n + 1) + 1

end

end A102529.P16378049586184513032

/-! ## A102529.P915486026147423450

`comp[A184413(n+1)-1]+2`
-/

namespace A102529.P915486026147423450
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184413 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 2

end

end A102529.P915486026147423450

/-! ## A102529.P14483366042679984600

`A102528(n+2)+∑[char[2*n]]`
-/

namespace A102529.P14483366042679984600
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102528 (n + 2) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A102529.P14483366042679984600

/-! ## A102529.P17521498472939713319

`A020725(A184414(n+1))`
-/

namespace A102529.P17521498472939713319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A184414 (n + 1)).toNat

end

end A102529.P17521498472939713319

/-! ## A102529.P12669658346199709998

`A184413(n+1)+A008619(n)+1`
-/

namespace A102529.P12669658346199709998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184413 (n + 1) + (A008619 n + 1)

end

end A102529.P12669658346199709998

/-! ## A102529.P1855729835781830125

`A184413(n+1)+A080513(n+1)`
-/

namespace A102529.P1855729835781830125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184413 (n + 1) + A080513 (n + 1)

end

end A102529.P1855729835781830125

/-! ## A102529.P17454771744185729021

`A184413(n+1)+A004526(n)+2`
-/

namespace A102529.P17454771744185729021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184413 (n + 1) + (A004526 n + 2)

end

end A102529.P17454771744185729021

/-! ## A102529.P7234602932787253311

`A184413(n+1)+sqrt(A008794(n))+2`
-/

namespace A102529.P7234602932787253311
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A184413 (n + 1) : ℝ) + (Real.sqrt (A008794 n : ℝ) + 2)

end

end A102529.P7234602932787253311

/-! ## A102529.P13623775646895982967

`A184413(n+1)+∑[A059841(n)]+1`
-/

namespace A102529.P13623775646895982967
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184413 (n + 1) + (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A102529.P13623775646895982967

/-! ## A102529.P4485535981052642887

`A184413(n+1)+∑[A000045(a(n-2))]` with `a(0)=2, a(1)=0`
-/

namespace A102529.P4485535981052642887
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2, 0] fun n f1 =>
  A000045 (f1 (n - 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184413 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A102529.P4485535981052642887

/-!
# A102530: Permutation of N from A102528 and A102529.

The programs for A102530, there is no canonical definition to state claims against.
-/

/-! ## A102530.P365675163211921453

`A215501(lt[A215526(n), 3*n+1])`
-/

namespace A102530.P365675163211921453
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215526 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215501 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A102530.P365675163211921453

/-!
# A102531: Real part of absolute Gaussian perfect numbers, in order of increasing magnitude.

The programs for A102531, there is no canonical definition to state claims against.
-/

/-! ## A102531.P6031344869800179584

`A101367(or(A101274(n+1), A101358(n)))`
-/

namespace A102531.P6031344869800179584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101367 (Int.lor (A101274 (n + 1)) (A101358 n)).toNat

end

end A102531.P6031344869800179584

/-! ## A102531.P15249338874202574255

`A101367(or(A101274(n+1), A191257(n+1)))`
-/

namespace A102531.P15249338874202574255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101367 (Int.lor (A101274 (n + 1)) (A191257 (n + 1))).toNat

end

end A102531.P15249338874202574255

/-! ## A102531.P18238798116259538618

`A101367(or(A191257(n+1), A340854(n+1)))`
-/

namespace A102531.P18238798116259538618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101367 (Int.lor (A191257 (n + 1)) (A340854 (n + 1))).toNat

end

end A102531.P18238798116259538618

/-!
# A102532: Imaginary part of absolute Gaussian perfect numbers, in order of increasing magnitude.

The programs for A102532, there is no canonical definition to state claims against.
-/

/-! ## A102532.P5413189533020744503

`A101366(or(A101274(n+1), A101358(n)))`
-/

namespace A102532.P5413189533020744503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101366 (Int.lor (A101274 (n + 1)) (A101358 n)).toNat

end

end A102532.P5413189533020744503

/-! ## A102532.P10862740569045543472

`A101366(or(A101274(n+1), A191257(n+1)))`
-/

namespace A102532.P10862740569045543472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101366 (Int.lor (A101274 (n + 1)) (A191257 (n + 1))).toNat

end

end A102532.P10862740569045543472

/-! ## A102532.P10454078155446618695

`A101366(or(A191257(n+1), A340854(n+1)))`
-/

namespace A102532.P10454078155446618695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101366 (Int.lor (A191257 (n + 1)) (A340854 (n + 1))).toNat

end

end A102532.P10454078155446618695

/-!
# A102533: Number of distinct values of i*j + j*k + k*i with 1 <= i < j <= k <= n.

The programs for A102533, there is no canonical definition to state claims against.
-/

/-! ## A102533.P8496022706310172188

`∑[A357434(∑[A030073(n+1)])]`
-/

namespace A102533.P8496022706310172188
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030073 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357434 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A102533.P8496022706310172188

/-! ## A102533.P7271593914979290182

`A000292(n)-A024693(A293588(n))`
-/

namespace A102533.P7271593914979290182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 n - A024693 (A293588 n).toNat

end

end A102533.P7271593914979290182

/-!
# A102534: Number of distinct values of i*j + j*k + k*i with 1 <= i<= j < k <= n.

The programs for A102534, there is no canonical definition to state claims against.
-/

/-! ## A102534.P17284862079235183210

`∑[∑[A104640(A026523(n+3)+1)]]`
-/

namespace A102534.P17284862079235183210
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104640 (A026523 (n + 3) + 1).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A102534.P17284862079235183210

/-! ## A102534.P12263146085294518631

`A057354(n)+A000196(A000538(n))`
-/

namespace A102534.P12263146085294518631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057354 n + A000196 (A000538 n).toNat

end

end A102534.P12263146085294518631

/-!
# A102535: Integers n such that -n is representable as the product of the sum of three nonzero integers with the sum of their reciprocals: -n=(x+y+z)*(1/x+1/y+1/z).

The programs for A102535, there is no canonical definition to state claims against.
-/

/-! ## A102535.P11253363116182761414

`eq[1, A102774(a(A309144(n)))]` with `a(0)=2`
-/

namespace A102535.P11253363116182761414
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f2 =>
  A102774 (f2 (A309144 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A102535.P11253363116182761414

/-! ## A102535.P5086000573888037613

`eq[3, A000040(a(A309144(n)))]` with `a(0)=1`
-/

namespace A102535.P5086000573888037613
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f2 =>
  A000040 (f2 (A309144 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A102535.P5086000573888037613

/-! ## A102535.P12239105495843094010

`eq[1, A000045(a(A309144(n)))]` with `a(0)=3`
-/

namespace A102535.P12239105495843094010
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [3] fun n f2 =>
  A000045 (f2 (A309144 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A102535.P12239105495843094010

/-! ## A102535.P13357021870367398081

`eq[3, A102779(a(A309144(n)))]` with `a(0)=1`
-/

namespace A102535.P13357021870367398081
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f2 =>
  A102779 (f2 (A309144 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A102535.P13357021870367398081

/-! ## A102535.P16698371231812649666

`eq[1, A001222(a(A309144(n)))]` with `a(0)=4`
-/

namespace A102535.P16698371231812649666
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [4] fun n f2 =>
  A001222 (f2 (A309144 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A102535.P16698371231812649666

/-! ## A102535.P7421056289293553993

`eq[1, A007318(a(A309144(n)))]` with `a(0)=4`
-/

namespace A102535.P7421056289293553993
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [4] fun n f2 =>
  A007318 (f2 (A309144 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A102535.P7421056289293553993

/-! ## A102535.P1002057452096895259

`eq[2, A102775(a(A309144(n)))]` with `a(0)=4`
-/

namespace A102535.P1002057452096895259
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.rec [4] fun n f2 =>
  A102775 (f2 (A309144 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A102535.P1002057452096895259

/-!
# A102536: Number of triangles similar to their n-th pedal, and not similar to any k-th pedal for k < n.

The programs for A102536, there is no canonical definition to state claims against.
-/

/-! ## A102536.P3369389046355901990

`A323862(∑[n+2])`
-/

namespace A102536.P3369389046355901990
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323862 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A102536.P3369389046355901990

/-! ## A102536.P3084913772050929539

`A054719(n+1)-A027375(n+1)`
-/

namespace A102536.P3084913772050929539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054719 (n + 1) - A027375 (n + 1)

end

end A102536.P3084913772050929539

/-! ## A102536.P8741610864950696808

`(n+1)*(A065179(n+1)+A065178(n+1))`
-/

namespace A102536.P8741610864950696808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A065179 (n + 1) + A065178 (n + 1))

end

end A102536.P8741610864950696808

/-! ## A102536.P8474290108092267947

`(n+1)*(A027377(n+1)-A001037(n+1))`
-/

namespace A102536.P8474290108092267947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A027377 (n + 1) - A001037 (n + 1))

end

end A102536.P8474290108092267947

/-! ## A102536.P11296103059206292024

`(n+1)*A185172(n+1)-A038199(n+1)`
-/

namespace A102536.P11296103059206292024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A185172 (n + 1) - A038199 (n + 1)

end

end A102536.P11296103059206292024

/-!
# A102537: Triangle T(n,k) read by rows: (1/n) * C(2n+k,k-1) * C(n,k); n, k >= 1.

The programs for A102537, there is no canonical definition to state claims against.
-/

/-! ## A102537.P3302743906192671978

`A243662(A038722(n+1))`
-/

namespace A102537.P3302743906192671978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243662 (A038722 (n + 1)).toNat

end

end A102537.P3302743906192671978

/-! ## A102537.P3320968176213507735

`A243662(A061579(n)+1)`
-/

namespace A102537.P3320968176213507735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243662 (A061579 n + 1).toNat

end

end A102537.P3320968176213507735

/-! ## A102537.P9848833502098987919

`A243662(∑[A198954(n)]-n)`
-/

namespace A102537.P9848833502098987919
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198954 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243662 (∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)).toNat

end

end A102537.P9848833502098987919

/-! ## A102537.P3107492605564686123

`A243662(A114327(n)+1+n)`
-/

namespace A102537.P3107492605564686123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243662 (A114327 n + 1 + (n : ℤ)).toNat

end

end A102537.P3107492605564686123

/-! ## A102537.P13767955743072905581

`A243662(A002024(n+1)²-n)`
-/

namespace A102537.P13767955743072905581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243662 (A002024 (n + 1) ^ 2 - (n : ℤ)).toNat

end

end A102537.P13767955743072905581

/-!
# A102538: Numbers m not of the form k*(k+2) that have a single '1' in the periodic part of the continued fraction of sqrt(n).

The programs for A102538, there is no canonical definition to state claims against.
-/

/-! ## A102538.P3092681885032314993

`filter[A013648(n+1), A079813(#)]`
-/

namespace A102538.P3092681885032314993
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013648 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A079813 (f1 j).toNat = 1) n)

end

end A102538.P3092681885032314993

/-! ## A102538.P7208398391063251569

`filter[A013648(n+1), A267673(#)]`
-/

namespace A102538.P7208398391063251569
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013648 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A267673 (f1 j).toNat = 1) n)

end

end A102538.P7208398391063251569

/-! ## A102538.P4400716982845865251

`filter[A013648(n+1), A267687(#)]`
-/

namespace A102538.P4400716982845865251
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013648 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A267687 (f1 j).toNat = 1) n)

end

end A102538.P4400716982845865251

/-! ## A102538.P7355313756491527264

`filter[A013648(n+1), A267708(#)]`
-/

namespace A102538.P7355313756491527264
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013648 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A267708 (f1 j).toNat = 1) n)

end

end A102538.P7355313756491527264

/-! ## A102538.P13794355816303013201

`filter[A013648(n+1), A267841(#)]`
-/

namespace A102538.P13794355816303013201
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013648 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A267841 (f1 j).toNat = 1) n)

end

end A102538.P13794355816303013201

/-!
# A102539: Square array T(n,k) read by antidiagonals: T(n,k) = Product_{1<=i<=j<=k} (n+i+j-1)/(i+j-1).

The programs for A102539, there is no canonical definition to state claims against.
-/

/-! ## A102539.P4589288707202745692

`A073165(eq[0, A103451(n)])`
-/

namespace A102539.P4589288707202745692
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103451 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073165 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A102539.P4589288707202745692

/-! ## A102539.P10905208982835119390

`A073165(eq[0, A103452(n)])`
-/

namespace A102539.P10905208982835119390
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103452 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073165 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A102539.P10905208982835119390

/-! ## A102539.P10938872373544945291

`A073165(eq[0, A103516(n)])`
-/

namespace A102539.P10938872373544945291
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103516 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073165 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A102539.P10938872373544945291

/-! ## A102539.P1690468549184474127

`A073165(eq[0, A145677(n)])`
-/

namespace A102539.P1690468549184474127
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145677 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073165 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A102539.P1690468549184474127

/-! ## A102539.P6298512040988439330

`A073165(eq[0, A158821(n)])`
-/

namespace A102539.P6298512040988439330
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158821 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073165 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A102539.P6298512040988439330

/-! ## A102539.P6328636042851959124

`A073165(lt[1, A073165(n)])`
-/

namespace A102539.P6328636042851959124
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073165 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073165 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A102539.P6328636042851959124

/-! ## A102539.P2137784847818951993

`A073165(A014132(comp[∑[n]]))`
-/

namespace A102539.P2137784847818951993
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073165 (A014132 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)).toNat

end

end A102539.P2137784847818951993

/-! ## A102539.P9997973522974733702

`A073165(2*A014132(n+1)-n)`
-/

namespace A102539.P9997973522974733702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073165 (2 * A014132 (n + 1) - (n : ℤ)).toNat

end

end A102539.P9997973522974733702

/-! ## A102539.P17349487466656755237

`A073165(∑[A073423(n)+A035214(n)])`
-/

namespace A102539.P17349487466656755237
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073423 n + A035214 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073165 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A102539.P17349487466656755237

/-!
# A102540: Primes that are not Chen primes (see A109611).

The programs for A102540, the canonical program `A102540.P12409149115680564712` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A102540 has offset 1).

The definition of A102540 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5615 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A102540.P10241797200183541870

`Δ[A115606(n)]`
-/

namespace A102540.P10241797200183541870
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115606 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A102540.P10241797200183541870

namespace A102540

/-- `Δ[A115606(n)]` -/
def P10241797200183541870.Spec : Prop :=
  ∀ n, P10241797200183541870.a n = A102540 (n + 1)

end A102540

/-! ## A102540.P13882448077272048478

`Δ[A118483(n)]`
-/

namespace A102540.P13882448077272048478
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118483 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A102540.P13882448077272048478

namespace A102540

/-- `Δ[A118483(n)]` -/
def P13882448077272048478.Spec : Prop :=
  ∀ n, P13882448077272048478.a n = A102540 (n + 1)

end A102540

/-! ## A102540.P7523802912427500530

`A115606(n+1)-A115606(n)`
-/

namespace A102540.P7523802912427500530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115606 (n + 1) - A115606 n

end

end A102540.P7523802912427500530

namespace A102540

/-- `A115606(n+1)-A115606(n)` -/
def P7523802912427500530.Spec : Prop :=
  ∀ n, P7523802912427500530.a n = A102540 (n + 1)

end A102540

/-! ## A102540.P7316296330287873620

`A118483(n+1)-A118483(n)`
-/

namespace A102540.P7316296330287873620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118483 (n + 1) - A118483 n

end

end A102540.P7316296330287873620

namespace A102540

/-- `A118483(n+1)-A118483(n)` -/
def P7316296330287873620.Spec : Prop :=
  ∀ n, P7316296330287873620.a n = A102540 (n + 1)

end A102540

/-! ## A102540.P12409149115680564712

`A000040(A118499(n+1))`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A102540

/-- `A000040(A118499(n+1))` -/
def P12409149115680564712.Spec : Prop :=
  ∀ n, P12409149115680564712.a n = A102540 (n + 1)

theorem P12409149115680564712.correct : P12409149115680564712.Spec := by
  intro n
  simp only [A102540, Nat.add_sub_cancel]

end A102540

/-! ## A102540.P16275922447389380995

`A008578(A118499(n+1)+1)`
-/

namespace A102540.P16275922447389380995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A118499 (n + 1) + 1).toNat

end

end A102540.P16275922447389380995

namespace A102540

/-- `A008578(A118499(n+1)+1)` -/
def P16275922447389380995.Spec : Prop :=
  ∀ n, P16275922447389380995.a n = A102540 (n + 1)

end A102540

/-! ## A102540.P9514014553902458641

`A065091(eq[0, A106667(n+1)])`
-/

namespace A102540.P9514014553902458641
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106667 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A102540.P9514014553902458641

namespace A102540

/-- `A065091(eq[0, A106667(n+1)])` -/
def P9514014553902458641.Spec : Prop :=
  ∀ n, P9514014553902458641.a n = A102540 (n + 1)

end A102540

/-! ## A102540.P5290223031717286796

`p?[A106667(n+1)+A000040(n+1)]`
-/

namespace A102540.P5290223031717286796
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106667 (n + 1) + A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A102540.P5290223031717286796

namespace A102540

/-- `p?[A106667(n+1)+A000040(n+1)]` -/
def P5290223031717286796.Spec : Prop :=
  ∀ n, P5290223031717286796.a n = A102540 (n + 1)

end A102540

/-! ## A102540.P17251105012002910696

`p?[lt[A020639(n+1), A001222(n+2)]]`
-/

namespace A102540.P17251105012002910696
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 2)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A102540.P17251105012002910696

namespace A102540

/-- `p?[lt[A020639(n+1), A001222(n+2)]]` -/
def P17251105012002910696.Spec : Prop :=
  ∀ n, (P17251105012002910696.a n : ℤ) = A102540 (n + 1)

end A102540

/-! ## A102540.P9195940289863156976

`p?[lt[6, A336158(n+1)]-1]`
-/

namespace A102540.P9195940289863156976
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336158 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A102540.P9195940289863156976

namespace A102540

/-- `p?[lt[6, A336158(n+1)]-1]` -/
def P9195940289863156976.Spec : Prop :=
  ∀ n, P9195940289863156976.a n = A102540 (n + 1)

end A102540

/-! ## A102540.P982757976694630074

`p?[A033942(n+1)-2]`
-/

namespace A102540.P982757976694630074
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033942 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A102540.P982757976694630074

namespace A102540

/-- `p?[A033942(n+1)-2]` -/
def P982757976694630074.Spec : Prop :=
  ∀ n, P982757976694630074.a n = A102540 (n + 1)

end A102540

/-! ## A102540.P11256491811635716085

`p?[lt[2, A001222(n+2)]]`
-/

namespace A102540.P11256491811635716085
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 2)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A102540.P11256491811635716085

namespace A102540

/-- `p?[lt[2, A001222(n+2)]]` -/
def P11256491811635716085.Spec : Prop :=
  ∀ n, (P11256491811635716085.a n : ℤ) = A102540 (n + 1)

end A102540

/-! ## A102540.P14134743158226924204

`p?[lt[2, A292504(n+2)]]`
-/

namespace A102540.P14134743158226924204
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292504 (n + 2)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A102540.P14134743158226924204

namespace A102540

/-- `p?[lt[2, A292504(n+2)]]` -/
def P14134743158226924204.Spec : Prop :=
  ∀ n, (P14134743158226924204.a n : ℤ) = A102540 (n + 1)

end A102540

/-! ## A102540.P1351526699043173858

`p?[lt[2, A305809(n+2)]]`
-/

namespace A102540.P1351526699043173858
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305809 (n + 2)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A102540.P1351526699043173858

namespace A102540

/-- `p?[lt[2, A305809(n+2)]]` -/
def P1351526699043173858.Spec : Prop :=
  ∀ n, (P1351526699043173858.a n : ℤ) = A102540 (n + 1)

end A102540

/-! ## A102540.P17043113292427285133

`p?[lt[2, A001055(n+2)]]`
-/

namespace A102540.P17043113292427285133
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001055 (n + 2)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A102540.P17043113292427285133

namespace A102540

/-- `p?[lt[2, A001055(n+2)]]` -/
def P17043113292427285133.Spec : Prop :=
  ∀ n, (P17043113292427285133.a n : ℤ) = A102540 (n + 1)

end A102540

/-! ## A102540.P8954099064809046053

`p?[lt[3, A002033(n+1)]]`
-/

namespace A102540.P8954099064809046053
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002033 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A102540.P8954099064809046053

namespace A102540

/-- `p?[lt[3, A002033(n+1)]]` -/
def P8954099064809046053.Spec : Prop :=
  ∀ n, (P8954099064809046053.a n : ℤ) = A102540 (n + 1)

end A102540

/-! ## A102540.P18236861500903904679

`p?[lt[6, A067824(n+2)]]`
-/

namespace A102540.P18236861500903904679
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067824 (n + 2)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A102540.P18236861500903904679

namespace A102540

/-- `p?[lt[6, A067824(n+2)]]` -/
def P18236861500903904679.Spec : Prop :=
  ∀ n, (P18236861500903904679.a n : ℤ) = A102540 (n + 1)

end A102540

/-! ## A102540.P14670521987668781185

`eq[A105700(n+2), A295335(n)]`
-/

namespace A102540.P14670521987668781185
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105700 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295335 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A102540.P14670521987668781185

namespace A102540

/-- `eq[A105700(n+2), A295335(n)]` -/
def P14670521987668781185.Spec : Prop :=
  ∀ n, (P14670521987668781185.a n : ℤ) = A102540 (n + 1)

end A102540

/-! ## A102540.P4446296300885795931

`lt[A284289(2*n), A001222(n+2)]`
-/

namespace A102540.P4446296300885795931
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284289 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A102540.P4446296300885795931

namespace A102540

/-- `lt[A284289(2*n), A001222(n+2)]` -/
def P4446296300885795931.Spec : Prop :=
  ∀ n, (P4446296300885795931.a n : ℤ) = A102540 (n + 1)

end A102540

/-! ## A102540.P6450196323624102127

`lt[1, A101606(n+2)*A105700(2*n)]`
-/

namespace A102540.P6450196323624102127
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101606 (n + 2) * A105700 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A102540.P6450196323624102127

namespace A102540

/-- `lt[1, A101606(n+2)*A105700(2*n)]` -/
def P6450196323624102127.Spec : Prop :=
  ∀ n, (P6450196323624102127.a n : ℤ) = A102540 (n + 1)

end A102540

/-!
# A102541: Triangle read by rows, formed from antidiagonals of Losanitsch's triangle. T(n, k) = A034851(n-k, k), n >= 0 and 0 <= k <= floor(n/2).

The programs for A102541, the canonical program `A102541.P5176281856776410928` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A102541 has offset 0).

The definition of A102541 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5041 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A102541.P5176281856776410928

`A034851(A091018(n))`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A102541

/-- `A034851(A091018(n))` -/
def P5176281856776410928.Spec : Prop :=
  ∀ n, P5176281856776410928.a n = A102541 n

theorem P5176281856776410928.correct : P5176281856776410928.Spec := by
  intro n
  simp only [A102541]

end A102541

/-! ## A102541.P12341944177805793573

`A034851(A056536(n+1)-1)`
-/

namespace A102541.P12341944177805793573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034851 (A056536 (n + 1) - 1).toNat

end

end A102541.P12341944177805793573

namespace A102541

/-- `A034851(A056536(n+1)-1)` -/
def P12341944177805793573.Spec : Prop :=
  ∀ n, P12341944177805793573.a n = A102541 n

end A102541

/-! ## A102541.P3211612569282545544

`A034880(A089732(n+1))`
-/

namespace A102541.P3211612569282545544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034880 (A089732 (n + 1)).toNat

end

end A102541.P3211612569282545544

namespace A102541

/-- `A034880(A089732(n+1))` -/
def P3211612569282545544.Spec : Prop :=
  ∀ n, P3211612569282545544.a n = A102541 n

end A102541

/-! ## A102541.P7433186801395323780

`A127950(A034807(n)%A127963(2*(n+2)))`
-/

namespace A102541.P7433186801395323780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127950 (Int.tmod (A034807 n) (A127963 (2 * (n + 2)))).toNat

end

end A102541.P7433186801395323780

namespace A102541

/-- `A127950(A034807(n)%A127963(2*(n+2)))` -/
def P7433186801395323780.Spec : Prop :=
  ∀ n, P7433186801395323780.a n = A102541 n

end A102541

/-! ## A102541.P8709333545997241579

`A111890(A055327(n+2)%A112066(2*n+5))`
-/

namespace A102541.P8709333545997241579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111890 (Int.tmod (A055327 (n + 2)) (A112066 (2 * n + 5))).toNat

end

end A102541.P8709333545997241579

namespace A102541

/-- `A111890(A055327(n+2)%A112066(2*n+5))` -/
def P8709333545997241579.Spec : Prop :=
  ∀ n, P8709333545997241579.a n = A102541 n

end A102541

/-!
# A102543: Antidiagonal sums of the antidiagonals of Losanitsch's triangle.

The programs for A102543, the canonical program `A102543.P11723881944308871902` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A102543 has offset 0).

The definition of A102543 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 600 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A102543.P11723881944308871902

`A068927(n+5)-(A068927(n+3)+A000930(n+2))`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A102543

/-- `A068927(n+5)-(A068927(n+3)+A000930(n+2))` -/
def P11723881944308871902.Spec : Prop :=
  ∀ n, P11723881944308871902.a n = A102543 n

theorem P11723881944308871902.correct : P11723881944308871902.Spec := by
  intro n
  simp only [A102543]

end A102543

/-! ## A102543.P777093469724557728

`A068926(record[A106247(n+1)])`
-/

namespace A102543.P777093469724557728
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106247 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068926 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A102543.P777093469724557728

namespace A102543

/-- `A068926(record[A106247(n+1)])` -/
def P777093469724557728.Spec : Prop :=
  ∀ n, P777093469724557728.a n = A102543 n

end A102543

/-! ## A102543.P13376342133597092210

`A000196(A210736(n)+A063687(n))`
-/

namespace A102543.P13376342133597092210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A210736 n + A063687 n).toNat

end

end A102543.P13376342133597092210

namespace A102543

/-- `A000196(A210736(n)+A063687(n))` -/
def P13376342133597092210.Spec : Prop :=
  ∀ n, P13376342133597092210.a n = A102543 n

end A102543

/-! ## A102543.P16348902762954744600

`A000196(A324407(n+1)+A030227(n))`
-/

namespace A102543.P16348902762954744600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A324407 (n + 1) + A030227 n).toNat

end

end A102543.P16348902762954744600

namespace A102543

/-- `A000196(A324407(n+1)+A030227(n))` -/
def P16348902762954744600.Spec : Prop :=
  ∀ n, P16348902762954744600.a n = A102543 n

end A102543

/-! ## A102543.P1009081418843285334

`A000196(A324407(n+1)+A210736(n))`
-/

namespace A102543.P1009081418843285334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A324407 (n + 1) + A210736 n).toNat

end

end A102543.P1009081418843285334

namespace A102543

/-- `A000196(A324407(n+1)+A210736(n))` -/
def P1009081418843285334.Spec : Prop :=
  ∀ n, P1009081418843285334.a n = A102543 n

end A102543

/-!
# A102546: Numbers t such that t1 is prime and t is a multiple of 10.

The programs for A102546, the canonical program `A102546.P3323875871467671533` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A102546 has offset 1).

The definition of A102546 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A102546.P544863825518198844

`10*A166457(n+1)`
-/

namespace A102546.P544863825518198844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  10 * A166457 (n + 1)

end

end A102546.P544863825518198844

namespace A102546

/-- `10*A166457(n+1)` -/
def P544863825518198844.Spec : Prop :=
  ∀ n, P544863825518198844.a n = A102546 (n + 1)

end A102546

/-! ## A102546.P3323875871467671533

`floor(A062800(n+1)/10)`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A102546

/-- `floor(A062800(n+1)/10)` -/
def P3323875871467671533.Spec : Prop :=
  ∀ n, P3323875871467671533.a n = A102546 (n + 1)

theorem P3323875871467671533.correct : P3323875871467671533.Spec := by
  intro n
  simp only [A102546, Nat.add_sub_cancel]

end A102546

/-! ## A102546.P16895401416113004517

`floor(p?[10*10*n+1]/10)`
-/

namespace A102546.P16895401416113004517
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10 * (10 * n) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℚ) / 10⌋

end

end A102546.P16895401416113004517

namespace A102546

/-- `floor(p?[10*10*n+1]/10)` -/
def P16895401416113004517.Spec : Prop :=
  ∀ n, P16895401416113004517.a n = A102546 (n + 1)

end A102546

/-! ## A102546.P8193878122043998909

`round(p?[10*10*n+1]/10)`
-/

namespace A102546.P8193878122043998909
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10 * (10 * n) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℚ) / 10)

end

end A102546.P8193878122043998909

namespace A102546

/-- `round(p?[10*10*n+1]/10)` -/
def P8193878122043998909.Spec : Prop :=
  ∀ n, P8193878122043998909.a n = A102546 (n + 1)

end A102546

/-! ## A102546.P10242044897149419160

`A008592(A166457(n+1))`
-/

namespace A102546.P10242044897149419160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008592 (A166457 (n + 1)).toNat

end

end A102546.P10242044897149419160

namespace A102546

/-- `A008592(A166457(n+1))` -/
def P10242044897149419160.Spec : Prop :=
  ∀ n, P10242044897149419160.a n = A102546 (n + 1)

end A102546

/-! ## A102546.P8105669604810063456

`A017293(A166457(n+1))-A020639(A017293(n))`
-/

namespace A102546.P8105669604810063456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017293 (A166457 (n + 1)).toNat - A020639 (A017293 n).toNat

end

end A102546.P8105669604810063456

namespace A102546

/-- `A017293(A166457(n+1))-A020639(A017293(n))` -/
def P8105669604810063456.Spec : Prop :=
  ∀ n, P8105669604810063456.a n = A102546 (n + 1)

end A102546

/-! ## A102546.P9679551156603891431

`∩[A179445(n+1), A008592(n)]`
-/

namespace A102546.P9679551156603891431
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179445 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008592 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A102546.P9679551156603891431

namespace A102546

/-- `∩[A179445(n+1), A008592(n)]` -/
def P9679551156603891431.Spec : Prop :=
  ∀ n, (P9679551156603891431.a n : ℤ) = A102546 (n + 1)

end A102546

/-! ## A102546.P2446108130523348393

`∩[A024912(n+1), 10*n]`
-/

namespace A102546.P2446108130523348393
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024912 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10 * n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A102546.P2446108130523348393

namespace A102546

/-- `∩[A024912(n+1), 10*n]` -/
def P2446108130523348393.Spec : Prop :=
  ∀ n, (P2446108130523348393.a n : ℤ) = A102546 (n + 1)

end A102546

/-! ## A102546.P7685264497954728481

`∩[A008592(n), A024912(n+1)]`
-/

namespace A102546.P7685264497954728481
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008592 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024912 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A102546.P7685264497954728481

namespace A102546

/-- `∩[A008592(n), A024912(n+1)]` -/
def P7685264497954728481.Spec : Prop :=
  ∀ n, (P7685264497954728481.a n : ℤ) = A102546 (n + 1)

end A102546

/-! ## A102546.P7239978113741994181

`∩[A068675(n+1), A008592(n)]`
-/

namespace A102546.P7239978113741994181
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068675 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008592 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A102546.P7239978113741994181

namespace A102546

/-- `∩[A068675(n+1), A008592(n)]` -/
def P7239978113741994181.Spec : Prop :=
  ∀ n, (P7239978113741994181.a n : ℤ) = A102546 (n + 1)

end A102546

/-! ## A102546.P17454128053641604982

`2*5*eq[2, A000005(99*n+n+1)]`
-/

namespace A102546.P17454128053641604982
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (99 * n + (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (5 * SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A102546.P17454128053641604982

namespace A102546

/-- `2*5*eq[2, A000005(99*n+n+1)]` -/
def P17454128053641604982.Spec : Prop :=
  ∀ n, (P17454128053641604982.a n : ℤ) = A102546 (n + 1)

end A102546

/-! ## A102546.P4583094539427214040

`eq[A091088(n), A135447(n)]`
-/

namespace A102546.P4583094539427214040
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091088 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135447 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A102546.P4583094539427214040

namespace A102546

/-- `eq[A091088(n), A135447(n)]` -/
def P4583094539427214040.Spec : Prop :=
  ∀ n, (P4583094539427214040.a n : ℤ) = A102546 (n + 1)

end A102546

/-! ## A102546.P14517640876974531127

`eq[A091088(n), A230579(n)]`
-/

namespace A102546.P14517640876974531127
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091088 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230579 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A102546.P14517640876974531127

namespace A102546

/-- `eq[A091088(n), A230579(n)]` -/
def P14517640876974531127.Spec : Prop :=
  ∀ n, (P14517640876974531127.a n : ℤ) = A102546 (n + 1)

end A102546

/-! ## A102546.P12212070793933538471

`eq[A091088(n), A296420(n)]`
-/

namespace A102546.P12212070793933538471
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091088 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296420 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A102546.P12212070793933538471

namespace A102546

/-- `eq[A091088(n), A296420(n)]` -/
def P12212070793933538471.Spec : Prop :=
  ∀ n, (P12212070793933538471.a n : ℤ) = A102546 (n + 1)

end A102546

/-! ## A102546.P2765474311902867480

`eq[A070381(n)², A091088(n)]`
-/

namespace A102546.P2765474311902867480
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070381 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091088 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A102546.P2765474311902867480

namespace A102546

/-- `eq[A070381(n)², A091088(n)]` -/
def P2765474311902867480.Spec : Prop :=
  ∀ n, (P2765474311902867480.a n : ℤ) = A102546 (n + 1)

end A102546

/-! ## A102546.P1222270640580418218

`eq[A091088(n)², A097927(n)]`
-/

namespace A102546.P1222270640580418218
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091088 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097927 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A102546.P1222270640580418218

namespace A102546

/-- `eq[A091088(n)², A097927(n)]` -/
def P1222270640580418218.Spec : Prop :=
  ∀ n, (P1222270640580418218.a n : ℤ) = A102546 (n + 1)

end A102546

/-! ## A102546.P18209972986374351140

`eq[A072970(n+1), A091088(n)]`
-/

namespace A102546.P18209972986374351140
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072970 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091088 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A102546.P18209972986374351140

namespace A102546

/-- `eq[A072970(n+1), A091088(n)]` -/
def P18209972986374351140.Spec : Prop :=
  ∀ n, (P18209972986374351140.a n : ℤ) = A102546 (n + 1)

end A102546

/-!
# A102547: Triangle read by rows, formed from antidiagonals of the antidiagonals (A011973) of Pascal's triangle (A007318).

The programs for A102547, there is no canonical definition to state claims against.
-/

/-! ## A102547.P2603132957937455291

`A317496(n)/A000244(A073189(n))`
-/

namespace A102547.P2603132957937455291
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A317496 n : ℚ) / (A000244 (A073189 n).toNat : ℚ)

end

end A102547.P2603132957937455291

/-! ## A102547.P5724386573186551099

`2*A228570(n)-A317489(n+3)`
-/

namespace A102547.P5724386573186551099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A228570 n - A317489 (n + 3)

end

end A102547.P5724386573186551099

/-! ## A102547.P9620755620025693732

`A004277(A228570(n))-A317489(n+3)`
-/

namespace A102547.P9620755620025693732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A228570 n).toNat - A317489 (n + 3)

end

end A102547.P9620755620025693732

/-! ## A102547.P15508386689484951734

`gcd(A317496(n), A317505(n))`
-/

namespace A102547.P15508386689484951734
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A317496 n) (A317505 n)

end

end A102547.P15508386689484951734

/-! ## A102547.P5948172262143132076

`gcd(abs(A317505(n)), A317497(n))`
-/

namespace A102547.P5948172262143132076
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd |A317505 n| (A317497 n)

end

end A102547.P5948172262143132076

/-! ## A102547.P8559784007422687036

`gcd(A317505(n)+A317497(n), A329927(n))`
-/

namespace A102547.P8559784007422687036
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A317505 n + A317497 n) (A329927 n)

end

end A102547.P8559784007422687036

/-! ## A102547.P7686769005805146357

`gcd(A317494(n), A317496(n))`
-/

namespace A102547.P7686769005805146357
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A317494 n) (A317496 n)

end

end A102547.P7686769005805146357

/-! ## A102547.P6064066168292441197

`gcd(A317495(n), A317497(n))`
-/

namespace A102547.P6064066168292441197
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A317495 n) (A317497 n)

end

end A102547.P6064066168292441197

/-!
# A102548: Number of positive integers <= n that are expressible in the form u^2+v^2, with u and v integers.

The programs for A102548, the canonical program `A102548.P7683038375054225144` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A102548 has offset 1).

The definition of A102548 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A102548.P12339153777998693417

`∑[A229062(n+1)]`
-/

namespace A102548.P12339153777998693417
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229062 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A102548.P12339153777998693417

namespace A102548

/-- `∑[A229062(n+1)]` -/
def P12339153777998693417.Spec : Prop :=
  ∀ n, P12339153777998693417.a n = A102548 (n + 1)

end A102548

/-! ## A102548.P12249296903323250662

`∑[A353814(5*(n+1))]`
-/

namespace A102548.P12249296903323250662
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353814 (5 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A102548.P12249296903323250662

namespace A102548

/-- `∑[A353814(5*(n+1))]` -/
def P12249296903323250662.Spec : Prop :=
  ∀ n, P12249296903323250662.a n = A102548 (n + 1)

end A102548

/-! ## A102548.P13678840860780740280

`∑[A102574(n+1)%2]`
-/

namespace A102548.P13678840860780740280
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A102574 (n + 1)) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A102548.P13678840860780740280

namespace A102548

/-- `∑[A102574(n+1)%2]` -/
def P13678840860780740280.Spec : Prop :=
  ∀ n, P13678840860780740280.a n = A102548 (n + 1)

end A102548

/-! ## A102548.P3001938313372503992

`∑[A298754(n+1)%2]`
-/

namespace A102548.P3001938313372503992
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A298754 (n + 1)) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A102548.P3001938313372503992

namespace A102548

/-- `∑[A298754(n+1)%2]` -/
def P3001938313372503992.Spec : Prop :=
  ∀ n, P3001938313372503992.a n = A102548 (n + 1)

end A102548

/-! ## A102548.P16799519684801268327

`∑[and(1, A158275(n+1))]`
-/

namespace A102548.P16799519684801268327
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A158275 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A102548.P16799519684801268327

namespace A102548

/-- `∑[and(1, A158275(n+1))]` -/
def P16799519684801268327.Spec : Prop :=
  ∀ n, P16799519684801268327.a n = A102548 (n + 1)

end A102548

/-! ## A102548.P4353175707910734814

`∑[round(atan(A002654(n+1)))]`
-/

namespace A102548.P4353175707910734814
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.arctan (A002654 (n + 1) : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A102548.P4353175707910734814

namespace A102548

/-- `∑[round(atan(A002654(n+1)))]` -/
def P4353175707910734814.Spec : Prop :=
  ∀ n, P4353175707910734814.a n = A102548 (n + 1)

end A102548

/-! ## A102548.P10385896766347153775

`∑[char[A001481(n+1)-1]]`
-/

namespace A102548.P10385896766347153775
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001481 (n + 1) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A102548.P10385896766347153775

namespace A102548

/-- `∑[char[A001481(n+1)-1]]` -/
def P10385896766347153775.Spec : Prop :=
  ∀ n, (P10385896766347153775.a n : ℤ) = A102548 (n + 1)

end A102548

/-! ## A102548.P1674959373225180355

`∑[char[A166687(n+1)-2]]`
-/

namespace A102548.P1674959373225180355
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166687 (n + 1) - 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A102548.P1674959373225180355

namespace A102548

/-- `∑[char[A166687(n+1)-2]]` -/
def P1674959373225180355.Spec : Prop :=
  ∀ n, (P1674959373225180355.a n : ℤ) = A102548 (n + 1)

end A102548

/-! ## A102548.P3812464464987844846

`∑[char[eq[0, A070176(n)]-1]]`
-/

namespace A102548.P3812464464987844846
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070176 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f3 j : ℤ) = f4 j) n : ℤ) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A102548.P3812464464987844846

namespace A102548

/-- `∑[char[eq[0, A070176(n)]-1]]` -/
def P3812464464987844846.Spec : Prop :=
  ∀ n, (P3812464464987844846.a n : ℤ) = A102548 (n + 1)

end A102548

/-! ## A102548.P16059798646133879876

`∑[char[A070176(n+1)+n]]`
-/

namespace A102548.P16059798646133879876
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070176 (n + 1) + (n : ℤ)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A102548.P16059798646133879876

namespace A102548

/-- `∑[char[A070176(n+1)+n]]` -/
def P16059798646133879876.Spec : Prop :=
  ∀ n, (P16059798646133879876.a n : ℤ) = A102548 (n + 1)

end A102548

/-! ## A102548.P15472170498263000710

`∑[A019426(A004018(n+1))]`
-/

namespace A102548.P15472170498263000710
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019426 (A004018 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A102548.P15472170498263000710

namespace A102548

/-- `∑[A019426(A004018(n+1))]` -/
def P15472170498263000710.Spec : Prop :=
  ∀ n, P15472170498263000710.a n = A102548 (n + 1)

end A102548

/-! ## A102548.P7683038375054225144

`∑[A057427(A035184(n+1))]`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A102548

/-- `∑[A057427(A035184(n+1))]` -/
def P7683038375054225144.Spec : Prop :=
  ∀ n, P7683038375054225144.a n = A102548 (n + 1)

theorem P7683038375054225144.correct : P7683038375054225144.Spec := by
  intro n
  simp only [A102548, Nat.add_sub_cancel]

end A102548

/-! ## A102548.P3120942825240016914

`∑[A010052(A262678(n+1))]`
-/

namespace A102548.P3120942825240016914
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010052 (A262678 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A102548.P3120942825240016914

namespace A102548

/-- `∑[A010052(A262678(n+1))]` -/
def P3120942825240016914.Spec : Prop :=
  ∀ n, P3120942825240016914.a n = A102548 (n + 1)

end A102548

/-! ## A102548.P53489540855850596

`∑[A002828(A002654(n+1)²)]`
-/

namespace A102548.P53489540855850596
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002828 (A002654 (n + 1) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A102548.P53489540855850596

namespace A102548

/-- `∑[A002828(A002654(n+1)²)]` -/
def P53489540855850596.Spec : Prop :=
  ∀ n, P53489540855850596.a n = A102548 (n + 1)

end A102548

/-! ## A102548.P5428030187926955031

`∑[A002828(A004018(n+1)²)]`
-/

namespace A102548.P5428030187926955031
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002828 (A004018 (n + 1) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A102548.P5428030187926955031

namespace A102548

/-- `∑[A002828(A004018(n+1)²)]` -/
def P5428030187926955031.Spec : Prop :=
  ∀ n, P5428030187926955031.a n = A102548 (n + 1)

end A102548

/-! ## A102548.P16964067246143819916

`∑[A057427(A004018(n+1)²)]`
-/

namespace A102548.P16964067246143819916
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A004018 (n + 1) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A102548.P16964067246143819916

namespace A102548

/-- `∑[A057427(A004018(n+1)²)]` -/
def P16964067246143819916.Spec : Prop :=
  ∀ n, P16964067246143819916.a n = A102548 (n + 1)

end A102548

/-! ## A102548.P5424770640659149429

`∑[A057427(A258210(n+1)²)]`
-/

namespace A102548.P5424770640659149429
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A258210 (n + 1) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A102548.P5424770640659149429

namespace A102548

/-- `∑[A057427(A258210(n+1)²)]` -/
def P5424770640659149429.Spec : Prop :=
  ∀ n, P5424770640659149429.a n = A102548 (n + 1)

end A102548

/-! ## A102548.P15844511168531605630

`∑[A057427(2*A004018(n+1))]`
-/

namespace A102548.P15844511168531605630
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (2 * A004018 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A102548.P15844511168531605630

namespace A102548

/-- `∑[A057427(2*A004018(n+1))]` -/
def P15844511168531605630.Spec : Prop :=
  ∀ n, P15844511168531605630.a n = A102548 (n + 1)

end A102548

/-! ## A102548.P9328712835320957027

`∑[A057427(A004018(n+1)/2)]`
-/

namespace A102548.P9328712835320957027
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (SequenceMachineLib.roundAway ((A004018 (n + 1) : ℚ) / 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A102548.P9328712835320957027

namespace A102548

/-- `∑[A057427(A004018(n+1)/2)]` -/
def P9328712835320957027.Spec : Prop :=
  ∀ n, P9328712835320957027.a n = A102548 (n + 1)

end A102548

/-!
# A102549: Optimal (best known) sequence of increments for shell sort algorithm.

The programs for A102549, there is no canonical definition to state claims against.
-/

/-! ## A102549.P9754310925354225847

`Δ[A331994(A332052(n))]`
-/

namespace A102549.P9754310925354225847
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331994 (A332052 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A102549.P9754310925354225847

/-! ## A102549.P12607249960337116643

`A340320(A090317(n+1))`
-/

namespace A102549.P12607249960337116643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340320 (A090317 (n + 1)).toNat

end

end A102549.P12607249960337116643

/-!
# A102550: Number of distinct prime-factors of n that are bitwise covered by n.

The programs for A102550, the canonical program `A102550.P8626534849804287658` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A102550 has offset 1).

The definition of A102550 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A102550.P8626534849804287658

`∑{p}[n+1, C(n+1, #)%2]`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A102550

/-- `∑{p}[n+1, C(n+1, #)%2]` -/
def P8626534849804287658.Spec : Prop :=
  ∀ n, (P8626534849804287658.a n : ℤ) = A102550 (n + 1)

theorem P8626534849804287658.correct : P8626534849804287658.Spec := by
  intro n
  simp only [A102550, Nat.add_sub_cancel]

end A102550

/-! ## A102550.P3226451876739763872

`∑{p}[n+1, floor(and(#, n+1)/#)]`
-/

namespace A102550.P3226451876739763872
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), ⌊(Nat.land p (n + 1) : ℚ) / (p : ℚ)⌋

end

end A102550.P3226451876739763872

namespace A102550

/-- `∑{p}[n+1, floor(and(#, n+1)/#)]` -/
def P3226451876739763872.Spec : Prop :=
  ∀ n, P3226451876739763872.a n = A102550 (n + 1)

end A102550

/-! ## A102550.P5286765271977154602

`∑{p}[n+1, val(n+1, or(#, n+1))]`
-/

namespace A102550.P5286765271977154602
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), SequenceMachineLib.valuation (n + 1) (Nat.lor p (n + 1))

end

end A102550.P5286765271977154602

namespace A102550

/-- `∑{p}[n+1, val(n+1, or(#, n+1))]` -/
def P5286765271977154602.Spec : Prop :=
  ∀ n, (P5286765271977154602.a n : ℤ) = A102550 (n + 1)

end A102550

/-! ## A102550.P15663369446356988724

`∑{p}[n+1, floor((n+1)/or(#, n+1))]`
-/

namespace A102550.P15663369446356988724
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), ⌊(n + 1 : ℚ) / (Nat.lor p (n + 1) : ℚ)⌋

end

end A102550.P15663369446356988724

namespace A102550

/-- `∑{p}[n+1, floor((n+1)/or(#, n+1))]` -/
def P15663369446356988724.Spec : Prop :=
  ∀ n, P15663369446356988724.a n = A102550 (n + 1)

end A102550

/-! ## A102550.P14941599113130842686

`∑{p}[n+1, A000007(and(#, n+1-#))]`
-/

namespace A102550.P14941599113130842686
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A000007 (Int.land (p : ℤ) ((n + 1 : ℤ) - (p : ℤ))).toNat

end

end A102550.P14941599113130842686

namespace A102550

/-- `∑{p}[n+1, A000007(and(#, n+1-#))]` -/
def P14941599113130842686.Spec : Prop :=
  ∀ n, P14941599113130842686.a n = A102550 (n + 1)

end A102550

/-! ## A102550.P17050720579653808450

`∑{p}[n+1, A047999(A000217(n+1)+#)]`
-/

namespace A102550.P17050720579653808450
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A047999 (A000217 (n + 1) + (p : ℤ)).toNat

end

end A102550.P17050720579653808450

namespace A102550

/-- `∑{p}[n+1, A047999(A000217(n+1)+#)]` -/
def P17050720579653808450.Spec : Prop :=
  ∀ n, P17050720579653808450.a n = A102550 (n + 1)

end A102550

/-!
# A102551: a(n) = [prime(n)/(prime(n+1)-prime(n))], where [x] means the integer part of x.

The programs for A102551, the canonical program `A102551.P7517770963605896930` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A102551 has offset 1).

The definition of A102551 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A102551.P7517770963605896930

`floor(A000040(n+1)/(A000040(n+2)-A000040(n+1)))`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A102551

/-- `floor(A000040(n+1)/(A000040(n+2)-A000040(n+1)))` -/
def P7517770963605896930.Spec : Prop :=
  ∀ n, P7517770963605896930.a n = A102551 (n + 1)

theorem P7517770963605896930.correct : P7517770963605896930.Spec := by
  intro n
  simp only [A102551, Nat.add_sub_cancel]

end A102551

/-! ## A102551.P11079820928045161512

`floor(Δ[A007504(n)]/A001223(n+1))`
-/

namespace A102551.P11079820928045161512
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(f1 (n + 1) - f1 n : ℚ) / (A001223 (n + 1) : ℚ)⌋

end

end A102551.P11079820928045161512

namespace A102551

/-- `floor(Δ[A007504(n)]/A001223(n+1))` -/
def P11079820928045161512.Spec : Prop :=
  ∀ n, P11079820928045161512.a n = A102551 (n + 1)

end A102551

/-! ## A102551.P16108284931916342122

`floor(A000040(n+1)/A001223(n+1))`
-/

namespace A102551.P16108284931916342122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000040 (n + 1) : ℚ) / (A001223 (n + 1) : ℚ)⌋

end

end A102551.P16108284931916342122

namespace A102551

/-- `floor(A000040(n+1)/A001223(n+1))` -/
def P16108284931916342122.Spec : Prop :=
  ∀ n, P16108284931916342122.a n = A102551 (n + 1)

theorem P16108284931916342122.correct : P16108284931916342122.Spec := by
  intro n
  simp only [A102551, Nat.add_sub_cancel, A102551.P16108284931916342122.a, A102551.P7517770963605896930.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A001223, A001223.P5034056745985311719.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A102551

/-! ## A102551.P13526479949378613891

`round(A079704(n+1)/A069482(n+1))`
-/

namespace A102551.P13526479949378613891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A079704 (n + 1) : ℚ) / (A069482 (n + 1) : ℚ))

end

end A102551.P13526479949378613891

namespace A102551

/-- `round(A079704(n+1)/A069482(n+1))` -/
def P13526479949378613891.Spec : Prop :=
  ∀ n, P13526479949378613891.a n = A102551 (n + 1)

end A102551

/-! ## A102551.P2290705094941136026

`floor(sqrt(A001248(n+1))/A001223(n+1))`
-/

namespace A102551.P2290705094941136026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sqrt (A001248 (n + 1) : ℝ) / (A001223 (n + 1) : ℝ)⌋

end

end A102551.P2290705094941136026

namespace A102551

/-- `floor(sqrt(A001248(n+1))/A001223(n+1))` -/
def P2290705094941136026.Spec : Prop :=
  ∀ n, P2290705094941136026.a n = A102551 (n + 1)

end A102551

/-! ## A102551.P9234567022267635345

`floor(∑[A054541(n+1)]/A001223(n+1))`
-/

namespace A102551.P9234567022267635345
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054541 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (A001223 (n + 1) : ℚ)⌋

end

end A102551.P9234567022267635345

namespace A102551

/-- `floor(∑[A054541(n+1)]/A001223(n+1))` -/
def P9234567022267635345.Spec : Prop :=
  ∀ n, P9234567022267635345.a n = A102551 (n + 1)

end A102551

/-! ## A102551.P1285719049310838374

`floor(A001748(n+1)/Δ[A001748(n+1)])`
-/

namespace A102551.P1285719049310838374
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001748 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A001748 (n + 1) : ℚ) / (f1 (n + 1) - f1 n : ℚ)⌋

end

end A102551.P1285719049310838374

namespace A102551

/-- `floor(A001748(n+1)/Δ[A001748(n+1)])` -/
def P1285719049310838374.Spec : Prop :=
  ∀ n, P1285719049310838374.a n = A102551 (n + 1)

theorem P1285719049310838374.correct : P1285719049310838374.Spec := by
  intro n
  simp only [A102551, Nat.add_sub_cancel, A102551.P1285719049310838374.f1, A102551.P1285719049310838374.a, A102551.P7517770963605896930.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A001748, A001748.P16019639290970068825.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A102551

/-! ## A102551.P12927849739760616324

`floor(A001749(n+1)/Δ[A001749(n+1)])`
-/

namespace A102551.P12927849739760616324
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001749 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A001749 (n + 1) : ℚ) / (f1 (n + 1) - f1 n : ℚ)⌋

end

end A102551.P12927849739760616324

namespace A102551

/-- `floor(A001749(n+1)/Δ[A001749(n+1)])` -/
def P12927849739760616324.Spec : Prop :=
  ∀ n, P12927849739760616324.a n = A102551 (n + 1)

theorem P12927849739760616324.correct : P12927849739760616324.Spec := by
  intro n
  simp only [A102551, Nat.add_sub_cancel, A102551.P12927849739760616324.f1, A102551.P12927849739760616324.a, A102551.P7517770963605896930.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A001749, A001749.P16106244962881767471.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A102551

/-! ## A102551.P4635273628721873689

`floor((A006093(n+1)+1)/A001223(n+1))`
-/

namespace A102551.P4635273628721873689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A006093 (n + 1) + 1 : ℚ) / (A001223 (n + 1) : ℚ)⌋

end

end A102551.P4635273628721873689

namespace A102551

/-- `floor((A006093(n+1)+1)/A001223(n+1))` -/
def P4635273628721873689.Spec : Prop :=
  ∀ n, P4635273628721873689.a n = A102551 (n + 1)

theorem P4635273628721873689.correct : P4635273628721873689.Spec := by
  intro n
  simp only [A102551, Nat.add_sub_cancel, A102551.P4635273628721873689.a, A102551.P7517770963605896930.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A001223, A001223.P5034056745985311719.a, A006093, A006093.P2906174024863549003.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A102551

/-! ## A102551.P18042449499528338020

`floor((A008864(n+1)-1)/A001223(n+1))`
-/

namespace A102551.P18042449499528338020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A008864 (n + 1) - 1 : ℚ) / (A001223 (n + 1) : ℚ)⌋

end

end A102551.P18042449499528338020

namespace A102551

/-- `floor((A008864(n+1)-1)/A001223(n+1))` -/
def P18042449499528338020.Spec : Prop :=
  ∀ n, P18042449499528338020.a n = A102551 (n + 1)

theorem P18042449499528338020.correct : P18042449499528338020.Spec := by
  intro n
  simp only [A102551, Nat.add_sub_cancel, A102551.P18042449499528338020.a, A102551.P7517770963605896930.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A001223, A001223.P5034056745985311719.a, A008864, A008864.P9177617808325052279.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A102551

/-! ## A102551.P12110316923540799637

`floor((A040976(n+1)+2)/A001223(n+1))`
-/

namespace A102551.P12110316923540799637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A040976 (n + 1) + 2 : ℚ) / (A001223 (n + 1) : ℚ)⌋

end

end A102551.P12110316923540799637

namespace A102551

/-- `floor((A040976(n+1)+2)/A001223(n+1))` -/
def P12110316923540799637.Spec : Prop :=
  ∀ n, P12110316923540799637.a n = A102551 (n + 1)

theorem P12110316923540799637.correct : P12110316923540799637.Spec := by
  intro n
  simp only [A102551, Nat.add_sub_cancel, A102551.P12110316923540799637.a, A102551.P7517770963605896930.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A001223, A001223.P5034056745985311719.a, A040976, A040976.P11599754272797435513.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A102551

/-! ## A102551.P17644103822006985855

`floor(A065091(n+1)/A001223(n+1))-1`
-/

namespace A102551.P17644103822006985855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A065091 (n + 1) : ℚ) / (A001223 (n + 1) : ℚ)⌋ - 1

end

end A102551.P17644103822006985855

namespace A102551

/-- `floor(A065091(n+1)/A001223(n+1))-1` -/
def P17644103822006985855.Spec : Prop :=
  ∀ n, P17644103822006985855.a n = A102551 (n + 1)

end A102551

/-! ## A102551.P10460079943797420899

`floor(A210497(n+1)/A001223(n+1))-2`
-/

namespace A102551.P10460079943797420899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A210497 (n + 1) : ℚ) / (A001223 (n + 1) : ℚ)⌋ - 2

end

end A102551.P10460079943797420899

namespace A102551

/-- `floor(A210497(n+1)/A001223(n+1))-2` -/
def P10460079943797420899.Spec : Prop :=
  ∀ n, P10460079943797420899.a n = A102551 (n + 1)

end A102551

/-! ## A102551.P10055859957072948000

`round(A069484(n+1)/A069482(n+1))-1`
-/

namespace A102551.P10055859957072948000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A069484 (n + 1) : ℚ) / (A069482 (n + 1) : ℚ)) - 1

end

end A102551.P10055859957072948000

namespace A102551

/-- `round(A069484(n+1)/A069482(n+1))-1` -/
def P10055859957072948000.Spec : Prop :=
  ∀ n, P10055859957072948000.a n = A102551 (n + 1)

end A102551

/-! ## A102551.P17709447864491297818

`(A000040(n+1)-A060234(n+1))/A001223(n+1)`
-/

namespace A102551.P17709447864491297818
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000040 (n + 1) - A060234 (n + 1) : ℚ) / (A001223 (n + 1) : ℚ)

end

end A102551.P17709447864491297818

namespace A102551

/-- `(A000040(n+1)-A060234(n+1))/A001223(n+1)` -/
def P17709447864491297818.Spec : Prop :=
  ∀ n, P17709447864491297818.a n = (A102551 (n + 1) : ℚ)

end A102551

/-! ## A102551.P6658842969718641184

`floor(A001750(n+1)/Δ[A001750(n+1)])`
-/

namespace A102551.P6658842969718641184
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001750 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A001750 (n + 1) : ℚ) / (f1 (n + 1) - f1 n : ℚ)⌋

end

end A102551.P6658842969718641184

namespace A102551

/-- `floor(A001750(n+1)/Δ[A001750(n+1)])` -/
def P6658842969718641184.Spec : Prop :=
  ∀ n, P6658842969718641184.a n = A102551 (n + 1)

theorem P6658842969718641184.correct : P6658842969718641184.Spec := by
  intro n
  simp only [A102551, Nat.add_sub_cancel, A102551.P6658842969718641184.f1, A102551.P6658842969718641184.a, A102551.P7517770963605896930.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A001750, A001750.P4133817528224649628.f1, A001750.P4133817528224649628.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A102551

/-! ## A102551.P5503263565108372326

`floor(A000040(n+1)/Δ[A006093(n+1)])`
-/

namespace A102551.P5503263565108372326
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000040 (n + 1) : ℚ) / (f1 (n + 1) - f1 n : ℚ)⌋

end

end A102551.P5503263565108372326

namespace A102551

/-- `floor(A000040(n+1)/Δ[A006093(n+1)])` -/
def P5503263565108372326.Spec : Prop :=
  ∀ n, P5503263565108372326.a n = A102551 (n + 1)

theorem P5503263565108372326.correct : P5503263565108372326.Spec := by
  intro n
  simp only [A102551, Nat.add_sub_cancel, A102551.P5503263565108372326.f1, A102551.P5503263565108372326.a, A102551.P7517770963605896930.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A006093, A006093.P2906174024863549003.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A102551

/-! ## A102551.P10457879983933551416

`floor(A142342(n+1)/Δ[A142342(n+1)])`
-/

namespace A102551.P10457879983933551416
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142342 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A142342 (n + 1) : ℚ) / (f1 (n + 1) - f1 n : ℚ)⌋

end

end A102551.P10457879983933551416

namespace A102551

/-- `floor(A142342(n+1)/Δ[A142342(n+1)])` -/
def P10457879983933551416.Spec : Prop :=
  ∀ n, P10457879983933551416.a n = A102551 (n + 1)

theorem P10457879983933551416.correct : P10457879983933551416.Spec := by
  intro n
  simp only [A102551, Nat.add_sub_cancel, A102551.P10457879983933551416.f1, A102551.P10457879983933551416.a, A102551.P7517770963605896930.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A142342, A142342.P5141650117013135676.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A102551

/-! ## A102551.P17079413205947032410

`floor(A008578(n+2)/Δ[A008578(n+2)])`
-/

namespace A102551.P17079413205947032410
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A008578 (n + 2) : ℚ) / (f1 (n + 1) - f1 n : ℚ)⌋

end

end A102551.P17079413205947032410

namespace A102551

/-- `floor(A008578(n+2)/Δ[A008578(n+2)])` -/
def P17079413205947032410.Spec : Prop :=
  ∀ n, P17079413205947032410.a n = A102551 (n + 1)

end A102551

/-! ## A102551.P7994468459622629410

`floor(p?[A000961(n+1)]/A001223(n+1))`
-/

namespace A102551.P7994468459622629410
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000961 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ) / (A001223 (n + 1) : ℚ)⌋

end

end A102551.P7994468459622629410

namespace A102551

/-- `floor(p?[A000961(n+1)]/A001223(n+1))` -/
def P7994468459622629410.Spec : Prop :=
  ∀ n, P7994468459622629410.a n = A102551 (n + 1)

end A102551

/-!
# A102552: a(n) = prime(n) - (prime(n+1) + prime(n-1))/2.

The programs for A102552, the canonical program `A102552.P5250059881611389218` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A102552 has offset 3).

The definition of A102552 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A102552.P16436572411096637984

`1/2*(A001223(n+2)-A001223(n+3))`
-/

namespace A102552.P16436572411096637984
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 2 * (A001223 (n + 2) - A001223 (n + 3) : ℚ)

end

end A102552.P16436572411096637984

namespace A102552

/-- `1/2*(A001223(n+2)-A001223(n+3))` -/
def P16436572411096637984.Spec : Prop :=
  ∀ n, P16436572411096637984.a n = (A102552 (n + 3) : ℚ)

end A102552

/-! ## A102552.P5250059881611389218

`A000040(n+3)-(A000040(n+2)+A000040(n+4))/2`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A102552

/-- `A000040(n+3)-(A000040(n+2)+A000040(n+4))/2` -/
def P5250059881611389218.Spec : Prop :=
  ∀ n, P5250059881611389218.a n = (A102552 (n + 3) : ℚ)

end A102552

/-! ## A102552.P4047276442453690633

`A000040(n+3)-(A000040(n+4)+A000040(n+2))/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A102552.P4047276442453690633
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000040 (n + 3) : ℚ) - (A000040 (n + 4) + A000040 (n + 2) : ℚ) / 2

end

end A102552.P4047276442453690633

namespace A102552

/-- `A000040(n+3)-(A000040(n+4)+A000040(n+2))/2` -/
def P4047276442453690633.Spec : Prop :=
  ∀ n, P4047276442453690633.a n = (A102552 (n + 3) : ℚ)

end A102552

/-! ## A102552.P1921326590522321813

`Δ[-(A001223(n+2)/2)]`
-/

namespace A102552.P1921326590522321813
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  -((A001223 (n + 2) : ℚ) / 2)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A102552.P1921326590522321813

namespace A102552

/-- `Δ[-(A001223(n+2)/2)]` -/
def P1921326590522321813.Spec : Prop :=
  ∀ n, P1921326590522321813.a n = (A102552 (n + 3) : ℚ)

end A102552

/-! ## A102552.P1316841991025119562

`A036263(n+2)/(A001359(n+1)-A006512(n+1))`
-/

namespace A102552.P1316841991025119562
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A036263 (n + 2) : ℚ) / (A001359 (n + 1) - A006512 (n + 1) : ℚ)

end

end A102552.P1316841991025119562

namespace A102552

/-- `A036263(n+2)/(A001359(n+1)-A006512(n+1))` -/
def P1316841991025119562.Spec : Prop :=
  ∀ n, P1316841991025119562.a n = (A102552 (n + 3) : ℚ)

end A102552

/-! ## A102552.P16381202405658012009

`A073274(n+2)-1`
-/

namespace A102552.P16381202405658012009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073274 (n + 2) - 1

end

end A102552.P16381202405658012009

namespace A102552

/-- `A073274(n+2)-1` -/
def P16381202405658012009.Spec : Prop :=
  ∀ n, P16381202405658012009.a n = A102552 (n + 3)

end A102552

/-! ## A102552.P15611465329872959954

`Δ[-A028334(n+2)]`
-/

namespace A102552.P15611465329872959954
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A028334 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A102552.P15611465329872959954

namespace A102552

/-- `Δ[-A028334(n+2)]` -/
def P15611465329872959954.Spec : Prop :=
  ∀ n, P15611465329872959954.a n = A102552 (n + 3)

end A102552

/-! ## A102552.P12181749252946644683

`A073273(n+2)-A258326(n+2)`
-/

namespace A102552.P12181749252946644683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073273 (n + 2) - A258326 (n + 2)

end

end A102552.P12181749252946644683

namespace A102552

/-- `A073273(n+2)-A258326(n+2)` -/
def P12181749252946644683.Spec : Prop :=
  ∀ n, P12181749252946644683.a n = A102552 (n + 3)

end A102552

/-! ## A102552.P6875977818776382473

`A305748(n+2)-A375097(n+2)`
-/

namespace A102552.P6875977818776382473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305748 (n + 2) - A375097 (n + 2)

end

end A102552.P6875977818776382473

namespace A102552

/-- `A305748(n+2)-A375097(n+2)` -/
def P6875977818776382473.Spec : Prop :=
  ∀ n, P6875977818776382473.a n = A102552 (n + 3)

end A102552

/-! ## A102552.P15059347774426130346

`A028334(n+2)-A028334(n+3)`
-/

namespace A102552.P15059347774426130346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028334 (n + 2) - A028334 (n + 3)

end

end A102552.P15059347774426130346

namespace A102552

/-- `A028334(n+2)-A028334(n+3)` -/
def P15059347774426130346.Spec : Prop :=
  ∀ n, P15059347774426130346.a n = A102552 (n + 3)

end A102552

/-! ## A102552.P12094520415006498080

`A191472(n+1)-(A305748(n+1)+A305748(n+2))`
-/

namespace A102552.P12094520415006498080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191472 (n + 1) - (A305748 (n + 1) + A305748 (n + 2))

end

end A102552.P12094520415006498080

namespace A102552

/-- `A191472(n+1)-(A305748(n+1)+A305748(n+2))` -/
def P12094520415006498080.Spec : Prop :=
  ∀ n, P12094520415006498080.a n = A102552 (n + 3)

end A102552

/-! ## A102552.P6263995202936356356

`A024675(n+1)+A001223(n+2)-A024675(n+2)`
-/

namespace A102552.P6263995202936356356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024675 (n + 1) + (A001223 (n + 2) - A024675 (n + 2))

end

end A102552.P6263995202936356356

namespace A102552

/-- `A024675(n+1)+A001223(n+2)-A024675(n+2)` -/
def P6263995202936356356.Spec : Prop :=
  ∀ n, P6263995202936356356.a n = A102552 (n + 3)

end A102552

/-! ## A102552.P7410994807580082556

`A089038(n+1)+A098090(n+2)-A073273(n+2)`
-/

namespace A102552.P7410994807580082556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089038 (n + 1) + (A098090 (n + 2) - A073273 (n + 2))

end

end A102552.P7410994807580082556

namespace A102552

/-- `A089038(n+1)+A098090(n+2)-A073273(n+2)` -/
def P7410994807580082556.Spec : Prop :=
  ∀ n, P7410994807580082556.a n = A102552 (n + 3)

end A102552

/-! ## A102552.P3492627079135757131

`A096379(n+2)+A305748(n+2)-A024675(n+1)`
-/

namespace A102552.P3492627079135757131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096379 (n + 2) + (A305748 (n + 2) - A024675 (n + 1))

end

end A102552.P3492627079135757131

namespace A102552

/-- `A096379(n+2)+A305748(n+2)-A024675(n+1)` -/
def P3492627079135757131.Spec : Prop :=
  ∀ n, P3492627079135757131.a n = A102552 (n + 3)

end A102552

/-! ## A102552.P2160865174657649209

`A006254(n+2)+A067076(n+2)-A073273(n+2)`
-/

namespace A102552.P2160865174657649209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006254 (n + 2) + (A067076 (n + 2) - A073273 (n + 2))

end

end A102552.P2160865174657649209

namespace A102552

/-- `A006254(n+2)+A067076(n+2)-A073273(n+2)` -/
def P2160865174657649209.Spec : Prop :=
  ∀ n, P2160865174657649209.a n = A102552 (n + 3)

end A102552

/-! ## A102552.P2043552274026038152

`A024675(n+2)-(A375097(n+2)+A000040(n+2))`
-/

namespace A102552.P2043552274026038152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024675 (n + 2) - (A375097 (n + 2) + A000040 (n + 2))

end

end A102552.P2043552274026038152

namespace A102552

/-- `A024675(n+2)-(A375097(n+2)+A000040(n+2))` -/
def P2043552274026038152.Spec : Prop :=
  ∀ n, P2043552274026038152.a n = A102552 (n + 3)

end A102552

/-! ## A102552.P11333856029581745161

`Δ[-Δ[p?[2*n+1]/2]]`
-/

namespace A102552.P11333856029581745161
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f3 (SequenceMachineLib.nth (fun j => (f3 j).Prime) n) : ℚ) / 2

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  -(f2 (n + 1) - f2 n)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A102552.P11333856029581745161

namespace A102552

/-- `Δ[-Δ[p?[2*n+1]/2]]` -/
def P11333856029581745161.Spec : Prop :=
  ∀ n, P11333856029581745161.a n = (A102552 (n + 3) : ℚ)

end A102552

/-! ## A102552.P11191669577378850956

`Δ[-A100820(n+2)]`
-/

namespace A102552.P11191669577378850956
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A100820 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A102552.P11191669577378850956

namespace A102552

/-- `Δ[-A100820(n+2)]` -/
def P11191669577378850956.Spec : Prop :=
  ∀ n, P11191669577378850956.a n = A102552 (n + 3)

end A102552

/-! ## A102552.P16641361043916874751

`Δ[Δ[-A006254(n+1)]]`
-/

namespace A102552.P16641361043916874751
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A006254 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A102552.P16641361043916874751

namespace A102552

/-- `Δ[Δ[-A006254(n+1)]]` -/
def P16641361043916874751.Spec : Prop :=
  ∀ n, P16641361043916874751.a n = A102552 (n + 3)

end A102552

/-!
# A102553: Numbers k such that for all prime-factors p: p = (k AND p), bitwise.

The programs for A102553, the canonical program `A102553.P12254408032347522241` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A102553 has offset 1).

The definition of A102553 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1541 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A102553.P12254408032347522241

`eq[A001221(n+1), A102550(n+1)]+1`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A102553

/-- `eq[A001221(n+1), A102550(n+1)]+1` -/
def P12254408032347522241.Spec : Prop :=
  ∀ n, (P12254408032347522241.a n : ℤ) = A102553 (n + 1)

theorem P12254408032347522241.correct : P12254408032347522241.Spec := by
  intro n
  simp only [A102553, Nat.add_sub_cancel]

end A102553

/-! ## A102553.P5282834110908308595

`lt[A318518(n+1), A318434(n+3)]+1`
-/

namespace A102553.P5282834110908308595
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318518 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318434 (n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A102553.P5282834110908308595

namespace A102553

/-- `lt[A318518(n+1), A318434(n+3)]+1` -/
def P5282834110908308595.Spec : Prop :=
  ∀ n, (P5282834110908308595.a n : ℤ) = A102553 (n + 1)

end A102553

/-! ## A102553.P15512544955501129176

`eq[n, A218388(A028310(n))-A333767(n)]`
-/

namespace A102553.P15512544955501129176
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218388 (A028310 n).toNat - A333767 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A102553.P15512544955501129176

namespace A102553

/-- `eq[n, A218388(A028310(n))-A333767(n)]` -/
def P15512544955501129176.Spec : Prop :=
  ∀ n, (P15512544955501129176.a n : ℤ) = A102553 (n + 1)

end A102553

/-! ## A102553.P10365193068014980805

`lt[A107393(n), A107393(A070265(n+1))]`
-/

namespace A102553.P10365193068014980805
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107393 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107393 (A070265 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A102553.P10365193068014980805

namespace A102553

/-- `lt[A107393(n), A107393(A070265(n+1))]` -/
def P10365193068014980805.Spec : Prop :=
  ∀ n, (P10365193068014980805.a n : ℤ) = A102553 (n + 1)

end A102553

/-! ## A102553.P15514646355442930806

`eq[A027640(n), A353495(n)]`
-/

namespace A102553.P15514646355442930806
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027640 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353495 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A102553.P15514646355442930806

namespace A102553

/-- `eq[A027640(n), A353495(n)]` -/
def P15514646355442930806.Spec : Prop :=
  ∀ n, (P15514646355442930806.a n : ℤ) = A102553 (n + 1)

end A102553

/-!
# A102554: Numbers k such that p <> (k AND p) for at least one prime-factor p.

The programs for A102554, there is no canonical definition to state claims against.
-/

/-! ## A102554.P15947687755374066740

`comp[A102553(n+1)-1]+1`
-/

namespace A102554.P15947687755374066740
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102553 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A102554.P15947687755374066740

/-! ## A102554.P507368712568022034

`lt[n+1, or(n+1, A072505(n+1))]+1`
-/

namespace A102554.P507368712568022034
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n + 1 : ℤ) (A072505 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A102554.P507368712568022034

/-! ## A102554.P7751012354090813463

`comp[A023443(A102553(n+1))]+1`
-/

namespace A102554.P7751012354090813463
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A102553 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A102554.P7751012354090813463

/-! ## A102554.P1420085295529919890

`eq[char[A102553(n+1)], A000007(n)]`
-/

namespace A102554.P1420085295529919890
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102553 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A102554.P1420085295529919890

/-! ## A102554.P15872589804070392644

`eq[char[A102553(n+1)], A000038(n)]`
-/

namespace A102554.P15872589804070392644
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102553 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A102554.P15872589804070392644

/-! ## A102554.P67525432801900555

`eq[char[A102553(n+1)], A341629(2*n+1)]`
-/

namespace A102554.P67525432801900555
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102553 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341629 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A102554.P67525432801900555

/-! ## A102554.P14484908580041689162

`record[A002808(n+1)%A218388(A002808(n+1))]`
-/

namespace A102554.P14484908580041689162
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002808 (n + 1)) (A218388 (A002808 (n + 1)).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A102554.P14484908580041689162

/-! ## A102554.P2042211966001098243

`A355670(n+2)`
-/

namespace A102554.P2042211966001098243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355670 (n + 2)

end

end A102554.P2042211966001098243

/-! ## A102554.P16044348170137232048

`A020725(lt[A316917(n+1), A318518(n+1)])`
-/

namespace A102554.P16044348170137232048
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316917 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318518 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A102554.P16044348170137232048

/-!
# A102555: Smallest number covering bitwise exactly n prime factors.

The programs for A102555, there is no canonical definition to state claims against.
-/

/-! ## A102555.P3898929004895411698

`A164661(A109634(n))`
-/

namespace A102555.P3898929004895411698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164661 (A109634 n).toNat

end

end A102555.P3898929004895411698

/-!
# A102556: Numerator of the probability that 2n-dimensional Gaussian random triangle has an obtuse angle.

The programs for A102556, there is no canonical definition to state claims against.
-/

/-! ## A102556.P10039733444097716142

`A000027(lcm(3, A123130(n+1)))`
-/

namespace A102556.P10039733444097716142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (Int.lcm 3 (A123130 (n + 1)))

end

end A102556.P10039733444097716142

/-!
# A102558: Numerator of the probability that (2n+1)-dimensional Gaussian random triangle has an obtuse angle.

The programs for A102558, there is no canonical definition to state claims against.
-/

/-! ## A102558.P12236526510928738554

`3*A064989(A359235(n))`
-/

namespace A102558.P12236526510928738554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A064989 (A359235 n).toNat

end

end A102558.P12236526510928738554

/-!
# A102559: Denominator of the probability that (2n+1)-dimensional Gaussian random triangle has an obtuse angle.

The programs for A102559, there is no canonical definition to state claims against.
-/

/-! ## A102559.P17830026424066498627

`A001370(p?[A174191(∑{digits}[2^n, #])])`
-/

namespace A102559.P17830026424066498627
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174191 ((SequenceMachineLib.digits10 (f2 n)).map fun (x : ℕ) => x).sum

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001370 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A102559.P17830026424066498627

/-!
# A102560: Expansion of (1-x^3)/(1-x^4).

The programs for A102560, the canonical program `A102560.P3921218091727018225` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A102560 has offset 0).

The definition of A102560 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-x^3)/(1-x^4))` (program `A102560.P3921218091727018225`, by `A102560.P3921218091727018225.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A102560.P9524467426007836049

`ogf((1+x+x^2)/(1+x+x^2+x^3))`
-/

namespace A102560.P9524467426007836049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1, 1] [1, 1, 1, 1] n

end

end A102560.P9524467426007836049

namespace A102560

/-- `ogf((1+x+x^2)/(1+x+x^2+x^3))` -/
def P9524467426007836049.Spec : Prop :=
  ∀ n, P9524467426007836049.a n = A102560 n

end A102560

/-! ## A102560.P3921218091727018225

`ogf((1-x^3)/(1-x^4))`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A102560

/-- `ogf((1-x^3)/(1-x^4))` -/
def P3921218091727018225.Spec : Prop :=
  ∀ n, P3921218091727018225.a n = A102560 n

theorem P3921218091727018225.correct : P3921218091727018225.Spec := by
  intro n
  simp only [A102560]

end A102560

/-!
# A102561: a(n) = 2^floor(n/2)*((-1)^floor(n/2) + (-1)^n)/2.

The programs for A102561, the canonical program `A102561.P8439547545124440301` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A102561 has offset 0).

The definition of A102561 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A102561.P8439547545124440301

`4*a(n-4)` with `a(0)=1, a(1)=0, a(2)=0, a(3)=-2`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A102561

/-- `4*a(n-4)` -/
def P8439547545124440301.Spec : Prop :=
  ∀ n, P8439547545124440301.a n = A102561 n

theorem P8439547545124440301.correct : P8439547545124440301.Spec := by
  intro n
  simp only [A102561]

end A102561

/-! ## A102561.P8170695614752510036

`A102560(n)*2^floor(n/2)`
-/

namespace A102561.P8170695614752510036
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A102560 n : ℚ) * (2 : ℚ) ^ (⌊(n : ℚ) / 2⌋ : ℤ)

end

end A102561.P8170695614752510036

namespace A102561

/-- `A102560(n)*2^floor(n/2)` -/
def P8170695614752510036.Spec : Prop :=
  ∀ n, P8170695614752510036.a n = (A102561 n : ℚ)

end A102561

/-! ## A102561.P5107428596394675077

`ogf((1-2x^3)/(1-4x^4))`
-/

namespace A102561.P5107428596394675077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 0, 0, -2] [1, 0, 0, 0, -4] n

end

end A102561.P5107428596394675077

namespace A102561

/-- `ogf((1-2x^3)/(1-4x^4))` -/
def P5107428596394675077.Spec : Prop :=
  ∀ n, P5107428596394675077.a n = A102561 n

end A102561

/-! ## A102561.P6406026825189912385

`2^floor(n/2)*((-1)^floor(n/2)+(-1)^n)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A102561.P6406026825189912385
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (⌊(n : ℚ) / 2⌋ : ℤ) * ((-1 : ℚ) ^ (⌊(n : ℚ) / 2⌋ : ℤ) + ((-1) ^ n : ℚ)) / 2

end

end A102561.P6406026825189912385

namespace A102561

/-- `2^floor(n/2)*((-1)^floor(n/2)+(-1)^n)/2` -/
def P6406026825189912385.Spec : Prop :=
  ∀ n, P6406026825189912385.a n = (A102561 n : ℚ)

end A102561

/-! ## A102561.P247472965664600319

`Δ[A084247(A004525(n))]`
-/

namespace A102561.P247472965664600319
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084247 (A004525 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A102561.P247472965664600319

namespace A102561

/-- `Δ[A084247(A004525(n))]` -/
def P247472965664600319.Spec : Prop :=
  ∀ n, P247472965664600319.a n = A102561 n

end A102561

/-! ## A102561.P14673780442808899247

`A077959(A047246(n+1))`
-/

namespace A102561.P14673780442808899247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077959 (A047246 (n + 1)).toNat

end

end A102561.P14673780442808899247

namespace A102561

/-- `A077959(A047246(n+1))` -/
def P14673780442808899247.Spec : Prop :=
  ∀ n, P14673780442808899247.a n = A102561 n

end A102561

/-! ## A102561.P13597373381245493231

`A077966(n-A021913(n))`
-/

namespace A102561.P13597373381245493231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077966 ((n : ℤ) - A021913 n).toNat

end

end A102561.P13597373381245493231

namespace A102561

/-- `A077966(n-A021913(n))` -/
def P13597373381245493231.Spec : Prop :=
  ∀ n, P13597373381245493231.a n = A102561 n

end A102561

/-! ## A102561.P13513823163086398990

`A009116(n)*A046980(n+1)`
-/

namespace A102561.P13513823163086398990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009116 n * A046980 (n + 1)

end

end A102561.P13513823163086398990

namespace A102561

/-- `A009116(n)*A046980(n+1)` -/
def P13513823163086398990.Spec : Prop :=
  ∀ n, P13513823163086398990.a n = A102561 n

end A102561

/-! ## A102561.P15463968657018602412

`A016116(n)*A102560(n)`
-/

namespace A102561.P15463968657018602412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016116 n * A102560 n

end

end A102561.P15463968657018602412

namespace A102561

/-- `A016116(n)*A102560(n)` -/
def P15463968657018602412.Spec : Prop :=
  ∀ n, P15463968657018602412.a n = A102561 n

end A102561

/-! ## A102561.P4973604494379090940

`lcm(a(n-1), A117575(n+1))-A131575(n)` with `a(0)=1`
-/

namespace A102561.P4973604494379090940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (Int.lcm (a (n - 1)) (A117575 (n + 1)) : ℤ) - A131575 n

end

end A102561.P4973604494379090940

namespace A102561

/-- `lcm(a(n-1), A117575(n+1))-A131575(n)` -/
def P4973604494379090940.Spec : Prop :=
  ∀ n, P4973604494379090940.a n = A102561 n

end A102561

/-! ## A102561.P13487958436092870919

`(A166486(n+1)-A166486(n))*A117575(n+1)`
-/

namespace A102561.P13487958436092870919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A166486 (n + 1) - A166486 n) * A117575 (n + 1)

end

end A102561.P13487958436092870919

namespace A102561

/-- `(A166486(n+1)-A166486(n))*A117575(n+1)` -/
def P13487958436092870919.Spec : Prop :=
  ∀ n, P13487958436092870919.a n = A102561 n

end A102561

/-! ## A102561.P8308098650043320583

`∏[A010121(n)]-A060546(n)`
-/

namespace A102561.P8308098650043320583
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010121 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j - A060546 n

end

end A102561.P8308098650043320583

namespace A102561

/-- `∏[A010121(n)]-A060546(n)` -/
def P8308098650043320583.Spec : Prop :=
  ∀ n, P8308098650043320583.a n = A102561 n

end A102561

/-! ## A102561.P6646008171463874068

`A122803(n)%A308709(n+1)`
-/

namespace A102561.P6646008171463874068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A122803 n) (A308709 (n + 1))

end

end A102561.P6646008171463874068

namespace A102561

/-- `A122803(n)%A308709(n+1)` -/
def P6646008171463874068.Spec : Prop :=
  ∀ n, P6646008171463874068.a n = A102561 n

end A102561

/-! ## A102561.P8024922933003867887

`A077966(A116939(∑[n]))`
-/

namespace A102561.P8024922933003867887
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077966 (A116939 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A102561.P8024922933003867887

namespace A102561

/-- `A077966(A116939(∑[n]))` -/
def P8024922933003867887.Spec : Prop :=
  ∀ n, P8024922933003867887.a n = A102561 n

end A102561

/-!
# A102562: Numbers k such that the cyclic group of order k is not a Hajós group.

The programs for A102562, the canonical program `A102562.P6015592311241824231` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A102562 has offset 1).

The definition of A102562 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8830 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A102562.P6015592311241824231

`filter[A046304(n+1), A379958(#)]`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A102562

/-- `filter[A046304(n+1), A379958(#)]` -/
def P6015592311241824231.Spec : Prop :=
  ∀ n, P6015592311241824231.a n = A102562 (n + 1)

theorem P6015592311241824231.correct : P6015592311241824231.Spec := by
  intro n
  simp only [A102562, Nat.add_sub_cancel]

end A102562

/-! ## A102562.P15605529800549587167

`∩[A046304(n+1), A320632(n+1)]`
-/

namespace A102562.P15605529800549587167
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046304 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320632 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A102562.P15605529800549587167

namespace A102562

/-- `∩[A046304(n+1), A320632(n+1)]` -/
def P15605529800549587167.Spec : Prop :=
  ∀ n, (P15605529800549587167.a n : ℤ) = A102562 (n + 1)

end A102562

/-! ## A102562.P17751025908005263242

`lt[17, A101296(A295666(n+4))]+4`
-/

namespace A102562.P17751025908005263242
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  17

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101296 (A295666 (n + 4)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 4

end

end A102562.P17751025908005263242

namespace A102562

/-- `lt[17, A101296(A295666(n+4))]+4` -/
def P17751025908005263242.Spec : Prop :=
  ∀ n, (P17751025908005263242.a n : ℤ) = A102562 (n + 1)

end A102562

/-! ## A102562.P6446916639015585159

`∩[A046304(n+1), A350353(n+1)]`
-/

namespace A102562.P6446916639015585159
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046304 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350353 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A102562.P6446916639015585159

namespace A102562

/-- `∩[A046304(n+1), A350353(n+1)]` -/
def P6446916639015585159.Spec : Prop :=
  ∀ n, (P6446916639015585159.a n : ℤ) = A102562 (n + 1)

end A102562

/-! ## A102562.P6554047735771042541

`∩[A109422(n+1), A379336(n+1)]`
-/

namespace A102562.P6554047735771042541
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109422 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379336 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A102562.P6554047735771042541

namespace A102562

/-- `∩[A109422(n+1), A379336(n+1)]` -/
def P6554047735771042541.Spec : Prop :=
  ∀ n, (P6554047735771042541.a n : ℤ) = A102562 (n + 1)

end A102562

/-!
# A102563: a(n) = A000120(A001045(n)) - A001045(A000120(n)).

The programs for A102563, the canonical program `A102563.P3663340639075979939` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A102563 has offset 0).

The definition of A102563 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A102563.P3663340639075979939

`ceil(n/2-A102396(n))`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A102563

/-- `ceil(n/2-A102396(n))` -/
def P3663340639075979939.Spec : Prop :=
  ∀ n, P3663340639075979939.a n = A102563 n

theorem P3663340639075979939.correct : P3663340639075979939.Spec := by
  intro n
  simp only [A102563]

end A102563

/-! ## A102563.P10941840127537849722

`ceil(n/2)-ceil(A038573(n)/3)`
-/

namespace A102563.P10941840127537849722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℚ) / 2⌉ - ⌈(A038573 n : ℚ) / 3⌉

end

end A102563.P10941840127537849722

namespace A102563

/-- `ceil(n/2)-ceil(A038573(n)/3)` -/
def P10941840127537849722.Spec : Prop :=
  ∀ n, P10941840127537849722.a n = A102563 n

end A102563

/-! ## A102563.P3177306668485482551

`A110654(n)-A102396(n)`
-/

namespace A102563.P3177306668485482551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 n - A102396 n

end

end A102563.P3177306668485482551

namespace A102563

/-- `A110654(n)-A102396(n)` -/
def P3177306668485482551.Spec : Prop :=
  ∀ n, P3177306668485482551.a n = A102563 n

end A102563

/-! ## A102563.P5925254825956367979

`abs(A001057(n))-A102396(n)`
-/

namespace A102563.P5925254825956367979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A001057 n| - A102396 n

end

end A102563.P5925254825956367979

namespace A102563

/-- `abs(A001057(n))-A102396(n)` -/
def P5925254825956367979.Spec : Prop :=
  ∀ n, P5925254825956367979.a n = A102563 n

end A102563

/-! ## A102563.P13841554871961842089

`∑[A000035(n)]-A102396(n)`
-/

namespace A102563.P13841554871961842089
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A102396 n

end

end A102563.P13841554871961842089

namespace A102563

/-- `∑[A000035(n)]-A102396(n)` -/
def P13841554871961842089.Spec : Prop :=
  ∀ n, P13841554871961842089.a n = A102563 n

end A102563

/-! ## A102563.P13977237608143545128

`Δ[A002620(n)]-A102396(n)`
-/

namespace A102563.P13977237608143545128
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A102396 n

end

end A102563.P13977237608143545128

namespace A102563

/-- `Δ[A002620(n)]-A102396(n)` -/
def P13977237608143545128.Spec : Prop :=
  ∀ n, P13977237608143545128.a n = A102563 n

end A102563

/-! ## A102563.P15776709093044485551

`Δ[A033638(n)]-A102396(n)`
-/

namespace A102563.P15776709093044485551
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033638 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A102396 n

end

end A102563.P15776709093044485551

namespace A102563

/-- `Δ[A033638(n)]-A102396(n)` -/
def P15776709093044485551.Spec : Prop :=
  ∀ n, P15776709093044485551.a n = A102563 n

end A102563

/-! ## A102563.P12419025996286766979

`n-(A102396(n)+A004526(n))`
-/

namespace A102563.P12419025996286766979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (A102396 n + A004526 n)

end

end A102563.P12419025996286766979

namespace A102563

/-- `n-(A102396(n)+A004526(n))` -/
def P12419025996286766979.Spec : Prop :=
  ∀ n, P12419025996286766979.a n = A102563 n

end A102563

/-! ## A102563.P2156138817712676175

`ceil(n/2)-A001045(A000120(n))`
-/

namespace A102563.P2156138817712676175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℚ) / 2⌉ - A001045 (A000120 n).toNat

end

end A102563.P2156138817712676175

namespace A102563

/-- `ceil(n/2)-A001045(A000120(n))` -/
def P2156138817712676175.Spec : Prop :=
  ∀ n, P2156138817712676175.a n = A102563 n

end A102563

/-! ## A102563.P2475712486482738318

`A008619(n+1)-A008619(A102395(2*n+1))`
-/

namespace A102563.P2475712486482738318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (n + 1) - A008619 (A102395 (2 * n + 1)).toNat

end

end A102563.P2475712486482738318

namespace A102563

/-- `A008619(n+1)-A008619(A102395(2*n+1))` -/
def P2475712486482738318.Spec : Prop :=
  ∀ n, P2475712486482738318.a n = A102563 n

end A102563

/-!
# A102564: A000120(A078008(n))-A078008(A000120(n)).

The programs for A102564, the canonical program `A102564.P14718973119229357206` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A102564 has offset 0).

The definition of A102564 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000120(A078008(n))-A078008(A000120(n))` (program `A102564.P14718973119229357206`, by `A102564.P14718973119229357206.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A102564.P14718973119229357206

`A000120(A078008(n))-A078008(A000120(n))`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A102564

/-- `A000120(A078008(n))-A078008(A000120(n))` -/
def P14718973119229357206.Spec : Prop :=
  ∀ n, P14718973119229357206.a n = A102564 n

theorem P14718973119229357206.correct : P14718973119229357206.Spec := by
  intro n
  simp only [A102564]

end A102564

/-! ## A102564.P87648980146063011

`ceil(abs((1-n)/2))-A102395(n)`
-/

namespace A102564.P87648980146063011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈|(1 - (n : ℤ) : ℚ) / 2|⌉ - A102395 n

end

end A102564.P87648980146063011

namespace A102564

/-- `ceil(abs((1-n)/2))-A102395(n)` -/
def P87648980146063011.Spec : Prop :=
  ∀ n, P87648980146063011.a n = A102564 n

end A102564

/-! ## A102564.P15545010772540740169

`A102565(n)+A102563(n)`
-/

namespace A102564.P15545010772540740169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102565 n + A102563 n

end

end A102564.P15545010772540740169

namespace A102564

/-- `A102565(n)+A102563(n)` -/
def P15545010772540740169.Spec : Prop :=
  ∀ n, P15545010772540740169.a n = A102564 n

end A102564

/-! ## A102564.P11706037165892295854

`A008619(n)-or(1, A102395(n))`
-/

namespace A102564.P11706037165892295854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n - Int.lor 1 (A102395 n)

end

end A102564.P11706037165892295854

namespace A102564

/-- `A008619(n)-or(1, A102395(n))` -/
def P11706037165892295854.Spec : Prop :=
  ∀ n, P11706037165892295854.a n = A102564 n

end A102564

/-! ## A102564.P8869311473137875282

`A102565(n)+ceil(n/2-A102396(n))`
-/

namespace A102564.P8869311473137875282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102565 n + ⌈(n : ℚ) / 2 - (A102396 n : ℚ)⌉

end

end A102564.P8869311473137875282

namespace A102564

/-- `A102565(n)+ceil(n/2-A102396(n))` -/
def P8869311473137875282.Spec : Prop :=
  ∀ n, P8869311473137875282.a n = A102564 n

end A102564

/-! ## A102564.P15275952338490029177

`floor(n/2-A102395(n)*A178334(n))`
-/

namespace A102564.P15275952338490029177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 2 - (A102395 n * A178334 n : ℚ)⌋

end

end A102564.P15275952338490029177

namespace A102564

/-- `floor(n/2-A102395(n)*A178334(n))` -/
def P15275952338490029177.Spec : Prop :=
  ∀ n, P15275952338490029177.a n = A102564 n

end A102564

/-! ## A102564.P4713529997403464022

`floor(n/2)-A102395(n)%A000124(n)`
-/

namespace A102564.P4713529997403464022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 2⌋ - Int.tmod (A102395 n) (A000124 n)

end

end A102564.P4713529997403464022

namespace A102564

/-- `floor(n/2)-A102395(n)%A000124(n)` -/
def P4713529997403464022.Spec : Prop :=
  ∀ n, P4713529997403464022.a n = A102564 n

end A102564

/-! ## A102564.P10171852940532816174

`ceil(abs((1-n)/2))-A008611(A038573(n))`
-/

namespace A102564.P10171852940532816174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈|(1 - (n : ℤ) : ℚ) / 2|⌉ - A008611 (A038573 n).toNat

end

end A102564.P10171852940532816174

namespace A102564

/-- `ceil(abs((1-n)/2))-A008611(A038573(n))` -/
def P10171852940532816174.Spec : Prop :=
  ∀ n, P10171852940532816174.a n = A102564 n

end A102564

/-! ## A102564.P3740618378122231599

`A123108(n)-A068639(A001316(n))`
-/

namespace A102564.P3740618378122231599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 n - A068639 (A001316 n).toNat

end

end A102564.P3740618378122231599

namespace A102564

/-- `A123108(n)-A068639(A001316(n))` -/
def P3740618378122231599.Spec : Prop :=
  ∀ n, P3740618378122231599.a n = A102564 n

end A102564

/-! ## A102564.P16981456790311038222

`A123108(n)-A078008(A000120(n))`
-/

namespace A102564.P16981456790311038222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 n - A078008 (A000120 n).toNat

end

end A102564.P16981456790311038222

namespace A102564

/-- `A123108(n)-A078008(A000120(n))` -/
def P16981456790311038222.Spec : Prop :=
  ∀ n, P16981456790311038222.a n = A102564 n

end A102564

/-!
# A102565: a(n) = A102563(n) - A102564(n).

The programs for A102565, the canonical program `A102565.P12280072108150059021` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A102565 has offset 0).

The definition of A102565 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A102565.P12280072108150059021

`or(1, -a(and(n, n-1)))-n%2` with `a(0)=0`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A102565

/-- `or(1, -a(and(n, n-1)))-n%2` -/
def P12280072108150059021.Spec : Prop :=
  ∀ n, P12280072108150059021.a n = A102565 n

theorem P12280072108150059021.correct : P12280072108150059021.Spec := by
  intro n
  simp only [A102565]

end A102565

/-! ## A102565.P857907129163343037

`(-(n%2))^n-A106400(n)`
-/

namespace A102565.P857907129163343037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-((n % 2 : ℕ) : ℤ)) ^ n - A106400 n

end

end A102565.P857907129163343037

namespace A102565

/-- `(-(n%2))^n-A106400(n)` -/
def P857907129163343037.Spec : Prop :=
  ∀ n, P857907129163343037.a n = A102565 n

end A102565

/-! ## A102565.P16261076681946172640

`A106400(xor(1, n))+floor(cot(2)^n)`
-/

namespace A102565.P16261076681946172640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106400 (Nat.xor 1 n) + ⌊Real.cot (2 : ℝ) ^ n⌋

end

end A102565.P16261076681946172640

namespace A102565

/-- `A106400(xor(1, n))+floor(cot(2)^n)` -/
def P16261076681946172640.Spec : Prop :=
  ∀ n, P16261076681946172640.a n = A102565 n

end A102565

/-! ## A102565.P8251953161289799888

`A106400(Δ[n²])+floor(cot(2)^n)`
-/

namespace A102565.P8251953161289799888
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106400 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat + ⌊Real.cot (2 : ℝ) ^ n⌋

end

end A102565.P8251953161289799888

namespace A102565

/-- `A106400(Δ[n²])+floor(cot(2)^n)` -/
def P8251953161289799888.Spec : Prop :=
  ∀ n, P8251953161289799888.a n = A102565 n

end A102565

/-! ## A102565.P10629745763520768072

`A076826(round(acot(n+1)+n)+n)-1-and(1, n)`
-/

namespace A102565.P10629745763520768072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076826 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n + 1 : ℝ) + (n : ℝ)) + (n : ℤ)).toNat - 1 - (Nat.land 1 n : ℤ)

end

end A102565.P10629745763520768072

namespace A102565

/-- `A076826(round(acot(n+1)+n)+n)-1-and(1, n)` -/
def P10629745763520768072.Spec : Prop :=
  ∀ n, P10629745763520768072.a n = A102565 n

end A102565

/-! ## A102565.P13086230032143250

`A004273(abs(A285779(n)))-n`
-/

namespace A102565.P13086230032143250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 |A285779 n|.toNat - (n : ℤ)

end

end A102565.P13086230032143250

namespace A102565

/-- `A004273(abs(A285779(n)))-n` -/
def P13086230032143250.Spec : Prop :=
  ∀ n, P13086230032143250.a n = A102565 n

end A102565

/-! ## A102565.P5598809210623552355

`A062157(A000120(n))-n%2`
-/

namespace A102565.P5598809210623552355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062157 (A000120 n).toNat - ((n % 2 : ℕ) : ℤ)

end

end A102565.P5598809210623552355

namespace A102565

/-- `A062157(A000120(n))-n%2` -/
def P5598809210623552355.Spec : Prop :=
  ∀ n, P5598809210623552355.a n = A102565 n

end A102565

/-! ## A102565.P1669553363700654572

`A062157(A005187(n))-and(1, n)`
-/

namespace A102565.P1669553363700654572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062157 (A005187 n).toNat - (Nat.land 1 n : ℤ)

end

end A102565.P1669553363700654572

namespace A102565

/-- `A062157(A005187(n))-and(1, n)` -/
def P1669553363700654572.Spec : Prop :=
  ∀ n, P1669553363700654572.a n = A102565 n

end A102565

/-! ## A102565.P15251115638940007392

`A062157(A006068(n))-and(1, n)`
-/

namespace A102565.P15251115638940007392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062157 (A006068 n).toNat - (Nat.land 1 n : ℤ)

end

end A102565.P15251115638940007392

namespace A102565

/-- `A062157(A006068(n))-and(1, n)` -/
def P15251115638940007392.Spec : Prop :=
  ∀ n, P15251115638940007392.a n = A102565 n

end A102565

/-! ## A102565.P16156733028911570185

`-(A106400(n)+Δ[A123108(n)])`
-/

namespace A102565.P16156733028911570185
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(A106400 n + (f1 (n + 1) - f1 n))

end

end A102565.P16156733028911570185

namespace A102565

/-- `-(A106400(n)+Δ[A123108(n)])` -/
def P16156733028911570185.Spec : Prop :=
  ∀ n, P16156733028911570185.a n = A102565 n

end A102565

/-! ## A102565.P13524702068934235383

`A084642(n+1)-(A106400(n)+2)`
-/

namespace A102565.P13524702068934235383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084642 (n + 1) - (A106400 n + 2)

end

end A102565.P13524702068934235383

namespace A102565

/-- `A084642(n+1)-(A106400(n)+2)` -/
def P13524702068934235383.Spec : Prop :=
  ∀ n, P13524702068934235383.a n = A102565 n

end A102565

/-! ## A102565.P11078640381691010521

`A076826(A008574(n))-gcd(2, n+1)`
-/

namespace A102565.P11078640381691010521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076826 (A008574 n).toNat - (Nat.gcd 2 (n + 1) : ℤ)

end

end A102565.P11078640381691010521

namespace A102565

/-- `A076826(A008574(n))-gcd(2, n+1)` -/
def P11078640381691010521.Spec : Prop :=
  ∀ n, P11078640381691010521.a n = A102565 n

end A102565

/-! ## A102565.P11742114630538919996

`A268676(n)-A020639(A008486(n))`
-/

namespace A102565.P11742114630538919996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268676 n - A020639 (A008486 n).toNat

end

end A102565.P11742114630538919996

namespace A102565

/-- `A268676(n)-A020639(A008486(n))` -/
def P11742114630538919996.Spec : Prop :=
  ∀ n, P11742114630538919996.a n = A102565 n

end A102565

/-! ## A102565.P16875048767928959151

`A268676(n)-A006530(A071044(n))`
-/

namespace A102565.P16875048767928959151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268676 n - A006530 (A071044 n).toNat

end

end A102565.P16875048767928959151

namespace A102565

/-- `A268676(n)-A006530(A071044(n))` -/
def P16875048767928959151.Spec : Prop :=
  ∀ n, P16875048767928959151.a n = A102565 n

end A102565

/-! ## A102565.P12751642154127686194

`A268676(n)-A020639(A179805(n))`
-/

namespace A102565.P12751642154127686194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268676 n - A020639 (A179805 n).toNat

end

end A102565.P12751642154127686194

namespace A102565

/-- `A268676(n)-A020639(A179805(n))` -/
def P12751642154127686194.Spec : Prop :=
  ∀ n, P12751642154127686194.a n = A102565 n

end A102565

/-! ## A102565.P14659796558583897797

`A268676(n)-A020639(A298028(n))`
-/

namespace A102565.P14659796558583897797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268676 n - A020639 (A298028 n).toNat

end

end A102565.P14659796558583897797

namespace A102565

/-- `A268676(n)-A020639(A298028(n))` -/
def P14659796558583897797.Spec : Prop :=
  ∀ n, P14659796558583897797.a n = A102565 n

end A102565

/-! ## A102565.P9478050350858538659

`A268676(n)-A020639(A028310(3*n))`
-/

namespace A102565.P9478050350858538659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268676 n - A020639 (A028310 (3 * n)).toNat

end

end A102565.P9478050350858538659

namespace A102565

/-- `A268676(n)-A020639(A028310(3*n))` -/
def P9478050350858538659.Spec : Prop :=
  ∀ n, P9478050350858538659.a n = A102565 n

end A102565

/-! ## A102565.P58525988040797925

`A277822(A143579(n+1))-A277822(2*n)`
-/

namespace A102565.P58525988040797925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277822 (A143579 (n + 1)).toNat - A277822 (2 * n)

end

end A102565.P58525988040797925

namespace A102565

/-- `A277822(A143579(n+1))-A277822(2*n)` -/
def P58525988040797925.Spec : Prop :=
  ∀ n, P58525988040797925.a n = A102565 n

end A102565

/-!
# A102566: a(n) = {minimal k such that f^k(prime(n)) = 1} where f(m) = (m+1)/2^r, 2^r is the highest power of two dividing m+1.

The programs for A102566, the canonical program `A102566.P5376165484103837869` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A102566 has offset 1).

The definition of A102566 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A035103, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A102566.P5376165484103837869

`A035103(n+1)+1`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A102566

/-- `A035103(n+1)+1` -/
def P5376165484103837869.Spec : Prop :=
  ∀ n, P5376165484103837869.a n = A102566 (n + 1)

theorem P5376165484103837869.correct : P5376165484103837869.Spec := by
  intro n
  simp only [A102566, Nat.add_sub_cancel]

end A102566

/-! ## A102566.P3550113216630570004

`A023416(A000040(n+1))+1`
-/

namespace A102566.P3550113216630570004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023416 (A000040 (n + 1)).toNat + 1

end

end A102566.P3550113216630570004

namespace A102566

/-- `A023416(A000040(n+1))+1` -/
def P3550113216630570004.Spec : Prop :=
  ∀ n, P3550113216630570004.a n = A102566 (n + 1)

end A102566

/-! ## A102566.P17980595280344321530

`A008864(n+1)-A177959(n+1)`
-/

namespace A102566.P17980595280344321530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008864 (n + 1) - A177959 (n + 1)

end

end A102566.P17980595280344321530

namespace A102566

/-- `A008864(n+1)-A177959(n+1)` -/
def P17980595280344321530.Spec : Prop :=
  ∀ n, P17980595280344321530.a n = A102566 (n + 1)

theorem P17980595280344321530.correct : P17980595280344321530.Spec := by
  intro n
  simp only [A102566, Nat.add_sub_cancel, A102566.P17980595280344321530.a, A102566.P5376165484103837869.a, A008864, A008864.P9177617808325052279.a, A035103, A035103.P1324719609663575418.a, A177959, A177959.P3892879503494814762.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A014499, A014499.P9770580101482900462.a, A035100, A035100.P16711503485959756516.a, A000120, A000120.P2816527436160941581.a, A005187, A005187.P3874015513960485494.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A102566

/-! ## A102566.P15971196317526516206

`A035100(n+1)+1-A014499(n+1)`
-/

namespace A102566.P15971196317526516206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035100 (n + 1) + (1 - A014499 (n + 1))

end

end A102566.P15971196317526516206

namespace A102566

/-- `A035100(n+1)+1-A014499(n+1)` -/
def P15971196317526516206.Spec : Prop :=
  ∀ n, P15971196317526516206.a n = A102566 (n + 1)

theorem P15971196317526516206.correct : P15971196317526516206.Spec := by
  intro n
  simp only [A102566, Nat.add_sub_cancel, A102566.P15971196317526516206.a, A102566.P5376165484103837869.a, A014499, A014499.P9770580101482900462.a, A035100, A035100.P16711503485959756516.a, A035103, A035103.P1324719609663575418.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A000120, A000120.P2816527436160941581.a, A005187, A005187.P3874015513960485494.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A102566

/-! ## A102566.P14016027521529615737

`A000040(n+1)+1-A177959(n+1)`
-/

namespace A102566.P14016027521529615737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) + (1 - A177959 (n + 1))

end

end A102566.P14016027521529615737

namespace A102566

/-- `A000040(n+1)+1-A177959(n+1)` -/
def P14016027521529615737.Spec : Prop :=
  ∀ n, P14016027521529615737.a n = A102566 (n + 1)

theorem P14016027521529615737.correct : P14016027521529615737.Spec := by
  intro n
  simp only [A102566, Nat.add_sub_cancel, A102566.P14016027521529615737.a, A102566.P5376165484103837869.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A035103, A035103.P1324719609663575418.a, A177959, A177959.P3892879503494814762.a, A014499, A014499.P9770580101482900462.a, A035100, A035100.P16711503485959756516.a, A000120, A000120.P2816527436160941581.a, A005187, A005187.P3874015513960485494.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A102566

/-! ## A102566.P1618161684559821226

`A080085(n+1)+1-A163293(n+1)`
-/

namespace A102566.P1618161684559821226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080085 (n + 1) + (1 - A163293 (n + 1))

end

end A102566.P1618161684559821226

namespace A102566

/-- `A080085(n+1)+1-A163293(n+1)` -/
def P1618161684559821226.Spec : Prop :=
  ∀ n, P1618161684559821226.a n = A102566 (n + 1)

theorem P1618161684559821226.correct : P1618161684559821226.Spec := by
  intro n
  simp only [A102566, Nat.add_sub_cancel, A102566.P1618161684559821226.a, A102566.P5376165484103837869.a, A035103, A035103.P1324719609663575418.a, A080085, A080085.P4216384539738297619.a, A163293, A163293.P4247609805888595491.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A014499, A014499.P9770580101482900462.a, A035100, A035100.P16711503485959756516.a, A000120, A000120.P2816527436160941581.a, A005187, A005187.P3874015513960485494.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A102566

/-! ## A102566.P16534921284524796503

`A290251(A000040(n+1))`
-/

namespace A102566.P16534921284524796503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290251 (A000040 (n + 1)).toNat

end

end A102566.P16534921284524796503

namespace A102566

/-- `A290251(A000040(n+1))` -/
def P16534921284524796503.Spec : Prop :=
  ∀ n, P16534921284524796503.a n = A102566 (n + 1)

end A102566

/-! ## A102566.P6964984754041731483

`A290251(A072055(n+1))`
-/

namespace A102566.P6964984754041731483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290251 (A072055 (n + 1)).toNat

end

end A102566.P6964984754041731483

namespace A102566

/-- `A290251(A072055(n+1))` -/
def P6964984754041731483.Spec : Prop :=
  ∀ n, P6964984754041731483.a n = A102566 (n + 1)

end A102566

/-! ## A102566.P18033503738318163632

`A290251(A166496(n+1))`
-/

namespace A102566.P18033503738318163632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290251 (A166496 (n + 1)).toNat

end

end A102566.P18033503738318163632

namespace A102566

/-- `A290251(A166496(n+1))` -/
def P18033503738318163632.Spec : Prop :=
  ∀ n, P18033503738318163632.a n = A102566 (n + 1)

end A102566

/-! ## A102566.P3752093426452088661

`A008687(A057024(n+1))`
-/

namespace A102566.P3752093426452088661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008687 (A057024 (n + 1)).toNat

end

end A102566.P3752093426452088661

namespace A102566

/-- `A008687(A057024(n+1))` -/
def P3752093426452088661.Spec : Prop :=
  ∀ n, P3752093426452088661.a n = A102566 (n + 1)

end A102566

/-! ## A102566.P12976381214015247827

`A023416(A102781(n+1))+1`
-/

namespace A102566.P12976381214015247827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023416 (A102781 (n + 1)).toNat + 1

end

end A102566.P12976381214015247827

namespace A102566

/-- `A023416(A102781(n+1))+1` -/
def P12976381214015247827.Spec : Prop :=
  ∀ n, P12976381214015247827.a n = A102566 (n + 1)

end A102566

/-! ## A102566.P2520690386804585429

`A254045(A006254(n+1))+1`
-/

namespace A102566.P2520690386804585429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254045 (A006254 (n + 1)).toNat + 1

end

end A102566.P2520690386804585429

namespace A102566

/-- `A254045(A006254(n+1))+1` -/
def P2520690386804585429.Spec : Prop :=
  ∀ n, P2520690386804585429.a n = A102566 (n + 1)

end A102566

/-! ## A102566.P6555868216157765241

`A254045(A111333(n+2))+1`
-/

namespace A102566.P6555868216157765241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254045 (A111333 (n + 2)).toNat + 1

end

end A102566.P6555868216157765241

namespace A102566

/-- `A254045(A111333(n+2))+1` -/
def P6555868216157765241.Spec : Prop :=
  ∀ n, P6555868216157765241.a n = A102566 (n + 1)

end A102566

/-! ## A102566.P9271230550015321792

`A254045(A130291(n+2))+1`
-/

namespace A102566.P9271230550015321792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254045 (A130291 (n + 2)).toNat + 1

end

end A102566.P9271230550015321792

namespace A102566

/-- `A254045(A130291(n+2))+1` -/
def P9271230550015321792.Spec : Prop :=
  ∀ n, P9271230550015321792.a n = A102566 (n + 1)

end A102566

/-! ## A102566.P6904876421753962645

`A372472(A071403(n+1))+1`
-/

namespace A102566.P6904876421753962645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372472 (A071403 (n + 1)).toNat + 1

end

end A102566.P6904876421753962645

namespace A102566

/-- `A372472(A071403(n+1))+1` -/
def P6904876421753962645.Spec : Prop :=
  ∀ n, P6904876421753962645.a n = A102566 (n + 1)

end A102566

/-! ## A102566.P8304865660972763517

`A274009(A159006(n+1))`
-/

namespace A102566.P8304865660972763517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274009 (A159006 (n + 1)).toNat

end

end A102566.P8304865660972763517

namespace A102566

/-- `A274009(A159006(n+1))` -/
def P8304865660972763517.Spec : Prop :=
  ∀ n, P8304865660972763517.a n = A102566 (n + 1)

end A102566

/-! ## A102566.P13469301335458929778

`A000120(A159006(n+1)+1)`
-/

namespace A102566.P13469301335458929778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A159006 (n + 1) + 1).toNat

end

end A102566.P13469301335458929778

namespace A102566

/-- `A000120(A159006(n+1)+1)` -/
def P13469301335458929778.Spec : Prop :=
  ∀ n, P13469301335458929778.a n = A102566 (n + 1)

end A102566

/-! ## A102566.P8821905651437214265

`A008687(A008864(n+1))`
-/

namespace A102566.P8821905651437214265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008687 (A008864 (n + 1)).toNat

end

end A102566.P8821905651437214265

namespace A102566

/-- `A008687(A008864(n+1))` -/
def P8821905651437214265.Spec : Prop :=
  ∀ n, P8821905651437214265.a n = A102566 (n + 1)

end A102566

/-! ## A102566.P679604654314084532

`A008687(A028815(n+1))`
-/

namespace A102566.P679604654314084532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008687 (A028815 (n + 1)).toNat

end

end A102566.P679604654314084532

namespace A102566

/-- `A008687(A028815(n+1))` -/
def P679604654314084532.Spec : Prop :=
  ∀ n, P679604654314084532.a n = A102566 (n + 1)

end A102566

/-! ## A102566.P3931696703377538431

`A080801(A006093(n+1))`
-/

namespace A102566.P3931696703377538431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080801 (A006093 (n + 1)).toNat

end

end A102566.P3931696703377538431

namespace A102566

/-- `A080801(A006093(n+1))` -/
def P3931696703377538431.Spec : Prop :=
  ∀ n, P3931696703377538431.a n = A102566 (n + 1)

end A102566

/-!
# A102567: Numbers k such that the concatenation of k with itself is a biperiod square.

The programs for A102567, there is no canonical definition to state claims against.
-/

/-! ## A102567.P7548039098829727694

`A116098(A065666(n+1)+10)`
-/

namespace A102567.P7548039098829727694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116098 (A065666 (n + 1) + 10).toNat

end

end A102567.P7548039098829727694

/-!
# A102568: a(n+1) = if a(n-1)=a(n)-1 then 2*a(n) else smallest number not occurring earlier; a(1)=1, a(2)=2.

The programs for A102568, there is no canonical definition to state claims against.
-/

/-! ## A102568.P10864454060630493949

`A102570(A102569(n+1))`
-/

namespace A102568.P10864454060630493949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102570 (A102569 (n + 1)).toNat

end

end A102568.P10864454060630493949

/-! ## A102568.P7861267109356724429

`A102569(A102570(Δ[n²]-n))`
-/

namespace A102568.P7861267109356724429
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102569 (A102570 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat).toNat

end

end A102568.P7861267109356724429

/-! ## A102568.P17830344702581079695

`A117910(eq[A117888(n+1), A257685(n)])`
-/

namespace A102568.P17830344702581079695
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117888 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257685 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117910 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A102568.P17830344702581079695

/-!
# A102569: Inverse permutation to A102568.

The programs for A102569, there is no canonical definition to state claims against.
-/

/-! ## A102569.P1953059938151357228

`A102568(A102571(n+1))`
-/

namespace A102569.P1953059938151357228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102568 (A102571 (n + 1)).toNat

end

end A102569.P1953059938151357228

/-! ## A102569.P8293182156357711865

`A102571(A102568(n+1))`
-/

namespace A102569.P8293182156357711865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102571 (A102568 (n + 1)).toNat

end

end A102569.P8293182156357711865

/-!
# A102570: a(n) = A102568(A102568(n)).

The programs for A102570, there is no canonical definition to state claims against.
-/

/-! ## A102570.P13967599692864885183

`A102568(A102568(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A102570.P13967599692864885183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102568 (A102568 (n + 1)).toNat

end

end A102570.P13967599692864885183

/-!
# A102571: a(n) = A102569(A102569(n)).

The programs for A102571, there is no canonical definition to state claims against.
-/

/-! ## A102571.P16002404543415953846

`A102569(A102569(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A102571.P16002404543415953846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102569 (A102569 (n + 1)).toNat

end

end A102571.P16002404543415953846

/-! ## A102571.P2806835309690956488

`A102570(A102570(A102570(n+1)))%26`
-/

namespace A102571.P2806835309690956488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A102570 (A102570 (A102570 (n + 1)).toNat).toNat) 26

end

end A102571.P2806835309690956488

/-! ## A102571.P13291694741097834220

`A102568(A102570(A102570(A102568(n+1))))`
-/

namespace A102571.P13291694741097834220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102568 (A102570 (A102570 (A102568 (n + 1)).toNat).toNat).toNat

end

end A102571.P13291694741097834220

/-!
# A102572: a(n) = floor(log_4(n)).

The programs for A102572, the canonical program `A102572.P14136622743880055354` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A102572 has offset 1).

The definition of A102572 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A102572.P13384648307012805432

`floor(log2(sqrt(n+1)))`
-/

namespace A102572.P13384648307012805432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.logb 2 (Real.sqrt (n + 1 : ℝ))⌋

end

end A102572.P13384648307012805432

namespace A102572

/-- `floor(log2(sqrt(n+1)))` -/
def P13384648307012805432.Spec : Prop :=
  ∀ n, P13384648307012805432.a n = A102572 (n + 1)

end A102572

/-! ## A102572.P6926530304830717695

`dr(floor(log2(n+1)/2))`
-/

namespace A102572.P6926530304830717695
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot ⌊Real.logb 2 (n + 1 : ℝ) / 2⌋

end

end A102572.P6926530304830717695

namespace A102572

/-- `dr(floor(log2(n+1)/2))` -/
def P6926530304830717695.Spec : Prop :=
  ∀ n, (P6926530304830717695.a n : ℤ) = A102572 (n + 1)

end A102572

/-! ## A102572.P4524303321348930841

`∑[char[∑[lcm(3, 4^n)]]]`
-/

namespace A102572.P4524303321348930841
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 3 (4 ^ n)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A102572.P4524303321348930841

namespace A102572

/-- `∑[char[∑[lcm(3, 4^n)]]]` -/
def P4524303321348930841.Spec : Prop :=
  ∀ n, (P4524303321348930841.a n : ℤ) = A102572 (n + 1)

end A102572

/-! ## A102572.P1707324087429277082

`abs(ceil(log2(acot(sqrt(n+1)))))`
-/

namespace A102572.P1707324087429277082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |⌈Real.logb 2 (SequenceMachineLib.acot (Real.sqrt (n + 1 : ℝ)))⌉|

end

end A102572.P1707324087429277082

namespace A102572

/-- `abs(ceil(log2(acot(sqrt(n+1)))))` -/
def P1707324087429277082.Spec : Prop :=
  ∀ n, P1707324087429277082.a n = A102572 (n + 1)

end A102572

/-! ## A102572.P13845506752833084304

`-ceil(log2(acot(sqrt(n+1))))`
-/

namespace A102572.P13845506752833084304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -⌈Real.logb 2 (SequenceMachineLib.acot (Real.sqrt (n + 1 : ℝ)))⌉

end

end A102572.P13845506752833084304

namespace A102572

/-- `-ceil(log2(acot(sqrt(n+1))))` -/
def P13845506752833084304.Spec : Prop :=
  ∀ n, P13845506752833084304.a n = A102572 (n + 1)

end A102572

/-! ## A102572.P13989407702474410771

`round(log2(sqrt(cosh(log(n+1)))))`
-/

namespace A102572.P13989407702474410771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.logb 2 (Real.sqrt (Real.cosh (Real.log (n + 1 : ℝ)))))

end

end A102572.P13989407702474410771

namespace A102572

/-- `round(log2(sqrt(cosh(log(n+1)))))` -/
def P13989407702474410771.Spec : Prop :=
  ∀ n, P13989407702474410771.a n = A102572 (n + 1)

end A102572

/-! ## A102572.P18186469602608174284

`round(log2(sqrt(sinh(log(n+2)))))`
-/

namespace A102572.P18186469602608174284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.logb 2 (Real.sqrt (Real.sinh (Real.log (n + 2 : ℝ)))))

end

end A102572.P18186469602608174284

namespace A102572

/-- `round(log2(sqrt(sinh(log(n+2)))))` -/
def P18186469602608174284.Spec : Prop :=
  ∀ n, P18186469602608174284.a n = A102572 (n + 1)

end A102572

/-! ## A102572.P294587189099173599

`ceil(log2(sinh(log(sqrt(n+3)))))`
-/

namespace A102572.P294587189099173599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.logb 2 (Real.sinh (Real.log (Real.sqrt (n + 3 : ℝ))))⌉

end

end A102572.P294587189099173599

namespace A102572

/-- `ceil(log2(sinh(log(sqrt(n+3)))))` -/
def P294587189099173599.Spec : Prop :=
  ∀ n, P294587189099173599.a n = A102572 (n + 1)

end A102572

/-! ## A102572.P17037017560695407375

`val(2^floor(log2(n+1)), 4)`
-/

namespace A102572.P17037017560695407375
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (2 ^ Nat.log 2 (n + 1)) 4

end

end A102572.P17037017560695407375

namespace A102572

/-- `val(2^floor(log2(n+1)), 4)` -/
def P17037017560695407375.Spec : Prop :=
  ∀ n, (P17037017560695407375.a n : ℤ) = A102572 (n + 1)

end A102572

/-! ## A102572.P5985474867911520253

`A110591(n+1)-1`
-/

namespace A102572.P5985474867911520253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110591 (n + 1) - 1

end

end A102572.P5985474867911520253

namespace A102572

/-- `A110591(n+1)-1` -/
def P5985474867911520253.Spec : Prop :=
  ∀ n, P5985474867911520253.a n = A102572 (n + 1)

end A102572

/-! ## A102572.P6111107953415006544

`A000523(floor(sqrt(n+1)))`
-/

namespace A102572.P6111107953415006544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000523 (Nat.sqrt (n + 1))

end

end A102572.P6111107953415006544

namespace A102572

/-- `A000523(floor(sqrt(n+1)))` -/
def P6111107953415006544.Spec : Prop :=
  ∀ n, P6111107953415006544.a n = A102572 (n + 1)

end A102572

/-! ## A102572.P14136622743880055354

`A004526(floor(log2(n+1)))`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A102572

/-- `A004526(floor(log2(n+1)))` -/
def P14136622743880055354.Spec : Prop :=
  ∀ n, P14136622743880055354.a n = A102572 (n + 1)

theorem P14136622743880055354.correct : P14136622743880055354.Spec := by
  intro n
  simp only [A102572, Nat.add_sub_cancel]

end A102572

/-! ## A102572.P16539556432889671418

`∑[char[A024036(n+1)]]`
-/

namespace A102572.P16539556432889671418
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024036 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A102572.P16539556432889671418

namespace A102572

/-- `∑[char[A024036(n+1)]]` -/
def P16539556432889671418.Spec : Prop :=
  ∀ n, (P16539556432889671418.a n : ℤ) = A102572 (n + 1)

end A102572

/-! ## A102572.P15441811331583212923

`∑[char[A024036(n)]]-1`
-/

namespace A102572.P15441811331583212923
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024036 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1

end

end A102572.P15441811331583212923

namespace A102572

/-- `∑[char[A024036(n)]]-1` -/
def P15441811331583212923.Spec : Prop :=
  ∀ n, P15441811331583212923.a n = A102572 (n + 1)

end A102572

/-! ## A102572.P14184641321565565162

`∑[char[∑[A117575(n+2)]]]`
-/

namespace A102572.P14184641321565565162
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117575 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A102572.P14184641321565565162

namespace A102572

/-- `∑[char[∑[A117575(n+2)]]]` -/
def P14184641321565565162.Spec : Prop :=
  ∀ n, (P14184641321565565162.a n : ℤ) = A102572 (n + 1)

end A102572

/-! ## A102572.P4315787217094795048

`A084506(2*(n+2))-3`
-/

namespace A102572.P4315787217094795048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084506 (2 * (n + 2)) - 3

end

end A102572.P4315787217094795048

namespace A102572

/-- `A084506(2*(n+2))-3` -/
def P4315787217094795048.Spec : Prop :=
  ∀ n, P4315787217094795048.a n = A102572 (n + 1)

end A102572

/-! ## A102572.P4068046671032065996

`A002265(2*floor(log2(n+1)))`
-/

namespace A102572.P4068046671032065996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (2 * Nat.log 2 (n + 1))

end

end A102572.P4068046671032065996

namespace A102572

/-- `A002265(2*floor(log2(n+1)))` -/
def P4068046671032065996.Spec : Prop :=
  ∀ n, P4068046671032065996.a n = A102572 (n + 1)

theorem P4068046671032065996.correct : P4068046671032065996.Spec := by
  intro n
  simp only [A102572, Nat.add_sub_cancel, A102572.P4068046671032065996.a, A102572.P14136622743880055354.a, A002265, A002265.P2157561802369677908.a, A004526, A004526.P10084182425416171735.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A102572

/-! ## A102572.P6954444511068567828

`∑[A154282(n+1)²]-1`
-/

namespace A102572.P6954444511068567828
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154282 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A102572.P6954444511068567828

namespace A102572

/-- `∑[A154282(n+1)²]-1` -/
def P6954444511068567828.Spec : Prop :=
  ∀ n, P6954444511068567828.a n = A102572 (n + 1)

end A102572

/-! ## A102572.P749818530025570302

`∑[char[A000225(2*(n+1))]]`
-/

namespace A102572.P749818530025570302
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 (2 * (n + 1))

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A102572.P749818530025570302

namespace A102572

/-- `∑[char[A000225(2*(n+1))]]` -/
def P749818530025570302.Spec : Prop :=
  ∀ n, (P749818530025570302.a n : ℤ) = A102572 (n + 1)

end A102572

/-! ## A102572.P11351189994697219946

`A327247(A000523(n+1)+1)`
-/

namespace A102572.P11351189994697219946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327247 (A000523 (n + 1) + 1).toNat

end

end A102572.P11351189994697219946

namespace A102572

/-- `A327247(A000523(n+1)+1)` -/
def P11351189994697219946.Spec : Prop :=
  ∀ n, P11351189994697219946.a n = A102572 (n + 1)

end A102572

/-!
# A102574: a(n) is the sum of the distinct norms of the divisors of n over the Gaussian integers.

The programs for A102574, the canonical program `A102574.P1268727041184621016` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A102574 has offset 1).

The definition of A102574 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A097706, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A102574.P1268727041184621016

`A001157(A097706(n+1))*A000203(((n+1)/A097706(n+1))²)`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A102574

/-- `A001157(A097706(n+1))*A000203(((n+1)/A097706(n+1))²)` -/
def P1268727041184621016.Spec : Prop :=
  ∀ n, P1268727041184621016.a n = A102574 (n + 1)

theorem P1268727041184621016.correct : P1268727041184621016.Spec := by
  intro n
  simp only [A102574, Nat.add_sub_cancel]

end A102574

/-! ## A102574.P3815926693039414153

`∑{d}[n+1, A254520(#)*A390689((n+1)/#)]`
-/

namespace A102574.P3815926693039414153
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A254520 d * A390689 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A102574.P3815926693039414153

namespace A102574

/-- `∑{d}[n+1, A254520(#)*A390689((n+1)/#)]` -/
def P3815926693039414153.Spec : Prop :=
  ∀ n, P3815926693039414153.a n = A102574 (n + 1)

end A102574

/-! ## A102574.P279319449630385173

`A390689((n+1)²)`
-/

namespace A102574.P279319449630385173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390689 ((n + 1) ^ 2)

end

end A102574.P279319449630385173

namespace A102574

/-- `A390689((n+1)²)` -/
def P279319449630385173.Spec : Prop :=
  ∀ n, P279319449630385173.a n = A102574 (n + 1)

end A102574

/-!
# A102576: Numbers m such that A100844(m) < 10*m.

The programs for A102576, there is no canonical definition to state claims against.
-/

/-! ## A102576.P16801638505664787930

`comp[A102577(n+1)]`
-/

namespace A102576.P16801638505664787930
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102577 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A102576.P16801638505664787930

/-!
# A102577: Numbers m such that A100844(m) = 10*m.

The programs for A102577, there is no canonical definition to state claims against.
-/

/-! ## A102577.P15415685136999946208

`comp[A102576(n+1)]`
-/

namespace A102577.P15415685136999946208
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102576 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A102577.P15415685136999946208

/-!
# A102578: a(n) = number of elements of order n in simple group Alt(6) = L_2(9) of order 360.

The programs for A102578, there is no canonical definition to state claims against.
-/

/-! ## A102578.P13786974485064777382

`A057740(n+14)`
-/

namespace A102578.P13786974485064777382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057740 (n + 14)

end

end A102578.P13786974485064777382

/-!
# A102579: Number of n-node labeled digraphs whose underlying graphs are mating graphs, cf. A006024.

The programs for A102579, there is no canonical definition to state claims against.
-/

/-! ## A102579.P12064717069904868774

`∏[A241559(n!)]`
-/

namespace A102579.P12064717069904868774
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241559 (Nat.factorial n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A102579.P12064717069904868774

/-!
# A102580: Number of n-node labeled connected digraphs whose underlying graphs are mating graphs, cf. A006024.

The programs for A102580, there is no canonical definition to state claims against.
-/

/-! ## A102580.P846080704122101562

`A030101(∏[∏[or(1, n)]])`
-/

namespace A102580.P846080704122101562
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030101 (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A102580.P846080704122101562

/-!
# A102581: Numbers n such that denominator of Sum_{k=0 to 2n+1} 1/k! is (2n+1)!/2.

The programs for A102581, there is no canonical definition to state claims against.
-/

/-! ## A102581.P12074458553269862562

`eq[2, A093101(2*n+1)]`
-/

namespace A102581.P12074458553269862562
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093101 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A102581.P12074458553269862562

/-! ## A102581.P17943904119188677326

`eq[2, A093101(n+1)]/2`
-/

namespace A102581.P17943904119188677326
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093101 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℚ) / 2

end

end A102581.P17943904119188677326

/-! ## A102581.P14299865830539815262

`A004524(eq[2, A093101(n)])`
-/

namespace A102581.P14299865830539815262
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093101 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A102581.P14299865830539815262

/-! ## A102581.P10975551353631438436

`A004526(eq[2, A093101(n)])`
-/

namespace A102581.P10975551353631438436
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093101 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A102581.P10975551353631438436

/-! ## A102581.P2074637508438927292

`A028242(eq[2, A093101(n)])`
-/

namespace A102581.P2074637508438927292
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093101 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A102581.P2074637508438927292

/-! ## A102581.P14032647893602662561

`A057979(eq[2, A093101(n)])`
-/

namespace A102581.P14032647893602662561
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093101 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057979 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A102581.P14032647893602662561

/-! ## A102581.P647355760388383518

`A101279(eq[2, A093101(n)])`
-/

namespace A102581.P647355760388383518
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093101 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101279 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A102581.P647355760388383518

/-! ## A102581.P9290696353246012645

`A123108(eq[2, A093101(n)])`
-/

namespace A102581.P9290696353246012645
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093101 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A102581.P9290696353246012645

/-! ## A102581.P6096922643934777780

`A110654(eq[2, A093101(n+1)])`
-/

namespace A102581.P6096922643934777780
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093101 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A102581.P6096922643934777780

/-! ## A102581.P5011420988654345823

`A110654(eq[2, A093101(n)]-1)`
-/

namespace A102581.P5011420988654345823
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093101 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n - 1)

end

end A102581.P5011420988654345823

/-!
# A102582: Numbers n such that denominator of Sum_{k=0..4n+1} 1/k! is (4n+1)!/2.

The programs for A102582, there is no canonical definition to state claims against.
-/

/-! ## A102582.P13263434429166354923

`A102581(n+2)/2`
-/

namespace A102582.P13263434429166354923
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A102581 (n + 2) : ℚ) / 2

end

end A102582.P13263434429166354923

/-! ## A102582.P549204017128566739

`eq[2, A093101(4*n+1)]`
-/

namespace A102582.P549204017128566739
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093101 (4 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A102582.P549204017128566739

/-! ## A102582.P12288379017948400643

`A001281(A102581(n+2))`
-/

namespace A102582.P12288379017948400643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A102581 (n + 2)).toNat

end

end A102582.P12288379017948400643

/-! ## A102582.P11878878248422227316

`A004526(A102581(n+2)+1)`
-/

namespace A102582.P11878878248422227316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A102581 (n + 2) + 1).toNat

end

end A102582.P11878878248422227316

/-! ## A102582.P14403248335593068762

`A028242(A102581(n+2)+1)`
-/

namespace A102582.P14403248335593068762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 (A102581 (n + 2) + 1).toNat

end

end A102582.P14403248335593068762

/-! ## A102582.P11756009546609219004

`A123108(A102581(n+2)+1)`
-/

namespace A102582.P11756009546609219004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 (A102581 (n + 2) + 1).toNat

end

end A102582.P11756009546609219004

/-! ## A102582.P12244536531595028197

`A116922(A102581(n+2)-1)`
-/

namespace A102582.P12244536531595028197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116922 (A102581 (n + 2) - 1).toNat

end

end A102582.P12244536531595028197

/-! ## A102582.P6298450339439381621

`∑[A004525(Δ[A102581(n+1)])]`
-/

namespace A102582.P6298450339439381621
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102581 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A102582.P6298450339439381621

/-! ## A102582.P10577112751587941460

`∑[A273943(Δ[A102581(n+1)])]`
-/

namespace A102582.P10577112751587941460
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102581 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273943 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A102582.P10577112751587941460

/-! ## A102582.P13891641435854408816

`A026741(A102581(n+2)+2)-1`
-/

namespace A102582.P13891641435854408816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A102581 (n + 2) + 2).toNat - 1

end

end A102582.P13891641435854408816

/-!
# A102584: a(n) = 1/2 times the cancellation factor in reducing Sum_{k=0 to 2n+1} 1/k! to lowest terms.

The programs for A102584, there is no canonical definition to state claims against.
-/

/-! ## A102584.P68295596950050549

`A093101(2*n+3)/2`
-/

namespace A102584.P68295596950050549
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A093101 (2 * n + 3) : ℚ) / 2

end

end A102584.P68295596950050549

/-! ## A102584.P5334289054324154287

`Δ[∑[A093101(Δ[n²])]/2]`
-/

namespace A102584.P5334289054324154287
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093101 ((f3 (n + 1) : ℤ) - (f3 n : ℤ)).toNat

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℤ) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A102584.P5334289054324154287

/-! ## A102584.P2268466974924059729

`floor(A093101(Δ[(n+1)²])/2)`
-/

namespace A102584.P2268466974924059729
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A093101 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℚ) / 2⌋

end

end A102584.P2268466974924059729

/-! ## A102584.P2204787709553400280

`A000027(A093101(Δ[(n+1)²])/2)`
-/

namespace A102584.P2204787709553400280
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (SequenceMachineLib.roundAway ((A093101 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℚ) / 2)).toNat

end

end A102584.P2204787709553400280

/-! ## A102584.P11746093512037746629

`round(A093101(Δ[(A028310(n)+1)²])/2)`
-/

namespace A102584.P11746093512037746629
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A028310 n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A093101 (f1 (n + 1) - f1 n).toNat : ℚ) / 2)

end

end A102584.P11746093512037746629

/-! ## A102584.P17667297504653163363

`round(A093101(Δ[(A057427(n)+n)²])/2)`
-/

namespace A102584.P17667297504653163363
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A057427 n + (n : ℤ)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A093101 (f1 (n + 1) - f1 n).toNat : ℚ) / 2)

end

end A102584.P17667297504653163363

/-! ## A102584.P16966884782621256026

`(A093101(Δ[(n+1)²])/2)%A017418(n)`
-/

namespace A102584.P16966884782621256026
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A093101 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℚ) / 2)) (A017418 n)

end

end A102584.P16966884782621256026

/-! ## A102584.P10028632850011540493

`A093101(Δ[(n+1)²])^A000041(C(2, n+2))/2`
-/

namespace A102584.P10028632850011540493
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A093101 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℚ) ^ (A000041 (Nat.choose 2 (n + 2)) : ℤ) / 2

end

end A102584.P10028632850011540493

/-!
# A102585: Column 0 of triangular matrix A102583, in which row n is formed from the first differences of row (n-1) of its inverse matrix square.

The programs for A102585, there is no canonical definition to state claims against.
-/

/-! ## A102585.P3031698152617480318

`A102583(∑[n])`
-/

namespace A102585.P3031698152617480318
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102583 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A102585.P3031698152617480318

/-! ## A102585.P17563069201679360413

`A102583(A000217(n))+char[9]`
-/

namespace A102585.P17563069201679360413
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102583 (A000217 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A102585.P17563069201679360413

/-! ## A102585.P11322868500019112987

`A102583(A089717(n+1))+char[9]`
-/

namespace A102585.P11322868500019112987
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102583 (A089717 (n + 1)).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A102585.P11322868500019112987

/-! ## A102585.P15137688074165514159

`A243832(n)+A102583(A000217(n))`
-/

namespace A102585.P15137688074165514159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243832 n + A102583 (A000217 n).toNat

end

end A102585.P15137688074165514159

/-! ## A102585.P525548021329926234

`A277157(n)+A102583(A000217(n))`
-/

namespace A102585.P525548021329926234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277157 n + A102583 (A000217 n).toNat

end

end A102585.P525548021329926234

/-!
# A102586: Column 1 of triangular matrix A102583, in which row n is formed from the first differences of row (n-1) of its inverse matrix square.

The programs for A102586, there is no canonical definition to state claims against.
-/

/-! ## A102586.P15989427763014710153

`A102583(∑[n+1]+1)`
-/

namespace A102586.P15989427763014710153
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102583 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A102586.P15989427763014710153

/-! ## A102586.P431176621630451373

`A324802(n+1)+A102583(A000124(n+1))`
-/

namespace A102586.P431176621630451373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324802 (n + 1) + A102583 (A000124 (n + 1)).toNat

end

end A102586.P431176621630451373

/-! ## A102586.P761855758428575721

`A102583(A000124(n+1))%A105976(n+3)`
-/

namespace A102586.P761855758428575721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A102583 (A000124 (n + 1)).toNat) (A105976 (n + 3))

end

end A102586.P761855758428575721

/-! ## A102586.P13174036066427018755

`A102583(A000124(n+1))*A334924(3*n+1)`
-/

namespace A102586.P13174036066427018755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102583 (A000124 (n + 1)).toNat * A334924 (3 * n + 1)

end

end A102586.P13174036066427018755

/-!
# A102587: T(n, k) = (-1)^n*2*[x^k] ChebyshevT(n, (1 - x)/2) with T(0,0) = 1, for 0 <= k <= n, triangle read by rows.

The programs for A102587, the canonical program `A102587.P14773396012342953535` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A102587 has offset 0).

The definition of A102587 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A102587.P14773396012342953535

`T(n-1,k-1)-T(n-1,k)-T(n-2,k)` with `a(0)=1, a(1)=-1, a(2)=1, a(3)=-1`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A102587

/-- `T(n-1,k-1)-T(n-1,k)-T(n-2,k)` -/
def P14773396012342953535.Spec : Prop :=
  ∀ n, P14773396012342953535.a n = A102587 n

theorem P14773396012342953535.correct : P14773396012342953535.Spec := by
  intro n
  simp only [A102587]

end A102587

/-!
# A102591: a(n) = Sum_{k=0..n} binomial(2n+1, 2k)*3^(n-k).

The programs for A102591, the canonical program `A102591.P15667713739905500526` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A102591 has offset 0).

The definition of A102591 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A102591.P6599903138007890572

`ogf((1-2x)/(1-8x+4x^2))`
-/

namespace A102591.P6599903138007890572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -2] [1, -8, 4] n

end

end A102591.P6599903138007890572

namespace A102591

/-- `ogf((1-2x)/(1-8x+4x^2))` -/
def P6599903138007890572.Spec : Prop :=
  ∀ n, P6599903138007890572.a n = A102591 n

end A102591

/-! ## A102591.P15667713739905500526

`8*a(n-1)-4*a(n-2)` with `a(0)=1, a(1)=6`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A102591

/-- `8*a(n-1)-4*a(n-2)` -/
def P15667713739905500526.Spec : Prop :=
  ∀ n, P15667713739905500526.a n = A102591 n

theorem P15667713739905500526.correct : P15667713739905500526.Spec := by
  intro n
  simp only [A102591]

end A102591

/-! ## A102591.P8003290450777772370

`2^n*A079935(n+1)`
-/

namespace A102591.P8003290450777772370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A079935 (n + 1)

end

end A102591.P8003290450777772370

namespace A102591

/-- `2^n*A079935(n+1)` -/
def P8003290450777772370.Spec : Prop :=
  ∀ n, P8003290450777772370.a n = A102591 n

end A102591

/-! ## A102591.P6734473375071274462

`sqrt(3)*(sqrt(3)-1)^(2*n+1)/6+sqrt(3)*(sqrt(3)+1)^(2*n+1)/6`
-/

namespace A102591.P6734473375071274462
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (3 : ℝ) * (Real.sqrt (3 : ℝ) - 1) ^ (2 * n + 1) / 6 + Real.sqrt (3 : ℝ) * (Real.sqrt (3 : ℝ) + 1) ^ (2 * n + 1) / 6

end

end A102591.P6734473375071274462

namespace A102591

/-- `sqrt(3)*(sqrt(3)-1)^(2*n+1)/6+sqrt(3)*(sqrt(3)+1)^(2*n+1)/6` -/
def P6734473375071274462.Spec : Prop :=
  ∀ n, P6734473375071274462.a n = (A102591 n : ℝ)

theorem P6734473375071274462.correct : P6734473375071274462.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A102591, Nat.add_sub_cancel, A102591.P6734473375071274462.a, A102591.P15667713739905500526.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A102591, Nat.add_sub_cancel, A102591.P6734473375071274462.a, A102591.P15667713739905500526.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A102591

/-! ## A102591.P11858847003676280723

`2*floor((sqrt(3)+2)*a(n-1))` with `a(0)=1`
-/

namespace A102591.P11858847003676280723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 * ⌊(Real.sqrt (3 : ℝ) + 2) * (a (n - 1) : ℝ)⌋

end

end A102591.P11858847003676280723

namespace A102591

/-- `2*floor((sqrt(3)+2)*a(n-1))` -/
def P11858847003676280723.Spec : Prop :=
  ∀ n, P11858847003676280723.a n = A102591 n

end A102591

/-! ## A102591.P8769647244159382588

`4*(2*a(n-1)-a(n-2))` with `a(0)=1, a(1)=6`
-/

namespace A102591.P8769647244159382588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 6] fun n a =>
  4 * (2 * a (n - 1) - a (n - 2))

end

end A102591.P8769647244159382588

namespace A102591

/-- `4*(2*a(n-1)-a(n-2))` -/
def P8769647244159382588.Spec : Prop :=
  ∀ n, P8769647244159382588.a n = A102591 n

theorem P8769647244159382588.correct : P8769647244159382588.Spec := by
  intro n
  simp only [A102591, Nat.add_sub_cancel, A102591.P8769647244159382588.a, A102591.P15667713739905500526.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A102591

/-! ## A102591.P12660605084215485150

`∑{#}[n, C(2*n+1, 2*#+1)*3^#]`
-/

namespace A102591.P12660605084215485150
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), Nat.choose (2 * n + 1) (2 * k + 1) * 3 ^ k

end

end A102591.P12660605084215485150

namespace A102591

/-- `∑{#}[n, C(2*n+1, 2*#+1)*3^#]` -/
def P12660605084215485150.Spec : Prop :=
  ∀ n, (P12660605084215485150.a n : ℤ) = A102591 n

end A102591

/-! ## A102591.P1586730289268647201

`A080879(2*n)`
-/

namespace A102591.P1586730289268647201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080879 (2 * n)

end

end A102591.P1586730289268647201

namespace A102591

/-- `A080879(2*n)` -/
def P1586730289268647201.Spec : Prop :=
  ∀ n, P1586730289268647201.a n = A102591 n

end A102591

/-! ## A102591.P15968439685694649610

`A002605(Δ[n²])`
-/

namespace A102591.P15968439685694649610
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002605 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A102591.P15968439685694649610

namespace A102591

/-- `A002605(Δ[n²])` -/
def P15968439685694649610.Spec : Prop :=
  ∀ n, P15968439685694649610.a n = A102591 n

end A102591

/-! ## A102591.P16775858977498010164

`∑[A052945(2*n)]`
-/

namespace A102591.P16775858977498010164
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052945 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A102591.P16775858977498010164

namespace A102591

/-- `∑[A052945(2*n)]` -/
def P16775858977498010164.Spec : Prop :=
  ∀ n, P16775858977498010164.a n = A102591 n

end A102591

/-! ## A102591.P10150307175503921229

`A160572(4*(n+1))`
-/

namespace A102591.P10150307175503921229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160572 (4 * (n + 1))

end

end A102591.P10150307175503921229

namespace A102591

/-- `A160572(4*(n+1))` -/
def P10150307175503921229.Spec : Prop :=
  ∀ n, P10150307175503921229.a n = A102591 n

end A102591

/-! ## A102591.P9782198630513240706

`A152035(Δ[n²])/2`
-/

namespace A102591.P9782198630513240706
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A152035 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℚ) / 2

end

end A102591.P9782198630513240706

namespace A102591

/-- `A152035(Δ[n²])/2` -/
def P9782198630513240706.Spec : Prop :=
  ∀ n, P9782198630513240706.a n = (A102591 n : ℚ)

end A102591

/-! ## A102591.P7361424347193138659

`A083337(Δ[n²])/3`
-/

namespace A102591.P7361424347193138659
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A083337 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℚ) / 3

end

end A102591.P7361424347193138659

namespace A102591

/-- `A083337(Δ[n²])/3` -/
def P7361424347193138659.Spec : Prop :=
  ∀ n, P7361424347193138659.a n = (A102591 n : ℚ)

end A102591

/-! ## A102591.P15215169417560452400

`2^n*Δ[A001353(n)]`
-/

namespace A102591.P15215169417560452400
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001353 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * (f1 (n + 1) - f1 n)

end

end A102591.P15215169417560452400

namespace A102591

/-- `2^n*Δ[A001353(n)]` -/
def P15215169417560452400.Spec : Prop :=
  ∀ n, P15215169417560452400.a n = A102591 n

end A102591

/-! ## A102591.P16139319716818969196

`A293007(2*(n+1))/2`
-/

namespace A102591.P16139319716818969196
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A293007 (2 * (n + 1)) : ℚ) / 2

end

end A102591.P16139319716818969196

namespace A102591

/-- `A293007(2*(n+1))/2` -/
def P16139319716818969196.Spec : Prop :=
  ∀ n, P16139319716818969196.a n = (A102591 n : ℚ)

end A102591

/-! ## A102591.P17988012716607834286

`A028860(2*n+3)/2`
-/

namespace A102591.P17988012716607834286
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028860 (2 * n + 3) : ℚ) / 2

end

end A102591.P17988012716607834286

namespace A102591

/-- `A028860(2*n+3)/2` -/
def P17988012716607834286.Spec : Prop :=
  ∀ n, P17988012716607834286.a n = (A102591 n : ℚ)

end A102591

/-! ## A102591.P4519965393247438428

`A080876(2*n+3)/2`
-/

namespace A102591.P4519965393247438428
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A080876 (2 * n + 3) : ℚ) / 2

end

end A102591.P4519965393247438428

namespace A102591

/-- `A080876(2*n+3)/2` -/
def P4519965393247438428.Spec : Prop :=
  ∀ n, P4519965393247438428.a n = (A102591 n : ℚ)

end A102591

/-! ## A102591.P16911338211811949656

`A160444(3*(n+1)+n)`
-/

namespace A102591.P16911338211811949656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160444 (3 * (n + 1) + n)

end

end A102591.P16911338211811949656

namespace A102591

/-- `A160444(3*(n+1)+n)` -/
def P16911338211811949656.Spec : Prop :=
  ∀ n, P16911338211811949656.a n = A102591 n

end A102591

/-! ## A102591.P6718285269893150218

`2^n*A001835(n+1)`
-/

namespace A102591.P6718285269893150218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A001835 (n + 1)

end

end A102591.P6718285269893150218

namespace A102591

/-- `2^n*A001835(n+1)` -/
def P6718285269893150218.Spec : Prop :=
  ∀ n, P6718285269893150218.a n = A102591 n

end A102591

/-! ## A102591.P10637474437584253691

`ceil(A108898(2*n+1)/2)`
-/

namespace A102591.P10637474437584253691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A108898 (2 * n + 1) : ℚ) / 2⌉

end

end A102591.P10637474437584253691

namespace A102591

/-- `ceil(A108898(2*n+1)/2)` -/
def P10637474437584253691.Spec : Prop :=
  ∀ n, P10637474437584253691.a n = A102591 n

end A102591

/-!
# A102592: a(n) = Sum_{k=0..n} binomial(2n+1, 2k)*5^(n-k).

The programs for A102592, the canonical program `A102592.P14642783953327844612` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A102592 has offset 0).

The definition of A102592 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A102592.P15773464186108811990

`ogf((1-4x)/(1-12x+16x^2))`
-/

namespace A102592.P15773464186108811990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -4] [1, -12, 16] n

end

end A102592.P15773464186108811990

namespace A102592

/-- `ogf((1-4x)/(1-12x+16x^2))` -/
def P15773464186108811990.Spec : Prop :=
  ∀ n, P15773464186108811990.a n = A102592 n

end A102592

/-! ## A102592.P14642783953327844612

`12*a(n-1)-16*a(n-2)` with `a(0)=1, a(1)=8`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A102592

/-- `12*a(n-1)-16*a(n-2)` -/
def P14642783953327844612.Spec : Prop :=
  ∀ n, P14642783953327844612.a n = A102592 n

theorem P14642783953327844612.correct : P14642783953327844612.Spec := by
  intro n
  simp only [A102592]

end A102592

/-! ## A102592.P526558743515192344

`sqrt(5)*(sqrt(5)-1)^(2*n+1)/10+sqrt(5)*(sqrt(5)+1)^(2*n+1)/10`
-/

namespace A102592.P526558743515192344
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (5 : ℝ) * (Real.sqrt (5 : ℝ) - 1) ^ (2 * n + 1) / 10 + Real.sqrt (5 : ℝ) * (Real.sqrt (5 : ℝ) + 1) ^ (2 * n + 1) / 10

end

end A102592.P526558743515192344

namespace A102592

/-- `sqrt(5)*(sqrt(5)-1)^(2*n+1)/10+sqrt(5)*(sqrt(5)+1)^(2*n+1)/10` -/
def P526558743515192344.Spec : Prop :=
  ∀ n, P526558743515192344.a n = (A102592 n : ℝ)

theorem P526558743515192344.correct : P526558743515192344.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A102592, Nat.add_sub_cancel, A102592.P526558743515192344.a, A102592.P14642783953327844612.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A102592, Nat.add_sub_cancel, A102592.P526558743515192344.a, A102592.P14642783953327844612.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A102592

/-! ## A102592.P17593081597196034637

`A063727(2*n)`
-/

namespace A102592.P17593081597196034637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063727 (2 * n)

end

end A102592.P17593081597196034637

namespace A102592

/-- `A063727(2*n)` -/
def P17593081597196034637.Spec : Prop :=
  ∀ n, P17593081597196034637.a n = A102592 n

end A102592

/-! ## A102592.P2247786298205159022

`A085449(Δ[n²])`
-/

namespace A102592.P2247786298205159022
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085449 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A102592.P2247786298205159022

namespace A102592

/-- `A085449(Δ[n²])` -/
def P2247786298205159022.Spec : Prop :=
  ∀ n, P2247786298205159022.a n = A102592 n

end A102592

/-! ## A102592.P10361103458625316058

`record[Δ[A087205(n)]]`
-/

namespace A102592.P10361103458625316058
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087205 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A102592.P10361103458625316058

namespace A102592

/-- `record[Δ[A087205(n)]]` -/
def P10361103458625316058.Spec : Prop :=
  ∀ n, P10361103458625316058.a n = A102592 n

end A102592

/-! ## A102592.P5845819490273830768

`A171648(4*n+1)`
-/

namespace A102592.P5845819490273830768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171648 (4 * n + 1)

end

end A102592.P5845819490273830768

namespace A102592

/-- `A171648(4*n+1)` -/
def P5845819490273830768.Spec : Prop :=
  ∀ n, P5845819490273830768.a n = A102592 n

end A102592

/-! ## A102592.P6771919825240905542

`4^n*A000045(Δ[n²])`
-/

namespace A102592.P6771919825240905542
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 ^ n : ℤ) * A000045 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A102592.P6771919825240905542

namespace A102592

/-- `4^n*A000045(Δ[n²])` -/
def P6771919825240905542.Spec : Prop :=
  ∀ n, P6771919825240905542.a n = A102592 n

end A102592

/-! ## A102592.P7803981856293616253

`4^n*Δ[A000045(2*n)]`
-/

namespace A102592.P7803981856293616253
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 ^ n : ℤ) * (f1 (n + 1) - f1 n)

end

end A102592.P7803981856293616253

namespace A102592

/-- `4^n*Δ[A000045(2*n)]` -/
def P7803981856293616253.Spec : Prop :=
  ∀ n, P7803981856293616253.a n = A102592 n

end A102592

/-! ## A102592.P9831482251382062011

`4^n*record[A000045(xor(1, n))]`
-/

namespace A102592.P9831482251382062011
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (Nat.xor 1 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 ^ n : ℤ) * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A102592.P9831482251382062011

namespace A102592

/-- `4^n*record[A000045(xor(1, n))]` -/
def P9831482251382062011.Spec : Prop :=
  ∀ n, P9831482251382062011.a n = A102592 n

end A102592

/-!
# A102593: Triangle read by rows: T(n,k) is the number of noncrossing trees with n edges in which the maximum number of contiguous border edges starting from the root in counterclockwise direction is equal to k.

The programs for A102593, the canonical program `A102593.P10801818663038716517` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A102593 has offset 0).

The definition of A102593 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1275 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A102593.P10801818663038716517

`A110616(n)-A110616(n+1)%A092276(n+1)`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A102593

/-- `A110616(n)-A110616(n+1)%A092276(n+1)` -/
def P10801818663038716517.Spec : Prop :=
  ∀ n, P10801818663038716517.a n = A102593 n

theorem P10801818663038716517.correct : P10801818663038716517.Spec := by
  intro n
  simp only [A102593]

end A102593

/-!
# A102594: Number of noncrossing trees with n edges in which no border edges emanate from the root.

The programs for A102594, there is no canonical definition to state claims against.
-/

/-! ## A102594.P160033718213776268

`A167763(A004274(∑[2*n]))`
-/

namespace A102594.P160033718213776268
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167763 (A004274 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A102594.P160033718213776268

/-! ## A102594.P17940237552581138138

`A102595(∑[n])`
-/

namespace A102594.P17940237552581138138
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102595 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A102594.P17940237552581138138

/-! ## A102594.P17882480529428647205

`xor(4, xor(4, A102595(A000217(n))))`
-/

namespace A102594.P17882480529428647205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 4 (Int.xor 4 (A102595 (A000217 n).toNat))

end

end A102594.P17882480529428647205

/-! ## A102594.P5107215929748406081

`A060576(n)*A102595(A000217(n))`
-/

namespace A102594.P5107215929748406081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060576 n * A102595 (A000217 n).toNat

end

end A102594.P5107215929748406081

/-! ## A102594.P16542468627073101097

`A102595(A000217(n))%A130620(n)²`
-/

namespace A102594.P16542468627073101097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A102595 (A000217 n).toNat) (A130620 n ^ 2)

end

end A102594.P16542468627073101097

/-! ## A102594.P12915679548595155651

`A093178(2*n)*A102595(A000217(n))`
-/

namespace A102594.P12915679548595155651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093178 (2 * n) * A102595 (A000217 n).toNat

end

end A102594.P12915679548595155651

/-! ## A102594.P6332843727727409547

`A102595(A000217(n))*A266591(2*n)`
-/

namespace A102594.P6332843727727409547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102595 (A000217 n).toNat * A266591 (2 * n)

end

end A102594.P6332843727727409547

/-! ## A102594.P5023729827932808968

`A102595(A000217(n))+A037800(A130125(n))`
-/

namespace A102594.P5023729827932808968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102595 (A000217 n).toNat + A037800 (A130125 n).toNat

end

end A102594.P5023729827932808968

/-! ## A102594.P17181466410870100740

`A107078(A178623(n))+A102595(A000217(n))`
-/

namespace A102594.P17181466410870100740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107078 (A178623 n).toNat + A102595 (A000217 n).toNat

end

end A102594.P17181466410870100740

/-!
# A102596: Number of n-node labeled oriented graphs whose underlying graphs are mating graphs, cf. A006024.

The programs for A102596, there is no canonical definition to state claims against.
-/

/-! ## A102596.P15576591040076190481

`A332610(a(n-1))` with `a(0)=1, a(1)=1, a(2)=2`
-/

namespace A102596.P15576591040076190481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2] fun n a =>
  A332610 (a (n - 1)).toNat

end

end A102596.P15576591040076190481

/-!
# A102597: Number of n-node labeled connected oriented graphs whose underlying graphs are mating graphs, cf. A006024.

The programs for A102597, there is no canonical definition to state claims against.
-/

/-! ## A102597.P9190111951759398603

`A080588(A000178(n))-A000178(n)`
-/

namespace A102597.P9190111951759398603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080588 (A000178 n).toNat - A000178 n

end

end A102597.P9190111951759398603

/-!
# A102598: Number of n-node unlabeled connected digraphs whose underlying graphs are mating graphs, cf. A006024.

The programs for A102598, there is no canonical definition to state claims against.
-/

/-! ## A102598.P4260915096862032541

`A342190(A209317(n))+A077138(n)`
-/

namespace A102598.P4260915096862032541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342190 (A209317 n).toNat + A077138 n

end

end A102598.P4260915096862032541

/-!
# A102599: Number of n-node unlabeled connected oriented graphs whose underlying graphs are mating graphs, cf. A006024.

The programs for A102599, there is no canonical definition to state claims against.
-/

/-! ## A102599.P2377986011225713803

`A109964(n!²)`
-/

namespace A102599.P2377986011225713803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109964 (Nat.factorial n ^ 2)

end

end A102599.P2377986011225713803

