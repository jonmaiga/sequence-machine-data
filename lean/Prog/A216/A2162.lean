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
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C032
import Seq.B000.C033
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
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
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
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
import Seq.Opaque.C018
import Seq.Opaque.C019
import Seq.Opaque.C020
import Seq.Opaque.C021
import Seq.Opaque.C022
import Seq.Opaque.C023
import Seq.Opaque.C024
import Seq.Opaque.C025

/-!
# A216200: Number of disjoint trees that appear while iterating the sum of divisors function up to n.

The programs for A216200, there is no canonical definition to state claims against.
-/

/-! ## A216200.P3239037650446990674

`a(n-1)+1-A054973(n+1)` with `a(0)=1`
-/

namespace A216200.P3239037650446990674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (1 - A054973 (n + 1))

end

end A216200.P3239037650446990674

/-! ## A216200.P443735431978530706

`∑[1-A054973(n+1)]+1`
-/

namespace A216200.P443735431978530706
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A054973 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A216200.P443735431978530706

/-! ## A216200.P16213875214829111236

`1-∑[A023443(A054973(n+1))]`
-/

namespace A216200.P16213875214829111236
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A054973 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A216200.P16213875214829111236

/-! ## A216200.P8979175741578381874

`∑[A054977(n)-A054973(n+1)]`
-/

namespace A216200.P8979175741578381874
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n - A054973 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A216200.P8979175741578381874

/-! ## A216200.P1830719524119518274

`2-A074753(n+2)+n`
-/

namespace A216200.P1830719524119518274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A074753 (n + 2) + (n : ℤ)

end

end A216200.P1830719524119518274

/-! ## A216200.P3458554400635753830

`A004736(∑[A054973(n+1)+n])`
-/

namespace A216200.P3458554400635753830
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054973 (n + 1) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A216200.P3458554400635753830

/-! ## A216200.P14474495985269502572

`A025581(∑[A054973(n+1)+n]+n)`
-/

namespace A216200.P14474495985269502572
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054973 (n + 1) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 (∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)).toNat

end

end A216200.P14474495985269502572

/-!
# A216201: Square array T, read by antidiagonals : T(n,k) = 0 if n-k>=3 or if k-n>=4, T(2,0) = T(1,0) = T(0,0) = T(0,1) = T(0,2) = T(0,3) = 1, T(n,k) = T(n-1,k) + T(n,k-1).

The programs for A216201, there is no canonical definition to state claims against.
-/

/-! ## A216201.P9748028635975248331

`and(A046048(A222479(n+1)), A216232(n))`
-/

namespace A216201.P9748028635975248331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A046048 (A222479 (n + 1)).toNat) (A216232 n)

end

end A216201.P9748028635975248331

/-! ## A216201.P1219720737436048388

`A216210(n)-A003982(A060538(n+1))`
-/

namespace A216201.P1219720737436048388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216210 n - A003982 (A060538 (n + 1)).toNat

end

end A216201.P1219720737436048388

/-! ## A216201.P15763651859866699706

`A161996(A011782(n))+A014473(n)`
-/

namespace A216201.P15763651859866699706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161996 (A011782 n).toNat + A014473 n

end

end A216201.P15763651859866699706

/-! ## A216201.P13049451872980062633

`A216210(n)-A025469(A019320(n))`
-/

namespace A216201.P13049451872980062633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216210 n - A025469 (A019320 n).toNat

end

end A216201.P13049451872980062633

/-! ## A216201.P1873757715823563605

`A007318(n)-A011734(A008965(n+1))`
-/

namespace A216201.P1873757715823563605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n - A011734 (A008965 (n + 1)).toNat

end

end A216201.P1873757715823563605

/-!
# A216206: a(n) = Product_{i=1..n} ((-2)^i-1).

The programs for A216206, there is no canonical definition to state claims against.
-/

/-! ## A216206.P3096125958193541433

`(-3)^n*A015013(n)`
-/

namespace A216206.P3096125958193541433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-3) ^ n * A015013 n

end

end A216206.P3096125958193541433

/-! ## A216206.P11666814430156189797

`∏[(-2)^n-ceil(abs(sin(n)))]`
-/

namespace A216206.P11666814430156189797
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-2) ^ n - ⌈|Real.sin (n : ℝ)|⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A216206.P11666814430156189797

/-! ## A216206.P10123890176272963314

`∏[(-2)^n+floor(acot(n))-1]`
-/

namespace A216206.P10123890176272963314
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-2) ^ n + (⌊SequenceMachineLib.acot (n : ℝ)⌋ - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A216206.P10123890176272963314

/-! ## A216206.P646428312192956970

`((-2)^n-1)*a(n-1)` with `a(0)=1`
-/

namespace A216206.P646428312192956970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ((-2) ^ n - 1) * a (n - 1)

end

end A216206.P646428312192956970

/-! ## A216206.P3314364109929266759

`a(n-1)/((-2)^n-1)^(-1)` with `a(0)=1`
-/

namespace A216206.P3314364109929266759
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) / ((-2) ^ n - 1 : ℚ) ^ (-1 : ℤ)

end

end A216206.P3314364109929266759

/-!
# A216209: Triangle read by rows: T(n,k) = n+k with 0 <= k <= 2*n.

The programs for A216209, the canonical program `A216209.P7915136401802513630` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A216209 has offset 0).

The definition of A216209 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A216209.P7915136401802513630

`n-2*C(floor(sqrt(n)), 2)`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A216209

/-- `n-2*C(floor(sqrt(n)), 2)` -/
def P7915136401802513630.Spec : Prop :=
  ∀ n, P7915136401802513630.a n = A216209 n

theorem P7915136401802513630.correct : P7915136401802513630.Spec := by
  intro n
  simp only [A216209]

end A216209

/-! ## A216209.P18210362361663726066

`floor(sqrt(n)+n-floor(sqrt(n))²)`
-/

namespace A216209.P18210362361663726066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sqrt (n : ℝ) + ((n : ℤ) - (Nat.sqrt n ^ 2 : ℤ) : ℝ)⌋

end

end A216209.P18210362361663726066

namespace A216209

/-- `floor(sqrt(n)+n-floor(sqrt(n))²)` -/
def P18210362361663726066.Spec : Prop :=
  ∀ n, P18210362361663726066.a n = A216209 n

end A216209

/-! ## A216209.P15841086180864652097

`abs(2*C(∑[char[(n+1)²]], 2)-n)`
-/

namespace A216209.P15841086180864652097
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(2 * Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 : ℤ) - (n : ℤ)|

end

end A216209.P15841086180864652097

namespace A216209

/-- `abs(2*C(∑[char[(n+1)²]], 2)-n)` -/
def P15841086180864652097.Spec : Prop :=
  ∀ n, P15841086180864652097.a n = A216209 n

end A216209

/-! ## A216209.P1200364235144541680

`comp[record[(1-n)²-n]]-floor(sqrt(n))²`
-/

namespace A216209.P1200364235144541680
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - (n : ℤ)) ^ 2 - (n : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - (Nat.sqrt n ^ 2 : ℤ)

end

end A216209.P1200364235144541680

namespace A216209

/-- `comp[record[(1-n)²-n]]-floor(sqrt(n))²` -/
def P1200364235144541680.Spec : Prop :=
  ∀ n, P1200364235144541680.a n = A216209 n

end A216209

/-! ## A216209.P4627075892065776519

`2*(n/2-C(∑[char[(n+1)²]], 2))`
-/

namespace A216209.P4627075892065776519
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 * ((n : ℚ) / 2 - (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 : ℚ))

end

end A216209.P4627075892065776519

namespace A216209

/-- `2*(n/2-C(∑[char[(n+1)²]], 2))` -/
def P4627075892065776519.Spec : Prop :=
  ∀ n, P4627075892065776519.a n = (A216209 n : ℚ)

end A216209

/-! ## A216209.P1653972132362089821

`2*(n-C(∑[char[(n+1)²]], 2))-n`
-/

namespace A216209.P1653972132362089821
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ((n : ℤ) - (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 : ℤ)) - (n : ℤ)

end

end A216209.P1653972132362089821

namespace A216209

/-- `2*(n-C(∑[char[(n+1)²]], 2))-n` -/
def P1653972132362089821.Spec : Prop :=
  ∀ n, P1653972132362089821.a n = A216209 n

end A216209

/-! ## A216209.P840952963107748112

`comp[lcm(n-2, n-1)]-1-floor(sqrt(n))²`
-/

namespace A216209.P840952963107748112
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((n : ℤ) - 2) ((n : ℤ) - 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - 1 - (Nat.sqrt n ^ 2 : ℤ)

end

end A216209.P840952963107748112

namespace A216209

/-- `comp[lcm(n-2, n-1)]-1-floor(sqrt(n))²` -/
def P840952963107748112.Spec : Prop :=
  ∀ n, P840952963107748112.a n = A216209 n

end A216209

/-! ## A216209.P12421874933872469279

`comp[record[(1-n)²]+n]-∑[char[record[(1-n)²]]]²`
-/

namespace A216209.P12421874933872469279
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - (n : ℤ)) ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n) + (n : ℤ)

def f5 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - (n : ℤ)) ^ 2

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f5 (SequenceMachineLib.nth (fun j => ∀ l < j, f5 l < f5 j) n)

open Classical in
def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f4 j = (n : ℤ) then 1 else 0

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - (((∑ j ∈ Finset.range (n + 1), f3 j) ^ 2 : ℕ) : ℤ)

end

end A216209.P12421874933872469279

namespace A216209

/-- `comp[record[(1-n)²]+n]-∑[char[record[(1-n)²]]]²` -/
def P12421874933872469279.Spec : Prop :=
  ∀ n, P12421874933872469279.a n = A216209 n

end A216209

/-! ## A216209.P6074411307763393273

`comp[n²-1+n]-∑[char[n^(2%(n+1))]]²`
-/

namespace A216209.P6074411307763393273
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) - 1 + (n : ℤ)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ (2 % (n + 1))

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = n then 1 else 0

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - (((∑ j ∈ Finset.range (n + 1), f2 j) ^ 2 : ℕ) : ℤ)

end

end A216209.P6074411307763393273

namespace A216209

/-- `comp[n²-1+n]-∑[char[n^(2%(n+1))]]²` -/
def P6074411307763393273.Spec : Prop :=
  ∀ n, P6074411307763393273.a n = A216209 n

end A216209

/-! ## A216209.P1378685367288391169

`comp[or(1, n*(n+3))]-(comp[n²+n]-(n+1))²`
-/

namespace A216209.P1378685367288391169
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (n * (n + 3))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2 + n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - ((SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n : ℤ) - (n + 1 : ℤ)) ^ 2

end

end A216209.P1378685367288391169

namespace A216209

/-- `comp[or(1, n*(n+3))]-(comp[n²+n]-(n+1))²` -/
def P1378685367288391169.Spec : Prop :=
  ∀ n, P1378685367288391169.a n = A216209 n

end A216209

/-! ## A216209.P9814187554387830819

`A053186(n)+A000196(n)`
-/

namespace A216209.P9814187554387830819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053186 n + A000196 n

end

end A216209.P9814187554387830819

namespace A216209

/-- `A053186(n)+A000196(n)` -/
def P9814187554387830819.Spec : Prop :=
  ∀ n, P9814187554387830819.a n = A216209 n

end A216209

/-! ## A216209.P16981515966682751591

`n-A028391(A048760(n))`
-/

namespace A216209.P16981515966682751591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A028391 (A048760 n).toNat

end

end A216209.P16981515966682751591

namespace A216209

/-- `n-A028391(A048760(n))` -/
def P16981515966682751591.Spec : Prop :=
  ∀ n, P16981515966682751591.a n = A216209 n

end A216209

/-! ## A216209.P9239816473343428978

`A028392(n)-A048760(n)`
-/

namespace A216209.P9239816473343428978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028392 n - A048760 n

end

end A216209.P9239816473343428978

namespace A216209

/-- `A028392(n)-A048760(n)` -/
def P9239816473343428978.Spec : Prop :=
  ∀ n, P9239816473343428978.a n = A216209 n

end A216209

/-! ## A216209.P11460075757612128905

`A094761(n)-A028391(n)`
-/

namespace A216209.P11460075757612128905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094761 n - A028391 n

end

end A216209.P11460075757612128905

namespace A216209

/-- `A094761(n)-A028391(n)` -/
def P11460075757612128905.Spec : Prop :=
  ∀ n, P11460075757612128905.a n = A216209 n

end A216209

/-! ## A216209.P11136378464738711016

`n-A028391(A000196(n)²)`
-/

namespace A216209.P11136378464738711016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A028391 (A000196 n ^ 2).toNat

end

end A216209.P11136378464738711016

namespace A216209

/-- `n-A028391(A000196(n)²)` -/
def P11136378464738711016.Spec : Prop :=
  ∀ n, P11136378464738711016.a n = A216209 n

end A216209

/-! ## A216209.P4419728271429564855

`A028392(n)-A000196(n)²`
-/

namespace A216209.P4419728271429564855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028392 n - A000196 n ^ 2

end

end A216209.P4419728271429564855

namespace A216209

/-- `A028392(n)-A000196(n)²` -/
def P4419728271429564855.Spec : Prop :=
  ∀ n, P4419728271429564855.a n = A216209 n

end A216209

/-! ## A216209.P6845052592982946850

`n-A056847(A000196(n)²)`
-/

namespace A216209.P6845052592982946850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A056847 (A000196 n ^ 2).toNat

end

end A216209.P6845052592982946850

namespace A216209

/-- `n-A056847(A000196(n)²)` -/
def P6845052592982946850.Spec : Prop :=
  ∀ n, P6845052592982946850.a n = A216209 n

end A216209

/-! ## A216209.P642884575827107672

`n-A064877(A000196(n)²)`
-/

namespace A216209.P642884575827107672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A064877 (A000196 n ^ 2).toNat

end

end A216209.P642884575827107672

namespace A216209

/-- `n-A064877(A000196(n)²)` -/
def P642884575827107672.Spec : Prop :=
  ∀ n, P642884575827107672.a n = A216209 n

end A216209

/-! ## A216209.P13396089377185680959

`A053186(n)+sqrt(A048760(n))`
-/

namespace A216209.P13396089377185680959
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A053186 n : ℝ) + Real.sqrt (A048760 n : ℝ)

end

end A216209.P13396089377185680959

namespace A216209

/-- `A053186(n)+sqrt(A048760(n))` -/
def P13396089377185680959.Spec : Prop :=
  ∀ n, P13396089377185680959.a n = (A216209 n : ℝ)

end A216209

/-! ## A216209.P3183984537750340282

`A277425(n+1)-A000196(n)`
-/

namespace A216209.P3183984537750340282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277425 (n + 1) - A000196 n

end

end A216209.P3183984537750340282

namespace A216209

/-- `A277425(n+1)-A000196(n)` -/
def P3183984537750340282.Spec : Prop :=
  ∀ n, P3183984537750340282.a n = A216209 n

end A216209

/-!
# A216210: Square array T read by antidiagonals: T(n,k) = 0 if n-k>=4 or if k-n>=4, T(3,0) = T(2,0) = TT(1,0) = T(0,0) = T(0,1) = T(0,2) = T(0,3) = 1, T(n,k) = T(n-1,k) + T(n,k-1).

The programs for A216210, there is no canonical definition to state claims against.
-/

/-! ## A216210.P827444076704111069

`A007318(n)-A347579(A299388(n+1))`
-/

namespace A216210.P827444076704111069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n - A347579 (A299388 (n + 1)).toNat

end

end A216210.P827444076704111069

/-! ## A216210.P9018960641716698343

`and(A007318(n), A046048(A222479(n+1)))`
-/

namespace A216210.P9018960641716698343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A007318 n) (A046048 (A222479 (n + 1)).toNat)

end

end A216210.P9018960641716698343

/-! ## A216210.P13800732874477148987

`A007318(n)-A082784(A059366(n))`
-/

namespace A216210.P13800732874477148987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n - A082784 (A059366 n).toNat

end

end A216210.P13800732874477148987

/-! ## A216210.P17844726261760897915

`A329052(n)-A160753(A304926(n+1))`
-/

namespace A216210.P17844726261760897915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329052 n - A160753 (A304926 (n + 1)).toNat

end

end A216210.P17844726261760897915

/-! ## A216210.P18043452506640657928

`and(A007318(n), A112725(1-∑{digits}[n, #]+n))`
-/

namespace A216210.P18043452506640657928
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A007318 n) (A112725 (1 - ((((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum : ℕ) : ℤ) + (n : ℤ)).toNat)

end

end A216210.P18043452506640657928

/-!
# A216211: Number of self-avoiding walks of any length from NW to SW corners of a grid or lattice with n rows and 4 columns.

The programs for A216211, there is no canonical definition to state claims against.
-/

/-! ## A216211.P10314701840754809544

`A271465(A141214(n+1))`
-/

namespace A216211.P10314701840754809544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271465 (A141214 (n + 1)).toNat

end

end A216211.P10314701840754809544

/-! ## A216211.P14397443924915773233

`A271465(A027379(n+2))`
-/

namespace A216211.P14397443924915773233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271465 (A027379 (n + 2)).toNat

end

end A216211.P14397443924915773233

/-! ## A216211.P5380816908058744454

`A271465(A155212(n)+5)`
-/

namespace A216211.P5380816908058744454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271465 (A155212 n + 5).toNat

end

end A216211.P5380816908058744454

/-! ## A216211.P3666991852664545673

`A271465(A056000(n)+7)`
-/

namespace A216211.P3666991852664545673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271465 (A056000 n + 7).toNat

end

end A216211.P3666991852664545673

/-! ## A216211.P15918330672016323662

`A271465(eq[3, A193592(n)])`
-/

namespace A216211.P15918330672016323662
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271465 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A216211.P15918330672016323662

/-!
# A216212: Number of n step walks (each step +-1 starting from 0) which are never more than 4 or less than -4.

The programs for A216212, the canonical program `A216212.P12229262614483568052` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A216212 has offset 0).

The definition of A216212 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A216212.P12229262614483568052

`5*a(n-2)-5*a(n-4)` with `a(0)=1, a(1)=2, a(2)=4, a(3)=8, a(4)=16`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A216212

/-- `5*a(n-2)-5*a(n-4)` -/
def P12229262614483568052.Spec : Prop :=
  ∀ n, P12229262614483568052.a n = A216212 n

theorem P12229262614483568052.correct : P12229262614483568052.Spec := by
  intro n
  simp only [A216212]

end A216212

/-! ## A216212.P6208212693871287017

`record[A068913(A167499(n)-1)]`
-/

namespace A216212.P6208212693871287017
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068913 (A167499 n - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A216212.P6208212693871287017

namespace A216212

/-- `record[A068913(A167499(n)-1)]` -/
def P6208212693871287017.Spec : Prop :=
  ∀ n, P6208212693871287017.a n = A216212 n

end A216212

/-! ## A216212.P5748610559548069292

`record[A068913(A167487(n)-3)]`
-/

namespace A216212.P5748610559548069292
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068913 (A167487 n - 3).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A216212.P5748610559548069292

namespace A216212

/-- `record[A068913(A167487(n)-3)]` -/
def P5748610559548069292.Spec : Prop :=
  ∀ n, P5748610559548069292.a n = A216212 n

end A216212

/-! ## A216212.P14084720814403059102

`record[A068913(A000096(n)+5)]`
-/

namespace A216212.P14084720814403059102
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068913 (A000096 n + 5).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A216212.P14084720814403059102

namespace A216212

/-- `record[A068913(A000096(n)+5)]` -/
def P14084720814403059102.Spec : Prop :=
  ∀ n, P14084720814403059102.a n = A216212 n

end A216212

/-! ## A216212.P4591538645763189516

`A068913(A000096(n+3)+5)`
-/

namespace A216212.P4591538645763189516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068913 (A000096 (n + 3) + 5).toNat

end

end A216212.P4591538645763189516

namespace A216212

/-- `A068913(A000096(n+3)+5)` -/
def P4591538645763189516.Spec : Prop :=
  ∀ n, P4591538645763189516.a n = A216212 n

end A216212

/-! ## A216212.P12223685539406427941

`record[A068913(A061579(A052905(n)))]`
-/

namespace A216212.P12223685539406427941
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068913 (A061579 (A052905 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A216212.P12223685539406427941

namespace A216212

/-- `record[A068913(A061579(A052905(n)))]` -/
def P12223685539406427941.Spec : Prop :=
  ∀ n, P12223685539406427941.a n = A216212 n

end A216212

/-!
# A216214: Number of (strongly) superprimitive binary sequences of length n.

The programs for A216214, there is no canonical definition to state claims against.
-/

/-! ## A216214.P5803881199816161447

`A061773(A000119(3^n))`
-/

namespace A216214.P5803881199816161447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061773 (A000119 (3 ^ n)).toNat

end

end A216214.P5803881199816161447

/-! ## A216214.P17866874082940668110

`A123576(A123552(2*(n+1))+7)`
-/

namespace A216214.P17866874082940668110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123576 (A123552 (2 * (n + 1)) + 7).toNat

end

end A216214.P17866874082940668110

/-! ## A216214.P5336351446102096331

`A093997(A001047(n))+A006498(n)`
-/

namespace A216214.P5336351446102096331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093997 (A001047 n).toNat + A006498 n

end

end A216214.P5336351446102096331

/-! ## A216214.P17684399620131211391

`A135223(or(A171565(n), A241891(n)))`
-/

namespace A216214.P17684399620131211391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135223 (Int.lor (A171565 n) (A241891 n)).toNat

end

end A216214.P17684399620131211391

/-! ## A216214.P1196493383410834723

`∑[A073090(n)]-A000007(A127548(n))`
-/

namespace A216214.P1196493383410834723
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073090 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A000007 (A127548 n).toNat

end

end A216214.P1196493383410834723

/-!
# A216215: Number of (weakly) superprimitive binary sequences of length n.

The programs for A216215, there is no canonical definition to state claims against.
-/

/-! ## A216215.P11405802710933080965

`2^n-A320434(A028310(n))`
-/

namespace A216215.P11405802710933080965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - A320434 (A028310 n).toNat

end

end A216215.P11405802710933080965

/-! ## A216215.P14212003840361622733

`A055086(A056570(n))+A007748(n+1)`
-/

namespace A216215.P14212003840361622733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055086 (A056570 n).toNat + A007748 (n + 1)

end

end A216215.P14212003840361622733

/-! ## A216215.P480589610906890320

`2^n-A324827(A324801(n+1))`
-/

namespace A216215.P480589610906890320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - A324827 (A324801 (n + 1)).toNat

end

end A216215.P480589610906890320

/-! ## A216215.P2463907250106037520

`A174427(A060818(n))+A000225(n)`
-/

namespace A216215.P2463907250106037520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174427 (A060818 n).toNat + A000225 n

end

end A216215.P2463907250106037520

/-!
# A216216: Square array T, read by antidiagonals: T(n,k) = 0 if n-k>=3 or if k-n>=3, T(2,0) = T(1,0) = T(0,0) = T(0,1) = T(0,2) = 1, T(n,k) = T(n-1,k) + T(n,k-1).

The programs for A216216, there is no canonical definition to state claims against.
-/

/-! ## A216216.P4562892813287689027

`C(A007814(A223048(n+1)), floor(n^(1/3)))`
-/

namespace A216216.P4562892813287689027
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A007814 (A223048 (n + 1)).toNat).toNat ⌊(n : ℝ) ^ ((1 : ℚ) / 3 : ℝ)⌋.toNat

end

end A216216.P4562892813287689027

/-! ## A216216.P2848545454409695221

`A062892(A000749(n))+A048720(n)`
-/

namespace A216216.P2848545454409695221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062892 (A000749 n).toNat + A048720 n

end

end A216216.P2848545454409695221

/-! ## A216216.P17006655932531020492

`A328361(A116645(n))+A014473(n)`
-/

namespace A216216.P17006655932531020492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328361 (A116645 n).toNat + A014473 n

end

end A216216.P17006655932531020492

/-! ## A216216.P14203460428195466735

`A007318(n)-A066247(A083329(n))`
-/

namespace A216216.P14203460428195466735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n - A066247 (A083329 n).toNat

end

end A216216.P14203460428195466735

/-! ## A216216.P14393358225817191534

`A007318(n)-A264442(A023431(n))`
-/

namespace A216216.P14393358225817191534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n - A264442 (A023431 n).toNat

end

end A216216.P14393358225817191534

/-!
# A216218: Square array T, read by antidiagonals: T(n,k) = 0 if n-k>=2 or if k-n>=2, T(1,0) = T(0,0) = T(0,1) = 1, T(n,k) = T(n-1,k) + T(n,k-1).

The programs for A216218, there is no canonical definition to state claims against.
-/

/-! ## A216218.P13563494538062000161

`A216228(A007401(n+1))`
-/

namespace A216218.P13563494538062000161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216228 (A007401 (n + 1)).toNat

end

end A216218.P13563494538062000161

/-! ## A216218.P6978618423697828936

`A216228(eq[0, A023531(n)])`
-/

namespace A216218.P6978618423697828936
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023531 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216228 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A216218.P6978618423697828936

/-! ## A216218.P580024287544672783

`A216228(eq[0, A127648(n)])`
-/

namespace A216218.P580024287544672783
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127648 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216228 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A216218.P580024287544672783

/-! ## A216218.P13172142733559250333

`A216228(eq[0, A130123(n)])`
-/

namespace A216218.P13172142733559250333
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130123 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216228 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A216218.P13172142733559250333

/-! ## A216218.P3821775234480176871

`A216228(eq[0, A131431(n)])`
-/

namespace A216218.P3821775234480176871
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131431 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216228 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A216218.P3821775234480176871

/-! ## A216218.P161098520627518240

`A216228(eq[1, A023532(n)])`
-/

namespace A216218.P161098520627518240
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023532 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216228 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A216218.P161098520627518240

/-! ## A216218.P9297849005472597561

`A216228(lt[1, A216182(n)])`
-/

namespace A216218.P9297849005472597561
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216182 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216228 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A216218.P9297849005472597561

/-! ## A216218.P64531912766799209

`A216228(A014132(n+1)-1)`
-/

namespace A216218.P64531912766799209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216228 (A014132 (n + 1) - 1).toNat

end

end A216218.P64531912766799209

/-! ## A216218.P9184986949615091426

`A216228(A002024(n+1)+n)`
-/

namespace A216218.P9184986949615091426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216228 (A002024 (n + 1) + (n : ℤ)).toNat

end

end A216218.P9184986949615091426

/-! ## A216218.P17628379449331291226

`A216228(A003056(n)+1+n)`
-/

namespace A216218.P17628379449331291226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216228 (A003056 n + 1 + (n : ℤ)).toNat

end

end A216218.P17628379449331291226

/-! ## A216218.P32004945945729375

`A216228(lt[1, A216255(n+1)])`
-/

namespace A216218.P32004945945729375
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216255 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216228 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A216218.P32004945945729375

/-! ## A216218.P2294214289640293546

`A216228(A184425(n+1))`
-/

namespace A216218.P2294214289640293546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216228 (A184425 (n + 1)).toNat

end

end A216218.P2294214289640293546

/-! ## A216218.P914398539779948162

`lcm(A051287(n), A332602(n))`
-/

namespace A216218.P914398539779948162
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A051287 n) (A332602 n)

end

end A216218.P914398539779948162

/-!
# A216219: Square array T, read by antidiagonals: T(n,k) = 0 if n-k>=5 or if k-n>=5, T(4,0) = T(3,0) = T(2,0) = T(1,0) = T(0,0) = T(0,1) = T(0,2) = T(0,3) = T(0,4) = 1, T(n,k) = T(n-1,k) + T(n,k-1).

The programs for A216219, there is no canonical definition to state claims against.
-/

/-! ## A216219.P13379703062803208722

`A225181(A182073(n))+A014473(n)`
-/

namespace A216219.P13379703062803208722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225181 (A182073 n).toNat + A014473 n

end

end A216219.P13379703062803208722

/-! ## A216219.P5759952442596014347

`A007318(n)-A340999(A304604(n+1))`
-/

namespace A216219.P5759952442596014347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n - A340999 ((A304604 (n + 1)).toNat + 204)

end

end A216219.P5759952442596014347

/-! ## A216219.P14423331349096286010

`A007318(n)-A340999(A304926(n+1))`
-/

namespace A216219.P14423331349096286010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n - A340999 ((A304926 (n + 1)).toNat + 204)

end

end A216219.P14423331349096286010

/-! ## A216219.P6347594477770487161

`A007318(n)-A340999(A316420(n+1))`
-/

namespace A216219.P6347594477770487161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n - A340999 ((A316420 (n + 1)).toNat + 204)

end

end A216219.P6347594477770487161

/-! ## A216219.P14320415402940212140

`abs(A130595(n))-A340999(A304926(n+1))`
-/

namespace A216219.P14320415402940212140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A130595 n| - A340999 ((A304926 (n + 1)).toNat + 204)

end

end A216219.P14320415402940212140

/-!
# A216220: Square array T, read by antidiagonals: T(n,k) = 0 if n-k>=2 or if k-n>=4, T(1,0) = T(0,0) = T(0,1) = T(0,2) = T(0,3) = 1, T(n,k) = T(n-1,k) + T(n,k-1).

The programs for A216220, there is no canonical definition to state claims against.
-/

/-! ## A216220.P10565963264054439103

`A216238(A007401(n+1))`
-/

namespace A216220.P10565963264054439103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216238 (A007401 (n + 1)).toNat

end

end A216220.P10565963264054439103

/-! ## A216220.P13675042691588148976

`A216238(eq[0, A131431(n)])`
-/

namespace A216220.P13675042691588148976
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131431 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216238 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A216220.P13675042691588148976

/-! ## A216220.P13592769766084445826

`A216238(eq[1, A023532(n)])`
-/

namespace A216220.P13592769766084445826
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023532 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216238 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A216220.P13592769766084445826

/-! ## A216220.P7260332067695351206

`A216238(∑[A010054(n)]+n)`
-/

namespace A216220.P7260332067695351206
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216238 (∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)).toNat

end

end A216220.P7260332067695351206

/-! ## A216220.P8813270576364569953

`A216238(A014132(n+1)-1)`
-/

namespace A216220.P8813270576364569953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216238 (A014132 (n + 1) - 1).toNat

end

end A216220.P8813270576364569953

/-! ## A216220.P18282912332052320267

`A216238(A002024(n+1)+n)`
-/

namespace A216220.P18282912332052320267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216238 (A002024 (n + 1) + (n : ℤ)).toNat

end

end A216220.P18282912332052320267

/-! ## A216220.P7303558563291809715

`A216238(A003056(n)+1+n)`
-/

namespace A216220.P7303558563291809715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216238 (A003056 n + 1 + (n : ℤ)).toNat

end

end A216220.P7303558563291809715

/-! ## A216220.P11684859559153360618

`A216238(A003057(n+2)-1+n)`
-/

namespace A216220.P11684859559153360618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216238 (A003057 (n + 2) - 1 + (n : ℤ)).toNat

end

end A216220.P11684859559153360618

/-! ## A216220.P11606542059008805598

`A216238(2*n+1-A083920(n))`
-/

namespace A216220.P11606542059008805598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216238 ((2 * n + 1 : ℤ) - A083920 n).toNat

end

end A216220.P11606542059008805598

/-! ## A216220.P11671887859002780995

`A216238(lt[1, A216255(n+1)])`
-/

namespace A216220.P11671887859002780995
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216255 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216238 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A216220.P11671887859002780995

/-!
# A216223: Distance from Fibonacci(n) to the next perfect square.

The programs for A216223, the canonical program `A216223.P10131538684451385599` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A216223 has offset 0).

