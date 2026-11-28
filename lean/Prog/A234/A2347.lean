import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C004
import Seq.B000.C006
import Seq.B000.C007
import Seq.B000.C008
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C012
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C032
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C041
import Seq.B000.C046
import Seq.B000.C050
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C009
import Seq.B001.C013
import Seq.B001.C014
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
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
import Seq.B009.C000
import Seq.Opaque.C000
import Seq.Opaque.C001
import Seq.Opaque.C002
import Seq.Opaque.C003
import Seq.Opaque.C004
import Seq.Opaque.C005
import Seq.Opaque.C006
import Seq.Opaque.C007
import Seq.Opaque.C009
import Seq.Opaque.C011
import Seq.Opaque.C012
import Seq.Opaque.C013
import Seq.Opaque.C014
import Seq.Opaque.C016
import Seq.Opaque.C017
import Seq.Opaque.C018
import Seq.Opaque.C020
import Seq.Opaque.C021

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A234700: Number of (n+1) X (4+1) 0..7 arrays with every 2 X 2 subblock having its diagonal sum differing from its antidiagonal sum by 5 (constant-stress 1 X 1 tilings).

The programs for A234700, there is no canonical definition to state claims against.
-/

/-! ## A234700.P8970655691911072378

`A234702(A141214(n)+7)`
-/

namespace A234700.P8970655691911072378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234702 (A141214 n + 7).toNat

end

end A234700.P8970655691911072378

/-! ## A234700.P2196465393824355470

`A234702(A141214(n+1))`
-/

namespace A234700.P2196465393824355470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234702 (A141214 (n + 1)).toNat

end

end A234700.P2196465393824355470

/-!
# A234701: Number of (n+1) X (5+1) 0..7 arrays with every 2 X 2 subblock having its diagonal sum differing from its antidiagonal sum by 5 (constant-stress 1 X 1 tilings).

The programs for A234701, there is no canonical definition to state claims against.
-/

/-! ## A234701.P3512981343484907926

`A234702(A167499(n+3))`
-/

namespace A234701.P3512981343484907926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234702 (A167499 (n + 3)).toNat

end

end A234701.P3512981343484907926

/-! ## A234701.P18349615498522859402

`A234702(A374005(n+1))`
-/

namespace A234701.P18349615498522859402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234702 (A374005 (n + 1)).toNat

end

end A234701.P18349615498522859402

/-!
# A234703: Primes in the tribonacci-like sequence, A214727.

The programs for A234703, there is no canonical definition to state claims against.
-/

/-! ## A234703.P18306735272115605674

`A214727(A234696(n+1))`
-/

namespace A234703.P18306735272115605674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214727 (A234696 (n + 1)).toNat

end

end A234703.P18306735272115605674

/-! ## A234703.P12977469034855979986

`p?[2*a(n-1)-a(n-4)]` with `a(0)=1, a(1)=2, a(2)=2, a(3)=5`
-/

