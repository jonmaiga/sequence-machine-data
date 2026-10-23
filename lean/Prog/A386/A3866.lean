import SequenceMachineLib
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
import Seq.B000.C011
import Seq.B000.C012
import Seq.B000.C014
import Seq.B000.C016
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C026
import Seq.B000.C028
import Seq.B000.C030
import Seq.B000.C034
import Seq.B000.C038
import Seq.B001.C000
import Seq.B001.C002
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C009
import Seq.B001.C010
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C004
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C004
import Seq.B004.C003
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C001
import Seq.B007.C000
import Seq.B007.C001
import Seq.B007.C002
import Seq.B008.C000
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
import Seq.B011.C001
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

/-!
# A386600: a(n) is the number of primes q < p = prime(n) such that p - q is a perfect square.

The programs for A386600, there is no canonical definition to state claims against.
-/

/-! ## A386600.P11799600192577501265

`A064272(A000040(n+1))`
-/

namespace A386600.P11799600192577501265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064272 (A000040 (n + 1)).toNat

end

end A386600.P11799600192577501265

/-! ## A386600.P13732283467784734834

`A064272(A008578(n+2))`
-/

namespace A386600.P13732283467784734834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064272 (A008578 (n + 2)).toNat

end

end A386600.P13732283467784734834

/-! ## A386600.P10321323638025891305

`A064272(A182986(n+2))`
-/

namespace A386600.P10321323638025891305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064272 (A182986 (n + 2)).toNat

end

end A386600.P10321323638025891305

/-! ## A386600.P3576706804593594626

`A064272(A008864(n+1)-1)`
-/

namespace A386600.P3576706804593594626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064272 (A008864 (n + 1) - 1).toNat

end

end A386600.P3576706804593594626

/-! ## A386600.P6546871605203290240

`A064272(A014692(n+1)+n)`
-/

namespace A386600.P6546871605203290240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064272 (A014692 (n + 1) + (n : ℤ)).toNat

end

end A386600.P6546871605203290240

/-! ## A386600.P10361296039695948383

`A002471(A000040(n+1))-A001511(2*n+3)`
-/

namespace A386600.P10361296039695948383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002471 (A000040 (n + 1)).toNat - A001511 (2 * n + 3)

end

end A386600.P10361296039695948383

/-! ## A386600.P1204705666132520076

`A064272(A383578(n+1))`
-/

namespace A386600.P1204705666132520076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064272 (A383578 (n + 1)).toNat

end

end A386600.P1204705666132520076

/-!
# A386602: a(n) = Sum_{k<=10^n} d(k)^2, where d(k) = number of divisors function A000005.

The programs for A386602, there is no canonical definition to state claims against.
-/

/-! ## A386602.P5165644055536994826

`A061502(10^n)`
-/

namespace A386602.P5165644055536994826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061502 (10 ^ n)

end

end A386602.P5165644055536994826

/-!
# A386603: Smallest prime p for which there are exactly n smaller primes q such that p - q is a perfect square.

The programs for A386603, there is no canonical definition to state claims against.
-/

/-! ## A386603.P7758808740675908272

`p?[A263271(n²)]`
-/

namespace A386603.P7758808740675908272
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263271 (n ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A386603.P7758808740675908272

/-!
# A386604: Irregular triangle read by rows: T(n,k) is the number of even numbers in the k-th 2-dense sublist of divisors of n, with n >= 1, k >= 1.

The programs for A386604, there is no canonical definition to state claims against.
-/

/-! ## A386604.P1917571916373568424

`A384222(n+1)-A384225(n+1)`
-/

namespace A386604.P1917571916373568424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384222 (n + 1) - A384225 (n + 1)

end

end A386604.P1917571916373568424

/-! ## A386604.P17489545047750424840

`A304115(A293350(n)+1)%A384222(n+1)`
-/

namespace A386604.P17489545047750424840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A304115 (A293350 n + 1).toNat) (A384222 (n + 1))

end

end A386604.P17489545047750424840

/-! ## A386604.P7730001682077333657

`A376674(A238627(2*n+5))%A384222(n+1)`
-/

namespace A386604.P7730001682077333657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A376674 (A238627 (2 * n + 5)).toNat) (A384222 (n + 1))

end

end A386604.P7730001682077333657

/-! ## A386604.P8309490460493465391

`A165124(A262877(n))%A384222(n+1)`
-/

namespace A386604.P8309490460493465391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A165124 (A262877 n).toNat) (A384222 (n + 1))

end

end A386604.P8309490460493465391

/-! ## A386604.P14027187267230275081

`A000720(A002997(n+1))%A384222(n+1)`
-/

namespace A386604.P14027187267230275081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000720 (A002997 (n + 1)).toNat) (A384222 (n + 1))

end

end A386604.P14027187267230275081

/-!
# A386606: Numbers with exactly 3 distinct odd prime factors.

The programs for A386606, there is no canonical definition to state claims against.
-/

/-! ## A386606.P1970571751610613647

`A025480(A033993(n+1)%A210020(n+1))`
-/

namespace A386606.P1970571751610613647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (Int.tmod (A033993 (n + 1)) (A210020 (n + 1))).toNat

end

end A386606.P1970571751610613647

/-! ## A386606.P7091729155863860373

`A033993(n+1)/A049705(A335075(2*n+3))`
-/

namespace A386606.P7091729155863860373
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A033993 (n + 1) : ℚ) / (A049705 (A335075 (2 * n + 3)).toNat : ℚ)

end

end A386606.P7091729155863860373

/-! ## A386606.P12624238217127894703

`A033993(n+1)/A000005(A270800(n+1))`
-/

namespace A386606.P12624238217127894703
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A033993 (n + 1) : ℚ) / (A000005 (A270800 (n + 1)).toNat : ℚ)

end

end A386606.P12624238217127894703

/-! ## A386606.P3033082077628329045

`A033993(n+1)/A068976(A385169(2*n+1))`
-/

namespace A386606.P3033082077628329045
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A033993 (n + 1) : ℚ) / (A068976 (A385169 (2 * n + 1)).toNat : ℚ)

end

end A386606.P3033082077628329045

/-! ## A386606.P14169865148925983816

`A033993(n+1)/A020639(A005250(3*n+5))`
-/

namespace A386606.P14169865148925983816
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A033993 (n + 1) : ℚ) / (A020639 (A005250 (3 * n + 5)).toNat : ℚ)

end

end A386606.P14169865148925983816

/-!
# A386611: a(n) = Sum_{k=0..n-1} binomial(4*k,k) * binomial(4*n-4*k,n-k-1).

The programs for A386611, there is no canonical definition to state claims against.
-/