The definition of A216223 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 481 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A216223.P10131538684451385599

`ceil(sqrt(A000045(n)))²-A000045(n)`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A216223

/-- `ceil(sqrt(A000045(n)))²-A000045(n)` -/
def P10131538684451385599.Spec : Prop :=
  ∀ n, P10131538684451385599.a n = A216223 n

theorem P10131538684451385599.correct : P10131538684451385599.Spec := by
  intro n
  simp only [A216223]

end A216223

/-! ## A216223.P14796854015574857031

`ceil(sqrt(A212804(n+1)))²-A212804(n+1)`
-/

namespace A216223.P14796854015574857031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A212804 (n + 1) : ℝ)⌉ ^ 2 - A212804 (n + 1)

end

end A216223.P14796854015574857031

namespace A216223

/-- `ceil(sqrt(A212804(n+1)))²-A212804(n+1)` -/
def P14796854015574857031.Spec : Prop :=
  ∀ n, P14796854015574857031.a n = A216223 n

end A216223

/-! ## A216223.P6988858810615399326

`ceil(sqrt(A103609(2*n)))²-A001611(n)+1`
-/

namespace A216223.P6988858810615399326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A103609 (2 * n) : ℝ)⌉ ^ 2 - A001611 n + 1

end

end A216223.P6988858810615399326

namespace A216223

/-- `ceil(sqrt(A103609(2*n)))²-A001611(n)+1` -/
def P6988858810615399326.Spec : Prop :=
  ∀ n, P6988858810615399326.a n = A216223 n

end A216223

/-! ## A216223.P21908673054166425

`ceil(sqrt(A103609(2*n)))²-(A157725(n)-2)`
-/

namespace A216223.P21908673054166425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A103609 (2 * n) : ℝ)⌉ ^ 2 - (A157725 n - 2)

end

end A216223.P21908673054166425

namespace A216223

/-- `ceil(sqrt(A103609(2*n)))²-(A157725(n)-2)` -/
def P21908673054166425.Spec : Prop :=
  ∀ n, P21908673054166425.a n = A216223 n

end A216223

/-! ## A216223.P18059641297419652094

`ceil(sqrt(A157726(n)-3))²-(A157725(n)-2)`
-/

namespace A216223.P18059641297419652094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A157726 n - 3 : ℝ)⌉ ^ 2 - (A157725 n - 2)

end

end A216223.P18059641297419652094

namespace A216223

/-- `ceil(sqrt(A157726(n)-3))²-(A157725(n)-2)` -/
def P18059641297419652094.Spec : Prop :=
  ∀ n, P18059641297419652094.a n = A216223 n

end A216223

/-! ## A216223.P1976783054090797943

`ceil(sqrt(A157725(n)-2))²-(A157729(n)-5)`
-/

namespace A216223.P1976783054090797943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A157725 n - 2 : ℝ)⌉ ^ 2 - (A157729 n - 5)

end

end A216223.P1976783054090797943

namespace A216223

/-- `ceil(sqrt(A157725(n)-2))²-(A157729(n)-5)` -/
def P1976783054090797943.Spec : Prop :=
  ∀ n, P1976783054090797943.a n = A216223 n

end A216223

/-! ## A216223.P13265353886311474748

`ceil(sqrt(A157727(n)-4))²-(A157727(n)-4)`
-/

namespace A216223.P13265353886311474748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A157727 n - 4 : ℝ)⌉ ^ 2 - (A157727 n - 4)

end

end A216223.P13265353886311474748

namespace A216223

/-- `ceil(sqrt(A157727(n)-4))²-(A157727(n)-4)` -/
def P13265353886311474748.Spec : Prop :=
  ∀ n, P13265353886311474748.a n = A216223 n

end A216223

/-! ## A216223.P14619169183605974682

`ceil(sqrt(A065220(n)+n))²-(A157729(n)-5)`
-/

namespace A216223.P14619169183605974682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A065220 n + (n : ℤ) : ℝ)⌉ ^ 2 - (A157729 n - 5)

end

end A216223.P14619169183605974682

namespace A216223

/-- `ceil(sqrt(A065220(n)+n))²-(A157729(n)-5)` -/
def P14619169183605974682.Spec : Prop :=
  ∀ n, P14619169183605974682.a n = A216223 n

end A216223

/-!
# A216224: Natural growth of an aliquot sequence driven by a perfect number 2^(p-1)*((2^p)-1), but starting at 27.

The programs for A216224, there is no canonical definition to state claims against.
-/

/-! ## A216224.P17853012159068269277

`2*A000203(a(n-1))-a(n-1)` with `a(0)=27`
-/

namespace A216224.P17853012159068269277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [27] fun n a =>
  2 * A000203 (a (n - 1)).toNat - a (n - 1)

end

end A216224.P17853012159068269277

/-! ## A216224.P6870521473650450134

`A091818(a(n-1))+a(n-1)` with `a(0)=27`
-/

namespace A216224.P6870521473650450134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [27] fun n a =>
  A091818 (a (n - 1)).toNat + a (n - 1)

end

end A216224.P6870521473650450134

/-! ## A216224.P17245668105917128355

`A074400(a(n-1))-a(n-1)` with `a(0)=27`
-/

namespace A216224.P17245668105917128355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [27] fun n a =>
  A074400 (a (n - 1)).toNat - a (n - 1)

end

end A216224.P17245668105917128355

/-! ## A216224.P8144907255790938040

`A002659(a(n-1))+1-a(n-1)` with `a(0)=27`
-/

namespace A216224.P8144907255790938040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [27] fun n a =>
  A002659 (a (n - 1)).toNat + (1 - a (n - 1))

end

end A216224.P8144907255790938040

/-! ## A216224.P213688278906219793

`A318889(2*a(n-1))` with `a(0)=27`
-/

namespace A216224.P213688278906219793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [27] fun n a =>
  A318889 (2 * a (n - 1)).toNat

end

end A216224.P213688278906219793

/-!
# A216225: Distance between n^2 and next higher Fibonacci number.

The programs for A216225, there is no canonical definition to state claims against.
-/

/-! ## A216225.P17671891000966795708

`A256654(A253909(n))-A253909(n)`
-/

namespace A216225.P17671891000966795708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256654 (A253909 n).toNat - A253909 n

end

end A216225.P17671891000966795708

/-! ## A216225.P9866413890671732356

`A256654(A028310(n²))%A253909(n)`
-/

namespace A216225.P9866413890671732356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A256654 (A028310 (n ^ 2)).toNat) (A253909 n)

end

end A216225.P9866413890671732356

/-! ## A216225.P11767869337400202044

`A256654(A028310(n)²)-A028310(n)²`
-/

namespace A216225.P11767869337400202044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256654 (A028310 n ^ 2).toNat - A028310 n ^ 2

end

end A216225.P11767869337400202044

/-! ## A216225.P11022910426156411988

`A256654(A253909(n))%A325001(A133263(n))`
-/

namespace A216225.P11022910426156411988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A256654 (A253909 n).toNat) (A325001 (A133263 n).toNat)

end

end A216225.P11022910426156411988

/-!
# A216226: Square array T, read by antidiagonals: T(n,k) = 0 if n-k>=1 or if k-n>=4, T(0,0) = T(0,1) = T(0,2) = T(0,3) = 1, T(n,k) = T(n-1,k) + T(n,k-1).

The programs for A216226, there is no canonical definition to state claims against.
-/

/-! ## A216226.P12348778282140532727

`A216054(n)-A102683(A000045(n+1))`
-/

namespace A216226.P12348778282140532727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216054 n - A102683 (A000045 (n + 1)).toNat

end

end A216226.P12348778282140532727

/-! ## A216226.P12587239974454039192

`A082601(n)-A331671(A059966(n+1))`
-/

namespace A216226.P12587239974454039192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082601 n - A331671 (A059966 (n + 1)).toNat

end

end A216226.P12587239974454039192

/-! ## A216226.P9977775680846124576

`A277504(n)-A038141(A245979(n+1))`
-/

namespace A216226.P9977775680846124576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277504 n - A038141 (A245979 (n + 1)).toNat

end

end A216226.P9977775680846124576

/-! ## A216226.P5180683717929696926

`and(A048721(A322280(n)), A263104(n+9))`
-/

namespace A216226.P5180683717929696926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A048721 (A322280 n).toNat) (A263104 (n + 9))

end

end A216226.P5180683717929696926

/-! ## A216226.P9067420917153662267

`C(A217315(n), A027751(A289625(n+1)))`
-/

namespace A216226.P9067420917153662267
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A217315 n).toNat (A027751 (A289625 (n + 1)).toNat).toNat

end

end A216226.P9067420917153662267

/-!
# A216227: Prime numbers that do not appear in the Euclid-Mullin sequence A000946.

The programs for A216227, there is no canonical definition to state claims against.
-/

/-! ## A216227.P2464810771834380646

`p?[comp[∑{digits}[∑[2-n], #]]]`
-/

namespace A216227.P2464810771834380646
noncomputable section

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (n : ℤ)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f3 n).natAbs).map fun (x : ℕ) => x).sum

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A216227.P2464810771834380646

/-! ## A216227.P11272902225292427900

`p?[2*∑[char[n²]+1]+1]`
-/

namespace A216227.P11272902225292427900
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f3 j = n then 1 else 0) + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f2 j) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A216227.P11272902225292427900

/-! ## A216227.P1078432007712734221

`record[∑{p}[A241176(n+4), #]]`
-/

namespace A216227.P1078432007712734221
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241176 (n + 4)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n).natAbs, p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A216227.P1078432007712734221

/-! ## A216227.P15239922039293941195

`A000040(ceil(n*atan(2))+3)`
-/

namespace A216227.P15239922039293941195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (⌈(n : ℝ) * Real.arctan (2 : ℝ)⌉ + 3).toNat

end

end A216227.P15239922039293941195

/-!
# A216228: Square array T, read by antidiagonals: T(n,k) = 0 if n-k>=1 or if k-n>=3, T(0,0) = T(0,1) = T(0,2) = 1, T(n,k) = T(n-1,k) + T(n,k-1).

The programs for A216228, there is no canonical definition to state claims against.
-/

/-! ## A216228.P9384540618623435211

`A216218(A083920(n))-char[2]`
-/

namespace A216228.P9384540618623435211
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216218 (A083920 n).toNat - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A216228.P9384540618623435211

/-! ## A216228.P504421289584742867

`char[A022998(n)]*A216218(A083920(n))`
-/

namespace A216228.P504421289584742867
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022998 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A216218 (A083920 n).toNat

end

end A216228.P504421289584742867

/-! ## A216228.P9439147010056012557

`char[A245300(n)]*A216218(A083920(n))`
-/

namespace A216228.P9439147010056012557
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245300 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A216218 (A083920 n).toNat

end

end A216228.P9439147010056012557

/-! ## A216228.P1913694652326833684

`and(A052996(n), A216218(A083920(n)))`
-/

namespace A216228.P1913694652326833684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A052996 n) (A216218 (A083920 n).toNat)

end

end A216228.P1913694652326833684

/-! ## A216228.P13470281632506627043

`and(A216218(A083920(n)), A267604(n))`
-/

namespace A216228.P13470281632506627043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A216218 (A083920 n).toNat) (A267604 n)

end

end A216228.P13470281632506627043

/-! ## A216228.P9395715370637393432

`A216218(A083920(n))%A045771(A015729(n+1))`
-/

namespace A216228.P9395715370637393432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A216218 (A083920 n).toNat) (A045771 (A015729 (n + 1)).toNat)

end

end A216228.P9395715370637393432

/-! ## A216228.P5130636818465125922

`A216218(A083920(n))%A008452(A015744(n))`
-/

namespace A216228.P5130636818465125922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A216218 (A083920 n).toNat) (A008452 (A015744 n).toNat)

end

end A216228.P5130636818465125922

/-!
# A216229: Square array T, read by antidiagonals: T(n,k) = 0 if n-k>=2 or if k-n>=3, T(1,0) = T(0,0) = T(0,1) = T(0,2) = 1, T(n,k) = T(n-1,k) + T(n,k-1).

The programs for A216229, there is no canonical definition to state claims against.
-/

/-! ## A216229.P11219908864351149122

`A216226(∑[char[∑[n]]]+n)`
-/

namespace A216229.P11219908864351149122
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216226 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A216229.P11219908864351149122

/-! ## A216229.P11874994408936384971

`or(A000007(n), A216226(A007401(n+1)))`
-/

namespace A216229.P11874994408936384971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A216226 (A007401 (n + 1)).toNat)

end

end A216229.P11874994408936384971

/-! ## A216229.P17735061248412526161

`A216226(A007401(n+1))+A005843(n)%2`
-/

namespace A216229.P17735061248412526161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216226 (A007401 (n + 1)).toNat + Int.tmod (A005843 n) 2

end

end A216229.P17735061248412526161

/-! ## A216229.P11845281883524230485

`A035263(2*n+1)*A216226(A007401(n+1))`
-/

namespace A216229.P11845281883524230485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035263 (2 * n + 1) * A216226 (A007401 (n + 1)).toNat

end

end A216229.P11845281883524230485

/-! ## A216229.P13884173643510858645

`A332227(n+1)%2*A216226(A007401(n+1))`
-/

namespace A216229.P13884173643510858645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A332227 (n + 1)) 2 * A216226 (A007401 (n + 1)).toNat

end

end A216229.P13884173643510858645

/-! ## A216229.P1237428634894220425

`A332219(A005843(n+2))+A216226(A007401(n+1))`
-/

namespace A216229.P1237428634894220425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332219 (A005843 (n + 2)).toNat + A216226 (A007401 (n + 1)).toNat

end

end A216229.P1237428634894220425

/-! ## A216229.P7460688874437004171

`A216226(A007401(n+1))%A000041(n+2)`
-/

namespace A216229.P7460688874437004171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A216226 (A007401 (n + 1)).toNat) (A000041 (n + 2))

end

end A216229.P7460688874437004171

/-! ## A216229.P3063077187239796450

`A216226(A007401(n+1))+A000035(2*n)`
-/

namespace A216229.P3063077187239796450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216226 (A007401 (n + 1)).toNat + A000035 (2 * n)

end

end A216229.P3063077187239796450

/-! ## A216229.P16950680689485870933

`A001511(2*n+1)*A216226(A007401(n+1))`
-/

namespace A216229.P16950680689485870933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (2 * n + 1) * A216226 (A007401 (n + 1)).toNat

end

end A216229.P16950680689485870933

/-! ## A216229.P3536854221905126031

`-A008683(A031933(n))*A216226(A007401(n+1))`
-/

namespace A216229.P3536854221905126031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(A008683 (A031933 n).toNat * A216226 (A007401 (n + 1)).toNat)

end

end A216229.P3536854221905126031

/-! ## A216229.P17471689116838008696

`∑{d}[A216226(A007401(n+1)), A000010(#)]`
-/

namespace A216229.P17471689116838008696
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216226 (A007401 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A216229.P17471689116838008696

/-! ## A216229.P17993169356517482235

`A001055(A205511(n+1))*A216226(A007401(n+1))`
-/

namespace A216229.P17993169356517482235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001055 (A205511 (n + 1)).toNat * A216226 (A007401 (n + 1)).toNat

end

end A216229.P17993169356517482235

/-! ## A216229.P2231731950729675752

`A332219(A332217(n+2))+A216226(A007401(n+1))`
-/

namespace A216229.P2231731950729675752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332219 (A332217 (n + 2)).toNat + A216226 (A007401 (n + 1)).toNat

end

end A216229.P2231731950729675752

/-! ## A216229.P14419910782972351988

`A216226(A007401(n+1))^A014963(∑[n+1])`
-/

namespace A216229.P14419910782972351988
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A216226 (A007401 (n + 1)).toNat : ℚ) ^ (A014963 (∑ j ∈ Finset.range (n + 1), f1 j) : ℤ)

end

end A216229.P14419910782972351988

/-!
# A216230: Square array T, read by antidiagonals: T(n,k) = 0 if n-k>=1 or if k-n>=2, T(0,0) = T(0,1) = 1, T(n,k) = T(n-1,k) + T(n,k-1).

The programs for A216230, the canonical program `A216230.P10400160501646642978` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A216230 has offset 0).

The definition of A216230 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A216230.P10400160501646642978

`Δ[floor(sqrt(2*n))]`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A216230

/-- `Δ[floor(sqrt(2*n))]` -/
def P10400160501646642978.Spec : Prop :=
  ∀ n, P10400160501646642978.a n = A216230 n

theorem P10400160501646642978.correct : P10400160501646642978.Spec := by
  intro n
  simp only [A216230]

end A216230

/-! ## A216230.P2917850597624331758

`char[∑[or(1, n-1)]]`
-/

namespace A216230.P2917850597624331758
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 ((n : ℤ) - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A216230.P2917850597624331758

namespace A216230

/-- `char[∑[or(1, n-1)]]` -/
def P2917850597624331758.Spec : Prop :=
  ∀ n, (P2917850597624331758.a n : ℤ) = A216230 n

end A216230

/-! ## A216230.P10278575804720704953

`char[∑[-or(1, -n)]]`
-/

namespace A216230.P10278575804720704953
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.lor 1 (-(n : ℤ))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A216230.P10278575804720704953

namespace A216230

/-- `char[∑[-or(1, -n)]]` -/
def P10278575804720704953.Spec : Prop :=
  ∀ n, (P10278575804720704953.a n : ℤ) = A216230 n

end A216230

/-! ## A216230.P3470214480565490518

`char[∑[and(n, -2)]+n]`
-/

namespace A216230.P3470214480565490518
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (-2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A216230.P3470214480565490518

namespace A216230

/-- `char[∑[and(n, -2)]+n]` -/
def P3470214480565490518.Spec : Prop :=
  ∀ n, (P3470214480565490518.a n : ℤ) = A216230 n

end A216230

/-! ## A216230.P13801190293897720516

`dr(Δ[ceil(-sqrt(2*n))])`
-/

namespace A216230.P13801190293897720516
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈-Real.sqrt (2 * n : ℝ)⌉

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (f1 (n + 1) - f1 n)

end

end A216230.P13801190293897720516

namespace A216230

/-- `dr(Δ[ceil(-sqrt(2*n))])` -/
def P13801190293897720516.Spec : Prop :=
  ∀ n, (P13801190293897720516.a n : ℤ) = A216230 n

end A216230

/-! ## A216230.P3630183918334290991

`char[floor(sinh(log((n+1)²)))]`
-/

namespace A216230.P3630183918334290991
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sinh (Real.log ((n + 1) ^ 2 : ℝ))⌋

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A216230.P3630183918334290991

namespace A216230

/-- `char[floor(sinh(log((n+1)²)))]` -/
def P3630183918334290991.Spec : Prop :=
  ∀ n, (P3630183918334290991.a n : ℤ) = A216230 n

end A216230

/-! ## A216230.P14858727415886197927

`Δ[ceil(sqrt(2*n+1))]%2`
-/

namespace A216230.P14858727415886197927
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (2 * n + 1 : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) 2

end

end A216230.P14858727415886197927

namespace A216230

/-- `Δ[ceil(sqrt(2*n+1))]%2` -/
def P14858727415886197927.Spec : Prop :=
  ∀ n, P14858727415886197927.a n = A216230 n

end A216230

/-! ## A216230.P3421071022755059532

`and(1, Δ[ceil(sqrt(2*n+1))])`
-/

namespace A216230.P3421071022755059532
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (2 * n + 1 : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (f1 (n + 1) - f1 n)

end

end A216230.P3421071022755059532

namespace A216230

/-- `and(1, Δ[ceil(sqrt(2*n+1))])` -/
def P3421071022755059532.Spec : Prop :=
  ∀ n, P3421071022755059532.a n = A216230 n

end A216230

/-! ## A216230.P12461129479817024381

`dr(Δ[ceil(sqrt(2*n+1))])²`
-/

namespace A216230.P12461129479817024381
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (2 * n + 1 : ℝ)⌉

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (f1 (n + 1) - f1 n) ^ 2

end

end A216230.P12461129479817024381

namespace A216230

/-- `dr(Δ[ceil(sqrt(2*n+1))])²` -/
def P12461129479817024381.Spec : Prop :=
  ∀ n, (P12461129479817024381.a n : ℤ) = A216230 n

end A216230

/-! ## A216230.P11284903357176547118

`sqrt(dr(Δ[ceil(sqrt(2*n+1))]))`
-/

namespace A216230.P11284903357176547118
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (2 * n + 1 : ℝ)⌉

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (SequenceMachineLib.digitalRoot (f1 (n + 1) - f1 n) : ℝ)

end

end A216230.P11284903357176547118

namespace A216230

/-- `sqrt(dr(Δ[ceil(sqrt(2*n+1))]))` -/
def P11284903357176547118.Spec : Prop :=
  ∀ n, P11284903357176547118.a n = (A216230 n : ℝ)

end A216230

/-! ## A216230.P6196481795631719979

`∑{d}[Δ[ceil(sqrt(2*n+1))], #]`
-/

namespace A216230.P6196481795631719979
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (2 * n + 1 : ℝ)⌉

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A216230.P6196481795631719979

namespace A216230

/-- `∑{d}[Δ[ceil(sqrt(2*n+1))], #]` -/
def P6196481795631719979.Spec : Prop :=
  ∀ n, (P6196481795631719979.a n : ℤ) = A216230 n

end A216230

/-! ## A216230.P8872098250939265857

`∑{digits}[Δ[ceil(sqrt(2*n+1))], #]`
-/

namespace A216230.P8872098250939265857
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (2 * n + 1 : ℝ)⌉

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A216230.P8872098250939265857

namespace A216230

/-- `∑{digits}[Δ[ceil(sqrt(2*n+1))], #]` -/
def P8872098250939265857.Spec : Prop :=
  ∀ n, (P8872098250939265857.a n : ℤ) = A216230 n

end A216230

/-! ## A216230.P11560465790891957403

`∏{digits}[Δ[ceil(sqrt(2*n+1))], #]`
-/

namespace A216230.P11560465790891957403
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (2 * n + 1 : ℝ)⌉

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).prod

end

end A216230.P11560465790891957403

namespace A216230

/-- `∏{digits}[Δ[ceil(sqrt(2*n+1))], #]` -/
def P11560465790891957403.Spec : Prop :=
  ∀ n, (P11560465790891957403.a n : ℤ) = A216230 n

end A216230

/-! ## A216230.P17385595282676762443

`ceil(sin(Δ[ceil(sqrt(2*n+1))]))`
-/

namespace A216230.P17385595282676762443
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (2 * n + 1 : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sin (f1 (n + 1) - f1 n : ℝ)⌉

end

end A216230.P17385595282676762443

namespace A216230

/-- `ceil(sin(Δ[ceil(sqrt(2*n+1))]))` -/
def P17385595282676762443.Spec : Prop :=
  ∀ n, P17385595282676762443.a n = A216230 n

end A216230

/-! ## A216230.P8118427113626766391

`ceil(atan(Δ[ceil(sqrt(2*n+1))]))`
-/

namespace A216230.P8118427113626766391
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (2 * n + 1 : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.arctan (f1 (n + 1) - f1 n : ℝ)⌉

end

end A216230.P8118427113626766391

namespace A216230

/-- `ceil(atan(Δ[ceil(sqrt(2*n+1))]))` -/
def P8118427113626766391.Spec : Prop :=
  ∀ n, P8118427113626766391.a n = A216230 n

end A216230

/-! ## A216230.P16959736182246215294

`round(sinh(Δ[ceil(sqrt(2*n+1))]))`
-/

namespace A216230.P16959736182246215294
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (2 * n + 1 : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sinh (f1 (n + 1) - f1 n : ℝ))

end

end A216230.P16959736182246215294

namespace A216230

/-- `round(sinh(Δ[ceil(sqrt(2*n+1))]))` -/
def P16959736182246215294.Spec : Prop :=
  ∀ n, P16959736182246215294.a n = A216230 n

end A216230

/-! ## A216230.P3069281890682052948

`ceil(tanh(Δ[ceil(sqrt(2*n+1))]))`
-/

namespace A216230.P3069281890682052948
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (2 * n + 1 : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.tanh (f1 (n + 1) - f1 n : ℝ)⌉

end

end A216230.P3069281890682052948

namespace A216230

/-- `ceil(tanh(Δ[ceil(sqrt(2*n+1))]))` -/
def P3069281890682052948.Spec : Prop :=
  ∀ n, P3069281890682052948.a n = A216230 n

end A216230

/-! ## A216230.P11929835468782143765

`char[a(n-2)+2*n]` with `a(0)=0, a(1)=1`
-/

namespace A216230.P11929835468782143765
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  f1 (n - 2) + 2 * n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A216230.P11929835468782143765

namespace A216230

/-- `char[a(n-2)+2*n]` -/
def P11929835468782143765.Spec : Prop :=
  ∀ n, (P11929835468782143765.a n : ℤ) = A216230 n

end A216230

/-! ## A216230.P8848081524154275730

`char[a(n-2)+n+n]` with `a(0)=0, a(1)=1`
-/

namespace A216230.P8848081524154275730
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  f1 (n - 2) + n + n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A216230.P8848081524154275730

namespace A216230

/-- `char[a(n-2)+n+n]` -/
def P8848081524154275730.Spec : Prop :=
  ∀ n, (P8848081524154275730.a n : ℤ) = A216230 n

end A216230

/-!
# A216231: Fibonacci with priority for primes: a(0)=0, a(1)=1, for n >= 2, a(n) = a(n-1) + a(k), where 0 < k <= n-2 is maximal index such that a(n-1) + a(k) is prime. If there is no such k, then a(n) = a(n-1) + a(n-2).

The programs for A216231, there is no canonical definition to state claims against.
-/

/-! ## A216231.P11862759849154616546

`∑[A203947(A003418(n))]-1`
-/

namespace A216231.P11862759849154616546
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203947 (A003418 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A216231.P11862759849154616546

/-! ## A216231.P15530411325865350626

`round(sqrt(A008615(floor((ϕ^n)²))))`
-/

namespace A216231.P15530411325865350626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A008615 ⌊(Real.goldenRatio ^ n) ^ 2⌋.toNat : ℝ))

end

end A216231.P15530411325865350626

/-! ## A216231.P4584580871910997049

`A084359(A086622(n))`
-/

namespace A216231.P4584580871910997049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084359 (A086622 n).toNat

end

end A216231.P4584580871910997049

/-! ## A216231.P15113635478948952615

`A084359(A151278(n))`
-/

namespace A216231.P15113635478948952615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084359 (A151278 n).toNat

end

end A216231.P15113635478948952615

/-! ## A216231.P17496768111767901829

`A394247(A003101(n))`
-/

namespace A216231.P17496768111767901829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394247 (A003101 n).toNat

end

end A216231.P17496768111767901829

/-!
# A216232: Square array A, read by antidiagonals: A(n,k) = 0 if n-k >= 3 or if k-n >= 5, A(2,0) = A(1,0) = A(0,0) = A(0,1) = A(0,2) = A(0,3) = A(0,4) = 1, A(n,k) = A(n-1,k) + A(n,k-1).

The programs for A216232, there is no canonical definition to state claims against.
-/

/-! ## A216232.P17509836416637952424

`A217765(n)-A321379(A037165(n+1))`
-/

namespace A216232.P17509836416637952424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217765 n - A321379 (A037165 (n + 1)).toNat

end

end A216232.P17509836416637952424

/-! ## A216232.P4943030711057142783

`A217765(n-A025466(A104220(n)))`
-/

namespace A216232.P4943030711057142783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217765 ((n : ℤ) - A025466 (A104220 n).toNat).toNat

end

end A216232.P4943030711057142783

/-! ## A216232.P3672065959770798477

`xor(A025466(A104220(n)), A217765(n))`
-/

namespace A216232.P3672065959770798477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A025466 (A104220 n).toNat) (A217765 n)

end

end A216232.P3672065959770798477

/-! ## A216232.P12461349577332290905

`A217765(A066182(n+1)%A345921(3*n+2))`
-/

namespace A216232.P12461349577332290905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217765 (Int.tmod (A066182 (n + 1)) (A345921 (3 * n + 2))).toNat

end

end A216232.P12461349577332290905

/-! ## A216232.P16085638374514460941

`A217765(n)-A025466(A217765(n)*A350212(n))`
-/

namespace A216232.P16085638374514460941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217765 n - A025466 (A217765 n * A350212 n).toNat

end

end A216232.P16085638374514460941

/-!
# A216233: Numbers whose squares have 2R-1 digits, such that the number represented by leftmost R digits and number represented by rightmost R digits divide each other evenly.

The programs for A216233, there is no canonical definition to state claims against.
-/

/-! ## A216233.P3326049965340911566

`A007916(∏{e}[A022008(n+1), #*A133957(n+4)])`
-/

namespace A216233.P3326049965340911566
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022008 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007916 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, (Nat.factorization (f1 n).natAbs p : ℤ) * A133957 (n + 4)).toNat

end

end A216233.P3326049965340911566

/-!
# A216234: Cumulated number of increasing admissible cuts of rooted plane trees of size n.

The programs for A216234, there is no canonical definition to state claims against.
-/

/-! ## A216234.P3054520355855823170

`A008612(A209902(n+1))`
-/

namespace A216234.P3054520355855823170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008612 (A209902 (n + 1)).toNat

end

end A216234.P3054520355855823170

/-! ## A216234.P10623571937483923420

`A379305(∑[∑[A070803(n+1)]])`
-/

namespace A216234.P10623571937483923420
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070803 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379305 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A216234.P10623571937483923420

/-!
# A216235: Square array T, read by antidiagonals: T(n,k) = 0 if n-k >= 2 or if k-n >= 5, T(1,0) = T(0,0) = T(0,1) = T(0,2) = T(0,3) = T(0,4) = 1, T(n,k) = T(n-1,k) + T(n,k-1).

The programs for A216235, there is no canonical definition to state claims against.
-/

/-! ## A216235.P16323513582639773182

`A216054(comp[∑[n-1]])`
-/

namespace A216235.P16323513582639773182
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216054 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A216235.P16323513582639773182

/-! ## A216235.P8301688025517263161

`A216054(A007401(n+1))+A000007(n+1)`
-/

namespace A216235.P8301688025517263161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216054 (A007401 (n + 1)).toNat + A000007 (n + 1)

end

end A216235.P8301688025517263161

/-! ## A216235.P5776037435963872237

`A216054(A007401(n+1))+A130706(A072505(n+1)+1)`
-/

namespace A216235.P5776037435963872237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216054 (A007401 (n + 1)).toNat + A130706 (A072505 (n + 1) + 1).toNat

end

end A216235.P5776037435963872237

/-! ## A216235.P13060725085010542301

`A216054(A007401(n+1))*A322582(A000040(n+1))`
-/

namespace A216235.P13060725085010542301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216054 (A007401 (n + 1)).toNat * A322582 (A000040 (n + 1)).toNat

end

end A216235.P13060725085010542301

/-! ## A216235.P1520467946970673760

`A216054(A007401(n+1))%A067981(n)`
-/

namespace A216235.P1520467946970673760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A216054 (A007401 (n + 1)).toNat) (A067981 n)

end

end A216235.P1520467946970673760

/-! ## A216235.P10455329762596156552

`A216054(A007401(n+1))+A130706(A046581(n+1)+1)`
-/

namespace A216235.P10455329762596156552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216054 (A007401 (n + 1)).toNat + A130706 (A046581 (n + 1) + 1).toNat

end

end A216235.P10455329762596156552

/-!
# A216236: Square array T, read by antidiagonals: T(n,k) = 0 if n-k>=4 or if k-n>=5, T(3,0) = T(2,0) = T(1,0) = T(0,0) = T(0,1) = T(0,2) = T(0,3) = T(0,4) = 1, T(n,k) = T(n-1,k) + T(n,k-1).

The programs for A216236, there is no canonical definition to state claims against.
-/

/-! ## A216236.P9720959758625719640

`A217770(n)-A321379(A037165(n+1))`
-/

namespace A216236.P9720959758625719640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217770 n - A321379 (A037165 (n + 1)).toNat

end

end A216236.P9720959758625719640

/-! ## A216236.P18086786200557192699

`A007318(n)-A358724(A035206(n+1))`
-/

namespace A216236.P18086786200557192699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n - A358724 (A035206 (n + 1)).toNat

end

end A216236.P18086786200557192699

/-! ## A216236.P14623794484059443632

`A217770(n-A025466(A104220(n)))`
-/

namespace A216236.P14623794484059443632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217770 ((n : ℤ) - A025466 (A104220 n).toNat).toNat

end

end A216236.P14623794484059443632

/-! ## A216236.P6030735645882114757

`A217770(n)-A111025(A250120(n))`
-/

namespace A216236.P6030735645882114757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217770 n - A111025 (A250120 n).toNat

end

end A216236.P6030735645882114757

/-! ## A216236.P10333158901441552100

`A217770(n)*A337263(A272212(n))`
-/

namespace A216236.P10333158901441552100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217770 n * A337263 (A272212 n).toNat

end

end A216236.P10333158901441552100

/-!
# A216237: Happy palindromic numbers.

The programs for A216237, there is no canonical definition to state claims against.
-/

/-! ## A216237.P17853224445701740026

`∩[A002113(n+1), A007770(n+1)]`
-/

namespace A216237.P17853224445701740026
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002113 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007770 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A216237.P17853224445701740026

/-! ## A216237.P17170723225156345270

`record[A055483(A007770(n+1))]`
-/

namespace A216237.P17170723225156345270
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055483 (A007770 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A216237.P17170723225156345270

/-! ## A216237.P11470805885777062370

`filter[A007770(n+1), A136522(#)]`
-/

namespace A216237.P11470805885777062370
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007770 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A136522 (f1 j).toNat = 1) n)

