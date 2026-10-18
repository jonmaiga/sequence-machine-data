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
import Seq.B000.C011
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C024
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C034
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
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C002
import Seq.B003.C003
import Seq.B004.C000
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C001
import Seq.B008.C001
import Seq.B009.C000
import Seq.B010.C000
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
import Seq.Opaque.C009
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

/-!
# A287700: a(n) = (4!)^3 * [z^4] hypergeom([], [1,1], z)^n.

The programs for A287700, there is no canonical definition to state claims against.
-/

/-! ## A287700.P14543200920937218728

`A287698(A155212(n)+12)`
-/

namespace A287700.P14543200920937218728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287698 (A155212 n + 12).toNat

end

end A287700.P14543200920937218728

/-! ## A287700.P16944711827673769616

`A287698(A056000(n)+14)`
-/

namespace A287700.P16944711827673769616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287698 (A056000 n + 14).toNat

end

end A287700.P16944711827673769616

/-!
# A287701: a(n) = (5!)^3 * [z^5] hypergeom([], [1,1], z)^n.

The programs for A287701, there is no canonical definition to state claims against.
-/

/-! ## A287701.P6342577552501270248

`A287698(A167499(n+4))`
-/

namespace A287701.P6342577552501270248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287698 (A167499 (n + 4)).toNat

end

end A287701.P6342577552501270248

/-!
# A287702: a(n) = (3!)^3 * [z^3] hypergeom([], [1,1], z)^n.

The programs for A287702, the canonical program `A287702.P1206861982154255592` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A287702 has offset 0).

The definition of A287702 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A287702.P1206861982154255592

`46*n-81*n²+36*n^3`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A287702

/-- `46*n-81*n²+36*n^3` -/
def P1206861982154255592.Spec : Prop :=
  ∀ n, P1206861982154255592.a n = A287702 n

theorem P1206861982154255592.correct : P1206861982154255592.Spec := by
  intro n
  simp only [A287702]

end A287702

/-! ## A287702.P2181751349004945226

`n*A054552(A033577(n)%A056108(n))`
-/

namespace A287702.P2181751349004945226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A054552 (Int.tmod (A033577 n) (A056108 n)).toNat

end

end A287702.P2181751349004945226

namespace A287702

/-- `n*A054552(A033577(n)%A056108(n))` -/
def P2181751349004945226.Spec : Prop :=
  ∀ n, P2181751349004945226.a n = A287702 n

end A287702

/-! ## A287702.P6749314510927467349

`A287698(∑[n+3]+6)`
-/

namespace A287702.P6749314510927467349
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287698 (∑ j ∈ Finset.range (n + 1), f1 j + 6)

end

end A287702.P6749314510927467349

namespace A287702

/-- `A287698(∑[n+3]+6)` -/
def P6749314510927467349.Spec : Prop :=
  ∀ n, P6749314510927467349.a n = A287702 n

end A287702

/-!
# A287703: Triangle read by rows, numerators of T(n,k) = (-1)^n*binomial(n-1,k)*Bernoulli(n+k)/ (n+k) for n>=1, 0<=k<=n-1.

The programs for A287703, there is no canonical definition to state claims against.
-/

/-! ## A287703.P1103022422024150627

`A164555(A082233(n))^A000041(A018783(n))`
-/

namespace A287703.P1103022422024150627
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A164555 (A082233 n).toNat : ℚ) ^ (A000041 (A018783 n).toNat : ℤ)

end

end A287703.P1103022422024150627

/-! ## A287703.P14623583087387444823

`A164555(A082233(n))^A000108(A014963(n+1))`
-/

namespace A287703.P14623583087387444823
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A164555 (A082233 n).toNat : ℚ) ^ (A000108 (A014963 (n + 1)).toNat : ℤ)

end

end A287703.P14623583087387444823

/-! ## A287703.P8993197633017167324

`A164555(A082233(n))^A001065(A031486(n+1))`
-/

namespace A287703.P8993197633017167324
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A164555 (A082233 n).toNat : ℚ) ^ (A001065 (A031486 (n + 1)).toNat : ℤ)

end

end A287703.P8993197633017167324

/-! ## A287703.P8460794295770604057

`A164555(A082233(n))^A001006(A055396(n+1))`
-/

namespace A287703.P8460794295770604057
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A164555 (A082233 n).toNat : ℚ) ^ (A001006 (A055396 (n + 1)).toNat : ℤ)

end

end A287703.P8460794295770604057

/-! ## A287703.P3162350734075714420

`A164555(A082233(n))^A014963(A061201(n+1))`
-/

namespace A287703.P3162350734075714420
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A164555 (A082233 n).toNat : ℚ) ^ (A014963 (A061201 (n + 1)).toNat : ℤ)

end

end A287703.P3162350734075714420

/-!
# A287704: Triangle read by rows, denominators of T(n,k) = (-1)^(n+k)*binomial(n-1,k)* Bernoulli(n+k)/ (n+k) for n>=1, 0<=k<=n-1.

The programs for A287704, there is no canonical definition to state claims against.
-/

/-! ## A287704.P14488802609334290289

`A005179((2*∑{d}[n+1, #])^A129688(3*(n+1)))`
-/

namespace A287704.P14488802609334290289
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005179 (SequenceMachineLib.roundAway (((2 * (∑ d ∈ Nat.divisors (f1 n), d) : ℕ) : ℚ) ^ (A129688 (3 * (n + 1)) : ℤ))).toNat

end

end A287704.P14488802609334290289

/-! ## A287704.P4975296529996174986

`A005179(C(2*∑{d}[n+1, #], A129688(3*(n+1))))`
-/

namespace A287704.P4975296529996174986
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005179 (Nat.choose (2 * (∑ d ∈ Nat.divisors (f1 n), d)) (A129688 (3 * (n + 1))).toNat)

end

end A287704.P4975296529996174986

/-!
# A287705: a(n) = denominator(Bernoulli(n, x/2) - Bernoulli(n)).

The programs for A287705, there is no canonical definition to state claims against.
-/

/-! ## A287705.P14659155513038278188

`lcm(2^n, A290645(n))`
-/

namespace A287705.P14659155513038278188
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (2 ^ n : ℤ) (A290645 n)

end

end A287705.P14659155513038278188

/-! ## A287705.P16933024332052101986

`lcm(A000079(n), A195441(abs(1-n)))`
-/

namespace A287705.P16933024332052101986
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000079 n) (A195441 |1 - (n : ℤ)|.toNat)

end

end A287705.P16933024332052101986

/-! ## A287705.P16966004978152733028

`A059222(floor(acot(n)+n))*A290645(n)`
-/

namespace A287705.P16966004978152733028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059222 ⌊SequenceMachineLib.acot (n : ℝ) + (n : ℝ)⌋.toNat * A290645 n

end

end A287705.P16966004978152733028

/-! ## A287705.P5421760410493898922

`A059222(round(acot(n)+n))*A290645(n)`
-/

namespace A287705.P5421760410493898922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059222 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))).toNat * A290645 n

end

end A287705.P5421760410493898922

/-! ## A287705.P3837957124172917451

`A059222(A028310(n))*A290645(n)`
-/

namespace A287705.P3837957124172917451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059222 (A028310 n).toNat * A290645 n

end

end A287705.P3837957124172917451

/-!
# A287706: a(n) = denominator(Bernoulli(n, x/2) - Bernoulli(n, x)).

The programs for A287706, there is no canonical definition to state claims against.
-/

/-! ## A287706.P1101353031031929389

`A213621(n)*A299388(∑[n]+1)`
-/

namespace A287706.P1101353031031929389
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213621 n * A299388 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A287706.P1101353031031929389

/-! ## A287706.P1738513977278001095

`lcm(A213621(n), A299388(A000124(n)))`
-/

namespace A287706.P1738513977278001095
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A213621 n) (A299388 (A000124 n).toNat)

end

end A287706.P1738513977278001095

/-! ## A287706.P16960981693604761947

`A000079(A094708(3*n+2))*A213621(n)`
-/

namespace A287706.P16960981693604761947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A094708 (3 * n + 2)).toNat * A213621 n

end

end A287706.P16960981693604761947

/-! ## A287706.P10837491897013726553

`A213621(n)*A250246(A000079(n))`
-/

namespace A287706.P10837491897013726553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213621 n * A250246 (A000079 n).toNat

end

end A287706.P10837491897013726553

/-! ## A287706.P12802822173513065634

`A249817(A000079(n)*A213621(n))`
-/

namespace A287706.P12802822173513065634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249817 (A000079 n * A213621 n).toNat

end

end A287706.P12802822173513065634

/-!
# A287707: a(1) = 1, a(2) = a(4) = a(5) = 2, a(3) = 3, a(n) = a(a(n-1)) + a(a(n-a(n-1)) + a(n-a(n-2))) for n > 5.

The programs for A287707, the canonical program `A287707.P3544810367225551293` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A287707 has offset 1).

The definition of A287707 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(a(n-1)-1)+a(a(n-a(n-1))+a(n-a(n-2))-1)` (program `A287707.P3544810367225551293`, by `A287707.P3544810367225551293.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A287707.P3544810367225551293

`a(a(n-1)-1)+a(a(n-a(n-1))+a(n-a(n-2))-1)` with `a(0)=1, a(1)=2, a(2)=3, a(3)=2, a(4)=2`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A287707

/-- `a(a(n-1)-1)+a(a(n-a(n-1))+a(n-a(n-2))-1)` -/
def P3544810367225551293.Spec : Prop :=
  ∀ n, (P3544810367225551293.a n : ℤ) = A287707 (n + 1)

theorem P3544810367225551293.correct : P3544810367225551293.Spec := by
  intro n
  simp only [A287707, Nat.add_sub_cancel]

end A287707

/-!
# A287709: Number of Dyck paths of semilength n such that every peak at level y > 1 is preceded by (at least) one peak at level y-1.

The programs for A287709, there is no canonical definition to state claims against.
-/

/-! ## A287709.P6375684655043379611

`A226762(A374541(n))`
-/

namespace A287709.P6375684655043379611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226762 (A374541 n).toNat

end

end A287709.P6375684655043379611

/-! ## A287709.P16262961896545956486

`A325399(a(n-1))+a(n-1)` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A287709.P16262961896545956486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1] fun n a =>
  A325399 (a (n - 1)).toNat + a (n - 1)

end

end A287709.P16262961896545956486

/-! ## A287709.P7171567723326322497

`A349150(a(n-1))+a(n-1)` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A287709.P7171567723326322497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1] fun n a =>
  A349150 (a (n - 1)).toNat + a (n - 1)

end

end A287709.P7171567723326322497

/-! ## A287709.P10398229875262557363

`A186708(A204855(n))`
-/

namespace A287709.P10398229875262557363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186708 (A204855 n).toNat

end

end A287709.P10398229875262557363

/-!
# A287710: Binary representation of the diagonal from the corner to the origin of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 326", based on the 5-celled von Neumann neighborhood.

The programs for A287710, there is no canonical definition to state claims against.
-/

/-! ## A287710.P15976796033363784125

`A007088(A287712(n))`
-/

namespace A287710.P15976796033363784125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A287712 n).toNat

end

end A287710.P15976796033363784125

/-! ## A287710.P6753397858348225496

`A007088(A000225(n+2)-A289969(n+1))`
-/

namespace A287710.P6753397858348225496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A000225 (n + 2) - A289969 (n + 1)).toNat

end

end A287710.P6753397858348225496

/-! ## A287710.P11023113756977958313

`A007088(Δ[A125128(n+1)]-A289969(n+1))`
-/

namespace A287710.P11023113756977958313
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125128 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (f1 (n + 1) - f1 n - A289969 (n + 1)).toNat

end

end A287710.P11023113756977958313

/-! ## A287710.P17328397207863689817

`A007088(Δ[A000247(n+2)]-A289969(n+1))`
-/

namespace A287710.P17328397207863689817
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000247 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (f1 (n + 1) - f1 n - A289969 (n + 1)).toNat

end

end A287710.P17328397207863689817

/-! ## A287710.P9500722312212887499

`A185544(2*A287712(n))`
-/

namespace A287710.P9500722312212887499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A287712 n).toNat

end

end A287710.P9500722312212887499

/-!
# A287711: Binary representation of the diagonal from the origin to the corner of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 326", based on the 5-celled von Neumann neighborhood.

The programs for A287711, there is no canonical definition to state claims against.
-/

/-! ## A287711.P2808880012896665142

`A007088(A287713(n))`
-/

namespace A287711.P2808880012896665142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A287713 n).toNat

end

end A287711.P2808880012896665142

/-! ## A287711.P5149795039351461559

`A185544(2*A287713(n))`
-/

namespace A287711.P5149795039351461559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A287713 n).toNat

end

end A287711.P5149795039351461559

/-! ## A287711.P14342641898637516846

`A287783(n)^(C(comp[∑[n]]-n, 2)-(n+1))!`
-/

namespace A287711.P14342641898637516846
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287783 n ^ Nat.factorial ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n + 1 : ℤ)).toNat

end

end A287711.P14342641898637516846

/-! ## A287711.P11024062254476835182

`A287783(A002998(n))`
-/

namespace A287711.P11024062254476835182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287783 (A002998 n).toNat

end

end A287711.P11024062254476835182

/-! ## A287711.P8588722874295057776

`A287783(A046469(n))`
-/

namespace A287711.P8588722874295057776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287783 (A046469 n).toNat

end

end A287711.P8588722874295057776

/-!
# A287712: Decimal representation of the diagonal from the corner to the origin of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 326", based on the 5-celled von Neumann neighborhood.

The programs for A287712, there is no canonical definition to state claims against.
-/

/-! ## A287712.P2621320298111642396

`A000225(n+2)-A289969(n+1)`
-/

namespace A287712.P2621320298111642396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 (n + 2) - A289969 (n + 1)

end

end A287712.P2621320298111642396

/-! ## A287712.P15515565266418084323

`A289970(n)-and(A289969(n+1), A289970(n))`
-/

namespace A287712.P15515565266418084323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289970 n - Int.land (A289969 (n + 1)) (A289970 n)

end

end A287712.P15515565266418084323

/-! ## A287712.P8603747230914925545

`Δ[A125128(n+1)-∑[A289969(n)]]`
-/

namespace A287712.P8603747230914925545
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289969 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125128 (n + 1) - ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A287712.P8603747230914925545

/-! ## A287712.P11046872858190798736

`Δ[A125128(n+1)]-A289969(n+1)`
-/

namespace A287712.P11046872858190798736
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125128 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A289969 (n + 1)

end

end A287712.P11046872858190798736

/-! ## A287712.P8415758204197295190

`Δ[A000247(n+2)]-A289969(n+1)`
-/

namespace A287712.P8415758204197295190
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000247 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A289969 (n + 1)

end

end A287712.P8415758204197295190

/-!
# A287713: Decimal representation of the diagonal from the origin to the corner of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 326", based on the 5-celled von Neumann neighborhood.

The programs for A287713, there is no canonical definition to state claims against.
-/

/-! ## A287713.P2721054953166147422

`A057889(lcm(A287712(n), A287785(n)))`
-/

namespace A287713.P2721054953166147422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057889 (Int.lcm (A287712 n) (A287785 n))

end

end A287713.P2721054953166147422

/-! ## A287713.P2149730468203178547

`A287785(A046469(n))`
-/

namespace A287713.P2149730468203178547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287785 (A046469 n).toNat

end

end A287713.P2149730468203178547

/-! ## A287713.P14416425569465995165

`A287785(A087036(n))`
-/

namespace A287713.P14416425569465995165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287785 (A087036 n).toNat

end

end A287713.P14416425569465995165

/-! ## A287713.P5333494368871047598

`A287785(A087051(n))`
-/

namespace A287713.P5333494368871047598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287785 (A087051 n).toNat

end

end A287713.P5333494368871047598

/-! ## A287713.P14392669183884707568

`A287785(A306593(n))`
-/

namespace A287713.P14392669183884707568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287785 (A306593 n).toNat

end

end A287713.P14392669183884707568

/-!
# A287714: Binary representation of the diagonal from the corner to the origin of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 329", based on the 5-celled von Neumann neighborhood.

The programs for A287714, there is no canonical definition to state claims against.
-/

/-! ## A287714.P1449318720585599888

`A007088(A287716(n))`
-/

namespace A287714.P1449318720585599888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A287716 n).toNat

end

end A287714.P1449318720585599888

/-! ## A287714.P791711089907215449

`A007088(and(-(A288298(n+1)+1), A288298(n)))`
-/

namespace A287714.P791711089907215449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (Int.land (-(A288298 (n + 1) + 1)) (A288298 n)).toNat

end

end A287714.P791711089907215449

/-! ## A287714.P14340632823006951723

`A185544(2*A287716(n))`
-/

namespace A287714.P14340632823006951723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A287716 n).toNat

end

end A287714.P14340632823006951723

/-! ## A287714.P866279888484005312

`A185544(A287716(n)+A287716(n))`
-/

namespace A287714.P866279888484005312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (A287716 n + A287716 n).toNat

end

end A287714.P866279888484005312

/-! ## A287714.P5465072930598295658

`A185544(2*and(-(A288298(n+1)+1), A288298(n)))`
-/

namespace A287714.P5465072930598295658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * Int.land (-(A288298 (n + 1) + 1)) (A288298 n)).toNat

end

end A287714.P5465072930598295658

/-!
# A287715: Binary representation of the diagonal from the origin to the corner of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 329", based on the 5-celled von Neumann neighborhood.

The programs for A287715, there is no canonical definition to state claims against.
-/

/-! ## A287715.P12783350703834928700

`A007088(A287717(n))`
-/

namespace A287715.P12783350703834928700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A287717 n).toNat

end

end A287715.P12783350703834928700

/-! ## A287715.P16983889741780615334

`A185544(2*A287717(n))`
-/

namespace A287715.P16983889741780615334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A287717 n).toNat

end

end A287715.P16983889741780615334

/-! ## A287715.P2081613517913502938

`A185544(A287717(n)+A287717(n))`
-/

namespace A287715.P2081613517913502938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (A287717 n + A287717 n).toNat

end

end A287715.P2081613517913502938

/-!
# A287716: Decimal representation of the diagonal from the corner to the origin of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 329", based on the 5-celled von Neumann neighborhood.

The programs for A287716, there is no canonical definition to state claims against.
-/

/-! ## A287716.P7054607667531095092

`and(-(A288298(n+1)+1), A288298(n))`
-/

namespace A287716.P7054607667531095092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-(A288298 (n + 1) + 1)) (A288298 n)

end

end A287716.P7054607667531095092

/-! ## A287716.P12660088213843584670

`and(A288299(2*n+1)-A288298(n+1), A288298(n))`
-/

namespace A287716.P12660088213843584670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A288299 (2 * n + 1) - A288298 (n + 1)) (A288298 n)

end

end A287716.P12660088213843584670

/-! ## A287716.P14229919730327917432

`xor(and(2, A347470((n+1)²)), A280412(n))`
-/

namespace A287716.P14229919730327917432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (Int.land 2 (A347470 ((n + 1) ^ 2))) (A280412 n)

end

end A287716.P14229919730327917432

/-! ## A287716.P8483284252721648159

`A277799(n)+A000122(A096681(n+1))`
-/

namespace A287716.P8483284252721648159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277799 n + A000122 (A096681 (n + 1)).toNat

end

end A287716.P8483284252721648159

/-!
# A287718: Binary representation of the diagonal from the corner to the origin of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 331", based on the 5-celled von Neumann neighborhood.

The programs for A287718, there is no canonical definition to state claims against.
-/

/-! ## A287718.P15265368663426664111

`A007088(A287720(n))`
-/

namespace A287718.P15265368663426664111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A287720 n).toNat

end

end A287718.P15265368663426664111

/-! ## A287718.P16761925452644246586

`A185544(2*A287720(n))`
-/

namespace A287718.P16761925452644246586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A287720 n).toNat

end

end A287718.P16761925452644246586

/-!
# A287719: Binary representation of the diagonal from the origin to the corner of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 331", based on the 5-celled von Neumann neighborhood.

The programs for A287719, there is no canonical definition to state claims against.
-/

/-! ## A287719.P13318491342155722935

`A007088(A287721(n))`
-/

namespace A287719.P13318491342155722935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A287721 n).toNat

end

end A287719.P13318491342155722935

/-! ## A287719.P13061321275689765759

`A185544(2*A287721(n))`
-/

namespace A287719.P13061321275689765759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A287721 n).toNat

end

end A287719.P13061321275689765759

/-!
# A287720: Decimal representation of the diagonal from the corner to the origin of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 331", based on the 5-celled von Neumann neighborhood.

The programs for A287720, there is no canonical definition to state claims against.
-/

/-! ## A287720.P1438169656498253537

`A287954(n)-A185238(A250120(n))`
-/

namespace A287720.P1438169656498253537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287954 n - A185238 (A250120 n).toNat

end

end A287720.P1438169656498253537

/-! ## A287720.P7972693648803001973

`A260411(A058235(n+1))+A282216(A004891(n+1))^(n%2)`
-/

namespace A287720.P7972693648803001973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260411 (A058235 (n + 1)).toNat + A282216 (A004891 (n + 1)).toNat ^ (n % 2)

end

end A287720.P7972693648803001973

/-!
# A287722: {0->1, 1->010}-transform of the infinite Fibonacci word A003849.

The programs for A287722, the canonical program `A287722.P15445179942749685933` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A287722 has offset 1).

The definition of A287722 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A287722.P15445179942749685933

`char[A287724(n+1)-1]`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A287722

/-- `char[A287724(n+1)-1]` -/
def P15445179942749685933.Spec : Prop :=
  ∀ n, (P15445179942749685933.a n : ℤ) = A287722 (n + 1)

theorem P15445179942749685933.correct : P15445179942749685933.Spec := by
  intro n
  simp only [A287722, Nat.add_sub_cancel]

end A287722

/-! ## A287722.P11283901124106748936

`A287663((n+1)^a(n-1))` with `a(0)=1`
-/

namespace A287722.P11283901124106748936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A287663 (SequenceMachineLib.roundAway ((n + 1 : ℚ) ^ (a (n - 1) : ℤ))).toNat

end

end A287722.P11283901124106748936

namespace A287722

/-- `A287663((n+1)^a(n-1))` -/
def P11283901124106748936.Spec : Prop :=
  ∀ n, P11283901124106748936.a n = A287722 (n + 1)

end A287722

/-! ## A287722.P5845227932045833286

`A287725(n+1)-A221151(n)`
-/

namespace A287722.P5845227932045833286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287725 (n + 1) - A221151 n

end

end A287722.P5845227932045833286

namespace A287722

/-- `A287725(n+1)-A221151(n)` -/
def P5845227932045833286.Spec : Prop :=
  ∀ n, P5845227932045833286.a n = A287722 (n + 1)

end A287722

/-! ## A287722.P5721897849864463027

`A287725(n+1)*A287769(n+1)`
-/

namespace A287722.P5721897849864463027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287725 (n + 1) * A287769 (n + 1)

end

end A287722.P5721897849864463027

namespace A287722

/-- `A287725(n+1)*A287769(n+1)` -/
def P5721897849864463027.Spec : Prop :=
  ∀ n, P5721897849864463027.a n = A287722 (n + 1)

end A287722

/-! ## A287722.P4437752514179595725

`A287674(n+1)+A287769(n+1)-A287769(n+2)`
-/

namespace A287722.P4437752514179595725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287674 (n + 1) + (A287769 (n + 1) - A287769 (n + 2))

end

end A287722.P4437752514179595725

namespace A287722

/-- `A287674(n+1)+A287769(n+1)-A287769(n+2)` -/
def P4437752514179595725.Spec : Prop :=
  ∀ n, P4437752514179595725.a n = A287722 (n + 1)

end A287722

/-! ## A287722.P10094544626767325056

`A287663(n+1)+A287674(n+2)-A287663(n+2)`
-/

namespace A287722.P10094544626767325056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287663 (n + 1) + (A287674 (n + 2) - A287663 (n + 2))

end

end A287722.P10094544626767325056

namespace A287722

/-- `A287663(n+1)+A287674(n+2)-A287663(n+2)` -/
def P10094544626767325056.Spec : Prop :=
  ∀ n, P10094544626767325056.a n = A287722 (n + 1)

end A287722

/-! ## A287722.P15589454205323085173

`A287769(n+1)-A221151(n+2)`
-/

namespace A287722.P15589454205323085173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287769 (n + 1) - A221151 (n + 2)

end

end A287722.P15589454205323085173

namespace A287722

/-- `A287769(n+1)-A221151(n+2)` -/
def P15589454205323085173.Spec : Prop :=
  ∀ n, P15589454205323085173.a n = A287722 (n + 1)

end A287722

/-! ## A287722.P4673483837213114971

`A287769(n+1)*A287769(n+3)`
-/

namespace A287722.P4673483837213114971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287769 (n + 1) * A287769 (n + 3)

end

end A287722.P4673483837213114971

namespace A287722

/-- `A287769(n+1)*A287769(n+3)` -/
def P4673483837213114971.Spec : Prop :=
  ∀ n, P4673483837213114971.a n = A287722 (n + 1)

end A287722

/-!
# A287723: Positions of 0 in A287722; complement of A287724.

The programs for A287723, the canonical program `A287723.P11608785159484584755` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A287723 has offset 1).

The definition of A287723 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A287723.P12002271673065372794

`ceil(∑[∏[ϕ-n%2]])+n`
-/

namespace A287723.P12002271673065372794
noncomputable section

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.goldenRatio - ((n % 2 : ℕ) : ℝ)

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈∑ j ∈ Finset.range (n + 1), f1 j⌉ + (n : ℤ)

end

end A287723.P12002271673065372794

namespace A287723

/-- `ceil(∑[∏[ϕ-n%2]])+n` -/
def P12002271673065372794.Spec : Prop :=
  ∀ n, P12002271673065372794.a n = A287723 (n + 1)

end A287723

/-! ## A287723.P17775065321593965025

`floor(∑[and(1, n+1)/ϕ+2])`
-/

namespace A287723.P17775065321593965025
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (Nat.land 1 (n + 1) : ℝ) / Real.goldenRatio + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋

end

end A287723.P17775065321593965025

namespace A287723

/-- `floor(∑[and(1, n+1)/ϕ+2])` -/
def P17775065321593965025.Spec : Prop :=
  ∀ n, P17775065321593965025.a n = A287723 (n + 1)

end A287723

/-! ## A287723.P1511023226876246375

`ceil(∑[ϕ^((n+1)%2)])+n`
-/

