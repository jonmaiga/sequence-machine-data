import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C005
import Seq.B000.C009
import Seq.B000.C011
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C016
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C025
import Seq.B000.C028
import Seq.B000.C048
import Seq.B000.C050
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C005
import Seq.B001.C014
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C004
import Seq.B002.C008
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C004
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C001
import Seq.B008.C000
import Seq.B010.C000
import Seq.Opaque.C000
import Seq.Opaque.C001
import Seq.Opaque.C002
import Seq.Opaque.C003
import Seq.Opaque.C004
import Seq.Opaque.C005
import Seq.Opaque.C006
import Seq.Opaque.C008
import Seq.Opaque.C010
import Seq.Opaque.C012
import Seq.Opaque.C013
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
# A400404: Number of free polymarquises with n cells.

The programs for A400404, there is no canonical definition to state claims against.
-/

/-! ## A400404.P7667138465333919987

`A106371(A367100(n))`
-/

namespace A400404.P7667138465333919987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106371 (A367100 n).toNat

end

end A400404.P7667138465333919987

/-!
# A400411: Number of deals of n cards numbered 1 to n between two players for which the card game War never ends.

The programs for A400411, there is no canonical definition to state claims against.
-/

/-! ## A400411.P15078626505088773638

`A143714(A047112(n+1))`
-/

namespace A400411.P15078626505088773638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143714 (A047112 (n + 1)).toNat

end

end A400411.P15078626505088773638

/-! ## A400411.P16769957519609128549

`A392245(A399770(n+1))/A007318(n)`
-/

namespace A400411.P16769957519609128549
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A392245 (A399770 (n + 1)).toNat : ℚ) / (A007318 n : ℚ)

end

end A400411.P16769957519609128549

/-! ## A400411.P3540776665832590157

`A392245(A399770(n+1))/A286554(n)`
-/

namespace A400411.P3540776665832590157
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A392245 (A399770 (n + 1)).toNat : ℚ) / (A286554 n : ℚ)

end

end A400411.P3540776665832590157

/-!
# A400413: a(n) = Sum_{k=1..n} (2^A007814(floor(n/k)) - 1).

The programs for A400413, the canonical program `A400413.P13849645286402086857` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A400413 has offset 1).

The definition of A400413 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A400413.P13849645286402086857

`∑{#}[n, 2^A007814(floor((n+1)/(#+1)))-1]`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A400413

/-- `∑{#}[n, 2^A007814(floor((n+1)/(#+1)))-1]` -/
def P13849645286402086857.Spec : Prop :=
  ∀ n, P13849645286402086857.a n = (A400413 (n + 1) : ℚ)

end A400413

/-!
# A400415: a(n) = (2*n-sigma(n))/gcd(tau(n), 2*n-sigma(n)), tau = A000005, sigma = A000203.

The programs for A400415, the canonical program `A400415.P10373400726085747654` is in `Seq.B004.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A400415 has offset 1).

The definition of A400415 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A400415.P10373400726085747654

`(2*(n+1)-A000203(n+1))/gcd(A000005(n+1), 2*(n+1)-A000203(n+1))`

The canonical program, it is in `Seq.B004.C004`.
-/

namespace A400415

/-- `(2*(n+1)-A000203(n+1))/gcd(A000005(n+1), 2*(n+1)-A000203(n+1))` -/
def P10373400726085747654.Spec : Prop :=
  ∀ n, P10373400726085747654.a n = (A400415 (n + 1) : ℚ)

end A400415

/-!
# A400418: a(n) = Sum_{k=1..n} A007947(floor(n/k)).

The programs for A400418, the canonical program `A400418.P16782049149117832626` is in `Seq.B001.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A400418 has offset 1).

