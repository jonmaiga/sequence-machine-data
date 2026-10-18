import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C004
import Seq.B000.C006
import Seq.B000.C007
import Seq.B000.C008
import Seq.B000.C009
import Seq.B000.C018
import Seq.B000.C029
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C004
import Seq.B001.C007
import Seq.B001.C008
import Seq.B002.C000
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B003.C000
import Seq.B003.C002
import Seq.B004.C001
import Seq.B005.C000
import Seq.B005.C001
import Seq.B007.C000
import Seq.B008.C001
import Seq.B009.C000
import Seq.B010.C000
import Seq.B013.C000
import Seq.Opaque.C000
import Seq.Opaque.C001
import Seq.Opaque.C002
import Seq.Opaque.C003
import Seq.Opaque.C004
import Seq.Opaque.C005
import Seq.Opaque.C006
import Seq.Opaque.C007
import Seq.Opaque.C008
import Seq.Opaque.C010
import Seq.Opaque.C011
import Seq.Opaque.C012
import Seq.Opaque.C013
import Seq.Opaque.C015
import Seq.Opaque.C016
import Seq.Opaque.C017
import Seq.Opaque.C018
import Seq.Opaque.C019
import Seq.Opaque.C021
import Seq.Opaque.C022
import Seq.Opaque.C024
import Seq.Opaque.C025

/-!
# A041801: Denominators of continued fraction convergents to sqrt(421).

The programs for A041801, there is no canonical definition to state claims against.
-/

/-! ## A041801.P9340750569679325972

`filter[A128600(n+1), A380417(#)]`
-/

namespace A041801.P9340750569679325972
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128600 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A380417 (f1 j).toNat = 1) n)

end

end A041801.P9340750569679325972

/-!
# A041803: Denominators of continued fraction convergents to sqrt(422).

The programs for A041803, there is no canonical definition to state claims against.
-/

/-! ## A041803.P1184053519600611609

`A257120(A063834(n))-A063725(n)`
-/

namespace A041803.P1184053519600611609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257120 (A063834 n).toNat - A063725 n

end

end A041803.P1184053519600611609

/-! ## A041803.P12009761833141310345

`A257120(A063834(n))-A244132(n)`
-/

namespace A041803.P12009761833141310345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257120 (A063834 n).toNat - A244132 n

end

end A041803.P12009761833141310345

/-!
# A041805: Denominators of continued fraction convergents to sqrt(423).

The programs for A041805, there is no canonical definition to state claims against.
-/

/-! ## A041805.P2313812297312763605

`A082957(n+1)%A195770(A005500(n))`
-/

namespace A041805.P2313812297312763605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A082957 (n + 1)) (A195770 (A005500 n).toNat)

end

end A041805.P2313812297312763605

/-!
# A041807: Denominators of continued fraction convergents to sqrt(424).

The programs for A041807, there is no canonical definition to state claims against.
-/

/-! ## A041807.P13881858701891107828

`A064989(A119931(n)*A218670(n))`
-/

namespace A041807.P13881858701891107828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064989 (A119931 n * A218670 n).toNat

end

end A041807.P13881858701891107828

/-! ## A041807.P3171057097829676468

`lcm(A002487(A333890(n)), A122881(n+1))`
-/

namespace A041807.P3171057097829676468
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A002487 (A333890 n).toNat) (A122881 (n + 1))

end

end A041807.P3171057097829676468

/-!
# A041808: Numerators of continued fraction convergents to sqrt(425).

The programs for A041808, there is no canonical definition to state claims against.
-/

/-! ## A041808.P6490542367880159648

`A022110((n+1)^gcd(7, n))`
-/

namespace A041808.P6490542367880159648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022110 ((n + 1) ^ Nat.gcd 7 n)

end

end A041808.P6490542367880159648

/-! ## A041808.P4757695624272393820

`A022110(∑[A255985(n)])`
-/

namespace A041808.P4757695624272393820
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255985 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022110 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A041808.P4757695624272393820

/-! ## A041808.P4241478558193276759

`A022110(A037442(n+1))`
-/

namespace A041808.P4241478558193276759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022110 (A037442 (n + 1)).toNat

end

end A041808.P4241478558193276759

/-!
# A041809: Denominators of continued fraction convergents to sqrt(425).

The programs for A041809, there is no canonical definition to state claims against.
-/

/-! ## A041809.P9608315055528370457

`a(n-2)+a(n-1)*A040404(n)` with `a(0)=1, a(1)=1`
-/

namespace A041809.P9608315055528370457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 2) + a (n - 1) * A040404 n

end

end A041809.P9608315055528370457

/-! ## A041809.P8093861401968974083

`A009194(A325476(n))*A325473(n)`
-/