/-! ## A386611.P7893516897578369665

`A187320(A002275(n))`
-/

namespace A386611.P7893516897578369665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187320 (A002275 n).toNat

end

end A386611.P7893516897578369665

/-!
# A386612: a(n) = Sum_{k=0..n-1} binomial(4*k+1,k) * binomial(4*n-4*k,n-k-1).

The programs for A386612, there is no canonical definition to state claims against.
-/

/-! ## A386612.P11702041717651092622

`A308523(n+1)-A385251(n+1)`
-/

namespace A386612.P11702041717651092622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308523 (n + 1) - A385251 (n + 1)

end

end A386612.P11702041717651092622

/-!
# A386613: a(n) = Sum_{k=0..n-1} binomial(5*k,k) * binomial(5*n-5*k,n-k-1).

The programs for A386613, there is no canonical definition to state claims against.
-/

/-! ## A386613.P12745160407577351018

`A294242(A335646(3*n+4)+A234463(n))`
-/

namespace A386613.P12745160407577351018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294242 (A335646 (3 * n + 4) + A234463 n).toNat

end

end A386613.P12745160407577351018

/-!
# A386614: a(n) = Sum_{k=0..n-1} binomial(5*k+1,k) * binomial(5*n-5*k,n-k-1).

The programs for A386614, there is no canonical definition to state claims against.
-/

/-! ## A386614.P6879969809888356302

`A000292(n)*A194271(A005754(n+1))`
-/

namespace A386614.P6879969809888356302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 n * A194271 (A005754 (n + 1)).toNat

end

end A386614.P6879969809888356302

/-!
# A386617: a(n) = Sum_{k=0..n-1} binomial(3*k+1,k) * binomial(3*n-3*k,n-k-1).

The programs for A386617, there is no canonical definition to state claims against.
-/

/-! ## A386617.P2228901737226083274

`A062236(n+1)-A036829(n+1)`
-/

namespace A386617.P2228901737226083274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062236 (n + 1) - A036829 (n + 1)

end

end A386617.P2228901737226083274

/-!
# A386622: a(n) = Sum_{d|n} n^c(d), where c = A351114.

The programs for A386622, the canonical program `A386622.P1574536080220516373` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A386622 has offset 1).

The definition of A386622 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A351112, A386591, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A386622.P1574536080220516373

`(n+1)*A351112(n+1)+A386591(n+1)`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A386622

/-- `(n+1)*A351112(n+1)+A386591(n+1)` -/
def P1574536080220516373.Spec : Prop :=
  ∀ n, P1574536080220516373.a n = A386622 (n + 1)

theorem P1574536080220516373.correct : P1574536080220516373.Spec := by
  intro n
  simp only [A386622, Nat.add_sub_cancel]

end A386622

/-! ## A386622.P9775144089613401552

`A386589(n+1)+A362707(n+1)`
-/

namespace A386622.P9775144089613401552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386589 (n + 1) + A362707 (n + 1)

end

end A386622.P9775144089613401552

namespace A386622

/-- `A386589(n+1)+A362707(n+1)` -/
def P9775144089613401552.Spec : Prop :=
  ∀ n, P9775144089613401552.a n = A386622 (n + 1)

end A386622

/-!
# A386624: a(n) = Sum_{d|n} sigma(d) * phi(d) * mu(n/d).

The programs for A386624, the canonical program `A386624.P17245005643228662318` is in `Seq.B007.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A386624 has offset 1).

The definition of A386624 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A386624.P17245005643228662318

`∑{d}[n+1, A007427(#)*A062952((n+1)/#)]`

The canonical program, it is in `Seq.B007.C002`.
-/

namespace A386624

/-- `∑{d}[n+1, A007427(#)*A062952((n+1)/#)]` -/
def P17245005643228662318.Spec : Prop :=
  ∀ n, P17245005643228662318.a n = A386624 (n + 1)

theorem P17245005643228662318.correct : P17245005643228662318.Spec := by
  intro n
  simp only [A386624, Nat.add_sub_cancel]

end A386624

/-! ## A386624.P12043032126951568702

`∑{d}[n+1, A008683(#)*A062354((n+1)/#)]`
-/

namespace A386624.P12043032126951568702
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A062354 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A386624.P12043032126951568702

namespace A386624

/-- `∑{d}[n+1, A008683(#)*A062354((n+1)/#)]` -/
def P12043032126951568702.Spec : Prop :=
  ∀ n, P12043032126951568702.a n = A386624 (n + 1)

end A386624

/-! ## A386624.P3436468892683536089

`∑{d}[n+1, A007428(#)*A341638((n+1)/#)]`
-/

namespace A386624.P3436468892683536089
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007428 d * A341638 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A386624.P3436468892683536089

namespace A386624

/-- `∑{d}[n+1, A007428(#)*A341638((n+1)/#)]` -/
def P3436468892683536089.Spec : Prop :=
  ∀ n, P3436468892683536089.a n = A386624 (n + 1)

end A386624

/-!
# A386626: a(n) = denominator q of prime-fraction p/q that minimizes |m/n - p/q|>0, where p is 1 or prime, q is prime, q < 2n, and 1 <= m <= 2n-1.

The programs for A386626, there is no canonical definition to state claims against.
-/

/-! ## A386626.P1443254646616415970

`A020482(n+5)%Δ[A016106(n+4)]`
-/

namespace A386626.P1443254646616415970
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016106 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A020482 (n + 5)) (f1 (n + 1) - f1 n)

end

end A386626.P1443254646616415970

/-! ## A386626.P8710486325619925191

`A020482(n+5)/A054977(A208355(n))`
-/

namespace A386626.P8710486325619925191
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A020482 (n + 5) : ℚ) / (A054977 (A208355 n).toNat : ℚ)

end

end A386626.P8710486325619925191

/-! ## A386626.P18388683914648765185

`A060308(n+4)%A345010(A000041(n))`
-/

namespace A386626.P18388683914648765185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A060308 (n + 4)) (A345010 (A000041 n).toNat)

end

end A386626.P18388683914648765185

/-! ## A386626.P5640037994162327104

`A020482(n+5)%A103504(A005994(n))`
-/

namespace A386626.P5640037994162327104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A020482 (n + 5)) (A103504 (A005994 n).toNat)

end

end A386626.P5640037994162327104

/-! ## A386626.P3926906683489556157

`A060308(n+4)+A000007(A000045(n+2))`
-/

namespace A386626.P3926906683489556157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060308 (n + 4) + A000007 (A000045 (n + 2)).toNat

end

end A386626.P3926906683489556157

