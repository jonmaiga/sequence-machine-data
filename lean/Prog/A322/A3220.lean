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
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C027
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B001.C010
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B007.C001
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
import Seq.Opaque.C025

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A322001: Digits of n interpreted in factorial base: a(Sum d_k*10^k) = Sum d_k*k!

The programs for A322001, there is no canonical definition to state claims against.
-/

/-! ## A322001.P2806492136911436645

`A244158(n)+char[A084646(n+4)]`
-/

namespace A322001.P2806492136911436645
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084646 (n + 4)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244158 n + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A322001.P2806492136911436645

/-! ## A322001.P9133674639898965713

`A244158(n)+char[∑[A280640(n+5)]]`
-/

namespace A322001.P9133674639898965713
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280640 (n + 5)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244158 n + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A322001.P9133674639898965713

/-! ## A322001.P1857792264308804545

`A244158(n)+char[A016778(2*n+3)]`
-/

namespace A322001.P1857792264308804545
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016778 (2 * n + 3)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244158 n + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A322001.P1857792264308804545

/-! ## A322001.P16763869371083314659

`A244158(n)+char[A198385(3*n+2)]`
-/

namespace A322001.P16763869371083314659
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198385 (3 * n + 2)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244158 n + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A322001.P16763869371083314659

/-! ## A322001.P4228527707996958009

`A244158(n)+char[A108580(2*n+5)]`
-/

namespace A322001.P4228527707996958009
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108580 (2 * n + 5)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244158 n + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A322001.P4228527707996958009

/-! ## A322001.P3445773048676100857

`A244158(n)+A054899(A054899(n))`
-/

namespace A322001.P3445773048676100857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244158 n + A054899 (A054899 n).toNat

end

end A322001.P3445773048676100857

/-! ## A322001.P3183650715240148903

`A244158(n)+A059995(A059995(n))`
-/

namespace A322001.P3183650715240148903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244158 n + A059995 (A059995 n).toNat

end

end A322001.P3183650715240148903

/-! ## A322001.P1254067227593868207

`A081594(n)%A000123(A244158(n))`
-/

namespace A322001.P1254067227593868207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A081594 n) (A000123 (A244158 n).toNat)

end

end A322001.P1254067227593868207

/-! ## A322001.P11734150400924950067

`A244158(n)+A010052(A343893(2*(n+1)))`
-/

namespace A322001.P11734150400924950067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244158 n + A010052 (A343893 (2 * (n + 1))).toNat

end

end A322001.P11734150400924950067

/-!
# A322003: Indices where A028897(A322000(n)) increases. Partial sums of A072170(n,10).

The programs for A322003, there is no canonical definition to state claims against.
-/

/-! ## A322003.P6664855138316797594

`A322010(A067043(n))`
-/

namespace A322003.P6664855138316797594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322010 (A067043 n).toNat

end

end A322003.P6664855138316797594

/-! ## A322003.P8712492904955040649

`A322010(eq[0, A138472(n)])`
-/

namespace A322003.P8712492904955040649
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138472 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322010 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A322003.P8712492904955040649

/-! ## A322003.P13804211086047950680

`A322010(lt[A138472(n), 1])`
-/

namespace A322003.P13804211086047950680
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138472 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322010 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A322003.P13804211086047950680

/-! ## A322003.P10140083761443338073

`record[A322010(n-A138472(n))]`
-/

namespace A322003.P10140083761443338073
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322010 ((n : ℤ) - A138472 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A322003.P10140083761443338073

/-! ## A322003.P8151472824728081960

`A322010(record[gcd(n, A138472(n))])`
-/

namespace A322003.P8151472824728081960
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A138472 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322010 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A322003.P8151472824728081960

/-!
# A322004: Index i of the smallest Fibonacci number > n such that Fib(i) - n is a prime, or 0 if no such index exists.

The programs for A322004, there is no canonical definition to state claims against.
-/

/-! ## A322004.P6727693393235915803

`A001177(A322005(n)+n)`
-/

namespace A322004.P6727693393235915803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001177 (A322005 n + (n : ℤ)).toNat

end

end A322004.P6727693393235915803

/-! ## A322004.P1463421146297321654

`A020344(A322005(n)+n)`
-/

namespace A322004.P1463421146297321654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020344 (A322005 n + (n : ℤ)).toNat

end

end A322004.P1463421146297321654

/-! ## A322004.P17202288496035591523

`A023183(A322005(n)+n)`
-/

namespace A322004.P17202288496035591523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023183 (A322005 n + (n : ℤ)).toNat

end

end A322004.P17202288496035591523

/-! ## A322004.P13315746702248464518

`A130233(A322005(n)+n)`
-/

namespace A322004.P13315746702248464518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130233 (A322005 n + (n : ℤ)).toNat

end

end A322004.P13315746702248464518

/-! ## A322004.P10934372930119724462

`A292032(A322005(n)+n)`
-/

namespace A322004.P10934372930119724462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292032 (A322005 n + (n : ℤ)).toNat

end

end A322004.P10934372930119724462

/-!
# A322005: Least prime p such that n + p is a Fibonacci number (A000045).

The programs for A322005, there is no canonical definition to state claims against.
-/

/-! ## A322005.P17908779187845039680

`A000045(A322004(n))-n`
-/

namespace A322005.P17908779187845039680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A322004 n).toNat - (n : ℤ)

end

end A322005.P17908779187845039680

/-! ## A322005.P1797157914970881956

`A001489(n)+A000045(A322004(n))`
-/

namespace A322005.P1797157914970881956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001489 n + A000045 (A322004 n).toNat

end

end A322005.P1797157914970881956

/-! ## A322005.P10439621615633186496

`A024000(n)+A000071(A322004(n))`
-/

namespace A322005.P10439621615633186496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024000 n + A000071 (A322004 n).toNat

end

end A322005.P10439621615633186496

/-! ## A322005.P1883276826658783157

`A000071(A322004(n))-A023443(n)`
-/

namespace A322005.P1883276826658783157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000071 (A322004 n).toNat - A023443 n

end

end A322005.P1883276826658783157

/-! ## A322005.P4712567472804585011

`A024000(n+1)+A000045(A322004(n))`
-/

namespace A322005.P4712567472804585011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024000 (n + 1) + A000045 (A322004 n).toNat

end

end A322005.P4712567472804585011

/-!
# A322007: a(n) = number of primes of the form p = 2n - q, where q is a prime or semiprime.

The programs for A322007, there is no canonical definition to state claims against.
-/

/-! ## A322007.P7594552012016168429

`A322006(2*n)`
-/

namespace A322007.P7594552012016168429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322006 (2 * n)

end

end A322007.P7594552012016168429

/-! ## A322007.P15024999883858599706

`A322006(round(acot(n)+n)+n)%(n+1)`
-/

namespace A322007.P15024999883858599706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A322006 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ)) + (n : ℤ)).toNat) (n + 1 : ℤ)

end

end A322007.P15024999883858599706

/-! ## A322007.P1716170037029722085

`A322006(abs(1-n)+1+n)%(n+1)`
-/

namespace A322007.P1716170037029722085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A322006 (|1 - (n : ℤ)| + 1 + (n : ℤ)).toNat) (n + 1 : ℤ)

end

end A322007.P1716170037029722085

/-! ## A322007.P3364640949468875587

`A135414(n+1)-A005713(A036440(n+1))`
-/

namespace A322007.P3364640949468875587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135414 (n + 1) - A005713 (A036440 (n + 1)).toNat

end

end A322007.P3364640949468875587

/-!
# A322008: 1/(1 - Integral_{x=0..1} x^(x^n) dx), rounded to the nearest integer.

The programs for A322008, the canonical program `A322008.P2431562433562107063` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A322008 has offset 0).

The definition of A322008 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A322008.P2431562433562107063

`floor((n+1)²+abs(2-n)/8)+1`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A322008

/-- `floor((n+1)²+abs(2-n)/8)+1` -/
def P2431562433562107063.Spec : Prop :=
  ∀ n, P2431562433562107063.a n = A322008 n

theorem P2431562433562107063.correct : P2431562433562107063.Spec := by
  intro n
  simp only [A322008]

end A322008

/-! ## A322008.P7212220821635584208

`ceil(∑[root(3, A281336(2*(n+2)))]²)`
-/

namespace A322008.P7212220821635584208
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (3 : ℝ) ^ (1 / (A281336 (2 * (n + 2)) : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(∑ j ∈ Finset.range (n + 1), f1 j) ^ 2⌉

end

end A322008.P7212220821635584208

namespace A322008

/-- `ceil(∑[root(3, A281336(2*(n+2)))]²)` -/
def P7212220821635584208.Spec : Prop :=
  ∀ n, P7212220821635584208.a n = A322008 n

end A322008

/-! ## A322008.P10641100623820027801

`∑[A124778(2*n+1)+A004277(n)]`
-/

namespace A322008.P10641100623820027801
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124778 (2 * n + 1) + A004277 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A322008.P10641100623820027801

namespace A322008

/-- `∑[A124778(2*n+1)+A004277(n)]` -/
def P10641100623820027801.Spec : Prop :=
  ∀ n, P10641100623820027801.a n = A322008 n

end A322008

/-! ## A322008.P16145327137529473267

`∑[A040001(A290389(n)+1)+n+n]`
-/

namespace A322008.P16145327137529473267
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040001 (A290389 n + 1).toNat + (n : ℤ) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A322008.P16145327137529473267

namespace A322008

/-- `∑[A040001(A290389(n)+1)+n+n]` -/
def P16145327137529473267.Spec : Prop :=
  ∀ n, P16145327137529473267.a n = A322008 n

end A322008

/-! ## A322008.P10649583478838875040

`record[A306679(n+1)]`
-/

namespace A322008.P10649583478838875040
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306679 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A322008.P10649583478838875040

namespace A322008

/-- `record[A306679(n+1)]` -/
def P10649583478838875040.Spec : Prop :=
  ∀ n, P10649583478838875040.a n = A322008 n

end A322008

/-!
# A322009: 1/(Integral_{x=0..1} x^(x^(x^n)) dx - 1/2), rounded to the nearest integer.

The programs for A322009, there is no canonical definition to state claims against.
-/

/-! ## A322009.P18390992195477258985

`A006003(n+2)-A075743(A001764(n))`
-/

namespace A322009.P18390992195477258985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006003 (n + 2) - A075743 (A001764 n).toNat

end

end A322009.P18390992195477258985

/-! ## A322009.P4566636247331371632

`A006003(n+2)-A123594(A054391(n))`
-/

namespace A322009.P4566636247331371632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006003 (n + 2) - A123594 (A054391 n).toNat

end

end A322009.P4566636247331371632

/-! ## A322009.P13612975598355528655

`A006003(n+2)-A237048(A000088(n))`
-/

namespace A322009.P13612975598355528655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006003 (n + 2) - A237048 (A000088 n).toNat

end

end A322009.P13612975598355528655

/-! ## A322009.P3410311980944048667

`A006003(n+2)-A096270(A354553(n))`
-/

namespace A322009.P3410311980944048667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006003 (n + 2) - A096270 (A354553 n).toNat

end

end A322009.P3410311980944048667

/-!
# A322011: Number of distinct chromatic symmetric functions of spanning hypergraphs (or antichain covers) on n vertices.

The programs for A322011, there is no canonical definition to state claims against.
-/

/-! ## A322011.P12105392874746877204

`(char[4]+n)*n!+1`
-/

namespace A322011.P12105392874746877204
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = n then 1 else 0) + n) * Nat.factorial n + 1

end

end A322011.P12105392874746877204

/-!
# A322012: Number of s-positive simple labeled graphs with n vertices.

The programs for A322012, there is no canonical definition to state claims against.
-/

/-! ## A322012.P14476613266232927600

`A286610(2*(2*n)^n)`
-/

namespace A322012.P14476613266232927600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286610 (2 * (2 * n) ^ n)

end

end A322012.P14476613266232927600

/-!
# A322013: Square array A(n,k), n >= 1, k >= 1, read by antidiagonals, where A(n,k) is the number of permutations of n copies of 1..k introduced in order 1..k with no element equal to another within a distance of 1.

The programs for A322013, there is no canonical definition to state claims against.
-/

/-! ## A322013.P15527381911769646644

`A322093(n+1)/(C(comp[∑[n]]-n, 2)-n)!`
-/

namespace A322013.P15527381911769646644
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A322093 (n + 1) : ℚ) / (Nat.factorial ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n : ℤ)).toNat : ℚ)

end

end A322013.P15527381911769646644

/-! ## A322013.P5538220845586992790

`A322093(n+1)/A004736(n+1)!`
-/

namespace A322013.P5538220845586992790
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A322093 (n + 1) : ℚ) / (Nat.factorial (A004736 (n + 1)).toNat : ℚ)

end

end A322013.P5538220845586992790

/-! ## A322013.P12524952293815569722

`A322093(n+1)/A166350(A038722(n+1))`
-/

namespace A322013.P12524952293815569722
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A322093 (n + 1) : ℚ) / (A166350 (A038722 (n + 1)).toNat : ℚ)

end

end A322013.P12524952293815569722

/-! ## A322013.P14364182342567546210

`A265192(A157011(n+1))`
-/

namespace A322013.P14364182342567546210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265192 (A157011 (n + 1)).toNat

end

end A322013.P14364182342567546210

/-! ## A322013.P13245029440433116882

`A229950(3^A003992(n))`
-/

namespace A322013.P13245029440433116882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229950 (SequenceMachineLib.roundAway ((3 : ℚ) ^ (A003992 n : ℤ))).toNat

end

end A322013.P13245029440433116882

/-!
# A322014: Heinz numbers of integer partitions with an even number of even parts.

