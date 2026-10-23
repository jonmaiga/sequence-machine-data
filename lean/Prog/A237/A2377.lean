import SequenceMachineLib
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
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C027
import Seq.B000.C030
import Seq.B000.C032
import Seq.B000.C038
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C007
import Seq.B002.C000
import Seq.B002.C002
import Seq.B002.C004
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B004.C000
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B007.C000
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
import Seq.Opaque.C018
import Seq.Opaque.C019
import Seq.Opaque.C020
import Seq.Opaque.C021
import Seq.Opaque.C022

/-!
# A237700: Number of (n+1)X(5+1) 0..2 arrays with the maximum plus the upper median plus the lower median of every 2X2 subblock differing from its horizontal and vertical neighbors by exactly one.

The programs for A237700, there is no canonical definition to state claims against.
-/

/-! ## A237700.P958787201344297244

`A237703(A374005(n+1))`
-/

namespace A237700.P958787201344297244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237703 (A374005 (n + 1)).toNat

end

end A237700.P958787201344297244

/-! ## A237700.P16944850369405158482

`A237703(A167499(n+3))`
-/

namespace A237700.P16944850369405158482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237703 (A167499 (n + 3)).toNat

end

end A237700.P16944850369405158482

/-! ## A237700.P10560490002882155204

`A237703(A155212(n)+13)`
-/

namespace A237700.P10560490002882155204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237703 (A155212 n + 13).toNat

end

end A237700.P10560490002882155204

/-! ## A237700.P5464750078694778187

`A237703(A056000(n)+15)`
-/

namespace A237700.P5464750078694778187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237703 (A056000 n + 15).toNat

end

end A237700.P5464750078694778187

/-! ## A237700.P14999093889145937982

`A237703(eq[7, A066657(n)])`
-/

namespace A237700.P14999093889145937982
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237703 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A237700.P14999093889145937982

/-!
# A237701: Number of (n+1)X(6+1) 0..2 arrays with the maximum plus the upper median plus the lower median of every 2X2 subblock differing from its horizontal and vertical neighbors by exactly one.

The programs for A237701, there is no canonical definition to state claims against.
-/

/-! ## A237701.P7153694299966521181

`A237703(A374007(n+1))`
-/

namespace A237701.P7153694299966521181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237703 (A374007 (n + 1)).toNat

end

end A237701.P7153694299966521181

/-! ## A237701.P485330863467226228

`A237703(A166136(n+4))`
-/

namespace A237701.P485330863467226228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237703 (A166136 (n + 4)).toNat

end

end A237701.P485330863467226228

/-! ## A237701.P15923877407840117287

`A237703(Δ[A264443(n)]+10)`
-/

namespace A237701.P15923877407840117287
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237703 (f1 (n + 1) - f1 n + 10).toNat

end

end A237701.P15923877407840117287

/-! ## A237701.P12770800935111923318

`A237703(A167499(n+4)+1)`
-/

namespace A237701.P12770800935111923318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237703 (A167499 (n + 4) + 1).toNat

end

end A237701.P12770800935111923318

/-! ## A237701.P2209300480390819052

`A237703(A167614(n+4)+3)`
-/

namespace A237701.P2209300480390819052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237703 (A167614 (n + 4) + 3).toNat

end

end A237701.P2209300480390819052

/-!
# A237702: Number of (n+1)X(7+1) 0..2 arrays with the maximum plus the upper median plus the lower median of every 2X2 subblock differing from its horizontal and vertical neighbors by exactly one.

The programs for A237702, there is no canonical definition to state claims against.
-/

/-! ## A237702.P3605028303400238350

`A237703(∑[n+7]+21-n)`
-/

namespace A237702.P3605028303400238350
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 7

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237703 (∑ j ∈ Finset.range (n + 1), f1 j + 21 - n)

end

end A237702.P3605028303400238350

/-!
# A237705: Number of primes p < n with pi(n-p) prime, where pi(.) is given by A000720.

The programs for A237705, there is no canonical definition to state claims against.
-/

/-! ## A237705.P17155430804938776988

`A237768(n+1)+A185284(A005408(n))`
-/

namespace A237705.P17155430804938776988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237768 (n + 1) + A185284 (A005408 n).toNat

end

end A237705.P17155430804938776988

/-! ## A237705.P17600709916918544055

`A237768(n+1)+A185284(A259153(n))`
-/

namespace A237705.P17600709916918544055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237768 (n + 1) + A185284 (A259153 n).toNat

end

end A237705.P17600709916918544055

/-! ## A237705.P5597526401039848810

`or(A037800(A001949(n)), A237768(n+1))`
-/

namespace A237705.P5597526401039848810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A037800 (A001949 n).toNat) (A237768 (n + 1))

end

end A237705.P5597526401039848810

/-! ## A237705.P4715772138849111899

`or(A124737(A143632(n)), A237768(n+1))`
-/

namespace A237705.P4715772138849111899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A124737 (A143632 n).toNat) (A237768 (n + 1))

end

end A237705.P4715772138849111899

/-! ## A237705.P10523590988443082623

`A237768(lt[A000931(n), A007429(n+1)])`
-/

namespace A237705.P10523590988443082623
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000931 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007429 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237768 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A237705.P10523590988443082623

/-!
# A237707: Number of unit cubes, aligned with a three-dimensional Cartesian mesh, completely within the first octant of a sphere centered at the origin, ordered by increasing radius.

The programs for A237707, there is no canonical definition to state claims against.
-/

/-! ## A237707.P13354203530478181316

`∑[A014465(n+1)]`
-/

namespace A237707.P13354203530478181316
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014465 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A237707.P13354203530478181316

/-! ## A237707.P12215658729695630386

`∑[A063691(lt[0, A063691(n)])]`
-/

namespace A237707.P12215658729695630386
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063691 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063691 (SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A237707.P12215658729695630386

/-! ## A237707.P10866347905856133838

`record[A211638(abs(4-n))]`
-/

namespace A237707.P10866347905856133838
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211638 |4 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A237707.P10866347905856133838

/-! ## A237707.P17648283034804746963

`record[floor(A211638(n)+acot(n))]`
-/

namespace A237707.P17648283034804746963
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A211638 n : ℝ) + SequenceMachineLib.acot (n : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A237707.P17648283034804746963

/-! ## A237707.P3037065326102944955

`A211638(A144020(n+1))`
-/

namespace A237707.P3037065326102944955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211638 (A144020 (n + 1)).toNat

end

end A237707.P3037065326102944955

/-! ## A237707.P550630902671505759

`A211638(A000408(n+2))`
-/

namespace A237707.P550630902671505759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211638 (A000408 (n + 2)).toNat

end

end A237707.P550630902671505759

/-! ## A237707.P3969869629103474664

`record[A211638(n)+A000007(n)]`
-/

namespace A237707.P3969869629103474664
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211638 n + A000007 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A237707.P3969869629103474664

/-! ## A237707.P7633284699008415628

`record[A211638(n)+A000045(floor(2/(n+1)))]`
-/

namespace A237707.P7633284699008415628
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211638 n + A000045 ⌊2 / (n + 1 : ℚ)⌋.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A237707.P7633284699008415628

/-! ## A237707.P394224301537375973

`record[A211639(abs(3-n))]`
-/

namespace A237707.P394224301537375973
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211639 |3 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A237707.P394224301537375973

/-! ## A237707.P508156805032669064

`record[floor(A211639(n)+acot(n))]`
-/

namespace A237707.P508156805032669064
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A211639 n : ℝ) + SequenceMachineLib.acot (n : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A237707.P508156805032669064

/-! ## A237707.P14387729564923749896

`A211639(A000408(n+1))`
-/

namespace A237707.P14387729564923749896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211639 (A000408 (n + 1)).toNat

end

end A237707.P14387729564923749896

/-! ## A237707.P16530309072830871671

`record[A211639(n)+A000007(n)]`
-/

namespace A237707.P16530309072830871671
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211639 n + A000007 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A237707.P16530309072830871671

/-! ## A237707.P3000458548907350032

`record[A211639(n)+A000045(floor(2/(n+1)))]`
-/

namespace A237707.P3000458548907350032
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211639 n + A000045 ⌊2 / (n + 1 : ℚ)⌋.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A237707.P3000458548907350032

/-! ## A237707.P1076449728351970310

`record[A211639(n)^A001221(A001316(n))]`
-/

namespace A237707.P1076449728351970310
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A211639 n : ℚ) ^ (A001221 (A001316 n).toNat : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A237707.P1076449728351970310

/-!
# A237709: Number of occurrences of n-th prime power in A188666.

The programs for A237709, the canonical program `A237709.P12108732798945934664` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A237709 has offset 1).

The definition of A237709 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A237709.P12108732798945934664

`a(A081129(n+1))*A275120(n)` with `a(0)=1, a(1)=2`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A237709

/-- `a(A081129(n+1))*A275120(n)` -/
def P12108732798945934664.Spec : Prop :=
  ∀ n, P12108732798945934664.a n = A237709 (n + 1)

theorem P12108732798945934664.correct : P12108732798945934664.Spec := by
  intro n
  simp only [A237709, Nat.add_sub_cancel]

end A237709

/-! ## A237709.P6945558593899053092

`2*A000961(n+1)-A238898(A000961(n+1))`
-/

namespace A237709.P6945558593899053092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000961 (n + 1) - A238898 (A000961 (n + 1)).toNat

end

end A237709.P6945558593899053092

namespace A237709

/-- `2*A000961(n+1)-A238898(A000961(n+1))` -/
def P6945558593899053092.Spec : Prop :=
  ∀ n, P6945558593899053092.a n = A237709 (n + 1)

end A237709

/-! ## A237709.P10332458058627161577

`Δ[A238898(A000961(n+1))]`
-/

namespace A237709.P10332458058627161577
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238898 (A000961 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A237709.P10332458058627161577

namespace A237709

/-- `Δ[A238898(A000961(n+1))]` -/
def P10332458058627161577.Spec : Prop :=
  ∀ n, P10332458058627161577.a n = A237709 (n + 1)

end A237709

/-! ## A237709.P8702187575529428496

`Δ[A238898(sqrt(A056798(n+1)))]`
-/

namespace A237709.P8702187575529428496
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238898 (SequenceMachineLib.roundAway (Real.sqrt (A056798 (n + 1) : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A237709.P8702187575529428496

namespace A237709

/-- `Δ[A238898(sqrt(A056798(n+1)))]` -/
def P8702187575529428496.Spec : Prop :=
  ∀ n, P8702187575529428496.a n = A237709 (n + 1)

end A237709

/-! ## A237709.P5900570430114328477

`Δ[A238898(A181062(n+1)+1)]`
-/

namespace A237709.P5900570430114328477
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238898 (A181062 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A237709.P5900570430114328477

namespace A237709

/-- `Δ[A238898(A181062(n+1)+1)]` -/
def P5900570430114328477.Spec : Prop :=
  ∀ n, P5900570430114328477.a n = A237709 (n + 1)

end A237709

/-! ## A237709.P2709750331928382046

`A036453(n+1)*A057820(A233583(n+1))`
-/

namespace A237709.P2709750331928382046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036453 (n + 1) * A057820 (A233583 (n + 1)).toNat

end

end A237709.P2709750331928382046

namespace A237709

/-- `A036453(n+1)*A057820(A233583(n+1))` -/
def P2709750331928382046.Spec : Prop :=
  ∀ n, P2709750331928382046.a n = A237709 (n + 1)

end A237709

/-! ## A237709.P1838818508724890280

`A020639(A103517(n))*A275120(A233583(n+1))`
-/

namespace A237709.P1838818508724890280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A103517 n).toNat * A275120 (A233583 (n + 1)).toNat

end

end A237709.P1838818508724890280

namespace A237709

/-- `A020639(A103517(n))*A275120(A233583(n+1))` -/
def P1838818508724890280.Spec : Prop :=
  ∀ n, P1838818508724890280.a n = A237709 (n + 1)

end A237709

/-! ## A237709.P1849467224339195085

`A001221(A001749(n+1))*A275120(A233583(n+1))`
-/

namespace A237709.P1849467224339195085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A001749 (n + 1)).toNat * A275120 (A233583 (n + 1)).toNat

end

end A237709.P1849467224339195085

namespace A237709

/-- `A001221(A001749(n+1))*A275120(A233583(n+1))` -/
def P1849467224339195085.Spec : Prop :=
  ∀ n, P1849467224339195085.a n = A237709 (n + 1)

end A237709

/-! ## A237709.P10806206508904455225

`A020639(A001223(n+1))*A275120(A233583(n+1))`
-/

namespace A237709.P10806206508904455225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A001223 (n + 1)).toNat * A275120 (A233583 (n + 1)).toNat

end

end A237709.P10806206508904455225

namespace A237709

/-- `A020639(A001223(n+1))*A275120(A233583(n+1))` -/
def P10806206508904455225.Spec : Prop :=
  ∀ n, P10806206508904455225.a n = A237709 (n + 1)

end A237709

/-! ## A237709.P10768618472951787711

`Δ[eq[∑{d}[n+1, (#+1)%2], ∑{e}[n+1, #]]]`
-/

namespace A237709.P10768618472951787711
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f3 n), (d + 1) % 2

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f5 n), Nat.factorization (f5 n) p

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j = f4 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A237709.P10768618472951787711

namespace A237709