namespace A041809.P8093861401968974083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009194 (A325476 n).toNat * A325473 n

end

end A041809.P8093861401968974083

/-! ## A041809.P6783479044345702160

`A267338(A112356(n))*A329698(n)`
-/

namespace A041809.P6783479044345702160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267338 (A112356 n).toNat * A329698 n

end

end A041809.P6783479044345702160

/-! ## A041809.P730674051218233243

`A347973(A347973(n+4))+A000071(n+1)`
-/

namespace A041809.P730674051218233243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347973 (A347973 (n + 4)).toNat + A000071 (n + 1)

end

end A041809.P730674051218233243

/-!
# A041811: Denominators of continued fraction convergents to sqrt(426).

The programs for A041811, there is no canonical definition to state claims against.
-/

/-! ## A041811.P12376588789791724849

`round(A041810(n)/sqrt(426))`
-/

namespace A041811.P12376588789791724849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A041810 n : ℝ) / Real.sqrt (426 : ℝ))

end

end A041811.P12376588789791724849

/-! ## A041811.P5595056826019671218

`A002487(xor(C(n, 2)/2*n!, ∏{e}[n+1, #+1]))`
-/

namespace A041811.P5595056826019671218
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (Int.xor (SequenceMachineLib.roundAway ((Nat.choose n 2 : ℚ) / 2 * (Nat.factorial n : ℚ))) ((∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1) : ℕ) : ℤ)).toNat

end

end A041811.P5595056826019671218

/-! ## A041811.P14381498136150429481

`A245573(p?[A000045(xor(1, n))])`
-/

namespace A041811.P14381498136150429481
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (Nat.xor 1 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245573 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A041811.P14381498136150429481

/-!
# A041813: Denominators of continued fraction convergents to sqrt(427).

The programs for A041813, the canonical program `A041813.P14285426618148577988` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A041813 has offset 0).

The definition of A041813 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A041813.P14285426618148577988

`124*a(n-4)-a(n-8)` with `a(0)=1, a(1)=1, a(2)=2, a(3)=3, a(4)=122, a(5)=125, a(6)=247, a(7)=372`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A041813

/-- `124*a(n-4)-a(n-8)` -/
def P14285426618148577988.Spec : Prop :=
  ∀ n, P14285426618148577988.a n = A041813 n

theorem P14285426618148577988.correct : P14285426618148577988.Spec := by
  intro n
  simp only [A041813]

end A041813

/-! ## A041813.P11147104120631391994

`A286689(A041589(n))`
-/

namespace A041813.P11147104120631391994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286689 (A041589 n).toNat

end

end A041813.P11147104120631391994

namespace A041813

/-- `A286689(A041589(n))` -/
def P11147104120631391994.Spec : Prop :=
  ∀ n, P11147104120631391994.a n = A041813 n

end A041813

/-! ## A041813.P14975953006409881938

`A004525(A042073(n)+A041589(n))`
-/

namespace A041813.P14975953006409881938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A042073 n + A041589 n).toNat

end

end A041813.P14975953006409881938

namespace A041813

/-- `A004525(A042073(n)+A041589(n))` -/
def P14975953006409881938.Spec : Prop :=
  ∀ n, P14975953006409881938.a n = A041813 n

end A041813

/-! ## A041813.P18146306964630236142

`A004526(A042073(n)+A041589(n))`
-/

namespace A041813.P18146306964630236142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A042073 n + A041589 n).toNat

end

end A041813.P18146306964630236142

namespace A041813

/-- `A004526(A042073(n)+A041589(n))` -/
def P18146306964630236142.Spec : Prop :=
  ∀ n, P18146306964630236142.a n = A041813 n

end A041813

/-!
# A041819: Denominators of continued fraction convergents to sqrt(430).

The programs for A041819, there is no canonical definition to state claims against.
-/

/-! ## A041819.P16413638318544749502

`A178976(C(floor(3*n/2), n))+A100882(n)`
-/

namespace A041819.P16413638318544749502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178976 (Nat.choose ⌊3 * ((n : ℚ) / 2)⌋.toNat n) + A100882 n

end

end A041819.P16413638318544749502

/-! ## A041819.P6555148042550195711

`A000010(A087312(n+1))-A299090(n+1)`
-/

namespace A041819.P6555148042550195711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A087312 (n + 1)).toNat - A299090 (n + 1)

end

end A041819.P6555148042550195711

/-!
# A041825: Denominators of continued fraction convergents to sqrt(433).

The programs for A041825, there is no canonical definition to state claims against.
-/

/-! ## A041825.P14166646551792819174

`or(floor(n/log2(3)), A193592(4^n+6^n-1))`
-/