end

end A216237.P11470805885777062370

/-! ## A216237.P12154987967616628372

`record[A055483(eq[1, A031176(n+1)]+1)]`
-/

namespace A216237.P12154987967616628372
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031176 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055483 (SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A216237.P12154987967616628372

/-! ## A216237.P3399844325759622155

`record[A055483(lt[A103369(n+1), 2]+1)]`
-/

namespace A216237.P3399844325759622155
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103369 (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055483 (SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A216237.P3399844325759622155

/-!
# A216238: Square array T, read by antidiagonals: T(n,k) = 0 if n-k>=1 or if k-n>=5, T(0,0) = T(0,1) = T(0,2) = T(0,3) = T(0,4) = 1, T(n,k) = T(n-1,k) + T(n,k-1).

The programs for A216238, there is no canonical definition to state claims against.
-/

/-! ## A216238.P1087461425349367447

`A216230(n)+floor(A216216(n+1)/2)`
-/

namespace A216238.P1087461425349367447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216230 n + ⌊(A216216 (n + 1) : ℚ) / 2⌋

end

end A216238.P1087461425349367447

/-! ## A216238.P8039264570000230429

`A004526(A216230(n)+A216216(n+1))`
-/

namespace A216238.P8039264570000230429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A216230 n + A216216 (n + 1)).toNat

end

end A216238.P8039264570000230429

/-! ## A216238.P10026608656801267449

`A217257(n)-A055641(A262616(n))`
-/

namespace A216238.P10026608656801267449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217257 n - A055641 (A262616 n).toNat

end

end A216238.P10026608656801267449

/-! ## A216238.P12018734641538216907

`A217315(n)-A055641(A262616(n))`
-/

namespace A216238.P12018734641538216907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217315 n - A055641 (A262616 n).toNat

end

end A216238.P12018734641538216907

/-! ## A216238.P5213996417213486199

`A011655(A071951(n+4))*A217257(n)`
-/

namespace A216238.P5213996417213486199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011655 (A071951 (n + 4)).toNat * A217257 n

end

end A216238.P5213996417213486199

/-!
# A216239: Total number of inversions in all derangement permutations of [n].

The programs for A216239, there is no canonical definition to state claims against.
-/

/-! ## A216239.P437644411956232538

`round(A284734(n+2)/403)`
-/

namespace A216239.P437644411956232538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A284734 (n + 2) : ℚ) / 403)

end

end A216239.P437644411956232538

/-! ## A216239.P12414772003887659631

`A114719(A089402(n))`
-/

namespace A216239.P12414772003887659631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114719 (A089402 n).toNat

end

end A216239.P12414772003887659631

/-!
# A216241: Number of n-step walks (each step +-1 starting from 0) which are never more than 5 or less than -5.

The programs for A216241, the canonical program `A216241.P11630865342568682381` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A216241 has offset 0).

The definition of A216241 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A216241.P11630865342568682381

`6*a(n-2)-9*a(n-4)+2*a(n-6)` with `a(0)=1, a(1)=2, a(2)=4, a(3)=8, a(4)=16, a(5)=32`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A216241

/-- `6*a(n-2)-9*a(n-4)+2*a(n-6)` -/
def P11630865342568682381.Spec : Prop :=
  ∀ n, P11630865342568682381.a n = A216241 n

theorem P11630865342568682381.correct : P11630865342568682381.Spec := by
  intro n
  simp only [A216241]

end A216241

/-! ## A216241.P3825177662107831328

`2*A336678(n+1)-A016116(n+1)`
-/

namespace A216241.P3825177662107831328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A336678 (n + 1) - A016116 (n + 1)

end

end A216241.P3825177662107831328

namespace A216241

/-- `2*A336678(n+1)-A016116(n+1)` -/
def P3825177662107831328.Spec : Prop :=
  ∀ n, P3825177662107831328.a n = A216241 n

end A216241

/-! ## A216241.P2108361666357132613

`A068913(A167499(n+4))`
-/

namespace A216241.P2108361666357132613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068913 (A167499 (n + 4)).toNat

end

end A216241.P2108361666357132613

namespace A216241

/-- `A068913(A167499(n+4))` -/
def P2108361666357132613.Spec : Prop :=
  ∀ n, P2108361666357132613.a n = A216241 n

end A216241

/-! ## A216241.P17273247662406914549

`A068913(A077169(n+6))`
-/

namespace A216241.P17273247662406914549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068913 (A077169 (n + 6)).toNat

end

end A216241.P17273247662406914549

namespace A216241

/-- `A068913(A077169(n+6))` -/
def P17273247662406914549.Spec : Prop :=
  ∀ n, P17273247662406914549.a n = A216241 n

end A216241

/-! ## A216241.P1459730435319437400

`A068913(A166136(n+4)-1)`
-/

namespace A216241.P1459730435319437400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068913 (A166136 (n + 4) - 1).toNat

end

end A216241.P1459730435319437400

namespace A216241

/-- `A068913(A166136(n+4)-1)` -/
def P1459730435319437400.Spec : Prop :=
  ∀ n, P1459730435319437400.a n = A216241 n

end A216241

/-! ## A216241.P16687745592367163461

`A068913(A000096(n+4)+6)`
-/

namespace A216241.P16687745592367163461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068913 (A000096 (n + 4) + 6).toNat

end

end A216241.P16687745592367163461

namespace A216241

/-- `A068913(A000096(n+4)+6)` -/
def P16687745592367163461.Spec : Prop :=
  ∀ n, P16687745592367163461.a n = A216241 n

end A216241

/-! ## A216241.P14003697431345995762

`A068913(A155212(n+1)+13)`
-/

namespace A216241.P14003697431345995762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068913 (A155212 (n + 1) + 13).toNat

end

end A216241.P14003697431345995762

namespace A216241

/-- `A068913(A155212(n+1)+13)` -/
def P14003697431345995762.Spec : Prop :=
  ∀ n, P14003697431345995762.a n = A216241 n

end A216241

/-! ## A216241.P3840284177776281431

`A068913(A055999(n+4)-2*(n+1))`
-/

namespace A216241.P3840284177776281431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068913 (A055999 (n + 4) - (2 * (n + 1) : ℤ)).toNat

end

end A216241.P3840284177776281431

namespace A216241

/-- `A068913(A055999(n+4)-2*(n+1))` -/
def P3840284177776281431.Spec : Prop :=
  ∀ n, P3840284177776281431.a n = A216241 n

end A216241

/-! ## A216241.P15145165297741471532

`A068913(A000217(n+7)-6-2*(n+1))`
-/

namespace A216241.P15145165297741471532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068913 (A000217 (n + 7) - 6 - (2 * (n + 1) : ℤ)).toNat

end

end A216241.P15145165297741471532

namespace A216241

/-- `A068913(A000217(n+7)-6-2*(n+1))` -/
def P15145165297741471532.Spec : Prop :=
  ∀ n, P15145165297741471532.a n = A216241 n

end A216241

/-! ## A216241.P16393210561989195612

`record[A068913(A167499(n)-A008620(3*n))]`
-/

namespace A216241.P16393210561989195612
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068913 (A167499 n - A008620 (3 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A216241.P16393210561989195612

namespace A216241

/-- `record[A068913(A167499(n)-A008620(3*n))]` -/
def P16393210561989195612.Spec : Prop :=
  ∀ n, P16393210561989195612.a n = A216241 n

end A216241

/-! ## A216241.P8467986046092935176

`record[A068913(A061579(A055999(n)))]`
-/

namespace A216241.P8467986046092935176
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068913 (A061579 (A055999 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A216241.P8467986046092935176

namespace A216241

/-- `record[A068913(A061579(A055999(n)))]` -/
def P8467986046092935176.Spec : Prop :=
  ∀ n, P8467986046092935176.a n = A216241 n

end A216241

/-!
# A216242: Triangular array read by rows: T(n,k) is the number of functions f:{1,2,...,n}->{1,2,...,n} with a height of k; n>=1, 0<=k<=n-1.

The programs for A216242, there is no canonical definition to state claims against.
-/

/-! ## A216242.P1082607475951201254

`or(A002262(A012840(n)), A071208(n+1))`
-/

namespace A216242.P1082607475951201254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A002262 (A012840 n).toNat) (A071208 (n + 1))

end

end A216242.P1082607475951201254

/-!
# A216243: Partial sums of the squares of Lucas numbers (A000032).

The programs for A216243, the canonical program `A216243.P17518036523963729443` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A216243 has offset 0).

The definition of A216243 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A216243.P17518036523963729443

`A215602(n)+2`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A216243

/-- `A215602(n)+2` -/
def P17518036523963729443.Spec : Prop :=
  ∀ n, P17518036523963729443.a n = A216243 n

theorem P17518036523963729443.correct : P17518036523963729443.Spec := by
  intro n
  simp only [A216243]

end A216243

/-! ## A216243.P3638426642096286666

`A002878(n)+A176040(n)`
-/

namespace A216243.P3638426642096286666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002878 n + A176040 n

end

end A216243.P3638426642096286666

namespace A216243

/-- `A002878(n)+A176040(n)` -/
def P3638426642096286666.Spec : Prop :=
  ∀ n, P3638426642096286666.a n = A216243 n

end A216243

/-! ## A216243.P9421727027577979443

`∑[(floor((-ϕ)^n)+1)²]`
-/

namespace A216243.P9421727027577979443
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (⌊(-Real.goldenRatio) ^ n⌋ + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A216243.P9421727027577979443

namespace A216243

/-- `∑[(floor((-ϕ)^n)+1)²]` -/
def P9421727027577979443.Spec : Prop :=
  ∀ n, P9421727027577979443.a n = A216243 n

end A216243

/-! ## A216243.P13951025402547424813

`2*∑[A001254(n)/2]`
-/

namespace A216243.P13951025402547424813
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001254 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A216243.P13951025402547424813

namespace A216243

/-- `2*∑[A001254(n)/2]` -/
def P13951025402547424813.Spec : Prop :=
  ∀ n, P13951025402547424813.a n = (A216243 n : ℚ)

end A216243

/-! ## A216243.P10945521404230745950

`2-Δ[gcd(2, n)-A000032(2*n)]`
-/

namespace A216243.P10945521404230745950
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.gcd 2 n : ℤ) - A000032 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (f1 (n + 1) - f1 n)

end

end A216243.P10945521404230745950

namespace A216243

/-- `2-Δ[gcd(2, n)-A000032(2*n)]` -/
def P10945521404230745950.Spec : Prop :=
  ∀ n, P10945521404230745950.a n = A216243 n

end A216243

/-! ## A216243.P14707425186617071450

`A162483(n)+A033999(n)`
-/

namespace A216243.P14707425186617071450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162483 n + A033999 n

end

end A216243.P14707425186617071450

namespace A216243

/-- `A162483(n)+A033999(n)` -/
def P14707425186617071450.Spec : Prop :=
  ∀ n, P14707425186617071450.a n = A216243 n

end A216243

/-! ## A216243.P11324001742693227873

`A110391(n+1)-A004146(n)`
-/

namespace A216243.P11324001742693227873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110391 (n + 1) - A004146 n

end

end A216243.P11324001742693227873

namespace A216243

/-- `A110391(n+1)-A004146(n)` -/
def P11324001742693227873.Spec : Prop :=
  ∀ n, P11324001742693227873.a n = A216243 n

end A216243

/-! ## A216243.P11918468298703691518

`lcm(A000032(n), A075193(n))+2`
-/

namespace A216243.P11918468298703691518
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000032 n) (A075193 n) + 2

end

end A216243.P11918468298703691518

namespace A216243

/-- `lcm(A000032(n), A075193(n))+2` -/
def P11918468298703691518.Spec : Prop :=
  ∀ n, (P11918468298703691518.a n : ℤ) = A216243 n

end A216243

/-! ## A216243.P2768522466209182337

`A000032(n+1)*A000032(n)+2`
-/

namespace A216243.P2768522466209182337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (n + 1) * A000032 n + 2

end

end A216243.P2768522466209182337

namespace A216243

/-- `A000032(n+1)*A000032(n)+2` -/
def P2768522466209182337.Spec : Prop :=
  ∀ n, P2768522466209182337.a n = A216243 n

end A216243

/-! ## A216243.P6820959893442987118

`A033999(n)+A020878(2*n+1)`
-/

namespace A216243.P6820959893442987118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n + A020878 (2 * n + 1)

end

end A216243.P6820959893442987118

namespace A216243

/-- `A033999(n)+A020878(2*n+1)` -/
def P6820959893442987118.Spec : Prop :=
  ∀ n, P6820959893442987118.a n = A216243 n

end A216243

/-! ## A216243.P12594203143864049942

`A176040(n)+A068397(2*n+1)`
-/

namespace A216243.P12594203143864049942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176040 n + A068397 (2 * n + 1)

end

end A216243.P12594203143864049942

namespace A216243

/-- `A176040(n)+A068397(2*n+1)` -/
def P12594203143864049942.Spec : Prop :=
  ∀ n, P12594203143864049942.a n = A216243 n

end A216243

/-! ## A216243.P3384488674095262321

`A295674(2*n)+A084101(2*n+1)`
-/

namespace A216243.P3384488674095262321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295674 (2 * n) + A084101 (2 * n + 1)

end

end A216243.P3384488674095262321

namespace A216243

/-- `A295674(2*n)+A084101(2*n+1)` -/
def P3384488674095262321.Spec : Prop :=
  ∀ n, P3384488674095262321.a n = A216243 n

end A216243

/-! ## A216243.P14982012291517546213

`A084101(2*n+1)+A000204(2*n+1)`
-/

namespace A216243.P14982012291517546213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084101 (2 * n + 1) + A000204 (2 * n + 1)

end

end A216243.P14982012291517546213

namespace A216243

/-- `A084101(2*n+1)+A000204(2*n+1)` -/
def P14982012291517546213.Spec : Prop :=
  ∀ n, P14982012291517546213.a n = A216243 n

end A216243

/-! ## A216243.P13478045249650172006

`A001906(n+1)+A010684(n+1)+A001906(n)`
-/

namespace A216243.P13478045249650172006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001906 (n + 1) + (A010684 (n + 1) + A001906 n)

end

end A216243.P13478045249650172006

namespace A216243

/-- `A001906(n+1)+A010684(n+1)+A001906(n)` -/
def P13478045249650172006.Spec : Prop :=
  ∀ n, P13478045249650172006.a n = A216243 n

end A216243

/-! ## A216243.P4206559342124495531

`A005248(n+1)+A010684(n+1)-A005248(n)`
-/

namespace A216243.P4206559342124495531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005248 (n + 1) + (A010684 (n + 1) - A005248 n)

end

end A216243.P4206559342124495531

namespace A216243

/-- `A005248(n+1)+A010684(n+1)-A005248(n)` -/
def P4206559342124495531.Spec : Prop :=
  ∀ n, P4206559342124495531.a n = A216243 n

end A216243

/-! ## A216243.P5149035366383296512

`abs(A075269(n))+2`
-/

namespace A216243.P5149035366383296512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A075269 n| + 2

end

end A216243.P5149035366383296512

namespace A216243

/-- `abs(A075269(n))+2` -/
def P5149035366383296512.Spec : Prop :=
  ∀ n, P5149035366383296512.a n = A216243 n

end A216243

/-! ## A216243.P11496645598434163088

`A162483(n+1)-A047946(n+1)`
-/

namespace A216243.P11496645598434163088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162483 (n + 1) - A047946 (n + 1)

end

end A216243.P11496645598434163088

namespace A216243

/-- `A162483(n+1)-A047946(n+1)` -/
def P11496645598434163088.Spec : Prop :=
  ∀ n, P11496645598434163088.a n = A216243 n

end A216243

/-! ## A216243.P8240195384945962030

`A006499(2*n+1)+2-A006499(2*n)`
-/

namespace A216243.P8240195384945962030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006499 (2 * n + 1) + (2 - A006499 (2 * n))

end

end A216243.P8240195384945962030

namespace A216243

/-- `A006499(2*n+1)+2-A006499(2*n)` -/
def P8240195384945962030.Spec : Prop :=
  ∀ n, P8240195384945962030.a n = A216243 n

end A216243

/-!
# A216244: a(n) = (prime(n)^2 - 1)/2 for n >= 2.

The programs for A216244, the canonical program `A216244.P11756277930264745226` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A216244 has offset 2).

The definition of A216244 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A061066, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A216244.P11756277930264745226

`4*A061066(n+2)`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A216244

/-- `4*A061066(n+2)` -/
def P11756277930264745226.Spec : Prop :=
  ∀ n, P11756277930264745226.a n = A216244 (n + 2)

theorem P11756277930264745226.correct : P11756277930264745226.Spec := by
  intro n
  simp only [A216244, Nat.add_sub_cancel]

end A216244

/-! ## A216244.P11244176708290724174

`A084921(n+2)`
-/

namespace A216244.P11244176708290724174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084921 (n + 2)

end

end A216244.P11244176708290724174

namespace A216244

/-- `A084921(n+2)` -/
def P11244176708290724174.Spec : Prop :=
  ∀ n, P11244176708290724174.a n = A216244 (n + 2)

end A216244

/-! ## A216244.P18362620938716917997

`A084920(n+2)/2`
-/

namespace A216244.P18362620938716917997
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A084920 (n + 2) : ℚ) / 2

end

end A216244.P18362620938716917997

namespace A216244

/-- `A084920(n+2)/2` -/
def P18362620938716917997.Spec : Prop :=
  ∀ n, P18362620938716917997.a n = (A216244 (n + 2) : ℚ)

end A216244

/-! ## A216244.P17701573712166705591

`floor(p?[2*n+1]²/2)`
-/

namespace A216244.P17701573712166705591
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) ^ 2 : ℚ) / 2⌋

end

end A216244.P17701573712166705591

namespace A216244

/-- `floor(p?[2*n+1]²/2)` -/
def P17701573712166705591.Spec : Prop :=
  ∀ n, P17701573712166705591.a n = A216244 (n + 2)

end A216244

/-! ## A216244.P16842236966595534735

`floor(cosh(log(p?[2*n+1]²)))`
-/

namespace A216244.P16842236966595534735
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.cosh (Real.log (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) ^ 2 : ℝ))⌋

end

end A216244.P16842236966595534735

namespace A216244

/-- `floor(cosh(log(p?[2*n+1]²)))` -/
def P16842236966595534735.Spec : Prop :=
  ∀ n, P16842236966595534735.a n = A216244 (n + 2)

end A216244

/-! ## A216244.P14955785202464542152

`floor(sinh(log(p?[2*n+1]²)))`
-/

namespace A216244.P14955785202464542152
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sinh (Real.log (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) ^ 2 : ℝ))⌋

end

end A216244.P14955785202464542152

namespace A216244

/-- `floor(sinh(log(p?[2*n+1]²)))` -/
def P14955785202464542152.Spec : Prop :=
  ∀ n, P14955785202464542152.a n = A216244 (n + 2)

end A216244

/-! ## A216244.P15969008464553665147

`round(sinh(log(p?[2*n+1]²)))`
-/

namespace A216244.P15969008464553665147
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sinh (Real.log (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) ^ 2 : ℝ)))

end

end A216244.P15969008464553665147

namespace A216244

/-- `round(sinh(log(p?[2*n+1]²)))` -/
def P15969008464553665147.Spec : Prop :=
  ∀ n, P15969008464553665147.a n = A216244 (n + 2)

end A216244

/-! ## A216244.P12316170773209651156

`(p?[2*n+1]²-1)/2`
-/

namespace A216244.P12316170773209651156
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) ^ 2 : ℤ) - 1 : ℚ) / 2

end

end A216244.P12316170773209651156

namespace A216244

/-- `(p?[2*n+1]²-1)/2` -/
def P12316170773209651156.Spec : Prop :=
  ∀ n, P12316170773209651156.a n = (A216244 (n + 2) : ℚ)

end A216244

/-! ## A216244.P17392064941198292242

`(lcm(2, p?[a(n-1)+2]²)-2)/4` with `a(0)=1`
-/

namespace A216244.P17392064941198292242
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  f1 (n - 1) + 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((Nat.lcm 2 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) ^ 2) : ℤ) - 2 : ℚ) / 4

end

end A216244.P17392064941198292242

namespace A216244

/-- `(lcm(2, p?[a(n-1)+2]²)-2)/4` -/
def P17392064941198292242.Spec : Prop :=
  ∀ n, P17392064941198292242.a n = (A216244 (n + 2) : ℚ)

end A216244

/-! ## A216244.P17657754828561711579

`A243887(n+1)+1`
-/

namespace A216244.P17657754828561711579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243887 (n + 1) + 1

end

end A216244.P17657754828561711579

namespace A216244

/-- `A243887(n+1)+1` -/
def P17657754828561711579.Spec : Prop :=
  ∀ n, P17657754828561711579.a n = A216244 (n + 2)

end A216244

/-! ## A216244.P8529325237554925351

`A066885(n+2)-1`
-/

namespace A216244.P8529325237554925351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066885 (n + 2) - 1

end

end A216244.P8529325237554925351

namespace A216244

/-- `A066885(n+2)-1` -/
def P8529325237554925351.Spec : Prop :=
  ∀ n, P8529325237554925351.a n = A216244 (n + 2)

end A216244

/-! ## A216244.P6995961602947745636

`2*A024701(n+1)`
-/

namespace A216244.P6995961602947745636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A024701 (n + 1)

end

end A216244.P6995961602947745636

namespace A216244

/-- `2*A024701(n+1)` -/
def P6995961602947745636.Spec : Prop :=
  ∀ n, P6995961602947745636.a n = A216244 (n + 2)

end A216244

/-! ## A216244.P1576750681937490503

`∑[A124434(n+1)]-1`
-/

namespace A216244.P1576750681937490503
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124434 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A216244.P1576750681937490503

namespace A216244

/-- `∑[A124434(n+1)]-1` -/
def P1576750681937490503.Spec : Prop :=
  ∀ n, P1576750681937490503.a n = A216244 (n + 2)

end A216244

/-! ## A216244.P15479716764933717090

`2*(A074367(n+1)+1)`
-/

namespace A216244.P15479716764933717090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A074367 (n + 1) + 1)

end

end A216244.P15479716764933717090

namespace A216244

/-- `2*(A074367(n+1)+1)` -/
def P15479716764933717090.Spec : Prop :=
  ∀ n, P15479716764933717090.a n = A216244 (n + 2)

end A216244

/-! ## A216244.P4782974623988597589

`2*(A222963(n+2)+2)`
-/

namespace A216244.P4782974623988597589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A222963 (n + 2) + 2)

end

end A216244.P4782974623988597589

namespace A216244

/-- `2*(A222963(n+2)+2)` -/
def P4782974623988597589.Spec : Prop :=
  ∀ n, P4782974623988597589.a n = A216244 (n + 2)

end A216244

/-! ## A216244.P11067056065548483466

`(A143928(n+1)-2)/4`
-/

namespace A216244.P11067056065548483466
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A143928 (n + 1) - 2 : ℚ) / 4

end

end A216244.P11067056065548483466

namespace A216244

/-- `(A143928(n+1)-2)/4` -/
def P11067056065548483466.Spec : Prop :=
  ∀ n, P11067056065548483466.a n = (A216244 (n + 2) : ℚ)

end A216244

/-! ## A216244.P6876047052893858949

`floor(A065091(n+1)²/2)`
-/

namespace A216244.P6876047052893858949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A065091 (n + 1) ^ 2 : ℚ) / 2⌋

end

end A216244.P6876047052893858949

namespace A216244

/-- `floor(A065091(n+1)²/2)` -/
def P6876047052893858949.Spec : Prop :=
  ∀ n, P6876047052893858949.a n = A216244 (n + 2)

end A216244

/-! ## A216244.P3047531134156235449

`A144519(n+1)-A006254(n+1)`
-/

namespace A216244.P3047531134156235449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144519 (n + 1) - A006254 (n + 1)

end

end A216244.P3047531134156235449

namespace A216244

/-- `A144519(n+1)-A006254(n+1)` -/
def P3047531134156235449.Spec : Prop :=
  ∀ n, P3047531134156235449.a n = A216244 (n + 2)

end A216244

/-! ## A216244.P18335718897990485478

`A005097(n+1)*A055670(n+2)`
-/

namespace A216244.P18335718897990485478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005097 (n + 1) * A055670 (n + 2)

end

end A216244.P18335718897990485478

namespace A216244

/-- `A005097(n+1)*A055670(n+2)` -/
def P18335718897990485478.Spec : Prop :=
  ∀ n, P18335718897990485478.a n = A216244 (n + 2)

end A216244

/-! ## A216244.P3915157197417701068

`lcm(A014687(n+1), A176569(n+1))`
-/

namespace A216244.P3915157197417701068
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A014687 (n + 1)) (A176569 (n + 1))

end

end A216244.P3915157197417701068

namespace A216244

/-- `lcm(A014687(n+1), A176569(n+1))` -/
def P3915157197417701068.Spec : Prop :=
  ∀ n, (P3915157197417701068.a n : ℤ) = A216244 (n + 2)

end A216244

/-!
# A216245: Sum of 1/a(n)^2 approaches sqrt(3) with partial sums staying below.

The programs for A216245, there is no canonical definition to state claims against.
-/

/-! ## A216245.P2681099311508759947

`A003056(A056428(n+1)+comp[n²])`
-/

namespace A216245.P2681099311508759947
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A056428 (n + 1) + (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ)).toNat

end

end A216245.P2681099311508759947

/-! ## A216245.P8192004104979062677

`A208239(A275426(n))+A110654(n)`
-/

namespace A216245.P8192004104979062677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208239 (A275426 n).toNat + A110654 n

end

end A216245.P8192004104979062677

/-! ## A216245.P17553090475585648660

`A003056(A080036(n)+A056428(n+1))`
-/

namespace A216245.P17553090475585648660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A080036 n + A056428 (n + 1)).toNat

end

end A216245.P17553090475585648660

/-! ## A216245.P17196025212587825819

`A003056(A105321(n)+A056428(n+1))`
-/

namespace A216245.P17196025212587825819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A105321 n + A056428 (n + 1)).toNat

end

end A216245.P17196025212587825819

/-!
# A216246: O.g.f. satisfies: A(x) = Sum_{n>=0} n^n * x^n * A(n*x^2)^n/n! * exp(-n*x*A(n*x^2)).

The programs for A216246, there is no canonical definition to state claims against.
-/

/-! ## A216246.P6787456489453112867

`A181769(n)-A008651(A181770(n))`
-/

namespace A216246.P6787456489453112867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181769 n - A008651 (A181770 n).toNat

end

end A216246.P6787456489453112867

/-! ## A216246.P14029473912350244503

