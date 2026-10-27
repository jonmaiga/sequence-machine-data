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
import Seq.B000.C033
import Seq.B000.C035
import Seq.B000.C037
import Seq.B000.C038
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C010
import Seq.B001.C011
import Seq.B001.C012
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
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B008.C000
import Seq.B009.C000
import Seq.B010.C000
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
import Seq.Opaque.C024
import Seq.Opaque.C025
import SequenceMachineLib.Triangle

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A256100: In S = A007376 (read as a sequence) the digit S(n) appears a(n) times in the sequence S(1), ..., S(n).

The programs for A256100, there is no canonical definition to state claims against.
-/

/-! ## A256100.P11322794278707887992

`A226233(A065649(n+1))`
-/

namespace A256100.P11322794278707887992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226233 (A065649 (n + 1)).toNat

end

end A256100.P11322794278707887992

/-! ## A256100.P1918583178530602254

`A065648(A065650(A261333(n)))`
-/

namespace A256100.P1918583178530602254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065648 (A065650 (A261333 n).toNat).toNat

end

end A256100.P1918583178530602254

/-! ## A256100.P1588041720984076131

`A008616(A261333(n)-A033307(n))`
-/

namespace A256100.P1588041720984076131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008616 (A261333 n - A033307 n).toNat

end

end A256100.P1588041720984076131

/-! ## A256100.P5714842371972758505

`A008616(A261333(n)-Δ[A054632(n)])`
-/

namespace A256100.P5714842371972758505
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054632 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008616 (A261333 n - (f1 (n + 1) - f1 n)).toNat

end

end A256100.P5714842371972758505

/-! ## A256100.P6176912749617351502

`A008616(A261333(n)+A031310(n+1))`
-/

namespace A256100.P6176912749617351502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008616 (A261333 n + A031310 (n + 1)).toNat

end

end A256100.P6176912749617351502

/-! ## A256100.P8252350643359632550

`A008616(A261333(n)-A007376(n+1))`
-/

namespace A256100.P8252350643359632550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008616 (A261333 n - A007376 (n + 1)).toNat

end

end A256100.P8252350643359632550

/-! ## A256100.P13259240328297224892

`A008616(A261333(n)-A261333(n)%10)`
-/

namespace A256100.P13259240328297224892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008616 (A261333 n - Int.tmod (A261333 n) 10).toNat

end

end A256100.P13259240328297224892

/-! ## A256100.P18398963543421070578

`A008616(A261333(n)-A108202(2*(n+1)))`
-/

namespace A256100.P18398963543421070578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008616 (A261333 n - A108202 (2 * (n + 1))).toNat

end

end A256100.P18398963543421070578

/-! ## A256100.P5212087649775917241

`A008616(A261333(n)-(A054632(n+1)-A054632(n)))`
-/

namespace A256100.P5212087649775917241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008616 (A261333 n - (A054632 (n + 1) - A054632 n)).toNat

end

end A256100.P5212087649775917241

/-! ## A256100.P5310012680710092539

`A008616(A261333(n)-(1-A098728(n)+n))`
-/

namespace A256100.P5310012680710092539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008616 (A261333 n - (1 - A098728 n + (n : ℤ))).toNat

end

end A256100.P5310012680710092539

/-! ## A256100.P6848078903058561802

`A008616(A261333(n)-(2-A098732(n+2)+n))`
-/

namespace A256100.P6848078903058561802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008616 (A261333 n - (2 - A098732 (n + 2) + (n : ℤ))).toNat

end

end A256100.P6848078903058561802

/-!
# A256101: The broken eggs problem.

The programs for A256101, the canonical program `A256101.P9512468906289013798` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A256101 has offset 1).

The definition of A256101 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A256101.P9512468906289013798

`420*(n+1)-119`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A256101

/-- `420*(n+1)-119` -/
def P9512468906289013798.Spec : Prop :=
  ∀ n, P9512468906289013798.a n = A256101 (n + 1)

theorem P9512468906289013798.correct : P9512468906289013798.Spec := by
  intro n
  simp only [A256101, Nat.add_sub_cancel]

end A256101

/-!
# A256102: Numbers m such that gcd(A001008(m), m) > 1, in increasing order.

The programs for A256102, there is no canonical definition to state claims against.
-/

/-! ## A256102.P14050676422202408144

`lt[1, gcd(n+1, A093818(n+1))]+1`
-/

namespace A256102.P14050676422202408144
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A093818 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A256102.P14050676422202408144

/-! ## A256102.P3172263320864459187

`eq[A025492(n+2), A093818(n+2)]+2`
-/

namespace A256102.P3172263320864459187
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025492 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093818 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 2

end

end A256102.P3172263320864459187

/-!
# A256103: a(n) = gcd(A001008(m(n)), m(n)), with m(n) = A256102(n), n >= 1.

The programs for A256103, there is no canonical definition to state claims against.
-/

/-! ## A256103.P2407751382578481708

`∑{p}[A093818(A256102(n+1)), #]`
-/

namespace A256103.P2407751382578481708
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093818 (A256102 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A256103.P2407751382578481708

/-! ## A256103.P5539465092870781440

`A014963(A093818(A256102(n+1)))`
-/

namespace A256103.P5539465092870781440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A093818 (A256102 (n + 1)).toNat).toNat

end

end A256103.P5539465092870781440

/-! ## A256103.P8292793346941759972

`A120263(A256102(n+1))`
-/

namespace A256103.P8292793346941759972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120263 (A256102 (n + 1)).toNat

end

end A256103.P8292793346941759972

/-! ## A256103.P11012997665718759517

`A006530(A256102(n+1)*A280497(n+1))`
-/

namespace A256103.P11012997665718759517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A256102 (n + 1) * A280497 (n + 1)).toNat

end

end A256103.P11012997665718759517

/-! ## A256103.P7476947185815206738

`A006530(A027833(n+5)*A256102(n+1))`
-/

namespace A256103.P7476947185815206738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A027833 (n + 5) * A256102 (n + 1)).toNat

end

end A256103.P7476947185815206738

/-!
# A256105: a(n) = [x^n] 2^(2*n) / Product_{k>=1} (1-x^k)^(2^(-k)).

The programs for A256105, there is no canonical definition to state claims against.
-/

/-! ## A256105.P4706233078714196542

`A018808(n)+A018671(A018687(n+1))`
-/

namespace A256105.P4706233078714196542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018808 n + A018671 (A018687 (n + 1)).toNat

end

end A256105.P4706233078714196542

/-!
# A256106: Number of ways to write n as w + x + 2*y + 4*z, where w,x,y,z are hexagonal numbers with w <= x.

The programs for A256106, there is no canonical definition to state claims against.
-/

/-! ## A256106.P7386641906449721704

`A057217(n+1)/A043284(A109886(n))`
-/

namespace A256106.P7386641906449721704
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A057217 (n + 1) : ℚ) / (A043284 (A109886 n).toNat : ℚ)

end

end A256106.P7386641906449721704

/-! ## A256106.P15188519632285642524

`gcd(A018293(A028310(n)), A057217(n+1))`
-/

namespace A256106.P15188519632285642524
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A018293 (A028310 n).toNat) (A057217 (n + 1))

end

end A256106.P15188519632285642524

/-! ## A256106.P8481401953802702303

`A057217(n+1)-A121373(A191727(3*n+5))`
-/

namespace A256106.P8481401953802702303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057217 (n + 1) - A121373 (A191727 (3 * n + 5)).toNat

end

end A256106.P8481401953802702303

/-! ## A256106.P10095181439035952548

`A331084(A279095(n+1))`
-/

namespace A256106.P10095181439035952548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331084 (A279095 (n + 1)).toNat

end

end A256106.P10095181439035952548

/-! ## A256106.P3443544047670592960

`A333766(gcd(A001157(2*n+3), A389532(n+5)))`
-/

namespace A256106.P3443544047670592960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333766 (Int.gcd (A001157 (2 * n + 3)) (A389532 (n + 5)))

end

end A256106.P3443544047670592960

/-!
# A256108: Positions of nonzero digits in binary expansion of Pi.

The programs for A256108, there is no canonical definition to state claims against.
-/

/-! ## A256108.P1153509437563525991

`A004711(n+1)-2`
-/

namespace A256108.P1153509437563525991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004711 (n + 1) - 2

end

end A256108.P1153509437563525991

/-! ## A256108.P8645859051063121731

`abs(1-A004711(-xor(n, -1)))-1`
-/

namespace A256108.P8645859051063121731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A004711 (-Int.xor (n : ℤ) (-1)).toNat| - 1

end

end A256108.P8645859051063121731

/-! ## A256108.P4974605823799547921

`∪[A293830(n+1), A293831(n+1)]-2`
-/

namespace A256108.P4974605823799547921
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293830 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293831 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n : ℤ) - 2

end

end A256108.P4974605823799547921

/-! ## A256108.P14234476490812884365

`eq[0, A180433(n+1)]-1`
-/

namespace A256108.P14234476490812884365
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180433 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ) - 1

end

end A256108.P14234476490812884365

/-! ## A256108.P1893038429776828890

`lt[0, A004601(n+2)]-1`
-/

namespace A256108.P1893038429776828890
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004601 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n : ℤ) - 1

end

end A256108.P1893038429776828890

/-! ## A256108.P12187049031302506163

`record[n^∑[A155482(n)]-1]`
-/

namespace A256108.P12187049031302506163
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155482 n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) ^ (∑ j ∈ Finset.range (n + 1), f2 j : ℤ) - 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A256108.P12187049031302506163

/-! ## A256108.P17598526976197761040

`lt[A180433(-xor(n, -1)), 1]-1`
-/

namespace A256108.P17598526976197761040
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180433 (-Int.xor (n : ℤ) (-1)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n : ℤ) - 1

end

end A256108.P17598526976197761040

/-! ## A256108.P4556587462088616348

`A023444(A004711(n+1))`
-/

namespace A256108.P4556587462088616348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023444 (A004711 (n + 1)).toNat

end

end A256108.P4556587462088616348

/-! ## A256108.P13402170048246807697

`A023445(A004711(n+1)+1)`
-/

namespace A256108.P13402170048246807697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023445 (A004711 (n + 1) + 1).toNat

end

end A256108.P13402170048246807697

/-! ## A256108.P16184276170684808589

`A023447(A004711(n+1)+3)`
-/

namespace A256108.P16184276170684808589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023447 (A004711 (n + 1) + 3).toNat

end

end A256108.P16184276170684808589

/-! ## A256108.P1994127210761158299

`A023456(A004711(n+1)+12)`
-/

namespace A256108.P1994127210761158299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023456 (A004711 (n + 1) + 12).toNat

end

end A256108.P1994127210761158299

/-!
# A256109: Index of the n-th zero in the first occurrence of a string of exactly n zeros in the decimal expansion of Pi.

The programs for A256109, there is no canonical definition to state claims against.
-/

/-! ## A256109.P16876664072669093153

`A050279(n+1)+n+1`
-/

namespace A256109.P16876664072669093153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050279 (n + 1) + (n + 1 : ℤ)

end

end A256109.P16876664072669093153

/-! ## A256109.P17528660961611706037

`A077168(n)+A050279(n+1)`
-/

namespace A256109.P17528660961611706037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077168 n + A050279 (n + 1)

end

end A256109.P17528660961611706037

/-! ## A256109.P7672445218484269637

`A291769(n)+A050279(n+1)`
-/

namespace A256109.P7672445218484269637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291769 n + A050279 (n + 1)

end

end A256109.P7672445218484269637

/-!
# A256111: a(n) = squared distance to the origin of the n-th vertex on a Babylonian Spiral.

The programs for A256111, there is no canonical definition to state claims against.
-/

/-! ## A256111.P5054479623257687426

`A297346(n+1)²+A297347(n+1)²`
-/

namespace A256111.P5054479623257687426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297346 (n + 1) ^ 2 + A297347 (n + 1) ^ 2

end

end A256111.P5054479623257687426

/-!
# A256112: Pandigitals in some base b (A061845) with an extra property: each number formed by the first i digits is divisible by i (digits in the pandigital base b) for 1 <= i <= b-1.

The programs for A256112, there is no canonical definition to state claims against.
-/

/-! ## A256112.P10091908312090304966

`xor(p?[A323645(n+1)], A208269(n+1))`
-/

namespace A256112.P10091908312090304966
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323645 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A208269 (n + 1))

end

end A256112.P10091908312090304966

/-!
# A256113: Table read by rows: T(1,1) = 1, for n > 1: row n = union of distinct prime factors occurring in terms of n-th row of Pascal's triangle, cf. A007318.

The programs for A256113, there is no canonical definition to state claims against.
-/

/-! ## A256113.P6361993427918894731

`A015886(lt[n, A159076(n+1)])`
-/

namespace A256113.P6361993427918894731
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159076 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015886 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A256113.P6361993427918894731

/-! ## A256113.P5123729265283535733

`A087039(A072941(n+1)*A227263(n+1))`
-/

namespace A256113.P5123729265283535733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087039 (A072941 (n + 1) * A227263 (n + 1)).toNat

end

end A256113.P5123729265283535733

/-! ## A256113.P13719173118962001003

`A006530(A000120(∑[∑[(n%3)!]]²))`
-/

namespace A256113.P13719173118962001003
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (n % 3)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A000120 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2)).toNat

end

end A256113.P13719173118962001003

/-! ## A256113.P17823703892263197730

`A001222(A163487(n+1)+A041023(n))`
-/

namespace A256113.P17823703892263197730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A163487 (n + 1) + A041023 n).toNat

end

end A256113.P17823703892263197730

/-! ## A256113.P14197490181430804590

`A105560(A070933(n)-A211263(n+1))`
-/

namespace A256113.P14197490181430804590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105560 (A070933 n - A211263 (n + 1)).toNat

end

end A256113.P14197490181430804590

/-!
# A256114: Numbers n such that digit_product(n^2) = (digit_product(n))^2 and n mod 10 > 0.

The programs for A256114, there is no canonical definition to state claims against.
-/

/-! ## A256114.P10045677360211256625

`∑[A218115(∏{e}[n+1, gcd(2, #)]^n)]`
-/

namespace A256114.P10045677360211256625
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218115 ((∏ p ∈ Nat.primeFactors (f2 n), Nat.gcd 2 (Nat.factorization (f2 n) p)) ^ n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A256114.P10045677360211256625

/-! ## A256114.P4623981466955659797

`∑[A055545(n!*Δ[floor((n+1)/(ϕ+3))])]`
-/

namespace A256114.P4623981466955659797
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℝ) / (Real.goldenRatio + 3)⌋

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055545 ((Nat.factorial n : ℤ) * (f2 (n + 1) - f2 n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A256114.P4623981466955659797

/-! ## A256114.P14707175396648320759

`∑[A051838(A005925(n)!)]`
-/

namespace A256114.P14707175396648320759
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051838 (Nat.factorial (A005925 n).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A256114.P14707175396648320759

/-! ## A256114.P9386444729603078073

`∑[A050981(A051007(n!))]`
-/

namespace A256114.P9386444729603078073
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050981 (A051007 (Nat.factorial n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A256114.P9386444729603078073

/-!
# A256115: Zeroless numbers n whose digit product squared is equal to the digit product of n^2.

The programs for A256115, there is no canonical definition to state claims against.
-/

/-! ## A256115.P12229087604059251921

`∩[A066733(n+1), A256114(n+1)]`
-/

namespace A256115.P12229087604059251921
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066733 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256114 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A256115.P12229087604059251921

/-! ## A256115.P17342385808492158740

`∩[A161390(n+1), A256114(n+1)]`
-/

namespace A256115.P17342385808492158740
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161390 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256114 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A256115.P17342385808492158740

/-!
# A256116: Number T(n,k) of length 2n k-ary words, either empty or beginning with the first letter of the alphabet and using each letter at least once, that can be built by repeatedly inserting doublets into the initially empty word; triangle T(n,k), n>=0, 0<=k<=n, read by rows.

The programs for A256116, there is no canonical definition to state claims against.
-/

/-! ## A256116.P17428445826040621651

`A165680(n+1)*A256117(n)`
-/

namespace A256116.P17428445826040621651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165680 (n + 1) * A256117 n

end

end A256116.P17428445826040621651

/-! ## A256116.P11944571550364066164

`A002262(floor(acot(n)+n)-1)!*A256117(n)`
-/

namespace A256116.P11944571550364066164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A002262 (⌊SequenceMachineLib.acot (n : ℝ) + (n : ℝ)⌋ - 1).toNat).toNat : ℤ) * A256117 n

end

end A256116.P11944571550364066164

/-! ## A256116.P2048592354033532170

`A119502(A056943(n))*A256117(n)`
-/

namespace A256116.P2048592354033532170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119502 (A056943 n).toNat * A256117 n

end

end A256116.P2048592354033532170

/-! ## A256116.P8857100586603054386

`A119502(A038722(n+1))*A256117(n)`
-/

namespace A256116.P8857100586603054386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119502 (A038722 (n + 1)).toNat * A256117 n

end

end A256116.P8857100586603054386

/-! ## A256116.P12164068222152322552

`A119502(A061579(n)+1)*A256117(n)`
-/

namespace A256116.P12164068222152322552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119502 (A061579 n + 1).toNat * A256117 n

end

end A256116.P12164068222152322552

/-! ## A256116.P2116594193322864331

`A002262(A028310(n)-1)!*A256117(n)`
-/

namespace A256116.P2116594193322864331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A002262 (A028310 n - 1).toNat).toNat : ℤ) * A256117 n

end

end A256116.P2116594193322864331

/-! ## A256116.P4699809617690698991

`A002262(A003056(n)+n)!*A256117(n)`
-/

namespace A256116.P4699809617690698991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A002262 (A003056 n + (n : ℤ)).toNat).toNat : ℤ) * A256117 n

end

end A256116.P4699809617690698991

/-! ## A256116.P6056118511739547410

`A002262(A004273(n)-n)!*A256117(n)`
-/

