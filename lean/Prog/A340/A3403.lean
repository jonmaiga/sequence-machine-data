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
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C019
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C034
import Seq.B000.C036
import Seq.B000.C037
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C005
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
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B006.C002
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
# A340300: a(n) is the number of iterations for n to reach 1 under the following scheme. If k == 0 (mod 3), then k -> k/3, if k == 1 (mod 3) k -> 2k, and if k == 2 (mod 3) add the middle two divisors of k and divide the result by 3.

The programs for A340300, there is no canonical definition to state claims against.
-/

/-! ## A340300.P9874002211464248782

`A001221(A002531(n)*A049777(n+1))`
-/

namespace A340300.P9874002211464248782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A002531 n * A049777 (n + 1)).toNat

end

end A340300.P9874002211464248782

/-! ## A340300.P3810043690367649055

`A001221(lcm(A002531(n), A049777(n+1)))`
-/

namespace A340300.P3810043690367649055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (Int.lcm (A002531 n) (A049777 (n + 1)))

end

end A340300.P3810043690367649055

/-! ## A340300.P531717849891427993

`∑{e}[A000005(A002531(n)*A049777(n+1)), #]`
-/

namespace A340300.P531717849891427993
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A002531 n * A049777 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A340300.P531717849891427993

/-!
# A340301: a(n) = n * floor(log_2(n)).

The programs for A340301, the canonical program `A340301.P504169698259140585` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A340301 has offset 1).

The definition of A340301 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+1)*floor(log2(n+1))` (program `A340301.P504169698259140585`, by `A340301.P504169698259140585.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A340301.P504169698259140585

`(n+1)*floor(log2(n+1))`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A340301

/-- `(n+1)*floor(log2(n+1))` -/
def P504169698259140585.Spec : Prop :=
  ∀ n, (P504169698259140585.a n : ℤ) = A340301 (n + 1)

theorem P504169698259140585.correct : P504169698259140585.Spec := by
  intro n
  simp only [A340301, Nat.add_sub_cancel]

end A340301

/-! ## A340301.P11771262631730658197

`A326299(n+1)-A336018(n+1)`
-/

namespace A340301.P11771262631730658197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326299 (n + 1) - A336018 (n + 1)

end

end A340301.P11771262631730658197

namespace A340301

/-- `A326299(n+1)-A336018(n+1)` -/
def P11771262631730658197.Spec : Prop :=
  ∀ n, P11771262631730658197.a n = A340301 (n + 1)

end A340301

/-! ## A340301.P8556924273199965186

`floor(floor(log2(n+1))/acot(n+1))`
-/

namespace A340301.P8556924273199965186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.log 2 (n + 1) : ℝ) / SequenceMachineLib.acot (n + 1 : ℝ)⌋

end

end A340301.P8556924273199965186

namespace A340301

/-- `floor(floor(log2(n+1))/acot(n+1))` -/
def P8556924273199965186.Spec : Prop :=
  ∀ n, P8556924273199965186.a n = A340301 (n + 1)

end A340301

/-! ## A340301.P10193463961241503081

`A380230(n+1)-(n+1)`
-/

namespace A340301.P10193463961241503081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380230 (n + 1) - (n + 1 : ℤ)

end

end A340301.P10193463961241503081

namespace A340301

/-- `A380230(n+1)-(n+1)` -/
def P10193463961241503081.Spec : Prop :=
  ∀ n, P10193463961241503081.a n = A340301 (n + 1)

end A340301

/-! ## A340301.P4999919536654752379

`abs(xor(n, -1)*A000523(n+1))`
-/

namespace A340301.P4999919536654752379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.xor (n : ℤ) (-1) * A000523 (n + 1)|

end

end A340301.P4999919536654752379

namespace A340301

/-- `abs(xor(n, -1)*A000523(n+1))` -/
def P4999919536654752379.Spec : Prop :=
  ∀ n, P4999919536654752379.a n = A340301 (n + 1)

end A340301

/-! ## A340301.P10394023261757156976

`(n+1)*∑[A036987(n)]-(n+1)`
-/

namespace A340301.P10394023261757156976
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036987 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j) - (n + 1 : ℤ)

end

end A340301.P10394023261757156976

namespace A340301

/-- `(n+1)*∑[A036987(n)]-(n+1)` -/
def P10394023261757156976.Spec : Prop :=
  ∀ n, P10394023261757156976.a n = A340301 (n + 1)

end A340301

/-! ## A340301.P11973030101813100261

`(n+1)*∑[char[A000225(n)]]-(n+1)`
-/

namespace A340301.P11973030101813100261
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((n + 1) * (∑ j ∈ Finset.range (n + 1), f1 j) : ℕ) : ℤ) - (n + 1 : ℤ)

end

end A340301.P11973030101813100261

namespace A340301

/-- `(n+1)*∑[char[A000225(n)]]-(n+1)` -/
def P11973030101813100261.Spec : Prop :=
  ∀ n, P11973030101813100261.a n = A340301 (n + 1)

end A340301

/-! ## A340301.P8976648172046225090

`A168160(n+1)+A078903(n+1)`
-/

namespace A340301.P8976648172046225090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168160 (n + 1) + A078903 (n + 1)

end

end A340301.P8976648172046225090

namespace A340301

/-- `A168160(n+1)+A078903(n+1)` -/
def P8976648172046225090.Spec : Prop :=
  ∀ n, P8976648172046225090.a n = A340301 (n + 1)

end A340301

/-! ## A340301.P2207172750660873103

`Δ[A390551(n)]-(n+1)`
-/

namespace A340301.P2207172750660873103
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390551 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - (n + 1 : ℤ)

end

end A340301.P2207172750660873103

namespace A340301

/-- `Δ[A390551(n)]-(n+1)` -/
def P2207172750660873103.Spec : Prop :=
  ∀ n, P2207172750660873103.a n = A340301 (n + 1)

end A340301

/-! ## A340301.P6979188619344171686

`abs((∑[A014963(2*(n+1))-1]-1)*(n+1))`
-/

namespace A340301.P6979188619344171686
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (2 * (n + 1)) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(∑ j ∈ Finset.range (n + 1), f1 j - 1) * (n + 1 : ℤ)|

end

end A340301.P6979188619344171686

namespace A340301

/-- `abs((∑[A014963(2*(n+1))-1]-1)*(n+1))` -/
def P6979188619344171686.Spec : Prop :=
  ∀ n, P6979188619344171686.a n = A340301 (n + 1)

end A340301

/-! ## A340301.P7807974282238544053

`record[A025480(n)*A340251(n)]`
-/

namespace A340301.P7807974282238544053
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 n * A340251 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A340301.P7807974282238544053

namespace A340301

/-- `record[A025480(n)*A340251(n)]` -/
def P7807974282238544053.Spec : Prop :=
  ∀ n, P7807974282238544053.a n = A340301 (n + 1)

end A340301

/-! ## A340301.P2132121249874684293

`record[(A272020(n)-1)*A343934(n+1)]`
-/

namespace A340301.P2132121249874684293
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A272020 n - 1) * A343934 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A340301.P2132121249874684293

namespace A340301

/-- `record[(A272020(n)-1)*A343934(n+1)]` -/
def P2132121249874684293.Spec : Prop :=
  ∀ n, P2132121249874684293.a n = A340301 (n + 1)

end A340301

/-! ## A340301.P503762582412789400

`A303763(A303764((n+1)*A000523(n+1)))`
-/

namespace A340301.P503762582412789400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303763 (A303764 ((n + 1 : ℤ) * A000523 (n + 1)).toNat).toNat

end

end A340301.P503762582412789400

namespace A340301

/-- `A303763(A303764((n+1)*A000523(n+1)))` -/
def P503762582412789400.Spec : Prop :=
  ∀ n, P503762582412789400.a n = A340301 (n + 1)

end A340301

/-! ## A340301.P14316059646284897891

`record[A000523(A054531(n+1))*A054531(n+1)]`
-/

namespace A340301.P14316059646284897891
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000523 (A054531 (n + 1)).toNat * A054531 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A340301.P14316059646284897891

namespace A340301

/-- `record[A000523(A054531(n+1))*A054531(n+1)]` -/
def P14316059646284897891.Spec : Prop :=
  ∀ n, P14316059646284897891.a n = A340301 (n + 1)

end A340301

/-!
# A340302: Numbers k such that k and the least number that is larger than k and has the same prime signature as k also has the same set of distinct prime divisors as k.

The programs for A340302, there is no canonical definition to state claims against.
-/

/-! ## A340302.P9531062868634644025

`A262114(∑{d}[24*n+23, #]*A274536(n+1))`
-/

namespace A340302.P9531062868634644025
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  24 * n + 23

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262114 (((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℤ) * A274536 (n + 1)).toNat

end

end A340302.P9531062868634644025

/-!
# A340305: Numbers k such that k and the least number that is larger than k and has the same set of distinct prime divisors as k also has the same prime signature as k.

The programs for A340305, there is no canonical definition to state claims against.
-/

/-! ## A340305.P16216345617072159011

`∩[A290965(n+1), A328120(n+1)]`
-/

namespace A340305.P16216345617072159011
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290965 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328120 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A340305.P16216345617072159011

/-! ## A340305.P17866155782944607731

`∩[A306583(n+1), A328120(n+1)]`
-/

namespace A340305.P17866155782944607731
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306583 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328120 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A340305.P17866155782944607731

/-!
# A340306: Numbers k such that A065642(k) = A081761(k).

The programs for A340306, there is no canonical definition to state claims against.
-/

/-! ## A340306.P16869500540072493057

`∩[A340302(n+1), A340305(n+1)]`
-/

namespace A340306.P16869500540072493057
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340302 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340305 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A340306.P16869500540072493057

/-!
# A340308: Primes p such that (p*q+r*s)/2 is prime, where q,r,s are the next 3 primes after p.

The programs for A340308, there is no canonical definition to state claims against.
-/

/-! ## A340308.P3770165317758445766

`record[A240233(A174940(n+1))]`
-/

namespace A340308.P3770165317758445766
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240233 (A174940 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A340308.P3770165317758445766

/-! ## A340308.P9714399175962786311

`p?[A173784(n)-A029400(n)+5]`
-/

namespace A340308.P9714399175962786311
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173784 n - A029400 n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A340308.P9714399175962786311

/-! ## A340308.P15043467959393811712

`p?[A173784(n)-A029402(n)+5]`
-/

namespace A340308.P15043467959393811712
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173784 n - A029402 n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A340308.P15043467959393811712

/-!
# A340309: Number of ordered pairs of vertices which have two different shortest paths between them in the n-Hanoi graph (3 pegs, n discs).

The programs for A340309, the canonical program `A340309.P17464561755159793948` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A340309 has offset 1).

The definition of A340309 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A340309.P17464561755159793948

`8*a(n-1)-17*a(n-2)+6*a(n-3)` with `a(0)=0, a(1)=6, a(2)=48`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A340309

/-- `8*a(n-1)-17*a(n-2)+6*a(n-3)` -/
def P17464561755159793948.Spec : Prop :=
  ∀ n, P17464561755159793948.a n = A340309 (n + 1)

theorem P17464561755159793948.correct : P17464561755159793948.Spec := by
  intro n
  simp only [A340309, Nat.add_sub_cancel]

end A340309

/-! ## A340309.P10756602003737849924

`(A052984(n+1)-3^(n+1))*3/2`
-/

namespace A340309.P10756602003737849924
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A052984 (n + 1) - (3 ^ (n + 1) : ℤ)) * 3 : ℚ) / 2

end

end A340309.P10756602003737849924

namespace A340309

/-- `(A052984(n+1)-3^(n+1))*3/2` -/
def P10756602003737849924.Spec : Prop :=
  ∀ n, P10756602003737849924.a n = (A340309 (n + 1) : ℚ)

end A340309

/-! ## A340309.P11943938990888019281

`3*a(n-1)+6*A107839(n-1)` with `a(0)=0`
-/

namespace A340309.P11943938990888019281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  3 * a (n - 1) + 6 * A107839 (n - 1)

end

end A340309.P11943938990888019281

namespace A340309

/-- `3*a(n-1)+6*A107839(n-1)` -/
def P11943938990888019281.Spec : Prop :=
  ∀ n, P11943938990888019281.a n = A340309 (n + 1)

end A340309

/-! ## A340309.P6162642310782271046

`3*(a(n-1)-A106709(n))` with `a(0)=0`
-/

namespace A340309.P6162642310782271046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  3 * (a (n - 1) - A106709 n)

end

end A340309.P6162642310782271046

namespace A340309

/-- `3*(a(n-1)-A106709(n))` -/
def P6162642310782271046.Spec : Prop :=
  ∀ n, P6162642310782271046.a n = A340309 (n + 1)

end A340309

/-! ## A340309.P13036478383190270373

`3*(a(n-1)+2*A249581(A008586(n)))` with `a(0)=0`
-/

namespace A340309.P13036478383190270373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  3 * (a (n - 1) + 2 * A249581 (A008586 n).toNat)

end

end A340309.P13036478383190270373

namespace A340309

/-- `3*(a(n-1)+2*A249581(A008586(n)))` -/
def P13036478383190270373.Spec : Prop :=
  ∀ n, P13036478383190270373.a n = A340309 (n + 1)

end A340309

/-! ## A340309.P18345741705230708663

`3*(a(n-1)+A204091(n)%A052984(n))` with `a(0)=0`
-/

namespace A340309.P18345741705230708663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  3 * (a (n - 1) + Int.tmod (A204091 n) (A052984 n))

end

end A340309.P18345741705230708663

namespace A340309

/-- `3*(a(n-1)+A204091(n)%A052984(n))` -/
def P18345741705230708663.Spec : Prop :=
  ∀ n, P18345741705230708663.a n = A340309 (n + 1)

end A340309

/-!
# A340311: Number of different possible profiles of palindromic length for prefixes of binary sequences of length n.

The programs for A340311, there is no canonical definition to state claims against.
-/

/-! ## A340311.P17213008323762411116

`A172471(A005655(n)+n)`
-/

namespace A340311.P17213008323762411116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172471 (A005655 n + (n : ℤ)).toNat

end

end A340311.P17213008323762411116

/-! ## A340311.P9074797328405402507

`A172471(A013989(n)+n)`
-/

namespace A340311.P9074797328405402507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172471 (A013989 n + (n : ℤ)).toNat

end

end A340311.P9074797328405402507

/-! ## A340311.P3137684283513553846

`A005578(n)+record[A349903(n)]`
-/

namespace A340311.P3137684283513553846
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349903 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005578 n + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A340311.P3137684283513553846

/-! ## A340311.P2671688486878406128

`A003056(A149915(n)+floor(3/acot(n)))`
-/

namespace A340311.P2671688486878406128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A149915 n + ⌊3 / SequenceMachineLib.acot (n : ℝ)⌋).toNat

end

end A340311.P2671688486878406128

/-! ## A340311.P344346407221900321

`A172471(A099020(∑[n+2]+2)+n)`
-/

namespace A340311.P344346407221900321
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172471 (A099020 (∑ j ∈ Finset.range (n + 1), f1 j + 2) + (n : ℤ)).toNat

end

end A340311.P344346407221900321

/-!
# A340313: The n-th squarefree number is the a(n)-th squarefree number having its number of primes.

The programs for A340313, there is no canonical definition to state claims against.
-/

/-! ## A340313.P10670580324344596013

`A064839(A005117(n+1))`
-/

namespace A340313.P10670580324344596013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064839 (A005117 (n + 1)).toNat

end

end A340313.P10670580324344596013

/-! ## A340313.P4371251392583589699

`A064839(sqrt(A062503(n+1)))`
-/

namespace A340313.P4371251392583589699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064839 (SequenceMachineLib.roundAway (Real.sqrt (A062503 (n + 1) : ℝ))).toNat

end

end A340313.P4371251392583589699

/-! ## A340313.P1856856624895547877

`A064839(record[A007947(n+1)])`
-/

namespace A340313.P1856856624895547877
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064839 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A340313.P1856856624895547877

/-! ## A340313.P6917337593174685899

`A335286(record[A055231(n+1)])`
-/

namespace A340313.P6917337593174685899
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055231 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335286 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A340313.P6917337593174685899

/-! ## A340313.P11863794275672722025

`A064839(eq[1, A008479(n+1)]+1)`
-/

namespace A340313.P11863794275672722025
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008479 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064839 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A340313.P11863794275672722025

/-! ## A340313.P11881441550269095765

`A064839(eq[A001222(n+1), A001221(n+1)]+1)`
-/

namespace A340313.P11881441550269095765
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064839 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1)

end

end A340313.P11881441550269095765

/-! ## A340313.P5139918097549361699

`A064839(A062503(n+1))`
-/

namespace A340313.P5139918097549361699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064839 (A062503 (n + 1)).toNat

end

end A340313.P5139918097549361699

/-! ## A340313.P16043204916376866678

`A064839(A077377(n+1)²)`
-/

namespace A340313.P16043204916376866678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064839 (A077377 (n + 1) ^ 2).toNat

end

end A340313.P16043204916376866678

/-! ## A340313.P3457181833519073220

`A064839(A348506(n+1)²)`
-/

namespace A340313.P3457181833519073220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064839 (A348506 (n + 1) ^ 2).toNat

end

end A340313.P3457181833519073220

/-! ## A340313.P1208671456700556944

`A064839(A367801(n+1)²)`
-/

namespace A340313.P1208671456700556944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064839 (A367801 (n + 1) ^ 2).toNat

end

end A340313.P1208671456700556944

/-!
# A340314: Number of different possible profiles of palindromic length for prefixes of sequences of length n, over an arbitrary (unbounded) alphabet.

The programs for A340314, there is no canonical definition to state claims against.
-/

/-! ## A340314.P14283994575033797943

`A157271(A026597(n))+A131577(n)`
-/

namespace A340314.P14283994575033797943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157271 (A026597 n).toNat + A131577 n

end

end A340314.P14283994575033797943

/-! ## A340314.P3534638591694496261

`A340666(A133409(n))+A006652(n+4)`
-/

namespace A340314.P3534638591694496261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340666 (A133409 n).toNat + A006652 (n + 4)

end

end A340314.P3534638591694496261

/-! ## A340314.P2940224886981031130

`or(A051286(n+1), A259598(A005142(n)))`
-/

namespace A340314.P2940224886981031130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A051286 (n + 1)) (A259598 (A005142 n).toNat)

end

end A340314.P2940224886981031130

/-! ## A340314.P6160432502457122992

`or(A051286(n+1), A349903(A131577(n)))`
-/

namespace A340314.P6160432502457122992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A051286 (n + 1)) (A349903 (A131577 n).toNat)

end

end A340314.P6160432502457122992

/-!
# A340316: Square array A(n,k), n>=1, k>=1, read by antidiagonals, where row n is the increasing list of all squarefree numbers with n primes.

The programs for A340316, there is no canonical definition to state claims against.
-/

/-! ## A340316.P1017310277109974959

`A384564(A182945(n+1))`
-/

namespace A340316.P1017310277109974959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384564 (A182945 (n + 1)).toNat

end

end A340316.P1017310277109974959

/-! ## A340316.P16170363649213620662

`A019565(lt[2^n, 30^∑{e}[n+1, #]])`
-/

namespace A340316.P16170363649213620662
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  30 ^ (∑ p ∈ Nat.primeFactors (f3 n), Nat.factorization (f3 n) p)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019565 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A340316.P16170363649213620662

/-! ## A340316.P16653680221722669723

`A019565(lt[n/5, A001222(n+1)])`
-/

namespace A340316.P16653680221722669723
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / 5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019565 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℚ)) n)

end

end A340316.P16653680221722669723

/-! ## A340316.P16680383143159588484

`A019565(lt[2^n, A165851(n+1)])`
-/

namespace A340316.P16680383143159588484
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165851 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019565 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A340316.P16680383143159588484

/-! ## A340316.P13763232095421500734

`A274608(n+1)-A228039(A011815(n))`
-/

namespace A340316.P13763232095421500734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274608 (n + 1) - A228039 (A011815 n).toNat

end

end A340316.P13763232095421500734

/-!
# A340317: (Product of primes <= n) read modulo n.

The programs for A340317, the canonical program `A340317.P9589096557539198155` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A340317 has offset 1).

The definition of A340317 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 251 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A340317.P8002757329754745936

`A034386(n)%A005451(n+1)`
-/

namespace A340317.P8002757329754745936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A034386 n) (A005451 (n + 1))

end

end A340317.P8002757329754745936

namespace A340317

/-- `A034386(n)%A005451(n+1)` -/
def P8002757329754745936.Spec : Prop :=
  ∀ n, P8002757329754745936.a n = A340317 (n + 1)

end A340317

/-! ## A340317.P9589096557539198155

`A186944(n+1)%A005451(n+1)`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A340317

/-- `A186944(n+1)%A005451(n+1)` -/
def P9589096557539198155.Spec : Prop :=
  ∀ n, P9589096557539198155.a n = A340317 (n + 1)

theorem P9589096557539198155.correct : P9589096557539198155.Spec := by
  intro n
  simp only [A340317, Nat.add_sub_cancel]

end A340317

/-! ## A340317.P13879779082945562573

`∏[∏{d}[∑{p}[n+1, C(#, n)], #]]%(n+1)`
-/

namespace A340317.P13879779082945562573
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n), Nat.choose p n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f2 n), d

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∏ j ∈ Finset.range (n + 1), f1 j) % (n + 1)

end

end A340317.P13879779082945562573

namespace A340317

/-- `∏[∏{d}[∑{p}[n+1, C(#, n)], #]]%(n+1)` -/
def P13879779082945562573.Spec : Prop :=
  ∀ n, (P13879779082945562573.a n : ℤ) = A340317 (n + 1)

end A340317

/-! ## A340317.P1823682807114096386

`∏[∏{p}[C(∑{p}[n+1, #], n), #]]%(n+1)`
-/

namespace A340317.P1823682807114096386
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (∑ p ∈ Nat.primeFactors (f3 n), p) n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∏ j ∈ Finset.range (n + 1), f1 j) % (n + 1)

end

end A340317.P1823682807114096386

namespace A340317

/-- `∏[∏{p}[C(∑{p}[n+1, #], n), #]]%(n+1)` -/
def P1823682807114096386.Spec : Prop :=
  ∀ n, (P1823682807114096386.a n : ℤ) = A340317 (n + 1)

end A340317

/-! ## A340317.P8535403205704520089

`∏[n*char[p?[xor(3, n)]-1]+1]%(n+1)`
-/

namespace A340317.P8535403205704520089
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 3 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f3 (SequenceMachineLib.nth (fun j => (f3 j).Prime) n) : ℤ) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (if ∃ j, f2 j = (n : ℤ) then 1 else 0) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∏ j ∈ Finset.range (n + 1), f1 j) % (n + 1)

end

end A340317.P8535403205704520089

namespace A340317

/-- `∏[n*char[p?[xor(3, n)]-1]+1]%(n+1)` -/
def P8535403205704520089.Spec : Prop :=
  ∀ n, (P8535403205704520089.a n : ℤ) = A340317 (n + 1)

end A340317

/-! ## A340317.P13967415570838310792

`∏[n*char[p?[∏{p}[n, #]]-1]+1]%(n+1)`
-/

namespace A340317.P13967415570838310792
noncomputable section

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f4 n), p

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f3 (SequenceMachineLib.nth (fun j => (f3 j).Prime) n) : ℤ) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (if ∃ j, f2 j = (n : ℤ) then 1 else 0) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∏ j ∈ Finset.range (n + 1), f1 j) % (n + 1)

end

end A340317.P13967415570838310792

namespace A340317

/-- `∏[n*char[p?[∏{p}[n, #]]-1]+1]%(n+1)` -/
def P13967415570838310792.Spec : Prop :=
  ∀ n, (P13967415570838310792.a n : ℤ) = A340317 (n + 1)

end A340317

/-! ## A340317.P7574326166140976079

`A034386(n+1)%(n+1)`
-/

namespace A340317.P7574326166140976079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A034386 (n + 1)) (n + 1 : ℤ)

end

end A340317.P7574326166140976079

namespace A340317

/-- `A034386(n+1)%(n+1)` -/
def P7574326166140976079.Spec : Prop :=
  ∀ n, P7574326166140976079.a n = A340317 (n + 1)

end A340317

/-! ## A340317.P10811569022350231263

`A186944(n+2)%(n+1)`
-/

namespace A340317.P10811569022350231263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A186944 (n + 2)) (n + 1 : ℤ)