The programs for A322014, the canonical program `A322014.P15539366274804991200` is in `Seq.B014.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A322014 has offset 1).

The definition of A322014 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A322014.P15539366274804991200

`eq[0, A257992(n+1)%2]+1`

The canonical program, it is in `Seq.B014.C000`.
-/

namespace A322014

/-- `eq[0, A257992(n+1)%2]+1` -/
def P15539366274804991200.Spec : Prop :=
  ∀ n, (P15539366274804991200.a n : ℤ) = A322014 (n + 1)

theorem P15539366274804991200.correct : P15539366274804991200.Spec := by
  intro n
  simp only [A322014, Nat.add_sub_cancel]

end A322014

/-! ## A322014.P6381517801181683471

`eq[2, gcd(2, A318995(n+1))]+1`
-/

namespace A322014.P6381517801181683471
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (A318995 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A322014.P6381517801181683471

namespace A322014

/-- `eq[2, gcd(2, A318995(n+1))]+1` -/
def P6381517801181683471.Spec : Prop :=
  ∀ n, (P6381517801181683471.a n : ℤ) = A322014 (n + 1)

end A322014

/-! ## A322014.P7240252569951588940

`eq[1, A033999(A318994(n+1))]+1`
-/

namespace A322014.P7240252569951588940
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A318994 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A322014.P7240252569951588940

namespace A322014

/-- `eq[1, A033999(A318994(n+1))]+1` -/
def P7240252569951588940.Spec : Prop :=
  ∀ n, (P7240252569951588940.a n : ℤ) = A322014 (n + 1)

end A322014

/-! ## A322014.P8975049412283875116

`eq[2, A007421(A248101(n+1))]+1`
-/

namespace A322014.P8975049412283875116
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007421 (A248101 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A322014.P8975049412283875116

namespace A322014

/-- `eq[2, A007421(A248101(n+1))]+1` -/
def P8975049412283875116.Spec : Prop :=
  ∀ n, (P8975049412283875116.a n : ℤ) = A322014 (n + 1)

end A322014

/-! ## A322014.P10590582979936969286

`record[A000027(n+1)/A000034(A318995(n+1))]`
-/

namespace A322014.P10590582979936969286
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000027 (n + 1) : ℚ) / (A000034 (A318995 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A322014.P10590582979936969286

namespace A322014

/-- `record[A000027(n+1)/A000034(A318995(n+1))]` -/
def P10590582979936969286.Spec : Prop :=
  ∀ n, P10590582979936969286.a n = (A322014 (n + 1) : ℚ)

end A322014

/-! ## A322014.P17523391934100401250

`record[(n+1)*A257992(A008486(n+1))%2]`
-/

namespace A322014.P17523391934100401250
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * Int.tmod (A257992 (A008486 (n + 1)).toNat) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A322014.P17523391934100401250

namespace A322014

/-- `record[(n+1)*A257992(A008486(n+1))%2]` -/
def P17523391934100401250.Spec : Prop :=
  ∀ n, P17523391934100401250.a n = A322014 (n + 1)

end A322014

/-! ## A322014.P11389620673221697620

`record[A032742(n+1)/A000034(A318995(n+1))]`
-/

namespace A322014.P11389620673221697620
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A032742 (n + 1) : ℚ) / (A000034 (A318995 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A322014.P11389620673221697620

namespace A322014

/-- `record[A032742(n+1)/A000034(A318995(n+1))]` -/
def P11389620673221697620.Spec : Prop :=
  ∀ n, P11389620673221697620.a n = (A322014 (n + 1) : ℚ)

end A322014

/-! ## A322014.P13528714357067410779

`∪[A340784(n+1), A340931(n+1)]`
-/

namespace A322014.P13528714357067410779
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340784 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340931 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A322014.P13528714357067410779

namespace A322014

/-- `∪[A340784(n+1), A340931(n+1)]` -/
def P13528714357067410779.Spec : Prop :=
  ∀ n, (P13528714357067410779.a n : ℤ) = A322014 (n + 1)

end A322014

/-!
# A322015: If A003188(n+1) < A003188(n), then a(n) = n+1, otherwise a(n) = 0.

The programs for A322015, the canonical program `A322015.P15707370486887507958` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A322015 has offset 0).

The definition of A322015 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A322015.P4703587129653408416

`(n+1)*char[or(n, n-1)+n]`
-/

namespace A322015.P4703587129653408416
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n : ℤ) ((n : ℤ) - 1) + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * (if ∃ j, f1 j = (n : ℤ) then 1 else 0)

end

end A322015.P4703587129653408416

namespace A322015

/-- `(n+1)*char[or(n, n-1)+n]` -/
def P4703587129653408416.Spec : Prop :=
  ∀ n, (P4703587129653408416.a n : ℤ) = A322015 n

end A322015

/-! ## A322015.P16683401265517136677

`(n+1)*floor(ratio[acot(xor(n, 2*n))])`
-/

namespace A322015.P16683401265517136677
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.acot (Nat.xor n (2 * n) : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * ⌊f1 (n + 1) / f1 n⌋

end

end A322015.P16683401265517136677

namespace A322015

/-- `(n+1)*floor(ratio[acot(xor(n, 2*n))])` -/
def P16683401265517136677.Spec : Prop :=
  ∀ n, P16683401265517136677.a n = A322015 n

end A322015

/-! ## A322015.P4108955841239915446

`and(n+1, -char[or(n, n-1)+n])`
-/

namespace A322015.P4108955841239915446
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n : ℤ) ((n : ℤ) - 1) + (n : ℤ)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n + 1 : ℤ) (-((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ))

end

end A322015.P4108955841239915446

namespace A322015

/-- `and(n+1, -char[or(n, n-1)+n])` -/
def P4108955841239915446.Spec : Prop :=
  ∀ n, P4108955841239915446.a n = A322015 n

end A322015

/-! ## A322015.P18387665231115290135

`(n+1)*(1-char[and(n, n+1)+n])`
-/

namespace A322015.P18387665231115290135
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land n (n + 1) + n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (1 - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ))

end

end A322015.P18387665231115290135

namespace A322015

/-- `(n+1)*(1-char[and(n, n+1)+n])` -/
def P18387665231115290135.Spec : Prop :=
  ∀ n, P18387665231115290135.a n = A322015 n

end A322015

/-! ## A322015.P1025385382713211546

`lcm(n+1, 1-char[and(n, n+1)+n])`
-/

namespace A322015.P1025385382713211546
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land n (n + 1) + n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n + 1 : ℤ) (1 - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ))

end

end A322015.P1025385382713211546

namespace A322015

/-- `lcm(n+1, 1-char[and(n, n+1)+n])` -/
def P1025385382713211546.Spec : Prop :=
  ∀ n, (P1025385382713211546.a n : ℤ) = A322015 n

end A322015

/-! ## A322015.P15707370486887507958

`(n+1)*A014707(n)`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A322015

/-- `(n+1)*A014707(n)` -/
def P15707370486887507958.Spec : Prop :=
  ∀ n, P15707370486887507958.a n = A322015 n

theorem P15707370486887507958.correct : P15707370486887507958.Spec := by
  intro n
  simp only [A322015]

end A322015

/-! ## A322015.P2987288965336739970

`(n+1)%A396674(n)`
-/

namespace A322015.P2987288965336739970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 1 : ℤ) (A396674 n)

end

end A322015.P2987288965336739970

namespace A322015

/-- `(n+1)%A396674(n)` -/
def P2987288965336739970.Spec : Prop :=
  ∀ n, P2987288965336739970.a n = A322015 n

end A322015

/-! ## A322015.P14244176690266417801

`(n+1)*log2(A014709(n))`
-/

namespace A322015.P14244176690266417801
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℝ) * Real.logb 2 (A014709 n : ℝ)

end

end A322015.P14244176690266417801

namespace A322015

/-- `(n+1)*log2(A014709(n))` -/
def P14244176690266417801.Spec : Prop :=
  ∀ n, P14244176690266417801.a n = (A322015 n : ℝ)

end A322015

/-! ## A322015.P10440241605074418922

`(n+1)*char[A255068(n)]`
-/

namespace A322015.P10440241605074418922
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255068 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * (if ∃ j, f1 j = (n : ℤ) then 1 else 0)

end

end A322015.P10440241605074418922

namespace A322015

/-- `(n+1)*char[A255068(n)]` -/
def P10440241605074418922.Spec : Prop :=
  ∀ n, (P10440241605074418922.a n : ℤ) = A322015 n

end A322015

/-! ## A322015.P12919502919909297972

`(n+1)*char[A341522(n)]`
-/

namespace A322015.P12919502919909297972
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341522 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * (if ∃ j, f1 j = (n : ℤ) then 1 else 0)

end

end A322015.P12919502919909297972

namespace A322015

/-- `(n+1)*char[A341522(n)]` -/
def P12919502919909297972.Spec : Prop :=
  ∀ n, (P12919502919909297972.a n : ℤ) = A322015 n

end A322015

/-! ## A322015.P10661360072196823900

`(n+1)*A038189(n+1)`
-/

namespace A322015.P10661360072196823900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A038189 (n + 1)

end

end A322015.P10661360072196823900

namespace A322015

/-- `(n+1)*A038189(n+1)` -/
def P10661360072196823900.Spec : Prop :=
  ∀ n, P10661360072196823900.a n = A322015 n

end A322015

/-! ## A322015.P16604690552186646100

`(n+1)*(1-A014577(n))`
-/

namespace A322015.P16604690552186646100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (1 - A014577 n)

end

end A322015.P16604690552186646100

namespace A322015

/-- `(n+1)*(1-A014577(n))` -/
def P16604690552186646100.Spec : Prop :=
  ∀ n, P16604690552186646100.a n = A322015 n

end A322015

/-! ## A322015.P49184259872856612

`(n+1)*(2-A014710(n))`
-/

namespace A322015.P49184259872856612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (2 - A014710 n)

end

end A322015.P49184259872856612

namespace A322015

/-- `(n+1)*(2-A014710(n))` -/
def P49184259872856612.Spec : Prop :=
  ∀ n, P49184259872856612.a n = A322015 n

end A322015

/-! ## A322015.P4048274290225438250

`(n+1-A119972(n+1))/2`
-/

namespace A322015.P4048274290225438250
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℤ) - A119972 (n + 1) : ℚ) / 2

end

end A322015.P4048274290225438250

namespace A322015

/-- `(n+1-A119972(n+1))/2` -/
def P4048274290225438250.Spec : Prop :=
  ∀ n, P4048274290225438250.a n = (A322015 n : ℚ)

end A322015

/-! ## A322015.P10386201345589596937

`A153152(n*A014707(n))`
-/

namespace A322015.P10386201345589596937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153152 ((n : ℤ) * A014707 n).toNat

end

end A322015.P10386201345589596937

namespace A322015

/-- `A153152(n*A014707(n))` -/
def P10386201345589596937.Spec : Prop :=
  ∀ n, P10386201345589596937.a n = A322015 n

end A322015

/-! ## A322015.P7198115985797386563

`(n+1)*A000035(A025480(n))`
-/

namespace A322015.P7198115985797386563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A000035 (A025480 n).toNat

end

end A322015.P7198115985797386563

namespace A322015

/-- `(n+1)*A000035(A025480(n))` -/
def P7198115985797386563.Spec : Prop :=
  ∀ n, P7198115985797386563.a n = A322015 n

end A322015

/-! ## A322015.P5676858461183639862

`(n+1)*A021913(A000265(n+1))`
-/

namespace A322015.P5676858461183639862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A021913 (A000265 (n + 1)).toNat

end

end A322015.P5676858461183639862

namespace A322015

/-- `(n+1)*A021913(A000265(n+1))` -/
def P5676858461183639862.Spec : Prop :=
  ∀ n, P5676858461183639862.a n = A322015 n

end A322015

/-! ## A322015.P3043066117724756348

`(n+1)*A059841(A003602(n+1))`
-/

namespace A322015.P3043066117724756348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A059841 (A003602 (n + 1)).toNat

end

end A322015.P3043066117724756348

namespace A322015

/-- `(n+1)*A059841(A003602(n+1))` -/
def P3043066117724756348.Spec : Prop :=
  ∀ n, P3043066117724756348.a n = A322015 n

end A322015

/-! ## A322015.P14796602073352012994

`(n+1)*A000035(A078458(n+1))`
-/

namespace A322015.P14796602073352012994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A000035 (A078458 (n + 1)).toNat

end

end A322015.P14796602073352012994

namespace A322015

/-- `(n+1)*A000035(A078458(n+1))` -/
def P14796602073352012994.Spec : Prop :=
  ∀ n, P14796602073352012994.a n = A322015 n

end A322015

/-! ## A322015.P11455816066298140470

`(n+1)*A053867(A278509(n+1))`
-/

namespace A322015.P11455816066298140470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A053867 (A278509 (n + 1)).toNat

end

end A322015.P11455816066298140470

namespace A322015

/-- `(n+1)*A053867(A278509(n+1))` -/
def P11455816066298140470.Spec : Prop :=
  ∀ n, P11455816066298140470.a n = A322015 n

end A322015

/-!
# A322016: a(0) = 0; for n > 0, if A003188(n) > A003188(n-1) then a(n) = n-1, otherwise a(n) = 0.

The programs for A322016, the canonical program `A322016.P2278703337151116336` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A322016 has offset 0).

The definition of A322016 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A322016.P579273964401390171

`(n-1)*char[and(n, n+1)+1+n]`
-/

namespace A322016.P579273964401390171
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land n (n + 1) + 1 + n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1) * ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A322016.P579273964401390171

namespace A322016

/-- `(n-1)*char[and(n, n+1)+1+n]` -/
def P579273964401390171.Spec : Prop :=
  ∀ n, P579273964401390171.a n = A322016 n

end A322016

/-! ## A322016.P17059102850190280132

`A322017(n)%(n+1)`
-/

namespace A322016.P17059102850190280132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A322017 n) (n + 1 : ℤ)

end

end A322016.P17059102850190280132

namespace A322016

/-- `A322017(n)%(n+1)` -/
def P17059102850190280132.Spec : Prop :=
  ∀ n, P17059102850190280132.a n = A322016 n

end A322016

/-! ## A322016.P2278703337151116336

`(n-1)*A082410(n+1)`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A322016

/-- `(n-1)*A082410(n+1)` -/
def P2278703337151116336.Spec : Prop :=
  ∀ n, P2278703337151116336.a n = A322016 n

theorem P2278703337151116336.correct : P2278703337151116336.Spec := by
  intro n
  simp only [A322016]

end A322016

/-! ## A322016.P3170636583435006034

`(1-A089013(n))*(n-1)`
-/

namespace A322016.P3170636583435006034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A089013 n) * ((n : ℤ) - 1)

end

end A322016.P3170636583435006034

namespace A322016

/-- `(1-A089013(n))*(n-1)` -/
def P3170636583435006034.Spec : Prop :=
  ∀ n, P3170636583435006034.a n = A322016 n

end A322016

/-! ## A322016.P9192845250059092122

`(n-1)*A073089(Δ[n²])`
-/

namespace A322016.P9192845250059092122
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1) * A073089 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A322016.P9192845250059092122

namespace A322016

/-- `(n-1)*A073089(Δ[n²])` -/
def P9192845250059092122.Spec : Prop :=
  ∀ n, P9192845250059092122.a n = A322016 n

end A322016

/-! ## A322016.P7572159918454591625

`(n-1)*char[A091072(n+1)]`
-/

namespace A322016.P7572159918454591625
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091072 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1) * ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A322016.P7572159918454591625

namespace A322016

/-- `(n-1)*char[A091072(n+1)]` -/
def P7572159918454591625.Spec : Prop :=
  ∀ n, P7572159918454591625.a n = A322016 n

end A322016

/-! ## A322016.P4155324020071500329

`(n-1)*char[A269361(n+1)]`
-/

namespace A322016.P4155324020071500329
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269361 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1) * ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A322016.P4155324020071500329

namespace A322016

/-- `(n-1)*char[A269361(n+1)]` -/
def P4155324020071500329.Spec : Prop :=
  ∀ n, P4155324020071500329.a n = A322016 n

end A322016

/-! ## A322016.P13107223486546047792

`A322017(C(n, A322017(n)))`
-/

namespace A322016.P13107223486546047792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322017 (Nat.choose n (A322017 n).toNat)

end

end A322016.P13107223486546047792

namespace A322016

/-- `A322017(C(n, A322017(n)))` -/
def P13107223486546047792.Spec : Prop :=
  ∀ n, P13107223486546047792.a n = A322016 n

end A322016

/-! ## A322016.P8519695322814135988

`A082410(n+1)*A322017(n)`
-/

namespace A322016.P8519695322814135988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082410 (n + 1) * A322017 n

end

end A322016.P8519695322814135988

namespace A322016

/-- `A082410(n+1)*A322017(n)` -/
def P8519695322814135988.Spec : Prop :=
  ∀ n, P8519695322814135988.a n = A322016 n

end A322016

/-! ## A322016.P488914761573686199

`(n-1)*A001842(A064917(n+2))`
-/

namespace A322016.P488914761573686199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1) * A001842 (A064917 (n + 2)).toNat

end

end A322016.P488914761573686199

namespace A322016

/-- `(n-1)*A001842(A064917(n+2))` -/
def P488914761573686199.Spec : Prop :=
  ∀ n, P488914761573686199.a n = A322016 n

end A322016

/-! ## A322016.P16829197575885441795

`(n-1)*char[A339597(n)]`
-/

namespace A322016.P16829197575885441795
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339597 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1) * ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A322016.P16829197575885441795

namespace A322016

/-- `(n-1)*char[A339597(n)]` -/
def P16829197575885441795.Spec : Prop :=
  ∀ n, P16829197575885441795.a n = A322016 n

end A322016

/-! ## A322016.P13214658332184476147

`(n-1)*A038189(A002516(n))`
-/

namespace A322016.P13214658332184476147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1) * A038189 (A002516 n).toNat

end

end A322016.P13214658332184476147

namespace A322016

/-- `(n-1)*A038189(A002516(n))` -/
def P13214658332184476147.Spec : Prop :=
  ∀ n, P13214658332184476147.a n = A322016 n

end A322016

/-! ## A322016.P1002541991145486069

`(n-1)*A038189(A048724(n))`
-/

namespace A322016.P1002541991145486069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1) * A038189 (A048724 n).toNat

end

end A322016.P1002541991145486069

namespace A322016

/-- `(n-1)*A038189(A048724(n))` -/
def P1002541991145486069.Spec : Prop :=
  ∀ n, P1002541991145486069.a n = A322016 n

end A322016

/-! ## A322016.P7904991122052742466

`(n-1)*A014707(A010078(n+1))`
-/

namespace A322016.P7904991122052742466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1) * A014707 (A010078 (n + 1)).toNat

end

end A322016.P7904991122052742466

namespace A322016

/-- `(n-1)*A014707(A010078(n+1))` -/
def P7904991122052742466.Spec : Prop :=
  ∀ n, P7904991122052742466.a n = A322016 n

end A322016

/-! ## A322016.P209833502887201977

`(n-1)*A038189(A165351(n))`
-/

namespace A322016.P209833502887201977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1) * A038189 (A165351 n).toNat

end

end A322016.P209833502887201977

namespace A322016

/-- `(n-1)*A038189(A165351(n))` -/
def P209833502887201977.Spec : Prop :=
  ∀ n, P209833502887201977.a n = A322016 n

end A322016

/-! ## A322016.P16174920162393886371

`(n-1)*A038189(3*n)`
-/

namespace A322016.P16174920162393886371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1) * A038189 (3 * n)

end

end A322016.P16174920162393886371

namespace A322016

/-- `(n-1)*A038189(3*n)` -/
def P16174920162393886371.Spec : Prop :=
  ∀ n, P16174920162393886371.a n = A322016 n

end A322016

/-! ## A322016.P4646588346770982249

`(n-1)*A014707(A317333(n+1))`
-/

namespace A322016.P4646588346770982249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1) * A014707 (A317333 (n + 1)).toNat

end

end A322016.P4646588346770982249

namespace A322016

/-- `(n-1)*A014707(A317333(n+1))` -/
def P4646588346770982249.Spec : Prop :=
  ∀ n, P4646588346770982249.a n = A322016 n

end A322016

/-!
# A322017: a(0) = 0; for n > 0, if A003188(n) > A003188(n-1) then a(n) = n-1, else if A003188(n+1) < A003188(n) then a(n) = n+1, otherwise a(n) = 0.

The programs for A322017, the canonical program `A322017.P11556095073912313263` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A322017 has offset 0).

The definition of A322017 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A322017.P11556095073912313263

`A322016(n)+A322015(n-A322016(n))`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A322017

/-- `A322016(n)+A322015(n-A322016(n))` -/
def P11556095073912313263.Spec : Prop :=
  ∀ n, P11556095073912313263.a n = A322017 n

theorem P11556095073912313263.correct : P11556095073912313263.Spec := by
  intro n
  simp only [A322017]

end A322017

/-! ## A322017.P680204663050664546

`A322016(n)+A322015(n*A038189(n))`
-/

namespace A322017.P680204663050664546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322016 n + A322015 ((n : ℤ) * A038189 n).toNat

end

end A322017.P680204663050664546

namespace A322017

/-- `A322016(n)+A322015(n*A038189(n))` -/
def P680204663050664546.Spec : Prop :=
  ∀ n, P680204663050664546.a n = A322017 n

end A322017

/-! ## A322017.P6586813654624800875

`A322016(n)+A322015(xor(n, A322016(n)))`
-/

namespace A322017.P6586813654624800875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322016 n + A322015 (Int.xor (n : ℤ) (A322016 n)).toNat

end

end A322017.P6586813654624800875

namespace A322017

/-- `A322016(n)+A322015(xor(n, A322016(n)))` -/
def P6586813654624800875.Spec : Prop :=
  ∀ n, P6586813654624800875.a n = A322017 n

end A322017

/-! ## A322017.P6844937582416565923

`or(A038189(n)*A322015(n), A322016(n))`
-/

namespace A322017.P6844937582416565923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A038189 n * A322015 n) (A322016 n)

end

end A322017.P6844937582416565923

namespace A322017

/-- `or(A038189(n)*A322015(n), A322016(n))` -/
def P6844937582416565923.Spec : Prop :=
  ∀ n, P6844937582416565923.a n = A322017 n

end A322017

/-! ## A322017.P14180533391722597336

`A322016(n)+A322015(A322016(n)+n)`
-/

namespace A322017.P14180533391722597336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322016 n + A322015 (A322016 n + (n : ℤ)).toNat

end

end A322017.P14180533391722597336

namespace A322017

/-- `A322016(n)+A322015(A322016(n)+n)` -/
def P14180533391722597336.Spec : Prop :=
  ∀ n, P14180533391722597336.a n = A322017 n

end A322017

/-! ## A322017.P1391870784779481205

`abs(A038189(2*n)*A322015(n)-A322016(n))`
-/

namespace A322017.P1391870784779481205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A038189 (2 * n) * A322015 n - A322016 n|

end

end A322017.P1391870784779481205

namespace A322017

/-- `abs(A038189(2*n)*A322015(n)-A322016(n))` -/
def P1391870784779481205.Spec : Prop :=
  ∀ n, P1391870784779481205.a n = A322017 n

end A322017

/-!
# A322018: a(n) = A006068(A129760(A003188(n))).

The programs for A322018, the canonical program `A322018.P15339692018877451877` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A322018 has offset 0).

The definition of A322018 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A322018.P15339692018877451877

`A028310(n)-Δ[and(n, -n)]`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A322018

/-- `A028310(n)-Δ[and(n, -n)]` -/
def P15339692018877451877.Spec : Prop :=
  ∀ n, P15339692018877451877.a n = A322018 n

theorem P15339692018877451877.correct : P15339692018877451877.Spec := by
  intro n
  simp only [A322018]

end A322018

/-! ## A322018.P10672288789309623232

`xor(n, A014681(A065176(n+1)))`
-/

namespace A322018.P10672288789309623232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (A014681 (A065176 (n + 1)).toNat)

end

end A322018.P10672288789309623232

namespace A322018

/-- `xor(n, A014681(A065176(n+1)))` -/
def P10672288789309623232.Spec : Prop :=
  ∀ n, P10672288789309623232.a n = A322018 n

end A322018

/-! ## A322018.P1738281988547067785

`A006519(A028310(n))-A006519(n+1)+n`
-/

namespace A322018.P1738281988547067785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006519 (A028310 n).toNat - A006519 (n + 1) + (n : ℤ)

end

end A322018.P1738281988547067785

namespace A322018

/-- `A006519(A028310(n))-A006519(n+1)+n` -/
def P1738281988547067785.Spec : Prop :=
  ∀ n, P1738281988547067785.a n = A322018 n

end A322018

/-! ## A322018.P8469211876441310650

`A129760(n+1)+A061338(n)-A000120(n)`
-/

namespace A322018.P8469211876441310650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129760 (n + 1) + (A061338 n - A000120 n)

end

end A322018.P8469211876441310650

namespace A322018

/-- `A129760(n+1)+A061338(n)-A000120(n)` -/
def P8469211876441310650.Spec : Prop :=
  ∀ n, P8469211876441310650.a n = A322018 n

end A322018

/-! ## A322018.P16123639253243930982

`n-Δ[A285326(n)%(n+1)]`
-/

namespace A322018.P16123639253243930982
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A285326 n) (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (f1 (n + 1) - f1 n)

end

end A322018.P16123639253243930982

namespace A322018

/-- `n-Δ[A285326(n)%(n+1)]` -/
def P16123639253243930982.Spec : Prop :=
  ∀ n, P16123639253243930982.a n = A322018 n

end A322018

/-! ## A322018.P7011125899933366289

`n-Δ[A000079(n-A093048(n))]`
-/

namespace A322018.P7011125899933366289
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 ((n : ℤ) - A093048 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (f1 (n + 1) - f1 n)

end

end A322018.P7011125899933366289

namespace A322018

/-- `n-Δ[A000079(n-A093048(n))]` -/
def P7011125899933366289.Spec : Prop :=
  ∀ n, P7011125899933366289.a n = A322018 n

end A322018

/-! ## A322018.P12468620954958359455

`A006519(A065190(n+1))-A006519(n+1)+n`
-/

namespace A322018.P12468620954958359455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006519 (A065190 (n + 1)).toNat - A006519 (n + 1) + (n : ℤ)

end

end A322018.P12468620954958359455

namespace A322018

/-- `A006519(A065190(n+1))-A006519(n+1)+n` -/
def P12468620954958359455.Spec : Prop :=
  ∀ n, P12468620954958359455.a n = A322018 n

end A322018

/-! ## A322018.P12367582796845791473

`A014681(n)+A285326(n)-A285326(A014681(n))`
-/

namespace A322018.P12367582796845791473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 n + (A285326 n - A285326 (A014681 n).toNat)

end

end A322018.P12367582796845791473

namespace A322018

/-- `A014681(n)+A285326(n)-A285326(A014681(n))` -/
def P12367582796845791473.Spec : Prop :=
  ∀ n, P12367582796845791473.a n = A322018 n

end A322018

/-! ## A322018.P480660742343708586

`A006068(and(A003188(n)-1, A003188(n)))`
-/

namespace A322018.P480660742343708586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006068 (Int.land (A003188 n - 1) (A003188 n)).toNat

end

end A322018.P480660742343708586

namespace A322018

/-- `A006068(and(A003188(n)-1, A003188(n)))` -/
def P480660742343708586.Spec : Prop :=
  ∀ n, P480660742343708586.a n = A322018 n

end A322018

/-! ## A322018.P16045941705312268500

`xor(n, A004526(xor(n, A014681(n))))`
-/

namespace A322018.P16045941705312268500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (A004526 (Int.xor (n : ℤ) (A014681 n)).toNat)

end

end A322018.P16045941705312268500

namespace A322018

/-- `xor(n, A004526(xor(n, A014681(n))))` -/
def P16045941705312268500.Spec : Prop :=
  ∀ n, P16045941705312268500.a n = A322018 n

end A322018

/-! ## A322018.P8373547422599697183

`A006519(A008486(n))-A006519(n+1)+n`
-/

namespace A322018.P8373547422599697183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006519 (A008486 n).toNat - A006519 (n + 1) + (n : ℤ)

end

end A322018.P8373547422599697183

namespace A322018

/-- `A006519(A008486(n))-A006519(n+1)+n` -/
def P8373547422599697183.Spec : Prop :=
  ∀ n, P8373547422599697183.a n = A322018 n

end A322018

/-! ## A322018.P18295067998255620467

`A006519(A328612(n))-A006519(n+1)+n`
-/

namespace A322018.P18295067998255620467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006519 (A328612 n).toNat - A006519 (n + 1) + (n : ℤ)

end

end A322018.P18295067998255620467

namespace A322018

/-- `A006519(A328612(n))-A006519(n+1)+n` -/
def P18295067998255620467.Spec : Prop :=
  ∀ n, P18295067998255620467.a n = A322018 n

end A322018

/-! ## A322018.P17651570336206513924

`abs(Δ[gcd(n, 4^floor(n/2))]-n)`
-/

namespace A322018.P17651570336206513924
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (SequenceMachineLib.roundAway ((4 : ℚ) ^ (⌊(n : ℚ) / 2⌋ : ℤ)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)|

end

end A322018.P17651570336206513924

namespace A322018

/-- `abs(Δ[gcd(n, 4^floor(n/2))]-n)` -/
def P17651570336206513924.Spec : Prop :=
  ∀ n, P17651570336206513924.a n = A322018 n

end A322018

/-! ## A322018.P10119040524683130994

`n-Δ[gcd(n, 2^n)]`
-/

namespace A322018.P10119040524683130994
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd n (2 ^ n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A322018.P10119040524683130994

namespace A322018

/-- `n-Δ[gcd(n, 2^n)]` -/
def P10119040524683130994.Spec : Prop :=
  ∀ n, P10119040524683130994.a n = A322018 n

end A322018

/-!
# A322019: a(n) = A000005(n) - A014197(n), where A000005(n) gives the number of divisors of n, and A014197(n) gives the number of integers m with phi(m) = n.

The programs for A322019, there is no canonical definition to state claims against.
-/

/-! ## A322019.P6682953790175350781

`A000005(n+1)-A014197(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A322019.P6682953790175350781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) - A014197 (n + 1)

end

end A322019.P6682953790175350781

/-! ## A322019.P12444828398002752681

`Δ[A006218(n)]-A014197(n+1)`
-/

namespace A322019.P12444828398002752681
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A014197 (n + 1)

end

end A322019.P12444828398002752681

/-! ## A322019.P17151779216634455101

`A334954(n+1)-(A014197(n+1)+1)`
-/

namespace A322019.P17151779216634455101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334954 (n + 1) - (A014197 (n + 1) + 1)

end

end A322019.P17151779216634455101

/-! ## A322019.P13402605658499136694

`A038040(n+1)/(n+1)-A014197(n+1)`
-/

namespace A322019.P13402605658499136694
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038040 (n + 1) : ℚ) / (n + 1 : ℚ) - (A014197 (n + 1) : ℚ)

end

end A322019.P13402605658499136694

/-! ## A322019.P13764411550398353169

`A001227(n+1)*A001511(n+1)-A014197(n+1)`
-/

namespace A322019.P13764411550398353169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001227 (n + 1) * A001511 (n + 1) - A014197 (n + 1)

end

end A322019.P13764411550398353169

/-! ## A322019.P17507678150739465113

`A001227(A003961(n+1))-A014197(n+1)`
-/

namespace A322019.P17507678150739465113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001227 (A003961 (n + 1)).toNat - A014197 (n + 1)

end

end A322019.P17507678150739465113

/-! ## A322019.P16131748687281841408

`A000005(n+1)-A056239(A322310(n+1))`
-/

namespace A322019.P16131748687281841408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) - A056239 (A322310 (n + 1)).toNat

end

end A322019.P16131748687281841408

/-!
# A322020: a(n) = Product_{d|n, gcd(d,n/d) is a prime power} gcd(d,n/d).

The programs for A322020, there is no canonical definition to state claims against.
-/

/-! ## A322020.P9955964946034418484

`A056926(A000188(n+1)^A286324(n+1))`
-/

namespace A322020.P9955964946034418484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056926 (SequenceMachineLib.roundAway ((A000188 (n + 1) : ℚ) ^ (A286324 (n + 1) : ℤ))).toNat

end

end A322020.P9955964946034418484

/-! ## A322020.P11487020283846059594

`A000188(∏{p}[n+1, #^val(n+1, #²)]^∏{e}[n+1, #%2+#])`
-/

namespace A322020.P11487020283846059594
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000188 ((∏ p ∈ Nat.primeFactors (f1 n), p ^ SequenceMachineLib.valuation (n + 1) (p ^ 2)) ^ (∏ p ∈ Nat.primeFactors (f2 n), (Nat.factorization (f2 n) p % 2 + Nat.factorization (f2 n) p)))