namespace A287723.P1511023226876246375
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.goldenRatio ^ ((n + 1) % 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈∑ j ∈ Finset.range (n + 1), f1 j⌉ + (n : ℤ)

end

end A287723.P1511023226876246375

namespace A287723

/-- `ceil(∑[ϕ^((n+1)%2)])+n` -/
def P1511023226876246375.Spec : Prop :=
  ∀ n, P1511023226876246375.a n = A287723 (n + 1)

end A287723

/-! ## A287723.P8532802630281351584

`floor(∑[gcd(2, n)^log2(ϕ)])+1+n`
-/

namespace A287723.P8532802630281351584
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (Nat.gcd 2 n : ℝ) ^ (Real.logb 2 Real.goldenRatio)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋ + 1 + (n : ℤ)

end

end A287723.P8532802630281351584

namespace A287723

/-- `floor(∑[gcd(2, n)^log2(ϕ)])+1+n` -/
def P8532802630281351584.Spec : Prop :=
  ∀ n, P8532802630281351584.a n = A287723 (n + 1)

end A287723

/-! ## A287723.P12798505975791431648

`floor(∑[ϕ^((n-1)%2)])+2+n`
-/

namespace A287723.P12798505975791431648
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.goldenRatio ^ (Int.tmod ((n : ℤ) - 1) 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋ + 2 + (n : ℤ)

end

end A287723.P12798505975791431648

namespace A287723

/-- `floor(∑[ϕ^((n-1)%2)])+2+n` -/
def P12798505975791431648.Spec : Prop :=
  ∀ n, P12798505975791431648.a n = A287723 (n + 1)

end A287723

/-! ## A287723.P16248209571434008268

`ceil(ϕ*∑[ϕ-a(n-1)])+n` with `a(0)=1`
-/

namespace A287723.P16248209571434008268
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.rec [1] fun n f1 =>
  Real.goldenRatio - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.goldenRatio * (∑ j ∈ Finset.range (n + 1), f1 j)⌉ + (n : ℤ)

end

end A287723.P16248209571434008268

namespace A287723

/-- `ceil(ϕ*∑[ϕ-a(n-1)])+n` -/
def P16248209571434008268.Spec : Prop :=
  ∀ n, P16248209571434008268.a n = A287723 (n + 1)

end A287723

/-! ## A287723.P4450966191984879382

`∑[char[2*floor(ϕ*n)]]+2*n+1`
-/

namespace A287723.P4450966191984879382
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ⌊Real.goldenRatio * (n : ℝ)⌋

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (2 * n + 1)

end

end A287723.P4450966191984879382

namespace A287723

/-- `∑[char[2*floor(ϕ*n)]]+2*n+1` -/
def P4450966191984879382.Spec : Prop :=
  ∀ n, (P4450966191984879382.a n : ℤ) = A287723 (n + 1)

end A287723

/-! ## A287723.P13702633252934681030

`∑[A363057(n+1)+1]`
-/

namespace A287723.P13702633252934681030
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363057 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A287723.P13702633252934681030

namespace A287723

/-- `∑[A363057(n+1)+1]` -/
def P13702633252934681030.Spec : Prop :=
  ∀ n, P13702633252934681030.a n = A287723 (n + 1)

end A287723

/-! ## A287723.P6710688710974631622

`∑[C(A284620(n+1), 2)+2]`
-/

namespace A287723.P6710688710974631622
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A284620 (n + 1)).toNat 2 + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A287723.P6710688710974631622

namespace A287723

/-- `∑[C(A284620(n+1), 2)+2]` -/
def P6710688710974631622.Spec : Prop :=
  ∀ n, (P6710688710974631622.a n : ℤ) = A287723 (n + 1)

end A287723

/-! ## A287723.P8696880156365012440

`round(A287775(n+1)+n/2)`
-/

namespace A287723.P8696880156365012440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A287775 (n + 1) : ℚ) + (n : ℚ) / 2)

end

end A287723.P8696880156365012440

namespace A287723

/-- `round(A287775(n+1)+n/2)` -/
def P8696880156365012440.Spec : Prop :=
  ∀ n, P8696880156365012440.a n = A287723 (n + 1)

end A287723

/-! ## A287723.P11608785159484584755

`∑[A001468(A142150(n))+1]`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A287723

/-- `∑[A001468(A142150(n))+1]` -/
def P11608785159484584755.Spec : Prop :=
  ∀ n, P11608785159484584755.a n = A287723 (n + 1)

theorem P11608785159484584755.correct : P11608785159484584755.Spec := by
  intro n
  simp only [A287723, Nat.add_sub_cancel]

end A287723

/-! ## A287723.P14107923264710815561

`A000027(A187485(n+1)+n+1)`
-/

namespace A287723.P14107923264710815561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A187485 (n + 1) + (n + 1 : ℤ)).toNat

end

end A287723.P14107923264710815561

namespace A287723

/-- `A000027(A187485(n+1)+n+1)` -/
def P14107923264710815561.Spec : Prop :=
  ∀ n, P14107923264710815561.a n = A287723 (n + 1)

end A287723

/-! ## A287723.P946522157843314932

`∪[A287726(n+1)+2, A287726(n+1)]`
-/

namespace A287723.P946522157843314932
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287726 (n + 1) + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287726 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A287723.P946522157843314932

namespace A287723

/-- `∪[A287726(n+1)+2, A287726(n+1)]` -/
def P946522157843314932.Spec : Prop :=
  ∀ n, (P946522157843314932.a n : ℤ) = A287723 (n + 1)

end A287723

/-! ## A287723.P16648777931928942081

`∪[A287675(2*n+1), A286750(2*(n+1))]`
-/

namespace A287723.P16648777931928942081
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287675 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286750 (2 * (n + 1))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A287723.P16648777931928942081

namespace A287723

/-- `∪[A287675(2*n+1), A286750(2*(n+1))]` -/
def P16648777931928942081.Spec : Prop :=
  ∀ n, (P16648777931928942081.a n : ℤ) = A287723 (n + 1)

end A287723

/-! ## A287723.P863518348807200249

`∪[A287675(2*n+1), A287675(2*(n+1))+1]`
-/

namespace A287723.P863518348807200249
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287675 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287675 (2 * (n + 1)) + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A287723.P863518348807200249

namespace A287723

/-- `∪[A287675(2*n+1), A287675(2*(n+1))+1]` -/
def P863518348807200249.Spec : Prop :=
  ∀ n, (P863518348807200249.a n : ℤ) = A287723 (n + 1)

end A287723

/-! ## A287723.P16351790963671824869

`∪[A286750(2*n+1)-1, A286750(2*(n+1))]`
-/

namespace A287723.P16351790963671824869
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286750 (2 * n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286750 (2 * (n + 1))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A287723.P16351790963671824869

namespace A287723

/-- `∪[A286750(2*n+1)-1, A286750(2*(n+1))]` -/
def P16351790963671824869.Spec : Prop :=
  ∀ n, (P16351790963671824869.a n : ℤ) = A287723 (n + 1)

end A287723

/-! ## A287723.P18428052152373505737

`∑[gcd(2, n+1)*A108103(n+2)]`
-/

namespace A287723.P18428052152373505737
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.gcd 2 (n + 1) : ℤ) * A108103 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A287723.P18428052152373505737

namespace A287723

/-- `∑[gcd(2, n+1)*A108103(n+2)]` -/
def P18428052152373505737.Spec : Prop :=
  ∀ n, P18428052152373505737.a n = A287723 (n + 1)

end A287723

/-! ## A287723.P18397035903053859150

`∑[3-(A288707(n+3)+A040041(n))%3]`
-/

namespace A287723.P18397035903053859150
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - Int.tmod (A288707 (n + 3) + A040041 n) 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A287723.P18397035903053859150

namespace A287723

/-- `∑[3-(A288707(n+3)+A040041(n))%3]` -/
def P18397035903053859150.Spec : Prop :=
  ∀ n, P18397035903053859150.a n = A287723 (n + 1)

end A287723

/-! ## A287723.P6684827566271161318

`A287664(A007494(n)+1)`
-/

namespace A287723.P6684827566271161318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287664 (A007494 n + 1).toNat

end

end A287723.P6684827566271161318

namespace A287723

/-- `A287664(A007494(n)+1)` -/
def P6684827566271161318.Spec : Prop :=
  ∀ n, P6684827566271161318.a n = A287723 (n + 1)

end A287723

/-!
# A287724: Positions of 1 in A287722; complement of A287723.

The programs for A287724, the canonical program `A287724.P16226668830565031982` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A287724 has offset 1).

The definition of A287724 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A287724.P8004487054119683987

`∑[A014677(n)²]+n`
-/

namespace A287724.P8004487054119683987
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014677 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A287724.P8004487054119683987

namespace A287724

/-- `∑[A014677(n)²]+n` -/
def P8004487054119683987.Spec : Prop :=
  ∀ n, P8004487054119683987.a n = A287724 (n + 1)

end A287724

/-! ## A287724.P6463120198317351861

`∑[char[A187485(n+1)]+1]`
-/

namespace A287724.P6463120198317351861
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187485 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = (n : ℤ) then 1 else 0) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A287724.P6463120198317351861

namespace A287724

/-- `∑[char[A187485(n+1)]+1]` -/
def P6463120198317351861.Spec : Prop :=
  ∀ n, (P6463120198317351861.a n : ℤ) = A287724 (n + 1)

end A287724

/-! ## A287724.P12076819362634036523

`comp[comp[A003623(n+1)]+n]`
-/

namespace A287724.P12076819362634036523
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003623 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n + n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A287724.P12076819362634036523

namespace A287724

/-- `comp[comp[A003623(n+1)]+n]` -/
def P12076819362634036523.Spec : Prop :=
  ∀ n, (P12076819362634036523.a n : ℤ) = A287724 (n + 1)

end A287724

/-! ## A287724.P3946160358990710079

`comp[A287723(n+1)-1]+1`
-/

namespace A287724.P3946160358990710079
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287723 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A287724.P3946160358990710079

namespace A287724

/-- `comp[A287723(n+1)-1]+1` -/
def P3946160358990710079.Spec : Prop :=
  ∀ n, (P3946160358990710079.a n : ℤ) = A287724 (n + 1)

end A287724

/-! ## A287724.P16195239814640562398

`A286751(n+1)+Δ[floor(ϕ*(n+1))]%2`
-/

namespace A287724.P16195239814640562398
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.goldenRatio * (n + 1 : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286751 (n + 1) + Int.tmod (f1 (n + 1) - f1 n) 2

end

end A287724.P16195239814640562398

namespace A287724

/-- `A286751(n+1)+Δ[floor(ϕ*(n+1))]%2` -/
def P16195239814640562398.Spec : Prop :=
  ∀ n, P16195239814640562398.a n = A287724 (n + 1)

end A287724

/-! ## A287724.P16226668830565031982

`∑[A001468(A005206(n))]`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A287724

/-- `∑[A001468(A005206(n))]` -/
def P16226668830565031982.Spec : Prop :=
  ∀ n, P16226668830565031982.a n = A287724 (n + 1)

theorem P16226668830565031982.correct : P16226668830565031982.Spec := by
  intro n
  simp only [A287724, Nat.add_sub_cancel]

end A287724

/-! ## A287724.P11165457842569264302

`∑[A001468(∑[A096270(n)])]`
-/

namespace A287724.P11165457842569264302
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096270 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001468 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A287724.P11165457842569264302

namespace A287724

/-- `∑[A001468(∑[A096270(n)])]` -/
def P11165457842569264302.Spec : Prop :=
  ∀ n, P11165457842569264302.a n = A287724 (n + 1)

end A287724

/-! ## A287724.P7416677140874463250

`∑[A001468(A060143(n+1))]`
-/

namespace A287724.P7416677140874463250
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001468 (A060143 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A287724.P7416677140874463250

namespace A287724

/-- `∑[A001468(A060143(n+1))]` -/
def P7416677140874463250.Spec : Prop :=
  ∀ n, P7416677140874463250.a n = A287724 (n + 1)

end A287724

/-! ## A287724.P18314918941415451860

`∑[A003842(A120613(n+1))]`
-/

namespace A287724.P18314918941415451860
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003842 (A120613 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A287724.P18314918941415451860

namespace A287724

/-- `∑[A003842(A120613(n+1))]` -/
def P18314918941415451860.Spec : Prop :=
  ∀ n, P18314918941415451860.a n = A287724 (n + 1)

end A287724

/-! ## A287724.P8576213722177293881

`A286751(n+1)+A003849(n)`
-/

namespace A287724.P8576213722177293881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286751 (n + 1) + A003849 n

end

end A287724.P8576213722177293881

namespace A287724

/-- `A286751(n+1)+A003849(n)` -/
def P8576213722177293881.Spec : Prop :=
  ∀ n, P8576213722177293881.a n = A287724 (n + 1)

end A287724

/-! ## A287724.P3979193128559302585

`A287676(n+1)-A003849(n)`
-/

namespace A287724.P3979193128559302585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287676 (n + 1) - A003849 n

end

end A287724.P3979193128559302585

namespace A287724

/-- `A287676(n+1)-A003849(n)` -/
def P3979193128559302585.Spec : Prop :=
  ∀ n, P3979193128559302585.a n = A287724 (n + 1)

end A287724

/-! ## A287724.P11955857747279911557

`∑[A096270(∑[A096270(n)])+1]`
-/

namespace A287724.P11955857747279911557
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096270 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096270 (∑ j ∈ Finset.range (n + 1), f2 j).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A287724.P11955857747279911557

namespace A287724

/-- `∑[A096270(∑[A096270(n)])+1]` -/
def P11955857747279911557.Spec : Prop :=
  ∀ n, P11955857747279911557.a n = A287724 (n + 1)

end A287724

/-! ## A287724.P15406193624680009635

`∑[A001468(∑[A001468(n)-1])]`
-/

namespace A287724.P15406193624680009635
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001468 n - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001468 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A287724.P15406193624680009635

namespace A287724

/-- `∑[A001468(∑[A001468(n)-1])]` -/
def P15406193624680009635.Spec : Prop :=
  ∀ n, P15406193624680009635.a n = A287724 (n + 1)

end A287724

/-! ## A287724.P17837158171067033353

`Δ[n²]-A005206(A060144(n))`
-/

namespace A287724.P17837158171067033353
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) - A005206 (A060144 n).toNat

end

end A287724.P17837158171067033353

namespace A287724

/-- `Δ[n²]-A005206(A060144(n))` -/
def P17837158171067033353.Spec : Prop :=
  ∀ n, P17837158171067033353.a n = A287724 (n + 1)

end A287724

/-! ## A287724.P846086287510563196

`∑[A005713(n)+1]-A005713(n)`
-/

namespace A287724.P846086287510563196
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005713 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A005713 n

end

end A287724.P846086287510563196

namespace A287724

/-- `∑[A005713(n)+1]-A005713(n)` -/
def P846086287510563196.Spec : Prop :=
  ∀ n, P846086287510563196.a n = A287724 (n + 1)

end A287724

/-! ## A287724.P11901068348048469997

`∑[A003842(n)]+n-A005206(n)`
-/

namespace A287724.P11901068348048469997
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003842 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + ((n : ℤ) - A005206 n)

end

end A287724.P11901068348048469997

namespace A287724

/-- `∑[A003842(n)]+n-A005206(n)` -/
def P11901068348048469997.Spec : Prop :=
  ∀ n, P11901068348048469997.a n = A287724 (n + 1)

end A287724

/-! ## A287724.P10445038667232894234

`comp[comp[A007067(A001950(n+1))]+n]`
-/

namespace A287724.P10445038667232894234
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007067 (A001950 (n + 1)).toNat

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n + n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A287724.P10445038667232894234

namespace A287724

/-- `comp[comp[A007067(A001950(n+1))]+n]` -/
def P10445038667232894234.Spec : Prop :=
  ∀ n, (P10445038667232894234.a n : ℤ) = A287724 (n + 1)

end A287724

/-! ## A287724.P8737908903928176245

`2*n+1-A060144(A019446(n+1))`
-/

namespace A287724.P8737908903928176245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) - A060144 (A019446 (n + 1)).toNat

end

end A287724.P8737908903928176245

namespace A287724

/-- `2*n+1-A060144(A019446(n+1))` -/
def P8737908903928176245.Spec : Prop :=
  ∀ n, P8737908903928176245.a n = A287724 (n + 1)

end A287724

/-! ## A287724.P9513499484778921508

`2*n+1-A060143(A060144(n)+1)`
-/

namespace A287724.P9513499484778921508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) - A060143 (A060144 n + 1).toNat

end

end A287724.P9513499484778921508

namespace A287724

/-- `2*n+1-A060143(A060144(n)+1)` -/
def P9513499484778921508.Spec : Prop :=
  ∀ n, P9513499484778921508.a n = A287724 (n + 1)

end A287724

/-! ## A287724.P10124514046283084769

`2*n+1-A060144(A123070(n+1))`
-/

namespace A287724.P10124514046283084769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) - A060144 (A123070 (n + 1)).toNat

end

end A287724.P10124514046283084769

namespace A287724

/-- `2*n+1-A060144(A123070(n+1))` -/
def P10124514046283084769.Spec : Prop :=
  ∀ n, P10124514046283084769.a n = A287724 (n + 1)

end A287724

/-!
# A287725: {0->1, 1->011}-transform of the infinite Fibonacci word A003849.

The programs for A287725, the canonical program `A287725.P381442669331044004` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A287725 has offset 1).

The definition of A287725 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A287725.P16680374138263767236

`char[comp[floor(n*(ϕ+3))]-3]`
-/

namespace A287725.P16680374138263767236
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) * (Real.goldenRatio + 3)⌋

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n : ℤ) - 3

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A287725.P16680374138263767236

namespace A287725

/-- `char[comp[floor(n*(ϕ+3))]-3]` -/
def P16680374138263767236.Spec : Prop :=
  ∀ n, (P16680374138263767236.a n : ℤ) = A287725 (n + 1)

end A287725

/-! ## A287725.P3329187858550319993

`A287674((n+1)^a(n-1))` with `a(0)=1`
-/

namespace A287725.P3329187858550319993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A287674 (SequenceMachineLib.roundAway ((n + 1 : ℚ) ^ (a (n - 1) : ℤ))).toNat

end

end A287725.P3329187858550319993

namespace A287725

/-- `A287674((n+1)^a(n-1))` -/
def P3329187858550319993.Spec : Prop :=
  ∀ n, P3329187858550319993.a n = A287725 (n + 1)

end A287725

/-! ## A287725.P381442669331044004

`A287722(n+1)+A221151(n)`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A287725

/-- `A287722(n+1)+A221151(n)` -/
def P381442669331044004.Spec : Prop :=
  ∀ n, P381442669331044004.a n = A287725 (n + 1)

theorem P381442669331044004.correct : P381442669331044004.Spec := by
  intro n
  simp only [A287725, Nat.add_sub_cancel]

end A287725

/-! ## A287725.P13318867236342147254

`A287722(A287769(n+1)+n)`
-/

namespace A287725.P13318867236342147254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287722 (A287769 (n + 1) + (n : ℤ)).toNat

end

end A287725.P13318867236342147254

namespace A287725

/-- `A287722(A287769(n+1)+n)` -/
def P13318867236342147254.Spec : Prop :=
  ∀ n, P13318867236342147254.a n = A287725 (n + 1)

end A287725

/-! ## A287725.P12383196731175957038

`A287663(n+1)+1-A286749(n+1)`
-/

namespace A287725.P12383196731175957038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287663 (n + 1) + (1 - A286749 (n + 1))

end

end A287725.P12383196731175957038

namespace A287725

/-- `A287663(n+1)+1-A286749(n+1)` -/
def P12383196731175957038.Spec : Prop :=
  ∀ n, P12383196731175957038.a n = A287725 (n + 1)

end A287725

/-! ## A287725.P5798495332825266363

`A287674(A287674(n+2)+n+1)`
-/

namespace A287725.P5798495332825266363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287674 (A287674 (n + 2) + (n + 1 : ℤ)).toNat

end

end A287725.P5798495332825266363

namespace A287725

/-- `A287674(A287674(n+2)+n+1)` -/
def P5798495332825266363.Spec : Prop :=
  ∀ n, P5798495332825266363.a n = A287725 (n + 1)

end A287725

/-! ## A287725.P3122561459009167696

`A287722(A287663(n+2)+n+1)`
-/

namespace A287725.P3122561459009167696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287722 (A287663 (n + 2) + (n + 1 : ℤ)).toNat

end

end A287725.P3122561459009167696

namespace A287725

/-- `A287722(A287663(n+2)+n+1)` -/
def P3122561459009167696.Spec : Prop :=
  ∀ n, P3122561459009167696.a n = A287725 (n + 1)

end A287725

/-! ## A287725.P15029022455941779682

`A287769(n+3)`
-/

namespace A287725.P15029022455941779682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287769 (n + 3)

end

end A287725.P15029022455941779682

namespace A287725

/-- `A287769(n+3)` -/
def P15029022455941779682.Spec : Prop :=
  ∀ n, P15029022455941779682.a n = A287725 (n + 1)

end A287725

/-! ## A287725.P17601178768049873588

`1-A221151(n+2)`
-/

namespace A287725.P17601178768049873588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A221151 (n + 2)

end

end A287725.P17601178768049873588

namespace A287725

/-- `1-A221151(n+2)` -/
def P17601178768049873588.Spec : Prop :=
  ∀ n, P17601178768049873588.a n = A287725 (n + 1)

end A287725

/-! ## A287725.P15669767399338014488

`log2(Δ[A329999(n+3)])`
-/

namespace A287725.P15669767399338014488
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329999 (n + 3)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (f1 (n + 1) - f1 n : ℝ)

end

end A287725.P15669767399338014488

namespace A287725

/-- `log2(Δ[A329999(n+3)])` -/
def P15669767399338014488.Spec : Prop :=
  ∀ n, P15669767399338014488.a n = (A287725 (n + 1) : ℝ)

end A287725

/-!
# A287726: Positions of 0 in A287725; complement of A287727.

The programs for A287726, the canonical program `A287726.P4252167091943020696` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A287726 has offset 1).

The definition of A287726 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A287726.P4252167091943020696

`floor((n+1)*ϕ)+3*(n+1)-2`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A287726

/-- `floor((n+1)*ϕ)+3*(n+1)-2` -/
def P4252167091943020696.Spec : Prop :=
  ∀ n, P4252167091943020696.a n = A287726 (n + 1)

theorem P4252167091943020696.correct : P4252167091943020696.Spec := by
  intro n
  simp only [A287726, Nat.add_sub_cancel]

end A287726

/-! ## A287726.P1989622763767763167

`floor(lcm(2, 2*n)+(n+1)*ϕ²)`
-/

namespace A287726.P1989622763767763167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.lcm 2 (2 * n) : ℝ) + (n + 1 : ℝ) * Real.goldenRatio ^ 2⌋

end

end A287726.P1989622763767763167

namespace A287726

/-- `floor(lcm(2, 2*n)+(n+1)*ϕ²)` -/
def P1989622763767763167.Spec : Prop :=
  ∀ n, P1989622763767763167.a n = A287726 (n + 1)

end A287726

/-! ## A287726.P1754040314502152401

`floor(2*n+ϕ²*C(n+1, n))`
-/

namespace A287726.P1754040314502152401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(2 * n : ℝ) + Real.goldenRatio ^ 2 * (Nat.choose (n + 1) n : ℝ)⌋

end

end A287726.P1754040314502152401

namespace A287726

/-- `floor(2*n+ϕ²*C(n+1, n))` -/
def P1754040314502152401.Spec : Prop :=
  ∀ n, P1754040314502152401.a n = A287726 (n + 1)

end A287726

/-! ## A287726.P5695592217953869227

`floor(and(2*n+1, 2*n)+(n+1)*ϕ²)`
-/

namespace A287726.P5695592217953869227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.land (2 * n + 1) (2 * n) : ℝ) + (n + 1 : ℝ) * Real.goldenRatio ^ 2⌋

end

end A287726.P5695592217953869227

namespace A287726

/-- `floor(and(2*n+1, 2*n)+(n+1)*ϕ²)` -/
def P5695592217953869227.Spec : Prop :=
  ∀ n, P5695592217953869227.a n = A287726 (n + 1)

end A287726

/-!
# A287727: Positions of 1 in A287725; complement of A287726.

The programs for A287727, the canonical program `A287727.P18038201456973574914` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A287727 has offset 1).

The definition of A287727 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A287727.P3840166093595043806

`ceil((n+3)/(ϕ+2)+n)`
-/

namespace A287727.P3840166093595043806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n + 3 : ℝ) / (Real.goldenRatio + 2) + (n : ℝ)⌉

end

end A287727.P3840166093595043806

namespace A287727

/-- `ceil((n+3)/(ϕ+2)+n)` -/
def P3840166093595043806.Spec : Prop :=
  ∀ n, P3840166093595043806.a n = A287727 (n + 1)

end A287727

/-! ## A287727.P18386969900687497510

`∑[char[eq[1, A003849(n)]+n]+1]`
-/

namespace A287727.P18386969900687497510
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003849 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f3 j : ℤ) = f4 j) n + n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = n then 1 else 0) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A287727.P18386969900687497510

namespace A287727

/-- `∑[char[eq[1, A003849(n)]+n]+1]` -/
def P18386969900687497510.Spec : Prop :=
  ∀ n, (P18386969900687497510.a n : ℤ) = A287727 (n + 1)

end A287727

/-! ## A287727.P9028015648332080921

`comp[A001950(n+1)-1+n+n]+1`
-/

namespace A287727.P9028015648332080921
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001950 (n + 1) - 1 + (n : ℤ) + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A287727.P9028015648332080921

namespace A287727

/-- `comp[A001950(n+1)-1+n+n]+1` -/
def P9028015648332080921.Spec : Prop :=
  ∀ n, (P9028015648332080921.a n : ℤ) = A287727 (n + 1)

end A287727

/-! ## A287727.P1426076965203663490

`comp[char[floor(n*ϕ²+ϕ)]*A286751(n+1)]`
-/

namespace A287727.P1426076965203663490
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) * Real.goldenRatio ^ 2 + Real.goldenRatio⌋

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f2 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A286751 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A287727.P1426076965203663490

namespace A287727

/-- `comp[char[floor(n*ϕ²+ϕ)]*A286751(n+1)]` -/
def P1426076965203663490.Spec : Prop :=
  ∀ n, (P1426076965203663490.a n : ℤ) = A287727 (n + 1)

end A287727

/-! ## A287727.P18038201456973574914

`A383422(n)+A287770(n+1)`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A287727

/-- `A383422(n)+A287770(n+1)` -/
def P18038201456973574914.Spec : Prop :=
  ∀ n, P18038201456973574914.a n = A287727 (n + 1)

theorem P18038201456973574914.correct : P18038201456973574914.Spec := by
  intro n
  simp only [A287727, Nat.add_sub_cancel]

end A287727

/-! ## A287727.P12140191793249660880

`∑[A003849(∑[A286746(n+1)])+1]`
-/

namespace A287727.P12140191793249660880
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286746 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003849 (∑ j ∈ Finset.range (n + 1), f2 j).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A287727.P12140191793249660880

namespace A287727

/-- `∑[A003849(∑[A286746(n+1)])+1]` -/
def P12140191793249660880.Spec : Prop :=
  ∀ n, P12140191793249660880.a n = A287727 (n + 1)

end A287727

/-! ## A287727.P12651752929093243342

`∪[A286750(n+1), A287665(n+1)]`
-/

namespace A287727.P12651752929093243342
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286750 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287665 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A287727.P12651752929093243342

namespace A287727

/-- `∪[A286750(n+1), A287665(n+1)]` -/
def P12651752929093243342.Spec : Prop :=
  ∀ n, (P12651752929093243342.a n : ℤ) = A287727 (n + 1)

end A287727

/-! ## A287727.P17554663437317829961

`∪[A286750(n+1), A287676(n+1)]`
-/

namespace A287727.P17554663437317829961
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286750 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287676 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A287727.P17554663437317829961

namespace A287727

/-- `∪[A286750(n+1), A287676(n+1)]` -/
def P17554663437317829961.Spec : Prop :=
  ∀ n, (P17554663437317829961.a n : ℤ) = A287727 (n + 1)

end A287727

/-! ## A287727.P12187025783973747829

`∪[A286750(n+1), A287724(n+1)]`
-/

namespace A287727.P12187025783973747829
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286750 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287724 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A287727.P12187025783973747829

namespace A287727

/-- `∪[A286750(n+1), A287724(n+1)]` -/
def P12187025783973747829.Spec : Prop :=
  ∀ n, (P12187025783973747829.a n : ℤ) = A287727 (n + 1)

end A287727

/-! ## A287727.P1820918245249911712

`∪[A287676(n+1), A287724(n+1)]`
-/

namespace A287727.P1820918245249911712
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287676 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287724 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A287727.P1820918245249911712

namespace A287727

/-- `∪[A287676(n+1), A287724(n+1)]` -/
def P1820918245249911712.Spec : Prop :=
  ∀ n, (P1820918245249911712.a n : ℤ) = A287727 (n + 1)

end A287727

/-! ## A287727.P16107096439711737283

`A287770(n+1)+1-A287772(n+1)`
-/

namespace A287727.P16107096439711737283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287770 (n + 1) + (1 - A287772 (n + 1))

end

end A287727.P16107096439711737283

namespace A287727

/-- `A287770(n+1)+1-A287772(n+1)` -/
def P16107096439711737283.Spec : Prop :=
  ∀ n, P16107096439711737283.a n = A287727 (n + 1)

end A287727

/-! ## A287727.P13039977595261966103

`∪[A287665(n+1), A287675(n+1)+1]`
-/

namespace A287727.P13039977595261966103
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287665 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287675 (n + 1) + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A287727.P13039977595261966103

namespace A287727

/-- `∪[A287665(n+1), A287675(n+1)+1]` -/
def P13039977595261966103.Spec : Prop :=
  ∀ n, (P13039977595261966103.a n : ℤ) = A287727 (n + 1)