namespace A256116.P6056118511739547410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A002262 (A004273 n - (n : ℤ)).toNat).toNat : ℤ) * A256117 n

end

end A256116.P6056118511739547410

/-! ## A256116.P11891752862089913453

`A119502(∑[A198954(n)]-n)*A256117(n)`
-/

namespace A256116.P11891752862089913453
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198954 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119502 (∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)).toNat * A256117 n

end

end A256116.P11891752862089913453

/-! ## A256116.P6619636487376627341

`A119502(A002024(n+1)²-n)*A256117(n)`
-/

namespace A256116.P6619636487376627341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119502 (A002024 (n + 1) ^ 2 - (n : ℤ)).toNat * A256117 n

end

end A256116.P6619636487376627341

/-!
# A256117: Number T(n,k) of length 2n words such that all letters of the k-ary alphabet occur at least once and are introduced in ascending order and which can be built by repeatedly inserting doublets into the initially empty word; triangle T(n,k), n>=0, 0<=k<=n, read by rows.

The programs for A256117, there is no canonical definition to state claims against.
-/

/-! ## A256117.P1214119398098383866

`A256116(n)/A165680(n+1)`
-/

namespace A256117.P1214119398098383866
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A256116 n : ℚ) / (A165680 (n + 1) : ℚ)

end

end A256117.P1214119398098383866

/-! ## A256117.P2297696013904603721

`A256116(n)/A119502(A056943(n))`
-/

namespace A256117.P2297696013904603721
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A256116 n : ℚ) / (A119502 (A056943 n).toNat : ℚ)

end

end A256117.P2297696013904603721

/-! ## A256117.P17064673989662611910

`A256116(n)/A119502(A038722(n+1))`
-/

namespace A256117.P17064673989662611910
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A256116 n : ℚ) / (A119502 (A038722 (n + 1)).toNat : ℚ)

end

end A256117.P17064673989662611910

/-! ## A256117.P6384790891419099194

`A256116(n)/A335434(A156576(n))`
-/

namespace A256117.P6384790891419099194
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A256116 n : ℚ) / (A335434 (A156576 n).toNat : ℚ)

end

end A256117.P6384790891419099194

/-! ## A256117.P14960738770667619306

`A256116(n)/A060128(A082171(n))`
-/

namespace A256117.P14960738770667619306
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A256116 n : ℚ) / (A060128 (A082171 n).toNat : ℚ)

end

end A256117.P14960738770667619306

/-!
# A256118: Nine-digit zeroless pandigital numbers that are concatenation of three 3-digit prime numbers in increasing order.

The programs for A256118, there is no canonical definition to state claims against.
-/

/-! ## A256118.P3005226693906174181

`A115301(A115309(3*n+2)-A115320(3*n+2))`
-/

namespace A256118.P3005226693906174181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115301 (A115309 (3 * n + 2) - A115320 (3 * n + 2)).toNat

end

end A256118.P3005226693906174181

/-!
# A256120: Number of tautologies in propositional calculus of length n.

The programs for A256120, there is no canonical definition to state claims against.
-/

/-! ## A256120.P14233180081603710115

`A277276(n+1)-A277275(n+1)`
-/

namespace A256120.P14233180081603710115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277276 (n + 1) - A277275 (n + 1)

end

end A256120.P14233180081603710115

/-! ## A256120.P1181138258240423288

`abs(Δ[A322403(A322429(n+4))])`
-/

namespace A256120.P1181138258240423288
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322403 (A322429 (n + 4)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A256120.P1181138258240423288

/-! ## A256120.P10179647696996195568

`Δ[A138530(A178963(n))]*A008620(n)`
-/

namespace A256120.P10179647696996195568
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138530 (A178963 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A008620 n

end

end A256120.P10179647696996195568

/-! ## A256120.P8253412873115454718

`A195321(A034472(n))%A005109(n+1)`
-/

namespace A256120.P8253412873115454718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A195321 (A034472 n).toNat) (A005109 (n + 1))

end

end A256120.P8253412873115454718

/-! ## A256120.P815880948096178248

`A278264(A000228(n+1))%A028495(n)`
-/

namespace A256120.P815880948096178248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A278264 (A000228 (n + 1)).toNat) (A028495 n)

end

end A256120.P815880948096178248

/-!
# A256121: Lexicographically earliest increasing sequence such that the derived triangle T(n,k) = "a(n) represented in base a(k)" (with k < n) contains only distinct representations.

The programs for A256121, there is no canonical definition to state claims against.
-/

/-! ## A256121.P6455031142952570171

`A319226(A000055(n))+A000124(n)`
-/

namespace A256121.P6455031142952570171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319226 (A000055 n).toNat + A000124 n

end

end A256121.P6455031142952570171

/-! ## A256121.P17392204913601339285

`A233308(A126155(n))+A000124(n)`
-/

namespace A256121.P17392204913601339285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233308 (A126155 n).toNat + A000124 n

end

end A256121.P17392204913601339285

/-! ## A256121.P3681204866572201011

`A002487(A243065(3*n+1))+A000124(n)`
-/

namespace A256121.P3681204866572201011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (A243065 (3 * n + 1)).toNat + A000124 n

end

end A256121.P3681204866572201011

/-! ## A256121.P4701092271945016747

`A344713((n+2)²)+∑[n]`
-/

namespace A256121.P4701092271945016747
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344713 ((n + 2) ^ 2) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A256121.P4701092271945016747

/-! ## A256121.P11370223553364388607

`A307200(∑[2^n])+∑[n]`
-/

namespace A256121.P11370223553364388607
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307200 (∑ j ∈ Finset.range (n + 1), f1 j) + ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

end

end A256121.P11370223553364388607

/-!
# A256122: Number of iterations needed to reach 0 or 1 under the map n-> n-sopf(n), where sopf(n) is the sum of the distinct primes dividing n (A008472).

The programs for A256122, there is no canonical definition to state claims against.
-/

/-! ## A256122.P6327596201995235059

`A325169(A335741(n)*A339913(n+1))`
-/

namespace A256122.P6327596201995235059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325169 (A335741 n * A339913 (n + 1)).toNat

end

end A256122.P6327596201995235059

/-! ## A256122.P5666619455263083607

`A137734(A003023(n+1))-A010052(A333742(n+1))`
-/

namespace A256122.P5666619455263083607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137734 (A003023 (n + 1)).toNat - A010052 (A333742 (n + 1)).toNat

end

end A256122.P5666619455263083607

/-! ## A256122.P18226585601087729541

`A055734(A027379(A115121(n+1)))`
-/

namespace A256122.P18226585601087729541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055734 (A027379 (A115121 (n + 1)).toNat).toNat

end

end A256122.P18226585601087729541

/-! ## A256122.P13202249590844979030

`A001221(A008486(A115121(n+1)²))`
-/

namespace A256122.P13202249590844979030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A008486 (A115121 (n + 1) ^ 2).toNat).toNat

end

end A256122.P13202249590844979030

/-! ## A256122.P8220091590544085303

`A167746(A066020(n+1))`
-/

namespace A256122.P8220091590544085303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167746 (A066020 (n + 1)).toNat

end

end A256122.P8220091590544085303

/-!
# A256124: Coefficients in asymptotic expansion of sequence A107894.

The programs for A256124, there is no canonical definition to state claims against.
-/

/-! ## A256124.P5210068266065958208

`A233386(14*a(n-1))` with `a(0)=1, a(1)=1`
-/

namespace A256124.P5210068266065958208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A233386 (14 * a (n - 1)).toNat

end

end A256124.P5210068266065958208

/-! ## A256124.P16202574582804511746

`A277193(A001586(n))`
-/

namespace A256124.P16202574582804511746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277193 (A001586 n).toNat

end

end A256124.P16202574582804511746

/-!
# A256125: Coefficients in asymptotic expansion of sequence A077365.

The programs for A256125, there is no canonical definition to state claims against.
-/

/-! ## A256125.P7283607903758709399

`A100196(∑[A352658(n)])`
-/

namespace A256125.P7283607903758709399
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352658 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100196 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A256125.P7283607903758709399

/-! ## A256125.P14563268866492784085

`A289133(A058799(n)+2)`
-/

namespace A256125.P14563268866492784085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289133 (A058799 n + 2).toNat

end

end A256125.P14563268866492784085

/-!
# A256126: Coefficients in asymptotic expansion of sequence A179327.

The programs for A256126, there is no canonical definition to state claims against.
-/

/-! ## A256126.P11741154757038689549

`A011760(or(A143844(n), A193319(n)))`
-/

namespace A256126.P11741154757038689549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011760 (Int.lor (A143844 n) (A193319 n)).toNat

end

end A256126.P11741154757038689549

/-! ## A256126.P17055097968181679263

`or(A011760(A193319(n)), A233386(2*n+3))`
-/

namespace A256126.P17055097968181679263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A011760 (A193319 n).toNat) (A233386 (2 * n + 3))

end

end A256126.P17055097968181679263

/-!
# A256130: Number T(n,k) of partitions of n into parts of exactly k sorts which are introduced in ascending order; triangle T(n,k), n>=0, 0<=k<=n, read by rows.

The programs for A256130, there is no canonical definition to state claims against.
-/

/-! ## A256130.P9497309188908972580

`A255970(n)/A233543(n)`
-/

namespace A256130.P9497309188908972580
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A255970 n : ℚ) / (A233543 n : ℚ)

end

end A256130.P9497309188908972580

/-! ## A256130.P10792498920671571738

`A255970(n)/A002262(n)!`
-/

namespace A256130.P10792498920671571738
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A255970 n : ℚ) / (Nat.factorial (A002262 n).toNat : ℚ)

end

end A256130.P10792498920671571738

/-! ## A256130.P583839594693086928

`A255970(n)/A144328(n+1)!`
-/

namespace A256130.P583839594693086928
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A255970 n : ℚ) / (Nat.factorial (A144328 (n + 1)).toNat : ℚ)

end

end A256130.P583839594693086928

/-! ## A256130.P13938656166194643929

`A255970(n)/A119502(A061579(n))`
-/

namespace A256130.P13938656166194643929
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A255970 n : ℚ) / (A119502 (A061579 n).toNat : ℚ)

end

end A256130.P13938656166194643929

/-! ## A256130.P10063224613902926343

`A255970(n)/A166350(A028310(n))`
-/

namespace A256130.P10063224613902926343
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A255970 n : ℚ) / (A166350 (A028310 n).toNat : ℚ)

end

end A256130.P10063224613902926343

/-! ## A256130.P7066905180381429807

`A255970(n)/A166350(A233583(n+1))`
-/

namespace A256130.P7066905180381429807
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A255970 n : ℚ) / (A166350 (A233583 (n + 1)).toNat : ℚ)

end

end A256130.P7066905180381429807

/-! ## A256130.P2420201063391494135

`A255970(n)/A265312(A245300(n))`
-/

namespace A256130.P2420201063391494135
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A255970 n : ℚ) / (A265312 (A245300 n).toNat : ℚ)

end

end A256130.P2420201063391494135

/-! ## A256130.P5363107317225527257

`A255970(n)/A001222(A059268(n))!`
-/

namespace A256130.P5363107317225527257
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A255970 n : ℚ) / (Nat.factorial (A001222 (A059268 n).toNat).toNat : ℚ)

end

end A256130.P5363107317225527257

/-! ## A256130.P14081086747026745462

`A255970(n)/A112624(A059268(n))`
-/

namespace A256130.P14081086747026745462
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A255970 n : ℚ) / (A112624 (A059268 n).toNat : ℚ)

end

end A256130.P14081086747026745462

/-!
# A256131: a(n) = H_n(10,2) where H_n is the n-th hyperoperator.

The programs for A256131, there is no canonical definition to state claims against.
-/

/-! ## A256131.P7398617177396206080

`A280265(n+50)`
-/

namespace A256131.P7398617177396206080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280265 (n + 50)

end

end A256131.P7398617177396206080

/-!
# A256132: Number of ways to write n as w*(3w+1)/2 + x*(3x-1)/2 + y*(3y-1)/2 + z*(3z-1)/2, where w,x,y,z are nonnegative integers with x <= y <= z.

The programs for A256132, there is no canonical definition to state claims against.
-/

/-! ## A256132.P4188881475038865919

`A001221(xor(A124370(n), A270248(2*(n+1))))`
-/

namespace A256132.P4188881475038865919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (Int.xor (A124370 n) (A270248 (2 * (n + 1)))).toNat

end

end A256132.P4188881475038865919

/-! ## A256132.P7303895762106555830

`A336123(A265055(n+3)+A029860(n))`
-/

namespace A256132.P7303895762106555830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336123 (A265055 (n + 3) + A029860 n).toNat

end

end A256132.P7303895762106555830

/-! ## A256132.P13070883670143353895

`A001221(A269537(n+1)+A000755(n+1))`
-/

namespace A256132.P13070883670143353895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A269537 (n + 1) + A000755 (n + 1)).toNat

end

end A256132.P13070883670143353895

/-! ## A256132.P2857591621538313700

`A302243(A283232(n+1)+A194866(n+1))`
-/

namespace A256132.P2857591621538313700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302243 (A283232 (n + 1) + A194866 (n + 1)).toNat

end

end A256132.P2857591621538313700

/-! ## A256132.P15471182429612148262

`A102669(A039116(n+1)*A109046(6*n+14))`
-/

namespace A256132.P15471182429612148262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102669 (A039116 (n + 1) * A109046 (6 * n + 14)).toNat

end

end A256132.P15471182429612148262

/-!
# A256133: Numbers that have unique expansion with minimal digit sum in terms of Fibonacci numbers F_k (k > 1).

The programs for A256133, there is no canonical definition to state claims against.
-/

/-! ## A256133.P10365752528859027749

`eq[1, A245548(n+1)]+1`
-/

namespace A256133.P10365752528859027749
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245548 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A256133.P10365752528859027749

/-! ## A256133.P10724249769019613839

`record[A000027(n+1)/A245548(n+1)]`
-/

namespace A256133.P10724249769019613839
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000027 (n + 1) : ℚ) / (A245548 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A256133.P10724249769019613839

/-! ## A256133.P12915564383957721588

`record[A292579(n+1)/A245548(n+1)]`
-/

namespace A256133.P12915564383957721588
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A292579 (n + 1) : ℚ) / (A245548 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A256133.P12915564383957721588

/-! ## A256133.P4812894236405065836

`record[A028242(2*n)/A245548(n+1)]`
-/

namespace A256133.P4812894236405065836
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028242 (2 * n) : ℚ) / (A245548 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A256133.P4812894236405065836

/-!
# A256135: a(n) = 5^A000120(n).

The programs for A256135, the canonical program `A256135.P15425195409357675136` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A256135 has offset 0).

The definition of A256135 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A256135.P3435088415951956359

`5^A000120(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A256135.P3435088415951956359
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (5 : ℚ) ^ (A000120 n : ℤ)

end

end A256135.P3435088415951956359

namespace A256135

/-- `5^A000120(n)` -/
def P3435088415951956359.Spec : Prop :=
  ∀ n, P3435088415951956359.a n = (A256135 n : ℚ)

end A256135

/-! ## A256135.P15425195409357675136

`A000351(A000120(n))`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A256135

/-- `A000351(A000120(n))` -/
def P15425195409357675136.Spec : Prop :=
  ∀ n, P15425195409357675136.a n = A256135 n

theorem P15425195409357675136.correct : P15425195409357675136.Spec := by
  intro n
  simp only [A256135]

end A256135

/-! ## A256135.P6040131652845150490

`5*a(and(n, n-1))` with `a(0)=1`
-/

namespace A256135.P6040131652845150490
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  5 * a (Int.land (n : ℤ) ((n : ℤ) - 1)).toNat

end

end A256135.P6040131652845150490

namespace A256135

/-- `5*a(and(n, n-1))` -/
def P6040131652845150490.Spec : Prop :=
  ∀ n, (P6040131652845150490.a n : ℤ) = A256135 n

end A256135

/-! ## A256135.P11239345921282162829

`a(floor(n/2))*a(n%2)` with `a(0)=1, a(1)=5`
-/

namespace A256135.P11239345921282162829
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 5] fun n a =>
  a ⌊(n : ℚ) / 2⌋.toNat * a (n % 2)

end

end A256135.P11239345921282162829

namespace A256135

/-- `a(floor(n/2))*a(n%2)` -/
def P11239345921282162829.Spec : Prop :=
  ∀ n, (P11239345921282162829.a n : ℤ) = A256135 n

end A256135

/-! ## A256135.P9477104241445037312

`5^log2(A001316(n))`
-/

namespace A256135.P9477104241445037312
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (5 : ℝ) ^ (Real.logb 2 (A001316 n : ℝ))

end

end A256135.P9477104241445037312

namespace A256135

/-- `5^log2(A001316(n))` -/
def P9477104241445037312.Spec : Prop :=
  ∀ n, P9477104241445037312.a n = (A256135 n : ℝ)

end A256135

/-! ## A256135.P1025269639746524570

`5^∑[A088705(n)]`
-/

namespace A256135.P1025269639746524570
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088705 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (5 : ℚ) ^ (∑ j ∈ Finset.range (n + 1), f1 j : ℤ)

end

end A256135.P1025269639746524570

namespace A256135

/-- `5^∑[A088705(n)]` -/
def P1025269639746524570.Spec : Prop :=
  ∀ n, P1025269639746524570.a n = (A256135 n : ℚ)

end A256135

/-! ## A256135.P1826941777512229270

`5^val(A102377(n), 2)`
-/

namespace A256135.P1826941777512229270
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 ^ SequenceMachineLib.valuation (A102377 n).toNat 2

end

end A256135.P1826941777512229270

namespace A256135

/-- `5^val(A102377(n), 2)` -/
def P1826941777512229270.Spec : Prop :=
  ∀ n, (P1826941777512229270.a n : ℤ) = A256135 n

end A256135

/-! ## A256135.P11737434002204960813

`5^val(A160713(n), 2)`
-/

namespace A256135.P11737434002204960813
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 ^ SequenceMachineLib.valuation (A160713 n).toNat 2

end

end A256135.P11737434002204960813

namespace A256135

/-- `5^val(A160713(n), 2)` -/
def P11737434002204960813.Spec : Prop :=
  ∀ n, (P11737434002204960813.a n : ℤ) = A256135 n

end A256135

/-! ## A256135.P7860500762750954386

`5^val(A048883(n), 3)`
-/

namespace A256135.P7860500762750954386
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 ^ SequenceMachineLib.valuation (A048883 n).toNat 3

end

end A256135.P7860500762750954386

namespace A256135

/-- `5^val(A048883(n), 3)` -/
def P7860500762750954386.Spec : Prop :=
  ∀ n, (P7860500762750954386.a n : ℤ) = A256135 n

end A256135

/-! ## A256135.P9009567686410976169

`∏{digits}[A169965(n+1), #²+1]`
-/

namespace A256135.P9009567686410976169
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169965 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x ^ 2 + 1).prod

