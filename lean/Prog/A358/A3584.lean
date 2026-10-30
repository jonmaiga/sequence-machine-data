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
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C025
import Seq.B000.C028
import Seq.B000.C030
import Seq.B000.C033
import Seq.B000.C036
import Seq.B000.C041
import Seq.B000.C043
import Seq.B000.C045
import Seq.B000.C046
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C009
import Seq.B001.C010
import Seq.B001.C013
import Seq.B001.C014
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C007
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B004.C000
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
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

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A358401: Difference in number of 0's in first n terms of Van Eck's sequence and number of primes less than or equal to n.

The programs for A358401, there is no canonical definition to state claims against.
-/

/-! ## A358401.P16406481821107248611

`A171896(n+1)-A000720(n+1)`
-/

namespace A358401.P16406481821107248611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171896 (n + 1) - A000720 (n + 1)

end

end A358401.P16406481821107248611

/-! ## A358401.P47552658316579559

`A171896(n+1)-∑[A010051(n+1)]`
-/

namespace A358401.P47552658316579559
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171896 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A358401.P47552658316579559

/-! ## A358401.P9596625709468024771

`∑[C(2, A337980(n+2)²)]-A000720(n+1)`
-/

namespace A358401.P9596625709468024771
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (A337980 (n + 2) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A000720 (n + 1)

end

end A358401.P9596625709468024771

/-! ## A358401.P12576506244243304725

`∑[char[A263652(n+1)]]+1-A000720(n+1)`
-/

namespace A358401.P12576506244243304725
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263652 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j + 1 : ℕ) : ℤ) - A000720 (n + 1)

end

end A358401.P12576506244243304725

/-! ## A358401.P4691333277028059366

`A016348(A185316(n))`
-/

namespace A358401.P4691333277028059366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016348 (A185316 n).toNat

end

end A358401.P4691333277028059366

/-!
# A358402: a(1) = 0; for n > 1, let a(n-1) = m; if a(n-1) is the first occurrence of m then a(n) = 0, but if there is a k < n-1 with a(k) = m, a(n) is the minimum of n-1-k and j, where a(j) is the first occurrence of m in the sequence.

The programs for A358402, there is no canonical definition to state claims against.
-/

/-! ## A358402.P10071200654177142084

`A098550(A003242(n+3))%A076888(2*n+1)`
-/

namespace A358402.P10071200654177142084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A098550 (A003242 (n + 3)).toNat) (A076888 (2 * n + 1))

end

end A358402.P10071200654177142084

/-! ## A358402.P5891795120941527045

`A054708(A274935(n+1))%A162618(n+1)`
-/

namespace A358402.P5891795120941527045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A054708 (A274935 (n + 1)).toNat) (A162618 (n + 1))

end

end A358402.P5891795120941527045

/-! ## A358402.P7848614024343574977

`A124763(A316622(n)+A236842(n+1))`
-/

namespace A358402.P7848614024343574977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124763 (A316622 n + A236842 (n + 1)).toNat

end

end A358402.P7848614024343574977

/-! ## A358402.P14084138324511992626

`A283304(n+1)+A267417(A285546(n))`
-/

namespace A358402.P14084138324511992626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283304 (n + 1) + A267417 (A285546 n).toNat

end

end A358402.P14084138324511992626

/-! ## A358402.P27744681810751451

`A029555(A003065(n))%A265692(n+1)`
-/

namespace A358402.P27744681810751451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A029555 (A003065 n).toNat) (A265692 (n + 1))

end

end A358402.P27744681810751451

/-!
# A358404: Multipliers involving Fibonacci-like sequences and Pythagorean triples.

The programs for A358404, there is no canonical definition to state claims against.
-/

/-! ## A358404.P6255248258613090853

`A014237(A130290(n+5)%A177243(3*n+4))`
-/

namespace A358404.P6255248258613090853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014237 (Int.tmod (A130290 (n + 5)) (A177243 (3 * n + 4))).toNat

end

end A358404.P6255248258613090853

/-!
# A358405: a(1) = 0; for n > 1, let a(n-1) = m; if a(n-1) is the first occurrence of m then a(n) = 0, but if there is a k < n-1 with a(k) = m, a(n) is the maximum of n-1-k and j, where a(j) is the first occurrence of m in the sequence.

The programs for A358405, there is no canonical definition to state claims against.
-/

/-! ## A358405.P3659539556595583028

`A007814(A208359(n+1)-A327236(n))`
-/

namespace A358405.P3659539556595583028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A208359 (n + 1) - A327236 n).toNat

end

end A358405.P3659539556595583028

/-! ## A358405.P14673946028194894379

`A007814(xor(A208359(n+1), A327236(n)))`
-/

namespace A358405.P14673946028194894379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (Int.xor (A208359 (n + 1)) (A327236 n)).toNat

end

end A358405.P14673946028194894379

/-! ## A358405.P609464867633149746

`A240730(A073941(n+1))%A240698(n+1)`
-/

namespace A358405.P609464867633149746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A240730 (A073941 (n + 1)).toNat) (A240698 (n + 1))

end

end A358405.P609464867633149746

/-! ## A358405.P16349193123264747428

`A053574(A235862(3*n+1)^A334996(n+1))`
-/

namespace A358405.P16349193123264747428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053574 (SequenceMachineLib.roundAway ((A235862 (3 * n + 1) : ℚ) ^ (A334996 (n + 1) : ℤ))).toNat

end

end A358405.P16349193123264747428

/-!
# A358407: Number of regions formed in a square by straight line segments when connecting the n-1 points between each corner that divide each edge into n equal parts to the n-1 points on each of the two adjacent edges of the square.

The programs for A358407, there is no canonical definition to state claims against.
-/

/-! ## A358407.P8753643615365008483

`A358409(n+1)-A358408(n+1)+1`
-/

namespace A358407.P8753643615365008483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358409 (n + 1) - A358408 (n + 1) + 1

end

end A358407.P8753643615365008483

/-! ## A358407.P4030597772532816729

`A004442(A358409(n+1)-A358408(n+1))`
-/

namespace A358407.P4030597772532816729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (A358409 (n + 1) - A358408 (n + 1)).toNat

end

end A358407.P4030597772532816729

/-!
# A358408: Number of vertices formed in a square by straight line segments when connecting the n-1 points between each corner that divide each edge into n equal parts to the n-1 points on each of the two adjacent edges of the square.

The programs for A358408, there is no canonical definition to state claims against.
-/

/-! ## A358408.P4329300981042631960

`A358409(n+1)-A358407(n+1)+1`
-/

namespace A358408.P4329300981042631960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358409 (n + 1) - A358407 (n + 1) + 1

end

end A358408.P4329300981042631960

/-! ## A358408.P3487779320819771973

`A358409(n+1)-A004442(A358407(n+1))`
-/

namespace A358408.P3487779320819771973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358409 (n + 1) - A004442 (A358407 (n + 1)).toNat

end

end A358408.P3487779320819771973

/-!
# A358409: Number of edges formed in a square by straight line segments when connecting the n-1 points between each corner that divide each edge into n equal parts to the n-1 points on each of the two adjacent edges of the square.

The programs for A358409, there is no canonical definition to state claims against.
-/

/-! ## A358409.P10956922384023680471

`A358407(n+1)+A358408(n+1)-1`
-/

namespace A358409.P10956922384023680471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358407 (n + 1) + A358408 (n + 1) - 1

end

end A358409.P10956922384023680471

/-! ## A358409.P13187348554938815009

`A358408(n+1)+A004442(A358407(n+1))`
-/

namespace A358409.P13187348554938815009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358408 (n + 1) + A004442 (A358407 (n + 1)).toNat

end

end A358409.P13187348554938815009

/-!
# A358410: a(n) = Sum_{d|n} (d + n/d - 2)!/(d - 1)!.

The programs for A358410, the canonical program `A358410.P12388922767085524327` is in `Seq.B000.C046`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A358410 has offset 1).

The definition of A358410 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A358410.P12388922767085524327

`∑{d}[n+1, (#+(n+1)/#-2)!/(#-1)!]`

The canonical program, it is in `Seq.B000.C046`.
-/

namespace A358410

/-- `∑{d}[n+1, (#+(n+1)/#-2)!/(#-1)!]` -/
def P12388922767085524327.Spec : Prop :=
  ∀ n, P12388922767085524327.a n = (A358410 (n + 1) : ℚ)

end A358410

/-! ## A358410.P11147525168549739157

`A325326(A011782(n))+∑{p}[n+1, ceil(1/#)]`
-/

namespace A358410.P11147525168549739157
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325326 (A011782 n).toNat + ∑ p ∈ Nat.primeFactors (f1 n), ⌈1 / (p : ℚ)⌉

end

end A358410.P11147525168549739157

namespace A358410

/-- `A325326(A011782(n))+∑{p}[n+1, ceil(1/#)]` -/
def P11147525168549739157.Spec : Prop :=
  ∀ n, P11147525168549739157.a n = A358410 (n + 1)

end A358410

/-! ## A358410.P12222802172392356636

`A009006(A009006(n))+A006973(n+1)`
-/

namespace A358410.P12222802172392356636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009006 (A009006 n).toNat + A006973 (n + 1)

end

end A358410.P12222802172392356636

namespace A358410

/-- `A009006(A009006(n))+A006973(n+1)` -/
def P12222802172392356636.Spec : Prop :=
  ∀ n, P12222802172392356636.a n = A358410 (n + 1)

end A358410

/-!
# A358411: a(n) = Sum_{d|n} (d + n/d - 1)!/(d - 1)!.

The programs for A358411, the canonical program `A358411.P17902703854401374443` is in `Seq.B000.C046`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A358411 has offset 1).

The definition of A358411 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A358411.P17902703854401374443

`∑{d}[n+1, (#+(n+1)/#-1)!/(#-1)!]`

The canonical program, it is in `Seq.B000.C046`.
-/

namespace A358411

/-- `∑{d}[n+1, (#+(n+1)/#-1)!/(#-1)!]` -/
def P17902703854401374443.Spec : Prop :=
  ∀ n, P17902703854401374443.a n = (A358411 (n + 1) : ℚ)

end A358411

/-!
# A358415: a(n) is the prime or perfect or amicable or sociable number encountered in the aliquot sequence for 2^n.

The programs for A358415, there is no canonical definition to state claims against.
-/

/-! ## A358415.P7545082506476812456

`A115350(A000079(n+1)%A038580(n+1))`
-/

namespace A358415.P7545082506476812456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115350 (Int.tmod (A000079 (n + 1)) (A038580 (n + 1))).toNat

end

end A358415.P7545082506476812456

/-! ## A358415.P6185387471038350335

`A115350(A286834(n+1))`
-/

namespace A358415.P6185387471038350335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115350 (A286834 (n + 1)).toNat

end

end A358415.P6185387471038350335

/-! ## A358415.P14614634819790891362

`A115350(A290239(n+1))`
-/

namespace A358415.P14614634819790891362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115350 (A290239 (n + 1)).toNat

end

end A358415.P14614634819790891362

/-!
# A358416: a(1) = 0 and a(n+1) > a(n) is the smallest integer such that a(n+1)^2-a(n)^2 is triangular.

The programs for A358416, there is no canonical definition to state claims against.
-/