end A287727

/-! ## A287727.P10758175671668296995

`∪[A287675(n+1)+1, A287724(n+1)]`
-/

namespace A287727.P10758175671668296995
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287675 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287724 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A287727.P10758175671668296995

namespace A287727

/-- `∪[A287675(n+1)+1, A287724(n+1)]` -/
def P10758175671668296995.Spec : Prop :=
  ∀ n, (P10758175671668296995.a n : ℤ) = A287727 (n + 1)

end A287727

/-! ## A287727.P6747936202658410620

`∪[A287724(n+1), A287726(n+1)+2]`
-/

namespace A287727.P6747936202658410620
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287724 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287726 (n + 1) + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A287727.P6747936202658410620

namespace A287727

/-- `∪[A287724(n+1), A287726(n+1)+2]` -/
def P6747936202658410620.Spec : Prop :=
  ∀ n, (P6747936202658410620.a n : ℤ) = A287727 (n + 1)

end A287727

/-! ## A287727.P1239052575817782923

`∪[A286751(n+2)-1, A287724(n+2)]`
-/

namespace A287727.P1239052575817782923
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286751 (n + 2) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287724 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A287727.P1239052575817782923

namespace A287727

/-- `∪[A286751(n+2)-1, A287724(n+2)]` -/
def P1239052575817782923.Spec : Prop :=
  ∀ n, (P1239052575817782923.a n : ℤ) = A287727 (n + 1)

end A287727

/-! ## A287727.P15726442138767793742

`∑[A221150(n+1)+1]`
-/

namespace A287727.P15726442138767793742
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221150 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A287727.P15726442138767793742

namespace A287727

/-- `∑[A221150(n+1)+1]` -/
def P15726442138767793742.Spec : Prop :=
  ∀ n, P15726442138767793742.a n = A287727 (n + 1)

end A287727

/-! ## A287727.P441606504652638086

`∑[2-A230603(n+1)]`
-/

namespace A287727.P441606504652638086
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A230603 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A287727.P441606504652638086

namespace A287727

/-- `∑[2-A230603(n+1)]` -/
def P441606504652638086.Spec : Prop :=
  ∀ n, P441606504652638086.a n = A287727 (n + 1)

end A287727

/-! ## A287727.P5199097508200162718

`A221150(n+1)+A287770(n+1)+A221150(n)`
-/

namespace A287727.P5199097508200162718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221150 (n + 1) + (A287770 (n + 1) + A221150 n)

end

end A287727.P5199097508200162718

namespace A287727

/-- `A221150(n+1)+A287770(n+1)+A221150(n)` -/
def P5199097508200162718.Spec : Prop :=
  ∀ n, P5199097508200162718.a n = A287727 (n + 1)

end A287727

/-! ## A287727.P2914458370962280885

`A287770(n+3)-2`
-/

namespace A287727.P2914458370962280885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287770 (n + 3) - 2

end

end A287727.P2914458370962280885

namespace A287727

/-- `A287770(n+3)-2` -/
def P2914458370962280885.Spec : Prop :=
  ∀ n, P2914458370962280885.a n = A287727 (n + 1)

end A287727

/-!
# A287728: Number of odd primitive abundant numbers with n prime factors, counted with multiplicity.

The programs for A287728, there is no canonical definition to state claims against.
-/

/-! ## A287728.P678885767921015573

`A308931(A057864(n+1))%A088690(n)`
-/

namespace A287728.P678885767921015573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A308931 (A057864 (n + 1)).toNat) (A088690 n)

end

end A287728.P678885767921015573

/-! ## A287728.P11292453198480804766

`A286067(n+1)%A185307(A359615(n))`
-/

namespace A287728.P11292453198480804766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A286067 (n + 1)) (A185307 (A359615 n).toNat)

end

end A287728.P11292453198480804766

/-!
# A287729: The c-fusc function c(n) = a(n): a(1)=1, a(2n) = s(n), a(2n+1) = s(n)+s(n+1), where s(n) = A287730(n).

The programs for A287729, there is no canonical definition to state claims against.
-/

/-! ## A287729.P11721534455863622531

`A287732(n+1)-a(n-1)` with `a(0)=1`
-/

namespace A287729.P11721534455863622531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A287732 (n + 1) - a (n - 1)

end

end A287729.P11721534455863622531

/-! ## A287729.P3521828834230920497

`A287730(n+1)+A213369(n+1)`
-/

namespace A287729.P3521828834230920497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287730 (n + 1) + A213369 (n + 1)

end

end A287729.P3521828834230920497

/-! ## A287729.P17447002573941109901

`A002487(n+1)-A287730(n+1)`
-/

namespace A287729.P17447002573941109901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (n + 1) - A287730 (n + 1)

end

end A287729.P17447002573941109901

/-! ## A287729.P5596410160018438199

`A287823(n+1)/A001511(n+1)`
-/

namespace A287729.P5596410160018438199
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A287823 (n + 1) : ℚ) / (A001511 (n + 1) : ℚ)

end

end A287729.P5596410160018438199

/-! ## A287729.P17065654454563340199

`A287896((n+1)/and(n+1, -(n+1)))-A287730(n+1)`
-/

namespace A287729.P17065654454563340199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287896 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (Int.land (n + 1 : ℤ) (-(n + 1 : ℤ)) : ℚ))).toNat - A287730 (n + 1)

end

end A287729.P17065654454563340199

/-! ## A287729.P14257661585325049696

`A288002(n+1)+A288003(n+1)-A287730(n+1)`
-/

namespace A287729.P14257661585325049696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288002 (n + 1) + (A288003 (n + 1) - A287730 (n + 1))

end

end A287729.P14257661585325049696

/-! ## A287729.P5711558437718608167

`A002487(n+1)-A287824(n+1)/A001511(n+1)`
-/

namespace A287729.P5711558437718608167
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002487 (n + 1) : ℚ) - (A287824 (n + 1) : ℚ) / (A001511 (n + 1) : ℚ)

end

end A287729.P5711558437718608167

/-! ## A287729.P10351811391227569318

`(A287896(n+1)-A287824(n+1))/A001511(n+1)`
-/

namespace A287729.P10351811391227569318
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A287896 (n + 1) - A287824 (n + 1) : ℚ) / (A001511 (n + 1) : ℚ)

end

end A287729.P10351811391227569318

/-! ## A287729.P3383756640062260221

`A002487(n+1)*A287823(n+1)/A287896(n+1)`
-/

namespace A287729.P3383756640062260221
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002487 (n + 1) * A287823 (n + 1) : ℚ) / (A287896 (n + 1) : ℚ)

end

end A287729.P3383756640062260221

/-! ## A287729.P6280042109310474102

`A284556(n+1)+A000360(n)-A287730(n+1)`
-/

namespace A287729.P6280042109310474102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284556 (n + 1) + (A000360 n - A287730 (n + 1))

end

end A287729.P6280042109310474102

/-! ## A287729.P7070381162428869329

`A287896(n+2)-(A288003(n+2)+A287730(n+1))`
-/

namespace A287729.P7070381162428869329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287896 (n + 2) - (A288003 (n + 2) + A287730 (n + 1))

end

end A287729.P7070381162428869329

/-! ## A287729.P8416287506266466118

`A287730(A337909(n+2))`
-/

namespace A287729.P8416287506266466118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287730 (A337909 (n + 2)).toNat

end

end A287729.P8416287506266466118

/-! ## A287729.P14079362490779779573

`A287730(2*(n+1))`
-/

namespace A287729.P14079362490779779573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287730 (2 * (n + 1))

end

end A287729.P14079362490779779573

/-! ## A287729.P10984502029107383253

`A287731(2*(n+1))-A287732(n+1)`
-/

namespace A287729.P10984502029107383253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287731 (2 * (n + 1)) - A287732 (n + 1)

end

end A287729.P10984502029107383253

/-! ## A287729.P11430413102038551103

`A287824(2*(n+1))-A287823(n+1)`
-/

namespace A287729.P11430413102038551103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287824 (2 * (n + 1)) - A287823 (n + 1)

end

end A287729.P11430413102038551103

/-! ## A287729.P1342331937607777314

`A287824(2*(n+1))/(A001511(n+1)+1)`
-/

namespace A287729.P1342331937607777314
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A287824 (2 * (n + 1)) : ℚ) / (A001511 (n + 1) + 1 : ℚ)

end

end A287729.P1342331937607777314

/-! ## A287729.P15622008667050420745

`A287824(2*(n+1))/(A007814(2*(n+1))+1)`
-/

namespace A287729.P15622008667050420745
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A287824 (2 * (n + 1)) : ℚ) / (A007814 (2 * (n + 1)) + 1 : ℚ)

end

end A287729.P15622008667050420745

/-! ## A287729.P10806252753804316007

`A287824(2*(n+1))/A287896(2*(n+1))*A002487(n+1)`
-/

namespace A287729.P10806252753804316007
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A287824 (2 * (n + 1)) : ℚ) / (A287896 (2 * (n + 1)) : ℚ) * (A002487 (n + 1) : ℚ)

end

end A287729.P10806252753804316007

/-!
# A287730: The s-fusc function s(n) = a(n): a(1) = 0, a(2n) = A287729(n), a(2n+1) = A287729(n) + A287729(n+1).

The programs for A287730, there is no canonical definition to state claims against.
-/

/-! ## A287730.P622565612819030226

`A002487(n+1)-A287729(n+1)`
-/

namespace A287730.P622565612819030226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (n + 1) - A287729 (n + 1)

end

end A287730.P622565612819030226

/-! ## A287730.P8217448302711038391

`A287729(n+1)-A213369(n+1)`
-/

namespace A287730.P8217448302711038391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287729 (n + 1) - A213369 (n + 1)

end

end A287730.P8217448302711038391

/-! ## A287730.P6095990506127027884

`A287824(n+1)/A001511(n+1)`
-/

namespace A287730.P6095990506127027884
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A287824 (n + 1) : ℚ) / (A001511 (n + 1) : ℚ)

end

end A287730.P6095990506127027884

/-! ## A287730.P17655418591776330006

`A287824(n+1)/(A007814(n+1)+1)`
-/

namespace A287730.P17655418591776330006
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A287824 (n + 1) : ℚ) / (A007814 (n + 1) + 1 : ℚ)

end

end A287730.P17655418591776330006

/-! ## A287730.P7719282336254128900

`A287896((n+1)/and(n+1, -(n+1)))-A287729(n+1)`
-/

namespace A287730.P7719282336254128900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287896 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (Int.land (n + 1 : ℤ) (-(n + 1 : ℤ)) : ℚ))).toNat - A287729 (n + 1)

end

end A287730.P7719282336254128900

/-! ## A287730.P15779844301586066002

`A288002(n+1)+A288003(n+1)-A287729(n+1)`
-/

namespace A287730.P15779844301586066002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288002 (n + 1) + (A288003 (n + 1) - A287729 (n + 1))

end

end A287730.P15779844301586066002

/-! ## A287730.P12346033359240300562

`A002487(n+1)-A287823(n+1)/A001511(n+1)`
-/

namespace A287730.P12346033359240300562
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002487 (n + 1) : ℚ) - (A287823 (n + 1) : ℚ) / (A001511 (n + 1) : ℚ)

end

end A287730.P12346033359240300562

/-! ## A287730.P8911543822469310733

`(A287896(n+1)-A287823(n+1))/A001511(n+1)`
-/

namespace A287730.P8911543822469310733
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A287896 (n + 1) - A287823 (n + 1) : ℚ) / (A001511 (n + 1) : ℚ)

end

end A287730.P8911543822469310733

/-! ## A287730.P15211564924841106620

`A002487(n+1)*A287824(n+1)/A287896(n+1)`
-/

namespace A287730.P15211564924841106620
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002487 (n + 1) * A287824 (n + 1) : ℚ) / (A287896 (n + 1) : ℚ)

end

end A287730.P15211564924841106620

/-! ## A287730.P16924110304048549548

`A284556(n+1)+A000360(n)-A287729(n+1)`
-/

namespace A287730.P16924110304048549548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284556 (n + 1) + (A000360 n - A287729 (n + 1))

end

end A287730.P16924110304048549548

/-! ## A287730.P15646531440417261052

`A287729(A337909(n+2))`
-/

namespace A287730.P15646531440417261052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287729 (A337909 (n + 2)).toNat

end

end A287730.P15646531440417261052

/-! ## A287730.P16811975331348466266

`A287729(A054429(n+1)+1)`
-/

namespace A287730.P16811975331348466266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287729 (A054429 (n + 1) + 1).toNat

end

end A287730.P16811975331348466266

/-! ## A287730.P18355887155496708689

`A287729(2*(n+1))`
-/

namespace A287730.P18355887155496708689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287729 (2 * (n + 1))

end

end A287730.P18355887155496708689

/-! ## A287730.P2873807123638383477

`A287732(2*(n+1))-A287731(n+1)`
-/

namespace A287730.P2873807123638383477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287732 (2 * (n + 1)) - A287731 (n + 1)

end

end A287730.P2873807123638383477

/-! ## A287730.P11039069785004242387

`A287823(2*(n+1))-A287824(n+1)`
-/

namespace A287730.P11039069785004242387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287823 (2 * (n + 1)) - A287824 (n + 1)

end

end A287730.P11039069785004242387

/-! ## A287730.P997242738324167924

`A287823(2*(n+1))/(A001511(n+1)+1)`
-/

namespace A287730.P997242738324167924
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A287823 (2 * (n + 1)) : ℚ) / (A001511 (n + 1) + 1 : ℚ)

end

end A287730.P997242738324167924

/-! ## A287730.P12435824879342214715

`A287732(2*(n+1))-A287823(2*n+1)`
-/

namespace A287730.P12435824879342214715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287732 (2 * (n + 1)) - A287823 (2 * n + 1)

end

end A287730.P12435824879342214715

/-! ## A287730.P8242857211323616851

`A287823(2*(n+1))/A287896(2*(n+1))*A002487(n+1)`
-/

namespace A287730.P8242857211323616851
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A287823 (2 * (n + 1)) : ℚ) / (A287896 (2 * (n + 1)) : ℚ) * (A002487 (n + 1) : ℚ)

end

end A287730.P8242857211323616851

/-!
# A287731: Bisection of A287729.

The programs for A287731, there is no canonical definition to state claims against.
-/

/-! ## A287731.P14127378414155485585

`A007306(n+1)-A287732(n+1)`
-/

namespace A287731.P14127378414155485585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007306 (n + 1) - A287732 (n + 1)

end

end A287731.P14127378414155485585

/-! ## A287731.P15234318031590875812

`A287729(2*n+1)`
-/

namespace A287731.P15234318031590875812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287729 (2 * n + 1)

end

end A287731.P15234318031590875812

/-! ## A287731.P17837078495986499789

`A002487(n+1)+A002487(n)-A287732(n+1)`
-/

namespace A287731.P17837078495986499789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (n + 1) + (A002487 n - A287732 (n + 1))

end

end A287731.P17837078495986499789

/-! ## A287731.P12621284293866289940

`A287823(Δ[n²])`
-/

namespace A287731.P12621284293866289940
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287823 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A287731.P12621284293866289940

/-! ## A287731.P1038431861763757642

`A287823(2*n+1)%(n+2)`
-/

namespace A287731.P1038431861763757642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A287823 (2 * n + 1)) (n + 2 : ℤ)

end

end A287731.P1038431861763757642

/-! ## A287731.P12140377295110552940

`A287732(n+1)+A213369(2*n+1)`
-/

namespace A287731.P12140377295110552940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287732 (n + 1) + A213369 (2 * n + 1)

end

end A287731.P12140377295110552940

/-! ## A287731.P2909071969768785013

`A002487(2*n+1)-A287732(n+1)`
-/

namespace A287731.P2909071969768785013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (2 * n + 1) - A287732 (n + 1)

end

end A287731.P2909071969768785013

/-! ## A287731.P9558138418802125562

`A007306(n+1)-A287730(2*n+1)`
-/

namespace A287731.P9558138418802125562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007306 (n + 1) - A287730 (2 * n + 1)

end

end A287731.P9558138418802125562

/-! ## A287731.P15213492850054577411

`A007306(n+1)-A287824(2*n+1)`
-/

namespace A287731.P15213492850054577411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007306 (n + 1) - A287824 (2 * n + 1)

end

end A287731.P15213492850054577411

/-! ## A287731.P6113100818001331748

`A287732(2*(n+1))-A287730(n+1)`
-/

namespace A287731.P6113100818001331748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287732 (2 * (n + 1)) - A287730 (n + 1)

end

end A287731.P6113100818001331748

/-! ## A287731.P15863904201868339032

`A287823(2*n+1)+A019590(n+3)`
-/

namespace A287731.P15863904201868339032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287823 (2 * n + 1) + A019590 (n + 3)

end

end A287731.P15863904201868339032

/-! ## A287731.P16406676527694978646

`A127971(2*n)-A287730(2*n+1)`
-/

namespace A287731.P16406676527694978646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127971 (2 * n) - A287730 (2 * n + 1)

end

end A287731.P16406676527694978646

/-! ## A287731.P2651854111990153873

`A287823(2*n+1)+A036987(2*(n+1))`
-/

namespace A287731.P2651854111990153873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287823 (2 * n + 1) + A036987 (2 * (n + 1))

end

end A287731.P2651854111990153873

/-! ## A287731.P3112518189630255801

`A287823(2*n+1)+A154271(2*(n+1))`
-/

namespace A287731.P3112518189630255801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287823 (2 * n + 1) + A154271 (2 * (n + 1))

end

end A287731.P3112518189630255801

/-! ## A287731.P14336398763178438318

`A287823(2*n+1)+A154272(2*(n+1))`
-/

namespace A287731.P14336398763178438318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287823 (2 * n + 1) + A154272 (2 * (n + 1))

end

end A287731.P14336398763178438318

/-! ## A287731.P9959725446811849372

`A287730(2*n+1)+A213369(2*n+1)`
-/

namespace A287731.P9959725446811849372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287730 (2 * n + 1) + A213369 (2 * n + 1)

end

end A287731.P9959725446811849372

/-! ## A287731.P11340730253125305305

`A287824(2*n+1)+A213369(2*n+1)`
-/

namespace A287731.P11340730253125305305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287824 (2 * n + 1) + A213369 (2 * n + 1)

end

end A287731.P11340730253125305305

/-! ## A287731.P8076311259370442324

`A002487(2*n+1)-A287730(2*n+1)`
-/

namespace A287731.P8076311259370442324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (2 * n + 1) - A287730 (2 * n + 1)

end

end A287731.P8076311259370442324

/-! ## A287731.P4748407053394477533

`A002487(2*n+1)-A287824(2*n+1)`
-/

namespace A287731.P4748407053394477533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (2 * n + 1) - A287824 (2 * n + 1)

end

end A287731.P4748407053394477533

/-! ## A287731.P7747297433804780635

`A287896(2*n+1)-A287730(2*n+1)`
-/

namespace A287731.P7747297433804780635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287896 (2 * n + 1) - A287730 (2 * n + 1)

end

end A287731.P7747297433804780635

/-!
# A287732: Bisection of A287730.

The programs for A287732, there is no canonical definition to state claims against.
-/

/-! ## A287732.P9230522613793592317

`A287730(2*n+1)`
-/

namespace A287732.P9230522613793592317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287730 (2 * n + 1)

end

end A287732.P9230522613793592317

/-! ## A287732.P13047819834253815274

`A007306(n+1)-A287731(n+1)`
-/

namespace A287732.P13047819834253815274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007306 (n + 1) - A287731 (n + 1)

end

end A287732.P13047819834253815274

/-! ## A287732.P9379746406035263706

`A002487(n+1)+A002487(n)-A287731(n+1)`
-/

namespace A287732.P9379746406035263706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (n + 1) + (A002487 n - A287731 (n + 1))

end

end A287732.P9379746406035263706

/-! ## A287732.P15042953602901876134

`A287824(Δ[n²])`
-/

namespace A287732.P15042953602901876134
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287824 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A287732.P15042953602901876134

/-! ## A287732.P10029564354058668015

`A002487(2*n+1)-A287731(n+1)`
-/

namespace A287732.P10029564354058668015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (2 * n + 1) - A287731 (n + 1)

end

end A287732.P10029564354058668015

/-! ## A287732.P8035237088001060016

`A007306(n+1)-A287729(2*n+1)`
-/

namespace A287732.P8035237088001060016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007306 (n + 1) - A287729 (2 * n + 1)

end

end A287732.P8035237088001060016

/-! ## A287732.P17966825825743516917

`A007306(n+1)-A287823(2*n+1)`
-/

namespace A287732.P17966825825743516917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007306 (n + 1) - A287823 (2 * n + 1)

end

end A287732.P17966825825743516917

/-! ## A287732.P13357282690140835194

`A287731(n+1)-A213369(2*n+1)`
-/

namespace A287732.P13357282690140835194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287731 (n + 1) - A213369 (2 * n + 1)

end

end A287732.P13357282690140835194

/-! ## A287732.P1818943814640703668

`A287731(2*(n+1))-A287729(n+1)`
-/

namespace A287732.P1818943814640703668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287731 (2 * (n + 1)) - A287729 (n + 1)

end

end A287732.P1818943814640703668

/-! ## A287732.P18136616488275977874

`A287824(2*n+1)+A019590(n+3)`
-/

namespace A287732.P18136616488275977874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287824 (2 * n + 1) + A019590 (n + 3)

end

end A287732.P18136616488275977874

/-! ## A287732.P10207468528733990565

`A287824(2*n+1)+A007814(2*n+1)`
-/

namespace A287732.P10207468528733990565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287824 (2 * n + 1) + A007814 (2 * n + 1)

end

end A287732.P10207468528733990565

/-! ## A287732.P1932931106541945911

`A287824(2*n+1)+A036987(2*(n+1))`
-/

namespace A287732.P1932931106541945911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287824 (2 * n + 1) + A036987 (2 * (n + 1))

end

end A287732.P1932931106541945911

/-! ## A287732.P2291577377511928808

`A287824(2*n+1)+A154271(2*(n+1))`
-/

namespace A287732.P2291577377511928808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287824 (2 * n + 1) + A154271 (2 * (n + 1))

end

end A287732.P2291577377511928808

/-! ## A287732.P975858105014481444

`A287824(2*n+1)+A154272(2*(n+1))`
-/

namespace A287732.P975858105014481444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287824 (2 * n + 1) + A154272 (2 * (n + 1))

end

end A287732.P975858105014481444

/-! ## A287732.P15976393911620267667

`A002487(2*n+1)-A287729(2*n+1)`
-/

namespace A287732.P15976393911620267667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (2 * n + 1) - A287729 (2 * n + 1)

end

end A287732.P15976393911620267667

/-! ## A287732.P6655784766048287639

`A002487(2*n+1)-A287823(2*n+1)`
-/

namespace A287732.P6655784766048287639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (2 * n + 1) - A287823 (2 * n + 1)

end

end A287732.P6655784766048287639

/-! ## A287732.P10661215574568012276

`A287729(2*n+1)-A213369(2*n+1)`
-/

namespace A287732.P10661215574568012276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287729 (2 * n + 1) - A213369 (2 * n + 1)

end

end A287732.P10661215574568012276

/-! ## A287732.P8719697681524135644

`A287823(2*n+1)-A213369(2*n+1)`
-/

namespace A287732.P8719697681524135644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287823 (2 * n + 1) - A213369 (2 * n + 1)

end

end A287732.P8719697681524135644

/-! ## A287732.P18080310522467120279

`A287896(2*n+1)-A287729(2*n+1)`
-/

namespace A287732.P18080310522467120279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287896 (2 * n + 1) - A287729 (2 * n + 1)

end

end A287732.P18080310522467120279

/-! ## A287732.P208575266609764378

`A287729(A337909(2*(n+1)))`
-/

namespace A287732.P208575266609764378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287729 (A337909 (2 * (n + 1))).toNat

end

end A287732.P208575266609764378

/-!
# A287733: First differences of A069497.

The programs for A287733, the canonical program `A287733.P12229268911064257901` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A287733 has offset 1).

The definition of A287733 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A287733.P12229268911064257901

`Δ[C(and(3*(n+1), -3), 2)]`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A287733

/-- `Δ[C(and(3*(n+1), -3), 2)]` -/
def P12229268911064257901.Spec : Prop :=
  ∀ n, P12229268911064257901.a n = A287733 (n + 1)

theorem P12229268911064257901.correct : P12229268911064257901.Spec := by
  intro n
  simp only [A287733, Nat.add_sub_cancel]

end A287733

/-! ## A287733.P18394914465959886908

`6*A287746(n+1)`
-/

namespace A287733.P18394914465959886908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A287746 (n + 1)

end

end A287733.P18394914465959886908

namespace A287733

/-- `6*A287746(n+1)` -/
def P18394914465959886908.Spec : Prop :=
  ∀ n, P18394914465959886908.a n = A287733 (n + 1)

end A287733

/-! ## A287733.P16944523999015571080

`Δ[A000217(and(2, n)+3*n)]`
-/

