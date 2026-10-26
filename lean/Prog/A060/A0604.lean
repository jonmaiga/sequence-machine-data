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
import Seq.B000.C038
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
import Seq.B001.C012
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C003
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
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

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A060400: In base ten, we try to get the digits 0,1,2,3,...,9,0,1,2,3,... in order only using a sequence of increasing primes and each time choosing the smallest prime that will give the desired digit.

The programs for A060400, there is no canonical definition to state claims against.
-/

/-! ## A060400.P1507980950103539479

`A060399(n+10)`
-/

namespace A060400.P1507980950103539479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060399 (n + 10)

end

end A060400.P1507980950103539479

/-! ## A060400.P17758198901226101263

`p?[A054977(n)*A060399(A020723(n))]`
-/

namespace A060400.P17758198901226101263
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n * A060399 (A020723 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A060400.P17758198901226101263

/-! ## A060400.P3805381327135424830

`record[A060399(A020723(A057979(n)))]`
-/

namespace A060400.P3805381327135424830
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060399 (A020723 (A057979 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A060400.P3805381327135424830

/-! ## A060400.P10697721847674582116

`record[A060399(A020723(A244479(n)))]`
-/

namespace A060400.P10697721847674582116
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060399 (A020723 (A244479 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A060400.P10697721847674582116

/-!
# A060401: a(n) = minimal m such that m>n, n divides m, n-1 divides m-1, n-2 divides m-2 and so on down to 1 divides m-n+1.

The programs for A060401, the canonical program `A060401.P17035692861748186501` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A060401 has offset 1).

The definition of A060401 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A060401.P17035692861748186501

`n+1+A003418(n+1)`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A060401

/-- `n+1+A003418(n+1)` -/
def P17035692861748186501.Spec : Prop :=
  ∀ n, P17035692861748186501.a n = A060401 (n + 1)

theorem P17035692861748186501.correct : P17035692861748186501.Spec := by
  intro n
  simp only [A060401, Nat.add_sub_cancel]

end A060401

/-! ## A060401.P16600206496796907842

`∑[Δ[lcm(n, a(n-1))]+1]+1` with `a(0)=1`
-/

namespace A060401.P16600206496796907842
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f2 =>
  Nat.lcm n (f2 (n - 1))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A060401.P16600206496796907842

namespace A060401

/-- `∑[Δ[lcm(n, a(n-1))]+1]+1` -/
def P16600206496796907842.Spec : Prop :=
  ∀ n, P16600206496796907842.a n = A060401 (n + 1)

end A060401

/-! ## A060401.P7045182367943936351

`lcm(n+1, a(n-1)-n)+n+1` with `a(0)=2`
-/

namespace A060401.P7045182367943936351
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2] fun n a =>
  Int.lcm (n + 1 : ℤ) ((a (n - 1) : ℤ) - (n : ℤ)) + (n + 1)

end

end A060401.P7045182367943936351

namespace A060401

/-- `lcm(n+1, a(n-1)-n)+n+1` -/
def P7045182367943936351.Spec : Prop :=
  ∀ n, (P7045182367943936351.a n : ℤ) = A060401 (n + 1)

end A060401

/-! ## A060401.P10058491686932680285

`∏[ceil((n+1)/∏{p}[n+1, (n+1)/#])]+1+n`
-/

namespace A060401.P10058491686932680285
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n + 1 : ℚ) / (∏ p ∈ Nat.primeFactors (f2 n), (n + 1 : ℚ) / (p : ℚ))⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j + 1 + (n : ℤ)

end

end A060401.P10058491686932680285

namespace A060401

/-- `∏[ceil((n+1)/∏{p}[n+1, (n+1)/#])]+1+n` -/
def P10058491686932680285.Spec : Prop :=
  ∀ n, P10058491686932680285.a n = A060401 (n + 1)

end A060401

/-! ## A060401.P1966928987632492873

`A065500(n+1)+1`
-/

namespace A060401.P1966928987632492873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065500 (n + 1) + 1

end

end A060401.P1966928987632492873

namespace A060401

/-- `A065500(n+1)+1` -/
def P1966928987632492873.Spec : Prop :=
  ∀ n, P1966928987632492873.a n = A060401 (n + 1)

end A060401

/-! ## A060401.P12705774689532551577

`A195507(n+2)-1`
-/

namespace A060401.P12705774689532551577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195507 (n + 2) - 1

end

end A060401.P12705774689532551577

namespace A060401

/-- `A195507(n+2)-1` -/
def P12705774689532551577.Spec : Prop :=
  ∀ n, P12705774689532551577.a n = A060401 (n + 1)

theorem P12705774689532551577.correct : P12705774689532551577.Spec := by
  intro n
  simp only [A060401, Nat.add_sub_cancel, A060401.P12705774689532551577.a, A060401.P17035692861748186501.a, A003418, A003418.P6976248655893080794.a, A195507, A195507.P13812271573965113829.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A060401

/-! ## A060401.P5762144363637457676

`A075059(n+1)+n`
-/

namespace A060401.P5762144363637457676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075059 (n + 1) + (n : ℤ)

end

end A060401.P5762144363637457676

namespace A060401

/-- `A075059(n+1)+n` -/
def P5762144363637457676.Spec : Prop :=
  ∀ n, P5762144363637457676.a n = A060401 (n + 1)

theorem P5762144363637457676.correct : P5762144363637457676.Spec := by
  intro n
  simp only [A060401, Nat.add_sub_cancel, A060401.P5762144363637457676.a, A060401.P17035692861748186501.a, A003418, A003418.P6976248655893080794.a, A075059, A075059.P13005941669399506084.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A060401

/-! ## A060401.P14588036005573132094

`A070198(n)+2+n`
-/

namespace A060401.P14588036005573132094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070198 n + 2 + (n : ℤ)

end

end A060401.P14588036005573132094

namespace A060401

/-- `A070198(n)+2+n` -/
def P14588036005573132094.Spec : Prop :=
  ∀ n, P14588036005573132094.a n = A060401 (n + 1)

theorem P14588036005573132094.correct : P14588036005573132094.Spec := by
  intro n
  simp only [A060401, Nat.add_sub_cancel, A060401.P14588036005573132094.a, A060401.P17035692861748186501.a, A003418, A003418.P6976248655893080794.a, A070198, A070198.P18115024891889206898.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A060401

/-! ## A060401.P3854722525206261483

`Δ[A173185(n)+∑[n]]`
-/

namespace A060401.P3854722525206261483
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173185 n + ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A060401.P3854722525206261483

namespace A060401

/-- `Δ[A173185(n)+∑[n]]` -/
def P3854722525206261483.Spec : Prop :=
  ∀ n, P3854722525206261483.a n = A060401 (n + 1)

end A060401

/-! ## A060401.P11340956896413860359

`Δ[A236856(n)+∑[n]]`
-/

namespace A060401.P11340956896413860359
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236856 n + ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A060401.P11340956896413860359

namespace A060401

/-- `Δ[A236856(n)+∑[n]]` -/
def P11340956896413860359.Spec : Prop :=
  ∀ n, P11340956896413860359.a n = A060401 (n + 1)

end A060401

/-! ## A060401.P10216491247904339100

`∑[A119944(n)+1]+1`
-/

namespace A060401.P10216491247904339100
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119944 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A060401.P10216491247904339100

namespace A060401

/-- `∑[A119944(n)+1]+1` -/
def P10216491247904339100.Spec : Prop :=
  ∀ n, P10216491247904339100.a n = A060401 (n + 1)

end A060401

/-! ## A060401.P9689881724857627558

`∏[A014963(n+1)]+1+n`
-/

namespace A060401.P9689881724857627558
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j + 1 + (n : ℤ)

end

end A060401.P9689881724857627558

namespace A060401

/-- `∏[A014963(n+1)]+1+n` -/
def P9689881724857627558.Spec : Prop :=
  ∀ n, P9689881724857627558.a n = A060401 (n + 1)

end A060401

/-! ## A060401.P7727664058890462609

`(n+1)*(A002944(n+1)+1)`
-/

namespace A060401.P7727664058890462609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A002944 (n + 1) + 1)

end

end A060401.P7727664058890462609

namespace A060401

/-- `(n+1)*(A002944(n+1)+1)` -/
def P7727664058890462609.Spec : Prop :=
  ∀ n, P7727664058890462609.a n = A060401 (n + 1)

end A060401

/-! ## A060401.P469383356842390158

`A139550(2*(n+1))+n+1`
-/

namespace A060401.P469383356842390158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139550 (2 * (n + 1)) + (n + 1 : ℤ)

end

end A060401.P469383356842390158

namespace A060401

/-- `A139550(2*(n+1))+n+1` -/
def P469383356842390158.Spec : Prop :=
  ∀ n, P469383356842390158.a n = A060401 (n + 1)

end A060401

/-! ## A060401.P11057237158337220534

`A051426(n+1)/2+n+1`
-/

namespace A060401.P11057237158337220534
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A051426 (n + 1) : ℚ) / 2 + (n + 1 : ℚ)

end

end A060401.P11057237158337220534

namespace A060401

/-- `A051426(n+1)/2+n+1` -/
def P11057237158337220534.Spec : Prop :=
  ∀ n, P11057237158337220534.a n = (A060401 (n + 1) : ℚ)

end A060401

/-! ## A060401.P9382062976632049024

`∏[A166260(∏{p}[n+1, #])+1]+n+1`
-/

namespace A060401.P9382062976632049024
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166260 (∏ p ∈ Nat.primeFactors (f2 n), p) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j + (n + 1 : ℤ)

end

end A060401.P9382062976632049024

namespace A060401

/-- `∏[A166260(∏{p}[n+1, #])+1]+n+1` -/
def P9382062976632049024.Spec : Prop :=
  ∀ n, P9382062976632049024.a n = A060401 (n + 1)

end A060401

/-! ## A060401.P7525605073076701632

`∑[ceil(Δ[a(n-1)*A014963(n)])]+2+n` with `a(0)=1`

`ceil` is left out, it is the identity on integers.
-/

namespace A060401.P7525605073076701632
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f2 =>
  f2 (n - 1) * A014963 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 2 + (n : ℤ)

end

end A060401.P7525605073076701632

namespace A060401

/-- `∑[ceil(Δ[a(n-1)*A014963(n)])]+2+n` -/
def P7525605073076701632.Spec : Prop :=
  ∀ n, P7525605073076701632.a n = A060401 (n + 1)

end A060401

/-! ## A060401.P15331856727808235375

`A059794(n+1)+A005126(n)`
-/

namespace A060401.P15331856727808235375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059794 (n + 1) + A005126 n

end

end A060401.P15331856727808235375

namespace A060401

/-- `A059794(n+1)+A005126(n)` -/
def P15331856727808235375.Spec : Prop :=
  ∀ n, P15331856727808235375.a n = A060401 (n + 1)

end A060401

/-! ## A060401.P11673109352369092402

`Δ[A000217(n)-(1-A236856(n))]`
-/

namespace A060401.P11673109352369092402
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 n - (1 - A236856 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A060401.P11673109352369092402

namespace A060401

/-- `Δ[A000217(n)-(1-A236856(n))]` -/
def P11673109352369092402.Spec : Prop :=
  ∀ n, P11673109352369092402.a n = A060401 (n + 1)

end A060401

/-! ## A060401.P10514816859116992898

`A051451(A065515(n+1))+1+n`
-/

namespace A060401.P10514816859116992898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051451 (A065515 (n + 1)).toNat + 1 + (n : ℤ)

end

end A060401.P10514816859116992898

namespace A060401

/-- `A051451(A065515(n+1))+1+n` -/
def P10514816859116992898.Spec : Prop :=
  ∀ n, P10514816859116992898.a n = A060401 (n + 1)

end A060401

/-!
# A060404: G.f.: Sum_{k >= 1} (phi(k)/k)*log(1-f(x^k)), where f(x) = (1 - sqrt(1 - 4*x)) / (2*x) - 1 is the g.f. for the Catalan numbers (A000108) C_1, C_2, C_3, ...

The programs for A060404, there is no canonical definition to state claims against.
-/

/-! ## A060404.P12651429284820311921

`∑{d}[n, A131764(#)-A022553(#)]`
-/

namespace A060404.P12651429284820311921
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (A131764 d - A022553 d)

end

end A060404.P12651429284820311921

/-! ## A060404.P14439360180410265834

`A110654(A001868(n))-A003239(n)`
-/

namespace A060404.P14439360180410265834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A001868 n).toNat - A003239 n

end

end A060404.P14439360180410265834

/-! ## A060404.P7251019179068379193

`∑[A247911(A148833(n))]-1`
-/

namespace A060404.P7251019179068379193
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247911 (A148833 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A060404.P7251019179068379193

/-!
# A060405: Sum of n-th Lucas number (A000032(n)) and n-th Pell number (A000129(n)).

The programs for A060405, the canonical program `A060405.P7753130245005528158` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A060405 has offset 0).

The definition of A060405 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A060405.P7753130245005528158

`3*a(n-1)-3*a(n-3)-a(n-4)` with `a(0)=2, a(1)=2, a(2)=5, a(3)=9`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A060405

/-- `3*a(n-1)-3*a(n-3)-a(n-4)` -/
def P7753130245005528158.Spec : Prop :=
  ∀ n, P7753130245005528158.a n = A060405 n

theorem P7753130245005528158.correct : P7753130245005528158.Spec := by
  intro n
  simp only [A060405]

end A060405

/-! ## A060405.P16119641240945214844

`A000129(n)+A000032(n)`
-/

namespace A060405.P16119641240945214844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000129 n + A000032 n

end

end A060405.P16119641240945214844

namespace A060405

/-- `A000129(n)+A000032(n)` -/
def P16119641240945214844.Spec : Prop :=
  ∀ n, P16119641240945214844.a n = A060405 n

end A060405

/-! ## A060405.P17459175635566825290

`ogf((2-4x-x^2)/(1-3x+3x^3+x^4))`
-/

namespace A060405.P17459175635566825290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, -4, -1] [1, -3, 0, 3, 1] n

end

end A060405.P17459175635566825290

namespace A060405

/-- `ogf((2-4x-x^2)/(1-3x+3x^3+x^4))` -/
def P17459175635566825290.Spec : Prop :=
  ∀ n, P17459175635566825290.a n = A060405 n

end A060405

/-! ## A060405.P11076661760212342525

`A118658(n)+A001932(n)`
-/

namespace A060405.P11076661760212342525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118658 n + A001932 n

end

end A060405.P11076661760212342525

namespace A060405

/-- `A118658(n)+A001932(n)` -/
def P11076661760212342525.Spec : Prop :=
  ∀ n, P11076661760212342525.a n = A060405 n

end A060405

/-! ## A060405.P10385973918457932115

`A111954(n)+A098600(n)`
-/

namespace A060405.P10385973918457932115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111954 n + A098600 n

end

end A060405.P10385973918457932115

namespace A060405

/-- `A111954(n)+A098600(n)` -/
def P10385973918457932115.Spec : Prop :=
  ∀ n, P10385973918457932115.a n = A060405 n

end A060405

/-! ## A060405.P16328495250062522099

`A000129(n)+Δ[A001610(n)]`
-/

namespace A060405.P16328495250062522099
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001610 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000129 n + (f1 (n + 1) - f1 n)

end

end A060405.P16328495250062522099

namespace A060405

/-- `A000129(n)+Δ[A001610(n)]` -/
def P16328495250062522099.Spec : Prop :=
  ∀ n, P16328495250062522099.a n = A060405 n

end A060405

/-! ## A060405.P2948089027582550193

`A118658(n+2)+A006684(n)`
-/

namespace A060405.P2948089027582550193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118658 (n + 2) + A006684 n

end

end A060405.P2948089027582550193

namespace A060405

/-- `A118658(n+2)+A006684(n)` -/
def P2948089027582550193.Spec : Prop :=
  ∀ n, P2948089027582550193.a n = A060405 n

end A060405

/-! ## A060405.P12772093762947766502

`A000032(n)+A174191(n)-1`
-/

namespace A060405.P12772093762947766502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 n + (A174191 n - 1)

end

end A060405.P12772093762947766502

namespace A060405

/-- `A000032(n)+A174191(n)-1` -/
def P12772093762947766502.Spec : Prop :=
  ∀ n, P12772093762947766502.a n = A060405 n

end A060405

/-! ## A060405.P17011942048654349765

`A000032(n)-A176981(n+1)`
-/

namespace A060405.P17011942048654349765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 n - A176981 (n + 1)

end

end A060405.P17011942048654349765

namespace A060405

/-- `A000032(n)-A176981(n+1)` -/
def P17011942048654349765.Spec : Prop :=
  ∀ n, P17011942048654349765.a n = A060405 n

end A060405

/-! ## A060405.P1868180871937135135

`A001612(n)+A174191(n)-2`
-/

namespace A060405.P1868180871937135135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001612 n + (A174191 n - 2)

end

end A060405.P1868180871937135135

namespace A060405

/-- `A001612(n)+A174191(n)-2` -/
def P1868180871937135135.Spec : Prop :=
  ∀ n, P1868180871937135135.a n = A060405 n

end A060405

/-! ## A060405.P7828842202847203557

`A002965(2*n)+A000032(n)`
-/

namespace A060405.P7828842202847203557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002965 (2 * n) + A000032 n

end

end A060405.P7828842202847203557

namespace A060405

/-- `A002965(2*n)+A000032(n)` -/
def P7828842202847203557.Spec : Prop :=
  ∀ n, P7828842202847203557.a n = A060405 n

end A060405

/-! ## A060405.P1130310551629559609

`A135153(2*n)+A000032(n)`
-/

namespace A060405.P1130310551629559609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135153 (2 * n) + A000032 n

end

end A060405.P1130310551629559609

namespace A060405

/-- `A135153(2*n)+A000032(n)` -/
def P1130310551629559609.Spec : Prop :=
  ∀ n, P1130310551629559609.a n = A060405 n

end A060405

/-! ## A060405.P7853567337646388306

`A228748(n)+2*A000032(n)`
-/

namespace A060405.P7853567337646388306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228748 n + 2 * A000032 n

end

end A060405.P7853567337646388306

namespace A060405

/-- `A228748(n)+2*A000032(n)` -/
def P7853567337646388306.Spec : Prop :=
  ∀ n, P7853567337646388306.a n = A060405 n

end A060405

/-! ## A060405.P13412708598246313841

`A249576(3*n)+A000032(n)`
-/

namespace A060405.P13412708598246313841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249576 (3 * n) + A000032 n

end

end A060405.P13412708598246313841

namespace A060405

/-- `A249576(3*n)+A000032(n)` -/
def P13412708598246313841.Spec : Prop :=
  ∀ n, P13412708598246313841.a n = A060405 n

end A060405

/-! ## A060405.P5613528515152015353

`A116560(6*n)+A000032(n)`
-/

namespace A060405.P5613528515152015353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116560 (6 * n) + A000032 n

end

end A060405.P5613528515152015353

namespace A060405

/-- `A116560(6*n)+A000032(n)` -/
def P5613528515152015353.Spec : Prop :=
  ∀ n, P5613528515152015353.a n = A060405 n

end A060405

/-! ## A060405.P2635055063166822915

`A000032(n)+xor(1, A111954(n))`
-/

namespace A060405.P2635055063166822915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 n + Int.xor 1 (A111954 n)

end

end A060405.P2635055063166822915

namespace A060405

/-- `A000032(n)+xor(1, A111954(n))` -/
def P2635055063166822915.Spec : Prop :=
  ∀ n, P2635055063166822915.a n = A060405 n

end A060405

/-! ## A060405.P7021838314496427188

`A000129(n)+Δ[A000204(n+1)]`
-/

namespace A060405.P7021838314496427188
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000204 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000129 n + (f1 (n + 1) - f1 n)

end

end A060405.P7021838314496427188

namespace A060405

/-- `A000129(n)+Δ[A000204(n+1)]` -/
def P7021838314496427188.Spec : Prop :=
  ∀ n, P7021838314496427188.a n = A060405 n

end A060405

/-! ## A060405.P10919817534598792644

`A303427(2*n)-A176981(n+1)`
-/

namespace A060405.P10919817534598792644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303427 (2 * n) - A176981 (n + 1)

end

end A060405.P10919817534598792644

namespace A060405

/-- `A303427(2*n)-A176981(n+1)` -/
def P10919817534598792644.Spec : Prop :=
  ∀ n, P10919817534598792644.a n = A060405 n

end A060405

/-! ## A060405.P11415679053757029824

`A302126(2*n+1)-A176981(n+1)`
-/

namespace A060405.P11415679053757029824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302126 (2 * n + 1) - A176981 (n + 1)

end

end A060405.P11415679053757029824

namespace A060405

/-- `A302126(2*n+1)-A176981(n+1)` -/
def P11415679053757029824.Spec : Prop :=
  ∀ n, P11415679053757029824.a n = A060405 n

end A060405

/-! ## A060405.P14899778123343696413

`A215928(n)+A000032(A028310(n))`
-/

namespace A060405.P14899778123343696413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215928 n + A000032 (A028310 n).toNat

end

end A060405.P14899778123343696413

namespace A060405

/-- `A215928(n)+A000032(A028310(n))` -/
def P14899778123343696413.Spec : Prop :=
  ∀ n, P14899778123343696413.a n = A060405 n

end A060405

/-!
# A060409: In the '3x+1' problem, take the sequence of starting values which set new records for the highest point of the trajectory before reaching 1 (A006884); sequence gives associated "dropping time", number of steps to reach a lower value than the start.

The programs for A060409, there is no canonical definition to state claims against.
-/

/-! ## A060409.P12616205766900408586

`A126241(A006884(n+2))`
-/

namespace A060409.P12616205766900408586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126241 (A006884 (n + 2)).toNat

end

end A060409.P12616205766900408586

/-!
# A060410: In the '3x+1' problem, take the sequence of starting values which set new records for the highest point of the trajectory before reaching 1 (A006884); sequence gives associated maximal value reached in the trajectory with that start.

The programs for A060410, there is no canonical definition to state claims against.
-/

/-! ## A060410.P5056227055356112622

`A336994(n+2)/2`
-/

namespace A060410.P5056227055356112622
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A336994 (n + 2) : ℚ) / 2

end

end A060410.P5056227055356112622

/-! ## A060410.P3840723546234261999

`lcm(2, A006885(n+2)/2)`
-/

namespace A060410.P3840723546234261999
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (SequenceMachineLib.roundAway ((A006885 (n + 2) : ℚ) / 2))

end

end A060410.P3840723546234261999

/-! ## A060410.P2294260922656140405

`A000007(n)+A006885(n+2)/2`
-/

namespace A060410.P2294260922656140405
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000007 n : ℚ) + (A006885 (n + 2) : ℚ) / 2

end

end A060410.P2294260922656140405

/-! ## A060410.P3890639198523247187

`A006885(n+2)/(A019426(2*n)+1)`
-/

namespace A060410.P3890639198523247187
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006885 (n + 2) : ℚ) / (A019426 (2 * n) + 1 : ℚ)

end

end A060410.P3890639198523247187

/-! ## A060410.P16973007322605689502

`A006885(n+2)/A020639(A025586(n+1))`
-/

namespace A060410.P16973007322605689502
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006885 (n + 2) : ℚ) / (A020639 (A025586 (n + 1)).toNat : ℚ)

end

end A060410.P16973007322605689502

/-! ## A060410.P16191207347620658896

`A006885(n+2)/A020639(A033496(n+1))`
-/

namespace A060410.P16191207347620658896
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006885 (n + 2) : ℚ) / (A020639 (A033496 (n + 1)).toNat : ℚ)

end

end A060410.P16191207347620658896

/-! ## A060410.P8973596357482386552

`A006885(n+2)/A014963(A165825(n+1))`
-/

namespace A060410.P8973596357482386552
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006885 (n + 2) : ℚ) / (A014963 (A165825 (n + 1)).toNat : ℚ)

end

end A060410.P8973596357482386552

/-! ## A060410.P12434321298792506182

`A006885(n+2)/A020639(A176869(n+1))`
-/

namespace A060410.P12434321298792506182
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006885 (n + 2) : ℚ) / (A020639 (A176869 (n + 1)).toNat : ℚ)

end

end A060410.P12434321298792506182

/-! ## A060410.P8164732551340023620

`A006885(n+2)/A020639(A222562(n+1))`
-/

namespace A060410.P8164732551340023620
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006885 (n + 2) : ℚ) / (A020639 (A222562 (n + 1)).toNat : ℚ)

end

end A060410.P8164732551340023620

/-! ## A060410.P9846757272710350162

`A006885(n+2)/A020639(A270570(n+2))`
-/

namespace A060410.P9846757272710350162
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006885 (n + 2) : ℚ) / (A020639 (A270570 (n + 2)).toNat : ℚ)

end

end A060410.P9846757272710350162

/-!
# A060412: In the '3x+1' problem, these values for the starting value set new records for the "dropping time", number of steps to reach a lower value than the start.

The programs for A060412, there is no canonical definition to state claims against.
-/

/-! ## A060412.P1399914797484894243

`A122442(record[A122458(n)+1])`
-/

namespace A060412.P1399914797484894243
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122458 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122442 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A060412.P1399914797484894243

/-!
# A060413: In the '3x+1' problem, take the sequence of starting values which set new records for the "dropping time" (A060412); sequence gives associated dropping times.

The programs for A060413, there is no canonical definition to state claims against.
-/

/-! ## A060413.P10301608771102981007

`A310901(eq[A310808(n), A310908(n)])`
-/

namespace A060413.P10301608771102981007
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310808 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310908 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310901 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A060413.P10301608771102981007

/-! ## A060413.P1895648363720039958

`record[A060409(n+1)/A060384(A060383(n+1))]`
-/

namespace A060413.P1895648363720039958
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A060409 (n + 1) : ℚ) / (A060384 (A060383 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A060413.P1895648363720039958

/-!
# A060414: In the '3x+1' problem, take the sequence of starting values which set new records for the "dropping time" (A060412); sequence gives associated maximal value reached in the trajectory with that start.

The programs for A060414, there is no canonical definition to state claims against.
-/

/-! ## A060414.P16035291133730704830

`A056959((C(2*n, 2)+n^(n+1))*(n+1)+2)/2`
-/

namespace A060414.P16035291133730704830
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A056959 ((Nat.choose (2 * n) 2 + n ^ (n + 1)) * (n + 1) + 2) : ℚ) / 2

end

end A060414.P16035291133730704830

/-!
# A060416: a(n) = n*4^n - 1, with a(0) = 1.

The programs for A060416, the canonical program `A060416.P4416620874580684175` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A060416 has offset 0).

The definition of A060416 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A060416.P4416620874580684175

`abs(n*4^n-1)`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A060416

/-- `abs(n*4^n-1)` -/
def P4416620874580684175.Spec : Prop :=
  ∀ n, P4416620874580684175.a n = A060416 n

theorem P4416620874580684175.correct : P4416620874580684175.Spec := by
  intro n
  simp only [A060416]

end A060416

/-! ## A060416.P4661023297377540817

`9*a(n-1)-24*a(n-2)+16*a(n-3)` with `a(0)=1, a(1)=3, a(2)=31, a(3)=191`
-/

namespace A060416.P4661023297377540817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3, 31, 191] fun n a =>
  9 * a (n - 1) - 24 * a (n - 2) + 16 * a (n - 3)

end

end A060416.P4661023297377540817

namespace A060416

/-- `9*a(n-1)-24*a(n-2)+16*a(n-3)` -/
def P4661023297377540817.Spec : Prop :=
  ∀ n, P4661023297377540817.a n = A060416 n

end A060416

/-! ## A060416.P6441238456536878611

`floor(acot(n)²)+n*4^n-1`
-/

namespace A060416.P6441238456536878611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊SequenceMachineLib.acot (n : ℝ) ^ 2⌋ + (n * 4 ^ n : ℤ) - 1

end

end A060416.P6441238456536878611

namespace A060416

/-- `floor(acot(n)²)+n*4^n-1` -/
def P6441238456536878611.Spec : Prop :=
  ∀ n, P6441238456536878611.a n = A060416 n

end A060416

/-! ## A060416.P2535702149208997713

`n*4^n-a(n-1)%2` with `a(0)=1`
-/

namespace A060416.P2535702149208997713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (n * 4 ^ n : ℤ) - Int.tmod (a (n - 1)) 2

end

end A060416.P2535702149208997713

namespace A060416

/-- `n*4^n-a(n-1)%2` -/
def P2535702149208997713.Spec : Prop :=
  ∀ n, P2535702149208997713.a n = A060416 n

end A060416

/-! ## A060416.P15285277036230880895

`n*4^n-gcd(2, a(n-1))` with `a(0)=1`
-/

namespace A060416.P15285277036230880895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (n * 4 ^ n : ℤ) - (Int.gcd 2 (a (n - 1)) : ℤ)

end

end A060416.P15285277036230880895

namespace A060416

/-- `n*4^n-gcd(2, a(n-1))` -/
def P15285277036230880895.Spec : Prop :=
  ∀ n, P15285277036230880895.a n = A060416 n

end A060416

/-! ## A060416.P11197614984181933419

`or(n*4^n-1, floor((3*n-2)/a(n-1)))` with `a(0)=1`
-/

namespace A060416.P11197614984181933419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.lor ((n * 4 ^ n : ℤ) - 1) ⌊((3 * n : ℤ) - 2 : ℚ) / (a (n - 1) : ℚ)⌋

end

end A060416.P11197614984181933419

namespace A060416

/-- `or(n*4^n-1, floor((3*n-2)/a(n-1)))` -/
def P11197614984181933419.Spec : Prop :=
  ∀ n, P11197614984181933419.a n = A060416 n

end A060416

/-! ## A060416.P18042011264682490099

`record[A087323(n)^(n%2)]`
-/

namespace A060416.P18042011264682490099
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087323 n ^ (n % 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A060416.P18042011264682490099

namespace A060416

/-- `record[A087323(n)^(n%2)]` -/
def P18042011264682490099.Spec : Prop :=
  ∀ n, P18042011264682490099.a n = A060416 n

end A060416

/-! ## A060416.P17959613065568194102

`2*A129952(2*n)-1`
-/

namespace A060416.P17959613065568194102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A129952 (2 * n) - 1

end

end A060416.P17959613065568194102

namespace A060416

/-- `2*A129952(2*n)-1` -/
def P17959613065568194102.Spec : Prop :=
  ∀ n, P17959613065568194102.a n = A060416 n

end A060416

/-! ## A060416.P1970451331568471982

`A153881(n+1)+n*4^n`
-/

namespace A060416.P1970451331568471982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153881 (n + 1) + (n * 4 ^ n : ℤ)

end

end A060416.P1970451331568471982

namespace A060416

/-- `A153881(n+1)+n*4^n` -/
def P1970451331568471982.Spec : Prop :=
  ∀ n, P1970451331568471982.a n = A060416 n

end A060416

/-! ## A060416.P9548143873857196808

`or(1, A087323(A004273(n)))`
-/

namespace A060416.P9548143873857196808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A087323 (A004273 n).toNat)