end

end A340317.P10811569022350231263

namespace A340317

/-- `A186944(n+2)%(n+1)` -/
def P10811569022350231263.Spec : Prop :=
  ∀ n, P10811569022350231263.a n = A340317 (n + 1)

end A340317

/-! ## A340317.P3081686322370448675

`∏[A089026(n+1)]%(n+1)`
-/

namespace A340317.P3081686322370448675
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089026 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∏ j ∈ Finset.range (n + 1), f1 j) (n + 1 : ℤ)

end

end A340317.P3081686322370448675

namespace A340317

/-- `∏[A089026(n+1)]%(n+1)` -/
def P3081686322370448675.Spec : Prop :=
  ∀ n, P3081686322370448675.a n = A340317 (n + 1)

end A340317

/-! ## A340317.P15224672816013429009

`A300951(2*(n+1))%(n+1)`
-/

namespace A340317.P15224672816013429009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A300951 (2 * (n + 1))) (n + 1 : ℤ)

end

end A340317.P15224672816013429009

namespace A340317

/-- `A300951(2*(n+1))%(n+1)` -/
def P15224672816013429009.Spec : Prop :=
  ∀ n, P15224672816013429009.a n = A340317 (n + 1)

end A340317

/-! ## A340317.P742589942477844172

`(∏{p}[n+1, #]*A066838(n+1))%(n+1)`
-/

namespace A340317.P742589942477844172
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℤ) * A066838 (n + 1)) (n + 1 : ℤ)

end

end A340317.P742589942477844172

namespace A340317

/-- `(∏{p}[n+1, #]*A066838(n+1))%(n+1)` -/
def P742589942477844172.Spec : Prop :=
  ∀ n, P742589942477844172.a n = A340317 (n + 1)

end A340317

/-! ## A340317.P13656135645858829682

`A066332(n+3)%(n+1)`
-/

namespace A340317.P13656135645858829682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A066332 (n + 3)) (n + 1 : ℤ)

end

end A340317.P13656135645858829682

namespace A340317

/-- `A066332(n+3)%(n+1)` -/
def P13656135645858829682.Spec : Prop :=
  ∀ n, P13656135645858829682.a n = A340317 (n + 1)

end A340317

/-!
# A340320: a(n) is the X-coordinate of the n-th point of a variant of the quadratic Koch curve. Sequence A340321 gives Y-coordinates.

The programs for A340320, there is no canonical definition to state claims against.
-/

/-! ## A340320.P12199596176588587236

`∑[A056594(A308177(n+1)-n²)]`
-/

namespace A340320.P12199596176588587236
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056594 (A308177 (n + 1) - (n ^ 2 : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A340320.P12199596176588587236

/-! ## A340320.P2567547783646583403

`∑[A014021(3*(n+1))^A279339(4*(n+1))]`
-/

namespace A340320.P2567547783646583403
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A014021 (3 * (n + 1)) : ℚ) ^ (A279339 (4 * (n + 1)) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A340320.P2567547783646583403

/-! ## A340320.P3891229604359566672

`∑[A101455(A054791(3*(n+1)))]`
-/

namespace A340320.P3891229604359566672
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101455 (A054791 (3 * (n + 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A340320.P3891229604359566672

/-! ## A340320.P5416263295183739233

`∑[A056594(n+1)^A036887(n+1)]`
-/

namespace A340320.P5416263295183739233
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A056594 (n + 1) : ℚ) ^ (A036887 (n + 1) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A340320.P5416263295183739233

/-! ## A340320.P3206797655217790723

`∑[A134452(A008706(n+2)²)]`
-/

namespace A340320.P3206797655217790723
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134452 (A008706 (n + 2) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A340320.P3206797655217790723

/-!
# A340321: a(n) is the Y-coordinate of the n-th point of a variant of the quadratic Koch curve. Sequence A340320 gives X-coordinates.

The programs for A340321, there is no canonical definition to state claims against.
-/

/-! ## A340321.P18237581938013419022

`A332250(A008554(n+1))%A141214(n)`
-/

namespace A340321.P18237581938013419022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A332250 (A008554 (n + 1)).toNat) (A141214 n)

end

end A340321.P18237581938013419022

/-! ## A340321.P4219956794228924777

`A332250(lt[A099386(n), 7])`
-/

namespace A340321.P4219956794228924777
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099386 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332250 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A340321.P4219956794228924777

/-! ## A340321.P13500582192658186497

`A051904(A355514(n+3))*A332250(n)`
-/

namespace A340321.P13500582192658186497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051904 (A355514 (n + 3)).toNat * A332250 n

end

end A340321.P13500582192658186497

/-!
# A340323: Multiplicative with a(p^e) = (p + 1) * (p - 1)^(e - 1).

The programs for A340323, the canonical program `A340323.P12139202470426285331` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A340323 has offset 1).

The definition of A340323 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A048250, A326297, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A340323.P12139202470426285331

`A048250(n+1)*A326297(n+1)`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A340323

/-- `A048250(n+1)*A326297(n+1)` -/
def P12139202470426285331.Spec : Prop :=
  ∀ n, P12139202470426285331.a n = A340323 (n + 1)

theorem P12139202470426285331.correct : P12139202470426285331.Spec := by
  intro n
  simp only [A340323, Nat.add_sub_cancel]

end A340323

/-! ## A340323.P8154332965812497663

`A167344(n+1)/A340368(n+1)`
-/

namespace A340323.P8154332965812497663
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A167344 (n + 1) : ℚ) / (A340368 (n + 1) : ℚ)

end

end A340323.P8154332965812497663

namespace A340323

/-- `A167344(n+1)/A340368(n+1)` -/
def P8154332965812497663.Spec : Prop :=
  ∀ n, P8154332965812497663.a n = (A340323 (n + 1) : ℚ)

end A340323

/-! ## A340323.P5794344816033272795

`∑{d}[n+1, A003958(#)*A074823((n+1)/#)]`
-/

namespace A340323.P5794344816033272795
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A003958 d * A074823 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A340323.P5794344816033272795

namespace A340323

/-- `∑{d}[n+1, A003958(#)*A074823((n+1)/#)]` -/
def P5794344816033272795.Spec : Prop :=
  ∀ n, P5794344816033272795.a n = A340323 (n + 1)

end A340323

/-! ## A340323.P1647843913356099836

`∑{d}[n+1, A003966(#)*A074816((n+1)/#)]`
-/

namespace A340323.P1647843913356099836
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A003966 d * A074816 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A340323.P1647843913356099836

namespace A340323

/-- `∑{d}[n+1, A003966(#)*A074816((n+1)/#)]` -/
def P1647843913356099836.Spec : Prop :=
  ∀ n, P1647843913356099836.a n = A340323 (n + 1)

end A340323

/-! ## A340323.P15630732895442367636

`A003958((n+1)/∏{p}[n+1, #])*A048250(n+1)`
-/

namespace A340323.P15630732895442367636
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003958 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ))).toNat * A048250 (n + 1)

end

end A340323.P15630732895442367636

namespace A340323

/-- `A003958((n+1)/∏{p}[n+1, #])*A048250(n+1)` -/
def P15630732895442367636.Spec : Prop :=
  ∀ n, P15630732895442367636.a n = A340323 (n + 1)

end A340323

/-! ## A340323.P10450042320973684205

`A003958(A003557(n+1))*A048250(n+1)`
-/

namespace A340323.P10450042320973684205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003958 (A003557 (n + 1)).toNat * A048250 (n + 1)

end

end A340323.P10450042320973684205

namespace A340323

/-- `A003958(A003557(n+1))*A048250(n+1)` -/
def P10450042320973684205.Spec : Prop :=
  ∀ n, P10450042320973684205.a n = A340323 (n + 1)

end A340323

/-! ## A340323.P12863548615720684461

`A003959(A007947(n+1))*A326297(n+1)`
-/

namespace A340323.P12863548615720684461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003959 (A007947 (n + 1)).toNat * A326297 (n + 1)

end

end A340323.P12863548615720684461

namespace A340323

/-- `A003959(A007947(n+1))*A326297(n+1)` -/
def P12863548615720684461.Spec : Prop :=
  ∀ n, P12863548615720684461.a n = A340323 (n + 1)

end A340323

/-! ## A340323.P14986733809279075436

`A001615(n+1)/A000010(n+1)*A003958(n+1)`
-/

namespace A340323.P14986733809279075436
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001615 (n + 1) : ℚ) / (A000010 (n + 1) : ℚ) * (A003958 (n + 1) : ℚ)

end

end A340323.P14986733809279075436

namespace A340323

/-- `A001615(n+1)/A000010(n+1)*A003958(n+1)` -/
def P14986733809279075436.Spec : Prop :=
  ∀ n, P14986733809279075436.a n = (A340323 (n + 1) : ℚ)

end A340323

/-! ## A340323.P2708297593286317092

`A003958(n+1)*A003959(n+1)/A340368(n+1)`
-/

namespace A340323.P2708297593286317092
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003958 (n + 1) * A003959 (n + 1) : ℚ) / (A340368 (n + 1) : ℚ)

end

end A340323.P2708297593286317092

namespace A340323

/-- `A003958(n+1)*A003959(n+1)/A340368(n+1)` -/
def P2708297593286317092.Spec : Prop :=
  ∀ n, P2708297593286317092.a n = (A340323 (n + 1) : ℚ)

end A340323

/-! ## A340323.P11692255049207091159

`A003958(n+1)/A304407(n+1)*A304411(n+1)`
-/

namespace A340323.P11692255049207091159
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003958 (n + 1) : ℚ) / (A304407 (n + 1) : ℚ) * (A304411 (n + 1) : ℚ)

end

end A340323.P11692255049207091159

namespace A340323

/-- `A003958(n+1)/A304407(n+1)*A304411(n+1)` -/
def P11692255049207091159.Spec : Prop :=
  ∀ n, P11692255049207091159.a n = (A340323 (n + 1) : ℚ)

end A340323

/-! ## A340323.P2797318663320248750

`A003959(n+1)*A326297(n+1)/A327564(n+1)`
-/

namespace A340323.P2797318663320248750
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003959 (n + 1) * A326297 (n + 1) : ℚ) / (A327564 (n + 1) : ℚ)

end

end A340323.P2797318663320248750

namespace A340323

/-- `A003959(n+1)*A326297(n+1)/A327564(n+1)` -/
def P2797318663320248750.Spec : Prop :=
  ∀ n, P2797318663320248750.a n = (A340323 (n + 1) : ℚ)

end A340323

/-! ## A340323.P7402677936347766087

`A167344(n+1)/(A173557(n+1)*A327564(n+1))`
-/

namespace A340323.P7402677936347766087
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A167344 (n + 1) : ℚ) / (A173557 (n + 1) * A327564 (n + 1) : ℚ)

end

end A340323.P7402677936347766087

namespace A340323

/-- `A167344(n+1)/(A173557(n+1)*A327564(n+1))` -/
def P7402677936347766087.Spec : Prop :=
  ∀ n, P7402677936347766087.a n = (A340323 (n + 1) : ℚ)

end A340323

/-! ## A340323.P7217562644646017948

`A326297(n+1)/A003959(n+1)*A351435(n+1)`
-/

namespace A340323.P7217562644646017948
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A326297 (n + 1) : ℚ) / (A003959 (n + 1) : ℚ) * (A351435 (n + 1) : ℚ)

end

end A340323.P7217562644646017948

namespace A340323

/-- `A326297(n+1)/A003959(n+1)*A351435(n+1)` -/
def P7217562644646017948.Spec : Prop :=
  ∀ n, P7217562644646017948.a n = (A340323 (n + 1) : ℚ)

end A340323

/-! ## A340323.P2060646722280120895

`A003958(A001615(n+1)/A048250(n+1))*A048250(n+1)`
-/

namespace A340323.P2060646722280120895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003958 (SequenceMachineLib.roundAway ((A001615 (n + 1) : ℚ) / (A048250 (n + 1) : ℚ))).toNat * A048250 (n + 1)

end

end A340323.P2060646722280120895

namespace A340323

/-- `A003958(A001615(n+1)/A048250(n+1))*A048250(n+1)` -/
def P2060646722280120895.Spec : Prop :=
  ∀ n, P2060646722280120895.a n = A340323 (n + 1)

end A340323

/-! ## A340323.P3830716460484490740

`A003959(A064549(n+1))/A003959(n+1)*A326297(n+1)`
-/

namespace A340323.P3830716460484490740
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003959 (A064549 (n + 1)).toNat : ℚ) / (A003959 (n + 1) : ℚ) * (A326297 (n + 1) : ℚ)

end

end A340323.P3830716460484490740

namespace A340323

/-- `A003959(A064549(n+1))/A003959(n+1)*A326297(n+1)` -/
def P3830716460484490740.Spec : Prop :=
  ∀ n, P3830716460484490740.a n = (A340323 (n + 1) : ℚ)

end A340323

/-!
# A340324: Numbers k such that starting with k and repeatedly applying the map x -> A340323(x) reaches the loop {3, 4}.

The programs for A340324, there is no canonical definition to state claims against.
-/

/-! ## A340324.P11282689117382719000

`lt[A336921(A288872(n)+1+n), 1]+2`
-/

namespace A340324.P11282689117382719000
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336921 (A288872 n + 1 + (n : ℤ)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 2

end

end A340324.P11282689117382719000

/-! ## A340324.P14438169726380614833

`∪[A286622(A077947(3*n+2)), A056652(n+1)]`
-/

namespace A340324.P14438169726380614833
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286622 (A077947 (3 * n + 2)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056652 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A340324.P14438169726380614833

/-!
# A340325: Numbers k such that starting with k and repeatedly applying the map x -> A340323(x) reaches the fixed point 12.

The programs for A340325, there is no canonical definition to state claims against.
-/

/-! ## A340325.P6065200544468224268

`eq[char[A340324(n+1)], A169585(n)]`
-/

namespace A340325.P6065200544468224268
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340324 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169585 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A340325.P6065200544468224268

/-! ## A340325.P6783232867572606301

`eq[char[A340324(n+1)], A285476(n)]`
-/

namespace A340325.P6783232867572606301
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340324 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285476 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A340325.P6783232867572606301

/-! ## A340325.P7804879121883779746

`lt[1, A001221(A338171(n+1))]+1`
-/

namespace A340325.P7804879121883779746
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A338171 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A340325.P7804879121883779746

/-! ## A340325.P17920428848998182116

`lt[2, A295557(A340323(n+1))]+1`
-/

namespace A340325.P17920428848998182116
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295557 (A340323 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A340325.P17920428848998182116

/-! ## A340325.P13670612635614687399

`eq[char[A340324(n+1)], A033322(n+1)]`
-/

namespace A340325.P13670612635614687399
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340324 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033322 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A340325.P13670612635614687399

/-! ## A340325.P14389842514568109113

`eq[A048298(n), A048298(A125514(n))]`
-/

namespace A340325.P14389842514568109113
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048298 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048298 (A125514 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A340325.P14389842514568109113

/-! ## A340325.P975696737465879672

`eq[A293668(A125514(n)), A293668(n)]`
-/

namespace A340325.P975696737465879672
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293668 (A125514 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293668 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A340325.P975696737465879672

/-!
# A340326: a(n) = a(n-2) + (-1)^n*a(n-1) + n*(1-(-1)^n) with a(0) = a(1) = 1.

The programs for A340326, the canonical program `A340326.P6191860107316554116` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A340326 has offset 0).

The definition of A340326 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-2)+(-1)^n*a(n-1)+n*(1-(-1)^n)` (program `A340326.P6191860107316554116`, by `A340326.P6191860107316554116.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A340326.P6191860107316554116

`a(n-2)+(-1)^n*a(n-1)+n*(1-(-1)^n)` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A340326

/-- `a(n-2)+(-1)^n*a(n-1)+n*(1-(-1)^n)` -/
def P6191860107316554116.Spec : Prop :=
  ∀ n, P6191860107316554116.a n = A340326 n

theorem P6191860107316554116.correct : P6191860107316554116.Spec := by
  intro n
  simp only [A340326]

end A340326

/-! ## A340326.P17263998153296638163

`3*a(n-2)-4*a(n-4)+3*a(n-6)-a(n-8)` with `a(0)=1, a(1)=1, a(2)=2, a(3)=5, a(4)=7, a(5)=8, a(6)=15, a(7)=7`
-/

namespace A340326.P17263998153296638163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2, 5, 7, 8, 15, 7] fun n a =>
  3 * a (n - 2) - 4 * a (n - 4) + 3 * a (n - 6) - a (n - 8)

end

end A340326.P17263998153296638163

namespace A340326

/-- `3*a(n-2)-4*a(n-4)+3*a(n-6)-a(n-8)` -/
def P17263998153296638163.Spec : Prop :=
  ∀ n, P17263998153296638163.a n = A340326 n

end A340326

/-!
# A340327: a(n) is the X-coordinate of the n-th point of a variant of the quadratic Koch curve. Sequence A340328 gives Y-coordinates.

The programs for A340327, the canonical program `A340327.P11441270140592184642` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A340327 has offset 0).

The definition of A340327 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5001 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A340327.P11441270140592184642

`abs(∑[A056594(A284393(n+1))])`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A340327

/-- `abs(∑[A056594(A284393(n+1))])` -/
def P11441270140592184642.Spec : Prop :=
  ∀ n, P11441270140592184642.a n = A340327 n

theorem P11441270140592184642.correct : P11441270140592184642.Spec := by
  intro n
  simp only [A340327]

end A340327

/-! ## A340327.P4262806595918348493

`∑[A056594(A284393(n+1)+2)]`
-/

namespace A340327.P4262806595918348493
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056594 (A284393 (n + 1) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A340327.P4262806595918348493

namespace A340327

/-- `∑[A056594(A284393(n+1)+2)]` -/
def P4262806595918348493.Spec : Prop :=
  ∀ n, P4262806595918348493.a n = A340327 n

end A340327

/-! ## A340327.P10845786347638678225

`∑[A056594(A284389(2*n+1))]`
-/

namespace A340327.P10845786347638678225
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056594 (A284389 (2 * n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A340327.P10845786347638678225

namespace A340327

/-- `∑[A056594(A284389(2*n+1))]` -/
def P10845786347638678225.Spec : Prop :=
  ∀ n, P10845786347638678225.a n = A340327 n

end A340327

/-! ## A340327.P6606845301667163595

`∑[A056594(A171947(n+1)+n)]`
-/

namespace A340327.P6606845301667163595
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056594 (A171947 (n + 1) + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A340327.P6606845301667163595

namespace A340327

/-- `∑[A056594(A171947(n+1)+n)]` -/
def P6606845301667163595.Spec : Prop :=
  ∀ n, P6606845301667163595.a n = A340327 n

end A340327

/-! ## A340327.P12550441015008261192

`∑[A056594(A284392(A004277(n)))]`
-/

namespace A340327.P12550441015008261192
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056594 (A284392 (A004277 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A340327.P12550441015008261192

namespace A340327

/-- `∑[A056594(A284392(A004277(n)))]` -/
def P12550441015008261192.Spec : Prop :=
  ∀ n, P12550441015008261192.a n = A340327 n

end A340327

/-! ## A340327.P17349955423266044513

`∑[A056594(A098740(n+1)+1)]`
-/

namespace A340327.P17349955423266044513
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056594 (A098740 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A340327.P17349955423266044513

namespace A340327

/-- `∑[A056594(A098740(n+1)+1)]` -/
def P17349955423266044513.Spec : Prop :=
  ∀ n, P17349955423266044513.a n = A340327 n

end A340327

/-! ## A340327.P3599640728699843402

`∑[A056594(A017017(A098740(n+1)))]`
-/

namespace A340327.P3599640728699843402
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056594 (A017017 (A098740 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A340327.P3599640728699843402

namespace A340327

/-- `∑[A056594(A017017(A098740(n+1)))]` -/
def P3599640728699843402.Spec : Prop :=
  ∀ n, P3599640728699843402.a n = A340327 n

end A340327

/-!
# A340328: a(n) is the Y-coordinate of the n-th point of a variant of the quadratic Koch curve. Sequence A340327 gives X-coordinates.

The programs for A340328, the canonical program `A340328.P16997579508393470053` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A340328 has offset 0).

The definition of A340328 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5002 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A340328.P16980640251809381249

`∑[A009001(A284393(n+1))%A040001(n)]`
-/

namespace A340328.P16980640251809381249
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A009001 (A284393 (n + 1)).toNat) (A040001 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A340328.P16980640251809381249

namespace A340328

/-- `∑[A009001(A284393(n+1))%A040001(n)]` -/
def P16980640251809381249.Spec : Prop :=
  ∀ n, P16980640251809381249.a n = A340328 n

end A340328

/-! ## A340328.P16997579508393470053

`∑[A056594(A003156(A028310(n)))]`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A340328

/-- `∑[A056594(A003156(A028310(n)))]` -/
def P16997579508393470053.Spec : Prop :=
  ∀ n, P16997579508393470053.a n = A340328 n

theorem P16997579508393470053.correct : P16997579508393470053.Spec := by
  intro n
  simp only [A340328]

end A340328

/-! ## A340328.P17532827890546827967

`∑[A056594(A171947(n+1)+A014681(n))]`
-/

namespace A340328.P17532827890546827967
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056594 (A171947 (n + 1) + A014681 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A340328.P17532827890546827967

namespace A340328

/-- `∑[A056594(A171947(n+1)+A014681(n))]` -/
def P17532827890546827967.Spec : Prop :=
  ∀ n, P17532827890546827967.a n = A340328 n

end A340328

/-! ## A340328.P809614842078162614

`∑[A056594(A284393(n+1)+A004273(n))]`
-/

namespace A340328.P809614842078162614
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056594 (A284393 (n + 1) + A004273 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A340328.P809614842078162614

namespace A340328

/-- `∑[A056594(A284393(n+1)+A004273(n))]` -/
def P809614842078162614.Spec : Prop :=
  ∀ n, P809614842078162614.a n = A340328 n

end A340328

/-! ## A340328.P10028343500833372632

`∑[A056594(A004760(A098740(n+1)))]`
-/

namespace A340328.P10028343500833372632
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056594 (A004760 (A098740 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A340328.P10028343500833372632

namespace A340328

/-- `∑[A056594(A004760(A098740(n+1)))]` -/
def P10028343500833372632.Spec : Prop :=
  ∀ n, P10028343500833372632.a n = A340328 n

end A340328

/-!
# A340329: G.f. A(x) satisfies: A(x) = Sum_{n>=0} x^n / (1 - x^(n+1)*A(x)).

The programs for A340329, there is no canonical definition to state claims against.
-/

/-! ## A340329.P12041087430498151576

`A008620(A149936(n)+A149935(n))`
-/

namespace A340329.P12041087430498151576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 (A149936 n + A149935 n).toNat

end

end A340329.P12041087430498151576

/-! ## A340329.P1816506687256208860

`A004525(A322457(n+1)-A106707(n))`
-/

namespace A340329.P1816506687256208860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A322457 (n + 1) - A106707 n).toNat

end

end A340329.P1816506687256208860

/-! ## A340329.P4718226835061964509

`A225545(A130655(n))`
-/

namespace A340329.P4718226835061964509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225545 (A130655 n).toNat

end

end A340329.P4718226835061964509

/-!
# A340332: E.g.f.: Sum_{n>=0} x^n * exp(3*2^n*x) / n!.

The programs for A340332, there is no canonical definition to state claims against.
-/

/-! ## A340332.P8459806265171589259

`A235331((n+2)*a(n-1))` with `a(0)=1`
-/

namespace A340332.P8459806265171589259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A235331 ((n + 2 : ℤ) * a (n - 1)).toNat

end

end A340332.P8459806265171589259

/-!
# A340333: G.f. A(x) satisfies: A(x) = Sum_{n>=0} x^n/(1 - x^2*A(x)^n).

The programs for A340333, there is no canonical definition to state claims against.
-/

/-! ## A340333.P8907384974320001329

`ceil(A269225(∑[A080937(n)])/3)`
-/

namespace A340333.P8907384974320001329
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080937 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A269225 (∑ j ∈ Finset.range (n + 1), f1 j).toNat : ℚ) / 3⌉

end

end A340333.P8907384974320001329

/-! ## A340333.P8591149122262745185

`A024417(A127383(n)+A005041(n))`
-/

namespace A340333.P8591149122262745185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024417 (A127383 n + A005041 n).toNat

end

end A340333.P8591149122262745185

/-! ## A340333.P3636626098094128185

`A024417(A172471(n)+A127383(n))`
-/

namespace A340333.P3636626098094128185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024417 (A172471 n + A127383 n).toNat

end

end A340333.P3636626098094128185

/-! ## A340333.P14990339157018869835

`A008618(A034728(n+1)+A002387(n))`
-/

namespace A340333.P14990339157018869835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008618 (A034728 (n + 1) + A002387 n).toNat

end

end A340333.P14990339157018869835

/-! ## A340333.P13932289245773040134

`A024417(A127383(n)+A003963(n+1))`
-/

namespace A340333.P13932289245773040134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024417 (A127383 n + A003963 (n + 1)).toNat

end

end A340333.P13932289245773040134

/-!
# A340334: G.f. A(x) satisfies: A(x) = Sum_{n>=0} x^n*A(x)^n/(1 - x^2*A(x)^(n+1)).

The programs for A340334, there is no canonical definition to state claims against.
-/

/-! ## A340334.P7113810733614179224

`A004526(A305621(n+1)+(2^n+1)*(2^n+2)/6)`
-/

namespace A340334.P7113810733614179224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (SequenceMachineLib.roundAway ((A305621 (n + 1) : ℚ) + (2 ^ n + 1 : ℚ) * ((2 ^ n + 2 : ℚ) / 6))).toNat

end

end A340334.P7113810733614179224

/-! ## A340334.P2234236565814036702

`A004525(A013609(n)+A007581(n))`
-/

namespace A340334.P2234236565814036702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A013609 n + A007581 n).toNat

end

end A340334.P2234236565814036702

/-! ## A340334.P14335907782339966293

`A004525(A035607(n)+A007581(n))`
-/

namespace A340334.P14335907782339966293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A035607 n + A007581 n).toNat

end

end A340334.P14335907782339966293

/-! ## A340334.P9227740208484754933

`A004525(A038763(n)+A007581(n))`
-/

namespace A340334.P9227740208484754933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A038763 n + A007581 n).toNat

end

end A340334.P9227740208484754933

/-!
# A340335: E.g.f.: Sum_{n>=0} x^n * exp(2^n*x).

The programs for A340335, there is no canonical definition to state claims against.
-/

/-! ## A340335.P7223192987457688197

`A034294(n*∑[abs(1-(char[2]+n))]+1)`
-/

namespace A340335.P7223192987457688197
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (((if ∃ j, f2 j = n then 1 else 0) + n : ℕ) : ℤ)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034294 ((n : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j) + 1).toNat

end

end A340335.P7223192987457688197

/-!
# A340336: E.g.f.: Sum_{n>=0} x^n * cosh(2^n*x).

The programs for A340336, there is no canonical definition to state claims against.
-/

/-! ## A340336.P14092291575368427557

`A028310(A158876(n)-n%2)`
-/

namespace A340336.P14092291575368427557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A158876 n - ((n % 2 : ℕ) : ℤ)).toNat

end

end A340336.P14092291575368427557

/-! ## A340336.P1219668528381103803

`A024495(n)+A005117(A337458(n))`
-/

namespace A340336.P1219668528381103803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024495 n + A005117 (A337458 n).toNat

end

end A340336.P1219668528381103803

/-!
# A340337: E.g.f.: Sum_{n>=0} x^n * sinh(2^n*x).

The programs for A340337, there is no canonical definition to state claims against.
-/

/-! ## A340337.P3761392195758407635

`A340335(n+1)-A340336(n+1)`
-/

namespace A340337.P3761392195758407635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340335 (n + 1) - A340336 (n + 1)

end

end A340337.P3761392195758407635

/-!
# A340338: G.f. A(x) satisfies: A(x) = Sum_{n>=0} x^n / (1 - x^(n+1)*A(x)^(n+1)).

The programs for A340338, there is no canonical definition to state claims against.
-/

/-! ## A340338.P12694950361519656496

`round(root(A078675(n+2), 4))`
-/

namespace A340338.P12694950361519656496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A078675 (n + 2) : ℝ) ^ (1 / (4 : ℝ)))

end

end A340338.P12694950361519656496

/-! ## A340338.P11467762224044558891

`A387141(A369212(n+1))`
-/

namespace A340338.P11467762224044558891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387141 (A369212 (n + 1)).toNat

end

end A340338.P11467762224044558891

/-! ## A340338.P5804661213700401802

`A256502(∑[∑[A305256(n)]])`
-/

namespace A340338.P5804661213700401802
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305256 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256502 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A340338.P5804661213700401802

/-!
# A340339: a(n) is the least prime p such that n*p+b is prime, where b=1 if n is even or 2 if n is odd, and p > a(n-1) if n >= 2.

The programs for A340339, there is no canonical definition to state claims against.
-/

/-! ## A340339.P7607618360787736364

`(A340340(n+1)-gcd(2, n))/(n+1)`
-/

namespace A340339.P7607618360787736364
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A340340 (n + 1) - (Nat.gcd 2 n : ℤ) : ℚ) / (n + 1 : ℚ)

end

end A340339.P7607618360787736364

/-! ## A340339.P5105010573091288250

`A006530(A340340(n+1)-gcd(2, n))`
-/

namespace A340339.P5105010573091288250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A340340 (n + 1) - (Nat.gcd 2 n : ℤ)).toNat

end

end A340339.P5105010573091288250

/-! ## A340339.P14407772824552292162

`A006530(A340340(n+1)-(2-n%2))`
-/

namespace A340339.P14407772824552292162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A340340 (n + 1) - (2 - ((n % 2 : ℕ) : ℤ))).toNat

end

end A340339.P14407772824552292162

/-! ## A340339.P12068579055839299009

`A006530(A340340(n+1)-A000034(n+1))`
-/

namespace A340339.P12068579055839299009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A340340 (n + 1) - A000034 (n + 1)).toNat

end

end A340339.P12068579055839299009

/-! ## A340339.P6053253005723306256

`A006530(A340340(n+1)-A040001(n+2))`
-/

namespace A340339.P6053253005723306256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A340340 (n + 1) - A040001 (n + 2)).toNat