`A037203(A037170(n+1)+A001003(n))`
-/

namespace A216246.P14029473912350244503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037203 (A037170 (n + 1) + A001003 n).toNat

end

end A216246.P14029473912350244503

/-!
# A216247: O.g.f. satisfies: A(x) = Sum_{n>=0} n^n * x^n * A(n^2*x^2)^n/n! * exp(-n*x*A(n^2*x^2)).

The programs for A216247, there is no canonical definition to state claims against.
-/

/-! ## A216247.P5340343090947130708

`A138183(A148035(n))-A164363(n+1)`
-/

namespace A216247.P5340343090947130708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138183 (A148035 n).toNat - A164363 (n + 1)

end

end A216247.P5340343090947130708

/-! ## A216247.P8841467593578239739

`xor(A128103(n), A217657(A100843(n+1)))`
-/

namespace A216247.P8841467593578239739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A128103 n) (A217657 (A100843 (n + 1)).toNat)

end

end A216247.P8841467593578239739

/-! ## A216247.P9729680298211724332

`A110266(A121138(n+1))-A066490(A320652(n))`
-/

namespace A216247.P9729680298211724332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110266 (A121138 (n + 1)).toNat - A066490 (A320652 n).toNat

end

end A216247.P9729680298211724332

/-!
# A216248: T(n,k)=((n+k)^2-4*k+3-(-1)^k-(n+k-2)*(-1)^(n+k))/2-1, if k=1 and (n mod 2)=1; T(n,k)=((n+k)^2-4*k+3-(-1)^k-(n+k-2)*(-1)^(n+k))/2, else. Table T(n,k) read by antidiagonals; n, k > 0.

The programs for A216248, there is no canonical definition to state claims against.
-/

/-! ## A216248.P16514734392266699484

`A211377(n+1)+A216250(n+1)-A216249(n+1)`
-/

namespace A216248.P16514734392266699484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211377 (n + 1) + (A216250 (n + 1) - A216249 (n + 1))

end

end A216248.P16514734392266699484

/-! ## A216248.P3639255682540873987

`A213171(A199855(A216249(A199855(A213205(n+1)))))`
-/

namespace A216248.P3639255682540873987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213171 (A199855 (A216249 (A199855 (A213205 (n + 1)).toNat).toNat).toNat).toNat

end

end A216248.P3639255682540873987

/-!
# A216249: T(n,k) = ((n+k)^2-4*k+3-2*(-1)^n+(-1)^k-(n+k-4)*(-1)^(n+k))/2-2, if k=1 and (n mod 2)=1; T(n,k)=((n+k)^2-4*k+3-2*(-1)^n+(-1)^k-(n+k-4)*(-1)^(n+k))/2, else. Table T(n,k) read by antidiagonals; n , k > 0.

The programs for A216249, there is no canonical definition to state claims against.
-/

/-! ## A216249.P16913147635931643748

`A211377(n+1)+A216250(n+1)-A216248(n+1)`
-/

namespace A216249.P16913147635931643748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211377 (n + 1) + (A216250 (n + 1) - A216248 (n + 1))

end

end A216249.P16913147635931643748

/-!
# A216250: T(n,k) = ((n+k)^2-4*k+3-2*(-1)^n-(-1)^k-(n+k-4)*(-1)^(n+k))/2-3, if k=1 and (n mod 2)=1; T(n,k) = ((n+k)^2-4*k+3-2*(-1)^n-(-1)^k-(n+k-4)*(-1)^(n+k))/2, else. Table T(n,k) read by antidiagonals; n, k > 0.

The programs for A216250, there is no canonical definition to state claims against.
-/

/-! ## A216250.P12148498067614733064

`A216248(n+1)+A216249(n+1)-A211377(n+1)`
-/

namespace A216250.P12148498067614733064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216248 (n + 1) + (A216249 (n + 1) - A211377 (n + 1))

end

end A216250.P12148498067614733064

/-! ## A216250.P8927564609195578939

`A213205(A213196(A216248(n+1)))`
-/

namespace A216250.P8927564609195578939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213205 (A213196 (A216248 (n + 1)).toNat).toNat

end

end A216250.P8927564609195578939

/-! ## A216250.P567969223947342265

`A213205(A199855(A216248(A199855(A211377(n+1)))))`
-/

namespace A216250.P567969223947342265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213205 (A199855 (A216248 (A199855 (A211377 (n + 1)).toNat).toNat).toNat).toNat

end

end A216250.P567969223947342265

/-! ## A216250.P17872883484379483319

`A216249(A216248(A213196(n+1)))`
-/

namespace A216250.P17872883484379483319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216249 (A216248 (A213196 (n + 1)).toNat).toNat

end

end A216250.P17872883484379483319

/-! ## A216250.P10991420529188713243

`A216249(A216248(A199855(A211377(A199855(n+1)))))`
-/

namespace A216250.P10991420529188713243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216249 (A216248 (A199855 (A211377 (A199855 (n + 1)).toNat).toNat).toNat).toNat

end

end A216250.P10991420529188713243

/-!
# A216252: A213196 as table read layer by layer clockwise.

The programs for A216252, there is no canonical definition to state claims against.
-/

/-! ## A216252.P9020383893108655604

`A213196(A064788(n+1))`
-/

namespace A216252.P9020383893108655604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213196 (A064788 (n + 1)).toNat

end

end A216252.P9020383893108655604

/-! ## A216252.P9128094694952865363

`A213196(A196199(n)+A064790(n+1))`
-/

namespace A216252.P9128094694952865363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213196 (A196199 n + A064790 (n + 1)).toNat

end

end A216252.P9128094694952865363

/-! ## A216252.P497685099327980237

`A216253(A060736(A211377(A216253(n+1))))`
-/

namespace A216252.P497685099327980237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216253 (A060736 (A211377 (A216253 (n + 1)).toNat).toNat).toNat

end

end A216252.P497685099327980237

/-! ## A216252.P3567613714674765991

`A213196(A194258(n+1)+A064790(n+1)-A194195(n+1))`
-/

namespace A216252.P3567613714674765991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213196 (A194258 (n + 1) + (A064790 (n + 1) - A194195 (n + 1))).toNat

end

end A216252.P3567613714674765991

/-! ## A216252.P16014773496638103606

`A213196(A194280(n+1)+A220603(n+1)-A194195(n+1))`
-/

namespace A216252.P16014773496638103606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213196 (A194280 (n + 1) + (A220603 (n + 1) - A194195 (n + 1))).toNat

end

end A216252.P16014773496638103606

/-! ## A216252.P17128412849374161160

`A213196(A194258(n+1)+A194280(n+1)-A220604(n+1))`
-/

namespace A216252.P17128412849374161160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213196 (A194258 (n + 1) + (A194280 (n + 1) - A220604 (n + 1))).toNat

end

end A216252.P17128412849374161160

/-!
# A216253: A213196 as table read layer by layer - layer clockwise, layer counterclockwise and so on.

The programs for A216253, there is no canonical definition to state claims against.
-/

/-! ## A216253.P13326492677009677973

`A216252(A060734(A194280(n+1)))`
-/

namespace A216253.P13326492677009677973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216252 (A060734 (A194280 (n + 1)).toNat).toNat

end

end A216253.P13326492677009677973

/-! ## A216253.P13529272847372699357

`A213196(A329116(n)+A194280(n+1))`
-/

namespace A216253.P13529272847372699357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213196 (A329116 n + A194280 (n + 1)).toNat

end

end A216253.P13529272847372699357

/-! ## A216253.P12294446621969954111

`A216252(A060734(A188568(A064788(n+1))))`
-/

namespace A216253.P12294446621969954111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216252 (A060734 (A188568 (A064788 (n + 1)).toNat).toNat).toNat

end

end A216253.P12294446621969954111

/-! ## A216253.P16060353752943858121

`A216252(A060736(A188568(A064790(n+1))))`
-/

namespace A216253.P16060353752943858121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216252 (A060736 (A188568 (A064790 (n + 1)).toNat).toNat).toNat

end

end A216253.P16060353752943858121

/-!
# A216255: Triangle read by rows: T(n,k) is the number of labeled rooted trees of height at most 2 that have exactly k nodes at a distance 2 from the root; n>=1, 0<=k<=n-1.

The programs for A216255, the canonical program `A216255.P3667165044918371564` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A216255 has offset 1).

The definition of A216255 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3374 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A216255.P14438604682254394728

`∑[char[∑[n]]]*A059299(n)`
-/

namespace A216255.P14438604682254394728
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A059299 n

end

end A216255.P14438604682254394728

namespace A216255

/-- `∑[char[∑[n]]]*A059299(n)` -/
def P14438604682254394728.Spec : Prop :=
  ∀ n, P14438604682254394728.a n = A216255 (n + 1)

end A216255

/-! ## A216255.P3667165044918371564

`A003506(n+1)*A003992(n)`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A216255

/-- `A003506(n+1)*A003992(n)` -/
def P3667165044918371564.Spec : Prop :=
  ∀ n, P3667165044918371564.a n = A216255 (n + 1)

theorem P3667165044918371564.correct : P3667165044918371564.Spec := by
  intro n
  simp only [A216255, Nat.add_sub_cancel]

end A216255

/-! ## A216255.P2678301473166462491

`round(sqrt(2*(n+1)))*A059297(A061579(n))`
-/

namespace A216255.P2678301473166462491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (2 * (n + 1) : ℝ)) * A059297 (A061579 n).toNat

end

end A216255.P2678301473166462491

namespace A216255

/-- `round(sqrt(2*(n+1)))*A059297(A061579(n))` -/
def P2678301473166462491.Spec : Prop :=
  ∀ n, P2678301473166462491.a n = A216255 (n + 1)

end A216255

/-! ## A216255.P1448719228096582546

`A002024(n+1)*A003992(n)*A007318(n)`
-/

namespace A216255.P1448719228096582546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (n + 1) * A003992 n * A007318 n

end

end A216255.P1448719228096582546

namespace A216255

/-- `A002024(n+1)*A003992(n)*A007318(n)` -/
def P1448719228096582546.Spec : Prop :=
  ∀ n, P1448719228096582546.a n = A216255 (n + 1)

end A216255

/-! ## A216255.P11769239458997289903

`A059299(n)*A183110(n+1)`
-/

namespace A216255.P11769239458997289903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059299 n * A183110 (n + 1)

end

end A216255.P11769239458997289903

namespace A216255

/-- `A059299(n)*A183110(n+1)` -/
def P11769239458997289903.Spec : Prop :=
  ∀ n, P11769239458997289903.a n = A216255 (n + 1)

end A216255

/-! ## A216255.P5310630380914659614

`A059299(n)*A376239(n+1)`
-/

namespace A216255.P5310630380914659614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059299 n * A376239 (n + 1)

end

end A216255.P5310630380914659614

namespace A216255

/-- `A059299(n)*A376239(n+1)` -/
def P5310630380914659614.Spec : Prop :=
  ∀ n, P5310630380914659614.a n = A216255 (n + 1)

end A216255

/-!
# A216256: Minimum length of a longest unimodal subsequence of a permutation of n elements.

The programs for A216256, the canonical program `A216256.P2302839394625141920` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A216256 has offset 1).

The definition of A216256 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A216256.P2302839394625141920

`ceil(sqrt(3*(n+1)-3/4)-1/2)`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A216256

/-- `ceil(sqrt(3*(n+1)-3/4)-1/2)` -/
def P2302839394625141920.Spec : Prop :=
  ∀ n, P2302839394625141920.a n = A216256 (n + 1)

theorem P2302839394625141920.correct : P2302839394625141920.Spec := by
  intro n
  simp only [A216256, Nat.add_sub_cancel]

end A216256

/-! ## A216256.P9503223409729782540

`comp[∑[∑[n²%3]]]-n-1`
-/

namespace A216256.P9503223409729782540
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2 % 3

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ) - 1

end

end A216256.P9503223409729782540

namespace A216256

/-- `comp[∑[∑[n²%3]]]-n-1` -/
def P9503223409729782540.Spec : Prop :=
  ∀ n, P9503223409729782540.a n = A216256 (n + 1)

end A216256

/-! ## A216256.P3719168410549882082

`∑[char[∑[n%2*ceil(n/3)]]]`
-/

namespace A216256.P3719168410549882082
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n % 2 : ℕ) : ℤ) * ⌈(n : ℚ) / 3⌉

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A216256.P3719168410549882082

namespace A216256

/-- `∑[char[∑[n%2*ceil(n/3)]]]` -/
def P3719168410549882082.Spec : Prop :=
  ∀ n, (P3719168410549882082.a n : ℤ) = A216256 (n + 1)

end A216256

/-! ## A216256.P4327338339903373439

`floor((a(n-1)+4)*n/(a(n-1)+n))` with `a(0)=1`
-/

namespace A216256.P4327338339903373439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌊(a (n - 1) + 4 : ℚ) * ((n : ℚ) / (a (n - 1) + (n : ℤ) : ℚ))⌋

end

end A216256.P4327338339903373439

namespace A216256

/-- `floor((a(n-1)+4)*n/(a(n-1)+n))` -/
def P4327338339903373439.Spec : Prop :=
  ∀ n, P4327338339903373439.a n = A216256 (n + 1)

end A216256

/-! ## A216256.P17521867186361589200

`∑[char[A008796(n)]]`
-/

namespace A216256.P17521867186361589200
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008796 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A216256.P17521867186361589200

namespace A216256

/-- `∑[char[A008796(n)]]` -/
def P17521867186361589200.Spec : Prop :=
  ∀ n, (P17521867186361589200.a n : ℤ) = A216256 (n + 1)

end A216256

/-! ## A216256.P4795505314704918047

`∑[char[∑[A004396(n)]]]`
-/

namespace A216256.P4795505314704918047
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A216256.P4795505314704918047

namespace A216256

/-- `∑[char[∑[A004396(n)]]]` -/
def P4795505314704918047.Spec : Prop :=
  ∀ n, (P4795505314704918047.a n : ℤ) = A216256 (n + 1)

end A216256

/-! ## A216256.P9579132330955646779

`∑[char[A069905(or(1, n))]]`
-/

namespace A216256.P9579132330955646779
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069905 (Nat.lor 1 n)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A216256.P9579132330955646779

namespace A216256

/-- `∑[char[A069905(or(1, n))]]` -/
def P9579132330955646779.Spec : Prop :=
  ∀ n, (P9579132330955646779.a n : ℤ) = A216256 (n + 1)

end A216256

/-! ## A216256.P6560396576664082666

`ceil(A216522(n)/2)+1`
-/

namespace A216256.P6560396576664082666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A216522 n : ℚ) / 2⌉ + 1

end

end A216256.P6560396576664082666

namespace A216256

/-- `ceil(A216522(n)/2)+1` -/
def P6560396576664082666.Spec : Prop :=
  ∀ n, P6560396576664082666.a n = A216256 (n + 1)

end A216256

/-! ## A216256.P3571729209925901540

`∑[char[A069905(2*n+1)]]`
-/

namespace A216256.P3571729209925901540
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069905 (2 * n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A216256.P3571729209925901540

namespace A216256

/-- `∑[char[A069905(2*n+1)]]` -/
def P3571729209925901540.Spec : Prop :=
  ∀ n, (P3571729209925901540.a n : ℤ) = A216256 (n + 1)

end A216256

/-! ## A216256.P2351947626888523508

`∑[char[A211540(2*n+1)]]`
-/

namespace A216256.P2351947626888523508
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211540 (2 * n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A216256.P2351947626888523508

namespace A216256

/-- `∑[char[A211540(2*n+1)]]` -/
def P2351947626888523508.Spec : Prop :=
  ∀ n, (P2351947626888523508.a n : ℤ) = A216256 (n + 1)

end A216256

/-! ## A216256.P7776019333536028657

`round(sqrt(A016777(n)))%(n+3)`
-/

namespace A216256.P7776019333536028657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway (Real.sqrt (A016777 n : ℝ))) (n + 3 : ℤ)

end

end A216256.P7776019333536028657

namespace A216256

/-- `round(sqrt(A016777(n)))%(n+3)` -/
def P7776019333536028657.Spec : Prop :=
  ∀ n, P7776019333536028657.a n = A216256 (n + 1)

end A216256

/-! ## A216256.P9987668375674967352

`∑[char[∑[A002264(2*n+1)]]]`
-/

namespace A216256.P9987668375674967352
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A216256.P9987668375674967352

namespace A216256

/-- `∑[char[∑[A002264(2*n+1)]]]` -/
def P9987668375674967352.Spec : Prop :=
  ∀ n, (P9987668375674967352.a n : ℤ) = A216256 (n + 1)

end A216256

/-! ## A216256.P11455581200924304795

`∑[char[∑[(2*n)%A042968(n+1)]]]`
-/

namespace A216256.P11455581200924304795
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (2 * n : ℤ) (A042968 (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A216256.P11455581200924304795

namespace A216256

/-- `∑[char[∑[(2*n)%A042968(n+1)]]]` -/
def P11455581200924304795.Spec : Prop :=
  ∀ n, (P11455581200924304795.a n : ℤ) = A216256 (n + 1)

end A216256

/-! ## A216256.P12389901020667704797

`A080513(A216522(n))`
-/

namespace A216256.P12389901020667704797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080513 (A216522 n).toNat

end

end A216256.P12389901020667704797

namespace A216256

/-- `A080513(A216522(n))` -/
def P12389901020667704797.Spec : Prop :=
  ∀ n, P12389901020667704797.a n = A216256 (n + 1)

end A216256

/-! ## A216256.P17455162525729813964

`floor(A036496(n+1)/2)`
-/

namespace A216256.P17455162525729813964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A036496 (n + 1) : ℚ) / 2⌋

end

end A216256.P17455162525729813964

namespace A216256

/-- `floor(A036496(n+1)/2)` -/
def P17455162525729813964.Spec : Prop :=
  ∀ n, P17455162525729813964.a n = A216256 (n + 1)

end A216256

/-! ## A216256.P14895631638023042598

`A004526(A036496(n+1))`
-/

namespace A216256.P14895631638023042598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A036496 (n + 1)).toNat

end

end A216256.P14895631638023042598

namespace A216256

/-- `A004526(A036496(n+1))` -/
def P14895631638023042598.Spec : Prop :=
  ∀ n, P14895631638023042598.a n = A216256 (n + 1)

end A216256

/-! ## A216256.P912368269185450282

`∑[A010054(comp[2*(n+1)+n])]`
-/

namespace A216256.P912368269185450282
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1) + n

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A216256.P912368269185450282

namespace A216256

/-- `∑[A010054(comp[2*(n+1)+n])]` -/
def P912368269185450282.Spec : Prop :=
  ∀ n, P912368269185450282.a n = A216256 (n + 1)

end A216256

/-! ## A216256.P1392454680110776351

`A003056(A032766(n))+1`
-/

namespace A216256.P1392454680110776351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A032766 n).toNat + 1

end

end A216256.P1392454680110776351

namespace A216256

/-- `A003056(A032766(n))+1` -/
def P1392454680110776351.Spec : Prop :=
  ∀ n, P1392454680110776351.a n = A216256 (n + 1)

end A216256

/-! ## A216256.P15815608136579408234

`A002024(floor(3*n/2)+1)`
-/

namespace A216256.P15815608136579408234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (⌊3 * ((n : ℚ) / 2)⌋ + 1).toNat

end

end A216256.P15815608136579408234

namespace A216256

/-- `A002024(floor(3*n/2)+1)` -/
def P15815608136579408234.Spec : Prop :=
  ∀ n, P15815608136579408234.a n = A216256 (n + 1)

end A216256

/-!
# A216258: Numbers n such that 4n is a partition number.

The programs for A216258, there is no canonical definition to state claims against.
-/

/-! ## A216258.P14222575993548293323

`A225324(n+1)/4`
-/

namespace A216258.P14222575993548293323
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A225324 (n + 1) : ℚ) / 4

end

end A216258.P14222575993548293323

/-! ## A216258.P8618238076943898756

`A000041(A237278(n+1))/4`
-/

namespace A216258.P8618238076943898756
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000041 (A237278 (n + 1)).toNat : ℚ) / 4

end

end A216258.P8618238076943898756

/-! ## A216258.P7582141347786460108

`A000041(lt[1, A278478(n)])/4`
-/

namespace A216258.P7582141347786460108
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278478 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000041 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n) : ℚ) / 4

end

end A216258.P7582141347786460108

/-! ## A216258.P17806402192864585906

`ceil(A000065(lt[1, A278478(n)])/4)`
-/

namespace A216258.P17806402192864585906
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278478 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A000065 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n) : ℚ) / 4⌉

end

end A216258.P17806402192864585906

/-! ## A216258.P13622308260161315134

`A000041(eq[0, A000041(n)%4])/4`
-/

namespace A216258.P13622308260161315134
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000041 n) 4

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000041 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n) : ℚ) / 4

end

end A216258.P13622308260161315134

/-!
# A216259: Numbers k that are not squarefree such that the difference between sigma(k) and usigma(k) is a square > 0.

The programs for A216259, there is no canonical definition to state claims against.
-/

/-! ## A216259.P3757809343932009786

`eq[1, A339431(A048146(n+1))%2]+1`
-/

namespace A216259.P3757809343932009786
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A339431 (A048146 (n + 1)).toNat) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A216259.P3757809343932009786

/-!
# A216263: Expansion of 1 / ((1-2*x)*(1-4*x+x^2)).

The programs for A216263, the canonical program `A216263.P4102752315684042140` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A216263 has offset 0).

The definition of A216263 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A216263.P4102752315684042140

`6*a(n-1)-9*a(n-2)+2*a(n-3)` with `a(0)=1, a(1)=6, a(2)=27`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A216263

/-- `6*a(n-1)-9*a(n-2)+2*a(n-3)` -/
def P4102752315684042140.Spec : Prop :=
  ∀ n, P4102752315684042140.a n = A216263 n

theorem P4102752315684042140.correct : P4102752315684042140.Spec := by
  intro n
  simp only [A216263]

end A216263

/-! ## A216263.P13627459322066378140

`∑[A216271(n)]`
-/

namespace A216263.P13627459322066378140
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216271 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A216263.P13627459322066378140

namespace A216263

/-- `∑[A216271(n)]` -/
def P13627459322066378140.Spec : Prop :=
  ∀ n, P13627459322066378140.a n = A216263 n

end A216263

/-! ## A216263.P9465422637263448783

`∑[∑[A216241(2*n)]]`
-/

namespace A216263.P9465422637263448783
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216241 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A216263.P9465422637263448783

namespace A216263

/-- `∑[∑[A216241(2*n)]]` -/
def P9465422637263448783.Spec : Prop :=
  ∀ n, P9465422637263448783.a n = A216263 n

end A216263

/-! ## A216263.P11150818531685563394

`A087946(n+1)-2^(n+1)`
-/

namespace A216263.P11150818531685563394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087946 (n + 1) - (2 ^ (n + 1) : ℤ)

end

end A216263.P11150818531685563394

namespace A216263

/-- `A087946(n+1)-2^(n+1)` -/
def P11150818531685563394.Spec : Prop :=
  ∀ n, P11150818531685563394.a n = A216263 n

end A216263

/-! ## A216263.P5735524303386239273

`A123020(n+3)-2^(n+2)`
-/

namespace A216263.P5735524303386239273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123020 (n + 3) - (2 ^ (n + 2) : ℤ)

end

end A216263.P5735524303386239273

namespace A216263

/-- `A123020(n+3)-2^(n+2)` -/
def P5735524303386239273.Spec : Prop :=
  ∀ n, P5735524303386239273.a n = A216263 n

end A216263

/-! ## A216263.P11459587631840832533

`A099780(n)+3*a(n-1)` with `a(0)=1`
-/

namespace A216263.P11459587631840832533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A099780 n + 3 * a (n - 1)

end

end A216263.P11459587631840832533

namespace A216263

/-- `A099780(n)+3*a(n-1)` -/
def P11459587631840832533.Spec : Prop :=
  ∀ n, P11459587631840832533.a n = A216263 n

end A216263

/-! ## A216263.P8676406270710008223

`∑[A087944(n)+3*a(n-1)]` with `a(0)=1`
-/

namespace A216263.P8676406270710008223
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A087944 n + 3 * f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A216263.P8676406270710008223

namespace A216263

/-- `∑[A087944(n)+3*a(n-1)]` -/
def P8676406270710008223.Spec : Prop :=
  ∀ n, P8676406270710008223.a n = A216263 n

end A216263

/-! ## A216263.P1434299414098052417

`A001353(n+1)+2*a(n-1)` with `a(0)=1`
-/

namespace A216263.P1434299414098052417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A001353 (n + 1) + 2 * a (n - 1)

end

end A216263.P1434299414098052417

namespace A216263

/-- `A001353(n+1)+2*a(n-1)` -/
def P1434299414098052417.Spec : Prop :=
  ∀ n, P1434299414098052417.a n = A216263 n

end A216263

/-! ## A216263.P7993952179674548514

`Δ[A061278(n)]+a(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A216263.P7993952179674548514
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061278 n

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  f1 (n + 1) - f1 n + (a (n - 1) + a (n - 1))

end

end A216263.P7993952179674548514

namespace A216263

/-- `Δ[A061278(n)]+a(n-1)+a(n-1)` -/
def P7993952179674548514.Spec : Prop :=
  ∀ n, P7993952179674548514.a n = A216263 n

end A216263

/-! ## A216263.P11210613793027719092

`∑[A001835(n+1)+a(n-1)+a(n-1)]` with `a(0)=1`
-/

namespace A216263.P11210613793027719092
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A001835 (n + 1) + (f1 (n - 1) + f1 (n - 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A216263.P11210613793027719092

namespace A216263

/-- `∑[A001835(n+1)+a(n-1)+a(n-1)]` -/
def P11210613793027719092.Spec : Prop :=
  ∀ n, P11210613793027719092.a n = A216263 n

end A216263

/-! ## A216263.P16133088059548091945

`Δ[A101265(n+1)]+a(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A216263.P16133088059548091945
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101265 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  f1 (n + 1) - f1 n + (a (n - 1) + a (n - 1))

end

end A216263.P16133088059548091945

namespace A216263

/-- `Δ[A101265(n+1)]+a(n-1)+a(n-1)` -/
def P16133088059548091945.Spec : Prop :=
  ∀ n, P16133088059548091945.a n = A216263 n

end A216263

/-! ## A216263.P17078137843090963976

`A120665(n+1)+A054485(n)`
-/

namespace A216263.P17078137843090963976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120665 (n + 1) + A054485 n

end

end A216263.P17078137843090963976

namespace A216263

/-- `A120665(n+1)+A054485(n)` -/
def P17078137843090963976.Spec : Prop :=
  ∀ n, P17078137843090963976.a n = A216263 n

end A216263

/-! ## A216263.P884418751329237142

`∑[∑[A144721(n)-A123020(n)]]`
-/

namespace A216263.P884418751329237142
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144721 n - A123020 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A216263.P884418751329237142

namespace A216263

/-- `∑[∑[A144721(n)-A123020(n)]]` -/
def P884418751329237142.Spec : Prop :=
  ∀ n, P884418751329237142.a n = A216263 n

end A216263

/-! ## A216263.P15256282763527946578

`∑[A052530(n+1)-A099780(n)]`
-/

namespace A216263.P15256282763527946578
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052530 (n + 1) - A099780 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A216263.P15256282763527946578

namespace A216263

/-- `∑[A052530(n+1)-A099780(n)]` -/
def P15256282763527946578.Spec : Prop :=
  ∀ n, P15256282763527946578.a n = A216263 n

end A216263

/-! ## A216263.P874767239938047077

`A006253(n+1)-A001045(n+2)`
-/

namespace A216263.P874767239938047077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006253 (n + 1) - A001045 (n + 2)

end

end A216263.P874767239938047077

namespace A216263

/-- `A006253(n+1)-A001045(n+2)` -/
def P874767239938047077.Spec : Prop :=
  ∀ n, P874767239938047077.a n = A216263 n

end A216263

/-! ## A216263.P11685173842311614156

`∑[A099780(n+1)-A000079(n+1)]`
-/

namespace A216263.P11685173842311614156
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099780 (n + 1) - A000079 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A216263.P11685173842311614156

namespace A216263

/-- `∑[A099780(n+1)-A000079(n+1)]` -/
def P11685173842311614156.Spec : Prop :=
  ∀ n, P11685173842311614156.a n = A216263 n

end A216263

/-! ## A216263.P2627272614929161656

`∑[A001075(n+1)-A123020(n+1)]`
-/

namespace A216263.P2627272614929161656
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001075 (n + 1) - A123020 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A216263.P2627272614929161656

namespace A216263

/-- `∑[A001075(n+1)-A123020(n+1)]` -/
def P2627272614929161656.Spec : Prop :=
  ∀ n, P2627272614929161656.a n = A216263 n

end A216263

/-! ## A216263.P2415032719948503831

`∑[A001835(n+2)-A087944(n+1)]`
-/

namespace A216263.P2415032719948503831
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001835 (n + 2) - A087944 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A216263.P2415032719948503831

namespace A216263

/-- `∑[A001835(n+2)-A087944(n+1)]` -/
def P2415032719948503831.Spec : Prop :=
  ∀ n, P2415032719948503831.a n = A216263 n

end A216263

/-! ## A216263.P16606068157081560614

`A006253(n+1)+1-A052953(n+1)`
-/

namespace A216263.P16606068157081560614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006253 (n + 1) + (1 - A052953 (n + 1))

end

end A216263.P16606068157081560614

namespace A216263

/-- `A006253(n+1)+1-A052953(n+1)` -/
def P16606068157081560614.Spec : Prop :=
  ∀ n, P16606068157081560614.a n = A216263 n

end A216263

/-!
# A216264: Number of rich binary words of length n.

The programs for A216264, there is no canonical definition to state claims against.
-/

/-! ## A216264.P4384415121098135045

`2^n-A225681(n)`
-/

namespace A216264.P4384415121098135045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - A225681 n

end

end A216264.P4384415121098135045

/-! ## A216264.P12133059215267014896

`A000051(n)-(A225681(n)+1)`
-/

namespace A216264.P12133059215267014896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000051 n - (A225681 n + 1)

end

end A216264.P12133059215267014896

/-! ## A216264.P7431052799049637671

`A245092(A000079(n)-A225681(n))`
-/

namespace A216264.P7431052799049637671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245092 (A000079 n - A225681 n).toNat

end

end A216264.P7431052799049637671

/-! ## A216264.P6058415499004526311

`A000079(n)-A120417(A089408(n))`
-/

namespace A216264.P6058415499004526311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n - A120417 (A089408 n).toNat

end

end A216264.P6058415499004526311

/-! ## A216264.P6619403185896751384

`A000079(n)-A004198(A001678(2*n))`
-/

namespace A216264.P6619403185896751384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n - A004198 (A001678 (2 * n)).toNat

end

end A216264.P6619403185896751384

/-!
# A216265: Number of primes between n^3 - n and n^3.

The programs for A216265, there is no canonical definition to state claims against.
-/

/-! ## A216265.P9862351158822240721

`A188542(n+1)-A216266(n+1)`
-/

namespace A216265.P9862351158822240721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188542 (n + 1) - A216266 (n + 1)

end

end A216265.P9862351158822240721

/-! ## A216265.P6006501097551613754

`A038098(n+1)-A230980(∑[A028896(n)])`
-/

namespace A216265.P6006501097551613754
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028896 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038098 (n + 1) - A230980 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A216265.P6006501097551613754

/-! ## A216265.P688920191350239600

`A001222(A083329(n))-char[A058764(n)]`
-/

namespace A216265.P688920191350239600
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058764 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A083329 n).toNat - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A216265.P688920191350239600