end

end A060416.P9548143873857196808

namespace A060416

/-- `or(1, A087323(A004273(n)))` -/
def P9548143873857196808.Spec : Prop :=
  ∀ n, P9548143873857196808.a n = A060416 n

end A060416

/-! ## A060416.P17965481586305717382

`A018215(n)-A158388(n)`
-/

namespace A060416.P17965481586305717382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018215 n - A158388 n

end

end A060416.P17965481586305717382

namespace A060416

/-- `A018215(n)-A158388(n)` -/
def P17965481586305717382.Spec : Prop :=
  ∀ n, P17965481586305717382.a n = A060416 n

end A060416

/-! ## A060416.P14950412129410112527

`A165326(2*n)+A018215(n)`
-/

namespace A060416.P14950412129410112527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165326 (2 * n) + A018215 n

end

end A060416.P14950412129410112527

namespace A060416

/-- `A165326(2*n)+A018215(n)` -/
def P14950412129410112527.Spec : Prop :=
  ∀ n, P14950412129410112527.a n = A060416 n

end A060416

/-! ## A060416.P556604953182702003

`record[Δ[A001787(A141310(n)-1)]]`
-/

namespace A060416.P556604953182702003
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001787 (A141310 n - 1).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A060416.P556604953182702003

namespace A060416

/-- `record[Δ[A001787(A141310(n)-1)]]` -/
def P556604953182702003.Spec : Prop :=
  ∀ n, P556604953182702003.a n = A060416 n

end A060416

/-! ## A060416.P13255084450025544810

`or(n*A103454(n), A103454(n))`
-/

namespace A060416.P13255084450025544810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((n : ℤ) * A103454 n) (A103454 n)

end

end A060416.P13255084450025544810

namespace A060416

/-- `or(n*A103454(n), A103454(n))` -/
def P13255084450025544810.Spec : Prop :=
  ∀ n, P13255084450025544810.a n = A060416 n

end A060416

/-! ## A060416.P3116766066642891341

`n*A000079(n)²-A158388(n)`
-/

namespace A060416.P3116766066642891341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A000079 n ^ 2 - A158388 n

end

end A060416.P3116766066642891341

namespace A060416

/-- `n*A000079(n)²-A158388(n)` -/
def P3116766066642891341.Spec : Prop :=
  ∀ n, P3116766066642891341.a n = A060416 n

end A060416

/-! ## A060416.P11723009729985349569

`(1-A018215(n))*A153881(n+1)`
-/

namespace A060416.P11723009729985349569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A018215 n) * A153881 (n + 1)

end

end A060416.P11723009729985349569

namespace A060416

/-- `(1-A018215(n))*A153881(n+1)` -/
def P11723009729985349569.Spec : Prop :=
  ∀ n, P11723009729985349569.a n = A060416 n

end A060416

/-! ## A060416.P5991803668083774468

`A260196(2*n)+A001787(2*n)`
-/

namespace A060416.P5991803668083774468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260196 (2 * n) + A001787 (2 * n)

end

end A060416.P5991803668083774468

namespace A060416

/-- `A260196(2*n)+A001787(2*n)` -/
def P5991803668083774468.Spec : Prop :=
  ∀ n, P5991803668083774468.a n = A060416 n

end A060416

/-! ## A060416.P2829046512115302235

`A005183(2*n)-A249441(4*n)`
-/

namespace A060416.P2829046512115302235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005183 (2 * n) - A249441 (4 * n)

end

end A060416.P2829046512115302235

namespace A060416

/-- `A005183(2*n)-A249441(4*n)` -/
def P2829046512115302235.Spec : Prop :=
  ∀ n, P2829046512115302235.a n = A060416 n

end A060416

/-! ## A060416.P6088576408025844998

`n*A099430(2*n)-A158388(n)`
-/

namespace A060416.P6088576408025844998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A099430 (2 * n) - A158388 n

end

end A060416.P6088576408025844998

namespace A060416

/-- `n*A099430(2*n)-A158388(n)` -/
def P6088576408025844998.Spec : Prop :=
  ∀ n, P6088576408025844998.a n = A060416 n

end A060416

/-! ## A060416.P231064467317781164

`A165326(2*n)+n*A000079(n)²`
-/

namespace A060416.P231064467317781164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165326 (2 * n) + (n : ℤ) * A000079 n ^ 2

end

end A060416.P231064467317781164

namespace A060416

/-- `A165326(2*n)+n*A000079(n)²` -/
def P231064467317781164.Spec : Prop :=
  ∀ n, P231064467317781164.a n = A060416 n

end A060416

/-!
# A060417: Number of different decimal digits in n-th prime.

The programs for A060417, the canonical program `A060417.P7466247361308045604` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A060417 has offset 1).

The definition of A060417 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1229 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A060417.P7466247361308045604

`A043537(Δ[A007504(n)])`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A060417

/-- `A043537(Δ[A007504(n)])` -/
def P7466247361308045604.Spec : Prop :=
  ∀ n, P7466247361308045604.a n = A060417 (n + 1)

theorem P7466247361308045604.correct : P7466247361308045604.Spec := by
  intro n
  simp only [A060417, Nat.add_sub_cancel]

end A060417

/-! ## A060417.P9615707645873309753

`A043537(record[A051698(n)])`
-/

namespace A060417.P9615707645873309753
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051698 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043537 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A060417.P9615707645873309753

namespace A060417

/-- `A043537(record[A051698(n)])` -/
def P9615707645873309753.Spec : Prop :=
  ∀ n, P9615707645873309753.a n = A060417 (n + 1)

end A060417

/-! ## A060417.P12872876086207797062

`A043537(A000040(n+1))`
-/

namespace A060417.P12872876086207797062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043537 (A000040 (n + 1)).toNat

end

end A060417.P12872876086207797062

namespace A060417

/-- `A043537(A000040(n+1))` -/
def P12872876086207797062.Spec : Prop :=
  ∀ n, P12872876086207797062.a n = A060417 (n + 1)

end A060417

/-! ## A060417.P15300406836050722748

`A043537(A004087(n+1))`
-/

namespace A060417.P15300406836050722748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043537 (A004087 (n + 1)).toNat

end

end A060417.P15300406836050722748

namespace A060417

/-- `A043537(A004087(n+1))` -/
def P15300406836050722748.Spec : Prop :=
  ∀ n, P15300406836050722748.a n = A060417 (n + 1)

end A060417

/-! ## A060417.P2837394933436996060

`A043537(A006005(n+1))`
-/

namespace A060417.P2837394933436996060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043537 (A006005 (n + 1)).toNat

end

end A060417.P2837394933436996060

namespace A060417

/-- `A043537(A006005(n+1))` -/
def P2837394933436996060.Spec : Prop :=
  ∀ n, P2837394933436996060.a n = A060417 (n + 1)

end A060417

/-! ## A060417.P1935426405125786504

`A043537(A028906(n+1))`
-/

namespace A060417.P1935426405125786504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043537 (A028906 (n + 1)).toNat

end

end A060417.P1935426405125786504

namespace A060417

/-- `A043537(A028906(n+1))` -/
def P1935426405125786504.Spec : Prop :=
  ∀ n, P1935426405125786504.a n = A060417 (n + 1)

end A060417

/-! ## A060417.P18371572734084056668

`A043537(A063884(n+1))`
-/

namespace A060417.P18371572734084056668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043537 (A063884 (n + 1)).toNat

end

end A060417.P18371572734084056668

namespace A060417

/-- `A043537(A063884(n+1))` -/
def P18371572734084056668.Spec : Prop :=
  ∀ n, P18371572734084056668.a n = A060417 (n + 1)

end A060417

/-! ## A060417.P7169712708267104055

`A043537(A063904(n+1))`
-/

namespace A060417.P7169712708267104055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043537 (A063904 (n + 1)).toNat

end

end A060417.P7169712708267104055

namespace A060417

/-- `A043537(A063904(n+1))` -/
def P7169712708267104055.Spec : Prop :=
  ∀ n, P7169712708267104055.a n = A060417 (n + 1)

end A060417

/-! ## A060417.P6112353162529345639

`A043537(A161847(n+1))`
-/

namespace A060417.P6112353162529345639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043537 (A161847 (n + 1)).toNat

end

end A060417.P6112353162529345639

namespace A060417

/-- `A043537(A161847(n+1))` -/
def P6112353162529345639.Spec : Prop :=
  ∀ n, P6112353162529345639.a n = A060417 (n + 1)

end A060417

/-! ## A060417.P18321491138279985626

`A043537(A171015(n+1))`
-/

namespace A060417.P18321491138279985626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043537 (A171015 (n + 1)).toNat

end

end A060417.P18321491138279985626

namespace A060417

/-- `A043537(A171015(n+1))` -/
def P18321491138279985626.Spec : Prop :=
  ∀ n, P18321491138279985626.a n = A060417 (n + 1)

end A060417

/-! ## A060417.P17904529991411658413

`A043537(A171018(n+1))`
-/

namespace A060417.P17904529991411658413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043537 (A171018 (n + 1)).toNat

end

end A060417.P17904529991411658413

namespace A060417

/-- `A043537(A171018(n+1))` -/
def P17904529991411658413.Spec : Prop :=
  ∀ n, P17904529991411658413.a n = A060417 (n + 1)

end A060417

/-! ## A060417.P2084830989128776230

`A043537(A171020(n+1))`
-/

namespace A060417.P2084830989128776230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043537 (A171020 (n + 1)).toNat

end

end A060417.P2084830989128776230

namespace A060417

/-- `A043537(A171020(n+1))` -/
def P2084830989128776230.Spec : Prop :=
  ∀ n, P2084830989128776230.a n = A060417 (n + 1)

end A060417

/-! ## A060417.P16192185187333686188

`A043537(A171021(n+1))`
-/

namespace A060417.P16192185187333686188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043537 (A171021 (n + 1)).toNat

end

end A060417.P16192185187333686188

namespace A060417

/-- `A043537(A171021(n+1))` -/
def P16192185187333686188.Spec : Prop :=
  ∀ n, P16192185187333686188.a n = A060417 (n + 1)

end A060417

/-! ## A060417.P8064389474692074183

`A043537(A171022(n+1))`
-/

namespace A060417.P8064389474692074183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043537 (A171022 (n + 1)).toNat

end

end A060417.P8064389474692074183

namespace A060417

/-- `A043537(A171022(n+1))` -/
def P8064389474692074183.Spec : Prop :=
  ∀ n, P8064389474692074183.a n = A060417 (n + 1)

end A060417

/-! ## A060417.P6408782727226460081

`A043537(A171024(n+1))`
-/

namespace A060417.P6408782727226460081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043537 (A171024 (n + 1)).toNat

end

end A060417.P6408782727226460081

namespace A060417

/-- `A043537(A171024(n+1))` -/
def P6408782727226460081.Spec : Prop :=
  ∀ n, P6408782727226460081.a n = A060417 (n + 1)

end A060417

/-! ## A060417.P4470576268685178718

`A043537(A171025(n+1))`
-/

namespace A060417.P4470576268685178718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043537 (A171025 (n + 1)).toNat

end

end A060417.P4470576268685178718

namespace A060417

/-- `A043537(A171025(n+1))` -/
def P4470576268685178718.Spec : Prop :=
  ∀ n, P4470576268685178718.a n = A060417 (n + 1)

end A060417

/-! ## A060417.P126972441033438013

`A043537(A171026(n+1))`
-/

namespace A060417.P126972441033438013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043537 (A171026 (n + 1)).toNat

end

end A060417.P126972441033438013

namespace A060417

/-- `A043537(A171026(n+1))` -/
def P126972441033438013.Spec : Prop :=
  ∀ n, P126972441033438013.a n = A060417 (n + 1)

end A060417

/-! ## A060417.P5209935579522077846

`A043537(A171053(n+1))`
-/

namespace A060417.P5209935579522077846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043537 (A171053 (n + 1)).toNat

end

end A060417.P5209935579522077846

namespace A060417

/-- `A043537(A171053(n+1))` -/
def P5209935579522077846.Spec : Prop :=
  ∀ n, P5209935579522077846.a n = A060417 (n + 1)

end A060417

/-! ## A060417.P9456891967463532154

`A043537(A175787(n+2))`
-/

namespace A060417.P9456891967463532154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043537 (A175787 (n + 2)).toNat

end

end A060417.P9456891967463532154

namespace A060417

/-- `A043537(A175787(n+2))` -/
def P9456891967463532154.Spec : Prop :=
  ∀ n, P9456891967463532154.a n = A060417 (n + 1)

end A060417

/-! ## A060417.P15628665556102731991

`A043537(eq[2, A077462(n)])`
-/

namespace A060417.P15628665556102731991
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077462 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043537 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A060417.P15628665556102731991

namespace A060417

/-- `A043537(eq[2, A077462(n)])` -/
def P15628665556102731991.Spec : Prop :=
  ∀ n, P15628665556102731991.a n = A060417 (n + 1)

end A060417

/-!
# A060418: Largest decimal digit in n-th prime.

The programs for A060418, there is no canonical definition to state claims against.
-/

/-! ## A060418.P3735996898978046801

`A127354(n+1)%10`
-/

namespace A060418.P3735996898978046801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A127354 (n + 1)) 10

end

end A060418.P3735996898978046801

/-! ## A060418.P17854826359577088830

`A028905(n+1)%A040020(n)`
-/

namespace A060418.P17854826359577088830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A028905 (n + 1)) (A040020 n)

end

end A060418.P17854826359577088830

/-! ## A060418.P12318462939316492787

`A010879(A028905(n+1))`
-/

namespace A060418.P12318462939316492787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010879 (A028905 (n + 1)).toNat

end

end A060418.P12318462939316492787

/-! ## A060418.P5605736788187865180

`A209928(p?[comp[n²]])`
-/

namespace A060418.P5605736788187865180
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209928 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A060418.P5605736788187865180

/-! ## A060418.P15455116201546997838

`A054055(Δ[A007504(n)])`
-/

namespace A060418.P15455116201546997838
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054055 (f1 (n + 1) - f1 n).toNat

end

end A060418.P15455116201546997838

/-! ## A060418.P9632828128622338981

`A000030(A028906(n+1))`
-/

namespace A060418.P9632828128622338981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000030 (A028906 (n + 1)).toNat

end

end A060418.P9632828128622338981

/-! ## A060418.P4614571892190288934

`A054055(A000040(n+1))`
-/

namespace A060418.P4614571892190288934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054055 (A000040 (n + 1)).toNat

end

end A060418.P4614571892190288934

/-! ## A060418.P17122302161300270926

`A054055(A004087(n+1))`
-/

namespace A060418.P17122302161300270926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054055 (A004087 (n + 1)).toNat

end

end A060418.P17122302161300270926

/-! ## A060418.P6874772829274166742

`A054055(A008578(n+2))`
-/

namespace A060418.P6874772829274166742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054055 (A008578 (n + 2)).toNat

end

end A060418.P6874772829274166742

/-! ## A060418.P3920028704883432783

`A054055(eq[1, A003415(n)])`
-/

namespace A060418.P3920028704883432783
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054055 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A060418.P3920028704883432783

/-! ## A060418.P13170341843159566975

`A054055(eq[1, A018783(n)])`
-/

namespace A060418.P13170341843159566975
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018783 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054055 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A060418.P13170341843159566975

/-! ## A060418.P1923071176122208503

`A054055(eq[1, A032741(n)])`
-/

namespace A060418.P1923071176122208503
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054055 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A060418.P1923071176122208503

/-! ## A060418.P8943021644529828985

`A054055(record[A006530(n+2)])`
-/

namespace A060418.P8943021644529828985
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054055 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A060418.P8943021644529828985

/-! ## A060418.P2157431769542245191

`A054055(record[A014963(n+2)])`
-/

namespace A060418.P2157431769542245191
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054055 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A060418.P2157431769542245191

/-! ## A060418.P199445702243503316

`A054055(record[A020639(n+2)])`
-/

namespace A060418.P199445702243503316
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054055 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A060418.P199445702243503316

/-! ## A060418.P1095630675568674286

`A209928(record[A006530(n+2)])`
-/

namespace A060418.P1095630675568674286
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209928 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A060418.P1095630675568674286

/-! ## A060418.P16683799452871254697

`A209928(record[A020639(n+2)])`
-/

namespace A060418.P16683799452871254697
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209928 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A060418.P16683799452871254697

/-! ## A060418.P4975758930595740162

`A262401(record[A006530(n+2)])`
-/

namespace A060418.P4975758930595740162
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262401 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A060418.P4975758930595740162

/-! ## A060418.P8582977744056910298

`A262401(record[A014963(n+2)])`
-/

namespace A060418.P8582977744056910298
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262401 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A060418.P8582977744056910298

/-! ## A060418.P18014794712663835707

`A262401(record[A020639(n+2)])`
-/

namespace A060418.P18014794712663835707
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262401 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A060418.P18014794712663835707

/-!
# A060419: a(n) = floor(3^log_2(n)).

The programs for A060419, the canonical program `A060419.P5533478609838020894` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A060419 has offset 0).

The definition of A060419 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A060419.P5533478609838020894

`floor(n^log2(3))`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A060419

/-- `floor(n^log2(3))` -/
def P5533478609838020894.Spec : Prop :=
  ∀ n, P5533478609838020894.a n = A060419 n

theorem P5533478609838020894.correct : P5533478609838020894.Spec := by
  intro n
  simp only [A060419]

end A060419

/-! ## A060419.P8420174180588360084

`A000196(ceil(n^log2(9)))`
-/

namespace A060419.P8420174180588360084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 ⌈(n : ℝ) ^ (Real.logb 2 (9 : ℝ))⌉.toNat

end

end A060419.P8420174180588360084

namespace A060419

/-- `A000196(ceil(n^log2(9)))` -/
def P8420174180588360084.Spec : Prop :=
  ∀ n, P8420174180588360084.a n = A060419 n

end A060419

/-! ## A060419.P16554601472747491202

`A232424(n)-A001222(ceil(2^(n-1)))`
-/

namespace A060419.P16554601472747491202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232424 n - A001222 ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉.toNat

end

end A060419.P16554601472747491202

namespace A060419

/-- `A232424(n)-A001222(ceil(2^(n-1)))` -/
def P16554601472747491202.Spec : Prop :=
  ∀ n, P16554601472747491202.a n = A060419 n

end A060419

/-! ## A060419.P9245391117752886972

`A232424(n)-A003313(A011782(n))`
-/

namespace A060419.P9245391117752886972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232424 n - A003313 (A011782 n).toNat

end

end A060419.P9245391117752886972

namespace A060419

/-- `A232424(n)-A003313(A011782(n))` -/
def P9245391117752886972.Spec : Prop :=
  ∀ n, P9245391117752886972.a n = A060419 n

end A060419

/-! ## A060419.P5547752200942811073

`A135660(A250120(n*∑[n]))`
-/

namespace A060419.P5547752200942811073
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135660 (A250120 (n * (∑ j ∈ Finset.range (n + 1), f1 j))).toNat

end

end A060419.P5547752200942811073

namespace A060419

/-- `A135660(A250120(n*∑[n]))` -/
def P5547752200942811073.Spec : Prop :=
  ∀ n, P5547752200942811073.a n = A060419 n

end A060419

/-!
# A060420: Least decimal digit in n-th prime.

The programs for A060420, there is no canonical definition to state claims against.
-/

/-! ## A060420.P12918037734414964198

`A028906(n+1)%10`
-/

namespace A060420.P12918037734414964198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A028906 (n + 1)) 10

end

end A060420.P12918037734414964198

/-! ## A060420.P3034893753057069053

`A054054(p?[comp[n²]])`
-/

namespace A060420.P3034893753057069053
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054054 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A060420.P3034893753057069053

/-! ## A060420.P10574582976262084578

`A054054(record[p?[∏{p}[n+1, #]]])`
-/

namespace A060420.P10574582976262084578
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f3 n), p

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054054 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A060420.P10574582976262084578

/-! ## A060420.P2140243842720516950

`A054054(Δ[A007504(n)])`
-/

namespace A060420.P2140243842720516950
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054054 (f1 (n + 1) - f1 n).toNat

end

end A060420.P2140243842720516950

/-! ## A060420.P18025607886166758426

`A010879(A028906(n+1))`
-/

namespace A060420.P18025607886166758426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010879 (A028906 (n + 1)).toNat

end

end A060420.P18025607886166758426

/-! ## A060420.P2631279569950959471

`A054054(A000040(n+1))`
-/

namespace A060420.P2631279569950959471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054054 (A000040 (n + 1)).toNat

end

end A060420.P2631279569950959471

/-! ## A060420.P15517024146740851524

`A054054(A004087(n+1))`
-/

namespace A060420.P15517024146740851524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054054 (A004087 (n + 1)).toNat

end

end A060420.P15517024146740851524

/-! ## A060420.P8435452311717564930

`A054054(A171057(n+1))`
-/

namespace A060420.P8435452311717564930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054054 (A171057 (n + 1)).toNat

end

end A060420.P8435452311717564930

/-! ## A060420.P10685188509020663591

`A054054(A008578(n+2))`
-/

namespace A060420.P10685188509020663591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054054 (A008578 (n + 2)).toNat

end

end A060420.P10685188509020663591

/-! ## A060420.P10986022722488451607

`A054054(A182986(n+2))`
-/

namespace A060420.P10986022722488451607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054054 (A182986 (n + 2)).toNat

end

end A060420.P10986022722488451607

/-! ## A060420.P6933031050709265188

`A054054(eq[1, A032741(n)])`
-/

namespace A060420.P6933031050709265188
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054054 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A060420.P6933031050709265188

/-! ## A060420.P15883178190700963768

`A054054(eq[2, A062830(n)])`
-/

namespace A060420.P15883178190700963768
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062830 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054054 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A060420.P15883178190700963768

/-! ## A060420.P9933284084497197314

`A054054(eq[2, A322366(n)])`
-/

namespace A060420.P9933284084497197314
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322366 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054054 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A060420.P9933284084497197314

/-! ## A060420.P11180120606069582653

`A054054(record[A006530(n+2)])`
-/

namespace A060420.P11180120606069582653
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054054 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A060420.P11180120606069582653

/-! ## A060420.P7059965123159347695

`A054054(record[A014963(n+2)])`
-/

namespace A060420.P7059965123159347695
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054054 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A060420.P7059965123159347695

/-! ## A060420.P15288029091134293449

`A054054(record[A020639(n+2)])`
-/

namespace A060420.P15288029091134293449
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054054 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A060420.P15288029091134293449

/-! ## A060420.P7379122189007702842

`A054054(A006093(n+1)+1)`
-/

namespace A060420.P7379122189007702842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054054 (A006093 (n + 1) + 1).toNat

end

end A060420.P7379122189007702842

/-! ## A060420.P15834414703623437783

`A054054(A067747(2*n+1))`
-/

namespace A060420.P15834414703623437783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054054 (A067747 (2 * n + 1)).toNat

end

end A060420.P15834414703623437783

/-! ## A060420.P10647593423723662086

`A054054(eq[1, A001222(n+1)]+1)`
-/

namespace A060420.P10647593423723662086
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054054 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A060420.P10647593423723662086

/-! ## A060420.P13471308044311474015

`A054054(eq[2, A000005(n+1)]+1)`
-/

namespace A060420.P13471308044311474015
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054054 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A060420.P13471308044311474015

/-!
# A060421: Numbers k such that the first k digits of the decimal expansion of Pi form a prime.

The programs for A060421, there is no canonical definition to state claims against.
-/

/-! ## A060421.P7194649165555944667

`A094875(n+1)+1`
-/

namespace A060421.P7194649165555944667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094875 (n + 1) + 1

end

end A060421.P7194649165555944667

/-!
# A060422: Number of acute triangles made from vertices of a regular n-gon.

The programs for A060422, the canonical program `A060422.P9566130866723270710` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A060422 has offset 0).

The definition of A060422 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A060422.P9566130866723270710

`n*(2*n²-6*n+7-3*(2*n-3)*(-1)^n)/48`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A060422

/-- `n*(2*n²-6*n+7-3*(2*n-3)*(-1)^n)/48` -/
def P9566130866723270710.Spec : Prop :=
  ∀ n, P9566130866723270710.a n = (A060422 n : ℚ)

end A060422

/-! ## A060422.P9160012023522996021

`∑[A245288(or(1, n))]-A245288(n)`
-/

namespace A060422.P9160012023522996021
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245288 (Nat.lor 1 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A245288 n

end

end A060422.P9160012023522996021

namespace A060422

/-- `∑[A245288(or(1, n))]-A245288(n)` -/
def P9160012023522996021.Spec : Prop :=
  ∀ n, P9160012023522996021.a n = A060422 n

end A060422

/-! ## A060422.P9902090706688718770

`∑[A142150(n)²]-A000326(A142150(n))`
-/

namespace A060422.P9902090706688718770
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142150 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A000326 (A142150 n).toNat

end

end A060422.P9902090706688718770

namespace A060422

/-- `∑[A142150(n)²]-A000326(A142150(n))` -/
def P9902090706688718770.Spec : Prop :=
  ∀ n, P9902090706688718770.a n = A060422 n

end A060422

/-! ## A060422.P17779129631898584412

`∑[∑[n]]-n*∑[A057979(n+1)]`
-/

namespace A060422.P17779129631898584412
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057979 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (n : ℤ) * (∑ j ∈ Finset.range (n + 1), f3 j)

end

end A060422.P17779129631898584412

namespace A060422

/-- `∑[∑[n]]-n*∑[A057979(n+1)]` -/
def P17779129631898584412.Spec : Prop :=
  ∀ n, P17779129631898584412.a n = A060422 n

end A060422

/-! ## A060422.P1273677489765782077

`∑[∑[n]]-n*eq[1, A007318(n)]`
-/

namespace A060422.P1273677489765782077
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (n * SequenceMachineLib.nth (fun j => (f3 j : ℤ) = f4 j) n : ℤ)

end

end A060422.P1273677489765782077

namespace A060422

/-- `∑[∑[n]]-n*eq[1, A007318(n)]` -/
def P1273677489765782077.Spec : Prop :=
  ∀ n, P1273677489765782077.a n = A060422 n

end A060422

/-! ## A060422.P7880167116501444412

`∑[∑[n]]-n*eq[1, A131063(n)]`
-/

namespace A060422.P7880167116501444412
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131063 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (n * SequenceMachineLib.nth (fun j => (f3 j : ℤ) = f4 j) n : ℤ)

end

end A060422.P7880167116501444412

namespace A060422

/-- `∑[∑[n]]-n*eq[1, A131063(n)]` -/
def P7880167116501444412.Spec : Prop :=
  ∀ n, P7880167116501444412.a n = A060422 n

end A060422

/-! ## A060422.P2255992381002941622

`∑[∑[n]]-n*eq[1, A008292(n+1)]`
-/

namespace A060422.P2255992381002941622
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008292 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (n * SequenceMachineLib.nth (fun j => (f3 j : ℤ) = f4 j) n : ℤ)

end

end A060422.P2255992381002941622

namespace A060422

/-- `∑[∑[n]]-n*eq[1, A008292(n+1)]` -/
def P2255992381002941622.Spec : Prop :=
  ∀ n, P2255992381002941622.a n = A060422 n

end A060422

/-!
# A060423: Number of obtuse triangles made from vertices of a regular n-gon.

The programs for A060423, the canonical program `A060423.P10093604673777187994` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A060423 has offset 0).

The definition of A060423 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A060423.P10093604673777187994

`n*(2*n-3-(-1)^n)*(2*n-7-(-1)^n)/32`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A060423

/-- `n*(2*n-3-(-1)^n)*(2*n-7-(-1)^n)/32` -/
def P10093604673777187994.Spec : Prop :=
  ∀ n, P10093604673777187994.a n = (A060423 n : ℚ)

end A060423

/-! ## A060423.P12083590810263004278

`n*C(floor(∑[n]/(n+2)), 2)`
-/

namespace A060423.P12083590810263004278
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * Nat.choose ⌊((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / (n + 2 : ℚ)⌋.toNat 2

end

end A060423.P12083590810263004278

namespace A060423

/-- `n*C(floor(∑[n]/(n+2)), 2)` -/
def P12083590810263004278.Spec : Prop :=
  ∀ n, (P12083590810263004278.a n : ℤ) = A060423 n

end A060423

/-! ## A060423.P14517648134831963880

`n*(∑[A057979(n)]-n)`
-/

namespace A060423.P14517648134831963880
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057979 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ))

end

end A060423.P14517648134831963880

namespace A060423

/-- `n*(∑[A057979(n)]-n)` -/
def P14517648134831963880.Spec : Prop :=
  ∀ n, P14517648134831963880.a n = A060423 n

end A060423

/-! ## A060423.P3825866879572989702

`n*A161680(A140106(n+1))`
-/

namespace A060423.P3825866879572989702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A161680 (A140106 (n + 1)).toNat

end

end A060423.P3825866879572989702

namespace A060423

/-- `n*A161680(A140106(n+1))` -/
def P3825866879572989702.Spec : Prop :=
  ∀ n, P3825866879572989702.a n = A060423 n

end A060423

/-! ## A060423.P11080287893398236066

`n*(A152947(A065033(n))-1)`
-/

namespace A060423.P11080287893398236066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A152947 (A065033 n).toNat - 1)

end

end A060423.P11080287893398236066

namespace A060423

/-- `n*(A152947(A065033(n))-1)` -/
def P11080287893398236066.Spec : Prop :=
  ∀ n, P11080287893398236066.a n = A060423 n

end A060423

/-! ## A060423.P7762222977299188096

`n*A161680(A065033(n)-1)`
-/

namespace A060423.P7762222977299188096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A161680 (A065033 n - 1).toNat

end

end A060423.P7762222977299188096

namespace A060423

/-- `n*A161680(A065033(n)-1)` -/
def P7762222977299188096.Spec : Prop :=
  ∀ n, P7762222977299188096.a n = A060423 n

end A060423

/-! ## A060423.P5786906324251616388

`n*(A055802(n+3)-n)`
-/

namespace A060423.P5786906324251616388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A055802 (n + 3) - (n : ℤ))

end

end A060423.P5786906324251616388

namespace A060423

/-- `n*(A055802(n+3)-n)` -/
def P5786906324251616388.Spec : Prop :=
  ∀ n, P5786906324251616388.a n = A060423 n

end A060423

/-! ## A060423.P11799518975065531951

`n*(A114220(n+2)-n)`
-/

namespace A060423.P11799518975065531951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A114220 (n + 2) - (n : ℤ))

end

end A060423.P11799518975065531951

namespace A060423

/-- `n*(A114220(n+2)-n)` -/
def P11799518975065531951.Spec : Prop :=
  ∀ n, P11799518975065531951.a n = A060423 n

end A060423

/-! ## A060423.P9639844695002989880

`n*(record[A285732(n+1)]-n)`
-/

namespace A060423.P9639844695002989880
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285732 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - (n : ℤ))

end

end A060423.P9639844695002989880

namespace A060423