end

end A340339.P6053253005723306256

/-! ## A340339.P15148370048705725111

`A006530(A340340(n+1)-A134451(n+2))`
-/

namespace A340339.P15148370048705725111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A340340 (n + 1) - A134451 (n + 2)).toNat

end

end A340339.P15148370048705725111

/-!
# A340340: a(n) = n*A340339(n)+b, where b = 1 if n is even or 2 if n is odd.

The programs for A340340, there is no canonical definition to state claims against.
-/

/-! ## A340340.P3443608607564344059

`(n+1)*A340339(n+1)+A000034(n+1)`
-/

namespace A340340.P3443608607564344059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A340339 (n + 1) + A000034 (n + 1)

end

end A340340.P3443608607564344059

/-! ## A340340.P8584393858449830438

`gcd(2, n)+(n+1)*A340339(n+1)`
-/

namespace A340340.P8584393858449830438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.gcd 2 n : ℤ) + (n + 1 : ℤ) * A340339 (n + 1)

end

end A340340.P8584393858449830438

/-!
# A340341: Number of polymings with n cells, distinguishing mirror images.

The programs for A340341, there is no canonical definition to state claims against.
-/

/-! ## A340341.P9844751486622615451

`A338698(C(∑[n+1], n))`
-/

namespace A340341.P9844751486622615451
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338698 (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) n)

end

end A340341.P9844751486622615451

/-!
# A340346: The largest divisor of n that is a term of A055932 (numbers divisible by all primes smaller than their largest prime factor).

The programs for A340346, there is no canonical definition to state claims against.
-/

/-! ## A340346.P2733100525772459955

`A183091(n+1)/A183091(A111701(n+1))`
-/

namespace A340346.P2733100525772459955
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A183091 (n + 1) : ℚ) / (A183091 (A111701 (n + 1)).toNat : ℚ)

end

end A340346.P2733100525772459955

/-! ## A340346.P1998800966754093674

`lcm(A328612(n+1), A328612(n))/A328612(n)`
-/

namespace A340346.P1998800966754093674
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (A328612 (n + 1)) (A328612 n) : ℚ) / (A328612 n : ℚ)

end

end A340346.P1998800966754093674

/-! ## A340346.P8035414541781891023

`A083259(gcd(A049689(n), A083259(n+1)))`
-/

namespace A340346.P8035414541781891023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083259 (Int.gcd (A049689 n) (A083259 (n + 1)))

end

end A340346.P8035414541781891023

/-! ## A340346.P7896837629900734022

`A003557(A053589(n+1)*A083259(n+1))`
-/

namespace A340346.P7896837629900734022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003557 (A053589 (n + 1) * A083259 (n + 1)).toNat

end

end A340346.P7896837629900734022

/-! ## A340346.P11398823603208855549

`A083259(A083259(n+1)^and(5, n²))`
-/

namespace A340346.P11398823603208855549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083259 (A083259 (n + 1) ^ Nat.land 5 (n ^ 2)).toNat

end

end A340346.P11398823603208855549

/-! ## A340346.P14787694577420568399

`A328612(A328612(n+1)%p?[A004882(n+1)])`
-/

namespace A340346.P14787694577420568399
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004882 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328612 (Int.tmod (A328612 (n + 1)) (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))).toNat

end

end A340346.P14787694577420568399

/-! ## A340346.P7475961394128440364

`A328612(A010054(∑[n])*A328612(n+1))`
-/

namespace A340346.P7475961394128440364
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328612 (A010054 (∑ j ∈ Finset.range (n + 1), f1 j) * A328612 (n + 1)).toNat

end

end A340346.P7475961394128440364

/-! ## A340346.P11200920310883392139

`A328612(A328612(n+1))+A093488(A328612(2*n+1))`
-/

namespace A340346.P11200920310883392139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328612 (A328612 (n + 1)).toNat + A093488 (A328612 (2 * n + 1)).toNat

end

end A340346.P11200920310883392139

/-! ## A340346.P18016908648724809175

`gcd(A162959(n+1)²², A195989(n+1))`
-/

namespace A340346.P18016908648724809175
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((A162959 (n + 1) ^ 2) ^ 2) (A195989 (n + 1))

end

end A340346.P18016908648724809175

/-!
# A340351: Square array, read by descending antidiagonals, where row n gives all solutions k > 0 to A000120(k)=A000120(k*n), A000120 is the Hamming weight.

The programs for A340351, there is no canonical definition to state claims against.
-/

/-! ## A340351.P1666940848149940334

`A115872(n+1)-C(A115861(3*(n+1)), 4)`
-/

namespace A340351.P1666940848149940334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115872 (n + 1) - (Nat.choose (A115861 (3 * (n + 1))).toNat 4 : ℤ)

end

end A340351.P1666940848149940334

/-! ## A340351.P13434911547269725764

`A080686(A115872(n+1)%A141214(n))`
-/

namespace A340351.P13434911547269725764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080686 (Int.tmod (A115872 (n + 1)) (A141214 n)).toNat

end

end A340351.P13434911547269725764

/-! ## A340351.P16589912545410719913

`A115872(n+1)-A184945(A184946(n))`
-/

namespace A340351.P16589912545410719913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115872 (n + 1) - A184945 (A184946 n).toNat

end

end A340351.P16589912545410719913

/-! ## A340351.P7997538778661279665

`A114388(A038722(n+1))-A184945(A184946(n))`
-/

namespace A340351.P7997538778661279665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114388 (A038722 (n + 1)).toNat - A184945 (A184946 n).toNat

end

end A340351.P7997538778661279665

/-!
# A340352: 

The programs for A340352, there is no canonical definition to state claims against.
-/

/-! ## A340352.P6731367182838635161

`A007725(n+1)/4`
-/

namespace A340352.P6731367182838635161
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007725 (n + 1) : ℚ) / 4

end

end A340352.P6731367182838635161

/-!
# A340354: a(n) is the sum, for j < n coprime to n, of the least prime > n congruent to j (mod n).

The programs for A340354, there is no canonical definition to state claims against.
-/

/-! ## A340354.P4320715214366243675

`A038548(A060867(n+1))*A097246(2*(n+2))`
-/

namespace A340354.P4320715214366243675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038548 (A060867 (n + 1)).toNat * A097246 (2 * (n + 2))

end

end A340354.P4320715214366243675

/-!
# A340355: G.f. A(x) satisfies: A(x) = Sum_{n>=0} x^(2*n)*A(x)^n / (1 - x^(n+1)*A(x)^(n+2)).

The programs for A340355, there is no canonical definition to state claims against.
-/

/-! ## A340355.P865642944905094210

`A028310(n)+(n-1)*A062108(A058307(n))`
-/

namespace A340355.P865642944905094210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n + ((n : ℤ) - 1) * A062108 (A058307 n).toNat

end

end A340355.P865642944905094210

/-! ## A340355.P12130584217074032446

`A066022(n+1)+(n-1)*A062108(A058307(n))`
-/

namespace A340355.P12130584217074032446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066022 (n + 1) + ((n : ℤ) - 1) * A062108 (A058307 n).toNat

end

end A340355.P12130584217074032446

/-!
# A340356: G.f. A(x) satisfies: A(x) = Sum_{n>=0} x^n / (1 - x^(n+1)*A(x)^2).

The programs for A340356, there is no canonical definition to state claims against.
-/

/-! ## A340356.P14796267771609061498

`A050296(A333093(n)+n)`
-/

namespace A340356.P14796267771609061498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050296 (A333093 n + (n : ℤ)).toNat

end

end A340356.P14796267771609061498

/-! ## A340356.P3068446141197478642

`A050296(or(n, A333093(n)))`
-/

namespace A340356.P3068446141197478642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050296 (Int.lor (n : ℤ) (A333093 n)).toNat

end

end A340356.P3068446141197478642

/-!
# A340357: G.f. A(x) satisfies: A(x) = Sum_{n>=0} (n+1) * x^n / (1 - x^(n+1)*A(x)).

The programs for A340357, there is no canonical definition to state claims against.
-/

/-! ## A340357.P2977514074793252804

`A342292(n)+A167151(A000984(n))`
-/

namespace A340357.P2977514074793252804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342292 n + A167151 (A000984 n).toNat

end

end A340357.P2977514074793252804

/-! ## A340357.P11466672391239355808

`A167151(A000984(n))+A303923(n+2)%A171075(n+1)`
-/

namespace A340357.P11466672391239355808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167151 (A000984 n).toNat + Int.tmod (A303923 (n + 2)) (A171075 (n + 1))

end

end A340357.P11466672391239355808

/-!
# A340358: G.f. A(x) satisfies: A(x) = Sum_{n>=0} (n+1) * x^n / (1 - x^(n+1)*A(x))^3.

The programs for A340358, there is no canonical definition to state claims against.
-/

/-! ## A340358.P6675915822911096843

`A036234(record[Δ[A239903(n)]])`
-/

namespace A340358.P6675915822911096843
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239903 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036234 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A340358.P6675915822911096843

/-!
# A340360: G.f. A(x) satisfies: A(x) = Sum_{n>=0} (n+1) * x^n / (1 - x^(n+1)*A(x)^n)^3.

The programs for A340360, there is no canonical definition to state claims against.
-/

/-! ## A340360.P1535233287319047417

`xor(gcd(4, n)%4, A307109(∑[2^n]))`
-/

namespace A340360.P1535233287319047417
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor ((Nat.gcd 4 n % 4 : ℕ) : ℤ) (A307109 (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A340360.P1535233287319047417

/-! ## A340360.P5837607729984600362

`A371123(A272952(n+1))`
-/

namespace A340360.P5837607729984600362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371123 (A272952 (n + 1)).toNat

end

end A340360.P5837607729984600362

/-!
# A340361: G.f. A(x) satisfies: A(x) = (1-x) * Sum_{n>=0} x^n / (1 - x*A(x)^n).

The programs for A340361, there is no canonical definition to state claims against.
-/

/-! ## A340361.P15997958979199438240

`A304058(A309861(n))+A120588(n)`
-/

namespace A340361.P15997958979199438240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304058 (A309861 n).toNat + A120588 n

end

end A340361.P15997958979199438240

/-! ## A340361.P5226757093468546363

`A346660(n)-A331383(A309861(n))`
-/

namespace A340361.P5226757093468546363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346660 n - A331383 (A309861 n).toNat

end

end A340361.P5226757093468546363

/-! ## A340361.P3917243849120366024

`xor(A004198(A000245(n)), A120588(n))`
-/

namespace A340361.P3917243849120366024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A004198 (A000245 n).toNat) (A120588 n)

end

end A340361.P3917243849120366024

/-! ## A340361.P6564621611390442434

`A027923(A005034(n)-A011797(n)²)`
-/

namespace A340361.P6564621611390442434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027923 (A005034 n - A011797 n ^ 2).toNat

end

end A340361.P6564621611390442434

/-! ## A340361.P4813998833052409689

`A198193(A129554(n+1))+A120588(n)`
-/

namespace A340361.P4813998833052409689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198193 (A129554 (n + 1)).toNat + A120588 n

end

end A340361.P4813998833052409689

/-!
# A340362: a(n) = A005940(n) - A324106(n), where A324106(n) is multiplicative with a(p^e) = A005940(p^e).

The programs for A340362, there is no canonical definition to state claims against.
-/

/-! ## A340362.P12145255448995814526

`A005940(n+1)-A324106(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A340362.P12145255448995814526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005940 (n + 1) - A324106 (n + 1)

end

end A340362.P12145255448995814526

/-! ## A340362.P520658211380600125

`A324394(n)*A324395(n)-A324106(n+1)`
-/

namespace A340362.P520658211380600125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324394 n * A324395 n - A324106 (n + 1)

end

end A340362.P520658211380600125

/-! ## A340362.P18069257859746125733

`A324641(n+1)-(A324640(n+1)+A324106(n+1))`
-/

namespace A340362.P18069257859746125733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324641 (n + 1) - (A324640 (n + 1) + A324106 (n + 1))

end

end A340362.P18069257859746125733

/-! ## A340362.P18396904781275569126

`A005940(n+1)-A340364(n+1)*A340366(n+1)`
-/

namespace A340362.P18396904781275569126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005940 (n + 1) - A340364 (n + 1) * A340366 (n + 1)

end

end A340362.P18396904781275569126

/-! ## A340362.P10210272094862394921

`A340364(n+1)*A340365(n+1)-A324106(n+1)`
-/

namespace A340362.P10210272094862394921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340364 (n + 1) * A340365 (n + 1) - A324106 (n + 1)

end

end A340362.P10210272094862394921

/-! ## A340362.P6292132202606599151

`(A340365(n+1)-A340366(n+1))*A340364(n+1)`
-/

namespace A340362.P6292132202606599151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A340365 (n + 1) - A340366 (n + 1)) * A340364 (n + 1)

end

end A340362.P6292132202606599151

/-! ## A340362.P14573692351689657453

`A337375(n)*A337376(n)-A324106(n+1)`
-/

namespace A340362.P14573692351689657453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337375 n * A337376 n - A324106 (n + 1)

end

end A340362.P14573692351689657453

/-! ## A340362.P14603894270029255496

`A279338(A279344(n))-A324106(n+1)`
-/

namespace A340362.P14603894270029255496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279338 (A279344 n).toNat - A324106 (n + 1)

end

end A340362.P14603894270029255496

/-!
# A340363: a(n) = 1 if n is of the form of 2^i * p^j, with p an odd prime and i, j >= 0, otherwise 0.

The programs for A340363, the canonical program `A340363.P15438000431600784952` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A340363 has offset 1).

The definition of A340363 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000265, A010055, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A340363.P15438000431600784952

`A010055(A000265(n+1))`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A340363

/-- `A010055(A000265(n+1))` -/
def P15438000431600784952.Spec : Prop :=
  ∀ n, P15438000431600784952.a n = A340363 (n + 1)

theorem P15438000431600784952.correct : P15438000431600784952.Spec := by
  intro n
  simp only [A340363, Nat.add_sub_cancel]

end A340363

/-! ## A340363.P1201008039627704887

`A209229(n+1)+A340373(n+1)`
-/

namespace A340363.P1201008039627704887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209229 (n + 1) + A340373 (n + 1)

end

end A340363.P1201008039627704887

namespace A340363

/-- `A209229(n+1)+A340373(n+1)` -/
def P1201008039627704887.Spec : Prop :=
  ∀ n, P1201008039627704887.a n = A340363 (n + 1)

end A340363

/-! ## A340363.P209331604390191666

`C(2, ∑{p}[n+1, 2%#])`
-/

namespace A340363.P209331604390191666
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (∑ p ∈ Nat.primeFactors (f1 n), 2 % p)

end

end A340363.P209331604390191666

namespace A340363

/-- `C(2, ∑{p}[n+1, 2%#])` -/
def P209331604390191666.Spec : Prop :=
  ∀ n, (P209331604390191666.a n : ℤ) = A340363 (n + 1)

end A340363

/-! ## A340363.P2470717980351928890

`A081060(n+1)%2`
-/

namespace A340363.P2470717980351928890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A081060 (n + 1)) 2

end

end A340363.P2470717980351928890

namespace A340363

/-- `A081060(n+1)%2` -/
def P2470717980351928890.Spec : Prop :=
  ∀ n, P2470717980351928890.a n = A340363 (n + 1)

end A340363

/-! ## A340363.P11288353525945908604

`A318674(n+1)%2`
-/

namespace A340363.P11288353525945908604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A318674 (n + 1)) 2

end

end A340363.P11288353525945908604

namespace A340363

/-- `A318674(n+1)%2` -/
def P11288353525945908604.Spec : Prop :=
  ∀ n, P11288353525945908604.a n = A340363 (n + 1)

end A340363

/-! ## A340363.P2855379120110989785

`A344879(n+1)%2`
-/

namespace A340363.P2855379120110989785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A344879 (n + 1)) 2

end

end A340363.P2855379120110989785

namespace A340363

/-- `A344879(n+1)%2` -/
def P2855379120110989785.Spec : Prop :=
  ∀ n, P2855379120110989785.a n = A340363 (n + 1)

end A340363

/-! ## A340363.P14512235086011200380

`A345045(n+1)%2`
-/

namespace A340363.P14512235086011200380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A345045 (n + 1)) 2

end

end A340363.P14512235086011200380

namespace A340363

/-- `A345045(n+1)%2` -/
def P14512235086011200380.Spec : Prop :=
  ∀ n, P14512235086011200380.a n = A340363 (n + 1)

end A340363

/-! ## A340363.P10336835928474093855

`A345047(n+1)%2`
-/

namespace A340363.P10336835928474093855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A345047 (n + 1)) 2

end

end A340363.P10336835928474093855

namespace A340363

/-- `A345047(n+1)%2` -/
def P10336835928474093855.Spec : Prop :=
  ∀ n, P10336835928474093855.a n = A340363 (n + 1)

end A340363

/-! ## A340363.P9172613403123235103

`A389595(n+1)%2`
-/

namespace A340363.P9172613403123235103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A389595 (n + 1)) 2

end

end A340363.P9172613403123235103

namespace A340363

/-- `A389595(n+1)%2` -/
def P9172613403123235103.Spec : Prop :=
  ∀ n, P9172613403123235103.a n = A340363 (n + 1)

end A340363

/-! ## A340363.P7879981301719605948

`C(2, A381638(n+1))`
-/

namespace A340363.P7879981301719605948
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (A381638 (n + 1)).toNat

end

end A340363.P7879981301719605948

namespace A340363

/-- `C(2, A381638(n+1))` -/
def P7879981301719605948.Spec : Prop :=
  ∀ n, (P7879981301719605948.a n : ℤ) = A340363 (n + 1)

end A340363

/-! ## A340363.P6336425199203382368

`∏{d}[n+1, A340372(#)]`
-/

namespace A340363.P6336425199203382368
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n), A340372 d

end

end A340363.P6336425199203382368

namespace A340363

/-- `∏{d}[n+1, A340372(#)]` -/
def P6336425199203382368.Spec : Prop :=
  ∀ n, P6336425199203382368.a n = A340363 (n + 1)

end A340363

/-! ## A340363.P650960519216246846

`A340371(∏{p}[n+1, #])`
-/

namespace A340363.P650960519216246846
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340371 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A340363.P650960519216246846

namespace A340363

/-- `A340371(∏{p}[n+1, #])` -/
def P650960519216246846.Spec : Prop :=
  ∀ n, P650960519216246846.a n = A340363 (n + 1)

end A340363

/-! ## A340363.P8543772963191498766

`A340372(∏{p}[n+1, #])`
-/

namespace A340363.P8543772963191498766
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340372 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A340363.P8543772963191498766