namespace A234703.P12977469034855979986
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 2, 5] fun n f1 =>
  2 * f1 (n - 1) - f1 (n - 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A234703.P12977469034855979986

/-!
# A234704: Number of (n+1) X (n+1) 0..7 arrays with every 2 X 2 subblock having its diagonal sum differing from its antidiagonal sum by 6 (constant-stress 1 X 1 tilings).

The programs for A234704, there is no canonical definition to state claims against.
-/

/-! ## A234704.P11480679827314966402

`A234712(∑[4*n]+1)`
-/

namespace A234704.P11480679827314966402
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234712 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A234704.P11480679827314966402

/-! ## A234704.P2325178278797041530

`record[A003982(n)*A234712(n+1)]`
-/

namespace A234704.P2325178278797041530
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A234712 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A234704.P2325178278797041530

/-! ## A234704.P16865450292843222865

`record[gcd(A114327(n), A234712(n+1))]`
-/

namespace A234704.P16865450292843222865
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A114327 n) (A234712 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A234704.P16865450292843222865

/-!
# A234705: Number of (n+1) X (1+1) 0..7 arrays with every 2 X 2 subblock having its diagonal sum differing from its antidiagonal sum by 6 (constant-stress 1 X 1 tilings).

The programs for A234705, there is no canonical definition to state claims against.
-/

/-! ## A234705.P11909319587111469037

`A234712(∑[n]+1)`
-/

namespace A234705.P11909319587111469037
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234712 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A234705.P11909319587111469037

/-! ## A234705.P15813523383529595329

`record[A234712(n+1)]`
-/

namespace A234705.P15813523383529595329
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234712 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A234705.P15813523383529595329

/-!
# A234706: Number of (n+1) X (2+1) 0..7 arrays with every 2 X 2 subblock having its diagonal sum differing from its antidiagonal sum by 6 (constant-stress 1 X 1 tilings).

The programs for A234706, there is no canonical definition to state claims against.
-/

/-! ## A234706.P17896884869185746235

`A234712(∑[n+1]+2)`
-/

namespace A234706.P17896884869185746235
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234712 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A234706.P17896884869185746235

/-! ## A234706.P9426811812503335831

`record[root(A234712(n+2), A059268(n))]`
-/

namespace A234706.P9426811812503335831
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A234712 (n + 2) : ℝ) ^ (1 / (A059268 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A234706.P9426811812503335831

/-! ## A234706.P3280478149527842407

`record[root(A234712(n+3), A038622(n))]`
-/

namespace A234706.P3280478149527842407
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A234712 (n + 3) : ℝ) ^ (1 / (A038622 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A234706.P3280478149527842407

/-! ## A234706.P13396509745475478199

`record[root(A234712(n+2), A038738(n+1))]`
-/

namespace A234706.P13396509745475478199
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A234712 (n + 2) : ℝ) ^ (1 / (A038738 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A234706.P13396509745475478199

/-!
# A234707: Number of (n+1) X (3+1) 0..7 arrays with every 2 X 2 subblock having its diagonal sum differing from its antidiagonal sum by 6 (constant-stress 1 X 1 tilings).

The programs for A234707, there is no canonical definition to state claims against.
-/

/-! ## A234707.P10955815470069291214

`A234712(∑[2+n]+4)`
-/

namespace A234707.P10955815470069291214
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234712 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A234707.P10955815470069291214

/-! ## A234707.P16332101233227772322

`record[root(A234712(n+4), A186826(n))]`
-/

namespace A234707.P16332101233227772322
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A234712 (n + 4) : ℝ) ^ (1 / (A186826 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A234707.P16332101233227772322

/-! ## A234707.P14787359322662361573

`record[root(A234712(n+4), A118235(n+1))]`
-/

namespace A234707.P14787359322662361573
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A234712 (n + 4) : ℝ) ^ (1 / (A118235 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A234707.P14787359322662361573

/-!
# A234708: Number of (n+1) X (4+1) 0..7 arrays with every 2 X 2 subblock having its diagonal sum differing from its antidiagonal sum by 6 (constant-stress 1 X 1 tilings).

The programs for A234708, there is no canonical definition to state claims against.
-/

/-! ## A234708.P1791174278754120506

`A234712(∑[n+3]+7)`
-/

namespace A234708.P1791174278754120506
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234712 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A234708.P1791174278754120506

/-! ## A234708.P18063267877768322648

`record[A234712(A052905(∑{e}[n+1, #]+1)+2)]`
-/

namespace A234708.P18063267877768322648
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234712 (A052905 (∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p + 1) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A234708.P18063267877768322648

/-!
# A234709: Number of (n+1) X (5+1) 0..7 arrays with every 2 X 2 subblock having its diagonal sum differing from its antidiagonal sum by 6 (constant-stress 1 X 1 tilings).

The programs for A234709, there is no canonical definition to state claims against.
-/

/-! ## A234709.P13284785243426009145

`A234712(A167499(n+3))`
-/

namespace A234709.P13284785243426009145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234712 (A167499 (n + 3)).toNat

end

end A234709.P13284785243426009145

/-! ## A234709.P205649325437380877

`A234712(A374005(n+1))`
-/

namespace A234709.P205649325437380877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234712 (A374005 (n + 1)).toNat

end

end A234709.P205649325437380877

/-!
# A234710: Number of (n+1) X (6+1) 0..7 arrays with every 2 X 2 subblock having its diagonal sum differing from its antidiagonal sum by 6 (constant-stress 1 X 1 tilings).

The programs for A234710, there is no canonical definition to state claims against.
-/

/-! ## A234710.P8528173304787182059

`A234712(A166136(n+4))`
-/

namespace A234710.P8528173304787182059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234712 (A166136 (n + 4)).toNat

end

end A234710.P8528173304787182059

/-! ## A234710.P6982061085362413352

`A234712(A374007(n+1))`
-/

namespace A234710.P6982061085362413352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234712 (A374007 (n + 1)).toNat

end

end A234710.P6982061085362413352

/-!
# A234711: Number of (n+1) X (7+1) 0..7 arrays with every 2 X 2 subblock having its diagonal sum differing from its antidiagonal sum by 6 (constant-stress 1 X 1 tilings).

The programs for A234711, there is no canonical definition to state claims against.
-/

/-! ## A234711.P7383019381042995344

`A234712(A167487(n+5))`
-/

namespace A234711.P7383019381042995344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234712 (A167487 (n + 5)).toNat

end

end A234711.P7383019381042995344

/-! ## A234711.P2635199157154445541

`A234712(A374008(n+1))`
-/

namespace A234711.P2635199157154445541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234712 (A374008 (n + 1)).toNat

end

end A234711.P2635199157154445541

/-!
# A234713: Triangle, read by rows, based on the Fibonacci numbers.

The programs for A234713, the canonical program `A234713.P4993144216085342935` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A234713 has offset 0).

The definition of A234713 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A234713.P4993144216085342935

`T(n-1,k)+2*T(n-1,k-1)+T(n-2,k)-T(row(n)-2, col(n)-2)` with `a(0)=0, a(1)=1, a(2)=1`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A234713

/-- `T(n-1,k)+2*T(n-1,k-1)+T(n-2,k)-T(row(n)-2, col(n)-2)` -/
def P4993144216085342935.Spec : Prop :=
  ∀ n, P4993144216085342935.a n = A234713 n

theorem P4993144216085342935.correct : P4993144216085342935.Spec := by
  intro n
  simp only [A234713]

end A234713

/-! ## A234713.P13626054973537941806

`A209420(n+1)-A209419(n+1)`
-/

namespace A234713.P13626054973537941806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209420 (n + 1) - A209419 (n + 1)

end

end A234713.P13626054973537941806

namespace A234713

/-- `A209420(n+1)-A209419(n+1)` -/
def P13626054973537941806.Spec : Prop :=
  ∀ n, P13626054973537941806.a n = A234713 n

end A234713

/-! ## A234713.P5569280559606266307

`A209999(n+1)-A209583(n+1)`
-/

namespace A234713.P5569280559606266307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209999 (n + 1) - A209583 (n + 1)

end

end A234713.P5569280559606266307

namespace A234713

/-- `A209999(n+1)-A209583(n+1)` -/
def P5569280559606266307.Spec : Prop :=
  ∀ n, P5569280559606266307.a n = A234713 n

theorem P5569280559606266307.correct : P5569280559606266307.Spec := by
  intro n
  simp only [A234713, Nat.add_sub_cancel, A234713.P5569280559606266307.a, A234713.P4993144216085342935.a, A209583, A209583.P2893550034958611293.a, A209999, A209999.P9198663806996695037.a, A209420, A209420.P10091670759717110722.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A234713

/-! ## A234713.P9278690684095416140

`A209584(1+n)-A210235(n+1)`
-/

namespace A234713.P9278690684095416140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209584 (1 + n) - A210235 (n + 1)

end

end A234713.P9278690684095416140

namespace A234713

/-- `A209584(1+n)-A210235(n+1)` -/
def P9278690684095416140.Spec : Prop :=
  ∀ n, P9278690684095416140.a n = A234713 n

end A234713

/-! ## A234713.P6698627352682154698

`A209420(n+1)-A202390(A061579(n))`
-/

namespace A234713.P6698627352682154698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209420 (n + 1) - A202390 (A061579 n).toNat

end

end A234713.P6698627352682154698

namespace A234713

/-- `A209420(n+1)-A202390(A061579(n))` -/
def P6698627352682154698.Spec : Prop :=
  ∀ n, P6698627352682154698.a n = A234713 n

end A234713

/-! ## A234713.P2619476399689137691

`A208340(A038722(n+1))-A209419(n+1)`
-/

namespace A234713.P2619476399689137691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208340 (A038722 (n + 1)).toNat - A209419 (n + 1)

end

end A234713.P2619476399689137691

namespace A234713

/-- `A208340(A038722(n+1))-A209419(n+1)` -/
def P2619476399689137691.Spec : Prop :=
  ∀ n, P2619476399689137691.a n = A234713 n

end A234713

/-!
# A234714: Numerator of sum_{k=1..n} 1/(k*H(k)) where H(k) is the harmonic number H(k) = sum_{j=1..n} 1/j.

The programs for A234714, there is no canonical definition to state claims against.
-/

/-! ## A234714.P14488343574100633635

`∑[A064707(A051396(n))]`
-/

namespace A234714.P14488343574100633635
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064707 (A051396 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A234714.P14488343574100633635

/-!
# A234715: Denominator of sum_{k=1..n} 1/(k*H(k)) where H(k) is the harmonic number H(k) = sum_{j=1..n} 1/j.

The programs for A234715, there is no canonical definition to state claims against.
-/

/-! ## A234715.P11485348601024496626

`lcm(a(n-1), A001008(n))` with `a(0)=1`
-/

namespace A234715.P11485348601024496626
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Int.lcm (a (n - 1) : ℤ) (A001008 n)

end

end A234715.P11485348601024496626

/-! ## A234715.P11742512703841207562

`lcm(-a(n-1), A060746(n))` with `a(0)=1`
-/

namespace A234715.P11742512703841207562
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Int.lcm (-(a (n - 1) : ℤ)) (A060746 n)

end

end A234715.P11742512703841207562

/-!
# A234716: Number of odd composite integers k, such that n-1 < k < 2n-2.

The programs for A234716, the canonical program `A234716.P16236947480037307532` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A234716 has offset 1).

The definition of A234716 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A234716.P14986398137353773692

`(floor(n/2)-A060715(abs(1-n)+1))%(n+1)`
-/

namespace A234716.P14986398137353773692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (⌊(n : ℚ) / 2⌋ - A060715 (|1 - (n : ℤ)| + 1).toNat) (n + 1 : ℤ)

end

end A234716.P14986398137353773692

namespace A234716

/-- `(floor(n/2)-A060715(abs(1-n)+1))%(n+1)` -/
def P14986398137353773692.Spec : Prop :=
  ∀ n, P14986398137353773692.a n = A234716 (n + 1)

end A234716

/-! ## A234716.P16236947480037307532

`floor(n/2)-A060715(A028310(n))`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A234716

/-- `floor(n/2)-A060715(A028310(n))` -/
def P16236947480037307532.Spec : Prop :=
  ∀ n, P16236947480037307532.a n = A234716 (n + 1)

theorem P16236947480037307532.correct : P16236947480037307532.Spec := by
  intro n
  simp only [A234716, Nat.add_sub_cancel]

end A234716

/-! ## A234716.P16512706978841832019

`A376759(A028310(n))%A065033(n)`
-/

namespace A234716.P16512706978841832019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A376759 (A028310 n).toNat) (A065033 n)

end

end A234716.P16512706978841832019

namespace A234716

/-- `A376759(A028310(n))%A065033(n)` -/
def P16512706978841832019.Spec : Prop :=
  ∀ n, P16512706978841832019.a n = A234716 (n + 1)

end A234716

/-! ## A234716.P5443170477097990489

`ceil((n+1)/2)-A129843(A004277(n))`
-/

namespace A234716.P5443170477097990489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n + 1 : ℚ) / 2⌉ - A129843 (A004277 n).toNat

end

end A234716.P5443170477097990489

namespace A234716

/-- `ceil((n+1)/2)-A129843(A004277(n))` -/
def P5443170477097990489.Spec : Prop :=
  ∀ n, P5443170477097990489.a n = A234716 (n + 1)

end A234716

/-! ## A234716.P5102948881392675430

`A004526(n)-A294602(A047268(n+1))`
-/

namespace A234716.P5102948881392675430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 n - A294602 (A047268 (n + 1)).toNat

end

end A234716.P5102948881392675430

namespace A234716

/-- `A004526(n)-A294602(A047268(n+1))` -/
def P5102948881392675430.Spec : Prop :=
  ∀ n, P5102948881392675430.a n = A234716 (n + 1)

end A234716

/-! ## A234716.P4949119258140947123

`A008619(n)-A164296(A267872(n))`
-/

namespace A234716.P4949119258140947123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n - A164296 (A267872 n).toNat

end

end A234716.P4949119258140947123

namespace A234716

/-- `A008619(n)-A164296(A267872(n))` -/
def P4949119258140947123.Spec : Prop :=
  ∀ n, P4949119258140947123.a n = A234716 (n + 1)

end A234716

/-!
# A234717: a(n) = floor(n/(exp(1/(2*n))-1)).

The programs for A234717, the canonical program `A234717.P3446322811673331827` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A234717 has offset 1).

The definition of A234717 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A234717.P12829928992730173101

`ogf((1+5x+2x^2)/(1-2x+2x^3-x^4))`
-/

namespace A234717.P12829928992730173101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 5, 2] [1, -2, 0, 2, -1] n

end

end A234717.P12829928992730173101

namespace A234717

/-- `ogf((1+5x+2x^2)/(1-2x+2x^3-x^4))` -/
def P12829928992730173101.Spec : Prop :=
  ∀ n, P12829928992730173101.a n = A234717 (n + 1)

end A234717

/-! ## A234717.P4790418686377901637

`floor((n+1)/(exp(1/(2*(n+1)))-1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A234717.P4790418686377901637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℝ) / (Real.exp (1 / (2 * (n + 1) : ℚ) : ℝ) - 1)⌋

end

end A234717.P4790418686377901637

namespace A234717

/-- `floor((n+1)/(exp(1/(2*(n+1)))-1))` -/
def P4790418686377901637.Spec : Prop :=
  ∀ n, P4790418686377901637.a n = A234717 (n + 1)

end A234717

/-! ## A234717.P3446322811673331827

`2*a(n-1)-2*a(n-3)+a(n-4)` with `a(0)=1, a(1)=7, a(2)=16, a(3)=30`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A234717

/-- `2*a(n-1)-2*a(n-3)+a(n-4)` -/
def P3446322811673331827.Spec : Prop :=
  ∀ n, P3446322811673331827.a n = A234717 (n + 1)

theorem P3446322811673331827.correct : P3446322811673331827.Spec := by
  intro n
  simp only [A234717, Nat.add_sub_cancel]

end A234717

/-! ## A234717.P16953390946804592063

`∑[8+a(n-2)]` with `a(0)=1, a(1)=6`
-/

namespace A234717.P16953390946804592063
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 6] fun n f1 =>
  8 + f1 (n - 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A234717.P16953390946804592063

namespace A234717

/-- `∑[8+a(n-2)]` -/
def P16953390946804592063.Spec : Prop :=
  ∀ n, (P16953390946804592063.a n : ℤ) = A234717 (n + 1)

end A234717

/-! ## A234717.P17664877124284009049

`∑[record[xor(3, n)]-gcd(2, n)]`
-/

namespace A234717.P17664877124284009049
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 3 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n) : ℤ) - (Nat.gcd 2 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A234717.P17664877124284009049

namespace A234717

/-- `∑[record[xor(3, n)]-gcd(2, n)]` -/
def P17664877124284009049.Spec : Prop :=
  ∀ n, P17664877124284009049.a n = A234717 (n + 1)

end A234717

/-! ## A234717.P6830700331804072653

`floor(C(4*(n+1), 2)/4)`
-/

namespace A234717.P6830700331804072653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.choose (4 * (n + 1)) 2 : ℚ) / 4⌋

end

end A234717.P6830700331804072653

namespace A234717

/-- `floor(C(4*(n+1), 2)/4)` -/
def P6830700331804072653.Spec : Prop :=
  ∀ n, P6830700331804072653.a n = A234717 (n + 1)

end A234717

/-! ## A234717.P13307657725395445102

`∑[∑[abs(a(n-2))]]` with `a(0)=1, a(1)=5, a(2)=3`
-/

namespace A234717.P13307657725395445102
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 5, 3] fun n f2 =>
  f2 (n - 2)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A234717.P13307657725395445102

namespace A234717

/-- `∑[∑[abs(a(n-2))]]` -/
def P13307657725395445102.Spec : Prop :=
  ∀ n, (P13307657725395445102.a n : ℤ) = A234717 (n + 1)

end A234717

/-! ## A234717.P5932582435784586839

`∑[∑[8-a(n-1)]]` with `a(0)=1, a(1)=5`
-/

namespace A234717.P5932582435784586839
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1, 5] fun n f2 =>
  8 - f2 (n - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A234717.P5932582435784586839

namespace A234717

/-- `∑[∑[8-a(n-1)]]` -/
def P5932582435784586839.Spec : Prop :=
  ∀ n, P5932582435784586839.a n = A234717 (n + 1)

end A234717

/-! ## A234717.P12674839448366202757

`∑[n%2+4*n+1]`
-/

namespace A234717.P12674839448366202757
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 2 + 4 * n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A234717.P12674839448366202757

namespace A234717

/-- `∑[n%2+4*n+1]` -/
def P12674839448366202757.Spec : Prop :=
  ∀ n, (P12674839448366202757.a n : ℤ) = A234717 (n + 1)

end A234717

/-! ## A234717.P11700227665541876560

`∑[or(1, n+1)+3*n]`
-/

namespace A234717.P11700227665541876560
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (n + 1) + 3 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A234717.P11700227665541876560

namespace A234717

/-- `∑[or(1, n+1)+3*n]` -/
def P11700227665541876560.Spec : Prop :=
  ∀ n, (P11700227665541876560.a n : ℤ) = A234717 (n + 1)

end A234717

/-! ## A234717.P6585342422853234390

`∑[and(1, n)+1+4*n]`
-/

namespace A234717.P6585342422853234390
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 n + 1 + 4 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A234717.P6585342422853234390

namespace A234717

/-- `∑[and(1, n)+1+4*n]` -/
def P6585342422853234390.Spec : Prop :=
  ∀ n, (P6585342422853234390.a n : ℤ) = A234717 (n + 1)

end A234717

/-! ## A234717.P5910377683308851988

`∑[5*n-or(1, n-2)]`
-/

namespace A234717.P5910377683308851988
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (5 * n : ℤ) - Int.lor 1 ((n : ℤ) - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A234717.P5910377683308851988

namespace A234717

/-- `∑[5*n-or(1, n-2)]` -/
def P5910377683308851988.Spec : Prop :=
  ∀ n, P5910377683308851988.a n = A234717 (n + 1)

end A234717

/-! ## A234717.P4196205898653973256

`∑[∑[∑[ogf((1+5x+2x^2)/(1+x))]]]`
-/

namespace A234717.P4196205898653973256
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 5, 2] [1, 1] n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A234717.P4196205898653973256

namespace A234717

/-- `∑[∑[∑[ogf((1+5x+2x^2)/(1+x))]]]` -/
def P4196205898653973256.Spec : Prop :=
  ∀ n, P4196205898653973256.a n = A234717 (n + 1)

end A234717

/-! ## A234717.P12853534507035324301

`8*n+a(n-2)-1` with `a(0)=1, a(1)=7`
-/

namespace A234717.P12853534507035324301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 7] fun n a =>
  (8 * n : ℤ) + (a (n - 2) - 1)

end

end A234717.P12853534507035324301

namespace A234717

/-- `8*n+a(n-2)-1` -/
def P12853534507035324301.Spec : Prop :=
  ∀ n, P12853534507035324301.a n = A234717 (n + 1)

end A234717

/-! ## A234717.P11776702412519099633

`8*n-(1-a(n-2))` with `a(0)=1, a(1)=7`
-/

namespace A234717.P11776702412519099633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 7] fun n a =>
  (8 * n : ℤ) - (1 - a (n - 2))

end

end A234717.P11776702412519099633

namespace A234717

/-- `8*n-(1-a(n-2))` -/
def P11776702412519099633.Spec : Prop :=
  ∀ n, P11776702412519099633.a n = A234717 (n + 1)

end A234717

/-! ## A234717.P8568309126501302206

`Δ[n²]²-a(n-1)-n` with `a(0)=1`
-/

namespace A234717.P8568309126501302206
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) ^ 2 - a (n - 1) - (n : ℤ)

end

end A234717.P8568309126501302206

namespace A234717

/-- `Δ[n²]²-a(n-1)-n` -/
def P8568309126501302206.Spec : Prop :=
  ∀ n, P8568309126501302206.a n = A234717 (n + 1)

end A234717

/-! ## A234717.P5112931748852778285

`∑[Δ[n*2*n]-and(1, n-1)]`
-/

namespace A234717.P5112931748852778285
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ) - Int.land 1 ((n : ℤ) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A234717.P5112931748852778285

namespace A234717

/-- `∑[Δ[n*2*n]-and(1, n-1)]` -/
def P5112931748852778285.Spec : Prop :=
  ∀ n, P5112931748852778285.a n = A234717 (n + 1)

end A234717

/-! ## A234717.P2213955456470781620

`ceil(lcm(2*n+1, n+1)+n/2)`
-/

namespace A234717.P2213955456470781620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Nat.lcm (2 * n + 1) (n + 1) : ℚ) + (n : ℚ) / 2⌉

end

end A234717.P2213955456470781620

namespace A234717

/-- `ceil(lcm(2*n+1, n+1)+n/2)` -/
def P2213955456470781620.Spec : Prop :=
  ∀ n, P2213955456470781620.a n = A234717 (n + 1)

end A234717

/-! ## A234717.P16449541147199271008

`∑[eq[n+1, and(n+1, n+3)]]+(n+1)²`
-/

namespace A234717.P16449541147199271008
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land (n + 1) (n + 3)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j = f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n + 1) ^ 2

end

end A234717.P16449541147199271008

namespace A234717

/-- `∑[eq[n+1, and(n+1, n+3)]]+(n+1)²` -/
def P16449541147199271008.Spec : Prop :=
  ∀ n, (P16449541147199271008.a n : ℤ) = A234717 (n + 1)

end A234717

/-! ## A234717.P12251144841207943526

`∑[A047452(n+1)]`
-/

namespace A234717.P12251144841207943526
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047452 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A234717.P12251144841207943526

namespace A234717

/-- `∑[A047452(n+1)]` -/
def P12251144841207943526.Spec : Prop :=
  ∀ n, P12251144841207943526.a n = A234717 (n + 1)

end A234717

/-!
# A234719: Record values in A032355 = number of connected transitive trivalent (or cubic) graphs with 2n nodes.

The programs for A234719, there is no canonical definition to state claims against.
-/

/-! ## A234719.P4250164349655698227

`A032355(A234718(n+1))`
-/

namespace A234719.P4250164349655698227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032355 (A234718 (n + 1)).toNat

end

end A234719.P4250164349655698227

/-! ## A234719.P4460058678365516692

`record[A032355(n+2)]`
-/

namespace A234719.P4460058678365516692
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032355 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A234719.P4460058678365516692

/-! ## A234719.P14874915675575476615

`record[A329825(n+1)-A075162(n)]`
-/

namespace A234719.P14874915675575476615
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329825 (n + 1) - A075162 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A234719.P14874915675575476615

/-! ## A234719.P7594857285095578489

`∑[A130461(∑[A288627(3*n+1)])]`
-/

namespace A234719.P7594857285095578489
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288627 (3 * n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130461 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A234719.P7594857285095578489

/-! ## A234719.P9116409356164800509

`lt[A233583(n+1), A132169(A085201(n))]`
-/

namespace A234719.P9116409356164800509
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132169 (A085201 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A234719.P9116409356164800509

/-!
# A234720: Number of (n+1) X (n+1) 0..7 arrays with every 2 X 2 subblock having its diagonal sum differing from its antidiagonal sum by 7 (constant-stress 1 X 1 tilings).

The programs for A234720, there is no canonical definition to state claims against.
-/

/-! ## A234720.P5945901986444964104

`A234728(∑[4*n]+1)`
-/

namespace A234720.P5945901986444964104
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234728 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A234720.P5945901986444964104

/-! ## A234720.P17346137187483445049

`record[A003982(n)*A234728(n+1)]`
-/

namespace A234720.P17346137187483445049
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A234728 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A234720.P17346137187483445049

/-! ## A234720.P15072874261788963978

`record[gcd(A003987(n), A234728(n+1))]`
-/

namespace A234720.P15072874261788963978
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A003987 n) (A234728 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A234720.P15072874261788963978

/-! ## A234720.P17002193504332406801

`record[A010052(2*n+1)*A234728(n+1)]`
-/

namespace A234720.P17002193504332406801
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010052 (2 * n + 1) * A234728 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A234720.P17002193504332406801

/-!
# A234721: Number of (n+1) X (1+1) 0..7 arrays with every 2 X 2 subblock having its diagonal sum differing from its antidiagonal sum by 7 (constant-stress 1 X 1 tilings).

The programs for A234721, there is no canonical definition to state claims against.
-/

/-! ## A234721.P1380717236370059089

`A234728(∑[n]+1)`
-/

namespace A234721.P1380717236370059089
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234728 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A234721.P1380717236370059089

/-! ## A234721.P10218875289168349732

`record[A234728(n+1)]`
-/

namespace A234721.P10218875289168349732
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234728 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A234721.P10218875289168349732

/-!
# A234722: Number of (n+1) X (2+1) 0..7 arrays with every 2 X 2 subblock having its diagonal sum differing from its antidiagonal sum by 7 (constant-stress 1 X 1 tilings).

The programs for A234722, there is no canonical definition to state claims against.
-/

/-! ## A234722.P3509397770559460446

`A234728(∑[n+1]+2)`
-/

namespace A234722.P3509397770559460446
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234728 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A234722.P3509397770559460446

/-! ## A234722.P17997633805183629583

`record[and(A008482(n+1), A234728(n+3))]`
-/

namespace A234722.P17997633805183629583
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A008482 (n + 1)) (A234728 (n + 3))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A234722.P17997633805183629583

/-! ## A234722.P10848237298887070173

`record[A234728(A333530(n+1))]`
-/

namespace A234722.P10848237298887070173
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234728 (A333530 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A234722.P10848237298887070173

/-! ## A234722.P6062999514068671019

`record[A234728(A115364(n+1)+2)]`
-/

namespace A234722.P6062999514068671019
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234728 (A115364 (n + 1) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A234722.P6062999514068671019

/-! ## A234722.P4151941527634699725

`record[gcd(A222794(n+3), A234728(n+2))]`
-/

namespace A234722.P4151941527634699725
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A222794 (n + 3)) (A234728 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A234722.P4151941527634699725

/-!
# A234723: Number of (n+1) X (3+1) 0..7 arrays with every 2 X 2 subblock having its diagonal sum differing from its antidiagonal sum by 7 (constant-stress 1 X 1 tilings).

The programs for A234723, there is no canonical definition to state claims against.
-/

/-! ## A234723.P14027900417022909240

`A234728(∑[n+2]+4)`
-/

namespace A234723.P14027900417022909240
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234728 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A234723.P14027900417022909240

/-! ## A234723.P10246896690357421096

`record[root(A234728(n+4), A038622(n))]`
-/

namespace A234723.P10246896690357421096
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A234728 (n + 4) : ℝ) ^ (1 / (A038622 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A234723.P10246896690357421096

/-!
# A234724: Number of (n+1) X (4+1) 0..7 arrays with every 2 X 2 subblock having its diagonal sum differing from its antidiagonal sum by 7 (constant-stress 1 X 1 tilings).

The programs for A234724, there is no canonical definition to state claims against.
-/

/-! ## A234724.P3772063784687803427

`A234728(∑[n+3]+7)`
-/

namespace A234724.P3772063784687803427
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234728 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A234724.P3772063784687803427

/-!
# A234725: Number of (n+1) X (5+1) 0..7 arrays with every 2 X 2 subblock having its diagonal sum differing from its antidiagonal sum by 7 (constant-stress 1 X 1 tilings).

The programs for A234725, there is no canonical definition to state claims against.
-/

/-! ## A234725.P8689427932197150024

`A234728(A167499(n+3))`
-/

namespace A234725.P8689427932197150024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234728 (A167499 (n + 3)).toNat

end

end A234725.P8689427932197150024

/-! ## A234725.P15281863275096561008

`A234728(A374005(n+1))`
-/

namespace A234725.P15281863275096561008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234728 (A374005 (n + 1)).toNat

end

end A234725.P15281863275096561008

/-!
# A234726: Number of (n+1) X (6+1) 0..7 arrays with every 2 X 2 subblock having its diagonal sum differing from its antidiagonal sum by 7 (constant-stress 1 X 1 tilings).

The programs for A234726, there is no canonical definition to state claims against.
-/

/-! ## A234726.P280088323835475927

`A234728(A166136(n+4))`
-/

namespace A234726.P280088323835475927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234728 (A166136 (n + 4)).toNat

end

end A234726.P280088323835475927

/-! ## A234726.P4726477067128721566

`A234728(A374007(n+1))`
-/

namespace A234726.P4726477067128721566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234728 (A374007 (n + 1)).toNat

end

end A234726.P4726477067128721566

/-!
# A234727: Number of (n+1) X (7+1) 0..7 arrays with every 2 X 2 subblock having its diagonal sum differing from its antidiagonal sum by 7 (constant-stress 1 X 1 tilings).

The programs for A234727, there is no canonical definition to state claims against.
-/

/-! ## A234727.P4340863338408146142

`A234728(A374008(n+1))`
-/

namespace A234727.P4340863338408146142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234728 (A374008 (n + 1)).toNat

end

end A234727.P4340863338408146142

/-!
# A234729: Volume of right regular hexagonal pyramid with height and side lengths n, rounded down.

The programs for A234729, the canonical program `A234729.P9573676133342799199` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A234729 has offset 1).

The definition of A234729 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A234729.P9573676133342799199

`floor(sqrt(3)*(n+1)^3/2)`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A234729

/-- `floor(sqrt(3)*(n+1)^3/2)` -/
def P9573676133342799199.Spec : Prop :=
  ∀ n, P9573676133342799199.a n = A234729 (n + 1)

theorem P9573676133342799199.correct : P9573676133342799199.Spec := by
  intro n
  simp only [A234729, Nat.add_sub_cancel]

end A234729

/-! ## A234729.P5082401804158182176

`A171970(Δ[∑[n]²])`
-/

namespace A234729.P5082401804158182176
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171970 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A234729.P5082401804158182176

namespace A234729

/-- `A171970(Δ[∑[n]²])` -/
def P5082401804158182176.Spec : Prop :=
  ∀ n, P5082401804158182176.a n = A234729 (n + 1)

end A234729

/-! ## A234729.P616982429182921881

`A172475(Δ[∑[n]²])`
-/

namespace A234729.P616982429182921881
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172475 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A234729.P616982429182921881

namespace A234729

/-- `A172475(Δ[∑[n]²])` -/
def P616982429182921881.Spec : Prop :=
  ∀ n, P616982429182921881.a n = A234729 (n + 1)

end A234729

/-! ## A234729.P7450005096529272543

`record[A172475(A002262(n)^3)]`
-/

namespace A234729.P7450005096529272543
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172475 (A002262 n ^ 3).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A234729.P7450005096529272543

namespace A234729

/-- `record[A172475(A002262(n)^3)]` -/
def P7450005096529272543.Spec : Prop :=
  ∀ n, P7450005096529272543.a n = A234729 (n + 1)

end A234729

/-! ## A234729.P7028581804477760619

`record[A172475(A008611(n)^3)]`
-/

namespace A234729.P7028581804477760619
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172475 (A008611 n ^ 3).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A234729.P7028581804477760619

namespace A234729

/-- `record[A172475(A008611(n)^3)]` -/
def P7028581804477760619.Spec : Prop :=
  ∀ n, P7028581804477760619.a n = A234729 (n + 1)

end A234729

/-!
# A234730: Number of (n+1) X (n+1) 0..7 arrays with every 2 X 2 subblock having its diagonal sum differing from its antidiagonal sum by 8 (constant-stress 1 X 1 tilings).

The programs for A234730, there is no canonical definition to state claims against.
-/

/-! ## A234730.P8179708064258295280

`A234738(∑[4*n]+1)`
-/

namespace A234730.P8179708064258295280
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234738 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A234730.P8179708064258295280

/-! ## A234730.P6629045935644912412

`record[A234738(Δ[A235355(n)])]`
-/

namespace A234730.P6629045935644912412
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235355 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234738 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A234730.P6629045935644912412

/-! ## A234730.P11501836720944741179

`record[A234738(A330613(n+1))]`
-/

namespace A234730.P11501836720944741179
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234738 (A330613 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A234730.P11501836720944741179

/-!
# A234731: Number of (n+1) X (1+1) 0..7 arrays with every 2 X 2 subblock having its diagonal sum differing from its antidiagonal sum by 8 (constant-stress 1 X 1 tilings).

The programs for A234731, there is no canonical definition to state claims against.
-/

/-! ## A234731.P17979540325462476034

`A234738(∑[n]+1)`
-/

namespace A234731.P17979540325462476034
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234738 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A234731.P17979540325462476034

/-! ## A234731.P14327955147918406712

`record[A234738(1+n)]`
-/

namespace A234731.P14327955147918406712
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234738 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A234731.P14327955147918406712

/-!
# A234732: Number of (n+1) X (2+1) 0..7 arrays with every 2 X 2 subblock having its diagonal sum differing from its antidiagonal sum by 8 (constant-stress 1 X 1 tilings).

The programs for A234732, there is no canonical definition to state claims against.
-/

/-! ## A234732.P10392564304421188482

`A234738(∑[n+1]+2)`
-/

namespace A234732.P10392564304421188482
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234738 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A234732.P10392564304421188482

/-! ## A234732.P3665644373626302085

`record[A234738(A286159(n+1)+2)]`
-/

namespace A234732.P3665644373626302085
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234738 (A286159 (n + 1) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A234732.P3665644373626302085

/-! ## A234732.P12240695063695333206

`record[A010054(n)*A234738(n+2)]`
-/

namespace A234732.P12240695063695333206
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A234738 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A234732.P12240695063695333206

/-! ## A234732.P14491157787933982543

`record[root(A234738(n+3), A130321(n))]`
-/

namespace A234732.P14491157787933982543
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A234738 (n + 3) : ℝ) ^ (1 / (A130321 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A234732.P14491157787933982543

/-!
# A234733: Number of (n+1) X (3+1) 0..7 arrays with every 2 X 2 subblock having its diagonal sum differing from its antidiagonal sum by 8 (constant-stress 1 X 1 tilings).

The programs for A234733, there is no canonical definition to state claims against.
-/

/-! ## A234733.P9082925414372850624

`A234738(∑[n+2]+4)`
-/

namespace A234733.P9082925414372850624
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234738 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A234733.P9082925414372850624

/-! ## A234733.P2344004253886802351

`record[A234738(n+4)/A038622(n)]`
-/

namespace A234733.P2344004253886802351
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A234738 (n + 4) : ℚ) / (A038622 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A234733.P2344004253886802351

/-!
# A234734: Number of (n+1) X (4+1) 0..7 arrays with every 2 X 2 subblock having its diagonal sum differing from its antidiagonal sum by 8 (constant-stress 1 X 1 tilings).

The programs for A234734, there is no canonical definition to state claims against.
-/

/-! ## A234734.P6838104316892720570

`A234738(∑[n+3]+7)`
-/

namespace A234734.P6838104316892720570
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234738 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A234734.P6838104316892720570

/-!
# A234735: Number of (n+1) X (5+1) 0..7 arrays with every 2 X 2 subblock having its diagonal sum differing from its antidiagonal sum by 8 (constant-stress 1 X 1 tilings).

The programs for A234735, there is no canonical definition to state claims against.
-/

/-! ## A234735.P17607725751376283068

`A234738(A167499(n+3))`
-/

namespace A234735.P17607725751376283068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234738 (A167499 (n + 3)).toNat

end

end A234735.P17607725751376283068

/-! ## A234735.P4086617798223526319

`A234738(A374005(n+1))`
-/

namespace A234735.P4086617798223526319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234738 (A374005 (n + 1)).toNat

end

end A234735.P4086617798223526319

/-!
# A234736: Number of (n+1) X (6+1) 0..7 arrays with every 2 X 2 subblock having its diagonal sum differing from its antidiagonal sum by 8 (constant-stress 1 X 1 tilings).

The programs for A234736, there is no canonical definition to state claims against.
-/

/-! ## A234736.P10656034785003030768

`A234738(A166136(n+4))`
-/

namespace A234736.P10656034785003030768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234738 (A166136 (n + 4)).toNat

end

end A234736.P10656034785003030768

/-! ## A234736.P7761208292984302606

`A234738(A374007(n+1))`
-/

namespace A234736.P7761208292984302606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234738 (A374007 (n + 1)).toNat

end

end A234736.P7761208292984302606

/-!
# A234737: Number of (n+1) X (7+1) 0..7 arrays with every 2 X 2 subblock having its diagonal sum differing from its antidiagonal sum by 8 (constant-stress 1 X 1 tilings).

The programs for A234737, there is no canonical definition to state claims against.
-/

/-! ## A234737.P5225072819828320042

`A234738(A374008(n+1))`
-/

namespace A234737.P5225072819828320042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234738 (A374008 (n + 1)).toNat

end

end A234737.P5225072819828320042

/-!
# A234738: T(n,k) is the number of (n+1) X (k+1) 0..7 arrays with every 2 X 2 subblock having its diagonal sum differing from its antidiagonal sum by 8 (constant-stress 1 X 1 tilings).

The programs for A234738, there is no canonical definition to state claims against.
-/

/-! ## A234738.P13309734607414720879

`A234731(∑[∑{e}[A234732(n+1)+1, #]%2])`
-/

namespace A234738.P13309734607414720879
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234732 (n + 1) + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ p ∈ Nat.primeFactors (f2 n).natAbs, Nat.factorization (f2 n).natAbs p) % 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234731 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A234738.P13309734607414720879

/-!
# A234739: Largest prime divisor of all composite numbers of the form k^2+1 between two consecutive primes of the same form.

The programs for A234739, there is no canonical definition to state claims against.
-/

/-! ## A234739.P626322845027273269

`p?[2-Δ[A211175(n+2)]]`
-/

namespace A234739.P626322845027273269
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211175 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A234739.P626322845027273269

/-! ## A234739.P14319956635671796151

`A211175(eq[2, A211175(n+3)]+2)`
-/

namespace A234739.P14319956635671796151
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211175 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211175 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2)

end

end A234739.P14319956635671796151

/-!
# A234740: Sum of the eleventh powers of the first n primes.

The programs for A234740, the canonical program `A234740.P15300457128372509592` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A234740 has offset 1).

The definition of A234740 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A234740.P15300457128372509592

`∑[A079395(1+n)]`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A234740

/-- `∑[A079395(1+n)]` -/
def P15300457128372509592.Spec : Prop :=
  ∀ n, P15300457128372509592.a n = A234740 (n + 1)

theorem P15300457128372509592.correct : P15300457128372509592.Spec := by
  intro n
  simp only [A234740, Nat.add_sub_cancel]

end A234740

/-! ## A234740.P6439246985829237078

`∑[Δ[A007504(n)]^11]`
-/

namespace A234740.P6439246985829237078
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n) ^ 11

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A234740.P6439246985829237078

namespace A234740

/-- `∑[Δ[A007504(n)]^11]` -/
def P6439246985829237078.Spec : Prop :=
  ∀ n, P6439246985829237078.a n = A234740 (n + 1)

end A234740

/-! ## A234740.P9063513452870083821

`∑[A000040(1+n)^11]`
-/

namespace A234740.P9063513452870083821
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (1 + n) ^ 11

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A234740.P9063513452870083821

namespace A234740

/-- `∑[A000040(1+n)^11]` -/
def P9063513452870083821.Spec : Prop :=
  ∀ n, P9063513452870083821.a n = A234740 (n + 1)

end A234740

/-! ## A234740.P16433290066073181189

`∑[abs(Δ[A008348(n)])^11]`
-/

namespace A234740.P16433290066073181189
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008348 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n| ^ 11

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A234740.P16433290066073181189

namespace A234740

/-- `∑[abs(Δ[A008348(n)])^11]` -/
def P16433290066073181189.Spec : Prop :=
  ∀ n, P16433290066073181189.a n = A234740 (n + 1)

end A234740

/-! ## A234740.P5417224639518741201

`∑[A001248(n+1)²²*A030078(n+1)]`
-/

namespace A234740.P5417224639518741201
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A001248 (n + 1) ^ 2) ^ 2 * A030078 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A234740.P5417224639518741201

namespace A234740

/-- `∑[A001248(n+1)²²*A030078(n+1)]` -/
def P5417224639518741201.Spec : Prop :=
  ∀ n, P5417224639518741201.a n = A234740 (n + 1)

end A234740

/-! ## A234740.P7153487954269940390

`∑[A030078(n+1)²²/A000040(n+1)]`
-/

namespace A234740.P7153487954269940390
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A030078 (n + 1) ^ 2) ^ 2 : ℚ) / (A000040 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A234740.P7153487954269940390

namespace A234740

/-- `∑[A030078(n+1)²²/A000040(n+1)]` -/
def P7153487954269940390.Spec : Prop :=
  ∀ n, P7153487954269940390.a n = (A234740 (n + 1) : ℚ)

end A234740

/-! ## A234740.P4223622541669009641

`∑[A008578(n+2)^11]`
-/

namespace A234740.P4223622541669009641
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 2) ^ 11

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A234740.P4223622541669009641

