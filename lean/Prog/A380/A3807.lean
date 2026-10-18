import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C005
import Seq.B000.C007
import Seq.B000.C008
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C018
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C025
import Seq.B000.C030
import Seq.B000.C033
import Seq.B000.C035
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C005
import Seq.B001.C009
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C001
import Seq.B007.C000
import Seq.B007.C001
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
# A380706: n is the a(n)-th nonnegative integer having its set of decimal digits.

The programs for A380706, there is no canonical definition to state claims against.
-/

/-! ## A380706.P14312791718751837966

`gcd(∑{digits}[9*n, #/9], A255468(n²))`
-/

namespace A380706.P14312791718751837966
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (SequenceMachineLib.roundAway ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => (x : ℚ) / 9).sum) (A255468 (n ^ 2))

end

end A380706.P14312791718751837966

/-! ## A380706.P11443455023926438208

`A001168(∑{digits}[9*n, #/9]%A308220(n+1))`
-/

namespace A380706.P11443455023926438208
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001168 (Int.tmod (SequenceMachineLib.roundAway ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => (x : ℚ) / 9).sum) (A308220 (n + 1))).toNat

end

end A380706.P11443455023926438208

/-! ## A380706.P9183602000086146172

`A095827(A118763(n)+1)+A000007(n)`
-/

namespace A380706.P9183602000086146172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095827 (A118763 n + 1).toNat + A000007 n

end

end A380706.P9183602000086146172

/-! ## A380706.P12142921456514343328

`A000007(n)+A055640(n)/A140356(A213217(n))`
-/

namespace A380706.P12142921456514343328
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000007 n : ℚ) + (A055640 n : ℚ) / (A140356 (A213217 n).toNat : ℚ)

end

end A380706.P12142921456514343328

/-! ## A380706.P4109981648914796473

`A343639(C(A089840(n), n)+n)`
-/

namespace A380706.P4109981648914796473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343639 (Nat.choose (A089840 n).toNat n + n)

end

end A380706.P4109981648914796473

/-! ## A380706.P11876243693115060743

`A326307(A073731(n))`
-/

namespace A380706.P11876243693115060743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326307 (A073731 (n + 10)).toNat

end

end A380706.P11876243693115060743

/-! ## A380706.P3881684124556476021

`∑{digits}[9*n, #/9]^A001221(2^∑{digits}[n, #%C(n, #)])`
-/

namespace A380706.P3881684124556476021
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9 * n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => (x : ℚ) / 9).sum ^ (A001221 (2 ^ ((SequenceMachineLib.digits10 (f2 n)).map fun (x : ℕ) => x % Nat.choose n x).sum) : ℤ)

end

end A380706.P3881684124556476021

/-! ## A380706.P419731576667399238

`gcd(A001411(n), A343639(n))`
-/

namespace A380706.P419731576667399238
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A001411 n) (A343639 n)

end

end A380706.P419731576667399238

/-! ## A380706.P6804231118819591653

`A326307(A215537(n+1))`
-/

namespace A380706.P6804231118819591653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326307 (A215537 (n + 1)).toNat

end

end A380706.P6804231118819591653

/-!
# A380707: a(n) = [x^n] Product_{k=0..n} (1 + (n^2+k)*x).

The programs for A380707, there is no canonical definition to state claims against.
-/

/-! ## A380707.P17800991479201084772

`A382347(∑[4*n])`
-/

namespace A380707.P17800991479201084772
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382347 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A380707.P17800991479201084772

/-!
# A380709: G.f. A(x) satisfies A(x) = 1 + x*abs( 1/A(x) )^3.

The programs for A380709, there is no canonical definition to state claims against.
-/

/-! ## A380709.P18369040122297299679

`A054237(A307494(n))`
-/

namespace A380709.P18369040122297299679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054237 (A307494 n).toNat

end

end A380709.P18369040122297299679

/-! ## A380709.P6366590272722117876

`A020651(A334877(n+2))-A061775(2*n+1)`
-/

namespace A380709.P6366590272722117876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020651 (A334877 (n + 2)).toNat - A061775 (2 * n + 1)

end

end A380709.P6366590272722117876

/-!
# A380710: G.f. A(x) satisfies A(x) = 1 + x*A(x)*abs( 1/A(x)^2 ).

The programs for A380710, there is no canonical definition to state claims against.
-/

/-! ## A380710.P9182589448738576457

`A067086(A149579(n))`
-/

namespace A380710.P9182589448738576457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067086 (A149579 n).toNat

end

end A380710.P9182589448738576457

/-! ## A380710.P3012381407278078887

`A274829(A062424(n+2))`
-/

namespace A380710.P3012381407278078887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274829 (A062424 (n + 2)).toNat

end

end A380710.P3012381407278078887

/-! ## A380710.P17475750036042334172

`A014396(n)-A093354(A241114(n+1))`
-/

namespace A380710.P17475750036042334172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014396 n - A093354 (A241114 (n + 1)).toNat

end

end A380710.P17475750036042334172

/-!
# A380711: G.f. A(x) satisfies A(x) = 1 + x*A(x)*abs( 1/A(x)^3 ).

The programs for A380711, there is no canonical definition to state claims against.
-/

/-! ## A380711.P4425489239735843399

`A144000(A148977(n+1))`
-/

namespace A380711.P4425489239735843399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144000 (A148977 (n + 1)).toNat

end

end A380711.P4425489239735843399

/-! ## A380711.P17256440142405719732

`A372619(A051053(6*n+1)/(6*n+1))`
-/

namespace A380711.P17256440142405719732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372619 (SequenceMachineLib.roundAway ((A051053 (6 * n + 1) : ℚ) / (6 * n + 1 : ℚ))).toNat

end

end A380711.P17256440142405719732

/-!
# A380712: G.f. A(x) satisfies 1/2 = Sum_{n=-oo..+oo} (-1)^(n-1) * x^(2*n) * (A(x) + x^n)^(n-1).

The programs for A380712, there is no canonical definition to state claims against.
-/

/-! ## A380712.P6760839389284639247

`A245092(A217806(n+1)*(n+1))`
-/

namespace A380712.P6760839389284639247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245092 (A217806 (n + 1) * (n + 1 : ℤ)).toNat

end

end A380712.P6760839389284639247

/-!
# A380713: Lesser of twin self primes, i.e., smaller member of the pair of self primes differing by 2.

The programs for A380713, there is no canonical definition to state claims against.
-/

/-! ## A380713.P15802503127844837747

`A380715(n+1)-2`
-/

namespace A380713.P15802503127844837747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380715 (n + 1) - 2

end

end A380713.P15802503127844837747

/-!
# A380714: a(n) = n*(n-1) mod (10^m-1) where m is the number of decimal digits in n.

The programs for A380714, there is no canonical definition to state claims against.
-/

/-! ## A380714.P8873997770350959258

`A059729(n+1)-A088519(A059729(n+1))`
-/

namespace A380714.P8873997770350959258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059729 (n + 1) - A088519 (A059729 (n + 1)).toNat

end

end A380714.P8873997770350959258

/-!
# A380715: Greater of twin self primes, i.e., larger member of the pair of self primes differing by 2.

The programs for A380715, there is no canonical definition to state claims against.
-/

/-! ## A380715.P16274455939034701499

`A380713(n+1)+2`
-/

namespace A380715.P16274455939034701499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380713 (n + 1) + 2

end

end A380715.P16274455939034701499

/-! ## A380715.P14829538349655234151

`A007429(A380713(n+1))`
-/

namespace A380715.P14829538349655234151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007429 (A380713 (n + 1)).toNat

end

end A380715.P14829538349655234151

/-!
# A380717: E.g.f. A(x) satisfies A(x) = exp(x * A(x)^2 * (1 - x*A(x))^2) / (1 - x*A(x)).

The programs for A380717, there is no canonical definition to state claims against.
-/

/-! ## A380717.P5359726493161830456

`A060681(A144097(n))+A014062(n)`
-/

namespace A380717.P5359726493161830456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060681 (A144097 n).toNat + A014062 n

end

end A380717.P5359726493161830456

/-!
# A380718: E.g.f. A(x) satisfies A(x) = exp(x * A(x)^2) / (1 - x*A(x)).