end

end A322020.P11487020283846059594

/-! ## A322020.P12738835798056069165

`A000188(A000188(n+1)^∏{e}[n+1, #%2+#])`
-/

namespace A322020.P12738835798056069165
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000188 (A000188 (n + 1) ^ (∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p % 2 + Nat.factorization (f1 n) p))).toNat

end

end A322020.P12738835798056069165

/-! ## A322020.P10219000329580425286

`A000188(A000188(n+1)^∏{e}[n+1, and(1, #)+#])`
-/

namespace A322020.P10219000329580425286
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000188 (A000188 (n + 1) ^ (∏ p ∈ Nat.primeFactors (f1 n), (Nat.land 1 (Nat.factorization (f1 n) p) + Nat.factorization (f1 n) p))).toNat

end

end A322020.P10219000329580425286

/-! ## A322020.P6955051956567804763

`A000188(A000188(n+1)^∏{e}[n+1, 1-or(1, -#)])`
-/

namespace A322020.P6955051956567804763
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000188 (SequenceMachineLib.roundAway ((A000188 (n + 1) : ℚ) ^ (∏ p ∈ Nat.primeFactors (f1 n), (1 - Int.lor 1 (-(Nat.factorization (f1 n) p : ℤ))) : ℤ))).toNat

end

end A322020.P6955051956567804763

/-!
# A322022: Lexicographically earliest such sequence a that a(i) = a(j) => A305891(i) = A305891(j) and A319697(i) = A319697(j), for all i, j.

The programs for A322022, there is no canonical definition to state claims against.
-/

/-! ## A322022.P12215157119495518244

`A352898(n+1)-A256505(A264837(n+4))`
-/

namespace A322022.P12215157119495518244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352898 (n + 1) - A256505 (A264837 (n + 4)).toNat

end

end A322022.P12215157119495518244

/-!
# A322023: Lexicographically earliest such sequence a that a(i) = a(j) => A081373(i) = A081373(j) and A303756(i) = A303756(j), for all i, j. Here A081373 and A303756 are the ordinal transforms of Euler phi and Carmichael lambda.

The programs for A322023, there is no canonical definition to state claims against.
-/

/-! ## A322023.P11047334207726941948

`A350068(n+1)-A300820(A001333(n))`
-/

namespace A322023.P11047334207726941948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350068 (n + 1) - A300820 (A001333 n).toNat

end

end A322023.P11047334207726941948

/-! ## A322023.P13672271658053966318

`A353798(23*2^n-1)+gcd(xor(1, n²), ∑[n])`
-/

namespace A322023.P13672271658053966318
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353798 (23 * 2 ^ n - 1) + (Nat.gcd (Nat.xor 1 (n ^ 2)) (∑ j ∈ Finset.range (n + 1), f1 j) : ℤ)

end

end A322023.P13672271658053966318

/-! ## A322023.P13469614722045838109

`A207324(A286080(n)+1)`
-/

namespace A322023.P13469614722045838109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207324 (A286080 n + 1).toNat

end

end A322023.P13469614722045838109

/-! ## A322023.P2929697987943612918

`A207324(A286704(n)+1)`
-/

namespace A322023.P2929697987943612918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207324 (A286704 n + 1).toNat

end

end A322023.P2929697987943612918

/-! ## A322023.P13064634598283619302

`A207324(A286705(n)+1)`
-/

namespace A322023.P13064634598283619302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207324 (A286705 n + 1).toNat

end

end A322023.P13064634598283619302

/-!
# A322024: Lexicographically earliest such sequence a that a(i) = a(j) => A014197(i) = A014197(j) and A081373(i) = A081373(j), for all i, j. Here A081373(n) gives the number of k, 1 <= k <= n, with phi(k) = phi(n), while A014197(n) gives the number of integers m with phi(m) = n.

The programs for A322024, there is no canonical definition to state claims against.
-/

/-! ## A322024.P18396369182853713741

`A326203(n+1)/A047996(A105681(n+4))`
-/

namespace A322024.P18396369182853713741
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A326203 (n + 1) : ℚ) / (A047996 (A105681 (n + 4)).toNat : ℚ)

end

end A322024.P18396369182853713741

/-!
# A322025: Ordinal transform of A322023.

The programs for A322025, there is no canonical definition to state claims against.
-/

/-! ## A322025.P3540757263078383187

`gcd(A008620(A327591(n)), A065770(n+1))`
-/

namespace A322025.P3540757263078383187
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A008620 (A327591 n).toNat) (A065770 (n + 1))

end

end A322025.P3540757263078383187

/-! ## A322025.P1120089784653214844

`A321512(A295065(n))+A289508(n+1)`
-/

namespace A322025.P1120089784653214844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321512 (A295065 n).toNat + A289508 (n + 1)

end

end A322025.P1120089784653214844

/-! ## A322025.P3444251117129012671

`A000120(A285480(n)+A206437(n+1))`
-/

namespace A322025.P3444251117129012671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A285480 n + A206437 (n + 1)).toNat

end

end A322025.P3444251117129012671

/-! ## A322025.P2878960794627918956

`∏{e}[A052938(A343101(n+1)), #]`
-/

namespace A322025.P2878960794627918956
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052938 (A343101 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A322025.P2878960794627918956

/-!
# A322026: Lexicographically earliest infinite sequence such that a(i) = a(j) => A007814(i) = A007814(j) and A007949(i) = A007949(j), for all i, j, where A007814 and A007949 give the 2- and 3-adic valuations of n.

The programs for A322026, the canonical program `A322026.P9939505646475219061` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A322026 has offset 1).

The definition of A322026 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A071521, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A322026.P9939505646475219061

`A071521(A065331(n+1))`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A322026

/-- `A071521(A065331(n+1))` -/
def P9939505646475219061.Spec : Prop :=
  ∀ n, P9939505646475219061.a n = A322026 (n + 1)

theorem P9939505646475219061.correct : P9939505646475219061.Spec := by
  intro n
  simp only [A322026, Nat.add_sub_cancel]

end A322026

/-! ## A322026.P4779190652347438873

`A389901(A007310(n+1))`
-/

namespace A322026.P4779190652347438873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389901 (A007310 (n + 1)).toNat

end

end A322026.P4779190652347438873

namespace A322026

/-- `A389901(A007310(n+1))` -/
def P4779190652347438873.Spec : Prop :=
  ∀ n, P4779190652347438873.a n = A322026 (n + 1)

end A322026

/-! ## A322026.P12822301486631359628

`A389901(A063221(n+1))`
-/

namespace A322026.P12822301486631359628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389901 (A063221 (n + 1)).toNat

end

end A322026.P12822301486631359628

namespace A322026

/-- `A389901(A063221(n+1))` -/
def P12822301486631359628.Spec : Prop :=
  ∀ n, P12822301486631359628.a n = A322026 (n + 1)

end A322026

/-! ## A322026.P12390982306759315444

`A389901(A091999(n+1))`
-/

namespace A322026.P12390982306759315444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389901 (A091999 (n + 1)).toNat

end

end A322026.P12390982306759315444

namespace A322026

/-- `A389901(A091999(n+1))` -/
def P12390982306759315444.Spec : Prop :=
  ∀ n, P12390982306759315444.a n = A322026 (n + 1)

end A322026

/-! ## A322026.P12351192428233729532

`A323884(n+1)-A323883(n+1)`
-/

namespace A322026.P12351192428233729532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323884 (n + 1) - A323883 (n + 1)

end

end A322026.P12351192428233729532

namespace A322026

/-- `A323884(n+1)-A323883(n+1)` -/
def P12351192428233729532.Spec : Prop :=
  ∀ n, P12351192428233729532.a n = A322026 (n + 1)

end A322026

/-! ## A322026.P8435759147476859286

`A071521((n+1)/A065330(n+1))`
-/

namespace A322026.P8435759147476859286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071521 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A065330 (n + 1) : ℚ))).toNat

end

end A322026.P8435759147476859286

namespace A322026

/-- `A071521((n+1)/A065330(n+1))` -/
def P8435759147476859286.Spec : Prop :=
  ∀ n, P8435759147476859286.a n = A322026 (n + 1)

end A322026

/-! ## A322026.P6065640874822765119

`A071521(A006519(n+1)*A038500(n+1))`
-/

namespace A322026.P6065640874822765119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071521 (A006519 (n + 1) * A038500 (n + 1)).toNat

end

end A322026.P6065640874822765119

namespace A322026

/-- `A071521(A006519(n+1)*A038500(n+1))` -/
def P6065640874822765119.Spec : Prop :=
  ∀ n, P6065640874822765119.a n = A322026 (n + 1)

end A322026

/-! ## A322026.P17205355733564164427

`A389901(A038179(n+2))`
-/

namespace A322026.P17205355733564164427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389901 (A038179 (n + 2)).toNat

end

end A322026.P17205355733564164427

namespace A322026

/-- `A389901(A038179(n+2))` -/
def P17205355733564164427.Spec : Prop :=
  ∀ n, P17205355733564164427.a n = A322026 (n + 1)

end A322026

/-! ## A322026.P12125899531454303416

`A389901(A306771(n+1))`
-/

namespace A322026.P12125899531454303416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389901 (A306771 (n + 1)).toNat

end

end A322026.P12125899531454303416

namespace A322026

/-- `A389901(A306771(n+1))` -/
def P12125899531454303416.Spec : Prop :=
  ∀ n, P12125899531454303416.a n = A322026 (n + 1)

end A322026

/-! ## A322026.P12756024946353624094

`A078899(3*A065331(n+1))`
-/

namespace A322026.P12756024946353624094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078899 (3 * A065331 (n + 1)).toNat

end

end A322026.P12756024946353624094

namespace A322026

/-- `A078899(3*A065331(n+1))` -/
def P12756024946353624094.Spec : Prop :=
  ∀ n, P12756024946353624094.a n = A322026 (n + 1)

end A322026

/-! ## A322026.P8261409097715725197

`A389901(A259755(n+1))`
-/

namespace A322026.P8261409097715725197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389901 (A259755 (n + 1)).toNat

end

end A322026.P8261409097715725197

namespace A322026

/-- `A389901(A259755(n+1))` -/
def P8261409097715725197.Spec : Prop :=
  ∀ n, P8261409097715725197.a n = A322026 (n + 1)

end A322026

/-! ## A322026.P18440539618782892107

`A069924(A065331(2*(n+1))-1)`
-/

namespace A322026.P18440539618782892107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069924 (A065331 (2 * (n + 1)) - 1).toNat

end

end A322026.P18440539618782892107

namespace A322026

/-- `A069924(A065331(2*(n+1))-1)` -/
def P18440539618782892107.Spec : Prop :=
  ∀ n, P18440539618782892107.a n = A322026 (n + 1)

end A322026

/-! ## A322026.P7548906338116680522

`A323884(25*(n+1))`
-/

namespace A322026.P7548906338116680522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323884 (25 * (n + 1))

end

end A322026.P7548906338116680522

namespace A322026

/-- `A323884(25*(n+1))` -/
def P7548906338116680522.Spec : Prop :=
  ∀ n, P7548906338116680522.a n = A322026 (n + 1)

end A322026

/-!
# A322027: Maximum order of primeness among the prime factors of n; a(1) = 0.

The programs for A322027, the canonical program `A322027.P5786008625917716915` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A322027 has offset 1).

The definition of A322027 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A322027.P5786008625917716915

`a(A295665(n+1)-1)+1` with `a(0)=0`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A322027

/-- `a(A295665(n+1)-1)+1` -/
def P5786008625917716915.Spec : Prop :=
  ∀ n, (P5786008625917716915.a n : ℤ) = A322027 (n + 1)

theorem P5786008625917716915.correct : P5786008625917716915.Spec := by
  intro n
  simp only [A322027, Nat.add_sub_cancel]

end A322027

/-! ## A322027.P5413769657896649963

`A078442(A006530(n+1)%A124375(n+1))`
-/

namespace A322027.P5413769657896649963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078442 (Int.tmod (A006530 (n + 1)) (A124375 (n + 1))).toNat

end

end A322027.P5413769657896649963

namespace A322027

/-- `A078442(A006530(n+1)%A124375(n+1))` -/
def P5413769657896649963.Spec : Prop :=
  ∀ n, P5413769657896649963.a n = A322027 (n + 1)

end A322027

/-! ## A322027.P9709231020896986900

`gcd(A079202((n+1)/2^val(n+1, 2)), A324923(n+1))`
-/

namespace A322027.P9709231020896986900
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A079202 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ))).toNat) (A324923 (n + 1))

end

end A322027.P9709231020896986900

namespace A322027

/-- `gcd(A079202((n+1)/2^val(n+1, 2)), A324923(n+1))` -/
def P9709231020896986900.Spec : Prop :=
  ∀ n, (P9709231020896986900.a n : ℤ) = A322027 (n + 1)

end A322027

/-! ## A322027.P7903092075086695140

`A003056(A293432(n+1)%A271084(n))`
-/

namespace A322027.P7903092075086695140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (Int.tmod (A293432 (n + 1)) (A271084 n)).toNat

end

end A322027.P7903092075086695140

namespace A322027

/-- `A003056(A293432(n+1)%A271084(n))` -/
def P7903092075086695140.Spec : Prop :=
  ∀ n, P7903092075086695140.a n = A322027 (n + 1)

end A322027

/-! ## A322027.P17074721282888344736

`gcd(A109082(n+1), A351978(A038207(n)))`
-/

namespace A322027.P17074721282888344736
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A109082 (n + 1)) (A351978 (A038207 n).toNat)

end

end A322027.P17074721282888344736

namespace A322027

/-- `gcd(A109082(n+1), A351978(A038207(n)))` -/
def P17074721282888344736.Spec : Prop :=
  ∀ n, (P17074721282888344736.a n : ℤ) = A322027 (n + 1)

end A322027

/-!
# A322028: Number of distinct orders of primeness among the prime factors of n.

The programs for A322028, there is no canonical definition to state claims against.
-/

/-! ## A322028.P13279578215239294882

`gcd(∑{p}[n+1, gcd(n, #)], A321272(∏{p}[n+1, #]))`
-/

namespace A322028.P13279578215239294882
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((∑ p ∈ Nat.primeFactors (f1 n), Nat.gcd n p : ℕ) : ℤ) (A321272 (∏ p ∈ Nat.primeFactors (f2 n), p))

end

end A322028.P13279578215239294882

/-! ## A322028.P18183109439621799364

`gcd(A321272(A015053(n+1)), A322307(n+1))`
-/

namespace A322028.P18183109439621799364
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A321272 (A015053 (n + 1)).toNat) (A322307 (n + 1))

end

end A322028.P18183109439621799364

/-! ## A322028.P11792190241978797518

`gcd(A001221(n+1), A037912(A098978(n)))`
-/

namespace A322028.P11792190241978797518
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A001221 (n + 1)) (A037912 (A098978 n).toNat)

end

end A322028.P11792190241978797518

/-! ## A322028.P8299308409128622468

`gcd(A001221(A066729(n+1)), A269162(n))`
-/

namespace A322028.P8299308409128622468
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A001221 (A066729 (n + 1)).toNat) (A269162 n)

end

end A322028.P8299308409128622468

/-! ## A322028.P10151396815982733198

`gcd(A001221(A062828(2*(n+1))), A141553(2*n+1))`
-/

namespace A322028.P10151396815982733198
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A001221 (A062828 (2 * (n + 1))).toNat) (A141553 (2 * n + 1))

end

end A322028.P10151396815982733198

/-!
# A322030: Numbers whose prime factors all have the same order of primeness.

The programs for A322030, there is no canonical definition to state claims against.
-/

/-! ## A322030.P6426939897504879189

`record[root(n, a(A322028(n)))]` with `a(0)=1`
-/

namespace A322030.P6426939897504879189
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.rec [1] fun n f1 =>
  (n : ℝ) ^ (1 / f1 (A322028 n).toNat)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A322030.P6426939897504879189

/-! ## A322030.P6469341758054822012

`lt[A322028(n+1), 2]+1`
-/

namespace A322030.P6469341758054822012
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322028 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A322030.P6469341758054822012

/-! ## A322030.P3477338058811869913

`record[A016825(n)/2-n*A322028(n+1)]`
-/

namespace A322030.P3477338058811869913
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016825 n : ℚ) / 2 - ((n : ℤ) * A322028 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A322030.P3477338058811869913

/-! ## A322030.P9839082028432945555

`eq[A157928(A006530(n+1)), A322028(n+1)]+1`
-/

namespace A322030.P9839082028432945555
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157928 (A006530 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322028 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A322030.P9839082028432945555

/-! ## A322030.P15431433503187246806

`record[A005408(n)-n*A322028(n+1)]`
-/

namespace A322030.P15431433503187246806
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 n - (n : ℤ) * A322028 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A322030.P15431433503187246806

/-! ## A322030.P4168338218231605249

`record[A016777(n)-n-n*A322028(n+1)]`
-/

namespace A322030.P4168338218231605249
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016777 n - (n : ℤ) - (n : ℤ) * A322028 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A322030.P4168338218231605249

/-! ## A322030.P16494893863339557541

`eq[A057427(n), A322028(n+1)]+1`
-/

namespace A322030.P16494893863339557541
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322028 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A322030.P16494893863339557541

/-! ## A322030.P11588156635923485053

`eq[A157928(n+1), A322028(n+1)]+1`
-/

namespace A322030.P11588156635923485053
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157928 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322028 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A322030.P11588156635923485053

/-! ## A322030.P15632193659678825239

`eq[A060576(n), A322028(A257088(n))]`
-/

namespace A322030.P15632193659678825239
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060576 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322028 (A257088 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A322030.P15632193659678825239

/-!
# A322031: (Sum_{t=0..oo} ((-1)^t*(2*t+1)*q^((2*t+1)^2)))^3 * (Sum_{t=0..oo} q^((2*t+1)^2)) = Sum_{k=0..oo} a(k)*q^(8*k+4).

The programs for A322031, there is no canonical definition to state claims against.
-/

/-! ## A322031.P2941410340861674498

`A267499(2*(n+1))-A107873(A000040(n+1))`
-/

namespace A322031.P2941410340861674498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267499 (2 * (n + 1)) - A107873 (A000040 (n + 1)).toNat

end

end A322031.P2941410340861674498

/-!
# A322032: a(n) = Glaisher's function beta(2n+1).

The programs for A322032, there is no canonical definition to state claims against.
-/

/-! ## A322032.P15408968083213533090

`16*A225872(n)`
-/

namespace A322032.P15408968083213533090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  16 * A225872 n

end

end A322032.P15408968083213533090

/-! ## A322032.P11035762153790509483

`A225543(n)-A000735(n)`
-/

namespace A322032.P11035762153790509483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225543 n - A000735 n

end

end A322032.P11035762153790509483

/-! ## A322032.P16704491381834203657

`A225923(n)-A225543(n)`
-/

namespace A322032.P16704491381834203657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225923 n - A225543 n

end

end A322032.P16704491381834203657

/-! ## A322032.P16293851016845063286

`(A225923(n)-A000735(n))/2`
-/

namespace A322032.P16293851016845063286
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A225923 n - A000735 n : ℚ) / 2

end

end A322032.P16293851016845063286

/-! ## A322032.P8636253569886856082

`A225912(Δ[n²])-A225543(n)`
-/

namespace A322032.P8636253569886856082
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225912 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat - A225543 n

end

end A322032.P8636253569886856082

/-!
# A322034: Let p1 <= p2 <= ... <= pk be the prime factors of n, with repetition; let s = 1/p1 + 1/(p1*p2) + 1/(p1*p2*p3) + ... + 1/(p1*p2*...*pk); a(n) = numerator of s. a(1)=0 by convention.

The programs for A322034, there is no canonical definition to state claims against.
-/

/-! ## A322034.P14320398179505959650

`lcm(n+1, A006022(n+1))/(n+1)`
-/

namespace A322034.P14320398179505959650
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (n + 1 : ℤ) (A006022 (n + 1)) : ℚ) / (n + 1 : ℚ)

end

end A322034.P14320398179505959650

/-! ## A322034.P9945659391469412399

`A322035(n+1)-A322036(n+1)`
-/

namespace A322034.P9945659391469412399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322035 (n + 1) - A322036 (n + 1)

end

end A322034.P9945659391469412399

/-! ## A322034.P14196885292509195103

`A006022(n+1)/(n+1)*A322035(n+1)`
-/

namespace A322034.P14196885292509195103
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006022 (n + 1) : ℚ) / (n + 1 : ℚ) * (A322035 (n + 1) : ℚ)

end

end A322034.P14196885292509195103

/-! ## A322034.P5417991616948824185

`A006022(n+1)/gcd(n+1, A332993(n+1))`
-/

namespace A322034.P5417991616948824185
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006022 (n + 1) : ℚ) / (Int.gcd (n + 1 : ℤ) (A332993 (n + 1)) : ℚ)

end

end A322034.P5417991616948824185

/-! ## A322034.P9589142721059144677

`A006022(n+1)/gcd(A006022(n+1), A052126(n+1))`
-/

namespace A322034.P9589142721059144677
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006022 (n + 1) : ℚ) / (Int.gcd (A006022 (n + 1)) (A052126 (n + 1)) : ℚ)

end

end A322034.P9589142721059144677

/-! ## A322034.P13111072577723204514

`A277227(A006022(n+1)+A000124(n))-A322036(n+1)`
-/

namespace A322034.P13111072577723204514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277227 (A006022 (n + 1) + A000124 n).toNat - A322036 (n + 1)

end

end A322034.P13111072577723204514

/-! ## A322034.P1410529367927086797

`A277227(A192330(n+1)+A000217(n))-A322036(n+1)`
-/

namespace A322034.P1410529367927086797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277227 (A192330 (n + 1) + A000217 n).toNat - A322036 (n + 1)

end

end A322034.P1410529367927086797

/-!
# A322035: Let p1 <= p2 <= ... <= pk be the prime factors of n, with repetition; let s = 1/p1 + 1/(p1*p2) + 1/(p1*p2*p3) + ... + 1/(p1*p2*...*pk); a(n) = denominator of s. a(1)=1 by convention.

The programs for A322035, there is no canonical definition to state claims against.
-/

/-! ## A322035.P15196591402432882297

`(n+1)/gcd(n+1, A006022(n+1))`
-/

namespace A322035.P15196591402432882297
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (Int.gcd (n + 1 : ℤ) (A006022 (n + 1)) : ℚ)

end

end A322035.P15196591402432882297

/-! ## A322035.P2518480138356574685

`A322036(n+1)+A322034(n+1)`
-/

namespace A322035.P2518480138356574685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322036 (n + 1) + A322034 (n + 1)

end

end A322035.P2518480138356574685

/-! ## A322035.P626008139092695686

`(n+1)/gcd(A052126(n+1), A332993(n+1))`
-/

namespace A322035.P626008139092695686
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (Int.gcd (A052126 (n + 1)) (A332993 (n + 1)) : ℚ)

end

end A322035.P626008139092695686

/-! ## A322035.P17098695140858596630

`A322036(n+1)+lcm(n+1, A006022(n+1))/(n+1)`
-/

namespace A322035.P17098695140858596630
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A322036 (n + 1) : ℚ) + (Int.lcm (n + 1 : ℤ) (A006022 (n + 1)) : ℚ) / (n + 1 : ℚ)