/-- `Δ[eq[∑{d}[n+1, (#+1)%2], ∑{e}[n+1, #]]]` -/
def P10768618472951787711.Spec : Prop :=
  ∀ n, P10768618472951787711.a n = A237709 (n + 1)

end A237709

/-!
# A237711: The number of P-positions in the game of Nim with up to four piles, allowing for piles of zero, such that the total number of objects in all piles is 2n.

The programs for A237711, there is no canonical definition to state claims against.
-/

/-! ## A237711.P12509693584438863784

`A237686(n)-∑[A303789(A342611(n))]`
-/

namespace A237711.P12509693584438863784
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303789 (A342611 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237686 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A237711.P12509693584438863784

/-! ## A237711.P1153987981552812428

`A303789(A342611(n+1))`
-/

namespace A237711.P1153987981552812428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303789 (A342611 (n + 1)).toNat

end

end A237711.P1153987981552812428

/-! ## A237711.P7674572289132264645

`A028901(A178569(n+1))`
-/

namespace A237711.P7674572289132264645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028901 (A178569 (n + 1)).toNat

end

end A237711.P7674572289132264645

/-! ## A237711.P16702793640238794710

`Δ[A237686(2*n+1)%A237686(n)]`
-/

namespace A237711.P16702793640238794710
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A237686 (2 * n + 1)) (A237686 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A237711.P16702793640238794710

/-!
# A237713: Composite numbers n such that the distinct digits in n and the distinct digits in the proper divisors of n are the same.

The programs for A237713, there is no canonical definition to state claims against.
-/

/-! ## A237713.P8454485300336718655

`A282755(n+2)`
-/

namespace A237713.P8454485300336718655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282755 (n + 2)

end

end A237713.P8454485300336718655

/-! ## A237713.P12807466548281626162

`record[A282755(A028920(A005408(n)))]`
-/

namespace A237713.P12807466548281626162
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282755 (A028920 (A005408 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A237713.P12807466548281626162

/-! ## A237713.P6043847935292139414

`record[A282755(A080513(A004442(n)))]`
-/

namespace A237713.P6043847935292139414
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282755 (A080513 (A004442 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A237713.P6043847935292139414

/-! ## A237713.P620238307615274808

`record[A282755(A080513(A007599(n)))]`
-/

namespace A237713.P620238307615274808
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282755 (A080513 (A007599 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A237713.P620238307615274808

/-! ## A237713.P12400599008004924159

`record[A282755(A080513(A008624(n)))]`
-/

namespace A237713.P12400599008004924159
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282755 (A080513 (A008624 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A237713.P12400599008004924159

/-!
# A237714: Expansion of (1 + x)/(1 - x^2 - 2*x^5).

The programs for A237714, the canonical program `A237714.P15916216827396192949` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A237714 has offset 0).

The definition of A237714 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1+x)/(1-x^2-2x^5))` (program `A237714.P15916216827396192949`, by `A237714.P15916216827396192949.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A237714.P15916216827396192949

`ogf((1+x)/(1-x^2-2x^5))`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A237714

/-- `ogf((1+x)/(1-x^2-2x^5))` -/
def P15916216827396192949.Spec : Prop :=
  ∀ n, P15916216827396192949.a n = A237714 n

theorem P15916216827396192949.correct : P15916216827396192949.Spec := by
  intro n
  simp only [A237714]

end A237714

/-! ## A237714.P1440997068602341775

`2*a(n-5)+a(n-2)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=1, a(4)=1`
-/

namespace A237714.P1440997068602341775
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 1, 1, 1] fun n a =>
  2 * a (n - 5) + a (n - 2)

end

end A237714.P1440997068602341775

namespace A237714

/-- `2*a(n-5)+a(n-2)` -/
def P1440997068602341775.Spec : Prop :=
  ∀ n, (P1440997068602341775.a n : ℤ) = A237714 n

end A237714

/-! ## A237714.P9931415100821485079

`a(n-5)+a(n-2)+a(n-5)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=1, a(4)=1`
-/

namespace A237714.P9931415100821485079
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 1, 1, 1] fun n a =>
  a (n - 5) + (a (n - 2) + a (n - 5))

end

end A237714.P9931415100821485079

namespace A237714

/-- `a(n-5)+a(n-2)+a(n-5)` -/
def P9931415100821485079.Spec : Prop :=
  ∀ n, (P9931415100821485079.a n : ℤ) = A237714 n

end A237714

/-!
# A237715: Number of ordered ways to write n = p + q (q > 0) with p, prime(p) - p + 1 and prime(prime(q)) - prime(q) + 1 all prime.

The programs for A237715, there is no canonical definition to state claims against.
-/

/-! ## A237715.P9962942175827733799

`A087117(∑[∑[A226671(n+1)]])`
-/

namespace A237715.P9962942175827733799
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226671 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087117 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A237715.P9962942175827733799

/-! ## A237715.P5982346389569042389

`A218829(n+1)+A007949(A017995(n))`
-/

namespace A237715.P5982346389569042389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218829 (n + 1) + A007949 (A017995 n).toNat

end

end A237715.P5982346389569042389

/-! ## A237715.P11165655290917884417

`A218829(n+1)+A101637(A171842(n))`
-/

namespace A237715.P11165655290917884417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218829 (n + 1) + A101637 (A171842 n).toNat

end

end A237715.P11165655290917884417

/-! ## A237715.P16810713878968658072

`A218829(n+1)+A101605(A286203(n))`
-/

namespace A237715.P16810713878968658072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218829 (n + 1) + A101605 (A286203 n).toNat

end

end A237715.P16810713878968658072

/-! ## A237715.P3883365533493193944

`A055640(A133242(n+1)%A000244(n))`
-/

namespace A237715.P3883365533493193944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055640 (Int.tmod (A133242 (n + 1)) (A000244 n)).toNat

end

end A237715.P3883365533493193944

/-!
# A237716: 7-distance Pell sequence.

The programs for A237716, the canonical program `A237716.P16909347021797492924` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A237716 has offset 0).

The definition of A237716 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A237716.P16909347021797492924

`2*a(n-7)+a(n-2)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=1, a(4)=1, a(5)=1, a(6)=1`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A237716

/-- `2*a(n-7)+a(n-2)` -/
def P16909347021797492924.Spec : Prop :=
  ∀ n, (P16909347021797492924.a n : ℤ) = A237716 n

theorem P16909347021797492924.correct : P16909347021797492924.Spec := by
  intro n
  simp only [A237716]

end A237716

/-!
# A237717: Numerators corresponding to A237425(n).

The programs for A237717, there is no canonical definition to state claims against.
-/

/-! ## A237717.P12988498961247652875

`A198631(n)+A176327(n)`
-/

namespace A237717.P12988498961247652875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198631 n + A176327 n

end

end A237717.P12988498961247652875

/-! ## A237717.P5443006865959483445

`A198631(A254667(n))+A164555(n)`
-/

namespace A237717.P5443006865959483445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198631 (A254667 n).toNat + A164555 n

end

end A237717.P5443006865959483445

/-! ## A237717.P12129933406471742744

`A027641(n)+A027642(n)*A198631(n)`
-/

namespace A237717.P12129933406471742744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027641 n + A027642 n * A198631 n

end

end A237717.P12129933406471742744

/-! ## A237717.P2282731822811528444

`A000007(n)+or(A164555(n), A198631(n))`
-/

namespace A237717.P2282731822811528444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + Int.lor (A164555 n) (A198631 n)

end

end A237717.P2282731822811528444

/-! ## A237717.P12756165787232138836

`A198631(n)+A164555(n)*A198631(A006519(n+1))`
-/

namespace A237717.P12756165787232138836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198631 n + A164555 n * A198631 (A006519 (n + 1)).toNat

end

end A237717.P12756165787232138836

/-! ## A237717.P5202001372770964501

`A198631(n)+A027641(A059029(n))`
-/

namespace A237717.P5202001372770964501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198631 n + A027641 (A059029 n).toNat

end

end A237717.P5202001372770964501

/-!
# A237718: 9-distance Pell numbers.

The programs for A237718, the canonical program `A237718.P6050035938280061210` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A237718 has offset 0).

The definition of A237718 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A237718.P6050035938280061210

`2*a(n-9)+a(n-2)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=1, a(4)=1, a(5)=1, a(6)=1, a(7)=1, a(8)=1`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A237718

/-- `2*a(n-9)+a(n-2)` -/
def P6050035938280061210.Spec : Prop :=
  ∀ n, (P6050035938280061210.a n : ℤ) = A237718 n

theorem P6050035938280061210.correct : P6050035938280061210.Spec := by
  intro n
  simp only [A237718]

end A237718

/-!
# A237719: Numbers n such that k(n) = (n(n+1)/2 mod n) = (antisigma(n) mod n) + (sigma(n) mod n).

The programs for A237719, the canonical program `A237719.P13944446607882022738` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A237719 has offset 1).

The definition of A237719 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1756 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A237719.P13944446607882022738

`eq[A000035(n), A242481(n+1)]+1`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A237719

/-- `eq[A000035(n), A242481(n+1)]+1` -/
def P13944446607882022738.Spec : Prop :=
  ∀ n, (P13944446607882022738.a n : ℤ) = A237719 (n + 1)

theorem P13944446607882022738.correct : P13944446607882022738.Spec := by
  intro n
  simp only [A237719, Nat.add_sub_cancel]

end A237719

/-! ## A237719.P328713354415500911

`eq[A014681(n), A242480(n+1)]+1`
-/

namespace A237719.P328713354415500911
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242480 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A237719.P328713354415500911

namespace A237719

/-- `eq[A014681(n), A242480(n+1)]+1` -/
def P328713354415500911.Spec : Prop :=
  ∀ n, (P328713354415500911.a n : ℤ) = A237719 (n + 1)

end A237719

/-! ## A237719.P8291607115559142519

`eq[A134451(n), A242481(n+1)]+1`
-/

namespace A237719.P8291607115559142519
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134451 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242481 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A237719.P8291607115559142519

namespace A237719

/-- `eq[A134451(n), A242481(n+1)]+1` -/
def P8291607115559142519.Spec : Prop :=
  ∀ n, (P8291607115559142519.a n : ℤ) = A237719 (n + 1)

end A237719

/-! ## A237719.P9923537199887419986

`record[A065171(n+1)-A242480(n+1)]`
-/

namespace A237719.P9923537199887419986
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065171 (n + 1) - A242480 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A237719.P9923537199887419986

namespace A237719

/-- `record[A065171(n+1)-A242480(n+1)]` -/
def P9923537199887419986.Spec : Prop :=
  ∀ n, P9923537199887419986.a n = A237719 (n + 1)

end A237719

/-! ## A237719.P3329315908508369930

`record[1-n+A006370(n)-A242480(n+1)]`
-/

namespace A237719.P3329315908508369930
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (n : ℤ) + (A006370 n - A242480 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A237719.P3329315908508369930

namespace A237719

/-- `record[1-n+A006370(n)-A242480(n+1)]` -/
def P3329315908508369930.Spec : Prop :=
  ∀ n, P3329315908508369930.a n = A237719 (n + 1)

end A237719

/-! ## A237719.P5399948757301634354

`eq[A142150(A020639(n+1)), A242481(n+1)]+1`
-/

namespace A237719.P5399948757301634354
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142150 (A020639 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242481 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A237719.P5399948757301634354

namespace A237719

/-- `eq[A142150(A020639(n+1)), A242481(n+1)]+1` -/
def P5399948757301634354.Spec : Prop :=
  ∀ n, (P5399948757301634354.a n : ℤ) = A237719 (n + 1)

end A237719

/-! ## A237719.P7161942954254620319

`A008619(record[A006370(n)-A242480(n+1)])`
-/

namespace A237719.P7161942954254620319
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006370 n - A242480 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A237719.P7161942954254620319

namespace A237719

/-- `A008619(record[A006370(n)-A242480(n+1)])` -/
def P7161942954254620319.Spec : Prop :=
  ∀ n, P7161942954254620319.a n = A237719 (n + 1)

end A237719

/-! ## A237719.P14871975552624435343

`A028242(record[A006370(n)-A242480(n+1)])`
-/

namespace A237719.P14871975552624435343
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006370 n - A242480 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A237719.P14871975552624435343

namespace A237719

/-- `A028242(record[A006370(n)-A242480(n+1)])` -/
def P14871975552624435343.Spec : Prop :=
  ∀ n, P14871975552624435343.a n = A237719 (n + 1)

end A237719

/-! ## A237719.P15050872534020740302

`A110514(record[A006370(n)-A242480(n+1)])`
-/

namespace A237719.P15050872534020740302
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006370 n - A242480 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110514 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A237719.P15050872534020740302

namespace A237719

/-- `A110514(record[A006370(n)-A242480(n+1)])` -/
def P15050872534020740302.Spec : Prop :=
  ∀ n, P15050872534020740302.a n = A237719 (n + 1)

end A237719

/-!
# A237721: Number of primes p <= n with floor( sqrt(n-p) ) a square.

The programs for A237721, there is no canonical definition to state claims against.
-/

/-! ## A237721.P12935035916864412892

`A001222(A000043(n+1))*A000720(n+1)-A237819(n+1)`
-/

namespace A237721.P12935035916864412892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A000043 (n + 1)).toNat * A000720 (n + 1) - A237819 (n + 1)

end

end A237721.P12935035916864412892

/-!
# A237722: Number of (n+1)X(n+1) 0..2 arrays with the maximum plus the upper median minus the lower median of every 2X2 subblock differing from its horizontal and vertical neighbors by exactly one.

The programs for A237722, there is no canonical definition to state claims against.
-/

/-! ## A237722.P17846276729379710203

`A237730(∑[4*n]+1)`
-/

namespace A237722.P17846276729379710203
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237730 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A237722.P17846276729379710203

/-! ## A237722.P14388131566102036477

`record[A237730(A152271(n²))]`
-/

namespace A237722.P14388131566102036477
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237730 (A152271 (n ^ 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A237722.P14388131566102036477

/-! ## A237722.P9102234519465050859

`record[A237730(Δ[A235355(n)])]`
-/

namespace A237722.P9102234519465050859
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235355 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237730 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A237722.P9102234519465050859

/-! ## A237722.P12291092549172255135

`and(-1, A237730(A001844(n)))`
-/

namespace A237722.P12291092549172255135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A237730 (A001844 n).toNat)

end

end A237722.P12291092549172255135

/-!
# A237723: Number of (n+1)X(1+1) 0..2 arrays with the maximum plus the upper median minus the lower median of every 2X2 subblock differing from its horizontal and vertical neighbors by exactly one.

The programs for A237723, there is no canonical definition to state claims against.
-/

/-! ## A237723.P15655528610328871633

`A237730(∑[n]+1)`
-/

namespace A237723.P15655528610328871633
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237730 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A237723.P15655528610328871633

/-! ## A237723.P138190041868537105

`A237730(A000124(n))+char[20]`
-/

namespace A237723.P138190041868537105
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  20

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237730 (A000124 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A237723.P138190041868537105

/-! ## A237723.P9855407504848705123

`record[A010054(n)*A237730(n+1)]`
-/

namespace A237723.P9855407504848705123
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A237730 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A237723.P9855407504848705123

/-! ## A237723.P1369305673547664681

`record[A237730(n+1)/A322730(n)]`
-/

namespace A237723.P1369305673547664681
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A237730 (n + 1) : ℚ) / (A322730 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A237723.P1369305673547664681

/-! ## A237723.P11710154388092234364

`record[gcd(A002262(n), A237730(n+1))]`
-/

namespace A237723.P11710154388092234364
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A237730 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A237723.P11710154388092234364

/-!
# A237724: Number of (n+1)X(2+1) 0..2 arrays with the maximum plus the upper median minus the lower median of every 2X2 subblock differing from its horizontal and vertical neighbors by exactly one.

The programs for A237724, there is no canonical definition to state claims against.
-/

/-! ## A237724.P13713908501519792739

`A237730(∑[n+1]+2)`
-/

namespace A237724.P13713908501519792739
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237730 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A237724.P13713908501519792739

/-! ## A237724.P712017014993423541

`record[A010054(n)*A237730(n+2)]`
-/

namespace A237724.P712017014993423541
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A237730 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A237724.P712017014993423541

/-! ## A237724.P1437293499582193550

`record[gcd(A002262(n), A237730(n+2))]`
-/

namespace A237724.P1437293499582193550
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A237730 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A237724.P1437293499582193550

/-! ## A237724.P10567012995210386548

`lcm(2, A237730(A000096(n+1)))`
-/

namespace A237724.P10567012995210386548
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A237730 (A000096 (n + 1)).toNat)

end

end A237724.P10567012995210386548

/-! ## A237724.P4685784788933358419

`record[A237730(Δ[A003453(n+5)])]`
-/

namespace A237724.P4685784788933358419
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003453 (n + 5)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237730 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A237724.P4685784788933358419

/-!
# A237725: Number of (n+1)X(3+1) 0..2 arrays with the maximum plus the upper median minus the lower median of every 2X2 subblock differing from its horizontal and vertical neighbors by exactly one.

The programs for A237725, there is no canonical definition to state claims against.
-/

/-! ## A237725.P8966989749107623699

`A237730(∑[n+2]+4)`
-/

namespace A237725.P8966989749107623699
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237730 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A237725.P8966989749107623699

/-! ## A237725.P3984739123085982087

`A237730(A167614(n+1))+A011737(n)`
-/

namespace A237725.P3984739123085982087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237730 (A167614 (n + 1)).toNat + A011737 n

end

end A237725.P3984739123085982087

/-! ## A237725.P14912864980017795725

`A237730(A167614(n+1))+A178798(n)`
-/

namespace A237725.P14912864980017795725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237730 (A167614 (n + 1)).toNat + A178798 n

end

end A237725.P14912864980017795725

/-! ## A237725.P8434180269001219236

`lcm(A033999(n), A237730(A167614(n+1)))`
-/

namespace A237725.P8434180269001219236
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A237730 (A167614 (n + 1)).toNat)

end

end A237725.P8434180269001219236

/-! ## A237725.P16239804966610570949

`A237730(A167614(n+1))%A186050(n+1)`
-/

namespace A237725.P16239804966610570949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A237730 (A167614 (n + 1)).toNat) (A186050 (n + 1))

end

end A237725.P16239804966610570949

/-!
# A237726: Number of (n+1)X(4+1) 0..2 arrays with the maximum plus the upper median minus the lower median of every 2X2 subblock differing from its horizontal and vertical neighbors by exactly one.

The programs for A237726, there is no canonical definition to state claims against.
-/

/-! ## A237726.P10018164347421837667

`A237730(A374004(n+1))`
-/

namespace A237726.P10018164347421837667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237730 (A374004 (n + 1)).toNat

end

end A237726.P10018164347421837667

/-! ## A237726.P7454424019436366212

`A237730(A141214(n)+7)`
-/

namespace A237726.P7454424019436366212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237730 (A141214 n + 7).toNat

end

end A237726.P7454424019436366212

/-! ## A237726.P1936146538396979816

`A237730(A052905(n)+9)`
-/

namespace A237726.P1936146538396979816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237730 (A052905 n + 9).toNat

end

end A237726.P1936146538396979816

/-! ## A237726.P15797385542474335607

`A237730(A167614(n+2)+1)`
-/

namespace A237726.P15797385542474335607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237730 (A167614 (n + 2) + 1).toNat

end

end A237726.P15797385542474335607

/-! ## A237726.P10470470724088021330

`A237730(A112355(n+1)+4)`
-/

namespace A237726.P10470470724088021330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237730 (A112355 (n + 1) + 4).toNat

end

end A237726.P10470470724088021330

/-!
# A237727: Number of (n+1)X(5+1) 0..2 arrays with the maximum plus the upper median minus the lower median of every 2X2 subblock differing from its horizontal and vertical neighbors by exactly one.

The programs for A237727, there is no canonical definition to state claims against.
-/

/-! ## A237727.P7247278492776031746

`A237730(A374005(n+1))`
-/

namespace A237727.P7247278492776031746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237730 (A374005 (n + 1)).toNat

end

end A237727.P7247278492776031746

/-! ## A237727.P5179561028730408947

`A237730(A155212(n)+13)`
-/

namespace A237727.P5179561028730408947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237730 (A155212 n + 13).toNat

end

end A237727.P5179561028730408947

/-! ## A237727.P612665411225864333

`A237730(A056000(n)+15)`
-/

namespace A237727.P612665411225864333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237730 (A056000 n + 15).toNat

end

end A237727.P612665411225864333

/-! ## A237727.P6431426245498292890

`A237730(eq[7, A066657(n)])`
-/

namespace A237727.P6431426245498292890
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237730 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A237727.P6431426245498292890

/-! ## A237727.P17500908759269433382

`A237730(A000217(n+4)+5)`
-/

namespace A237727.P17500908759269433382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237730 (A000217 (n + 4) + 5).toNat

end

end A237727.P17500908759269433382

/-!
# A237728: Number of (n+1)X(6+1) 0..2 arrays with the maximum plus the upper median minus the lower median of every 2X2 subblock differing from its horizontal and vertical neighbors by exactly one.

The programs for A237728, there is no canonical definition to state claims against.
-/

/-! ## A237728.P12005682449831571064

`A237730(A374007(n+1))`
-/

namespace A237728.P12005682449831571064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237730 (A374007 (n + 1)).toNat

end

end A237728.P12005682449831571064

/-! ## A237728.P6874345598347229496

`A237730(eq[7, A131818(n+1)])`
-/

namespace A237728.P6874345598347229496
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237730 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A237728.P6874345598347229496

/-! ## A237728.P9723019872541393332

`A237730(eq[3, A219347(n)])`
-/

namespace A237728.P9723019872541393332
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237730 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A237728.P9723019872541393332

/-! ## A237728.P7410994212906438518

`A237730(eq[5, A193592(n)])`
-/

namespace A237728.P7410994212906438518
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237730 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A237728.P7410994212906438518

/-! ## A237728.P6088210125735884391

`A237730(eq[8, A185782(n+1)])`
-/

namespace A237728.P6088210125735884391
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237730 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A237728.P6088210125735884391

/-!
# A237729: Number of (n+1)X(7+1) 0..2 arrays with the maximum plus the upper median minus the lower median of every 2X2 subblock differing from its horizontal and vertical neighbors by exactly one.

The programs for A237729, there is no canonical definition to state claims against.
-/

/-! ## A237729.P17584243365577007798

`A237730(A374008(n+1))`
-/

namespace A237729.P17584243365577007798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237730 (A374008 (n + 1)).toNat

end

end A237729.P17584243365577007798

/-! ## A237729.P8696110607328343829

`A237730(eq[11, A066657(n)])`
-/

namespace A237729.P8696110607328343829
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237730 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A237729.P8696110607328343829

/-! ## A237729.P4938453461879302168

`A237730(eq[8, A131818(n+1)])`
-/

namespace A237729.P4938453461879302168
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237730 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A237729.P4938453461879302168

/-! ## A237729.P673259002935767060

`A237730(A055999(n+4))`
-/

namespace A237729.P673259002935767060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237730 (A055999 (n + 4)).toNat

end

end A237729.P673259002935767060

/-! ## A237729.P3130727901377594638

`A237730(eq[4, A219347(n)])`
-/

namespace A237729.P3130727901377594638
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237730 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A237729.P3130727901377594638

/-!
# A237730: T(n,k)=Number of (n+1)X(k+1) 0..2 arrays with the maximum plus the upper median minus the lower median of every 2X2 subblock differing from its horizontal and vertical neighbors by exactly one.

The programs for A237730, there is no canonical definition to state claims against.
-/

/-! ## A237730.P7404863437171105984

`A237324(n+1)+A085859(A237342(2*n))`
-/

namespace A237730.P7404863437171105984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237324 (n + 1) + A085859 (A237342 (2 * n)).toNat

end

end A237730.P7404863437171105984

/-!
# A237731: Number of (n+2)X(1+2) 0..2 arrays with the (lower) medians of each row and column unequal to its neighbors.

The programs for A237731, there is no canonical definition to state claims against.
-/

/-! ## A237731.P5124973308563967177

`A237733(∑[n]+1)`
-/

namespace A237731.P5124973308563967177
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237733 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A237731.P5124973308563967177

/-! ## A237731.P17121218402524055698

`lcm(2, A237733(A000124(n)))`
-/

namespace A237731.P17121218402524055698
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A237733 (A000124 n).toNat)