The definition of A400418 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[n, A007947(floor((n+1)/(#+1)))]` (program `A400418.P16782049149117832626`, by `A400418.P16782049149117832626.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A400418.P16782049149117832626

`∑{#}[n, A007947(floor((n+1)/(#+1)))]`

The canonical program, it is in `Seq.B001.C014`.
-/

namespace A400418

/-- `∑{#}[n, A007947(floor((n+1)/(#+1)))]` -/
def P16782049149117832626.Spec : Prop :=
  ∀ n, P16782049149117832626.a n = A400418 (n + 1)

theorem P16782049149117832626.correct : P16782049149117832626.Spec := by
  intro n
  simp only [A400418, Nat.add_sub_cancel]

end A400418

/-!
# A400419: Number of endofunctions on [n] whose connected components have the same size.

The programs for A400419, there is no canonical definition to state claims against.
-/

/-! ## A400419.P10850948887187686050

`A092432(a(n-1)+1)` with `a(0)=1, a(1)=1`
-/

namespace A400419.P10850948887187686050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A092432 (a (n - 1) + 1).toNat

end

end A400419.P10850948887187686050

/-!
# A400421: Triangle T(n,k) read by rows: number of permutations of [n] in which every occurring cycle length has multiplicity k, n >= 0, 0 <= k <= n.

The programs for A400421, there is no canonical definition to state claims against.
-/

/-! ## A400421.P7527426046571728038

`A106451(A277031(n))`
-/

namespace A400421.P7527426046571728038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106451 (A277031 n).toNat

end

end A400421.P7527426046571728038

/-! ## A400421.P4693035968040369960

`A058176(A327244(n+1))`
-/

namespace A400421.P4693035968040369960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058176 (A327244 (n + 1)).toNat

end

end A400421.P4693035968040369960

/-! ## A400421.P12152726117996212251

`A060338(n+1)^A004667(A060338(n))`
-/

namespace A400421.P12152726117996212251
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A060338 (n + 1) : ℚ) ^ (A004667 (A060338 n).toNat : ℤ)

end

end A400421.P12152726117996212251

/-!
# A400423: a(n) is the least positive integer that can be expressed as +- 1^2 +- 2^2 +- 3^2 +- ... +- n^2 in exactly n ways, or -1 if no such integer exists.

The programs for A400423, there is no canonical definition to state claims against.
-/

/-! ## A400423.P8437751943797920976

`A368735(A045417(n+1))`
-/

namespace A400423.P8437751943797920976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368735 (A045417 (n + 1)).toNat

end

end A400423.P8437751943797920976

/-! ## A400423.P12189311593735281417

`A368735(A023221(n+2))`
-/

namespace A400423.P12189311593735281417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368735 (A023221 (n + 2)).toNat

end

end A400423.P12189311593735281417

/-!
# A400425: Number of permutations of [n] whose distinct cycle lengths have equal multiplicities.

The programs for A400425, there is no canonical definition to state claims against.
-/

/-! ## A400425.P13836947660027047297

`∑{#}[n, A400421(C(n+1, 2)+#)]`
-/

namespace A400425.P13836947660027047297
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), A400421 (Nat.choose (n + 1) 2 + k)

end

end A400425.P13836947660027047297

/-!
# A400427: 3rd least distinct prime factor of numbers with 3 or more distinct prime factors.

The programs for A400427, there is no canonical definition to state claims against.
-/

/-! ## A400427.P4217021055050402070

`A119288(A028234(A000977(n+1)))`
-/

namespace A400427.P4217021055050402070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119288 (A028234 (A000977 (n + 1)).toNat).toNat

end

end A400427.P4217021055050402070

/-! ## A400427.P18062359967240012789

`A006530(A003586(n+1)*A033992(n+1))`
-/

namespace A400427.P18062359967240012789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A003586 (n + 1) * A033992 (n + 1)).toNat

end

end A400427.P18062359967240012789

/-! ## A400427.P16427693261713602953

`A006530(A033992(n+1)*A051037(2*n+3))`
-/

namespace A400427.P16427693261713602953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A033992 (n + 1) * A051037 (2 * n + 3)).toNat

end

end A400427.P16427693261713602953

/-! ## A400427.P3825358812839397983

`A006530(A033992(n+1)*A334725(3*(n+1)))`
-/

namespace A400427.P3825358812839397983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A033992 (n + 1) * A334725 (3 * (n + 1))).toNat

end

end A400427.P3825358812839397983

/-! ## A400427.P12690551618648118124

`A006530(A033992(n+1)*A339821(n))`
-/

namespace A400427.P12690551618648118124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A033992 (n + 1) * A339821 n).toNat

end

end A400427.P12690551618648118124

/-!
# A400428: Number of set partitions of [n] such that all distinct block sizes have the same multiplicity.

The programs for A400428, there is no canonical definition to state claims against.
-/

/-! ## A400428.P14077406937557633053

`∑{#}[n, A398142(C(n+1, 2)+#)]`
-/

namespace A400428.P14077406937557633053
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), A398142 (Nat.choose (n + 1) 2 + k)

end

end A400428.P14077406937557633053

/-! ## A400428.P105217329543985041

`A222730(A000699(n))+A006882(n)`
-/

namespace A400428.P105217329543985041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222730 (A000699 n).toNat + A006882 n

end

end A400428.P105217329543985041

/-!
# A400430: a(n) = max_{1 <= k < n} (k + omega(k)) - n, where omega(k) is the number of distinct prime divisors of k.

The programs for A400430, there is no canonical definition to state claims against.
-/

/-! ## A400430.P7487192284503024220

`A001221(n+1)-A285136(A377618(2*(n+1)))`
-/

namespace A400430.P7487192284503024220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1) - A285136 (A377618 (2 * (n + 1))).toNat

end

end A400430.P7487192284503024220

/-! ## A400430.P10765395654043496884

`A001221(n+1)-A071040(A319149(2*n+3))`
-/

