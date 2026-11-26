import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C004
import Seq.B000.C005
import Seq.B000.C007
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C016
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C034
import Seq.B000.C036
import Seq.B000.C039
import Seq.B000.C040
import Seq.B000.C043
import Seq.B000.C044
import Seq.B000.C045
import Seq.B000.C046
import Seq.B000.C048
import Seq.B001.C000
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B001.C013
import Seq.B001.C014
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C007
import Seq.B003.C000
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B004.C002
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
import Seq.Opaque.C016
import Seq.Opaque.C017
import Seq.Opaque.C018
import Seq.Opaque.C020
import Seq.Opaque.C021
import Seq.Opaque.C022
import Seq.Opaque.C023

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A186800: Number of (n+2)X5 binary arrays with no 3X3 subblock commuting with any horizontal or vertical neighbor 3X3 subblock.

The programs for A186800, there is no canonical definition to state claims against.
-/

/-! ## A186800.P581039094531074346

`A186806(∑[n+2]+4)`
-/

namespace A186800.P581039094531074346
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186806 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A186800.P581039094531074346

/-! ## A186800.P318589811392876285

`record[A186806(A127773(n+1)+3)]`
-/

namespace A186800.P318589811392876285
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186806 (A127773 (n + 1) + 3).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A186800.P318589811392876285

/-!
# A186801: Number of (n+2)X6 binary arrays with no 3X3 subblock commuting with any horizontal or vertical neighbor 3X3 subblock.

The programs for A186801, there is no canonical definition to state claims against.
-/

/-! ## A186801.P14748724558010313706

`A186806(∑[n+3]+7)`
-/

namespace A186801.P14748724558010313706
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186806 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A186801.P14748724558010313706

/-!
# A186802: Number of (n+2)X7 binary arrays with no 3X3 subblock commuting with any horizontal or vertical neighbor 3X3 subblock.

The programs for A186802, there is no canonical definition to state claims against.
-/

/-! ## A186802.P4132958548724313277

`A186806(Δ[A264443(n)])`
-/

namespace A186802.P4132958548724313277
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186806 (f1 (n + 1) - f1 n).toNat

end

end A186802.P4132958548724313277

/-!
# A186807: Triangle read by rows: T(n,p) (n >= 2, 1 <= p <= n-1) = number of compositions of n into p parts, with first part >= all other parts.

The programs for A186807, there is no canonical definition to state claims against.
-/

/-! ## A186807.P3780021245824320256

`A156041(∑[char[∑[n]]]²-n)`
-/

namespace A186807.P3780021245824320256
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156041 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - n)

end

end A186807.P3780021245824320256

/-! ## A186807.P14223718396144841751

`A184957((n-comp[∑[n]])²-comp[∑[n]])`
-/

namespace A186807.P14223718396144841751
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184957 (((n : ℤ) - (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ)) ^ 2 - (SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ x) n : ℤ)).toNat

end

end A186807.P14223718396144841751

/-! ## A186807.P1756857404230406566

`A331852(A092056(n))`
-/

namespace A186807.P1756857404230406566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331852 (A092056 n).toNat

end

end A186807.P1756857404230406566

/-! ## A186807.P8473015003575865648

`A331246(A362903(n))`
-/

namespace A186807.P8473015003575865648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331246 (A362903 n).toNat

end

end A186807.P8473015003575865648

/-! ## A186807.P5160158328902345870

`A062571(A058717(n+1))`
-/

namespace A186807.P5160158328902345870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062571 (A058717 (n + 1)).toNat

end

end A186807.P5160158328902345870

/-!
# A186809: Period 6 sequence [0, 1, 2, 0, -2, -1, ...].

The programs for A186809, the canonical program `A186809.P5079456589146333713` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A186809 has offset 0).

The definition of A186809 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A186809.P5079456589146333713

`ogf((x+2x^2+x^3)/(1+x^2+x^4))`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A186809

/-- `ogf((x+2x^2+x^3)/(1+x^2+x^4))` -/
def P5079456589146333713.Spec : Prop :=
  ∀ n, P5079456589146333713.a n = A186809 n

theorem P5079456589146333713.correct : P5079456589146333713.Spec := by
  intro n
  simp only [A186809]

end A186809

/-!
# A186810: Partial sums of A009940.

The programs for A186810, there is no canonical definition to state claims against.
-/

/-! ## A186810.P6810665315095975211

`∑[A009940(n)]`
-/

namespace A186810.P6810665315095975211
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009940 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A186810.P6810665315095975211

/-! ## A186810.P1271663759242418628

`∑[A293116(n)+n*a(n-1)]` with `a(0)=1`
-/

namespace A186810.P1271663759242418628
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A293116 n + (n : ℤ) * f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A186810.P1271663759242418628

/-! ## A186810.P5216182125486283767

`∑[n!-A087860(n)]`
-/

namespace A186810.P5216182125486283767
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) - A087860 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A186810.P5216182125486283767

/-! ## A186810.P12510101264755046658

`∑[A000142(n)-A087860(n)]`
-/

namespace A186810.P12510101264755046658
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n - A087860 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A186810.P12510101264755046658

/-! ## A186810.P15597928189945857558

`a(n-1)+A000142(n)/A160622(n)*A160621(n)` with `a(0)=1`
-/

namespace A186810.P15597928189945857558
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A000142 n : ℚ) / (A160622 n : ℚ) * (A160621 n : ℚ)

end

end A186810.P15597928189945857558

/-! ## A186810.P15459066063297947322

`∑[A021009(∑[n])-A087860(n)]`
-/

namespace A186810.P15459066063297947322
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021009 (∑ j ∈ Finset.range (n + 1), f2 j) - A087860 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A186810.P15459066063297947322

/-! ## A186810.P3739534047606998369

`∑[A331325(n)-A331326(n)]`
-/

namespace A186810.P3739534047606998369
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331325 n - A331326 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A186810.P3739534047606998369

/-!
# A186811: Twin primes of the form k*6^m-1 and k*6^m+1, where k is prime.

The programs for A186811, there is no canonical definition to state claims against.
-/

/-! ## A186811.P17125558161114121486

`A077800(A072957(n+3))`
-/

namespace A186811.P17125558161114121486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077800 (A072957 (n + 3)).toNat

end

end A186811.P17125558161114121486

/-! ## A186811.P5208723718311963386

`record[A132247(n+1)%A132226(A132242(n+1))]`
-/

namespace A186811.P5208723718311963386
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A132247 (n + 1)) (A132226 (A132242 (n + 1)).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A186811.P5208723718311963386

/-! ## A186811.P1704096723679283332

`A132247(record[A347062(n+2)])`
-/

namespace A186811.P1704096723679283332
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347062 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132247 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A186811.P1704096723679283332

/-! ## A186811.P6466221714749945808

`filter[A239711(n+1), A130854(#)]`
-/

namespace A186811.P6466221714749945808
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239711 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A130854 (f1 j).toNat = 1) n)

end

end A186811.P6466221714749945808

/-!
# A186812: Expansion of 1/(1-x^6-3*x^5-4*x^4-3*x^3-2*x^2-x).

The programs for A186812, the canonical program `A186812.P11404355964589204754` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A186812 has offset 0).

The definition of A186812 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-x-2x^2-3x^3-4x^4-3x^5-x^6))` (program `A186812.P11404355964589204754`, by `A186812.P11404355964589204754.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A186812.P11404355964589204754

`ogf(1/(1-x-2x^2-3x^3-4x^4-3x^5-x^6))`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A186812

/-- `ogf(1/(1-x-2x^2-3x^3-4x^4-3x^5-x^6))` -/
def P11404355964589204754.Spec : Prop :=
  ∀ n, P11404355964589204754.a n = A186812 n

theorem P11404355964589204754.correct : P11404355964589204754.Spec := by
  intro n
  simp only [A186812]

end A186812

/-! ## A186812.P15024530432274956532

`A156562(floor((sqrt(2)+2)*a(n-1)))` with `a(0)=1, a(1)=1`
-/

namespace A186812.P15024530432274956532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A156562 ⌊(Real.sqrt (2 : ℝ) + 2) * (a (n - 1) : ℝ)⌋.toNat

end

end A186812.P15024530432274956532

namespace A186812

/-- `A156562(floor((sqrt(2)+2)*a(n-1)))` -/
def P15024530432274956532.Spec : Prop :=
  ∀ n, P15024530432274956532.a n = A186812 n

end A186812

/-! ## A186812.P3496590601400189492

`A100196(A323262(n+1)+A000110(n))`
-/

namespace A186812.P3496590601400189492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100196 (A323262 (n + 1) + A000110 n).toNat

end

end A186812.P3496590601400189492

namespace A186812

/-- `A100196(A323262(n+1)+A000110(n))` -/
def P3496590601400189492.Spec : Prop :=
  ∀ n, P3496590601400189492.a n = A186812 n

end A186812

/-!
# A186813: a(n) = n if n odd, a(2n) = 3n if n odd, a(4n) = 2n.

The programs for A186813, the canonical program `A186813.P16316920745608396461` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A186813 has offset 0).

The definition of A186813 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A186813.P5593144544809019337

`ogf((x+x^2+x^4+x^5)/(1-2x+3x^2-4x^3+3x^4-2x^5+x^6))`
-/

namespace A186813.P5593144544809019337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, 1, 0, 1, 1] [1, -2, 3, -4, 3, -2, 1] n

end

end A186813.P5593144544809019337

namespace A186813

/-- `ogf((x+x^2+x^4+x^5)/(1-2x+3x^2-4x^3+3x^4-2x^5+x^6))` -/
def P5593144544809019337.Spec : Prop :=
  ∀ n, P5593144544809019337.a n = A186813 n

end A186813

/-! ## A186813.P1736882743980716930

`n/2*A068073(n)`
-/

namespace A186813.P1736882743980716930
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / 2 * (A068073 n : ℚ)

end

end A186813.P1736882743980716930

namespace A186813

/-- `n/2*A068073(n)` -/
def P1736882743980716930.Spec : Prop :=
  ∀ n, P1736882743980716930.a n = (A186813 n : ℚ)

end A186813

/-! ## A186813.P16316920745608396461

`A134172(n)+A134172(n+1)`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A186813

/-- `A134172(n)+A134172(n+1)` -/
def P16316920745608396461.Spec : Prop :=
  ∀ n, P16316920745608396461.a n = A186813 n

theorem P16316920745608396461.correct : P16316920745608396461.Spec := by
  intro n
  simp only [A186813]

end A186813

/-! ## A186813.P467663842693242007

`n/2*dr(or(28, gcd(4, n)))`
-/

namespace A186813.P467663842693242007
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / 2 * (SequenceMachineLib.digitalRoot (Nat.lor 28 (Nat.gcd 4 n) : ℤ) : ℚ)

end

end A186813.P467663842693242007

namespace A186813

/-- `n/2*dr(or(28, gcd(4, n)))` -/
def P467663842693242007.Spec : Prop :=
  ∀ n, P467663842693242007.a n = (A186813 n : ℚ)

end A186813

/-! ## A186813.P14122616893215901225

`(lcm(n, n²%8)+n)/2`
-/

namespace A186813.P14122616893215901225
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.lcm n (n ^ 2 % 8) + n : ℚ) / 2

