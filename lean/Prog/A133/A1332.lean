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
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
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
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B007.C001
import Seq.B007.C002
import Seq.B008.C000
import Seq.B008.C001
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
import Seq.B012.C000
import Seq.B013.C000
import Seq.B014.C000
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
import Seq.Opaque.C013
import Seq.Opaque.C014
import Seq.Opaque.C015
import Seq.Opaque.C016
import Seq.Opaque.C017
import Seq.Opaque.C018
import Seq.Opaque.C019
import Seq.Opaque.C021
import Seq.Opaque.C022
import Seq.Opaque.C023
import Seq.Opaque.C024
import Seq.Opaque.C025

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A133200: A001263 * A136521 as infinite lower triangular matrices, where A001263 = the Narayana triangle and A136521 = an infinite lower triangular matrix with (1, 2, 2, 2, ...) in the main diagonal and the rest zeros.

The programs for A133200, the canonical program `A133200.P7253229306496765429` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A133200 has offset 1).

The definition of A133200 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A133200.P15587240595773868951

`A174124(n)+char[∑[n+2]]`
-/

namespace A133200.P15587240595773868951
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174124 n + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A133200.P15587240595773868951

namespace A133200

/-- `A174124(n)+char[∑[n+2]]` -/
def P15587240595773868951.Spec : Prop :=
  ∀ n, P15587240595773868951.a n = A133200 (n + 1)

end A133200

/-! ## A133200.P7842561722663276752

`A132787(n+1)+char[comp[∑[n]]]`
-/

namespace A133200.P7842561722663276752
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132787 (n + 1) + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A133200.P7842561722663276752

namespace A133200

/-- `A132787(n+1)+char[comp[∑[n]]]` -/
def P7842561722663276752.Spec : Prop :=
  ∀ n, P7842561722663276752.a n = A133200 (n + 1)

end A133200

/-! ## A133200.P10838123625744063809

`2*A001263(n+1)-char[∑[n]]`
-/

namespace A133200.P10838123625744063809
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A001263 (n + 1) - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A133200.P10838123625744063809

namespace A133200

/-- `2*A001263(n+1)-char[∑[n]]` -/
def P10838123625744063809.Spec : Prop :=
  ∀ n, P10838123625744063809.a n = A133200 (n + 1)

end A133200

/-! ## A133200.P14473426634541058924

`lcm(A174124(n), A238303(n))`
-/

namespace A133200.P14473426634541058924
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A174124 n) (A238303 n)

end

end A133200.P14473426634541058924

namespace A133200

/-- `lcm(A174124(n), A238303(n))` -/
def P14473426634541058924.Spec : Prop :=
  ∀ n, (P14473426634541058924.a n : ℤ) = A133200 (n + 1)

end A133200

/-! ## A133200.P3498474717245928412

`A001263(n+1)*A238303(n)`
-/

namespace A133200.P3498474717245928412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001263 (n + 1) * A238303 n

end

end A133200.P3498474717245928412

namespace A133200

/-- `A001263(n+1)*A238303(n)` -/
def P3498474717245928412.Spec : Prop :=
  ∀ n, P3498474717245928412.a n = A133200 (n + 1)

end A133200

/-! ## A133200.P16611081676297894308

`2*A001263(n+1)/A035214(n)`
-/

namespace A133200.P16611081676297894308
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 * ((A001263 (n + 1) : ℚ) / (A035214 n : ℚ))

end

end A133200.P16611081676297894308

namespace A133200

/-- `2*A001263(n+1)/A035214(n)` -/
def P16611081676297894308.Spec : Prop :=
  ∀ n, P16611081676297894308.a n = (A133200 (n + 1) : ℚ)

end A133200

/-! ## A133200.P7253229306496765429

`A001263(n+1)+A001263(n+1)-A010054(n)`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A133200

/-- `A001263(n+1)+A001263(n+1)-A010054(n)` -/
def P7253229306496765429.Spec : Prop :=
  ∀ n, P7253229306496765429.a n = A133200 (n + 1)

theorem P7253229306496765429.correct : P7253229306496765429.Spec := by
  intro n
  simp only [A133200, Nat.add_sub_cancel]

end A133200

/-! ## A133200.P6870010077225730747

`A114687(n+1)/A232089(n)`
-/

namespace A133200.P6870010077225730747
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A114687 (n + 1) : ℚ) / (A232089 n : ℚ)

end

end A133200.P6870010077225730747

namespace A133200

/-- `A114687(n+1)/A232089(n)` -/
def P6870010077225730747.Spec : Prop :=
  ∀ n, P6870010077225730747.a n = (A133200 (n + 1) : ℚ)

end A133200

/-! ## A133200.P16496228432930274267

`2*sqrt(A174158(n+1))-char[∑[n]]`
-/

namespace A133200.P16496228432930274267
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  2 * Real.sqrt (A174158 (n + 1) : ℝ) - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℝ)

end

end A133200.P16496228432930274267

namespace A133200

/-- `2*sqrt(A174158(n+1))-char[∑[n]]` -/
def P16496228432930274267.Spec : Prop :=
  ∀ n, P16496228432930274267.a n = (A133200 (n + 1) : ℝ)

end A133200

/-! ## A133200.P10956341343273700697

`A114687(n+1)/A000010(A059268(n))`
-/

namespace A133200.P10956341343273700697
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A114687 (n + 1) : ℚ) / (A000010 (A059268 n).toNat : ℚ)

end

end A133200.P10956341343273700697

namespace A133200

/-- `A114687(n+1)/A000010(A059268(n))` -/
def P10956341343273700697.Spec : Prop :=
  ∀ n, P10956341343273700697.a n = (A133200 (n + 1) : ℚ)

end A133200

/-! ## A133200.P7451580189530444887

`A001263(n+1)*A014963(A059268(n))`
-/

namespace A133200.P7451580189530444887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001263 (n + 1) * A014963 (A059268 n).toNat

end

end A133200.P7451580189530444887

namespace A133200

/-- `A001263(n+1)*A014963(A059268(n))` -/
def P7451580189530444887.Spec : Prop :=
  ∀ n, P7451580189530444887.a n = A133200 (n + 1)

end A133200

/-!
# A133201: a(n) = A133195(n)/3.

The programs for A133201, the canonical program `A133201.P1823863629005679127` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A133201 has offset 0).

The definition of A133201 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A133201.P1823863629005679127

`a(n-1)+10*a(n-3)-10*a(n-4)` with `a(0)=0, a(1)=1, a(2)=2, a(3)=3`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A133201

/-- `a(n-1)+10*a(n-3)-10*a(n-4)` -/
def P1823863629005679127.Spec : Prop :=
  ∀ n, P1823863629005679127.a n = A133201 n

theorem P1823863629005679127.correct : P1823863629005679127.Spec := by
  intro n
  simp only [A133201]

end A133201

/-! ## A133201.P417841123715593886

`A133195(n)/3`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A133201.P417841123715593886
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A133195 n : ℚ) / 3

end

end A133201.P417841123715593886

namespace A133201

/-- `A133195(n)/3` -/
def P417841123715593886.Spec : Prop :=
  ∀ n, P417841123715593886.a n = (A133201 n : ℚ)

end A133201

/-! ## A133201.P8255046358681742987

`10*a(n-3)+3` with `a(0)=0, a(1)=1, a(2)=2`
-/

namespace A133201.P8255046358681742987
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 2] fun n a =>
  10 * a (n - 3) + 3

end

end A133201.P8255046358681742987

namespace A133201

/-- `10*a(n-3)+3` -/
def P8255046358681742987.Spec : Prop :=
  ∀ n, (P8255046358681742987.a n : ℤ) = A133201 n

end A133201

/-! ## A133201.P17101726230726948773

`∑[10*a(n-3)]` with `a(0)=0, a(1)=1, a(2)=1, a(3)=1`
-/

namespace A133201.P17101726230726948773
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 1, 1] fun n f1 =>
  10 * f1 (n - 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A133201.P17101726230726948773

namespace A133201

/-- `∑[10*a(n-3)]` -/
def P17101726230726948773.Spec : Prop :=
  ∀ n, (P17101726230726948773.a n : ℤ) = A133201 n

end A133201

/-! ## A133201.P12019259911950320649

`floor(A135262(n)/3)`
-/

namespace A133201.P12019259911950320649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A135262 n : ℚ) / 3⌋

end

end A133201.P12019259911950320649

namespace A133201

/-- `floor(A135262(n)/3)` -/
def P12019259911950320649.Spec : Prop :=
  ∀ n, P12019259911950320649.a n = A133201 n

end A133201

/-! ## A133201.P8010764871033791740

`A051885(3*n)/3`
-/

namespace A133201.P8010764871033791740
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A051885 (3 * n) : ℚ) / 3

end

end A133201.P8010764871033791740

namespace A133201

/-- `A051885(3*n)/3` -/
def P8010764871033791740.Spec : Prop :=
  ∀ n, P8010764871033791740.a n = (A133201 n : ℚ)

end A133201

/-! ## A133201.P10531274247785442536

`∑[floor(10^(A008611(Δ[n²])/2-1))]`
-/

namespace A133201.P10531274247785442536
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(10 : ℝ) ^ ((A008611 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat : ℚ) / 2 - 1 : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A133201.P10531274247785442536

namespace A133201

/-- `∑[floor(10^(A008611(Δ[n²])/2-1))]` -/
def P10531274247785442536.Spec : Prop :=
  ∀ n, P10531274247785442536.a n = A133201 n

end A133201

/-! ## A133201.P9609630184661155497

`floor(A331788(3*n+1)/2)/3`
-/

namespace A133201.P9609630184661155497
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (⌊(A331788 (3 * n + 1) : ℚ) / 2⌋ : ℚ) / 3

end

end A133201.P9609630184661155497

namespace A133201

/-- `floor(A331788(3*n+1)/2)/3` -/
def P9609630184661155497.Spec : Prop :=
  ∀ n, P9609630184661155497.a n = (A133201 n : ℚ)

end A133201

/-!
# A133202: Number of divisors of the absolute value of Ramanujan tau numbers. a(n) = 0 if tau(n) = 0.

The programs for A133202, there is no canonical definition to state claims against.
-/

/-! ## A133202.P14704383929352119954

`∏{e}[A000594(n+1), #+1]`
-/

namespace A133202.P14704383929352119954
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000594 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (Nat.factorization (f1 n).natAbs p + 1)

end

end A133202.P14704383929352119954

/-! ## A133202.P5974929801403874067

`∏{e}[A055978(4*(n+1)), #+1]`
-/

namespace A133202.P5974929801403874067
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055978 (4 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (Nat.factorization (f1 n).natAbs p + 1)

end

end A133202.P5974929801403874067

/-! ## A133202.P4278497265801858860

`∏{e}[A145155(n)/(n+1), #+1]`
-/

namespace A133202.P4278497265801858860
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A145155 n : ℚ) / (n + 1 : ℚ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (SequenceMachineLib.roundAway (f1 n)).natAbs, (Nat.factorization (SequenceMachineLib.roundAway (f1 n)).natAbs p + 1)

end

end A133202.P4278497265801858860

/-! ## A133202.P10988397878171290952

`∏{e}[∑{d}[n+1, A308492(#)], #+1]`
-/

namespace A133202.P10988397878171290952
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), A308492 d

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (Nat.factorization (f1 n).natAbs p + 1)

end

end A133202.P10988397878171290952

/-! ## A133202.P13310504090025154040

`∏{e}[A292781(A075349(n+2)), #+1]`
-/

namespace A133202.P13310504090025154040
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292781 (A075349 (n + 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (Nat.factorization (f1 n).natAbs p + 1)

end

end A133202.P13310504090025154040

/-!
# A133203: a(n) = a(n-1) + 8*n + 4, n > 2.

The programs for A133203, the canonical program `A133203.P11220447859892132144` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A133203 has offset 0).

The definition of A133203 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+8*n+4` (program `A133203.P11220447859892132144`, by `A133203.P11220447859892132144.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A133203.P11220447859892132144

`a(n-1)+8*n+4` with `a(0)=0, a(1)=1, a(2)=3`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A133203

/-- `a(n-1)+8*n+4` -/
def P11220447859892132144.Spec : Prop :=
  ∀ n, (P11220447859892132144.a n : ℤ) = A133203 n

theorem P11220447859892132144.correct : P11220447859892132144.Spec := by
  intro n
  simp only [A133203]

end A133203

/-! ## A133203.P7817683337224058467

`a(n-1)+lcm(4, Δ[n²])` with `a(0)=0, a(1)=1, a(2)=3`
-/

namespace A133203.P7817683337224058467
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 3] fun n a =>
  a (n - 1) + Int.lcm 4 ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A133203.P7817683337224058467

namespace A133203

/-- `a(n-1)+lcm(4, Δ[n²])` -/
def P7817683337224058467.Spec : Prop :=
  ∀ n, (P7817683337224058467.a n : ℤ) = A133203 n

end A133203

/-! ## A133203.P2657878860982884444

`a(n-1)-Δ[-(2*n)²]` with `a(0)=0, a(1)=1, a(2)=3`
-/

namespace A133203.P2657878860982884444
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -((2 * n) ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 3] fun n a =>
  a (n - 1) - (f1 (n + 1) - f1 n)

end

end A133203.P2657878860982884444

namespace A133203

/-- `a(n-1)-Δ[-(2*n)²]` -/
def P2657878860982884444.Spec : Prop :=
  ∀ n, P2657878860982884444.a n = A133203 n

end A133203

/-! ## A133203.P16643357800092548660

`∑[record[lcm(n, 4%(4-A000045(n)))]]`
-/

namespace A133203.P16643357800092548660
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n : ℤ) (Int.tmod 4 (4 - A000045 n))

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A133203.P16643357800092548660

namespace A133203

/-- `∑[record[lcm(n, 4%(4-A000045(n)))]]` -/
def P16643357800092548660.Spec : Prop :=
  ∀ n, (P16643357800092548660.a n : ℤ) = A133203 n

end A133203

/-! ## A133203.P4256696333923454937

`A060819(a(n-1))+A017113(n)` with `a(0)=0, a(1)=1, a(2)=3`
-/

namespace A133203.P4256696333923454937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 3] fun n a =>
  A060819 (a (n - 1)).toNat + A017113 n

end

end A133203.P4256696333923454937

namespace A133203

/-- `A060819(a(n-1))+A017113(n)` -/
def P4256696333923454937.Spec : Prop :=
  ∀ n, P4256696333923454937.a n = A133203 n

end A133203

/-! ## A133203.P5355826782051821895

`A109613(A078112(a(n-1)))+A017113(n)` with `a(0)=0, a(1)=1, a(2)=3`
-/

namespace A133203.P5355826782051821895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 3] fun n a =>
  A109613 (A078112 (a (n - 1)).toNat).toNat + A017113 n

end

end A133203.P5355826782051821895

namespace A133203

/-- `A109613(A078112(a(n-1)))+A017113(n)` -/
def P5355826782051821895.Spec : Prop :=
  ∀ n, P5355826782051821895.a n = A133203 n

end A133203

/-!
# A133204: Primes p such that the non-Pellian equation x^2-2py^2=-1 is solvable.

The programs for A133204, there is no canonical definition to state claims against.
-/

/-! ## A133204.P9351114212101210560

`record[A006530(A137351(n+1))]`
-/

namespace A133204.P9351114212101210560
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A137351 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A133204.P9351114212101210560

/-! ## A133204.P12161454090136186015

`p?[A031396(n+1)-A006530(A031396(n+1))]`
-/

namespace A133204.P12161454090136186015
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031396 (n + 1) - A006530 (A031396 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A133204.P12161454090136186015

/-! ## A133204.P7380306338496837319

`p?[A007913(2*A003654(n+1))]`
-/

namespace A133204.P7380306338496837319
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (2 * A003654 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A133204.P7380306338496837319

/-! ## A133204.P17782064222999458411

`p?[A000265(2*A137351(n+1))]`
-/

namespace A133204.P17782064222999458411
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (2 * A137351 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A133204.P17782064222999458411

/-! ## A133204.P8839444753003794020

`p?[A000217(A003814(n+1))%A003814(n+1)]`
-/

namespace A133204.P8839444753003794020
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000217 (A003814 (n + 1)).toNat) (A003814 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A133204.P8839444753003794020

/-! ## A133204.P7040151287355931142

`p?[A038572(A003814(n+1))]`
-/

namespace A133204.P7040151287355931142
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038572 (A003814 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A133204.P7040151287355931142

/-!
# A133205: Fully multiplicative with a(p) = p*(p+1)/2 for prime p.

The programs for A133205, the canonical program `A133205.P13752087897253202487` is in `Seq.B014.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A133205 has offset 1).

The definition of A133205 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A061142, A167338, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A133205.P13752087897253202487

`A167338(n+1)/A061142(n+1)`

The canonical program, it is in `Seq.B014.C000`.
-/

namespace A133205

/-- `A167338(n+1)/A061142(n+1)` -/
def P13752087897253202487.Spec : Prop :=
  ∀ n, P13752087897253202487.a n = (A133205 (n + 1) : ℚ)

end A133205

/-! ## A133205.P3293859030714878427

`∏{d}[n+1, C(A014963(#)+1, 2)]`
-/

namespace A133205.P3293859030714878427
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n), Nat.choose (A014963 d + 1).toNat 2

end

end A133205.P3293859030714878427

namespace A133205

/-- `∏{d}[n+1, C(A014963(#)+1, 2)]` -/
def P3293859030714878427.Spec : Prop :=
  ∀ n, (P3293859030714878427.a n : ℤ) = A133205 (n + 1)

end A133205

/-! ## A133205.P12511613262249278204

`∏{d}[n+1, A000217(A014963(#))]`
-/

namespace A133205.P12511613262249278204
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n), A000217 (A014963 d).toNat

end

end A133205.P12511613262249278204

namespace A133205

/-- `∏{d}[n+1, A000217(A014963(#))]` -/
def P12511613262249278204.Spec : Prop :=
  ∀ n, P12511613262249278204.a n = A133205 (n + 1)

end A133205

/-! ## A133205.P321187694446114427

`A003960(n+1)*A394497(n+1)`
-/

namespace A133205.P321187694446114427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003960 (n + 1) * A394497 (n + 1)

end

end A133205.P321187694446114427

namespace A133205

/-- `A003960(n+1)*A394497(n+1)` -/
def P321187694446114427.Spec : Prop :=
  ∀ n, P321187694446114427.a n = A133205 (n + 1)

end A133205

/-! ## A133205.P8133945980816501383

`A167338(n+1)/sqrt(A165825(n+1))`
-/

namespace A133205.P8133945980816501383
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A167338 (n + 1) : ℝ) / Real.sqrt (A165825 (n + 1) : ℝ)

end

end A133205.P8133945980816501383

namespace A133205

/-- `A167338(n+1)/sqrt(A165825(n+1))` -/
def P8133945980816501383.Spec : Prop :=
  ∀ n, P8133945980816501383.a n = (A133205 (n + 1) : ℝ)

end A133205

/-! ## A133205.P14252920999022534395

`A167338(n+1)/2^A001222(n+1)`
-/

namespace A133205.P14252920999022534395
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A167338 (n + 1) : ℚ) / (2 : ℚ) ^ (A001222 (n + 1) : ℤ)

end

end A133205.P14252920999022534395

namespace A133205

/-- `A167338(n+1)/2^A001222(n+1)` -/
def P14252920999022534395.Spec : Prop :=
  ∀ n, P14252920999022534395.a n = (A133205 (n + 1) : ℚ)

end A133205

/-! ## A133205.P2914819344234796152

`(n+1)*A003959(n+1)/A061142(n+1)`
-/

namespace A133205.P2914819344234796152
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) * ((A003959 (n + 1) : ℚ) / (A061142 (n + 1) : ℚ))

end

end A133205.P2914819344234796152

namespace A133205

/-- `(n+1)*A003959(n+1)/A061142(n+1)` -/
def P2914819344234796152.Spec : Prop :=
  ∀ n, P2914819344234796152.a n = (A133205 (n + 1) : ℚ)

end A133205

/-! ## A133205.P145599260347159188

`(n+1)/A165825(n+1)*A166642(n+1)`
-/

namespace A133205.P145599260347159188
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A165825 (n + 1) : ℚ) * (A166642 (n + 1) : ℚ)

end

end A133205.P145599260347159188

namespace A133205

/-- `(n+1)/A165825(n+1)*A166642(n+1)` -/
def P145599260347159188.Spec : Prop :=
  ∀ n, P145599260347159188.a n = (A133205 (n + 1) : ℚ)

end A133205

/-! ## A133205.P11534971063045511490

`(n+1)/A165833(n+1)*A166646(n+1)`
-/

namespace A133205.P11534971063045511490
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A165833 (n + 1) : ℚ) * (A166646 (n + 1) : ℚ)

end

end A133205.P11534971063045511490

namespace A133205

/-- `(n+1)/A165833(n+1)*A166646(n+1)` -/
def P11534971063045511490.Spec : Prop :=
  ∀ n, P11534971063045511490.a n = (A133205 (n + 1) : ℚ)

end A133205

/-! ## A133205.P10077603547127067558

`A167338(n+1)/∏{d}[n+1, A000005(A014963(#))]`
-/

namespace A133205.P10077603547127067558
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A167338 (n + 1) : ℚ) / ((∏ d ∈ Nat.divisors (f1 n), A000005 (A014963 d).toNat : ℤ) : ℚ)

end

end A133205.P10077603547127067558

namespace A133205

/-- `A167338(n+1)/∏{d}[n+1, A000005(A014963(#))]` -/
def P10077603547127067558.Spec : Prop :=
  ∀ n, P10077603547127067558.a n = (A133205 (n + 1) : ℚ)

end A133205

/-! ## A133205.P9517008129395703498

`A003959(n+1)/A166642(n+1)*A167338(n+1)`
-/

namespace A133205.P9517008129395703498
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003959 (n + 1) : ℚ) / (A166642 (n + 1) : ℚ) * (A167338 (n + 1) : ℚ)

end

end A133205.P9517008129395703498

namespace A133205

/-- `A003959(n+1)/A166642(n+1)*A167338(n+1)` -/
def P9517008129395703498.Spec : Prop :=
  ∀ n, P9517008129395703498.a n = (A133205 (n + 1) : ℚ)

end A133205

/-! ## A133205.P4273458346221703553

`A003959(n+1)/A167303(n+1)*A167340(n+1)`
-/

namespace A133205.P4273458346221703553
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003959 (n + 1) : ℚ) / (A167303 (n + 1) : ℚ) * (A167340 (n + 1) : ℚ)

end

end A133205.P4273458346221703553

namespace A133205

/-- `A003959(n+1)/A167303(n+1)*A167340(n+1)` -/
def P4273458346221703553.Spec : Prop :=
  ∀ n, P4273458346221703553.a n = (A133205 (n + 1) : ℚ)

end A133205

/-! ## A133205.P17883234690686865741

`A003959(n+1)/A003959(A165827(n+1))*A166627(n+1)`
-/

namespace A133205.P17883234690686865741
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003959 (n + 1) : ℚ) / (A003959 (A165827 (n + 1)).toNat : ℚ) * (A166627 (n + 1) : ℚ)

end

end A133205.P17883234690686865741

namespace A133205

/-- `A003959(n+1)/A003959(A165827(n+1))*A166627(n+1)` -/
def P17883234690686865741.Spec : Prop :=
  ∀ n, P17883234690686865741.a n = (A133205 (n + 1) : ℚ)

end A133205

/-!
# A133206: Number of unlabeled graphs with n nodes and a degenerate adjacency matrix.

The programs for A133206, there is no canonical definition to state claims against.
-/

/-! ## A133206.P9804198793431129418

`Δ[A006897(n)]-A109717(n+1)`
-/

namespace A133206.P9804198793431129418
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006897 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A109717 (n + 1)

end

end A133206.P9804198793431129418

/-! ## A133206.P14572552350227032026

`A141580(n+1)+A133279(n+1)`
-/

namespace A133206.P14572552350227032026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141580 (n + 1) + A133279 (n + 1)

end

end A133206.P14572552350227032026

/-! ## A133206.P2830757955627123398

`A000088(n+1)-A109717(n+1)`
-/

namespace A133206.P2830757955627123398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000088 (n + 1) - A109717 (n + 1)

end

end A133206.P2830757955627123398

/-! ## A133206.P5999608395121885729

`A140981(n+1)-A103869(n+1)`
-/

namespace A133206.P5999608395121885729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140981 (n + 1) - A103869 (n + 1)

end

end A133206.P5999608395121885729

/-! ## A133206.P12006211556634704516

`A133279(n+1)+∑[A324693(n+1)]`
-/

namespace A133206.P12006211556634704516
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324693 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133279 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A133206.P12006211556634704516

/-!
# A133207: Strobogrammatic non-palindromic primes.

The programs for A133207, there is no canonical definition to state claims against.
-/

/-! ## A133207.P5959820387566254343

`∩[A007597(n+1), A287092(n+1)]`
-/

namespace A133207.P5959820387566254343
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007597 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287092 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A133207.P5959820387566254343

/-! ## A133207.P10724270231680421478

`∩[A018847(n+1), A287092(n+1)]`
-/

namespace A133207.P10724270231680421478
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018847 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287092 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A133207.P10724270231680421478

/-! ## A133207.P5896612310105249681

`∩[A080788(n+1), A287092(n+1)]`
-/

namespace A133207.P5896612310105249681
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080788 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287092 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A133207.P5896612310105249681

/-! ## A133207.P15747313896273755815

`p?[A287092(n+1)]`
-/

namespace A133207.P15747313896273755815
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287092 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A133207.P15747313896273755815

/-! ## A133207.P5093437794192501950

`record[p?[A287092(A052938(n))]]`
-/

namespace A133207.P5093437794192501950
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287092 (A052938 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A133207.P5093437794192501950

/-!
# A133208: a(n) is the smallest number k such that k^n has the same digits as some other n-th power without leading zeros.

The programs for A133208, there is no canonical definition to state claims against.
-/

/-! ## A133208.P15200548472772580050

`A293733(a(n-1)+3)` with `a(0)=12, a(1)=12, a(2)=5, a(3)=4`
-/

namespace A133208.P15200548472772580050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [12, 12, 5, 4] fun n a =>
  A293733 (a (n - 1) + 3).toNat

end

end A133208.P15200548472772580050

/-!
# A133209: a(n) = 4a(n-1) - 6a(n-2) + 4a(n-3), n > 3; a(0) = 3, a(1) = 2, a(2) = a(3) = 0.

The programs for A133209, the canonical program `A133209.P3128229133653818193` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A133209 has offset 0).

