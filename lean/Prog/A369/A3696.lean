import SequenceMachineLib
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
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C034
import Seq.B000.C036
import Seq.B000.C038
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
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
import Seq.B007.C001
import Seq.B008.C000
import Seq.B008.C001
import Seq.B009.C000
import Seq.B009.C001
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
# A369600: Expansion of (1/x) * Series_Reversion( x * (1/(1+x)^3 - x^3) ).

The programs for A369600, there is no canonical definition to state claims against.
-/

/-! ## A369600.P13608216625275293711

`A058681(n)+∑[A082499(2*n+1)]`
-/

namespace A369600.P13608216625275293711
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082499 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058681 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A369600.P13608216625275293711

/-!
# A369601: Dirichlet convolution of totient function with reduced totient function.

The programs for A369601, there is no canonical definition to state claims against.
-/

/-! ## A369601.P4610079615603825638

`∑{d}[n+1, #*A369700((n+1)/#)]`
-/

namespace A369601.P4610079615603825638
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A369700 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A369601.P4610079615603825638

/-! ## A369601.P12114974225673870240

`∑{d}[n+1, A000010(#)*A002322((n+1)/#)]`
-/

namespace A369601.P12114974225673870240
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000010 d * A002322 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A369601.P12114974225673870240

/-! ## A369601.P4072341561181878338

`∑{d}[n+1, A008683(#)*A331314((n+1)/#)]`
-/

namespace A369601.P4072341561181878338
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A331314 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A369601.P4072341561181878338

/-! ## A369601.P15710399258095814121

`∑{d}[n+1, A007427(#)*A365648((n+1)/#)]`
-/

namespace A369601.P15710399258095814121
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007427 d * A365648 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A369601.P15710399258095814121

/-! ## A369601.P7960220090486341077

`∑{d}[n+1, A158522(#)*A365647((n+1)/#)]`
-/

namespace A369601.P7960220090486341077
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A158522 d * A365647 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A369601.P7960220090486341077

/-!
# A369603: S is a "boomerang sequence": adding 9 to each digit of S and following the result with a comma leaves S unchanged.

The programs for A369603, there is no canonical definition to state claims against.
-/

/-! ## A369603.P13969658368584665571

`A103708(A000027(n+1)+200)`
-/

namespace A369603.P13969658368584665571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103708 (A000027 (n + 1) + 200).toNat

end

end A369603.P13969658368584665571

/-! ## A369603.P18365425329671145991

`A129502(n²+8)+A103700(n)`
-/

namespace A369603.P18365425329671145991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129502 (n ^ 2 + 8) + A103700 n

end

end A369603.P18365425329671145991

/-! ## A369603.P4752836593787059388

`A103700(A067180(3*(n+1))+n)`
-/

namespace A369603.P4752836593787059388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103700 (A067180 (3 * (n + 1)) + (n : ℤ)).toNat

end

end A369603.P4752836593787059388

/-! ## A369603.P13507505728606038289

`A103700(A028310(n))+A000007(n)`
-/

namespace A369603.P13507505728606038289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103700 (A028310 n).toNat + A000007 n

end

end A369603.P13507505728606038289

/-! ## A369603.P8520186537184332481

`A103700(A028310(n)+A000038(n))`
-/

namespace A369603.P8520186537184332481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103700 (A028310 n + A000038 n).toNat

end

end A369603.P8520186537184332481

/-! ## A369603.P3634711805234882553

`A256068(A000124(n))+A103700(A028310(n))`
-/

namespace A369603.P3634711805234882553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256068 (A000124 n).toNat + A103700 (A028310 n).toNat

end

end A369603.P3634711805234882553

/-! ## A369603.P16498501070267245624

`A344612(A000217(n))+A103700(A028310(n))`
-/

namespace A369603.P16498501070267245624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344612 (A000217 n).toNat + A103700 (A028310 n).toNat

end

end A369603.P16498501070267245624

/-!
# A369606: Number of inequivalent connected induced subgraphs of the hypercube graph of dimension n.

The programs for A369606, there is no canonical definition to state claims against.
-/

/-! ## A369606.P15987116824962089683

`∑[A100913(n!)]`
-/

namespace A369606.P15987116824962089683
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100913 (Nat.factorial n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A369606.P15987116824962089683

/-!
# A369607: Greedy solution a(1) < a(2) < ... to 1/a(1) + 1/a(2) + ... = (1 - 1/a(1)) * (1 - 1/a(2)) * ....

The programs for A369607, there is no canonical definition to state claims against.
-/

/-! ## A369607.P12443854248640776254

`1+A000472(n+1)`
-/

namespace A369607.P12443854248640776254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + A000472 (n + 1)

end

end A369607.P12443854248640776254

/-!
# A369608: Number of solutions to +- 2 +- 3 +- 5 +- 7 +- ... +- prime(2*n) = prime(2*n).

The programs for A369608, there is no canonical definition to state claims against.
-/

/-! ## A369608.P12782944080101823837

`A060018(A144014(n)+A010120(n))`
-/

namespace A369608.P12782944080101823837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060018 (A144014 n + A010120 n).toNat

end

end A369608.P12782944080101823837

/-! ## A369608.P11194832672835322645

`A054404(A156043(n+1))+A051889(n)`
-/

namespace A369608.P11194832672835322645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054404 (A156043 (n + 1)).toNat + A051889 n

end

end A369608.P11194832672835322645

/-! ## A369608.P4780334927873560078

`A325106(A087949(n))+A035615(n+1)`
-/

namespace A369608.P4780334927873560078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325106 (A087949 n).toNat + A035615 (n + 1)

end

end A369608.P4780334927873560078

/-!
# A369609: Irregular triangle read by rows where row n lists k <= n such that A007947(k) = A007947(n).

The programs for A369609, there is no canonical definition to state claims against.
-/

/-! ## A369609.P3762067137835249502

`A284318(n+1)%A265149(n+1)`
-/

namespace A369609.P3762067137835249502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A284318 (n + 1)) (A265149 (n + 1))

end

end A369609.P3762067137835249502

/-! ## A369609.P3317220176329276399

`gcd(A284318(n+1), A340506(n+1))`
-/

namespace A369609.P3317220176329276399
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A284318 (n + 1)) (A340506 (n + 1))

end

end A369609.P3317220176329276399

/-! ## A369609.P2488635557846370706

`and(A152388(n+1), A284318(n+1))`
-/

namespace A369609.P2488635557846370706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A152388 (n + 1)) (A284318 (n + 1))

end

end A369609.P2488635557846370706

/-! ## A369609.P10731431019930962731

`and(A284318(n+1), A383046(n+3))`
-/

namespace A369609.P10731431019930962731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A284318 (n + 1)) (A383046 (n + 3))

end

end A369609.P10731431019930962731

/-! ## A369609.P11289234949518383310

`A284318(n+1)+A000007(A000070(n))`
-/

namespace A369609.P11289234949518383310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284318 (n + 1) + A000007 (A000070 n).toNat

end

end A369609.P11289234949518383310

/-!
# A369610: a(n) is the number of nonprime numbers < prime(n) which are not equal to twice a prime.

The programs for A369610, the canonical program `A369610.P10507155967084453302` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A369610 has offset 1).

The definition of A369610 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A014689, A079952, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A369610.P10507155967084453302

`A014689(n+1)-A079952(n+1)`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A369610

/-- `A014689(n+1)-A079952(n+1)` -/
def P10507155967084453302.Spec : Prop :=
  ∀ n, P10507155967084453302.a n = A369610 (n + 1)

theorem P10507155967084453302.correct : P10507155967084453302.Spec := by
  intro n
  simp only [A369610, Nat.add_sub_cancel]

end A369610

/-! ## A369610.P3413599272969532414

`A131733(n+1)+A107347(n+1)`
-/

namespace A369610.P3413599272969532414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131733 (n + 1) + A107347 (n + 1)

end

end A369610.P3413599272969532414

namespace A369610

/-- `A131733(n+1)+A107347(n+1)` -/
def P3413599272969532414.Spec : Prop :=
  ∀ n, P3413599272969532414.a n = A369610 (n + 1)

end A369610

/-! ## A369610.P14820221122280447833

`A000040(n+1)-A298861(n+1)`
-/

namespace A369610.P14820221122280447833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - A298861 (n + 1)

end

end A369610.P14820221122280447833

namespace A369610

/-- `A000040(n+1)-A298861(n+1)` -/
def P14820221122280447833.Spec : Prop :=
  ∀ n, P14820221122280447833.a n = A369610 (n + 1)

end A369610

/-! ## A369610.P8163556247408927594

`A338361(n+1)-Δ[n²]`
-/

namespace A369610.P8163556247408927594
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338361 (n + 1) - ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A369610.P8163556247408927594

namespace A369610

/-- `A338361(n+1)-Δ[n²]` -/
def P8163556247408927594.Spec : Prop :=
  ∀ n, P8163556247408927594.a n = A369610 (n + 1)

end A369610

/-! ## A369610.P1194511735591054267

`p?[A085118(n+1)]-A298861(n+1)`
-/

namespace A369610.P1194511735591054267
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085118 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - A298861 (n + 1)

end

end A369610.P1194511735591054267

namespace A369610

/-- `p?[A085118(n+1)]-A298861(n+1)` -/
def P1194511735591054267.Spec : Prop :=
  ∀ n, P1194511735591054267.a n = A369610 (n + 1)

end A369610

/-!
# A369611: Tropical version of Somos-7 sequence A006723.

The programs for A369611, the canonical program `A369611.P6460849240629551993` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A369611 has offset 0).

The definition of A369611 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A369611.P6460849240629551993

`A025795(n)-(A008676(n)+A008616(n))`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A369611

/-- `A025795(n)-(A008676(n)+A008616(n))` -/
def P6460849240629551993.Spec : Prop :=
  ∀ n, P6460849240629551993.a n = A369611 n

theorem P6460849240629551993.correct : P6460849240629551993.Spec := by
  intro n
  simp only [A369611]

end A369611

/-! ## A369611.P14506722531282679698

`A025795(n+1)-(A008616(n+1)+A008616(n))`
-/

namespace A369611.P14506722531282679698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025795 (n + 1) - (A008616 (n + 1) + A008616 n)

end

end A369611.P14506722531282679698

namespace A369611

/-- `A025795(n+1)-(A008616(n+1)+A008616(n))` -/
def P14506722531282679698.Spec : Prop :=
  ∀ n, P14506722531282679698.a n = A369611 n

end A369611

/-! ## A369611.P11863080144435971384

`A025795(2*n+1)-A000115(n)`
-/

namespace A369611.P11863080144435971384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025795 (2 * n + 1) - A000115 n

end

end A369611.P11863080144435971384

namespace A369611

/-- `A025795(2*n+1)-A000115(n)` -/
def P11863080144435971384.Spec : Prop :=
  ∀ n, P11863080144435971384.a n = A369611 n

end A369611

/-! ## A369611.P2961408830154616525

`A008667(2*n+1)-A008667(2*n)`
-/

namespace A369611.P2961408830154616525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008667 (2 * n + 1) - A008667 (2 * n)

end

end A369611.P2961408830154616525

namespace A369611

/-- `A008667(2*n+1)-A008667(2*n)` -/
def P2961408830154616525.Spec : Prop :=
  ∀ n, P2961408830154616525.a n = A369611 n

end A369611

/-! ## A369611.P6119247257628695738

`A005044(2*n+1)-A025795(2*n)`
-/

namespace A369611.P6119247257628695738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005044 (2 * n + 1) - A025795 (2 * n)

end

end A369611.P6119247257628695738

namespace A369611

/-- `A005044(2*n+1)-A025795(2*n)` -/
def P6119247257628695738.Spec : Prop :=
  ∀ n, P6119247257628695738.a n = A369611 n

end A369611

/-! ## A369611.P11506379205256769076

`A025802(2*n+1)-A008680(2*n)`
-/

namespace A369611.P11506379205256769076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025802 (2 * n + 1) - A008680 (2 * n)

end

end A369611.P11506379205256769076

namespace A369611

/-- `A025802(2*n+1)-A008680(2*n)` -/
def P11506379205256769076.Spec : Prop :=
  ∀ n, P11506379205256769076.a n = A369611 n

end A369611

/-! ## A369611.P49199563166905400

`A025795(2*n+1)-A025802(2*n)`
-/

namespace A369611.P49199563166905400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025795 (2 * n + 1) - A025802 (2 * n)

end

end A369611.P49199563166905400

namespace A369611

/-- `A025795(2*n+1)-A025802(2*n)` -/
def P49199563166905400.Spec : Prop :=
  ∀ n, P49199563166905400.a n = A369611 n

end A369611

/-! ## A369611.P3097246212918738435

`∑[A008680(2*n+1)-A008680(2*n)]`
-/

namespace A369611.P3097246212918738435
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008680 (2 * n + 1) - A008680 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A369611.P3097246212918738435

namespace A369611

/-- `∑[A008680(2*n+1)-A008680(2*n)]` -/
def P3097246212918738435.Spec : Prop :=
  ∀ n, P3097246212918738435.a n = A369611 n

end A369611

/-!
# A369613: Numbers k such that ceiling(10^k/7) is prime.

The programs for A369613, there is no canonical definition to state claims against.
-/

/-! ## A369613.P13436345703755122394

`A326785(a(n-1))` with `a(0)=1, a(1)=4, a(2)=10`
-/

namespace A369613.P13436345703755122394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4, 10] fun n a =>
  A326785 (a (n - 1)).toNat

end

end A369613.P13436345703755122394

/-!
# A369614: Maximum size of Condorcet domain on n alternatives.

The programs for A369614, there is no canonical definition to state claims against.
-/

/-! ## A369614.P693148608779110294

`ceil(sqrt(5)*a(n-1))-n%2` with `a(0)=1, a(1)=1, a(2)=2`
-/

namespace A369614.P693148608779110294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2] fun n a =>
  ⌈Real.sqrt (5 : ℝ) * (a (n - 1) : ℝ)⌉ - ((n % 2 : ℕ) : ℤ)

end

end A369614.P693148608779110294

/-! ## A369614.P5013938642964606713

`floor(sqrt(sqrt(A364195(n))))`
-/

namespace A369614.P5013938642964606713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sqrt (Real.sqrt (A364195 n : ℝ))⌋

end

end A369614.P5013938642964606713

/-! ## A369614.P5268493812722085371

`floor(sqrt(sqrt(A106336(3*n))))`
-/

namespace A369614.P5268493812722085371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sqrt (Real.sqrt (A106336 (3 * n) : ℝ))⌋

end

end A369614.P5268493812722085371

/-! ## A369614.P10590271885535680765

`floor(A049027(n)/ceil(2^(n-1)))`
-/

namespace A369614.P10590271885535680765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A049027 n : ℚ) / (⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉ : ℚ)⌋

end

end A369614.P10590271885535680765

/-! ## A369614.P16304388739303899286

`A074065(A052949(n))`
-/

namespace A369614.P16304388739303899286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074065 (A052949 n).toNat

end

end A369614.P16304388739303899286

/-!
# A369615: Powers of primes (A000961) whose neighbors have a prime number as their greatest odd divisor.

The programs for A369615, there is no canonical definition to state claims against.
-/

/-! ## A369615.P16598197597019565898

`filter[A369329(n+1), A010055(#)]`
-/

namespace A369615.P16598197597019565898
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369329 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010055 (f1 j).toNat = 1) n)

end

end A369615.P16598197597019565898

/-! ## A369615.P13689155464841381018

`filter[A369329(n+1), A069513(#)]`
-/

namespace A369615.P13689155464841381018
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369329 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A069513 (f1 j).toNat = 1) n)

end

end A369615.P13689155464841381018

/-! ## A369615.P15617209055943794895

`∩[A000961(n+1), A369329(n+1)]`
-/

namespace A369615.P15617209055943794895
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000961 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369329 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A369615.P15617209055943794895

/-! ## A369615.P8898923987495335631

`∩[A059046(n+1), A369329(n+1)]`
-/

namespace A369615.P8898923987495335631
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059046 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369329 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A369615.P8898923987495335631

/-! ## A369615.P12954445047313652006

`∩[A096165(n+1), A369329(n+1)]`
-/

namespace A369615.P12954445047313652006
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096165 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369329 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A369615.P12954445047313652006

/-!
# A369616: Expansion of (1/x) * Series_Reversion( x / (1/(1-x)^2 + x) ).

The programs for A369616, there is no canonical definition to state claims against.
-/

/-! ## A369616.P4381545794259351205

`∑[A270386(n)]`
-/

namespace A369616.P4381545794259351205
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270386 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A369616.P4381545794259351205

/-! ## A369616.P2513149448944679147

`A270386(n)+a(A028310(n)-1)` with `a(0)=1`
-/

namespace A369616.P2513149448944679147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A270386 n + a (A028310 n - 1).toNat

end

end A369616.P2513149448944679147

/-!
# A369617: Expansion of (1/x) * Series_Reversion( x / (1/(1-x)^3 + x) ).

The programs for A369617, there is no canonical definition to state claims against.
-/

/-! ## A369617.P5384501993294979985

`∑[A371483(n)]`
-/

namespace A369617.P5384501993294979985
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371483 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A369617.P5384501993294979985

/-!
# A369618: Expansion of (1/x) * Series_Reversion( x / (1/(1-x) + x^2) ).

The programs for A369618, there is no canonical definition to state claims against.
-/

/-! ## A369618.P16185934126027740020

`A148814(A073788(n))`
-/

namespace A369618.P16185934126027740020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148814 (A073788 n).toNat

end

end A369618.P16185934126027740020

/-! ## A369618.P5728647948294280735

`A148814(A171596(n))`
-/

namespace A369618.P5728647948294280735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148814 (A171596 n).toNat

end

end A369618.P5728647948294280735

/-! ## A369618.P11267985889362677502

`A214701(A151458(n))`
-/

namespace A369618.P11267985889362677502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214701 (A151458 n).toNat

end

end A369618.P11267985889362677502

/-!
# A369619: Expansion of (1/x) * Series_Reversion( x / (1/(1-x)^2 + x^2) ).

The programs for A369619, there is no canonical definition to state claims against.
-/

/-! ## A369619.P3001994950545996168

`A117451(A248221(n+1)+A084120(n))`
-/