namespace A234740

/-- `∑[A008578(n+2)^11]` -/
def P4223622541669009641.Spec : Prop :=
  ∀ n, P4223622541669009641.a n = A234740 (n + 1)

end A234740

/-! ## A234740.P4141459482937715028

`∑[A030078(n+1)²²/A008578(n+2)]`
-/

namespace A234740.P4141459482937715028
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A030078 (n + 1) ^ 2) ^ 2 : ℚ) / (A008578 (n + 2) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A234740.P4141459482937715028

namespace A234740

/-- `∑[A030078(n+1)²²/A008578(n+2)]` -/
def P4141459482937715028.Spec : Prop :=
  ∀ n, P4141459482937715028.a n = (A234740 (n + 1) : ℚ)

end A234740

/-! ## A234740.P1571585564058961824

`∑[p?[A000961(n+1)]^11]`
-/

namespace A234740.P1571585564058961824
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000961 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n) ^ 11

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A234740.P1571585564058961824

namespace A234740

/-- `∑[p?[A000961(n+1)]^11]` -/
def P1571585564058961824.Spec : Prop :=
  ∀ n, P1571585564058961824.a n = A234740 (n + 1)

end A234740

/-! ## A234740.P6014990082261189344

`∑[record[A006530(n+2)]^11]`
-/

