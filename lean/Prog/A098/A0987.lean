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
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
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
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B008.C000
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
# A098700: Numbers n such that x' = n has no integer solution, where x' is the arithmetic derivative of x.

The programs for A098700, there is no canonical definition to state claims against.
-/

/-! ## A098700.P13113349386362798781

`record[gcd(n+2, A099302(n+2))]`
-/

namespace A098700.P13113349386362798781
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 2 : ℤ) (A099302 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A098700.P13113349386362798781

/-! ## A098700.P12198478907574041197

`eq[2, A000040(A099302(n+2)+1)]+2`
-/

namespace A098700.P12198478907574041197
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A099302 (n + 2) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A098700.P12198478907574041197

/-! ## A098700.P15332721396285128821

`eq[0, A098699(n)]`
-/

namespace A098700.P15332721396285128821
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098699 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A098700.P15332721396285128821

/-! ## A098700.P5455331251353830409

`record[n+2-A098699(n+2)]`
-/

namespace A098700.P5455331251353830409
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) - A098699 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A098700.P5455331251353830409

/-! ## A098700.P14867174383976729560

`lt[A098699(n), A098725(n)]`
-/

namespace A098700.P14867174383976729560
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098699 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098725 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A098700.P14867174383976729560

/-! ## A098700.P15044946417054250380

`lt[A098699(n)², A004086(n)]`
-/

namespace A098700.P15044946417054250380
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098699 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A098700.P15044946417054250380

/-! ## A098700.P4087007692710175334

`lt[A098699(n)², A245092(n)]`
-/

namespace A098700.P4087007692710175334
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098699 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245092 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A098700.P4087007692710175334

/-! ## A098700.P6400940104182434314

`lt[A098699(n)², A249916(n)]`
-/

namespace A098700.P6400940104182434314
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098699 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249916 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A098700.P6400940104182434314

/-! ## A098700.P3862013855590215075

`record[C(2, A098699(n))*A028310(n)]`
-/

namespace A098700.P3862013855590215075
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose 2 (A098699 n).toNat : ℤ) * A028310 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A098700.P3862013855590215075

/-! ## A098700.P7675173008036375494

`record[C(2, A098699(n))*A065033(2*n)]`
-/

namespace A098700.P7675173008036375494
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose 2 (A098699 n).toNat : ℤ) * A065033 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A098700.P7675173008036375494

/-! ## A098700.P3805379996187549082

`record[2-A099303(n+2)+n]`
-/

namespace A098700.P3805379996187549082
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A099303 (n + 2) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A098700.P3805379996187549082

/-! ## A098700.P13590839169468395167

`lt[A098699(n)², A098732(n+1)]`
-/

namespace A098700.P13590839169468395167
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098699 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098732 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A098700.P13590839169468395167

/-! ## A098700.P12556312986371189689

`eq[A099302(n+2), A099303(n+2)]+2`
-/

namespace A098700.P12556312986371189689
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099302 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099303 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 2

end

end A098700.P12556312986371189689

/-! ## A098700.P5267941734176525790

`eq[A099302(A233583(n+1))+n, A233583(n+1)]`
-/

namespace A098700.P5267941734176525790
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099302 (A233583 (n + 1)).toNat + (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A098700.P5267941734176525790

/-!
# A098701: Number of solutions to rev(x^2) = rev(x)^2 with n digits, where the rev(x) function reverses the digits of x.

The programs for A098701, there is no canonical definition to state claims against.
-/

/-! ## A098701.P9948048406104079530

`A064764(A240727(2*n+3))+n+1`
-/

namespace A098701.P9948048406104079530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064764 (A240727 (2 * n + 3)).toNat + (n + 1 : ℤ)

end

end A098701.P9948048406104079530

/-! ## A098701.P16353106518401029334

`A196479(n+1)+A066272(A002110(n))`
-/

namespace A098701.P16353106518401029334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196479 (n + 1) + A066272 (A002110 n).toNat

end

end A098701.P16353106518401029334

/-!
# A098702: Number of self-polar configurations of type (n_3).

The programs for A098702, there is no canonical definition to state claims against.
-/

/-! ## A098702.P11366389610620813711

`A100001(n+1)-A098852(A279344(n))`
-/

namespace A098702.P11366389610620813711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100001 (n + 1) - A098852 (A279344 n).toNat

end

end A098702.P11366389610620813711

/-! ## A098702.P12866399393548086421

`A100001(n+1)-A001403(A214501(n+1))`
-/

namespace A098702.P12866399393548086421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100001 (n + 1) - A001403 (A214501 (n + 1)).toNat

end

end A098702.P12866399393548086421

/-! ## A098702.P8458720817657906237

`A100001(n+1)-A184974(A104144(n))`
-/

namespace A098702.P8458720817657906237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100001 (n + 1) - A184974 (A104144 n).toNat

end

end A098702.P8458720817657906237

/-! ## A098702.P15616647553377240965

`A100001(n+1)-A251765(A179959(n))`
-/

namespace A098702.P15616647553377240965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100001 (n + 1) - A251765 (A179959 n).toNat

end

end A098702.P15616647553377240965

/-! ## A098702.P16680647212010750249

`A100001(n+1)-A184974(A251747(n))`
-/

namespace A098702.P16680647212010750249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100001 (n + 1) - A184974 (A251747 n).toNat

end

end A098702.P16680647212010750249

/-!
# A098703: a(n) = (3^n + phi^(n-1) + (-phi)^(1-n)) / 5, where phi denotes the golden ratio A001622.

The programs for A098703, the canonical program `A098703.P2547378600958249690` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A098703 has offset 0).

The definition of A098703 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A098703.P14213737921953428189

`a(n-1)+a(n-2)+3^(n-2)` with `a(0)=0, a(1)=1`
-/

namespace A098703.P14213737921953428189
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (n - 1) + a (n - 2) + (3 : ℚ) ^ ((n : ℤ) - 2 : ℤ)

end

end A098703.P14213737921953428189

namespace A098703

/-- `a(n-1)+a(n-2)+3^(n-2)` -/
def P14213737921953428189.Spec : Prop :=
  ∀ n, P14213737921953428189.a n = (A098703 n : ℚ)

end A098703

/-! ## A098703.P2547378600958249690

`4*a(n-1)-2*a(n-2)-3*a(n-3)` with `a(0)=0, a(1)=1, a(2)=2`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A098703

/-- `4*a(n-1)-2*a(n-2)-3*a(n-3)` -/
def P2547378600958249690.Spec : Prop :=
  ∀ n, P2547378600958249690.a n = A098703 n

theorem P2547378600958249690.correct : P2547378600958249690.Spec := by
  intro n
  simp only [A098703]

end A098703

/-! ## A098703.P517361429537567180

`(3^n+ϕ^(n-1)+(-ϕ)^(1-n))/5`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A098703.P517361429537567180
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((3 ^ n : ℝ) + Real.goldenRatio ^ ((n : ℤ) - 1 : ℤ) + (-Real.goldenRatio) ^ (1 - (n : ℤ) : ℤ)) / 5

end

end A098703.P517361429537567180

namespace A098703

/-- `(3^n+ϕ^(n-1)+(-ϕ)^(1-n))/5` -/
def P517361429537567180.Spec : Prop :=
  ∀ n, P517361429537567180.a n = (A098703 n : ℝ)

end A098703

/-! ## A098703.P4639928250263832998

`A000045(n)+(3^n-A000032(n+1))/5`
-/

namespace A098703.P4639928250263832998
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000045 n : ℚ) + ((3 ^ n : ℤ) - A000032 (n + 1) : ℚ) / 5

end

end A098703.P4639928250263832998

namespace A098703

/-- `A000045(n)+(3^n-A000032(n+1))/5` -/
def P4639928250263832998.Spec : Prop :=
  ∀ n, P4639928250263832998.a n = (A098703 n : ℚ)

end A098703

/-! ## A098703.P5556306707399048338

`ogf((x-2x^2)/(1-4x+2x^2+3x^3))`
-/

namespace A098703.P5556306707399048338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, -2] [1, -4, 2, 3] n

end

end A098703.P5556306707399048338

namespace A098703

/-- `ogf((x-2x^2)/(1-4x+2x^2+3x^3))` -/
def P5556306707399048338.Spec : Prop :=
  ∀ n, P5556306707399048338.a n = A098703 n

end A098703

/-! ## A098703.P17515973019471648516

`∑[A099159(n)]-A099159(n)`
-/

namespace A098703.P17515973019471648516
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099159 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A099159 n

end

end A098703.P17515973019471648516

namespace A098703

/-- `∑[A099159(n)]-A099159(n)` -/
def P17515973019471648516.Spec : Prop :=
  ∀ n, P17515973019471648516.a n = A098703 n

end A098703

/-! ## A098703.P10726361318834268489

`A099159(n+1)-3^n`
-/

namespace A098703.P10726361318834268489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099159 (n + 1) - (3 ^ n : ℤ)

end

end A098703.P10726361318834268489

namespace A098703

/-- `A099159(n+1)-3^n` -/
def P10726361318834268489.Spec : Prop :=
  ∀ n, P10726361318834268489.a n = A098703 n

end A098703

/-! ## A098703.P8792350351010928288

`A106517(n)-A212323(n)`
-/

namespace A098703.P8792350351010928288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106517 n - A212323 n

end

end A098703.P8792350351010928288

namespace A098703

/-- `A106517(n)-A212323(n)` -/
def P8792350351010928288.Spec : Prop :=
  ∀ n, P8792350351010928288.a n = A098703 n

end A098703

/-! ## A098703.P11811880100615527361

`A000045(n)+A106517(n)-A000244(n)`
-/

namespace A098703.P11811880100615527361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n + (A106517 n - A000244 n)

end

end A098703.P11811880100615527361

namespace A098703

/-- `A000045(n)+A106517(n)-A000244(n)` -/
def P11811880100615527361.Spec : Prop :=
  ∀ n, P11811880100615527361.a n = A098703 n

end A098703

/-! ## A098703.P5925825133578343611

`A065220(n)+A106517(n)-A024024(n)`
-/

namespace A098703.P5925825133578343611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065220 n + (A106517 n - A024024 n)

end

end A098703.P5925825133578343611

namespace A098703

/-- `A065220(n)+A106517(n)-A024024(n)` -/
def P5925825133578343611.Spec : Prop :=
  ∀ n, P5925825133578343611.a n = A098703 n

end A098703

/-! ## A098703.P15579978483562065961

`A106517(n)-(A099159(n)+A094688(n))`
-/

namespace A098703.P15579978483562065961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106517 n - (A099159 n + A094688 n)

end

end A098703.P15579978483562065961

namespace A098703

/-- `A106517(n)-(A099159(n)+A094688(n))` -/
def P15579978483562065961.Spec : Prop :=
  ∀ n, P15579978483562065961.a n = A098703 n

end A098703

/-! ## A098703.P16384289061121864863

`A000045(n)+A099167(n)-A094688(n+1)`
-/

namespace A098703.P16384289061121864863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n + (A099167 n - A094688 (n + 1))

end

end A098703.P16384289061121864863

namespace A098703

/-- `A000045(n)+A099167(n)-A094688(n+1)` -/
def P16384289061121864863.Spec : Prop :=
  ∀ n, P16384289061121864863.a n = A098703 n

end A098703

/-!
# A098704: Decimal form of the binary numbers 10, 100010, 1000100010, 10001000100010, 100010001000100010,...

The programs for A098704, the canonical program `A098704.P3083018532171586107` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A098704 has offset 2).

The definition of A098704 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A098704.P3083018532171586107

`16*a(n-1)+2` with `a(0)=2`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A098704

/-- `16*a(n-1)+2` -/
def P3083018532171586107.Spec : Prop :=
  ∀ n, (P3083018532171586107.a n : ℤ) = A098704 (n + 2)

theorem P3083018532171586107.correct : P3083018532171586107.Spec := by
  intro n
  simp only [A098704, Nat.add_sub_cancel]

end A098704

/-! ## A098704.P2326412620988698683

`2*A131865(n)`
-/

namespace A098704.P2326412620988698683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A131865 n

end

end A098704.P2326412620988698683

namespace A098704

/-- `2*A131865(n)` -/
def P2326412620988698683.Spec : Prop :=
  ∀ n, P2326412620988698683.a n = A098704 (n + 2)

end A098704

/-! ## A098704.P3073777108469633881

`2*(16^(n+1)-1)/15`
-/

namespace A098704.P3073777108469633881
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * ((16 ^ (n + 1) : ℤ) - 1) : ℚ) / 15

end

end A098704.P3073777108469633881

namespace A098704

/-- `2*(16^(n+1)-1)/15` -/
def P3073777108469633881.Spec : Prop :=
  ∀ n, P3073777108469633881.a n = (A098704 (n + 2) : ℚ)

theorem P3073777108469633881.correct : P3073777108469633881.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A098704, Nat.add_sub_cancel, A098704.P3073777108469633881.a, A098704.P3083018532171586107.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A098704, Nat.add_sub_cancel, A098704.P3073777108469633881.a, A098704.P3083018532171586107.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [← h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A098704

/-! ## A098704.P7865713585846691978

`lcm(2, ∑[16^n])`
-/

namespace A098704.P7865713585846691978
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16 ^ n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 2 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A098704.P7865713585846691978

namespace A098704

/-- `lcm(2, ∑[16^n])` -/
def P7865713585846691978.Spec : Prop :=
  ∀ n, (P7865713585846691978.a n : ℤ) = A098704 (n + 2)

end A098704

/-! ## A098704.P2874751269999690099

`ogf(2/(1-17x+16x^2))`
-/

namespace A098704.P2874751269999690099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2] [1, -17, 16] n

end

end A098704.P2874751269999690099

namespace A098704

/-- `ogf(2/(1-17x+16x^2))` -/
def P2874751269999690099.Spec : Prop :=
  ∀ n, P2874751269999690099.a n = A098704 (n + 2)

end A098704

/-! ## A098704.P4876449436966729114

`∑[16*a(n-1)]` with `a(0)=2`
-/

namespace A098704.P4876449436966729114
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2] fun n f1 =>
  16 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A098704.P4876449436966729114

namespace A098704

/-- `∑[16*a(n-1)]` -/
def P4876449436966729114.Spec : Prop :=
  ∀ n, (P4876449436966729114.a n : ℤ) = A098704 (n + 2)

end A098704

/-! ## A098704.P4539300999667545459

`or(2, 16*a(n-1))` with `a(0)=2`
-/

namespace A098704.P4539300999667545459
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2] fun n a =>
  Nat.lor 2 (16 * a (n - 1))

end

end A098704.P4539300999667545459

namespace A098704

/-- `or(2, 16*a(n-1))` -/
def P4539300999667545459.Spec : Prop :=
  ∀ n, (P4539300999667545459.a n : ℤ) = A098704 (n + 2)

end A098704

/-! ## A098704.P17578448232079291873

`xor(2, 16*a(n-1))` with `a(0)=2`
-/

namespace A098704.P17578448232079291873
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2] fun n a =>
  Nat.xor 2 (16 * a (n - 1))

end

end A098704.P17578448232079291873

namespace A098704

/-- `xor(2, 16*a(n-1))` -/
def P17578448232079291873.Spec : Prop :=
  ∀ n, (P17578448232079291873.a n : ℤ) = A098704 (n + 2)

end A098704

/-! ## A098704.P4658329746259968305

`lcm(32, a(n-1))+2` with `a(0)=2`
-/

namespace A098704.P4658329746259968305
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2] fun n a =>
  Nat.lcm 32 (a (n - 1)) + 2

end

end A098704.P4658329746259968305

namespace A098704

/-- `lcm(32, a(n-1))+2` -/
def P4658329746259968305.Spec : Prop :=
  ∀ n, (P4658329746259968305.a n : ℤ) = A098704 (n + 2)

end A098704

/-! ## A098704.P15555709953219584962

`a(n-1)/(1/4)²+2` with `a(0)=2`
-/

namespace A098704.P15555709953219584962
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [2] fun n a =>
  a (n - 1) / ((1 : ℚ) / 4) ^ 2 + 2

end

end A098704.P15555709953219584962

namespace A098704

/-- `a(n-1)/(1/4)²+2` -/
def P15555709953219584962.Spec : Prop :=
  ∀ n, P15555709953219584962.a n = (A098704 (n + 2) : ℚ)

end A098704

/-!
# A098706: a(n) = 2*A076218(n).

The programs for A098706, the canonical program `A098706.P4208659802214114039` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A098706 has offset 0).

The definition of A098706 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A098706.P13545455173812485099

`35*a(n-1)-35*a(n-2)+a(n-3)` with `a(0)=0, a(1)=2, a(2)=10, a(3)=290`
-/

namespace A098706.P13545455173812485099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 2, 10, 290] fun n a =>
  35 * a (n - 1) - 35 * a (n - 2) + a (n - 3)

end

end A098706.P13545455173812485099

namespace A098706

/-- `35*a(n-1)-35*a(n-2)+a(n-3)` -/
def P13545455173812485099.Spec : Prop :=
  ∀ n, P13545455173812485099.a n = A098706 n

end A098706

/-! ## A098706.P4208659802214114039

`2*A076218(n+1)`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A098706

/-- `2*A076218(n+1)` -/
def P4208659802214114039.Spec : Prop :=
  ∀ n, P4208659802214114039.a n = A098706 n

theorem P4208659802214114039.correct : P4208659802214114039.Spec := by
  intro n
  simp only [A098706]

end A098706

/-! ## A098706.P4571366838763720788

`2*ceil(A055792(n)/2)`
-/

namespace A098706.P4571366838763720788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ⌈(A055792 n : ℚ) / 2⌉

end

end A098706.P4571366838763720788

namespace A098706

/-- `2*ceil(A055792(n)/2)` -/
def P4571366838763720788.Spec : Prop :=
  ∀ n, P4571366838763720788.a n = A098706 n

end A098706

/-! ## A098706.P5201183658992610301

`A057427(n)+A055792(n)`
-/

namespace A098706.P5201183658992610301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n + A055792 n

end

end A098706.P5201183658992610301

namespace A098706

/-- `A057427(n)+A055792(n)` -/
def P5201183658992610301.Spec : Prop :=
  ∀ n, P5201183658992610301.a n = A098706 n

end A098706

/-! ## A098706.P943406971130978544

`A178334(n)+A055792(n)`
-/

namespace A098706.P943406971130978544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178334 n + A055792 n

end

end A098706.P943406971130978544

namespace A098706

/-- `A178334(n)+A055792(n)` -/
def P943406971130978544.Spec : Prop :=
  ∀ n, P943406971130978544.a n = A098706 n

end A098706

/-! ## A098706.P3250364947341516752

`A055792(n)+abs(A062157(n))`
-/

namespace A098706.P3250364947341516752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055792 n + |A062157 n|

end

end A098706.P3250364947341516752

namespace A098706

/-- `A055792(n)+abs(A062157(n))` -/
def P3250364947341516752.Spec : Prop :=
  ∀ n, P3250364947341516752.a n = A098706 n

end A098706

/-! ## A098706.P5109117830671906618

`A055792(n)+char[A132196(n)]`
-/

namespace A098706.P5109117830671906618
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132196 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055792 n + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A098706.P5109117830671906618

namespace A098706

/-- `A055792(n)+char[A132196(n)]` -/
def P5109117830671906618.Spec : Prop :=
  ∀ n, P5109117830671906618.a n = A098706 n

end A098706

/-! ## A098706.P3053251364710068796

`A055792(n)+char[A266981(n)]`
-/

namespace A098706.P3053251364710068796
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266981 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055792 n + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A098706.P3053251364710068796

namespace A098706

/-- `A055792(n)+char[A266981(n)]` -/
def P3053251364710068796.Spec : Prop :=
  ∀ n, P3053251364710068796.a n = A098706 n

end A098706

/-! ## A098706.P17167445921698945556

`A055792(n)-A062157(2*n)`
-/

namespace A098706.P17167445921698945556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055792 n - A062157 (2 * n)

end

end A098706.P17167445921698945556

namespace A098706

/-- `A055792(n)-A062157(2*n)` -/
def P17167445921698945556.Spec : Prop :=
  ∀ n, P17167445921698945556.a n = A098706 n

end A098706

/-! ## A098706.P17726785035357559494

`A055792(n)+char[A055801(n)]`
-/

namespace A098706.P17726785035357559494
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055801 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055792 n + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A098706.P17726785035357559494

namespace A098706

/-- `A055792(n)+char[A055801(n)]` -/
def P17726785035357559494.Spec : Prop :=
  ∀ n, P17726785035357559494.a n = A098706 n

end A098706

/-!
# A098708: a(n) = gcd(A098707(n), A098707(n+1)).

The programs for A098708, there is no canonical definition to state claims against.
-/

/-! ## A098708.P9659959970280666251

`gcd(A098707(n+1), A098707(n+2))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A098708.P9659959970280666251
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A098707 (n + 1)) (A098707 (n + 2))

end

end A098708.P9659959970280666251

/-! ## A098708.P7677588100591003051

`A000005(or(A030597(n+1), A296563(n+1)))`
-/

namespace A098708.P7677588100591003051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (Int.lor (A030597 (n + 1)) (A296563 (n + 1))).toNat

end

end A098708.P7677588100591003051

/-! ## A098708.P15198595055981180361

`A029748(A031018(3*n+1)^A046786(n+2))`
-/

namespace A098708.P15198595055981180361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029748 (SequenceMachineLib.roundAway ((A031018 (3 * n + 1) : ℚ) ^ (A046786 (n + 2) : ℤ))).toNat

end

end A098708.P15198595055981180361

/-! ## A098708.P6743960324039403413

`A103328(A304058(n+1)^A085978(n+1))`
-/

namespace A098708.P6743960324039403413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103328 (SequenceMachineLib.roundAway ((A304058 (n + 1) : ℚ) ^ (A085978 (n + 1) : ℤ))).toNat

end

end A098708.P6743960324039403413

/-! ## A098708.P8026321294984960854

`A103328(C(A304058(n+1), A085978(n+1)))`
-/

namespace A098708.P8026321294984960854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103328 (Nat.choose (A304058 (n + 1)).toNat (A085978 (n + 1)).toNat)

end

end A098708.P8026321294984960854

/-!
# A098710: a(n) = Product_{k|n} k!.

The programs for A098710, there is no canonical definition to state claims against.
-/

/-! ## A098710.P12019816117354741451

`∏{d}[n+1, #!]`
-/

namespace A098710.P12019816117354741451
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n), Nat.factorial d

end

end A098710.P12019816117354741451

/-! ## A098710.P6269203503091139622

`exp(∑{d}[n+1, log(#!)])`
-/

namespace A098710.P6269203503091139622
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.exp (∑ d ∈ Nat.divisors (f1 n), Real.log (Nat.factorial d : ℝ))

end

end A098710.P6269203503091139622

/-! ## A098710.P1396204247182328155

`abs(∏{d}[2*n-(n-1), -#!])`
-/

namespace A098710.P1396204247182328155
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - ((n : ℤ) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∏ d ∈ Nat.divisors (f1 n).natAbs, (-(Nat.factorial d : ℤ))|

end

end A098710.P1396204247182328155

/-! ## A098710.P2648567859019828850

`∏{d}[2*n-(n-1), sqrt(#!)]²`
-/

namespace A098710.P2648567859019828850
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - ((n : ℤ) - 1)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (∏ d ∈ Nat.divisors (f1 n).natAbs, Real.sqrt (Nat.factorial d : ℝ)) ^ 2

end

end A098710.P2648567859019828850

/-! ## A098710.P10885771922121379977

`∏{d}[n+1, A000142(#)]`
-/

namespace A098710.P10885771922121379977
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n), A000142 d

end

end A098710.P10885771922121379977

/-!
# A098712: Decimal digits of Pi whose position is a Fibonacci number.

The programs for A098712, there is no canonical definition to state claims against.
-/

/-! ## A098712.P7388671510421771215

`A000796(A000045(n)%A010023(n))`
-/

namespace A098712.P7388671510421771215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000796 ((Int.tmod (A000045 n) (A010023 n)).toNat + 1)

end

end A098712.P7388671510421771215

/-! ## A098712.P3184374511737798627

`A000796(Δ[a(n-1)+a(n-2)])` with `a(0)=1, a(1)=1`
-/

namespace A098712.P3184374511737798627
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  f1 (n - 1) + f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000796 (((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat + 1)

end

end A098712.P3184374511737798627

/-! ## A098712.P15567874193403572828

`A000796(∑[round(ϕ*a(n-1))])` with `a(0)=0, a(1)=1, a(2)=0, a(3)=1, a(4)=1`
-/

namespace A098712.P15567874193403572828
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 0, 1, 1] fun n f1 =>
  SequenceMachineLib.roundAway (Real.goldenRatio * (f1 (n - 1) : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000796 ((∑ j ∈ Finset.range (n + 1), f1 j).toNat + 1)

end

end A098712.P15567874193403572828

/-! ## A098712.P10624187295809770187

`A000796(∑[a(n-1)-(1-a(n-2))]-n)` with `a(0)=0, a(1)=2`
-/

namespace A098712.P10624187295809770187
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 2] fun n f1 =>
  f1 (n - 1) - (1 - f1 (n - 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000796 ((∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)).toNat + 1)

end

end A098712.P10624187295809770187

/-! ## A098712.P9756009726255381657

`A000796(A000045(n))`
-/

namespace A098712.P9756009726255381657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000796 ((A000045 n).toNat + 1)

end

end A098712.P9756009726255381657

/-!
# A098713: a(n) = (2n+1)*2^(2n+1) - 1.

The programs for A098713, the canonical program `A098713.P5472546529657205857` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A098713 has offset 0).

The definition of A098713 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(2*n+1)*2^(2*n+1)-1` (program `A098713.P5472546529657205857`, by `A098713.P5472546529657205857.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A098713.P5472546529657205857

`(2*n+1)*2^(2*n+1)-1`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A098713

/-- `(2*n+1)*2^(2*n+1)-1` -/
def P5472546529657205857.Spec : Prop :=
  ∀ n, P5472546529657205857.a n = A098713 n

theorem P5472546529657205857.correct : P5472546529657205857.Spec := by
  intro n
  simp only [A098713]

end A098713

/-! ## A098713.P15524116201781840363

`A003261(Δ[n²])`
-/

namespace A098713.P15524116201781840363
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003261 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A098713.P15524116201781840363

namespace A098713

/-- `A003261(Δ[n²])` -/
def P15524116201781840363.Spec : Prop :=
  ∀ n, P15524116201781840363.a n = A098713 n

end A098713

/-! ## A098713.P10852907629135182894

`abs(1-A288443(n))`
-/

namespace A098713.P10852907629135182894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A288443 n|

end

end A098713.P10852907629135182894

namespace A098713

/-- `abs(1-A288443(n))` -/
def P10852907629135182894.Spec : Prop :=
  ∀ n, P10852907629135182894.a n = A098713 n

end A098713

/-! ## A098713.P113878482638789625

`or(n, A003261(2*n+1))`
-/

namespace A098713.P113878482638789625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n : ℤ) (A003261 (2 * n + 1))

end

end A098713.P113878482638789625

namespace A098713

/-- `or(n, A003261(2*n+1))` -/
def P113878482638789625.Spec : Prop :=
  ∀ n, P113878482638789625.a n = A098713 n

end A098713

/-! ## A098713.P17336747344697636112

`abs(1-A036289(2*n+1))`
-/

namespace A098713.P17336747344697636112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A036289 (2 * n + 1)|

end

end A098713.P17336747344697636112

namespace A098713

/-- `abs(1-A036289(2*n+1))` -/
def P17336747344697636112.Spec : Prop :=
  ∀ n, P17336747344697636112.a n = A098713 n

end A098713

/-! ## A098713.P10876587301457793224

`A003261(2*n+1)*A284252(A284252(n+2))`
-/

namespace A098713.P10876587301457793224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003261 (2 * n + 1) * A284252 (A284252 (n + 2)).toNat

end

end A098713.P10876587301457793224

namespace A098713

/-- `A003261(2*n+1)*A284252(A284252(n+2))` -/
def P10876587301457793224.Spec : Prop :=
  ∀ n, P10876587301457793224.a n = A098713 n

end A098713

/-! ## A098713.P6476932072379773929

`and(A003261(2*n+1), A003261(A016777(n+1)))`
-/

namespace A098713.P6476932072379773929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A003261 (2 * n + 1)) (A003261 (A016777 (n + 1)).toNat)