The programs for A380718, there is no canonical definition to state claims against.
-/

/-! ## A380718.P7551132322146977556

`A206907(A372279(n))+A000045(n)`
-/

namespace A380718.P7551132322146977556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206907 (A372279 n).toNat + A000045 n

end

end A380718.P7551132322146977556

/-!
# A380719: E.g.f. A(x) satisfies A(x) = exp(x / (1 - x*A(x))^2) / (1 - x*A(x)).

The programs for A380719, there is no canonical definition to state claims against.
-/

/-! ## A380719.P6390944081348636722

`A316701(n)-A395304(A029761(n))`
-/

namespace A380719.P6390944081348636722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316701 n - A395304 (A029761 n).toNat

end

end A380719.P6390944081348636722

/-!
# A380725: Positive integers k whose sum of digits equals the square of their number of digits.

The programs for A380725, the canonical program `A380725.P7158320234330131983` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A380725 has offset 1).

The definition of A380725 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 614 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A380725.P11142507142295973327

`eq[A055642(n), A371383(n)]`
-/

namespace A380725.P11142507142295973327
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371383 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A380725.P11142507142295973327

namespace A380725

/-- `eq[A055642(n), A371383(n)]` -/
def P11142507142295973327.Spec : Prop :=
  ∀ n, (P11142507142295973327.a n : ℤ) = A380725 (n + 1)

end A380725

/-! ## A380725.P14780810417700170703

`eq[A055642(n), A375968(n)]`
-/

namespace A380725.P14780810417700170703
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375968 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A380725.P14780810417700170703

namespace A380725

/-- `eq[A055642(n), A375968(n)]` -/
def P14780810417700170703.Spec : Prop :=
  ∀ n, (P14780810417700170703.a n : ℤ) = A380725 (n + 1)

end A380725

/-! ## A380725.P7158320234330131983

`eq[A055642(n)², A007953(n)]`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A380725

/-- `eq[A055642(n)², A007953(n)]` -/
def P7158320234330131983.Spec : Prop :=
  ∀ n, (P7158320234330131983.a n : ℤ) = A380725 (n + 1)

theorem P7158320234330131983.correct : P7158320234330131983.Spec := by
  intro n
  simp only [A380725, Nat.add_sub_cancel]

end A380725

/-! ## A380725.P13917483907063834157

`eq[sqrt(A007953(n)), A055642(n+3)]`
-/

namespace A380725.P13917483907063834157
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A007953 n : ℝ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 (n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℝ)) n

end

end A380725.P13917483907063834157

namespace A380725

/-- `eq[sqrt(A007953(n)), A055642(n+3)]` -/
def P13917483907063834157.Spec : Prop :=
  ∀ n, (P13917483907063834157.a n : ℤ) = A380725 (n + 1)

end A380725

/-! ## A380725.P473621287369459496

`eq[1-A160941(n+1)+n, A055642(n)²]`
-/

namespace A380725.P473621287369459496
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A160941 (n + 1) + (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A380725.P473621287369459496

namespace A380725

/-- `eq[1-A160941(n+1)+n, A055642(n)²]` -/
def P473621287369459496.Spec : Prop :=
  ∀ n, (P473621287369459496.a n : ℤ) = A380725 (n + 1)

end A380725

/-!
# A380730: Numbers k such that the greatest prime dividing k is smaller than the minimum exponent in the prime factorization of k.

The programs for A380730, there is no canonical definition to state claims against.
-/

/-! ## A380730.P11606758917405420226

`∩[A000027(A054743(n+1)), A001597(n+3)]`
-/

namespace A380730.P11606758917405420226
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A054743 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001597 (n + 3)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A380730.P11606758917405420226

/-! ## A380730.P7337220616920623684

`∩[A054743(n+1), A378250(n+1)]`
-/

namespace A380730.P7337220616920623684
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054743 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378250 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A380730.P7337220616920623684

/-!
# A380731: Numbers k such that the largest prime dividing k is smaller than or equal to the minimum exponent in the prime factorization of k.

The programs for A380731, there is no canonical definition to state claims against.
-/

/-! ## A380731.P171893284831618871

`filter[A380732(n+1), A236861(#)]`
-/

namespace A380731.P171893284831618871
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380732 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A236861 (f1 j).toNat = 1) n)

end

end A380731.P171893284831618871

/-! ## A380731.P9830589995326762775

`∩[A275199(n+1), A380732(n+1)]`
-/

namespace A380731.P9830589995326762775
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275199 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380732 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A380731.P9830589995326762775

/-! ## A380731.P6437876343267724260

`∩[A097755(n+1), A380732(n+1)]`
-/

namespace A380731.P6437876343267724260
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097755 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380732 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A380731.P6437876343267724260

/-! ## A380731.P1701929394538416112

`∩[A269804(n+1), A380732(n+1)]`
-/

namespace A380731.P1701929394538416112
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269804 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380732 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A380731.P1701929394538416112

/-! ## A380731.P2641926564924631692

`∩[A356940(n+1), A380732(n+1)]`
-/

namespace A380731.P2641926564924631692
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356940 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380732 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A380731.P2641926564924631692

/-!
# A380733: Numbers k such that the prime index of the largest prime dividing k is smaller than or equal to the minimum exponent in the prime factorization of k; a(1) = 1 by convention.

The programs for A380733, there is no canonical definition to state claims against.
-/

/-! ## A380733.P18301764756866305312

`lt[A061395(n+1)-A051904(n+1), 1]+1`
-/

namespace A380733.P18301764756866305312
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (n + 1) - A051904 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A380733.P18301764756866305312

/-! ## A380733.P2623701378600606857

`∩[A318612(n+1), A324525(n+1)]`
-/

namespace A380733.P2623701378600606857
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318612 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324525 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A380733.P2623701378600606857

/-! ## A380733.P17567029938693832748

`A324525(comp[A348048(n+4)-A233564(n+1)])`
-/

namespace A380733.P17567029938693832748
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348048 (n + 4) - A233564 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324525 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A380733.P17567029938693832748

/-! ## A380733.P16993951908013165764

`∩[A068317(n+1), A168496(n+1)]`
-/

namespace A380733.P16993951908013165764
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068317 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168496 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A380733.P16993951908013165764

/-! ## A380733.P3826179642868251524

`record[A000188((n+1)*A000188(n+1))]`
-/

namespace A380733.P3826179642868251524
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000188 ((n + 1 : ℤ) * A000188 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A380733.P3826179642868251524

/-!
# A380743: Integers m such that A379816(m) != A379815(m) + m.

The programs for A380743, there is no canonical definition to state claims against.
-/

/-! ## A380743.P5091211281278238304

`lt[A163077(n+1), A353757(n+1)+1]+1`
-/

namespace A380743.P5091211281278238304
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163077 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353757 (n + 1) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A380743.P5091211281278238304

/-! ## A380743.P7186647532175024790

`∪[A060687(n+1), A000005(A127637(n))]`
-/

namespace A380743.P7186647532175024790
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060687 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A127637 n).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A380743.P7186647532175024790

/-! ## A380743.P3474745634179768298

`∪[A183095(A332462(2^n)), A060687(n+1)]`
-/

namespace A380743.P3474745634179768298
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183095 (A332462 (2 ^ n)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060687 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A380743.P3474745634179768298

/-!
# A380747: Array read by ascending antidiagonals: A(n,k) = [x^n] (1 - x)/(1 - k*x)^2.

The programs for A380747, there is no canonical definition to state claims against.
-/

/-! ## A380747.P18042293122192455666

`A361953(n)-A048298(A362002(n+1))`
-/

namespace A380747.P18042293122192455666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361953 n - A048298 (A362002 (n + 1)).toNat

end

end A380747.P18042293122192455666

/-! ## A380747.P5739132132858672832

`(A048993(n)-char[1])^A105373(3*n+4)`
-/

namespace A380747.P5739132132858672832
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A048993 n - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) : ℚ) ^ (A105373 (3 * n + 4) : ℤ)

end

end A380747.P5739132132858672832

/-! ## A380747.P2550194158061123940

`A090181(n)+A056594(A046890(n))`
-/

namespace A380747.P2550194158061123940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090181 n + A056594 (A046890 n).toNat