end

end A186813.P14122616893215901225

namespace A186813

/-- `(lcm(n, n²%8)+n)/2` -/
def P14122616893215901225.Spec : Prop :=
  ∀ n, P14122616893215901225.a n = (A186813 n : ℚ)

end A186813

/-! ## A186813.P18042318139684356112

`n*(1-∑[(-1)^∑[n]/2])`
-/

namespace A186813.P18042318139684356112
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((-1) ^ (∑ j ∈ Finset.range (n + 1), f2 j) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) * (1 - ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A186813.P18042318139684356112

namespace A186813

/-- `n*(1-∑[(-1)^∑[n]/2])` -/
def P18042318139684356112.Spec : Prop :=
  ∀ n, P18042318139684356112.a n = (A186813 n : ℚ)

end A186813

/-! ## A186813.P17868917565957946975

`∑[(-1)^a(n-1)-a(n-2)]+n` with `a(0)=0, a(1)=0`
-/

namespace A186813.P17868917565957946975
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.rec [0, 0] fun n f1 =>
  (-1 : ℝ) ^ (f1 (n - 1)) - f1 (n - 2)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℝ)

end

end A186813.P17868917565957946975

namespace A186813

/-- `∑[(-1)^a(n-1)-a(n-2)]+n` -/
def P17868917565957946975.Spec : Prop :=
  ∀ n, P17868917565957946975.a n = (A186813 n : ℝ)

end A186813

/-! ## A186813.P4359230595671671767

`n*A164356(n)/4`
-/

namespace A186813.P4359230595671671767
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) * A164356 n : ℚ) / 4

end

end A186813.P4359230595671671767

namespace A186813

/-- `n*A164356(n)/4` -/
def P4359230595671671767.Spec : Prop :=
  ∀ n, P4359230595671671767.a n = (A186813 n : ℚ)

end A186813

/-! ## A186813.P10266486805628545499

`round(n-n/A228936(n))`
-/

namespace A186813.P10266486805628545499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n : ℚ) - (n : ℚ) / (A228936 n : ℚ))

end

end A186813.P10266486805628545499

namespace A186813

/-- `round(n-n/A228936(n))` -/
def P10266486805628545499.Spec : Prop :=
  ∀ n, P10266486805628545499.a n = A186813 n

end A186813

/-! ## A186813.P3959887633227506674

`∑[n]-n*A004524(n)`
-/

namespace A186813.P3959887633227506674
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (n : ℤ) * A004524 n

end

end A186813.P3959887633227506674

namespace A186813

/-- `∑[n]-n*A004524(n)` -/
def P3959887633227506674.Spec : Prop :=
  ∀ n, P3959887633227506674.a n = A186813 n

end A186813

/-! ## A186813.P9508372990835383057

`(lcm(n, A070432(n))+n)/2`
-/

namespace A186813.P9508372990835383057
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (n : ℤ) (A070432 n) + n : ℚ) / 2

end

end A186813.P9508372990835383057

namespace A186813

/-- `(lcm(n, A070432(n))+n)/2` -/
def P9508372990835383057.Spec : Prop :=
  ∀ n, P9508372990835383057.a n = (A186813 n : ℚ)

end A186813

/-! ## A186813.P2459718810961410691

`n*(A040451(n)%3+1)/2`
-/

namespace A186813.P2459718810961410691
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) * (Int.tmod (A040451 n) 3 + 1) : ℚ) / 2

end

end A186813.P2459718810961410691

namespace A186813

/-- `n*(A040451(n)%3+1)/2` -/
def P2459718810961410691.Spec : Prop :=
  ∀ n, P2459718810961410691.a n = (A186813 n : ℚ)

end A186813

/-! ## A186813.P11045051110845879161

`abs(ceil((n*A056594(n)-1)/2)-n)`
-/

namespace A186813.P11045051110845879161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |⌈((n : ℤ) * A056594 n - 1 : ℚ) / 2⌉ - (n : ℤ)|

end

end A186813.P11045051110845879161

namespace A186813

/-- `abs(ceil((n*A056594(n)-1)/2)-n)` -/
def P11045051110845879161.Spec : Prop :=
  ∀ n, P11045051110845879161.a n = A186813 n

end A186813

/-! ## A186813.P6371424602491810785

`A190621(n)+A142150(n)`
-/

namespace A186813.P6371424602491810785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190621 n + A142150 n

end

end A186813.P6371424602491810785

namespace A186813

/-- `A190621(n)+A142150(n)` -/
def P6371424602491810785.Spec : Prop :=
  ∀ n, P6371424602491810785.a n = A186813 n

end A186813

/-! ## A186813.P9277914962318100325

`A164355(n)-A008574(n)`
-/

namespace A186813.P9277914962318100325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164355 n - A008574 n

end

end A186813.P9277914962318100325

namespace A186813

/-- `A164355(n)-A008574(n)` -/
def P9277914962318100325.Spec : Prop :=
  ∀ n, P9277914962318100325.a n = A186813 n

end A186813

/-! ## A186813.P7828153251727676190

`n-A127365(A237420(n))`
-/

namespace A186813.P7828153251727676190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A127365 (A237420 n).toNat

end

end A186813.P7828153251727676190

namespace A186813

/-- `n-A127365(A237420(n))` -/
def P7828153251727676190.Spec : Prop :=
  ∀ n, P7828153251727676190.a n = A186813 n

end A186813

/-! ## A186813.P17088589940591481019

`A014682(n*A068073(n))`
-/

namespace A186813.P17088589940591481019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 ((n : ℤ) * A068073 n).toNat

end

end A186813.P17088589940591481019

namespace A186813

/-- `A014682(n*A068073(n))` -/
def P17088589940591481019.Spec : Prop :=
  ∀ n, P17088589940591481019.a n = A186813 n

end A186813

/-! ## A186813.P14786727166326721020

`A100855(n)%A004277(n)`
-/

namespace A186813.P14786727166326721020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A100855 n) (A004277 n)

end

end A186813.P14786727166326721020

namespace A186813

/-- `A100855(n)%A004277(n)` -/
def P14786727166326721020.Spec : Prop :=
  ∀ n, P14786727166326721020.a n = A186813 n

end A186813

/-! ## A186813.P5559282207156506697

`A164355(n)%A004277(n)`
-/

namespace A186813.P5559282207156506697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A164355 n) (A004277 n)

end

end A186813.P5559282207156506697

namespace A186813

/-- `A164355(n)%A004277(n)` -/
def P5559282207156506697.Spec : Prop :=
  ∀ n, P5559282207156506697.a n = A186813 n

end A186813

/-! ## A186813.P9493390059760655821

`n-A127365(A193356(n+1))`
-/

namespace A186813.P9493390059760655821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A127365 (A193356 (n + 1)).toNat

end

end A186813.P9493390059760655821

namespace A186813

/-- `n-A127365(A193356(n+1))` -/
def P9493390059760655821.Spec : Prop :=
  ∀ n, P9493390059760655821.a n = A186813 n

end A186813

/-!
# A186814: a(n) = smallest number m such that A002144(n) divides gcd(A002314(n)^2+1,(A002314(n)+m)^2+1).

The programs for A186814, there is no canonical definition to state claims against.
-/

/-! ## A186814.P4902901159362163343

`p?[4*n+1]-2*A002314(n+1)`
-/

namespace A186814.P4902901159362163343
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℤ) - 2 * A002314 (n + 1)

end

end A186814.P4902901159362163343

/-! ## A186814.P269722965877863143

`2*A152676(n+1)-p?[4*n+1]`
-/

namespace A186814.P269722965877863143
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A152676 (n + 1) - (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℤ)

end

end A186814.P269722965877863143

/-! ## A186814.P3789132335189922958

`A152676(n+1)-A002314(n+1)`
-/

namespace A186814.P3789132335189922958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152676 (n + 1) - A002314 (n + 1)

end

end A186814.P3789132335189922958

/-! ## A186814.P8712994962451934787

`A152676(n+1)-A177979(n+2)`
-/

namespace A186814.P8712994962451934787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152676 (n + 1) - A177979 (n + 2)

end

end A186814.P8712994962451934787

/-! ## A186814.P13851307894346266143

`abs(A336883(n+1)-A336884(n+1))`
-/

namespace A186814.P13851307894346266143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A336883 (n + 1) - A336884 (n + 1)|

end

end A186814.P13851307894346266143

/-! ## A186814.P13315165671548905243

`A002144(n+1)-2*A002314(n+1)`
-/

namespace A186814.P13315165671548905243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002144 (n + 1) - 2 * A002314 (n + 1)

end

end A186814.P13315165671548905243

/-! ## A186814.P9523424139727188802

`2*A152676(n+1)-A002144(n+1)`
-/

namespace A186814.P9523424139727188802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A152676 (n + 1) - A002144 (n + 1)

end

end A186814.P9523424139727188802

/-! ## A186814.P9505557710972766716

`A002313(n+2)-2*A002314(n+1)`
-/

namespace A186814.P9505557710972766716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002313 (n + 2) - 2 * A002314 (n + 1)

end

end A186814.P9505557710972766716

/-! ## A186814.P10980271363635692901

`2*A152676(n+1)-A002313(n+2)`
-/

namespace A186814.P10980271363635692901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A152676 (n + 1) - A002313 (n + 2)

end

end A186814.P10980271363635692901

/-! ## A186814.P7263880085690458983

`A006530(A055131(n))-2*A002314(n+1)`
-/

namespace A186814.P7263880085690458983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A055131 n).toNat - 2 * A002314 (n + 1)

end

end A186814.P7263880085690458983

/-!
# A186815: Numbers n such that n^2-10 is a prime.

The programs for A186815, there is no canonical definition to state claims against.
-/

/-! ## A186815.P14192396009271019121

`ceil(sqrt(A201313(1+n)))`
-/

namespace A186815.P14192396009271019121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A201313 (1 + n) : ℝ)⌉

end

end A186815.P14192396009271019121

/-! ## A186815.P100596983965356119

`round(sqrt(A201313(n+1)+A088837(n+1)))`
-/

namespace A186815.P100596983965356119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A201313 (n + 1) + A088837 (n + 1) : ℝ))

end

end A186815.P100596983965356119

/-! ## A186815.P2091947407677423548

`A004442(floor(sqrt(A201313(1+n))))`
-/

namespace A186815.P2091947407677423548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (Int.sqrt (A201313 (1 + n))).toNat

end

end A186815.P2091947407677423548

/-! ## A186815.P2722737005831233516

`A109613(floor(sqrt(A201313(n+1))))`
-/

namespace A186815.P2722737005831233516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109613 (Int.sqrt (A201313 (n + 1))).toNat

end

end A186815.P2722737005831233516

/-! ## A186815.P10765054729633238074

`ceil(sqrt(p?[n²-10]))`
-/

namespace A186815.P10765054729633238074
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) - 10

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℝ)⌉

end

end A186815.P10765054729633238074

/-! ## A186815.P12193894634234833730

`sqrt(p?[n²-10]+10)`
-/

namespace A186815.P12193894634234833730
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) - 10

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + 10 : ℝ)

end

end A186815.P12193894634234833730

/-!
# A186816: Half the number of (n+2)X(n+2) binary arrays with each 3X3 subblock having sum 4 or 5.