namespace A369619.P3001994950545996168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117451 (A248221 (n + 1) + A084120 n).toNat

end

end A369619.P3001994950545996168

/-! ## A369619.P14191867129799029254

`A285881(A015535(n+1))+A177553(n)`
-/

namespace A369619.P14191867129799029254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285881 (A015535 (n + 1)).toNat + A177553 n

end

end A369619.P14191867129799029254

/-!
# A369620: Expansion of (1/x) * Series_Reversion( x / (1/(1-x)^3 + x^2) ).

The programs for A369620, there is no canonical definition to state claims against.
-/

/-! ## A369620.P15361131711632225506

`A293993(2*n)+∑[1-∏{p}[n+1, #]+n]`
-/

namespace A369620.P15361131711632225506
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((∏ p ∈ Nat.primeFactors (f2 n), p : ℕ) : ℤ) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293993 (2 * n) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A369620.P15361131711632225506

/-!
# A369621: Expansion of (1/x) * Series_Reversion( x / (1/(1-x) + x^3) ).

The programs for A369621, there is no canonical definition to state claims against.
-/

/-! ## A369621.P5543353849276554586

`A077467(A286955(n))`
-/

namespace A369621.P5543353849276554586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077467 (A286955 n).toNat

end

end A369621.P5543353849276554586

/-! ## A369621.P14714886267452141419

`A001462(A000264(n+1))`
-/

namespace A369621.P14714886267452141419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001462 (A000264 (n + 1)).toNat

end

end A369621.P14714886267452141419

/-! ## A369621.P4180411147573761839

`A117448(A300641(n+2))`
-/

namespace A369621.P4180411147573761839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117448 (A300641 (n + 2)).toNat

end

end A369621.P4180411147573761839

/-!
# A369622: Expansion of (1/x) * Series_Reversion( x / (1/(1-x)^2 + x^3) ).

The programs for A369622, there is no canonical definition to state claims against.
-/

/-! ## A369622.P13228219747186782463

`Δ[A246694(∑[A367057(n)])]`
-/

namespace A369622.P13228219747186782463
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367057 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246694 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A369622.P13228219747186782463

/-! ## A369622.P1958534724122236387

`A112934(n)+A051953(A000351(n))`
-/

namespace A369622.P1958534724122236387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112934 n + A051953 (A000351 n).toNat

end

end A369622.P1958534724122236387

/-!
# A369623: Expansion of (1/x) * Series_Reversion( x / (1/(1-x)^3 + x^3) ).

The programs for A369623, there is no canonical definition to state claims against.
-/

/-! ## A369623.P11891787631101871168

`A186145(A178869(n)+A011782(n))`
-/

namespace A369623.P11891787631101871168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186145 (A178869 n + A011782 n).toNat

end

end A369623.P11891787631101871168

/-!
# A369626: a(n) is the number of permutations of [n] which avoid the patterns 1234, 1324, and 2413.

The programs for A369626, the canonical program `A369626.P17577102465428849684` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A369626 has offset 0).

The definition of A369626 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A369626.P17577102465428849684

`7*a(n-1)-16*a(n-2)+14*a(n-3)-4*a(n-4)` with `a(0)=1, a(1)=1, a(2)=2, a(3)=6, a(4)=21`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A369626

/-- `7*a(n-1)-16*a(n-2)+14*a(n-3)-4*a(n-4)` -/
def P17577102465428849684.Spec : Prop :=
  ∀ n, P17577102465428849684.a n = A369626 n

theorem P17577102465428849684.correct : P17577102465428849684.Spec := by
  intro n
  simp only [A369626]

end A369626

/-! ## A369626.P14111169099065727945

`A294815(A024640(n))`
-/

namespace A369626.P14111169099065727945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294815 (A024640 n).toNat

end

end A369626.P14111169099065727945

namespace A369626

/-- `A294815(A024640(n))` -/
def P14111169099065727945.Spec : Prop :=
  ∀ n, P14111169099065727945.a n = A369626 n

end A369626

/-! ## A369626.P2980089318326679050

`A294815(A024641(n))`
-/

namespace A369626.P2980089318326679050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294815 (A024641 n).toNat

end

end A369626.P2980089318326679050

namespace A369626

/-- `A294815(A024641(n))` -/
def P2980089318326679050.Spec : Prop :=
  ∀ n, P2980089318326679050.a n = A369626 n

end A369626

/-!
# A369627: Expansion of 1/(1 - x^2/(1-9*x)^(1/3)).

The programs for A369627, there is no canonical definition to state claims against.
-/

/-! ## A369627.P17720101947158427902

`A141099(A150751(n))`
-/

namespace A369627.P17720101947158427902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141099 (A150751 n).toNat

end

end A369627.P17720101947158427902

/-! ## A369627.P2254001732533705260

`A081753(A260530(n))`
-/

namespace A369627.P2254001732533705260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081753 (A260530 n).toNat

end

end A369627.P2254001732533705260

/-!
# A369630: Expansion of (1/x) * Series_Reversion( x * (1/(1+x^3) - x) ).

The programs for A369630, there is no canonical definition to state claims against.
-/

/-! ## A369630.P6027348973246577590

`A324930(A049288(n+1))+A192540(n+1)`
-/

namespace A369630.P6027348973246577590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324930 (A049288 (n + 1)).toNat + A192540 (n + 1)

end

end A369630.P6027348973246577590

/-! ## A369630.P8480631744812410749

`A324424(A246080(n+1))+A192540(n+1)`
-/

namespace A369630.P8480631744812410749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324424 (A246080 (n + 1)).toNat + A192540 (n + 1)

end

end A369630.P8480631744812410749

/-! ## A369630.P11532489592513862464

`A353480(A015518(n+2))+A192540(n+1)`
-/

namespace A369630.P11532489592513862464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353480 (A015518 (n + 2)).toNat + A192540 (n + 1)

end

end A369630.P11532489592513862464

/-! ## A369630.P9754939462346159649

`A359550(A333930(n+4))+A192540(n+1)`
-/

namespace A369630.P9754939462346159649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359550 (A333930 (n + 4)).toNat + A192540 (n + 1)

end

end A369630.P9754939462346159649

/-!
# A369631: Expansion of (1/x) * Series_Reversion( x * (1/(1+x^4) - x) ).

The programs for A369631, there is no canonical definition to state claims against.
-/

/-! ## A369631.P1961745026002909415

`A000027(A366054(n)+A185213(n+3))`
-/

namespace A369631.P1961745026002909415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A366054 n + A185213 (n + 3)).toNat

end

end A369631.P1961745026002909415

/-! ## A369631.P9800202607238544189

`A366054(n)+A288314(A000108(n))`
-/

namespace A369631.P9800202607238544189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366054 n + A288314 (A000108 n).toNat

end

end A369631.P9800202607238544189

/-! ## A369631.P2596288877263051827

`A366073(A366025(n))+A366054(n)`
-/

namespace A369631.P2596288877263051827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366073 (A366025 n).toNat + A366054 n

end

end A369631.P2596288877263051827

/-! ## A369631.P3359099307021354567

`A366073(A366042(n))+A366054(n)`
-/

namespace A369631.P3359099307021354567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366073 (A366042 n).toNat + A366054 n

end

end A369631.P3359099307021354567

/-! ## A369631.P17056617955576582948

`A368913(A366096(n))+A366054(n)`
-/

namespace A369631.P17056617955576582948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368913 (A366096 n).toNat + A366054 n

end

end A369631.P17056617955576582948

/-!
# A369636: Powerful numbers k that are neither prime powers nor products of primorials.

The programs for A369636, there is no canonical definition to state claims against.
-/

/-! ## A369636.P11799868060996259576

`∪[A369417(n+1), A369420(n+1)]`
-/

namespace A369636.P11799868060996259576
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369417 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369420 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A369636.P11799868060996259576

/-! ## A369636.P16316060524285578931

`∪[A387620(n+1), A387958(n+1)]`
-/

namespace A369636.P16316060524285578931
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387620 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387958 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A369636.P16316060524285578931

/-! ## A369636.P12565660336528807339

`∩[A001694(n+1), A367268(n+1)]`
-/

namespace A369636.P12565660336528807339
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001694 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367268 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A369636.P12565660336528807339

/-! ## A369636.P18411226885681113973

`∩[A286708(n+1), A367268(n+1)]`
-/

namespace A369636.P18411226885681113973
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286708 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367268 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A369636.P18411226885681113973

/-!
# A369637: a(n) = 1 if the maximal digit in the primorial base representation of n' is less than the maximal exponent in the prime factorization of n, where n' stands for the arithmetic derivative of n, A003415.

The programs for A369637, there is no canonical definition to state claims against.
-/

/-! ## A369637.P16176166829134813121

`char[A351098(n+1)-1]`
-/

namespace A369637.P16176166829134813121
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351098 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A369637.P16176166829134813121

/-! ## A369637.P8262495017798573944

`floor(A351097(n+1)/(n+1))²`
-/

namespace A369637.P8262495017798573944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A351097 (n + 1) : ℚ) / (n + 1 : ℚ)⌋ ^ 2

end

end A369637.P8262495017798573944

/-! ## A369637.P13214454315926489280

`A000217(-floor(A351097(n+1)/(n+1)))`
-/

namespace A369637.P13214454315926489280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (-⌊(A351097 (n + 1) : ℚ) / (n + 1 : ℚ)⌋).toNat

end

end A369637.P13214454315926489280

/-! ## A369637.P8034427411282288896

`A005059(-floor(A351097(n+1)/(n+1)))`
-/

namespace A369637.P8034427411282288896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005059 (-⌊(A351097 (n + 1) : ℚ) / (n + 1 : ℚ)⌋).toNat

end

end A369637.P8034427411282288896

/-! ## A369637.P7783616989463098288

`A371270(floor(A351097(n+1)/(n+1))+1)`
-/

namespace A369637.P7783616989463098288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371270 (⌊(A351097 (n + 1) : ℚ) / (n + 1 : ℚ)⌋ + 1).toNat

end

end A369637.P7783616989463098288

/-!
# A369638: The n-th arithmetic derivative of 2^7.

The programs for A369638, there is no canonical definition to state claims against.
-/

/-! ## A369638.P3779304299568715450

`A003415(a(n-1))` with `a(0)=128`
-/

namespace A369638.P3779304299568715450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [128] fun n a =>
  A003415 (a (n - 1)).toNat

end

end A369638.P3779304299568715450

/-!
# A369639: Numbers k, not squarefree, such that the maximal digit in the primorial base representation of k' is <= 3, where k' stands for the arithmetic derivative of k, A003415.

The programs for A369639, there is no canonical definition to state claims against.
-/

/-! ## A369639.P15368051029880476616

`A013929(lt[A237363(n), A160468(2*(n+1))])`
-/

namespace A369639.P15368051029880476616
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237363 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160468 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013929 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A369639.P15368051029880476616

/-! ## A369639.P17797906784445544894

`A013929(lt[A376729(n), A160468(2*(n+1))])`
-/

namespace A369639.P17797906784445544894
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376729 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160468 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013929 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A369639.P17797906784445544894

/-! ## A369639.P15092292584362205975

`A013929(lt[A135900(3*n+2), A232908(2*n+1)])`
-/

namespace A369639.P15092292584362205975
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135900 (3 * n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232908 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013929 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A369639.P15092292584362205975

/-! ## A369639.P7460032260494390235

`lt[A237448(A007318(3*n+1)), A105570(n)]`
-/

namespace A369639.P7460032260494390235
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237448 (A007318 (3 * n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105570 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A369639.P7460032260494390235

/-! ## A369639.P12114531416703208897

`A375142(lt[A001899(2*(n+2)), A215733(n+1)])`
-/

namespace A369639.P12114531416703208897
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001899 (2 * (n + 2))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215733 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375142 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A369639.P12114531416703208897

/-!
# A369640: a(n) = 1 if n is composite and n' is a sum of distinct primorial numbers, otherwise 0, where n' stands for the arithmetic derivative of n, A003415.

The programs for A369640, there is no canonical definition to state claims against.
-/

/-! ## A369640.P18305349767249498007

`char[A369641(n+1)]`
-/

namespace A369640.P18305349767249498007
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369641 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A369640.P18305349767249498007

/-! ## A369640.P17833824119433621960

`char[∩[A002808(n+1), A341518(n+1)]]`
-/

namespace A369640.P17833824119433621960
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341518 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∧ ∃ j, f3 j = (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A369640.P17833824119433621960

/-! ## A369640.P3082267973249589885

`and(1, A126306(A123125(n+3)))`
-/

namespace A369640.P3082267973249589885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A126306 (A123125 (n + 3)).toNat)

end

end A369640.P3082267973249589885

/-! ## A369640.P6604829423429836016

`and(A373096(n), A374925(n))`
-/

namespace A369640.P6604829423429836016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A373096 n) (A374925 n)

end

end A369640.P6604829423429836016

/-! ## A369640.P12078488081464015767

`and(A037801(n+1), A374925(n))`
-/

namespace A369640.P12078488081464015767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A037801 (n + 1)) (A374925 n)

end

end A369640.P12078488081464015767

/-!
# A369641: Composite numbers k such that k' is a sum of distinct primorial numbers, where k' stands for the arithmetic derivative of k, A003415.

The programs for A369641, there is no canonical definition to state claims against.
-/

/-! ## A369641.P12796366741491319789

`filter[A341518(n+1), A369640(#)]`
-/

namespace A369641.P12796366741491319789
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341518 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A369640 (f1 j).toNat = 1) n)

end

end A369641.P12796366741491319789

/-! ## A369641.P1227857530772169879

`filter[A341518(n+2), A066247(#)]`
-/

namespace A369641.P1227857530772169879
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341518 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A066247 (f1 j).toNat = 1) n)

end

end A369641.P1227857530772169879

/-! ## A369641.P13962173835597821999

`filter[A341518(n+3), A005171(#)]`
-/

namespace A369641.P13962173835597821999
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341518 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A369641.P13962173835597821999

/-! ## A369641.P2807237011371506829

`lt[0, A369640(n)]`
-/

namespace A369641.P2807237011371506829
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369640 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A369641.P2807237011371506829

/-! ## A369641.P2662247790034332346

`∩[A002808(n+1), A341518(n+1)]`
-/

namespace A369641.P2662247790034332346
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341518 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A369641.P2662247790034332346

/-! ## A369641.P5516951071203869595

`filter[A002808(n+1), A369640(#)]`
-/

namespace A369641.P5516951071203869595
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A369640 (f1 j).toNat = 1) n)

end

end A369641.P5516951071203869595

/-! ## A369641.P3066505256248495302

`filter[A018252(n+1), A369640(#)]`
-/

namespace A369641.P3066505256248495302
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A369640 (f1 j).toNat = 1) n)

end

end A369641.P3066505256248495302

/-! ## A369641.P15721993426994624600

`filter[A056653(n+1), A369640(#)]`
-/

namespace A369641.P15721993426994624600
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056653 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A369640 (f1 j).toNat = 1) n)

end

end A369641.P15721993426994624600

/-! ## A369641.P4980982053992799879

`filter[A065090(n+1), A369640(#)]`
-/

namespace A369641.P4980982053992799879
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065090 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A369640 (f1 j).toNat = 1) n)

end

end A369641.P4980982053992799879

/-! ## A369641.P9924678673151316894

`filter[A068631(n+1), A369640(#)]`
-/

namespace A369641.P9924678673151316894
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068631 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A369640 (f1 j).toNat = 1) n)

end

end A369641.P9924678673151316894

/-! ## A369641.P12031971242833275338

`filter[A073900(n+1), A369640(#)]`
-/

namespace A369641.P12031971242833275338
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073900 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A369640 (f1 j).toNat = 1) n)

end

end A369641.P12031971242833275338

/-! ## A369641.P505144789282477947

`filter[A176423(n+2), A369640(#)]`
-/

namespace A369641.P505144789282477947
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176423 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A369640 (f1 j).toNat = 1) n)

end

end A369641.P505144789282477947

/-! ## A369641.P8557875376906387496

`filter[A001690(n+1), A369640(#)]`
-/

namespace A369641.P8557875376906387496
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001690 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A369640 (f1 j).toNat = 1) n)

end

end A369641.P8557875376906387496

/-! ## A369641.P2430950746475667408

`eq[A054977(n), A369640(n)]`
-/

namespace A369641.P2430950746475667408
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369640 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A369641.P2430950746475667408

/-! ## A369641.P16467580193818506594

`eq[A141044(n), A369640(n)]`
-/

namespace A369641.P16467580193818506594
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141044 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369640 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A369641.P16467580193818506594

/-! ## A369641.P3254016250264022848

`eq[A158388(n), A369640(n)]`
-/

namespace A369641.P3254016250264022848
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158388 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369640 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A369641.P3254016250264022848

/-! ## A369641.P2793952583352990979

`eq[A261143(n), A369640(n)]`
-/

namespace A369641.P2793952583352990979
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261143 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369640 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A369641.P2793952583352990979

/-! ## A369641.P15569686840732434996

`eq[A329684(n), A369640(n)]`
-/

namespace A369641.P15569686840732434996
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329684 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369640 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A369641.P15569686840732434996

/-! ## A369641.P14106281983074140593

`eq[A369640(n), A373565(n)]`
-/

namespace A369641.P14106281983074140593
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369640 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373565 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A369641.P14106281983074140593

/-! ## A369641.P6520019817744285661

`eq[A008461(n+1), A369640(n)]`
-/

namespace A369641.P6520019817744285661
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008461 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369640 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A369641.P6520019817744285661

/-!
# A369642: Composite numbers k, not squarefree semiprimes, such that k' is a sum of distinct primorial numbers, where k' stands for the arithmetic derivative of k, A003415.

The programs for A369642, there is no canonical definition to state claims against.
-/

/-! ## A369642.P323932436190478659

`filter[A066423(n+1), A369640(#)]`
-/

namespace A369642.P323932436190478659
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066423 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A369640 (f1 j).toNat = 1) n)

end

end A369642.P323932436190478659

/-! ## A369642.P5292542031130442592

`filter[A289553(n+1), A369640(#)]`
-/

namespace A369642.P5292542031130442592
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289553 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A369640 (f1 j).toNat = 1) n)

end

end A369642.P5292542031130442592

/-! ## A369642.P13692581218234398411

`∩[A066423(n+1), A341518(n+1)]`
-/