/-!
# A386628: Values of v in the (2,3)-quartals (m,u,v,w) having m=1; i.e., values of v for solutions to 1 + u^3 = v^2 + w^3, in positive integers, with m

The programs for A386628, there is no canonical definition to state claims against.
-/

/-! ## A386628.P17935003025295057829

`A100499(n^3+2)`
-/

namespace A386628.P17935003025295057829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100499 (n ^ 3 + 2)

end

end A386628.P17935003025295057829

/-!
# A386630: Values of w in the quartets (1, u, v, w) of type 2; i.e., values of w for solutions to (1 + u) = v(v - w), in positive integers, with v > 1, sorted by nondecreasing values of u; see A386218.

The programs for A386630, there is no canonical definition to state claims against.
-/

/-! ## A386630.P214790850066975381

`A385184(n+1)+A077592(A129755(n+1))`
-/

namespace A386630.P214790850066975381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385184 (n + 1) + A077592 (A129755 (n + 1)).toNat

end

end A386630.P214790850066975381

/-! ## A386630.P9998584068629223868

`A385184(n+1)+A363741(A000040(n+1))`
-/

namespace A386630.P9998584068629223868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385184 (n + 1) + A363741 (A000040 (n + 1)).toNat

end

end A386630.P9998584068629223868

/-! ## A386630.P9491055427932887596

`A385184(n+1)+A349618(A335325(n+1))`
-/

namespace A386630.P9491055427932887596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385184 (n + 1) + A349618 (A335325 (n + 1)).toNat

end

end A386630.P9491055427932887596

/-! ## A386630.P14549394356095922777

`A385184(n+1)+A032742(A054270(n+4))`
-/

namespace A386630.P14549394356095922777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385184 (n + 1) + A032742 (A054270 (n + 4)).toNat

end

end A386630.P14549394356095922777

/-! ## A386630.P13845203556507966549

`A385196(A168474(2*n+5))+A385184(n+1)`
-/

namespace A386630.P13845203556507966549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385196 (A168474 (2 * n + 5)).toNat + A385184 (n + 1)

end

end A386630.P13845203556507966549

/-!
# A386631: Values of u in the quartets (2, u, v, w) of type 3; i.e., values of u for solutions to 2*(2 - u) = v*(v - w), in distinct positive integers, with v > 1, sorted by nondecreasing values of u; see Comments.

The programs for A386631, there is no canonical definition to state claims against.
-/

/-! ## A386631.P14217306219408320253

`A070939(A353500(n+4)+A000292(n))`
-/

namespace A386631.P14217306219408320253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 (A353500 (n + 4) + A000292 n).toNat

end

end A386631.P14217306219408320253

/-!
# A386633: Number of separable type set partitions of {1..n}.

The programs for A386633, there is no canonical definition to state claims against.
-/

/-! ## A386633.P9044454069049743535

`A229223(A007590(n+1))`
-/

namespace A386633.P9044454069049743535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229223 (A007590 (n + 1)).toNat

end

end A386633.P9044454069049743535

/-! ## A386633.P13477842004154001545

`A229223(A000982(n)+n)`
-/

namespace A386633.P13477842004154001545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229223 (A000982 n + (n : ℤ)).toNat

end

end A386633.P13477842004154001545

/-! ## A386633.P829579370885622000

`A000110(n)-A386634(n)`
-/

namespace A386633.P829579370885622000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000110 n - A386634 n

end

end A386633.P829579370885622000

/-! ## A386633.P593204827947023563

`abs(A292935(n))-A386634(n)`
-/

namespace A386633.P593204827947023563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A292935 n| - A386634 n

end

end A386633.P593204827947023563

/-! ## A386633.P3353482025375258628

`A011971(∑[n])-A386634(n)`
-/

namespace A386633.P3353482025375258628
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011971 (∑ j ∈ Finset.range (n + 1), f1 j) - A386634 n

end

end A386633.P3353482025375258628

/-! ## A386633.P10283576791712112486

`A144155(∑[n])-A386634(n)`
-/

namespace A386633.P10283576791712112486
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144155 (∑ j ∈ Finset.range (n + 1), f1 j) - A386634 n

end

end A386633.P10283576791712112486

/-! ## A386633.P11262394196618387556

`A212431(∑[n])-A386634(n)`
-/

namespace A386633.P11262394196618387556
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212431 (∑ j ∈ Finset.range (n + 1), f1 j) - A386634 n

end

end A386633.P11262394196618387556

/-! ## A386633.P10447824554437208473

`A259691(∑[n])-A386634(n)`
-/

namespace A386633.P10447824554437208473
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259691 (∑ j ∈ Finset.range (n + 1), f1 j) - A386634 n

end

end A386633.P10447824554437208473

/-!
# A386634: Number of inseparable type set partitions of {1..n}.

The programs for A386634, there is no canonical definition to state claims against.
-/

/-! ## A386634.P1741086108739451227

`A000110(n)-A386633(n)`
-/

namespace A386634.P1741086108739451227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000110 n - A386633 n

end

end A386634.P1741086108739451227

/-! ## A386634.P11637226196696139082

`abs(A292935(n))-A386633(n)`
-/

namespace A386634.P11637226196696139082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A292935 n| - A386633 n

end

end A386634.P11637226196696139082

/-! ## A386634.P11649673774468831406

`A011971(∑[n])-A386633(n)`
-/

namespace A386634.P11649673774468831406
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011971 (∑ j ∈ Finset.range (n + 1), f1 j) - A386633 n

end

end A386634.P11649673774468831406

/-! ## A386634.P10241369096486068405

`A095149(∑[n])-A386633(n)`
-/

namespace A386634.P10241369096486068405
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095149 (∑ j ∈ Finset.range (n + 1), f1 j) - A386633 n

end

end A386634.P10241369096486068405

/-! ## A386634.P9590906586445189846

`A108087(∑[n])-A386633(n)`
-/

namespace A386634.P9590906586445189846
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108087 (∑ j ∈ Finset.range (n + 1), f1 j) - A386633 n

end

end A386634.P9590906586445189846

/-! ## A386634.P1011584253421770104

`A144155(∑[n])-A386633(n)`
-/

namespace A386634.P1011584253421770104
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144155 (∑ j ∈ Finset.range (n + 1), f1 j) - A386633 n

end

end A386634.P1011584253421770104

/-! ## A386634.P1282260052554986939

`A212431(∑[n])-A386633(n)`
-/

namespace A386634.P1282260052554986939
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212431 (∑ j ∈ Finset.range (n + 1), f1 j) - A386633 n

end

end A386634.P1282260052554986939

/-! ## A386634.P13625619665894492728

`A259691(∑[n])-A386633(n)`
-/