namespace A234740.P6014990082261189344
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n) ^ 11

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A234740.P6014990082261189344

namespace A234740

/-- `∑[record[A006530(n+2)]^11]` -/
def P6014990082261189344.Spec : Prop :=
  ∀ n, P6014990082261189344.a n = A234740 (n + 1)

end A234740

/-! ## A234740.P2402109985338545352

`∑[record[A020639(n+2)]^11]`
-/

namespace A234740.P2402109985338545352
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n) ^ 11

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A234740.P2402109985338545352

namespace A234740

/-- `∑[record[A020639(n+2)]^11]` -/
def P2402109985338545352.Spec : Prop :=
  ∀ n, P2402109985338545352.a n = A234740 (n + 1)

end A234740

/-! ## A234740.P9034851896259393923

`∑[record[A162753(n)^11]]`
-/

namespace A234740.P9034851896259393923
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162753 n ^ 11

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A234740.P9034851896259393923

namespace A234740

/-- `∑[record[A162753(n)^11]]` -/
def P9034851896259393923.Spec : Prop :=
  ∀ n, P9034851896259393923.a n = A234740 (n + 1)

end A234740

/-! ## A234740.P3371693970550048362

`∑[sqrt(A137486(n+1))]`
-/

namespace A234740.P3371693970550048362
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A137486 (n + 1) : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A234740.P3371693970550048362

namespace A234740

/-- `∑[sqrt(A137486(n+1))]` -/
def P3371693970550048362.Spec : Prop :=
  ∀ n, P3371693970550048362.a n = (A234740 (n + 1) : ℝ)

end A234740

/-! ## A234740.P14758751691763947316

`∑[record[A051698(n)^11]]`
-/

namespace A234740.P14758751691763947316
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051698 n ^ 11

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A234740.P14758751691763947316

namespace A234740

/-- `∑[record[A051698(n)^11]]` -/
def P14758751691763947316.Spec : Prop :=
  ∀ n, P14758751691763947316.a n = A234740 (n + 1)

end A234740

/-! ## A234740.P5558707779332770613

`∑[record[A014963(n+2)]^11]`
-/

namespace A234740.P5558707779332770613
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n) ^ 11

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A234740.P5558707779332770613

namespace A234740

/-- `∑[record[A014963(n+2)]^11]` -/
def P5558707779332770613.Spec : Prop :=
  ∀ n, P5558707779332770613.a n = A234740 (n + 1)

end A234740

/-! ## A234740.P3319578079229623728

`∑[A008455(A000040(n+1))]`
-/

namespace A234740.P3319578079229623728
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008455 (A000040 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A234740.P3319578079229623728

namespace A234740

/-- `∑[A008455(A000040(n+1))]` -/
def P3319578079229623728.Spec : Prop :=
  ∀ n, P3319578079229623728.a n = A234740 (n + 1)

end A234740

/-!
# A234741: a(n) is the base-2 carryless product of the prime factors of n; Encoding of the product of the polynomials over GF(2) represented by the prime factors of n (with multiplicity).

The programs for A234741, there is no canonical definition to state claims against.
-/

/-! ## A234741.P12792567066533329820

`∑[1-Δ[A236378(n)]]`
-/

namespace A234741.P12792567066533329820
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236378 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A234741.P12792567066533329820

/-! ## A234741.P646824845668759302

`1-A236378(n+1)+n`
-/

namespace A234741.P646824845668759302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A236378 (n + 1) + (n : ℤ)

end

end A234741.P646824845668759302

/-! ## A234741.P12836098370956982603

`A234742(n+1)-A236380(n+1)`
-/

namespace A234741.P12836098370956982603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234742 (n + 1) - A236380 (n + 1)

end

end A234741.P12836098370956982603

/-! ## A234741.P3630473599012195334

`n+1-(A236380(n+1)-A236379(n+1))`
-/

namespace A234741.P3630473599012195334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - (A236380 (n + 1) - A236379 (n + 1))

end

end A234741.P3630473599012195334

/-! ## A234741.P7557089803720035589

`Δ[A000217(n)-A236378(n)]-A236378(n)`
-/

namespace A234741.P7557089803720035589
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 n - A236378 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A236378 n

end

end A234741.P7557089803720035589

/-!
# A234742: Product of the binary encodings of the irreducible factors (with multiplicity) of the polynomial over GF(2) whose encoding is n.

The programs for A234742, there is no canonical definition to state claims against.
-/

/-! ## A234742.P6546322974198116203

`n+A236379(n)`
-/

namespace A234742.P6546322974198116203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) + A236379 n