namespace A041825.P14166646551792819174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ⌊(n : ℝ) / Real.logb 2 (3 : ℝ)⌋ (A193592 ((4 ^ n : ℤ) + ((6 ^ n : ℤ) - 1)).toNat)

end

end A041825.P14166646551792819174

/-! ## A041825.P7198786551687554374

`A190269(A210393(n+1))`
-/

namespace A041825.P7198786551687554374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190269 (A210393 (n + 1)).toNat

end

end A041825.P7198786551687554374

/-!
# A041827: Denominators of continued fraction convergents to sqrt(434).

The programs for A041827, there is no canonical definition to state claims against.
-/

/-! ## A041827.P2533115706841775184

`A004525(A042089(n)+A041601(n))`
-/

namespace A041827.P2533115706841775184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A042089 n + A041601 n).toNat

end

end A041827.P2533115706841775184

/-! ## A041827.P13346612368003980886

`A004526(A042089(n)+A041601(n))`
-/

namespace A041827.P13346612368003980886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A042089 n + A041601 n).toNat

end

end A041827.P13346612368003980886

/-! ## A041827.P1905721923424048472

`A004525(A042721(n)+A041257(n))`
-/

namespace A041827.P1905721923424048472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A042721 n + A041257 n).toNat

end

end A041827.P1905721923424048472

/-! ## A041827.P15924067269339726633

`A004526(A042721(n)+A041257(n))`
-/

namespace A041827.P15924067269339726633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A042721 n + A041257 n).toNat

end

end A041827.P15924067269339726633

/-!
# A041828: Numerators of continued fraction convergents to sqrt(435).

The programs for A041828, there is no canonical definition to state claims against.
-/

/-! ## A041828.P14159655324350471413

`record[2*A041834(n)-A041836(n)]`
-/

namespace A041828.P14159655324350471413
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A041834 n - A041836 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A041828.P14159655324350471413

/-!
# A041829: Denominators of continued fraction convergents to sqrt(435).

The programs for A041829, there is no canonical definition to state claims against.
-/

/-! ## A041829.P17425736794073001535

`A058207(A042401(n))`
-/

namespace A041829.P17425736794073001535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058207 (A042401 n).toNat

end

end A041829.P17425736794073001535

/-! ## A041829.P4587979247887881503

`A008611(A041837(n)-1)`
-/

namespace A041829.P4587979247887881503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 (A041837 n - 1).toNat

end

end A041829.P4587979247887881503

/-!
# A041833: Denominators of continued fraction convergents to sqrt(437).

The programs for A041833, there is no canonical definition to state claims against.
-/

/-! ## A041833.P10847780015783433657

`A242590(A041213(n))`
-/

namespace A041833.P10847780015783433657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242590 (A041213 n).toNat

end

end A041833.P10847780015783433657

/-! ## A041833.P2307135058280110896

`A051176(A042705(comp[6^∑{e}[n+1, #]]))`
-/

namespace A041833.P2307135058280110896
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 ^ (∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051176 (A042705 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)).toNat

end

end A041833.P2307135058280110896

/-!
# A041835: Denominators of continued fraction convergents to sqrt(438).

The programs for A041835, there is no canonical definition to state claims against.
-/

/-! ## A041835.P11267685868973659709

`A004396(A041837(n))`
-/

namespace A041835.P11267685868973659709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A041837 n).toNat

end

end A041835.P11267685868973659709

/-! ## A041835.P5722082676204704050

`A008611(A041839(n)-1)`
-/

namespace A041835.P5722082676204704050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 (A041839 n - 1).toNat

end

end A041835.P5722082676204704050

/-!
# A041837: Denominators of continued fraction convergents to sqrt(439).

The programs for A041837, there is no canonical definition to state claims against.
-/

/-! ## A041837.P16312192637641825406

`A000081(a(n-1))` with `a(0)=1, a(1)=1, a(2)=20, a(3)=21, a(4)=860, a(5)=881`
-/

namespace A041837.P16312192637641825406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 20, 21, 860, 881] fun n a =>
  A000081 (a (n - 1)).toNat

end

end A041837.P16312192637641825406

/-! ## A041837.P12805633290866406709

`A000244(a(n-1))` with `a(0)=1, a(1)=1, a(2)=20, a(3)=21, a(4)=860, a(5)=881`
-/

namespace A041837.P12805633290866406709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 20, 21, 860, 881] fun n a =>
  A000244 (a (n - 1)).toNat

end

end A041837.P12805633290866406709

/-!
# A041838: Numerators of continued fraction convergents to sqrt(440).

The programs for A041838, the canonical program `A041838.P13543000929243583135` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A041838 has offset 0).

The definition of A041838 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A041838.P13543000929243583135

`42*a(n-2)-a(n-4)` with `a(0)=20, a(1)=21, a(2)=860, a(3)=881`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A041838