namespace A369642.P13692581218234398411
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066423 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341518 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A369642.P13692581218234398411

/-! ## A369642.P15372608275794720873

`∩[A066423(n+1), A369641(n+1)]`
-/

namespace A369642.P15372608275794720873
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066423 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369641 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A369642.P15372608275794720873

/-! ## A369642.P5635577910349156270

`∩[A210994(n+1), A369641(n+1)]`
-/

namespace A369642.P5635577910349156270
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210994 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369641 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A369642.P5635577910349156270

/-! ## A369642.P5357717683283446155

`∩[A246716(n+1), A369641(n+1)]`
-/

namespace A369642.P5357717683283446155
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246716 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369641 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A369642.P5357717683283446155

/-! ## A369642.P13799781440601265669

`∩[A289553(n+1), A369641(n+1)]`
-/

namespace A369642.P13799781440601265669
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289553 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369641 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A369642.P13799781440601265669

/-!
# A369643: a(n) = 1 if n' / gcd(n,n') is a multiple of 3, otherwise 0. Here n' stands for the arithmetic derivative of n, A003415.

The programs for A369643, the canonical program `A369643.P13743877449333020422` is in `Seq.B009.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A369643 has offset 1).

The definition of A369643 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A083345, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A369643.P13743877449333020422

`A079978(A083345(n+1))`

The canonical program, it is in `Seq.B009.C001`.
-/

namespace A369643

/-- `A079978(A083345(n+1))` -/
def P13743877449333020422.Spec : Prop :=
  ∀ n, P13743877449333020422.a n = A369643 (n + 1)

theorem P13743877449333020422.correct : P13743877449333020422.Spec := by
  intro n
  simp only [A369643, Nat.add_sub_cancel]

end A369643

/-! ## A369643.P86798828294617705

`A359430(3*A086130(n+1)/(n+1))`
-/

namespace A369643.P86798828294617705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359430 (SequenceMachineLib.roundAway (3 * ((A086130 (n + 1) : ℚ) / (n + 1 : ℚ)))).toNat

end

end A369643.P86798828294617705

namespace A369643

/-- `A359430(3*A086130(n+1)/(n+1))` -/
def P86798828294617705.Spec : Prop :=
  ∀ n, P86798828294617705.a n = A369643 (n + 1)

end A369643

/-! ## A369643.P7712421614465451019

`A359430(3*∑{d}[n+1, #*A369455((n+1)/#)])`
-/

namespace A369643.P7712421614465451019
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359430 (3 * (∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A369455 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat)).toNat

end

end A369643.P7712421614465451019

namespace A369643

/-- `A359430(3*∑{d}[n+1, #*A369455((n+1)/#)])` -/
def P7712421614465451019.Spec : Prop :=
  ∀ n, P7712421614465451019.a n = A369643 (n + 1)

end A369643

/-! ## A369643.P5462874943043374631

`A359430(3*gcd(A189036(n+1), A342001(n+1)))`
-/

namespace A369643.P5462874943043374631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359430 (3 * Int.gcd (A189036 (n + 1)) (A342001 (n + 1)))

end

end A369643.P5462874943043374631

namespace A369643

/-- `A359430(3*gcd(A189036(n+1), A342001(n+1)))` -/
def P5462874943043374631.Spec : Prop :=
  ∀ n, P5462874943043374631.a n = A369643 (n + 1)

end A369643

/-! ## A369643.P11029133467949223694

`A000384(A083345(n+1)+1)%3`
-/

namespace A369643.P11029133467949223694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000384 (A083345 (n + 1) + 1).toNat) 3

end

end A369643.P11029133467949223694

namespace A369643

/-- `A000384(A083345(n+1)+1)%3` -/
def P11029133467949223694.Spec : Prop :=
  ∀ n, P11029133467949223694.a n = A369643 (n + 1)

end A369643

/-! ## A369643.P4895450487402347129

`A373483(A354091(n+1))`
-/

namespace A369643.P4895450487402347129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373483 (A354091 (n + 1)).toNat

end

end A369643.P4895450487402347129

namespace A369643

/-- `A373483(A354091(n+1))` -/
def P4895450487402347129.Spec : Prop :=
  ∀ n, P4895450487402347129.a n = A369643 (n + 1)

end A369643

/-! ## A369643.P13367872769724935831

`A057078(A083345(n+1)²)`
-/

namespace A369643.P13367872769724935831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057078 (A083345 (n + 1) ^ 2).toNat

end

end A369643.P13367872769724935831

namespace A369643

/-- `A057078(A083345(n+1)²)` -/
def P13367872769724935831.Spec : Prop :=
  ∀ n, P13367872769724935831.a n = A369643 (n + 1)

end A369643

/-! ## A369643.P5282245896600855603

`A057078(A083345(n+1)*A083345(n+1))`
-/

namespace A369643.P5282245896600855603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057078 (A083345 (n + 1) * A083345 (n + 1)).toNat

end

end A369643.P5282245896600855603

namespace A369643

/-- `A057078(A083345(n+1)*A083345(n+1))` -/
def P5282245896600855603.Spec : Prop :=
  ∀ n, P5282245896600855603.a n = A369643 (n + 1)

end A369643

/-! ## A369643.P18326383140995289617

`A267418(A083345(n+1)+n²)`
-/

namespace A369643.P18326383140995289617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267418 (A083345 (n + 1) + (n ^ 2 : ℤ)).toNat

end

end A369643.P18326383140995289617

namespace A369643

/-- `A267418(A083345(n+1)+n²)` -/
def P18326383140995289617.Spec : Prop :=
  ∀ n, P18326383140995289617.a n = A369643 (n + 1)

end A369643

/-! ## A369643.P14607178337776947474

`A257679(A072573(n+4))*A373474(n+1)`
-/

namespace A369643.P14607178337776947474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257679 (A072573 (n + 4)).toNat * A373474 (n + 1)

end

end A369643.P14607178337776947474

namespace A369643

/-- `A257679(A072573(n+4))*A373474(n+1)` -/
def P14607178337776947474.Spec : Prop :=
  ∀ n, P14607178337776947474.a n = A369643 (n + 1)

end A369643

/-!
# A369644: Positions of multiples of 3 in A083345.

The programs for A369644, the canonical program `A369644.P3309709740746332705` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A369644 has offset 1).

The definition of A369644 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A369644.P3309709740746332705

`lt[0, A369643(n+1)]+1`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A369644

/-- `lt[0, A369643(n+1)]+1` -/
def P3309709740746332705.Spec : Prop :=
  ∀ n, (P3309709740746332705.a n : ℤ) = A369644 (n + 1)

theorem P3309709740746332705.correct : P3309709740746332705.Spec := by
  intro n
  simp only [A369644, Nat.add_sub_cancel]

end A369644

/-! ## A369644.P628767708917958492

`record[A000027(n+1)*A369643(n+1)]`
-/

namespace A369644.P628767708917958492
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (n + 1) * A369643 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A369644.P628767708917958492

namespace A369644

/-- `record[A000027(n+1)*A369643(n+1)]` -/
def P628767708917958492.Spec : Prop :=
  ∀ n, P628767708917958492.a n = A369644 (n + 1)

end A369644

/-! ## A369644.P3757646512167554649

`filter[A327863(n+2), A369643(#)]`
-/

namespace A369644.P3757646512167554649
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327863 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A369643 (f1 j).toNat = 1) n)

end

end A369644.P3757646512167554649

namespace A369644

/-- `filter[A327863(n+2), A369643(#)]` -/
def P3757646512167554649.Spec : Prop :=
  ∀ n, P3757646512167554649.a n = A369644 (n + 1)

end A369644

/-! ## A369644.P12121480906129599519

`filter[A074232(n+1), A369643(#)]`
-/

namespace A369644.P12121480906129599519
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074232 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A369643 (f1 j).toNat = 1) n)

end

end A369644.P12121480906129599519

namespace A369644

/-- `filter[A074232(n+1), A369643(#)]` -/
def P12121480906129599519.Spec : Prop :=
  ∀ n, P12121480906129599519.a n = A369644 (n + 1)

end A369644

/-! ## A369644.P611397396731635358

`filter[A257586(n+1), A369643(#)]`
-/

namespace A369644.P611397396731635358
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257586 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A369643 (f1 j).toNat = 1) n)

end

end A369644.P611397396731635358

namespace A369644

/-- `filter[A257586(n+1), A369643(#)]` -/
def P611397396731635358.Spec : Prop :=
  ∀ n, P611397396731635358.a n = A369644 (n + 1)

end A369644

/-! ## A369644.P13777257570864966806

`filter[A018252(n+1), A369643(#)]`
-/

namespace A369644.P13777257570864966806
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A369643 (f1 j).toNat = 1) n)

end

end A369644.P13777257570864966806

namespace A369644

/-- `filter[A018252(n+1), A369643(#)]` -/
def P13777257570864966806.Spec : Prop :=
  ∀ n, P13777257570864966806.a n = A369644 (n + 1)

end A369644

/-! ## A369644.P14701719860995974821

`filter[A056653(n+1), A369643(#)]`
-/

namespace A369644.P14701719860995974821
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056653 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A369643 (f1 j).toNat = 1) n)

end

end A369644.P14701719860995974821

namespace A369644

/-- `filter[A056653(n+1), A369643(#)]` -/
def P14701719860995974821.Spec : Prop :=
  ∀ n, P14701719860995974821.a n = A369644 (n + 1)

end A369644

/-! ## A369644.P8410395321238958396

`filter[A065090(n+1), A369643(#)]`
-/

namespace A369644.P8410395321238958396
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065090 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A369643 (f1 j).toNat = 1) n)

end

end A369644.P8410395321238958396

namespace A369644

/-- `filter[A065090(n+1), A369643(#)]` -/
def P8410395321238958396.Spec : Prop :=
  ∀ n, P8410395321238958396.a n = A369644 (n + 1)

end A369644

/-! ## A369644.P11798416078220598366

`filter[A141468(n+2), A369643(#)]`
-/

namespace A369644.P11798416078220598366
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141468 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A369643 (f1 j).toNat = 1) n)

end

end A369644.P11798416078220598366

namespace A369644

/-- `filter[A141468(n+2), A369643(#)]` -/
def P11798416078220598366.Spec : Prop :=
  ∀ n, P11798416078220598366.a n = A369644 (n + 1)

end A369644

/-! ## A369644.P15145751541829941041

`filter[A222307(2*n+1), A369643(#)]`
-/

namespace A369644.P15145751541829941041
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222307 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A369643 (f1 j).toNat = 1) n)

end

end A369644.P15145751541829941041

namespace A369644

/-- `filter[A222307(2*n+1), A369643(#)]` -/
def P15145751541829941041.Spec : Prop :=
  ∀ n, P15145751541829941041.a n = A369644 (n + 1)

end A369644

/-! ## A369644.P1212960581490514266

`filter[A171581(n+1), A369643(#)]`
-/

namespace A369644.P1212960581490514266
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171581 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A369643 (f1 j).toNat = 1) n)

end

end A369644.P1212960581490514266

namespace A369644

/-- `filter[A171581(n+1), A369643(#)]` -/
def P1212960581490514266.Spec : Prop :=
  ∀ n, P1212960581490514266.a n = A369644 (n + 1)

end A369644

/-! ## A369644.P14686649060325888425

`filter[A338924(n+1), A369643(#)]`
-/

namespace A369644.P14686649060325888425
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338924 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A369643 (f1 j).toNat = 1) n)

end

end A369644.P14686649060325888425

namespace A369644

/-- `filter[A338924(n+1), A369643(#)]` -/
def P14686649060325888425.Spec : Prop :=
  ∀ n, P14686649060325888425.a n = A369644 (n + 1)

end A369644

/-! ## A369644.P11570824397195131876

`filter[A173905(n+2), A369643(#)]`
-/

namespace A369644.P11570824397195131876
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173905 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A369643 (f1 j).toNat = 1) n)

end

end A369644.P11570824397195131876

namespace A369644

/-- `filter[A173905(n+2), A369643(#)]` -/
def P11570824397195131876.Spec : Prop :=
  ∀ n, P11570824397195131876.a n = A369644 (n + 1)

end A369644

/-! ## A369644.P17345324634144888709

`filter[A073900(n+1), A369643(#)]`
-/

namespace A369644.P17345324634144888709
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073900 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A369643 (f1 j).toNat = 1) n)

end

end A369644.P17345324634144888709

namespace A369644

/-- `filter[A073900(n+1), A369643(#)]` -/
def P17345324634144888709.Spec : Prop :=
  ∀ n, P17345324634144888709.a n = A369644 (n + 1)

end A369644

/-! ## A369644.P15067263074127211515

`filter[A121543(n+1), A369643(#)]`
-/

namespace A369644.P15067263074127211515
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121543 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A369643 (f1 j).toNat = 1) n)

end

end A369644.P15067263074127211515

namespace A369644

/-- `filter[A121543(n+1), A369643(#)]` -/
def P15067263074127211515.Spec : Prop :=
  ∀ n, P15067263074127211515.a n = A369644 (n + 1)

end A369644

/-! ## A369644.P17996630207060503096

`filter[A089088(n), A369643(#)]`
-/

namespace A369644.P17996630207060503096
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089088 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A369643 (f1 j).toNat = 1) n)

end

end A369644.P17996630207060503096

namespace A369644

/-- `filter[A089088(n), A369643(#)]` -/
def P17996630207060503096.Spec : Prop :=
  ∀ n, P17996630207060503096.a n = A369644 (n + 1)

end A369644

/-! ## A369644.P309228734356194637

`filter[A382751(n+1), A369643(#)]`
-/

namespace A369644.P309228734356194637
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382751 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A369643 (f1 j).toNat = 1) n)

end

end A369644.P309228734356194637

namespace A369644

/-- `filter[A382751(n+1), A369643(#)]` -/
def P309228734356194637.Spec : Prop :=
  ∀ n, P309228734356194637.a n = A369644 (n + 1)

end A369644

/-! ## A369644.P13550550865831020308

`filter[A277376(n+2), A369643(#)]`
-/

namespace A369644.P13550550865831020308
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277376 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A369643 (f1 j).toNat = 1) n)

end

end A369644.P13550550865831020308

namespace A369644

/-- `filter[A277376(n+2), A369643(#)]` -/
def P13550550865831020308.Spec : Prop :=
  ∀ n, P13550550865831020308.a n = A369644 (n + 1)

end A369644

/-! ## A369644.P13606964382328847726

`filter[A073846(2*n+1), A369643(#)]`
-/

namespace A369644.P13606964382328847726
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073846 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A369643 (f1 j).toNat = 1) n)

end

end A369644.P13606964382328847726

namespace A369644

/-- `filter[A073846(2*n+1), A369643(#)]` -/
def P13606964382328847726.Spec : Prop :=
  ∀ n, P13606964382328847726.a n = A369644 (n + 1)

end A369644

/-! ## A369644.P10469322846961559840

`eq[A234959(2*n+1), A369643(n+1)]+1`
-/

namespace A369644.P10469322846961559840
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234959 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369643 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A369644.P10469322846961559840

namespace A369644

/-- `eq[A234959(2*n+1), A369643(n+1)]+1` -/
def P10469322846961559840.Spec : Prop :=
  ∀ n, (P10469322846961559840.a n : ℤ) = A369644 (n + 1)

end A369644

/-!
# A369645: Numbers k for which the difference A051903(k) - A328114(k) reaches a new maximum in range 1..k, where A051903 is the maximal exponent in the prime factorization of n, and A328114 is the maximal digit in the primorial base expansion of n.

The programs for A369645, there is no canonical definition to state claims against.
-/

/-! ## A369645.P538298755972414361

`A081294(n)*A293980(A054514(n+1))`
-/

namespace A369645.P538298755972414361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081294 n * A293980 (A054514 (n + 1)).toNat

end

end A369645.P538298755972414361

/-! ## A369645.P7414425665273757659

`A062570(∏[∑[A238279(n)]])`
-/

namespace A369645.P7414425665273757659
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238279 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062570 (∏ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A369645.P7414425665273757659

/-! ## A369645.P8233238684671456542

`∏[A023135(Δ[A109154(n)])]`
-/

namespace A369645.P8233238684671456542
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109154 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023135 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A369645.P8233238684671456542

/-!
# A369646: Numbers k such that the difference A051903(k) - A328114(A003415(k)) reaches a new maximum in range 1..k, where A051903 is the maximal exponent in the prime factorization of n, A328114 is the maximal digit in the primorial base expansion of n, and A003415 is the arithmetic derivative.

The programs for A369646, there is no canonical definition to state claims against.
-/

/-! ## A369646.P8285327593757872039

`A100631(A027705(n+1))`
-/

namespace A369646.P8285327593757872039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100631 (A027705 (n + 1)).toNat

end

end A369646.P8285327593757872039

/-!
# A369647: Nonzero numbers k in A341518 for which A051903(k) attains novel values.

The programs for A369647, there is no canonical definition to state claims against.
-/

/-! ## A369647.P17777098755340887306

`A096668(A000522(n))`
-/

namespace A369647.P17777098755340887306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096668 (A000522 n).toNat

end

end A369647.P17777098755340887306

/-!
# A369649: Numbers k in A276156 (sums of distinct primorial numbers) where the maximal exponent in the prime factorization of k attains a novel value.

The programs for A369649, there is no canonical definition to state claims against.
-/

/-! ## A369649.P15189908340902609251

`A276156(A369648(n+1))`
-/

namespace A369649.P15189908340902609251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276156 (A369648 (n + 1)).toNat

end

end A369649.P15189908340902609251

/-! ## A369649.P4819657367486893103

`A227154(A004981(n)-A256893(n))`
-/

namespace A369649.P4819657367486893103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227154 (A004981 n - A256893 n).toNat

end

end A369649.P4819657367486893103

/-!
# A369650: Numbers k such that A003415(k) = A276085(k), where A003415 is the arithmetic derivative, and A276085 is the primorial base log-function.

The programs for A369650, there is no canonical definition to state claims against.
-/

/-! ## A369650.P4690274351444705359

`A391865(A008812(n))`
-/

namespace A369650.P4690274351444705359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391865 (A008812 n).toNat

end

end A369650.P4690274351444705359

/-!
# A369653: a(n) = 1 if A327860(n) is a multiple of 3, otherwise 0, where A327860 is the arithmetic derivative of the primorial base exp-function.

The programs for A369653, there is no canonical definition to state claims against.
-/

/-! ## A369653.P7834322143893555885

`A359430(A276086(n))`
-/

namespace A369653.P7834322143893555885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359430 (A276086 n).toNat

end

end A369653.P7834322143893555885

/-! ## A369653.P5991875843094545787

`A079978(A327860(n))`
-/

namespace A369653.P5991875843094545787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079978 (A327860 n).toNat

end

end A369653.P5991875843094545787

/-! ## A369653.P2128902540782349026

`char[A369654(n+1)]`
-/

namespace A369653.P2128902540782349026
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369654 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A369653.P2128902540782349026

/-! ## A369653.P13058793170489430832

`A079978(A392600(n))`
-/

namespace A369653.P13058793170489430832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079978 (A392600 n).toNat

end

end A369653.P13058793170489430832

/-! ## A369653.P16601653589320991679

`A341450(A327860(n)%A049479(2*(n+1)))`
-/

namespace A369653.P16601653589320991679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341450 (Int.tmod (A327860 n) (A049479 (2 * (n + 1)))).toNat

end

end A369653.P16601653589320991679

/-! ## A369653.P7564243171466397740

`A001221(gcd(A049479(2*(n+1)), A327860(n)))`
-/

namespace A369653.P7564243171466397740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (Int.gcd (A049479 (2 * (n + 1))) (A327860 n))

end

end A369653.P7564243171466397740

/-! ## A369653.P15607881543832653056

`A359430(A351225(n)+n)`
-/

namespace A369653.P15607881543832653056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359430 (A351225 n + (n : ℤ)).toNat

end

end A369653.P15607881543832653056

/-! ## A369653.P1620423543255934559

`A359430(3*A327860(n))`
-/

namespace A369653.P1620423543255934559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359430 (3 * A327860 n).toNat

end

end A369653.P1620423543255934559

/-! ## A369653.P18349554718317713575

`A000217(A327860(n)+1)%3`
-/

namespace A369653.P18349554718317713575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000217 (A327860 n + 1).toNat) 3

