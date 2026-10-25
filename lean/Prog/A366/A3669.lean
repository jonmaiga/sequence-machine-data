import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
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
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C026
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C039
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C004
import Seq.B001.C005
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
# A366900: a(n) is the number of real roots of the derivative of the cyclotomic polynomial Phi(n, 1/x).

The programs for A366900, there is no canonical definition to state claims against.
-/

/-! ## A366900.P17190082367384015558

`A262202(2*(n+1))%A301722(A000041(n))`
-/

namespace A366900.P17190082367384015558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A262202 (2 * (n + 1))) (A301722 (A000041 n).toNat)

end

end A366900.P17190082367384015558

/-! ## A366900.P8856312330367460463

`A000720(A305150(2*(n+1))%A357632(2*(n+1)))`
-/

namespace A366900.P8856312330367460463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (Int.tmod (A305150 (2 * (n + 1))) (A357632 (2 * (n + 1)))).toNat

end

end A366900.P8856312330367460463

/-! ## A366900.P6723890432551405158

`A000720(A305150(2*(n+1)))%A324753(2*n)`
-/

namespace A366900.P6723890432551405158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000720 (A305150 (2 * (n + 1))).toNat) (A324753 (2 * n))

end

end A366900.P6723890432551405158

/-! ## A366900.P15575070450522978251

`A000040(A093107(2*(n+1)))%A305150(2*(n+1))`
-/

namespace A366900.P15575070450522978251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (A093107 (2 * (n + 1))).toNat) (A305150 (2 * (n + 1)))

end

end A366900.P15575070450522978251

/-! ## A366900.P10300702221307644734

`A159631(A318681(n+1))-A159631(n+1)`
-/

namespace A366900.P10300702221307644734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159631 (A318681 (n + 1)).toNat - A159631 (n + 1)

end

end A366900.P10300702221307644734

/-!
# A366901: The number of exponentially odious divisors of n.

The programs for A366901, the canonical program `A366901.P8397804292858311364` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A366901 has offset 1).

The definition of A366901 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A366901.P1980798064504566438

`∑{d}[n+1, A355825(#)]`
-/

namespace A366901.P1980798064504566438
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A355825 d

end

end A366901.P1980798064504566438

namespace A366901

/-- `∑{d}[n+1, A355825(#)]` -/
def P1980798064504566438.Spec : Prop :=
  ∀ n, P1980798064504566438.a n = A366901 (n + 1)

end A366901

/-! ## A366901.P8397804292858311364

`∏{e}[n+1, A115384(#)+1]`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A366901

/-- `∏{e}[n+1, A115384(#)+1]` -/
def P8397804292858311364.Spec : Prop :=
  ∀ n, P8397804292858311364.a n = A366901 (n + 1)

theorem P8397804292858311364.correct : P8397804292858311364.Spec := by
  intro n
  simp only [A366901, Nat.add_sub_cancel]

end A366901

/-! ## A366901.P6175591142826224236

`∏{e}[n+1, A357186(A000043(#+1))]`
-/

namespace A366901.P6175591142826224236
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A357186 (A000043 (Nat.factorization (f1 n) p + 1)).toNat

end

end A366901.P6175591142826224236

namespace A366901

/-- `∏{e}[n+1, A357186(A000043(#+1))]` -/
def P6175591142826224236.Spec : Prop :=
  ∀ n, P6175591142826224236.a n = A366901 (n + 1)

end A366901

/-!
# A366902: The number of exponentially evil divisors of n.

The programs for A366902, the canonical program `A366902.P10509626406814896750` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A366902 has offset 1).

The definition of A366902 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A366902.P17107124136133204024

`A046951(A366906(n+1))`
-/

namespace A366902.P17107124136133204024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046951 (A366906 (n + 1)).toNat

end

end A366902.P17107124136133204024

namespace A366902

/-- `A046951(A366906(n+1))` -/
def P17107124136133204024.Spec : Prop :=
  ∀ n, P17107124136133204024.a n = A366902 (n + 1)

end A366902

/-! ## A366902.P10509626406814896750

`∏{e}[A159481(2*n+1), A159481(#)]`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A366902

/-- `∏{e}[A159481(2*n+1), A159481(#)]` -/
def P10509626406814896750.Spec : Prop :=
  ∀ n, P10509626406814896750.a n = A366902 (n + 1)

theorem P10509626406814896750.correct : P10509626406814896750.Spec := by
  intro n
  simp only [A366902, Nat.add_sub_cancel]

end A366902

/-! ## A366902.P733409481884719471

`A001222(C(23, A050361(n+1)))`
-/

namespace A366902.P733409481884719471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (Nat.choose 23 (A050361 (n + 1)).toNat)

end

end A366902.P733409481884719471

namespace A366902

/-- `A001222(C(23, A050361(n+1)))` -/
def P733409481884719471.Spec : Prop :=
  ∀ n, P733409481884719471.a n = A366902 (n + 1)

end A366902

/-! ## A366902.P11205117547223970845

`A069291(A366906(n+1)*A366906(n+1))`
-/

namespace A366902.P11205117547223970845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069291 (A366906 (n + 1) * A366906 (n + 1)).toNat

end

end A366902.P11205117547223970845

namespace A366902

/-- `A069291(A366906(n+1)*A366906(n+1))` -/
def P11205117547223970845.Spec : Prop :=
  ∀ n, P11205117547223970845.a n = A366902 (n + 1)

end A366902

/-! ## A366902.P8255054355177109912

`A134310(A051903(n+1)%A332319(n+5))`
-/

namespace A366902.P8255054355177109912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134310 (Int.tmod (A051903 (n + 1)) (A332319 (n + 5))).toNat

end

end A366902.P8255054355177109912

namespace A366902

/-- `A134310(A051903(n+1)%A332319(n+5))` -/
def P8255054355177109912.Spec : Prop :=
  ∀ n, P8255054355177109912.a n = A366902 (n + 1)

end A366902

/-!
# A366903: The sum of exponentially odious divisors of n.

The programs for A366903, the canonical program `A366903.P9543273992660669983` is in `Seq.B006.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A366903 has offset 1).

The definition of A366903 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A366903.P9543273992660669983

`∑{d}[n+1, #*A355825(#)]`

The canonical program, it is in `Seq.B006.C002`.
-/

namespace A366903

/-- `∑{d}[n+1, #*A355825(#)]` -/
def P9543273992660669983.Spec : Prop :=
  ∀ n, P9543273992660669983.a n = A366903 (n + 1)

theorem P9543273992660669983.correct : P9543273992660669983.Spec := by
  intro n
  simp only [A366903, Nat.add_sub_cancel]

end A366903

/-!
# A366905: The largest exponentially odious divisor of n.

The programs for A366905, there is no canonical definition to state claims against.
-/

/-! ## A366905.P4710280363579473767

`(n+1)/A367698(n+1)`
-/

namespace A366905.P4710280363579473767
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A367698 (n + 1) : ℚ)

end

end A366905.P4710280363579473767

/-! ## A366905.P3829947761308620310

`A008834(A066060(n+1))*A353897(n+1)`
-/

namespace A366905.P3829947761308620310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008834 (A066060 (n + 1)).toNat * A353897 (n + 1)

end

end A366905.P3829947761308620310

/-!
# A366906: The largest exponentially evil divisor of n.

The programs for A366906, there is no canonical definition to state claims against.
-/

/-! ## A366906.P4957284893694203940

`(n+1)/A367699(n+1)`
-/

namespace A366906.P4957284893694203940
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A367699 (n + 1) : ℚ)

end

end A366906.P4957284893694203940

/-! ## A366906.P457135690586794090

`A367513(A365683(n+1)%A250320(n+1))`
-/

namespace A366906.P457135690586794090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367513 (Int.tmod (A365683 (n + 1)) (A250320 (n + 1))).toNat

end

end A366906.P457135690586794090

/-! ## A366906.P17058171332361679787

`A367934(A368540(n+1)%A250320(n+1)*A365685(n+1))`
-/

namespace A366906.P17058171332361679787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367934 (Int.tmod (A368540 (n + 1)) (A250320 (n + 1)) * A365685 (n + 1)).toNat

end

end A366906.P17058171332361679787

/-! ## A366906.P11050002854228134819

`A354601(A008834(n+1))*A368170(n+1)`
-/

namespace A366906.P11050002854228134819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354601 ((A008834 (n + 1)).toNat + 10) * A368170 (n + 1)

end

end A366906.P11050002854228134819

/-! ## A366906.P3149214265920109788

`A365684(n+1)/A367932(A367932(n+1))`
-/

namespace A366906.P3149214265920109788
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A365684 (n + 1) : ℚ) / (A367932 (A367932 (n + 1)).toNat : ℚ)

end

end A366906.P3149214265920109788

/-! ## A366906.P9237653517725042250

`floor(n/(A360541(A360541(n+1))*A365685(n+1)))+1`
-/

namespace A366906.P9237653517725042250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / (A360541 (A360541 (n + 1)).toNat * A365685 (n + 1) : ℚ)⌋ + 1

end

end A366906.P9237653517725042250

/-! ## A366906.P5180165616636879351

`A138768(A366904(n+1))`
-/

namespace A366906.P5180165616636879351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138768 (A366904 (n + 1)).toNat

end

end A366906.P5180165616636879351

/-! ## A366906.P3570428190431667960

`A368170(n+1)+A000007(A036038(n+1))`
-/

namespace A366906.P3570428190431667960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368170 (n + 1) + A000007 (A036038 (n + 1)).toNat

end

end A366906.P3570428190431667960

/-! ## A366906.P17120307545048376744

`A368170(A042966(n+1)*A368170(n+1))`
-/

namespace A366906.P17120307545048376744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368170 (A042966 (n + 1) * A368170 (n + 1)).toNat

end

end A366906.P17120307545048376744

/-! ## A366906.P15932420755198894465

`A368170(A220627(n+1)*A368170(n+1))`
-/

namespace A366906.P15932420755198894465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368170 (A220627 (n + 1) * A368170 (n + 1)).toNat

end

end A366906.P15932420755198894465

/-!
# A366907: a(n) is the number of geometric progressions with three or more terms, with rational ratio > 0, formed by the terms a(n-1), a(n-1-k), a(n-1-2*k),...,a(n-1-t*k) where k>=1, t>=2, and n-1-t*k>=0.

The programs for A366907, there is no canonical definition to state claims against.
-/

/-! ## A366907.P14900137299952341086

`A346456(A286225(n))%A008284(3*n+4)`
-/

namespace A366907.P14900137299952341086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A346456 (A286225 n).toNat) (A008284 (3 * n + 4))

end

end A366907.P14900137299952341086

/-! ## A366907.P18392206386669036349

`A008619(A265826(n))%A114088(3*(n+1))`
-/

namespace A366907.P18392206386669036349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008619 (A265826 n).toNat) (A114088 (3 * (n + 1)))

end

end A366907.P18392206386669036349

/-! ## A366907.P5405641428054854627

`A325535(3*n+2)%A066748(A002849(n+1))`
-/

namespace A366907.P5405641428054854627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A325535 (3 * n + 2)) (A066748 (A002849 (n + 1)).toNat)

end

end A366907.P5405641428054854627

/-! ## A366907.P11648842473484177221

`A051903(A384067(n))*A128174(n+1)`
-/

namespace A366907.P11648842473484177221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (A384067 n).toNat * A128174 (n + 1)

end

end A366907.P11648842473484177221

/-! ## A366907.P16224553024515383265

`A001221(A331562(3*n+4)/A347621(n))`
-/

namespace A366907.P16224553024515383265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (SequenceMachineLib.roundAway ((A331562 (3 * n + 4) : ℚ) / (A347621 n : ℚ))).toNat

end

end A366907.P16224553024515383265

/-!
# A366910: Number of n-bit binary reversible primes.

The programs for A366910, there is no canonical definition to state claims against.
-/

/-! ## A366910.P16923625522631862596

`A366739(A124302(n+2))+A000045(n)`
-/

namespace A366910.P16923625522631862596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366739 (A124302 (n + 2)).toNat + A000045 n

end

end A366910.P16923625522631862596

/-!
# A366911: a(n) = (A364054(n+1) - A364054(n)) / prime(n) (where prime(n) denotes the n-th prime number).

The programs for A366911, there is no canonical definition to state claims against.
-/

/-! ## A366911.P13344307762681323084

`Δ[A364054(n+1)]/A000040(n+1)`
-/

namespace A366911.P13344307762681323084
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364054 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) / (A000040 (n + 1) : ℚ)

end

end A366911.P13344307762681323084

/-! ## A366911.P16181372003981560699

`Δ[A364054(n+1)]/A162753(2*n+3)`
-/

namespace A366911.P16181372003981560699
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364054 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) / (A162753 (2 * n + 3) : ℚ)

end

end A366911.P16181372003981560699

/-! ## A366911.P1700683980489401255

`Δ[A366912(n+1)]`
-/

namespace A366911.P1700683980489401255
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366912 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A366911.P1700683980489401255

/-! ## A366911.P17876979368159563827

`A366912(n+2)-A366912(n+1)`
-/

namespace A366911.P17876979368159563827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366912 (n + 2) - A366912 (n + 1)

end

end A366911.P17876979368159563827

/-! ## A366911.P13568408353337191726

`A106400(A245710(n)+A230250(n+1))`
-/

namespace A366911.P13568408353337191726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106400 (A245710 n + A230250 (n + 1)).toNat

end

end A366911.P13568408353337191726

/-!
# A366912: Partial sums of A366911: a(1) = 0, and for n > 0, a(n+1) = a(n) + A366911(n).

The programs for A366912, there is no canonical definition to state claims against.
-/

/-! ## A366912.P4541369091720384977

`∑[A366911(n+1)]-A366911(n+1)`
-/

namespace A366912.P4541369091720384977
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366911 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A366911 (n + 1)

end

end A366912.P4541369091720384977

/-! ## A366912.P13937464059809435541

`∑[((-1)^n)^A103833(3*(n+1))]-((-1)^n)^A103833(3*(n+1))`
-/

namespace A366912.P13937464059809435541
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((-1) ^ n : ℚ) ^ (A103833 (3 * (n + 1)) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - ((-1) ^ n : ℚ) ^ (A103833 (3 * (n + 1)) : ℤ)

end

end A366912.P13937464059809435541

/-! ## A366912.P12046958870246658352

`A309236(A309236(A308590(n)²))`
-/

namespace A366912.P12046958870246658352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309236 (A309236 (A308590 n ^ 2).toNat).toNat

end

end A366912.P12046958870246658352

/-! ## A366912.P5501115369775323271

`∑[A268676(A081668(n))-2]-1`
-/

namespace A366912.P5501115369775323271
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268676 (A081668 n).toNat - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A366912.P5501115369775323271

/-! ## A366912.P15368088589971077500

`∑[A062157(∑[A300040(2*n+1)])]`
-/

namespace A366912.P15368088589971077500
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300040 (2 * n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062157 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A366912.P15368088589971077500

/-!
# A366914: Numbers expressible as the sum of their distinct prime factors raised to a natural exponent.

The programs for A366914, there is no canonical definition to state claims against.
-/

/-! ## A366914.P8123372370831524162

`∪[A246655(n+1), A302753(n+1)]`
-/

namespace A366914.P8123372370831524162
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246655 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302753 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A366914.P8123372370831524162

/-! ## A366914.P13335657875002103279

`∪[A296717(n+1), A363727(n+1)]`
-/

namespace A366914.P13335657875002103279
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296717 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363727 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A366914.P13335657875002103279

/-! ## A366914.P5862464184291677795

`∪[A302753(n+1), A363727(n+1)]`
-/

namespace A366914.P5862464184291677795
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302753 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363727 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A366914.P5862464184291677795

/-! ## A366914.P16871951730125183657

`filter[A122156(n+1), A092248(#)]`
-/

namespace A366914.P16871951730125183657
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122156 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A092248 (f1 j).toNat = 1) n)

end

end A366914.P16871951730125183657

/-! ## A366914.P6551153430308359297

`filter[A122154(n+1), A092248(#)]`
-/

namespace A366914.P6551153430308359297
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122154 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A092248 (f1 j).toNat = 1) n)

end

end A366914.P6551153430308359297

/-!
# A366915: a(n) = Sum_{k=1..n} (-1)^k*k^2*floor(n/k).

The programs for A366915, the canonical program `A366915.P86294667979577225` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A366915 has offset 1).

The definition of A366915 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A366915.P86294667979577225

`∑[-A321543(n+1)]`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A366915

/-- `∑[-A321543(n+1)]` -/
def P86294667979577225.Spec : Prop :=
  ∀ n, P86294667979577225.a n = A366915 (n + 1)

theorem P86294667979577225.correct : P86294667979577225.Spec := by
  intro n
  simp only [A366915, Nat.add_sub_cancel]

end A366915

/-! ## A366915.P3094200239997095038

`∑[-∑{d}[n+1, A162395(#)]]`
-/

namespace A366915.P3094200239997095038
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(∑ d ∈ Nat.divisors (f2 n), A162395 d)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A366915.P3094200239997095038

namespace A366915

/-- `∑[-∑{d}[n+1, A162395(#)]]` -/
def P3094200239997095038.Spec : Prop :=
  ∀ n, P3094200239997095038.a n = A366915 (n + 1)

end A366915

/-! ## A366915.P10644196310633642890

`∑[A000035(2*(n+1))-A321543(n+1)]`
-/

namespace A366915.P10644196310633642890
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (2 * (n + 1)) - A321543 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A366915.P10644196310633642890

namespace A366915

/-- `∑[A000035(2*(n+1))-A321543(n+1)]` -/
def P10644196310633642890.Spec : Prop :=
  ∀ n, P10644196310633642890.a n = A366915 (n + 1)

end A366915

/-! ## A366915.P2133463463752086189

`∑[A035457(2*n+3)-A321543(n+1)]`
-/

namespace A366915.P2133463463752086189
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035457 (2 * n + 3) - A321543 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A366915.P2133463463752086189

namespace A366915

/-- `∑[A035457(2*n+3)-A321543(n+1)]` -/
def P2133463463752086189.Spec : Prop :=
  ∀ n, P2133463463752086189.a n = A366915 (n + 1)

end A366915

/-! ## A366915.P5805902127624900957

`∑[A185012(3*n)-A321543(n+1)]`
-/

namespace A366915.P5805902127624900957
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185012 (3 * n) - A321543 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A366915.P5805902127624900957

namespace A366915

/-- `∑[A185012(3*n)-A321543(n+1)]` -/
def P5805902127624900957.Spec : Prop :=
  ∀ n, P5805902127624900957.a n = A366915 (n + 1)

end A366915

/-!
# A366917: a(n) = Sum_{k=1..n} (-1)^k*k^3*floor(n/k).

The programs for A366917, the canonical program `A366917.P14252635894861452401` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A366917 has offset 1).

The definition of A366917 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A366917.P6454843464540129692

`∑[-A138503(n+1)]`
-/

namespace A366917.P6454843464540129692
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A138503 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A366917.P6454843464540129692

namespace A366917

/-- `∑[-A138503(n+1)]` -/
def P6454843464540129692.Spec : Prop :=
  ∀ n, P6454843464540129692.a n = A366917 (n + 1)

end A366917

/-! ## A366917.P50432092592897656

`∑[A035016(n+1)/16]`
-/

namespace A366917.P50432092592897656
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A035016 (n + 1) : ℚ) / 16

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A366917.P50432092592897656

namespace A366917

/-- `∑[A035016(n+1)/16]` -/
def P50432092592897656.Spec : Prop :=
  ∀ n, P50432092592897656.a n = (A366917 (n + 1) : ℚ)

end A366917

/-! ## A366917.P14252635894861452401

`∑[-∑{d}[n+1, #*A162395(#)]]`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A366917

/-- `∑[-∑{d}[n+1, #*A162395(#)]]` -/
def P14252635894861452401.Spec : Prop :=
  ∀ n, P14252635894861452401.a n = A366917 (n + 1)

theorem P14252635894861452401.correct : P14252635894861452401.Spec := by
  intro n
  simp only [A366917, Nat.add_sub_cancel]

end A366917

/-! ## A366917.P16903169812519860226

`∑[A063524(2*n+3)-A138503(n+1)]`
-/

namespace A366917.P16903169812519860226
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063524 (2 * n + 3) - A138503 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A366917.P16903169812519860226

namespace A366917

/-- `∑[A063524(2*n+3)-A138503(n+1)]` -/
def P16903169812519860226.Spec : Prop :=
  ∀ n, P16903169812519860226.a n = A366917 (n + 1)

end A366917

/-! ## A366917.P16563535410345848864

`∑[A035444(2*n+1)-A138503(n+1)]`
-/