namespace A386634.P13625619665894492728
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259691 (∑ j ∈ Finset.range (n + 1), f1 j) - A386633 n

end

end A386634.P13625619665894492728

/-! ## A386634.P13807760889147157080

`A327884(∑[n])-A386633(n)`
-/

namespace A386634.P13807760889147157080
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327884 (∑ j ∈ Finset.range (n + 1), f1 j) - A386633 n

end

end A386634.P13807760889147157080

/-!
# A386635: Triangle read by rows where T(n,k) is the number of separable type set partitions of {1..n} into k blocks.

The programs for A386635, there is no canonical definition to state claims against.
-/

/-! ## A386635.P16741784256354944784

`A048993(n)-A386636(n)`
-/

namespace A386635.P16741784256354944784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048993 n - A386636 n

end

end A386635.P16741784256354944784

/-! ## A386635.P1959773432425959101

`A090657(n)/A008279(n)-A386636(n)`
-/

namespace A386635.P1959773432425959101
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A090657 n : ℚ) / (A008279 n : ℚ) - (A386636 n : ℚ)

end

end A386635.P1959773432425959101

/-! ## A386635.P17742968329241794079

`A124747(n)*A296120(A124731(n))`
-/

namespace A386635.P17742968329241794079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124747 n * A296120 (A124731 n).toNat

end

end A386635.P17742968329241794079

/-! ## A386635.P13864668211247394015

`A122848(n)-A240467(A208096(n+1))`
-/

namespace A386635.P13864668211247394015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122848 n - A240467 (A208096 (n + 1)).toNat

end

end A386635.P13864668211247394015

/-! ## A386635.P1911802077321091859

`A098158(n)*A237194(A301922(n+1))`
-/

namespace A386635.P1911802077321091859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098158 n * A237194 (A301922 (n + 1)).toNat

end

end A386635.P1911802077321091859

/-!
# A386636: Triangle read by rows where T(n,k) is the number of inseparable type set partitions of {1..n} into k blocks.

The programs for A386636, there is no canonical definition to state claims against.
-/

/-! ## A386636.P17972951700509815327

`A048993(n)-A386635(n)`
-/

namespace A386636.P17972951700509815327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048993 n - A386635 n

end

end A386636.P17972951700509815327

/-! ## A386636.P11826101676262233379

`A253180(n)/A168256(n)-A386635(n)`
-/

namespace A386636.P11826101676262233379
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A253180 n : ℚ) / (A168256 n : ℚ) - (A386635 n : ℚ)

end

end A386636.P11826101676262233379

/-! ## A386636.P11282239529702564230

`A142071(n)/A165680(n+1)-A386635(n)`
-/

namespace A386636.P11282239529702564230
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A142071 n : ℚ) / (A165680 (n + 1) : ℚ) - (A386635 n : ℚ)

end

end A386636.P11282239529702564230

/-! ## A386636.P9857493555160826288

`∑{e}[A203804(A325188(n)), #]`
-/

namespace A386636.P9857493555160826288
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203804 (A325188 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A386636.P9857493555160826288

/-! ## A386636.P14503127981412247329

`A297845(A270613(n+2))%A297845(n+1)`
-/

namespace A386636.P14503127981412247329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A297845 (A270613 (n + 2)).toNat) (A297845 (n + 1))

end

end A386636.P14503127981412247329

/-!
# A386637: Numbers k such that sigma(k) = psi(k) + tau(k) + omega(k).

The programs for A386637, the canonical program `A386637.P14085330832617281691` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A386637 has offset 1).

The definition of A386637 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 297 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A386637.P14085330832617281691

`record[lcm(7, A001248(n+1))]`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A386637

/-- `record[lcm(7, A001248(n+1))]` -/
def P14085330832617281691.Spec : Prop :=
  ∀ n, (P14085330832617281691.a n : ℤ) = A386637 (n + 1)

theorem P14085330832617281691.correct : P14085330832617281691.Spec := by
  intro n
  simp only [A386637, Nat.add_sub_cancel]

end A386637

/-! ## A386637.P11176381547520416794

`∩[A390252(n+1), A033582(n)]`
-/

namespace A386637.P11176381547520416794
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390252 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033582 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386637.P11176381547520416794

namespace A386637

/-- `∩[A390252(n+1), A033582(n)]` -/
def P11176381547520416794.Spec : Prop :=
  ∀ n, (P11176381547520416794.a n : ℤ) = A386637 (n + 1)

end A386637

/-! ## A386637.P9933416821454720448

`∩[A069551(n+1), A390252(n+1)]`
-/

namespace A386637.P9933416821454720448
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069551 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390252 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386637.P9933416821454720448

namespace A386637

/-- `∩[A069551(n+1), A390252(n+1)]` -/
def P9933416821454720448.Spec : Prop :=
  ∀ n, (P9933416821454720448.a n : ℤ) = A386637 (n + 1)

end A386637

/-! ## A386637.P8905080314647403291

`∩[A069551(n+1), A372665(n+1)]`
-/

namespace A386637.P8905080314647403291
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069551 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372665 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386637.P8905080314647403291

namespace A386637

/-- `∩[A069551(n+1), A372665(n+1)]` -/
def P8905080314647403291.Spec : Prop :=
  ∀ n, (P8905080314647403291.a n : ℤ) = A386637 (n + 1)

end A386637

/-! ## A386637.P10023444746039643891

`∩[A227854(n+1), A390252(n+1)]`
-/

namespace A386637.P10023444746039643891
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227854 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390252 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386637.P10023444746039643891

namespace A386637

/-- `∩[A227854(n+1), A390252(n+1)]` -/
def P10023444746039643891.Spec : Prop :=
  ∀ n, (P10023444746039643891.a n : ℤ) = A386637 (n + 1)

end A386637

/-!
# A386638: Number of integer partitions of n of inseparable type.

The programs for A386638, there is no canonical definition to state claims against.
-/

/-! ## A386638.P16760771724432627456

`A000041(n)-A336106(n)`
-/

namespace A386638.P16760771724432627456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - A336106 n

end

end A386638.P16760771724432627456

/-! ## A386638.P3833590372276666579

`A349149(or(1, n))`
-/

namespace A386638.P3833590372276666579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349149 (Nat.lor 1 n)

end

end A386638.P3833590372276666579

/-! ## A386638.P8628049527961494290

`A349149(A109613(n))`
-/

namespace A386638.P8628049527961494290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349149 (A109613 n).toNat

end

end A386638.P8628049527961494290

/-! ## A386638.P14497553943631262820

`A025065(n)-A119620(n)`
-/

namespace A386638.P14497553943631262820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025065 n - A119620 n