The definition of A133209 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `4*a(n-1)-6*a(n-2)+4*a(n-3)` (program `A133209.P3128229133653818193`, by `A133209.P3128229133653818193.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A133209.P3128229133653818193

`4*a(n-1)-6*a(n-2)+4*a(n-3)` with `a(0)=3, a(1)=2, a(2)=0`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A133209

/-- `4*a(n-1)-6*a(n-2)+4*a(n-3)` -/
def P3128229133653818193.Spec : Prop :=
  ∀ n, P3128229133653818193.a n = A133209 n

theorem P3128229133653818193.correct : P3128229133653818193.Spec := by
  intro n
  simp only [A133209]

end A133209

/-! ## A133209.P372679928672354621

`ogf((3-10x+10x^2)/(1-4x+6x^2-4x^3))`
-/

namespace A133209.P372679928672354621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, -10, 10] [1, -4, 6, -4] n

end

end A133209.P372679928672354621

namespace A133209

/-- `ogf((3-10x+10x^2)/(1-4x+6x^2-4x^3))` -/
def P372679928672354621.Spec : Prop :=
  ∀ n, P372679928672354621.a n = A133209 n

end A133209

/-! ## A133209.P7836680282126900773

`A099087(n+2)+2^n`
-/

namespace A133209.P7836680282126900773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099087 (n + 2) + (2 ^ n : ℤ)

end

end A133209.P7836680282126900773

namespace A133209

/-- `A099087(n+2)+2^n` -/
def P7836680282126900773.Spec : Prop :=
  ∀ n, P7836680282126900773.a n = A133209 n

end A133209

/-! ## A133209.P16715696834714055823

`A009545(n+3)+2^n`
-/

namespace A133209.P16715696834714055823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009545 (n + 3) + (2 ^ n : ℤ)

end

end A133209.P16715696834714055823

namespace A133209

/-- `A009545(n+3)+2^n` -/
def P16715696834714055823.Spec : Prop :=
  ∀ n, P16715696834714055823.a n = A133209 n

end A133209

/-! ## A133209.P17893001436482799466

`2*(a(n-1)-A099087(n))` with `a(0)=3`
-/

namespace A133209.P17893001436482799466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  2 * (a (n - 1) - A099087 n)

end

end A133209.P17893001436482799466

namespace A133209

/-- `2*(a(n-1)-A099087(n))` -/
def P17893001436482799466.Spec : Prop :=
  ∀ n, P17893001436482799466.a n = A133209 n

end A133209

/-! ## A133209.P1297100281024829098

`a(n-1)+a(n-1)-A132723(n)` with `a(0)=3`
-/

namespace A133209.P1297100281024829098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  a (n - 1) + (a (n - 1) - A132723 n)

end

end A133209.P1297100281024829098

namespace A133209

/-- `a(n-1)+a(n-1)-A132723(n)` -/
def P1297100281024829098.Spec : Prop :=
  ∀ n, P1297100281024829098.a n = A133209 n

end A133209

/-! ## A133209.P1133489780622600702

`A238187(n)-A077860(n)`
-/

namespace A133209.P1133489780622600702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238187 n - A077860 n

end

end A133209.P1133489780622600702

namespace A133209

/-- `A238187(n)-A077860(n)` -/
def P1133489780622600702.Spec : Prop :=
  ∀ n, P1133489780622600702.a n = A133209 n

end A133209

/-! ## A133209.P10140538166993643964

`A131577(n+1)+A099087(n+2)`
-/

namespace A133209.P10140538166993643964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131577 (n + 1) + A099087 (n + 2)

end

end A133209.P10140538166993643964

namespace A133209

/-- `A131577(n+1)+A099087(n+2)` -/
def P10140538166993643964.Spec : Prop :=
  ∀ n, P10140538166993643964.a n = A133209 n

end A133209

/-! ## A133209.P7345170346565712475

`A131577(n+1)+A009545(n+3)`
-/

namespace A133209.P7345170346565712475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131577 (n + 1) + A009545 (n + 3)

end

end A133209.P7345170346565712475

namespace A133209

/-- `A131577(n+1)+A009545(n+3)` -/
def P7345170346565712475.Spec : Prop :=
  ∀ n, P7345170346565712475.a n = A133209 n

end A133209

/-! ## A133209.P6107346850612422710

`A016116(2*n)+A009545(n+3)`
-/

namespace A133209.P6107346850612422710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016116 (2 * n) + A009545 (n + 3)

end

end A133209.P6107346850612422710

namespace A133209

/-- `A016116(2*n)+A009545(n+3)` -/
def P6107346850612422710.Spec : Prop :=
  ∀ n, P6107346850612422710.a n = A133209 n

end A133209

/-! ## A133209.P12559488588112521479

`A077957(2*n)+A009545(n+3)`
-/

namespace A133209.P12559488588112521479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077957 (2 * n) + A009545 (n + 3)

end

end A133209.P12559488588112521479

namespace A133209

/-- `A077957(2*n)+A009545(n+3)` -/
def P12559488588112521479.Spec : Prop :=
  ∀ n, P12559488588112521479.a n = A133209 n

end A133209

/-! ## A133209.P16360438677530934264

`A011782(n+1)+2*A146559(n+1)`
-/

namespace A133209.P16360438677530934264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (n + 1) + 2 * A146559 (n + 1)

end

end A133209.P16360438677530934264

namespace A133209

/-- `A011782(n+1)+2*A146559(n+1)` -/
def P16360438677530934264.Spec : Prop :=
  ∀ n, P16360438677530934264.a n = A133209 n

end A133209

/-! ## A133209.P9794115073056066668

`A146559(n+1)+2*A038503(n+1)`
-/

namespace A133209.P9794115073056066668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146559 (n + 1) + 2 * A038503 (n + 1)

end

end A133209.P9794115073056066668

namespace A133209

/-- `A146559(n+1)+2*A038503(n+1)` -/
def P9794115073056066668.Spec : Prop :=
  ∀ n, P9794115073056066668.a n = A133209 n

end A133209

/-! ## A133209.P4272686262372135464

`A131577(n+1)+2*A146559(n+1)`
-/

namespace A133209.P4272686262372135464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131577 (n + 1) + 2 * A146559 (n + 1)

end

end A133209.P4272686262372135464

namespace A133209

/-- `A131577(n+1)+2*A146559(n+1)` -/
def P4272686262372135464.Spec : Prop :=
  ∀ n, P4272686262372135464.a n = A133209 n

end A133209

/-! ## A133209.P4752273951684768719

`A011782(n+1)+2*A138232(2*n)`
-/

namespace A133209.P4752273951684768719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (n + 1) + 2 * A138232 (2 * n)

end

end A133209.P4752273951684768719

namespace A133209

/-- `A011782(n+1)+2*A138232(2*n)` -/
def P4752273951684768719.Spec : Prop :=
  ∀ n, P4752273951684768719.a n = A133209 n

end A133209

/-! ## A133209.P1181296346543150271

`A131577(n+1)+2*A138232(2*n)`
-/

namespace A133209.P1181296346543150271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131577 (n + 1) + 2 * A138232 (2 * n)

end

end A133209.P1181296346543150271

namespace A133209

/-- `A131577(n+1)+2*A138232(2*n)` -/
def P1181296346543150271.Spec : Prop :=
  ∀ n, P1181296346543150271.a n = A133209 n

end A133209

/-! ## A133209.P10625912289432776145

`A016116(2*n)+2*A138232(2*n)`
-/

namespace A133209.P10625912289432776145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016116 (2 * n) + 2 * A138232 (2 * n)

end

end A133209.P10625912289432776145

namespace A133209

/-- `A016116(2*n)+2*A138232(2*n)` -/
def P10625912289432776145.Spec : Prop :=
  ∀ n, P10625912289432776145.a n = A133209 n

end A133209

/-! ## A133209.P13151871055411743757

`4*A038503(n+1)-A000079(n)`
-/

namespace A133209.P13151871055411743757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A038503 (n + 1) - A000079 n

end

end A133209.P13151871055411743757

namespace A133209

/-- `4*A038503(n+1)-A000079(n)` -/
def P13151871055411743757.Spec : Prop :=
  ∀ n, P13151871055411743757.a n = A133209 n

end A133209

/-!
# A133212: a(n) = 4*a(n-1) - 6*a(n-2) + 4*a(n-3), n > 3; a(0) = 1, a(1) = 4, a(2) = 12, a(3) = 32.

The programs for A133212, the canonical program `A133212.P7653608528179210670` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A133212 has offset 0).

The definition of A133212 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `4*a(n-1)-6*a(n-2)+4*a(n-3)` (program `A133212.P7653608528179210670`, by `A133212.P7653608528179210670.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A133212.P7653608528179210670

`4*a(n-1)-6*a(n-2)+4*a(n-3)` with `a(0)=1, a(1)=4, a(2)=12, a(3)=32`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A133212

/-- `4*a(n-1)-6*a(n-2)+4*a(n-3)` -/
def P7653608528179210670.Spec : Prop :=
  ∀ n, P7653608528179210670.a n = A133212 n

theorem P7653608528179210670.correct : P7653608528179210670.Spec := by
  intro n
  simp only [A133212]

end A133212

/-! ## A133212.P3307944011149985884

`ogf((1+2x^2+4x^3)/(1-4x+6x^2-4x^3))`
-/

namespace A133212.P3307944011149985884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 0, 2, 4] [1, -4, 6, -4] n

end

end A133212.P3307944011149985884

namespace A133212

/-- `ogf((1+2x^2+4x^3)/(1-4x+6x^2-4x^3))` -/
def P3307944011149985884.Spec : Prop :=
  ∀ n, P3307944011149985884.a n = A133212 n

end A133212

/-! ## A133212.P15094992942522647318

`2^(n+2)-A132723(n)`
-/

namespace A133212.P15094992942522647318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ (n + 2) : ℤ) - A132723 n

end

end A133212.P15094992942522647318

namespace A133212

/-- `2^(n+2)-A132723(n)` -/
def P15094992942522647318.Spec : Prop :=
  ∀ n, P15094992942522647318.a n = A133212 n

end A133212

/-! ## A133212.P17575235819613422046

`A036453(n+1)*A038503(n+3)`
-/

namespace A133212.P17575235819613422046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036453 (n + 1) * A038503 (n + 3)

end

end A133212.P17575235819613422046

namespace A133212

/-- `A036453(n+1)*A038503(n+3)` -/
def P17575235819613422046.Spec : Prop :=
  ∀ n, P17575235819613422046.a n = A133212 n

end A133212

/-! ## A133212.P5218550534373151619

`(2-A000007(n))*A038503(n+3)`
-/

namespace A133212.P5218550534373151619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A000007 n) * A038503 (n + 3)

end

end A133212.P5218550534373151619

namespace A133212

/-- `(2-A000007(n))*A038503(n+3)` -/
def P5218550534373151619.Spec : Prop :=
  ∀ n, P5218550534373151619.a n = A133212 n

end A133212

/-! ## A133212.P13569081250918113039

`A014963(A001316(n))*A038503(n+3)`
-/

namespace A133212.P13569081250918113039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A001316 n).toNat * A038503 (n + 3)

end

end A133212.P13569081250918113039

namespace A133212

/-- `A014963(A001316(n))*A038503(n+3)` -/
def P13569081250918113039.Spec : Prop :=
  ∀ n, P13569081250918113039.a n = A133212 n

end A133212

/-! ## A133212.P17602050488774701483

`A020639(A008458(n))*A038503(n+3)`
-/

namespace A133212.P17602050488774701483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A008458 n).toNat * A038503 (n + 3)

end

end A133212.P17602050488774701483

namespace A133212

/-- `A020639(A008458(n))*A038503(n+3)` -/
def P17602050488774701483.Spec : Prop :=
  ∀ n, P17602050488774701483.a n = A133212 n

end A133212

/-! ## A133212.P17834382146293097849

`A000005(A008578(n+1))*A038503(n+3)`
-/

namespace A133212.P17834382146293097849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A008578 (n + 1)).toNat * A038503 (n + 3)

end

end A133212.P17834382146293097849

namespace A133212

/-- `A000005(A008578(n+1))*A038503(n+3)` -/
def P17834382146293097849.Spec : Prop :=
  ∀ n, P17834382146293097849.a n = A133212 n

end A133212

/-! ## A133212.P2060914928935955015

`A020639(A006093(n+1))*A038503(n+3)`
-/

namespace A133212.P2060914928935955015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A006093 (n + 1)).toNat * A038503 (n + 3)

end

end A133212.P2060914928935955015

namespace A133212

/-- `A020639(A006093(n+1))*A038503(n+3)` -/
def P2060914928935955015.Spec : Prop :=
  ∀ n, P2060914928935955015.a n = A133212 n

end A133212

/-! ## A133212.P6242808667901888459

`A038503(n+3)*A131562(A275365(2*n))`
-/

namespace A133212.P6242808667901888459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038503 (n + 3) * A131562 (A275365 (2 * n)).toNat

end

end A133212.P6242808667901888459

namespace A133212

/-- `A038503(n+3)*A131562(A275365(2*n))` -/
def P6242808667901888459.Spec : Prop :=
  ∀ n, P6242808667901888459.a n = A133212 n

end A133212

/-! ## A133212.P7291122828770338523

`A001221(2*p?[A003654(n+1)])*A038503(n+3)`
-/

namespace A133212.P7291122828770338523
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003654 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (2 * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat * A038503 (n + 3)

end

end A133212.P7291122828770338523

namespace A133212

/-- `A001221(2*p?[A003654(n+1)])*A038503(n+3)` -/
def P7291122828770338523.Spec : Prop :=
  ∀ n, P7291122828770338523.a n = A133212 n

end A133212

/-!
# A133213: Prime partial sums of digits of decimal expansion of pi (A000796).

The programs for A133213, there is no canonical definition to state claims against.
-/

/-! ## A133213.P3008336793660274715

`p?[A046974(n)]`
-/

namespace A133213.P3008336793660274715
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046974 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A133213.P3008336793660274715

/-! ## A133213.P16413751992666406357

`p?[∑[A000796(n)]]`
-/

namespace A133213.P16413751992666406357
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000796 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A133213.P16413751992666406357

/-! ## A133213.P4083748251748053784

`p?[a(n-1)+A065253(n+1)%10]` with `a(0)=3`
-/

namespace A133213.P4083748251748053784
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [3] fun n f1 =>
  f1 (n - 1) + Int.tmod (A065253 (n + 1)) 10

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A133213.P4083748251748053784

/-! ## A133213.P9316790741136482846

`filter[A046974(n), A010051(#)]`
-/

namespace A133213.P9316790741136482846
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046974 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A133213.P9316790741136482846

/-! ## A133213.P14773107432780847988

`filter[A046974(n), A323152(#)]`
-/

namespace A133213.P14773107432780847988
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046974 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323152 (f1 j).toNat = 1) n)

end

end A133213.P14773107432780847988

/-! ## A133213.P6064984437778010806

`filter[A046974(n), A323153(#)]`
-/

namespace A133213.P6064984437778010806
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046974 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323153 (f1 j).toNat = 1) n)

end

end A133213.P6064984437778010806

/-! ## A133213.P2939299868825463790

`A046974(A058938(n+1)-1)`
-/

namespace A133213.P2939299868825463790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046974 (A058938 (n + 1) - 1).toNat

end

end A133213.P2939299868825463790

/-! ## A133213.P13972064272978780981

`p?[∑[A001355(2*n+1)]]`
-/

namespace A133213.P13972064272978780981
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001355 (2 * n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A133213.P13972064272978780981

/-! ## A133213.P7597473083719120700

`p?[∑[A076790(2*n+1)]]`
-/

namespace A133213.P7597473083719120700
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076790 (2 * n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A133213.P7597473083719120700

/-! ## A133213.P8544068724241481705

`p?[∑[A110766(2*n+1)]]`
-/

namespace A133213.P8544068724241481705
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110766 (2 * n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A133213.P8544068724241481705

/-! ## A133213.P13596443004424644899

`p?[A059582(n)-1]`
-/

namespace A133213.P13596443004424644899
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059582 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A133213.P13596443004424644899

/-! ## A133213.P3860228516965717276

`p?[A057637(A059582(n))]`
-/

namespace A133213.P3860228516965717276
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057637 (A059582 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A133213.P3860228516965717276

/-! ## A133213.P13872794569191321194

`filter[A046974(n), A080339(#)]`
-/

namespace A133213.P13872794569191321194
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046974 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A080339 (f1 j).toNat = 1) n)

end

end A133213.P13872794569191321194

/-! ## A133213.P10542981645923703726

`filter[A046974(n), A080545(#)]`
-/

namespace A133213.P10542981645923703726
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046974 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A080545 (f1 j).toNat = 1) n)

end

end A133213.P10542981645923703726

/-!
# A133214: Delannoy paths counted by number of weak peaks.

The programs for A133214, the canonical program `A133214.P12490288649155844000` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A133214 has offset 0).

The definition of A133214 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9120 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A133214.P12490288649155844000

`A007318(n)*A013609(n)`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A133214

/-- `A007318(n)*A013609(n)` -/
def P12490288649155844000.Spec : Prop :=
  ∀ n, P12490288649155844000.a n = A133214 n

theorem P12490288649155844000.correct : P12490288649155844000.Spec := by
  intro n
  simp only [A133214]

end A133214

/-! ## A133214.P16398183892531218437

`A008459(n)*A059268(n)`
-/

namespace A133214.P16398183892531218437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008459 n * A059268 n

end

end A133214.P16398183892531218437

namespace A133214

/-- `A008459(n)*A059268(n)` -/
def P16398183892531218437.Spec : Prop :=
  ∀ n, P16398183892531218437.a n = A133214 n

end A133214

/-! ## A133214.P7729150140996764310

`A082137(n)*A124927(n)`
-/

namespace A133214.P7729150140996764310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082137 n * A124927 n

end

end A133214.P7729150140996764310

namespace A133214

/-- `A082137(n)*A124927(n)` -/
def P7729150140996764310.Spec : Prop :=
  ∀ n, P7729150140996764310.a n = A133214 n

end A133214

/-! ## A133214.P648660671603227246

`A130595(n)*A303872(n)`
-/

namespace A133214.P648660671603227246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130595 n * A303872 n

end

end A133214.P648660671603227246

namespace A133214

/-- `A130595(n)*A303872(n)` -/
def P648660671603227246.Spec : Prop :=
  ∀ n, P648660671603227246.a n = A133214 n

end A133214

/-! ## A133214.P12977606376352204310

`abs(A007318(n)*A303872(n))`
-/

namespace A133214.P12977606376352204310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A007318 n * A303872 n|

end

end A133214.P12977606376352204310

namespace A133214

/-- `abs(A007318(n)*A303872(n))` -/
def P12977606376352204310.Spec : Prop :=
  ∀ n, P12977606376352204310.a n = A133214 n

end A133214

/-! ## A133214.P6516840057008146928

`A007318(n)²*A059268(n)`
-/

namespace A133214.P6516840057008146928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n ^ 2 * A059268 n

end

end A133214.P6516840057008146928

namespace A133214

/-- `A007318(n)²*A059268(n)` -/
def P6516840057008146928.Spec : Prop :=
  ∀ n, P6516840057008146928.a n = A133214 n

end A133214

/-! ## A133214.P17328028104598145876

`A108086(n)²*A059268(n)`
-/

namespace A133214.P17328028104598145876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108086 n ^ 2 * A059268 n

end

end A133214.P17328028104598145876

namespace A133214

/-- `A108086(n)²*A059268(n)` -/
def P17328028104598145876.Spec : Prop :=
  ∀ n, P17328028104598145876.a n = A133214 n

end A133214

/-! ## A133214.P557783233737532669

`A117440(n)²*A059268(n)`
-/

namespace A133214.P557783233737532669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117440 n ^ 2 * A059268 n

end

end A133214.P557783233737532669

namespace A133214

/-- `A117440(n)²*A059268(n)` -/
def P557783233737532669.Spec : Prop :=
  ∀ n, P557783233737532669.a n = A133214 n

end A133214

/-! ## A133214.P782282529920316839

`A130595(n)²*A059268(n)`
-/

namespace A133214.P782282529920316839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130595 n ^ 2 * A059268 n

end

end A133214.P782282529920316839

namespace A133214

/-- `A130595(n)²*A059268(n)` -/
def P782282529920316839.Spec : Prop :=
  ∀ n, P782282529920316839.a n = A133214 n

end A133214

/-! ## A133214.P6693006201487873317

`(A014473(n)+1)*A013609(n)`
-/

namespace A133214.P6693006201487873317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A014473 n + 1) * A013609 n

end

end A133214.P6693006201487873317

namespace A133214

/-- `(A014473(n)+1)*A013609(n)` -/
def P6693006201487873317.Spec : Prop :=
  ∀ n, P6693006201487873317.a n = A133214 n

end A133214

/-! ## A133214.P14681648552354280648

`A013609(n)/2*A028326(n)`
-/

namespace A133214.P14681648552354280648
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A013609 n : ℚ) / 2 * (A028326 n : ℚ)

end

end A133214.P14681648552354280648

namespace A133214

/-- `A013609(n)/2*A028326(n)` -/
def P14681648552354280648.Spec : Prop :=
  ∀ n, P14681648552354280648.a n = (A133214 n : ℚ)

end A133214

/-! ## A133214.P2807435501684879722

`Δ[A102363(n)]²*A059268(n)`
-/

namespace A133214.P2807435501684879722
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102363 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 2 * A059268 n

end

end A133214.P2807435501684879722

namespace A133214

/-- `Δ[A102363(n)]²*A059268(n)` -/
def P2807435501684879722.Spec : Prop :=
  ∀ n, P2807435501684879722.a n = A133214 n

end A133214

/-! ## A133214.P12341790605306188632

`(A014473(n)+1)²*A059268(n)`
-/

namespace A133214.P12341790605306188632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A014473 n + 1) ^ 2 * A059268 n

end

end A133214.P12341790605306188632

namespace A133214

/-- `(A014473(n)+1)²*A059268(n)` -/
def P12341790605306188632.Spec : Prop :=
  ∀ n, P12341790605306188632.a n = A133214 n

end A133214

/-! ## A133214.P5839235388959422144

`(A028326(n)/2)²*A059268(n)`
-/

namespace A133214.P5839235388959422144
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A028326 n : ℚ) / 2) ^ 2 * (A059268 n : ℚ)

end

end A133214.P5839235388959422144

namespace A133214

/-- `(A028326(n)/2)²*A059268(n)` -/
def P5839235388959422144.Spec : Prop :=
  ∀ n, P5839235388959422144.a n = (A133214 n : ℚ)

end A133214

/-! ## A133214.P5168873363872784986

`ceil(A109128(n)/2)*A013609(n)`
-/

namespace A133214.P5168873363872784986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A109128 n : ℚ) / 2⌉ * A013609 n

end

end A133214.P5168873363872784986

namespace A133214

/-- `ceil(A109128(n)/2)*A013609(n)` -/
def P5168873363872784986.Spec : Prop :=
  ∀ n, P5168873363872784986.a n = A133214 n

end A133214

/-! ## A133214.P1086236625335372664

`A117919(n+1)*A135837(n+1)`
-/

namespace A133214.P1086236625335372664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117919 (n + 1) * A135837 (n + 1)

end

end A133214.P1086236625335372664

namespace A133214

/-- `A117919(n+1)*A135837(n+1)` -/
def P1086236625335372664.Spec : Prop :=
  ∀ n, P1086236625335372664.a n = A133214 n

end A133214

/-! ## A133214.P3810629778998683452

`(A014473(n)+1)²*2^A002262(n)`
-/

namespace A133214.P3810629778998683452
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A014473 n + 1) ^ 2 : ℚ) * (2 : ℚ) ^ (A002262 n : ℤ)

end

end A133214.P3810629778998683452

namespace A133214

/-- `(A014473(n)+1)²*2^A002262(n)` -/
def P3810629778998683452.Spec : Prop :=
  ∀ n, P3810629778998683452.a n = (A133214 n : ℚ)

end A133214

/-! ## A133214.P827604076848234816

`A007318(n)²*A000079(A002262(n))`
-/

namespace A133214.P827604076848234816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n ^ 2 * A000079 (A002262 n).toNat

end

end A133214.P827604076848234816

namespace A133214

/-- `A007318(n)²*A000079(A002262(n))` -/
def P827604076848234816.Spec : Prop :=
  ∀ n, P827604076848234816.a n = A133214 n

end A133214

/-! ## A133214.P17671208307553605463

`A013609(n)²/A059268(n)`
-/

namespace A133214.P17671208307553605463
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A013609 n ^ 2 : ℚ) / (A059268 n : ℚ)

end

end A133214.P17671208307553605463

namespace A133214

/-- `A013609(n)²/A059268(n)` -/
def P17671208307553605463.Spec : Prop :=
  ∀ n, P17671208307553605463.a n = (A133214 n : ℚ)

end A133214

/-! ## A133214.P11772902922690939220

`A303872(n)²/A059268(n)`
-/

namespace A133214.P11772902922690939220
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A303872 n ^ 2 : ℚ) / (A059268 n : ℚ)

end

end A133214.P11772902922690939220

namespace A133214

/-- `A303872(n)²/A059268(n)` -/
def P11772902922690939220.Spec : Prop :=
  ∀ n, P11772902922690939220.a n = (A133214 n : ℚ)

end A133214

/-!
# A133216: Integers that are simultaneously triangular (A000217) and decagonal (A001107).

The programs for A133216, the canonical program `A133216.P3224202254503711479` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A133216 has offset 1).

The definition of A133216 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A133216.P3224202254503711479

`A000217(A133218(n+1))`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A133216

/-- `A000217(A133218(n+1))` -/
def P3224202254503711479.Spec : Prop :=
  ∀ n, P3224202254503711479.a n = A133216 (n + 1)

theorem P3224202254503711479.correct : P3224202254503711479.Spec := by
  intro n
  simp only [A133216, Nat.add_sub_cancel]

end A133216

/-! ## A133216.P7777973464318215736

`A001107(A133217(n+1))`
-/

namespace A133216.P7777973464318215736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001107 (A133217 (n + 1)).toNat

end

end A133216.P7777973464318215736

namespace A133216

/-- `A001107(A133217(n+1))` -/
def P7777973464318215736.Spec : Prop :=
  ∀ n, P7777973464318215736.a n = A133216 (n + 1)

end A133216

/-! ## A133216.P3587049154227994884

`A124174(abs(or(1, -n))+n)`
-/

namespace A133216.P3587049154227994884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124174 (|Int.lor 1 (-(n : ℤ))| + (n : ℤ)).toNat

end

end A133216.P3587049154227994884

namespace A133216

/-- `A124174(abs(or(1, -n))+n)` -/
def P3587049154227994884.Spec : Prop :=
  ∀ n, P3587049154227994884.a n = A133216 (n + 1)

end A133216

/-! ## A133216.P18176096515053879951

`record[and(floor(cos(and(5, -n))), A217278(n))]`
-/

namespace A133216.P18176096515053879951
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land ⌊Real.cos (Int.land 5 (-(n : ℤ)) : ℝ)⌋ (A217278 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A133216.P18176096515053879951

namespace A133216

/-- `record[and(floor(cos(and(5, -n))), A217278(n))]` -/
def P18176096515053879951.Spec : Prop :=
  ∀ n, P18176096515053879951.a n = A133216 (n + 1)

end A133216

/-! ## A133216.P10214762134905203225

`A124174(A053438(n))`
-/

namespace A133216.P10214762134905203225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124174 (A053438 n).toNat

end

end A133216.P10214762134905203225

namespace A133216

/-- `A124174(A053438(n))` -/
def P10214762134905203225.Spec : Prop :=
  ∀ n, P10214762134905203225.a n = A133216 (n + 1)

end A133216

/-! ## A133216.P10985712086948582768

`A124174(A264120(n+1)+1)`
-/

namespace A133216.P10985712086948582768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124174 (A264120 (n + 1) + 1).toNat

end

end A133216.P10985712086948582768

namespace A133216

/-- `A124174(A264120(n+1)+1)` -/
def P10985712086948582768.Spec : Prop :=
  ∀ n, P10985712086948582768.a n = A133216 (n + 1)

end A133216

/-! ## A133216.P9094080862846483752

`record[and(A087960(n), A124174(n+1))]`
-/

namespace A133216.P9094080862846483752
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A087960 n) (A124174 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A133216.P9094080862846483752

namespace A133216

/-- `record[and(A087960(n), A124174(n+1))]` -/
def P9094080862846483752.Spec : Prop :=
  ∀ n, P9094080862846483752.a n = A133216 (n + 1)

end A133216

/-!
# A133217: Indices of decagonal numbers (A001107) that are also triangular (A000217).

The programs for A133217, the canonical program `A133217.P943638323029607201` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A133217 has offset 1).

The definition of A133217 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A133217.P943638323029607201

`34*a(n-2)-a(n-4)-12` with `a(0)=0, a(1)=1, a(2)=2, a(3)=20, a(4)=55`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A133217

/-- `34*a(n-2)-a(n-4)-12` -/
def P943638323029607201.Spec : Prop :=
  ∀ n, P943638323029607201.a n = A133217 (n + 1)

theorem P943638323029607201.correct : P943638323029607201.Spec := by
  intro n
  simp only [A133217, Nat.add_sub_cancel]

end A133217

/-! ## A133217.P18237706127471572058

`record[2-floor((sqrt(8)+3)*a(n-2))]` with `a(0)=0, a(1)=1`
-/

namespace A133217.P18237706127471572058
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  2 - ⌊(Real.sqrt (8 : ℝ) + 3) * (f1 (n - 2) : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A133217.P18237706127471572058

namespace A133217

/-- `record[2-floor((sqrt(8)+3)*a(n-2))]` -/
def P18237706127471572058.Spec : Prop :=
  ∀ n, P18237706127471572058.a n = A133217 (n + 1)

end A133217

/-! ## A133217.P175764355744432252

`A006452(n)*A116558(A004274(n))`
-/

namespace A133217.P175764355744432252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006452 n * A116558 (A004274 n).toNat

end

end A133217.P175764355744432252

namespace A133217

/-- `A006452(n)*A116558(A004274(n))` -/
def P175764355744432252.Spec : Prop :=
  ∀ n, P175764355744432252.a n = A133217 (n + 1)

end A133217

/-! ## A133217.P2928015730181654072

`A006452(n)*A135153(A053438(n))`
-/

namespace A133217.P2928015730181654072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006452 n * A135153 (A053438 n).toNat

end

end A133217.P2928015730181654072

namespace A133217

/-- `A006452(n)*A135153(A053438(n))` -/
def P2928015730181654072.Spec : Prop :=
  ∀ n, P2928015730181654072.a n = A133217 (n + 1)

end A133217

/-! ## A133217.P4792810625131527611

`A006452(n)*A116558(A264120(n+1))`
-/

namespace A133217.P4792810625131527611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006452 n * A116558 (A264120 (n + 1)).toNat

end

end A133217.P4792810625131527611

namespace A133217

/-- `A006452(n)*A116558(A264120(n+1))` -/
def P4792810625131527611.Spec : Prop :=
  ∀ n, P4792810625131527611.a n = A133217 (n + 1)

end A133217

/-! ## A133217.P15614571184584579495

`ceil(sqrt(A133216(n+1))/2)`
-/

namespace A133217.P15614571184584579495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A133216 (n + 1) : ℝ) / 2⌉

end

end A133217.P15614571184584579495

namespace A133217

/-- `ceil(sqrt(A133216(n+1))/2)` -/
def P15614571184584579495.Spec : Prop :=
  ∀ n, P15614571184584579495.a n = A133217 (n + 1)

end A133217

/-!
# A133218: Indices of triangular numbers (A000217) that are also decagonal (A001107).

The programs for A133218, the canonical program `A133218.P1600057104434425745` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A133218 has offset 1).

The definition of A133218 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A133218.P1600057104434425745

`34*a(n-2)-a(n-4)+16` with `a(0)=0, a(1)=1, a(2)=4, a(3)=55, a(4)=154`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A133218

/-- `34*a(n-2)-a(n-4)+16` -/
def P1600057104434425745.Spec : Prop :=
  ∀ n, P1600057104434425745.a n = A133218 (n + 1)

theorem P1600057104434425745.correct : P1600057104434425745.Spec := by
  intro n
  simp only [A133218, Nat.add_sub_cancel]

end A133218

/-! ## A133218.P7826830889214660728

`A216162(record[A000265(A008576(n))])`
-/

namespace A133218.P7826830889214660728
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A008576 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216162 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A133218.P7826830889214660728

namespace A133218

/-- `A216162(record[A000265(A008576(n))])` -/
def P7826830889214660728.Spec : Prop :=
  ∀ n, P7826830889214660728.a n = A133218 (n + 1)

end A133218

/-! ## A133218.P16965718177757448908

`A216134(A004275(A014601(n))-A014601(n))`
-/

namespace A133218.P16965718177757448908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216134 (A004275 (A014601 n).toNat - A014601 n).toNat

end

end A133218.P16965718177757448908

namespace A133218

/-- `A216134(A004275(A014601(n))-A014601(n))` -/
def P16965718177757448908.Spec : Prop :=
  ∀ n, P16965718177757448908.a n = A133218 (n + 1)

end A133218

/-! ## A133218.P5196688409235523921

`A216134(eq[1, A019425(A000124(n))])`
-/