namespace A400430.P10765395654043496884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1) - A071040 (A319149 (2 * n + 3)).toNat

end

end A400430.P10765395654043496884

/-! ## A400430.P12507722789456913220

`∑{p}[n+1, ceil(1/#)]-A079979(A185255(n))`
-/

namespace A400430.P12507722789456913220
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), ⌈1 / (p : ℚ)⌉ - A079979 (A185255 n).toNat

end

end A400430.P12507722789456913220

/-! ## A400430.P5652486944220283948

`A001221(n+1)-A079979(A185255(n))`
-/

namespace A400430.P5652486944220283948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1) - A079979 (A185255 n).toNat

end

end A400430.P5652486944220283948

/-! ## A400430.P6410670133238014372

`A001221(n+1)-A070909(A059441(n+1))`
-/

namespace A400430.P6410670133238014372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1) - A070909 (A059441 (n + 1)).toNat

end

end A400430.P6410670133238014372

/-!
# A400431: G.f. A(x) satisfies A(x) = 1 + 2*x*A(2*x)^(1/2).

The programs for A400431, there is no canonical definition to state claims against.
-/

/-! ## A400431.P483493946775560641

`A064527(A110181(n))`
-/

namespace A400431.P483493946775560641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064527 (A110181 n).toNat

end

end A400431.P483493946775560641

/-! ## A400431.P18144067737739419090

`A046926(n+1)+∑[A321979(n)]`
-/

namespace A400431.P18144067737739419090
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321979 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046926 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A400431.P18144067737739419090

/-!
# A400432: G.f. A(x) satisfies A(x) = 1 + 3*x*A(3*x)^(1/3).

The programs for A400432, there is no canonical definition to state claims against.
-/

/-! ## A400432.P14847413268171631414

`∑[A332577(∑[A335457(n)])]`
-/

namespace A400432.P14847413268171631414
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335457 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332577 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A400432.P14847413268171631414

/-!
# A400435: Integers that can be expressed as the sum of 3 factorials.

The programs for A400435, there is no canonical definition to state claims against.
-/

/-! ## A400435.P16126613227254980307

`A277011(A014311(n+1))`
-/

namespace A400435.P16126613227254980307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277011 (A014311 (n + 1)).toNat

end

end A400435.P16126613227254980307

/-! ## A400435.P18006758015615629825

`lt[0, A071692(n)]`
-/

namespace A400435.P18006758015615629825
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071692 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A400435.P18006758015615629825

/-! ## A400435.P10532845020501956782

`lt[1, A071691(n+1)]`
-/

namespace A400435.P10532845020501956782
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071691 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A400435.P10532845020501956782

/-!
# A400443: Numbers k such that k is an automorphic number in at least one base b in the range [2, k-2].

The programs for A400443, there is no canonical definition to state claims against.
-/

/-! ## A400443.P9083797498775489445

`filter[A373410(n+2), A225181(#)]`
-/

namespace A400443.P9083797498775489445
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373410 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A225181 (f1 j).toNat = 1) n)

end

end A400443.P9083797498775489445

/-!
# A400445: a(n) = (n-1)*(2*a(n-1) + 15*a(n-2))/(n+1) with a(0)=1, a(1)=0.

The programs for A400445, the canonical program `A400445.P7356954288380415145` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A400445 has offset 0).

The definition of A400445 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A400445.P7356954288380415145

`(n-1)/(n+1)*(2*a(n-1)+15*a(n-2))` with `a(0)=1, a(1)=0`

The canonical program, it is in `Seq.B000.C050`.
-/

namespace A400445

/-- `(n-1)/(n+1)*(2*a(n-1)+15*a(n-2))` -/
def P7356954288380415145.Spec : Prop :=
  ∀ n, P7356954288380415145.a n = (A400445 n : ℚ)

end A400445

/-! ## A400445.P6742447237979438279

`(n-1)*(2*a(n-1)+15*a(n-2))/(n+1)` with `a(0)=1, a(1)=0`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A400445.P6742447237979438279
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 0] fun n a =>
  ((n : ℤ) - 1 : ℚ) * (2 * a (n - 1) + 15 * a (n - 2)) / (n + 1 : ℚ)

end

end A400445.P6742447237979438279

namespace A400445

/-- `(n-1)*(2*a(n-1)+15*a(n-2))/(n+1)` -/
def P6742447237979438279.Spec : Prop :=
  ∀ n, P6742447237979438279.a n = (A400445 n : ℚ)

end A400445

/-!
# A400450: The number of divisors d of n such that gcd(d, n/d) is prime.

The programs for A400450, the canonical program `A400450.P6566241445451218318` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A400450 has offset 1).

The definition of A400450 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A400450.P14893734447822940817

`val(A294897(n+1), 2)`
-/

namespace A400450.P14893734447822940817
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A294897 (n + 1)).toNat 2

end