/-- `n*(record[A285732(n+1)]-n)` -/
def P9639844695002989880.Spec : Prop :=
  ∀ n, P9639844695002989880.a n = A060423 n

end A060423

/-! ## A060423.P1524255650273709106

`n*A083920(C(ceil(n/2), 2))`
-/

namespace A060423.P1524255650273709106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A083920 (Nat.choose ⌈(n : ℚ) / 2⌉.toNat 2)

end

end A060423.P1524255650273709106

namespace A060423

/-- `n*A083920(C(ceil(n/2), 2))` -/
def P1524255650273709106.Spec : Prop :=
  ∀ n, P1524255650273709106.a n = A060423 n

end A060423

/-! ## A060423.P2739079491899065877

`n*A002265(A325688(n))`
-/

namespace A060423.P2739079491899065877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A002265 (A325688 n).toNat

end

end A060423.P2739079491899065877

namespace A060423

/-- `n*A002265(A325688(n))` -/
def P2739079491899065877.Spec : Prop :=
  ∀ n, P2739079491899065877.a n = A060423 n

end A060423

/-!
# A060424: Record-setting n's for the function q(n), the minimum prime q such that n(q+1)-1 is prime p (i.e., q(n) > q(j) for all 0 < j < n).

The programs for A060424, there is no canonical definition to state claims against.
-/

/-! ## A060424.P1052464760065566364

`round(A062256(n+1)/A000203(A062252(n+1)))`
-/

namespace A060424.P1052464760065566364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A062256 (n + 1) : ℚ) / (A000203 (A062252 (n + 1)).toNat : ℚ))

end

end A060424.P1052464760065566364

/-! ## A060424.P4741476615407939638

`A368100(A047141(n))`
-/

namespace A060424.P4741476615407939638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368100 (A047141 n).toNat

end

end A060424.P4741476615407939638

/-! ## A060424.P4381815063117498602

`A368100(A279245(n))`
-/

namespace A060424.P4381815063117498602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368100 (A279245 n).toNat

end

end A060424.P4381815063117498602

/-!
# A060425: Primes of form n*4^n - 1.

The programs for A060425, there is no canonical definition to state claims against.
-/

/-! ## A060425.P2618572345002496501

`A060416(A086661(n+1))`
-/

namespace A060425.P2618572345002496501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060416 (A086661 (n + 1)).toNat

end

end A060425.P2618572345002496501

/-! ## A060425.P421363678510411751

`A018215(A086661(n+1))-abs(A158388(n))`
-/

namespace A060425.P421363678510411751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018215 (A086661 (n + 1)).toNat - |A158388 n|

end

end A060425.P421363678510411751

/-! ## A060425.P13728686522275475447

`A018215(A086661(n+1))-abs(A165326(n))`
-/

namespace A060425.P13728686522275475447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018215 (A086661 (n + 1)).toNat - |A165326 n|

end

end A060425.P13728686522275475447

/-! ## A060425.P10179200472925256618

`A018215(A086661(n+1))-A225800(n+1)`
-/

namespace A060425.P10179200472925256618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018215 (A086661 (n + 1)).toNat - A225800 (n + 1)

end

end A060425.P10179200472925256618

/-! ## A060425.P8279487296818423460

`A018215(A086661(n+1))-abs(A153881(n+1))`
-/

namespace A060425.P8279487296818423460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018215 (A086661 (n + 1)).toNat - |A153881 (n + 1)|

end

end A060425.P8279487296818423460

/-!
# A060426: a(n) is the number of degrees in the sequence of the degrees of the irreducible representations of the symmetric group S_n that appear only once.

The programs for A060426, there is no canonical definition to state claims against.
-/

/-! ## A060426.P12971712306391284068

`A060437(n+1)-A318558(n+1)`
-/

namespace A060426.P12971712306391284068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060437 (n + 1) - A318558 (n + 1)

end

end A060426.P12971712306391284068

/-! ## A060426.P5052496254534877126

`A069010(xor(∑[n], A036378(n)))`
-/

namespace A060426.P5052496254534877126
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069010 (Int.xor ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) (A036378 n)).toNat

end

end A060426.P5052496254534877126

/-! ## A060426.P5565382036918487005

`A087116(lcm(A034839(n), A181716(n)))`
-/

namespace A060426.P5565382036918487005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087116 (Int.lcm (A034839 n) (A181716 n))

end

end A060426.P5565382036918487005

/-! ## A060426.P135758234071585341

`A000700(A194276(n)+A123508(n+3))`
-/

namespace A060426.P135758234071585341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000700 (A194276 n + A123508 (n + 3)).toNat

end

end A060426.P135758234071585341

/-! ## A060426.P2583283507952371194

`A095139(A030108(n+1))`
-/

namespace A060426.P2583283507952371194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095139 (A030108 (n + 1)).toNat

end

end A060426.P2583283507952371194

/-!
# A060429: a(n) = 4*prime(n)^2+1.

The programs for A060429, the canonical program `A060429.P17554722288178337545` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A060429 has offset 1).

The definition of A060429 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `4*A000040(n+1)²+1` (program `A060429.P17554722288178337545`, by `A060429.P17554722288178337545.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A060429.P17531702855464444184

`4*A001248(n+1)+1`
-/

namespace A060429.P17531702855464444184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A001248 (n + 1) + 1

end

end A060429.P17531702855464444184

namespace A060429

/-- `4*A001248(n+1)+1` -/
def P17531702855464444184.Spec : Prop :=
  ∀ n, P17531702855464444184.a n = A060429 (n + 1)

end A060429

/-! ## A060429.P17554722288178337545

`4*A000040(n+1)²+1`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A060429

/-- `4*A000040(n+1)²+1` -/
def P17554722288178337545.Spec : Prop :=
  ∀ n, P17554722288178337545.a n = A060429 (n + 1)

theorem P17554722288178337545.correct : P17554722288178337545.Spec := by
  intro n
  simp only [A060429, Nat.add_sub_cancel]

end A060429

/-! ## A060429.P2493659677151159908

`A069262(n+1)+1`
-/

namespace A060429.P2493659677151159908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069262 (n + 1) + 1

end

end A060429.P2493659677151159908

namespace A060429

/-- `A069262(n+1)+1` -/
def P2493659677151159908.Spec : Prop :=
  ∀ n, P2493659677151159908.a n = A060429 (n + 1)

end A060429

/-! ## A060429.P7726117152109463754

`A100484(n+1)²+1`
-/

namespace A060429.P7726117152109463754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100484 (n + 1) ^ 2 + 1

end

end A060429.P7726117152109463754

namespace A060429

/-- `A100484(n+1)²+1` -/
def P7726117152109463754.Spec : Prop :=
  ∀ n, P7726117152109463754.a n = A060429 (n + 1)

theorem P7726117152109463754.correct : P7726117152109463754.Spec := by
  intro n
  simp only [A060429, Nat.add_sub_cancel, A060429.P7726117152109463754.a, A060429.P17554722288178337545.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A100484, A100484.P9678625670825099636.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A060429

/-! ## A060429.P7808546899549498255

`2*A079704(n+1)+1`
-/

namespace A060429.P7808546899549498255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A079704 (n + 1) + 1

end

end A060429.P7808546899549498255

namespace A060429

/-- `2*A079704(n+1)+1` -/
def P7808546899549498255.Spec : Prop :=
  ∀ n, P7808546899549498255.a n = A060429 (n + 1)

theorem P7808546899549498255.correct : P7808546899549498255.Spec := by
  intro n
  simp only [A060429, Nat.add_sub_cancel, A060429.P7808546899549498255.a, A060429.P17554722288178337545.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A079704, A079704.P2518524558801344655.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A060429

/-! ## A060429.P2852970391413514737

`2*A179262(n+1)+3`
-/

namespace A060429.P2852970391413514737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A179262 (n + 1) + 3

end

end A060429.P2852970391413514737

namespace A060429

/-- `2*A179262(n+1)+3` -/
def P2852970391413514737.Spec : Prop :=
  ∀ n, P2852970391413514737.a n = A060429 (n + 1)

theorem P2852970391413514737.correct : P2852970391413514737.Spec := by
  intro n
  simp only [A060429, Nat.add_sub_cancel, A060429.P2852970391413514737.a, A060429.P17554722288178337545.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A179262, A179262.P11823652442846910111.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A060429

/-! ## A060429.P5121502288805594742

`4*A066872(n+1)-3`
-/

namespace A060429.P5121502288805594742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A066872 (n + 1) - 3

end

end A060429.P5121502288805594742

namespace A060429

/-- `4*A066872(n+1)-3` -/
def P5121502288805594742.Spec : Prop :=
  ∀ n, P5121502288805594742.a n = A060429 (n + 1)

theorem P5121502288805594742.correct : P5121502288805594742.Spec := by
  intro n
  simp only [A060429, Nat.add_sub_cancel, A060429.P5121502288805594742.a, A060429.P17554722288178337545.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A066872, A066872.P16166098773502812344.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A060429

/-! ## A060429.P7156930590917111005

`4*A084920(n+1)+5`
-/

namespace A060429.P7156930590917111005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A084920 (n + 1) + 5

end

end A060429.P7156930590917111005

namespace A060429

/-- `4*A084920(n+1)+5` -/
def P7156930590917111005.Spec : Prop :=
  ∀ n, P7156930590917111005.a n = A060429 (n + 1)

theorem P7156930590917111005.correct : P7156930590917111005.Spec := by
  intro n
  simp only [A060429, Nat.add_sub_cancel, A060429.P7156930590917111005.a, A060429.P17554722288178337545.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A084920, A084920.P13392903182497119137.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A060429

/-! ## A060429.P2764794932180841287

`(A037168(n+1)+2)²+1`
-/

namespace A060429.P2764794932180841287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A037168 (n + 1) + 2) ^ 2 + 1

end

end A060429.P2764794932180841287

namespace A060429

/-- `(A037168(n+1)+2)²+1` -/
def P2764794932180841287.Spec : Prop :=
  ∀ n, P2764794932180841287.a n = A060429 (n + 1)

theorem P2764794932180841287.correct : P2764794932180841287.Spec := by
  intro n
  simp only [A060429, Nat.add_sub_cancel, A060429.P2764794932180841287.a, A060429.P17554722288178337545.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A037168, A037168.P225285487484933431.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A060429

/-! ## A060429.P17909984377741967270

`(1-A072055(n+1))²+1`
-/

namespace A060429.P17909984377741967270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A072055 (n + 1)) ^ 2 + 1

end

end A060429.P17909984377741967270

namespace A060429

/-- `(1-A072055(n+1))²+1` -/
def P17909984377741967270.Spec : Prop :=
  ∀ n, P17909984377741967270.a n = A060429 (n + 1)

theorem P17909984377741967270.correct : P17909984377741967270.Spec := by
  intro n
  simp only [A060429, Nat.add_sub_cancel, A060429.P17909984377741967270.a, A060429.P17554722288178337545.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A072055, A072055.P8252801676711237860.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A060429

/-! ## A060429.P6611194338928929380

`(2-A089241(n+1))²+1`
-/

namespace A060429.P6611194338928929380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A089241 (n + 1)) ^ 2 + 1

end

end A060429.P6611194338928929380

namespace A060429

/-- `(2-A089241(n+1))²+1` -/
def P6611194338928929380.Spec : Prop :=
  ∀ n, P6611194338928929380.a n = A060429 (n + 1)

theorem P6611194338928929380.correct : P6611194338928929380.Spec := by
  intro n
  simp only [A060429, Nat.add_sub_cancel, A060429.P6611194338928929380.a, A060429.P17554722288178337545.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A089241, A089241.P14705987553220613803.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A060429

/-! ## A060429.P8545730004303322522

`(A001749(n+1)/2)²+1`
-/

namespace A060429.P8545730004303322522
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A001749 (n + 1) : ℚ) / 2) ^ 2 + 1

end

end A060429.P8545730004303322522

namespace A060429

/-- `(A001749(n+1)/2)²+1` -/
def P8545730004303322522.Spec : Prop :=
  ∀ n, P8545730004303322522.a n = (A060429 (n + 1) : ℚ)

theorem P8545730004303322522.correct : P8545730004303322522.Spec := by
  intro n
  simp only [A060429, Nat.add_sub_cancel, A060429.P8545730004303322522.a, A060429.P17554722288178337545.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A001749, A001749.P16106244962881767471.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A060429

/-! ## A060429.P7199489073927606605

`A079705(n+1)+A066872(n+1)`
-/

namespace A060429.P7199489073927606605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079705 (n + 1) + A066872 (n + 1)

end

end A060429.P7199489073927606605

namespace A060429

/-- `A079705(n+1)+A066872(n+1)` -/
def P7199489073927606605.Spec : Prop :=
  ∀ n, P7199489073927606605.a n = A060429 (n + 1)

theorem P7199489073927606605.correct : P7199489073927606605.Spec := by
  intro n
  simp only [A060429, Nat.add_sub_cancel, A060429.P7199489073927606605.a, A060429.P17554722288178337545.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A066872, A066872.P16166098773502812344.a, A079705, A079705.P5346247359754052354.a, A001248, A001248.P16278241061688229202.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A060429

/-! ## A060429.P4847197876892736497

`A267144(n+1)+A110833(n+1)`
-/

namespace A060429.P4847197876892736497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267144 (n + 1) + A110833 (n + 1)

end

end A060429.P4847197876892736497

namespace A060429

/-- `A267144(n+1)+A110833(n+1)` -/
def P4847197876892736497.Spec : Prop :=
  ∀ n, P4847197876892736497.a n = A060429 (n + 1)

end A060429

/-! ## A060429.P11785512647765617334

`A000040(n+1)*A001749(n+1)+1`
-/

namespace A060429.P11785512647765617334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * A001749 (n + 1) + 1

end

end A060429.P11785512647765617334

namespace A060429

/-- `A000040(n+1)*A001749(n+1)+1` -/
def P11785512647765617334.Spec : Prop :=
  ∀ n, P11785512647765617334.a n = A060429 (n + 1)

theorem P11785512647765617334.correct : P11785512647765617334.Spec := by
  intro n
  simp only [A060429, Nat.add_sub_cancel, A060429.P11785512647765617334.a, A060429.P17554722288178337545.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A001749, A001749.P16106244962881767471.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A060429

/-! ## A060429.P3429366883889220654

`(A000040(n+1)-A001748(n+1))²+1`
-/

namespace A060429.P3429366883889220654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000040 (n + 1) - A001748 (n + 1)) ^ 2 + 1

end

end A060429.P3429366883889220654

namespace A060429

/-- `(A000040(n+1)-A001748(n+1))²+1` -/
def P3429366883889220654.Spec : Prop :=
  ∀ n, P3429366883889220654.a n = A060429 (n + 1)

theorem P3429366883889220654.correct : P3429366883889220654.Spec := by
  intro n
  simp only [A060429, Nat.add_sub_cancel, A060429.P3429366883889220654.a, A060429.P17554722288178337545.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A001748, A001748.P16019639290970068825.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A060429

/-! ## A060429.P5471826862251084062

`A066872(n+1)+A000040(n+1)*A001748(n+1)`
-/

namespace A060429.P5471826862251084062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066872 (n + 1) + A000040 (n + 1) * A001748 (n + 1)

end

end A060429.P5471826862251084062

namespace A060429

/-- `A066872(n+1)+A000040(n+1)*A001748(n+1)` -/
def P5471826862251084062.Spec : Prop :=
  ∀ n, P5471826862251084062.a n = A060429 (n + 1)

theorem P5471826862251084062.correct : P5471826862251084062.Spec := by
  intro n
  simp only [A060429, Nat.add_sub_cancel, A060429.P5471826862251084062.a, A060429.P17554722288178337545.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A001748, A001748.P16019639290970068825.a, A066872, A066872.P16166098773502812344.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A060429

/-! ## A060429.P18305071289744312003

`(A138454(n+1)+A138422(n+1))/A138422(n+1)`
-/

namespace A060429.P18305071289744312003
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138454 (n + 1) + A138422 (n + 1) : ℚ) / (A138422 (n + 1) : ℚ)

end

end A060429.P18305071289744312003

namespace A060429

/-- `(A138454(n+1)+A138422(n+1))/A138422(n+1)` -/
def P18305071289744312003.Spec : Prop :=
  ∀ n, P18305071289744312003.a n = (A060429 (n + 1) : ℚ)

end A060429

/-! ## A060429.P17532033540208782005

`A001747(n+2)²+1`
-/

namespace A060429.P17532033540208782005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001747 (n + 2) ^ 2 + 1

end

end A060429.P17532033540208782005

namespace A060429

/-- `A001747(n+2)²+1` -/
def P17532033540208782005.Spec : Prop :=
  ∀ n, P17532033540208782005.a n = A060429 (n + 1)

end A060429

/-! ## A060429.P5671389549803769980

`A057427(n+1)+A100484(n+1)*A100484(n+1)`
-/

namespace A060429.P5671389549803769980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (n + 1) + A100484 (n + 1) * A100484 (n + 1)

end

end A060429.P5671389549803769980

namespace A060429

/-- `A057427(n+1)+A100484(n+1)*A100484(n+1)` -/
def P5671389549803769980.Spec : Prop :=
  ∀ n, P5671389549803769980.a n = A060429 (n + 1)

theorem P5671389549803769980.correct : P5671389549803769980.Spec := by
  intro n
  simp only [A060429, Nat.add_sub_cancel, A060429.P5671389549803769980.a, A060429.P17554722288178337545.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A057427, A057427.P3058147525557661423.a, A100484, A100484.P9678625670825099636.a, A000007, A000007.P6599383543502402472.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A060429

/-!
# A060430: Residue C(2^n,n) mod C(2^n,2).

The programs for A060430, the canonical program `A060430.P14763598184096158402` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A060430 has offset 1).

The definition of A060430 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(2^(n+1), n+1)%C(2^(n+1), 2)` (program `A060430.P14763598184096158402`, by `A060430.P14763598184096158402.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A060430.P14763598184096158402

`C(2^(n+1), n+1)%C(2^(n+1), 2)`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A060430

/-- `C(2^(n+1), n+1)%C(2^(n+1), 2)` -/
def P14763598184096158402.Spec : Prop :=
  ∀ n, (P14763598184096158402.a n : ℤ) = A060430 (n + 1)

theorem P14763598184096158402.correct : P14763598184096158402.Spec := by
  intro n
  simp only [A060430, Nat.add_sub_cancel]

end A060430

/-! ## A060430.P13137109206853120008

`A014070(n+1)%A006516(n+1)`
-/

namespace A060430.P13137109206853120008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A014070 (n + 1)) (A006516 (n + 1))

end

end A060430.P13137109206853120008

namespace A060430

/-- `A014070(n+1)%A006516(n+1)` -/
def P13137109206853120008.Spec : Prop :=
  ∀ n, P13137109206853120008.a n = A060430 (n + 1)

end A060430

/-!
# A060431: Number of cubefree numbers <= n.

The programs for A060431, the canonical program `A060431.P7306160525503990828` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A060431 has offset 1).

The definition of A060431 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A060431.P7306160525503990828

`∑[∏{e}[n+1, round(1/#)]]`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A060431

/-- `∑[∏{e}[n+1, round(1/#)]]` -/
def P7306160525503990828.Spec : Prop :=
  ∀ n, P7306160525503990828.a n = A060431 (n + 1)

theorem P7306160525503990828.correct : P7306160525503990828.Spec := by
  intro n
  simp only [A060431, Nat.add_sub_cancel]

end A060431

/-! ## A060431.P11674343176621038441

`∑[∏{e}[n+1, #!]²%3]`
-/

namespace A060431.P11674343176621038441
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∏ p ∈ Nat.primeFactors (f2 n), Nat.factorial (Nat.factorization (f2 n) p)) ^ 2 % 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A060431.P11674343176621038441

namespace A060431

/-- `∑[∏{e}[n+1, #!]²%3]` -/
def P11674343176621038441.Spec : Prop :=
  ∀ n, (P11674343176621038441.a n : ℤ) = A060431 (n + 1)

end A060431

/-! ## A060431.P51855573865533661

`∑[C(∑{e}[n+1, #], ∑{e}[n+1, #!])]`
-/

namespace A060431.P51855573865533661
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p) (∑ p ∈ Nat.primeFactors (f3 n), Nat.factorial (Nat.factorization (f3 n) p))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A060431.P51855573865533661

namespace A060431

/-- `∑[C(∑{e}[n+1, #], ∑{e}[n+1, #!])]` -/
def P51855573865533661.Spec : Prop :=
  ∀ n, (P51855573865533661.a n : ℤ) = A060431 (n + 1)

end A060431

/-! ## A060431.P5427495825532840928

`∑[C(∏{e}[n+1, (#+1)%2+1], ∏{e}[n+1, #])]`
-/

namespace A060431.P5427495825532840928
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (∏ p ∈ Nat.primeFactors (f2 n), ((Nat.factorization (f2 n) p + 1) % 2 + 1)) (∏ p ∈ Nat.primeFactors (f3 n), Nat.factorization (f3 n) p)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A060431.P5427495825532840928

namespace A060431

/-- `∑[C(∏{e}[n+1, (#+1)%2+1], ∏{e}[n+1, #])]` -/
def P5427495825532840928.Spec : Prop :=
  ∀ n, (P5427495825532840928.a n : ℤ) = A060431 (n + 1)

end A060431

/-! ## A060431.P15662098480764149055

`∑[A212793(n+1)]`
-/

namespace A060431.P15662098480764149055
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212793 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A060431.P15662098480764149055

namespace A060431

/-- `∑[A212793(n+1)]` -/
def P15662098480764149055.Spec : Prop :=
  ∀ n, P15662098480764149055.a n = A060431 (n + 1)

end A060431

/-! ## A060431.P4866697186255598847

`∑[abs(A053864(n+1))]`
-/

namespace A060431.P4866697186255598847
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A053864 (n + 1)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A060431.P4866697186255598847

namespace A060431

/-- `∑[abs(A053864(n+1))]` -/
def P4866697186255598847.Spec : Prop :=
  ∀ n, P4866697186255598847.a n = A060431 (n + 1)

end A060431

/-! ## A060431.P3814755305981464442

`∑[abs(A189021(n+1))]`
-/

namespace A060431.P3814755305981464442
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A189021 (n + 1)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A060431.P3814755305981464442

namespace A060431

/-- `∑[abs(A189021(n+1))]` -/
def P3814755305981464442.Spec : Prop :=
  ∀ n, P3814755305981464442.a n = A060431 (n + 1)

end A060431

/-! ## A060431.P7708607189186018776

`∑[abs(A363551(n+1))]`
-/

namespace A060431.P7708607189186018776
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A363551 (n + 1)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A060431.P7708607189186018776

namespace A060431

/-- `∑[abs(A363551(n+1))]` -/
def P7708607189186018776.Spec : Prop :=
  ∀ n, P7708607189186018776.a n = A060431 (n + 1)

end A060431

/-! ## A060431.P4509428205712413815

`∑[A072911(n+1)%2]`
-/

namespace A060431.P4509428205712413815
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A072911 (n + 1)) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A060431.P4509428205712413815

namespace A060431

/-- `∑[A072911(n+1)%2]` -/
def P4509428205712413815.Spec : Prop :=
  ∀ n, P4509428205712413815.a n = A060431 (n + 1)

end A060431

/-! ## A060431.P6224038782943641021

`∑[and(1, A307428(n+1))]`
-/

namespace A060431.P6224038782943641021
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A307428 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A060431.P6224038782943641021

namespace A060431

/-- `∑[and(1, A307428(n+1))]` -/
def P6224038782943641021.Spec : Prop :=
  ∀ n, P6224038782943641021.a n = A060431 (n + 1)

end A060431

/-! ## A060431.P16249136966433207248

`∑[round(acot(A317941(n+1)))]`
-/

namespace A060431.P16249136966433207248
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (SequenceMachineLib.acot (A317941 (n + 1) : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A060431.P16249136966433207248

namespace A060431

/-- `∑[round(acot(A317941(n+1)))]` -/
def P16249136966433207248.Spec : Prop :=
  ∀ n, P16249136966433207248.a n = A060431 (n + 1)

end A060431

/-! ## A060431.P6680261124480235434

`∑[floor(1/A008834(n+1))]`
-/

namespace A060431.P6680261124480235434
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊1 / (A008834 (n + 1) : ℚ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A060431.P6680261124480235434

namespace A060431

/-- `∑[floor(1/A008834(n+1))]` -/
def P6680261124480235434.Spec : Prop :=
  ∀ n, P6680261124480235434.a n = A060431 (n + 1)

end A060431

/-! ## A060431.P4577657757905376429

`∑[char[lt[A051903(n+2), 3]+1]]+1`
-/

namespace A060431.P4577657757905376429
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (n + 2)

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f3 j < (f4 j : ℤ)) n + 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A060431.P4577657757905376429

namespace A060431

/-- `∑[char[lt[A051903(n+2), 3]+1]]+1` -/
def P4577657757905376429.Spec : Prop :=
  ∀ n, (P4577657757905376429.a n : ℤ) = A060431 (n + 1)

end A060431

/-! ## A060431.P10293753725083395023

`1-∑[char[lt[0, A056626(n+1)]]]+n`
-/

namespace A060431.P10293753725083395023
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056626 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f3 j : ℤ) < f4 j) n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + (n : ℤ)

end

end A060431.P10293753725083395023

namespace A060431

/-- `1-∑[char[lt[0, A056626(n+1)]]]+n` -/
def P10293753725083395023.Spec : Prop :=
  ∀ n, P10293753725083395023.a n = A060431 (n + 1)

end A060431

/-! ## A060431.P4402548512349429384

`∑[abs(A008683((n+1)/∏{p}[n+1, #]))]`
-/

namespace A060431.P4402548512349429384
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008683 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f2 n), p : ℕ) : ℚ))).toNat|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A060431.P4402548512349429384

namespace A060431

/-- `∑[abs(A008683((n+1)/∏{p}[n+1, #]))]` -/
def P4402548512349429384.Spec : Prop :=
  ∀ n, P4402548512349429384.a n = A060431 (n + 1)

end A060431

/-! ## A060431.P13858539930032566669

`∑[A008966(A003557(n+1))]`
-/

namespace A060431.P13858539930032566669
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008966 (A003557 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A060431.P13858539930032566669

namespace A060431

/-- `∑[A008966(A003557(n+1))]` -/
def P13858539930032566669.Spec : Prop :=
  ∀ n, P13858539930032566669.a n = A060431 (n + 1)

end A060431

/-! ## A060431.P2597579017931100773

`∑[A008683(A008834(n+1))]`
-/

namespace A060431.P2597579017931100773
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A008834 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A060431.P2597579017931100773

namespace A060431

/-- `∑[A008683(A008834(n+1))]` -/
def P2597579017931100773.Spec : Prop :=
  ∀ n, P2597579017931100773.a n = A060431 (n + 1)

end A060431

/-! ## A060431.P13684208687642633111

`∑[A010057(A113061(n+1))]`
-/

namespace A060431.P13684208687642633111
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010057 (A113061 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A060431.P13684208687642633111

namespace A060431

/-- `∑[A010057(A113061(n+1))]` -/
def P13684208687642633111.Spec : Prop :=
  ∀ n, P13684208687642633111.a n = A060431 (n + 1)

end A060431

/-! ## A060431.P13981523835692072049

`∑[A008683(A360540(n+1))]`
-/

namespace A060431.P13981523835692072049
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A360540 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A060431.P13981523835692072049

namespace A060431

/-- `∑[A008683(A360540(n+1))]` -/
def P13981523835692072049.Spec : Prop :=
  ∀ n, P13981523835692072049.a n = A060431 (n + 1)

end A060431

/-! ## A060431.P3006393406029715643

`A072358(n+1)+A013928(n+2)`
-/

namespace A060431.P3006393406029715643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072358 (n + 1) + A013928 (n + 2)

end

end A060431.P3006393406029715643

namespace A060431

/-- `A072358(n+1)+A013928(n+2)` -/
def P3006393406029715643.Spec : Prop :=
  ∀ n, P3006393406029715643.a n = A060431 (n + 1)

theorem P3006393406029715643.correct : P3006393406029715643.Spec := by
  intro n
  simp only [A060431, Nat.add_sub_cancel, A060431.P3006393406029715643.a, A060431.P7306160525503990828.f2, A060431.P7306160525503990828.f1, A060431.P7306160525503990828.a, A013928, A013928.P12891540521727461604.f2, A013928.P12891540521727461604.f1, A013928.P12891540521727461604.a, A072358, A072358.P17985313231785458440.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A060431

/-!
# A060432: Partial sums of A002024.

The programs for A060432, the canonical program `A060432.P9064666053418794146` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A060432 has offset 1).

The definition of A060432 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A060432.P9064666053418794146

`A000330(A003056(n+1))+(A003056(n+1)+1)*(n+1-A057944(n+1))`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A060432

/-- `A000330(A003056(n+1))+(A003056(n+1)+1)*(n+1-A057944(n+1))` -/
def P9064666053418794146.Spec : Prop :=
  ∀ n, P9064666053418794146.a n = A060432 (n + 1)

theorem P9064666053418794146.correct : P9064666053418794146.Spec := by
  intro n
  simp only [A060432, Nat.add_sub_cancel]

end A060432

/-! ## A060432.P11482591364994226066

`∑[∑[char[∑[n]]]]`
-/

namespace A060432.P11482591364994226066
noncomputable section

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = n then 1 else 0

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A060432.P11482591364994226066

namespace A060432

/-- `∑[∑[char[∑[n]]]]` -/
def P11482591364994226066.Spec : Prop :=
  ∀ n, (P11482591364994226066.a n : ℤ) = A060432 (n + 1)

end A060432

/-! ## A060432.P13502354988010290656

`abs(∑[comp[C(n, 2)]-(n+1)])`
-/

namespace A060432.P13502354988010290656
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 2

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n : ℤ) - (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j|

end

end A060432.P13502354988010290656

namespace A060432

/-- `abs(∑[comp[C(n, 2)]-(n+1)])` -/
def P13502354988010290656.Spec : Prop :=
  ∀ n, P13502354988010290656.a n = A060432 (n + 1)

end A060432

/-! ## A060432.P11860532202929901387

`abs(∑[comp[C(n, 2)-1]-n])`
-/

namespace A060432.P11860532202929901387
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose n 2 : ℤ) - 1

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n : ℤ) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j|

end

end A060432.P11860532202929901387

namespace A060432

/-- `abs(∑[comp[C(n, 2)-1]-n])` -/
def P11860532202929901387.Spec : Prop :=
  ∀ n, P11860532202929901387.a n = A060432 (n + 1)

end A060432

/-! ## A060432.P6001493288098074712

`∑[comp[C(n, 2)]]-∑[n+1]`
-/

namespace A060432.P6001493288098074712
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - ((∑ j ∈ Finset.range (n + 1), f3 j : ℕ) : ℤ)

end

end A060432.P6001493288098074712

namespace A060432