/-! ## A216265.P245469168228160039

`A275806(A017996(n)+A002522(n))-A216266(n+1)`
-/

namespace A216265.P245469168228160039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275806 (A017996 n + A002522 n).toNat - A216266 (n + 1)

end

end A216265.P245469168228160039

/-! ## A216265.P1524592978062664088

`A257990(C(A328171(n+4), A003987(n)))`
-/

namespace A216265.P1524592978062664088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257990 (Nat.choose (A328171 (n + 4)).toNat (A003987 n).toNat)

end

end A216265.P1524592978062664088

/-!
# A216266: Number of primes between n^3 and n^3+n (inclusive).

The programs for A216266, the canonical program `A216266.P3752529895480230407` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A216266 has offset 1).

The definition of A216266 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000720, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A216266.P3752529895480230407

`A000720((n+1)^3+n+1)-A000720((n+1)^3)`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A216266

/-- `A000720((n+1)^3+n+1)-A000720((n+1)^3)` -/
def P3752529895480230407.Spec : Prop :=
  ∀ n, P3752529895480230407.a n = A216266 (n + 1)

theorem P3752529895480230407.correct : P3752529895480230407.Spec := by
  intro n
  simp only [A216266, Nat.add_sub_cancel]

end A216266

/-! ## A216266.P13256606696789450638

`A188542(n+1)-A216265(n+1)`
-/

namespace A216266.P13256606696789450638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188542 (n + 1) - A216265 (n + 1)

end

end A216266.P13256606696789450638

namespace A216266

/-- `A188542(n+1)-A216265(n+1)` -/
def P13256606696789450638.Spec : Prop :=
  ∀ n, P13256606696789450638.a n = A216266 (n + 1)

end A216266

/-! ## A216266.P6999529964261456613

`A335294(A357813(n+3))`
-/

namespace A216266.P6999529964261456613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335294 (A357813 (n + 3)).toNat

end

end A216266.P6999529964261456613

namespace A216266

/-- `A335294(A357813(n+3))` -/
def P6999529964261456613.Spec : Prop :=
  ∀ n, P6999529964261456613.a n = A216266 (n + 1)

end A216266

/-! ## A216266.P16794812642683957663

`and(A020985(n), A202340(A163683(n)))`
-/

namespace A216266.P16794812642683957663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A020985 n) (A202340 (A163683 n).toNat)

end

end A216266.P16794812642683957663

namespace A216266

/-- `and(A020985(n), A202340(A163683(n)))` -/
def P16794812642683957663.Spec : Prop :=
  ∀ n, P16794812642683957663.a n = A216266 (n + 1)

end A216266

/-! ## A216266.P7609746859756225961

`A096863(A133031(n+1)+A008758(n))`
-/

namespace A216266.P7609746859756225961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096863 (A133031 (n + 1) + A008758 n).toNat

end

end A216266.P7609746859756225961

namespace A216266

/-- `A096863(A133031(n+1)+A008758(n))` -/
def P7609746859756225961.Spec : Prop :=
  ∀ n, P7609746859756225961.a n = A216266 (n + 1)

end A216266

/-!
# A216267: Numbers that are both tetrahedral and pronic.

The programs for A216267, there is no canonical definition to state claims against.
-/

/-! ## A216267.P12275822402067696809

`∩[C(n+2, 3), n²+n]`
-/

namespace A216267.P12275822402067696809
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 2) 3

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2 + n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = x) n

end

end A216267.P12275822402067696809

/-!
# A216268: Tetrahedral numbers of the form k^2 - 1.

The programs for A216268, there is no canonical definition to state claims against.
-/

/-! ## A216268.P10706918792188426118

`A216269(n+1)²-1`
-/

namespace A216268.P10706918792188426118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216269 (n + 1) ^ 2 - 1

end

end A216268.P10706918792188426118

/-! ## A216268.P15289661545440756581

`A172971(n)+A216269(n+1)²`
-/

namespace A216268.P15289661545440756581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172971 n + A216269 (n + 1) ^ 2

end

end A216268.P15289661545440756581

/-! ## A216268.P14675497158433705713

`A321800(n)+A216269(n+1)²`
-/

namespace A216268.P14675497158433705713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321800 n + A216269 (n + 1) ^ 2

end

end A216268.P14675497158433705713

/-!
# A216269: Numbers k such that k^2 - 1 is a tetrahedral number (A000292).

The programs for A216269, there is no canonical definition to state claims against.
-/

/-! ## A216269.P13177851151207067914

`sqrt(A216268(n+1)+1)`
-/

namespace A216269.P13177851151207067914
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A216268 (n + 1) + 1 : ℝ)

end

end A216269.P13177851151207067914

/-! ## A216269.P283802287769980766

`root(A216268(n+1)+1, p?[A263110(n+1)])`
-/

namespace A216269.P283802287769980766
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263110 (n + 1)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A216268 (n + 1) + 1 : ℝ) ^ (1 / (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℝ))

end

end A216269.P283802287769980766

/-! ## A216269.P17518285561244554309

`(A216268(n+1)+1)^2^A321804(A151934(n))`
-/

namespace A216269.P17518285561244554309
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A216268 (n + 1) + 1 : ℝ) ^ ((2 : ℚ) ^ (A321804 (A151934 n).toNat : ℤ) : ℝ)

end

end A216269.P17518285561244554309

/-!
# A216270: Numbers n such that n+(n+1), n^2+(n+1)^2, n+(n+1)^2, n^2+(n+1) are all prime.

The programs for A216270, there is no canonical definition to state claims against.
-/

/-! ## A216270.P3379821963680382380

`∩[A068501(n+1), A211181(n+1)]`
-/

namespace A216270.P3379821963680382380
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068501 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211181 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A216270.P3379821963680382380

/-!
# A216271: Expansion of (1-x)/((1-2x)(1-4x+x^2)).

The programs for A216271, the canonical program `A216271.P5119540753351067718` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A216271 has offset 0).

The definition of A216271 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A216271.P5119540753351067718

`6*a(n-1)-9*a(n-2)+2*a(n-3)` with `a(0)=1, a(1)=5, a(2)=21`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A216271

/-- `6*a(n-1)-9*a(n-2)+2*a(n-3)` -/
def P5119540753351067718.Spec : Prop :=
  ∀ n, P5119540753351067718.a n = A216271 n

theorem P5119540753351067718.correct : P5119540753351067718.Spec := by
  intro n
  simp only [A216271]

end A216271

/-! ## A216271.P13266202636790190080

`A001353(n+2)-A087946(n+1)`
-/

namespace A216271.P13266202636790190080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001353 (n + 2) - A087946 (n + 1)

end

end A216271.P13266202636790190080

namespace A216271

/-- `A001353(n+2)-A087946(n+1)` -/
def P13266202636790190080.Spec : Prop :=
  ∀ n, P13266202636790190080.a n = A216271 n

end A216271

/-! ## A216271.P14307214021017618044

`∑[A216241(2*n)]`
-/

namespace A216271.P14307214021017618044
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216241 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A216271.P14307214021017618044

namespace A216271

/-- `∑[A216241(2*n)]` -/
def P14307214021017618044.Spec : Prop :=
  ∀ n, P14307214021017618044.a n = A216271 n

end A216271

/-! ## A216271.P8191746662932028476

`Δ[A087946(n)-2^n]`
-/

namespace A216271.P8191746662932028476
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087946 n - (2 ^ n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A216271.P8191746662932028476

namespace A216271

/-- `Δ[A087946(n)-2^n]` -/
def P8191746662932028476.Spec : Prop :=
  ∀ n, P8191746662932028476.a n = A216271 n

end A216271

/-! ## A216271.P3358970684585026163

`A099780(n+1)-2^(n+1)`
-/

namespace A216271.P3358970684585026163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099780 (n + 1) - (2 ^ (n + 1) : ℤ)

end

end A216271.P3358970684585026163

namespace A216271

/-- `A099780(n+1)-2^(n+1)` -/
def P3358970684585026163.Spec : Prop :=
  ∀ n, P3358970684585026163.a n = A216271 n

end A216271

/-! ## A216271.P11423851748380110994

`Δ[A001353(n)+2*a(n-1)]` with `a(0)=0`
-/

namespace A216271.P11423851748380110994
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  A001353 n + 2 * f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A216271.P11423851748380110994

namespace A216271

/-- `Δ[A001353(n)+2*a(n-1)]` -/
def P11423851748380110994.Spec : Prop :=
  ∀ n, P11423851748380110994.a n = A216271 n

end A216271

/-! ## A216271.P5977342543567749963

`2*(a(n-1)+A001835(n+1)/2)` with `a(0)=1`
-/

namespace A216271.P5977342543567749963
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  2 * (a (n - 1) + (A001835 (n + 1) : ℚ) / 2)

end

end A216271.P5977342543567749963

namespace A216271

/-- `2*(a(n-1)+A001835(n+1)/2)` -/
def P5977342543567749963.Spec : Prop :=
  ∀ n, P5977342543567749963.a n = (A216271 n : ℚ)

end A216271

/-! ## A216271.P18000782802486126738

`∑[A144721(n)-A123020(n)]`
-/

namespace A216271.P18000782802486126738
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144721 n - A123020 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A216271.P18000782802486126738

namespace A216271

/-- `∑[A144721(n)-A123020(n)]` -/
def P18000782802486126738.Spec : Prop :=
  ∀ n, P18000782802486126738.a n = A216271 n

end A216271

/-! ## A216271.P5747072091646644411

`Δ[A006253(n)]-A014113(n)`
-/

namespace A216271.P5747072091646644411
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006253 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A014113 n

end

end A216271.P5747072091646644411

namespace A216271

/-- `Δ[A006253(n)]-A014113(n)` -/
def P5747072091646644411.Spec : Prop :=
  ∀ n, P5747072091646644411.a n = A216271 n

end A216271

/-! ## A216271.P12375579855062214006

`Δ[A006253(n)-A052953(n)]`
-/

namespace A216271.P12375579855062214006
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006253 n - A052953 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A216271.P12375579855062214006

namespace A216271

/-- `Δ[A006253(n)-A052953(n)]` -/
def P12375579855062214006.Spec : Prop :=
  ∀ n, P12375579855062214006.a n = A216271 n

end A216271

/-! ## A216271.P5232774322040676539

`A052530(n+1)-A099780(n)`
-/

namespace A216271.P5232774322040676539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052530 (n + 1) - A099780 n

end

end A216271.P5232774322040676539

namespace A216271

/-- `A052530(n+1)-A099780(n)` -/
def P5232774322040676539.Spec : Prop :=
  ∀ n, P5232774322040676539.a n = A216271 n

end A216271

/-! ## A216271.P3425821863903780758

`A217233(n+1)-A014113(n)`
-/

namespace A216271.P3425821863903780758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217233 (n + 1) - A014113 n

end

end A216271.P3425821863903780758

namespace A216271

/-- `A217233(n+1)-A014113(n)` -/
def P3425821863903780758.Spec : Prop :=
  ∀ n, P3425821863903780758.a n = A216271 n

end A216271

/-! ## A216271.P10188753813855166462

`∑[Δ[A099780(n)]-A000079(n)]`
-/

namespace A216271.P10188753813855166462
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099780 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - A000079 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A216271.P10188753813855166462

namespace A216271

/-- `∑[Δ[A099780(n)]-A000079(n)]` -/
def P10188753813855166462.Spec : Prop :=
  ∀ n, P10188753813855166462.a n = A216271 n

end A216271

/-! ## A216271.P8888337968186294262

`∑[A120893(n+1)]-A000975(n)`
-/

namespace A216271.P8888337968186294262
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120893 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A000975 n

end

end A216271.P8888337968186294262

namespace A216271

/-- `∑[A120893(n+1)]-A000975(n)` -/
def P8888337968186294262.Spec : Prop :=
  ∀ n, P8888337968186294262.a n = A216271 n

end A216271

/-! ## A216271.P9526231027917411466

`Δ[A006253(n)-A001045(n+1)]`
-/

namespace A216271.P9526231027917411466
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006253 n - A001045 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A216271.P9526231027917411466

namespace A216271

/-- `Δ[A006253(n)-A001045(n+1)]` -/
def P9526231027917411466.Spec : Prop :=
  ∀ n, P9526231027917411466.a n = A216271 n

end A216271

/-! ## A216271.P1739607081476661048

`Δ[A001835(n+1)]-A099780(n)`
-/

namespace A216271.P1739607081476661048
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001835 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A099780 n

end

end A216271.P1739607081476661048

namespace A216271

/-- `Δ[A001835(n+1)]-A099780(n)` -/
def P1739607081476661048.Spec : Prop :=
  ∀ n, P1739607081476661048.a n = A216271 n

end A216271

/-! ## A216271.P3474678726068403452

`Δ[A006253(n)]-2*A001045(n)`
-/

namespace A216271.P3474678726068403452
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006253 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 2 * A001045 n

end

end A216271.P3474678726068403452

namespace A216271

/-- `Δ[A006253(n)]-2*A001045(n)` -/
def P3474678726068403452.Spec : Prop :=
  ∀ n, P3474678726068403452.a n = A216271 n

end A216271

/-! ## A216271.P2991148338813724972

`Δ[A006253(n)-2*A005578(n)]`
-/

namespace A216271.P2991148338813724972
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006253 n - 2 * A005578 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A216271.P2991148338813724972

namespace A216271

/-- `Δ[A006253(n)-2*A005578(n)]` -/
def P2991148338813724972.Spec : Prop :=
  ∀ n, P2991148338813724972.a n = A216271 n

end A216271

/-! ## A216271.P12987641681165958808

`A001075(n+1)-A123020(n+1)`
-/

namespace A216271.P12987641681165958808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001075 (n + 1) - A123020 (n + 1)

end

end A216271.P12987641681165958808

namespace A216271

/-- `A001075(n+1)-A123020(n+1)` -/
def P12987641681165958808.Spec : Prop :=
  ∀ n, P12987641681165958808.a n = A216271 n

end A216271

/-!
# A216273: Triangle generated by Sum_{n>=1, k=1..n} T(n,k)*x^n*y^k/n = log(1 + Sum_{n>=1} y*x^(n^2)), where coefficients are read by rows.

The programs for A216273, there is no canonical definition to state claims against.
-/

/-! ## A216273.P12262727148517259931

`A158285(n)%A091387(A198261(n))`
-/

namespace A216273.P12262727148517259931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A158285 n) (A091387 (A198261 n).toNat)

end

end A216273.P12262727148517259931

/-!
# A216274: Square array A(n,k) = maximal number of regions into which k-space can be divided by n hyperplanes (k >= 1, n >= 0), read by antidiagonals.

The programs for A216274, there is no canonical definition to state claims against.
-/

/-! ## A216274.P3180961564110894193

`A059214(n+1)/2`
-/

namespace A216274.P3180961564110894193
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A059214 (n + 1) : ℚ) / 2

end

end A216274.P3180961564110894193

/-! ## A216274.P6694143687151005540

`A004070(comp[∑[n+1]])`
-/

namespace A216274.P6694143687151005540
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004070 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A216274.P6694143687151005540

/-! ## A216274.P14561268007067488570

`and(-1, A004070(comp[∑[n-1]]))`
-/

namespace A216274.P14561268007067488570
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A004070 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n))

end

end A216274.P14561268007067488570

/-! ## A216274.P1913285766442540595

`ceil(A131248(comp[∑[n+1]])/2)`
-/

namespace A216274.P1913285766442540595
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A131248 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) : ℚ) / 2⌉

end

end A216274.P1913285766442540595

/-! ## A216274.P5059796300483019682

`A059250(comp[∑[n]]+1)/2`
-/

namespace A216274.P5059796300483019682
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A059250 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 1) : ℚ) / 2

end

end A216274.P5059796300483019682

/-! ## A216274.P17358759481405613429

`A054124(eq[0, A059778(n)])`
-/

namespace A216274.P17358759481405613429
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059778 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054124 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A216274.P17358759481405613429

/-! ## A216274.P3127896747084618261

`A054124(eq[0, A103451(n)])`
-/

namespace A216274.P3127896747084618261
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103451 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054124 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A216274.P3127896747084618261

/-! ## A216274.P17474978636277955199

`A054124(eq[0, A103452(n)])`
-/

namespace A216274.P17474978636277955199
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103452 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054124 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A216274.P17474978636277955199

/-! ## A216274.P16691779827776200151

`A054124(lt[1, A007318(n)])`
-/

namespace A216274.P16691779827776200151
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054124 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A216274.P16691779827776200151

/-! ## A216274.P17229052238575918673

`A054124(A080036(n)+A003057(n+2))`
-/

namespace A216274.P17229052238575918673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054124 (A080036 n + A003057 (n + 2)).toNat

end

end A216274.P17229052238575918673

/-! ## A216274.P8368037619134033158

`A054124(A003057(n+2)²-A061579(n))`
-/

namespace A216274.P8368037619134033158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054124 (A003057 (n + 2) ^ 2 - A061579 n).toNat

end

end A216274.P8368037619134033158

/-! ## A216274.P5365306110432343957

`A054123((n-comp[∑[n]])²-n)`
-/

namespace A216274.P5365306110432343957
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054123 (((n : ℤ) - (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ)) ^ 2 - (n : ℤ)).toNat

end

end A216274.P5365306110432343957

/-! ## A216274.P1698666151687884104

`A001281(A059214(n+1))`
-/

namespace A216274.P1698666151687884104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A059214 (n + 1)).toNat

end

end A216274.P1698666151687884104

/-!
# A216275: Fibonacci + Goldbach: a(1)=6, a(2)=8 and for n>=3, a(n)=g(a(n-1)) + g(a(n-2)), where for m>=3, g(2*m) is the maximal prime p < 2*m such that 2*m - p is prime.

The programs for A216275, there is no canonical definition to state claims against.
-/

/-! ## A216275.P15969845910142546701

`A227147(3^n)+5`
-/

namespace A216275.P15969845910142546701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227147 (3 ^ n) + 5

end

end A216275.P15969845910142546701

/-! ## A216275.P10263702583163191559

`or(1, A171826(n+1))+5`
-/

namespace A216275.P10263702583163191559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A171826 (n + 1)) + 5

end

end A216275.P10263702583163191559

/-! ## A216275.P11745600388468947465

`A196252(2*A157725(n))`
-/

namespace A216275.P11745600388468947465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196252 (2 * A157725 n).toNat

end

end A216275.P11745600388468947465

/-! ## A216275.P4065063453998403943

`A372792(2^A240079(n))`
-/

namespace A216275.P4065063453998403943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372792 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A240079 n : ℤ))).toNat

end

end A216275.P4065063453998403943

/-! ## A216275.P14344501776168721062

`A196252(2*(A000045(n)+2))`
-/

namespace A216275.P14344501776168721062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196252 (2 * (A000045 n + 2)).toNat

end

end A216275.P14344501776168721062

/-!
# A216277: Primes which cannot be written as x^2 + 5*y^2, where x >= 0, y >= 0.

The programs for A216277, the canonical program `A216277.P7008262675739024356` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A216277 has offset 1).

The definition of A216277 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A216277.P7008262675739024356

`∪[p?[4*n-1], p?[a(n-2)+5]]` with `a(0)=2, a(1)=3`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A216277

/-- `∪[p?[4*n-1], p?[a(n-2)+5]]` -/
def P7008262675739024356.Spec : Prop :=
  ∀ n, (P7008262675739024356.a n : ℤ) = A216277 (n + 1)

theorem P7008262675739024356.correct : P7008262675739024356.Spec := by
  intro n
  simp only [A216277, Nat.add_sub_cancel]

end A216277

/-! ## A216277.P1620494025977103030

`∪[A002145(n+1), A003631(n+1)]`
-/

namespace A216277.P1620494025977103030
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002145 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003631 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A216277.P1620494025977103030

namespace A216277

/-- `∪[A002145(n+1), A003631(n+1)]` -/
def P1620494025977103030.Spec : Prop :=
  ∀ n, (P1620494025977103030.a n : ℤ) = A216277 (n + 1)

end A216277

/-! ## A216277.P10662785102388727432

`∪[A003626(n+1), A003631(n+1)]`
-/

namespace A216277.P10662785102388727432
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003626 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003631 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A216277.P10662785102388727432

namespace A216277

/-- `∪[A003626(n+1), A003631(n+1)]` -/
def P10662785102388727432.Spec : Prop :=
  ∀ n, (P10662785102388727432.a n : ℤ) = A216277 (n + 1)

end A216277

/-! ## A216277.P12478305711653260109

`∪[A003626(n+1), A045326(n+1)]`
-/

namespace A216277.P12478305711653260109
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003626 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045326 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A216277.P12478305711653260109

namespace A216277

/-- `∪[A003626(n+1), A045326(n+1)]` -/
def P12478305711653260109.Spec : Prop :=
  ∀ n, (P12478305711653260109.a n : ℤ) = A216277 (n + 1)

end A216277

/-! ## A216277.P7754179289701627310

`∪[A003631(n+1), A045326(n+1)]`
-/

namespace A216277.P7754179289701627310
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003631 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045326 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A216277.P7754179289701627310

namespace A216277

/-- `∪[A003631(n+1), A045326(n+1)]` -/
def P7754179289701627310.Spec : Prop :=
  ∀ n, (P7754179289701627310.a n : ℤ) = A216277 (n + 1)

end A216277

/-! ## A216277.P855833307203988173

`∪[A003626(n+1), A106865(n+1)]`
-/

namespace A216277.P855833307203988173
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003626 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106865 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A216277.P855833307203988173

namespace A216277

/-- `∪[A003626(n+1), A106865(n+1)]` -/
def P855833307203988173.Spec : Prop :=
  ∀ n, (P855833307203988173.a n : ℤ) = A216277 (n + 1)

end A216277

/-! ## A216277.P9869726888380884611

`∪[A002145(n+1), A122487(n+1)]`
-/

namespace A216277.P9869726888380884611
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002145 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122487 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A216277.P9869726888380884611

namespace A216277

/-- `∪[A002145(n+1), A122487(n+1)]` -/
def P9869726888380884611.Spec : Prop :=
  ∀ n, (P9869726888380884611.a n : ℤ) = A216277 (n + 1)

end A216277

/-! ## A216277.P10972139688838848995

`∪[A003631(n+1), A122869(n+1)]`
-/

namespace A216277.P10972139688838848995
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003631 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122869 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A216277.P10972139688838848995

namespace A216277

/-- `∪[A003631(n+1), A122869(n+1)]` -/
def P10972139688838848995.Spec : Prop :=
  ∀ n, (P10972139688838848995.a n : ℤ) = A216277 (n + 1)

end A216277

/-! ## A216277.P16203990144751374752

`∪[A045326(n+1), A097957(n+1)]`
-/

namespace A216277.P16203990144751374752
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045326 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097957 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A216277.P16203990144751374752

namespace A216277

/-- `∪[A045326(n+1), A097957(n+1)]` -/
def P16203990144751374752.Spec : Prop :=
  ∀ n, (P16203990144751374752.a n : ℤ) = A216277 (n + 1)

end A216277

/-! ## A216277.P4869660942279473632

`∪[A045326(n+1), A122487(n+1)]`
-/

namespace A216277.P4869660942279473632
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045326 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122487 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A216277.P4869660942279473632

namespace A216277

/-- `∪[A045326(n+1), A122487(n+1)]` -/
def P4869660942279473632.Spec : Prop :=
  ∀ n, (P4869660942279473632.a n : ℤ) = A216277 (n + 1)

end A216277

/-! ## A216277.P7498838144888755052

`∪[A002145(n+1), A296923(n+1)]`
-/

namespace A216277.P7498838144888755052
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002145 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296923 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A216277.P7498838144888755052

namespace A216277

/-- `∪[A002145(n+1), A296923(n+1)]` -/
def P7498838144888755052.Spec : Prop :=
  ∀ n, (P7498838144888755052.a n : ℤ) = A216277 (n + 1)

end A216277

/-! ## A216277.P5974441210391408348

`∪[A003631(n+1), A296923(n+1)]`
-/

namespace A216277.P5974441210391408348
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003631 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296923 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A216277.P5974441210391408348

namespace A216277

/-- `∪[A003631(n+1), A296923(n+1)]` -/
def P5974441210391408348.Spec : Prop :=
  ∀ n, (P5974441210391408348.a n : ℤ) = A216277 (n + 1)

end A216277

/-! ## A216277.P14003179998818151531

`∪[A097957(n+1), A296923(n+1)]`
-/

namespace A216277.P14003179998818151531
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097957 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296923 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A216277.P14003179998818151531

namespace A216277

/-- `∪[A097957(n+1), A296923(n+1)]` -/
def P14003179998818151531.Spec : Prop :=
  ∀ n, (P14003179998818151531.a n : ℤ) = A216277 (n + 1)

end A216277

/-! ## A216277.P2390560337516569221

`A216286(floor(3/acot(n))-comp[2*n+3])`
-/

namespace A216277.P2390560337516569221
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 3

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216286 (⌊3 / SequenceMachineLib.acot (n : ℝ)⌋ - (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ)).toNat

end

end A216277.P2390560337516569221

namespace A216277

/-- `A216286(floor(3/acot(n))-comp[2*n+3])` -/
def P2390560337516569221.Spec : Prop :=
  ∀ n, P2390560337516569221.a n = A216277 (n + 1)

end A216277

/-! ## A216277.P3690824846593250175

`A216286(A326178(n+1))`
-/

namespace A216277.P3690824846593250175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216286 (A326178 (n + 1)).toNat

end

end A216277.P3690824846593250175

namespace A216277

/-- `A216286(A326178(n+1))` -/
def P3690824846593250175.Spec : Prop :=
  ∀ n, P3690824846593250175.a n = A216277 (n + 1)

end A216277

/-! ## A216277.P12944623723602763357

`∩[A045319(n+1), A216286(n+1)]`
-/

namespace A216277.P12944623723602763357
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216286 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A216277.P12944623723602763357

namespace A216277

/-- `∩[A045319(n+1), A216286(n+1)]` -/
def P12944623723602763357.Spec : Prop :=
  ∀ n, (P12944623723602763357.a n : ℤ) = A216277 (n + 1)

end A216277

/-! ## A216277.P11059781201234198171

`filter[A216286(n+1), A358847(#)]`
-/

namespace A216277.P11059781201234198171
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216286 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A358847 (f1 j).toNat = 1) n)

end

end A216277.P11059781201234198171

namespace A216277

/-- `filter[A216286(n+1), A358847(#)]` -/
def P11059781201234198171.Spec : Prop :=
  ∀ n, P11059781201234198171.a n = A216277 (n + 1)

end A216277

/-! ## A216277.P3656004390808748831

`filter[A216286(n+1), A011558(#)]`
-/

namespace A216277.P3656004390808748831
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216286 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A011558 (f1 j).toNat = 1) n)

end

end A216277.P3656004390808748831

namespace A216277

/-- `filter[A216286(n+1), A011558(#)]` -/
def P3656004390808748831.Spec : Prop :=
  ∀ n, P3656004390808748831.a n = A216277 (n + 1)

end A216277

/-! ## A216277.P150978048865207166

`∩[A216286(n+1), A279071(n+1)]`
-/

namespace A216277.P150978048865207166
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216286 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279071 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A216277.P150978048865207166

namespace A216277

/-- `∩[A216286(n+1), A279071(n+1)]` -/
def P150978048865207166.Spec : Prop :=
  ∀ n, (P150978048865207166.a n : ℤ) = A216277 (n + 1)

end A216277

/-! ## A216277.P3267217241760646799

`∩[A216286(n+1), A274546(n+1)]`
-/

namespace A216277.P3267217241760646799
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216286 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274546 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A216277.P3267217241760646799

namespace A216277

/-- `∩[A216286(n+1), A274546(n+1)]` -/
def P3267217241760646799.Spec : Prop :=
  ∀ n, (P3267217241760646799.a n : ℤ) = A216277 (n + 1)

end A216277

/-!
# A216278: Number of solutions to the equation x^2+2y^2 = n with x and y > 0.

The programs for A216278, the canonical program `A216278.P16799818316336814260` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A216278 has offset 1).

The definition of A216278 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 120 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A216278.P15496747269048555224

`floor(A002325(n+1)/2)`
-/

namespace A216278.P15496747269048555224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A002325 (n + 1) : ℚ) / 2⌋

end

end A216278.P15496747269048555224

namespace A216278

/-- `floor(A002325(n+1)/2)` -/
def P15496747269048555224.Spec : Prop :=
  ∀ n, P15496747269048555224.a n = A216278 (n + 1)

end A216278

/-! ## A216278.P2905884725486232957

`floor(A033715(n+1)/4)`
-/

namespace A216278.P2905884725486232957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A033715 (n + 1) : ℚ) / 4⌋

end

end A216278.P2905884725486232957

namespace A216278

/-- `floor(A033715(n+1)/4)` -/
def P2905884725486232957.Spec : Prop :=
  ∀ n, P2905884725486232957.a n = A216278 (n + 1)

end A216278

/-! ## A216278.P9186892598661374631

`round(∑[Δ[A033715(n)]/4])`
-/

namespace A216278.P9186892598661374631
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033715 n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n : ℚ) / 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A216278.P9186892598661374631

namespace A216278

/-- `round(∑[Δ[A033715(n)]/4])` -/
def P9186892598661374631.Spec : Prop :=
  ∀ n, P9186892598661374631.a n = A216278 (n + 1)

end A216278

/-! ## A216278.P7696841194838088173

`floor(abs(A129134(n+1)/2))`
-/

namespace A216278.P7696841194838088173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊|(A129134 (n + 1) : ℚ) / 2|⌋

end

end A216278.P7696841194838088173

namespace A216278