namespace A340363

/-- `A340372(∏{p}[n+1, #])` -/
def P8543772963191498766.Spec : Prop :=
  ∀ n, P8543772963191498766.a n = A340363 (n + 1)

end A340363

/-! ## A340363.P814255312465035992

`A354923(∏{p}[n+1, #])`
-/

namespace A340363.P814255312465035992
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354923 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A340363.P814255312465035992

namespace A340363

/-- `A354923(∏{p}[n+1, #])` -/
def P814255312465035992.Spec : Prop :=
  ∀ n, P814255312465035992.a n = A340363 (n + 1)

end A340363

/-! ## A340363.P5767936707714438325

`A354924(∏{p}[n+1, #])`
-/

namespace A340363.P5767936707714438325
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354924 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A340363.P5767936707714438325

namespace A340363

/-- `A354924(∏{p}[n+1, #])` -/
def P5767936707714438325.Spec : Prop :=
  ∀ n, P5767936707714438325.a n = A340363 (n + 1)

end A340363

/-! ## A340363.P2982902164509182350

`A365605(∏{p}[n+1, #])`
-/

namespace A340363.P2982902164509182350
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365605 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A340363.P2982902164509182350

namespace A340363

/-- `A365605(∏{p}[n+1, #])` -/
def P2982902164509182350.Spec : Prop :=
  ∀ n, P2982902164509182350.a n = A340363 (n + 1)

end A340363

/-! ## A340363.P14806938340004455390

`A365716(∏{p}[n+1, #])`
-/

namespace A340363.P14806938340004455390
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365716 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A340363.P14806938340004455390

namespace A340363

/-- `A365716(∏{p}[n+1, #])` -/
def P14806938340004455390.Spec : Prop :=
  ∀ n, P14806938340004455390.a n = A340363 (n + 1)

end A340363

/-! ## A340363.P15879873197369861269

`floor(1/A340365(n+1))`
-/

namespace A340363.P15879873197369861269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊1 / (A340365 (n + 1) : ℚ)⌋

end

end A340363.P15879873197369861269

namespace A340363

/-- `floor(1/A340365(n+1))` -/
def P15879873197369861269.Spec : Prop :=
  ∀ n, P15879873197369861269.a n = A340363 (n + 1)

end A340363

/-! ## A340363.P7697473384269520896

`round(γ^A070536(n+1))`
-/

namespace A340363.P7697473384269520896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.eulerMascheroniConstant ^ (A070536 (n + 1) : ℤ))

end

end A340363.P7697473384269520896

namespace A340363

/-- `round(γ^A070536(n+1))` -/
def P7697473384269520896.Spec : Prop :=
  ∀ n, P7697473384269520896.a n = A340363 (n + 1)

end A340363

/-! ## A340363.P11571644936099574798

`round(γ^A318886(n+1))`
-/

namespace A340363.P11571644936099574798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.eulerMascheroniConstant ^ (A318886 (n + 1) : ℤ))

end

end A340363.P11571644936099574798

namespace A340363

/-- `round(γ^A318886(n+1))` -/
def P11571644936099574798.Spec : Prop :=
  ∀ n, P11571644936099574798.a n = A340363 (n + 1)

end A340363

/-!
# A340364: a(n) = gcd(A005940(n), A324106(n)), where A324106(n) is multiplicative with a(p^e) = A005940(p^e).

The programs for A340364, there is no canonical definition to state claims against.
-/

/-! ## A340364.P3006836536822417997

`gcd(A005940(n+1), A324106(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A340364.P3006836536822417997
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A005940 (n + 1)) (A324106 (n + 1))

end

end A340364.P3006836536822417997

/-! ## A340364.P13792225964758757670

`A005940(n+1)/A340365(n+1)`
-/

namespace A340364.P13792225964758757670
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005940 (n + 1) : ℚ) / (A340365 (n + 1) : ℚ)

end

end A340364.P13792225964758757670

/-! ## A340364.P17159663052986935662

`A324106(n+1)/A340366(n+1)`
-/

namespace A340364.P17159663052986935662
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A324106 (n + 1) : ℚ) / (A340366 (n + 1) : ℚ)

end

end A340364.P17159663052986935662

/-! ## A340364.P4824506228866920886

`A324394(n)/A340365(n+1)*A324395(n)`
-/

namespace A340364.P4824506228866920886
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A324394 n : ℚ) / (A340365 (n + 1) : ℚ) * (A324395 n : ℚ)

end

end A340364.P4824506228866920886

/-! ## A340364.P12432825184977781066

`(A340362(n+1)+A324106(n+1))/A340365(n+1)`
-/

namespace A340364.P12432825184977781066
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A340362 (n + 1) + A324106 (n + 1) : ℚ) / (A340365 (n + 1) : ℚ)

end

end A340364.P12432825184977781066

/-! ## A340364.P8256457784151204060

`(A005940(n+1)-A340362(n+1))/A340366(n+1)`
-/

namespace A340364.P8256457784151204060
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005940 (n + 1) - A340362 (n + 1) : ℚ) / (A340366 (n + 1) : ℚ)

end

end A340364.P8256457784151204060

/-! ## A340364.P9110204201125141606

`A337375(n)/A340365(n+1)*A337376(n)`
-/

namespace A340364.P9110204201125141606
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A337375 n : ℚ) / (A340365 (n + 1) : ℚ) * (A337376 n : ℚ)

end

end A340364.P9110204201125141606

/-! ## A340364.P13077483819004843056

`A279338(A279344(n))/A340365(n+1)`
-/

namespace A340364.P13077483819004843056
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A279338 (A279344 n).toNat : ℚ) / (A340365 (n + 1) : ℚ)

end

end A340364.P13077483819004843056

/-!
# A340365: a(n) = A005940(n) / gcd(A005940(n), A324106(n)), where A324106(n) is multiplicative with a(p^e) = A005940(p^e).

The programs for A340365, there is no canonical definition to state claims against.
-/

/-! ## A340365.P10220411727789901707

`A005940(n+1)/A340364(n+1)`
-/

namespace A340365.P10220411727789901707
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005940 (n + 1) : ℚ) / (A340364 (n + 1) : ℚ)

end

end A340365.P10220411727789901707

/-! ## A340365.P2521800699341149449

`A005940(n+1)/gcd(A005940(n+1), A324106(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A340365.P2521800699341149449
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005940 (n + 1) : ℚ) / (Int.gcd (A005940 (n + 1)) (A324106 (n + 1)) : ℚ)

end

end A340365.P2521800699341149449

/-! ## A340365.P17762451811558589010

`(A340362(n+1)+A324106(n+1))/A340364(n+1)`
-/

namespace A340365.P17762451811558589010
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A340362 (n + 1) + A324106 (n + 1) : ℚ) / (A340364 (n + 1) : ℚ)

end

end A340365.P17762451811558589010

/-! ## A340365.P8993746613695567454

`A340366(n+1)+A340362(n+1)/A340364(n+1)`
-/

namespace A340365.P8993746613695567454
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A340366 (n + 1) : ℚ) + (A340362 (n + 1) : ℚ) / (A340364 (n + 1) : ℚ)

end

end A340365.P8993746613695567454

/-! ## A340365.P7062333664803868532

`A005940(n+1)/A324106(n+1)*A340366(n+1)`
-/

namespace A340365.P7062333664803868532
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005940 (n + 1) : ℚ) / (A324106 (n + 1) : ℚ) * (A340366 (n + 1) : ℚ)

end

end A340365.P7062333664803868532

/-! ## A340365.P15277208063659900689

`A243353(A006068(n))/A340364(n+1)`
-/

namespace A340365.P15277208063659900689
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A243353 (A006068 n).toNat : ℚ) / (A340364 (n + 1) : ℚ)

end

end A340365.P15277208063659900689

/-! ## A340365.P14240935991857803640

`A302026(A269387(n))/A340364(n+1)`
-/

namespace A340365.P14240935991857803640
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A302026 (A269387 n).toNat : ℚ) / (A340364 (n + 1) : ℚ)

end

end A340365.P14240935991857803640

/-!
# A340366: a(n) = A324106(n) / gcd(A005940(n), A324106(n)), where A324106(n) is multiplicative with a(p^e) = A005940(p^e).

The programs for A340366, there is no canonical definition to state claims against.
-/

/-! ## A340366.P6941788181359906717

`A324106(n+1)/A340364(n+1)`
-/

namespace A340366.P6941788181359906717
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A324106 (n + 1) : ℚ) / (A340364 (n + 1) : ℚ)

end

end A340366.P6941788181359906717

/-! ## A340366.P15722720204455693538

`A324106(n+1)/gcd(A005940(n+1), A324106(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A340366.P15722720204455693538
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A324106 (n + 1) : ℚ) / (Int.gcd (A005940 (n + 1)) (A324106 (n + 1)) : ℚ)

end

end A340366.P15722720204455693538

/-! ## A340366.P3539234892967205048

`(A005940(n+1)-A340362(n+1))/A340364(n+1)`
-/

namespace A340366.P3539234892967205048
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005940 (n + 1) - A340362 (n + 1) : ℚ) / (A340364 (n + 1) : ℚ)

end

end A340366.P3539234892967205048

/-! ## A340366.P2179818769752125356

`A340365(n+1)-A340362(n+1)/A340364(n+1)`
-/

namespace A340366.P2179818769752125356
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A340365 (n + 1) : ℚ) - (A340362 (n + 1) : ℚ) / (A340364 (n + 1) : ℚ)

end

end A340366.P2179818769752125356

/-! ## A340366.P13726406688665828145

`A324106(n+1)/A005940(n+1)*A340365(n+1)`
-/

namespace A340366.P13726406688665828145
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A324106 (n + 1) : ℚ) / (A005940 (n + 1) : ℚ) * (A340365 (n + 1) : ℚ)

end

end A340366.P13726406688665828145

/-! ## A340366.P13562138587774905771

`A324106(n+1)*A340365(n+1)/(A324394(n)*A324395(n))`
-/

namespace A340366.P13562138587774905771
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A324106 (n + 1) * A340365 (n + 1) : ℚ) / (A324394 n * A324395 n : ℚ)

end

end A340366.P13562138587774905771

/-! ## A340366.P17765411021532157512

`A324106(n+1)*A340365(n+1)/(A337375(n)*A337376(n))`
-/

namespace A340366.P17765411021532157512
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A324106 (n + 1) * A340365 (n + 1) : ℚ) / (A337375 n * A337376 n : ℚ)

end

end A340366.P17765411021532157512

/-! ## A340366.P4624950619549106509

`A324106(n+1)*A340365(n+1)/A279338(A279344(n))`
-/

namespace A340366.P4624950619549106509
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A324106 (n + 1) * A340365 (n + 1) : ℚ) / (A279338 (A279344 n).toNat : ℚ)

end

end A340366.P4624950619549106509

/-!
# A340367: Dirichlet inverse of sequence b(n) = 1-A318833(n).

The programs for A340367, there is no canonical definition to state claims against.
-/

/-! ## A340367.P13769752007118648349

`A260196((n+1)*Δ[n^3])+∏{p}[n+1, 1-#]+1+n`
-/

namespace A340367.P13769752007118648349
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 3

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260196 ((n + 1 : ℤ) * ((f1 (n + 1) : ℤ) - (f1 n : ℤ))).toNat + (∏ p ∈ Nat.primeFactors (f2 n), (1 - (p : ℤ)) + 1 + (n : ℤ))

end

end A340367.P13769752007118648349

/-! ## A340367.P18107147130888143472

`A023900(2^n)*A340140(n+1)`
-/

namespace A340367.P18107147130888143472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023900 (2 ^ n) * A340140 (n + 1)

end

end A340367.P18107147130888143472

/-! ## A340367.P15493978451071844739

`∏{p}[n+1, 1-#]+1+n-A355924(A242917(n+1))`
-/

namespace A340367.P15493978451071844739
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), (1 - (p : ℤ)) + 1 + (n : ℤ) - A355924 (A242917 (n + 1)).toNat

end

end A340367.P15493978451071844739

/-! ## A340367.P14956211761824724298

`∏{p}[(n+1)^5, 1-#]+n-A319998(A180302(n+1))`
-/

namespace A340367.P14956211761824724298
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), (1 - (p : ℤ)) + (n : ℤ) - A319998 (A180302 (n + 1)).toNat

end

end A340367.P14956211761824724298

/-! ## A340367.P1054470917686763693

`(∏{p}[(n+1)^5, 1-#]+n)*A349431(A200905(n+1))`
-/

namespace A340367.P1054470917686763693
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∏ p ∈ Nat.primeFactors (f1 n), (1 - (p : ℤ)) + (n : ℤ)) * A349431 (A200905 (n + 1)).toNat

end

end A340367.P1054470917686763693

/-!
# A340368: Multiplicative with a(p^e) = (p - 1) * (p + 1)^(e-1).

The programs for A340368, the canonical program `A340368.P4585367465747076282` is in `Seq.B014.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A340368 has offset 1).

The definition of A340368 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A173557, A327564, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A340368.P4585367465747076282

`A173557(n+1)*A327564(n+1)`

The canonical program, it is in `Seq.B014.C000`.
-/

namespace A340368

/-- `A173557(n+1)*A327564(n+1)` -/
def P4585367465747076282.Spec : Prop :=
  ∀ n, P4585367465747076282.a n = A340368 (n + 1)

theorem P4585367465747076282.correct : P4585367465747076282.Spec := by
  intro n
  simp only [A340368, Nat.add_sub_cancel]

end A340368

/-! ## A340368.P4043113891182339832

`A167344(n+1)/A340323(n+1)`
-/

namespace A340368.P4043113891182339832
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A167344 (n + 1) : ℚ) / (A340323 (n + 1) : ℚ)

end

end A340368.P4043113891182339832

namespace A340368

/-- `A167344(n+1)/A340323(n+1)` -/
def P4043113891182339832.Spec : Prop :=
  ∀ n, P4043113891182339832.a n = (A340368 (n + 1) : ℚ)

end A340368

/-! ## A340368.P4974892548045884877

`A000010(n+1)/(n+1)*A003968(n+1)`
-/

namespace A340368.P4974892548045884877
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 (n + 1) : ℚ) / (n + 1 : ℚ) * (A003968 (n + 1) : ℚ)

end

end A340368.P4974892548045884877

namespace A340368

/-- `A000010(n+1)/(n+1)*A003968(n+1)` -/
def P4974892548045884877.Spec : Prop :=
  ∀ n, P4974892548045884877.a n = (A340368 (n + 1) : ℚ)

end A340368

/-! ## A340368.P8417394162563009526

`∑{d}[n+1, A003968(#)*A076479((n+1)/#)]`
-/

namespace A340368.P8417394162563009526
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A003968 d * A076479 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A340368.P8417394162563009526

namespace A340368

/-- `∑{d}[n+1, A003968(#)*A076479((n+1)/#)]` -/
def P8417394162563009526.Spec : Prop :=
  ∀ n, P8417394162563009526.a n = A340368 (n + 1)

end A340368

/-! ## A340368.P146751056934196394

`∑{d}[n+1, A003959(#)*A226177((n+1)/#)]`
-/

namespace A340368.P146751056934196394
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A003959 d * A226177 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A340368.P146751056934196394

namespace A340368

/-- `∑{d}[n+1, A003959(#)*A226177((n+1)/#)]` -/
def P146751056934196394.Spec : Prop :=
  ∀ n, P146751056934196394.a n = A340368 (n + 1)

end A340368

/-! ## A340368.P16962704519526912676

`∑{d}[n+1, A003969(#)*A326814((n+1)/#)]`
-/

namespace A340368.P16962704519526912676
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A003969 d * A326814 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A340368.P16962704519526912676

namespace A340368

/-- `∑{d}[n+1, A003969(#)*A326814((n+1)/#)]` -/
def P16962704519526912676.Spec : Prop :=
  ∀ n, P16962704519526912676.a n = A340368 (n + 1)

end A340368

/-! ## A340368.P1308995560153525488

`∑{d}[n+1, A058026(#)*A327564((n+1)/#)]`
-/

namespace A340368.P1308995560153525488
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A058026 d * A327564 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A340368.P1308995560153525488

namespace A340368

/-- `∑{d}[n+1, A058026(#)*A327564((n+1)/#)]` -/
def P1308995560153525488.Spec : Prop :=
  ∀ n, P1308995560153525488.a n = A340368 (n + 1)

end A340368

/-! ## A340368.P10222022610969028242

`A000010(A007947(n+1))*A327564(n+1)`
-/

namespace A340368.P10222022610969028242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A007947 (n + 1)).toNat * A327564 (n + 1)

end

end A340368.P10222022610969028242

namespace A340368

/-- `A000010(A007947(n+1))*A327564(n+1)` -/
def P10222022610969028242.Spec : Prop :=
  ∀ n, P10222022610969028242.a n = A340368 (n + 1)

end A340368

/-! ## A340368.P13976226821477643102

`A000010(A348036(n+1))*A348038(n+1)`
-/

namespace A340368.P13976226821477643102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A348036 (n + 1)).toNat * A348038 (n + 1)

end

end A340368.P13976226821477643102

namespace A340368

/-- `A000010(A348036(n+1))*A348038(n+1)` -/
def P13976226821477643102.Spec : Prop :=
  ∀ n, P13976226821477643102.a n = A340368 (n + 1)

end A340368

/-! ## A340368.P12967482184541960332

`(A007947(n+1)-A318305(n+1))*A327564(n+1)`
-/

namespace A340368.P12967482184541960332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A007947 (n + 1) - A318305 (n + 1)) * A327564 (n + 1)

end

end A340368.P12967482184541960332

namespace A340368

/-- `(A007947(n+1)-A318305(n+1))*A327564(n+1)` -/
def P12967482184541960332.Spec : Prop :=
  ∀ n, P12967482184541960332.a n = A340368 (n + 1)

end A340368

/-! ## A340368.P15947874159959603346

`A000010(n+1)/A001615(n+1)*A003959(n+1)`
-/

namespace A340368.P15947874159959603346
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 (n + 1) : ℚ) / (A001615 (n + 1) : ℚ) * (A003959 (n + 1) : ℚ)

end

end A340368.P15947874159959603346

namespace A340368

/-- `A000010(n+1)/A001615(n+1)*A003959(n+1)` -/
def P15947874159959603346.Spec : Prop :=
  ∀ n, P15947874159959603346.a n = (A340368 (n + 1) : ℚ)

end A340368

/-! ## A340368.P1883644955334697785

`A003968(n+1)*A023900(n+1)/A062953(n+1)`
-/

namespace A340368.P1883644955334697785
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003968 (n + 1) * A023900 (n + 1) : ℚ) / (A062953 (n + 1) : ℚ)

end

end A340368.P1883644955334697785

namespace A340368

/-- `A003968(n+1)*A023900(n+1)/A062953(n+1)` -/
def P1883644955334697785.Spec : Prop :=
  ∀ n, P1883644955334697785.a n = (A340368 (n + 1) : ℚ)

end A340368

/-! ## A340368.P4792145392877477350

`A003958(n+1)*A003959(n+1)/A340323(n+1)`
-/

namespace A340368.P4792145392877477350
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003958 (n + 1) * A003959 (n + 1) : ℚ) / (A340323 (n + 1) : ℚ)

end

end A340368.P4792145392877477350

namespace A340368

/-- `A003958(n+1)*A003959(n+1)/A340323(n+1)` -/
def P4792145392877477350.Spec : Prop :=
  ∀ n, P4792145392877477350.a n = (A340368 (n + 1) : ℚ)

end A340368

/-! ## A340368.P3912796874960608735

`A003959(n+1)*A304407(n+1)/A304411(n+1)`
-/

namespace A340368.P3912796874960608735
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003959 (n + 1) * A304407 (n + 1) : ℚ) / (A304411 (n + 1) : ℚ)

end

end A340368.P3912796874960608735

namespace A340368

/-- `A003959(n+1)*A304407(n+1)/A304411(n+1)` -/
def P3912796874960608735.Spec : Prop :=
  ∀ n, P3912796874960608735.a n = (A340368 (n + 1) : ℚ)

end A340368

/-! ## A340368.P18365184036413941921

`A003958(n+1)/A326297(n+1)*A327564(n+1)`
-/

namespace A340368.P18365184036413941921
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003958 (n + 1) : ℚ) / (A326297 (n + 1) : ℚ) * (A327564 (n + 1) : ℚ)

end

end A340368.P18365184036413941921

namespace A340368

/-- `A003958(n+1)/A326297(n+1)*A327564(n+1)` -/
def P18365184036413941921.Spec : Prop :=
  ∀ n, P18365184036413941921.a n = (A340368 (n + 1) : ℚ)

end A340368

/-! ## A340368.P4913201476844692988

`A327564(n+1)/A003958(n+1)*A351434(n+1)`
-/

namespace A340368.P4913201476844692988
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A327564 (n + 1) : ℚ) / (A003958 (n + 1) : ℚ) * (A351434 (n + 1) : ℚ)

end

end A340368.P4913201476844692988

namespace A340368

/-- `A327564(n+1)/A003958(n+1)*A351434(n+1)` -/
def P4913201476844692988.Spec : Prop :=
  ∀ n, P4913201476844692988.a n = (A340368 (n + 1) : ℚ)

end A340368

/-! ## A340368.P4790585401281990637

`A322360(n+1)/A048250(n+1)*A327564(n+1)`
-/

namespace A340368.P4790585401281990637
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A322360 (n + 1) : ℚ) / (A048250 (n + 1) : ℚ) * (A327564 (n + 1) : ℚ)

end

end A340368.P4790585401281990637

namespace A340368

/-- `A322360(n+1)/A048250(n+1)*A327564(n+1)` -/
def P4790585401281990637.Spec : Prop :=
  ∀ n, P4790585401281990637.a n = (A340368 (n + 1) : ℚ)

end A340368

/-! ## A340368.P5259280572592006230

`A003958(A064549(n+1))/A003958(n+1)*A327564(n+1)`
-/

namespace A340368.P5259280572592006230
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003958 (A064549 (n + 1)).toNat : ℚ) / (A003958 (n + 1) : ℚ) * (A327564 (n + 1) : ℚ)

end

end A340368.P5259280572592006230

namespace A340368

/-- `A003958(A064549(n+1))/A003958(n+1)*A327564(n+1)` -/
def P5259280572592006230.Spec : Prop :=
  ∀ n, P5259280572592006230.a n = (A340368 (n + 1) : ℚ)

end A340368

/-!
# A340369: a(n) = 1 if n has at most 3 prime factors when counted with multiplicity, 0 otherwise.

The programs for A340369, the canonical program `A340369.P4415344284990183047` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A340369 has offset 1).

The definition of A340369 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A340369.P10294751427025008333

`round(sqrt(acot(∑{e}[n+1, #])))`
-/

namespace A340369.P10294751427025008333
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (SequenceMachineLib.acot ((∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p : ℕ) : ℝ)))

end

end A340369.P10294751427025008333

namespace A340369

/-- `round(sqrt(acot(∑{e}[n+1, #])))` -/
def P10294751427025008333.Spec : Prop :=
  ∀ n, P10294751427025008333.a n = A340369 (n + 1)

end A340369

/-! ## A340369.P4415344284990183047

`C(3, ∑{e}[n+1, #])%2`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A340369

/-- `C(3, ∑{e}[n+1, #])%2` -/
def P4415344284990183047.Spec : Prop :=
  ∀ n, (P4415344284990183047.a n : ℤ) = A340369 (n + 1)

theorem P4415344284990183047.correct : P4415344284990183047.Spec := by
  intro n
  simp only [A340369, Nat.add_sub_cancel]

end A340369

/-! ## A340369.P8047552673992453741

`round(3/(∑{e}[n+1, #]+3))`
-/

namespace A340369.P8047552673992453741
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (3 / ((∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p + 3 : ℕ) : ℚ))

end

end A340369.P8047552673992453741

namespace A340369

/-- `round(3/(∑{e}[n+1, #]+3))` -/
def P8047552673992453741.Spec : Prop :=
  ∀ n, P8047552673992453741.a n = A340369 (n + 1)

end A340369

/-! ## A340369.P10264397566329773635

`round(∏{e}[n+1, (4/5)^#])`
-/

namespace A340369.P10264397566329773635
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (∏ p ∈ Nat.primeFactors (f1 n), ((4 : ℚ) / 5) ^ Nat.factorization (f1 n) p)

end

end A340369.P10264397566329773635

namespace A340369

