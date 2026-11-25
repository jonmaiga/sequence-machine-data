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
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C042
import Seq.B000.C045
import Seq.B000.C048
import Seq.B000.C050
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C009
import Seq.B001.C010
import Seq.B001.C011
import Seq.B001.C012
import Seq.B001.C013
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C003
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B007.C000
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
# A218001: G.f. satisfies: A(x) = x + sum_{n>=1} A(x)^prime(n).

The programs for A218001, there is no canonical definition to state claims against.
-/

/-! ## A218001.P1381154087471620350

`A378247(n+1)`
-/

namespace A218001.P1381154087471620350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378247 (n + 1)

end

end A218001.P1381154087471620350

/-! ## A218001.P13245583336936700292

`A261585(A150206(n+1))`
-/

namespace A218001.P13245583336936700292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261585 (A150206 (n + 1)).toNat

end

end A218001.P13245583336936700292

/-!
# A218004: Number of equivalence classes of compositions of n where two compositions a,b are considered equivalent if the summands of a can be permuted into the summands of b with an even number of transpositions.

The programs for A218004, there is no canonical definition to state claims against.
-/

/-! ## A218004.P2158824939196960784

`A000009(n)+A000065(n)`
-/

namespace A218004.P2158824939196960784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 n + A000065 n

end

end A218004.P2158824939196960784

/-! ## A218004.P12766276211072249971

`A000041(n)+A111133(n)`
-/

namespace A218004.P12766276211072249971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n + A111133 n

end

end A218004.P12766276211072249971

/-! ## A218004.P6792405786303203562

`A333147(n)+A047967(n)`
-/

namespace A218004.P6792405786303203562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333147 n + A047967 n

end

end A218004.P6792405786303203562

/-! ## A218004.P13266040519243114226

`A000065(n)+abs(A081360(n))`
-/

namespace A218004.P13266040519243114226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000065 n + |A081360 n|

end

end A218004.P13266040519243114226

/-! ## A218004.P12977662636514940373

`A000065(n)+∑[A087897(n)]`
-/

namespace A218004.P12977662636514940373
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087897 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000065 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A218004.P12977662636514940373

/-! ## A218004.P6640943942157044100

`A111133(n)+∑[A002865(n)]`
-/

namespace A218004.P6640943942157044100
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111133 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A218004.P6640943942157044100

/-! ## A218004.P15728379422993206575

`A000065(n)+A111133(n)+1`
-/

namespace A218004.P15728379422993206575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000065 n + (A111133 n + 1)

end

end A218004.P15728379422993206575

/-! ## A218004.P11001003556269801627

`A000009(n)+A000041(n)-1`
-/

namespace A218004.P11001003556269801627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 n + (A000041 n - 1)

end

end A218004.P11001003556269801627

/-! ## A218004.P1721182886912223105

`A000041(n)+A000065(n)-A047967(n)`
-/

namespace A218004.P1721182886912223105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n + (A000065 n - A047967 n)

end

end A218004.P1721182886912223105

/-! ## A218004.P9809981705395976329

`A111133(n)+A035363(2*n)`
-/

namespace A218004.P9809981705395976329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111133 n + A035363 (2 * n)

end

end A218004.P9809981705395976329

/-! ## A218004.P1475240859111874359

`A111133(n)+sqrt(A001255(n))`
-/

namespace A218004.P1475240859111874359
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A111133 n : ℝ) + Real.sqrt (A001255 n : ℝ)

end

end A218004.P1475240859111874359

/-!
# A218005: Nonsquare semiprimes p*q (10 excluded) giving record large smallest number p^r * q^s such that each decimal digit appears a prime number of times.

The programs for A218005, there is no canonical definition to state claims against.
-/

/-! ## A218005.P12178703007523388747

`∩[A316783(n+1), A371811(n+1)]`
-/

namespace A218005.P12178703007523388747
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316783 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371811 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A218005.P12178703007523388747

/-! ## A218005.P12206243481333107378

`A332951(A332932(n+1)+A226022(n))`
-/

namespace A218005.P12206243481333107378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332951 (A332932 (n + 1) + A226022 n).toNat

end

end A218005.P12206243481333107378

/-!
# A218006: Numbers n such that sigma(tau(phi(n))) = tau(phi(sigma(n))) = phi(sigma(tau(n))).

The programs for A218006, there is no canonical definition to state claims against.
-/

/-! ## A218006.P13519306927835218195

`lcm(A105560(n+1), A368521(A124400(n+1)))`
-/

namespace A218006.P13519306927835218195
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A105560 (n + 1)) (A368521 (A124400 (n + 1)).toNat)

end

end A218006.P13519306927835218195

/-!
# A218007: Number of partitions of n into at most three primes (including 1).

The programs for A218007, there is no canonical definition to state claims against.
-/

/-! ## A218007.P2838319058985405828

`A347622(n)+A071335(n+1)`
-/

namespace A218007.P2838319058985405828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347622 n + A071335 (n + 1)

end

end A218007.P2838319058985405828

/-! ## A218007.P3770321796346128471

`A347622(n)+A110654(A002126(n+1))+A068307(n+1)`
-/

namespace A218007.P3770321796346128471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347622 n + (A110654 (A002126 (n + 1)).toNat + A068307 (n + 1))

end

end A218007.P3770321796346128471

/-! ## A218007.P2794689877462629446

`A071335(n+1)+ceil(A347744(char[2]+n)/2)`
-/

namespace A218007.P2794689877462629446
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071335 (n + 1) + ⌈(A347744 ((if ∃ j, f1 j = n then 1 else 0) + n) : ℚ) / 2⌉

end

end A218007.P2794689877462629446

/-! ## A218007.P2840281695698638405

`A110654(A347744(char[2]+n))+A071335(n+1)`
-/

namespace A218007.P2840281695698638405
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A347744 ((if ∃ j, f1 j = n then 1 else 0) + n)).toNat + A071335 (n + 1)

end

end A218007.P2840281695698638405

/-! ## A218007.P3421982628482580526

`A071335(n+1)+A004526(A347744(char[2]+n)+1)`
-/

namespace A218007.P3421982628482580526
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071335 (n + 1) + A004526 (A347744 ((if ∃ j, f1 j = n then 1 else 0) + n) + 1).toNat

end

end A218007.P3421982628482580526

/-! ## A218007.P17999679501882141126

`A071335(n+1)+A008619(A347744(char[2]+n)+1)-1`
-/

namespace A218007.P17999679501882141126
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071335 (n + 1) + (A008619 (A347744 ((if ∃ j, f1 j = n then 1 else 0) + n) + 1).toNat - 1)

end

end A218007.P17999679501882141126

/-! ## A218007.P2842175934061443905

`A010051(n+1)+A347622(n)+A257177(n+1)`
-/

namespace A218007.P2842175934061443905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (n + 1) + (A347622 n + A257177 (n + 1))

end

end A218007.P2842175934061443905

/-! ## A218007.P6949625024724193638

`A347622(n)+A257177(n+1)+char[eq[2, A000005(n+1)]]`
-/

namespace A218007.P6949625024724193638
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347622 n + (A257177 (n + 1) + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ))

end

end A218007.P6949625024724193638

/-! ## A218007.P1989326174990562852

`A347623(n+2)-A347578(n+2)`
-/

namespace A218007.P1989326174990562852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347623 (n + 2) - A347578 (n + 2)

end

end A218007.P1989326174990562852

/-!
# A218008: Sum of successive absolute differences of the binomial coefficients = 2*A014495(n).

The programs for A218008, the canonical program `A218008.P17318171141728897838` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A218008 has offset 0).

The definition of A218008 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A218008.P17318171141728897838

`2*(C(n, floor((n+1)/2))-1)`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A218008

/-- `2*(C(n, floor((n+1)/2))-1)` -/
def P17318171141728897838.Spec : Prop :=
  ∀ n, P17318171141728897838.a n = A218008 n

theorem P17318171141728897838.correct : P17318171141728897838.Spec := by
  intro n
  simp only [A218008]

end A218008

/-! ## A218008.P1289255348131171517

`∏[xor(1, n)/(n+1)+1]-2`
-/

namespace A218008.P1289255348131171517
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.xor 1 n : ℚ) / (n + 1 : ℚ) + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j - 2

end

end A218008.P1289255348131171517

namespace A218008

/-- `∏[xor(1, n)/(n+1)+1]-2` -/
def P1289255348131171517.Spec : Prop :=
  ∀ n, P1289255348131171517.a n = (A218008 n : ℚ)

end A218008

/-! ## A218008.P14345829616206195361

`∏[2*or(1, n)/(n+1)]-2`
-/

namespace A218008.P14345829616206195361
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * Nat.lor 1 n : ℚ) / (n + 1 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j - 2

end

end A218008.P14345829616206195361

namespace A218008

/-- `∏[2*or(1, n)/(n+1)]-2` -/
def P14345829616206195361.Spec : Prop :=
  ∀ n, P14345829616206195361.a n = (A218008 n : ℚ)

end A218008

/-! ## A218008.P8397887611227486020

`2*A014495(n)`
-/

namespace A218008.P8397887611227486020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A014495 n

end

end A218008.P8397887611227486020

namespace A218008

/-- `2*A014495(n)` -/
def P8397887611227486020.Spec : Prop :=
  ∀ n, P8397887611227486020.a n = A218008 n

end A218008

/-! ## A218008.P6338595641618399780

`A063886(1+n)-2`
-/

namespace A218008.P6338595641618399780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063886 (1 + n) - 2

end

end A218008.P6338595641618399780

namespace A218008

/-- `A063886(1+n)-2` -/
def P6338595641618399780.Spec : Prop :=
  ∀ n, P6338595641618399780.a n = A218008 n

end A218008

/-! ## A218008.P17846647580704792375

`A182027(n+2)-2`
-/

namespace A218008.P17846647580704792375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182027 (n + 2) - 2

end

end A218008.P17846647580704792375

namespace A218008

/-- `A182027(n+2)-2` -/
def P17846647580704792375.Spec : Prop :=
  ∀ n, P17846647580704792375.a n = A218008 n

end A218008

/-! ## A218008.P7493056947114031852

`2*(A201686(n)+1)`
-/

namespace A218008.P7493056947114031852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A201686 n + 1)

end

end A218008.P7493056947114031852

namespace A218008

/-- `2*(A201686(n)+1)` -/
def P7493056947114031852.Spec : Prop :=
  ∀ n, P7493056947114031852.a n = A218008 n

end A218008

/-! ## A218008.P18040105067759391893

`2*(A001405(n)-1)`
-/

namespace A218008.P18040105067759391893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A001405 n - 1)

end

end A218008.P18040105067759391893

namespace A218008

/-- `2*(A001405(n)-1)` -/
def P18040105067759391893.Spec : Prop :=
  ∀ n, P18040105067759391893.a n = A218008 n

end A218008

/-! ## A218008.P1960989498708037421

`2*(A051920(n)-2)`
-/

namespace A218008.P1960989498708037421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A051920 n - 2)

end

end A218008.P1960989498708037421

namespace A218008

/-- `2*(A051920(n)-2)` -/
def P1960989498708037421.Spec : Prop :=
  ∀ n, P1960989498708037421.a n = A218008 n

end A218008

/-! ## A218008.P7246246040658266739

`∑[2*Δ[A210736(n)]]`
-/

namespace A218008.P7246246040658266739
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210736 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A218008.P7246246040658266739

namespace A218008

/-- `∑[2*Δ[A210736(n)]]` -/
def P7246246040658266739.Spec : Prop :=
  ∀ n, P7246246040658266739.a n = A218008 n

end A218008

/-! ## A218008.P5256908580927370800

`2*(A210736(n+1)-1)`
-/

namespace A218008.P5256908580927370800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A210736 (n + 1) - 1)

end

end A218008.P5256908580927370800

namespace A218008

/-- `2*(A210736(n+1)-1)` -/
def P5256908580927370800.Spec : Prop :=
  ∀ n, P5256908580927370800.a n = A218008 n

end A218008

/-! ## A218008.P12572773569958550102

`∑[(n-1)*A089408(n)]+1`
-/

namespace A218008.P12572773569958550102
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1) * A089408 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A218008.P12572773569958550102

namespace A218008

/-- `∑[(n-1)*A089408(n)]+1` -/
def P12572773569958550102.Spec : Prop :=
  ∀ n, P12572773569958550102.a n = A218008 n

end A218008

/-! ## A218008.P12168811254418746424

`2*(∑[A037952(abs(1-n))]-1)`
-/

namespace A218008.P12168811254418746424
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037952 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A218008.P12168811254418746424

namespace A218008

/-- `2*(∑[A037952(abs(1-n))]-1)` -/
def P12168811254418746424.Spec : Prop :=
  ∀ n, P12168811254418746424.a n = A218008 n

end A218008

/-! ## A218008.P15387050412948451193

`A201686(n)+A001405(n)`
-/

namespace A218008.P15387050412948451193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201686 n + A001405 n

end

end A218008.P15387050412948451193

namespace A218008

/-- `A201686(n)+A001405(n)` -/
def P15387050412948451193.Spec : Prop :=
  ∀ n, P15387050412948451193.a n = A218008 n

end A218008

/-! ## A218008.P1872711825618663360

`A036256(n)-A166588(n)`
-/

namespace A218008.P1872711825618663360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036256 n - A166588 n

end

end A218008.P1872711825618663360

namespace A218008

/-- `A036256(n)-A166588(n)` -/
def P1872711825618663360.Spec : Prop :=
  ∀ n, P1872711825618663360.a n = A218008 n

end A218008

/-! ## A218008.P14803144350773088841

`A210736(n+1)+A201686(n)`
-/

namespace A218008.P14803144350773088841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210736 (n + 1) + A201686 n

end

end A218008.P14803144350773088841

namespace A218008

/-- `A210736(n+1)+A201686(n)` -/
def P14803144350773088841.Spec : Prop :=
  ∀ n, P14803144350773088841.a n = A218008 n

end A218008

/-! ## A218008.P15525269716576688757

`A001405(n)+A014495(n)-1`
-/

namespace A218008.P15525269716576688757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001405 n + (A014495 n - 1)

end

end A218008.P15525269716576688757

namespace A218008

/-- `A001405(n)+A014495(n)-1` -/
def P15525269716576688757.Spec : Prop :=
  ∀ n, P15525269716576688757.a n = A218008 n

end A218008

/-! ## A218008.P14287475023143054390

`A208976(n)-(A037952(n)+1)`
-/

namespace A218008.P14287475023143054390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208976 n - (A037952 n + 1)

end

end A218008.P14287475023143054390

namespace A218008

/-- `A208976(n)-(A037952(n)+1)` -/
def P14287475023143054390.Spec : Prop :=
  ∀ n, P14287475023143054390.a n = A218008 n

end A218008

/-! ## A218008.P13343884549315870883

`A201686(n+1)-A210628(n+1)`
-/

namespace A218008.P13343884549315870883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201686 (n + 1) - A210628 (n + 1)

end

end A218008.P13343884549315870883

namespace A218008

/-- `A201686(n+1)-A210628(n+1)` -/
def P13343884549315870883.Spec : Prop :=
  ∀ n, P13343884549315870883.a n = A218008 n

end A218008

/-! ## A218008.P9250285841395577821

`2*(A037958(n)+A026034(n)-1)`
-/

namespace A218008.P9250285841395577821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A037958 n + A026034 n - 1)

end

end A218008.P9250285841395577821

namespace A218008

/-- `2*(A037958(n)+A026034(n)-1)` -/
def P9250285841395577821.Spec : Prop :=
  ∀ n, P9250285841395577821.a n = A218008 n

end A218008

/-!
# A218009: Binomial transform of A212831(n).

The programs for A218009, the canonical program `A218009.P8430775011455681326` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A218009 has offset 0).

The definition of A218009 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A218009.P14705934098661948800

`ogf((x-2x^2+2x^3-2x^4+2x^5)/(1-6x+14x^2-16x^3+8x^4))`
-/

namespace A218009.P14705934098661948800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, -2, 2, -2, 2] [1, -6, 14, -16, 8] n

end

end A218009.P14705934098661948800

namespace A218009

/-- `ogf((x-2x^2+2x^3-2x^4+2x^5)/(1-6x+14x^2-16x^3+8x^4))` -/
def P14705934098661948800.Spec : Prop :=
  ∀ n, P14705934098661948800.a n = A218009 n

end A218009

/-! ## A218009.P8430775011455681326

`6*a(n-1)-14*a(n-2)+16*a(n-3)-8*a(n-4)` with `a(0)=0, a(1)=1, a(2)=4, a(3)=12, a(4)=30, a(5)=70`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A218009

/-- `6*a(n-1)-14*a(n-2)+16*a(n-3)-8*a(n-4)` -/
def P8430775011455681326.Spec : Prop :=
  ∀ n, P8430775011455681326.a n = A218009 n

theorem P8430775011455681326.correct : P8430775011455681326.Spec := by
  intro n
  simp only [A218009]

end A218009

/-! ## A218009.P9794388912108137350

`A098156(n)-A038503(n)`
-/

namespace A218009.P9794388912108137350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098156 n - A038503 n

end

end A218009.P9794388912108137350

namespace A218009

/-- `A098156(n)-A038503(n)` -/
def P9794388912108137350.Spec : Prop :=
  ∀ n, P9794388912108137350.a n = A218009 n

end A218009

/-! ## A218009.P16034410171187558355

`A217988(n)-A146559(n)`
-/

namespace A218009.P16034410171187558355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217988 n - A146559 n

end

end A218009.P16034410171187558355

namespace A218009

/-- `A217988(n)-A146559(n)` -/
def P16034410171187558355.Spec : Prop :=
  ∀ n, P16034410171187558355.a n = A218009 n

end A218009

/-! ## A218009.P12572944333551742044

`A217988(n)-Δ[A009545(n)]`
-/

namespace A218009.P12572944333551742044
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009545 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217988 n - (f1 (n + 1) - f1 n)

end

end A218009.P12572944333551742044

namespace A218009

/-- `A217988(n)-Δ[A009545(n)]` -/
def P12572944333551742044.Spec : Prop :=
  ∀ n, P12572944333551742044.a n = A218009 n

end A218009

/-! ## A218009.P8118878195943359335

`A106472(n)-Δ[A135360(n)]`
-/

namespace A218009.P8118878195943359335
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135360 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106472 n - (f1 (n + 1) - f1 n)

end

end A218009.P8118878195943359335

namespace A218009