end

end A369653.P18349554718317713575

/-! ## A369653.P3776696161005201606

`A079978(A008619(n)*A342002(n))`
-/

namespace A369653.P3776696161005201606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079978 (A008619 n * A342002 n).toNat

end

end A369653.P3776696161005201606

/-!
# A369654: Positions of multiples of 3 in A327860.

The programs for A369654, there is no canonical definition to state claims against.
-/

/-! ## A369654.P2538742691615164765

`lt[0, A369653(n)]`
-/

namespace A369654.P2538742691615164765
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369653 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A369654.P2538742691615164765

/-! ## A369654.P2278916905879401176

`filter[A047260(n+1), A369653(#)]`
-/

namespace A369654.P2278916905879401176
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A369653 (f1 j).toNat = 1) n)

end

end A369654.P2278916905879401176

/-! ## A369654.P7482816901200209686

`filter[A047252(n+1), A369653(#)]`
-/

namespace A369654.P7482816901200209686
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047252 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A369653 (f1 j).toNat = 1) n)

end

end A369654.P7482816901200209686

/-! ## A369654.P15102575135548350250

`filter[A047263(n+1), A369653(#)]`
-/

namespace A369654.P15102575135548350250
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047263 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A369653 (f1 j).toNat = 1) n)

end

end A369654.P15102575135548350250

/-! ## A369654.P6947302179356727016

`filter[A376919(n), A369653(#)]`
-/

namespace A369654.P6947302179356727016
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376919 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A369653 (f1 j).toNat = 1) n)

end

end A369654.P6947302179356727016

/-! ## A369654.P7703500898680169

`filter[A089389(2*(n+1)), A369653(#)]`
-/

namespace A369654.P7703500898680169
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089389 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A369653 (f1 j).toNat = 1) n)

end

end A369654.P7703500898680169

/-! ## A369654.P18081840672514912293

`filter[A004482(n+2), A369653(#)]`
-/

namespace A369654.P18081840672514912293
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004482 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A369653 (f1 j).toNat = 1) n)

end

end A369654.P18081840672514912293

/-! ## A369654.P6624270499719930505

`filter[A236348(n), A369653(#)]`
-/

namespace A369654.P6624270499719930505
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236348 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A369653 (f1 j).toNat = 1) n)

end

end A369654.P6624270499719930505

/-! ## A369654.P8385031472204311643

`lt[A327860(n)%3+2, 3]`
-/

namespace A369654.P8385031472204311643
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A327860 n) 3 + 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A369654.P8385031472204311643

/-! ## A369654.P16694868202891535033

`eq[A329684(n), A369653(n)]`
-/

namespace A369654.P16694868202891535033
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329684 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369653 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A369654.P16694868202891535033

/-! ## A369654.P17786796996575136084

`eq[A369653(n), A373565(n)]`
-/

namespace A369654.P17786796996575136084
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369653 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373565 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A369654.P17786796996575136084

/-! ## A369654.P1956013502873138194

`eq[A087960(n)², A369653(n)]`
-/

namespace A369654.P1956013502873138194
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087960 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369653 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A369654.P1956013502873138194

/-! ## A369654.P299509409572121172

`eq[A121273(n+1), A369653(n)]`
-/

namespace A369654.P299509409572121172
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121273 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369653 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A369654.P299509409572121172

/-! ## A369654.P2576165096675139286

`eq[A171624(n+1), A369653(n)]`
-/

namespace A369654.P2576165096675139286
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171624 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369653 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A369654.P2576165096675139286

/-! ## A369654.P17945290946371833545

`eq[A369653(n), A381204(n+2)]`
-/

namespace A369654.P17945290946371833545
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369653 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381204 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A369654.P17945290946371833545

/-! ## A369654.P17138610955649782861

`eq[A096285(n+3), A369653(n)]`
-/

namespace A369654.P17138610955649782861
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096285 (n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369653 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A369654.P17138610955649782861

/-! ## A369654.P6965961181141442227

`filter[A139179(n+1), A369653(#)]`
-/

namespace A369654.P6965961181141442227
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139179 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A369653 (f1 j).toNat = 1) n)

end

end A369654.P6965961181141442227

/-! ## A369654.P14816412841604809977

`filter[A092942(n), A369653(#)]`
-/

namespace A369654.P14816412841604809977
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092942 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A369653 (f1 j).toNat = 1) n)

end

end A369654.P14816412841604809977

/-! ## A369654.P7133631852106957172

`filter[A057355(2*n+1), A369653(#)]`
-/

namespace A369654.P7133631852106957172
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057355 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A369653 (f1 j).toNat = 1) n)

end

end A369654.P7133631852106957172

/-!
# A369655: a(n) = 1 if n' is odd and also n'' is odd, otherwise 0, where n' stands for the arithmetic derivative, A003415.

The programs for A369655, the canonical program `A369655.P9734755882445867410` is in `Seq.B009.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A369655 has offset 0).

The definition of A369655 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003415, A165560, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A369655.P9734755882445867410

`A165560(n)*A165560(A003415(n))`

The canonical program, it is in `Seq.B009.C001`.
-/

namespace A369655

/-- `A165560(n)*A165560(A003415(n))` -/
def P9734755882445867410.Spec : Prop :=
  ∀ n, P9734755882445867410.a n = A369655 n

theorem P9734755882445867410.correct : P9734755882445867410.Spec := by
  intro n
  simp only [A369655]

end A369655

/-! ## A369655.P15047781142386027931

`and(A068346(n), A165560(n))`
-/

namespace A369655.P15047781142386027931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A068346 n) (A165560 n)

end

end A369655.P15047781142386027931

namespace A369655

/-- `and(A068346(n), A165560(n))` -/
def P15047781142386027931.Spec : Prop :=
  ∀ n, P15047781142386027931.a n = A369655 n

end A369655

/-! ## A369655.P359685077518736916

`A369965(2*A003415(n))`
-/

namespace A369655.P359685077518736916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369965 (2 * A003415 n).toNat

end

end A369655.P359685077518736916

namespace A369655

/-- `A369965(2*A003415(n))` -/
def P359685077518736916.Spec : Prop :=
  ∀ n, P359685077518736916.a n = A369655 n

end A369655

/-! ## A369655.P16799810280501332080

`A369965(A003415(n)+A003415(n))`
-/

namespace A369655.P16799810280501332080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369965 (A003415 n + A003415 n).toNat

end

end A369655.P16799810280501332080

namespace A369655

/-- `A369965(A003415(n)+A003415(n))` -/
def P16799810280501332080.Spec : Prop :=
  ∀ n, P16799810280501332080.a n = A369655 n

end A369655

/-! ## A369655.P4994278502503805142

`A000035(A068346(n*A165560(n)))`
-/

namespace A369655.P4994278502503805142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A068346 ((n : ℤ) * A165560 n).toNat).toNat

end

end A369655.P4994278502503805142

namespace A369655

/-- `A000035(A068346(n*A165560(n)))` -/
def P4994278502503805142.Spec : Prop :=
  ∀ n, P4994278502503805142.a n = A369655 n

end A369655

/-! ## A369655.P9664328954367802792

`A353495(A003415(n)²)`
-/

namespace A369655.P9664328954367802792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353495 (A003415 n ^ 2).toNat

end

end A369655.P9664328954367802792

namespace A369655

/-- `A353495(A003415(n)²)` -/
def P9664328954367802792.Spec : Prop :=
  ∀ n, P9664328954367802792.a n = A369655 n

end A369655

/-! ## A369655.P2544499993733721234

`1-A353494(A003415(n)²)`
-/

namespace A369655.P2544499993733721234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A353494 (A003415 n ^ 2).toNat

end

end A369655.P2544499993733721234

namespace A369655

/-- `1-A353494(A003415(n)²)` -/
def P2544499993733721234.Spec : Prop :=
  ∀ n, P2544499993733721234.a n = A369655 n

end A369655

/-! ## A369655.P7590207098921635113

`A353495(A003415(n)*A003415(n))`
-/

namespace A369655.P7590207098921635113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353495 (A003415 n * A003415 n).toNat

end

end A369655.P7590207098921635113

namespace A369655

/-- `A353495(A003415(n)*A003415(n))` -/
def P7590207098921635113.Spec : Prop :=
  ∀ n, P7590207098921635113.a n = A369655 n

end A369655

/-!
# A369656: Numbers k such that k' is odd and also k'' is odd, where k' stands for the arithmetic derivative of k, A003415(k).

The programs for A369656, there is no canonical definition to state claims against.
-/

/-! ## A369656.P3714773702760173563

`lt[0, A369655(n)]`
-/

namespace A369656.P3714773702760173563
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369655 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A369656.P3714773702760173563

/-! ## A369656.P614392712148737071

`eq[A010121(n), A369655(n)]`
-/

namespace A369656.P614392712148737071
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010121 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369655 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A369656.P614392712148737071

/-! ## A369656.P2315924529550662877

`eq[A010130(n), A369655(n)]`
-/

namespace A369656.P2315924529550662877
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010130 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369655 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A369656.P2315924529550662877

/-! ## A369656.P14638285645420316080

`eq[A010153(n), A369655(n)]`
-/

namespace A369656.P14638285645420316080
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010153 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369655 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A369656.P14638285645420316080

/-! ## A369656.P7861897573567983897

`eq[A010194(n), A369655(n)]`
-/

namespace A369656.P7861897573567983897
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010194 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369655 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A369656.P7861897573567983897

/-! ## A369656.P15142068847777284331

`eq[A010195(n), A369655(n)]`
-/

namespace A369656.P15142068847777284331
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010195 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369655 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A369656.P15142068847777284331

/-! ## A369656.P10248516542626951128

`eq[A010209(n), A369655(n)]`
-/

namespace A369656.P10248516542626951128
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010209 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369655 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A369656.P10248516542626951128

/-! ## A369656.P17590641828629034574

`eq[A040037(n), A369655(n)]`
-/

namespace A369656.P17590641828629034574
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040037 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369655 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A369656.P17590641828629034574

/-! ## A369656.P16343607101557901053

`eq[A040200(n), A369655(n)]`
-/

namespace A369656.P16343607101557901053
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040200 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369655 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A369656.P16343607101557901053

/-! ## A369656.P11313555740259088101

`eq[A040294(n), A369655(n)]`
-/

namespace A369656.P11313555740259088101
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040294 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369655 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A369656.P11313555740259088101

/-!
# A369657: a(n) = A356253(n) - A003415(n).

The programs for A369657, there is no canonical definition to state claims against.
-/

/-! ## A369657.P5431100441711429720

`A356253(n+1)-A003415(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A369657.P5431100441711429720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356253 (n + 1) - A003415 (n + 1)

end

end A369657.P5431100441711429720

/-! ## A369657.P3989256024247408439

`A162325(A346098(n+1))-A001222(n+1)`
-/

namespace A369657.P3989256024247408439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162325 (A346098 (n + 1)).toNat - A001222 (n + 1)

end

end A369657.P3989256024247408439

/-! ## A369657.P5017857931131779127

`(A008683(n+1)-A212619(A301676(2*n)))*A378536(n+1)`
-/

namespace A369657.P5017857931131779127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A008683 (n + 1) - A212619 (A301676 (2 * n)).toNat) * A378536 (n + 1)

end

end A369657.P5017857931131779127

/-! ## A369657.P16522853537018193662

`A008683(A091202(n+1))^A275881(2*(n+2))*A378536(n+1)`
-/

namespace A369657.P16522853537018193662
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008683 (A091202 (n + 1)).toNat : ℚ) ^ (A275881 (2 * (n + 2)) : ℤ) * (A378536 (n + 1) : ℚ)

end

end A369657.P16522853537018193662

/-! ## A369657.P6947435535087440664

`(A008683(n+1)-A363127(A018003(n)))*A378536(n+1)`
-/

namespace A369657.P6947435535087440664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A008683 (n + 1) - A363127 (A018003 n).toNat) * A378536 (n + 1)

end

end A369657.P6947435535087440664

/-!
# A369658: a(n) = 1 if n is not multiple of 3, but its arithmetic derivative is, otherwise 0.

The programs for A369658, the canonical program `A369658.P8096457835264758582` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A369658 has offset 0).

The definition of A369658 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A359430, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A369658.P8096457835264758582

`A011655(n)*A359430(n)`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A369658

/-- `A011655(n)*A359430(n)` -/
def P8096457835264758582.Spec : Prop :=
  ∀ n, P8096457835264758582.a n = A369658 n

theorem P8096457835264758582.correct : P8096457835264758582.Spec := by
  intro n
  simp only [A369658]

end A369658

/-! ## A369658.P409423305445294084

`A011655(n)*A079978(A003415(n))`
-/

namespace A369658.P409423305445294084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011655 n * A079978 (A003415 n).toNat

end

end A369658.P409423305445294084

namespace A369658

/-- `A011655(n)*A079978(A003415(n))` -/
def P409423305445294084.Spec : Prop :=
  ∀ n, P409423305445294084.a n = A369658 n

end A369658

/-! ## A369658.P15723058894635763782

`char[A369659(n+1)]`
-/

namespace A369658.P15723058894635763782
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369659 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A369658.P15723058894635763782

namespace A369658

/-- `char[A369659(n+1)]` -/
def P15723058894635763782.Spec : Prop :=
  ∀ n, (P15723058894635763782.a n : ℤ) = A369658 n

end A369658

/-! ## A369658.P4904398146524845868

`A359430(n)-A267142(n)`
-/

namespace A369658.P4904398146524845868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359430 n - A267142 n

end

end A369658.P4904398146524845868

namespace A369658

/-- `A359430(n)-A267142(n)` -/
def P4904398146524845868.Spec : Prop :=
  ∀ n, P4904398146524845868.a n = A369658 n

end A369658

/-! ## A369658.P11115017659846704477

`A168182(n*A359430(n))`
-/

namespace A369658.P11115017659846704477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168182 ((n : ℤ) * A359430 n).toNat

end

end A369658.P11115017659846704477

namespace A369658

/-- `A168182(n*A359430(n))` -/
def P11115017659846704477.Spec : Prop :=
  ∀ n, P11115017659846704477.a n = A369658 n

end A369658

/-! ## A369658.P9174873678552045661

`and(A001738(n), A359430(n))`
-/

namespace A369658.P9174873678552045661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A001738 n) (A359430 n)

end

end A369658.P9174873678552045661

namespace A369658

/-- `and(A001738(n), A359430(n))` -/
def P9174873678552045661.Spec : Prop :=
  ∀ n, P9174873678552045661.a n = A369658 n

end A369658

/-! ## A369658.P572897563494447788

`and(A002487(n), A359430(n))`
-/

namespace A369658.P572897563494447788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A002487 n) (A359430 n)

end

end A369658.P572897563494447788

namespace A369658

/-- `and(A002487(n), A359430(n))` -/
def P572897563494447788.Spec : Prop :=
  ∀ n, P572897563494447788.a n = A369658 n

end A369658

/-! ## A369658.P994909762803195808

`and(A003893(n), A359430(n))`
-/

namespace A369658.P994909762803195808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A003893 n) (A359430 n)

end

end A369658.P994909762803195808

namespace A369658

/-- `and(A003893(n), A359430(n))` -/
def P994909762803195808.Spec : Prop :=
  ∀ n, P994909762803195808.a n = A369658 n

end A369658

/-! ## A369658.P4337211253581903884

`and(A004396(n), A359430(n))`
-/

namespace A369658.P4337211253581903884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A004396 n) (A359430 n)

end

end A369658.P4337211253581903884

namespace A369658

/-- `and(A004396(n), A359430(n))` -/
def P4337211253581903884.Spec : Prop :=
  ∀ n, P4337211253581903884.a n = A369658 n

end A369658

/-! ## A369658.P17707025634591912685

`and(A005590(n), A359430(n))`
-/

namespace A369658.P17707025634591912685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A005590 n) (A359430 n)

end

end A369658.P17707025634591912685

namespace A369658

/-- `and(A005590(n), A359430(n))` -/
def P17707025634591912685.Spec : Prop :=
  ∀ n, P17707025634591912685.a n = A369658 n

end A369658

/-! ## A369658.P4279491403751055690

`and(A006288(n), A359430(n))`
-/

namespace A369658.P4279491403751055690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A006288 n) (A359430 n)

end