/-- `round(∏{e}[n+1, (4/5)^#])` -/
def P10264397566329773635.Spec : Prop :=
  ∀ n, P10264397566329773635.a n = A340369 (n + 1)

end A340369

/-! ## A340369.P16703973926072482650

`A329678(∑{e}[n+1, #])`
-/

namespace A340369.P16703973926072482650
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329678 (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p)

end

end A340369.P16703973926072482650

namespace A340369

/-- `A329678(∑{e}[n+1, #])` -/
def P16703973926072482650.Spec : Prop :=
  ∀ n, P16703973926072482650.a n = A340369 (n + 1)

end A340369

/-! ## A340369.P2233358498045332100

`floor(1/A320267(n+1))`
-/

namespace A340369.P2233358498045332100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊1 / (A320267 (n + 1) : ℚ)⌋

end

end A340369.P2233358498045332100

namespace A340369

/-- `floor(1/A320267(n+1))` -/
def P2233358498045332100.Spec : Prop :=
  ∀ n, P2233358498045332100.a n = A340369 (n + 1)

end A340369

/-! ## A340369.P16079667313409988993

`char[lt[A001222(n+1), 4]]`
-/

namespace A340369.P16079667313409988993
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A340369.P16079667313409988993

namespace A340369

/-- `char[lt[A001222(n+1), 4]]` -/
def P16079667313409988993.Spec : Prop :=
  ∀ n, (P16079667313409988993.a n : ℤ) = A340369 (n + 1)

end A340369

/-! ## A340369.P15555073902527350336

`C(2, A117358(n+1)+1)`
-/

namespace A340369.P15555073902527350336
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (A117358 (n + 1) + 1).toNat

end

end A340369.P15555073902527350336

namespace A340369

/-- `C(2, A117358(n+1)+1)` -/
def P15555073902527350336.Spec : Prop :=
  ∀ n, (P15555073902527350336.a n : ℤ) = A340369 (n + 1)

end A340369

/-! ## A340369.P3384003001928521667

`C(2, A101638(n+1)+2)`
-/

namespace A340369.P3384003001928521667
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (A101638 (n + 1) + 2).toNat

end

end A340369.P3384003001928521667

namespace A340369

/-- `C(2, A101638(n+1)+2)` -/
def P3384003001928521667.Spec : Prop :=
  ∀ n, (P3384003001928521667.a n : ℤ) = A340369 (n + 1)

end A340369

/-! ## A340369.P5535316561435942383

`C(2, A167688(n+1)+2)`
-/

namespace A340369.P5535316561435942383
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (A167688 (n + 1) + 2).toNat

end

end A340369.P5535316561435942383

namespace A340369

/-- `C(2, A167688(n+1)+2)` -/
def P5535316561435942383.Spec : Prop :=
  ∀ n, (P5535316561435942383.a n : ℤ) = A340369 (n + 1)

end A340369

/-! ## A340369.P4042320239398394387

`C(2, 2*A050370(n+1))`
-/

namespace A340369.P4042320239398394387
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (2 * A050370 (n + 1)).toNat

end

end A340369.P4042320239398394387

namespace A340369

/-- `C(2, 2*A050370(n+1))` -/
def P4042320239398394387.Spec : Prop :=
  ∀ n, (P4042320239398394387.a n : ℤ) = A340369 (n + 1)

end A340369

/-! ## A340369.P11268332551358889318

`A328672(C(3, ∑{e}[n+1, #]))`
-/

namespace A340369.P11268332551358889318
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328672 (Nat.choose 3 (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p))

end

end A340369.P11268332551358889318

namespace A340369

/-- `A328672(C(3, ∑{e}[n+1, #]))` -/
def P11268332551358889318.Spec : Prop :=
  ∀ n, P11268332551358889318.a n = A340369 (n + 1)

end A340369

/-! ## A340369.P6655130925538738332

`round(3/A001222(8*(n+1)))`
-/

namespace A340369.P6655130925538738332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (3 / (A001222 (8 * (n + 1)) : ℚ))

end

end A340369.P6655130925538738332

namespace A340369

/-- `round(3/A001222(8*(n+1)))` -/
def P6655130925538738332.Spec : Prop :=
  ∀ n, P6655130925538738332.a n = A340369 (n + 1)

end A340369

/-! ## A340369.P6448520268686506015

`A014196(A061142(n+1))`
-/

namespace A340369.P6448520268686506015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014196 (A061142 (n + 1)).toNat

end

end A340369.P6448520268686506015

namespace A340369

/-- `A014196(A061142(n+1))` -/
def P6448520268686506015.Spec : Prop :=
  ∀ n, P6448520268686506015.a n = A340369 (n + 1)

end A340369

/-! ## A340369.P11111599905056152492

`A014416(A001222(n+1)²)`
-/

namespace A340369.P11111599905056152492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014416 (A001222 (n + 1) ^ 2).toNat

end

end A340369.P11111599905056152492

namespace A340369

/-- `A014416(A001222(n+1)²)` -/
def P11111599905056152492.Spec : Prop :=
  ∀ n, P11111599905056152492.a n = A340369 (n + 1)

end A340369

/-! ## A340369.P15054780091790419320

`A014592(A001222(n+1)²)`
-/

namespace A340369.P15054780091790419320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014592 (A001222 (n + 1) ^ 2).toNat

end

end A340369.P15054780091790419320

namespace A340369

/-- `A014592(A001222(n+1)²)` -/
def P15054780091790419320.Spec : Prop :=
  ∀ n, P15054780091790419320.a n = A340369 (n + 1)

end A340369

/-! ## A340369.P16894959083337257715

`A014746(A001222(n+1)²)`
-/

namespace A340369.P16894959083337257715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014746 (A001222 (n + 1) ^ 2).toNat

end

end A340369.P16894959083337257715

namespace A340369

/-- `A014746(A001222(n+1)²)` -/
def P16894959083337257715.Spec : Prop :=
  ∀ n, P16894959083337257715.a n = A340369 (n + 1)

end A340369

/-! ## A340369.P3559828008178898031

`A202022(A001222(n+1)²)`
-/

namespace A340369.P3559828008178898031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202022 (A001222 (n + 1) ^ 2).toNat

end

end A340369.P3559828008178898031

namespace A340369

/-- `A202022(A001222(n+1)²)` -/
def P3559828008178898031.Spec : Prop :=
  ∀ n, P3559828008178898031.a n = A340369 (n + 1)

end A340369

/-! ## A340369.P5709856122469406032

`A063524(A321379(n+1)+1)`
-/

namespace A340369.P5709856122469406032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063524 (A321379 (n + 1) + 1).toNat

end

end A340369.P5709856122469406032

namespace A340369

/-- `A063524(A321379(n+1)+1)` -/
def P5709856122469406032.Spec : Prop :=
  ∀ n, P5709856122469406032.a n = A340369 (n + 1)

end A340369

/-! ## A340369.P3056107784785953644

`char[lt[∑{e}[n+1, #], 4]]`
-/

namespace A340369.P3056107784785953644
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n), Nat.factorization (f3 n) p

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < f4 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A340369.P3056107784785953644

namespace A340369

/-- `char[lt[∑{e}[n+1, #], 4]]` -/
def P3056107784785953644.Spec : Prop :=
  ∀ n, (P3056107784785953644.a n : ℤ) = A340369 (n + 1)

end A340369

/-!
# A340370: a(n) = 1 if the odd part of n is a squarefree semiprime, 0 otherwise.

The programs for A340370, the canonical program `A340370.P9593283342518409431` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A340370 has offset 1).

The definition of A340370 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000265, A280710, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A340370.P9593283342518409431

`A280710(A000265(n+1))`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A340370

/-- `A280710(A000265(n+1))` -/
def P9593283342518409431.Spec : Prop :=
  ∀ n, P9593283342518409431.a n = A340370 (n + 1)

theorem P9593283342518409431.correct : P9593283342518409431.Spec := by
  intro n
  simp only [A340370, Nat.add_sub_cancel]

end A340370

/-! ## A340370.P5042271781331143589

`char[A340380(n+1)-1]`
-/

namespace A340370.P5042271781331143589
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340380 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A340370.P5042271781331143589

namespace A340370

/-- `char[A340380(n+1)-1]` -/
def P5042271781331143589.Spec : Prop :=
  ∀ n, (P5042271781331143589.a n : ℤ) = A340370 (n + 1)

end A340370

/-! ## A340370.P5703540570043573905

`char[eq[4, A318450(n+1)]]`
-/

namespace A340370.P5703540570043573905
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318450 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A340370.P5703540570043573905

namespace A340370

/-- `char[eq[4, A318450(n+1)]]` -/
def P5703540570043573905.Spec : Prop :=
  ∀ n, (P5703540570043573905.a n : ℤ) = A340370 (n + 1)

end A340370

/-! ## A340370.P9354292377995335796

`val(A286142((n+1)/2^val(n+1, 2)), 8)`
-/

namespace A340370.P9354292377995335796
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A286142 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ))).toNat).toNat 8

end

end A340370.P9354292377995335796

namespace A340370

/-- `val(A286142((n+1)/2^val(n+1, 2)), 8)` -/
def P9354292377995335796.Spec : Prop :=
  ∀ n, (P9354292377995335796.a n : ℤ) = A340370 (n + 1)

end A340370

/-! ## A340370.P10637379637545549091

`A003982(A318450(n+1))`
-/

namespace A340370.P10637379637545549091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 (A318450 (n + 1)).toNat

end

end A340370.P10637379637545549091

namespace A340370

/-- `A003982(A318450(n+1))` -/
def P10637379637545549091.Spec : Prop :=
  ∀ n, P10637379637545549091.a n = A340370 (n + 1)

end A340370

/-! ## A340370.P1022642757701063965

`A280710(A064989(n+1))`
-/

namespace A340370.P1022642757701063965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280710 (A064989 (n + 1)).toNat

end

end A340370.P1022642757701063965

namespace A340370

/-- `A280710(A064989(n+1))` -/
def P1022642757701063965.Spec : Prop :=
  ∀ n, P1022642757701063965.a n = A340370 (n + 1)

end A340370

/-! ## A340370.P6880219310381028430

`A302049(A336158(n+1))`
-/

namespace A340370.P6880219310381028430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302049 (A336158 (n + 1)).toNat

end

end A340370.P6880219310381028430

namespace A340370

/-- `A302049(A336158(n+1))` -/
def P6880219310381028430.Spec : Prop :=
  ∀ n, P6880219310381028430.a n = A340370 (n + 1)

end A340370

/-! ## A340370.P13957664067017914224

`A316341(A318450(n+1)+2)`
-/

namespace A340370.P13957664067017914224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316341 (A318450 (n + 1) + 2).toNat

end

end A340370.P13957664067017914224

namespace A340370

/-- `A316341(A318450(n+1)+2)` -/
def P13957664067017914224.Spec : Prop :=
  ∀ n, P13957664067017914224.a n = A340370 (n + 1)

end A340370

/-! ## A340370.P5783903094779935823

`A353481(A000265(2*(n+1)))`
-/

namespace A340370.P5783903094779935823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353481 (A000265 (2 * (n + 1))).toNat

end

end A340370.P5783903094779935823

namespace A340370

/-- `A353481(A000265(2*(n+1)))` -/
def P5783903094779935823.Spec : Prop :=
  ∀ n, P5783903094779935823.a n = A340370 (n + 1)

end A340370

/-! ## A340370.P9120623955103728558

`A255849(2*A336158(n+1))`
-/

namespace A340370.P9120623955103728558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255849 (2 * A336158 (n + 1)).toNat

end

end A340370.P9120623955103728558

namespace A340370

/-- `A255849(2*A336158(n+1))` -/
def P9120623955103728558.Spec : Prop :=
  ∀ n, P9120623955103728558.a n = A340370 (n + 1)

end A340370

/-! ## A340370.P16722064627372353647

`A209229(xor(2, A336158(n+1)))`
-/

namespace A340370.P16722064627372353647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209229 (Int.xor 2 (A336158 (n + 1))).toNat

end

end A340370.P16722064627372353647

namespace A340370

/-- `A209229(xor(2, A336158(n+1)))` -/
def P16722064627372353647.Spec : Prop :=
  ∀ n, P16722064627372353647.a n = A340370 (n + 1)

end A340370

/-! ## A340370.P15781629929778902329

`A255849(A336158(n+1)+64)`
-/

namespace A340370.P15781629929778902329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255849 (A336158 (n + 1) + 64).toNat

end

end A340370.P15781629929778902329

namespace A340370

/-- `A255849(A336158(n+1)+64)` -/
def P15781629929778902329.Spec : Prop :=
  ∀ n, P15781629929778902329.a n = A340370 (n + 1)

end A340370

/-! ## A340370.P6040203115311250671

`A036987(2*(A336158(n+1)+7)+5)`
-/

namespace A340370.P6040203115311250671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036987 (2 * (A336158 (n + 1) + 7) + 5).toNat

end

end A340370.P6040203115311250671

namespace A340370

/-- `A036987(2*(A336158(n+1)+7)+5)` -/
def P6040203115311250671.Spec : Prop :=
  ∀ n, P6040203115311250671.a n = A340370 (n + 1)

end A340370

/-! ## A340370.P15656695245384970492

`∑{e}[A336158(n+1)+2, A244963(#+1)]`
-/

namespace A340370.P15656695245384970492
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336158 (n + 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A244963 (Nat.factorization (f1 n).natAbs p + 1)

end

end A340370.P15656695245384970492

namespace A340370

/-- `∑{e}[A336158(n+1)+2, A244963(#+1)]` -/
def P15656695245384970492.Spec : Prop :=
  ∀ n, P15656695245384970492.a n = A340370 (n + 1)

end A340370

/-! ## A340370.P2615125584787802820

`A115361(A318450(n+1)+2)`
-/

namespace A340370.P2615125584787802820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115361 (A318450 (n + 1) + 2).toNat

end

end A340370.P2615125584787802820

namespace A340370

/-- `A115361(A318450(n+1)+2)` -/
def P2615125584787802820.Spec : Prop :=
  ∀ n, P2615125584787802820.a n = A340370 (n + 1)

end A340370

/-! ## A340370.P11456560429803628180

`∏{e}[A329004(A318450(n+1)+1), A115955(#)]`
-/

namespace A340370.P11456560429803628180
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329004 (A318450 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A115955 (Nat.factorization (f1 n).natAbs p)

end

end A340370.P11456560429803628180

namespace A340370

/-- `∏{e}[A329004(A318450(n+1)+1), A115955(#)]` -/
def P11456560429803628180.Spec : Prop :=
  ∀ n, P11456560429803628180.a n = A340370 (n + 1)

end A340370

/-! ## A340370.P2881605782134459909

`and(A175257(n+1), A333783(n+1))`
-/

namespace A340370.P2881605782134459909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A175257 (n + 1)) (A333783 (n + 1))

end

end A340370.P2881605782134459909

namespace A340370

/-- `and(A175257(n+1), A333783(n+1))` -/
def P2881605782134459909.Spec : Prop :=
  ∀ n, P2881605782134459909.a n = A340370 (n + 1)

end A340370

/-! ## A340370.P9656079978199162114

`and(A072826(n+1), A333783(n+1))`
-/

namespace A340370.P9656079978199162114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A072826 (n + 1)) (A333783 (n + 1))

end

end A340370.P9656079978199162114

namespace A340370

/-- `and(A072826(n+1), A333783(n+1))` -/
def P9656079978199162114.Spec : Prop :=
  ∀ n, P9656079978199162114.a n = A340370 (n + 1)

end A340370

/-!
# A340371: a(n) = 1 if the odd part of n is noncomposite, 0 otherwise.

The programs for A340371, the canonical program `A340371.P1048024966072458263` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A340371 has offset 1).

The definition of A340371 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000265, A080339, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A340371.P1048024966072458263

`A080339(A000265(n+1))`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A340371

/-- `A080339(A000265(n+1))` -/
def P1048024966072458263.Spec : Prop :=
  ∀ n, P1048024966072458263.a n = A340371 (n + 1)

theorem P1048024966072458263.correct : P1048024966072458263.Spec := by
  intro n
  simp only [A340371, Nat.add_sub_cancel]

end A340371

/-! ## A340371.P13143993299281697373

`round(1/∑{d}[n+1, #%2])`
-/

namespace A340371.P13143993299281697373
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (1 / ((∑ d ∈ Nat.divisors (f1 n), d % 2 : ℕ) : ℚ))

end

end A340371.P13143993299281697373

namespace A340371

/-- `round(1/∑{d}[n+1, #%2])` -/
def P13143993299281697373.Spec : Prop :=
  ∀ n, P13143993299281697373.a n = A340371 (n + 1)

end A340371

/-! ## A340371.P3284411820708653825

`and(1, A289310(n+1))`
-/

namespace A340371.P3284411820708653825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A289310 (n + 1))

end

end A340371.P3284411820708653825

namespace A340371

/-- `and(1, A289310(n+1))` -/
def P3284411820708653825.Spec : Prop :=
  ∀ n, P3284411820708653825.a n = A340371 (n + 1)

end A340371

/-! ## A340371.P2059573875442238786

`abs(A304438(2*(n+1)))`
-/

namespace A340371.P2059573875442238786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A304438 (2 * (n + 1))|

end

end A340371.P2059573875442238786

namespace A340371

/-- `abs(A304438(2*(n+1)))` -/
def P2059573875442238786.Spec : Prop :=
  ∀ n, P2059573875442238786.a n = A340371 (n + 1)

end A340371

/-! ## A340371.P17330155555328148505

`A304438(2*n+2)²`
-/

namespace A340371.P17330155555328148505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304438 (2 * n + 2) ^ 2

end

end A340371.P17330155555328148505

namespace A340371

/-- `A304438(2*n+2)²` -/
def P17330155555328148505.Spec : Prop :=
  ∀ n, P17330155555328148505.a n = A340371 (n + 1)

end A340371

/-! ## A340371.P14526547350067178225

`A278525(n+1)²%3`
-/

namespace A340371.P14526547350067178225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A278525 (n + 1) ^ 2) 3

end

end A340371.P14526547350067178225

namespace A340371

/-- `A278525(n+1)²%3` -/
def P14526547350067178225.Spec : Prop :=
  ∀ n, P14526547350067178225.a n = A340371 (n + 1)

end A340371

/-! ## A340371.P1307040975950413327

`floor(1/A325133(n+1))`
-/

namespace A340371.P1307040975950413327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊1 / (A325133 (n + 1) : ℚ)⌋

end

end A340371.P1307040975950413327

namespace A340371

/-- `floor(1/A325133(n+1))` -/
def P1307040975950413327.Spec : Prop :=
  ∀ n, P1307040975950413327.a n = A340371 (n + 1)

end A340371

/-! ## A340371.P13514428215140854655

`floor(1/A325355(n+1))`
-/

namespace A340371.P13514428215140854655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊1 / (A325355 (n + 1) : ℚ)⌋

end

end A340371.P13514428215140854655

namespace A340371

/-- `floor(1/A325355(n+1))` -/
def P13514428215140854655.Spec : Prop :=
  ∀ n, P13514428215140854655.a n = A340371 (n + 1)

end A340371

/-! ## A340371.P4696117209348462274

`round(1/A001227(n+1))`
-/

namespace A340371.P4696117209348462274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (1 / (A001227 (n + 1) : ℚ))

end

end A340371.P4696117209348462274

namespace A340371

/-- `round(1/A001227(n+1))` -/
def P4696117209348462274.Spec : Prop :=
  ∀ n, P4696117209348462274.a n = A340371 (n + 1)

end A340371

/-! ## A340371.P15244047563211565104

`round(1/A335283(n+1))`
-/

namespace A340371.P15244047563211565104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (1 / (A335283 (n + 1) : ℚ))

end

end A340371.P15244047563211565104

namespace A340371

/-- `round(1/A335283(n+1))` -/
def P15244047563211565104.Spec : Prop :=
  ∀ n, P15244047563211565104.a n = A340371 (n + 1)

end A340371

/-! ## A340371.P12683605230314775830

`(A304438(n+1)^n)²`
-/

namespace A340371.P12683605230314775830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A304438 (n + 1) ^ n) ^ 2

end

end A340371.P12683605230314775830

namespace A340371

/-- `(A304438(n+1)^n)²` -/
def P12683605230314775830.Spec : Prop :=
  ∀ n, P12683605230314775830.a n = A340371 (n + 1)

end A340371

/-! ## A340371.P40365180769916695

`C(2, A275367(n+1)-1)`
-/

namespace A340371.P40365180769916695
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (A275367 (n + 1) - 1).toNat

end

end A340371.P40365180769916695

namespace A340371

/-- `C(2, A275367(n+1)-1)` -/
def P40365180769916695.Spec : Prop :=
  ∀ n, (P40365180769916695.a n : ℤ) = A340371 (n + 1)

end A340371

/-! ## A340371.P15637561371424170397

`C(2, 2*A087436(n+1))`
-/

namespace A340371.P15637561371424170397
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (2 * A087436 (n + 1)).toNat

end

end A340371.P15637561371424170397

namespace A340371

/-- `C(2, 2*A087436(n+1))` -/
def P15637561371424170397.Spec : Prop :=
  ∀ n, (P15637561371424170397.a n : ℤ) = A340371 (n + 1)

end A340371

/-! ## A340371.P8507853456171442563

`C(2, 2*A318451(n+1))`
-/

namespace A340371.P8507853456171442563
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (2 * A318451 (n + 1)).toNat

end

end A340371.P8507853456171442563

namespace A340371

/-- `C(2, 2*A318451(n+1))` -/
def P8507853456171442563.Spec : Prop :=
  ∀ n, (P8507853456171442563.a n : ℤ) = A340371 (n + 1)

end A340371

/-! ## A340371.P5932877553856189497

`C(A325351(n+1), n+1)`
-/

namespace A340371.P5932877553856189497
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A325351 (n + 1)).toNat (n + 1)

end

end A340371.P5932877553856189497

namespace A340371

/-- `C(A325351(n+1), n+1)` -/
def P5932877553856189497.Spec : Prop :=
  ∀ n, (P5932877553856189497.a n : ℤ) = A340371 (n + 1)

end A340371

/-! ## A340371.P3256104501426580604

`C(n+1, A378548(n+1))`
-/

namespace A340371.P3256104501426580604
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 1) (A378548 (n + 1)).toNat

end

end A340371.P3256104501426580604

namespace A340371

/-- `C(n+1, A378548(n+1))` -/
def P3256104501426580604.Spec : Prop :=
  ∀ n, (P3256104501426580604.a n : ℤ) = A340371 (n + 1)

end A340371

/-! ## A340371.P15925530121818107171

`floor(sqrt(2/A336158(n+1)))`
-/

namespace A340371.P15925530121818107171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sqrt (2 / (A336158 (n + 1) : ℚ) : ℝ)⌋

end

end A340371.P15925530121818107171

namespace A340371

/-- `floor(sqrt(2/A336158(n+1)))` -/
def P15925530121818107171.Spec : Prop :=
  ∀ n, P15925530121818107171.a n = A340371 (n + 1)

end A340371

/-! ## A340371.P13667370975361404835

`round((1/A378222(n+1))²)`
-/

namespace A340371.P13667370975361404835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((1 / (A378222 (n + 1) : ℚ)) ^ 2)

end

end A340371.P13667370975361404835

namespace A340371

/-- `round((1/A378222(n+1))²)` -/
def P13667370975361404835.Spec : Prop :=
  ∀ n, P13667370975361404835.a n = A340371 (n + 1)

end A340371

/-! ## A340371.P15877869395313888350

`round(sqrt(1/A286364(n+1)))`
-/

namespace A340371.P15877869395313888350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (1 / (A286364 (n + 1) : ℚ) : ℝ))

end

end A340371.P15877869395313888350

namespace A340371

/-- `round(sqrt(1/A286364(n+1)))` -/
def P15877869395313888350.Spec : Prop :=
  ∀ n, P15877869395313888350.a n = A340371 (n + 1)

end A340371

/-! ## A340371.P11243829091274837223

`∏{p}[A108738(n+1), C(2, #)]`
-/

namespace A340371.P11243829091274837223
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108738 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.choose 2 p

end

end A340371.P11243829091274837223

namespace A340371

/-- `∏{p}[A108738(n+1), C(2, #)]` -/
def P11243829091274837223.Spec : Prop :=
  ∀ n, (P11243829091274837223.a n : ℤ) = A340371 (n + 1)

end A340371

/-!
# A340372: a(n) = 1 if n has no more than one odd prime factor to an odd power in its prime factorization, 0 otherwise.