/-- `A106472(n)-Δ[A135360(n)]` -/
def P8118878195943359335.Spec : Prop :=
  ∀ n, P8118878195943359335.a n = A218009 n

end A218009

/-! ## A218009.P595991404301128047

`A009545(n)+A217988(n)-A099087(n)`
-/

namespace A218009.P595991404301128047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009545 n + (A217988 n - A099087 n)

end

end A218009.P595991404301128047

namespace A218009

/-- `A009545(n)+A217988(n)-A099087(n)` -/
def P595991404301128047.Spec : Prop :=
  ∀ n, P595991404301128047.a n = A218009 n

end A218009

/-! ## A218009.P11923895542411311392

`A009545(n)+A217988(n)-A009545(n+1)`
-/

namespace A218009.P11923895542411311392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009545 n + (A217988 n - A009545 (n + 1))

end

end A218009.P11923895542411311392

namespace A218009

/-- `A009545(n)+A217988(n)-A009545(n+1)` -/
def P11923895542411311392.Spec : Prop :=
  ∀ n, P11923895542411311392.a n = A218009 n

end A218009

/-! ## A218009.P6475937437429442924

`∑{#}[n, C(n, #)*A212831(#)]`
-/

namespace A218009.P6475937437429442924
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (Nat.choose n k : ℤ) * A212831 k

end

end A218009.P6475937437429442924

namespace A218009

/-- `∑{#}[n, C(n, #)*A212831(#)]` -/
def P6475937437429442924.Spec : Prop :=
  ∀ n, P6475937437429442924.a n = A218009 n

end A218009

/-!
# A218010: Primes of the form (24*p + 1)/5, where p is a Fermat pseudoprime to base 2.

The programs for A218010, there is no canonical definition to state claims against.
-/

/-! ## A218010.P3708226882991989963

`p?[A250120(A001567(n+1))]`
-/

namespace A218010.P3708226882991989963
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 (A001567 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A218010.P3708226882991989963

/-! ## A218010.P1807260693868454941

`filter[A250120(A001567(n+1)), A010051(#)]`
-/

namespace A218010.P1807260693868454941
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 (A001567 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A218010.P1807260693868454941

/-!
# A218011: Numbers k for which k' = x'*y', where x>0, y>0, k = x + y and k', x', y' are the arithmetic derivatives of k, x, y.

The programs for A218011, there is no canonical definition to state claims against.
-/

/-! ## A218011.P469259888457787152

`A122921(A225885(2*n+5))+n+1`
-/

namespace A218011.P469259888457787152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122921 (A225885 (2 * n + 5)).toNat + (n + 1 : ℤ)

end

end A218011.P469259888457787152

/-!
# A218013: Numbers that divide the product of the nonzero digits (in base 10) of their square.

The programs for A218013, there is no canonical definition to state claims against.
-/

/-! ## A218013.P6271744714422954239

`record[A056926(A128606(n+1))]`
-/

namespace A218013.P6271744714422954239
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056926 (A128606 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A218013.P6271744714422954239

/-! ## A218013.P823169434217577715

`A124223(A181734(n))+n`
-/

namespace A218013.P823169434217577715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124223 (A181734 n).toNat + (n : ℤ)

end

end A218013.P823169434217577715

/-!
# A218015: Number of primes p such that sqrt(q) - sqrt(p) > 1/n, where q is the prime after p.

The programs for A218015, there is no canonical definition to state claims against.
-/

/-! ## A218015.P9581843991964315655

`xor(A195079(A288299(n)), A340963(n))`
-/

namespace A218015.P9581843991964315655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A195079 (A288299 n).toNat) (A340963 (n + 14))

end

end A218015.P9581843991964315655

/-! ## A218015.P16382618232347127170

`A169799(A007604(2*(n+1)))-A211986(3*n+5)`
-/

namespace A218015.P16382618232347127170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169799 (A007604 (2 * (n + 1))).toNat - A211986 (3 * n + 5)

end

end A218015.P16382618232347127170

/-!
# A218016: Triangle, read by rows, where T(n,k) = k!*C(n, k)*5^(n-k) for n>=0, k=0..n.

The programs for A218016, the canonical program `A218016.P1411451324720330037` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A218016 has offset 0).

The definition of A218016 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A218016.P1411451324720330037

`col(n)!*C(row(n), col(n))*5^(row(n)-col(n))`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A218016

/-- `col(n)!*C(row(n), col(n))*5^(row(n)-col(n))` -/
def P1411451324720330037.Spec : Prop :=
  ∀ n, P1411451324720330037.a n = (A218016 n : ℚ)

end A218016

/-! ## A218016.P7404811212596443902

`5^(row(n)-col(n))*row(n)!/(row(n)-col(n))!`
-/

namespace A218016.P7404811212596443902
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (5 : ℚ) ^ ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ) : ℤ) * (Nat.factorial (SequenceMachineLib.triRow n) : ℚ) / (Nat.factorial ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ)).toNat : ℚ)

end

end A218016.P7404811212596443902

namespace A218016

/-- `5^(row(n)-col(n))*row(n)!/(row(n)-col(n))!` -/
def P7404811212596443902.Spec : Prop :=
  ∀ n, P7404811212596443902.a n = (A218016 n : ℚ)

end A218016

/-! ## A218016.P10116049787372882541

`T(n-1,k)+col(n)*T(n-1,k-1)+2*2*T(n-1,k)` with `a(0)=1`
-/

namespace A218016.P10116049787372882541
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  SequenceMachineLib.triUp a n + SequenceMachineLib.triCol n * SequenceMachineLib.triUpLeft a n + 2 * (2 * SequenceMachineLib.triUp a n)

end

end A218016.P10116049787372882541

namespace A218016

/-- `T(n-1,k)+col(n)*T(n-1,k-1)+2*2*T(n-1,k)` -/
def P10116049787372882541.Spec : Prop :=
  ∀ n, (P10116049787372882541.a n : ℤ) = A218016 n

end A218016

/-! ## A218016.P13135255374417316465

`A038243(n)*A233543(n)`
-/

namespace A218016.P13135255374417316465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038243 n * A233543 n

end

end A218016.P13135255374417316465

namespace A218016

/-- `A038243(n)*A233543(n)` -/
def P13135255374417316465.Spec : Prop :=
  ∀ n, P13135255374417316465.a n = A218016 n

end A218016

/-! ## A218016.P6553171591943906977

`A002262(n)!*A038243(n)`
-/

namespace A218016.P6553171591943906977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A002262 n).toNat : ℤ) * A038243 n

end

end A218016.P6553171591943906977

namespace A218016

/-- `A002262(n)!*A038243(n)` -/
def P6553171591943906977.Spec : Prop :=
  ∀ n, P6553171591943906977.a n = A218016 n

end A218016

/-! ## A218016.P12685321697604460874

`A144328(n+1)!*A038243(n)`
-/

namespace A218016.P12685321697604460874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A144328 (n + 1)).toNat : ℤ) * A038243 n

end

end A218016.P12685321697604460874

namespace A218016

/-- `A144328(n+1)!*A038243(n)` -/
def P12685321697604460874.Spec : Prop :=
  ∀ n, P12685321697604460874.a n = A218016 n

end A218016

/-! ## A218016.P9045902732220407557

`A000351(A025581(n))*A008279(n)`
-/

namespace A218016.P9045902732220407557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000351 (A025581 n).toNat * A008279 n

end

end A218016.P9045902732220407557

namespace A218016

/-- `A000351(A025581(n))*A008279(n)` -/
def P9045902732220407557.Spec : Prop :=
  ∀ n, P9045902732220407557.a n = A218016 n

end A218016

/-! ## A218016.P1527802570491832956

`A008279(n)*A098615(A099375(n))`
-/

namespace A218016.P1527802570491832956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008279 n * A098615 (A099375 n).toNat

end

end A218016.P1527802570491832956

namespace A218016

/-- `A008279(n)*A098615(A099375(n))` -/
def P1527802570491832956.Spec : Prop :=
  ∀ n, P1527802570491832956.a n = A218016 n

end A218016

/-! ## A218016.P4832906456410167137

`A038243(n)*A119502(A061579(n))`
-/

namespace A218016.P4832906456410167137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038243 n * A119502 (A061579 n).toNat

end

end A218016.P4832906456410167137

namespace A218016

/-- `A038243(n)*A119502(A061579(n))` -/
def P4832906456410167137.Spec : Prop :=
  ∀ n, P4832906456410167137.a n = A218016 n

end A218016

/-! ## A218016.P10818684692971684358

`A038243(n)*A267383(A292564(n))`
-/

namespace A218016.P10818684692971684358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038243 n * A267383 (A292564 n).toNat

end

end A218016.P10818684692971684358

namespace A218016

/-- `A038243(n)*A267383(A292564(n))` -/
def P10818684692971684358.Spec : Prop :=
  ∀ n, P10818684692971684358.a n = A218016 n

end A218016

/-! ## A218016.P8911022650401555098

`A008279(n)*A289320(A130321(n))`
-/

namespace A218016.P8911022650401555098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008279 n * A289320 (A130321 n).toNat

end

end A218016.P8911022650401555098

namespace A218016

/-- `A008279(n)*A289320(A130321(n))` -/
def P8911022650401555098.Spec : Prop :=
  ∀ n, P8911022650401555098.a n = A218016 n

end A218016

/-!
# A218017: Triangle, read by rows, where T(n,k) = k!*C(n, k)*7^(n-k) for n>=0, k=0..n.

The programs for A218017, the canonical program `A218017.P7698800406610951253` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A218017 has offset 0).

The definition of A218017 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A218017.P7698800406610951253

`col(n)!*C(row(n), col(n))*7^(row(n)-col(n))`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A218017

/-- `col(n)!*C(row(n), col(n))*7^(row(n)-col(n))` -/
def P7698800406610951253.Spec : Prop :=
  ∀ n, P7698800406610951253.a n = (A218017 n : ℚ)

end A218017

/-! ## A218017.P11859806834017366048

`7^(row(n)-col(n))*row(n)!/(row(n)-col(n))!`
-/

namespace A218017.P11859806834017366048
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (7 : ℚ) ^ ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ) : ℤ) * (Nat.factorial (SequenceMachineLib.triRow n) : ℚ) / (Nat.factorial ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ)).toNat : ℚ)

end

end A218017.P11859806834017366048

namespace A218017

/-- `7^(row(n)-col(n))*row(n)!/(row(n)-col(n))!` -/
def P11859806834017366048.Spec : Prop :=
  ∀ n, P11859806834017366048.a n = (A218017 n : ℚ)

end A218017

/-! ## A218017.P9957990145538231336

`col(n)*T(n-1,k-1)+7*T(n-1,k)` with `a(0)=1`
-/

namespace A218017.P9957990145538231336
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  SequenceMachineLib.triCol n * SequenceMachineLib.triUpLeft a n + 7 * SequenceMachineLib.triUp a n

end

end A218017.P9957990145538231336

namespace A218017

/-- `col(n)*T(n-1,k-1)+7*T(n-1,k)` -/
def P9957990145538231336.Spec : Prop :=
  ∀ n, (P9957990145538231336.a n : ℤ) = A218017 n

end A218017

/-! ## A218017.P13858824505659439055

`col(n)!*A027466(n)`
-/

namespace A218017.P13858824505659439055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (SequenceMachineLib.triCol n) : ℤ) * A027466 n

end

end A218017.P13858824505659439055

namespace A218017

/-- `col(n)!*A027466(n)` -/
def P13858824505659439055.Spec : Prop :=
  ∀ n, P13858824505659439055.a n = A218017 n

end A218017

/-! ## A218017.P17756359349576360527

`A027466(n)*A233543(n)`
-/

namespace A218017.P17756359349576360527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027466 n * A233543 n

end

end A218017.P17756359349576360527

namespace A218017

/-- `A027466(n)*A233543(n)` -/
def P17756359349576360527.Spec : Prop :=
  ∀ n, P17756359349576360527.a n = A218017 n

end A218017

/-! ## A218017.P2164260468854773485

`A002262(n)!*A027466(n)`
-/

namespace A218017.P2164260468854773485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A002262 n).toNat : ℤ) * A027466 n

end

end A218017.P2164260468854773485

namespace A218017

/-- `A002262(n)!*A027466(n)` -/
def P2164260468854773485.Spec : Prop :=
  ∀ n, P2164260468854773485.a n = A218017 n

end A218017

/-! ## A218017.P14678704244574606886

`A144328(n+1)!*A027466(n)`
-/

namespace A218017.P14678704244574606886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A144328 (n + 1)).toNat : ℤ) * A027466 n

end

end A218017.P14678704244574606886

namespace A218017

/-- `A144328(n+1)!*A027466(n)` -/
def P14678704244574606886.Spec : Prop :=
  ∀ n, P14678704244574606886.a n = A218017 n

end A218017

/-! ## A218017.P15129306654931293900

`A000420(A025581(n))*A008279(n)`
-/

namespace A218017.P15129306654931293900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000420 (A025581 n).toNat * A008279 n

end

end A218017.P15129306654931293900

namespace A218017

/-- `A000420(A025581(n))*A008279(n)` -/
def P15129306654931293900.Spec : Prop :=
  ∀ n, P15129306654931293900.a n = A218017 n

end A218017

/-! ## A218017.P15805315905576561263

`A027466(n)*A119502(A061579(n))`
-/

namespace A218017.P15805315905576561263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027466 n * A119502 (A061579 n).toNat

end

end A218017.P15805315905576561263

namespace A218017

/-- `A027466(n)*A119502(A061579(n))` -/
def P15805315905576561263.Spec : Prop :=
  ∀ n, P15805315905576561263.a n = A218017 n

end A218017

/-! ## A218017.P1957045340997690945

`A114327(A112367(n))!*A027466(n)`
-/

namespace A218017.P1957045340997690945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A114327 (A112367 n).toNat).toNat : ℤ) * A027466 n

end

end A218017.P1957045340997690945

namespace A218017

/-- `A114327(A112367(n))!*A027466(n)` -/
def P1957045340997690945.Spec : Prop :=
  ∀ n, P1957045340997690945.a n = A218017 n

end A218017

/-! ## A218017.P15971786424682078195

`A027466(n)/A038207(n)*A090802(n)`
-/

namespace A218017.P15971786424682078195
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A027466 n : ℚ) / (A038207 n : ℚ) * (A090802 n : ℚ)

end

end A218017.P15971786424682078195

namespace A218017

/-- `A027466(n)/A038207(n)*A090802(n)` -/
def P15971786424682078195.Spec : Prop :=
  ∀ n, P15971786424682078195.a n = (A218017 n : ℚ)

end A218017

/-! ## A218017.P6282061071167405647

`A075502(n+1)/A008277(n+1)*A008279(n)`
-/

namespace A218017.P6282061071167405647
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A075502 (n + 1) : ℚ) / (A008277 (n + 1) : ℚ) * (A008279 n : ℚ)

end

end A218017.P6282061071167405647

namespace A218017

/-- `A075502(n+1)/A008277(n+1)*A008279(n)` -/
def P6282061071167405647.Spec : Prop :=
  ∀ n, P6282061071167405647.a n = (A218017 n : ℚ)

end A218017

/-! ## A218017.P12948277912378216427

`A027466(n)*A267383(A292564(n))`
-/

namespace A218017.P12948277912378216427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027466 n * A267383 (A292564 n).toNat

end

end A218017.P12948277912378216427

namespace A218017

/-- `A027466(n)*A267383(A292564(n))` -/
def P12948277912378216427.Spec : Prop :=
  ∀ n, P12948277912378216427.a n = A218017 n

end A218017

/-!
# A218018: Triangle, read by rows, where T(n,k) = k!*C(n, k)*11^(n-k) for n>=0, k=0..n.

The programs for A218018, the canonical program `A218018.P1592286351535243553` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A218018 has offset 0).

The definition of A218018 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A218018.P1592286351535243553

`col(n)!*C(row(n), col(n))*11^(row(n)-col(n))`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A218018

/-- `col(n)!*C(row(n), col(n))*11^(row(n)-col(n))` -/
def P1592286351535243553.Spec : Prop :=
  ∀ n, P1592286351535243553.a n = (A218018 n : ℚ)

end A218018

/-! ## A218018.P9973083271071904316

`11^(row(n)-col(n))*row(n)!/(row(n)-col(n))!`
-/

namespace A218018.P9973083271071904316
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (11 : ℚ) ^ ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ) : ℤ) * (Nat.factorial (SequenceMachineLib.triRow n) : ℚ) / (Nat.factorial ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ)).toNat : ℚ)

end

end A218018.P9973083271071904316

namespace A218018

/-- `11^(row(n)-col(n))*row(n)!/(row(n)-col(n))!` -/
def P9973083271071904316.Spec : Prop :=
  ∀ n, P9973083271071904316.a n = (A218018 n : ℚ)

end A218018

/-! ## A218018.P10587808361979815952

`col(n)!*A038315(n)`
-/

namespace A218018.P10587808361979815952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (SequenceMachineLib.triCol n) : ℤ) * A038315 n

end

end A218018.P10587808361979815952

namespace A218018

/-- `col(n)!*A038315(n)` -/
def P10587808361979815952.Spec : Prop :=
  ∀ n, P10587808361979815952.a n = A218018 n

end A218018

/-! ## A218018.P11190447911850065731

`A038315(n)*A233543(n)`
-/

namespace A218018.P11190447911850065731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038315 n * A233543 n

end

end A218018.P11190447911850065731

namespace A218018

/-- `A038315(n)*A233543(n)` -/
def P11190447911850065731.Spec : Prop :=
  ∀ n, P11190447911850065731.a n = A218018 n

end A218018

/-! ## A218018.P6091785606717314173

`A002262(n)!*A038315(n)`
-/

namespace A218018.P6091785606717314173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A002262 n).toNat : ℤ) * A038315 n

end

end A218018.P6091785606717314173

namespace A218018

/-- `A002262(n)!*A038315(n)` -/
def P6091785606717314173.Spec : Prop :=
  ∀ n, P6091785606717314173.a n = A218018 n

end A218018

/-! ## A218018.P14217742859146876637

`A001020(A025581(n))*A008279(n)`
-/

namespace A218018.P14217742859146876637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001020 (A025581 n).toNat * A008279 n

end

end A218018.P14217742859146876637

namespace A218018

/-- `A001020(A025581(n))*A008279(n)` -/
def P14217742859146876637.Spec : Prop :=
  ∀ n, P14217742859146876637.a n = A218018 n

end A218018

/-! ## A218018.P6782568127179031438