end

end A234742.P6546322974198116203

/-! ## A234742.P4950133098901056914

`A236379(n)-A001489(n)`
-/

namespace A234742.P4950133098901056914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236379 n - A001489 n

end

end A234742.P4950133098901056914

/-! ## A234742.P12741745116107243048

`A236380(n)+n-A236378(n)`
-/

namespace A234742.P12741745116107243048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236380 n + ((n : ℤ) - A236378 n)

end

end A234742.P12741745116107243048

/-! ## A234742.P12469996402840433405

`A005843(n)-(n-A236379(n))`
-/

namespace A234742.P12469996402840433405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n - ((n : ℤ) - A236379 n)

end

end A234742.P12469996402840433405

/-! ## A234742.P7848027220847833167

`A236379(n)-A246425(4*n)`
-/

namespace A234742.P7848027220847833167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236379 n - A246425 (4 * n)

end

end A234742.P7848027220847833167

/-! ## A234742.P10292528964623441033

`A236379(n)-A001057(2*n)`
-/

namespace A234742.P10292528964623441033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236379 n - A001057 (2 * n)

end

end A234742.P10292528964623441033

/-! ## A234742.P8927112722724904457

`fo[A236846(n)]`
-/

namespace A234742.P8927112722724904457
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236846 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (n : ℤ)) 0

end

end A234742.P8927112722724904457

/-!
# A234743: Multiplicative permutation of integers: a(n) = A235199(A234840(n)).

The programs for A234743, there is no canonical definition to state claims against.
-/

/-! ## A234743.P2804241212607402584

`A235199(A234840(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A234743.P2804241212607402584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235199 (A234840 n).toNat

end

end A234743.P2804241212607402584

/-! ## A234743.P769785288782913141

`fo[A234744(n)]`
-/

namespace A234743.P769785288782913141
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234744 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (n : ℤ)) 0

end

end A234743.P769785288782913141

/-! ## A234743.P5135059025388597592

`A234840(n)+A004198(A277198(3*n+2))`
-/

namespace A234743.P5135059025388597592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234840 n + A004198 (A277198 (3 * n + 2)).toNat

end

end A234743.P5135059025388597592

/-!
# A234744: Multiplicative permutation of integers: a(n) = A234840(A235199(n)).

The programs for A234744, there is no canonical definition to state claims against.
-/

/-! ## A234744.P17635026923441512791

`A234840(A235199(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A234744.P17635026923441512791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234840 (A235199 n).toNat

end

end A234744.P17635026923441512791

/-! ## A234744.P17657659327655555878

`A235199(A234743(A235199(2*n)-A235199(n)))`
-/

namespace A234744.P17657659327655555878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235199 (A234743 (A235199 (2 * n) - A235199 n).toNat).toNat

end

end A234744.P17657659327655555878

/-! ## A234744.P8506012468644350022

`fo[A234743(n)]`
-/

namespace A234744.P8506012468644350022
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234743 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (n : ℤ)) 0

end

end A234744.P8506012468644350022

/-!
# A234745: Blue-code restricted to reducible polynomials over GF(2): a(n) = A193231(A091242(n)).

The programs for A234745, there is no canonical definition to state claims against.
-/

/-! ## A234745.P9040480420794203958

`A193231(A091242(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A234745.P9040480420794203958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193231 (A091242 (n + 1)).toNat

end

end A234745.P9040480420794203958

/-! ## A234745.P17705813528486741198

`filter[A193231(n), A091247(#)]`
-/

namespace A234745.P17705813528486741198
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193231 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A091247 (f1 j).toNat = 1) n)

end

end A234745.P17705813528486741198

/-! ## A234745.P7437124880904511880

`A091242(A234746(n+1))`
-/

namespace A234745.P7437124880904511880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091242 (A234746 (n + 1)).toNat

end

end A234745.P7437124880904511880

/-! ## A234745.P11096342419788491126

`A234612(A003188(A091242(A054429(A054429(n+1)))))`
-/

namespace A234745.P11096342419788491126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234612 (A003188 (A091242 (A054429 (A054429 (n + 1)).toNat).toNat).toNat).toNat

end

end A234745.P11096342419788491126

/-! ## A234745.P7316050381841371064

`A245446(A056539(A091242(A056539(A056539(n+1)))))`
-/

namespace A234745.P7316050381841371064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245446 (A056539 (A091242 (A056539 (A056539 (n + 1)).toNat).toNat).toNat).toNat

end

end A234745.P7316050381841371064

/-! ## A234745.P8219389200265169073

`A246201(A246164(A091242(A246163(A246164(n+1)))))`
-/

namespace A234745.P8219389200265169073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246201 (A246164 (A091242 (A246163 (A246164 (n + 1)).toNat).toNat).toNat).toNat

end

end A234745.P8219389200265169073

/-!
# A234746: Self-inverse permutation of integers induced by the restriction of blue-code to reducible polynomials over GF(2): a(n) = A091246(A193231(A091242(n))).

The programs for A234746, there is no canonical definition to state claims against.
-/

/-! ## A234746.P557952076467536695

`A091246(A234745(n+1))`
-/

namespace A234746.P557952076467536695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091246 (A234745 (n + 1)).toNat

end

end A234746.P557952076467536695

/-! ## A234746.P4311516607644562281

`A091246(A193231(A091242(n+1)))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A234746.P4311516607644562281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091246 (A193231 (A091242 (n + 1)).toNat).toNat

end

end A234746.P4311516607644562281

/-! ## A234746.P3727106602996329772

`A091245(A234745(n+1))`
-/

namespace A234746.P3727106602996329772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091245 (A234745 (n + 1)).toNat

end

end A234746.P3727106602996329772

/-!
# A234747: Self-inverse and multiplicative permutation of natural numbers, A091202-conjugate of Blue code: a(n) = A091203(A193231(A091202(n))).

The programs for A234747, there is no canonical definition to state claims against.
-/

/-! ## A234747.P6084449698650108208

`A091203(A193231(A091202(n)))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A234747.P6084449698650108208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091203 (A193231 (A091202 n).toNat).toNat

end

end A234747.P6084449698650108208

/-!
# A234748: Self-inverse and multiplicative permutation of natural numbers, A235041-conjugate of Blue code: a(n) = A235042(A193231(A235041(n))).

The programs for A234748, there is no canonical definition to state claims against.
-/

/-! ## A234748.P13393913901288046032

`A235042(A193231(A235041(n)))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A234748.P13393913901288046032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235042 (A193231 (A235041 n).toNat).toNat

end

end A234748.P13393913901288046032

/-!
# A234749: Fixed points of permutation A234746.

The programs for A234749, there is no canonical definition to state claims against.
-/

/-! ## A234749.P2848505155218995555

`eq[n+1, A234746(n+1)]+1`
-/

namespace A234749.P2848505155218995555
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234746 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A234749.P2848505155218995555

/-! ## A234749.P5627709103163417125

`eq[n, A234746(A028310(n))]`
-/

namespace A234749.P5627709103163417125
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234746 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A234749.P5627709103163417125

/-! ## A234749.P13995458018645219040

`eq[n, A234746(A065033(2*n))]`
-/

namespace A234749.P13995458018645219040
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234746 (A065033 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A234749.P13995458018645219040

/-! ## A234749.P17269808162654397045

`eq[n, A234746(A123108(2*n))]`
-/

namespace A234749.P17269808162654397045
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234746 (A123108 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A234749.P17269808162654397045

/-! ## A234749.P10498657077794269871

`eq[n, A234746(A000007(n)+n)]`
-/

namespace A234749.P10498657077794269871
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234746 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A234749.P10498657077794269871

/-! ## A234749.P15527080125103403135

`eq[A091242(n+1), A234745(n+1)]+1`
-/

namespace A234749.P15527080125103403135
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091242 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234745 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A234749.P15527080125103403135

/-! ## A234749.P18066228007549386089

`A153152(eq[A091242(n+1), A234745(n+1)])`
-/

namespace A234749.P18066228007549386089
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091242 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234745 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153152 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A234749.P18066228007549386089

/-!
# A234750: Blue-code restricted to irreducible polynomials over GF(2): a(n) = A193231(A014580(n)).

The programs for A234750, there is no canonical definition to state claims against.
-/

/-! ## A234750.P12895674119061107630

`A193231(A014580(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A234750.P12895674119061107630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193231 (A014580 (n + 1)).toNat

end

end A234750.P12895674119061107630

/-! ## A234750.P14378761507539502104

`A014580(A234751(1+n))`
-/

namespace A234750.P14378761507539502104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014580 (A234751 (1 + n)).toNat

end

end A234750.P14378761507539502104

/-! ## A234750.P17804999881214203448

`filter[A193231(n), A091225(#)]`
-/

namespace A234750.P17804999881214203448
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193231 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A091225 (f1 j).toNat = 1) n)

end

end A234750.P17804999881214203448

/-! ## A234750.P13859042918336610540

`A091202(p?[A234747(n)])`
-/

namespace A234750.P13859042918336610540
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234747 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091202 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A234750.P13859042918336610540

/-! ## A234750.P8069544494687875543

`A245703(A244987(A000040(A245704(n+1))))`
-/

namespace A234750.P8069544494687875543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245703 (A244987 (A000040 (A245704 (n + 1)).toNat).toNat).toNat

end

end A234750.P8069544494687875543

/-!
# A234751: Self-inverse permutation of integers induced by the restriction of blue-code to irreducible polynomials over GF(2): a(n) = A091227(A193231(A014580(n))).

The programs for A234751, there is no canonical definition to state claims against.
-/

/-! ## A234751.P4378757080026716285

`A091227(A234750(n+1))`
-/

namespace A234751.P4378757080026716285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091227 (A234750 (n + 1)).toNat

end

end A234751.P4378757080026716285

/-! ## A234751.P16912263068039563785

`A091227(A193231(A014580(n+1)))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A234751.P16912263068039563785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091227 (A193231 (A014580 (n + 1)).toNat).toNat

end

end A234751.P16912263068039563785

/-! ## A234751.P9053941437379102095

`A000720(p?[A234747(n)])`
-/

namespace A234751.P9053941437379102095
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234747 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A234751.P9053941437379102095

/-! ## A234751.P8575876351609850980

`A058933(p?[A234747(n)])`
-/

namespace A234751.P8575876351609850980
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234747 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058933 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A234751.P8575876351609850980

/-! ## A234751.P6614575631488639139

`A061395(p?[A234747(n)])`
-/

namespace A234751.P6614575631488639139
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234747 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A234751.P6614575631488639139

/-! ## A234751.P5646462495368086369

`A263297(p?[A234747(n)])`
-/

namespace A234751.P5646462495368086369
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234747 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263297 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A234751.P5646462495368086369

/-! ## A234751.P2611886593672400523

`A049084(p?[A234747(n)])`
-/

namespace A234751.P2611886593672400523
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234747 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049084 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A234751.P2611886593672400523

/-! ## A234751.P8302681389075136020

`A056239(p?[A234747(n)])`
-/

namespace A234751.P8302681389075136020
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234747 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A234751.P8302681389075136020

/-! ## A234751.P2080898080237848498

`A252464(p?[A234747(n)])`
-/

namespace A234751.P2080898080237848498
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234747 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252464 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A234751.P2080898080237848498

/-! ## A234751.P15173327554231594875

`A091226(A234750(n+1))`
-/

namespace A234751.P15173327554231594875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091226 (A234750 (n + 1)).toNat

end

end A234751.P15173327554231594875

/-!
# A234752: Binary encodings of reducible polynomials over GF(2)that are fixed by blue code: a(n) = A091242(A234749(n)).

The programs for A234752, there is no canonical definition to state claims against.
-/

/-! ## A234752.P9830386180351686899

`A091242(A234749(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A234752.P9830386180351686899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091242 (A234749 (n + 1)).toNat

end

end A234752.P9830386180351686899

/-! ## A234752.P553068754988534940

`filter[A118666(n), A091247(#)]`
-/

namespace A234752.P553068754988534940
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118666 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A091247 (f1 j).toNat = 1) n)

end

end A234752.P553068754988534940

/-! ## A234752.P14153432879327143373

`A234745(A234749(C(1+n, n)))`
-/

namespace A234752.P14153432879327143373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234745 (A234749 (Nat.choose (1 + n) n)).toNat

end

end A234752.P14153432879327143373

/-! ## A234752.P12473419916520062098

`∩[A091242(n+1), A118666(n)]`
-/

namespace A234752.P12473419916520062098
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091242 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118666 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A234752.P12473419916520062098

/-!
# A234753: Number of (n+1) X (1+1) 0..3 arrays with 2 X 2 edge jumps all no more than +1 in one of the clockwise or counterclockwise directions or both.

The programs for A234753, the canonical program `A234753.P15758567783427942915` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A234753 has offset 1).