end

end A386638.P14497553943631262820

/-! ## A386638.P3757887670205960970

`∑[A035363(n)]-A119620(n)`
-/

namespace A386638.P3757887670205960970
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A119620 n

end

end A386638.P3757887670205960970

/-! ## A386638.P2949988887806358564

`A349149(n+1)+A349149(n)-A119620(n+1)`
-/

namespace A386638.P2949988887806358564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349149 (n + 1) + (A349149 n - A119620 (n + 1))

end

end A386638.P2949988887806358564

/-!
# A386639: Triangle T(n,k) read by rows, where row n is a permutation of the numbers 1 through n, such that if a deck of n cards is prepared in this order, and the AP dealing is used, then the resulting cards will be dealt in increasing order.

The programs for A386639, there is no canonical definition to state claims against.
-/

/-! ## A386639.P10775074578789706666

`A000120(A320051(n+1)^A124010(n+1))`
-/

namespace A386639.P10775074578789706666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (SequenceMachineLib.roundAway ((A320051 (n + 1) : ℚ) ^ (A124010 (n + 1) : ℤ))).toNat

end

end A386639.P10775074578789706666

/-! ## A386639.P7590628244845340803

`A036989(A029964(n+1))`
-/

namespace A386639.P7590628244845340803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036989 (A029964 (n + 1)).toNat

end

end A386639.P7590628244845340803

/-! ## A386639.P17320076798640107122

`A356958(A281110(n+1))`
-/

namespace A386639.P17320076798640107122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356958 (A281110 (n + 1)).toNat

end

end A386639.P17320076798640107122

/-! ## A386639.P14295006874698013708

`A279387(A002255(n+1)+3)`
-/

namespace A386639.P14295006874698013708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279387 (A002255 (n + 1) + 3).toNat

end

end A386639.P14295006874698013708

/-! ## A386639.P1378345773205019298

`A031269(A085218(n)+A045891(n))`
-/

namespace A386639.P1378345773205019298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031269 (A085218 n + A045891 n).toNat

end

end A386639.P1378345773205019298

/-!
# A386642: Roll n fair, distinguishable, n-sided dice and sort the dice in increasing order with the lowest on the left, highest on the right. Let m be the maximum value rolled and select the m-th die from the right. Then a(n) is the number of such rolls (over all n^n possible outcomes) where the selected die shows 1.

The programs for A386642, there is no canonical definition to state claims against.
-/

/-! ## A386642.P18258894599634655696

`(n+1)^(n+1)-A204042(n+1)+1`
-/

namespace A386642.P18258894599634655696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ (n + 1) : ℤ) - A204042 (n + 1) + 1

end

end A386642.P18258894599634655696

/-!
# A386643: Elimination order of the first person in a variation of the Josephus problem in which one person is skipped, then one is eliminated, then two people are skipped and one eliminated, then three people are skipped and so on.

The programs for A386643, there is no canonical definition to state claims against.
-/

/-! ## A386643.P17540326808969576948

`A386639(∑[n]+1)`
-/

namespace A386643.P17540326808969576948
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386639 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A386643.P17540326808969576948

/-!
# A386644: E.g.f. A(x) satisfies A(x) = Sum_{n>=0} (A(x)^n + x)^n * x^n / n!.

The programs for A386644, there is no canonical definition to state claims against.
-/

/-! ## A386644.P13693055626033514011

`A355616(A007714(n))`
-/

namespace A386644.P13693055626033514011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355616 (A007714 n).toNat

end

end A386644.P13693055626033514011

/-!
# A386645: E.g.f. A(x) satisfies A(x) = Sum_{n>=0} ( A(x)^n + log(A(x)) )^n * x^n / n!.

The programs for A386645, there is no canonical definition to state claims against.
-/

/-! ## A386645.P9273093786032413956

`A385178(A289774(n))`
-/

namespace A386645.P9273093786032413956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385178 (A289774 n).toNat

end

end A386645.P9273093786032413956

/-!
# A386648: E.g.f. A(x) satisfies 1 = Sum_{n>=0} ( A(x)^n + LambertW(-x) )^n / n!.

The programs for A386648, there is no canonical definition to state claims against.
-/

/-! ## A386648.P2678131952563465630

`A349160(A349146(n))+A061358(n)`
-/

namespace A386648.P2678131952563465630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349160 (A349146 n).toNat + A061358 n

end

end A386648.P2678131952563465630

/-!
# A386649: Product of first n central trinomial coefficients (A002426) for n > 0 with a(0) = 1.

The programs for A386649, there is no canonical definition to state claims against.
-/

/-! ## A386649.P7665391849794745921

`∏[A002426(n)]`
-/

namespace A386649.P7665391849794745921
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002426 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A386649.P7665391849794745921

/-! ## A386649.P15583055167016123675

`∏[sqrt(A168597(n))]`
-/

namespace A386649.P15583055167016123675
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A168597 n : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A386649.P15583055167016123675

/-! ## A386649.P861574086381131787

`∏[A094531(∑[n])]`
-/

namespace A386649.P861574086381131787
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094531 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A386649.P861574086381131787

/-! ## A386649.P17399683623741731715

`∏[A111960(∑[n])]`
-/

namespace A386649.P17399683623741731715
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111960 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A386649.P17399683623741731715

/-! ## A386649.P3461929419038961848

`∏[A114422(∑[n])]`
-/

namespace A386649.P3461929419038961848
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114422 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A386649.P3461929419038961848

/-!
# A386650: Product of first n quadrinomial coefficients (A005725) for n > 0 with a(0) = 1.

The programs for A386650, there is no canonical definition to state claims against.
-/

/-! ## A386650.P10869332786745265817

`∏[A005725(n)]`
-/

namespace A386650.P10869332786745265817
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005725 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A386650.P10869332786745265817

/-! ## A386650.P11971519975833925783

`∏[A213887(A007590(2*n+1))]`
-/