The programs for A340372, the canonical program `A340372.P5948154074390075712` is in `Seq.B006.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A340372 has offset 1).

The definition of A340372 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A340372.P1197275197283181087

`A327670(n+1)%2`
-/

namespace A340372.P1197275197283181087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A327670 (n + 1)) 2

end

end A340372.P1197275197283181087

namespace A340372

/-- `A327670(n+1)%2` -/
def P1197275197283181087.Spec : Prop :=
  ∀ n, P1197275197283181087.a n = A340372 (n + 1)

end A340372

/-! ## A340372.P16585023453206210331

`A353784(n+1)%2`
-/

namespace A340372.P16585023453206210331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A353784 (n + 1)) 2

end

end A340372.P16585023453206210331

namespace A340372

/-- `A353784(n+1)%2` -/
def P16585023453206210331.Spec : Prop :=
  ∀ n, P16585023453206210331.a n = A340372 (n + 1)

end A340372

/-! ## A340372.P5606609472157924530

`char[A285801(n+1)-1]`
-/

namespace A340372.P5606609472157924530
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285801 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A340372.P5606609472157924530

namespace A340372

/-- `char[A285801(n+1)-1]` -/
def P5606609472157924530.Spec : Prop :=
  ∀ n, (P5606609472157924530.a n : ℤ) = A340372 (n + 1)

end A340372

/-! ## A340372.P13887813763162015997

`A340363(A364900(n))`
-/

namespace A340372.P13887813763162015997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340363 (A364900 n).toNat

end

end A340372.P13887813763162015997

namespace A340372

/-- `A340363(A364900(n))` -/
def P13887813763162015997.Spec : Prop :=
  ∀ n, P13887813763162015997.a n = A340372 (n + 1)

end A340372

/-! ## A340372.P4623231430564756369

`A354924(A007913(n+1))`
-/

namespace A340372.P4623231430564756369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354924 (A007913 (n + 1)).toNat

end

end A340372.P4623231430564756369

namespace A340372

/-- `A354924(A007913(n+1))` -/
def P4623231430564756369.Spec : Prop :=
  ∀ n, P4623231430564756369.a n = A340372 (n + 1)

end A340372

/-! ## A340372.P11993761341893223436

`A340363(A071975(n+1))`
-/

namespace A340372.P11993761341893223436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340363 (A071975 (n + 1)).toNat

end

end A340372.P11993761341893223436

namespace A340372

/-- `A340363(A071975(n+1))` -/
def P11993761341893223436.Spec : Prop :=
  ∀ n, P11993761341893223436.a n = A340372 (n + 1)

end A340372

/-! ## A340372.P5195687155049180836

`and(1, A353784(A000027(n+1)))`
-/

namespace A340372.P5195687155049180836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A353784 (A000027 (n + 1)).toNat)

end

end A340372.P5195687155049180836

namespace A340372

/-- `and(1, A353784(A000027(n+1)))` -/
def P5195687155049180836.Spec : Prop :=
  ∀ n, P5195687155049180836.a n = A340372 (n + 1)

end A340372

/-! ## A340372.P3039885994791815002

`and(1, A327670(A066990(n+1)))`
-/

namespace A340372.P3039885994791815002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A327670 (A066990 (n + 1)).toNat)

end

end A340372.P3039885994791815002

namespace A340372

/-- `and(1, A327670(A066990(n+1)))` -/
def P3039885994791815002.Spec : Prop :=
  ∀ n, P3039885994791815002.a n = A340372 (n + 1)

end A340372

/-! ## A340372.P4174862150704047905

`A358769(2*(n+1))+A358769(n+1)`
-/

namespace A340372.P4174862150704047905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358769 (2 * (n + 1)) + A358769 (n + 1)

end

end A340372.P4174862150704047905

namespace A340372

/-- `A358769(2*(n+1))+A358769(n+1)` -/
def P4174862150704047905.Spec : Prop :=
  ∀ n, P4174862150704047905.a n = A340372 (n + 1)

end A340372

/-! ## A340372.P13312602265184467493

`and(A000120(2^val(n+1, 2)), A353784(n+1))`
-/

namespace A340372.P13312602265184467493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000120 (2 ^ SequenceMachineLib.valuation (n + 1) 2)) (A353784 (n + 1))

end

end A340372.P13312602265184467493

namespace A340372

/-- `and(A000120(2^val(n+1, 2)), A353784(n+1))` -/
def P13312602265184467493.Spec : Prop :=
  ∀ n, P13312602265184467493.a n = A340372 (n + 1)

end A340372

/-! ## A340372.P6130668468472956445

`and(A353784(n+1), A353784(2^val(n+1, 2)))`
-/

namespace A340372.P6130668468472956445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A353784 (n + 1)) (A353784 (2 ^ SequenceMachineLib.valuation (n + 1) 2))

end

end A340372.P6130668468472956445

namespace A340372

/-- `and(A353784(n+1), A353784(2^val(n+1, 2)))` -/
def P6130668468472956445.Spec : Prop :=
  ∀ n, P6130668468472956445.a n = A340372 (n + 1)

end A340372

/-! ## A340372.P5948154074390075712

`∑{d}[n+1, A053866(#)*A080545((n+1)/#)]`

The canonical program, it is in `Seq.B006.C002`.
-/

namespace A340372

/-- `∑{d}[n+1, A053866(#)*A080545((n+1)/#)]` -/
def P5948154074390075712.Spec : Prop :=
  ∀ n, P5948154074390075712.a n = A340372 (n + 1)

theorem P5948154074390075712.correct : P5948154074390075712.Spec := by
  intro n
  simp only [A340372, Nat.add_sub_cancel]

end A340372

/-! ## A340372.P4590344892735364010

`∑{d}[n+1, A099812(#)*A166698((n+1)/#)]`
-/

namespace A340372.P4590344892735364010
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A099812 d * A166698 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A340372.P4590344892735364010

namespace A340372

/-- `∑{d}[n+1, A099812(#)*A166698((n+1)/#)]` -/
def P4590344892735364010.Spec : Prop :=
  ∀ n, P4590344892735364010.a n = A340372 (n + 1)

end A340372

/-! ## A340372.P15412776085207896112

`A114643(A060594(A007913(n+1))²)`
-/

namespace A340372.P15412776085207896112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114643 (A060594 (A007913 (n + 1)).toNat ^ 2).toNat

end

end A340372.P15412776085207896112

namespace A340372

/-- `A114643(A060594(A007913(n+1))²)` -/
def P15412776085207896112.Spec : Prop :=
  ∀ n, P15412776085207896112.a n = A340372 (n + 1)

end A340372

/-! ## A340372.P14906763398620755357

`A114643(A114811(A007913(n+1))²)`
-/

namespace A340372.P14906763398620755357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114643 (A114811 (A007913 (n + 1)).toNat ^ 2).toNat

end

end A340372.P14906763398620755357

namespace A340372

/-- `A114643(A114811(A007913(n+1))²)` -/
def P14906763398620755357.Spec : Prop :=
  ∀ n, P14906763398620755357.a n = A340372 (n + 1)

end A340372

/-! ## A340372.P7119554488041244027

`A114811(A114811(A007913(n+1))²)`
-/

namespace A340372.P7119554488041244027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114811 (A114811 (A007913 (n + 1)).toNat ^ 2).toNat

end

end A340372.P7119554488041244027

namespace A340372

/-- `A114811(A114811(A007913(n+1))²)` -/
def P7119554488041244027.Spec : Prop :=
  ∀ n, P7119554488041244027.a n = A340372 (n + 1)

end A340372

/-! ## A340372.P7498158477622263539

`A029906(∏{p}[A007913(n+1), A000034(#)])`
-/

namespace A340372.P7498158477622263539
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029906 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, A000034 p).toNat

end

end A340372.P7498158477622263539

namespace A340372

/-- `A029906(∏{p}[A007913(n+1), A000034(#)])` -/
def P7498158477622263539.Spec : Prop :=
  ∀ n, P7498158477622263539.a n = A340372 (n + 1)

end A340372

/-! ## A340372.P16273222730260087202

`A135528(A327670(n+1)+1)`
-/

namespace A340372.P16273222730260087202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135528 (A327670 (n + 1) + 1).toNat

end

end A340372.P16273222730260087202

namespace A340372

/-- `A135528(A327670(n+1)+1)` -/
def P16273222730260087202.Spec : Prop :=
  ∀ n, P16273222730260087202.a n = A340372 (n + 1)

end A340372

/-! ## A340372.P6754099733269613573

`and(A174692(n), A353784(n+1))`
-/

namespace A340372.P6754099733269613573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A174692 n) (A353784 (n + 1))

end

end A340372.P6754099733269613573

namespace A340372

/-- `and(A174692(n), A353784(n+1))` -/
def P6754099733269613573.Spec : Prop :=
  ∀ n, P6754099733269613573.a n = A340372 (n + 1)

end A340372

/-! ## A340372.P11279353601703650733

`and(A195744(n), A327670(n+1))`
-/

namespace A340372.P11279353601703650733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A195744 n) (A327670 (n + 1))

end

end A340372.P11279353601703650733

namespace A340372

/-- `and(A195744(n), A327670(n+1))` -/
def P11279353601703650733.Spec : Prop :=
  ∀ n, P11279353601703650733.a n = A340372 (n + 1)

end A340372

/-!
# A340373: a(n) = 1 if n is of the form of 2^i * p^j, with p an odd prime, and i>=0, j>=1, otherwise 0.

The programs for A340373, the canonical program `A340373.P14030435413002856022` is in `Seq.B008.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A340373 has offset 1).

The definition of A340373 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A209229, A340363, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A340373.P4317952934151160102

`A069513(A000265(n+1))`
-/

namespace A340373.P4317952934151160102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069513 (A000265 (n + 1)).toNat

end

end A340373.P4317952934151160102

namespace A340373

/-- `A069513(A000265(n+1))` -/
def P4317952934151160102.Spec : Prop :=
  ∀ n, P4317952934151160102.a n = A340373 (n + 1)

end A340373

/-! ## A340373.P14030435413002856022

`A340363(n+1)-A209229(n+1)`

The canonical program, it is in `Seq.B008.C001`.
-/

namespace A340373

/-- `A340363(n+1)-A209229(n+1)` -/
def P14030435413002856022.Spec : Prop :=
  ∀ n, P14030435413002856022.a n = A340373 (n + 1)

theorem P14030435413002856022.correct : P14030435413002856022.Spec := by
  intro n
  simp only [A340373, Nat.add_sub_cancel]

end A340373

/-! ## A340373.P6990093272471974393

`A318675(n+1)%2`
-/

namespace A340373.P6990093272471974393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A318675 (n + 1)) 2

end

end A340373.P6990093272471974393

namespace A340373

/-- `A318675(n+1)%2` -/
def P6990093272471974393.Spec : Prop :=
  ∀ n, P6990093272471974393.a n = A340373 (n + 1)

end A340373

/-! ## A340373.P9383539885540557378

`char[A336101(n+1)-1]`
-/

namespace A340373.P9383539885540557378
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336101 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A340373.P9383539885540557378

namespace A340373

/-- `char[A336101(n+1)-1]` -/
def P9383539885540557378.Spec : Prop :=
  ∀ n, (P9383539885540557378.a n : ℤ) = A340373 (n + 1)

end A340373

/-! ## A340373.P685290096408325190

`char[eq[1, A005087(n+1)]]`
-/

namespace A340373.P685290096408325190
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005087 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A340373.P685290096408325190

namespace A340373

/-- `char[eq[1, A005087(n+1)]]` -/
def P685290096408325190.Spec : Prop :=
  ∀ n, (P685290096408325190.a n : ℤ) = A340373 (n + 1)

end A340373

/-! ## A340373.P17239826015262951907

`char[eq[2, A068068(n+1)]]`
-/

namespace A340373.P17239826015262951907
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068068 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A340373.P17239826015262951907

namespace A340373

/-- `char[eq[2, A068068(n+1)]]` -/
def P17239826015262951907.Spec : Prop :=
  ∀ n, (P17239826015262951907.a n : ℤ) = A340373 (n + 1)

end A340373

/-! ## A340373.P4331749217638567115

`and(1, A178921(2*(n+1)))`
-/

namespace A340373.P4331749217638567115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A178921 (2 * (n + 1)))

end

end A340373.P4331749217638567115

namespace A340373

/-- `and(1, A178921(2*(n+1)))` -/
def P4331749217638567115.Spec : Prop :=
  ∀ n, P4331749217638567115.a n = A340373 (n + 1)

end A340373

/-! ## A340373.P6301697785970450038

`and(1, A318675(2*(n+1)))`
-/

namespace A340373.P6301697785970450038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A318675 (2 * (n + 1)))

end

end A340373.P6301697785970450038

namespace A340373

/-- `and(1, A318675(2*(n+1)))` -/
def P6301697785970450038.Spec : Prop :=
  ∀ n, P6301697785970450038.a n = A340373 (n + 1)

end A340373

/-! ## A340373.P2650828594121773358

`and(2, A034676(n+1))/2`
-/

namespace A340373.P2650828594121773358
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.land 2 (A034676 (n + 1)) : ℚ) / 2

end

end A340373.P2650828594121773358

namespace A340373

/-- `and(2, A034676(n+1))/2` -/
def P2650828594121773358.Spec : Prop :=
  ∀ n, P2650828594121773358.a n = (A340373 (n + 1) : ℚ)

end A340373

/-! ## A340373.P10930244581846961813

`and(2, A034678(n+1))/2`
-/

namespace A340373.P10930244581846961813
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.land 2 (A034678 (n + 1)) : ℚ) / 2

end

end A340373.P10930244581846961813

namespace A340373

/-- `and(2, A034678(n+1))/2` -/
def P10930244581846961813.Spec : Prop :=
  ∀ n, P10930244581846961813.a n = (A340373 (n + 1) : ℚ)

end A340373

/-! ## A340373.P2915824596809548732

`and(2, A034680(n+1))/2`
-/

namespace A340373.P2915824596809548732
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.land 2 (A034680 (n + 1)) : ℚ) / 2

end

end A340373.P2915824596809548732

namespace A340373

/-- `and(2, A034680(n+1))/2` -/
def P2915824596809548732.Spec : Prop :=
  ∀ n, P2915824596809548732.a n = (A340373 (n + 1) : ℚ)

end A340373

/-! ## A340373.P16387617194012044749

`and(2, A034682(n+1))/2`
-/

namespace A340373.P16387617194012044749
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.land 2 (A034682 (n + 1)) : ℚ) / 2

end

end A340373.P16387617194012044749

namespace A340373

/-- `and(2, A034682(n+1))/2` -/
def P16387617194012044749.Spec : Prop :=
  ∀ n, P16387617194012044749.a n = (A340373 (n + 1) : ℚ)

end A340373

/-! ## A340373.P6781333441339028896

`char[eq[2, A001221(2*(n+1))]]`
-/

namespace A340373.P6781333441339028896
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (2 * (n + 1))

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A340373.P6781333441339028896

namespace A340373

/-- `char[eq[2, A001221(2*(n+1))]]` -/
def P6781333441339028896.Spec : Prop :=
  ∀ n, (P6781333441339028896.a n : ℤ) = A340373 (n + 1)

end A340373

/-! ## A340373.P5575752552875283099

`A014707(A066086(n+1))`
-/

namespace A340373.P5575752552875283099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014707 (A066086 (n + 1)).toNat

end

end A340373.P5575752552875283099

namespace A340373

/-- `A014707(A066086(n+1))` -/
def P5575752552875283099.Spec : Prop :=
  ∀ n, P5575752552875283099.a n = A340373 (n + 1)

end A340373

/-! ## A340373.P14535788616954822896

`A265245(A068068(n+1))`
-/

namespace A340373.P14535788616954822896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265245 (A068068 (n + 1)).toNat

end

end A340373.P14535788616954822896

namespace A340373

/-- `A265245(A068068(n+1))` -/
def P14535788616954822896.Spec : Prop :=
  ∀ n, P14535788616954822896.a n = A340373 (n + 1)

end A340373

/-! ## A340373.P14975818422721216212

`A304650(A100008(n+1))`
-/

namespace A340373.P14975818422721216212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304650 (A100008 (n + 1)).toNat

end

end A340373.P14975818422721216212

namespace A340373

/-- `A304650(A100008(n+1))` -/
def P14975818422721216212.Spec : Prop :=
  ∀ n, P14975818422721216212.a n = A340373 (n + 1)

end A340373

/-! ## A340373.P10264348006000589544

`A304438(A204455(n+1))`
-/

namespace A340373.P10264348006000589544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304438 (A204455 (n + 1)).toNat

end

end A340373.P10264348006000589544

namespace A340373

/-- `A304438(A204455(n+1))` -/
def P10264348006000589544.Spec : Prop :=
  ∀ n, P10264348006000589544.a n = A340373 (n + 1)

end A340373

/-! ## A340373.P14691079562187188285

`A024360(A068068(n+1)²)`
-/

namespace A340373.P14691079562187188285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024360 (A068068 (n + 1) ^ 2).toNat

end

end A340373.P14691079562187188285

namespace A340373

/-- `A024360(A068068(n+1)²)` -/
def P14691079562187188285.Spec : Prop :=
  ∀ n, P14691079562187188285.a n = A340373 (n + 1)

end A340373

/-! ## A340373.P15583899175214030426

`A014081(A068068(n+1)+1)`
-/

namespace A340373.P15583899175214030426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014081 (A068068 (n + 1) + 1).toNat

end

end A340373.P15583899175214030426

namespace A340373

/-- `A014081(A068068(n+1)+1)` -/
def P15583899175214030426.Spec : Prop :=
  ∀ n, P15583899175214030426.a n = A340373 (n + 1)

end A340373

/-! ## A340373.P11243320508881605259

`A036987(A068068(n+1)+1)`
-/

namespace A340373.P11243320508881605259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036987 (A068068 (n + 1) + 1).toNat

end

end A340373.P11243320508881605259

namespace A340373

/-- `A036987(A068068(n+1)+1)` -/
def P11243320508881605259.Spec : Prop :=
  ∀ n, P11243320508881605259.a n = A340373 (n + 1)

end A340373

/-!
# A340374: 

The programs for A340374, there is no canonical definition to state claims against.
-/

/-! ## A340374.P830081169486601264

`C((n+1)/2^val(n+1, 2), A326578((n+1)/2^val(n+1, 2)))`
-/

namespace A340374.P830081169486601264
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ))).toNat (A326578 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ))).toNat).toNat

end

end A340374.P830081169486601264

/-! ## A340374.P7796975566421094417

`C(A000265(n+1), A326578(A000265(n+1)))`
-/

namespace A340374.P7796975566421094417
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A000265 (n + 1)).toNat (A326578 (A000265 (n + 1)).toNat).toNat

end

end A340374.P7796975566421094417

/-! ## A340374.P8559271228841164113

`C(A006519(2*n+3), A247074((n+1)/2^val(n+1, 2)))`
-/

namespace A340374.P8559271228841164113
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A006519 (2 * n + 3)).toNat (A247074 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ))).toNat).toNat

end

end A340374.P8559271228841164113

/-! ## A340374.P1006084575701671324

`A010051(lcm(A006530(2*(n+1)), A039634(n+1)))`
-/

namespace A340374.P1006084575701671324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (Int.lcm (A006530 (2 * (n + 1))) (A039634 (n + 1)))

end

end A340374.P1006084575701671324

/-!
# A340375: a(n) = 1 if n is of the form 2^i - 2^j with i >= j, and 0 otherwise.

The programs for A340375, the canonical program `A340375.P2042891016434456618` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A340375 has offset 0).

The definition of A340375 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A340375.P9844026215397378986

`char[and(n, xor(n, -n)-n)]`
-/

namespace A340375.P9844026215397378986
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (Int.xor (n : ℤ) (-(n : ℤ)) - (n : ℤ))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A340375.P9844026215397378986

namespace A340375

/-- `char[and(n, xor(n, -n)-n)]` -/
def P9844026215397378986.Spec : Prop :=
  ∀ n, (P9844026215397378986.a n : ℤ) = A340375 n

end A340375

/-! ## A340375.P2042891016434456618

`C(and(n, xor(n, -n)-n), n)`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A340375

/-- `C(and(n, xor(n, -n)-n), n)` -/
def P2042891016434456618.Spec : Prop :=
  ∀ n, (P2042891016434456618.a n : ℤ) = A340375 n

theorem P2042891016434456618.correct : P2042891016434456618.Spec := by
  intro n
  simp only [A340375]

end A340375

/-! ## A340375.P708981735075914940

`C(and(n, 2*n), and(n, n-1))`
-/

namespace A340375.P708981735075914940
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (Nat.land n (2 * n)) (Int.land (n : ℤ) ((n : ℤ) - 1)).toNat

end

end A340375.P708981735075914940

namespace A340375

/-- `C(and(n, 2*n), and(n, n-1))` -/
def P708981735075914940.Spec : Prop :=
  ∀ n, (P708981735075914940.a n : ℤ) = A340375 n

end A340375

/-! ## A340375.P2826286036440215800

`char[eq[and(n, 2*n), and(n, n-1)]]`
-/

namespace A340375.P2826286036440215800
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land n (2 * n)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) ((n : ℤ) - 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A340375.P2826286036440215800

namespace A340375

/-- `char[eq[and(n, 2*n), and(n, n-1)]]` -/
def P2826286036440215800.Spec : Prop :=
  ∀ n, (P2826286036440215800.a n : ℤ) = A340375 n

end A340375

/-! ## A340375.P6572917671116367888

`C(and(n, -n)+n, and(2*n, -n))`
-/

namespace A340375.P6572917671116367888
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (Int.land (n : ℤ) (-(n : ℤ)) + (n : ℤ)).toNat (Int.land (2 * n : ℤ) (-(n : ℤ))).toNat

end

end A340375.P6572917671116367888

namespace A340375

/-- `C(and(n, -n)+n, and(2*n, -n))` -/
def P6572917671116367888.Spec : Prop :=
  ∀ n, (P6572917671116367888.a n : ℤ) = A340375 n

end A340375

/-! ## A340375.P7884773401199439486

`char[A173787(n)]`
-/

namespace A340375.P7884773401199439486
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173787 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A340375.P7884773401199439486

namespace A340375

/-- `char[A173787(n)]` -/
def P7884773401199439486.Spec : Prop :=
  ∀ n, (P7884773401199439486.a n : ℤ) = A340375 n

end A340375

/-! ## A340375.P3654353504326805553

`C(2, A265397(n))`
-/

namespace A340375.P3654353504326805553
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (A265397 n).toNat

end

end A340375.P3654353504326805553

namespace A340375

/-- `C(2, A265397(n))` -/
def P3654353504326805553.Spec : Prop :=
  ∀ n, (P3654353504326805553.a n : ℤ) = A340375 n

end A340375

/-! ## A340375.P2966546096923407151

`C(2, A344887(n))`
-/

namespace A340375.P2966546096923407151
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (A344887 n).toNat

end

end A340375.P2966546096923407151

namespace A340375

/-- `C(2, A344887(n))` -/
def P2966546096923407151.Spec : Prop :=
  ∀ n, (P2966546096923407151.a n : ℤ) = A340375 n

end A340375

/-! ## A340375.P16234710138429782643

`C(A264977(n), n)`
-/

namespace A340375.P16234710138429782643
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A264977 n).toNat n

end

end A340375.P16234710138429782643

namespace A340375

/-- `C(A264977(n), n)` -/
def P16234710138429782643.Spec : Prop :=
  ∀ n, (P16234710138429782643.a n : ℤ) = A340375 n

end A340375

/-! ## A340375.P10668719432379654631

`C(A283165(n), n)`
-/

namespace A340375.P10668719432379654631
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A283165 n).toNat n

end

end A340375.P10668719432379654631

namespace A340375

/-- `C(A283165(n), n)` -/
def P10668719432379654631.Spec : Prop :=
  ∀ n, (P10668719432379654631.a n : ℤ) = A340375 n

end A340375

/-! ## A340375.P11621685635953468419

`C(n, A331857(n))`
-/

namespace A340375.P11621685635953468419
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n (A331857 n).toNat

end

end A340375.P11621685635953468419

namespace A340375

/-- `C(n, A331857(n))` -/
def P11621685635953468419.Spec : Prop :=
  ∀ n, (P11621685635953468419.a n : ℤ) = A340375 n

end A340375

/-! ## A340375.P7256248422454662788

`char[record[A362160(n)]]`
-/

namespace A340375.P7256248422454662788
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362160 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A340375.P7256248422454662788

namespace A340375

/-- `char[record[A362160(n)]]` -/
def P7256248422454662788.Spec : Prop :=
  ∀ n, (P7256248422454662788.a n : ℤ) = A340375 n

end A340375

/-! ## A340375.P3639579924546859309

`floor(acot(A037800(n)))`
-/

namespace A340375.P3639579924546859309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊SequenceMachineLib.acot (A037800 n : ℝ)⌋

end

end A340375.P3639579924546859309

namespace A340375

/-- `floor(acot(A037800(n)))` -/
def P3639579924546859309.Spec : Prop :=
  ∀ n, P3639579924546859309.a n = A340375 n

end A340375

/-! ## A340375.P3223668212723615065

`A278222(n)²%3`
-/

namespace A340375.P3223668212723615065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A278222 n ^ 2) 3

end

end A340375.P3223668212723615065

namespace A340375

/-- `A278222(n)²%3` -/
def P3223668212723615065.Spec : Prop :=
  ∀ n, P3223668212723615065.a n = A340375 n

end A340375

/-! ## A340375.P17622814402218563688

`char[A023758(n+1)]`
-/

namespace A340375.P17622814402218563688
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023758 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A340375.P17622814402218563688

namespace A340375

/-- `char[A023758(n+1)]` -/
def P17622814402218563688.Spec : Prop :=
  ∀ n, (P17622814402218563688.a n : ℤ) = A340375 n

end A340375

/-! ## A340375.P6489961221206232931

`A000007(A049502(n))`
-/

namespace A340375.P6489961221206232931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A049502 n).toNat

end

end A340375.P6489961221206232931

namespace A340375

/-- `A000007(A049502(n))` -/
def P6489961221206232931.Spec : Prop :=
  ∀ n, P6489961221206232931.a n = A340375 n

end A340375

/-! ## A340375.P9437050591251368237

`A036987(A030101(n))`
-/

namespace A340375.P9437050591251368237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036987 (A030101 n).toNat

end

end A340375.P9437050591251368237

namespace A340375

/-- `A036987(A030101(n))` -/
def P9437050591251368237.Spec : Prop :=
  ∀ n, P9437050591251368237.a n = A340375 n

end A340375

/-! ## A340375.P862721080456434637

`A036987(A035327(n))`
-/

namespace A340375.P862721080456434637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036987 (A035327 n).toNat

end

end A340375.P862721080456434637

namespace A340375

/-- `A036987(A035327(n))` -/
def P862721080456434637.Spec : Prop :=
  ∀ n, P862721080456434637.a n = A340375 n

end A340375

/-! ## A340375.P6680573818968223196

`A000007(A086784(n))`
-/

namespace A340375.P6680573818968223196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A086784 n).toNat

end

end A340375.P6680573818968223196

namespace A340375

/-- `A000007(A086784(n))` -/
def P6680573818968223196.Spec : Prop :=
  ∀ n, P6680573818968223196.a n = A340375 n

end A340375

/-! ## A340375.P2302649301639501619

`A014262(A073334(n))`
-/

namespace A340375.P2302649301639501619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014262 (A073334 n).toNat

end

end A340375.P2302649301639501619

namespace A340375

/-- `A014262(A073334(n))` -/
def P2302649301639501619.Spec : Prop :=
  ∀ n, P2302649301639501619.a n = A340375 n

end A340375

/-!
# A340376: Numbers k such that there are no 1-digits in the ternary expansion of A048673(k).

The programs for A340376, the canonical program `A340376.P5209034061733646793` is in `Seq.B014.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A340376 has offset 1).