end

end A322035.P17098695140858596630

/-! ## A322035.P8799956935253246726

`lcm(A000027(n+1), A332993(n+1))/A332993(n+1)`
-/

namespace A322035.P8799956935253246726
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (A000027 (n + 1)) (A332993 (n + 1)) : ℚ) / (A332993 (n + 1) : ℚ)

end

end A322035.P8799956935253246726

/-! ## A322035.P2739085346868283211

`A277227(A006022(n+1)+A000124(n))`
-/

namespace A322035.P2739085346868283211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277227 (A006022 (n + 1) + A000124 n).toNat

end

end A322035.P2739085346868283211

/-! ## A322035.P12997440235434706528

`A277227(A192330(n+1)+A000217(n))`
-/

namespace A322035.P12997440235434706528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277227 (A192330 (n + 1) + A000217 n).toNat

end

end A322035.P12997440235434706528

/-! ## A322035.P7017200964289845230

`A277227(A332993(n+1)+A161680(n))`
-/

namespace A322035.P7017200964289845230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277227 (A332993 (n + 1) + A161680 n).toNat

end

end A322035.P7017200964289845230

/-!
# A322036: a(n) = A322035(n) - A322034(n).

The programs for A322036, there is no canonical definition to state claims against.
-/

/-! ## A322036.P4333095604752035045

`A322035(n+1)-A322034(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A322036.P4333095604752035045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322035 (n + 1) - A322034 (n + 1)

end

end A322036.P4333095604752035045

/-! ## A322036.P10361134734033499257

`(n+1)/gcd(n+1, A006022(n+1))-A322034(n+1)`
-/

namespace A322036.P10361134734033499257
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (Int.gcd (n + 1 : ℤ) (A006022 (n + 1)) : ℚ) - (A322034 (n + 1) : ℚ)

end

end A322036.P10361134734033499257

/-! ## A322036.P6836335202647486975

`A322035(n+1)-lcm(n+1, A006022(n+1))/(n+1)`
-/

namespace A322036.P6836335202647486975
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A322035 (n + 1) : ℚ) - (Int.lcm (n + 1 : ℤ) (A006022 (n + 1)) : ℚ) / (n + 1 : ℚ)

end

end A322036.P6836335202647486975

/-! ## A322036.P12842057974957226945

`(n+1)/gcd(A052126(n+1), A332993(n+1))-A322034(n+1)`
-/

namespace A322036.P12842057974957226945
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (Int.gcd (A052126 (n + 1)) (A332993 (n + 1)) : ℚ) - (A322034 (n + 1) : ℚ)

end

end A322036.P12842057974957226945

/-! ## A322036.P5906931233967577273

`A322035(A000027(n+1))-A006022(n+1)/(n+1)*A322035(n+1)`
-/

namespace A322036.P5906931233967577273
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A322035 (A000027 (n + 1)).toNat : ℚ) - (A006022 (n + 1) : ℚ) / (n + 1 : ℚ) * (A322035 (n + 1) : ℚ)

end

end A322036.P5906931233967577273

/-! ## A322036.P6023939820793819447

`A164306(∑[n+1]-A006022(n+1))`
-/

namespace A322036.P6023939820793819447
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164306 (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A006022 (n + 1)).toNat

end

end A322036.P6023939820793819447

/-! ## A322036.P10275898116774642090

`A277227(A006022(n+1)+A000124(n))-A322034(n+1)`
-/

namespace A322036.P10275898116774642090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277227 (A006022 (n + 1) + A000124 n).toNat - A322034 (n + 1)

end

end A322036.P10275898116774642090

/-! ## A322036.P4107788124165267605

`A277227(A192330(n+1)+A000217(n))-A322034(n+1)`
-/

namespace A322036.P4107788124165267605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277227 (A192330 (n + 1) + A000217 n).toNat - A322034 (n + 1)

end

end A322036.P4107788124165267605

/-! ## A322036.P6293509896405362650

`A277227(A332993(n+1)+A161680(n))-A322034(n+1)`
-/

namespace A322036.P6293509896405362650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277227 (A332993 (n + 1) + A161680 n).toNat - A322034 (n + 1)

end

end A322036.P6293509896405362650

/-!
# A322037: a(n) = 2^b(n), where b(n) = A000031(n).

The programs for A322037, there is no canonical definition to state claims against.
-/

/-! ## A322037.P8559906973287610982

`2^A000031(n)`
-/

namespace A322037.P8559906973287610982
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A000031 n : ℤ)

end

end A322037.P8559906973287610982

/-! ## A322037.P2545974131596563153

`2^A052313(∑[n])`
-/

namespace A322037.P2545974131596563153
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A052313 (∑ j ∈ Finset.range (n + 1), f1 j) : ℤ)

end

end A322037.P2545974131596563153

/-! ## A322037.P6914890930942510785

`2^(A055376(∑[n])+1)`
-/

namespace A322037.P6914890930942510785
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A055376 (∑ j ∈ Finset.range (n + 1), f1 j) + 1 : ℤ)

end

end A322037.P6914890930942510785

/-! ## A322037.P18057760004257622074

`2^(Δ[A052825(n)]+1)`
-/

namespace A322037.P18057760004257622074
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052825 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (f1 (n + 1) - f1 n + 1 : ℤ)

end

end A322037.P18057760004257622074

/-! ## A322037.P1240030150459486622

`2^(2^n-A209970(n))`
-/

namespace A322037.P1240030150459486622
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((2 ^ n : ℤ) - A209970 n : ℤ)

end

end A322037.P1240030150459486622

/-!
# A322038: Irregular triangle read by rows: for n >= 0, row n gives the coordination sequence for the tiling of a flat torus by a square grid with n points along each circuit.

The programs for A322038, there is no canonical definition to state claims against.
-/

/-! ## A322038.P4230307427413140338

`A038571(A223048(A123521(n)))`
-/

namespace A322038.P4230307427413140338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038571 (A223048 (A123521 n).toNat).toNat

end

end A322038.P4230307427413140338

/-! ## A322038.P10844903442025554312

`∑{e}[A253438(A128101(n)), #]`
-/

namespace A322038.P10844903442025554312
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253438 (A128101 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A322038.P10844903442025554312

/-! ## A322038.P4260273549934375287

`A000120(A156587(comp[3*(∑[n+2]-2)]))`
-/

namespace A322038.P4260273549934375287
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - 2)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A156587 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)).toNat

end

end A322038.P4260273549934375287

/-! ## A322038.P2138531641050098115

`A193169(A143007(A168183(n+1))²)`
-/

namespace A322038.P2138531641050098115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193169 (A143007 (A168183 (n + 1)).toNat ^ 2).toNat

end

end A322038.P2138531641050098115

/-!
# A322039: Expansion of (1 + x)^2 / ((1 - x)^2*(1 + 2*x)^2).

The programs for A322039, the canonical program `A322039.P3777290873447890734` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A322039 has offset 0).

The definition of A322039 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1+2x+x^2)/(1+2x-3x^2-4x^3+4x^4))` (program `A322039.P3777290873447890734`, by `A322039.P3777290873447890734.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A322039.P3777290873447890734

`ogf((1+2x+x^2)/(1+2x-3x^2-4x^3+4x^4))`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A322039

/-- `ogf((1+2x+x^2)/(1+2x-3x^2-4x^3+4x^4))` -/
def P3777290873447890734.Spec : Prop :=
  ∀ n, P3777290873447890734.a n = A322039 n

theorem P3777290873447890734.correct : P3777290873447890734.Spec := by
  intro n
  simp only [A322039]

end A322039

/-! ## A322039.P12728883290090762014

`(16+11*(-2)^n+3*(4+(-2)^n)*n)/27`
-/

namespace A322039.P12728883290090762014
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (16 + 11 * (-2) ^ n + 3 * (4 + (-2) ^ n) * (n : ℤ) : ℚ) / 27

end

end A322039.P12728883290090762014

namespace A322039

/-- `(16+11*(-2)^n+3*(4+(-2)^n)*n)/27` -/
def P12728883290090762014.Spec : Prop :=
  ∀ n, P12728883290090762014.a n = (A322039 n : ℚ)

end A322039

/-! ## A322039.P8435333239730834441

`4*(n-(a(n-1)+a(n-2)))` with `a(0)=1, a(1)=0`
-/

namespace A322039.P8435333239730834441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  4 * ((n : ℤ) - (a (n - 1) + a (n - 2)))

end

end A322039.P8435333239730834441

namespace A322039

/-- `4*(n-(a(n-1)+a(n-2)))` -/
def P8435333239730834441.Spec : Prop :=
  ∀ n, P8435333239730834441.a n = A322039 n

end A322039

/-! ## A322039.P6359750508898982342

`4*(n-a(n-1)-a(n-2))` with `a(0)=1, a(1)=0`
-/

namespace A322039.P6359750508898982342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  4 * ((n : ℤ) - a (n - 1) - a (n - 2))

end

end A322039.P6359750508898982342

namespace A322039

/-- `4*(n-a(n-1)-a(n-2))` -/
def P6359750508898982342.Spec : Prop :=
  ∀ n, P6359750508898982342.a n = A322039 n

end A322039

/-! ## A322039.P12971066949915222534

`∑[A084219(n)]`
-/

namespace A322039.P12971066949915222534
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084219 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A322039.P12971066949915222534

namespace A322039

/-- `∑[A084219(n)]` -/
def P12971066949915222534.Spec : Prop :=
  ∀ n, P12971066949915222534.a n = A322039 n

end A322039

/-!
# A322040: Expansion of (1 + x)^2 / ((1 - x)^2*(1 + 2*x + 2*x^2)^2).

The programs for A322040, the canonical program `A322040.P10699084621056745568` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A322040 has offset 0).

The definition of A322040 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1+2x+x^2)/(1+2x+x^2-4x^3-4x^4+4x^6))` (program `A322040.P10699084621056745568`, by `A322040.P10699084621056745568.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A322040.P10699084621056745568

`ogf((1+2x+x^2)/(1+2x+x^2-4x^3-4x^4+4x^6))`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A322040

/-- `ogf((1+2x+x^2)/(1+2x+x^2-4x^3-4x^4+4x^6))` -/
def P10699084621056745568.Spec : Prop :=
  ∀ n, P10699084621056745568.a n = A322040 n

theorem P10699084621056745568.correct : P10699084621056745568.Spec := by
  intro n
  simp only [A322040]

end A322040

/-! ## A322040.P8189386611913046995

`∑[∑[A181472(A000124(n+1))]]`
-/

namespace A322040.P8189386611913046995
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181472 (A000124 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A322040.P8189386611913046995

namespace A322040

/-- `∑[∑[A181472(A000124(n+1))]]` -/
def P8189386611913046995.Spec : Prop :=
  ∀ n, P8189386611913046995.a n = A322040 n

end A322040

/-!
# A322041: Triangle read by rows: let E denote the standard triangular 6-valent grid in the plane, regarded as a graph with the Eisenstein integers as vertices; row n gives the coordination sequence of the quotient graph E/nE.

The programs for A322041, there is no canonical definition to state claims against.
-/

/-! ## A322041.P15098654676211742097

`A239342(A194540(n+1))%Δ[A141214(n)]`
-/

namespace A322041.P15098654676211742097
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141214 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A239342 (A194540 (n + 1)).toNat) (f1 (n + 1) - f1 n)

end

end A322041.P15098654676211742097

/-!
# A322042: Maximum edge-distance of a point in the quotient graph E/nE from the origin (see A322041 for further information).

The programs for A322042, the canonical program `A322042.P12286324292394073646` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A322042 has offset 1).

The definition of A322042 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A322042.P12286324292394073646

`∑[n²%3]`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A322042

/-- `∑[n²%3]` -/
def P12286324292394073646.Spec : Prop :=
  ∀ n, (P12286324292394073646.a n : ℤ) = A322042 (n + 1)

theorem P12286324292394073646.correct : P12286324292394073646.Spec := by
  intro n
  simp only [A322042, Nat.add_sub_cancel]

end A322042

/-! ## A322042.P18130031679922251163

`ceil(2/3*n)`
-/

namespace A322042.P18130031679922251163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(2 : ℚ) / 3 * (n : ℚ)⌉

end

end A322042.P18130031679922251163

namespace A322042

/-- `ceil(2/3*n)` -/
def P18130031679922251163.Spec : Prop :=
  ∀ n, P18130031679922251163.a n = A322042 (n + 1)

end A322042

/-! ## A322042.P7364521338866638155

`∑[floor(sqrt(n%3))]`
-/

namespace A322042.P7364521338866638155
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.sqrt (n % 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A322042.P7364521338866638155

namespace A322042

/-- `∑[floor(sqrt(n%3))]` -/
def P7364521338866638155.Spec : Prop :=
  ∀ n, (P7364521338866638155.a n : ℤ) = A322042 (n + 1)

end A322042

/-! ## A322042.P9127536714039664916

`∑[ceil(cos(gcd(3, n)))]`
-/

namespace A322042.P9127536714039664916
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.cos (Nat.gcd 3 n : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A322042.P9127536714039664916

namespace A322042

/-- `∑[ceil(cos(gcd(3, n)))]` -/
def P9127536714039664916.Spec : Prop :=
  ∀ n, P9127536714039664916.a n = A322042 (n + 1)

end A322042

/-! ## A322042.P3183519360893788075

`∑[char[comp[lcm(3, n)]]]`
-/

namespace A322042.P3183519360893788075
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 3 n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ x) n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A322042.P3183519360893788075

namespace A322042

/-- `∑[char[comp[lcm(3, n)]]]` -/
def P3183519360893788075.Spec : Prop :=
  ∀ n, (P3183519360893788075.a n : ℤ) = A322042 (n + 1)

end A322042

/-! ## A322042.P17527929182438968704

`∑[round(abs(sin(dr(n))))]`
-/

namespace A322042.P17527929182438968704
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway |Real.sin (SequenceMachineLib.digitalRoot (n : ℤ) : ℝ)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A322042.P17527929182438968704

namespace A322042

/-- `∑[round(abs(sin(dr(n))))]` -/
def P17527929182438968704.Spec : Prop :=
  ∀ n, P17527929182438968704.a n = A322042 (n + 1)

end A322042

/-! ## A322042.P12681221841787172569

`∑[round(sin(dr(n)))²]`
-/

namespace A322042.P12681221841787172569
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sin (SequenceMachineLib.digitalRoot (n : ℤ) : ℝ)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A322042.P12681221841787172569

namespace A322042

/-- `∑[round(sin(dr(n)))²]` -/
def P12681221841787172569.Spec : Prop :=
  ∀ n, P12681221841787172569.a n = A322042 (n + 1)

end A322042

/-! ## A322042.P10315174737221950162

`∑[dr(round(sin(dr(n))))]`
-/

namespace A322042.P10315174737221950162
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (SequenceMachineLib.roundAway (Real.sin (SequenceMachineLib.digitalRoot (n : ℤ) : ℝ)))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A322042.P10315174737221950162

namespace A322042

/-- `∑[dr(round(sin(dr(n))))]` -/
def P10315174737221950162.Spec : Prop :=
  ∀ n, (P10315174737221950162.a n : ℤ) = A322042 (n + 1)

end A322042

/-! ## A322042.P5764985420514990573

`∑[sqrt((n^4)%3)]`
-/

namespace A322042.P5764985420514990573
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt ((n ^ 4 % 3 : ℕ) : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A322042.P5764985420514990573

namespace A322042

/-- `∑[sqrt((n^4)%3)]` -/
def P5764985420514990573.Spec : Prop :=
  ∀ n, P5764985420514990573.a n = (A322042 (n + 1) : ℝ)

end A322042

/-! ## A322042.P13394246355658048400

`∑[dr((n^6)%3)]`
-/

namespace A322042.P13394246355658048400
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot ((n ^ 6 % 3 : ℕ) : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A322042.P13394246355658048400

namespace A322042

/-- `∑[dr((n^6)%3)]` -/
def P13394246355658048400.Spec : Prop :=
  ∀ n, (P13394246355658048400.a n : ℤ) = A322042 (n + 1)

end A322042

/-! ## A322042.P4838441241900506338

`∑[xor(1, char[3*n])]`
-/

namespace A322042.P4838441241900506338
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (if ∃ j, f2 j = n then 1 else 0)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A322042.P4838441241900506338

namespace A322042

/-- `∑[xor(1, char[3*n])]` -/
def P4838441241900506338.Spec : Prop :=
  ∀ n, (P4838441241900506338.a n : ℤ) = A322042 (n + 1)

end A322042

/-! ## A322042.P17852419892200717498

`round(or(1, 2*n)/3)`
-/

namespace A322042.P17852419892200717498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Nat.lor 1 (2 * n) : ℚ) / 3)

end

end A322042.P17852419892200717498

namespace A322042

/-- `round(or(1, 2*n)/3)` -/
def P17852419892200717498.Spec : Prop :=
  ∀ n, P17852419892200717498.a n = A322042 (n + 1)

end A322042

/-! ## A322042.P8897939977112189214

`round(xor(1, 2*n)/3)`
-/

namespace A322042.P8897939977112189214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Nat.xor 1 (2 * n) : ℚ) / 3)

end

end A322042.P8897939977112189214

namespace A322042

/-- `round(xor(1, 2*n)/3)` -/
def P8897939977112189214.Spec : Prop :=
  ∀ n, P8897939977112189214.a n = A322042 (n + 1)

end A322042

/-! ## A322042.P6917455717797490491

`2*n-comp[or(3, n)]`
-/

namespace A322042.P6917455717797490491
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 3 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ)

end

end A322042.P6917455717797490491

namespace A322042

/-- `2*n-comp[or(3, n)]` -/
def P6917455717797490491.Spec : Prop :=
  ∀ n, P6917455717797490491.a n = A322042 (n + 1)

end A322042

/-! ## A322042.P4979398179418166649

`∑[dr(1-char[3*n])]`
-/

namespace A322042.P4979398179418166649
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (1 - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A322042.P4979398179418166649

namespace A322042

/-- `∑[dr(1-char[3*n])]` -/
def P4979398179418166649.Spec : Prop :=
  ∀ n, (P4979398179418166649.a n : ℤ) = A322042 (n + 1)

end A322042

/-! ## A322042.P13500315722226461023

`∑[and(1, ∑[dr(3*n)])]`
-/

namespace A322042.P13500315722226461023
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (3 * n : ℤ)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A322042.P13500315722226461023

namespace A322042

/-- `∑[and(1, ∑[dr(3*n)])]` -/
def P13500315722226461023.Spec : Prop :=
  ∀ n, (P13500315722226461023.a n : ℤ) = A322042 (n + 1)

end A322042

/-! ## A322042.P4498266419340601864

`n-comp[or(3, n)]+n`
-/

namespace A322042.P4498266419340601864
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 3 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) + (n : ℤ)

end

end A322042.P4498266419340601864

namespace A322042

/-- `n-comp[or(3, n)]+n` -/
def P4498266419340601864.Spec : Prop :=
  ∀ n, P4498266419340601864.a n = A322042 (n + 1)

end A322042

/-! ## A322042.P1297907087390063272

`n-(comp[or(3, n)]-n)`
-/

namespace A322042.P1297907087390063272
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 3 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ))

end

end A322042.P1297907087390063272

namespace A322042

/-- `n-(comp[or(3, n)]-n)` -/
def P1297907087390063272.Spec : Prop :=
  ∀ n, P1297907087390063272.a n = A322042 (n + 1)

end A322042

/-! ## A322042.P12745699469310669850

`n-∑[∑{p}[n, val(#, 3)]]`
-/

namespace A322042.P12745699469310669850
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), SequenceMachineLib.valuation p 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A322042.P12745699469310669850

namespace A322042

/-- `n-∑[∑{p}[n, val(#, 3)]]` -/
def P12745699469310669850.Spec : Prop :=
  ∀ n, P12745699469310669850.a n = A322042 (n + 1)

end A322042

/-! ## A322042.P7085555463050663034

`2+a(n-3)` with `a(0)=0, a(1)=1, a(2)=2`
-/

namespace A322042.P7085555463050663034
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 2] fun n a =>
  2 + a (n - 3)

end

end A322042.P7085555463050663034

namespace A322042

/-- `2+a(n-3)` -/
def P7085555463050663034.Spec : Prop :=
  ∀ n, (P7085555463050663034.a n : ℤ) = A322042 (n + 1)

end A322042

/-!
# A322043: Numbers k such that the coefficient of x^k in the expansion of Product_{m >= 1} (1-x^m)^15 is zero.

The programs for A322043, the canonical program `A322043.P5518800842986828842` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A322043 has offset 1).

The definition of A322043 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A322043.P5518800842986828842

`(429*(n+1)²-429*(n+1)+106)/2`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A322043

/-- `(429*(n+1)²-429*(n+1)+106)/2` -/
def P5518800842986828842.Spec : Prop :=
  ∀ n, P5518800842986828842.a n = (A322043 (n + 1) : ℚ)

end A322043

/-! ## A322043.P15774984562879347532

`A158644(2*n+1)+A152741(n)`
-/

namespace A322043.P15774984562879347532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158644 (2 * n + 1) + A152741 n

end

end A322043.P15774984562879347532

namespace A322043

/-- `A158644(2*n+1)+A152741(n)` -/
def P15774984562879347532.Spec : Prop :=
  ∀ n, P15774984562879347532.a n = A322043 (n + 1)

end A322043

/-! ## A322043.P18427397352049537584

`A158656(2*n+1)-A045943(n)`
-/

namespace A322043.P18427397352049537584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158656 (2 * n + 1) - A045943 n

end

end A322043.P18427397352049537584

namespace A322043

/-- `A158656(2*n+1)-A045943(n)` -/
def P18427397352049537584.Spec : Prop :=
  ∀ n, P18427397352049537584.a n = A322043 (n + 1)

end A322043

/-! ## A322043.P10309769224537366664

`A158656(2*n+1)-∑[A008585(n)]`
-/