end A400450.P14893734447822940817

namespace A400450

/-- `val(A294897(n+1), 2)` -/
def P14893734447822940817.Spec : Prop :=
  ∀ n, (P14893734447822940817.a n : ℤ) = A400450 (n + 1)

end A400450

/-! ## A400450.P13942902409656269090

`A400452(A058035(n+1))`
-/

namespace A400450.P13942902409656269090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A400452 (A058035 (n + 1)).toNat

end

end A400450.P13942902409656269090

namespace A400450

/-- `A400452(A058035(n+1))` -/
def P13942902409656269090.Spec : Prop :=
  ∀ n, P13942902409656269090.a n = A400450 (n + 1)

end A400450

/-! ## A400450.P6566241445451218318

`∑{d}[n+1, A008966(#)*A056170((n+1)/#)]`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A400450

/-- `∑{d}[n+1, A008966(#)*A056170((n+1)/#)]` -/
def P6566241445451218318.Spec : Prop :=
  ∀ n, P6566241445451218318.a n = A400450 (n + 1)

theorem P6566241445451218318.correct : P6566241445451218318.Spec := by
  intro n
  simp only [A400450, Nat.add_sub_cancel]

end A400450

/-! ## A400450.P13465854814971945446

`∑{e}[A295666(n+1), #]`
-/

namespace A400450.P13465854814971945446
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295666 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A400450.P13465854814971945446

namespace A400450

/-- `∑{e}[A295666(n+1), #]` -/
def P13465854814971945446.Spec : Prop :=
  ∀ n, (P13465854814971945446.a n : ℤ) = A400450 (n + 1)

end A400450

/-! ## A400450.P13840248765954783243

`A001222(A295666(n+1))`
-/

namespace A400450.P13840248765954783243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A295666 (n + 1)).toNat

end

end A400450.P13840248765954783243

namespace A400450

/-- `A001222(A295666(n+1))` -/
def P13840248765954783243.Spec : Prop :=
  ∀ n, P13840248765954783243.a n = A400450 (n + 1)

end A400450

/-! ## A400450.P9324686235655129677

`A007814(A294897(n+1))`
-/

namespace A400450.P9324686235655129677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A294897 (n + 1)).toNat

end

end A400450.P9324686235655129677

namespace A400450

/-- `A007814(A294897(n+1))` -/
def P9324686235655129677.Spec : Prop :=
  ∀ n, P9324686235655129677.a n = A400450 (n + 1)

end A400450

/-! ## A400450.P10815414854330173416

`A284257(A294895(n+1))`
-/

namespace A400450.P10815414854330173416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284257 (A294895 (n + 1)).toNat

end

end A400450.P10815414854330173416

namespace A400450

/-- `A284257(A294895(n+1))` -/
def P10815414854330173416.Spec : Prop :=
  ∀ n, P10815414854330173416.a n = A400450 (n + 1)

end A400450

/-!
# A400451: Distinct values of A400450 in increasing order.