end

end A098713.P6476932072379773929

namespace A098713

/-- `and(A003261(2*n+1), A003261(A016777(n+1)))` -/
def P6476932072379773929.Spec : Prop :=
  ∀ n, P6476932072379773929.a n = A098713 n

end A098713

/-! ## A098713.P10557250172699873028

`and(A003261(2*n+1), A003261(A189682(2*n+1)))`
-/

namespace A098713.P10557250172699873028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A003261 (2 * n + 1)) (A003261 (A189682 (2 * n + 1)).toNat)

end

end A098713.P10557250172699873028

namespace A098713

/-- `and(A003261(2*n+1), A003261(A189682(2*n+1)))` -/
def P10557250172699873028.Spec : Prop :=
  ∀ n, P10557250172699873028.a n = A098713 n

end A098713

/-! ## A098713.P1892687114665461150

`and(A003261(2*n+1), A003261(A103127(n+2)))`
-/

namespace A098713.P1892687114665461150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A003261 (2 * n + 1)) (A003261 (A103127 (n + 2)).toNat)

end

end A098713.P1892687114665461150

namespace A098713

/-- `and(A003261(2*n+1), A003261(A103127(n+2)))` -/
def P1892687114665461150.Spec : Prop :=
  ∀ n, P1892687114665461150.a n = A098713 n

end A098713

/-! ## A098713.P9221271226013786625

`and(A003261(2*n+1), A003261(A026427(2*(n+1))))`
-/

namespace A098713.P9221271226013786625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A003261 (2 * n + 1)) (A003261 (A026427 (2 * (n + 1))).toNat)

end

end A098713.P9221271226013786625

namespace A098713

/-- `and(A003261(2*n+1), A003261(A026427(2*(n+1))))` -/
def P9221271226013786625.Spec : Prop :=
  ∀ n, P9221271226013786625.a n = A098713 n

end A098713

/-!
# A098714: Only one Pythagorean triangle of this perimeter exists.

The programs for A098714, there is no canonical definition to state claims against.
-/

/-! ## A098714.P1536773617650245773

`2*(eq[1, A270417(n+1)]+1)`
-/

namespace A098714.P1536773617650245773
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270417 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A098714.P1536773617650245773

/-! ## A098714.P16177511306663512222

`record[A010814(n+1)/A270417(A005279(n+1))]`
-/

namespace A098714.P16177511306663512222
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A010814 (n + 1) : ℚ) / (A270417 (A005279 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A098714.P16177511306663512222

/-! ## A098714.P8839036715795148540

`A020739(eq[1, A270417(n+1)]-2)`
-/

namespace A098714.P8839036715795148540
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270417 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020739 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n - 2)

end

end A098714.P8839036715795148540

/-! ## A098714.P14350334645767172868

`A005408(eq[1, A270417(n+1)])+1`
-/

namespace A098714.P14350334645767172868
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270417 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n) + 1

end

end A098714.P14350334645767172868

/-! ## A098714.P11373990183182496511

`A005843(eq[1, A270417(n+1)])+2`
-/

namespace A098714.P11373990183182496511
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270417 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n) + 2

end

end A098714.P11373990183182496511

/-! ## A098714.P17712567299204880378

`A004273(eq[1, A270417(n+1)])+3`
-/

namespace A098714.P17712567299204880378
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270417 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n) + 3

end

end A098714.P17712567299204880378

/-! ## A098714.P18442001197058389641

`A004280(eq[1, A270417(n+1)])+5`
-/

namespace A098714.P18442001197058389641
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270417 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004280 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n) + 5

end

end A098714.P18442001197058389641

/-! ## A098714.P5170964111828388210

`A103517(eq[1, A270417(n+1)])`
-/

namespace A098714.P5170964111828388210
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270417 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103517 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A098714.P5170964111828388210

/-! ## A098714.P15089352842365938650

`2*eq[1, A270417(A028310(n))]`
-/

namespace A098714.P15089352842365938650
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270417 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A098714.P15089352842365938650

/-! ## A098714.P8863732669551217164

`A004275(eq[1, A270417(n+1)]+2)`
-/

namespace A098714.P8863732669551217164
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270417 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2)

end

end A098714.P8863732669551217164

/-! ## A098714.P14092919349396649174

`eq[1, A024155(n+1)]+1`
-/

namespace A098714.P14092919349396649174
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024155 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A098714.P14092919349396649174

/-! ## A098714.P17114120059815533081

`eq[n, n-a(A024155(n))]` with `a(0)=1`
-/

namespace A098714.P17114120059815533081
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f2 =>
  (n : ℤ) - f2 (A024155 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A098714.P17114120059815533081

/-! ## A098714.P5988963550855422512

`eq[1, A024155(A028310(n))]`
-/

namespace A098714.P5988963550855422512
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024155 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A098714.P5988963550855422512

/-! ## A098714.P17339314617643515527

`A014681(eq[1, A024155(n+1)])`
-/

namespace A098714.P17339314617643515527
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024155 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A098714.P17339314617643515527

/-! ## A098714.P4972255344011915484

`A020725(eq[1, A024155(n+1)])`
-/

namespace A098714.P4972255344011915484
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024155 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A098714.P4972255344011915484

/-! ## A098714.P14292373742508289540

`A065475(eq[1, A024155(n+1)])`
-/

namespace A098714.P14292373742508289540
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024155 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A098714.P14292373742508289540

/-! ## A098714.P12044034756822700190

`A133265(eq[1, A024155(n+1)])`
-/

namespace A098714.P12044034756822700190
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024155 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133265 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A098714.P12044034756822700190

/-! ## A098714.P7746152667036805988

`A103517(eq[1, A024155(A103517(n))])`
-/

namespace A098714.P7746152667036805988
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024155 (A103517 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103517 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A098714.P7746152667036805988

/-!
# A098715: Number of partitions of n into integers not greater than the squarefree kernel of n.

The programs for A098715, there is no canonical definition to state claims against.
-/

/-! ## A098715.P4993862981201996405

`A026820(∏{p}[n+1, #]+∑[n])`
-/

namespace A098715.P4993862981201996405
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026820 (∏ p ∈ Nat.primeFactors (f1 n), p + ∑ j ∈ Finset.range (n + 1), f2 j)

end

end A098715.P4993862981201996405

/-! ## A098715.P476412770683299172

`A026820(A007947(n+1)+∑[n])`
-/

namespace A098715.P476412770683299172
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026820 (A007947 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A098715.P476412770683299172

/-! ## A098715.P14014818092112246263

`A026820(A000217(n)+∏{p}[n+1, #])`
-/

namespace A098715.P14014818092112246263
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026820 (A000217 n + ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℤ)).toNat

end

end A098715.P14014818092112246263

/-! ## A098715.P17478646690771578417

`A026820(A000217(n)+2^∑{p}[n+1, log2(#)])`
-/

namespace A098715.P17478646690771578417
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026820 (SequenceMachineLib.roundAway ((A000217 n : ℝ) + (2 : ℝ) ^ (∑ p ∈ Nat.primeFactors (f1 n), Real.logb 2 (p : ℝ)))).toNat

end

end A098715.P17478646690771578417

/-!
# A098716: Number of partitions of the n-th partition number into integers not greater than the (n-1)-th partition number.

The programs for A098716, there is no canonical definition to state claims against.
-/

/-! ## A098716.P4351657164987565113

`A171217(A101891(n))`
-/

namespace A098716.P4351657164987565113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171217 (A101891 n).toNat

end

end A098716.P4351657164987565113

/-! ## A098716.P5678351362822251967

`A185150(A092880(n))`
-/

namespace A098716.P5678351362822251967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185150 (A092880 n).toNat

end

end A098716.P5678351362822251967

/-! ## A098716.P14358481006145655426

`A171217(A119967(n))`
-/

namespace A098716.P14358481006145655426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171217 (A119967 n).toNat

end

end A098716.P14358481006145655426

/-!
# A098717: Primes p such that 2*p+1 and ((2*p+1)^2 + 1)/2 = p^2 + (p+1)^2 are primes.

The programs for A098717, there is no canonical definition to state claims against.
-/

/-! ## A098717.P17496402760378324604

`p?[A068501(n+1)]`
-/

namespace A098717.P17496402760378324604
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068501 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A098717.P17496402760378324604

/-! ## A098717.P15223374212740957422

`floor(A173875(n+1)/2)`
-/

namespace A098717.P15223374212740957422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A173875 (n + 1) : ℚ) / 2⌋

end

end A098717.P15223374212740957422

/-! ## A098717.P6158331166819431833

`p?[A178659(n+1)-1]`
-/

namespace A098717.P6158331166819431833
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178659 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A098717.P6158331166819431833

/-! ## A098717.P11468981632756830585

`record[A020639(A068501(n+2))]`
-/

namespace A098717.P11468981632756830585
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A068501 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A098717.P11468981632756830585

/-! ## A098717.P11838371774829691070

`record[A020639(A178659(n+2)-1)]`
-/

namespace A098717.P11838371774829691070
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A178659 (n + 2) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A098717.P11838371774829691070

/-! ## A098717.P16337711400709237930

`∩[A000040(n+1), A068501(n+1)]`
-/

namespace A098717.P16337711400709237930
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068501 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A098717.P16337711400709237930

/-! ## A098717.P8054057199901938626

`∩[A003627(n+1), A068501(n+1)]`
-/

namespace A098717.P8054057199901938626
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003627 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068501 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A098717.P8054057199901938626

/-! ## A098717.P10354030746952446034

`∩[A005384(n+1), A068501(n+1)]`
-/

namespace A098717.P10354030746952446034
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005384 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068501 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A098717.P10354030746952446034

/-! ## A098717.P830329427072303781

`∩[A040028(n+1), A068501(n+1)]`
-/

namespace A098717.P830329427072303781
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040028 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068501 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A098717.P830329427072303781

/-!
# A098718: Position of n! in A025487.

The programs for A098718, there is no canonical definition to state claims against.
-/

/-! ## A098718.P9947028517777646069

`A361808(A325508(n+1))`
-/

namespace A098718.P9947028517777646069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361808 (A325508 (n + 1)).toNat

end

end A098718.P9947028517777646069

/-! ## A098718.P15009414815080527830

`A085089((n+1)!)`
-/

namespace A098718.P15009414815080527830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085089 (Nat.factorial (n + 1))

end

end A098718.P15009414815080527830

/-! ## A098718.P3684745349382595348

`A101296((n+1)!)`
-/

namespace A098718.P3684745349382595348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101296 (Nat.factorial (n + 1))

end

end A098718.P3684745349382595348

/-! ## A098718.P593278528288272495

`A330752((n+1)!)`
-/

namespace A098718.P593278528288272495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330752 (Nat.factorial (n + 1))

end

end A098718.P593278528288272495

/-!
# A098719: Position of prime(n)# in A025487.

The programs for A098719, there is no canonical definition to state claims against.
-/

/-! ## A098719.P8210157696780628526

`record[A341352(n+1)]`
-/

namespace A098719.P8210157696780628526
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341352 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A098719.P8210157696780628526

/-! ## A098719.P1926573439811498124

`A341352(A111333(n+1))`
-/

namespace A098719.P1926573439811498124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341352 (A111333 (n + 1)).toNat

end

end A098719.P1926573439811498124

/-! ## A098719.P18221731267636388926

`record[A329901(n+1)]`
-/

namespace A098719.P18221731267636388926
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329901 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A098719.P18221731267636388926

/-! ## A098719.P13009504894934217090

`A329901(A008578(n+1))`
-/

namespace A098719.P13009504894934217090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329901 (A008578 (n + 1)).toNat

end

end A098719.P13009504894934217090

/-! ## A098719.P15882068382708123548

`A329901(A015919(n+1))`
-/

namespace A098719.P15882068382708123548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329901 (A015919 (n + 1)).toNat

end

end A098719.P15882068382708123548

/-!
# A098720: a(3) = 0; otherwise, a(n) = A152389(n) - 1.

The programs for A098720, there is no canonical definition to state claims against.
-/

/-! ## A098720.P10794844891444839552

`A152301(n+1)-1`
-/

namespace A098720.P10794844891444839552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152301 (n + 1) - 1

end

end A098720.P10794844891444839552

/-! ## A098720.P2101222218454755000

`char[2]+A152389(n+1)-1`
-/

namespace A098720.P2101222218454755000
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) + (A152389 (n + 1) - 1)

end

end A098720.P2101222218454755000

/-! ## A098720.P1428160858843827828

`A152389(gcd(n+1, C(2, n)))-1`
-/

namespace A098720.P1428160858843827828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152389 (Nat.gcd (n + 1) (Nat.choose 2 n)) - 1

end

end A098720.P1428160858843827828

/-! ## A098720.P8645340591996425837

`A152389(abs(C(2, n)-n)+1)-1`
-/

namespace A098720.P8645340591996425837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152389 (|(Nat.choose 2 n : ℤ) - (n : ℤ)| + 1).toNat - 1

end

end A098720.P8645340591996425837

/-! ## A098720.P16425477896737008274

`A023443(A152301(n+1))`
-/

namespace A098720.P16425477896737008274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A152301 (n + 1)).toNat

end

end A098720.P16425477896737008274

/-! ## A098720.P10246494079932904542

`A289207(A152301(n+1)+1)`
-/

namespace A098720.P10246494079932904542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289207 (A152301 (n + 1) + 1).toNat

end

end A098720.P10246494079932904542

/-! ## A098720.P12352073777985604258

`A028310(A152389(n+1))-1`
-/

namespace A098720.P12352073777985604258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A152389 (n + 1)).toNat - 1

end

end A098720.P12352073777985604258

/-! ## A098720.P769009500262381069

`A152389(A171526(n+1))-1`
-/

namespace A098720.P769009500262381069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152389 (A171526 (n + 1)).toNat - 1

end

end A098720.P769009500262381069

/-! ## A098720.P7454441945497286314

`∏{d}[A152389(n+1), A014963(#)]-1`
-/

namespace A098720.P7454441945497286314
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152389 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, A014963 d - 1

end

end A098720.P7454441945497286314

/-! ## A098720.P6329473323929787068

`A306944(72*n+34)+A152301(n+1)`
-/

namespace A098720.P6329473323929787068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306944 (72 * n + 34) + A152301 (n + 1)

end

end A098720.P6329473323929787068

/-!
# A098721: a(n) = C(n, 2)^(n-3) = (n(n-1)/2)^(n-3).

The programs for A098721, the canonical program `A098721.P12902904743768446933` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A098721 has offset 2).

The definition of A098721 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A098721.P12902904743768446933

`C(n+2, 2)^(n-1)`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A098721

/-- `C(n+2, 2)^(n-1)` -/
def P12902904743768446933.Spec : Prop :=
  ∀ n, P12902904743768446933.a n = (A098721 (n + 2) : ℚ)

end A098721

/-! ## A098721.P1495833711161539504