/-- `∑[comp[C(n, 2)]]-∑[n+1]` -/
def P6001493288098074712.Spec : Prop :=
  ∀ n, P6001493288098074712.a n = A060432 (n + 1)

end A060432

/-! ## A060432.P10267372208267117333

`∑[comp[∑[n]]-n]+xor(n, -1)`
-/

namespace A060432.P10267372208267117333
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n : ℤ) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + Int.xor (n : ℤ) (-1)

end

end A060432.P10267372208267117333

namespace A060432

/-- `∑[comp[∑[n]]-n]+xor(n, -1)` -/
def P10267372208267117333.Spec : Prop :=
  ∀ n, P10267372208267117333.a n = A060432 (n + 1)

end A060432

/-! ## A060432.P9105343734470789484

`-∑[-(comp[∑[n]]+xor(n, -1))]`
-/

namespace A060432.P9105343734470789484
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -((SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n : ℤ) + Int.xor (n : ℤ) (-1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(∑ j ∈ Finset.range (n + 1), f1 j)

end

end A060432.P9105343734470789484

namespace A060432

/-- `-∑[-(comp[∑[n]]+xor(n, -1))]` -/
def P9105343734470789484.Spec : Prop :=
  ∀ n, P9105343734470789484.a n = A060432 (n + 1)

end A060432

/-! ## A060432.P12514586934393280697

`and(∑[comp[C(n, 2)-1]-n], -1)`
-/

namespace A060432.P12514586934393280697
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose n 2 : ℤ) - 1

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n : ℤ) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (∑ j ∈ Finset.range (n + 1), f1 j) (-1)

end

end A060432.P12514586934393280697

namespace A060432

/-- `and(∑[comp[C(n, 2)-1]-n], -1)` -/
def P12514586934393280697.Spec : Prop :=
  ∀ n, P12514586934393280697.a n = A060432 (n + 1)

end A060432

/-! ## A060432.P2792388159764201355

`abs(∑[a(n-a(n-1))+1])` with `a(0)=1`
-/

namespace A060432.P2792388159764201355
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  f1 (n - f1 (n - 1)) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A060432.P2792388159764201355

namespace A060432

/-- `abs(∑[a(n-a(n-1))+1])` -/
def P2792388159764201355.Spec : Prop :=
  ∀ n, (P2792388159764201355.a n : ℤ) = A060432 (n + 1)

end A060432

/-! ## A060432.P9339195952404367465

`round(a(n-1)+sqrt(2*n+1))` with `a(0)=1`
-/

namespace A060432.P9339195952404367465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  SequenceMachineLib.roundAway ((a (n - 1) : ℝ) + Real.sqrt (2 * n + 1 : ℝ))

end

end A060432.P9339195952404367465

namespace A060432

/-- `round(a(n-1)+sqrt(2*n+1))` -/
def P9339195952404367465.Spec : Prop :=
  ∀ n, P9339195952404367465.a n = A060432 (n + 1)

end A060432

/-! ## A060432.P1307393381135542850

`a(n-1)+comp[∑[n]]-(n+1)` with `a(0)=1`
-/

namespace A060432.P1307393381135542850
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n + 1 : ℤ))

end

end A060432.P1307393381135542850

namespace A060432

/-- `a(n-1)+comp[∑[n]]-(n+1)` -/
def P1307393381135542850.Spec : Prop :=
  ∀ n, P1307393381135542850.a n = A060432 (n + 1)

end A060432

/-! ## A060432.P16699585883668265336

`floor(a(n-1)+(a(n-1)+(a(n-1)+n)/2)/n)` with `a(0)=1`
-/

namespace A060432.P16699585883668265336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌊(a (n - 1) : ℚ) + ((a (n - 1) : ℚ) + (a (n - 1) + (n : ℤ) : ℚ) / 2) / (n : ℚ)⌋

end

end A060432.P16699585883668265336

namespace A060432

/-- `floor(a(n-1)+(a(n-1)+(a(n-1)+n)/2)/n)` -/
def P16699585883668265336.Spec : Prop :=
  ∀ n, P16699585883668265336.a n = A060432 (n + 1)

end A060432

/-! ## A060432.P14279358558731055780

`∑[A111650(n+1)]/2`
-/

namespace A060432.P14279358558731055780
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111650 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 2

end

end A060432.P14279358558731055780

namespace A060432

/-- `∑[A111650(n+1)]/2` -/
def P14279358558731055780.Spec : Prop :=
  ∀ n, P14279358558731055780.a n = (A060432 (n + 1) : ℚ)

end A060432

/-! ## A060432.P17835100297795024811

`∑[A131507(n)+1]/2`
-/

namespace A060432.P17835100297795024811
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131507 n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 2

end

end A060432.P17835100297795024811

namespace A060432

/-- `∑[A131507(n)+1]/2` -/
def P17835100297795024811.Spec : Prop :=
  ∀ n, P17835100297795024811.a n = (A060432 (n + 1) : ℚ)

end A060432

/-! ## A060432.P7045276722750137725

`∑[A279891(n)+2]/2`
-/

namespace A060432.P7045276722750137725
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279891 n + 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 2

end

end A060432.P7045276722750137725

namespace A060432

/-- `∑[A279891(n)+2]/2` -/
def P7045276722750137725.Spec : Prop :=
  ∀ n, P7045276722750137725.a n = (A060432 (n + 1) : ℚ)

end A060432

/-! ## A060432.P5154038833661170415

`n+1+∑[A003056(n)]`
-/

namespace A060432.P5154038833661170415
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A060432.P5154038833661170415

namespace A060432

/-- `n+1+∑[A003056(n)]` -/
def P5154038833661170415.Spec : Prop :=
  ∀ n, P5154038833661170415.a n = A060432 (n + 1)

end A060432

/-! ## A060432.P603013046348147269

`abs(∑[∑[1-A035214(n)]])`
-/

namespace A060432.P603013046348147269
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A035214 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j|

end

end A060432.P603013046348147269

namespace A060432

/-- `abs(∑[∑[1-A035214(n)]])` -/
def P603013046348147269.Spec : Prop :=
  ∀ n, P603013046348147269.a n = A060432 (n + 1)

end A060432

/-! ## A060432.P16093688337502172779

`abs(∑[1-∑[A073423(n)]])`
-/

namespace A060432.P16093688337502172779
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073423 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j|

end

end A060432.P16093688337502172779

namespace A060432

/-- `abs(∑[1-∑[A073423(n)]])` -/
def P16093688337502172779.Spec : Prop :=
  ∀ n, P16093688337502172779.a n = A060432 (n + 1)

end A060432

/-! ## A060432.P1020315000649946763

`abs(∑[∑[2-A238303(n)]])`
-/

namespace A060432.P1020315000649946763
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A238303 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j|

end

end A060432.P1020315000649946763

namespace A060432

/-- `abs(∑[∑[2-A238303(n)]])` -/
def P1020315000649946763.Spec : Prop :=
  ∀ n, P1020315000649946763.a n = A060432 (n + 1)

end A060432

/-! ## A060432.P16446353423400261936

`A006463(n+1)+1+n`
-/

namespace A060432.P16446353423400261936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006463 (n + 1) + 1 + (n : ℤ)

end

end A060432.P16446353423400261936

namespace A060432

/-- `A006463(n+1)+1+n` -/
def P16446353423400261936.Spec : Prop :=
  ∀ n, P16446353423400261936.a n = A060432 (n + 1)

end A060432

/-!
# A060433: a(n) is the smallest odd number that can be represented as the sum of one or more consecutive primes in n ways.

The programs for A060433, there is no canonical definition to state claims against.
-/

/-! ## A060433.P9320214926420389045

`p?[or(1, A054859(n))]`
-/

namespace A060433.P9320214926420389045
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A054859 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A060433.P9320214926420389045

/-! ## A060433.P5576339572669928063

`A058343(n)+p?[A054859(n)]`
-/

namespace A060433.P5576339572669928063
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054859 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058343 n + f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A060433.P5576339572669928063

/-!
# A060434: An inverse to Mertens's function: smallest k >= 2 such that Mertens's function |M(k)| (see A002321) is equal to n.

The programs for A060434, there is no canonical definition to state claims against.
-/

/-! ## A060434.P10587625535032168168

`A194287(∏[∑{d}[n+1, #]]+1)`
-/

namespace A060434.P10587625535032168168
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), d

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194287 (∏ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A060434.P10587625535032168168

/-! ## A060434.P893545511381987784

`A172471(∏[∑{d}[n+1, #]]+2)`
-/

namespace A060434.P893545511381987784
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), d

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172471 (∏ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A060434.P893545511381987784

/-!
# A060435: Number of functions f: {1,2,...,n} -> {1,2,...,n} with even cycles only.

The programs for A060435, there is no canonical definition to state claims against.
-/

/-! ## A060435.P7165270596212487536

`A116956(n)-A202013(n)`
-/

namespace A060435.P7165270596212487536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116956 n - A202013 n

end

end A060435.P7165270596212487536

/-! ## A060435.P7704195383621670093

`A246609(∑[n]+2)`
-/

namespace A060435.P7704195383621670093
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246609 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A060435.P7704195383621670093

/-! ## A060435.P13584362927401197605

`A246609(A133263(n))+A000007(n)`
-/

namespace A060435.P13584362927401197605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246609 (A133263 n).toNat + A000007 n

end

end A060435.P13584362927401197605

/-! ## A060435.P5268568738325238725

`A246609(A133263(n))+A151934(n)`
-/

namespace A060435.P5268568738325238725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246609 (A133263 n).toNat + A151934 n

end

end A060435.P5268568738325238725

/-! ## A060435.P12589094695671470011

`or(A059841(n), A246609(A133263(n)))`
-/

namespace A060435.P12589094695671470011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A059841 n) (A246609 (A133263 n).toNat)

end

end A060435.P12589094695671470011

/-!
# A060436: Numerator of Sum_{k=1..n} d(k)/k, where d() = A000005().

The programs for A060436, there is no canonical definition to state claims against.
-/

/-! ## A060436.P10796370005757575177

`A295311(A356297(n+1))`
-/

namespace A060436.P10796370005757575177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295311 (A356297 (n + 1)).toNat

end

end A060436.P10796370005757575177

/-! ## A060436.P11799645350994539990

`A093527(A356297(n+1)-1)`
-/

namespace A060436.P11799645350994539990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093527 (A356297 (n + 1) - 1).toNat

end

end A060436.P11799645350994539990

/-!
# A060437: a(n) is the number of different degrees in the sequence of the degrees of the irreducible representations of the symmetric group S_n, i.e., count each degree only once.

The programs for A060437, there is no canonical definition to state claims against.
-/

/-! ## A060437.P13497905206207622155

`A318558(n+1)+A060426(n+1)`
-/

namespace A060437.P13497905206207622155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318558 (n + 1) + A060426 (n + 1)

end

end A060437.P13497905206207622155

/-! ## A060437.P15989739361335878860

`Δ[record[n-A224653(n+1)]]`
-/

namespace A060437.P15989739361335878860
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A224653 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A060437.P15989739361335878860

/-! ## A060437.P2984679224690285558

`Δ[eq[1, A224653(n+1)]]`
-/

namespace A060437.P2984679224690285558
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224653 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A060437.P2984679224690285558

/-!
# A060438: Triangle T(n,k), 1 <= k <= n, giving maximal size of binary code of length n and covering radius k.

The programs for A060438, there is no canonical definition to state claims against.
-/

/-! ## A060438.P11993718096767881923

`A130335(A113088(n))`
-/

namespace A060438.P11993718096767881923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130335 (A113088 n).toNat

end

end A060438.P11993718096767881923

/-! ## A060438.P11908061229861030042

`A114575(A134032(n+1))`
-/

namespace A060438.P11908061229861030042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114575 (A134032 (n + 1)).toNat

end

end A060438.P11908061229861030042

/-! ## A060438.P11582479983891481893

`A309228(A134275(n+1))`
-/

namespace A060438.P11582479983891481893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309228 (A134275 (n + 1)).toNat

end

end A060438.P11582479983891481893

/-! ## A060438.P5614857166331409335

`A117277(A136234(n)+3)`
-/

namespace A060438.P5614857166331409335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117277 (A136234 n + 3).toNat

end

end A060438.P5614857166331409335

/-! ## A060438.P18173340310825877128

`A060447(A060439(n+1)+1)`
-/

namespace A060438.P18173340310825877128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060447 (A060439 (n + 1) + 1).toNat

end

end A060438.P18173340310825877128

/-!
# A060439: Triangle T(n,k), 1 <= k <= n, giving maximal size of ternary code of length n and covering radius k.

The programs for A060439, there is no canonical definition to state claims against.
-/

/-! ## A060439.P6794535739480183924

`ceil(A135896(n)/A000203(A135894(n)))`
-/

namespace A060439.P6794535739480183924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A135896 n : ℚ) / (A000203 (A135894 n).toNat : ℚ)⌉

end

end A060439.P6794535739480183924

/-!
# A060441: Triangle T(n,k), n >= 0, in which n-th row (for n >= 3) lists prime factors of Fibonacci(n) (see A000045), with repetition.

The programs for A060441, there is no canonical definition to state claims against.
-/

/-! ## A060441.P13063152495849908930

`A060442(A187829(n+1)-A035441(n+1))`
-/

namespace A060441.P13063152495849908930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060442 (A187829 (n + 1) - A035441 (n + 1)).toNat

end

end A060441.P13063152495849908930

/-!
# A060442: Triangle T(n,k), n >= 0, in which n-th row (for n >= 3) lists prime factors of Fibonacci(n) (see A000045), without repetition.

The programs for A060442, there is no canonical definition to state claims against.
-/

/-! ## A060442.P422582368764111694

`A060441(lt[n, A094463(3*n+5)])`
-/

namespace A060442.P422582368764111694
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094463 (3 * n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060441 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A060442.P422582368764111694

/-! ## A060442.P4239314833240346540

`A060441(lt[A007913(2*n+1), A195264(n+5)])`
-/

namespace A060442.P4239314833240346540
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195264 (n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060441 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A060442.P4239314833240346540

/-!
# A060444: Table T(n,k) in which n-th row lists prime factors of 2^n + 1 (n >= 0), without repetition.

The programs for A060444, there is no canonical definition to state claims against.
-/

/-! ## A060444.P1154760262998804395

`p?[A374237(n)]`
-/

namespace A060444.P1154760262998804395
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374237 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A060444.P1154760262998804395

/-! ## A060444.P10617664583572302429

`filter[A374237(n), A010051(#)]`
-/

namespace A060444.P10617664583572302429
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374237 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A060444.P10617664583572302429

/-! ## A060444.P16604809279721085821

`filter[A374237(n), A323153(#)]`
-/

namespace A060444.P16604809279721085821
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374237 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323153 (f1 j).toNat = 1) n)

end

end A060444.P16604809279721085821

/-! ## A060444.P12071129954707635609

`filter[A374237(n), A324823(#)]`
-/

namespace A060444.P12071129954707635609
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374237 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A324823 (f1 j).toNat = 1) n)

end

end A060444.P12071129954707635609

/-! ## A060444.P7434581913714848718

`filter[A374237(n), A327861(#)]`
-/

namespace A060444.P7434581913714848718
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374237 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A327861 (f1 j).toNat = 1) n)

end

end A060444.P7434581913714848718

/-!
# A060445: "Dropping time" in 3x+1 problem starting at 2n+1 (number of steps to reach a lower number than starting value). Also called glide(2n+1).

The programs for A060445, there is no canonical definition to state claims against.
-/

/-! ## A060445.P96679556830101650

`A204399(A122458(n))+A122458(n)`
-/

namespace A060445.P96679556830101650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204399 (A122458 n).toNat + A122458 n

end

end A060445.P96679556830101650

/-! ## A060445.P10052728832665670341

`A102419(Δ[n²])`
-/

namespace A060445.P10052728832665670341
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102419 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A060445.P10052728832665670341

/-! ## A060445.P9119334904940649972

`A074473(Δ[n²])-1`
-/

namespace A060445.P9119334904940649972
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074473 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat - 1

end

end A060445.P9119334904940649972

/-! ## A060445.P3321340649332076217

`abs((-1)^n*A102419(2*n+1))`
-/

namespace A060445.P3321340649332076217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(-1) ^ n * A102419 (2 * n + 1)|

end

end A060445.P3321340649332076217

/-! ## A060445.P8351186288580666066

`A023443(A074473(2*n+1))`
-/

namespace A060445.P8351186288580666066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A074473 (2 * n + 1)).toNat

end

end A060445.P8351186288580666066

/-! ## A060445.P8514425312808717999

`A003056(C(A074473(2*n+1), 2))`
-/

namespace A060445.P8514425312808717999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (Nat.choose (A074473 (2 * n + 1)).toNat 2)

end

end A060445.P8514425312808717999

/-! ## A060445.P1062230355790841057

`A126241(2*n+1)+A122458(n)`
-/

namespace A060445.P1062230355790841057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126241 (2 * n + 1) + A122458 n

end

end A060445.P1062230355790841057

/-! ## A060445.P2970458206851205540

`A102419(2*n+1)*A122458(2*n)`
-/

namespace A060445.P2970458206851205540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102419 (2 * n + 1) * A122458 (2 * n)

end

end A060445.P2970458206851205540

/-! ## A060445.P13406316114597739563

`A102419(2*n+1)*A102419(2*(n+1))`
-/

namespace A060445.P13406316114597739563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102419 (2 * n + 1) * A102419 (2 * (n + 1))

end

end A060445.P13406316114597739563

/-! ## A060445.P11614138579122268132

`A121868(A074473(2*(n+1)))+A074473(2*n+1)`
-/

namespace A060445.P11614138579122268132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121868 (A074473 (2 * (n + 1))).toNat + A074473 (2 * n + 1)

end

end A060445.P11614138579122268132

/-! ## A060445.P14446754019595030589

`A175722(A088705(2*n+1))+A074473(2*n+1)`
-/

namespace A060445.P14446754019595030589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175722 (A088705 (2 * n + 1)).toNat + A074473 (2 * n + 1)

end

end A060445.P14446754019595030589

/-!
# A060446: Number of ways to color vertices of a pentagon using <= n colors, allowing rotations and reflections.

The programs for A060446, the canonical program `A060446.P6357131563141394859` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A060446 has offset 0).

The definition of A060446 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A060446.P6357131563141394859

`n*(n²+1)*(n²+4)/10`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A060446

/-- `n*(n²+1)*(n²+4)/10` -/
def P6357131563141394859.Spec : Prop :=
  ∀ n, P6357131563141394859.a n = (A060446 n : ℚ)

end A060446

/-! ## A060446.P11248648221208601731

`∑[∑[A280058(n)]]+n^3`
-/

namespace A060446.P11248648221208601731
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280058 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n ^ 3 : ℤ)

end

end A060446.P11248648221208601731

namespace A060446

/-- `∑[∑[A280058(n)]]+n^3` -/
def P11248648221208601731.Spec : Prop :=
  ∀ n, P11248648221208601731.a n = A060446 n

end A060446

/-! ## A060446.P16873024518276158740

`∑[A212135(n)+A002061(n)]-1`
-/

namespace A060446.P16873024518276158740
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212135 n + A002061 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A060446.P16873024518276158740

namespace A060446

/-- `∑[A212135(n)+A002061(n)]-1` -/
def P16873024518276158740.Spec : Prop :=
  ∀ n, P16873024518276158740.a n = A060446 n

end A060446

/-! ## A060446.P13145941731076720498

`A006003(n)+∑[3*A006325(n)]`
-/

namespace A060446.P13145941731076720498
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A006325 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006003 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A060446.P13145941731076720498

namespace A060446

/-- `A006003(n)+∑[3*A006325(n)]` -/
def P13145941731076720498.Spec : Prop :=
  ∀ n, P13145941731076720498.a n = A060446 n

end A060446

/-! ## A060446.P7275314955925706396

`A005900(n)+∑[A163102(n)]-A163102(n)`
-/

namespace A060446.P7275314955925706396
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163102 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005900 n + (∑ j ∈ Finset.range (n + 1), f1 j - A163102 n)

end

end A060446.P7275314955925706396

namespace A060446

/-- `A005900(n)+∑[A163102(n)]-A163102(n)` -/
def P7275314955925706396.Spec : Prop :=
  ∀ n, P7275314955925706396.a n = A060446 n

end A060446

/-! ## A060446.P6403536733911675447

`n^3+3*A210569(n+1)`
-/

namespace A060446.P6403536733911675447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 3 : ℤ) + 3 * A210569 (n + 1)

end

end A060446.P6403536733911675447

namespace A060446

/-- `n^3+3*A210569(n+1)` -/
def P6403536733911675447.Spec : Prop :=
  ∀ n, P6403536733911675447.a n = A060446 n

end A060446

/-! ## A060446.P4692454625621097754

`A300847(n+2)+n^3`
-/

namespace A060446.P4692454625621097754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300847 (n + 2) + (n ^ 3 : ℤ)

end

end A060446.P4692454625621097754

namespace A060446

/-- `A300847(n+2)+n^3` -/
def P4692454625621097754.Spec : Prop :=
  ∀ n, P4692454625621097754.a n = A060446 n

end A060446

/-! ## A060446.P11539831298815675942

`∑[A056220(A000124(n)-n)]-1`
-/

namespace A060446.P11539831298815675942
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056220 (A000124 n - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A060446.P11539831298815675942

namespace A060446

/-- `∑[A056220(A000124(n)-n)]-1` -/
def P11539831298815675942.Spec : Prop :=
  ∀ n, P11539831298815675942.a n = A060446 n

end A060446

/-!
# A060448: Each c(i) is "multiply" (*) or "divide" (/); d(1) = 1 < d(2) < ... < d(m) = n are the divisors of n; a(n) is number of choices for c(1), ..., c(m-1) so that d(1) c(1) d(2) c(2) d(3), .., c(m-1) d(m) is an integer.

The programs for A060448, there is no canonical definition to state claims against.
-/

/-! ## A060448.P18028073717019435001

`A322705(∏{e}[n+1, #+1])%17`
-/

namespace A060448.P18028073717019435001
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A322705 (∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1))) 17

end

end A060448.P18028073717019435001

/-! ## A060448.P6805670128815946805

`A129363(∏{e}[n+1, #+1]!)+1`
-/

namespace A060448.P6805670128815946805
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129363 (Nat.factorial (∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1))) + 1

end

end A060448.P6805670128815946805

/-! ## A060448.P11195243216058898524

`A322705(∑{d}[n+1, ceil(1/#)])%(-17)`
-/

namespace A060448.P11195243216058898524
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A322705 (∑ d ∈ Nat.divisors (f1 n), ⌈1 / (d : ℚ)⌉).toNat) (-17)

end

end A060448.P11195243216058898524

/-! ## A060448.P3423700976913796325

`A322705(-∑{d}[n+1, or(#, -1)])%(-17)`
-/

namespace A060448.P3423700976913796325
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A322705 (-(∑ d ∈ Nat.divisors (f1 n), Int.lor (d : ℤ) (-1))).toNat) (-17)

end

end A060448.P3423700976913796325

/-! ## A060448.P17053599782136946165

`A075458(A325765(n)²)`
-/

namespace A060448.P17053599782136946165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075458 (A325765 n ^ 2).toNat

end

end A060448.P17053599782136946165

/-!
# A060449: Generalized Mills numbers: a(n) = floor(c^(b^n)) where c=4.4, b=1.179.

The programs for A060449, there is no canonical definition to state claims against.
-/

/-! ## A060449.P9375821039857676283

`A320056(a(n-1)-n)` with `a(0)=5`
-/

namespace A060449.P9375821039857676283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5] fun n a =>
  A320056 (a (n - 1) - (n : ℤ)).toNat

end

end A060449.P9375821039857676283

/-! ## A060449.P8369802064730194375

`A246955(a(n-1)-n)` with `a(0)=5, a(1)=7`
-/

namespace A060449.P8369802064730194375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5, 7] fun n a =>
  A246955 (a (n - 1) - (n : ℤ)).toNat

end

end A060449.P8369802064730194375

/-! ## A060449.P3816337826295705086

`A320055(a(n-1)+1-n)` with `a(0)=5`
-/

namespace A060449.P3816337826295705086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5] fun n a =>
  A320055 (a (n - 1) + (1 - (n : ℤ))).toNat

end

end A060449.P3816337826295705086

/-!
# A060450: Triangle T(n,k) (1 <= k <= n) giving smallest covering radius of any [n,k] binary linear code.

The programs for A060450, there is no canonical definition to state claims against.
-/

/-! ## A060450.P12248436874424364815

`ceil(A025581(n)/A099260(A250662(n)))`
-/

namespace A060450.P12248436874424364815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A025581 n : ℚ) / (A099260 (A250662 n).toNat : ℚ)⌉

end

end A060450.P12248436874424364815

/-! ## A060450.P1587100998732495730

`ceil(A025581(n)/A029653(A102480(n)))`
-/

namespace A060450.P1587100998732495730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A025581 n : ℚ) / (A029653 (A102480 n).toNat : ℚ)⌉

end

end A060450.P1587100998732495730

/-! ## A060450.P12495925563102588482

`A071325(A284457(n+1))`
-/

namespace A060450.P12495925563102588482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071325 (A284457 (n + 1)).toNat

end

end A060450.P12495925563102588482

/-! ## A060450.P387835288801081113

`A071325(A365656(n+1))`
-/

namespace A060450.P387835288801081113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071325 (A365656 (n + 1)).toNat

end

end A060450.P387835288801081113

/-! ## A060450.P18317542910273795054

`A244415(A025626(n+1))`
-/

namespace A060450.P18317542910273795054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244415 (A025626 (n + 1)).toNat

end

end A060450.P18317542910273795054

/-!
# A060452: Let v = (1,4,9,...,n^2), x = (0,1,2,4,6,...) [first n terms of A002620]; a(n) = v.v * x.x - (v.x)^2.

The programs for A060452, there is no canonical definition to state claims against.
-/

/-! ## A060452.P6245527469881816587

`A060454(abs(1-n))%A280776(n)`
-/

namespace A060452.P6245527469881816587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A060454 |1 - (n : ℤ)|.toNat) (A280776 n)

end

end A060452.P6245527469881816587

/-! ## A060452.P13443028331277227974

`A060454(A064524(n))%A059723(n)`
-/

namespace A060452.P13443028331277227974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A060454 (A064524 n).toNat) (A059723 n)

end

end A060452.P13443028331277227974

/-!
# A060453: Dot product of the squares and the quarter-squares: a(n) = sum(i=1..n, i^2 * floor(i^2/4)).

The programs for A060453, the canonical program `A060453.P700227134253134215` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A060453 has offset 1).

The definition of A060453 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A060453.P700227134253134215

`∑[(n+1)*∑[∑[lcm(2, n)]]]`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A060453

/-- `∑[(n+1)*∑[∑[lcm(2, n)]]]` -/
def P700227134253134215.Spec : Prop :=
  ∀ n, (P700227134253134215.a n : ℤ) = A060453 (n + 1)

theorem P700227134253134215.correct : P700227134253134215.Spec := by
  intro n
  simp only [A060453, Nat.add_sub_cancel]

end A060453

/-! ## A060453.P223368846436107145

`∑[(n+1)²*∑[ceil(n/2)]]`
-/

namespace A060453.P223368846436107145
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℚ) / 2⌉

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) * (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A060453.P223368846436107145

namespace A060453

/-- `∑[(n+1)²*∑[ceil(n/2)]]` -/
def P223368846436107145.Spec : Prop :=
  ∀ n, P223368846436107145.a n = A060453 (n + 1)

end A060453

/-! ## A060453.P16050485845438341765

`ceil(∑[∑[∑[n%2]]/(1/(n+1))²])`
-/

namespace A060453.P16050485845438341765
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℚ) / (1 / (n + 1 : ℚ)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈∑ j ∈ Finset.range (n + 1), f1 j⌉

end

end A060453.P16050485845438341765

namespace A060453

/-- `ceil(∑[∑[∑[n%2]]/(1/(n+1))²])` -/
def P16050485845438341765.Spec : Prop :=
  ∀ n, P16050485845438341765.a n = A060453 (n + 1)

end A060453

/-! ## A060453.P7835050704567464965

`floor(∑[(n+1)²*∑[n-a(n-1)]])` with `a(0)=0`

`floor` is left out, it is the identity on integers.
-/

namespace A060453.P7835050704567464965
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f2 =>
  (n : ℤ) - f2 (n - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) * (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A060453.P7835050704567464965

namespace A060453

/-- `floor(∑[(n+1)²*∑[n-a(n-1)]])` -/
def P7835050704567464965.Spec : Prop :=
  ∀ n, P7835050704567464965.a n = A060453 (n + 1)

end A060453

/-! ## A060453.P6562389351576517822

`a(n-1)+(n+1)²*∑[n-a(n-1)]` with `a(0)=0`
-/

namespace A060453.P6562389351576517822
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  (n : ℤ) - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + ((n + 1) ^ 2 : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A060453.P6562389351576517822

namespace A060453

/-- `a(n-1)+(n+1)²*∑[n-a(n-1)]` -/
def P6562389351576517822.Spec : Prop :=
  ∀ n, P6562389351576517822.a n = A060453 (n + 1)

end A060453

/-! ## A060453.P4775171914656047327

`∑[A210379(n)]/2`
-/

namespace A060453.P4775171914656047327
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210379 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 2

end

end A060453.P4775171914656047327

namespace A060453

/-- `∑[A210379(n)]/2` -/
def P4775171914656047327.Spec : Prop :=
  ∀ n, P4775171914656047327.a n = (A060453 (n + 1) : ℚ)

end A060453

/-! ## A060453.P5137790884382466091

`lcm(2, ∑[A212766(n)])`
-/

namespace A060453.P5137790884382466091
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212766 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A060453.P5137790884382466091

namespace A060453

/-- `lcm(2, ∑[A212766(n)])` -/
def P5137790884382466091.Spec : Prop :=
  ∀ n, (P5137790884382466091.a n : ℤ) = A060453 (n + 1)

end A060453

/-! ## A060453.P16153761240374526152

`2*∑[(n+1)*∑[A001318(n)]]`
-/

namespace A060453.P16153761240374526152
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001318 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A060453.P16153761240374526152

namespace A060453

/-- `2*∑[(n+1)*∑[A001318(n)]]` -/
def P16153761240374526152.Spec : Prop :=
  ∀ n, P16153761240374526152.a n = A060453 (n + 1)

end A060453

/-! ## A060453.P18174280831205192745

`∑[A189889((n+1)²)]-1`
-/

namespace A060453.P18174280831205192745
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189889 ((n + 1) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A060453.P18174280831205192745

namespace A060453

/-- `∑[A189889((n+1)²)]-1` -/
def P18174280831205192745.Spec : Prop :=
  ∀ n, P18174280831205192745.a n = A060453 (n + 1)

end A060453

/-!
# A060454: Consider the line segment in R^n from the origin to the point v = (1,4,9,...,n^2); let d = squared distance to this line from the closest point of Z^n (excluding the endpoints). Sequence gives d times v.v.

The programs for A060454, there is no canonical definition to state claims against.
-/

/-! ## A060454.P13035799987633760763

`A060452(n+2)%(A093472(n)^3)`
-/

namespace A060454.P13035799987633760763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A060452 (n + 2)) (A093472 n ^ 3)

end

end A060454.P13035799987633760763

/-! ## A060454.P13722392510190412659

`A060452(n+2)+A000038(A283613(n))`
-/

namespace A060454.P13722392510190412659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060452 (n + 2) + A000038 (A283613 n).toNat

end

end A060454.P13722392510190412659

/-! ## A060454.P4946383686849423962

`A060452(n+2)%A005897(A008527(n))`
-/

namespace A060454.P4946383686849423962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A060452 (n + 2)) (A005897 (A008527 n).toNat)

end

end A060454.P4946383686849423962

/-! ## A060454.P15619065558820638433

`A060452(n+2)+A000038(A032581(n+3))`
-/

namespace A060454.P15619065558820638433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060452 (n + 2) + A000038 (A032581 (n + 3)).toNat

end

end A060454.P15619065558820638433

/-! ## A060454.P2652226779519628443

`A014577(A056798(n+1))*A060452(n+2)`
-/

namespace A060454.P2652226779519628443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014577 (A056798 (n + 1)).toNat * A060452 (n + 2)

end

end A060454.P2652226779519628443

/-!
# A060455: 7th-order Fibonacci numbers with a(0)=...=a(6)=1.

The programs for A060455, there is no canonical definition to state claims against.
-/

/-! ## A060455.P4266831282268228762

`2*A066178(n+1)-A104621(n+1)`
-/

namespace A060455.P4266831282268228762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A066178 (n + 1) - A104621 (n + 1)

end

end A060455.P4266831282268228762

/-! ## A060455.P4442804948623674823

`A268129(A123526(n+2))`
-/

namespace A060455.P4442804948623674823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268129 (A123526 (n + 2)).toNat

end

end A060455.P4442804948623674823

/-! ## A060455.P16468993058918061508

`A106609(A106609(ceil(3*2^(n-3)))+1)`
-/

namespace A060455.P16468993058918061508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106609 (A106609 ⌈3 * (2 : ℚ) ^ ((n : ℤ) - 3 : ℤ)⌉.toNat + 1).toNat

end

end A060455.P16468993058918061508

/-! ## A060455.P13676272609435803758

`A016921(A009714(n+2)%A339615(3*n+2))`
-/

namespace A060455.P13676272609435803758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016921 (Int.tmod (A009714 (n + 2)) (A339615 (3 * n + 2))).toNat

end

end A060455.P13676272609435803758

/-! ## A060455.P9447411111955735815

`A351565(or(31, A042950(n)))`
-/

namespace A060455.P9447411111955735815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351565 (Int.lor 31 (A042950 n)).toNat

end

end A060455.P9447411111955735815

/-!
# A060456: a(n) = floor(exp(Pi*sqrt(n))).

The programs for A060456, there is no canonical definition to state claims against.
-/

/-! ## A060456.P11040550329677357399

`floor(sqrt(A056580(4*n)))`
-/

namespace A060456.P11040550329677357399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A056580 (4 * n))

end

end A060456.P11040550329677357399

/-! ## A060456.P3324209981055387006

`floor(A056580(4*n)/A056580(n))`
-/

namespace A060456.P3324209981055387006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A056580 (4 * n) : ℚ) / (A056580 n : ℚ)⌋