The programs for A400451, the canonical program `A400451.P13155712066239824629` is in `Seq.B004.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A400451 has offset 1).

The definition of A400451 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A400451.P1295636688042112466

`∑[∑[2*T(n-1,k)]]` with `a(0)=0, a(1)=1, a(2)=0, a(3)=1`
-/

namespace A400451.P1295636688042112466
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 0, 1] fun n f2 =>
  2 * SequenceMachineLib.triUp f2 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A400451.P1295636688042112466

namespace A400451

/-- `∑[∑[2*T(n-1,k)]]` -/
def P1295636688042112466.Spec : Prop :=
  ∀ n, (P1295636688042112466.a n : ℤ) = A400451 (n + 1)

end A400451

/-! ## A400451.P2582858255634982296

`(row(n)+col(n))*2^(row(n)-1)`
-/

namespace A400451.P2582858255634982296
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.triRow n + SequenceMachineLib.triCol n : ℚ) * (2 : ℚ) ^ ((SequenceMachineLib.triRow n : ℤ) - 1 : ℤ)

end

end A400451.P2582858255634982296

namespace A400451

/-- `(row(n)+col(n))*2^(row(n)-1)` -/
def P2582858255634982296.Spec : Prop :=
  ∀ n, P2582858255634982296.a n = (A400451 (n + 1) : ℚ)

end A400451

/-! ## A400451.P17056712499515772645

`∑[A131577(row(n))]`
-/

namespace A400451.P17056712499515772645
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131577 (SequenceMachineLib.triRow n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A400451.P17056712499515772645

namespace A400451

/-- `∑[A131577(row(n))]` -/
def P17056712499515772645.Spec : Prop :=
  ∀ n, P17056712499515772645.a n = A400451 (n + 1)

end A400451

/-! ## A400451.P3916814986085354320

`∑[col(A081294(row(n)))]`
-/

namespace A400451.P3916814986085354320
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.triCol (A081294 (SequenceMachineLib.triRow n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A400451.P3916814986085354320

namespace A400451

/-- `∑[col(A081294(row(n)))]` -/
def P3916814986085354320.Spec : Prop :=
  ∀ n, (P3916814986085354320.a n : ℤ) = A400451 (n + 1)

end A400451

/-! ## A400451.P5561080618457085746

`∑[A011782(row(n))]-1`
-/

namespace A400451.P5561080618457085746
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (SequenceMachineLib.triRow n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A400451.P5561080618457085746

namespace A400451

/-- `∑[A011782(row(n))]-1` -/
def P5561080618457085746.Spec : Prop :=
  ∀ n, P5561080618457085746.a n = A400451 (n + 1)

end A400451

/-! ## A400451.P16382586296555730947

`floor(A007664(n+1)/2)`
-/

namespace A400451.P16382586296555730947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A007664 (n + 1) : ℚ) / 2⌋

end

end A400451.P16382586296555730947

namespace A400451

/-- `floor(A007664(n+1)/2)` -/
def P16382586296555730947.Spec : Prop :=
  ∀ n, P16382586296555730947.a n = A400451 (n + 1)

end A400451

/-! ## A400451.P13155712066239824629

`A059268(n)*A062111(n)`

The canonical program, it is in `Seq.B004.C004`.
-/

namespace A400451

/-- `A059268(n)*A062111(n)` -/
def P13155712066239824629.Spec : Prop :=
  ∀ n, P13155712066239824629.a n = A400451 (n + 1)

theorem P13155712066239824629.correct : P13155712066239824629.Spec := by
  intro n
  simp only [A400451, Nat.add_sub_cancel]

end A400451

/-! ## A400451.P15257939694013095857

`∑[A131577(col(A025581(n)+n))]`
-/

namespace A400451.P15257939694013095857
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131577 (SequenceMachineLib.triCol (A025581 n + (n : ℤ)).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A400451.P15257939694013095857

namespace A400451

/-- `∑[A131577(col(A025581(n)+n))]` -/
def P15257939694013095857.Spec : Prop :=
  ∀ n, P15257939694013095857.a n = A400451 (n + 1)

end A400451

/-! ## A400451.P6340621511152822963

`A004524(A007664(n+1))`
-/

namespace A400451.P6340621511152822963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (A007664 (n + 1)).toNat

end

end A400451.P6340621511152822963

namespace A400451

/-- `A004524(A007664(n+1))` -/
def P6340621511152822963.Spec : Prop :=
  ∀ n, P6340621511152822963.a n = A400451 (n + 1)

end A400451

/-!
# A400452: The number of divisors d of n such that gcd(d, n/d) is a prime power (A246655).

The programs for A400452, the canonical program `A400452.P2876507164572676616` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A400452 has offset 1).

The definition of A400452 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007875, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A400452.P2876507164572676616

`A007875(n+1)*A046660(n+1)`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A400452

/-- `A007875(n+1)*A046660(n+1)` -/
def P2876507164572676616.Spec : Prop :=
  ∀ n, P2876507164572676616.a n = A400452 (n + 1)

theorem P2876507164572676616.correct : P2876507164572676616.Spec := by
  intro n
  simp only [A400452, Nat.add_sub_cancel]

end A400452

/-! ## A400452.P11548963664723185775

`∑{d}[n+1, A359466(#)]`
-/

namespace A400452.P11548963664723185775
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A359466 d

end

end A400452.P11548963664723185775

namespace A400452

/-- `∑{d}[n+1, A359466(#)]` -/
def P11548963664723185775.Spec : Prop :=
  ∀ n, P11548963664723185775.a n = A400452 (n + 1)

end A400452

/-! ## A400452.P172558971905107697

`∑{e}[1+n, #-1]*A007875(n+1)`
-/

namespace A400452.P172558971905107697
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ p ∈ Nat.primeFactors (f1 n), ((Nat.factorization (f1 n) p : ℤ) - 1)) * A007875 (n + 1)

end

end A400452.P172558971905107697

namespace A400452

/-- `∑{e}[1+n, #-1]*A007875(n+1)` -/
def P172558971905107697.Spec : Prop :=
  ∀ n, P172558971905107697.a n = A400452 (n + 1)

end A400452

/-! ## A400452.P12817383291844947209

`∑{e}[1+n, #-1]*A011782(∑{p}[n+1, gcd(n, #)])`
-/

namespace A400452.P12817383291844947209
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ p ∈ Nat.primeFactors (f1 n), ((Nat.factorization (f1 n) p : ℤ) - 1)) * A011782 (∑ p ∈ Nat.primeFactors (f2 n), Nat.gcd n p)

end

end A400452.P12817383291844947209

namespace A400452