end A369658.P4279491403751055690

namespace A369658

/-- `and(A006288(n), A359430(n))` -/
def P4279491403751055690.Spec : Prop :=
  ∀ n, P4279491403751055690.a n = A369658 n

end A369658

/-! ## A369658.P357326827832853817

`and(A006369(n), A359430(n))`
-/

namespace A369658.P357326827832853817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A006369 n) (A359430 n)

end

end A369658.P357326827832853817

namespace A369658

/-- `and(A006369(n), A359430(n))` -/
def P357326827832853817.Spec : Prop :=
  ∀ n, P357326827832853817.a n = A369658 n

end A369658

/-! ## A369658.P15897773622941719184

`and(A010074(n), A359430(n))`
-/

namespace A369658.P15897773622941719184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A010074 n) (A359430 n)

end

end A369658.P15897773622941719184

namespace A369658

/-- `and(A010074(n), A359430(n))` -/
def P15897773622941719184.Spec : Prop :=
  ∀ n, P15897773622941719184.a n = A369658 n

end A369658

/-! ## A369658.P16901244735431425212

`and(A010076(n), A359430(n))`
-/

namespace A369658.P16901244735431425212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A010076 n) (A359430 n)

end

end A369658.P16901244735431425212

namespace A369658

/-- `and(A010076(n), A359430(n))` -/
def P16901244735431425212.Spec : Prop :=
  ∀ n, P16901244735431425212.a n = A369658 n

end A369658

/-! ## A369658.P2255309542275086442

`A168182(n)+A359430(n)-1`
-/

namespace A369658.P2255309542275086442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168182 n + (A359430 n - 1)

end

end A369658.P2255309542275086442

namespace A369658

/-- `A168182(n)+A359430(n)-1` -/
def P2255309542275086442.Spec : Prop :=
  ∀ n, P2255309542275086442.a n = A369658 n

end A369658

/-! ## A369658.P3113666563601007296

`(1-A079978(n))*A359430(n)`
-/

namespace A369658.P3113666563601007296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A079978 n) * A359430 n

end

end A369658.P3113666563601007296

namespace A369658

/-- `(1-A079978(n))*A359430(n)` -/
def P3113666563601007296.Spec : Prop :=
  ∀ n, P3113666563601007296.a n = A369658 n

end A369658

/-! ## A369658.P12527169936937520692

`A204418(n+1)*A359430(n)`
-/

namespace A369658.P12527169936937520692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204418 (n + 1) * A359430 n

end

end A369658.P12527169936937520692

namespace A369658

/-- `A204418(n+1)*A359430(n)` -/
def P12527169936937520692.Spec : Prop :=
  ∀ n, P12527169936937520692.a n = A369658 n

end A369658

/-! ## A369658.P11458583865512203917

`A373371(A103627(2*n+1)+A103627(n+1))`
-/

namespace A369658.P11458583865512203917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373371 (A103627 (2 * n + 1) + A103627 (n + 1)).toNat

end

end A369658.P11458583865512203917

namespace A369658

/-- `A373371(A103627(2*n+1)+A103627(n+1))` -/
def P11458583865512203917.Spec : Prop :=
  ∀ n, P11458583865512203917.a n = A369658 n

end A369658

/-! ## A369658.P8922365654316435621

`A079978(A267142(n)+A003415(n))`
-/

namespace A369658.P8922365654316435621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079978 (A267142 n + A003415 n).toNat

end

end A369658.P8922365654316435621

namespace A369658

/-- `A079978(A267142(n)+A003415(n))` -/
def P8922365654316435621.Spec : Prop :=
  ∀ n, P8922365654316435621.a n = A369658 n

end A369658

/-!
# A369659: Non-multiples of 3 whose arithmetic derivative, or equally, the sum of prime factors (with multiplicity) is a multiple of 3.

The programs for A369659, the canonical program `A369659.P4114768482975404549` is in `Seq.B008.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A369659 has offset 1).

The definition of A369659 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A369659.P4114768482975404549

`eq[1, A369658(n)]`

The canonical program, it is in `Seq.B008.C001`.
-/

namespace A369659

/-- `eq[1, A369658(n)]` -/
def P4114768482975404549.Spec : Prop :=
  ∀ n, (P4114768482975404549.a n : ℤ) = A369659 (n + 1)

theorem P4114768482975404549.correct : P4114768482975404549.Spec := by
  intro n
  simp only [A369659, Nat.add_sub_cancel]

end A369659

/-! ## A369659.P12635002380070921801

`lt[A369658(2*n), A369658(n)]`
-/

namespace A369659.P12635002380070921801
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369658 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369658 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A369659.P12635002380070921801

namespace A369659

/-- `lt[A369658(2*n), A369658(n)]` -/
def P12635002380070921801.Spec : Prop :=
  ∀ n, (P12635002380070921801.a n : ℤ) = A369659 (n + 1)

end A369659

/-! ## A369659.P11204536478653307911

`lt[A370122(n)/2, A369658(n)]`
-/

namespace A369659.P11204536478653307911
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A370122 n : ℚ) / 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369658 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℚ)) n

end

end A369659.P11204536478653307911

namespace A369659

/-- `lt[A370122(n)/2, A369658(n)]` -/
def P11204536478653307911.Spec : Prop :=
  ∀ n, (P11204536478653307911.a n : ℤ) = A369659 (n + 1)

end A369659

/-! ## A369659.P9277593163853771821

`filter[A369644(n+1), A369658(#)]`
-/

namespace A369659.P9277593163853771821
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369644 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A369658 (f1 j).toNat = 1) n)

end

end A369659.P9277593163853771821

namespace A369659

/-- `filter[A369644(n+1), A369658(#)]` -/
def P9277593163853771821.Spec : Prop :=
  ∀ n, P9277593163853771821.a n = A369659 (n + 1)

end A369659

/-! ## A369659.P16381755615448486505

`filter[A373478(n+1), A369658(#)]`
-/

namespace A369659.P16381755615448486505
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373478 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A369658 (f1 j).toNat = 1) n)

end

end A369659.P16381755615448486505

namespace A369659

/-- `filter[A373478(n+1), A369658(#)]` -/
def P16381755615448486505.Spec : Prop :=
  ∀ n, P16381755615448486505.a n = A369659 (n + 1)

end A369659

/-! ## A369659.P10155158083305470074

`filter[A289142(n+1), A369658(#)]`
-/

namespace A369659.P10155158083305470074
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289142 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A369658 (f1 j).toNat = 1) n)

end

end A369659.P10155158083305470074

namespace A369659

/-- `filter[A289142(n+1), A369658(#)]` -/
def P10155158083305470074.Spec : Prop :=
  ∀ n, P10155158083305470074.a n = A369659 (n + 1)

end A369659

/-! ## A369659.P5656562511646813062

`filter[A327863(n+1), A369658(#)]`
-/

namespace A369659.P5656562511646813062
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327863 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A369658 (f1 j).toNat = 1) n)

end

end A369659.P5656562511646813062

namespace A369659

/-- `filter[A327863(n+1), A369658(#)]` -/
def P5656562511646813062.Spec : Prop :=
  ∀ n, P5656562511646813062.a n = A369659 (n + 1)

end A369659

/-! ## A369659.P5350781903937482033

`eq[A010125(n), A359430(n)]`
-/

namespace A369659.P5350781903937482033
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010125 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359430 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A369659.P5350781903937482033

namespace A369659

/-- `eq[A010125(n), A359430(n)]` -/
def P5350781903937482033.Spec : Prop :=
  ∀ n, (P5350781903937482033.a n : ℤ) = A369659 (n + 1)

end A369659

/-! ## A369659.P696292141546120450

`eq[A010142(n), A359430(n)]`
-/

namespace A369659.P696292141546120450
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010142 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359430 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A369659.P696292141546120450

namespace A369659

/-- `eq[A010142(n), A359430(n)]` -/
def P696292141546120450.Spec : Prop :=
  ∀ n, (P696292141546120450.a n : ℤ) = A369659 (n + 1)

end A369659

/-! ## A369659.P11520381256378500073

`filter[A171993(n+1), A359430(#)]`
-/

namespace A369659.P11520381256378500073
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171993 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359430 (f1 j).toNat = 1) n)

end

end A369659.P11520381256378500073

namespace A369659

/-- `filter[A171993(n+1), A359430(#)]` -/
def P11520381256378500073.Spec : Prop :=
  ∀ n, P11520381256378500073.a n = A369659 (n + 1)

end A369659

/-! ## A369659.P5945047032397816062

`filter[A171993(n+1), A369643(#)]`
-/

namespace A369659.P5945047032397816062
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171993 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A369643 (f1 j).toNat = 1) n)

end

end A369659.P5945047032397816062

namespace A369659

/-- `filter[A171993(n+1), A369643(#)]` -/
def P5945047032397816062.Spec : Prop :=
  ∀ n, P5945047032397816062.a n = A369659 (n + 1)

end A369659

/-! ## A369659.P14722750614107575460

`filter[A171993(n+1), A369658(#)]`
-/

namespace A369659.P14722750614107575460
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171993 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A369658 (f1 j).toNat = 1) n)

end

end A369659.P14722750614107575460

namespace A369659

/-- `filter[A171993(n+1), A369658(#)]` -/
def P14722750614107575460.Spec : Prop :=
  ∀ n, P14722750614107575460.a n = A369659 (n + 1)

end A369659

/-! ## A369659.P8688332391085524923

`filter[A171993(n+1), A373371(#)]`
-/

namespace A369659.P8688332391085524923
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171993 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373371 (f1 j).toNat = 1) n)

end

end A369659.P8688332391085524923

namespace A369659

/-- `filter[A171993(n+1), A373371(#)]` -/
def P8688332391085524923.Spec : Prop :=
  ∀ n, P8688332391085524923.a n = A369659 (n + 1)

end A369659

/-! ## A369659.P13810902377537374116

`filter[A171993(n+1), A373474(#)]`
-/

namespace A369659.P13810902377537374116
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171993 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373474 (f1 j).toNat = 1) n)

end

end A369659.P13810902377537374116

namespace A369659

/-- `filter[A171993(n+1), A373474(#)]` -/
def P13810902377537374116.Spec : Prop :=
  ∀ n, P13810902377537374116.a n = A369659 (n + 1)

end A369659

/-! ## A369659.P10593070981283575618

`filter[A171993(n+1), A373477(#)]`
-/

namespace A369659.P10593070981283575618
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171993 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373477 (f1 j).toNat = 1) n)

end

end A369659.P10593070981283575618

namespace A369659

/-- `filter[A171993(n+1), A373477(#)]` -/
def P10593070981283575618.Spec : Prop :=
  ∀ n, P10593070981283575618.a n = A369659 (n + 1)

end A369659

/-! ## A369659.P12616207294863514146

`∩[A171993(n+1), A289142(n+1)]`
-/

namespace A369659.P12616207294863514146
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171993 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289142 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A369659.P12616207294863514146

namespace A369659

/-- `∩[A171993(n+1), A289142(n+1)]` -/
def P12616207294863514146.Spec : Prop :=
  ∀ n, (P12616207294863514146.a n : ℤ) = A369659 (n + 1)

end A369659

/-! ## A369659.P7044631218362273482

`∩[A171993(n+1), A327863(n+1)]`
-/

namespace A369659.P7044631218362273482
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171993 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327863 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A369659.P7044631218362273482

namespace A369659

/-- `∩[A171993(n+1), A327863(n+1)]` -/
def P7044631218362273482.Spec : Prop :=
  ∀ n, (P7044631218362273482.a n : ℤ) = A369659 (n + 1)

end A369659

/-! ## A369659.P2074658398172520268

`∩[A171993(n+1), A369644(n+1)]`
-/

namespace A369659.P2074658398172520268
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171993 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369644 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A369659.P2074658398172520268

namespace A369659

/-- `∩[A171993(n+1), A369644(n+1)]` -/
def P2074658398172520268.Spec : Prop :=
  ∀ n, (P2074658398172520268.a n : ℤ) = A369659 (n + 1)

end A369659

/-!
# A369660: a(n) = 1 if n' is of the form 4k+2, and n' has an even number of prime factors, otherwise a(n) = 0, where n' stands for the arithmetic derivative of n, A003415.

The programs for A369660, the canonical program `A369660.P11962281434868844871` is in `Seq.B006.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A369660 has offset 0).

The definition of A369660 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003415, A369965, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A369660.P11962281434868844871

`A369965(A003415(n))`

The canonical program, it is in `Seq.B006.C002`.
-/

namespace A369660

/-- `A369965(A003415(n))` -/
def P11962281434868844871.Spec : Prop :=
  ∀ n, P11962281434868844871.a n = A369660 n

theorem P11962281434868844871.correct : P11962281434868844871.Spec := by
  intro n
  simp only [A369660]

end A369660

/-! ## A369660.P909761677917731882

`char[A369661(n+1)]`
-/

namespace A369660.P909761677917731882
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369661 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A369660.P909761677917731882

namespace A369660

/-- `char[A369661(n+1)]` -/
def P909761677917731882.Spec : Prop :=
  ∀ n, (P909761677917731882.a n : ℤ) = A369660 n

end A369660

/-! ## A369660.P7065423191534918107

`A353555((A351230(n)+1)%2+A168036(n)+n)`
-/

namespace A369660.P7065423191534918107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353555 (Int.tmod (A351230 n + 1) 2 + (A168036 n + (n : ℤ))).toNat

end

end A369660.P7065423191534918107

namespace A369660

/-- `A353555((A351230(n)+1)%2+A168036(n)+n)` -/
def P7065423191534918107.Spec : Prop :=
  ∀ n, P7065423191534918107.a n = A369660 n

end A369660

/-! ## A369660.P250786696378327130

`A353555(char[A327864(n+1)]+(n-A369052(n))/2)`
-/

namespace A369660.P250786696378327130
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327864 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353555 (SequenceMachineLib.roundAway (((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℚ) + ((n : ℤ) - A369052 n : ℚ) / 2)).toNat

end

end A369660.P250786696378327130

namespace A369660

/-- `A353555(char[A327864(n+1)]+(n-A369052(n))/2)` -/
def P250786696378327130.Spec : Prop :=
  ∀ n, P250786696378327130.a n = A369660 n

end A369660

/-! ## A369660.P13412103450319389710

`A369965(A369971(n)%A369956(n))`
-/

namespace A369660.P13412103450319389710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369965 (Int.tmod (A369971 n) (A369956 n)).toNat

end

end A369660.P13412103450319389710

namespace A369660

/-- `A369965(A369971(n)%A369956(n))` -/
def P13412103450319389710.Spec : Prop :=
  ∀ n, P13412103450319389710.a n = A369660 n

end A369660

/-! ## A369660.P10779917575046356462

`and(A099345(A058263(3*n+2)), A353495(n))`
-/

namespace A369660.P10779917575046356462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A099345 (A058263 (3 * n + 2)).toNat) (A353495 n)

end

end A369660.P10779917575046356462

namespace A369660

/-- `and(A099345(A058263(3*n+2)), A353495(n))` -/
def P10779917575046356462.Spec : Prop :=
  ∀ n, P10779917575046356462.a n = A369660 n

end A369660

/-! ## A369660.P346459708797207431

`and(A342517(A157044(n+5)), A353495(n))`
-/

namespace A369660.P346459708797207431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A342517 (A157044 (n + 5)).toNat) (A353495 n)

end

end A369660.P346459708797207431

namespace A369660

/-- `and(A342517(A157044(n+5)), A353495(n))` -/
def P346459708797207431.Spec : Prop :=
  ∀ n, P346459708797207431.a n = A369660 n

end A369660

/-! ## A369660.P18168905964391190501

`and(A269394(A268674(n+1)), A353495(n))`
-/

namespace A369660.P18168905964391190501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A269394 (A268674 (n + 1)).toNat) (A353495 n)

end

end A369660.P18168905964391190501

namespace A369660

/-- `and(A269394(A268674(n+1)), A353495(n))` -/
def P18168905964391190501.Spec : Prop :=
  ∀ n, P18168905964391190501.a n = A369660 n

end A369660

/-!
# A369661: Numbers k whose arithmetic derivative k' is of the form 4m+2, and k' has an even number of prime factors.

The programs for A369661, the canonical program `A369661.P6932080721654598006` is in `Seq.B008.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A369661 has offset 1).

The definition of A369661 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5138 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A369661.P6932080721654598006

`filter[A327862(n+1), A369660(#)]`

The canonical program, it is in `Seq.B008.C001`.
-/

namespace A369661

/-- `filter[A327862(n+1), A369660(#)]` -/
def P6932080721654598006.Spec : Prop :=
  ∀ n, P6932080721654598006.a n = A369661 (n + 1)

theorem P6932080721654598006.correct : P6932080721654598006.Spec := by
  intro n
  simp only [A369661, Nat.add_sub_cancel]

end A369661

/-! ## A369661.P3868594274833783865

`filter[A373265(n+1), A369660(#)]`
-/

namespace A369661.P3868594274833783865
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373265 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A369660 (f1 j).toNat = 1) n)

end

end A369661.P3868594274833783865

namespace A369661

/-- `filter[A373265(n+1), A369660(#)]` -/
def P3868594274833783865.Spec : Prop :=
  ∀ n, P3868594274833783865.a n = A369661 (n + 1)

end A369661

/-! ## A369661.P8893494129587242920

`eq[1, A369660(n)]`
-/

namespace A369661.P8893494129587242920
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369660 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A369661.P8893494129587242920

namespace A369661

/-- `eq[1, A369660(n)]` -/
def P8893494129587242920.Spec : Prop :=
  ∀ n, (P8893494129587242920.a n : ℤ) = A369661 (n + 1)

end A369661

/-! ## A369661.P16999398458396957668

`filter[A046337(n+1), A369660(#)]`
-/

namespace A369661.P16999398458396957668
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046337 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A369660 (f1 j).toNat = 1) n)

end

end A369661.P16999398458396957668

namespace A369661

/-- `filter[A046337(n+1), A369660(#)]` -/
def P16999398458396957668.Spec : Prop :=
  ∀ n, P16999398458396957668.a n = A369661 (n + 1)

end A369661

/-! ## A369661.P11086370098116380351

`filter[A370125(n+1), A369660(#)]`
-/

namespace A369661.P11086370098116380351
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370125 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A369660 (f1 j).toNat = 1) n)