`A013618(A061579(n))*A233543(n)`
-/

namespace A218018.P6782568127179031438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013618 (A061579 n).toNat * A233543 n

end

end A218018.P6782568127179031438

namespace A218018

/-- `A013618(A061579(n))*A233543(n)` -/
def P6782568127179031438.Spec : Prop :=
  ∀ n, P6782568127179031438.a n = A218018 n

end A218018

/-! ## A218018.P18076919764670381079

`A025581(A061579(n))!*A038315(n)`
-/

namespace A218018.P18076919764670381079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A025581 (A061579 n).toNat).toNat : ℤ) * A038315 n

end

end A218018.P18076919764670381079

namespace A218018

/-- `A025581(A061579(n))!*A038315(n)` -/
def P18076919764670381079.Spec : Prop :=
  ∀ n, P18076919764670381079.a n = A218018 n

end A218018

/-! ## A218018.P14105672592583476709

`A038315(n)*A081123(A158405(n+1))`
-/

namespace A218018.P14105672592583476709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038315 n * A081123 (A158405 (n + 1)).toNat

end

end A218018.P14105672592583476709

namespace A218018

/-- `A038315(n)*A081123(A158405(n+1))` -/
def P14105672592583476709.Spec : Prop :=
  ∀ n, P14105672592583476709.a n = A218018 n

end A218018

/-! ## A218018.P7716740770464506228

`A038315(n)*A112624(A059268(n))`
-/

namespace A218018.P7716740770464506228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038315 n * A112624 (A059268 n).toNat

end

end A218018.P7716740770464506228

namespace A218018

/-- `A038315(n)*A112624(A059268(n))` -/
def P7716740770464506228.Spec : Prop :=
  ∀ n, P7716740770464506228.a n = A218018 n

end A218018

/-! ## A218018.P14550647176352420468

`A008279(n)*A165832(A130321(n))`
-/

namespace A218018.P14550647176352420468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008279 n * A165832 (A130321 n).toNat

end

end A218018.P14550647176352420468

namespace A218018

/-- `A008279(n)*A165832(A130321(n))` -/
def P14550647176352420468.Spec : Prop :=
  ∀ n, P14550647176352420468.a n = A218018 n

end A218018

/-! ## A218018.P1789328271914439677

`A094587(A061579(n))*A165832(A130321(n))`
-/

namespace A218018.P1789328271914439677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094587 (A061579 n).toNat * A165832 (A130321 n).toNat

end

end A218018.P1789328271914439677

namespace A218018

/-- `A094587(A061579(n))*A165832(A130321(n))` -/
def P1789328271914439677.Spec : Prop :=
  ∀ n, P1789328271914439677.a n = A218018 n

end A218018

/-!
# A218019: Integers in which the number of distinct base-10 digits is 7.

The programs for A218019, there is no canonical definition to state claims against.
-/

/-! ## A218019.P16851978473249892734

`floor(A219743(3*n+1)/10)`
-/

namespace A218019.P16851978473249892734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A219743 (3 * n + 1) : ℚ) / 10⌋

end

end A218019.P16851978473249892734

/-!
# A218020: Shifts 3 places left under Euler transform with a(0)=0 and a(n)=1 for n < 3.

The programs for A218020, there is no canonical definition to state claims against.
-/

/-! ## A218020.P3842928105014588699

`A000196(floor(sqrt(A009543(n))))`
-/

namespace A218020.P3842928105014588699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (Int.sqrt (A009543 n)).toNat

end

end A218020.P3842928105014588699

/-! ## A218020.P13980516574687904095

`A307707(A025274(n+1)+n)`
-/

namespace A218020.P13980516574687904095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307707 (A025274 (n + 1) + (n : ℤ)).toNat

end

end A218020.P13980516574687904095

/-! ## A218020.P12055815222372005418

`A185116(n+5)+A135661(A307576(n))`
-/

namespace A218020.P12055815222372005418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185116 (n + 5) + A135661 (A307576 n).toNat

end

end A218020.P12055815222372005418

/-!
# A218021: Shifts 4 places left under Euler transform with a(0)=0 and a(n)=1 for n < 4.

The programs for A218021, there is no canonical definition to state claims against.
-/

/-! ## A218021.P4131207499592862612

`A144018(A076027(n+1))%A051043(n)`
-/

namespace A218021.P4131207499592862612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A144018 (A076027 (n + 1)).toNat) (A051043 n)

end

end A218021.P4131207499592862612

/-! ## A218021.P17097754862167601563

`round(A313921(A329738(n+2))/A310531(3*n+4))`
-/

namespace A218021.P17097754862167601563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A313921 (A329738 (n + 2)).toNat : ℚ) / (A310531 (3 * n + 4) : ℚ))

end

end A218021.P17097754862167601563

/-!
# A218022: Shifts 5 places left under Euler transform with a(0)=0 and a(n)=1 for n<5.

The programs for A218022, there is no canonical definition to state claims against.
-/

/-! ## A218022.P6758507689218254694

`A004525(A000196(A274936(n)))`
-/

namespace A218022.P6758507689218254694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A000196 (A274936 n).toNat).toNat

end

end A218022.P6758507689218254694

/-! ## A218022.P10641410356616049587

`floor(A110654(A001045(n))/A005987(n))`
-/

namespace A218022.P10641410356616049587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A110654 (A001045 n).toNat : ℚ) / (A005987 n : ℚ)⌋

end

end A218022.P10641410356616049587

/-! ## A218022.P8843660674364418375

`A391618(A324971(n+1)+A018892(n+1))`
-/

namespace A218022.P8843660674364418375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391618 (A324971 (n + 1) + A018892 (n + 1)).toNat

end

end A218022.P8843660674364418375

/-!
# A218024: Shifts 7 places left under Euler transform with a(0)=0 and a(n)=1 for n<7.

The programs for A218024, there is no canonical definition to state claims against.
-/

/-! ## A218024.P1056836048487843614

`A004525(A259361(∑[A068044(n)]))`
-/

namespace A218024.P1056836048487843614
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068044 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A259361 (∑ j ∈ Finset.range (n + 1), f1 j).toNat).toNat

end

end A218024.P1056836048487843614

/-! ## A218024.P14348042737155249690

`A240863(∑[A240882(n+1)%3])`
-/

namespace A218024.P14348042737155249690
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A240882 (n + 1)) 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240863 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A218024.P14348042737155249690

/-!
# A218026: Shifts 9 places left under Euler transform with a(0)=0 and a(n)=1 for n<9.

The programs for A218026, there is no canonical definition to state claims against.
-/

/-! ## A218026.P12032160430823894870

`A218027(n+1)%A221225(2*n+1)`
-/

namespace A218026.P12032160430823894870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A218027 (n + 1)) (A221225 (2 * n + 1))

end

end A218026.P12032160430823894870

/-! ## A218026.P7872968743390187314

`A288685(A288685(n))+A026815(n)`
-/

namespace A218026.P7872968743390187314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288685 (A288685 n).toNat + A026815 n

end

end A218026.P7872968743390187314

/-! ## A218026.P7494360705434558379

`A000041(A053392(n))%A000427(n+1)`
-/

namespace A218026.P7494360705434558379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000041 (A053392 n).toNat) (A000427 (n + 1))

end

end A218026.P7494360705434558379

/-! ## A218026.P7940336338481463170

`A000041(A131242(n))%A000427(n+1)`
-/

namespace A218026.P7940336338481463170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000041 (A131242 n).toNat) (A000427 (n + 1))

end

end A218026.P7940336338481463170

/-! ## A218026.P2082111068645076656

`A000041(A053392(n))%A344039(A316079(n))`
-/

namespace A218026.P2082111068645076656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000041 (A053392 n).toNat) (A344039 (A316079 n).toNat)

end

end A218026.P2082111068645076656

/-!
# A218027: Shifts 10 places left under Euler transform with a(0)=0 and a(n)=1 for n<10.

The programs for A218027, there is no canonical definition to state claims against.
-/

/-! ## A218027.P5053681386135519713

`A000041(A218530(n))%A344039(n)`
-/

namespace A218027.P5053681386135519713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000041 (A218530 n).toNat) (A344039 n)

end

end A218027.P5053681386135519713

/-! ## A218027.P1085356532789231377

`A000041(A218530(n))-A000007(n^3)`
-/

namespace A218027.P1085356532789231377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (A218530 n).toNat - A000007 (n ^ 3)

end

end A218027.P1085356532789231377

/-! ## A218027.P274346304465098798

`A218511(A218530(n))%A183174(n+1)`
-/

namespace A218027.P274346304465098798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A218511 (A218530 n).toNat) (A183174 (n + 1))

end

end A218027.P274346304465098798

/-! ## A218027.P4309014886151531006

`A000041(A213651(n))%A135114(n+1)`
-/

namespace A218027.P4309014886151531006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000041 (A213651 n).toNat) (A135114 (n + 1))

end

end A218027.P4309014886151531006

/-! ## A218027.P6745758077219671627

`A218511(A218530(n))%A135114(n+1)`
-/

namespace A218027.P6745758077219671627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A218511 (A218530 n).toNat) (A135114 (n + 1))

end

end A218027.P6745758077219671627

/-!
# A218030: Numbers k equal to half of the product of the nonzero (base-10) digits of k^2.

The programs for A218030, there is no canonical definition to state claims against.
-/

/-! ## A218030.P8076109623329849553

`A060583(A008486(n)*A344676(n+1))`
-/

namespace A218030.P8076109623329849553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060583 (A008486 n * A344676 (n + 1)).toNat

end

end A218030.P8076109623329849553

/-!
# A218031: G.f. A(x) satisfies A(x) = 1 + x / A(x^2).

The programs for A218031, there is no canonical definition to state claims against.
-/

/-! ## A218031.P12125514264583019576

`Δ[A123108(n)]*A101912(A123108(n))`
-/

namespace A218031.P12125514264583019576
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A101912 (A123108 n).toNat

end

end A218031.P12125514264583019576

/-! ## A218031.P3210493915377167301

`A238429(3*n)`
-/

namespace A218031.P3210493915377167301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238429 (3 * n)

end

end A218031.P3210493915377167301

/-!
# A218032: G.f. A(x) satisfies A(x) = 1 + x / (1 - x * A(x^2)).

The programs for A218032, there is no canonical definition to state claims against.
-/

/-! ## A218032.P4563054551521802569

`A110655(A226161(n+1)%A057203(n+1))`
-/

namespace A218032.P4563054551521802569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110655 (Int.tmod (A226161 (n + 1)) (A057203 (n + 1))).toNat

end

end A218032.P4563054551521802569

/-! ## A218032.P7005079423551123298

`A257639(A001006(n)-A036657(n))`
-/

namespace A218032.P7005079423551123298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257639 (A001006 n - A036657 n).toNat

end

end A218032.P7005079423551123298

/-! ## A218032.P17197240637835480261

`A287864(A192683(n))`
-/

namespace A218032.P17197240637835480261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287864 (A192683 n).toNat

end

end A218032.P17197240637835480261

/-! ## A218032.P11230744568341173946

`A122314(A005347(n))`
-/

namespace A218032.P11230744568341173946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122314 (A005347 n).toNat

end

end A218032.P11230744568341173946

/-! ## A218032.P5909272243702954801

`A180447(A079224(n))`
-/

namespace A218032.P5909272243702954801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180447 (A079224 n).toNat

end

end A218032.P5909272243702954801

/-!
# A218034: Number of ways to seat 4 types of people in n labeled seats around a circle such that no two adjacent people are of the same type.

The programs for A218034, the canonical program `A218034.P254039683009823123` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A218034 has offset 0).

The definition of A218034 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A218034.P254039683009823123

`ogf((1+2x+x^2-12x^3)/(1-2x-3x^2))`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A218034

/-- `ogf((1+2x+x^2-12x^3)/(1-2x-3x^2))` -/
def P254039683009823123.Spec : Prop :=
  ∀ n, P254039683009823123.a n = A218034 n

theorem P254039683009823123.correct : P254039683009823123.Spec := by
  intro n
  simp only [A218034]

end A218034

/-! ## A218034.P16748580570061521786

`record[lcm(3, xor(4, a(n-1)))]` with `a(0)=1, a(1)=4`
-/

namespace A218034.P16748580570061521786
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 4] fun n f1 =>
  Nat.lcm 3 (Nat.xor 4 (f1 (n - 1)))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A218034.P16748580570061521786

namespace A218034

/-- `record[lcm(3, xor(4, a(n-1)))]` -/
def P16748580570061521786.Spec : Prop :=
  ∀ n, (P16748580570061521786.a n : ℤ) = A218034 n

end A218034

/-! ## A218034.P5346828895266083970

`lcm(2, (-3)^(n%a(n-1))+3)` with `a(0)=1`
-/

namespace A218034.P5346828895266083970
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Int.lcm 2 ((-3) ^ (n % a (n - 1)) + 3)

end

end A218034.P5346828895266083970

namespace A218034

/-- `lcm(2, (-3)^(n%a(n-1))+3)` -/
def P5346828895266083970.Spec : Prop :=
  ∀ n, (P5346828895266083970.a n : ℤ) = A218034 n

end A218034

/-! ## A218034.P9961004973433806971

`A003946(n)-a(n-1)` with `a(0)=1, a(1)=4, a(2)=12`
-/

namespace A218034.P9961004973433806971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4, 12] fun n a =>
  A003946 n - a (n - 1)

end

end A218034.P9961004973433806971

namespace A218034

/-- `A003946(n)-a(n-1)` -/
def P9961004973433806971.Spec : Prop :=
  ∀ n, P9961004973433806971.a n = A218034 n

end A218034

/-! ## A218034.P17708877925911552614

`A007689(n)-xor(A040000(n), A062510(n))`
-/

namespace A218034.P17708877925911552614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007689 n - Int.xor (A040000 n) (A062510 n)

end

end A218034.P17708877925911552614

namespace A218034

/-- `A007689(n)-xor(A040000(n), A062510(n))` -/
def P17708877925911552614.Spec : Prop :=
  ∀ n, P17708877925911552614.a n = A218034 n

end A218034

/-! ## A218034.P11109771876071166817

`xor(gcd(12, A027107(n)), A024023(n))`
-/

namespace A218034.P11109771876071166817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (Int.gcd 12 (A027107 n) : ℤ) (A024023 n)

end

end A218034.P11109771876071166817

namespace A218034

/-- `xor(gcd(12, A027107(n)), A024023(n))` -/
def P11109771876071166817.Spec : Prop :=
  ∀ n, P11109771876071166817.a n = A218034 n

end A218034

/-! ## A218034.P4918664213779184793

`xor(A025581(A052905(n)), A105723(n))`
-/

namespace A218034.P4918664213779184793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A025581 (A052905 n).toNat) (A105723 n)

end

end A218034.P4918664213779184793

namespace A218034

/-- `xor(A025581(A052905(n)), A105723(n))` -/
def P4918664213779184793.Spec : Prop :=
  ∀ n, P4918664213779184793.a n = A218034 n

end A218034

/-!
# A218035: Number of n-digit palindromes with squares that are also palindromes.

The programs for A218035, the canonical program `A218035.P12034641589586895270` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A218035 has offset 1).

The definition of A218035 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A218035.P3763750797877708757

`ogf((4+2x-11x^2-5x^3+12x^4+5x^5-5x^6-x^7+2x^8)/(1-4x^2+6x^4-4x^6+x^8))`
-/

namespace A218035.P3763750797877708757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [4, 2, -11, -5, 12, 5, -5, -1, 2] [1, 0, -4, 0, 6, 0, -4, 0, 1] n

end

end A218035.P3763750797877708757

namespace A218035

/-- `ogf((4+2x-11x^2-5x^3+12x^4+5x^5-5x^6-x^7+2x^8)/(1-4x^2+6x^4-4x^6+x^8))` -/
def P3763750797877708757.Spec : Prop :=
  ∀ n, P3763750797877708757.a n = A218035 (n + 1)

end A218035

/-! ## A218035.P12034641589586895270

`4*a(n-2)-6*a(n-4)+4*a(n-6)-a(n-8)` with `a(0)=4, a(1)=2, a(2)=5, a(3)=3, a(4)=8, a(5)=5, a(6)=13, a(7)=9, a(8)=22`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A218035

/-- `4*a(n-2)-6*a(n-4)+4*a(n-6)-a(n-8)` -/
def P12034641589586895270.Spec : Prop :=
  ∀ n, P12034641589586895270.a n = A218035 (n + 1)

theorem P12034641589586895270.correct : P12034641589586895270.Spec := by
  intro n
  simp only [A218035, Nat.add_sub_cancel]

end A218035

/-! ## A218035.P3889836076648052046

`floor(1/(n+1))+Δ[A343098(n)]`
-/

namespace A218035.P3889836076648052046
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343098 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊1 / (n + 1 : ℚ)⌋ + (f1 (n + 1) - f1 n)

end

end A218035.P3889836076648052046

namespace A218035

/-- `floor(1/(n+1))+Δ[A343098(n)]` -/
def P3889836076648052046.Spec : Prop :=
  ∀ n, P3889836076648052046.a n = A218035 (n + 1)

end A218035

/-! ## A218035.P6724113292196035953

`Δ[A343098(n)+A040000(n)]`
-/

namespace A218035.P6724113292196035953
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343098 n + A040000 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A218035.P6724113292196035953

namespace A218035

/-- `Δ[A343098(n)+A040000(n)]` -/
def P6724113292196035953.Spec : Prop :=
  ∀ n, P6724113292196035953.a n = A218035 (n + 1)

end A218035

/-! ## A218035.P5180422708290896101

`Δ[A343098(n)%A008453(n)]`
-/