/-- `42*a(n-2)-a(n-4)` -/
def P13543000929243583135.Spec : Prop :=
  ∀ n, P13543000929243583135.a n = A041838 n

theorem P13543000929243583135.correct : P13543000929243583135.Spec := by
  intro n
  simp only [A041838]

end A041838

/-! ## A041838.P4923029845649723062

`gcd(2, n)*A041198(n)`
-/

namespace A041838.P4923029845649723062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.gcd 2 n : ℤ) * A041198 n

end

end A041838.P4923029845649723062

namespace A041838

/-- `gcd(2, n)*A041198(n)` -/
def P4923029845649723062.Spec : Prop :=
  ∀ n, P4923029845649723062.a n = A041838 n

end A041838

/-! ## A041838.P1531953943760410040

`Δ[A007494(n)]*A041198(n)`
-/

namespace A041838.P1531953943760410040
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007494 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A041198 n

end

end A041838.P1531953943760410040

namespace A041838

/-- `Δ[A007494(n)]*A041198(n)` -/
def P1531953943760410040.Spec : Prop :=
  ∀ n, P1531953943760410040.a n = A041838 n

end A041838

/-! ## A041838.P815068170855924756

`A000034(n+1)*A041198(n)`
-/

namespace A041838.P815068170855924756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (n + 1) * A041198 n

end

end A041838.P815068170855924756

namespace A041838

/-- `A000034(n+1)*A041198(n)` -/
def P815068170855924756.Spec : Prop :=
  ∀ n, P815068170855924756.a n = A041838 n

end A041838

/-! ## A041838.P4660416875683721207

`A040001(n+2)*A041198(n)`
-/

namespace A041838.P4660416875683721207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040001 (n + 2) * A041198 n

end

end A041838.P4660416875683721207

namespace A041838

/-- `A040001(n+2)*A041198(n)` -/
def P4660416875683721207.Spec : Prop :=
  ∀ n, P4660416875683721207.a n = A041838 n

end A041838

/-! ## A041838.P17758988764548074760

`2/A000034(n)*A041198(n)`
-/

namespace A041838.P17758988764548074760
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 / (A000034 n : ℚ) * (A041198 n : ℚ)

end

end A041838.P17758988764548074760

namespace A041838

/-- `2/A000034(n)*A041198(n)` -/
def P17758988764548074760.Spec : Prop :=
  ∀ n, P17758988764548074760.a n = (A041838 n : ℚ)

end A041838

/-! ## A041838.P970339351184143079

`lcm(gcd(4, A040419(n)), A041198(n))`
-/

namespace A041838.P970339351184143079
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (Int.gcd 4 (A040419 n) : ℤ) (A041198 n)

end

end A041838.P970339351184143079

namespace A041838

/-- `lcm(gcd(4, A040419(n)), A041198(n))` -/
def P970339351184143079.Spec : Prop :=
  ∀ n, (P970339351184143079.a n : ℤ) = A041838 n

end A041838

/-! ## A041838.P6102045613586291305

`A041198(n+10)%4*A041198(n)`
-/

namespace A041838.P6102045613586291305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A041198 (n + 10)) 4 * A041198 n

end

end A041838.P6102045613586291305

namespace A041838

/-- `A041198(n+10)%4*A041198(n)` -/
def P6102045613586291305.Spec : Prop :=
  ∀ n, P6102045613586291305.a n = A041838 n

end A041838

/-!
# A041839: Denominators of continued fraction convergents to sqrt(440).

The programs for A041839, the canonical program `A041839.P6147353731586544628` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A041839 has offset 0).

The definition of A041839 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A041839.P6147353731586544628

`42*a(n-2)-a(n-4)` with `a(0)=1, a(1)=1, a(2)=41, a(3)=42`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A041839

/-- `42*a(n-2)-a(n-4)` -/
def P6147353731586544628.Spec : Prop :=
  ∀ n, P6147353731586544628.a n = A041839 n

theorem P6147353731586544628.correct : P6147353731586544628.Spec := by
  intro n
  simp only [A041839]

end A041839

/-! ## A041839.P6318804569770298917

`lcm(2, A041199(n))/2`
-/

namespace A041839.P6318804569770298917
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm 2 (A041199 n) : ℚ) / 2

end

end A041839.P6318804569770298917

namespace A041839

/-- `lcm(2, A041199(n))/2` -/
def P6318804569770298917.Spec : Prop :=
  ∀ n, P6318804569770298917.a n = (A041839 n : ℚ)

end A041839

/-! ## A041839.P10279032974662183541

`A041199(n)/Δ[A001651(n+1)]`
-/

namespace A041839.P10279032974662183541
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001651 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041199 n : ℚ) / (f1 (n + 1) - f1 n : ℚ)

end