The programs for A186816, there is no canonical definition to state claims against.
-/

/-! ## A186816.P5955635608375700345

`A186825(∑[4*n]+1)`
-/

namespace A186816.P5955635608375700345
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186825 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A186816.P5955635608375700345

/-! ## A186816.P14509705447892291773

`record[A186825(Δ[A235355(n)])]`
-/

namespace A186816.P14509705447892291773
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235355 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186825 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A186816.P14509705447892291773

/-!
# A186817: Half the number of (n+2) X 3 binary arrays with each 3 X 3 subblock having sum 4 or 5.

The programs for A186817, there is no canonical definition to state claims against.
-/

/-! ## A186817.P3696157621287524370

`A186825(∑[n]+1)`
-/

namespace A186817.P3696157621287524370
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186825 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A186817.P3696157621287524370

/-! ## A186817.P3209558747520040989

`record[A010054(n)*A186825(n+1)]`
-/

namespace A186817.P3209558747520040989
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A186825 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A186817.P3209558747520040989

/-! ## A186817.P18015690255124953022

`record[A186825(n+1)/A022167(n)]`
-/

namespace A186817.P18015690255124953022
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A186825 (n + 1) : ℚ) / (A022167 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A186817.P18015690255124953022

/-! ## A186817.P5111923292049521303

`record[A186825(n+1)/A094816(n)]`
-/

namespace A186817.P5111923292049521303
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A186825 (n + 1) : ℚ) / (A094816 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A186817.P5111923292049521303

/-!
# A186818: Half the number of (n+2)X4 binary arrays with each 3X3 subblock having sum 4 or 5.

The programs for A186818, there is no canonical definition to state claims against.
-/

/-! ## A186818.P3964026046459012055

`A186825(∑[n+1]+2)`
-/

namespace A186818.P3964026046459012055
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186825 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A186818.P3964026046459012055

/-! ## A186818.P15990955478784336007

`record[A010054(n)*A186825(n+2)]`
-/

namespace A186818.P15990955478784336007
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A186825 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A186818.P15990955478784336007

/-! ## A186818.P1986800604232841678

`record[root(A186825(n+3), A157149(n+3))]`
-/

namespace A186818.P1986800604232841678
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A186825 (n + 3) : ℝ) ^ (1 / (A157149 (n + 3) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A186818.P1986800604232841678

/-!
# A186819: Half the number of (n+2)X5 binary arrays with each 3X3 subblock having sum 4 or 5.

The programs for A186819, there is no canonical definition to state claims against.
-/

/-! ## A186819.P18272172258194875708

`A186825(∑[n+2]+4)`
-/

namespace A186819.P18272172258194875708
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186825 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A186819.P18272172258194875708

/-!
# A186820: Half the number of (n+2)X6 binary arrays with each 3X3 subblock having sum 4 or 5.

The programs for A186820, there is no canonical definition to state claims against.
-/

/-! ## A186820.P2496705371758671058

`A186825(∑[n+3]+7)`
-/

namespace A186820.P2496705371758671058
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186825 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A186820.P2496705371758671058

/-!
# A186821: Half the number of (n+2)X7 binary arrays with each 3X3 subblock having sum 4 or 5.

The programs for A186821, there is no canonical definition to state claims against.
-/

/-! ## A186821.P5762178540012728094

`A186825(A374005(n+1))`
-/

namespace A186821.P5762178540012728094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186825 (A374005 (n + 1)).toNat

end

end A186821.P5762178540012728094

/-! ## A186821.P553948396684500931

`A186825(Δ[A264443(n)])`
-/

namespace A186821.P553948396684500931
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186825 (f1 (n + 1) - f1 n).toNat

end

end A186821.P553948396684500931

/-!
# A186822: Half the number of (n+2)X8 binary arrays with each 3X3 subblock having sum 4 or 5.

The programs for A186822, there is no canonical definition to state claims against.
-/

/-! ## A186822.P11081894982289125919

`A186825(A374007(n+1))`
-/

namespace A186822.P11081894982289125919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186825 (A374007 (n + 1)).toNat

end

end A186822.P11081894982289125919

/-!
# A186823: Half the number of (n+2)X9 binary arrays with each 3X3 subblock having sum 4 or 5.

The programs for A186823, there is no canonical definition to state claims against.
-/

/-! ## A186823.P10380413677077175327

`A186825(A374008(n+1))`
-/

namespace A186823.P10380413677077175327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186825 (A374008 (n + 1)).toNat

end

end A186823.P10380413677077175327

/-!
# A186824: Half the number of (n+2)X10 binary arrays with each 3X3 subblock having sum 4 or 5.

The programs for A186824, there is no canonical definition to state claims against.
-/

/-! ## A186824.P412540931992721572

`A186825(A374009(n+1))`
-/

namespace A186824.P412540931992721572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186825 (A374009 (n + 1)).toNat

end

end A186824.P412540931992721572

/-!
# A186826: Riordan array (s(x),x*S(x)) where s(x) is the g.f. of the little Schroeder numbers A001003, and S(x) is the g.f. of the large Schroeder numbers A006318.

The programs for A186826, the canonical program `A186826.P14202380123165248742` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A186826 has offset 0).

The definition of A186826 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8001 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A186826.P14202380123165248742

`A144944(∑[char[∑[n]]]²-n-1)`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A186826

/-- `A144944(∑[char[∑[n]]]²-n-1)` -/
def P14202380123165248742.Spec : Prop :=
  ∀ n, P14202380123165248742.a n = A186826 n

theorem P14202380123165248742.correct : P14202380123165248742.Spec := by
  intro n
  simp only [A186826]

end A186826

/-! ## A186826.P4797454978539372642

`A004526(A122538(n)+A080247(n))`
-/

namespace A186826.P4797454978539372642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A122538 n + A080247 n).toNat

end

end A186826.P4797454978539372642

namespace A186826

/-- `A004526(A122538(n)+A080247(n))` -/
def P4797454978539372642.Spec : Prop :=
  ∀ n, P4797454978539372642.a n = A186826 n

end A186826

/-!
# A186827: Riordan array (1-x, x(1-x)/(1+x)).

The programs for A186827, the canonical program `A186827.P7964637863669896385` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A186827 has offset 0).

The definition of A186827 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A186827.P7964637863669896385

`T(n-1,k-1)-T(n-1,k)-T(n-2,k-1)` with `a(0)=1, a(1)=-1, a(2)=1, a(3)=0`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A186827

/-- `T(n-1,k-1)-T(n-1,k)-T(n-2,k-1)` -/
def P7964637863669896385.Spec : Prop :=
  ∀ n, P7964637863669896385.a n = A186827 n

theorem P7964637863669896385.correct : P7964637863669896385.Spec := by
  intro n
  simp only [A186827]

end A186827

/-!
# A186828: Diagonal sums of number triangle A186826.

The programs for A186828, there is no canonical definition to state claims against.
-/

/-! ## A186828.P5359499361284188497

`A187180(A192455(n+1))`
-/

namespace A186828.P5359499361284188497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187180 (A192455 (n + 1)).toNat

end

end A186828.P5359499361284188497

/-! ## A186828.P2206909339337125584

`A026819(A136658(n))`
-/

namespace A186828.P2206909339337125584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026819 (A136658 n).toNat

end

end A186828.P2206909339337125584

/-!
# A186829: McKay-Thompson series of class 12A for the Monster group with a(0) = 6.

The programs for A186829, there is no canonical definition to state claims against.
-/

/-! ## A186829.P17877926243723576780

`∑{#}[n, A058571(#)*A058571(n-#)]`
-/

namespace A186829.P17877926243723576780
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), A058571 k * A058571 (n - k)

end

end A186829.P17877926243723576780

/-!
# A186830: Keith sequence for the number 197.

The programs for A186830, the canonical program `A186830.P3043214490012817517` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A186830 has offset 1).

The definition of A186830 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A186830.P3043214490012817517

`ogf((1+8x-3x^2)/(1-x-x^2-x^3))`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A186830

/-- `ogf((1+8x-3x^2)/(1-x-x^2-x^3))` -/
def P3043214490012817517.Spec : Prop :=
  ∀ n, P3043214490012817517.a n = A186830 (n + 1)

theorem P3043214490012817517.correct : P3043214490012817517.Spec := by
  intro n
  simp only [A186830, Nat.add_sub_cancel]

end A186830

/-! ## A186830.P17270852852787442165

`a(n-1)+a(n-2)+a(n-3)` with `a(0)=1, a(1)=9, a(2)=7`
-/

namespace A186830.P17270852852787442165
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 9, 7] fun n a =>
  a (n - 1) + (a (n - 2) + a (n - 3))

end

end A186830.P17270852852787442165

namespace A186830

/-- `a(n-1)+a(n-2)+a(n-3)` -/
def P17270852852787442165.Spec : Prop :=
  ∀ n, (P17270852852787442165.a n : ℤ) = A186830 (n + 1)

end A186830

/-! ## A186830.P15081373947513247603

`A214829(n)+2*A001590(n)`
-/

namespace A186830.P15081373947513247603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214829 n + 2 * A001590 n

end

end A186830.P15081373947513247603

namespace A186830

/-- `A214829(n)+2*A001590(n)` -/
def P15081373947513247603.Spec : Prop :=
  ∀ n, P15081373947513247603.a n = A186830 (n + 1)

end A186830

/-! ## A186830.P11504583040041225617

`A214827(n)+2*A020992(n)`
-/

namespace A186830.P11504583040041225617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214827 n + 2 * A020992 n

end

end A186830.P11504583040041225617

namespace A186830

/-- `A214827(n)+2*A020992(n)` -/
def P11504583040041225617.Spec : Prop :=
  ∀ n, P11504583040041225617.a n = A186830 (n + 1)

end A186830

/-! ## A186830.P9020501693149353470

`A214829(n)+Δ[Δ[A000213(n)]]`
-/

namespace A186830.P9020501693149353470
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000213 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214829 n + (f1 (n + 1) - f1 n)

end

end A186830.P9020501693149353470

namespace A186830

/-- `A214829(n)+Δ[Δ[A000213(n)]]` -/
def P9020501693149353470.Spec : Prop :=
  ∀ n, P9020501693149353470.a n = A186830 (n + 1)

end A186830

/-! ## A186830.P12391565501618992643

`A214827(n)+Δ[A141523(n+1)]`
-/

namespace A186830.P12391565501618992643
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141523 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214827 n + (f1 (n + 1) - f1 n)

end

end A186830.P12391565501618992643

namespace A186830

/-- `A214827(n)+Δ[A141523(n+1)]` -/
def P12391565501618992643.Spec : Prop :=
  ∀ n, P12391565501618992643.a n = A186830 (n + 1)

end A186830

/-! ## A186830.P11080561703942750492

`A020992(n)+A214829(n)-A000073(n)`
-/

namespace A186830.P11080561703942750492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020992 n + (A214829 n - A000073 n)

end

end A186830.P11080561703942750492

namespace A186830

/-- `A020992(n)+A214829(n)-A000073(n)` -/
def P11080561703942750492.Spec : Prop :=
  ∀ n, P11080561703942750492.a n = A186830 (n + 1)

end A186830