namespace A133218.P5196688409235523921
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019425 (A000124 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216134 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A133218.P5196688409235523921

namespace A133218

/-- `A216134(eq[1, A019425(A000124(n))])` -/
def P5196688409235523921.Spec : Prop :=
  ∀ n, P5196688409235523921.a n = A133218 (n + 1)

end A133218

/-! ## A133218.P14086401873133641750

`record[A216134(n)/A019425(A000124(n))]`
-/

namespace A133218.P14086401873133641750
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A216134 n : ℚ) / (A019425 (A000124 n).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A133218.P14086401873133641750

namespace A133218

/-- `record[A216134(n)/A019425(A000124(n))]` -/
def P14086401873133641750.Spec : Prop :=
  ∀ n, P14086401873133641750.a n = (A133218 (n + 1) : ℚ)

end A133218

/-! ## A133218.P803443198867210633

`A216134(A264120(n+1))`
-/

namespace A133218.P803443198867210633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216134 (A264120 (n + 1)).toNat

end

end A133218.P803443198867210633

namespace A133218

/-- `A216134(A264120(n+1))` -/
def P803443198867210633.Spec : Prop :=
  ∀ n, P803443198867210633.a n = A133218 (n + 1)

end A133218

/-!
# A133221: A001147 with each term repeated.

The programs for A133221, the canonical program `A133221.P13978124199841404808` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A133221 has offset 0).

The definition of A133221 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 122 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A133221.P13978124199841404808

`∏[gcd(1-n, n%2)]`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A133221

/-- `∏[gcd(1-n, n%2)]` -/
def P13978124199841404808.Spec : Prop :=
  ∀ n, (P13978124199841404808.a n : ℤ) = A133221 n

theorem P13978124199841404808.correct : P13978124199841404808.Spec := by
  intro n
  simp only [A133221]

end A133221

/-! ## A133221.P98144808690663370

`∏[gcd(n-1, and(1, n))]`
-/

namespace A133221.P98144808690663370
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((n : ℤ) - 1) (Nat.land 1 n : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A133221.P98144808690663370

namespace A133221

/-- `∏[gcd(n-1, and(1, n))]` -/
def P98144808690663370.Spec : Prop :=
  ∀ n, (P98144808690663370.a n : ℤ) = A133221 n

end A133221

/-! ## A133221.P16538901033518331114

`∏[(3*n)%or(1, n)+1]`
-/

namespace A133221.P16538901033518331114
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n % Nat.lor 1 n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A133221.P16538901033518331114

namespace A133221

/-- `∏[(3*n)%or(1, n)+1]` -/
def P16538901033518331114.Spec : Prop :=
  ∀ n, (P16538901033518331114.a n : ℤ) = A133221 n

end A133221

/-! ## A133221.P1514620936112955189

`∏[abs(1-n)^log2(gcd(2, n))]`
-/

namespace A133221.P1514620936112955189
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (|1 - (n : ℤ)| : ℝ) ^ (Real.logb 2 (Nat.gcd 2 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A133221.P1514620936112955189

namespace A133221

/-- `∏[abs(1-n)^log2(gcd(2, n))]` -/
def P1514620936112955189.Spec : Prop :=
  ∀ n, P1514620936112955189.a n = (A133221 n : ℝ)

end A133221

/-! ## A133221.P990801293856593964

`∏[abs(lcm(2, n)+1-2*n)]`
-/

namespace A133221.P990801293856593964
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(Nat.lcm 2 n + 1 : ℤ) - (2 * n : ℤ)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A133221.P990801293856593964

namespace A133221

/-- `∏[abs(lcm(2, n)+1-2*n)]` -/
def P990801293856593964.Spec : Prop :=
  ∀ n, P990801293856593964.a n = A133221 n

end A133221

/-! ## A133221.P2157510110770248704

`∏[abs((n-1)^((n+1)%2))]`
-/

namespace A133221.P2157510110770248704
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |((n : ℤ) - 1) ^ ((n + 1) % 2)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A133221.P2157510110770248704

namespace A133221

/-- `∏[abs((n-1)^((n+1)%2))]` -/
def P2157510110770248704.Spec : Prop :=
  ∀ n, P2157510110770248704.a n = A133221 n

end A133221

/-! ## A133221.P7774240409997091754

`∏[abs(1-n)^((n-1)%2)]`
-/

namespace A133221.P7774240409997091754
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (|1 - (n : ℤ)| : ℚ) ^ (Int.tmod ((n : ℤ) - 1) 2 : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A133221.P7774240409997091754

namespace A133221

/-- `∏[abs(1-n)^((n-1)%2)]` -/
def P7774240409997091754.Spec : Prop :=
  ∀ n, P7774240409997091754.a n = (A133221 n : ℚ)

end A133221

/-! ## A133221.P9842994500106106405

`-∏[(n-1)^((n+3)%2)]`
-/

namespace A133221.P9842994500106106405
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1) ^ ((n + 3) % 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(∏ j ∈ Finset.range (n + 1), f1 j)

end

end A133221.P9842994500106106405

namespace A133221

/-- `-∏[(n-1)^((n+3)%2)]` -/
def P9842994500106106405.Spec : Prop :=
  ∀ n, P9842994500106106405.a n = A133221 n

end A133221

/-! ## A133221.P2107012957667537150

`-∏[(n-1)^and(1, n+1)]`
-/

namespace A133221.P2107012957667537150
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1) ^ Nat.land 1 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(∏ j ∈ Finset.range (n + 1), f1 j)

end

end A133221.P2107012957667537150

namespace A133221

/-- `-∏[(n-1)^and(1, n+1)]` -/
def P2107012957667537150.Spec : Prop :=
  ∀ n, P2107012957667537150.a n = A133221 n

end A133221

/-! ## A133221.P254897538379946853

`∏[abs(n*and(1, n)+1-n)]`
-/

namespace A133221.P254897538379946853
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n * Nat.land 1 n + 1 : ℤ) - (n : ℤ)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A133221.P254897538379946853

namespace A133221

/-- `∏[abs(n*and(1, n)+1-n)]` -/
def P254897538379946853.Spec : Prop :=
  ∀ n, P254897538379946853.a n = A133221 n

end A133221

/-! ## A133221.P12607217651107835461

`or(1, n-2)*a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A133221.P12607217651107835461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  Int.lor 1 ((n : ℤ) - 2) * a (n - 2)

end

end A133221.P12607217651107835461

namespace A133221

/-- `or(1, n-2)*a(n-2)` -/
def P12607217651107835461.Spec : Prop :=
  ∀ n, P12607217651107835461.a n = A133221 n

end A133221

/-! ## A133221.P8375360594963599504

`-∏[(n-1)^and(1, n-1)²]`
-/

namespace A133221.P8375360594963599504
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1 : ℚ) ^ (Int.land 1 ((n : ℤ) - 1) ^ 2 : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  -(∏ j ∈ Finset.range (n + 1), f1 j)

end

end A133221.P8375360594963599504

namespace A133221

/-- `-∏[(n-1)^and(1, n-1)²]` -/
def P8375360594963599504.Spec : Prop :=
  ∀ n, P8375360594963599504.a n = (A133221 n : ℚ)

end A133221

/-! ## A133221.P1481714010257243201

`(n-1-and(1, n))*a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A133221.P1481714010257243201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  ((n : ℤ) - 1 - (Nat.land 1 n : ℤ)) * a (n - 2)

end

end A133221.P1481714010257243201

namespace A133221

/-- `(n-1-and(1, n))*a(n-2)` -/
def P1481714010257243201.Spec : Prop :=
  ∀ n, P1481714010257243201.a n = A133221 n

end A133221

/-! ## A133221.P4190081556702920655

`A072479(or(1, n))`
-/

namespace A133221.P4190081556702920655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072479 (Nat.lor 1 n)

end

end A133221.P4190081556702920655

namespace A133221

/-- `A072479(or(1, n))` -/
def P4190081556702920655.Spec : Prop :=
  ∀ n, P4190081556702920655.a n = A133221 n

end A133221

/-! ## A133221.P5859112001541139591

`A001147(floor(n/2))`
-/

namespace A133221.P5859112001541139591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001147 ⌊(n : ℚ) / 2⌋.toNat

end

end A133221.P5859112001541139591

namespace A133221

/-- `A001147(floor(n/2))` -/
def P5859112001541139591.Spec : Prop :=
  ∀ n, P5859112001541139591.a n = A133221 n

end A133221

/-! ## A133221.P11729828149215011977

`abs(A055634(abs(1-n)))`
-/

namespace A133221.P11729828149215011977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(A055634 |1 - (n : ℤ)|.toNat)|

end

end A133221.P11729828149215011977

namespace A133221

/-- `abs(A055634(abs(1-n)))` -/
def P11729828149215011977.Spec : Prop :=
  ∀ n, P11729828149215011977.a n = A133221 n

end A133221

/-! ## A133221.P8166930214131840979

`A055634(n-and(1, n))`
-/

namespace A133221.P8166930214131840979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055634 (n - Nat.land 1 n)

end

end A133221.P8166930214131840979

namespace A133221

/-- `A055634(n-and(1, n))` -/
def P8166930214131840979.Spec : Prop :=
  ∀ n, P8166930214131840979.a n = A133221 n

end A133221

/-! ## A133221.P13341619983962518430

`A123023(n-and(1, n))`
-/

namespace A133221.P13341619983962518430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123023 (n - Nat.land 1 n)

end

end A133221.P13341619983962518430

namespace A133221

/-- `A123023(n-and(1, n))` -/
def P13341619983962518430.Spec : Prop :=
  ∀ n, P13341619983962518430.a n = A133221 n

end A133221

/-! ## A133221.P14333016269239527031

`abs(Δ[A123022(n+2)])`
-/

namespace A133221.P14333016269239527031
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123022 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A133221.P14333016269239527031

namespace A133221

/-- `abs(Δ[A123022(n+2)])` -/
def P14333016269239527031.Spec : Prop :=
  ∀ n, P14333016269239527031.a n = A133221 n

end A133221

/-!
# A133222: Row sums of triangle in A133644.

The programs for A133222, there is no canonical definition to state claims against.
-/

/-! ## A133222.P15580680925463388846

`A030928(n+1)-A257297(A087447(n))`
-/

namespace A133222.P15580680925463388846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030928 (n + 1) - A257297 (A087447 n).toNat

end

end A133222.P15580680925463388846

/-! ## A133222.P14645214349753581710

`or(A030870(n+1), A141906(A069217(n+1)))`
-/

namespace A133222.P14645214349753581710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A030870 (n + 1)) (A141906 (A069217 (n + 1)).toNat)

end

end A133222.P14645214349753581710

/-!
# A133223: Sum of digits of primes (A007605), sorted and with duplicates removed.

The programs for A133223, the canonical program `A133223.P8864392423628790937` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A133223 has offset 1).

The definition of A133223 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5997 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A133223.P3907739764302339804

`∑[gcd(2, char[2]+n)]`
-/

namespace A133223.P3907739764302339804
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 2 ((if ∃ j, f2 j = n then 1 else 0) + n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A133223.P3907739764302339804

namespace A133223

/-- `∑[gcd(2, char[2]+n)]` -/
def P3907739764302339804.Spec : Prop :=
  ∀ n, (P3907739764302339804.a n : ℤ) = A133223 (n + 1)

end A133223

/-! ## A133223.P17303684559236192965

`comp[3*n+4]+2`
-/

namespace A133223.P17303684559236192965
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n + 4

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 2

end

end A133223.P17303684559236192965

namespace A133223

/-- `comp[3*n+4]+2` -/
def P17303684559236192965.Spec : Prop :=
  ∀ n, (P17303684559236192965.a n : ℤ) = A133223 (n + 1)

end A133223

/-! ## A133223.P8864392423628790937

`∑[∏{p}[2-n, gcd(n, #)]]`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A133223

/-- `∑[∏{p}[2-n, gcd(n, #)]]` -/
def P8864392423628790937.Spec : Prop :=
  ∀ n, (P8864392423628790937.a n : ℤ) = A133223 (n + 1)

theorem P8864392423628790937.correct : P8864392423628790937.Spec := by
  intro n
  simp only [A133223, Nat.add_sub_cancel]

end A133223

/-! ## A133223.P1510071292114301695

`∑[abs(a(n%2))]` with `a(0)=2, a(1)=1, a(2)=1`
-/

namespace A133223.P1510071292114301695
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 1, 1] fun n f1 =>
  f1 (n % 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A133223.P1510071292114301695

namespace A133223

/-- `∑[abs(a(n%2))]` -/
def P1510071292114301695.Spec : Prop :=
  ∀ n, (P1510071292114301695.a n : ℤ) = A133223 (n + 1)

end A133223

/-! ## A133223.P4792623825788302132

`∑[char[Δ[lcm(2, n+1)]]+1]`
-/

namespace A133223.P4792623825788302132
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 2 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f3 (n + 1) : ℤ) - (f3 n : ℤ)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = (n : ℤ) then 1 else 0) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A133223.P4792623825788302132

namespace A133223

/-- `∑[char[Δ[lcm(2, n+1)]]+1]` -/
def P4792623825788302132.Spec : Prop :=
  ∀ n, (P4792623825788302132.a n : ℤ) = A133223 (n + 1)

end A133223

/-! ## A133223.P2120338372627910739

`lt[cot(dr(n+1)), acot(n-3)]`
-/

namespace A133223.P2120338372627910739
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.cot (SequenceMachineLib.digitalRoot (n + 1 : ℤ) : ℝ)

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.acot ((n : ℤ) - 3 : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A133223.P2120338372627910739

namespace A133223

/-- `lt[cot(dr(n+1)), acot(n-3)]` -/
def P2120338372627910739.Spec : Prop :=
  ∀ n, (P2120338372627910739.a n : ℤ) = A133223 (n + 1)

end A133223

/-! ## A133223.P14484509762466677710

`∑[3-a(n-1)]` with `a(0)=2, a(1)=1, a(2)=1, a(3)=1`
-/

namespace A133223.P14484509762466677710
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2, 1, 1, 1] fun n f1 =>
  3 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A133223.P14484509762466677710

namespace A133223

/-- `∑[3-a(n-1)]` -/
def P14484509762466677710.Spec : Prop :=
  ∀ n, P14484509762466677710.a n = A133223 (n + 1)

end A133223

/-! ## A133223.P9289398520738091136

`record[a(n-2)+3]` with `a(0)=2, a(1)=3, a(2)=1, a(3)=2`
-/

namespace A133223.P9289398520738091136
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 3, 1, 2] fun n f1 =>
  f1 (n - 2) + 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A133223.P9289398520738091136

namespace A133223

/-- `record[a(n-2)+3]` -/
def P9289398520738091136.Spec : Prop :=
  ∀ n, (P9289398520738091136.a n : ℤ) = A133223 (n + 1)

end A133223

/-! ## A133223.P12330347545834948935

`record[n-a(a(n-1))]` with `a(0)=2, a(1)=3, a(2)=1`
-/

namespace A133223.P12330347545834948935
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2, 3, 1] fun n f1 =>
  (n : ℤ) - f1 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A133223.P12330347545834948935

namespace A133223

/-- `record[n-a(a(n-1))]` -/
def P12330347545834948935.Spec : Prop :=
  ∀ n, P12330347545834948935.a n = A133223 (n + 1)

end A133223

/-! ## A133223.P16111428810571619580

`record[abs((2*n)%3-(n-2))]`
-/

namespace A133223.P16111428810571619580
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |((2 * n % 3 : ℕ) : ℤ) - ((n : ℤ) - 2)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A133223.P16111428810571619580

namespace A133223

/-- `record[abs((2*n)%3-(n-2))]` -/
def P16111428810571619580.Spec : Prop :=
  ∀ n, P16111428810571619580.a n = A133223 (n + 1)

end A133223

/-! ## A133223.P6004289985300346217

`lt[(n-2)^((n+2)%3), n]`
-/

namespace A133223.P6004289985300346217
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 2) ^ ((n + 2) % 3)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A133223.P6004289985300346217

namespace A133223

/-- `lt[(n-2)^((n+2)%3), n]` -/
def P6004289985300346217.Spec : Prop :=
  ∀ n, (P6004289985300346217.a n : ℤ) = A133223 (n + 1)

end A133223

/-! ## A133223.P16686865544348171861

`∑[(2%xor(n-2, n-3))!]`
-/

namespace A133223.P16686865544348171861
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (Int.tmod 2 (Int.xor ((n : ℤ) - 2) ((n : ℤ) - 3))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A133223.P16686865544348171861

namespace A133223

/-- `∑[(2%xor(n-2, n-3))!]` -/
def P16686865544348171861.Spec : Prop :=
  ∀ n, (P16686865544348171861.a n : ℤ) = A133223 (n + 1)

end A133223

/-! ## A133223.P10594098300293298721

`∑[2/a((n+1)%2)]` with `a(0)=2, a(1)=1, a(2)=1`
-/

namespace A133223.P10594098300293298721
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [2, 1, 1] fun n f1 =>
  2 / f1 ((n + 1) % 2)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A133223.P10594098300293298721

namespace A133223

/-- `∑[2/a((n+1)%2)]` -/
def P10594098300293298721.Spec : Prop :=
  ∀ n, P10594098300293298721.a n = (A133223 (n + 1) : ℚ)

end A133223

/-! ## A133223.P18290855945703396957

`round(a(n-1)/3+n+1)` with `a(0)=2`
-/

namespace A133223.P18290855945703396957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  SequenceMachineLib.roundAway ((a (n - 1) : ℚ) / 3 + (n + 1 : ℚ))

end

end A133223.P18290855945703396957

namespace A133223

/-- `round(a(n-1)/3+n+1)` -/
def P18290855945703396957.Spec : Prop :=
  ∀ n, P18290855945703396957.a n = A133223 (n + 1)

end A133223

/-! ## A133223.P6664355339146359126

`record[(n-1)/gcd(3, 1-n)+3]`
-/

namespace A133223.P6664355339146359126
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1 : ℚ) / (Int.gcd 3 (1 - (n : ℤ)) : ℚ) + 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A133223.P6664355339146359126

namespace A133223

/-- `record[(n-1)/gcd(3, 1-n)+3]` -/
def P6664355339146359126.Spec : Prop :=
  ∀ n, P6664355339146359126.a n = (A133223 (n + 1) : ℚ)

end A133223

/-! ## A133223.P12334215823274920396

`floor(C(n, 2)/(n+1)+n+2)`
-/

namespace A133223.P12334215823274920396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.choose n 2 : ℚ) / (n + 1 : ℚ) + (n + 2 : ℚ)⌋

end

end A133223.P12334215823274920396

namespace A133223

/-- `floor(C(n, 2)/(n+1)+n+2)` -/
def P12334215823274920396.Spec : Prop :=
  ∀ n, P12334215823274920396.a n = A133223 (n + 1)

end A133223

/-! ## A133223.P2182140967845053496

`record[n+3-n^val(n+2, 3)]`
-/

namespace A133223.P2182140967845053496
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 3 : ℤ) - (n ^ SequenceMachineLib.valuation (n + 2) 3 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A133223.P2182140967845053496

namespace A133223

/-- `record[n+3-n^val(n+2, 3)]` -/
def P2182140967845053496.Spec : Prop :=
  ∀ n, P2182140967845053496.a n = A133223 (n + 1)

end A133223

/-! ## A133223.P16347814139072230227

`record[(n+2)/n^val(n+2, 3)]`
-/

namespace A133223.P16347814139072230227
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℚ) / (n ^ SequenceMachineLib.valuation (n + 2) 3 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A133223.P16347814139072230227

namespace A133223

/-- `record[(n+2)/n^val(n+2, 3)]` -/
def P16347814139072230227.Spec : Prop :=
  ∀ n, P16347814139072230227.a n = (A133223 (n + 1) : ℚ)

end A133223

/-! ## A133223.P11361726686595058812

`lt[(2-n)²+3, lcm(n, n+3)]`
-/

namespace A133223.P11361726686595058812
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - (n : ℤ)) ^ 2 + 3

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm n (n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A133223.P11361726686595058812

namespace A133223

/-- `lt[(2-n)²+3, lcm(n, n+3)]` -/
def P11361726686595058812.Spec : Prop :=
  ∀ n, (P11361726686595058812.a n : ℤ) = A133223 (n + 1)

end A133223

/-!
# A133224: Let P(A) be the power set of an n-element set A and let B be the Cartesian product of P(A) with itself. Remove (y,x) from B when (x,y) is in B and x <> y and let R35 denote the reduced set B. Then a(n) = the sum of the sizes of the union of x and y for every (x,y) in R35.

The programs for A133224, the canonical program `A133224.P11732040956743438889` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A133224 has offset 0).

The definition of A133224 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A133224.P11732040956743438889

`n*(2^(n-2)+3*2^(2*n-3))`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A133224

/-- `n*(2^(n-2)+3*2^(2*n-3))` -/
def P11732040956743438889.Spec : Prop :=
  ∀ n, P11732040956743438889.a n = (A133224 n : ℚ)

end A133224

/-! ## A133224.P13775941173177238947

`A082134(n)+A002697(n)`
-/

namespace A133224.P13775941173177238947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082134 n + A002697 n

end

end A133224.P13775941173177238947

namespace A133224

/-- `A082134(n)+A002697(n)` -/
def P13775941173177238947.Spec : Prop :=
  ∀ n, P13775941173177238947.a n = A133224 n

end A133224

/-! ## A133224.P1284377697850370612

`A082134(n)+record[A235789(n)]`
-/

namespace A133224.P1284377697850370612
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235789 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082134 n + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A133224.P1284377697850370612

namespace A133224

/-- `A082134(n)+record[A235789(n)]` -/
def P1284377697850370612.Spec : Prop :=
  ∀ n, P1284377697850370612.a n = A133224 n

end A133224

/-! ## A133224.P8607082615692106251

`A082134(n)+A049610(2*n)`
-/

namespace A133224.P8607082615692106251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082134 n + A049610 (2 * n)

end

end A133224.P8607082615692106251

namespace A133224

/-- `A082134(n)+A049610(2*n)` -/
def P8607082615692106251.Spec : Prop :=
  ∀ n, P8607082615692106251.a n = A133224 n

end A133224

/-! ## A133224.P3030140875545707738

`A308700(n)+2*A082134(n)`
-/

namespace A133224.P3030140875545707738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308700 n + 2 * A082134 n

end

end A133224.P3030140875545707738

namespace A133224

/-- `A308700(n)+2*A082134(n)` -/
def P3030140875545707738.Spec : Prop :=
  ∀ n, P3030140875545707738.a n = A133224 n

end A133224

/-! ## A133224.P5188975167783235006

`A082134(n)-A168150(2*n)`
-/

namespace A133224.P5188975167783235006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082134 n - A168150 (2 * n)

end

end A133224.P5188975167783235006

namespace A133224

/-- `A082134(n)-A168150(2*n)` -/
def P5188975167783235006.Spec : Prop :=
  ∀ n, P5188975167783235006.a n = A133224 n

end A133224

/-! ## A133224.P3208599089299361520

`A082134(n)+record[-A168150(n)]`
-/

namespace A133224.P3208599089299361520
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A168150 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082134 n + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A133224.P3208599089299361520

namespace A133224

/-- `A082134(n)+record[-A168150(n)]` -/
def P3208599089299361520.Spec : Prop :=
  ∀ n, P3208599089299361520.a n = A133224 n

end A133224

/-! ## A133224.P4118031387796563230

`A002697(n)+A002697(n)-A308700(n)`
-/

namespace A133224.P4118031387796563230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002697 n + (A002697 n - A308700 n)

end

end A133224.P4118031387796563230

namespace A133224

/-- `A002697(n)+A002697(n)-A308700(n)` -/
def P4118031387796563230.Spec : Prop :=
  ∀ n, P4118031387796563230.a n = A133224 n

end A133224

/-! ## A133224.P12766164923467596739

`n*A093356(n+1)/4`
-/

namespace A133224.P12766164923467596739
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) * A093356 (n + 1) : ℚ) / 4

end

end A133224.P12766164923467596739

namespace A133224

/-- `n*A093356(n+1)/4` -/
def P12766164923467596739.Spec : Prop :=
  ∀ n, P12766164923467596739.a n = (A133224 n : ℚ)

end A133224

/-! ## A133224.P10289876301365846855

`A002699(n)-A308700(n)`
-/

namespace A133224.P10289876301365846855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002699 n - A308700 n

end

end A133224.P10289876301365846855

namespace A133224

/-- `A002699(n)-A308700(n)` -/
def P10289876301365846855.Spec : Prop :=
  ∀ n, P10289876301365846855.a n = A133224 n

end A133224

/-! ## A133224.P9005003349062035710

`2*A002697(n)-A308700(n)`
-/

namespace A133224.P9005003349062035710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A002697 n - A308700 n

end

end A133224.P9005003349062035710

namespace A133224

/-- `2*A002697(n)-A308700(n)` -/
def P9005003349062035710.Spec : Prop :=
  ∀ n, P9005003349062035710.a n = A133224 n

end A133224

/-! ## A133224.P12168920377921650139

`A057711(2*n)-A308700(n)`
-/

namespace A133224.P12168920377921650139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057711 (2 * n) - A308700 n

end

end A133224.P12168920377921650139

namespace A133224

/-- `A057711(2*n)-A308700(n)` -/
def P12168920377921650139.Spec : Prop :=
  ∀ n, P12168920377921650139.a n = A133224 n

end A133224

/-! ## A133224.P403337974395817819

`n*A007582(n)-A082134(n)`
-/

namespace A133224.P403337974395817819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A007582 n - A082134 n

end

end A133224.P403337974395817819

namespace A133224

/-- `n*A007582(n)-A082134(n)` -/
def P403337974395817819.Spec : Prop :=
  ∀ n, P403337974395817819.a n = A133224 n

end A133224

/-!
# A133225: Largest prime <= 2^((n+1)/2).

The programs for A133225, the canonical program `A133225.P6560289750139441964` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A133225 has offset 1).

The definition of A133225 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007917, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A133225.P6560289750139441964

`A007917(A017910(n+2))`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A133225

/-- `A007917(A017910(n+2))` -/
def P6560289750139441964.Spec : Prop :=
  ∀ n, P6560289750139441964.a n = A133225 (n + 1)

theorem P6560289750139441964.correct : P6560289750139441964.Spec := by
  intro n
  simp only [A133225, Nat.add_sub_cancel]

end A133225

/-! ## A133225.P16394293767975947491

`A341339(A055998(n)+6)^(1/2)`
-/

namespace A133225.P16394293767975947491
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A341339 (A055998 n + 6).toNat : ℝ) ^ ((1 : ℚ) / 2 : ℝ)

end

end A133225.P16394293767975947491

namespace A133225

/-- `A341339(A055998(n)+6)^(1/2)` -/
def P16394293767975947491.Spec : Prop :=
  ∀ n, P16394293767975947491.a n = (A133225 (n + 1) : ℝ)

end A133225

/-! ## A133225.P12717384769044636668

`A341339(A167614(n+1))^sqrt(1/4)`
-/

namespace A133225.P12717384769044636668
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A341339 (A167614 (n + 1)).toNat : ℝ) ^ (Real.sqrt ((1 : ℚ) / 4 : ℝ))

end

end A133225.P12717384769044636668

namespace A133225

/-- `A341339(A167614(n+1))^sqrt(1/4)` -/
def P12717384769044636668.Spec : Prop :=
  ∀ n, P12717384769044636668.a n = (A133225 (n + 1) : ℝ)

end A133225

/-! ## A133225.P12384512584662815310

`A341339(A046691(n)+7)^(A005408(n)/A016825(n))`
-/

namespace A133225.P12384512584662815310
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A341339 (A046691 n + 7).toNat : ℝ) ^ ((A005408 n : ℚ) / (A016825 n : ℚ) : ℝ)

end

end A133225.P12384512584662815310

namespace A133225

/-- `A341339(A046691(n)+7)^(A005408(n)/A016825(n))` -/
def P12384512584662815310.Spec : Prop :=
  ∀ n, P12384512584662815310.a n = (A133225 (n + 1) : ℝ)

end A133225

/-! ## A133225.P4642118086640100541

`A000040(A060967(n+2))`
-/

namespace A133225.P4642118086640100541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A060967 (n + 2)).toNat

end

end A133225.P4642118086640100541

namespace A133225

/-- `A000040(A060967(n+2))` -/
def P4642118086640100541.Spec : Prop :=
  ∀ n, P4642118086640100541.a n = A133225 (n + 1)

end A133225

/-!
# A133226: Number of possible 2 X n arrangements of black and white squares that can form two consecutive rows in an n X n crossword puzzle.

The programs for A133226, there is no canonical definition to state claims against.
-/

/-! ## A133226.P14660075567182244155

`A005842(A005837((n+1)²))`
-/

namespace A133226.P14660075567182244155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005842 (A005837 ((n + 1) ^ 2)).toNat

end

end A133226.P14660075567182244155

/-!
# A133228: Number of primes < square root of n!.

The programs for A133228, there is no canonical definition to state claims against.
-/

/-! ## A133228.P11695714849551801134

`A000720(floor(sqrt((n+1)!)))`
-/

namespace A133228.P11695714849551801134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (Nat.sqrt (Nat.factorial (n + 1)))

end

end A133228.P11695714849551801134

/-! ## A133228.P9191912358922445413

`A000720(floor(∏[sqrt(n+1)]))`
-/

namespace A133228.P9191912358922445413
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (n + 1 : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 ⌊∏ j ∈ Finset.range (n + 1), f1 j⌋.toNat

end

end A133228.P9191912358922445413

/-! ## A133228.P14193631347831280919

`A000720(A055226(n+1))%A000142(n)`
-/

namespace A133228.P14193631347831280919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000720 (A055226 (n + 1)).toNat) (A000142 n)

end

end A133228.P14193631347831280919

/-! ## A133228.P4470919852883244308

`A000720(A055226(n+1))+A000007(3*(n+1))`
-/

namespace A133228.P4470919852883244308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A055226 (n + 1)).toNat + A000007 (3 * (n + 1))

end

end A133228.P4470919852883244308

/-! ## A133228.P10641018136006950591

`A230980(floor(sqrt((n+1)!)))`
-/

namespace A133228.P10641018136006950591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230980 (Nat.sqrt (Nat.factorial (n + 1)))

end

end A133228.P10641018136006950591