end

end A256135.P9009567686410976169

namespace A256135

/-- `∏{digits}[A169965(n+1), #²+1]` -/
def P9009567686410976169.Spec : Prop :=
  ∀ n, (P9009567686410976169.a n : ℤ) = A256135 n

end A256135

/-! ## A256135.P557852850477652360

`A032532(A001316(n))`
-/

namespace A256135.P557852850477652360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032532 (A001316 n).toNat

end

end A256135.P557852850477652360

namespace A256135

/-- `A032532(A001316(n))` -/
def P557852850477652360.Spec : Prop :=
  ∀ n, P557852850477652360.a n = A256135 n

end A256135

/-! ## A256135.P13421487449343515071

`A116553(A038573(n))`
-/

namespace A256135.P13421487449343515071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116553 (A038573 n).toNat

end

end A256135.P13421487449343515071

namespace A256135

/-- `A116553(A038573(n))` -/
def P13421487449343515071.Spec : Prop :=
  ∀ n, P13421487449343515071.a n = A256135 n

end A256135

/-! ## A256135.P13118347015166395046

`A165826(A268444(n))`
-/

namespace A256135.P13118347015166395046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165826 (A268444 n).toNat

end

end A256135.P13118347015166395046

namespace A256135

/-- `A165826(A268444(n))` -/
def P13118347015166395046.Spec : Prop :=
  ∀ n, P13118347015166395046.a n = A256135 n

end A256135

/-! ## A256135.P964702833234186610

`A033042(A038573(n)+1)`
-/

namespace A256135.P964702833234186610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033042 (A038573 n + 1).toNat

end

end A256135.P964702833234186610

namespace A256135

/-- `A033042(A038573(n)+1)` -/
def P964702833234186610.Spec : Prop :=
  ∀ n, P964702833234186610.a n = A256135 n

end A256135

/-! ## A256135.P4986593259415632196

`A116520(A001316(2*n))`
-/

namespace A256135.P4986593259415632196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116520 (A001316 (2 * n)).toNat

end

end A256135.P4986593259415632196

namespace A256135

/-- `A116520(A001316(2*n))` -/
def P4986593259415632196.Spec : Prop :=
  ∀ n, P4986593259415632196.a n = A256135 n

end A256135

/-! ## A256135.P5309381459419979634

`A140730(4*A000120(n))`
-/

namespace A256135.P5309381459419979634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140730 (4 * A000120 n).toNat

end

end A256135.P5309381459419979634

namespace A256135

/-- `A140730(4*A000120(n))` -/
def P5309381459419979634.Spec : Prop :=
  ∀ n, P5309381459419979634.a n = A256135 n

end A256135

/-! ## A256135.P3269571668245547886

`5^A001222(A071044(n))`
-/

namespace A256135.P3269571668245547886
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (5 : ℚ) ^ (A001222 (A071044 n).toNat : ℤ)

end

end A256135.P3269571668245547886

namespace A256135

/-- `5^A001222(A071044(n))` -/
def P3269571668245547886.Spec : Prop :=
  ∀ n, P3269571668245547886.a n = (A256135 n : ℚ)

end A256135

/-! ## A256135.P3281282318447009772

`A000351(n-A011371(n))`
-/

namespace A256135.P3281282318447009772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000351 ((n : ℤ) - A011371 n).toNat

end

end A256135.P3281282318447009772

namespace A256135

/-- `A000351(n-A011371(n))` -/
def P3281282318447009772.Spec : Prop :=
  ∀ n, P3281282318447009772.a n = A256135 n

end A256135

/-! ## A256135.P4971501119840042312

`A102377(n)/A001316(n)`
-/

namespace A256135.P4971501119840042312
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A102377 n : ℚ) / (A001316 n : ℚ)

end

end A256135.P4971501119840042312

namespace A256135

/-- `A102377(n)/A001316(n)` -/
def P4971501119840042312.Spec : Prop :=
  ∀ n, P4971501119840042312.a n = (A256135 n : ℚ)

end A256135

/-! ## A256135.P13382921384696142518

`A116520(sqrt(Δ[A116520(n)]))`
-/

namespace A256135.P13382921384696142518
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116520 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116520 (SequenceMachineLib.roundAway (Real.sqrt (f1 (n + 1) - f1 n : ℝ))).toNat

end

end A256135.P13382921384696142518

namespace A256135

/-- `A116520(sqrt(Δ[A116520(n)]))` -/
def P13382921384696142518.Spec : Prop :=
  ∀ n, P13382921384696142518.a n = A256135 n

end A256135

/-!
# A256136: a(n) = 6^A000120(n).

The programs for A256136, the canonical program `A256136.P14588542491347922594` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A256136 has offset 0).

The definition of A256136 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A256136.P17856486606609134987

`6^A000120(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A256136.P17856486606609134987
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (6 : ℚ) ^ (A000120 n : ℤ)

end

end A256136.P17856486606609134987

namespace A256136

/-- `6^A000120(n)` -/
def P17856486606609134987.Spec : Prop :=
  ∀ n, P17856486606609134987.a n = (A256136 n : ℚ)

end A256136

/-! ## A256136.P14588542491347922594

`A000400(A000120(n))`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A256136

/-- `A000400(A000120(n))` -/
def P14588542491347922594.Spec : Prop :=
  ∀ n, P14588542491347922594.a n = A256136 n

theorem P14588542491347922594.correct : P14588542491347922594.Spec := by
  intro n
  simp only [A256136]

end A256136

/-! ## A256136.P12782491685799000319

`6*a(and(n, n-1))` with `a(0)=1`
-/

namespace A256136.P12782491685799000319
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  6 * a (Int.land (n : ℤ) ((n : ℤ) - 1)).toNat

end

end A256136.P12782491685799000319

namespace A256136

/-- `6*a(and(n, n-1))` -/
def P12782491685799000319.Spec : Prop :=
  ∀ n, (P12782491685799000319.a n : ℤ) = A256136 n

end A256136

/-! ## A256136.P13732752069673081768

`a(floor(n/2))*a(n%2)` with `a(0)=1, a(1)=6`
-/

namespace A256136.P13732752069673081768
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 6] fun n a =>
  a ⌊(n : ℚ) / 2⌋.toNat * a (n % 2)

end

end A256136.P13732752069673081768

namespace A256136

/-- `a(floor(n/2))*a(n%2)` -/
def P13732752069673081768.Spec : Prop :=
  ∀ n, (P13732752069673081768.a n : ℤ) = A256136 n

end A256136

/-! ## A256136.P3100911069090569434

`3*2*a(n-2^floor(log2(n)))` with `a(0)=1`
-/

namespace A256136.P3100911069090569434
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  3 * (2 * a (n - 2 ^ Nat.log 2 n))

end

end A256136.P3100911069090569434

namespace A256136

/-- `3*2*a(n-2^floor(log2(n)))` -/
def P3100911069090569434.Spec : Prop :=
  ∀ n, (P3100911069090569434.a n : ℤ) = A256136 n

end A256136

/-! ## A256136.P14050417454266347121

`6^(Δ[n²]-∑[∏{e}[xor(n, -n), #]])`
-/

namespace A256136.P14050417454266347121
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (-(n : ℤ))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f3 n).natAbs, Nat.factorization (f3 n).natAbs p

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (6 : ℚ) ^ ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) : ℤ)

end

end A256136.P14050417454266347121

namespace A256136

/-- `6^(Δ[n²]-∑[∏{e}[xor(n, -n), #]])` -/
def P14050417454266347121.Spec : Prop :=
  ∀ n, P14050417454266347121.a n = (A256136 n : ℚ)

end A256136

/-! ## A256136.P17666991768315056570

`6*a(Δ[n²]-2^ceil(log2(n+1))-1)` with `a(0)=1`
-/

namespace A256136.P17666991768315056570
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  6 * a (SequenceMachineLib.roundAway (((f1 (n + 1) : ℤ) - (f1 n : ℤ) : ℚ) - (2 : ℚ) ^ (⌈Real.logb 2 (n + 1 : ℝ)⌉ : ℤ) - 1)).toNat

end

end A256136.P17666991768315056570

namespace A256136

/-- `6*a(Δ[n²]-2^ceil(log2(n+1))-1)` -/
def P17666991768315056570.Spec : Prop :=
  ∀ n, (P17666991768315056570.a n : ℤ) = A256136 n

end A256136

/-! ## A256136.P9078991008082819912

`Δ[A116522(n)]`
-/

namespace A256136.P9078991008082819912
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116522 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A256136.P9078991008082819912

namespace A256136

/-- `Δ[A116522(n)]` -/
def P9078991008082819912.Spec : Prop :=
  ∀ n, P9078991008082819912.a n = A256136 n

end A256136

/-! ## A256136.P3322902125207427714

`A033043(A001316(n))`
-/

namespace A256136.P3322902125207427714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033043 (A001316 n).toNat

end

end A256136.P3322902125207427714

namespace A256136

/-- `A033043(A001316(n))` -/
def P3322902125207427714.Spec : Prop :=
  ∀ n, P3322902125207427714.a n = A256136 n

end A256136

/-! ## A256136.P9720529383593872527

`A165827(A268444(n))`
-/

namespace A256136.P9720529383593872527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165827 (A268444 n).toNat

end

end A256136.P9720529383593872527

namespace A256136

/-- `A165827(A268444(n))` -/
def P9720529383593872527.Spec : Prop :=
  ∀ n, P9720529383593872527.a n = A256136 n

end A256136

/-! ## A256136.P13833299824414798140

`A033043(A038573(n)+1)`
-/

namespace A256136.P13833299824414798140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033043 (A038573 n + 1).toNat

end

end A256136.P13833299824414798140

namespace A256136

/-- `A033043(A038573(n)+1)` -/
def P13833299824414798140.Spec : Prop :=
  ∀ n, P13833299824414798140.a n = A256136 n

end A256136

/-! ## A256136.P17886198487262337184

`A166642(A001316(2*n))`
-/

namespace A256136.P17886198487262337184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166642 (A001316 (2 * n)).toNat

end

end A256136.P17886198487262337184

namespace A256136

/-- `A166642(A001316(2*n))` -/
def P17886198487262337184.Spec : Prop :=
  ∀ n, P17886198487262337184.a n = A256136 n

end A256136

/-! ## A256136.P11686103990673681036

`6^A001222(A071044(n))`
-/

namespace A256136.P11686103990673681036
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (6 : ℚ) ^ (A001222 (A071044 n).toNat : ℤ)

end

end A256136.P11686103990673681036

namespace A256136

/-- `6^A001222(A071044(n))` -/
def P11686103990673681036.Spec : Prop :=
  ∀ n, P11686103990673681036.a n = (A256136 n : ℚ)

end A256136

/-! ## A256136.P1395075831041991237

`A001316(n)*A048883(n)`
-/

namespace A256136.P1395075831041991237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001316 n * A048883 n

end

end A256136.P1395075831041991237

namespace A256136

/-- `A001316(n)*A048883(n)` -/
def P1395075831041991237.Spec : Prop :=
  ∀ n, P1395075831041991237.a n = A256136 n

end A256136

/-! ## A256136.P7971276308376314183

`A167747(A000120(n)+1)/2`
-/

namespace A256136.P7971276308376314183
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A167747 (A000120 n + 1).toNat : ℚ) / 2

end

end A256136.P7971276308376314183

namespace A256136

/-- `A167747(A000120(n)+1)/2` -/
def P7971276308376314183.Spec : Prop :=
  ∀ n, P7971276308376314183.a n = (A256136 n : ℚ)

end A256136

/-! ## A256136.P330280515608530378

`A116522(n+1)-A116522(n)`
-/

namespace A256136.P330280515608530378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116522 (n + 1) - A116522 n

end

end A256136.P330280515608530378

namespace A256136

/-- `A116522(n+1)-A116522(n)` -/
def P330280515608530378.Spec : Prop :=
  ∀ n, P330280515608530378.a n = A256136 n

end A256136

/-! ## A256136.P14323783015178006538

`(A038573(n)+1)*A048883(n)`
-/

namespace A256136.P14323783015178006538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A038573 n + 1) * A048883 n

end

end A256136.P14323783015178006538

namespace A256136

/-- `(A038573(n)+1)*A048883(n)` -/
def P14323783015178006538.Spec : Prop :=
  ∀ n, P14323783015178006538.a n = A256136 n

end A256136

/-! ## A256136.P7060338944350088776

`(A151712(n)-1)*A001316(n)`
-/

namespace A256136.P7060338944350088776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A151712 n - 1) * A001316 n

end

end A256136.P7060338944350088776

namespace A256136

/-- `(A151712(n)-1)*A001316(n)` -/
def P7060338944350088776.Spec : Prop :=
  ∀ n, P7060338944350088776.a n = A256136 n

end A256136

/-! ## A256136.P138003080138378573

`A167330(A001316(2*n+1)/2)`
-/

namespace A256136.P138003080138378573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167330 (SequenceMachineLib.roundAway ((A001316 (2 * n + 1) : ℚ) / 2)).toNat

end

end A256136.P138003080138378573

namespace A256136

/-- `A167330(A001316(2*n+1)/2)` -/
def P138003080138378573.Spec : Prop :=
  ∀ n, P138003080138378573.a n = A256136 n

end A256136

/-! ## A256136.P11954259866541161807

`A167330(A061142(A001316(n+n)))`
-/

namespace A256136.P11954259866541161807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167330 (A061142 (A001316 (n + n)).toNat).toNat

end

end A256136.P11954259866541161807

namespace A256136

/-- `A167330(A061142(A001316(n+n)))` -/
def P11954259866541161807.Spec : Prop :=
  ∀ n, P11954259866541161807.a n = A256136 n

end A256136

/-!
# A256137: a(2) = 1; a(3) = 4; for n >= 4, a(n) = 2 + Sum_{i=4..n} d(i), where d(i) = i for even i, d(i) = i-3 for odd i.

The programs for A256137, the canonical program `A256137.P744031617730770970` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A256137 has offset 2).

The definition of A256137 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A256137.P744031617730770970

`2*a(n-1)-2*a(n-3)+a(n-4)` with `a(0)=1, a(1)=4, a(2)=6, a(3)=8, a(4)=14, a(5)=18`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A256137

/-- `2*a(n-1)-2*a(n-3)+a(n-4)` -/
def P744031617730770970.Spec : Prop :=
  ∀ n, P744031617730770970.a n = A256137 (n + 2)

theorem P744031617730770970.correct : P744031617730770970.Spec := by
  intro n
  simp only [A256137, Nat.add_sub_cancel]

end A256137

/-! ## A256137.P4059523754404492527

`∑[a(n-2)+2]` with `a(0)=1, a(1)=3, a(2)=2, a(3)=2, a(4)=6`
-/

namespace A256137.P4059523754404492527
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 3, 2, 2, 6] fun n f1 =>
  f1 (n - 2) + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A256137.P4059523754404492527

namespace A256137

/-- `∑[a(n-2)+2]` -/
def P4059523754404492527.Spec : Prop :=
  ∀ n, (P4059523754404492527.a n : ℤ) = A256137 (n + 2)

end A256137

/-! ## A256137.P6863044710399171492

`a(n-2)+2*n` with `a(0)=1, a(1)=4, a(2)=6, a(3)=8`
-/

namespace A256137.P6863044710399171492
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 4, 6, 8] fun n a =>
  a (n - 2) + 2 * n

end

end A256137.P6863044710399171492

namespace A256137

/-- `a(n-2)+2*n` -/
def P6863044710399171492.Spec : Prop :=
  ∀ n, (P6863044710399171492.a n : ℤ) = A256137 (n + 2)

end A256137

/-! ## A256137.P3383928493619471045

`a(n-2)+n+n` with `a(0)=1, a(1)=4, a(2)=6, a(3)=8`
-/

namespace A256137.P3383928493619471045
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 4, 6, 8] fun n a =>
  a (n - 2) + n + n

end

end A256137.P3383928493619471045

namespace A256137

/-- `a(n-2)+n+n` -/
def P3383928493619471045.Spec : Prop :=
  ∀ n, (P3383928493619471045.a n : ℤ) = A256137 (n + 2)

end A256137

/-! ## A256137.P8666749917235222099

`∑[2*n-a(n-1)]` with `a(0)=1, a(1)=3, a(2)=2, a(3)=2`
-/

namespace A256137.P8666749917235222099
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 3, 2, 2] fun n f1 =>
  (2 * n : ℤ) - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A256137.P8666749917235222099

namespace A256137

/-- `∑[2*n-a(n-1)]` -/
def P8666749917235222099.Spec : Prop :=
  ∀ n, P8666749917235222099.a n = A256137 (n + 2)

end A256137

/-! ## A256137.P14648898609857427706

`∑[n-(a(n-1)-n)]` with `a(0)=1, a(1)=3, a(2)=2, a(3)=2`
-/