/-! ## A186830.P1865501896410162678

`A214827(n)+A214827(n)-A000213(n+1)`
-/

namespace A186830.P1865501896410162678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214827 n + (A214827 n - A000213 (n + 1))

end

end A186830.P1865501896410162678

namespace A186830

/-- `A214827(n)+A214827(n)-A000213(n+1)` -/
def P1865501896410162678.Spec : Prop :=
  ∀ n, P1865501896410162678.a n = A186830 (n + 1)

end A186830

/-! ## A186830.P5870698607628644097

`A354784(n+1)+A214829(n)-A354784(n)`
-/

namespace A186830.P5870698607628644097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354784 (n + 1) + (A214829 n - A354784 n)

end

end A186830.P5870698607628644097

namespace A186830

/-- `A354784(n+1)+A214829(n)-A354784(n)` -/
def P5870698607628644097.Spec : Prop :=
  ∀ n, P5870698607628644097.a n = A186830 (n + 1)

end A186830

/-! ## A186830.P17941754838501959980

`A214831(n)-A354784(n)`
-/

namespace A186830.P17941754838501959980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214831 n - A354784 n

end

end A186830.P17941754838501959980

namespace A186830

/-- `A214831(n)-A354784(n)` -/
def P17941754838501959980.Spec : Prop :=
  ∀ n, P17941754838501959980.a n = A186830 (n + 1)

end A186830

/-! ## A186830.P3413828310318340813

`A214831(n)-Δ[A000213(n)]`
-/

namespace A186830.P3413828310318340813
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000213 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214831 n - (f1 (n + 1) - f1 n)

end

end A186830.P3413828310318340813

namespace A186830

/-- `A214831(n)-Δ[A000213(n)]` -/
def P3413828310318340813.Spec : Prop :=
  ∀ n, P3413828310318340813.a n = A186830 (n + 1)

end A186830

/-! ## A186830.P6279886138097116631

`A214831(n)-2*A000073(n)`
-/

namespace A186830.P6279886138097116631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214831 n - 2 * A000073 n

end

end A186830.P6279886138097116631

namespace A186830

/-- `A214831(n)-2*A000073(n)` -/
def P6279886138097116631.Spec : Prop :=
  ∀ n, P6279886138097116631.a n = A186830 (n + 1)

end A186830

/-! ## A186830.P6959340420483949489

`2*A214827(n)-A000213(n+1)`
-/

namespace A186830.P6959340420483949489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A214827 n - A000213 (n + 1)

end

end A186830.P6959340420483949489

namespace A186830

/-- `2*A214827(n)-A000213(n+1)` -/
def P6959340420483949489.Spec : Prop :=
  ∀ n, P6959340420483949489.a n = A186830 (n + 1)

end A186830

/-! ## A186830.P4454344842742998889

`A000213(n)+A214831(n)-A000213(n+1)`
-/

namespace A186830.P4454344842742998889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000213 n + (A214831 n - A000213 (n + 1))

end

end A186830.P4454344842742998889

namespace A186830

/-- `A000213(n)+A214831(n)-A000213(n+1)` -/
def P4454344842742998889.Spec : Prop :=
  ∀ n, P4454344842742998889.a n = A186830 (n + 1)

end A186830

/-! ## A186830.P10554319359199562006

`A214831(n)-Δ[A001590(n+1)+A001590(n)]`
-/

namespace A186830.P10554319359199562006
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001590 (n + 1) + A001590 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214831 n - (f1 (n + 1) - f1 n)

end

end A186830.P10554319359199562006

namespace A186830

/-- `A214831(n)-Δ[A001590(n+1)+A001590(n)]` -/
def P10554319359199562006.Spec : Prop :=
  ∀ n, P10554319359199562006.a n = A186830 (n + 1)

end A186830

/-! ## A186830.P2520758108078259437

`A214831(n)-Δ[A000073(n+2)-A000073(n)]`
-/

namespace A186830.P2520758108078259437
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000073 (n + 2) - A000073 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214831 n - (f1 (n + 1) - f1 n)

end

end A186830.P2520758108078259437

namespace A186830

/-- `A214831(n)-Δ[A000073(n+2)-A000073(n)]` -/
def P2520758108078259437.Spec : Prop :=
  ∀ n, P2520758108078259437.a n = A186830 (n + 1)

end A186830

/-! ## A186830.P1514474115358535434

`A214831(n)-Δ[A112476(n+2)-A112476(n)]`
-/

namespace A186830.P1514474115358535434
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112476 (n + 2) - A112476 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214831 n - (f1 (n + 1) - f1 n)

end

end A186830.P1514474115358535434

namespace A186830

/-- `A214831(n)-Δ[A112476(n+2)-A112476(n)]` -/
def P1514474115358535434.Spec : Prop :=
  ∀ n, P1514474115358535434.a n = A186830 (n + 1)

end A186830

/-! ## A186830.P7946839785741388136

`A100683(n+1)+A214831(n)-A214727(n+1)`
-/

namespace A186830.P7946839785741388136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100683 (n + 1) + (A214831 n - A214727 (n + 1))

end

end A186830.P7946839785741388136

namespace A186830

/-- `A100683(n+1)+A214831(n)-A214727(n+1)` -/
def P7946839785741388136.Spec : Prop :=
  ∀ n, P7946839785741388136.a n = A186830 (n + 1)

end A186830

/-!
# A186831: Number of (n+2)X(n+2) binary arrays with 3X3 subblock sums nondecreasing rightwards and downwards.

The programs for A186831, there is no canonical definition to state claims against.
-/

/-! ## A186831.P1531051704159652301

`A186840(∑[4*n]+1)`
-/

namespace A186831.P1531051704159652301
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186840 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A186831.P1531051704159652301

/-!
# A186832: Number of (n+2)X3 binary arrays with 3X3 subblock sums nondecreasing rightwards and downwards.

The programs for A186832, there is no canonical definition to state claims against.
-/

/-! ## A186832.P5629140895122426409

`A186840(∑[n]+1)`
-/

namespace A186832.P5629140895122426409
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186840 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A186832.P5629140895122426409

/-! ## A186832.P18074795757994577001

`record[A010054(n)*A186840(n+1)]`
-/

namespace A186832.P18074795757994577001
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A186840 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A186832.P18074795757994577001

/-! ## A186832.P4856667561582196876

`record[A186840(n+1)/A008459(n)]`
-/

namespace A186832.P4856667561582196876
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A186840 (n + 1) : ℚ) / (A008459 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A186832.P4856667561582196876

/-! ## A186832.P2367584535314630430

`record[A186840(n+1)/A015109(n)]`
-/

namespace A186832.P2367584535314630430
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A186840 (n + 1) : ℚ) / (A015109 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A186832.P2367584535314630430

/-!
# A186833: Number of (n+2)X4 binary arrays with 3X3 subblock sums nondecreasing rightwards and downwards.

The programs for A186833, there is no canonical definition to state claims against.
-/

/-! ## A186833.P5729188041327756816

`A186840(∑[n+1]+2)`
-/

namespace A186833.P5729188041327756816
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186840 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A186833.P5729188041327756816

/-! ## A186833.P3144837969056088733

`record[A010054(n)*A186840(n+2)]`
-/

namespace A186833.P3144837969056088733
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A186840 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A186833.P3144837969056088733

/-! ## A186833.P8792535121806991371

`record[A023531(n)*A186840(n+3)]`
-/

namespace A186833.P8792535121806991371
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023531 n * A186840 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A186833.P8792535121806991371

/-! ## A186833.P513967598479119351

`record[gcd(A002262(n), A186840(n+2))]`
-/

namespace A186833.P513967598479119351
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A186840 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A186833.P513967598479119351

/-! ## A186833.P3191302115583596131

`record[lcm(A073423(n), A186840(n+2))]`
-/

namespace A186833.P3191302115583596131
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A073423 n) (A186840 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A186833.P3191302115583596131

/-!
# A186834: Number of (n+2)X5 binary arrays with 3X3 subblock sums nondecreasing rightwards and downwards.

The programs for A186834, there is no canonical definition to state claims against.
-/

/-! ## A186834.P16972247431156401683

`A186840(∑[n+2]+4)`
-/

namespace A186834.P16972247431156401683
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186840 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A186834.P16972247431156401683

/-!
# A186835: Number of (n+2)X6 binary arrays with 3X3 subblock sums nondecreasing rightwards and downwards.

The programs for A186835, there is no canonical definition to state claims against.
-/

/-! ## A186835.P9916346676412765000

`A186840(∑[n+3]+7)`
-/

namespace A186835.P9916346676412765000
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186840 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A186835.P9916346676412765000

/-!
# A186836: Number of (n+2)X7 binary arrays with 3X3 subblock sums nondecreasing rightwards and downwards.

The programs for A186836, there is no canonical definition to state claims against.
-/

/-! ## A186836.P14145071342522742647

`A186840(gcd(n, n+1)+∑[n+4]+10)`
-/

namespace A186836.P14145071342522742647
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186840 (Nat.gcd n (n + 1) + (∑ j ∈ Finset.range (n + 1), f1 j + 10))

end

end A186836.P14145071342522742647

/-!
# A186837: Number of (n+2)X8 binary arrays with 3X3 subblock sums nondecreasing rightwards and downwards.

The programs for A186837, there is no canonical definition to state claims against.
-/

/-! ## A186837.P2954713434131910625

`A186840(A374007(n+1))`
-/

namespace A186837.P2954713434131910625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186840 (A374007 (n + 1)).toNat

end

end A186837.P2954713434131910625

/-!
# A186838: Number of (n+2)X9 binary arrays with 3X3 subblock sums nondecreasing rightwards and downwards.

The programs for A186838, there is no canonical definition to state claims against.
-/

/-! ## A186838.P2877491142704915951

`A186840(A374008(n+1))`
-/

namespace A186838.P2877491142704915951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186840 (A374008 (n + 1)).toNat

end

end A186838.P2877491142704915951

/-!
# A186839: Number of (n+2)X10 binary arrays with 3X3 subblock sums nondecreasing rightwards and downwards.

The programs for A186839, there is no canonical definition to state claims against.
-/

/-! ## A186839.P4149982799620565923

`A186840(A374009(n+1))`
-/

namespace A186839.P4149982799620565923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186840 (A374009 (n + 1)).toNat

end

end A186839.P4149982799620565923

/-!
# A186841: Number of (n+1)X(n+1) binary arrays with no 2X2 subblock diagonal sum less antidiagonal sum equal to any horizontal or vertical neighbor 2X2 subblock diagonal sum less antidiagonal sum.

The programs for A186841, there is no canonical definition to state claims against.
-/

/-! ## A186841.P18437823592836915626

`A186850(∑[4*n]+1)`
-/

namespace A186841.P18437823592836915626
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186850 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A186841.P18437823592836915626

/-! ## A186841.P11400765059583870003

`record[A003982(n)*A186850(n+1)]`
-/

namespace A186841.P11400765059583870003
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A186850 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A186841.P11400765059583870003

/-! ## A186841.P1556613996732027961

`record[gcd(A003987(n), A186850(n+1))]`
-/

namespace A186841.P1556613996732027961
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A003987 n) (A186850 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A186841.P1556613996732027961

/-!
# A186842: Number of (n+1) X 2 binary arrays with no 2 X 2 subblock diagonal sum less antidiagonal sum equal to any horizontal or vertical neighbor 2 X 2 subblock diagonal sum less antidiagonal sum.

The programs for A186842, the canonical program `A186842.P7742548448018422640` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A186842 has offset 1).