end

end A237731.P17121218402524055698

/-! ## A237731.P13855896718941350750

`∑{digits}[n, A237733(A000124(#))]`
-/

namespace A237731.P13855896718941350750
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A237733 (A000124 x).toNat).sum

end

end A237731.P13855896718941350750

/-!
# A237732: Number of (n+2)X(2+2) 0..2 arrays with the (lower) medians of each row and column unequal to its neighbors.

The programs for A237732, there is no canonical definition to state claims against.
-/

/-! ## A237732.P6386163687073701218

`A237733(∑[n+1]+2)`
-/

namespace A237732.P6386163687073701218
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237733 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A237732.P6386163687073701218

/-! ## A237732.P5236163373143436016

`record[A237733(A136417(n))]`
-/

namespace A237732.P5236163373143436016
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237733 (A136417 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A237732.P5236163373143436016

/-!
# A237734: Number of (n+2)X(1+2) 0..1 arrays with the (lower) median of each row and column nondecreasing.

The programs for A237734, there is no canonical definition to state claims against.
-/

/-! ## A237734.P437444718316514512

`A237738(∑[n]+1)`
-/

namespace A237734.P437444718316514512
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237738 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A237734.P437444718316514512

/-! ## A237734.P17940774225016070791

`lcm(2, A237738(A000124(n)))`
-/

namespace A237734.P17940774225016070791
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A237738 (A000124 n).toNat)

end

end A237734.P17940774225016070791

/-! ## A237734.P10316893967916317402

`record[A237738(n+1)/A015112(n)]`
-/