`((n+2)*(n+1)/2)^(n-1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A098721.P1495833711161539504
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((n + 2) * (n + 1) : ℚ) / 2) ^ ((n : ℤ) - 1 : ℤ)

end

end A098721.P1495833711161539504

namespace A098721

/-- `((n+2)*(n+1)/2)^(n-1)` -/
def P1495833711161539504.Spec : Prop :=
  ∀ n, P1495833711161539504.a n = (A098721 (n + 2) : ℚ)

end A098721

/-!
# A098722: a(n) = C(n, 3)^(n-4).

The programs for A098722, the canonical program `A098722.P1226149274092789534` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A098722 has offset 3).

The definition of A098722 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A098722.P1226149274092789534

`C(n+3, 3)^(n-1)`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A098722

/-- `C(n+3, 3)^(n-1)` -/
def P1226149274092789534.Spec : Prop :=
  ∀ n, P1226149274092789534.a n = (A098722 (n + 3) : ℚ)

end A098722

/-! ## A098722.P3233140091697619840

`∑[∑[n+1]]^(n-1)`
-/

namespace A098722.P3233140091697619840
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) ^ ((n : ℤ) - 1 : ℤ)

end

end A098722.P3233140091697619840

namespace A098722

/-- `∑[∑[n+1]]^(n-1)` -/
def P3233140091697619840.Spec : Prop :=
  ∀ n, P3233140091697619840.a n = (A098722 (n + 3) : ℚ)

end A098722

/-! ## A098722.P8257599659421655606

`abs(∑[∑[xor(n, -1)]]^(n-1))`
-/

namespace A098722.P8257599659421655606
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (-1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) ^ ((n : ℤ) - 1 : ℤ)|

end

end A098722.P8257599659421655606

namespace A098722

/-- `abs(∑[∑[xor(n, -1)]]^(n-1))` -/
def P8257599659421655606.Spec : Prop :=
  ∀ n, P8257599659421655606.a n = (A098722 (n + 3) : ℚ)

end A098722

/-! ## A098722.P3333673022485251345

`floor(∑[∑[n+1]]^xor(-1, -n))`
-/

namespace A098722.P3333673022485251345
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) ^ (Int.xor (-1) (-(n : ℤ)) : ℤ)⌋

end

end A098722.P3333673022485251345

namespace A098722

/-- `floor(∑[∑[n+1]]^xor(-1, -n))` -/
def P3333673022485251345.Spec : Prop :=
  ∀ n, P3333673022485251345.a n = A098722 (n + 3)

end A098722

/-! ## A098722.P12973612024798387256

`C(n+3, 3)^n/C(n+3, 3)`
-/

namespace A098722.P12973612024798387256
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose (n + 3) 3 ^ n : ℚ) / (Nat.choose (n + 3) 3 : ℚ)

end

end A098722.P12973612024798387256

namespace A098722

/-- `C(n+3, 3)^n/C(n+3, 3)` -/
def P12973612024798387256.Spec : Prop :=
  ∀ n, P12973612024798387256.a n = (A098722 (n + 3) : ℚ)

end A098722

/-!
# A098723: a(n) = C(n, 4)^(n-5).

The programs for A098723, the canonical program `A098723.P5393933496943810376` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A098723 has offset 4).

The definition of A098723 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A098723.P5393933496943810376

`C(n+4, 4)^(n-1)`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A098723

/-- `C(n+4, 4)^(n-1)` -/
def P5393933496943810376.Spec : Prop :=
  ∀ n, P5393933496943810376.a n = (A098723 (n + 4) : ℚ)

end A098723

/-! ## A098723.P5995625058274512611

`∑[∑[∑[n+1]]]^(n-1)`
-/

namespace A098723.P5995625058274512611
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) ^ ((n : ℤ) - 1 : ℤ)

end

end A098723.P5995625058274512611

namespace A098723

/-- `∑[∑[∑[n+1]]]^(n-1)` -/
def P5995625058274512611.Spec : Prop :=
  ∀ n, P5995625058274512611.a n = (A098723 (n + 4) : ℚ)

end A098723

/-! ## A098723.P6355700347165012576

`ceil(sqrt(A288876(n))^(n-1))`
-/

namespace A098723.P6355700347165012576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A288876 n : ℝ) ^ ((n : ℤ) - 1 : ℤ)⌉

end

end A098723.P6355700347165012576

namespace A098723

/-- `ceil(sqrt(A288876(n))^(n-1))` -/
def P6355700347165012576.Spec : Prop :=
  ∀ n, P6355700347165012576.a n = A098723 (n + 4)

end A098723

/-! ## A098723.P11527982678599827060

`floor(A000332(n+4)^(n-1))`
-/

namespace A098723.P11527982678599827060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000332 (n + 4) : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋

end

end A098723.P11527982678599827060

namespace A098723

/-- `floor(A000332(n+4)^(n-1))` -/
def P11527982678599827060.Spec : Prop :=
  ∀ n, P11527982678599827060.a n = A098723 (n + 4)

end A098723

/-! ## A098723.P3610280185485135592

`ceil(C(n+4, 4)^log2(A011782(n)))`
-/

namespace A098723.P3610280185485135592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Nat.choose (n + 4) 4 : ℝ) ^ (Real.logb 2 (A011782 n : ℝ))⌉

end

end A098723.P3610280185485135592

namespace A098723

/-- `ceil(C(n+4, 4)^log2(A011782(n)))` -/
def P3610280185485135592.Spec : Prop :=
  ∀ n, P3610280185485135592.a n = A098723 (n + 4)

end A098723

/-!
# A098724: a(n) = C(n, 5)^(n-6).

The programs for A098724, the canonical program `A098724.P1795947134913475750` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A098724 has offset 5).

The definition of A098724 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A098724.P1795947134913475750

`C(n+5, 5)^(n-1)`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A098724

/-- `C(n+5, 5)^(n-1)` -/
def P1795947134913475750.Spec : Prop :=
  ∀ n, P1795947134913475750.a n = (A098724 (n + 5) : ℚ)

end A098724

/-! ## A098724.P2190419437507751569

`∑[∑[∑[∑[n+1]]]]^(n-1)`
-/

namespace A098724.P2190419437507751569
noncomputable section

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) ^ ((n : ℤ) - 1 : ℤ)

end

end A098724.P2190419437507751569

namespace A098724

/-- `∑[∑[∑[∑[n+1]]]]^(n-1)` -/
def P2190419437507751569.Spec : Prop :=
  ∀ n, P2190419437507751569.a n = (A098724 (n + 5) : ℚ)

end A098724

/-! ## A098724.P1910524816574759271

`round(A178822(∑[n])^(n-1))`
-/

namespace A098724.P1910524816574759271
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A178822 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ) ^ ((n : ℤ) - 1 : ℤ))

end

end A098724.P1910524816574759271

namespace A098724

/-- `round(A178822(∑[n])^(n-1))` -/
def P1910524816574759271.Spec : Prop :=
  ∀ n, P1910524816574759271.a n = A098724 (n + 5)

end A098724

/-! ## A098724.P15162350043746585221

`floor(A189980(2*n)^(n-1))`
-/

namespace A098724.P15162350043746585221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A189980 (2 * n + 10) : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋

end

end A098724.P15162350043746585221

namespace A098724

/-- `floor(A189980(2*n)^(n-1))` -/
def P15162350043746585221.Spec : Prop :=
  ∀ n, P15162350043746585221.a n = A098724 (n + 5)

end A098724

/-! ## A098724.P3235111627395678124

`C(n+5, 5)^n/C(n+5, 5)`
-/

namespace A098724.P3235111627395678124
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose (n + 5) 5 ^ n : ℚ) / (Nat.choose (n + 5) 5 : ℚ)

end

end A098724.P3235111627395678124

namespace A098724

/-- `C(n+5, 5)^n/C(n+5, 5)` -/
def P3235111627395678124.Spec : Prop :=
  ∀ n, P3235111627395678124.a n = (A098724 (n + 5) : ℚ)

end A098724

/-!
# A098725: a(4*n) = 0, a(2*n+1) = 1, a(4*n+2) = a(n+1).

The programs for A098725, the canonical program `A098725.P3697398069099776754` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A098725 has offset 0).

The definition of A098725 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A098725.P3697398069099776754

`gcd(2, val(xor(n, 2*n)+6, 2))-1`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A098725

/-- `gcd(2, val(xor(n, 2*n)+6, 2))-1` -/
def P3697398069099776754.Spec : Prop :=
  ∀ n, P3697398069099776754.a n = A098725 n

theorem P3697398069099776754.correct : P3697398069099776754.Spec := by
  intro n
  simp only [A098725]

end A098725

/-! ## A098725.P17445057167012909233

`char[lt[A101660(n), 2]+1]`
-/

namespace A098725.P17445057167012909233
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101660 n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A098725.P17445057167012909233

namespace A098725

/-- `char[lt[A101660(n), 2]+1]` -/
def P17445057167012909233.Spec : Prop :=
  ∀ n, (P17445057167012909233.a n : ℤ) = A098725 n

end A098725

/-! ## A098725.P5329461357427901350

`A035263(xor(3, 3*n+1))`
-/

namespace A098725.P5329461357427901350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035263 (Nat.xor 3 (3 * n + 1))

end

end A098725.P5329461357427901350

namespace A098725

/-- `A035263(xor(3, 3*n+1))` -/
def P5329461357427901350.Spec : Prop :=
  ∀ n, P5329461357427901350.a n = A098725 n

end A098725

/-! ## A098725.P14756177832125440805

`A196563(val(abs(2-3*n), 2))`
-/

namespace A098725.P14756177832125440805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196563 (SequenceMachineLib.valuation |2 - (3 * n : ℤ)|.toNat 2)

end

end A098725.P14756177832125440805

namespace A098725

/-- `A196563(val(abs(2-3*n), 2))` -/
def P14756177832125440805.Spec : Prop :=
  ∀ n, P14756177832125440805.a n = A098725 n

end A098725

/-! ## A098725.P13468113322342505296

`char[A035263(3*n+1)+n]`
-/

namespace A098725.P13468113322342505296
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035263 (3 * n + 1) + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A098725.P13468113322342505296

namespace A098725

/-- `char[A035263(3*n+1)+n]` -/
def P13468113322342505296.Spec : Prop :=
  ∀ n, (P13468113322342505296.a n : ℤ) = A098725 n

end A098725

/-! ## A098725.P2513702362544002404

`1-A073059(xor(3, n+1)+1)`
-/

namespace A098725.P2513702362544002404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A073059 (Nat.xor 3 (n + 1) + 1)

end

end A098725.P2513702362544002404

namespace A098725

/-- `1-A073059(xor(3, n+1)+1)` -/
def P2513702362544002404.Spec : Prop :=
  ∀ n, P2513702362544002404.a n = A098725 n

end A098725

/-! ## A098725.P17349920384394907533

`A035263(A361947(n)+2)`
-/

namespace A098725.P17349920384394907533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035263 (A361947 n + 2).toNat

end

end A098725.P17349920384394907533

namespace A098725

/-- `A035263(A361947(n)+2)` -/
def P17349920384394907533.Spec : Prop :=
  ∀ n, P17349920384394907533.a n = A098725 n

end A098725

/-! ## A098725.P8332473766826742192

`A035263(xor(5, A005843(n))+n+1)`
-/

namespace A098725.P8332473766826742192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035263 (Int.xor 5 (A005843 n) + (n : ℤ) + 1).toNat

end

end A098725.P8332473766826742192

namespace A098725

/-- `A035263(xor(5, A005843(n))+n+1)` -/
def P8332473766826742192.Spec : Prop :=
  ∀ n, P8332473766826742192.a n = A098725 n

end A098725

/-! ## A098725.P17226749590547798467

`A285383(xor(n, 2*n)+7)`
-/

namespace A098725.P17226749590547798467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285383 (Nat.xor n (2 * n) + 7)

end

end A098725.P17226749590547798467

namespace A098725

/-- `A285383(xor(n, 2*n)+7)` -/
def P17226749590547798467.Spec : Prop :=
  ∀ n, P17226749590547798467.a n = A098725 n

end A098725

/-! ## A098725.P4798031434517720172

`A285384(xor(n, 2*n)+7)`
-/

namespace A098725.P4798031434517720172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285384 (Nat.xor n (2 * n) + 7)

end

end A098725.P4798031434517720172

namespace A098725

/-- `A285384(xor(n, 2*n)+7)` -/
def P4798031434517720172.Spec : Prop :=
  ∀ n, P4798031434517720172.a n = A098725 n

end A098725

/-! ## A098725.P2903076810640127817

`A029883(xor(4, xor(n, 2*n+1))+1)`
-/

namespace A098725.P2903076810640127817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029883 (Nat.xor 4 (Nat.xor n (2 * n + 1)) + 1)

end

end A098725.P2903076810640127817

namespace A098725

/-- `A029883(xor(4, xor(n, 2*n+1))+1)` -/
def P2903076810640127817.Spec : Prop :=
  ∀ n, P2903076810640127817.a n = A098725 n

end A098725

/-! ## A098725.P12465040965171757156

`A245188(A048724(xor(3, n)))`
-/

namespace A098725.P12465040965171757156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245188 (A048724 (Nat.xor 3 n)).toNat

end

end A098725.P12465040965171757156

namespace A098725

/-- `A245188(A048724(xor(3, n)))` -/
def P12465040965171757156.Spec : Prop :=
  ∀ n, P12465040965171757156.a n = A098725 n

end A098725

/-! ## A098725.P6273723528272331784

`A284948(xor(6, 6*n+3))`
-/

namespace A098725.P6273723528272331784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284948 (Nat.xor 6 (6 * n + 3))

end

end A098725.P6273723528272331784

namespace A098725

/-- `A284948(xor(6, 6*n+3))` -/
def P6273723528272331784.Spec : Prop :=
  ∀ n, P6273723528272331784.a n = A098725 n

end A098725

/-! ## A098725.P349410014289619091

`A328979(xor(6, 6*n+3))`
-/

namespace A098725.P349410014289619091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328979 (Nat.xor 6 (6 * n + 3))

end

end A098725.P349410014289619091

namespace A098725

/-- `A328979(xor(6, 6*n+3))` -/
def P349410014289619091.Spec : Prop :=
  ∀ n, P349410014289619091.a n = A098725 n

end A098725

/-! ## A098725.P6229135173084189095

`A117201(A316320(n))`
-/

namespace A098725.P6229135173084189095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117201 (A316320 n).toNat

end

end A098725.P6229135173084189095

namespace A098725

/-- `A117201(A316320(n))` -/
def P6229135173084189095.Spec : Prop :=
  ∀ n, P6229135173084189095.a n = A098725 n

end A098725

/-! ## A098725.P6022388758159683340

`(val(∑[A001045(2*(n+1))]+1, 2)+1)%2`
-/

namespace A098725.P6022388758159683340
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001045 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.valuation (∑ j ∈ Finset.range (n + 1), f1 j + 1).toNat 2 + 1) % 2

end

end A098725.P6022388758159683340

namespace A098725

/-- `(val(∑[A001045(2*(n+1))]+1, 2)+1)%2` -/
def P6022388758159683340.Spec : Prop :=
  ∀ n, (P6022388758159683340.a n : ℤ) = A098725 n

end A098725

/-!
# A098726: Take three consecutive primes starting with the n-th prime. Calculate d(i,j) = abs(prime(i) - prime(j)), for all {i,j}, i.e., all possible differences. a(n) is the number of distinct differences (which can be either 3 or 2).

The programs for A098726, the canonical program `A098726.P16121288803637439389` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A098726 has offset 1).

The definition of A098726 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A098726.P16121288803637439389

`3-Δ[A037203(n)]`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A098726

/-- `3-Δ[A037203(n)]` -/
def P16121288803637439389.Spec : Prop :=
  ∀ n, P16121288803637439389.a n = A098726 (n + 1)

theorem P16121288803637439389.correct : P16121288803637439389.Spec := by
  intro n
  simp only [A098726, Nat.add_sub_cancel]

end A098726

/-! ## A098726.P15777678467995752444

`A131695(n+1)+2`
-/

namespace A098726.P15777678467995752444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131695 (n + 1) + 2

end

end A098726.P15777678467995752444

namespace A098726

/-- `A131695(n+1)+2` -/
def P15777678467995752444.Spec : Prop :=
  ∀ n, P15777678467995752444.a n = A098726 (n + 1)

end A098726

/-! ## A098726.P17120395223152739060

`or(2, A108415(n+2))`
-/

namespace A098726.P17120395223152739060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 2 (A108415 (n + 2))

end

end A098726.P17120395223152739060

namespace A098726

/-- `or(2, A108415(n+2))` -/
def P17120395223152739060.Spec : Prop :=
  ∀ n, P17120395223152739060.a n = A098726 (n + 1)

end A098726

/-! ## A098726.P5894256888448211374

`abs(A079054(n+2))+2`
-/

namespace A098726.P5894256888448211374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A079054 (n + 2)| + 2

end

end A098726.P5894256888448211374

namespace A098726

/-- `abs(A079054(n+2))+2` -/
def P5894256888448211374.Spec : Prop :=
  ∀ n, P5894256888448211374.a n = A098726 (n + 1)

end A098726

/-! ## A098726.P4936538246613705351

`ceil(5/A031217(n+1))`
-/

namespace A098726.P4936538246613705351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈5 / (A031217 (n + 1) : ℚ)⌉

end

end A098726.P4936538246613705351

namespace A098726

/-- `ceil(5/A031217(n+1))` -/
def P4936538246613705351.Spec : Prop :=
  ∀ n, P4936538246613705351.a n = A098726 (n + 1)

end A098726

/-! ## A098726.P13728191370401683782

`a(A053597(n+1))` with `a(0)=3, a(1)=2, a(2)=3`
-/

namespace A098726.P13728191370401683782
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [3, 2, 3] fun n a =>
  a (A053597 (n + 1)).toNat

end

end A098726.P13728191370401683782

namespace A098726

/-- `a(A053597(n+1))` -/
def P13728191370401683782.Spec : Prop :=
  ∀ n, (P13728191370401683782.a n : ℤ) = A098726 (n + 1)

end A098726

/-! ## A098726.P10052503764465798369

`or(2, A107599(n+2)+1)`
-/

namespace A098726.P10052503764465798369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 2 (A107599 (n + 2) + 1)

end

end A098726.P10052503764465798369

namespace A098726

/-- `or(2, A107599(n+2)+1)` -/
def P10052503764465798369.Spec : Prop :=
  ∀ n, P10052503764465798369.a n = A098726 (n + 1)

end A098726

/-! ## A098726.P12443523487858782744

`abs(Δ[A092243(n+1)])+2`
-/

namespace A098726.P12443523487858782744
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092243 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n| + 2

end

end A098726.P12443523487858782744

namespace A098726

/-- `abs(Δ[A092243(n+1)])+2` -/
def P12443523487858782744.Spec : Prop :=
  ∀ n, P12443523487858782744.a n = A098726 (n + 1)

end A098726

/-! ## A098726.P3292995905294117346

`3-char[A064113(n+1)-1]`
-/

namespace A098726.P3292995905294117346
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064113 (n + 1) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A098726.P3292995905294117346

namespace A098726

/-- `3-char[A064113(n+1)-1]` -/
def P3292995905294117346.Spec : Prop :=
  ∀ n, P3292995905294117346.a n = A098726 (n + 1)

end A098726

/-! ## A098726.P247759000586617473

`3-char[A066875(n+1)-2]`
-/

namespace A098726.P247759000586617473
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066875 (n + 1) - 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A098726.P247759000586617473

namespace A098726

/-- `3-char[A066875(n+1)-2]` -/
def P247759000586617473.Spec : Prop :=
  ∀ n, P247759000586617473.a n = A098726 (n + 1)

end A098726

/-! ## A098726.P3486338708824521433

`ceil(abs(sin(A036263(n+1))))+2`
-/

namespace A098726.P3486338708824521433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈|Real.sin (A036263 (n + 1) : ℝ)|⌉ + 2

end

end A098726.P3486338708824521433

namespace A098726

/-- `ceil(abs(sin(A036263(n+1))))+2` -/
def P3486338708824521433.Spec : Prop :=
  ∀ n, P3486338708824521433.a n = A098726 (n + 1)

end A098726

/-! ## A098726.P11346043673469535499

`ceil(tanh(Δ[A001223(n+1)])²)+2`
-/

namespace A098726.P11346043673469535499
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.tanh (f1 (n + 1) - f1 n : ℝ) ^ 2⌉ + 2

end

end A098726.P11346043673469535499

namespace A098726

/-- `ceil(tanh(Δ[A001223(n+1)])²)+2` -/
def P11346043673469535499.Spec : Prop :=
  ∀ n, P11346043673469535499.a n = A098726 (n + 1)

end A098726

/-! ## A098726.P12881995176778816387

`A326166(A182145(n+1))`
-/

namespace A098726.P12881995176778816387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326166 (A182145 (n + 1)).toNat

end

end A098726.P12881995176778816387

namespace A098726

/-- `A326166(A182145(n+1))` -/
def P12881995176778816387.Spec : Prop :=
  ∀ n, P12881995176778816387.a n = A098726 (n + 1)

end A098726

/-! ## A098726.P13586112144597672357

`A000032(Δ[A037203(n)])+1`
-/

namespace A098726.P13586112144597672357
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037203 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (f1 (n + 1) - f1 n).toNat + 1

end

end A098726.P13586112144597672357

namespace A098726

/-- `A000032(Δ[A037203(n)])+1` -/
def P13586112144597672357.Spec : Prop :=
  ∀ n, P13586112144597672357.a n = A098726 (n + 1)

end A098726

/-! ## A098726.P3967514943632079280

`A006530(Δ[A037203(n)]+3)`
-/

namespace A098726.P3967514943632079280
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037203 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (f1 (n + 1) - f1 n + 3).toNat

end

end A098726.P3967514943632079280

namespace A098726

/-- `A006530(Δ[A037203(n)]+3)` -/
def P3967514943632079280.Spec : Prop :=
  ∀ n, P3967514943632079280.a n = A098726 (n + 1)

end A098726

/-! ## A098726.P414743712424961163

`A000005(Δ[A037203(n)]+4)`
-/

namespace A098726.P414743712424961163
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037203 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (f1 (n + 1) - f1 n + 4).toNat

end

end A098726.P414743712424961163

namespace A098726

/-- `A000005(Δ[A037203(n)]+4)` -/
def P414743712424961163.Spec : Prop :=
  ∀ n, P414743712424961163.a n = A098726 (n + 1)

end A098726

/-! ## A098726.P326507580030101755

`A000041(xor(3, Δ[A037203(n)]))`
-/

namespace A098726.P326507580030101755
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037203 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (Int.xor 3 (f1 (n + 1) - f1 n)).toNat

end

end A098726.P326507580030101755

namespace A098726

/-- `A000041(xor(3, Δ[A037203(n)]))` -/
def P326507580030101755.Spec : Prop :=
  ∀ n, P326507580030101755.a n = A098726 (n + 1)

end A098726

/-! ## A098726.P13986820832355786051

`A057467(A053597(n+1))+1`
-/

namespace A098726.P13986820832355786051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057467 (A053597 (n + 1)).toNat + 1

end

end A098726.P13986820832355786051

namespace A098726

/-- `A057467(A053597(n+1))+1` -/
def P13986820832355786051.Spec : Prop :=
  ∀ n, P13986820832355786051.a n = A098726 (n + 1)

end A098726

/-! ## A098726.P6373041062243062099

`A006530(A219194(n+1))+1`
-/

namespace A098726.P6373041062243062099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A219194 (n + 1)).toNat + 1

end

end A098726.P6373041062243062099

namespace A098726

/-- `A006530(A219194(n+1))+1` -/
def P6373041062243062099.Spec : Prop :=
  ∀ n, P6373041062243062099.a n = A098726 (n + 1)

end A098726

/-! ## A098726.P7212170201803540571

`A005171(A093667(n+1))+2`
-/

namespace A098726.P7212170201803540571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005171 (A093667 (n + 1)).toNat + 2

end

end A098726.P7212170201803540571

namespace A098726

/-- `A005171(A093667(n+1))+2` -/
def P7212170201803540571.Spec : Prop :=
  ∀ n, P7212170201803540571.a n = A098726 (n + 1)

end A098726

/-!
# A098727: Consider the sequence {b(n), n >= 1} of digits of the natural (or counting) numbers: 1 2 3 4 5 6 7 8 9 1 0 1 1 1 2 1 3 1 4 1 5 1 6 1 7 1 8 1 9 2 0... (A007376); a(n) = b(n) + n.

The programs for A098727, there is no canonical definition to state claims against.
-/

/-! ## A098727.P13943635484875768769

`A033307(n)+1+n`
-/

namespace A098727.P13943635484875768769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033307 n + 1 + (n : ℤ)

end

end A098727.P13943635484875768769

/-! ## A098727.P12199790584680818765

`∑[Δ[A007376(n)]+1]`
-/

namespace A098727.P12199790584680818765
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007376 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A098727.P12199790584680818765

/-! ## A098727.P15749133470320640913

`Δ[A054632(n)]+n+1`
-/

namespace A098727.P15749133470320640913
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054632 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (n + 1 : ℤ)

end

end A098727.P15749133470320640913

/-! ## A098727.P12323944561710105576

`n+1+A007376(n+1)`
-/

namespace A098727.P12323944561710105576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) + A007376 (n + 1)

end

end A098727.P12323944561710105576

/-! ## A098727.P4500251837955690424

`A098733(n+1)/(n+1)+n+1`
-/

namespace A098727.P4500251837955690424
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A098733 (n + 1) : ℚ) / (n + 1 : ℚ) + (n + 1 : ℚ)

end

end A098727.P4500251837955690424

/-! ## A098727.P11002678587908404166

`Δ[A054632(n)+A000217(n)]`
-/

namespace A098727.P11002678587908404166
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054632 n + A000217 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A098727.P11002678587908404166

/-! ## A098727.P4459426716096576667

`A005408(n)-(n-A033307(n))`
-/

namespace A098727.P4459426716096576667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 n - ((n : ℤ) - A033307 n)

end

end A098727.P4459426716096576667

/-! ## A098727.P1364390964353030675

`1-Δ[A080956(n)-A054632(n)]`
-/

namespace A098727.P1364390964353030675
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080956 n - A054632 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (f1 (n + 1) - f1 n)

end

end A098727.P1364390964353030675

/-! ## A098727.P16700306987435420351

`Δ[A000290(n)]-(n-A033307(n))`
-/

namespace A098727.P16700306987435420351
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - ((n : ℤ) - A033307 n)

end

end A098727.P16700306987435420351

/-! ## A098727.P13298972251029205301

`A054899(A136414(n+1))+1+n`
-/

namespace A098727.P13298972251029205301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054899 (A136414 (n + 1)).toNat + 1 + (n : ℤ)

end

end A098727.P13298972251029205301

/-! ## A098727.P13875898981871363149

`n+1+A054632(n+1)-A054632(n)`
-/

namespace A098727.P13875898981871363149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) + (A054632 (n + 1) - A054632 n)

end

end A098727.P13875898981871363149

/-! ## A098727.P9810170268448660245

`A033307(n)-(A002943(n)-A033951(n))`
-/

namespace A098727.P9810170268448660245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033307 n - (A002943 n - A033951 n)

end

end A098727.P9810170268448660245

/-! ## A098727.P10996378515965139266

`A108712(Δ[n²])+n+1`
-/

namespace A098727.P10996378515965139266
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108712 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat + (n + 1 : ℤ)

end

end A098727.P10996378515965139266

/-! ## A098727.P16445170425091943730

`A220466(2*n+1)+A108712(2*n+1)`
-/

namespace A098727.P16445170425091943730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220466 (2 * n + 1) + A108712 (2 * n + 1)

end

end A098727.P16445170425091943730

/-! ## A098727.P9878625107942952916

`A225381(2*n+1)+A108712(2*n+1)`
-/

namespace A098727.P9878625107942952916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225381 (2 * n + 1) + A108712 (2 * n + 1)

end

end A098727.P9878625107942952916

/-! ## A098727.P10955295718773256330

`A108202(2*(n+1))+n+1`
-/

namespace A098727.P10955295718773256330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108202 (2 * (n + 1)) + (n + 1 : ℤ)

end

end A098727.P10955295718773256330

/-! ## A098727.P17547520496860383839

`A010879(A261333(n))+1+n`
-/

namespace A098727.P17547520496860383839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010879 (A261333 n).toNat + 1 + (n : ℤ)

end

end A098727.P17547520496860383839

/-! ## A098727.P3799210648174705416

`2*(n+1)-A098728(n)`
-/

namespace A098727.P3799210648174705416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) : ℤ) - A098728 n

end

end A098727.P3799210648174705416

/-! ## A098727.P17352039092820772384

`2*n+3-A098732(n+2)`
-/

namespace A098727.P17352039092820772384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 3 : ℤ) - A098732 (n + 2)

end

end A098727.P17352039092820772384

/-! ## A098727.P2267521000886538520

`A244426(A038722(n+1))+1+n`
-/

namespace A098727.P2267521000886538520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244426 (A038722 (n + 1)).toNat + 1 + (n : ℤ)

end

end A098727.P2267521000886538520

/-!
# A098728: Consider the sequence {b(n), n >= 1} of digits of the natural (or counting) numbers: 1 2 3 4 5 6 7 8 9 1 0 1 1 1 2 1 3 1 4 1 5 1 6 1 7 1 8 1 9 2 0... (A007376); a(n) = n - b(n).

The programs for A098728, there is no canonical definition to state claims against.
-/

/-! ## A098728.P4958422484968101544

`1-A033307(n)+n`
-/

namespace A098728.P4958422484968101544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A033307 n + (n : ℤ)

end

end A098728.P4958422484968101544

/-! ## A098728.P5029896541873240350

`∑[1-Δ[A007376(n)]]`
-/

namespace A098728.P5029896541873240350
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007376 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A098728.P5029896541873240350

/-! ## A098728.P10464479613075761474

`Δ[∑[n]-A054632(n)]`
-/

namespace A098728.P10464479613075761474
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - A054632 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A098728.P10464479613075761474

/-! ## A098728.P8635791359497186721

`1-A007376(n+1)+n`
-/

namespace A098728.P8635791359497186721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A007376 (n + 1) + (n : ℤ)

end

end A098728.P8635791359497186721

/-! ## A098728.P11944454057504145418

`n+1-A108712(Δ[n²])`
-/

namespace A098728.P11944454057504145418
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A108712 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A098728.P11944454057504145418

/-! ## A098728.P11625583420305463739

`2*(n+1)-A098727(n+1)`
-/

namespace A098728.P11625583420305463739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) : ℤ) - A098727 (n + 1)

end

end A098728.P11625583420305463739

/-! ## A098728.P804664876964652248

`n+1-A108202(2*(n+1))`
-/

namespace A098728.P804664876964652248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A108202 (2 * (n + 1))

end

end A098728.P804664876964652248

/-! ## A098728.P377484405101439061

`n+1-A098733(n+1)/(n+1)`
-/

namespace A098728.P377484405101439061
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) - (A098733 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A098728.P377484405101439061

/-! ## A098728.P10123780403183957806

`A023450(A031310(n+1)+n)`
-/

namespace A098728.P10123780403183957806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023450 (A031310 (n + 1) + (n : ℤ)).toNat

end

end A098728.P10123780403183957806

/-! ## A098728.P8809052963017014783

`A031310(n+1)-A022964(n)`
-/

namespace A098728.P8809052963017014783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031310 (n + 1) - A022964 n

end

end A098728.P8809052963017014783

/-! ## A098728.P8564087504601817796

`1-A010879(A261333(n))+n`
-/

namespace A098728.P8564087504601817796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A010879 (A261333 n).toNat + (n : ℤ)

end

end A098728.P8564087504601817796

/-! ## A098728.P16889046786382669766

`A008619(2*n)-A033307(n)`
-/

namespace A098728.P16889046786382669766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (2 * n) - A033307 n

end

end A098728.P16889046786382669766

/-! ## A098728.P1154373862142399690

`A005408(n)-n-A033307(n)`
-/

namespace A098728.P1154373862142399690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 n - (n : ℤ) - A033307 n

end

end A098728.P1154373862142399690

/-! ## A098728.P14934021242443094017

`A000027(n+1)-Δ[A054632(n)]`
-/

namespace A098728.P14934021242443094017
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054632 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (n + 1) - (f1 (n + 1) - f1 n)

end

end A098728.P14934021242443094017

/-! ## A098728.P2713834543789988017

`1-Δ[A054632(n)-A161680(n)]`
-/

namespace A098728.P2713834543789988017
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054632 n - A161680 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (f1 (n + 1) - f1 n)

end

end A098728.P2713834543789988017

/-! ## A098728.P12258236545468200440

`n-(A033307(n)-A033999(n)²)`
-/

namespace A098728.P12258236545468200440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (A033307 n - A033999 n ^ 2)

end

end A098728.P12258236545468200440

/-! ## A098728.P16349556928902599546

`Δ[A000290(n)]-n-A033307(n)`
-/

namespace A098728.P16349556928902599546
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - (n : ℤ) - A033307 n

end

end A098728.P16349556928902599546

/-! ## A098728.P14011042844762818580

`Δ[n-A054632(n)-A080956(n)]`
-/

namespace A098728.P14011042844762818580
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A054632 n - A080956 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A098728.P14011042844762818580

/-! ## A098728.P4876682523291534813

`1-A054899(A136414(n+1))+n`
-/

namespace A098728.P4876682523291534813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A054899 (A136414 (n + 1)).toNat + (n : ℤ)

end

end A098728.P4876682523291534813

/-! ## A098728.P13908558304811910389

`abs(A007376(n+1)+A001489(n+1))`
-/

namespace A098728.P13908558304811910389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A007376 (n + 1) + A001489 (n + 1)|

end

end A098728.P13908558304811910389

/-!
# A098729: Consider the sequence {b(n), n >= 1} of digits of the integers: 0 1 2 3 4 5 6 7 8 9 1 0 1 1 1 2 1 3 1 4 1 5 1 6 1 7 1 8 1 9 2 0... (A033307); a(n) = b(n) + n.

The programs for A098729, there is no canonical definition to state claims against.
-/

/-! ## A098729.P1978354568162620511

`A007376(n)+1+n`
-/

namespace A098729.P1978354568162620511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007376 n + 1 + (n : ℤ)

end

end A098729.P1978354568162620511

/-! ## A098729.P13933821905584459202

`A108202(2*n)+1+n`
-/

namespace A098729.P13933821905584459202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108202 (2 * n) + 1 + (n : ℤ)

end

end A098729.P13933821905584459202

/-! ## A098729.P14309867970317531670

`A065649(n)%10+1+n`
-/

namespace A098729.P14309867970317531670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A065649 n) 10 + 1 + (n : ℤ)

end

end A098729.P14309867970317531670

/-! ## A098729.P2219373977845642512

`Δ[n²]-A098728(abs(1-n))`
-/

namespace A098729.P2219373977845642512
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) - A098728 |1 - (n : ℤ)|.toNat

end

end A098729.P2219373977845642512

/-! ## A098729.P15087697441555095810

`2*(n+1)-A098732(n+1)`
-/

namespace A098729.P15087697441555095810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) : ℤ) - A098732 (n + 1)

end

end A098729.P15087697441555095810

/-! ## A098729.P5828008758375492719

`A010879(A065649(n))+1+n`
-/

namespace A098729.P5828008758375492719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010879 (A065649 n).toNat + 1 + (n : ℤ)

end

end A098729.P5828008758375492719

/-! ## A098729.P18016160707840351449

`1-(A001489(n)-A007376(n))`
-/

namespace A098729.P18016160707840351449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (A001489 n - A007376 n)

end

end A098729.P18016160707840351449

/-! ## A098729.P13101016602846325322

`A005408(n)-(n-A007376(n))`
-/

namespace A098729.P13101016602846325322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 n - ((n : ℤ) - A007376 n)

end

end A098729.P13101016602846325322

/-! ## A098729.P12734239089745756167

`Δ[A000290(n)]-(n-A007376(n))`
-/

namespace A098729.P12734239089745756167
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - ((n : ℤ) - A007376 n)

end

end A098729.P12734239089745756167

/-! ## A098729.P10323696808435474776

`record[A004442(n)]-(n-A007376(n))`
-/

namespace A098729.P10323696808435474776
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - ((n : ℤ) - A007376 n)

end

end A098729.P10323696808435474776

/-!
# A098730: Sum[i=0..n, Sum[j=0..n, C(n-i,i+j) * C(n-j,i+j) ]].

The programs for A098730, there is no canonical definition to state claims against.
-/

/-! ## A098730.P2961120427246531737

`A052899(n)+A001222(A330677(n))`
-/

namespace A098730.P2961120427246531737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052899 n + A001222 (A330677 n).toNat

end

end A098730.P2961120427246531737

/-! ## A098730.P17324258506019075762

`A143094(n)-A000578(A285849(n+1))`
-/

namespace A098730.P17324258506019075762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143094 n - A000578 (A285849 (n + 1)).toNat

end

end A098730.P17324258506019075762

/-! ## A098730.P16678964159901234830

`A175005(n)+A088434(A018721(2*(n+2)))`
-/

namespace A098730.P16678964159901234830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175005 n + A088434 (A018721 (2 * (n + 2))).toNat

end

end A098730.P16678964159901234830

/-!
# A098731: Numbers k such that 2*R_k is a happy number (A007770), where R_k = 11...1 is the repunit (A002275) of length k.

The programs for A098731, there is no canonical definition to state claims against.
-/

/-! ## A098731.P5580757399533362857

`eq[A057427(n), A103369(A008574(n))]`
-/

namespace A098731.P5580757399533362857
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103369 (A008574 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A098731.P5580757399533362857

/-! ## A098731.P18265123518688743471

`eq[1, A103369(A008574(A000007(n)+n))]`
-/

namespace A098731.P18265123518688743471
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103369 (A008574 (A000007 n + (n : ℤ)).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A098731.P18265123518688743471

/-! ## A098731.P4471290255508860055

`eq[A019425(2*n), A103369(A008574(n))]`
-/

namespace A098731.P4471290255508860055
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019425 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103369 (A008574 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A098731.P4471290255508860055

/-! ## A098731.P733028939406876542

`eq[A019431(2*n), A103369(A008574(n))]`
-/

namespace A098731.P733028939406876542
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019431 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103369 (A008574 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A098731.P733028939406876542

/-! ## A098731.P15091357144169822786

`eq[A019425(2*n), A103369(A019425(2*n+1))]`
-/

namespace A098731.P15091357144169822786
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019425 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103369 (A019425 (2 * n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A098731.P15091357144169822786

/-! ## A098731.P9703371183943015270

`eq[A014963(4*n+2), A103369(A008574(n))]`
-/

namespace A098731.P9703371183943015270
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (4 * n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103369 (A008574 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A098731.P9703371183943015270

/-!
# A098732: Consider the sequence {b(n), n >= 1} of digits of the integers: 0 1 2 3 4 5 6 7 8 9 1 0 1 1 1 2 1 3 1 4 1 5 1 6 1 7 1 8 1 9 2 0... (A033307); a(n) = n - b(n).

The programs for A098732, there is no canonical definition to state claims against.
-/

/-! ## A098732.P15818203669493316835

`1-A007376(n)+n`
-/

namespace A098732.P15818203669493316835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A007376 n + (n : ℤ)

end

end A098732.P15818203669493316835

/-! ## A098732.P16972976014969593707

`n+1-A108202(2*n)`
-/

namespace A098732.P16972976014969593707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A108202 (2 * n)

end

end A098732.P16972976014969593707

/-! ## A098732.P10924047698286753030

`n+1-A065649(n)%10`
-/

namespace A098732.P10924047698286753030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - Int.tmod (A065649 n) 10

end

end A098732.P10924047698286753030

/-! ## A098732.P15669049537180431171

`n+1-A010879(A065649(n))`
-/

namespace A098732.P15669049537180431171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A010879 (A065649 n).toNat

end

end A098732.P15669049537180431171

/-! ## A098732.P10392988668866990574

`2-(A007376(n)-A023443(n))`
-/

namespace A098732.P10392988668866990574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (A007376 n - A023443 n)

end

end A098732.P10392988668866990574

/-! ## A098732.P10977137732671763771

`A000027(Δ[n²]-n-A007376(n))`
-/

namespace A098732.P10977137732671763771
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ) - A007376 n).toNat

end

end A098732.P10977137732671763771

/-! ## A098732.P16241136098902256115

`A030530(A083652(n-A007376(n)))`
-/

namespace A098732.P16241136098902256115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030530 (A083652 ((n : ℤ) - A007376 n).toNat).toNat

end

end A098732.P16241136098902256115

/-! ## A098732.P11659110212444510979

`A098728(n)+Δ[A010879(A065649(n))]`
-/

namespace A098732.P11659110212444510979
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010879 (A065649 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098728 n + (f1 (n + 1) - f1 n)

end

end A098732.P11659110212444510979

/-! ## A098732.P6143793303885555490

`2*(n+1)-A098729(n+1)`
-/

namespace A098732.P6143793303885555490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) : ℤ) - A098729 (n + 1)

end

end A098732.P6143793303885555490

/-! ## A098732.P17201254345178985255

`A098727(n+1)+A098728(n)-A098729(n+1)`
-/

namespace A098732.P17201254345178985255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098727 (n + 1) + (A098728 n - A098729 (n + 1))

end

end A098732.P17201254345178985255

/-!
# A098733: Consider the sequence {b(n), n >= 1} of digits of the natural (or counting) numbers: 1 2 3 4 5 6 7 8 9 1 0 1 1 1 2 1 3 1 4 1 5 1 6 1 7 1 8 1 9 2 0... (A007376); a(n) = n*b(n).

The programs for A098733, there is no canonical definition to state claims against.
-/

/-! ## A098733.P6436490940483990483

`(n+1)*A033307(n)`
-/

namespace A098733.P6436490940483990483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A033307 n

end

end A098733.P6436490940483990483

/-! ## A098733.P1202883437843384499

`(n+1)*Δ[A054632(n)]`
-/

namespace A098733.P1202883437843384499
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054632 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (f1 (n + 1) - f1 n)

end

end A098733.P1202883437843384499

/-! ## A098733.P1166704075994967469

`(n+1)*A007376(n+1)`
-/

namespace A098733.P1166704075994967469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A007376 (n + 1)

end

end A098733.P1166704075994967469

/-! ## A098733.P1479275209517678401

`(n+1)*A261333(n)%10`
-/

namespace A098733.P1479275209517678401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * Int.tmod (A261333 n) 10

end

end A098733.P1479275209517678401

/-! ## A098733.P2350742395053594453

`(n+1)*(9-A031310(n+1))`
-/

namespace A098733.P2350742395053594453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (9 - A031310 (n + 1))

end

end A098733.P2350742395053594453

/-! ## A098733.P2153495584151472217

`(n+1)*(A098727(n+1)-(n+1))`
-/

namespace A098733.P2153495584151472217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A098727 (n + 1) - (n + 1 : ℤ))

end

end A098733.P2153495584151472217

/-! ## A098733.P6471256617101173353

`(n+1)*A108712(Δ[n²])`
-/

namespace A098733.P6471256617101173353
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A108712 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A098733.P6471256617101173353

/-! ## A098733.P2667869669778084123

`A108712(2*n+1)*A220466(2*n+1)`
-/

namespace A098733.P2667869669778084123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108712 (2 * n + 1) * A220466 (2 * n + 1)

end

end A098733.P2667869669778084123

/-! ## A098733.P7379136616551312541

`A108712(2*n+1)*A225381(2*n+1)`
-/

namespace A098733.P7379136616551312541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108712 (2 * n + 1) * A225381 (2 * n + 1)

end

end A098733.P7379136616551312541

/-! ## A098733.P2856977445258696438

`(n+1)*A108202(2*(n+1))`
-/

namespace A098733.P2856977445258696438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A108202 (2 * (n + 1))

end

end A098733.P2856977445258696438

/-! ## A098733.P832107370475026341

`A033307(n)*A065650(A261333(n))`
-/

namespace A098733.P832107370475026341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033307 n * A065650 (A261333 n).toNat

end

end A098733.P832107370475026341

/-! ## A098733.P4831884219600032859

`(1-A098728(n)+n)*(n+1)`
-/

namespace A098733.P4831884219600032859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A098728 n + (n : ℤ)) * (n + 1 : ℤ)

end

end A098733.P4831884219600032859

/-! ## A098733.P14040226996403619204

`(n+1)*(n+2-A098732(n+2))`
-/

namespace A098733.P14040226996403619204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * ((n + 2 : ℤ) - A098732 (n + 2))

end

end A098733.P14040226996403619204

/-! ## A098733.P16376526584492824078

`(n+1)*A244426(A038722(n+1))`
-/

namespace A098733.P16376526584492824078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A244426 (A038722 (n + 1)).toNat

end

end A098733.P16376526584492824078

/-!
# A098734: Consider the sequence {b(n), n >= 1} of digits of the integers: 0 1 2 3 4 5 6 7 8 9 1 0 1 1 1 2 1 3 1 4 1 5 1 6 1 7 1 8 1 9 2 0... (A033307); a(n) = n*b(n).

The programs for A098734, there is no canonical definition to state claims against.
-/

/-! ## A098734.P6787111124720610472

`(n+1)*A007376(n)`
-/

namespace A098734.P6787111124720610472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A007376 n

end

end A098734.P6787111124720610472

/-! ## A098734.P18178599246189379614

`(n+1)*A108202(2*n)`
-/

namespace A098734.P18178599246189379614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A108202 (2 * n)

end

end A098734.P18178599246189379614

/-! ## A098734.P6189128377737818852

`(n+1)*A065649(n)%10`
-/

namespace A098734.P6189128377737818852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * Int.tmod (A065649 n) 10

end

end A098734.P6189128377737818852

/-! ## A098734.P16432182021310542228

`(1-A098732(n+1)+n)*(n+1)`
-/

namespace A098734.P16432182021310542228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A098732 (n + 1) + (n : ℤ)) * (n + 1 : ℤ)

end

end A098734.P16432182021310542228

/-! ## A098734.P12169016772150009610

`(n+1)*(A098729(n+1)-(n+1))`
-/

namespace A098734.P12169016772150009610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A098729 (n + 1) - (n + 1 : ℤ))

end

end A098734.P12169016772150009610

/-! ## A098734.P11145872497671626109

`(n+1)*A010879(A065649(n))`
-/

namespace A098734.P11145872497671626109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A010879 (A065649 n).toNat

end

end A098734.P11145872497671626109

/-! ## A098734.P16959230328079305737

`A007376(n)*A008619(2*n)`
-/

namespace A098734.P16959230328079305737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007376 n * A008619 (2 * n)

end

end A098734.P16959230328079305737

/-! ## A098734.P6784788822933803378

`A007376(n)*A028242(2*n)`
-/

namespace A098734.P6784788822933803378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007376 n * A028242 (2 * n)

end

end A098734.P6784788822933803378

/-! ## A098734.P7137531544506480524

`A007376(n)*A029579(2*n)`
-/

namespace A098734.P7137531544506480524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007376 n * A029579 (2 * n)

end

end A098734.P7137531544506480524

/-! ## A098734.P12416737102786023294

`A007376(n)*A080513(2*n)`
-/

namespace A098734.P12416737102786023294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007376 n * A080513 (2 * n)

end

end A098734.P12416737102786023294

/-!
# A098736: a(n) = product of n and all its digits.

The programs for A098736, the canonical program `A098736.P3684253920314267868` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A098736 has offset 0).

The definition of A098736 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007954, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A098736.P3684253920314267868

`n*A007954(n)`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A098736

/-- `n*A007954(n)` -/
def P3684253920314267868.Spec : Prop :=
  ∀ n, P3684253920314267868.a n = A098736 n

theorem P3684253920314267868.correct : P3684253920314267868.Spec := by
  intro n
  simp only [A098736]

end A098736

/-! ## A098736.P4071810819886149460

`n*∏{digits}[n, #]`
-/

namespace A098736.P4071810819886149460
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).prod