end

end A380747.P2550194158061123940

/-! ## A380747.P12751191789592298516

`A090181(n)-A010051(A001444(n))`
-/

namespace A380747.P12751191789592298516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090181 n - A010051 (A001444 n).toNat

end

end A380747.P12751191789592298516

/-! ## A380747.P5326555772169478794

`A048993(n)-A000007(A078104(n))`
-/

namespace A380747.P5326555772169478794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048993 n - A000007 (A078104 n).toNat

end

end A380747.P5326555772169478794

/-!
# A380748: Antidiagonal sums of A380747.

The programs for A380748, there is no canonical definition to state claims against.
-/

/-! ## A380748.P7902080792221122283

`A089246(∑[n+1]+1)`
-/

namespace A380748.P7902080792221122283
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089246 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A380748.P7902080792221122283

/-! ## A380748.P18088116063645599179

`A346661(n)-A010051(A346626(n))`
-/

namespace A380748.P18088116063645599179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346661 n - A010051 (A346626 n).toNat

end

end A380748.P18088116063645599179

/-! ## A380748.P1775290873147342972

`A346661(n)-A091225(A346647(n))`
-/

namespace A380748.P1775290873147342972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346661 n - A091225 (A346647 n).toNat

end

end A380748.P1775290873147342972

/-!
# A380751: Lexicographically earliest sequence of positive integers such that for any value k, no two sets of one or more indices at which k occurs have the same sum.

The programs for A380751, there is no canonical definition to state claims against.
-/

/-! ## A380751.P11002680941465368800

`A124736(A124759(2*(n+1))*A124774(n))`
-/

namespace A380751.P11002680941465368800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124736 (A124759 (2 * (n + 1)) * A124774 n).toNat

end

end A380751.P11002680941465368800

/-!
# A380757: Powers of primes that have a primitive root.

The programs for A380757, the canonical program `A380757.P2652712543063746150` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A380757 has offset 1).

The definition of A380757 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A380757.P2652712543063746150

`∪[A000430(n+1), A061345(n)]`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A380757

/-- `∪[A000430(n+1), A061345(n)]` -/
def P2652712543063746150.Spec : Prop :=
  ∀ n, (P2652712543063746150.a n : ℤ) = A380757 (n + 1)

theorem P2652712543063746150.correct : P2652712543063746150.Spec := by
  intro n
  simp only [A380757, Nat.add_sub_cancel]

end A380757

/-! ## A380757.P3185177198035102462

`filter[A033948(n+1), A324290(#)]`
-/

namespace A380757.P3185177198035102462
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033948 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A324290 (f1 j).toNat = 1) n)

end

end A380757.P3185177198035102462

namespace A380757

/-- `filter[A033948(n+1), A324290(#)]` -/
def P3185177198035102462.Spec : Prop :=
  ∀ n, P3185177198035102462.a n = A380757 (n + 1)

end A380757

/-! ## A380757.P1412283949287878608

`filter[A033948(n+1), A345064(#)]`
-/

namespace A380757.P1412283949287878608
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033948 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A345064 (f1 j).toNat = 1) n)

end

end A380757.P1412283949287878608

namespace A380757

/-- `filter[A033948(n+1), A345064(#)]` -/
def P1412283949287878608.Spec : Prop :=
  ∀ n, P1412283949287878608.a n = A380757 (n + 1)

end A380757

/-! ## A380757.P3426379943891127625

`filter[A033948(n+1), A378442(#)]`
-/

namespace A380757.P3426379943891127625
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033948 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A378442 (f1 j).toNat = 1) n)

end

end A380757.P3426379943891127625

namespace A380757

/-- `filter[A033948(n+1), A378442(#)]` -/
def P3426379943891127625.Spec : Prop :=
  ∀ n, P3426379943891127625.a n = A380757 (n + 1)

end A380757

/-! ## A380757.P8982810392913895142

`filter[A004281(n), A340363(#)]`
-/

namespace A380757.P8982810392913895142
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004281 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A340363 (f1 j).toNat = 1) n)

end

end A380757.P8982810392913895142

namespace A380757

/-- `filter[A004281(n), A340363(#)]` -/
def P8982810392913895142.Spec : Prop :=
  ∀ n, P8982810392913895142.a n = A380757 (n + 1)

end A380757

/-! ## A380757.P2408526907184798885

`filter[A004281(n), A354923(#)]`
-/

namespace A380757.P2408526907184798885
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004281 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354923 (f1 j).toNat = 1) n)

end

end A380757.P2408526907184798885

namespace A380757

/-- `filter[A004281(n), A354923(#)]` -/
def P2408526907184798885.Spec : Prop :=
  ∀ n, P2408526907184798885.a n = A380757 (n + 1)

end A380757

/-! ## A380757.P17099345795386280428

`filter[A004281(n), A354924(#)]`
-/

namespace A380757.P17099345795386280428
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004281 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354924 (f1 j).toNat = 1) n)

end

end A380757.P17099345795386280428

namespace A380757

/-- `filter[A004281(n), A354924(#)]` -/
def P17099345795386280428.Spec : Prop :=
  ∀ n, P17099345795386280428.a n = A380757 (n + 1)

end A380757

/-! ## A380757.P9021509796690655615

`filter[A004276(n+1), A340363(#)]`
-/

namespace A380757.P9021509796690655615
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004276 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A340363 (f1 j).toNat = 1) n)

end

end A380757.P9021509796690655615

namespace A380757

/-- `filter[A004276(n+1), A340363(#)]` -/
def P9021509796690655615.Spec : Prop :=
  ∀ n, P9021509796690655615.a n = A380757 (n + 1)

end A380757

/-! ## A380757.P10907917744522276904

`filter[A004276(n+1), A354923(#)]`
-/

namespace A380757.P10907917744522276904
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004276 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354923 (f1 j).toNat = 1) n)

end

end A380757.P10907917744522276904

namespace A380757

/-- `filter[A004276(n+1), A354923(#)]` -/
def P10907917744522276904.Spec : Prop :=
  ∀ n, P10907917744522276904.a n = A380757 (n + 1)

end A380757

/-! ## A380757.P12716002018349397267

`filter[A004276(n+1), A354924(#)]`
-/

namespace A380757.P12716002018349397267
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004276 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354924 (f1 j).toNat = 1) n)

end

end A380757.P12716002018349397267

namespace A380757

/-- `filter[A004276(n+1), A354924(#)]` -/
def P12716002018349397267.Spec : Prop :=
  ∀ n, P12716002018349397267.a n = A380757 (n + 1)

end A380757

/-! ## A380757.P5227035943365922718

`∩[A000961(n+1), A004276(n)]`
-/

namespace A380757.P5227035943365922718
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000961 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004276 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A380757.P5227035943365922718

namespace A380757

/-- `∩[A000961(n+1), A004276(n)]` -/
def P5227035943365922718.Spec : Prop :=
  ∀ n, (P5227035943365922718.a n : ℤ) = A380757 (n + 1)

end A380757

/-! ## A380757.P162197710880871951

`∩[A000961(n+1), A004281(n)]`
-/

namespace A380757.P162197710880871951
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000961 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004281 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A380757.P162197710880871951

namespace A380757

/-- `∩[A000961(n+1), A004281(n)]` -/
def P162197710880871951.Spec : Prop :=
  ∀ n, (P162197710880871951.a n : ℤ) = A380757 (n + 1)

end A380757

/-! ## A380757.P2056142642971850684

`∩[A033948(n+1), A004276(n)]`
-/

namespace A380757.P2056142642971850684
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033948 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004276 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A380757.P2056142642971850684

namespace A380757

/-- `∩[A033948(n+1), A004276(n)]` -/
def P2056142642971850684.Spec : Prop :=
  ∀ n, (P2056142642971850684.a n : ℤ) = A380757 (n + 1)

end A380757

/-! ## A380757.P8813584034282892186

`∩[A033948(n+1), A004281(n)]`
-/

namespace A380757.P8813584034282892186
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033948 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004281 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A380757.P8813584034282892186

namespace A380757

/-- `∩[A033948(n+1), A004281(n)]` -/
def P8813584034282892186.Spec : Prop :=
  ∀ n, (P8813584034282892186.a n : ℤ) = A380757 (n + 1)