namespace A366917.P16563535410345848864
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035444 (2 * n + 1) - A138503 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A366917.P16563535410345848864

namespace A366917

/-- `∑[A035444(2*n+1)-A138503(n+1)]` -/
def P16563535410345848864.Spec : Prop :=
  ∀ n, P16563535410345848864.a n = A366917 (n + 1)

end A366917

/-! ## A366917.P3569751825932403811

`∑[A010673(2*n)-A138503(n+1)]`
-/

namespace A366917.P3569751825932403811
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010673 (2 * n) - A138503 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A366917.P3569751825932403811

namespace A366917

/-- `∑[A010673(2*n)-A138503(n+1)]` -/
def P3569751825932403811.Spec : Prop :=
  ∀ n, P3569751825932403811.a n = A366917 (n + 1)

end A366917

/-! ## A366917.P13365678487256302399

`∑[A000038(2*(n+2))-A138503(n+1)]`
-/

namespace A366917.P13365678487256302399
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 (2 * (n + 2)) - A138503 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A366917.P13365678487256302399

namespace A366917

/-- `∑[A000038(2*(n+2))-A138503(n+1)]` -/
def P13365678487256302399.Spec : Prop :=
  ∀ n, P13365678487256302399.a n = A366917 (n + 1)

end A366917

/-! ## A366917.P11961257066876510147

`∑[A000122(3*n+2)-A138503(n+1)]`
-/

namespace A366917.P11961257066876510147
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000122 (3 * n + 2) - A138503 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A366917.P11961257066876510147

namespace A366917

/-- `∑[A000122(3*n+2)-A138503(n+1)]` -/
def P11961257066876510147.Spec : Prop :=
  ∀ n, P11961257066876510147.a n = A366917 (n + 1)

end A366917

/-!
# A366918: a(n) is the number of multiples of n that have exactly n divisors, or -1 if there are infinitely many such numbers.

The programs for A366918, the canonical program `A366918.P12560606387716374749` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A366918 has offset 1).

The definition of A366918 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A366918.P12560606387716374749

`A065475(A281188(n+1)+1)-2`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A366918

/-- `A065475(A281188(n+1)+1)-2` -/
def P12560606387716374749.Spec : Prop :=
  ∀ n, P12560606387716374749.a n = A366918 (n + 1)

theorem P12560606387716374749.correct : P12560606387716374749.Spec := by
  intro n
  simp only [A366918, Nat.add_sub_cancel]

end A366918

/-! ## A366918.P7810847825882803765

`or(A008480(n+1), A121373(A103315(n+1)))`
-/

namespace A366918.P7810847825882803765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A008480 (n + 1)) (A121373 (A103315 (n + 1)).toNat)

end

end A366918.P7810847825882803765

namespace A366918

/-- `or(A008480(n+1), A121373(A103315(n+1)))` -/
def P7810847825882803765.Spec : Prop :=
  ∀ n, P7810847825882803765.a n = A366918 (n + 1)

end A366918

/-!
# A366919: a(n) = Sum_{k=1..n} (-1)^k*k^n*floor(n/k).

The programs for A366919, there is no canonical definition to state claims against.
-/

/-! ## A366919.P11524187872739362151

`(-1)^(n+1)*A308313(n+1)`
-/

namespace A366919.P11524187872739362151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ (n + 1) * A308313 (n + 1)

end

end A366919.P11524187872739362151

/-!
# A366921: a(n) is the least prime factor > 3 of 10^n - 1.

The programs for A366921, there is no canonical definition to state claims against.
-/

/-! ## A366921.P14497700385627251156

`A007138(A007947(n+2)%A087886(2*(n+2)))`
-/

namespace A366921.P14497700385627251156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007138 (Int.tmod (A007947 (n + 2)) (A087886 (2 * (n + 2)))).toNat

end

end A366921.P14497700385627251156

/-!
# A366922: a(n) is the exponent of 3 in the prime factorization of 10^n - 1.

The programs for A366922, the canonical program `A366922.P8080897665247785144` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A366922 has offset 1).

The definition of A366922 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A366922.P8080897665247785144

`A051064(n+1)+1`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A366922

/-- `A051064(n+1)+1` -/
def P8080897665247785144.Spec : Prop :=
  ∀ n, P8080897665247785144.a n = A366922 (n + 1)

theorem P8080897665247785144.correct : P8080897665247785144.Spec := by
  intro n
  simp only [A366922, Nat.add_sub_cancel]

end A366922

/-! ## A366922.P7811243549508208444

`A007949(n+1)+2`
-/

namespace A366922.P7811243549508208444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007949 (n + 1) + 2

end

end A366922.P7811243549508208444

namespace A366922

/-- `A007949(n+1)+2` -/
def P7811243549508208444.Spec : Prop :=
  ∀ n, P7811243549508208444.a n = A366922 (n + 1)

theorem P7811243549508208444.correct : P7811243549508208444.Spec := by
  intro n
  simp only [A366922, Nat.add_sub_cancel, A366922.P7811243549508208444.a, A366922.P8080897665247785144.a, A007949, A007949.P16509802526550351827.a, A051064, A051064.P9470330273706946210.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A366922

/-! ## A366922.P2831401788530255225

`val(10^(n+1)-1, 3)`
-/

namespace A366922.P2831401788530255225
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation ((10 ^ (n + 1) : ℤ) - 1).toNat 3

end

end A366922.P2831401788530255225

namespace A366922

/-- `val(10^(n+1)-1, 3)` -/
def P2831401788530255225.Spec : Prop :=
  ∀ n, (P2831401788530255225.a n : ℤ) = A366922 (n + 1)

end A366922

/-! ## A366922.P14441337730133040814

`val(n+1, 3)+2`
-/

namespace A366922.P14441337730133040814
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (n + 1) 3 + 2

end

end A366922.P14441337730133040814

namespace A366922

/-- `val(n+1, 3)+2` -/
def P14441337730133040814.Spec : Prop :=
  ∀ n, (P14441337730133040814.a n : ℤ) = A366922 (n + 1)

theorem P14441337730133040814.correct : P14441337730133040814.Spec := by
  intro n
  simp only [A366922, Nat.add_sub_cancel, A366922.P14441337730133040814.a, A366922.P8080897665247785144.a, A051064, A051064.P9470330273706946210.a, A007949, A007949.P16509802526550351827.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A366922

/-! ## A366922.P7373076701422100396

`Δ[a(floor(n/3))+n]+1` with `a(0)=0`
-/

namespace A366922.P7373076701422100396
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0] fun n f1 =>
  f1 ⌊(n : ℚ) / 3⌋.toNat + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) + 1

end

end A366922.P7373076701422100396

namespace A366922

/-- `Δ[a(floor(n/3))+n]+1` -/
def P7373076701422100396.Spec : Prop :=
  ∀ n, P7373076701422100396.a n = A366922 (n + 1)

end A366922

/-! ## A366922.P7072333578524111624

`Δ[A054861(n)]+2`
-/

namespace A366922.P7072333578524111624
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054861 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 2

end

end A366922.P7072333578524111624

namespace A366922

/-- `Δ[A054861(n)]+2` -/
def P7072333578524111624.Spec : Prop :=
  ∀ n, P7072333578524111624.a n = A366922 (n + 1)

end A366922

/-! ## A366922.P2085879033403684358

`A030545(val(n+1, 3))`
-/

namespace A366922.P2085879033403684358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030545 (SequenceMachineLib.valuation (n + 1) 3)

end

end A366922.P2085879033403684358

namespace A366922

/-- `A030545(val(n+1, 3))` -/
def P2085879033403684358.Spec : Prop :=
  ∀ n, P2085879033403684358.a n = A366922 (n + 1)

end A366922

/-! ## A366922.P15877695178955451451

`A058321(val(n+1, 3))`
-/

namespace A366922.P15877695178955451451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058321 (SequenceMachineLib.valuation (n + 1) 3)

end

end A366922.P15877695178955451451

namespace A366922

/-- `A058321(val(n+1, 3))` -/
def P15877695178955451451.Spec : Prop :=
  ∀ n, P15877695178955451451.a n = A366922 (n + 1)

end A366922

/-! ## A366922.P6995807061311281126

`ceil(log(A074724(n+1)))`
-/

namespace A366922.P6995807061311281126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.log (A074724 (n + 1) : ℝ)⌉

end

end A366922.P6995807061311281126

namespace A366922

/-- `ceil(log(A074724(n+1)))` -/
def P6995807061311281126.Spec : Prop :=
  ∀ n, P6995807061311281126.a n = A366922 (n + 1)

end A366922

/-! ## A366922.P8551205199149479281

`ceil(ratio[A054390(n)])+1`
-/

namespace A366922.P8551205199149479281
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054390 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(f1 (n + 1) : ℚ) / (f1 n : ℚ)⌉ + 1

end

end A366922.P8551205199149479281

namespace A366922

/-- `ceil(ratio[A054390(n)])+1` -/
def P8551205199149479281.Spec : Prop :=
  ∀ n, P8551205199149479281.a n = A366922 (n + 1)

end A366922

/-! ## A366922.P8868093019849919593

`ceil(ratio[A117535(n)])+1`
-/

namespace A366922.P8868093019849919593
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117535 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(f1 (n + 1) : ℚ) / (f1 n : ℚ)⌉ + 1

end

end A366922.P8868093019849919593

namespace A366922

/-- `ceil(ratio[A117535(n)])+1` -/
def P8868093019849919593.Spec : Prop :=
  ∀ n, P8868093019849919593.a n = A366922 (n + 1)

end A366922

/-! ## A366922.P11767820914959456317

`log2(A318666(n+1))+2`
-/

namespace A366922.P11767820914959456317
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A318666 (n + 1) : ℝ) + 2

end

end A366922.P11767820914959456317

namespace A366922

/-- `log2(A318666(n+1))+2` -/
def P11767820914959456317.Spec : Prop :=
  ∀ n, P11767820914959456317.a n = (A366922 (n + 1) : ℝ)

end A366922

/-! ## A366922.P11783919595122984231

`A371638(n+1)-2*n`
-/

namespace A366922.P11783919595122984231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371638 (n + 1) - (2 * n : ℤ)

end

end A366922.P11783919595122984231

namespace A366922

/-- `A371638(n+1)-2*n` -/
def P11783919595122984231.Spec : Prop :=
  ∀ n, P11783919595122984231.a n = A366922 (n + 1)

theorem P11783919595122984231.correct : P11783919595122984231.Spec := by
  intro n
  simp only [A366922, Nat.add_sub_cancel, A366922.P11783919595122984231.a, A366922.P8080897665247785144.a, A051064, A051064.P9470330273706946210.a, A371638, A371638.P3848879041737044132.a, A007949, A007949.P16509802526550351827.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A366922

/-! ## A366922.P17442822446794908413

`floor(log(A038500(n+1)))+2`
-/

namespace A366922.P17442822446794908413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.log (A038500 (n + 1) : ℝ)⌋ + 2

end

end A366922.P17442822446794908413

namespace A366922

/-- `floor(log(A038500(n+1)))+2` -/
def P17442822446794908413.Spec : Prop :=
  ∀ n, P17442822446794908413.a n = A366922 (n + 1)

end A366922

/-! ## A366922.P1252187871739631731

`A085058(A289814(n))`
-/

namespace A366922.P1252187871739631731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085058 (A289814 n).toNat

end

end A366922.P1252187871739631731

namespace A366922

/-- `A085058(A289814(n))` -/
def P1252187871739631731.Spec : Prop :=
  ∀ n, P1252187871739631731.a n = A366922 (n + 1)

end A366922

/-! ## A366922.P14139173614649939917

`A000005(A074724(n+1))`
-/

namespace A366922.P14139173614649939917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A074724 (n + 1)).toNat

end

end A366922.P14139173614649939917

namespace A366922

/-- `A000005(A074724(n+1))` -/
def P14139173614649939917.Spec : Prop :=
  ∀ n, P14139173614649939917.a n = A366922 (n + 1)

end A366922

/-! ## A366922.P17378573856488688320

`A037852(A038500(n+1))`
-/

namespace A366922.P17378573856488688320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037852 (A038500 (n + 1)).toNat

end

end A366922.P17378573856488688320

namespace A366922

/-- `A037852(A038500(n+1))` -/
def P17378573856488688320.Spec : Prop :=
  ∀ n, P17378573856488688320.a n = A366922 (n + 1)

end A366922

/-! ## A366922.P15927640761521738370

`A001511(A064989(n+1))+1`
-/

namespace A366922.P15927640761521738370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (A064989 (n + 1)).toNat + 1

end

end A366922.P15927640761521738370

namespace A366922

/-- `A001511(A064989(n+1))+1` -/
def P15927640761521738370.Spec : Prop :=
  ∀ n, P15927640761521738370.a n = A366922 (n + 1)

end A366922

/-! ## A366922.P14240031141299184271

`A002325(A065331(n+1))+1`
-/

namespace A366922.P14240031141299184271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002325 (A065331 (n + 1)).toNat + 1

end

end A366922.P14240031141299184271

namespace A366922

/-- `A002325(A065331(n+1))+1` -/
def P14240031141299184271.Spec : Prop :=
  ∀ n, P14240031141299184271.a n = A366922 (n + 1)

end A366922

/-! ## A366922.P16171907756833108281

`A254046(A003602(n+1))+1`
-/

namespace A366922.P16171907756833108281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254046 (A003602 (n + 1)).toNat + 1

end

end A366922.P16171907756833108281

namespace A366922

/-- `A254046(A003602(n+1))+1` -/
def P16171907756833108281.Spec : Prop :=
  ∀ n, P16171907756833108281.a n = A366922 (n + 1)

end A366922

/-!
# A366923: a(n) = A110936(n)/6 for n >= 3.

The programs for A366923, there is no canonical definition to state claims against.
-/

/-! ## A366923.P16636465428858927122

`A110936(n+3)/6`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A366923.P16636465428858927122
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A110936 (n + 3) : ℚ) / 6

end

end A366923.P16636465428858927122

/-!
# A366924: Number of 2n-step walks on square lattice starting and ending at the origin with first step north and avoiding early returns.

The programs for A366924, there is no canonical definition to state claims against.
-/

/-! ## A366924.P17893262158756153442

`A054474(n+1)/4`
-/

namespace A366924.P17893262158756153442
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A054474 (n + 1) : ℚ) / 4

end

end A366924.P17893262158756153442

/-!
# A366925: a(n) = A010575(n)/8 for n>0.

The programs for A366925, there is no canonical definition to state claims against.
-/

/-! ## A366925.P2779814881404620405

`A010575(n+1)/8`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A366925.P2779814881404620405
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A010575 (n + 1) : ℚ) / 8

end

end A366925.P2779814881404620405

/-!
# A366927: Number of distinct primes p used in the mapping of k = k - k/p terminating at 1, where p is any of the prime factors of k.

The programs for A366927, there is no canonical definition to state claims against.
-/

/-! ## A366927.P13281350525122214232

`∑{p}[A127699(n+1), A001221(#)]`
-/

namespace A366927.P13281350525122214232
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127699 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A001221 p

end

end A366927.P13281350525122214232

/-! ## A366927.P3397874921976711127

`∑{p}[A127699(n+1), A001222(#)]`
-/

namespace A366927.P3397874921976711127
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127699 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A001222 p

end

end A366927.P3397874921976711127

/-! ## A366927.P11839325098895911585

`∑{p}[A127699(n+1), A005361(#)]`
-/

namespace A366927.P11839325098895911585
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127699 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A005361 p

end

end A366927.P11839325098895911585

/-! ## A366927.P3520742615239723964

`∑{p}[A127699(n+1), A010051(#)]`
-/

namespace A366927.P3520742615239723964
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127699 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A010051 p

end

end A366927.P3520742615239723964

/-! ## A366927.P16128490369618337530

`∑{p}[A127699(n+1), A354874(#)]`
-/

namespace A366927.P16128490369618337530
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127699 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A354874 p

end

end A366927.P16128490369618337530

/-! ## A366927.P14971630119597984630

`A316555(A078774(n+1))`
-/

namespace A366927.P14971630119597984630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316555 (A078774 (n + 1)).toNat

end

end A366927.P14971630119597984630

/-!
# A366929: Indices of records in A366927.

The programs for A366929, there is no canonical definition to state claims against.
-/

/-! ## A366929.P16732515331204030172

`A322833(A203074(n))`
-/

namespace A366929.P16732515331204030172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322833 (A203074 n).toNat

end

end A366929.P16732515331204030172

/-! ## A366929.P3964132118203711996

`A382951(A367222(n))`
-/

namespace A366929.P3964132118203711996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382951 (A367222 n).toNat

end

end A366929.P3964132118203711996

/-! ## A366929.P12528753644024894198

`record[A020639(A267597(n))]`
-/

namespace A366929.P12528753644024894198
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A267597 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A366929.P12528753644024894198

/-!
# A366931: Least k such that 3*n*k+1 is a prime.

The programs for A366931, there is no canonical definition to state claims against.
-/

/-! ## A366931.P18439480052805095265

`A034693(3*(n+1))`
-/

namespace A366931.P18439480052805095265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034693 (3 * (n + 1))

end

end A366931.P18439480052805095265

/-! ## A366931.P12175988794806989049

`floor(A034694(3*(n+1))/A065190(3*n+2))`
-/

namespace A366931.P12175988794806989049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A034694 (3 * (n + 1)) : ℚ) / (A065190 (3 * n + 2) : ℚ)⌋

end

end A366931.P12175988794806989049

/-! ## A366931.P16302324365115670617

`A072920(A000027(3*(n+1)))-A072920(3*n+2)`
-/

namespace A366931.P16302324365115670617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072920 (A000027 (3 * (n + 1))).toNat - A072920 (3 * n + 2)

end

end A366931.P16302324365115670617

/-! ## A366931.P1995210575727393738

`A392093(A070847(n+1))/A008585(n+1)`
-/

namespace A366931.P1995210575727393738
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A392093 (A070847 (n + 1)).toNat : ℚ) / (A008585 (n + 1) : ℚ)

end

end A366931.P1995210575727393738

/-! ## A366931.P7536849021373250604

`A002264(A070847(n+1))/A002264(3*(n+1))`
-/

namespace A366931.P7536849021373250604
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002264 (A070847 (n + 1)).toNat : ℚ) / (A002264 (3 * (n + 1)) : ℚ)

end

end A366931.P7536849021373250604

/-!
# A366932: Total number of edges formed after n points have been placed in general position on each edge of a triangle (as in A365929).

The programs for A366932, the canonical program `A366932.P9077194622635778395` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A366932 has offset 0).

The definition of A366932 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A366932.P11439074889153351768

`3*(n*(3*n+2)+1)*(n*(n-2)+2)/2`
-/

namespace A366932.P11439074889153351768
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((3 * (n * (3 * n + 2) + 1) : ℤ) * ((n : ℤ) * ((n : ℤ) - 2) + 2) : ℚ) / 2

end

end A366932.P11439074889153351768

namespace A366932

/-- `3*(n*(3*n+2)+1)*(n*(n-2)+2)/2` -/
def P11439074889153351768.Spec : Prop :=
  ∀ n, P11439074889153351768.a n = (A366932 n : ℚ)