namespace A237734.P10316893967916317402
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A237738 (n + 1) : ℚ) / (A015112 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A237734.P10316893967916317402

/-! ## A237734.P2105349962940198069

`A015816(n)*A237738(A000124(n))`
-/

namespace A237734.P2105349962940198069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015816 n * A237738 (A000124 n).toNat

end

end A237734.P2105349962940198069

/-! ## A237734.P16250867892556443408

`A015826(n)*A237738(A000124(n))`
-/

namespace A237734.P16250867892556443408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015826 n * A237738 (A000124 n).toNat

end

end A237734.P16250867892556443408

/-!
# A237735: Number of (n+2) X (2+2) 0..1 arrays with the (lower) median of each row and column nondecreasing.

The programs for A237735, there is no canonical definition to state claims against.
-/

/-! ## A237735.P5081443404009160703

`A237738(∑[n+1]+2)`
-/

namespace A237735.P5081443404009160703
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237738 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A237735.P5081443404009160703

/-! ## A237735.P324640615104702441

`A237738(A133263(n+1))+A086080(n)`
-/

namespace A237735.P324640615104702441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237738 (A133263 (n + 1)).toNat + A086080 n

end

end A237735.P324640615104702441

/-! ## A237735.P3683438222754472982

`A283666(n+1)+A237738(A133263(n+1))`
-/

namespace A237735.P3683438222754472982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283666 (n + 1) + A237738 (A133263 (n + 1)).toNat

end

end A237735.P3683438222754472982

/-! ## A237735.P9593036600819041747

`A237738(A133263(n+1))+A151935(n+4)`
-/

namespace A237735.P9593036600819041747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237738 (A133263 (n + 1)).toNat + A151935 (n + 4)

end

end A237735.P9593036600819041747

/-! ## A237735.P13351135569810214225

`record[A237738(n+2)/A015112(n+2)]`
-/

namespace A237735.P13351135569810214225
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A237738 (n + 2) : ℚ) / (A015112 (n + 2) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A237735.P13351135569810214225

/-!
# A237736: Number of (n+2)X(3+2) 0..1 arrays with the (lower) median of each row and column nondecreasing.

The programs for A237736, there is no canonical definition to state claims against.
-/

/-! ## A237736.P11113995138537594499

`A237738(∑[n+2]+4)`
-/

namespace A237736.P11113995138537594499
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237738 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A237736.P11113995138537594499

/-! ## A237736.P15131741895457184130

`lcm(A020985(n), A237738(A167614(n+1)))`
-/

namespace A237736.P15131741895457184130
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020985 n) (A237738 (A167614 (n + 1)).toNat)

end

end A237736.P15131741895457184130

/-! ## A237736.P3020777484597615581

`A294930(n+1)+A237738(A167614(n+1))`
-/

namespace A237736.P3020777484597615581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294930 (n + 1) + A237738 (A167614 (n + 1)).toNat

end

end A237736.P3020777484597615581

/-! ## A237736.P16196621947449049271

`A046074(n+1)*A237738(A167614(n+1))`
-/

namespace A237736.P16196621947449049271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046074 (n + 1) * A237738 (A167614 (n + 1)).toNat

end

end A237736.P16196621947449049271

/-! ## A237736.P16119874159140920990

`or(A042970(n+1), A237738(A167614(n+1)))`
-/

namespace A237736.P16119874159140920990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A042970 (n + 1)) (A237738 (A167614 (n + 1)).toNat)

end

end A237736.P16119874159140920990

/-!
# A237737: Number of (n+2)X(4+2) 0..1 arrays with the (lower) median of each row and column nondecreasing.

The programs for A237737, there is no canonical definition to state claims against.
-/

/-! ## A237737.P3015897928262241631

`A237738(A141214(n)+7)`
-/

namespace A237737.P3015897928262241631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237738 (A141214 n + 7).toNat

end

end A237737.P3015897928262241631

/-! ## A237737.P10447076011963032834

`A237738(A052905(n)+9)`
-/

namespace A237737.P10447076011963032834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237738 (A052905 n + 9).toNat

end

end A237737.P10447076011963032834

/-! ## A237737.P10223351798617167235

`A237738(A055999(n)+10)`
-/

namespace A237737.P10223351798617167235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237738 (A055999 n + 10).toNat

end

end A237737.P10223351798617167235

/-! ## A237737.P3742743740097850155

`A237738(eq[5, A066657(n)])`
-/

namespace A237737.P3742743740097850155
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237738 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A237737.P3742743740097850155

/-! ## A237737.P11674864891065418813

`A237738(A167614(n+2)+1)`
-/

namespace A237737.P11674864891065418813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237738 (A167614 (n + 2) + 1).toNat

end

end A237737.P11674864891065418813

/-!
# A237739: a(0) = 1, a(2n) = nthcomposite(a(n)-1), a(2n+1) = nthprime(a(n)), where nthcomposite = A002808, nthprime = A000040.

The programs for A237739, there is no canonical definition to state claims against.
-/

/-! ## A237739.P2002224293469297287

`A269858(A252755(n))`
-/

namespace A237739.P2002224293469297287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269858 (A252755 n).toNat

end

end A237739.P2002224293469297287

/-! ## A237739.P10344629384398674773

`A269858(A286550(n)+n)`
-/

namespace A237739.P10344629384398674773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269858 (A286550 n + (n : ℤ)).toNat

end

end A237739.P10344629384398674773

/-! ## A237739.P10442412089942088257

`A269858(A269855(xor(n, floor(n/2))))`
-/

namespace A237739.P10442412089942088257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269858 (A269855 (Int.xor (n : ℤ) ⌊(n : ℚ) / 2⌋).toNat).toNat

end

end A237739.P10442412089942088257

/-! ## A237739.P8726956867428930471

`A269848(A163511(n))`
-/

namespace A237739.P8726956867428930471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269848 (A163511 n).toNat

end

end A237739.P8726956867428930471

/-! ## A237739.P4813364726282380141

`A269848(A332817(n))`
-/

namespace A237739.P4813364726282380141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269848 (A332817 n).toNat

end

end A237739.P4813364726282380141

/-!
# A237740: Number of (n+2)X(1+2) 0..1 arrays with the (lower) medians of each row equal and of each column equal.

The programs for A237740, there is no canonical definition to state claims against.
-/

/-! ## A237740.P14651926228230271127

`A237745(∑[n]+1)`
-/

namespace A237740.P14651926228230271127
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237745 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A237740.P14651926228230271127

/-! ## A237740.P11119978885527518994

`lcm(2, A237745(A000124(n)))`
-/

namespace A237740.P11119978885527518994
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A237745 (A000124 n).toNat)

end

end A237740.P11119978885527518994

/-! ## A237740.P5463472829631295437

`record[root(A237745(n+1), A059268(n))]`
-/