end A380757

/-! ## A380757.P17194977141209226939

`∩[A081061(n+1), A004276(n)]`
-/

namespace A380757.P17194977141209226939
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081061 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004276 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A380757.P17194977141209226939

namespace A380757

/-- `∩[A081061(n+1), A004276(n)]` -/
def P17194977141209226939.Spec : Prop :=
  ∀ n, (P17194977141209226939.a n : ℤ) = A380757 (n + 1)

end A380757

/-! ## A380757.P3921155917130112670

`∩[A081061(n+1), A004281(n)]`
-/

namespace A380757.P3921155917130112670
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081061 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004281 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A380757.P3921155917130112670

namespace A380757

/-- `∩[A081061(n+1), A004281(n)]` -/
def P3921155917130112670.Spec : Prop :=
  ∀ n, (P3921155917130112670.a n : ℤ) = A380757 (n + 1)

end A380757

/-! ## A380757.P16868883138909007691

`∩[A141807(n+1), A004276(n)]`
-/

namespace A380757.P16868883138909007691
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141807 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004276 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A380757.P16868883138909007691

namespace A380757

/-- `∩[A141807(n+1), A004276(n)]` -/
def P16868883138909007691.Spec : Prop :=
  ∀ n, (P16868883138909007691.a n : ℤ) = A380757 (n + 1)

end A380757

/-! ## A380757.P3002365198937826695

`∩[A141807(n+1), A004281(n)]`
-/

namespace A380757.P3002365198937826695
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141807 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004281 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A380757.P3002365198937826695

namespace A380757

/-- `∩[A141807(n+1), A004281(n)]` -/
def P3002365198937826695.Spec : Prop :=
  ∀ n, (P3002365198937826695.a n : ℤ) = A380757 (n + 1)

end A380757

/-! ## A380757.P17313880830246757972

`∩[A225657(n+1), A004276(n)]`
-/

namespace A380757.P17313880830246757972
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225657 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004276 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A380757.P17313880830246757972

namespace A380757

/-- `∩[A225657(n+1), A004276(n)]` -/
def P17313880830246757972.Spec : Prop :=
  ∀ n, (P17313880830246757972.a n : ℤ) = A380757 (n + 1)

end A380757

/-! ## A380757.P3810707183647236452

`∩[A225657(n+1), A004281(n)]`
-/

namespace A380757.P3810707183647236452
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225657 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004281 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A380757.P3810707183647236452

namespace A380757

/-- `∩[A225657(n+1), A004281(n)]` -/
def P3810707183647236452.Spec : Prop :=
  ∀ n, (P3810707183647236452.a n : ℤ) = A380757 (n + 1)

end A380757

/-!
# A380758: Numbers which are not prime powers and their prime factors share a last digit in base 10.

The programs for A380758, there is no canonical definition to state claims against.
-/

/-! ## A380758.P8410322680668458758

`∩[A061346(n+1), A381159(n+1)]`
-/

namespace A380758.P8410322680668458758
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061346 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381159 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A380758.P8410322680668458758

/-! ## A380758.P14101886637669292146

`∩[A156683(n+1), A381159(n+1)]`
-/

namespace A380758.P14101886637669292146
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156683 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381159 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A380758.P14101886637669292146

/-! ## A380758.P814307672230169497

`∩[A162685(n+1), A381159(n+1)]`
-/

namespace A380758.P814307672230169497
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162685 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381159 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A380758.P814307672230169497

/-! ## A380758.P17575538443313634392

`∩[A324110(n+1), A381159(n+1)]`
-/

namespace A380758.P17575538443313634392
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324110 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381159 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A380758.P17575538443313634392

/-! ## A380758.P2048990235245629439

`∩[A346608(n+1), A381159(n+1)]`
-/

namespace A380758.P2048990235245629439
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346608 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381159 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A380758.P2048990235245629439

/-! ## A380758.P10332587715225985456

`∩[A073492(n+1), A381159(n+1)]`
-/

namespace A380758.P10332587715225985456
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073492 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381159 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A380758.P10332587715225985456

/-! ## A380758.P14759999051499292073

`∩[A081062(n+1), A381159(n+1)]`
-/

namespace A380758.P14759999051499292073
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081062 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381159 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A380758.P14759999051499292073

/-! ## A380758.P16104328277336444535

`∩[A024619(n+1), A381159(n+1)]`
-/

namespace A380758.P16104328277336444535
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024619 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381159 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A380758.P16104328277336444535

/-! ## A380758.P7958075195773515854

`filter[A381159(n+1), A143731(#)]`
-/

namespace A380758.P7958075195773515854
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381159 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A143731 (f1 j).toNat = 1) n)

end

end A380758.P7958075195773515854

/-!
# A380759: Number of coincident digits occurring in expression of integers in both base 2 and base 10.

The programs for A380759, the canonical program `A380759.P12464176623793877343` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A380759 has offset 1).

The definition of A380759 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A380759.P12464176623793877343

`∑{digits}[n+1, #!%2]`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A380759

/-- `∑{digits}[n+1, #!%2]` -/
def P12464176623793877343.Spec : Prop :=
  ∀ n, (P12464176623793877343.a n : ℤ) = A380759 (n + 1)

theorem P12464176623793877343.correct : P12464176623793877343.Spec := by
  intro n
  simp only [A380759, Nat.add_sub_cancel]

end A380759

/-! ## A380759.P14753511028020779616

`∑{digits}[n+1, and(1, #!)]`
-/

namespace A380759.P14753511028020779616
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => Nat.land 1 (Nat.factorial x)).sum

end

end A380759.P14753511028020779616

namespace A380759

/-- `∑{digits}[n+1, and(1, #!)]` -/
def P14753511028020779616.Spec : Prop :=
  ∀ n, (P14753511028020779616.a n : ℤ) = A380759 (n + 1)

theorem P14753511028020779616.correct : P14753511028020779616.Spec := by
  intro n
  simp only [A380759, Nat.add_sub_cancel, A380759.P14753511028020779616.f1, A380759.P14753511028020779616.a, A380759.P12464176623793877343.f1, A380759.P12464176623793877343.a, SequenceMachineLib.memo_apply]
  try simp

end A380759

/-! ## A380759.P18420170589371186827

`∑{digits}[n+1, C(#, #²)]`
-/

namespace A380759.P18420170589371186827
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => Nat.choose x (x ^ 2)).sum

end

end A380759.P18420170589371186827

namespace A380759

/-- `∑{digits}[n+1, C(#, #²)]` -/
def P18420170589371186827.Spec : Prop :=
  ∀ n, (P18420170589371186827.a n : ℤ) = A380759 (n + 1)

end A380759

/-! ## A380759.P5736031172294571976

`∑{digits}[n+1, round(γ^#)]`
-/

namespace A380759.P5736031172294571976
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => SequenceMachineLib.roundAway (Real.eulerMascheroniConstant ^ x)).sum

end

end A380759.P5736031172294571976

namespace A380759

/-- `∑{digits}[n+1, round(γ^#)]` -/
def P5736031172294571976.Spec : Prop :=
  ∀ n, P5736031172294571976.a n = A380759 (n + 1)

end A380759

/-! ## A380759.P18162535842218073872

`floor(∑{digits}[n+1, #^-#])`
-/

namespace A380759.P18162535842218073872
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => (x : ℚ) ^ (-(x : ℤ) : ℤ)).sum⌋

end

end A380759.P18162535842218073872

namespace A380759

/-- `floor(∑{digits}[n+1, #^-#])` -/
def P18162535842218073872.Spec : Prop :=
  ∀ n, P18162535842218073872.a n = A380759 (n + 1)

end A380759

/-! ## A380759.P5624834341363229287

`val(∏{digits}[n+1, #!+1], 2)`
-/

namespace A380759.P5624834341363229287
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => Nat.factorial x + 1).prod 2

end

end A380759.P5624834341363229287

namespace A380759

/-- `val(∏{digits}[n+1, #!+1], 2)` -/
def P5624834341363229287.Spec : Prop :=
  ∀ n, (P5624834341363229287.a n : ℤ) = A380759 (n + 1)

end A380759