namespace A386650.P11971519975833925783
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213887 (A007590 (2 * n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A386650.P11971519975833925783

/-!
# A386652: a(n) = Sum_{k>=0} ( ( binomial(n+k-1, k) * 2^k ) (mod 3^k) ) / 3^k.

The programs for A386652, there is no canonical definition to state claims against.
-/

/-! ## A386652.P3606231436757589428

`A198454(A331912(3*n+2))+n-1`
-/

namespace A386652.P3606231436757589428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198454 (A331912 (3 * n + 2)).toNat + ((n : ℤ) - 1)

end

end A386652.P3606231436757589428

/-! ## A386652.P17067218818255301544

`A233583(3*n+4)-A054354(A308240(n))`
-/

namespace A386652.P17067218818255301544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (3 * n + 4) - A054354 (A308240 n).toNat

end

end A386652.P17067218818255301544

/-! ## A386652.P2908164050740305423

`A257089(A301706(n+1))+A080782(3*(n+1))`
-/

namespace A386652.P2908164050740305423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257089 (A301706 (n + 1)).toNat + A080782 (3 * (n + 1))

end

end A386652.P2908164050740305423

/-! ## A386652.P1926707382172559656

`A204399(2*n+3)-A076662(A184174(3*n))`
-/

namespace A386652.P1926707382172559656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204399 (2 * n + 3) - A076662 (A184174 (3 * n)).toNat

end

end A386652.P1926707382172559656

/-!
# A386661: a(n) = Sum_{k=1..n} (binomial(n, k) * 2^k) (mod 3^k).

The programs for A386661, there is no canonical definition to state claims against.
-/

/-! ## A386661.P7299411172497765163

`∑[A269745(a(n-1))]` with `a(0)=2`
-/

namespace A386661.P7299411172497765163
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f1 =>
  A269745 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A386661.P7299411172497765163

/-!
# A386662: a(n) = Sum_{k=1..n} (binomial(n, k) * 3^k) (mod 4^k).

The programs for A386662, there is no canonical definition to state claims against.
-/

/-! ## A386662.P2671203162735860877

`A328642(A017920(n+1))`
-/

namespace A386662.P2671203162735860877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328642 (A017920 (n + 1)).toNat

end

end A386662.P2671203162735860877

/-!
# A386664: The number of ways of placing dominoes on an n X n board so that no two touch, and no additional domino can be placed to still satisfy that condition.

The programs for A386664, there is no canonical definition to state claims against.
-/

/-! ## A386664.P477658096315766508

`A141655(n*a(n-1))` with `a(0)=1, a(1)=1`
-/

namespace A386664.P477658096315766508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A141655 ((n : ℤ) * a (n - 1)).toNat

end

end A386664.P477658096315766508

/-!
# A386665: G.f. satisfies: A(x) = Sum_{n>=0} ( (1+x)^n - A(x)^(-1/2) )^n / ( 2 - (1+x)^n * A(x)^(-1/2) )^(n+1).

The programs for A386665, there is no canonical definition to state claims against.
-/

/-! ## A386665.P8348109634068585569

`A088462(A364333(n)+1)`
-/

namespace A386665.P8348109634068585569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088462 (A364333 n + 1).toNat

end

end A386665.P8348109634068585569

/-!
# A386666: G.f. A(x) satisfies: A(x)^2 = A( x^2 + 4*A(x)^3 ).

The programs for A386666, there is no canonical definition to state claims against.
-/

/-! ## A386666.P16534951142939781261

`A023001(n)+A000120(A167138(n))`
-/

namespace A386666.P16534951142939781261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023001 n + A000120 (A167138 n).toNat

end

end A386666.P16534951142939781261

/-!
# A386667: G.f. A(x) satisfies: A(x)^2 = A( (x + 4*A(x)^2)^2 ).

The programs for A386667, there is no canonical definition to state claims against.
-/

/-! ## A386667.P12537109192557025291

`A074286(A000045(3*(n+1))*A000108(n))`
-/

namespace A386667.P12537109192557025291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074286 (A000045 (3 * (n + 1)) * A000108 n).toNat

end

end A386667.P12537109192557025291

/-!
# A386668: Expansion of g.f. Sum_{n>=0} x^n * (1 + x)^(n^3).

The programs for A386668, there is no canonical definition to state claims against.
-/

/-! ## A386668.P2766632441460619513

`A284325(A102900(n))`
-/

namespace A386668.P2766632441460619513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284325 (A102900 n).toNat

end

end A386668.P2766632441460619513

/-! ## A386668.P5763666864992112922

`filter[A148074(n), A212412(#)]`
-/

namespace A386668.P5763666864992112922
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148074 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A212412 (f1 j).toNat = 1) n)

end

end A386668.P5763666864992112922

/-!
# A386670: Number of ternary strings of length 2*n that have more 0's than the combined number of 1's and 2's.

The programs for A386670, there is no canonical definition to state claims against.
-/

/-! ## A386670.P12615676269490321592

`A128418(n)-A059304(n)`
-/

namespace A386670.P12615676269490321592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128418 n - A059304 n

end

end A386670.P12615676269490321592

/-! ## A386670.P7563293155849214113

`A128418(n)-record[A128417(n)]`
-/

namespace A386670.P7563293155849214113
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128417 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128418 n - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A386670.P7563293155849214113

/-! ## A386670.P2424618386326878522

`A128418(n)-A128417(A000217(n))`
-/

namespace A386670.P2424618386326878522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128418 n - A128417 (A000217 n).toNat

end

end A386670.P2424618386326878522

/-!
# A386681: Triangle read by rows: T(n,k) is the number of closed binary operations on a set of n labeled elements with a closed center of size k.

The programs for A386681, there is no canonical definition to state claims against.
-/

/-! ## A386681.P12153987160288199950

`A391154(n)+A185284(A088809(n))`
-/

namespace A386681.P12153987160288199950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391154 n + A185284 (A088809 n).toNat

end

end A386681.P12153987160288199950

/-! ## A386681.P8744584577114236353

`A391154(n)+A185284(A101268(n))`
-/

namespace A386681.P8744584577114236353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391154 n + A185284 (A101268 n).toNat

end

end A386681.P8744584577114236353

/-! ## A386681.P14577911688381620776

`A391154(n)^A022527(A103822(n))`
-/

namespace A386681.P14577911688381620776
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A391154 n : ℚ) ^ (A022527 (A103822 n).toNat : ℤ)

end

end A386681.P14577911688381620776

/-!
# A386682: Numbers k such that sum of digits of k equals sum of digits of 1/k.

The programs for A386682, there is no canonical definition to state claims against.
-/

/-! ## A386682.P1861005339554873110

`∩[A059094(n+1), A067940(n+1)]`
-/

namespace A386682.P1861005339554873110
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059094 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067940 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386682.P1861005339554873110

/-! ## A386682.P17219830694356523830

`∩[A007939(n+1), A101170(n+1)]`
-/

namespace A386682.P17219830694356523830
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007939 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101170 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386682.P17219830694356523830

/-! ## A386682.P4233420028475766050

`∩[A056020(n+1), A101170(n+1)]`
-/

namespace A386682.P4233420028475766050
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056020 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101170 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386682.P4233420028475766050

/-! ## A386682.P4975609274859576304

`∩[A059094(n+1), A101170(n+1)]`
-/