/-- `∑{e}[1+n, #-1]*A011782(∑{p}[n+1, gcd(n, #)])` -/
def P12817383291844947209.Spec : Prop :=
  ∀ n, P12817383291844947209.a n = A400452 (n + 1)

end A400452

/-! ## A400452.P1770426384569512584

`abs(∑{e}[2*n-(n-1), 1-#])/2*A034444(n+1)`
-/

namespace A400452.P1770426384569512584
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - ((n : ℤ) - 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((|∑ p ∈ Nat.primeFactors (f1 n).natAbs, (1 - (Nat.factorization (f1 n).natAbs p : ℤ))| : ℤ) : ℚ) / 2 * (A034444 (n + 1) : ℚ)

end

end A400452.P1770426384569512584

namespace A400452

/-- `abs(∑{e}[2*n-(n-1), 1-#])/2*A034444(n+1)` -/
def P1770426384569512584.Spec : Prop :=
  ∀ n, P1770426384569512584.a n = (A400452 (n + 1) : ℚ)

end A400452

/-! ## A400452.P9571925060681057152

`∑{d}[n+1, A008966(#)*A362412((n+1)/#)]`
-/

namespace A400452.P9571925060681057152
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008966 d * A362412 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A400452.P9571925060681057152

namespace A400452

/-- `∑{d}[n+1, A008966(#)*A362412((n+1)/#)]` -/
def P9571925060681057152.Spec : Prop :=
  ∀ n, P9571925060681057152.a n = A400452 (n + 1)

end A400452

/-! ## A400452.P3154899193974567252

`A000010(A034444(n+1))*A046660(n+1)`
-/

namespace A400452.P3154899193974567252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A034444 (n + 1)).toNat * A046660 (n + 1)

end

end A400452.P3154899193974567252

namespace A400452

/-- `A000010(A034444(n+1))*A046660(n+1)` -/
def P3154899193974567252.Spec : Prop :=
  ∀ n, P3154899193974567252.a n = A400452 (n + 1)

end A400452

/-! ## A400452.P13026279774476370313

`A112778(A316978(n+1))`
-/

namespace A400452.P13026279774476370313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112778 (A316978 (n + 1)).toNat

end

end A400452.P13026279774476370313

namespace A400452

/-- `A112778(A316978(n+1))` -/
def P13026279774476370313.Spec : Prop :=
  ∀ n, P13026279774476370313.a n = A400452 (n + 1)

end A400452

/-! ## A400452.P16429481049222607687

`A048105(A094548(n+1))`
-/

namespace A400452.P16429481049222607687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048105 (A094548 (n + 1)).toNat

end

end A400452.P16429481049222607687

namespace A400452

/-- `A048105(A094548(n+1))` -/
def P16429481049222607687.Spec : Prop :=
  ∀ n, P16429481049222607687.a n = A400452 (n + 1)

end A400452

/-! ## A400452.P8982233176430768006

`and(A048105(n+1), A375744(n+1))`
-/

namespace A400452.P8982233176430768006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A048105 (n + 1)) (A375744 (n + 1))

end

end A400452.P8982233176430768006

namespace A400452

/-- `and(A048105(n+1), A375744(n+1))` -/
def P8982233176430768006.Spec : Prop :=
  ∀ n, P8982233176430768006.a n = A400452 (n + 1)

end A400452

/-!
# A400459: Number of free polyforms with n cells in the honeycomb of the 11-faced Voronoi cell of the point (0, 0, 1/4) under space group I-43d (No. 220).

The programs for A400459, there is no canonical definition to state claims against.
-/

/-! ## A400459.P4577073356635202002

`A379990(n)+A379299(A001065(3*(n+1)))`
-/

namespace A400459.P4577073356635202002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379990 n + A379299 (A001065 (3 * (n + 1))).toNat

end

end A400459.P4577073356635202002

/-!
# A400471: Write the positive squares 1, 4, 9, 16, ... in base 2 and juxtapose.

The programs for A400471, there is no canonical definition to state claims against.
-/

/-! ## A400471.P10984310825280732071

`C(A284463(3*n+1), A063890(A359908(n+1)))`
-/

namespace A400471.P10984310825280732071
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A284463 (3 * n + 1)).toNat (A063890 (A359908 (n + 1)).toNat).toNat

end

end A400471.P10984310825280732071

/-! ## A400471.P13188252796702499826

`A133872(lt[A217012(2*n+5), A081706(2*n+3)])`
-/