The definition of A234753 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 104 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A234753.P15758567783427942915

`ogf((110+134x-244x^2-114x^3+66x^4+16x^5)/(1-8x-10x^2+16x^3+8x^4-4x^5-x^6))`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A234753

/-- `ogf((110+134x-244x^2-114x^3+66x^4+16x^5)/(1-8x-10x^2+16x^3+8x^4-4x^5-x^6))` -/
def P15758567783427942915.Spec : Prop :=
  ∀ n, P15758567783427942915.a n = A234753 (n + 1)

theorem P15758567783427942915.correct : P15758567783427942915.Spec := by
  intro n
  simp only [A234753, Nat.add_sub_cancel]

end A234753

/-! ## A234753.P10956356366758420922

`A234760(∑[n]+1)`
-/

namespace A234753.P10956356366758420922
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234760 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A234753.P10956356366758420922

namespace A234753

/-- `A234760(∑[n]+1)` -/
def P10956356366758420922.Spec : Prop :=
  ∀ n, P10956356366758420922.a n = A234753 (n + 1)

end A234753

/-! ## A234753.P8218516149563913265

`record[A010054(n)*A234760(n+1)]`
-/

namespace A234753.P8218516149563913265
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A234760 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A234753.P8218516149563913265

namespace A234753

/-- `record[A010054(n)*A234760(n+1)]` -/
def P8218516149563913265.Spec : Prop :=
  ∀ n, P8218516149563913265.a n = A234753 (n + 1)

end A234753

/-! ## A234753.P7216989238855466385

`record[root(A234760(n+1), A059268(n))]`
-/