namespace A386682.P4975609274859576304
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059094 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101170 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386682.P4975609274859576304

/-! ## A386682.P13945815609894313928

`∩[A101170(n+1), A319293(n+1)]`
-/

namespace A386682.P13945815609894313928
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101170 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319293 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386682.P13945815609894313928

/-!
# A386684: Cubefree nonsquares with at least one prime power factor that is not square.

The programs for A386684, the canonical program `A386684.P6936343892752032316` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A386684 has offset 1).

The definition of A386684 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9871 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A386684.P5895239276111844415

`filter[A391023(n+1), A049240(#)]`
-/

namespace A386684.P5895239276111844415
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391023 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A049240 (f1 j).toNat = 1) n)

end

end A386684.P5895239276111844415

namespace A386684

/-- `filter[A391023(n+1), A049240(#)]` -/
def P5895239276111844415.Spec : Prop :=
  ∀ n, P5895239276111844415.a n = A386684 (n + 1)

end A386684

/-! ## A386684.P4620206662988736436

`filter[A391023(n+1), A380458(#)]`
-/

namespace A386684.P4620206662988736436
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391023 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A380458 (f1 j).toNat = 1) n)

end

end A386684.P4620206662988736436

namespace A386684

/-- `filter[A391023(n+1), A380458(#)]` -/
def P4620206662988736436.Spec : Prop :=
  ∀ n, P4620206662988736436.a n = A386684 (n + 1)

end A386684

/-! ## A386684.P17780796119894258970

`filter[A391023(n+1), A389905(#)]`
-/

namespace A386684.P17780796119894258970
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391023 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A389905 (f1 j).toNat = 1) n)

end

end A386684.P17780796119894258970

namespace A386684

/-- `filter[A391023(n+1), A389905(#)]` -/
def P17780796119894258970.Spec : Prop :=
  ∀ n, P17780796119894258970.a n = A386684 (n + 1)

end A386684

/-! ## A386684.P6055159631519463930

`filter[A325241(n+1), A212793(#)]`
-/

namespace A386684.P6055159631519463930
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325241 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A212793 (f1 j).toNat = 1) n)

end

end A386684.P6055159631519463930

namespace A386684

/-- `filter[A325241(n+1), A212793(#)]` -/
def P6055159631519463930.Spec : Prop :=
  ∀ n, P6055159631519463930.a n = A386684 (n + 1)

end A386684

/-! ## A386684.P9038572290788015787

`filter[A325241(n+1), A355823(#)]`
-/

namespace A386684.P9038572290788015787
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325241 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355823 (f1 j).toNat = 1) n)

end

end A386684.P9038572290788015787

namespace A386684

/-- `filter[A325241(n+1), A355823(#)]` -/
def P9038572290788015787.Spec : Prop :=
  ∀ n, P9038572290788015787.a n = A386684 (n + 1)

end A386684

/-! ## A386684.P6063579753303760325

`filter[A325241(n+1), A355825(#)]`
-/

namespace A386684.P6063579753303760325
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325241 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355825 (f1 j).toNat = 1) n)

end

end A386684.P6063579753303760325

namespace A386684

/-- `filter[A325241(n+1), A355825(#)]` -/
def P6063579753303760325.Spec : Prop :=
  ∀ n, P6063579753303760325.a n = A386684 (n + 1)

end A386684

/-! ## A386684.P7770704215833730140

`filter[A325241(n+1), A359429(#)]`
-/

namespace A386684.P7770704215833730140
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325241 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359429 (f1 j).toNat = 1) n)

end

end A386684.P7770704215833730140

namespace A386684

/-- `filter[A325241(n+1), A359429(#)]` -/
def P7770704215833730140.Spec : Prop :=
  ∀ n, P7770704215833730140.a n = A386684 (n + 1)

end A386684

/-! ## A386684.P11727573938727099428

`filter[A325241(n+1), A389905(#)]`
-/

namespace A386684.P11727573938727099428
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325241 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A389905 (f1 j).toNat = 1) n)

end

end A386684.P11727573938727099428

namespace A386684

/-- `filter[A325241(n+1), A389905(#)]` -/
def P11727573938727099428.Spec : Prop :=
  ∀ n, P11727573938727099428.a n = A386684 (n + 1)

end A386684

/-! ## A386684.P6936343892752032316

`filter[A067259(n+1), A049240(#)]`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A386684

/-- `filter[A067259(n+1), A049240(#)]` -/
def P6936343892752032316.Spec : Prop :=
  ∀ n, P6936343892752032316.a n = A386684 (n + 1)

theorem P6936343892752032316.correct : P6936343892752032316.Spec := by
  intro n
  simp only [A386684, Nat.add_sub_cancel]

end A386684

/-! ## A386684.P13859609518322259173

`filter[A067259(n+1), A380458(#)]`
-/

namespace A386684.P13859609518322259173
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067259 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A380458 (f1 j).toNat = 1) n)

end

end A386684.P13859609518322259173

namespace A386684

/-- `filter[A067259(n+1), A380458(#)]` -/
def P13859609518322259173.Spec : Prop :=
  ∀ n, P13859609518322259173.a n = A386684 (n + 1)

end A386684

/-! ## A386684.P3337418788190301206

`filter[A067259(n+1), A389905(#)]`
-/

namespace A386684.P3337418788190301206
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067259 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A389905 (f1 j).toNat = 1) n)

end

end A386684.P3337418788190301206

namespace A386684

/-- `filter[A067259(n+1), A389905(#)]` -/
def P3337418788190301206.Spec : Prop :=
  ∀ n, P3337418788190301206.a n = A386684 (n + 1)

end A386684

/-! ## A386684.P6609905143246801283

`filter[A376251(n+1), A212793(#)]`
-/

namespace A386684.P6609905143246801283
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376251 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A212793 (f1 j).toNat = 1) n)

end

end A386684.P6609905143246801283

namespace A386684

/-- `filter[A376251(n+1), A212793(#)]` -/
def P6609905143246801283.Spec : Prop :=
  ∀ n, P6609905143246801283.a n = A386684 (n + 1)

end A386684

/-! ## A386684.P134946521971850041

`filter[A376251(n+1), A355823(#)]`
-/

namespace A386684.P134946521971850041
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376251 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355823 (f1 j).toNat = 1) n)

end

end A386684.P134946521971850041

namespace A386684

/-- `filter[A376251(n+1), A355823(#)]` -/
def P134946521971850041.Spec : Prop :=
  ∀ n, P134946521971850041.a n = A386684 (n + 1)

end A386684

/-! ## A386684.P14683676165202514060

`filter[A376251(n+1), A355825(#)]`
-/