namespace A322043.P10309769224537366664
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008585 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158656 (2 * n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A322043.P10309769224537366664

namespace A322043

/-- `A158656(2*n+1)-∑[A008585(n)]` -/
def P10309769224537366664.Spec : Prop :=
  ∀ n, P10309769224537366664.a n = A322043 (n + 1)

end A322043

/-! ## A322043.P13501668924005213354

`A260955(A016777(n))-∑[A008486(n)]`
-/

namespace A322043.P13501668924005213354
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260955 (A016777 n).toNat - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A322043.P13501668924005213354

namespace A322043

/-- `A260955(A016777(n))-∑[A008486(n)]` -/
def P13501668924005213354.Spec : Prop :=
  ∀ n, P13501668924005213354.a n = A322043 (n + 1)

end A322043

/-! ## A322043.P12032281383959377957

`A001545(A016777(n))-A069178(n+1)`
-/

namespace A322043.P12032281383959377957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001545 (A016777 n).toNat - A069178 (n + 1)

end

end A322043.P12032281383959377957

namespace A322043

/-- `A001545(A016777(n))-A069178(n+1)` -/
def P12032281383959377957.Spec : Prop :=
  ∀ n, P12032281383959377957.a n = A322043 (n + 1)

end A322043

/-! ## A322043.P12454276913466917641

`A022284(4*n+2)-A000326(n)`
-/

namespace A322043.P12454276913466917641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022284 (4 * n + 2) - A000326 n

end

end A322043.P12454276913466917641

namespace A322043

/-- `A022284(4*n+2)-A000326(n)` -/
def P12454276913466917641.Spec : Prop :=
  ∀ n, P12454276913466917641.a n = A322043 (n + 1)

end A322043

/-! ## A322043.P15521958622847469399

`A022285(A016825(n))-∑[A016789(n)]`
-/

namespace A322043.P15521958622847469399
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016789 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022285 (A016825 n).toNat - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A322043.P15521958622847469399

namespace A322043

/-- `A022285(A016825(n))-∑[A016789(n)]` -/
def P15521958622847469399.Spec : Prop :=
  ∀ n, P15521958622847469399.a n = A322043 (n + 1)

end A322043

/-! ## A322043.P12955203944503411490

`A081267(A017017(n))-A033569(n)`
-/

namespace A322043.P12955203944503411490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081267 (A017017 n).toNat - A033569 n

end

end A322043.P12955203944503411490

namespace A322043

/-- `A081267(A017017(n))-A033569(n)` -/
def P12955203944503411490.Spec : Prop :=
  ∀ n, P12955203944503411490.a n = A322043 (n + 1)

end A322043

/-! ## A322043.P2559260776872142269

`A000217(A017017(3*n+1))-A238410(2*(n+1))`
-/

namespace A322043.P2559260776872142269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A017017 (3 * n + 1)).toNat - A238410 (2 * (n + 1))

end

end A322043.P2559260776872142269

namespace A322043

/-- `A000217(A017017(3*n+1))-A238410(2*(n+1))` -/
def P2559260776872142269.Spec : Prop :=
  ∀ n, P2559260776872142269.a n = A322043 (n + 1)

end A322043

/-! ## A322043.P7154855868714076930

`A158656(A005408(n))-A008585(∑[n])`
-/

namespace A322043.P7154855868714076930
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158656 (A005408 n).toNat - A008585 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A322043.P7154855868714076930

namespace A322043

/-- `A158656(A005408(n))-A008585(∑[n])` -/
def P7154855868714076930.Spec : Prop :=
  ∀ n, P7154855868714076930.a n = A322043 (n + 1)

end A322043

/-! ## A322043.P12754403076578993206

`A260955(A016777(n))-A016777(∑[n])`
-/

namespace A322043.P12754403076578993206
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260955 (A016777 n).toNat - A016777 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A322043.P12754403076578993206

namespace A322043

/-- `A260955(A016777(n))-A016777(∑[n])` -/
def P12754403076578993206.Spec : Prop :=
  ∀ n, P12754403076578993206.a n = A322043 (n + 1)

end A322043

/-! ## A322043.P3405842986729229285

`A158646(2*n+1)-A016789(A000217(n))`
-/

namespace A322043.P3405842986729229285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158646 (2 * n + 1) - A016789 (A000217 n).toNat

end

end A322043.P3405842986729229285

namespace A322043

/-- `A158646(2*n+1)-A016789(A000217(n))` -/
def P3405842986729229285.Spec : Prop :=
  ∀ n, P3405842986729229285.a n = A322043 (n + 1)

end A322043

/-!
# A322045: Triangular numbers that are 2-digit-repblocks.

The programs for A322045, there is no canonical definition to state claims against.
-/

/-! ## A322045.P13926486833087160289

`A000217(A055647(n+4))`
-/

namespace A322045.P13926486833087160289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A055647 (n + 4)).toNat

end

end A322045.P13926486833087160289

/-! ## A322045.P7832056917030675765

`filter[A078254(n+3), A131309(#)]`
-/

namespace A322045.P7832056917030675765
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078254 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A131309 (f1 j).toNat = 1) n)

end

end A322045.P7832056917030675765

/-! ## A322045.P1600193307001489322

`C(n+5, 2)^∏{p}[4^n, #-1]`
-/

namespace A322045.P1600193307001489322
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 ^ n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose (n + 5) 2 : ℚ) ^ (∏ p ∈ Nat.primeFactors (f1 n), ((p : ℤ) - 1) : ℤ)

end

end A322045.P1600193307001489322

/-! ## A322045.P10080395650518039665

`A337940(C(n+3, 2))`
-/

namespace A322045.P10080395650518039665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337940 (Nat.choose (n + 3) 2)

end

end A322045.P10080395650518039665

/-!
# A322046: Irregular triangle read by rows: a Pascal "rhombus", third in the sequence after A059317 and A027907.

The programs for A322046, there is no canonical definition to state claims against.
-/

/-! ## A322046.P14707806936966790567

`A290726(A394446(n))`
-/

namespace A322046.P14707806936966790567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290726 (A394446 n).toNat

end

end A322046.P14707806936966790567

/-! ## A322046.P14919758785239378903

`A059317(n)+A003982(A001405(n))`
-/

namespace A322046.P14919758785239378903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059317 n + A003982 (A001405 n).toNat

end

end A322046.P14919758785239378903

/-! ## A322046.P5836381618158169716

`A235402(A297193(n))`
-/

namespace A322046.P5836381618158169716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235402 (A297193 n).toNat

end

end A322046.P5836381618158169716

/-! ## A322046.P17173427847499261036

`A235492(A297191(n))`
-/

namespace A322046.P17173427847499261036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235492 (A297191 n).toNat

end

end A322046.P17173427847499261036

/-! ## A322046.P13187051833001066799

`A033265(floor(exp(A059317(n))))`
-/

namespace A322046.P13187051833001066799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033265 ⌊Real.exp (A059317 n : ℝ)⌋.toNat

end

end A322046.P13187051833001066799

/-!
# A322048: Final elements in rows when A322050 is displayed as a triangle.

The programs for A322048, there is no canonical definition to state claims against.
-/

/-! ## A322048.P6844753384953714004

`A322050(2^(n+1))`
-/

namespace A322048.P6844753384953714004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322050 (2 ^ (n + 1))

end

end A322048.P6844753384953714004

/-! ## A322048.P1257756388276032363

`A319019(2^(n+1))/8`
-/

namespace A322048.P1257756388276032363
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A319019 (2 ^ (n + 1)) : ℚ) / 8

end

end A322048.P1257756388276032363

/-! ## A322048.P7099356529008787301

`ogf((1+2x+2x^2+6x^4)/(1-3x+2x^2))`
-/

namespace A322048.P7099356529008787301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 2, 2, 0, 6] [1, -3, 2] n

end

end A322048.P7099356529008787301

/-! ## A322048.P10739533851672385491

`2*a(n-1)+11` with `a(0)=1, a(1)=5, a(2)=15, a(3)=35`
-/

namespace A322048.P10739533851672385491
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 5, 15, 35] fun n a =>
  2 * a (n - 1) + 11

end

end A322048.P10739533851672385491

/-! ## A322048.P13546537383296633950

`or(1, A322050(A198633(n)))`
-/

namespace A322048.P13546537383296633950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A322050 (A198633 n).toNat)

end

end A322048.P13546537383296633950

/-!
# A322049: When A322050 is displayed as a triangle the rows converge to this sequence.

The programs for A322049, there is no canonical definition to state claims against.
-/

/-! ## A322049.P5246649783197172760

`A322050(n+1+2*A140513(n))`
-/

namespace A322049.P5246649783197172760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322050 ((n + 1 : ℤ) + 2 * A140513 n).toNat

end

end A322049.P5246649783197172760

/-! ## A322049.P18194594095399012562

`A322050(n+1+A140513(n)+A140513(n))`
-/

namespace A322049.P18194594095399012562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322050 ((n + 1 : ℤ) + (A140513 n + A140513 n)).toNat

end

end A322049.P18194594095399012562

/-! ## A322049.P1671045499372148227

`A322050(A140513(n+n)+n+1)`
-/

namespace A322049.P1671045499372148227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322050 (A140513 (n + n) + (n + 1 : ℤ)).toNat

end

end A322049.P1671045499372148227

/-! ## A322049.P1873996770261328048

`A322050(A255310(n+2))`
-/

namespace A322049.P1873996770261328048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322050 (A255310 (n + 2)).toNat

end

end A322049.P1873996770261328048

/-! ## A322049.P1454458628363476491

`A322050(A001222(2^(n+1))+64)`
-/

namespace A322049.P1454458628363476491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322050 (A001222 (2 ^ (n + 1)) + 64).toNat

end

end A322049.P1454458628363476491

/-!
# A322050: a(n) = A319019(n)/8.

The programs for A322050, there is no canonical definition to state claims against.
-/

/-! ## A322050.P17222488992704480293

`A319019(n+2)/8`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A322050.P17222488992704480293
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A319019 (n + 2) : ℚ) / 8

end

end A322050.P17222488992704480293

/-! ## A322050.P9453838940772870647

`Δ[A319018(n+1)/8]`
-/

namespace A322050.P9453838940772870647
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A319018 (n + 1) : ℚ) / 8

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A322050.P9453838940772870647

/-! ## A322050.P7893190216913300145

`A106609(A319019(n+2))`
-/

namespace A322050.P7893190216913300145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106609 (A319019 (n + 2)).toNat

end

end A322050.P7893190216913300145

/-! ## A322050.P10376308354554034159

`A026730(Δ[A319018(n+1)])`
-/

namespace A322050.P10376308354554034159
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319018 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026730 (f1 (n + 1) - f1 n).toNat

end

end A322050.P10376308354554034159

/-! ## A322050.P6652143935622648741

`A106609(Δ[A319018(n+1)])`
-/

namespace A322050.P6652143935622648741
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319018 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106609 (f1 (n + 1) - f1 n).toNat

end

end A322050.P6652143935622648741

/-!
# A322051: a(n) is the number of initial terms in the row of length 2^n of A322050 that agree with the limiting sequence A322049.

The programs for A322051, the canonical program `A322051.P10877971197974349955` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A322051 has offset 0).

The definition of A322051 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 334 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A322051.P6700033972745655462

`char[3]+∑[ogf((-1+x+x^2)/(-1+x+2x^2))]`
-/

namespace A322051.P6700033972745655462
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -1, -1] [1, -1, -2] n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) + ∑ j ∈ Finset.range (n + 1), f2 j

end

end A322051.P6700033972745655462

namespace A322051

/-- `char[3]+∑[ogf((-1+x+x^2)/(-1+x+2x^2))]` -/
def P6700033972745655462.Spec : Prop :=
  ∀ n, P6700033972745655462.a n = A322051 n

end A322051

/-! ## A322051.P10877971197974349955

`2*a(n-1)+a(n-2)-2*a(n-3)` with `a(0)=1, a(1)=1, a(2)=2, a(3)=4, a(4)=6, a(5)=11, a(6)=22`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A322051

/-- `2*a(n-1)+a(n-2)-2*a(n-3)` -/
def P10877971197974349955.Spec : Prop :=
  ∀ n, P10877971197974349955.a n = A322051 n

theorem P10877971197974349955.correct : P10877971197974349955.Spec := by
  intro n
  simp only [A322051]

end A322051

/-! ## A322051.P8502598842061306311

`A005578(n)+char[3]`
-/

namespace A322051.P8502598842061306311
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005578 n + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A322051.P8502598842061306311

namespace A322051

/-- `A005578(n)+char[3]` -/
def P8502598842061306311.Spec : Prop :=
  ∀ n, P8502598842061306311.a n = A322051 n

end A322051

/-! ## A322051.P9475032817683841153

`A185013(n)+A005578(n)`
-/

namespace A322051.P9475032817683841153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185013 n + A005578 n

end

end A322051.P9475032817683841153

namespace A322051

/-- `A185013(n)+A005578(n)` -/
def P9475032817683841153.Spec : Prop :=
  ∀ n, P9475032817683841153.a n = A322051 n

end A322051

/-! ## A322051.P5874207145296840083

`A128209(n)-char[A317833(n+1)]`
-/

namespace A322051.P5874207145296840083
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317833 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128209 n - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A322051.P5874207145296840083

namespace A322051

/-- `A128209(n)-char[A317833(n+1)]` -/
def P5874207145296840083.Spec : Prop :=
  ∀ n, P5874207145296840083.a n = A322051 n

end A322051

/-! ## A322051.P10886518401414092855

`char[3]+A001045(n)+A000035(n+1)`
-/

namespace A322051.P10886518401414092855
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) + (A001045 n + A000035 (n + 1))

end

end A322051.P10886518401414092855

namespace A322051

/-- `char[3]+A001045(n)+A000035(n+1)` -/
def P10886518401414092855.Spec : Prop :=
  ∀ n, P10886518401414092855.a n = A322051 n

end A322051

/-! ## A322051.P14525530970591942761

`A014707(A337120(2*n))+A005578(n)`
-/

namespace A322051.P14525530970591942761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014707 (A337120 (2 * n)).toNat + A005578 n

end

end A322051.P14525530970591942761

namespace A322051

/-- `A014707(A337120(2*n))+A005578(n)` -/
def P14525530970591942761.Spec : Prop :=
  ∀ n, P14525530970591942761.a n = A322051 n

end A322051

/-! ## A322051.P3940268197542675776

`ceil(char[3]+2^n/3)`
-/

namespace A322051.P3940268197542675776
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℚ) + (2 ^ n : ℚ) / 3⌉

end

end A322051.P3940268197542675776

namespace A322051

/-- `ceil(char[3]+2^n/3)` -/
def P3940268197542675776.Spec : Prop :=
  ∀ n, P3940268197542675776.a n = A322051 n

end A322051

/-! ## A322051.P1682465138688608410

`A003982(A000015(n+1))+ceil(2^n/3)`
-/

namespace A322051.P1682465138688608410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 (A000015 (n + 1)).toNat + ⌈(2 ^ n : ℚ) / 3⌉

end

end A322051.P1682465138688608410

namespace A322051

/-- `A003982(A000015(n+1))+ceil(2^n/3)` -/
def P1682465138688608410.Spec : Prop :=
  ∀ n, P1682465138688608410.a n = A322051 n

end A322051

/-! ## A322051.P13928839212237571427

`2*a(n-1)-val(a(n-1), 2)%a(n-2)²` with `a(0)=1, a(1)=1`
-/

namespace A322051.P13928839212237571427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  2 * a (n - 1) - Int.tmod (SequenceMachineLib.valuation (a (n - 1)).toNat 2 : ℤ) (a (n - 2) ^ 2)

end

end A322051.P13928839212237571427

namespace A322051

/-- `2*a(n-1)-val(a(n-1), 2)%a(n-2)²` -/
def P13928839212237571427.Spec : Prop :=
  ∀ n, P13928839212237571427.a n = A322051 n

end A322051

/-!
# A322052: Number of decimal strings of length n that contain a specific string xy where x and y are distinct digits.

The programs for A322052, the canonical program `A322052.P4213690938309645053` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A322052 has offset 1).

The definition of A322052 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A322052.P4213690938309645053

`10^(n+1)-A004189(n+2)`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A322052

/-- `10^(n+1)-A004189(n+2)` -/
def P4213690938309645053.Spec : Prop :=
  ∀ n, P4213690938309645053.a n = A322052 (n + 1)

theorem P4213690938309645053.correct : P4213690938309645053.Spec := by
  intro n
  simp only [A322052, Nat.add_sub_cancel]

end A322052

/-! ## A322052.P17531621091388562642

`∑[A322628(n+1)]`
-/

namespace A322052.P17531621091388562642
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322628 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A322052.P17531621091388562642

namespace A322052

/-- `∑[A322628(n+1)]` -/
def P17531621091388562642.Spec : Prop :=
  ∀ n, P17531621091388562642.a n = A322052 (n + 1)

end A322052

/-! ## A322052.P6137441771883665829

`A004189(n)+10*a(n-1)` with `a(0)=0`
-/

namespace A322052.P6137441771883665829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A004189 n + 10 * a (n - 1)

end

end A322052.P6137441771883665829

namespace A322052

/-- `A004189(n)+10*a(n-1)` -/
def P6137441771883665829.Spec : Prop :=
  ∀ n, P6137441771883665829.a n = A322052 (n + 1)

end A322052

/-! ## A322052.P16784257438469341042

`∑[record[A322628(A002262(n))]]`
-/

namespace A322052.P16784257438469341042
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322628 (A002262 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A322052.P16784257438469341042

namespace A322052

/-- `∑[record[A322628(A002262(n))]]` -/
def P16784257438469341042.Spec : Prop :=
  ∀ n, P16784257438469341042.a n = A322052 (n + 1)

end A322052

/-! ## A322052.P8241128230316804526

`∑[record[A322628(A008624(n))]]`
-/

namespace A322052.P8241128230316804526
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322628 (A008624 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A322052.P8241128230316804526

namespace A322052

/-- `∑[record[A322628(A008624(n))]]` -/
def P8241128230316804526.Spec : Prop :=
  ∀ n, P8241128230316804526.a n = A322052 (n + 1)

end A322052

/-! ## A322052.P2176115160672495842

`∑[record[A322628(A025480(n))]]`
-/

namespace A322052.P2176115160672495842
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322628 (A025480 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A322052.P2176115160672495842

namespace A322052

/-- `∑[record[A322628(A025480(n))]]` -/
def P2176115160672495842.Spec : Prop :=
  ∀ n, P2176115160672495842.a n = A322052 (n + 1)

end A322052

/-! ## A322052.P10833436325937367445

`∑[record[A322628(A025581(n))]]`
-/

namespace A322052.P10833436325937367445
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322628 (A025581 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A322052.P10833436325937367445

namespace A322052

/-- `∑[record[A322628(A025581(n))]]` -/
def P10833436325937367445.Spec : Prop :=
  ∀ n, P10833436325937367445.a n = A322052 (n + 1)

end A322052

/-! ## A322052.P10625379844749663187

`∑[record[A322628(A028242(n))]]`
-/

namespace A322052.P10625379844749663187
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322628 (A028242 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A322052.P10625379844749663187

namespace A322052

/-- `∑[record[A322628(A028242(n))]]` -/
def P10625379844749663187.Spec : Prop :=
  ∀ n, P10625379844749663187.a n = A322052 (n + 1)

end A322052

/-! ## A322052.P16501787487824899760

`∑[record[A322628(A028902(n))]]`
-/

namespace A322052.P16501787487824899760
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322628 (A028902 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A322052.P16501787487824899760

namespace A322052

/-- `∑[record[A322628(A028902(n))]]` -/
def P16501787487824899760.Spec : Prop :=
  ∀ n, P16501787487824899760.a n = A322052 (n + 1)

end A322052

/-! ## A322052.P4972995912975070249

`∑[record[A322628(A271439(n))]]`
-/

namespace A322052.P4972995912975070249
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322628 (A271439 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A322052.P4972995912975070249

namespace A322052

/-- `∑[record[A322628(A271439(n))]]` -/
def P4972995912975070249.Spec : Prop :=
  ∀ n, P4972995912975070249.a n = A322052 (n + 1)

end A322052

/-! ## A322052.P7467833651926515691

`∑[record[A322628(A274641(n))]]`
-/

namespace A322052.P7467833651926515691
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322628 (A274641 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A322052.P7467833651926515691

namespace A322052

/-- `∑[record[A322628(A274641(n))]]` -/
def P7467833651926515691.Spec : Prop :=
  ∀ n, P7467833651926515691.a n = A322052 (n + 1)

end A322052

/-! ## A322052.P10195862983463804994

`∑[record[A322628(A286617(n))]]`
-/

namespace A322052.P10195862983463804994
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322628 (A286617 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A322052.P10195862983463804994

namespace A322052

/-- `∑[record[A322628(A286617(n))]]` -/
def P10195862983463804994.Spec : Prop :=
  ∀ n, P10195862983463804994.a n = A322052 (n + 1)

end A322052

/-! ## A322052.P12204438080035733141

`∑[record[A322628(A308178(n))]]`
-/

namespace A322052.P12204438080035733141
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322628 (A308178 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A322052.P12204438080035733141

namespace A322052

/-- `∑[record[A322628(A308178(n))]]` -/
def P12204438080035733141.Spec : Prop :=
  ∀ n, P12204438080035733141.a n = A322052 (n + 1)

end A322052

/-!
# A322053: Number of decimal strings of length n that contain a specific string xx (where x is a single digit).

The programs for A322053, the canonical program `A322053.P12674167388679704626` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A322053 has offset 1).

The definition of A322053 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A322053.P12674167388679704626

`10^(n+1)-A322054(n+1)`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A322053

/-- `10^(n+1)-A322054(n+1)` -/
def P12674167388679704626.Spec : Prop :=
  ∀ n, P12674167388679704626.a n = A322053 (n + 1)

theorem P12674167388679704626.correct : P12674167388679704626.Spec := by
  intro n
  simp only [A322053, Nat.add_sub_cancel]

end A322053

/-! ## A322053.P18097774450433582618

`∑[A365137(n+1)]`
-/

namespace A322053.P18097774450433582618
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365137 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A322053.P18097774450433582618

namespace A322053

/-- `∑[A365137(n+1)]` -/
def P18097774450433582618.Spec : Prop :=
  ∀ n, P18097774450433582618.a n = A322053 (n + 1)

end A322053

/-! ## A322053.P8475754361856174233

`Δ[A000042(n+1)]-A155144(n+2)/8`
-/

namespace A322053.P8475754361856174233
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000042 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) - (A155144 (n + 2) : ℚ) / 8

end

end A322053.P8475754361856174233

namespace A322053

/-- `Δ[A000042(n+1)]-A155144(n+2)/8` -/
def P8475754361856174233.Spec : Prop :=
  ∀ n, P8475754361856174233.a n = (A322053 (n + 1) : ℚ)

end A322053

/-! ## A322053.P16495024800074996638

`Δ[A000042(n+1)]-A057092(n+2)/9`
-/

namespace A322053.P16495024800074996638
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000042 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) - (A057092 (n + 2) : ℚ) / 9

end

end A322053.P16495024800074996638

namespace A322053

/-- `Δ[A000042(n+1)]-A057092(n+2)/9` -/
def P16495024800074996638.Spec : Prop :=
  ∀ n, P16495024800074996638.a n = (A322053 (n + 1) : ℚ)

end A322053

/-! ## A322053.P3983801113169283786

`Δ[A000042(n+1)]-3^n*A020704(n+1)`
-/

namespace A322053.P3983801113169283786
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000042 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - (3 ^ n : ℤ) * A020704 (n + 1)

end

end A322053.P3983801113169283786

namespace A322053

/-- `Δ[A000042(n+1)]-3^n*A020704(n+1)` -/
def P3983801113169283786.Spec : Prop :=
  ∀ n, P3983801113169283786.a n = A322053 (n + 1)

end A322053

/-! ## A322053.P12664621640982542176

`Δ[A000042(n+1)]-3^n*A006190(n+3)`
-/

namespace A322053.P12664621640982542176
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000042 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - (3 ^ n : ℤ) * A006190 (n + 3)

end

end A322053.P12664621640982542176

namespace A322053

/-- `Δ[A000042(n+1)]-3^n*A006190(n+3)` -/
def P12664621640982542176.Spec : Prop :=
  ∀ n, P12664621640982542176.a n = A322053 (n + 1)

end A322053

/-! ## A322053.P7509782902949819932

`Δ[A000042(n+1)]-3^(n-1)*A052906(n+3)`
-/

namespace A322053.P7509782902949819932
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000042 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) - (3 : ℚ) ^ ((n : ℤ) - 1 : ℤ) * (A052906 (n + 3) : ℚ)

end

end A322053.P7509782902949819932

namespace A322053

/-- `Δ[A000042(n+1)]-3^(n-1)*A052906(n+3)` -/
def P7509782902949819932.Spec : Prop :=
  ∀ n, P7509782902949819932.a n = (A322053 (n + 1) : ℚ)

end A322053

/-!
# A322054: Number of decimal strings of length n that do not contain a specific string xx (where x is a single digit).

The programs for A322054, the canonical program `A322054.P11110273328376921978` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A322054 has offset 1).

The definition of A322054 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A322054.P11110273328376921978

`9*a(n-1)+9*a(n-2)` with `a(0)=10, a(1)=99`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A322054

/-- `9*a(n-1)+9*a(n-2)` -/
def P11110273328376921978.Spec : Prop :=
  ∀ n, (P11110273328376921978.a n : ℤ) = A322054 (n + 1)

theorem P11110273328376921978.correct : P11110273328376921978.Spec := by
  intro n
  simp only [A322054, Nat.add_sub_cancel]

end A322054

/-! ## A322054.P9274145279820801515

`ogf((10+9x)/(1-9x-9x^2))`
-/

namespace A322054.P9274145279820801515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [10, 9] [1, -9, -9] n

end

end A322054.P9274145279820801515

namespace A322054

/-- `ogf((10+9x)/(1-9x-9x^2))` -/
def P9274145279820801515.Spec : Prop :=
  ∀ n, P9274145279820801515.a n = A322054 (n + 1)

end A322054

/-! ## A322054.P11234356708649610050

`9*(a(n-1)+a(n-2))` with `a(0)=10, a(1)=99`
-/

namespace A322054.P11234356708649610050
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [10, 99] fun n a =>
  9 * (a (n - 1) + a (n - 2))

end

end A322054.P11234356708649610050

namespace A322054

/-- `9*(a(n-1)+a(n-2))` -/
def P11234356708649610050.Spec : Prop :=
  ∀ n, (P11234356708649610050.a n : ℤ) = A322054 (n + 1)

theorem P11234356708649610050.correct : P11234356708649610050.Spec := by
  intro n
  simp only [A322054, Nat.add_sub_cancel, A322054.P11234356708649610050.a, A322054.P11110273328376921978.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A322054

/-! ## A322054.P3328554303041577363

`3^n*A020704(n+1)`
-/

namespace A322054.P3328554303041577363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 ^ n : ℤ) * A020704 (n + 1)

end

end A322054.P3328554303041577363

namespace A322054

/-- `3^n*A020704(n+1)` -/
def P3328554303041577363.Spec : Prop :=
  ∀ n, P3328554303041577363.a n = A322054 (n + 1)

end A322054

/-! ## A322054.P1605540780854144136

`3^n*A006190(n+3)`
-/

namespace A322054.P1605540780854144136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 ^ n : ℤ) * A006190 (n + 3)

end

end A322054.P1605540780854144136

namespace A322054

/-- `3^n*A006190(n+3)` -/
def P1605540780854144136.Spec : Prop :=
  ∀ n, P1605540780854144136.a n = A322054 (n + 1)

end A322054

/-! ## A322054.P14835381999354390538

`3^(n-1)*A052906(n+3)`
-/

namespace A322054.P14835381999354390538
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) ^ ((n : ℤ) - 1 : ℤ) * (A052906 (n + 3) : ℚ)

end

end A322054.P14835381999354390538

namespace A322054

/-- `3^(n-1)*A052906(n+3)` -/
def P14835381999354390538.Spec : Prop :=
  ∀ n, P14835381999354390538.a n = (A322054 (n + 1) : ℚ)

end A322054

/-! ## A322054.P3703537893809783326

`A057092(n+1)+A057092(n)`
-/

namespace A322054.P3703537893809783326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057092 (n + 1) + A057092 n

end

end A322054.P3703537893809783326

namespace A322054

/-- `A057092(n+1)+A057092(n)` -/
def P3703537893809783326.Spec : Prop :=
  ∀ n, P3703537893809783326.a n = A322054 (n + 1)

end A322054

/-! ## A322054.P1648529288820329010

`A020704(n+1)*A038754(2*n)`
-/

namespace A322054.P1648529288820329010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020704 (n + 1) * A038754 (2 * n)

end

end A322054.P1648529288820329010

namespace A322054

/-- `A020704(n+1)*A038754(2*n)` -/
def P1648529288820329010.Spec : Prop :=
  ∀ n, P1648529288820329010.a n = A322054 (n + 1)

end A322054

/-! ## A322054.P14103544939575137343

`A155144(n+2)/8`
-/

namespace A322054.P14103544939575137343
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A155144 (n + 2) : ℚ) / 8

end

end A322054.P14103544939575137343

namespace A322054

/-- `A155144(n+2)/8` -/
def P14103544939575137343.Spec : Prop :=
  ∀ n, P14103544939575137343.a n = (A322054 (n + 1) : ℚ)

end A322054

/-! ## A322054.P6195099552990633120

`A057092(n+2)/9`
-/

namespace A322054.P6195099552990633120
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A057092 (n + 2) : ℚ) / 9

end

end A322054.P6195099552990633120

namespace A322054

/-- `A057092(n+2)/9` -/
def P6195099552990633120.Spec : Prop :=
  ∀ n, P6195099552990633120.a n = (A322054 (n + 1) : ℚ)

end A322054

/-!
# A322055: Number of ON cells after n generations of two-dimensional automaton based on knight moves (see Comments for definition; here a cell is turned ON if 1 or 2 neighbors are ON).

The programs for A322055, there is no canonical definition to state claims against.
-/

/-! ## A322055.P203130138679757662

`∑[A322056(n)]`
-/

namespace A322055.P203130138679757662
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322056 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A322055.P203130138679757662

/-! ## A322055.P2192396540310587135

`A322056(n)+gcd(a(n-1), A000096(a(n-1)))` with `a(0)=1`
-/

namespace A322055.P2192396540310587135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A322056 n + (Int.gcd (a (n - 1)) (A000096 (a (n - 1)).toNat) : ℤ)

end

end A322055.P2192396540310587135

/-! ## A322055.P1230457471392445702

`∑{d}[2^n, A322056(A001222(#))]`
-/

namespace A322055.P1230457471392445702
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A322056 (A001222 d).toNat

end

end A322055.P1230457471392445702

/-!
# A322057: Array read by upwards antidiagonals: T(i,n) is the number of binary necklaces of length n that avoid 00...0 (i 0's).

The programs for A322057, there is no canonical definition to state claims against.
-/

/-! ## A322057.P17137320407028823189

`A036234(A320748(n+1)%A106323(n+1))`
-/

namespace A322057.P17137320407028823189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036234 (Int.tmod (A320748 (n + 1)) (A106323 (n + 1))).toNat

end

end A322057.P17137320407028823189

/-! ## A322057.P17796267225921303080

`A036234(A320748(n+1))%A032414(n+1)`
-/

namespace A322057.P17796267225921303080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A036234 (A320748 (n + 1)).toNat) (A032414 (n + 1))