namespace A256137.P14648898609857427706
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 3, 2, 2] fun n f1 =>
  (n : ℤ) - (f1 (n - 1) - (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A256137.P14648898609857427706

namespace A256137

/-- `∑[n-(a(n-1)-n)]` -/
def P14648898609857427706.Spec : Prop :=
  ∀ n, P14648898609857427706.a n = A256137 (n + 2)

end A256137

/-! ## A256137.P167978735488917426

`(2-A000007(n))*A181385(n+1)`
-/

namespace A256137.P167978735488917426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A000007 n) * A181385 (n + 1)

end

end A256137.P167978735488917426

namespace A256137

/-- `(2-A000007(n))*A181385(n+1)` -/
def P167978735488917426.Spec : Prop :=
  ∀ n, P167978735488917426.a n = A256137 (n + 2)

end A256137

/-! ## A256137.P9614320224448579787

`A020639(A004277(n))*A181385(n+1)`
-/

namespace A256137.P9614320224448579787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A004277 n).toNat * A181385 (n + 1)

end

end A256137.P9614320224448579787

namespace A256137

/-- `A020639(A004277(n))*A181385(n+1)` -/
def P9614320224448579787.Spec : Prop :=
  ∀ n, P9614320224448579787.a n = A256137 (n + 2)

end A256137

/-! ## A256137.P2457627696016635442

`(4*n+2-A004277(2*n))*A181385(n+1)`
-/

namespace A256137.P2457627696016635442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((4 * n + 2 : ℤ) - A004277 (2 * n)) * A181385 (n + 1)

end

end A256137.P2457627696016635442

namespace A256137

/-- `(4*n+2-A004277(2*n))*A181385(n+1)` -/
def P2457627696016635442.Spec : Prop :=
  ∀ n, P2457627696016635442.a n = A256137 (n + 2)

end A256137

/-! ## A256137.P1986580768216912063

`A080100(2*n)/A080100(n)*A181385(n+1)`
-/

namespace A256137.P1986580768216912063
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A080100 (2 * n) : ℚ) / (A080100 n : ℚ) * (A181385 (n + 1) : ℚ)

end

end A256137.P1986580768216912063

namespace A256137

/-- `A080100(2*n)/A080100(n)*A181385(n+1)` -/
def P1986580768216912063.Spec : Prop :=
  ∀ n, P1986580768216912063.a n = (A256137 (n + 2) : ℚ)

end A256137

/-! ## A256137.P5424896390478381704

`(A294619(2*n)+A294619(n+1))*A004652(n+1)`
-/

namespace A256137.P5424896390478381704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A294619 (2 * n) + A294619 (n + 1)) * A004652 (n + 1)

end

end A256137.P5424896390478381704

namespace A256137

/-- `(A294619(2*n)+A294619(n+1))*A004652(n+1)` -/
def P5424896390478381704.Spec : Prop :=
  ∀ n, P5424896390478381704.a n = A256137 (n + 2)

end A256137

/-! ## A256137.P13146104960092957308

`A057027(A347553(n+3))`
-/

namespace A256137.P13146104960092957308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057027 (A347553 (n + 3)).toNat

end

end A256137.P13146104960092957308

namespace A256137

/-- `A057027(A347553(n+3))` -/
def P13146104960092957308.Spec : Prop :=
  ∀ n, P13146104960092957308.a n = A256137 (n + 2)

end A256137

/-! ## A256137.P14818416819313164400

`A007814(A103505(n)+2+n)+∑[A109613(n)]`
-/

namespace A256137.P14818416819313164400
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109613 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A103505 n + 2 + (n : ℤ)).toNat + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A256137.P14818416819313164400

namespace A256137

/-- `A007814(A103505(n)+2+n)+∑[A109613(n)]` -/
def P14818416819313164400.Spec : Prop :=
  ∀ n, P14818416819313164400.a n = A256137 (n + 2)

end A256137

/-!
# A256138: Total number of ON states after n generations of cellular automaton of A151723 based on hexagons, if we only look at two opposite 120-degree wedges, including the central cell.

The programs for A256138, there is no canonical definition to state claims against.
-/

/-! ## A256138.P14205793041763641668

`1+2*(A151723(n+1)-1)/3`
-/

namespace A256138.P14205793041763641668
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  1 + (2 * (A151723 (n + 1) - 1) : ℚ) / 3

end

end A256138.P14205793041763641668

/-! ## A256138.P6194264041821257203

`1-4*(n+1)+4*A169780(n+1)`
-/

namespace A256138.P6194264041821257203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (4 * (n + 1) : ℤ) + 4 * A169780 (n + 1)

end

end A256138.P6194264041821257203

/-! ## A256138.P4187865320588688498

`∑[A256139(n)]`
-/

namespace A256138.P4187865320588688498
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256139 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A256138.P4187865320588688498

/-! ## A256138.P1871168237258667338

`ceil(2*A151723(n+1)/3)`
-/

namespace A256138.P1871168237258667338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(2 * A151723 (n + 1) : ℚ) / 3⌉

end

end A256138.P1871168237258667338

/-! ## A256138.P6922605275725682635

`∑[ceil(2/3*Δ[A151723(n)])]`
-/

namespace A256138.P6922605275725682635
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151723 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(2 : ℚ) / 3 * (f2 (n + 1) - f2 n : ℚ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A256138.P6922605275725682635

/-! ## A256138.P2625966517080120113

`4*(A169780(n+1)-n)-3`
-/

namespace A256138.P2625966517080120113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (A169780 (n + 1) - (n : ℤ)) - 3

end

end A256138.P2625966517080120113

/-! ## A256138.P5825532352870026195

`∑[ceil(4*A151724(n+1)/6)]`
-/

namespace A256138.P5825532352870026195
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(4 * A151724 (n + 1) : ℚ) / 6⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A256138.P5825532352870026195

/-! ## A256138.P4873745351473697797

`∑[4*(A170905(n+1)-1)]+1`
-/

namespace A256138.P4873745351473697797
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (A170905 (n + 1) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A256138.P4873745351473697797

/-! ## A256138.P5462094538430266898

`A004396(A151723(n+1))`
-/

namespace A256138.P5462094538430266898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A151723 (n + 1)).toNat

end

end A256138.P5462094538430266898

/-! ## A256138.P18395247395152975230

`∑[A004396(Δ[A151723(n)])]`
-/

namespace A256138.P18395247395152975230
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151723 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A256138.P18395247395152975230

/-!
# A256139: First differences of A256138.

The programs for A256139, there is no canonical definition to state claims against.
-/

/-! ## A256139.P7074171880848887846

`ceil(2/3*Δ[A151723(n)])`
-/

namespace A256139.P7074171880848887846
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151723 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(2 : ℚ) / 3 * (f1 (n + 1) - f1 n : ℚ)⌉

end

end A256139.P7074171880848887846

/-! ## A256139.P12742023534783675795

`ceil(4*A151724(n+1)/6)`
-/

namespace A256139.P12742023534783675795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(4 * A151724 (n + 1) : ℚ) / 6⌉

end

end A256139.P12742023534783675795

/-! ## A256139.P8125596418550810662

`A004396(Δ[A151723(n)])`
-/

namespace A256139.P8125596418550810662
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151723 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (f1 (n + 1) - f1 n).toNat

end

end A256139.P8125596418550810662

/-! ## A256139.P7026969276158922938

`A006369(Δ[A151723(n)])`
-/

namespace A256139.P7026969276158922938
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151723 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006369 (f1 (n + 1) - f1 n).toNat

end

end A256139.P7026969276158922938

/-! ## A256139.P15309759024241802431

`A026136(Δ[A151723(n)])`
-/

namespace A256139.P15309759024241802431
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151723 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026136 (f1 (n + 1) - f1 n).toNat

end

end A256139.P15309759024241802431

/-! ## A256139.P9836132622476115441

`A047461(Δ[A169780(n)])`
-/

namespace A256139.P9836132622476115441
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169780 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047461 (f1 (n + 1) - f1 n).toNat

end

end A256139.P9836132622476115441

/-! ## A256139.P10250551945496402920

`A004396(A151724(n+1))`
-/

namespace A256139.P10250551945496402920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A151724 (n + 1)).toNat

end

end A256139.P10250551945496402920

/-! ## A256139.P2508973374716261666

`A047461(A170905(n+1))`
-/

namespace A256139.P2508973374716261666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047461 (A170905 (n + 1)).toNat

end

end A256139.P2508973374716261666

/-! ## A256139.P15386930616960562706

`A020639(a(n-1))/3*Δ[A151723(n)]` with `a(0)=1, a(1)=4`
-/

namespace A256139.P15386930616960562706
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151723 n

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 4] fun n a =>
  (A020639 (SequenceMachineLib.roundAway (a (n - 1))).toNat : ℚ) / 3 * (f1 (n + 1) - f1 n : ℚ)

end

end A256139.P15386930616960562706

/-!
# A256140: Square array read by antidiagonals upwards: T(n,k) = n^A000120(k), n>=0, k>=0.

The programs for A256140, the canonical program `A256140.P17674566044913898206` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A256140 has offset 0).

The definition of A256140 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A256140.P17674566044913898206

`(row(n)-col(n))^A000120(col(n))`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A256140

/-- `(row(n)-col(n))^A000120(col(n))` -/
def P17674566044913898206.Spec : Prop :=
  ∀ n, P17674566044913898206.a n = (A256140 n : ℚ)

end A256140

/-! ## A256140.P8900186657448038736

`(C(comp[∑[n]]-n, 2)-(n+1))^A000120(n-C(∑[char[∑[n]]], 2))`
-/

namespace A256140.P8900186657448038736
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

open Classical in
def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f4 j = n then 1 else 0

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n + 1 : ℤ) : ℚ) ^ (A000120 (n - Nat.choose (∑ j ∈ Finset.range (n + 1), f3 j) 2) : ℤ)

end

end A256140.P8900186657448038736

namespace A256140

/-- `(C(comp[∑[n]]-n, 2)-(n+1))^A000120(n-C(∑[char[∑[n]]], 2))` -/
def P8900186657448038736.Spec : Prop :=
  ∀ n, P8900186657448038736.a n = (A256140 n : ℚ)

end A256140

/-! ## A256140.P7401755649626668213

`(C(comp[∑[n]]-n, 2)-(n+1))^A000120(A002262(n))`
-/

namespace A256140.P7401755649626668213
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n + 1 : ℤ) : ℚ) ^ (A000120 (A002262 n).toNat : ℤ)

end

end A256140.P7401755649626668213

namespace A256140

/-- `(C(comp[∑[n]]-n, 2)-(n+1))^A000120(A002262(n))` -/
def P7401755649626668213.Spec : Prop :=
  ∀ n, P7401755649626668213.a n = (A256140 n : ℚ)

end A256140

/-! ## A256140.P8992933698975436321

`A025581(n)^A000120(A002262(n))`
-/

namespace A256140.P8992933698975436321
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A025581 n : ℚ) ^ (A000120 (A002262 n).toNat : ℤ)

end

end A256140.P8992933698975436321

namespace A256140

/-- `A025581(n)^A000120(A002262(n))` -/
def P8992933698975436321.Spec : Prop :=
  ∀ n, P8992933698975436321.a n = (A256140 n : ℚ)

end A256140

/-! ## A256140.P10293730072462559890

`A025581(n)^A000120(log2(A059268(n)))`
-/

namespace A256140.P10293730072462559890
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A025581 n : ℚ) ^ (A000120 (SequenceMachineLib.roundAway (Real.logb 2 (A059268 n : ℝ))).toNat : ℤ)

end

end A256140.P10293730072462559890

namespace A256140

/-- `A025581(n)^A000120(log2(A059268(n)))` -/
def P10293730072462559890.Spec : Prop :=
  ∀ n, P10293730072462559890.a n = (A256140 n : ℚ)

end A256140

/-! ## A256140.P2313533537107615738

`log2(A130321(n))^A000120(A002262(n))`
-/

namespace A256140.P2313533537107615738
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A130321 n : ℝ) ^ (A000120 (A002262 n).toNat : ℤ)

end

end A256140.P2313533537107615738

namespace A256140

/-- `log2(A130321(n))^A000120(A002262(n))` -/
def P2313533537107615738.Spec : Prop :=
  ∀ n, P2313533537107615738.a n = (A256140 n : ℝ)

end A256140

/-! ## A256140.P7262320890611864541

`(A004736(n+1)-1)^A000120(A002262(n))`
-/

namespace A256140.P7262320890611864541
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004736 (n + 1) - 1 : ℚ) ^ (A000120 (A002262 n).toNat : ℤ)

end

end A256140.P7262320890611864541

namespace A256140

/-- `(A004736(n+1)-1)^A000120(A002262(n))` -/
def P7262320890611864541.Spec : Prop :=
  ∀ n, P7262320890611864541.a n = (A256140 n : ℚ)

end A256140

/-! ## A256140.P4149797001576458747

`A025581(n)^A000120(A002260(n+1)-1)`
-/

namespace A256140.P4149797001576458747
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A025581 n : ℚ) ^ (A000120 (A002260 (n + 1) - 1).toNat : ℤ)

end

end A256140.P4149797001576458747

namespace A256140

/-- `A025581(n)^A000120(A002260(n+1)-1)` -/
def P4149797001576458747.Spec : Prop :=
  ∀ n, P4149797001576458747.a n = (A256140 n : ℚ)

end A256140

/-! ## A256140.P15750431486849489672

`A025581(n)^A139352(A054238(n))`
-/

namespace A256140.P15750431486849489672
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A025581 n : ℚ) ^ (A139352 (A054238 n).toNat : ℤ)

end

end A256140.P15750431486849489672

namespace A256140

/-- `A025581(n)^A139352(A054238(n))` -/
def P15750431486849489672.Spec : Prop :=
  ∀ n, P15750431486849489672.a n = (A256140 n : ℚ)

end A256140

/-! ## A256140.P17647461683907919031

`∏{e}[A099884(n), A025581(n)/#]`
-/

namespace A256140.P17647461683907919031
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099884 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (A025581 n : ℚ) / (Nat.factorization (f1 n).natAbs p : ℚ)

end

end A256140.P17647461683907919031

namespace A256140

/-- `∏{e}[A099884(n), A025581(n)/#]` -/
def P17647461683907919031.Spec : Prop :=
  ∀ n, P17647461683907919031.a n = (A256140 n : ℚ)

end A256140

/-! ## A256140.P7508550803123035235

`∏{e}[A099884(n), A004736(n+1)-#]`
-/

namespace A256140.P7508550803123035235
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099884 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (A004736 (n + 1) - (Nat.factorization (f1 n).natAbs p : ℤ))

end

end A256140.P7508550803123035235

namespace A256140

/-- `∏{e}[A099884(n), A004736(n+1)-#]` -/
def P7508550803123035235.Spec : Prop :=
  ∀ n, P7508550803123035235.a n = A256140 n

end A256140

/-! ## A256140.P14693077216995490790

`(C(comp[∑[n]]-n, 2)-(n+1))^A318655(2^(n-C(∑[char[∑[n]]], 2)))`
-/

namespace A256140.P14693077216995490790
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

open Classical in
def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f4 j = n then 1 else 0

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n + 1 : ℤ) : ℚ) ^ (A318655 (SequenceMachineLib.roundAway ((2 : ℚ) ^ ((n : ℤ) - (Nat.choose (∑ j ∈ Finset.range (n + 1), f3 j) 2 : ℤ) : ℤ))).toNat : ℤ)

end

end A256140.P14693077216995490790

namespace A256140

/-- `(C(comp[∑[n]]-n, 2)-(n+1))^A318655(2^(n-C(∑[char[∑[n]]], 2)))` -/
def P14693077216995490790.Spec : Prop :=
  ∀ n, P14693077216995490790.a n = (A256140 n : ℚ)

end A256140

/-! ## A256140.P12674245657076402519

`A025581(n)^A064547(A059268(n))`
-/

namespace A256140.P12674245657076402519
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A025581 n : ℚ) ^ (A064547 (A059268 n).toNat : ℤ)

end

end A256140.P12674245657076402519

namespace A256140

/-- `A025581(n)^A064547(A059268(n))` -/
def P12674245657076402519.Spec : Prop :=
  ∀ n, P12674245657076402519.a n = (A256140 n : ℚ)

end A256140

/-! ## A256140.P3214635402417952955

`A025581(n)^A327406(A099884(n))`
-/

namespace A256140.P3214635402417952955
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A025581 n : ℚ) ^ (A327406 (A099884 n).toNat : ℤ)

end

end A256140.P3214635402417952955

namespace A256140

/-- `A025581(n)^A327406(A099884(n))` -/
def P3214635402417952955.Spec : Prop :=
  ∀ n, P3214635402417952955.a n = (A256140 n : ℚ)

end A256140

/-!
# A256141: Square array read by antidiagonals upwards: T(n,k), n>=0, k>=0, in which row n lists the partial sums of the n-th row of the square array of A256140.

The programs for A256141, there is no canonical definition to state claims against.
-/

/-! ## A256141.P11846661916557709210

`A146812(A110971(n+2))+A004247(n)`
-/

namespace A256141.P11846661916557709210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146812 (A110971 (n + 2)).toNat + A004247 n

end

end A256141.P11846661916557709210

/-! ## A256141.P1914015671152746372

`A196416(lcm(n, A276719(n)))`
-/

namespace A256141.P1914015671152746372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196416 (Int.lcm (n : ℤ) (A276719 n))

end

end A256141.P1914015671152746372

/-! ## A256141.P17002789181137955473

`A077028(n)+A033886(A208673(n))`
-/

namespace A256141.P17002789181137955473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077028 n + A033886 (A208673 n).toNat

end

end A256141.P17002789181137955473

/-! ## A256141.P7501901231668345600

`A124560(A238016(n))+A048720(n)`
-/

namespace A256141.P7501901231668345600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124560 (A238016 n).toNat + A048720 n

end

end A256141.P7501901231668345600

/-! ## A256141.P3846591994214029186

`A171882(A343875(n))+A004247(n)`
-/

namespace A256141.P3846591994214029186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171882 (A343875 n).toNat + A004247 n

end

end A256141.P3846591994214029186

/-!
# A256142: G.f.: Product_{j>=1} (1+x^j)^(3^j).