/-! ## A358416.P243217931538313911

`sqrt(A036449(n+1))`
-/

namespace A358416.P243217931538313911
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A036449 (n + 1) : ℝ)

end

end A358416.P243217931538313911

/-! ## A358416.P4150644227136434555

`sqrt(∑[A189475(n+1)]-A189475(n+1))`
-/

namespace A358416.P4150644227136434555
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189475 (n + 1)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt ((∑ j ∈ Finset.range (n + 1), f1 j - A189475 (n + 1) : ℤ) : ℝ)

end

end A358416.P4150644227136434555

/-!
# A358417: Indices of the triangular numbers in A189475.

The programs for A358417, there is no canonical definition to state claims against.
-/

/-! ## A358417.P1814610094455568459

`A232176(A358416(n+1))`
-/

namespace A358417.P1814610094455568459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232176 (A358416 (n + 1)).toNat

end

end A358417.P1814610094455568459

/-! ## A358417.P15163530570938288596

`A232176(sqrt(A036449(n+1)))`
-/

namespace A358417.P15163530570938288596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232176 (SequenceMachineLib.roundAway (Real.sqrt (A036449 (n + 1) : ℝ))).toNat

end

end A358417.P15163530570938288596

/-! ## A358417.P1033692435758927378

`A080098(A189475(n+1))`
-/

namespace A358417.P1033692435758927378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080098 (A189475 (n + 1)).toNat

end

end A358417.P1033692435758927378

/-!
# A358421: Primes that are the concatenation of two primes with the same number of digits.

The programs for A358421, there is no canonical definition to state claims against.
-/

/-! ## A358421.P16901735730753111366

`filter[A080906(1+n), A168046(#)]`
-/

namespace A358421.P16901735730753111366
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080906 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A168046 (f1 j).toNat = 1) n)

end

end A358421.P16901735730753111366

/-! ## A358421.P11391660779042022397

`filter[A080906(n+1), A209929(#)]`
-/

namespace A358421.P11391660779042022397
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080906 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A209929 (f1 j).toNat = 1) n)

end

end A358421.P11391660779042022397

/-! ## A358421.P167994530670215375

`∩[A061116(n+1), A080906(n+1)]`
-/

namespace A358421.P167994530670215375
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061116 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080906 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A358421.P167994530670215375

/-! ## A358421.P9025996741371867210

`∩[A080906(n+1), A392375(n+1)]`
-/

namespace A358421.P9025996741371867210
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080906 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392375 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A358421.P9025996741371867210

/-! ## A358421.P8906532741122777985

`record[A080906(n+1)%A359136(A173054(n+1))]`
-/

namespace A358421.P8906532741122777985
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A080906 (n + 1)) (A359136 (A173054 (n + 1)).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A358421.P8906532741122777985

/-!
# A358423: Numbers k such that A030717(k) = 5.

The programs for A358423, there is no canonical definition to state claims against.
-/

/-! ## A358423.P17843283629557046828

`eq[5, A030717(n+1)]+1`
-/

namespace A358423.P17843283629557046828
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030717 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A358423.P17843283629557046828

/-! ## A358423.P6073289674343884678

`eq[5, A030717(A028310(n))]`
-/

namespace A358423.P6073289674343884678
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030717 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A358423.P6073289674343884678

/-! ## A358423.P1502303350176607011

`A020725(eq[5, A030717(n+1)])`
-/

namespace A358423.P1502303350176607011
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030717 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A358423.P1502303350176607011

/-! ## A358423.P524128085473162555

`A065475(eq[5, A030717(n+1)])`
-/

namespace A358423.P524128085473162555
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030717 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A358423.P524128085473162555

/-! ## A358423.P9848906094411777546

`eq[5, A030717(A233583(n+1))]`
-/

namespace A358423.P9848906094411777546
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030717 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A358423.P9848906094411777546

/-!
# A358424: Numbers k such that A030717(k) = 6.

The programs for A358424, there is no canonical definition to state claims against.
-/

/-! ## A358424.P2121011663406570777

`eq[6, A030717(n+1)]+1`
-/

namespace A358424.P2121011663406570777
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030717 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A358424.P2121011663406570777

/-! ## A358424.P7145998849214236183

`eq[6, A030717(A028310(n))]`
-/

namespace A358424.P7145998849214236183
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030717 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A358424.P7145998849214236183

/-! ## A358424.P17768604005267666726

`A020725(eq[6, A030717(n+1)])`
-/

namespace A358424.P17768604005267666726
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030717 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A358424.P17768604005267666726

/-! ## A358424.P17830552931206629522

`A065475(eq[6, A030717(n+1)])`
-/

namespace A358424.P17830552931206629522
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030717 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A358424.P17830552931206629522

/-! ## A358424.P15784098205711511401

`eq[6, A030717(A233583(n+1))]`
-/

namespace A358424.P15784098205711511401
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030717 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A358424.P15784098205711511401

/-!
# A358425: Numbers k such that A030717(k) = 7.

The programs for A358425, there is no canonical definition to state claims against.
-/

/-! ## A358425.P332750755157360999

`eq[7, A030717(n+1)]+1`
-/

namespace A358425.P332750755157360999
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030717 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A358425.P332750755157360999

/-! ## A358425.P4683329946746399276

`A020725(eq[7, A030717(n+1)])`
-/

namespace A358425.P4683329946746399276
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030717 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A358425.P4683329946746399276

/-! ## A358425.P9642202971946375103

`A065475(eq[7, A030717(n+1)])`
-/

namespace A358425.P9642202971946375103
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030717 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A358425.P9642202971946375103

/-!
# A358426: a(n) is the least prime p such that (p^2 - 6)/5^n is prime.

The programs for A358426, there is no canonical definition to state claims against.
-/

/-! ## A358426.P2642644620765219436

`A085379(A085390(n+2)+A005117(2*n+1))`
-/

namespace A358426.P2642644620765219436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085379 (A085390 (n + 2) + A005117 (2 * n + 1)).toNat

end

end A358426.P2642644620765219436

/-!
# A358427: a(n) is the least prime p such that there are exactly n primes q with the same number of digits as p such that the concatenations p|q and q|p are prime, or 0 if there is no such p.

The programs for A358427, there is no canonical definition to state claims against.
-/

/-! ## A358427.P4466150469848405706

`A037126(A118969(n)+A061038(n+2))`
-/

namespace A358427.P4466150469848405706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037126 (A118969 n + A061038 (n + 2)).toNat

end

end A358427.P4466150469848405706

/-! ## A358427.P5962681238227908108

`A239585(A083396(n+1)^A339695(n))`
-/

namespace A358427.P5962681238227908108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239585 (SequenceMachineLib.roundAway ((A083396 (n + 1) : ℚ) ^ (A339695 n : ℤ))).toNat

end

end A358427.P5962681238227908108

/-!
# A358428: Numbers k such that k^2 + 1, k^2 + 2 and k^2 + 3 are all squarefree.

The programs for A358428, there is no canonical definition to state claims against.
-/

/-! ## A358428.P9821808564922059359

`sqrt(∩[A007675(n+1)-1, (n+1)²])`
-/

namespace A358428.P9821808564922059359
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007675 (n + 1) - 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

open Classical in
def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n : ℝ)

end

end A358428.P9821808564922059359

/-! ## A358428.P9246183207384245263

`filter[A335962(n+1), A400697(#)]`
-/

namespace A358428.P9246183207384245263
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335962 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A400697 (f1 j).toNat = 1) n)

end

end A358428.P9246183207384245263

/-! ## A358428.P13985168511165164462

`A063655(∩[(n+1)², A370600(n+1)])`
-/

namespace A358428.P13985168511165164462
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370600 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063655 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A358428.P13985168511165164462

/-! ## A358428.P1095587576913025656

`∑[A049296(A130319(∑[n+1]²+2))]`
-/

namespace A358428.P1095587576913025656
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049296 (A130319 ((∑ j ∈ Finset.range (n + 1), f2 j) ^ 2 + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A358428.P1095587576913025656

/-! ## A358428.P4039915397492334992

`lt[A040001(A235001(2*n+5)), A040001(n)]`
-/

namespace A358428.P4039915397492334992
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040001 (A235001 (2 * n + 5)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040001 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A358428.P4039915397492334992

/-!
# A358431: a(0) = 1; a(n+1) = 1 if a(n) > n, otherwise a(n+1) = a(n) + a(a(n)).

The programs for A358431, the canonical program `A358431.P3428204994635506580` is in `Seq.B000.C046`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A358431 has offset 0).

The definition of A358431 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A358431.P3428204994635506580

`gcd(a(n-1)+a(a(n-1)%n), floor(a(n-1)/n))` with `a(0)=1`

The canonical program, it is in `Seq.B000.C046`.
-/

namespace A358431

/-- `gcd(a(n-1)+a(a(n-1)%n), floor(a(n-1)/n))` -/
def P3428204994635506580.Spec : Prop :=
  ∀ n, (P3428204994635506580.a n : ℤ) = A358431 n

theorem P3428204994635506580.correct : P3428204994635506580.Spec := by
  intro n
  simp only [A358431]

end A358431

/-! ## A358431.P4838133172099985564

`A062039(A007953(n)%A399136(n+1))`
-/

namespace A358431.P4838133172099985564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062039 (Int.tmod (A007953 n) (A399136 (n + 1))).toNat

end

end A358431.P4838133172099985564

namespace A358431

/-- `A062039(A007953(n)%A399136(n+1))` -/
def P4838133172099985564.Spec : Prop :=
  ∀ n, P4838133172099985564.a n = A358431 n

end A358431

/-! ## A358431.P13552033398962029868

`A062039(A007953(n))%A220248(3*n+4)`
-/

namespace A358431.P13552033398962029868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A062039 (A007953 n).toNat) (A220248 (3 * n + 4))

end

end A358431.P13552033398962029868

namespace A358431

/-- `A062039(A007953(n))%A220248(3*n+4)` -/
def P13552033398962029868.Spec : Prop :=
  ∀ n, P13552033398962029868.a n = A358431 n

end A358431

/-! ## A358431.P10183110338805855451

`A062039(A007953(n)%A397170(n+1))`
-/

namespace A358431.P10183110338805855451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062039 (Int.tmod (A007953 n) (A397170 (n + 1))).toNat

end

end A358431.P10183110338805855451

namespace A358431

/-- `A062039(A007953(n)%A397170(n+1))` -/
def P10183110338805855451.Spec : Prop :=
  ∀ n, P10183110338805855451.a n = A358431 n

end A358431

/-! ## A358431.P7138209705804999655

`A062039(A185284(3*(n+1))+A139281(n))`
-/

namespace A358431.P7138209705804999655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062039 (A185284 (3 * (n + 1)) + A139281 n).toNat

end

end A358431.P7138209705804999655

namespace A358431

/-- `A062039(A185284(3*(n+1))+A139281(n))` -/
def P7138209705804999655.Spec : Prop :=
  ∀ n, P7138209705804999655.a n = A358431 n

end A358431

/-!
# A358432: Nonnegative integers m which can be represented using only 0's and 1's in the complex base 1+i, i.e., m = c(0) + c(1)*(1+i) + c(2)*(1+i)^2 + ... where each coefficient c(k) is either 0 or 1.

The programs for A358432, there is no canonical definition to state claims against.
-/

/-! ## A358432.P5977458432384519774

`lt[A095190(n), A055229(A095161(2*n))]`
-/

namespace A358432.P5977458432384519774
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095190 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055229 (A095161 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A358432.P5977458432384519774

/-!
# A358434: Number of odd middle divisors of n, where "middle divisor" means a divisor in the half-open interval [sqrt(n/2), sqrt(n*2)).

The programs for A358434, there is no canonical definition to state claims against.
-/

/-! ## A358434.P11243480277690843320

`A067742(n+1)-A361561(n+1)`
-/

namespace A358434.P11243480277690843320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067742 (n + 1) - A361561 (n + 1)

end

end A358434.P11243480277690843320

/-! ## A358434.P58628873198104945

`A005136(A361824(n+1))`
-/

namespace A358434.P58628873198104945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005136 (A361824 (n + 1)).toNat

end

end A358434.P58628873198104945

/-! ## A358434.P13328854513882680424

`floor(A361824(n+1)/A033676(n+1))`
-/

namespace A358434.P13328854513882680424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A361824 (n + 1) : ℚ) / (A033676 (n + 1) : ℚ)⌋

end

end A358434.P13328854513882680424

/-! ## A358434.P11445901884664248361

`A348406(n+1)-(A361561(n+1)+1)`
-/

namespace A358434.P11445901884664248361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348406 (n + 1) - (A361561 (n + 1) + 1)

end

end A358434.P11445901884664248361

/-! ## A358434.P12800363825171650931

`A029837(A348406(n+1)-A361561(n+1))`
-/

namespace A358434.P12800363825171650931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029837 (A348406 (n + 1) - A361561 (n + 1)).toNat

end

end A358434.P12800363825171650931

/-! ## A358434.P11695320050905988898

`A049084(A348406(n+1)-A361561(n+1))`
-/

namespace A358434.P11695320050905988898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049084 (A348406 (n + 1) - A361561 (n + 1)).toNat

end

end A358434.P11695320050905988898

/-! ## A358434.P1289331455151719321

`A134451(A361824(n+1)/A134451(2*n+3))`
-/

namespace A358434.P1289331455151719321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134451 (SequenceMachineLib.roundAway ((A361824 (n + 1) : ℚ) / (A134451 (2 * n + 3) : ℚ))).toNat

end

end A358434.P1289331455151719321

/-! ## A358434.P12188045939901710245

`A000005(n+1)-(A361561(n+1)+A067743(n+1))`
-/

namespace A358434.P12188045939901710245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) - (A361561 (n + 1) + A067743 (n + 1))