/-!
# A133231: Number of distinct numbers that are contained in the length n+1 prefix of the binary Champernowne word.

The programs for A133231, there is no canonical definition to state claims against.
-/

/-! ## A133231.P15167484372318924100

`∑[A006530(A096533(n+3)!)]`
-/

namespace A133231.P15167484372318924100
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (Nat.factorial (A096533 (n + 3)).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A133231.P15167484372318924100

/-! ## A133231.P2092042403906530709

`∑[A006530(∑[A336111(n+1)]!)]`
-/

namespace A133231.P2092042403906530709
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336111 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (Nat.factorial (∑ j ∈ Finset.range (n + 1), f2 j).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A133231.P2092042403906530709

/-! ## A133231.P13606721130565263591

`∑[A053585(A194813(n+1)!)]`
-/

namespace A133231.P13606721130565263591
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053585 (Nat.factorial (A194813 (n + 1)).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A133231.P13606721130565263591

/-! ## A133231.P14925456458503436527

`∑[A006530(∏[A082854(n)])]`
-/

namespace A133231.P14925456458503436527
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082854 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (∏ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A133231.P14925456458503436527

/-! ## A133231.P1929469323151811951

`∑[A260311(A270613(n+1)+A261293(n))]`
-/

namespace A133231.P1929469323151811951
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260311 (A270613 (n + 1) + A261293 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A133231.P1929469323151811951

/-!
# A133232: Triangle T(n,k) read by rows with a minimum number of prime powers A100994 for which the least common multiple of T(n,1),..,T(n,n) is A003418(n).

The programs for A133232, there is no canonical definition to state claims against.
-/

/-! ## A133232.P17883449995213807925

`A133233(comp[∑[n]])`
-/

namespace A133232.P17883449995213807925
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133233 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A133232.P17883449995213807925

/-! ## A133232.P2298077908147842015

`A133233(A014132(n+1))%35`
-/

namespace A133232.P2298077908147842015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A133233 (A014132 (n + 1)).toNat) 35

end

end A133232.P2298077908147842015

/-! ## A133232.P16821421430948071525

`lcm(A033999(n), A133233(A014132(n+1)))`
-/

namespace A133232.P16821421430948071525
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A133233 (A014132 (n + 1)).toNat)

end

end A133232.P16821421430948071525

/-! ## A133232.P293738376640788257

`or(A000007(n), A133233(A014132(n+1)))`
-/

namespace A133232.P293738376640788257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A133233 (A014132 (n + 1)).toNat)

end

end A133232.P293738376640788257

/-! ## A133232.P4267483755390529898

`A133233(A014132(n+1))+A000007(n+1)`
-/

namespace A133232.P4267483755390529898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133233 (A014132 (n + 1)).toNat + A000007 (n + 1)

end

end A133232.P4267483755390529898

/-! ## A133232.P16293485610564202704

`gcd(A002182(n+1), A133233(A014132(n+1)))`
-/

namespace A133232.P16293485610564202704
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002182 (n + 1)) (A133233 (A014132 (n + 1)).toNat)

end

end A133232.P16293485610564202704

/-! ## A133232.P12529725462917677402

`A133233(A014132(n+1))+A036597(A001842(n))`
-/

namespace A133232.P12529725462917677402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133233 (A014132 (n + 1)).toNat + A036597 (A001842 n).toNat

end

end A133232.P12529725462917677402

/-! ## A133232.P6359451423869031512

`A001826(A001826(n+1))*A133233(A014132(n+1))`
-/

namespace A133232.P6359451423869031512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001826 (A001826 (n + 1)).toNat * A133233 (A014132 (n + 1)).toNat

end

end A133232.P6359451423869031512

/-! ## A133232.P791340844192510263

`A047996(∑[n])*A133233(A014132(n+1))`
-/

namespace A133232.P791340844192510263
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047996 (∑ j ∈ Finset.range (n + 1), f1 j) * A133233 (A014132 (n + 1)).toNat

end

end A133232.P791340844192510263

/-! ## A133232.P1119151411504743728

`A102057(A134869(n+1))*A133233(A014132(n+1))`
-/

namespace A133232.P1119151411504743728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102057 (A134869 (n + 1)).toNat * A133233 (A014132 (n + 1)).toNat

end

end A133232.P1119151411504743728

/-!
# A133233: Triangle A133232 read by rows with an additional column T(n,0)=1 added to the left.

The programs for A133233, there is no canonical definition to state claims against.
-/

/-! ## A133233.P9152323918122779115

`A133232(1-A123578(n)+n)`
-/

namespace A133233.P9152323918122779115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133232 (1 - A123578 n + (n : ℤ)).toNat

end

end A133233.P9152323918122779115

/-! ## A133233.P13214865664921377412

`A133232(1-(A123578(n)-n))`
-/

namespace A133233.P13214865664921377412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133232 (1 - (A123578 n - (n : ℤ))).toNat

end

end A133233.P13214865664921377412

/-! ## A133233.P2178005874155884296

`A139553(A292564(A292564(n)))`
-/

namespace A133233.P2178005874155884296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139553 (A292564 (A292564 n).toNat).toNat

end

end A133233.P2178005874155884296

/-! ## A133233.P17956347412030322200

`A133232(A083920(n)+A010054(n))`
-/

namespace A133233.P17956347412030322200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133232 (A083920 n + A010054 n).toNat

end

end A133233.P17956347412030322200

/-! ## A133233.P15010439875838964341

`A133232(A083920(n)+Δ[A123578(n)])`
-/

namespace A133233.P15010439875838964341
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123578 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133232 (A083920 n + (f1 (n + 1) - f1 n)).toNat

end

end A133233.P15010439875838964341

/-! ## A133233.P14411557727558959349

`A133232(Δ[A002378(n)]-A080036(n))`
-/

namespace A133233.P14411557727558959349
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002378 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133232 (f1 (n + 1) - f1 n - A080036 n).toNat

end

end A133233.P14411557727558959349

/-!
# A133234: a(n) is least semiprime (not already in list) such that no 3-term subset forms an arithmetic progression.

The programs for A133234, there is no canonical definition to state claims against.
-/

/-! ## A133234.P7315344693273935899

`A129336(lt[A129355(n), A129341(n+2)])`
-/

namespace A133234.P7315344693273935899
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129355 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129341 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129336 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A133234.P7315344693273935899

/-! ## A133234.P13940144539232946285

`eq[A361948(n+4)+1, ∑{e}[n, #]]`
-/

namespace A133234.P13940144539232946285
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361948 (n + 4) + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n), Nat.factorization (f3 n) p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℤ)) n

end

end A133234.P13940144539232946285

/-! ## A133234.P16471727050927008621

`record[A189482(n+1)-A056613(n+1)]`
-/

namespace A133234.P16471727050927008621
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189482 (n + 1) - A056613 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A133234.P16471727050927008621

/-! ## A133234.P5338109047399990443

`A178378(n+1)+A020944(A139514(n))`
-/

namespace A133234.P5338109047399990443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178378 (n + 1) + A020944 (A139514 n).toNat

end

end A133234.P5338109047399990443

/-!
# A133242: Indices n such that A134204(n) < n.

The programs for A133242, there is no canonical definition to state claims against.
-/

/-! ## A133242.P14535227998225721975

`lt[A134204(n), n]`
-/

namespace A133242.P14535227998225721975
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134204 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A133242.P14535227998225721975

/-!
# A133243: Values of A134204(n) for n in A133242.

The programs for A133243, there is no canonical definition to state claims against.
-/

/-! ## A133243.P10128484873764688431

`A134204(A133242(n+1))`
-/

namespace A133243.P10128484873764688431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134204 (A133242 (n + 1)).toNat

end

end A133243.P10128484873764688431

/-! ## A133243.P1019652593056649144

`A134204(lt[A134204(n), n])`
-/

namespace A133243.P1019652593056649144
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134204 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134204 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A133243.P1019652593056649144

/-!
# A133244: Records in A134204.

The programs for A133244, there is no canonical definition to state claims against.
-/

/-! ## A133244.P7979692628351324458

`record[A134204(n)]`
-/

namespace A133244.P7979692628351324458
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134204 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A133244.P7979692628351324458

/-! ## A133244.P10627549586684920548

`A134204(A133245(n+1))`
-/

namespace A133244.P10627549586684920548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134204 (A133245 (n + 1)).toNat

end

end A133244.P10627549586684920548

/-! ## A133244.P1499466501049742716

`record[A134205(n)-a(n-1)]` with `a(0)=2`
-/

namespace A133244.P1499466501049742716
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f1 =>
  A134205 n - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A133244.P1499466501049742716

/-! ## A133244.P9797216660251654179

`p?[∑[A036033(A172119(n+2))]]`
-/

namespace A133244.P9797216660251654179
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036033 (A172119 (n + 2)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A133244.P9797216660251654179

/-! ## A133244.P17910522301249599647

`p?[∑[A036033(A172119(n))]-2]`
-/

namespace A133244.P17910522301249599647
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036033 (A172119 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A133244.P17910522301249599647

/-!
# A133246: Odd numbers n with property that no odd Fibonacci number is divisible by n.

The programs for A133246, there is no canonical definition to state claims against.
-/

/-! ## A133246.P4043267352157020447

`∩[2*n+1, A367420(n+1)]`
-/

namespace A133246.P4043267352157020447
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367420 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A133246.P4043267352157020447

/-! ## A133246.P14353281607574807734

`eq[1, xor((-1)^n, A001175(n+1))%3]+1`
-/

namespace A133246.P14353281607574807734
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.xor ((-1) ^ n) (A001175 (n + 1))) 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A133246.P14353281607574807734

/-! ## A133246.P11883271626772697766

`filter[A367420(n+1), A000035(#)]`
-/

namespace A133246.P11883271626772697766
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367420 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A000035 (f1 j).toNat = 1) n)

end

end A133246.P11883271626772697766

/-! ## A133246.P2932232746877482424

`filter[A367420(n+1), A266070(#)]`
-/

namespace A133246.P2932232746877482424
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367420 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A266070 (f1 j).toNat = 1) n)

end

end A133246.P2932232746877482424

/-! ## A133246.P3543341075606938028

`filter[A367420(n+1), A266611(#)]`
-/

namespace A133246.P3543341075606938028
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367420 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A266611 (f1 j).toNat = 1) n)

end

end A133246.P3543341075606938028

/-! ## A133246.P2574329482558947723

`filter[A367420(n+1), A266719(#)]`
-/

namespace A133246.P2574329482558947723
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367420 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A266719 (f1 j).toNat = 1) n)

end

end A133246.P2574329482558947723

/-! ## A133246.P1272117057318815567

`filter[A367420(n+1), A272664(#)]`
-/

namespace A133246.P1272117057318815567
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367420 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A272664 (f1 j).toNat = 1) n)

end

end A133246.P1272117057318815567

/-! ## A133246.P13010163981712800021

`filter[A367420(n+1), A296066(#)]`
-/

namespace A133246.P13010163981712800021
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367420 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A296066 (f1 j).toNat = 1) n)

end

end A133246.P13010163981712800021

/-! ## A133246.P1013366778895363210

`filter[A367420(n+1), A374134(#)]`
-/

namespace A133246.P1013366778895363210
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367420 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374134 (f1 j).toNat = 1) n)

end

end A133246.P1013366778895363210

/-! ## A133246.P12660366194229085527

`filter[A367420(n+2), A266246(#)]`
-/

namespace A133246.P12660366194229085527
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367420 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A266246 (f1 j).toNat = 1) n)

end

end A133246.P12660366194229085527

/-!
# A133247: Prime numbers p with property that no odd Fibonacci number is divisible by p.

The programs for A133247, there is no canonical definition to state claims against.
-/

/-! ## A133247.P4280252152047623802

`p?[A014963(A237517(A063534(n+1)))]`
-/

namespace A133247.P4280252152047623802
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A237517 (A063534 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A133247.P4280252152047623802

/-! ## A133247.P14587729833413735663

`p?[A237517(A063534(n+1))+A000007(n)]`
-/

namespace A133247.P14587729833413735663
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237517 (A063534 (n + 1)).toNat + A000007 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A133247.P14587729833413735663

/-! ## A133247.P10326376402436869895

`p?[A237517(A063534(n+1)%A001248(n+1))]`
-/

namespace A133247.P10326376402436869895
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237517 (Int.tmod (A063534 (n + 1)) (A001248 (n + 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A133247.P10326376402436869895

/-! ## A133247.P17038675344995413971

`p?[A237517(A063534(n+1))-A008683(2*(n+1)²)]`
-/

namespace A133247.P17038675344995413971
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237517 (A063534 (n + 1)).toNat - A008683 (2 * (n + 1) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A133247.P17038675344995413971

/-! ## A133247.P4084370927954629393

`p?[A137189(n)]`
-/

namespace A133247.P4084370927954629393
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137189 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A133247.P4084370927954629393

/-! ## A133247.P5710480838673078867

`A137189(ceil(sqrt(∑[2*n])))`
-/

namespace A133247.P5710480838673078867
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137189 ⌈Real.sqrt ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℝ)⌉.toNat

end

end A133247.P5710480838673078867

/-! ## A133247.P9753355708232132069

`A039634(A137189(n+1))`
-/

namespace A133247.P9753355708232132069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039634 (A137189 (n + 1)).toNat

end

end A133247.P9753355708232132069

/-! ## A133247.P10083509074663490954

`filter[A137189(n), A008966(#)]`
-/

namespace A133247.P10083509074663490954
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137189 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A008966 (f1 j).toNat = 1) n)

end

end A133247.P10083509074663490954

/-! ## A133247.P3928249489199739313

`filter[A137189(n), A010051(#)]`
-/

namespace A133247.P3928249489199739313
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137189 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A133247.P3928249489199739313

/-! ## A133247.P7671207368884004202

`filter[A137189(n), A011655(#)]`
-/

namespace A133247.P7671207368884004202
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137189 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A011655 (f1 j).toNat = 1) n)

end

end A133247.P7671207368884004202

/-!
# A133249: Location of ones in the binary representation of Chaitan's Omega: If[A124027(n)==0, then n.

The programs for A133249, there is no canonical definition to state claims against.
-/

/-! ## A133249.P9236309171339184832

`lt[0, A079365(n)]+1`
-/

namespace A133249.P9236309171339184832
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079365 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A133249.P9236309171339184832

/-! ## A133249.P6595420338853400383

`eq[1, A079365(abs(1-n))]`
-/

namespace A133249.P6595420338853400383
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079365 |1 - (n : ℤ)|.toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A133249.P6595420338853400383

/-! ## A133249.P17806830435384980406

`eq[1, A079365(n+2)]+3`
-/

namespace A133249.P17806830435384980406
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079365 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 3

end

end A133249.P17806830435384980406

/-! ## A133249.P10842119179259680093

`A020725(lt[0, A079365(n)])`
-/

namespace A133249.P10842119179259680093
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079365 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A133249.P10842119179259680093

/-! ## A133249.P15321009732664292680

`A020725(eq[1, A079365(n)])`
-/

namespace A133249.P15321009732664292680
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079365 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A133249.P15321009732664292680

/-!
# A133252: Partial sums of A006000.

The programs for A133252, the canonical program `A133252.P17150299281999375893` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A133252 has offset 0).

The definition of A133252 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A133252.P17150299281999375893

`(n+1)*(n+2)*(3*n²+5*n+12)/24`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A133252

/-- `(n+1)*(n+2)*(3*n²+5*n+12)/24` -/
def P17150299281999375893.Spec : Prop :=
  ∀ n, P17150299281999375893.a n = (A133252 n : ℚ)

end A133252

/-! ## A133252.P4862886084260751057

`∑[(n+1)²]+C(∑[n], 2)`
-/

namespace A133252.P4862886084260751057
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + Nat.choose (∑ j ∈ Finset.range (n + 1), f2 j) 2

end

end A133252.P4862886084260751057

namespace A133252

/-- `∑[(n+1)²]+C(∑[n], 2)` -/
def P4862886084260751057.Spec : Prop :=
  ∀ n, (P4862886084260751057.a n : ℤ) = A133252 n

end A133252

/-! ## A133252.P18159930894175246879

`∑[∑[∑[a(n-1)+3]]]` with `a(0)=1, a(1)=2`
-/

namespace A133252.P18159930894175246879
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n f3 =>
  f3 (n - 1) + 3

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A133252.P18159930894175246879

namespace A133252

/-- `∑[∑[∑[a(n-1)+3]]]` -/
def P18159930894175246879.Spec : Prop :=
  ∀ n, (P18159930894175246879.a n : ℤ) = A133252 n

end A133252

/-! ## A133252.P7151319054356632183

`∑[∑[2-∑[a(n-1)-3]]]` with `a(0)=1`
-/

namespace A133252.P7151319054356632183
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f3 =>
  f3 (n - 1) - 3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A133252.P7151319054356632183

namespace A133252

/-- `∑[∑[2-∑[a(n-1)-3]]]` -/
def P7151319054356632183.Spec : Prop :=
  ∀ n, P7151319054356632183.a n = A133252 n

end A133252

/-! ## A133252.P14354790676233048601

`∑[∑[2*n²-(C(n, 2)-1)]]`
-/

namespace A133252.P14354790676233048601
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n ^ 2 : ℤ) - ((Nat.choose n 2 : ℤ) - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A133252.P14354790676233048601

namespace A133252

/-- `∑[∑[2*n²-(C(n, 2)-1)]]` -/
def P14354790676233048601.Spec : Prop :=
  ∀ n, P14354790676233048601.a n = A133252 n

end A133252

/-! ## A133252.P16698988031025177485

`C(∑[n+1]+1, 2)-∑[∑[n]]`
-/

namespace A133252.P16698988031025177485
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j + 1) 2 : ℤ) - ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

end

end A133252.P16698988031025177485

namespace A133252

/-- `C(∑[n+1]+1, 2)-∑[∑[n]]` -/
def P16698988031025177485.Spec : Prop :=
  ∀ n, P16698988031025177485.a n = A133252 n

end A133252

/-! ## A133252.P6768460522585028967

`∑[A006000(n)]`
-/

namespace A133252.P6768460522585028967
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006000 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A133252.P6768460522585028967

namespace A133252

/-- `∑[A006000(n)]` -/
def P6768460522585028967.Spec : Prop :=
  ∀ n, P6768460522585028967.a n = A133252 n

end A133252

/-! ## A133252.P6510618489970755247

`∑[∑[A104249(n)]]`
-/

namespace A133252.P6510618489970755247
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104249 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A133252.P6510618489970755247

namespace A133252

/-- `∑[∑[A104249(n)]]` -/
def P6510618489970755247.Spec : Prop :=
  ∀ n, P6510618489970755247.a n = A133252 n

end A133252

/-! ## A133252.P7451970748185712093

`∑[A006002(n)+n+1]`
-/

namespace A133252.P7451970748185712093
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006002 n + (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A133252.P7451970748185712093

namespace A133252

/-- `∑[A006002(n)+n+1]` -/
def P7451970748185712093.Spec : Prop :=
  ∀ n, P7451970748185712093.a n = A133252 n

end A133252

/-! ## A133252.P226350328733470091

`∑[(n+1)*A000124(n)]`
-/

namespace A133252.P226350328733470091
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A000124 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A133252.P226350328733470091

namespace A133252

/-- `∑[(n+1)*A000124(n)]` -/
def P226350328733470091.Spec : Prop :=
  ∀ n, P226350328733470091.a n = A133252 n

end A133252

/-! ## A133252.P7710817395774866055

`∑[A135503(n)+(n+1)²]`
-/

namespace A133252.P7710817395774866055
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135503 n + ((n + 1) ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A133252.P7710817395774866055

namespace A133252

/-- `∑[A135503(n)+(n+1)²]` -/
def P7710817395774866055.Spec : Prop :=
  ∀ n, P7710817395774866055.a n = A133252 n

end A133252

/-! ## A133252.P6750340769246830017

`∑[n+1]²-A215862(n)`
-/

namespace A133252.P6750340769246830017
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℤ) - A215862 n

end

end A133252.P6750340769246830017

namespace A133252

/-- `∑[n+1]²-A215862(n)` -/
def P6750340769246830017.Spec : Prop :=
  ∀ n, P6750340769246830017.a n = A133252 n

end A133252

/-! ## A133252.P16368027479374158504

`A002817(n+1)-∑[∑[n]]`
-/

namespace A133252.P16368027479374158504
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002817 (n + 1) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A133252.P16368027479374158504

namespace A133252

/-- `A002817(n+1)-∑[∑[n]]` -/
def P16368027479374158504.Spec : Prop :=
  ∀ n, P16368027479374158504.a n = A133252 n

end A133252

/-! ## A133252.P4940943393157052831

`∑[A092365(n+1)/(n+1)]`
-/

namespace A133252.P4940943393157052831
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A092365 (n + 1) : ℚ) / (n + 1 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A133252.P4940943393157052831

namespace A133252

/-- `∑[A092365(n+1)/(n+1)]` -/
def P4940943393157052831.Spec : Prop :=
  ∀ n, P4940943393157052831.a n = (A133252 n : ℚ)

end A133252

/-! ## A133252.P14184944880790550660

`A050534(n+1)+∑[(n+1)²]`
-/

namespace A133252.P14184944880790550660
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050534 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A133252.P14184944880790550660

namespace A133252

/-- `A050534(n+1)+∑[(n+1)²]` -/
def P14184944880790550660.Spec : Prop :=
  ∀ n, P14184944880790550660.a n = A133252 n

end A133252

/-! ## A133252.P13367576522903306069

`A059302(n+2)+(n+1)*(n+2)`
-/

namespace A133252.P13367576522903306069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059302 (n + 2) + ((n + 1) * (n + 2) : ℤ)

end

end A133252.P13367576522903306069

namespace A133252

/-- `A059302(n+2)+(n+1)*(n+2)` -/
def P13367576522903306069.Spec : Prop :=
  ∀ n, P13367576522903306069.a n = A133252 n

end A133252

/-! ## A133252.P809411377036455783

`A090809(n)+A005894(n)`
-/

namespace A133252.P809411377036455783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090809 n + A005894 n

end

end A133252.P809411377036455783

namespace A133252

/-- `A090809(n)+A005894(n)` -/
def P809411377036455783.Spec : Prop :=
  ∀ n, P809411377036455783.a n = A133252 n

end A133252

/-! ## A133252.P18219106449488479498

`A167875(n)+A002817(n)`
-/

namespace A133252.P18219106449488479498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167875 n + A002817 n

end

end A133252.P18219106449488479498

namespace A133252

/-- `A167875(n)+A002817(n)` -/
def P18219106449488479498.Spec : Prop :=
  ∀ n, P18219106449488479498.a n = A133252 n

end A133252

/-! ## A133252.P5882699148599979819

`A290312(n)-A027480(n)`
-/

namespace A133252.P5882699148599979819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290312 n - A027480 n

end

end A133252.P5882699148599979819

namespace A133252

/-- `A290312(n)-A027480(n)` -/
def P5882699148599979819.Spec : Prop :=
  ∀ n, P5882699148599979819.a n = A133252 n

end A133252

/-! ## A133252.P12030964574879170133

`A001296(n)+A000292(n+1)`
-/

namespace A133252.P12030964574879170133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001296 n + A000292 (n + 1)

end

end A133252.P12030964574879170133

namespace A133252

/-- `A001296(n)+A000292(n+1)` -/
def P12030964574879170133.Spec : Prop :=
  ∀ n, P12030964574879170133.a n = A133252 n

end A133252

/-!
# A133254: Sums of a triangular number A000217 > 0 and a square A000290 > 0.

The programs for A133254, there is no canonical definition to state claims against.
-/

/-! ## A133254.P9481213555928468653

`lt[cosh(A000122(n)), A112603(n)]`
-/

namespace A133254.P9481213555928468653
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.cosh (A000122 n : ℝ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112603 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℝ)) n

end

end A133254.P9481213555928468653

/-! ## A133254.P402706904033851669

`lt[A010054(n)+A000122(n), A112603(n)]`
-/

namespace A133254.P402706904033851669
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n + A000122 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112603 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A133254.P402706904033851669

/-! ## A133254.P14669839544568299320

`lt[A133080(A245300(n+1)), A082660(n+1)]+1`
-/

namespace A133254.P14669839544568299320
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133080 (A245300 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082660 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A133254.P14669839544568299320

/-! ## A133254.P9730477026307913174

`lt[A200539(A263339(3*n+1)), A112603(n)]`
-/

namespace A133254.P9730477026307913174
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200539 (A263339 (3 * n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112603 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A133254.P9730477026307913174

/-! ## A133254.P931311481248644364

`lt[A245573(A245598(3*n+5)), A245611(n+5)]`
-/

namespace A133254.P931311481248644364
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245573 (A245598 (3 * n + 5)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245611 (n + 5)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A133254.P931311481248644364

/-!
# A133255: Triangle with a minimum occurrence of prime powers for which the least common multiple of the rows will give the terms in A003418.

The programs for A133255, there is no canonical definition to state claims against.
-/

/-! ## A133255.P5943342791947617420

`gcd((1-C(∑[char[∑[n]]], 2)+n)*∑[char[∑[n+1]]]!, A191426((n-C(∑[char[∑[n]]], 2))!))`
-/

namespace A133255.P5943342791947617420
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def f6 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f6 j

open Classical in
def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f5 j = n then 1 else 0

def f9 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f8 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f9 j

open Classical in
def f7 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f8 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((1 - (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 : ℤ) + (n : ℤ)) * (Nat.factorial (∑ j ∈ Finset.range (n + 1), f4 j) : ℤ)) (A191426 (Nat.factorial ((n : ℤ) - (Nat.choose (∑ j ∈ Finset.range (n + 1), f7 j) 2 : ℤ)).toNat))

end

end A133255.P5943342791947617420

/-! ## A133255.P3273652902551992433

`A140207(n)^A106594(A068045(n))`
-/

namespace A133255.P3273652902551992433
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A140207 n : ℚ) ^ (A106594 (A068045 n).toNat : ℤ)

end

end A133255.P3273652902551992433

/-! ## A133255.P16075513422783638279

`gcd(A125065(A233543(n)), A125080(n))`
-/

namespace A133255.P16075513422783638279
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A125065 (A233543 n).toNat) (A125080 n)

end

end A133255.P16075513422783638279

/-! ## A133255.P1555048856110142774

`gcd(A225475(n), A253902(A233543(n)))`
-/

namespace A133255.P1555048856110142774
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A225475 n) (A253902 (A233543 n).toNat)

end

end A133255.P1555048856110142774

/-! ## A133255.P6869833760452246345

`gcd(A004086(A192065(n)), A103323(n+1))`
-/

namespace A133255.P6869833760452246345
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A004086 (A192065 n).toNat) (A103323 (n + 1))

end

end A133255.P6869833760452246345

/-!
# A133256: a(4*n+1) = 4*n+1, a(4*n+2) = 4*n+2, a(4*n+3) = 4*n+4, a(4*n+4) = 4*n+3.

The programs for A133256, the canonical program `A133256.P2548530837229111970` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A133256 has offset 1).

The definition of A133256 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A133256.P2548530837229111970

`a(n-1)+a(n-4)-a(n-5)` with `a(0)=1, a(1)=2, a(2)=4, a(3)=3, a(4)=5`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A133256

/-- `a(n-1)+a(n-4)-a(n-5)` -/
def P2548530837229111970.Spec : Prop :=
  ∀ n, P2548530837229111970.a n = A133256 (n + 1)

theorem P2548530837229111970.correct : P2548530837229111970.Spec := by
  intro n
  simp only [A133256, Nat.add_sub_cancel]

end A133256

/-! ## A133256.P8475435367056321340

`(n%4)!%3+n`
-/

namespace A133256.P8475435367056321340
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (n % 4) % 3 + n

end

end A133256.P8475435367056321340

namespace A133256

/-- `(n%4)!%3+n` -/
def P8475435367056321340.Spec : Prop :=
  ∀ n, (P8475435367056321340.a n : ℤ) = A133256 (n + 1)

end A133256

/-! ## A133256.P13904009700205539678

`or(1, n)+∑[n]%2`
-/

namespace A133256.P13904009700205539678
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 n + (∑ j ∈ Finset.range (n + 1), f1 j) % 2

end

end A133256.P13904009700205539678

namespace A133256

/-- `or(1, n)+∑[n]%2` -/
def P13904009700205539678.Spec : Prop :=
  ∀ n, (P13904009700205539678.a n : ℤ) = A133256 (n + 1)

end A133256

/-! ## A133256.P2328442780900957403

`or(1, n)+and(1, ∑[n])`
-/

namespace A133256.P2328442780900957403
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 n + Nat.land 1 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A133256.P2328442780900957403

namespace A133256

/-- `or(1, n)+and(1, ∑[n])` -/
def P2328442780900957403.Spec : Prop :=
  ∀ n, (P2328442780900957403.a n : ℤ) = A133256 (n + 1)

end A133256

/-! ## A133256.P15803141203589016376

`xor(n, char[or(2, n)])+1`
-/

namespace A133256.P15803141203589016376
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 2 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (if ∃ j, f1 j = n then 1 else 0) + 1

end

end A133256.P15803141203589016376

namespace A133256

/-- `xor(n, char[or(2, n)])+1` -/
def P15803141203589016376.Spec : Prop :=
  ∀ n, (P15803141203589016376.a n : ℤ) = A133256 (n + 1)

end A133256

/-! ## A133256.P16283486717379082425

`-xor(n, -and(2, n)!)`
-/

namespace A133256.P16283486717379082425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.xor (n : ℤ) (-(Nat.factorial (Nat.land 2 n) : ℤ))

end

end A133256.P16283486717379082425

namespace A133256

/-- `-xor(n, -and(2, n)!)` -/
def P16283486717379082425.Spec : Prop :=
  ∀ n, P16283486717379082425.a n = A133256 (n + 1)

end A133256

/-! ## A133256.P18106485043708586441

`xor(n, and(2, n)/2)+1`
-/

namespace A133256.P18106485043708586441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (SequenceMachineLib.roundAway ((Nat.land 2 n : ℚ) / 2)) + 1

end

end A133256.P18106485043708586441

namespace A133256