The programs for A256142, there is no canonical definition to state claims against.
-/

/-! ## A256142.P7609135908389865445

`A292804(∑[n+3]+n+3)`
-/

namespace A256142.P7609135908389865445
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292804 (∑ j ∈ Finset.range (n + 1), f1 j + (n + 3))

end

end A256142.P7609135908389865445

/-! ## A256142.P8480451940325836920

`record[A292804(abs(A046691(n)))]`
-/

namespace A256142.P8480451940325836920
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292804 |A046691 n|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A256142.P8480451940325836920

/-! ## A256142.P9105587702472672374

`record[A292804(A027379(n)-1)]`
-/

namespace A256142.P9105587702472672374
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292804 (A027379 n - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A256142.P9105587702472672374

/-! ## A256142.P11203334375203824386

`or(A000007(n), A292804(A046691(n+2)))`
-/

namespace A256142.P11203334375203824386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A292804 (A046691 (n + 2)).toNat)

end

end A256142.P11203334375203824386

/-! ## A256142.P2297355840696956886

`or(A010057(10*n), A292804(A046691(n+2)))`
-/

namespace A256142.P2297355840696956886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A010057 (10 * n)) (A292804 (A046691 (n + 2)).toNat)

end

end A256142.P2297355840696956886

/-!
# A256146: Primitive prime factors of the cyclotomic polynomial sequence Phi(7,k) in the order in which they occur.

The programs for A256146, there is no canonical definition to state claims against.
-/

/-! ## A256146.P17720759110006492342

`A020639(A053716(n+1))`
-/

namespace A256146.P17720759110006492342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A053716 (n + 1)).toNat

end

end A256146.P17720759110006492342

/-! ## A256146.P3683507496047826761

`A020639(A228290(n+1)+1)`
-/

namespace A256146.P3683507496047826761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A228290 (n + 1) + 1).toNat

end

end A256146.P3683507496047826761

/-!
# A256147: First repeated number in Sylvester's sequence modulo prime(n).

The programs for A256147, there is no canonical definition to state claims against.
-/

/-! ## A256147.P13709743357603557861

`A000120(∑{d}[A108950(n+1), #]²)`
-/

namespace A256147.P13709743357603557861
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108950 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 ((∑ d ∈ Nat.divisors (f1 n).natAbs, d) ^ 2)

end

end A256147.P13709743357603557861

/-! ## A256147.P6001864172501810819

`gcd(A185354(n)*A339366(n), A185314(n))`
-/

namespace A256147.P6001864172501810819
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A185354 n * A339366 n) (A185314 n)

end

end A256147.P6001864172501810819

/-!
# A256148: Primitive prime factors of the cyclotomic polynomial sequence Phi(3, k) (or Phi(6, k)) in the order in which they occur.

The programs for A256148, the canonical program `A256148.P6895099327413931958` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A256148 has offset 1).

The definition of A256148 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 733 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A256148.P6895099327413931958

`A081256(lt[2*n+1, A081256(n+2)]+2)`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A256148

/-- `A081256(lt[2*n+1, A081256(n+2)]+2)` -/
def P6895099327413931958.Spec : Prop :=
  ∀ n, P6895099327413931958.a n = A256148 (n + 1)

theorem P6895099327413931958.correct : P6895099327413931958.Spec := by
  intro n
  simp only [A256148, Nat.add_sub_cancel]

end A256148

/-! ## A256148.P15768190167899652124

`A081256(record[(n+1)%(A081256(n+2)-n)]+1)`
-/

namespace A256148.P15768190167899652124
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 1 : ℤ) (A081256 (n + 2) - (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081256 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 1).toNat

end

end A256148.P15768190167899652124

namespace A256148

/-- `A081256(record[(n+1)%(A081256(n+2)-n)]+1)` -/
def P15768190167899652124.Spec : Prop :=
  ∀ n, P15768190167899652124.a n = A256148 (n + 1)

end A256148

/-! ## A256148.P4507661785645386864

`p?[A033677(A016825(n)+A005899(n))]`
-/

namespace A256148.P4507661785645386864
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033677 (A016825 n + A005899 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A256148.P4507661785645386864

namespace A256148

/-- `p?[A033677(A016825(n)+A005899(n))]` -/
def P4507661785645386864.Spec : Prop :=
  ∀ n, P4507661785645386864.a n = A256148 (n + 1)

end A256148

/-! ## A256148.P4676768857154277014

`p?[A140271(A016825(n)+A005899(n))]`
-/

namespace A256148.P4676768857154277014
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140271 (A016825 n + A005899 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A256148.P4676768857154277014

namespace A256148

/-- `p?[A140271(A016825(n)+A005899(n))]` -/
def P4676768857154277014.Spec : Prop :=
  ∀ n, P4676768857154277014.a n = A256148 (n + 1)

end A256148

/-! ## A256148.P3432301549546628263

`p?[A140271(A081345(n)-A019425(n))]`
-/

namespace A256148.P3432301549546628263
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140271 (A081345 n - A019425 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A256148.P3432301549546628263

namespace A256148

/-- `p?[A140271(A081345(n)-A019425(n))]` -/
def P3432301549546628263.Spec : Prop :=
  ∀ n, P3432301549546628263.a n = A256148 (n + 1)

end A256148

/-!
# A256149: Square numbers n such that sigma(n) is a triangular number.

The programs for A256149, there is no canonical definition to state claims against.
-/

/-! ## A256149.P6458933608153077049

`∩[A045746(n+1), n²]`
-/

namespace A256149.P6458933608153077049
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045746 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A256149.P6458933608153077049

/-! ## A256149.P8466333838028092118

`∩[A000290(n), A045746(n+1)]`
-/

namespace A256149.P8466333838028092118
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045746 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A256149.P8466333838028092118

/-!
# A256150: Oblong numbers n such that sigma(n) is a triangular number.

The programs for A256150, there is no canonical definition to state claims against.
-/

/-! ## A256150.P5654972204219255456

`∩[A045746(n+1), n²+n]`
-/

namespace A256150.P5654972204219255456
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045746 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2 + n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A256150.P5654972204219255456

/-! ## A256150.P284129439489399618

`∩[A002378(n), A045746(n+1)]`
-/

namespace A256150.P284129439489399618
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002378 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045746 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A256150.P284129439489399618

/-! ## A256150.P15561825420183889389

`∩[∑[A005843(n)], A045746(n+1)]`
-/

namespace A256150.P15561825420183889389
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045746 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f3 j = (x : ℤ)) n

end

end A256150.P15561825420183889389

/-! ## A256150.P17656418345452774236

`∩[2*A000217(n), A045746(n+1)]`
-/

namespace A256150.P17656418345452774236
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000217 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045746 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A256150.P17656418345452774236

/-! ## A256150.P13381614702850413995

`∩[A002620(2*n+1), A045746(n+1)]`
-/

namespace A256150.P13381614702850413995
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045746 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A256150.P13381614702850413995

/-!
# A256151: Triangular numbers n such that sigma(n) is a square number.

The programs for A256151, there is no canonical definition to state claims against.
-/

/-! ## A256151.P10015828325177980264

`C(A116990(n+1)+1, 2)`
-/

namespace A256151.P10015828325177980264
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A116990 (n + 1) + 1).toNat 2

end

end A256151.P10015828325177980264

/-! ## A256151.P2641121024501086804

`A000217(A116990(n+1))`
-/

namespace A256151.P2641121024501086804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A116990 (n + 1)).toNat

end

end A256151.P2641121024501086804

/-! ## A256151.P8798256130738331573

`A161680(A116990(n+1)+1)`
-/

namespace A256151.P8798256130738331573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161680 (A116990 (n + 1) + 1).toNat

end

end A256151.P8798256130738331573

/-! ## A256151.P6797478380012981275

`A179865(A116990(n+1)+1)`
-/

namespace A256151.P6797478380012981275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179865 (A116990 (n + 1) + 1).toNat

end

end A256151.P6797478380012981275

/-! ## A256151.P6356259630171829776

`A000096(A116990(n+1)-1)+1`
-/

namespace A256151.P6356259630171829776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000096 (A116990 (n + 1) - 1).toNat + 1

end

end A256151.P6356259630171829776

/-! ## A256151.P8858650811800300438

`A175631(A116990(n+1)+2)+1`
-/

namespace A256151.P8858650811800300438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175631 (A116990 (n + 1) + 2).toNat + 1

end

end A256151.P8858650811800300438

/-! ## A256151.P730312552599525591

`A000124(A116990(n+1))-A047999(∑[n])`
-/

namespace A256151.P730312552599525591
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 (A116990 (n + 1)).toNat - A047999 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A256151.P730312552599525591

/-! ## A256151.P7973673730759141369

`A000124(A116990(n+1))-A000034(2*n)`
-/

namespace A256151.P7973673730759141369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 (A116990 (n + 1)).toNat - A000034 (2 * n)

end

end A256151.P7973673730759141369

/-! ## A256151.P8860845613819150329

`A000124(A116990(n+1))-A267871(2*n)`
-/

namespace A256151.P8860845613819150329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 (A116990 (n + 1)).toNat - A267871 (2 * n)

end

end A256151.P8860845613819150329

/-! ## A256151.P2129197547955822697

`A000124(A116990(n+1))+or(-1, A000041(n))`
-/

namespace A256151.P2129197547955822697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 (A116990 (n + 1)).toNat + Int.lor (-1) (A000041 n)

end

end A256151.P2129197547955822697

/-! ## A256151.P469151583341172769

`A000124(A116990(n+1))-A000041(gcd(n, n+1))`
-/

namespace A256151.P469151583341172769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 (A116990 (n + 1)).toNat - A000041 (Nat.gcd n (n + 1))

end

end A256151.P469151583341172769

/-! ## A256151.P9273571552037151708

`A000124(A116990(n+1))-A000041(n²%(n+1))`
-/

namespace A256151.P9273571552037151708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 (A116990 (n + 1)).toNat - A000041 (n ^ 2 % (n + 1))

end

end A256151.P9273571552037151708

/-! ## A256151.P1537578211182650294

`(A000124(A116990(n+1))-1)^(A000040(n+1)%2)`
-/

namespace A256151.P1537578211182650294
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000124 (A116990 (n + 1)).toNat - 1 : ℚ) ^ (Int.tmod (A000040 (n + 1)) 2 : ℤ)

end

end A256151.P1537578211182650294

/-! ## A256151.P6116019781242243164

`A000124(A116990(n+1))-A132350(A000040(n+1))`
-/

namespace A256151.P6116019781242243164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 (A116990 (n + 1)).toNat - A132350 (A000040 (n + 1)).toNat

end

end A256151.P6116019781242243164

/-! ## A256151.P15070180065750005319

`A000124(A116990(n+1))-A000010(A001222(2*n²+29))`
-/

namespace A256151.P15070180065750005319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 (A116990 (n + 1)).toNat - A000010 (A001222 (2 * n ^ 2 + 29)).toNat

end

end A256151.P15070180065750005319

/-!
# A256152: Numbers k such that k is the product of two distinct primes and sigma(k) is a square number.

The programs for A256152, the canonical program `A256152.P5956490634084316170` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A256152 has offset 1).

The definition of A256152 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 259 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A256152.P11202670340553350536

`filter[A064710(n+1), A374128(#)]`
-/

namespace A256152.P11202670340553350536
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064710 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374128 (f1 j).toNat = 1) n)

end

end A256152.P11202670340553350536

namespace A256152

/-- `filter[A064710(n+1), A374128(#)]` -/
def P11202670340553350536.Spec : Prop :=
  ∀ n, P11202670340553350536.a n = A256152 (n + 1)

end A256152

/-! ## A256152.P11767650287317998148

`filter[A145769(n+1), A374128(#)]`
-/

namespace A256152.P11767650287317998148
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145769 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374128 (f1 j).toNat = 1) n)

end

end A256152.P11767650287317998148

namespace A256152

/-- `filter[A145769(n+1), A374128(#)]` -/
def P11767650287317998148.Spec : Prop :=
  ∀ n, P11767650287317998148.a n = A256152 (n + 1)

end A256152

/-! ## A256152.P3689152055769981043

`filter[A006532(n+3), A374128(#)]`
-/

namespace A256152.P3689152055769981043
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006532 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374128 (f1 j).toNat = 1) n)

end

end A256152.P3689152055769981043

namespace A256152

/-- `filter[A006532(n+3), A374128(#)]` -/
def P3689152055769981043.Spec : Prop :=
  ∀ n, P3689152055769981043.a n = A256152 (n + 1)

end A256152

/-! ## A256152.P5956490634084316170

`filter[A063937(n+3), A354927(#)]`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A256152

/-- `filter[A063937(n+3), A354927(#)]` -/
def P5956490634084316170.Spec : Prop :=
  ∀ n, P5956490634084316170.a n = A256152 (n + 1)

theorem P5956490634084316170.correct : P5956490634084316170.Spec := by
  intro n
  simp only [A256152, Nat.add_sub_cancel]

end A256152

/-! ## A256152.P1357550366025109369

`filter[A064193(n+3), A354927(#)]`
-/

namespace A256152.P1357550366025109369
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064193 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354927 (f1 j).toNat = 1) n)

end

end A256152.P1357550366025109369

namespace A256152

/-- `filter[A064193(n+3), A354927(#)]` -/
def P1357550366025109369.Spec : Prop :=
  ∀ n, P1357550366025109369.a n = A256152 (n + 1)

end A256152

/-! ## A256152.P3999132387252537202

`filter[A063937(n+3), A374128(#)]`
-/

namespace A256152.P3999132387252537202
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063937 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374128 (f1 j).toNat = 1) n)

end

end A256152.P3999132387252537202

namespace A256152

/-- `filter[A063937(n+3), A374128(#)]` -/
def P3999132387252537202.Spec : Prop :=
  ∀ n, P3999132387252537202.a n = A256152 (n + 1)

end A256152

/-! ## A256152.P16569523256325626862

`filter[A064193(n+3), A374128(#)]`
-/

namespace A256152.P16569523256325626862
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064193 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374128 (f1 j).toNat = 1) n)

end

end A256152.P16569523256325626862

namespace A256152

/-- `filter[A064193(n+3), A374128(#)]` -/
def P16569523256325626862.Spec : Prop :=
  ∀ n, P16569523256325626862.a n = A256152 (n + 1)

end A256152

/-! ## A256152.P11975250838811445792

`filter[A178492(n+3), A374128(#)]`
-/

namespace A256152.P11975250838811445792
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178492 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374128 (f1 j).toNat = 1) n)

end

end A256152.P11975250838811445792

namespace A256152

/-- `filter[A178492(n+3), A374128(#)]` -/
def P11975250838811445792.Spec : Prop :=
  ∀ n, P11975250838811445792.a n = A256152 (n + 1)

end A256152

/-! ## A256152.P10274571068123326043

`filter[A291167(n+3), A374128(#)]`
-/

namespace A256152.P10274571068123326043
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291167 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374128 (f1 j).toNat = 1) n)

end

end A256152.P10274571068123326043

namespace A256152

/-- `filter[A291167(n+3), A374128(#)]` -/
def P10274571068123326043.Spec : Prop :=
  ∀ n, P10274571068123326043.a n = A256152 (n + 1)

end A256152

/-! ## A256152.P8224863005315572295

`∩[A001358(n+1), A006532(n+1)]`
-/

namespace A256152.P8224863005315572295
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006532 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A256152.P8224863005315572295

namespace A256152

/-- `∩[A001358(n+1), A006532(n+1)]` -/
def P8224863005315572295.Spec : Prop :=
  ∀ n, (P8224863005315572295.a n : ℤ) = A256152 (n + 1)

end A256152

/-! ## A256152.P14378732490736819604

`∩[A001358(n+1), A063937(n+1)]`
-/

namespace A256152.P14378732490736819604
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063937 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A256152.P14378732490736819604

namespace A256152

/-- `∩[A001358(n+1), A063937(n+1)]` -/
def P14378732490736819604.Spec : Prop :=
  ∀ n, (P14378732490736819604.a n : ℤ) = A256152 (n + 1)

end A256152

/-! ## A256152.P8265441238018377768

`∩[A001358(n+1), A064193(n+1)]`
-/

namespace A256152.P8265441238018377768
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064193 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A256152.P8265441238018377768

namespace A256152

/-- `∩[A001358(n+1), A064193(n+1)]` -/
def P8265441238018377768.Spec : Prop :=
  ∀ n, (P8265441238018377768.a n : ℤ) = A256152 (n + 1)

end A256152

/-! ## A256152.P3450315827042090987

`∩[A001358(n+1), A064710(n+1)]`
-/

namespace A256152.P3450315827042090987
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064710 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A256152.P3450315827042090987

namespace A256152

/-- `∩[A001358(n+1), A064710(n+1)]` -/
def P3450315827042090987.Spec : Prop :=
  ∀ n, (P3450315827042090987.a n : ℤ) = A256152 (n + 1)

end A256152

/-! ## A256152.P12678509596800560981

`∩[A001358(n+1), A144695(n+1)]`
-/

namespace A256152.P12678509596800560981
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144695 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A256152.P12678509596800560981

namespace A256152

/-- `∩[A001358(n+1), A144695(n+1)]` -/
def P12678509596800560981.Spec : Prop :=
  ∀ n, (P12678509596800560981.a n : ℤ) = A256152 (n + 1)

end A256152

/-! ## A256152.P7780914433361337438

`∩[A001358(n+1), A145769(n+1)]`
-/

namespace A256152.P7780914433361337438
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145769 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A256152.P7780914433361337438

namespace A256152

/-- `∩[A001358(n+1), A145769(n+1)]` -/
def P7780914433361337438.Spec : Prop :=
  ∀ n, (P7780914433361337438.a n : ℤ) = A256152 (n + 1)

end A256152

/-! ## A256152.P6450001599427508824

`∩[A001358(n+1), A178492(n+1)]`
-/

namespace A256152.P6450001599427508824
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178492 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A256152.P6450001599427508824

namespace A256152