end

end A098736.P4071810819886149460

namespace A098736

/-- `n*∏{digits}[n, #]` -/
def P4071810819886149460.Spec : Prop :=
  ∀ n, (P4071810819886149460.a n : ℤ) = A098736 n

end A098736

/-! ## A098736.P11980235155594420372

`abs(n*A187844(n))`
-/

namespace A098736.P11980235155594420372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n : ℤ) * A187844 n|

end

end A098736.P11980235155594420372

namespace A098736

/-- `abs(n*A187844(n))` -/
def P11980235155594420372.Spec : Prop :=
  ∀ n, P11980235155594420372.a n = A098736 n

end A098736

/-! ## A098736.P9868862937762214440

`n*(n-A070565(n))`
-/

namespace A098736.P9868862937762214440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * ((n : ℤ) - A070565 n)

end

end A098736.P9868862937762214440

namespace A098736

/-- `n*(n-A070565(n))` -/
def P9868862937762214440.Spec : Prop :=
  ∀ n, P9868862937762214440.a n = A098736 n

end A098736

/-! ## A098736.P5141543155168590800

`n*(A230099(n)-n)`
-/

namespace A098736.P5141543155168590800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A230099 n - (n : ℤ))

end

end A098736.P5141543155168590800

namespace A098736

/-- `n*(A230099(n)-n)` -/
def P5141543155168590800.Spec : Prop :=
  ∀ n, P5141543155168590800.a n = A098736 n

end A098736

/-! ## A098736.P982571235746330371

`n*(∑{digits}[n, #]-A062329(n))`
-/

namespace A098736.P982571235746330371
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (((((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum : ℕ) : ℤ) - A062329 n)

end

end A098736.P982571235746330371

namespace A098736

/-- `n*(∑{digits}[n, #]-A062329(n))` -/
def P982571235746330371.Spec : Prop :=
  ∀ n, P982571235746330371.a n = A098736 n

end A098736

/-! ## A098736.P12350562259494601395

`A000030(n)*A321243(n)`
-/

namespace A098736.P12350562259494601395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000030 n * A321243 n

end

end A098736.P12350562259494601395

namespace A098736

/-- `A000030(n)*A321243(n)` -/
def P12350562259494601395.Spec : Prop :=
  ∀ n, P12350562259494601395.a n = A098736 n

end A098736

/-! ## A098736.P5132979010578875252

`A230101(n*A168046(n))`
-/

namespace A098736.P5132979010578875252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230101 ((n : ℤ) * A168046 n).toNat

end

end A098736.P5132979010578875252

namespace A098736

/-- `A230101(n*A168046(n))` -/
def P5132979010578875252.Spec : Prop :=
  ∀ n, P5132979010578875252.a n = A098736 n

end A098736

/-! ## A098736.P14530881901405950293

`lcm(A007954(n), A230101(n))`
-/

namespace A098736.P14530881901405950293
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A007954 n) (A230101 n)

end

end A098736.P14530881901405950293

namespace A098736

/-- `lcm(A007954(n), A230101(n))` -/
def P14530881901405950293.Spec : Prop :=
  ∀ n, (P14530881901405950293.a n : ℤ) = A098736 n

end A098736

/-! ## A098736.P8163758654426832533

`(1-A217096(n))*A230101(n)`
-/

namespace A098736.P8163758654426832533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A217096 n) * A230101 n

end

end A098736.P8163758654426832533

namespace A098736

/-- `(1-A217096(n))*A230101(n)` -/
def P8163758654426832533.Spec : Prop :=
  ∀ n, P8163758654426832533.a n = A098736 n

end A098736

/-! ## A098736.P7475981607811738375

`n*(A061762(n)-A007953(n))`
-/

namespace A098736.P7475981607811738375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A061762 n - A007953 n)

end

end A098736.P7475981607811738375

namespace A098736

/-- `n*(A061762(n)-A007953(n))` -/
def P7475981607811738375.Spec : Prop :=
  ∀ n, P7475981607811738375.a n = A098736 n

end A098736

/-! ## A098736.P13374492987059207635

`n*(A007953(n)-A062329(n))`
-/

namespace A098736.P13374492987059207635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A007953 n - A062329 n)

end

end A098736.P13374492987059207635

namespace A098736

/-- `n*(A007953(n)-A062329(n))` -/
def P13374492987059207635.Spec : Prop :=
  ∀ n, P13374492987059207635.a n = A098736 n

end A098736

/-! ## A098736.P14885366675779698758

`n*(A062028(n)-n-A062329(n))`
-/

namespace A098736.P14885366675779698758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A062028 n - (n : ℤ) - A062329 n)

end

end A098736.P14885366675779698758

namespace A098736

/-- `n*(A062028(n)-n-A062329(n))` -/
def P14885366675779698758.Spec : Prop :=
  ∀ n, P14885366675779698758.a n = A098736 n

end A098736

/-! ## A098736.P6905994852461258032

`n*A037213(A187844(n)²)`
-/

namespace A098736.P6905994852461258032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A037213 (A187844 n ^ 2).toNat

end

end A098736.P6905994852461258032

namespace A098736

/-- `n*A037213(A187844(n)²)` -/
def P6905994852461258032.Spec : Prop :=
  ∀ n, P6905994852461258032.a n = A098736 n

end A098736

/-!
# A098737: Triangle read by rows: number of triangles formed by lines from two vertices of a triangle to the opposite side that segment the opposite sides into m and n segments. Since f(m,n) = f(n,m), it suffices to give the results in a triangular table.

The programs for A098737, the canonical program `A098737.P17122941559797591169` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A098737 has offset 1).

The definition of A098737 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A098737.P17122941559797591169

`A075362(n+1)/2*A108872(n+1)`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A098737

/-- `A075362(n+1)/2*A108872(n+1)` -/
def P17122941559797591169.Spec : Prop :=
  ∀ n, P17122941559797591169.a n = (A098737 (n + 1) : ℚ)

end A098737

/-! ## A098737.P5849534265306275244

`A094727(A014132(n+1))/2*A075362(n+1)`
-/

namespace A098737.P5849534265306275244
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A094727 (A014132 (n + 1)).toNat : ℚ) / 2 * (A075362 (n + 1) : ℚ)

end

end A098737.P5849534265306275244

namespace A098737

/-- `A094727(A014132(n+1))/2*A075362(n+1)` -/
def P5849534265306275244.Spec : Prop :=
  ∀ n, P5849534265306275244.a n = (A098737 (n + 1) : ℚ)

end A098737

/-! ## A098737.P10641944703973735006

`A107985(A245300(n))`
-/

namespace A098737.P10641944703973735006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107985 (A245300 n).toNat

end

end A098737.P10641944703973735006

namespace A098737

/-- `A107985(A245300(n))` -/
def P10641944703973735006.Spec : Prop :=
  ∀ n, P10641944703973735006.a n = A098737 (n + 1)

end A098737

/-! ## A098737.P13401623765748300583

`A107985(floor(A214661(n+1)/2))`
-/

namespace A098737.P13401623765748300583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107985 ⌊(A214661 (n + 1) : ℚ) / 2⌋.toNat

end

end A098737.P13401623765748300583

namespace A098737

/-- `A107985(floor(A214661(n+1)/2))` -/
def P13401623765748300583.Spec : Prop :=
  ∀ n, P13401623765748300583.a n = A098737 (n + 1)

end A098737

/-! ## A098737.P2900433772822893970

`A014682(A075362(n+1)*A108872(n+1))`
-/

namespace A098737.P2900433772822893970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A075362 (n + 1) * A108872 (n + 1)).toNat

end

end A098737.P2900433772822893970

namespace A098737

/-- `A014682(A075362(n+1)*A108872(n+1))` -/
def P2900433772822893970.Spec : Prop :=
  ∀ n, P2900433772822893970.a n = A098737 (n + 1)

end A098737

/-! ## A098737.P12503255372684470500

`A004525(A075362(n+1)*A108872(n+1))`
-/

namespace A098737.P12503255372684470500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A075362 (n + 1) * A108872 (n + 1)).toNat

end

end A098737.P12503255372684470500

namespace A098737

/-- `A004525(A075362(n+1)*A108872(n+1))` -/
def P12503255372684470500.Spec : Prop :=
  ∀ n, P12503255372684470500.a n = A098737 (n + 1)

end A098737

/-! ## A098737.P3363180613053962392

`A004526(A075362(n+1)*A108872(n+1))`
-/

namespace A098737.P3363180613053962392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A075362 (n + 1) * A108872 (n + 1)).toNat

end

end A098737.P3363180613053962392

namespace A098737

/-- `A004526(A075362(n+1)*A108872(n+1))` -/
def P3363180613053962392.Spec : Prop :=
  ∀ n, P3363180613053962392.a n = A098737 (n + 1)

end A098737

/-! ## A098737.P18158740055646283120

`A025480(A075362(n+1)*A108872(n+1))`
-/

namespace A098737.P18158740055646283120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A075362 (n + 1) * A108872 (n + 1)).toNat

end

end A098737.P18158740055646283120

namespace A098737

/-- `A025480(A075362(n+1)*A108872(n+1))` -/
def P18158740055646283120.Spec : Prop :=
  ∀ n, P18158740055646283120.a n = A098737 (n + 1)

end A098737

/-! ## A098737.P9986726339367674865

`A026741(A075362(n+1)*A108872(n+1))`
-/

namespace A098737.P9986726339367674865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A075362 (n + 1) * A108872 (n + 1)).toNat

end

end A098737.P9986726339367674865

namespace A098737

/-- `A026741(A075362(n+1)*A108872(n+1))` -/
def P9986726339367674865.Spec : Prop :=
  ∀ n, P9986726339367674865.a n = A098737 (n + 1)

end A098737

/-! ## A098737.P6310752335999261878

`A029578(A075362(n+1)*A108872(n+1))`
-/

namespace A098737.P6310752335999261878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029578 (A075362 (n + 1) * A108872 (n + 1)).toNat

end

end A098737.P6310752335999261878

namespace A098737

/-- `A029578(A075362(n+1)*A108872(n+1))` -/
def P6310752335999261878.Spec : Prop :=
  ∀ n, P6310752335999261878.a n = A098737 (n + 1)

end A098737

/-! ## A098737.P10620681867110940484

`A032742(A075362(n+1)*A108872(n+1))`
-/

namespace A098737.P10620681867110940484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (A075362 (n + 1) * A108872 (n + 1)).toNat

end

end A098737.P10620681867110940484

namespace A098737

/-- `A032742(A075362(n+1)*A108872(n+1))` -/
def P10620681867110940484.Spec : Prop :=
  ∀ n, P10620681867110940484.a n = A098737 (n + 1)

end A098737

/-!
# A098738: a(1) = 1, a(2) = 2, a(3) = 2, a(4) = 3, for n >= 3, a(n+2) = a(n+1) + a(n)*floor(n/2)*ceiling(n/2).

The programs for A098738, there is no canonical definition to state claims against.
-/

/-! ## A098738.P1157009934940932464

`A332249(A002467(n))+1`
-/

namespace A098738.P1157009934940932464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332249 (A002467 n).toNat + 1

end

end A098738.P1157009934940932464

/-! ## A098738.P5952259086906694120

`A230772(A220912(n+1)+7)`
-/

namespace A098738.P5952259086906694120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230772 (A220912 (n + 1) + 7).toNat

end

end A098738.P5952259086906694120

/-!
# A098739: This sequence is constructed using only the four single-digit primes 2,3,5,7 in that order.

The programs for A098739, there is no canonical definition to state claims against.
-/

/-! ## A098739.P4972375460102586439

`p?[∏{digits}[n, #]]+10*a(n-1)` with `a(0)=2`
-/

namespace A098739.P4972375460102586439
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f2 n)).map fun (x : ℕ) => x).prod

def a : ℕ → ℕ := SequenceMachineLib.rec [2] fun n a =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) + 10 * a (n - 1)

end

end A098739.P4972375460102586439

/-!
# A098740: Start with the sequence of natural numbers S(0)={1,2,3,...} and define, for i>0, S(i)=D(i)S(i-1), where D(i)A denotes the operation of deleting the a(1+[i/2])th term of A={a(1),a(2),a(3),...}. E.g. D(3){1,2,4,6,9,10,...} means to delete the a(1+[3/2])th = 2nd term of {1,2,4,9,10,...}, giving {1,4,9,10,...}. The given sequence is the limit of S(i) as i->inf.

The programs for A098740, there is no canonical definition to state claims against.
-/

/-! ## A098740.P2405532141845066916

`comp[and(n, -n)%3+n]+1-n`
-/

namespace A098740.P2405532141845066916
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.land (n : ℤ) (-(n : ℤ))) 3 + (n : ℤ)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1 : ℤ) - (n : ℤ)

end

end A098740.P2405532141845066916

/-! ## A098740.P18268743299087440266

`lt[xor(n-1, n-2)%3, 1]+1-n`
-/

namespace A098740.P18268743299087440266
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.xor ((n : ℤ) - 1) ((n : ℤ) - 2)) 3

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n : ℤ) + (1 - (n : ℤ))

end

end A098740.P18268743299087440266

/-! ## A098740.P13036662979628331240

`eq[1, and(val(n, 2), a(n-1)!)]+2-n` with `a(0)=1`
-/

namespace A098740.P13036662979628331240
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f2 =>
  Nat.land (SequenceMachineLib.valuation n 2) (Nat.factorial (f2 (n - 1)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 2 : ℤ) - (n : ℤ)

end

end A098740.P13036662979628331240

/-! ## A098740.P2427956789371212829

`2-(n-eq[1, and(val(n, 2), a(n-1)!)])` with `a(0)=1`
-/

namespace A098740.P2427956789371212829
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f2 =>
  Nat.land (SequenceMachineLib.valuation n 2) (Nat.factorial (f2 (n - 1)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - ((n : ℤ) - (SequenceMachineLib.nth (fun j => f1 j = f2 j) n : ℤ))

end

end A098740.P2427956789371212829

/-! ## A098740.P2324454273754299297

`comp[xor(n+1, xor(n, n+1)%3)]-n+1`
-/

namespace A098740.P2324454273754299297
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor (n + 1) (Nat.xor n (n + 1) % 3)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ) + 1

end

end A098740.P2324454273754299297

/-! ## A098740.P12044037826815025113

`comp[xor(n+1, (-1)^val(n+1, 2))]-n+1`
-/

namespace A098740.P12044037826815025113
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n + 1 : ℤ) ((-1) ^ SequenceMachineLib.valuation (n + 1) 2)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - (n : ℤ) + 1

end

end A098740.P12044037826815025113

/-! ## A098740.P5659831850737652738

`abs(comp[(n+1)*(n+1-and(n, n+1))]+1-n)+1`
-/

namespace A098740.P5659831850737652738
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * ((n + 1 : ℤ) - (Nat.land n (n + 1) : ℤ))

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1 : ℤ) - (n : ℤ)| + 1

end

end A098740.P5659831850737652738

/-! ## A098740.P15264678187088982962

`(n%2)!+comp[(n+1)*(n+1-and(n, n+1))]+1-n`
-/

namespace A098740.P15264678187088982962
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * ((n + 1 : ℤ) - (Nat.land n (n + 1) : ℤ))

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (n % 2) : ℤ) + ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1 : ℤ) - (n : ℤ))

end

end A098740.P15264678187088982962

/-!
# A098741: a(n) = (p^2*(p+1)*(p+2))/6 where p is n-th prime.

The programs for A098741, the canonical program `A098741.P15014924215178314495` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A098741 has offset 1).