The definition of A186842 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 197 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A186842.P13016063147298558176

`ogf((16+34x+64x^2+40x^3)/(1-x-3x^2-10x^3-8x^4))`
-/

namespace A186842.P13016063147298558176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [16, 34, 64, 40] [1, -1, -3, -10, -8] n

end

end A186842.P13016063147298558176

namespace A186842

/-- `ogf((16+34x+64x^2+40x^3)/(1-x-3x^2-10x^3-8x^4))` -/
def P13016063147298558176.Spec : Prop :=
  ∀ n, P13016063147298558176.a n = A186842 (n + 1)

end A186842

/-! ## A186842.P7742548448018422640

`a(n-1)+3*a(n-2)+10*a(n-3)+8*a(n-4)` with `a(0)=16, a(1)=50, a(2)=162, a(3)=512`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A186842

/-- `a(n-1)+3*a(n-2)+10*a(n-3)+8*a(n-4)` -/
def P7742548448018422640.Spec : Prop :=
  ∀ n, (P7742548448018422640.a n : ℤ) = A186842 (n + 1)

theorem P7742548448018422640.correct : P7742548448018422640.Spec := by
  intro n
  simp only [A186842, Nat.add_sub_cancel]

end A186842

/-! ## A186842.P2010371710519909637

`A186850(∑[n]+1)`
-/

namespace A186842.P2010371710519909637
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186850 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A186842.P2010371710519909637

namespace A186842

/-- `A186850(∑[n]+1)` -/
def P2010371710519909637.Spec : Prop :=
  ∀ n, P2010371710519909637.a n = A186842 (n + 1)

end A186842

/-! ## A186842.P18260244989330665513

`record[A010054(n)*A186850(n+1)]`
-/

namespace A186842.P18260244989330665513
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A186850 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A186842.P18260244989330665513

namespace A186842

/-- `record[A010054(n)*A186850(n+1)]` -/
def P18260244989330665513.Spec : Prop :=
  ∀ n, P18260244989330665513.a n = A186842 (n + 1)

end A186842

/-!
# A186843: Number of (n+1) X 3 binary arrays with no 2 X 2 subblock diagonal sum less antidiagonal sum equal to any horizontal or vertical neighbor 2 X 2 subblock diagonal sum less antidiagonal sum.

The programs for A186843, the canonical program `A186843.P5808596109508844562` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A186843 has offset 1).

The definition of A186843 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 154 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A186843.P5808596109508844562

`ogf((50+118x+334x^2+182x^3+46x^4+28x^5)/(1-2x-4x^2-24x^3-14x^4-3x^5-2x^6))`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A186843

/-- `ogf((50+118x+334x^2+182x^3+46x^4+28x^5)/(1-2x-4x^2-24x^3-14x^4-3x^5-2x^6))` -/
def P5808596109508844562.Spec : Prop :=
  ∀ n, P5808596109508844562.a n = A186843 (n + 1)

theorem P5808596109508844562.correct : P5808596109508844562.Spec := by
  intro n
  simp only [A186843, Nat.add_sub_cancel]

end A186843

/-! ## A186843.P471953258740585369

`A186850(∑[n+1]+2)`
-/

namespace A186843.P471953258740585369
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186850 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A186843.P471953258740585369

namespace A186843

/-- `A186850(∑[n+1]+2)` -/
def P471953258740585369.Spec : Prop :=
  ∀ n, P471953258740585369.a n = A186843 (n + 1)

end A186843

/-! ## A186843.P8069600966163487285

`record[A010054(n)*A186850(n+2)]`
-/

namespace A186843.P8069600966163487285
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A186850 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A186843.P8069600966163487285

namespace A186843

/-- `record[A010054(n)*A186850(n+2)]` -/
def P8069600966163487285.Spec : Prop :=
  ∀ n, P8069600966163487285.a n = A186843 (n + 1)

end A186843

/-! ## A186843.P11189873195309912197

`record[A186850(gcd(n+2, A141169(n)))]`
-/

namespace A186843.P11189873195309912197
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186850 (Int.gcd (n + 2 : ℤ) (A141169 n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A186843.P11189873195309912197

namespace A186843

/-- `record[A186850(gcd(n+2, A141169(n)))]` -/
def P11189873195309912197.Spec : Prop :=
  ∀ n, P11189873195309912197.a n = A186843 (n + 1)

end A186843

/-! ## A186843.P13396097548521902999

`record[gcd(A186850(n+2), A279432(n+1))]`
-/

namespace A186843.P13396097548521902999
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A186850 (n + 2)) (A279432 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A186843.P13396097548521902999

namespace A186843

/-- `record[gcd(A186850(n+2), A279432(n+1))]` -/
def P13396097548521902999.Spec : Prop :=
  ∀ n, (P13396097548521902999.a n : ℤ) = A186843 (n + 1)

end A186843

/-!
# A186844: Number of (n+1)X4 binary arrays with no 2X2 subblock diagonal sum less antidiagonal sum equal to any horizontal or vertical neighbor 2X2 subblock diagonal sum less antidiagonal sum.

The programs for A186844, there is no canonical definition to state claims against.
-/

/-! ## A186844.P7652285513381772589

`A186850(∑[n+2]+4)`
-/

namespace A186844.P7652285513381772589
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186850 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A186844.P7652285513381772589

/-!
# A186845: Number of (n+1)X5 binary arrays with no 2X2 subblock diagonal sum less antidiagonal sum equal to any horizontal or vertical neighbor 2X2 subblock diagonal sum less antidiagonal sum.

The programs for A186845, there is no canonical definition to state claims against.
-/

/-! ## A186845.P8640088643898922133

`A186850(A374004(n+1))`
-/

namespace A186845.P8640088643898922133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186850 (A374004 (n + 1)).toNat

end

end A186845.P8640088643898922133

/-! ## A186845.P15868172722268918131

`A186850(A141214(n+1))`
-/

namespace A186845.P15868172722268918131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186850 (A141214 (n + 1)).toNat

end

end A186845.P15868172722268918131

/-!
# A186846: Number of (n+1)X6 binary arrays with no 2X2 subblock diagonal sum less antidiagonal sum equal to any horizontal or vertical neighbor 2X2 subblock diagonal sum less antidiagonal sum.

The programs for A186846, there is no canonical definition to state claims against.
-/

/-! ## A186846.P7153157992373701669

`A186850(A374005(n+1))`
-/

namespace A186846.P7153157992373701669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186850 (A374005 (n + 1)).toNat

end

end A186846.P7153157992373701669

/-!
# A186847: Number of (n+1)X7 binary arrays with no 2X2 subblock diagonal sum less antidiagonal sum equal to any horizontal or vertical neighbor 2X2 subblock diagonal sum less antidiagonal sum.

The programs for A186847, there is no canonical definition to state claims against.
-/

/-! ## A186847.P12439799155421970882

`A186850(A374007(n+1))`
-/

namespace A186847.P12439799155421970882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186850 (A374007 (n + 1)).toNat

end

end A186847.P12439799155421970882

/-!
# A186848: Number of (n+1)X8 binary arrays with no 2X2 subblock diagonal sum less antidiagonal sum equal to any horizontal or vertical neighbor 2X2 subblock diagonal sum less antidiagonal sum.

The programs for A186848, there is no canonical definition to state claims against.
-/

/-! ## A186848.P103356978457493209

`A186850(A374008(n+1))`
-/

namespace A186848.P103356978457493209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186850 (A374008 (n + 1)).toNat

end

end A186848.P103356978457493209

/-!
# A186849: Number of (n+1) X 9 binary arrays with no 2 X 2 subblock diagonal sum less antidiagonal sum equal to any horizontal or vertical neighbor 2 X 2 subblock diagonal sum less antidiagonal sum.

The programs for A186849, there is no canonical definition to state claims against.
-/

/-! ## A186849.P3626192723701914259

`A186850(A374009(n+1))`
-/

namespace A186849.P3626192723701914259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186850 (A374009 (n + 1)).toNat

end

end A186849.P3626192723701914259

/-!
# A186852: Number of 3-step knight's tours on an (n+2) X (n+2) board summed over all starting positions.

The programs for A186852, the canonical program `A186852.P18054438384369363332` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A186852 has offset 1).

The definition of A186852 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2500 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A186852.P18054438384369363332

`A022144(4*n+2)²%A054275(4*n+2)`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A186852

/-- `A022144(4*n+2)²%A054275(4*n+2)` -/
def P18054438384369363332.Spec : Prop :=
  ∀ n, P18054438384369363332.a n = A186852 (n + 1)

theorem P18054438384369363332.correct : P18054438384369363332.Spec := by
  intro n
  simp only [A186852, Nat.add_sub_cancel]

end A186852

/-! ## A186852.P11110591535723901135

`8*A047276(A008574(∑[n]))`
-/

namespace A186852.P11110591535723901135
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * A047276 (A008574 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A186852.P11110591535723901135

namespace A186852

/-- `8*A047276(A008574(∑[n]))` -/
def P11110591535723901135.Spec : Prop :=
  ∀ n, P11110591535723901135.a n = A186852 (n + 1)

end A186852

/-! ## A186852.P13818012250039307198

`8*A004281(A069099(n+1))`
-/

namespace A186852.P13818012250039307198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * A004281 (A069099 (n + 1)).toNat

end

end A186852.P13818012250039307198

namespace A186852

/-- `8*A004281(A069099(n+1))` -/
def P13818012250039307198.Spec : Prop :=
  ∀ n, P13818012250039307198.a n = A186852 (n + 1)

end A186852

/-! ## A186852.P1171208041736573308

`4*A047374(A333714(n+1))`
-/

namespace A186852.P1171208041736573308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A047374 (A333714 (n + 1)).toNat

end

end A186852.P1171208041736573308

namespace A186852

/-- `4*A047374(A333714(n+1))` -/
def P1171208041736573308.Spec : Prop :=
  ∀ n, P1171208041736573308.a n = A186852 (n + 1)

end A186852

/-! ## A186852.P1363983753704632917

`A022144(A004281(∑[7*n]+1))`
-/

namespace A186852.P1363983753704632917
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022144 (A004281 (∑ j ∈ Finset.range (n + 1), f1 j + 1)).toNat

end

end A186852.P1363983753704632917

namespace A186852

/-- `A022144(A004281(∑[7*n]+1))` -/
def P1363983753704632917.Spec : Prop :=
  ∀ n, P1363983753704632917.a n = A186852 (n + 1)

end A186852

/-!
# A186853: Number of 4-step knight's tours on an (n+2) X (n+2) board summed over all starting positions.

The programs for A186853, there is no canonical definition to state claims against.
-/

/-! ## A186853.P15822348918599244581

`A186851(∑[n+3]+7)`
-/

namespace A186853.P15822348918599244581
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186851 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A186853.P15822348918599244581

/-!
# A186854: Number of 5-step knight's tours on an (n+2) X (n+2) board summed over all starting positions.

The programs for A186854, there is no canonical definition to state claims against.
-/

/-! ## A186854.P5888436286776912529

`A186851(A167499(n+3))`
-/

namespace A186854.P5888436286776912529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186851 (A167499 (n + 3)).toNat

end

end A186854.P5888436286776912529

/-!
# A186855: Number of 6-step knight's tours on an (n+2) X (n+2) board summed over all starting positions.

The programs for A186855, there is no canonical definition to state claims against.
-/

/-! ## A186855.P11962913253414677115

`A186851(A166136(n+4))`
-/

namespace A186855.P11962913253414677115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186851 (A166136 (n + 4)).toNat

end

end A186855.P11962913253414677115

/-!
# A186856: Number of 7-step knight's tours on an (n+2) X (n+2) board summed over all starting positions.

The programs for A186856, there is no canonical definition to state claims against.
-/

/-! ## A186856.P12927375509519883610

`A186851(A167487(n+5))`
-/

namespace A186856.P12927375509519883610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186851 (A167487 (n + 5)).toNat

end

end A186856.P12927375509519883610

/-!
# A186857: Number of 8-step knight's tours on an (n+2) X (n+2) board summed over all starting positions.

The programs for A186857, there is no canonical definition to state claims against.
-/

/-! ## A186857.P14218279032212877344

`A186851(eq[13, A066657(n)])`
-/

namespace A186857.P14218279032212877344
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  13

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186851 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A186857.P14218279032212877344

/-!
# A186858: G.f. A(x) satisfies A(x) = x*(A(x)^5 + 3*A(x)^4 + 4*A(x)^3 + 3*A(x)^2 + 2*A(x) + 1).

The programs for A186858, there is no canonical definition to state claims against.
-/

/-! ## A186858.P16786785631857814644

`or(n, A218654(A064306(n)))`
-/

namespace A186858.P16786785631857814644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n : ℤ) (A218654 (A064306 n).toNat)

end

end A186858.P16786785631857814644

/-! ## A186858.P3551198616788503961

`A002264(A014330(n)+char[∑[n]])`
-/

namespace A186858.P3551198616788503961
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A014330 n + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)).toNat