namespace A287733.P16944523999015571080
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (Nat.land 2 n + 3 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A287733.P16944523999015571080

namespace A287733

/-- `Δ[A000217(and(2, n)+3*n)]` -/
def P16944523999015571080.Spec : Prop :=
  ∀ n, P16944523999015571080.a n = A287733 (n + 1)

end A287733

/-! ## A287733.P15089497427446840431

`Δ[C(∑[6-a(n-2)], 2)]` with `a(0)=1, a(1)=3`
-/

namespace A287733.P15089497427446840431
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n f2 =>
  6 - f2 (n - 2)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (∑ j ∈ Finset.range (n + 1), f2 j).toNat 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A287733.P15089497427446840431

namespace A287733

/-- `Δ[C(∑[6-a(n-2)], 2)]` -/
def P15089497427446840431.Spec : Prop :=
  ∀ n, P15089497427446840431.a n = A287733 (n + 1)

end A287733

/-! ## A287733.P16371305047379828737

`3*Δ[∑[n]+∑[2-a(n-2)]²]` with `a(0)=0, a(1)=1`
-/

namespace A287733.P16371305047379828737
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n f3 =>
  2 - f3 (n - 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) + (∑ j ∈ Finset.range (n + 1), f3 j) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (f1 (n + 1) - f1 n)

end

end A287733.P16371305047379828737

namespace A287733

/-- `3*Δ[∑[n]+∑[2-a(n-2)]²]` -/
def P16371305047379828737.Spec : Prop :=
  ∀ n, P16371305047379828737.a n = A287733 (n + 1)

end A287733

/-! ## A287733.P12231795275364642725

`Δ[A069497(n+1)]`
-/

namespace A287733.P12231795275364642725
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069497 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A287733.P12231795275364642725

namespace A287733

/-- `Δ[A069497(n+1)]` -/
def P12231795275364642725.Spec : Prop :=
  ∀ n, P12231795275364642725.a n = A287733 (n + 1)

end A287733

/-! ## A287733.P2362971419916823769

`Δ[3*A193828(n)]`
-/

namespace A287733.P2362971419916823769
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A193828 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A287733.P2362971419916823769

namespace A287733

/-- `Δ[3*A193828(n)]` -/
def P2362971419916823769.Spec : Prop :=
  ∀ n, P2362971419916823769.a n = A287733 (n + 1)

end A287733

/-! ## A287733.P11758034938490878806

`Δ[6*A154293(n+1)]`
-/

namespace A287733.P11758034938490878806
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A154293 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A287733.P11758034938490878806

namespace A287733

/-- `Δ[6*A154293(n+1)]` -/
def P11758034938490878806.Spec : Prop :=
  ∀ n, P11758034938490878806.a n = A287733 (n + 1)

end A287733

/-! ## A287733.P3763826360778293735

`Δ[A000217(A108752(n+1))]`
-/

namespace A287733.P3763826360778293735
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A108752 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A287733.P3763826360778293735

namespace A287733

/-- `Δ[A000217(A108752(n+1))]` -/
def P3763826360778293735.Spec : Prop :=
  ∀ n, P3763826360778293735.a n = A287733 (n + 1)

end A287733

/-! ## A287733.P5741040148978285433

`A069497(n+2)-A069497(n+1)`
-/

namespace A287733.P5741040148978285433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069497 (n + 2) - A069497 (n + 1)

end

end A287733.P5741040148978285433

namespace A287733

/-- `A069497(n+2)-A069497(n+1)` -/
def P5741040148978285433.Spec : Prop :=
  ∀ n, P5741040148978285433.a n = A287733 (n + 1)

end A287733

/-! ## A287733.P709016251237048137

`Δ[A014494(A047260(n+1))]`
-/

namespace A287733.P709016251237048137
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014494 (A047260 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A287733.P709016251237048137

namespace A287733

/-- `Δ[A014494(A047260(n+1))]` -/
def P709016251237048137.Spec : Prop :=
  ∀ n, P709016251237048137.a n = A287733 (n + 1)

end A287733

/-! ## A287733.P2108547113454657294

`Δ[A117748(A047401(n+2))]`
-/

namespace A287733.P2108547113454657294
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117748 (A047401 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A287733.P2108547113454657294

namespace A287733

/-- `Δ[A117748(A047401(n+2))]` -/
def P2108547113454657294.Spec : Prop :=
  ∀ n, P2108547113454657294.a n = A287733 (n + 1)

end A287733

/-! ## A287733.P10953544188179836800

`A008458(A287746(n+1))`
-/

namespace A287733.P10953544188179836800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 (A287746 (n + 1)).toNat

end

end A287733.P10953544188179836800

namespace A287733

/-- `A008458(A287746(n+1))` -/
def P10953544188179836800.Spec : Prop :=
  ∀ n, P10953544188179836800.a n = A287733 (n + 1)

end A287733

/-! ## A287733.P2627133966583259418

`Δ[A000124(and(2, n)+3*n)]`
-/

namespace A287733.P2627133966583259418
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 (Nat.land 2 n + 3 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A287733.P2627133966583259418

namespace A287733

/-- `Δ[A000124(and(2, n)+3*n)]` -/
def P2627133966583259418.Spec : Prop :=
  ∀ n, P2627133966583259418.a n = A287733 (n + 1)

end A287733

/-! ## A287733.P2000785922672091915

`A008486(Δ[A193828(n)])`
-/

namespace A287733.P2000785922672091915
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193828 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 (f1 (n + 1) - f1 n).toNat

end

end A287733.P2000785922672091915

namespace A287733

/-- `A008486(Δ[A193828(n)])` -/
def P2000785922672091915.Spec : Prop :=
  ∀ n, P2000785922672091915.a n = A287733 (n + 1)

end A287733

/-! ## A287733.P10338868420140578764

`A008486(A193828(n+1)-A193828(n))`
-/

namespace A287733.P10338868420140578764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 (A193828 (n + 1) - A193828 n).toNat

end

end A287733.P10338868420140578764

namespace A287733

/-- `A008486(A193828(n+1)-A193828(n))` -/
def P10338868420140578764.Spec : Prop :=
  ∀ n, P10338868420140578764.a n = A287733 (n + 1)

end A287733

/-! ## A287733.P16346498660117997536

`A008585(A193828(n+1)-A193828(n))`
-/

namespace A287733.P16346498660117997536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008585 (A193828 (n + 1) - A193828 n).toNat

end

end A287733.P16346498660117997536

namespace A287733

/-- `A008585(A193828(n+1)-A193828(n))` -/
def P16346498660117997536.Spec : Prop :=
  ∀ n, P16346498660117997536.a n = A287733 (n + 1)

end A287733

/-! ## A287733.P11083344759546901148

`Δ[A124093(A016945(n)-and(2, n+2)²+1)]`
-/

namespace A287733.P11083344759546901148
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124093 (A016945 n - (Nat.land 2 (n + 2) ^ 2 : ℤ) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A287733.P11083344759546901148

namespace A287733

/-- `Δ[A124093(A016945(n)-and(2, n+2)²+1)]` -/
def P11083344759546901148.Spec : Prop :=
  ∀ n, P11083344759546901148.a n = A287733 (n + 1)

end A287733

/-!
# A287734: Binary representation of the diagonal from the corner to the origin of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 334", based on the 5-celled von Neumann neighborhood.

The programs for A287734, there is no canonical definition to state claims against.
-/

/-! ## A287734.P14087405327511624526

`A289404(2*(n+1))-A289400(n+1)`
-/

namespace A287734.P14087405327511624526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289404 (2 * (n + 1)) - A289400 (n + 1)

end

end A287734.P14087405327511624526

/-! ## A287734.P14583281646927461007

`A007088(A287736(n))`
-/

namespace A287734.P14583281646927461007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A287736 n).toNat

end

end A287734.P14583281646927461007

/-! ## A287734.P8642558732069489675

`A185544(2*A287736(n))`
-/

namespace A287734.P8642558732069489675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A287736 n).toNat

end

end A287734.P8642558732069489675

/-! ## A287734.P1923001545707456456

`A007088(∑[2^(n+1)-Δ[A289402(n)]])`
-/

namespace A287734.P1923001545707456456
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289402 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ (n + 1) : ℤ) - (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A287734.P1923001545707456456

/-! ## A287734.P3620968990664193081

`A185544(2*∑[2^(n+1)-Δ[A289402(n)]])`
-/

namespace A287734.P3620968990664193081
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289402 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ (n + 1) : ℤ) - (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A287734.P3620968990664193081

/-!
# A287735: Binary representation of the diagonal from the origin to the corner of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 334", based on the 5-celled von Neumann neighborhood.

The programs for A287735, there is no canonical definition to state claims against.
-/

/-! ## A287735.P14338046511051435261

`A007088(A287737(n))`
-/

namespace A287735.P14338046511051435261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A287737 n).toNat

end

end A287735.P14338046511051435261

/-! ## A287735.P10504020895306681387

`A185544(2*A287737(n))`
-/

namespace A287735.P10504020895306681387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A287737 n).toNat

end

end A287735.P10504020895306681387

/-! ## A287735.P6210067001213026697

`A288436(A004873(n+1))`
-/

namespace A287735.P6210067001213026697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288436 (A004873 (n + 1)).toNat

end

end A287735.P6210067001213026697

/-! ## A287735.P11745359644108667664

`A288436(A004884(n+1))`
-/

namespace A287735.P11745359644108667664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288436 (A004884 (n + 1)).toNat

end

end A287735.P11745359644108667664

/-! ## A287735.P13812244783047924964

`A288436(A004895(n+1))`
-/

namespace A287735.P13812244783047924964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288436 (A004895 (n + 1)).toNat

end

end A287735.P13812244783047924964

/-!
# A287736: Decimal representation of the diagonal from the corner to the origin of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 334", based on the 5-celled von Neumann neighborhood.

The programs for A287736, there is no canonical definition to state claims against.
-/

/-! ## A287736.P18092083680814392067

`∑[2^(n+1)-Δ[A289402(n)]]`
-/

namespace A287736.P18092083680814392067
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289402 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ (n + 1) : ℤ) - (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A287736.P18092083680814392067

/-! ## A287736.P8696304581516298066

`A020737(n)-(A289402(n+1)+2)`
-/

namespace A287736.P8696304581516298066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020737 n - (A289402 (n + 1) + 2)

end

end A287736.P8696304581516298066

/-! ## A287736.P11643960849538940142

`A255047(n+2)-A289402(n+1)`
-/

namespace A287736.P11643960849538940142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255047 (n + 2) - A289402 (n + 1)

end

end A287736.P11643960849538940142

/-! ## A287736.P9467297591263569735

`A255047(C(n+1, n)+1)%A289402(n+1)`
-/

namespace A287736.P9467297591263569735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A255047 (Nat.choose (n + 1) n + 1)) (A289402 (n + 1))

end

end A287736.P9467297591263569735

/-! ## A287736.P18412250665827564857

`A255047(A028310(n)+2)%A289402(n+1)`
-/

namespace A287736.P18412250665827564857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A255047 (A028310 n + 2).toNat) (A289402 (n + 1))

end

end A287736.P18412250665827564857

/-! ## A287736.P11780925595610363672

`or(A286865(2*n), A289402(n+1))-A289402(n+1)`
-/

namespace A287736.P11780925595610363672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A286865 (2 * n)) (A289402 (n + 1)) - A289402 (n + 1)

end

end A287736.P11780925595610363672

/-!
# A287737: Decimal representation of the diagonal from the origin to the corner of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 334", based on the 5-celled von Neumann neighborhood.

The programs for A287737, there is no canonical definition to state claims against.
-/

/-! ## A287737.P11411682732970854959

`A084964(A000079(n+2)-A289403(n+1))`
-/

namespace A287737.P11411682732970854959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084964 (A000079 (n + 2) - A289403 (n + 1)).toNat

end

end A287737.P11411682732970854959

/-! ## A287737.P3623254548874130045

`A288438(A004895(n+1))`
-/

namespace A287737.P3623254548874130045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288438 (A004895 (n + 1)).toNat

end

end A287737.P3623254548874130045

/-! ## A287737.P15839753434847089553

`A288438(A004906(n+1))`
-/

namespace A287737.P15839753434847089553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288438 (A004906 (n + 1)).toNat

end

end A287737.P15839753434847089553

/-! ## A287737.P14711066663724587938

`A288438(A004917(n+1))`
-/

namespace A287737.P14711066663724587938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288438 (A004917 (n + 1)).toNat

end

end A287737.P14711066663724587938

/-! ## A287737.P11001730174137566461

`A288438(n)%(A003001(n)+5)`
-/

namespace A287737.P11001730174137566461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A288438 n) (A003001 n + 5)

end

end A287737.P11001730174137566461

/-!
# A287738: Binary representation of the diagonal from the corner to the origin of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 339", based on the 5-celled von Neumann neighborhood.

The programs for A287738, there is no canonical definition to state claims against.
-/

/-! ## A287738.P11939624009948296759

`A007088(A287740(n))`
-/

namespace A287738.P11939624009948296759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A287740 n).toNat

end

end A287738.P11939624009948296759

/-! ## A287738.P16281785160344842044

`A185544(2*A287740(n))`
-/

namespace A287738.P16281785160344842044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A287740 n).toNat

end

end A287738.P16281785160344842044

/-!
# A287739: Binary representation of the diagonal from the origin to the corner of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 339", based on the 5-celled von Neumann neighborhood.

The programs for A287739, there is no canonical definition to state claims against.
-/

/-! ## A287739.P4168921276734525974

`A007088(A287741(n))`
-/

namespace A287739.P4168921276734525974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A287741 n).toNat

end

end A287739.P4168921276734525974

/-! ## A287739.P7686243639030346445

`A185544(2*A287741(n))`
-/

namespace A287739.P7686243639030346445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A287741 n).toNat

end

end A287739.P7686243639030346445

/-! ## A287739.P10227547676784619720

`A185544(A287741(n)+A287741(n))`
-/

namespace A287739.P10227547676784619720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (A287741 n + A287741 n).toNat

end

end A287739.P10227547676784619720

/-!
# A287740: Decimal representation of the diagonal from the corner to the origin of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 339", based on the 5-celled von Neumann neighborhood.

The programs for A287740, there is no canonical definition to state claims against.
-/

/-! ## A287740.P12434908488380506584

`or(A049084(A285645(n)), A285653(n))`
-/

namespace A287740.P12434908488380506584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A049084 (A285645 n).toNat) (A285653 n)

end

end A287740.P12434908488380506584

/-! ## A287740.P10673014972593371106

`or(A049084(A286700(n)), A285653(n))`
-/

namespace A287740.P10673014972593371106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A049084 (A286700 n).toNat) (A285653 n)

end

end A287740.P10673014972593371106

/-! ## A287740.P8304694931360414385

`xor(A288762(n), A347438(A199335(3*n+2)))`
-/

namespace A287740.P8304694931360414385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A288762 n) (A347438 (A199335 (3 * n + 2)).toNat)

end

end A287740.P8304694931360414385

/-! ## A287740.P3982803324045857831

`A352446(A287208(n+1))+A287197(n)`
-/

namespace A287740.P3982803324045857831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352446 (A287208 (n + 1)).toNat + A287197 n

end

end A287740.P3982803324045857831

/-!
# A287742: Binary representation of the diagonal from the corner to the origin of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 342", based on the 5-celled von Neumann neighborhood.

The programs for A287742, the canonical program `A287742.P2808893076939197849` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A287742 has offset 0).

The definition of A287742 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 200 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A287742.P13986152439432309163

`A056830(∑[log2(gcd(2, n))])`
-/

namespace A287742.P13986152439432309163
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (Nat.gcd 2 n : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056830 (SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A287742.P13986152439432309163

namespace A287742

/-- `A056830(∑[log2(gcd(2, n))])` -/
def P13986152439432309163.Spec : Prop :=
  ∀ n, P13986152439432309163.a n = A287742 n

end A287742

/-! ## A287742.P5615201663142296158

`A056830(∑[char[2*n]])`
-/

namespace A287742.P5615201663142296158
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056830 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A287742.P5615201663142296158

namespace A287742

/-- `A056830(∑[char[2*n]])` -/
def P5615201663142296158.Spec : Prop :=
  ∀ n, P5615201663142296158.a n = A287742 n

end A287742

/-! ## A287742.P2808893076939197849

`A289404(n)-a(n-2)` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A287742

/-- `A289404(n)-a(n-2)` -/
def P2808893076939197849.Spec : Prop :=
  ∀ n, P2808893076939197849.a n = A287742 n

theorem P2808893076939197849.correct : P2808893076939197849.Spec := by
  intro n
  simp only [A287742]

end A287742

/-! ## A287742.P10278591018325899724

`A006519(2*n+1)*A056830(ceil((n+1)/2))`
-/

namespace A287742.P10278591018325899724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006519 (2 * n + 1) * A056830 ⌈(n + 1 : ℚ) / 2⌉.toNat

end

end A287742.P10278591018325899724

namespace A287742

/-- `A006519(2*n+1)*A056830(ceil((n+1)/2))` -/
def P10278591018325899724.Spec : Prop :=
  ∀ n, P10278591018325899724.a n = A287742 n

end A287742

/-! ## A287742.P14678913952317889768

`lcm(A033999(n), A056830(A008619(n)))`
-/

namespace A287742.P14678913952317889768
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A056830 (A008619 n).toNat)

end

end A287742.P14678913952317889768

namespace A287742

/-- `lcm(A033999(n), A056830(A008619(n)))` -/
def P14678913952317889768.Spec : Prop :=
  ∀ n, (P14678913952317889768.a n : ℤ) = A287742 n

end A287742

/-! ## A287742.P10237628354019750486

`or(A000007(n), A056830(A008619(n)))`
-/

namespace A287742.P10237628354019750486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A056830 (A008619 n).toNat)

end

end A287742.P10237628354019750486

namespace A287742

/-- `or(A000007(n), A056830(A008619(n)))` -/
def P10237628354019750486.Spec : Prop :=
  ∀ n, P10237628354019750486.a n = A287742 n

end A287742

/-! ## A287742.P2170516123017872499

`round(A305753(n+5)/11)`
-/

namespace A287742.P2170516123017872499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A305753 (n + 5) : ℚ) / 11)

end

end A287742.P2170516123017872499

namespace A287742

/-- `round(A305753(n+5)/11)` -/
def P2170516123017872499.Spec : Prop :=
  ∀ n, P2170516123017872499.a n = A287742 n

end A287742

/-! ## A287742.P4067674640284843364

`A056830(A008619(n))%A229455(n+1)`
-/

namespace A287742.P4067674640284843364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A056830 (A008619 n).toNat) (A229455 (n + 1))

end

end A287742.P4067674640284843364

namespace A287742

/-- `A056830(A008619(n))%A229455(n+1)` -/
def P4067674640284843364.Spec : Prop :=
  ∀ n, P4067674640284843364.a n = A287742 n

end A287742

/-!
# A287743: Binary representation of the diagonal from the origin to the corner of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 342", based on the 5-celled von Neumann neighborhood.

The programs for A287743, the canonical program `A287743.P4852823348231064615` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A287743 has offset 0).

The definition of A287743 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A287743.P4852823348231064615

`lcm(A286508(n), A287742(n))`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A287743

/-- `lcm(A286508(n), A287742(n))` -/
def P4852823348231064615.Spec : Prop :=
  ∀ n, (P4852823348231064615.a n : ℤ) = A287743 n

theorem P4852823348231064615.correct : P4852823348231064615.Spec := by
  intro n
  simp only [A287743]

end A287743

/-! ## A287743.P14154823825527543549

`A286508(n)*A305989(A287744(n))`
-/

namespace A287743.P14154823825527543549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286508 n * A305989 (A287744 n).toNat

end

end A287743.P14154823825527543549

namespace A287743

/-- `A286508(n)*A305989(A287744(n))` -/
def P14154823825527543549.Spec : Prop :=
  ∀ n, P14154823825527543549.a n = A287743 n

end A287743

/-! ## A287743.P320050504077769342

`A007088(A287745(n))`
-/

namespace A287743.P320050504077769342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A287745 n).toNat

end

end A287743.P320050504077769342

namespace A287743

/-- `A007088(A287745(n))` -/
def P320050504077769342.Spec : Prop :=
  ∀ n, P320050504077769342.a n = A287743 n

end A287743

/-! ## A287743.P118356740936771138

`A007088(lcm(A060546(n), A287744(n)))`
-/

namespace A287743.P118356740936771138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (Int.lcm (A060546 n) (A287744 n))

end

end A287743.P118356740936771138

namespace A287743

/-- `A007088(lcm(A060546(n), A287744(n)))` -/
def P118356740936771138.Spec : Prop :=
  ∀ n, P118356740936771138.a n = A287743 n

end A287743

/-! ## A287743.P3377935952487359003

`A007088(and(A287744(3*n), A290419(n)))`
-/

namespace A287743.P3377935952487359003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (Int.land (A287744 (3 * n)) (A290419 n)).toNat

end

end A287743.P3377935952487359003

namespace A287743

/-- `A007088(and(A287744(3*n), A290419(n)))` -/
def P3377935952487359003.Spec : Prop :=
  ∀ n, P3377935952487359003.a n = A287743 n

end A287743

/-!
# A287744: Decimal representation of the diagonal from the corner to the origin of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 342", based on the 5-celled von Neumann neighborhood.

The programs for A287744, the canonical program `A287744.P16646522690606689908` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A287744 has offset 0).

The definition of A287744 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 664 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A287744.P16646522690606689908

`a(n-2)+or(1, a(n-2))` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A287744

/-- `a(n-2)+or(1, a(n-2))` -/
def P16646522690606689908.Spec : Prop :=
  ∀ n, (P16646522690606689908.a n : ℤ) = A287744 n

theorem P16646522690606689908.correct : P16646522690606689908.Spec := by
  intro n
  simp only [A287744]

end A287744

/-! ## A287744.P1317847813653309080

`∑[n+1]%2+2*a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A287744.P1317847813653309080
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n a =>
  (∑ j ∈ Finset.range (n + 1), f1 j) % 2 + 2 * a (n - 2)

end

end A287744.P1317847813653309080

namespace A287744

/-- `∑[n+1]%2+2*a(n-2)` -/
def P1317847813653309080.Spec : Prop :=
  ∀ n, (P1317847813653309080.a n : ℤ) = A287744 n

end A287744

/-! ## A287744.P7138542446447834648

`∑[a(n-2)+2*a(n-4)]` with `a(0)=1, a(1)=0, a(2)=1, a(3)=0`
-/

namespace A287744.P7138542446447834648
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 0, 1, 0] fun n f1 =>
  f1 (n - 2) + 2 * f1 (n - 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A287744.P7138542446447834648

namespace A287744

/-- `∑[a(n-2)+2*a(n-4)]` -/
def P7138542446447834648.Spec : Prop :=
  ∀ n, (P7138542446447834648.a n : ℤ) = A287744 n

end A287744

/-! ## A287744.P4164274078763578627

`1-(a(n-2)%2-2*a(n-2))` with `a(0)=1, a(1)=1`
-/

namespace A287744.P4164274078763578627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  1 - (Int.tmod (a (n - 2)) 2 - 2 * a (n - 2))

end

end A287744.P4164274078763578627

namespace A287744

/-- `1-(a(n-2)%2-2*a(n-2))` -/
def P4164274078763578627.Spec : Prop :=
  ∀ n, P4164274078763578627.a n = A287744 n

end A287744

/-! ## A287744.P16490632842092599326

`2*a(n-2)+gcd(2, a(n-2))-1` with `a(0)=1, a(1)=1`
-/

namespace A287744.P16490632842092599326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  2 * a (n - 2) + ((Int.gcd 2 (a (n - 2)) : ℤ) - 1)

end

end A287744.P16490632842092599326

namespace A287744

/-- `2*a(n-2)+gcd(2, a(n-2))-1` -/
def P16490632842092599326.Spec : Prop :=
  ∀ n, P16490632842092599326.a n = A287744 n

end A287744

/-! ## A287744.P16545600487878984645

`∑[a(n-4)+a(n-2)+a(n-4)]` with `a(0)=1, a(1)=0, a(2)=1, a(3)=0`
-/

namespace A287744.P16545600487878984645
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 0, 1, 0] fun n f1 =>
  f1 (n - 4) + (f1 (n - 2) + f1 (n - 4))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A287744.P16545600487878984645

namespace A287744

/-- `∑[a(n-4)+a(n-2)+a(n-4)]` -/
def P16545600487878984645.Spec : Prop :=
  ∀ n, (P16545600487878984645.a n : ℤ) = A287744 n

end A287744

/-! ## A287744.P15079619672959966651

`a(n-2)+a(n-2)+(a(n-2)-1)%2` with `a(0)=1, a(1)=1`
-/

namespace A287744.P15079619672959966651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 2) + (a (n - 2) + Int.tmod (a (n - 2) - 1) 2)

end

end A287744.P15079619672959966651

namespace A287744

/-- `a(n-2)+a(n-2)+(a(n-2)-1)%2` -/
def P15079619672959966651.Spec : Prop :=
  ∀ n, P15079619672959966651.a n = A287744 n

end A287744

/-! ## A287744.P8017160391627312716

`∑[abs(∑[A077980(n)])]`
-/

namespace A287744.P8017160391627312716
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077980 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f2 j|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A287744.P8017160391627312716

namespace A287744

/-- `∑[abs(∑[A077980(n)])]` -/
def P8017160391627312716.Spec : Prop :=
  ∀ n, P8017160391627312716.a n = A287744 n

end A287744

/-! ## A287744.P8217763522616827607

`A000975(∑[char[2*n]])`
-/

namespace A287744.P8217763522616827607
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000975 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A287744.P8217763522616827607

namespace A287744

/-- `A000975(∑[char[2*n]])` -/
def P8217763522616827607.Spec : Prop :=
  ∀ n, P8217763522616827607.a n = A287744 n

end A287744

/-! ## A287744.P13227172086511007042

`∑[round(A131575(n+3)/3)]`
-/

namespace A287744.P13227172086511007042
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A131575 (n + 3) : ℚ) / 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A287744.P13227172086511007042

namespace A287744

/-- `∑[round(A131575(n+3)/3)]` -/
def P13227172086511007042.Spec : Prop :=
  ∀ n, P13227172086511007042.a n = A287744 n

end A287744

/-! ## A287744.P5812107286783771371

`A052551(n)-a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A287744.P5812107286783771371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A052551 n - a (n - 2)

end

end A287744.P5812107286783771371

namespace A287744

/-- `A052551(n)-a(n-2)` -/
def P5812107286783771371.Spec : Prop :=
  ∀ n, P5812107286783771371.a n = A287744 n

end A287744

/-! ## A287744.P1556063887639512959

`A112387(n)+a(n-3)` with `a(0)=1, a(1)=1, a(2)=2`
-/

namespace A287744.P1556063887639512959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2] fun n a =>
  A112387 n + a (n - 3)

end

end A287744.P1556063887639512959

namespace A287744

/-- `A112387(n)+a(n-3)` -/
def P1556063887639512959.Spec : Prop :=
  ∀ n, P1556063887639512959.a n = A287744 n

end A287744

/-! ## A287744.P17520592563438162231

`∑[A001045(∑[n+1]%(n+2))]`
-/

namespace A287744.P17520592563438162231
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001045 ((∑ j ∈ Finset.range (n + 1), f2 j) % (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A287744.P17520592563438162231

namespace A287744

/-- `∑[A001045(∑[n+1]%(n+2))]` -/
def P17520592563438162231.Spec : Prop :=
  ∀ n, P17520592563438162231.a n = A287744 n

end A287744

/-! ## A287744.P2700041428644945076

`∑[A001045(A027656(n))]`
-/

namespace A287744.P2700041428644945076
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001045 (A027656 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A287744.P2700041428644945076

namespace A287744

/-- `∑[A001045(A027656(n))]` -/
def P2700041428644945076.Spec : Prop :=
  ∀ n, P2700041428644945076.a n = A287744 n

end A287744

/-! ## A287744.P7762086666044655622

`A005578(A008619(n)+1)-1`
-/

namespace A287744.P7762086666044655622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005578 (A008619 n + 1).toNat - 1

end

end A287744.P7762086666044655622

namespace A287744

/-- `A005578(A008619(n)+1)-1` -/
def P7762086666044655622.Spec : Prop :=
  ∀ n, P7762086666044655622.a n = A287744 n

end A287744

/-! ## A287744.P3126847974013557336

`A005578(A004526(n)+2)-1`
-/

namespace A287744.P3126847974013557336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005578 (A004526 n + 2).toNat - 1

end

end A287744.P3126847974013557336

namespace A287744

/-- `A005578(A004526(n)+2)-1` -/
def P3126847974013557336.Spec : Prop :=
  ∀ n, P3126847974013557336.a n = A287744 n

end A287744

/-! ## A287744.P13668488296845303476

`A023105(A008619(n)+2)-2`
-/

namespace A287744.P13668488296845303476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023105 (A008619 n + 2).toNat - 2

end

end A287744.P13668488296845303476

namespace A287744

/-- `A023105(A008619(n)+2)-2` -/
def P13668488296845303476.Spec : Prop :=
  ∀ n, P13668488296845303476.a n = A287744 n

end A287744

/-! ## A287744.P17145858541893365253

`∑[A001045(∑[A001057(n+1)])]`
-/

namespace A287744.P17145858541893365253
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001045 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A287744.P17145858541893365253

namespace A287744

/-- `∑[A001045(∑[A001057(n+1)])]` -/
def P17145858541893365253.Spec : Prop :=
  ∀ n, P17145858541893365253.a n = A287744 n

end A287744

/-!
# A287745: Decimal representation of the diagonal from the origin to the corner of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 342", based on the 5-celled von Neumann neighborhood.

The programs for A287745, the canonical program `A287745.P15680675513556340977` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A287745 has offset 0).

The definition of A287745 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A287745.P15680675513556340977

`A032085(n+2)-4*a(n-2)` with `a(0)=1, a(1)=2`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A287745

/-- `A032085(n+2)-4*a(n-2)` -/
def P15680675513556340977.Spec : Prop :=
  ∀ n, P15680675513556340977.a n = A287745 n

theorem P15680675513556340977.correct : P15680675513556340977.Spec := by
  intro n
  simp only [A287745]

end A287745

/-! ## A287745.P10617937303911911726

`lcm(A060546(n), A287744(n))`
-/

namespace A287745.P10617937303911911726
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A060546 n) (A287744 n)

end

end A287745.P10617937303911911726

namespace A287745

/-- `lcm(A060546(n), A287744(n))` -/
def P10617937303911911726.Spec : Prop :=
  ∀ n, (P10617937303911911726.a n : ℤ) = A287745 n

end A287745

/-! ## A287745.P4745296564925758101

`lcm(A000975(A008619(n)), A016116(n+1))`
-/

namespace A287745.P4745296564925758101
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000975 (A008619 n).toNat) (A016116 (n + 1))

end

end A287745.P4745296564925758101

namespace A287745

/-- `lcm(A000975(A008619(n)), A016116(n+1))` -/
def P4745296564925758101.Spec : Prop :=
  ∀ n, (P4745296564925758101.a n : ℤ) = A287745 n

end A287745

/-! ## A287745.P10517138217542556980

`2^A004526(n+1)*A002450(A008621(n))`
-/