The definition of A098741 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A098741.P15014924215178314495

`C(A000040(n+1)+2, 3)*A000040(n+1)`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A098741

/-- `C(A000040(n+1)+2, 3)*A000040(n+1)` -/
def P15014924215178314495.Spec : Prop :=
  ∀ n, P15014924215178314495.a n = A098741 (n + 1)

theorem P15014924215178314495.correct : P15014924215178314495.Spec := by
  intro n
  simp only [A098741, Nat.add_sub_cancel]

end A098741

/-! ## A098741.P1074723238069057556

`sqrt(A001248(n+1))*C(A006093(n+1)+3, 3)`
-/

namespace A098741.P1074723238069057556
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A001248 (n + 1) : ℝ) * (Nat.choose (A006093 (n + 1) + 3).toNat 3 : ℝ)

end

end A098741.P1074723238069057556

namespace A098741

/-- `sqrt(A001248(n+1))*C(A006093(n+1)+3, 3)` -/
def P1074723238069057556.Spec : Prop :=
  ∀ n, P1074723238069057556.a n = (A098741 (n + 1) : ℝ)

end A098741

/-! ## A098741.P3720091302487045903

`A138636(n+1)/6*C(A006093(n+1)+3, 3)`
-/

namespace A098741.P3720091302487045903
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138636 (n + 1) : ℚ) / 6 * (Nat.choose (A006093 (n + 1) + 3).toNat 3 : ℚ)

end

end A098741.P3720091302487045903

namespace A098741

/-- `A138636(n+1)/6*C(A006093(n+1)+3, 3)` -/
def P3720091302487045903.Spec : Prop :=
  ∀ n, P3720091302487045903.a n = (A098741 (n + 1) : ℚ)

end A098741

/-! ## A098741.P15702632203688400962

`A001248(n+1)+A138421(n+1)+A138416(n+1)`
-/

namespace A098741.P15702632203688400962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001248 (n + 1) + (A138421 (n + 1) + A138416 (n + 1))

end

end A098741.P15702632203688400962

namespace A098741

/-- `A001248(n+1)+A138421(n+1)+A138416(n+1)` -/
def P15702632203688400962.Spec : Prop :=
  ∀ n, P15702632203688400962.a n = A098741 (n + 1)

end A098741

/-! ## A098741.P2159965212334990303

`(A127920(n+1)+A034953(n+1))*A000040(n+1)`
-/

namespace A098741.P2159965212334990303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A127920 (n + 1) + A034953 (n + 1)) * A000040 (n + 1)

end

end A098741.P2159965212334990303

namespace A098741

/-- `(A127920(n+1)+A034953(n+1))*A000040(n+1)` -/
def P2159965212334990303.Spec : Prop :=
  ∀ n, P2159965212334990303.a n = A098741 (n + 1)

end A098741

/-! ## A098741.P18292534750654503711

`(A271512(n+1)-A271511(n+1))*A000040(n+1)`
-/

namespace A098741.P18292534750654503711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A271512 (n + 1) - A271511 (n + 1)) * A000040 (n + 1)

end

end A098741.P18292534750654503711

namespace A098741

/-- `(A271512(n+1)-A271511(n+1))*A000040(n+1)` -/
def P18292534750654503711.Spec : Prop :=
  ∀ n, P18292534750654503711.a n = A098741 (n + 1)

end A098741

/-! ## A098741.P9439884607565434627

`A002417(p?[comp[n²]])`
-/

namespace A098741.P9439884607565434627
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002417 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A098741.P9439884607565434627

namespace A098741

/-- `A002417(p?[comp[n²]])` -/
def P9439884607565434627.Spec : Prop :=
  ∀ n, P9439884607565434627.a n = A098741 (n + 1)

end A098741

/-! ## A098741.P10919933096706050829

`p?[n%3+n]*A000292(p?[n%3+n])`
-/

namespace A098741.P10919933096706050829
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 3 + n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 3 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℤ) * A000292 (f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n))

end

end A098741.P10919933096706050829

namespace A098741

/-- `p?[n%3+n]*A000292(p?[n%3+n])` -/
def P10919933096706050829.Spec : Prop :=
  ∀ n, P10919933096706050829.a n = A098741 (n + 1)

end A098741

/-! ## A098741.P8860347121630704552

`A002417(A000040(n+1))`
-/

namespace A098741.P8860347121630704552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002417 (A000040 (n + 1)).toNat

end

end A098741.P8860347121630704552

namespace A098741

/-- `A002417(A000040(n+1))` -/
def P8860347121630704552.Spec : Prop :=
  ∀ n, P8860347121630704552.a n = A098741 (n + 1)

end A098741

/-! ## A098741.P14614722257079823891

`A002417(A008578(n+2))`
-/

namespace A098741.P14614722257079823891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002417 (A008578 (n + 2)).toNat

end

end A098741.P14614722257079823891

namespace A098741

/-- `A002417(A008578(n+2))` -/
def P14614722257079823891.Spec : Prop :=
  ∀ n, P14614722257079823891.a n = A098741 (n + 1)

end A098741

/-! ## A098741.P9509465332832844464

`A002417(A182986(n+2))`
-/

namespace A098741.P9509465332832844464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002417 (A182986 (n + 2)).toNat

end

end A098741.P9509465332832844464

namespace A098741

/-- `A002417(A182986(n+2))` -/
def P9509465332832844464.Spec : Prop :=
  ∀ n, P9509465332832844464.a n = A098741 (n + 1)

end A098741

/-! ## A098741.P15279642294497637121

`A002417(record[A006530(n+2)])`
-/

namespace A098741.P15279642294497637121
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002417 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A098741.P15279642294497637121

namespace A098741

/-- `A002417(record[A006530(n+2)])` -/
def P15279642294497637121.Spec : Prop :=
  ∀ n, P15279642294497637121.a n = A098741 (n + 1)

end A098741

/-! ## A098741.P2039475204364292666

`A002417(record[A014963(n+2)])`
-/

namespace A098741.P2039475204364292666
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002417 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A098741.P2039475204364292666

namespace A098741

/-- `A002417(record[A014963(n+2)])` -/
def P2039475204364292666.Spec : Prop :=
  ∀ n, P2039475204364292666.a n = A098741 (n + 1)

end A098741

/-! ## A098741.P14345019461962364228

`A002417(record[A020639(n+2)])`
-/

namespace A098741.P14345019461962364228
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002417 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A098741.P14345019461962364228

namespace A098741

/-- `A002417(record[A020639(n+2)])` -/
def P14345019461962364228.Spec : Prop :=
  ∀ n, P14345019461962364228.a n = A098741 (n + 1)

end A098741

/-! ## A098741.P12614754413674933891

`A002417(A006093(n+1)+1)`
-/

namespace A098741.P12614754413674933891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002417 (A006093 (n + 1) + 1).toNat

end

end A098741.P12614754413674933891

namespace A098741

/-- `A002417(A006093(n+1)+1)` -/
def P12614754413674933891.Spec : Prop :=
  ∀ n, P12614754413674933891.a n = A098741 (n + 1)

end A098741

/-! ## A098741.P2864637075436386222

`∏{p}[A000040(n+1), #*A000292(#)]`
-/

namespace A098741.P2864637075436386222
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (p : ℤ) * A000292 p

end

end A098741.P2864637075436386222

namespace A098741

/-- `∏{p}[A000040(n+1), #*A000292(#)]` -/
def P2864637075436386222.Spec : Prop :=
  ∀ n, P2864637075436386222.a n = A098741 (n + 1)

end A098741

/-! ## A098741.P14427937654033199052

`record[A000292(A033677(n+2))*A033677(n+2)]`
-/

namespace A098741.P14427937654033199052
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 (A033677 (n + 2)).toNat * A033677 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A098741.P14427937654033199052

namespace A098741

/-- `record[A000292(A033677(n+2))*A033677(n+2)]` -/
def P14427937654033199052.Spec : Prop :=
  ∀ n, P14427937654033199052.a n = A098741 (n + 1)

end A098741

/-! ## A098741.P14682236449679057335

`record[A006530(2*(n+1))*A000292(A006530(2*(n+1)))]`
-/

namespace A098741.P14682236449679057335
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (2 * (n + 1)) * A000292 (A006530 (2 * (n + 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A098741.P14682236449679057335

namespace A098741

/-- `record[A006530(2*(n+1))*A000292(A006530(2*(n+1)))]` -/
def P14682236449679057335.Spec : Prop :=
  ∀ n, P14682236449679057335.a n = A098741 (n + 1)

end A098741

/-! ## A098741.P8192884380903974485

`A002624(A037168(n+1))`
-/

namespace A098741.P8192884380903974485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002624 (A037168 (n + 1)).toNat

end

end A098741.P8192884380903974485

namespace A098741

/-- `A002624(A037168(n+1))` -/
def P8192884380903974485.Spec : Prop :=
  ∀ n, P8192884380903974485.a n = A098741 (n + 1)

end A098741

/-!
# A098742: Number of indecomposable set partitions of [1..n] without singletons.

The programs for A098742, there is no canonical definition to state claims against.
-/

/-! ## A098742.P7690257806536748811

`A116155(∑[abs(1-n)])`
-/

namespace A098742.P7690257806536748811
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (n : ℤ)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116155 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A098742.P7690257806536748811

/-! ## A098742.P9429591337849965864

`A096315(round(ϕ*a(n-1)))` with `a(0)=0, a(1)=0, a(2)=1, a(3)=1`
-/

namespace A098742.P9429591337849965864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 1, 1] fun n a =>
  A096315 (SequenceMachineLib.roundAway (Real.goldenRatio * (a (n - 1) : ℝ))).toNat

end

end A098742.P9429591337849965864

/-! ## A098742.P17231367147091124558

`A224985(A325928(n))`
-/

namespace A098742.P17231367147091124558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224985 (A325928 n).toNat

end

end A098742.P17231367147091124558

/-! ## A098742.P17924157631697199837

`A373069(A024971(n+1))`
-/

namespace A098742.P17924157631697199837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373069 (A024971 (n + 1)).toNat

end

end A098742.P17924157631697199837

/-!
# A098745: Number of primes between prime(n)/sqrt(2) and prime(n)*sqrt(2).

The programs for A098745, there is no canonical definition to state claims against.
-/

/-! ## A098745.P2696798161867057036

`A056171(A097433(n+1))`
-/

namespace A098745.P2696798161867057036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056171 (A097433 (n + 1)).toNat

end

end A098745.P2696798161867057036

/-! ## A098745.P5267788221666721893

`A056171(floor(sqrt(A179262(n+1))))`
-/

namespace A098745.P5267788221666721893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056171 (Int.sqrt (A179262 (n + 1))).toNat

end

end A098745.P5267788221666721893

/-! ## A098745.P11532258837253379735

`A056171(A001951(p?[xor(1, n)+1]))`
-/

namespace A098745.P11532258837253379735
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056171 (A001951 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))).toNat

end

end A098745.P11532258837253379735

/-! ## A098745.P16170530643891051486

`A056171(A001951(Δ[A007504(n)]))`
-/

namespace A098745.P16170530643891051486
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056171 (A001951 (f1 (n + 1) - f1 n).toNat).toNat

end

end A098745.P16170530643891051486

/-! ## A098745.P3519576276755321715

`A056171(A001951(record[A051698(n)]))`
-/

namespace A098745.P3519576276755321715
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051698 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056171 (A001951 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat).toNat

end

end A098745.P3519576276755321715

/-! ## A098745.P6999787148017752579

`A056171(A001951(p?[A001057(n)]))`
-/

namespace A098745.P6999787148017752579
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056171 (A001951 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat).toNat

end

end A098745.P6999787148017752579

/-! ## A098745.P14246608487214798106

`A056171(A001951(p?[A004442(n)]))`
-/

namespace A098745.P14246608487214798106
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056171 (A001951 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat).toNat

end

end A098745.P14246608487214798106

/-! ## A098745.P14182270902638107261

`A056171(A001951(p?[A014681(n)]))`
-/

namespace A098745.P14182270902638107261
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056171 (A001951 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat).toNat

end

end A098745.P14182270902638107261

/-! ## A098745.P11164951659763213200

`A056171(A001951(p?[A056847(n)]))`
-/

namespace A098745.P11164951659763213200
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056847 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056171 (A001951 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat).toNat

end

end A098745.P11164951659763213200

/-! ## A098745.P6779088385489737384

`A056171(A001951(p?[A057979(n)]))`
-/

namespace A098745.P6779088385489737384
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057979 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056171 (A001951 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat).toNat

end

end A098745.P6779088385489737384

/-!
# A098746: Number of permutations of [1..n] which avoid 4231 and 42513.

The programs for A098746, there is no canonical definition to state claims against.
-/

/-! ## A098746.P1390225483628426028

`A185943(A001105(n))/A028310(n)`
-/

namespace A098746.P1390225483628426028
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A185943 (A001105 n).toNat : ℚ) / (A028310 n : ℚ)

end

end A098746.P1390225483628426028

/-! ## A098746.P15266330362350649946

`A185943(A001105(n))/A065033(2*n)`
-/

namespace A098746.P15266330362350649946
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A185943 (A001105 n).toNat : ℚ) / (A065033 (2 * n) : ℚ)

end

end A098746.P15266330362350649946

/-! ## A098746.P6693329429606838888

`A130456(n*(n+2))`
-/

namespace A098746.P6693329429606838888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130456 (n * (n + 2))

end

end A098746.P6693329429606838888

/-! ## A098746.P8573459877829785534

`abs(record[Δ[A130456(n+1)]])`
-/

namespace A098746.P8573459877829785534
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130456 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)|

end

end A098746.P8573459877829785534

/-!
# A098747: Triangle read by rows: T(n,k) is the number of Dyck paths of semilength n having exactly k UDU's at low level.

The programs for A098747, there is no canonical definition to state claims against.
-/

/-! ## A098747.P12737217575482117220

`A244361(A134380(n+1))`
-/

namespace A098747.P12737217575482117220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244361 (A134380 (n + 1)).toNat

end

end A098747.P12737217575482117220

/-! ## A098747.P10262990365254272824

`A244361(ratio[A134380(n)]*A134380(n))`
-/

namespace A098747.P10262990365254272824
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134380 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244361 (SequenceMachineLib.roundAway ((f1 (n + 1) : ℚ) / (f1 n : ℚ) * (A134380 n : ℚ))).toNat

end

end A098747.P10262990365254272824

/-!
# A098748: a(n) = floor((n^4-n^3-1)/(n^2-n-1)).

The programs for A098748, the canonical program `A098748.P17898518873940120183` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A098748 has offset 0).

The definition of A098748 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor((n^4-n^3-1)/(n²-n-1))` (program `A098748.P17898518873940120183`, by `A098748.P17898518873940120183.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A098748.P17898518873940120183

`floor((n^4-n^3-1)/(n²-n-1))`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A098748

/-- `floor((n^4-n^3-1)/(n²-n-1))` -/
def P17898518873940120183.Spec : Prop :=
  ∀ n, P17898518873940120183.a n = A098748 n

theorem P17898518873940120183.correct : P17898518873940120183.Spec := by
  intro n
  simp only [A098748]

end A098748

/-! ## A098748.P9247508440282663467

`ceil((acot(n²-2)+n)²)`
-/

namespace A098748.P9247508440282663467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(SequenceMachineLib.acot ((n ^ 2 : ℤ) - 2 : ℝ) + (n : ℝ)) ^ 2⌉

end

end A098748.P9247508440282663467

namespace A098748

/-- `ceil((acot(n²-2)+n)²)` -/
def P9247508440282663467.Spec : Prop :=
  ∀ n, P9247508440282663467.a n = A098748 n

end A098748

/-! ## A098748.P4792583743565882694

`a(n%2)+n²` with `a(0)=1, a(1)=1, a(2)=7`
-/

namespace A098748.P4792583743565882694
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 7] fun n a =>
  a (n % 2) + n ^ 2

end

end A098748.P4792583743565882694

namespace A098748

/-- `a(n%2)+n²` -/
def P4792583743565882694.Spec : Prop :=
  ∀ n, (P4792583743565882694.a n : ℤ) = A098748 n

end A098748

/-! ## A098748.P12236832748178414460

`a(and(1, n))+n²` with `a(0)=1, a(1)=1, a(2)=7`
-/

namespace A098748.P12236832748178414460
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 7] fun n a =>
  a (Nat.land 1 n) + n ^ 2

end

end A098748.P12236832748178414460

namespace A098748

/-- `a(and(1, n))+n²` -/
def P12236832748178414460.Spec : Prop :=
  ∀ n, (P12236832748178414460.a n : ℤ) = A098748 n

end A098748

/-! ## A098748.P72573010939742944

`C(n², C(2, n)+1)+1`
-/

namespace A098748.P72573010939742944
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n ^ 2) (Nat.choose 2 n + 1) + 1

end

end A098748.P72573010939742944

namespace A098748

/-- `C(n², C(2, n)+1)+1` -/
def P72573010939742944.Spec : Prop :=
  ∀ n, (P72573010939742944.a n : ℤ) = A098748 n

end A098748

/-! ## A098748.P12882160609992658923

`∑[a(n-1)+2]` with `a(0)=1, a(1)=0, a(2)=6, a(3)=3, a(4)=7`
-/

namespace A098748.P12882160609992658923
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 0, 6, 3, 7] fun n f1 =>
  f1 (n - 1) + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A098748.P12882160609992658923

namespace A098748

/-- `∑[a(n-1)+2]` -/
def P12882160609992658923.Spec : Prop :=
  ∀ n, (P12882160609992658923.a n : ℤ) = A098748 n

end A098748

/-! ## A098748.P15618755883782217504

`gcd(3, a(n-1))+n²` with `a(0)=1, a(1)=1, a(2)=7`
-/

namespace A098748.P15618755883782217504
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 7] fun n a =>
  Nat.gcd 3 (a (n - 1)) + n ^ 2

end

end A098748.P15618755883782217504

namespace A098748

/-- `gcd(3, a(n-1))+n²` -/
def P15618755883782217504.Spec : Prop :=
  ∀ n, (P15618755883782217504.a n : ℤ) = A098748 n

end A098748

/-! ## A098748.P3886209643282601644

`n*n-2%a(n-1)+3` with `a(0)=1, a(1)=1`
-/

namespace A098748.P3886209643282601644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  (n * n : ℤ) - Int.tmod 2 (a (n - 1)) + 3

end

end A098748.P3886209643282601644

namespace A098748

/-- `n*n-2%a(n-1)+3` -/
def P3886209643282601644.Spec : Prop :=
  ∀ n, P3886209643282601644.a n = A098748 n

end A098748

/-! ## A098748.P5616872756463589703

`floor(n/a(n-1))+n²+1` with `a(0)=1, a(1)=1`
-/

namespace A098748.P5616872756463589703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  ⌊(n : ℚ) / (a (n - 1) : ℚ)⌋ + (n ^ 2 : ℤ) + 1

end

end A098748.P5616872756463589703

namespace A098748

/-- `floor(n/a(n-1))+n²+1` -/
def P5616872756463589703.Spec : Prop :=
  ∀ n, P5616872756463589703.a n = A098748 n

end A098748

/-! ## A098748.P2120851951052113451

`floor(n*(1/a(n-1)+n))+1` with `a(0)=1, a(1)=1`
-/

namespace A098748.P2120851951052113451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  ⌊(n : ℚ) * (1 / (a (n - 1) : ℚ) + (n : ℚ))⌋ + 1

end

end A098748.P2120851951052113451

namespace A098748

/-- `floor(n*(1/a(n-1)+n))+1` -/
def P2120851951052113451.Spec : Prop :=
  ∀ n, P2120851951052113451.a n = A098748 n

end A098748

/-! ## A098748.P16065655207734033009

`or(C(n, a(n-1)), A002522(n))` with `a(0)=1, a(1)=1`
-/

namespace A098748.P16065655207734033009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  Int.lor (Nat.choose n (a (n - 1)).toNat : ℤ) (A002522 n)

end

end A098748.P16065655207734033009

namespace A098748

/-- `or(C(n, a(n-1)), A002522(n))` -/
def P16065655207734033009.Spec : Prop :=
  ∀ n, P16065655207734033009.a n = A098748 n

end A098748

/-! ## A098748.P7581718518027339843

`∑[2*n+1]-n*A000032(C(2, n))`
-/

namespace A098748.P7581718518027339843
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (n : ℤ) * A000032 (Nat.choose 2 n)

end

end A098748.P7581718518027339843

namespace A098748

/-- `∑[2*n+1]-n*A000032(C(2, n))` -/
def P7581718518027339843.Spec : Prop :=
  ∀ n, P7581718518027339843.a n = A098748 n

end A098748

/-! ## A098748.P13013587219790070515

`xor(1, A130779(n))+A028310(n)²`
-/

namespace A098748.P13013587219790070515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A130779 n) + A028310 n ^ 2

end

end A098748.P13013587219790070515

namespace A098748

/-- `xor(1, A130779(n))+A028310(n)²` -/
def P13013587219790070515.Spec : Prop :=
  ∀ n, P13013587219790070515.a n = A098748 n

end A098748

/-! ## A098748.P12190999148752179458

`or(A060576(n)+n², A130779(n))`
-/

namespace A098748.P12190999148752179458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A060576 n + (n ^ 2 : ℤ)) (A130779 n)

end

end A098748.P12190999148752179458

namespace A098748

/-- `or(A060576(n)+n², A130779(n))` -/
def P12190999148752179458.Spec : Prop :=
  ∀ n, P12190999148752179458.a n = A098748 n

end A098748

/-! ## A098748.P7613204067126435927

`A002522(n)+A130779(n)-A130706(n)`
-/

namespace A098748.P7613204067126435927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002522 n + (A130779 n - A130706 n)

end

end A098748.P7613204067126435927

namespace A098748

/-- `A002522(n)+A130779(n)-A130706(n)` -/
def P7613204067126435927.Spec : Prop :=
  ∀ n, P7613204067126435927.a n = A098748 n

end A098748

/-! ## A098748.P8930034670824912077

`A002522(n)+A130779(n)-A130779(n+1)`
-/

namespace A098748.P8930034670824912077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002522 n + (A130779 n - A130779 (n + 1))

end

end A098748.P8930034670824912077

namespace A098748

/-- `A002522(n)+A130779(n)-A130779(n+1)` -/
def P8930034670824912077.Spec : Prop :=
  ∀ n, P8930034670824912077.a n = A098748 n

end A098748

/-! ## A098748.P8660032875453723669

`(n²+1)*a(A176895(2*n)-1)` with `a(0)=1, a(1)=1, a(2)=7`
-/

namespace A098748.P8660032875453723669
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 7] fun n a =>
  (n ^ 2 + 1) * a (A176895 (2 * n) - 1).toNat

end

end A098748.P8660032875453723669

namespace A098748

/-- `(n²+1)*a(A176895(2*n)-1)` -/
def P8660032875453723669.Spec : Prop :=
  ∀ n, (P8660032875453723669.a n : ℤ) = A098748 n

end A098748

/-! ## A098748.P5348528483235633782

`a(A014963(∑[n]))+n²` with `a(0)=1, a(1)=1, a(2)=7`
-/

namespace A098748.P5348528483235633782
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 7] fun n a =>
  a (A014963 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat + n ^ 2

end

end A098748.P5348528483235633782

namespace A098748

/-- `a(A014963(∑[n]))+n²` -/
def P5348528483235633782.Spec : Prop :=
  ∀ n, (P5348528483235633782.a n : ℤ) = A098748 n

end A098748

/-!
# A098749: Let f(n) = ((n^4-n^3-1)/(n^3-n-1))^2; then a(n) = floor(f(n)).

The programs for A098749, the canonical program `A098749.P15922087773642091575` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A098749 has offset 0).

The definition of A098749 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A098749.P15922087773642091575

`floor(((n^4-n^3-1)/(n^3-n-1))²)`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A098749

/-- `floor(((n^4-n^3-1)/(n^3-n-1))²)` -/
def P15922087773642091575.Spec : Prop :=
  ∀ n, P15922087773642091575.a n = A098749 n

theorem P15922087773642091575.correct : P15922087773642091575.Spec := by
  intro n
  simp only [A098749]

end A098749

/-! ## A098749.P3882222639079799233

`round(abs(cot(acot(1-n)²)))`
-/

namespace A098749.P3882222639079799233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway |Real.cot (SequenceMachineLib.acot (1 - (n : ℤ) : ℝ) ^ 2)|

end

end A098749.P3882222639079799233

namespace A098749

/-- `round(abs(cot(acot(1-n)²)))` -/
def P3882222639079799233.Spec : Prop :=
  ∀ n, P3882222639079799233.a n = A098749 n

end A098749

/-! ## A098749.P4766933916932487190

`ceil((tanh(8)-n)²-char[2])`
-/

namespace A098749.P4766933916932487190
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Real.tanh (8 : ℝ) - (n : ℝ)) ^ 2 - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℝ)⌉

end

end A098749.P4766933916932487190

namespace A098749

/-- `ceil((tanh(8)-n)²-char[2])` -/
def P4766933916932487190.Spec : Prop :=
  ∀ n, P4766933916932487190.a n = A098749 n

end A098749

/-! ## A098749.P7635363529064531186

`(1-gcd(n, C(2, n)))²+1`
-/

namespace A098749.P7635363529064531186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - (Nat.gcd n (Nat.choose 2 n) : ℤ)) ^ 2 + 1

end

end A098749.P7635363529064531186

namespace A098749

/-- `(1-gcd(n, C(2, n)))²+1` -/
def P7635363529064531186.Spec : Prop :=
  ∀ n, P7635363529064531186.a n = A098749 n

end A098749

/-! ## A098749.P10680600238281725743

`(n^C(2, n)-n)²+1`
-/

namespace A098749.P10680600238281725743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n ^ Nat.choose 2 n : ℤ) - (n : ℤ)) ^ 2 + 1

end

end A098749.P10680600238281725743

namespace A098749

/-- `(n^C(2, n)-n)²+1` -/
def P10680600238281725743.Spec : Prop :=
  ∀ n, P10680600238281725743.a n = A098749 n

end A098749

/-! ## A098749.P5159784739440757963

`abs((1-n)²+1-C(2, n))`
-/

namespace A098749.P5159784739440757963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(1 - (n : ℤ)) ^ 2 + (1 - (Nat.choose 2 n : ℤ))|

end

end A098749.P5159784739440757963

namespace A098749

/-- `abs((1-n)²+1-C(2, n))` -/
def P5159784739440757963.Spec : Prop :=
  ∀ n, P5159784739440757963.a n = A098749 n

end A098749

/-! ## A098749.P14985733875710751166

`(1-C(2, n))²+(1-n)²`
-/