end

end A322057.P17796267225921303080

/-! ## A322057.P4825549733473280548

`A095691(2^A305749(n+1))`
-/

namespace A322057.P4825549733473280548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095691 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A305749 (n + 1) : ℤ))).toNat

end

end A322057.P4825549733473280548

/-! ## A322057.P16438821250558463755

`A058398(lt[A240825(n+1), A028954(2*n+3)])`
-/

namespace A322057.P16438821250558463755
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240825 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028954 (2 * n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058398 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A322057.P16438821250558463755

/-! ## A322057.P10440254546788993268

`A058398(lt[A143477(3*n+2), A057145(n+2)])`
-/

namespace A322057.P10440254546788993268
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143477 (3 * n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057145 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058398 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A322057.P10440254546788993268

/-!
# A322059: Expansion of generating function related to a certain class of combinatorial objects.

The programs for A322059, there is no canonical definition to state claims against.
-/

/-! ## A322059.P11456136721947624896

`ogf((1+2x)/(1-x-5x^2+2x^3+5x^4-4x^5))`
-/

namespace A322059.P11456136721947624896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 2] [1, -1, -5, 2, 5, -4] n

end

end A322059.P11456136721947624896

/-!
# A322060: Expansion of generating function related to a certain class of combinatorial objects.

The programs for A322060, there is no canonical definition to state claims against.
-/

/-! ## A322060.P3684837985245452857

`ogf((-1-3x-x^2+6x^4)/(-1+x+5x^2-4x^3))`
-/

namespace A322060.P3684837985245452857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 3, 1, 0, -6] [1, -1, -5, 4] n

end

end A322060.P3684837985245452857

/-!
# A322062: Sums of pairs of consecutive terms of Pascal's triangle read by row.

The programs for A322062, there is no canonical definition to state claims against.
-/

/-! ## A322062.P8544917478736008384

`Δ[A267112(A018900(n+1))]`
-/

namespace A322062.P8544917478736008384
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267112 (A018900 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A322062.P8544917478736008384

/-! ## A322062.P5767800213676111604

`A132749(lt[A345164(n+1), A094587(n)])`
-/

namespace A322062.P5767800213676111604
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345164 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094587 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132749 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A322062.P5767800213676111604

/-! ## A322062.P10411217445716499932

`A135278(n)+A130716(A111125(n))`
-/

namespace A322062.P10411217445716499932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135278 n + A130716 (A111125 n).toNat

end

end A322062.P10411217445716499932

/-! ## A322062.P3109501338549705768

`A056926(A008459(n+1))+A007318(n)`
-/

namespace A322062.P3109501338549705768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056926 (A008459 (n + 1)).toNat + A007318 n

end

end A322062.P3109501338549705768

/-! ## A322062.P5629887035819450001

`A132749(A380649(n+1))`
-/

namespace A322062.P5629887035819450001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132749 (A380649 (n + 1)).toNat

end

end A322062.P5629887035819450001

/-! ## A322062.P11100126182735069191

`A135278(n)+char[A000096(A095884(n+1))]`
-/

namespace A322062.P11100126182735069191
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000096 (A095884 (n + 1)).toNat

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135278 n + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A322062.P11100126182735069191

/-! ## A322062.P17069334198497100239

`A135278(n)+Δ[A000005(A098355(n))]`
-/

namespace A322062.P17069334198497100239
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A098355 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135278 n + (f1 (n + 1) - f1 n)

end

end A322062.P17069334198497100239

/-! ## A322062.P1564727004182049514

`A135278(n)+Δ[A001222(A175840(n))]`
-/

namespace A322062.P1564727004182049514
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A175840 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135278 n + (f1 (n + 1) - f1 n)

end

end A322062.P1564727004182049514

/-! ## A322062.P8040586505360963531

`abs(A168557(n+2))`
-/

namespace A322062.P8040586505360963531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A168557 (n + 2)|

end

end A322062.P8040586505360963531

/-!
# A322063: Number of ways to choose a stable partition of an antichain of sets spanning n vertices.

The programs for A322063, there is no canonical definition to state claims against.
-/

/-! ## A322063.P15674272391735280357

`A239448(A034234(n))`
-/

namespace A322063.P15674272391735280357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239448 (A034234 n).toNat

end

end A322063.P15674272391735280357

/-!
# A322064: Number of ways to choose a stable partition of a simple connected graph with n vertices.

The programs for A322064, there is no canonical definition to state claims against.
-/

/-! ## A322064.P6051585318738806733

`A274651(C(n!, n))`
-/

namespace A322064.P6051585318738806733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274651 (Nat.choose (Nat.factorial n) n)

end

end A322064.P6051585318738806733

/-!
# A322065: Number of ways to choose a stable partition of a connected antichain of sets spanning n vertices.

The programs for A322065, there is no canonical definition to state claims against.
-/

/-! ## A322065.P16435455148940740479

`A324750(C(∑[n], 2))`
-/

namespace A322065.P16435455148940740479
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324750 (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2)

end

end A322065.P16435455148940740479

/-!
# A322066: Number of e-positive antichains of sets spanning n vertices.

The programs for A322066, there is no canonical definition to state claims against.
-/

/-! ## A322066.P7864118405980243882

`A155152(n*a(n-1))` with `a(0)=1`
-/

namespace A322066.P7864118405980243882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A155152 ((n : ℤ) * a (n - 1)).toNat

end

end A322066.P7864118405980243882

/-!
# A322068: a(n) = (1/2)*Sum_{p prime <= n} floor(n/p) * floor(1 + n/p).

The programs for A322068, the canonical program `A322068.P18426696625057973771` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A322068 has offset 0).

The definition of A322068 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A322068.P18426696625057973771

`∑[∑{p}[n, n/#]]`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A322068

/-- `∑[∑{p}[n, n/#]]` -/
def P18426696625057973771.Spec : Prop :=
  ∀ n, P18426696625057973771.a n = (A322068 n : ℚ)

end A322068

/-! ## A322068.P8759744205238153044

`∑{p}[n, n/#]+a(n-1)` with `a(0)=0`
-/

namespace A322068.P8759744205238153044
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.rec [0] fun n a =>
  ∑ p ∈ Nat.primeFactors (f1 n), (n : ℚ) / (p : ℚ) + a (n - 1)

end

end A322068.P8759744205238153044

namespace A322068

/-- `∑{p}[n, n/#]+a(n-1)` -/
def P8759744205238153044.Spec : Prop :=
  ∀ n, P8759744205238153044.a n = (A322068 n : ℚ)

end A322068

/-! ## A322068.P12504908565110204594

`∑[∑{d}[n, A117494(#)]]`
-/

namespace A322068.P12504908565110204594
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), A117494 d

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A322068.P12504908565110204594

namespace A322068

/-- `∑[∑{d}[n, A117494(#)]]` -/
def P12504908565110204594.Spec : Prop :=
  ∀ n, P12504908565110204594.a n = A322068 n

end A322068

/-! ## A322068.P14691845500569782208

`A069359(n)+a(n-1)` with `a(0)=0`
-/

namespace A322068.P14691845500569782208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A069359 n + a (n - 1)

end

end A322068.P14691845500569782208

namespace A322068

/-- `A069359(n)+a(n-1)` -/
def P14691845500569782208.Spec : Prop :=
  ∀ n, P14691845500569782208.a n = A322068 n

end A322068

/-! ## A322068.P10165316167693088659

`∑[A069359(floor(∑[2*n]/(n+2))+1)]`
-/

namespace A322068.P10165316167693088659
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069359 (⌊((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℚ) / (n + 2 : ℚ)⌋ + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A322068.P10165316167693088659

namespace A322068

/-- `∑[A069359(floor(∑[2*n]/(n+2))+1)]` -/
def P10165316167693088659.Spec : Prop :=
  ∀ n, P10165316167693088659.a n = A322068 n

end A322068

/-! ## A322068.P12543289366523047806

`∑[A069359(n+1)]-A069359(n+1)`
-/

namespace A322068.P12543289366523047806
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069359 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A069359 (n + 1)

end

end A322068.P12543289366523047806

namespace A322068

/-- `∑[A069359(n+1)]-A069359(n+1)` -/
def P12543289366523047806.Spec : Prop :=
  ∀ n, P12543289366523047806.a n = A322068 n

end A322068

/-!
# A322070: Number of permutations f of {1,...,n} with f(1) < f(n) such that Sum_{k=1..n-1} 1/(f(k)+f(k+1)) = 1.

The programs for A322070, there is no canonical definition to state claims against.
-/

/-! ## A322070.P8488140707297291745

`A033111(A082137(n)+A000111(n))`
-/

namespace A322070.P8488140707297291745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033111 (A082137 n + A000111 n).toNat

end

end A322070.P8488140707297291745

/-! ## A322070.P10804337561680880345

`A179015(A389708(n))+A178999(n+1)`
-/

namespace A322070.P10804337561680880345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179015 (A389708 n).toNat + A178999 (n + 1)

end

end A322070.P10804337561680880345

/-! ## A322070.P18441552816949165030

`and(A061470(n+1), A072080(A276530(n)))`
-/

namespace A322070.P18441552816949165030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A061470 (n + 1)) (A072080 (A276530 n).toNat)

end

end A322070.P18441552816949165030

/-! ## A322070.P10448002102340616192

`A085862(A056292(n+1)+A000005(n+4))`
-/

namespace A322070.P10448002102340616192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085862 (A056292 (n + 1) + A000005 (n + 4)).toNat

end

end A322070.P10448002102340616192

/-!
# A322071: Triangle read by rows: T(n, k) is the largest integer m such that m*k^k <= 2*n^k.

The programs for A322071, there is no canonical definition to state claims against.
-/

/-! ## A322071.P9656850383911460114

`A152072(n+1)+A105438(n)%A003585(n+1)`
-/

namespace A322071.P9656850383911460114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152072 (n + 1) + Int.tmod (A105438 n) (A003585 (n + 1))

end

end A322071.P9656850383911460114

/-! ## A322071.P8976675074589648092

`A105438(n)+A105438(n)-A001221(A299905(n)!)`
-/

namespace A322071.P8976675074589648092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105438 n + (A105438 n - A001221 (Nat.factorial (A299905 n).toNat))

end

end A322071.P8976675074589648092

/-! ## A322071.P15355227748806312570

`A137679(n+1)+A000005(7^A208727(n+1))`
-/

namespace A322071.P15355227748806312570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137679 (n + 1) + A000005 (SequenceMachineLib.roundAway ((7 : ℚ) ^ (A208727 (n + 1) : ℤ))).toNat

end

end A322071.P15355227748806312570

/-! ## A322071.P12108058653010666864

`A152072(n+1)+A000005(7^A208671(n+1))`
-/

namespace A322071.P12108058653010666864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152072 (n + 1) + A000005 (SequenceMachineLib.roundAway ((7 : ℚ) ^ (A208671 (n + 1) : ℤ))).toNat

end

end A322071.P12108058653010666864

/-! ## A322071.P13768508812484831408

`2*(A208727(n+1)%A092122(n+1)+1)`
-/

namespace A322071.P13768508812484831408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (Int.tmod (A208727 (n + 1)) (A092122 (n + 1)) + 1)

end

end A322071.P13768508812484831408

/-!
# A322072: Row sums of the triangle A322071.

The programs for A322072, there is no canonical definition to state claims against.
-/

/-! ## A322072.P6490589860379866919

`A000041(n+1)+A000006(A097064(n+2))`
-/

namespace A322072.P6490589860379866919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (n + 1) + A000006 (A097064 (n + 2)).toNat

end

end A322072.P6490589860379866919

/-! ## A322072.P5149589379064392332

`A121857(A001788(n))+A070047(2*(n+1))`
-/

namespace A322072.P5149589379064392332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121857 (A001788 n).toNat + A070047 (2 * (n + 1))

end

end A322072.P5149589379064392332

/-!
# A322074: Maximum number of codewords a binary self-dual code of length 4n can have with Hamming weight 2n (half of length).

The programs for A322074, there is no canonical definition to state claims against.
-/

/-! ## A322074.P10642140568253660966

`2*A055248(∑[record[or(5, n)-3]]+n)`
-/

namespace A322074.P10642140568253660966
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lor 5 n : ℤ) - 3

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A055248 (∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)).toNat

end

end A322074.P10642140568253660966

/-! ## A322074.P7542321327875403650

`2*A055248(A195605(n))`
-/

namespace A322074.P7542321327875403650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A055248 (A195605 n).toNat

end

end A322074.P7542321327875403650

/-! ## A322074.P16394279404085932130

`2*A008949(A077221(n+1))`
-/

namespace A322074.P16394279404085932130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008949 (A077221 (n + 1)).toNat

end

end A322074.P16394279404085932130

/-! ## A322074.P17248969676237714016

`A110556(n+1)+A032443(n+1)`
-/

namespace A322074.P17248969676237714016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110556 (n + 1) + A032443 (n + 1)

end

end A322074.P17248969676237714016

/-! ## A322074.P16314494373454352249

`A126869(A098181(2*n))+2*A000079(n)²`
-/

namespace A322074.P16314494373454352249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126869 (A098181 (2 * n)).toNat + 2 * A000079 n ^ 2

end

end A322074.P16314494373454352249

/-!
# A322075: Number of factorizations of n into nonprime squarefree numbers > 1.

The programs for A322075, there is no canonical definition to state claims against.
-/

/-! ## A322075.P2590748382459420933

`∑{d}[n+1, A008683(#)*A050320((n+1)/#)]`
-/

namespace A322075.P2590748382459420933
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A050320 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A322075.P2590748382459420933

/-! ## A322075.P8481606609324315979

`A322076(A181819(n+1))`
-/

namespace A322075.P8481606609324315979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322076 (A181819 (n + 1)).toNat

end

end A322075.P8481606609324315979

/-! ## A322075.P1875424004110944263

`A322076(∏{e}[n+1, A000040(#)])`
-/

namespace A322075.P1875424004110944263
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322076 (∏ p ∈ Nat.primeFactors (f1 n), A000040 (Nat.factorization (f1 n) p)).toNat

end

end A322075.P1875424004110944263

/-! ## A322075.P15098066199488931444

`A322076(∏{e}[n+1, A109611(#)])`
-/

namespace A322075.P15098066199488931444
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322076 (∏ p ∈ Nat.primeFactors (f1 n), A109611 (Nat.factorization (f1 n) p)).toNat

end

end A322075.P15098066199488931444

/-! ## A322075.P16902502410441137941

`A322076(∏{e}[n+1, A005180(#+1)])`
-/

namespace A322075.P16902502410441137941
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322076 (∏ p ∈ Nat.primeFactors (f1 n), A005180 (Nat.factorization (f1 n) p + 1)).toNat

end

end A322075.P16902502410441137941

/-! ## A322075.P14522569498893583759

`A370591(A320656((n+1)²))`
-/

namespace A322075.P14522569498893583759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370591 (A320656 ((n + 1) ^ 2)).toNat

end

end A322075.P14522569498893583759

/-! ## A322075.P16176132801513237666

`A027193(A027193(A320656((n+1)*(n+1))))`
-/

namespace A322075.P16176132801513237666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027193 (A027193 (A320656 ((n + 1) * (n + 1))).toNat).toNat

end

end A322075.P16176132801513237666

/-! ## A322075.P15759930072776456104

`∏{e}[n+1, round(1/#)]%A113493(∏{e}[n+1, 6*#])`
-/

namespace A322075.P15759930072776456104
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∏ p ∈ Nat.primeFactors (f1 n), SequenceMachineLib.roundAway (1 / (Nat.factorization (f1 n) p : ℚ))) (A113493 (∏ p ∈ Nat.primeFactors (f2 n), 6 * Nat.factorization (f2 n) p))

end

end A322075.P15759930072776456104

/-! ## A322075.P14185814845684298409

`A174208(A326814(n+1)+46)`
-/

namespace A322075.P14185814845684298409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174208 (A326814 (n + 1) + 46).toNat

end

end A322075.P14185814845684298409

/-! ## A322075.P7371382871018256709

`A288257(9*A061200(n+1))`
-/

namespace A322075.P7371382871018256709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288257 (9 * A061200 (n + 1)).toNat

end

end A322075.P7371382871018256709

/-! ## A322075.P15343971531699900345