namespace A218035.P5180422708290896101
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A343098 n) (A008453 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A218035.P5180422708290896101

namespace A218035

/-- `Δ[A343098(n)%A008453(n)]` -/
def P5180422708290896101.Spec : Prop :=
  ∀ n, P5180422708290896101.a n = A218035 (n + 1)

end A218035

/-! ## A218035.P15244139230917380998

`Δ[A343098(n)+A014963(A001316(n))]`
-/

namespace A218035.P15244139230917380998
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343098 n + A014963 (A001316 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A218035.P15244139230917380998

namespace A218035

/-- `Δ[A343098(n)+A014963(A001316(n))]` -/
def P15244139230917380998.Spec : Prop :=
  ∀ n, P15244139230917380998.a n = A218035 (n + 1)

end A218035

/-! ## A218035.P9813991366918834445

`Δ[A343098(n)+A178334(A178334(n))]`
-/

namespace A218035.P9813991366918834445
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343098 n + A178334 (A178334 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A218035.P9813991366918834445

namespace A218035

/-- `Δ[A343098(n)+A178334(A178334(n))]` -/
def P9813991366918834445.Spec : Prop :=
  ∀ n, P9813991366918834445.a n = A218035 (n + 1)

end A218035

/-! ## A218035.P1929580886183447020

`Δ[A343098(n)+A057427(n)]`
-/

namespace A218035.P1929580886183447020
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343098 n + A057427 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A218035.P1929580886183447020

namespace A218035

/-- `Δ[A343098(n)+A057427(n)]` -/
def P1929580886183447020.Spec : Prop :=
  ∀ n, P1929580886183447020.a n = A218035 (n + 1)

end A218035

/-! ## A218035.P10501191957511203243

`A307717(Δ[n²])`
-/

namespace A218035.P10501191957511203243
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307717 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A218035.P10501191957511203243

namespace A218035

/-- `A307717(Δ[n²])` -/
def P10501191957511203243.Spec : Prop :=
  ∀ n, P10501191957511203243.a n = A218035 (n + 1)

end A218035

/-! ## A218035.P11338880945018440996

`Δ[A343098(n)+A057979(A008574(n))]`
-/

namespace A218035.P11338880945018440996
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343098 n + A057979 (A008574 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A218035.P11338880945018440996

namespace A218035

/-- `Δ[A343098(n)+A057979(A008574(n))]` -/
def P11338880945018440996.Spec : Prop :=
  ∀ n, P11338880945018440996.a n = A218035 (n + 1)

end A218035

/-! ## A218035.P16868249505605161138

`Δ[A343098(n)-A178815(n+1)]`
-/

namespace A218035.P16868249505605161138
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343098 n - A178815 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A218035.P16868249505605161138

namespace A218035

/-- `Δ[A343098(n)-A178815(n+1)]` -/
def P16868249505605161138.Spec : Prop :=
  ∀ n, P16868249505605161138.a n = A218035 (n + 1)

end A218035

/-!
# A218036: a(n) = (n+1) + (n+3/2)*H(n) - (H(n)^3)/2, where H(n) = A002024(n).

The programs for A218036, the canonical program `A218036.P9810044621005342260` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A218036 has offset 1).

The definition of A218036 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A218036.P13605823765010047068

`(col(n)+2)*(row(n)+2)`
-/

namespace A218036.P13605823765010047068
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.triCol n + 2) * (SequenceMachineLib.triRow n + 2)

end

end A218036.P13605823765010047068

namespace A218036

/-- `(col(n)+2)*(row(n)+2)` -/
def P13605823765010047068.Spec : Prop :=
  ∀ n, (P13605823765010047068.a n : ℤ) = A218036 (n + 1)

end A218036

/-! ## A218036.P9810044621005342260

`(A002024(n+1)+1)*(n+2-A002024(n+1)*(A002024(n+1)-1)/2)`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A218036

/-- `(A002024(n+1)+1)*(n+2-A002024(n+1)*(A002024(n+1)-1)/2)` -/
def P9810044621005342260.Spec : Prop :=
  ∀ n, P9810044621005342260.a n = (A218036 (n + 1) : ℚ)

end A218036

/-! ## A218036.P9351785880551353159

`(2+col(n))*(comp[∑[n]]-n)`
-/

namespace A218036.P9351785880551353159
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 + SequenceMachineLib.triCol n : ℤ) * ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ))

end

end A218036.P9351785880551353159

namespace A218036

/-- `(2+col(n))*(comp[∑[n]]-n)` -/
def P9351785880551353159.Spec : Prop :=
  ∀ n, P9351785880551353159.a n = A218036 (n + 1)

end A218036

/-! ## A218036.P975572224210216976

`(1+∑[char[∑[n]]])*(col(n)+2)`
-/

namespace A218036.P975572224210216976
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (1 + ∑ j ∈ Finset.range (n + 1), f1 j) * (SequenceMachineLib.triCol n + 2)

end

end A218036.P975572224210216976

namespace A218036

/-- `(1+∑[char[∑[n]]])*(col(n)+2)` -/
def P975572224210216976.Spec : Prop :=
  ∀ n, (P975572224210216976.a n : ℤ) = A218036 (n + 1)

end A218036

/-! ## A218036.P14499550244412564791

`A154614(n+1)+2`
-/

namespace A218036.P14499550244412564791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154614 (n + 1) + 2

end

end A218036.P14499550244412564791

namespace A218036

/-- `A154614(n+1)+2` -/
def P14499550244412564791.Spec : Prop :=
  ∀ n, P14499550244412564791.a n = A218036 (n + 1)

end A218036

/-! ## A218036.P17227199964149874741

`A075362(comp[∑[n]]+1)`
-/

namespace A218036.P17227199964149874741
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075362 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 1)

end

end A218036.P17227199964149874741

namespace A218036

/-- `A075362(comp[∑[n]]+1)` -/
def P17227199964149874741.Spec : Prop :=
  ∀ n, P17227199964149874741.a n = A218036 (n + 1)

end A218036

/-! ## A218036.P1202066807099549573

`n+2-(A091435(n)-comp[∑[n]])`
-/

namespace A218036.P1202066807099549573
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) - (A091435 n - (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ))

end

end A218036.P1202066807099549573

namespace A218036

/-- `n+2-(A091435(n)-comp[∑[n]])` -/
def P1202066807099549573.Spec : Prop :=
  ∀ n, P1202066807099549573.a n = A218036 (n + 1)

end A218036

/-! ## A218036.P15542295595442161677

`(A002262(n)+2)*(comp[∑[n]]-n)`
-/

namespace A218036.P15542295595442161677
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A002262 n + 2) * ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ))

end

end A218036.P15542295595442161677

namespace A218036

/-- `(A002262(n)+2)*(comp[∑[n]]-n)` -/
def P15542295595442161677.Spec : Prop :=
  ∀ n, P15542295595442161677.a n = A218036 (n + 1)

end A218036

/-! ## A218036.P15368230486827266710

`(sqrt(A143844(n))+2)*(comp[∑[n]]-n)`
-/

namespace A218036.P15368230486827266710
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (Real.sqrt (A143844 n : ℝ) + 2) * ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ) : ℝ)

end

end A218036.P15368230486827266710

namespace A218036

/-- `(sqrt(A143844(n))+2)*(comp[∑[n]]-n)` -/
def P15368230486827266710.Spec : Prop :=
  ∀ n, P15368230486827266710.a n = (A218036 (n + 1) : ℝ)

end A218036

/-! ## A218036.P11060841880266670297

`(log2(A059268(n))+2)*(comp[∑[n]]-n)`
-/

namespace A218036.P11060841880266670297
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (Real.logb 2 (A059268 n : ℝ) + 2) * ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ) : ℝ)

end

end A218036.P11060841880266670297

namespace A218036

/-- `(log2(A059268(n))+2)*(comp[∑[n]]-n)` -/
def P11060841880266670297.Spec : Prop :=
  ∀ n, P11060841880266670297.a n = (A218036 (n + 1) : ℝ)

end A218036

/-! ## A218036.P10016443464337046301

`(A002260(n+1)+1)*(comp[∑[n]]-n)`
-/

namespace A218036.P10016443464337046301
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A002260 (n + 1) + 1) * ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ))

end

end A218036.P10016443464337046301

namespace A218036

/-- `(A002260(n+1)+1)*(comp[∑[n]]-n)` -/
def P10016443464337046301.Spec : Prop :=
  ∀ n, P10016443464337046301.a n = A218036 (n + 1)

end A218036

/-! ## A218036.P6039828817242057025

`A108667(n)%A155156(n+1)`
-/

namespace A218036.P6039828817242057025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A108667 n) (A155156 (n + 1))

end

end A218036.P6039828817242057025

namespace A218036

/-- `A108667(n)%A155156(n+1)` -/
def P6039828817242057025.Spec : Prop :=
  ∀ n, P6039828817242057025.a n = A218036 (n + 1)

end A218036

/-! ## A218036.P15343862822807114622

`A092283(n+1)+A059036(n)+2`
-/

namespace A218036.P15343862822807114622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092283 (n + 1) + (A059036 n + 2)

end

end A218036.P15343862822807114622

namespace A218036

/-- `A092283(n+1)+A059036(n)+2` -/
def P15343862822807114622.Spec : Prop :=
  ∀ n, P15343862822807114622.a n = A218036 (n + 1)

end A218036

/-! ## A218036.P15168742877595380799

`A144650(n+1)-A075362(n+1)`
-/

namespace A218036.P15168742877595380799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144650 (n + 1) - A075362 (n + 1)

end

end A218036.P15168742877595380799

namespace A218036

/-- `A144650(n+1)-A075362(n+1)` -/
def P15168742877595380799.Spec : Prop :=
  ∀ n, P15168742877595380799.a n = A218036 (n + 1)

end A218036

/-! ## A218036.P18418211336896982404

`A189151(n+1)-A095833(n+1)`
-/

namespace A218036.P18418211336896982404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189151 (n + 1) - A095833 (n + 1)

end

end A218036.P18418211336896982404

namespace A218036

/-- `A189151(n+1)-A095833(n+1)` -/
def P18418211336896982404.Spec : Prop :=
  ∀ n, P18418211336896982404.a n = A218036 (n + 1)

end A218036

/-! ## A218036.P17340405962260485898

`A083487(n+1)-A223544(n+1)`
-/

namespace A218036.P17340405962260485898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083487 (n + 1) - A223544 (n + 1)

end

end A218036.P17340405962260485898

namespace A218036

/-- `A083487(n+1)-A223544(n+1)` -/
def P17340405962260485898.Spec : Prop :=
  ∀ n, P17340405962260485898.a n = A218036 (n + 1)

end A218036

/-! ## A218036.P6660058314382011152

`A070216(n+1)+2-A073254(n)`
-/

namespace A218036.P6660058314382011152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070216 (n + 1) + (2 - A073254 n)

end

end A218036.P6660058314382011152

namespace A218036

/-- `A070216(n+1)+2-A073254(n)` -/
def P6660058314382011152.Spec : Prop :=
  ∀ n, P6660058314382011152.a n = A218036 (n + 1)

end A218036

/-! ## A218036.P12716406369756005730

`A079904(n)+2*A108872(n+1)`
-/

namespace A218036.P12716406369756005730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079904 n + 2 * A108872 (n + 1)

end

end A218036.P12716406369756005730

namespace A218036

/-- `A079904(n)+2*A108872(n+1)` -/
def P12716406369756005730.Spec : Prop :=
  ∀ n, P12716406369756005730.a n = A218036 (n + 1)

end A218036

/-! ## A218036.P10674877696319454471

`A075362(n+1)+A108872(n+1)+1`
-/

namespace A218036.P10674877696319454471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075362 (n + 1) + (A108872 (n + 1) + 1)

end

end A218036.P10674877696319454471

namespace A218036

/-- `A075362(n+1)+A108872(n+1)+1` -/
def P10674877696319454471.Spec : Prop :=
  ∀ n, P10674877696319454471.a n = A218036 (n + 1)

end A218036

/-! ## A218036.P6309555627063854834

`A003057(n+2)+A002260(n+1)*A003057(n+2)`
-/

namespace A218036.P6309555627063854834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003057 (n + 2) + A002260 (n + 1) * A003057 (n + 2)

end

end A218036.P6309555627063854834

namespace A218036

/-- `A003057(n+2)+A002260(n+1)*A003057(n+2)` -/
def P6309555627063854834.Spec : Prop :=
  ∀ n, P6309555627063854834.a n = A218036 (n + 1)

end A218036

/-!
# A218043: Base 3 numbers that have digits that sum to 3.

The programs for A218043, there is no canonical definition to state claims against.
-/

/-! ## A218043.P13070118284238525958

`A052217(comp[C(n, 3)])`
-/

namespace A218043.P13070118284238525958
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 3

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052217 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A218043.P13070118284238525958

/-! ## A218043.P17640320326768521978

`A007089(A226636(n+1))`
-/

namespace A218043.P17640320326768521978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007089 (A226636 (n + 1)).toNat

end

end A218043.P17640320326768521978

/-! ## A218043.P3569917227844167798

`∩[A007089(n), A052217(n+1)]`
-/

namespace A218043.P3569917227844167798
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007089 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052217 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A218043.P3569917227844167798

/-! ## A218043.P5457491490185911405

`∩[A007089(n), A262712(n+1)]`
-/

namespace A218043.P5457491490185911405
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007089 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262712 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A218043.P5457491490185911405

/-! ## A218043.P8070523511666230503

`∩[A052217(n+1), A381579(n)]`
-/

namespace A218043.P8070523511666230503
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052217 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381579 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A218043.P8070523511666230503

/-!
# A218044: Numbers of the form 2^k + prime, with k > 0.

The programs for A218044, there is no canonical definition to state claims against.
-/

/-! ## A218044.P4361780308028787184

`comp[lt[A397307(n+1), 1]]+1`
-/

namespace A218044.P4361780308028787184
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397307 (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 1

end

end A218044.P4361780308028787184

/-! ## A218044.P8430087310775692690

`∪[A367186(n+1), A397306(n+1)]`
-/

namespace A218044.P8430087310775692690
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367186 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397306 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A218044.P8430087310775692690

/-! ## A218044.P1752833124748917353

`A088948(n+1)+2`
-/

namespace A218044.P1752833124748917353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088948 (n + 1) + 2

end

end A218044.P1752833124748917353

/-!
# A218045: Number of truth tables of bracketed formulas (case 3).

The programs for A218045, there is no canonical definition to state claims against.
-/

/-! ## A218045.P16008192317046575648

`A054899(∑[n!*∑[1/n!]+1])`
-/

namespace A218045.P16008192317046575648
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  1 / (Nat.factorial n : ℚ)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℚ) * (∑ j ∈ Finset.range (n + 1), f2 j) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054899 (SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A218045.P16008192317046575648

/-! ## A218045.P7199319509045338879

`A105515(A137961(n))`
-/

namespace A218045.P7199319509045338879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105515 (A137961 n).toNat

end

end A218045.P7199319509045338879

/-!
# A218046: Primes p such that 8p + 2r is a primorial for some r in A006512.

The programs for A218046, there is no canonical definition to state claims against.
-/

/-! ## A218046.P13125921591570160591

`record[A078182(A306395(n+1))]`
-/

namespace A218046.P13125921591570160591
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078182 (A306395 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A218046.P13125921591570160591

/-! ## A218046.P12046461348027057700

`filter[A306395(1+n), A080846(#)]`
-/

namespace A218046.P12046461348027057700
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306395 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A080846 (f1 j).toNat = 1) n)

end

end A218046.P12046461348027057700

/-! ## A218046.P8808174227951086884

`filter[A306395(n+1), A214090(#)]`
-/

namespace A218046.P8808174227951086884
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306395 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A214090 (f1 j).toNat = 1) n)

end

end A218046.P8808174227951086884

/-! ## A218046.P13046762195822466734

`∩[A016789(n), A306395(n+1)]`
-/

namespace A218046.P13046762195822466734
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016789 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306395 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A218046.P13046762195822466734

/-! ## A218046.P13588075181540981848

`∩[A022429(n), A306395(n+1)]`
-/

namespace A218046.P13588075181540981848
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022429 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306395 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A218046.P13588075181540981848

/-! ## A218046.P12220863036314197634

`∩[A022430(n), A306395(n+1)]`
-/

namespace A218046.P12220863036314197634
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022430 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306395 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A218046.P12220863036314197634

/-! ## A218046.P3051878217671982567

`∩[A049636(n), A306395(n+1)]`
-/

namespace A218046.P3051878217671982567
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049636 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306395 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A218046.P3051878217671982567

/-! ## A218046.P4570822988377381169

`∩[A003627(n+1), A306395(n+1)]`
-/

namespace A218046.P4570822988377381169
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003627 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306395 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A218046.P4570822988377381169

/-! ## A218046.P1439467453519322634

`∩[A004612(n+1), A306395(n+1)]`
-/

namespace A218046.P1439467453519322634
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004612 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306395 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A218046.P1439467453519322634

/-! ## A218046.P15537048016312352424

`∩[A026179(n+1), A306395(n+1)]`
-/

namespace A218046.P15537048016312352424
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026179 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306395 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A218046.P15537048016312352424

/-! ## A218046.P11781353750538719099

`∩[A034020(n+1), A306395(n+1)]`
-/

namespace A218046.P11781353750538719099
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034020 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306395 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A218046.P11781353750538719099

/-! ## A218046.P17075095752645068554

`∩[A047261(n+1), A306395(n+1)]`
-/

namespace A218046.P17075095752645068554
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047261 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306395 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A218046.P17075095752645068554

/-! ## A218046.P8320579195612739773

`∩[A047262(n+1), A306395(n+1)]`
-/

namespace A218046.P8320579195612739773
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047262 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306395 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A218046.P8320579195612739773

/-! ## A218046.P13179390014944546038

`∩[A047267(n+1), A306395(n+1)]`
-/

namespace A218046.P13179390014944546038
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047267 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306395 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A218046.P13179390014944546038

/-! ## A218046.P9196010842676851084

`∩[A055048(n+1), A306395(n+1)]`
-/

namespace A218046.P9196010842676851084
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055048 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306395 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A218046.P9196010842676851084

/-! ## A218046.P5924178468845808610

`∩[A082406(n+1), A306395(n+1)]`
-/

namespace A218046.P5924178468845808610
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082406 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306395 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A218046.P5924178468845808610

/-! ## A218046.P16365335257880861594

`∩[A087943(n+1), A306395(n+1)]`
-/

namespace A218046.P16365335257880861594
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087943 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306395 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A218046.P16365335257880861594

/-! ## A218046.P13134574182802584356

`∩[A167409(n+1), A306395(n+1)]`
-/

namespace A218046.P13134574182802584356
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167409 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306395 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A218046.P13134574182802584356

/-! ## A218046.P4529586699295636760

`∩[A174438(n+1), A306395(n+1)]`
-/

namespace A218046.P4529586699295636760
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174438 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306395 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A218046.P4529586699295636760

/-! ## A218046.P4464326708577531725

`∩[A179871(n+1), A306395(n+1)]`
-/

namespace A218046.P4464326708577531725
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179871 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306395 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A218046.P4464326708577531725

/-!
# A218048: Numbers n such that n^2 + 1, (n+1)^2 + 1 and (n+2)^2 + 1 are divisible by a square.