namespace A287745.P10517138217542556980
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A004526 (n + 1) : ℤ) * (A002450 (A008621 n).toNat : ℚ)

end

end A287745.P10517138217542556980

namespace A287745

/-- `2^A004526(n+1)*A002450(A008621(n))` -/
def P10517138217542556980.Spec : Prop :=
  ∀ n, P10517138217542556980.a n = (A287745 n : ℚ)

end A287745

/-! ## A287745.P72743698367367739

`ceil(A126646(n)-A289765(n+1)/2)`
-/

namespace A287745.P72743698367367739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A126646 n : ℚ) - (A289765 (n + 1) : ℚ) / 2⌉

end

end A287745.P72743698367367739

namespace A287745

/-- `ceil(A126646(n)-A289765(n+1)/2)` -/
def P72743698367367739.Spec : Prop :=
  ∀ n, P72743698367367739.a n = A287745 n

end A287745

/-! ## A287745.P11056581728035828297

`(A126646(n+1)-A289765(n+1))/2`
-/

namespace A287745.P11056581728035828297
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A126646 (n + 1) - A289765 (n + 1) : ℚ) / 2

end

end A287745.P11056581728035828297

namespace A287745

/-- `(A126646(n+1)-A289765(n+1))/2` -/
def P11056581728035828297.Spec : Prop :=
  ∀ n, P11056581728035828297.a n = (A287745 n : ℚ)

end A287745

/-!
# A287746: First differences of A154293.

The programs for A287746, the canonical program `A287746.P908048233123958262` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A287746 has offset 1).

The definition of A287746 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A287733, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A287746.P908048233123958262

`A287733(n+1)/6`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A287746

/-- `A287733(n+1)/6` -/
def P908048233123958262.Spec : Prop :=
  ∀ n, P908048233123958262.a n = (A287746 (n + 1) : ℚ)

end A287746

/-! ## A287746.P11717317526016577899

`Δ[C(and(3*(n+1), -3), 2)/6]`
-/

namespace A287746.P11717317526016577899
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose (Int.land (3 * (n + 1) : ℤ) (-3)).toNat 2 : ℚ) / 6

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A287746.P11717317526016577899

namespace A287746

/-- `Δ[C(and(3*(n+1), -3), 2)/6]` -/
def P11717317526016577899.Spec : Prop :=
  ∀ n, P11717317526016577899.a n = (A287746 (n + 1) : ℚ)

end A287746

/-! ## A287746.P15547680928786731809

`(2*n+1)*A000041(and(2, n-3))-a(n-1)` with `a(0)=1`
-/

namespace A287746.P15547680928786731809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (2 * n + 1 : ℤ) * A000041 (Int.land 2 ((n : ℤ) - 3)).toNat - a (n - 1)

end

end A287746.P15547680928786731809

namespace A287746

/-- `(2*n+1)*A000041(and(2, n-3))-a(n-1)` -/
def P15547680928786731809.Spec : Prop :=
  ∀ n, P15547680928786731809.a n = A287746 (n + 1)

end A287746

/-! ## A287746.P4044158874479532699

`2*A186813(n+1)-A004525(n+1)`
-/

namespace A287746.P4044158874479532699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A186813 (n + 1) - A004525 (n + 1)

end

end A287746.P4044158874479532699

namespace A287746

/-- `2*A186813(n+1)-A004525(n+1)` -/
def P4044158874479532699.Spec : Prop :=
  ∀ n, P4044158874479532699.a n = A287746 (n + 1)

end A287746

/-! ## A287746.P4164770967223563191

`Δ[∑[n]+∑[2-a(n-2)]²]/2` with `a(0)=0, a(1)=1`
-/

namespace A287746.P4164770967223563191
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n f3 =>
  2 - f3 (n - 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) + (∑ j ∈ Finset.range (n + 1), f3 j) ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) / 2

end

end A287746.P4164770967223563191

namespace A287746

/-- `Δ[∑[n]+∑[2-a(n-2)]²]/2` -/
def P4164770967223563191.Spec : Prop :=
  ∀ n, P4164770967223563191.a n = (A287746 (n + 1) : ℚ)

end A287746

/-! ## A287746.P15121224109300957000

`Δ[A154293(n+1)]`
-/

namespace A287746.P15121224109300957000
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154293 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A287746.P15121224109300957000

namespace A287746

/-- `Δ[A154293(n+1)]` -/
def P15121224109300957000.Spec : Prop :=
  ∀ n, P15121224109300957000.a n = A287746 (n + 1)

end A287746

/-! ## A287746.P17048059293357168825

`Δ[A193828(n)/2]`
-/

namespace A287746.P17048059293357168825
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A193828 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A287746.P17048059293357168825

namespace A287746

/-- `Δ[A193828(n)/2]` -/
def P17048059293357168825.Spec : Prop :=
  ∀ n, P17048059293357168825.a n = (A287746 (n + 1) : ℚ)

end A287746

/-! ## A287746.P1216488067074762686

`Δ[A069497(n+1)]/6`
-/

namespace A287746.P1216488067074762686
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069497 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) / 6

end

end A287746.P1216488067074762686

namespace A287746

/-- `Δ[A069497(n+1)]/6` -/
def P1216488067074762686.Spec : Prop :=
  ∀ n, P1216488067074762686.a n = (A287746 (n + 1) : ℚ)

end A287746

/-! ## A287746.P17629556969400336224

`A154293(n+2)-A154293(n+1)`
-/

namespace A287746.P17629556969400336224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154293 (n + 2) - A154293 (n + 1)

end

end A287746.P17629556969400336224

namespace A287746

/-- `A154293(n+2)-A154293(n+1)` -/
def P17629556969400336224.Spec : Prop :=
  ∀ n, P17629556969400336224.a n = A287746 (n + 1)

end A287746

/-! ## A287746.P3924713388247097352

`Δ[A001318(A047481(n+1))/2]`
-/

namespace A287746.P3924713388247097352
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001318 (A047481 (n + 1)).toNat : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A287746.P3924713388247097352

namespace A287746

/-- `Δ[A001318(A047481(n+1))/2]` -/
def P3924713388247097352.Spec : Prop :=
  ∀ n, P3924713388247097352.a n = (A287746 (n + 1) : ℚ)

end A287746

/-! ## A287746.P14864065775127710082

`A001281(Δ[A193828(n)])`
-/

namespace A287746.P14864065775127710082
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193828 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (f1 (n + 1) - f1 n).toNat

end

end A287746.P14864065775127710082

namespace A287746

/-- `A001281(Δ[A193828(n)])` -/
def P14864065775127710082.Spec : Prop :=
  ∀ n, P14864065775127710082.a n = A287746 (n + 1)

end A287746

/-! ## A287746.P13969271506146988438

`A004525(Δ[A193828(n)])`
-/

namespace A287746.P13969271506146988438
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193828 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (f1 (n + 1) - f1 n).toNat

end

end A287746.P13969271506146988438

namespace A287746

/-- `A004525(Δ[A193828(n)])` -/
def P13969271506146988438.Spec : Prop :=
  ∀ n, P13969271506146988438.a n = A287746 (n + 1)

end A287746

/-! ## A287746.P9748789020066761985

`A004526(Δ[A193828(n)])`
-/

namespace A287746.P9748789020066761985
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193828 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (f1 (n + 1) - f1 n).toNat

end

end A287746.P9748789020066761985

namespace A287746

/-- `A004526(Δ[A193828(n)])` -/
def P9748789020066761985.Spec : Prop :=
  ∀ n, P9748789020066761985.a n = A287746 (n + 1)

end A287746

/-! ## A287746.P4365736523523027876

`A006370(Δ[A193828(n)])`
-/

namespace A287746.P4365736523523027876
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193828 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006370 (f1 (n + 1) - f1 n).toNat

end

end A287746.P4365736523523027876

namespace A287746

/-- `A006370(Δ[A193828(n)])` -/
def P4365736523523027876.Spec : Prop :=
  ∀ n, P4365736523523027876.a n = A287746 (n + 1)

end A287746

/-! ## A287746.P1753678548989367265

`A025480(Δ[A193828(n)])`
-/

namespace A287746.P1753678548989367265
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193828 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (f1 (n + 1) - f1 n).toNat

end

end A287746.P1753678548989367265

namespace A287746

/-- `A025480(Δ[A193828(n)])` -/
def P1753678548989367265.Spec : Prop :=
  ∀ n, P1753678548989367265.a n = A287746 (n + 1)

end A287746

/-! ## A287746.P10326182023342721167

`A001281(A193828(n+1)-A193828(n))`
-/

namespace A287746.P10326182023342721167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A193828 (n + 1) - A193828 n).toNat

end

end A287746.P10326182023342721167

namespace A287746

/-- `A001281(A193828(n+1)-A193828(n))` -/
def P10326182023342721167.Spec : Prop :=
  ∀ n, P10326182023342721167.a n = A287746 (n + 1)

end A287746

/-! ## A287746.P10587580197945545718

`A004525(A193828(n+1)-A193828(n))`
-/

namespace A287746.P10587580197945545718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A193828 (n + 1) - A193828 n).toNat

end

end A287746.P10587580197945545718

namespace A287746

/-- `A004525(A193828(n+1)-A193828(n))` -/
def P10587580197945545718.Spec : Prop :=
  ∀ n, P10587580197945545718.a n = A287746 (n + 1)

end A287746

/-! ## A287746.P5517691024983305297

`A004526(A193828(n+1)-A193828(n))`
-/

namespace A287746.P5517691024983305297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A193828 (n + 1) - A193828 n).toNat

end

end A287746.P5517691024983305297

namespace A287746

/-- `A004526(A193828(n+1)-A193828(n))` -/
def P5517691024983305297.Spec : Prop :=
  ∀ n, P5517691024983305297.a n = A287746 (n + 1)

end A287746

/-! ## A287746.P4045715469633486180

`A006370(A193828(n+1)-A193828(n))`
-/

namespace A287746.P4045715469633486180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006370 (A193828 (n + 1) - A193828 n).toNat

end

end A287746.P4045715469633486180

namespace A287746

/-- `A006370(A193828(n+1)-A193828(n))` -/
def P4045715469633486180.Spec : Prop :=
  ∀ n, P4045715469633486180.a n = A287746 (n + 1)

end A287746

/-! ## A287746.P2870514500454243970

`A025480(A193828(n+1)-A193828(n))`
-/

namespace A287746.P2870514500454243970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A193828 (n + 1) - A193828 n).toNat

end

end A287746.P2870514500454243970

namespace A287746

/-- `A025480(A193828(n+1)-A193828(n))` -/
def P2870514500454243970.Spec : Prop :=
  ∀ n, P2870514500454243970.a n = A287746 (n + 1)

end A287746

/-!
# A287748: If A070281(n) is not 0, then a(n) is index of the starting primes for form A070281(n), or a(n) = 0 if A070281(n) = 0.

The programs for A287748, there is no canonical definition to state claims against.
-/

/-! ## A287748.P11535813085652791988

`A000720(A007610(n+1)+n%2)`
-/

namespace A287748.P11535813085652791988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A007610 (n + 1) + ((n % 2 : ℕ) : ℤ)).toNat

end

end A287748.P11535813085652791988

/-! ## A287748.P13030338563907870263

`A000720(A007610(n+1)+and(1, n))`
-/

namespace A287748.P13030338563907870263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A007610 (n + 1) + (Nat.land 1 n : ℤ)).toNat

end

end A287748.P13030338563907870263

/-! ## A287748.P18119778653847722174

`A056239(A007610(n+1)+and(1, n))`
-/

namespace A287748.P18119778653847722174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (A007610 (n + 1) + (Nat.land 1 n : ℤ)).toNat

end

end A287748.P18119778653847722174

/-! ## A287748.P11088450264227477431

`A316524(A007610(n+1)+and(1, n))`
-/

namespace A287748.P11088450264227477431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316524 (A007610 (n + 1) + (Nat.land 1 n : ℤ)).toNat

end

end A287748.P11088450264227477431

/-! ## A287748.P10661746174894111980

`A000720(A007610(n+1)+ceil(sin(n)²))`
-/

namespace A287748.P10661746174894111980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A007610 (n + 1) + ⌈Real.sin (n : ℝ) ^ 2⌉).toNat

end

end A287748.P10661746174894111980

/-! ## A287748.P12699433044881250749

`A230980(A007610(n+1)+ceil(sin(n)²))`
-/

namespace A287748.P12699433044881250749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230980 (A007610 (n + 1) + ⌈Real.sin (n : ℝ) ^ 2⌉).toNat

end

end A287748.P12699433044881250749

/-! ## A287748.P5486770287057242209

`A230980(A007610(n+1)-(floor(acot(n))-1))`
-/

namespace A287748.P5486770287057242209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230980 (A007610 (n + 1) - (⌊SequenceMachineLib.acot (n : ℝ)⌋ - 1)).toNat

end

end A287748.P5486770287057242209

/-! ## A287748.P4213613777701629045

`A000720(A007610(n+1)+A000035(n))`
-/

namespace A287748.P4213613777701629045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A007610 (n + 1) + A000035 n).toNat

end

end A287748.P4213613777701629045

/-! ## A287748.P14610540160769162001

`A049084(A007610(n+1)+A000035(n))`
-/

namespace A287748.P14610540160769162001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049084 (A007610 (n + 1) + A000035 n).toNat

end

end A287748.P14610540160769162001

/-! ## A287748.P13144934563212489646

`A055396(A007610(n+1)+A000035(n))`
-/

namespace A287748.P13144934563212489646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (A007610 (n + 1) + A000035 n).toNat

end

end A287748.P13144934563212489646

/-!
# A287749: Binary representation of the diagonal from the corner to the origin of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 347", based on the 5-celled von Neumann neighborhood.

The programs for A287749, there is no canonical definition to state claims against.
-/

/-! ## A287749.P17921494133840316437

`A007088(A287751(n))`
-/

namespace A287749.P17921494133840316437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A287751 n).toNat

end

end A287749.P17921494133840316437

/-! ## A287749.P8315512308900119702

`A185544(2*A287751(n))`
-/

namespace A287749.P8315512308900119702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A287751 n).toNat

end

end A287749.P8315512308900119702

/-! ## A287749.P17875640653084527419

`A287490(n)-A025469(A018030(n))`
-/

namespace A287749.P17875640653084527419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287490 n - A025469 (A018030 n).toNat

end

end A287749.P17875640653084527419

/-! ## A287749.P622901227090149310

`A287490(n)-A025469(A018035(n))`
-/

namespace A287749.P622901227090149310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287490 n - A025469 (A018035 n).toNat

end

end A287749.P622901227090149310

/-! ## A287749.P13016850407755589261

`A287490(n)-A107846(A005558(n))`
-/

namespace A287749.P13016850407755589261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287490 n - A107846 (A005558 n).toNat

end

end A287749.P13016850407755589261

/-!
# A287750: Binary representation of the diagonal from the origin to the corner of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 347", based on the 5-celled von Neumann neighborhood.

The programs for A287750, there is no canonical definition to state claims against.
-/

/-! ## A287750.P18373692628885724384

`A007088(A287752(n))`
-/

namespace A287750.P18373692628885724384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A287752 n).toNat

end

end A287750.P18373692628885724384

/-! ## A287750.P8885551114883195000

`A185544(2*A287752(n))`
-/

namespace A287750.P8885551114883195000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A287752 n).toNat

end

end A287750.P8885551114883195000

/-! ## A287750.P7450945677587468222

`A185544(A287752(n)+A287752(n))`
-/

namespace A287750.P7450945677587468222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (A287752 n + A287752 n).toNat

end

end A287750.P7450945677587468222

/-!
# A287751: Decimal representation of the diagonal from the corner to the origin of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 347", based on the 5-celled von Neumann neighborhood.

The programs for A287751, there is no canonical definition to state claims against.
-/

/-! ## A287751.P7211102389335918935

`or(A082660(ceil(3^(n-1))), A286118(n))`
-/

namespace A287751.P7211102389335918935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A082660 ⌈(3 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉.toNat) (A286118 n)

end

end A287751.P7211102389335918935

/-! ## A287751.P8680061985681671310

`A287492(n)-A025469(A018030(n))`
-/

namespace A287751.P8680061985681671310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287492 n - A025469 (A018030 n).toNat

end

end A287751.P8680061985681671310

/-! ## A287751.P6356297718630412559

`A287492(n)-A107846(A005558(n))`
-/

namespace A287751.P6356297718630412559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287492 n - A107846 (A005558 n).toNat

end

end A287751.P6356297718630412559

/-! ## A287751.P14936652211714447182

`A287492(n)-A025469(A101879(n))`
-/

namespace A287751.P14936652211714447182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287492 n - A025469 (A101879 n).toNat

end

end A287751.P14936652211714447182

/-! ## A287751.P8251979959933843284

`A287492(n)-A025469(A176027(n))`
-/

namespace A287751.P8251979959933843284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287492 n - A025469 (A176027 n).toNat

end

end A287751.P8251979959933843284

/-!
# A287752: Decimal representation of the diagonal from the origin to the corner of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 347", based on the 5-celled von Neumann neighborhood.

The programs for A287752, there is no canonical definition to state claims against.
-/

/-! ## A287752.P16627141996821052511

`A126646(n)-A004526(A286085(n+1))`
-/

namespace A287752.P16627141996821052511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126646 n - A004526 (A286085 (n + 1)).toNat

end

end A287752.P16627141996821052511

/-!
# A287753: Binary representation of the diagonal from the corner to the origin of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 350", based on the 5-celled von Neumann neighborhood.

The programs for A287753, there is no canonical definition to state claims against.
-/

/-! ## A287753.P14467209564040309649

`A007088(A287755(n))`
-/

namespace A287753.P14467209564040309649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A287755 n).toNat

end

end A287753.P14467209564040309649

/-! ## A287753.P17359303358903375154

`A007088(A126646(n+1)-A288979(n+1))`
-/

namespace A287753.P17359303358903375154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A126646 (n + 1) - A288979 (n + 1)).toNat

end

end A287753.P17359303358903375154

/-! ## A287753.P12793182141792575194

`A007088(A000225(n+2)-A288979(n+1))`
-/

namespace A287753.P12793182141792575194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A000225 (n + 2) - A288979 (n + 1)).toNat

end

end A287753.P12793182141792575194

/-! ## A287753.P4615467760699724791

`A007088(A126646(n+1)%A288979(n+1))`
-/

namespace A287753.P4615467760699724791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (Int.tmod (A126646 (n + 1)) (A288979 (n + 1))).toNat

end

end A287753.P4615467760699724791

/-! ## A287753.P10902002470969962186

`A007088(A288980(n)-and(A288979(n+1), A288980(n)))`
-/

namespace A287753.P10902002470969962186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A288980 n - Int.land (A288979 (n + 1)) (A288980 n)).toNat

end

end A287753.P10902002470969962186

/-!
# A287754: Binary representation of the diagonal from the origin to the corner of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 350", based on the 5-celled von Neumann neighborhood.

The programs for A287754, there is no canonical definition to state claims against.
-/

/-! ## A287754.P12465250242095764387

`A007088(A287756(n))`
-/

namespace A287754.P12465250242095764387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A287756 n).toNat

end

end A287754.P12465250242095764387

/-! ## A287754.P5666024150081591579

`A007088((A126646(n+1)-A288980(n+1))/2)`
-/

namespace A287754.P5666024150081591579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (SequenceMachineLib.roundAway ((A126646 (n + 1) - A288980 (n + 1) : ℚ) / 2)).toNat

end

end A287754.P5666024150081591579

/-! ## A287754.P900576638931471962

`A185544(2*A287756(n))`
-/

namespace A287754.P900576638931471962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A287756 n).toNat

end

end A287754.P900576638931471962

/-! ## A287754.P732498301254716719

`A185544(A126646(n+1)-A288980(n+1))`
-/

namespace A287754.P732498301254716719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (A126646 (n + 1) - A288980 (n + 1)).toNat

end

end A287754.P732498301254716719

/-!
# A287755: Decimal representation of the diagonal from the corner to the origin of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 350", based on the 5-celled von Neumann neighborhood.

The programs for A287755, there is no canonical definition to state claims against.
-/

/-! ## A287755.P18325512311884116616

`A126646(n+1)-A288979(n+1)`
-/

namespace A287755.P18325512311884116616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126646 (n + 1) - A288979 (n + 1)

end

end A287755.P18325512311884116616

/-! ## A287755.P7381016488298183496

`A000225(n+2)-A288979(n+1)`
-/

namespace A287755.P7381016488298183496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 (n + 2) - A288979 (n + 1)

end

end A287755.P7381016488298183496

/-! ## A287755.P12521569681296222770

`A324713(A000040(n+1))-A288979(n+1)`
-/

namespace A287755.P12521569681296222770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324713 (A000040 (n + 1)).toNat - A288979 (n + 1)

end

end A287755.P12521569681296222770

/-! ## A287755.P13478717439866555523

`A288980(n)-and(A288979(n+1), A288980(n))`
-/

namespace A287755.P13478717439866555523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288980 n - Int.land (A288979 (n + 1)) (A288980 n)

end

end A287755.P13478717439866555523

/-! ## A287755.P15398344798006687309

`or(A288979(n+1), A288980(n+1))-A288979(n+1)`
-/

namespace A287755.P15398344798006687309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A288979 (n + 1)) (A288980 (n + 1)) - A288979 (n + 1)

end

end A287755.P15398344798006687309

/-!
# A287756: Decimal representation of the diagonal from the origin to the corner of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 350", based on the 5-celled von Neumann neighborhood.

The programs for A287756, there is no canonical definition to state claims against.
-/

/-! ## A287756.P2787913399229763845

`(A126646(n+1)-A288980(n+1))/2`
-/

namespace A287756.P2787913399229763845
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A126646 (n + 1) - A288980 (n + 1) : ℚ) / 2

end

end A287756.P2787913399229763845

/-!
# A287759: Decimal representation of the diagonal from the corner to the origin of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 353", based on the 5-celled von Neumann neighborhood.

The programs for A287759, there is no canonical definition to state claims against.
-/

/-! ## A287759.P259053530031613244

`A285818(n)+A185255(A094437(n))`
-/

namespace A287759.P259053530031613244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285818 n + A185255 (A094437 n).toNat

end

end A287759.P259053530031613244

/-! ## A287759.P8910744007662555637

`A285818(n)+A185255(A285824(n))`
-/

namespace A287759.P8910744007662555637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285818 n + A185255 (A285824 n).toNat

end

end A287759.P8910744007662555637

/-!
# A287761: Number of self-orthogonal diagonal Latin squares of order n with the first row in ascending order.

The programs for A287761, there is no canonical definition to state claims against.
-/

/-! ## A287761.P89856785430021529

`A287762(n+1)/(n+1)!`
-/

namespace A287761.P89856785430021529
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A287762 (n + 1) : ℚ) / (Nat.factorial (n + 1) : ℚ)

end

end A287761.P89856785430021529

/-! ## A287761.P3680092089604878160

`A287762(n+1)/Δ[A007489(n)]`
-/

namespace A287761.P3680092089604878160
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007489 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A287762 (n + 1) : ℚ) / (f1 (n + 1) - f1 n : ℚ)

end

end A287761.P3680092089604878160

/-! ## A287761.P7500078385827542511

`A287762(n+1)/∏[A005496(n)]`
-/

namespace A287761.P7500078385827542511
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005496 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A287762 (n + 1) : ℚ) / ((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ)

end

end A287761.P7500078385827542511

/-! ## A287761.P12644256522354726062

`A287762(n+1)/∏[A005555(n)]`
-/

namespace A287761.P12644256522354726062
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005555 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A287762 (n + 1) : ℚ) / ((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ)

end

end A287761.P12644256522354726062

/-! ## A287761.P4695695849692868837

`A287762(n+1)/∏[A077168(n)]`
-/

namespace A287761.P4695695849692868837
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077168 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A287762 (n + 1) : ℚ) / ((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ)

end

end A287761.P4695695849692868837

/-!
# A287762: Number of self-orthogonal diagonal Latin squares of order n.

The programs for A287762, there is no canonical definition to state claims against.
-/

/-! ## A287762.P11532486541284720562

`A287761(n+1)*(n+1)!`
-/

namespace A287762.P11532486541284720562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287761 (n + 1) * (Nat.factorial (n + 1) : ℤ)

end

end A287762.P11532486541284720562

/-! ## A287762.P14924788105992121402

`Δ[A007489(n)]*A287761(n+1)`
-/

namespace A287762.P14924788105992121402
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007489 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A287761 (n + 1)

end

end A287762.P14924788105992121402

/-! ## A287762.P737094098460738208

`∏[A005496(n)]*A287761(n+1)`
-/

namespace A287762.P737094098460738208
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005496 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∏ j ∈ Finset.range (n + 1), f1 j) * A287761 (n + 1)

end

end A287762.P737094098460738208

/-! ## A287762.P9578604170493788371

`∏[A005555(n)]*A287761(n+1)`
-/

namespace A287762.P9578604170493788371
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005555 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∏ j ∈ Finset.range (n + 1), f1 j) * A287761 (n + 1)

end

end A287762.P9578604170493788371

/-! ## A287762.P9836004996338782449

`∏[A077168(n)]*A287761(n+1)`
-/

namespace A287762.P9836004996338782449
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077168 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∏ j ∈ Finset.range (n + 1), f1 j) * A287761 (n + 1)

end

end A287762.P9836004996338782449

/-!
# A287763: Numbers n for which A230625(n) < n, where A230625 is the concatenation of the prime factorization written in binary, converted back to decimal.

The programs for A287763, there is no canonical definition to state claims against.
-/

/-! ## A287763.P8005000589939563933

`lt[A287874(A028310(n)), A007088(n)]`
-/

namespace A287763.P8005000589939563933
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287874 (A028310 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A287763.P8005000589939563933

/-! ## A287763.P4173158735225870793

`lt[A287874(A028310(n)), A204094(n)/7]`
-/

namespace A287763.P4173158735225870793
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287874 (A028310 n).toNat

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A204094 n : ℚ) / 7

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) < f2 j) n

end

end A287763.P4173158735225870793

/-! ## A287763.P11587237863477591690

`lt[A287874(A028310(n)), A097256(n)/9]`
-/

namespace A287763.P11587237863477591690
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287874 (A028310 n).toNat

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A097256 n : ℚ) / 9

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) < f2 j) n

end

end A287763.P11587237863477591690

/-! ## A287763.P9244521726128782738

`lt[A287874(A028310(n))+n, A269130(n)]`
-/

namespace A287763.P9244521726128782738
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287874 (A028310 n).toNat + (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269130 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A287763.P9244521726128782738

/-! ## A287763.P8289967223470848511

`lt[A287874(A028310(n)), A169966(n+1)/3]`
-/

namespace A287763.P8289967223470848511
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287874 (A028310 n).toNat

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A169966 (n + 1) : ℚ) / 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) < f2 j) n

end

end A287763.P8289967223470848511

/-! ## A287763.P17434915265827190114

`lt[A287874(A028310(n)), A185544(2*n)]`
-/

namespace A287763.P17434915265827190114
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287874 (A028310 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A287763.P17434915265827190114

/-!
# A287764: Number of main classes of diagonal Latin squares of order n.

The programs for A287764, there is no canonical definition to state claims against.
-/

/-! ## A287764.P17822709271979012967

`A337309(n+1)+A330391(n+1)`
-/

namespace A287764.P17822709271979012967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337309 (n + 1) + A330391 (n + 1)

end

end A287764.P17822709271979012967

/-! ## A287764.P17147183334924539776

`A341000(∑[∑[n!]])+A309210(n+1)`
-/

namespace A287764.P17147183334924539776
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341000 (∑ j ∈ Finset.range (n + 1), f1 j + 285) + A309210 (n + 1)

end

end A287764.P17147183334924539776

/-! ## A287764.P17881755813431900849

`A341000(∑[∑[n!]])+A330391(n+1)`
-/

namespace A287764.P17881755813431900849
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341000 (∑ j ∈ Finset.range (n + 1), f1 j + 285) + A330391 (n + 1)

end

end A287764.P17881755813431900849

/-!
# A287765: Period 4: repeat [1, 3, 5, 3].

The programs for A287765, the canonical program `A287765.P6505720637297952086` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A287765 has offset 1).

The definition of A287765 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A287765.P6505720637297952086