theorem P11439074889153351768.correct : P11439074889153351768.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 | 4 =>
      simp [A366932, Nat.add_sub_cancel, A366932.P11439074889153351768.a, A366932.P9077194622635778395.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 5 =>
      have h1 := ih (m + 4) (by omega)
      have h2 := ih (m + 3) (by omega)
      have h3 := ih (m + 2) (by omega)
      have h4 := ih (m + 1) (by omega)
      have h5 := ih m (by omega)
      simp only [A366932, Nat.add_sub_cancel, A366932.P11439074889153351768.a, A366932.P9077194622635778395.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 h5 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 5 - 1 = m + 4 by omega, show m + 5 - 2 = m + 3 by omega, show m + 5 - 3 = m + 2 by omega, show m + 5 - 4 = m + 1 by omega, show m + 5 - 5 = m by omega, show m + 4 < m + 5 by omega, show m + 3 < m + 5 by omega, show m + 2 < m + 5 by omega, show m + 1 < m + 5 by omega, show m < m + 5 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 h5 ⊢
      rw [← h1, ← h2, ← h3, ← h4, ← h5]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A366932

/-! ## A366932.P9077194622635778395

`5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` with `a(0)=3, a(1)=9, a(2)=51, a(3)=255, a(4)=855`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A366932

/-- `5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` -/
def P9077194622635778395.Spec : Prop :=
  ∀ n, P9077194622635778395.a n = A366932 n

theorem P9077194622635778395.correct : P9077194622635778395.Spec := by
  intro n
  simp only [A366932]

end A366932

/-! ## A366932.P3038586527685333793

`A367015(n)+3*A366478(n)-1`
-/

namespace A366932.P3038586527685333793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367015 n + 3 * A366478 n - 1

end

end A366932.P3038586527685333793

namespace A366932

/-- `A367015(n)+3*A366478(n)-1` -/
def P3038586527685333793.Spec : Prop :=
  ∀ n, P3038586527685333793.a n = A366932 n

end A366932

/-! ## A366932.P9613510905989279992

`3*A389626(n)`
-/

namespace A366932.P9613510905989279992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A389626 n

end

end A366932.P9613510905989279992

namespace A366932

/-- `3*A389626(n)` -/
def P9613510905989279992.Spec : Prop :=
  ∀ n, P9613510905989279992.a n = A366932 n

end A366932

/-! ## A366932.P13892013331098158134

`A005563(n+1)+A000217(A000567(n))`
-/

namespace A366932.P13892013331098158134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005563 (n + 1) + A000217 (A000567 n).toNat

end

end A366932.P13892013331098158134

namespace A366932

/-- `A005563(n+1)+A000217(A000567(n))` -/
def P13892013331098158134.Spec : Prop :=
  ∀ n, P13892013331098158134.a n = A366932 n

end A366932

/-! ## A366932.P14085543367434052296

`A132411(n+2)+A000217(A000567(n))`
-/

namespace A366932.P14085543367434052296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132411 (n + 2) + A000217 (A000567 n).toNat

end

end A366932.P14085543367434052296

namespace A366932

/-- `A132411(n+2)+A000217(A000567(n))` -/
def P14085543367434052296.Spec : Prop :=
  ∀ n, P14085543367434052296.a n = A366932 n

end A366932

/-!
# A366933: Expansion of Sum_{k>=1} k^4 * x^k/(1 - x^k)^4.

The programs for A366933, the canonical program `A366933.P12877232169146300968` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A366933 has offset 1).

The definition of A366933 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A366933.P12877232169146300968

`∑{d}[n+1, A001159(#)*A117108((n+1)/#)]`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A366933

/-- `∑{d}[n+1, A001159(#)*A117108((n+1)/#)]` -/
def P12877232169146300968.Spec : Prop :=
  ∀ n, P12877232169146300968.a n = A366933 (n + 1)

theorem P12877232169146300968.correct : P12877232169146300968.Spec := by
  intro n
  simp only [A366933, Nat.add_sub_cancel]

end A366933

/-! ## A366933.P1579409773344840338

`∑{d}[n+1, A309323(#)*A372952((n+1)/#)]`
-/

namespace A366933.P1579409773344840338
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A309323 d * A372952 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A366933.P1579409773344840338

namespace A366933

/-- `∑{d}[n+1, A309323(#)*A372952((n+1)/#)]` -/
def P1579409773344840338.Spec : Prop :=
  ∀ n, P1579409773344840338.a n = A366933 (n + 1)

end A366933

/-!
# A366934: Expansion of Sum_{k>=1} k^5 * x^k/(1 - x^k)^5.

The programs for A366934, the canonical program `A366934.P1436353457771622687` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A366934 has offset 1).

The definition of A366934 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A366934.P1436353457771622687

`∑{d}[n+1, A001160(#)*A117109((n+1)/#)]`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A366934

/-- `∑{d}[n+1, A001160(#)*A117109((n+1)/#)]` -/
def P1436353457771622687.Spec : Prop :=
  ∀ n, P1436353457771622687.a n = A366934 (n + 1)

theorem P1436353457771622687.correct : P1436353457771622687.Spec := by
  intro n
  simp only [A366934, Nat.add_sub_cancel]

end A366934

/-! ## A366934.P10079728171348160216

`∑{d}[n+1, A059378(#)*A073570((n+1)/#)]`
-/

namespace A366934.P10079728171348160216
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A059378 d * A073570 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A366934.P10079728171348160216

namespace A366934

/-- `∑{d}[n+1, A059378(#)*A073570((n+1)/#)]` -/
def P10079728171348160216.Spec : Prop :=
  ∀ n, P10079728171348160216.a n = A366934 (n + 1)

end A366934

/-! ## A366934.P10561752866684838283

`∑{d}[n+1, A343518(#)*A372961((n+1)/#)]`
-/

namespace A366934.P10561752866684838283
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A343518 d * A372961 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A366934.P10561752866684838283

namespace A366934

/-- `∑{d}[n+1, A343518(#)*A372961((n+1)/#)]` -/
def P10561752866684838283.Spec : Prop :=
  ∀ n, P10561752866684838283.a n = A366934 (n + 1)

end A366934

/-!
# A366935: Moduli k for which the number of quadratic residues mod k coprime to k is equal to phi(k)/2^(phi(k)/lambda(k)), where lambda is Carmichael's function.

The programs for A366935, there is no canonical definition to state claims against.
-/

/-! ## A366935.P17307048894511193463

`lt[A034380(n+3), 3]+3`
-/

namespace A366935.P17307048894511193463
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034380 (n + 3)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 3

end

end A366935.P17307048894511193463

/-! ## A366935.P8298866111966457842

`lt[A209435(A353845(n)), n]`
-/

namespace A366935.P8298866111966457842
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209435 (A353845 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A366935.P8298866111966457842

/-! ## A366935.P7665787644124059461

`lt[A222153(A353845(n)), A325274(n)]`
-/

namespace A366935.P7665787644124059461
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222153 (A353845 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325274 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A366935.P7665787644124059461

/-! ## A366935.P2772610998485371438

`lt[A222153(A353845(n)), A326979(n+1)]`
-/

namespace A366935.P2772610998485371438
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222153 (A353845 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326979 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A366935.P2772610998485371438

/-! ## A366935.P1760834613074398665

`lt[A003415(3*n+1), A214231(n+2)]+3`
-/

namespace A366935.P1760834613074398665
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (3 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214231 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 3

end

end A366935.P1760834613074398665

/-!
# A366937: a(n) = Sum_{k=1..n} (-1)^(k-1) * binomial(k+1,2) * floor(n/k).

The programs for A366937, the canonical program `A366937.P17470323213603104180` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A366937 has offset 1).

The definition of A366937 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A366937.P11482742636965850518

`∑[A320900(n+1)]`
-/

namespace A366937.P11482742636965850518
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320900 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A366937.P11482742636965850518

namespace A366937

/-- `∑[A320900(n+1)]` -/
def P11482742636965850518.Spec : Prop :=
  ∀ n, P11482742636965850518.a n = A366937 (n + 1)

end A366937

/-! ## A366937.P17470323213603104180

`∑[∑{d}[n+1, -A089594(#)]]`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A366937

/-- `∑[∑{d}[n+1, -A089594(#)]]` -/
def P17470323213603104180.Spec : Prop :=
  ∀ n, P17470323213603104180.a n = A366937 (n + 1)

theorem P17470323213603104180.correct : P17470323213603104180.Spec := by
  intro n
  simp only [A366937, Nat.add_sub_cancel]

end A366937

/-! ## A366937.P17740083475865860025

`∑[A363598(n+1)+A320901(n+1)]`
-/

namespace A366937.P17740083475865860025
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363598 (n + 1) + A320901 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A366937.P17740083475865860025

namespace A366937

/-- `∑[A363598(n+1)+A320901(n+1)]` -/
def P17740083475865860025.Spec : Prop :=
  ∀ n, P17740083475865860025.a n = A366937 (n + 1)

end A366937

/-! ## A366937.P17734997431961754191

`∑[A363022(n+1)+A321543(n+1)]`
-/

namespace A366937.P17734997431961754191
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363022 (n + 1) + A321543 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A366937.P17734997431961754191

namespace A366937

/-- `∑[A363022(n+1)+A321543(n+1)]` -/
def P17734997431961754191.Spec : Prop :=
  ∀ n, P17734997431961754191.a n = A366937 (n + 1)

end A366937

/-! ## A366937.P15592038531374108705

`∑[A002129(n+1)-A363022(n+1)]`
-/

namespace A366937.P15592038531374108705
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002129 (n + 1) - A363022 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A366937.P15592038531374108705

namespace A366937

/-- `∑[A002129(n+1)-A363022(n+1)]` -/
def P15592038531374108705.Spec : Prop :=
  ∀ n, P15592038531374108705.a n = A366937 (n + 1)

end A366937

/-! ## A366937.P11661389604860437474

`∑[A363629(n+1)-A363630(n+1)]`
-/

namespace A366937.P11661389604860437474
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363629 (n + 1) - A363630 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A366937.P11661389604860437474

namespace A366937

/-- `∑[A363629(n+1)-A363630(n+1)]` -/
def P11661389604860437474.Spec : Prop :=
  ∀ n, P11661389604860437474.a n = A366937 (n + 1)

end A366937

/-! ## A366937.P14105585444031678338

`∑[A363022(n+1)+(-1)^n*A064027(n+1)]`
-/

namespace A366937.P14105585444031678338
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363022 (n + 1) + (-1) ^ n * A064027 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A366937.P14105585444031678338

namespace A366937

/-- `∑[A363022(n+1)+(-1)^n*A064027(n+1)]` -/
def P14105585444031678338.Spec : Prop :=
  ∀ n, P14105585444031678338.a n = A366937 (n + 1)

end A366937

/-!
# A366938: a(n) = Sum_{k=1..n} (-1)^(k-1) * binomial(k+2,3) * floor(n/k).

The programs for A366938, the canonical program `A366938.P18390479391884880701` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A366938 has offset 1).

The definition of A366938 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A366938.P18390479391884880701

`∑[A320901(n+1)]`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A366938

/-- `∑[A320901(n+1)]` -/
def P18390479391884880701.Spec : Prop :=
  ∀ n, P18390479391884880701.a n = A366938 (n + 1)

theorem P18390479391884880701.correct : P18390479391884880701.Spec := by
  intro n
  simp only [A366938, Nat.add_sub_cancel]

end A366938

/-! ## A366938.P7324883726735619117

`∑[A363617(n+1)+A321543(n+1)]`
-/

namespace A366938.P7324883726735619117
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363617 (n + 1) + A321543 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A366938.P7324883726735619117

namespace A366938

/-- `∑[A363617(n+1)+A321543(n+1)]` -/
def P7324883726735619117.Spec : Prop :=
  ∀ n, P7324883726735619117.a n = A366938 (n + 1)

end A366938

/-! ## A366938.P13784865583867800791

`∑[A363630(n+1)-A363631(n+1)]`
-/

namespace A366938.P13784865583867800791
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363630 (n + 1) - A363631 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A366938.P13784865583867800791

namespace A366938

/-- `∑[A363630(n+1)-A363631(n+1)]` -/
def P13784865583867800791.Spec : Prop :=
  ∀ n, P13784865583867800791.a n = A366938 (n + 1)

end A366938

/-! ## A366938.P8431726302612064736

`∑[A363617(n+1)+∑{d}[n+1, A162395(#)]]`
-/

namespace A366938.P8431726302612064736
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363617 (n + 1) + ∑ d ∈ Nat.divisors (f2 n), A162395 d

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A366938.P8431726302612064736

namespace A366938

/-- `∑[A363617(n+1)+∑{d}[n+1, A162395(#)]]` -/
def P8431726302612064736.Spec : Prop :=
  ∀ n, P8431726302612064736.a n = A366938 (n + 1)

end A366938

/-! ## A366938.P4037159022123833097

`∑[A363617(n+1)+2*A050999(n+1)-A001157(n+1)]`
-/

namespace A366938.P4037159022123833097
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363617 (n + 1) + (2 * A050999 (n + 1) - A001157 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A366938.P4037159022123833097

namespace A366938

/-- `∑[A363617(n+1)+2*A050999(n+1)-A001157(n+1)]` -/
def P4037159022123833097.Spec : Prop :=
  ∀ n, P4037159022123833097.a n = A366938 (n + 1)

end A366938

/-! ## A366938.P12637544307923660744

`∑[A363617(n+1)+(2-A296306(n+1))*A050999(n+1)]`
-/

namespace A366938.P12637544307923660744
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363617 (n + 1) + (2 - A296306 (n + 1)) * A050999 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A366938.P12637544307923660744

namespace A366938

/-- `∑[A363617(n+1)+(2-A296306(n+1))*A050999(n+1)]` -/
def P12637544307923660744.Spec : Prop :=
  ∀ n, P12637544307923660744.a n = A366938 (n + 1)

end A366938

/-!
# A366939: a(n) = Sum_{k=1..n} (-1)^(k-1) * binomial(k+3,4) * floor(n/k).

The programs for A366939, the canonical program `A366939.P17023353940093191065` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A366939 has offset 1).

The definition of A366939 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A366939.P8978631607996240334

`∑[A320901(n+1)-A363613(n+1)]`
-/

namespace A366939.P8978631607996240334
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320901 (n + 1) - A363613 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A366939.P8978631607996240334

namespace A366939

/-- `∑[A320901(n+1)-A363613(n+1)]` -/
def P8978631607996240334.Spec : Prop :=
  ∀ n, P8978631607996240334.a n = A366939 (n + 1)

end A366939

/-! ## A366939.P17023353940093191065

`∑[A363630(n+1)-A363631(n+1)-A363613(n+1)]`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A366939

/-- `∑[A363630(n+1)-A363631(n+1)-A363613(n+1)]` -/
def P17023353940093191065.Spec : Prop :=
  ∀ n, P17023353940093191065.a n = A366939 (n + 1)

theorem P17023353940093191065.correct : P17023353940093191065.Spec := by
  intro n
  simp only [A366939, Nat.add_sub_cancel]

end A366939

/-!
# A366941: a(n) is the least k such that k == 1 (mod 6) and k has exactly n prime factors, counted with multiplicity.

The programs for A366941, the canonical program `A366941.P2412982007567132924` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A366941 has offset 1).

The definition of A366941 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 142 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A366941.P8691148851582324529

`ogf((7+25x)/(1-25x^2))`
-/

namespace A366941.P8691148851582324529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [7, 25] [1, 0, -25] n

end

end A366941.P8691148851582324529

namespace A366941

/-- `ogf((7+25x)/(1-25x^2))` -/
def P8691148851582324529.Spec : Prop :=
  ∀ n, P8691148851582324529.a n = A366941 (n + 1)

end A366941

/-! ## A366941.P2412982007567132924

`25*a(n-2)` with `a(0)=7, a(1)=25`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A366941

/-- `25*a(n-2)` -/
def P2412982007567132924.Spec : Prop :=
  ∀ n, (P2412982007567132924.a n : ℤ) = A366941 (n + 1)

theorem P2412982007567132924.correct : P2412982007567132924.Spec := by
  intro n
  simp only [A366941, Nat.add_sub_cancel]

end A366941

/-! ## A366941.P220586932460328675

`∏[25/a(n-1)]` with `a(0)=7`
-/

namespace A366941.P220586932460328675
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [7] fun n f1 =>
  25 / f1 (n - 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A366941.P220586932460328675

namespace A366941

/-- `∏[25/a(n-1)]` -/
def P220586932460328675.Spec : Prop :=
  ∀ n, P220586932460328675.a n = (A366941 (n + 1) : ℚ)

end A366941

/-! ## A366941.P13678335911080794118

`((-1)^n+6)*5^n`
-/

namespace A366941.P13678335911080794118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((-1) ^ n + 6) * (5 ^ n : ℤ)

end

end A366941.P13678335911080794118

namespace A366941

/-- `((-1)^n+6)*5^n` -/
def P13678335911080794118.Spec : Prop :=
  ∀ n, P13678335911080794118.a n = A366941 (n + 1)

theorem P13678335911080794118.correct : P13678335911080794118.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A366941, Nat.add_sub_cancel, A366941.P13678335911080794118.a, A366941.P2412982007567132924.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h2 := ih m (by omega)
      simp only [A366941, Nat.add_sub_cancel, A366941.P13678335911080794118.a, A366941.P2412982007567132924.a, SequenceMachineLib.memo_apply] at h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 2 = m by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h2 ⊢
      rw [← h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A366941

/-! ## A366941.P13531857735147945197

`Δ[A026383(n+1)²/3]`
-/

namespace A366941.P13531857735147945197
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A026383 (n + 1) ^ 2 : ℚ) / 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A366941.P13531857735147945197

namespace A366941

/-- `Δ[A026383(n+1)²/3]` -/
def P13531857735147945197.Spec : Prop :=
  ∀ n, P13531857735147945197.a n = (A366941 (n + 1) : ℚ)

end A366941

/-! ## A366941.P641037321711577408

`Δ[A162963(n+1)²/3]`
-/

namespace A366941.P641037321711577408
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A162963 (n + 1) ^ 2 : ℚ) / 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A366941.P641037321711577408

namespace A366941

/-- `Δ[A162963(n+1)²/3]` -/
def P641037321711577408.Spec : Prop :=
  ∀ n, P641037321711577408.a n = (A366941 (n + 1) : ℚ)

end A366941

/-! ## A366941.P2531149265069302810

`A396584(A042948(n+1))`
-/

namespace A366941.P2531149265069302810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396584 (A042948 (n + 1)).toNat

end

end A366941.P2531149265069302810

namespace A366941

/-- `A396584(A042948(n+1))` -/
def P2531149265069302810.Spec : Prop :=
  ∀ n, P2531149265069302810.a n = A366941 (n + 1)

end A366941

/-! ## A366941.P7713300713712229362

`A396584(A338062(n+1))`
-/

namespace A366941.P7713300713712229362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396584 (A338062 (n + 1)).toNat

end

end A366941.P7713300713712229362

namespace A366941

/-- `A396584(A338062(n+1))` -/
def P7713300713712229362.Spec : Prop :=
  ∀ n, P7713300713712229362.a n = A366941 (n + 1)

end A366941

/-! ## A366941.P6608081127113430794

`A396584(A134451(n+1)+2*n)`
-/

namespace A366941.P6608081127113430794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396584 (A134451 (n + 1) + (2 * n : ℤ)).toNat

end

end A366941.P6608081127113430794

namespace A366941

/-- `A396584(A134451(n+1)+2*n)` -/
def P6608081127113430794.Spec : Prop :=
  ∀ n, P6608081127113430794.a n = A366941 (n + 1)

end A366941

/-! ## A366941.P14076860241159426994

`A096882(n+1)/A016116(n+1)`
-/

namespace A366941.P14076860241159426994
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A096882 (n + 1) : ℚ) / (A016116 (n + 1) : ℚ)

end

end A366941.P14076860241159426994

namespace A366941

/-- `A096882(n+1)/A016116(n+1)` -/
def P14076860241159426994.Spec : Prop :=
  ∀ n, P14076860241159426994.a n = (A366941 (n + 1) : ℚ)

end A366941

/-!
# A366942: Expansion of e.g.f. 1/(1-x-2*x^2-3*x^3).

The programs for A366942, the canonical program `A366942.P10738495289028740508` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A366942 has offset 0).

The definition of A366942 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A366942.P10738495289028740508

`n*(a(n-1)+(n-1)*(2*a(n-2)+(n-2)*3*a(n-3)))` with `a(0)=1, a(1)=1, a(2)=6`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A366942

/-- `n*(a(n-1)+(n-1)*(2*a(n-2)+(n-2)*3*a(n-3)))` -/
def P10738495289028740508.Spec : Prop :=
  ∀ n, P10738495289028740508.a n = A366942 n

theorem P10738495289028740508.correct : P10738495289028740508.Spec := by
  intro n
  simp only [A366942]

end A366942

/-! ## A366942.P6817958406519399778

`A000142(n)*A101822(n)`
-/

namespace A366942.P6817958406519399778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n * A101822 n

end

end A366942.P6817958406519399778

namespace A366942

/-- `A000142(n)*A101822(n)` -/
def P6817958406519399778.Spec : Prop :=
  ∀ n, P6817958406519399778.a n = A366942 n

end A366942

/-!
# A366944: Lexicographically earliest sequence of distinct terms > 0 such that any digit d jumping to the right over d digits lands on an odd digit.

The programs for A366944, there is no canonical definition to state claims against.
-/

/-! ## A366944.P16186224289747515221

`lt[n/7, A235875(n+1)]`
-/

namespace A366944.P16186224289747515221
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / 7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235875 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℚ)) n

end

end A366944.P16186224289747515221

/-! ## A366944.P12857272160448626432

`lt[∑[A144385(2*(n+1))], 30^∑{e}[n+1, #]]`
-/

namespace A366944.P12857272160448626432
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144385 (2 * (n + 1))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  30 ^ (∑ p ∈ Nat.primeFactors (f4 n), Nat.factorization (f4 n) p)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℤ)) n

end

end A366944.P12857272160448626432