The programs for A218048, there is no canonical definition to state claims against.
-/

/-! ## A218048.P7999645584337480221

`∩[A217798(n+1)-1, A217798(n+1)]`
-/

namespace A218048.P7999645584337480221
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217798 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217798 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A218048.P7999645584337480221

/-!
# A218050: Number of n X n arrays of the minimum value of corresponding elements and their horizontal, vertical, diagonal or antidiagonal neighbors in a random 0..3 n X n array.

The programs for A218050, there is no canonical definition to state claims against.
-/

/-! ## A218050.P749797352182957072

`A218056(∑[4*n]+1)`
-/

namespace A218050.P749797352182957072
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218056 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A218050.P749797352182957072

/-!
# A218051: Number of n X 1 arrays of the minimum value of corresponding elements and their horizontal, vertical, diagonal or antidiagonal neighbors in a random 0..3 n X 1 array.

The programs for A218051, the canonical program `A218051.P9972300394622476314` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A218051 has offset 1).

The definition of A218051 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 247 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A218051.P4561942010315638231

`ogf((4-4x+4x^2-2x^4)/(1-2x-x^2-2x^4-x^5))`
-/

namespace A218051.P4561942010315638231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [4, -4, 4, 0, -2] [1, -2, -1, 0, -2, -1] n

end

end A218051.P4561942010315638231

namespace A218051

/-- `ogf((4-4x+4x^2-2x^4)/(1-2x-x^2-2x^4-x^5))` -/
def P4561942010315638231.Spec : Prop :=
  ∀ n, P4561942010315638231.a n = A218051 (n + 1)

end A218051

/-! ## A218051.P9972300394622476314

`2*a(n-1)+a(n-2)+2*a(n-4)+a(n-5)` with `a(0)=4, a(1)=4, a(2)=16, a(3)=36, a(4)=94`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A218051

/-- `2*a(n-1)+a(n-2)+2*a(n-4)+a(n-5)` -/
def P9972300394622476314.Spec : Prop :=
  ∀ n, (P9972300394622476314.a n : ℤ) = A218051 (n + 1)

theorem P9972300394622476314.correct : P9972300394622476314.Spec := by
  intro n
  simp only [A218051, Nat.add_sub_cancel]

end A218051

/-! ## A218051.P4025382577520158924

`A207250(A028310(n))/A006355(n+2)`
-/

namespace A218051.P4025382577520158924
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A207250 (A028310 n).toNat : ℚ) / (A006355 (n + 2) : ℚ)

end

end A218051.P4025382577520158924

namespace A218051

/-- `A207250(A028310(n))/A006355(n+2)` -/
def P4025382577520158924.Spec : Prop :=
  ∀ n, P4025382577520158924.a n = (A218051 (n + 1) : ℚ)

end A218051

/-! ## A218051.P10978946237912408532

`sqrt(A207947(comp[2*(n+1)]-n+1))`
-/

namespace A218051.P10978946237912408532
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

open Classical in
def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A207947 ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ) + 1).toNat : ℝ)

end

end A218051.P10978946237912408532

namespace A218051

/-- `sqrt(A207947(comp[2*(n+1)]-n+1))` -/
def P10978946237912408532.Spec : Prop :=
  ∀ n, P10978946237912408532.a n = (A218051 (n + 1) : ℝ)

end A218051

/-! ## A218051.P5485170832561943656

`A218651(∑[n]+1)`
-/

namespace A218051.P5485170832561943656
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218651 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A218051.P5485170832561943656

namespace A218051

/-- `A218651(∑[n]+1)` -/
def P5485170832561943656.Spec : Prop :=
  ∀ n, P5485170832561943656.a n = A218051 (n + 1)

end A218051

/-!
# A218052: Number of n X 4 arrays of the minimum value of corresponding elements and their horizontal, vertical, diagonal or antidiagonal neighbors in a random 0..3 n X 4 array.

The programs for A218052, there is no canonical definition to state claims against.
-/

/-! ## A218052.P18327298476360915229

`A218056(A052905(n)+9)`
-/

namespace A218052.P18327298476360915229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218056 (A052905 n + 9).toNat

end

end A218052.P18327298476360915229

/-! ## A218052.P1247034201196449638

`A218056(A141214(n+1))`
-/

namespace A218052.P1247034201196449638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218056 (A141214 (n + 1)).toNat

end

end A218052.P1247034201196449638

/-!
# A218053: Number of nX5 arrays of the minimum value of corresponding elements and their horizontal, vertical, diagonal or antidiagonal neighbors in a random 0..3 nX5 array.

The programs for A218053, there is no canonical definition to state claims against.
-/

/-! ## A218053.P4688623985858082699

`A218056(A167499(n+3))`
-/

namespace A218053.P4688623985858082699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218056 (A167499 (n + 3)).toNat

end

end A218053.P4688623985858082699

/-! ## A218053.P728285772125979609

`A218056(A374005(n+1))`
-/

namespace A218053.P728285772125979609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218056 (A374005 (n + 1)).toNat

end

end A218053.P728285772125979609

/-!
# A218054: Number of nX6 arrays of the minimum value of corresponding elements and their horizontal, vertical, diagonal or antidiagonal neighbors in a random 0..3 nX6 array.

The programs for A218054, there is no canonical definition to state claims against.
-/

/-! ## A218054.P4141733537869889146

`A218056(A166136(n+4))`
-/

namespace A218054.P4141733537869889146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218056 (A166136 (n + 4)).toNat

end

end A218054.P4141733537869889146

/-! ## A218054.P176150555998529696

`A218056(A374007(n+1))`
-/

namespace A218054.P176150555998529696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218056 (A374007 (n + 1)).toNat

end

end A218054.P176150555998529696

/-!
# A218055: Number of nX7 arrays of the minimum value of corresponding elements and their horizontal, vertical, diagonal or antidiagonal neighbors in a random 0..3 nX7 array.

The programs for A218055, there is no canonical definition to state claims against.
-/

/-! ## A218055.P361750968610824535

`A218056(A056119(n)+28)`
-/

namespace A218055.P361750968610824535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218056 (A056119 n + 28).toNat

end

end A218055.P361750968610824535

/-! ## A218055.P16599719273453901494

`A218056(A374008(n+1))`
-/

namespace A218055.P16599719273453901494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218056 (A374008 (n + 1)).toNat

end

end A218055.P16599719273453901494

/-!
# A218056: T(n,k)=Number of nXk arrays of the minimum value of corresponding elements and their horizontal, vertical, diagonal or antidiagonal neighbors in a random 0..3 nXk array.

The programs for A218056, there is no canonical definition to state claims against.
-/

/-! ## A218056.P2575022476070295715

`A218051(A244580(n+1))`
-/

namespace A218056.P2575022476070295715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218051 (A244580 (n + 1)).toNat

end

end A218056.P2575022476070295715

/-! ## A218056.P8423791637368916556

`A008833(A235175(n+1))`
-/

namespace A218056.P8423791637368916556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008833 (A235175 (n + 1)).toNat

end

end A218056.P8423791637368916556

/-! ## A218056.P7706052807685588608

`A144178(A229096(n+1))`
-/

namespace A218056.P7706052807685588608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144178 (A229096 (n + 1)).toNat

end

end A218056.P7706052807685588608

/-! ## A218056.P3965689445322547603

`A098359(A003149(A003991(A098361(n))))`
-/

namespace A218056.P3965689445322547603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098359 (A003149 (A003991 (A098361 n).toNat).toNat).toNat

end

end A218056.P3965689445322547603

/-!
# A218057: a(n) = (b(n)+1)^b(n+1) + b(n+2)^(b(n+1)+1)/2, where b(n) = [n/2]*2 = A052928(n) =(0,0,2,2,4,4,...), even numbers repeated.

The programs for A218057, the canonical program `A218057.P12007877973336423221` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A218057 has offset 0).

The definition of A218057 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A218057.P12007877973336423221

`A109613(n)^A052928(n+1)+A052928(n+2)^A109613(n+1)/2`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A218057

/-- `A109613(n)^A052928(n+1)+A052928(n+2)^A109613(n+1)/2` -/
def P12007877973336423221.Spec : Prop :=
  ∀ n, P12007877973336423221.a n = (A218057 n : ℚ)

end A218057

/-!
# A218058: Number of n X n arrays of the minimum value of corresponding elements and their horizontal or antidiagonal neighbors in a random 0..1 n X n array.

The programs for A218058, there is no canonical definition to state claims against.
-/

/-! ## A218058.P7888509891090784989

`A218064(∑[4*n]+1)`
-/

namespace A218058.P7888509891090784989
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218064 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A218058.P7888509891090784989

/-! ## A218058.P18172589405597685816

`record[A003982(n)*A218064(n+1)]`
-/

namespace A218058.P18172589405597685816
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A218064 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A218058.P18172589405597685816

/-! ## A218058.P536105262012223425

`record[gcd(A114327(n), A218064(n+1))]`
-/

namespace A218058.P536105262012223425
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A114327 n) (A218064 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A218058.P536105262012223425

/-!
# A218059: Number of n X 3 arrays of the minimum value of corresponding elements and their horizontal or antidiagonal neighbors in a random 0..1 n X 3 array.

The programs for A218059, the canonical program `A218059.P9509528150767892245` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A218059 has offset 1).

The definition of A218059 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 161 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A218059.P18137688563354205200

`Δ[ogf((2-4x)/(1-5x+3x^2+2x^3))]`
-/

namespace A218059.P18137688563354205200
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, -4] [1, -5, 3, 2] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A218059.P18137688563354205200

namespace A218059

/-- `Δ[ogf((2-4x)/(1-5x+3x^2+2x^3))]` -/
def P18137688563354205200.Spec : Prop :=
  ∀ n, P18137688563354205200.a n = A218059 (n + 1)

end A218059

/-! ## A218059.P12163152890502966398

`ogf((4-2x-4x^2)/(1-5x+3x^2+2x^3))`
-/

namespace A218059.P12163152890502966398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [4, -2, -4] [1, -5, 3, 2] n

end

end A218059.P12163152890502966398

namespace A218059

/-- `ogf((4-2x-4x^2)/(1-5x+3x^2+2x^3))` -/
def P12163152890502966398.Spec : Prop :=
  ∀ n, P12163152890502966398.a n = A218059 (n + 1)

end A218059

/-! ## A218059.P9509528150767892245

`5*a(n-1)-3*a(n-2)-2*a(n-3)` with `a(0)=4, a(1)=18, a(2)=74`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A218059

/-- `5*a(n-1)-3*a(n-2)-2*a(n-3)` -/
def P9509528150767892245.Spec : Prop :=
  ∀ n, P9509528150767892245.a n = A218059 (n + 1)

theorem P9509528150767892245.correct : P9509528150767892245.Spec := by
  intro n
  simp only [A218059, Nat.add_sub_cancel]

end A218059

/-! ## A218059.P2427592930197671565

`A232335(∑[n+3]+1)`
-/

namespace A218059.P2427592930197671565
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232335 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A218059.P2427592930197671565

namespace A218059

/-- `A232335(∑[n+3]+1)` -/
def P2427592930197671565.Spec : Prop :=
  ∀ n, P2427592930197671565.a n = A218059 (n + 1)

end A218059

/-! ## A218059.P7867773935897384782

`A218064(A034856(n+2))`
-/

namespace A218059.P7867773935897384782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218064 (A034856 (n + 2)).toNat

end

end A218059.P7867773935897384782

namespace A218059

/-- `A218064(A034856(n+2))` -/
def P7867773935897384782.Spec : Prop :=
  ∀ n, P7867773935897384782.a n = A218059 (n + 1)

end A218059

/-!
# A218060: Number of n X 4 arrays of the minimum value of corresponding elements and their horizontal or antidiagonal neighbors in a random 0..1 n X 4 array.

The programs for A218060, the canonical program `A218060.P10919609516270718626` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A218060 has offset 1).

The definition of A218060 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 124 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A218060.P10919609516270718626

`ogf((6-12x-10x^2+44x^3-24x^4-6x^5+4x^6)/(1-9x+18x^2-6x^3-7x^4+2x^5+x^6))`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A218060

/-- `ogf((6-12x-10x^2+44x^3-24x^4-6x^5+4x^6)/(1-9x+18x^2-6x^3-7x^4+2x^5+x^6))` -/
def P10919609516270718626.Spec : Prop :=
  ∀ n, P10919609516270718626.a n = A218060 (n + 1)

theorem P10919609516270718626.correct : P10919609516270718626.Spec := by
  intro n
  simp only [A218060, Nat.add_sub_cancel]

end A218060

/-! ## A218060.P3079286318139919788

`A218064(A141214(n+1))`
-/

namespace A218060.P3079286318139919788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218064 (A141214 (n + 1)).toNat

end

end A218060.P3079286318139919788

namespace A218060

/-- `A218064(A141214(n+1))` -/
def P3079286318139919788.Spec : Prop :=
  ∀ n, P3079286318139919788.a n = A218060 (n + 1)

end A218060

/-!
# A218061: Number of nX5 arrays of the minimum value of corresponding elements and their horizontal or antidiagonal neighbors in a random 0..1 nX5 array.

The programs for A218061, there is no canonical definition to state claims against.
-/

/-! ## A218061.P8385905635228576071

`A218064(A046691(n+3))`
-/

namespace A218061.P8385905635228576071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218064 (A046691 (n + 3)).toNat

end

end A218061.P8385905635228576071

/-!
# A218062: Number of nX6 arrays of the minimum value of corresponding elements and their horizontal or antidiagonal neighbors in a random 0..1 nX6 array.

The programs for A218062, there is no canonical definition to state claims against.
-/

/-! ## A218062.P2463955094955997237

`A218064(A052905(n+3))`
-/

namespace A218062.P2463955094955997237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218064 (A052905 (n + 3)).toNat

end

end A218062.P2463955094955997237

/-!
# A218063: Number of nX7 arrays of the minimum value of corresponding elements and their horizontal or antidiagonal neighbors in a random 0..1 nX7 array.

The programs for A218063, there is no canonical definition to state claims against.
-/

/-! ## A218063.P4412515238739183403

`A218064(A055999(n+4))`
-/

namespace A218063.P4412515238739183403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218064 (A055999 (n + 4)).toNat

end

end A218063.P4412515238739183403

/-!
# A218064: T(n,k) = Number of n X k arrays of the minimum value of corresponding elements and their horizontal or antidiagonal neighbors in a random 0..1 n X k array.

The programs for A218064, there is no canonical definition to state claims against.
-/

/-! ## A218064.P2007107623801648976

`A218897(n+1)+A218882(A022166(n))`
-/

namespace A218064.P2007107623801648976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218897 (n + 1) + A218882 (A022166 n).toNat

end

end A218064.P2007107623801648976

/-! ## A218064.P3830689425285468400

`A218897(n+1)+A126756(A126770(n))`
-/

namespace A218064.P3830689425285468400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218897 (n + 1) + A126756 (A126770 n).toNat

end

end A218064.P3830689425285468400

/-! ## A218064.P7674835438578105620

`A218897(n+1)+A218882(A008277(n+1))`
-/

namespace A218064.P7674835438578105620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218897 (n + 1) + A218882 (A008277 (n + 1)).toNat

end

end A218064.P7674835438578105620

/-! ## A218064.P6241943195153686702

`A218897(n+1)+A126756(A197373(n+1))`
-/

namespace A218064.P6241943195153686702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218897 (n + 1) + A126756 (A197373 (n + 1)).toNat

end

end A218064.P6241943195153686702

/-! ## A218064.P3555453520473498767

`A218897(n+1)+A195847(A372066(n+1))`
-/

namespace A218064.P3555453520473498767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218897 (n + 1) + A195847 (A372066 (n + 1)).toNat

end

end A218064.P3555453520473498767

/-!
# A218065: Number of 2 X n arrays of the minimum value of corresponding elements and their horizontal or antidiagonal neighbors in a random 0..1 2 X n array.

The programs for A218065, the canonical program `A218065.P699385327046861770` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A218065 has offset 1).

The definition of A218065 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 249 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A218065.P6195717790701721847

`ogf((4+2x-4x^2-4x^3)/(1-x-4x^2-x^3+3x^4+2x^5))`
-/

namespace A218065.P6195717790701721847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [4, 2, -4, -4] [1, -1, -4, -1, 3, 2] n

end

end A218065.P6195717790701721847

namespace A218065

/-- `ogf((4+2x-4x^2-4x^3)/(1-x-4x^2-x^3+3x^4+2x^5))` -/
def P6195717790701721847.Spec : Prop :=
  ∀ n, P6195717790701721847.a n = A218065 (n + 1)

end A218065

/-! ## A218065.P699385327046861770

`a(n-1)+4*a(n-2)+a(n-3)-3*a(n-4)-2*a(n-5)` with `a(0)=4, a(1)=6, a(2)=18, a(3)=42, a(4)=108`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A218065

/-- `a(n-1)+4*a(n-2)+a(n-3)-3*a(n-4)-2*a(n-5)` -/
def P699385327046861770.Spec : Prop :=
  ∀ n, P699385327046861770.a n = A218065 (n + 1)

theorem P699385327046861770.correct : P699385327046861770.Spec := by
  intro n
  simp only [A218065, Nat.add_sub_cancel]

end A218065

/-! ## A218065.P2688345878680959699

`A218064(∑[n+1]+2)`
-/

namespace A218065.P2688345878680959699
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218064 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A218065.P2688345878680959699

namespace A218065

/-- `A218064(∑[n+1]+2)` -/
def P2688345878680959699.Spec : Prop :=
  ∀ n, P2688345878680959699.a n = A218065 (n + 1)

end A218065

/-! ## A218065.P2711055070862510595

`record[A218064(A133263(abs(1-n)))]`
-/