namespace A237740.P5463472829631295437
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A237745 (n + 1) : ℝ) ^ (1 / (A059268 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A237740.P5463472829631295437

/-! ## A237740.P3499877906271164221

`record[root(A237745(n+1), A091042(n))]`
-/

namespace A237740.P3499877906271164221
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A237745 (n + 1) : ℝ) ^ (1 / (A091042 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A237740.P3499877906271164221

/-! ## A237740.P4055799581921664557

`record[root(A237745(n+1), A143007(n))]`
-/

namespace A237740.P4055799581921664557
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A237745 (n + 1) : ℝ) ^ (1 / (A143007 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A237740.P4055799581921664557

/-!
# A237741: Number of (n+2)X(2+2) 0..1 arrays with the (lower) medians of each row equal and of each column equal.

The programs for A237741, there is no canonical definition to state claims against.
-/

/-! ## A237741.P3051353018515631341

`A237745(∑[n+1]+2)`
-/

namespace A237741.P3051353018515631341
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237745 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A237741.P3051353018515631341

/-! ## A237741.P16730650864637712296

`record[root(A237745(n+2), A059268(n))]`
-/

namespace A237741.P16730650864637712296
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A237745 (n + 2) : ℝ) ^ (1 / (A059268 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A237741.P16730650864637712296

/-! ## A237741.P14109095727952712298

`record[root(A237745(n+2), A091042(n))]`
-/

namespace A237741.P14109095727952712298
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A237745 (n + 2) : ℝ) ^ (1 / (A091042 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A237741.P14109095727952712298

/-! ## A237741.P8793703385317734204

`record[gcd(A002262(n), A237745(n+2))]`
-/

namespace A237741.P8793703385317734204
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A237745 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A237741.P8793703385317734204

/-! ## A237741.P4505664520389416531

`lcm(2, A237745(A000096(n+1)))`
-/

namespace A237741.P4505664520389416531
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A237745 (A000096 (n + 1)).toNat)

end

end A237741.P4505664520389416531

/-!
# A237742: Number of (n+2)X(3+2) 0..1 arrays with the (lower) medians of each row equal and of each column equal.

The programs for A237742, there is no canonical definition to state claims against.
-/

/-! ## A237742.P15422320390279618900

`A237745(∑[n+2]+4)`
-/

namespace A237742.P15422320390279618900
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237745 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A237742.P15422320390279618900

/-! ## A237742.P13367883150674945401

`record[gcd(A002262(n+1), A237745(n+4))]`
-/

namespace A237742.P13367883150674945401
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 (n + 1)) (A237745 (n + 4))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A237742.P13367883150674945401

/-! ## A237742.P6455318085359303843

`A348800(n)+A237745(A166136(n+1)-3)`
-/

namespace A237742.P6455318085359303843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348800 n + A237745 (A166136 (n + 1) - 3).toNat

end

end A237742.P6455318085359303843

/-! ## A237742.P4099757786575309574

`A010894(n)!*A237745(A166136(n+1)-3)`
-/

namespace A237742.P4099757786575309574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A010894 (n + 21)).toNat : ℤ) * A237745 (A166136 (n + 1) - 3).toNat

end

end A237742.P4099757786575309574

/-! ## A237742.P10696636501847644103

`A014963(50*n+26)*A237745(A166136(n+1)-3)`
-/

namespace A237742.P10696636501847644103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (50 * n + 26) * A237745 (A166136 (n + 1) - 3).toNat

end

end A237742.P10696636501847644103

/-!
# A237743: Number of (n+2)X(4+2) 0..1 arrays with the (lower) medians of each row equal and of each column equal.

The programs for A237743, there is no canonical definition to state claims against.
-/

/-! ## A237743.P2670453675273946067

`A237745(A374004(n+1))`
-/

namespace A237743.P2670453675273946067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237745 (A374004 (n + 1)).toNat

end

end A237743.P2670453675273946067

/-! ## A237743.P11034021553262125304

`A237745(A141214(n)+7)`
-/

namespace A237743.P11034021553262125304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237745 (A141214 n + 7).toNat

end

end A237743.P11034021553262125304

/-! ## A237743.P2789503803241266022

`A237745(A052905(n)+9)`
-/

namespace A237743.P2789503803241266022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237745 (A052905 n + 9).toNat

end

end A237743.P2789503803241266022

/-! ## A237743.P6317915676455820812

`A237745(A055999(n)+10)`
-/

namespace A237743.P6317915676455820812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237745 (A055999 n + 10).toNat

end

end A237743.P6317915676455820812

/-! ## A237743.P9531185115948137249

`A237745(A167614(n+2)+1)`
-/

namespace A237743.P9531185115948137249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237745 (A167614 (n + 2) + 1).toNat

end

end A237743.P9531185115948137249

/-!
# A237744: Number of (n+2)X(5+2) 0..1 arrays with the (lower) medians of each row equal and of each column equal.

The programs for A237744, there is no canonical definition to state claims against.
-/

/-! ## A237744.P4627027322010247237

`A237745(A374005(n+1))`
-/

namespace A237744.P4627027322010247237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237745 (A374005 (n + 1)).toNat

end

end A237744.P4627027322010247237

/-! ## A237744.P17768202166698625030

`A237745(A155212(n)+13)`
-/

namespace A237744.P17768202166698625030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237745 (A155212 n + 13).toNat

end

end A237744.P17768202166698625030

/-! ## A237744.P2747993213445056810

`A237745(A056000(n)+15)`
-/

namespace A237744.P2747993213445056810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237745 (A056000 n + 15).toNat

end

end A237744.P2747993213445056810

/-! ## A237744.P11659862524173712453

`A237745(eq[7, A066657(n)])`
-/

namespace A237744.P11659862524173712453
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237745 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A237744.P11659862524173712453

/-! ## A237744.P15404842920640632552

`A237745(A000124(n+4)+4)`
-/

namespace A237744.P15404842920640632552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237745 (A000124 (n + 4) + 4).toNat

end

end A237744.P15404842920640632552

/-!
# A237746: Number of (n+2)X(1+2) 0..3 arrays with the (lower) medians of each row and column unequal to its neighbors.

The programs for A237746, there is no canonical definition to state claims against.
-/

/-! ## A237746.P14475160037630781160

`A237747(∑[n]+1)`
-/

namespace A237746.P14475160037630781160
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237747 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A237746.P14475160037630781160

/-!
# A237748: Number of different ways to color the vertices of an n-dimensional hypercube using at most 2 colors.

The programs for A237748, there is no canonical definition to state claims against.
-/

/-! ## A237748.P9050247312831867513

`A325012(∑[n+2])`
-/

namespace A237748.P9050247312831867513
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325012 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A237748.P9050247312831867513

/-! ## A237748.P11478209359763798764

`A325016(2^(n+1))+2`
-/

namespace A237748.P11478209359763798764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325016 (2 ^ (n + 1)) + 2

end

end A237748.P11478209359763798764

/-!
# A237749: The number of possible orderings of the real numbers xi*xj (i <= j), subject to the constraint that x1 > x2 > ... > xn > 0.

The programs for A237749, there is no canonical definition to state claims against.
-/

/-! ## A237749.P13962312681637614196

`A241312(2^n)`
-/

namespace A237749.P13962312681637614196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241312 (2 ^ n)

end

end A237749.P13962312681637614196

/-! ## A237749.P6918649773241283771

`A241316(2^n)`
-/

namespace A237749.P6918649773241283771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241316 (2 ^ n)

end

end A237749.P6918649773241283771

/-!
# A237751: Number of partitions of n such that 2*(greatest part) < (number of parts).

The programs for A237751, there is no canonical definition to state claims against.
-/

/-! ## A237751.P5340016136441863672

`A000041(n+1)-A237755(n+1)`
-/

namespace A237751.P5340016136441863672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (n + 1) - A237755 (n + 1)

end

end A237751.P5340016136441863672

/-! ## A237751.P4283128693169287036

`Δ[A000070(n)]-A237755(n+1)`
-/

namespace A237751.P4283128693169287036
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000070 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A237755 (n + 1)

end

end A237751.P4283128693169287036

/-! ## A237751.P10651625540789918819

`record[A035363(n)]-A237755(n+1)`
-/

namespace A237751.P10651625540789918819
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A237755 (n + 1)

end

end A237751.P10651625540789918819

/-! ## A237751.P16920904651664520202

`record[A035444(n)]-A237755(n+1)`
-/

namespace A237751.P16920904651664520202
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035444 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A237755 (n + 1)

end

end A237751.P16920904651664520202

/-! ## A237751.P6777481128604734813

`record[A114099(n)]-A237755(n+1)`
-/

namespace A237751.P6777481128604734813
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114099 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A237755 (n + 1)

end

end A237751.P6777481128604734813

/-! ## A237751.P6713887406175813095

`A237752(n+1)-A237753(n+1)`
-/

namespace A237751.P6713887406175813095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237752 (n + 1) - A237753 (n + 1)

end

end A237751.P6713887406175813095

/-! ## A237751.P10310270978555730147

`A000041(n+1)-(A237754(n+1)+A237753(n+1))`
-/

namespace A237751.P10310270978555730147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (n + 1) - (A237754 (n + 1) + A237753 (n + 1))

end

end A237751.P10310270978555730147

/-! ## A237751.P5771030559283972226

`A237752(n+1)+A237754(n+1)-A237755(n+1)`
-/

namespace A237751.P5771030559283972226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237752 (n + 1) + (A237754 (n + 1) - A237755 (n + 1))

end

end A237751.P5771030559283972226

/-!
# A237752: Number of partitions of n such that 2*(greatest part) <= (number of parts).

The programs for A237752, there is no canonical definition to state claims against.
-/

/-! ## A237752.P10718665895932636630

`A000041(n+1)-A237754(n+1)`
-/

namespace A237752.P10718665895932636630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (n + 1) - A237754 (n + 1)

end

end A237752.P10718665895932636630

/-! ## A237752.P17231740700324242909

`Δ[A000070(n)]-A237754(n+1)`
-/

namespace A237752.P17231740700324242909
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000070 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A237754 (n + 1)

end

end A237752.P17231740700324242909

/-! ## A237752.P11258357301902656200

`record[A035363(n)]-A237754(n+1)`
-/

namespace A237752.P11258357301902656200
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A237754 (n + 1)

end

end A237752.P11258357301902656200

/-! ## A237752.P13203254209355739492

`record[A035444(n)]-A237754(n+1)`
-/

namespace A237752.P13203254209355739492
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035444 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A237754 (n + 1)

end

end A237752.P13203254209355739492

/-! ## A237752.P14678862327038554948

`record[A114099(n)]-A237754(n+1)`
-/

namespace A237752.P14678862327038554948
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114099 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A237754 (n + 1)

end

end A237752.P14678862327038554948

/-! ## A237752.P2582589193582788457

`A237753(n+1)+A237751(n+1)`
-/

namespace A237752.P2582589193582788457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237753 (n + 1) + A237751 (n + 1)

end

end A237752.P2582589193582788457

/-! ## A237752.P17637560002676402146

`A237751(n+1)+A237755(n+1)-A237754(n+1)`
-/

namespace A237752.P17637560002676402146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237751 (n + 1) + (A237755 (n + 1) - A237754 (n + 1))

end

end A237752.P17637560002676402146

/-!
# A237753: Number of partitions of n such that 2*(greatest part) = (number of parts).

The programs for A237753, there is no canonical definition to state claims against.
-/

/-! ## A237753.P14009500598334275045

`A237752(n+1)-A237751(n+1)`
-/

namespace A237753.P14009500598334275045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237752 (n + 1) - A237751 (n + 1)

end

end A237753.P14009500598334275045

/-! ## A237753.P9536888677600475222

`A237755(n+1)-A237754(n+1)`
-/

namespace A237753.P9536888677600475222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237755 (n + 1) - A237754 (n + 1)

end

end A237753.P9536888677600475222

/-! ## A237753.P15211237634370935576

`A000041(n+1)-(A237754(n+1)+A237751(n+1))`
-/

namespace A237753.P15211237634370935576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (n + 1) - (A237754 (n + 1) + A237751 (n + 1))

end

end A237753.P15211237634370935576

/-! ## A237753.P14236467062081469988

`A237752(n+1)+A237755(n+1)-A000041(n+1)`
-/

namespace A237753.P14236467062081469988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237752 (n + 1) + (A237755 (n + 1) - A000041 (n + 1))

end

end A237753.P14236467062081469988

/-! ## A237753.P8348370069759881266

`(A237755(n+1)+A237752(n+1))%A000041(A000027(n+1))`
-/

namespace A237753.P8348370069759881266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A237755 (n + 1) + A237752 (n + 1)) (A000041 (A000027 (n + 1)).toNat)

end

end A237753.P8348370069759881266

/-! ## A237753.P992232841824098954

`A350879(∑[n]+2)`
-/

namespace A237753.P992232841824098954
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350879 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A237753.P992232841824098954

/-!
# A237754: Number of partitions of n such that 2*(greatest part) > (number of parts).

The programs for A237754, there is no canonical definition to state claims against.
-/

/-! ## A237754.P927445787769502402

`A000041(n+1)-A237752(n+1)`
-/

namespace A237754.P927445787769502402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (n + 1) - A237752 (n + 1)

end

end A237754.P927445787769502402

/-! ## A237754.P6835903552584894201

`Δ[A000070(n)]-A237752(n+1)`
-/

namespace A237754.P6835903552584894201
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000070 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A237752 (n + 1)

end

end A237754.P6835903552584894201

/-! ## A237754.P5970680697506147681

`record[A035363(n)]-A237752(n+1)`
-/

namespace A237754.P5970680697506147681
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A237752 (n + 1)

end

end A237754.P5970680697506147681

/-! ## A237754.P14638879562919316058

`record[A035444(n)]-A237752(n+1)`
-/

namespace A237754.P14638879562919316058
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035444 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A237752 (n + 1)

end

end A237754.P14638879562919316058

/-! ## A237754.P13207783266764119625

`record[A114099(n)]-A237752(n+1)`
-/

namespace A237754.P13207783266764119625
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114099 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A237752 (n + 1)

end

end A237754.P13207783266764119625

/-! ## A237754.P12552026846872835734

`A237755(n+1)-A237753(n+1)`
-/

namespace A237754.P12552026846872835734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237755 (n + 1) - A237753 (n + 1)

end

end A237754.P12552026846872835734

/-! ## A237754.P15983584678520247767

`A000041(n+1)-(A237753(n+1)+A237751(n+1))`
-/

namespace A237754.P15983584678520247767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (n + 1) - (A237753 (n + 1) + A237751 (n + 1))

end

end A237754.P15983584678520247767

/-! ## A237754.P1772512387011179071

`A237751(n+1)+A237755(n+1)-A237752(n+1)`
-/

namespace A237754.P1772512387011179071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237751 (n + 1) + (A237755 (n + 1) - A237752 (n + 1))

end

end A237754.P1772512387011179071

/-! ## A237754.P5958508083045802924

`A091355(A000124(n))-A237752(n+1)`
-/

namespace A237754.P5958508083045802924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091355 (A000124 n).toNat - A237752 (n + 1)

end

end A237754.P5958508083045802924

/-!
# A237755: Number of partitions of n such that 2*(greatest part) >= (number of parts).

The programs for A237755, there is no canonical definition to state claims against.
-/

/-! ## A237755.P9344264505627976651

`A000041(n+1)-A237751(n+1)`
-/

namespace A237755.P9344264505627976651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (n + 1) - A237751 (n + 1)

end

end A237755.P9344264505627976651

/-! ## A237755.P15085937442793926187

`Δ[A000070(n)]-A237751(n+1)`
-/

namespace A237755.P15085937442793926187
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000070 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A237751 (n + 1)

end

end A237755.P15085937442793926187

/-! ## A237755.P753406989772480801

`record[A035363(n)]-A237751(n+1)`
-/

namespace A237755.P753406989772480801
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A237751 (n + 1)

end

end A237755.P753406989772480801

/-! ## A237755.P10396323042127101406

`record[A035444(n)]-A237751(n+1)`
-/

namespace A237755.P10396323042127101406
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035444 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A237751 (n + 1)

end

end A237755.P10396323042127101406

/-! ## A237755.P5657785255325833218

`record[A114099(n)]-A237751(n+1)`
-/

namespace A237755.P5657785255325833218
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114099 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A237751 (n + 1)

end

end A237755.P5657785255325833218

/-! ## A237755.P6374165569477322979

`A237754(n+1)+A237753(n+1)`
-/

namespace A237755.P6374165569477322979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237754 (n + 1) + A237753 (n + 1)

end

end A237755.P6374165569477322979

/-! ## A237755.P15692746111171735330

`A000041(n+1)+A237753(n+1)-A237752(n+1)`
-/

namespace A237755.P15692746111171735330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (n + 1) + (A237753 (n + 1) - A237752 (n + 1))

end

end A237755.P15692746111171735330

/-! ## A237755.P6682990870090014233

`A237752(n+1)+A237754(n+1)-A237751(n+1)`
-/

namespace A237755.P6682990870090014233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237752 (n + 1) + (A237754 (n + 1) - A237751 (n + 1))

end

end A237755.P6682990870090014233

/-! ## A237755.P10694565640584185405

`A091355(A000124(n))-A237751(n+1)`
-/

namespace A237755.P10694565640584185405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091355 (A000124 n).toNat - A237751 (n + 1)

end

end A237755.P10694565640584185405

/-!
# A237757: Number of partitions of n such that 2*(least part) = (number of parts).

The programs for A237757, there is no canonical definition to state claims against.
-/

/-! ## A237757.P16228830081555927579

`∑[A069911(n)-A069910(n)]`
-/

namespace A237757.P16228830081555927579
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069911 n - A069910 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A237757.P16228830081555927579

/-! ## A237757.P6134435203899775947

`∑[abs(A298596(Δ[n²]))]`
-/

namespace A237757.P6134435203899775947
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A298596 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A237757.P6134435203899775947

/-! ## A237757.P18174515339347446184

`abs(∑[A298596(2*n+1)])`
-/

namespace A237757.P18174515339347446184
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298596 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j|

end

end A237757.P18174515339347446184

/-! ## A237757.P6979829586601345866

`∑[A000700(2*n+1)-A000700(2*n)]`
-/

namespace A237757.P6979829586601345866
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000700 (2 * n + 1) - A000700 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A237757.P6979829586601345866

/-! ## A237757.P17491332965055086368

`∑[abs(A081362(2*n+1)+A081362(2*n))]`
-/

namespace A237757.P17491332965055086368
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A081362 (2 * n + 1) + A081362 (2 * n)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A237757.P17491332965055086368

/-! ## A237757.P13634871224395726970

`A027350(2*n+1)+A027350(2*(n+2))`
-/

namespace A237757.P13634871224395726970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027350 (2 * n + 1) + A027350 (2 * (n + 2))

end

end A237757.P13634871224395726970

/-! ## A237757.P1651957488425458604

`A096911(2*n+3)-A096911(2*(n+1))`
-/

namespace A237757.P1651957488425458604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096911 (2 * n + 3) - A096911 (2 * (n + 1))

end

end A237757.P1651957488425458604

/-! ## A237757.P11432325764953632830

`A306145(2*n+1)-A304620(2*n+1)`
-/

namespace A237757.P11432325764953632830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306145 (2 * n + 1) - A304620 (2 * n + 1)

end

end A237757.P11432325764953632830

/-! ## A237757.P14176493649116265727

`A000070(2*n+1)-2*A304620(2*n+1)`
-/

namespace A237757.P14176493649116265727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000070 (2 * n + 1) - 2 * A304620 (2 * n + 1)

end

end A237757.P14176493649116265727

/-! ## A237757.P17359360254872906368

`2*A306145(2*n+1)-A000070(2*n+1)`
-/

namespace A237757.P17359360254872906368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A306145 (2 * n + 1) - A000070 (2 * n + 1)

end

end A237757.P17359360254872906368

/-! ## A237757.P15915589773122608135

`A027349(2*(n+1))`
-/

namespace A237757.P15915589773122608135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027349 (2 * (n + 1))

end

end A237757.P15915589773122608135

/-! ## A237757.P6358134264330591917

`A320835(A001747(2*(n+1)))`
-/

namespace A237757.P6358134264330591917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320835 (A001747 (2 * (n + 1))).toNat

end

end A237757.P6358134264330591917

/-! ## A237757.P7339375265630464309

`A320835(A072055(2*n+1)-1)`
-/

namespace A237757.P7339375265630464309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320835 (A072055 (2 * n + 1) - 1).toNat

end

end A237757.P7339375265630464309

/-! ## A237757.P1987891259394884141

`A320835(2*A000040(2*n+1))`
-/

namespace A237757.P1987891259394884141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320835 (2 * A000040 (2 * n + 1)).toNat

end

end A237757.P1987891259394884141

/-! ## A237757.P8400543063434739160

`A320835(2*A008578(2*(n+1)))`
-/

namespace A237757.P8400543063434739160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320835 (2 * A008578 (2 * (n + 1))).toNat

end

end A237757.P8400543063434739160

/-!
# A237758: Number of partitions of n such that 2*(least part) < number of parts.

The programs for A237758, there is no canonical definition to state claims against.
-/

/-! ## A237758.P4267033589578271493

`Δ[A000070(n)]-A237800(n+1)`
-/

namespace A237758.P4267033589578271493
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000070 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A237800 (n + 1)

end

end A237758.P4267033589578271493

/-! ## A237758.P2546098028634077890

`record[A035363(n)]-A237800(n+1)`
-/

namespace A237758.P2546098028634077890
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A237800 (n + 1)

end

end A237758.P2546098028634077890

/-! ## A237758.P15392423339767478818

`record[A035444(n)]-A237800(n+1)`
-/

namespace A237758.P15392423339767478818
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035444 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A237800 (n + 1)

end

end A237758.P15392423339767478818

/-! ## A237758.P7012624042895609307

`record[A114099(n)]-A237800(n+1)`
-/

namespace A237758.P7012624042895609307
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114099 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A237800 (n + 1)

end

end A237758.P7012624042895609307

/-! ## A237758.P6303212478570403602

`A000041(n+1)-A237800(n+1)`
-/

namespace A237758.P6303212478570403602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (n + 1) - A237800 (n + 1)

end

end A237758.P6303212478570403602

/-!
# A237760: Number of (n+2)X(1+2) 0..2 arrays with the (lower) medians of each row unequal to its neighbors and each column equal to its neighbors.

The programs for A237760, there is no canonical definition to state claims against.
-/

/-! ## A237760.P16830773473380019352

`A237762(∑[n+1])`
-/

namespace A237760.P16830773473380019352
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237762 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A237760.P16830773473380019352

/-! ## A237760.P17855914826187846929

`lcm(2, A237762(C(n+2, 2)))`
-/

namespace A237760.P17855914826187846929
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A237762 (Nat.choose (n + 2) 2))