namespace A098749.P14985733875710751166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - (Nat.choose 2 n : ℤ)) ^ 2 + (1 - (n : ℤ)) ^ 2

end

end A098749.P14985733875710751166

namespace A098749

/-- `(1-C(2, n))²+(1-n)²` -/
def P14985733875710751166.Spec : Prop :=
  ∀ n, P14985733875710751166.a n = A098749 n

end A098749

/-! ## A098749.P5350923876205597273

`∑[a(n-1)+2]` with `a(0)=1, a(1)=0, a(2)=0, a(3)=4, a(4)=5`
-/

namespace A098749.P5350923876205597273
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 0, 0, 4, 5] fun n f1 =>
  f1 (n - 1) + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A098749.P5350923876205597273

namespace A098749

/-- `∑[a(n-1)+2]` -/
def P5350923876205597273.Spec : Prop :=
  ∀ n, (P5350923876205597273.a n : ℤ) = A098749 n

end A098749

/-! ## A098749.P3010280367354564528

`a(2%n)+(1-n)²` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A098749.P3010280367354564528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1] fun n a =>
  a (2 % n) + (1 - (n : ℤ)) ^ 2

end

end A098749.P3010280367354564528

namespace A098749

/-- `a(2%n)+(1-n)²` -/
def P3010280367354564528.Spec : Prop :=
  ∀ n, P3010280367354564528.a n = A098749 n

end A098749

/-! ## A098749.P14659294372535161133

`(3%(n+1))%2+(1-n)²`
-/

namespace A098749.P14659294372535161133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((3 % (n + 1) % 2 : ℕ) : ℤ) + (1 - (n : ℤ)) ^ 2

end

end A098749.P14659294372535161133

namespace A098749

/-- `(3%(n+1))%2+(1-n)²` -/
def P14659294372535161133.Spec : Prop :=
  ∀ n, P14659294372535161133.a n = A098749 n

end A098749

/-! ## A098749.P15852535711661034660

`ogf((1-2x+x^2+4x^3-3x^4+x^5)/(1-3x+3x^2-x^3))`
-/

namespace A098749.P15852535711661034660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -2, 1, 4, -3, 1] [1, -3, 3, -1] n

end

end A098749.P15852535711661034660

namespace A098749

/-- `ogf((1-2x+x^2+4x^3-3x^4+x^5)/(1-3x+3x^2-x^3))` -/
def P15852535711661034660.Spec : Prop :=
  ∀ n, P15852535711661034660.a n = A098749 n

end A098749

/-! ## A098749.P4165888885703657353

`A026615(∑[n]+2)`
-/

namespace A098749.P4165888885703657353
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026615 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A098749.P4165888885703657353

namespace A098749

/-- `A026615(∑[n]+2)` -/
def P4165888885703657353.Spec : Prop :=
  ∀ n, P4165888885703657353.a n = A098749 n

end A098749

/-! ## A098749.P5380128206210528115

`A026681(∑[n]+3)`
-/

namespace A098749.P5380128206210528115
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026681 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A098749.P5380128206210528115

namespace A098749

/-- `A026681(∑[n]+3)` -/
def P5380128206210528115.Spec : Prop :=
  ∀ n, P5380128206210528115.a n = A098749 n

end A098749

/-! ## A098749.P10122123266393543807

`A097084(A054254(n+1))`
-/

namespace A098749.P10122123266393543807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097084 (A054254 (n + 1)).toNat

end

end A098749.P10122123266393543807

namespace A098749

/-- `A097084(A054254(n+1))` -/
def P10122123266393543807.Spec : Prop :=
  ∀ n, P10122123266393543807.a n = A098749 n

end A098749

/-! ## A098749.P12698533262433075143

`A138575(A160457(n))`
-/

namespace A098749.P12698533262433075143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138575 (A160457 n).toNat

end

end A098749.P12698533262433075143

namespace A098749

/-- `A138575(A160457(n))` -/
def P12698533262433075143.Spec : Prop :=
  ∀ n, P12698533262433075143.a n = A098749 n

end A098749

/-! ## A098749.P3940342810358438307

`A164515(A002061(A068527(A002061(n))))`
-/

namespace A098749.P3940342810358438307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164515 (A002061 (A068527 (A002061 n).toNat).toNat).toNat

end

end A098749.P3940342810358438307

namespace A098749

/-- `A164515(A002061(A068527(A002061(n))))` -/
def P3940342810358438307.Spec : Prop :=
  ∀ n, P3940342810358438307.a n = A098749 n

end A098749

/-!
# A098750: a(n+1) = a(n) + 10's complement of first digit of a(n); a(0) = 0.

The programs for A098750, there is no canonical definition to state claims against.
-/

/-! ## A098750.P9035497494118117679

`A302801(A004903(n+1))-A282513(n)`
-/

namespace A098750.P9035497494118117679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302801 (A004903 (n + 1)).toNat - A282513 n

end

end A098750.P9035497494118117679

/-!
# A098752: a(1) = 1 and a(n+1) is the least number > a(n) that begins with the last digit of a(n) and doesn't end with 0.

The programs for A098752, the canonical program `A098752.P6539240489071252640` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A098752 has offset 1).

The definition of A098752 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A098752.P6539240489071252640

`11*a(n-3)-10*a(n-6)` with `a(0)=1, a(1)=11, a(2)=12, a(3)=21, a(4)=101, a(5)=102, a(6)=201`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A098752

/-- `11*a(n-3)-10*a(n-6)` -/
def P6539240489071252640.Spec : Prop :=
  ∀ n, P6539240489071252640.a n = A098752 (n + 1)

theorem P6539240489071252640.correct : P6539240489071252640.Spec := by
  intro n
  simp only [A098752, Nat.add_sub_cancel]

end A098752

/-! ## A098752.P6344989300326946580

`∩[record[A076654(n+1)], A007089(n)]`
-/

namespace A098752.P6344989300326946580
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076654 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007089 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f3 j = (x : ℤ)) n

end

end A098752.P6344989300326946580

namespace A098752

/-- `∩[record[A076654(n+1)], A007089(n)]` -/
def P6344989300326946580.Spec : Prop :=
  ∀ n, (P6344989300326946580.a n : ℤ) = A098752 (n + 1)

end A098752

/-! ## A098752.P14757728774953892277

`∩[record[A125887(n+1)], A007089(n)]`
-/

namespace A098752.P14757728774953892277
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125887 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007089 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f3 j = (x : ℤ)) n

end

end A098752.P14757728774953892277

namespace A098752

/-- `∩[record[A125887(n+1)], A007089(n)]` -/
def P14757728774953892277.Spec : Prop :=
  ∀ n, (P14757728774953892277.a n : ℤ) = A098752 (n + 1)

end A098752

/-! ## A098752.P5644166951805354587

`eq[A006228(A007953(n)), A169669(n)]`
-/

namespace A098752.P5644166951805354587
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006228 (A007953 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169669 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A098752.P5644166951805354587

namespace A098752

/-- `eq[A006228(A007953(n)), A169669(n)]` -/
def P5644166951805354587.Spec : Prop :=
  ∀ n, (P5644166951805354587.a n : ℤ) = A098752 (n + 1)

end A098752

/-! ## A098752.P3721884197799283571

`eq[A003132(n), A154950(A036839(n))]`
-/

namespace A098752.P3721884197799283571
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003132 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154950 (A036839 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A098752.P3721884197799283571

namespace A098752

/-- `eq[A003132(n), A154950(A036839(n))]` -/
def P3721884197799283571.Spec : Prop :=
  ∀ n, (P3721884197799283571.a n : ℤ) = A098752 (n + 1)

end A098752

/-!
# A098754: Slowest increasing sequence of integers that alternately begin and end with 1.

The programs for A098754, there is no canonical definition to state claims against.
-/

/-! ## A098754.P9932612316148348960

`A063112(n+2)-A010054(A109298(n+1))`
-/

namespace A098754.P9932612316148348960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063112 (n + 2) - A010054 (A109298 (n + 1)).toNat

end

end A098754.P9932612316148348960

/-! ## A098754.P7853004324662717488

`A063112(n+2)-A121373(A112822(n+1))`
-/

namespace A098754.P7853004324662717488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063112 (n + 2) - A121373 (A112822 (n + 1)).toNat

end

end A098754.P7853004324662717488

/-! ## A098754.P11450409333192483826

`A063112(n+2)/A261143(A128001(n+1))`
-/

namespace A098754.P11450409333192483826
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A063112 (n + 2) : ℚ) / (A261143 (A128001 (n + 1)).toNat : ℚ)

end

end A098754.P11450409333192483826

/-! ## A098754.P3521290738777850056

`A063112(n+2)-C(A097050(n+2), A096355(n+1))`
-/

namespace A098754.P3521290738777850056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063112 (n + 2) - (Nat.choose (A097050 (n + 2)).toNat (A096355 (n + 1)).toNat : ℤ)

end

end A098754.P3521290738777850056

/-! ## A098754.P2889856065580741704

`∩[A063112(n+1), A129849(n+1)]`
-/

namespace A098754.P2889856065580741704
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063112 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129849 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A098754.P2889856065580741704

/-!
# A098755: Smallest available integer which fits into the repeating pattern 0123456789.

The programs for A098755, there is no canonical definition to state claims against.
-/

/-! ## A098755.P13047338152188910986

`lcm(A302504(n+1), A328676(A326323(2*n+1)))`
-/

namespace A098755.P13047338152188910986
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A302504 (n + 1)) (A328676 (A326323 (2 * n + 1)).toNat)

end

end A098755.P13047338152188910986

/-! ## A098755.P15107857393869743416

`record[(2*n%10-n)*(n+1)/∑{digits}[n+1, #]]`
-/

namespace A098755.P15107857393869743416
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((2 * (n % 10) : ℕ) : ℤ) - (n : ℤ) : ℚ) * ((n + 1 : ℚ) / ((((SequenceMachineLib.digits10 (f2 n)).map fun (x : ℕ) => x).sum : ℕ) : ℚ))

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A098755.P15107857393869743416

/-! ## A098755.P9151036634984691984

`n*(A092596(n+1)-n)`
-/

namespace A098755.P9151036634984691984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A092596 (n + 1) - (n : ℤ))

end

end A098755.P9151036634984691984

/-! ## A098755.P2578356565749176146

`∑[A089397(a(n-1)+a(n-8))]` with `a(0)=0, a(1)=1, a(2)=1, a(3)=1, a(4)=1, a(5)=1, a(6)=1, a(7)=1, a(8)=1`
-/

namespace A098755.P2578356565749176146
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 1, 1, 1, 1, 1, 1, 1] fun n f1 =>
  A089397 (f1 (n - 1) + f1 (n - 8)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A098755.P2578356565749176146

/-! ## A098755.P8110288422730201803

`A004830(A061805(n+1))`
-/

namespace A098755.P8110288422730201803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004830 (A061805 (n + 1)).toNat

end

end A098755.P8110288422730201803

/-!
# A098756: Smallest available integer which fits into the repeating pattern 9876543210.

The programs for A098756, there is no canonical definition to state claims against.
-/

/-! ## A098756.P7703069412506597899

`xor(A169805(A238921(n)), A267193(n))`
-/

namespace A098756.P7703069412506597899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A169805 (A238921 n).toNat) (A267193 n)

end

end A098756.P7703069412506597899

/-! ## A098756.P4077300927026698808

`A267193(n)-A064770(A185284(3*(n+1)))`
-/

namespace A098756.P4077300927026698808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267193 n - A064770 (A185284 (3 * (n + 1))).toNat

end

end A098756.P4077300927026698808

/-!
# A098760: Smallest a(n) not already in the sequence and not having the same length as a(n-1).

The programs for A098760, there is no canonical definition to state claims against.
-/

/-! ## A098760.P10564892454234125415

`A180018(A288326(n)²)+A107408(n)`
-/

namespace A098760.P10564892454234125415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180018 (A288326 n ^ 2).toNat + A107408 n

end

end A098760.P10564892454234125415

/-! ## A098760.P8511553430486022779

`A107408(n)-A048142(∑[A288326(n)])`
-/

namespace A098760.P8511553430486022779
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288326 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107408 n - A048142 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A098760.P8511553430486022779

/-! ## A098760.P8761736628418105444

`A107408(n)-A048142(A284750(n+1))`
-/

namespace A098760.P8761736628418105444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107408 n - A048142 (A284750 (n + 1)).toNat

end

end A098760.P8761736628418105444

/-! ## A098760.P1749161747225604501

`A107408(n)%A320461(2*(n+1))`
-/

namespace A098760.P1749161747225604501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A107408 n) (A320461 (2 * (n + 1)))

end

end A098760.P1749161747225604501

/-!
# A098761: Primes of the form prime(n) + prime(n+1) - prime(n+2) with multiplicity, ordered by increasing n.

The programs for A098761, the canonical program `A098761.P3457865346520638397` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A098761 has offset 1).

The definition of A098761 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1882 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A098761.P3457865346520638397

`p?[A096379(n+1)]`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A098761

/-- `p?[A096379(n+1)]` -/
def P3457865346520638397.Spec : Prop :=
  ∀ n, P3457865346520638397.a n = A098761 (n + 1)

theorem P3457865346520638397.correct : P3457865346520638397.Spec := by
  intro n
  simp only [A098761, Nat.add_sub_cancel]

end A098761

/-! ## A098761.P3336206022653032643

`p?[∑[A375087(n+1)]]`
-/

namespace A098761.P3336206022653032643
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375087 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A098761.P3336206022653032643

namespace A098761

/-- `p?[∑[A375087(n+1)]]` -/
def P3336206022653032643.Spec : Prop :=
  ∀ n, P3336206022653032643.a n = A098761 (n + 1)

end A098761

/-! ## A098761.P16441869657777242498

`p?[A008578(n+1)-A001223(n+1)]`
-/

namespace A098761.P16441869657777242498
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1) - A001223 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A098761.P16441869657777242498

namespace A098761

/-- `p?[A008578(n+1)-A001223(n+1)]` -/
def P16441869657777242498.Spec : Prop :=
  ∀ n, P16441869657777242498.a n = A098761 (n + 1)

end A098761

/-! ## A098761.P15472724212948042143

`p?[A040976(n+1)-A046930(n+1)]`
-/

namespace A098761.P15472724212948042143
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040976 (n + 1) - A046930 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A098761.P15472724212948042143

namespace A098761

/-- `p?[A040976(n+1)-A046930(n+1)]` -/
def P15472724212948042143.Spec : Prop :=
  ∀ n, P15472724212948042143.a n = A098761 (n + 1)

end A098761

/-! ## A098761.P87063571874080122

`p?[A118534(n+1)-A054541(n+1)]`
-/

namespace A098761.P87063571874080122
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118534 (n + 1) - A054541 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A098761.P87063571874080122

namespace A098761

/-- `p?[A118534(n+1)-A054541(n+1)]` -/
def P87063571874080122.Spec : Prop :=
  ∀ n, P87063571874080122.a n = A098761 (n + 1)

end A098761

/-! ## A098761.P17143723999828281220

`p?[A000040(n+1)-A261470(n+1)]`
-/

namespace A098761.P17143723999828281220
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - A261470 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A098761.P17143723999828281220

namespace A098761

/-- `p?[A000040(n+1)-A261470(n+1)]` -/
def P17143723999828281220.Spec : Prop :=
  ∀ n, P17143723999828281220.a n = A098761 (n + 1)

end A098761

/-! ## A098761.P668710841870438154

`p?[A000040(n+1)-A001223(n+2)]`
-/

namespace A098761.P668710841870438154
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - A001223 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A098761.P668710841870438154

namespace A098761

/-- `p?[A000040(n+1)-A001223(n+2)]` -/
def P668710841870438154.Spec : Prop :=
  ∀ n, P668710841870438154.a n = A098761 (n + 1)

end A098761

/-! ## A098761.P10004677791337195358

`p?[A008578(n+1)-A054541(n+2)]`
-/

namespace A098761.P10004677791337195358
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1) - A054541 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A098761.P10004677791337195358

namespace A098761

/-- `p?[A008578(n+1)-A054541(n+2)]` -/
def P10004677791337195358.Spec : Prop :=
  ∀ n, P10004677791337195358.a n = A098761 (n + 1)

end A098761

/-! ## A098761.P11494222377387504063

`p?[A118534(n+2)-A001223(n+1)]`
-/

namespace A098761.P11494222377387504063
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118534 (n + 2) - A001223 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A098761.P11494222377387504063

namespace A098761

/-- `p?[A118534(n+2)-A001223(n+1)]` -/
def P11494222377387504063.Spec : Prop :=
  ∀ n, P11494222377387504063.a n = A098761 (n + 1)

end A098761

/-! ## A098761.P5719794373923268788

`p?[A001043(n+1)-A000040(n+3)]`
-/

namespace A098761.P5719794373923268788
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001043 (n + 1) - A000040 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A098761.P5719794373923268788

namespace A098761

/-- `p?[A001043(n+1)-A000040(n+3)]` -/
def P5719794373923268788.Spec : Prop :=
  ∀ n, P5719794373923268788.a n = A098761 (n + 1)

end A098761

/-! ## A098761.P15306194681288474519

`p?[A001043(n+2)-A004139(n+2)]`
-/

namespace A098761.P15306194681288474519
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001043 (n + 2) - A004139 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A098761.P15306194681288474519

namespace A098761

/-- `p?[A001043(n+2)-A004139(n+2)]` -/
def P15306194681288474519.Spec : Prop :=
  ∀ n, P15306194681288474519.a n = A098761 (n + 1)

end A098761

/-! ## A098761.P16324336225431311979

`p?[A118534(n+2)-Δ[A000040(n+1)]]`
-/

namespace A098761.P16324336225431311979
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118534 (n + 2) - (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A098761.P16324336225431311979

namespace A098761

/-- `p?[A118534(n+2)-Δ[A000040(n+1)]]` -/
def P16324336225431311979.Spec : Prop :=
  ∀ n, P16324336225431311979.a n = A098761 (n + 1)

end A098761

/-! ## A098761.P18307352732660537988

`p?[A008578(n+1)-(A076368(n+2)-1)]`
-/

namespace A098761.P18307352732660537988
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1) - (A076368 (n + 2) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A098761.P18307352732660537988

namespace A098761

/-- `p?[A008578(n+1)-(A076368(n+2)-1)]` -/
def P18307352732660537988.Spec : Prop :=
  ∀ n, P18307352732660537988.a n = A098761 (n + 1)

end A098761

/-! ## A098761.P4905591977299874964

`p?[2*A001043(n+1)-A034961(n+1)]`
-/

namespace A098761.P4905591977299874964
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A001043 (n + 1) - A034961 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A098761.P4905591977299874964

namespace A098761

/-- `p?[2*A001043(n+1)-A034961(n+1)]` -/
def P4905591977299874964.Spec : Prop :=
  ∀ n, P4905591977299874964.a n = A098761 (n + 1)

end A098761

/-! ## A098761.P10574918041556352726

`p?[2*A000040(n+1)-A093667(n+1)]`
-/

namespace A098761.P10574918041556352726
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000040 (n + 1) - A093667 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A098761.P10574918041556352726

namespace A098761

/-- `p?[2*A000040(n+1)-A093667(n+1)]` -/
def P10574918041556352726.Spec : Prop :=
  ∀ n, P10574918041556352726.a n = A098761 (n + 1)

end A098761

/-! ## A098761.P15772944131208532504

`p?[A000040(n+1)-2*A028334(n+2)]`
-/

namespace A098761.P15772944131208532504
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - 2 * A028334 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A098761.P15772944131208532504

namespace A098761

/-- `p?[A000040(n+1)-2*A028334(n+2)]` -/
def P15772944131208532504.Spec : Prop :=
  ∀ n, P15772944131208532504.a n = A098761 (n + 1)

end A098761

/-! ## A098761.P9285483200167524472

`p?[A008578(n+1)-(Δ[A131733(n+1)]+2)]`
-/

namespace A098761.P9285483200167524472
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131733 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1) - (f2 (n + 1) - f2 n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A098761.P9285483200167524472

namespace A098761

/-- `p?[A008578(n+1)-(Δ[A131733(n+1)]+2)]` -/
def P9285483200167524472.Spec : Prop :=
  ∀ n, P9285483200167524472.a n = A098761 (n + 1)

end A098761

/-! ## A098761.P6519850651183818836

`p?[p?[A000961(n+1)]-A001223(n+2)]`
-/

namespace A098761.P6519850651183818836
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000961 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n) - A001223 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A098761.P6519850651183818836

namespace A098761

/-- `p?[p?[A000961(n+1)]-A001223(n+2)]` -/
def P6519850651183818836.Spec : Prop :=
  ∀ n, P6519850651183818836.a n = A098761 (n + 1)

end A098761

/-! ## A098761.P6256148471788927663

`filter[A096379(n+2), A010051(#)]`
-/

namespace A098761.P6256148471788927663
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096379 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A098761.P6256148471788927663

namespace A098761

/-- `filter[A096379(n+2), A010051(#)]` -/
def P6256148471788927663.Spec : Prop :=
  ∀ n, P6256148471788927663.a n = A098761 (n + 1)

end A098761

/-! ## A098761.P7257696613827300939

`filter[A096379(n+2), A379969(#)]`
-/

namespace A098761.P7257696613827300939
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096379 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A379969 (f1 j).toNat = 1) n)

end

end A098761.P7257696613827300939

namespace A098761

/-- `filter[A096379(n+2), A379969(#)]` -/
def P7257696613827300939.Spec : Prop :=
  ∀ n, P7257696613827300939.a n = A098761 (n + 1)

end A098761

/-!
# A098762: This sequence, the sequence of first differences and the sequence of partial sums, are disjoint; a(0) = 1.

The programs for A098762, there is no canonical definition to state claims against.
-/

/-! ## A098762.P15650982343610780399

`∑[∑[A036037(A196300(2*n+3))]]`
-/

namespace A098762.P15650982343610780399
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036037 (A196300 (2 * n + 3)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A098762.P15650982343610780399

/-! ## A098762.P10937922686997981440

`∑[record[A316733(n+1)%A069924(n+2)]]`
-/

namespace A098762.P10937922686997981440
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A316733 (n + 1)) (A069924 (n + 2))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A098762.P10937922686997981440

/-! ## A098762.P5544953779894249906

`∑[A048766(A016885(A094065(n+1)²))]`
-/

namespace A098762.P5544953779894249906
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048766 (A016885 (A094065 (n + 1) ^ 2).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A098762.P5544953779894249906

/-! ## A098762.P9103341542337144825

`A000196(A212109(n+1))`
-/

namespace A098762.P9103341542337144825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A212109 (n + 1)).toNat

end

end A098762.P9103341542337144825

/-!
# A098763: This sequence, the sequence of differences, sums and products of consecutive terms are four disjoint sequences. a(0) = 2.

The programs for A098763, there is no canonical definition to state claims against.
-/

/-! ## A098763.P8000887131971235434

`A175140(a(n-1))+5` with `a(0)=2, a(1)=3, a(2)=7`
-/

namespace A098763.P8000887131971235434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 3, 7] fun n a =>
  A175140 (a (n - 1)).toNat + 5

end

end A098763.P8000887131971235434

/-! ## A098763.P15851980562815614162

`A246780(a(n-1))+n+1` with `a(0)=2, a(1)=3`
-/

namespace A098763.P15851980562815614162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 3] fun n a =>
  A246780 (a (n - 1)).toNat + (n + 1 : ℤ)

end

end A098763.P15851980562815614162

/-!
# A098764: a(n) = 3p - q where p and q are consecutive primes.

The programs for A098764, the canonical program `A098764.P1450263935949736531` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A098764 has offset 1).

The definition of A098764 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, A062234, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A098764.P13507427161034540147

`A100021(n+1)+3`
-/

namespace A098764.P13507427161034540147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100021 (n + 1) + 3

end

end A098764.P13507427161034540147

namespace A098764

/-- `A100021(n+1)+3` -/
def P13507427161034540147.Spec : Prop :=
  ∀ n, P13507427161034540147.a n = A098764 (n + 1)

end A098764

/-! ## A098764.P1450263935949736531

`A062234(n+1)+A000040(n+1)`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A098764

/-- `A062234(n+1)+A000040(n+1)` -/
def P1450263935949736531.Spec : Prop :=
  ∀ n, P1450263935949736531.a n = A098764 (n + 1)

theorem P1450263935949736531.correct : P1450263935949736531.Spec := by
  intro n
  simp only [A098764, Nat.add_sub_cancel]

end A098764

/-! ## A098764.P2445665035807794120

`A001043(n+1)-2*A001223(n+1)`
-/

namespace A098764.P2445665035807794120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001043 (n + 1) - 2 * A001223 (n + 1)

end

end A098764.P2445665035807794120

namespace A098764

/-- `A001043(n+1)-2*A001223(n+1)` -/
def P2445665035807794120.Spec : Prop :=
  ∀ n, P2445665035807794120.a n = A098764 (n + 1)

end A098764

/-! ## A098764.P7957988124645625699

`A001748(n+1)-A000040(n+2)`
-/

namespace A098764.P7957988124645625699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001748 (n + 1) - A000040 (n + 2)

end

end A098764.P7957988124645625699

namespace A098764

/-- `A001748(n+1)-A000040(n+2)` -/
def P7957988124645625699.Spec : Prop :=
  ∀ n, P7957988124645625699.a n = A098764 (n + 1)

end A098764

/-! ## A098764.P18335879359736801109

`A001747(n+2)-A001223(n+1)`
-/

namespace A098764.P18335879359736801109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001747 (n + 2) - A001223 (n + 1)

end

end A098764.P18335879359736801109

namespace A098764

/-- `A001747(n+2)-A001223(n+1)` -/
def P18335879359736801109.Spec : Prop :=
  ∀ n, P18335879359736801109.a n = A098764 (n + 1)

end A098764

/-! ## A098764.P15662790863885890352

`3*A000040(n+1)-A000040(n+2)`
-/

namespace A098764.P15662790863885890352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A000040 (n + 1) - A000040 (n + 2)

end

end A098764.P15662790863885890352

namespace A098764

/-- `3*A000040(n+1)-A000040(n+2)` -/
def P15662790863885890352.Spec : Prop :=
  ∀ n, P15662790863885890352.a n = A098764 (n + 1)

end A098764

/-! ## A098764.P12295541271520791106

`A062234(n+1)+Δ[A007504(n)]`
-/

namespace A098764.P12295541271520791106
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062234 (n + 1) + (f1 (n + 1) - f1 n)

end

end A098764.P12295541271520791106

namespace A098764

/-- `A062234(n+1)+Δ[A007504(n)]` -/
def P12295541271520791106.Spec : Prop :=
  ∀ n, P12295541271520791106.a n = A098764 (n + 1)