/-! ## A366944.P5261293391790049801

`A289351(A187829(n+1))`
-/

namespace A366944.P5261293391790049801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289351 (A187829 (n + 1)).toNat

end

end A366944.P5261293391790049801

/-! ## A366944.P7202276831521250913

`eq[A045887(n), A151660(n)]`
-/

namespace A366944.P7202276831521250913
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045887 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151660 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A366944.P7202276831521250913

/-! ## A366944.P16900247077766200138

`eq[A151660(n), A342845(n)]`
-/

namespace A366944.P16900247077766200138
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151660 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342845 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A366944.P16900247077766200138

/-!
# A366950: Expansion of e.g.f. exp(x^2+3*x^3).

The programs for A366950, there is no canonical definition to state claims against.
-/

/-! ## A366950.P8315065117826638954

`A376512(n)*A376566(A376565(n))`
-/

namespace A366950.P8315065117826638954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376512 n * A376566 (A376565 n).toNat

end

end A366950.P8315065117826638954

/-! ## A366950.P4570027977441498256

`A216718(A005211(n+3))*A325504(n)`
-/

namespace A366950.P4570027977441498256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216718 (A005211 (n + 3)).toNat * A325504 n

end

end A366950.P4570027977441498256

/-!
# A366951: a(n) = 2*(p_n - 1)/A060305(n) iff p_n == +/ - 1 (mod 5), 2*(p_n + 1)/A060305(n) iff p_n == +/ - 2 (mod 5), 0 iff p_n = 5.

The programs for A366951, there is no canonical definition to state claims against.
-/

/-! ## A366951.P11448433784519417467

`A247506(n)+A060398(A126298(2*n+3))`
-/

namespace A366951.P11448433784519417467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247506 n + A060398 (A126298 (2 * n + 3)).toNat

end

end A366951.P11448433784519417467

/-!
# A366953: Expansion of e.g.f. -log(1 - x^2/(1-x)^3).

The programs for A366953, there is no canonical definition to state claims against.
-/

/-! ## A366953.P7454465240833400484

`A292579(n*A274278(n))`
-/

namespace A366953.P7454465240833400484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292579 ((n : ℤ) * A274278 n).toNat

end

end A366953.P7454465240833400484

/-! ## A366953.P9252241355485232483

`A386514(n)+A008683(A386517(n))`
-/

namespace A366953.P9252241355485232483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386514 n + A008683 (A386517 n).toNat

end

end A366953.P9252241355485232483

/-!
# A366954: The sum of the divisors of the concatenation of 1,2,3,...,n.

The programs for A366954, the canonical program `A366954.P17097097769443543691` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A366954 has offset 1).

The definition of A366954 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A366954.P17097097769443543691

`A000203(A007908(n+1))`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A366954

/-- `A000203(A007908(n+1))` -/
def P17097097769443543691.Spec : Prop :=
  ∀ n, P17097097769443543691.a n = A366954 (n + 1)

theorem P17097097769443543691.correct : P17097097769443543691.Spec := by
  intro n
  simp only [A366954, Nat.add_sub_cancel]

end A366954

/-! ## A366954.P15787899292315573122

`∑{d}[∑[∑[10^n]], #]`
-/

namespace A366954.P15787899292315573122
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10 ^ n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), d

end

end A366954.P15787899292315573122

namespace A366954

/-- `∑{d}[∑[∑[10^n]], #]` -/
def P15787899292315573122.Spec : Prop :=
  ∀ n, (P15787899292315573122.a n : ℤ) = A366954 (n + 1)

end A366954

/-!
# A366955: a(n) is the Euler totient function of the concatenation of 1,2,3,...,n.

The programs for A366955, the canonical program `A366955.P14364530625403978192` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A366955 has offset 1).

The definition of A366955 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A366955.P14364530625403978192

`A000010(A007908(n+1))`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A366955

/-- `A000010(A007908(n+1))` -/
def P14364530625403978192.Spec : Prop :=
  ∀ n, P14364530625403978192.a n = A366955 (n + 1)

theorem P14364530625403978192.correct : P14364530625403978192.Spec := by
  intro n
  simp only [A366955, Nat.add_sub_cancel]

end A366955

/-! ## A366955.P14720288675748470199

`A000010(A099669(n+1)/A239452(n+1))`
-/

namespace A366955.P14720288675748470199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (SequenceMachineLib.roundAway ((A099669 (n + 1) : ℚ) / (A239452 (n + 1) : ℚ))).toNat

end

end A366955.P14720288675748470199

namespace A366955

/-- `A000010(A099669(n+1)/A239452(n+1))` -/
def P14720288675748470199.Spec : Prop :=
  ∀ n, P14720288675748470199.a n = A366955 (n + 1)

end A366955

/-!
# A366957: Expansion of e.g.f. 1/(1-x^2-3*x^3).

The programs for A366957, there is no canonical definition to state claims against.
-/

/-! ## A366957.P8638710707777614169

`abs(A000142(n)*A106855(n))`
-/

namespace A366957.P8638710707777614169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000142 n * A106855 n|

end

end A366957.P8638710707777614169

/-! ## A366957.P6468841442845192636

`A371025(A017995(n)+1)`
-/

namespace A366957.P6468841442845192636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371025 (A017995 n + 1).toNat

end

end A366957.P6468841442845192636

/-!
# A366958: Numbers whose difference between the largest and smallest digits is equal to 1.

The programs for A366958, there is no canonical definition to state claims against.
-/

/-! ## A366958.P3149870608017003516

`∩[A031955(n+1), A032981(n+1)]`
-/

namespace A366958.P3149870608017003516
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031955 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032981 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A366958.P3149870608017003516

/-! ## A366958.P3495433374471526390

`∩[A031955(n+1), A134336(n+1)]`
-/

namespace A366958.P3495433374471526390
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031955 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134336 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A366958.P3495433374471526390

/-! ## A366958.P14809984041073288172

`∩[A031955(n+1), A082927(n+1)]`
-/

namespace A366958.P14809984041073288172
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031955 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082927 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A366958.P14809984041073288172

/-! ## A366958.P13395130225012237779

`eq[1, A037904(n+1)]+1`
-/

namespace A366958.P13395130225012237779
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037904 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A366958.P13395130225012237779

/-! ## A366958.P15116028911987636172

`eq[1, A037904(A028310(n))]`
-/

namespace A366958.P15116028911987636172
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037904 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A366958.P15116028911987636172

/-! ## A366958.P7248096233723112093

`eq[1, A008960(A151950(n))]`
-/

namespace A366958.P7248096233723112093
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008960 (A151950 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A366958.P7248096233723112093

/-! ## A366958.P179282501077254224

`eq[2, A003602(A086066(n))]`
-/

namespace A366958.P179282501077254224
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003602 (A086066 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A366958.P179282501077254224

/-! ## A366958.P17400728855800454285

`eq[A054054(n)+1, A054055(n)]`
-/

namespace A366958.P17400728855800454285
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054054 n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054055 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A366958.P17400728855800454285

/-! ## A366958.P5038153674461487237

`eq[1, A037904(A233583(n+1))]`
-/

namespace A366958.P5038153674461487237
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037904 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A366958.P5038153674461487237

/-!
# A366959: Numbers whose difference between the largest and smallest digits is equal to 2.

The programs for A366959, the canonical program `A366959.P2192269047836251233` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A366959 has offset 1).

The definition of A366959 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 487 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A366959.P16773088118032647336

`eq[2, A037904(n+1)]+1`
-/

namespace A366959.P16773088118032647336
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037904 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A366959.P16773088118032647336

namespace A366959

/-- `eq[2, A037904(n+1)]+1` -/
def P16773088118032647336.Spec : Prop :=
  ∀ n, (P16773088118032647336.a n : ℤ) = A366959 (n + 1)

end A366959

/-! ## A366959.P12073374138380490058

`eq[2, A037904(A028310(n))]`
-/

namespace A366959.P12073374138380490058
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037904 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A366959.P12073374138380490058

namespace A366959

/-- `eq[2, A037904(A028310(n))]` -/
def P12073374138380490058.Spec : Prop :=
  ∀ n, (P12073374138380490058.a n : ℤ) = A366959 (n + 1)

end A366959

/-! ## A366959.P4680735681039409705

`A065475(eq[2, A037904(n+1)])`
-/

namespace A366959.P4680735681039409705
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037904 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A366959.P4680735681039409705

namespace A366959

/-- `A065475(eq[2, A037904(n+1)])` -/
def P4680735681039409705.Spec : Prop :=
  ∀ n, P4680735681039409705.a n = A366959 (n + 1)

end A366959

/-! ## A366959.P2192269047836251233

`eq[A054054(n)+2, A054055(n)]`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A366959

/-- `eq[A054054(n)+2, A054055(n)]` -/
def P2192269047836251233.Spec : Prop :=
  ∀ n, (P2192269047836251233.a n : ℤ) = A366959 (n + 1)

theorem P2192269047836251233.correct : P2192269047836251233.Spec := by
  intro n
  simp only [A366959, Nat.add_sub_cancel]

end A366959

/-! ## A366959.P11782069352865368891

`eq[2, A037904(A233583(n+1))]`
-/

namespace A366959.P11782069352865368891
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037904 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A366959.P11782069352865368891

namespace A366959

/-- `eq[2, A037904(A233583(n+1))]` -/
def P11782069352865368891.Spec : Prop :=
  ∀ n, (P11782069352865368891.a n : ℤ) = A366959 (n + 1)

end A366959

/-!
# A366960: Numbers whose difference between the largest and smallest digits is equal to 3.

The programs for A366960, the canonical program `A366960.P14113807688568308762` is in `Seq.B008.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A366960 has offset 1).

The definition of A366960 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 865 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A366960.P14113807688568308762

`eq[3, A037904(n+1)]+1`

The canonical program, it is in `Seq.B008.C001`.
-/

namespace A366960

/-- `eq[3, A037904(n+1)]+1` -/
def P14113807688568308762.Spec : Prop :=
  ∀ n, (P14113807688568308762.a n : ℤ) = A366960 (n + 1)

theorem P14113807688568308762.correct : P14113807688568308762.Spec := by
  intro n
  simp only [A366960, Nat.add_sub_cancel]

end A366960

/-! ## A366960.P4027098204663823578

`eq[3, A037904(A028310(n))]`
-/

namespace A366960.P4027098204663823578
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037904 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A366960.P4027098204663823578

namespace A366960

/-- `eq[3, A037904(A028310(n))]` -/
def P4027098204663823578.Spec : Prop :=
  ∀ n, (P4027098204663823578.a n : ℤ) = A366960 (n + 1)

end A366960

/-! ## A366960.P2210706434166016047

`eq[7, A008960(A151950(n))]`
-/

namespace A366960.P2210706434166016047
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008960 (A151950 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A366960.P2210706434166016047

namespace A366960

/-- `eq[7, A008960(A151950(n))]` -/
def P2210706434166016047.Spec : Prop :=
  ∀ n, (P2210706434166016047.a n : ℤ) = A366960 (n + 1)

end A366960

/-! ## A366960.P11409091531911337825

`eq[4, A319193(A151949(n))]`
-/

namespace A366960.P11409091531911337825
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319193 (A151949 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A366960.P11409091531911337825

namespace A366960

/-- `eq[4, A319193(A151949(n))]` -/
def P11409091531911337825.Spec : Prop :=
  ∀ n, (P11409091531911337825.a n : ℤ) = A366960 (n + 1)

end A366960

/-! ## A366960.P4525890800881992566

`eq[3, A037904(A233583(n+1))]`
-/

namespace A366960.P4525890800881992566
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037904 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A366960.P4525890800881992566

namespace A366960

/-- `eq[3, A037904(A233583(n+1))]` -/
def P4525890800881992566.Spec : Prop :=
  ∀ n, (P4525890800881992566.a n : ℤ) = A366960 (n + 1)

end A366960

/-!
# A366961: Numbers whose difference between the largest and smallest digits is equal to 4.

The programs for A366961, the canonical program `A366961.P17753619816558675089` is in `Seq.B008.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A366961 has offset 1).

The definition of A366961 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1249 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A366961.P17753619816558675089

`eq[4, A037904(n+1)]+1`

The canonical program, it is in `Seq.B008.C001`.
-/

namespace A366961

/-- `eq[4, A037904(n+1)]+1` -/
def P17753619816558675089.Spec : Prop :=
  ∀ n, (P17753619816558675089.a n : ℤ) = A366961 (n + 1)

theorem P17753619816558675089.correct : P17753619816558675089.Spec := by
  intro n
  simp only [A366961, Nat.add_sub_cancel]

end A366961

/-! ## A366961.P7775590716632919375

`eq[4, A037904(A028310(n))]`
-/

namespace A366961.P7775590716632919375
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037904 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A366961.P7775590716632919375

namespace A366961

/-- `eq[4, A037904(A028310(n))]` -/
def P7775590716632919375.Spec : Prop :=
  ∀ n, (P7775590716632919375.a n : ℤ) = A366961 (n + 1)

end A366961

/-! ## A366961.P5855475420487872201

`eq[4, A008960(A151950(n))]`
-/

namespace A366961.P5855475420487872201
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008960 (A151950 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A366961.P5855475420487872201

namespace A366961

/-- `eq[4, A008960(A151950(n))]` -/
def P5855475420487872201.Spec : Prop :=
  ∀ n, (P5855475420487872201.a n : ℤ) = A366961 (n + 1)

end A366961

/-! ## A366961.P1473198521870401411

`eq[3, A364027(A151949(n))]`
-/

namespace A366961.P1473198521870401411
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364027 (A151949 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A366961.P1473198521870401411

namespace A366961

/-- `eq[3, A364027(A151949(n))]` -/
def P1473198521870401411.Spec : Prop :=
  ∀ n, (P1473198521870401411.a n : ℤ) = A366961 (n + 1)

end A366961

/-! ## A366961.P6503170402651782034

`eq[4, A037904(A233583(n+1))]`
-/

namespace A366961.P6503170402651782034
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037904 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A366961.P6503170402651782034

namespace A366961

/-- `eq[4, A037904(A233583(n+1))]` -/
def P6503170402651782034.Spec : Prop :=
  ∀ n, (P6503170402651782034.a n : ℤ) = A366961 (n + 1)

end A366961

/-!
# A366962: Numbers whose difference between the largest and smallest digits is equal to 5.

The programs for A366962, the canonical program `A366962.P16010517358609303097` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A366962 has offset 1).

The definition of A366962 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1567 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A366962.P9308295887964318615

`eq[5, A037904(n+1)]+1`
-/

namespace A366962.P9308295887964318615
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037904 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A366962.P9308295887964318615

namespace A366962

/-- `eq[5, A037904(n+1)]+1` -/
def P9308295887964318615.Spec : Prop :=
  ∀ n, (P9308295887964318615.a n : ℤ) = A366962 (n + 1)

end A366962

/-! ## A366962.P16620165201300840049

`eq[5, A037904(A028310(n))]`
-/

namespace A366962.P16620165201300840049
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037904 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A366962.P16620165201300840049

namespace A366962

/-- `eq[5, A037904(A028310(n))]` -/
def P16620165201300840049.Spec : Prop :=
  ∀ n, (P16620165201300840049.a n : ℤ) = A366962 (n + 1)

end A366962

/-! ## A366962.P885130182688111456

`eq[5, A008960(A151950(n))]`
-/

namespace A366962.P885130182688111456
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008960 (A151950 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A366962.P885130182688111456

namespace A366962

/-- `eq[5, A008960(A151950(n))]` -/
def P885130182688111456.Spec : Prop :=
  ∀ n, (P885130182688111456.a n : ℤ) = A366962 (n + 1)

end A366962

/-! ## A366962.P11879380242089418024

`A020725(eq[5, A037904(n+1)])`
-/

namespace A366962.P11879380242089418024
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037904 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A366962.P11879380242089418024

namespace A366962

/-- `A020725(eq[5, A037904(n+1)])` -/
def P11879380242089418024.Spec : Prop :=
  ∀ n, P11879380242089418024.a n = A366962 (n + 1)

end A366962

/-! ## A366962.P3118157847423899840

`A065475(eq[5, A037904(n+1)])`
-/

namespace A366962.P3118157847423899840
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037904 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A366962.P3118157847423899840

namespace A366962

/-- `A065475(eq[5, A037904(n+1)])` -/
def P3118157847423899840.Spec : Prop :=
  ∀ n, P3118157847423899840.a n = A366962 (n + 1)

end A366962

/-! ## A366962.P16010517358609303097

`eq[A054054(n)+2, A054055(n)-3]`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A366962

/-- `eq[A054054(n)+2, A054055(n)-3]` -/
def P16010517358609303097.Spec : Prop :=
  ∀ n, (P16010517358609303097.a n : ℤ) = A366962 (n + 1)

theorem P16010517358609303097.correct : P16010517358609303097.Spec := by
  intro n
  simp only [A366962, Nat.add_sub_cancel]

end A366962

/-!
# A366963: Numbers whose difference between the largest and smallest digits is equal to 6.

The programs for A366963, the canonical program `A366963.P13437376339825858114` is in `Seq.B008.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A366963 has offset 1).

The definition of A366963 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1747 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A366963.P13437376339825858114

`eq[6, A037904(n+1)]+1`

The canonical program, it is in `Seq.B008.C001`.
-/

namespace A366963

/-- `eq[6, A037904(n+1)]+1` -/
def P13437376339825858114.Spec : Prop :=
  ∀ n, (P13437376339825858114.a n : ℤ) = A366963 (n + 1)

theorem P13437376339825858114.correct : P13437376339825858114.Spec := by
  intro n
  simp only [A366963, Nat.add_sub_cancel]

end A366963

/-! ## A366963.P10227351639750406535

`eq[4, A037904(gcd(n, C(2, n)))-2]`
-/

namespace A366963.P10227351639750406535
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037904 (Nat.gcd n (Nat.choose 2 n)) - 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A366963.P10227351639750406535

namespace A366963

/-- `eq[4, A037904(gcd(n, C(2, n)))-2]` -/
def P10227351639750406535.Spec : Prop :=
  ∀ n, (P10227351639750406535.a n : ℤ) = A366963 (n + 1)

end A366963

/-! ## A366963.P1948599894924203964

`eq[6, A037904(A028310(n))]`
-/

namespace A366963.P1948599894924203964
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037904 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A366963.P1948599894924203964

namespace A366963

/-- `eq[6, A037904(A028310(n))]` -/
def P1948599894924203964.Spec : Prop :=
  ∀ n, (P1948599894924203964.a n : ℤ) = A366963 (n + 1)

end A366963

/-! ## A366963.P18207881291666717336

`eq[6, A008960(A151950(n))]`
-/

namespace A366963.P18207881291666717336
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008960 (A151950 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A366963.P18207881291666717336

namespace A366963

/-- `eq[6, A008960(A151950(n))]` -/
def P18207881291666717336.Spec : Prop :=
  ∀ n, (P18207881291666717336.a n : ℤ) = A366963 (n + 1)

end A366963

/-! ## A366963.P17614995493102139765

`eq[6, A037904(A233583(n+1))]`
-/

namespace A366963.P17614995493102139765
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037904 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A366963.P17614995493102139765

namespace A366963

/-- `eq[6, A037904(A233583(n+1))]` -/
def P17614995493102139765.Spec : Prop :=
  ∀ n, (P17614995493102139765.a n : ℤ) = A366963 (n + 1)

end A366963

/-!
# A366964: Numbers whose difference between the largest and smallest digits is equal to 7.

The programs for A366964, the canonical program `A366964.P211205205802012678` is in `Seq.B008.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A366964 has offset 1).

The definition of A366964 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1717 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A366964.P211205205802012678

`eq[7, A037904(n+1)]+1`

The canonical program, it is in `Seq.B008.C001`.
-/

namespace A366964

/-- `eq[7, A037904(n+1)]+1` -/
def P211205205802012678.Spec : Prop :=
  ∀ n, (P211205205802012678.a n : ℤ) = A366964 (n + 1)

theorem P211205205802012678.correct : P211205205802012678.Spec := by
  intro n
  simp only [A366964, Nat.add_sub_cancel]

end A366964

/-! ## A366964.P7625708158737353227

`eq[3, A008960(A151950(n))]`
-/

namespace A366964.P7625708158737353227
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008960 (A151950 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A366964.P7625708158737353227

namespace A366964

/-- `eq[3, A008960(A151950(n))]` -/
def P7625708158737353227.Spec : Prop :=
  ∀ n, (P7625708158737353227.a n : ℤ) = A366964 (n + 1)

end A366964

/-! ## A366964.P16653924144335350049

`eq[7, A037904(A028310(n))]`
-/

namespace A366964.P16653924144335350049
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037904 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A366964.P16653924144335350049

namespace A366964

/-- `eq[7, A037904(A028310(n))]` -/
def P16653924144335350049.Spec : Prop :=
  ∀ n, (P16653924144335350049.a n : ℤ) = A366964 (n + 1)

end A366964

/-!
# A366965: Numbers whose difference between the largest and smallest digits is equal to 8.

The programs for A366965, the canonical program `A366965.P15368654095798603801` is in `Seq.B008.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A366965 has offset 1).

The definition of A366965 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1405 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A366965.P15368654095798603801

`eq[8, A037904(n+1)]+1`

The canonical program, it is in `Seq.B008.C001`.
-/

namespace A366965

/-- `eq[8, A037904(n+1)]+1` -/
def P15368654095798603801.Spec : Prop :=
  ∀ n, (P15368654095798603801.a n : ℤ) = A366965 (n + 1)

theorem P15368654095798603801.correct : P15368654095798603801.Spec := by
  intro n
  simp only [A366965, Nat.add_sub_cancel]

end A366965

/-! ## A366965.P5418941150749218821

`eq[2, A008960(A151950(n))]`
-/

namespace A366965.P5418941150749218821
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008960 (A151950 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A366965.P5418941150749218821

namespace A366965

/-- `eq[2, A008960(A151950(n))]` -/
def P5418941150749218821.Spec : Prop :=
  ∀ n, (P5418941150749218821.a n : ℤ) = A366965 (n + 1)

end A366965

/-! ## A366965.P1016486531484415308

`eq[8, A037904(A028310(n))]`
-/

namespace A366965.P1016486531484415308
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037904 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A366965.P1016486531484415308

namespace A366965

/-- `eq[8, A037904(A028310(n))]` -/
def P1016486531484415308.Spec : Prop :=
  ∀ n, (P1016486531484415308.a n : ℤ) = A366965 (n + 1)

end A366965

/-! ## A366965.P7322517831219230765

`A065475(eq[8, A037904(n+1)])`
-/

namespace A366965.P7322517831219230765
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037904 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A366965.P7322517831219230765

namespace A366965

/-- `A065475(eq[8, A037904(n+1)])` -/
def P7322517831219230765.Spec : Prop :=
  ∀ n, P7322517831219230765.a n = A366965 (n + 1)

end A366965

/-! ## A366965.P17177148712194455632

`eq[2, A318334(A151949(n))]`
-/

namespace A366965.P17177148712194455632
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318334 (A151949 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A366965.P17177148712194455632

namespace A366965

/-- `eq[2, A318334(A151949(n))]` -/
def P17177148712194455632.Spec : Prop :=
  ∀ n, (P17177148712194455632.a n : ℤ) = A366965 (n + 1)

end A366965

/-!
# A366966: Numbers whose difference between the largest and smallest digits is equal to 9.

The programs for A366966, there is no canonical definition to state claims against.
-/

/-! ## A366966.P14379680936760511867

`∩[A011539(n+1), A011540(n+1)]`
-/

namespace A366966.P14379680936760511867
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011539 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011540 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A366966.P14379680936760511867

/-! ## A366966.P14988838694894008206

`∩[A011539(n+1), A098394(n+1)]`
-/

namespace A366966.P14988838694894008206
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011539 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098394 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A366966.P14988838694894008206

/-! ## A366966.P17631792501907637972

`filter[A011539(n+1), A217096(#)]`
-/

namespace A366966.P17631792501907637972
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011539 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A217096 (f1 j).toNat = 1) n)

end

end A366966.P17631792501907637972

/-! ## A366966.P202663833133784092

`A039401(n+1)-A107846(A004394(n+1))`
-/

namespace A366966.P202663833133784092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039401 (n + 1) - A107846 (A004394 (n + 1)).toNat

end

end A366966.P202663833133784092

/-! ## A366966.P2383542794222552300

`A039401(n+1)+A016389(A193560(n))`
-/

namespace A366966.P2383542794222552300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039401 (n + 1) + A016389 (A193560 n).toNat

end

end A366966.P2383542794222552300

/-!
# A366967: a(n) = Sum_{k=2..n} binomial(k,2) * floor(n/k).

The programs for A366967, the canonical program `A366967.P15258383013760261162` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A366967 has offset 1).

The definition of A366967 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A064602, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A366967.P15258383013760261162

`(A064602(n+1)-A024916(n+1))/2`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A366967

/-- `(A064602(n+1)-A024916(n+1))/2` -/
def P15258383013760261162.Spec : Prop :=
  ∀ n, P15258383013760261162.a n = (A366967 (n + 1) : ℚ)

end A366967

/-! ## A366967.P10876196250699384476

`∑[∑{d}[n+1, C(#, 2)]]`
-/

namespace A366967.P10876196250699384476
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), Nat.choose d 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A366967.P10876196250699384476