end

end A060456.P3324209981055387006

/-! ## A060456.P1891037736884019015

`A319626(A056580(n)-A298957(n+2))`
-/

namespace A060456.P1891037736884019015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319626 (A056580 n - A298957 (n + 2)).toNat

end

end A060456.P1891037736884019015

/-!
# A060457: Number of solutions to y^2 + y = x^3 - x^2 modulo n.

The programs for A060457, there is no canonical definition to state claims against.
-/

/-! ## A060457.P4691034055332879473

`A366362(∑[n+1])`
-/

namespace A060457.P4691034055332879473
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366362 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A060457.P4691034055332879473

/-!
# A060458: Maximum value seen in the final n decimal digits of 2^j for all values of j.

The programs for A060458, the canonical program `A060458.P4175634444508677456` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A060458 has offset 1).

The definition of A060458 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A060458.P16543108276440297731

`10^(n+1)-2^(n+1)`
-/

namespace A060458.P16543108276440297731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (10 ^ (n + 1) : ℤ) - (2 ^ (n + 1) : ℤ)

end

end A060458.P16543108276440297731

namespace A060458

/-- `10^(n+1)-2^(n+1)` -/
def P16543108276440297731.Spec : Prop :=
  ∀ n, P16543108276440297731.a n = A060458 (n + 1)

end A060458

/-! ## A060458.P4175634444508677456

`8*A016134(n)`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A060458

/-- `8*A016134(n)` -/
def P4175634444508677456.Spec : Prop :=
  ∀ n, P4175634444508677456.a n = A060458 (n + 1)

theorem P4175634444508677456.correct : P4175634444508677456.Spec := by
  intro n
  simp only [A060458, Nat.add_sub_cancel]

end A060458

/-! ## A060458.P8773250483089492847

`2^(n+3)*A003463(n+1)`
-/

namespace A060458.P8773250483089492847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ (n + 3) : ℤ) * A003463 (n + 1)

end

end A060458.P8773250483089492847

namespace A060458

/-- `2^(n+3)*A003463(n+1)` -/
def P8773250483089492847.Spec : Prop :=
  ∀ n, P8773250483089492847.a n = A060458 (n + 1)

end A060458

/-! ## A060458.P13083524829472493999

`ogf(8/(1-12x+20x^2))`
-/

namespace A060458.P13083524829472493999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [8] [1, -12, 20] n

end

end A060458.P13083524829472493999

namespace A060458

/-- `ogf(8/(1-12x+20x^2))` -/
def P13083524829472493999.Spec : Prop :=
  ∀ n, P13083524829472493999.a n = A060458 (n + 1)

end A060458

/-! ## A060458.P13691949630293328084

`xor(2^(n+1), 10^(n+1))`
-/

namespace A060458.P13691949630293328084
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor (2 ^ (n + 1)) (10 ^ (n + 1))

end

end A060458.P13691949630293328084

namespace A060458

/-- `xor(2^(n+1), 10^(n+1))` -/
def P13691949630293328084.Spec : Prop :=
  ∀ n, (P13691949630293328084.a n : ℤ) = A060458 (n + 1)

end A060458

/-! ## A060458.P13935276193003710381

`4*2^n*∑[5*a(n-1)]` with `a(0)=2`
-/

namespace A060458.P13935276193003710381
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2] fun n f1 =>
  5 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * (2 ^ n * (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A060458.P13935276193003710381

namespace A060458

/-- `4*2^n*∑[5*a(n-1)]` -/
def P13935276193003710381.Spec : Prop :=
  ∀ n, (P13935276193003710381.a n : ℤ) = A060458 (n + 1)

end A060458

/-! ## A060458.P6742345822886288143

`2^(n+1)*A024049(n+1)`
-/

namespace A060458.P6742345822886288143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ (n + 1) : ℤ) * A024049 (n + 1)

end

end A060458.P6742345822886288143

namespace A060458

/-- `2^(n+1)*A024049(n+1)` -/
def P6742345822886288143.Spec : Prop :=
  ∀ n, P6742345822886288143.a n = A060458 (n + 1)

end A060458

/-! ## A060458.P11672003988538738413

`∑[5*a(n-1)]*A000079(n)` with `a(0)=8`
-/

namespace A060458.P11672003988538738413
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [8] fun n f1 =>
  5 * f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A000079 n

end

end A060458.P11672003988538738413

namespace A060458

/-- `∑[5*a(n-1)]*A000079(n)` -/
def P11672003988538738413.Spec : Prop :=
  ∀ n, P11672003988538738413.a n = A060458 (n + 1)

end A060458

/-! ## A060458.P683172867591525349

`∑[A020729(n)]*A020707(n)`
-/

namespace A060458.P683172867591525349
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020729 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A020707 n

end

end A060458.P683172867591525349

namespace A060458

/-- `∑[A020729(n)]*A020707(n)` -/
def P683172867591525349.Spec : Prop :=
  ∀ n, P683172867591525349.a n = A060458 (n + 1)

end A060458

/-!
# A060459: a(n) = (n*(n+1))^3.

The programs for A060459, the canonical program `A060459.P13091624147768298715` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A060459 has offset 0).

The definition of A060459 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n*(n+1))^3` (program `A060459.P13091624147768298715`, by `A060459.P13091624147768298715.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A060459.P13091624147768298715

`(n*(n+1))^3`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A060459

/-- `(n*(n+1))^3` -/
def P13091624147768298715.Spec : Prop :=
  ∀ n, (P13091624147768298715.a n : ℤ) = A060459 n

theorem P13091624147768298715.correct : P13091624147768298715.Spec := by
  intro n
  simp only [A060459]

end A060459

/-! ## A060459.P5149046838812227359

`lcm(2, (n²+n)^3)`
-/

namespace A060459.P5149046838812227359
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 2 ((n ^ 2 + n) ^ 3)

end

end A060459.P5149046838812227359

namespace A060459

/-- `lcm(2, (n²+n)^3)` -/
def P5149046838812227359.Spec : Prop :=
  ∀ n, (P5149046838812227359.a n : ℤ) = A060459 n

end A060459

/-! ## A060459.P17520641502429989445

`abs((-lcm(n, n+1))^3)`
-/

namespace A060459.P17520641502429989445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(-(Nat.lcm n (n + 1) : ℤ)) ^ 3|

end

end A060459.P17520641502429989445

namespace A060459

/-- `abs((-lcm(n, n+1))^3)` -/
def P17520641502429989445.Spec : Prop :=
  ∀ n, P17520641502429989445.a n = A060459 n

end A060459

/-! ## A060459.P14700839230926129188

`and(-2, (n²+n)^3)`
-/

namespace A060459.P14700839230926129188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-2) ((n ^ 2 + n) ^ 3 : ℤ)

end

end A060459.P14700839230926129188

namespace A060459

/-- `and(-2, (n²+n)^3)` -/
def P14700839230926129188.Spec : Prop :=
  ∀ n, P14700839230926129188.a n = A060459 n

end A060459

/-! ## A060459.P9073876345485555589

`abs(∑[a(n-1)+2]^3)` with `a(0)=0`
-/

namespace A060459.P9073876345485555589
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0] fun n f1 =>
  f1 (n - 1) + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 3

end

end A060459.P9073876345485555589

namespace A060459

/-- `abs(∑[a(n-1)+2]^3)` -/
def P9073876345485555589.Spec : Prop :=
  ∀ n, (P9073876345485555589.a n : ℤ) = A060459 n

end A060459

/-! ## A060459.P2057221065945013276

`-∑[a(n-1)-2]^3` with `a(0)=0`
-/

namespace A060459.P2057221065945013276
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  f1 (n - 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -((∑ j ∈ Finset.range (n + 1), f1 j) ^ 3)

end

end A060459.P2057221065945013276

namespace A060459

/-- `-∑[a(n-1)-2]^3` -/
def P2057221065945013276.Spec : Prop :=
  ∀ n, P2057221065945013276.a n = A060459 n

end A060459

/-! ## A060459.P1671819058923453802

`floor(∑[a(n-1)+2]^3)` with `a(0)=0`

`floor` is left out, it is the identity on integers.
-/

namespace A060459.P1671819058923453802
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0] fun n f1 =>
  f1 (n - 1) + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 3

end

end A060459.P1671819058923453802

namespace A060459

/-- `floor(∑[a(n-1)+2]^3)` -/
def P1671819058923453802.Spec : Prop :=
  ∀ n, (P1671819058923453802.a n : ℤ) = A060459 n

end A060459

/-! ## A060459.P16636519914207860730

`ceil(∑[a(n-1)+2]^3)` with `a(0)=0`

`ceil` is left out, it is the identity on integers.
-/

namespace A060459.P16636519914207860730
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0] fun n f1 =>
  f1 (n - 1) + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 3

end

end A060459.P16636519914207860730

namespace A060459

/-- `ceil(∑[a(n-1)+2]^3)` -/
def P16636519914207860730.Spec : Prop :=
  ∀ n, (P16636519914207860730.a n : ℤ) = A060459 n

end A060459

/-! ## A060459.P15356267985944929537

`round(∑[a(n-1)+2]^3)` with `a(0)=0`

`round` is left out, it is the identity on integers.
-/

namespace A060459.P15356267985944929537
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0] fun n f1 =>
  f1 (n - 1) + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 3

end

end A060459.P15356267985944929537

namespace A060459

/-- `round(∑[a(n-1)+2]^3)` -/
def P15356267985944929537.Spec : Prop :=
  ∀ n, (P15356267985944929537.a n : ℤ) = A060459 n

end A060459

/-! ## A060459.P3994346622110218530

`∑[a(n-1)+4]^3/8` with `a(0)=0`
-/

namespace A060459.P3994346622110218530
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0] fun n f1 =>
  f1 (n - 1) + 4

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((∑ j ∈ Finset.range (n + 1), f1 j) ^ 3 : ℕ) : ℚ) / 8

end

end A060459.P3994346622110218530

namespace A060459

/-- `∑[a(n-1)+4]^3/8` -/
def P3994346622110218530.Spec : Prop :=
  ∀ n, P3994346622110218530.a n = (A060459 n : ℚ)

end A060459

/-! ## A060459.P16770540734811683530

`abs((n+1-record[(n-1)²])^3)`
-/

namespace A060459.P16770540734811683530
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |((n + 1 : ℤ) - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) ^ 3|

end

end A060459.P16770540734811683530

namespace A060459

/-- `abs((n+1-record[(n-1)²])^3)` -/
def P16770540734811683530.Spec : Prop :=
  ∀ n, P16770540734811683530.a n = A060459 n

end A060459

/-! ## A060459.P3100029392046144883

`-(n+1-record[(n-1)²])^3`
-/

namespace A060459.P3100029392046144883
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(((n + 1 : ℤ) - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) ^ 3)

end

end A060459.P3100029392046144883

namespace A060459

/-- `-(n+1-record[(n-1)²])^3` -/
def P3100029392046144883.Spec : Prop :=
  ∀ n, P3100029392046144883.a n = A060459 n

end A060459

/-! ## A060459.P12391922634899807372

`∑[n]²*xor(1, (2*n+1)²)`
-/

namespace A060459.P12391922634899807372
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 * Nat.xor 1 ((2 * n + 1) ^ 2)

end

end A060459.P12391922634899807372

namespace A060459

/-- `∑[n]²*xor(1, (2*n+1)²)` -/
def P12391922634899807372.Spec : Prop :=
  ∀ n, (P12391922634899807372.a n : ℤ) = A060459 n

end A060459

/-! ## A060459.P5866983469042163340

`∑[n]²*∑[a(n-1)+8]` with `a(0)=0`
-/

namespace A060459.P5866983469042163340
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0] fun n f2 =>
  f2 (n - 1) + 8

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 * (∑ j ∈ Finset.range (n + 1), f2 j)

end

end A060459.P5866983469042163340

namespace A060459

/-- `∑[n]²*∑[a(n-1)+8]` -/
def P5866983469042163340.Spec : Prop :=
  ∀ n, (P5866983469042163340.a n : ℤ) = A060459 n

end A060459

/-! ## A060459.P14893170917834488611

`lcm((n+1)², n²)*∑[2*n]`
-/

namespace A060459.P14893170917834488611
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm ((n + 1) ^ 2) (n ^ 2) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A060459.P14893170917834488611

namespace A060459

/-- `lcm((n+1)², n²)*∑[2*n]` -/
def P14893170917834488611.Spec : Prop :=
  ∀ n, (P14893170917834488611.a n : ℤ) = A060459 n

end A060459

/-! ## A060459.P12024248050681379493

`2*∑[2*n]²*C(n+1, 2)`
-/

namespace A060459.P12024248050681379493
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 * Nat.choose (n + 1) 2)

end

end A060459.P12024248050681379493

namespace A060459

/-- `2*∑[2*n]²*C(n+1, 2)` -/
def P12024248050681379493.Spec : Prop :=
  ∀ n, (P12024248050681379493.a n : ℤ) = A060459 n

end A060459

/-! ## A060459.P2951245377042951172

`a(n-1)%4+(n²+n)^3` with `a(0)=0`
-/

namespace A060459.P2951245377042951172
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) % 4 + (n ^ 2 + n) ^ 3

end

end A060459.P2951245377042951172

namespace A060459

/-- `a(n-1)%4+(n²+n)^3` -/
def P2951245377042951172.Spec : Prop :=
  ∀ n, (P2951245377042951172.a n : ℤ) = A060459 n

end A060459

/-! ## A060459.P8929794183745562362

`∑[a(n-1)-2]²*∑[2*n]` with `a(0)=0`
-/

namespace A060459.P8929794183745562362
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  f1 (n - 1) - 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 * ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

end

end A060459.P8929794183745562362

namespace A060459

/-- `∑[a(n-1)-2]²*∑[2*n]` -/
def P8929794183745562362.Spec : Prop :=
  ∀ n, P8929794183745562362.a n = A060459 n

end A060459

/-! ## A060459.P16287502431699168311

`((2*n+1)²-1)*C(n+1, 2)²`
-/

namespace A060459.P16287502431699168311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((2 * n + 1) ^ 2 : ℤ) - 1) * (Nat.choose (n + 1) 2 ^ 2 : ℤ)

end

end A060459.P16287502431699168311

namespace A060459

/-- `((2*n+1)²-1)*C(n+1, 2)²` -/
def P16287502431699168311.Spec : Prop :=
  ∀ n, P16287502431699168311.a n = A060459 n

theorem P16287502431699168311.correct : P16287502431699168311.Spec := by
  intro n
  simp only [A060459, Nat.add_sub_cancel, A060459.P16287502431699168311.a, A060459.P13091624147768298715.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A060459

/-! ## A060459.P15586103936853714200

`(n+1)*∑[2*n]²*gcd(n, 2*n)`
-/

namespace A060459.P15586103936853714200
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 * Nat.gcd n (2 * n))

end

end A060459.P15586103936853714200

namespace A060459

/-- `(n+1)*∑[2*n]²*gcd(n, 2*n)` -/
def P15586103936853714200.Spec : Prop :=
  ∀ n, (P15586103936853714200.a n : ℤ) = A060459 n

end A060459

/-!
# A060460: Consider the final n decimal digits of 2^j for all values of j. They are periodic. Sequence gives position (or phase) of the maximal value seen in these n digits.

The programs for A060460, the canonical program `A060460.P1071313539857256782` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A060460 has offset 1).

The definition of A060460 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A060460.P1071313539857256782

`2*5^n+n+1`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A060460

/-- `2*5^n+n+1` -/
def P1071313539857256782.Spec : Prop :=
  ∀ n, (P1071313539857256782.a n : ℤ) = A060460 (n + 1)

theorem P1071313539857256782.correct : P1071313539857256782.Spec := by
  intro n
  simp only [A060460, Nat.add_sub_cancel]

end A060460

/-! ## A060460.P13177582535284435370

`∑[ogf((3-9x+2x^2)/(1-6x+5x^2))]`
-/

namespace A060460.P13177582535284435370
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, -9, 2] [1, -6, 5] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A060460.P13177582535284435370

namespace A060460

/-- `∑[ogf((3-9x+2x^2)/(1-6x+5x^2))]` -/
def P13177582535284435370.Spec : Prop :=
  ∀ n, P13177582535284435370.a n = A060460 (n + 1)

end A060460

/-! ## A060460.P2614057127558736301

`∑[5*a(n-1)-4]` with `a(0)=3, a(1)=9`
-/

namespace A060460.P2614057127558736301
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [3, 9] fun n f1 =>
  5 * f1 (n - 1) - 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A060460.P2614057127558736301

namespace A060460

/-- `∑[5*a(n-1)-4]` -/
def P2614057127558736301.Spec : Prop :=
  ∀ n, P2614057127558736301.a n = A060460 (n + 1)

end A060460

/-! ## A060460.P17843729371760333227

`floor(5*(a(n-1)-n)+n+1)` with `a(0)=3`

`floor` is left out, it is the identity on integers.
-/

namespace A060460.P17843729371760333227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  5 * (a (n - 1) - (n : ℤ)) + (n + 1 : ℤ)

end

end A060460.P17843729371760333227

namespace A060460

/-- `floor(5*(a(n-1)-n)+n+1)` -/
def P17843729371760333227.Spec : Prop :=
  ∀ n, P17843729371760333227.a n = A060460 (n + 1)

theorem P17843729371760333227.correct : P17843729371760333227.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A060460, Nat.add_sub_cancel, A060460.P17843729371760333227.a, A060460.P1071313539857256782.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A060460, Nat.add_sub_cancel, A060460.P17843729371760333227.a, A060460.P1071313539857256782.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A060460

/-! ## A060460.P18335688337574739933

`5*((n+1)/5+a(n-1)-n)` with `a(0)=3`
-/

namespace A060460.P18335688337574739933
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [3] fun n a =>
  5 * ((n + 1 : ℚ) / 5 + (a (n - 1) - (n : ℚ)))

end

end A060460.P18335688337574739933

namespace A060460

/-- `5*((n+1)/5+a(n-1)-n)` -/
def P18335688337574739933.Spec : Prop :=
  ∀ n, P18335688337574739933.a n = (A060460 (n + 1) : ℚ)

theorem P18335688337574739933.correct : P18335688337574739933.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A060460, Nat.add_sub_cancel, A060460.P18335688337574739933.a, A060460.P1071313539857256782.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A060460, Nat.add_sub_cancel, A060460.P18335688337574739933.a, A060460.P1071313539857256782.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A060460

/-! ## A060460.P3588003551019992828

`floor(a(n-1)-(4*(n-a(n-1))-1))` with `a(0)=3`

`floor` is left out, it is the identity on integers.
-/

namespace A060460.P3588003551019992828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  a (n - 1) - (4 * ((n : ℤ) - a (n - 1)) - 1)

end

end A060460.P3588003551019992828

namespace A060460

/-- `floor(a(n-1)-(4*(n-a(n-1))-1))` -/
def P3588003551019992828.Spec : Prop :=
  ∀ n, P3588003551019992828.a n = A060460 (n + 1)

theorem P3588003551019992828.correct : P3588003551019992828.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A060460, Nat.add_sub_cancel, A060460.P3588003551019992828.a, A060460.P1071313539857256782.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A060460, Nat.add_sub_cancel, A060460.P3588003551019992828.a, A060460.P1071313539857256782.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A060460

/-! ## A060460.P12523106720628381307

`Δ[A034478(n)+∑[n]]`
-/

namespace A060460.P12523106720628381307
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034478 n + ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A060460.P12523106720628381307

namespace A060460

/-- `Δ[A034478(n)+∑[n]]` -/
def P12523106720628381307.Spec : Prop :=
  ∀ n, P12523106720628381307.a n = A060460 (n + 1)

end A060460

/-! ## A060460.P1105273088808382083

`Δ[A132079(n)+∑[n]]`
-/

namespace A060460.P1105273088808382083
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132079 n + ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A060460.P1105273088808382083

namespace A060460

/-- `Δ[A132079(n)+∑[n]]` -/
def P1105273088808382083.Spec : Prop :=
  ∀ n, P1105273088808382083.a n = A060460 (n + 1)

end A060460

/-! ## A060460.P12375753669514296201

`∑[2*A005054(n)+1]`
-/

namespace A060460.P12375753669514296201
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A005054 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A060460.P12375753669514296201

namespace A060460

/-- `∑[2*A005054(n)+1]` -/
def P12375753669514296201.Spec : Prop :=
  ∀ n, P12375753669514296201.a n = A060460 (n + 1)

end A060460

/-! ## A060460.P15440850637444942409

`Δ[∑[n]+2*A003463(n)]`
-/

namespace A060460.P15440850637444942409
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) + 2 * A003463 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A060460.P15440850637444942409

namespace A060460

/-- `Δ[∑[n]+2*A003463(n)]` -/
def P15440850637444942409.Spec : Prop :=
  ∀ n, P15440850637444942409.a n = A060460 (n + 1)

end A060460

/-! ## A060460.P14127858513585201258

`(A308807(n+1)+n+1)/2`
-/

namespace A060460.P14127858513585201258
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A308807 (n + 1) + (n + 1 : ℤ) : ℚ) / 2

end

end A060460.P14127858513585201258

namespace A060460

/-- `(A308807(n+1)+n+1)/2` -/
def P14127858513585201258.Spec : Prop :=
  ∀ n, P14127858513585201258.a n = (A060460 (n + 1) : ℚ)

theorem P14127858513585201258.correct : P14127858513585201258.Spec := by
  intro n
  simp only [A060460, Nat.add_sub_cancel, A060460.P14127858513585201258.a, A060460.P1071313539857256782.a, A308807, A308807.P224880946425158223.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A060460

/-! ## A060460.P18139510050454700574

`abs(Δ[A121177(n+1)]+1+n)`
-/

namespace A060460.P18139510050454700574
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121177 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n + 1 + (n : ℤ)|

end

end A060460.P18139510050454700574

namespace A060460

/-- `abs(Δ[A121177(n+1)]+1+n)` -/
def P18139510050454700574.Spec : Prop :=
  ∀ n, P18139510050454700574.a n = A060460 (n + 1)

end A060460

/-! ## A060460.P14604812101697185791

`Δ[(A027689(n)+A000351(n))/2]`
-/

namespace A060460.P14604812101697185791
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A027689 n + A000351 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A060460.P14604812101697185791

namespace A060460

/-- `Δ[(A027689(n)+A000351(n))/2]` -/
def P14604812101697185791.Spec : Prop :=
  ∀ n, P14604812101697185791.a n = (A060460 (n + 1) : ℚ)

theorem P14604812101697185791.correct : P14604812101697185791.Spec := by
  intro n
  simp only [A060460, Nat.add_sub_cancel, A060460.P14604812101697185791.f1, A060460.P14604812101697185791.a, A060460.P1071313539857256782.a, A000351, A000351.P3157381177678935815.a, A027689, A027689.P1842390006618827741.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A060460

/-! ## A060460.P16373740548490579196

`Δ[A121177(n+1)+sqrt(A000537(n))]`
-/

namespace A060460.P16373740548490579196
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A121177 (n + 1) : ℝ) + Real.sqrt (A000537 n : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A060460.P16373740548490579196

namespace A060460

/-- `Δ[A121177(n+1)+sqrt(A000537(n))]` -/
def P16373740548490579196.Spec : Prop :=
  ∀ n, P16373740548490579196.a n = (A060460 (n + 1) : ℝ)

end A060460

/-! ## A060460.P13940016287939797262

`abs(1-A034474(n)-A034474(n)-n)`
-/

namespace A060460.P13940016287939797262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A034474 n - A034474 n - (n : ℤ)|

end

end A060460.P13940016287939797262

namespace A060460

/-- `abs(1-A034474(n)-A034474(n)-n)` -/
def P13940016287939797262.Spec : Prop :=
  ∀ n, P13940016287939797262.a n = A060460 (n + 1)

end A060460

/-! ## A060460.P1586106797028813563

`(A133632(2*(n+1))+A004277(n+1))/2`
-/

namespace A060460.P1586106797028813563
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A133632 (2 * (n + 1)) + A004277 (n + 1) : ℚ) / 2

end

end A060460.P1586106797028813563

namespace A060460

/-- `(A133632(2*(n+1))+A004277(n+1))/2` -/
def P1586106797028813563.Spec : Prop :=
  ∀ n, P1586106797028813563.a n = (A060460 (n + 1) : ℚ)

end A060460

/-!
# A060461: Numbers k such that 6*k-1 and 6*k+1 are twin composites.

The programs for A060461, the canonical program `A060461.P10262298228971221195` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A060461 has offset 1).

The definition of A060461 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A060461.P10668685570056437129

`A259826(n+1)/6`
-/

namespace A060461.P10668685570056437129
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A259826 (n + 1) : ℚ) / 6

end

end A060461.P10668685570056437129

namespace A060461

/-- `A259826(n+1)/6` -/
def P10668685570056437129.Spec : Prop :=
  ∀ n, P10668685570056437129.a n = (A060461 (n + 1) : ℚ)

theorem P10668685570056437129.correct : P10668685570056437129.Spec := by
  intro n
  simp only [A060461, Nat.add_sub_cancel, A060461.P10668685570056437129.a, A060461.P10262298228971221195.a, A171696, A171696.P13576368370877495331.f1, A171696.P13576368370877495331.a, A259826, A259826.P6433926168437489858.a, A377540, A377540.P8485193340030685808.f1, A377540.P8485193340030685808.f2, A377540.P8485193340030685808.a, A161996, A161996.P3418427153135750794.f1, A161996.P3418427153135750794.a, A000045, A000045.P11838749114346432762.a, A100637, A100637.P13819822131188342482.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A060461

/-! ## A060461.P3324791064824191315

`A120382(n+1)/2`
-/

namespace A060461.P3324791064824191315
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A120382 (n + 1) : ℚ) / 2

end

end A060461.P3324791064824191315

namespace A060461

/-- `A120382(n+1)/2` -/
def P3324791064824191315.Spec : Prop :=
  ∀ n, P3324791064824191315.a n = (A060461 (n + 1) : ℚ)