namespace A218065.P2711055070862510595
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218064 (A133263 |1 - (n : ℤ)|.toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A218065.P2711055070862510595

namespace A218065

/-- `record[A218064(A133263(abs(1-n)))]` -/
def P2711055070862510595.Spec : Prop :=
  ∀ n, P2711055070862510595.a n = A218065 (n + 1)

end A218065

/-!
# A218066: Number of 3Xn arrays of the minimum value of corresponding elements and their horizontal or antidiagonal neighbors in a random 0..1 3Xn array.

The programs for A218066, there is no canonical definition to state claims against.
-/

/-! ## A218066.P4860330211535986882

`A218064(∑[n+2]+4)`
-/

namespace A218066.P4860330211535986882
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218064 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A218066.P4860330211535986882

/-!
# A218067: Number of 4Xn arrays of the minimum value of corresponding elements and their horizontal or antidiagonal neighbors in a random 0..1 4Xn array.

The programs for A218067, there is no canonical definition to state claims against.
-/

/-! ## A218067.P14209417053343455820

`A218064(A141214(n)+7)`
-/

namespace A218067.P14209417053343455820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218064 (A141214 n + 7).toNat

end

end A218067.P14209417053343455820

/-!
# A218068: Number of 5Xn arrays of the minimum value of corresponding elements and their horizontal or antidiagonal neighbors in a random 0..1 5Xn array.

The programs for A218068, there is no canonical definition to state claims against.
-/

/-! ## A218068.P16767307845678564841

`A218064(A167499(n+3))`
-/

namespace A218068.P16767307845678564841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218064 (A167499 (n + 3)).toNat

end

end A218068.P16767307845678564841

/-!
# A218069: Number of 6Xn arrays of the minimum value of corresponding elements and their horizontal or antidiagonal neighbors in a random 0..1 6Xn array.

The programs for A218069, there is no canonical definition to state claims against.
-/

/-! ## A218069.P8862921744933266320

`A218064(A167499(n+4)+1)`
-/

namespace A218069.P8862921744933266320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218064 (A167499 (n + 4) + 1).toNat

end

end A218069.P8862921744933266320

/-!
# A218070: Number of 7Xn arrays of the minimum value of corresponding elements and their horizontal or antidiagonal neighbors in a random 0..1 7Xn array.

The programs for A218070, there is no canonical definition to state claims against.
-/

/-! ## A218070.P5404547993100529956

`A218064(A167487(n+5))`
-/

namespace A218070.P5404547993100529956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218064 (A167487 (n + 5)).toNat

end

end A218070.P5404547993100529956

/-!
# A218072: Product of the nonzero digits (in base 10) of n^2.

The programs for A218072, the canonical program `A218072.P14781806890817095546` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A218072 has offset 1).

The definition of A218072 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051801, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A218072.P14781806890817095546

`A051801((n+1)²)`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A218072

/-- `A051801((n+1)²)` -/
def P14781806890817095546.Spec : Prop :=
  ∀ n, P14781806890817095546.a n = A218072 (n + 1)

theorem P14781806890817095546.correct : P14781806890817095546.Spec := by
  intro n
  simp only [A218072, Nat.add_sub_cancel]

end A218072

/-! ## A218072.P17144265121684187743

`∏{digits}[(n+1)², gcd(#, #!²)]`
-/

namespace A218072.P17144265121684187743
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => Nat.gcd x (Nat.factorial x ^ 2)).prod

end

end A218072.P17144265121684187743

namespace A218072

/-- `∏{digits}[(n+1)², gcd(#, #!²)]` -/
def P17144265121684187743.Spec : Prop :=
  ∀ n, (P17144265121684187743.a n : ℤ) = A218072 (n + 1)

end A218072

/-! ## A218072.P846762928744994362

`∏{digits}[(n+1)², floor(acot(#)+#)]`
-/

namespace A218072.P846762928744994362
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => ⌊SequenceMachineLib.acot (x : ℝ) + (x : ℝ)⌋).prod

end

end A218072.P846762928744994362

namespace A218072

/-- `∏{digits}[(n+1)², floor(acot(#)+#)]` -/
def P846762928744994362.Spec : Prop :=
  ∀ n, P846762928744994362.a n = A218072 (n + 1)

end A218072

/-! ## A218072.P5743986734174890120

`∏{digits}[(n+1)², floor(sqrt(#²+1))]`
-/

namespace A218072.P5743986734174890120
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => Nat.sqrt (x ^ 2 + 1)).prod

end

end A218072.P5743986734174890120

namespace A218072

/-- `∏{digits}[(n+1)², floor(sqrt(#²+1))]` -/
def P5743986734174890120.Spec : Prop :=
  ∀ n, (P5743986734174890120.a n : ℤ) = A218072 (n + 1)

end A218072

/-! ## A218072.P5301167795402989136

`A007954(A028907(n+1))`
-/

namespace A218072.P5301167795402989136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007954 (A028907 (n + 1)).toNat

end

end A218072.P5301167795402989136

namespace A218072

/-- `A007954(A028907(n+1))` -/
def P5301167795402989136.Spec : Prop :=
  ∀ n, P5301167795402989136.a n = A218072 (n + 1)

end A218072

/-! ## A218072.P8380476219994450335

`sqrt(A352598((n+1)²))`
-/

namespace A218072.P8380476219994450335
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A352598 ((n + 1) ^ 2) : ℝ)

end

end A218072.P8380476219994450335

namespace A218072

/-- `sqrt(A352598((n+1)²))` -/
def P8380476219994450335.Spec : Prop :=
  ∀ n, P8380476219994450335.a n = (A218072 (n + 1) : ℝ)

end A218072

/-! ## A218072.P18046926699618368481

`root(A352172((n+1)²), 3)`
-/

namespace A218072.P18046926699618368481
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A352172 ((n + 1) ^ 2) : ℝ) ^ (1 / (3 : ℝ))

end

end A218072.P18046926699618368481

namespace A218072

/-- `root(A352172((n+1)²), 3)` -/
def P18046926699618368481.Spec : Prop :=
  ∀ n, P18046926699618368481.a n = (A218072 (n + 1) : ℝ)

end A218072

/-! ## A218072.P17585317921826619092

`A063114((n+1)²)-(n+1)²`
-/

namespace A218072.P17585317921826619092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063114 ((n + 1) ^ 2) - ((n + 1) ^ 2 : ℤ)

end

end A218072.P17585317921826619092

namespace A218072

/-- `A063114((n+1)²)-(n+1)²` -/
def P17585317921826619092.Spec : Prop :=
  ∀ n, P17585317921826619092.a n = A218072 (n + 1)

end A218072

/-! ## A218072.P1925186289197744353

`(n+1)²-A063543((n+1)²)`
-/

namespace A218072.P1925186289197744353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) - A063543 ((n + 1) ^ 2)

end

end A218072.P1925186289197744353

namespace A218072

/-- `(n+1)²-A063543((n+1)²)` -/
def P1925186289197744353.Spec : Prop :=
  ∀ n, P1925186289197744353.a n = A218072 (n + 1)

end A218072

/-! ## A218072.P8933500428456680672

`A230101((n+1)²)/(n+1)²`
-/

namespace A218072.P8933500428456680672
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A230101 ((n + 1) ^ 2) : ℚ) / ((n + 1) ^ 2 : ℚ)

end

end A218072.P8933500428456680672

namespace A218072

/-- `A230101((n+1)²)/(n+1)²` -/
def P8933500428456680672.Spec : Prop :=
  ∀ n, P8933500428456680672.a n = (A218072 (n + 1) : ℚ)

end A218072

/-!
# A218073: Number of profiles in domino tiling of a 2*n checkboard.

The programs for A218073, the canonical program `A218073.P17103550972640011663` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A218073 has offset 0).

The definition of A218073 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A218073.P17103550972640011663

`n/2*C(n+n%2, (n+n%2)/2)`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A218073

/-- `n/2*C(n+n%2, (n+n%2)/2)` -/
def P17103550972640011663.Spec : Prop :=
  ∀ n, P17103550972640011663.a n = (A218073 n : ℚ)

end A218073

/-! ## A218073.P10945015570064318041

`A088218(ceil(n/2))*n`
-/

namespace A218073.P10945015570064318041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088218 ⌈(n : ℚ) / 2⌉.toNat * (n : ℤ)

end

end A218073.P10945015570064318041

namespace A218073

/-- `A088218(ceil(n/2))*n` -/
def P10945015570064318041.Spec : Prop :=
  ∀ n, P10945015570064318041.a n = A218073 n

end A218073

/-! ## A218073.P7902754742167654911

`gcd(n, ∑[n])*A001405(n)`
-/

namespace A218073.P7902754742167654911
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.gcd n (∑ j ∈ Finset.range (n + 1), f1 j) : ℤ) * A001405 n

end

end A218073.P7902754742167654911

namespace A218073

/-- `gcd(n, ∑[n])*A001405(n)` -/
def P7902754742167654911.Spec : Prop :=
  ∀ n, P7902754742167654911.a n = A218073 n

end A218073

/-! ## A218073.P13703802444170727454

`n/2*A128014(n+1)`
-/

namespace A218073.P13703802444170727454
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / 2 * (A128014 (n + 1) : ℚ)

end

end A218073.P13703802444170727454

namespace A218073

/-- `n/2*A128014(n+1)` -/
def P13703802444170727454.Spec : Prop :=
  ∀ n, P13703802444170727454.a n = (A218073 n : ℚ)

end A218073

/-! ## A218073.P15070661070463953730

`A001405(n)*A026741(n)`
-/

namespace A218073.P15070661070463953730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001405 n * A026741 n

end

end A218073.P15070661070463953730

namespace A218073

/-- `A001405(n)*A026741(n)` -/
def P15070661070463953730.Spec : Prop :=
  ∀ n, P15070661070463953730.a n = A218073 n

end A218073

/-! ## A218073.P17456770982336220371

`A029579(n)*A037952(n)`
-/

namespace A218073.P17456770982336220371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029579 n * A037952 n

end

end A218073.P17456770982336220371

namespace A218073

/-- `A029579(n)*A037952(n)` -/
def P17456770982336220371.Spec : Prop :=
  ∀ n, P17456770982336220371.a n = A218073 n

end A218073

/-! ## A218073.P3412919697160650402

`A093178(n)*A212303(n)`
-/

namespace A218073.P3412919697160650402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093178 n * A212303 n

end

end A218073.P3412919697160650402

namespace A218073

/-- `A093178(n)*A212303(n)` -/
def P3412919697160650402.Spec : Prop :=
  ∀ n, P3412919697160650402.a n = A218073 n

end A218073

/-! ## A218073.P14634878024328753953

`(A014495(n)+1)*A026741(n)`
-/

namespace A218073.P14634878024328753953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A014495 n + 1) * A026741 n

end

end A218073.P14634878024328753953

namespace A218073

/-- `(A014495(n)+1)*A026741(n)` -/
def P14634878024328753953.Spec : Prop :=
  ∀ n, P14634878024328753953.a n = A218073 n

end A218073

/-! ## A218073.P16553204999101795523

`A212831(n)*A214282(n+1)`
-/

namespace A218073.P16553204999101795523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212831 n * A214282 (n + 1)

end

end A218073.P16553204999101795523

namespace A218073

/-- `A212831(n)*A214282(n+1)` -/
def P16553204999101795523.Spec : Prop :=
  ∀ n, P16553204999101795523.a n = A218073 n

end A218073

/-! ## A218073.P3985216888949875951

`(A051920(n)-1)*A026741(n)`
-/

namespace A218073.P3985216888949875951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A051920 n - 1) * A026741 n

end

end A218073.P3985216888949875951

namespace A218073

/-- `(A051920(n)-1)*A026741(n)` -/
def P3985216888949875951.Spec : Prop :=
  ∀ n, P3985216888949875951.a n = A218073 n

end A218073

/-! ## A218073.P14616885753247009866

`2*A100071(n)-A212303(n)`
-/

namespace A218073.P14616885753247009866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A100071 n - A212303 n

end

end A218073.P14616885753247009866

namespace A218073

/-- `2*A100071(n)-A212303(n)` -/
def P14616885753247009866.Spec : Prop :=
  ∀ n, P14616885753247009866.a n = A218073 n

end A218073

/-! ## A218073.P10385426633794281639

`n*A210736(2*A110654(n))`
-/

namespace A218073.P10385426633794281639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A210736 (2 * A110654 n).toNat

end

end A218073.P10385426633794281639

namespace A218073

/-- `n*A210736(2*A110654(n))` -/
def P10385426633794281639.Spec : Prop :=
  ∀ n, P10385426633794281639.a n = A218073 n

end A218073

/-! ## A218073.P3744151060726125026

`n*A001405(A053438(n)-n)`
-/

namespace A218073.P3744151060726125026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A001405 (A053438 n - (n : ℤ)).toNat

end

end A218073.P3744151060726125026

namespace A218073

/-- `n*A001405(A053438(n)-n)` -/
def P3744151060726125026.Spec : Prop :=
  ∀ n, P3744151060726125026.a n = A218073 n

end A218073

/-! ## A218073.P12147127649788885299

`(n-A142150(n))*A001405(n)`
-/

namespace A218073.P12147127649788885299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - A142150 n) * A001405 n

end

end A218073.P12147127649788885299

namespace A218073

/-- `(n-A142150(n))*A001405(n)` -/
def P12147127649788885299.Spec : Prop :=
  ∀ n, P12147127649788885299.a n = A218073 n

end A218073

/-! ## A218073.P10366752430403546629

`n*(A011782(n)-A294175(n))`
-/

namespace A218073.P10366752430403546629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A011782 n - A294175 n)

end

end A218073.P10366752430403546629

namespace A218073

/-- `n*(A011782(n)-A294175(n))` -/
def P10366752430403546629.Spec : Prop :=
  ∀ n, P10366752430403546629.a n = A218073 n

end A218073

/-! ## A218073.P5843524036299103417

`n*A001405(n)/A040001(n)`
-/

namespace A218073.P5843524036299103417
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) * ((A001405 n : ℚ) / (A040001 n : ℚ))

end

end A218073.P5843524036299103417

namespace A218073

/-- `n*A001405(n)/A040001(n)` -/
def P5843524036299103417.Spec : Prop :=
  ∀ n, P5843524036299103417.a n = (A218073 n : ℚ)

end A218073

/-! ## A218073.P417196215377173692

`A214282(n+1)*A246416(2*n)`
-/

namespace A218073.P417196215377173692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214282 (n + 1) * A246416 (2 * n)

end

end A218073.P417196215377173692

namespace A218073

/-- `A214282(n+1)*A246416(2*n)` -/
def P417196215377173692.Spec : Prop :=
  ∀ n, P417196215377173692.a n = A218073 n

end A218073

/-! ## A218073.P12602960193812657670

`(A214283(n+1)+A001405(n+1))*A212831(n)`
-/

namespace A218073.P12602960193812657670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A214283 (n + 1) + A001405 (n + 1)) * A212831 n

end

end A218073.P12602960193812657670

namespace A218073

/-- `(A214283(n+1)+A001405(n+1))*A212831(n)` -/
def P12602960193812657670.Spec : Prop :=
  ∀ n, P12602960193812657670.a n = A218073 n

end A218073

/-! ## A218073.P1985175333479336550

`A100071(n+1)-A001405(n)*A152271(n+1)`
-/

namespace A218073.P1985175333479336550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100071 (n + 1) - A001405 n * A152271 (n + 1)

end

end A218073.P1985175333479336550

namespace A218073

/-- `A100071(n+1)-A001405(n)*A152271(n+1)` -/
def P1985175333479336550.Spec : Prop :=
  ∀ n, P1985175333479336550.a n = A218073 n

end A218073

/-! ## A218073.P15914700547799000655

`(A001405(n+1)-A214282(n+1))*A215495(n)`
-/

namespace A218073.P15914700547799000655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A001405 (n + 1) - A214282 (n + 1)) * A215495 n

end

end A218073.P15914700547799000655

namespace A218073

/-- `(A001405(n+1)-A214282(n+1))*A215495(n)` -/
def P15914700547799000655.Spec : Prop :=
  ∀ n, P15914700547799000655.a n = A218073 n

end A218073

/-!
# A218074: Expansion of Sum_{n>=1} ((n-1) * q^(n*(n+1)/2) / Product_{k=1..n} (1 - q^k)).

The programs for A218074, there is no canonical definition to state claims against.
-/

/-! ## A218074.P16595338350818123148

`A015723(abs(1-n)+1)-A000009(n)`
-/

namespace A218074.P16595338350818123148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015723 (|1 - (n : ℤ)| + 1).toNat - A000009 n

end

end A218074.P16595338350818123148

/-! ## A218074.P4687590438889704177

`abs(A000009(n)-A015723(A028310(n)))`
-/

namespace A218074.P4687590438889704177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000009 n - A015723 (A028310 n).toNat|

end

end A218074.P4687590438889704177

/-! ## A218074.P2110333811828407591

`A015723(A028310(n))-abs(A081360(n))`
-/

namespace A218074.P2110333811828407591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015723 (A028310 n).toNat - |A081360 n|

end

end A218074.P2110333811828407591

/-! ## A218074.P2438132592365558949

`A067588(n)%(A090867(n)+A000009(n))`
-/

namespace A218074.P2438132592365558949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A067588 n) (A090867 n + A000009 n)

end

end A218074.P2438132592365558949

/-! ## A218074.P13616513714904718220

`A015723(A028310(n))+A057427(n)-A052839(n)`
-/

namespace A218074.P13616513714904718220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015723 (A028310 n).toNat + (A057427 n - A052839 n)

end

end A218074.P13616513714904718220

/-! ## A218074.P4420920422845373849

`A015723(A028310(n))-(A096765(n)+A025147(n))`
-/

namespace A218074.P4420920422845373849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015723 (A028310 n).toNat - (A096765 n + A025147 n)

end

end A218074.P4420920422845373849

/-! ## A218074.P15831130420449608628

`A015723(A028310(n))-(A238708(n)+A003114(n))`
-/

namespace A218074.P15831130420449608628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015723 (A028310 n).toNat - (A238708 n + A003114 n)

end

end A218074.P15831130420449608628

/-! ## A218074.P5471127325475372301

`A015723(A028310(n))-A035457(2*n)`
-/

namespace A218074.P5471127325475372301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015723 (A028310 n).toNat - A035457 (2 * n)

end

end A218074.P5471127325475372301

/-! ## A218074.P4249983116733021465

`A210485(A000124(n))-A061199(A000124(n))`
-/

namespace A218074.P4249983116733021465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210485 (A000124 n).toNat - A061199 (A000124 n).toNat

end

end A218074.P4249983116733021465

/-!
# A218075: a(n) = 2^(prime(n+1) - prime(n)).

The programs for A218075, the canonical program `A218075.P1902989878547894807` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A218075 has offset 1).

The definition of A218075 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A218075.P1902989878547894807

`2^A001223(n+1)`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A218075

/-- `2^A001223(n+1)` -/
def P1902989878547894807.Spec : Prop :=
  ∀ n, P1902989878547894807.a n = (A218075 (n + 1) : ℚ)

end A218075

/-! ## A218075.P16538834885734378023