/-! ## A380759.P16514872248326639176

`round(∑{digits}[n+1, #!^-3])`
-/

namespace A380759.P16514872248326639176
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => (Nat.factorial x : ℚ) ^ (-3 : ℤ)).sum

end

end A380759.P16514872248326639176

namespace A380759

/-- `round(∑{digits}[n+1, #!^-3])` -/
def P16514872248326639176.Spec : Prop :=
  ∀ n, P16514872248326639176.a n = A380759 (n + 1)

end A380759

/-! ## A380759.P3550562271439170861

`round(∑{digits}[n+1, (#^-#)²])`
-/

namespace A380759.P3550562271439170861
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => ((x : ℚ) ^ (-(x : ℤ) : ℤ)) ^ 2).sum

end

end A380759.P3550562271439170861

namespace A380759

/-- `round(∑{digits}[n+1, (#^-#)²])` -/
def P3550562271439170861.Spec : Prop :=
  ∀ n, P3550562271439170861.a n = A380759 (n + 1)

end A380759

/-! ## A380759.P11903030436787598223

`A102681(A061601(n+1))`
-/

namespace A380759.P11903030436787598223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102681 (A061601 (n + 1)).toNat

end

end A380759.P11903030436787598223

namespace A380759

/-- `A102681(A061601(n+1))` -/
def P11903030436787598223.Spec : Prop :=
  ∀ n, P11903030436787598223.a n = A380759 (n + 1)

end A380759

/-! ## A380759.P18185629510409048533

`A102681(A267193(n+1))`
-/

namespace A380759.P18185629510409048533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102681 (A267193 (n + 1)).toNat

end

end A380759.P18185629510409048533

namespace A380759

/-- `A102681(A267193(n+1))` -/
def P18185629510409048533.Spec : Prop :=
  ∀ n, P18185629510409048533.a n = A380759 (n + 1)

end A380759

/-! ## A380759.P2688983072283642708

`A268643(A106647(n+1))`
-/

namespace A380759.P2688983072283642708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268643 (A106647 (n + 1)).toNat

end

end A380759.P2688983072283642708

namespace A380759

/-- `A268643(A106647(n+1))` -/
def P2688983072283642708.Spec : Prop :=
  ∀ n, P2688983072283642708.a n = A380759 (n + 1)

end A380759

/-! ## A380759.P5539980474920509879

`A316866(A106746(n+1))`
-/

namespace A380759.P5539980474920509879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316866 (A106746 (n + 1)).toNat

end

end A380759.P5539980474920509879

namespace A380759

/-- `A316866(A106746(n+1))` -/
def P5539980474920509879.Spec : Prop :=
  ∀ n, P5539980474920509879.a n = A380759 (n + 1)

end A380759

/-! ## A380759.P284589262271603922

`A169611(A359802(n+1))`
-/

namespace A380759.P284589262271603922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169611 (A359802 (n + 1)).toNat

end

end A380759.P284589262271603922

namespace A380759

/-- `A169611(A359802(n+1))` -/
def P284589262271603922.Spec : Prop :=
  ∀ n, P284589262271603922.a n = A380759 (n + 1)

end A380759

/-! ## A380759.P14209261452838243737

`A268643(A351744(n+1))`
-/

namespace A380759.P14209261452838243737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268643 (A351744 (n + 1)).toNat

end

end A380759.P14209261452838243737

namespace A380759

/-- `A268643(A351744(n+1))` -/
def P14209261452838243737.Spec : Prop :=
  ∀ n, P14209261452838243737.a n = A380759 (n + 1)

end A380759

/-! ## A380759.P960733649974243691

`A268643(n+1)+A055641(n+1)`
-/

namespace A380759.P960733649974243691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268643 (n + 1) + A055641 (n + 1)

end

end A380759.P960733649974243691

namespace A380759

/-- `A268643(n+1)+A055641(n+1)` -/
def P960733649974243691.Spec : Prop :=
  ∀ n, P960733649974243691.a n = A380759 (n + 1)

end A380759

/-! ## A380759.P7359746562564204757

`A055642(n+1)-A102669(n+1)`
-/

namespace A380759.P7359746562564204757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 (n + 1) - A102669 (n + 1)

end

end A380759.P7359746562564204757

namespace A380759

/-- `A055642(n+1)-A102669(n+1)` -/
def P7359746562564204757.Spec : Prop :=
  ∀ n, P7359746562564204757.a n = A380759 (n + 1)

end A380759

/-! ## A380759.P750756759648532496

`A113473(n+1)-A115777(n+1)`
-/

namespace A380759.P750756759648532496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113473 (n + 1) - A115777 (n + 1)

end

end A380759.P750756759648532496

namespace A380759

/-- `A113473(n+1)-A115777(n+1)` -/
def P750756759648532496.Spec : Prop :=
  ∀ n, P750756759648532496.a n = A380759 (n + 1)

end A380759

/-! ## A380759.P17931486133512938037

`A055641(n+1)+A007814(A113581(n+1))`
-/

namespace A380759.P17931486133512938037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055641 (n + 1) + A007814 (A113581 (n + 1)).toNat

end

end A380759.P17931486133512938037

namespace A380759

/-- `A055641(n+1)+A007814(A113581(n+1))` -/
def P17931486133512938037.Spec : Prop :=
  ∀ n, P17931486133512938037.a n = A380759 (n + 1)

end A380759

/-! ## A380759.P6523028174031767392

`A102683(A055120(n+1))+A055641(n+1)`
-/

namespace A380759.P6523028174031767392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102683 (A055120 (n + 1)).toNat + A055641 (n + 1)

end

end A380759.P6523028174031767392

namespace A380759

/-- `A102683(A055120(n+1))+A055641(n+1)` -/
def P6523028174031767392.Spec : Prop :=
  ∀ n, P6523028174031767392.a n = A380759 (n + 1)

end A380759

/-! ## A380759.P12166823197488731787

`A268643(n+1)+A064532(A064770(n+1))`
-/

namespace A380759.P12166823197488731787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268643 (n + 1) + A064532 (A064770 (n + 1)).toNat

end

end A380759.P12166823197488731787

namespace A380759

/-- `A268643(n+1)+A064532(A064770(n+1))` -/
def P12166823197488731787.Spec : Prop :=
  ∀ n, P12166823197488731787.a n = A380759 (n + 1)

end A380759

/-!
# A380760: Integers k with at least one proper factorization for which the sum of the same fixed integer power >= 2 of the factors equals k.

The programs for A380760, there is no canonical definition to state claims against.
-/

/-! ## A380760.P7813299928607717856

`A373326(A263674(n+1)-val(A004148(n), 2))`
-/

namespace A380760.P7813299928607717856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373326 (A263674 (n + 1) - (SequenceMachineLib.valuation (A004148 n).toNat 2 : ℤ)).toNat

end

end A380760.P7813299928607717856

/-!
# A380761: Number of rooted ordered trees with n internal nodes where each node has out-degree 0, 2, or 6.

The programs for A380761, there is no canonical definition to state claims against.
-/

/-! ## A380761.P6586541323099758027

`A000394(A394769(n))`
-/

namespace A380761.P6586541323099758027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000394 (A394769 n).toNat

end

end A380761.P6586541323099758027

/-!
# A380762: Expansion of e.g.f. (1/x) * Series_Reversion( x * exp(-x * (1 + x)^2) / (1 + x) ).

The programs for A380762, there is no canonical definition to state claims against.
-/

/-! ## A380762.P6717729169020001223

`A352790(A183544(n+1)*A242533(n+1))`
-/

namespace A380762.P6717729169020001223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352790 (A183544 (n + 1) * A242533 (n + 1)).toNat

end

end A380762.P6717729169020001223

/-!
# A380763: List triangular numbers up to increasingly large values and back down to 0.

The programs for A380763, the canonical program `A380763.P586275446285360426` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A380763 has offset 0).

The definition of A380763 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A380763.P586275446285360426

`A000217(A053615(n))`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A380763

/-- `A000217(A053615(n))` -/
def P586275446285360426.Spec : Prop :=
  ∀ n, P586275446285360426.a n = A380763 n

theorem P586275446285360426.correct : P586275446285360426.Spec := by
  intro n
  simp only [A380763]