/-- `∩[A001358(n+1), A178492(n+1)]` -/
def P6450001599427508824.Spec : Prop :=
  ∀ n, (P6450001599427508824.a n : ℤ) = A256152 (n + 1)

end A256152

/-! ## A256152.P14544558753054893243

`filter[A006532(n+1), A064911(#)]`
-/

namespace A256152.P14544558753054893243
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006532 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A064911 (f1 j).toNat = 1) n)

end

end A256152.P14544558753054893243

namespace A256152

/-- `filter[A006532(n+1), A064911(#)]` -/
def P14544558753054893243.Spec : Prop :=
  ∀ n, P14544558753054893243.a n = A256152 (n + 1)

end A256152

/-! ## A256152.P3928536766343675180

`filter[A063937(n+1), A064911(#)]`
-/

namespace A256152.P3928536766343675180
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063937 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A064911 (f1 j).toNat = 1) n)

end

end A256152.P3928536766343675180

namespace A256152

/-- `filter[A063937(n+1), A064911(#)]` -/
def P3928536766343675180.Spec : Prop :=
  ∀ n, P3928536766343675180.a n = A256152 (n + 1)

end A256152

/-! ## A256152.P3291598035674321673

`filter[A064193(n+1), A064911(#)]`
-/

namespace A256152.P3291598035674321673
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064193 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A064911 (f1 j).toNat = 1) n)

end

end A256152.P3291598035674321673

namespace A256152

/-- `filter[A064193(n+1), A064911(#)]` -/
def P3291598035674321673.Spec : Prop :=
  ∀ n, P3291598035674321673.a n = A256152 (n + 1)

end A256152

/-! ## A256152.P10955099708528933587

`filter[A064710(n+1), A064911(#)]`
-/

namespace A256152.P10955099708528933587
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064710 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A064911 (f1 j).toNat = 1) n)

end

end A256152.P10955099708528933587

namespace A256152

/-- `filter[A064710(n+1), A064911(#)]` -/
def P10955099708528933587.Spec : Prop :=
  ∀ n, P10955099708528933587.a n = A256152 (n + 1)

end A256152

/-!
# A256153: Primitive prime factors of the cyclotomic polynomial sequence Phi(5,k) in the order in which they occur.

The programs for A256153, there is no canonical definition to state claims against.
-/

/-! ## A256153.P2977941650012855262

`A117818(A053699(∑[∏{e}[n+1, #]]))`
-/

namespace A256153.P2977941650012855262
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117818 (A053699 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A256153.P2977941650012855262

/-! ## A256153.P5752698005709672611

`A006530(A152031(∑[(n+1)/∏{p}[n+1, #]]))`
-/

namespace A256153.P5752698005709672611
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f2 n), p : ℕ) : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A152031 (SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)).toNat).toNat

end

end A256153.P5752698005709672611

/-! ## A256153.P2856687352877132671

`A117818(A053699(∑[(n+1)/∏{p}[n+1, #]]))`
-/

namespace A256153.P2856687352877132671
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f2 n), p : ℕ) : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117818 (A053699 (SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)).toNat).toNat

end

end A256153.P2856687352877132671

/-!
# A256154: Concatenation of odd prime factors of m such that the decimal digits of m only have odd prime factors.

The programs for A256154, there is no canonical definition to state claims against.
-/

/-! ## A256154.P16689551926932824882

`A256935(A377271(n+2))`
-/

namespace A256154.P16689551926932824882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256935 (A377271 (n + 2)).toNat

end

end A256154.P16689551926932824882

/-!
# A256156: Triangular array of numbers of 2-polymatroids of rank k on n unlabeled points, for n>=0, 0<=k<=2n.

The programs for A256156, there is no canonical definition to state claims against.
-/

/-! ## A256156.P4291907896647516807

`A034836(2^A059317(n))`
-/

namespace A256156.P4291907896647516807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034836 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A059317 n : ℤ))).toNat

end

end A256156.P4291907896647516807

/-! ## A256156.P13398717114293248430

`A226378(2^A059317(n))`
-/

namespace A256156.P13398717114293248430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226378 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A059317 n : ℤ))).toNat

end

end A256156.P13398717114293248430

/-! ## A256156.P5059867884393826685

`A322885(2^A059317(n))`
-/

namespace A256156.P5059867884393826685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322885 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A059317 n : ℤ))).toNat

end

end A256156.P5059867884393826685

/-! ## A256156.P13505795208895647101

`A226378(A000079(A059317(n)))`
-/

namespace A256156.P13505795208895647101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226378 (A000079 (A059317 n).toNat).toNat

end

end A256156.P13505795208895647101

/-! ## A256156.P18073330737069288431

`A065609(A059317(n)%A229312(3*(n+1)))`
-/

namespace A256156.P18073330737069288431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065609 (Int.tmod (A059317 n) (A229312 (3 * (n + 1)))).toNat

end

end A256156.P18073330737069288431

/-!
# A256157: Number of 2-polymatroids on n unlabeled points.

The programs for A256157, there is no canonical definition to state claims against.
-/

/-! ## A256157.P17445535565428606872

`A176814((n+2)!)`
-/

namespace A256157.P17445535565428606872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176814 (Nat.factorial (n + 2))

end

end A256157.P17445535565428606872

/-!
# A256159: Number of 2-polymatroids on n labeled points.

The programs for A256159, there is no canonical definition to state claims against.
-/

/-! ## A256159.P3014889813108011680

`A025500(∏[n²+1])`
-/

namespace A256159.P3014889813108011680
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2 + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025500 (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A256159.P3014889813108011680

/-!
# A256160: Index of the n-th 9 in the first occurrence of a string of exactly n 9's in the decimal expansion of Pi.

The programs for A256160, there is no canonical definition to state claims against.
-/

/-! ## A256160.P7600229039245338695

`A096763(n+1)+n+1`
-/

namespace A256160.P7600229039245338695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096763 (n + 1) + (n + 1 : ℤ)

end

end A256160.P7600229039245338695

/-! ## A256160.P1894570971939585020

`A348553(n)+A096763(n+1)`
-/

namespace A256160.P1894570971939585020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348553 n + A096763 (n + 1)

end

end A256160.P1894570971939585020

/-!
# A256161: Triangle of allowable Stirling numbers of the second kind a(n,k).

The programs for A256161, there is no canonical definition to state claims against.
-/

/-! ## A256161.P9545885505485458079

`T(n-1,k-1)+ceil((col(n)+1)/2)*T(n-1,k)` with `a(0)=1`
-/

namespace A256161.P9545885505485458079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  SequenceMachineLib.triUpLeft a n + ⌈(SequenceMachineLib.triCol n + 1 : ℚ) / 2⌉ * SequenceMachineLib.triUp a n

end

end A256161.P9545885505485458079

/-! ## A256161.P6865123653282992467

`A246118(comp[∑[n]]+1)`
-/

namespace A256161.P6865123653282992467
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246118 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 1)

end

end A256161.P6865123653282992467

/-! ## A256161.P10648633079923537463

`and(A034294(A144303(n)), A111669(n))`
-/

namespace A256161.P10648633079923537463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A034294 (A144303 n).toNat) (A111669 n)

end

end A256161.P10648633079923537463

/-! ## A256161.P11619760236992624436

`A111669(n)-A316866(A292783(n)²)`
-/

namespace A256161.P11619760236992624436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111669 n - A316866 (A292783 n ^ 2).toNat

end

end A256161.P11619760236992624436

/-! ## A256161.P10967237521439318810

`A137596(n)-A316866(A292783(n)²)`
-/

namespace A256161.P10967237521439318810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137596 n - A316866 (A292783 n ^ 2).toNat

end

end A256161.P10967237521439318810

/-!
# A256162: Positive integers a(n) such that number of digits in decimal expansion of a(n)^a(n) is divisible by a(n).

The programs for A256162, the canonical program `A256162.P9949668565681264228` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A256162 has offset 1).

The definition of A256162 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 201 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A256162.P9949668565681264228

`A103456(∑[A000035(n)])-A000035(n)`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A256162

/-- `A103456(∑[A000035(n)])-A000035(n)` -/
def P9949668565681264228.Spec : Prop :=
  ∀ n, P9949668565681264228.a n = A256162 (n + 1)

theorem P9949668565681264228.correct : P9949668565681264228.Spec := by
  intro n
  simp only [A256162, Nat.add_sub_cancel]

end A256162

/-! ## A256162.P7404273139886773303

`record[A286507(n)-A134451(n)]`
-/

namespace A256162.P7404273139886773303
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286507 n - A134451 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A256162.P7404273139886773303

namespace A256162

/-- `record[A286507(n)-A134451(n)]` -/
def P7404273139886773303.Spec : Prop :=
  ∀ n, P7404273139886773303.a n = A256162 (n + 1)

end A256162

/-! ## A256162.P7299846558528987957

`lcm(2, A286508(n))-A000034(n)`
-/

namespace A256162.P7299846558528987957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.lcm 2 (A286508 n) : ℤ) - A000034 n

end

end A256162.P7299846558528987957

namespace A256162

/-- `lcm(2, A286508(n))-A000034(n)` -/
def P7299846558528987957.Spec : Prop :=
  ∀ n, P7299846558528987957.a n = A256162 (n + 1)

end A256162

/-! ## A256162.P2595866667668423618

`A286508(n)-A055396(A008486(n))`
-/

namespace A256162.P2595866667668423618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286508 n - A055396 (A008486 n).toNat

end

end A256162.P2595866667668423618

namespace A256162

/-- `A286508(n)-A055396(A008486(n))` -/
def P2595866667668423618.Spec : Prop :=
  ∀ n, P2595866667668423618.a n = A256162 (n + 1)

end A256162

/-! ## A256162.P10248153395236039280

`A286508(n)+A000034(n)*A057428(n)`
-/

namespace A256162.P10248153395236039280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286508 n + A000034 n * A057428 n

end

end A256162.P10248153395236039280

namespace A256162

/-- `A286508(n)+A000034(n)*A057428(n)` -/
def P10248153395236039280.Spec : Prop :=
  ∀ n, P10248153395236039280.a n = A256162 (n + 1)

end A256162

/-!
# A256164: Number of terms in A256163 less than 10^n.

The programs for A256164, there is no canonical definition to state claims against.
-/

/-! ## A256164.P15746620669184181717

`or(∑{p}[n+1, gcd(n, #)], A178930(2^n-1))`
-/

namespace A256164.P15746620669184181717
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((∑ p ∈ Nat.primeFactors (f1 n), Nat.gcd n p : ℕ) : ℤ) (A178930 (2 ^ n - 1))

end

end A256164.P15746620669184181717

/-! ## A256164.P11919086939969304451

`A195207(4*a(n-1)-2*a(n-3)-a(n-4))+1` with `a(0)=0, a(1)=1, a(2)=1, a(3)=1, a(4)=3, a(5)=10`
-/

namespace A256164.P11919086939969304451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 1, 1, 3, 10] fun n a =>
  A195207 (4 * a (n - 1) - 2 * a (n - 3) - a (n - 4)).toNat + 1

end

end A256164.P11919086939969304451

/-! ## A256164.P10308957497010279905

`A282318(∑[A001685(n)])`
-/

namespace A256164.P10308957497010279905
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001685 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282318 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A256164.P10308957497010279905

/-!
# A256169: Expansion of (1-sqrt(1-4*(x+x^2)^2))/(2*(x+x^2)^2).

The programs for A256169, there is no canonical definition to state claims against.
-/

/-! ## A256169.P4063810328836409251

`A104545(n)-a(n-1)` with `a(0)=1`
-/

namespace A256169.P4063810328836409251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A104545 n - a (n - 1)

end

end A256169.P4063810328836409251

/-! ## A256169.P18283898970918991659

`or(1, A131319(A202842(n)))-a(n-1)` with `a(0)=1`
-/

namespace A256169.P18283898970918991659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.lor 1 (A131319 (A202842 n).toNat) - a (n - 1)

end

end A256169.P18283898970918991659

/-! ## A256169.P12935219172220639244

`A342376(A002379(n))+A182889(n)`
-/

namespace A256169.P12935219172220639244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342376 (A002379 n).toNat + A182889 n

end

end A256169.P12935219172220639244

/-! ## A256169.P9240347608725883816

`A337309(A213742(n))+A182889(n)`
-/

namespace A256169.P9240347608725883816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337309 (A213742 n).toNat + A182889 n

end

end A256169.P9240347608725883816

/-!
# A256170: Irregular triangle where the n-th row contains the binary representations of the factors of the member of GF(2)[x] whose binary representation is n.

The programs for A256170, there is no canonical definition to state claims against.
-/

/-! ## A256170.P17796679517884427311

`A240755(A334387(n)+A157154(n))`
-/

namespace A256170.P17796679517884427311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240755 (A334387 n + A157154 n).toNat

end

end A256170.P17796679517884427311

/-! ## A256170.P7496169198609276493

`p?[gcd(A193404(n+1), A302119(n))]`
-/

namespace A256170.P7496169198609276493
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A193404 (n + 1)) (A302119 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A256170.P7496169198609276493

/-! ## A256170.P3259965654591208628

`A020639(A025706(n)*A096153(A325211(n+1)))`
-/

namespace A256170.P3259965654591208628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A025706 n * A096153 (A325211 (n + 1)).toNat).toNat

end

end A256170.P3259965654591208628

/-! ## A256170.P10294001773456519692

`A030547(A056000(n+2)+A030547(n+4))`
-/

namespace A256170.P10294001773456519692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030547 (A056000 (n + 2) + A030547 (n + 4)).toNat

end

end A256170.P10294001773456519692

/-!
# A256172: Primes of the form 6*p + 1 with p prime that are also of the form x^2 + 27*y^2 and congruent to 7 mod 24.

The programs for A256172, there is no canonical definition to state claims against.
-/

/-! ## A256172.P2013737588590936381

`6*A188130(n+1)+1`
-/

namespace A256172.P2013737588590936381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A188130 (n + 1) + 1

end

end A256172.P2013737588590936381

/-! ## A256172.P9765176369686054637

`6*p?[A038844(n+1)]+1`
-/

namespace A256172.P9765176369686054637
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038844 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + 1

end

end A256172.P9765176369686054637

/-! ## A256172.P5550622882069538428

`6*p?[floor(A001136(n+1)/6)]+1`
-/

namespace A256172.P5550622882069538428
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A001136 (n + 1) : ℚ) / 6⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + 1

end

end A256172.P5550622882069538428

/-! ## A256172.P12952289095783156079

`A016921(A188130(n+1))`
-/

namespace A256172.P12952289095783156079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016921 (A188130 (n + 1)).toNat

end

end A256172.P12952289095783156079

/-! ## A256172.P6562109440166398173

`A016921(p?[A038844(n+1)])`
-/

namespace A256172.P6562109440166398173
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038844 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016921 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A256172.P6562109440166398173

/-!
# A256173: Numbers k such that ceiling(sqrt(k))^2 - k is a square.

The programs for A256173, the canonical program `A256173.P6957340179493702245` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A256173 has offset 1).

The definition of A256173 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3254 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A256173.P6957340179493702245

`eq[0, A053186(ceil(sqrt(n))²-n)]`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A256173

/-- `eq[0, A053186(ceil(sqrt(n))²-n)]` -/
def P6957340179493702245.Spec : Prop :=
  ∀ n, (P6957340179493702245.a n : ℤ) = A256173 (n + 1)

theorem P6957340179493702245.correct : P6957340179493702245.Spec := by
  intro n
  simp only [A256173, Nat.add_sub_cancel]

end A256173

/-! ## A256173.P14919236845794183433

`eq[0, A053188(ceil(sqrt(n))²-n)]`
-/