namespace A366967

/-- `∑[∑{d}[n+1, C(#, 2)]]` -/
def P10876196250699384476.Spec : Prop :=
  ∀ n, (P10876196250699384476.a n : ℤ) = A366967 (n + 1)

end A366967

/-! ## A366967.P2418684674884150434

`∑[∑{d}[n+1, #²-#]]/2`
-/

namespace A366967.P2418684674884150434
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), ((d ^ 2 : ℤ) - (d : ℤ))

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 2

end

end A366967.P2418684674884150434

namespace A366967

/-- `∑[∑{d}[n+1, #²-#]]/2` -/
def P2418684674884150434.Spec : Prop :=
  ∀ n, P2418684674884150434.a n = (A366967 (n + 1) : ℚ)

end A366967

/-! ## A366967.P482797185090059774

`∑[A069153(n+1)]`
-/

namespace A366967.P482797185090059774
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069153 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A366967.P482797185090059774

namespace A366967

/-- `∑[A069153(n+1)]` -/
def P482797185090059774.Spec : Prop :=
  ∀ n, P482797185090059774.a n = A366967 (n + 1)

end A366967

/-! ## A366967.P11758316501755539203

`∑[A086666(n+1)/2]`
-/

namespace A366967.P11758316501755539203
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A086666 (n + 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A366967.P11758316501755539203

namespace A366967

/-- `∑[A086666(n+1)/2]` -/
def P11758316501755539203.Spec : Prop :=
  ∀ n, P11758316501755539203.a n = (A366967 (n + 1) : ℚ)

end A366967

/-! ## A366967.P16085851775392593165

`A366970(n+1)+A236632(n+1)`
-/

namespace A366967.P16085851775392593165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366970 (n + 1) + A236632 (n + 1)

end

end A366967.P16085851775392593165

namespace A366967

/-- `A366970(n+1)+A236632(n+1)` -/
def P16085851775392593165.Spec : Prop :=
  ∀ n, P16085851775392593165.a n = A366967 (n + 1)

end A366967

/-! ## A366967.P17341445090889808770

`A364970(n+1)-A024916(n+1)`
-/

namespace A366967.P17341445090889808770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364970 (n + 1) - A024916 (n + 1)

end

end A366967.P17341445090889808770

namespace A366967

/-- `A364970(n+1)-A024916(n+1)` -/
def P17341445090889808770.Spec : Prop :=
  ∀ n, P17341445090889808770.a n = A366967 (n + 1)

end A366967

/-! ## A366967.P15215648695886055776

`A064602(n+1)-A364970(n+1)`
-/

namespace A366967.P15215648695886055776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064602 (n + 1) - A364970 (n + 1)

end

end A366967.P15215648695886055776

namespace A366967

/-- `A064602(n+1)-A364970(n+1)` -/
def P15215648695886055776.Spec : Prop :=
  ∀ n, P15215648695886055776.a n = A366967 (n + 1)

end A366967

/-! ## A366967.P13107060139509216919

`∑[A007437(n+1)-A000203(n+1)]`
-/

namespace A366967.P13107060139509216919
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007437 (n + 1) - A000203 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A366967.P13107060139509216919

namespace A366967

/-- `∑[A007437(n+1)-A000203(n+1)]` -/
def P13107060139509216919.Spec : Prop :=
  ∀ n, P13107060139509216919.a n = A366967 (n + 1)

end A366967

/-! ## A366967.P831537045841308156

`A024916(n+1)+A366970(n+1)-A006218(n+1)`
-/

namespace A366967.P831537045841308156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024916 (n + 1) + (A366970 (n + 1) - A006218 (n + 1))

end

end A366967.P831537045841308156

namespace A366967

/-- `A024916(n+1)+A366970(n+1)-A006218(n+1)` -/
def P831537045841308156.Spec : Prop :=
  ∀ n, P831537045841308156.a n = A366967 (n + 1)

end A366967

/-! ## A366967.P408243555373801184

`A366984(n+1)-(A366983(n+1)+A024916(n+1))`
-/

namespace A366967.P408243555373801184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366984 (n + 1) - (A366983 (n + 1) + A024916 (n + 1))

end

end A366967.P408243555373801184

namespace A366967

/-- `A366984(n+1)-(A366983(n+1)+A024916(n+1))` -/
def P408243555373801184.Spec : Prop :=
  ∀ n, P408243555373801184.a n = A366967 (n + 1)

end A366967

/-!
# A366968: a(n) = Sum_{k=3..n} floor(n/k).

The programs for A366968, the canonical program `A366968.P12168866110842971525` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A366968 has offset 1).

The definition of A366968 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A366968.P12168866110842971525

`A006218(n+1)-(n+1)-floor((n+1)/2)`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A366968

/-- `A006218(n+1)-(n+1)-floor((n+1)/2)` -/
def P12168866110842971525.Spec : Prop :=
  ∀ n, P12168866110842971525.a n = A366968 (n + 1)

theorem P12168866110842971525.correct : P12168866110842971525.Spec := by
  intro n
  simp only [A366968, Nat.add_sub_cancel]

end A366968

/-! ## A366968.P11582447846684515456

`∑[∑{d}[n+1, 2%#/2]]`
-/

namespace A366968.P11582447846684515456
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), ((2 % d : ℕ) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A366968.P11582447846684515456

namespace A366968

/-- `∑[∑{d}[n+1, 2%#/2]]` -/
def P11582447846684515456.Spec : Prop :=
  ∀ n, P11582447846684515456.a n = (A366968 (n + 1) : ℚ)

end A366968

/-! ## A366968.P345893798243359050

`∑[∑{d}[n+1, (1-C(2, #))²]-1]`
-/

namespace A366968.P345893798243359050
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), (1 - (Nat.choose 2 d : ℤ)) ^ 2 - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A366968.P345893798243359050

namespace A366968

/-- `∑[∑{d}[n+1, (1-C(2, #))²]-1]` -/
def P345893798243359050.Spec : Prop :=
  ∀ n, P345893798243359050.a n = A366968 (n + 1)

end A366968

/-! ## A366968.P17396090335338958266

`∑[A023645(n+1)]`
-/

namespace A366968.P17396090335338958266
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023645 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A366968.P17396090335338958266

namespace A366968

/-- `∑[A023645(n+1)]` -/
def P17396090335338958266.Spec : Prop :=
  ∀ n, P17396090335338958266.a n = A366968 (n + 1)

end A366968

/-! ## A366968.P1631120717205163252

`∑[A076984(n+1)-1]`
-/

namespace A366968.P1631120717205163252
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076984 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A366968.P1631120717205163252

namespace A366968

/-- `∑[A076984(n+1)-1]` -/
def P1631120717205163252.Spec : Prop :=
  ∀ n, P1631120717205163252.a n = A366968 (n + 1)

end A366968

/-! ## A366968.P2416311586843505840

`∑[A062558(n+1)-2]`
-/

namespace A366968.P2416311586843505840
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062558 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A366968.P2416311586843505840

namespace A366968

/-- `∑[A062558(n+1)-2]` -/
def P2416311586843505840.Spec : Prop :=
  ∀ n, P2416311586843505840.a n = A366968 (n + 1)

end A366968

/-! ## A366968.P5026899164682828138

`∑[A296966(n+1)/(n+1)]`
-/

namespace A366968.P5026899164682828138
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A296966 (n + 1) : ℚ) / (n + 1 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A366968.P5026899164682828138

namespace A366968

/-- `∑[A296966(n+1)/(n+1)]` -/
def P5026899164682828138.Spec : Prop :=
  ∀ n, P5026899164682828138.a n = (A366968 (n + 1) : ℚ)

end A366968

/-! ## A366968.P15331066388984022585

`∑[A303873(n+1)/(n+1)²]`
-/

namespace A366968.P15331066388984022585
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A303873 (n + 1) : ℚ) / ((n + 1) ^ 2 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A366968.P15331066388984022585

namespace A366968

/-- `∑[A303873(n+1)/(n+1)²]` -/
def P15331066388984022585.Spec : Prop :=
  ∀ n, P15331066388984022585.a n = (A366968 (n + 1) : ℚ)

end A366968

/-! ## A366968.P367126240853053709

`A077597(n)-A007494(n)`
-/

namespace A366968.P367126240853053709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077597 n - A007494 n

end

end A366968.P367126240853053709

namespace A366968

/-- `A077597(n)-A007494(n)` -/
def P367126240853053709.Spec : Prop :=
  ∀ n, P367126240853053709.a n = A366968 (n + 1)

end A366968

/-! ## A366968.P16829087404183495014

`A002541(n+1)-A110654(n)`
-/

namespace A366968.P16829087404183495014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002541 (n + 1) - A110654 n

end

end A366968.P16829087404183495014

namespace A366968

/-- `A002541(n+1)-A110654(n)` -/
def P16829087404183495014.Spec : Prop :=
  ∀ n, P16829087404183495014.a n = A366968 (n + 1)

end A366968

/-! ## A366968.P10888751357250190646

`A007590(n)-A161664(n+1)`
-/

namespace A366968.P10888751357250190646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007590 n - A161664 (n + 1)

end

end A366968.P10888751357250190646

namespace A366968

/-- `A007590(n)-A161664(n+1)` -/
def P10888751357250190646.Spec : Prop :=
  ∀ n, P10888751357250190646.a n = A366968 (n + 1)

end A366968

/-! ## A366968.P7635465707628832345

`A156745(n+1)-A075328(n)`
-/

namespace A366968.P7635465707628832345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156745 (n + 1) - A075328 n

end

end A366968.P7635465707628832345

namespace A366968

/-- `A156745(n+1)-A075328(n)` -/
def P7635465707628832345.Spec : Prop :=
  ∀ n, P7635465707628832345.a n = A366968 (n + 1)

end A366968

/-! ## A366968.P14933782857796430353

`A397992(n)-A074148(n+1)`
-/

namespace A366968.P14933782857796430353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397992 n - A074148 (n + 1)

end

end A366968.P14933782857796430353

namespace A366968

/-- `A397992(n)-A074148(n+1)` -/
def P14933782857796430353.Spec : Prop :=
  ∀ n, P14933782857796430353.a n = A366968 (n + 1)

end A366968

/-! ## A366968.P13183599451042237526

`∑[A000005(n+1)-A000034(n)]`
-/

namespace A366968.P13183599451042237526
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) - A000034 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A366968.P13183599451042237526

namespace A366968

/-- `∑[A000005(n+1)-A000034(n)]` -/
def P13183599451042237526.Spec : Prop :=
  ∀ n, P13183599451042237526.a n = A366968 (n + 1)

end A366968

/-! ## A366968.P11719973445322675854

`A006218(n+1)-A032766(n+1)`
-/

namespace A366968.P11719973445322675854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 (n + 1) - A032766 (n + 1)

end

end A366968.P11719973445322675854

namespace A366968

/-- `A006218(n+1)-A032766(n+1)` -/
def P11719973445322675854.Spec : Prop :=
  ∀ n, P11719973445322675854.a n = A366968 (n + 1)

end A366968

/-! ## A366968.P3545185087867772097

`A075995(n+1)-A131055(n+1)`
-/

namespace A366968.P3545185087867772097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075995 (n + 1) - A131055 (n + 1)

end

end A366968.P3545185087867772097

namespace A366968

/-- `A075995(n+1)-A131055(n+1)` -/
def P3545185087867772097.Spec : Prop :=
  ∀ n, P3545185087867772097.a n = A366968 (n + 1)

end A366968

/-! ## A366968.P4008671011461828664

`A161886(n+1)-A047209(n+1)`
-/

namespace A366968.P4008671011461828664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161886 (n + 1) - A047209 (n + 1)

end

end A366968.P4008671011461828664

namespace A366968

/-- `A161886(n+1)-A047209(n+1)` -/
def P4008671011461828664.Spec : Prop :=
  ∀ n, P4008671011461828664.a n = A366968 (n + 1)

end A366968

/-! ## A366968.P3173836181346723221

`2*A002620(n)-A161664(n+1)`
-/

namespace A366968.P3173836181346723221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A002620 n - A161664 (n + 1)

end

end A366968.P3173836181346723221

namespace A366968

/-- `2*A002620(n)-A161664(n+1)` -/
def P3173836181346723221.Spec : Prop :=
  ∀ n, P3173836181346723221.a n = A366968 (n + 1)

end A366968

/-! ## A366968.P3944534966462820521

`A002541(n+1)+A004526(n)-n`
-/

namespace A366968.P3944534966462820521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002541 (n + 1) + (A004526 n - (n : ℤ))

end

end A366968.P3944534966462820521

namespace A366968

/-- `A002541(n+1)+A004526(n)-n` -/
def P3944534966462820521.Spec : Prop :=
  ∀ n, P3944534966462820521.a n = A366968 (n + 1)

end A366968

/-! ## A366968.P5054874051986906343

`A006218(n+1)-A336146(2*n+1)`
-/

namespace A366968.P5054874051986906343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 (n + 1) - A336146 (2 * n + 1)

end

end A366968.P5054874051986906343

namespace A366968

/-- `A006218(n+1)-A336146(2*n+1)` -/
def P5054874051986906343.Spec : Prop :=
  ∀ n, P5054874051986906343.a n = A366968 (n + 1)

end A366968

/-!
# A366969: a(n) = Sum_{k=3..n} (k-2) * floor(n/k).

The programs for A366969, the canonical program `A366969.P14722931787794667640` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A366969 has offset 1).

The definition of A366969 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A366969.P14722931787794667640

`n+1+A024916(n+1)-2*A006218(n+1)`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A366969

/-- `n+1+A024916(n+1)-2*A006218(n+1)` -/
def P14722931787794667640.Spec : Prop :=
  ∀ n, P14722931787794667640.a n = A366969 (n + 1)

theorem P14722931787794667640.correct : P14722931787794667640.Spec := by
  intro n
  simp only [A366969, Nat.add_sub_cancel]

end A366969

/-! ## A366969.P4014296376492353606

`∑[∑{d}[n+1, #-2]+1]`
-/

namespace A366969.P4014296376492353606
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), ((d : ℤ) - 2) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A366969.P4014296376492353606

namespace A366969

/-- `∑[∑{d}[n+1, #-2]+1]` -/
def P4014296376492353606.Spec : Prop :=
  ∀ n, P4014296376492353606.a n = A366969 (n + 1)

end A366969

/-! ## A366969.P3910361138134506843

`∑[∑{d}[n+1, (2*n)%#]]`
-/

namespace A366969.P3910361138134506843
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), 2 * n % d

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A366969.P3910361138134506843

namespace A366969

/-- `∑[∑{d}[n+1, (2*n)%#]]` -/
def P3910361138134506843.Spec : Prop :=
  ∀ n, (P3910361138134506843.a n : ℤ) = A366969 (n + 1)

end A366969

/-! ## A366969.P3377141191308951912

`∑[A152771(n+1)]`
-/

namespace A366969.P3377141191308951912
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152771 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A366969.P3377141191308951912

namespace A366969

/-- `∑[A152771(n+1)]` -/
def P3377141191308951912.Spec : Prop :=
  ∀ n, P3377141191308951912.a n = A366969 (n + 1)

end A366969

/-! ## A366969.P16208092161785649063

`A161664(n+1)+A152967(n+1)`
-/

namespace A366969.P16208092161785649063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161664 (n + 1) + A152967 (n + 1)

end

end A366969.P16208092161785649063

namespace A366969

/-- `A161664(n+1)+A152967(n+1)` -/
def P16208092161785649063.Spec : Prop :=
  ∀ n, P16208092161785649063.a n = A366969 (n + 1)

end A366969

/-! ## A366969.P16054303547117775475

`A236632(n+1)-A002541(n+1)`
-/

namespace A366969.P16054303547117775475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236632 (n + 1) - A002541 (n + 1)

end

end A366969.P16054303547117775475

namespace A366969

/-- `A236632(n+1)-A002541(n+1)` -/
def P16054303547117775475.Spec : Prop :=
  ∀ n, P16054303547117775475.a n = A366969 (n + 1)