end

end A358434.P12188045939901710245

/-! ## A358434.P8217313123964111653

`2*A082647(n+1)-A001227(n+1)-A361561(n+1)`
-/

namespace A358434.P8217313123964111653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A082647 (n + 1) - A001227 (n + 1) - A361561 (n + 1)

end

end A358434.P8217313123964111653

/-! ## A358434.P2755695002361741697

`A005843(A082647(n+1))-A001227(n+1)-A361561(n+1)`
-/

namespace A358434.P2755695002361741697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A082647 (n + 1)).toNat - A001227 (n + 1) - A361561 (n + 1)

end

end A358434.P2755695002361741697

/-!
# A358435: Row sums of the triangular array A357498.

The programs for A358435, there is no canonical definition to state claims against.
-/

/-! ## A358435.P3346496909726707914

`A335467(A057562(n+1)+A007437(n+1))`
-/

namespace A358435.P3346496909726707914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335467 (A057562 (n + 1) + A007437 (n + 1)).toNat

end

end A358435.P3346496909726707914

/-!
# A358436: a(n) = Sum_{j=0..n} C(n)*C(n-j), where C(n) is the n-th Catalan number.

The programs for A358436, there is no canonical definition to state claims against.
-/

/-! ## A358436.P14955498433335620908

`C(2*n, n)/(n+1)*∑[C(2*n, n)/(n+1)]`
-/

namespace A358436.P14955498433335620908
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose (2 * n) n : ℚ) / (n + 1 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose (2 * n) n : ℚ) / (n + 1 : ℚ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A358436.P14955498433335620908

/-! ## A358436.P7700021186711420319

`(C(2*n, n)/(1+n))²+(4-6/(n+1))*a(n-1)` with `a(0)=1`
-/

namespace A358436.P7700021186711420319
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  ((Nat.choose (2 * n) n : ℚ) / (1 + n : ℚ)) ^ 2 + (4 - 6 / (n + 1 : ℚ)) * a (n - 1)

end

end A358436.P7700021186711420319

/-! ## A358436.P12705390575097355491

`C(2*n, n)/(n+1)*A014137(n)`
-/

namespace A358436.P12705390575097355491
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose (2 * n) n : ℚ) / (n + 1 : ℚ) * (A014137 n : ℚ)

end

end A358436.P12705390575097355491

/-! ## A358436.P10675724548983138811

`C(2*n, n)/(n+1)*∑[A000108(n)]`
-/

namespace A358436.P10675724548983138811
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose (2 * n) n : ℚ) / (n + 1 : ℚ) * ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ)

end

end A358436.P10675724548983138811

/-! ## A358436.P11802777033055418450

`C(2*n, n)/(n+1)*∑[abs(A168491(n))]`
-/

namespace A358436.P11802777033055418450
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A168491 n|

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose (2 * n) n : ℚ) / (n + 1 : ℚ) * ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ)

end

end A358436.P11802777033055418450

/-! ## A358436.P436266247181397242

`C(2*n, n)/(n+1)*∑[A028303(2*n)]`
-/

namespace A358436.P436266247181397242
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028303 (2 * n)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose (2 * n) n : ℚ) / (n + 1 : ℚ) * ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ)

end

end A358436.P436266247181397242

/-! ## A358436.P10539243840107796877

`∑[C(2*n, n)/(n+1)]*A126324(2*n)`
-/

namespace A358436.P10539243840107796877
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose (2 * n) n : ℚ) / (n + 1 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * (A126324 (2 * n) : ℚ)

end

end A358436.P10539243840107796877

/-! ## A358436.P3201344500138697326

`C(2*n, n)/(n+1)*∑[A208355(2*n)]`
-/

namespace A358436.P3201344500138697326
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208355 (2 * n)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose (2 * n) n : ℚ) / (n + 1 : ℚ) * ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ)

end

end A358436.P3201344500138697326

/-! ## A358436.P10833043894296583400

`A001246(n)+(4-6/(n+1))*a(n-1)` with `a(0)=1`
-/

namespace A358436.P10833043894296583400
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (A001246 n : ℚ) + (4 - 6 / (n + 1 : ℚ)) * a (n - 1)

end

end A358436.P10833043894296583400

/-! ## A358436.P352186235962841549

`∑{#}[n, C(n, #)²]/(n+1)*∑[A120588(n+1)]`
-/

namespace A358436.P352186235962841549
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120588 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ k ∈ Finset.range (f1 n + 1), Nat.choose n k ^ 2 : ℕ) : ℚ) / (n + 1 : ℚ) * ((∑ j ∈ Finset.range (n + 1), f2 j : ℤ) : ℚ)

end

end A358436.P352186235962841549

/-!
# A358437: a(n) = Sum_{j=0..n} binomial(n, j)*C(n)*C(n-j), where C(n) is the n-th Catalan number.

The programs for A358437, there is no canonical definition to state claims against.
-/

/-! ## A358437.P3174480655121711942

`∑{#}[floor(n/2), ((n-2*#+1)*C(n, n-#)/(n-#+1))²]*A181768(n+1)`
-/

namespace A358437.P3174480655121711942
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 2⌋

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (∑ k ∈ Finset.range (f1 n + 1).toNat, ((((n : ℤ) - (2 * k : ℤ) + 1) * (Nat.choose n ((n : ℤ) - (k : ℤ)).toNat : ℤ) : ℚ) / ((n : ℤ) - (k : ℤ) + 1 : ℚ)) ^ 2) * (A181768 (n + 1) : ℚ)

end

end A358437.P3174480655121711942

/-! ## A358437.P325633427604480590

`∑[A002212(n)]*A000108(n)`
-/

namespace A358437.P325633427604480590
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002212 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A000108 n

end

end A358437.P325633427604480590

/-! ## A358437.P2926955522959216677

`A000108(n)*A399000(∑[n])`
-/

namespace A358437.P2926955522959216677
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n * A399000 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A358437.P2926955522959216677

/-! ## A358437.P7514790264796312665

`record[A104259(n)]*A000108(n)`
-/

namespace A358437.P7514790264796312665
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104259 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A000108 n

end

end A358437.P7514790264796312665

/-! ## A358437.P8800176819367271536

`record[A106534(n)]*A000108(n)`
-/

namespace A358437.P8800176819367271536
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106534 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A000108 n

end

end A358437.P8800176819367271536

/-! ## A358437.P10304931285188992551

`record[A399000(n)]*A000108(n)`
-/

namespace A358437.P10304931285188992551
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A399000 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A000108 n

end

end A358437.P10304931285188992551

/-! ## A358437.P443511656762292627

`A000108(n)*A007317(n+1)`
-/

namespace A358437.P443511656762292627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n * A007317 (n + 1)

end

end A358437.P443511656762292627

/-! ## A358437.P16972365360001415640

`A000108(n)*A181768(n+1)`
-/

namespace A358437.P16972365360001415640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n * A181768 (n + 1)

end

end A358437.P16972365360001415640

/-! ## A358437.P3634360322150227657

`abs(A007317(n+1)*A168491(n))`
-/

namespace A358437.P3634360322150227657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A007317 (n + 1) * A168491 n|

end

end A358437.P3634360322150227657

/-! ## A358437.P18193941167377715550

`abs(A168491(n)*A181768(n+1))`
-/

namespace A358437.P18193941167377715550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A168491 n * A181768 (n + 1)|

end

end A358437.P18193941167377715550

/-!
# A358439: Number of even digits necessary to write all positive n-digit integers.

The programs for A358439, the canonical program `A358439.P8968470756118435359` is in `Seq.B000.C046`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A358439 has offset 1).

The definition of A358439 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A358439.P1171873985406374636

`ogf((4+5x)/(1-20x+100x^2))`
-/

namespace A358439.P1171873985406374636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [4, 5] [1, -20, 100] n

end

end A358439.P1171873985406374636

namespace A358439

/-- `ogf((4+5x)/(1-20x+100x^2))` -/
def P1171873985406374636.Spec : Prop :=
  ∀ n, P1171873985406374636.a n = A358439 (n + 1)

end A358439

/-! ## A358439.P342243084746060071

`5*(9*(n+1)-1)*10^(n-1)`
-/

namespace A358439.P342243084746060071
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (5 * ((9 * (n + 1) : ℤ) - 1) : ℚ) * (10 : ℚ) ^ ((n : ℤ) - 1 : ℤ)

end

end A358439.P342243084746060071

namespace A358439

/-- `5*(9*(n+1)-1)*10^(n-1)` -/
def P342243084746060071.Spec : Prop :=
  ∀ n, P342243084746060071.a n = (A358439 (n + 1) : ℚ)