`2^(A000040(n+2)-A000040(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A218075.P16538834885734378023
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A000040 (n + 2) - A000040 (n + 1) : ℤ)

end

end A218075.P16538834885734378023

namespace A218075

/-- `2^(A000040(n+2)-A000040(n+1))` -/
def P16538834885734378023.Spec : Prop :=
  ∀ n, P16538834885734378023.a n = (A218075 (n + 1) : ℚ)

end A218075

/-! ## A218075.P2802635150239280823

`sqrt(A140299(n))`
-/

namespace A218075.P2802635150239280823
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A140299 n : ℝ)

end

end A218075.P2802635150239280823

namespace A218075

/-- `sqrt(A140299(n))` -/
def P2802635150239280823.Spec : Prop :=
  ∀ n, P2802635150239280823.a n = (A218075 (n + 1) : ℝ)

end A218075

/-! ## A218075.P17845054351087583781

`A137780(1+n)-1`
-/

namespace A218075.P17845054351087583781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137780 (1 + n) - 1

end

end A218075.P17845054351087583781

namespace A218075

/-- `A137780(1+n)-1` -/
def P17845054351087583781.Spec : Prop :=
  ∀ n, P17845054351087583781.a n = A218075 (n + 1)

end A218075

/-! ## A218075.P17775498660648217045

`2^sqrt(A076821(n+1))`
-/

namespace A218075.P17775498660648217045
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (2 : ℝ) ^ (Real.sqrt (A076821 (n + 1) : ℝ))

end

end A218075.P17775498660648217045

namespace A218075

/-- `2^sqrt(A076821(n+1))` -/
def P17775498660648217045.Spec : Prop :=
  ∀ n, P17775498660648217045.a n = (A218075 (n + 1) : ℝ)

end A218075

/-! ## A218075.P9091269449892432724

`2^(A046933(n+1)+1)`
-/

namespace A218075.P9091269449892432724
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A046933 (n + 1) + 1 : ℤ)

end

end A218075.P9091269449892432724

namespace A218075

/-- `2^(A046933(n+1)+1)` -/
def P9091269449892432724.Spec : Prop :=
  ∀ n, P9091269449892432724.a n = (A218075 (n + 1) : ℚ)

end A218075

/-! ## A218075.P13632607052815932305

`A000079(A001223(n+1))`
-/

namespace A218075.P13632607052815932305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A001223 (n + 1)).toNat

end

end A218075.P13632607052815932305

namespace A218075

/-- `A000079(A001223(n+1))` -/
def P13632607052815932305.Spec : Prop :=
  ∀ n, P13632607052815932305.a n = A218075 (n + 1)

end A218075

/-! ## A218075.P3487012840348352117

`A048656(A082910(n+1))`
-/

namespace A218075.P3487012840348352117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048656 (A082910 (n + 1)).toNat

end

end A218075.P3487012840348352117

namespace A218075

/-- `A048656(A082910(n+1))` -/
def P3487012840348352117.Spec : Prop :=
  ∀ n, P3487012840348352117.a n = A218075 (n + 1)

end A218075

/-! ## A218075.P2952045521095979255

`A057048(A100803(n+1))`
-/

namespace A218075.P2952045521095979255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057048 (A100803 (n + 1)).toNat

end

end A218075.P2952045521095979255

namespace A218075

/-- `A057048(A100803(n+1))` -/
def P2952045521095979255.Spec : Prop :=
  ∀ n, P2952045521095979255.a n = A218075 (n + 1)

end A218075

/-! ## A218075.P4595528172566839297

`A082693(A076821(n+1))`
-/

namespace A218075.P4595528172566839297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082693 (A076821 (n + 1)).toNat

end

end A218075.P4595528172566839297

namespace A218075

/-- `A082693(A076821(n+1))` -/
def P4595528172566839297.Spec : Prop :=
  ∀ n, P4595528172566839297.a n = A218075 (n + 1)

end A218075

/-! ## A218075.P10778136389347586511

`A011782(A001223(n+1)+1)`
-/

namespace A218075.P10778136389347586511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (A001223 (n + 1) + 1).toNat

end

end A218075.P10778136389347586511

namespace A218075

/-- `A011782(A001223(n+1)+1)` -/
def P10778136389347586511.Spec : Prop :=
  ∀ n, P10778136389347586511.a n = A218075 (n + 1)

end A218075

/-! ## A218075.P7438622644781192101

`A059268(2*A001223(n+1)²)`
-/

namespace A218075.P7438622644781192101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 (2 * A001223 (n + 1) ^ 2).toNat

end

end A218075.P7438622644781192101

namespace A218075

/-- `A059268(2*A001223(n+1)²)` -/
def P7438622644781192101.Spec : Prop :=
  ∀ n, P7438622644781192101.a n = A218075 (n + 1)

end A218075

/-! ## A218075.P8348449846989242087

`2^A075526(1+n)`
-/

namespace A218075.P8348449846989242087
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A075526 (1 + n) : ℤ)

end

end A218075.P8348449846989242087

namespace A218075

/-- `2^A075526(1+n)` -/
def P8348449846989242087.Spec : Prop :=
  ∀ n, P8348449846989242087.a n = (A218075 (n + 1) : ℚ)

end A218075

/-! ## A218075.P12676264971559848990

`2^A054541(n+2)`
-/

namespace A218075.P12676264971559848990
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A054541 (n + 2) : ℤ)

end

end A218075.P12676264971559848990

namespace A218075

/-- `2^A054541(n+2)` -/
def P12676264971559848990.Spec : Prop :=
  ∀ n, P12676264971559848990.a n = (A218075 (n + 1) : ℚ)

end A218075

/-! ## A218075.P17557886615642787661

`2^A125266(n+2)`
-/

namespace A218075.P17557886615642787661
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A125266 (n + 2) : ℤ)

end

end A218075.P17557886615642787661

namespace A218075

/-- `2^A125266(n+2)` -/
def P17557886615642787661.Spec : Prop :=
  ∀ n, P17557886615642787661.a n = (A218075 (n + 1) : ℚ)

end A218075

/-! ## A218075.P4603138659128852791

`2^Δ[A000040(n+1)]`
-/

namespace A218075.P4603138659128852791
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (f1 (n + 1) - f1 n : ℤ)

end

end A218075.P4603138659128852791

namespace A218075

/-- `2^Δ[A000040(n+1)]` -/
def P4603138659128852791.Spec : Prop :=
  ∀ n, P4603138659128852791.a n = (A218075 (n + 1) : ℚ)

end A218075

/-! ## A218075.P4826082658515575772

`2^Δ[A006093(n+1)]`
-/

namespace A218075.P4826082658515575772
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (f1 (n + 1) - f1 n : ℤ)

end

end A218075.P4826082658515575772

namespace A218075

/-- `2^Δ[A006093(n+1)]` -/
def P4826082658515575772.Spec : Prop :=
  ∀ n, P4826082658515575772.a n = (A218075 (n + 1) : ℚ)

end A218075

/-! ## A218075.P3225431204390843403

`2^Δ[A008864(n+1)]`
-/

namespace A218075.P3225431204390843403
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008864 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (f1 (n + 1) - f1 n : ℤ)

end

end A218075.P3225431204390843403

namespace A218075

/-- `2^Δ[A008864(n+1)]` -/
def P3225431204390843403.Spec : Prop :=
  ∀ n, P3225431204390843403.a n = (A218075 (n + 1) : ℚ)

end A218075

/-! ## A218075.P11613644740124760171

`2^Δ[A028815(n+1)]`
-/

namespace A218075.P11613644740124760171
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028815 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (f1 (n + 1) - f1 n : ℤ)

end

end A218075.P11613644740124760171

namespace A218075

/-- `2^Δ[A028815(n+1)]` -/
def P11613644740124760171.Spec : Prop :=
  ∀ n, P11613644740124760171.a n = (A218075 (n + 1) : ℚ)

end A218075

/-! ## A218075.P8952364942313450980

`2^Δ[A040976(n+1)]`
-/

namespace A218075.P8952364942313450980
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040976 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (f1 (n + 1) - f1 n : ℤ)

end

end A218075.P8952364942313450980

namespace A218075

/-- `2^Δ[A040976(n+1)]` -/
def P8952364942313450980.Spec : Prop :=
  ∀ n, P8952364942313450980.a n = (A218075 (n + 1) : ℚ)

end A218075

/-!
# A218077: Number of n X n arrays of the minimum value of corresponding elements and their horizontal, vertical or antidiagonal neighbors in a random 0..1 n X n array.

The programs for A218077, there is no canonical definition to state claims against.
-/

/-! ## A218077.P11319506381914313177

`A218084(∑[4*n]+1)`
-/

namespace A218077.P11319506381914313177
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218084 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A218077.P11319506381914313177

/-! ## A218077.P15233345874256841873

`record[gcd(A204016(n+1), A218084(n+1))]`
-/

namespace A218077.P15233345874256841873
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A204016 (n + 1)) (A218084 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A218077.P15233345874256841873

/-!
# A218078: Number of n X 2 arrays of the minimum value of corresponding elements and their horizontal, vertical or antidiagonal neighbors in a random 0..1 n X 2 array.

The programs for A218078, the canonical program `A218078.P14402060761996593296` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A218078 has offset 1).

The definition of A218078 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 301 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A218078.P5350894268074849681

`ogf((2+2x)/(1-x-2x^2-x^3))`
-/

namespace A218078.P5350894268074849681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, 2] [1, -1, -2, -1] n

end

end A218078.P5350894268074849681

namespace A218078

/-- `ogf((2+2x)/(1-x-2x^2-x^3))` -/
def P5350894268074849681.Spec : Prop :=
  ∀ n, P5350894268074849681.a n = A218078 (n + 1)

end A218078

/-! ## A218078.P14402060761996593296

`record[-(a(n-3)+a(n-1))]` with `a(0)=2, a(1)=0, a(2)=0`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A218078

/-- `record[-(a(n-3)+a(n-1))]` -/
def P14402060761996593296.Spec : Prop :=
  ∀ n, P14402060761996593296.a n = A218078 (n + 1)

theorem P14402060761996593296.correct : P14402060761996593296.Spec := by
  intro n
  simp only [A218078, Nat.add_sub_cancel]

end A218078

/-! ## A218078.P16165873339991310688

`2*a(n-2)+a(n-1)+a(n-3)` with `a(0)=2, a(1)=4, a(2)=8`
-/

namespace A218078.P16165873339991310688
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2, 4, 8] fun n a =>
  2 * a (n - 2) + (a (n - 1) + a (n - 3))

end

end A218078.P16165873339991310688

namespace A218078

/-- `2*a(n-2)+a(n-1)+a(n-3)` -/
def P16165873339991310688.Spec : Prop :=
  ∀ n, (P16165873339991310688.a n : ℤ) = A218078 (n + 1)

end A218078

/-! ## A218078.P14298419033670072380

`a(n-1)+a(n-2)+a(n-2)+a(n-3)` with `a(0)=2, a(1)=4, a(2)=8`
-/

namespace A218078.P14298419033670072380
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2, 4, 8] fun n a =>
  a (n - 1) + (a (n - 2) + (a (n - 2) + a (n - 3)))

end

end A218078.P14298419033670072380

namespace A218078

/-- `a(n-1)+a(n-2)+a(n-2)+a(n-3)` -/
def P14298419033670072380.Spec : Prop :=
  ∀ n, (P14298419033670072380.a n : ℤ) = A218078 (n + 1)

end A218078

/-! ## A218078.P3723055191309169487

`abs(2*A078039(n))`
-/

namespace A218078.P3723055191309169487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 * A078039 n|

end

end A218078.P3723055191309169487

namespace A218078

/-- `abs(2*A078039(n))` -/
def P3723055191309169487.Spec : Prop :=
  ∀ n, P3723055191309169487.a n = A218078 (n + 1)

end A218078

/-! ## A218078.P12592398139199702011

`2*A141015(n+1)`
-/

namespace A218078.P12592398139199702011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A141015 (n + 1)

end

end A218078.P12592398139199702011

namespace A218078

/-- `2*A141015(n+1)` -/
def P12592398139199702011.Spec : Prop :=
  ∀ n, P12592398139199702011.a n = A218078 (n + 1)

end A218078

/-! ## A218078.P1277280876847560950

`2*A141683(n+2)`
-/

namespace A218078.P1277280876847560950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A141683 (n + 2)

end

end A218078.P1277280876847560950

namespace A218078

/-- `2*A141683(n+2)` -/
def P1277280876847560950.Spec : Prop :=
  ∀ n, P1277280876847560950.a n = A218078 (n + 1)

end A218078

/-! ## A218078.P7277640857691573782

`2*A142474(n+3)`
-/

namespace A218078.P7277640857691573782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A142474 (n + 3)

end

end A218078.P7277640857691573782

namespace A218078

/-- `2*A142474(n+3)` -/
def P7277640857691573782.Spec : Prop :=
  ∀ n, P7277640857691573782.a n = A218078 (n + 1)

end A218078

/-! ## A218078.P13612117252767684129

`2*A068921(2*n)`
-/

namespace A218078.P13612117252767684129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A068921 (2 * n)

end

end A218078.P13612117252767684129

namespace A218078

/-- `2*A068921(2*n)` -/
def P13612117252767684129.Spec : Prop :=
  ∀ n, P13612117252767684129.a n = A218078 (n + 1)

end A218078

/-! ## A218078.P16961335014567173488

`2*A000930(Δ[n²])`
-/

namespace A218078.P16961335014567173488
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000930 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A218078.P16961335014567173488

namespace A218078

/-- `2*A000930(Δ[n²])` -/
def P16961335014567173488.Spec : Prop :=
  ∀ n, P16961335014567173488.a n = A218078 (n + 1)

end A218078

/-! ## A218078.P8935700413145332282

`∑[2*Δ[A141015(n)]]`
-/

namespace A218078.P8935700413145332282
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141015 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A218078.P8935700413145332282

namespace A218078

/-- `∑[2*Δ[A141015(n)]]` -/
def P8935700413145332282.Spec : Prop :=
  ∀ n, P8935700413145332282.a n = A218078 (n + 1)

end A218078

/-! ## A218078.P11833948054070925443

`2*Δ[A023435(2*n)]`
-/

namespace A218078.P11833948054070925443
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023435 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (f1 (n + 1) - f1 n)

end

end A218078.P11833948054070925443

namespace A218078

/-- `2*Δ[A023435(2*n)]` -/
def P11833948054070925443.Spec : Prop :=
  ∀ n, P11833948054070925443.a n = A218078 (n + 1)

end A218078

/-! ## A218078.P14270896089393554110

`record[2*A078012(2*n)]`
-/

namespace A218078.P14270896089393554110
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A078012 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A218078.P14270896089393554110

namespace A218078

/-- `record[2*A078012(2*n)]` -/
def P14270896089393554110.Spec : Prop :=
  ∀ n, P14270896089393554110.a n = A218078 (n + 1)

end A218078

/-! ## A218078.P15011994997771351343

`A000930(2*n+1)*2`
-/

namespace A218078.P15011994997771351343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000930 (2 * n + 1) * 2

end

end A218078.P15011994997771351343

namespace A218078

/-- `A000930(2*n+1)*2` -/
def P15011994997771351343.Spec : Prop :=
  ∀ n, P15011994997771351343.a n = A218078 (n + 1)

end A218078

/-! ## A218078.P1669268577108120579

`2*A078012(2*(n+2))`
-/

namespace A218078.P1669268577108120579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A078012 (2 * (n + 2))

end

end A218078.P1669268577108120579

namespace A218078

/-- `2*A078012(2*(n+2))` -/
def P1669268577108120579.Spec : Prop :=
  ∀ n, P1669268577108120579.a n = A218078 (n + 1)

end A218078

/-! ## A218078.P16402337289713202625

`2*A135851(2*(n+3))`
-/

namespace A218078.P16402337289713202625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A135851 (2 * (n + 3))

end

end A218078.P16402337289713202625

namespace A218078

/-- `2*A135851(2*(n+3))` -/
def P16402337289713202625.Spec : Prop :=
  ∀ n, P16402337289713202625.a n = A218078 (n + 1)

end A218078

/-! ## A218078.P17641365820117381429

`record[abs(2*A135851(2*n))]`
-/

namespace A218078.P17641365820117381429
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 * A135851 (2 * n)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A218078.P17641365820117381429

namespace A218078

/-- `record[abs(2*A135851(2*n))]` -/
def P17641365820117381429.Spec : Prop :=
  ∀ n, P17641365820117381429.a n = A218078 (n + 1)

end A218078

/-! ## A218078.P9402595045135158268

`abs(2*A199804(2*n+1))`
-/

namespace A218078.P9402595045135158268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 * A199804 (2 * n + 1)|

end

end A218078.P9402595045135158268

namespace A218078

/-- `abs(2*A199804(2*n+1))` -/
def P9402595045135158268.Spec : Prop :=
  ∀ n, P9402595045135158268.a n = A218078 (n + 1)

end A218078

/-! ## A218078.P5656150457442714347

`∑[2*A058278(2*n+1)]`
-/

namespace A218078.P5656150457442714347
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A058278 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A218078.P5656150457442714347

namespace A218078

/-- `∑[2*A058278(2*n+1)]` -/
def P5656150457442714347.Spec : Prop :=
  ∀ n, P5656150457442714347.a n = A218078 (n + 1)

end A218078

/-! ## A218078.P14912246018190805930

`2*Δ[A167704(2*n+1)]`
-/

namespace A218078.P14912246018190805930
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167704 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (f1 (n + 1) - f1 n)

end

end A218078.P14912246018190805930

namespace A218078

/-- `2*Δ[A167704(2*n+1)]` -/
def P14912246018190805930.Spec : Prop :=
  ∀ n, P14912246018190805930.a n = A218078 (n + 1)

end A218078

/-!
# A218079: Number of n X 3 arrays of the minimum value of corresponding elements and their horizontal, vertical or antidiagonal neighbors in a random 0..1 n X 3 array.

The programs for A218079, the canonical program `A218079.P12690522082137940293` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A218079 has offset 1).

The definition of A218079 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 203 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A218079.P18307041819941843131

`ogf((4-6x^2-6x^3+6x^4+2x^5)/(1-2x-4x^2+5x^4+x^5))`
-/

namespace A218079.P18307041819941843131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [4, 0, -6, -6, 6, 2] [1, -2, -4, 0, 5, 1] n

end

end A218079.P18307041819941843131

namespace A218079

/-- `ogf((4-6x^2-6x^3+6x^4+2x^5)/(1-2x-4x^2+5x^4+x^5))` -/
def P18307041819941843131.Spec : Prop :=
  ∀ n, P18307041819941843131.a n = A218079 (n + 1)

end A218079

/-! ## A218079.P12690522082137940293

`2*a(n-1)+4*a(n-2)-5*a(n-4)-a(n-5)` with `a(0)=4, a(1)=8, a(2)=26, a(3)=78, a(4)=246, a(5)=762`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A218079

/-- `2*a(n-1)+4*a(n-2)-5*a(n-4)-a(n-5)` -/
def P12690522082137940293.Spec : Prop :=
  ∀ n, P12690522082137940293.a n = A218079 (n + 1)

theorem P12690522082137940293.correct : P12690522082137940293.Spec := by
  intro n
  simp only [A218079, Nat.add_sub_cancel]

end A218079

/-! ## A218079.P4485450402384216051

`A218084(∑[n+2]+4)`
-/

namespace A218079.P4485450402384216051
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218084 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A218079.P4485450402384216051

namespace A218079

/-- `A218084(∑[n+2]+4)` -/
def P4485450402384216051.Spec : Prop :=
  ∀ n, P4485450402384216051.a n = A218079 (n + 1)

end A218079

/-!
# A218080: Number of nX4 arrays of the minimum value of corresponding elements and their horizontal, vertical or antidiagonal neighbors in a random 0..1 nX4 array.

The programs for A218080, there is no canonical definition to state claims against.
-/

/-! ## A218080.P1795003022150650091

`A218084(∑[n+3]+7)`
-/

namespace A218080.P1795003022150650091
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218084 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A218080.P1795003022150650091

/-! ## A218080.P7297690487806662248

`record[A218084(A141214(abs(1-n)))]`
-/

namespace A218080.P7297690487806662248
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218084 (A141214 |1 - (n : ℤ)|.toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A218080.P7297690487806662248

/-!
# A218081: Number of n X 5 arrays of the minimum value of corresponding elements and their horizontal, vertical or antidiagonal neighbors in a random 0..1 n X 5 array.

The programs for A218081, there is no canonical definition to state claims against.
-/

/-! ## A218081.P2685193693439719

`A218084(A167499(n+3))`
-/

namespace A218081.P2685193693439719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218084 (A167499 (n + 3)).toNat

end

end A218081.P2685193693439719

/-! ## A218081.P2451275985527783825

`A218084(A374005(n+1))`
-/

namespace A218081.P2451275985527783825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218084 (A374005 (n + 1)).toNat

end

end A218081.P2451275985527783825

/-!
# A218082: Number of nX6 arrays of the minimum value of corresponding elements and their horizontal, vertical or antidiagonal neighbors in a random 0..1 nX6 array.

The programs for A218082, there is no canonical definition to state claims against.
-/

/-! ## A218082.P6883897677019647355

`A218084(∑[n+5]+16)`
-/

namespace A218082.P6883897677019647355
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218084 (∑ j ∈ Finset.range (n + 1), f1 j + 16)

end

end A218082.P6883897677019647355

/-!
# A218083: Number of n X 7 arrays of the minimum value of corresponding elements and their horizontal, vertical or antidiagonal neighbors in a random 0..1 n X 7 array.

The programs for A218083, there is no canonical definition to state claims against.
-/

/-! ## A218083.P7830064107727615789

`A218084(eq[8, A131818(n+1)])`
-/

namespace A218083.P7830064107727615789
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218084 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A218083.P7830064107727615789

/-! ## A218083.P3604211389783010290

`A218084(A374008(n+1))`
-/

namespace A218083.P3604211389783010290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218084 (A374008 (n + 1)).toNat

end

end A218083.P3604211389783010290

/-!
# A218085: Let S_5(x) denote the difference in counts of multiples of 5 in the interval [0,x), those with even digit sums in base 4 in one set, those with odd digit sums in base 4 in the other. Then a(n) = (-1)^s_4(n) *(S_5(n) -10*S_5(floor(n/16)) +5*S_5(floor(n/256))), where s_4(n) = A053737(n).

The programs for A218085, there is no canonical definition to state claims against.
-/

/-! ## A218085.P29564826246232372

`A124751(lt[A124785(3*n+4), A283434(n)])`
-/

namespace A218085.P29564826246232372
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124785 (3 * n + 4)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283434 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124751 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A218085.P29564826246232372

/-!
# A218087: Numbers that are divisible by the sum of their digits in every base from 2 through to 16.

The programs for A218087, there is no canonical definition to state claims against.
-/

/-! ## A218087.P8387052072463400484

`A177710(∑[A176631(n)])`
-/

namespace A218087.P8387052072463400484
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176631 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177710 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A218087.P8387052072463400484

/-! ## A218087.P8665495320695344623

`A320580(∑[A058875(n+1)²])`
-/

namespace A218087.P8665495320695344623
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058875 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320580 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A218087.P8665495320695344623

/-!
# A218088: a(n) is the largest term in period of continued fraction expansion of square root of n!.

The programs for A218088, there is no canonical definition to state claims against.
-/

/-! ## A218088.P4905400462735591918

`2*floor(sqrt((n+2)!))`
-/

namespace A218088.P4905400462735591918
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * Nat.sqrt (Nat.factorial (n + 2))

end

end A218088.P4905400462735591918

/-! ## A218088.P11734738097447173948

`2*floor(∏[sqrt(n+2)])`
-/

namespace A218088.P11734738097447173948
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (n + 2 : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ⌊∏ j ∈ Finset.range (n + 1), f1 j⌋

end

end A218088.P11734738097447173948

/-! ## A218088.P14195654609445505767

`2*ceil(sqrt((n+2)!))-2`
-/

namespace A218088.P14195654609445505767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ⌈Real.sqrt (Nat.factorial (n + 2) : ℝ)⌉ - 2

end

end A218088.P14195654609445505767

/-! ## A218088.P12371123073169142800

`∑[2*Δ[A055228(n+1)]]`
-/

namespace A218088.P12371123073169142800
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055228 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A218088.P12371123073169142800

/-! ## A218088.P646993587726694484

`record[2*A055226(A026922(n+1))]`
-/

namespace A218088.P646993587726694484
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A055226 (A026922 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A218088.P646993587726694484

/-!
# A218089: a(n) = n*((n+1)^n - n^(n-1)).

The programs for A218089, the canonical program `A218089.P7948182517501621297` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A218089 has offset 1).

The definition of A218089 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+1)*((n+2)^(n+1)-(n+1)^n)` (program `A218089.P7948182517501621297`, by `A218089.P7948182517501621297.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A218089.P7948182517501621297

`(n+1)*((n+2)^(n+1)-(n+1)^n)`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A218089

/-- `(n+1)*((n+2)^(n+1)-(n+1)^n)` -/
def P7948182517501621297.Spec : Prop :=
  ∀ n, P7948182517501621297.a n = A218089 (n + 1)

theorem P7948182517501621297.correct : P7948182517501621297.Spec := by
  intro n
  simp only [A218089, Nat.add_sub_cancel]

end A218089

/-! ## A218089.P12291936771389155251

`lcm(1+n, Δ[(1+n)^n])`
-/

namespace A218089.P12291936771389155251
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (1 + n) ^ n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (1 + n : ℤ) ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A218089.P12291936771389155251

namespace A218089

/-- `lcm(1+n, Δ[(1+n)^n])` -/
def P12291936771389155251.Spec : Prop :=
  ∀ n, (P12291936771389155251.a n : ℤ) = A218089 (n + 1)

end A218089

/-! ## A218089.P13875092077029242973

`(n+1)*Δ[(-xor(n, -1))^n]`
-/

namespace A218089.P13875092077029242973
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-Int.xor (n : ℤ) (-1)) ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (f1 (n + 1) - f1 n)

end

end A218089.P13875092077029242973

namespace A218089

/-- `(n+1)*Δ[(-xor(n, -1))^n]` -/
def P13875092077029242973.Spec : Prop :=
  ∀ n, P13875092077029242973.a n = A218089 (n + 1)

end A218089

/-! ## A218089.P4732139265085480164

`A066274(n+2)-record[A091884(n)]`
-/

namespace A218089.P4732139265085480164
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091884 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066274 (n + 2) - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A218089.P4732139265085480164

namespace A218089

/-- `A066274(n+2)-record[A091884(n)]` -/
def P4732139265085480164.Spec : Prop :=
  ∀ n, P4732139265085480164.a n = A218089 (n + 1)

end A218089

/-! ## A218089.P7034549576482703439

`A066274(n+2)-record[A174551(n)]`
-/

namespace A218089.P7034549576482703439
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174551 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066274 (n + 2) - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A218089.P7034549576482703439

namespace A218089

/-- `A066274(n+2)-record[A174551(n)]` -/
def P7034549576482703439.Spec : Prop :=
  ∀ n, P7034549576482703439.a n = A218089 (n + 1)

end A218089

/-! ## A218089.P14326292943901216876

`A007781(n+1)-A000169(n+2)`
-/

namespace A218089.P14326292943901216876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007781 (n + 1) - A000169 (n + 2)

end

end A218089.P14326292943901216876

namespace A218089

/-- `A007781(n+1)-A000169(n+2)` -/
def P14326292943901216876.Spec : Prop :=
  ∀ n, P14326292943901216876.a n = A218089 (n + 1)

end A218089

/-! ## A218089.P16787389910388250918

`A066274(n+2)-A000312(n+1)`
-/

namespace A218089.P16787389910388250918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066274 (n + 2) - A000312 (n + 1)

end

end A218089.P16787389910388250918

namespace A218089

/-- `A066274(n+2)-A000312(n+1)` -/
def P16787389910388250918.Spec : Prop :=
  ∀ n, P16787389910388250918.a n = A218089 (n + 1)

theorem P16787389910388250918.correct : P16787389910388250918.Spec := by
  intro n
  simp only [A218089, Nat.add_sub_cancel, A218089.P16787389910388250918.a, A218089.P7948182517501621297.a, A000312, A000312.P3932771318196185165.a, A066274, A066274.P4127562941293127807.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A218089

/-! ## A218089.P3179636029415198624

`A000312(n+2)-A098462(n+1)`
-/

namespace A218089.P3179636029415198624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000312 (n + 2) - A098462 (n + 1)

end

end A218089.P3179636029415198624

namespace A218089

/-- `A000312(n+2)-A098462(n+1)` -/
def P3179636029415198624.Spec : Prop :=
  ∀ n, P3179636029415198624.a n = A218089 (n + 1)

theorem P3179636029415198624.correct : P3179636029415198624.Spec := by
  intro n
  simp only [A218089, Nat.add_sub_cancel, A218089.P3179636029415198624.a, A218089.P7948182517501621297.a, A000312, A000312.P3932771318196185165.a, A098462, A098462.P16695405877558364856.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A218089

/-! ## A218089.P17515666652581185198

`Δ[Δ[A001923(n)]-A060946(n+1)]`
-/

namespace A218089.P17515666652581185198
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001923 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - A060946 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A218089.P17515666652581185198

namespace A218089

/-- `Δ[Δ[A001923(n)]-A060946(n+1)]` -/
def P17515666652581185198.Spec : Prop :=
  ∀ n, P17515666652581185198.a n = A218089 (n + 1)

end A218089

/-!
# A218090: Number of unlabeled point-determining bipartite graphs on n vertices.

The programs for A218090, there is no canonical definition to state claims against.
-/

/-! ## A218090.P12737474750608846402

`A261906(n*a(n-2)+1)-n` with `a(0)=1, a(1)=1, a(2)=1, a(3)=1, a(4)=2, a(5)=3`
-/

namespace A218090.P12737474750608846402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1, 1, 2, 3] fun n a =>
  A261906 ((n : ℤ) * a (n - 2) + 1).toNat - (n : ℤ)

end

end A218090.P12737474750608846402

/-! ## A218090.P14221270056877629252

`A383014(A007827(n))`
-/

namespace A218090.P14221270056877629252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383014 (A007827 n).toNat

end

end A218090.P14221270056877629252

/-! ## A218090.P8043926877371334989

`A395633(A389247(n))`
-/

namespace A218090.P8043926877371334989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395633 ((A389247 n).toNat + 11)

end

end A218090.P8043926877371334989

/-! ## A218090.P9300712872333119466

`A093875(∏[A000046(n)])`
-/

namespace A218090.P9300712872333119466
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000046 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093875 (∏ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A218090.P9300712872333119466

/-! ## A218090.P12257005752500525632

`A144328(A088994(n)+1)`
-/

namespace A218090.P12257005752500525632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (A088994 n + 1).toNat

end

end A218090.P12257005752500525632

/-!
# A218091: Number of transitive reflexive early confluent binary relations R on n labeled elements with max_{x}(|{y : xRy}|) = 10.

The programs for A218091, there is no canonical definition to state claims against.
-/

/-! ## A218091.P9114027992206009977

`A135313(eq[10, A002262(n)])`
-/

namespace A218091.P9114027992206009977
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135313 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A218091.P9114027992206009977

/-!
# A218092: Number of transitive reflexive early confluent binary relations R on n labeled elements with max_{x}(|{y : xRy}|) = 2.

The programs for A218092, there is no canonical definition to state claims against.
-/

/-! ## A218092.P1615309450125996766

`A135312(n+2)-1`
-/

namespace A218092.P1615309450125996766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135312 (n + 2) - 1

end

end A218092.P1615309450125996766

/-! ## A218092.P961307662690845671

`∑[abs(Δ[A135312(1+n)])]`
-/

namespace A218092.P961307662690845671
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135312 (1 + n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A218092.P961307662690845671

/-! ## A218092.P17432977833866874471

`record[Δ[A135312(A054531(n+1))]]`
-/

namespace A218092.P17432977833866874471
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135312 (A054531 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A218092.P17432977833866874471

/-! ## A218092.P17131104951784814164

`A135302(A133263(n+4))-1`
-/

namespace A218092.P17131104951784814164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135302 (A133263 (n + 4)).toNat - 1

end

end A218092.P17131104951784814164

/-! ## A218092.P6044445974726608850

`A135313(∑[n+2]+3)`
-/

namespace A218092.P6044445974726608850
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135313 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A218092.P6044445974726608850

/-!
# A218093: Number of transitive reflexive early confluent binary relations R on n labeled elements with max_{x}(|{y : xRy}|) = 3.

The programs for A218093, there is no canonical definition to state claims against.
-/

/-! ## A218093.P11213731761548595284

`A210911(n+3)-A135312(n+3)`
-/

namespace A218093.P11213731761548595284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210911 (n + 3) - A135312 (n + 3)

end

end A218093.P11213731761548595284

/-! ## A218093.P11947018341965903153

`A135313(eq[2, col(n)-1])`
-/

namespace A218093.P11947018341965903153
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.triCol n : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135313 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A218093.P11947018341965903153

/-!
# A218094: Number of transitive reflexive early confluent binary relations R on n labeled elements with max_{x}(|{y : xRy}|) = 4.

The programs for A218094, there is no canonical definition to state claims against.
-/

/-! ## A218094.P7874150190856567224

`A210912(n+4)-A210911(n+4)`
-/

namespace A218094.P7874150190856567224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210912 (n + 4) - A210911 (n + 4)

end

end A218094.P7874150190856567224

/-! ## A218094.P6445945988569492746

`A135313(eq[4, col(n)])`
-/

namespace A218094.P6445945988569492746
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.triCol n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135313 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A218094.P6445945988569492746

/-!
# A218095: Number of transitive reflexive early confluent binary relations R on n labeled elements with max_{x}(|{y : xRy}|) = 5.

The programs for A218095, there is no canonical definition to state claims against.
-/

/-! ## A218095.P8616816336466191594

`A210913(n+5)-A210912(n+5)`
-/

namespace A218095.P8616816336466191594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210913 (n + 5) - A210912 (n + 5)

end

end A218095.P8616816336466191594

/-! ## A218095.P497056908888859216

`A135313(eq[5, col(n)])`
-/

namespace A218095.P497056908888859216
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.triCol n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135313 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A218095.P497056908888859216

/-!
# A218096: Number of transitive reflexive early confluent binary relations R on n labeled elements with max_{x}(|{y : xRy}|) = 6.

The programs for A218096, there is no canonical definition to state claims against.
-/

/-! ## A218096.P5501301433678405461

`A210914(n+6)-A210913(n+6)`
-/

namespace A218096.P5501301433678405461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210914 (n + 6) - A210913 (n + 6)

end

end A218096.P5501301433678405461

/-! ## A218096.P13872146514990241225

`A135313(eq[6, col(n)])`
-/

namespace A218096.P13872146514990241225
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.triCol n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135313 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A218096.P13872146514990241225

/-!
# A218097: Number of transitive reflexive early confluent binary relations R on n labeled elements with max_{x}(|{y : xRy}|) = 7.

The programs for A218097, there is no canonical definition to state claims against.
-/

/-! ## A218097.P1086532276606144773

`A210915(n+7)-A210914(n+7)`
-/

namespace A218097.P1086532276606144773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210915 (n + 7) - A210914 (n + 7)

end

end A218097.P1086532276606144773

/-! ## A218097.P1925399990890598807

`A135313(eq[8, col(n)+1])`
-/

namespace A218097.P1925399990890598807
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.triCol n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135313 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A218097.P1925399990890598807

/-!
# A218098: Number of transitive reflexive early confluent binary relations R on n labeled elements with max_{x}(|{y : xRy}|) = 8.

The programs for A218098, there is no canonical definition to state claims against.
-/

/-! ## A218098.P4589051705533078092

`A210916(n+8)-A210915(n+8)`
-/

namespace A218098.P4589051705533078092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210916 (n + 8) - A210915 (n + 8)

end

end A218098.P4589051705533078092

/-! ## A218098.P16057148395199500532

`A135313(eq[8, col(n)])`
-/

namespace A218098.P16057148395199500532
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.triCol n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135313 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A218098.P16057148395199500532

/-!
# A218099: Number of transitive reflexive early confluent binary relations R on n labeled elements with max_{x}(|{y : xRy}|) = 9.

The programs for A218099, there is no canonical definition to state claims against.
-/

/-! ## A218099.P4045643833373024077

`A210917(n+9)-A210916(n+9)`
-/

namespace A218099.P4045643833373024077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210917 (n + 9) - A210916 (n + 9)

end

end A218099.P4045643833373024077

/-! ## A218099.P12106751300534170423

`A135313(eq[9, A002262(n)])`
-/

namespace A218099.P12106751300534170423
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135313 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A218099.P12106751300534170423