`a(n-1)-a(n-2)+a(n-3)` with `a(0)=1, a(1)=3, a(2)=5`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A287765

/-- `a(n-1)-a(n-2)+a(n-3)` -/
def P6505720637297952086.Spec : Prop :=
  ∀ n, P6505720637297952086.a n = A287765 (n + 1)

theorem P6505720637297952086.correct : P6505720637297952086.Spec := by
  intro n
  simp only [A287765, Nat.add_sub_cancel]

end A287765

/-!
# A287767: Brazilian numbers whose repdigits are the same as the repdigits of the base.

The programs for A287767, there is no canonical definition to state claims against.
-/

/-! ## A287767.P6627628377595296002

`A122618(A014181(n+2))`
-/

namespace A287767.P6627628377595296002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122618 (A014181 (n + 2)).toNat

end

end A287767.P6627628377595296002

/-! ## A287767.P12686098365079066363

`A122618(lt[A244112(n), A087052(n)])`
-/

namespace A287767.P12686098365079066363
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244112 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087052 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122618 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A287767.P12686098365079066363

/-! ## A287767.P8918079102227145914

`A160542(A055436(n+2))`
-/

namespace A287767.P8918079102227145914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160542 (A055436 (n + 2)).toNat

end

end A287767.P8918079102227145914

/-! ## A287767.P14978213830994357103

`A276040(A026817(n+2))`
-/

namespace A287767.P14978213830994357103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276040 (A026817 (n + 2)).toNat

end

end A287767.P14978213830994357103

/-!
# A287769: {0->1, 1->110}-transform of the infinite Fibonacci word A003849.

The programs for A287769, the canonical program `A287769.P1141535303720288812` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A287769 has offset 1).

The definition of A287769 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A287769.P1141535303720288812

`floor((n+2)*(15+sqrt(5))/22)-floor((n+1)*(15+sqrt(5))/22)`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A287769

/-- `floor((n+2)*(15+sqrt(5))/22)-floor((n+1)*(15+sqrt(5))/22)` -/
def P1141535303720288812.Spec : Prop :=
  ∀ n, P1141535303720288812.a n = A287769 (n + 1)

theorem P1141535303720288812.correct : P1141535303720288812.Spec := by
  intro n
  simp only [A287769, Nat.add_sub_cancel]

end A287769

/-! ## A287769.P5930660298366545447

`A286749(n^a(n-1))` with `a(0)=1`
-/

namespace A287769.P5930660298366545447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A286749 (SequenceMachineLib.roundAway ((n : ℚ) ^ (a (n - 1) : ℤ))).toNat

end

end A287769.P5930660298366545447

namespace A287769

/-- `A286749(n^a(n-1))` -/
def P5930660298366545447.Spec : Prop :=
  ∀ n, P5930660298366545447.a n = A287769 (n + 1)

end A287769

/-! ## A287769.P13005002324193994720

`A287674(n-a(n-1))` with `a(0)=1, a(1)=1`
-/

namespace A287769.P13005002324193994720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A287674 ((n : ℤ) - a (n - 1)).toNat

end

end A287769.P13005002324193994720

namespace A287769

/-- `A287674(n-a(n-1))` -/
def P13005002324193994720.Spec : Prop :=
  ∀ n, P13005002324193994720.a n = A287769 (n + 1)

end A287769

/-! ## A287769.P7681133695925192591

`A287725(n-a(n-1))` with `a(0)=1, a(1)=1`
-/

namespace A287769.P7681133695925192591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A287725 ((n : ℤ) - a (n - 1)).toNat

end

end A287769.P7681133695925192591

namespace A287769

/-- `A287725(n-a(n-1))` -/
def P7681133695925192591.Spec : Prop :=
  ∀ n, P7681133695925192591.a n = A287769 (n + 1)

end A287769

/-! ## A287769.P14565881271633081333

`A286749(n+1-a(n-1))` with `a(0)=1`
-/

namespace A287769.P14565881271633081333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A286749 ((n + 1 : ℤ) - a (n - 1)).toNat

end

end A287769.P14565881271633081333

namespace A287769

/-- `A286749(n+1-a(n-1))` -/
def P14565881271633081333.Spec : Prop :=
  ∀ n, P14565881271633081333.a n = A287769 (n + 1)

end A287769

/-! ## A287769.P17479935178165358801

`A286749(A286749(n+1)+n)`
-/

namespace A287769.P17479935178165358801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286749 (A286749 (n + 1) + (n : ℤ)).toNat

end

end A287769.P17479935178165358801

namespace A287769

/-- `A286749(A286749(n+1)+n)` -/
def P17479935178165358801.Spec : Prop :=
  ∀ n, P17479935178165358801.a n = A287769 (n + 1)

end A287769

/-! ## A287769.P10045182275172582530

`A287722(A287725(n+1)+n)`
-/

namespace A287769.P10045182275172582530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287722 (A287725 (n + 1) + (n : ℤ)).toNat

end

end A287769.P10045182275172582530

namespace A287769

/-- `A287722(A287725(n+1)+n)` -/
def P10045182275172582530.Spec : Prop :=
  ∀ n, P10045182275172582530.a n = A287769 (n + 1)

end A287769

/-! ## A287769.P14888141066997975858

`A010052(A221151(n)+n²)`
-/

namespace A287769.P14888141066997975858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010052 (A221151 n + (n ^ 2 : ℤ)).toNat

end

end A287769.P14888141066997975858

namespace A287769

/-- `A010052(A221151(n)+n²)` -/
def P14888141066997975858.Spec : Prop :=
  ∀ n, P14888141066997975858.a n = A287769 (n + 1)

end A287769

/-!
# A287770: Positions of 1 in A287769; complement of A276855.

The programs for A287770, the canonical program `A287770.P11237212306429765726` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A287770 has offset 1).

The definition of A287770 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A287770.P6681624606535266392

`comp[floor(n*(ϕ+3))]`
-/

namespace A287770.P6681624606535266392
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) * (Real.goldenRatio + 3)⌋

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A287770.P6681624606535266392

namespace A287770

/-- `comp[floor(n*(ϕ+3))]` -/
def P6681624606535266392.Spec : Prop :=
  ∀ n, (P6681624606535266392.a n : ℤ) = A287770 (n + 1)

end A287770

/-! ## A287770.P12151748077009586690

`a(n-1)+2-Δ[floor(n/(3-ϕ))]` with `a(0)=1`
-/

namespace A287770.P12151748077009586690
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) / (3 - Real.goldenRatio)⌋

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + 2 - (f1 (n + 1) - f1 n)

end

end A287770.P12151748077009586690

namespace A287770

/-- `a(n-1)+2-Δ[floor(n/(3-ϕ))]` -/
def P12151748077009586690.Spec : Prop :=
  ∀ n, P12151748077009586690.a n = A287770 (n + 1)

end A287770

/-! ## A287770.P12028467204970574081

`comp[A276855(n)-1]+1`
-/

namespace A287770.P12028467204970574081
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276855 n - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A287770.P12028467204970574081

namespace A287770

/-- `comp[A276855(n)-1]+1` -/
def P12028467204970574081.Spec : Prop :=
  ∀ n, (P12028467204970574081.a n : ℤ) = A287770 (n + 1)

end A287770

/-! ## A287770.P13685550134561206991

`∑[ceil(acot(A284387(n+1)))]`
-/

namespace A287770.P13685550134561206991
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈SequenceMachineLib.acot (A284387 (n + 1) : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A287770.P13685550134561206991

namespace A287770

/-- `∑[ceil(acot(A284387(n+1)))]` -/
def P13685550134561206991.Spec : Prop :=
  ∀ n, P13685550134561206991.a n = A287770 (n + 1)

end A287770

/-! ## A287770.P1070498074529687693

`∑[char[A003231(n+1)]+1]`
-/

namespace A287770.P1070498074529687693
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003231 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = (n : ℤ) then 1 else 0) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A287770.P1070498074529687693

namespace A287770

/-- `∑[char[A003231(n+1)]+1]` -/
def P1070498074529687693.Spec : Prop :=
  ∀ n, (P1070498074529687693.a n : ℤ) = A287770 (n + 1)

end A287770

/-! ## A287770.P11190993354797366380

`∑[2-A286746(n+1)]-1`
-/

namespace A287770.P11190993354797366380
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A286746 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A287770.P11190993354797366380

namespace A287770

/-- `∑[2-A286746(n+1)]-1` -/
def P11190993354797366380.Spec : Prop :=
  ∀ n, P11190993354797366380.a n = A287770 (n + 1)

end A287770

/-! ## A287770.P12532088631041948319

`comp[A286750(2*n+1)]+1`
-/

namespace A287770.P12532088631041948319
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286750 (2 * n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A287770.P12532088631041948319

namespace A287770

/-- `comp[A286750(2*n+1)]+1` -/
def P12532088631041948319.Spec : Prop :=
  ∀ n, (P12532088631041948319.a n : ℤ) = A287770 (n + 1)

end A287770

/-! ## A287770.P11237212306429765726

`ceil(A195121(n+1)/5+n)`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A287770

/-- `ceil(A195121(n+1)/5+n)` -/
def P11237212306429765726.Spec : Prop :=
  ∀ n, P11237212306429765726.a n = A287770 (n + 1)

theorem P11237212306429765726.correct : P11237212306429765726.Spec := by
  intro n
  simp only [A287770, Nat.add_sub_cancel]

end A287770

/-! ## A287770.P16746998153352098155

`∑[char[∑[A096270(n)+3]]+1]`
-/

namespace A287770.P16746998153352098155
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096270 n + 3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = (n : ℤ) then 1 else 0) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A287770.P16746998153352098155

namespace A287770

/-- `∑[char[∑[A096270(n)+3]]+1]` -/
def P16746998153352098155.Spec : Prop :=
  ∀ n, (P16746998153352098155.a n : ℤ) = A287770 (n + 1)

end A287770

/-! ## A287770.P5660505521406807288

`3*n+2-A182760(n+1)`
-/

namespace A287770.P5660505521406807288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * n + 2 : ℤ) - A182760 (n + 1)

end

end A287770.P5660505521406807288

namespace A287770

/-- `3*n+2-A182760(n+1)` -/
def P5660505521406807288.Spec : Prop :=
  ∀ n, P5660505521406807288.a n = A287770 (n + 1)

end A287770

/-! ## A287770.P16563015852750058093

`∑[char[A054770(n+1)+1]+1]`
-/

namespace A287770.P16563015852750058093
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054770 (n + 1) + 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = (n : ℤ) then 1 else 0) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A287770.P16563015852750058093

namespace A287770

/-- `∑[char[A054770(n+1)+1]+1]` -/
def P16563015852750058093.Spec : Prop :=
  ∀ n, (P16563015852750058093.a n : ℤ) = A287770 (n + 1)

end A287770

/-! ## A287770.P4658912817582782442

`∑[char[eq[1, A003849(n)]+2+n]+1]`
-/

namespace A287770.P4658912817582782442
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003849 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f3 j : ℤ) = f4 j) n + 2 + n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = n then 1 else 0) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A287770.P4658912817582782442

namespace A287770

/-- `∑[char[eq[1, A003849(n)]+2+n]+1]` -/
def P4658912817582782442.Spec : Prop :=
  ∀ n, (P4658912817582782442.a n : ℤ) = A287770 (n + 1)

end A287770

/-! ## A287770.P3950878164242594801

`comp[A001950(n+1)+2*n+1]+1`
-/

namespace A287770.P3950878164242594801
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001950 (n + 1) + (2 * n + 1 : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A287770.P3950878164242594801

namespace A287770

/-- `comp[A001950(n+1)+2*n+1]+1` -/
def P3950878164242594801.Spec : Prop :=
  ∀ n, (P3950878164242594801.a n : ℤ) = A287770 (n + 1)

end A287770

/-! ## A287770.P8390890668349369103

`A287727(n+1)-A383422(n)`
-/

namespace A287770.P8390890668349369103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287727 (n + 1) - A383422 n

end

end A287770.P8390890668349369103

namespace A287770

/-- `A287727(n+1)-A383422(n)` -/
def P8390890668349369103.Spec : Prop :=
  ∀ n, P8390890668349369103.a n = A287770 (n + 1)

end A287770

/-! ## A287770.P2911631067914851446

`A190506(n+1)-A184903(n+1)`
-/

namespace A287770.P2911631067914851446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190506 (n + 1) - A184903 (n + 1)

end

end A287770.P2911631067914851446

namespace A287770

/-- `A190506(n+1)-A184903(n+1)` -/
def P2911631067914851446.Spec : Prop :=
  ∀ n, P2911631067914851446.a n = A287770 (n + 1)

end A287770

/-! ## A287770.P13969216552997299391

`∪[A286751(n+1), A287675(n+1)]`
-/

namespace A287770.P13969216552997299391
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286751 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287675 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A287770.P13969216552997299391

namespace A287770

/-- `∪[A286751(n+1), A287675(n+1)]` -/
def P13969216552997299391.Spec : Prop :=
  ∀ n, (P13969216552997299391.a n : ℤ) = A287770 (n + 1)

end A287770

/-! ## A287770.P14856130336562575657

`∪[A286751(n+1), A287724(n+1)]`
-/

namespace A287770.P14856130336562575657
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286751 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287724 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A287770.P14856130336562575657

namespace A287770

/-- `∪[A286751(n+1), A287724(n+1)]` -/
def P14856130336562575657.Spec : Prop :=
  ∀ n, (P14856130336562575657.a n : ℤ) = A287770 (n + 1)

end A287770

/-! ## A287770.P18365241763358660418

`∪[A287665(n+1), A287675(n+1)]`
-/

namespace A287770.P18365241763358660418
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287665 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287675 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A287770.P18365241763358660418

namespace A287770

/-- `∪[A287665(n+1), A287675(n+1)]` -/
def P18365241763358660418.Spec : Prop :=
  ∀ n, (P18365241763358660418.a n : ℤ) = A287770 (n + 1)

end A287770

/-! ## A287770.P1200071637269867055

`∪[A287675(n+1), A287724(n+1)]`
-/

namespace A287770.P1200071637269867055
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287675 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287724 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A287770.P1200071637269867055

namespace A287770

/-- `∪[A287675(n+1), A287724(n+1)]` -/
def P1200071637269867055.Spec : Prop :=
  ∀ n, (P1200071637269867055.a n : ℤ) = A287770 (n + 1)

end A287770

/-! ## A287770.P14243244822137676671

`∪[A287724(n+1), A287726(n+1)]`
-/

namespace A287770.P14243244822137676671
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287724 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287726 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A287770.P14243244822137676671

namespace A287770

/-- `∪[A287724(n+1), A287726(n+1)]` -/
def P14243244822137676671.Spec : Prop :=
  ∀ n, (P14243244822137676671.a n : ℤ) = A287770 (n + 1)

end A287770

/-!
# A287771: a(1) = a(2) = a(3) = 1; a(n) = a(a(a(n-1)) + a(n-a(n-1))) + a(n-a(n-2)) for n > 3.

The programs for A287771, the canonical program `A287771.P2392060556172251292` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A287771 has offset 1).

The definition of A287771 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(a(a(n-1)-1)+a(n-a(n-1))-1)+a(n-a(n-2))` (program `A287771.P2392060556172251292`, by `A287771.P2392060556172251292.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A287771.P2392060556172251292

`a(a(a(n-1)-1)+a(n-a(n-1))-1)+a(n-a(n-2))` with `a(0)=1, a(1)=1, a(2)=1`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A287771

/-- `a(a(a(n-1)-1)+a(n-a(n-1))-1)+a(n-a(n-2))` -/
def P2392060556172251292.Spec : Prop :=
  ∀ n, (P2392060556172251292.a n : ℤ) = A287771 (n + 1)

theorem P2392060556172251292.correct : P2392060556172251292.Spec := by
  intro n
  simp only [A287771, Nat.add_sub_cancel]

end A287771

/-!
# A287772: {0->1, 1->00}-transform of the infinite Fibonacci word A003849.

The programs for A287772, the canonical program `A287772.P12816254190753866578` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A287772 has offset 1).

The definition of A287772 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A287772.P6060513896941125397

`1-A383422(n)`
-/

namespace A287772.P6060513896941125397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A383422 n

end

end A287772.P6060513896941125397

namespace A287772

/-- `1-A383422(n)` -/
def P6060513896941125397.Spec : Prop :=
  ∀ n, P6060513896941125397.a n = A287772 (n + 1)

end A287772

/-! ## A287772.P4004663452272553461

`a(A308898(n))` with `a(0)=1, a(1)=0, a(2)=0, a(3)=1`
-/

namespace A287772.P4004663452272553461
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 0, 0, 1] fun n a =>
  a (A308898 n).toNat

end

end A287772.P4004663452272553461

namespace A287772

/-- `a(A308898(n))` -/
def P4004663452272553461.Spec : Prop :=
  ∀ n, (P4004663452272553461.a n : ℤ) = A287772 (n + 1)

end A287772

/-! ## A287772.P13191406802693613858

`val(A130310(n+1), 2)%2`
-/

namespace A287772.P13191406802693613858
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A130310 (n + 1)).toNat 2 % 2

end

end A287772.P13191406802693613858

namespace A287772

/-- `val(A130310(n+1), 2)%2` -/
def P13191406802693613858.Spec : Prop :=
  ∀ n, (P13191406802693613858.a n : ℤ) = A287772 (n + 1)

end A287772

/-! ## A287772.P12816254190753866578

`A230603(a(n-1)+n)` with `a(0)=1`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A287772

/-- `A230603(a(n-1)+n)` -/
def P12816254190753866578.Spec : Prop :=
  ∀ n, P12816254190753866578.a n = A287772 (n + 1)

theorem P12816254190753866578.correct : P12816254190753866578.Spec := by
  intro n
  simp only [A287772, Nat.add_sub_cancel]

end A287772

/-! ## A287772.P7416520712987251767

`1-char[A287775(n+1)-1]`
-/

namespace A287772.P7416520712987251767
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287775 (n + 1) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A287772.P7416520712987251767

namespace A287772

/-- `1-char[A287775(n+1)-1]` -/
def P7416520712987251767.Spec : Prop :=
  ∀ n, P7416520712987251767.a n = A287772 (n + 1)

end A287772

/-! ## A287772.P9126383583201519162

`A057428(A294203(n))²`
-/

namespace A287772.P9126383583201519162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (A294203 n).toNat ^ 2

end

end A287772.P9126383583201519162

namespace A287772

/-- `A057428(A294203(n))²` -/
def P9126383583201519162.Spec : Prop :=
  ∀ n, P9126383583201519162.a n = A287772 (n + 1)

end A287772

/-! ## A287772.P1596720508596485058

`A230603(A230603(n)+n)`
-/

namespace A287772.P1596720508596485058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230603 (A230603 n + (n : ℤ)).toNat

end

end A287772.P1596720508596485058

namespace A287772

/-- `A230603(A230603(n)+n)` -/
def P1596720508596485058.Spec : Prop :=
  ∀ n, P1596720508596485058.a n = A287772 (n + 1)

end A287772

/-! ## A287772.P5691855219553924295

`A294203(n*A383422(n))`
-/

namespace A287772.P5691855219553924295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294203 ((n : ℤ) * A383422 n).toNat

end

end A287772.P5691855219553924295

namespace A287772

/-- `A294203(n*A383422(n))` -/
def P5691855219553924295.Spec : Prop :=
  ∀ n, P5691855219553924295.a n = A287772 (n + 1)

end A287772

/-! ## A287772.P14407024432700051551

`ceil(A294203(n)/A005897(n))`
-/

namespace A287772.P14407024432700051551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A294203 n : ℚ) / (A005897 n : ℚ)⌉

end

end A287772.P14407024432700051551

namespace A287772

/-- `ceil(A294203(n)/A005897(n))` -/
def P14407024432700051551.Spec : Prop :=
  ∀ n, P14407024432700051551.a n = A287772 (n + 1)

end A287772

/-! ## A287772.P12142044172637153061

`ceil(A294203(n)/A005902(n))`
-/

namespace A287772.P12142044172637153061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A294203 n : ℚ) / (A005902 n : ℚ)⌉

end

end A287772.P12142044172637153061

namespace A287772

/-- `ceil(A294203(n)/A005902(n))` -/
def P12142044172637153061.Spec : Prop :=
  ∀ n, P12142044172637153061.a n = A287772 (n + 1)

end A287772

/-! ## A287772.P3966747560570282236

`ceil(A294203(n)/A109734(n))`
-/

namespace A287772.P3966747560570282236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A294203 n : ℚ) / (A109734 n : ℚ)⌉

end

end A287772.P3966747560570282236

namespace A287772

/-- `ceil(A294203(n)/A109734(n))` -/
def P3966747560570282236.Spec : Prop :=
  ∀ n, P3966747560570282236.a n = A287772 (n + 1)

end A287772

/-! ## A287772.P12601849495339227038

`A130310(and(2, A130310(n)-1))`
-/

namespace A287772.P12601849495339227038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130310 (Int.land 2 (A130310 n - 1)).toNat

end

end A287772.P12601849495339227038

namespace A287772

/-- `A130310(and(2, A130310(n)-1))` -/
def P12601849495339227038.Spec : Prop :=
  ∀ n, P12601849495339227038.a n = A287772 (n + 1)

end A287772

/-! ## A287772.P9489320152163868965

`A257800(xor(n, xor(n, A309198(n))))`
-/

namespace A287772.P9489320152163868965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257800 (Int.xor (n : ℤ) (Int.xor (n : ℤ) (A309198 n))).toNat

end

end A287772.P9489320152163868965

namespace A287772

/-- `A257800(xor(n, xor(n, A309198(n))))` -/
def P9489320152163868965.Spec : Prop :=
  ∀ n, P9489320152163868965.a n = A287772 (n + 1)

end A287772

/-! ## A287772.P8930607198369122441

`C(A284387(n+2), 2)`
-/

namespace A287772.P8930607198369122441
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A284387 (n + 2)).toNat 2

end

end A287772.P8930607198369122441

namespace A287772

/-- `C(A284387(n+2), 2)` -/
def P8930607198369122441.Spec : Prop :=
  ∀ n, (P8930607198369122441.a n : ℤ) = A287772 (n + 1)

end A287772

/-! ## A287772.P7472179578570730301

`1-Δ[A221150(n)]²`
-/

namespace A287772.P7472179578570730301
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221150 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (f1 (n + 1) - f1 n) ^ 2

end

end A287772.P7472179578570730301

namespace A287772

/-- `1-Δ[A221150(n)]²` -/
def P7472179578570730301.Spec : Prop :=
  ∀ n, P7472179578570730301.a n = A287772 (n + 1)

end A287772

/-! ## A287772.P9742817992520606494

`abs(1-abs(Δ[A284387(n+1)]))`
-/

namespace A287772.P9742817992520606494
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284387 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(1 - |f1 (n + 1) - f1 n|)|

end

end A287772.P9742817992520606494

namespace A287772

/-- `abs(1-abs(Δ[A284387(n+1)]))` -/
def P9742817992520606494.Spec : Prop :=
  ∀ n, P9742817992520606494.a n = A287772 (n + 1)

end A287772

/-! ## A287772.P17335419780453796910

`1-Δ[char[A054770(n+1)]]²`
-/

namespace A287772.P17335419780453796910
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054770 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) ^ 2

end

end A287772.P17335419780453796910

namespace A287772

/-- `1-Δ[char[A054770(n+1)]]²` -/
def P17335419780453796910.Spec : Prop :=
  ∀ n, P17335419780453796910.a n = A287772 (n + 1)

end A287772

/-! ## A287772.P6207035727186354019

`A005614(abs(Δ[A284387(n+1)]))`
-/

namespace A287772.P6207035727186354019
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284387 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005614 |f1 (n + 1) - f1 n|.toNat

end

end A287772.P6207035727186354019

namespace A287772

/-- `A005614(abs(Δ[A284387(n+1)]))` -/
def P6207035727186354019.Spec : Prop :=
  ∀ n, P6207035727186354019.a n = A287772 (n + 1)

end A287772

/-! ## A287772.P7603645685596730309

`A001468(∑[A286746(n+2)])-1`
-/

namespace A287772.P7603645685596730309
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286746 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001468 (∑ j ∈ Finset.range (n + 1), f1 j).toNat - 1

end

end A287772.P7603645685596730309

namespace A287772

/-- `A001468(∑[A286746(n+2)])-1` -/
def P7603645685596730309.Spec : Prop :=
  ∀ n, P7603645685596730309.a n = A287772 (n + 1)

end A287772

/-!
# A287773: {0->010, 1->101}-transform of the infinite Fibonacci word A003849.

The programs for A287773, the canonical program `A287773.P9347372102348700689` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A287773 has offset 1).

The definition of A287773 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A287795, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A287773.P9347372102348700689

`1-A287795(n+1)`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A287773

/-- `1-A287795(n+1)` -/
def P9347372102348700689.Spec : Prop :=
  ∀ n, P9347372102348700689.a n = A287773 (n + 1)

theorem P9347372102348700689.correct : P9347372102348700689.Spec := by
  intro n
  simp only [A287773, Nat.add_sub_cancel]

end A287773

/-! ## A287773.P6608531192084573125

`A287657(A133310(n))`
-/

namespace A287773.P6608531192084573125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287657 (A133310 n).toNat

end

end A287773.P6608531192084573125

namespace A287773

/-- `A287657(A133310(n))` -/
def P6608531192084573125.Spec : Prop :=
  ∀ n, P6608531192084573125.a n = A287773 (n + 1)

end A287773

/-! ## A287773.P11016949922235863849

`A287790(A080782(n+1))`
-/

namespace A287773.P11016949922235863849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287790 (A080782 (n + 1)).toNat

end

end A287773.P11016949922235863849

namespace A287773

/-- `A287790(A080782(n+1))` -/
def P11016949922235863849.Spec : Prop :=
  ∀ n, P11016949922235863849.a n = A287773 (n + 1)

end A287773

/-! ## A287773.P15811300869663589229

`xor(A011655(n), A287790(n+1))`
-/

namespace A287773.P15811300869663589229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A011655 n) (A287790 (n + 1))

end

end A287773.P15811300869663589229

namespace A287773

/-- `xor(A011655(n), A287790(n+1))` -/
def P15811300869663589229.Spec : Prop :=
  ∀ n, P15811300869663589229.a n = A287773 (n + 1)

end A287773

/-! ## A287773.P848814354095562063

`xor(1-A287790(n+1), A079978(n))`
-/

namespace A287773.P848814354095562063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (1 - A287790 (n + 1)) (A079978 n)

end

end A287773.P848814354095562063

namespace A287773

/-- `xor(1-A287790(n+1), A079978(n))` -/
def P848814354095562063.Spec : Prop :=
  ∀ n, P848814354095562063.a n = A287773 (n + 1)

end A287773

/-! ## A287773.P2032714411359375297

`A287790(A130508(n+1))`
-/

namespace A287773.P2032714411359375297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287790 (A130508 (n + 1)).toNat

end

end A287773.P2032714411359375297

namespace A287773

/-- `A287790(A130508(n+1))` -/
def P2032714411359375297.Spec : Prop :=
  ∀ n, P2032714411359375297.a n = A287773 (n + 1)

end A287773

/-! ## A287773.P7289510349904844830

`1-A287657(A131380(n+1))`
-/

namespace A287773.P7289510349904844830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A287657 (A131380 (n + 1)).toNat

end

end A287773.P7289510349904844830

namespace A287773

/-- `1-A287657(A131380(n+1))` -/
def P7289510349904844830.Spec : Prop :=
  ∀ n, P7289510349904844830.a n = A287773 (n + 1)

end A287773

/-! ## A287773.P5582854376538437504

`A005614(A187953(n+2)-2)`
-/

namespace A287773.P5582854376538437504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005614 (A187953 (n + 2) - 2).toNat

end

end A287773.P5582854376538437504

namespace A287773

/-- `A005614(A187953(n+2)-2)` -/
def P5582854376538437504.Spec : Prop :=
  ∀ n, P5582854376538437504.a n = A287773 (n + 1)

end A287773

/-! ## A287773.P14057742522633866953

`A187950(A187953(n+2)-1)`
-/

namespace A287773.P14057742522633866953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187950 (A187953 (n + 2) - 1).toNat