theorem P16054303547117775475.correct : P16054303547117775475.Spec := by
  intro n
  simp only [A366969, Nat.add_sub_cancel, A366969.P16054303547117775475.a, A366969.P14722931787794667640.a, A002541, A002541.P10664040244727747136.a, A006218, A006218.P9218434490128439557.a, A024916, A024916.P6070136297472608546.a, A236632, A236632.P7240843620257617603.a, A000005, A000005.P16091521709108585461.a, A160664, A160664.P14996881624845338289.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A366969

/-! ## A366969.P13886712688499725461

`2*A161664(n+1)-A004125(n+1)`
-/

namespace A366969.P13886712688499725461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A161664 (n + 1) - A004125 (n + 1)

end

end A366969.P13886712688499725461

namespace A366969

/-- `2*A161664(n+1)-A004125(n+1)` -/
def P13886712688499725461.Spec : Prop :=
  ∀ n, P13886712688499725461.a n = A366969 (n + 1)

end A366969

/-! ## A366969.P14881902622834532436

`A024916(n+1)-(A006218(n+1)+A002541(n+1))`
-/

namespace A366969.P14881902622834532436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024916 (n + 1) - (A006218 (n + 1) + A002541 (n + 1))

end

end A366969.P14881902622834532436

namespace A366969

/-- `A024916(n+1)-(A006218(n+1)+A002541(n+1))` -/
def P14881902622834532436.Spec : Prop :=
  ∀ n, P14881902622834532436.a n = A366969 (n + 1)

theorem P14881902622834532436.correct : P14881902622834532436.Spec := by
  intro n
  simp only [A366969, Nat.add_sub_cancel, A366969.P14881902622834532436.a, A366969.P14722931787794667640.a, A002541, A002541.P10664040244727747136.a, A006218, A006218.P9218434490128439557.a, A024916, A024916.P6070136297472608546.a, A000005, A000005.P16091521709108585461.a, A160664, A160664.P14996881624845338289.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A366969

/-! ## A366969.P9814776230357775658

`∑[A342527(n+1)-(n+1)]`
-/

namespace A366969.P9814776230357775658
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342527 (n + 1) - (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A366969.P9814776230357775658

namespace A366969

/-- `∑[A342527(n+1)-(n+1)]` -/
def P9814776230357775658.Spec : Prop :=
  ∀ n, P9814776230357775658.a n = A366969 (n + 1)

end A366969

/-!
# A366970: a(n) = Sum_{k=3..n} binomial(k-1,2) * floor(n/k).

The programs for A366970, the canonical program `A366970.P12989769328622183636` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A366970 has offset 1).

The definition of A366970 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A064602, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A366970.P12989769328622183636

`(A064602(n+1)-3*A024916(n+1))/2+A006218(n+1)`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A366970

/-- `(A064602(n+1)-3*A024916(n+1))/2+A006218(n+1)` -/
def P12989769328622183636.Spec : Prop :=
  ∀ n, P12989769328622183636.a n = (A366970 (n + 1) : ℚ)

end A366970

/-! ## A366970.P9603592904399840005

`∑[∑{d}[n+1, C(#-1, 2)]]`
-/

namespace A366970.P9603592904399840005
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), Nat.choose ((d : ℤ) - 1).toNat 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A366970.P9603592904399840005

namespace A366970

/-- `∑[∑{d}[n+1, C(#-1, 2)]]` -/
def P9603592904399840005.Spec : Prop :=
  ∀ n, (P9603592904399840005.a n : ℤ) = A366970 (n + 1)

end A366970

/-! ## A366970.P5549937741603486223

`∑[A363610(n+1)]`
-/

namespace A366970.P5549937741603486223
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363610 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A366970.P5549937741603486223

namespace A366970

/-- `∑[A363610(n+1)]` -/
def P5549937741603486223.Spec : Prop :=
  ∀ n, P5549937741603486223.a n = A366970 (n + 1)

end A366970

/-! ## A366970.P16757015399089389605

`A364970(n+1)-A222548(n+1)`
-/

namespace A366970.P16757015399089389605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364970 (n + 1) - A222548 (n + 1)

end

end A366970.P16757015399089389605

namespace A366970

/-- `A364970(n+1)-A222548(n+1)` -/
def P16757015399089389605.Spec : Prop :=
  ∀ n, P16757015399089389605.a n = A366970 (n + 1)

end A366970

/-! ## A366970.P7741622181164011871

`A366967(n+1)-A236632(n+1)`
-/

namespace A366970.P7741622181164011871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366967 (n + 1) - A236632 (n + 1)

end

end A366970.P7741622181164011871

namespace A366970

/-- `A366967(n+1)-A236632(n+1)` -/
def P7741622181164011871.Spec : Prop :=
  ∀ n, P7741622181164011871.a n = A366970 (n + 1)

end A366970

/-! ## A366970.P12250582938785408800

`A006218(n+1)+A366967(n+1)-A024916(n+1)`
-/

namespace A366970.P12250582938785408800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 (n + 1) + (A366967 (n + 1) - A024916 (n + 1))

end

end A366970.P12250582938785408800

namespace A366970

/-- `A006218(n+1)+A366967(n+1)-A024916(n+1)` -/
def P12250582938785408800.Spec : Prop :=
  ∀ n, P12250582938785408800.a n = A366970 (n + 1)

end A366970

/-! ## A366970.P10132351859479935077

`A024916(n+1)+A366967(n+1)-A222548(n+1)`
-/

namespace A366970.P10132351859479935077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024916 (n + 1) + (A366967 (n + 1) - A222548 (n + 1))

end

end A366970.P10132351859479935077

namespace A366970

/-- `A024916(n+1)+A366967(n+1)-A222548(n+1)` -/
def P10132351859479935077.Spec : Prop :=
  ∀ n, P10132351859479935077.a n = A366970 (n + 1)

end A366970

/-!
# A366971: a(n) = Sum_{k=3..n} binomial(k,3) * floor(n/k).

The programs for A366971, the canonical program `A366971.P178044051024339791` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A366971 has offset 1).

The definition of A366971 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A064602, A064603, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A366971.P178044051024339791

`(A064603(n+1)-3*A064602(n+1)+2*A024916(n+1))/6`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A366971

/-- `(A064603(n+1)-3*A064602(n+1)+2*A024916(n+1))/6` -/
def P178044051024339791.Spec : Prop :=
  ∀ n, P178044051024339791.a n = (A366971 (n + 1) : ℚ)

end A366971

/-! ## A366971.P12027816639393363770

`∑[∑{d}[n+1, C(#, 3)]]`
-/

namespace A366971.P12027816639393363770
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), Nat.choose d 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A366971.P12027816639393363770

namespace A366971

/-- `∑[∑{d}[n+1, C(#, 3)]]` -/
def P12027816639393363770.Spec : Prop :=
  ∀ n, (P12027816639393363770.a n : ℤ) = A366971 (n + 1)

end A366971

/-! ## A366971.P11278945397253511094

`∑[A363607(n+1)]`
-/

namespace A366971.P11278945397253511094
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363607 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A366971.P11278945397253511094

namespace A366971

/-- `∑[A363607(n+1)]` -/
def P11278945397253511094.Spec : Prop :=
  ∀ n, P11278945397253511094.a n = A366971 (n + 1)

end A366971

/-! ## A366971.P5133483679105130022

`A365409(n+1)-A064602(n+1)`
-/

namespace A366971.P5133483679105130022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365409 (n + 1) - A064602 (n + 1)

end

end A366971.P5133483679105130022

namespace A366971

/-- `A365409(n+1)-A064602(n+1)` -/
def P5133483679105130022.Spec : Prop :=
  ∀ n, P5133483679105130022.a n = A366971 (n + 1)

end A366971

/-! ## A366971.P7215163601814322070

`∑[A363611(n+1)+A363610(n+1)]`
-/

namespace A366971.P7215163601814322070
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363611 (n + 1) + A363610 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A366971.P7215163601814322070

namespace A366971

/-- `∑[A363611(n+1)+A363610(n+1)]` -/
def P7215163601814322070.Spec : Prop :=
  ∀ n, P7215163601814322070.a n = A366971 (n + 1)

end A366971

/-! ## A366971.P1034735957751992246

`∑[A363604(n+1)]-A366967(n+1)`
-/

namespace A366971.P1034735957751992246
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363604 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A366967 (n + 1)

end

end A366971.P1034735957751992246

namespace A366971

/-- `∑[A363604(n+1)]-A366967(n+1)` -/
def P1034735957751992246.Spec : Prop :=
  ∀ n, P1034735957751992246.a n = A366971 (n + 1)

end A366971

/-!
# A366972: a(n) = Sum_{k=4..n} floor(n/k).

The programs for A366972, the canonical program `A366972.P1635833691368935972` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A366972 has offset 1).

The definition of A366972 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A366972.P1635833691368935972

`A006218(n+1)-(n+1)-floor((n+1)/2)-floor((n+1)/3)`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A366972

/-- `A006218(n+1)-(n+1)-floor((n+1)/2)-floor((n+1)/3)` -/
def P1635833691368935972.Spec : Prop :=
  ∀ n, P1635833691368935972.a n = A366972 (n + 1)

theorem P1635833691368935972.correct : P1635833691368935972.Spec := by
  intro n
  simp only [A366972, Nat.add_sub_cancel]

end A366972

/-! ## A366972.P18055148089269651550

`∑[∑{d}[n+1, C(3%#, 3)]]`
-/

namespace A366972.P18055148089269651550
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), Nat.choose (3 % d) 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A366972.P18055148089269651550

namespace A366972

/-- `∑[∑{d}[n+1, C(3%#, 3)]]` -/
def P18055148089269651550.Spec : Prop :=
  ∀ n, (P18055148089269651550.a n : ℤ) = A366972 (n + 1)

end A366972

/-! ## A366972.P11277241318044187735

`∑[A321014(n+1)]`
-/

namespace A366972.P11277241318044187735
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321014 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A366972.P11277241318044187735

namespace A366972

/-- `∑[A321014(n+1)]` -/
def P11277241318044187735.Spec : Prop :=
  ∀ n, P11277241318044187735.a n = A366972 (n + 1)

end A366972

/-! ## A366972.P9845957475058170164

`A002541(n+1)-A010761(n+1)`
-/

namespace A366972.P9845957475058170164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002541 (n + 1) - A010761 (n + 1)

end

end A366972.P9845957475058170164

namespace A366972

/-- `A002541(n+1)-A010761(n+1)` -/
def P9845957475058170164.Spec : Prop :=
  ∀ n, P9845957475058170164.a n = A366972 (n + 1)

theorem P9845957475058170164.correct : P9845957475058170164.Spec := by
  intro n
  simp only [A366972, Nat.add_sub_cancel, A366972.P9845957475058170164.a, A366972.P1635833691368935972.a, A002541, A002541.P10664040244727747136.a, A006218, A006218.P9218434490128439557.a, A010761, A010761.P16043708694723848795.a, A000005, A000005.P16091521709108585461.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A366972

/-! ## A366972.P212902598366176700

`∑[A000005(n+1)-A083039(n+1)]`
-/

namespace A366972.P212902598366176700
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) - A083039 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A366972.P212902598366176700

namespace A366972

/-- `∑[A000005(n+1)-A083039(n+1)]` -/
def P212902598366176700.Spec : Prop :=
  ∀ n, P212902598366176700.a n = A366972 (n + 1)

end A366972

/-! ## A366972.P9117461521670468538

`∑[A072527(n+4)]`
-/

namespace A366972.P9117461521670468538
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072527 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A366972.P9117461521670468538

namespace A366972

/-- `∑[A072527(n+4)]` -/
def P9117461521670468538.Spec : Prop :=
  ∀ n, P9117461521670468538.a n = A366972 (n + 1)

end A366972

/-! ## A366972.P5699250523117762952

`A049995(n+1)-A049987(n+1)`
-/

namespace A366972.P5699250523117762952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049995 (n + 1) - A049987 (n + 1)

end

end A366972.P5699250523117762952

namespace A366972

/-- `A049995(n+1)-A049987(n+1)` -/
def P5699250523117762952.Spec : Prop :=
  ∀ n, P5699250523117762952.a n = A366972 (n + 1)

end A366972

/-! ## A366972.P15585164233897308741

`∑[A338649(A064988(n+1))]`
-/

namespace A366972.P15585164233897308741
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338649 (A064988 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A366972.P15585164233897308741

namespace A366972

/-- `∑[A338649(A064988(n+1))]` -/
def P15585164233897308741.Spec : Prop :=
  ∀ n, P15585164233897308741.a n = A366972 (n + 1)

end A366972

/-!
# A366973: Smallest odd prime p such that n^((p+1)/2) == n (mod p).

The programs for A366973, there is no canonical definition to state claims against.
-/

/-! ## A366973.P10659578316579180151

`A366982(gcd(A033430(n), A122656(n)))`
-/

namespace A366973.P10659578316579180151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366982 (Int.gcd (A033430 n) (A122656 n))

end

end A366973.P10659578316579180151

/-! ## A366973.P8932947698564221695

`A366982(4*n)%A352542(n)`
-/

namespace A366973.P8932947698564221695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A366982 (4 * n)) (A352542 n)

end

end A366973.P8932947698564221695

/-! ## A366973.P13189686770292746128

`A053670(A069129(n+1)+A051890(n+2))`
-/

namespace A366973.P13189686770292746128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053670 (A069129 (n + 1) + A051890 (n + 2)).toNat

end

end A366973.P13189686770292746128

/-! ## A366973.P12375880591189385817

`A112047(A008598(2*n+3)-4)`
-/

namespace A366973.P12375880591189385817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112047 (A008598 (2 * n + 3) - 4).toNat

end

end A366973.P12375880591189385817

/-! ## A366973.P12684033103082286537

`A366982(A033430(n))`
-/

namespace A366973.P12684033103082286537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366982 (A033430 n).toNat

end

end A366973.P12684033103082286537

/-!
# A366974: Expansion of Sum_{k >=1} x^(2*k)/(1-x^k)^(k+1).

The programs for A366974, there is no canonical definition to state claims against.
-/

/-! ## A366974.P4348430560112599324

`A081543(n+1)-A157019(n+1)`
-/

namespace A366974.P4348430560112599324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081543 (n + 1) - A157019 (n + 1)

end

end A366974.P4348430560112599324

/-! ## A366974.P2815928462811396924

`2*A340626(n+1)-A338682(n+1)-A157019(n+1)`
-/

namespace A366974.P2815928462811396924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A340626 (n + 1) - A338682 (n + 1) - A157019 (n + 1)

end

end A366974.P2815928462811396924

/-! ## A366974.P10588573758041819940

`A366975(n+1)+A004526(A157019(n+1))`
-/

namespace A366974.P10588573758041819940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366975 (n + 1) + A004526 (A157019 (n + 1)).toNat

end

end A366974.P10588573758041819940

/-! ## A366974.P4460396270127702590

`A366975(n+1)+A004526(2*A157020(n+1)-A338658(n+1))`
-/

namespace A366974.P4460396270127702590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366975 (n + 1) + A004526 (2 * A157020 (n + 1) - A338658 (n + 1)).toNat

end

end A366974.P4460396270127702590

/-! ## A366974.P7651208749966853681

`A366975(n+1)+A029578(2*A157020(n+1)-A338658(n+1))`
-/

namespace A366974.P7651208749966853681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366975 (n + 1) + A029578 (2 * A157020 (n + 1) - A338658 (n + 1)).toNat

end

end A366974.P7651208749966853681

/-! ## A366974.P15824746550719147951

`A004277(A340626(n+1))-A338682(n+1)-A157019(n+1)`
-/

namespace A366974.P15824746550719147951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A340626 (n + 1)).toNat - A338682 (n + 1) - A157019 (n + 1)

end

end A366974.P15824746550719147951

/-!
# A366976: Numbers that cannot be written as sum of two or more consecutive nonprimes.

The programs for A366976, there is no canonical definition to state claims against.
-/

/-! ## A366976.P14668840060667627818

`lt[A274881(n), A002024(A334965(2*n+1))]`
-/

namespace A366976.P14668840060667627818
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274881 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (A334965 (2 * n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A366976.P14668840060667627818

/-! ## A366976.P10277305268740933369

`lt[A308422(A274881(n)), A122340(2*n+1)]`
-/

namespace A366976.P10277305268740933369
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308422 (A274881 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122340 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A366976.P10277305268740933369

/-! ## A366976.P5333230022154491726

`lt[A351441(A250412(n+5)), A258631(2*n+1)]`
-/

namespace A366976.P5333230022154491726
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351441 (A250412 (n + 5)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258631 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A366976.P5333230022154491726

/-! ## A366976.P8474710183899217126

`∑[gcd(A062790(n+4), A323930(n+1))]`
-/

namespace A366976.P8474710183899217126
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A062790 (n + 4)) (A323930 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A366976.P8474710183899217126

/-! ## A366976.P13554797299375090814

`lt[A274881(n)², A325124(2*n+1)]`
-/

namespace A366976.P13554797299375090814
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274881 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325124 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A366976.P13554797299375090814

/-!
# A366977: Array T(n,k), n >= 1, k >= 0, read by antidiagonals downwards, where T(n,k) = Sum_{j=1..n} binomial(floor(n/j)+k,k+1).

The programs for A366977, there is no canonical definition to state claims against.
-/

/-! ## A366977.P2141708142995804769

`A343516(n+1)+A335460(A036370(2*n))`
-/

namespace A366977.P2141708142995804769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343516 (n + 1) + A335460 (A036370 (2 * n)).toNat

end

end A366977.P2141708142995804769

/-! ## A366977.P336724850852520554

`A343516(n+1)+A327169(A288847(3*n+1))`
-/

namespace A366977.P336724850852520554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343516 (n + 1) + A327169 (A288847 (3 * n + 1)).toNat

end

end A366977.P336724850852520554

/-! ## A366977.P15358320458978707391

`A343516(n+1)+A122840(A377040(n))`
-/

namespace A366977.P15358320458978707391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343516 (n + 1) + A122840 (A377040 n).toNat

end

end A366977.P15358320458978707391

/-! ## A366977.P14769154899815489457

`A343516(n+1)-A010815(A030633(n+1))`
-/

namespace A366977.P14769154899815489457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343516 (n + 1) - A010815 (A030633 (n + 1)).toNat

end

end A366977.P14769154899815489457

/-! ## A366977.P16095376050350080258

`A343516(n+1)+A070563(A154101(3*n+1))`
-/

namespace A366977.P16095376050350080258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343516 (n + 1) + A070563 (A154101 (3 * n + 1)).toNat

end

end A366977.P16095376050350080258

/-!
# A366978: a(n) = Sum_{j=1..n} binomial(floor(n/j)+n,n+1).

The programs for A366978, there is no canonical definition to state claims against.
-/

/-! ## A366978.P15514857126199987919

`A366977(2*(n+1)²)`
-/

namespace A366978.P15514857126199987919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366977 (2 * (n + 1) ^ 2)

end

end A366978.P15514857126199987919

/-!
# A366979: Number of divisors of n less than or equal to d(n).

The programs for A366979, there is no canonical definition to state claims against.
-/

/-! ## A366979.P9725117633531941447

`A243987(A000005(n+1)+∑[n])`
-/

namespace A366979.P9725117633531941447
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243987 (A000005 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A366979.P9725117633531941447

/-! ## A366979.P9753128727214040648

`A243987(A000217(n)+A000005(n+1))`
-/

namespace A366979.P9753128727214040648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243987 (A000217 n + A000005 (n + 1)).toNat

end

end A366979.P9753128727214040648

/-!
# A366980: G.f. satisfies A(x) = 1 + x*A(x)^5 * (1 - x*A(x)).

The programs for A366980, there is no canonical definition to state claims against.
-/

/-! ## A366980.P16221457268544322536

`A130481(A378883(n)-A130519(n))`
-/

namespace A366980.P16221457268544322536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130481 (A378883 n - A130519 n).toNat

end

end A366980.P16221457268544322536

/-! ## A366980.P2505027273448173450

`A378883(n)-A378875(A006024(n))`
-/

namespace A366980.P2505027273448173450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378883 n - A378875 (A006024 n).toNat

end

end A366980.P2505027273448173450

/-!
# A366981: Number of divisors of n in the set {3,4,5}.

The programs for A366981, the canonical program `A366981.P15392952926177333742` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A366981 has offset 1).

The definition of A366981 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A366981.P15392952926177333742

`∑{d}[n+1, C(5, #)%#]`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A366981

/-- `∑{d}[n+1, C(5, #)%#]` -/
def P15392952926177333742.Spec : Prop :=
  ∀ n, (P15392952926177333742.a n : ℤ) = A366981 (n + 1)

theorem P15392952926177333742.correct : P15392952926177333742.Spec := by
  intro n
  simp only [A366981, Nat.add_sub_cancel]

end A366981

/-!
# A366982: a(n) is the smallest odd k > 1 such that n^((k+1)/2) == n (mod k).

The programs for A366982, there is no canonical definition to state claims against.
-/

/-! ## A366982.P14867246827836757043

`or(A093578(A367019(n)), A367034(n))`
-/

namespace A366982.P14867246827836757043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A093578 (A367019 n).toNat) (A367034 n)

end

end A366982.P14867246827836757043

/-! ## A366982.P13885632413703492355

`and(A137657(n+1), A367034(n))`
-/

namespace A366982.P13885632413703492355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A137657 (n + 1)) (A367034 n)

end

end A366982.P13885632413703492355

/-! ## A366982.P8867580627358246260

`gcd(A102509(n+1), A367034(n))`
-/

namespace A366982.P8867580627358246260
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A102509 (n + 1)) (A367034 n)

end

end A366982.P8867580627358246260

/-! ## A366982.P16981625648824103642

`A367034(n)+A008683(A139098(3*n+1))`
-/

namespace A366982.P16981625648824103642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367034 n + A008683 (A139098 (3 * n + 1)).toNat

end

end A366982.P16981625648824103642

/-! ## A366982.P17777520902338472184

`A367034(A122656(n))`
-/

namespace A366982.P17777520902338472184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367034 (A122656 n).toNat

end

end A366982.P17777520902338472184

/-!
# A366983: a(n) = Sum_{k=1..n} (k+1) * floor(n/k).

The programs for A366983, the canonical program `A366983.P9575077366537718211` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A366983 has offset 1).