end

end A369661.P11086370098116380351

namespace A369661

/-- `filter[A370125(n+1), A369660(#)]` -/
def P11086370098116380351.Spec : Prop :=
  ∀ n, P11086370098116380351.a n = A369661 (n + 1)

end A369661

/-! ## A369661.P1332662559491187148

`filter[A345452(n+1), A369660(#)]`
-/

namespace A369661.P1332662559491187148
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345452 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A369660 (f1 j).toNat = 1) n)

end

end A369661.P1332662559491187148

namespace A369661

/-- `filter[A345452(n+1), A369660(#)]` -/
def P1332662559491187148.Spec : Prop :=
  ∀ n, P1332662559491187148.a n = A369661 (n + 1)

end A369661

/-! ## A369661.P2983850692457568661

`filter[A369002(n+2), A369660(#)]`
-/

namespace A369661.P2983850692457568661
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369002 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A369660 (f1 j).toNat = 1) n)

end

end A369661.P2983850692457568661

namespace A369661

/-- `filter[A369002(n+2), A369660(#)]` -/
def P2983850692457568661.Spec : Prop :=
  ∀ n, P2983850692457568661.a n = A369661 (n + 1)

end A369661

/-! ## A369661.P14695534833626645024

`filter[A377873(n+2), A369660(#)]`
-/

namespace A369661.P14695534833626645024
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377873 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A369660 (f1 j).toNat = 1) n)

end

end A369661.P14695534833626645024

namespace A369661

/-- `filter[A377873(n+2), A369660(#)]` -/
def P14695534833626645024.Spec : Prop :=
  ∀ n, P14695534833626645024.a n = A369661 (n + 1)

end A369661

/-! ## A369661.P11849766224226521812

`filter[A014076(n+1), A369660(#)]`
-/

namespace A369661.P11849766224226521812
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014076 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A369660 (f1 j).toNat = 1) n)

end

end A369661.P11849766224226521812

namespace A369661

/-- `filter[A014076(n+1), A369660(#)]` -/
def P11849766224226521812.Spec : Prop :=
  ∀ n, P11849766224226521812.a n = A369661 (n + 1)

end A369661

/-! ## A369661.P4138657189997734897

`filter[A071904(n+1), A369660(#)]`
-/

namespace A369661.P4138657189997734897
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071904 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A369660 (f1 j).toNat = 1) n)

end

end A369661.P4138657189997734897

namespace A369661

/-- `filter[A071904(n+1), A369660(#)]` -/
def P4138657189997734897.Spec : Prop :=
  ∀ n, P4138657189997734897.a n = A369661 (n + 1)

end A369661

/-! ## A369661.P17539939042619160746

`filter[A270574(n+1), A369660(#)]`
-/

namespace A369661.P17539939042619160746
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270574 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A369660 (f1 j).toNat = 1) n)

end

end A369661.P17539939042619160746

namespace A369661

/-- `filter[A270574(n+1), A369660(#)]` -/
def P17539939042619160746.Spec : Prop :=
  ∀ n, P17539939042619160746.a n = A369661 (n + 1)

end A369661

/-! ## A369661.P13120541876307961797

`filter[A078505(n+1), A369660(#)]`
-/

namespace A369661.P13120541876307961797
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078505 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A369660 (f1 j).toNat = 1) n)

end

end A369661.P13120541876307961797

namespace A369661

/-- `filter[A078505(n+1), A369660(#)]` -/
def P13120541876307961797.Spec : Prop :=
  ∀ n, P13120541876307961797.a n = A369661 (n + 1)

end A369661

/-! ## A369661.P16107927020778139775

`filter[A255763(n+1), A369660(#)]`
-/

namespace A369661.P16107927020778139775
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255763 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A369660 (f1 j).toNat = 1) n)

end

end A369661.P16107927020778139775

namespace A369661

/-- `filter[A255763(n+1), A369660(#)]` -/
def P16107927020778139775.Spec : Prop :=
  ∀ n, P16107927020778139775.a n = A369661 (n + 1)

end A369661

/-! ## A369661.P7315014358821252761

`filter[A036349(n+1), A369660(#)]`
-/

namespace A369661.P7315014358821252761
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036349 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A369660 (f1 j).toNat = 1) n)

end

end A369661.P7315014358821252761

namespace A369661

/-- `filter[A036349(n+1), A369660(#)]` -/
def P7315014358821252761.Spec : Prop :=
  ∀ n, P7315014358821252761.a n = A369661 (n + 1)

end A369661

/-! ## A369661.P3164232330961532292

`filter[A020742(n), A369660(#)]`
-/

namespace A369661.P3164232330961532292
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020742 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A369660 (f1 j).toNat = 1) n)

end

end A369661.P3164232330961532292

namespace A369661

/-- `filter[A020742(n), A369660(#)]` -/
def P3164232330961532292.Spec : Prop :=
  ∀ n, P3164232330961532292.a n = A369661 (n + 1)

end A369661

/-! ## A369661.P8239507797138287959

`filter[A004273(n), A369660(#)]`
-/

namespace A369661.P8239507797138287959
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A369660 (f1 j).toNat = 1) n)

end

end A369661.P8239507797138287959

namespace A369661

/-- `filter[A004273(n), A369660(#)]` -/
def P8239507797138287959.Spec : Prop :=
  ∀ n, P8239507797138287959.a n = A369661 (n + 1)

end A369661

/-! ## A369661.P17914069488691667718

`filter[A004274(n), A369660(#)]`
-/

namespace A369661.P17914069488691667718
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004274 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A369660 (f1 j).toNat = 1) n)

end

end A369661.P17914069488691667718

namespace A369661

/-- `filter[A004274(n), A369660(#)]` -/
def P17914069488691667718.Spec : Prop :=
  ∀ n, P17914069488691667718.a n = A369661 (n + 1)

end A369661

/-! ## A369661.P6796334876164132207

`filter[A004281(n), A369660(#)]`
-/

namespace A369661.P6796334876164132207
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004281 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A369660 (f1 j).toNat = 1) n)

end

end A369661.P6796334876164132207

namespace A369661

/-- `filter[A004281(n), A369660(#)]` -/
def P6796334876164132207.Spec : Prop :=
  ∀ n, P6796334876164132207.a n = A369661 (n + 1)

end A369661

/-! ## A369661.P11749663764993189420

`filter[A062545(n), A369660(#)]`
-/

namespace A369661.P11749663764993189420
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062545 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A369660 (f1 j).toNat = 1) n)

end

end A369661.P11749663764993189420

namespace A369661

/-- `filter[A062545(n), A369660(#)]` -/
def P11749663764993189420.Spec : Prop :=
  ∀ n, P11749663764993189420.a n = A369661 (n + 1)

end A369661

/-! ## A369661.P12453533925710136826

`filter[A130773(n), A369660(#)]`
-/

namespace A369661.P12453533925710136826
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130773 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A369660 (f1 j).toNat = 1) n)

end

end A369661.P12453533925710136826

namespace A369661

/-- `filter[A130773(n), A369660(#)]` -/
def P12453533925710136826.Spec : Prop :=
  ∀ n, P12453533925710136826.a n = A369661 (n + 1)

end A369661

/-!
# A369662: Numbers k whose arithmetic derivative k' is of the form 4m+2, and k' has an odd number of prime factors.

The programs for A369662, there is no canonical definition to state claims against.
-/

/-! ## A369662.P2508136083252309173

`A364729(n+5)-A199005(A199005(n+1))`
-/

namespace A369662.P2508136083252309173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364729 (n + 5) - A199005 (A199005 (n + 1)).toNat

end

end A369662.P2508136083252309173

/-!
# A369663: Numbers k of the form 4m+3, whose arithmetic derivative k' is of the form 4u+2, and k' has an even number of prime factors.

The programs for A369663, the canonical program `A369663.P9662238559183058676` is in `Seq.B009.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A369663 has offset 1).

The definition of A369663 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1184 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A369663.P9662238559183058676

`∩[A359163(n+1), A369661(n+1)]`

The canonical program, it is in `Seq.B009.C001`.
-/

namespace A369663

/-- `∩[A359163(n+1), A369661(n+1)]` -/
def P9662238559183058676.Spec : Prop :=
  ∀ n, (P9662238559183058676.a n : ℤ) = A369663 (n + 1)

theorem P9662238559183058676.correct : P9662238559183058676.Spec := by
  intro n
  simp only [A369663, Nat.add_sub_cancel]

end A369663

/-! ## A369663.P1787896567239516410

`∩[A091236(n+1), A369661(n+1)]`
-/

namespace A369663.P1787896567239516410
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091236 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369661 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A369663.P1787896567239516410

namespace A369663

/-- `∩[A091236(n+1), A369661(n+1)]` -/
def P1787896567239516410.Spec : Prop :=
  ∀ n, (P1787896567239516410.a n : ℤ) = A369663 (n + 1)

end A369663

/-! ## A369663.P10370824853106524911

`∩[A369661(n+1), A004767(n)]`
-/

namespace A369663.P10370824853106524911
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369661 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004767 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A369663.P10370824853106524911

namespace A369663

/-- `∩[A369661(n+1), A004767(n)]` -/
def P10370824853106524911.Spec : Prop :=
  ∀ n, (P10370824853106524911.a n : ℤ) = A369663 (n + 1)

end A369663

/-!
# A369664: Numbers k of the form 4m+1, whose arithmetic derivative k' is of the form 4u+2, and k' has an odd number of prime factors.

The programs for A369664, there is no canonical definition to state claims against.
-/

/-! ## A369664.P15239775388617559402

`filter[A369662(n+1), A359160(#)]`
-/

namespace A369664.P15239775388617559402
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369662 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359160 (f1 j).toNat = 1) n)

end

end A369664.P15239775388617559402

/-! ## A369664.P7213042113265570985

`filter[A369662(n+1), A369665(#)]`
-/

namespace A369664.P7213042113265570985
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369662 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A369665 (f1 j).toNat = 1) n)

end

end A369664.P7213042113265570985

/-! ## A369664.P11818283331562119055

`filter[A369662(n+1), A373978(#)]`
-/

namespace A369664.P11818283331562119055
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369662 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373978 (f1 j).toNat = 1) n)

end

end A369664.P11818283331562119055

/-! ## A369664.P11446821959693485387

`∩[A359161(n+1), A369662(n+1)]`
-/

namespace A369664.P11446821959693485387
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359161 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369662 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A369664.P11446821959693485387

/-! ## A369664.P16082838833782884006

`filter[A369662(n+1), A354036(#)]`
-/

namespace A369664.P16082838833782884006
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369662 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354036 (f1 j).toNat = 1) n)

end

end A369664.P16082838833782884006

/-! ## A369664.P12463403398496357433

`∩[A091113(n+1), A369662(n+1)]`
-/

namespace A369664.P12463403398496357433
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091113 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369662 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A369664.P12463403398496357433

/-! ## A369664.P4747821378724353178

`∩[A369662(n+1), A016813(n)]`
-/

namespace A369664.P4747821378724353178
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369662 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016813 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A369664.P4747821378724353178

/-! ## A369664.P9959335291730490311

`∩[A369662(n+1), A222945(n)]`
-/

namespace A369664.P9959335291730490311
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369662 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222945 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A369664.P9959335291730490311

/-! ## A369664.P15162361374628085639

`∩[A004766(n+1), A369662(n+1)]`
-/

namespace A369664.P15162361374628085639
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004766 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369662 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A369664.P15162361374628085639

/-! ## A369664.P17209722367315762034

`∩[A145285(n+1), A369662(n+1)]`
-/

namespace A369664.P17209722367315762034
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145285 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369662 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A369664.P17209722367315762034

/-! ## A369664.P15858674080095441450

`∩[A354039(n+1), A369662(n+1)]`
-/

namespace A369664.P15858674080095441450
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354039 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369662 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A369664.P15858674080095441450

/-! ## A369664.P17547547140652101066

`∩[A369662(n+1), A369666(n+1)]`
-/

namespace A369664.P17547547140652101066
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369662 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369666 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A369664.P17547547140652101066

/-! ## A369664.P2134470359880005818

`∩[A338763(n+1), A369662(n+1)]`
-/

namespace A369664.P2134470359880005818
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338763 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369662 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A369664.P2134470359880005818

/-! ## A369664.P305305344546536332

`∩[A277549(n+1), A369662(n+1)]`
-/

namespace A369664.P305305344546536332
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277549 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369662 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A369664.P305305344546536332

/-! ## A369664.P17699616074201496977

`∩[A304868(n+1), A369662(n+1)]`
-/

namespace A369664.P17699616074201496977
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304868 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369662 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A369664.P17699616074201496977

/-! ## A369664.P4517281890468156851

`∩[A026448(n+1), A369662(n+1)]`
-/

namespace A369664.P4517281890468156851
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026448 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369662 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A369664.P4517281890468156851

/-! ## A369664.P16637805942508318473

`∩[A047438(n+1), A369662(n+1)]`
-/

namespace A369664.P16637805942508318473
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047438 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369662 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A369664.P16637805942508318473

/-! ## A369664.P18295766101318193226

`∩[A047610(n+1), A369662(n+1)]`
-/

namespace A369664.P18295766101318193226
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047610 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369662 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A369664.P18295766101318193226

/-! ## A369664.P6369881650780168869

`∩[A047619(n+1), A369662(n+1)]`
-/

namespace A369664.P6369881650780168869
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047619 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369662 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A369664.P6369881650780168869

/-! ## A369664.P9495193726023619960

`∩[A047616(n+1), A369662(n+1)]`
-/

namespace A369664.P9495193726023619960
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047616 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369662 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A369664.P9495193726023619960

/-!
# A369665: a(n) = 1 if n > 1 and A276085(A003415(n)) == n (mod 4), otherwise 0, where A003415 is the arithmetic derivative, and A276085 is the primorial base log-function.

The programs for A369665, there is no canonical definition to state claims against.
-/

/-! ## A369665.P3966014776561486058

`char[A369666(n+1)]`
-/

namespace A369665.P3966014776561486058
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369666 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A369665.P3966014776561486058

/-! ## A369665.P6576922246479046789

`A359550(A015840(2*(n+2))*A072437(n+1))`
-/

namespace A369665.P6576922246479046789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359550 (A015840 (2 * (n + 2)) * A072437 (n + 1)).toNat

end

end A369665.P6576922246479046789

/-! ## A369665.P6138365115267528270

`A080110(A111144(n+1))`
-/

namespace A369665.P6138365115267528270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080110 (A111144 (n + 1)).toNat

end

end A369665.P6138365115267528270

/-! ## A369665.P7169451535232230548

`and(A188367(n+1), A302777(n+1))`
-/

namespace A369665.P7169451535232230548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A188367 (n + 1)) (A302777 (n + 1))

end

end A369665.P7169451535232230548

/-! ## A369665.P1665856304525240699

`and(A188367(n+1), A349167(n+1))`
-/

namespace A369665.P1665856304525240699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A188367 (n + 1)) (A349167 (n + 1))

end

end A369665.P1665856304525240699

/-!
# A369666: Numbers k > 1 for which A276085(A003415(k)) == k (mod 4), where A003415 is the arithmetic derivative, and A276085 is the primorial base log-function.

The programs for A369666, there is no canonical definition to state claims against.
-/

/-! ## A369666.P6118537865675833851

`lt[0, A369665(n)]`
-/

namespace A369666.P6118537865675833851
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369665 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A369666.P6118537865675833851

/-! ## A369666.P12674932859204920152

`filter[A080257(n+1), A369665(#)]`
-/

namespace A369666.P12674932859204920152
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080257 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A369665 (f1 j).toNat = 1) n)

end

end A369666.P12674932859204920152

/-! ## A369666.P845254079768491501

`filter[A002808(n+1), A369665(#)]`
-/

namespace A369666.P845254079768491501
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A369665 (f1 j).toNat = 1) n)

end

end A369666.P845254079768491501

/-! ## A369666.P2419959315097449066

`filter[A018252(n+1), A369665(#)]`
-/

namespace A369666.P2419959315097449066
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A369665 (f1 j).toNat = 1) n)

end

end A369666.P2419959315097449066

/-! ## A369666.P9509516418492393467

`filter[A056653(n+1), A369665(#)]`
-/

namespace A369666.P9509516418492393467
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056653 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A369665 (f1 j).toNat = 1) n)

end

end A369666.P9509516418492393467

/-! ## A369666.P14391872719151513885

`filter[A065090(n+1), A369665(#)]`
-/

namespace A369666.P14391872719151513885
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065090 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A369665 (f1 j).toNat = 1) n)

end

end A369666.P14391872719151513885

/-! ## A369666.P13609239957271298732

`filter[A141468(n+1), A369665(#)]`
-/

namespace A369666.P13609239957271298732
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141468 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A369665 (f1 j).toNat = 1) n)

end

end A369666.P13609239957271298732

/-! ## A369666.P3204805041616474417

`filter[A171581(n+1), A369665(#)]`
-/

namespace A369666.P3204805041616474417
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171581 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A369665 (f1 j).toNat = 1) n)

end

end A369666.P3204805041616474417

/-! ## A369666.P7251398665091328269

`filter[A173905(n+1), A369665(#)]`
-/

namespace A369666.P7251398665091328269
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173905 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A369665 (f1 j).toNat = 1) n)

end

end A369666.P7251398665091328269

/-! ## A369666.P13105172447904662662

`filter[A338924(n+1), A369665(#)]`
-/

namespace A369666.P13105172447904662662
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338924 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A369665 (f1 j).toNat = 1) n)

end

end A369666.P13105172447904662662

/-! ## A369666.P7171390134184445255

`filter[A073900(n+1), A369665(#)]`
-/

namespace A369666.P7171390134184445255
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073900 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A369665 (f1 j).toNat = 1) n)

end

end A369666.P7171390134184445255

/-! ## A369666.P8756174854628363843

`filter[A073899(n+1), A369665(#)]`
-/

namespace A369666.P8756174854628363843
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073899 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A369665 (f1 j).toNat = 1) n)

end

end A369666.P8756174854628363843

/-! ## A369666.P5089766516632561883

`filter[A121543(n+1), A369665(#)]`
-/

namespace A369666.P5089766516632561883
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121543 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A369665 (f1 j).toNat = 1) n)

end

end A369666.P5089766516632561883