end

end A237760.P17855914826187846929

/-!
# A237761: Number of (n+2)X(2+2) 0..2 arrays with the (lower) medians of each row unequal to its neighbors and each column equal to its neighbors.

The programs for A237761, there is no canonical definition to state claims against.
-/

/-! ## A237761.P15434418380363334871

`A237762(∑[n+2])`
-/

namespace A237761.P15434418380363334871
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237762 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A237761.P15434418380363334871

/-!
# A237763: Number of (1+2)X(n+2) 0..2 arrays with the (lower) medians of each row unequal to its neighbors and each column equal to its neighbors.

The programs for A237763, there is no canonical definition to state claims against.
-/

/-! ## A237763.P11188968860046517066

`A237762(∑[n]+1)`
-/

namespace A237763.P11188968860046517066
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237762 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A237763.P11188968860046517066

/-! ## A237763.P5376211846756017936

`lcm(2, A237762(A000124(n)))`
-/

namespace A237763.P5376211846756017936
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A237762 (A000124 n).toNat)

end

end A237763.P5376211846756017936

/-! ## A237763.P9770307484868117081

`record[A010054(n)*A237762(n+1)]`
-/

namespace A237763.P9770307484868117081
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A237762 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A237763.P9770307484868117081

/-!
# A237764: Number of (2+2)X(n+2) 0..2 arrays with the (lower) medians of each row unequal to its neighbors and each column equal to its neighbors.

The programs for A237764, there is no canonical definition to state claims against.
-/

/-! ## A237764.P6762194196057539660

`A237762(∑[n+1]+2)`
-/

namespace A237764.P6762194196057539660
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237762 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A237764.P6762194196057539660

/-!
# A237765: Triangular array read by rows: T(n,k) = binomial(n,2)*binomial(n,k), n>=0, 0<=k<=n.

The programs for A237765, there is no canonical definition to state claims against.
-/

/-! ## A237765.P6141250731610121139

`C(comp[∑[n]-2]-n, 2)*A007318(n)`
-/

namespace A237765.P6141250731610121139
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) * A007318 n

end

end A237765.P6141250731610121139

/-! ## A237765.P4563309345778343203

`(eq[0, floor(2*sqrt(n))%2]-n)*(A131060(n)+2)/3`
-/

namespace A237765.P4563309345778343203
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ⌊2 * Real.sqrt (n : ℝ)⌋ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ) - (n : ℤ) : ℚ) * ((A131060 n + 2 : ℚ) / 3)

end

end A237765.P4563309345778343203

/-! ## A237765.P17026039299719595207

`A094305(n)-A132775(n)`
-/

namespace A237765.P17026039299719595207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094305 n - A132775 n

end

end A237765.P17026039299719595207

/-! ## A237765.P10399674779586229626

`(n-A051162(n))*A007318(n)`
-/

namespace A237765.P10399674779586229626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - A051162 n) * A007318 n

end

end A237765.P10399674779586229626

/-! ## A237765.P10056630552673839045

`(A063656(n)-n)*A007318(n)`
-/

namespace A237765.P10056630552673839045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A063656 n - (n : ℤ)) * A007318 n

end

end A237765.P10056630552673839045

/-! ## A237765.P16579145320178498848

`abs(C(A003056(n), 2)*A108086(n))`
-/

namespace A237765.P16579145320178498848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(Nat.choose (A003056 n).toNat 2 : ℤ) * A108086 n|

end

end A237765.P16579145320178498848

/-! ## A237765.P16814490800939391383

`(eq[0, A023969(n)]-n)*A007318(n)`
-/

namespace A237765.P16814490800939391383
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023969 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ) - (n : ℤ)) * A007318 n

end

end A237765.P16814490800939391383

/-! ## A237765.P11508797994165354070

`(n+1-A094727(n+1))*A007318(n)`
-/

namespace A237765.P11508797994165354070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℤ) - A094727 (n + 1)) * A007318 n

end

end A237765.P11508797994165354070

/-! ## A237765.P14605625223951432786

`A007318(n)*A033441(A003056(n))`
-/

namespace A237765.P14605625223951432786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A033441 (A003056 n).toNat

end

end A237765.P14605625223951432786

/-! ## A237765.P10821658851888957972

`A007318(n)*A057944(A056943(n))`
-/

namespace A237765.P10821658851888957972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A057944 (A056943 n).toNat

end

end A237765.P10821658851888957972

/-!
# A237767: Integers whose product of digits is a nonzero cube.

The programs for A237767, the canonical program `A237767.P18206314552424324483` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A237767 has offset 1).

The definition of A237767 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 486 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A237767.P18206314552424324483

`∩[A052382(n+1), A062372(n+1)]`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A237767

/-- `∩[A052382(n+1), A062372(n+1)]` -/
def P18206314552424324483.Spec : Prop :=
  ∀ n, (P18206314552424324483.a n : ℤ) = A237767 (n + 1)

theorem P18206314552424324483.correct : P18206314552424324483.Spec := by
  intro n
  simp only [A237767, Nat.add_sub_cancel]

end A237767

/-! ## A237767.P12601652719831334873

`eq[1, A055401(A007954(n))]`
-/

namespace A237767.P12601652719831334873
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055401 (A007954 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A237767.P12601652719831334873

namespace A237767

/-- `eq[1, A055401(A007954(n))]` -/
def P12601652719831334873.Spec : Prop :=
  ∀ n, (P12601652719831334873.a n : ℤ) = A237767 (n + 1)

end A237767

/-! ## A237767.P6974447660587899258

`eq[1, A055400(A007954(n)+1)]`
-/

namespace A237767.P6974447660587899258
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055400 (A007954 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A237767.P6974447660587899258

namespace A237767

/-- `eq[1, A055400(A007954(n)+1)]` -/
def P6974447660587899258.Spec : Prop :=
  ∀ n, (P6974447660587899258.a n : ℤ) = A237767 (n + 1)

end A237767

/-! ## A237767.P3320894519955670357

`filter[A062372(n+1), A168046(#)]`
-/

namespace A237767.P3320894519955670357
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062372 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A168046 (f1 j).toNat = 1) n)

end

end A237767.P3320894519955670357

namespace A237767

/-- `filter[A062372(n+1), A168046(#)]` -/
def P3320894519955670357.Spec : Prop :=
  ∀ n, P3320894519955670357.a n = A237767 (n + 1)

end A237767

/-! ## A237767.P16892498307076600331

`eq[1, A055401(A230099(n)-n)]`
-/