end A041839.P10279032974662183541

namespace A041839

/-- `A041199(n)/Δ[A001651(n+1)]` -/
def P10279032974662183541.Spec : Prop :=
  ∀ n, P10279032974662183541.a n = (A041839 n : ℚ)

end A041839

/-! ## A041839.P1857976904199051736

`A041199(n)/(A041198(n)%2+1)`
-/

namespace A041839.P1857976904199051736
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041199 n : ℚ) / (Int.tmod (A041198 n) 2 + 1 : ℚ)

end

end A041839.P1857976904199051736

namespace A041839

/-- `A041199(n)/(A041198(n)%2+1)` -/
def P1857976904199051736.Spec : Prop :=
  ∀ n, P1857976904199051736.a n = (A041839 n : ℚ)

end A041839

/-! ## A041839.P6341438357585776175

`A041199(n)/gcd(2, A041199(n+10))`
-/

namespace A041839.P6341438357585776175
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041199 n : ℚ) / (Int.gcd 2 (A041199 (n + 10)) : ℚ)

end

end A041839.P6341438357585776175

namespace A041839

/-- `A041199(n)/gcd(2, A041199(n+10))` -/
def P6341438357585776175.Spec : Prop :=
  ∀ n, P6341438357585776175.a n = (A041839 n : ℚ)

end A041839

/-!
# A041840: Numerators of continued fraction convergents to sqrt(442).

The programs for A041840, the canonical program `A041840.P15357013018955268593` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A041840 has offset 0).

The definition of A041840 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A041840.P15357013018955268593

`42*a(n-1)+a(n-2)` with `a(0)=21, a(1)=883`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A041840

/-- `42*a(n-1)+a(n-2)` -/
def P15357013018955268593.Spec : Prop :=
  ∀ n, (P15357013018955268593.a n : ℤ) = A041840 n

theorem P15357013018955268593.correct : P15357013018955268593.Spec := by
  intro n
  simp only [A041840]

end A041840

/-!
# A041841: Denominators of continued fraction convergents to sqrt(442).

The programs for A041841, the canonical program `A041841.P8169203391059113414` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A041841 has offset 0).

The definition of A041841 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A041841.P8169203391059113414

`42*a(n-1)+a(n-2)` with `a(0)=1, a(1)=42`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A041841

/-- `42*a(n-1)+a(n-2)` -/
def P8169203391059113414.Spec : Prop :=
  ∀ n, (P8169203391059113414.a n : ℤ) = A041841 n

theorem P8169203391059113414.correct : P8169203391059113414.Spec := by
  intro n
  simp only [A041841]

end A041841

/-! ## A041841.P8359193118026644285

`xor(1, a(n-1)²)/a(n-2)` with `a(0)=1, a(1)=42`
-/

namespace A041841.P8359193118026644285
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 42] fun n a =>
  (Int.xor 1 (SequenceMachineLib.roundAway (a (n - 1) ^ 2)) : ℚ) / a (n - 2)

end

end A041841.P8359193118026644285

namespace A041841

/-- `xor(1, a(n-1)²)/a(n-2)` -/
def P8359193118026644285.Spec : Prop :=
  ∀ n, P8359193118026644285.a n = (A041841 n : ℚ)

end A041841

/-! ## A041841.P4743437913842761546

`floor((a(n-1)²+1)/a(n-2))` with `a(0)=1, a(1)=42`
-/

namespace A041841.P4743437913842761546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 42] fun n a =>
  ⌊(a (n - 1) ^ 2 + 1 : ℚ) / (a (n - 2) : ℚ)⌋

end

end A041841.P4743437913842761546

namespace A041841

/-- `floor((a(n-1)²+1)/a(n-2))` -/
def P4743437913842761546.Spec : Prop :=
  ∀ n, P4743437913842761546.a n = A041841 n

end A041841

/-!
# A041844: Numerators of continued fraction convergents to sqrt(444).

The programs for A041844, there is no canonical definition to state claims against.
-/

/-! ## A041844.P16812179705551116126

`A041200(3*n+2)`
-/

namespace A041844.P16812179705551116126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041200 (3 * n + 2)

end

end A041844.P16812179705551116126

/-! ## A041844.P9897126399793958104

`or(1, A041200(A016789(n)))`
-/

namespace A041844.P9897126399793958104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A041200 (A016789 n).toNat)

end

end A041844.P9897126399793958104

/-! ## A041844.P17370605544104115014

`lcm(A033999(n), A041200(A016789(n)))`
-/

namespace A041844.P17370605544104115014
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A041200 (A016789 n).toNat)

end

end A041844.P17370605544104115014

/-! ## A041844.P14682327169420547408

`A007318(∑[n])*A041200(A016789(n))`
-/