The definition of A366983 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A257644, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A366983.P9575077366537718211

`A257644(n+1)-1`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A366983

/-- `A257644(n+1)-1` -/
def P9575077366537718211.Spec : Prop :=
  ∀ n, P9575077366537718211.a n = A366983 (n + 1)

theorem P9575077366537718211.correct : P9575077366537718211.Spec := by
  intro n
  simp only [A366983, Nat.add_sub_cancel]

end A366983

/-! ## A366983.P1895291266814825820

`A006218(n+1)+A024916(n+1)`
-/

namespace A366983.P1895291266814825820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 (n + 1) + A024916 (n + 1)

end

end A366983.P1895291266814825820

namespace A366983

/-- `A006218(n+1)+A024916(n+1)` -/
def P1895291266814825820.Spec : Prop :=
  ∀ n, P1895291266814825820.a n = A366983 (n + 1)

end A366983

/-! ## A366983.P13591171790935050392

`∑[∑{d}[n+1, #+1]]`
-/

namespace A366983.P13591171790935050392
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), (d + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A366983.P13591171790935050392

namespace A366983

/-- `∑[∑{d}[n+1, #+1]]` -/
def P13591171790935050392.Spec : Prop :=
  ∀ n, (P13591171790935050392.a n : ℤ) = A366983 (n + 1)

end A366983

/-! ## A366983.P17980029128493276969

`∑{d}[n+1, #+1]+a(n-1)` with `a(0)=2`
-/

namespace A366983.P17980029128493276969
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.rec [2] fun n a =>
  ∑ d ∈ Nat.divisors (f1 n), (d + 1) + a (n - 1)

end

end A366983.P17980029128493276969

namespace A366983

/-- `∑{d}[n+1, #+1]+a(n-1)` -/
def P17980029128493276969.Spec : Prop :=
  ∀ n, (P17980029128493276969.a n : ℤ) = A366983 (n + 1)

end A366983

/-! ## A366983.P4663278216303336651

`∑[A007503(n+1)]`
-/

namespace A366983.P4663278216303336651
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007503 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A366983.P4663278216303336651

namespace A366983

/-- `∑[A007503(n+1)]` -/
def P4663278216303336651.Spec : Prop :=
  ∀ n, P4663278216303336651.a n = A366983 (n + 1)

end A366983

/-! ## A366983.P3232175308017531089

`∑[abs(Δ[A257644(n)])]`
-/

namespace A366983.P3232175308017531089
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257644 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A366983.P3232175308017531089

namespace A366983

/-- `∑[abs(Δ[A257644(n)])]` -/
def P3232175308017531089.Spec : Prop :=
  ∀ n, P3232175308017531089.a n = A366983 (n + 1)

end A366983

/-! ## A366983.P15556421967791433856

`∑[A163163(n+1)+n+1]`
-/

namespace A366983.P15556421967791433856
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163163 (n + 1) + (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A366983.P15556421967791433856

namespace A366983

/-- `∑[A163163(n+1)+n+1]` -/
def P15556421967791433856.Spec : Prop :=
  ∀ n, P15556421967791433856.a n = A366983 (n + 1)

end A366983

/-! ## A366983.P15197480402734378312

`A292768(n+1)-A063088(n+1)`
-/

namespace A366983.P15197480402734378312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292768 (n + 1) - A063088 (n + 1)

end

end A366983.P15197480402734378312

namespace A366983

/-- `A292768(n+1)-A063088(n+1)` -/
def P15197480402734378312.Spec : Prop :=
  ∀ n, P15197480402734378312.a n = A366983 (n + 1)

end A366983

/-! ## A366983.P7885327132955722053

`A327329(n+1)-A236632(n+1)`
-/

namespace A366983.P7885327132955722053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327329 (n + 1) - A236632 (n + 1)

end

end A366983.P7885327132955722053

namespace A366983

/-- `A327329(n+1)-A236632(n+1)` -/
def P7885327132955722053.Spec : Prop :=
  ∀ n, P7885327132955722053.a n = A366983 (n + 1)

end A366983

/-! ## A366983.P11246266791297686629

`A366984(n+1)-A364970(n+1)`
-/

namespace A366983.P11246266791297686629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366984 (n + 1) - A364970 (n + 1)

end

end A366983.P11246266791297686629

namespace A366983

/-- `A366984(n+1)-A364970(n+1)` -/
def P11246266791297686629.Spec : Prop :=
  ∀ n, P11246266791297686629.a n = A366983 (n + 1)

end A366983

/-! ## A366983.P9511703614456114086

`∑[A000203(n+1)+A000005(n+1)]`
-/

namespace A366983.P9511703614456114086
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) + A000005 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A366983.P9511703614456114086

namespace A366983

/-- `∑[A000203(n+1)+A000005(n+1)]` -/
def P9511703614456114086.Spec : Prop :=
  ∀ n, P9511703614456114086.a n = A366983 (n + 1)

end A366983

/-! ## A366983.P3948461158975332944

`A024916(n+1)+∑[A000005(n+1)]`
-/

namespace A366983.P3948461158975332944
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024916 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A366983.P3948461158975332944

namespace A366983

/-- `A024916(n+1)+∑[A000005(n+1)]` -/
def P3948461158975332944.Spec : Prop :=
  ∀ n, P3948461158975332944.a n = A366983 (n + 1)

end A366983

/-! ## A366983.P2781372983755083815

`2*A024916(n+1)-A236632(n+1)`
-/

namespace A366983.P2781372983755083815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A024916 (n + 1) - A236632 (n + 1)

end

end A366983.P2781372983755083815

namespace A366983

/-- `2*A024916(n+1)-A236632(n+1)` -/
def P2781372983755083815.Spec : Prop :=
  ∀ n, P2781372983755083815.a n = A366983 (n + 1)

end A366983

/-! ## A366983.P12805322642008607987

`∑[A000005(n+1)+∑[A340793(n+1)]]`
-/

namespace A366983.P12805322642008607987
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340793 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) + ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A366983.P12805322642008607987

namespace A366983

/-- `∑[A000005(n+1)+∑[A340793(n+1)]]` -/
def P12805322642008607987.Spec : Prop :=
  ∀ n, P12805322642008607987.a n = A366983 (n + 1)

end A366983

/-! ## A366983.P3442240175881361740

`∑[A000203(n+1)+∑[A341062(n+1)]]`
-/

namespace A366983.P3442240175881361740
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341062 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) + ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A366983.P3442240175881361740

namespace A366983

/-- `∑[A000203(n+1)+∑[A341062(n+1)]]` -/
def P3442240175881361740.Spec : Prop :=
  ∀ n, P3442240175881361740.a n = A366983 (n + 1)

end A366983

/-! ## A366983.P12464136496850416338

`A006218(n+1)+A236632(n+1)+A006218(n+1)`
-/

namespace A366983.P12464136496850416338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 (n + 1) + (A236632 (n + 1) + A006218 (n + 1))

end

end A366983.P12464136496850416338

namespace A366983

/-- `A006218(n+1)+A236632(n+1)+A006218(n+1)` -/
def P12464136496850416338.Spec : Prop :=
  ∀ n, P12464136496850416338.a n = A366983 (n + 1)

end A366983

/-! ## A366983.P18001354706080449467

`A024916(n+1)+A327329(n+1)-A222548(n+1)`
-/

namespace A366983.P18001354706080449467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024916 (n + 1) + (A327329 (n + 1) - A222548 (n + 1))

end

end A366983.P18001354706080449467

namespace A366983

/-- `A024916(n+1)+A327329(n+1)-A222548(n+1)` -/
def P18001354706080449467.Spec : Prop :=
  ∀ n, P18001354706080449467.a n = A366983 (n + 1)

end A366983

/-! ## A366983.P2619542264250082814

`Δ[A264100(n+1)]-1`
-/

namespace A366983.P2619542264250082814
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264100 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 1

end

end A366983.P2619542264250082814

namespace A366983

/-- `Δ[A264100(n+1)]-1` -/
def P2619542264250082814.Spec : Prop :=
  ∀ n, P2619542264250082814.a n = A366983 (n + 1)

end A366983

/-! ## A366983.P10386304170515769536

`A366984(n+1)-(A366967(n+1)+A024916(n+1))`
-/

namespace A366983.P10386304170515769536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366984 (n + 1) - (A366967 (n + 1) + A024916 (n + 1))

end

end A366983.P10386304170515769536

namespace A366983

/-- `A366984(n+1)-(A366967(n+1)+A024916(n+1))` -/
def P10386304170515769536.Spec : Prop :=
  ∀ n, P10386304170515769536.a n = A366983 (n + 1)

end A366983

/-! ## A366983.P10940148836499824011

`A366967(n+1)+A366984(n+1)-A064602(n+1)`
-/

namespace A366983.P10940148836499824011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366967 (n + 1) + (A366984 (n + 1) - A064602 (n + 1))

end

end A366983.P10940148836499824011

namespace A366983

/-- `A366967(n+1)+A366984(n+1)-A064602(n+1)` -/
def P10940148836499824011.Spec : Prop :=
  ∀ n, P10940148836499824011.a n = A366983 (n + 1)

end A366983

/-!
# A366984: a(n) = Sum_{k=1..n} binomial(k+2,2) * floor(n/k).

The programs for A366984, the canonical program `A366984.P14275036565059668436` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A366984 has offset 1).

The definition of A366984 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A366984.P14275036565059668436

`∑[∑{d}[n+1, C(#+2, 2)]]`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A366984

/-- `∑[∑{d}[n+1, C(#+2, 2)]]` -/
def P14275036565059668436.Spec : Prop :=
  ∀ n, (P14275036565059668436.a n : ℤ) = A366984 (n + 1)

theorem P14275036565059668436.correct : P14275036565059668436.Spec := by
  intro n
  simp only [A366984, Nat.add_sub_cancel]

end A366984

/-! ## A366984.P10073584741460979534

`∑[A363628(n+1)]`
-/

namespace A366984.P10073584741460979534
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363628 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A366984.P10073584741460979534

namespace A366984

/-- `∑[A363628(n+1)]` -/
def P10073584741460979534.Spec : Prop :=
  ∀ n, P10073584741460979534.a n = A366984 (n + 1)

theorem P10073584741460979534.correct : P10073584741460979534.Spec := by
  intro n
  simp only [A366984, Nat.add_sub_cancel, A366984.P10073584741460979534.f1, A366984.P10073584741460979534.a, A366984.P14275036565059668436.f2, A366984.P14275036565059668436.f1, A366984.P14275036565059668436.a, A363628, A363628.P256454717514951201.f1, A363628.P256454717514951201.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A366984

/-! ## A366984.P7647474053447594389

`A366983(n+1)+A364970(n+1)`
-/

namespace A366984.P7647474053447594389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366983 (n + 1) + A364970 (n + 1)

end

end A366984.P7647474053447594389

namespace A366984

/-- `A366983(n+1)+A364970(n+1)` -/
def P7647474053447594389.Spec : Prop :=
  ∀ n, P7647474053447594389.a n = A366984 (n + 1)

end A366984

/-! ## A366984.P15911630570657805265

`A366985(n+1)-A365409(n+1)`
-/

namespace A366984.P15911630570657805265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366985 (n + 1) - A365409 (n + 1)

end

end A366984.P15911630570657805265

namespace A366984

/-- `A366985(n+1)-A365409(n+1)` -/
def P15911630570657805265.Spec : Prop :=
  ∀ n, P15911630570657805265.a n = A366984 (n + 1)

end A366984

/-! ## A366984.P158247023606801139

`A364970(n+1)+∑[A163163(n+1)+n+1]`
-/

namespace A366984.P158247023606801139
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163163 (n + 1) + (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364970 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A366984.P158247023606801139

namespace A366984

/-- `A364970(n+1)+∑[A163163(n+1)+n+1]` -/
def P158247023606801139.Spec : Prop :=
  ∀ n, P158247023606801139.a n = A366984 (n + 1)

end A366984

/-! ## A366984.P3159037681461257082

`∑[A163163(n+1)+n+1]+∑[A007437(n+1)]`
-/

namespace A366984.P3159037681461257082
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163163 (n + 1) + (n + 1 : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007437 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + ∑ j ∈ Finset.range (n + 1), f2 j

end

end A366984.P3159037681461257082

namespace A366984

/-- `∑[A163163(n+1)+n+1]+∑[A007437(n+1)]` -/
def P3159037681461257082.Spec : Prop :=
  ∀ n, P3159037681461257082.a n = A366984 (n + 1)

end A366984

/-!
# A366985: a(n) = Sum_{k=1..n} binomial(k+3,3) * floor(n/k).

The programs for A366985, the canonical program `A366985.P3542550691461209980` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A366985 has offset 1).

The definition of A366985 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A366985.P3542550691461209980

`∑[∑{d}[n+1, C(#+3, 3)]]`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A366985

/-- `∑[∑{d}[n+1, C(#+3, 3)]]` -/
def P3542550691461209980.Spec : Prop :=
  ∀ n, (P3542550691461209980.a n : ℤ) = A366985 (n + 1)

theorem P3542550691461209980.correct : P3542550691461209980.Spec := by
  intro n
  simp only [A366985, Nat.add_sub_cancel]

end A366985

/-! ## A366985.P13648010371610494008

`∑[A116963(n+1)]`
-/

namespace A366985.P13648010371610494008
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116963 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A366985.P13648010371610494008

namespace A366985

/-- `∑[A116963(n+1)]` -/
def P13648010371610494008.Spec : Prop :=
  ∀ n, P13648010371610494008.a n = A366985 (n + 1)

theorem P13648010371610494008.correct : P13648010371610494008.Spec := by
  intro n
  simp only [A366985, Nat.add_sub_cancel, A366985.P13648010371610494008.f1, A366985.P13648010371610494008.a, A366985.P3542550691461209980.f2, A366985.P3542550691461209980.f1, A366985.P3542550691461209980.a, A116963, A116963.P1605029148597854715.f1, A116963.P1605029148597854715.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A366985

/-! ## A366985.P3702060937523428523

`A366984(n+1)+A365409(n+1)`
-/

namespace A366985.P3702060937523428523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366984 (n + 1) + A365409 (n + 1)

end

end A366985.P3702060937523428523

namespace A366985

/-- `A366984(n+1)+A365409(n+1)` -/
def P3702060937523428523.Spec : Prop :=
  ∀ n, P3702060937523428523.a n = A366985 (n + 1)

end A366985

/-! ## A366985.P13285707639849786927

`A064602(n+1)+A366984(n+1)+A366971(n+1)`
-/

namespace A366985.P13285707639849786927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064602 (n + 1) + (A366984 (n + 1) + A366971 (n + 1))

end

end A366985.P13285707639849786927

namespace A366985

/-- `A064602(n+1)+A366984(n+1)+A366971(n+1)` -/
def P13285707639849786927.Spec : Prop :=
  ∀ n, P13285707639849786927.a n = A366985 (n + 1)

end A366985

/-! ## A366985.P9068421810473307277

`A366984(n+1)+∑[A059358(n+1)]`
-/

namespace A366985.P9068421810473307277
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059358 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366984 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A366985.P9068421810473307277

namespace A366985

/-- `A366984(n+1)+∑[A059358(n+1)]` -/
def P9068421810473307277.Spec : Prop :=
  ∀ n, P9068421810473307277.a n = A366985 (n + 1)

end A366985

/-!
# A366986: Square array T(n,k), n >= 1, k >= 0, read by antidiagonals downwards, where T(n,k) = Sum_{d|n} binomial(d+k-1,k).

The programs for A366986, there is no canonical definition to state claims against.
-/

/-! ## A366986.P7020257499267527280

`A028326(n)/2+A308694(n+1)+A057428(A029494(n+1))`
-/

namespace A366986.P7020257499267527280
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028326 n : ℚ) / 2 + (A308694 (n + 1) + A057428 (A029494 (n + 1)).toNat : ℚ)

end

end A366986.P7020257499267527280

/-! ## A366986.P17120272187803464182

`A028326(n)/2+A308694(n+1)-A005361(A283905(n))`
-/

namespace A366986.P17120272187803464182
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028326 n : ℚ) / 2 + (A308694 (n + 1) - A005361 (A283905 n).toNat : ℚ)

end

end A366986.P17120272187803464182

/-!
# A366988: The number of prime powers of prime numbers (A053810) that divide n.

The programs for A366988, the canonical program `A366988.P1976086418433088332` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A366988 has offset 1).

The definition of A366988 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A366988.P1976086418433088332

`∑{e}[n+1, A000720(#)]`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A366988

/-- `∑{e}[n+1, A000720(#)]` -/
def P1976086418433088332.Spec : Prop :=
  ∀ n, P1976086418433088332.a n = A366988 (n + 1)

theorem P1976086418433088332.correct : P1976086418433088332.Spec := by
  intro n
  simp only [A366988, Nat.add_sub_cancel]

end A366988

/-! ## A366988.P12227528775899580714

`∑{e}[n+1, A070549(#)]`
-/

namespace A366988.P12227528775899580714
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A070549 (Nat.factorization (f1 n) p)

end

end A366988.P12227528775899580714

namespace A366988

/-- `∑{e}[n+1, A070549(#)]` -/
def P12227528775899580714.Spec : Prop :=
  ∀ n, P12227528775899580714.a n = A366988 (n + 1)

end A366988

/-! ## A366988.P4209058021984702789

`∑{e}[n+1, A255574(#)]`
-/

namespace A366988.P4209058021984702789
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A255574 (Nat.factorization (f1 n) p)

end

end A366988.P4209058021984702789

namespace A366988

/-- `∑{e}[n+1, A255574(#)]` -/
def P4209058021984702789.Spec : Prop :=
  ∀ n, P4209058021984702789.a n = A366988 (n + 1)

end A366988

/-! ## A366988.P7827842535467021396

`A366989(n+1)-A001221(n+1)`
-/

namespace A366988.P7827842535467021396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366989 (n + 1) - A001221 (n + 1)

end

end A366988.P7827842535467021396

namespace A366988

/-- `A366989(n+1)-A001221(n+1)` -/
def P7827842535467021396.Spec : Prop :=
  ∀ n, P7827842535467021396.a n = A366988 (n + 1)

theorem P7827842535467021396.correct : P7827842535467021396.Spec := by
  intro n
  simp only [A366988, Nat.add_sub_cancel, A366988.P7827842535467021396.a, A366988.P1976086418433088332.f1, A366988.P1976086418433088332.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A001221, A001221.P10258181745752134128.a, A366989, A366989.P4225912740677048204.a, A005089, A005089.P4329807401814625450.f1, A005089.P4329807401814625450.a, A005091, A005091.P2802037195389751204.f1, A005091.P2802037195389751204.a, A059841, A059841.P2666504972441551157.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A366988

/-! ## A366988.P2471325305973374309

`∑{e}[A003961(n+1), A001221(A000142(#))]`
-/

namespace A366988.P2471325305973374309
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003961 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A001221 (A000142 (Nat.factorization (f1 n).natAbs p)).toNat

end

end A366988.P2471325305973374309

namespace A366988

/-- `∑{e}[A003961(n+1), A001221(A000142(#))]` -/
def P2471325305973374309.Spec : Prop :=
  ∀ n, P2471325305973374309.a n = A366988 (n + 1)

end A366988

/-! ## A366988.P7255954989096768753

`A001221(A293902(n+1))`
-/

namespace A366988.P7255954989096768753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A293902 (n + 1)).toNat