theorem P342243084746060071.correct : P342243084746060071.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A358439, Nat.add_sub_cancel, A358439.P342243084746060071.a, A358439.P8968470756118435359.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A358439, Nat.add_sub_cancel, A358439.P342243084746060071.a, A358439.P8968470756118435359.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1)

end A358439

/-! ## A358439.P8968470756118435359

`20*a(n-1)-100*a(n-2)` with `a(0)=4, a(1)=85`

The canonical program, it is in `Seq.B000.C046`.
-/

namespace A358439

/-- `20*a(n-1)-100*a(n-2)` -/
def P8968470756118435359.Spec : Prop :=
  ∀ n, P8968470756118435359.a n = A358439 (n + 1)

theorem P8968470756118435359.correct : P8968470756118435359.Spec := by
  intro n
  simp only [A358439, Nat.add_sub_cancel]

end A358439

/-! ## A358439.P459327217994607545

`((n+1)*Δ[10^n])%Δ[n/2*10^n]`
-/

namespace A358439.P459327217994607545
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10 ^ n

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / 2 * (10 ^ n : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((n + 1 : ℤ) * ((f1 (n + 1) : ℤ) - (f1 n : ℤ))) (SequenceMachineLib.roundAway (f2 (n + 1) - f2 n))

end

end A358439.P459327217994607545

namespace A358439

/-- `((n+1)*Δ[10^n])%Δ[n/2*10^n]` -/
def P459327217994607545.Spec : Prop :=
  ∀ n, P459327217994607545.a n = A358439 (n + 1)

end A358439

/-! ## A358439.P44600679123839312

`A359271(n+1)-10^n`
-/

namespace A358439.P44600679123839312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359271 (n + 1) - (10 ^ n : ℤ)

end

end A358439.P44600679123839312

namespace A358439

/-- `A359271(n+1)-10^n` -/
def P44600679123839312.Spec : Prop :=
  ∀ n, P44600679123839312.a n = A358439 (n + 1)

end A358439

/-! ## A358439.P13197305406569910107

`A137233(n+1)+10*a(n-1)` with `a(0)=4`
-/

namespace A358439.P13197305406569910107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4] fun n a =>
  A137233 (n + 1) + 10 * a (n - 1)

end

end A358439.P13197305406569910107

namespace A358439

/-- `A137233(n+1)+10*a(n-1)` -/
def P13197305406569910107.Spec : Prop :=
  ∀ n, P13197305406569910107.a n = A358439 (n + 1)

end A358439

/-! ## A358439.P7108770961758132049

`A212704(n+1)-A359271(n+1)`
-/

namespace A358439.P7108770961758132049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212704 (n + 1) - A359271 (n + 1)

end

end A358439.P7108770961758132049

namespace A358439

/-- `A212704(n+1)-A359271(n+1)` -/
def P7108770961758132049.Spec : Prop :=
  ∀ n, P7108770961758132049.a n = A358439 (n + 1)

end A358439

/-!
# A358440: a(n) is the largest prime that divides any two successive terms of the sequence b(m) = m^2 + n with m >= 1.

The programs for A358440, the canonical program `A358440.P1988106012523245801` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A358440 has offset 1).

The definition of A358440 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A358440.P1988106012523245801

`A006530(4*n+5)`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A358440

/-- `A006530(4*n+5)` -/
def P1988106012523245801.Spec : Prop :=
  ∀ n, P1988106012523245801.a n = A358440 (n + 1)

theorem P1988106012523245801.correct : P1988106012523245801.Spec := by
  intro n
  simp only [A358440, Nat.add_sub_cancel]

end A358440

/-! ## A358440.P13702378598968223675

`or(1, A006530(record[xor(3, n)]+2))`
-/

namespace A358440.P13702378598968223675
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 3 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A006530 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 2))

end

end A358440.P13702378598968223675

namespace A358440

/-- `or(1, A006530(record[xor(3, n)]+2))` -/
def P13702378598968223675.Spec : Prop :=
  ∀ n, P13702378598968223675.a n = A358440 (n + 1)

end A358440

/-! ## A358440.P5524813199625226248

`p?[A006530(A016777(n)+n)]`
-/

namespace A358440.P5524813199625226248
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A016777 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A358440.P5524813199625226248

namespace A358440

/-- `p?[A006530(A016777(n)+n)]` -/
def P5524813199625226248.Spec : Prop :=
  ∀ n, P5524813199625226248.a n = A358440 (n + 1)

end A358440

/-! ## A358440.P13390128666097071517

`A076567(Δ[n²])`
-/

namespace A358440.P13390128666097071517
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076567 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A358440.P13390128666097071517

namespace A358440

/-- `A076567(Δ[n²])` -/
def P13390128666097071517.Spec : Prop :=
  ∀ n, P13390128666097071517.a n = A358440 (n + 1)

end A358440

/-! ## A358440.P7703482639250627490

`A076565(2*(n+1))`
-/

namespace A358440.P7703482639250627490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076565 (2 * (n + 1))

end

end A358440.P7703482639250627490

namespace A358440

/-- `A076565(2*(n+1))` -/
def P7703482639250627490.Spec : Prop :=
  ∀ n, P7703482639250627490.a n = A358440 (n + 1)

end A358440

/-! ## A358440.P2726334363344827675

`A076566(4*(n+1))`
-/

namespace A358440.P2726334363344827675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076566 (4 * (n + 1))

end

end A358440.P2726334363344827675

namespace A358440

/-- `A076566(4*(n+1))` -/
def P2726334363344827675.Spec : Prop :=
  ∀ n, P2726334363344827675.a n = A358440 (n + 1)

end A358440

/-! ## A358440.P1014790199662172396

`A076569(A016969(n))`
-/

namespace A358440.P1014790199662172396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076569 (A016969 n).toNat

end

end A358440.P1014790199662172396

namespace A358440

/-- `A076569(A016969(n))` -/
def P1014790199662172396.Spec : Prop :=
  ∀ n, P1014790199662172396.a n = A358440 (n + 1)

end A358440

/-! ## A358440.P5229603270096621325

`A076569(A016945(n)+2)`
-/

namespace A358440.P5229603270096621325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076569 (A016945 n + 2).toNat

end

end A358440.P5229603270096621325

namespace A358440

/-- `A076569(A016945(n)+2)` -/
def P5229603270096621325.Spec : Prop :=
  ∀ n, P5229603270096621325.a n = A358440 (n + 1)

end A358440

/-! ## A358440.P4698061698964698081

`A076569(A008588(n+1)-1)`
-/

namespace A358440.P4698061698964698081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076569 (A008588 (n + 1) - 1).toNat

end

end A358440.P4698061698964698081

namespace A358440

/-- `A076569(A008588(n+1)-1)` -/
def P4698061698964698081.Spec : Prop :=
  ∀ n, P4698061698964698081.a n = A358440 (n + 1)

end A358440

/-! ## A358440.P17966935459055843063

`A085392(6+4*Δ[n²])`
-/

namespace A358440.P17966935459055843063
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085392 (6 + 4 * ((f1 (n + 1) : ℤ) - (f1 n : ℤ))).toNat

end

end A358440.P17966935459055843063

namespace A358440

/-- `A085392(6+4*Δ[n²])` -/
def P17966935459055843063.Spec : Prop :=
  ∀ n, P17966935459055843063.a n = A358440 (n + 1)

end A358440

/-! ## A358440.P11010271607753375044

`A076569(A345339(n))`
-/

namespace A358440.P11010271607753375044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076569 (A345339 n).toNat

end

end A358440.P11010271607753375044

namespace A358440

/-- `A076569(A345339(n))` -/
def P11010271607753375044.Spec : Prop :=
  ∀ n, P11010271607753375044.a n = A358440 (n + 1)

end A358440

/-!
# A358441: Indices of records in A266798.

The programs for A358441, there is no canonical definition to state claims against.
-/

/-! ## A358441.P6042126540558608818

`A054899(A007088(comp[a(n-2)+7]+n))` with `a(0)=4, a(1)=1, a(2)=6`
-/

namespace A358441.P6042126540558608818
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [4, 1, 6] fun n f1 =>
  f1 (n - 2) + 7

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054899 (A007088 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + n)).toNat

end

end A358441.P6042126540558608818

/-!
# A358442: Records in A266798.

The programs for A358442, there is no canonical definition to state claims against.
-/

/-! ## A358442.P16745072188348654879

`record[A266798(n)]`
-/

namespace A358442.P16745072188348654879
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266798 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A358442.P16745072188348654879

/-! ## A358442.P5745040355986119036

`A266798(A358441(n+1))`
-/

namespace A358442.P5745040355986119036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266798 (A358441 (n + 1)).toNat

end

end A358442.P5745040355986119036

/-!
# A358443: a(1) = 1. After each newly determined a(n-1), cross out every n-th number in the line of the positive integers. a(n) will be the smallest unused number that has not been crossed out.

The programs for A358443, there is no canonical definition to state claims against.
-/

/-! ## A358443.P9738333989989002937

`filter[A244052(n+1), A385395(#)]`
-/

namespace A358443.P9738333989989002937
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244052 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A385395 (f1 j).toNat = 1) n)

end

end A358443.P9738333989989002937

/-! ## A358443.P17688742768568664660

`filter[A324059(n+1), A385395(#)]`
-/

namespace A358443.P17688742768568664660
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324059 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A385395 (f1 j).toNat = 1) n)

end

end A358443.P17688742768568664660

/-! ## A358443.P4631581700716192232

`∩[A002093(n+1), A191200(n+1)]`
-/

namespace A358443.P4631581700716192232
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002093 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191200 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A358443.P4631581700716192232

/-! ## A358443.P7202227899963415568

`∩[A002093(n+1), A350396(n+1)]`
-/

namespace A358443.P7202227899963415568
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002093 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350396 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A358443.P7202227899963415568

/-! ## A358443.P6449360372662219281

`∩[A181312(n+1), A184333(n+1)]`
-/

namespace A358443.P6449360372662219281
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181312 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184333 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A358443.P6449360372662219281

/-!
# A358446: a(n) = n! * Sum_{k=0..floor(n/2)} 1/binomial(n-k, k).

The programs for A358446, the canonical program `A358446.P1255374716539650774` is in `Seq.B000.C046`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A358446 has offset 0).

The definition of A358446 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A358446.P1255374716539650774

`n!*∑{#}[floor(n/2), 1/C(n-#, #)]`

The canonical program, it is in `Seq.B000.C046`.
-/

namespace A358446

/-- `n!*∑{#}[floor(n/2), 1/C(n-#, #)]` -/
def P1255374716539650774.Spec : Prop :=
  ∀ n, P1255374716539650774.a n = (A358446 n : ℚ)

end A358446

/-! ## A358446.P7899465778182743695

`A025562(n)*A025563(n)`
-/

namespace A358446.P7899465778182743695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025562 n * A025563 n

end

end A358446.P7899465778182743695

namespace A358446

/-- `A025562(n)*A025563(n)` -/
def P7899465778182743695.Spec : Prop :=
  ∀ n, P7899465778182743695.a n = A358446 n

end A358446

/-!
# A358447: Numbers k such that there exist primes p, q, r, s with k = p + q = r + s = p*q - r*s.

The programs for A358447, there is no canonical definition to state claims against.
-/

/-! ## A358447.P7809149762187608897

`A160410(A301337(3*(n+1)))-A160410(n)`
-/