/-- `floor(abs(A129134(n+1)/2))` -/
def P7696841194838088173.Spec : Prop :=
  ∀ n, P7696841194838088173.a n = A216278 (n + 1)

end A216278

/-! ## A216278.P14870388586334846141

`floor(abs(A133693(n+1)/2))`
-/

namespace A216278.P14870388586334846141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊|(A133693 (n + 1) : ℚ) / 2|⌋

end

end A216278.P14870388586334846141

namespace A216278

/-- `floor(abs(A133693(n+1)/2))` -/
def P14870388586334846141.Spec : Prop :=
  ∀ n, P14870388586334846141.a n = A216278 (n + 1)

end A216278

/-! ## A216278.P6726085305723748667

`floor(abs(A133692(n+1))/4)`
-/

namespace A216278.P6726085305723748667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(|A133692 (n + 1)| : ℚ) / 4⌋

end

end A216278.P6726085305723748667

namespace A216278

/-- `floor(abs(A133692(n+1))/4)` -/
def P6726085305723748667.Spec : Prop :=
  ∀ n, P6726085305723748667.a n = A216278 (n + 1)

end A216278

/-! ## A216278.P1402491600310714860

`floor(A133692(2*(n+1))/4)`
-/

namespace A216278.P1402491600310714860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A133692 (2 * (n + 1)) : ℚ) / 4⌋

end

end A216278.P1402491600310714860

namespace A216278

/-- `floor(A133692(2*(n+1))/4)` -/
def P1402491600310714860.Spec : Prop :=
  ∀ n, P1402491600310714860.a n = A216278 (n + 1)

end A216278

/-! ## A216278.P11658719029876074943

`floor(A139093(4*(n+1))/4)`
-/

namespace A216278.P11658719029876074943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A139093 (4 * (n + 1)) : ℚ) / 4⌋

end

end A216278.P11658719029876074943

namespace A216278

/-- `floor(A139093(4*(n+1))/4)` -/
def P11658719029876074943.Spec : Prop :=
  ∀ n, P11658719029876074943.a n = A216278 (n + 1)

end A216278

/-! ## A216278.P17962558170257649563

`A004526(A002325(n+1))`
-/

namespace A216278.P17962558170257649563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A002325 (n + 1)).toNat

end

end A216278.P17962558170257649563

namespace A216278

/-- `A004526(A002325(n+1))` -/
def P17962558170257649563.Spec : Prop :=
  ∀ n, P17962558170257649563.a n = A216278 (n + 1)

end A216278

/-! ## A216278.P18025700776422673838

`A002265(A033715(n+1))`
-/

namespace A216278.P18025700776422673838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A033715 (n + 1)).toNat

end

end A216278.P18025700776422673838

namespace A216278

/-- `A002265(A033715(n+1))` -/
def P18025700776422673838.Spec : Prop :=
  ∀ n, P18025700776422673838.a n = A216278 (n + 1)

end A216278

/-! ## A216278.P17353621667331925681

`A004526(abs(A129134(n+1)))`
-/

namespace A216278.P17353621667331925681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 |A129134 (n + 1)|.toNat

end

end A216278.P17353621667331925681

namespace A216278

/-- `A004526(abs(A129134(n+1)))` -/
def P17353621667331925681.Spec : Prop :=
  ∀ n, P17353621667331925681.a n = A216278 (n + 1)

end A216278

/-! ## A216278.P10012340639378609068

`A002265(abs(A133692(n+1)))`
-/

namespace A216278.P10012340639378609068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 |A133692 (n + 1)|.toNat

end

end A216278.P10012340639378609068

namespace A216278

/-- `A002265(abs(A133692(n+1)))` -/
def P10012340639378609068.Spec : Prop :=
  ∀ n, P10012340639378609068.a n = A216278 (n + 1)

end A216278

/-! ## A216278.P13503926210288789695

`A004526(abs(A133693(n+1)))`
-/

namespace A216278.P13503926210288789695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 |A133693 (n + 1)|.toNat

end

end A216278.P13503926210288789695

namespace A216278

/-- `A004526(abs(A133693(n+1)))` -/
def P13503926210288789695.Spec : Prop :=
  ∀ n, P13503926210288789695.a n = A216278 (n + 1)

end A216278

/-! ## A216278.P16627740475015429994

`A073642(abs(A129134(n+1)))`
-/

namespace A216278.P16627740475015429994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073642 |A129134 (n + 1)|.toNat

end

end A216278.P16627740475015429994

namespace A216278

/-- `A073642(abs(A129134(n+1)))` -/
def P16627740475015429994.Spec : Prop :=
  ∀ n, P16627740475015429994.a n = A216278 (n + 1)

end A216278

/-! ## A216278.P7227449852244077742

`A001877(A002325(n+1)!)`
-/

namespace A216278.P7227449852244077742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001877 (Nat.factorial (A002325 (n + 1)).toNat)

end

end A216278.P7227449852244077742

namespace A216278

/-- `A001877(A002325(n+1)!)` -/
def P7227449852244077742.Spec : Prop :=
  ∀ n, P7227449852244077742.a n = A216278 (n + 1)

end A216278

/-! ## A216278.P1233471420097221104

`A140106(A002325(n+1)+2)`
-/

namespace A216278.P1233471420097221104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140106 (A002325 (n + 1) + 2).toNat

end

end A216278.P1233471420097221104

namespace A216278

/-- `A140106(A002325(n+1)+2)` -/
def P1233471420097221104.Spec : Prop :=
  ∀ n, P1233471420097221104.a n = A216278 (n + 1)

end A216278

/-! ## A216278.P8831928308888683390

`A002265(2*A002325(n+1))`
-/

namespace A216278.P8831928308888683390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (2 * A002325 (n + 1)).toNat

end

end A216278.P8831928308888683390

namespace A216278

/-- `A002265(2*A002325(n+1))` -/
def P8831928308888683390.Spec : Prop :=
  ∀ n, P8831928308888683390.a n = A216278 (n + 1)

end A216278

/-! ## A216278.P16067043719347948027

`A004524(or(1, A002325(n+1)))`
-/

namespace A216278.P16067043719347948027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (Int.lor 1 (A002325 (n + 1))).toNat

end

end A216278.P16067043719347948027

namespace A216278

/-- `A004524(or(1, A002325(n+1)))` -/
def P16067043719347948027.Spec : Prop :=
  ∀ n, P16067043719347948027.a n = A216278 (n + 1)

end A216278

/-! ## A216278.P6344163104777859131

`A000045(val(A002325(n+1)!, 2))`
-/

namespace A216278.P6344163104777859131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (SequenceMachineLib.valuation (Nat.factorial (A002325 (n + 1)).toNat) 2)

end

end A216278.P6344163104777859131

namespace A216278

/-- `A000045(val(A002325(n+1)!, 2))` -/
def P6344163104777859131.Spec : Prop :=
  ∀ n, P6344163104777859131.a n = A216278 (n + 1)

end A216278

/-! ## A216278.P16799818316336814260

`A374061(n+1)+A364032(n+1)`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A216278

/-- `A374061(n+1)+A364032(n+1)` -/
def P16799818316336814260.Spec : Prop :=
  ∀ n, P16799818316336814260.a n = A216278 (n + 1)

theorem P16799818316336814260.correct : P16799818316336814260.Spec := by
  intro n
  simp only [A216278, Nat.add_sub_cancel]

end A216278

/-!
# A216279: Number of solutions to the equation x^2+5y^2 = n with x and y > 0.

The programs for A216279, there is no canonical definition to state claims against.
-/

/-! ## A216279.P8214190388436922524

`A002265(A033718(n+1))`
-/

namespace A216279.P8214190388436922524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A033718 (n + 1)).toNat

end

end A216279.P8214190388436922524

/-! ## A216279.P16871925663514882884

`A004526(A033718(n+1)/2)`
-/

namespace A216279.P16871925663514882884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (SequenceMachineLib.roundAway ((A033718 (n + 1) : ℚ) / 2)).toNat

end

end A216279.P16871925663514882884

/-! ## A216279.P5090942379559695030

`A026922(A028586(2*(n+1))+1)`
-/

namespace A216279.P5090942379559695030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026922 (A028586 (2 * (n + 1)) + 1).toNat

end

end A216279.P5090942379559695030

/-! ## A216279.P14626251142023616386

`A004525(A028586(2*(n+1)))-A216283(n+1)`
-/

namespace A216279.P14626251142023616386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A028586 (2 * (n + 1))).toNat - A216283 (n + 1)

end

end A216279.P14626251142023616386

/-! ## A216279.P4721995319280743215

`A004525(A028586(2*n+2))-A110655(A028586(2*(n+1)))`
-/

namespace A216279.P4721995319280743215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A028586 (2 * n + 2)).toNat - A110655 (A028586 (2 * (n + 1))).toNat

end

end A216279.P4721995319280743215

/-!
# A216280: Number of nonnegative solutions to the equation x^4 + y^4 = n.

The programs for A216280, there is no canonical definition to state claims against.
-/

/-! ## A216280.P12139072845307172231

`round(1/A002377(n+1))`
-/

namespace A216280.P12139072845307172231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (1 / (A002377 (n + 1) : ℚ))

end

end A216280.P12139072845307172231

/-! ## A216280.P6073444153176203925

`char[A004831(n+1)-1]`
-/

namespace A216280.P6073444153176203925
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004831 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A216280.P6073444153176203925

/-! ## A216280.P3617372773381120851

`floor(sqrt(sqrt(A175372(n+1))))`
-/

namespace A216280.P3617372773381120851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sqrt (Real.sqrt (A175372 (n + 1) : ℝ))⌋

end

end A216280.P3617372773381120851

/-! ## A216280.P2885157508144531578

`A094496(A002377(n+1))`
-/

namespace A216280.P2885157508144531578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094496 (A002377 (n + 1)).toNat

end

end A216280.P2885157508144531578

/-! ## A216280.P3179240732909747094

`A000007(A351341(n+1))`
-/

namespace A216280.P3179240732909747094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A351341 (n + 1)).toNat

end

end A216280.P3179240732909747094

/-! ## A216280.P14918729170741112812

`A000045(C(2, A002377(n+1)))`
-/

namespace A216280.P14918729170741112812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (Nat.choose 2 (A002377 (n + 1)).toNat)

end

end A216280.P14918729170741112812

/-! ## A216280.P17113527047379709234

`A299195(round(sqrt(A002377(n+1))))`
-/

namespace A216280.P17113527047379709234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299195 (SequenceMachineLib.roundAway (Real.sqrt (A002377 (n + 1) : ℝ))).toNat

end

end A216280.P17113527047379709234

/-! ## A216280.P8089764264950058471

`A299195(round(log2(A002377(n+1))))`
-/

namespace A216280.P8089764264950058471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299195 (SequenceMachineLib.roundAway (Real.logb 2 (A002377 (n + 1) : ℝ))).toNat

end

end A216280.P8089764264950058471

/-! ## A216280.P9981033184889883748

`A000007(a(A175372(n+1)))` with `a(0)=1, a(1)=1`
-/

namespace A216280.P9981033184889883748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A000007 (a (A175372 (n + 1)).toNat).toNat

end

end A216280.P9981033184889883748

/-! ## A216280.P17541632964867910188

`1-A157928(A002377(n+1)-1)`
-/

namespace A216280.P17541632964867910188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A157928 (A002377 (n + 1) - 1).toNat

end

end A216280.P17541632964867910188

/-! ## A216280.P4935834632481838530

`and(1, A016116(A002377(n+1)-1))`
-/

namespace A216280.P4935834632481838530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A016116 (A002377 (n + 1) - 1).toNat)

end

end A216280.P4935834632481838530

/-! ## A216280.P14717987207763751474

`char[eq[0, A000332(A002377(n+1)+1)]]`
-/

namespace A216280.P14717987207763751474
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000332 (A002377 (n + 1) + 1).toNat

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A216280.P14717987207763751474

/-! ## A216280.P3049456526673835250

`and(1, A000005(A002061(A002377(n+1)-1)))`
-/

namespace A216280.P3049456526673835250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A000005 (A002061 (A002377 (n + 1) - 1).toNat).toNat)

end

end A216280.P3049456526673835250

/-! ## A216280.P8579232384994592330

`A216284(n+1)+Δ[A255270(n)]`
-/

namespace A216280.P8579232384994592330
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255270 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216284 (n + 1) + (f1 (n + 1) - f1 n)

end

end A216280.P8579232384994592330

/-! ## A216280.P5332394662464513791

`A216284(n+1)+A255270(n+1)-A255270(n)`
-/

namespace A216280.P5332394662464513791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216284 (n + 1) + (A255270 (n + 1) - A255270 n)

end

end A216280.P5332394662464513791

/-! ## A216280.P1817358692133326765

`A010057(n*A351341(n+1))`
-/

namespace A216280.P1817358692133326765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010057 ((n : ℤ) * A351341 (n + 1)).toNat

end

end A216280.P1817358692133326765

/-!
# A216282: Number of nonnegative solutions to the equation x^2 + 2*y^2 = n.

The programs for A216282, the canonical program `A216282.P5463168406655024554` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A216282 has offset 1).

The definition of A216282 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A216282.P7332165908846054210

`ceil(A002325(n+1)/2)`
-/

namespace A216282.P7332165908846054210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A002325 (n + 1) : ℚ) / 2⌉

end

end A216282.P7332165908846054210

namespace A216282

/-- `ceil(A002325(n+1)/2)` -/
def P7332165908846054210.Spec : Prop :=
  ∀ n, P7332165908846054210.a n = A216282 (n + 1)

end A216282

/-! ## A216282.P9510973387798214364

`ceil(A033715(n+1)/4)`
-/

namespace A216282.P9510973387798214364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A033715 (n + 1) : ℚ) / 4⌉

end

end A216282.P9510973387798214364

namespace A216282

/-- `ceil(A033715(n+1)/4)` -/
def P9510973387798214364.Spec : Prop :=
  ∀ n, P9510973387798214364.a n = A216282 (n + 1)

end A216282

/-! ## A216282.P9526839010755589960

`A110654(A002325(n+1))`
-/

namespace A216282.P9526839010755589960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A002325 (n + 1)).toNat

end

end A216282.P9526839010755589960

namespace A216282

/-- `A110654(A002325(n+1))` -/
def P9526839010755589960.Spec : Prop :=
  ∀ n, P9526839010755589960.a n = A216282 (n + 1)

end A216282

/-! ## A216282.P17468743483283486378

`A110655(A033715(n+1))`
-/

namespace A216282.P17468743483283486378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110655 (A033715 (n + 1)).toNat

end

end A216282.P17468743483283486378

namespace A216282

/-- `A110655(A033715(n+1))` -/
def P17468743483283486378.Spec : Prop :=
  ∀ n, P17468743483283486378.a n = A216282 (n + 1)

end A216282

/-! ## A216282.P15440617093121101791

`A004526(A002325(n+1)+1)`
-/

namespace A216282.P15440617093121101791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A002325 (n + 1) + 1).toNat

end

end A216282.P15440617093121101791

namespace A216282

/-- `A004526(A002325(n+1)+1)` -/
def P15440617093121101791.Spec : Prop :=
  ∀ n, P15440617093121101791.a n = A216282 (n + 1)

end A216282

/-! ## A216282.P16583361410134527737

`A123108(A002325(n+1)+1)`
-/

namespace A216282.P16583361410134527737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 (A002325 (n + 1) + 1).toNat

end

end A216282.P16583361410134527737

namespace A216282

/-- `A123108(A002325(n+1)+1)` -/
def P16583361410134527737.Spec : Prop :=
  ∀ n, P16583361410134527737.a n = A216282 (n + 1)

end A216282

/-! ## A216282.P18205629321652394783

`A002265(A033715(n+1)+2)`
-/

namespace A216282.P18205629321652394783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A033715 (n + 1) + 2).toNat

end

end A216282.P18205629321652394783

namespace A216282

/-- `A002265(A033715(n+1)+2)` -/
def P18205629321652394783.Spec : Prop :=
  ∀ n, P18205629321652394783.a n = A216282 (n + 1)

end A216282

/-! ## A216282.P3425354577590906856

`A131508(A033715(n+1)+2)`
-/

namespace A216282.P3425354577590906856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131508 (A033715 (n + 1) + 2).toNat

end

end A216282.P3425354577590906856

namespace A216282

/-- `A131508(A033715(n+1)+2)` -/
def P3425354577590906856.Spec : Prop :=
  ∀ n, P3425354577590906856.a n = A216282 (n + 1)

end A216282

/-! ## A216282.P14596263339743088962

`A140106(A002325(n+1)+3)`
-/

namespace A216282.P14596263339743088962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140106 (A002325 (n + 1) + 3).toNat

end

end A216282.P14596263339743088962

namespace A216282

/-- `A140106(A002325(n+1)+3)` -/
def P14596263339743088962.Spec : Prop :=
  ∀ n, P14596263339743088962.a n = A216282 (n + 1)

end A216282

/-! ## A216282.P6172123955762271647

`A110654(A033715(n+1)/2)`
-/

namespace A216282.P6172123955762271647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (SequenceMachineLib.roundAway ((A033715 (n + 1) : ℚ) / 2)).toNat

end

end A216282.P6172123955762271647

namespace A216282

/-- `A110654(A033715(n+1)/2)` -/
def P6172123955762271647.Spec : Prop :=
  ∀ n, P6172123955762271647.a n = A216282 (n + 1)

end A216282

/-! ## A216282.P4105845350206988751

`A004526(abs(A133693(n+1))+1)`
-/

namespace A216282.P4105845350206988751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (|A133693 (n + 1)| + 1).toNat

end

end A216282.P4105845350206988751

namespace A216282

/-- `A004526(abs(A133693(n+1))+1)` -/
def P4105845350206988751.Spec : Prop :=
  ∀ n, P4105845350206988751.a n = A216282 (n + 1)

end A216282

/-! ## A216282.P14112994592605128908

`A002265(2*(A002325(n+1)+1))`
-/

namespace A216282.P14112994592605128908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (2 * (A002325 (n + 1) + 1)).toNat

end

end A216282.P14112994592605128908

namespace A216282

/-- `A002265(2*(A002325(n+1)+1))` -/
def P14112994592605128908.Spec : Prop :=
  ∀ n, P14112994592605128908.a n = A216282 (n + 1)

end A216282

/-! ## A216282.P2396191847881596759

`A004524(or(1, A002325(n+1)+1))`
-/

namespace A216282.P2396191847881596759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (Int.lor 1 (A002325 (n + 1) + 1)).toNat

end

end A216282.P2396191847881596759

namespace A216282

/-- `A004524(or(1, A002325(n+1)+1))` -/
def P2396191847881596759.Spec : Prop :=
  ∀ n, P2396191847881596759.a n = A216282 (n + 1)

end A216282

/-! ## A216282.P254764409520816997

`A000164(n+1)-A025436(n+1)`
-/

namespace A216282.P254764409520816997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000164 (n + 1) - A025436 (n + 1)

end

end A216282.P254764409520816997

namespace A216282

/-- `A000164(n+1)-A025436(n+1)` -/
def P254764409520816997.Spec : Prop :=
  ∀ n, P254764409520816997.a n = A216282 (n + 1)

end A216282

/-! ## A216282.P5463168406655024554

`A363037(n+1)-A374061(n+1)`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A216282

/-- `A363037(n+1)-A374061(n+1)` -/
def P5463168406655024554.Spec : Prop :=
  ∀ n, P5463168406655024554.a n = A216282 (n + 1)

theorem P5463168406655024554.correct : P5463168406655024554.Spec := by
  intro n
  simp only [A216282, Nat.add_sub_cancel]

end A216282

/-! ## A216282.P16454656273364803817

`A002265(A002325(n+1)+A002325(n+1)+2)`
-/

namespace A216282.P16454656273364803817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A002325 (n + 1) + (A002325 (n + 1) + 2)).toNat

end

end A216282.P16454656273364803817

namespace A216282

/-- `A002265(A002325(n+1)+A002325(n+1)+2)` -/
def P16454656273364803817.Spec : Prop :=
  ∀ n, P16454656273364803817.a n = A216282 (n + 1)

end A216282

/-! ## A216282.P4456103877755082213

`A002265(abs(A133692(n+1))+2)`
-/

namespace A216282.P4456103877755082213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (|A133692 (n + 1)| + 2).toNat

end

end A216282.P4456103877755082213

namespace A216282

/-- `A002265(abs(A133692(n+1))+2)` -/
def P4456103877755082213.Spec : Prop :=
  ∀ n, P4456103877755082213.a n = A216282 (n + 1)

end A216282

/-! ## A216282.P3222425630896230985

`abs(floor(A133693(2*(n+1))/2))`
-/

namespace A216282.P3222425630896230985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |⌊(A133693 (2 * (n + 1)) : ℚ) / 2⌋|

end

end A216282.P3222425630896230985

namespace A216282

/-- `abs(floor(A133693(2*(n+1))/2))` -/
def P3222425630896230985.Spec : Prop :=
  ∀ n, P3222425630896230985.a n = A216282 (n + 1)

end A216282

/-! ## A216282.P4479393831954843770

`A004526(abs(A129134(n+1))+1)`
-/

namespace A216282.P4479393831954843770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (|A129134 (n + 1)| + 1).toNat

end

end A216282.P4479393831954843770

namespace A216282

/-- `A004526(abs(A129134(n+1))+1)` -/
def P4479393831954843770.Spec : Prop :=
  ∀ n, P4479393831954843770.a n = A216282 (n + 1)

end A216282

/-! ## A216282.P3966925908048406408

`A004526(1-A133693(2*(n+1)))`
-/

namespace A216282.P3966925908048406408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (1 - A133693 (2 * (n + 1))).toNat

end

end A216282.P3966925908048406408

namespace A216282

/-- `A004526(1-A133693(2*(n+1)))` -/
def P3966925908048406408.Spec : Prop :=
  ∀ n, P3966925908048406408.a n = A216282 (n + 1)

end A216282

/-!
# A216283: Number of nonnegative solutions to the equation x^2+5*y^2 = n.

The programs for A216283, there is no canonical definition to state claims against.
-/

/-! ## A216283.P4838493908254657530

`A110655(A033718(n+1))`
-/

namespace A216283.P4838493908254657530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110655 (A033718 (n + 1)).toNat

end

end A216283.P4838493908254657530

/-! ## A216283.P10488471191119569469

`A002265(A033718(n+1)+2)`
-/

namespace A216283.P10488471191119569469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A033718 (n + 1) + 2).toNat

end

end A216283.P10488471191119569469

/-! ## A216283.P14420232967474926597

`A004526(A033718(n+1)/2+1)`
-/

namespace A216283.P14420232967474926597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (SequenceMachineLib.roundAway ((A033718 (n + 1) : ℚ) / 2 + 1)).toNat

end

end A216283.P14420232967474926597

/-! ## A216283.P6201595012035851233

`(A004525(A033718(n+1)+3)-1)/2`
-/

namespace A216283.P6201595012035851233
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004525 (A033718 (n + 1) + 3).toNat - 1 : ℚ) / 2

end

end A216283.P6201595012035851233

/-! ## A216283.P3853814349233847846

`A110655(A028586(2*(n+1)))`
-/

namespace A216283.P3853814349233847846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110655 (A028586 (2 * (n + 1))).toNat

end

end A216283.P3853814349233847846

/-! ## A216283.P17147451337160880234

`A010874(A045848(n+1))`
-/

namespace A216283.P17147451337160880234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010874 (A045848 (n + 1)).toNat

end

end A216283.P17147451337160880234

/-! ## A216283.P17688554840000467728

`A000700(A033718(n+1)+A000122(n²))`
-/

namespace A216283.P17688554840000467728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000700 (A033718 (n + 1) + A000122 (n ^ 2)).toNat

end

end A216283.P17688554840000467728

/-!
# A216284: Number of solutions to the equation x^4+y^4 = n with x >= y > 0.

The programs for A216284, there is no canonical definition to state claims against.
-/

/-! ## A216284.P3412326566004674081

`char[A003336(n+1)-1]`
-/

namespace A216284.P3412326566004674081
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003336 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A216284.P3412326566004674081

/-! ## A216284.P3985701055426268923

`char[eq[2, A002377(n+1)]]`
-/

namespace A216284.P3985701055426268923
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002377 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A216284.P3985701055426268923

/-! ## A216284.P16326873734247817948

`A014053(A002377(n+1))`
-/

namespace A216284.P16326873734247817948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014053 (A002377 (n + 1)).toNat

end

end A216284.P16326873734247817948

/-! ## A216284.P5926193404029965458

`A240467(A002377(n+1)²)`
-/

namespace A216284.P5926193404029965458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240467 (A002377 (n + 1) ^ 2).toNat

end

end A216284.P5926193404029965458

/-! ## A216284.P2513111047043234444

`A240467(A002377(n+1)+2)`
-/

namespace A216284.P2513111047043234444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240467 (A002377 (n + 1) + 2).toNat

end

end A216284.P2513111047043234444

/-! ## A216284.P13641034875555096977

`A002266(C(4, A002377(n+1)))`
-/

namespace A216284.P13641034875555096977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002266 (Nat.choose 4 (A002377 (n + 1)).toNat)

end

end A216284.P13641034875555096977

/-! ## A216284.P9175395624934515938

`A049240(n+1)*A216280(n+1)`
-/

namespace A216284.P9175395624934515938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049240 (n + 1) * A216280 (n + 1)

end

end A216284.P9175395624934515938

/-! ## A216284.P6970134744407001959

`A060818(1-Δ[A216280(n+1)])-1`
-/

namespace A216284.P6970134744407001959
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216280 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060818 (1 - (f1 (n + 1) - f1 n)).toNat - 1

end

end A216284.P6970134744407001959

/-! ## A216284.P3547308750552391133

`1-A216280(2-Δ[A216280(n+1)])`
-/

namespace A216284.P3547308750552391133
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216280 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A216280 (2 - (f1 (n + 1) - f1 n)).toNat

end

end A216284.P3547308750552391133

/-! ## A216284.P1058814213286435741

`A216280(n+1)-A216280(A216280(n+1)+n+1)`
-/

namespace A216284.P1058814213286435741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216280 (n + 1) - A216280 (A216280 (n + 1) + (n : ℤ) + 1).toNat

end

end A216284.P1058814213286435741

/-! ## A216284.P15188146083742077236

`A216280(A175372(n+2)+n+1)`
-/

namespace A216284.P15188146083742077236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216280 (A175372 (n + 2) + (n + 1 : ℤ)).toNat

end

end A216284.P15188146083742077236

/-! ## A216284.P18090096052300851765

`A216280(n+1)+A255270(n)-A255270(n+1)`
-/

namespace A216284.P18090096052300851765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216280 (n + 1) + (A255270 n - A255270 (n + 1))

end

end A216284.P18090096052300851765

/-! ## A216284.P7228295133090752493

`(A351306(n)-A216280(n+2))*A216280(n+1)`
-/

namespace A216284.P7228295133090752493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A351306 n - A216280 (n + 2)) * A216280 (n + 1)

end

end A216284.P7228295133090752493

/-! ## A216284.P13873106119305671871

`and(A131935(n+1), A216280(n+1))`
-/

namespace A216284.P13873106119305671871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A131935 (n + 1)) (A216280 (n + 1))

end

end A216284.P13873106119305671871

/-! ## A216284.P12295178526885236204

`and(A216280(n+1), A232164(n))`
-/

namespace A216284.P12295178526885236204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A216280 (n + 1)) (A232164 n)

end

end A216284.P12295178526885236204

/-! ## A216284.P3592446884682052985

`and(A216280(n+1), A232165(n))`
-/

namespace A216284.P3592446884682052985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A216280 (n + 1)) (A232165 n)

end

end A216284.P3592446884682052985

/-! ## A216284.P17007332408336964542

`and(A216280(n+1), A232163(n))`
-/

namespace A216284.P17007332408336964542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A216280 (n + 1)) (A232163 n)

end

end A216284.P17007332408336964542

/-! ## A216284.P8975320662221317899

`and(A041292(n), A216280(n+1))`
-/

namespace A216284.P8975320662221317899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A041292 n) (A216280 (n + 1))

end

end A216284.P8975320662221317899

/-! ## A216284.P7151313512463136827

`and(A042580(n), A216280(n+1))`
-/

namespace A216284.P7151313512463136827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A042580 n) (A216280 (n + 1))

end

end A216284.P7151313512463136827

/-!
# A216285: Primes which cannot be written as x^4+y^4.

The programs for A216285, there is no canonical definition to state claims against.
-/

/-! ## A216285.P6296345881625432578

`p?[and(n+1, A216284(n+1)-1)]`
-/