end

end A366988.P7255954989096768753

namespace A366988

/-- `A001221(A293902(n+1))` -/
def P7255954989096768753.Spec : Prop :=
  ∀ n, P7255954989096768753.a n = A366988 (n + 1)

end A366988

/-! ## A366988.P15946945973342180217

`A056239(A212180(n+1))%A246347(n+1)`
-/

namespace A366988.P15946945973342180217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A056239 (A212180 (n + 1)).toNat) (A246347 (n + 1))

end

end A366988.P15946945973342180217

namespace A366988

/-- `A056239(A212180(n+1))%A246347(n+1)` -/
def P15946945973342180217.Spec : Prop :=
  ∀ n, P15946945973342180217.a n = A366988 (n + 1)

end A366988

/-! ## A366988.P3702661830122472654

`A004218(A037291(n+1))`
-/

namespace A366988.P3702661830122472654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004218 (A037291 (n + 1)).toNat

end

end A366988.P3702661830122472654

namespace A366988

/-- `A004218(A037291(n+1))` -/
def P3702661830122472654.Spec : Prop :=
  ∀ n, P3702661830122472654.a n = A366988 (n + 1)

end A366988

/-! ## A366988.P13864838080224630961

`A023568(A112622(n+1))`
-/

namespace A366988.P13864838080224630961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023568 (A112622 (n + 1)).toNat

end

end A366988.P13864838080224630961

namespace A366988

/-- `A023568(A112622(n+1))` -/
def P13864838080224630961.Spec : Prop :=
  ∀ n, P13864838080224630961.a n = A366988 (n + 1)

end A366988

/-! ## A366988.P3428141324412504246

`A098391(A127707(n+1))`
-/

namespace A366988.P3428141324412504246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098391 (A127707 (n + 1)).toNat

end

end A366988.P3428141324412504246

namespace A366988

/-- `A098391(A127707(n+1))` -/
def P3428141324412504246.Spec : Prop :=
  ∀ n, P3428141324412504246.a n = A366988 (n + 1)

end A366988

/-!
# A366989: The number of prime powers p^q dividing n, where p is prime and q is either 1 or prime (A334393 without the first term 1).

The programs for A366989, the canonical program `A366989.P4225912740677048204` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A366989 has offset 1).

The definition of A366989 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001221, A366988, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A366989.P4225912740677048204

`A366988(n+1)+A001221(n+1)`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A366989

/-- `A366988(n+1)+A001221(n+1)` -/
def P4225912740677048204.Spec : Prop :=
  ∀ n, P4225912740677048204.a n = A366989 (n + 1)

theorem P4225912740677048204.correct : P4225912740677048204.Spec := by
  intro n
  simp only [A366989, Nat.add_sub_cancel]

end A366989

/-! ## A366989.P14481127189588829597

`∑{e}[n+1, A036234(#)]`
-/

namespace A366989.P14481127189588829597
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A036234 (Nat.factorization (f1 n) p)

end

end A366989.P14481127189588829597

namespace A366989

/-- `∑{e}[n+1, A036234(#)]` -/
def P14481127189588829597.Spec : Prop :=
  ∀ n, P14481127189588829597.a n = A366989 (n + 1)

end A366989

/-! ## A366989.P16907601136312795172

`∑{e}[n+1, A192512(#)]`
-/

namespace A366989.P16907601136312795172
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A192512 (Nat.factorization (f1 n) p)

end

end A366989.P16907601136312795172

namespace A366989

/-- `∑{e}[n+1, A192512(#)]` -/
def P16907601136312795172.Spec : Prop :=
  ∀ n, P16907601136312795172.a n = A366989 (n + 1)

end A366989

/-! ## A366989.P16935624364032858898

`∑{e}[n+1, A000720(#)+1]`
-/

namespace A366989.P16935624364032858898
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), (A000720 (Nat.factorization (f1 n) p) + 1)

end

end A366989.P16935624364032858898

namespace A366989

/-- `∑{e}[n+1, A000720(#)+1]` -/
def P16935624364032858898.Spec : Prop :=
  ∀ n, P16935624364032858898.a n = A366989 (n + 1)

end A366989

/-! ## A366989.P12953048566789256334

`A366988(n+1)+A001222(A181819(n+1))`
-/

namespace A366989.P12953048566789256334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366988 (n + 1) + A001222 (A181819 (n + 1)).toNat

end

end A366989.P12953048566789256334

namespace A366989

/-- `A366988(n+1)+A001222(A181819(n+1))` -/
def P12953048566789256334.Spec : Prop :=
  ∀ n, P12953048566789256334.a n = A366989 (n + 1)

end A366989

/-! ## A366989.P18412371018496925392

`A366988(n+1)+A238949(A007947(n+1))`
-/

namespace A366989.P18412371018496925392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366988 (n + 1) + A238949 (A007947 (n + 1)).toNat

end

end A366989.P18412371018496925392

namespace A366989

/-- `A366988(n+1)+A238949(A007947(n+1))` -/
def P18412371018496925392.Spec : Prop :=
  ∀ n, P18412371018496925392.a n = A366989 (n + 1)

end A366989

/-! ## A366989.P648181559377475329

`A001221(n+1)+A001221(A293902(n+1))`
-/

namespace A366989.P648181559377475329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1) + A001221 (A293902 (n + 1)).toNat

end

end A366989.P648181559377475329

namespace A366989

/-- `A001221(n+1)+A001221(A293902(n+1))` -/
def P648181559377475329.Spec : Prop :=
  ∀ n, P648181559377475329.a n = A366989 (n + 1)

end A366989

/-! ## A366989.P10734650015007793752

`A232615(A007425(n+1))`
-/

namespace A366989.P10734650015007793752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232615 (A007425 (n + 1)).toNat

end

end A366989.P10734650015007793752

namespace A366989

/-- `A232615(A007425(n+1))` -/
def P10734650015007793752.Spec : Prop :=
  ∀ n, P10734650015007793752.a n = A366989 (n + 1)

end A366989

/-! ## A366989.P16698644335746013823

`A385378((n+1)²)`
-/

namespace A366989.P16698644335746013823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385378 ((n + 1) ^ 2)

end

end A366989.P16698644335746013823

namespace A366989

/-- `A385378((n+1)²)` -/
def P16698644335746013823.Spec : Prop :=
  ∀ n, P16698644335746013823.a n = A366989 (n + 1)

end A366989

/-! ## A366989.P14053485908832395935

`A366988(A366994(n+1)²)`
-/

namespace A366989.P14053485908832395935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366988 (A366994 (n + 1) ^ 2).toNat

end

end A366989.P14053485908832395935

namespace A366989

/-- `A366988(A366994(n+1)²)` -/
def P14053485908832395935.Spec : Prop :=
  ∀ n, P14053485908832395935.a n = A366989 (n + 1)

end A366989

/-! ## A366989.P10253422669198242665

`A366988(A366994(n+1)*A366994(n+1))`
-/

namespace A366989.P10253422669198242665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366988 (A366994 (n + 1) * A366994 (n + 1)).toNat

end

end A366989.P10253422669198242665

namespace A366989

/-- `A366988(A366994(n+1)*A366994(n+1))` -/
def P10253422669198242665.Spec : Prop :=
  ∀ n, P10253422669198242665.a n = A366989 (n + 1)

end A366989

/-!
# A366990: The sum of divisors of n that are terms of A056166.

The programs for A366990, the canonical program `A366990.P7446816452467653986` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A366990 has offset 1).

The definition of A366990 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A366990.P7446816452467653986

`∑{d}[n+1, #*A293449(#)]`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A366990

/-- `∑{d}[n+1, #*A293449(#)]` -/
def P7446816452467653986.Spec : Prop :=
  ∀ n, P7446816452467653986.a n = A366990 (n + 1)

theorem P7446816452467653986.correct : P7446816452467653986.Spec := by
  intro n
  simp only [A366990, Nat.add_sub_cancel]

end A366990

/-! ## A366990.P9231294767937797135

`A126849(n+1)+A057427(n)`
-/

namespace A366990.P9231294767937797135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126849 (n + 1) + A057427 n

end

end A366990.P9231294767937797135

namespace A366990

/-- `A126849(n+1)+A057427(n)` -/
def P9231294767937797135.Spec : Prop :=
  ∀ n, P9231294767937797135.a n = A366990 (n + 1)

theorem P9231294767937797135.correct : P9231294767937797135.Spec := by
  intro n
  simp only [A366990, Nat.add_sub_cancel, A366990.P9231294767937797135.a, A366990.P7446816452467653986.f1, A366990.P7446816452467653986.a, A057427, A057427.P3058147525557661423.a, A126849, A126849.P3318481749340531518.a, A293449, A293449.P1988941039110302622.f1, A293449.P1988941039110302622.a, A000007, A000007.P6599383543502402472.a, A010051, A010051.P15078252821583414300.a, A057428, A057428.P2999489532230392221.a, A100995, A100995.P9596901243079307024.f1, A100995.P9596901243079307024.a, A193056, A193056.P6449544040074946363.a, A157658, A157658.P9261385800012601708.f1, A157658.P9261385800012601708.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A366990

/-! ## A366990.P12025131345287082529

`A126849(n+1)-A057428(n)`
-/

namespace A366990.P12025131345287082529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126849 (n + 1) - A057428 n

end

end A366990.P12025131345287082529

namespace A366990

/-- `A126849(n+1)-A057428(n)` -/
def P12025131345287082529.Spec : Prop :=
  ∀ n, P12025131345287082529.a n = A366990 (n + 1)

theorem P12025131345287082529.correct : P12025131345287082529.Spec := by
  intro n
  simp only [A366990, Nat.add_sub_cancel, A366990.P12025131345287082529.a, A366990.P7446816452467653986.f1, A366990.P7446816452467653986.a, A057428, A057428.P2999489532230392221.a, A126849, A126849.P3318481749340531518.a, A293449, A293449.P1988941039110302622.f1, A293449.P1988941039110302622.a, A010051, A010051.P15078252821583414300.a, A057427, A057427.P3058147525557661423.a, A000007, A000007.P6599383543502402472.a, A100995, A100995.P9596901243079307024.f1, A100995.P9596901243079307024.a, A193056, A193056.P6449544040074946363.a, A157658, A157658.P9261385800012601708.f1, A157658.P9261385800012601708.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A366990

/-! ## A366990.P10717242391037838550

`A295316(A001747(n+2))+A126849(n+1)`
-/

namespace A366990.P10717242391037838550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295316 (A001747 (n + 2)).toNat + A126849 (n + 1)

end

end A366990.P10717242391037838550

namespace A366990

/-- `A295316(A001747(n+2))+A126849(n+1)` -/
def P10717242391037838550.Spec : Prop :=
  ∀ n, P10717242391037838550.a n = A366990 (n + 1)

end A366990

/-! ## A366990.P14686639785158716551

`A126849(n+1)+A032741(A330979(n+1))`
-/

namespace A366990.P14686639785158716551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126849 (n + 1) + A032741 (A330979 (n + 1)).toNat

end

end A366990.P14686639785158716551

namespace A366990

/-- `A126849(n+1)+A032741(A330979(n+1))` -/
def P14686639785158716551.Spec : Prop :=
  ∀ n, P14686639785158716551.a n = A366990 (n + 1)

end A366990

/-!
# A366991: The number of divisors of n that are not terms of A322448.

The programs for A366991, the canonical program `A366991.P8092086084138922211` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A366991 has offset 1).

The definition of A366991 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A366991.P8092086084138922211

`∏{e}[n+1, A036234(#)+1]`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A366991

/-- `∏{e}[n+1, A036234(#)+1]` -/
def P8092086084138922211.Spec : Prop :=
  ∀ n, P8092086084138922211.a n = A366991 (n + 1)

theorem P8092086084138922211.correct : P8092086084138922211.Spec := by
  intro n
  simp only [A366991, Nat.add_sub_cancel]

end A366991

/-! ## A366991.P2992154104262237339

`∏{e}[n+1, A000720(#)+2]`
-/

namespace A366991.P2992154104262237339
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), (A000720 (Nat.factorization (f1 n) p) + 2)

end

end A366991.P2992154104262237339

namespace A366991

/-- `∏{e}[n+1, A000720(#)+2]` -/
def P2992154104262237339.Spec : Prop :=
  ∀ n, P2992154104262237339.a n = A366991 (n + 1)

theorem P2992154104262237339.correct : P2992154104262237339.Spec := by
  intro n
  simp only [A366991, Nat.add_sub_cancel, A366991.P2992154104262237339.f1, A366991.P2992154104262237339.a, A366991.P8092086084138922211.f1, A366991.P8092086084138922211.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A036234, A036234.P2906282677021386800.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A366991

/-! ## A366991.P8832119821049058838

`∏{e}[(n+1)*∏{p}[n+1, #], A327704(#)]`
-/

namespace A366991.P8832119821049058838
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * (∏ p ∈ Nat.primeFactors (f2 n), p)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A327704 (Nat.factorization (f1 n) p)

end

end A366991.P8832119821049058838

namespace A366991

/-- `∏{e}[(n+1)*∏{p}[n+1, #], A327704(#)]` -/
def P8832119821049058838.Spec : Prop :=
  ∀ n, P8832119821049058838.a n = A366991 (n + 1)

end A366991

/-! ## A366991.P3077266257199060150

`∏{e}[(n+1)*∏{p}[n+1, #], A196048(A166651(#))]`
-/

namespace A366991.P3077266257199060150
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * (∏ p ∈ Nat.primeFactors (f2 n), p)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A196048 (A166651 (Nat.factorization (f1 n) p)).toNat

end

end A366991.P3077266257199060150

namespace A366991

/-- `∏{e}[(n+1)*∏{p}[n+1, #], A196048(A166651(#))]` -/
def P3077266257199060150.Spec : Prop :=
  ∀ n, P3077266257199060150.a n = A366991 (n + 1)

end A366991

/-! ## A366991.P1972419497065483681

`A353898((n+1)*A008834(n+1))`
-/

namespace A366991.P1972419497065483681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353898 ((n + 1 : ℤ) * A008834 (n + 1)).toNat

end

end A366991.P1972419497065483681

namespace A366991

/-- `A353898((n+1)*A008834(n+1))` -/
def P1972419497065483681.Spec : Prop :=
  ∀ n, P1972419497065483681.a n = A366991 (n + 1)

end A366991

/-! ## A366991.P8845889511152401168

`A353898((n+1)*A366906(n+1))`
-/

namespace A366991.P8845889511152401168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353898 ((n + 1 : ℤ) * A366906 (n + 1)).toNat

end

end A366991.P8845889511152401168

namespace A366991

/-- `A353898((n+1)*A366906(n+1))` -/
def P8845889511152401168.Spec : Prop :=
  ∀ n, P8845889511152401168.a n = A366991 (n + 1)

end A366991

/-! ## A366991.P1970586966263339511

`∏{e}[(n+1)²*∏{p}[n+1, #], A064097(#)]`
-/

namespace A366991.P1970586966263339511
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2 * (∏ p ∈ Nat.primeFactors (f2 n), p)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A064097 (Nat.factorization (f1 n) p)

end

end A366991.P1970586966263339511

namespace A366991

/-- `∏{e}[(n+1)²*∏{p}[n+1, #], A064097(#)]` -/
def P1970586966263339511.Spec : Prop :=
  ∀ n, P1970586966263339511.a n = A366991 (n + 1)

end A366991

/-! ## A366991.P6750532105257843271

`A353898(A350390((n+1)²))`
-/

namespace A366991.P6750532105257843271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353898 (A350390 ((n + 1) ^ 2)).toNat

end

end A366991.P6750532105257843271

namespace A366991

/-- `A353898(A350390((n+1)²))` -/
def P6750532105257843271.Spec : Prop :=
  ∀ n, P6750532105257843271.a n = A366991 (n + 1)

end A366991

/-! ## A366991.P4360322661898410344

`∏{e}[A000578(n+1), A056239(#)]`
-/

namespace A366991.P4360322661898410344
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A056239 (Nat.factorization (f1 n).natAbs p)

end

end A366991.P4360322661898410344

namespace A366991

/-- `∏{e}[A000578(n+1), A056239(#)]` -/
def P4360322661898410344.Spec : Prop :=
  ∀ n, P4360322661898410344.a n = A366991 (n + 1)

end A366991

/-!
# A366993: The largest divisor of n that is a term of A056166.

The programs for A366993, there is no canonical definition to state claims against.
-/

/-! ## A366993.P8110883308933915961

`A366994(A057521(n+1))`
-/

namespace A366993.P8110883308933915961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366994 (A057521 (n + 1)).toNat

end

end A366993.P8110883308933915961

/-! ## A366993.P11486218970774905523

`A366994(n+1)/A055231(n+1)`
-/

namespace A366993.P11486218970774905523
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A366994 (n + 1) : ℚ) / (A055231 (n + 1) : ℚ)

end

end A366993.P11486218970774905523

/-! ## A366993.P13592713882305730738

`gcd(A065970(n+1), A366994(n+1))`
-/

namespace A366993.P13592713882305730738
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A065970 (n + 1)) (A366994 (n + 1))

end

end A366993.P13592713882305730738

/-! ## A366993.P7119119150103941194

`A366994(A000203(n+1)-A326184(n+1))`
-/

namespace A366993.P7119119150103941194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366994 (A000203 (n + 1) - A326184 (n + 1)).toNat

end

end A366993.P7119119150103941194

/-! ## A366993.P15256359675547282258

`A197863((n+1)/A365298(A197863(n+1)))`
-/

namespace A366993.P15256359675547282258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197863 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A365298 (A197863 (n + 1)).toNat : ℚ))).toNat

end

end A366993.P15256359675547282258

/-! ## A366993.P17389213175017630586

`A356193(n+1)/A356191(A365298(n+1))`
-/

namespace A366993.P17389213175017630586
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A356193 (n + 1) : ℚ) / (A356191 (A365298 (n + 1)).toNat : ℚ)

end

end A366993.P17389213175017630586

/-!
# A366994: The largest divisor of n that is not a term of A322448.

The programs for A366994, there is no canonical definition to state claims against.
-/

/-! ## A366994.P8831560925143396728

`A055231(n+1)*A366993(n+1)`
-/

namespace A366994.P8831560925143396728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055231 (n + 1) * A366993 (n + 1)

end

end A366994.P8831560925143396728

/-! ## A366994.P2126231000187177908

`lcm(A007913(n+1), A366993(n+1))`
-/

namespace A366994.P2126231000187177908
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A007913 (n + 1)) (A366993 (n + 1))

end

end A366994.P2126231000187177908

/-! ## A366994.P5162682186051236026

`lcm(A007947(n+1), A366993(A366993(n+1)))`
-/

namespace A366994.P5162682186051236026
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A007947 (n + 1)) (A366993 (A366993 (n + 1)).toNat)

end

end A366994.P5162682186051236026

/-! ## A366994.P17575259574193155912

`A056622((n+1)*A338782(n+1))/A000190(A367698(n+1))`
-/

namespace A366994.P17575259574193155912
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A056622 ((n + 1 : ℤ) * A338782 (n + 1)).toNat : ℚ) / (A000190 (A367698 (n + 1)).toNat : ℚ)

end

end A366994.P17575259574193155912

/-! ## A366994.P2935733101874416027

`(n+1)/∏{p}[n+1, #^val(n+1, #²)]*A053150((n+1)*∏{p}[n+1, #])`
-/

namespace A366994.P2935733101874416027
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p ^ SequenceMachineLib.valuation (n + 1) (p ^ 2) : ℕ) : ℚ) * (A053150 ((n + 1) * (∏ p ∈ Nat.primeFactors (f2 n), p)) : ℚ)

end

end A366994.P2935733101874416027

/-! ## A366994.P14716604876028300360

`A019554(A019554(n+1)*A367933(n+1))`
-/

namespace A366994.P14716604876028300360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019554 (A019554 (n + 1) * A367933 (n + 1)).toNat

end

end A366994.P14716604876028300360

/-! ## A366994.P3719354385535284545

`lcm(A011262(A019554(n+1)²), A053165(n+1))`
-/

namespace A366994.P3719354385535284545
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A011262 (A019554 (n + 1) ^ 2).toNat) (A053165 (n + 1))

end

end A366994.P3719354385535284545