namespace A358447.P7809149762187608897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160410 (A301337 (3 * (n + 1))).toNat - A160410 n

end

end A358447.P7809149762187608897

/-! ## A358447.P9428064280357519805

`A320126(A033293(n+1)+A006075(3*n+5))`
-/

namespace A358447.P9428064280357519805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320126 (A033293 (n + 1) + A006075 (3 * n + 5)).toNat

end

end A358447.P9428064280357519805

/-!
# A358448: Indices of record values of A036450(n) = d(d(d(n))).

The programs for A358448, there is no canonical definition to state claims against.
-/

/-! ## A358448.P1809077832871399160

`A356078(A007910(n))`
-/

namespace A358448.P1809077832871399160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356078 (A007910 n).toNat

end

end A358448.P1809077832871399160

/-! ## A358448.P3907961559522548827

`A189394(record[A357487(n)])`
-/

namespace A358448.P3907961559522548827
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357487 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189394 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A358448.P3907961559522548827

/-!
# A358451: Inverse Euler transform of the Riordan numbers, (A005043).

The programs for A358451, there is no canonical definition to state claims against.
-/

/-! ## A358451.P264456790071105393

`A088022(n)-A014577(A088016(n))`
-/

namespace A358451.P264456790071105393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088022 n - A014577 (A088016 n).toNat

end

end A358451.P264456790071105393

/-! ## A358451.P9266983035955218182

`A168201(n*A154117(n))+floor(A122583(n+1)/5)`
-/

namespace A358451.P9266983035955218182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168201 ((n : ℤ) * A154117 n).toNat + ⌊(A122583 (n + 1) : ℚ) / 5⌋

end

end A358451.P9266983035955218182

/-!
# A358453: Number of transitive ordered rooted trees with n nodes.

The programs for A358453, there is no canonical definition to state claims against.
-/

/-! ## A358453.P2815422564255500394

`∑[A003056(A363881(n))]`
-/

namespace A358453.P2815422564255500394
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A363881 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A358453.P2815422564255500394

/-! ## A358453.P15702690578327200071

`A054404(A352818(n+1)+1)`
-/

namespace A358453.P15702690578327200071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054404 (A352818 (n + 1) + 1).toNat

end

end A358453.P15702690578327200071

/-! ## A358453.P293474183401302140

`round(record[A116407(n)]/A133263(n))`
-/

namespace A358453.P293474183401302140
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116407 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ) / (A133263 n : ℚ))

end

end A358453.P293474183401302140

/-! ## A358453.P6353618068790804491

`A243283(ceil(2*A000108(n)/3))`
-/

namespace A358453.P6353618068790804491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243283 ⌈2 * ((A000108 n : ℚ) / 3)⌉.toNat

end

end A358453.P6353618068790804491

/-! ## A358453.P8198475704317848328

`A137579(A006367(n))+A097724(∑[n])`
-/

namespace A358453.P8198475704317848328
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137579 (A006367 n).toNat + A097724 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A358453.P8198475704317848328

/-!
# A358454: Number of weakly transitive ordered rooted trees with n nodes.

The programs for A358454, there is no canonical definition to state claims against.
-/

/-! ## A358454.P16819295144591727788

`A157271(A182053(n))`
-/

namespace A358454.P16819295144591727788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157271 (A182053 n).toNat

end

end A358454.P16819295144591727788

/-! ## A358454.P17358413436187507107

`A359634(A123639(n+1)-A001222(n+1))`
-/

namespace A358454.P17358413436187507107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359634 (A123639 (n + 1) - A001222 (n + 1)).toNat

end

end A358454.P17358413436187507107

/-!
# A358455: Number of recursively anti-transitive ordered rooted trees with n nodes.

The programs for A358455, there is no canonical definition to state claims against.
-/

/-! ## A358455.P15306491211819007390

`A164020(A291683(n))`
-/

namespace A358455.P15306491211819007390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164020 (A291683 n).toNat

end

end A358455.P15306491211819007390

/-! ## A358455.P2859465496002978599

`A127757(A156043(n+1))`
-/

namespace A358455.P2859465496002978599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127757 (A156043 (n + 1)).toNat

end

end A358455.P2859465496002978599

/-! ## A358455.P12694230583404515272

`A356832(A004881(n+1))`
-/

namespace A358455.P12694230583404515272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356832 (A004881 (n + 1)).toNat

end

end A358455.P12694230583404515272

/-! ## A358455.P2896525734253204229

`A356832(A004892(n+1))`
-/

namespace A358455.P2896525734253204229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356832 (A004892 (n + 1)).toNat

end

end A358455.P2896525734253204229

/-! ## A358455.P10385936563766946325

`A356832(A004903(n+1))`
-/

namespace A358455.P10385936563766946325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356832 (A004903 (n + 1)).toNat

end

end A358455.P10385936563766946325

/-!
# A358456: Number of recursively bi-anti-transitive ordered rooted trees with n nodes.

The programs for A358456, there is no canonical definition to state claims against.
-/

/-! ## A358456.P403929843097880673

`A110266(A352864(n+1))+A090620(2*n)`
-/

namespace A358456.P403929843097880673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110266 (A352864 (n + 1)).toNat + A090620 (2 * n)

end

end A358456.P403929843097880673

/-! ## A358456.P1113283231659830860

`A328867(A032218(n+2))`
-/

namespace A358456.P1113283231659830860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328867 (A032218 (n + 2)).toNat

end

end A358456.P1113283231659830860

/-! ## A358456.P9757570034541064885

`A328867(A032305(n+2))`
-/

namespace A358456.P9757570034541064885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328867 (A032305 (n + 2)).toNat

end

end A358456.P9757570034541064885

/-! ## A358456.P14087818533832390643

`A328867(A038086(n+2))`
-/

namespace A358456.P14087818533832390643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328867 (A038086 (n + 2)).toNat

end

end A358456.P14087818533832390643

/-!
# A358459: Numbers k such that the k-th standard ordered rooted tree is balanced (counted by A007059).

The programs for A358459, there is no canonical definition to state claims against.
-/

/-! ## A358459.P9794706468220405911

`A358377(n+1)-A212172(A156581(n))`
-/

namespace A358459.P9794706468220405911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358377 (n + 1) - A212172 (A156581 n).toNat

end

end A358459.P9794706468220405911

/-! ## A358459.P832496772133787088

`lt[A008480(A014631(n+1)), A369029(n)]`
-/