`A329607(∏{e}[n+1, A195321(#)-#])%2`
-/

namespace A322075.P15343971531699900345
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A329607 (∏ p ∈ Nat.primeFactors (f1 n), (A195321 (Nat.factorization (f1 n) p) - (Nat.factorization (f1 n) p : ℤ))).toNat) 2

end

end A322075.P15343971531699900345

/-! ## A322075.P9525692864066141082

`and(1, A256663(A342086(A295557(n+1))))`
-/

namespace A322075.P9525692864066141082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A256663 (A342086 (A295557 (n + 1)).toNat).toNat)

end

end A322075.P9525692864066141082

/-! ## A322075.P3705523073026069215

`A215530(A085082(n+1)*A335452(n+1))`
-/

namespace A322075.P3705523073026069215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215530 (A085082 (n + 1) * A335452 (n + 1)).toNat

end

end A322075.P3705523073026069215

/-! ## A322075.P16521179203138313511

`A266298(A038538((n+1)²)+1)`
-/

namespace A322075.P16521179203138313511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266298 (A038538 ((n + 1) ^ 2) + 1).toNat

end

end A322075.P16521179203138313511

/-! ## A322075.P17378065705977494599

`A010054(∑{e}[n+1, 4^#+#])`
-/

namespace A322075.P17378065705977494599
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 (∑ p ∈ Nat.primeFactors (f1 n), (4 ^ Nat.factorization (f1 n) p + Nat.factorization (f1 n) p))

end

end A322075.P17378065705977494599

/-! ## A322075.P12242626577053200293

`1-A020987(A324910((n+1)²))`
-/

namespace A322075.P12242626577053200293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A020987 (A324910 ((n + 1) ^ 2)).toNat

end

end A322075.P12242626577053200293

/-! ## A322075.P11418058627153229155

`A075802(A072695((n+1)²))`
-/

namespace A322075.P11418058627153229155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075802 (A072695 ((n + 1) ^ 2)).toNat

end

end A322075.P11418058627153229155

/-! ## A322075.P13070379134034469238

`C(A329888(A068795(n+1)), A304180(n+1))`
-/

namespace A322075.P13070379134034469238
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A329888 (A068795 (n + 1)).toNat).toNat (A304180 (n + 1)).toNat

end

end A322075.P13070379134034469238

/-! ## A322075.P15143131910057146120

`(A182850((n+1)²)%2)^n`
-/

namespace A322075.P15143131910057146120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A182850 ((n + 1) ^ 2)) 2 ^ n

end

end A322075.P15143131910057146120

/-! ## A322075.P12671368049802330258

`A008966(A096826((n+1)²)²)`
-/

namespace A322075.P12671368049802330258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008966 (A096826 ((n + 1) ^ 2) ^ 2).toNat

end

end A322075.P12671368049802330258

/-!
# A322076: Number of set multipartitions (multisets of sets) with no singletons, of a multiset whose multiplicities are the prime indices of n.

The programs for A322076, there is no canonical definition to state claims against.
-/

/-! ## A322076.P14867395641176806841

`A322075(A181821(n+1)%A181821(A000469(n+3)))`
-/

namespace A322076.P14867395641176806841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322075 (Int.tmod (A181821 (n + 1)) (A181821 (A000469 (n + 3)).toNat)).toNat

end

end A322076.P14867395641176806841

/-! ## A322076.P749964368332098742

`A322075(A181821(n+1)%A205226(n+1))`
-/

namespace A322076.P749964368332098742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322075 (Int.tmod (A181821 (n + 1)) (A205226 (n + 1))).toNat

end

end A322076.P749964368332098742

/-! ## A322076.P31758174448158554

`A322075(A181821(n+1))`
-/

namespace A322076.P31758174448158554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322075 (A181821 (n + 1)).toNat

end

end A322076.P31758174448158554

/-! ## A322076.P10956368613342439504

`A322075(A304660(n+1)%A304660(n+5))`
-/

namespace A322076.P10956368613342439504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322075 (Int.tmod (A304660 (n + 1)) (A304660 (n + 5))).toNat

end

end A322076.P10956368613342439504

/-! ## A322076.P2350569005788312741

`A322075(A304660(n+1))`
-/

namespace A322076.P2350569005788312741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322075 (A304660 (n + 1)).toNat

end

end A322076.P2350569005788312741

/-!
# A322077: In the ranked poset of integer partitions ordered by refinement, number of integer partitions coarser (greater) than or equal to the integer partition whose multiplicities are the prime indices of n in weakly decreasing order.

The programs for A322077, there is no canonical definition to state claims against.
-/

/-! ## A322077.P2598404216294688123

`A317141(A181821(n+1))`
-/

namespace A322077.P2598404216294688123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317141 (A181821 (n + 1)).toNat

end

end A322077.P2598404216294688123

/-! ## A322077.P14886414990982942921

`A064415(A089806(n)+A000051(n))`
-/

namespace A322077.P14886414990982942921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064415 (A089806 n + A000051 n).toNat

end

end A322077.P14886414990982942921

/-! ## A322077.P18014340075927093262

`A146289(A000799(n+1))+A057363(n)`
-/

namespace A322077.P18014340075927093262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146289 (A000799 (n + 1)).toNat + A057363 n

end

end A322077.P18014340075927093262

/-!
# A322078: a(n) = n^2 * Sum_{p|n, p prime} 1/p^2.

The programs for A322078, the canonical program `A322078.P13476570734026336458` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A322078 has offset 1).

The definition of A322078 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A322078.P13476570734026336458

`∑{p}[n+1, ceil(n/#)²]`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A322078

/-- `∑{p}[n+1, ceil(n/#)²]` -/
def P13476570734026336458.Spec : Prop :=
  ∀ n, P13476570734026336458.a n = A322078 (n + 1)

theorem P13476570734026336458.correct : P13476570734026336458.Spec := by
  intro n
  simp only [A322078, Nat.add_sub_cancel]

end A322078

/-! ## A322078.P15301638542556301982

`floor(∑{p}[n+1, ((n+1)/#)²])`
-/

namespace A322078.P15301638542556301982
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ p ∈ Nat.primeFactors (f1 n), ((n + 1 : ℚ) / (p : ℚ)) ^ 2⌋

end

end A322078.P15301638542556301982

namespace A322078

/-- `floor(∑{p}[n+1, ((n+1)/#)²])` -/
def P15301638542556301982.Spec : Prop :=
  ∀ n, P15301638542556301982.a n = A322078 (n + 1)

end A322078

/-! ## A322078.P13004837465664472860

`round(∑{p}[n+1, ((n+1)/#)²])`
-/

namespace A322078.P13004837465664472860
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (∑ p ∈ Nat.primeFactors (f1 n), ((n + 1 : ℚ) / (p : ℚ)) ^ 2)

end

end A322078.P13004837465664472860

namespace A322078

/-- `round(∑{p}[n+1, ((n+1)/#)²])` -/
def P13004837465664472860.Spec : Prop :=
  ∀ n, P13004837465664472860.a n = A322078 (n + 1)

end A322078

/-! ## A322078.P15230220138788503665

`(n+1)*∑{p}[n+1, (n+1)/#²]`
-/

namespace A322078.P15230220138788503665
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) * (∑ p ∈ Nat.primeFactors (f1 n), (n + 1 : ℚ) / (p ^ 2 : ℚ))

end

end A322078.P15230220138788503665

namespace A322078

/-- `(n+1)*∑{p}[n+1, (n+1)/#²]` -/
def P15230220138788503665.Spec : Prop :=
  ∀ n, P15230220138788503665.a n = (A322078 (n + 1) : ℚ)

end A322078

/-! ## A322078.P11466524067474256182

`∑{d}[n+1, #*A369779((n+1)/#)]`
-/

namespace A322078.P11466524067474256182
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A369779 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A322078.P11466524067474256182

namespace A322078

/-- `∑{d}[n+1, #*A369779((n+1)/#)]` -/
def P11466524067474256182.Spec : Prop :=
  ∀ n, P11466524067474256182.a n = A322078 (n + 1)

end A322078

/-! ## A322078.P15730182816498096452

`A065969(n+1)%A140651(n+1)`
-/

namespace A322078.P15730182816498096452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A065969 (n + 1)) (A140651 (n + 1))

end

end A322078.P15730182816498096452

namespace A322078

/-- `A065969(n+1)%A140651(n+1)` -/
def P15730182816498096452.Spec : Prop :=
  ∀ n, P15730182816498096452.a n = A322078 (n + 1)

end A322078

/-! ## A322078.P8382466700097848239

`∑{d}[n+1, A001221(#)*A007434((n+1)/#)]`
-/

namespace A322078.P8382466700097848239
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A001221 d * A007434 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A322078.P8382466700097848239

namespace A322078

/-- `∑{d}[n+1, A001221(#)*A007434((n+1)/#)]` -/
def P8382466700097848239.Spec : Prop :=
  ∀ n, P8382466700097848239.a n = A322078 (n + 1)

end A322078

/-! ## A322078.P11873816539562141014

`∑{d}[n+1, A000290(#)*A010051((n+1)/#)]`
-/

namespace A322078.P11873816539562141014
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000290 d * A010051 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A322078.P11873816539562141014

namespace A322078

/-- `∑{d}[n+1, A000290(#)*A010051((n+1)/#)]` -/
def P11873816539562141014.Spec : Prop :=
  ∀ n, P11873816539562141014.a n = A322078 (n + 1)

end A322078

/-! ## A322078.P856708542932690433

`∑{d}[n+1, A002618(#)*A069359((n+1)/#)]`
-/

namespace A322078.P856708542932690433
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A002618 d * A069359 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A322078.P856708542932690433

namespace A322078

/-- `∑{d}[n+1, A002618(#)*A069359((n+1)/#)]` -/
def P856708542932690433.Spec : Prop :=
  ∀ n, P856708542932690433.a n = A322078 (n + 1)

end A322078

/-! ## A322078.P4793503551983811250

`∑{d}[n+1, A001157(#)*A143519((n+1)/#)]`
-/

namespace A322078.P4793503551983811250
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A001157 d * A143519 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A322078.P4793503551983811250

namespace A322078

/-- `∑{d}[n+1, A001157(#)*A143519((n+1)/#)]` -/
def P4793503551983811250.Spec : Prop :=
  ∀ n, P4793503551983811250.a n = A322078 (n + 1)

end A322078

/-! ## A322078.P1361611815001335350

`∑{d}[n+1, A057660(#)*A117494((n+1)/#)]`
-/

namespace A322078.P1361611815001335350
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A057660 d * A117494 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A322078.P1361611815001335350

namespace A322078

/-- `∑{d}[n+1, A057660(#)*A117494((n+1)/#)]` -/
def P1361611815001335350.Spec : Prop :=
  ∀ n, P1361611815001335350.a n = A322078 (n + 1)

end A322078

/-! ## A322078.P13494768005585822513

`∑{d}[n+1, A062799(#)*A321322((n+1)/#)]`
-/

namespace A322078.P13494768005585822513
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A062799 d * A321322 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A322078.P13494768005585822513

namespace A322078

/-- `∑{d}[n+1, A062799(#)*A321322((n+1)/#)]` -/
def P13494768005585822513.Spec : Prop :=
  ∀ n, P13494768005585822513.a n = A322078 (n + 1)

end A322078

/-! ## A322078.P8386586996482692229

`∑{d}[n+1, A063445(#)*A323599((n+1)/#)]`
-/

namespace A322078.P8386586996482692229
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A063445 d * A323599 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A322078.P8386586996482692229

namespace A322078

/-- `∑{d}[n+1, A063445(#)*A323599((n+1)/#)]` -/
def P8386586996482692229.Spec : Prop :=
  ∀ n, P8386586996482692229.a n = A322078 (n + 1)

end A322078

/-! ## A322078.P17918362570812247920

`∑{d}[n+1, A055615(#)*A369904((n+1)/#)]`
-/

namespace A322078.P17918362570812247920
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A055615 d * A369904 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A322078.P17918362570812247920

namespace A322078

/-- `∑{d}[n+1, A055615(#)*A369904((n+1)/#)]` -/
def P17918362570812247920.Spec : Prop :=
  ∀ n, P17918362570812247920.a n = A322078 (n + 1)

end A322078

/-! ## A322078.P9983641634730955730

`∑{d}[n+1, A065958(#)*A392285((n+1)/#)]`
-/

namespace A322078.P9983641634730955730
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A065958 d * A392285 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A322078.P9983641634730955730

namespace A322078

/-- `∑{d}[n+1, A065958(#)*A392285((n+1)/#)]` -/
def P9983641634730955730.Spec : Prop :=
  ∀ n, P9983641634730955730.a n = A322078 (n + 1)

end A322078

/-! ## A322078.P2379772751748132409

`∑{d}[n+1, A340850(#)*A347134((n+1)/#)]`
-/

namespace A322078.P2379772751748132409
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A340850 d * A347134 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A322078.P2379772751748132409

namespace A322078

/-- `∑{d}[n+1, A340850(#)*A347134((n+1)/#)]` -/
def P2379772751748132409.Spec : Prop :=
  ∀ n, P2379772751748132409.a n = A322078 (n + 1)

end A322078

/-! ## A322078.P9907941138622940649

`A382511(n+1)+A382511(n+1)-A069359(n+1)`
-/

namespace A322078.P9907941138622940649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382511 (n + 1) + (A382511 (n + 1) - A069359 (n + 1))

end

end A322078.P9907941138622940649

namespace A322078

/-- `A382511(n+1)+A382511(n+1)-A069359(n+1)` -/
def P9907941138622940649.Spec : Prop :=
  ∀ n, P9907941138622940649.a n = A322078 (n + 1)

end A322078

/-! ## A322078.P912309286336558494

`A369915(A103390(n+2))`
-/

namespace A322078.P912309286336558494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369915 (A103390 (n + 2)).toNat

end

end A322078.P912309286336558494

namespace A322078

/-- `A369915(A103390(n+2))` -/
def P912309286336558494.Spec : Prop :=
  ∀ n, P912309286336558494.a n = A322078 (n + 1)

end A322078

/-! ## A322078.P15743308994724547746

`A369915((n+1)²)`
-/

namespace A322078.P15743308994724547746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369915 ((n + 1) ^ 2)

end

end A322078.P15743308994724547746

namespace A322078

/-- `A369915((n+1)²)` -/
def P15743308994724547746.Spec : Prop :=
  ∀ n, P15743308994724547746.a n = A322078 (n + 1)

end A322078

/-! ## A322078.P793119218228891399

`A345306((n+1)²)/(n+1)²`
-/

namespace A322078.P793119218228891399
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A345306 ((n + 1) ^ 2) : ℚ) / ((n + 1) ^ 2 : ℚ)

end

end A322078.P793119218228891399

namespace A322078

/-- `A345306((n+1)²)/(n+1)²` -/
def P793119218228891399.Spec : Prop :=
  ∀ n, P793119218228891399.a n = (A322078 (n + 1) : ℚ)

end A322078

/-!
# A322079: a(n) = n^2 * Sum_{ p^k | n } k / p^2, where p are primes dividing n with multiplicity k.

The programs for A322079, there is no canonical definition to state claims against.
-/

/-! ## A322079.P1162931412655795120

`∑{d}[n+1, (((n+1)/A014963(#))%(n+1))²]`
-/

namespace A322079.P1162931412655795120
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), Int.tmod (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A014963 d : ℚ))) (n + 1 : ℤ) ^ 2

end

end A322079.P1162931412655795120

/-!
# A322080: Square array A(n,k), n >= 1, k >= 0, read by antidiagonals: A(n,k) = Sum_{p|n, p prime} p^k.

The programs for A322080, the canonical program `A322080.P8227606125856028005` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A322080 has offset 1).

The definition of A322080 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4678 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A322080.P8227606125856028005

`∑{p}[A002260(n+1), #^A025581(n)]`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A322080

/-- `∑{p}[A002260(n+1), #^A025581(n)]` -/
def P8227606125856028005.Spec : Prop :=
  ∀ n, P8227606125856028005.a n = (A322080 (n + 1) : ℚ)

end A322080

/-! ## A322080.P16356342287346474153

`∑{p}[A133819(n+1), #^A025581(n)]`
-/

namespace A322080.P16356342287346474153
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133819 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, (p : ℚ) ^ (A025581 n : ℤ)

end

end A322080.P16356342287346474153

namespace A322080

/-- `∑{p}[A133819(n+1), #^A025581(n)]` -/
def P16356342287346474153.Spec : Prop :=
  ∀ n, P16356342287346474153.a n = (A322080 (n + 1) : ℚ)

end A322080

/-! ## A322080.P16204079974241621192

`∑{p}[A133820(n+1), #^A025581(n)]`
-/

namespace A322080.P16204079974241621192
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133820 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, (p : ℚ) ^ (A025581 n : ℤ)

end

end A322080.P16204079974241621192

namespace A322080

/-- `∑{p}[A133820(n+1), #^A025581(n)]` -/
def P16204079974241621192.Spec : Prop :=
  ∀ n, P16204079974241621192.a n = (A322080 (n + 1) : ℚ)

end A322080

/-! ## A322080.P6667236905270666630

`∑{p}[A140756(n+1), #^A025581(n)]`
-/

namespace A322080.P6667236905270666630
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140756 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, (p : ℚ) ^ (A025581 n : ℤ)

end

end A322080.P6667236905270666630

namespace A322080

/-- `∑{p}[A140756(n+1), #^A025581(n)]` -/
def P6667236905270666630.Spec : Prop :=
  ∀ n, P6667236905270666630.a n = (A322080 (n + 1) : ℚ)

end A322080

/-! ## A322080.P886637578202186421

`∑{p}[A002260(n+1), #^A002262(A061579(n))]`
-/

namespace A322080.P886637578202186421
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, (p : ℚ) ^ (A002262 (A061579 n).toNat : ℤ)

end

end A322080.P886637578202186421

namespace A322080

/-- `∑{p}[A002260(n+1), #^A002262(A061579(n))]` -/
def P886637578202186421.Spec : Prop :=
  ∀ n, P886637578202186421.a n = (A322080 (n + 1) : ℚ)

end A322080

/-!
# A322081: Square array A(n,k), n >= 1, k >= 0, read by antidiagonals: A(n,k) = Sum_{d|n} (-1)^(n/d+1)*d^k.

The programs for A322081, there is no canonical definition to state claims against.
-/

/-! ## A322081.P12260202637705161388

`2*A322082(n+1)-A109974(A061579(n))`
-/

namespace A322081.P12260202637705161388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A322082 (n + 1) - A109974 (A061579 n).toNat

end

end A322081.P12260202637705161388

/-! ## A322081.P8485026604338798607

`2*A322082(n+1)-A279394(n+1)`
-/

namespace A322081.P8485026604338798607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A322082 (n + 1) - A279394 (n + 1)

end

end A322081.P8485026604338798607

/-! ## A322081.P3495575974239035605

`A005843(A322082(n+1))-A279394(n+1)`
-/

namespace A322081.P3495575974239035605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A322082 (n + 1)).toNat - A279394 (n + 1)

end

end A322081.P3495575974239035605

/-! ## A322081.P7521222020793082621

`A005843(A322082(n+1))-(A321258(n+1)+A009998(n))`
-/

namespace A322081.P7521222020793082621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A322082 (n + 1)).toNat - (A321258 (n + 1) + A009998 n)

end

end A322081.P7521222020793082621

/-! ## A322081.P13491874466126982147

`or(A240465(A018921(n)), A279396(n+1))`
-/

namespace A322081.P13491874466126982147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A240465 (A018921 n).toNat) (A279396 (n + 1))

end

end A322081.P13491874466126982147

/-!
# A322082: Square array A(n,k), n >= 1, k >= 0, read by antidiagonals: A(n,k) = Sum_{d|n, n/d odd} d^k.

The programs for A322082, there is no canonical definition to state claims against.
-/

/-! ## A322082.P7645896806409752083

`(A322081(n+1)+A279394(n+1))/2`
-/

namespace A322082.P7645896806409752083
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A322081 (n + 1) + A279394 (n + 1) : ℚ) / 2

end

end A322082.P7645896806409752083

/-! ## A322082.P9226151016177538921

`A322081(n+1)+A001281(A279394(n+1)-A322081(n+1))`
-/

namespace A322082.P9226151016177538921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322081 (n + 1) + A001281 (A279394 (n + 1) - A322081 (n + 1)).toNat

end

end A322082.P9226151016177538921

/-! ## A322082.P13074475104983813029

`A322081(n+1)+A006370(A279394(n+1)-A322081(n+1))`
-/

namespace A322082.P13074475104983813029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322081 (n + 1) + A006370 (A279394 (n + 1) - A322081 (n + 1)).toNat

end

end A322082.P13074475104983813029

/-! ## A322082.P3012513757609985730

`A322081(n+1)+A025480(A279394(n+1)-A322081(n+1))`
-/

namespace A322082.P3012513757609985730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322081 (n + 1) + A025480 (A279394 (n + 1) - A322081 (n + 1)).toNat

end

end A322082.P3012513757609985730

/-! ## A322082.P16689594483365143520

`A322081(n+1)+A026741(A279394(n+1)-A322081(n+1))`
-/

namespace A322082.P16689594483365143520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322081 (n + 1) + A026741 (A279394 (n + 1) - A322081 (n + 1)).toNat

end

end A322082.P16689594483365143520

/-! ## A322082.P10006888321963983973

`A322081(n+1)+A038572(A279394(n+1)-A322081(n+1))`
-/

namespace A322082.P10006888321963983973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322081 (n + 1) + A038572 (A279394 (n + 1) - A322081 (n + 1)).toNat

end

end A322082.P10006888321963983973

/-! ## A322082.P14489595640504342758

`A006519(A009998(n))*A285425(n+1)`
-/

namespace A322082.P14489595640504342758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006519 (A009998 n).toNat * A285425 (n + 1)

end

end A322082.P14489595640504342758

/-! ## A322082.P3252184433304715371

`A038572(A322081(n+1)+A279394(n+1))`
-/

namespace A322082.P3252184433304715371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038572 (A322081 (n + 1) + A279394 (n + 1)).toNat

end

end A322082.P3252184433304715371

/-! ## A322082.P12715358814334449128

`A001281(A322081(n+1)+A279394(n+1))`
-/

namespace A322082.P12715358814334449128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A322081 (n + 1) + A279394 (n + 1)).toNat

end

end A322082.P12715358814334449128

/-! ## A322082.P6281654382552589935

`A006370(A322081(n+1)+A279394(n+1))`
-/

namespace A322082.P6281654382552589935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006370 (A322081 (n + 1) + A279394 (n + 1)).toNat

end

end A322082.P6281654382552589935

/-!
# A322084: Square array A(n,k), n >= 1, k >= 0, read by antidiagonals: A(n,k) = Sum_{d|n, n/d==1 (mod 4)} d^k - Sum_{d|n, n/d==3 (mod 4)} d^k.

The programs for A322084, there is no canonical definition to state claims against.
-/

/-! ## A322084.P8378785421649865891

`xor(A009998(n), A163351(A002262(n)!))`
-/

namespace A322084.P8378785421649865891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A009998 n) (A163351 (Nat.factorial (A002262 n).toNat))

end

end A322084.P8378785421649865891

/-! ## A322084.P3958453321039558342