namespace A386684.P14683676165202514060
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376251 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355825 (f1 j).toNat = 1) n)

end

end A386684.P14683676165202514060

namespace A386684

/-- `filter[A376251(n+1), A355825(#)]` -/
def P14683676165202514060.Spec : Prop :=
  ∀ n, P14683676165202514060.a n = A386684 (n + 1)

end A386684

/-! ## A386684.P14419214458088990857

`filter[A376251(n+1), A359429(#)]`
-/

namespace A386684.P14419214458088990857
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376251 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359429 (f1 j).toNat = 1) n)

end

end A386684.P14419214458088990857

namespace A386684

/-- `filter[A376251(n+1), A359429(#)]` -/
def P14419214458088990857.Spec : Prop :=
  ∀ n, P14419214458088990857.a n = A386684 (n + 1)

end A386684

/-! ## A386684.P8359983712941490081

`filter[A267117(n+1), A359429(#)]`
-/

namespace A386684.P8359983712941490081
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267117 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359429 (f1 j).toNat = 1) n)

end

end A386684.P8359983712941490081

namespace A386684

/-- `filter[A267117(n+1), A359429(#)]` -/
def P8359983712941490081.Spec : Prop :=
  ∀ n, P8359983712941490081.a n = A386684 (n + 1)

end A386684

/-! ## A386684.P11561029085619535981

`filter[A267117(n+2), A212793(#)]`
-/

namespace A386684.P11561029085619535981
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267117 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A212793 (f1 j).toNat = 1) n)

end

end A386684.P11561029085619535981

namespace A386684

/-- `filter[A267117(n+2), A212793(#)]` -/
def P11561029085619535981.Spec : Prop :=
  ∀ n, P11561029085619535981.a n = A386684 (n + 1)

end A386684

/-! ## A386684.P10474217337855646104

`filter[A072588(n+1), A212793(#)]`
-/

namespace A386684.P10474217337855646104
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072588 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A212793 (f1 j).toNat = 1) n)

end

end A386684.P10474217337855646104

namespace A386684

/-- `filter[A072588(n+1), A212793(#)]` -/
def P10474217337855646104.Spec : Prop :=
  ∀ n, P10474217337855646104.a n = A386684 (n + 1)

end A386684

/-! ## A386684.P7034139766383779620

`filter[A072588(n+1), A359429(#)]`
-/

namespace A386684.P7034139766383779620
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072588 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359429 (f1 j).toNat = 1) n)

end

end A386684.P7034139766383779620

namespace A386684

/-- `filter[A072588(n+1), A359429(#)]` -/
def P7034139766383779620.Spec : Prop :=
  ∀ n, P7034139766383779620.a n = A386684 (n + 1)

end A386684

/-! ## A386684.P7642463172726064219

`∩[A067259(n+1), A072588(n+1)]`
-/

namespace A386684.P7642463172726064219
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067259 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072588 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386684.P7642463172726064219

namespace A386684

/-- `∩[A067259(n+1), A072588(n+1)]` -/
def P7642463172726064219.Spec : Prop :=
  ∀ n, (P7642463172726064219.a n : ℤ) = A386684 (n + 1)

end A386684

/-!
# A386685: Classification of the interval [4*n+1, 4*n+2, 4*n+3] according to positions of primes.

The programs for A386685, the canonical program `A386685.P10921872709597016548` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A386685 has offset 0).

The definition of A386685 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A010051, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A386685.P10921872709597016548

`4*A010051(4*n+1)+2*A010051(4*n+2)+A010051(4*n+3)`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A386685

/-- `4*A010051(4*n+1)+2*A010051(4*n+2)+A010051(4*n+3)` -/
def P10921872709597016548.Spec : Prop :=
  ∀ n, P10921872709597016548.a n = A386685 n

theorem P10921872709597016548.correct : P10921872709597016548.Spec := by
  intro n
  simp only [A386685]

end A386685

/-!
# A386687: Partial sums of A386369.

The programs for A386687, there is no canonical definition to state claims against.
-/

/-! ## A386687.P15772845203468200509

`∑[A386369(n+1)]`
-/

namespace A386687.P15772845203468200509
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386369 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A386687.P15772845203468200509

/-! ## A386687.P16546905925826400451

`lt[A007093(n), A130642(A087256(n+1))]`
-/

namespace A386687.P16546905925826400451
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007093 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130642 (A087256 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A386687.P16546905925826400451

/-! ## A386687.P3216650494343320095

`lt[A328673(3*n+2), A001359(A328673(n))]`
-/

namespace A386687.P3216650494343320095
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328673 (3 * n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001359 (A328673 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A386687.P3216650494343320095

/-! ## A386687.P4503129661744484007

`lt[n, A074338(A087256(n+1))]`
-/

namespace A386687.P4503129661744484007
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074338 (A087256 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A386687.P4503129661744484007

/-! ## A386687.P9463421927678963313

`∑[∑[A303553(A067538(3*(n+1)))]]`
-/

namespace A386687.P9463421927678963313
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303553 (A067538 (3 * (n + 1))).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A386687.P9463421927678963313

/-!
# A386688: Squares in A386687.

The programs for A386688, there is no canonical definition to state claims against.
-/

/-! ## A386688.P8380347029074323030

`A386370(n+1)²`
-/

namespace A386688.P8380347029074323030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386370 (n + 1) ^ 2

end

end A386688.P8380347029074323030

/-! ## A386688.P8688760182757839716

`A386370(n+1)^A003417(floor(1/(n+1)))`
-/

namespace A386688.P8688760182757839716
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A386370 (n + 1) : ℚ) ^ (A003417 ⌊1 / (n + 1 : ℚ)⌋.toNat : ℤ)

end

end A386688.P8688760182757839716

/-! ## A386688.P13443101797754920358

`A386370(n+1)^A002720(A152847(n))`
-/

namespace A386688.P13443101797754920358
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A386370 (n + 1) : ℚ) ^ (A002720 (A152847 n).toNat : ℤ)

end

end A386688.P13443101797754920358

/-! ## A386688.P9693461820324667064

`A386370(n+1)^A288732(A176327(2*n+1))`
-/

namespace A386688.P9693461820324667064
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A386370 (n + 1) : ℚ) ^ (A288732 (A176327 (2 * n + 1)).toNat : ℤ)

end

end A386688.P9693461820324667064

/-! ## A386688.P18111179715610519692

`A386370(n+1)^A386376(A131128(n))`
-/

namespace A386688.P18111179715610519692
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A386370 (n + 1) : ℚ) ^ (A386376 (A131128 n).toNat : ℤ)

end

end A386688.P18111179715610519692