namespace A256173.P14919236845794183433
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053188 (⌈Real.sqrt (n : ℝ)⌉ ^ 2 - (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A256173.P14919236845794183433

namespace A256173

/-- `eq[0, A053188(ceil(sqrt(n))²-n)]` -/
def P14919236845794183433.Spec : Prop :=
  ∀ n, (P14919236845794183433.a n : ℤ) = A256173 (n + 1)

end A256173

/-! ## A256173.P3541673286348304362

`eq[0, A068527(ceil(sqrt(n))²-n)]`
-/

namespace A256173.P3541673286348304362
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068527 (⌈Real.sqrt (n : ℝ)⌉ ^ 2 - (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A256173.P3541673286348304362

namespace A256173

/-- `eq[0, A068527(ceil(sqrt(n))²-n)]` -/
def P3541673286348304362.Spec : Prop :=
  ∀ n, (P3541673286348304362.a n : ℤ) = A256173 (n + 1)

end A256173

/-! ## A256173.P12578364924794821066

`eq[0, A070929(ceil(sqrt(n))²-n)]`
-/

namespace A256173.P12578364924794821066
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070929 (⌈Real.sqrt (n : ℝ)⌉ ^ 2 - (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A256173.P12578364924794821066

namespace A256173

/-- `eq[0, A070929(ceil(sqrt(n))²-n)]` -/
def P12578364924794821066.Spec : Prop :=
  ∀ n, (P12578364924794821066.a n : ℤ) = A256173 (n + 1)

end A256173

/-! ## A256173.P778096595812922492

`eq[0, A091453(ceil(sqrt(n))²-n)]`
-/

namespace A256173.P778096595812922492
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091453 (⌈Real.sqrt (n : ℝ)⌉ ^ 2 - (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A256173.P778096595812922492

namespace A256173

/-- `eq[0, A091453(ceil(sqrt(n))²-n)]` -/
def P778096595812922492.Spec : Prop :=
  ∀ n, (P778096595812922492.a n : ℤ) = A256173 (n + 1)

end A256173

/-! ## A256173.P10176226039723939255

`eq[1, A010052(ceil(sqrt(n))²-n)]`
-/

namespace A256173.P10176226039723939255
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010052 (⌈Real.sqrt (n : ℝ)⌉ ^ 2 - (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A256173.P10176226039723939255

namespace A256173

/-- `eq[1, A010052(ceil(sqrt(n))²-n)]` -/
def P10176226039723939255.Spec : Prop :=
  ∀ n, (P10176226039723939255.a n : ℤ) = A256173 (n + 1)

end A256173

/-! ## A256173.P4398244679488875259

`∪[n², A218485(n+1)]`
-/

namespace A256173.P4398244679488875259
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218485 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A256173.P4398244679488875259

namespace A256173

/-- `∪[n², A218485(n+1)]` -/
def P4398244679488875259.Spec : Prop :=
  ∀ n, (P4398244679488875259.a n : ℤ) = A256173 (n + 1)

end A256173

/-! ## A256173.P3326101664985994385

`record[A053187(n)-A053188(n)²]`
-/

namespace A256173.P3326101664985994385
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053187 n - A053188 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A256173.P3326101664985994385

namespace A256173

/-- `record[A053187(n)-A053188(n)²]` -/
def P3326101664985994385.Spec : Prop :=
  ∀ n, P3326101664985994385.a n = A256173 (n + 1)

end A256173

/-! ## A256173.P4578959627571516067

`lt[A068527(A068527(n)), 1]`
-/

namespace A256173.P4578959627571516067
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068527 (A068527 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A256173.P4578959627571516067

namespace A256173

/-- `lt[A068527(A068527(n)), 1]` -/
def P4578959627571516067.Spec : Prop :=
  ∀ n, (P4578959627571516067.a n : ℤ) = A256173 (n + 1)

end A256173

/-! ## A256173.P6142454112292315516

`record[n-A088226(n+2)²]`
-/

namespace A256173.P6142454112292315516
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A088226 (n + 2) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A256173.P6142454112292315516

namespace A256173

/-- `record[n-A088226(n+2)²]` -/
def P6142454112292315516.Spec : Prop :=
  ∀ n, P6142454112292315516.a n = A256173 (n + 1)

end A256173

/-! ## A256173.P10313200052153610207

`record[A152420(n)]`
-/

namespace A256173.P10313200052153610207
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152420 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A256173.P10313200052153610207

namespace A256173

/-- `record[A152420(n)]` -/
def P10313200052153610207.Spec : Prop :=
  ∀ n, P10313200052153610207.a n = A256173 (n + 1)

end A256173

/-! ## A256173.P16400290633683745706

`record[A088226(2*n+1)*A088226(2*(n+1))]`
-/

namespace A256173.P16400290633683745706
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088226 (2 * n + 1) * A088226 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A256173.P16400290633683745706

namespace A256173

/-- `record[A088226(2*n+1)*A088226(2*(n+1))]` -/
def P16400290633683745706.Spec : Prop :=
  ∀ n, P16400290633683745706.a n = A256173 (n + 1)

end A256173

/-!
# A256177: Primes congruent to {8, 13, 18, 23} mod 25.

The programs for A256177, the canonical program `A256177.P17811750112363117161` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A256177 has offset 1).

The definition of A256177 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8297 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A256177.P17811750112363117161

`p?[(5*n+3)*(n^4)%5]`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A256177

/-- `p?[(5*n+3)*(n^4)%5]` -/
def P17811750112363117161.Spec : Prop :=
  ∀ n, (P17811750112363117161.a n : ℤ) = A256177 (n + 1)

theorem P17811750112363117161.correct : P17811750112363117161.Spec := by
  intro n
  simp only [A256177, Nat.add_sub_cancel]

end A256177

/-! ## A256177.P15999109473849973504

`p?[(5*n+3)*gcd(5, n)]`
-/

namespace A256177.P15999109473849973504
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (5 * n + 3) * Nat.gcd 5 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A256177.P15999109473849973504

namespace A256177

/-- `p?[(5*n+3)*gcd(5, n)]` -/
def P15999109473849973504.Spec : Prop :=
  ∀ n, (P15999109473849973504.a n : ℤ) = A256177 (n + 1)

end A256177

/-! ## A256177.P751275629392752990

`p?[A010134(n)+5*n+2]`
-/

namespace A256177.P751275629392752990
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010134 n + (5 * n + 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A256177.P751275629392752990

namespace A256177

/-- `p?[A010134(n)+5*n+2]` -/
def P751275629392752990.Spec : Prop :=
  ∀ n, P751275629392752990.a n = A256177 (n + 1)

end A256177

/-! ## A256177.P13814854132223464884

`p?[(5*n+3)*A010122(n)]`
-/

namespace A256177.P13814854132223464884
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (5 * n + 3 : ℤ) * A010122 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A256177.P13814854132223464884

namespace A256177

/-- `p?[(5*n+3)*A010122(n)]` -/
def P13814854132223464884.Spec : Prop :=
  ∀ n, P13814854132223464884.a n = A256177 (n + 1)

end A256177

/-! ## A256177.P4956854244444964766

`p?[5*comp[5*n]+3]`
-/

namespace A256177.P4956854244444964766
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 * n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 * SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n + 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A256177.P4956854244444964766

namespace A256177

/-- `p?[5*comp[5*n]+3]` -/
def P4956854244444964766.Spec : Prop :=
  ∀ n, (P4956854244444964766.a n : ℤ) = A256177 (n + 1)

end A256177

/-! ## A256177.P16491061552721419456

`record[A014963(lcm(5, n+2)+3)]`
-/

namespace A256177.P16491061552721419456
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (Nat.lcm 5 (n + 2) + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A256177.P16491061552721419456

namespace A256177

/-- `record[A014963(lcm(5, n+2)+3)]` -/
def P16491061552721419456.Spec : Prop :=
  ∀ n, P16491061552721419456.a n = A256177 (n + 1)

end A256177

/-!
# A256178: Expansion of exp( Sum_{n >= 1} L(2*n)*L(4*n)*x^n/n ), where L(n) = A000032(n) is a Lucas number.

The programs for A256178, the canonical program `A256178.P4276033605408784369` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A256178 has offset 0).

The definition of A256178 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A256178.P4276033605408784369

`1/24*A000045(2*n+2)*A000045(2*n+4)*A000045(2*n+6)`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A256178

/-- `1/24*A000045(2*n+2)*A000045(2*n+4)*A000045(2*n+6)` -/
def P4276033605408784369.Spec : Prop :=
  ∀ n, P4276033605408784369.a n = (A256178 n : ℚ)

end A256178

/-! ## A256178.P3245516652418780762

`∑[C(A246640(n+1), 3)]`
-/

namespace A256178.P3245516652418780762
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A246640 (n + 1)).toNat 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A256178.P3245516652418780762

namespace A256178

/-- `∑[C(A246640(n+1), 3)]` -/
def P3245516652418780762.Spec : Prop :=
  ∀ n, (P3245516652418780762.a n : ℤ) = A256178 n

end A256178

/-! ## A256178.P14166859934865256918

`∑[C(A032908(n+2), 3)]`
-/

namespace A256178.P14166859934865256918
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A032908 (n + 2)).toNat 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A256178.P14166859934865256918

namespace A256178

/-- `∑[C(A032908(n+2), 3)]` -/
def P14166859934865256918.Spec : Prop :=
  ∀ n, (P14166859934865256918.a n : ℤ) = A256178 n

end A256178

/-! ## A256178.P12941115814556136138

`∑[C(A048577(2*n), 3)]`
-/

namespace A256178.P12941115814556136138
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A048577 (2 * n)).toNat 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A256178.P12941115814556136138

namespace A256178

/-- `∑[C(A048577(2*n), 3)]` -/
def P12941115814556136138.Spec : Prop :=
  ∀ n, (P12941115814556136138.a n : ℤ) = A256178 n

end A256178

/-! ## A256178.P4523332249437584542

`∑[A001655(2*n+1)/3]`
-/

namespace A256178.P4523332249437584542
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001655 (2 * n + 1) : ℚ) / 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A256178.P4523332249437584542

namespace A256178

/-- `∑[A001655(2*n+1)/3]` -/
def P4523332249437584542.Spec : Prop :=
  ∀ n, P4523332249437584542.a n = (A256178 n : ℚ)

end A256178

/-! ## A256178.P12466572398905837117

`∑[A065563(2*(n+1))/6]`
-/

namespace A256178.P12466572398905837117
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A065563 (2 * (n + 1)) : ℚ) / 6

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A256178.P12466572398905837117

namespace A256178

/-- `∑[A065563(2*(n+1))/6]` -/
def P12466572398905837117.Spec : Prop :=
  ∀ n, P12466572398905837117.a n = (A256178 n : ℚ)

end A256178

/-! ## A256178.P17325707060848534828

`∑[C(A001611(2*n+3), 3)]`
-/

namespace A256178.P17325707060848534828
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A001611 (2 * n + 3)).toNat 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A256178.P17325707060848534828

namespace A256178

/-- `∑[C(A001611(2*n+3), 3)]` -/
def P17325707060848534828.Spec : Prop :=
  ∀ n, (P17325707060848534828.a n : ℤ) = A256178 n

end A256178

/-! ## A256178.P14884829274555702157

`∑[C(A000045(2*n+3)+1, 3)]`
-/

namespace A256178.P14884829274555702157
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A000045 (2 * n + 3) + 1).toNat 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A256178.P14884829274555702157

namespace A256178

/-- `∑[C(A000045(2*n+3)+1, 3)]` -/
def P14884829274555702157.Spec : Prop :=
  ∀ n, (P14884829274555702157.a n : ℤ) = A256178 n

end A256178

/-! ## A256178.P12844998311808773755

`∑[gcd(A001656(2*n+1), A001656(2*n))]`
-/

namespace A256178.P12844998311808773755
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A001656 (2 * n + 1)) (A001656 (2 * n))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A256178.P12844998311808773755

namespace A256178

/-- `∑[gcd(A001656(2*n+1), A001656(2*n))]` -/
def P12844998311808773755.Spec : Prop :=
  ∀ n, (P12844998311808773755.a n : ℤ) = A256178 n

end A256178

/-!
# A256179: Sequence of power towers in ascending order, using all possible permutations of 2's and 3's.

The programs for A256179, there is no canonical definition to state claims against.
-/

/-! ## A256179.P3062535404347976005

`∩[A085256(n+1), A096165(n+1)]`
-/

namespace A256179.P3062535404347976005
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085256 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096165 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A256179.P3062535404347976005

/-! ## A256179.P13795975271954725787

`∩[A085256(n+1), A164336(n+1)]`
-/

namespace A256179.P13795975271954725787
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085256 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164336 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A256179.P13795975271954725787

/-! ## A256179.P1363489229631702922

`∩[A096165(n+1), A284698(n+1)]`
-/

namespace A256179.P1363489229631702922
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096165 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284698 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A256179.P1363489229631702922

/-!
# A256180: Exponential transform of the Fibonacci numbers.

The programs for A256180, there is no canonical definition to state claims against.
-/

/-! ## A256180.P11900122374179301695

`ceil(A189243(n+1)/ratio[A006318(n)])`
-/

namespace A256180.P11900122374179301695
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006318 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A189243 (n + 1) : ℚ) / ((f1 (n + 1) : ℚ) / (f1 n : ℚ))⌉

end

end A256180.P11900122374179301695

/-! ## A256180.P16539125290406603205

`A062108(A231494(n)+A108146(n))`
-/

namespace A256180.P16539125290406603205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062108 (A231494 n + A108146 n).toNat

end

end A256180.P16539125290406603205

/-! ## A256180.P6938034929004507774

`A279569(n)-A032741(A231074(n))`
-/

namespace A256180.P6938034929004507774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279569 n - A032741 (A231074 n).toNat

end

end A256180.P6938034929004507774

/-!
# A256181: The number of permutations of length n sortable by 3 block interchanges.

The programs for A256181, there is no canonical definition to state claims against.
-/

/-! ## A256181.P8831201926761692921

`record[A190015(∑[A126116(n)])]`
-/

namespace A256181.P8831201926761692921
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126116 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190015 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A256181.P8831201926761692921

/-! ## A256181.P17345250289207118283

`record[gcd(A000142(n), A152647(n+1))]`
-/

namespace A256181.P17345250289207118283
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000142 n) (A152647 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A256181.P17345250289207118283

/-! ## A256181.P15748645721993012524

`Δ[A032555(n+1)!]/A031492(n+1)`
-/

namespace A256181.P15748645721993012524
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A032555 (n + 1)).toNat

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((f1 (n + 1) : ℤ) - (f1 n : ℤ) : ℚ) / (A031492 (n + 1) : ℚ)

end

end A256181.P15748645721993012524

/-! ## A256181.P672185490372309131

`A000027(A001563(n+1))/A307625(n+1)`
-/

namespace A256181.P672185490372309131
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000027 (A001563 (n + 1)).toNat : ℚ) / (A307625 (n + 1) : ℚ)

end

end A256181.P672185490372309131

/-!
# A256182: G.f. A(x) satisfies: 1/A(x)^3 = Sum_{n>=0} (-1)^n * (1-7*n) * (-x)^(n*(n+1)/2).

The programs for A256182, there is no canonical definition to state claims against.
-/

/-! ## A256182.P14400906195152383115

`Δ[A049474(∑[A227846(n)])]`
-/

namespace A256182.P14400906195152383115
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227846 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049474 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A256182.P14400906195152383115

/-! ## A256182.P13797671074168224734

`∑[A118981(2*n²+1)]`
-/

namespace A256182.P13797671074168224734
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118981 (2 * n ^ 2 + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A256182.P13797671074168224734

/-!
# A256183: G.f. A(x) satisfies: 1/A(x)^3 = Sum_{n>=0} (-1)^n * (11*n+1) * x^(n*(n+1)/2).

The programs for A256183, there is no canonical definition to state claims against.
-/

/-! ## A256183.P17090063398797958145

`A291813(n+2)-record[A291786(n+1)]`
-/

namespace A256183.P17090063398797958145
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291786 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291813 (n + 2) - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A256183.P17090063398797958145

/-!
# A256186: Naught-y primes (A056709) that after removing all zeros become zeroless primes (A038618).

The programs for A256186, there is no canonical definition to state claims against.
-/

/-! ## A256186.P1052205283078580821

`p?[A256227(n+1)]`
-/

namespace A256186.P1052205283078580821
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256227 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A256186.P1052205283078580821

/-! ## A256186.P9983885398596148268

`record[A006530(A256227(n+5))]`
-/

namespace A256186.P9983885398596148268
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A256227 (n + 5)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A256186.P9983885398596148268

/-! ## A256186.P1210777237769697357

`∩[A000040(n+1), A256227(n+1)]`
-/

namespace A256186.P1210777237769697357
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256227 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A256186.P1210777237769697357

/-! ## A256186.P4721184153215591902

`∩[A004139(n+1), A256227(n+1)]`
-/

namespace A256186.P4721184153215591902
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256227 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A256186.P4721184153215591902

/-! ## A256186.P17209351814351303755

`∩[A006005(n+1), A256227(n+1)]`
-/

namespace A256186.P17209351814351303755
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256227 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A256186.P17209351814351303755

/-! ## A256186.P4468607403874775040

`∩[A008578(n+1), A256227(n+1)]`
-/

namespace A256186.P4468607403874775040
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256227 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A256186.P4468607403874775040

/-! ## A256186.P3483101576181418765

`∩[A033946(n+1), A256227(n+1)]`
-/

namespace A256186.P3483101576181418765
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033946 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256227 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A256186.P3483101576181418765

/-! ## A256186.P7970186977572816099

`∩[A045319(n+1), A256227(n+1)]`
-/

namespace A256186.P7970186977572816099
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256227 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A256186.P7970186977572816099

/-! ## A256186.P15771306494016929014

`∩[A045344(n+1), A256227(n+1)]`
-/

namespace A256186.P15771306494016929014
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256227 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A256186.P15771306494016929014

/-! ## A256186.P2344221451985414153

`∩[A046022(n+1), A256227(n+1)]`
-/

namespace A256186.P2344221451985414153
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046022 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256227 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A256186.P2344221451985414153

/-! ## A256186.P1507703955032672069

`∩[A046501(n+1), A256227(n+1)]`
-/

namespace A256186.P1507703955032672069
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046501 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256227 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A256186.P1507703955032672069

/-! ## A256186.P5320158751828358920

`∩[A051948(n+1), A256227(n+1)]`
-/

namespace A256186.P5320158751828358920
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051948 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256227 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A256186.P5320158751828358920

/-! ## A256186.P2521575105622667292

`∩[A053577(n+1), A256227(n+1)]`
-/

namespace A256186.P2521575105622667292
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053577 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256227 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A256186.P2521575105622667292

/-! ## A256186.P11998243357567364725

`∩[A053813(n+1), A256227(n+1)]`
-/

namespace A256186.P11998243357567364725
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053813 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256227 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A256186.P11998243357567364725

/-! ## A256186.P5727884021702132475

`∩[A055387(n+1), A256227(n+1)]`
-/

namespace A256186.P5727884021702132475
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055387 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256227 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A256186.P5727884021702132475

/-! ## A256186.P1198457907275977940

`∩[A056709(n+1), A256227(n+1)]`
-/

namespace A256186.P1198457907275977940
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056709 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256227 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A256186.P1198457907275977940

/-! ## A256186.P13429695380401358466

`∩[A059497(n+1), A256227(n+1)]`
-/

namespace A256186.P13429695380401358466
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059497 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256227 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A256186.P13429695380401358466

/-! ## A256186.P14159067276793199718

`∩[A062972(n+1), A256227(n+1)]`
-/

namespace A256186.P14159067276793199718
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062972 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256227 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A256186.P14159067276793199718

/-! ## A256186.P12634644161746421619

`∩[A065376(n+1), A256227(n+1)]`
-/

namespace A256186.P12634644161746421619
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065376 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256227 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A256186.P12634644161746421619

/-! ## A256186.P7788682770062100188

`∩[A065396(n+1), A256227(n+1)]`
-/

namespace A256186.P7788682770062100188
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065396 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256227 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A256186.P7788682770062100188

/-!
# A256187: First differences of Per Nørgård's "infinity sequence" A004718.

The programs for A256187, the canonical program `A256187.P18267881939555465832` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A256187 has offset 0).