end

end A186858.P3551198616788503961

/-! ## A186858.P4471962051142067638

`A360102(n)+A001489(A360100(n))`
-/

namespace A186858.P4471962051142067638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360102 n + A001489 (A360100 n).toNat

end

end A186858.P4471962051142067638

/-!
# A186859: E.g.f. A(x)=exp(x^6+3*x^5+4*x^4+3*x^3+2*x^2+x).

The programs for A186859, there is no canonical definition to state claims against.
-/

/-! ## A186859.P8152757348094343553

`A014681(A293527(n)+A129375(n))`
-/

namespace A186859.P8152757348094343553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 (A293527 n + A129375 n).toNat

end

end A186859.P8152757348094343553

/-! ## A186859.P5449887767412671517

`A078934(A112242(n))-A002061(n)`
-/

namespace A186859.P5449887767412671517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078934 (A112242 n).toNat - A002061 n

end

end A186859.P5449887767412671517

/-!
# A186860: Largest coefficient of (1)(1+2x)(1+2x+3x^2)*...*(1+2x+3x^2+...+(n+1)*x^n).

The programs for A186860, there is no canonical definition to state claims against.
-/

/-! ## A186860.P7873565909895473304

`∑[A270059(n^(n+1))]`
-/

namespace A186860.P7873565909895473304
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270059 (n ^ (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A186860.P7873565909895473304

/-!
# A186862: Number of 3-step king's tours on an n X n board summed over all starting positions.

The programs for A186862, the canonical program `A186862.P7750391475606102554` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A186862 has offset 1).

The definition of A186862 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A186862.P11300268842335364986

`ogf((24x+88x^2)/(1-3x+3x^2-x^3))`
-/

namespace A186862.P11300268842335364986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 24, 88] [1, -3, 3, -1] n

end

end A186862.P11300268842335364986

namespace A186862

/-- `ogf((24x+88x^2)/(1-3x+3x^2-x^3))` -/
def P11300268842335364986.Spec : Prop :=
  ∀ n, P11300268842335364986.a n = A186862 (n + 1)

end A186862

/-! ## A186862.P7750391475606102554

`8*n*(7*(n+1)-11)`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A186862

/-- `8*n*(7*(n+1)-11)` -/
def P7750391475606102554.Spec : Prop :=
  ∀ n, P7750391475606102554.a n = A186862 (n + 1)

theorem P7750391475606102554.correct : P7750391475606102554.Spec := by
  intro n
  simp only [A186862, Nat.add_sub_cancel]

end A186862

/-! ## A186862.P16713720139449094617

`7*C(4*n, 2)-18*n`
-/

namespace A186862.P16713720139449094617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (7 * Nat.choose (4 * n) 2 : ℤ) - (18 * n : ℤ)

end

end A186862.P16713720139449094617

namespace A186862

/-- `7*C(4*n, 2)-18*n` -/
def P16713720139449094617.Spec : Prop :=
  ∀ n, P16713720139449094617.a n = A186862 (n + 1)