namespace A216285.P6296345881625432578
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n + 1 : ℤ) (A216284 (n + 1) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A216285.P6296345881625432578

/-! ## A216285.P16605804663309887660

`p?[(n+1)*A216280((n+1)*A216280(n+1)+1)]`
-/

namespace A216285.P16605804663309887660
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A216280 ((n + 1 : ℤ) * A216280 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A216285.P16605804663309887660

/-! ## A216285.P13210630446663410044

`eq[A007920(n), A175372(n)]`
-/

namespace A216285.P13210630446663410044
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007920 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175372 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A216285.P13210630446663410044

/-! ## A216285.P7958790147809182382

`eq[A068346(n), A175372(n)]`
-/

namespace A216285.P7958790147809182382
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068346 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175372 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A216285.P7958790147809182382

/-! ## A216285.P8750649694646853450

`eq[A086134(n), A175372(n)]`
-/

namespace A216285.P8750649694646853450
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086134 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175372 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A216285.P8750649694646853450

/-! ## A216285.P7977174192057910365

`eq[A175372(n), A277894(n)]`
-/

namespace A216285.P7977174192057910365
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175372 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277894 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A216285.P7977174192057910365

/-! ## A216285.P9589404194218259250

`eq[A175372(n), A295520(n)]`
-/

namespace A216285.P9589404194218259250
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175372 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295520 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A216285.P9589404194218259250

/-! ## A216285.P9846721226721037547

`eq[A175372(n), A325142(n)]`
-/

namespace A216285.P9846721226721037547
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175372 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325142 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A216285.P9846721226721037547

/-! ## A216285.P8254646579195286958

`eq[A175372(n)², A051699(n)]`
-/

namespace A216285.P8254646579195286958
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175372 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051699 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A216285.P8254646579195286958

/-! ## A216285.P2058241105297976508

`eq[A175372(n)², A237053(n)]`
-/

namespace A216285.P2058241105297976508
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175372 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237053 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A216285.P2058241105297976508

/-! ## A216285.P3614753454439512241

`eq[A175372(n), A295335(n)]`
-/

namespace A216285.P3614753454439512241
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175372 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295335 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A216285.P3614753454439512241

/-! ## A216285.P6202736025664354144

`eq[A175372(n)², A361902(n)]`
-/

namespace A216285.P6202736025664354144
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175372 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361902 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A216285.P6202736025664354144

/-! ## A216285.P9183955465696102759

`eq[A175372(n)², A040081(n+1)]`
-/

namespace A216285.P9183955465696102759
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175372 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040081 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A216285.P9183955465696102759

/-! ## A216285.P13333962634704383080

`eq[A175372(n), A341702(n)]`
-/

namespace A216285.P13333962634704383080
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175372 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341702 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A216285.P13333962634704383080

/-! ## A216285.P3490811342292605726

`eq[A175372(n), A340732(n)]`
-/

namespace A216285.P3490811342292605726
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175372 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340732 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A216285.P3490811342292605726

/-! ## A216285.P8556522906797248026

`eq[A175372(n), A386669(n)]`
-/

namespace A216285.P8556522906797248026
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175372 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386669 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A216285.P8556522906797248026

/-!
# A216286: Primes which cannot be written as x^2+5*y^2, where x > 0, y > 0.

The programs for A216286, the canonical program `A216286.P2790831436099536319` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A216286 has offset 1).

The definition of A216286 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A216286.P2790831436099536319

`∪[p?[4*n-1], p?[a(n-2)+5]]` with `a(0)=2, a(1)=3, a(2)=5, a(3)=7, a(4)=8`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A216286

/-- `∪[p?[4*n-1], p?[a(n-2)+5]]` -/
def P2790831436099536319.Spec : Prop :=
  ∀ n, (P2790831436099536319.a n : ℤ) = A216286 (n + 1)

theorem P2790831436099536319.correct : P2790831436099536319.Spec := by
  intro n
  simp only [A216286, Nat.add_sub_cancel]

end A216286

/-! ## A216286.P15237545382731523063

`∪[A002145(n+1), A042993(n+1)]`
-/

namespace A216286.P15237545382731523063
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002145 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042993 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A216286.P15237545382731523063

namespace A216286

/-- `∪[A002145(n+1), A042993(n+1)]` -/
def P15237545382731523063.Spec : Prop :=
  ∀ n, (P15237545382731523063.a n : ℤ) = A216286 (n + 1)

end A216286

/-! ## A216286.P2234181693228498463

`∪[A003626(n+1), A042993(n+1)]`
-/

namespace A216286.P2234181693228498463
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003626 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042993 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A216286.P2234181693228498463

namespace A216286

/-- `∪[A003626(n+1), A042993(n+1)]` -/
def P2234181693228498463.Spec : Prop :=
  ∀ n, (P2234181693228498463.a n : ℤ) = A216286 (n + 1)

end A216286

/-! ## A216286.P3689211017587239952

`∪[A042993(n+1), A045326(n+1)]`
-/

namespace A216286.P3689211017587239952
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042993 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045326 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A216286.P3689211017587239952

namespace A216286

/-- `∪[A042993(n+1), A045326(n+1)]` -/
def P3689211017587239952.Spec : Prop :=
  ∀ n, (P3689211017587239952.a n : ℤ) = A216286 (n + 1)

end A216286

/-! ## A216286.P7066537345242281298

`∪[A042993(n+1), A122869(n+1)]`
-/

namespace A216286.P7066537345242281298
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042993 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122869 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A216286.P7066537345242281298

namespace A216286

/-- `∪[A042993(n+1), A122869(n+1)]` -/
def P7066537345242281298.Spec : Prop :=
  ∀ n, (P7066537345242281298.a n : ℤ) = A216286 (n + 1)

end A216286

/-! ## A216286.P1756390432574160724

`∪[A005385(n+1), A216277(n+1)]`
-/

namespace A216286.P1756390432574160724
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005385 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216277 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A216286.P1756390432574160724

namespace A216286

/-- `∪[A005385(n+1), A216277(n+1)]` -/
def P1756390432574160724.Spec : Prop :=
  ∀ n, (P1756390432574160724.a n : ℤ) = A216286 (n + 1)

end A216286

/-! ## A216286.P13945610664796915582

`∪[A020453(n+1), A216277(n+1)]`
-/

namespace A216286.P13945610664796915582
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020453 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216277 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A216286.P13945610664796915582

namespace A216286

/-- `∪[A020453(n+1), A216277(n+1)]` -/
def P13945610664796915582.Spec : Prop :=
  ∀ n, (P13945610664796915582.a n : ℤ) = A216286 (n + 1)

end A216286

/-! ## A216286.P18178133537145894326

`∪[A020462(n+1), A216277(n+1)]`
-/

namespace A216286.P18178133537145894326
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020462 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216277 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A216286.P18178133537145894326

namespace A216286

/-- `∪[A020462(n+1), A216277(n+1)]` -/
def P18178133537145894326.Spec : Prop :=
  ∀ n, (P18178133537145894326.a n : ℤ) = A216286 (n + 1)

end A216286

/-! ## A216286.P3455546156987470605

`∪[A023275(n+1), A216277(n+1)]`
-/

namespace A216286.P3455546156987470605
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023275 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216277 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A216286.P3455546156987470605

namespace A216286

/-- `∪[A023275(n+1), A216277(n+1)]` -/
def P3455546156987470605.Spec : Prop :=
  ∀ n, (P3455546156987470605.a n : ℤ) = A216286 (n + 1)

end A216286

/-! ## A216286.P5420564528785443125

`∪[A045336(n+1), A216277(n+1)]`
-/

namespace A216286.P5420564528785443125
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045336 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216277 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A216286.P5420564528785443125

namespace A216286

/-- `∪[A045336(n+1), A216277(n+1)]` -/
def P5420564528785443125.Spec : Prop :=
  ∀ n, (P5420564528785443125.a n : ℤ) = A216286 (n + 1)

end A216286

/-! ## A216286.P14536363273526380254

`∪[A045414(n+1), A216277(n+1)]`
-/

namespace A216286.P14536363273526380254
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045414 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216277 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A216286.P14536363273526380254

namespace A216286

/-- `∪[A045414(n+1), A216277(n+1)]` -/
def P14536363273526380254.Spec : Prop :=
  ∀ n, (P14536363273526380254.a n : ℤ) = A216286 (n + 1)

end A216286

/-! ## A216286.P7824049161804305640

`∪[A048399(n+1), A216277(n+1)]`
-/

namespace A216286.P7824049161804305640
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048399 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216277 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A216286.P7824049161804305640

namespace A216286

/-- `∪[A048399(n+1), A216277(n+1)]` -/
def P7824049161804305640.Spec : Prop :=
  ∀ n, (P7824049161804305640.a n : ℤ) = A216286 (n + 1)

end A216286

/-! ## A216286.P16389600273464727401

`eq[A007920(n), A023921(n)]`
-/

namespace A216286.P16389600273464727401
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007920 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023921 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A216286.P16389600273464727401

namespace A216286

/-- `eq[A007920(n), A023921(n)]` -/
def P16389600273464727401.Spec : Prop :=
  ∀ n, (P16389600273464727401.a n : ℤ) = A216286 (n + 1)

end A216286

/-! ## A216286.P7551457161122690910

`eq[A023921(n), A051699(n)]`
-/

namespace A216286.P7551457161122690910
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023921 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051699 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A216286.P7551457161122690910

namespace A216286

/-- `eq[A023921(n), A051699(n)]` -/
def P7551457161122690910.Spec : Prop :=
  ∀ n, (P7551457161122690910.a n : ℤ) = A216286 (n + 1)

end A216286

/-! ## A216286.P9431071506771684082

`eq[A023921(n), A237053(n)]`
-/

namespace A216286.P9431071506771684082
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023921 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237053 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A216286.P9431071506771684082

namespace A216286

/-- `eq[A023921(n), A237053(n)]` -/
def P9431071506771684082.Spec : Prop :=
  ∀ n, (P9431071506771684082.a n : ℤ) = A216286 (n + 1)

end A216286

/-! ## A216286.P16733795127028311650

`eq[A023921(n), A295335(n)]`
-/

namespace A216286.P16733795127028311650
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023921 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295335 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A216286.P16733795127028311650

namespace A216286

/-- `eq[A023921(n), A295335(n)]` -/
def P16733795127028311650.Spec : Prop :=
  ∀ n, (P16733795127028311650.a n : ℤ) = A216286 (n + 1)

end A216286

/-! ## A216286.P14338666937537061158

`eq[A023921(n), A295520(n)]`
-/

namespace A216286.P14338666937537061158
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023921 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295520 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A216286.P14338666937537061158

namespace A216286

/-- `eq[A023921(n), A295520(n)]` -/
def P14338666937537061158.Spec : Prop :=
  ∀ n, (P14338666937537061158.a n : ℤ) = A216286 (n + 1)

end A216286

/-! ## A216286.P11189443795239945806

`eq[A023921(n), A325142(n)]`
-/

namespace A216286.P11189443795239945806
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023921 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325142 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A216286.P11189443795239945806

namespace A216286

/-- `eq[A023921(n), A325142(n)]` -/
def P11189443795239945806.Spec : Prop :=
  ∀ n, (P11189443795239945806.a n : ℤ) = A216286 (n + 1)

end A216286

/-! ## A216286.P13373545166822400337

`eq[A023921(n), A361902(n)]`
-/

namespace A216286.P13373545166822400337
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023921 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361902 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A216286.P13373545166822400337

namespace A216286

/-- `eq[A023921(n), A361902(n)]` -/
def P13373545166822400337.Spec : Prop :=
  ∀ n, (P13373545166822400337.a n : ℤ) = A216286 (n + 1)

end A216286

/-! ## A216286.P10733209509533456891

`eq[A023921(n), A040081(n+1)]`
-/

namespace A216286.P10733209509533456891
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023921 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040081 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A216286.P10733209509533456891

namespace A216286

/-- `eq[A023921(n), A040081(n+1)]` -/
def P10733209509533456891.Spec : Prop :=
  ∀ n, (P10733209509533456891.a n : ℤ) = A216286 (n + 1)

end A216286

/-!
# A216287: Decades whose prime pattern repeat in the next decade.

The programs for A216287, there is no canonical definition to state claims against.
-/

/-! ## A216287.P15923163073379910590

`A219999(n+1)-1`
-/

namespace A216287.P15923163073379910590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219999 (n + 1) - 1

end

end A216287.P15923163073379910590

/-! ## A216287.P14538508431360861068

`∪[A216288(n+1), A216329(n+1)]`
-/

namespace A216287.P14538508431360861068
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216288 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216329 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A216287.P14538508431360861068

/-! ## A216287.P16369518664886885876

`∪[A216288(n+1), A219997(n+1)-1]`
-/

namespace A216287.P16369518664886885876
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216288 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219997 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A216287.P16369518664886885876

/-! ## A216287.P17529151568585108547

`∪[A219997(n+1), A219998(n+1)]-1`
-/

namespace A216287.P17529151568585108547
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219997 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219998 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n : ℤ) - 1

end

end A216287.P17529151568585108547

/-! ## A216287.P16544064897760903535

`abs(A219999(n+1)+A008683(A020483(n)))`
-/

namespace A216287.P16544064897760903535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A219999 (n + 1) + A008683 (A020483 n).toNat|

end

end A216287.P16544064897760903535

/-! ## A216287.P8129764724922963786

`A252750(Δ[A284746(n+1)])+A219999(n+1)`
-/

namespace A216287.P8129764724922963786
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284746 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252750 (f1 (n + 1) - f1 n).toNat + A219999 (n + 1)

end

end A216287.P8129764724922963786

/-! ## A216287.P7716539095370217006

`A023443(A219999(n+1))`
-/

namespace A216287.P7716539095370217006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A219999 (n + 1)).toNat

end

end A216287.P7716539095370217006

/-! ## A216287.P8873902211388263634

`A199969(A219999(n+1)%A033255(n+1))`
-/

namespace A216287.P8873902211388263634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199969 (Int.tmod (A219999 (n + 1)) (A033255 (n + 1))).toNat

end

end A216287.P8873902211388263634

/-! ## A216287.P94307651961874159

`A199969(A219999(n+1))%A185477(n+1)`
-/

namespace A216287.P94307651961874159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A199969 (A219999 (n + 1)).toNat) (A185477 (n + 1))

end

end A216287.P94307651961874159

/-!
# A216288: Prime-free decades such that the next decade is also prime-free.

The programs for A216288, there is no canonical definition to state claims against.
-/

/-! ## A216288.P3493158198880890612

`A219998(n+1)-1`
-/

namespace A216288.P3493158198880890612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219998 (n + 1) - 1

end

end A216288.P3493158198880890612

/-! ## A216288.P3202297694434938000

`∩[A032352(n+1), A216287(n+1)]`
-/

namespace A216288.P3202297694434938000
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032352 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216287 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A216288.P3202297694434938000

/-! ## A216288.P7887568727222863630

`∩[A032352(n+1), A219999(n+1)-1]`
-/

namespace A216288.P7887568727222863630
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032352 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219999 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A216288.P7887568727222863630

/-! ## A216288.P3023365061528191724

`∩[A032352(n+2)-1, A032352(n+2)]`
-/

namespace A216288.P3023365061528191724
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032352 (n + 2) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032352 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A216288.P3023365061528191724

/-! ## A216288.P17481319654615757048

`A032352(eq[1, A032352(n+2)-A032352(n+1)]+1)`
-/

namespace A216288.P17481319654615757048
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032352 (n + 2) - A032352 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032352 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A216288.P17481319654615757048

/-! ## A216288.P1010342205912119003

`A032352(eq[1, A032352(n+2)%A032352(n+1)]+1)`
-/

namespace A216288.P1010342205912119003
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A032352 (n + 2)) (A032352 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032352 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A216288.P1010342205912119003

/-! ## A216288.P9006683445910461354

`A023443(A219998(n+1))`
-/

namespace A216288.P9006683445910461354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A219998 (n + 1)).toNat

end

end A216288.P9006683445910461354

/-! ## A216288.P11739561925844310005

`eq[A038800(n), A232129(n+1)]`
-/

namespace A216288.P11739561925844310005
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038800 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232129 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A216288.P11739561925844310005

/-! ## A216288.P4697818911807928035

`eq[A179816(n+1), A179816(n)]`
-/

namespace A216288.P4697818911807928035
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179816 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179816 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A216288.P4697818911807928035

/-!
# A216290: Values of k such that 100k+1, 100k+3, 100k+7, 100k+9, 100k+13, 100k+27 are consecutive primes.

The programs for A216290, there is no canonical definition to state claims against.
-/

/-! ## A216290.P17765926585386672761

`A216291(lt[A102388(n+1), A195151(2*(n+2))])`
-/

namespace A216290.P17765926585386672761
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102388 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195151 (2 * (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216291 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A216290.P17765926585386672761

/-!
# A216292: Values of k such that there is exactly one prime between 10k and 10k + 9.

The programs for A216292, the canonical program `A216292.P8549922877224519400` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A216292 has offset 1).

The definition of A216292 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A078494, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A216292.P8549922877224519400

`floor(A078494(n+1)/10)`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A216292

/-- `floor(A078494(n+1)/10)` -/
def P8549922877224519400.Spec : Prop :=
  ∀ n, P8549922877224519400.a n = A216292 (n + 1)

theorem P8549922877224519400.correct : P8549922877224519400.Spec := by
  intro n
  simp only [A216292, Nat.add_sub_cancel]

end A216292

/-! ## A216292.P752059223036173973

`eq[1, A038800(n)]`
-/

namespace A216292.P752059223036173973
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038800 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A216292.P752059223036173973

namespace A216292

/-- `eq[1, A038800(n)]` -/
def P752059223036173973.Spec : Prop :=
  ∀ n, (P752059223036173973.a n : ℤ) = A216292 (n + 1)

end A216292

/-! ## A216292.P12450340998796137471

`eq[1, A122072(n+1)/A218255(n)]`
-/

namespace A216292.P12450340998796137471
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A122072 (n + 1) : ℚ) / (A218255 n : ℚ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) = f2 j) n

end

end A216292.P12450340998796137471

namespace A216292

/-- `eq[1, A122072(n+1)/A218255(n)]` -/
def P12450340998796137471.Spec : Prop :=
  ∀ n, (P12450340998796137471.a n : ℤ) = A216292 (n + 1)

end A216292

/-! ## A216292.P18430287027594546928

`lt[((A038800(n)-1)*A022342(n+1))², n]`
-/

namespace A216292.P18430287027594546928
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((A038800 n - 1) * A022342 (n + 1)) ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A216292.P18430287027594546928

namespace A216292

/-- `lt[((A038800(n)-1)*A022342(n+1))², n]` -/
def P18430287027594546928.Spec : Prop :=
  ∀ n, (P18430287027594546928.a n : ℤ) = A216292 (n + 1)

end A216292

/-! ## A216292.P13236194673615677500

`eq[1, A192977(A065039(n))]`
-/