The definition of A340376 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 343 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A340376.P7556869180695240303

`eq[2, A304758(n+1)]+1`
-/

namespace A340376.P7556869180695240303
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304758 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A340376.P7556869180695240303

namespace A340376

/-- `eq[2, A304758(n+1)]+1` -/
def P7556869180695240303.Spec : Prop :=
  ∀ n, (P7556869180695240303.a n : ℤ) = A340376 (n + 1)

end A340376

/-! ## A340376.P15166716363823035324

`eq[2, A340381(n+1)]+1`
-/

namespace A340376.P15166716363823035324
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340381 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A340376.P15166716363823035324

namespace A340376

/-- `eq[2, A340381(n+1)]+1` -/
def P15166716363823035324.Spec : Prop :=
  ∀ n, (P15166716363823035324.a n : ℤ) = A340376 (n + 1)

end A340376

/-! ## A340376.P13547231969293398247

`eq[1, A317682(a(A304759(n)))]` with `a(0)=3, a(1)=2`
-/

namespace A340376.P13547231969293398247
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [3, 2] fun n f2 =>
  A317682 (f2 (A304759 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A340376.P13547231969293398247

namespace A340376

/-- `eq[1, A317682(a(A304759(n)))]` -/
def P13547231969293398247.Spec : Prop :=
  ∀ n, (P13547231969293398247.a n : ℤ) = A340376 (n + 1)

end A340376

/-! ## A340376.P5209034061733646793

`eq[1, A278222(A304759(n+1))]+1`

The canonical program, it is in `Seq.B014.C000`.
-/

namespace A340376

/-- `eq[1, A278222(A304759(n+1))]+1` -/
def P5209034061733646793.Spec : Prop :=
  ∀ n, (P5209034061733646793.a n : ℤ) = A340376 (n + 1)

theorem P5209034061733646793.correct : P5209034061733646793.Spec := by
  intro n
  simp only [A340376, Nat.add_sub_cancel]

end A340376

/-! ## A340376.P16057174692821079124

`eq[1, A003961(A304759(n+1)+1)]+1`
-/

namespace A340376.P16057174692821079124
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003961 (A304759 (n + 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A340376.P16057174692821079124

namespace A340376

/-- `eq[1, A003961(A304759(n+1)+1)]+1` -/
def P16057174692821079124.Spec : Prop :=
  ∀ n, (P16057174692821079124.a n : ℤ) = A340376 (n + 1)

end A340376

/-! ## A340376.P12086661410109462309

`eq[1, A003961(A340378(n+1)+1)]+1`
-/

namespace A340376.P12086661410109462309
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003961 (A340378 (n + 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A340376.P12086661410109462309

namespace A340376

/-- `eq[1, A003961(A340378(n+1)+1)]+1` -/
def P12086661410109462309.Spec : Prop :=
  ∀ n, (P12086661410109462309.a n : ℤ) = A340376 (n + 1)

end A340376

/-!
# A340377: Numbers k such that there are no 2-digits in the ternary expansion of A048673(k).

The programs for A340377, the canonical program `A340377.P8993606752064362235` is in `Seq.B014.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A340377 has offset 1).

The definition of A340377 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1146 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A340377.P6789698172252724568

`record[(n+1)/A304748(n+1)]`
-/

namespace A340377.P6789698172252724568
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A304748 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A340377.P6789698172252724568

namespace A340377

/-- `record[(n+1)/A304748(n+1)]` -/
def P6789698172252724568.Spec : Prop :=
  ∀ n, P6789698172252724568.a n = (A340377 (n + 1) : ℚ)

end A340377

/-! ## A340377.P16267288622916487450

`record[(n+1)/A340382(n+1)]`
-/

namespace A340377.P16267288622916487450
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A340382 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A340377.P16267288622916487450

namespace A340377

/-- `record[(n+1)/A340382(n+1)]` -/
def P16267288622916487450.Spec : Prop :=
  ∀ n, P16267288622916487450.a n = (A340377 (n + 1) : ℚ)

end A340377

/-! ## A340377.P8993606752064362235

`record[(n+1)^(1-A340379(n+1))]`

The canonical program, it is in `Seq.B014.C000`.
-/

namespace A340377

/-- `record[(n+1)^(1-A340379(n+1))]` -/
def P8993606752064362235.Spec : Prop :=
  ∀ n, P8993606752064362235.a n = (A340377 (n + 1) : ℚ)

end A340377

/-! ## A340377.P6793517456501549130

`eq[1, A304748(n+1)]+1`
-/

namespace A340377.P6793517456501549130
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304748 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A340377.P6793517456501549130

namespace A340377

/-- `eq[1, A304748(n+1)]+1` -/
def P6793517456501549130.Spec : Prop :=
  ∀ n, (P6793517456501549130.a n : ℤ) = A340377 (n + 1)

end A340377

/-! ## A340377.P2045442334930138759

`eq[1, A340382(n+1)]+1`
-/

namespace A340377.P2045442334930138759
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340382 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A340377.P2045442334930138759

namespace A340377

/-- `eq[1, A340382(n+1)]+1` -/
def P2045442334930138759.Spec : Prop :=
  ∀ n, (P2045442334930138759.a n : ℤ) = A340377 (n + 1)

end A340377

/-! ## A340377.P11463912271456484184

`record[gcd(n+1, A291759(n+1))]`
-/

namespace A340377.P11463912271456484184
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A291759 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A340377.P11463912271456484184

namespace A340377

/-- `record[gcd(n+1, A291759(n+1))]` -/
def P11463912271456484184.Spec : Prop :=
  ∀ n, (P11463912271456484184.a n : ℤ) = A340377 (n + 1)

end A340377

/-! ## A340377.P18012855313038350982

`record[n+1-A254103(n)*A291759(n+1)]`
-/

namespace A340377.P18012855313038350982
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A254103 n * A291759 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A340377.P18012855313038350982

namespace A340377

/-- `record[n+1-A254103(n)*A291759(n+1)]` -/
def P18012855313038350982.Spec : Prop :=
  ∀ n, P18012855313038350982.a n = A340377 (n + 1)

end A340377

/-! ## A340377.P17526188808603194129

`record[n+1-A000040(n+1)*A291759(n+1)]`
-/

namespace A340377.P17526188808603194129
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A000040 (n + 1) * A291759 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A340377.P17526188808603194129

namespace A340377

/-- `record[n+1-A000040(n+1)*A291759(n+1)]` -/
def P17526188808603194129.Spec : Prop :=
  ∀ n, P17526188808603194129.a n = A340377 (n + 1)

end A340377

/-! ## A340377.P15966456085688384610

`eq[A048673(n+1), A117967(A048673(n+1))]+1`
-/

namespace A340377.P15966456085688384610
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048673 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117967 (A048673 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A340377.P15966456085688384610

namespace A340377

/-- `eq[A048673(n+1), A117967(A048673(n+1))]+1` -/
def P15966456085688384610.Spec : Prop :=
  ∀ n, (P15966456085688384610.a n : ℤ) = A340377 (n + 1)

end A340377

/-!
# A340378: Number of 1-digits in the ternary representation of A048673(n).

The programs for A340378, the canonical program `A340378.P1297187167670847368` is in `Seq.B014.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A340378 has offset 1).

The definition of A340378 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A304759, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A340378.P1297187167670847368

`A000120(A304759(n+1))`

The canonical program, it is in `Seq.B014.C000`.
-/

namespace A340378

/-- `A000120(A304759(n+1))` -/
def P1297187167670847368.Spec : Prop :=
  ∀ n, P1297187167670847368.a n = A340378 (n + 1)

theorem P1297187167670847368.correct : P1297187167670847368.Spec := by
  intro n
  simp only [A340378, Nat.add_sub_cancel]

end A340378

/-! ## A340378.P13441249609279681297

`A286585(n+1)-2*A340379(n+1)`
-/

namespace A340378.P13441249609279681297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286585 (n + 1) - 2 * A340379 (n + 1)

end

end A340378.P13441249609279681297

namespace A340378

/-- `A286585(n+1)-2*A340379(n+1)` -/
def P13441249609279681297.Spec : Prop :=
  ∀ n, P13441249609279681297.a n = A340378 (n + 1)

end A340378

/-! ## A340378.P12582242943567902583

`A062756(A048673(n+1))`
-/

namespace A340378.P12582242943567902583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062756 (A048673 (n + 1)).toNat

end

end A340378.P12582242943567902583

namespace A340378

/-- `A062756(A048673(n+1))` -/
def P12582242943567902583.Spec : Prop :=
  ∀ n, P12582242943567902583.a n = A340378 (n + 1)

end A340378

/-! ## A340378.P2253876353720109063

`val(A286586(n+1), 2)`
-/

namespace A340378.P2253876353720109063
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A286586 (n + 1)).toNat 2

end

end A340378.P2253876353720109063

namespace A340378

/-- `val(A286586(n+1), 2)` -/
def P2253876353720109063.Spec : Prop :=
  ∀ n, (P2253876353720109063.a n : ℤ) = A340378 (n + 1)

end A340378

/-! ## A340378.P12090361592131892086

`A257991(A286586(n+1))`
-/

namespace A340378.P12090361592131892086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257991 (A286586 (n + 1)).toNat

end

end A340378.P12090361592131892086

namespace A340378

/-- `A257991(A286586(n+1))` -/
def P12090361592131892086.Spec : Prop :=
  ∀ n, P12090361592131892086.a n = A340378 (n + 1)

end A340378

/-! ## A340378.P2325374589945948325

`2*A001222(A286586(n+1))-A286585(n+1)`
-/

namespace A340378.P2325374589945948325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A001222 (A286586 (n + 1)).toNat - A286585 (n + 1)

end

end A340378.P2325374589945948325

namespace A340378

/-- `2*A001222(A286586(n+1))-A286585(n+1)` -/
def P2325374589945948325.Spec : Prop :=
  ∀ n, P2325374589945948325.a n = A340378 (n + 1)

end A340378

/-! ## A340378.P15407297964814685383

`val(A006047(round(A003961(n+1)/2)), 2)`
-/

namespace A340378.P15407297964814685383
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A006047 (SequenceMachineLib.roundAway ((A003961 (n + 1) : ℚ) / 2)).toNat).toNat 2

end

end A340378.P15407297964814685383

namespace A340378

/-- `val(A006047(round(A003961(n+1)/2)), 2)` -/
def P15407297964814685383.Spec : Prop :=
  ∀ n, (P15407297964814685383.a n : ℤ) = A340378 (n + 1)

end A340378

/-! ## A340378.P17257218682071220639

`A053735(A048673(n+1))-2*A340379(n+1)`
-/

namespace A340378.P17257218682071220639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053735 (A048673 (n + 1)).toNat - 2 * A340379 (n + 1)

end

end A340378.P17257218682071220639

namespace A340378

/-- `A053735(A048673(n+1))-2*A340379(n+1)` -/
def P17257218682071220639.Spec : Prop :=
  ∀ n, P17257218682071220639.a n = A340378 (n + 1)

end A340378

/-! ## A340378.P14170355787526957197

`A001222(A286586(n+1)²)-A286585(n+1)`
-/

namespace A340378.P14170355787526957197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A286586 (n + 1) ^ 2).toNat - A286585 (n + 1)

end

end A340378.P14170355787526957197

namespace A340378

/-- `A001222(A286586(n+1)²)-A286585(n+1)` -/
def P14170355787526957197.Spec : Prop :=
  ∀ n, P14170355787526957197.a n = A340378 (n + 1)

end A340378

/-! ## A340378.P8779267643771952982

`A001222(A006047(A048673(n+1))²)-A286585(n+1)`
-/

namespace A340378.P8779267643771952982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A006047 (A048673 (n + 1)).toNat ^ 2).toNat - A286585 (n + 1)

end

end A340378.P8779267643771952982

namespace A340378

/-- `A001222(A006047(A048673(n+1))²)-A286585(n+1)` -/
def P8779267643771952982.Spec : Prop :=
  ∀ n, P8779267643771952982.a n = A340378 (n + 1)

end A340378

/-!
# A340379: Number of 2-digits in the ternary representation of A048673(n).

The programs for A340379, the canonical program `A340379.P13991734637336372993` is in `Seq.B014.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A340379 has offset 1).

The definition of A340379 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A291759, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A340379.P13991734637336372993

`A000120(A291759(n+1))`

The canonical program, it is in `Seq.B014.C000`.
-/

namespace A340379

/-- `A000120(A291759(n+1))` -/
def P13991734637336372993.Spec : Prop :=
  ∀ n, P13991734637336372993.a n = A340379 (n + 1)

theorem P13991734637336372993.correct : P13991734637336372993.Spec := by
  intro n
  simp only [A340379, Nat.add_sub_cancel]

end A340379

/-! ## A340379.P10199431836303620396

`(A286585(n+1)-A340378(n+1))/2`
-/

namespace A340379.P10199431836303620396
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A286585 (n + 1) - A340378 (n + 1) : ℚ) / 2

end

end A340379.P10199431836303620396

namespace A340379

/-- `(A286585(n+1)-A340378(n+1))/2` -/
def P10199431836303620396.Spec : Prop :=
  ∀ n, P10199431836303620396.a n = (A340379 (n + 1) : ℚ)

end A340379

/-! ## A340379.P3207767010878014738

`A081603(A048673(n+1))`
-/

namespace A340379.P3207767010878014738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081603 (A048673 (n + 1)).toNat

end

end A340379.P3207767010878014738

namespace A340379

/-- `A081603(A048673(n+1))` -/
def P3207767010878014738.Spec : Prop :=
  ∀ n, P3207767010878014738.a n = A340379 (n + 1)

end A340379

/-! ## A340379.P17790661239513698730

`val(A286586(n+1), 3)`
-/

namespace A340379.P17790661239513698730
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A286586 (n + 1)).toNat 3

end

end A340379.P17790661239513698730

namespace A340379

/-- `val(A286586(n+1), 3)` -/
def P17790661239513698730.Spec : Prop :=
  ∀ n, (P17790661239513698730.a n : ℤ) = A340379 (n + 1)

end A340379

/-! ## A340379.P16131586904026401349

`A257994(A286586(n+1))`
-/

namespace A340379.P16131586904026401349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257994 (A286586 (n + 1)).toNat

end

end A340379.P16131586904026401349

namespace A340379

/-- `A257994(A286586(n+1))` -/
def P16131586904026401349.Spec : Prop :=
  ∀ n, P16131586904026401349.a n = A340379 (n + 1)

end A340379

/-! ## A340379.P3329411923503409718

`A286585(n+1)-A001222(A286586(n+1))`
-/

namespace A340379.P3329411923503409718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286585 (n + 1) - A001222 (A286586 (n + 1)).toNat

end

end A340379.P3329411923503409718

namespace A340379

/-- `A286585(n+1)-A001222(A286586(n+1))` -/
def P3329411923503409718.Spec : Prop :=
  ∀ n, P3329411923503409718.a n = A340379 (n + 1)

end A340379

/-! ## A340379.P3565552061545799551

`val(A006047(round(A003961(n+1)/2)), 3)`
-/

namespace A340379.P3565552061545799551
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A006047 (SequenceMachineLib.roundAway ((A003961 (n + 1) : ℚ) / 2)).toNat).toNat 3

end

end A340379.P3565552061545799551

namespace A340379

/-- `val(A006047(round(A003961(n+1)/2)), 3)` -/
def P3565552061545799551.Spec : Prop :=
  ∀ n, (P3565552061545799551.a n : ℤ) = A340379 (n + 1)

end A340379

/-! ## A340379.P5730101751082359080

`A286585(n+1)-A001222(A006047(A048673(n+1)))`
-/

namespace A340379.P5730101751082359080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286585 (n + 1) - A001222 (A006047 (A048673 (n + 1)).toNat).toNat

end

end A340379.P5730101751082359080

namespace A340379

/-- `A286585(n+1)-A001222(A006047(A048673(n+1)))` -/
def P5730101751082359080.Spec : Prop :=
  ∀ n, P5730101751082359080.a n = A340379 (n + 1)

end A340379

/-! ## A340379.P12587414112824217607

`A001221(A340382(n+1)!)`
-/

namespace A340379.P12587414112824217607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (Nat.factorial (A340382 (n + 1)).toNat)

end

end A340379.P12587414112824217607

namespace A340379

/-- `A001221(A340382(n+1)!)` -/
def P12587414112824217607.Spec : Prop :=
  ∀ n, P12587414112824217607.a n = A340379 (n + 1)

end A340379

/-!
# A340380: Numbers whose odd part is a squarefree semiprime (A006881); numbers of the form 2^k * p * q, with k >= 0, and distinct odd primes p and q.

The programs for A340380, the canonical program `A340380.P3307386369142021647` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A340380 has offset 1).

The definition of A340380 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A340380.P16636666016607225918

`eq[1, A340370(n+1)]+1`
-/

namespace A340380.P16636666016607225918
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340370 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A340380.P16636666016607225918

namespace A340380

/-- `eq[1, A340370(n+1)]+1` -/
def P16636666016607225918.Spec : Prop :=
  ∀ n, (P16636666016607225918.a n : ℤ) = A340380 (n + 1)

end A340380

/-! ## A340380.P3307386369142021647

`eq[2, A318451(n+1)]+1`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A340380

/-- `eq[2, A318451(n+1)]+1` -/
def P3307386369142021647.Spec : Prop :=
  ∀ n, (P3307386369142021647.a n : ℤ) = A340380 (n + 1)

theorem P3307386369142021647.correct : P3307386369142021647.Spec := by
  intro n
  simp only [A340380, Nat.add_sub_cancel]

end A340380

/-! ## A340380.P1793241728143579860

`eq[6, A336158(n+1)]+1`
-/

namespace A340380.P1793241728143579860
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336158 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A340380.P1793241728143579860

namespace A340380

/-- `eq[6, A336158(n+1)]+1` -/
def P1793241728143579860.Spec : Prop :=
  ∀ n, (P1793241728143579860.a n : ℤ) = A340380 (n + 1)

end A340380

/-! ## A340380.P5126776836661680778

`lt[10%A065259(C(6, A336158(n+1))+1), 1]+1`
-/

namespace A340380.P5126776836661680778
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod 10 (A065259 (Nat.choose 6 (A336158 (n + 1)).toNat + 1))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A340380.P5126776836661680778

namespace A340380

/-- `lt[10%A065259(C(6, A336158(n+1))+1), 1]+1` -/
def P5126776836661680778.Spec : Prop :=
  ∀ n, (P5126776836661680778.a n : ℤ) = A340380 (n + 1)

end A340380

/-! ## A340380.P16735813768878637041

`eq[A000265(n+1), A035321(A000265(n+1))]+1`
-/

namespace A340380.P16735813768878637041
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035321 (A000265 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A340380.P16735813768878637041

namespace A340380

/-- `eq[A000265(n+1), A035321(A000265(n+1))]+1` -/
def P16735813768878637041.Spec : Prop :=
  ∀ n, (P16735813768878637041.a n : ℤ) = A340380 (n + 1)

end A340380

/-! ## A340380.P13555519748042992001

`eq[A020639(A000203(n+1)), A087436(n+1)]+1`
-/

namespace A340380.P13555519748042992001
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A000203 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087436 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A340380.P13555519748042992001

namespace A340380

/-- `eq[A020639(A000203(n+1)), A087436(n+1)]+1` -/
def P13555519748042992001.Spec : Prop :=
  ∀ n, (P13555519748042992001.a n : ℤ) = A340380 (n + 1)

end A340380

/-! ## A340380.P11222736945692454459

`filter[A131651(n+1), A340370(#)]`
-/

namespace A340380.P11222736945692454459
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131651 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A340370 (f1 j).toNat = 1) n)

end

end A340380.P11222736945692454459

namespace A340380

/-- `filter[A131651(n+1), A340370(#)]` -/
def P11222736945692454459.Spec : Prop :=
  ∀ n, P11222736945692454459.a n = A340380 (n + 1)

end A340380

/-! ## A340380.P18081620818277444335

`filter[A131651(n+1), A353627(#)]`
-/

namespace A340380.P18081620818277444335
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131651 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353627 (f1 j).toNat = 1) n)

end

end A340380.P18081620818277444335

namespace A340380

/-- `filter[A131651(n+1), A353627(#)]` -/
def P18081620818277444335.Spec : Prop :=
  ∀ n, P18081620818277444335.a n = A340380 (n + 1)

end A340380

/-! ## A340380.P5676372230129055598

`filter[A131651(n+1), A353628(#)]`
-/

namespace A340380.P5676372230129055598
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131651 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353628 (f1 j).toNat = 1) n)

end

end A340380.P5676372230129055598

namespace A340380

/-- `filter[A131651(n+1), A353628(#)]` -/
def P5676372230129055598.Spec : Prop :=
  ∀ n, P5676372230129055598.a n = A340380 (n + 1)

end A340380

/-! ## A340380.P702053339553204640

`filter[A131651(n+1), A356163(#)]`
-/