namespace A237767.P16892498307076600331
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055401 (A230099 n - (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A237767.P16892498307076600331

namespace A237767

/-- `eq[1, A055401(A230099(n)-n)]` -/
def P16892498307076600331.Spec : Prop :=
  ∀ n, (P16892498307076600331.a n : ℤ) = A237767 (n + 1)

end A237767

/-! ## A237767.P2856108024653223266

`eq[A007954(n), A018797(A051801(n))]`
-/

namespace A237767.P2856108024653223266
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007954 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018797 (A051801 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A237767.P2856108024653223266

namespace A237767

/-- `eq[A007954(n), A018797(A051801(n))]` -/
def P2856108024653223266.Spec : Prop :=
  ∀ n, (P2856108024653223266.a n : ℤ) = A237767 (n + 1)

end A237767

/-! ## A237767.P869850541319591959

`eq[A055400(A007954(n)), A055641(n)]`
-/

namespace A237767.P869850541319591959
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055400 (A007954 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055641 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A237767.P869850541319591959

namespace A237767

/-- `eq[A055400(A007954(n)), A055641(n)]` -/
def P869850541319591959.Spec : Prop :=
  ∀ n, (P869850541319591959.a n : ℤ) = A237767 (n + 1)

end A237767

/-! ## A237767.P8330617852856756376

`eq[A055400(A007954(n)), A067898(n)]`
-/

namespace A237767.P8330617852856756376
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055400 (A007954 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067898 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A237767.P8330617852856756376

namespace A237767

/-- `eq[A055400(A007954(n)), A067898(n)]` -/
def P8330617852856756376.Spec : Prop :=
  ∀ n, (P8330617852856756376.a n : ℤ) = A237767 (n + 1)

end A237767

/-! ## A237767.P15501102973509254123

`eq[A010057(A007954(n)), A168046(n)]`
-/

namespace A237767.P15501102973509254123
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010057 (A007954 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168046 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A237767.P15501102973509254123

namespace A237767

/-- `eq[A010057(A007954(n)), A168046(n)]` -/
def P15501102973509254123.Spec : Prop :=
  ∀ n, (P15501102973509254123.a n : ℤ) = A237767 (n + 1)

end A237767

/-!
# A237768: Number of primes p < n with pi(n-p) a Sophie Germain prime, where pi(.) is given by A000720.

The programs for A237768, there is no canonical definition to state claims against.
-/

/-! ## A237768.P14346401454673552680

`A237705(n+1)-A185284(A005408(n))`
-/

namespace A237768.P14346401454673552680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237705 (n + 1) - A185284 (A005408 n).toNat

end

end A237768.P14346401454673552680

/-! ## A237768.P11248678444742996464

`A237705(n+1)-A185284(A259153(n))`
-/

namespace A237768.P11248678444742996464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237705 (n + 1) - A185284 (A259153 n).toNat

end

end A237768.P11248678444742996464

/-! ## A237768.P6619409159534791699

`A237705(n+1)-A185284(A186003(n+1))`
-/

namespace A237768.P6619409159534791699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237705 (n + 1) - A185284 (A186003 (n + 1)).toNat

end

end A237768.P6619409159534791699

/-! ## A237768.P8964135563268544165

`A237705(n+1)-A185284(A085079(2*n+1))`
-/

namespace A237768.P8964135563268544165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237705 (n + 1) - A185284 (A085079 (2 * n + 1)).toNat

end

end A237768.P8964135563268544165

/-!
# A237770: Number of standard Young tableaux with n cells without a succession v, v+1 in a row.

The programs for A237770, there is no canonical definition to state claims against.
-/

/-! ## A237770.P886163685528563834

`A238125(∑[n])`
-/

namespace A237770.P886163685528563834
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238125 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A237770.P886163685528563834

/-! ## A237770.P3943670472695462809

`A238125(A000217(n))%A164037(n)`
-/

namespace A237770.P3943670472695462809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A238125 (A000217 n).toNat) (A164037 n)

end

end A237770.P3943670472695462809

/-! ## A237770.P15796469949321119011

`gcd(A151933(n), A238125(A000217(n)))`
-/

namespace A237770.P15796469949321119011
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A151933 n) (A238125 (A000217 n).toNat)

end

end A237770.P15796469949321119011

/-! ## A237770.P17993780527396455934

`or(A000007(n), A238125(A000217(n)))`
-/

namespace A237770.P17993780527396455934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A238125 (A000217 n).toNat)

end

end A237770.P17993780527396455934

/-! ## A237770.P11166219042551825425

`A018252(gcd(n, n+1))*A238125(A000217(n))`
-/

namespace A237770.P11166219042551825425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (Nat.gcd n (n + 1)) * A238125 (A000217 n).toNat

end

end A237770.P11166219042551825425

/-!
# A237771: Number of (n+1) X (n+1) 0..2 arrays with the maximum plus the upper median of every 2 X 2 subblock differing from its horizontal and vertical neighbors by exactly one.

The programs for A237771, there is no canonical definition to state claims against.
-/

/-! ## A237771.P11945215960712368916

`A237779(∑[4*n]+1)`
-/

namespace A237771.P11945215960712368916
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237779 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A237771.P11945215960712368916

/-! ## A237771.P12549841845999981261

`record[A003982(n)*A237779(n+1)]`
-/

namespace A237771.P12549841845999981261
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A237779 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A237771.P12549841845999981261

/-! ## A237771.P9241154021190418967

`record[gcd(A237779(n+1), A320085(n))]`
-/

namespace A237771.P9241154021190418967
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A237779 (n + 1)) (A320085 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A237771.P9241154021190418967

/-! ## A237771.P871105511587398633

`A237779(A001844(n))+A185044(n)`
-/

namespace A237771.P871105511587398633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237779 (A001844 n).toNat + A185044 n

end

end A237771.P871105511587398633

/-! ## A237771.P364132643570446588

`lcm(A033999(n), A237779(A001844(n)))`
-/

namespace A237771.P364132643570446588
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A237779 (A001844 n).toNat)

end

end A237771.P364132643570446588

/-!
# A237772: Number of (n+1)X(1+1) 0..2 arrays with the maximum plus the upper median of every 2X2 subblock differing from its horizontal and vertical neighbors by exactly one.

The programs for A237772, there is no canonical definition to state claims against.
-/

/-! ## A237772.P835850448537997607

`A237779(∑[n]+1)`
-/

namespace A237772.P835850448537997607
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237779 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A237772.P835850448537997607

/-! ## A237772.P3640460101891934762

`record[gcd(A002262(n), A237779(n+1))]`
-/

namespace A237772.P3640460101891934762
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A237779 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A237772.P3640460101891934762

/-! ## A237772.P9140323054670591140

`record[A237779(n+1)/A008292(n+1)]`
-/

namespace A237772.P9140323054670591140
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A237779 (n + 1) : ℚ) / (A008292 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A237772.P9140323054670591140

/-! ## A237772.P13827226839229468484

`record[(1-A053616(n))*A237779(n+1)]`
-/

namespace A237772.P13827226839229468484
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A053616 n) * A237779 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A237772.P13827226839229468484

/-! ## A237772.P1762849685791231426

`record[A237779(n+1)/A141696(n+1)]`
-/

namespace A237772.P1762849685791231426
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A237779 (n + 1) : ℚ) / (A141696 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A237772.P1762849685791231426

/-!
# A237773: Number of (n+1)X(2+1) 0..2 arrays with the maximum plus the upper median of every 2X2 subblock differing from its horizontal and vertical neighbors by exactly one.

The programs for A237773, there is no canonical definition to state claims against.
-/

/-! ## A237773.P10752855173807347699

`A237779(∑[n+1]+2)`
-/

namespace A237773.P10752855173807347699
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237779 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A237773.P10752855173807347699

/-! ## A237773.P5423898399482000218

`record[gcd(A002262(n), A237779(n+2))]`
-/

namespace A237773.P5423898399482000218
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A237779 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A237773.P5423898399482000218

/-! ## A237773.P6399462400544166244

`record[root(A237779(n+2), A002260(n+1))]`
-/

namespace A237773.P6399462400544166244
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A237779 (n + 2) : ℝ) ^ (1 / (A002260 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A237773.P6399462400544166244

/-! ## A237773.P15943815281728985639

`lcm(2, A237779(A000096(n+1)))`
-/

namespace A237773.P15943815281728985639
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A237779 (A000096 (n + 1)).toNat)

end

end A237773.P15943815281728985639

/-! ## A237773.P5830429370619387022

`record[A237779(Δ[A003453(n+5)])]`
-/

namespace A237773.P5830429370619387022
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003453 (n + 5)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237779 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A237773.P5830429370619387022

/-!
# A237774: Number of (n+1)X(3+1) 0..2 arrays with the maximum plus the upper median of every 2X2 subblock differing from its horizontal and vertical neighbors by exactly one.

The programs for A237774, there is no canonical definition to state claims against.
-/

/-! ## A237774.P14528697601457617415

`A237779(∑[n+2]+4)`
-/

namespace A237774.P14528697601457617415
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237779 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A237774.P14528697601457617415

/-! ## A237774.P12684079456026395659

`lcm(2, A237779(A167614(n+1)))`
-/

namespace A237774.P12684079456026395659
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A237779 (A167614 (n + 1)).toNat)

end

end A237774.P12684079456026395659

/-! ## A237774.P11673282924304229428

`A237779(A167614(n+1))+A011741(n)`
-/

namespace A237774.P11673282924304229428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237779 (A167614 (n + 1)).toNat + A011741 n

end

end A237774.P11673282924304229428

/-! ## A237774.P14643570861514923701

`A237779(A167614(n+1))+A235044(n)`
-/

namespace A237774.P14643570861514923701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237779 (A167614 (n + 1)).toNat + A235044 n

end

end A237774.P14643570861514923701

/-! ## A237774.P11641688626380874789

`A237779(A167614(n+1))+A000035(2*n)`
-/

namespace A237774.P11641688626380874789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237779 (A167614 (n + 1)).toNat + A000035 (2 * n)

end

end A237774.P11641688626380874789

/-!
# A237775: Number of (n+1)X(4+1) 0..2 arrays with the maximum plus the upper median of every 2X2 subblock differing from its horizontal and vertical neighbors by exactly one.

The programs for A237775, there is no canonical definition to state claims against.
-/

/-! ## A237775.P5384580544052638449

`A237779(A374004(n+1))`
-/

namespace A237775.P5384580544052638449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237779 (A374004 (n + 1)).toNat

end

end A237775.P5384580544052638449

/-! ## A237775.P18362094292239006695

`A237779(A052905(n)+9)`
-/

namespace A237775.P18362094292239006695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237779 (A052905 n + 9).toNat

end

end A237775.P18362094292239006695

/-! ## A237775.P4993390457383898096

`A237779(A055999(n)+10)`
-/

namespace A237775.P4993390457383898096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237779 (A055999 n + 10).toNat

end

end A237775.P4993390457383898096

/-! ## A237775.P14791082543386523694

`A237779(A167614(n+2)+1)`
-/

namespace A237775.P14791082543386523694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237779 (A167614 (n + 2) + 1).toNat

end

end A237775.P14791082543386523694

/-! ## A237775.P12527040927280154279

`A237779(Δ[A023545(n+1)-n²])`
-/

namespace A237775.P12527040927280154279
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1) - (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237779 (f1 (n + 1) - f1 n).toNat

end

end A237775.P12527040927280154279

/-!
# A237776: Number of (n+1)X(5+1) 0..2 arrays with the maximum plus the upper median of every 2X2 subblock differing from its horizontal and vertical neighbors by exactly one.

The programs for A237776, there is no canonical definition to state claims against.
-/

/-! ## A237776.P1292525677540810038

`A237779(A374005(n+1))`
-/

namespace A237776.P1292525677540810038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237779 (A374005 (n + 1)).toNat

end

end A237776.P1292525677540810038

/-! ## A237776.P10445011316277051409

`A237779(A056000(n)+15)`
-/

namespace A237776.P10445011316277051409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237779 (A056000 n + 15).toNat

end

end A237776.P10445011316277051409

/-! ## A237776.P9955060384542813896

`A237779(A046691(n+3))`
-/

namespace A237776.P9955060384542813896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237779 (A046691 (n + 3)).toNat

end

end A237776.P9955060384542813896

/-! ## A237776.P7279166971710507885

`A237779(Δ[A023545(n+1)])`
-/

namespace A237776.P7279166971710507885
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237779 (f1 (n + 1) - f1 n).toNat

end

end A237776.P7279166971710507885

/-! ## A237776.P6642515958141914851

`A237779(eq[5, A200370(n+1)])`
-/

namespace A237776.P6642515958141914851
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237779 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A237776.P6642515958141914851

/-!
# A237777: Number of (n+1)X(6+1) 0..2 arrays with the maximum plus the upper median of every 2X2 subblock differing from its horizontal and vertical neighbors by exactly one.

The programs for A237777, there is no canonical definition to state claims against.
-/

/-! ## A237777.P4734612121828204921

`A237779(A374007(n+1))`
-/

namespace A237777.P4734612121828204921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237779 (A374007 (n + 1)).toNat

end

end A237777.P4734612121828204921

/-! ## A237777.P13922238582500403069

`A237779(eq[7, A131818(n+1)])`
-/

namespace A237777.P13922238582500403069
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237779 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A237777.P13922238582500403069

/-! ## A237777.P18199586156845821945

`A237779(A052905(n+3))`
-/

namespace A237777.P18199586156845821945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237779 (A052905 (n + 3)).toNat

end

end A237777.P18199586156845821945

/-! ## A237777.P14275338897507614874

`A237779(eq[3, A219347(n)])`
-/

namespace A237777.P14275338897507614874
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237779 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A237777.P14275338897507614874

/-! ## A237777.P14128073825821315389

`A237779(eq[6, A200370(n+1)])`
-/

namespace A237777.P14128073825821315389
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237779 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A237777.P14128073825821315389

/-!
# A237778: Number of (n+1)X(7+1) 0..2 arrays with the maximum plus the upper median of every 2X2 subblock differing from its horizontal and vertical neighbors by exactly one.

The programs for A237778, there is no canonical definition to state claims against.
-/

/-! ## A237778.P12731663711092778804

`A237779(A374008(n+1))`
-/

namespace A237778.P12731663711092778804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237779 (A374008 (n + 1)).toNat

end

end A237778.P12731663711092778804

/-! ## A237778.P15239039741253230406

`A237779(eq[8, A131818(n+1)])`
-/

namespace A237778.P15239039741253230406
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237779 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A237778.P15239039741253230406

/-! ## A237778.P3882216588882897474

`A237779(A055999(n+4))`
-/

namespace A237778.P3882216588882897474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237779 (A055999 (n + 4)).toNat

end

end A237778.P3882216588882897474

/-! ## A237778.P10379730164741891416

`A237779(eq[4, A219347(n)])`
-/

namespace A237778.P10379730164741891416
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237779 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A237778.P10379730164741891416

/-! ## A237778.P16847069612509599482

`A237779(eq[7, A200370(n+1)])`
-/

namespace A237778.P16847069612509599482
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237779 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A237778.P16847069612509599482

/-!
# A237780: Number of (n+1)X(1+1) 0..3 arrays with the maximum plus the upper median plus the minimum minus the lower median of every 2X2 subblock differing from its horizontal and vertical neighbors by exactly one.

The programs for A237780, there is no canonical definition to state claims against.
-/

/-! ## A237780.P15966738013684931853

`A237785(∑[n]+1)`
-/

namespace A237780.P15966738013684931853
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237785 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A237780.P15966738013684931853

/-! ## A237780.P2234410190435489513

`lcm(2, A237785(A000124(n)))`
-/

namespace A237780.P2234410190435489513
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A237785 (A000124 n).toNat)

end

end A237780.P2234410190435489513

/-! ## A237780.P8001652563922581127

`record[A237785(A056534(n+1))]`
-/