theorem P3324791064824191315.correct : P3324791064824191315.Spec := by
  intro n
  simp only [A060461, Nat.add_sub_cancel, A060461.P3324791064824191315.a, A060461.P10262298228971221195.a, A120382, A120382.P11282506073447857493.a, A171696, A171696.P13576368370877495331.f1, A171696.P13576368370877495331.a, A377540, A377540.P8485193340030685808.f1, A377540.P8485193340030685808.f2, A377540.P8485193340030685808.a, A161996, A161996.P3418427153135750794.f1, A161996.P3418427153135750794.a, A000045, A000045.P11838749114346432762.a, A100637, A100637.P13819822131188342482.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A060461

/-! ## A060461.P10262298228971221195

`A171696(n+2)`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A060461

/-- `A171696(n+2)` -/
def P10262298228971221195.Spec : Prop :=
  ∀ n, P10262298228971221195.a n = A060461 (n + 1)

theorem P10262298228971221195.correct : P10262298228971221195.Spec := by
  intro n
  simp only [A060461, Nat.add_sub_cancel]

end A060461

/-! ## A060461.P13486384307870677336

`∩[A046953(n+1), A046954(n+1)]`
-/

namespace A060461.P13486384307870677336
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046953 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046954 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A060461.P13486384307870677336

namespace A060461

/-- `∩[A046953(n+1), A046954(n+1)]` -/
def P13486384307870677336.Spec : Prop :=
  ∀ n, (P13486384307870677336.a n : ℤ) = A060461 (n + 1)

end A060461

/-! ## A060461.P13002653643377023020

`lt[7, A020481(3*n+2)]`
-/

namespace A060461.P13002653643377023020
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020481 (3 * n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A060461.P13002653643377023020

namespace A060461

/-- `lt[7, A020481(3*n+2)]` -/
def P13002653643377023020.Spec : Prop :=
  ∀ n, (P13002653643377023020.a n : ℤ) = A060461 (n + 1)

end A060461

/-! ## A060461.P7039944207951628092

`A174221(A120382(n+1))`
-/

namespace A060461.P7039944207951628092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174221 (A120382 (n + 1)).toNat

end

end A060461.P7039944207951628092

namespace A060461

/-- `A174221(A120382(n+1))` -/
def P7039944207951628092.Spec : Prop :=
  ∀ n, P7039944207951628092.a n = A060461 (n + 1)

end A060461

/-! ## A060461.P2401101321840083842

`lt[5, A049653(3*n+2)]`
-/

namespace A060461.P2401101321840083842
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049653 (3 * n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A060461.P2401101321840083842

namespace A060461

/-- `lt[5, A049653(3*n+2)]` -/
def P2401101321840083842.Spec : Prop :=
  ∀ n, (P2401101321840083842.a n : ℤ) = A060461 (n + 1)

end A060461

/-! ## A060461.P4216696413563357866

`eq[A001031(3*n+1), A171611(3*n+1)]`
-/

namespace A060461.P4216696413563357866
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001031 (3 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171611 (3 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A060461.P4216696413563357866

namespace A060461

/-- `eq[A001031(3*n+1), A171611(3*n+1)]` -/
def P4216696413563357866.Spec : Prop :=
  ∀ n, (P4216696413563357866.a n : ℤ) = A060461 (n + 1)

end A060461

/-! ## A060461.P15883806539061738827

`A008615(A259826(n+1))`
-/

namespace A060461.P15883806539061738827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (A259826 (n + 1)).toNat

end

end A060461.P15883806539061738827

namespace A060461

/-- `A008615(A259826(n+1))` -/
def P15883806539061738827.Spec : Prop :=
  ∀ n, P15883806539061738827.a n = A060461 (n + 1)

end A060461

/-! ## A060461.P13881109734356998954

`lt[A093074(A004277(3*n)), A004277(n)]`
-/

namespace A060461.P13881109734356998954
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093074 (A004277 (3 * n)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A060461.P13881109734356998954

namespace A060461

/-- `lt[A093074(A004277(3*n)), A004277(n)]` -/
def P13881109734356998954.Spec : Prop :=
  ∀ n, (P13881109734356998954.a n : ℤ) = A060461 (n + 1)

end A060461

/-!
# A060462: Integers k such that k! is divisible by k*(k+1)/2.

The programs for A060462, the canonical program `A060462.P1796479077200654701` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A060462 has offset 1).

The definition of A060462 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A060462.P10661186906586933481

`lt[A106475(n), 1]`
-/

namespace A060462.P10661186906586933481
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106475 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A060462.P10661186906586933481

namespace A060462

/-- `lt[A106475(n), 1]` -/
def P10661186906586933481.Spec : Prop :=
  ∀ n, (P10661186906586933481.a n : ℤ) = A060462 (n + 1)

end A060462

/-! ## A060462.P2129967357082514432

`lt[0, A085341(n+1)]`
-/

namespace A060462.P2129967357082514432
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085341 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A060462.P2129967357082514432

namespace A060462

/-- `lt[0, A085341(n+1)]` -/
def P2129967357082514432.Spec : Prop :=
  ∀ n, (P2129967357082514432.a n : ℤ) = A060462 (n + 1)

end A060462

/-! ## A060462.P2810077775961086268

`lt[0, A325960(n+1)]`
-/

namespace A060462.P2810077775961086268
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325960 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A060462.P2810077775961086268

namespace A060462

/-- `lt[0, A325960(n+1)]` -/
def P2810077775961086268.Spec : Prop :=
  ∀ n, (P2810077775961086268.a n : ℤ) = A060462 (n + 1)

end A060462

/-! ## A060462.P11776541567270418423

`lt[0, A325972(n+1)]`
-/

namespace A060462.P11776541567270418423
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325972 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A060462.P11776541567270418423

namespace A060462

/-- `lt[0, A325972(n+1)]` -/
def P11776541567270418423.Spec : Prop :=
  ∀ n, (P11776541567270418423.a n : ℤ) = A060462 (n + 1)

end A060462

/-! ## A060462.P7521245988771101659

`lt[1, A026100(n+1)]`
-/

namespace A060462.P7521245988771101659
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026100 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A060462.P7521245988771101659

namespace A060462

/-- `lt[1, A026100(n+1)]` -/
def P7521245988771101659.Spec : Prop :=
  ∀ n, (P7521245988771101659.a n : ℤ) = A060462 (n + 1)

end A060462

/-! ## A060462.P16653337657940369701

`lt[1, A325961(n+1)]`
-/

namespace A060462.P16653337657940369701
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325961 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A060462.P16653337657940369701

namespace A060462

/-- `lt[1, A325961(n+1)]` -/
def P16653337657940369701.Spec : Prop :=
  ∀ n, (P16653337657940369701.a n : ℤ) = A060462 (n + 1)

end A060462

/-! ## A060462.P14696996410618723421

`lt[1, A340273(n+1)]`
-/

namespace A060462.P14696996410618723421
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340273 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A060462.P14696996410618723421

namespace A060462

/-- `lt[1, A340273(n+1)]` -/
def P14696996410618723421.Spec : Prop :=
  ∀ n, (P14696996410618723421.a n : ℤ) = A060462 (n + 1)

end A060462

/-! ## A060462.P3379519854680942839

`lt[2, A334662(n+1)]`
-/

namespace A060462.P3379519854680942839
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334662 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A060462.P3379519854680942839

namespace A060462

/-- `lt[2, A334662(n+1)]` -/
def P3379519854680942839.Spec : Prop :=
  ∀ n, (P3379519854680942839.a n : ℤ) = A060462 (n + 1)

end A060462

/-! ## A060462.P1796479077200654701

`lt[2, A349213(n+1)]`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A060462

/-- `lt[2, A349213(n+1)]` -/
def P1796479077200654701.Spec : Prop :=
  ∀ n, (P1796479077200654701.a n : ℤ) = A060462 (n + 1)

theorem P1796479077200654701.correct : P1796479077200654701.Spec := by
  intro n
  simp only [A060462, Nat.add_sub_cancel]

end A060462

/-! ## A060462.P16376754250398906317

`lt[2, A349322(n+1)]`
-/

namespace A060462.P16376754250398906317
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349322 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A060462.P16376754250398906317

namespace A060462

/-- `lt[2, A349322(n+1)]` -/
def P16376754250398906317.Spec : Prop :=
  ∀ n, (P16376754250398906317.a n : ℤ) = A060462 (n + 1)

end A060462

/-! ## A060462.P15866045835578268464

`lt[2, A349693(n+1)]`
-/

namespace A060462.P15866045835578268464
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349693 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A060462.P15866045835578268464

namespace A060462

/-- `lt[2, A349693(n+1)]` -/
def P15866045835578268464.Spec : Prop :=
  ∀ n, (P15866045835578268464.a n : ℤ) = A060462 (n + 1)

end A060462

/-! ## A060462.P9254281665348386600

`lt[A319997(n+1), n]`
-/

namespace A060462.P9254281665348386600
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319997 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A060462.P9254281665348386600

namespace A060462

/-- `lt[A319997(n+1), n]` -/
def P9254281665348386600.Spec : Prop :=
  ∀ n, (P9254281665348386600.a n : ℤ) = A060462 (n + 1)

end A060462

/-! ## A060462.P18300190118527722853

`comp[A040976(n+2)]+1`
-/

namespace A060462.P18300190118527722853
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040976 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A060462.P18300190118527722853

namespace A060462

/-- `comp[A040976(n+2)]+1` -/
def P18300190118527722853.Spec : Prop :=
  ∀ n, (P18300190118527722853.a n : ℤ) = A060462 (n + 1)

end A060462

/-! ## A060462.P1987039352662094092

`lt[atan(n), A001222(n+1)]`
-/

namespace A060462.P1987039352662094092
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.arctan (n : ℝ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℝ)) n

end

end A060462.P1987039352662094092

namespace A060462

/-- `lt[atan(n), A001222(n+1)]` -/
def P1987039352662094092.Spec : Prop :=
  ∀ n, (P1987039352662094092.a n : ℤ) = A060462 (n + 1)

end A060462

/-! ## A060462.P8787099206709712972

`abs(1-comp[A006530(n+1)])`
-/

namespace A060462.P8787099206709712972
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ)|

end

end A060462.P8787099206709712972

namespace A060462

/-- `abs(1-comp[A006530(n+1)])` -/
def P8787099206709712972.Spec : Prop :=
  ∀ n, P8787099206709712972.a n = A060462 (n + 1)

end A060462

/-! ## A060462.P1263788609032255244

`abs(1-comp[A020639(n+1)])`
-/

namespace A060462.P1263788609032255244
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ)|

end

end A060462.P1263788609032255244

namespace A060462

/-- `abs(1-comp[A020639(n+1)])` -/
def P1263788609032255244.Spec : Prop :=
  ∀ n, P1263788609032255244.a n = A060462 (n + 1)

end A060462

/-! ## A060462.P10243080849666882789

`lt[gcd(2, n), A000005(n+1)]`
-/

namespace A060462.P10243080849666882789
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 2 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A060462.P10243080849666882789

namespace A060462

/-- `lt[gcd(2, n), A000005(n+1)]` -/
def P10243080849666882789.Spec : Prop :=
  ∀ n, (P10243080849666882789.a n : ℤ) = A060462 (n + 1)

end A060462

/-! ## A060462.P8900671799269789946

`lt[A000010(n+1), lcm(2, n)]`
-/

namespace A060462.P8900671799269789946
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 2 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A060462.P8900671799269789946

namespace A060462

/-- `lt[A000010(n+1), lcm(2, n)]` -/
def P8900671799269789946.Spec : Prop :=
  ∀ n, (P8900671799269789946.a n : ℤ) = A060462 (n + 1)

end A060462

/-! ## A060462.P13368157445717150639

`lt[A006530(or(1, n)), n+1]`
-/

namespace A060462.P13368157445717150639
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (Nat.lor 1 n)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A060462.P13368157445717150639

namespace A060462

/-- `lt[A006530(or(1, n)), n+1]` -/
def P13368157445717150639.Spec : Prop :=
  ∀ n, (P13368157445717150639.a n : ℤ) = A060462 (n + 1)

end A060462

/-! ## A060462.P773938400663985207

`A065310(n)+a(n-1)` with `a(0)=1, a(1)=3`
-/

namespace A060462.P773938400663985207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  A065310 n + a (n - 1)

end

end A060462.P773938400663985207

namespace A060462

/-- `A065310(n)+a(n-1)` -/
def P773938400663985207.Spec : Prop :=
  ∀ n, P773938400663985207.a n = A060462 (n + 1)

end A060462

/-!
# A060463: Number of open positions in the game Fair Share and Varied Pairs starting with n tokens.

The programs for A060463, there is no canonical definition to state claims against.
-/

/-! ## A060463.P10647076591960922266

`C(and(n, n-1), A145540(2*n+1))`
-/

namespace A060463.P10647076591960922266
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (Int.land (n : ℤ) ((n : ℤ) - 1)).toNat (A145540 (2 * n + 1)).toNat

end

end A060463.P10647076591960922266

/-! ## A060463.P9388210363851366005

`A004247(A224937(∑[n]))`
-/

namespace A060463.P9388210363851366005
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004247 (A224937 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A060463.P9388210363851366005

/-! ## A060463.P7663975372329056242

`A321800(A028697(n))+1`
-/

namespace A060463.P7663975372329056242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321800 (A028697 n).toNat + 1

end

end A060463.P7663975372329056242

/-! ## A060463.P13020410956207246797

`A321800(A093041(n))+1`
-/

namespace A060463.P13020410956207246797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321800 (A093041 n).toNat + 1

end

end A060463.P13020410956207246797

/-! ## A060463.P12548949272084894124

`∑{e}[A185293(n), A075875(#)]`
-/

namespace A060463.P12548949272084894124
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185293 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A075875 (Nat.factorization (f1 n).natAbs p)

end

end A060463.P12548949272084894124

/-!
# A060464: Numbers that are not congruent to 4 or 5 mod 9.

The programs for A060464, the canonical program `A060464.P1238324434526818081` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A060464 has offset 1).

The definition of A060464 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A060464.P1238324434526818081

`a(n-7)+9` with `a(0)=0, a(1)=1, a(2)=2, a(3)=3, a(4)=6, a(5)=7, a(6)=8`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A060464

/-- `a(n-7)+9` -/
def P1238324434526818081.Spec : Prop :=
  ∀ n, (P1238324434526818081.a n : ℤ) = A060464 (n + 1)

theorem P1238324434526818081.correct : P1238324434526818081.Spec := by
  intro n
  simp only [A060464, Nat.add_sub_cancel]

end A060464

/-! ## A060464.P7917175456859067466

`comp[a(n-2)+9]` with `a(0)=4, a(1)=5`
-/

namespace A060464.P7917175456859067466
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [4, 5] fun n f1 =>
  f1 (n - 2) + 9

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A060464.P7917175456859067466

namespace A060464

/-- `comp[a(n-2)+9]` -/
def P7917175456859067466.Spec : Prop :=
  ∀ n, (P7917175456859067466.a n : ℤ) = A060464 (n + 1)

end A060464

/-! ## A060464.P5622556971559259665

`2*round(8*n/7)-n`
-/

namespace A060464.P5622556971559259665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.roundAway (8 * ((n : ℚ) / 7)) - (n : ℤ)

end

end A060464.P5622556971559259665

namespace A060464

/-- `2*round(8*n/7)-n` -/
def P5622556971559259665.Spec : Prop :=
  ∀ n, P5622556971559259665.a n = A060464 (n + 1)

end A060464

/-! ## A060464.P5042095432304436394

`lt[val((4*n)²²+2, 3), 2]`
-/

namespace A060464.P5042095432304436394
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (((4 * n) ^ 2) ^ 2 + 2) 3

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A060464.P5042095432304436394

namespace A060464

/-- `lt[val((4*n)²²+2, 3), 2]` -/
def P5042095432304436394.Spec : Prop :=
  ∀ n, (P5042095432304436394.a n : ℤ) = A060464 (n + 1)

end A060464

/-! ## A060464.P12786789415514845986

`lt[(3-dr(3-n))*(n-3), 1]`
-/

namespace A060464.P12786789415514845986
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 - (SequenceMachineLib.digitalRoot (3 - (n : ℤ)) : ℤ)) * ((n : ℤ) - 3)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A060464.P12786789415514845986

namespace A060464

/-- `lt[(3-dr(3-n))*(n-3), 1]` -/
def P12786789415514845986.Spec : Prop :=
  ∀ n, (P12786789415514845986.a n : ℤ) = A060464 (n + 1)

end A060464

/-! ## A060464.P854841451381903956

`lt[(n-2)^(3-dr(3-n)), 2]`
-/

namespace A060464.P854841451381903956
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 2 : ℚ) ^ (3 - (SequenceMachineLib.digitalRoot (3 - (n : ℤ)) : ℤ) : ℤ)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℚ)) n

end

end A060464.P854841451381903956

namespace A060464

/-- `lt[(n-2)^(3-dr(3-n)), 2]` -/
def P854841451381903956.Spec : Prop :=
  ∀ n, (P854841451381903956.a n : ℤ) = A060464 (n + 1)

end A060464

/-! ## A060464.P5271502479911188683

`lt[n², (n+1)^dr((2*n)²)]`
-/

namespace A060464.P5271502479911188683
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ SequenceMachineLib.digitalRoot ((2 * n) ^ 2 : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A060464.P5271502479911188683

namespace A060464

/-- `lt[n², (n+1)^dr((2*n)²)]` -/
def P5271502479911188683.Spec : Prop :=
  ∀ n, (P5271502479911188683.a n : ℤ) = A060464 (n + 1)

end A060464

/-! ## A060464.P17908371898132384905

`lt[2*n, (n+1)*dr((2*n)²)!]`
-/

namespace A060464.P17908371898132384905
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * Nat.factorial (SequenceMachineLib.digitalRoot ((2 * n) ^ 2 : ℤ))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A060464.P17908371898132384905

namespace A060464

/-- `lt[2*n, (n+1)*dr((2*n)²)!]` -/
def P17908371898132384905.Spec : Prop :=
  ∀ n, (P17908371898132384905.a n : ℤ) = A060464 (n + 1)

end A060464

/-! ## A060464.P13074572489842321418

`sqrt(A117676(n))`
-/

namespace A060464.P13074572489842321418
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A117676 n : ℝ)

end

end A060464.P13074572489842321418

namespace A060464

/-- `sqrt(A117676(n))` -/
def P13074572489842321418.Spec : Prop :=
  ∀ n, P13074572489842321418.a n = (A060464 (n + 1) : ℝ)

end A060464

/-! ## A060464.P6978848552486926569

`comp[∑[A040019(n)]]`
-/

namespace A060464.P6978848552486926569
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040019 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A060464.P6978848552486926569

namespace A060464

/-- `comp[∑[A040019(n)]]` -/
def P6978848552486926569.Spec : Prop :=
  ∀ n, (P6978848552486926569.a n : ℤ) = A060464 (n + 1)

end A060464

/-! ## A060464.P14636411364729202094

`comp[A156638(n+1)]`
-/

namespace A060464.P14636411364729202094
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156638 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A060464.P14636411364729202094

namespace A060464

/-- `comp[A156638(n+1)]` -/
def P14636411364729202094.Spec : Prop :=
  ∀ n, (P14636411364729202094.a n : ℤ) = A060464 (n + 1)

end A060464

/-! ## A060464.P12224595364037506961

`comp[A274406(n+1)-4]`
-/

namespace A060464.P12224595364037506961
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274406 (n + 1) - 4

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A060464.P12224595364037506961

namespace A060464

/-- `comp[A274406(n+1)-4]` -/
def P12224595364037506961.Spec : Prop :=
  ∀ n, (P12224595364037506961.a n : ℤ) = A060464 (n + 1)

end A060464

/-! ## A060464.P16504519634672823359

`comp[A168373(n+1)+n]`
-/

namespace A060464.P16504519634672823359
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168373 (n + 1) + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A060464.P16504519634672823359

namespace A060464

/-- `comp[A168373(n+1)+n]` -/
def P16504519634672823359.Spec : Prop :=
  ∀ n, (P16504519634672823359.a n : ℤ) = A060464 (n + 1)

end A060464

/-! ## A060464.P1680000064517031932

`comp[A106387(n+1)-n]`
-/

namespace A060464.P1680000064517031932
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106387 (n + 1) - (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A060464.P1680000064517031932

namespace A060464

/-- `comp[A106387(n+1)-n]` -/
def P1680000064517031932.Spec : Prop :=
  ∀ n, (P1680000064517031932.a n : ℤ) = A060464 (n + 1)

end A060464

/-! ## A060464.P10571985684535415908

`comp[A168198(3*n+1)-5]`
-/

namespace A060464.P10571985684535415908
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168198 (3 * n + 1) - 5

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A060464.P10571985684535415908

namespace A060464

/-- `comp[A168198(3*n+1)-5]` -/
def P10571985684535415908.Spec : Prop :=
  ∀ n, (P10571985684535415908.a n : ℤ) = A060464 (n + 1)

end A060464

/-! ## A060464.P4955926730579397817

`comp[A168376(n+1)+1+n]`
-/

namespace A060464.P4955926730579397817
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168376 (n + 1) + 1 + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A060464.P4955926730579397817

namespace A060464

/-- `comp[A168376(n+1)+1+n]` -/
def P4955926730579397817.Spec : Prop :=
  ∀ n, (P4955926730579397817.a n : ℤ) = A060464 (n + 1)

end A060464

/-! ## A060464.P8815937855092366486

`comp[A168336(n+1)-1+n]`
-/

namespace A060464.P8815937855092366486
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168336 (n + 1) - 1 + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A060464.P8815937855092366486

namespace A060464

/-- `comp[A168336(n+1)-1+n]` -/
def P8815937855092366486.Spec : Prop :=
  ∀ n, (P8815937855092366486.a n : ℤ) = A060464 (n + 1)

end A060464

/-! ## A060464.P14337610305408805837

`comp[A168332(n+1)-2+n]`
-/

namespace A060464.P14337610305408805837
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168332 (n + 1) - 2 + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A060464.P14337610305408805837

namespace A060464

/-- `comp[A168332(n+1)-2+n]` -/
def P14337610305408805837.Spec : Prop :=
  ∀ n, (P14337610305408805837.a n : ℤ) = A060464 (n + 1)

end A060464

/-!
# A060468: Number of fair distributions (equal sum) of the integers {1,..,4n} between A and B = number of solutions to the equation {+-1 +-2 +- 3 ... +-4*n = 0}.

The programs for A060468, there is no canonical definition to state claims against.
-/

/-! ## A060468.P11303371283190384048

`A025591(4*n)`
-/

namespace A060468.P11303371283190384048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025591 (4 * n)

end

end A060468.P11303371283190384048

/-! ## A060468.P15520660685158836137

`A063865(4*n)`
-/

namespace A060468.P15520660685158836137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063865 (4 * n)

end

end A060468.P15520660685158836137

/-! ## A060468.P15147344730826844087

`A063867(4*n)`
-/

namespace A060468.P15147344730826844087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063867 (4 * n)

end

end A060468.P15147344730826844087

/-! ## A060468.P5659910303680098325

`record[gcd(val(n+1, 2), A063865(n))]`
-/

namespace A060468.P5659910303680098325
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (SequenceMachineLib.valuation (n + 1) 2 : ℤ) (A063865 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A060468.P5659910303680098325

/-! ## A060468.P15237090796936167297

`lcm(2, n^C(2, a(n-1)))*A060005(n)` with `a(0)=1`
-/

namespace A060468.P15237090796936167297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (Nat.lcm 2 (n ^ Nat.choose 2 (a (n - 1)).toNat) : ℤ) * A060005 n

end

end A060468.P15237090796936167297

/-! ## A060468.P3152538238961908786

`record[A025591(A022998(n))]`
-/

namespace A060468.P3152538238961908786
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025591 (A022998 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A060468.P3152538238961908786

/-! ## A060468.P5331760900633953103

`record[A063865(A014681(n))]`
-/

namespace A060468.P5331760900633953103
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063865 (A014681 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A060468.P5331760900633953103

/-! ## A060468.P13680178022712911006

`record[A063865(Δ[A002061(n)])]`
-/

namespace A060468.P13680178022712911006
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002061 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063865 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A060468.P13680178022712911006

/-! ## A060468.P2714248654639377120

`record[A063865(n)-A058377(n+1)]`
-/

namespace A060468.P2714248654639377120
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063865 n - A058377 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A060468.P2714248654639377120

/-! ## A060468.P15117946034400839515

`record[A063865(n)-A063865(n+1)]`
-/

namespace A060468.P15117946034400839515
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063865 n - A063865 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A060468.P15117946034400839515

/-!
# A060469: Smallest positive a(n) such that number of solutions to a(n) = a(j)+a(k) j

The programs for A060469, the canonical program `A060469.P17771194765734652220` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A060469 has offset 1).

The definition of A060469 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A060469.P17771194765734652220

`∪[A003662(n+1), A038874(n+1)]`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A060469

/-- `∪[A003662(n+1), A038874(n+1)]` -/
def P17771194765734652220.Spec : Prop :=
  ∀ n, (P17771194765734652220.a n : ℤ) = A060469 (n + 1)

theorem P17771194765734652220.correct : P17771194765734652220.Spec := by
  intro n
  simp only [A060469, Nat.add_sub_cancel]

end A060469

/-! ## A060469.P2033137516248070510

`∪[A003662(n+1), A056899(n+1)]`
-/

namespace A060469.P2033137516248070510
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003662 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056899 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A060469.P2033137516248070510

namespace A060469

/-- `∪[A003662(n+1), A056899(n+1)]` -/
def P2033137516248070510.Spec : Prop :=
  ∀ n, (P2033137516248070510.a n : ℤ) = A060469 (n + 1)

end A060469

/-! ## A060469.P8050818011027516285

`∪[A003662(n+1), A057838(n+1)]`
-/

namespace A060469.P8050818011027516285
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003662 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057838 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A060469.P8050818011027516285

namespace A060469

/-- `∪[A003662(n+1), A057838(n+1)]` -/
def P8050818011027516285.Spec : Prop :=
  ∀ n, (P8050818011027516285.a n : ℤ) = A060469 (n + 1)

end A060469

/-! ## A060469.P2821432178470720857

`lt[A007318(n²), A105614(n)]`
-/

namespace A060469.P2821432178470720857
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (n ^ 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105614 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A060469.P2821432178470720857

namespace A060469

/-- `lt[A007318(n²), A105614(n)]` -/
def P2821432178470720857.Spec : Prop :=
  ∀ n, (P2821432178470720857.a n : ℤ) = A060469 (n + 1)

end A060469

/-! ## A060469.P5625333685475435507

`lt[A174447(n²), A000029(n)]`
-/

namespace A060469.P5625333685475435507
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174447 (n ^ 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000029 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A060469.P5625333685475435507

namespace A060469

/-- `lt[A174447(n²), A000029(n)]` -/
def P5625333685475435507.Spec : Prop :=
  ∀ n, (P5625333685475435507.a n : ℤ) = A060469 (n + 1)

end A060469

/-!
# A060470: Smallest positive a(n) such that number of solutions to a(n)=a(j)+a(k) j

The programs for A060470, there is no canonical definition to state claims against.
-/

/-! ## A060470.P16697249319154634868

`∪[A003663(n+1), A292125(n+1)]`
-/

namespace A060470.P16697249319154634868
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003663 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292125 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A060470.P16697249319154634868

/-! ## A060470.P6007349476549174230

`∪[A003663(n+1), A330928(n+1)]`
-/

namespace A060470.P6007349476549174230
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003663 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330928 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A060470.P6007349476549174230

/-! ## A060470.P1659758848143691985

`∪[A003663(n+1), A330929(n+1)]`
-/

namespace A060470.P1659758848143691985
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003663 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330929 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A060470.P1659758848143691985

/-! ## A060470.P6316785170513710268

`∪[A003663(n+1), A331561(n+1)]`
-/

namespace A060470.P6316785170513710268
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003663 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331561 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A060470.P6316785170513710268

/-! ## A060470.P9925789673621268066

`∪[A003663(n+1), A377272(n+1)]`
-/

namespace A060470.P9925789673621268066
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003663 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377272 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A060470.P9925789673621268066

/-!
# A060471: Smallest positive a(n) such that number of solutions to a(n)=a(j)+a(k) j

The programs for A060471, there is no canonical definition to state claims against.
-/

/-! ## A060471.P6256995497051755427

`lt[A222438(∑[6*n-5]+11), n*(9*n-6)]`
-/

namespace A060471.P6256995497051755427
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (6 * n : ℤ) - 5

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222438 (∑ j ∈ Finset.range (n + 1), f2 j + 11).toNat

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * ((9 * n : ℤ) - 6)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f3 j) n

end

end A060471.P6256995497051755427

/-! ## A060471.P16491486215966233644

`∩[A033060(n+1), A243903(n+1)]`
-/

namespace A060471.P16491486215966233644
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033060 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243903 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A060471.P16491486215966233644

/-! ## A060471.P18304855277562151232

`∑[A020639(A185316(A027188(n)))]`
-/

namespace A060471.P18304855277562151232
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A185316 (A027188 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A060471.P18304855277562151232

/-! ## A060471.P6946161829303707868

`∑[A020639(A054911(A136040(n+1)))]`
-/

namespace A060471.P6946161829303707868
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A054911 (A136040 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A060471.P6946161829303707868

/-!
# A060472: Smallest positive a(n) such that the number of solutions to a(n)=a(j)+a(k), j

The programs for A060472, there is no canonical definition to state claims against.
-/

/-! ## A060472.P604386300607092658

`A119823(lt[A284731(n+2), A268448(n+1)])`
-/

namespace A060472.P604386300607092658
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284731 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268448 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119823 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A060472.P604386300607092658

/-! ## A060472.P3169968023392927173

`A048266(A130514(n+1))`
-/

namespace A060472.P3169968023392927173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048266 (A130514 (n + 1)).toNat

end

end A060472.P3169968023392927173

/-! ## A060472.P16168241956244895270

`∑[A337198(A111242(n+1))]`
-/

namespace A060472.P16168241956244895270
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337198 (A111242 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A060472.P16168241956244895270

/-!
# A060473: a(n) = numerator of phi(n)/(n+1), where phi(n) is Euler's phi, A000010.

The programs for A060473, the canonical program `A060473.P10331882386203944157` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A060473 has offset 1).

The definition of A060473 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A060473.P3469939523798432716

`lcm(n+2, A000010(n+1))/(n+2)`
-/

namespace A060473.P3469939523798432716
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (n + 2 : ℤ) (A000010 (n + 1)) : ℚ) / (n + 2 : ℚ)

end

end A060473.P3469939523798432716

namespace A060473

/-- `lcm(n+2, A000010(n+1))/(n+2)` -/
def P3469939523798432716.Spec : Prop :=
  ∀ n, P3469939523798432716.a n = (A060473 (n + 1) : ℚ)

end A060473

/-! ## A060473.P11455903824472687265

`A000010(n+1)/A058656(n+1)`
-/

namespace A060473.P11455903824472687265
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 (n + 1) : ℚ) / (A058656 (n + 1) : ℚ)

end

end A060473.P11455903824472687265

namespace A060473

/-- `A000010(n+1)/A058656(n+1)` -/
def P11455903824472687265.Spec : Prop :=
  ∀ n, P11455903824472687265.a n = (A060473 (n + 1) : ℚ)

end A060473

/-! ## A060473.P5286959803026962957

`A000010(2*n+1-n)/gcd(n+2, A000010(n+1))`
-/

namespace A060473.P5286959803026962957
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 (2 * n + 1 - n) : ℚ) / (Int.gcd (n + 2 : ℤ) (A000010 (n + 1)) : ℚ)

end

end A060473.P5286959803026962957

namespace A060473

/-- `A000010(2*n+1-n)/gcd(n+2, A000010(n+1))` -/
def P5286959803026962957.Spec : Prop :=
  ∀ n, P5286959803026962957.a n = (A060473 (n + 1) : ℚ)

end A060473

/-! ## A060473.P13738780095900907931

`A000010(n+1)/gcd(A000010(n+1), A057544(n))`
-/

namespace A060473.P13738780095900907931
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 (n + 1) : ℚ) / (Int.gcd (A000010 (n + 1)) (A057544 n) : ℚ)

end

end A060473.P13738780095900907931

namespace A060473

/-- `A000010(n+1)/gcd(A000010(n+1), A057544(n))` -/
def P13738780095900907931.Spec : Prop :=
  ∀ n, P13738780095900907931.a n = (A060473 (n + 1) : ℚ)

end A060473

/-! ## A060473.P10331882386203944157

`lcm(A000217(n+1), A023896(n+1))/A000217(n+1)`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A060473

/-- `lcm(A000217(n+1), A023896(n+1))/A000217(n+1)` -/
def P10331882386203944157.Spec : Prop :=
  ∀ n, P10331882386203944157.a n = (A060473 (n + 1) : ℚ)

end A060473

/-! ## A060473.P6841689202721501793

`lcm(A005843(n+2), A140434(n+1))/A005843(n+2)`
-/

namespace A060473.P6841689202721501793
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (A005843 (n + 2)) (A140434 (n + 1)) : ℚ) / (A005843 (n + 2) : ℚ)

end

end A060473.P6841689202721501793

namespace A060473

/-- `lcm(A005843(n+2), A140434(n+1))/A005843(n+2)` -/
def P6841689202721501793.Spec : Prop :=
  ∀ n, P6841689202721501793.a n = (A060473 (n + 1) : ℚ)

end A060473

/-! ## A060473.P10826983519954552427

`A023022(2*(n+1))/gcd(A023022(2*(n+1)), A026741(n+2))`
-/

namespace A060473.P10826983519954552427
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A023022 (2 * (n + 1)) : ℚ) / (Int.gcd (A023022 (2 * (n + 1))) (A026741 (n + 2)) : ℚ)