/-- `xor(n, and(2, n)/2)+1` -/
def P18106485043708586441.Spec : Prop :=
  ∀ n, P18106485043708586441.a n = A133256 (n + 1)

end A133256

/-! ## A133256.P3549840036224982746

`xor(n, C(n, 2)%2)+1`
-/

namespace A133256.P3549840036224982746
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (Nat.choose n 2 % 2) + 1

end

end A133256.P3549840036224982746

namespace A133256

/-- `xor(n, C(n, 2)%2)+1` -/
def P3549840036224982746.Spec : Prop :=
  ∀ n, (P3549840036224982746.a n : ℤ) = A133256 (n + 1)

end A133256

/-! ## A133256.P11084829991827867651

`xor(n, and(1, C(n, 2)))+1`
-/

namespace A133256.P11084829991827867651
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (Nat.land 1 (Nat.choose n 2)) + 1

end

end A133256.P11084829991827867651

namespace A133256

/-- `xor(n, and(1, C(n, 2)))+1` -/
def P11084829991827867651.Spec : Prop :=
  ∀ n, (P11084829991827867651.a n : ℤ) = A133256 (n + 1)

end A133256

/-! ## A133256.P16538949211265658190

`round(sqrt((n+1)%4)+n)`
-/

namespace A133256.P16538949211265658190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (((n + 1) % 4 : ℕ) : ℝ) + (n : ℝ))

end

end A133256.P16538949211265658190

namespace A133256

/-- `round(sqrt((n+1)%4)+n)` -/
def P16538949211265658190.Spec : Prop :=
  ∀ n, P16538949211265658190.a n = A133256 (n + 1)

end A133256

/-! ## A133256.P2684848477442780979

`a(n-4)+4` with `a(0)=1, a(1)=2, a(2)=4, a(3)=3`
-/

namespace A133256.P2684848477442780979
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 4, 3] fun n a =>
  a (n - 4) + 4

end

end A133256.P2684848477442780979

namespace A133256

/-- `a(n-4)+4` -/
def P2684848477442780979.Spec : Prop :=
  ∀ n, (P2684848477442780979.a n : ℤ) = A133256 (n + 1)

end A133256

/-! ## A133256.P14337878898054963155

`∑[3-gcd(4, n+1)]-1`
-/

namespace A133256.P14337878898054963155
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - (Nat.gcd 4 (n + 1) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A133256.P14337878898054963155

namespace A133256

/-- `∑[3-gcd(4, n+1)]-1` -/
def P14337878898054963155.Spec : Prop :=
  ∀ n, P14337878898054963155.a n = A133256 (n + 1)

end A133256

/-! ## A133256.P17601901522417473571

`∑[2-(n^3)%4]-1`
-/

namespace A133256.P17601901522417473571
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - ((n ^ 3 % 4 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A133256.P17601901522417473571

namespace A133256

/-- `∑[2-(n^3)%4]-1` -/
def P17601901522417473571.Spec : Prop :=
  ∀ n, P17601901522417473571.a n = A133256 (n + 1)

end A133256

/-! ## A133256.P8733948800367841670

`ceil(and(3, n+1)/2+n)`
-/

namespace A133256.P8733948800367841670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Nat.land 3 (n + 1) : ℚ) / 2 + (n : ℚ)⌉

end

end A133256.P8733948800367841670

namespace A133256

/-- `ceil(and(3, n+1)/2+n)` -/
def P8733948800367841670.Spec : Prop :=
  ∀ n, P8733948800367841670.a n = A133256 (n + 1)

end A133256

/-! ## A133256.P7635401514829910897

`round(and(3, n+1)/2+n)`
-/

namespace A133256.P7635401514829910897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Nat.land 3 (n + 1) : ℚ) / 2 + (n : ℚ))

end

end A133256.P7635401514829910897

namespace A133256

/-- `round(and(3, n+1)/2+n)` -/
def P7635401514829910897.Spec : Prop :=
  ∀ n, P7635401514829910897.a n = A133256 (n + 1)

end A133256

/-! ## A133256.P10221650149921833644

`or(2*n, and(2, n)!)-n`
-/

namespace A133256.P10221650149921833644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lor (2 * n) (Nat.factorial (Nat.land 2 n)) : ℤ) - (n : ℤ)

end

end A133256.P10221650149921833644

namespace A133256

/-- `or(2*n, and(2, n)!)-n` -/
def P10221650149921833644.Spec : Prop :=
  ∀ n, P10221650149921833644.a n = A133256 (n + 1)

end A133256

/-! ## A133256.P14603332238987561938

`2-xor(1, -a(n-2))` with `a(0)=1, a(1)=2`
-/

namespace A133256.P14603332238987561938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  2 - Int.xor 1 (-a (n - 2))

end

end A133256.P14603332238987561938

namespace A133256

/-- `2-xor(1, -a(n-2))` -/
def P14603332238987561938.Spec : Prop :=
  ∀ n, P14603332238987561938.a n = A133256 (n + 1)

end A133256

/-! ## A133256.P1067237243399367821

`((n+3)%4+1)%3+n`
-/

namespace A133256.P1067237243399367821
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((n + 3) % 4 + 1) % 3 + n

end

end A133256.P1067237243399367821

namespace A133256

/-- `((n+3)%4+1)%3+n` -/
def P1067237243399367821.Spec : Prop :=
  ∀ n, (P1067237243399367821.a n : ℤ) = A133256 (n + 1)

end A133256

/-! ## A133256.P1493475504365489556

`n-((3*n)%4-4)%3`
-/

namespace A133256.P1493475504365489556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - Int.tmod (((3 * n % 4 : ℕ) : ℤ) - 4) 3

end

end A133256.P1493475504365489556

namespace A133256

/-- `n-((3*n)%4-4)%3` -/
def P1493475504365489556.Spec : Prop :=
  ∀ n, P1493475504365489556.a n = A133256 (n + 1)

end A133256

/-! ## A133256.P2007419029148510561

`∑[floor(a(n-4))]` with `a(0)=1, a(1)=1, a(2)=2, a(3)=-1, a(4)=2`

`floor` is left out, it is the identity on integers.
-/

namespace A133256.P2007419029148510561
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2, -1, 2] fun n f1 =>
  f1 (n - 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A133256.P2007419029148510561

namespace A133256

/-- `∑[floor(a(n-4))]` -/
def P2007419029148510561.Spec : Prop :=
  ∀ n, P2007419029148510561.a n = A133256 (n + 1)

end A133256

/-!
# A133257: The number of edges on a piece of paper that has been folded n times (see comments for more precise definition).

The programs for A133257, the canonical program `A133257.P5046321377914978527` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A133257 has offset 0).

The definition of A133257 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A133257.P5046321377914978527

`2*a(n-2)+3` with `a(0)=4, a(1)=7`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A133257

/-- `2*a(n-2)+3` -/
def P5046321377914978527.Spec : Prop :=
  ∀ n, (P5046321377914978527.a n : ℤ) = A133257 n

theorem P5046321377914978527.correct : P5046321377914978527.Spec := by
  intro n
  simp only [A133257]

end A133257

/-! ## A133257.P8408248205537124698

`∑[ogf((4+3x-4x^2)/(1-2x^2))]`
-/

namespace A133257.P8408248205537124698
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [4, 3, -4] [1, 0, -2] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A133257.P8408248205537124698

namespace A133257

/-- `∑[ogf((4+3x-4x^2)/(1-2x^2))]` -/
def P8408248205537124698.Spec : Prop :=
  ∀ n, P8408248205537124698.a n = A133257 n

end A133257

/-! ## A133257.P2521616539349964132

`ogf((4+3x-4x^2)/(1-x-2x^2+2x^3))`
-/

namespace A133257.P2521616539349964132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [4, 3, -4] [1, -1, -2, 2] n

end

end A133257.P2521616539349964132

namespace A133257

/-- `ogf((4+3x-4x^2)/(1-x-2x^2+2x^3))` -/
def P2521616539349964132.Spec : Prop :=
  ∀ n, P2521616539349964132.a n = A133257 n

end A133257

/-! ## A133257.P17052381160913680145

`∑[2*a(n-2)]` with `a(0)=4, a(1)=3, a(2)=4`
-/

namespace A133257.P17052381160913680145
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [4, 3, 4] fun n f1 =>
  2 * f1 (n - 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A133257.P17052381160913680145

namespace A133257

/-- `∑[2*a(n-2)]` -/
def P17052381160913680145.Spec : Prop :=
  ∀ n, (P17052381160913680145.a n : ℤ) = A133257 n

end A133257

/-! ## A133257.P14150730991485441209

`5-2*(1-a(n-2))` with `a(0)=4, a(1)=7`
-/

namespace A133257.P14150730991485441209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4, 7] fun n a =>
  5 - 2 * (1 - a (n - 2))

end

end A133257.P14150730991485441209

namespace A133257

/-- `5-2*(1-a(n-2))` -/
def P14150730991485441209.Spec : Prop :=
  ∀ n, P14150730991485441209.a n = A133257 n

end A133257

/-! ## A133257.P5113497587518191280

`a(n-2)/sqrt(1/4)+3` with `a(0)=4, a(1)=7`
-/

namespace A133257.P5113497587518191280
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.rec [4, 7] fun n a =>
  a (n - 2) / Real.sqrt ((1 : ℚ) / 4 : ℝ) + 3

end

end A133257.P5113497587518191280

namespace A133257

/-- `a(n-2)/sqrt(1/4)+3` -/
def P5113497587518191280.Spec : Prop :=
  ∀ n, P5113497587518191280.a n = (A133257 n : ℝ)

end A133257

/-! ## A133257.P12298117295388245209

`a(n-2)+a(n-2)+3` with `a(0)=4, a(1)=7`
-/

namespace A133257.P12298117295388245209
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [4, 7] fun n a =>
  a (n - 2) + (a (n - 2) + 3)

end

end A133257.P12298117295388245209

namespace A133257

/-- `a(n-2)+a(n-2)+3` -/
def P12298117295388245209.Spec : Prop :=
  ∀ n, (P12298117295388245209.a n : ℤ) = A133257 n

theorem P12298117295388245209.correct : P12298117295388245209.Spec := by
  intro n
  simp only [A133257, Nat.add_sub_cancel, A133257.P12298117295388245209.a, A133257.P5046321377914978527.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A133257

/-! ## A133257.P168156653972801490

`A063757(n)+3`
-/

namespace A133257.P168156653972801490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063757 n + 3

end

end A133257.P168156653972801490

namespace A133257

/-- `A063757(n)+3` -/
def P168156653972801490.Spec : Prop :=
  ∀ n, P168156653972801490.a n = A133257 n

end A133257

/-! ## A133257.P490625899440678618

`∑[A063759(n)]+3`
-/

namespace A133257.P490625899440678618
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063759 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 3

end

end A133257.P490625899440678618

namespace A133257

/-- `∑[A063759(n)]+3` -/
def P490625899440678618.Spec : Prop :=
  ∀ n, P490625899440678618.a n = A133257 n

end A133257

/-! ## A133257.P3423039147923194478

`A010737(n+1)-2`
-/

namespace A133257.P3423039147923194478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010737 (n + 1) - 2

end

end A133257.P3423039147923194478

namespace A133257

/-- `A010737(n+1)-2` -/
def P3423039147923194478.Spec : Prop :=
  ∀ n, P3423039147923194478.a n = A133257 n

end A133257

/-! ## A133257.P17208540716475768174

`A070875(n+1)-3`
-/

namespace A133257.P17208540716475768174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070875 (n + 1) - 3

end

end A133257.P17208540716475768174

namespace A133257

/-- `A070875(n+1)-3` -/
def P17208540716475768174.Spec : Prop :=
  ∀ n, P17208540716475768174.a n = A133257 n

end A133257

/-! ## A133257.P231324728987423560

`∑[A052955(n)+1]+2`
-/

namespace A133257.P231324728987423560
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052955 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 2

end

end A133257.P231324728987423560

namespace A133257

/-- `∑[A052955(n)+1]+2` -/
def P231324728987423560.Spec : Prop :=
  ∀ n, P231324728987423560.a n = A133257 n

end A133257

/-! ## A133257.P3770905999370395671

`∑[A164090(n+1)]+2`
-/

namespace A133257.P3770905999370395671
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164090 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 2

end

end A133257.P3770905999370395671

namespace A133257

/-- `∑[A164090(n+1)]+2` -/
def P3770905999370395671.Spec : Prop :=
  ∀ n, P3770905999370395671.a n = A133257 n

end A133257

/-! ## A133257.P9115654042774548105

`∑[A029744(n+2)]+2`
-/

namespace A133257.P9115654042774548105
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029744 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 2

end

end A133257.P9115654042774548105

namespace A133257

/-- `∑[A029744(n+2)]+2` -/
def P9115654042774548105.Spec : Prop :=
  ∀ n, P9115654042774548105.a n = A133257 n

end A133257

/-! ## A133257.P15938038665096515036

`A200678(2*n+3)+1`
-/

namespace A133257.P15938038665096515036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200678 (2 * n + 3) + 1

end

end A133257.P15938038665096515036

namespace A133257

/-- `A200678(2*n+3)+1` -/
def P15938038665096515036.Spec : Prop :=
  ∀ n, P15938038665096515036.a n = A133257 n

end A133257

/-! ## A133257.P11534254215488095038

`A029750(2*n+7)-3`
-/

namespace A133257.P11534254215488095038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029750 (2 * n + 7) - 3

end

end A133257.P11534254215488095038

namespace A133257

/-- `A029750(2*n+7)-3` -/
def P11534254215488095038.Spec : Prop :=
  ∀ n, P11534254215488095038.a n = A133257 n

end A133257

/-! ## A133257.P5967533276902414533

`A163978(n)+a(n-1)` with `a(0)=4`
-/

namespace A133257.P5967533276902414533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4] fun n a =>
  A163978 n + a (n - 1)

end

end A133257.P5967533276902414533

namespace A133257

/-- `A163978(n)+a(n-1)` -/
def P5967533276902414533.Spec : Prop :=
  ∀ n, P5967533276902414533.a n = A133257 n

end A133257

/-! ## A133257.P14956487994990181143

`∑[A163978(abs(1-n)+1)]`
-/

namespace A133257.P14956487994990181143
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163978 (|1 - (n : ℤ)| + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A133257.P14956487994990181143

namespace A133257

/-- `∑[A163978(abs(1-n)+1)]` -/
def P14956487994990181143.Spec : Prop :=
  ∀ n, P14956487994990181143.a n = A133257 n

end A133257

/-! ## A133257.P9958134745041906660

`∑[A209722(n+1)-2]+2`
-/

namespace A133257.P9958134745041906660
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209722 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 2

end

end A133257.P9958134745041906660

namespace A133257

/-- `∑[A209722(n+1)-2]+2` -/
def P9958134745041906660.Spec : Prop :=
  ∀ n, P9958134745041906660.a n = A133257 n

end A133257

/-! ## A133257.P9967133397165871199

`∑[A090989(n+1)/2]+2`
-/

namespace A133257.P9967133397165871199
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A090989 (n + 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 2

end

end A133257.P9967133397165871199

namespace A133257

/-- `∑[A090989(n+1)/2]+2` -/
def P9967133397165871199.Spec : Prop :=
  ∀ n, P9967133397165871199.a n = (A133257 n : ℚ)

end A133257

/-!
# A133258: Number of possible 3 X n arrangements of black and white squares that can form the middle three rows in an n X n crossword puzzle with rotational symmetry. In this sequence, n is ODD.

The programs for A133258, there is no canonical definition to state claims against.
-/

/-! ## A133258.P7481594495211376416

`A023826(A094943(n+1))-A094927(n+1)`
-/

namespace A133258.P7481594495211376416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023826 (A094943 (n + 1)).toNat - A094927 (n + 1)

end

end A133258.P7481594495211376416

/-!
# A133259: a(6n) = 6n+1, a(6n+1) = 6n+2, a(6n+2) = 6n+3, a(6n+3) = 6n+6, a(6n+4) = 6n+5, a(6n+5) = 6n+4.

The programs for A133259, the canonical program `A133259.P5869069905424610650` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A133259 has offset 0).

The definition of A133259 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A133259.P6778196410139368298

`∑[floor(exp(sin(n%6)))]-n%3`
-/

namespace A133259.P6778196410139368298
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.exp (Real.sin ((n % 6 : ℕ) : ℝ))⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - ((n % 3 : ℕ) : ℤ)

end

end A133259.P6778196410139368298

namespace A133259

/-- `∑[floor(exp(sin(n%6)))]-n%3` -/
def P6778196410139368298.Spec : Prop :=
  ∀ n, P6778196410139368298.a n = A133259 n

end A133259

/-! ## A133259.P5869069905424610650

`2*a(n-2)%3+a(n-1)-1` with `a(0)=1, a(1)=2`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A133259

/-- `2*a(n-2)%3+a(n-1)-1` -/
def P5869069905424610650.Spec : Prop :=
  ∀ n, P5869069905424610650.a n = A133259 n

theorem P5869069905424610650.correct : P5869069905424610650.Spec := by
  intro n
  simp only [A133259]

end A133259

/-! ## A133259.P17628264660601360177

`∑[3-a(n-2)-a(n-4)]` with `a(0)=1, a(1)=1, a(2)=1, a(3)=3, a(4)=-1, a(5)=-1, a(6)=3`
-/

namespace A133259.P17628264660601360177
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1, 3, -1, -1, 3] fun n f1 =>
  3 - f1 (n - 2) - f1 (n - 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A133259.P17628264660601360177

namespace A133259

/-- `∑[3-a(n-2)-a(n-4)]` -/
def P17628264660601360177.Spec : Prop :=
  ∀ n, P17628264660601360177.a n = A133259 n

end A133259

/-! ## A133259.P1661002817936976466

`n+3-2*A093718(n)`
-/

namespace A133259.P1661002817936976466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 3 : ℤ) - 2 * A093718 n

end

end A133259.P1661002817936976466

namespace A133259

/-- `n+3-2*A093718(n)` -/
def P1661002817936976466.Spec : Prop :=
  ∀ n, P1661002817936976466.a n = A133259 n

end A133259

/-! ## A133259.P3803540490127233504

`A113655(a(n-3)+3)` with `a(0)=1, a(1)=2, a(2)=3`
-/

namespace A133259.P3803540490127233504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 3] fun n a =>
  A113655 (a (n - 3) + 3).toNat

end

end A133259.P3803540490127233504

namespace A133259

/-- `A113655(a(n-3)+3)` -/
def P3803540490127233504.Spec : Prop :=
  ∀ n, P3803540490127233504.a n = A133259 n

end A133259

/-! ## A133259.P3746266533452056259

`A113655(A271830(n))`
-/

namespace A133259.P3746266533452056259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113655 (A271830 n).toNat

end

end A133259.P3746266533452056259

namespace A133259

/-- `A113655(A271830(n))` -/
def P3746266533452056259.Spec : Prop :=
  ∀ n, P3746266533452056259.a n = A133259 n

end A133259

/-! ## A133259.P3140495038072342739

`A287393(n)+A063942(n)`
-/

namespace A133259.P3140495038072342739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287393 n + A063942 n

end

end A133259.P3140495038072342739

namespace A133259

/-- `A287393(n)+A063942(n)` -/
def P3140495038072342739.Spec : Prop :=
  ∀ n, P3140495038072342739.a n = A133259 n

end A133259

/-! ## A133259.P13401874087825900280

`A077859(n)-A010872(n)`
-/

namespace A133259.P13401874087825900280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077859 n - A010872 n

end

end A133259.P13401874087825900280

namespace A133259

/-- `A077859(n)-A010872(n)` -/
def P13401874087825900280.Spec : Prop :=
  ∀ n, P13401874087825900280.a n = A133259 n

end A133259

/-! ## A133259.P9765434266619832334

`A330396(A271830(n)-1)+1`
-/

namespace A133259.P9765434266619832334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330396 (A271830 n - 1).toNat + 1

end

end A133259.P9765434266619832334

namespace A133259

/-- `A330396(A271830(n)-1)+1` -/
def P9765434266619832334.Spec : Prop :=
  ∀ n, P9765434266619832334.a n = A133259 n

end A133259

/-! ## A133259.P7192096506439202057

`A010693(n)*A242112(n)-A093718(n)`
-/

namespace A133259.P7192096506439202057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010693 n * A242112 n - A093718 n

end

end A133259.P7192096506439202057

namespace A133259

/-- `A010693(n)*A242112(n)-A093718(n)` -/
def P7192096506439202057.Spec : Prop :=
  ∀ n, P7192096506439202057.a n = A133259 n

end A133259

/-! ## A133259.P563526751882671623

`A271830(A330396(n))`
-/

namespace A133259.P563526751882671623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271830 (A330396 n).toNat

end

end A133259.P563526751882671623

namespace A133259

/-- `A271830(A330396(n))` -/
def P563526751882671623.Spec : Prop :=
  ∀ n, P563526751882671623.a n = A133259 n

end A133259

/-! ## A133259.P2149624065052428298

`A113655(n+1)-(A057078(n)+A010892(n+1))`
-/

namespace A133259.P2149624065052428298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113655 (n + 1) - (A057078 n + A010892 (n + 1))

end

end A133259.P2149624065052428298

namespace A133259

/-- `A113655(n+1)-(A057078(n)+A010892(n+1))` -/
def P2149624065052428298.Spec : Prop :=
  ∀ n, P2149624065052428298.a n = A133259 n

end A133259

/-! ## A133259.P5863127838310678051

`A285872(n+1)+A285872(n)-A008611(n+1)`
-/

namespace A133259.P5863127838310678051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285872 (n + 1) + (A285872 n - A008611 (n + 1))

end

end A133259.P5863127838310678051

namespace A133259

/-- `A285872(n+1)+A285872(n)-A008611(n+1)` -/
def P5863127838310678051.Spec : Prop :=
  ∀ n, P5863127838310678051.a n = A133259 n

end A133259

/-! ## A133259.P7535662333856931464

`A271830(n+3)-3`
-/

namespace A133259.P7535662333856931464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271830 (n + 3) - 3

end

end A133259.P7535662333856931464

namespace A133259

/-- `A271830(n+3)-3` -/
def P7535662333856931464.Spec : Prop :=
  ∀ n, P7535662333856931464.a n = A133259 n

end A133259

/-! ## A133259.P7558633331505403709

`A077859(n)-A021823(2*n)`
-/

namespace A133259.P7558633331505403709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077859 n - A021823 (2 * n)

end

end A133259.P7558633331505403709

namespace A133259

/-- `A077859(n)-A021823(2*n)` -/
def P7558633331505403709.Spec : Prop :=
  ∀ n, P7558633331505403709.a n = A133259 n

end A133259

/-! ## A133259.P5903767063608848968

`A010892(2*n)+n+1-A010892(n+1)`
-/

namespace A133259.P5903767063608848968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010892 (2 * n) + ((n + 1 : ℤ) - A010892 (n + 1))

end

end A133259.P5903767063608848968

namespace A133259

/-- `A010892(2*n)+n+1-A010892(n+1)` -/
def P5903767063608848968.Spec : Prop :=
  ∀ n, P5903767063608848968.a n = A133259 n

end A133259

/-! ## A133259.P18029174666181886108

`A021823(n+1)+n+1-A021823(2*n)`
-/

namespace A133259.P18029174666181886108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021823 (n + 1) + ((n + 1 : ℤ) - A021823 (2 * n))

end

end A133259.P18029174666181886108

namespace A133259

/-- `A021823(n+1)+n+1-A021823(2*n)` -/
def P18029174666181886108.Spec : Prop :=
  ∀ n, P18029174666181886108.a n = A133259 n

end A133259

/-!
# A133261: Union of A134196 and A134197 : A126990 with duplicates removed.

The programs for A133261, there is no canonical definition to state claims against.
-/

/-! ## A133261.P12156644003553998378

`record[A126990(floor(lcm(2, n)/4)+1)]`
-/