namespace A400471.P13188252796702499826
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217012 (2 * n + 5)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081706 (2 * n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133872 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A400471.P13188252796702499826

/-! ## A400471.P5848350415200652818

`A133872(lt[A217012(2*n+5), A286048(3*n+4)])`
-/

namespace A400471.P5848350415200652818
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217012 (2 * n + 5)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286048 (3 * n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133872 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A400471.P5848350415200652818

/-! ## A400471.P4001986790415954387

`A119498(A278181(n))`
-/

namespace A400471.P4001986790415954387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119498 (A278181 n).toNat

end

end A400471.P4001986790415954387

/-! ## A400471.P7486810481399932199

`A182321(A144374(3*n+4)+A109652(n+1)-1)%2`
-/

namespace A400471.P7486810481399932199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A182321 (A144374 (3 * n + 4) + A109652 (n + 1) - 1).toNat) 2

end

end A400471.P7486810481399932199

/-!
# A400478: a(1)=1, a(2)=2; thereafter a(n) = (a(n-1)-a(n-2))*sum of digits(a(n-1)+a(n-2)).

The programs for A400478, the canonical program `A400478.P8710240923367081991` is in `Seq.B002.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A400478 has offset 1).

The definition of A400478 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007953, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A400478.P8710240923367081991

`(a(n-1)-a(n-2))*A007953(a(n-1)+a(n-2))` with `a(0)=1, a(1)=2`

The canonical program, it is in `Seq.B002.C008`.
-/

namespace A400478

/-- `(a(n-1)-a(n-2))*A007953(a(n-1)+a(n-2))` -/
def P8710240923367081991.Spec : Prop :=
  ∀ n, P8710240923367081991.a n = A400478 (n + 1)

theorem P8710240923367081991.correct : P8710240923367081991.Spec := by
  intro n
  simp only [A400478, Nat.add_sub_cancel]

end A400478

/-! ## A400478.P13364445604174288081

`A284318(A076323(n+1))+A049240(n+1)`
-/

namespace A400478.P13364445604174288081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284318 (A076323 (n + 1)).toNat + A049240 (n + 1)

end

end A400478.P13364445604174288081

namespace A400478

/-- `A284318(A076323(n+1))+A049240(n+1)` -/
def P13364445604174288081.Spec : Prop :=
  ∀ n, P13364445604174288081.a n = A400478 (n + 1)

end A400478

/-!
# A400485: a(1) = 1; for n > 1: if a(n-1) + n is odd, a(n) = a(n-1) + n else a(n) = (a(n-1) + n)/2.

The programs for A400485, the canonical program `A400485.P3529086219494941568` is in `Seq.B001.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A400485 has offset 1).

The definition of A400485 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A400485.P3081860375925913920

`lcm(2, a(n-1)+n+1)/2` with `a(0)=1`
-/

namespace A400485.P3081860375925913920
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (Int.lcm 2 (SequenceMachineLib.roundAway (a (n - 1) + (n + 1 : ℚ))) : ℚ) / 2

end

end A400485.P3081860375925913920

namespace A400485

/-- `lcm(2, a(n-1)+n+1)/2` -/
def P3081860375925913920.Spec : Prop :=
  ∀ n, P3081860375925913920.a n = (A400485 (n + 1) : ℚ)

end A400485

/-! ## A400485.P3529086219494941568

`n+A135287(n)`

The canonical program, it is in `Seq.B001.C014`.
-/

namespace A400485

/-- `n+A135287(n)` -/
def P3529086219494941568.Spec : Prop :=
  ∀ n, P3529086219494941568.a n = A400485 (n + 1)

theorem P3529086219494941568.correct : P3529086219494941568.Spec := by
  intro n
  simp only [A400485, Nat.add_sub_cancel]

end A400485

/-! ## A400485.P10707087048082878328

`A135287(n)-A001489(n)`
-/

namespace A400485.P10707087048082878328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135287 n - A001489 n

end

end A400485.P10707087048082878328

namespace A400485

/-- `A135287(n)-A001489(n)` -/
def P10707087048082878328.Spec : Prop :=
  ∀ n, P10707087048082878328.a n = A400485 (n + 1)