end A380763

/-! ## A380763.P5737344699371390613

`C(∑[(-1)^ceil(2*sqrt(n))], 2)`
-/

namespace A380763.P5737344699371390613
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (-1 : ℚ) ^ (⌈2 * Real.sqrt (n : ℝ)⌉ : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)).toNat 2

end

end A380763.P5737344699371390613

namespace A380763

/-- `C(∑[(-1)^ceil(2*sqrt(n))], 2)` -/
def P5737344699371390613.Spec : Prop :=
  ∀ n, (P5737344699371390613.a n : ℤ) = A380763 n

end A380763

/-! ## A380763.P5003027037261734209

`∑[floor(sqrt(n)+1/2)-A068527(n)]`
-/

namespace A380763.P5003027037261734209
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sqrt (n : ℝ) + ((1 : ℚ) / 2 : ℝ)⌋ - A068527 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A380763.P5003027037261734209

namespace A380763

/-- `∑[floor(sqrt(n)+1/2)-A068527(n)]` -/
def P5003027037261734209.Spec : Prop :=
  ∀ n, P5003027037261734209.a n = A380763 n

end A380763

/-! ## A380763.P15636778917034554429

`A000217(∑[(-1)^ceil(2*sqrt(n))]-1)`
-/

namespace A380763.P15636778917034554429
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (-1 : ℚ) ^ (⌈2 * Real.sqrt (n : ℝ)⌉ : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j - 1)).toNat

end

end A380763.P15636778917034554429

namespace A380763

/-- `A000217(∑[(-1)^ceil(2*sqrt(n))]-1)` -/
def P15636778917034554429.Spec : Prop :=
  ∀ n, P15636778917034554429.a n = A380763 n

end A380763

/-! ## A380763.P11456850717450492745

`A000124(∑[(-1)^ceil(2*sqrt(n))]-1)-1`
-/

namespace A380763.P11456850717450492745
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (-1 : ℚ) ^ (⌈2 * Real.sqrt (n : ℝ)⌉ : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 (SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j - 1)).toNat - 1

end

end A380763.P11456850717450492745

namespace A380763

/-- `A000124(∑[(-1)^ceil(2*sqrt(n))]-1)-1` -/
def P11456850717450492745.Spec : Prop :=
  ∀ n, P11456850717450492745.a n = A380763 n

end A380763

/-! ## A380763.P6686587498903747935

`A002378(∑[(-1)^ceil(2*sqrt(n))]-1)/2`
-/

namespace A380763.P6686587498903747935
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (-1 : ℚ) ^ (⌈2 * Real.sqrt (n : ℝ)⌉ : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002378 (SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j - 1)).toNat : ℚ) / 2

end

end A380763.P6686587498903747935

namespace A380763

/-- `A002378(∑[(-1)^ceil(2*sqrt(n))]-1)/2` -/
def P6686587498903747935.Spec : Prop :=
  ∀ n, P6686587498903747935.a n = (A380763 n : ℚ)

end A380763

/-! ## A380763.P16731213854836680495

`A028392(A053615(n)²)/2`
-/

namespace A380763.P16731213854836680495
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028392 (A053615 n ^ 2).toNat : ℚ) / 2

end

end A380763.P16731213854836680495

namespace A380763

/-- `A028392(A053615(n)²)/2` -/
def P16731213854836680495.Spec : Prop :=
  ∀ n, P16731213854836680495.a n = (A380763 n : ℚ)

end A380763

/-! ## A380763.P5608979224512791235

`A028392(A196199(n)²)/2`
-/

namespace A380763.P5608979224512791235
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028392 (A196199 n ^ 2).toNat : ℚ) / 2

end

end A380763.P5608979224512791235

namespace A380763

/-- `A028392(A196199(n)²)/2` -/
def P5608979224512791235.Spec : Prop :=
  ∀ n, P5608979224512791235.a n = (A380763 n : ℚ)

end A380763

/-! ## A380763.P4544211213958233644

`A004738(n+1)/2*A053615(n)`
-/

namespace A380763.P4544211213958233644
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004738 (n + 1) : ℚ) / 2 * (A053615 n : ℚ)

end

end A380763.P4544211213958233644

namespace A380763

/-- `A004738(n+1)/2*A053615(n)` -/
def P4544211213958233644.Spec : Prop :=
  ∀ n, P4544211213958233644.a n = (A380763 n : ℚ)

end A380763

/-! ## A380763.P15906890409389354135

`A014682(A053615(n)+A053615(n)²)`
-/

namespace A380763.P15906890409389354135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A053615 n + A053615 n ^ 2).toNat

end

end A380763.P15906890409389354135

namespace A380763

/-- `A014682(A053615(n)+A053615(n)²)` -/
def P15906890409389354135.Spec : Prop :=
  ∀ n, P15906890409389354135.a n = A380763 n

end A380763

/-! ## A380763.P12002259170323896349

`A078898(A053615(n)+A053615(n)²)`
-/

namespace A380763.P12002259170323896349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078898 (A053615 n + A053615 n ^ 2).toNat

end

end A380763.P12002259170323896349

namespace A380763

/-- `A078898(A053615(n)+A053615(n)²)` -/
def P12002259170323896349.Spec : Prop :=
  ∀ n, P12002259170323896349.a n = A380763 n

end A380763

/-! ## A380763.P13856967424478104497

`A142150(A053615(n)+A053615(n)²)`
-/

namespace A380763.P13856967424478104497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142150 (A053615 n + A053615 n ^ 2).toNat

end

end A380763.P13856967424478104497

namespace A380763

/-- `A142150(A053615(n)+A053615(n)²)` -/
def P13856967424478104497.Spec : Prop :=
  ∀ n, P13856967424478104497.a n = A380763 n

end A380763

/-! ## A380763.P13651881965902597131

`A066446(A082693(n))`
-/

namespace A380763.P13651881965902597131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066446 (A082693 n).toNat

end

end A380763.P13651881965902597131

namespace A380763

/-- `A066446(A082693(n))` -/
def P13651881965902597131.Spec : Prop :=
  ∀ n, P13651881965902597131.a n = A380763 n

end A380763

/-!
# A380764: E.g.f. A(x) satisfies A(x) = exp(x * (1 - x*A(x))) / (1 - x*A(x))^2.

The programs for A380764, there is no canonical definition to state claims against.
-/

/-! ## A380764.P12042997050845802759

`∑[A275884(A000296(2*n+1)+1)]`
-/