namespace A041844.P14682327169420547408
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j) * A041200 (A016789 n).toNat

end

end A041844.P14682327169420547408

/-! ## A041844.P5445808709817757818

`A041200(A016789(n))+char[A016797(n)]`
-/

namespace A041844.P5445808709817757818
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016797 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041200 (A016789 n).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A041844.P5445808709817757818

/-! ## A041844.P2947179361185728187

`A041200(A016789(n))/A007318(∑[n+1])`
-/

namespace A041844.P2947179361185728187
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041200 (A016789 n).toNat : ℚ) / (A007318 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ)

end

end A041844.P2947179361185728187

/-! ## A041844.P14834949493420974270

`A014963(A008458(n))*A041200(A016789(n))`
-/

namespace A041844.P14834949493420974270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A008458 n).toNat * A041200 (A016789 n).toNat

end

end A041844.P14834949493420974270

/-!
# A041845: Denominators of continued fraction convergents to sqrt(444).

The programs for A041845, there is no canonical definition to state claims against.
-/

/-! ## A041845.P3071568545585946827

`∑[A041201(3*n)]`
-/

namespace A041845.P3071568545585946827
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041201 (3 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A041845.P3071568545585946827

/-! ## A041845.P12522545153530943261

`A041201(3*n)+a(A023443(n))` with `a(0)=1`
-/

namespace A041845.P12522545153530943261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A041201 (3 * n) + a (A023443 n).toNat

end

end A041845.P12522545153530943261

/-! ## A041845.P8575313322042353599

`A041201(3*n)+A155054(n+1)%2*a(n-1)` with `a(0)=1`
-/

namespace A041845.P8575313322042353599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A041201 (3 * n) + Int.tmod (A155054 (n + 1)) 2 * a (n - 1)

end

end A041845.P8575313322042353599

/-! ## A041845.P4120394541118728754

`A041201(3*n)+a(A249674(n)-A248572(n))` with `a(0)=1`
-/

namespace A041845.P4120394541118728754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A041201 (3 * n) + a (A249674 n - A248572 n).toNat

end

end A041845.P4120394541118728754

/-! ## A041845.P7736301971384238211

`A041201(3*n+2)/2`
-/

namespace A041845.P7736301971384238211
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041201 (3 * n + 2) : ℚ) / 2

end

end A041845.P7736301971384238211

/-!
# A041846: Numerators of continued fraction convergents to sqrt(445).

The programs for A041846, there is no canonical definition to state claims against.
-/

/-! ## A041846.P4018551385256039788

`A007093(A041426(n))`
-/

namespace A041846.P4018551385256039788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007093 (A041426 n).toNat

end

end A041846.P4018551385256039788

/-!
# A041847: Denominators of continued fraction convergents to sqrt(445).

The programs for A041847, there is no canonical definition to state claims against.
-/

/-! ## A041847.P9467780445903129556

`A213603(∑[∑[lcm(2, n)+n]]+1)`
-/

namespace A041847.P9467780445903129556
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 2 n + n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213603 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A041847.P9467780445903129556

/-!
# A041852: Numerators of continued fraction convergents to sqrt(448).

The programs for A041852, there is no canonical definition to state claims against.
-/

/-! ## A041852.P12623712393860665288

`A041202(3*n+2)`
-/

namespace A041852.P12623712393860665288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041202 (3 * n + 2)

end

end A041852.P12623712393860665288

/-! ## A041852.P5300738876452121446

`or(1, A041202(A016789(n)))`
-/

namespace A041852.P5300738876452121446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A041202 (A016789 n).toNat)

end

end A041852.P5300738876452121446

/-! ## A041852.P4183655090950328798

`lcm(A033999(n), A041202(A016789(n)))`
-/

namespace A041852.P4183655090950328798
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A041202 (A016789 n).toNat)

end

end A041852.P4183655090950328798

/-! ## A041852.P6362043630134227237

`char[A002262(n)]*A041202(A016789(n))`
-/

namespace A041852.P6362043630134227237
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A041202 (A016789 n).toNat

end

end A041852.P6362043630134227237

/-! ## A041852.P3965810920501216906

`char[A049600(n)]*A041202(A016789(n))`
-/

namespace A041852.P3965810920501216906
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049600 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A041202 (A016789 n).toNat

end

end A041852.P3965810920501216906

/-!
# A041853: Denominators of continued fraction convergents to sqrt(448).

The programs for A041853, there is no canonical definition to state claims against.
-/

/-! ## A041853.P5437799891177593509

`∑[A041203(3*n)]`
-/

namespace A041853.P5437799891177593509
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041203 (3 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A041853.P5437799891177593509

/-! ## A041853.P3887245152055042085

`A041203(3*n+2)/2`
-/

namespace A041853.P3887245152055042085
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041203 (3 * n + 2) : ℚ) / 2