namespace A340380.P702053339553204640
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131651 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A356163 (f1 j).toNat = 1) n)

end

end A340380.P702053339553204640

namespace A340380

/-- `filter[A131651(n+1), A356163(#)]` -/
def P702053339553204640.Spec : Prop :=
  ∀ n, P702053339553204640.a n = A340380 (n + 1)

end A340380

/-! ## A340380.P266616361700645879

`∩[A131651(n+1), A285800(n+1)]`
-/

namespace A340380.P266616361700645879
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131651 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285800 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A340380.P266616361700645879

namespace A340380

/-- `∩[A131651(n+1), A285800(n+1)]` -/
def P266616361700645879.Spec : Prop :=
  ∀ n, (P266616361700645879.a n : ℤ) = A340380 (n + 1)

end A340380

/-! ## A340380.P17093889997597040883

`∩[A102750(n+1), A131651(n+1)]`
-/

namespace A340380.P17093889997597040883
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102750 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131651 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A340380.P17093889997597040883

namespace A340380

/-- `∩[A102750(n+1), A131651(n+1)]` -/
def P17093889997597040883.Spec : Prop :=
  ∀ n, (P17093889997597040883.a n : ℤ) = A340380 (n + 1)

end A340380

/-! ## A340380.P6002070149760523825

`filter[A036349(n+1), A340370(#)]`
-/

namespace A340380.P6002070149760523825
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036349 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A340370 (f1 j).toNat = 1) n)

end

end A340380.P6002070149760523825

namespace A340380

/-- `filter[A036349(n+1), A340370(#)]` -/
def P6002070149760523825.Spec : Prop :=
  ∀ n, P6002070149760523825.a n = A340380 (n + 1)

end A340380

/-! ## A340380.P80290915456669142

`∩[A036349(n+1), A131651(n+1)]`
-/

namespace A340380.P80290915456669142
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036349 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131651 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A340380.P80290915456669142

namespace A340380

/-- `∩[A036349(n+1), A131651(n+1)]` -/
def P80290915456669142.Spec : Prop :=
  ∀ n, (P80290915456669142.a n : ℤ) = A340380 (n + 1)

end A340380

/-! ## A340380.P453980769293388272

`eq[4, A318450(n+1)]+1`
-/

namespace A340380.P453980769293388272
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318450 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A340380.P453980769293388272

namespace A340380

/-- `eq[4, A318450(n+1)]+1` -/
def P453980769293388272.Spec : Prop :=
  ∀ n, (P453980769293388272.a n : ℤ) = A340380 (n + 1)

end A340380

/-! ## A340380.P9826346202415155849

`filter[A359825(n+1), A340370(#)]`
-/

namespace A340380.P9826346202415155849
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359825 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A340370 (f1 j).toNat = 1) n)

end

end A340380.P9826346202415155849

namespace A340380

/-- `filter[A359825(n+1), A340370(#)]` -/
def P9826346202415155849.Spec : Prop :=
  ∀ n, P9826346202415155849.a n = A340380 (n + 1)

end A340380

/-! ## A340380.P8194974280612958511

`filter[A285800(n+1), A340370(#)]`
-/

namespace A340380.P8194974280612958511
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285800 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A340370 (f1 j).toNat = 1) n)

end

end A340380.P8194974280612958511

namespace A340380

/-- `filter[A285800(n+1), A340370(#)]` -/
def P8194974280612958511.Spec : Prop :=
  ∀ n, P8194974280612958511.a n = A340380 (n + 1)

end A340380

/-! ## A340380.P1002019473111654625

`filter[A130092(n+1), A340370(#)]`
-/

namespace A340380.P1002019473111654625
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130092 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A340370 (f1 j).toNat = 1) n)

end

end A340380.P1002019473111654625

namespace A340380

/-- `filter[A130092(n+1), A340370(#)]` -/
def P1002019473111654625.Spec : Prop :=
  ∀ n, P1002019473111654625.a n = A340380 (n + 1)

end A340380

/-! ## A340380.P5702701004148353721

`filter[A240938(n+2), A340370(#)]`
-/

namespace A340380.P5702701004148353721
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240938 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A340370 (f1 j).toNat = 1) n)

end

end A340380.P5702701004148353721

namespace A340380

/-- `filter[A240938(n+2), A340370(#)]` -/
def P5702701004148353721.Spec : Prop :=
  ∀ n, P5702701004148353721.a n = A340380 (n + 1)

end A340380

/-! ## A340380.P2547139285017803574

`filter[A336548(n+1), A340370(#)]`
-/

namespace A340380.P2547139285017803574
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336548 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A340370 (f1 j).toNat = 1) n)

end

end A340380.P2547139285017803574

namespace A340380

/-- `filter[A336548(n+1), A340370(#)]` -/
def P2547139285017803574.Spec : Prop :=
  ∀ n, P2547139285017803574.a n = A340380 (n + 1)

end A340380

/-!
# A340381: Lexicographically earliest infinite sequence such that a(i) = a(j) => A278222(A304759(i)) = A278222(A304759(j)), for all i, j >= 1.

The programs for A340381, there is no canonical definition to state claims against.
-/

/-! ## A340381.P11240966015577891932

`A000032(A340378(n+1)^A007732(n+1))`
-/

namespace A340381.P11240966015577891932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (SequenceMachineLib.roundAway ((A340378 (n + 1) : ℚ) ^ (A007732 (n + 1) : ℤ))).toNat

end

end A340381.P11240966015577891932

/-! ## A340381.P12485353271610432385

`A000032(A340378(n+1)^A214685(n+1))`
-/

namespace A340381.P12485353271610432385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (SequenceMachineLib.roundAway ((A340378 (n + 1) : ℚ) ^ (A214685 (n + 1) : ℤ))).toNat

end

end A340381.P12485353271610432385

/-! ## A340381.P12827707413590393011

`A000032(A340378(n+1)^A289357(n+1))`
-/

namespace A340381.P12827707413590393011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (SequenceMachineLib.roundAway ((A340378 (n + 1) : ℚ) ^ (A289357 (n + 1) : ℤ))).toNat

end

end A340381.P12827707413590393011

/-! ## A340381.P12567895620284468790

`A000032(A340378(n+1)^A340366(n+5))`
-/

namespace A340381.P12567895620284468790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (SequenceMachineLib.roundAway ((A340378 (n + 1) : ℚ) ^ (A340366 (n + 5) : ℤ))).toNat

end

end A340381.P12567895620284468790

/-! ## A340381.P9467755435615468229

`A000032(A340378(n+1)%A006203(n+1))`
-/

namespace A340381.P9467755435615468229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (Int.tmod (A340378 (n + 1)) (A006203 (n + 1))).toNat

end

end A340381.P9467755435615468229

/-!
# A340382: Lexicographically earliest infinite sequence such that a(i) = a(j) => A278222(A291759(i)) = A278222(A291759(j)), for all i, j >= 1.

The programs for A340382, there is no canonical definition to state claims against.
-/

/-! ## A340382.P14446409559385956495

`A246029(A291759(n+1)%A244984(n+1))`
-/

namespace A340382.P14446409559385956495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246029 (Int.tmod (A291759 (n + 1)) (A244984 (n + 1))).toNat

end

end A340382.P14446409559385956495

/-! ## A340382.P794578542629610826

`A246029(A291759(n+1))%A090793(n+1)`
-/

namespace A340382.P794578542629610826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A246029 (A291759 (n + 1)).toNat) (A090793 (n + 1))

end

end A340382.P794578542629610826

/-! ## A340382.P11847074139220228912

`A000035(A007697(n+1))*A246029(A291759(n+1))`
-/

namespace A340382.P11847074139220228912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A007697 (n + 1)).toNat * A246029 (A291759 (n + 1)).toNat

end

end A340382.P11847074139220228912

/-! ## A340382.P17809626346002194772

`A246029(A291759(n+1))+A100073(A053755(n)+1)`
-/

namespace A340382.P17809626346002194772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246029 (A291759 (n + 1)).toNat + A100073 (A053755 n + 1).toNat

end

end A340382.P17809626346002194772

/-! ## A340382.P8343735339107519096

`A246029(A291759(n+1))+A000007(A169864(n+1))`
-/

namespace A340382.P8343735339107519096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246029 (A291759 (n + 1)).toNat + A000007 (A169864 (n + 1)).toNat

end

end A340382.P8343735339107519096

/-!
# A340384: Positions of seventeens in A340094, the Dirichlet inverse of f(n) = n - phi(n) + 1.

The programs for A340384, there is no canonical definition to state claims against.
-/

/-! ## A340384.P4744202579844057004

`eq[17, A340094(A028310(n))]`
-/

namespace A340384.P4744202579844057004
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  17

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340094 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A340384.P4744202579844057004

/-! ## A340384.P12736970747007061876

`A014681(eq[17, A340094(n+1)])`
-/

namespace A340384.P12736970747007061876
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  17

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340094 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A340384.P12736970747007061876

/-! ## A340384.P6207795772844927716

`A326178(eq[17, A340094(n+1)])`
-/

namespace A340384.P6207795772844927716
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  17

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340094 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326178 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A340384.P6207795772844927716

/-! ## A340384.P6999050726672545771

`3-A022958(eq[17, A340094(n+1)])`
-/

namespace A340384.P6999050726672545771
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  17

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340094 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - A022958 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A340384.P6999050726672545771

/-! ## A340384.P14491613917181526036

`eq[17, A340094(A233583(n+1))]`
-/

namespace A340384.P14491613917181526036
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  17

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340094 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A340384.P14491613917181526036

/-!
# A340385: Number of integer partitions of n into an odd number of parts, the greatest of which is odd.

The programs for A340385, there is no canonical definition to state claims against.
-/

/-! ## A340385.P6487237913584043367

`A027193(n+1)-A101707(n+1)`
-/

namespace A340385.P6487237913584043367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027193 (n + 1) - A101707 (n + 1)

end

end A340385.P6487237913584043367

/-! ## A340385.P14581093356849140245

`A000041(n+1)-(A101707(n+1)+A027187(n+1))`
-/

namespace A340385.P14581093356849140245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (n + 1) - (A101707 (n + 1) + A027187 (n + 1))

end

end A340385.P14581093356849140245

/-! ## A340385.P3257420124516002334

`A064173(n+1)+A101709(n+1)-A027187(n+1)`
-/

namespace A340385.P3257420124516002334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064173 (n + 1) + (A101709 (n + 1) - A027187 (n + 1))

end

end A340385.P3257420124516002334

/-!
# A340386: Heinz numbers of integer partitions with an odd number of parts, the greatest of which is odd.

The programs for A340386, there is no canonical definition to state claims against.
-/

/-! ## A340386.P12189300143246436883

`lt[0, A326846(n+1)%2]+1`
-/

namespace A340386.P12189300143246436883
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A326846 (n + 1)) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A340386.P12189300143246436883

/-! ## A340386.P18393536308435435331

`eq[1, A326846(n+2)%2]+2`
-/

namespace A340386.P18393536308435435331
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A326846 (n + 2)) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A340386.P18393536308435435331

/-! ## A340386.P546568906567457342

`lt[0, A326846(A008574(n))%2]`
-/

namespace A340386.P546568906567457342
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A326846 (A008574 n).toNat) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A340386.P546568906567457342

/-! ## A340386.P1798136522972805916

`lt[0, A326846(A028310(n))%2]`
-/

namespace A340386.P1798136522972805916
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A326846 (A028310 n).toNat) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A340386.P1798136522972805916

/-! ## A340386.P2006908249464803649

`filter[A026422(n+1), A244992(#)]`
-/

namespace A340386.P2006908249464803649
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026422 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A244992 (f1 j).toNat = 1) n)

end

end A340386.P2006908249464803649

/-! ## A340386.P9936090295771369835

`filter[A026424(n+1), A244992(#)]`
-/

namespace A340386.P9936090295771369835
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026424 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A244992 (f1 j).toNat = 1) n)

end

end A340386.P9936090295771369835

/-! ## A340386.P1093907271933320203

`filter[A244991(n+1), A066829(#)]`
-/

namespace A340386.P1093907271933320203
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244991 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A066829 (f1 j).toNat = 1) n)

end

end A340386.P1093907271933320203

/-! ## A340386.P12477139083347956955

`filter[A143691(2*(n+1)), A244992(#)]`
-/

namespace A340386.P12477139083347956955
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143691 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A244992 (f1 j).toNat = 1) n)

end

end A340386.P12477139083347956955

/-! ## A340386.P559041121455354647

`eq[1, A326846(A000007(n)+n)%2]`
-/

namespace A340386.P559041121455354647
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A326846 (A000007 n + (n : ℤ)).toNat) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A340386.P559041121455354647

/-! ## A340386.P13554423036498120608

`∩[A026422(n+1), A244991(n+1)]`
-/

namespace A340386.P13554423036498120608
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026422 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244991 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A340386.P13554423036498120608

/-!
# A340387: Numbers whose sum of prime indices is twice their number, counted with multiplicity in both cases.

The programs for A340387, there is no canonical definition to state claims against.
-/

/-! ## A340387.P17246643552910288671

`eq[A056239(n+1), A255201(n+1)]+1`
-/

namespace A340387.P17246643552910288671
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255201 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A340387.P17246643552910288671

/-! ## A340387.P8166278788780591981

`eq[A001222(n+1), A318995(n+1)]+1`
-/

namespace A340387.P8166278788780591981
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318995 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A340387.P8166278788780591981

/-! ## A340387.P8821926421915250160

`eq[A056239(n+1)/2, A001222(n+1)]+1`
-/

namespace A340387.P8821926421915250160
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A056239 (n + 1) : ℚ) / 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℚ)) n + 1

end

end A340387.P8821926421915250160

/-! ## A340387.P14715787474253386604

`A092200(eq[A056239(n+1), A255201(n+1)])`
-/

namespace A340387.P14715787474253386604
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255201 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092200 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A340387.P14715787474253386604

/-! ## A340387.P16740580612263383211

`∩[A066929(n+1), A344292(n+1)]`
-/

namespace A340387.P16740580612263383211
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066929 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344292 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A340387.P16740580612263383211

/-!
# A340389: Number at the apex of Recamán's triangle of primes and squares with n rows.

The programs for A340389, there is no canonical definition to state claims against.
-/

/-! ## A340389.P3852864651770173826

`A269174(n)+A235045(A000312(n))`
-/

namespace A340389.P3852864651770173826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269174 n + A235045 (A000312 n).toNat

end

end A340389.P3852864651770173826

/-!
# A340394: Base-independent home primes: the prime that is finally reached when you treat the prime factors of n in ascending order as digits of a number in base "greatest prime factor + 1" and repeat this until a prime is reached (a(n) = -1 if no prime is ever reached).

The programs for A340394, there is no canonical definition to state claims against.
-/

/-! ## A340394.P16612065168320601734

`A340393(A340393(A340393(A340393(n+2))))`
-/

namespace A340394.P16612065168320601734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340393 (A340393 (A340393 (A340393 (n + 2)).toNat).toNat).toNat

end

end A340394.P16612065168320601734

/-!
# A340395: a(n) = A340131(A001006(n)).

The programs for A340395, the canonical program `A340395.P550022264276469995` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A340395 has offset 2).

The definition of A340395 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A340395.P550022264276469995

`2*a(n-1)+3*a(n-2)+5` with `a(0)=5, a(1)=15`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A340395

/-- `2*a(n-1)+3*a(n-2)+5` -/
def P550022264276469995.Spec : Prop :=
  ∀ n, (P550022264276469995.a n : ℤ) = A340395 (n + 2)

theorem P550022264276469995.correct : P550022264276469995.Spec := by
  intro n
  simp only [A340395, Nat.add_sub_cancel]

end A340395

/-! ## A340395.P16606338006418533387

`5/8*(3^(n+2)-(-1)^(n+1)-2)`
-/

namespace A340395.P16606338006418533387
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (5 : ℚ) / 8 * ((3 ^ (n + 2) : ℤ) - (-1) ^ (n + 1) - 2 : ℚ)

end

end A340395.P16606338006418533387

namespace A340395

/-- `5/8*(3^(n+2)-(-1)^(n+1)-2)` -/
def P16606338006418533387.Spec : Prop :=
  ∀ n, P16606338006418533387.a n = (A340395 (n + 2) : ℚ)

theorem P16606338006418533387.correct : P16606338006418533387.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A340395, Nat.add_sub_cancel, A340395.P16606338006418533387.a, A340395.P550022264276469995.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A340395, Nat.add_sub_cancel, A340395.P16606338006418533387.a, A340395.P550022264276469995.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A340395

/-! ## A340395.P2622819877104817189

`A340131(A001006(n+2))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A340395.P2622819877104817189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340131 (A001006 (n + 2)).toNat

end

end A340395.P2622819877104817189

namespace A340395

/-- `A340131(A001006(n+2))` -/
def P2622819877104817189.Spec : Prop :=
  ∀ n, P2622819877104817189.a n = A340395 (n + 2)

end A340395

/-! ## A340395.P11609602943720416046

`ogf(5/(1-3x-x^2+3x^3))`
-/

namespace A340395.P11609602943720416046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [5] [1, -3, -1, 3] n

end

end A340395.P11609602943720416046

namespace A340395

/-- `ogf(5/(1-3x-x^2+3x^3))` -/
def P11609602943720416046.Spec : Prop :=
  ∀ n, P11609602943720416046.a n = A340395 (n + 2)

end A340395

/-! ## A340395.P6179246548439189481

`abs(5*∑[3^n-a(n-1)])` with `a(0)=1`
-/

namespace A340395.P6179246548439189481
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  (3 ^ n : ℤ) - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |5 * (∑ j ∈ Finset.range (n + 1), f1 j)|

end

end A340395.P6179246548439189481

namespace A340395

/-- `abs(5*∑[3^n-a(n-1)])` -/
def P6179246548439189481.Spec : Prop :=
  ∀ n, P6179246548439189481.a n = A340395 (n + 2)

end A340395

/-! ## A340395.P12149087575179382642

`∑[-a(n-1)]+3*a(n-1)` with `a(0)=5`
-/

namespace A340395.P12149087575179382642
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [5] fun n f1 =>
  -f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.rec [5] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 3 * a (n - 1)

end

end A340395.P12149087575179382642

namespace A340395

/-- `∑[-a(n-1)]+3*a(n-1)` -/
def P12149087575179382642.Spec : Prop :=
  ∀ n, P12149087575179382642.a n = A340395 (n + 2)

end A340395

/-! ## A340395.P7550191200043312158

`3*a(n-1)+5*(n+1)%2` with `a(0)=5`
-/

namespace A340395.P7550191200043312158
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [5] fun n a =>
  3 * a (n - 1) + 5 * ((n + 1) % 2)

end

end A340395.P7550191200043312158

namespace A340395

/-- `3*a(n-1)+5*(n+1)%2` -/
def P7550191200043312158.Spec : Prop :=
  ∀ n, (P7550191200043312158.a n : ℤ) = A340395 (n + 2)

end A340395

/-! ## A340395.P4359554601002329605

`∑[∑[5*A046717(n)]]`
-/

namespace A340395.P4359554601002329605
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A046717 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A340395.P4359554601002329605

namespace A340395

/-- `∑[∑[5*A046717(n)]]` -/
def P4359554601002329605.Spec : Prop :=
  ∀ n, P4359554601002329605.a n = A340395 (n + 2)

end A340395

/-! ## A340395.P17624759473470279461

`∑[5*A015518(n+1)]`
-/

namespace A340395.P17624759473470279461
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A015518 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A340395.P17624759473470279461

namespace A340395

/-- `∑[5*A015518(n+1)]` -/
def P17624759473470279461.Spec : Prop :=
  ∀ n, P17624759473470279461.a n = A340395 (n + 2)

end A340395

/-! ## A340395.P8562719449587007015

`∑[abs(∑[A084244(n+1)])]`
-/

namespace A340395.P8562719449587007015
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084244 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f2 j|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A340395.P8562719449587007015

namespace A340395

/-- `∑[abs(∑[A084244(n+1)])]` -/
def P8562719449587007015.Spec : Prop :=
  ∀ n, P8562719449587007015.a n = A340395 (n + 2)

end A340395

/-! ## A340395.P15962112377124002802

`A005030(n)+a(n-2)` with `a(0)=5, a(1)=15`
-/

namespace A340395.P15962112377124002802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5, 15] fun n a =>
  A005030 n + a (n - 2)

end

end A340395.P15962112377124002802

namespace A340395

/-- `A005030(n)+a(n-2)` -/
def P15962112377124002802.Spec : Prop :=
  ∀ n, P15962112377124002802.a n = A340395 (n + 2)

end A340395

/-! ## A340395.P1098571808244019159

`A081251(n+1)+A081251(n+1)+A033113(n+1)`
-/

namespace A340395.P1098571808244019159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081251 (n + 1) + (A081251 (n + 1) + A033113 (n + 1))

end

end A340395.P1098571808244019159

namespace A340395

/-- `A081251(n+1)+A081251(n+1)+A033113(n+1)` -/
def P1098571808244019159.Spec : Prop :=
  ∀ n, P1098571808244019159.a n = A340395 (n + 2)

end A340395

/-! ## A340395.P5659438497409414212

`∑[3*a(n-1)]-a(n-1)` with `a(0)=5`
-/

namespace A340395.P5659438497409414212
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [5] fun n f1 =>
  3 * f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.rec [5] fun n a =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - a (n - 1)

end

end A340395.P5659438497409414212

namespace A340395

/-- `∑[3*a(n-1)]-a(n-1)` -/
def P5659438497409414212.Spec : Prop :=
  ∀ n, P5659438497409414212.a n = A340395 (n + 2)

end A340395

/-! ## A340395.P13602629541739123207

`∑[a(n-1)+a(n-1)+a(n-1)]-a(n-1)` with `a(0)=5`
-/

namespace A340395.P13602629541739123207
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [5] fun n f1 =>
  f1 (n - 1) + (f1 (n - 1) + f1 (n - 1))

def a : ℕ → ℤ := SequenceMachineLib.rec [5] fun n a =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - a (n - 1)

end

end A340395.P13602629541739123207

namespace A340395

/-- `∑[a(n-1)+a(n-1)+a(n-1)]-a(n-1)` -/
def P13602629541739123207.Spec : Prop :=
  ∀ n, P13602629541739123207.a n = A340395 (n + 2)

end A340395

/-! ## A340395.P6200404389359233875

`Δ[5*A097137(n+1)]`
-/

namespace A340395.P6200404389359233875
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A097137 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A340395.P6200404389359233875

namespace A340395

/-- `Δ[5*A097137(n+1)]` -/
def P6200404389359233875.Spec : Prop :=
  ∀ n, P6200404389359233875.a n = A340395 (n + 2)

end A340395

/-! ## A340395.P13075246863002659272

`A080926(n+2)-A006342(n+1)`
-/

namespace A340395.P13075246863002659272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080926 (n + 2) - A006342 (n + 1)

end

end A340395.P13075246863002659272

namespace A340395

/-- `A080926(n+2)-A006342(n+1)` -/
def P13075246863002659272.Spec : Prop :=
  ∀ n, P13075246863002659272.a n = A340395 (n + 2)

end A340395

/-!
# A340399: a(n) is the least Fibonacci number >= 2^n.

The programs for A340399, there is no canonical definition to state claims against.
-/

/-! ## A340399.P17427680135757173010

`A000045(∑[gcd(2, dr(2-n))])`
-/

namespace A340399.P17427680135757173010
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 2 (SequenceMachineLib.digitalRoot (2 - (n : ℤ)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A340399.P17427680135757173010

/-! ## A340399.P6609245186896074021

`A000045(A186515(n+8)-9)`
-/

namespace A340399.P6609245186896074021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A186515 (n + 8) - 9).toNat

end

end A340399.P6609245186896074021

/-! ## A340399.P9101178642632124950

`A000045(A186227(n+9)-11)`
-/

namespace A340399.P9101178642632124950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A186227 (n + 9) - 11).toNat

end

end A340399.P9101178642632124950

/-! ## A340399.P422756315307062913

`A000045(floor(log2(A085829(n+2))))`
-/

namespace A340399.P422756315307062913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (Nat.log 2 (A085829 (n + 2)).toNat)

end

end A340399.P422756315307062913

/-! ## A340399.P10898195651872990822

`A000045(ceil(log2(A002387(n+1)))+1)`
-/

namespace A340399.P10898195651872990822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (⌈Real.logb 2 (A002387 (n + 1) : ℝ)⌉ + 1).toNat

end

end A340399.P10898195651872990822