namespace A237780.P8001652563922581127
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237785 (A056534 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A237780.P8001652563922581127

/-! ## A237780.P9622636882343685288

`record[A237785(A286235(n+1))]`
-/

namespace A237780.P9622636882343685288
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237785 (A286235 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A237780.P9622636882343685288

/-! ## A237780.P3069107689709604855

`record[A237785(Δ[A053436(n+1)])]`
-/

namespace A237780.P3069107689709604855
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053436 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237785 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A237780.P3069107689709604855

/-!
# A237781: Number of (n+1)X(2+1) 0..3 arrays with the maximum plus the upper median plus the minimum minus the lower median of every 2X2 subblock differing from its horizontal and vertical neighbors by exactly one.

The programs for A237781, there is no canonical definition to state claims against.
-/

/-! ## A237781.P13008637327202822071

`A237785(∑[n+1]+2)`
-/

namespace A237781.P13008637327202822071
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237785 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A237781.P13008637327202822071

/-! ## A237781.P13915776901942423666

`record[A237785(A286235(n+1)+1)]`
-/

namespace A237781.P13915776901942423666
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237785 (A286235 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A237781.P13915776901942423666

/-! ## A237781.P17034738533632353731

`record[A023531(n)*A237785(n+3)]`
-/

namespace A237781.P17034738533632353731
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023531 n * A237785 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A237781.P17034738533632353731

/-! ## A237781.P9117664106995559189

`record[A237785(n+3)/A107045(n)]`
-/

namespace A237781.P9117664106995559189
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A237785 (n + 3) : ℚ) / (A107045 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A237781.P9117664106995559189

/-! ## A237781.P1652615528969878685

`record[A237785(Δ[A053436(n+1)]+1)]`
-/

namespace A237781.P1652615528969878685
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053436 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237785 (f2 (n + 1) - f2 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A237781.P1652615528969878685

/-!
# A237782: Number of (n+1)X(3+1) 0..3 arrays with the maximum plus the upper median plus the minimum minus the lower median of every 2X2 subblock differing from its horizontal and vertical neighbors by exactly one.

The programs for A237782, there is no canonical definition to state claims against.
-/

/-! ## A237782.P7645512996272799458

`A237785(∑[n+2]+4)`
-/

namespace A237782.P7645512996272799458
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237785 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A237782.P7645512996272799458

/-! ## A237782.P1702351152579865206

`lcm(2, A237785(A167614(n+1)))`
-/

namespace A237782.P1702351152579865206
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A237785 (A167614 (n + 1)).toNat)

end

end A237782.P1702351152579865206

/-! ## A237782.P5685784490722207354

`record[A023531(n)*A237785(n+4)]`
-/

namespace A237782.P5685784490722207354
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023531 n * A237785 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A237782.P5685784490722207354

/-! ## A237782.P296373340565456754

`A237785(A167614(n+1))+A029577(n)`
-/

namespace A237782.P296373340565456754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237785 (A167614 (n + 1)).toNat + A029577 n

end

end A237782.P296373340565456754

/-! ## A237782.P10106165016083383208

`A237785(A167614(n+1))+A031346(n)`
-/

namespace A237782.P10106165016083383208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237785 (A167614 (n + 1)).toNat + A031346 n

end

end A237782.P10106165016083383208

/-!
# A237783: Number of (n+1)X(4+1) 0..3 arrays with the maximum plus the upper median plus the minimum minus the lower median of every 2X2 subblock differing from its horizontal and vertical neighbors by exactly one.

The programs for A237783, there is no canonical definition to state claims against.
-/

/-! ## A237783.P690570888915848317

`A237785(∑[n+3]+7)`
-/

namespace A237783.P690570888915848317
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237785 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A237783.P690570888915848317

/-! ## A237783.P13507597960854660607

`A308979(n)+A237785(A027379(n+2))`
-/

namespace A237783.P13507597960854660607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308979 n + A237785 (A027379 (n + 2)).toNat

end

end A237783.P13507597960854660607

/-! ## A237783.P17331866615317703327

`A335460(n+1)+A237785(A141214(n+1))`
-/

namespace A237783.P17331866615317703327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335460 (n + 1) + A237785 (A141214 (n + 1)).toNat

end

end A237783.P17331866615317703327

/-!
# A237784: Number of (n+1)X(5+1) 0..3 arrays with the maximum plus the upper median plus the minimum minus the lower median of every 2X2 subblock differing from its horizontal and vertical neighbors by exactly one.

The programs for A237784, there is no canonical definition to state claims against.
-/

/-! ## A237784.P8990677799519861562

`A237785(A374005(n+1))`
-/

namespace A237784.P8990677799519861562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237785 (A374005 (n + 1)).toNat

end

end A237784.P8990677799519861562

/-! ## A237784.P13208127771716745280

`A237785(∑[n+5]+6)`
-/

namespace A237784.P13208127771716745280
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237785 (∑ j ∈ Finset.range (n + 1), f1 j + 6)

end

end A237784.P13208127771716745280

/-!
# A237786: Number of (n+1)X(1+1) 0..3 arrays with the maximum plus the minimum minus the lower median of every 2X2 subblock differing from its horizontal and vertical neighbors by exactly one.

The programs for A237786, there is no canonical definition to state claims against.
-/

/-! ## A237786.P17510610831775517655

`A237791(∑[n]+1)`
-/

namespace A237786.P17510610831775517655
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237791 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A237786.P17510610831775517655

/-! ## A237786.P2160945125463027606

`record[A237791(A286245(n+1))]`
-/

namespace A237786.P2160945125463027606
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237791 (A286245 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A237786.P2160945125463027606

/-! ## A237786.P369355453156859472

`record[gcd(A002262(n), A237791(n+1))]`
-/

namespace A237786.P369355453156859472
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A237791 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A237786.P369355453156859472

/-! ## A237786.P4098991734702572538

`record[A237791(n+1)/A061691(n+1)]`
-/

namespace A237786.P4098991734702572538
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A237791 (n + 1) : ℚ) / (A061691 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A237786.P4098991734702572538

/-! ## A237786.P13143885276217351748

`lcm(A047060(n), A237791(A000124(n)))`
-/

namespace A237786.P13143885276217351748
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A047060 n) (A237791 (A000124 n).toNat)

end

end A237786.P13143885276217351748

/-!
# A237787: Number of (n+1)X(2+1) 0..3 arrays with the maximum plus the minimum minus the lower median of every 2X2 subblock differing from its horizontal and vertical neighbors by exactly one.

The programs for A237787, there is no canonical definition to state claims against.
-/

/-! ## A237787.P11679786477394698655

`A237791(∑[n+1]+2)`
-/

namespace A237787.P11679786477394698655
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237791 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A237787.P11679786477394698655

/-! ## A237787.P2833783084353941236

`record[gcd(A002262(n), A237791(n+2))]`
-/

namespace A237787.P2833783084353941236
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A237791 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A237787.P2833783084353941236

/-! ## A237787.P10316587053920499508

`record[A005369(2*n)*A237791(n+2)]`
-/

namespace A237787.P10316587053920499508
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005369 (2 * n) * A237791 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A237787.P10316587053920499508

/-! ## A237787.P16806632223610431466

`record[A237791(abs(A201163(n)))]`
-/

namespace A237787.P16806632223610431466
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237791 |A201163 n|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A237787.P16806632223610431466

/-! ## A237787.P4866953553318362476

`record[A237791(A198455(n+1))]`
-/

namespace A237787.P4866953553318362476
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237791 (A198455 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A237787.P4866953553318362476

/-!
# A237788: Number of (n+1)X(3+1) 0..3 arrays with the maximum plus the minimum minus the lower median of every 2X2 subblock differing from its horizontal and vertical neighbors by exactly one.

The programs for A237788, there is no canonical definition to state claims against.
-/

/-! ## A237788.P5396387670915005156

`A237791(∑[n+2]+4)`
-/

namespace A237788.P5396387670915005156
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237791 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A237788.P5396387670915005156

/-! ## A237788.P15804480264571554416

`gcd(n, n+1)*A237791(A055998(n)+6)`
-/

namespace A237788.P15804480264571554416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.gcd n (n + 1) : ℤ) * A237791 (A055998 n + 6).toNat

end

end A237788.P15804480264571554416

/-! ## A237788.P4982737800146685324

`A237791(A167614(n+1))+A025443(n)`
-/

namespace A237788.P4982737800146685324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237791 (A167614 (n + 1)).toNat + A025443 n

end

end A237788.P4982737800146685324

/-! ## A237788.P10163524731530172512

`A237791(A167614(n+1))+A184955(n)`
-/

namespace A237788.P10163524731530172512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237791 (A167614 (n + 1)).toNat + A184955 n

end

end A237788.P10163524731530172512

/-! ## A237788.P13793533945871492112

`A237791(A055998(n)+6)+A025443(n)`
-/

namespace A237788.P13793533945871492112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237791 (A055998 n + 6).toNat + A025443 n

end

end A237788.P13793533945871492112

/-!
# A237789: Number of (n+1)X(4+1) 0..3 arrays with the maximum plus the minimum minus the lower median of every 2X2 subblock differing from its horizontal and vertical neighbors by exactly one.

The programs for A237789, there is no canonical definition to state claims against.
-/

/-! ## A237789.P12413525211551793093

`A237791(A374004(n+1))`
-/

namespace A237789.P12413525211551793093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237791 (A374004 (n + 1)).toNat

end

end A237789.P12413525211551793093

/-! ## A237789.P13365534808079451218

`A237791(A052905(n)+9)`
-/

namespace A237789.P13365534808079451218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237791 (A052905 n + 9).toNat

end

end A237789.P13365534808079451218

/-! ## A237789.P13220218336219787823

`A237791(A055999(n)+10)`
-/

namespace A237789.P13220218336219787823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237791 (A055999 n + 10).toNat

end

end A237789.P13220218336219787823

/-! ## A237789.P15768624917081623767

`A237791(A167614(n+2)+1)`
-/

namespace A237789.P15768624917081623767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237791 (A167614 (n + 2) + 1).toNat

end

end A237789.P15768624917081623767

/-! ## A237789.P10741439181910377418

`A237791(A055998(n+1)+7)`
-/

namespace A237789.P10741439181910377418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237791 (A055998 (n + 1) + 7).toNat

end

end A237789.P10741439181910377418

/-!
# A237790: Number of (n+1) X (5+1) 0..3 arrays with the maximum plus the minimum minus the lower median of every 2 X 2 subblock differing from its horizontal and vertical neighbors by exactly one.

The programs for A237790, there is no canonical definition to state claims against.
-/

/-! ## A237790.P9735112555903187720

`A237791(A374005(n+1))`
-/

namespace A237790.P9735112555903187720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237791 (A374005 (n + 1)).toNat

end

end A237790.P9735112555903187720

/-! ## A237790.P2169447686054173047

`A237791(eq[6, A131818(n+1)])`
-/

namespace A237790.P2169447686054173047
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237791 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A237790.P2169447686054173047

/-!
# A237792: Number of (n+2)X(1+2) 0..3 arrays with the (lower) medians of each row equal and of each column equal.

The programs for A237792, there is no canonical definition to state claims against.
-/

/-! ## A237792.P8685032225224934995

`A237794(∑[n]+1)`
-/

namespace A237792.P8685032225224934995
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237794 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A237792.P8685032225224934995

/-! ## A237792.P14933604710473965426

`lcm(2, A237794(A000124(n)))`
-/

namespace A237792.P14933604710473965426
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A237794 (A000124 n).toNat)

end

end A237792.P14933604710473965426

/-! ## A237792.P14063294249662337458

`record[A010054(n)*A237794(n+1)]`
-/

namespace A237792.P14063294249662337458
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A237794 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A237792.P14063294249662337458

/-!
# A237793: Number of (n+2)X(2+2) 0..3 arrays with the (lower) medians of each row equal and of each column equal.

The programs for A237793, there is no canonical definition to state claims against.
-/

/-! ## A237793.P8675587517960419870

`A237794(∑[n+1]+2)`
-/

namespace A237793.P8675587517960419870
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237794 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A237793.P8675587517960419870

/-!
# A237795: Number of (n+2)X(1+2) 0..2 arrays with the (lower) medians of each row equal and of each column equal.

The programs for A237795, there is no canonical definition to state claims against.
-/

/-! ## A237795.P9295956090175344194

`A237797(∑[n]+1)`
-/

namespace A237795.P9295956090175344194
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237797 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A237795.P9295956090175344194

/-! ## A237795.P12695018831050821261

`lcm(3, A237797(A000124(n)))`
-/

namespace A237795.P12695018831050821261
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 3 (A237797 (A000124 n).toNat)

end

end A237795.P12695018831050821261

/-! ## A237795.P7511453248367277395

`record[A010054(n)*A237797(n+1)]`
-/

namespace A237795.P7511453248367277395
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A237797 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A237795.P7511453248367277395

/-! ## A237795.P14384208040763537026

`record[A237797(n+1)/A156646(n)]`
-/

namespace A237795.P14384208040763537026
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A237797 (n + 1) : ℚ) / (A156646 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A237795.P14384208040763537026

/-!
# A237796: Number of (n+2)X(2+2) 0..2 arrays with the (lower) medians of each row equal and of each column equal.

The programs for A237796, there is no canonical definition to state claims against.
-/

/-! ## A237796.P5089231822799091512

`A237797(∑[n+1]+2)`
-/

namespace A237796.P5089231822799091512
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237797 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A237796.P5089231822799091512

/-! ## A237796.P5496893973503113482

`record[A237797(A243463(3*n+2))]`
-/

namespace A237796.P5496893973503113482
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237797 (A243463 (3 * n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A237796.P5496893973503113482

/-! ## A237796.P1460665454512977308

`record[A010054(n)*A237797(n+2)]`
-/

namespace A237796.P1460665454512977308
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A237797 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A237796.P1460665454512977308

/-!
# A237799: Number of partitions of n such that 2*(least part) > number of parts.

The programs for A237799, there is no canonical definition to state claims against.
-/

/-! ## A237799.P12487394914572679506

`A237800(n+1)-A237757(n+1)`
-/

namespace A237799.P12487394914572679506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237800 (n + 1) - A237757 (n + 1)

end

end A237799.P12487394914572679506

/-! ## A237799.P4533776090074363587

`A118083(n+1)-A118082(n+1)`
-/

namespace A237799.P4533776090074363587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118083 (n + 1) - A118082 (n + 1)

end

end A237799.P4533776090074363587

/-! ## A237799.P12441917235180536913

`Δ[A000070(n)]-(A237758(n+1)+A237757(n+1))`
-/

namespace A237799.P12441917235180536913
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000070 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - (A237758 (n + 1) + A237757 (n + 1))

end

end A237799.P12441917235180536913

/-! ## A237799.P1150236617646198918

`record[A035444(n)]-(A237758(n+1)+A237757(n+1))`
-/

namespace A237799.P1150236617646198918
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035444 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - (A237758 (n + 1) + A237757 (n + 1))

end

end A237799.P1150236617646198918

/-! ## A237799.P9971825293097896673

`A000041(n+1)-(A237758(n+1)+A237757(n+1))`
-/

namespace A237799.P9971825293097896673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (n + 1) - (A237758 (n + 1) + A237757 (n + 1))

end

end A237799.P9971825293097896673