theorem P16713720139449094617.correct : P16713720139449094617.Spec := by
  intro n
  simp only [A186862, Nat.add_sub_cancel, A186862.P16713720139449094617.a, A186862.P7750391475606102554.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A186862

/-! ## A186862.P16871479251241747269

`8*n+16*(7*C(n, 2)+n)`
-/

namespace A186862.P16871479251241747269
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8 * n + 16 * (7 * Nat.choose n 2 + n)

end

end A186862.P16871479251241747269

namespace A186862

/-- `8*n+16*(7*C(n, 2)+n)` -/
def P16871479251241747269.Spec : Prop :=
  ∀ n, (P16871479251241747269.a n : ℤ) = A186862 (n + 1)

theorem P16871479251241747269.correct : P16871479251241747269.Spec := by
  intro n
  simp only [A186862, Nat.add_sub_cancel, A186862.P16871479251241747269.a, A186862.P7750391475606102554.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A186862

/-! ## A186862.P1068433258047475696

`7*A051870(n)+17*n`
-/

namespace A186862.P1068433258047475696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  7 * A051870 n + (17 * n : ℤ)

end

end A186862.P1068433258047475696

namespace A186862

/-- `7*A051870(n)+17*n` -/
def P1068433258047475696.Spec : Prop :=
  ∀ n, P1068433258047475696.a n = A186862 (n + 1)

theorem P1068433258047475696.correct : P1068433258047475696.Spec := by
  intro n
  simp only [A186862, Nat.add_sub_cancel, A186862.P1068433258047475696.a, A186862.P7750391475606102554.a, A051870, A051870.P3674433124874018284.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A186862

/-! ## A186862.P2930172110985705407

`2*A153808(n)+8*n²`
-/

namespace A186862.P2930172110985705407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A153808 n + (8 * n ^ 2 : ℤ)

end

end A186862.P2930172110985705407

namespace A186862

/-- `2*A153808(n)+8*n²` -/
def P2930172110985705407.Spec : Prop :=
  ∀ n, P2930172110985705407.a n = A186862 (n + 1)

theorem P2930172110985705407.correct : P2930172110985705407.Spec := by
  intro n
  simp only [A186862, Nat.add_sub_cancel, A186862.P2930172110985705407.a, A186862.P7750391475606102554.a, A153808, A153808.P12582623721954130915.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A186862

/-! ## A186862.P16674201339912409254

`A277990(n)-A182428(n)`
-/

namespace A186862.P16674201339912409254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277990 n - A182428 n

end

end A186862.P16674201339912409254

namespace A186862

/-- `A277990(n)-A182428(n)` -/
def P16674201339912409254.Spec : Prop :=
  ∀ n, P16674201339912409254.a n = A186862 (n + 1)

theorem P16674201339912409254.correct : P16674201339912409254.Spec := by
  intro n
  simp only [A186862, Nat.add_sub_cancel, A186862.P16674201339912409254.a, A186862.P7750391475606102554.a, A182428, A182428.P5992180540687048509.a, A277990, A277990.P6687017974836704064.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A186862

/-! ## A186862.P10189062480249194337

`A304378(n+1)-A033586(n)`
-/

namespace A186862.P10189062480249194337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304378 (n + 1) - A033586 n

end

end A186862.P10189062480249194337

namespace A186862

/-- `A304378(n+1)-A033586(n)` -/
def P10189062480249194337.Spec : Prop :=
  ∀ n, P10189062480249194337.a n = A186862 (n + 1)

theorem P10189062480249194337.correct : P10189062480249194337.Spec := by
  intro n
  simp only [A186862, Nat.add_sub_cancel, A186862.P10189062480249194337.a, A186862.P7750391475606102554.a, A033586, A033586.P18185911393067431697.a, A304378, A304378.P6294491038691810618.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A186862

/-! ## A186862.P372290897334034385

`A135628(A001105(n))-A174312(n)`
-/

namespace A186862.P372290897334034385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135628 (A001105 n).toNat - A174312 n

end

end A186862.P372290897334034385

namespace A186862

/-- `A135628(A001105(n))-A174312(n)` -/
def P372290897334034385.Spec : Prop :=
  ∀ n, P372290897334034385.a n = A186862 (n + 1)

end A186862

/-!
# A186863: Number of 4-step king's tours on an n X n board summed over all starting positions.

The programs for A186863, the canonical program `A186863.P15384887837498962397` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A186863 has offset 1).

The definition of A186863 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A186863.P15384887837498962397

`ogf((24x+424x^2+348x^3-60x^4)/(1-3x+3x^2-x^3))`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A186863

/-- `ogf((24x+424x^2+348x^3-60x^4)/(1-3x+3x^2-x^3))` -/
def P15384887837498962397.Spec : Prop :=
  ∀ n, P15384887837498962397.a n = A186863 (n + 1)

theorem P15384887837498962397.correct : P15384887837498962397.Spec := by
  intro n
  simp only [A186863, Nat.add_sub_cancel]

end A186863

/-! ## A186863.P356177319048042001

`A186861(∑[n+3]+7)`
-/

namespace A186863.P356177319048042001
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186861 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A186863.P356177319048042001

namespace A186863

/-- `A186861(∑[n+3]+7)` -/
def P356177319048042001.Spec : Prop :=
  ∀ n, P356177319048042001.a n = A186863 (n + 1)

end A186863

/-!
# A186864: Number of 5-step king's tours on an n X n board summed over all starting positions.

The programs for A186864, there is no canonical definition to state claims against.
-/

/-! ## A186864.P8408469419162714822

`A186861(A167499(n+3))`
-/

namespace A186864.P8408469419162714822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186861 (A167499 (n + 3)).toNat

end

end A186864.P8408469419162714822

/-!
# A186865: Number of 6-step king's tours on an n X n board summed over all starting positions.

The programs for A186865, there is no canonical definition to state claims against.
-/

/-! ## A186865.P371541761846866248

`A186861(A056115(n)+21)`
-/

namespace A186865.P371541761846866248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186861 (A056115 n + 21).toNat

end

end A186865.P371541761846866248

/-!
# A186866: Number of 7-step king's tours on an n X n board summed over all starting positions.

The programs for A186866, there is no canonical definition to state claims against.
-/

/-! ## A186866.P9304974535890471044

`A186861(eq[11, A066657(n)])`
-/

namespace A186866.P9304974535890471044
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186861 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A186866.P9304974535890471044

/-!
# A186867: Number of 8-step king's tours on an n X n board summed over all starting positions.

The programs for A186867, there is no canonical definition to state claims against.
-/

/-! ## A186867.P6707241054431444060

`A186861(eq[13, A066657(n)])`
-/

namespace A186867.P6707241054431444060
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  13

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186861 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A186867.P6707241054431444060

/-!
# A186868: Number of (n+1)X3 0..2 arrays with every 2X2 subblock sum equal to exactly one or two horizontal and vertical neighbor 2X2 subblock sums.

The programs for A186868, there is no canonical definition to state claims against.
-/

/-! ## A186868.P7344646200216080728

`A186871(∑[n+1]+2)`
-/

namespace A186868.P7344646200216080728
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186871 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A186868.P7344646200216080728

/-! ## A186868.P1164389223038916114

`record[A023531(n)*A186871(n+3)]`
-/

namespace A186868.P1164389223038916114
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023531 n * A186871 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A186868.P1164389223038916114

/-! ## A186868.P16330912159520658113

`record[A186871(n+3)/A289141(n)]`
-/

namespace A186868.P16330912159520658113
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A186871 (n + 3) : ℚ) / (A289141 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A186868.P16330912159520658113

/-! ## A186868.P2801818166663736611

`record[gcd(A173787(n), A186871(n+3))]`
-/

namespace A186868.P2801818166663736611
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A173787 n) (A186871 (n + 3))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A186868.P2801818166663736611

/-!
# A186869: Number of (n+1)X4 0..2 arrays with every 2X2 subblock sum equal to exactly one or two horizontal and vertical neighbor 2X2 subblock sums.

The programs for A186869, there is no canonical definition to state claims against.
-/

/-! ## A186869.P5116669227153252292

`A186871(∑[n+2]+4)`
-/

namespace A186869.P5116669227153252292
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186871 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A186869.P5116669227153252292

/-! ## A186869.P3101136457787359993

`record[A186871(A062891(n+5))]`
-/

namespace A186869.P3101136457787359993
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186871 (A062891 (n + 5)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A186869.P3101136457787359993

/-! ## A186869.P17001873515535367174

`record[A023531(n)*A186871(n+4)]`
-/

namespace A186869.P17001873515535367174
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023531 n * A186871 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A186869.P17001873515535367174

/-!
# A186870: Number of (n+1)X5 0..2 arrays with every 2X2 subblock sum equal to exactly one or two horizontal and vertical neighbor 2X2 subblock sums.

The programs for A186870, there is no canonical definition to state claims against.
-/

/-! ## A186870.P7435111555162926771

`A186871(A020752(n+1))`
-/

namespace A186870.P7435111555162926771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186871 (A020752 (n + 1)).toNat

end

end A186870.P7435111555162926771

/-!
# A186872: Number of (n+2)X(n+2) 0..3 arrays with every 3X3 subblock commuting with each horizontal and vertical neighbor 3X3 subblock.

The programs for A186872, there is no canonical definition to state claims against.
-/

/-! ## A186872.P11687272548593313599

`A186881(∑[4*n]+1)`
-/

namespace A186872.P11687272548593313599
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186881 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A186872.P11687272548593313599

/-!
# A186873: Number of (n+2)X3 0..3 arrays with every 3X3 subblock commuting with each horizontal and vertical neighbor 3X3 subblock.

The programs for A186873, there is no canonical definition to state claims against.
-/

/-! ## A186873.P8645648088219175626

`A186881(1+∑[n])`
-/

namespace A186873.P8645648088219175626
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186881 (1 + ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A186873.P8645648088219175626

/-!
# A186874: Number of (n+2) X 4 0..3 arrays with every 3 X 3 subblock commuting with each horizontal and vertical neighbor 3 X 3 subblock.

The programs for A186874, there is no canonical definition to state claims against.
-/

/-! ## A186874.P7512336336663181906

`A186881(∑[1+n]+2)`
-/

namespace A186874.P7512336336663181906
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186881 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A186874.P7512336336663181906

/-!
# A186875: Number of (n+2) X 5 0..3 arrays with every 3 X 3 subblock commuting with each horizontal and vertical neighbor 3 X 3 subblock.

The programs for A186875, there is no canonical definition to state claims against.
-/

/-! ## A186875.P16770772961357600443

`A186881(∑[2+n]+4)`
-/

namespace A186875.P16770772961357600443
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186881 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A186875.P16770772961357600443

/-!
# A186876: Number of (n+2) X 6 0..3 arrays with every 3 X 3 subblock commuting with each horizontal and vertical neighbor 3 X 3 subblock.

The programs for A186876, there is no canonical definition to state claims against.
-/

/-! ## A186876.P11390480601371842609

`A186881(∑[3+n]+7)`
-/

namespace A186876.P11390480601371842609
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186881 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A186876.P11390480601371842609

/-!
# A186877: Number of (n+2) X 7 0..3 arrays with every 3 X 3 subblock commuting with each horizontal and vertical neighbor 3 X 3 subblock.

The programs for A186877, there is no canonical definition to state claims against.
-/

/-! ## A186877.P2594815724963504409

`A186881(∑[n+5]-n+10)`
-/

namespace A186877.P2594815724963504409
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186881 (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (n : ℤ) + 10).toNat

end

end A186877.P2594815724963504409

/-!
# A186878: Number of (n+2)X8 0..3 arrays with every 3X3 subblock commuting with each horizontal and vertical neighbor 3X3 subblock.

The programs for A186878, there is no canonical definition to state claims against.
-/

/-! ## A186878.P9320351740494477697

`A186881(∑[n+5]+16)`
-/

namespace A186878.P9320351740494477697
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186881 (∑ j ∈ Finset.range (n + 1), f1 j + 16)

end

end A186878.P9320351740494477697

/-!
# A186879: Number of (n+2)X9 0..3 arrays with every 3X3 subblock commuting with each horizontal and vertical neighbor 3X3 subblock.

The programs for A186879, there is no canonical definition to state claims against.
-/

/-! ## A186879.P5408437005390661083

`A186881(A374008(n+1))`
-/

namespace A186879.P5408437005390661083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186881 (A374008 (n + 1)).toNat

end

end A186879.P5408437005390661083

/-!
# A186880: Number of (n+2) X 10 0..3 arrays with every 3 X 3 subblock commuting with each horizontal and vertical neighbor 3 X 3 subblock.

The programs for A186880, there is no canonical definition to state claims against.
-/

/-! ## A186880.P11516269369132448308

`A186881(A374009(n+1))`
-/

namespace A186880.P11516269369132448308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186881 (A374009 (n + 1)).toNat

end

end A186880.P11516269369132448308

/-!
# A186882: Alternatively squares and cubes with prime differences.

The programs for A186882, there is no canonical definition to state claims against.
-/

/-! ## A186882.P5232726088963013587

`A186883(n)+a(n-1)` with `a(0)=4`
-/

namespace A186882.P5232726088963013587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4] fun n a =>
  A186883 n + a (n - 1)

end

end A186882.P5232726088963013587

/-! ## A186882.P17201548446017075898

`∑[A186883(n%a(n-1))]` with `a(0)=4`
-/

namespace A186882.P17201548446017075898
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [4] fun n f1 =>
  A186883 (Int.tmod (n : ℤ) (f1 (n - 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A186882.P17201548446017075898

/-! ## A186882.P7791318798965497172

`A186883(n)+abs(a(A023443(n)))` with `a(0)=4`
-/

namespace A186882.P7791318798965497172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4] fun n a =>
  A186883 n + |a (A023443 n).toNat|

end

end A186882.P7791318798965497172

/-! ## A186882.P17259443949879146788

`A186883(n)-(A000007(n)-a(n-1))` with `a(0)=4`
-/

namespace A186882.P17259443949879146788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4] fun n a =>
  A186883 n - (A000007 n - a (n - 1))

end

end A186882.P17259443949879146788

/-! ## A186882.P4748137818659809281

`∑[A186883(n+1)]+4-A186883(n+1)`
-/

namespace A186882.P4748137818659809281
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186883 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (4 - A186883 (n + 1))

end

end A186882.P4748137818659809281

/-!
# A186883: a(n) = A186882(n+1) - A186882(n).

The programs for A186883, there is no canonical definition to state claims against.
-/

/-! ## A186883.P3371519349359913504

`A186882(n+2)-A186882(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A186883.P3371519349359913504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186882 (n + 2) - A186882 (n + 1)

end

end A186883.P3371519349359913504

/-! ## A186883.P9178772634083300809

`Δ[A186882(1+n)]`
-/

namespace A186883.P9178772634083300809
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186882 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A186883.P9178772634083300809

/-! ## A186883.P15185939147819896834

`Δ[record[A186882(A126759(n))]]`
-/

namespace A186883.P15185939147819896834
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186882 (A126759 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A186883.P15185939147819896834

/-! ## A186883.P18098081208470180659

`Δ[record[A186882(A328397(n))]]`
-/

namespace A186883.P18098081208470180659
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186882 (A328397 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A186883.P18098081208470180659

/-!
# A186884: Numbers k such that 2^(k-1) == 1 + b*k (mod k^2), where b divides k - 2^p for some integer p >= 0 and 2^p <= b.

The programs for A186884, there is no canonical definition to state claims against.
-/

/-! ## A186884.P1323620659765547238

`p?[∑[A225859(A085398(n+1))]]`
-/

namespace A186884.P1323620659765547238
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225859 (A085398 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A186884.P1323620659765547238

/-! ## A186884.P11101379218741749707

`∪[A186645(n+1), A277776(A186632(n+1))]`
-/

namespace A186884.P11101379218741749707
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186645 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277776 (A186632 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A186884.P11101379218741749707

/-! ## A186884.P4940061715913136392

`p?[Δ[(A308429(n+1)+n+1)²]]`
-/

namespace A186884.P4940061715913136392
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A308429 (n + 1) + (n + 1 : ℤ)) ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A186884.P4940061715913136392

/-! ## A186884.P3250358987938626323

`p?[comp[or(2, n)+n]*A274886(2*n)]`
-/

namespace A186884.P3250358987938626323
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 2 n + n

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n : ℤ) * A274886 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A186884.P3250358987938626323

/-! ## A186884.P4654197113370516560

`filter[A179740(n+1), A133011(#)]`
-/

namespace A186884.P4654197113370516560
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179740 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A133011 (f1 j).toNat = 1) n)

end

end A186884.P4654197113370516560

/-!
# A186885: Numbers whose squares are the average of two distinct positive cubes.

The programs for A186885, there is no canonical definition to state claims against.
-/

/-! ## A186885.P13425115781244938168

`∩[A007412(n+1), A267477(n+1)]`
-/

namespace A186885.P13425115781244938168
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007412 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267477 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A186885.P13425115781244938168

/-! ## A186885.P17030176602184664274

`sqrt(∩[A268319(n+1), n²])`
-/

namespace A186885.P17030176602184664274
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268319 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n : ℝ)

end

end A186885.P17030176602184664274

/-! ## A186885.P14886421289321177341

`sqrt(∩[A000290(n), A268319(n+1)])`
-/

namespace A186885.P14886421289321177341
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268319 (n + 1)

open Classical in
def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℝ)

end

end A186885.P14886421289321177341

/-! ## A186885.P4584131027602611411

`∩[A267477(n+1), A300564(n+1)]`
-/

namespace A186885.P4584131027602611411
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267477 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300564 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A186885.P4584131027602611411

/-!
# A186890: Numbers m such that the Stern polynomial B(m,x) is self-reciprocal.

The programs for A186890, there is no canonical definition to state claims against.
-/

/-! ## A186890.P9883902011333550877

`A200926(A080436(n+1))+A110654(n)`
-/

namespace A186890.P9883902011333550877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200926 (A080436 (n + 1)).toNat + A110654 n

end

end A186890.P9883902011333550877

/-! ## A186890.P4506961771424110116

`lt[A048158(A092112(n+1)), A033687(2*n+3)]`
-/

namespace A186890.P4506961771424110116
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048158 (A092112 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033687 (2 * n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A186890.P4506961771424110116

/-!
# A186891: Numbers m such that the Stern polynomial B(m,x) is irreducible.

The programs for A186891, there is no canonical definition to state claims against.
-/

/-! ## A186891.P10951420230117090616

`lt[A277013(1+n), 2]+1`
-/

namespace A186891.P10951420230117090616
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277013 (1 + n)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A186891.P10951420230117090616

/-! ## A186891.P5658944714449343802

`record[A283991(n+1)*n+1]`
-/

namespace A186891.P5658944714449343802
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283991 (n + 1) * (n : ℤ) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A186891.P5658944714449343802

/-! ## A186891.P14218468879284996081

`eq[1, A283991(round(1/(n+1)+n))]`
-/

namespace A186891.P14218468879284996081
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283991 (SequenceMachineLib.roundAway (1 / (n + 1 : ℚ) + (n : ℚ))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A186891.P14218468879284996081

/-! ## A186891.P10954248850727398476

`eq[1, A000009(A305899(n+1))]+1`
-/

namespace A186891.P10954248850727398476
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 (A305899 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A186891.P10954248850727398476

/-! ## A186891.P3643994266652891606

`∪[A000040(n+1), A186892(n+1)]`
-/

namespace A186891.P3643994266652891606
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186892 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A186891.P3643994266652891606

/-! ## A186891.P17244441760053887789

`∪[A008578(n+1), A186892(n+1)]`
-/

namespace A186891.P17244441760053887789
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186892 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A186891.P17244441760053887789

/-! ## A186891.P17732243031828975159

`eq[A277013(n+1), A283991(n+1)]+1`
-/

namespace A186891.P17732243031828975159
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277013 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283991 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A186891.P17732243031828975159

/-! ## A186891.P15107969241087725617

`eq[A284011(n+1), A305899(n+1)]+1`
-/

namespace A186891.P15107969241087725617
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284011 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305899 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A186891.P15107969241087725617

/-! ## A186891.P8454038196698205538

`comp[A389916(n+1)-1]+1`
-/

namespace A186891.P8454038196698205538
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389916 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A186891.P8454038196698205538

/-! ## A186891.P6662887360052700858

`fp[A283992(n+1)+1]+1`
-/

namespace A186891.P6662887360052700858
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283992 (n + 1) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (n : ℤ) < f1 j) 0 + 1

end

end A186891.P6662887360052700858

/-! ## A186891.P11785155519599840645

`comp[A023443(A389916(n+1))]+1`
-/

namespace A186891.P11785155519599840645
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A389916 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A186891.P11785155519599840645

/-! ## A186891.P17729180931502117809

`lt[A277027(n+1), 2]+1`
-/

namespace A186891.P17729180931502117809
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277027 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A186891.P17729180931502117809

/-!
# A186892: Nonprime numbers n such that the Stern polynomial B(n,x) is irreducible.

The programs for A186892, there is no canonical definition to state claims against.
-/

/-! ## A186892.P4516734888899178482

`record[n*A305892(n+1)+1]`
-/

namespace A186892.P4516734888899178482
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A305892 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A186892.P4516734888899178482

/-! ## A186892.P741737772055632935

`filter[A186891(1+n), A005171(#)]`
-/

namespace A186892.P741737772055632935
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186891 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A186892.P741737772055632935

/-! ## A186892.P9618415078398484483

`filter[A186891(1+n), A292438(#)]`
-/

namespace A186892.P9618415078398484483
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186891 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A292438 (f1 j).toNat = 1) n)

end

end A186892.P9618415078398484483

/-! ## A186892.P7184416759658395137

`∩[A090818(n+1), A186891(n+1)]`
-/

namespace A186892.P7184416759658395137
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090818 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186891 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A186892.P7184416759658395137

/-! ## A186892.P13449663566148304013

`∩[A067800(n+1), A186891(n+1)]`
-/

namespace A186892.P13449663566148304013
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067800 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186891 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A186892.P13449663566148304013

/-! ## A186892.P6895815286131010893

`∩[A014076(n+1), A186891(n+1)]`
-/

namespace A186892.P6895815286131010893
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014076 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186891 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A186892.P6895815286131010893

/-! ## A186892.P5664016505029260827

`∩[A186891(n+1), A264828(n+1)]`
-/

namespace A186892.P5664016505029260827
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186891 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264828 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A186892.P5664016505029260827

/-! ## A186892.P10832469506163783013

`∩[A018252(n+1), A186891(n+1)]`
-/

namespace A186892.P10832469506163783013
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186891 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A186892.P10832469506163783013

/-! ## A186892.P11899296702030005456

`∩[A141468(n+1), A186891(n+1)]`
-/

namespace A186892.P11899296702030005456
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141468 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186891 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A186892.P11899296702030005456

/-! ## A186892.P4196185346961969322

`∩[A171993(n+1), A186891(n+1)]`
-/

namespace A186892.P4196185346961969322
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171993 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186891 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A186892.P4196185346961969322

/-! ## A186892.P125941821123004388

`∩[A186891(n+1), A325037(n+1)]`
-/

namespace A186892.P125941821123004388
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186891 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325037 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A186892.P125941821123004388

/-! ## A186892.P13928744591950951719

`∩[A186891(n+1), A257586(n+1)]`
-/

namespace A186892.P13928744591950951719
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186891 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257586 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A186892.P13928744591950951719

/-! ## A186892.P4479478979999467856

`∩[A164276(n+1), A186891(n+1)]`
-/

namespace A186892.P4479478979999467856
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164276 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186891 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A186892.P4479478979999467856

/-! ## A186892.P2262310052097336611

`∩[A056653(n+1), A186891(n+1)]`
-/

namespace A186892.P2262310052097336611
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056653 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186891 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A186892.P2262310052097336611

/-! ## A186892.P2563990740313039418

`A109613(record[n*A305892(n+1)])`
-/

namespace A186892.P2563990740313039418
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A305892 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109613 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A186892.P2563990740313039418

/-! ## A186892.P2025538855250103824

`record[A005451(A186891(n+1))]`
-/

namespace A186892.P2025538855250103824
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005451 (A186891 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A186892.P2025538855250103824

/-!
# A186893: Numbers m such that the Stern polynomial B(m,x) is irreducible and self-reciprocal.

The programs for A186893, there is no canonical definition to state claims against.
-/

/-! ## A186893.P9463451209360096125

`∩[A186890(n+1), A186891(n+1)]`
-/

namespace A186893.P9463451209360096125
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186890 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186891 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A186893.P9463451209360096125

/-! ## A186893.P14645091896020914646

`and(∑[2^n], A305859(floor(((2^n+1)/2)²)))`
-/

namespace A186893.P14645091896020914646
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) (A305859 ⌊((2 ^ n + 1 : ℚ) / 2) ^ 2⌋.toNat)

end

end A186893.P14645091896020914646

/-! ## A186893.P6044331430540173773

`2*A341019(A163834(n))+1`
-/

namespace A186893.P6044331430540173773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A341019 (A163834 n).toNat + 1

end

end A186893.P6044331430540173773

/-! ## A186893.P5071155513706954459

`record[A020639(A186890(n+1)²)]`
-/

namespace A186893.P5071155513706954459
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A186890 (n + 1) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A186893.P5071155513706954459

/-!
# A186894: Number of (n+1)X(n+1) binary arrays with every 2X2 subblock determinant equal to exactly one or two horizontal and vertical neighbor 2X2 subblock determinants.

The programs for A186894, there is no canonical definition to state claims against.
-/

/-! ## A186894.P5876334199137541073

`A186902(∑[4*n]+1)`
-/

namespace A186894.P5876334199137541073
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186902 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A186894.P5876334199137541073

/-! ## A186894.P8141302644377503083

`record[A003982(n)*A186902(n+1)]`
-/

namespace A186894.P8141302644377503083
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A186902 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A186894.P8141302644377503083

/-!
# A186895: Number of (n+1)X3 binary arrays with every 2X2 subblock determinant equal to exactly one or two horizontal and vertical neighbor 2X2 subblock determinants.

The programs for A186895, there is no canonical definition to state claims against.
-/

/-! ## A186895.P14502915859843079702

`A186902(∑[n+1]+2)`
-/

namespace A186895.P14502915859843079702
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186902 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A186895.P14502915859843079702

/-!
# A186896: Number of (n+1)X4 binary arrays with every 2X2 subblock determinant equal to exactly one or two horizontal and vertical neighbor 2X2 subblock determinants.

The programs for A186896, there is no canonical definition to state claims against.
-/

/-! ## A186896.P3580364952275539276

`A186902(∑[n+2]+4)`
-/

namespace A186896.P3580364952275539276
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186902 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A186896.P3580364952275539276

/-!
# A186897: Number of (n+1)X5 binary arrays with every 2X2 subblock determinant equal to exactly one or two horizontal and vertical neighbor 2X2 subblock determinants.

The programs for A186897, there is no canonical definition to state claims against.
-/

/-! ## A186897.P12811950342036232042

`A186902(∑[n+3]+7)`
-/

namespace A186897.P12811950342036232042
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186902 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A186897.P12811950342036232042

/-!
# A186898: Number of (n+1) X 6 binary arrays with every 2 X 2 subblock determinant equal to exactly one or two horizontal and vertical neighbor 2 X 2 subblock determinants.

The programs for A186898, there is no canonical definition to state claims against.
-/

/-! ## A186898.P8787627433799960517

`A186902(A374005(n+1))`
-/

namespace A186898.P8787627433799960517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186902 (A374005 (n + 1)).toNat

end

end A186898.P8787627433799960517

/-! ## A186898.P3375460544152372065

`A186902(Δ[A264443(n)])`
-/

namespace A186898.P3375460544152372065
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186902 (f1 (n + 1) - f1 n).toNat

end

end A186898.P3375460544152372065

/-!
# A186899: Number of (n+1)X7 binary arrays with every 2X2 subblock determinant equal to exactly one or two horizontal and vertical neighbor 2X2 subblock determinants.

The programs for A186899, there is no canonical definition to state claims against.
-/

/-! ## A186899.P3516907648659148888

`A186902(A374007(n+1))`
-/

namespace A186899.P3516907648659148888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186902 (A374007 (n + 1)).toNat

end

end A186899.P3516907648659148888