namespace A133261.P12156644003553998378
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126990 (⌊(Nat.lcm 2 n : ℚ) / 4⌋ + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A133261.P12156644003553998378

/-! ## A133261.P7829713833582276411

`record[A126990(n+1)%(6*(n+1))]`
-/

namespace A133261.P7829713833582276411
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A126990 (n + 1)) (6 * (n + 1) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A133261.P7829713833582276411

/-! ## A133261.P9279846741383316189

`record[A126990((n%10+n)/2+1)]`
-/

namespace A133261.P9279846741383316189
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126990 (SequenceMachineLib.roundAway (((n % 10 + n : ℕ) : ℚ) / 2 + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A133261.P9279846741383316189

/-! ## A133261.P6818121141728101379

`record[or(round(cos(4)^n), A126990(n+2))]`
-/

namespace A133261.P6818121141728101379
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (SequenceMachineLib.roundAway (Real.cos (4 : ℝ) ^ n)) (A126990 (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A133261.P6818121141728101379

/-! ## A133261.P9560506119705751525

`record[A126990(floor(and(n, n+1)/4)+1)]`
-/

namespace A133261.P9560506119705751525
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126990 (⌊(Nat.land n (n + 1) : ℚ) / 4⌋ + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A133261.P9560506119705751525

/-! ## A133261.P13070464008442224109

`record[A126990(floor(n/(xor(n, n+1)+1))+1)]`
-/

namespace A133261.P13070464008442224109
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126990 (⌊(n : ℚ) / (Nat.xor n (n + 1) + 1 : ℚ)⌋ + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A133261.P13070464008442224109

/-! ## A133261.P5466601850184699919

`record[A126990(A022446(n))]`
-/

namespace A133261.P5466601850184699919
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126990 (A022446 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A133261.P5466601850184699919

/-! ## A133261.P5993679262920660199

`record[A126990(A052938(n))]`
-/

namespace A133261.P5993679262920660199
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126990 (A052938 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A133261.P5993679262920660199

/-! ## A133261.P4203664350587679136

`record[A126990(A106466(n))]`
-/

namespace A133261.P4203664350587679136
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126990 (A106466 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A133261.P4203664350587679136

/-! ## A133261.P8725388591118191165

`record[A126990(A117910(n))]`
-/

namespace A133261.P8725388591118191165
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126990 (A117910 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A133261.P8725388591118191165

/-!
# A133262: Number of two-dimensional simple permutations.

The programs for A133262, there is no canonical definition to state claims against.
-/

/-! ## A133262.P15716001938618712906

`A039960(or(A116877(n), A141214(n)))`
-/

namespace A133262.P15716001938618712906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039960 (Int.lor (A116877 n) (A141214 n)).toNat

end

end A133262.P15716001938618712906

/-!
# A133263: Binomial transform of (1, 2, 0, 1, -1, 1, -1, 1, ...).

The programs for A133263, the canonical program `A133263.P2239587293626440969` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A133263 has offset 0).

The definition of A133263 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A133263.P2239587293626440969

`a(n-1)+n` with `a(0)=1, a(1)=3`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A133263

/-- `a(n-1)+n` -/
def P2239587293626440969.Spec : Prop :=
  ∀ n, (P2239587293626440969.a n : ℤ) = A133263 n

theorem P2239587293626440969.correct : P2239587293626440969.Spec := by
  intro n
  simp only [A133263]

end A133263

/-! ## A133263.P14633603872673609885

`A238531(n+1)`
-/

namespace A133263.P14633603872673609885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238531 (n + 1)

end

end A133263.P14633603872673609885

namespace A133263

/-- `A238531(n+1)` -/
def P14633603872673609885.Spec : Prop :=
  ∀ n, P14633603872673609885.a n = A133263 n

end A133263

/-! ## A133263.P11484556803067591074

`∑[char[1]+n]+1`
-/

namespace A133263.P11484556803067591074
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = n then 1 else 0) + n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A133263.P11484556803067591074

namespace A133263

/-- `∑[char[1]+n]+1` -/
def P11484556803067591074.Spec : Prop :=
  ∀ n, (P11484556803067591074.a n : ℤ) = A133263 n

end A133263

/-! ## A133263.P798336284096741743

`∑[xor(n, C(3, n²))]`
-/

namespace A133263.P798336284096741743
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (Nat.choose 3 (n ^ 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A133263.P798336284096741743

namespace A133263

/-- `∑[xor(n, C(3, n²))]` -/
def P798336284096741743.Spec : Prop :=
  ∀ n, (P798336284096741743.a n : ℤ) = A133263 n

end A133263

/-! ## A133263.P4414626572151769988

`∑[C(n, n²)+n]`
-/

namespace A133263.P4414626572151769988
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n (n ^ 2) + n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A133263.P4414626572151769988

namespace A133263

/-- `∑[C(n, n²)+n]` -/
def P4414626572151769988.Spec : Prop :=
  ∀ n, (P4414626572151769988.a n : ℤ) = A133263 n

end A133263

/-! ## A133263.P10339169943539539489

`floor(∑[acot(n²)+n])`
-/

namespace A133263.P10339169943539539489
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.acot (n ^ 2 : ℝ) + (n : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋

end

end A133263.P10339169943539539489

namespace A133263

/-- `floor(∑[acot(n²)+n])` -/
def P10339169943539539489.Spec : Prop :=
  ∀ n, P10339169943539539489.a n = A133263 n

end A133263

/-! ## A133263.P1215546126907016541

`∑[abs(C(3, n²)-n)]`
-/

namespace A133263.P1215546126907016541
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(Nat.choose 3 (n ^ 2) : ℤ) - (n : ℤ)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A133263.P1215546126907016541

namespace A133263

/-- `∑[abs(C(3, n²)-n)]` -/
def P1215546126907016541.Spec : Prop :=
  ∀ n, P1215546126907016541.a n = A133263 n

end A133263

/-! ## A133263.P11772385851023011178

`∑[1-floor(atan(n))+n]`
-/

namespace A133263.P11772385851023011178
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ⌊Real.arctan (n : ℝ)⌋ + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A133263.P11772385851023011178

namespace A133263

/-- `∑[1-floor(atan(n))+n]` -/
def P11772385851023011178.Spec : Prop :=
  ∀ n, P11772385851023011178.a n = A133263 n

end A133263

/-! ## A133263.P8025907087039163653

`ceil(atan(n+1)+∑[n])`
-/

namespace A133263.P8025907087039163653
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.arctan (n + 1 : ℝ) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℝ)⌉

end

end A133263.P8025907087039163653

namespace A133263

/-- `ceil(atan(n+1)+∑[n])` -/
def P8025907087039163653.Spec : Prop :=
  ∀ n, P8025907087039163653.a n = A133263 n

end A133263

/-! ## A133263.P4359524117430822903

`∑[1-floor(atan(n)-n)]`
-/

namespace A133263.P4359524117430822903
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ⌊Real.arctan (n : ℝ) - (n : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A133263.P4359524117430822903

namespace A133263

/-- `∑[1-floor(atan(n)-n)]` -/
def P4359524117430822903.Spec : Prop :=
  ∀ n, P4359524117430822903.a n = A133263 n

end A133263

/-! ## A133263.P8595627427906106583

`∑[ceil(n-(atan(n)-1))]`
-/

namespace A133263.P8595627427906106583
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℝ) - (Real.arctan (n : ℝ) - 1)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A133263.P8595627427906106583

namespace A133263

/-- `∑[ceil(n-(atan(n)-1))]` -/
def P8595627427906106583.Spec : Prop :=
  ∀ n, P8595627427906106583.a n = A133263 n

end A133263

/-! ## A133263.P3294550708071030466

`∑[round(cos(1)^n+n)]`
-/

namespace A133263.P3294550708071030466
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.cos (1 : ℝ) ^ n + (n : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A133263.P3294550708071030466

namespace A133263

/-- `∑[round(cos(1)^n+n)]` -/
def P3294550708071030466.Spec : Prop :=
  ∀ n, P3294550708071030466.a n = A133263 n

end A133263

/-! ## A133263.P15175669784120459048

`ceil(∑[sin(3)^n+n])`
-/

namespace A133263.P15175669784120459048
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sin (3 : ℝ) ^ n + (n : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈∑ j ∈ Finset.range (n + 1), f1 j⌉

end

end A133263.P15175669784120459048

namespace A133263

/-- `ceil(∑[sin(3)^n+n])` -/
def P15175669784120459048.Spec : Prop :=
  ∀ n, P15175669784120459048.a n = A133263 n

end A133263

/-! ## A133263.P6863520695880112087

`ceil(∑[n]+2-acot(n))`
-/

namespace A133263.P6863520695880112087
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℝ) + (2 - SequenceMachineLib.acot (n : ℝ))⌉

end

end A133263.P6863520695880112087

namespace A133263

/-- `ceil(∑[n]+2-acot(n))` -/
def P6863520695880112087.Spec : Prop :=
  ∀ n, P6863520695880112087.a n = A133263 n

end A133263

/-! ## A133263.P3714567837894404618

`floor(∑[n]+3-acot(n))`
-/

namespace A133263.P3714567837894404618
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℝ) + (3 - SequenceMachineLib.acot (n : ℝ))⌋

end

end A133263.P3714567837894404618

namespace A133263

/-- `floor(∑[n]+3-acot(n))` -/
def P3714567837894404618.Spec : Prop :=
  ∀ n, P3714567837894404618.a n = A133263 n

end A133263

/-! ## A133263.P10648134322646069927

`∑[floor(acot(n/2)+n)]`
-/

namespace A133263.P10648134322646069927
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊SequenceMachineLib.acot ((n : ℚ) / 2 : ℝ) + (n : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A133263.P10648134322646069927

namespace A133263

/-- `∑[floor(acot(n/2)+n)]` -/
def P10648134322646069927.Spec : Prop :=
  ∀ n, P10648134322646069927.a n = A133263 n

end A133263

/-! ## A133263.P1294904312758606684

`ceil(∑[n]-(acot(n)-2))`
-/

namespace A133263.P1294904312758606684
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℝ) - (SequenceMachineLib.acot (n : ℝ) - 2)⌉

end

end A133263.P1294904312758606684

namespace A133263

/-- `ceil(∑[n]-(acot(n)-2))` -/
def P1294904312758606684.Spec : Prop :=
  ∀ n, P1294904312758606684.a n = A133263 n

end A133263

/-! ## A133263.P7115682917966313531

`floor(∑[n]-(acot(n)-3))`
-/

namespace A133263.P7115682917966313531
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℝ) - (SequenceMachineLib.acot (n : ℝ) - 3)⌋

end

end A133263.P7115682917966313531

namespace A133263

/-- `floor(∑[n]-(acot(n)-3))` -/
def P7115682917966313531.Spec : Prop :=
  ∀ n, P7115682917966313531.a n = A133263 n

end A133263

/-! ## A133263.P11394287770601189184

`(∑[n]+2)/ceil(acot(n))`
-/

namespace A133263.P11394287770601189184
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j + 2 : ℕ) : ℚ) / (⌈SequenceMachineLib.acot (n : ℝ)⌉ : ℚ)

end

end A133263.P11394287770601189184

namespace A133263

/-- `(∑[n]+2)/ceil(acot(n))` -/
def P11394287770601189184.Spec : Prop :=
  ∀ n, P11394287770601189184.a n = (A133263 n : ℚ)

end A133263

/-! ## A133263.P16809857670789954039

`∑[round(2/acot(n)-n)]`
-/

namespace A133263.P16809857670789954039
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (2 / SequenceMachineLib.acot (n : ℝ) - (n : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A133263.P16809857670789954039

namespace A133263

/-- `∑[round(2/acot(n)-n)]` -/
def P16809857670789954039.Spec : Prop :=
  ∀ n, P16809857670789954039.a n = A133263 n

end A133263

/-!
# A133264: Smallest number whose sum of digits is 3n+1.

The programs for A133264, the canonical program `A133264.P12166790030389950488` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A133264 has offset 0).

The definition of A133264 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A133264.P12166790030389950488

`a(n-1)+10*a(n-3)-10*a(n-4)` with `a(0)=1, a(1)=4, a(2)=7, a(3)=19`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A133264

/-- `a(n-1)+10*a(n-3)-10*a(n-4)` -/
def P12166790030389950488.Spec : Prop :=
  ∀ n, P12166790030389950488.a n = A133264 n

theorem P12166790030389950488.correct : P12166790030389950488.Spec := by
  intro n
  simp only [A133264]

end A133264

/-! ## A133264.P1843203855710404189

`10*a(n-3)+9` with `a(0)=1, a(1)=4, a(2)=7`
-/

namespace A133264.P1843203855710404189
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 4, 7] fun n a =>
  10 * a (n - 3) + 9

end

end A133264.P1843203855710404189

namespace A133264

/-- `10*a(n-3)+9` -/
def P1843203855710404189.Spec : Prop :=
  ∀ n, (P1843203855710404189.a n : ℤ) = A133264 n

end A133264

/-! ## A133264.P8021737646037260217

`A051885(3*n+1)`
-/

namespace A133264.P8021737646037260217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051885 (3 * n + 1)

end

end A133264.P8021737646037260217

namespace A133264

/-- `A051885(3*n+1)` -/
def P8021737646037260217.Spec : Prop :=
  ∀ n, P8021737646037260217.a n = A133264 n

end A133264

/-! ## A133264.P15017976432565697688

`A037124(2*n+n+2)-1`
-/

namespace A133264.P15017976432565697688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037124 (2 * n + (n + 2)) - 1

end

end A133264.P15017976432565697688

namespace A133264

/-- `A037124(2*n+n+2)-1` -/
def P15017976432565697688.Spec : Prop :=
  ∀ n, P15017976432565697688.a n = A133264 n

end A133264

/-! ## A133264.P16482305183395697331

`record[A051885(A057979(3*n))]`
-/

namespace A133264.P16482305183395697331
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051885 (A057979 (3 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A133264.P16482305183395697331

namespace A133264

/-- `record[A051885(A057979(3*n))]` -/
def P16482305183395697331.Spec : Prop :=
  ∀ n, P16482305183395697331.a n = A133264 n

end A133264

/-! ## A133264.P16739836207416069065

`A133195(n)+Δ[A133201(n)]`
-/

namespace A133264.P16739836207416069065
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133201 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133195 n + (f1 (n + 1) - f1 n)

end

end A133264.P16739836207416069065

namespace A133264

/-- `A133195(n)+Δ[A133201(n)]` -/
def P16739836207416069065.Spec : Prop :=
  ∀ n, P16739836207416069065.a n = A133264 n

end A133264

/-! ## A133264.P12377780746268766570

`A133201(n+1)+2*A133201(n)`
-/

namespace A133264.P12377780746268766570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133201 (n + 1) + 2 * A133201 n

end

end A133264.P12377780746268766570

namespace A133264

/-- `A133201(n+1)+2*A133201(n)` -/
def P12377780746268766570.Spec : Prop :=
  ∀ n, P12377780746268766570.a n = A133264 n

end A133264

/-! ## A133264.P9866728746493642086

`or(A000007(n), A051885(Δ[n²]+n))`
-/

namespace A133264.P9866728746493642086
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A051885 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) + (n : ℤ)).toNat)

end

end A133264.P9866728746493642086

namespace A133264

/-- `or(A000007(n), A051885(Δ[n²]+n))` -/
def P9866728746493642086.Spec : Prop :=
  ∀ n, P9866728746493642086.a n = A133264 n

end A133264

/-! ## A133264.P983230675862547264

`or(A051885(Δ[n²]+n), A127648(n))`
-/

namespace A133264.P983230675862547264
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A051885 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) + (n : ℤ)).toNat) (A127648 n)

end

end A133264.P983230675862547264

namespace A133264

/-- `or(A051885(Δ[n²]+n), A127648(n))` -/
def P983230675862547264.Spec : Prop :=
  ∀ n, P983230675862547264.a n = A133264 n

end A133264

/-! ## A133264.P13792059746466800725

`A133201(n+1)+A133195(n)-A133201(n)`
-/

namespace A133264.P13792059746466800725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133201 (n + 1) + A133195 n - A133201 n

end

end A133264.P13792059746466800725

namespace A133264

/-- `A133201(n+1)+A133195(n)-A133201(n)` -/
def P13792059746466800725.Spec : Prop :=
  ∀ n, P13792059746466800725.a n = A133264 n

end A133264

/-! ## A133264.P5148231859133134542

`∩[A051885(A008585(n)+1), A051885(n)]`
-/

namespace A133264.P5148231859133134542
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051885 (A008585 n + 1).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051885 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A133264.P5148231859133134542

namespace A133264

/-- `∩[A051885(A008585(n)+1), A051885(n)]` -/
def P5148231859133134542.Spec : Prop :=
  ∀ n, (P5148231859133134542.a n : ℤ) = A133264 n

end A133264

/-!
# A133265: Diagonal of the A135356 triangle.

The programs for A133265, the canonical program `A133265.P111323874685015823` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A133265 has offset 0).

The definition of A133265 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A133265.P111323874685015823

`2*a(n-2)-a(n-4)` with `a(0)=2, a(1)=2, a(2)=2, a(3)=4`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A133265

/-- `2*a(n-2)-a(n-4)` -/
def P111323874685015823.Spec : Prop :=
  ∀ n, P111323874685015823.a n = A133265 n

theorem P111323874685015823.correct : P111323874685015823.Spec := by
  intro n
  simp only [A133265]

end A133265

/-! ## A133265.P1680171230649942173

`(n+3+(n-1)*(-1)^(n+1))/2`
-/

namespace A133265.P1680171230649942173
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) + (3 + ((n : ℤ) - 1) * (-1) ^ (n + 1)) : ℚ) / 2

end

end A133265.P1680171230649942173

namespace A133265

/-- `(n+3+(n-1)*(-1)^(n+1))/2` -/
def P1680171230649942173.Spec : Prop :=
  ∀ n, P1680171230649942173.a n = (A133265 n : ℚ)

theorem P1680171230649942173.correct : P1680171230649942173.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 =>
      simp [A133265, Nat.add_sub_cancel, A133265.P1680171230649942173.a, A133265.P111323874685015823.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 4 =>
      have h2 := ih (m + 2) (by omega)
      have h4 := ih m (by omega)
      simp only [A133265, Nat.add_sub_cancel, A133265.P1680171230649942173.a, A133265.P111323874685015823.a, SequenceMachineLib.memo_apply] at h2 h4 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 4 - 2 = m + 2 by omega, show m + 4 - 4 = m by omega, show m + 2 < m + 4 by omega, show m < m + 4 by omega, ↓reduceIte]
      push_cast at h2 h4 ⊢
      rw [← h2, ← h4]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A133265

/-! ## A133265.P13117217926496700811

`n^(n%2)+1`
-/

namespace A133265.P13117217926496700811
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ (n % 2) + 1

end

end A133265.P13117217926496700811

namespace A133265

/-- `n^(n%2)+1` -/
def P13117217926496700811.Spec : Prop :=
  ∀ n, (P13117217926496700811.a n : ℤ) = A133265 n

end A133265

/-! ## A133265.P12026534842222181825

`n^and(1, n)+1`
-/

namespace A133265.P12026534842222181825
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ Nat.land 1 n + 1

end

end A133265.P12026534842222181825

namespace A133265

/-- `n^and(1, n)+1` -/
def P12026534842222181825.Spec : Prop :=
  ∀ n, (P12026534842222181825.a n : ℤ) = A133265 n

end A133265

/-! ## A133265.P11520451700008649572

`gcd(n, or(1, n))+1`
-/

namespace A133265.P11520451700008649572
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd n (Nat.lor 1 n) + 1

end

end A133265.P11520451700008649572

namespace A133265

/-- `gcd(n, or(1, n))+1` -/
def P11520451700008649572.Spec : Prop :=
  ∀ n, (P11520451700008649572.a n : ℤ) = A133265 n

end A133265

/-! ## A133265.P3430774463030044827

`C(n, and(1, n))+1`
-/

namespace A133265.P3430774463030044827
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n (Nat.land 1 n) + 1

end

end A133265.P3430774463030044827

namespace A133265

/-- `C(n, and(1, n))+1` -/
def P3430774463030044827.Spec : Prop :=
  ∀ n, (P3430774463030044827.a n : ℤ) = A133265 n

end A133265

/-! ## A133265.P18406051451860553970

`C(n, n²%2)+1`
-/

namespace A133265.P18406051451860553970
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n (n ^ 2 % 2) + 1

end

end A133265.P18406051451860553970

namespace A133265

/-- `C(n, n²%2)+1` -/
def P18406051451860553970.Spec : Prop :=
  ∀ n, (P18406051451860553970.a n : ℤ) = A133265 n

end A133265

/-! ## A133265.P12211680365532360572

`(n-1)*and(1, n)+2`
-/

namespace A133265.P12211680365532360572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1) * (Nat.land 1 n : ℤ) + 2

end

end A133265.P12211680365532360572

namespace A133265

/-- `(n-1)*and(1, n)+2` -/
def P12211680365532360572.Spec : Prop :=
  ∀ n, P12211680365532360572.a n = A133265 n

end A133265

/-! ## A133265.P44541391546937606

`2-(1-n)*and(1, n)`
-/

namespace A133265.P44541391546937606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (1 - (n : ℤ)) * (Nat.land 1 n : ℤ)

end

end A133265.P44541391546937606

namespace A133265

/-- `2-(1-n)*and(1, n)` -/
def P44541391546937606.Spec : Prop :=
  ∀ n, P44541391546937606.a n = A133265 n

end A133265

/-! ## A133265.P13027653669628271588

`lcm(2, lcm(2, n)+1-n)`
-/

namespace A133265.P13027653669628271588
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 ((Nat.lcm 2 n : ℤ) + (1 - (n : ℤ)))

end

end A133265.P13027653669628271588

namespace A133265

/-- `lcm(2, lcm(2, n)+1-n)` -/
def P13027653669628271588.Spec : Prop :=
  ∀ n, (P13027653669628271588.a n : ℤ) = A133265 n

end A133265

/-! ## A133265.P6795811093765874747

`xor(1, n)%(n+1)+2`
-/

namespace A133265.P6795811093765874747
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n % (n + 1) + 2

end

end A133265.P6795811093765874747

namespace A133265

/-- `xor(1, n)%(n+1)+2` -/
def P6795811093765874747.Spec : Prop :=
  ∀ n, (P6795811093765874747.a n : ℤ) = A133265 n

end A133265

/-! ## A133265.P2733792878845407599

`C(n, Δ[floor(n/2)])+1`
-/

namespace A133265.P2733792878845407599
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 2⌋

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n (f1 (n + 1) - f1 n).toNat + 1

end

end A133265.P2733792878845407599

namespace A133265

/-- `C(n, Δ[floor(n/2)])+1` -/
def P2733792878845407599.Spec : Prop :=
  ∀ n, (P2733792878845407599.a n : ℤ) = A133265 n

end A133265

/-! ## A133265.P15987955066963373968

`n^val(n²+1, 2)+1`
-/

namespace A133265.P15987955066963373968
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ SequenceMachineLib.valuation (n ^ 2 + 1) 2 + 1

end

end A133265.P15987955066963373968

namespace A133265

/-- `n^val(n²+1, 2)+1` -/
def P15987955066963373968.Spec : Prop :=
  ∀ n, (P15987955066963373968.a n : ℤ) = A133265 n

end A133265

/-! ## A133265.P7977363461248345666

`n^log2(gcd(2, n+1))+1`
-/

namespace A133265.P7977363461248345666
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n : ℝ) ^ (Real.logb 2 (Nat.gcd 2 (n + 1) : ℝ)) + 1

end

end A133265.P7977363461248345666

namespace A133265

/-- `n^log2(gcd(2, n+1))+1` -/
def P7977363461248345666.Spec : Prop :=
  ∀ n, P7977363461248345666.a n = (A133265 n : ℝ)

end A133265

/-! ## A133265.P4909337331706481101

`and(n-1, -and(1, n))+2`
-/

namespace A133265.P4909337331706481101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land ((n : ℤ) - 1) (-(Nat.land 1 n : ℤ)) + 2

end

end A133265.P4909337331706481101

namespace A133265

/-- `and(n-1, -and(1, n))+2` -/
def P4909337331706481101.Spec : Prop :=
  ∀ n, P4909337331706481101.a n = A133265 n

end A133265

/-! ## A133265.P12781758233243968658

`and(n, -2*and(1, n))+2`
-/

namespace A133265.P12781758233243968658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (-(2 * Nat.land 1 n : ℤ)) + 2

end

end A133265.P12781758233243968658

namespace A133265

/-- `and(n, -2*and(1, n))+2` -/
def P12781758233243968658.Spec : Prop :=
  ∀ n, P12781758233243968658.a n = A133265 n

end A133265

/-! ## A133265.P17769555157939880087

`2*ceil(n/a(n-1))` with `a(0)=2`
-/

namespace A133265.P17769555157939880087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  2 * ⌈(n : ℚ) / (a (n - 1) : ℚ)⌉

end

end A133265.P17769555157939880087

namespace A133265

/-- `2*ceil(n/a(n-1))` -/
def P17769555157939880087.Spec : Prop :=
  ∀ n, P17769555157939880087.a n = A133265 n

end A133265

/-! ## A133265.P14950092681337408958

`2*round(n/a(n-1))` with `a(0)=2`
-/

namespace A133265.P14950092681337408958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  2 * SequenceMachineLib.roundAway ((n : ℚ) / (a (n - 1) : ℚ))

end

end A133265.P14950092681337408958

namespace A133265

/-- `2*round(n/a(n-1))` -/
def P14950092681337408958.Spec : Prop :=
  ∀ n, P14950092681337408958.a n = A133265 n

end A133265

/-! ## A133265.P7407640274121952197

`∑[∑[ogf((2+2x-2x^2)/(1+2x+x^2))]]`
-/

namespace A133265.P7407640274121952197
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, 2, -2] [1, 2, 1] n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A133265.P7407640274121952197

namespace A133265

/-- `∑[∑[ogf((2+2x-2x^2)/(1+2x+x^2))]]` -/
def P7407640274121952197.Spec : Prop :=
  ∀ n, P7407640274121952197.a n = A133265 n

end A133265

/-! ## A133265.P16943769588554551630

`ogf((2+2x-2x^2)/(1-2x^2+x^4))`
-/

namespace A133265.P16943769588554551630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, 2, -2] [1, 0, -2, 0, 1] n

end

end A133265.P16943769588554551630

namespace A133265

/-- `ogf((2+2x-2x^2)/(1-2x^2+x^4))` -/
def P16943769588554551630.Spec : Prop :=
  ∀ n, P16943769588554551630.a n = A133265 n

end A133265

/-!
# A133267: Number of Lyndon words on {1, 2, 3} with an even number of 1's.

The programs for A133267, there is no canonical definition to state claims against.
-/

/-! ## A133267.P7881421853957879102

`A027376(n+1)-A006575(n+1)`
-/

namespace A133267.P7881421853957879102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027376 (n + 1) - A006575 (n + 1)

end

end A133267.P7881421853957879102

/-! ## A133267.P7827950672208555047

`A027376(n+1)-(A002075(n+1)+A046209(n+1)-A000007(n))`
-/

namespace A133267.P7827950672208555047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027376 (n + 1) - (A002075 (n + 1) + (A046209 (n + 1) - A000007 n))

end

end A133267.P7827950672208555047

/-! ## A133267.P16610730806060164777

`A027376(n+1)-(A002075(n+1)-A046209(n+1)*A057428(n))`
-/

namespace A133267.P16610730806060164777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027376 (n + 1) - (A002075 (n + 1) - A046209 (n + 1) * A057428 n)

end

end A133267.P16610730806060164777

/-! ## A133267.P4394387798133645938

`A328742(n+1)+A046211(n+1)`
-/

namespace A133267.P4394387798133645938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328742 (n + 1) + A046211 (n + 1)

end

end A133267.P4394387798133645938

/-! ## A133267.P1370220402123539819

`A328742(n+1)+A110540(A167614(n+1))`
-/

namespace A133267.P1370220402123539819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328742 (n + 1) + A110540 (A167614 (n + 1)).toNat

end

end A133267.P1370220402123539819

/-!
# A133268: a(n) = positions of 0's after decimal point in decimal expansion of 1/Pi.

The programs for A133268, there is no canonical definition to state claims against.
-/

/-! ## A133268.P6461213450039146554

`eq[0, A049541(n)]+1`
-/

namespace A133268.P6461213450039146554
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049541 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A133268.P6461213450039146554

/-! ## A133268.P2791198884787862390

`eq[0, A049541(abs(1-n))]`
-/

namespace A133268.P2791198884787862390
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049541 |1 - (n : ℤ)|.toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A133268.P2791198884787862390

/-! ## A133268.P14506740774467473585

`A020725(eq[0, A049541(n)])`
-/

namespace A133268.P14506740774467473585
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049541 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A133268.P14506740774467473585

/-! ## A133268.P2635834896285062032

`A065475(eq[0, A049541(n)])`
-/

namespace A133268.P2635834896285062032
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049541 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A133268.P2635834896285062032

/-! ## A133268.P6567260965178541686

`A153152(eq[0, A049541(n)])`
-/

namespace A133268.P6567260965178541686
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049541 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153152 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A133268.P6567260965178541686

/-!
# A133269: Fractal sequence consisting of quadruples, each of which contains the tones comprising a major 7th chord (i.e., root, major third, fifth, and major 7th), with the tones in an octave assigned to the numbers 1..12, and with the n-th quadruple using a(n) as its root.

The programs for A133269, there is no canonical definition to state claims against.
-/

/-! ## A133269.P4783129653004900962

`A005187(2*n+1)%A151572(A063759(2*n+1))+A005187(n)%3`
-/

namespace A133269.P4783129653004900962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A005187 (2 * n + 1)) (A151572 (A063759 (2 * n + 1)).toNat) + Int.tmod (A005187 n) 3

end

end A133269.P4783129653004900962

/-!
# A133270: Groups of 4 numbers describing a sequence of Minor 7th chords by assigning numbers 1 to 12 to an octave.

The programs for A133270, there is no canonical definition to state claims against.
-/

/-! ## A133270.P3795778097755723890

`A005187(2*n+1)%A075476(A000170(n))`
-/

namespace A133270.P3795778097755723890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A005187 (2 * n + 1)) (A075476 (A000170 n).toNat)

end

end A133270.P3795778097755723890

/-!
# A133271: Indices of 7-gonal numbers which are also centered 7-gonal numbers.

The programs for A133271, the canonical program `A133271.P7199628574206113529` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A133271 has offset 1).

The definition of A133271 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A133271.P7199628574206113529

`13*a(n-1)-13*a(n-2)+a(n-3)` with `a(0)=1, a(1)=8, a(2)=92`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A133271

/-- `13*a(n-1)-13*a(n-2)+a(n-3)` -/
def P7199628574206113529.Spec : Prop :=
  ∀ n, P7199628574206113529.a n = A133271 (n + 1)

theorem P7199628574206113529.correct : P7199628574206113529.Spec := by
  intro n
  simp only [A133271, Nat.add_sub_cancel]

end A133271

/-! ## A133271.P15296818483162209927

`floor(7/5*A253621(n+1))`
-/

namespace A133271.P15296818483162209927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(7 : ℚ) / 5 * (A253621 (n + 1) : ℚ)⌋

end

end A133271.P15296818483162209927

namespace A133271

/-- `floor(7/5*A253621(n+1))` -/
def P15296818483162209927.Spec : Prop :=
  ∀ n, P15296818483162209927.a n = A133271 (n + 1)

end A133271

/-! ## A133271.P2983646418032916230

`A098299(n)+∑[A023038(n)]`
-/

namespace A133271.P2983646418032916230
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023038 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098299 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A133271.P2983646418032916230

namespace A133271

/-- `A098299(n)+∑[A023038(n)]` -/
def P2983646418032916230.Spec : Prop :=
  ∀ n, P2983646418032916230.a n = A133271 (n + 1)

end A133271

/-! ## A133271.P15242851185545479734

`A133272(n+1)+A098299(n)`
-/

namespace A133271.P15242851185545479734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133272 (n + 1) + A098299 n

end

end A133271.P15242851185545479734

namespace A133271

/-- `A133272(n+1)+A098299(n)` -/
def P15242851185545479734.Spec : Prop :=
  ∀ n, P15242851185545479734.a n = A133271 (n + 1)

end A133271

/-! ## A133271.P10073507707630576485

`A098299(n)+∑[A080875(2*n)]`
-/

namespace A133271.P10073507707630576485
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080875 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098299 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A133271.P10073507707630576485

namespace A133271

/-- `A098299(n)+∑[A080875(2*n)]` -/
def P10073507707630576485.Spec : Prop :=
  ∀ n, P10073507707630576485.a n = A133271 (n + 1)

end A133271

/-! ## A133271.P15859235346152637331

`A098299(n)+∑[A087800(n)/2]`
-/

namespace A133271.P15859235346152637331
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A087800 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A098299 n : ℚ) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A133271.P15859235346152637331

namespace A133271

/-- `A098299(n)+∑[A087800(n)/2]` -/
def P15859235346152637331.Spec : Prop :=
  ∀ n, P15859235346152637331.a n = (A133271 (n + 1) : ℚ)

end A133271

/-!
# A133272: Indices of centered heptagonal numbers (A069099) which are also heptagonal numbers (A000566).

The programs for A133272, the canonical program `A133272.P4132425277880544172` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A133272 has offset 1).

The definition of A133272 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A133272.P4132425277880544172

`13*a(n-1)-13*a(n-2)+a(n-3)` with `a(0)=1, a(1)=7, a(2)=78`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A133272

/-- `13*a(n-1)-13*a(n-2)+a(n-3)` -/
def P4132425277880544172.Spec : Prop :=
  ∀ n, P4132425277880544172.a n = A133272 (n + 1)

theorem P4132425277880544172.correct : P4132425277880544172.Spec := by
  intro n
  simp only [A133272, Nat.add_sub_cancel]

end A133272

/-! ## A133272.P6153658847287291185

`∑[ogf((1-6x)/(1-12x+x^2))]`
-/

namespace A133272.P6153658847287291185
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -6] [1, -12, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A133272.P6153658847287291185

namespace A133272

/-- `∑[ogf((1-6x)/(1-12x+x^2))]` -/
def P6153658847287291185.Spec : Prop :=
  ∀ n, P6153658847287291185.a n = A133272 (n + 1)

end A133272

/-! ## A133272.P11276132500140569011

`ogf((1-6x)/(1-13x+13x^2-x^3))`
-/

namespace A133272.P11276132500140569011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -6] [1, -13, 13, -1] n

end

end A133272.P11276132500140569011

namespace A133272

/-- `ogf((1-6x)/(1-13x+13x^2-x^3))` -/
def P11276132500140569011.Spec : Prop :=
  ∀ n, P11276132500140569011.a n = A133272 (n + 1)

end A133272

/-! ## A133272.P11583406314355788197

`∑[12*a(n-1)-a(n-2)]` with `a(0)=1, a(1)=6`
-/

namespace A133272.P11583406314355788197
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 6] fun n f1 =>
  12 * f1 (n - 1) - f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A133272.P11583406314355788197

namespace A133272

/-- `∑[12*a(n-1)-a(n-2)]` -/
def P11583406314355788197.Spec : Prop :=
  ∀ n, P11583406314355788197.a n = A133272 (n + 1)

end A133272

/-! ## A133272.P14848287174827845361

`∑[A023038(n)]`
-/

namespace A133272.P14848287174827845361
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023038 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A133272.P14848287174827845361

namespace A133272

/-- `∑[A023038(n)]` -/
def P14848287174827845361.Spec : Prop :=
  ∀ n, P14848287174827845361.a n = A133272 (n + 1)

end A133272

/-! ## A133272.P9773448605603300872

`∑[A080875(2*n)]`
-/

namespace A133272.P9773448605603300872
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080875 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A133272.P9773448605603300872

namespace A133272

/-- `∑[A080875(2*n)]` -/
def P9773448605603300872.Spec : Prop :=
  ∀ n, P9773448605603300872.a n = A133272 (n + 1)

end A133272

/-! ## A133272.P6042138849299180038

`∑[5*A098299(n)+1]`
-/

namespace A133272.P6042138849299180038
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A098299 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A133272.P6042138849299180038