end

end A041853.P3887245152055042085

/-! ## A041853.P5358573401952483450

`A041203(3*n+1)-a(n-1)` with `a(0)=1`
-/

namespace A041853.P5358573401952483450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A041203 (3 * n + 1) - a (n - 1)

end

end A041853.P5358573401952483450

/-!
# A041857: Denominators of continued fraction convergents to sqrt(450).

The programs for A041857, there is no canonical definition to state claims against.
-/

/-! ## A041857.P16326245127880828266

`A099375(n*A213591(n+1))+n`
-/

namespace A041857.P16326245127880828266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099375 ((n : ℤ) * A213591 (n + 1)).toNat + (n : ℤ)

end

end A041857.P16326245127880828266

/-!
# A041859: Denominators of continued fraction convergents to sqrt(451).

The programs for A041859, there is no canonical definition to state claims against.
-/

/-! ## A041859.P16954875543012201857

`record[A132379(a(n-1)+2+n)]` with `a(0)=1, a(1)=1, a(2)=4`
-/

namespace A041859.P16954875543012201857
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 4] fun n f1 =>
  A132379 (f1 (n - 1) + 2 + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A041859.P16954875543012201857

/-!
# A041865: Denominators of continued fraction convergents to sqrt(454).

The programs for A041865, there is no canonical definition to state claims against.
-/

/-! ## A041865.P4110943222381352576

`A098222(a(n-3))` with `a(0)=1, a(1)=3, a(2)=10`
-/

namespace A041865.P4110943222381352576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3, 10] fun n a =>
  A098222 (a (n - 3)).toNat

end

end A041865.P4110943222381352576

/-!
# A041867: Denominators of continued fraction convergents to sqrt(455).

The programs for A041867, the canonical program `A041867.P8436151594845562776` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A041867 has offset 0).

The definition of A041867 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A041867.P8436151594845562776

`128*a(n-2)-a(n-4)` with `a(0)=1, a(1)=3, a(2)=127, a(3)=384`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A041867

/-- `128*a(n-2)-a(n-4)` -/
def P8436151594845562776.Spec : Prop :=
  ∀ n, P8436151594845562776.a n = A041867 n

theorem P8436151594845562776.correct : P8436151594845562776.Spec := by
  intro n
  simp only [A041867]

end A041867

/-!
# A041870: Numerators of continued fraction convergents to sqrt(457).

The programs for A041870, there is no canonical definition to state claims against.
-/

/-! ## A041870.P5618879571244609389

`A350841(A267258(n))+A161942(n+1)`
-/

namespace A041870.P5618879571244609389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350841 (A267258 n).toNat + A161942 (n + 1)

end

end A041870.P5618879571244609389

/-!
# A041873: Denominators of continued fraction convergents to sqrt(458).

The programs for A041873, there is no canonical definition to state claims against.
-/

/-! ## A041873.P14479543264386682047

`A069787(C(A045623(n), A286940(n)))`
-/

namespace A041873.P14479543264386682047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069787 (Nat.choose (A045623 n).toNat (A286940 n).toNat)

end

end A041873.P14479543264386682047

/-!
# A041875: Denominators of continued fraction convergents to sqrt(459).

The programs for A041875, there is no canonical definition to state claims against.
-/

/-! ## A041875.P5920167256232983670

`A270613(A108469(n))+A130250(n)`
-/

namespace A041875.P5920167256232983670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270613 (A108469 n).toNat + A130250 n

end

end A041875.P5920167256232983670

/-! ## A041875.P13935539572255762701

`A071113(n+1)+A004526(A348805(n))`
-/

namespace A041875.P13935539572255762701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071113 (n + 1) + A004526 (A348805 n).toNat

end

end A041875.P13935539572255762701

/-!
# A041877: Denominators of continued fraction convergents to sqrt(460).

The programs for A041877, there is no canonical definition to state claims against.
-/

/-! ## A041877.P17613897884908750070

`record[A001055(∑[A101932(n+1)])]`
-/

namespace A041877.P17613897884908750070
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101932 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001055 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A041877.P17613897884908750070

/-! ## A041877.P6926539696487361312

`A001055((A033680(n+1)+1)*3^n)`
-/

namespace A041877.P6926539696487361312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001055 ((A033680 (n + 1) + 1) * (3 ^ n : ℤ)).toNat

end

end A041877.P6926539696487361312

/-!
# A041879: Denominators of continued fraction convergents to sqrt(461).

The programs for A041879, there is no canonical definition to state claims against.
-/

/-! ## A041879.P12374858847024226650

`A213219(record[A213057(n)])`
-/

namespace A041879.P12374858847024226650
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213057 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213219 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A041879.P12374858847024226650