`xor(A009998(n), A163351(A163351(n)!))`
-/

namespace A322084.P3958453321039558342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A009998 n) (A163351 (Nat.factorial (A163351 n).toNat))

end

end A322084.P3958453321039558342

/-!
# A322085: One of the two successive approximations up to 13^n for the 13-adic integer sqrt(3). Here the 4 (mod 13) case (except for n = 0).

The programs for A322085, there is no canonical definition to state claims against.
-/

/-! ## A322085.P1025624933788377455

`A286840(n)+A286841(n)-A322086(n)`
-/

namespace A322085.P1025624933788377455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286840 n + (A286841 n - A322086 n)

end

end A322085.P1025624933788377455

/-! ## A322085.P13106205523073997813

`A322089(n)+A322090(n)-A322086(n)`
-/

namespace A322085.P13106205523073997813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322089 n + (A322090 n - A322086 n)

end

end A322085.P13106205523073997813

/-! ## A322085.P7490187954205344499

`A324084(n)²%A001022(n)`
-/

namespace A322085.P7490187954205344499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A324084 n ^ 2) (A001022 n)

end

end A322085.P7490187954205344499

/-! ## A322085.P4216624529674844843

`A324077(n)+A324084(n)-A322086(n)`
-/

namespace A322085.P4216624529674844843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324077 n + (A324084 n - A322086 n)

end

end A322085.P4216624529674844843

/-! ## A322085.P4479648003059606660

`A324082(n)+A324083(n)-A322086(n)`
-/

namespace A322085.P4479648003059606660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324082 n + (A324083 n - A322086 n)

end

end A322085.P4479648003059606660

/-!
# A322086: One of the two successive approximations up to 13^n for the 13-adic integer sqrt(3). Here the 9 (mod 13) case (except for n = 0).

The programs for A322086, there is no canonical definition to state claims against.
-/

/-! ## A322086.P16053001972694714994

`A286840(n)+A286841(n)-A322085(n)`
-/

namespace A322086.P16053001972694714994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286840 n + (A286841 n - A322085 n)

end

end A322086.P16053001972694714994

/-! ## A322086.P9273365853021513988

`A322089(n)+A322090(n)-A322085(n)`
-/

namespace A322086.P9273365853021513988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322089 n + (A322090 n - A322085 n)

end

end A322086.P9273365853021513988

/-! ## A322086.P16920472199692032148

`A324082(n)²%A001022(n)`
-/

namespace A322086.P16920472199692032148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A324082 n ^ 2) (A001022 n)

end

end A322086.P16920472199692032148

/-! ## A322086.P808696849500972498

`A324083(n)²%A001022(n)`
-/

namespace A322086.P808696849500972498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A324083 n ^ 2) (A001022 n)

end

end A322086.P808696849500972498

/-! ## A322086.P15126967373820495413

`A324077(n)+A324084(n)-A322085(n)`
-/

namespace A322086.P15126967373820495413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324077 n + (A324084 n - A322085 n)

end

end A322086.P15126967373820495413

/-!
# A322087: Digits of one of the two 13-adic integers sqrt(3).

The programs for A322087, there is no canonical definition to state claims against.
-/

/-! ## A322087.P9235526936652562026

`(A322085(n+1)-A322085(n))/13^n`
-/

namespace A322087.P9235526936652562026
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A322085 (n + 1) - A322085 n : ℚ) / (13 ^ n : ℚ)

end

end A322087.P9235526936652562026

/-! ## A322087.P778084649221443192

`C(2, C(2, n²))+11-A322088(n)`
-/

namespace A322087.P778084649221443192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose 2 (Nat.choose 2 (n ^ 2)) : ℤ) + (11 - A322088 n)

end

end A322087.P778084649221443192

/-! ## A322087.P10394380613732465832

`A054977(n)+11-A322088(n)`
-/

namespace A322087.P10394380613732465832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n + (11 - A322088 n)

end

end A322087.P10394380613732465832

/-! ## A322087.P18233862061033420680

`A000007(n)+12-A322088(n)`
-/

namespace A322087.P18233862061033420680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + (12 - A322088 n)

end

end A322087.P18233862061033420680

/-! ## A322087.P15749513588830554472

`13-(A322088(n)+A057427(n))`
-/

namespace A322087.P15749513588830554472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  13 - (A322088 n + A057427 n)

end

end A322087.P15749513588830554472

/-! ## A322087.P2939781185349142960

`A000041(C(2, n+1))+11-A322088(n)`
-/

namespace A322087.P2939781185349142960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (Nat.choose 2 (n + 1)) + (11 - A322088 n)

end

end A322087.P2939781185349142960

/-! ## A322087.P1578937928505697549

`A286838(n)+A286839(n)-A322088(n)`
-/

namespace A322087.P1578937928505697549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286838 n + (A286839 n - A322088 n)

end

end A322087.P1578937928505697549

/-! ## A322087.P2192098595208295740

`A322091(n)+A322092(n)-A322088(n)`
-/

namespace A322087.P2192098595208295740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322091 n + (A322092 n - A322088 n)

end

end A322087.P2192098595208295740

/-! ## A322087.P7144709617388975559

`A266437(2*n)+12-A322088(n)`
-/

namespace A322087.P7144709617388975559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266437 (2 * n) + (12 - A322088 n)

end

end A322087.P7144709617388975559

/-! ## A322087.P17015375458635943878

`A014963(A016825(n))+11-A322088(n)`
-/

namespace A322087.P17015375458635943878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A016825 n).toNat + (11 - A322088 n)

end

end A322087.P17015375458635943878

/-!
# A322088: Digits of one of the two 13-adic integers sqrt(3).

The programs for A322088, there is no canonical definition to state claims against.
-/

/-! ## A322088.P14022339504244654469

`(A322086(n+1)-A322086(n))/13^n`
-/

namespace A322088.P14022339504244654469
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A322086 (n + 1) - A322086 n : ℚ) / (13 ^ n : ℚ)

end

end A322088.P14022339504244654469

/-! ## A322088.P16853944715856522522

`A054977(n)+11-A322087(n)`
-/

namespace A322088.P16853944715856522522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n + (11 - A322087 n)

end

end A322088.P16853944715856522522

/-! ## A322088.P8728373533173546913

`A000007(n)+12-A322087(n)`
-/

namespace A322088.P8728373533173546913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + (12 - A322087 n)

end

end A322088.P8728373533173546913

/-! ## A322088.P10479195457586181406

`13-(A322087(n)+A057427(n))`
-/

namespace A322088.P10479195457586181406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  13 - (A322087 n + A057427 n)

end

end A322088.P10479195457586181406

/-! ## A322088.P17459102711704483178

`char[A142150(2*n+1)]+12-A322087(n)`
-/

namespace A322088.P17459102711704483178
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142150 (2 * n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) + (12 - A322087 n)

end

end A322088.P17459102711704483178

/-! ## A322088.P17439939321672027286

`A286838(n)+A286839(n)-A322087(n)`
-/

namespace A322088.P17439939321672027286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286838 n + (A286839 n - A322087 n)

end

end A322088.P17439939321672027286

/-! ## A322088.P10444081021052399461

`A322091(n)+A322092(n)-A322087(n)`
-/

namespace A322088.P10444081021052399461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322091 n + (A322092 n - A322087 n)

end

end A322088.P10444081021052399461

/-! ## A322088.P11501313999863004018

`char[A085121(A102083(n))]+12-A322087(n)`
-/

namespace A322088.P11501313999863004018
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085121 (A102083 n).toNat

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) + (12 - A322087 n)

end

end A322088.P11501313999863004018

/-! ## A322088.P16046158034397454328

`A324086(n)+A324087(n)-A322087(n)`
-/

namespace A322088.P16046158034397454328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324086 n + (A324087 n - A322087 n)

end

end A322088.P16046158034397454328

/-! ## A322088.P11053302523503438566

`A324085(n)+A324153(n)-A322087(n)`
-/

namespace A322088.P11053302523503438566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324085 n + (A324153 n - A322087 n)

end

end A322088.P11053302523503438566

/-!
# A322089: One of the two successive approximations up to 13^n for the 13-adic integer sqrt(-3). Here the 6 (mod 13) case (except for n = 0).

The programs for A322089, there is no canonical definition to state claims against.
-/

/-! ## A322089.P3817152805286229581

`A286840(n)+A286841(n)-A322090(n)`
-/

namespace A322089.P3817152805286229581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286840 n + (A286841 n - A322090 n)

end

end A322089.P3817152805286229581

/-! ## A322089.P13968725919587803352

`A322085(n)+A322086(n)-A322090(n)`
-/

namespace A322089.P13968725919587803352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322085 n + (A322086 n - A322090 n)

end

end A322089.P13968725919587803352

/-! ## A322089.P5650741635926064285

`A324077(n)+A324084(n)-A322090(n)`
-/

namespace A322089.P5650741635926064285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324077 n + (A324084 n - A322090 n)

end

end A322089.P5650741635926064285

/-! ## A322089.P2863941361917398194

`A324082(n)+A324083(n)-A322090(n)`
-/

namespace A322089.P2863941361917398194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324082 n + (A324083 n - A322090 n)

end

end A322089.P2863941361917398194

/-! ## A322089.P1897815109753356705

`A322086(n)+A324084(n)²%A001022(n)-A322090(n)`
-/

namespace A322089.P1897815109753356705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322086 n + (Int.tmod (A324084 n ^ 2) (A001022 n) - A322090 n)

end

end A322089.P1897815109753356705

/-!
# A322090: One of the two successive approximations up to 13^n for the 13-adic integer sqrt(3). Here the 7 (mod 13) case (except for n = 0).

The programs for A322090, there is no canonical definition to state claims against.
-/

/-! ## A322090.P916452228712754826

`A286840(n)+A286841(n)-A322089(n)`
-/

namespace A322090.P916452228712754826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286840 n + (A286841 n - A322089 n)

end

end A322090.P916452228712754826

/-! ## A322090.P10137716397038825497

`A322085(n)+A322086(n)-A322089(n)`
-/

namespace A322090.P10137716397038825497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322085 n + (A322086 n - A322089 n)

end

end A322090.P10137716397038825497

/-! ## A322090.P516748024760045508

`A324077(n)+A324084(n)-A322089(n)`
-/

namespace A322090.P516748024760045508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324077 n + (A324084 n - A322089 n)

end

end A322090.P516748024760045508

/-! ## A322090.P9308361297549066877

`A324082(n)+A324083(n)-A322089(n)`
-/

namespace A322090.P9308361297549066877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324082 n + (A324083 n - A322089 n)

end

end A322090.P9308361297549066877

/-!
# A322091: Digits of one of the two 13-adic integers sqrt(-3).

The programs for A322091, there is no canonical definition to state claims against.
-/

/-! ## A322091.P1494178235532059303

`(A322089(n+1)-A322089(n))/13^n`
-/

namespace A322091.P1494178235532059303
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A322089 (n + 1) - A322089 n : ℚ) / (13 ^ n : ℚ)

end

end A322091.P1494178235532059303

/-! ## A322091.P3693344140315548226

`A054977(n)+11-A322092(n)`
-/

namespace A322091.P3693344140315548226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n + (11 - A322092 n)

end

end A322091.P3693344140315548226

/-! ## A322091.P3249336326669582482

`A000007(n)+12-A322092(n)`
-/

namespace A322091.P3249336326669582482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + (12 - A322092 n)

end

end A322091.P3249336326669582482

/-! ## A322091.P9066810029623816602

`13-(A322092(n)+A057427(n))`
-/

namespace A322091.P9066810029623816602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  13 - (A322092 n + A057427 n)

end

end A322091.P9066810029623816602

/-! ## A322091.P13025284100744806619

`A057428(n)+13-A322092(n)`
-/

namespace A322091.P13025284100744806619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 n + (13 - A322092 n)

end

end A322091.P13025284100744806619

/-! ## A322091.P6722546940015600233

`A028242(C(n, C(n, n²)))+12-A322092(n)`
-/

namespace A322091.P6722546940015600233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 (Nat.choose n (Nat.choose n (n ^ 2))) + (12 - A322092 n)

end

end A322091.P6722546940015600233

/-! ## A322091.P11052720106706824432

`A286838(n)+A286839(n)-A322092(n)`
-/

namespace A322091.P11052720106706824432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286838 n + (A286839 n - A322092 n)

end

end A322091.P11052720106706824432

/-! ## A322091.P17897833720842113532

`A322087(n)+A322088(n)-A322092(n)`
-/

namespace A322091.P17897833720842113532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322087 n + (A322088 n - A322092 n)

end

end A322091.P17897833720842113532

/-! ## A322091.P16973850950544046675

`A091685(A008458(n))+12-A322092(n)`
-/

namespace A322091.P16973850950544046675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091685 (A008458 n).toNat + (12 - A322092 n)

end

end A322091.P16973850950544046675

/-! ## A322091.P4633098384855161387

`13-A322092(n)-A056926(A056926(∑[n]))`
-/

namespace A322091.P4633098384855161387
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  13 - A322092 n - A056926 (A056926 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A322091.P4633098384855161387

/-!
# A322092: Digits of one of the two 13-adic integers sqrt(-3).

The programs for A322092, there is no canonical definition to state claims against.
-/

/-! ## A322092.P7538973269392746911

`(A322090(n+1)-A322090(n))/13^n`
-/

namespace A322092.P7538973269392746911
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A322090 (n + 1) - A322090 n : ℚ) / (13 ^ n : ℚ)

end

end A322092.P7538973269392746911

/-! ## A322092.P18303251227707324187

`A054977(n)+11-A322091(n)`
-/

namespace A322092.P18303251227707324187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n + (11 - A322091 n)

end

end A322092.P18303251227707324187

/-! ## A322092.P5082347325322117090

`A000007(n)+12-A322091(n)`
-/

namespace A322092.P5082347325322117090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + (12 - A322091 n)

end

end A322092.P5082347325322117090

/-! ## A322092.P17436867213108781776

`13-(A322091(n)+A057427(n))`
-/

namespace A322092.P17436867213108781776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  13 - (A322091 n + A057427 n)

end

end A322092.P17436867213108781776

/-! ## A322092.P13253220221981553314

`A057428(n)+13-A322091(n)`
-/

namespace A322092.P13253220221981553314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 n + (13 - A322091 n)

end

end A322092.P13253220221981553314

/-! ## A322092.P4127216617156060226

`A029833(2*(n+1))+12-A322091(n)`
-/

namespace A322092.P4127216617156060226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029833 (2 * (n + 1)) + (12 - A322091 n)

end

end A322092.P4127216617156060226

/-! ## A322092.P1756505577707365142

`A286838(n)+A286839(n)-A322091(n)`
-/

namespace A322092.P1756505577707365142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286838 n + (A286839 n - A322091 n)

end

end A322092.P1756505577707365142

/-! ## A322092.P8060512677698455797

`A322087(n)+A322088(n)-A322091(n)`
-/

namespace A322092.P8060512677698455797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322087 n + (A322088 n - A322091 n)

end

end A322092.P8060512677698455797

/-! ## A322092.P8493599292205087340

`A014963(2*A071149(n+1))+11-A322091(n)`
-/

namespace A322092.P8493599292205087340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (2 * A071149 (n + 1)).toNat + (11 - A322091 n)

end

end A322092.P8493599292205087340

/-! ## A322092.P5492534486718024098

`A014963(lcm(2, A071149(n+1)))+11-A322091(n)`
-/

namespace A322092.P5492534486718024098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (Int.lcm 2 (A071149 (n + 1))) + (11 - A322091 n)

end

end A322092.P5492534486718024098

/-!
# A322093: Square array A(n,k), n >= 1, k >= 1, read by antidiagonals, where A(n,k) is the number of permutations of n copies of 1..k with no element equal to another within a distance of 1.

The programs for A322093, there is no canonical definition to state claims against.
-/

/-! ## A322093.P16407502229458708615

`A004736(n+1)!*A322013(n+1)`
-/

namespace A322093.P16407502229458708615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A004736 (n + 1)).toNat : ℤ) * A322013 (n + 1)

end

end A322093.P16407502229458708615

/-! ## A322093.P12933503524998338377

`A166350(A038722(n+1))*A322013(n+1)`
-/

namespace A322093.P12933503524998338377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166350 (A038722 (n + 1)).toNat * A322013 (n + 1)

end

end A322093.P12933503524998338377

/-! ## A322093.P6525711578973228636

`A166350(A061579(n)+1)*A322013(n+1)`
-/

namespace A322093.P6525711578973228636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166350 (A061579 n + 1).toNat * A322013 (n + 1)

end

end A322093.P6525711578973228636

/-! ## A322093.P9944186839069712816

`A004736(n+1)!*A265192(A157011(n+1))`
-/

namespace A322093.P9944186839069712816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A004736 (n + 1)).toNat : ℤ) * A265192 (A157011 (n + 1)).toNat

end

end A322093.P9944186839069712816

/-! ## A322093.P11113053989206569500

`A004736(n+1)!*A229950(3^A003992(n))`
-/

namespace A322093.P11113053989206569500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A004736 (n + 1)).toNat : ℤ) * A229950 (SequenceMachineLib.roundAway ((3 : ℚ) ^ (A003992 n : ℤ))).toNat

end

end A322093.P11113053989206569500

/-!
# A322094: a(n) = number of occurrences of the decimal representation of n in the concatenation of all terms preceding a(n), or n if there are no such occurrences.

The programs for A322094, there is no canonical definition to state claims against.
-/

/-! ## A322094.P12176670575217127090

`(n+1)^(A267417(n²)+char[A048991(n+1)-1])`
-/

namespace A322094.P12176670575217127090
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048991 (n + 1) - 1

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) ^ (A267417 (n ^ 2) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) : ℤ)

end

end A322094.P12176670575217127090

/-! ## A322094.P7570483794585312948

`A185943(∑[n]-char[A048992(n+1)-1])`
-/

namespace A322094.P7570483794585312948
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048992 (n + 1) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185943 (∑ j ∈ Finset.range (n + 1), f1 j - (if ∃ j, f2 j = (n : ℤ) then 1 else 0))

end

end A322094.P7570483794585312948

/-! ## A322094.P18112667633303423131

`A093190(char[A048992(n+1)-1]+∑[n+1])`
-/

namespace A322094.P18112667633303423131
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048992 (n + 1) - 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093190 ((if ∃ j, f1 j = (n : ℤ) then 1 else 0) + ∑ j ∈ Finset.range (n + 1), f2 j)

end

end A322094.P18112667633303423131

/-! ## A322094.P3103236576580349320

`(n+1)^A144299(A118626(n+1)*A294188(n))`
-/

namespace A322094.P3103236576580349320
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) ^ (A144299 (A118626 (n + 1) * A294188 n).toNat : ℤ)

end

end A322094.P3103236576580349320

/-! ## A322094.P8860453738769472995

`(n+1)^A144299(A294188(n)^A118626(n+1))`
-/

namespace A322094.P8860453738769472995
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) ^ (A144299 (SequenceMachineLib.roundAway ((A294188 n : ℚ) ^ (A118626 (n + 1) : ℤ))).toNat : ℤ)

end

end A322094.P8860453738769472995

/-!
# A322095: Number of permutations of 7 copies of 1..n with no element equal to another within a distance of 1.

The programs for A322095, there is no canonical definition to state claims against.
-/

/-! ## A322095.P5694808401116058227

`n!*A190836(n)`
-/

namespace A322095.P5694808401116058227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * A190836 n

end

end A322095.P5694808401116058227

/-! ## A322095.P9910800742311731721

`A190782(A179865(n+1))*A190836(n)`
-/

namespace A322095.P9910800742311731721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190782 (A179865 (n + 1)).toNat * A190836 n

end

end A322095.P9910800742311731721

/-!
# A322096: Number of permutations of 8 copies of 1..n with no element equal to another within a distance of 1.

The programs for A322096, there is no canonical definition to state claims against.
-/

/-! ## A322096.P8073550674796779168

`n!*A190837(n)`
-/

namespace A322096.P8073550674796779168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * A190837 n

end

end A322096.P8073550674796779168

/-! ## A322096.P8488064082712351118

`A000142(n)*A190837(n)`
-/

namespace A322096.P8488064082712351118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n * A190837 n

end

end A322096.P8488064082712351118

/-! ## A322096.P1048933013460150582

`A068106(A000096(n))*A190837(n)`
-/

namespace A322096.P1048933013460150582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068106 (A000096 n).toNat * A190837 n

end

end A322096.P1048933013460150582

/-! ## A322096.P8930742329963505859

`A166350(A179865(n+1))*A190837(n)`
-/

namespace A322096.P8930742329963505859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166350 (A179865 (n + 1)).toNat * A190837 n

end

end A322096.P8930742329963505859

/-!
# A322097: a(1)=1, a(2)=1; for n > 2, a(n) is the largest proper divisor of the concatenation of terms a(1) through a(n-1).

The programs for A322097, there is no canonical definition to state claims against.
-/

/-! ## A322097.P3775240626404312140

`A160014(A032553(n)²)`
-/

namespace A322097.P3775240626404312140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160014 (A032553 n ^ 2).toNat

end

end A322097.P3775240626404312140

/-!
# A322098: a(1)=1, a(2)=1; for n > 2, a(n) is the largest noncomposite proper divisor of the concatenation of terms a(1) through a(n-1).

The programs for A322098, there is no canonical definition to state claims against.
-/

/-! ## A322098.P2718410431529928530

`record[A331204(n)]-A007971(n)`
-/

namespace A322098.P2718410431529928530
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331204 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A007971 n

end

end A322098.P2718410431529928530

/-! ## A322098.P9511312508721077522

`A066657(Δ[∏[A187370(n+1)]])`
-/

namespace A322098.P9511312508721077522
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187370 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 (f1 (n + 1) - f1 n).toNat

end

end A322098.P9511312508721077522

/-!
# A322099: Number of permutations f of {1,...,n} with f(1) < f(n) and Sum_{k=1..n-1} 1/(f(k)^2 - f(k+1)^2) = 0.

The programs for A322099, there is no canonical definition to state claims against.
-/

/-! ## A322099.P12560434232059220696

`A359519(n+1)²%A226686(n+4)`
-/

namespace A322099.P12560434232059220696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A359519 (n + 1) ^ 2) (A226686 (n + 4))

end

end A322099.P12560434232059220696

/-! ## A322099.P8080427338717159517

`A211000(A211359(n)+A007032(n+2))`
-/

namespace A322099.P8080427338717159517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211000 (A211359 n + A007032 (n + 2)).toNat

end

end A322099.P8080427338717159517

/-! ## A322099.P8475256024086503864

`A008839(A276532(n))*A289508(n+1)`
-/

namespace A322099.P8475256024086503864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008839 (A276532 n).toNat * A289508 (n + 1)

end

end A322099.P8475256024086503864

/-! ## A322099.P17335592073248843329

`A078850(n+1)%A187489(A001045(n))`
-/

namespace A322099.P17335592073248843329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A078850 (n + 1)) (A187489 (A001045 n).toNat)

end

end A322099.P17335592073248843329

/-! ## A322099.P13368643208124345964

`A000045(n)%A298978(A036440(n+1))`
-/

namespace A322099.P13368643208124345964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000045 n) (A298978 (A036440 (n + 1)).toNat)

end

end A322099.P13368643208124345964