namespace A133272

/-- `∑[5*A098299(n)+1]` -/
def P6042138849299180038.Spec : Prop :=
  ∀ n, P6042138849299180038.a n = A133272 (n + 1)

end A133272

/-! ## A133272.P5373608696736909381

`A080875(n+n)+a(n-1)` with `a(0)=1`
-/

namespace A133272.P5373608696736909381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A080875 (n + n) + a (n - 1)

end

end A133272.P5373608696736909381

namespace A133272

/-- `A080875(n+n)+a(n-1)` -/
def P5373608696736909381.Spec : Prop :=
  ∀ n, P5373608696736909381.a n = A133272 (n + 1)

end A133272

/-! ## A133272.P15695247324388021068

`∑[1/A253621(n+1)]*A253621(n+1)`
-/

namespace A133272.P15695247324388021068
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  1 / (A253621 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * (A253621 (n + 1) : ℚ)

end

end A133272.P15695247324388021068

namespace A133272

/-- `∑[1/A253621(n+1)]*A253621(n+1)` -/
def P15695247324388021068.Spec : Prop :=
  ∀ n, P15695247324388021068.a n = (A133272 (n + 1) : ℚ)

end A133272

/-! ## A133272.P10893901132491957502

`∑[A087800(n)/2]`
-/

namespace A133272.P10893901132491957502
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A087800 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A133272.P10893901132491957502

namespace A133272

/-- `∑[A087800(n)/2]` -/
def P10893901132491957502.Spec : Prop :=
  ∀ n, P10893901132491957502.a n = (A133272 (n + 1) : ℚ)

end A133272

/-!
# A133273: Indices of centered decagonal numbers which are also decagonal numbers.

The programs for A133273, the canonical program `A133273.P14048403645362515114` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A133273 has offset 1).

The definition of A133273 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A133273.P14048403645362515114

`19*a(n-1)-19*a(n-2)+a(n-3)` with `a(0)=1, a(1)=10, a(2)=171`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A133273

/-- `19*a(n-1)-19*a(n-2)+a(n-3)` -/
def P14048403645362515114.Spec : Prop :=
  ∀ n, P14048403645362515114.a n = A133273 (n + 1)

theorem P14048403645362515114.correct : P14048403645362515114.Spec := by
  intro n
  simp only [A133273, Nat.add_sub_cancel]

end A133273

/-! ## A133273.P2059553693864255722

`∑[ogf((1-9x)/(1-18x+x^2))]`
-/

namespace A133273.P2059553693864255722
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -9] [1, -18, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A133273.P2059553693864255722

namespace A133273

/-- `∑[ogf((1-9x)/(1-18x+x^2))]` -/
def P2059553693864255722.Spec : Prop :=
  ∀ n, P2059553693864255722.a n = A133273 (n + 1)

end A133273

/-! ## A133273.P16835339781533158301

`∑[xor(3, floor(ϕ^(6*n)))/2]`
-/

namespace A133273.P16835339781533158301
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.xor 3 ⌊Real.goldenRatio ^ (6 * n)⌋ : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A133273.P16835339781533158301

namespace A133273

/-- `∑[xor(3, floor(ϕ^(6*n)))/2]` -/
def P16835339781533158301.Spec : Prop :=
  ∀ n, P16835339781533158301.a n = (A133273 (n + 1) : ℚ)

end A133273

/-! ## A133273.P9682948701318996689

`ceil((ϕ^(2*n+1)/2)^3)`
-/

namespace A133273.P9682948701318996689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Real.goldenRatio ^ (2 * n + 1) / 2) ^ 3⌉

end

end A133273.P9682948701318996689

namespace A133273

/-- `ceil((ϕ^(2*n+1)/2)^3)` -/
def P9682948701318996689.Spec : Prop :=
  ∀ n, P9682948701318996689.a n = A133273 (n + 1)

end A133273

/-! ## A133273.P10193885897114734685

`∑[18*a(n-1)-a(n-2)]` with `a(0)=1, a(1)=9`
-/

namespace A133273.P10193885897114734685
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 9] fun n f1 =>
  18 * f1 (n - 1) - f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A133273.P10193885897114734685

namespace A133273

/-- `∑[18*a(n-1)-a(n-2)]` -/
def P10193885897114734685.Spec : Prop :=
  ∀ n, P10193885897114734685.a n = A133273 (n + 1)

end A133273

/-! ## A133273.P6372987994772508689

`floor((ϕ^(2*n+1)/2)^3)+(2*n)%2+1`
-/

namespace A133273.P6372987994772508689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Real.goldenRatio ^ (2 * n + 1) / 2) ^ 3⌋ + ((2 * n % 2 : ℕ) : ℤ) + 1

end

end A133273.P6372987994772508689

namespace A133273

/-- `floor((ϕ^(2*n+1)/2)^3)+(2*n)%2+1` -/
def P6372987994772508689.Spec : Prop :=
  ∀ n, P6372987994772508689.a n = A133273 (n + 1)

end A133273

/-! ## A133273.P17452640765899224275

`∑[A023039(n)]`
-/

namespace A133273.P17452640765899224275
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023039 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A133273.P17452640765899224275

namespace A133273

/-- `∑[A023039(n)]` -/
def P17452640765899224275.Spec : Prop :=
  ∀ n, P17452640765899224275.a n = A133273 (n + 1)

end A133273

/-! ## A133273.P4380733006624521178

`round(A049629(n)/2)`
-/

namespace A133273.P4380733006624521178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A049629 n : ℚ) / 2)

end

end A133273.P4380733006624521178

namespace A133273

/-- `round(A049629(n)/2)` -/
def P4380733006624521178.Spec : Prop :=
  ∀ n, P4380733006624521178.a n = A133273 (n + 1)

end A133273

/-! ## A133273.P18333049863909346903

`∑[A001077(2*n)]`
-/

namespace A133273.P18333049863909346903
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001077 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A133273.P18333049863909346903

namespace A133273

/-- `∑[A001077(2*n)]` -/
def P18333049863909346903.Spec : Prop :=
  ∀ n, P18333049863909346903.a n = A133273 (n + 1)

end A133273

/-! ## A133273.P1387024137677567922

`∑[A087215(n)/2]`
-/

namespace A133273.P1387024137677567922
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A087215 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A133273.P1387024137677567922

namespace A133273

/-- `∑[A087215(n)/2]` -/
def P1387024137677567922.Spec : Prop :=
  ∀ n, P1387024137677567922.a n = (A133273 (n + 1) : ℚ)

end A133273

/-!
# A133274: Numbers which are both 12-gonal and centered 12-gonal numbers.

The programs for A133274, there is no canonical definition to state claims against.
-/

/-! ## A133274.P13885317646219726778

`(A157097(n)-4)*A133284(n+1)`
-/

namespace A133274.P13885317646219726778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A157097 n - 4) * A133284 (n + 1)

end

end A133274.P13885317646219726778

/-!
# A133275: Numbers X such that 30*X^2-45 is a square.

The programs for A133275, the canonical program `A133275.P16050064932795148582` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A133275 has offset 1).

The definition of A133275 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A133275.P16050064932795148582

`3*A157014(n+1)`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A133275

/-- `3*A157014(n+1)` -/
def P16050064932795148582.Spec : Prop :=
  ∀ n, P16050064932795148582.a n = A133275 (n + 1)

theorem P16050064932795148582.correct : P16050064932795148582.Spec := by
  intro n
  simp only [A133275, Nat.add_sub_cancel]

end A133275

/-! ## A133275.P17012057822005745268

`ogf((3-3x)/(1-22x+x^2))`
-/

namespace A133275.P17012057822005745268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, -3] [1, -22, 1] n

end

end A133275.P17012057822005745268

namespace A133275

/-- `ogf((3-3x)/(1-22x+x^2))` -/
def P17012057822005745268.Spec : Prop :=
  ∀ n, P17012057822005745268.a n = A133275 (n + 1)

end A133275

/-! ## A133275.P1007293702577759163

`22*a(n-1)-a(n-2)` with `a(0)=3, a(1)=63`
-/

namespace A133275.P1007293702577759163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 63] fun n a =>
  22 * a (n - 1) - a (n - 2)

end

end A133275.P1007293702577759163

namespace A133275

/-- `22*a(n-1)-a(n-2)` -/
def P1007293702577759163.Spec : Prop :=
  ∀ n, P1007293702577759163.a n = A133275 (n + 1)

end A133275

/-! ## A133275.P8459154171818258906

`A157097(n)-2`
-/

namespace A133275.P8459154171818258906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157097 n - 2

end

end A133275.P8459154171818258906

namespace A133275

/-- `A157097(n)-2` -/
def P8459154171818258906.Spec : Prop :=
  ∀ n, P8459154171818258906.a n = A133275 (n + 1)

end A133275

/-! ## A133275.P14859858895284675241

`3*A041049(2*n)`
-/

namespace A133275.P14859858895284675241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A041049 (2 * n)

end

end A133275.P14859858895284675241

namespace A133275

/-- `3*A041049(2*n)` -/
def P14859858895284675241.Spec : Prop :=
  ∀ n, P14859858895284675241.a n = A133275 (n + 1)

end A133275

/-! ## A133275.P11951640190025470509

`3*A041219(2*n)`
-/

namespace A133275.P11951640190025470509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A041219 (2 * n)

end

end A133275.P11951640190025470509

namespace A133275

/-- `3*A041219(2*n)` -/
def P11951640190025470509.Spec : Prop :=
  ∀ n, P11951640190025470509.a n = A133275 (n + 1)

end A133275

/-! ## A133275.P17802148430797475874

`3*A153317(2*n)`
-/

namespace A133275.P17802148430797475874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A153317 (2 * n)

end

end A133275.P17802148430797475874

namespace A133275

/-- `3*A153317(2*n)` -/
def P17802148430797475874.Spec : Prop :=
  ∀ n, P17802148430797475874.a n = A133275 (n + 1)

end A133275

/-! ## A133275.P12013916238700029144

`5*A133284(n+1)-2`
-/

namespace A133275.P12013916238700029144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A133284 (n + 1) - 2

end

end A133275.P12013916238700029144

namespace A133275

/-- `5*A133284(n+1)-2` -/
def P12013916238700029144.Spec : Prop :=
  ∀ n, P12013916238700029144.a n = A133275 (n + 1)

end A133275

/-! ## A133275.P16371818222851606615

`(A077422(n+1)+A077422(n))/4`
-/

namespace A133275.P16371818222851606615
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A077422 (n + 1) + A077422 n : ℚ) / 4

end

end A133275.P16371818222851606615

namespace A133275

/-- `(A077422(n+1)+A077422(n))/4` -/
def P16371818222851606615.Spec : Prop :=
  ∀ n, P16371818222851606615.a n = (A133275 (n + 1) : ℚ)

end A133275

/-! ## A133275.P10209163044772533036

`(A041048(2*n+1)-A041048(2*n))/2`
-/

namespace A133275.P10209163044772533036
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041048 (2 * n + 1) - A041048 (2 * n) : ℚ) / 2

end

end A133275.P10209163044772533036

namespace A133275

/-- `(A041048(2*n+1)-A041048(2*n))/2` -/
def P10209163044772533036.Spec : Prop :=
  ∀ n, P10209163044772533036.a n = (A133275 (n + 1) : ℚ)

end A133275

/-!
# A133277: Triangle read by rows: row n gives the arithmetic progression of n primes with minimal final term, cf. A005115.

The programs for A133277, there is no canonical definition to state claims against.
-/

/-! ## A133277.P863082299238803861

`p?[A133276(n+1)]`
-/

namespace A133277.P863082299238803861
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133276 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A133277.P863082299238803861

/-! ## A133277.P16087544911857056263

`A020725(A133276(n+1)-1)`
-/

namespace A133277.P16087544911857056263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A133276 (n + 1) - 1).toNat

end

end A133277.P16087544911857056263

/-! ## A133277.P1533268856523033235

`A023444(A133276(n+1)+2)`
-/

namespace A133277.P1533268856523033235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023444 (A133276 (n + 1) + 2).toNat

end

end A133277.P1533268856523033235

/-! ## A133277.P15102561502717346402

`A133259(A133276(n+1)-1)`
-/

namespace A133277.P15102561502717346402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133259 (A133276 (n + 1) - 1).toNat

end

end A133277.P15102561502717346402

/-! ## A133277.P6348695218976380246

`A141310(A133276(n+1)-1)`
-/

namespace A133277.P6348695218976380246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141310 (A133276 (n + 1) - 1).toNat

end

end A133277.P6348695218976380246

/-! ## A133277.P6633516323558289860

`A151800(A133276(n+1)-1)`
-/

namespace A133277.P6633516323558289860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (A133276 (n + 1) - 1).toNat

end

end A133277.P6633516323558289860

/-! ## A133277.P15745920283506562892

`A004525(2*A133276(n+1))`
-/

namespace A133277.P15745920283506562892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (2 * A133276 (n + 1)).toNat

end

end A133277.P15745920283506562892

/-! ## A133277.P11237838306259994835

`A004526(2*A133276(n+1))`
-/

namespace A133277.P11237838306259994835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (2 * A133276 (n + 1)).toNat

end

end A133277.P11237838306259994835

/-! ## A133277.P2079343384354421261

`A006370(2*A133276(n+1))`
-/

namespace A133277.P2079343384354421261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006370 (2 * A133276 (n + 1)).toNat

end

end A133277.P2079343384354421261

/-! ## A133277.P16067491632540019869

`A006530(2*A133276(n+1))`
-/

namespace A133277.P16067491632540019869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (2 * A133276 (n + 1)).toNat

end

end A133277.P16067491632540019869

/-!
# A133278: Triangle read by rows, with n-th row the smallest non-constant n-term arithmetic progression of primes beginning with prime(n).

The programs for A133278, there is no canonical definition to state claims against.
-/

/-! ## A133278.P6807708982755001354

`A169682(A347834(n+1))`
-/

namespace A133278.P6807708982755001354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169682 (A347834 (n + 1)).toNat

end

end A133278.P6807708982755001354

/-! ## A133278.P939169608745246053

`p?[A305928(n)-A094912(n)]`
-/

namespace A133278.P939169608745246053
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305928 n - A094912 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A133278.P939169608745246053

/-! ## A133278.P11861699847244629839

`A000040(A303776(n)+A178225(n))`
-/

namespace A133278.P11861699847244629839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A303776 n + A178225 n).toNat

end

end A133278.P11861699847244629839

/-! ## A133278.P3686295234665208398

`A000040(A159797(n)+A026820(n+1))`
-/

namespace A133278.P3686295234665208398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A159797 n + A026820 (n + 1)).toNat

end

end A133278.P3686295234665208398

/-! ## A133278.P9689497346107232235

`A000040(A213008(n+1)+A159797(n))`
-/

namespace A133278.P9689497346107232235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A213008 (n + 1) + A159797 n).toNat

end

end A133278.P9689497346107232235

/-!
# A133279: Number of unlabeled mating graphs with n nodes and a degenerate adjacency matrix.

The programs for A133279, there is no canonical definition to state claims against.
-/

/-! ## A133279.P12551652999611583567

`A004110(n+1)-A109717(n+1)`
-/

namespace A133279.P12551652999611583567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004110 (n + 1) - A109717 (n + 1)

end

end A133279.P12551652999611583567

/-! ## A133279.P15780813913950299843

`A133206(n+1)-A141580(n+1)`
-/

namespace A133279.P15780813913950299843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133206 (n + 1) - A141580 (n + 1)

end

end A133279.P15780813913950299843

/-! ## A133279.P11309754451669254013

`A133206(n+1)-∑[A324693(n+1)]`
-/

namespace A133279.P11309754451669254013
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324693 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133206 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A133279.P11309754451669254013

/-! ## A133279.P4978019427211900686

`Δ[A006897(n)]-(A141580(n+1)+A109717(n+1))`
-/

namespace A133279.P4978019427211900686
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006897 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - (A141580 (n + 1) + A109717 (n + 1))

end

end A133279.P4978019427211900686

/-! ## A133279.P5586310071149296454

`A004110(n+1)-(Δ[A006897(n)]-A133206(n+1))`
-/

namespace A133279.P5586310071149296454
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006897 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004110 (n + 1) - (f1 (n + 1) - f1 n - A133206 (n + 1))

end

end A133279.P5586310071149296454

/-!
# A133280: Triangle formed by: 1 even, 2 odd, 3 even, 4 odd, ... starting with zero.

The programs for A133280, the canonical program `A133280.P1210636766669220191` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A133280 has offset 0).

The definition of A133280 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A133280.P1210636766669220191

`A005408(n)-A002024(n+1)`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A133280

/-- `A005408(n)-A002024(n+1)` -/
def P1210636766669220191.Spec : Prop :=
  ∀ n, P1210636766669220191.a n = A133280 n

theorem P1210636766669220191.correct : P1210636766669220191.Spec := by
  intro n
  simp only [A133280]

end A133280

/-! ## A133280.P14019386009751672182

`comp[comp[∑[n]]+n]`
-/

namespace A133280.P14019386009751672182
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n + n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A133280.P14019386009751672182

namespace A133280

/-- `comp[comp[∑[n]]+n]` -/
def P14019386009751672182.Spec : Prop :=
  ∀ n, (P14019386009751672182.a n : ℤ) = A133280 n

end A133280

/-! ## A133280.P16846785745661739219

`∑[xor(1, char[∑[n]])]+n`
-/

namespace A133280.P16846785745661739219
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (if ∃ j, f2 j = n then 1 else 0)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + n

end

end A133280.P16846785745661739219

namespace A133280

/-- `∑[xor(1, char[∑[n]])]+n` -/
def P16846785745661739219.Spec : Prop :=
  ∀ n, (P16846785745661739219.a n : ℤ) = A133280 n

end A133280

/-! ## A133280.P5564441728107806000

`∑[(1-char[∑[n]])%2]+n`
-/

namespace A133280.P5564441728107806000
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (1 - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A133280.P5564441728107806000

namespace A133280

/-- `∑[(1-char[∑[n]])%2]+n` -/
def P5564441728107806000.Spec : Prop :=
  ∀ n, P5564441728107806000.a n = A133280 n

end A133280

/-! ## A133280.P12945686445840281385

`∑[C(2-char[∑[n]], 2)]+n`
-/

namespace A133280.P12945686445840281385
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (2 - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)).toNat 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + n

end

end A133280.P12945686445840281385

namespace A133280

/-- `∑[C(2-char[∑[n]], 2)]+n` -/
def P12945686445840281385.Spec : Prop :=
  ∀ n, (P12945686445840281385.a n : ℤ) = A133280 n

end A133280

/-! ## A133280.P17118290045856835082

`a(n-1)+2-char[∑[n]]` with `a(0)=0`
-/

namespace A133280.P17118290045856835082
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + (2 - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ))

end

end A133280.P17118290045856835082

namespace A133280

/-- `a(n-1)+2-char[∑[n]]` -/
def P17118290045856835082.Spec : Prop :=
  ∀ n, P17118290045856835082.a n = A133280 n

end A133280

/-! ## A133280.P6471340450640780833

`2-(char[∑[n]]-a(n-1))` with `a(0)=0`
-/

namespace A133280.P6471340450640780833
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  2 - (((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) - a (n - 1))

end

end A133280.P6471340450640780833

namespace A133280

/-- `2-(char[∑[n]]-a(n-1))` -/
def P6471340450640780833.Spec : Prop :=
  ∀ n, P6471340450640780833.a n = A133280 n

end A133280

/-! ## A133280.P16980432554992588911

`record[n*(-1)^n]-∑[char[∑[n+1]]]`
-/

namespace A133280.P16980432554992588911
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (-1) ^ n

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

end

end A133280.P16980432554992588911

namespace A133280

/-- `record[n*(-1)^n]-∑[char[∑[n+1]]]` -/
def P16980432554992588911.Spec : Prop :=
  ∀ n, P16980432554992588911.a n = A133280 n

end A133280

/-! ## A133280.P3401508435903339202

`abs(comp[C(n, 2)-1]-n-(n+1)-n)`
-/

namespace A133280.P3401508435903339202
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose n 2 : ℤ) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - (n : ℤ) - (n + 1 : ℤ) - (n : ℤ)|

end

end A133280.P3401508435903339202

namespace A133280

/-- `abs(comp[C(n, 2)-1]-n-(n+1)-n)` -/
def P3401508435903339202.Spec : Prop :=
  ∀ n, P3401508435903339202.a n = A133280 n

end A133280

/-! ## A133280.P17039542883257049825

`2*n+1-round(sqrt(2*n+1))%(n+2)`
-/

namespace A133280.P17039542883257049825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) - Int.tmod (SequenceMachineLib.roundAway (Real.sqrt (2 * n + 1 : ℝ))) (n + 2 : ℤ)

end

end A133280.P17039542883257049825

namespace A133280

/-- `2*n+1-round(sqrt(2*n+1))%(n+2)` -/
def P17039542883257049825.Spec : Prop :=
  ∀ n, P17039542883257049825.a n = A133280 n

end A133280

/-! ## A133280.P198313246409334532

`(2*n*round(sqrt(2*(n+1))))%(2*n+1)`
-/

namespace A133280.P198313246409334532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((2 * n : ℤ) * SequenceMachineLib.roundAway (Real.sqrt (2 * (n + 1) : ℝ))) (2 * n + 1 : ℤ)

end

end A133280.P198313246409334532

namespace A133280

/-- `(2*n*round(sqrt(2*(n+1))))%(2*n+1)` -/
def P198313246409334532.Spec : Prop :=
  ∀ n, P198313246409334532.a n = A133280 n

end A133280

/-! ## A133280.P592995172146001691

`A083920(n)+n`
-/

namespace A133280.P592995172146001691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083920 n + (n : ℤ)

end

end A133280.P592995172146001691

namespace A133280

/-- `A083920(n)+n` -/
def P592995172146001691.Spec : Prop :=
  ∀ n, P592995172146001691.a n = A133280 n

end A133280

/-! ## A133280.P109636495171070025

`∑[A238303(n)]-1`
-/

namespace A133280.P109636495171070025
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238303 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A133280.P109636495171070025

namespace A133280

/-- `∑[A238303(n)]-1` -/
def P109636495171070025.Spec : Prop :=
  ∀ n, P109636495171070025.a n = A133280 n

end A133280

/-! ## A133280.P4722958737550606714

`∑[2-A073423(n)]`
-/

namespace A133280.P4722958737550606714
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A073423 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A133280.P4722958737550606714

namespace A133280

/-- `∑[2-A073423(n)]` -/
def P4722958737550606714.Spec : Prop :=
  ∀ n, P4722958737550606714.a n = A133280 n

end A133280

/-! ## A133280.P5426594804672961522

`A001614(n+1)-1`
-/

namespace A133280.P5426594804672961522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001614 (n + 1) - 1

end

end A133280.P5426594804672961522

namespace A133280

/-- `A001614(n+1)-1` -/
def P5426594804672961522.Spec : Prop :=
  ∀ n, P5426594804672961522.a n = A133280 n

end A133280

/-! ## A133280.P16301623451642778609

`2*n-A003056(n)`
-/

namespace A133280.P16301623451642778609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - A003056 n

end

end A133280.P16301623451642778609

namespace A133280

/-- `2*n-A003056(n)` -/
def P16301623451642778609.Spec : Prop :=
  ∀ n, P16301623451642778609.a n = A133280 n

end A133280

/-! ## A133280.P15047651624411885541

`∑[A123110(n)+1]-2`
-/

namespace A133280.P15047651624411885541
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123110 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 2

end

end A133280.P15047651624411885541

namespace A133280

/-- `∑[A123110(n)+1]-2` -/
def P15047651624411885541.Spec : Prop :=
  ∀ n, P15047651624411885541.a n = A133280 n

end A133280

/-! ## A133280.P15105094499912757958

`∑[2-A010054(n)]-1`
-/

namespace A133280.P15105094499912757958
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A010054 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A133280.P15105094499912757958

namespace A133280

/-- `∑[2-A010054(n)]-1` -/
def P15105094499912757958.Spec : Prop :=
  ∀ n, P15105094499912757958.a n = A133280 n

end A133280

/-! ## A133280.P12090770110258767529

`∑[3-A035214(n)]-1`
-/

namespace A133280.P12090770110258767529
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - A035214 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A133280.P12090770110258767529

namespace A133280

/-- `∑[3-A035214(n)]-1` -/
def P12090770110258767529.Spec : Prop :=
  ∀ n, P12090770110258767529.a n = A133280 n

end A133280

/-! ## A133280.P3801712099144447635

`∑[2-A073424(n)]-2`
-/

namespace A133280.P3801712099144447635
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A073424 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 2

end

end A133280.P3801712099144447635

namespace A133280

/-- `∑[2-A073424(n)]-2` -/
def P3801712099144447635.Spec : Prop :=
  ∀ n, P3801712099144447635.a n = A133280 n

end A133280

/-!
# A133283: Numbers k such that 30*k^2 + 6 is a square.

The programs for A133283, the canonical program `A133283.P7411810508671841682` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A133283 has offset 1).

The definition of A133283 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A133283.P7411810508671841682

`22*a(n-1)-a(n-2)` with `a(0)=1, a(1)=23`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A133283

/-- `22*a(n-1)-a(n-2)` -/
def P7411810508671841682.Spec : Prop :=
  ∀ n, P7411810508671841682.a n = A133283 (n + 1)

theorem P7411810508671841682.correct : P7411810508671841682.Spec := by
  intro n
  simp only [A133283, Nat.add_sub_cancel]

end A133283

/-! ## A133283.P6032016038288875231

`ogf((1+x)/(1-22x+x^2))`
-/

namespace A133283.P6032016038288875231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1] [1, -22, 1] n

end

end A133283.P6032016038288875231

namespace A133283

/-- `ogf((1+x)/(1-22x+x^2))` -/
def P6032016038288875231.Spec : Prop :=
  ∀ n, P6032016038288875231.a n = A133283 (n + 1)

end A133283

/-! ## A133283.P15124769123914273608

`A153318(2*n)`
-/

namespace A133283.P15124769123914273608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153318 (2 * n)

end

end A133283.P15124769123914273608

namespace A133283

/-- `A153318(2*n)` -/
def P15124769123914273608.Spec : Prop :=
  ∀ n, P15124769123914273608.a n = A133283 (n + 1)

end A133283

/-! ## A133283.P1195751617920410039

`∑[A090730(n)]-1`
-/

namespace A133283.P1195751617920410039
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090730 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A133283.P1195751617920410039

namespace A133283

/-- `∑[A090730(n)]-1` -/
def P1195751617920410039.Spec : Prop :=
  ∀ n, P1195751617920410039.a n = A133283 (n + 1)

end A133283

/-! ## A133283.P13594303512250808149

`A041048(2*n)/5`
-/

namespace A133283.P13594303512250808149
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041048 (2 * n) : ℚ) / 5

end

end A133283.P13594303512250808149

namespace A133283

/-- `A041048(2*n)/5` -/
def P13594303512250808149.Spec : Prop :=
  ∀ n, P13594303512250808149.a n = (A133283 (n + 1) : ℚ)

end A133283

/-! ## A133283.P16559013779830955426

`∑[2*A077422(n)]-1`
-/

namespace A133283.P16559013779830955426
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A077422 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A133283.P16559013779830955426

namespace A133283

/-- `∑[2*A077422(n)]-1` -/
def P16559013779830955426.Spec : Prop :=
  ∀ n, P16559013779830955426.a n = A133283 (n + 1)

end A133283

/-! ## A133283.P16456096290434527983

`2*A133285(n+1)-1`
-/

namespace A133283.P16456096290434527983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A133285 (n + 1) - 1

end

end A133283.P16456096290434527983

namespace A133283

/-- `2*A133285(n+1)-1` -/
def P16456096290434527983.Spec : Prop :=
  ∀ n, P16456096290434527983.a n = A133283 (n + 1)

end A133283

/-! ## A133283.P8729731846679348953

`∑[A090730(n)^A178334(n)]`
-/

namespace A133283.P8729731846679348953
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A090730 n : ℚ) ^ (A178334 n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A133283.P8729731846679348953

namespace A133283

/-- `∑[A090730(n)^A178334(n)]` -/
def P8729731846679348953.Spec : Prop :=
  ∀ n, P8729731846679348953.a n = (A133283 (n + 1) : ℚ)

end A133283

/-! ## A133283.P14791958439381125099

`2*A077421(n)-A157014(n+1)`
-/

namespace A133283.P14791958439381125099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A077421 n - A157014 (n + 1)

end

end A133283.P14791958439381125099

namespace A133283

/-- `2*A077421(n)-A157014(n+1)` -/
def P14791958439381125099.Spec : Prop :=
  ∀ n, P14791958439381125099.a n = A133283 (n + 1)

end A133283

/-! ## A133283.P11943899602688811595

`A041049(2*n+1)-A041049(2*n)`
-/

namespace A133283.P11943899602688811595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041049 (2 * n + 1) - A041049 (2 * n)

end

end A133283.P11943899602688811595

namespace A133283

/-- `A041049(2*n+1)-A041049(2*n)` -/
def P11943899602688811595.Spec : Prop :=
  ∀ n, P11943899602688811595.a n = A133283 (n + 1)

end A133283

/-!
# A133284: Indices of the 12-gonal numbers which are also centered 12-gonal number or numbers X such that 30*X^2-24*X+3 is a square.

The programs for A133284, there is no canonical definition to state claims against.
-/

/-! ## A133284.P12389589597731894304

`A157097(n)/5`
-/

namespace A133284.P12389589597731894304
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A157097 n : ℚ) / 5

end

end A133284.P12389589597731894304

/-! ## A133284.P11819532697841819009

`ceil(A133275(n+1)/5)`
-/

namespace A133284.P11819532697841819009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A133275 (n + 1) : ℚ) / 5⌉

end

end A133284.P11819532697841819009

/-! ## A133284.P4370845008233531718

`round(3*A157014(n+1)/5)`
-/

namespace A133284.P4370845008233531718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((3 * A157014 (n + 1) : ℚ) / 5)

end

end A133284.P4370845008233531718

/-! ## A133284.P3203076371963652829