namespace A380764.P12042997050845802759
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275884 (A000296 (2 * n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A380764.P12042997050845802759

/-!
# A380765: E.g.f. A(x) satisfies A(x) = exp(x * (1 - x*A(x))^2) / (1 - x*A(x))^2.

The programs for A380765, there is no canonical definition to state claims against.
-/

/-! ## A380765.P5889952278698348659

`A264925(n+4)+A033879(A277352(n))`
-/

namespace A380765.P5889952278698348659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264925 (n + 4) + A033879 (A277352 n).toNat

end

end A380765.P5889952278698348659

/-!
# A380767: Number of sequences in which the games of a single-elimination tournament with n teams can be played if arbitrarily many arenas are available and the tournament bracket is chosen to be the bracket with the largest such number of sequences.

The programs for A380767, there is no canonical definition to state claims against.
-/

/-! ## A380767.P1034365796949642564

`or(1, A303951(A275756(n+1)))`
-/

namespace A380767.P1034365796949642564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A303951 (A275756 (n + 1)).toNat)

end

end A380767.P1034365796949642564

/-! ## A380767.P9543465669006500920

`A278987(A304961(n))+A164864(n)`
-/

namespace A380767.P9543465669006500920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278987 (A304961 n).toNat + A164864 n

end

end A380767.P9543465669006500920

/-!
# A380772: E.g.f. A(x) satisfies A(x) = exp(x * (1 + x*A(x)^2)) * (1 + x*A(x)^2).

The programs for A380772, there is no canonical definition to state claims against.
-/

/-! ## A380772.P14134273564513557761

`A377553(n)-A237837(A359961(n))`
-/

namespace A380772.P14134273564513557761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377553 n - A237837 (A359961 n).toNat

end

end A380772.P14134273564513557761

/-!
# A380774: E.g.f. A(x) satisfies A(x) = exp(x / (1 + x*A(x))^2) * (1 + x*A(x))^2.

The programs for A380774, there is no canonical definition to state claims against.
-/

/-! ## A380774.P4313566991140676605

`A154440(A088690(n)+n)`
-/

namespace A380774.P4313566991140676605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154440 (A088690 n + (n : ℤ)).toNat

end

end A380774.P4313566991140676605

/-!
# A380778: Expansion of e.g.f. (1/x) * Series_Reversion( x * exp(-x / (1 + x)^2) / (1 + x)^2 ).

The programs for A380778, there is no canonical definition to state claims against.
-/

/-! ## A380778.P10997112087195275611

`A295267(n+1)/(n+1)`
-/

namespace A380778.P10997112087195275611
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A295267 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A380778.P10997112087195275611

/-!
# A380779: Expansion of e.g.f. (1/x) * Series_Reversion( x * exp(-x / (1 + x)) / (1 + x)^2 ).

The programs for A380779, there is no canonical definition to state claims against.
-/

/-! ## A380779.P1709151029532508668

`A368906(A367415(n)*A368938(n))`
-/

namespace A380779.P1709151029532508668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368906 (A367415 n * A368938 n).toNat

end

end A380779.P1709151029532508668

/-!
# A380782: Class number of real quadratic field Q(sqrt(prime(n))).

The programs for A380782, there is no canonical definition to state claims against.
-/

/-! ## A380782.P1601908797014474382

`A003649(A071403(n+1))`
-/

namespace A380782.P1601908797014474382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003649 (A071403 (n + 1)).toNat

end

end A380782.P1601908797014474382

/-! ## A380782.P6733705422008708851

`A202053(A000040(n+1))`
-/

namespace A380782.P6733705422008708851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202053 (A000040 (n + 1)).toNat

end

end A380782.P6733705422008708851

/-! ## A380782.P9370261758238795511

`A202053(A001749(n+1))`
-/

namespace A380782.P9370261758238795511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202053 (A001749 (n + 1)).toNat

end

end A380782.P9370261758238795511

/-! ## A380782.P9065856884064812060

`A202053(A006005(n+1))`
-/

namespace A380782.P9065856884064812060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202053 (A006005 (n + 1)).toNat

end

end A380782.P9065856884064812060

/-! ## A380782.P9071505238710724989

`A202053(A062876(n+1))`
-/

namespace A380782.P9071505238710724989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202053 (A062876 (n + 1)).toNat

end

end A380782.P9071505238710724989

/-! ## A380782.P2749503549448870213

`A202053(A063884(n+1))`
-/

namespace A380782.P2749503549448870213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202053 (A063884 (n + 1)).toNat

end

end A380782.P2749503549448870213

/-! ## A380782.P8029081611396527721

`A202053(A063904(n+1))`
-/

namespace A380782.P8029081611396527721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202053 (A063904 (n + 1)).toNat

end

end A380782.P8029081611396527721

/-! ## A380782.P8118423410565307493

`A202053(A072900(n+1))`
-/

namespace A380782.P8118423410565307493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202053 (A072900 (n + 1)).toNat

end

end A380782.P8118423410565307493

/-! ## A380782.P7111091691962855360

`A202053(A083249(n+1))`
-/

namespace A380782.P7111091691962855360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202053 (A083249 (n + 1)).toNat

end

end A380782.P7111091691962855360

/-! ## A380782.P13207267914273042453

`A202053(A107802(n+1))`
-/

namespace A380782.P13207267914273042453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202053 (A107802 (n + 1)).toNat

end

end A380782.P13207267914273042453

/-!
# A380783: Lexicographically earliest sequence of positive integers such that for any value k, no two sets of one or more indices at which k occurs have the same product.

The programs for A380783, there is no canonical definition to state claims against.
-/

/-! ## A380783.P14129267047471058646

`A008619(A010553(∑{d}[n+1, (n+1)/gcd(#, (n+1)/#)²]²))`
-/

namespace A380783.P14129267047471058646
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A010553 (SequenceMachineLib.roundAway ((∑ d ∈ Nat.divisors (f1 n), (n + 1 : ℚ) / (Int.gcd (d : ℤ) (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))) ^ 2 : ℚ)) ^ 2)).toNat).toNat

end

end A380783.P14129267047471058646

/-! ## A380783.P10878256028725164103

`A157196(A306512(2*(n+2)))+A001221(n+1)`
-/

namespace A380783.P10878256028725164103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157196 (A306512 (2 * (n + 2))).toNat + A001221 (n + 1)

end

end A380783.P10878256028725164103

/-! ## A380783.P15988340836298732478

`A318498(A318978(3*(n+1)))+A318306(n+1)`
-/

namespace A380783.P15988340836298732478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318498 (A318978 (3 * (n + 1))).toNat + A318306 (n + 1)

end

end A380783.P15988340836298732478

/-! ## A380783.P10945020354762175185

`A394091(A297793(n+1))`
-/

namespace A380783.P10945020354762175185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394091 (A297793 (n + 1)).toNat

end

end A380783.P10945020354762175185

/-! ## A380783.P16035632334782244552

`A064547((n+1)*A196374(3*(n+1)))`
-/

namespace A380783.P16035632334782244552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064547 ((n + 1 : ℤ) * A196374 (3 * (n + 1))).toNat

end

end A380783.P16035632334782244552

/-!
# A380784: Prime numbers p where the cyclotomic field Q(zeta_(p-1)) has class number one.

The programs for A380784, there is no canonical definition to state claims against.
-/

/-! ## A380784.P10246816531618393613

`p?[A271143(n+1)]`
-/

namespace A380784.P10246816531618393613
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271143 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A380784.P10246816531618393613

/-! ## A380784.P14600430937094786629

`p?[A396476(n+1)]`
-/

namespace A380784.P14600430937094786629
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396476 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A380784.P14600430937094786629

/-! ## A380784.P1855848029038311402

`p?[∑[A063059(n+2)]]`
-/

namespace A380784.P1855848029038311402
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063059 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A380784.P1855848029038311402

/-! ## A380784.P13750527857419222704

`p?[∑[A353741(n+2)]]`
-/

namespace A380784.P13750527857419222704
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353741 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A380784.P13750527857419222704

/-! ## A380784.P17716422614744956003

`p?[∑[A063059(n)]-2]`
-/

namespace A380784.P17716422614744956003
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063059 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A380784.P17716422614744956003

/-!
# A380786: Numbers with a prime number of bits, prime number of ones, and prime number of zeros in their binary representation.