/-! ## A369666.P11891846077525260825

`filter[A073884(n+1), A369665(#)]`
-/

namespace A369666.P11891846077525260825
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073884 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A369665 (f1 j).toNat = 1) n)

end

end A369666.P11891846077525260825

/-! ## A369666.P4882677276196678997

`filter[A089088(n), A369665(#)]`
-/

namespace A369666.P4882677276196678997
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089088 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A369665 (f1 j).toNat = 1) n)

end

end A369666.P4882677276196678997

/-! ## A369666.P3100029824678213715

`filter[A045762(n+1), A369665(#)]`
-/

namespace A369666.P3100029824678213715
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045762 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A369665 (f1 j).toNat = 1) n)

end

end A369666.P3100029824678213715

/-! ## A369666.P11987879683454707289

`eq[A054977(n), A369665(n)]`
-/

namespace A369666.P11987879683454707289
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369665 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A369666.P11987879683454707289

/-! ## A369666.P3672444275526784214

`eq[A141044(n), A369665(n)]`
-/

namespace A369666.P3672444275526784214
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141044 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369665 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A369666.P3672444275526784214

/-! ## A369666.P4036021289201390818

`eq[A158388(n), A369665(n)]`
-/

namespace A369666.P4036021289201390818
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158388 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369665 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A369666.P4036021289201390818

/-! ## A369666.P1436677338050926550

`eq[A261143(n), A369665(n)]`
-/

namespace A369666.P1436677338050926550
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261143 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369665 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A369666.P1436677338050926550

/-!
# A369667: a(n) = 1 if n' == 3 (mod 4) and n has an even number of prime factors with multiplicity, otherwise 0. Here n' stands for the arithmetic derivative of n, A003415(n).

The programs for A369667, the canonical program `A369667.P13821816702914872275` is in `Seq.B006.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A369667 has offset 0).

The definition of A369667 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A369667.P13821816702914872275

`char[A369668(n+1)]`

The canonical program, it is in `Seq.B006.C002`.
-/

namespace A369667

/-- `char[A369668(n+1)]` -/
def P13821816702914872275.Spec : Prop :=
  ∀ n, (P13821816702914872275.a n : ℤ) = A369667 n

theorem P13821816702914872275.correct : P13821816702914872275.Spec := by
  intro n
  simp only [A369667]

end A369667

/-! ## A369667.P16264775839379106798

`A369965(n*A358773(n))`
-/

namespace A369667.P16264775839379106798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369965 ((n : ℤ) * A358773 n).toNat

end

end A369667.P16264775839379106798

namespace A369667

/-- `A369965(n*A358773(n))` -/
def P16264775839379106798.Spec : Prop :=
  ∀ n, P16264775839379106798.a n = A369667 n

end A369667

/-! ## A369667.P13785141132095373961

`and(A213289(n), A369965(n))`
-/

namespace A369667.P13785141132095373961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A213289 n) (A369965 n)

end

end A369667.P13785141132095373961

namespace A369667

/-- `and(A213289(n), A369965(n))` -/
def P13785141132095373961.Spec : Prop :=
  ∀ n, P13785141132095373961.a n = A369667 n

end A369667

/-! ## A369667.P4541640278646069697

`and(A358773(n), A370306(n))`
-/

namespace A369667.P4541640278646069697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A358773 n) (A370306 n)

end

end A369667.P4541640278646069697

namespace A369667

/-- `and(A358773(n), A370306(n))` -/
def P4541640278646069697.Spec : Prop :=
  ∀ n, P4541640278646069697.a n = A369667 n

end A369667

/-! ## A369667.P4814234706425491819

`and(A369965(n), A370306(n))`
-/

namespace A369667.P4814234706425491819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A369965 n) (A370306 n)

end

end A369667.P4814234706425491819

namespace A369667

/-- `and(A369965(n), A370306(n))` -/
def P4814234706425491819.Spec : Prop :=
  ∀ n, P4814234706425491819.a n = A369667 n

end A369667

/-! ## A369667.P18169230311306135549

`and(A055250(n), A369965(n))`
-/

namespace A369667.P18169230311306135549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A055250 n) (A369965 n)

end

end A369667.P18169230311306135549

namespace A369667

/-- `and(A055250(n), A369965(n))` -/
def P18169230311306135549.Spec : Prop :=
  ∀ n, P18169230311306135549.a n = A369667 n

end A369667

/-! ## A369667.P15765764690564495258

`and(A294693(n), A369965(n))`
-/

namespace A369667.P15765764690564495258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A294693 n) (A369965 n)

end

end A369667.P15765764690564495258

namespace A369667

/-- `and(A294693(n), A369965(n))` -/
def P15765764690564495258.Spec : Prop :=
  ∀ n, P15765764690564495258.a n = A369667 n

end A369667

/-! ## A369667.P1297864355891433604

`and(A294698(n), A369965(n))`
-/

namespace A369667.P1297864355891433604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A294698 n) (A369965 n)

end

end A369667.P1297864355891433604

namespace A369667

/-- `and(A294698(n), A369965(n))` -/
def P1297864355891433604.Spec : Prop :=
  ∀ n, P1297864355891433604.a n = A369667 n

end A369667

/-! ## A369667.P4316393859652901668

`and(A055251(n), A358773(n))`
-/

namespace A369667.P4316393859652901668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A055251 n) (A358773 n)

end

end A369667.P4316393859652901668

namespace A369667

/-- `and(A055251(n), A358773(n))` -/
def P4316393859652901668.Spec : Prop :=
  ∀ n, P4316393859652901668.a n = A369667 n

end A369667

/-! ## A369667.P14468106819649146887

`and(A041074(n), A369965(n))`
-/

namespace A369667.P14468106819649146887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A041074 n) (A369965 n)

end

end A369667.P14468106819649146887

namespace A369667

/-- `and(A041074(n), A369965(n))` -/
def P14468106819649146887.Spec : Prop :=
  ∀ n, P14468106819649146887.a n = A369667 n

end A369667

/-! ## A369667.P5973346003510400737

`and(A358773(n), A375165(n))`
-/

namespace A369667.P5973346003510400737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A358773 n) (A375165 n)

end

end A369667.P5973346003510400737

namespace A369667

/-- `and(A358773(n), A375165(n))` -/
def P5973346003510400737.Spec : Prop :=
  ∀ n, P5973346003510400737.a n = A369667 n

end A369667

/-! ## A369667.P17632615790111691952

`and(A369965(n), A375165(n))`
-/

namespace A369667.P17632615790111691952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A369965 n) (A375165 n)

end

end A369667.P17632615790111691952

namespace A369667

/-- `and(A369965(n), A375165(n))` -/
def P17632615790111691952.Spec : Prop :=
  ∀ n, P17632615790111691952.a n = A369667 n

end A369667

/-! ## A369667.P13100234784928302926

`and(A073375(n), A358773(n))`
-/

namespace A369667.P13100234784928302926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A073375 n) (A358773 n)

end

end A369667.P13100234784928302926

namespace A369667

/-- `and(A073375(n), A358773(n))` -/
def P13100234784928302926.Spec : Prop :=
  ∀ n, P13100234784928302926.a n = A369667 n

end A369667

/-! ## A369667.P9094088731474919998

`and(A073375(n), A369965(n))`
-/

namespace A369667.P9094088731474919998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A073375 n) (A369965 n)

end

end A369667.P9094088731474919998

namespace A369667

/-- `and(A073375(n), A369965(n))` -/
def P9094088731474919998.Spec : Prop :=
  ∀ n, P9094088731474919998.a n = A369667 n

end A369667

/-! ## A369667.P8506830303798032131

`and(A110151(n), A369965(n))`
-/

namespace A369667.P8506830303798032131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A110151 n) (A369965 n)

end

end A369667.P8506830303798032131

namespace A369667

/-- `and(A110151(n), A369965(n))` -/
def P8506830303798032131.Spec : Prop :=
  ∀ n, P8506830303798032131.a n = A369667 n

end A369667

/-! ## A369667.P293320564891745724

`and(A360047(n), A369965(n))`
-/

namespace A369667.P293320564891745724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A360047 n) (A369965 n)

end

end A369667.P293320564891745724

namespace A369667

/-- `and(A360047(n), A369965(n))` -/
def P293320564891745724.Spec : Prop :=
  ∀ n, P293320564891745724.a n = A369667 n

end A369667

/-! ## A369667.P13598233063285688079

`and(A369965(n), A374508(n))`
-/

namespace A369667.P13598233063285688079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A369965 n) (A374508 n)

end

end A369667.P13598233063285688079

namespace A369667

/-- `and(A369965(n), A374508(n))` -/
def P13598233063285688079.Spec : Prop :=
  ∀ n, P13598233063285688079.a n = A369667 n

end A369667

/-! ## A369667.P9888316350573636730

`and(A030270(n), A369965(n))`
-/

namespace A369667.P9888316350573636730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A030270 n) (A369965 n)

end

end A369667.P9888316350573636730

namespace A369667

/-- `and(A030270(n), A369965(n))` -/
def P9888316350573636730.Spec : Prop :=
  ∀ n, P9888316350573636730.a n = A369667 n

end A369667

/-! ## A369667.P17434314351168351900

`and(A108360(n), A358773(n))`
-/

namespace A369667.P17434314351168351900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A108360 n) (A358773 n)

end

end A369667.P17434314351168351900

namespace A369667

/-- `and(A108360(n), A358773(n))` -/
def P17434314351168351900.Spec : Prop :=
  ∀ n, P17434314351168351900.a n = A369667 n

end A369667

/-! ## A369667.P16505531006938609917

`and(A108360(n), A369965(n))`
-/

namespace A369667.P16505531006938609917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A108360 n) (A369965 n)

end

end A369667.P16505531006938609917

namespace A369667

/-- `and(A108360(n), A369965(n))` -/
def P16505531006938609917.Spec : Prop :=
  ∀ n, P16505531006938609917.a n = A369667 n

end A369667

/-!
# A369668: Numbers that have an even number of prime factors with multiplicity and whose arithmetic derivative is of the form 4k+3.

The programs for A369668, the canonical program `A369668.P5612230000554155073` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A369668 has offset 1).

The definition of A369668 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A359151, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A369668.P5612230000554155073

`2*A359151(n+1)`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A369668

/-- `2*A359151(n+1)` -/
def P5612230000554155073.Spec : Prop :=
  ∀ n, P5612230000554155073.a n = A369668 (n + 1)

theorem P5612230000554155073.correct : P5612230000554155073.Spec := by
  intro n
  simp only [A369668, Nat.add_sub_cancel]

end A369668

/-! ## A369668.P1698327985690722074

`filter[A017089(n), A358773(#)]`
-/

namespace A369668.P1698327985690722074
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017089 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A358773 (f1 j).toNat = 1) n)

end

end A369668.P1698327985690722074

namespace A369668

/-- `filter[A017089(n), A358773(#)]` -/
def P1698327985690722074.Spec : Prop :=
  ∀ n, P1698327985690722074.a n = A369668 (n + 1)

end A369668

/-! ## A369668.P4738585402286320013

`filter[A017089(n), A358775(#)]`
-/

namespace A369668.P4738585402286320013
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017089 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A358775 (f1 j).toNat = 1) n)

end

end A369668.P4738585402286320013

namespace A369668

/-- `filter[A017089(n), A358775(#)]` -/
def P4738585402286320013.Spec : Prop :=
  ∀ n, P4738585402286320013.a n = A369668 (n + 1)

end A369668

/-! ## A369668.P9118233341612281656

`filter[A017089(n), A359370(#)]`
-/

namespace A369668.P9118233341612281656
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017089 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359370 (f1 j).toNat = 1) n)

end

end A369668.P9118233341612281656

namespace A369668

/-- `filter[A017089(n), A359370(#)]` -/
def P9118233341612281656.Spec : Prop :=
  ∀ n, P9118233341612281656.a n = A369668 (n + 1)

end A369668

/-! ## A369668.P1530774407933398696

`filter[A017089(n), A369667(#)]`
-/

namespace A369668.P1530774407933398696
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017089 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A369667 (f1 j).toNat = 1) n)

end

end A369668.P1530774407933398696

namespace A369668

/-- `filter[A017089(n), A369667(#)]` -/
def P1530774407933398696.Spec : Prop :=
  ∀ n, P1530774407933398696.a n = A369668 (n + 1)

end A369668

/-! ## A369668.P8422922932780098050

`filter[A017089(n), A369965(#)]`
-/

namespace A369668.P8422922932780098050
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017089 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A369965 (f1 j).toNat = 1) n)

end

end A369668.P8422922932780098050

namespace A369668

/-- `filter[A017089(n), A369965(#)]` -/
def P8422922932780098050.Spec : Prop :=
  ∀ n, P8422922932780098050.a n = A369668 (n + 1)

end A369668

/-! ## A369668.P12413117547658273177

`filter[A016825(2*n), A358773(#)]`
-/

namespace A369668.P12413117547658273177
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016825 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A358773 (f1 j).toNat = 1) n)

end

end A369668.P12413117547658273177

namespace A369668

/-- `filter[A016825(2*n), A358773(#)]` -/
def P12413117547658273177.Spec : Prop :=
  ∀ n, P12413117547658273177.a n = A369668 (n + 1)

end A369668

/-! ## A369668.P11522316121141746207

`filter[A016825(2*n), A358775(#)]`
-/

namespace A369668.P11522316121141746207
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016825 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A358775 (f1 j).toNat = 1) n)

end

end A369668.P11522316121141746207

namespace A369668

/-- `filter[A016825(2*n), A358775(#)]` -/
def P11522316121141746207.Spec : Prop :=
  ∀ n, P11522316121141746207.a n = A369668 (n + 1)

end A369668

/-! ## A369668.P16917481608775515805

`filter[A016825(2*n), A359370(#)]`
-/

namespace A369668.P16917481608775515805
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016825 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359370 (f1 j).toNat = 1) n)

end

end A369668.P16917481608775515805

namespace A369668

/-- `filter[A016825(2*n), A359370(#)]` -/
def P16917481608775515805.Spec : Prop :=
  ∀ n, P16917481608775515805.a n = A369668 (n + 1)

end A369668

/-! ## A369668.P10027950270223913909

`filter[A369966(n+1), A358773(#)]`
-/

namespace A369668.P10027950270223913909
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369966 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A358773 (f1 j).toNat = 1) n)

end

end A369668.P10027950270223913909

namespace A369668

/-- `filter[A369966(n+1), A358773(#)]` -/
def P10027950270223913909.Spec : Prop :=
  ∀ n, P10027950270223913909.a n = A369668 (n + 1)

end A369668

/-! ## A369668.P2640123304087241421

`filter[A369966(n+1), A369667(#)]`
-/

namespace A369668.P2640123304087241421
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369966 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A369667 (f1 j).toNat = 1) n)

end

end A369668.P2640123304087241421

namespace A369668

/-- `filter[A369966(n+1), A369667(#)]` -/
def P2640123304087241421.Spec : Prop :=
  ∀ n, P2640123304087241421.a n = A369668 (n + 1)

end A369668

/-! ## A369668.P15615079470867523335

`∩[A369966(n+1), A017089(n)]`
-/

namespace A369668.P15615079470867523335
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369966 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017089 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A369668.P15615079470867523335

namespace A369668

/-- `∩[A369966(n+1), A017089(n)]` -/
def P15615079470867523335.Spec : Prop :=
  ∀ n, (P15615079470867523335.a n : ℤ) = A369668 (n + 1)

end A369668

/-! ## A369668.P14834781305612324986

`2*∩[A067019(n+1), A016813(n)]`
-/

namespace A369668.P14834781305612324986
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067019 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016813 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A369668.P14834781305612324986

namespace A369668

/-- `2*∩[A067019(n+1), A016813(n)]` -/
def P14834781305612324986.Spec : Prop :=
  ∀ n, (P14834781305612324986.a n : ℤ) = A369668 (n + 1)

end A369668

/-! ## A369668.P2642111125716344130

`filter[A017089(n), A065043(#)]`
-/

namespace A369668.P2642111125716344130
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017089 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A065043 (f1 j).toNat = 1) n)

end

end A369668.P2642111125716344130

namespace A369668

/-- `filter[A017089(n), A065043(#)]` -/
def P2642111125716344130.Spec : Prop :=
  ∀ n, P2642111125716344130.a n = A369668 (n + 1)

end A369668

/-! ## A369668.P12094674128327686937

`filter[A017089(n), A353555(#)]`
-/

namespace A369668.P12094674128327686937
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017089 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353555 (f1 j).toNat = 1) n)

end

end A369668.P12094674128327686937

namespace A369668

/-- `filter[A017089(n), A353555(#)]` -/
def P12094674128327686937.Spec : Prop :=
  ∀ n, P12094674128327686937.a n = A369668 (n + 1)

end A369668

/-! ## A369668.P6964499208264158485

`filter[A017089(n), A353669(#)]`
-/

namespace A369668.P6964499208264158485
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017089 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353669 (f1 j).toNat = 1) n)

end

end A369668.P6964499208264158485

namespace A369668

/-- `filter[A017089(n), A353669(#)]` -/
def P6964499208264158485.Spec : Prop :=
  ∀ n, P6964499208264158485.a n = A369668 (n + 1)

end A369668

/-! ## A369668.P16720553923409056503

`filter[A369966(n+1), A353491(#)]`
-/

namespace A369668.P16720553923409056503
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369966 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353491 (f1 j).toNat = 1) n)

end

end A369668.P16720553923409056503

namespace A369668

/-- `filter[A369966(n+1), A353491(#)]` -/
def P16720553923409056503.Spec : Prop :=
  ∀ n, P16720553923409056503.a n = A369668 (n + 1)

end A369668

/-! ## A369668.P6217640970525676634

`filter[A016825(2*n), A065043(#)]`
-/

namespace A369668.P6217640970525676634
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016825 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A065043 (f1 j).toNat = 1) n)

end

end A369668.P6217640970525676634

namespace A369668

/-- `filter[A016825(2*n), A065043(#)]` -/
def P6217640970525676634.Spec : Prop :=
  ∀ n, P6217640970525676634.a n = A369668 (n + 1)

end A369668

/-! ## A369668.P7559651812385572746

`filter[A016825(2*n), A353555(#)]`
-/