end A098764

/-! ## A098764.P15562834993978465323

`A124115(n+1)+A040976(n+1)`
-/

namespace A098764.P15562834993978465323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124115 (n + 1) + A040976 (n + 1)

end

end A098764.P15562834993978465323

namespace A098764

/-- `A124115(n+1)+A040976(n+1)` -/
def P15562834993978465323.Spec : Prop :=
  ∀ n, P15562834993978465323.a n = A098764 (n + 1)

end A098764

/-! ## A098764.P16878344344154233014

`A107471(n+1)+A065091(n+1)`
-/

namespace A098764.P16878344344154233014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107471 (n + 1) + A065091 (n + 1)

end

end A098764.P16878344344154233014

namespace A098764

/-- `A107471(n+1)+A065091(n+1)` -/
def P16878344344154233014.Spec : Prop :=
  ∀ n, P16878344344154233014.a n = A098764 (n + 1)

end A098764

/-! ## A098764.P299652123764469160

`A001749(n+1)-A001043(n+1)`
-/

namespace A098764.P299652123764469160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001749 (n + 1) - A001043 (n + 1)

end

end A098764.P299652123764469160

namespace A098764

/-- `A001749(n+1)-A001043(n+1)` -/
def P299652123764469160.Spec : Prop :=
  ∀ n, P299652123764469160.a n = A098764 (n + 1)

end A098764

/-! ## A098764.P1766483259429984515

`A001748(n+1)-A065091(n+1)`
-/

namespace A098764.P1766483259429984515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001748 (n + 1) - A065091 (n + 1)

end

end A098764.P1766483259429984515

namespace A098764

/-- `A001748(n+1)-A065091(n+1)` -/
def P1766483259429984515.Spec : Prop :=
  ∀ n, P1766483259429984515.a n = A098764 (n + 1)

end A098764

/-! ## A098764.P11473648120511726723

`A100484(n+1)-A001223(n+1)`
-/

namespace A098764.P11473648120511726723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100484 (n + 1) - A001223 (n + 1)

end

end A098764.P11473648120511726723

namespace A098764

/-- `A100484(n+1)-A001223(n+1)` -/
def P11473648120511726723.Spec : Prop :=
  ∀ n, P11473648120511726723.a n = A098764 (n + 1)

end A098764

/-! ## A098764.P4477246485797494653

`A037167(n+1)%A100484(n+1)`
-/

namespace A098764.P4477246485797494653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A037167 (n + 1)) (A100484 (n + 1))

end

end A098764.P4477246485797494653

namespace A098764

/-- `A037167(n+1)%A100484(n+1)` -/
def P4477246485797494653.Spec : Prop :=
  ∀ n, P4477246485797494653.a n = A098764 (n + 1)

end A098764

/-! ## A098764.P3766095116463838330

`A152530(n+1)%A100484(n+1)`
-/

namespace A098764.P3766095116463838330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A152530 (n + 1)) (A100484 (n + 1))

end

end A098764.P3766095116463838330

namespace A098764

/-- `A152530(n+1)%A100484(n+1)` -/
def P3766095116463838330.Spec : Prop :=
  ∀ n, P3766095116463838330.a n = A098764 (n + 1)

end A098764

/-! ## A098764.P5709259099841207779

`A006093(n+1)+A062234(n+1)+1`
-/

namespace A098764.P5709259099841207779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (n + 1) + (A062234 (n + 1) + 1)

end

end A098764.P5709259099841207779

namespace A098764

/-- `A006093(n+1)+A062234(n+1)+1` -/
def P5709259099841207779.Spec : Prop :=
  ∀ n, P5709259099841207779.a n = A098764 (n + 1)

end A098764

/-! ## A098764.P14846582293916237464

`A072055(n+1)-(A001223(n+1)+1)`
-/

namespace A098764.P14846582293916237464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072055 (n + 1) - (A001223 (n + 1) + 1)

end

end A098764.P14846582293916237464

namespace A098764

/-- `A072055(n+1)-(A001223(n+1)+1)` -/
def P14846582293916237464.Spec : Prop :=
  ∀ n, P14846582293916237464.a n = A098764 (n + 1)

end A098764

/-! ## A098764.P11517368738497024971

`A040976(n+1)+A062234(n+1)+2`
-/

namespace A098764.P11517368738497024971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040976 (n + 1) + (A062234 (n + 1) + 2)

end

end A098764.P11517368738497024971

namespace A098764

/-- `A040976(n+1)+A062234(n+1)+2` -/
def P11517368738497024971.Spec : Prop :=
  ∀ n, P11517368738497024971.a n = A098764 (n + 1)

end A098764

/-! ## A098764.P5643677277449614869

`A134591(n+1)+A147965(n+1)-1`
-/

namespace A098764.P5643677277449614869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134591 (n + 1) + (A147965 (n + 1) - 1)

end

end A098764.P5643677277449614869

namespace A098764

/-- `A134591(n+1)+A147965(n+1)-1` -/
def P5643677277449614869.Spec : Prop :=
  ∀ n, P5643677277449614869.a n = A098764 (n + 1)

end A098764

/-! ## A098764.P16042689322076369928

`A001748(n+1)+2-A048974(n+1)`
-/

namespace A098764.P16042689322076369928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001748 (n + 1) + (2 - A048974 (n + 1))

end

end A098764.P16042689322076369928

namespace A098764

/-- `A001748(n+1)+2-A048974(n+1)` -/
def P16042689322076369928.Spec : Prop :=
  ∀ n, P16042689322076369928.a n = A098764 (n + 1)

end A098764

/-! ## A098764.P7938476911877454918

`A089241(n+1)-(A001223(n+1)+2)`
-/

namespace A098764.P7938476911877454918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089241 (n + 1) - (A001223 (n + 1) + 2)

end

end A098764.P7938476911877454918

namespace A098764

/-- `A089241(n+1)-(A001223(n+1)+2)` -/
def P7938476911877454918.Spec : Prop :=
  ∀ n, P7938476911877454918.a n = A098764 (n + 1)

end A098764

/-!
# A098766: Lexicographically earliest increasing sequence with property that in the concatenation of its terms every pair of consecutive digits differs by 1.

The programs for A098766, there is no canonical definition to state claims against.
-/

/-! ## A098766.P16272621614799449747

`record[A228326(A064067(n))]`
-/

namespace A098766.P16272621614799449747
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228326 (A064067 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A098766.P16272621614799449747

/-! ## A098766.P4617709070651330164

`record[A228326(A091987(n))]`
-/

namespace A098766.P4617709070651330164
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228326 (A091987 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A098766.P4617709070651330164

/-! ## A098766.P7306050901334900875

`record[A228326(A224702(n))]`
-/

namespace A098766.P7306050901334900875
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228326 (A224702 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A098766.P7306050901334900875

/-! ## A098766.P10166970697174678639

`record[A228326(A360535(n))]`
-/

namespace A098766.P10166970697174678639
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228326 (A360535 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A098766.P10166970697174678639

/-! ## A098766.P1712915996608173039

`record[A228326(record[A233292(n)])]`
-/

namespace A098766.P1712915996608173039
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233292 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228326 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A098766.P1712915996608173039

/-!
# A098767: Deficient numbers whose reversal is also a deficient number.

The programs for A098767, there is no canonical definition to state claims against.
-/

/-! ## A098767.P8910804069540419004

`lt[A331928(n), A001222(A201072(n+1))]`
-/

namespace A098767.P8910804069540419004
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331928 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A201072 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A098767.P8910804069540419004

/-! ## A098767.P2524720174716176643

`eq[A033630(n), A134744(A299359(n+1))]`
-/

namespace A098767.P2524720174716176643
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033630 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134744 (A299359 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A098767.P2524720174716176643

/-! ## A098767.P815948195922893956

`lt[A000069(A211110(2*n)), A000695(n+1)]`
-/

namespace A098767.P815948195922893956
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000069 (A211110 (2 * n)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000695 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A098767.P815948195922893956

/-! ## A098767.P634690109847552421

`lt[A029494(A217668(n)), A000070(n)]`
-/

namespace A098767.P634690109847552421
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029494 (A217668 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000070 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A098767.P634690109847552421

/-! ## A098767.P4967531496642067763

`lt[A351876(A217668(n)), A303234(n+1)]`
-/

namespace A098767.P4967531496642067763
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351876 (A217668 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303234 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A098767.P4967531496642067763

/-!
# A098770: Abundant numbers whose reversal is a deficient number.

The programs for A098770, there is no canonical definition to state claims against.
-/

/-! ## A098770.P9986206919346193104

`A005101(lt[A000700(n), A131800(n)])`
-/

namespace A098770.P9986206919346193104
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000700 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131800 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005101 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A098770.P9986206919346193104

/-! ## A098770.P8080008007811426688

`A005101(lt[A002264(n), A326031(2*n)])`
-/

namespace A098770.P8080008007811426688
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326031 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005101 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A098770.P8080008007811426688

/-! ## A098770.P14380736832898205769

`A005101(A302496(n+1)%A358888(n+1))`
-/

namespace A098770.P14380736832898205769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005101 (Int.tmod (A302496 (n + 1)) (A358888 (n + 1))).toNat

end

end A098770.P14380736832898205769

/-! ## A098770.P12050483888957210189

`A005101(A078135(n+1)%A078135(n+3))`
-/

namespace A098770.P12050483888957210189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005101 (Int.tmod (A078135 (n + 1)) (A078135 (n + 3))).toNat

end

end A098770.P12050483888957210189

/-! ## A098770.P2858125365690123320

`A005101(eq[A005614(2*n+1), A271954(n)])`
-/

namespace A098770.P2858125365690123320
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005614 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271954 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005101 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A098770.P2858125365690123320

/-!
# A098771: Numbers n such that sigma(n)=sigma(d_1)*sigma(d_2)*...*sigma(d_k) where d_1 d_2 ... d_k is the decimal expansion of n.

The programs for A098771, there is no canonical definition to state claims against.
-/

/-! ## A098771.P17826755420452994827

`A179892(A256005(n+1))`
-/

namespace A098771.P17826755420452994827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179892 (A256005 (n + 1)).toNat

end

end A098771.P17826755420452994827

/-! ## A098771.P7075621852810986893

`A110029(A302502(n+2))`
-/

namespace A098771.P7075621852810986893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110029 (A302502 (n + 2)).toNat

end

end A098771.P7075621852810986893

/-! ## A098771.P4310457015092564011

`record[lcm(A060135(n), A199344(n))]`
-/

namespace A098771.P4310457015092564011
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A060135 n) (A199344 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A098771.P4310457015092564011

/-! ## A098771.P8878596127526553940

`A143953(A270925(n+1))+n`
-/

namespace A098771.P8878596127526553940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143953 (A270925 (n + 1)).toNat + (n : ℤ)

end

end A098771.P8878596127526553940

/-! ## A098771.P2356931346495125914

`A301801(A301801(A067581(A342441(A276512(n+1)))))`
-/

namespace A098771.P2356931346495125914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301801 (A301801 (A067581 (A342441 (A276512 (n + 1)).toNat).toNat).toNat).toNat

end

end A098771.P2356931346495125914

/-!
# A098772: a(n) = Sum_{k=0..n} binomial(2*n,2*k)^2.

The programs for A098772, the canonical program `A098772.P14937445425362210375` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A098772 has offset 0).

The definition of A098772 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A098772.P14937445425362210375

`(C(4*n, 2*n)+(-1)^n*C(2*n, n))/2`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A098772

/-- `(C(4*n, 2*n)+(-1)^n*C(2*n, n))/2` -/
def P14937445425362210375.Spec : Prop :=
  ∀ n, P14937445425362210375.a n = (A098772 n : ℚ)

end A098772

/-! ## A098772.P6947566971735198892

`A119358(2*n)`
-/

namespace A098772.P6947566971735198892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119358 (2 * n)

end

end A098772.P6947566971735198892

namespace A098772

/-- `A119358(2*n)` -/
def P6947566971735198892.Spec : Prop :=
  ∀ n, P6947566971735198892.a n = A098772 n

end A098772

/-! ## A098772.P15601579713414928364

`record[A119358((n-1)^(n%2))]`
-/

namespace A098772.P15601579713414928364
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119358 (((n : ℤ) - 1) ^ (n % 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A098772.P15601579713414928364

namespace A098772

/-- `record[A119358((n-1)^(n%2))]` -/
def P15601579713414928364.Spec : Prop :=
  ∀ n, P15601579713414928364.a n = A098772 n

end A098772

/-! ## A098772.P7145608161870836885

`record[A119358(A014681(n))]`
-/

namespace A098772.P7145608161870836885
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119358 (A014681 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A098772.P7145608161870836885

namespace A098772

/-- `record[A119358(A014681(n))]` -/
def P7145608161870836885.Spec : Prop :=
  ∀ n, P7145608161870836885.a n = A098772 n

end A098772

/-! ## A098772.P16714422788981204101

`record[A119358(A029578(n))]`
-/

namespace A098772.P16714422788981204101
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119358 (A029578 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A098772.P16714422788981204101

namespace A098772

/-- `record[A119358(A029578(n))]` -/
def P16714422788981204101.Spec : Prop :=
  ∀ n, P16714422788981204101.a n = A098772 n

end A098772

/-! ## A098772.P9039845497321120757

`record[A119358(A083220(n))]`
-/

namespace A098772.P9039845497321120757
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119358 (A083220 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A098772.P9039845497321120757

namespace A098772

/-- `record[A119358(A083220(n))]` -/
def P9039845497321120757.Spec : Prop :=
  ∀ n, P9039845497321120757.a n = A098772 n

end A098772

/-! ## A098772.P11760691038091721976

`A001448(n)-A110145(2*n)`
-/

namespace A098772.P11760691038091721976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001448 n - A110145 (2 * n)

end

end A098772.P11760691038091721976

namespace A098772

/-- `A001448(n)-A110145(2*n)` -/
def P11760691038091721976.Spec : Prop :=
  ∀ n, P11760691038091721976.a n = A098772 n

end A098772

/-! ## A098772.P16333038973284827934

`record[A119358(n-A007814(n+1))]`
-/

namespace A098772.P16333038973284827934
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119358 ((n : ℤ) - A007814 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A098772.P16333038973284827934

namespace A098772

/-- `record[A119358(n-A007814(n+1))]` -/
def P16333038973284827934.Spec : Prop :=
  ∀ n, P16333038973284827934.a n = A098772 n

end A098772

/-! ## A098772.P2489683837180980229

`record[gcd(A007814(n+1), A119358(n))]`
-/

namespace A098772.P2489683837180980229
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A007814 (n + 1)) (A119358 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A098772.P2489683837180980229

namespace A098772

/-- `record[gcd(A007814(n+1), A119358(n))]` -/
def P2489683837180980229.Spec : Prop :=
  ∀ n, (P2489683837180980229.a n : ℤ) = A098772 n

end A098772

/-! ## A098772.P3044793745525673466

`A000984(2*n)-A110145(2*n)`
-/

namespace A098772.P3044793745525673466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000984 (2 * n) - A110145 (2 * n)

end

end A098772.P3044793745525673466

namespace A098772

/-- `A000984(2*n)-A110145(2*n)` -/
def P3044793745525673466.Spec : Prop :=
  ∀ n, P3044793745525673466.a n = A098772 n

end A098772

/-!
# A098773: p*2^p + 1 where p is prime.

The programs for A098773, there is no canonical definition to state claims against.
-/

/-! ## A098773.P14178999348806177000

`A100042(n+1)+1`
-/

namespace A098773.P14178999348806177000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100042 (n + 1) + 1

end

end A098773.P14178999348806177000

/-! ## A098773.P18063786637969754638

`A099051(n+1)+2`
-/

namespace A098773.P18063786637969754638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099051 (n + 1) + 2

end

end A098773.P18063786637969754638

/-! ## A098773.P3483236085742905105

`2*A299795(n+1)+1`
-/

namespace A098773.P3483236085742905105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A299795 (n + 1) + 1

end

end A098773.P3483236085742905105

/-! ## A098773.P9019849846554746892

`∑{p}[A000040(n+1), #*2^#]+1`
-/

namespace A098773.P9019849846554746892
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p * 2 ^ p + 1

end

end A098773.P9019849846554746892

/-! ## A098773.P5124397340183622370

`record[(n+2)*2^A006530(n+2)]+1`
-/

namespace A098773.P5124397340183622370
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℚ) * (2 : ℚ) ^ (A006530 (n + 2) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 1

end

end A098773.P5124397340183622370

/-! ## A098773.P11689933225666111180

`record[(n+2)*2^A020639(n+2)]+1`
-/

namespace A098773.P11689933225666111180
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℚ) * (2 : ℚ) ^ (A020639 (n + 2) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 1

end

end A098773.P11689933225666111180

/-! ## A098773.P8376651879831003034

`A002064(A000040(n+1))`
-/

namespace A098773.P8376651879831003034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002064 (A000040 (n + 1)).toNat

end

end A098773.P8376651879831003034

/-! ## A098773.P5918143281910301436

`A002064(A008578(n+2))`
-/

namespace A098773.P5918143281910301436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002064 (A008578 (n + 2)).toNat

end

end A098773.P5918143281910301436

/-! ## A098773.P7716998113297405527

`A002064(record[A000010(n+1)+1])`
-/

namespace A098773.P7716998113297405527
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002064 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A098773.P7716998113297405527

/-! ## A098773.P1719223338778682026

`A000040(n+1)*A034785(n+1)+1`
-/

namespace A098773.P1719223338778682026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * A034785 (n + 1) + 1

end

end A098773.P1719223338778682026

/-!
# A098774: Least k such that (k*Mersenne-prime(n))^2 + 1 is prime.

The programs for A098774, there is no canonical definition to state claims against.
-/

/-! ## A098774.P7693517030393810278

`2*A132192(n+1)`
-/

namespace A098774.P7693517030393810278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A132192 (n + 1)

end

end A098774.P7693517030393810278

/-! ## A098774.P11390999555080434254

`A004277(A132192(n+1))`
-/

namespace A098774.P11390999555080434254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A132192 (n + 1)).toNat

end

end A098774.P11390999555080434254

/-! ## A098774.P8038935103358826164

`A004275(A132192(n+1)+1)`
-/

namespace A098774.P8038935103358826164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (A132192 (n + 1) + 1).toNat

end

end A098774.P8038935103358826164

/-! ## A098774.P6238727512446475937

`A020742(A132192(n+1)+1)-9`
-/

namespace A098774.P6238727512446475937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020742 (A132192 (n + 1) + 1).toNat - 9

end

end A098774.P6238727512446475937

/-! ## A098774.P8982682143244799856

`A132192(A000027(n+1))+A132192(n+1)`
-/

namespace A098774.P8982682143244799856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132192 (A000027 (n + 1)).toNat + A132192 (n + 1)

end

end A098774.P8982682143244799856

/-!
# A098775: Palindromic abundant numbers.

The programs for A098775, there is no canonical definition to state claims against.
-/

/-! ## A098775.P11488824777817948911

`∩[A002113(n+1), A098769(n+1)]`
-/

namespace A098775.P11488824777817948911
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002113 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098769 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A098775.P11488824777817948911

/-! ## A098775.P12930621866758128925

`∩[A032350(n+1), A098769(n+1)]`
-/

namespace A098775.P12930621866758128925
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032350 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098769 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A098775.P12930621866758128925

/-! ## A098775.P1791787793609615115

`∩[A083158(n+1), A098769(n+1)]`
-/

namespace A098775.P1791787793609615115
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083158 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098769 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A098775.P1791787793609615115

/-! ## A098775.P15980382389486891808

`∩[A098769(n+1), A325322(n+1)]`
-/

namespace A098775.P15980382389486891808
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098769 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325322 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A098775.P15980382389486891808

/-! ## A098775.P1576162544907258893

`filter[A062697(n+1), A294936(#)]`
-/

namespace A098775.P1576162544907258893
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062697 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A294936 (f1 j).toNat = 1) n)

end

end A098775.P1576162544907258893

/-! ## A098775.P16011384739631983953

`filter[A062697(n+1), A378550(#)]`
-/

namespace A098775.P16011384739631983953
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062697 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A378550 (f1 j).toNat = 1) n)

end

end A098775.P16011384739631983953

/-! ## A098775.P11481033742648150932

`filter[A325322(n+1), A294936(#)]`
-/

namespace A098775.P11481033742648150932
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325322 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A294936 (f1 j).toNat = 1) n)

end

end A098775.P11481033742648150932

/-! ## A098775.P4071497857274023275

`filter[A325322(n+3), A378550(#)]`
-/

namespace A098775.P4071497857274023275
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325322 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A378550 (f1 j).toNat = 1) n)

end

end A098775.P4071497857274023275

/-!
# A098780: First n numbers in binary representation concatenated in reverse order.

The programs for A098780, the canonical program `A098780.P12432930434744463738` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A098780 has offset 1).

The definition of A098780 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A098780.P4782662224119938802

`(n+1)*2^(1+floor(log2(a(n-1))))+a(n-1)` with `a(0)=1`
-/

namespace A098780.P4782662224119938802
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  (n + 1) * 2 ^ (1 + Nat.log 2 (a (n - 1))) + a (n - 1)

end

end A098780.P4782662224119938802

namespace A098780

/-- `(n+1)*2^(1+floor(log2(a(n-1))))+a(n-1)` -/
def P4782662224119938802.Spec : Prop :=
  ∀ n, (P4782662224119938802.a n : ℤ) = A098780 (n + 1)

end A098780

/-! ## A098780.P12432930434744463738

`(n+1)*A000079(A070939(a(n-1)))+a(n-1)` with `a(0)=1`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A098780

/-- `(n+1)*A000079(A070939(a(n-1)))+a(n-1)` -/
def P12432930434744463738.Spec : Prop :=
  ∀ n, P12432930434744463738.a n = A098780 (n + 1)

theorem P12432930434744463738.correct : P12432930434744463738.Spec := by
  intro n
  simp only [A098780, Nat.add_sub_cancel]

end A098780

/-! ## A098780.P4581715811506407543

`∑[(n+1)*∏[A062383(n)]]`
-/

namespace A098780.P4581715811506407543
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062383 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (∏ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A098780.P4581715811506407543

namespace A098780

/-- `∑[(n+1)*∏[A062383(n)]]` -/
def P4581715811506407543.Spec : Prop :=
  ∀ n, P4581715811506407543.a n = A098780 (n + 1)

end A098780

/-! ## A098780.P2010618495314542264

`∑[(n+1)*∏[A003817(n)+1]]`
-/

namespace A098780.P2010618495314542264
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003817 n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (∏ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A098780.P2010618495314542264

namespace A098780

/-- `∑[(n+1)*∏[A003817(n)+1]]` -/
def P2010618495314542264.Spec : Prop :=
  ∀ n, P2010618495314542264.a n = A098780 (n + 1)

end A098780

/-! ## A098780.P13470720258929744336

`∑[(n+1)*A011782(A083652(n))]`
-/

namespace A098780.P13470720258929744336
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A011782 (A083652 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A098780.P13470720258929744336

namespace A098780

/-- `∑[(n+1)*A011782(A083652(n))]` -/
def P13470720258929744336.Spec : Prop :=
  ∀ n, P13470720258929744336.a n = A098780 (n + 1)

end A098780

/-! ## A098780.P8185633479812546501

`∑[record[A000079(n)*A120385(n+1)]]`
-/

namespace A098780.P8185633479812546501
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n * A120385 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A098780.P8185633479812546501

namespace A098780

/-- `∑[record[A000079(n)*A120385(n+1)]]` -/
def P8185633479812546501.Spec : Prop :=
  ∀ n, P8185633479812546501.a n = A098780 (n + 1)

end A098780

/-! ## A098780.P7683431254366592487

`∑[(n+1)*A000079(A001855(n+1))]`
-/

namespace A098780.P7683431254366592487
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A000079 (A001855 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A098780.P7683431254366592487

namespace A098780

/-- `∑[(n+1)*A000079(A001855(n+1))]` -/
def P7683431254366592487.Spec : Prop :=
  ∀ n, P7683431254366592487.a n = A098780 (n + 1)

end A098780

/-!
# A098781: Smallest number not occurring earlier fitting the repeating pattern "11223344556677889900".

The programs for A098781, there is no canonical definition to state claims against.
-/

/-! ## A098781.P8105265747031119672

`A335043(A351870(n)+A127757(n+1))`
-/

namespace A098781.P8105265747031119672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335043 (A351870 n + A127757 (n + 1)).toNat

end

end A098781.P8105265747031119672

/-! ## A098781.P12399561076794548238

`A335043(lt[A106747(n), A003131(3*n+1)])`
-/

namespace A098781.P12399561076794548238
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106747 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003131 (3 * n + 1 + 54)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335043 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A098781.P12399561076794548238

/-!
# A098784: Smallest number not occurring earlier such that the concatenation of the numbers has the property that the first two digits sum to 10, the next two to 10, the next two to 10, the next two to 10, etc.

The programs for A098784, there is no canonical definition to state claims against.
-/

/-! ## A098784.P2638658655848981844

`A004086(A252001(n+1)^A213217(n))`
-/

namespace A098784.P2638658655848981844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 (SequenceMachineLib.roundAway ((A252001 (n + 1) : ℚ) ^ (A213217 n : ℤ))).toNat

end

end A098784.P2638658655848981844

/-! ## A098784.P16588359173074914767

`A004186(A252001(n+1)^A213217(n))`
-/

namespace A098784.P16588359173074914767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004186 (SequenceMachineLib.roundAway ((A252001 (n + 1) : ℚ) ^ (A213217 n : ℤ))).toNat

end

end A098784.P16588359173074914767

/-! ## A098784.P18033887728216090455

`A084011(A252001(n+1)^A213217(n))`
-/

namespace A098784.P18033887728216090455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084011 (SequenceMachineLib.roundAway ((A252001 (n + 1) : ℚ) ^ (A213217 n : ℤ))).toNat

end

end A098784.P18033887728216090455

/-! ## A098784.P2451507028379432929

`A004086(A252001(n+1)^A160941(n+1))`
-/

namespace A098784.P2451507028379432929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 (SequenceMachineLib.roundAway ((A252001 (n + 1) : ℚ) ^ (A160941 (n + 1) : ℤ))).toNat

end

end A098784.P2451507028379432929

/-! ## A098784.P10478134285790132288

`A004186(A252001(n+1)^A160941(n+1))`
-/

namespace A098784.P10478134285790132288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004186 (SequenceMachineLib.roundAway ((A252001 (n + 1) : ℚ) ^ (A160941 (n + 1) : ℤ))).toNat

end

end A098784.P10478134285790132288

/-!
# A098785: Both character strings a(n) and a(n+1) share the substring "n".

The programs for A098785, there is no canonical definition to state claims against.
-/

/-! ## A098785.P13036744401257843273

`eq[A004428(n), A347470(A028904(n))]`
-/

namespace A098785.P13036744401257843273
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004428 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347470 (A028904 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A098785.P13036744401257843273

/-! ## A098785.P12222878488897421862

`eq[A054054(n), A347470(A028904(n))]`
-/

namespace A098785.P12222878488897421862
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054054 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347470 (A028904 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A098785.P12222878488897421862

/-! ## A098785.P8339779719978086104

`A328447(eq[n, n*A076313(n)])`
-/

namespace A098785.P8339779719978086104
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A076313 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328447 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A098785.P8339779719978086104

/-! ## A098785.P4970173263160038424

`A086068(or(A011782(n), A054842(n)))`
-/

namespace A098785.P4970173263160038424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086068 (Int.lor (A011782 n) (A054842 n)).toNat

end

end A098785.P4970173263160038424

/-! ## A098785.P3345715494656803874

`A328447(eq[A057427(n), A076313(n)])`
-/

namespace A098785.P3345715494656803874
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076313 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328447 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A098785.P3345715494656803874

/-!
# A098786: Weight distribution of [90,45,18] binary extended quadratic-residue (or QR) code.

The programs for A098786, there is no canonical definition to state claims against.
-/

/-! ## A098786.P1883431711776465159

`A091536(2*n)+A091536(A267458(2*n))`
-/

namespace A098786.P1883431711776465159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091536 (2 * n) + A091536 (A267458 (2 * n)).toNat

end

end A098786.P1883431711776465159

/-!
# A098788: Stable Poincaré series [or Poincare series] for Lie group of type A (i.e., the variety of complex nonsingular k X k matrices with distinct eigenvalues).

The programs for A098788, there is no canonical definition to state claims against.
-/

/-! ## A098788.P15457716671585971266

`or(A002266(n), A172471(A217616(n)))`
-/

namespace A098788.P15457716671585971266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A002266 n) (A172471 (A217616 n).toNat)

end

end A098788.P15457716671585971266

/-! ## A098788.P16610347157330595614

`or(A172471(A217616(n)), A247321(n))`
-/

namespace A098788.P16610347157330595614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A172471 (A217616 n).toNat) (A247321 n)

end

end A098788.P16610347157330595614

/-! ## A098788.P17342877554214985086

`or(A172471(A217616(n)), A325954(n))`
-/

namespace A098788.P17342877554214985086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A172471 (A217616 n).toNat) (A325954 n)

end

end A098788.P17342877554214985086

/-! ## A098788.P6686098205648298855

`A172471(or(2*A172471(n), A217616(n)))`
-/

namespace A098788.P6686098205648298855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172471 (Int.lor (2 * A172471 n) (A217616 n)).toNat

end

end A098788.P6686098205648298855

/-! ## A098788.P6082025926936400196

`A172471(A217616(n)+n*A002266(n))`
-/

namespace A098788.P6082025926936400196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172471 (A217616 n + (n : ℤ) * A002266 n).toNat

end

end A098788.P6082025926936400196

/-!
# A098790: a(n) = 2*a(n-1) + a(n-2) + 1, a(0) = 1, a(1) = 2.

The programs for A098790, the canonical program `A098790.P1980326544701463307` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A098790 has offset 0).

The definition of A098790 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*a(n-1)+a(n-2)+1` (program `A098790.P1980326544701463307`, by `A098790.P1980326544701463307.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A098790.P1980326544701463307

`2*a(n-1)+a(n-2)+1` with `a(0)=1, a(1)=2`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A098790

/-- `2*a(n-1)+a(n-2)+1` -/
def P1980326544701463307.Spec : Prop :=
  ∀ n, (P1980326544701463307.a n : ℤ) = A098790 n

theorem P1980326544701463307.correct : P1980326544701463307.Spec := by
  intro n
  simp only [A098790]

end A098790

/-! ## A098790.P3247937896822524364

`ogf((1-x+x^2)/(1-3x+x^2+x^3))`
-/

namespace A098790.P3247937896822524364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -1, 1] [1, -3, 1, 1] n

end

end A098790.P3247937896822524364

namespace A098790

/-- `ogf((1-x+x^2)/(1-3x+x^2+x^3))` -/
def P3247937896822524364.Spec : Prop :=
  ∀ n, P3247937896822524364.a n = A098790 n

end A098790

/-! ## A098790.P9698233666083996090

`3-(2*(1-a(n-1))-a(n-2))` with `a(0)=1, a(1)=2`
-/

namespace A098790.P9698233666083996090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  3 - (2 * (1 - a (n - 1)) - a (n - 2))

end

end A098790.P9698233666083996090

namespace A098790

/-- `3-(2*(1-a(n-1))-a(n-2))` -/
def P9698233666083996090.Spec : Prop :=
  ∀ n, P9698233666083996090.a n = A098790 n

end A098790

/-! ## A098790.P13914866154468525838

`a(n-1)+1+a(n-1)+a(n-2)` with `a(0)=1, a(1)=2`
-/

namespace A098790.P13914866154468525838
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (n - 1) + 1 + (a (n - 1) + a (n - 2))

end

end A098790.P13914866154468525838

namespace A098790

/-- `a(n-1)+1+a(n-1)+a(n-2)` -/
def P13914866154468525838.Spec : Prop :=
  ∀ n, (P13914866154468525838.a n : ℤ) = A098790 n

theorem P13914866154468525838.correct : P13914866154468525838.Spec := by
  intro n
  simp only [A098790, Nat.add_sub_cancel, A098790.P13914866154468525838.a, A098790.P1980326544701463307.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A098790

/-! ## A098790.P12849825502371875250

`A353580(n+1)-1`
-/

namespace A098790.P12849825502371875250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353580 (n + 1) - 1

end

end A098790.P12849825502371875250

namespace A098790

/-- `A353580(n+1)-1` -/
def P12849825502371875250.Spec : Prop :=
  ∀ n, P12849825502371875250.a n = A098790 n

end A098790

/-! ## A098790.P12026136515673532982

`∑[A266504(2*n)]-1`
-/

namespace A098790.P12026136515673532982
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266504 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A098790.P12026136515673532982

namespace A098790

/-- `∑[A266504(2*n)]-1` -/
def P12026136515673532982.Spec : Prop :=
  ∀ n, P12026136515673532982.a n = A098790 n

end A098790

/-! ## A098790.P13276229422724526404

`A048654(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A098790.P13276229422724526404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A048654 (n - 1) + a (n - 1)

end

end A098790.P13276229422724526404

namespace A098790

/-- `A048654(n-1)+a(n-1)` -/
def P13276229422724526404.Spec : Prop :=
  ∀ n, P13276229422724526404.a n = A098790 n

end A098790

/-! ## A098790.P7501247896786765994

`∑[A000129(n)]+round((sqrt(2)+1)^n/2)`
-/

namespace A098790.P7501247896786765994
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000129 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + SequenceMachineLib.roundAway ((Real.sqrt (2 : ℝ) + 1) ^ n / 2)

end

end A098790.P7501247896786765994

namespace A098790

/-- `∑[A000129(n)]+round((sqrt(2)+1)^n/2)` -/
def P7501247896786765994.Spec : Prop :=
  ∀ n, P7501247896786765994.a n = A098790 n

end A098790

/-! ## A098790.P11876109339799416192

`A293004(n)+A024537(n)`
-/

namespace A098790.P11876109339799416192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293004 n + A024537 n

end

end A098790.P11876109339799416192

namespace A098790

/-- `A293004(n)+A024537(n)` -/
def P11876109339799416192.Spec : Prop :=
  ∀ n, P11876109339799416192.a n = A098790 n

end A098790

/-! ## A098790.P12793571460988515886

`A375726(n)-A000035(n)`
-/

namespace A098790.P12793571460988515886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375726 n - A000035 n

end

end A098790.P12793571460988515886

namespace A098790

/-- `A375726(n)-A000035(n)` -/
def P12793571460988515886.Spec : Prop :=
  ∀ n, P12793571460988515886.a n = A098790 n

end A098790

/-! ## A098790.P9064972822358480945

`A001333(n)+∑[A000129(n)]`
-/

namespace A098790.P9064972822358480945
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000129 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001333 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A098790.P9064972822358480945

namespace A098790

/-- `A001333(n)+∑[A000129(n)]` -/
def P9064972822358480945.Spec : Prop :=
  ∀ n, P9064972822358480945.a n = A098790 n

end A098790

/-! ## A098790.P4037529015298272756

`∑[A002203(n)-A215928(n)]`
-/

namespace A098790.P4037529015298272756
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002203 n - A215928 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A098790.P4037529015298272756

namespace A098790

/-- `∑[A002203(n)-A215928(n)]` -/
def P4037529015298272756.Spec : Prop :=
  ∀ n, P4037529015298272756.a n = A098790 n

end A098790

/-! ## A098790.P12884494458929071407

`A033539(n+1)+A000129(n)`
-/

namespace A098790.P12884494458929071407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033539 (n + 1) + A000129 n

end

end A098790.P12884494458929071407

namespace A098790

/-- `A033539(n+1)+A000129(n)` -/
def P12884494458929071407.Spec : Prop :=
  ∀ n, P12884494458929071407.a n = A098790 n

end A098790

/-! ## A098790.P14685768338628636672

`A293004(n)+A171842(n+1)`
-/

namespace A098790.P14685768338628636672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293004 n + A171842 (n + 1)

end

end A098790.P14685768338628636672

namespace A098790

/-- `A293004(n)+A171842(n+1)` -/
def P14685768338628636672.Spec : Prop :=
  ∀ n, P14685768338628636672.a n = A098790 n

end A098790

/-! ## A098790.P4430263369582002723

`A001333(n)+A024537(n)-1`
-/

namespace A098790.P4430263369582002723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001333 n + (A024537 n - 1)

end

end A098790.P4430263369582002723

namespace A098790

/-- `A001333(n)+A024537(n)-1` -/
def P4430263369582002723.Spec : Prop :=
  ∀ n, P4430263369582002723.a n = A098790 n

end A098790

/-! ## A098790.P8861137328159866453

`A052937(n)+A171842(n)-2`
-/

namespace A098790.P8861137328159866453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052937 n + (A171842 n - 2)

end

end A098790.P8861137328159866453

namespace A098790

/-- `A052937(n)+A171842(n)-2` -/
def P8861137328159866453.Spec : Prop :=
  ∀ n, P8861137328159866453.a n = A098790 n

end A098790

/-! ## A098790.P8187858355279924379

`A097075(n)+2*A105635(n)`
-/

namespace A098790.P8187858355279924379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097075 n + 2 * A105635 n

end

end A098790.P8187858355279924379

namespace A098790

/-- `A097075(n)+2*A105635(n)` -/
def P8187858355279924379.Spec : Prop :=
  ∀ n, P8187858355279924379.a n = A098790 n

end A098790

/-! ## A098790.P14405473027030165770

`A001333(n)-∑[A176981(n+1)]`
-/

namespace A098790.P14405473027030165770
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176981 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001333 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A098790.P14405473027030165770

namespace A098790

/-- `A001333(n)-∑[A176981(n+1)]` -/
def P14405473027030165770.Spec : Prop :=
  ∀ n, P14405473027030165770.a n = A098790 n

end A098790

/-! ## A098790.P5788015948398700564

`A001333(n)+∑[A215928(n)]-1`
-/

namespace A098790.P5788015948398700564
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215928 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001333 n + (∑ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A098790.P5788015948398700564

namespace A098790

/-- `A001333(n)+∑[A215928(n)]-1` -/
def P5788015948398700564.Spec : Prop :=
  ∀ n, P5788015948398700564.a n = A098790 n

end A098790

/-! ## A098790.P4052187730722741199

`∑[A002203(n)-A000129(n)]-1`
-/

namespace A098790.P4052187730722741199
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002203 n - A000129 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A098790.P4052187730722741199

namespace A098790

/-- `∑[A002203(n)-A000129(n)]-1` -/
def P4052187730722741199.Spec : Prop :=
  ∀ n, P4052187730722741199.a n = A098790 n

end A098790

/-!
# A098792: a(n) = A056188(n)/n.

The programs for A098792, there is no canonical definition to state claims against.
-/

/-! ## A098792.P2018643706529340293

`A056188(n+1)/(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A098792.P2018643706529340293
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A056188 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A098792.P2018643706529340293

/-! ## A098792.P14926668267380521193

`(2^(n+1)-A056189(n+1))/(n+1)`
-/

namespace A098792.P14926668267380521193
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((2 ^ (n + 1) : ℤ) - A056189 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A098792.P14926668267380521193

/-! ## A098792.P4637227381971119688

`and(-A056189(n+1), A095121(n))/(n+1)`
-/

namespace A098792.P4637227381971119688
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.land (-A056189 (n + 1)) (A095121 n) : ℚ) / (n + 1 : ℚ)

end

end A098792.P4637227381971119688

/-! ## A098792.P11462399997373757203

`and(-A056189(n+1), A126646(n))/(n+1)`
-/

namespace A098792.P11462399997373757203
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.land (-A056189 (n + 1)) (A126646 n) : ℚ) / (n + 1 : ℚ)

end

end A098792.P11462399997373757203

/-! ## A098792.P12890073926288851579

`(A048578(n)-(A056189(n+1)+1))/(n+1)`
-/

namespace A098792.P12890073926288851579
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A048578 n - (A056189 (n + 1) + 1) : ℚ) / (n + 1 : ℚ)

end

end A098792.P12890073926288851579

/-!
# A098795: The two digits touching the first comma have as absolute difference 0. The next such difference is 1. The next one is 2. Then 3, 4, 5... etc. When we reach 9 the differences start a new cycle: 0, 1, 2, 3... etc. Among many such possible sequences, this is the slowest increasing one starting with "1".

The programs for A098795, there is no canonical definition to state claims against.
-/

/-! ## A098795.P3321008457469331008

`A073731(a(n-2))+10` with `a(0)=1, a(1)=10`
-/

namespace A098795.P3321008457469331008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 10] fun n a =>
  A073731 ((a (n - 2)).toNat + 10) + 10

end

end A098795.P3321008457469331008

/-! ## A098795.P16749387288937653877

`A276137(A329410(n+2))`
-/

namespace A098795.P16749387288937653877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276137 (A329410 (n + 2)).toNat

end

end A098795.P16749387288937653877

/-!
# A098796: a(n) = (Catalan(P_n-1)+1)/P_n where P_n is the n-th prime and Catalan(k) is the Catalan number binomial(2k, k)/(k+1).

The programs for A098796, there is no canonical definition to state claims against.
-/

/-! ## A098796.P4024355040220188752

`A106520(p?[xor(1, n)])+1`
-/

namespace A098796.P4024355040220188752
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106520 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)) + 1

end

end A098796.P4024355040220188752

/-! ## A098796.P9883069972617384571

`A106519(A000040(n+1))`
-/

namespace A098796.P9883069972617384571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106519 (A000040 (n + 1)).toNat

end

end A098796.P9883069972617384571

/-! ## A098796.P131612413649512712

`A106519(A006005(n+1))`
-/

namespace A098796.P131612413649512712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106519 (A006005 (n + 1)).toNat

end

end A098796.P131612413649512712

/-! ## A098796.P9420601813085807198

`A106519(A049551(n+1))`
-/

namespace A098796.P9420601813085807198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106519 (A049551 (n + 1)).toNat

end

end A098796.P9420601813085807198

/-! ## A098796.P16494678037978992747

`A106519(A100484(n+1)/2)`
-/

namespace A098796.P16494678037978992747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106519 (SequenceMachineLib.roundAway ((A100484 (n + 1) : ℚ) / 2)).toNat

end

end A098796.P16494678037978992747

/-!
# A098797: Numbers k (with no zero digits) with property that k raised to the product of its digits plus the sum of its digits is prime.

The programs for A098797, there is no canonical definition to state claims against.
-/

/-! ## A098797.P16348802149561905613

`A018420(∑[and(1, n)+1])`
-/

namespace A098797.P16348802149561905613
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018420 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A098797.P16348802149561905613

/-!
# A098798: a(n) = Sum_{1

The programs for A098798, the canonical program `A098798.P14244074542585348825` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A098798 has offset 1).