end

end A060473.P10826983519954552427

namespace A060473

/-- `A023022(2*(n+1))/gcd(A023022(2*(n+1)), A026741(n+2))` -/
def P10826983519954552427.Spec : Prop :=
  ∀ n, P10826983519954552427.a n = (A060473 (n + 1) : ℚ)

end A060473

/-! ## A060473.P8213756360314200669

`A164306(A000010(n+1)+∑[n+1])`
-/

namespace A060473.P8213756360314200669
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164306 (A000010 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A060473.P8213756360314200669

namespace A060473

/-- `A164306(A000010(n+1)+∑[n+1])` -/
def P8213756360314200669.Spec : Prop :=
  ∀ n, P8213756360314200669.a n = A060473 (n + 1)

end A060473

/-! ## A060473.P17868619614525362656

`A164306(A039649(n+1)+A000096(n))`
-/

namespace A060473.P17868619614525362656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164306 (A039649 (n + 1) + A000096 n).toNat

end

end A060473.P17868619614525362656

namespace A060473

/-- `A164306(A039649(n+1)+A000096(n))` -/
def P17868619614525362656.Spec : Prop :=
  ∀ n, P17868619614525362656.a n = A060473 (n + 1)

end A060473

/-! ## A060473.P15157615794260848767

`A164306(A000217(n+1)+A000010(n+1))`
-/

namespace A060473.P15157615794260848767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164306 (A000217 (n + 1) + A000010 (n + 1)).toNat

end

end A060473.P15157615794260848767

namespace A060473

/-- `A164306(A000217(n+1)+A000010(n+1))` -/
def P15157615794260848767.Spec : Prop :=
  ∀ n, P15157615794260848767.a n = A060473 (n + 1)

end A060473

/-!
# A060474: a(n) = denominator of phi(n)/(n+1), where phi(n) is Euler's phi, A000010.

The programs for A060474, the canonical program `A060474.P1792175694855090900` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A060474 has offset 1).

The definition of A060474 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A060474.P1792175694855090900

`(n+2)/A058656(n+1)`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A060474

/-- `(n+2)/A058656(n+1)` -/
def P1792175694855090900.Spec : Prop :=
  ∀ n, P1792175694855090900.a n = (A060474 (n + 1) : ℚ)

end A060474

/-! ## A060474.P14314583381190325684

`(n+2)/gcd(n+2, A000010(n+1))`
-/

namespace A060474.P14314583381190325684
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℚ) / (Int.gcd (n + 2 : ℤ) (A000010 (n + 1)) : ℚ)

end

end A060474.P14314583381190325684

namespace A060474

/-- `(n+2)/gcd(n+2, A000010(n+1))` -/
def P14314583381190325684.Spec : Prop :=
  ∀ n, P14314583381190325684.a n = (A060474 (n + 1) : ℚ)

end A060474

/-! ## A060474.P5071470805407814855

`(n+2)/gcd(A023900(n+1), A062830(n+1))`
-/

namespace A060474.P5071470805407814855
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℚ) / (Int.gcd (A023900 (n + 1)) (A062830 (n + 1)) : ℚ)

end

end A060474.P5071470805407814855

namespace A060474

/-- `(n+2)/gcd(A023900(n+1), A062830(n+1))` -/
def P5071470805407814855.Spec : Prop :=
  ∀ n, P5071470805407814855.a n = (A060474 (n + 1) : ℚ)

end A060474

/-! ## A060474.P9795009009005522952

`lcm(n+2, A173557(n+1))/A173557(n+1)`
-/

namespace A060474.P9795009009005522952
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (n + 2 : ℤ) (A173557 (n + 1)) : ℚ) / (A173557 (n + 1) : ℚ)

end

end A060474.P9795009009005522952

namespace A060474

/-- `lcm(n+2, A173557(n+1))/A173557(n+1)` -/
def P9795009009005522952.Spec : Prop :=
  ∀ n, P9795009009005522952.a n = (A060474 (n + 1) : ℚ)

end A060474

/-! ## A060474.P4312748376750588181

`A020725(n+1)/gcd(A002618(n+1), A020725(n+1))`
-/

namespace A060474.P4312748376750588181
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A020725 (n + 1) : ℚ) / (Int.gcd (A002618 (n + 1)) (A020725 (n + 1)) : ℚ)

end

end A060474.P4312748376750588181

namespace A060474

/-- `A020725(n+1)/gcd(A002618(n+1), A020725(n+1))` -/
def P4312748376750588181.Spec : Prop :=
  ∀ n, P4312748376750588181.a n = (A060474 (n + 1) : ℚ)

end A060474

/-! ## A060474.P3226283426282908042

`A168059(n+1)/gcd(A168059(n+1), A299822(n+1))`
-/

namespace A060474.P3226283426282908042
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A168059 (n + 1) : ℚ) / (Int.gcd (A168059 (n + 1)) (A299822 (n + 1)) : ℚ)

end

end A060474.P3226283426282908042

namespace A060474

/-- `A168059(n+1)/gcd(A168059(n+1), A299822(n+1))` -/
def P3226283426282908042.Spec : Prop :=
  ∀ n, P3226283426282908042.a n = (A060474 (n + 1) : ℚ)

end A060474

/-! ## A060474.P3788150235756790619

`lcm(A000010(2*(n+1)), A131738(n+1))/A000010(2*(n+1))`
-/

namespace A060474.P3788150235756790619
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (A000010 (2 * (n + 1))) (A131738 (n + 1)) : ℚ) / (A000010 (2 * (n + 1)) : ℚ)

end

end A060474.P3788150235756790619

namespace A060474

/-- `lcm(A000010(2*(n+1)), A131738(n+1))/A000010(2*(n+1))` -/
def P3788150235756790619.Spec : Prop :=
  ∀ n, P3788150235756790619.a n = (A060474 (n + 1) : ℚ)

end A060474

/-! ## A060474.P6982640168427263215

`A054531((n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1]+1+∑[n]+n)`
-/

namespace A060474.P6982640168427263215
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054531 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ) * ((∏ p ∈ Nat.primeFactors (f2 n), ((p : ℤ) - 1) : ℤ) : ℚ) + 1 + ((∑ j ∈ Finset.range (n + 1), f3 j + n : ℕ) : ℚ))).toNat

end

end A060474.P6982640168427263215

namespace A060474

/-- `A054531((n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1]+1+∑[n]+n)` -/
def P6982640168427263215.Spec : Prop :=
  ∀ n, P6982640168427263215.a n = A060474 (n + 1)

end A060474

/-! ## A060474.P5569999243176742840

`A054531(A000010(n+1)+∑[n+1])`
-/

namespace A060474.P5569999243176742840
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054531 (A000010 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A060474.P5569999243176742840

namespace A060474

/-- `A054531(A000010(n+1)+∑[n+1])` -/
def P5569999243176742840.Spec : Prop :=
  ∀ n, P5569999243176742840.a n = A060474 (n + 1)

end A060474

/-! ## A060474.P291447036149899107

`A054531(A039649(n+1)+A000096(n))`
-/

namespace A060474.P291447036149899107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054531 (A039649 (n + 1) + A000096 n).toNat

end

end A060474.P291447036149899107

namespace A060474

/-- `A054531(A039649(n+1)+A000096(n))` -/
def P291447036149899107.Spec : Prop :=
  ∀ n, P291447036149899107.a n = A060474 (n + 1)

end A060474

/-! ## A060474.P9249574016875579617

`A054531(A053158(n+1)+A000124(n))`
-/

namespace A060474.P9249574016875579617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054531 (A053158 (n + 1) + A000124 n).toNat

end

end A060474.P9249574016875579617

namespace A060474

/-- `A054531(A053158(n+1)+A000124(n))` -/
def P9249574016875579617.Spec : Prop :=
  ∀ n, P9249574016875579617.a n = A060474 (n + 1)

end A060474

/-! ## A060474.P9012325807805815175

`A054531(A000217(n+1)+A000010(n+1))`
-/

namespace A060474.P9012325807805815175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054531 (A000217 (n + 1) + A000010 (n + 1)).toNat

end

end A060474.P9012325807805815175

namespace A060474

/-- `A054531(A000217(n+1)+A000010(n+1))` -/
def P9012325807805815175.Spec : Prop :=
  ∀ n, P9012325807805815175.a n = A060474 (n + 1)

end A060474

/-! ## A060474.P10080122882553480992

`A054531(A016035(n+1)+A134869(n+1)+1)`
-/

namespace A060474.P10080122882553480992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054531 (A016035 (n + 1) + (A134869 (n + 1) + 1)).toNat

end

end A060474.P10080122882553480992

namespace A060474

/-- `A054531(A016035(n+1)+A134869(n+1)+1)` -/
def P10080122882553480992.Spec : Prop :=
  ∀ n, P10080122882553480992.a n = A060474 (n + 1)

end A060474

/-!
# A060475: Triangular array formed from successive differences of factorial numbers, then with factorials removed.

The programs for A060475, there is no canonical definition to state claims against.
-/

/-! ## A060475.P9234065763977217028

`A247490(comp[∑[n]])`
-/

namespace A060475.P9234065763977217028
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247490 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A060475.P9234065763977217028

/-! ## A060475.P7092244882807283114

`A086764(A061579(n))`
-/

namespace A060475.P7092244882807283114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086764 (A061579 n).toNat

end

end A060475.P7092244882807283114

/-! ## A060475.P455009510350359697

`A086764(A114327(n)+n)`
-/

namespace A060475.P455009510350359697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086764 (A114327 n + (n : ℤ)).toNat

end

end A060475.P455009510350359697

/-! ## A060475.P373774657585270006

`A086764(A038722(n+1)-1)`
-/

namespace A060475.P373774657585270006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086764 (A038722 (n + 1) - 1).toNat

end

end A060475.P373774657585270006

/-! ## A060475.P7450842486141676404

`A008279(n)-A324362(n)`
-/

namespace A060475.P7450842486141676404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008279 n - A324362 n

end

end A060475.P7450842486141676404

/-! ## A060475.P10998632874489897742

`A076732(n+1)/A002260(n+1)`
-/

namespace A060475.P10998632874489897742
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A076732 (n + 1) : ℚ) / (A002260 (n + 1) : ℚ)

end

end A060475.P10998632874489897742

/-! ## A060475.P2102660677556736800

`A047920(n)/A119502(n)`
-/

namespace A060475.P2102660677556736800
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A047920 n : ℚ) / (A119502 n : ℚ)

end

end A060475.P2102660677556736800

/-! ## A060475.P564045547033914059

`A047920(n)/gcd(A047920(n), A061312(n))`
-/

namespace A060475.P564045547033914059
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A047920 n : ℚ) / (Int.gcd (A047920 n) (A061312 n) : ℚ)

end

end A060475.P564045547033914059

/-! ## A060475.P17088902153732962244

`A144089(n)/A007318(n)`
-/

namespace A060475.P17088902153732962244
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A144089 n : ℚ) / (A007318 n : ℚ)

end

end A060475.P17088902153732962244

/-!
# A060476: Let n = 2^e_2 * 3^e_3 * 5^e_5 * ... be the prime factorization of n; sequence gives n such that 1 + max{e_2, e_3, ...} is nonprime.

The programs for A060476, the canonical program `A060476.P15326547790520508984` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A060476 has offset 1).

The definition of A060476 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A060476.P15326547790520508984

`record[(n+1)*A005171(A051903(n+1)+1)]`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A060476

/-- `record[(n+1)*A005171(A051903(n+1)+1)]` -/
def P15326547790520508984.Spec : Prop :=
  ∀ n, P15326547790520508984.a n = A060476 (n + 1)

theorem P15326547790520508984.correct : P15326547790520508984.Spec := by
  intro n
  simp only [A060476, Nat.add_sub_cancel]

end A060476

/-! ## A060476.P594878815054281814

`eq[1, A005171(A051903(n+1)+1)]+1`
-/

namespace A060476.P594878815054281814
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005171 (A051903 (n + 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A060476.P594878815054281814

namespace A060476

/-- `eq[1, A005171(A051903(n+1)+1)]+1` -/
def P594878815054281814.Spec : Prop :=
  ∀ n, (P594878815054281814.a n : ℤ) = A060476 (n + 1)

end A060476

/-! ## A060476.P14051989955608977365

`lt[0, A349386(A051903(n+1)+1)]+1`
-/

namespace A060476.P14051989955608977365
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349386 (A051903 (n + 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A060476.P14051989955608977365

namespace A060476

/-- `lt[0, A349386(A051903(n+1)+1)]+1` -/
def P14051989955608977365.Spec : Prop :=
  ∀ n, (P14051989955608977365.a n : ℤ) = A060476 (n + 1)

end A060476

/-! ## A060476.P4118300911051399223

`eq[1, A005171(A067132(n+1))]+1`
-/

namespace A060476.P4118300911051399223
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005171 (A067132 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A060476.P4118300911051399223

namespace A060476

/-- `eq[1, A005171(A067132(n+1))]+1` -/
def P4118300911051399223.Spec : Prop :=
  ∀ n, (P4118300911051399223.a n : ℤ) = A060476 (n + 1)

end A060476

/-! ## A060476.P4242463480175823874

`record[A000027(n+1)*A005171(A067132(n+1))]`
-/

namespace A060476.P4242463480175823874
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (n + 1) * A005171 (A067132 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A060476.P4242463480175823874

namespace A060476

/-- `record[A000027(n+1)*A005171(A067132(n+1))]` -/
def P4242463480175823874.Spec : Prop :=
  ∀ n, P4242463480175823874.a n = A060476 (n + 1)

theorem P4242463480175823874.correct : P4242463480175823874.Spec := by
  intro n
  simp only [A060476, Nat.add_sub_cancel, A060476.P4242463480175823874.f1, A060476.P4242463480175823874.a, A060476.P15326547790520508984.f1, A060476.P15326547790520508984.a, A000027, A000027.P10331202704469894836.a, A005171, A005171.P15860856746370777121.a, A051903, A051903.P13920478898438787932.f1, A051903.P13920478898438787932.a, A067132, A067132.P2149404699775634079.a, A010051, A010051.P15078252821583414300.a, A100995, A100995.P9596901243079307024.f1, A100995.P9596901243079307024.a, A193056, A193056.P6449544040074946363.a, A157658, A157658.P9261385800012601708.f1, A157658.P9261385800012601708.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A060476

/-! ## A060476.P11233557681910664935

`record[A005171(A067132(n+1))*A008619(2*n)]`
-/

namespace A060476.P11233557681910664935
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005171 (A067132 (n + 1)).toNat * A008619 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A060476.P11233557681910664935

namespace A060476

/-- `record[A005171(A067132(n+1))*A008619(2*n)]` -/
def P11233557681910664935.Spec : Prop :=
  ∀ n, P11233557681910664935.a n = A060476 (n + 1)

end A060476

/-!
# A060477: Number of orbits of length n in map whose periodic points are A000051.

The programs for A060477, the canonical program `A060477.P12484986106392669418` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A060477 has offset 1).

The definition of A060477 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 340 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A060477.P1052643733623025021

`or(char[n^9], A001037(n+1))`
-/

namespace A060477.P1052643733623025021
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 9

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A001037 (n + 1))

end

end A060477.P1052643733623025021

namespace A060477

/-- `or(char[n^9], A001037(n+1))` -/
def P1052643733623025021.Spec : Prop :=
  ∀ n, P1052643733623025021.a n = A060477 (n + 1)

end A060477

/-! ## A060477.P12484986106392669418

`or(C(n, a(n-1)), A059966(n+1))` with `a(0)=3`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A060477

/-- `or(C(n, a(n-1)), A059966(n+1))` -/
def P12484986106392669418.Spec : Prop :=
  ∀ n, P12484986106392669418.a n = A060477 (n + 1)

theorem P12484986106392669418.correct : P12484986106392669418.Spec := by
  intro n
  simp only [A060477, Nat.add_sub_cancel]

end A060477

/-! ## A060477.P3043169440346610211

`A001037(n+1)+A000007(n)`
-/

namespace A060477.P3043169440346610211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001037 (n + 1) + A000007 n

end

end A060477.P3043169440346610211

namespace A060477

/-- `A001037(n+1)+A000007(n)` -/
def P3043169440346610211.Spec : Prop :=
  ∀ n, P3043169440346610211.a n = A060477 (n + 1)

end A060477

/-! ## A060477.P8521254544526657578

`A059966(n+1)+A000038(n)`
-/

namespace A060477.P8521254544526657578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059966 (n + 1) + A000038 n

end

end A060477.P8521254544526657578

namespace A060477

/-- `A059966(n+1)+A000038(n)` -/
def P8521254544526657578.Spec : Prop :=
  ∀ n, P8521254544526657578.a n = A060477 (n + 1)

end A060477

/-! ## A060477.P15833589875786791386

`lcm(A059966(n+1), A109007(n))`
-/

namespace A060477.P15833589875786791386
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A059966 (n + 1)) (A109007 n)

end

end A060477.P15833589875786791386

namespace A060477

/-- `lcm(A059966(n+1), A109007(n))` -/
def P15833589875786791386.Spec : Prop :=
  ∀ n, (P15833589875786791386.a n : ℤ) = A060477 (n + 1)

end A060477

/-! ## A060477.P3868574444222237225

`A001037(n+1)+1-A057427(n)`
-/

namespace A060477.P3868574444222237225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001037 (n + 1) + 1 - A057427 n

end

end A060477.P3868574444222237225

namespace A060477

/-- `A001037(n+1)+1-A057427(n)` -/
def P3868574444222237225.Spec : Prop :=
  ∀ n, P3868574444222237225.a n = A060477 (n + 1)

end A060477

/-! ## A060477.P9484815603918136157

`A036987(2*n)+A001037(n+1)`
-/

namespace A060477.P9484815603918136157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036987 (2 * n) + A001037 (n + 1)

end

end A060477.P9484815603918136157

namespace A060477

/-- `A036987(2*n)+A001037(n+1)` -/
def P9484815603918136157.Spec : Prop :=
  ∀ n, P9484815603918136157.a n = A060477 (n + 1)

end A060477

/-! ## A060477.P7977078221791387838

`A001037(n+1)+and(1, A004016(n))`
-/

namespace A060477.P7977078221791387838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001037 (n + 1) + Int.land 1 (A004016 n)

end

end A060477.P7977078221791387838

namespace A060477

/-- `A001037(n+1)+and(1, A004016(n))` -/
def P7977078221791387838.Spec : Prop :=
  ∀ n, P7977078221791387838.a n = A060477 (n + 1)

end A060477

/-! ## A060477.P2953060076085024638

`or(A001037(n+1), A059966(n+1))`
-/

namespace A060477.P2953060076085024638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A001037 (n + 1)) (A059966 (n + 1))

end

end A060477.P2953060076085024638

namespace A060477

/-- `or(A001037(n+1), A059966(n+1))` -/
def P2953060076085024638.Spec : Prop :=
  ∀ n, P2953060076085024638.a n = A060477 (n + 1)

end A060477

/-! ## A060477.P16273336748933064519

`xor(A000007(n), A001037(-xor(n, -1)))`
-/

namespace A060477.P16273336748933064519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000007 n) (A001037 (-Int.xor (n : ℤ) (-1)).toNat)

end

end A060477.P16273336748933064519

namespace A060477

/-- `xor(A000007(n), A001037(-xor(n, -1)))` -/
def P16273336748933064519.Spec : Prop :=
  ∀ n, P16273336748933064519.a n = A060477 (n + 1)

end A060477

/-! ## A060477.P14963608131619892559

`A059966(n+1)+A153881(n+1)+1`
-/

namespace A060477.P14963608131619892559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059966 (n + 1) + (A153881 (n + 1) + 1)

end

end A060477.P14963608131619892559

namespace A060477

/-- `A059966(n+1)+A153881(n+1)+1` -/
def P14963608131619892559.Spec : Prop :=
  ∀ n, P14963608131619892559.a n = A060477 (n + 1)

end A060477

/-! ## A060477.P12765443890479598569

`A001037(n+1)+2-A036453(n+1)`
-/

namespace A060477.P12765443890479598569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001037 (n + 1) + (2 - A036453 (n + 1))

end

end A060477.P12765443890479598569

namespace A060477

/-- `A001037(n+1)+2-A036453(n+1)` -/
def P12765443890479598569.Spec : Prop :=
  ∀ n, P12765443890479598569.a n = A060477 (n + 1)

end A060477

/-! ## A060477.P15358644390767260426

`A010051(2*(n+1))+A001037(n+1)`
-/

namespace A060477.P15358644390767260426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (2 * (n + 1)) + A001037 (n + 1)

end

end A060477.P15358644390767260426

namespace A060477

/-- `A010051(2*(n+1))+A001037(n+1)` -/
def P15358644390767260426.Spec : Prop :=
  ∀ n, P15358644390767260426.a n = A060477 (n + 1)

end A060477

/-! ## A060477.P9017580375315650784

`A049084(2*(n+1))+A001037(n+1)`
-/

namespace A060477.P9017580375315650784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049084 (2 * (n + 1)) + A001037 (n + 1)

end

end A060477.P9017580375315650784

namespace A060477

/-- `A049084(2*(n+1))+A001037(n+1)` -/
def P9017580375315650784.Spec : Prop :=
  ∀ n, P9017580375315650784.a n = A060477 (n + 1)

end A060477

/-! ## A060477.P16332702301276002548

`A004277(n)+A001037(n+1)-2*n`
-/

namespace A060477.P16332702301276002548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 n + A001037 (n + 1) - (2 * n : ℤ)

end

end A060477.P16332702301276002548

namespace A060477

/-- `A004277(n)+A001037(n+1)-2*n` -/
def P16332702301276002548.Spec : Prop :=
  ∀ n, P16332702301276002548.a n = A060477 (n + 1)

end A060477

/-! ## A060477.P10875903979451441096

`A001037(n+1)+A097946(2*n+1)/2`
-/

namespace A060477.P10875903979451441096
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001037 (n + 1) : ℚ) + (A097946 (2 * n + 1) : ℚ) / 2

end

end A060477.P10875903979451441096

namespace A060477

/-- `A001037(n+1)+A097946(2*n+1)/2` -/
def P10875903979451441096.Spec : Prop :=
  ∀ n, P10875903979451441096.a n = (A060477 (n + 1) : ℚ)

end A060477

/-! ## A060477.P9772562190415391873

`A001037(n+1)+val(A102659(n+1)+1, 2)`
-/

namespace A060477.P9772562190415391873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001037 (n + 1) + (SequenceMachineLib.valuation (A102659 (n + 1) + 1).toNat 2 : ℤ)

end

end A060477.P9772562190415391873

namespace A060477

/-- `A001037(n+1)+val(A102659(n+1)+1, 2)` -/
def P9772562190415391873.Spec : Prop :=
  ∀ n, P9772562190415391873.a n = A060477 (n + 1)

end A060477

/-! ## A060477.P1757030836264191644

`A001037(n+1)+val(A000040(2*n+1), 2)`
-/

namespace A060477.P1757030836264191644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001037 (n + 1) + (SequenceMachineLib.valuation (A000040 (2 * n + 1)).toNat 2 : ℤ)

end

end A060477.P1757030836264191644

namespace A060477

/-- `A001037(n+1)+val(A000040(2*n+1), 2)` -/
def P1757030836264191644.Spec : Prop :=
  ∀ n, P1757030836264191644.a n = A060477 (n + 1)

end A060477

/-! ## A060477.P12448149689029616332

`A059966(n+1)+A000122(A328571(n))`
-/

namespace A060477.P12448149689029616332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059966 (n + 1) + A000122 (A328571 n).toNat

end

end A060477.P12448149689029616332

namespace A060477

/-- `A059966(n+1)+A000122(A328571(n))` -/
def P12448149689029616332.Spec : Prop :=
  ∀ n, P12448149689029616332.a n = A060477 (n + 1)

end A060477

/-! ## A060477.P10797603634526172244

`A001037(n+1)+A008683(A001597(n+1))`
-/

namespace A060477.P10797603634526172244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001037 (n + 1) + A008683 (A001597 (n + 1)).toNat

end

end A060477.P10797603634526172244

namespace A060477

/-- `A001037(n+1)+A008683(A001597(n+1))` -/
def P10797603634526172244.Spec : Prop :=
  ∀ n, P10797603634526172244.a n = A060477 (n + 1)

end A060477

/-!
# A060480: Number of orbits of length n in map whose periodic points come from A059990.

The programs for A060480, there is no canonical definition to state claims against.
-/

/-! ## A060480.P14751154149321893367

`and(A107824(A107849(n+2)), A107847(n+1))`
-/

namespace A060480.P14751154149321893367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A107824 (A107849 (n + 2)).toNat) (A107847 (n + 1))

end

end A060480.P14751154149321893367

/-!
# A060482: New record highs reached in A060030.

The programs for A060482, the canonical program `A060482.P16684208834301054037` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A060482 has offset 1).

The definition of A060482 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A060482.P16684208834301054037

`2*a(n-2)+3` with `a(0)=1, a(1)=2, a(2)=3, a(3)=5`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A060482

/-- `2*a(n-2)+3` -/
def P16684208834301054037.Spec : Prop :=
  ∀ n, (P16684208834301054037.a n : ℤ) = A060482 (n + 1)

theorem P16684208834301054037.correct : P16684208834301054037.Spec := by
  intro n
  simp only [A060482, Nat.add_sub_cancel]

end A060482

/-! ## A060482.P787085205970325252

`a(n-1)+A016116(n)` with `a(0)=1, a(1)=2, a(2)=3`
-/

namespace A060482.P787085205970325252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 3] fun n a =>
  a (n - 1) + A016116 n

end

end A060482.P787085205970325252

namespace A060482

/-- `a(n-1)+A016116(n)` -/
def P787085205970325252.Spec : Prop :=
  ∀ n, P787085205970325252.a n = A060482 (n + 1)

end A060482

/-! ## A060482.P4199316039572641174

`lcm(2, a(n-2))+3` with `a(0)=1, a(1)=2, a(2)=3`
-/

namespace A060482.P4199316039572641174
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 3] fun n a =>
  Nat.lcm 2 (a (n - 2)) + 3

end

end A060482.P4199316039572641174

namespace A060482

/-- `lcm(2, a(n-2))+3` -/
def P4199316039572641174.Spec : Prop :=
  ∀ n, (P4199316039572641174.a n : ℤ) = A060482 (n + 1)

end A060482

/-! ## A060482.P17573240587329085936

`ogf((1+x-x^2+2x^4)/(1-x-2x^2+2x^3))`
-/

namespace A060482.P17573240587329085936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1, -1, 0, 2] [1, -1, -2, 2] n

end

end A060482.P17573240587329085936

namespace A060482

/-- `ogf((1+x-x^2+2x^4)/(1-x-2x^2+2x^3))` -/
def P17573240587329085936.Spec : Prop :=
  ∀ n, P17573240587329085936.a n = A060482 (n + 1)

end A060482

/-! ## A060482.P17382001951711813081

`∑[2*a(n-2)]` with `a(0)=1, a(1)=1, a(2)=1, a(3)=2, a(4)=4`
-/

namespace A060482.P17382001951711813081
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 1, 2, 4] fun n f1 =>
  2 * f1 (n - 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A060482.P17382001951711813081

namespace A060482

/-- `∑[2*a(n-2)]` -/
def P17382001951711813081.Spec : Prop :=
  ∀ n, (P17382001951711813081.a n : ℤ) = A060482 (n + 1)

end A060482

/-! ## A060482.P15548256881467371536

`a(n-1)+2^floor(n/2)` with `a(0)=1, a(1)=2, a(2)=3`
-/

namespace A060482.P15548256881467371536
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 2, 3] fun n a =>
  a (n - 1) + (2 : ℚ) ^ (⌊(n : ℚ) / 2⌋ : ℤ)

end

end A060482.P15548256881467371536

namespace A060482

/-- `a(n-1)+2^floor(n/2)` -/
def P15548256881467371536.Spec : Prop :=
  ∀ n, P15548256881467371536.a n = (A060482 (n + 1) : ℚ)

end A060482

/-! ## A060482.P3599485194500933265

`a(n-2)+a(n-2)+3` with `a(0)=1, a(1)=2, a(2)=3, a(3)=5`
-/

namespace A060482.P3599485194500933265
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 3, 5] fun n a =>
  a (n - 2) + a (n - 2) + 3

end

end A060482.P3599485194500933265

namespace A060482

/-- `a(n-2)+a(n-2)+3` -/
def P3599485194500933265.Spec : Prop :=
  ∀ n, (P3599485194500933265.a n : ℤ) = A060482 (n + 1)

theorem P3599485194500933265.correct : P3599485194500933265.Spec := by
  intro n
  simp only [A060482, Nat.add_sub_cancel, A060482.P3599485194500933265.a, A060482.P16684208834301054037.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A060482

/-! ## A060482.P4967070649441951076

`∑[A016116(n-char[2])]`
-/

namespace A060482.P4967070649441951076
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016116 (n - (if ∃ j, f2 j = n then 1 else 0))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A060482.P4967070649441951076

namespace A060482

/-- `∑[A016116(n-char[2])]` -/
def P4967070649441951076.Spec : Prop :=
  ∀ n, P4967070649441951076.a n = A060482 (n + 1)

end A060482

/-! ## A060482.P15963272727195164547

`∑[A046698(n)^floor(n/2)]`
-/

namespace A060482.P15963272727195164547
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A046698 n : ℚ) ^ (⌊(n : ℚ) / 2⌋ : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A060482.P15963272727195164547

namespace A060482

/-- `∑[A046698(n)^floor(n/2)]` -/
def P15963272727195164547.Spec : Prop :=
  ∀ n, P15963272727195164547.a n = (A060482 (n + 1) : ℚ)

end A060482

/-! ## A060482.P7620702665554945218

`∑[abs(A117575(1-char[2]+n))]`
-/

namespace A060482.P7620702665554945218
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A117575 (1 - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ) + (n : ℤ)).toNat|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A060482.P7620702665554945218