namespace A369668.P7559651812385572746
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016825 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353555 (f1 j).toNat = 1) n)

end

end A369668.P7559651812385572746

namespace A369668

/-- `filter[A016825(2*n), A353555(#)]` -/
def P7559651812385572746.Spec : Prop :=
  ∀ n, P7559651812385572746.a n = A369668 (n + 1)

end A369668

/-! ## A369668.P3274601420130525250

`filter[A016825(2*n), A353669(#)]`
-/

namespace A369668.P3274601420130525250
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016825 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353669 (f1 j).toNat = 1) n)

end

end A369668.P3274601420130525250

namespace A369668

/-- `filter[A016825(2*n), A353669(#)]` -/
def P3274601420130525250.Spec : Prop :=
  ∀ n, P3274601420130525250.a n = A369668 (n + 1)

end A369668

/-!
# A369669: The greatest common divisor of the first and the second arithmetic derivative of n.

The programs for A369669, the canonical program `A369669.P5620005508573429478` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A369669 has offset 0).

The definition of A369669 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003415, A068346, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A369669.P5620005508573429478

`gcd(A003415(n), A068346(n))`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A369669

/-- `gcd(A003415(n), A068346(n))` -/
def P5620005508573429478.Spec : Prop :=
  ∀ n, (P5620005508573429478.a n : ℤ) = A369669 n

theorem P5620005508573429478.correct : P5620005508573429478.Spec := by
  intro n
  simp only [A369669]

end A369669

/-! ## A369669.P23632017077889077

`gcd(A368921(n), A368922(n))`
-/

namespace A369669.P23632017077889077
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A368921 n) (A368922 n)

end

end A369669.P23632017077889077

namespace A369669

/-- `gcd(A368921(n), A368922(n))` -/
def P23632017077889077.Spec : Prop :=
  ∀ n, (P23632017077889077.a n : ℤ) = A369669 n

end A369669

/-! ## A369669.P8472928182514534667

`gcd(A129283(n)-n, A068346(A028310(n)))`
-/

namespace A369669.P8472928182514534667
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A129283 n - (n : ℤ)) (A068346 (A028310 n).toNat)

end

end A369669.P8472928182514534667

namespace A369669

/-- `gcd(A129283(n)-n, A068346(A028310(n)))` -/
def P8472928182514534667.Spec : Prop :=
  ∀ n, (P8472928182514534667.a n : ℤ) = A369669 n

end A369669

/-! ## A369669.P11371168520727205913

`gcd(A319703(n-(1-n)%(n+1)+1), A368921(A028310(n)))`
-/

namespace A369669.P11371168520727205913
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A319703 ((n : ℤ) - Int.tmod (1 - (n : ℤ)) (n + 1 : ℤ) + 1).toNat) (A368921 (A028310 n).toNat)

end

end A369669.P11371168520727205913

namespace A369669

/-- `gcd(A319703(n-(1-n)%(n+1)+1), A368921(A028310(n)))` -/
def P11371168520727205913.Spec : Prop :=
  ∀ n, (P11371168520727205913.a n : ℤ) = A369669 n

end A369669

/-! ## A369669.P9983988988128873370

`gcd((n-A369052(n))/2, A003415(A003415(n)))`
-/

namespace A369669.P9983988988128873370
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (SequenceMachineLib.roundAway (((n : ℤ) - A369052 n : ℚ) / 2)) (A003415 (A003415 n).toNat)

end

end A369669.P9983988988128873370

namespace A369669

/-- `gcd((n-A369052(n))/2, A003415(A003415(n)))` -/
def P9983988988128873370.Spec : Prop :=
  ∀ n, (P9983988988128873370.a n : ℤ) = A369669 n

end A369669

/-!
# A369670: Integers k such that k, k + 1 and 2 k + 1 all have the same number of prime factors, counted with multiplicity.

The programs for A369670, the canonical program `A369670.P3668638831264101544` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A369670 has offset 1).

The definition of A369670 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1578 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A369670.P3668638831264101544

`∩[A045920(n+1), A117360(n+1)]`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A369670

/-- `∩[A045920(n+1), A117360(n+1)]` -/
def P3668638831264101544.Spec : Prop :=
  ∀ n, (P3668638831264101544.a n : ℤ) = A369670 (n + 1)

theorem P3668638831264101544.correct : P3668638831264101544.Spec := by
  intro n
  simp only [A369670, Nat.add_sub_cancel]

end A369670

/-!
# A369671: Expansion of g.f. A(x) satisfying Sum_{n=-oo..+oo} (x^n - 4*A(x))^n = theta_4(x).

The programs for A369671, there is no canonical definition to state claims against.
-/

/-! ## A369671.P7260579099699043996

`A008937(A062886(n))`
-/

namespace A369671.P7260579099699043996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008937 (A062886 n).toNat

end

end A369671.P7260579099699043996

/-!
# A369673: a(n) = Product_{k=0..n} (2^k + 2^(n-k)).

The programs for A369673, there is no canonical definition to state claims against.
-/

/-! ## A369673.P17389533161144552585

`A045661(2^n)`
-/

namespace A369673.P17389533161144552585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045661 (2 ^ n)

end

end A369673.P17389533161144552585

/-!
# A369682: Expansion of g.f. A(x) satisfying Sum_{n>=0} (-1)^n * x^n * Product_{k=0..n} (x^k + A(x)) = theta_2(x^(1/2)) / x^(1/8).

The programs for A369682, there is no canonical definition to state claims against.
-/

/-! ## A369682.P17971092930559807475

`A030349(A290721(n+1))`
-/

namespace A369682.P17971092930559807475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030349 (A290721 (n + 1)).toNat

end

end A369682.P17971092930559807475

/-! ## A369682.P3059142154763376827

`A048105(A007696(n))+A003946(n)`
-/

namespace A369682.P3059142154763376827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048105 (A007696 n).toNat + A003946 n

end

end A369682.P3059142154763376827

/-!
# A369683: Expansion of g.f. A(x) satisfying Sum_{n>=0} (-1)^n * x^n * Product_{k=0..n} (x^(2*k+1) + A(x)) = theta_3(x).

The programs for A369683, there is no canonical definition to state claims against.
-/

/-! ## A369683.P3867175222095225269

`A248170(A383582(n))`
-/

namespace A369683.P3867175222095225269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248170 (A383582 n).toNat

end

end A369683.P3867175222095225269

/-! ## A369683.P4298217421503599065

`A000267(A150524(n)-A285263(n))`
-/

namespace A369683.P4298217421503599065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000267 (A150524 n - A285263 n).toNat

end

end A369683.P4298217421503599065

/-! ## A369683.P9909180594319130929

`A124794(n+1)+A065712(A160506(n+1))`
-/

namespace A369683.P9909180594319130929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124794 (n + 1) + A065712 (A160506 (n + 1)).toNat

end

end A369683.P9909180594319130929

/-!
# A369685: Least common multiple of the first n terms of A359804.

The programs for A369685, there is no canonical definition to state claims against.
-/

/-! ## A369685.P14801752510534356224

`lcm(A359804(n), a(n-1))` with `a(0)=1`
-/

namespace A369685.P14801752510534356224
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Int.lcm (A359804 n) (a (n - 1) : ℤ)

end

end A369685.P14801752510534356224

/-! ## A369685.P12897745293559367857

`a(n-1)*A369686(n)` with `a(0)=1`
-/

namespace A369685.P12897745293559367857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * A369686 n

end

end A369685.P12897745293559367857

/-! ## A369685.P9683671642811395473

`∏[A369686(n+1)]/A369686(n+1)`
-/

namespace A369685.P9683671642811395473
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369686 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (A369686 (n + 1) : ℚ)

end

end A369685.P9683671642811395473

/-! ## A369685.P15099241674104178189

`A278234(A124378(n+1)*A268571(n+1))`
-/

namespace A369685.P15099241674104178189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278234 (A124378 (n + 1) * A268571 (n + 1)).toNat

end

end A369685.P15099241674104178189

/-! ## A369685.P6685191959689716842

`gcd(A002620(A139634(n+2)), A035105(n+1))`
-/

namespace A369685.P6685191959689716842
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002620 (A139634 (n + 2)).toNat) (A035105 (n + 1))

end

end A369685.P6685191959689716842

/-!
# A369686: LCM-transform of A359804 (see Comment and links).

The programs for A369686, there is no canonical definition to state claims against.
-/

/-! ## A369686.P13284770250459320434

`A369685(n+1)/A369685(n)`
-/

namespace A369686.P13284770250459320434
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A369685 (n + 1) : ℚ) / (A369685 n : ℚ)

end

end A369686.P13284770250459320434

/-! ## A369686.P605463301257295915

`ratio[A369685(n)]`
-/

namespace A369686.P605463301257295915
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369685 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℚ) / (f1 n : ℚ)

end

end A369686.P605463301257295915

/-!
# A369688: G.f. satisfies A(x) = 1 + x*A(x) + x^2*(1-x)^3*A(x)^5.

The programs for A369688, there is no canonical definition to state claims against.
-/

/-! ## A369688.P13470561911928730223

`A007898(A302180(n))`
-/

namespace A369688.P13470561911928730223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007898 (A302180 n).toNat

end

end A369688.P13470561911928730223

/-! ## A369688.P14171006637442642558

`A226190(A193111(n)+A081123(n))`
-/

namespace A369688.P14171006637442642558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226190 (A193111 n + A081123 n).toNat

end

end A369688.P14171006637442642558

/-! ## A369688.P10532406431329778107

`A373677(a(n-1))` with `a(0)=1, a(1)=1, a(2)=2, a(3)=4`
-/

namespace A369688.P10532406431329778107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2, 4] fun n a =>
  A373677 (a (n - 1)).toNat

end

end A369688.P10532406431329778107

/-!
# A369690: a(n) = max(A119288(n), A053669(n)).

The programs for A369690, there is no canonical definition to state claims against.
-/

/-! ## A369690.P12993172282632400190

`A140271(A053669(n+1)*A119288(n+1))`
-/

namespace A369690.P12993172282632400190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140271 (A053669 (n + 1) * A119288 (n + 1)).toNat

end

end A369690.P12993172282632400190

/-! ## A369690.P2828476265231079060

`A140271(lcm(A053669(n+1), A119288(n+1)))`
-/

namespace A369690.P2828476265231079060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140271 (Int.lcm (A053669 (n + 1)) (A119288 (n + 1)))

end

end A369690.P2828476265231079060

/-! ## A369690.P17363689285094714218

`A342309(A178637(n+1)+A007090(n))`
-/

namespace A369690.P17363689285094714218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342309 (A178637 (n + 1) + A007090 n).toNat

end

end A369690.P17363689285094714218

/-! ## A369690.P15272673542979265749

`A112047(A080160(n+1))`
-/

namespace A369690.P15272673542979265749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112047 (A080160 (n + 1)).toNat

end

end A369690.P15272673542979265749

/-! ## A369690.P8918331530569256807

`A374516(A269695(n+1))`
-/

namespace A369690.P8918331530569256807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374516 (A269695 (n + 1)).toNat

end

end A369690.P8918331530569256807

/-!
# A369691: G.f. satisfies A(x) = 1/(1-x)^3 + x^3*A(x)^3.

The programs for A369691, there is no canonical definition to state claims against.
-/

/-! ## A369691.P3660585402928179582

`∑[A350799(A212961(n))+n]`
-/

namespace A369691.P3660585402928179582
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350799 (A212961 n).toNat + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A369691.P3660585402928179582

/-! ## A369691.P3003772750735521565

`∑[A331593(A308113(n))+n]`
-/

namespace A369691.P3003772750735521565
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331593 (A308113 n).toNat + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A369691.P3003772750735521565

/-! ## A369691.P16576643060201884641

`∑[∑[A000188(A378427(n)²)]]`
-/

namespace A369691.P16576643060201884641
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000188 (A378427 n ^ 2).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A369691.P16576643060201884641

/-!
# A369692: Connected domination number of the n X n grid graph.

The programs for A369692, there is no canonical definition to state claims against.
-/

/-! ## A369692.P7201848949165857852

`(n+1)²-A320666(n+1)`
-/

namespace A369692.P7201848949165857852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) - A320666 (n + 1)

end

end A369692.P7201848949165857852

/-! ## A369692.P14045730134773672803

`A381475((n+1)²+n²)`
-/

namespace A369692.P14045730134773672803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381475 ((n + 1) ^ 2 + n ^ 2)

end

end A369692.P14045730134773672803

/-!
# A369694: Expansion of (1/x) * Series_Reversion( x * ((1-x)^3-x^2) ).

The programs for A369694, there is no canonical definition to state claims against.
-/

/-! ## A369694.P10337389172133722855

`A331381(n)+A121930(A210478(2*n+1))`
-/

namespace A369694.P10337389172133722855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331381 n + A121930 (A210478 (2 * n + 1)).toNat

end

end A369694.P10337389172133722855

/-! ## A369694.P8980225026565887168

`A121930(A210478(2*n+1))+A119288(n+1)`
-/

namespace A369694.P8980225026565887168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121930 (A210478 (2 * n + 1)).toNat + A119288 (n + 1)

end

end A369694.P8980225026565887168

/-!
# A369695: Number of ordered pairs (p,q) of partitions of n such that the set of parts in q is equal to the set of parts in p.

The programs for A369695, there is no canonical definition to state claims against.
-/

/-! ## A369695.P14170169751927730086

`2*A369697(n)+A000041(n)`
-/

namespace A369695.P14170169751927730086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A369697 n + A000041 n

end

end A369695.P14170169751927730086

/-! ## A369695.P17730970049883476957

`2*A369696(n)-A000041(n)`
-/

namespace A369695.P17730970049883476957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A369696 n - A000041 n

end

end A369695.P17730970049883476957

/-! ## A369695.P12697794113101315681

`A369697(n)+A369696(n)`
-/

namespace A369695.P12697794113101315681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369697 n + A369696 n

end

end A369695.P12697794113101315681

/-! ## A369695.P6220838131208567693

`A369704(n)-A369910(n)`
-/

namespace A369695.P6220838131208567693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369704 n - A369910 n

end

end A369695.P6220838131208567693

/-! ## A369695.P11805764212580121819

`A000041(n)+A369707(n)-A369910(n)`
-/

namespace A369695.P11805764212580121819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n + (A369707 n - A369910 n)

end

end A369695.P11805764212580121819

/-!
# A369696: Number of unordered pairs (p,q) of partitions of n such that the set of parts in q is equal to the set of parts in p.

The programs for A369696, there is no canonical definition to state claims against.
-/

/-! ## A369696.P7133573789678804902

`(A000041(n)+A369695(n))/2`
-/

namespace A369696.P7133573789678804902
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000041 n + A369695 n : ℚ) / 2

end

end A369696.P7133573789678804902

/-! ## A369696.P7983481006708834650

`A369697(n)+A000041(n)`
-/

namespace A369696.P7983481006708834650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369697 n + A000041 n

end

end A369696.P7983481006708834650

/-! ## A369696.P11470921610988278049

`A369695(n)-A369697(n)`
-/

namespace A369696.P11470921610988278049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369695 n - A369697 n

end

end A369696.P11470921610988278049

/-! ## A369696.P11550770037158825480

`A369697(n)+A369704(n)-A369707(n)`
-/

namespace A369696.P11550770037158825480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369697 n + (A369704 n - A369707 n)

end

end A369696.P11550770037158825480

/-! ## A369696.P2296489268121979976

`A369704(n)-(A369910(n)+A369697(n))`
-/

namespace A369696.P2296489268121979976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369704 n - (A369910 n + A369697 n)

end

end A369696.P2296489268121979976

/-! ## A369696.P12245089196088555587

`A000041(n)+(A369707(n)-A369910(n))/2`
-/

namespace A369696.P12245089196088555587
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000041 n : ℚ) + (A369707 n - A369910 n : ℚ) / 2

end

end A369696.P12245089196088555587

/-! ## A369696.P12786755608408399787

`A369697(n)+A256193(∑[n])`
-/

namespace A369696.P12786755608408399787
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369697 n + A256193 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A369696.P12786755608408399787

/-!
# A369697: Number of unordered pairs (p,q) of distinct partitions of n such that the set of parts in q is equal to the set of parts in p.

The programs for A369697, there is no canonical definition to state claims against.
-/

/-! ## A369697.P3041608084862727982

`(A369695(n)-A000041(n))/2`
-/

namespace A369697.P3041608084862727982
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A369695 n - A000041 n : ℚ) / 2

end

end A369697.P3041608084862727982

/-! ## A369697.P951099534465842850

`A369696(n)-A000041(n)`
-/

namespace A369697.P951099534465842850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369696 n - A000041 n

end

end A369697.P951099534465842850

/-! ## A369697.P17899380769335077250

`A369695(n)-A369696(n)`
-/

namespace A369697.P17899380769335077250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369695 n - A369696 n

end

end A369697.P17899380769335077250

/-! ## A369697.P17660908891746931589

`(A369707(n)-A369910(n))/2`
-/

namespace A369697.P17660908891746931589
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A369707 n - A369910 n : ℚ) / 2

end

end A369697.P17660908891746931589

/-! ## A369697.P9757808099651361063

`A004525(A369695(n)-A000041(n))`
-/

namespace A369697.P9757808099651361063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A369695 n - A000041 n).toNat

end

end A369697.P9757808099651361063

/-!
# A369698: AGM transform of positive cubes.

The programs for A369698, the canonical program `A369698.P8059329653668936442` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A369698 has offset 1).

The definition of A369698 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A369698.P8059329653668936442

`((n+1)*(n+2)/2)^(2*(n+1))-(n+1)^(n+1)*(n+1)!^3`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A369698

/-- `((n+1)*(n+2)/2)^(2*(n+1))-(n+1)^(n+1)*(n+1)!^3` -/
def P8059329653668936442.Spec : Prop :=
  ∀ n, P8059329653668936442.a n = (A369698 (n + 1) : ℚ)

end A369698

/-!
# A369699: a(n) = ( Product_{k=2..n-1} k^k )^2*2^n.

The programs for A369699, there is no canonical definition to state claims against.
-/

/-! ## A369699.P4559087559719191479

`∏[A343110(A237755(n+1)!)]`
-/

namespace A369699.P4559087559719191479
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343110 (Nat.factorial (A237755 (n + 1)).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A369699.P4559087559719191479