The programs for A380786, the canonical program `A380786.P6646570094551573593` is in `Seq.B008.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A380786 has offset 1).

The definition of A380786 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 109 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A380786.P6646570094551573593

`∩[A343258(n+1), A380788(n+1)]`

The canonical program, it is in `Seq.B008.C001`.
-/

namespace A380786

/-- `∩[A343258(n+1), A380788(n+1)]` -/
def P6646570094551573593.Spec : Prop :=
  ∀ n, (P6646570094551573593.a n : ℤ) = A380786 (n + 1)

theorem P6646570094551573593.correct : P6646570094551573593.Spec := by
  intro n
  simp only [A380786, Nat.add_sub_cancel]

end A380786

/-! ## A380786.P16200117970983791613

`eq[A071295(n), A301899(A070939(n))]`
-/

namespace A380786.P16200117970983791613
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071295 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301899 (A070939 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A380786.P16200117970983791613

namespace A380786

/-- `eq[A071295(n), A301899(A070939(n))]` -/
def P16200117970983791613.Spec : Prop :=
  ∀ n, (P16200117970983791613.a n : ℤ) = A380786 (n + 1)

end A380786

/-! ## A380786.P1489331061070771630

`∩[A343258(n+1), A346310(n+1)+1]`
-/

namespace A380786.P1489331061070771630
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343258 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346310 (n + 1) + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A380786.P1489331061070771630

namespace A380786

/-- `∩[A343258(n+1), A346310(n+1)+1]` -/
def P1489331061070771630.Spec : Prop :=
  ∀ n, (P1489331061070771630.a n : ℤ) = A380786 (n + 1)

end A380786

/-! ## A380786.P10155470530664513067

`∩[A343258(n+1), A346310(n+1)]`
-/

namespace A380786.P10155470530664513067
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343258 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346310 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A380786.P10155470530664513067

namespace A380786

/-- `∩[A343258(n+1), A346310(n+1)]` -/
def P10155470530664513067.Spec : Prop :=
  ∀ n, (P10155470530664513067.a n : ℤ) = A380786 (n + 1)

end A380786

/-!
# A380787: Odd positive integers k whose continued fraction for sqrt(k) has a central term equal to either floor(sqrt(k)) or floor(sqrt(k)) - 1.

The programs for A380787, there is no canonical definition to state claims against.
-/

/-! ## A380787.P7513235108005464627

`∩[A029597(n+1), A172253(n+1)]`
-/

namespace A380787.P7513235108005464627
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029597 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172253 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A380787.P7513235108005464627

/-! ## A380787.P15972652459719109839

`∩[A118894(n+1), A343109(n+1)]`
-/

namespace A380787.P15972652459719109839
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118894 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343109 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A380787.P15972652459719109839

/-! ## A380787.P10716788538707506109

`lt[1, A113973(A372049(n+1))]`
-/

namespace A380787.P10716788538707506109
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113973 (A372049 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A380787.P10716788538707506109

/-! ## A380787.P14616076776416458511

`∩[A004772(n+1), A172253(n+1)]`
-/

namespace A380787.P14616076776416458511
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004772 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172253 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A380787.P14616076776416458511

/-! ## A380787.P6873479414999082789

`∩[A118894(n+1), A174905(n+1)]`
-/

namespace A380787.P6873479414999082789
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118894 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174905 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A380787.P6873479414999082789

/-!
# A380788: Numbers with a prime number of binary digits.

The programs for A380788, the canonical program `A380788.P17890132981315215586` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A380788 has offset 1).

The definition of A380788 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5206 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A380788.P205811563628542399

`eq[1, A003415(ceil(log2(n+1)))]`
-/

namespace A380788.P205811563628542399
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 ⌈Real.logb 2 (n + 1 : ℝ)⌉.toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A380788.P205811563628542399

namespace A380788

/-- `eq[1, A003415(ceil(log2(n+1)))]` -/
def P205811563628542399.Spec : Prop :=
  ∀ n, (P205811563628542399.a n : ℤ) = A380788 (n + 1)

end A380788

/-! ## A380788.P6474445964073880544

`eq[2, A106490(2^ceil(log2(n+1)))]`
-/

namespace A380788.P6474445964073880544
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106490 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (⌈Real.logb 2 (n + 1 : ℝ)⌉ : ℤ))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A380788.P6474445964073880544

namespace A380788

/-- `eq[2, A106490(2^ceil(log2(n+1)))]` -/
def P6474445964073880544.Spec : Prop :=
  ∀ n, (P6474445964073880544.a n : ℤ) = A380788 (n + 1)

end A380788

/-! ## A380788.P5638037022098495436

`eq[1, A001222(A070939(n))]`
-/

namespace A380788.P5638037022098495436
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A070939 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A380788.P5638037022098495436

namespace A380788

/-- `eq[1, A001222(A070939(n))]` -/
def P5638037022098495436.Spec : Prop :=
  ∀ n, (P5638037022098495436.a n : ℤ) = A380788 (n + 1)

end A380788

/-! ## A380788.P17890132981315215586

`eq[2, A105700(A070939(n)²)]`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A380788

/-- `eq[2, A105700(A070939(n)²)]` -/
def P17890132981315215586.Spec : Prop :=
  ∀ n, (P17890132981315215586.a n : ℤ) = A380788 (n + 1)

theorem P17890132981315215586.correct : P17890132981315215586.Spec := by
  intro n
  simp only [A380788, Nat.add_sub_cancel]

end A380788

/-! ## A380788.P16197722935656584192

`eq[1, A032741(A029837(n+1))]`
-/

namespace A380788.P16197722935656584192
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 (A029837 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A380788.P16197722935656584192

namespace A380788

/-- `eq[1, A032741(A029837(n+1))]` -/
def P16197722935656584192.Spec : Prop :=
  ∀ n, (P16197722935656584192.a n : ℤ) = A380788 (n + 1)

end A380788

/-! ## A380788.P708404823535140696

`eq[2, A000005(A070939(n+1))]+1`
-/

namespace A380788.P708404823535140696
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A070939 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A380788.P708404823535140696

namespace A380788

/-- `eq[2, A000005(A070939(n+1))]+1` -/
def P708404823535140696.Spec : Prop :=
  ∀ n, (P708404823535140696.a n : ℤ) = A380788 (n + 1)

end A380788

/-! ## A380788.P17672618534040177557

`eq[A101296(A070939(n)), A322312(2*n+1)]`
-/

namespace A380788.P17672618534040177557
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101296 (A070939 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322312 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A380788.P17672618534040177557

namespace A380788

/-- `eq[A101296(A070939(n)), A322312(2*n+1)]` -/
def P17672618534040177557.Spec : Prop :=
  ∀ n, (P17672618534040177557.a n : ℤ) = A380788 (n + 1)

end A380788

/-! ## A380788.P6338947990542703683

`eq[1, A032741(A000523(2*n+1))]`
-/

namespace A380788.P6338947990542703683
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 (A000523 (2 * n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A380788.P6338947990542703683

namespace A380788

/-- `eq[1, A032741(A000523(2*n+1))]` -/
def P6338947990542703683.Spec : Prop :=
  ∀ n, (P6338947990542703683.a n : ℤ) = A380788 (n + 1)

end A380788

/-! ## A380788.P7930705622389206078

`eq[2, A298422(A113473(2*n+1))]`
-/

namespace A380788.P7930705622389206078
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298422 (A113473 (2 * n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A380788.P7930705622389206078

namespace A380788

/-- `eq[2, A298422(A113473(2*n+1))]` -/
def P7930705622389206078.Spec : Prop :=
  ∀ n, (P7930705622389206078.a n : ℤ) = A380788 (n + 1)

end A380788

/-!
# A380790: Length of the n-th Golomb ruler constructed by the Paul Erdős and Pál Turán formula.

The programs for A380790, there is no canonical definition to state claims against.
-/

/-! ## A380790.P7754732059859042005

`A100104(A000040(n+2))+2*A076409(n+2)-1`
-/

namespace A380790.P7754732059859042005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100104 (A000040 (n + 2)).toNat + 2 * A076409 (n + 2) - 1

end

end A380790.P7754732059859042005

/-! ## A380790.P2652784624826150341

`A100104(A000040(n+2))+A048153(A000040(n+2))-1`
-/

namespace A380790.P2652784624826150341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100104 (A000040 (n + 2)).toNat + A048153 (A000040 (n + 2)).toNat - 1

end

end A380790.P2652784624826150341

/-!
# A380798: a(n) is the smallest prime p such that tau(p^2 - 1) is equal to 2^n, where tau = A000005.

The programs for A380798, there is no canonical definition to state claims against.
-/

/-! ## A380798.P335097866502693794

`A358881(2^n)`
-/

namespace A380798.P335097866502693794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358881 (2 ^ n)

end

end A380798.P335097866502693794

/-! ## A380798.P10319942880943256995

`abs(A358881(Δ[A153972(n)]))`
-/

namespace A380798.P10319942880943256995
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153972 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A358881 (f1 (n + 1) - f1 n).toNat|

end

end A380798.P10319942880943256995

/-! ## A380798.P5806836779497508989

`A358881(A000079(n))+A326635(n)`
-/

namespace A380798.P5806836779497508989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358881 (A000079 n).toNat + A326635 n

end

end A380798.P5806836779497508989

/-! ## A380798.P16402782951657693474

`A358881(A000079(n))+A007814(2*n+1)`
-/

namespace A380798.P16402782951657693474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358881 (A000079 n).toNat + A007814 (2 * n + 1)

end

end A380798.P16402782951657693474

/-! ## A380798.P11640579005295915848

`A168181(2*n+3)*A358881(A000079(n))`
-/

namespace A380798.P11640579005295915848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168181 (2 * n + 3) * A358881 (A000079 n).toNat

end

end A380798.P11640579005295915848