`(3*A041049(2*n)+2)/5`
-/

namespace A133284.P3203076371963652829
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 * A041049 (2 * n) + 2 : ℚ) / 5

end

end A133284.P3203076371963652829

/-! ## A133284.P8661709980251982601

`or(round(A133275(n+1)/5), A256434(n))`
-/

namespace A133284.P8661709980251982601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (SequenceMachineLib.roundAway ((A133275 (n + 1) : ℚ) / 5)) (A256434 n)

end

end A133284.P8661709980251982601

/-!
# A133285: Indices of the centered 12-gonal numbers which are also 12-gonal number, or numbers X such that 120*X^2-120*X+36 is a square.

The programs for A133285, there is no canonical definition to state claims against.
-/

/-! ## A133285.P13206487291949405355

`∑[ogf((1-11x)/(1-22x+x^2))]`
-/

namespace A133285.P13206487291949405355
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -11] [1, -22, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A133285.P13206487291949405355

/-! ## A133285.P3958958962940771821

`∑[22*a(n-1)-a(n-2)]` with `a(0)=1, a(1)=11`
-/

namespace A133285.P3958958962940771821
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 11] fun n f1 =>
  22 * f1 (n - 1) - f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A133285.P3958958962940771821

/-! ## A133285.P3835972945592051803

`∑[A077422(n)]`
-/

namespace A133285.P3835972945592051803
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077422 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A133285.P3835972945592051803

/-! ## A133285.P18101699023764057840

`∑[A090730(n)/2]`
-/

namespace A133285.P18101699023764057840
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A090730 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A133285.P18101699023764057840

/-! ## A133285.P8107053687637458873

`A157096(n)/5+1`
-/

namespace A133285.P8107053687637458873
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A157096 n : ℚ) / 5 + 1

end

end A133285.P8107053687637458873

/-! ## A133285.P13881617763636968291

`ceil(A133283(n+1)/2)`
-/

namespace A133285.P13881617763636968291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A133283 (n + 1) : ℚ) / 2⌉

end

end A133285.P13881617763636968291

/-! ## A133285.P10505670175502090892

`∑[2*A322707(n)+1]`
-/

namespace A133285.P10505670175502090892
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A322707 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A133285.P10505670175502090892

/-! ## A133285.P9292240067756987336

`(A153318(2*n)+1)/2`
-/

namespace A133285.P9292240067756987336
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A153318 (2 * n) + 1 : ℚ) / 2

end

end A133285.P9292240067756987336

/-! ## A133285.P2322266661207027141

`A077421(n)+1-A254782(n+1)`
-/

namespace A133285.P2322266661207027141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077421 n + (1 - A254782 (n + 1))

end

end A133285.P2322266661207027141

/-! ## A133285.P15991394161262188420

`∑[A041218(2*n+1)-A041218(2*n)]`
-/

namespace A133285.P15991394161262188420
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041218 (2 * n + 1) - A041218 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A133285.P15991394161262188420

/-!
# A133286: a(n) is the difference by which n^n overestimates the value of (1/2) Sum_{k>=0} k^n/2^k.

The programs for A133286, there is no canonical definition to state claims against.
-/

/-! ## A133286.P11077289921480701439

`A000312(n)-A000670(n)`
-/

namespace A133286.P11077289921480701439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000312 n - A000670 n

end

end A133286.P11077289921480701439

/-! ## A133286.P15072421168358795804

`n^n-A122101(∑[n])`
-/

namespace A133286.P15072421168358795804
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ n : ℤ) - A122101 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A133286.P15072421168358795804

/-! ## A133286.P13727797568020641732

`n^n-(A052875(n)+1)`
-/

namespace A133286.P13727797568020641732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ n : ℤ) - (A052875 n + 1)

end

end A133286.P13727797568020641732

/-! ## A133286.P13046100783263268328

`n^n-ceil(A000629(n)/2)`
-/

namespace A133286.P13046100783263268328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ n : ℤ) - ⌈(A000629 n : ℚ) / 2⌉

end

end A133286.P13046100783263268328

/-! ## A133286.P8994634477239832473

`n^n-or(1, A122101(C(n+1, 2)))`
-/

namespace A133286.P8994634477239832473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ n : ℤ) - Int.lor 1 (A122101 (Nat.choose (n + 1) 2))

end

end A133286.P8994634477239832473

/-! ## A133286.P10160097140718252983

`A245733(A179865(n+1))`
-/

namespace A133286.P10160097140718252983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245733 (A179865 (n + 1)).toNat

end

end A133286.P10160097140718252983

/-! ## A133286.P11731721898737441296

`A245733(A065033(n²+n))`
-/

namespace A133286.P11731721898737441296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245733 (A065033 (n ^ 2 + n)).toNat

end

end A133286.P11731721898737441296

/-! ## A133286.P9304285822973852337

`A245733(∑[n])%A000312(n)`
-/

namespace A133286.P9304285822973852337
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A245733 (∑ j ∈ Finset.range (n + 1), f1 j)) (A000312 n)

end

end A133286.P9304285822973852337

/-! ## A133286.P13242758912232699247

`A245733(A007318(A055998(n)))`
-/

namespace A133286.P13242758912232699247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245733 (A007318 (A055998 n).toNat).toNat

end

end A133286.P13242758912232699247

/-! ## A133286.P2682920249137478052

`A245733(A000217(A000007(n)+n))`
-/

namespace A133286.P2682920249137478052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245733 (A000217 (A000007 n + (n : ℤ)).toNat).toNat

end

end A133286.P2682920249137478052

/-!
# A133287: Decimal numbers that when converted to hexadecimal produce a number that uses the same digits as the original number.

The programs for A133287, there is no canonical definition to state claims against.
-/

/-! ## A133287.P7473746247892743410

`A133377(lcm(n+1, A008289(n+1)))`
-/

namespace A133287.P7473746247892743410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133377 (Int.lcm (n + 1 : ℤ) (A008289 (n + 1)))

end

end A133287.P7473746247892743410

/-! ## A133287.P18390425715695849171

`A185063(A293815(n))+A133377(n+1)`
-/

namespace A133287.P18390425715695849171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185063 (A293815 n).toNat + A133377 (n + 1)

end

end A133287.P18390425715695849171

/-! ## A133287.P11692281705483883727

`A133377(n+1)*A327482(A056940(n))`
-/

namespace A133287.P11692281705483883727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133377 (n + 1) * A327482 (A056940 n).toNat

end

end A133287.P11692281705483883727

/-! ## A133287.P11381325081135769377

`A118765(A062388(n))`
-/

namespace A133287.P11381325081135769377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118765 (A062388 n).toNat

end

end A133287.P11381325081135769377

/-! ## A133287.P1072242190101194856

`A118765(A070244(n))`
-/

namespace A133287.P1072242190101194856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118765 (A070244 n).toNat

end

end A133287.P1072242190101194856

/-!
# A133289: Riordan matrix T from A084358 (lists of sets of lists) inverse to the Riordan matrix TI = 2I-A129652 formed from A000262 (number of sets of lists) and reciprocal under a partition transform.

The programs for A133289, there is no canonical definition to state claims against.
-/

/-! ## A133289.P15856557267435776240

`A007318(n)*A084358(A025581(n))`
-/

namespace A133289.P15856557267435776240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A084358 (A025581 n).toNat

end

end A133289.P15856557267435776240

/-! ## A133289.P5178767143079650085

`abs(A084358(A025581(n))*A130595(n))`
-/

namespace A133289.P5178767143079650085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A084358 (A025581 n).toNat * A130595 n|

end

end A133289.P5178767143079650085

/-! ## A133289.P14225228619508791403

`Δ[A102363(n)]*A084358(A025581(n))`
-/

namespace A133289.P14225228619508791403
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102363 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A084358 (A025581 n).toNat

end

end A133289.P14225228619508791403

/-! ## A133289.P11634433842543994788

`A074909(A056943(n))*A084358(A025581(n))`
-/

namespace A133289.P11634433842543994788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074909 (A056943 n).toNat * A084358 (A025581 n).toNat

end

end A133289.P11634433842543994788

/-!
# A133290: Prime powers of the form (6n+1)^k.

The programs for A133290, the canonical program `A133290.P1520333583122382615` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A133290 has offset 1).

The definition of A133290 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4823 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A133290.P8690821717448016325

`∩[A004611(n+1), A137827(n+1)]`
-/

namespace A133290.P8690821717448016325
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004611 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137827 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A133290.P8690821717448016325

namespace A133290

/-- `∩[A004611(n+1), A137827(n+1)]` -/
def P8690821717448016325.Spec : Prop :=
  ∀ n, (P8690821717448016325.a n : ℤ) = A133290 (n + 1)

end A133290

/-! ## A133290.P1489240649999495448

`∩[A074583(n+1), A129904(n+1)]`
-/

namespace A133290.P1489240649999495448
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074583 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129904 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A133290.P1489240649999495448

namespace A133290

/-- `∩[A074583(n+1), A129904(n+1)]` -/
def P1489240649999495448.Spec : Prop :=
  ∀ n, (P1489240649999495448.a n : ℤ) = A133290 (n + 1)

end A133290

/-! ## A133290.P6281742398159422760

`∩[A129904(n+1), A061345(n)]`
-/

namespace A133290.P6281742398159422760
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129904 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061345 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A133290.P6281742398159422760

namespace A133290

/-- `∩[A129904(n+1), A061345(n)]` -/
def P6281742398159422760.Spec : Prop :=
  ∀ n, (P6281742398159422760.a n : ℤ) = A133290 (n + 1)

end A133290

/-! ## A133290.P4314139248573761862

`∩[A004611(n+1), A128603(n+1)]`
-/

namespace A133290.P4314139248573761862
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004611 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128603 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A133290.P4314139248573761862

namespace A133290

/-- `∩[A004611(n+1), A128603(n+1)]` -/
def P4314139248573761862.Spec : Prop :=
  ∀ n, (P4314139248573761862.a n : ℤ) = A133290 (n + 1)

end A133290

/-! ## A133290.P17997417948656784964

`∩[A004611(n+1), A096165(n+1)]`
-/

namespace A133290.P17997417948656784964
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004611 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096165 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A133290.P17997417948656784964

namespace A133290

/-- `∩[A004611(n+1), A096165(n+1)]` -/
def P17997417948656784964.Spec : Prop :=
  ∀ n, (P17997417948656784964.a n : ℤ) = A133290 (n + 1)

end A133290

/-! ## A133290.P3588809048907686546

`∩[A004611(n+1), A185189(n+1)]`
-/

namespace A133290.P3588809048907686546
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004611 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185189 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A133290.P3588809048907686546

namespace A133290

/-- `∩[A004611(n+1), A185189(n+1)]` -/
def P3588809048907686546.Spec : Prop :=
  ∀ n, (P3588809048907686546.a n : ℤ) = A133290 (n + 1)

end A133290

/-! ## A133290.P5220946142091913535

`∩[A000961(n+1), A129904(n+1)]`
-/

namespace A133290.P5220946142091913535
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000961 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129904 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A133290.P5220946142091913535

namespace A133290

/-- `∩[A000961(n+1), A129904(n+1)]` -/
def P5220946142091913535.Spec : Prop :=
  ∀ n, (P5220946142091913535.a n : ℤ) = A133290 (n + 1)

end A133290

/-! ## A133290.P943255064510415234

`∩[A000961(n+2), A004611(n+2)]`
-/

namespace A133290.P943255064510415234
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000961 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004611 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A133290.P943255064510415234

namespace A133290

/-- `∩[A000961(n+2), A004611(n+2)]` -/
def P943255064510415234.Spec : Prop :=
  ∀ n, (P943255064510415234.a n : ℤ) = A133290 (n + 1)

end A133290

/-! ## A133290.P1520333583122382615

`filter[A004611(n+1), A069513(#)]`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A133290

/-- `filter[A004611(n+1), A069513(#)]` -/
def P1520333583122382615.Spec : Prop :=
  ∀ n, P1520333583122382615.a n = A133290 (n + 1)

theorem P1520333583122382615.correct : P1520333583122382615.Spec := by
  intro n
  simp only [A133290, Nat.add_sub_cancel]

end A133290

/-! ## A133290.P7607267062601043198

`filter[A129904(n+1), A069513(#)]`
-/

namespace A133290.P7607267062601043198
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129904 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A069513 (f1 j).toNat = 1) n)

end

end A133290.P7607267062601043198

namespace A133290

/-- `filter[A129904(n+1), A069513(#)]` -/
def P7607267062601043198.Spec : Prop :=
  ∀ n, P7607267062601043198.a n = A133290 (n + 1)

end A133290

/-! ## A133290.P3817802579091739358

`filter[A004611(n+1), A354982(#)]`
-/

namespace A133290.P3817802579091739358
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004611 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354982 (f1 j).toNat = 1) n)

end

end A133290.P3817802579091739358

namespace A133290

/-- `filter[A004611(n+1), A354982(#)]` -/
def P3817802579091739358.Spec : Prop :=
  ∀ n, P3817802579091739358.a n = A133290 (n + 1)

end A133290

/-! ## A133290.P8948100086656741452

`∩[A004611(n+1), A071139(n+1)]`
-/

namespace A133290.P8948100086656741452
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004611 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071139 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A133290.P8948100086656741452

namespace A133290

/-- `∩[A004611(n+1), A071139(n+1)]` -/
def P8948100086656741452.Spec : Prop :=
  ∀ n, (P8948100086656741452.a n : ℤ) = A133290 (n + 1)

end A133290

/-! ## A133290.P11294662430237168706

`∩[A004611(n+1), A086486(n+1)]`
-/

namespace A133290.P11294662430237168706
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004611 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086486 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A133290.P11294662430237168706

namespace A133290

/-- `∩[A004611(n+1), A086486(n+1)]` -/
def P11294662430237168706.Spec : Prop :=
  ∀ n, (P11294662430237168706.a n : ℤ) = A133290 (n + 1)

end A133290

/-! ## A133290.P16093652131971467391

`∩[A004611(n+1), A089352(n+1)]`
-/

namespace A133290.P16093652131971467391
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004611 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089352 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A133290.P16093652131971467391

namespace A133290

/-- `∩[A004611(n+1), A089352(n+1)]` -/
def P16093652131971467391.Spec : Prop :=
  ∀ n, (P16093652131971467391.a n : ℤ) = A133290 (n + 1)

end A133290

/-! ## A133290.P102927958147994225

`filter[A034017(n+2), A354982(#)]`
-/

namespace A133290.P102927958147994225
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034017 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354982 (f1 j).toNat = 1) n)

end

end A133290.P102927958147994225

namespace A133290

/-- `filter[A034017(n+2), A354982(#)]` -/
def P102927958147994225.Spec : Prop :=
  ∀ n, P102927958147994225.a n = A133290 (n + 1)

end A133290

/-! ## A133290.P16839674452216594066

`filter[A364614(n+1), A354982(#)]`
-/

namespace A133290.P16839674452216594066
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364614 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354982 (f1 j).toNat = 1) n)

end

end A133290.P16839674452216594066

namespace A133290

/-- `filter[A364614(n+1), A354982(#)]` -/
def P16839674452216594066.Spec : Prop :=
  ∀ n, P16839674452216594066.a n = A133290 (n + 1)

end A133290

/-! ## A133290.P2907566680245788371

`filter[A004611(n+1), A211487(#)]`
-/

namespace A133290.P2907566680245788371
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004611 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A211487 (f1 j).toNat = 1) n)

end

end A133290.P2907566680245788371

namespace A133290

/-- `filter[A004611(n+1), A211487(#)]` -/
def P2907566680245788371.Spec : Prop :=
  ∀ n, P2907566680245788371.a n = A133290 (n + 1)

end A133290

/-! ## A133290.P4808919191255155321

`filter[A129904(n+1), A211487(#)]`
-/

namespace A133290.P4808919191255155321
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129904 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A211487 (f1 j).toNat = 1) n)

end

end A133290.P4808919191255155321

namespace A133290

/-- `filter[A129904(n+1), A211487(#)]` -/
def P4808919191255155321.Spec : Prop :=
  ∀ n, P4808919191255155321.a n = A133290 (n + 1)

end A133290

/-! ## A133290.P8965111882287002201

`filter[A004611(n+1), A340373(#)]`
-/

namespace A133290.P8965111882287002201
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004611 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A340373 (f1 j).toNat = 1) n)

end

end A133290.P8965111882287002201

namespace A133290

/-- `filter[A004611(n+1), A340373(#)]` -/
def P8965111882287002201.Spec : Prop :=
  ∀ n, P8965111882287002201.a n = A133290 (n + 1)

end A133290

/-! ## A133290.P17867369979353965911

`filter[A061345(n+1), A319691(#)]`
-/

namespace A133290.P17867369979353965911
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061345 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A319691 (f1 j).toNat = 1) n)

end

end A133290.P17867369979353965911

namespace A133290

/-- `filter[A061345(n+1), A319691(#)]` -/
def P17867369979353965911.Spec : Prop :=
  ∀ n, P17867369979353965911.a n = A133290 (n + 1)

end A133290

/-!
# A133291: a(n) = m such that t(n) +/ - m are +-primes, where t(n) = n(n+1)/2.

The programs for A133291, there is no canonical definition to state claims against.
-/

/-! ## A133291.P15613188442725014959

`A087711(eq[0, A120060(n)])`
-/

namespace A133291.P15613188442725014959
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120060 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087711 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A133291.P15613188442725014959

/-! ## A133291.P16036528245620245651

`A087711(eq[0, A135898(n)])`
-/

namespace A133291.P16036528245620245651
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135898 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087711 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A133291.P16036528245620245651

/-! ## A133291.P4597813400049774371

`A087711(eq[0, A136590(n)])`
-/

namespace A133291.P4597813400049774371
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136590 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087711 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A133291.P4597813400049774371

/-! ## A133291.P9676439998670429714

`A087711(eq[0, A357583(n)])`
-/

namespace A133291.P9676439998670429714
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357583 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087711 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A133291.P9676439998670429714

/-! ## A133291.P6284140496746717259

`A087711(lt[A120060(n), 1])`
-/

namespace A133291.P6284140496746717259
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120060 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087711 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A133291.P6284140496746717259

/-!
# A133292: Period 9: repeat [1, 1, 2, 4, 7, 2, 7, 4, 2].

The programs for A133292, the canonical program `A133292.P15948469382312105260` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A133292 has offset 0).

The definition of A133292 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A133292.P15948469382312105260

`a(n-9)` with `a(0)=1, a(1)=1, a(2)=2, a(3)=4, a(4)=7, a(5)=2, a(6)=7, a(7)=4, a(8)=2`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A133292

/-- `a(n-9)` -/
def P15948469382312105260.Spec : Prop :=
  ∀ n, (P15948469382312105260.a n : ℤ) = A133292 n

theorem P15948469382312105260.correct : P15948469382312105260.Spec := by
  intro n
  simp only [A133292]

end A133292

/-!
# A133293: First differences of A133292.

The programs for A133293, there is no canonical definition to state claims against.
-/

/-! ## A133293.P12987113419233105859

`A133292(A004086(n+1))-A133292(n)`
-/

namespace A133293.P12987113419233105859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133292 (A004086 (n + 1)).toNat - A133292 n

end

end A133293.P12987113419233105859

/-!
# A133294: a(n) = 2*a(n-1) + 10*a(n-2), a(0)=1, a(1)=1.

The programs for A133294, the canonical program `A133294.P13037932246011088056` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A133294 has offset 0).

The definition of A133294 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*a(n-1)+10*a(n-2)` (program `A133294.P13037932246011088056`, by `A133294.P13037932246011088056.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A133294.P13037932246011088056

`2*a(n-1)+10*a(n-2)` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A133294

/-- `2*a(n-1)+10*a(n-2)` -/
def P13037932246011088056.Spec : Prop :=
  ∀ n, (P13037932246011088056.a n : ℤ) = A133294 n

theorem P13037932246011088056.correct : P13037932246011088056.Spec := by
  intro n
  simp only [A133294]

end A133294

/-! ## A133294.P8397823867062674369

`A127261(n)/2`
-/

namespace A133294.P8397823867062674369
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A127261 n : ℚ) / 2

end

end A133294.P8397823867062674369

namespace A133294

/-- `A127261(n)/2` -/
def P8397823867062674369.Spec : Prop :=
  ∀ n, P8397823867062674369.a n = (A133294 n : ℚ)

end A133294

/-! ## A133294.P10787418824559322044

`ogf((-1+x)/(-1+2x+10x^2))`
-/

namespace A133294.P10787418824559322044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -1] [1, -2, -10] n

end

end A133294.P10787418824559322044

namespace A133294

/-- `ogf((-1+x)/(-1+2x+10x^2))` -/
def P10787418824559322044.Spec : Prop :=
  ∀ n, P10787418824559322044.a n = A133294 n

end A133294

/-! ## A133294.P16281371237219666079

`1/2*(1+sqrt(11))^n+1/2*(1-sqrt(11))^n`
-/

namespace A133294.P16281371237219666079
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((1 : ℚ) / 2 : ℝ) * (1 + Real.sqrt (11 : ℝ)) ^ n + ((1 : ℚ) / 2 : ℝ) * (1 - Real.sqrt (11 : ℝ)) ^ n

end

end A133294.P16281371237219666079

namespace A133294

/-- `1/2*(1+sqrt(11))^n+1/2*(1-sqrt(11))^n` -/
def P16281371237219666079.Spec : Prop :=
  ∀ n, P16281371237219666079.a n = (A133294 n : ℝ)

end A133294

/-! ## A133294.P7940912273199324332

`2*(2*3*a(n-2)-(a(n-2)-a(n-1)))` with `a(0)=1, a(1)=1`
-/

namespace A133294.P7940912273199324332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  2 * (2 * (3 * a (n - 2)) - (a (n - 2) - a (n - 1)))

end

end A133294.P7940912273199324332

namespace A133294

/-- `2*(2*3*a(n-2)-(a(n-2)-a(n-1)))` -/
def P7940912273199324332.Spec : Prop :=
  ∀ n, P7940912273199324332.a n = A133294 n

end A133294

/-! ## A133294.P2660863545913110680

`Δ[A274526(n)/2]`
-/

namespace A133294.P2660863545913110680
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A274526 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A133294.P2660863545913110680

namespace A133294

/-- `Δ[A274526(n)/2]` -/
def P2660863545913110680.Spec : Prop :=
  ∀ n, P2660863545913110680.a n = (A133294 n : ℚ)

end A133294

/-! ## A133294.P6872381827167812945

`A083101((n-1)%(n+1))`
-/

namespace A133294.P6872381827167812945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083101 (Int.tmod ((n : ℤ) - 1) (n + 1 : ℤ)).toNat

end

end A133294.P6872381827167812945

namespace A133294

/-- `A083101((n-1)%(n+1))` -/
def P6872381827167812945.Spec : Prop :=
  ∀ n, P6872381827167812945.a n = A133294 n

end A133294

/-! ## A133294.P2354694033476419016

`A083101(log2(A011782(n)))`
-/

namespace A133294.P2354694033476419016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083101 (SequenceMachineLib.roundAway (Real.logb 2 (A011782 n : ℝ))).toNat

end

end A133294.P2354694033476419016

namespace A133294

/-- `A083101(log2(A011782(n)))` -/
def P2354694033476419016.Spec : Prop :=
  ∀ n, P2354694033476419016.a n = A133294 n

end A133294

/-! ## A133294.P16468782339901038938

`A083101(A289207(n+1))`
-/

namespace A133294.P16468782339901038938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083101 (A289207 (n + 1)).toNat

end

end A133294.P16468782339901038938

namespace A133294

/-- `A083101(A289207(n+1))` -/
def P16468782339901038938.Spec : Prop :=
  ∀ n, P16468782339901038938.a n = A133294 n

end A133294

/-! ## A133294.P13308303746996106160

`A083101(A028310(n)-1)`
-/

namespace A133294.P13308303746996106160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083101 (A028310 n - 1).toNat

end

end A133294.P13308303746996106160

namespace A133294

/-- `A083101(A028310(n)-1)` -/
def P13308303746996106160.Spec : Prop :=
  ∀ n, P13308303746996106160.a n = A133294 n

end A133294

/-! ## A133294.P12905414244189087156

`A083101(A004273(n)-n)`
-/

namespace A133294.P12905414244189087156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083101 (A004273 n - (n : ℤ)).toNat

end

end A133294.P12905414244189087156

namespace A133294

/-- `A083101(A004273(n)-n)` -/
def P12905414244189087156.Spec : Prop :=
  ∀ n, P12905414244189087156.a n = A133294 n

end A133294

/-! ## A133294.P5763935157910806499

`A083101(record[A006257(n)]-n)`
-/

namespace A133294.P5763935157910806499
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006257 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083101 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - (n : ℤ)).toNat

end

end A133294.P5763935157910806499

namespace A133294

/-- `A083101(record[A006257(n)]-n)` -/
def P5763935157910806499.Spec : Prop :=
  ∀ n, P5763935157910806499.a n = A133294 n

end A133294

/-! ## A133294.P2129367140104786726

`A083101(A289207(2*n)/2)`
-/

namespace A133294.P2129367140104786726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083101 (SequenceMachineLib.roundAway ((A289207 (2 * n) : ℚ) / 2)).toNat

end

end A133294.P2129367140104786726

namespace A133294

/-- `A083101(A289207(2*n)/2)` -/
def P2129367140104786726.Spec : Prop :=
  ∀ n, P2129367140104786726.a n = A133294 n

end A133294

/-! ## A133294.P3900215455097212388

`A083101((n-1)*A178334(n))`
-/

namespace A133294.P3900215455097212388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083101 (((n : ℤ) - 1) * A178334 n).toNat

end

end A133294.P3900215455097212388

namespace A133294

/-- `A083101((n-1)*A178334(n))` -/
def P3900215455097212388.Spec : Prop :=
  ∀ n, P3900215455097212388.a n = A133294 n

end A133294

/-!
# A133296: Smallest number whose sum of digits is 2n.

The programs for A133296, the canonical program `A133296.P4224983109469996391` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A133296 has offset 0).

The definition of A133296 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A133296.P4224983109469996391

`A051885(2*n)`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A133296

/-- `A051885(2*n)` -/
def P4224983109469996391.Spec : Prop :=
  ∀ n, P4224983109469996391.a n = A133296 n

theorem P4224983109469996391.correct : P4224983109469996391.Spec := by
  intro n
  simp only [A133296]

end A133296

/-! ## A133296.P17795911149995322561

`A037124(Δ[n²])-1`
-/

namespace A133296.P17795911149995322561
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037124 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat - 1

end

end A133296.P17795911149995322561

namespace A133296

/-- `A037124(Δ[n²])-1` -/
def P17795911149995322561.Spec : Prop :=
  ∀ n, P17795911149995322561.a n = A133296 n

end A133296

/-! ## A133296.P1669383564454505357

`record[A051885(and(n, n+1))]`
-/

namespace A133296.P1669383564454505357
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051885 (Nat.land n (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A133296.P1669383564454505357

namespace A133296

/-- `record[A051885(and(n, n+1))]` -/
def P1669383564454505357.Spec : Prop :=
  ∀ n, P1669383564454505357.a n = A133296 n

end A133296

/-! ## A133296.P16951257139703843632

`record[A051885(n%or(1, n))]`
-/

namespace A133296.P16951257139703843632
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051885 (n % Nat.lor 1 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A133296.P16951257139703843632

namespace A133296

/-- `record[A051885(n%or(1, n))]` -/
def P16951257139703843632.Spec : Prop :=
  ∀ n, P16951257139703843632.a n = A133296 n

end A133296

/-! ## A133296.P5048992442244115787

`record[A051885(n)/(-1)^n]`
-/

namespace A133296.P5048992442244115787
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A051885 n : ℚ) / ((-1) ^ n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A133296.P5048992442244115787

namespace A133296

/-- `record[A051885(n)/(-1)^n]` -/
def P5048992442244115787.Spec : Prop :=
  ∀ n, P5048992442244115787.a n = (A133296 n : ℚ)

end A133296

/-!
# A133297: a(n) = n! * Sum_{k=1..n} (-1)^(k + 1) * n^(n - k - 1)/(n - k)!.

The programs for A133297, there is no canonical definition to state claims against.
-/

/-! ## A133297.P13767477105729002392

`A393142(A134189(n+1))`
-/

namespace A133297.P13767477105729002392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393142 (A134189 (n + 1)).toNat

end

end A133297.P13767477105729002392

/-! ## A133297.P903020629321010396

`A393142(A212342(n+1))`
-/

namespace A133297.P903020629321010396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393142 (A212342 (n + 1)).toNat

end

end A133297.P903020629321010396

/-! ## A133297.P8710501684982087556

`A393142(A347553(n+3))`
-/

namespace A133297.P8710501684982087556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393142 (A347553 (n + 3)).toNat

end

end A133297.P8710501684982087556

/-!
# A133299: Fractal sequence of the Stolarsky array, A035506.

The programs for A133299, there is no canonical definition to state claims against.
-/

/-! ## A133299.P16833183271258166766

`1+A098861(n+1)`
-/

namespace A133299.P16833183271258166766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + A098861 (n + 1)

end

end A133299.P16833183271258166766

/-! ## A133299.P18264646847453972101

`A002260(A064357(n+1))`
-/

namespace A133299.P18264646847453972101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (A064357 (n + 1)).toNat

end

end A133299.P18264646847453972101

/-! ## A133299.P9112326660103486313

`A002262(A064357(n+1)-1)+1`
-/

namespace A133299.P9112326660103486313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 (A064357 (n + 1) - 1).toNat + 1

end

end A133299.P9112326660103486313

/-! ## A133299.P12493363375567890495

`A348553(A098861(n+1))`
-/

namespace A133299.P12493363375567890495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348553 (A098861 (n + 1)).toNat

end

end A133299.P12493363375567890495

/-! ## A133299.P9990165127196228501

`A064357(A035506(A098861(A064357(A035506(n)))))`
-/

namespace A133299.P9990165127196228501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064357 (A035506 (A098861 (A064357 (A035506 n).toNat).toNat).toNat).toNat

end

end A133299.P9990165127196228501