The definition of A098798 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006218, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A098798.P14244074542585348825

`A006218(n+1)-A000203(n+1)`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A098798

/-- `A006218(n+1)-A000203(n+1)` -/
def P14244074542585348825.Spec : Prop :=
  ∀ n, P14244074542585348825.a n = A098798 (n + 1)

theorem P14244074542585348825.correct : P14244074542585348825.Spec := by
  intro n
  simp only [A098798, Nat.add_sub_cancel]

end A098798

/-! ## A098798.P11712209487862175021

`∑[∏{e}[n+1, #+1]]-∑{d}[n+1, #]`
-/

namespace A098798.P11712209487862175021
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), (Nat.factorization (f2 n) p + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - ((∑ d ∈ Nat.divisors (f3 n), d : ℕ) : ℤ)

end

end A098798.P11712209487862175021

namespace A098798

/-- `∑[∏{e}[n+1, #+1]]-∑{d}[n+1, #]` -/
def P11712209487862175021.Spec : Prop :=
  ∀ n, P11712209487862175021.a n = A098798 (n + 1)

end A098798

/-! ## A098798.P16796450426302375647

`∑[∑{d}[n+1, ceil(1/#)]]-∑{d}[n+1, #]`
-/

namespace A098798.P16796450426302375647
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), ⌈1 / (d : ℚ)⌉

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - ((∑ d ∈ Nat.divisors (f3 n), d : ℕ) : ℤ)

end

end A098798.P16796450426302375647

namespace A098798

/-- `∑[∑{d}[n+1, ceil(1/#)]]-∑{d}[n+1, #]` -/
def P16796450426302375647.Spec : Prop :=
  ∀ n, P16796450426302375647.a n = A098798 (n + 1)

end A098798

/-! ## A098798.P13627660243127129957

`∑[∏{p}[n+1, val(n+1, #)+1]]-∑{d}[n+1, #]`
-/

namespace A098798.P13627660243127129957
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), (SequenceMachineLib.valuation (n + 1) p + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - ((∑ d ∈ Nat.divisors (f3 n), d : ℕ) : ℤ)

end

end A098798.P13627660243127129957

namespace A098798

/-- `∑[∏{p}[n+1, val(n+1, #)+1]]-∑{d}[n+1, #]` -/
def P13627660243127129957.Spec : Prop :=
  ∀ n, P13627660243127129957.a n = A098798 (n + 1)

end A098798

/-! ## A098798.P9853884037651153418

`∑[∑{d}[n, #]]-A236632(n+1)`
-/

namespace A098798.P9853884037651153418
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), d

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A236632 (n + 1)

end

end A098798.P9853884037651153418

namespace A098798

/-- `∑[∑{d}[n, #]]-A236632(n+1)` -/
def P9853884037651153418.Spec : Prop :=
  ∀ n, P9853884037651153418.a n = A098798 (n + 1)

end A098798

/-! ## A098798.P3727912129357110117

`∑[A000005(n+1)]-∑{d}[n+1, #]`
-/

namespace A098798.P3727912129357110117
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - ((∑ d ∈ Nat.divisors (f2 n), d : ℕ) : ℤ)

end

end A098798.P3727912129357110117

namespace A098798

/-- `∑[A000005(n+1)]-∑{d}[n+1, #]` -/
def P3727912129357110117.Spec : Prop :=
  ∀ n, P3727912129357110117.a n = A098798 (n + 1)

end A098798

/-! ## A098798.P9963111100463039350

`A006218(n)-A065608(n+1)`
-/

namespace A098798.P9963111100463039350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 n - A065608 (n + 1)

end

end A098798.P9963111100463039350

namespace A098798

/-- `A006218(n)-A065608(n+1)` -/
def P9963111100463039350.Spec : Prop :=
  ∀ n, P9963111100463039350.a n = A098798 (n + 1)

end A098798

/-! ## A098798.P4488915941074906854

`A054519(n)-A158901(n+1)`
-/

namespace A098798.P4488915941074906854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054519 n - A158901 (n + 1)

end

end A098798.P4488915941074906854

namespace A098798

/-- `A054519(n)-A158901(n+1)` -/
def P4488915941074906854.Spec : Prop :=
  ∀ n, P4488915941074906854.a n = A098798 (n + 1)

end A098798

/-! ## A098798.P16421275803062269420

`A006218(n+1)-Δ[A160664(n)]`
-/

namespace A098798.P16421275803062269420
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160664 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 (n + 1) - (f1 (n + 1) - f1 n)

end

end A098798.P16421275803062269420

namespace A098798

/-- `A006218(n+1)-Δ[A160664(n)]` -/
def P16421275803062269420.Spec : Prop :=
  ∀ n, P16421275803062269420.a n = A098798 (n + 1)

end A098798

/-! ## A098798.P10443022170685215609

`A002541(n+1)-A001065(n+1)`
-/

namespace A098798.P10443022170685215609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002541 (n + 1) - A001065 (n + 1)

end

end A098798.P10443022170685215609

namespace A098798

/-- `A002541(n+1)-A001065(n+1)` -/
def P10443022170685215609.Spec : Prop :=
  ∀ n, P10443022170685215609.a n = A098798 (n + 1)

end A098798

/-! ## A098798.P15971015001870935643

`A006590(n+1)-A137319(n+1)`
-/

namespace A098798.P15971015001870935643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006590 (n + 1) - A137319 (n + 1)

end

end A098798.P15971015001870935643

namespace A098798

/-- `A006590(n+1)-A137319(n+1)` -/
def P15971015001870935643.Spec : Prop :=
  ∀ n, P15971015001870935643.a n = A098798 (n + 1)

end A098798

/-! ## A098798.P4029616848110770200

`A024816(n+1)-A161664(n+1)`
-/

namespace A098798.P4029616848110770200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024816 (n + 1) - A161664 (n + 1)

end

end A098798.P4029616848110770200

namespace A098798

/-- `A024816(n+1)-A161664(n+1)` -/
def P4029616848110770200.Spec : Prop :=
  ∀ n, P4029616848110770200.a n = A098798 (n + 1)

end A098798

/-! ## A098798.P5600408939672017177

`A156745(n+1)-A155085(n+1)`
-/

namespace A098798.P5600408939672017177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156745 (n + 1) - A155085 (n + 1)

end

end A098798.P5600408939672017177

namespace A098798

/-- `A156745(n+1)-A155085(n+1)` -/
def P5600408939672017177.Spec : Prop :=
  ∀ n, P5600408939672017177.a n = A098798 (n + 1)

end A098798

/-! ## A098798.P2220702480168523744

`A244048(n+1)-A152967(n+1)`
-/

namespace A098798.P2220702480168523744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244048 (n + 1) - A152967 (n + 1)

end

end A098798.P2220702480168523744

namespace A098798

/-- `A244048(n+1)-A152967(n+1)` -/
def P2220702480168523744.Spec : Prop :=
  ∀ n, P2220702480168523744.a n = A098798 (n + 1)

end A098798

/-! ## A098798.P920915667229051087

`A332569(n+1)-A222548(n+1)`
-/

namespace A098798.P920915667229051087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332569 (n + 1) - A222548 (n + 1)

end

end A098798.P920915667229051087

namespace A098798

/-- `A332569(n+1)-A222548(n+1)` -/
def P920915667229051087.Spec : Prop :=
  ∀ n, P920915667229051087.a n = A098798 (n + 1)

end A098798

/-! ## A098798.P8018911422742486114

`∑[A000005(n+1)]-A000203(n+1)`
-/

namespace A098798.P8018911422742486114
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A000203 (n + 1)

end

end A098798.P8018911422742486114

namespace A098798

/-- `∑[A000005(n+1)]-A000203(n+1)` -/
def P8018911422742486114.Spec : Prop :=
  ∀ n, P8018911422742486114.a n = A098798 (n + 1)

end A098798

/-! ## A098798.P9350137871493537028

`∑[A000005(n+1)-A340793(n+1)]`
-/

namespace A098798.P9350137871493537028
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) - A340793 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A098798.P9350137871493537028

namespace A098798

/-- `∑[A000005(n+1)-A340793(n+1)]` -/
def P9350137871493537028.Spec : Prop :=
  ∀ n, P9350137871493537028.a n = A098798 (n + 1)

end A098798

/-! ## A098798.P14541207288947378604

`A006218(n+1)-A245092(2*n+1)`
-/

namespace A098798.P14541207288947378604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 (n + 1) - A245092 (2 * n + 1)

end

end A098798.P14541207288947378604

namespace A098798

/-- `A006218(n+1)-A245092(2*n+1)` -/
def P14541207288947378604.Spec : Prop :=
  ∀ n, P14541207288947378604.a n = A098798 (n + 1)

end A098798

/-! ## A098798.P9704251575918478123

`∑[∑[A341062(n+1)]]-A000203(n+1)`
-/

namespace A098798.P9704251575918478123
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341062 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A000203 (n + 1)

end

end A098798.P9704251575918478123

namespace A098798

/-- `∑[∑[A341062(n+1)]]-A000203(n+1)` -/
def P9704251575918478123.Spec : Prop :=
  ∀ n, P9704251575918478123.a n = A098798 (n + 1)

end A098798

/-!
# A098799: a(n) = Sum_{k>=0} k^n*A000045(k)/2^(k+1).

The programs for A098799, there is no canonical definition to state claims against.
-/

/-! ## A098799.P12790691787214479923

`A103436(n)/2`
-/

namespace A098799.P12790691787214479923
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A103436 n : ℚ) / 2

end

end A098799.P12790691787214479923

/-! ## A098799.P11589697258793843582

`A103437(n)/2-A302922(n)`
-/

namespace A098799.P11589697258793843582
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A103437 n : ℚ) / 2 - (A302922 n : ℚ)

end

end A098799.P11589697258793843582

/-! ## A098799.P1571334114649054469

`A103437(n)/2+A302922(n)/A260196(n+2)`
-/

namespace A098799.P1571334114649054469
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A103437 n : ℚ) / 2 + (A302922 n : ℚ) / (A260196 (n + 2) : ℚ)

end

end A098799.P1571334114649054469

/-! ## A098799.P781894154245240659

`A008683(A065999(n))+(A103437(n)/2)%A302922(n)`
-/

namespace A098799.P781894154245240659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A065999 n).toNat + Int.tmod (SequenceMachineLib.roundAway ((A103437 n : ℚ) / 2)) (A302922 n)

end

end A098799.P781894154245240659

/-! ## A098799.P2433530852281415524

`record[ratio[A103436(A254001(n+1))]]`
-/

namespace A098799.P2433530852281415524
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103436 (A254001 (n + 1)).toNat

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℚ) / (f2 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A098799.P2433530852281415524