namespace A234753.P7216989238855466385
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A234760 (n + 1) : ℝ) ^ (1 / (A059268 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A234753.P7216989238855466385

namespace A234753

/-- `record[root(A234760(n+1), A059268(n))]` -/
def P7216989238855466385.Spec : Prop :=
  ∀ n, P7216989238855466385.a n = (A234753 (n + 1) : ℝ)

end A234753

/-! ## A234753.P13506361156160851364

`record[root(A234760(n+1), A091150(n))]`
-/

namespace A234753.P13506361156160851364
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A234760 (n + 1) : ℝ) ^ (1 / (A091150 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A234753.P13506361156160851364

namespace A234753

/-- `record[root(A234760(n+1), A091150(n))]` -/
def P13506361156160851364.Spec : Prop :=
  ∀ n, P13506361156160851364.a n = (A234753 (n + 1) : ℝ)

end A234753

/-!
# A234754: Number of (n+1)X(2+1) 0..3 arrays with 2X2 edge jumps all no more than +1 in one of the clockwise or counterclockwise directions or both.

The programs for A234754, there is no canonical definition to state claims against.
-/

/-! ## A234754.P4849512544786864173

`A234760(∑[n+1]+2)`
-/

namespace A234754.P4849512544786864173
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234760 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A234754.P4849512544786864173

/-! ## A234754.P5277717706577688443

`record[A010054(n)*A234760(n+2)]`
-/

namespace A234754.P5277717706577688443
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A234760 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A234754.P5277717706577688443

/-! ## A234754.P9150538671207622618

`record[root(A234760(n+2), A059268(n))]`
-/

namespace A234754.P9150538671207622618
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A234760 (n + 2) : ℝ) ^ (1 / (A059268 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A234754.P9150538671207622618

/-! ## A234754.P355295177547485919

`record[gcd(A116598(n+1), A234760(n+2))]`
-/

namespace A234754.P355295177547485919
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A116598 (n + 1)) (A234760 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A234754.P355295177547485919

/-! ## A234754.P15276451018307213923

`record[A234760(A198453(n+1))]`
-/

namespace A234754.P15276451018307213923
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234760 (A198453 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A234754.P15276451018307213923

/-!
# A234755: Number of (n+1)X(3+1) 0..3 arrays with 2X2 edge jumps all no more than +1 in one of the clockwise or counterclockwise directions or both.

The programs for A234755, there is no canonical definition to state claims against.
-/

/-! ## A234755.P14177975032055649710

`A234760(∑[n+2]+4)`
-/

namespace A234755.P14177975032055649710
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234760 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A234755.P14177975032055649710

/-! ## A234755.P6158288210849544469

`record[A234760(A198464(n+1))]`
-/

namespace A234755.P6158288210849544469
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234760 (A198464 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A234755.P6158288210849544469

/-!
# A234756: Number of (n+1)X(4+1) 0..3 arrays with 2X2 edge jumps all no more than +1 in one of the clockwise or counterclockwise directions or both.

The programs for A234756, there is no canonical definition to state claims against.
-/

/-! ## A234756.P18065760149768310211

`A234760(A374004(n+1))`
-/

namespace A234756.P18065760149768310211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234760 (A374004 (n + 1)).toNat

end

end A234756.P18065760149768310211

/-! ## A234756.P2917373234867987372

`A234760(A141214(n+1))`
-/

namespace A234756.P2917373234867987372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234760 (A141214 (n + 1)).toNat

end

end A234756.P2917373234867987372

/-!
# A234761: Number of (n+1)X(n+1) 0..3 arrays with 2X2 edge jumps all no more than +1 in one of the clockwise or counterclockwise directions but not both.

The programs for A234761, there is no canonical definition to state claims against.
-/

/-! ## A234761.P14493257925443990432

`A234769(∑[4*n]+1)`
-/

namespace A234761.P14493257925443990432
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234769 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A234761.P14493257925443990432

/-! ## A234761.P14505614253186753364

`record[gcd(A114327(n), A234769(n+1))]`
-/

namespace A234761.P14505614253186753364
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A114327 n) (A234769 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A234761.P14505614253186753364

/-!
# A234762: Number of (n+1) X (1+1) 0..3 arrays with 2 X 2 edge jumps all no more than +1 in one of the clockwise or counterclockwise directions but not both.

The programs for A234762, the canonical program `A234762.P11264419563407377142` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A234762 has offset 1).

The definition of A234762 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 163 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A234762.P11264419563407377142

`ogf((56+184x-108x^2-420x^3-156x^4)/(1-x-14x^2+x^3+25x^4+10x^5))`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A234762

/-- `ogf((56+184x-108x^2-420x^3-156x^4)/(1-x-14x^2+x^3+25x^4+10x^5))` -/
def P11264419563407377142.Spec : Prop :=
  ∀ n, P11264419563407377142.a n = A234762 (n + 1)

theorem P11264419563407377142.correct : P11264419563407377142.Spec := by
  intro n
  simp only [A234762, Nat.add_sub_cancel]

end A234762

/-! ## A234762.P9221029283450331358

`A234769(∑[n]+1)`
-/

namespace A234762.P9221029283450331358
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234769 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A234762.P9221029283450331358

namespace A234762

/-- `A234769(∑[n]+1)` -/
def P9221029283450331358.Spec : Prop :=
  ∀ n, P9221029283450331358.a n = A234762 (n + 1)

end A234762

/-! ## A234762.P11518707716963111145

`record[A010054(n)*A234769(n+1)]`
-/

namespace A234762.P11518707716963111145
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A234769 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A234762.P11518707716963111145

namespace A234762

/-- `record[A010054(n)*A234769(n+1)]` -/
def P11518707716963111145.Spec : Prop :=
  ∀ n, P11518707716963111145.a n = A234762 (n + 1)

end A234762

/-! ## A234762.P12060516854265220258

`record[A234769(n+1)/A168524(n)]`
-/

namespace A234762.P12060516854265220258
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A234769 (n + 1) : ℚ) / (A168524 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A234762.P12060516854265220258

namespace A234762

/-- `record[A234769(n+1)/A168524(n)]` -/
def P12060516854265220258.Spec : Prop :=
  ∀ n, P12060516854265220258.a n = (A234762 (n + 1) : ℚ)

end A234762

/-! ## A234762.P14695985757177137432

`record[gcd(A132896(n), A234769(n+1))]`
-/

namespace A234762.P14695985757177137432
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A132896 n) (A234769 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A234762.P14695985757177137432

namespace A234762

/-- `record[gcd(A132896(n), A234769(n+1))]` -/
def P14695985757177137432.Spec : Prop :=
  ∀ n, (P14695985757177137432.a n : ℤ) = A234762 (n + 1)

end A234762

/-!
# A234763: Number of (n+1)X(2+1) 0..3 arrays with 2X2 edge jumps all no more than +1 in one of the clockwise or counterclockwise directions but not both.

The programs for A234763, there is no canonical definition to state claims against.
-/

/-! ## A234763.P5705186768534098017

`A234769(∑[n+1]+2)`
-/

namespace A234763.P5705186768534098017
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234769 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A234763.P5705186768534098017

/-! ## A234763.P15796784980836225167

`record[A010054(n)*A234769(n+2)]`
-/

namespace A234763.P15796784980836225167
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A234769 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A234763.P15796784980836225167

/-! ## A234763.P11871488638984861117

`record[A234769(Δ[A003453(n+5)])]`
-/

namespace A234763.P11871488638984861117
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003453 (n + 5)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234769 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A234763.P11871488638984861117

/-!
# A234764: Number of (n+1)X(3+1) 0..3 arrays with 2X2 edge jumps all no more than +1 in one of the clockwise or counterclockwise directions but not both.

The programs for A234764, there is no canonical definition to state claims against.
-/

/-! ## A234764.P13336989125937628987

`A234769(∑[n+2]+4)`
-/

namespace A234764.P13336989125937628987
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234769 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A234764.P13336989125937628987

/-!
# A234765: Number of (n+1)X(4+1) 0..3 arrays with 2X2 edge jumps all no more than +1 in one of the clockwise or counterclockwise directions but not both.

The programs for A234765, there is no canonical definition to state claims against.
-/

/-! ## A234765.P7036947081644657592

`A234769(A374004(n+1))`
-/

namespace A234765.P7036947081644657592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234769 (A374004 (n + 1)).toNat

end

end A234765.P7036947081644657592

/-! ## A234765.P2260563396485904767

`A234769(A141214(n+1))`
-/

namespace A234765.P2260563396485904767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234769 (A141214 (n + 1)).toNat

end

end A234765.P2260563396485904767

/-!
# A234766: Number of (n+1)X(5+1) 0..3 arrays with 2X2 edge jumps all no more than +1 in one of the clockwise or counterclockwise directions but not both.

The programs for A234766, there is no canonical definition to state claims against.
-/

/-! ## A234766.P11769389972865055158

`A234769(A374005(n+1))`
-/

namespace A234766.P11769389972865055158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234769 (A374005 (n + 1)).toNat

end

end A234766.P11769389972865055158

/-!
# A234767: Number of (n+1) X (6+1) 0..3 arrays with 2 X 2 edge jumps all no more than +1 in one of the clockwise or counterclockwise directions but not both.

The programs for A234767, there is no canonical definition to state claims against.
-/

/-! ## A234767.P3099570801676608569

`A234769(A374007(n+1))`
-/

namespace A234767.P3099570801676608569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234769 (A374007 (n + 1)).toNat

end

end A234767.P3099570801676608569

/-!
# A234768: Number of (n+1)X(7+1) 0..3 arrays with 2X2 edge jumps all no more than +1 in one of the clockwise or counterclockwise directions but not both.

The programs for A234768, there is no canonical definition to state claims against.
-/

/-! ## A234768.P17847915723515722833

`A234769(A374008(n+1))`
-/

namespace A234768.P17847915723515722833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234769 (A374008 (n + 1)).toNat

end

end A234768.P17847915723515722833

/-!
# A234770: Number of (n+1) X (1+1) 0..4 arrays with 2 X 2 edge jumps all no more than +1 in one of the clockwise or counterclockwise directions but not both.

The programs for A234770, there is no canonical definition to state claims against.
-/

/-! ## A234770.P1062548565733724658

`A234777(∑[n]+1)`
-/

namespace A234770.P1062548565733724658
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234777 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A234770.P1062548565733724658

/-! ## A234770.P2854543966876049434

`record[A234777(A114091(n+1))]`
-/

namespace A234770.P2854543966876049434
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234777 (A114091 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A234770.P2854543966876049434

/-! ## A234770.P17063295745200136125

`record[A010054(n)*A234777(n+1)]`
-/

namespace A234770.P17063295745200136125
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A234777 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A234770.P17063295745200136125

/-! ## A234770.P7606440677173744246

`record[A234777(n+1)/A168524(n)]`
-/

namespace A234770.P7606440677173744246
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A234777 (n + 1) : ℚ) / (A168524 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A234770.P7606440677173744246

/-!
# A234771: Number of (n+1)X(2+1) 0..4 arrays with 2X2 edge jumps all no more than +1 in one of the clockwise or counterclockwise directions but not both.

The programs for A234771, there is no canonical definition to state claims against.
-/

/-! ## A234771.P12594003448546102515

`A234777(∑[n+1]+2)`
-/

namespace A234771.P12594003448546102515
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234777 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A234771.P12594003448546102515

/-! ## A234771.P3308250504588758594

`record[A234777(A114091(n+1)+1)]`
-/

namespace A234771.P3308250504588758594
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234777 (A114091 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A234771.P3308250504588758594

/-! ## A234771.P1243701893871093686

`record[A010054(n)*A234777(n+2)]`
-/

namespace A234771.P1243701893871093686
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A234777 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A234771.P1243701893871093686

/-! ## A234771.P12088752200290863632

`record[gcd(A092921(n), A234777(n+3))]`
-/

namespace A234771.P12088752200290863632
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A092921 n) (A234777 (n + 3))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A234771.P12088752200290863632

/-! ## A234771.P7499289037408137390

`record[A234777(A000096(val(n+1, 2)+1))]`
-/

namespace A234771.P7499289037408137390
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234777 (A000096 (SequenceMachineLib.valuation (n + 1) 2 + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A234771.P7499289037408137390

/-!
# A234772: Number of (n+1)X(3+1) 0..4 arrays with 2X2 edge jumps all no more than +1 in one of the clockwise or counterclockwise directions but not both.

The programs for A234772, there is no canonical definition to state claims against.
-/

/-! ## A234772.P17406998677480763756

`A234777(∑[n+2]+4)`
-/

namespace A234772.P17406998677480763756
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234777 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A234772.P17406998677480763756

/-!
# A234773: Number of (n+1)X(4+1) 0..4 arrays with 2X2 edge jumps all no more than +1 in one of the clockwise or counterclockwise directions but not both.

The programs for A234773, there is no canonical definition to state claims against.
-/

/-! ## A234773.P1484208312371062599

`A234777(A374004(n+1))`
-/

namespace A234773.P1484208312371062599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234777 (A374004 (n + 1)).toNat

end

end A234773.P1484208312371062599

/-! ## A234773.P7619217950572345758

`A234777(A141214(n+1))`
-/

namespace A234773.P7619217950572345758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234777 (A141214 (n + 1)).toNat

end

end A234773.P7619217950572345758

/-!
# A234774: Number of (n+1)X(5+1) 0..4 arrays with 2X2 edge jumps all no more than +1 in one of the clockwise or counterclockwise directions but not both.

The programs for A234774, there is no canonical definition to state claims against.
-/

/-! ## A234774.P1591574996254679620

`A234777(A374005(n+1))`
-/

namespace A234774.P1591574996254679620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234777 (A374005 (n + 1)).toNat

end

end A234774.P1591574996254679620

/-!
# A234775: Number of (n+1) X (6+1) 0..4 arrays with 2 X 2 edge jumps all no more than +1 in one of the clockwise or counterclockwise directions but not both.

The programs for A234775, there is no canonical definition to state claims against.
-/

/-! ## A234775.P16481775464217669217

`A234777(A374007(n+1))`
-/

namespace A234775.P16481775464217669217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234777 (A374007 (n + 1)).toNat

end

end A234775.P16481775464217669217

/-!
# A234776: Number of (n+1)X(7+1) 0..4 arrays with 2X2 edge jumps all no more than +1 in one of the clockwise or counterclockwise directions but not both.

The programs for A234776, there is no canonical definition to state claims against.
-/

/-! ## A234776.P15370912896328742855

`A234777(A374008(n+1))`
-/

namespace A234776.P15370912896328742855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234777 (A374008 (n + 1)).toNat

end

end A234776.P15370912896328742855

/-!
# A234778: Number of (n+1)X(n+1) 0..3 arrays with no adjacent elements equal and with each 2X2 subblock having the number of clockwise edge increases equal to the number of counterclockwise edge increases.

The programs for A234778, there is no canonical definition to state claims against.
-/

/-! ## A234778.P17308984157209000384

`4*A068748(n+2)`
-/

namespace A234778.P17308984157209000384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A068748 (n + 2)

end

end A234778.P17308984157209000384

/-! ## A234778.P8147643101249840013

`4/3*A209512(n+1)`
-/

namespace A234778.P8147643101249840013
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (4 : ℚ) / 3 * (A209512 (n + 1) : ℚ)

end

end A234778.P8147643101249840013

/-! ## A234778.P8279264137350362736

`A234786((n+1)²+n²)`
-/

namespace A234778.P8279264137350362736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234786 ((n + 1) ^ 2 + n ^ 2)

end

end A234778.P8279264137350362736

/-!
# A234779: Number of (n+1) X (1+1) 0..3 arrays with no adjacent elements equal and with each 2 X 2 subblock having the number of clockwise edge increases equal to the number of counterclockwise edge increases.

The programs for A234779, the canonical program `A234779.P4396583905824766730` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A234779 has offset 1).

The definition of A234779 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 122 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A234779.P7676968618408613988

`ogf((76-48x)/(1-7x+4x^2))`
-/

namespace A234779.P7676968618408613988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [76, -48] [1, -7, 4] n

end

end A234779.P7676968618408613988

namespace A234779

/-- `ogf((76-48x)/(1-7x+4x^2))` -/
def P7676968618408613988.Spec : Prop :=
  ∀ n, P7676968618408613988.a n = A234779 (n + 1)

end A234779

/-! ## A234779.P4396583905824766730

`7*a(n-1)-4*a(n-2)` with `a(0)=76, a(1)=484`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A234779

/-- `7*a(n-1)-4*a(n-2)` -/
def P4396583905824766730.Spec : Prop :=
  ∀ n, P4396583905824766730.a n = A234779 (n + 1)

theorem P4396583905824766730.correct : P4396583905824766730.Spec := by
  intro n
  simp only [A234779, Nat.add_sub_cancel]

end A234779

/-! ## A234779.P6422669842663884538

`4*A138977(2+n)`
-/

namespace A234779.P6422669842663884538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A138977 (2 + n)

end

end A234779.P6422669842663884538

namespace A234779

/-- `4*A138977(2+n)` -/
def P6422669842663884538.Spec : Prop :=
  ∀ n, P6422669842663884538.a n = A234779 (n + 1)

end A234779

/-! ## A234779.P2528919440707855168

`Δ[2*A190973(n+2)]`
-/

namespace A234779.P2528919440707855168
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A190973 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A234779.P2528919440707855168

namespace A234779

/-- `Δ[2*A190973(n+2)]` -/
def P2528919440707855168.Spec : Prop :=
  ∀ n, P2528919440707855168.a n = A234779 (n + 1)

end A234779

/-! ## A234779.P6583502168003434090

`A138977(n+2)+A223557(n+3)/3`
-/

namespace A234779.P6583502168003434090
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138977 (n + 2) : ℚ) + (A223557 (n + 3) : ℚ) / 3

end

end A234779.P6583502168003434090

namespace A234779

/-- `A138977(n+2)+A223557(n+3)/3` -/
def P6583502168003434090.Spec : Prop :=
  ∀ n, P6583502168003434090.a n = (A234779 (n + 1) : ℚ)

end A234779

/-!
# A234780: Number of (n+1) X (2+1) 0..3 arrays with no adjacent elements equal and with each 2 X 2 subblock having the number of clockwise edge increases equal to the number of counterclockwise edge increases.

The programs for A234780, there is no canonical definition to state claims against.
-/

/-! ## A234780.P14843001046743370497

`4*A138978(2+n)`
-/

namespace A234780.P14843001046743370497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A138978 (2 + n)

end

end A234780.P14843001046743370497

/-! ## A234780.P572414034126222525

`A234786(∑[n+1]+2)`
-/

namespace A234780.P572414034126222525
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234786 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A234780.P572414034126222525

/-! ## A234780.P13584315374757528879

`record[A234786(Δ[A003453(n+5)])]`
-/

namespace A234780.P13584315374757528879
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003453 (n + 5)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234786 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A234780.P13584315374757528879

/-! ## A234780.P8037166047729965125

`4*A222169(A167614(n+2))`
-/

namespace A234780.P8037166047729965125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A222169 (A167614 (n + 2)).toNat

end

end A234780.P8037166047729965125

/-! ## A234780.P10826157409612242508

`4*A222169(A034856(n+3))`
-/

namespace A234780.P10826157409612242508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A222169 (A034856 (n + 3)).toNat

end

end A234780.P10826157409612242508

/-!
# A234781: Number of (n+1)X(3+1) 0..3 arrays with no adjacent elements equal and with each 2X2 subblock having the number of clockwise edge increases equal to the number of counterclockwise edge increases.

The programs for A234781, there is no canonical definition to state claims against.
-/

/-! ## A234781.P9872781930140509638

`4*A138979(2+n)`
-/

namespace A234781.P9872781930140509638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A138979 (2 + n)

end

end A234781.P9872781930140509638

/-! ## A234781.P6878795887888720397

`A206132(1+n)-8`
-/

namespace A234781.P6878795887888720397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206132 (1 + n) - 8

end

end A234781.P6878795887888720397

/-! ## A234781.P16489939150511233392

`A234786(∑[n+2]+4)`
-/

namespace A234781.P16489939150511233392
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234786 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A234781.P16489939150511233392

/-!
# A234782: Number of (n+1)X(4+1) 0..3 arrays with no adjacent elements equal and with each 2X2 subblock having the number of clockwise edge increases equal to the number of counterclockwise edge increases.

The programs for A234782, there is no canonical definition to state claims against.
-/

/-! ## A234782.P5410949669100080644

`4*A222166(2+n)`
-/

namespace A234782.P5410949669100080644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A222166 (2 + n)

end

end A234782.P5410949669100080644

/-! ## A234782.P9705163263337793890

`A206133(1+n)-8`
-/

namespace A234782.P9705163263337793890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206133 (1 + n) - 8

end

end A234782.P9705163263337793890

/-! ## A234782.P12111181812056052167

`4/3*A209513(n+1)`
-/

namespace A234782.P12111181812056052167
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (4 : ℚ) / 3 * (A209513 (n + 1) : ℚ)

end

end A234782.P12111181812056052167

/-! ## A234782.P4861876524286906786

`A234786(A167614(n+2)+1)`
-/

namespace A234782.P4861876524286906786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234786 (A167614 (n + 2) + 1).toNat

end

end A234782.P4861876524286906786

/-! ## A234782.P15198119354168109182

`A234786(A141214(n+1))`
-/

namespace A234782.P15198119354168109182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234786 (A141214 (n + 1)).toNat

end

end A234782.P15198119354168109182

/-!
# A234783: Number of (n+1)X(5+1) 0..3 arrays with no adjacent elements equal and with each 2X2 subblock having the number of clockwise edge increases equal to the number of counterclockwise edge increases.

The programs for A234783, there is no canonical definition to state claims against.
-/

/-! ## A234783.P13147368418472799241

`4*A222167(n+2)`
-/

namespace A234783.P13147368418472799241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A222167 (n + 2)

end

end A234783.P13147368418472799241

/-! ## A234783.P14873948993988758571

`A206134(n+1)-8`
-/

namespace A234783.P14873948993988758571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206134 (n + 1) - 8

end

end A234783.P14873948993988758571

/-! ## A234783.P10225675028842326103

`4/3*A209514(n+1)`
-/

namespace A234783.P10225675028842326103
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (4 : ℚ) / 3 * (A209514 (n + 1) : ℚ)

end

end A234783.P10225675028842326103

/-! ## A234783.P6705651504772220783

`A222167(n+2)+A209514(n+1)`
-/

namespace A234783.P6705651504772220783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222167 (n + 2) + A209514 (n + 1)

end

end A234783.P6705651504772220783

/-! ## A234783.P7721358617975419078

`lcm(4, A222167(n+2)%A206134(n+1))`
-/

namespace A234783.P7721358617975419078
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 4 (Int.tmod (A222167 (n + 2)) (A206134 (n + 1)))

end

end A234783.P7721358617975419078

/-!
# A234784: Number of (n+1)X(6+1) 0..3 arrays with no adjacent elements equal and with each 2X2 subblock having the number of clockwise edge increases equal to the number of counterclockwise edge increases.

The programs for A234784, there is no canonical definition to state claims against.
-/

/-! ## A234784.P1042199942142428342

`4*A222168(n+2)`
-/

namespace A234784.P1042199942142428342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A222168 (n + 2)

end

end A234784.P1042199942142428342

/-! ## A234784.P11082072959901947126

`A206135(n+1)-8`
-/

namespace A234784.P11082072959901947126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206135 (n + 1) - 8

end

end A234784.P11082072959901947126

/-! ## A234784.P15648112236188875103

`4/3*A209515(n+1)`
-/

namespace A234784.P15648112236188875103
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (4 : ℚ) / 3 * (A209515 (n + 1) : ℚ)

end

end A234784.P15648112236188875103

/-! ## A234784.P5073934594326604

`A234786(A374007(n+1))`
-/

namespace A234784.P5073934594326604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234786 (A374007 (n + 1)).toNat

end

end A234784.P5073934594326604

/-!
# A234785: Number of (n+1)X(7+1) 0..3 arrays with no adjacent elements equal and with each 2X2 subblock having the number of clockwise edge increases equal to the number of counterclockwise edge increases.

The programs for A234785, there is no canonical definition to state claims against.
-/

/-! ## A234785.P18083521956196560783

`A206136(n+1)-8`
-/

namespace A234785.P18083521956196560783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206136 (n + 1) - 8

end

end A234785.P18083521956196560783

/-! ## A234785.P8871996700129182659

`4/3*A209516(n+1)`
-/

namespace A234785.P8871996700129182659
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (4 : ℚ) / 3 * (A209516 (n + 1) : ℚ)

end

end A234785.P8871996700129182659

/-! ## A234785.P9859893346036701394

`A234786(A000124(n+7)-7)`
-/

namespace A234785.P9859893346036701394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234786 (A000124 (n + 7) - 7).toNat

end

end A234785.P9859893346036701394

/-!
# A234786: T(n,k)=Number of (n+1)X(k+1) 0..3 arrays with no adjacent elements equal and with each 2X2 subblock having the number of clockwise edge increases equal to the number of counterclockwise edge increases.

The programs for A234786, there is no canonical definition to state claims against.
-/

/-! ## A234786.P8310954460901543652

`4/3*A209517(n+1)`
-/

namespace A234786.P8310954460901543652
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (4 : ℚ) / 3 * (A209517 (n + 1) : ℚ)

end

end A234786.P8310954460901543652

/-! ## A234786.P18186405514589290829

`A008574(A209517(n+1)/3)`
-/

namespace A234786.P18186405514589290829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 (SequenceMachineLib.roundAway ((A209517 (n + 1) : ℚ) / 3)).toNat

end

end A234786.P18186405514589290829

/-! ## A234786.P3570118438522119844

`A008586(A209517(n+1)/3)`
-/

namespace A234786.P3570118438522119844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008586 (SequenceMachineLib.roundAway ((A209517 (n + 1) : ℚ) / 3)).toNat

end

end A234786.P3570118438522119844

/-!
# A234787: Cubes (with at least two digits) that become squares when their rightmost digit is removed.

The programs for A234787, the canonical program `A234787.P12738621845368663249` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A234787 has offset 1).

The definition of A234787 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A234787.P12738621845368663249

`1000*(n+1)^6`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A234787

/-- `1000*(n+1)^6` -/
def P12738621845368663249.Spec : Prop :=
  ∀ n, (P12738621845368663249.a n : ℤ) = A234787 (n + 1)

theorem P12738621845368663249.correct : P12738621845368663249.Spec := by
  intro n
  simp only [A234787, Nat.add_sub_cancel]

end A234787

/-! ## A234787.P15472872788969761002

`record[(10*(1-n)²)^3]`
-/

namespace A234787.P15472872788969761002
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (10 * (1 - (n : ℤ)) ^ 2) ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A234787.P15472872788969761002

namespace A234787

/-- `record[(10*(1-n)²)^3]` -/
def P15472872788969761002.Spec : Prop :=
  ∀ n, P15472872788969761002.a n = A234787 (n + 1)

end A234787

/-! ## A234787.P18227147302067428910

`∑[20+a(n-1)]^3` with `a(0)=10`
-/

namespace A234787.P18227147302067428910
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [10] fun n f1 =>
  20 + f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 3

end

end A234787.P18227147302067428910

namespace A234787

/-- `∑[20+a(n-1)]^3` -/
def P18227147302067428910.Spec : Prop :=
  ∀ n, (P18227147302067428910.a n : ℤ) = A234787 (n + 1)

end A234787

/-! ## A234787.P15829383567368415511

`(((n+1)/cos(atan(3)))^3)²`
-/

namespace A234787.P15829383567368415511
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (((n + 1 : ℝ) / Real.cos (Real.arctan (3 : ℝ))) ^ 3) ^ 2

end

end A234787.P15829383567368415511

namespace A234787

/-- `(((n+1)/cos(atan(3)))^3)²` -/
def P15829383567368415511.Spec : Prop :=
  ∀ n, P15829383567368415511.a n = (A234787 (n + 1) : ℝ)

end A234787

/-! ## A234787.P15922387302014901788

`(((n+1)/sin(acot(3)))^3)²`
-/

namespace A234787.P15922387302014901788
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (((n + 1 : ℝ) / Real.sin (SequenceMachineLib.acot (3 : ℝ))) ^ 3) ^ 2

end

end A234787.P15922387302014901788

namespace A234787

/-- `(((n+1)/sin(acot(3)))^3)²` -/
def P15922387302014901788.Spec : Prop :=
  ∀ n, P15922387302014901788.a n = (A234787 (n + 1) : ℝ)

end A234787

/-! ## A234787.P13215027715257195236

`A033583(n+1)^3`
-/

namespace A234787.P13215027715257195236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033583 (n + 1) ^ 3

end

end A234787.P13215027715257195236

namespace A234787

/-- `A033583(n+1)^3` -/
def P13215027715257195236.Spec : Prop :=
  ∀ n, P13215027715257195236.a n = A234787 (n + 1)

theorem P13215027715257195236.correct : P13215027715257195236.Spec := by
  intro n
  simp only [A234787, Nat.add_sub_cancel, A234787.P13215027715257195236.a, A234787.P12738621845368663249.a, A033583, A033583.P12285480609414282410.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A234787

/-! ## A234787.P11002148035257394427

`A017271((n+1)²)`
-/

namespace A234787.P11002148035257394427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017271 ((n + 1) ^ 2)

end

end A234787.P11002148035257394427

namespace A234787

/-- `A017271((n+1)²)` -/
def P11002148035257394427.Spec : Prop :=
  ∀ n, P11002148035257394427.a n = A234787 (n + 1)

theorem P11002148035257394427.correct : P11002148035257394427.Spec := by
  intro n
  simp only [A234787, Nat.add_sub_cancel, A234787.P11002148035257394427.a, A234787.P12738621845368663249.a, A017271, A017271.P16549421429603654595.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A234787

/-! ## A234787.P10040134188644235176

`sqrt(A017274((n+1)²))`
-/

namespace A234787.P10040134188644235176
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A017274 ((n + 1) ^ 2) : ℝ)

end

end A234787.P10040134188644235176

namespace A234787

/-- `sqrt(A017274((n+1)²))` -/
def P10040134188644235176.Spec : Prop :=
  ∀ n, P10040134188644235176.a n = (A234787 (n + 1) : ℝ)

end A234787

/-! ## A234787.P2204882736420102649

`A016851(2*(n+1)²)`
-/

namespace A234787.P2204882736420102649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016851 (2 * (n + 1) ^ 2)

end

end A234787.P2204882736420102649

namespace A234787

/-- `A016851(2*(n+1)²)` -/
def P2204882736420102649.Spec : Prop :=
  ∀ n, P2204882736420102649.a n = A234787 (n + 1)

theorem P2204882736420102649.correct : P2204882736420102649.Spec := by
  intro n
  simp only [A234787, Nat.add_sub_cancel, A234787.P2204882736420102649.a, A234787.P12738621845368663249.a, A016851, A016851.P6768670708261062492.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A234787

/-!
# A234789: Number of (n+1) X (1+1) 0..3 arrays with each 2 X 2 subblock having the number of clockwise edge increases less than or equal to the number of counterclockwise edge increases.

The programs for A234789, there is no canonical definition to state claims against.
-/

/-! ## A234789.P6710404408974513380

`ogf((204-556x+320x^2)/(1-15x+36x^2-20x^3))`
-/

namespace A234789.P6710404408974513380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [204, -556, 320] [1, -15, 36, -20] n

end

end A234789.P6710404408974513380

/-! ## A234789.P8531849050342172914

`A234796(∑[n]+1)`
-/

namespace A234789.P8531849050342172914
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234796 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A234789.P8531849050342172914

/-! ## A234789.P13408435912161084603

`record[root(A234796(n+1), A176203(n))]`
-/

namespace A234789.P13408435912161084603
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A234796 (n + 1) : ℝ) ^ (1 / (A176203 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A234789.P13408435912161084603

/-! ## A234789.P9394491830488787852

`record[gcd(A002262(n), A234796(n+1))]`
-/

namespace A234789.P9394491830488787852
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A234796 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A234789.P9394491830488787852

/-! ## A234789.P7027157787966754759

`record[A008683(A059268(n))*A234796(n+1)]`
-/

namespace A234789.P7027157787966754759
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A059268 n).toNat * A234796 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A234789.P7027157787966754759

/-!
# A234790: Number of (n+1) X (2+1) 0..3 arrays with each 2 X 2 subblock having the number of clockwise edge increases less than or equal to the number of counterclockwise edge increases.

The programs for A234790, there is no canonical definition to state claims against.
-/

/-! ## A234790.P1270428159356764363

`A234796(∑[n+1]+2)`
-/

namespace A234790.P1270428159356764363
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234796 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A234790.P1270428159356764363

/-! ## A234790.P15854028953751133331

`record[A010054(n)*A234796(n+2)]`
-/

namespace A234790.P15854028953751133331
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A234796 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A234790.P15854028953751133331

/-! ## A234790.P9483883938978461208

`record[gcd(A002262(n), A234796(n+2))]`
-/

namespace A234790.P9483883938978461208
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A234796 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A234790.P9483883938978461208

/-! ## A234790.P3198437409764022739

`record[A234796(abs(A201163(n)))]`
-/

namespace A234790.P3198437409764022739
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234796 |A201163 n|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A234790.P3198437409764022739

/-! ## A234790.P5201571645385629201

`record[A234796(Δ[A003453(n+5)])]`
-/

namespace A234790.P5201571645385629201
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003453 (n + 5)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234796 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A234790.P5201571645385629201

/-!
# A234791: Number of (n+1)X(3+1) 0..3 arrays with each 2X2 subblock having the number of clockwise edge increases less than or equal to the number of counterclockwise edge increases.

The programs for A234791, there is no canonical definition to state claims against.
-/

/-! ## A234791.P10919052179988430862

`A234796(A167614(n+1))`
-/

namespace A234791.P10919052179988430862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234796 (A167614 (n + 1)).toNat

end

end A234791.P10919052179988430862

/-! ## A234791.P13032568561045177336

`A234796(∑[n+3]+1)`
-/

namespace A234791.P13032568561045177336
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234796 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A234791.P13032568561045177336

/-!
# A234792: Number of (n+1)X(4+1) 0..3 arrays with each 2X2 subblock having the number of clockwise edge increases less than or equal to the number of counterclockwise edge increases.

The programs for A234792, there is no canonical definition to state claims against.
-/

/-! ## A234792.P16642144737623440695

`A234796(A374004(n+1))`
-/

namespace A234792.P16642144737623440695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234796 (A374004 (n + 1)).toNat

end

end A234792.P16642144737623440695

/-! ## A234792.P14195987081721100474

`A234796(A141214(n+1))`
-/

namespace A234792.P14195987081721100474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234796 (A141214 (n + 1)).toNat

end

end A234792.P14195987081721100474

/-!
# A234794: Number of (n+1)X(6+1) 0..3 arrays with each 2X2 subblock having the number of clockwise edge increases less than or equal to the number of counterclockwise edge increases.

The programs for A234794, there is no canonical definition to state claims against.
-/

/-! ## A234794.P1704317411152105662

`A234796(A052905(n+3))`
-/

namespace A234794.P1704317411152105662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234796 (A052905 (n + 3)).toNat

end

end A234794.P1704317411152105662

/-!
# A234797: E.g.f. satisfies: A'(x) = 1 + A(x) + 2*A(x)^2, where A(0)=0.

The programs for A234797, there is no canonical definition to state claims against.
-/

/-! ## A234797.P12396924788389093843

`A070667(∏[A303770(n)])`
-/

namespace A234797.P12396924788389093843
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303770 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070667 (∏ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A234797.P12396924788389093843

/-!
# A234799: Primes p such that abs(p-s) and abs(p-c) are primes, where s is the square nearest to p, and c is the cube nearest to p, c!=s.

The programs for A234799, there is no canonical definition to state claims against.
-/

/-! ## A234799.P5056927022040222517

`p?[A072499(n+1)-A345426(n+1)]`
-/

namespace A234799.P5056927022040222517
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072499 (n + 1) - A345426 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A234799.P5056927022040222517