namespace A216292.P13236194673615677500
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192977 (A065039 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A216292.P13236194673615677500

namespace A216292

/-- `eq[1, A192977(A065039(n))]` -/
def P13236194673615677500.Spec : Prop :=
  ∀ n, (P13236194673615677500.a n : ℤ) = A216292 (n + 1)

end A216292

/-! ## A216292.P2867788358331506617

`eq[1, Δ[A000720(A008706(2*n))]]`
-/

namespace A216292.P2867788358331506617
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A008706 (2 * n)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A216292.P2867788358331506617

namespace A216292

/-- `eq[1, Δ[A000720(A008706(2*n))]]` -/
def P2867788358331506617.Spec : Prop :=
  ∀ n, (P2867788358331506617.a n : ℤ) = A216292 (n + 1)

end A216292

/-! ## A216292.P8579291497285125297

`eq[1, A209252(10*n)]`
-/

namespace A216292.P8579291497285125297
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209252 (10 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A216292.P8579291497285125297

namespace A216292

/-- `eq[1, A209252(10*n)]` -/
def P8579291497285125297.Spec : Prop :=
  ∀ n, (P8579291497285125297.a n : ℤ) = A216292 (n + 1)

end A216292

/-! ## A216292.P13087420055576738605

`eq[1, A048853(10*n+4)]`
-/

namespace A216292.P13087420055576738605
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048853 (10 * n + 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A216292.P13087420055576738605

namespace A216292

/-- `eq[1, A048853(10*n+4)]` -/
def P13087420055576738605.Spec : Prop :=
  ∀ n, (P13087420055576738605.a n : ℤ) = A216292 (n + 1)

end A216292

/-! ## A216292.P2879508672337132891

`A059995(A078493(n))`
-/

namespace A216292.P2879508672337132891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059995 (A078493 n).toNat

end

end A216292.P2879508672337132891

namespace A216292

/-- `A059995(A078493(n))` -/
def P2879508672337132891.Spec : Prop :=
  ∀ n, P2879508672337132891.a n = A216292 (n + 1)

end A216292

/-! ## A216292.P15689773959031542135

`A059995(A078494(n+1))`
-/

namespace A216292.P15689773959031542135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059995 (A078494 (n + 1)).toNat

end

end A216292.P15689773959031542135

namespace A216292

/-- `A059995(A078494(n+1))` -/
def P15689773959031542135.Spec : Prop :=
  ∀ n, P15689773959031542135.a n = A216292 (n + 1)

end A216292

/-! ## A216292.P6948383122300824182

`eq[1, A000120(A105052(n))]`
-/

namespace A216292.P6948383122300824182
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A105052 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A216292.P6948383122300824182

namespace A216292

/-- `eq[1, A000120(A105052(n))]` -/
def P6948383122300824182.Spec : Prop :=
  ∀ n, (P6948383122300824182.a n : ℤ) = A216292 (n + 1)

end A216292

/-! ## A216292.P5510839667024081329

`eq[1, A008687(A105052(n)²)]`
-/

namespace A216292.P5510839667024081329
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008687 (A105052 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A216292.P5510839667024081329

namespace A216292

/-- `eq[1, A008687(A105052(n)²)]` -/
def P5510839667024081329.Spec : Prop :=
  ∀ n, (P5510839667024081329.a n : ℤ) = A216292 (n + 1)

end A216292

/-! ## A216292.P14424312372856849332

`lt[A347523(A105052(n)²), 1]`
-/

namespace A216292.P14424312372856849332
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347523 (A105052 n ^ 2).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A216292.P14424312372856849332

namespace A216292

/-- `lt[A347523(A105052(n)²), 1]` -/
def P14424312372856849332.Spec : Prop :=
  ∀ n, (P14424312372856849332.a n : ℤ) = A216292 (n + 1)

end A216292

/-! ## A216292.P7491463606829718863

`eq[1, A008687(2*A105052(n))]`
-/

namespace A216292.P7491463606829718863
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008687 (2 * A105052 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A216292.P7491463606829718863

namespace A216292

/-- `eq[1, A008687(2*A105052(n))]` -/
def P7491463606829718863.Spec : Prop :=
  ∀ n, (P7491463606829718863.a n : ℤ) = A216292 (n + 1)

end A216292

/-! ## A216292.P16401377567135456179

`lt[A347523(2*A105052(n)), 1]`
-/

namespace A216292.P16401377567135456179
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347523 (2 * A105052 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A216292.P16401377567135456179

namespace A216292

/-- `lt[A347523(2*A105052(n)), 1]` -/
def P16401377567135456179.Spec : Prop :=
  ∀ n, (P16401377567135456179.a n : ℤ) = A216292 (n + 1)

end A216292

/-! ## A216292.P16090178892796008992

`lt[A209229(n), A209229(A105052(n))]`
-/

namespace A216292.P16090178892796008992
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209229 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209229 (A105052 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A216292.P16090178892796008992

namespace A216292

/-- `lt[A209229(n), A209229(A105052(n))]` -/
def P16090178892796008992.Spec : Prop :=
  ∀ n, (P16090178892796008992.a n : ℤ) = A216292 (n + 1)

end A216292

/-! ## A216292.P538091813800091842

`lt[A347523(A105052(n)), A347523(n)]`
-/

namespace A216292.P538091813800091842
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347523 (A105052 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347523 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A216292.P538091813800091842

namespace A216292

/-- `lt[A347523(A105052(n)), A347523(n)]` -/
def P538091813800091842.Spec : Prop :=
  ∀ n, (P538091813800091842.a n : ℤ) = A216292 (n + 1)

end A216292

/-! ## A216292.P2694836546440025411

`eq[A122072(n+1), A256481(n)]`
-/

namespace A216292.P2694836546440025411
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122072 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256481 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A216292.P2694836546440025411

namespace A216292

/-- `eq[A122072(n+1), A256481(n)]` -/
def P2694836546440025411.Spec : Prop :=
  ∀ n, (P2694836546440025411.a n : ℤ) = A216292 (n + 1)

end A216292

/-!
# A216293: Values of k such that there are exactly two primes between 10k and 10k + 9.

The programs for A216293, there is no canonical definition to state claims against.
-/

/-! ## A216293.P15307663401281926923

`A078499(n+1)/10`
-/

namespace A216293.P15307663401281926923
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A078499 (n + 1) : ℚ) / 10

end

end A216293.P15307663401281926923

/-! ## A216293.P114130610511314002

`eq[2, A038800(n)]`
-/

namespace A216293.P114130610511314002
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038800 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A216293.P114130610511314002

/-! ## A216293.P8932348614112530725

`eq[2, A192977(A065039(n))]`
-/

namespace A216293.P8932348614112530725
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192977 (A065039 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A216293.P8932348614112530725

/-! ## A216293.P9137981605988712080

`eq[2, Δ[A000720(A008706(2*n))]]`
-/

namespace A216293.P9137981605988712080
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A008706 (2 * n)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A216293.P9137981605988712080

/-! ## A216293.P10078826781782482999

`eq[2, A209252(10*n)]`
-/

namespace A216293.P10078826781782482999
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209252 (10 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A216293.P10078826781782482999

/-! ## A216293.P1295890069753969880

`A076309(A078499(n+1))`
-/

namespace A216293.P1295890069753969880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076309 (A078499 (n + 1)).toNat

end

end A216293.P1295890069753969880

/-! ## A216293.P16063058791314193723

`eq[2, A048853(10*n+4)]`
-/

namespace A216293.P16063058791314193723
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048853 (10 * n + 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A216293.P16063058791314193723

/-! ## A216293.P5072630434329004247

`A059995(A078499(n+1)+1)`
-/

namespace A216293.P5072630434329004247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059995 (A078499 (n + 1) + 1).toNat

end

end A216293.P5072630434329004247

/-!
# A216295: Values of k such that 10k + 1 is the only prime between 10k and 10k + 9.

The programs for A216295, the canonical program `A216295.P7128567264787392644` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A216295 has offset 1).

The definition of A216295 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A216295.P7128567264787392644

`(A216309(n+1)-1)/10`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A216295

/-- `(A216309(n+1)-1)/10` -/
def P7128567264787392644.Spec : Prop :=
  ∀ n, P7128567264787392644.a n = (A216295 (n + 1) : ℚ)

end A216295

/-! ## A216295.P5327282779553308571

`∩[A024912(n+1), A216292(n+1)]`
-/

namespace A216295.P5327282779553308571
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024912 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216292 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A216295.P5327282779553308571

namespace A216295

/-- `∩[A024912(n+1), A216292(n+1)]` -/
def P5327282779553308571.Spec : Prop :=
  ∀ n, (P5327282779553308571.a n : ℤ) = A216295 (n + 1)

end A216295

/-! ## A216295.P1146646647850482691

`eq[A017281(n), A179816(n)]`
-/

namespace A216295.P1146646647850482691
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017281 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179816 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A216295.P1146646647850482691

namespace A216295

/-- `eq[A017281(n), A179816(n)]` -/
def P1146646647850482691.Spec : Prop :=
  ∀ n, (P1146646647850482691.a n : ℤ) = A216295 (n + 1)

end A216295

/-! ## A216295.P10092914354164849688

`eq[A038800(n)², A091088(n)]`
-/

namespace A216295.P10092914354164849688
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038800 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091088 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A216295.P10092914354164849688

namespace A216295

/-- `eq[A038800(n)², A091088(n)]` -/
def P10092914354164849688.Spec : Prop :=
  ∀ n, (P10092914354164849688.a n : ℤ) = A216295 (n + 1)

end A216295

/-! ## A216295.P17987051426839904233

`A000010(A216309(n+1))/10`
-/

namespace A216295.P17987051426839904233
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 (A216309 (n + 1)).toNat : ℚ) / 10

end

end A216295.P17987051426839904233

namespace A216295

/-- `A000010(A216309(n+1))/10` -/
def P17987051426839904233.Spec : Prop :=
  ∀ n, P17987051426839904233.a n = (A216295 (n + 1) : ℚ)

end A216295

/-! ## A216295.P9880883938103110396

`eq[A179816(n), A298008(n+1)]`
-/

namespace A216295.P9880883938103110396
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179816 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298008 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A216295.P9880883938103110396

namespace A216295

/-- `eq[A179816(n), A298008(n+1)]` -/
def P9880883938103110396.Spec : Prop :=
  ∀ n, (P9880883938103110396.a n : ℤ) = A216295 (n + 1)

end A216295

/-! ## A216295.P15886591177946604860

`eq[A179816(n)+2, A017305(n)]`
-/

namespace A216295.P15886591177946604860
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179816 n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017305 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A216295.P15886591177946604860

namespace A216295

/-- `eq[A179816(n)+2, A017305(n)]` -/
def P15886591177946604860.Spec : Prop :=
  ∀ n, (P15886591177946604860.a n : ℤ) = A216295 (n + 1)

end A216295

/-! ## A216295.P17089517504197189699

`A028310(floor(A216309(n+1)/10))`
-/

namespace A216295.P17089517504197189699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 ⌊(A216309 (n + 1) : ℚ) / 10⌋.toNat

end

end A216295.P17089517504197189699

namespace A216295

/-- `A028310(floor(A216309(n+1)/10))` -/
def P17089517504197189699.Spec : Prop :=
  ∀ n, P17089517504197189699.a n = A216295 (n + 1)

end A216295

/-! ## A216295.P7954792438640091111

`A028310(xor(1, A216309(n+1))/10)`
-/

namespace A216295.P7954792438640091111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (SequenceMachineLib.roundAway ((Int.xor 1 (A216309 (n + 1)) : ℚ) / 10)).toNat

end

end A216295.P7954792438640091111

namespace A216295

/-- `A028310(xor(1, A216309(n+1))/10)` -/
def P7954792438640091111.Spec : Prop :=
  ∀ n, P7954792438640091111.a n = A216295 (n + 1)

end A216295

/-! ## A216295.P6154313725221430554

`eq[A001844(A091088(n)-1), A038800(n)]`
-/

namespace A216295.P6154313725221430554
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001844 (A091088 n - 1).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038800 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A216295.P6154313725221430554

namespace A216295

/-- `eq[A001844(A091088(n)-1), A038800(n)]` -/
def P6154313725221430554.Spec : Prop :=
  ∀ n, (P6154313725221430554.a n : ℤ) = A216295 (n + 1)

end A216295

/-! ## A216295.P17188817124031848506

`A130472(xor(1, A216309(n+1))/5)`
-/

namespace A216295.P17188817124031848506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130472 (SequenceMachineLib.roundAway ((Int.xor 1 (A216309 (n + 1)) : ℚ) / 5)).toNat

end

end A216295.P17188817124031848506

namespace A216295

/-- `A130472(xor(1, A216309(n+1))/5)` -/
def P17188817124031848506.Spec : Prop :=
  ∀ n, P17188817124031848506.a n = A216295 (n + 1)

end A216295

/-! ## A216295.P10328901358495361649

`eq[A038800(n), A091088(n*A038800(n))]`
-/

namespace A216295.P10328901358495361649
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038800 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091088 ((n : ℤ) * A038800 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A216295.P10328901358495361649

namespace A216295

/-- `eq[A038800(n), A091088(n*A038800(n))]` -/
def P10328901358495361649.Spec : Prop :=
  ∀ n, (P10328901358495361649.a n : ℤ) = A216295 (n + 1)

end A216295

/-! ## A216295.P11368921121407590001

`eq[A122072(n+1), A268488(A122072(n+1)-n)]`
-/

namespace A216295.P11368921121407590001
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122072 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268488 (A122072 (n + 1) - (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A216295.P11368921121407590001

namespace A216295

/-- `eq[A122072(n+1), A268488(A122072(n+1)-n)]` -/
def P11368921121407590001.Spec : Prop :=
  ∀ n, (P11368921121407590001.a n : ℤ) = A216295 (n + 1)

end A216295

/-! ## A216295.P820328912255264732

`eq[8, A105052(n)]`
-/

namespace A216295.P820328912255264732
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105052 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A216295.P820328912255264732

namespace A216295

/-- `eq[8, A105052(n)]` -/
def P820328912255264732.Spec : Prop :=
  ∀ n, (P820328912255264732.a n : ℤ) = A216295 (n + 1)

end A216295

/-! ## A216295.P7028618076293549301

`A008616(A216309(n+1))`
-/

namespace A216295.P7028618076293549301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008616 (A216309 (n + 1)).toNat

end

end A216295.P7028618076293549301

namespace A216295

/-- `A008616(A216309(n+1))` -/
def P7028618076293549301.Spec : Prop :=
  ∀ n, P7028618076293549301.a n = A216295 (n + 1)

end A216295

/-! ## A216295.P3237315056908819867

`A076309(A216309(n+1)-1)`
-/

namespace A216295.P3237315056908819867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076309 (A216309 (n + 1) - 1).toNat

end

end A216295.P3237315056908819867

namespace A216295

/-- `A076309(A216309(n+1)-1)` -/
def P3237315056908819867.Spec : Prop :=
  ∀ n, P3237315056908819867.a n = A216295 (n + 1)

end A216295

/-! ## A216295.P13437969747769383860

`A076312(A216309(n+1)-1)`
-/

namespace A216295.P13437969747769383860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076312 (A216309 (n + 1) - 1).toNat

end

end A216295.P13437969747769383860

namespace A216295

/-- `A076312(A216309(n+1)-1)` -/
def P13437969747769383860.Spec : Prop :=
  ∀ n, P13437969747769383860.a n = A216295 (n + 1)

end A216295

/-! ## A216295.P3103381529112364329

`A076313(A216309(n+1)-1)`
-/

namespace A216295.P3103381529112364329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076313 (A216309 (n + 1) - 1).toNat

end

end A216295.P3103381529112364329

namespace A216295

/-- `A076313(A216309(n+1)-1)` -/
def P3103381529112364329.Spec : Prop :=
  ∀ n, P3103381529112364329.a n = A216295 (n + 1)

end A216295

/-! ## A216295.P17701105569661317350

`A076309(xor(1, A216309(n+1)))`
-/

namespace A216295.P17701105569661317350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076309 (Int.xor 1 (A216309 (n + 1))).toNat

end

end A216295.P17701105569661317350

namespace A216295

/-- `A076309(xor(1, A216309(n+1)))` -/
def P17701105569661317350.Spec : Prop :=
  ∀ n, P17701105569661317350.a n = A216295 (n + 1)

end A216295

/-! ## A216295.P16917856996718811898

`lt[A192977(A105052(n)+2), 1]`
-/

namespace A216295.P16917856996718811898
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192977 (A105052 n + 2).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A216295.P16917856996718811898

namespace A216295

/-- `lt[A192977(A105052(n)+2), 1]` -/
def P16917856996718811898.Spec : Prop :=
  ∀ n, (P16917856996718811898.a n : ℤ) = A216295 (n + 1)

end A216295

/-!
# A216296: Values of k such that 10k + 3 is the only prime between 10k and 10k + 9.

The programs for A216296, the canonical program `A216296.P16543262439568301225` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A216296 has offset 1).

The definition of A216296 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A216296.P16543262439568301225

`floor(A216310(n+1)/10)`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A216296

/-- `floor(A216310(n+1)/10)` -/
def P16543262439568301225.Spec : Prop :=
  ∀ n, P16543262439568301225.a n = A216296 (n + 1)

theorem P16543262439568301225.correct : P16543262439568301225.Spec := by
  intro n
  simp only [A216296, Nat.add_sub_cancel]

end A216296

/-! ## A216296.P4399110744215170995

`round(A216310(n+1)/10)*A003958(A001316(n))`
-/

namespace A216296.P4399110744215170995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A216310 (n + 1) : ℚ) / 10) * A003958 (A001316 n).toNat

end

end A216296.P4399110744215170995

namespace A216296

/-- `round(A216310(n+1)/10)*A003958(A001316(n))` -/
def P4399110744215170995.Spec : Prop :=
  ∀ n, P4399110744215170995.a n = A216296 (n + 1)

end A216296

/-! ## A216296.P3580786268293566974

`round(A216310(n+1)/10)%A174312(n+2)`
-/

namespace A216296.P3580786268293566974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A216310 (n + 1) : ℚ) / 10)) (A174312 (n + 2))

end

end A216296.P3580786268293566974

namespace A216296

/-- `round(A216310(n+1)/10)%A174312(n+2)` -/
def P3580786268293566974.Spec : Prop :=
  ∀ n, P3580786268293566974.a n = A216296 (n + 1)

end A216296

/-! ## A216296.P5506528872485583920

`round(A216310(n+1)/10)*A090001(A071044(n))`
-/

namespace A216296.P5506528872485583920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A216310 (n + 1) : ℚ) / 10) * A090001 (A071044 n).toNat

end

end A216296.P5506528872485583920

namespace A216296

/-- `round(A216310(n+1)/10)*A090001(A071044(n))` -/
def P5506528872485583920.Spec : Prop :=
  ∀ n, P5506528872485583920.a n = A216296 (n + 1)

end A216296

/-! ## A216296.P17619790381889537068

`∩[A102338(n+1), A216292(n+1)]`
-/

namespace A216296.P17619790381889537068
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102338 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216292 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A216296.P17619790381889537068

namespace A216296

/-- `∩[A102338(n+1), A216292(n+1)]` -/
def P17619790381889537068.Spec : Prop :=
  ∀ n, (P17619790381889537068.a n : ℤ) = A216296 (n + 1)

end A216296

/-! ## A216296.P2093788336829228625

`round(A216310(n+1)/10)*A014963(A008458(n))`
-/

namespace A216296.P2093788336829228625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A216310 (n + 1) : ℚ) / 10) * A014963 (A008458 n).toNat

end

end A216296.P2093788336829228625

namespace A216296

/-- `round(A216310(n+1)/10)*A014963(A008458(n))` -/
def P2093788336829228625.Spec : Prop :=
  ∀ n, P2093788336829228625.a n = A216296 (n + 1)

end A216296

/-! ## A216296.P3834309066795726838

`eq[A038800(n)+2, A091088(n)]`
-/

namespace A216296.P3834309066795726838
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038800 n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091088 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A216296.P3834309066795726838

namespace A216296

/-- `eq[A038800(n)+2, A091088(n)]` -/
def P3834309066795726838.Spec : Prop :=
  ∀ n, (P3834309066795726838.a n : ℤ) = A216296 (n + 1)

end A216296

/-! ## A216296.P12610511112148541306

`eq[A004524(A091088(n)), A038800(n)]`
-/

namespace A216296.P12610511112148541306
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (A091088 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038800 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A216296.P12610511112148541306

namespace A216296

/-- `eq[A004524(A091088(n)), A038800(n)]` -/
def P12610511112148541306.Spec : Prop :=
  ∀ n, (P12610511112148541306.a n : ℤ) = A216296 (n + 1)

end A216296

/-! ## A216296.P8212331148154764231

`eq[A017305(n), A179816(n)]`
-/

namespace A216296.P8212331148154764231
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017305 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179816 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A216296.P8212331148154764231

namespace A216296

/-- `eq[A017305(n), A179816(n)]` -/
def P8212331148154764231.Spec : Prop :=
  ∀ n, (P8212331148154764231.a n : ℤ) = A216296 (n + 1)

end A216296

/-! ## A216296.P16315540481658285267

`eq[A017281(n)+2, A179816(n)]`
-/

namespace A216296.P16315540481658285267
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017281 n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179816 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A216296.P16315540481658285267

namespace A216296

/-- `eq[A017281(n)+2, A179816(n)]` -/
def P16315540481658285267.Spec : Prop :=
  ∀ n, (P16315540481658285267.a n : ℤ) = A216296 (n + 1)

end A216296

/-! ## A216296.P6499115999515801161

`eq[A298008(n+1)+2, A179816(n)]`
-/

namespace A216296.P6499115999515801161
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298008 (n + 1) + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179816 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A216296.P6499115999515801161

namespace A216296

/-- `eq[A298008(n+1)+2, A179816(n)]` -/
def P6499115999515801161.Spec : Prop :=
  ∀ n, (P6499115999515801161.a n : ℤ) = A216296 (n + 1)

end A216296

/-! ## A216296.P13930067330972735592

`A008585(round(A216310(n+1)/10))/3`
-/

namespace A216296.P13930067330972735592
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008585 (SequenceMachineLib.roundAway ((A216310 (n + 1) : ℚ) / 10)).toNat : ℚ) / 3

end

end A216296.P13930067330972735592

namespace A216296

/-- `A008585(round(A216310(n+1)/10))/3` -/
def P13930067330972735592.Spec : Prop :=
  ∀ n, P13930067330972735592.a n = (A216296 (n + 1) : ℚ)

end A216296

/-! ## A216296.P15734236147782496798

`eq[A122072(n+1)+A038800(n), A017317(n)]`
-/

namespace A216296.P15734236147782496798
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122072 (n + 1) + A038800 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017317 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A216296.P15734236147782496798

namespace A216296

/-- `eq[A122072(n+1)+A038800(n), A017317(n)]` -/
def P15734236147782496798.Spec : Prop :=
  ∀ n, (P15734236147782496798.a n : ℤ) = A216296 (n + 1)

end A216296

/-! ## A216296.P1073500004693206484

`A078898(2*round(A216310(n+1)/10))`
-/

namespace A216296.P1073500004693206484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078898 (2 * SequenceMachineLib.roundAway ((A216310 (n + 1) : ℚ) / 10)).toNat

end

end A216296.P1073500004693206484

namespace A216296

/-- `A078898(2*round(A216310(n+1)/10))` -/
def P1073500004693206484.Spec : Prop :=
  ∀ n, P1073500004693206484.a n = A216296 (n + 1)

end A216296

/-! ## A216296.P9181365218911587377

`eq[4, A105052(n)]`
-/

namespace A216296.P9181365218911587377
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105052 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A216296.P9181365218911587377

namespace A216296

/-- `eq[4, A105052(n)]` -/
def P9181365218911587377.Spec : Prop :=
  ∀ n, (P9181365218911587377.a n : ℤ) = A216296 (n + 1)

end A216296

/-! ## A216296.P15644065864125363358

`A008616(A216310(n+1))`
-/

namespace A216296.P15644065864125363358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008616 (A216310 (n + 1)).toNat

end

end A216296.P15644065864125363358

namespace A216296

/-- `A008616(A216310(n+1))` -/
def P15644065864125363358.Spec : Prop :=
  ∀ n, P15644065864125363358.a n = A216296 (n + 1)

end A216296

/-! ## A216296.P4695691069848228848

`A076309(A216310(n+1)-3)`
-/

namespace A216296.P4695691069848228848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076309 (A216310 (n + 1) - 3).toNat

end

end A216296.P4695691069848228848

namespace A216296

/-- `A076309(A216310(n+1)-3)` -/
def P4695691069848228848.Spec : Prop :=
  ∀ n, P4695691069848228848.a n = A216296 (n + 1)

end A216296

/-! ## A216296.P15513929410116010189

`eq[A007920(A017293(n)), A038800(n)]`
-/

namespace A216296.P15513929410116010189
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007920 (A017293 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038800 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A216296.P15513929410116010189

namespace A216296

/-- `eq[A007920(A017293(n)), A038800(n)]` -/
def P15513929410116010189.Spec : Prop :=
  ∀ n, (P15513929410116010189.a n : ℤ) = A216296 (n + 1)

end A216296

/-!
# A216297: Values of k such that 10k + 7 is the only prime between 10k and 10k + 9.

The programs for A216297, the canonical program `A216297.P18240834366473876575` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A216297 has offset 1).

The definition of A216297 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A216297.P18240834366473876575

`floor(A216311(n+1)/10)`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A216297

/-- `floor(A216311(n+1)/10)` -/
def P18240834366473876575.Spec : Prop :=
  ∀ n, P18240834366473876575.a n = A216297 (n + 1)

theorem P18240834366473876575.correct : P18240834366473876575.Spec := by
  intro n
  simp only [A216297, Nat.add_sub_cancel]

end A216297

/-! ## A216297.P12096539078376731997

`-ceil(A216311(n+1)/(A017377(n)-A017377(n+1)))`
-/

namespace A216297.P12096539078376731997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -⌈(A216311 (n + 1) : ℚ) / (A017377 n - A017377 (n + 1) : ℚ)⌉

end

end A216297.P12096539078376731997

namespace A216297

/-- `-ceil(A216311(n+1)/(A017377(n)-A017377(n+1)))` -/
def P12096539078376731997.Spec : Prop :=
  ∀ n, P12096539078376731997.a n = A216297 (n + 1)

end A216297

/-! ## A216297.P10775961483486872214

`A014682((A216311(n+1)-7)/5)`
-/

namespace A216297.P10775961483486872214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (SequenceMachineLib.roundAway ((A216311 (n + 1) - 7 : ℚ) / 5)).toNat

end

end A216297.P10775961483486872214

namespace A216297

/-- `A014682((A216311(n+1)-7)/5)` -/
def P10775961483486872214.Spec : Prop :=
  ∀ n, P10775961483486872214.a n = A216297 (n + 1)

end A216297

/-! ## A216297.P3066507950456331112

`∩[A102342(n+1), A216292(n+1)]`
-/

namespace A216297.P3066507950456331112
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102342 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216292 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A216297.P3066507950456331112

namespace A216297

/-- `∩[A102342(n+1), A216292(n+1)]` -/
def P3066507950456331112.Spec : Prop :=
  ∀ n, (P3066507950456331112.a n : ℤ) = A216297 (n + 1)

end A216297

/-! ## A216297.P9107036785821461316

`eq[A017353(n), A179816(n)]`
-/

namespace A216297.P9107036785821461316
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017353 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179816 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A216297.P9107036785821461316

namespace A216297

/-- `eq[A017353(n), A179816(n)]` -/
def P9107036785821461316.Spec : Prop :=
  ∀ n, (P9107036785821461316.a n : ℤ) = A216297 (n + 1)

end A216297

/-! ## A216297.P14896943656128230635

`eq[A179816(n)+2, A017377(n)]`
-/

namespace A216297.P14896943656128230635
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179816 n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017377 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A216297.P14896943656128230635

namespace A216297

/-- `eq[A179816(n)+2, A017377(n)]` -/
def P14896943656128230635.Spec : Prop :=
  ∀ n, (P14896943656128230635.a n : ℤ) = A216297 (n + 1)

end A216297

/-! ## A216297.P9248067328249477220

`eq[8, A091088(n)+A038800(n)]`
-/

namespace A216297.P9248067328249477220
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091088 n + A038800 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A216297.P9248067328249477220

namespace A216297

/-- `eq[8, A091088(n)+A038800(n)]` -/
def P9248067328249477220.Spec : Prop :=
  ∀ n, (P9248067328249477220.a n : ℤ) = A216297 (n + 1)

end A216297

/-! ## A216297.P8596715158407125861

`A023443(ceil(A216311(n+1)/10))`
-/

namespace A216297.P8596715158407125861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 ⌈(A216311 (n + 1) : ℚ) / 10⌉.toNat

end

end A216297.P8596715158407125861

namespace A216297

/-- `A023443(ceil(A216311(n+1)/10))` -/
def P8596715158407125861.Spec : Prop :=
  ∀ n, P8596715158407125861.a n = A216297 (n + 1)

end A216297

/-! ## A216297.P9398665796713320910

`eq[2, A105052(n)]`
-/

namespace A216297.P9398665796713320910
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105052 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A216297.P9398665796713320910

namespace A216297

/-- `eq[2, A105052(n)]` -/
def P9398665796713320910.Spec : Prop :=
  ∀ n, (P9398665796713320910.a n : ℤ) = A216297 (n + 1)

end A216297

/-! ## A216297.P15531634532517088229

`A059995(A216311(n+1))`
-/

namespace A216297.P15531634532517088229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059995 (A216311 (n + 1)).toNat

end

end A216297.P15531634532517088229

namespace A216297

/-- `A059995(A216311(n+1))` -/
def P15531634532517088229.Spec : Prop :=
  ∀ n, P15531634532517088229.a n = A216297 (n + 1)

end A216297

/-! ## A216297.P9169320262211921303

`A008616(A216311(n+1)-4)`
-/

namespace A216297.P9169320262211921303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008616 (A216311 (n + 1) - 4).toNat

end

end A216297.P9169320262211921303

namespace A216297

/-- `A008616(A216311(n+1)-4)` -/
def P9169320262211921303.Spec : Prop :=
  ∀ n, P9169320262211921303.a n = A216297 (n + 1)

end A216297

/-! ## A216297.P13337890534731084061

`A076309(A216311(n+1)-7)`
-/

namespace A216297.P13337890534731084061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076309 (A216311 (n + 1) - 7).toNat

end

end A216297.P13337890534731084061

namespace A216297

/-- `A076309(A216311(n+1)-7)` -/
def P13337890534731084061.Spec : Prop :=
  ∀ n, P13337890534731084061.a n = A216297 (n + 1)

end A216297

/-! ## A216297.P8450112802738420793

`lt[A090856(xor(2, A105052(n))), 2]`
-/

namespace A216297.P8450112802738420793
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090856 (Int.xor 2 (A105052 n)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A216297.P8450112802738420793

namespace A216297

/-- `lt[A090856(xor(2, A105052(n))), 2]` -/
def P8450112802738420793.Spec : Prop :=
  ∀ n, (P8450112802738420793.a n : ℤ) = A216297 (n + 1)

end A216297

/-! ## A216297.P7863568964464808131

`lt[A090857(xor(2, A105052(n))), 2]`
-/

namespace A216297.P7863568964464808131
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090857 (Int.xor 2 (A105052 n)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A216297.P7863568964464808131

namespace A216297

/-- `lt[A090857(xor(2, A105052(n))), 2]` -/
def P7863568964464808131.Spec : Prop :=
  ∀ n, (P7863568964464808131.a n : ℤ) = A216297 (n + 1)

end A216297

/-! ## A216297.P1741271002598941420

`lt[(2-A105052(n))², A347523(n)]`
-/

namespace A216297.P1741271002598941420
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A105052 n) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347523 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A216297.P1741271002598941420

namespace A216297

/-- `lt[(2-A105052(n))², A347523(n)]` -/
def P1741271002598941420.Spec : Prop :=
  ∀ n, (P1741271002598941420.a n : ℤ) = A216297 (n + 1)

end A216297

/-! ## A216297.P1100034659501714208

`eq[A032742(A017353(n)), A038800(n)]`
-/

namespace A216297.P1100034659501714208
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (A017353 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038800 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A216297.P1100034659501714208

namespace A216297

/-- `eq[A032742(A017353(n)), A038800(n)]` -/
def P1100034659501714208.Spec : Prop :=
  ∀ n, (P1100034659501714208.a n : ℤ) = A216297 (n + 1)

end A216297

/-!
# A216298: Values of k such that 10k + 9 is the only prime between 10k and 10k + 9.

The programs for A216298, the canonical program `A216298.P1014508904312123023` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A216298 has offset 1).

The definition of A216298 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A216298.P1014508904312123023

`floor(A216312(n+1)/10)`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A216298

/-- `floor(A216312(n+1)/10)` -/
def P1014508904312123023.Spec : Prop :=
  ∀ n, P1014508904312123023.a n = A216298 (n + 1)

theorem P1014508904312123023.correct : P1014508904312123023.Spec := by
  intro n
  simp only [A216298, Nat.add_sub_cancel]

end A216298

/-! ## A216298.P13157784075450717147

`ceil(A216312(n+1)/10-A028920(2*n))`
-/

namespace A216298.P13157784075450717147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A216312 (n + 1) : ℚ) / 10 - (A028920 (2 * n) : ℚ)⌉

end

end A216298.P13157784075450717147

namespace A216298

/-- `ceil(A216312(n+1)/10-A028920(2*n))` -/
def P13157784075450717147.Spec : Prop :=
  ∀ n, P13157784075450717147.a n = A216298 (n + 1)

end A216298

/-! ## A216298.P1194067839287095836

`∩[A102700(n+1), A216292(n+1)]`
-/

namespace A216298.P1194067839287095836
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102700 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216292 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A216298.P1194067839287095836

namespace A216298

/-- `∩[A102700(n+1), A216292(n+1)]` -/
def P1194067839287095836.Spec : Prop :=
  ∀ n, (P1194067839287095836.a n : ℤ) = A216298 (n + 1)

end A216298

/-! ## A216298.P3163934107561725825

`eq[9, A091088(n)]`
-/

namespace A216298.P3163934107561725825
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091088 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A216298.P3163934107561725825

namespace A216298

/-- `eq[9, A091088(n)]` -/
def P3163934107561725825.Spec : Prop :=
  ∀ n, (P3163934107561725825.a n : ℤ) = A216298 (n + 1)

end A216298

/-! ## A216298.P15109358488155880068

`eq[9, A068695(A028310(n))]`
-/

namespace A216298.P15109358488155880068
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068695 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A216298.P15109358488155880068

namespace A216298

/-- `eq[9, A068695(A028310(n))]` -/
def P15109358488155880068.Spec : Prop :=
  ∀ n, (P15109358488155880068.a n : ℤ) = A216298 (n + 1)

end A216298

/-! ## A216298.P4984265273280637537

`eq[A017377(n), A179816(n)]`
-/

namespace A216298.P4984265273280637537
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017377 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179816 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A216298.P4984265273280637537

namespace A216298

/-- `eq[A017377(n), A179816(n)]` -/
def P4984265273280637537.Spec : Prop :=
  ∀ n, (P4984265273280637537.a n : ℤ) = A216298 (n + 1)

end A216298

/-! ## A216298.P12725396134065566015

`A020725(eq[9, A068695(n+1)])`
-/

namespace A216298.P12725396134065566015
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068695 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A216298.P12725396134065566015

namespace A216298

/-- `A020725(eq[9, A068695(n+1)])` -/
def P12725396134065566015.Spec : Prop :=
  ∀ n, P12725396134065566015.a n = A216298 (n + 1)

end A216298

/-! ## A216298.P18074948839067348472

`eq[A218255(n), A268488(n+1)]`
-/

namespace A216298.P18074948839067348472
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218255 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268488 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A216298.P18074948839067348472

namespace A216298

/-- `eq[A218255(n), A268488(n+1)]` -/
def P18074948839067348472.Spec : Prop :=
  ∀ n, (P18074948839067348472.a n : ℤ) = A216298 (n + 1)

end A216298

/-! ## A216298.P14228013230496285511

`eq[A017353(n)+2, A179816(n)]`
-/

namespace A216298.P14228013230496285511
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017353 n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179816 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A216298.P14228013230496285511

namespace A216298

/-- `eq[A017353(n)+2, A179816(n)]` -/
def P14228013230496285511.Spec : Prop :=
  ∀ n, (P14228013230496285511.a n : ℤ) = A216298 (n + 1)

end A216298

/-! ## A216298.P5358385032942032437

`eq[1, A017377(n)/A218255(n)]`
-/

namespace A216298.P5358385032942032437
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017377 n : ℚ) / (A218255 n : ℚ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) = f2 j) n

end

end A216298.P5358385032942032437

namespace A216298

/-- `eq[1, A017377(n)/A218255(n)]` -/
def P5358385032942032437.Spec : Prop :=
  ∀ n, (P5358385032942032437.a n : ℤ) = A216298 (n + 1)

end A216298

/-! ## A216298.P8647235583241699732

`eq[A017377(n), A030665(A028310(n))]`
-/

namespace A216298.P8647235583241699732
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017377 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030665 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A216298.P8647235583241699732

namespace A216298

/-- `eq[A017377(n), A030665(A028310(n))]` -/
def P8647235583241699732.Spec : Prop :=
  ∀ n, (P8647235583241699732.a n : ℤ) = A216298 (n + 1)

end A216298

/-! ## A216298.P2941315772975500863

`eq[A030665(A028310(n)), A268488(n+1)]`
-/

namespace A216298.P2941315772975500863
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030665 (A028310 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268488 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A216298.P2941315772975500863

namespace A216298

/-- `eq[A030665(A028310(n)), A268488(n+1)]` -/
def P2941315772975500863.Spec : Prop :=
  ∀ n, (P2941315772975500863.a n : ℤ) = A216298 (n + 1)

end A216298

/-! ## A216298.P2437586470482039072

`eq[9, A060266(A008706(n))]`
-/

namespace A216298.P2437586470482039072
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060266 (A008706 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A216298.P2437586470482039072

namespace A216298

/-- `eq[9, A060266(A008706(n))]` -/
def P2437586470482039072.Spec : Prop :=
  ∀ n, (P2437586470482039072.a n : ℤ) = A216298 (n + 1)

end A216298

/-! ## A216298.P3186983986142897086

`eq[1, A105052(n)]`
-/

namespace A216298.P3186983986142897086
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105052 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A216298.P3186983986142897086

namespace A216298

/-- `eq[1, A105052(n)]` -/
def P3186983986142897086.Spec : Prop :=
  ∀ n, (P3186983986142897086.a n : ℤ) = A216298 (n + 1)

end A216298

/-! ## A216298.P7282585002822299918

`A059995(A216312(n+1))`
-/

namespace A216298.P7282585002822299918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059995 (A216312 (n + 1)).toNat

end

end A216298.P7282585002822299918

namespace A216298

/-- `A059995(A216312(n+1))` -/
def P7282585002822299918.Spec : Prop :=
  ∀ n, P7282585002822299918.a n = A216298 (n + 1)

end A216298

/-! ## A216298.P8475798524448559977

`A076309(A216312(n+1)-9)`
-/

namespace A216298.P8475798524448559977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076309 (A216312 (n + 1) - 9).toNat

end

end A216298.P8475798524448559977

namespace A216298

/-- `A076309(A216312(n+1)-9)` -/
def P8475798524448559977.Spec : Prop :=
  ∀ n, P8475798524448559977.a n = A216298 (n + 1)

end A216298

/-! ## A216298.P5477046628599935224

`lt[A090856(xor(1, A105052(n))), 2]`
-/

namespace A216298.P5477046628599935224
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090856 (Int.xor 1 (A105052 n)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A216298.P5477046628599935224

namespace A216298

/-- `lt[A090856(xor(1, A105052(n))), 2]` -/
def P5477046628599935224.Spec : Prop :=
  ∀ n, (P5477046628599935224.a n : ℤ) = A216298 (n + 1)

end A216298

/-! ## A216298.P15194720124838673060

`lt[A090857(xor(1, A105052(n))), 2]`
-/

namespace A216298.P15194720124838673060
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090857 (Int.xor 1 (A105052 n)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A216298.P15194720124838673060

namespace A216298

/-- `lt[A090857(xor(1, A105052(n))), 2]` -/
def P15194720124838673060.Spec : Prop :=
  ∀ n, (P15194720124838673060.a n : ℤ) = A216298 (n + 1)

end A216298

/-! ## A216298.P14849589114745158833

`lt[(1-A105052(n))², A347523(n)]`
-/

namespace A216298.P14849589114745158833
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A105052 n) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347523 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A216298.P14849589114745158833

namespace A216298

/-- `lt[(1-A105052(n))², A347523(n)]` -/
def P14849589114745158833.Spec : Prop :=
  ∀ n, (P14849589114745158833.a n : ℤ) = A216298 (n + 1)

end A216298

/-! ## A216298.P5748060554162053864

`eq[A032742(A017353(n)+2), A038800(n)]`
-/

namespace A216298.P5748060554162053864
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (A017353 n + 2).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038800 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A216298.P5748060554162053864

namespace A216298

/-- `eq[A032742(A017353(n)+2), A038800(n)]` -/
def P5748060554162053864.Spec : Prop :=
  ∀ n, (P5748060554162053864.a n : ℤ) = A216298 (n + 1)

end A216298

/-!
# A216299: Numbers k such that 10k+1 is composite but 10k+3, 10k+7, 10k+9 are all prime.

The programs for A216299, the canonical program `A216299.P2316561811494309320` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A216299 has offset 1).

The definition of A216299 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 107 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A216299.P2215305097403761251

`∩[A008470(n+1), A153275(n+1)]`
-/

namespace A216299.P2215305097403761251
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008470 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153275 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A216299.P2215305097403761251

namespace A216299

/-- `∩[A008470(n+1), A153275(n+1)]` -/
def P2215305097403761251.Spec : Prop :=
  ∀ n, (P2215305097403761251.a n : ℤ) = A216299 (n + 1)

end A216299

/-! ## A216299.P2316561811494309320

`∩[A008471(n+1), A153275(n+1)]`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A216299

/-- `∩[A008471(n+1), A153275(n+1)]` -/
def P2316561811494309320.Spec : Prop :=
  ∀ n, (P2316561811494309320.a n : ℤ) = A216299 (n + 1)

theorem P2316561811494309320.correct : P2316561811494309320.Spec := by
  intro n
  simp only [A216299, Nat.add_sub_cancel]

end A216299

/-! ## A216299.P9440522811939097899

`eq[A156376(n), A179816(n)]`
-/

namespace A216299.P9440522811939097899
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156376 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179816 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A216299.P9440522811939097899

namespace A216299

/-- `eq[A156376(n), A179816(n)]` -/
def P9440522811939097899.Spec : Prop :=
  ∀ n, (P9440522811939097899.a n : ℤ) = A216299 (n + 1)

end A216299

/-! ## A216299.P12334581344958605725

`eq[A008472(A091088(n)), A038800(n)]`
-/

namespace A216299.P12334581344958605725
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 (A091088 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038800 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A216299.P12334581344958605725

namespace A216299

/-- `eq[A008472(A091088(n)), A038800(n)]` -/
def P12334581344958605725.Spec : Prop :=
  ∀ n, (P12334581344958605725.a n : ℤ) = A216299 (n + 1)

end A216299

/-! ## A216299.P3834210366470920031

`eq[6, (A091088(n)+A038800(n))%A001844(n)]`
-/

namespace A216299.P3834210366470920031
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A091088 n + A038800 n) (A001844 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A216299.P3834210366470920031

namespace A216299

/-- `eq[6, (A091088(n)+A038800(n))%A001844(n)]` -/
def P3834210366470920031.Spec : Prop :=
  ∀ n, (P3834210366470920031.a n : ℤ) = A216299 (n + 1)

end A216299

/-! ## A216299.P17336989429413668045

`eq[A091088(n)+A038800(n), 6%A000203(n+1)]`
-/

namespace A216299.P17336989429413668045
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091088 n + A038800 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod 6 (A000203 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A216299.P17336989429413668045

namespace A216299

/-- `eq[A091088(n)+A038800(n), 6%A000203(n+1)]` -/
def P17336989429413668045.Spec : Prop :=
  ∀ n, (P17336989429413668045.a n : ℤ) = A216299 (n + 1)

end A216299