The definition of A256187 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A256187.P18267881939555465832

`Δ[A004718(n)]`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A256187

/-- `Δ[A004718(n)]` -/
def P18267881939555465832.Spec : Prop :=
  ∀ n, P18267881939555465832.a n = A256187 n

theorem P18267881939555465832.correct : P18267881939555465832.Spec := by
  intro n
  simp only [A256187]

end A256187

/-! ## A256187.P14570961194452196096

`Δ[A065620(A323908(n))]`
-/

namespace A256187.P14570961194452196096
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065620 (A323908 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A256187.P14570961194452196096

namespace A256187

/-- `Δ[A065620(A323908(n))]` -/
def P14570961194452196096.Spec : Prop :=
  ∀ n, P14570961194452196096.a n = A256187 n

end A256187

/-! ## A256187.P15357915604273986660

`Δ[A117966(A323909(n))]`
-/

namespace A256187.P15357915604273986660
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117966 (A323909 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A256187.P15357915604273986660

namespace A256187

/-- `Δ[A117966(A323909(n))]` -/
def P15357915604273986660.Spec : Prop :=
  ∀ n, P15357915604273986660.a n = A256187 n

end A256187

/-! ## A256187.P15152947213125115116

`A004718(n+1)-A004718(n)`
-/

namespace A256187.P15152947213125115116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004718 (n + 1) - A004718 n

end

end A256187.P15152947213125115116

namespace A256187

/-- `A004718(n+1)-A004718(n)` -/
def P15152947213125115116.Spec : Prop :=
  ∀ n, P15152947213125115116.a n = A256187 n

theorem P15152947213125115116.correct : P15152947213125115116.Spec := by
  intro n
  simp only [A256187, Nat.add_sub_cancel, A256187.P15152947213125115116.a, A256187.P18267881939555465832.f1, A256187.P18267881939555465832.a, SequenceMachineLib.memo_apply]

end A256187

/-! ## A256187.P1974885136314366144

`Δ[A323909(2*n)-A323909(n)]`
-/

namespace A256187.P1974885136314366144
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323909 (2 * n) - A323909 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A256187.P1974885136314366144

namespace A256187

/-- `Δ[A323909(2*n)-A323909(n)]` -/
def P1974885136314366144.Spec : Prop :=
  ∀ n, P1974885136314366144.a n = A256187 n

end A256187

/-! ## A256187.P7163816547456749301

`A065620(A323908(2*n))+A004718(n+1)`
-/

namespace A256187.P7163816547456749301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065620 (A323908 (2 * n)).toNat + A004718 (n + 1)

end

end A256187.P7163816547456749301

namespace A256187

/-- `A065620(A323908(2*n))+A004718(n+1)` -/
def P7163816547456749301.Spec : Prop :=
  ∀ n, P7163816547456749301.a n = A256187 n

end A256187

/-! ## A256187.P15251508055908215270

`A117966(A323909(2*n))+A004718(n+1)`
-/

namespace A256187.P15251508055908215270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117966 (A323909 (2 * n)).toNat + A004718 (n + 1)

end

end A256187.P15251508055908215270

namespace A256187

/-- `A117966(A323909(2*n))+A004718(n+1)` -/
def P15251508055908215270.Spec : Prop :=
  ∀ n, P15251508055908215270.a n = A256187 n

end A256187

/-! ## A256187.P3948691655977096367

`A065620(A323908(2*n))+A065620(A323908(n+1))`
-/

namespace A256187.P3948691655977096367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065620 (A323908 (2 * n)).toNat + A065620 (A323908 (n + 1)).toNat

end

end A256187.P3948691655977096367

namespace A256187

/-- `A065620(A323908(2*n))+A065620(A323908(n+1))` -/
def P3948691655977096367.Spec : Prop :=
  ∀ n, P3948691655977096367.a n = A256187 n

end A256187

/-! ## A256187.P11274931504891516416

`A117966(A323909(2*n))+A117966(A323909(n+1))`
-/

namespace A256187.P11274931504891516416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117966 (A323909 (2 * n)).toNat + A117966 (A323909 (n + 1)).toNat

end

end A256187.P11274931504891516416

namespace A256187

/-- `A117966(A323909(2*n))+A117966(A323909(n+1))` -/
def P11274931504891516416.Spec : Prop :=
  ∀ n, P11274931504891516416.a n = A256187 n

end A256187

/-! ## A256187.P13249942618021332256

`Δ[A343029(n)-A343030(n)]`
-/

namespace A256187.P13249942618021332256
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343029 n - A343030 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A256187.P13249942618021332256

namespace A256187

/-- `Δ[A343029(n)-A343030(n)]` -/
def P13249942618021332256.Spec : Prop :=
  ∀ n, P13249942618021332256.a n = A256187 n

theorem P13249942618021332256.correct : P13249942618021332256.Spec := by
  intro n
  simp only [A256187, Nat.add_sub_cancel, A256187.P13249942618021332256.f1, A256187.P13249942618021332256.a, A256187.P18267881939555465832.f1, A256187.P18267881939555465832.a, A004718, A004718.P18113542795219450323.a, A343029, A343029.P9025480771425565583.a, A343030, A343030.P6588649687182581724.a, A014081, A014081.P14878370479040452879.a, A154437, A154437.P11607465258887740319.a, A000120, A000120.P2816527436160941581.a, A056539, A056539.P17406113578210965747.a, A069010, A069010.P14932719103722593844.a, A335858, A335858.P3204271633163649755.a, A003188, A003188.P10544524695508875182.a, A005187, A005187.P3874015513960485494.a, A005811, A005811.P8696411420205566785.a, A180200, A180200.P2958972076606443306.a, A341916, A341916.P17753814801162057676.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A256187

/-! ## A256187.P7149453414770274042

`1-Δ[A274604(2*n)]`
-/

namespace A256187.P7149453414770274042
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274604 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (f1 (n + 1) - f1 n)

end

end A256187.P7149453414770274042

namespace A256187

/-- `1-Δ[A274604(2*n)]` -/
def P7149453414770274042.Spec : Prop :=
  ∀ n, P7149453414770274042.a n = A256187 n

end A256187

/-! ## A256187.P11656566175471575499

`Δ[A343030(2*n)-A343030(n)]`
-/

namespace A256187.P11656566175471575499
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343030 (2 * n) - A343030 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A256187.P11656566175471575499

namespace A256187

/-- `Δ[A343030(2*n)-A343030(n)]` -/
def P11656566175471575499.Spec : Prop :=
  ∀ n, P11656566175471575499.a n = A256187 n

end A256187

/-! ## A256187.P13357250719309690278

`Δ[A343029(n)-A343029(2*n)]`
-/

namespace A256187.P13357250719309690278
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343029 n - A343029 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A256187.P13357250719309690278

namespace A256187

/-- `Δ[A343029(n)-A343029(2*n)]` -/
def P13357250719309690278.Spec : Prop :=
  ∀ n, P13357250719309690278.a n = A256187 n

end A256187

/-! ## A256187.P6277984727243177965

`Δ[A085144(A010078(n+1))]`
-/

namespace A256187.P6277984727243177965
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085144 (A010078 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A256187.P6277984727243177965

namespace A256187

/-- `Δ[A085144(A010078(n+1))]` -/
def P6277984727243177965.Spec : Prop :=
  ∀ n, P6277984727243177965.a n = A256187 n

end A256187

/-! ## A256187.P15460750706362319504

`A085144(A010078(2*n+1))+A085144(A010078(n+2))`
-/

namespace A256187.P15460750706362319504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085144 (A010078 (2 * n + 1)).toNat + A085144 (A010078 (n + 2)).toNat

end

end A256187.P15460750706362319504

namespace A256187

/-- `A085144(A010078(2*n+1))+A085144(A010078(n+2))` -/
def P15460750706362319504.Spec : Prop :=
  ∀ n, P15460750706362319504.a n = A256187 n

end A256187

/-! ## A256187.P14307278692194407685

`Δ[A195017(A005940(n+1))]`
-/

namespace A256187.P14307278692194407685
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195017 (A005940 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A256187.P14307278692194407685

namespace A256187

/-- `Δ[A195017(A005940(n+1))]` -/
def P14307278692194407685.Spec : Prop :=
  ∀ n, P14307278692194407685.a n = A256187 n

end A256187

/-! ## A256187.P11596883419257853995

`A065359(A048678(2*n))+A065359(A048678(n+1))`
-/

namespace A256187.P11596883419257853995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065359 (A048678 (2 * n)).toNat + A065359 (A048678 (n + 1)).toNat

end

end A256187.P11596883419257853995

namespace A256187

/-- `A065359(A048678(2*n))+A065359(A048678(n+1))` -/
def P11596883419257853995.Spec : Prop :=
  ∀ n, P11596883419257853995.a n = A256187 n

end A256187

/-! ## A256187.P10495473998479281074

`A195017(A005940(2*n+1))+A195017(A005940(n+2))`
-/

namespace A256187.P10495473998479281074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195017 (A005940 (2 * n + 1)).toNat + A195017 (A005940 (n + 2)).toNat

end

end A256187.P10495473998479281074

namespace A256187

/-- `A195017(A005940(2*n+1))+A195017(A005940(n+2))` -/
def P10495473998479281074.Spec : Prop :=
  ∀ n, P10495473998479281074.a n = A256187 n

end A256187

/-!
# A256188: In positive integers: replace k*(k+1)/2 with the first k numbers.

The programs for A256188, there is no canonical definition to state claims against.
-/

/-! ## A256188.P1581614004710639003

`A255878(n)+a(n-1)` with `a(0)=1`
-/

namespace A256188.P1581614004710639003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A255878 n + a (n - 1)

end

end A256188.P1581614004710639003

/-! ## A256188.P3851381514123383673

`∑[A255878(A028310(n))]`
-/

namespace A256188.P3851381514123383673
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255878 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A256188.P3851381514123383673

/-! ## A256188.P8695574586181540114

`∑[A255878(n^and(1, A045321(n+1)))]`
-/

namespace A256188.P8695574586181540114
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255878 (SequenceMachineLib.roundAway ((n : ℚ) ^ (Int.land 1 (A045321 (n + 1)) : ℤ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A256188.P8695574586181540114

/-! ## A256188.P13146308223031440556

`∑[A255878(n+1)]+1-A255878(n+1)`
-/

namespace A256188.P13146308223031440556
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255878 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (1 - A255878 (n + 1))

end

end A256188.P13146308223031440556

/-! ## A256188.P5970102025479079778

`A255879(n+2)-(A255879(n+1)+A255878(n+1))`
-/

namespace A256188.P5970102025479079778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255879 (n + 2) - (A255879 (n + 1) + A255878 (n + 1))

end

end A256188.P5970102025479079778

/-! ## A256188.P14359928600559056373

`∑[A255878(A123108(2*n))]`
-/

namespace A256188.P14359928600559056373
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255878 (A123108 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A256188.P14359928600559056373

/-! ## A256188.P1771142678463679858

`∑[A255878(A058933(A008578(n+1)))]`
-/

namespace A256188.P1771142678463679858
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255878 (A058933 (A008578 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A256188.P1771142678463679858

/-! ## A256188.P13093452013959509215

`∑[A255878(A002260(∑[n+2]-1))]`
-/

namespace A256188.P13093452013959509215
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255878 (A002260 (∑ j ∈ Finset.range (n + 1), f2 j - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A256188.P13093452013959509215

/-!
# A256193: Number T(n,k) of partitions of n into two sorts of parts having exactly k parts of the second sort; triangle T(n,k), n>=0, 0<=k<=n, read by rows.

The programs for A256193, there is no canonical definition to state claims against.
-/

/-! ## A256193.P16487623831027956990

`A117707(A067410(n))+A014473(n)`
-/

namespace A256193.P16487623831027956990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117707 (A067410 n).toNat + A014473 n

end

end A256193.P16487623831027956990

/-! ## A256193.P17781305838404793559

`A172263(A114192(n)+A007318(n))`
-/

namespace A256193.P17781305838404793559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172263 (A114192 n + A007318 n).toNat

end

end A256193.P17781305838404793559

/-! ## A256193.P17499512104058992660

`A172263(A114192(n)+A014473(n))`
-/

namespace A256193.P17499512104058992660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172263 (A114192 n + A014473 n).toNat

end

end A256193.P17499512104058992660

/-! ## A256193.P13011558814465730402

`A172263(A114192(n)+A028930(n))`
-/

namespace A256193.P13011558814465730402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172263 (A114192 n + A028930 n).toNat

end

end A256193.P13011558814465730402

/-! ## A256193.P3270775473469826139

`A172263(A114192(n)+A034932(n))`
-/

namespace A256193.P3270775473469826139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172263 (A114192 n + A034932 n).toNat

end

end A256193.P3270775473469826139

/-!
# A256195: Number of permutations in S_n that avoid the pattern 25314.

The programs for A256195, there is no canonical definition to state claims against.
-/

/-! ## A256195.P2105922902227325492

`A047889(n)-A184955(2*n+1)`
-/

namespace A256195.P2105922902227325492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047889 n - A184955 (2 * n + 1)

end

end A256195.P2105922902227325492

/-! ## A256195.P5082636152946703721

`A047889(n)-A082451(∑[9*32*n]+11)`
-/

namespace A256195.P5082636152946703721
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9 * (32 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047889 n - A082451 (∑ j ∈ Finset.range (n + 1), f1 j + 11)

end

end A256195.P5082636152946703721

/-! ## A256195.P10712178787763658985

`A256196(n)-A011730(-∏[n-C(2, n+2)])`
-/

namespace A256195.P10712178787763658985
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (Nat.choose 2 (n + 2) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256196 n - A011730 (-(∏ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A256195.P10712178787763658985

/-! ## A256195.P7029177874510862811

`A256196(n)-A011730(-∏[n-C(n, 2*n)²])`
-/

namespace A256195.P7029177874510862811
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (Nat.choose n (2 * n) ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256196 n - A011730 (-(∏ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A256195.P7029177874510862811

/-!
# A256196: Number of permutations in S_n that avoid the pattern 31524.

The programs for A256196, there is no canonical definition to state claims against.
-/

/-! ## A256196.P13295027152165098093

`A256197(n)-A037800(A011815(n))`
-/

namespace A256196.P13295027152165098093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256197 n - A037800 (A011815 n).toNat

end

end A256196.P13295027152165098093

/-! ## A256196.P17780208133572986236

`A256197(n)-A018843(A291896(n))`
-/

namespace A256196.P17780208133572986236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256197 n - A018843 (A291896 n).toNat

end

end A256196.P17780208133572986236

/-! ## A256196.P3831008264483526601

`A256197(n)-A037801(A273695(n))`
-/

namespace A256196.P3831008264483526601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256197 n - A037801 (A273695 n).toNat

end

end A256196.P3831008264483526601

/-! ## A256196.P14458234374380792288

`A256197(n)-A002265(A309861(n))`
-/

namespace A256196.P14458234374380792288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256197 n - A002265 (A309861 n).toNat

end

end A256196.P14458234374380792288

/-!
# A256197: Number of permutations in S_n that avoid the pattern 35214.

The programs for A256197, there is no canonical definition to state claims against.
-/

/-! ## A256197.P864490062930824518

`A256196(n)+A037800(A011815(n))`
-/

namespace A256197.P864490062930824518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256196 n + A037800 (A011815 n).toNat

end

end A256197.P864490062930824518

/-! ## A256197.P15525817457783994586

`A014682(A256199(n)+A256195(n))`
-/

namespace A256197.P15525817457783994586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A256199 n + A256195 n).toNat

end

end A256197.P15525817457783994586

/-! ## A256197.P7221651968947811077

`A014682(A256200(n)+A256195(n))`
-/

namespace A256197.P7221651968947811077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A256200 n + A256195 n).toNat

end

end A256197.P7221651968947811077

/-! ## A256197.P10221074818154305863

`or(A001222(A309861(n)), A256196(n))`
-/

namespace A256197.P10221074818154305863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A001222 (A309861 n).toNat) (A256196 n)

end

end A256197.P10221074818154305863

/-!
# A256198: Number of permutations in S_n that avoid the pattern 35124.

The programs for A256198, there is no canonical definition to state claims against.
-/

/-! ## A256198.P14342629681769729528

`A256199(n)-A167688(A071731(n))`
-/

namespace A256198.P14342629681769729528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256199 n - A167688 (A071731 n).toNat

end

end A256198.P14342629681769729528

/-! ## A256198.P6852987616673318581

`A256200(n)-A167688(A071731(n))`
-/

namespace A256198.P6852987616673318581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256200 n - A167688 (A071731 n).toNat

end

end A256198.P6852987616673318581

/-! ## A256198.P6144783077408013358

`A256199(n)-A218825(A309861(n))`
-/

namespace A256198.P6144783077408013358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256199 n - A218825 (A309861 n).toNat

end

end A256198.P6144783077408013358

/-! ## A256198.P9035702100769250545

`A256201(n)-A324179(A256196(n))`
-/

namespace A256198.P9035702100769250545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256201 n - A324179 (A256196 n).toNat

end

end A256198.P9035702100769250545

/-! ## A256198.P4831323744211234361

`∑{d}[A218825(n+1)-A256200(n), A000010(#)]`
-/

namespace A256198.P4831323744211234361
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218825 (n + 1) - A256200 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A256198.P4831323744211234361

/-!
# A256199: Number of permutations in S_n that avoid the pattern 53124.

The programs for A256199, there is no canonical definition to state claims against.
-/

/-! ## A256199.P18167361821905256715

`xor(A034432(A133263(n)), A256200(n))`
-/

namespace A256199.P18167361821905256715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A034432 (A133263 n).toNat) (A256200 n)

end

end A256199.P18167361821905256715

/-! ## A256199.P6684379327547070157

`A256200(n)-A212172(A229900(n+1))`
-/

namespace A256199.P6684379327547070157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256200 n - A212172 (A229900 (n + 1)).toNat

end

end A256199.P6684379327547070157