end

end A287773.P14057742522633866953

namespace A287773

/-- `A187950(A187953(n+2)-1)` -/
def P14057742522633866953.Spec : Prop :=
  ∀ n, P14057742522633866953.a n = A287773 (n + 1)

end A287773

/-! ## A287773.P16525230024464300856

`A189661(A187953(n+2))`
-/

namespace A287773.P16525230024464300856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189661 (A187953 (n + 2)).toNat

end

end A287773.P16525230024464300856

namespace A287773

/-- `A189661(A187953(n+2))` -/
def P16525230024464300856.Spec : Prop :=
  ∀ n, P16525230024464300856.a n = A287773 (n + 1)

end A287773

/-!
# A287774: Positions of 0 in A287773; complement of A287777.

The programs for A287774, the canonical program `A287774.P8513331073826968044` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A287774 has offset 1).

The definition of A287774 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A287774.P4530116059231246455

`comp[comp[A101864(n+1)]+n]`
-/

namespace A287774.P4530116059231246455
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101864 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n + n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A287774.P4530116059231246455

namespace A287774

/-- `comp[comp[A101864(n+1)]+n]` -/
def P4530116059231246455.Spec : Prop :=
  ∀ n, (P4530116059231246455.a n : ℤ) = A287774 (n + 1)

end A287774

/-! ## A287774.P8513331073826968044

`a(n-1)+A187944(n)+1` with `a(0)=1`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A287774

/-- `a(n-1)+A187944(n)+1` -/
def P8513331073826968044.Spec : Prop :=
  ∀ n, P8513331073826968044.a n = A287774 (n + 1)

theorem P8513331073826968044.correct : P8513331073826968044.Spec := by
  intro n
  simp only [A287774, Nat.add_sub_cancel]

end A287774

/-! ## A287774.P17941285629464415048

`comp[comp[A188261(2*(n+1))]+n]`
-/

namespace A287774.P17941285629464415048
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188261 (2 * (n + 1))

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n + n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A287774.P17941285629464415048

namespace A287774

/-- `comp[comp[A188261(2*(n+1))]+n]` -/
def P17941285629464415048.Spec : Prop :=
  ∀ n, (P17941285629464415048.a n : ℤ) = A287774 (n + 1)

end A287774

/-! ## A287774.P10585914259055741408

`∑[A123740(n+1)]+floor(ϕ*(n+1))`
-/

namespace A287774.P10585914259055741408
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123740 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + ⌊Real.goldenRatio * (n + 1 : ℝ)⌋

end

end A287774.P10585914259055741408

namespace A287774

/-- `∑[A123740(n+1)]+floor(ϕ*(n+1))` -/
def P10585914259055741408.Spec : Prop :=
  ∀ n, P10585914259055741408.a n = A287774 (n + 1)

end A287774

/-! ## A287774.P17223645298090237153

`∑[A282162(n)-A005713(n)]`
-/

namespace A287774.P17223645298090237153
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282162 n - A005713 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A287774.P17223645298090237153

namespace A287774

/-- `∑[A282162(n)-A005713(n)]` -/
def P17223645298090237153.Spec : Prop :=
  ∀ n, P17223645298090237153.a n = A287774 (n + 1)

end A287774

/-! ## A287774.P9146259425090303042

`A001950(n+1)-∑[A005713(n)]`
-/

namespace A287774.P9146259425090303042
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005713 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001950 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A287774.P9146259425090303042

namespace A287774

/-- `A001950(n+1)-∑[A005713(n)]` -/
def P9146259425090303042.Spec : Prop :=
  ∀ n, P9146259425090303042.a n = A287774 (n + 1)

end A287774

/-! ## A287774.P1376292961452991192

`∑[A005206(n+2)-A060143(n)]`
-/

namespace A287774.P1376292961452991192
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005206 (n + 2) - A060143 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A287774.P1376292961452991192

namespace A287774

/-- `∑[A005206(n+2)-A060143(n)]` -/
def P1376292961452991192.Spec : Prop :=
  ∀ n, P1376292961452991192.a n = A287774 (n + 1)

end A287774

/-! ## A287774.P1736895678918929157

`∑[A096270(n)+2-A005713(n)]`
-/

namespace A287774.P1736895678918929157
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096270 n + (2 - A005713 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A287774.P1736895678918929157

namespace A287774

/-- `∑[A096270(n)+2-A005713(n)]` -/
def P1736895678918929157.Spec : Prop :=
  ∀ n, P1736895678918929157.a n = A287774 (n + 1)

end A287774

/-! ## A287774.P13137022182334567552

`∑[A187944(n+1)+1]-A187944(n+1)`
-/

namespace A287774.P13137022182334567552
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187944 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A187944 (n + 1)

end

end A287774.P13137022182334567552

namespace A287774

/-- `∑[A187944(n+1)+1]-A187944(n+1)` -/
def P13137022182334567552.Spec : Prop :=
  ∀ n, P13137022182334567552.a n = A287774 (n + 1)

end A287774

/-! ## A287774.P17742566147403811629

`A060144(A005206(n+2))+A000201(n+1)`
-/

namespace A287774.P17742566147403811629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060144 (A005206 (n + 2)).toNat + A000201 (n + 1)

end

end A287774.P17742566147403811629

namespace A287774

/-- `A060144(A005206(n+2))+A000201(n+1)` -/
def P17742566147403811629.Spec : Prop :=
  ∀ n, P17742566147403811629.a n = A287774 (n + 1)

end A287774

/-! ## A287774.P6015430984054500141

`A005206(n-A005206(n))+A000201(n+1)`
-/

namespace A287774.P6015430984054500141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005206 ((n : ℤ) - A005206 n).toNat + A000201 (n + 1)

end

end A287774.P6015430984054500141

namespace A287774

/-- `A005206(n-A005206(n))+A000201(n+1)` -/
def P6015430984054500141.Spec : Prop :=
  ∀ n, P6015430984054500141.a n = A287774 (n + 1)

end A287774

/-! ## A287774.P13161037638410606944

`∑[1-A005713(n)]+A035337(n)-(A035336(n+1)+n)`
-/

namespace A287774.P13161037638410606944
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A005713 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (A035337 n - (A035336 (n + 1) + (n : ℤ)))

end

end A287774.P13161037638410606944

namespace A287774

/-- `∑[1-A005713(n)]+A035337(n)-(A035336(n+1)+n)` -/
def P13161037638410606944.Spec : Prop :=
  ∀ n, P13161037638410606944.a n = A287774 (n + 1)

end A287774

/-! ## A287774.P10651929117142570172

`2*n+1-A060144(A189663(n+2))`
-/

namespace A287774.P10651929117142570172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) - A060144 (A189663 (n + 2)).toNat

end

end A287774.P10651929117142570172

namespace A287774

/-- `2*n+1-A060144(A189663(n+2))` -/
def P10651929117142570172.Spec : Prop :=
  ∀ n, P10651929117142570172.a n = A287774 (n + 1)

end A287774

/-! ## A287774.P15100674345924740532

`A066096(n+1)+A005206(A060144(n+1))`
-/

namespace A287774.P15100674345924740532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066096 (n + 1) + A005206 (A060144 (n + 1)).toNat

end

end A287774.P15100674345924740532

namespace A287774

/-- `A066096(n+1)+A005206(A060144(n+1))` -/
def P15100674345924740532.Spec : Prop :=
  ∀ n, P15100674345924740532.a n = A287774 (n + 1)

end A287774

/-! ## A287774.P9350308191709583171

`A060144(A019446(n+2))+A000201(n+1)`
-/

namespace A287774.P9350308191709583171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060144 (A019446 (n + 2)).toNat + A000201 (n + 1)

end

end A287774.P9350308191709583171

namespace A287774

/-- `A060144(A019446(n+2))+A000201(n+1)` -/
def P9350308191709583171.Spec : Prop :=
  ∀ n, P9350308191709583171.a n = A287774 (n + 1)

end A287774

/-! ## A287774.P14703441871525843946

`2*n-A339765(A000201(A189663(n+2)))`
-/

namespace A287774.P14703441871525843946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - A339765 (A000201 (A189663 (n + 2)).toNat).toNat

end

end A287774.P14703441871525843946

namespace A287774

/-- `2*n-A339765(A000201(A189663(n+2)))` -/
def P14703441871525843946.Spec : Prop :=
  ∀ n, P14703441871525843946.a n = A287774 (n + 1)

end A287774

/-! ## A287774.P8481326354174964829

`∑[A188011(n+3)+1]`
-/

namespace A287774.P8481326354174964829
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188011 (n + 3) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A287774.P8481326354174964829

namespace A287774

/-- `∑[A188011(n+3)+1]` -/
def P8481326354174964829.Spec : Prop :=
  ∀ n, P8481326354174964829.a n = A287774 (n + 1)

end A287774

/-! ## A287774.P8298923368618661773

`2*n+1-∑[A188436(n+3)]`
-/

namespace A287774.P8298923368618661773
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188436 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A287774.P8298923368618661773

namespace A287774

/-- `2*n+1-∑[A188436(n+3)]` -/
def P8298923368618661773.Spec : Prop :=
  ∀ n, P8298923368618661773.a n = A287774 (n + 1)

end A287774

/-! ## A287774.P244299692670044010

`2*n+1-A060144(A334415(n+2))`
-/

namespace A287774.P244299692670044010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) - A060144 (A334415 (n + 2)).toNat

end

end A287774.P244299692670044010

namespace A287774

/-- `2*n+1-A060144(A334415(n+2))` -/
def P244299692670044010.Spec : Prop :=
  ∀ n, P244299692670044010.a n = A287774 (n + 1)

end A287774

/-! ## A287774.P9369452368054187124

`filter[n+1, A287795(#)]`
-/

namespace A287774.P9369452368054187124
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A287795 (f1 j) = 1) n)

end

end A287774.P9369452368054187124

namespace A287774

/-- `filter[n+1, A287795(#)]` -/
def P9369452368054187124.Spec : Prop :=
  ∀ n, (P9369452368054187124.a n : ℤ) = A287774 (n + 1)

end A287774

/-!
# A287775: Positions of 0 in A287772; complement of A050140 (conjectured and proved).

The programs for A287775, the canonical program `A287775.P13905753593983467473` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A287775 has offset 1).

The definition of A287775 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A287775.P1184416044606687507

`floor(∑[ϕ*(ϕ-and(1, n))])`
-/

namespace A287775.P1184416044606687507
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.goldenRatio * (Real.goldenRatio - (Nat.land 1 n : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋

end

end A287775.P1184416044606687507

namespace A287775

/-- `floor(∑[ϕ*(ϕ-and(1, n))])` -/
def P1184416044606687507.Spec : Prop :=
  ∀ n, P1184416044606687507.a n = A287775 (n + 1)

end A287775

/-! ## A287775.P15584877850879882168

`comp[floor(ϕ*n)+floor(n/ϕ)]`
-/

namespace A287775.P15584877850879882168
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.goldenRatio * (n : ℝ)⌋ + ⌊(n : ℝ) / Real.goldenRatio⌋

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A287775.P15584877850879882168

namespace A287775

/-- `comp[floor(ϕ*n)+floor(n/ϕ)]` -/
def P15584877850879882168.Spec : Prop :=
  ∀ n, (P15584877850879882168.a n : ℤ) = A287775 (n + 1)

end A287775

/-! ## A287775.P2029383041146011937

`floor(∑[ϕ*and(1, n+1)+1])`
-/

namespace A287775.P2029383041146011937
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.goldenRatio * (Nat.land 1 (n + 1) : ℝ) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋

end

end A287775.P2029383041146011937

namespace A287775

/-- `floor(∑[ϕ*and(1, n+1)+1])` -/
def P2029383041146011937.Spec : Prop :=
  ∀ n, P2029383041146011937.a n = A287775 (n + 1)

end A287775

/-! ## A287775.P9951632136513932335

`floor(∑[ϕ/(ϕ-and(1, n+1))])`
-/

namespace A287775.P9951632136513932335
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.goldenRatio / (Real.goldenRatio - (Nat.land 1 (n + 1) : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋

end

end A287775.P9951632136513932335

namespace A287775

/-- `floor(∑[ϕ/(ϕ-and(1, n+1))])` -/
def P9951632136513932335.Spec : Prop :=
  ∀ n, P9951632136513932335.a n = A287775 (n + 1)

end A287775

/-! ## A287775.P6070945964710787449

`comp[A284625(n+1)-3]+1`
-/

namespace A287775.P6070945964710787449
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284625 (n + 1) - 3

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A287775.P6070945964710787449

namespace A287775

/-- `comp[A284625(n+1)-3]+1` -/
def P6070945964710787449.Spec : Prop :=
  ∀ n, (P6070945964710787449.a n : ℤ) = A287775 (n + 1)

end A287775

/-! ## A287775.P1372087586793984037

`ceil(A287675(n+1)-n/2)`
-/

namespace A287775.P1372087586793984037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A287675 (n + 1) : ℚ) - (n : ℚ) / 2⌉

end

end A287775.P1372087586793984037

namespace A287775

/-- `ceil(A287675(n+1)-n/2)` -/
def P1372087586793984037.Spec : Prop :=
  ∀ n, P1372087586793984037.a n = A287775 (n + 1)

end A287775

/-! ## A287775.P851419660255904044

`(A137709(n+1)+n+1)/2`
-/

namespace A287775.P851419660255904044
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A137709 (n + 1) + (n + 1 : ℤ) : ℚ) / 2

end

end A287775.P851419660255904044

namespace A287775

/-- `(A137709(n+1)+n+1)/2` -/
def P851419660255904044.Spec : Prop :=
  ∀ n, P851419660255904044.a n = (A287775 (n + 1) : ℚ)

end A287775

/-! ## A287775.P16410831856858360612

`A000201(∑[char[2*n]])+n+1`
-/

namespace A287775.P16410831856858360612
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000201 (∑ j ∈ Finset.range (n + 1), f1 j) + (n + 1 : ℤ)

end

end A287775.P16410831856858360612

namespace A287775

/-- `A000201(∑[char[2*n]])+n+1` -/
def P16410831856858360612.Spec : Prop :=
  ∀ n, P16410831856858360612.a n = A287775 (n + 1)

end A287775

/-! ## A287775.P12881519069476137570

`A187485(n+1)+∑[char[2*n]]`
-/

namespace A287775.P12881519069476137570
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187485 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A287775.P12881519069476137570

namespace A287775

/-- `A187485(n+1)+∑[char[2*n]]` -/
def P12881519069476137570.Spec : Prop :=
  ∀ n, P12881519069476137570.a n = A287775 (n + 1)

end A287775

/-! ## A287775.P1662216334586601628

`comp[A035336(n+1)-2-2*n]+1`
-/

namespace A287775.P1662216334586601628
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035336 (n + 1) - 2 - (2 * n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A287775.P1662216334586601628

namespace A287775

/-- `comp[A035336(n+1)-2-2*n]+1` -/
def P1662216334586601628.Spec : Prop :=
  ∀ n, (P1662216334586601628.a n : ℤ) = A287775 (n + 1)

end A287775

/-! ## A287775.P16380326699357220870

`A307295(n)+A004526(n)`
-/

namespace A287775.P16380326699357220870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307295 n + A004526 n

end

end A287775.P16380326699357220870

namespace A287775

/-- `A307295(n)+A004526(n)` -/
def P16380326699357220870.Spec : Prop :=
  ∀ n, P16380326699357220870.a n = A287775 (n + 1)

end A287775

/-! ## A287775.P15922016894258628810

`A307294(A109613(n))+n`
-/

namespace A287775.P15922016894258628810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307294 (A109613 n).toNat + (n : ℤ)

end

end A287775.P15922016894258628810

namespace A287775

/-- `A307294(A109613(n))+n` -/
def P15922016894258628810.Spec : Prop :=
  ∀ n, P15922016894258628810.a n = A287775 (n + 1)

end A287775

/-! ## A287775.P13905753593983467473

`A000201(A008619(n))+1+n`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A287775

/-- `A000201(A008619(n))+1+n` -/
def P13905753593983467473.Spec : Prop :=
  ∀ n, P13905753593983467473.a n = A287775 (n + 1)

theorem P13905753593983467473.correct : P13905753593983467473.Spec := by
  intro n
  simp only [A287775, Nat.add_sub_cancel]

end A287775

/-! ## A287775.P8521243859823607567

`A004956(A004526(n)+1)+n`
-/

namespace A287775.P8521243859823607567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004956 (A004526 n + 1).toNat + (n : ℤ)

end

end A287775.P8521243859823607567

namespace A287775

/-- `A004956(A004526(n)+1)+n` -/
def P8521243859823607567.Spec : Prop :=
  ∀ n, P8521243859823607567.a n = A287775 (n + 1)

end A287775

/-! ## A287775.P3847206429355216715

`A026351(A004526(n)+1)+n`
-/

namespace A287775.P3847206429355216715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026351 (A004526 n + 1).toNat + (n : ℤ)

end

end A287775.P3847206429355216715

namespace A287775

/-- `A026351(A004526(n)+1)+n` -/
def P3847206429355216715.Spec : Prop :=
  ∀ n, P3847206429355216715.a n = A287775 (n + 1)

end A287775

/-! ## A287775.P573914766673306272

`A026351(A110654(n+1))+n`
-/

namespace A287775.P573914766673306272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026351 (A110654 (n + 1)).toNat + (n : ℤ)

end

end A287775.P573914766673306272

namespace A287775

/-- `A026351(A110654(n+1))+n` -/
def P573914766673306272.Spec : Prop :=
  ∀ n, P573914766673306272.a n = A287775 (n + 1)

end A287775

/-! ## A287775.P10190139316763727621

`A287675(n+1)-A004526(n)`
-/

namespace A287775.P10190139316763727621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287675 (n + 1) - A004526 n

end

end A287775.P10190139316763727621

namespace A287775

/-- `A287675(n+1)-A004526(n)` -/
def P10190139316763727621.Spec : Prop :=
  ∀ n, P10190139316763727621.a n = A287775 (n + 1)

end A287775

/-! ## A287775.P8798209806424108356

`A286750(n+1)-A008619(n)`
-/

namespace A287775.P8798209806424108356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286750 (n + 1) - A008619 n

end

end A287775.P8798209806424108356

namespace A287775

/-- `A286750(n+1)-A008619(n)` -/
def P8798209806424108356.Spec : Prop :=
  ∀ n, P8798209806424108356.a n = A287775 (n + 1)

end A287775

/-! ## A287775.P7591061183173012485

`A008619(n)+A307295(n)-1`
-/

namespace A287775.P7591061183173012485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n + (A307295 n - 1)

end

end A287775.P7591061183173012485

namespace A287775

/-- `A008619(n)+A307295(n)-1` -/
def P7591061183173012485.Spec : Prop :=
  ∀ n, P7591061183173012485.a n = A287775 (n + 1)

end A287775

/-! ## A287775.P12405794177615149813

`A287723(n+1)-A110654(n)`
-/

namespace A287775.P12405794177615149813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287723 (n + 1) - A110654 n

end

end A287775.P12405794177615149813

namespace A287775

/-- `A287723(n+1)-A110654(n)` -/
def P12405794177615149813.Spec : Prop :=
  ∀ n, P12405794177615149813.a n = A287775 (n + 1)

end A287775

/-!
# A287776: Number of Dyck paths of semilength n such that every peak at level y > 1 is preceded by (at least) one peak at level y-1 and is followed by (at least) one peak at level y-1.

The programs for A287776, there is no canonical definition to state claims against.
-/

/-! ## A287776.P7735548067276225086

`floor(root(A197949(n+1), 6))`
-/

namespace A287776.P7735548067276225086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A197949 (n + 1) : ℝ) ^ (1 / (6 : ℝ))⌋

end

end A287776.P7735548067276225086

/-! ## A287776.P9096622470515776575

`ceil(A232167(n+1)/43)`
-/

namespace A287776.P9096622470515776575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A232167 (n + 1) : ℚ) / 43⌉

end

end A287776.P9096622470515776575

/-! ## A287776.P16106524760655091164

`A360247(A006981(n))`
-/

namespace A287776.P16106524760655091164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360247 (A006981 n).toNat

end

end A287776.P16106524760655091164

/-! ## A287776.P14138113752969729164

`A359536(A364596(n))`
-/

namespace A287776.P14138113752969729164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359536 (A364596 n).toNat

end

end A287776.P14138113752969729164

/-! ## A287776.P10686931603965251753

`A000196(A131281(n)+1)`
-/

namespace A287776.P10686931603965251753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A131281 n + 1).toNat

end

end A287776.P10686931603965251753

/-!
# A287777: Positions of 1 in A287773; complement of A287774.

The programs for A287777, the canonical program `A287777.P3751153092046747703` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A287777 has offset 1).

The definition of A287777 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A287777.P14265107155090504393

`∪[2*floor(ϕ*(n+1))+n, floor(ϕ*(n+1))]+1+n`
-/

namespace A287777.P14265107155090504393
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ⌊Real.goldenRatio * (n + 1 : ℝ)⌋ + (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.goldenRatio * (n + 1 : ℝ)⌋

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n + 1 + n

end

end A287777.P14265107155090504393

namespace A287777

/-- `∪[2*floor(ϕ*(n+1))+n, floor(ϕ*(n+1))]+1+n` -/
def P14265107155090504393.Spec : Prop :=
  ∀ n, (P14265107155090504393.a n : ℤ) = A287777 (n + 1)

end A287777

/-! ## A287777.P3751153092046747703

`A187945(n+1)+1+n`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A287777

/-- `A187945(n+1)+1+n` -/
def P3751153092046747703.Spec : Prop :=
  ∀ n, P3751153092046747703.a n = A287777 (n + 1)

theorem P3751153092046747703.correct : P3751153092046747703.Spec := by
  intro n
  simp only [A287777, Nat.add_sub_cancel]

end A287777

/-! ## A287777.P14980923887013649639

`comp[A035337(n)+1]+n+2`
-/

namespace A287777.P14980923887013649639
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035337 n + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + (n + 2)

end

end A287777.P14980923887013649639

namespace A287777

/-- `comp[A035337(n)+1]+n+2` -/
def P14980923887013649639.Spec : Prop :=
  ∀ n, (P14980923887013649639.a n : ℤ) = A287777 (n + 1)

end A287777

/-! ## A287777.P8589432993198584261

`comp[A134860(n+1)]+2+n`
-/

namespace A287777.P8589432993198584261
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134860 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 2 + n

end

end A287777.P8589432993198584261

namespace A287777

/-- `comp[A134860(n+1)]+2+n` -/
def P8589432993198584261.Spec : Prop :=
  ∀ n, (P8589432993198584261.a n : ℤ) = A287777 (n + 1)

end A287777

/-! ## A287777.P8955453920346219329

`comp[A001950(A001950(n+1))-1]+2+n`
-/

namespace A287777.P8955453920346219329
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001950 (A001950 (n + 1)).toNat - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 2 + n

end

end A287777.P8955453920346219329

namespace A287777

/-- `comp[A001950(A001950(n+1))-1]+2+n` -/
def P8955453920346219329.Spec : Prop :=
  ∀ n, (P8955453920346219329.a n : ℤ) = A287777 (n + 1)

end A287777

/-! ## A287777.P126558855319814146

`A188013(n+3)-2+n`
-/

namespace A287777.P126558855319814146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188013 (n + 3) - 2 + (n : ℤ)

end

end A287777.P126558855319814146

namespace A287777

/-- `A188013(n+3)-2+n` -/
def P126558855319814146.Spec : Prop :=
  ∀ n, P126558855319814146.a n = A287777 (n + 1)

end A287777

/-! ## A287777.P6368261553298325665

`A188437(n+4)-2+n`
-/

namespace A287777.P6368261553298325665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188437 (n + 4) - 2 + (n : ℤ)

end

end A287777.P6368261553298325665

namespace A287777

/-- `A188437(n+4)-2+n` -/
def P6368261553298325665.Spec : Prop :=
  ∀ n, P6368261553298325665.a n = A287777 (n + 1)

end A287777

/-! ## A287777.P12847532431854759012

`∑[A000194(Δ[A188032(n+3)])]`
-/

namespace A287777.P12847532431854759012
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188032 (n + 3)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A287777.P12847532431854759012

namespace A287777

/-- `∑[A000194(Δ[A188032(n+3)])]` -/
def P12847532431854759012.Spec : Prop :=
  ∀ n, P12847532431854759012.a n = A287777 (n + 1)

end A287777

/-! ## A287777.P8045272195433864462

`∑[A000040(Δ[A188437(n+3)])]`
-/

namespace A287777.P8045272195433864462
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188437 (n + 3)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A287777.P8045272195433864462

namespace A287777

/-- `∑[A000040(Δ[A188437(n+3)])]` -/
def P8045272195433864462.Spec : Prop :=
  ∀ n, P8045272195433864462.a n = A287777 (n + 1)

end A287777

/-! ## A287777.P13061234344768266997

`∑[A000043(Δ[A188437(n+3)])]`
-/

namespace A287777.P13061234344768266997
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188437 (n + 3)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000043 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A287777.P13061234344768266997

namespace A287777

/-- `∑[A000043(Δ[A188437(n+3)])]` -/
def P13061234344768266997.Spec : Prop :=
  ∀ n, P13061234344768266997.a n = A287777 (n + 1)

end A287777

/-! ## A287777.P4557307420753457206

`A060143(A187951(n+1))+1+n`
-/

namespace A287777.P4557307420753457206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060143 (A187951 (n + 1)).toNat + 1 + (n : ℤ)

end

end A287777.P4557307420753457206

namespace A287777

/-- `A060143(A187951(n+1))+1+n` -/
def P4557307420753457206.Spec : Prop :=
  ∀ n, P4557307420753457206.a n = A287777 (n + 1)

end A287777

/-! ## A287777.P6520737247696871550

`filter[n+1, A287773(#)]`
-/

namespace A287777.P6520737247696871550
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A287773 (f1 j) = 1) n)

end

end A287777.P6520737247696871550

namespace A287777

/-- `filter[n+1, A287773(#)]` -/
def P6520737247696871550.Spec : Prop :=
  ∀ n, (P6520737247696871550.a n : ℤ) = A287777 (n + 1)

end A287777

/-! ## A287777.P1727285573446578489

`A080782(A287792(n+1))`
-/

namespace A287777.P1727285573446578489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080782 (A287792 (n + 1)).toNat

end

end A287777.P1727285573446578489

namespace A287777

/-- `A080782(A287792(n+1))` -/
def P1727285573446578489.Spec : Prop :=
  ∀ n, P1727285573446578489.a n = A287777 (n + 1)

end A287777

/-! ## A287777.P15670494593202845945

`lt[0, A287773(A028310(n))]`
-/

namespace A287777.P15670494593202845945
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287773 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A287777.P15670494593202845945

namespace A287777

/-- `lt[0, A287773(A028310(n))]` -/
def P15670494593202845945.Spec : Prop :=
  ∀ n, (P15670494593202845945.a n : ℤ) = A287777 (n + 1)

end A287777

/-! ## A287777.P11752976374321258662

`∑[A341722(n+1)%2+2]`
-/

namespace A287777.P11752976374321258662
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A341722 (n + 1)) 2 + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A287777.P11752976374321258662

namespace A287777

/-- `∑[A341722(n+1)%2+2]` -/
def P11752976374321258662.Spec : Prop :=
  ∀ n, P11752976374321258662.a n = A287777 (n + 1)

end A287777

/-!
# A287778: Binary representation of the diagonal from the corner to the origin of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 355", based on the 5-celled von Neumann neighborhood.

The programs for A287778, there is no canonical definition to state claims against.
-/

/-! ## A287778.P15187242449296618455

`A007088(A287780(n))`
-/

namespace A287778.P15187242449296618455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A287780 n).toNat

end

end A287778.P15187242449296618455

/-! ## A287778.P3456970895874569374

`A007088(A287188(or(1, n))-A286965(n+1))`
-/

namespace A287778.P3456970895874569374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A287188 (Nat.lor 1 n) - A286965 (n + 1)).toNat

end

end A287778.P3456970895874569374

/-! ## A287778.P14485226350050532905

`A007088(A287189(or(1, n))-A286965(n+1))`
-/

namespace A287778.P14485226350050532905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A287189 (Nat.lor 1 n) - A286965 (n + 1)).toNat