namespace A060482

/-- `∑[abs(A117575(1-char[2]+n))]` -/
def P7620702665554945218.Spec : Prop :=
  ∀ n, P7620702665554945218.a n = A060482 (n + 1)

end A060482

/-! ## A060482.P16241498822793254137

`A158780(n+2)+a(n-1)` with `a(0)=1, a(1)=2, a(2)=3`
-/

namespace A060482.P16241498822793254137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 3] fun n a =>
  A158780 (n + 2) + a (n - 1)

end

end A060482.P16241498822793254137

namespace A060482

/-- `A158780(n+2)+a(n-1)` -/
def P16241498822793254137.Spec : Prop :=
  ∀ n, P16241498822793254137.a n = A060482 (n + 1)

end A060482

/-! ## A060482.P16639757798118014302

`A027383(n)-A157928(n)`
-/

namespace A060482.P16639757798118014302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027383 n - A157928 n

end

end A060482.P16639757798118014302

namespace A060482

/-- `A027383(n)-A157928(n)` -/
def P16639757798118014302.Spec : Prop :=
  ∀ n, P16639757798118014302.a n = A060482 (n + 1)

end A060482

/-! ## A060482.P7881081174651300845

`xor(A169585(n), A354788(n))`
-/

namespace A060482.P7881081174651300845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A169585 n) (A354788 n)

end

end A060482.P7881081174651300845

namespace A060482

/-- `xor(A169585(n), A354788(n))` -/
def P7881081174651300845.Spec : Prop :=
  ∀ n, P7881081174651300845.a n = A060482 (n + 1)

end A060482

/-! ## A060482.P15892320587207851996

`A354788(n)+A019590(n+1)`
-/

namespace A060482.P15892320587207851996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354788 n + A019590 (n + 1)

end

end A060482.P15892320587207851996

namespace A060482

/-- `A354788(n)+A019590(n+1)` -/
def P15892320587207851996.Spec : Prop :=
  ∀ n, P15892320587207851996.a n = A060482 (n + 1)

end A060482

/-! ## A060482.P15226646897896007064

`∑[A016116(n)]-A328672(∑{e}[n, #])`
-/

namespace A060482.P15226646897896007064
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016116 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A328672 (∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p)

end

end A060482.P15226646897896007064

namespace A060482

/-- `∑[A016116(n)]-A328672(∑{e}[n, #])` -/
def P15226646897896007064.Spec : Prop :=
  ∀ n, P15226646897896007064.a n = A060482 (n + 1)

end A060482

/-! ## A060482.P12373189789068662515

`2*A029744(n+1)-A158799(n)`
-/

namespace A060482.P12373189789068662515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A029744 (n + 1) - A158799 n

end

end A060482.P12373189789068662515

namespace A060482

/-- `2*A029744(n+1)-A158799(n)` -/
def P12373189789068662515.Spec : Prop :=
  ∀ n, P12373189789068662515.a n = A060482 (n + 1)

end A060482

/-! ## A060482.P15637556126833103630

`A027383(n)-A057427(n-A057427(n))`
-/

namespace A060482.P15637556126833103630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027383 n - A057427 ((n : ℤ) - A057427 n).toNat

end

end A060482.P15637556126833103630

namespace A060482

/-- `A027383(n)-A057427(n-A057427(n))` -/
def P15637556126833103630.Spec : Prop :=
  ∀ n, P15637556126833103630.a n = A060482 (n + 1)

end A060482

/-! ## A060482.P3553908316771458110

`A354788(n)+A187036(n+1)*A187036(n)`
-/

namespace A060482.P3553908316771458110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354788 n + A187036 (n + 1) * A187036 n

end

end A060482.P3553908316771458110

namespace A060482

/-- `A354788(n)+A187036(n+1)*A187036(n)` -/
def P3553908316771458110.Spec : Prop :=
  ∀ n, P3553908316771458110.a n = A060482 (n + 1)

end A060482

/-! ## A060482.P13406037443466501475

`∑[gcd(A084215(n), A164073(n+1))]`
-/

namespace A060482.P13406037443466501475
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A084215 n) (A164073 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A060482.P13406037443466501475

namespace A060482

/-- `∑[gcd(A084215(n), A164073(n+1))]` -/
def P13406037443466501475.Spec : Prop :=
  ∀ n, (P13406037443466501475.a n : ℤ) = A060482 (n + 1)

end A060482

/-! ## A060482.P6047875237433002710

`A156665(A000124(n)-n)+n`
-/

namespace A060482.P6047875237433002710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156665 (A000124 n - (n : ℤ)).toNat + (n : ℤ)

end

end A060482.P6047875237433002710

namespace A060482

/-- `A156665(A000124(n)-n)+n` -/
def P6047875237433002710.Spec : Prop :=
  ∀ n, P6047875237433002710.a n = A060482 (n + 1)

end A060482

/-!
# A060483: Number of 5-block tricoverings of an n-set.

The programs for A060483, the canonical program `A060483.P838085303690632603` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A060483 has offset 3).

The definition of A060483 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A060483.P838085303690632603

`(45*2^(n+3)-15*4^(n+3)+10^(n+3)-40)/120`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A060483

/-- `(45*2^(n+3)-15*4^(n+3)+10^(n+3)-40)/120` -/
def P838085303690632603.Spec : Prop :=
  ∀ n, P838085303690632603.a n = (A060483 (n + 3) : ℚ)

end A060483

/-! ## A060483.P10332050572339520358

`∑[3*2^n*∑[A083421(n)]]`
-/

namespace A060483.P10332050572339520358
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083421 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * 2 ^ n : ℤ) * (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A060483.P10332050572339520358

namespace A060483

/-- `∑[3*2^n*∑[A083421(n)]]` -/
def P10332050572339520358.Spec : Prop :=
  ∀ n, P10332050572339520358.a n = A060483 (n + 3)

end A060483

/-! ## A060483.P10807884915638087744

`A060487((n+1)²+3)`
-/

namespace A060483.P10807884915638087744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060487 ((n + 1) ^ 2 + 3)

end

end A060483.P10807884915638087744

namespace A060483

/-- `A060487((n+1)²+3)` -/
def P10807884915638087744.Spec : Prop :=
  ∀ n, P10807884915638087744.a n = A060483 (n + 3)

end A060483

/-! ## A060483.P9157157276194808926

`record[A060487(A000463(n+1)+3)]`
-/

namespace A060483.P9157157276194808926
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060487 (A000463 (n + 1) + 3).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A060483.P9157157276194808926

namespace A060483

/-- `record[A060487(A000463(n+1)+3)]` -/
def P9157157276194808926.Spec : Prop :=
  ∀ n, P9157157276194808926.a n = A060483 (n + 3)

end A060483

/-!
# A060484: Number of 6-block tricoverings of an n-set.

The programs for A060484, there is no canonical definition to state claims against.
-/

/-! ## A060484.P1263200052478072315

`A060487((n+1)²+4)`
-/

namespace A060484.P1263200052478072315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060487 ((n + 1) ^ 2 + 4)

end

end A060484.P1263200052478072315

/-!
# A060485: Number of 7-block tricoverings of an n-set.

The programs for A060485, there is no canonical definition to state claims against.
-/

/-! ## A060485.P8733943207617725696

`A060487((n+2)²+5)`
-/

namespace A060485.P8733943207617725696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060487 ((n + 2) ^ 2 + 5)

end

end A060485.P8733943207617725696

/-!
# A060486: Tricoverings of an n-set.

The programs for A060486, there is no canonical definition to state claims against.
-/

/-! ## A060486.P4438969818898987202

`A188445(∑[a(n-1)+1])` with `a(0)=5, a(1)=1, a(2)=3`
-/

namespace A060486.P4438969818898987202
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [5, 1, 3] fun n f1 =>
  f1 (n - 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188445 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A060486.P4438969818898987202

/-! ## A060486.P5100884169463011642

`A188445(A145018(n+1)+A028310(n))`
-/

namespace A060486.P5100884169463011642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188445 (A145018 (n + 1) + A028310 n).toNat

end

end A060486.P5100884169463011642

/-! ## A060486.P12389483627314860840

`A188445(A167499(n)-A036452(n+1))`
-/

namespace A060486.P12389483627314860840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188445 (A167499 n - A036452 (n + 1)).toNat

end

end A060486.P12389483627314860840

/-! ## A060486.P6906297911603687524

`A188445(∪[A167614(n+1), A355332(n+1)])`
-/

namespace A060486.P6906297911603687524
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167614 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355332 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188445 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n)

end

end A060486.P6906297911603687524

/-! ## A060486.P15298965407998134242

`A188445(∪[A123166(3*n+2), A167614(n+1)])`
-/

namespace A060486.P15298965407998134242
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123166 (3 * n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167614 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188445 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n)

end

end A060486.P15298965407998134242

/-!
# A060488: Number of 4-block ordered tricoverings of an unlabeled n-set.

The programs for A060488, the canonical program `A060488.P15699752526811509753` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A060488 has offset 3).

The definition of A060488 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A060488.P16409814759803747704

`(n+12)*C(n+2, 2)/3`
-/

namespace A060488.P16409814759803747704
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 12) * Nat.choose (n + 2) 2 : ℚ) / 3

end

end A060488.P16409814759803747704

namespace A060488

/-- `(n+12)*C(n+2, 2)/3` -/
def P16409814759803747704.Spec : Prop :=
  ∀ n, P16409814759803747704.a n = (A060488 (n + 3) : ℚ)

end A060488

/-! ## A060488.P9462500972363733838

`(n+1)*(n+2)*(n+12)/6`
-/

namespace A060488.P9462500972363733838
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1) * (n + 2) * (n + 12) : ℚ) / 6

end

end A060488.P9462500972363733838

namespace A060488

/-- `(n+1)*(n+2)*(n+12)/6` -/
def P9462500972363733838.Spec : Prop :=
  ∀ n, P9462500972363733838.a n = (A060488 (n + 3) : ℚ)

theorem P9462500972363733838.correct : P9462500972363733838.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 =>
      simp [A060488, Nat.add_sub_cancel, A060488.P9462500972363733838.a, A060488.P15699752526811509753.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 4 =>
      have h1 := ih (m + 3) (by omega)
      have h2 := ih (m + 2) (by omega)
      have h3 := ih (m + 1) (by omega)
      have h4 := ih m (by omega)
      simp only [A060488, Nat.add_sub_cancel, A060488.P9462500972363733838.a, A060488.P15699752526811509753.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 4 - 1 = m + 3 by omega, show m + 4 - 2 = m + 2 by omega, show m + 4 - 3 = m + 1 by omega, show m + 4 - 4 = m by omega, show m + 3 < m + 4 by omega, show m + 2 < m + 4 by omega, show m + 1 < m + 4 by omega, show m < m + 4 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 ⊢
      rw [← h1, ← h2, ← h3, ← h4]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A060488

/-! ## A060488.P15699752526811509753

`4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` with `a(0)=4, a(1)=13, a(2)=28, a(3)=50`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A060488

/-- `4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` -/
def P15699752526811509753.Spec : Prop :=
  ∀ n, P15699752526811509753.a n = A060488 (n + 3)

theorem P15699752526811509753.correct : P15699752526811509753.Spec := by
  intro n
  simp only [A060488, Nat.add_sub_cancel]

end A060488

/-! ## A060488.P12166875818023155715

`∑[∑[3-xor(n, -1)]]`
-/

namespace A060488.P12166875818023155715
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - Int.xor (n : ℤ) (-1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A060488.P12166875818023155715

namespace A060488

/-- `∑[∑[3-xor(n, -1)]]` -/
def P12166875818023155715.Spec : Prop :=
  ∀ n, P12166875818023155715.a n = A060488 (n + 3)

end A060488

/-! ## A060488.P14468878795448941865

`∑[∑[acos(cos(2))²+n]]`
-/

namespace A060488.P14468878795448941865
noncomputable section

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.arccos (Real.cos (2 : ℝ)) ^ 2 + (n : ℝ)

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A060488.P14468878795448941865

namespace A060488

/-- `∑[∑[acos(cos(2))²+n]]` -/
def P14468878795448941865.Spec : Prop :=
  ∀ n, P14468878795448941865.a n = (A060488 (n + 3) : ℝ)

end A060488

/-! ## A060488.P12953832764057564479

`∑[(n+2)²-C(n, 2)]`
-/

namespace A060488.P12953832764057564479
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 2) ^ 2 : ℤ) - (Nat.choose n 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A060488.P12953832764057564479

namespace A060488

/-- `∑[(n+2)²-C(n, 2)]` -/
def P12953832764057564479.Spec : Prop :=
  ∀ n, P12953832764057564479.a n = A060488 (n + 3)

end A060488

/-! ## A060488.P5615964618751899903

`∑[∑[ogf((4-3x)/(1-2x+x^2))]]`
-/

namespace A060488.P5615964618751899903
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [4, -3] [1, -2, 1] n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A060488.P5615964618751899903

namespace A060488

/-- `∑[∑[ogf((4-3x)/(1-2x+x^2))]]` -/
def P5615964618751899903.Spec : Prop :=
  ∀ n, P5615964618751899903.a n = A060488 (n + 3)

end A060488

/-! ## A060488.P2852842249377830682

`ogf((4-3x)/(1-4x+6x^2-4x^3+x^4))`
-/

namespace A060488.P2852842249377830682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [4, -3] [1, -4, 6, -4, 1] n

end

end A060488.P2852842249377830682

namespace A060488

/-- `ogf((4-3x)/(1-4x+6x^2-4x^3+x^4))` -/
def P2852842249377830682.Spec : Prop :=
  ∀ n, P2852842249377830682.a n = A060488 (n + 3)

end A060488

/-! ## A060488.P2894244447557023544

`C(n+4, 3)+n*(n+2)`
-/

namespace A060488.P2894244447557023544
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 4) 3 + n * (n + 2)

end

end A060488.P2894244447557023544

namespace A060488

/-- `C(n+4, 3)+n*(n+2)` -/
def P2894244447557023544.Spec : Prop :=
  ∀ n, (P2894244447557023544.a n : ℤ) = A060488 (n + 3)

end A060488

/-! ## A060488.P6261068567114745371

`∑[∑[n]]-∑[a(n-1)-4]` with `a(0)=-4`
-/

namespace A060488.P6261068567114745371
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f3 : ℕ → ℤ := SequenceMachineLib.rec [-4] fun n f3 =>
  f3 (n - 1) - 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - ∑ j ∈ Finset.range (n + 1), f3 j

end

end A060488.P6261068567114745371

namespace A060488

/-- `∑[∑[n]]-∑[a(n-1)-4]` -/
def P6261068567114745371.Spec : Prop :=
  ∀ n, P6261068567114745371.a n = A060488 (n + 3)

end A060488

/-! ## A060488.P14425125483153505686

`∑[∑[A020705(n)]]`
-/

namespace A060488.P14425125483153505686
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020705 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A060488.P14425125483153505686

namespace A060488

/-- `∑[∑[A020705(n)]]` -/
def P14425125483153505686.Spec : Prop :=
  ∀ n, P14425125483153505686.a n = A060488 (n + 3)

end A060488

/-! ## A060488.P15319926546600652660

`A062748(n)+(n+1)²`
-/

namespace A060488.P15319926546600652660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062748 n + ((n + 1) ^ 2 : ℤ)

end

end A060488.P15319926546600652660

namespace A060488

/-- `A062748(n)+(n+1)²` -/
def P15319926546600652660.Spec : Prop :=
  ∀ n, P15319926546600652660.a n = A060488 (n + 3)

end A060488

/-! ## A060488.P6783958835251477251

`A055831(n+4)-(n+1)`
-/

namespace A060488.P6783958835251477251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055831 (n + 4) - (n + 1 : ℤ)

end

end A060488.P6783958835251477251

namespace A060488

/-- `A055831(n+4)-(n+1)` -/
def P6783958835251477251.Spec : Prop :=
  ∀ n, P6783958835251477251.a n = A060488 (n + 3)

end A060488

/-! ## A060488.P15735705058528692940

`A264443(n)-2*(n-2)`
-/

namespace A060488.P15735705058528692940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n - 2 * ((n : ℤ) - 2)

end

end A060488.P15735705058528692940

namespace A060488

/-- `A264443(n)-2*(n-2)` -/
def P15735705058528692940.Spec : Prop :=
  ∀ n, P15735705058528692940.a n = A060488 (n + 3)

end A060488

/-! ## A060488.P13343098302641294007

`A023545(n+1)-2*(n+1)`
-/

namespace A060488.P13343098302641294007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1) - (2 * (n + 1) : ℤ)

end

end A060488.P13343098302641294007

namespace A060488

/-- `A023545(n+1)-2*(n+1)` -/
def P13343098302641294007.Spec : Prop :=
  ∀ n, P13343098302641294007.a n = A060488 (n + 3)

end A060488

/-! ## A060488.P16129981516563031909

`A046092(n+1)+C(n+2, 3)`
-/

namespace A060488.P16129981516563031909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046092 (n + 1) + (Nat.choose (n + 2) 3 : ℤ)

end

end A060488.P16129981516563031909

namespace A060488

/-- `A046092(n+1)+C(n+2, 3)` -/
def P16129981516563031909.Spec : Prop :=
  ∀ n, P16129981516563031909.a n = A060488 (n + 3)

end A060488

/-! ## A060488.P14415354231892351686

`A008778(n)+(n+1)*(n+3)`
-/

namespace A060488.P14415354231892351686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 n + ((n + 1) * (n + 3) : ℤ)

end

end A060488.P14415354231892351686

namespace A060488

/-- `A008778(n)+(n+1)*(n+3)` -/
def P14415354231892351686.Spec : Prop :=
  ∀ n, P14415354231892351686.a n = A060488 (n + 3)

end A060488

/-! ## A060488.P8284589873419300835

`A096957(n)-(n+1)*(n+2)`
-/

namespace A060488.P8284589873419300835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096957 n - ((n + 1) * (n + 2) : ℤ)

end

end A060488.P8284589873419300835

namespace A060488

/-- `A096957(n)-(n+1)*(n+2)` -/
def P8284589873419300835.Spec : Prop :=
  ∀ n, P8284589873419300835.a n = A060488 (n + 3)

end A060488

/-! ## A060488.P13586911246307435762

`A240001(n+1)+(n+1)*(n-1)`
-/

namespace A060488.P13586911246307435762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240001 (n + 1) + (n + 1 : ℤ) * ((n : ℤ) - 1)

end

end A060488.P13586911246307435762

namespace A060488

/-- `A240001(n+1)+(n+1)*(n-1)` -/
def P13586911246307435762.Spec : Prop :=
  ∀ n, P13586911246307435762.a n = A060488 (n + 3)

end A060488

/-!
# A060489: Number of 5-block ordered tricoverings of an unlabeled n-set.

The programs for A060489, there is no canonical definition to state claims against.
-/

/-! ## A060489.P5690442971615684333

`A079648(n)*A210449(A192717(n+1))`
-/

namespace A060489.P5690442971615684333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079648 n * A210449 (A192717 (n + 1)).toNat

end

end A060489.P5690442971615684333

/-!
# A060491: Number of ordered tricoverings of an unlabeled n-set.

The programs for A060491, there is no canonical definition to state claims against.
-/

/-! ## A060491.P9814529625509870025

`A331571(A167614(n+2))`
-/

namespace A060491.P9814529625509870025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331571 (A167614 (n + 2)).toNat

end

end A060491.P9814529625509870025

/-! ## A060491.P8038756721293653925

`A331571(A055999(n)+9)`
-/

namespace A060491.P8038756721293653925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331571 (A055999 n + 9).toNat

end

end A060491.P8038756721293653925

/-! ## A060491.P7140470836493158873

`A331571(eq[3, A002262(n)])`
-/

namespace A060491.P7140470836493158873
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331571 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A060491.P7140470836493158873

/-! ## A060491.P12023015824552496093

`A331571(A340266(n+2)+1)`
-/

namespace A060491.P12023015824552496093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331571 (A340266 (n + 2) + 1).toNat

end

end A060491.P12023015824552496093

/-! ## A060491.P2981328044351404867

`A331571(eq[4, A002260(n+1)])`
-/

namespace A060491.P2981328044351404867
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331571 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A060491.P2981328044351404867

/-!
# A060493: A diagonal of A036969.

The programs for A060493, the canonical program `A060493.P353279907624219176` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A060493 has offset 0).

The definition of A060493 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A060493.P353279907624219176

`n*(n+1)*(n+2)*(2*n+1)*(2*n+3)*(5*n-1)/360`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A060493

/-- `n*(n+1)*(n+2)*(2*n+1)*(2*n+3)*(5*n-1)/360` -/
def P353279907624219176.Spec : Prop :=
  ∀ n, P353279907624219176.a n = (A060493 n : ℚ)

end A060493

/-! ## A060493.P10445692365086016200

`∑[C(n²+1, 2)]+C(∑[n²], 2)`
-/

namespace A060493.P10445692365086016200
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n ^ 2 + 1) 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + Nat.choose (∑ j ∈ Finset.range (n + 1), f2 j) 2

end

end A060493.P10445692365086016200

namespace A060493

/-- `∑[C(n²+1, 2)]+C(∑[n²], 2)` -/
def P10445692365086016200.Spec : Prop :=
  ∀ n, (P10445692365086016200.a n : ℤ) = A060493 n

end A060493

/-! ## A060493.P8824501232747531274

`a(n-1)+∑[n²]/n^(-2)` with `a(0)=0`
-/

namespace A060493.P8824501232747531274
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / (n : ℚ) ^ (-2 : ℤ)

end

end A060493.P8824501232747531274

namespace A060493

/-- `a(n-1)+∑[n²]/n^(-2)` -/
def P8824501232747531274.Spec : Prop :=
  ∀ n, P8824501232747531274.a n = (A060493 n : ℚ)

end A060493

/-! ## A060493.P14731282986499495689

`∑[A373561(n)]`
-/

namespace A060493.P14731282986499495689
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373561 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A060493.P14731282986499495689

namespace A060493

/-- `∑[A373561(n)]` -/
def P14731282986499495689.Spec : Prop :=
  ∀ n, P14731282986499495689.a n = A060493 n

end A060493

/-! ## A060493.P4809526327158529167

`∑[n²*A000330(n)]`
-/

namespace A060493.P4809526327158529167
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) * A000330 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A060493.P4809526327158529167

namespace A060493

/-- `∑[n²*A000330(n)]` -/
def P4809526327158529167.Spec : Prop :=
  ∀ n, P4809526327158529167.a n = A060493 n

end A060493

/-! ## A060493.P15480360421399029438

`A079547(n+1)+C(∑[n²], 2)`
-/

namespace A060493.P15480360421399029438
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079547 (n + 1) + (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 : ℤ)

end

end A060493.P15480360421399029438

namespace A060493

/-- `A079547(n+1)+C(∑[n²], 2)` -/
def P15480360421399029438.Spec : Prop :=
  ∀ n, P15480360421399029438.a n = A060493 n

end A060493

/-! ## A060493.P11663988868904508359

`A008957(A065475(∑[n+1]+2))-A000007(n)`
-/

namespace A060493.P11663988868904508359
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008957 (A065475 (∑ j ∈ Finset.range (n + 1), f1 j + 2)).toNat - A000007 n

end

end A060493.P11663988868904508359

namespace A060493

/-- `A008957(A065475(∑[n+1]+2))-A000007(n)` -/
def P11663988868904508359.Spec : Prop :=
  ∀ n, P11663988868904508359.a n = A060493 n

end A060493

/-! ## A060493.P5024259173149990687

`A269945(∑[n+3])`
-/

namespace A060493.P5024259173149990687
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269945 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A060493.P5024259173149990687

namespace A060493

/-- `A269945(∑[n+3])` -/
def P5024259173149990687.Spec : Prop :=
  ∀ n, P5024259173149990687.a n = A060493 n

end A060493

/-! ## A060493.P12234237286374219226

`record[A269945(A060577(n)-n)]`
-/

namespace A060493.P12234237286374219226
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269945 (A060577 n - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A060493.P12234237286374219226

namespace A060493

/-- `record[A269945(A060577(n)-n)]` -/
def P12234237286374219226.Spec : Prop :=
  ∀ n, P12234237286374219226.a n = A060493 n

end A060493

/-!
# A060494: a(n) = floor(n^4/64).

The programs for A060494, the canonical program `A060494.P6437633141216939445` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A060494 has offset 0).

The definition of A060494 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(n^4/64)` (program `A060494.P6437633141216939445`, by `A060494.P6437633141216939445.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A060494.P6437633141216939445

`floor(n^4/64)`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A060494

/-- `floor(n^4/64)` -/
def P6437633141216939445.Spec : Prop :=
  ∀ n, P6437633141216939445.a n = A060494 n

theorem P6437633141216939445.correct : P6437633141216939445.Spec := by
  intro n
  simp only [A060494]

end A060494

/-! ## A060494.P12234994556216921574

`and(-64, n²²)/64`
-/

namespace A060494.P12234994556216921574
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.land (-64) ((n ^ 2) ^ 2 : ℤ) : ℚ) / 64

end

end A060494.P12234994556216921574

namespace A060494

/-- `and(-64, n²²)/64` -/
def P12234994556216921574.Spec : Prop :=
  ∀ n, P12234994556216921574.a n = (A060494 n : ℚ)

end A060494

/-! ## A060494.P160028684131319442

`1-ceil((4-A011863(n))/4)`
-/

namespace A060494.P160028684131319442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ⌈(4 - A011863 n : ℚ) / 4⌉

end

end A060494.P160028684131319442

namespace A060494

/-- `1-ceil((4-A011863(n))/4)` -/
def P160028684131319442.Spec : Prop :=
  ∀ n, P160028684131319442.a n = A060494 n

end A060494

/-! ## A060494.P10610670609535295062

`round((round(A000583(n)/8)-3)/8)`
-/

namespace A060494.P10610670609535295062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((SequenceMachineLib.roundAway ((A000583 n : ℚ) / 8) - 3 : ℚ) / 8)

end

end A060494.P10610670609535295062

namespace A060494

/-- `round((round(A000583(n)/8)-3)/8)` -/
def P10610670609535295062.Spec : Prop :=
  ∀ n, P10610670609535295062.a n = A060494 n

end A060494

/-! ## A060494.P12952193783863534535

`A000007(n+3)+floor((n²/8)²)`
-/

namespace A060494.P12952193783863534535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (n + 3) + ⌊((n ^ 2 : ℚ) / 8) ^ 2⌋

end

end A060494.P12952193783863534535

namespace A060494

/-- `A000007(n+3)+floor((n²/8)²)` -/
def P12952193783863534535.Spec : Prop :=
  ∀ n, P12952193783863534535.a n = A060494 n

theorem P12952193783863534535.correct : P12952193783863534535.Spec := by
  intro n
  simp only [A060494, Nat.add_sub_cancel, A060494.P12952193783863534535.a, A060494.P6437633141216939445.a, A000007, A000007.P6599383543502402472.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A060494

/-!
# A060495: Each permutation in the list A060117 converted to Site Swap notation, with "zero throws" (fixed elements) replaced with n, the length of siteswap.

The programs for A060495, there is no canonical definition to state claims against.
-/

/-! ## A060495.P10081371241142379053

`A360450(A165070(n+1)*A360673(n))`
-/

namespace A060495.P10081371241142379053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360450 (A165070 (n + 1) * A360673 n).toNat

end

end A060495.P10081371241142379053

/-!
# A060497: a(n) = binomial(2^n, prime(n)).

The programs for A060497, the canonical program `A060497.P16039143058728670058` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A060497 has offset 1).

The definition of A060497 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(2^(n+1), A000040(n+1))` (program `A060497.P16039143058728670058`, by `A060497.P16039143058728670058.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A060497.P16039143058728670058

`C(2^(n+1), A000040(n+1))`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A060497

/-- `C(2^(n+1), A000040(n+1))` -/
def P16039143058728670058.Spec : Prop :=
  ∀ n, (P16039143058728670058.a n : ℤ) = A060497 (n + 1)

theorem P16039143058728670058.correct : P16039143058728670058.Spec := by
  intro n
  simp only [A060497, Nat.add_sub_cancel]

end A060497

/-! ## A060497.P3267317983988070090

`record[C(A248692(n+1), n+1)]`
-/

namespace A060497.P3267317983988070090
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A248692 (n + 1)).toNat (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A060497.P3267317983988070090

namespace A060497

/-- `record[C(A248692(n+1), n+1)]` -/
def P3267317983988070090.Spec : Prop :=
  ∀ n, (P3267317983988070090.a n : ℤ) = A060497 (n + 1)

end A060497

/-! ## A060497.P15928197524683806549

`C(2^(n+1), Δ[A007504(n)])`
-/

namespace A060497.P15928197524683806549
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (2 ^ (n + 1)) (f1 (n + 1) - f1 n).toNat

end

end A060497.P15928197524683806549

namespace A060497

/-- `C(2^(n+1), Δ[A007504(n)])` -/
def P15928197524683806549.Spec : Prop :=
  ∀ n, (P15928197524683806549.a n : ℤ) = A060497 (n + 1)

end A060497

/-! ## A060497.P3832361294725399748

`C(2^(n+1), A008578(n+2))`
-/

namespace A060497.P3832361294725399748
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (2 ^ (n + 1)) (A008578 (n + 2)).toNat

end

end A060497.P3832361294725399748

namespace A060497

/-- `C(2^(n+1), A008578(n+2))` -/
def P3832361294725399748.Spec : Prop :=
  ∀ n, (P3832361294725399748.a n : ℤ) = A060497 (n + 1)

end A060497

/-! ## A060497.P8367113940436700659

`C(2^(n+1), ∑[A054541(n+1)])`
-/

namespace A060497.P8367113940436700659
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054541 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (2 ^ (n + 1)) (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A060497.P8367113940436700659

namespace A060497

/-- `C(2^(n+1), ∑[A054541(n+1)])` -/
def P8367113940436700659.Spec : Prop :=
  ∀ n, (P8367113940436700659.a n : ℤ) = A060497 (n + 1)

end A060497

/-!
# A060498: Each permutation in the list A060117 converted to Site Swap notation, with digits reversed and inverted. "Zero throws" (fixed elements) indicated with 0's.

The programs for A060498, there is no canonical definition to state claims against.
-/

/-! ## A060498.P17032143237591566876

`A060499(A060125(n))`
-/

namespace A060498.P17032143237591566876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060499 (A060125 n).toNat

end

end A060498.P17032143237591566876

/-!
# A060499: Each permutation in the list A060118 converted to Site Swap notation, with digits reversed and inverted. "Zero throws" (fixed elements) indicated with 0's.

The programs for A060499, there is no canonical definition to state claims against.
-/

/-! ## A060499.P8815059374575735888

`A060498(A060125(n))`
-/

namespace A060499.P8815059374575735888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060498 (A060125 n).toNat

end

end A060499.P8815059374575735888