/-!
# A041881: Denominators of continued fraction convergents to sqrt(462).

The programs for A041881, the canonical program `A041881.P3494221726450464264` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A041881 has offset 0).

The definition of A041881 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A041881.P3494221726450464264

`86*a(n-2)-a(n-4)` with `a(0)=1, a(1)=2, a(2)=85, a(3)=172`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A041881

/-- `86*a(n-2)-a(n-4)` -/
def P3494221726450464264.Spec : Prop :=
  ∀ n, P3494221726450464264.a n = A041881 n

theorem P3494221726450464264.correct : P3494221726450464264.Spec := by
  intro n
  simp only [A041881]

end A041881

/-!
# A041883: Denominators of continued fraction convergents to sqrt(463).

The programs for A041883, there is no canonical definition to state claims against.
-/

/-! ## A041883.P9454192806757061503

`A296339(A189346(n+1)+n!)`
-/

namespace A041883.P9454192806757061503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296339 (A189346 (n + 1) + (Nat.factorial n : ℤ)).toNat

end

end A041883.P9454192806757061503

/-! ## A041883.P11616102900054828549

`A392975(A392966(n))%A151791(2*n+5)`
-/

namespace A041883.P11616102900054828549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A392975 (A392966 n).toNat) (A151791 (2 * n + 5))

end

end A041883.P11616102900054828549

/-!
# A041884: Numerators of continued fraction convergents to sqrt(464).

The programs for A041884, there is no canonical definition to state claims against.
-/

/-! ## A041884.P8369136407809711413

`A041970(n)-A187829(A041971(n))`
-/

namespace A041884.P8369136407809711413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041970 n - A187829 (A041971 n).toNat

end

end A041884.P8369136407809711413

/-!
# A041885: Denominators of continued fraction convergents to sqrt(464).

The programs for A041885, there is no canonical definition to state claims against.
-/

/-! ## A041885.P13320199858850016027

`a(n-2)+a(n-1)*A040442(n)` with `a(0)=1, a(1)=1, a(2)=2`
-/

namespace A041885.P13320199858850016027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2] fun n a =>
  a (n - 2) + a (n - 1) * A040442 n

end

end A041885.P13320199858850016027

/-! ## A041885.P12637166349016158592

`a(n-2)+gcd(5, A048143(n))*a(n-1)` with `a(0)=1, a(1)=1`
-/

namespace A041885.P12637166349016158592
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 2) + Int.gcd 5 (A048143 n) * a (n - 1)

end

end A041885.P12637166349016158592

/-!
# A041890: Numerators of continued fraction convergents to sqrt(467).

The programs for A041890, there is no canonical definition to state claims against.
-/

/-! ## A041890.P13259806336945393226

`A210357(A042812(n)-1)`
-/

namespace A041890.P13259806336945393226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210357 (A042812 n - 1).toNat

end

end A041890.P13259806336945393226

/-!
# A041892: Numerators of continued fraction convergents to sqrt(468).

The programs for A041892, there is no canonical definition to state claims against.
-/

/-! ## A041892.P14649891676384213243

`A248231(A042814(n))`
-/

namespace A041892.P14649891676384213243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248231 (A042814 n).toNat

end

end A041892.P14649891676384213243

/-!
# A041895: Denominators of continued fraction convergents to sqrt(469).

The programs for A041895, there is no canonical definition to state claims against.
-/

/-! ## A041895.P12490436760268009420

`a(n-2)+a(n-1)*A040447(n)` with `a(0)=1, a(1)=1`
-/

namespace A041895.P12490436760268009420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 2) + a (n - 1) * A040447 n

end

end A041895.P12490436760268009420

/-! ## A041895.P7989863535569301945

`A118301(2^n+n*char[2^n])`
-/

namespace A041895.P7989863535569301945
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118301 (2 ^ n + n * (if ∃ j, f1 j = n then 1 else 0))

end

end A041895.P7989863535569301945

/-!
# A041899: Denominators of continued fraction convergents to sqrt(471).

The programs for A041899, there is no canonical definition to state claims against.
-/

/-! ## A041899.P15588680039280619498

`A278060(A148742(n))`
-/

namespace A041899.P15588680039280619498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278060 (A148742 n).toNat

end

end A041899.P15588680039280619498

/-! ## A041899.P257867575721770539

`A327471(n)+A061358(A006013(n))`
-/

namespace A041899.P257867575721770539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327471 n + A061358 (A006013 n).toNat

end

end A041899.P257867575721770539

/-! ## A041899.P12735527211402191918

`xor(A000088(n), A001222(A121674(n)))`
-/

namespace A041899.P12735527211402191918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000088 n) (A001222 (A121674 n).toNat)

end

end A041899.P12735527211402191918