theorem P10707087048082878328.correct : P10707087048082878328.Spec := by
  intro n
  simp only [A400485, Nat.add_sub_cancel, A400485.P10707087048082878328.a, A400485.P3529086219494941568.a, A001489, A001489.P15233530513763566776.a, A135287, A135287.P6099636221413021975.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A400485

/-! ## A400485.P17164365882713101813

`A138037(n+2)-(n+2)`
-/

namespace A400485.P17164365882713101813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138037 (n + 2) - (n + 2 : ℤ)

end

end A400485.P17164365882713101813

namespace A400485

/-- `A138037(n+2)-(n+2)` -/
def P17164365882713101813.Spec : Prop :=
  ∀ n, P17164365882713101813.a n = A400485 (n + 1)

end A400485

/-! ## A400485.P8797501316226481709

`A135287(n)-A001057(2*n)`
-/

namespace A400485.P8797501316226481709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135287 n - A001057 (2 * n)

end

end A400485.P8797501316226481709

namespace A400485

/-- `A135287(n)-A001057(2*n)` -/
def P8797501316226481709.Spec : Prop :=
  ∀ n, P8797501316226481709.a n = A400485 (n + 1)

end A400485

/-! ## A400485.P7699820395456993894

`A145051(a(n-1)+n)` with `a(0)=1`
-/

namespace A400485.P7699820395456993894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A145051 (a (n - 1) + (n : ℤ)).toNat

end

end A400485.P7699820395456993894

namespace A400485

/-- `A145051(a(n-1)+n)` -/
def P7699820395456993894.Spec : Prop :=
  ∀ n, P7699820395456993894.a n = A400485 (n + 1)

end A400485

/-! ## A400485.P2093841104964342306

`A026741(n+1+a(n-1))` with `a(0)=1`
-/

namespace A400485.P2093841104964342306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A026741 ((n + 1 : ℤ) + a (n - 1)).toNat

end

end A400485.P2093841104964342306

namespace A400485

/-- `A026741(n+1+a(n-1))` -/
def P2093841104964342306.Spec : Prop :=
  ∀ n, P2093841104964342306.a n = A400485 (n + 1)

end A400485

/-! ## A400485.P13106004548528238004

`A026741(A138037(n+1))`
-/

namespace A400485.P13106004548528238004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A138037 (n + 1)).toNat

end

end A400485.P13106004548528238004

namespace A400485

/-- `A026741(A138037(n+1))` -/
def P13106004548528238004.Spec : Prop :=
  ∀ n, P13106004548528238004.a n = A400485 (n + 1)

end A400485

/-!
# A400495: G.f. A(x) satisfies A(x) = 1/(1 - x * A(x^2))^2.

The programs for A400495, there is no canonical definition to state claims against.
-/

/-! ## A400495.P10744274256475443121

`∑{#}[n, A217925(#)*A217925(n-#)]`
-/

namespace A400495.P10744274256475443121
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), A217925 k * A217925 (n - k)

end

end A400495.P10744274256475443121

/-! ## A400495.P18245530266196175660

`round(sqrt((A002145(A108521(n+1))+1)/2))`
-/

namespace A400495.P18245530266196175660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt ((A002145 (A108521 (n + 1)).toNat + 1 : ℚ) / 2 : ℝ))

end

end A400495.P18245530266196175660

/-!
# A400496: G.f. A(x) satisfies A(x) = 1/(1 - x * A(x^3))^2.

The programs for A400496, there is no canonical definition to state claims against.
-/

/-! ## A400496.P15004128358822006886

`∑{#}[n, A399159(#)*A399159(n-#)]`
-/

namespace A400496.P15004128358822006886
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), A399159 k * A399159 (n - k)

end

end A400496.P15004128358822006886

/-!
# A400497: G.f. A(x) satisfies A(x) = 1/(1 - x * A(x^4))^2.

The programs for A400497, there is no canonical definition to state claims against.
-/

/-! ## A400497.P487845695620156028

`∑{#}[n, A399166(#)*A399166(n-#)]`
-/

namespace A400497.P487845695620156028
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), A399166 k * A399166 (n - k)

end

end A400497.P487845695620156028

/-! ## A400497.P11557876740902231408

`A400498(n+1)-A006519(A000244(n))`
-/

namespace A400497.P11557876740902231408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A400498 (n + 1) - A006519 (A000244 n).toNat

end

end A400497.P11557876740902231408

/-! ## A400497.P4863505056667083405

`eq[A029416(n), A171765(A120750(n+1))]`
-/

namespace A400497.P4863505056667083405
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029416 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171765 (A120750 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A400497.P4863505056667083405

/-!
# A400498: G.f. A(x) satisfies A(x) = 1/(1 - x * A(x^5))^2.

The programs for A400498, there is no canonical definition to state claims against.
-/

/-! ## A400498.P11997786667902630646

`∑{#}[n, A400494(#)*A400494(n-#)]`
-/

namespace A400498.P11997786667902630646
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), A400494 k * A400494 (n - k)

end

end A400498.P11997786667902630646

/-! ## A400498.P4599538539155604469

`∑[A000005(A344493(n)²²)]`
-/

namespace A400498.P4599538539155604469
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 ((A344493 n ^ 2) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A400498.P4599538539155604469

/-! ## A400498.P9807839850993384160

`record[A127093(A114981(n+1))]`
-/

namespace A400498.P9807839850993384160
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127093 (A114981 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A400498.P9807839850993384160

/-! ## A400498.P17841600234395521810

`∑[A070939(A092492(n+1)²)]`
-/

namespace A400498.P17841600234395521810
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 (A092492 (n + 1) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A400498.P17841600234395521810

/-! ## A400498.P7168073726024427500

`A147220(∑[A010048(n+2)])+n`
-/

namespace A400498.P7168073726024427500
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010048 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147220 (∑ j ∈ Finset.range (n + 1), f1 j).toNat + (n : ℤ)

end

end A400498.P7168073726024427500