namespace A358459.P832496772133787088
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008480 (A014631 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369029 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A358459.P832496772133787088

/-! ## A358459.P15871135283871167512

`lt[A250120(A342463(n)), A069893(n+1)]`
-/

namespace A358459.P15871135283871167512
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 (A342463 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069893 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A358459.P15871135283871167512

/-! ## A358459.P8983777822809440193

`A358377(n+1)-A106166(A001263(n+1))`
-/

namespace A358459.P8983777822809440193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358377 (n + 1) - A106166 (A001263 (n + 1)).toNat

end

end A358459.P8983777822809440193

/-! ## A358459.P6541809839571550204

`A358377(n+1)-A358480(A203346(n+1))`
-/

namespace A358459.P6541809839571550204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358377 (n + 1) - A358480 (A203346 (n + 1)).toNat

end

end A358459.P6541809839571550204

/-!
# A358460: Number of locally disjoint ordered rooted trees with n nodes.

The programs for A358460, there is no canonical definition to state claims against.
-/

/-! ## A358460.P6163841516676838579

`A260734(A320734(n))`
-/

namespace A358460.P6163841516676838579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260734 (A320734 n).toNat

end

end A358460.P6163841516676838579

/-! ## A358460.P5802114421482052081

`A099164(n-A354666(A075091(n)))`
-/

namespace A358460.P5802114421482052081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099164 ((n : ℤ) - A354666 (A075091 n).toNat).toNat

end

end A358460.P5802114421482052081

/-! ## A358460.P15913315013388581038

`A036765(n)-A326016(A167606(n))`
-/

namespace A358460.P15913315013388581038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036765 n - A326016 (A167606 n).toNat

end

end A358460.P15913315013388581038

/-! ## A358460.P13907834509594087144

`A277996(n+1)+A107846(A002494(n))`
-/

namespace A358460.P13907834509594087144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277996 (n + 1) + A107846 (A002494 n).toNat

end

end A358460.P13907834509594087144

/-!
# A358463: a(n) is the first average of a twin prime pair that is the sum of two distinct averages of twin prime pairs in exactly n ways.

The programs for A358463, there is no canonical definition to state claims against.
-/

/-! ## A358463.P14989428745594622029

`∑{d}[A129414(A069097(n+1)), #]`
-/

namespace A358463.P14989428745594622029
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129414 (A069097 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A358463.P14989428745594622029

/-!
# A358464: a(n) is the greatest m such that Sum_{k = 1..m} 1/(1 + n*k) <= 1.

The programs for A358464, there is no canonical definition to state claims against.
-/

/-! ## A358464.P12449876724217301154

`A182285(2^n)+A154327(2*n+1)`
-/

namespace A358464.P12449876724217301154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182285 (2 ^ n) + A154327 (2 * n + 1)

end

end A358464.P12449876724217301154

/-! ## A358464.P15078148709879907747

`A076283(A329899(n+1))+A025169(n)`
-/

namespace A358464.P15078148709879907747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076283 (A329899 (n + 1)).toNat + A025169 n

end

end A358464.P15078148709879907747

/-!
# A358465: Least area (doubled) of a triangle enclosing a circle of radius n such that the center of the circle and the vertices of the triangle all have integer coordinates.

The programs for A358465, there is no canonical definition to state claims against.
-/

/-! ## A358465.P7479561962080129400

`A357554(A063867(3*n+2))+A055436(n+1)`
-/

namespace A358465.P7479561962080129400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357554 (A063867 (3 * n + 2)).toNat + A055436 (n + 1)

end

end A358465.P7479561962080129400

/-!
# A358466: Number of 1's that appeared by n-th step when constructing A030717.

The programs for A358466, there is no canonical definition to state claims against.
-/

/-! ## A358466.P13453594689881380776

`∑[A358467(1+n)]`
-/

namespace A358466.P13453594689881380776
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358467 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A358466.P13453594689881380776

/-! ## A358466.P16377700988681456321

`A358467(n+1)+a(abs(A024000(n)))` with `a(0)=1`
-/

namespace A358466.P16377700988681456321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A358467 (n + 1) + a |A024000 n|.toNat

end

end A358466.P16377700988681456321

/-! ## A358466.P17363568079503523005

`A358467(n+1)+a(A000027(n+1)-2)` with `a(0)=1`
-/

namespace A358466.P17363568079503523005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A358467 (n + 1) + a (A000027 (n + 1) - 2).toNat

end

end A358466.P17363568079503523005

/-! ## A358466.P14333171035460088242

`A030717(A253170(n+2)+1)`
-/

namespace A358466.P14333171035460088242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030717 (A253170 (n + 2) + 1).toNat

end

end A358466.P14333171035460088242

/-! ## A358466.P8779734145866923349

`∑[A353377(A107788(n+4)+A039650(n+5))]`
-/

namespace A358466.P8779734145866923349
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353377 (A107788 (n + 4) + A039650 (n + 5)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A358466.P8779734145866923349

/-!
# A358467: Number of 1's that appeared in the n-th step when constructing A030717.

The programs for A358467, there is no canonical definition to state claims against.
-/

/-! ## A358467.P16346127003875795193

`Δ[∑{e}[A063759(2*n+1), A358466(#)]]`
-/

namespace A358467.P16346127003875795193
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063759 (2 * n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n).natAbs, A358466 (Nat.factorization (f2 n).natAbs p)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A358467.P16346127003875795193

/-! ## A358467.P8920167130966974460

`A000290(A000628(n))%A134625(n+4)`
-/

namespace A358467.P8920167130966974460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000290 (A000628 n).toNat) (A134625 (n + 4))

end

end A358467.P8920167130966974460

/-! ## A358467.P17332294375582099923

`A353377(A107788(n+4)+A039650(n+5))`
-/

namespace A358467.P17332294375582099923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353377 (A107788 (n + 4) + A039650 (n + 5)).toNat

end

end A358467.P17332294375582099923

/-! ## A358467.P8207795088334824675

`A331749(A071068(3*n+1)%A117250(3*n))`
-/

namespace A358467.P8207795088334824675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331749 (Int.tmod (A071068 (3 * n + 1)) (A117250 (3 * n))).toNat

end

end A358467.P8207795088334824675

/-! ## A358467.P3556531077929251193

`and(A290460(n+3), A316439(A189111(2*n+1)))`
-/

namespace A358467.P3556531077929251193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A290460 (n + 3)) (A316439 (A189111 (2 * n + 1)).toNat)

end

end A358467.P3556531077929251193

/-!
# A358468: Number of 2's that appeared by n-th step when constructing A030717.

The programs for A358468, there is no canonical definition to state claims against.
-/

/-! ## A358468.P4863837420715980896

`∑[A358469(n+1)]`
-/

namespace A358468.P4863837420715980896
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358469 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A358468.P4863837420715980896

/-! ## A358468.P11399270646092437299

`A358469(n+1)+a(A023443(n))` with `a(0)=0`
-/

namespace A358468.P11399270646092437299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A358469 (n + 1) + a (A023443 n).toNat

end

end A358468.P11399270646092437299

/-!
# A358469: Number of 2's that appeared in the n-th step when constructing A030717.

The programs for A358469, there is no canonical definition to state claims against.
-/

/-! ## A358469.P10957229106892148740

`Δ[A358468(abs(1-n)+1)]`
-/

namespace A358469.P10957229106892148740
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358468 (|1 - (n : ℤ)| + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A358469.P10957229106892148740

/-! ## A358469.P9055684635644396592

`A358468(n+1)-A358468(abs(1-n)+1)`
-/

namespace A358469.P9055684635644396592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358468 (n + 1) - A358468 (|1 - (n : ℤ)| + 1).toNat

end

end A358469.P9055684635644396592

/-!
# A358470: Number of 3's that appeared by n-th step when constructing A030717.

The programs for A358470, there is no canonical definition to state claims against.
-/

/-! ## A358470.P8462435074326785972

`∑[A358476(n+1)]`
-/

namespace A358470.P8462435074326785972
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358476 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A358470.P8462435074326785972

/-! ## A358470.P18248326695749594042

`∑[A333750(A093371(n+1)+A088275(n+1))]`
-/

namespace A358470.P18248326695749594042
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333750 (A093371 (n + 1) + A088275 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A358470.P18248326695749594042

/-!
# A358472: Number of 4's that appeared by n-th step when constructing A030717.

The programs for A358472, there is no canonical definition to state claims against.
-/

/-! ## A358472.P17005244020230279388

`∑[A358477(n+1)]`
-/

namespace A358472.P17005244020230279388
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358477 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A358472.P17005244020230279388

/-!
# A358473: Number of 5's that appeared by n-th step when constructing A030717.

The programs for A358473, there is no canonical definition to state claims against.
-/

/-! ## A358473.P812803630113797075

`∑[A358478(n+1)]`
-/

namespace A358473.P812803630113797075
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358478 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A358473.P812803630113797075

/-!
# A358474: Number of 6's that appeared by n-th step when constructing A030717.

The programs for A358474, there is no canonical definition to state claims against.
-/

/-! ## A358474.P14888779264351759526

`∑[A358479(1+n)]`
-/

namespace A358474.P14888779264351759526
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358479 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A358474.P14888779264351759526

/-! ## A358474.P16354622496793300471

`A358479(n+1)+a(n-1)` with `a(0)=0, a(1)=0, a(2)=0, a(3)=0`
-/

namespace A358474.P16354622496793300471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 0, 0] fun n a =>
  A358479 (n + 1) + a (n - 1)

end

end A358474.P16354622496793300471

/-!
# A358475: Number of 7's that appeared by n-th step when constructing A030717.

The programs for A358475, there is no canonical definition to state claims against.
-/

/-! ## A358475.P3986789275351200182

`∑[A358480(n+1)]`
-/

namespace A358475.P3986789275351200182
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358480 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A358475.P3986789275351200182

/-!
# A358476: Number of 3's that appeared in the n-th step when constructing A030717.

The programs for A358476, there is no canonical definition to state claims against.
-/

/-! ## A358476.P5382309544553893007

`Δ[A358470(abs(1-n)+1)]`
-/

namespace A358476.P5382309544553893007
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358470 (|1 - (n : ℤ)| + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A358476.P5382309544553893007

/-! ## A358476.P10694813112240440475

`A358470(n+1)-A358470(abs(1-n)+1)`
-/

namespace A358476.P10694813112240440475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358470 (n + 1) - A358470 (|1 - (n : ℤ)| + 1).toNat

end

end A358476.P10694813112240440475

/-! ## A358476.P4414787299813226419

`A123736(n+3)%A108041(A327516(n))`
-/

namespace A358476.P4414787299813226419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A123736 (n + 3)) (A108041 (A327516 n).toNat)

end

end A358476.P4414787299813226419

/-! ## A358476.P15337458325201673771

`A333750(A093371(n+1)+A088275(n+1))`
-/

namespace A358476.P15337458325201673771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333750 (A093371 (n + 1) + A088275 (n + 1)).toNat

end

end A358476.P15337458325201673771

/-!
# A358477: Number of 4's that appeared in the n-th step when constructing A030717.

The programs for A358477, there is no canonical definition to state claims against.
-/

/-! ## A358477.P13769766446480846296

`Δ[A358472(A028310(n))]`
-/

namespace A358477.P13769766446480846296
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358472 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A358477.P13769766446480846296

/-! ## A358477.P12135390363501925607

`Δ[A358472(A000007(n)+n)]`
-/

namespace A358477.P12135390363501925607
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358472 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A358477.P12135390363501925607

/-! ## A358477.P10479930301360437346

`Δ[A358472(A000038(n)+n)]`
-/

namespace A358477.P10479930301360437346
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358472 (A000038 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A358477.P10479930301360437346

/-! ## A358477.P949062518132315914

`Δ[A358472(char[A075949(n)]+n)]`
-/

namespace A358477.P949062518132315914
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075949 n

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358472 ((if ∃ j, f2 j = (n : ℤ) then 1 else 0) + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A358477.P949062518132315914

/-! ## A358477.P7115468836119198163

`Δ[A358472(A036987(2*n)+n)]`
-/

namespace A358477.P7115468836119198163
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358472 (A036987 (2 * n) + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A358477.P7115468836119198163

/-! ## A358477.P4785077384647903708

`Δ[A358472(floor(A316342(n)/2)+n)]`
-/

namespace A358477.P4785077384647903708
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358472 (⌊(A316342 n : ℚ) / 2⌋ + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A358477.P4785077384647903708

/-! ## A358477.P13669321170406051857

`A358472(n+1)-A358472(A028310(n))`
-/

namespace A358477.P13669321170406051857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358472 (n + 1) - A358472 (A028310 n).toNat

end

end A358477.P13669321170406051857

/-!
# A358478: Number of 5's that appeared in the n-th step when constructing A030717.

The programs for A358478, there is no canonical definition to state claims against.
-/

/-! ## A358478.P1442558965465358907

`Δ[A358473(A028310(n))]`
-/

namespace A358478.P1442558965465358907
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358473 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A358478.P1442558965465358907

/-! ## A358478.P1750083161416968660

`Δ[A358473(A233583(1+n))]`
-/

namespace A358478.P1750083161416968660
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358473 (A233583 (1 + n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A358478.P1750083161416968660

/-! ## A358478.P8912060508688044418

`Δ[A358473(A000007(n)+n)]`
-/

namespace A358478.P8912060508688044418
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358473 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A358478.P8912060508688044418

/-! ## A358478.P5882857506172261685

`Δ[A358473(A008619(comp[2*n+3]))]`
-/

namespace A358478.P5882857506172261685
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 3

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358473 (A008619 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A358478.P5882857506172261685

/-! ## A358478.P12417300745560917353

`Δ[A358473(A034188(3*n+2)+n)]`
-/

namespace A358478.P12417300745560917353
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358473 (A034188 (3 * n + 2) + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A358478.P12417300745560917353

/-! ## A358478.P2358622732269085113

`A358473(n+1)-A358473(A028310(n))`
-/

namespace A358478.P2358622732269085113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358473 (n + 1) - A358473 (A028310 n).toNat

end

end A358478.P2358622732269085113

/-! ## A358478.P9913034273764024714

`A358473(n+1)-A358473(A233583(n+1))`
-/

namespace A358478.P9913034273764024714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358473 (n + 1) - A358473 (A233583 (n + 1)).toNat

end

end A358478.P9913034273764024714

/-! ## A358478.P4589592427828741877

`A358473(n+1)-A358473(A000007(n)+n)`
-/

namespace A358478.P4589592427828741877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358473 (n + 1) - A358473 (A000007 n + (n : ℤ)).toNat

end

end A358478.P4589592427828741877

/-!
# A358479: Number of 6's that appeared in the n-th step when constructing A030717.

The programs for A358479, there is no canonical definition to state claims against.
-/

/-! ## A358479.P4903165432297064906

`Δ[A358474(round(acot(n)+n))]`
-/

namespace A358479.P4903165432297064906
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358474 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A358479.P4903165432297064906

/-! ## A358479.P4506774367376668145

`Δ[A358474(abs(1-n)+1)]`
-/

namespace A358479.P4506774367376668145
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358474 (|1 - (n : ℤ)| + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A358479.P4506774367376668145

/-! ## A358479.P2986763972043366442

`abs(Δ[A358474(A028310(n))])`
-/

namespace A358479.P2986763972043366442
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358474 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A358479.P2986763972043366442

/-! ## A358479.P1242812624093025620

`dr(Δ[A358474(A000038(n)²+n)])`
-/

namespace A358479.P1242812624093025620
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358474 (A000038 n ^ 2 + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (f1 (n + 1) - f1 n)

end

end A358479.P1242812624093025620

/-! ## A358479.P5589452115652141000

`A358474(n+1)-A358474(abs(1-n)+1)`
-/

namespace A358479.P5589452115652141000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358474 (n + 1) - A358474 (|1 - (n : ℤ)| + 1).toNat

end

end A358479.P5589452115652141000

/-! ## A358479.P7412567508346145419

`Δ[A358474(A028310(n))]*A054977(n)`
-/

namespace A358479.P7412567508346145419
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358474 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A054977 n

end

end A358479.P7412567508346145419

/-!
# A358480: Number of 7's that appeared in the n-th step when constructing A030717.

The programs for A358480, there is no canonical definition to state claims against.
-/

/-! ## A358480.P11752697053321879396

`Δ[A358475(abs(1-n)+1)]`
-/

namespace A358480.P11752697053321879396
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358475 (|1 - (n : ℤ)| + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A358480.P11752697053321879396

/-! ## A358480.P16866450914682413010

`abs(Δ[A358475(A028310(n))])`
-/

namespace A358480.P16866450914682413010
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358475 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A358480.P16866450914682413010

/-! ## A358480.P61763448315005069

`A358475(n+1)-A358475(ceil(abs(γ-n)))`
-/

namespace A358480.P61763448315005069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358475 (n + 1) - A358475 ⌈|Real.eulerMascheroniConstant - (n : ℝ)|⌉.toNat

end

end A358480.P61763448315005069

/-! ## A358480.P17437547999312417429

`Δ[A358475(A028310(n))%A000041(n)]`
-/

namespace A358480.P17437547999312417429
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A358475 (A028310 n).toNat) (A000041 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A358480.P17437547999312417429

/-! ## A358480.P18368173152077092774

`Δ[A358475(A028310(n))]+A212892(n)%2`
-/

namespace A358480.P18368173152077092774
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358475 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + Int.tmod (A212892 n) 2

end

end A358480.P18368173152077092774

/-! ## A358480.P16804036195585107784

`A244413(2*n+5)+Δ[A358475(A028310(n))]`
-/

namespace A358480.P16804036195585107784
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358475 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244413 (2 * n + 5) + (f1 (n + 1) - f1 n)

end

end A358480.P16804036195585107784

/-! ## A358480.P10000201193758085022

`Δ[A358475(A028310(n))]+A165000(n+1)%2`
-/

namespace A358480.P10000201193758085022
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358475 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + Int.tmod (A165000 (n + 1)) 2

end

end A358480.P10000201193758085022

/-! ## A358480.P12279610034444906969

`A159781(n+1)%2*Δ[A358475(A028310(n))]`
-/

namespace A358480.P12279610034444906969
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358475 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A159781 (n + 1)) 2 * (f1 (n + 1) - f1 n)

end

end A358480.P12279610034444906969

/-!
# A358481: a(n) is the number of different pairs of shortest grid paths joining two opposite corners in opposite order in an n X n X n grid without having middle point on their paths as a common point.

The programs for A358481, there is no canonical definition to state claims against.
-/

/-! ## A358481.P3205353591044236285

`A268553(n+1)-A357760(n+1)`
-/

namespace A358481.P3205353591044236285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268553 (n + 1) - A357760 (n + 1)

end

end A358481.P3205353591044236285

/-!
# A358486: a(n) is the minimal permanent of an n X n matrix using the integers 0 to n^2 - 1.

The programs for A358486, there is no canonical definition to state claims against.
-/

/-! ## A358486.P17013693928739176302

`and(A086027(n+1), A255063(A183125(n)))`
-/

namespace A358486.P17013693928739176302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A086027 (n + 1)) (A255063 (A183125 n).toNat)

end

end A358486.P17013693928739176302

/-!
# A358490: Composite Fibonacci numbers whose sum of prime factors (with multiplicity) is a prime.

The programs for A358490, there is no canonical definition to state claims against.
-/

/-! ## A358490.P17053644107692878763

`A000045(or(A005867(n), A195086(n+1)))`
-/

namespace A358490.P17053644107692878763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (Int.lor (A005867 n) (A195086 (n + 1))).toNat

end

end A358490.P17053644107692878763

/-!
# A358491: a(n) = n!*Sum_{m=0..floor((n-1)/2)} 1/(n-m)/binomial(n-m-1,m).

The programs for A358491, the canonical program `A358491.P13525753163828515066` is in `Seq.B000.C046`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A358491 has offset 1).

The definition of A358491 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A358491.P13525753163828515066

`(n+1)!*∑{#}[floor(n/2), 1/(n+1-#)/C(n+1-#-1, #)]`

The canonical program, it is in `Seq.B000.C046`.
-/

namespace A358491

/-- `(n+1)!*∑{#}[floor(n/2), 1/(n+1-#)/C(n+1-#-1, #)]` -/
def P13525753163828515066.Spec : Prop :=
  ∀ n, P13525753163828515066.a n = (A358491 (n + 1) : ℚ)

end A358491

/-! ## A358491.P5882328888440546357

`A358651(n+2)-A358652(n+1)`
-/

namespace A358491.P5882328888440546357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358651 (n + 2) - A358652 (n + 1)

end

end A358491.P5882328888440546357

namespace A358491

/-- `A358651(n+2)-A358652(n+1)` -/
def P5882328888440546357.Spec : Prop :=
  ∀ n, P5882328888440546357.a n = A358491 (n + 1)

end A358491

/-!
# A358492: Irregular triangle read by rows: T(n,k) is one half of the number of line segments of length 1 in the k-th antidiagonal of the Dyck path described in the n-th row of A237593.

The programs for A358492, there is no canonical definition to state claims against.
-/

/-! ## A358492.P10573949738328715033

`A112689(gcd(A070875(3*n+4), A097684(n+1)))`
-/

namespace A358492.P10573949738328715033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112689 (Int.gcd (A070875 (3 * n + 4)) (A097684 (n + 1)))

end

end A358492.P10573949738328715033

/-! ## A358492.P11093479792512052001

`A000688(A262430(2*n)%A302798(3*n+4))`
-/

namespace A358492.P11093479792512052001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000688 (Int.tmod (A262430 (2 * n)) (A302798 (3 * n + 4))).toNat

end

end A358492.P11093479792512052001

/-! ## A358492.P5436116760583321124

`A130148(gcd(A130148(n+1), A367223(2*(n+1))))`
-/

namespace A358492.P5436116760583321124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130148 (Int.gcd (A130148 (n + 1)) (A367223 (2 * (n + 1))))

end

end A358492.P5436116760583321124

/-! ## A358492.P1124645044535413650

`A115573(A034806(n+2)+2)`
-/

namespace A358492.P1124645044535413650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115573 (A034806 (n + 2) + 2).toNat

end

end A358492.P1124645044535413650

/-! ## A358492.P1708225766637362724

`A000005(Δ[lt[1, A324030(3*n)]])`
-/

namespace A358492.P1708225766637362724
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324030 (3 * n)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A358492.P1708225766637362724

/-!
# A358493: a(n) = Sum_{k=0..floor(n/3)} (n-2*k)!/k!.

The programs for A358493, the canonical program `A358493.P16990201209135323165` is in `Seq.B000.C046`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A358493 has offset 0).

The definition of A358493 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A358493.P16990201209135323165

`∑{#}[floor(n/3), (n-2*#)!/#!]`

The canonical program, it is in `Seq.B000.C046`.
-/

namespace A358493

/-- `∑{#}[floor(n/3), (n-2*#)!/#!]` -/
def P16990201209135323165.Spec : Prop :=
  ∀ n, P16990201209135323165.a n = (A358493 n : ℚ)

end A358493

/-! ## A358493.P6218677964282643835

`A080907(floor(∑{d}[n+1, 1/(2*#)])+n!)`
-/

namespace A358493.P6218677964282643835
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080907 (⌊∑ d ∈ Nat.divisors (f1 n), 1 / (2 * d : ℚ)⌋ + (Nat.factorial n : ℤ)).toNat

end

end A358493.P6218677964282643835

namespace A358493

/-- `A080907(floor(∑{d}[n+1, 1/(2*#)])+n!)` -/
def P6218677964282643835.Spec : Prop :=
  ∀ n, P6218677964282643835.a n = A358493 n

end A358493

/-! ## A358493.P16327153848914943483

`A080907(A037900(n+1)+n!)`
-/

namespace A358493.P16327153848914943483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080907 (A037900 (n + 1) + (Nat.factorial n : ℤ)).toNat

end

end A358493.P16327153848914943483

namespace A358493

/-- `A080907(A037900(n+1)+n!)` -/
def P16327153848914943483.Spec : Prop :=
  ∀ n, P16327153848914943483.a n = A358493 n

end A358493

/-!
# A358494: a(n) = Sum_{k=0..floor(n/5)} (n-4*k)!/k!.

The programs for A358494, the canonical program `A358494.P444150796661177255` is in `Seq.B000.C046`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A358494 has offset 0).

The definition of A358494 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A358494.P444150796661177255

`∑{#}[floor(n/5), (n-4*#)!/#!]`

The canonical program, it is in `Seq.B000.C046`.
-/

namespace A358494

/-- `∑{#}[floor(n/5), (n-4*#)!/#!]` -/
def P444150796661177255.Spec : Prop :=
  ∀ n, P444150796661177255.a n = (A358494 n : ℚ)

end A358494

/-! ## A358494.P3797837403447128094

`A358499(n)-A188037(A072850(n+1))`
-/

namespace A358494.P3797837403447128094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358499 n - A188037 (A072850 (n + 1)).toNat

end

end A358494.P3797837403447128094

namespace A358494

/-- `A358499(n)-A188037(A072850(n+1))` -/
def P3797837403447128094.Spec : Prop :=
  ∀ n, P3797837403447128094.a n = A358494 n

end A358494

/-! ## A358494.P7844399102943169738

`A135661(A228905(n))+A000142(n)`
-/

namespace A358494.P7844399102943169738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135661 (A228905 n).toNat + A000142 n

end

end A358494.P7844399102943169738

namespace A358494

/-- `A135661(A228905(n))+A000142(n)` -/
def P7844399102943169738.Spec : Prop :=
  ∀ n, P7844399102943169738.a n = A358494 n

end A358494

/-! ## A358494.P6948633000756810299

`A358499(n)-A058064(A001611(n))`
-/

namespace A358494.P6948633000756810299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358499 n - A058064 (A001611 n).toNat

end

end A358494.P6948633000756810299

namespace A358494

/-- `A358499(n)-A058064(A001611(n))` -/
def P6948633000756810299.Spec : Prop :=
  ∀ n, P6948633000756810299.a n = A358494 n

end A358494

/-! ## A358494.P11851774797350544390

`A340279(A092264(n+1))+A000142(n)`
-/

namespace A358494.P11851774797350544390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340279 (A092264 (n + 1)).toNat + A000142 n

end

end A358494.P11851774797350544390

namespace A358494

/-- `A340279(A092264(n+1))+A000142(n)` -/
def P11851774797350544390.Spec : Prop :=
  ∀ n, P11851774797350544390.a n = A358494 n

end A358494

/-!
# A358495: a(n) = Sum_{k=0..n} binomial(binomial(n, k), n).

The programs for A358495, the canonical program `A358495.P9815476515884484858` is in `Seq.B000.C046`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A358495 has offset 0).

The definition of A358495 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[n, C(C(n, #), n)]` (program `A358495.P9815476515884484858`, by `A358495.P9815476515884484858.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A358495.P9815476515884484858

`∑{#}[n, C(C(n, #), n)]`

The canonical program, it is in `Seq.B000.C046`.
-/

namespace A358495

/-- `∑{#}[n, C(C(n, #), n)]` -/
def P9815476515884484858.Spec : Prop :=
  ∀ n, (P9815476515884484858.a n : ℤ) = A358495 n

theorem P9815476515884484858.correct : P9815476515884484858.Spec := by
  intro n
  simp only [A358495]

end A358495

/-! ## A358495.P1820828830303837554

`A111701(A279695(n)+1)`
-/

namespace A358495.P1820828830303837554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111701 (A279695 n + 1).toNat

end

end A358495.P1820828830303837554

namespace A358495

/-- `A111701(A279695(n)+1)` -/
def P1820828830303837554.Spec : Prop :=
  ∀ n, P1820828830303837554.a n = A358495 n

end A358495

/-!
# A358496: a(n) = Sum_{k=0..n} binomial(binomial(n, k), k).

The programs for A358496, the canonical program `A358496.P209164722746269289` is in `Seq.B000.C046`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A358496 has offset 0).

The definition of A358496 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[n, C(C(n, #), #)]` (program `A358496.P209164722746269289`, by `A358496.P209164722746269289.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A358496.P209164722746269289

`∑{#}[n, C(C(n, #), #)]`

The canonical program, it is in `Seq.B000.C046`.
-/

namespace A358496

/-- `∑{#}[n, C(C(n, #), #)]` -/
def P209164722746269289.Spec : Prop :=
  ∀ n, (P209164722746269289.a n : ℤ) = A358496 n

theorem P209164722746269289.correct : P209164722746269289.Spec := by
  intro n
  simp only [A358496]

end A358496

/-! ## A358496.P4663756907035544355

`A056171(9*C(a(n-1)+1, 2))` with `a(0)=1`
-/

namespace A358496.P4663756907035544355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A056171 (9 * Nat.choose (a (n - 1) + 1).toNat 2)

end

end A358496.P4663756907035544355

namespace A358496

/-- `A056171(9*C(a(n-1)+1, 2))` -/
def P4663756907035544355.Spec : Prop :=
  ∀ n, P4663756907035544355.a n = A358496 n

end A358496

/-!
# A358497: Replace each new digit in n with index 1, 2, ..., 9, 0 in order in which that digit appears in n, from left to right.

The programs for A358497, there is no canonical definition to state claims against.
-/

/-! ## A358497.P11808328394263313632

`A123895(A213217(n))`
-/

namespace A358497.P11808328394263313632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123895 (A213217 n).toNat

end

end A358497.P11808328394263313632

/-! ## A358497.P18947481399660530

`A356264(A139337(n)+3)`
-/

namespace A358497.P18947481399660530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356264 (A139337 n + 3).toNat

end

end A358497.P18947481399660530

/-! ## A358497.P49109511921696752

`A213217(or(2, A213217(n)))`
-/

namespace A358497.P49109511921696752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213217 (Int.lor 2 (A213217 n)).toNat

end

end A358497.P49109511921696752

/-! ## A358497.P7789170478901422079

`A129170(A123895(n))+A123895(n)`
-/

namespace A358497.P7789170478901422079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129170 (A123895 n).toNat + A123895 n

end

end A358497.P7789170478901422079

/-! ## A358497.P5570766356541012662

`A123895(n)+A055641(A338754(n))`
-/

namespace A358497.P5570766356541012662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123895 n + A055641 (A338754 n).toNat

end

end A358497.P5570766356541012662

/-! ## A358497.P3099518782291765984

`A213217(A178788(n)+A139337(n))`
-/

namespace A358497.P3099518782291765984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213217 (A178788 n + A139337 n).toNat

end

end A358497.P3099518782291765984

/-! ## A358497.P7067807388663970543

`gcd(A033486(n), A138725(A139337(n)))`
-/

namespace A358497.P7067807388663970543
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A033486 n) (A138725 (A139337 n).toNat)

end

end A358497.P7067807388663970543

/-! ## A358497.P7156515617427787240

`A004185(A213217(n)%A267759(n+1))`
-/

namespace A358497.P7156515617427787240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004185 (Int.tmod (A213217 n) (A267759 (n + 1))).toNat

end

end A358497.P7156515617427787240

/-! ## A358497.P6299013730734340101

`A139337(n)%A260529(n)+1`
-/

namespace A358497.P6299013730734340101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A139337 n) (A260529 n) + 1

end

end A358497.P6299013730734340101

/-! ## A358497.P4991436145417200875

`A213217(n)-A193581(A260529(n))`
-/

namespace A358497.P4991436145417200875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213217 n - A193581 (A260529 n).toNat

end

end A358497.P4991436145417200875

/-!
# A358498: a(n) = Sum_{k=0..floor(n/3)} (n-3*k)!.

The programs for A358498, the canonical program `A358498.P7578228945492778035` is in `Seq.B000.C046`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A358498 has offset 0).

The definition of A358498 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[floor(n/3), (n-3*#)!]` (program `A358498.P7578228945492778035`, by `A358498.P7578228945492778035.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A358498.P7578228945492778035

`∑{#}[floor(n/3), (n-3*#)!]`

The canonical program, it is in `Seq.B000.C046`.
-/

namespace A358498

/-- `∑{#}[floor(n/3), (n-3*#)!]` -/
def P7578228945492778035.Spec : Prop :=
  ∀ n, (P7578228945492778035.a n : ℤ) = A358498 n

theorem P7578228945492778035.correct : P7578228945492778035.Spec := by
  intro n
  simp only [A358498]

end A358498

/-! ## A358498.P15424612256665428297

`n*a(n-1)+a(n-3)-n*a(n-4)` with `a(0)=1, a(1)=1, a(2)=2, a(3)=7`
-/

namespace A358498.P15424612256665428297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2, 7] fun n a =>
  (n : ℤ) * a (n - 1) + a (n - 3) - (n : ℤ) * a (n - 4)

end

end A358498.P15424612256665428297

namespace A358498

/-- `n*a(n-1)+a(n-3)-n*a(n-4)` -/
def P15424612256665428297.Spec : Prop :=
  ∀ n, P15424612256665428297.a n = A358498 n

end A358498

/-! ## A358498.P1312852078640708396

`a(n-3)+n!` with `a(0)=1, a(1)=1, a(2)=2`
-/

namespace A358498.P1312852078640708396
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 2] fun n a =>
  a (n - 3) + Nat.factorial n

end

end A358498.P1312852078640708396

namespace A358498

/-- `a(n-3)+n!` -/
def P1312852078640708396.Spec : Prop :=
  ∀ n, (P1312852078640708396.a n : ℤ) = A358498 n

end A358498

/-! ## A358498.P3705028031382640722

`∑[n*a(n-1)]-(a(n-1)+a(n-2))` with `a(0)=1, a(1)=1`
-/

namespace A358498.P3705028031382640722
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  n * f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (a (n - 1) + a (n - 2))

end

end A358498.P3705028031382640722

namespace A358498

/-- `∑[n*a(n-1)]-(a(n-1)+a(n-2))` -/
def P3705028031382640722.Spec : Prop :=
  ∀ n, P3705028031382640722.a n = A358498 n

end A358498

/-! ## A358498.P11127511729432455269

`∑[n*a(n-1)]-a(n-1)-a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A358498.P11127511729432455269
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  n * f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - a (n - 1) - a (n - 2)

end

end A358498.P11127511729432455269

namespace A358498

/-- `∑[n*a(n-1)]-a(n-1)-a(n-2)` -/
def P11127511729432455269.Spec : Prop :=
  ∀ n, P11127511729432455269.a n = A358498 n

end A358498

/-! ## A358498.P18006798750762266077

`A000142(n)+a(n-3)` with `a(0)=1, a(1)=1, a(2)=2`
-/

namespace A358498.P18006798750762266077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2] fun n a =>
  A000142 n + a (n - 3)

end

end A358498.P18006798750762266077

namespace A358498

/-- `A000142(n)+a(n-3)` -/
def P18006798750762266077.Spec : Prop :=
  ∀ n, P18006798750762266077.a n = A358498 n

end A358498

/-! ## A358498.P4205200879137875745

`A081123(2*n)+a(n-3)` with `a(0)=1, a(1)=1, a(2)=2`
-/

namespace A358498.P4205200879137875745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2] fun n a =>
  A081123 (2 * n) + a (n - 3)

end

end A358498.P4205200879137875745

namespace A358498

/-- `A081123(2*n)+a(n-3)` -/
def P4205200879137875745.Spec : Prop :=
  ∀ n, P4205200879137875745.a n = A358498 n

end A358498

/-!
# A358499: a(n) = Sum_{k=0..floor(n/4)} (n-4*k)!.

The programs for A358499, the canonical program `A358499.P17908274347387133250` is in `Seq.B000.C046`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A358499 has offset 0).

The definition of A358499 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[floor(n/4), (n-4*#)!]` (program `A358499.P17908274347387133250`, by `A358499.P17908274347387133250.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A358499.P17908274347387133250

`∑{#}[floor(n/4), (n-4*#)!]`

The canonical program, it is in `Seq.B000.C046`.
-/

namespace A358499

/-- `∑{#}[floor(n/4), (n-4*#)!]` -/
def P17908274347387133250.Spec : Prop :=
  ∀ n, (P17908274347387133250.a n : ℤ) = A358499 n

theorem P17908274347387133250.correct : P17908274347387133250.Spec := by
  intro n
  simp only [A358499]

end A358499

/-! ## A358499.P18083438903007935043

`n*a(n-1)+a(n-4)-n*a(n-5)` with `a(0)=1, a(1)=1, a(2)=2, a(3)=6, a(4)=25`
-/

namespace A358499.P18083438903007935043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2, 6, 25] fun n a =>
  (n : ℤ) * a (n - 1) + a (n - 4) - (n : ℤ) * a (n - 5)

end

end A358499.P18083438903007935043

namespace A358499

/-- `n*a(n-1)+a(n-4)-n*a(n-5)` -/
def P18083438903007935043.Spec : Prop :=
  ∀ n, P18083438903007935043.a n = A358499 n

end A358499

/-! ## A358499.P10878405389720002236

`a(n-4)+n!` with `a(0)=1, a(1)=1, a(2)=2, a(3)=6`
-/

namespace A358499.P10878405389720002236
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 2, 6] fun n a =>
  a (n - 4) + Nat.factorial n

end

end A358499.P10878405389720002236

namespace A358499

/-- `a(n-4)+n!` -/
def P10878405389720002236.Spec : Prop :=
  ∀ n, (P10878405389720002236.a n : ℤ) = A358499 n

end A358499

/-! ## A358499.P704335415408105477

`A136580(n)-a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A358499.P704335415408105477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A136580 n - a (n - 2)

end

end A358499.P704335415408105477

namespace A358499

/-- `A136580(n)-a(n-2)` -/
def P704335415408105477.Spec : Prop :=
  ∀ n, P704335415408105477.a n = A358499 n

end A358499

/-! ## A358499.P16308095444455877594

`∑[A358607(n)-a(n-1)]` with `a(0)=1`
-/

namespace A358499.P16308095444455877594
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A358607 n - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A358499.P16308095444455877594

namespace A358499

/-- `∑[A358607(n)-a(n-1)]` -/
def P16308095444455877594.Spec : Prop :=
  ∀ n, P16308095444455877594.a n = A358499 n

end A358499