end

end A287778.P14485226350050532905

/-! ## A287778.P9516742565412310931

`A007088(A287188(n+1-n%2)-A286965(n+1))`
-/

namespace A287778.P9516742565412310931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A287188 (n + 1 - n % 2) - A286965 (n + 1)).toNat

end

end A287778.P9516742565412310931

/-! ## A287778.P17895312525762430614

`A185544(2*A287780(n))`
-/

namespace A287778.P17895312525762430614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A287780 n).toNat

end

end A287778.P17895312525762430614

/-!
# A287779: Binary representation of the diagonal from the origin to the corner of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 355", based on the 5-celled von Neumann neighborhood.

The programs for A287779, there is no canonical definition to state claims against.
-/

/-! ## A287779.P9860639662869429608

`A007088(A287781(n))`
-/

namespace A287779.P9860639662869429608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A287781 n).toNat

end

end A287779.P9860639662869429608

/-! ## A287779.P17585690905524325890

`A185544(2*A287781(n))`
-/

namespace A287779.P17585690905524325890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A287781 n).toNat

end

end A287779.P17585690905524325890

/-! ## A287779.P13540534413609305425

`A287849(A002998(n))`
-/

namespace A287779.P13540534413609305425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287849 (A002998 n).toNat

end

end A287779.P13540534413609305425

/-! ## A287779.P907818459835475399

`A287849(A046469(n))`
-/

namespace A287779.P907818459835475399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287849 (A046469 n).toNat

end

end A287779.P907818459835475399

/-! ## A287779.P620997496048120855

`A287849(A061479(n))`
-/

namespace A287779.P620997496048120855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287849 (A061479 n).toNat

end

end A287779.P620997496048120855

/-!
# A287780: Decimal representation of the diagonal from the corner to the origin of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 355", based on the 5-celled von Neumann neighborhood.

The programs for A287780, there is no canonical definition to state claims against.
-/

/-! ## A287780.P13284847592348122673

`A287188(or(1, n))-A286965(n+1)`
-/

namespace A287780.P13284847592348122673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287188 (Nat.lor 1 n) - A286965 (n + 1)

end

end A287780.P13284847592348122673

/-! ## A287780.P12668258980689355267

`A287189(or(1, n))-A286965(n+1)`
-/

namespace A287780.P12668258980689355267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287189 (Nat.lor 1 n) - A286965 (n + 1)

end

end A287780.P12668258980689355267

/-! ## A287780.P9753313378978724357

`A287188(n+1-n%2)-A286965(n+1)`
-/

namespace A287780.P9753313378978724357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287188 (n + 1 - n % 2) - A286965 (n + 1)

end

end A287780.P9753313378978724357

/-! ## A287780.P11292198457353715576

`A287188(n+1-and(1, n))-A286965(n+1)`
-/

namespace A287780.P11292198457353715576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287188 (n + 1 - Nat.land 1 n) - A286965 (n + 1)

end

end A287780.P11292198457353715576

/-! ## A287780.P14097032485782594077

`or(A002262(A000392(n)), A287850(n))`
-/

namespace A287780.P14097032485782594077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A002262 (A000392 n).toNat) (A287850 n)

end

end A287780.P14097032485782594077

/-!
# A287781: Decimal representation of the diagonal from the origin to the corner of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 355", based on the 5-celled von Neumann neighborhood.

The programs for A287781, there is no canonical definition to state claims against.
-/

/-! ## A287781.P13308840028304207735

`A287851(A046469(n))`
-/

namespace A287781.P13308840028304207735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287851 (A046469 n).toNat

end

end A287781.P13308840028304207735

/-! ## A287781.P3155283802188606232

`A287851(A087036(n))`
-/

namespace A287781.P3155283802188606232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287851 (A087036 n).toNat

end

end A287781.P3155283802188606232

/-! ## A287781.P8572369683946918175

`A287851(A087051(n))`
-/

namespace A287781.P8572369683946918175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287851 (A087051 n).toNat

end

end A287781.P8572369683946918175

/-! ## A287781.P16786864795804034359

`A287851(A004893(n+1))`
-/

namespace A287781.P16786864795804034359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287851 (A004893 (n + 1)).toNat

end

end A287781.P16786864795804034359

/-! ## A287781.P6312422765043150760

`A287851(n)%A128027(n+2)`
-/

namespace A287781.P6312422765043150760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A287851 n) (A128027 (n + 2))

end

end A287781.P6312422765043150760

/-!
# A287782: Binary representation of the diagonal from the corner to the origin of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 358", based on the 5-celled von Neumann neighborhood.

The programs for A287782, there is no canonical definition to state claims against.
-/

/-! ## A287782.P7903630452462670889

`A007088(A287784(n))`
-/

namespace A287782.P7903630452462670889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A287784 n).toNat

end

end A287782.P7903630452462670889

/-! ## A287782.P11600236615826239727

`A007088(∑[2^(n+1)-Δ[A289935(n)]])`
-/

namespace A287782.P11600236615826239727
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289935 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ (n + 1) : ℤ) - (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A287782.P11600236615826239727

/-! ## A287782.P9251032903511542827

`A007088(xor(n, 2^(n+2))-(A289935(n+1)+n+1))`
-/

namespace A287782.P9251032903511542827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 ((Nat.xor n (2 ^ (n + 2)) : ℤ) - (A289935 (n + 1) + (n + 1 : ℤ))).toNat

end

end A287782.P9251032903511542827

/-! ## A287782.P4356057021374979278

`A007088(record[A077896(n+2)]-A289935(n+1))`
-/

namespace A287782.P4356057021374979278
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077896 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A289935 (n + 1)).toNat

end

end A287782.P4356057021374979278

/-! ## A287782.P17065899347681760215

`A007088(A077896(2*(n+1))-A289935(n+1))`
-/

namespace A287782.P17065899347681760215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A077896 (2 * (n + 1)) - A289935 (n + 1)).toNat

end

end A287782.P17065899347681760215

/-!
# A287783: Binary representation of the diagonal from the origin to the corner of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 358", based on the 5-celled von Neumann neighborhood.

The programs for A287783, there is no canonical definition to state claims against.
-/

/-! ## A287783.P16664538034738247771

`A007088(A287785(n))`
-/

namespace A287783.P16664538034738247771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A287785 n).toNat

end

end A287783.P16664538034738247771

/-! ## A287783.P5241948109943788643

`A185544(2*A287785(n))`
-/

namespace A287783.P5241948109943788643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A287785 n).toNat

end

end A287783.P5241948109943788643

/-! ## A287783.P5503634656793916700

`A185544(A287785(n)+A287785(n))`
-/

namespace A287783.P5503634656793916700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (A287785 n + A287785 n).toNat

end

end A287783.P5503634656793916700

/-!
# A287784: Decimal representation of the diagonal from the corner to the origin of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 358", based on the 5-celled von Neumann neighborhood.

The programs for A287784, there is no canonical definition to state claims against.
-/

/-! ## A287784.P15898068244578234928

`∑[2^(n+1)-Δ[A289935(n)]]`
-/

namespace A287784.P15898068244578234928
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289935 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ (n + 1) : ℤ) - (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A287784.P15898068244578234928

/-! ## A287784.P7662852167733989559

`xor(n, 2^(n+2))-(A289935(n+1)+n+1)`
-/

namespace A287784.P7662852167733989559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.xor n (2 ^ (n + 2)) : ℤ) - (A289935 (n + 1) + (n + 1 : ℤ))

end

end A287784.P7662852167733989559

/-! ## A287784.P12303710178688073537

`record[A077896(n+2)]-A289935(n+1)`
-/

namespace A287784.P12303710178688073537
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077896 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A289935 (n + 1)

end

end A287784.P12303710178688073537

/-! ## A287784.P10427539479549544486

`A077896(2*(n+1))-A289935(n+1)`
-/

namespace A287784.P10427539479549544486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077896 (2 * (n + 1)) - A289935 (n + 1)

end

end A287784.P10427539479549544486

/-! ## A287784.P6383634646118033280

`A289936(n)-and(A289935(n+1), A289936(n))`
-/

namespace A287784.P6383634646118033280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289936 n - Int.land (A289935 (n + 1)) (A289936 n)

end

end A287784.P6383634646118033280

/-!
# A287786: Binary representation of the diagonal from the corner to the origin of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 361", based on the 5-celled von Neumann neighborhood.

The programs for A287786, there is no canonical definition to state claims against.
-/

/-! ## A287786.P16061411620008572898

`A007088(A287788(n))`
-/

namespace A287786.P16061411620008572898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A287788 n).toNat

end

end A287786.P16061411620008572898

/-! ## A287786.P15960365899261943060

`A185544(2*A287788(n))`
-/

namespace A287786.P15960365899261943060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A287788 n).toNat

end

end A287786.P15960365899261943060

/-! ## A287786.P11858595441406811173

`A288584(n)+A185264(∑[n])`
-/

namespace A287786.P11858595441406811173
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288584 n + A185264 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A287786.P11858595441406811173

/-!
# A287787: Binary representation of the diagonal from the origin to the corner of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 361", based on the 5-celled von Neumann neighborhood.

The programs for A287787, there is no canonical definition to state claims against.
-/

/-! ## A287787.P494080437070828917

`A007088(A287789(n))`
-/

namespace A287787.P494080437070828917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A287789 n).toNat

end

end A287787.P494080437070828917

/-! ## A287787.P8887053772226546194

`A185544(2*A287789(n))`
-/

namespace A287787.P8887053772226546194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A287789 n).toNat

end

end A287787.P8887053772226546194

/-!
# A287788: Decimal representation of the diagonal from the corner to the origin of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 361", based on the 5-celled von Neumann neighborhood.

The programs for A287788, there is no canonical definition to state claims against.
-/

/-! ## A287788.P11071881328601313567

`A285818(n)+A285797(A285852(2*(n+1)))`
-/

namespace A287788.P11071881328601313567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285818 n + A285797 (A285852 (2 * (n + 1))).toNat

end

end A287788.P11071881328601313567

/-! ## A287788.P2924408193258005073

`or(A185264(∑[n]), A285827(n))`
-/

namespace A287788.P2924408193258005073
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A185264 (∑ j ∈ Finset.range (n + 1), f1 j)) (A285827 n)

end

end A287788.P2924408193258005073

/-! ## A287788.P1586825184608289202

`or(A185264(∑[n]), A288586(n))`
-/

namespace A287788.P1586825184608289202
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A185264 (∑ j ∈ Finset.range (n + 1), f1 j)) (A288586 n)

end

end A287788.P1586825184608289202

/-! ## A287788.P14830032119325169063

`A341025(A102726(n))+A285827(n)`
-/

namespace A287788.P14830032119325169063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341025 ((A102726 n).toNat + 120) + A285827 n

end

end A287788.P14830032119325169063

/-!
# A287790: {0->001, 1->110}-transform of the infinite Fibonacci word A003849.

The programs for A287790, the canonical program `A287790.P4979616440180160803` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A287790 has offset 1).

The definition of A287790 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A287790.P4071971545758572760

`A287773(char[3*n]+n)`
-/

namespace A287790.P4071971545758572760
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287773 ((if ∃ j, f1 j = n then 1 else 0) + n)

end

end A287790.P4071971545758572760

namespace A287790

/-- `A287773(char[3*n]+n)` -/
def P4071971545758572760.Spec : Prop :=
  ∀ n, P4071971545758572760.a n = A287790 (n + 1)

end A287790

/-! ## A287790.P4979616440180160803

`A287657(A004396(n+1))`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A287790

/-- `A287657(A004396(n+1))` -/
def P4979616440180160803.Spec : Prop :=
  ∀ n, P4979616440180160803.a n = A287790 (n + 1)

theorem P4979616440180160803.correct : P4979616440180160803.Spec := by
  intro n
  simp only [A287790, Nat.add_sub_cancel]

end A287790

/-! ## A287790.P11152361230428700408

`xor(A011655(n), A287773(n+1))`
-/

namespace A287790.P11152361230428700408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A011655 n) (A287773 (n + 1))

end

end A287790.P11152361230428700408

namespace A287790

/-- `xor(A011655(n), A287773(n+1))` -/
def P11152361230428700408.Spec : Prop :=
  ∀ n, P11152361230428700408.a n = A287790 (n + 1)

end A287790

/-! ## A287790.P2125534534758350091

`xor(A079978(n), A287795(n+1))`
-/

namespace A287790.P2125534534758350091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A079978 n) (A287795 (n + 1))

end

end A287790.P2125534534758350091

namespace A287790

/-- `xor(A079978(n), A287795(n+1))` -/
def P2125534534758350091.Spec : Prop :=
  ∀ n, P2125534534758350091.a n = A287790 (n + 1)

end A287790

/-! ## A287790.P5109158010560022074

`A287657(A274616(n+1))`
-/

namespace A287790.P5109158010560022074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287657 (A274616 (n + 1)).toNat

end

end A287790.P5109158010560022074

namespace A287790

/-- `A287657(A274616(n+1))` -/
def P5109158010560022074.Spec : Prop :=
  ∀ n, P5109158010560022074.a n = A287790 (n + 1)

end A287790

/-!
# A287791: Positions of 0 in A287790; complement of A287792.

The programs for A287791, the canonical program `A287791.P11213097191955050961` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A287791 has offset 1).

The definition of A287791 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A287791.P9428105398831512916

`∑[A159917(n)+1]-A003849(n)`
-/

namespace A287791.P9428105398831512916
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159917 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A003849 n

end

end A287791.P9428105398831512916

namespace A287791

/-- `∑[A159917(n)+1]-A003849(n)` -/
def P9428105398831512916.Spec : Prop :=
  ∀ n, P9428105398831512916.a n = A287791 (n + 1)

end A287791

/-! ## A287791.P11213097191955050961

`A050140(A001950(n+1)-A050140(n+1))+n`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A287791

/-- `A050140(A001950(n+1)-A050140(n+1))+n` -/
def P11213097191955050961.Spec : Prop :=
  ∀ n, P11213097191955050961.a n = A287791 (n + 1)

theorem P11213097191955050961.correct : P11213097191955050961.Spec := by
  intro n
  simp only [A287791, Nat.add_sub_cancel]

end A287791

/-! ## A287791.P17966157870623073422

`A050140(A189663(n+2))+n`
-/

namespace A287791.P17966157870623073422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050140 (A189663 (n + 2)).toNat + (n : ℤ)

end

end A287791.P17966157870623073422

namespace A287791

/-- `A050140(A189663(n+2))+n` -/
def P17966157870623073422.Spec : Prop :=
  ∀ n, P17966157870623073422.a n = A287791 (n + 1)

end A287791

/-! ## A287791.P17502155662255803304

`∑[A159917(n)+1-Δ[A188432(n+1)]]`
-/

namespace A287791.P17502155662255803304
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188432 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159917 n + (1 - (f2 (n + 1) - f2 n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A287791.P17502155662255803304

namespace A287791

/-- `∑[A159917(n)+1-Δ[A188432(n+1)]]` -/
def P17502155662255803304.Spec : Prop :=
  ∀ n, P17502155662255803304.a n = A287791 (n + 1)

end A287791

/-! ## A287791.P2124908948903373609

`∑[A003714(n)%4+1-Δ[A188432(n+1)]]`
-/

namespace A287791.P2124908948903373609
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188432 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A003714 n) 4 + (1 - (f2 (n + 1) - f2 n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A287791.P2124908948903373609

namespace A287791

/-- `∑[A003714(n)%4+1-Δ[A188432(n+1)]]` -/
def P2124908948903373609.Spec : Prop :=
  ∀ n, P2124908948903373609.a n = A287791 (n + 1)

end A287791

/-! ## A287791.P5952143760475766535

`lt[n*A287790(n+1), 1]+1`
-/

namespace A287791.P5952143760475766535
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A287790 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A287791.P5952143760475766535

namespace A287791

/-- `lt[n*A287790(n+1), 1]+1` -/
def P5952143760475766535.Spec : Prop :=
  ∀ n, (P5952143760475766535.a n : ℤ) = A287791 (n + 1)

end A287791

/-! ## A287791.P1916693092656423919

`A080782(A287774(n+1))`
-/

namespace A287791.P1916693092656423919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080782 (A287774 (n + 1)).toNat

end

end A287791.P1916693092656423919

namespace A287791

/-- `A080782(A287774(n+1))` -/
def P1916693092656423919.Spec : Prop :=
  ∀ n, P1916693092656423919.a n = A287791 (n + 1)

end A287791

/-! ## A287791.P1156821217485795041

`∑[A159917(n)+A120614(n+1)]`
-/

namespace A287791.P1156821217485795041
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159917 n + A120614 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A287791.P1156821217485795041

namespace A287791

/-- `∑[A159917(n)+A120614(n+1)]` -/
def P1156821217485795041.Spec : Prop :=
  ∀ n, P1156821217485795041.a n = A287791 (n + 1)

end A287791

/-! ## A287791.P1034941791194023450

`∑[A270788(n+1)]-A003849(n)`
-/

namespace A287791.P1034941791194023450
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270788 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A003849 n

end

end A287791.P1034941791194023450

namespace A287791

/-- `∑[A270788(n+1)]-A003849(n)` -/
def P1034941791194023450.Spec : Prop :=
  ∀ n, P1034941791194023450.a n = A287791 (n + 1)

end A287791

/-! ## A287791.P14843508217013500984

`∑[A270788(n+1)]+A005614(n)-1`
-/

namespace A287791.P14843508217013500984
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270788 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (A005614 n - 1)

end

end A287791.P14843508217013500984

namespace A287791

/-- `∑[A270788(n+1)]+A005614(n)-1` -/
def P14843508217013500984.Spec : Prop :=
  ∀ n, P14843508217013500984.a n = A287791 (n + 1)

end A287791

/-! ## A287791.P10791943430104173732

`∑[A270788(n+1)]-A003714(n)%2`
-/

namespace A287791.P10791943430104173732
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270788 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - Int.tmod (A003714 n) 2

end

end A287791.P10791943430104173732

namespace A287791

/-- `∑[A270788(n+1)]-A003714(n)%2` -/
def P10791943430104173732.Spec : Prop :=
  ∀ n, P10791943430104173732.a n = A287791 (n + 1)

end A287791

/-! ## A287791.P14359466459283036270

`∑[A270788(n+1)]-(1-Δ[A005206(n)])`
-/

namespace A287791.P14359466459283036270
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270788 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005206 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (1 - (f2 (n + 1) - f2 n))

end

end A287791.P14359466459283036270

namespace A287791

/-- `∑[A270788(n+1)]-(1-Δ[A005206(n)])` -/
def P14359466459283036270.Spec : Prop :=
  ∀ n, P14359466459283036270.a n = A287791 (n + 1)

end A287791

/-! ## A287791.P1010719072089959444

`∑[A006519(A003714(n)+A003188(a(n-1))+1)]` with `a(0)=1`
-/

namespace A287791.P1010719072089959444
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A006519 (A003714 n + A003188 (f1 (n - 1)).toNat + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A287791.P1010719072089959444

namespace A287791

/-- `∑[A006519(A003714(n)+A003188(a(n-1))+1)]` -/
def P1010719072089959444.Spec : Prop :=
  ∀ n, P1010719072089959444.a n = A287791 (n + 1)

end A287791

/-!
# A287792: Positions of 1 in A287790; complement of A287791.

The programs for A287792, the canonical program `A287792.P12296564877876071040` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A287792 has offset 1).

The definition of A287792 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6910 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A287792.P12296564877876071040

`∩[A287802(n+1)+1, A287802(n+1)]`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A287792

/-- `∩[A287802(n+1)+1, A287802(n+1)]` -/
def P12296564877876071040.Spec : Prop :=
  ∀ n, (P12296564877876071040.a n : ℤ) = A287792 (n + 1)

theorem P12296564877876071040.correct : P12296564877876071040.Spec := by
  intro n
  simp only [A287792, Nat.add_sub_cancel]

end A287792

/-! ## A287792.P7851382357601988844

`filter[n+1, A287790(#)]`
-/

namespace A287792.P7851382357601988844
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A287790 (f1 j) = 1) n)

end

end A287792.P7851382357601988844

namespace A287792

/-- `filter[n+1, A287790(#)]` -/
def P7851382357601988844.Spec : Prop :=
  ∀ n, (P7851382357601988844.a n : ℤ) = A287792 (n + 1)

end A287792

/-! ## A287792.P8384987360842656523

`lt[1, n*A287790(n+1)]+1`
-/

namespace A287792.P8384987360842656523
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A287790 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A287792.P8384987360842656523

namespace A287792

/-- `lt[1, n*A287790(n+1)]+1` -/
def P8384987360842656523.Spec : Prop :=
  ∀ n, (P8384987360842656523.a n : ℤ) = A287792 (n + 1)

end A287792

/-! ## A287792.P14303740088817198742

`eq[n+1, (n+1)*A287790(n+2)]+2`
-/

namespace A287792.P14303740088817198742
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A287790 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A287792.P14303740088817198742

namespace A287792

/-- `eq[n+1, (n+1)*A287790(n+2)]+2` -/
def P14303740088817198742.Spec : Prop :=
  ∀ n, (P14303740088817198742.a n : ℤ) = A287792 (n + 1)

end A287792

/-! ## A287792.P17912405289139725559

`A080782(A287777(n+1))`
-/

namespace A287792.P17912405289139725559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080782 (A287777 (n + 1)).toNat

end

end A287792.P17912405289139725559

namespace A287792

/-- `A080782(A287777(n+1))` -/
def P17912405289139725559.Spec : Prop :=
  ∀ n, P17912405289139725559.a n = A287792 (n + 1)

end A287792

/-! ## A287792.P405805591062914637

`eq[1, A287790(n-A086767(a(n-1))+1)]` with `a(0)=2`
-/

namespace A287792.P405805591062914637
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f2 =>
  A287790 ((n : ℤ) - A086767 (f2 (n - 1)).toNat + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A287792.P405805591062914637

namespace A287792

/-- `eq[1, A287790(n-A086767(a(n-1))+1)]` -/
def P405805591062914637.Spec : Prop :=
  ∀ n, (P405805591062914637.a n : ℤ) = A287792 (n + 1)

end A287792

/-! ## A287792.P2634409983929065197

`eq[1, A287790(n-A000188(a(n-1)+1)+1)]` with `a(0)=2`
-/

namespace A287792.P2634409983929065197
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f2 =>
  A287790 ((n : ℤ) - A000188 (f2 (n - 1) + 1).toNat + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A287792.P2634409983929065197

namespace A287792

/-- `eq[1, A287790(n-A000188(a(n-1)+1)+1)]` -/
def P2634409983929065197.Spec : Prop :=
  ∀ n, (P2634409983929065197.a n : ℤ) = A287792 (n + 1)

end A287792

/-!
# A287795: {0->101, 1->010}-transform of the infinite Fibonacci word A003849.

The programs for A287795, the canonical program `A287795.P10719789566400101505` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A287795 has offset 1).

The definition of A287795 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A287795.P674093464599073914

`1-A287773(n+1)`
-/

namespace A287795.P674093464599073914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A287773 (n + 1)

end

end A287795.P674093464599073914

namespace A287795

/-- `1-A287773(n+1)` -/
def P674093464599073914.Spec : Prop :=
  ∀ n, P674093464599073914.a n = A287795 (n + 1)

end A287795

/-! ## A287795.P10719789566400101505

`1-A287657(A133310(n))`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A287795

/-- `1-A287657(A133310(n))` -/
def P10719789566400101505.Spec : Prop :=
  ∀ n, P10719789566400101505.a n = A287795 (n + 1)

theorem P10719789566400101505.correct : P10719789566400101505.Spec := by
  intro n
  simp only [A287795, Nat.add_sub_cancel]

end A287795

/-! ## A287795.P7778107631141205776

`1-A287790(A080782(n+1))`
-/

namespace A287795.P7778107631141205776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A287790 (A080782 (n + 1)).toNat

end

end A287795.P7778107631141205776

namespace A287795

/-- `1-A287790(A080782(n+1))` -/
def P7778107631141205776.Spec : Prop :=
  ∀ n, P7778107631141205776.a n = A287795 (n + 1)

end A287795

/-! ## A287795.P248511680250651326

`xor(A079978(n), A287790(n+1))`
-/

namespace A287795.P248511680250651326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A079978 n) (A287790 (n + 1))

end

end A287795.P248511680250651326

namespace A287795

/-- `xor(A079978(n), A287790(n+1))` -/
def P248511680250651326.Spec : Prop :=
  ∀ n, P248511680250651326.a n = A287795 (n + 1)

end A287795

/-! ## A287795.P9265646600993272522

`and(1, A287773(n+1)+A008288(n))`
-/

namespace A287795.P9265646600993272522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A287773 (n + 1) + A008288 n)

end

end A287795.P9265646600993272522

namespace A287795

/-- `and(1, A287773(n+1)+A008288(n))` -/
def P9265646600993272522.Spec : Prop :=
  ∀ n, P9265646600993272522.a n = A287795 (n + 1)

end A287795

/-! ## A287795.P2395287060270741923

`A287657(A131380(n+1))`
-/

namespace A287795.P2395287060270741923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287657 (A131380 (n + 1)).toNat

end

end A287795.P2395287060270741923

namespace A287795

/-- `A287657(A131380(n+1))` -/
def P2395287060270741923.Spec : Prop :=
  ∀ n, P2395287060270741923.a n = A287795 (n + 1)

end A287795

/-! ## A287795.P6892781783966260545

`1-A287790(A130508(n+1))`
-/

namespace A287795.P6892781783966260545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A287790 (A130508 (n + 1)).toNat

end

end A287795.P6892781783966260545

namespace A287795

/-- `1-A287790(A130508(n+1))` -/
def P6892781783966260545.Spec : Prop :=
  ∀ n, P6892781783966260545.a n = A287795 (n + 1)

end A287795

/-! ## A287795.P1009743007075263408

`A188432(A187953(n+2))`
-/

namespace A287795.P1009743007075263408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188432 (A187953 (n + 2)).toNat

end

end A287795.P1009743007075263408

namespace A287795

/-- `A188432(A187953(n+2))` -/
def P1009743007075263408.Spec : Prop :=
  ∀ n, P1009743007075263408.a n = A287795 (n + 1)

end A287795

/-! ## A287795.P1496743739052964707

`A189661(A187953(n+2)+1)`
-/

namespace A287795.P1496743739052964707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189661 (A187953 (n + 2) + 1).toNat

end

end A287795.P1496743739052964707

namespace A287795

/-- `A189661(A187953(n+2)+1)` -/
def P1496743739052964707.Spec : Prop :=
  ∀ n, P1496743739052964707.a n = A287795 (n + 1)

end A287795

/-! ## A287795.P480656775215750123

`A287773(A287777(n+1)+A287773(n+1))`
-/

namespace A287795.P480656775215750123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287773 (A287777 (n + 1) + A287773 (n + 1)).toNat

end

end A287795.P480656775215750123

namespace A287795

/-- `A287773(A287777(n+1)+A287773(n+1))` -/
def P480656775215750123.Spec : Prop :=
  ∀ n, P480656775215750123.a n = A287795 (n + 1)

end A287795

/-!
# A287798: Least k such that A006667(k)/A006577(k) = 1/n.

The programs for A287798, the canonical program `A287798.P13047979279342489749` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A287798 has offset 3).

The definition of A287798 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A287798.P13047979279342489749

`2*a(n-1)` with `a(0)=159, a(1)=6, a(2)=5`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A287798

/-- `2*a(n-1)` -/
def P13047979279342489749.Spec : Prop :=
  ∀ n, (P13047979279342489749.a n : ℤ) = A287798 (n + 3)

theorem P13047979279342489749.correct : P13047979279342489749.Spec := by
  intro n
  simp only [A287798, Nat.add_sub_cancel]

end A287798

/-!
# A287799: If x^2 + 2*y^2 is prime for all positive integers x and y with m = x*y then m is in the sequence.

The programs for A287799, there is no canonical definition to state claims against.
-/

/-! ## A287799.P12537093673086528957

`A015922(eq[A278700(3*n+2), A296150(n+1)])`
-/

namespace A287799.P12537093673086528957
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278700 (3 * n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296150 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015922 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A287799.P12537093673086528957

