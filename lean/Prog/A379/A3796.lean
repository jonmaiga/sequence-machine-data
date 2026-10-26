import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C004
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
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C037
import Seq.B000.C040
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
import Seq.B001.C010
import Seq.B001.C012
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
import Seq.B002.C007
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C003
import Seq.B005.C000
import Seq.B006.C000
import Seq.B007.C000
import Seq.B008.C000
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
import Seq.B012.C000
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
# A379600: a(n) is the semiperimeter of the primitive Pythagorean triangle (x(n), y(n), z(n)) with x(n) < y(n) < z(n) and x(n) > x(n-1), y(n) > y(n-1), z(n) > z(n-1), which has the smallest perimeter (if there are several triangles with smallest perimeter: the one of these with the smallest area), starting from a(1) = (3 + 4 + 5)/2 = 6.

The programs for A379600, there is no canonical definition to state claims against.
-/

/-! ## A379600.P10001475135678369962

`∩[A302022(n+1), A045506(n)]`
-/

namespace A379600.P10001475135678369962
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302022 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045506 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A379600.P10001475135678369962

/-! ## A379600.P2381427657063295268

`∩[A302022(n+1), A095274(n)]`
-/

namespace A379600.P2381427657063295268
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302022 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095274 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A379600.P2381427657063295268

/-! ## A379600.P9308095957491512785

`∩[A258575(n+1), A302022(n+1)]`
-/

namespace A379600.P9308095957491512785
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258575 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302022 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A379600.P9308095957491512785

/-! ## A379600.P241753718914612421

`A302022(A303541(n+1)%A126197(n+1))`
-/

namespace A379600.P241753718914612421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302022 (Int.tmod (A303541 (n + 1)) (A126197 (n + 1))).toNat

end

end A379600.P241753718914612421

/-!
# A379604: a(n) is the maximum number of items in a bucket for the bucket sort algorithm with input {0, 1, ..., n-1} and B = floor(sqrt(n)) buckets.

The programs for A379604, the canonical program `A379604.P642104544918864652` is in `Seq.B000.C040`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A379604 has offset 1).

The definition of A379604 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A379604.P642104544918864652

`ceil((n+1)/floor(sqrt(n+1)))`

The canonical program, it is in `Seq.B000.C040`.
-/

namespace A379604

/-- `ceil((n+1)/floor(sqrt(n+1)))` -/
def P642104544918864652.Spec : Prop :=
  ∀ n, P642104544918864652.a n = A379604 (n + 1)

theorem P642104544918864652.correct : P642104544918864652.Spec := by
  intro n
  simp only [A379604, Nat.add_sub_cancel]

end A379604

/-! ## A379604.P16046448164054301558

`A275437(n)+A259361(n)`
-/

namespace A379604.P16046448164054301558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275437 n + A259361 n

end

end A379604.P16046448164054301558

namespace A379604

/-- `A275437(n)+A259361(n)` -/
def P16046448164054301558.Spec : Prop :=
  ∀ n, P16046448164054301558.a n = A379604 (n + 1)

end A379604

/-! ## A379604.P13001009115168410004

`A183569(n+1)-A183570(n)`
-/

namespace A379604.P13001009115168410004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183569 (n + 1) - A183570 n

end

end A379604.P13001009115168410004

namespace A379604

/-- `A183569(n+1)-A183570(n)` -/
def P13001009115168410004.Spec : Prop :=
  ∀ n, P13001009115168410004.a n = A379604 (n + 1)

end A379604

/-! ## A379604.P14661429017246504035

`n+2-A078358(A083479(n+1))`
-/

namespace A379604.P14661429017246504035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) - A078358 (A083479 (n + 1)).toNat

end

end A379604.P14661429017246504035

namespace A379604

/-- `n+2-A078358(A083479(n+1))` -/
def P14661429017246504035.Spec : Prop :=
  ∀ n, P14661429017246504035.a n = A379604 (n + 1)

end A379604

/-! ## A379604.P2826781776871610898

`n+1-A028392(A028391(A028391(n)))`
-/

namespace A379604.P2826781776871610898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A028392 (A028391 (A028391 n).toNat).toNat

end

end A379604.P2826781776871610898

namespace A379604

/-- `n+1-A028392(A028391(A028391(n)))` -/
def P2826781776871610898.Spec : Prop :=
  ∀ n, P2826781776871610898.a n = A379604 (n + 1)

end A379604

/-! ## A379604.P5302480110184222585

`A000037(n+1)-(A028391(n)+A000196(n+1))`
-/

namespace A379604.P5302480110184222585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000037 (n + 1) - (A028391 n + A000196 (n + 1))

end

end A379604.P5302480110184222585

namespace A379604

/-- `A000037(n+1)-(A028391(n)+A000196(n+1))` -/
def P5302480110184222585.Spec : Prop :=
  ∀ n, P5302480110184222585.a n = A379604 (n + 1)

end A379604

/-! ## A379604.P8841235770976228231

`A080037(n+1)-A078358(n+2)`
-/

namespace A379604.P8841235770976228231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080037 (n + 1) - A078358 (n + 2)

end

end A379604.P8841235770976228231

namespace A379604

/-- `A080037(n+1)-A078358(n+2)` -/
def P8841235770976228231.Spec : Prop :=
  ∀ n, P8841235770976228231.a n = A379604 (n + 1)

end A379604

/-! ## A379604.P8183332388343075934

`A000194(n+1)+A028391(n+1)-A028391(n)`
-/

namespace A379604.P8183332388343075934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (n + 1) + (A028391 (n + 1) - A028391 n)

end

end A379604.P8183332388343075934

namespace A379604

/-- `A000194(n+1)+A028391(n+1)-A028391(n)` -/
def P8183332388343075934.Spec : Prop :=
  ∀ n, P8183332388343075934.a n = A379604 (n + 1)

end A379604

/-! ## A379604.P8423128707899515983

`A000194(n+1)+A003059(n+1)-A000196(n+1)`
-/

namespace A379604.P8423128707899515983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (n + 1) + (A003059 (n + 1) - A000196 (n + 1))

end

end A379604.P8423128707899515983

namespace A379604

/-- `A000194(n+1)+A003059(n+1)-A000196(n+1)` -/
def P8423128707899515983.Spec : Prop :=
  ∀ n, P8423128707899515983.a n = A379604 (n + 1)

end A379604

/-! ## A379604.P13714530582053950933

`A000194(n+1)+A135034(n+1)-A000196(n+1)`
-/

namespace A379604.P13714530582053950933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (n + 1) + (A135034 (n + 1) - A000196 (n + 1))

end

end A379604.P13714530582053950933

namespace A379604

/-- `A000194(n+1)+A135034(n+1)-A000196(n+1)` -/
def P13714530582053950933.Spec : Prop :=
  ∀ n, P13714530582053950933.a n = A379604 (n + 1)

end A379604

/-! ## A379604.P14923351541293209307

`A003059(n+1)+A368941(n+1)-A003059(n+2)`
-/

namespace A379604.P14923351541293209307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003059 (n + 1) + (A368941 (n + 1) - A003059 (n + 2))

end

end A379604.P14923351541293209307

namespace A379604

/-- `A003059(n+1)+A368941(n+1)-A003059(n+2)` -/
def P14923351541293209307.Spec : Prop :=
  ∀ n, P14923351541293209307.a n = A379604 (n + 1)

end A379604

/-! ## A379604.P15503837080539868146

`A049068(n+2)-(A240025(n+1)+A078358(n+2))`
-/

namespace A379604.P15503837080539868146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049068 (n + 2) - (A240025 (n + 1) + A078358 (n + 2))

end

end A379604.P15503837080539868146

namespace A379604

/-- `A049068(n+2)-(A240025(n+1)+A078358(n+2))` -/
def P15503837080539868146.Spec : Prop :=
  ∀ n, P15503837080539868146.a n = A379604 (n + 1)

end A379604

/-! ## A379604.P9214866940590209604

`(A232091(n+1)+A003059(n+1))/A003059(n+2)`
-/

namespace A379604.P9214866940590209604
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A232091 (n + 1) + A003059 (n + 1) : ℚ) / (A003059 (n + 2) : ℚ)

end

end A379604.P9214866940590209604

namespace A379604

/-- `(A232091(n+1)+A003059(n+1))/A003059(n+2)` -/
def P9214866940590209604.Spec : Prop :=
  ∀ n, P9214866940590209604.a n = (A379604 (n + 1) : ℚ)

end A379604

/-! ## A379604.P4336833001496515430

`A135034(n+1)*A368941(n+1)/A003059(n+2)`
-/

namespace A379604.P4336833001496515430
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A135034 (n + 1) * A368941 (n + 1) : ℚ) / (A003059 (n + 2) : ℚ)

end

end A379604.P4336833001496515430

namespace A379604

/-- `A135034(n+1)*A368941(n+1)/A003059(n+2)` -/
def P4336833001496515430.Spec : Prop :=
  ∀ n, P4336833001496515430.a n = (A379604 (n + 1) : ℚ)

end A379604

/-! ## A379604.P15593091658868260900

`A003059(A094761(n+1))`
-/

namespace A379604.P15593091658868260900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003059 (A094761 (n + 1)).toNat

end

end A379604.P15593091658868260900

namespace A379604

/-- `A003059(A094761(n+1))` -/
def P15593091658868260900.Spec : Prop :=
  ∀ n, P15593091658868260900.a n = A379604 (n + 1)

end A379604

/-! ## A379604.P2584810114677562456

`A003059(A071797(n+2)+n)`
-/

namespace A379604.P2584810114677562456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003059 (A071797 (n + 2) + (n : ℤ)).toNat

end

end A379604.P2584810114677562456

namespace A379604

/-- `A003059(A071797(n+2)+n)` -/
def P2584810114677562456.Spec : Prop :=
  ∀ n, P2584810114677562456.a n = A379604 (n + 1)

end A379604

/-! ## A379604.P16877339888577706343

`A135034(A071797(n+2)+n)`
-/

namespace A379604.P16877339888577706343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135034 (A071797 (n + 2) + (n : ℤ)).toNat

end

end A379604.P16877339888577706343

namespace A379604

/-- `A135034(A071797(n+2)+n)` -/
def P16877339888577706343.Spec : Prop :=
  ∀ n, P16877339888577706343.a n = A379604 (n + 1)

end A379604

/-! ## A379604.P1288600585686670509

`A003059(A053186(n+1)+n+1)`
-/

namespace A379604.P1288600585686670509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003059 (A053186 (n + 1) + (n + 1 : ℤ)).toNat

end

end A379604.P1288600585686670509

namespace A379604

/-- `A003059(A053186(n+1)+n+1)` -/
def P1288600585686670509.Spec : Prop :=
  ∀ n, P1288600585686670509.a n = A379604 (n + 1)

end A379604

/-! ## A379604.P9457786695078592829

`A135034(A135034(A173517(n+1))+n+1)`
-/

namespace A379604.P9457786695078592829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135034 (A135034 (A173517 (n + 1)).toNat + (n + 1 : ℤ)).toNat

end

end A379604.P9457786695078592829

namespace A379604

/-- `A135034(A135034(A173517(n+1))+n+1)` -/
def P9457786695078592829.Spec : Prop :=
  ∀ n, P9457786695078592829.a n = A379604 (n + 1)

end A379604

/-! ## A379604.P11098148205695644955

`A000194(A257213(n)+A232091(n+1))`
-/

namespace A379604.P11098148205695644955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (A257213 n + A232091 (n + 1)).toNat

end

end A379604.P11098148205695644955

namespace A379604

/-- `A000194(A257213(n)+A232091(n+1))` -/
def P11098148205695644955.Spec : Prop :=
  ∀ n, P11098148205695644955.a n = A379604 (n + 1)

end A379604

/-!
# A379606: S = (A-sin(A))/2 gives the area of a segment of the unit circle in terms of the arc length A (<= Pi). Expressing A in terms of S we get A = Sum_{n>=0} b^(2n+1)*c(n) where b = (12*S)^(1/3). Sequence gives numerators of c(n).

The programs for A379606, there is no canonical definition to state claims against.
-/

/-! ## A379606.P7655957347425191843

`A134412(A138998(n+1))`
-/

namespace A379606.P7655957347425191843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134412 (A138998 (n + 1)).toNat

end

end A379606.P7655957347425191843

/-! ## A379606.P11184852925485068872

`A166061(A038503(n)^3)`
-/

namespace A379606.P11184852925485068872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166061 (A038503 n ^ 3).toNat

end

end A379606.P11184852925485068872

/-!
# A379608: Number of unlabeled Riordan posets with n elements.

The programs for A379608, there is no canonical definition to state claims against.
-/

/-! ## A379608.P6605704909456652888

`A134482(A203611(n+1)*A347444(2*n+1))`
-/

namespace A379608.P6605704909456652888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134482 (A203611 (n + 1) * A347444 (2 * n + 1)).toNat

end

end A379608.P6605704909456652888

/-!
# A379610: a(n) = Sum_{j=0..n} binomial(2*j,j)^4 * binomial(n,j)^2 * Sum_{k=0..n} binomial(k+j,k-j)^2 * binomial(2*j,n-k) * binomial(2*j,k-j).

The programs for A379610, there is no canonical definition to state claims against.
-/

/-! ## A379610.P10249486207513841504

`A094424(A046691(n+3))`
-/

namespace A379610.P10249486207513841504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094424 (A046691 (n + 3)).toNat

end

end A379610.P10249486207513841504

/-! ## A379610.P12727138566650909527

`A094424(Δ[A023545(n+1)])`
-/

namespace A379610.P12727138566650909527
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094424 (f1 (n + 1) - f1 n).toNat

end

end A379610.P12727138566650909527

/-!
# A379612: a(n) = (n + 1)^(n - 1) + (n + 1)^(n - 2), by convention a(1) = 1.

The programs for A379612, there is no canonical definition to state claims against.
-/

/-! ## A379612.P5663075999347099211

`floor((n+2)*(n+1)^(n-2))`
-/

namespace A379612.P5663075999347099211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 2 : ℚ) * (n + 1 : ℚ) ^ ((n : ℤ) - 2 : ℤ)⌋

end

end A379612.P5663075999347099211

/-! ## A379612.P6448278339547024167

`A379611(∑[n])`
-/

namespace A379612.P6448278339547024167
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379611 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A379612.P6448278339547024167

/-! ## A379612.P16465155878377901198

`A379611(A000217(n))+A000035(2*n)`
-/

namespace A379612.P16465155878377901198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379611 (A000217 n).toNat + A000035 (2 * n)

end

end A379612.P16465155878377901198

/-! ## A379612.P7345936738674406194

`A379611(A000217(n))+A048105(A007947(2*n+1))`
-/

namespace A379612.P7345936738674406194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379611 (A000217 n).toNat + A048105 (A007947 (2 * n + 1)).toNat

end

end A379612.P7345936738674406194

/-! ## A379612.P16035836823992011803

`A379611(A000217(n))%A332119(n)`
-/

namespace A379612.P16035836823992011803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A379611 (A000217 n).toNat) (A332119 n)

end

end A379612.P16035836823992011803

/-!
# A379613: a(n) = n^(n - 1) - 2*(n + 1)^(n - 2), by convention a(0) = 0.

The programs for A379613, there is no canonical definition to state claims against.
-/

/-! ## A379613.P14556834917184447669

`and((4^n-(3*(3^n-2^n)+1))/2, A006880(ceil(2^(n-1))))`
-/

namespace A379613.P14556834917184447669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (SequenceMachineLib.roundAway (((4 ^ n : ℤ) - (3 * ((3 ^ n : ℤ) - (2 ^ n : ℤ)) + 1) : ℚ) / 2)) (A006880 ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉.toNat)

end

end A379613.P14556834917184447669

/-! ## A379613.P5330501145083558267

`A111895(A082579(n))`
-/

namespace A379613.P5330501145083558267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111895 (A082579 n).toNat

end

end A379613.P5330501145083558267

/-!
# A379614: a(n) = Sum_{k=0..n} 2^((n + k - 1)*(n - k)/2) * n! / (n - k)!. Row sums of A365638.

The programs for A379614, there is no canonical definition to state claims against.
-/

/-! ## A379614.P2847510372952095715

`A309441(Δ[n^n])`
-/

namespace A379614.P2847510372952095715
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309441 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A379614.P2847510372952095715

/-!
# A379622: Denominators of the partial alternating sums of the reciprocals of the alternating sum of divisors function (A206369).

The programs for A379622, there is no canonical definition to state claims against.
-/

/-! ## A379622.P11499190983456057660

`A278235(A222270(n+1))`
-/

namespace A379622.P11499190983456057660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278235 (A222270 (n + 1)).toNat

end

end A379622.P11499190983456057660

/-! ## A379622.P12180894277665319221

`A046523(A230952(n)-(n-1))`
-/

namespace A379622.P12180894277665319221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (A230952 n - ((n : ℤ) - 1)).toNat

end

end A379622.P12180894277665319221

/-! ## A379622.P6386092782720321780

`A003418(A225634(A225633(n²)))`
-/

namespace A379622.P6386092782720321780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003418 (A225634 (A225633 (n ^ 2)).toNat).toNat

end

end A379622.P6386092782720321780

/-! ## A379622.P9904022100384937067

`A278234(A362642(n)-A125800(n))`
-/

namespace A379622.P9904022100384937067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278234 (A362642 n - A125800 n).toNat

end

end A379622.P9904022100384937067

/-! ## A379622.P2806250796841231742

`gcd(A003418(n), A381636(A003418(n)))`
-/

namespace A379622.P2806250796841231742
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A003418 n) (A381636 (A003418 n).toNat)

end

end A379622.P2806250796841231742

/-!
# A379623: Irregular triangle read by rows: T(n,k) is the number of free polyominoes with n cells and width k, n >= 1, 1 <= k <= ceiling(n/2).

The programs for A379623, there is no canonical definition to state claims against.
-/

/-! ## A379623.P8179052260276781424

`A379637(n+1)/A122197(n+1)`
-/

namespace A379623.P8179052260276781424
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A379637 (n + 1) : ℚ) / (A122197 (n + 1) : ℚ)

end

end A379623.P8179052260276781424

/-!
# A379624: Triangle read by rows: T(n,k) is the number of free polyominoes with n cells and length k, n >= 1, k = 1..n.

The programs for A379624, there is no canonical definition to state claims against.
-/

/-! ## A379624.P8266063300542977858

`A379638(n+1)/A002260(n+1)`
-/

namespace A379624.P8266063300542977858
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A379638 (n + 1) : ℚ) / (A002260 (n + 1) : ℚ)

end

end A379624.P8266063300542977858

/-! ## A379624.P15573923562834138019

`A379638(n+1)/A131818(n+1)`
-/

namespace A379624.P15573923562834138019
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A379638 (n + 1) : ℚ) / (A131818 (n + 1) : ℚ)

end

end A379624.P15573923562834138019

/-! ## A379624.P16335308664358987688

`A379638(n+1)/A134868(n+1)`
-/

namespace A379624.P16335308664358987688
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A379638 (n + 1) : ℚ) / (A134868 (n + 1) : ℚ)

end

end A379624.P16335308664358987688

/-! ## A379624.P11293575261313223097

`A379638(n+1)/A135223(n+1)`
-/

namespace A379624.P11293575261313223097
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A379638 (n + 1) : ℚ) / (A135223 (n + 1) : ℚ)

end

end A379624.P11293575261313223097

/-! ## A379624.P4778848393203542377

`A379638(n+1)/A384660(n+1)`
-/

namespace A379624.P4778848393203542377
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A379638 (n + 1) : ℚ) / (A384660 (n + 1) : ℚ)

end

end A379624.P4778848393203542377

/-!
# A379625: Triangle read by rows: T(n,k) is the number of free polyominoes with n cells whose difference between length and width is k, n >= 1, k >= 0.

The programs for A379625, there is no canonical definition to state claims against.
-/

/-! ## A379625.P6103215141069380614

`A126792(A228550(n+1))`
-/

namespace A379625.P6103215141069380614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126792 (A228550 (n + 1)).toNat

end

end A379625.P6103215141069380614

/-! ## A379625.P18421151511831402156

`A363859(A136972(n+1))`
-/

namespace A379625.P18421151511831402156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363859 (A136972 (n + 1)).toNat

end

end A379625.P18421151511831402156

/-! ## A379625.P16179610245948509738

`A053842(A105422(n)^(n+1))`
-/

namespace A379625.P16179610245948509738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053842 (A105422 n ^ (n + 1)).toNat

end

end A379625.P16179610245948509738

/-! ## A379625.P5374545898091975462

`A374741(floor(A097609(n)²^(n/5)))`
-/

namespace A379625.P5374545898091975462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374741 ⌊(A097609 n ^ 2 : ℝ) ^ ((n : ℚ) / 5 : ℝ)⌋.toNat

end

end A379625.P5374545898091975462

/-! ## A379625.P3904891268438498438

`A296656(A173730(n+6))-char[2^n]`
-/

namespace A379625.P3904891268438498438
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296656 (A173730 (n + 6)).toNat - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A379625.P3904891268438498438

/-!
# A379626: Sum of the widths of the free polyominoes with n cells.

The programs for A379626, there is no canonical definition to state claims against.
-/

/-! ## A379626.P2740306681394716698

`A382717(A194690(n))`
-/

namespace A379626.P2740306681394716698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382717 (A194690 n).toNat

end

end A379626.P2740306681394716698

/-!
# A379627: Total area of the bounding boxes of the free polyominoes with n cells.

The programs for A379627, there is no canonical definition to state claims against.
-/

/-! ## A379627.P648475941683216777

`A057766(n+1)+A379628(n+1)`
-/

namespace A379627.P648475941683216777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057766 (n + 1) + A379628 (n + 1)

end

end A379627.P648475941683216777

/-! ## A379627.P8749078768426451912

`A123621(A149962(n+1))`
-/

namespace A379627.P8749078768426451912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123621 (A149962 (n + 1)).toNat

end

end A379627.P8749078768426451912

/-!
# A379628: Total area between the free polyominoes with n cells and their bounding boxes.

The programs for A379628, there is no canonical definition to state claims against.
-/

/-! ## A379628.P6631001384075110024

`A379627(n+1)-A057766(n+1)`
-/

namespace A379628.P6631001384075110024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379627 (n + 1) - A057766 (n + 1)

end

end A379628.P6631001384075110024

/-! ## A379628.P8938416602852575697

`A120440(A092203(n))`
-/

namespace A379628.P8938416602852575697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120440 (A092203 n).toNat

end

end A379628.P8938416602852575697

/-!
# A379629: Sum of the lengths of the free polyominoes with n cells.

The programs for A379629, there is no canonical definition to state claims against.
-/

/-! ## A379629.P3500350321906865441

`A091226(A000142(n)+A000079(n)²)`
-/

namespace A379629.P3500350321906865441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091226 (A000142 n + A000079 n ^ 2).toNat

end

end A379629.P3500350321906865441

/-! ## A379629.P15125291584770168098

`A091226(A000142(n)+A000079(2*n))`
-/

namespace A379629.P15125291584770168098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091226 (A000142 n + A000079 (2 * n)).toNat

end

end A379629.P15125291584770168098

/-!
# A379630: Irregular triangle read by rows in which row n lists the smallest parts of the partitions of n into consecutive parts followed by the conjugate corresponding odd divisors of n in accordance with the theorem of correspondence described in the Comments lines.

The programs for A379630, there is no canonical definition to state claims against.
-/

/-! ## A379630.P12353854212446586565

`A082460(n+3)*A368860(A342376(n+1))`
-/

namespace A379630.P12353854212446586565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082460 (n + 3) * A368860 (A342376 (n + 1)).toNat

end

end A379630.P12353854212446586565

/-! ## A379630.P7448454012740509149

`A363795(A092809(n))+1`
-/

namespace A379630.P7448454012740509149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363795 (A092809 n).toNat + 1

end

end A379630.P7448454012740509149

/-! ## A379630.P12440109814409079202

`A053574(3*A067538(3*n+2))`
-/

namespace A379630.P12440109814409079202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053574 (3 * A067538 (3 * n + 2)).toNat

end

end A379630.P12440109814409079202

/-! ## A379630.P17628780253778434230

`gcd(A007992(A000009(3*n+1)), A357980(n+1))`
-/

namespace A379630.P17628780253778434230
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A007992 (A000009 (3 * n + 1)).toNat) (A357980 (n + 1))

end

end A379630.P17628780253778434230

/-! ## A379630.P649667593979641939

`A002487(2*(n+1))^A352516(A000041(n))`
-/

namespace A379630.P649667593979641939
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002487 (2 * (n + 1)) : ℚ) ^ (A352516 (A000041 n).toNat : ℤ)

end

end A379630.P649667593979641939

/-!
# A379631: Irregular triangle read by rows: T(n,m), n >= 1, m >= 1, in which row n lists the largest parts of the partitions of n into consecutive parts followed by the conjugate corresponding odd divisors of n in accordance with the theorem described in A379630.

The programs for A379631, there is no canonical definition to state claims against.
-/

/-! ## A379631.P12936372309872399909

`A272677(A285844(n+1))`
-/

namespace A379631.P12936372309872399909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272677 (A285844 (n + 1)).toNat

end

end A379631.P12936372309872399909

/-! ## A379631.P5930915972451693761

`A272677(A285948(n+1))`
-/

namespace A379631.P5930915972451693761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272677 (A285948 (n + 1)).toNat

end

end A379631.P5930915972451693761

/-! ## A379631.P4761371972550638750

`A379630(n+1)+A189628(A050266(n+5))`
-/

namespace A379631.P4761371972550638750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379630 (n + 1) + A189628 (A050266 (n + 5)).toNat

end

end A379631.P4761371972550638750

/-! ## A379631.P336793482340521671

`char[A267298(n+1)]+A363795(A092809(n))+1`
-/

namespace A379631.P336793482340521671
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267298 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) + (A363795 (A092809 n).toNat + 1)

end

end A379631.P336793482340521671

/-! ## A379631.P12440779857132187369

`A005185(A032742(n+4))%A073521(n+4)`
-/

namespace A379631.P12440779857132187369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A005185 (A032742 (n + 4)).toNat) (A073521 (n + 4))

end

end A379631.P12440779857132187369

/-!
# A379632: Irregular triangle read by rows in which row n lists the smallest parts of the partitions of n into consecutive parts (with the partitions ordered by increasing number of parts).

The programs for A379632, there is no canonical definition to state claims against.
-/

/-! ## A379632.P8588652747356426544

`A379633(n+1)+1-A341970(n+1)`
-/

namespace A379632.P8588652747356426544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379633 (n + 1) + 1 - A341970 (n + 1)

end

end A379632.P8588652747356426544

/-! ## A379632.P11377540712686767345

`abs(A341971(n+1))`
-/

namespace A379632.P11377540712686767345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A341971 (n + 1)|

end

end A379632.P11377540712686767345

/-! ## A379632.P7030541166361550884

`A000188(A341971(n+1)²)`
-/

namespace A379632.P7030541166361550884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000188 (A341971 (n + 1) ^ 2).toNat

end

end A379632.P7030541166361550884

/-! ## A379632.P3027286223689475634

`A000196(A341971(n+1)²)`
-/

namespace A379632.P3027286223689475634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A341971 (n + 1) ^ 2).toNat

end

end A379632.P3027286223689475634

/-! ## A379632.P3964111200446185327

`A000188(A341971(n+1)^2)`
-/

namespace A379632.P3964111200446185327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000188 (A341971 (n + 1) ^ 2).toNat

end

end A379632.P3964111200446185327

/-! ## A379632.P16453430563107532237

`A229297(A341971(n+1)^2)`
-/

namespace A379632.P16453430563107532237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229297 (A341971 (n + 1) ^ 2).toNat

end

end A379632.P16453430563107532237

/-! ## A379632.P15033126823810185441

`gcd(A000038(n), A341971(n+1))`
-/

namespace A379632.P15033126823810185441
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A341971 (n + 1))

end

end A379632.P15033126823810185441

/-! ## A379632.P18348336875147152618

`lcm(A020985(n), A341971(n+1))`
-/

namespace A379632.P18348336875147152618
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020985 n) (A341971 (n + 1))

end

end A379632.P18348336875147152618

/-! ## A379632.P3305761050956335651

`A003059(A341971(n+1)*A341971(n+1))`
-/

namespace A379632.P3305761050956335651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003059 (A341971 (n + 1) * A341971 (n + 1)).toNat

end

end A379632.P3305761050956335651

/-! ## A379632.P14249252372354381994

`A033677(A341971(n+1)*A341971(n+1))`
-/

namespace A379632.P14249252372354381994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033677 (A341971 (n + 1) * A341971 (n + 1)).toNat

end

end A379632.P14249252372354381994

/-!
# A379633: Irregular triangle read by rows in which row n lists the largest parts of the partitions of n into consecutive parts (with the partitions ordered by increasing number of parts).

The programs for A379633, there is no canonical definition to state claims against.
-/

/-! ## A379633.P8915714283018551269

`A002024(A368952(n+1))`
-/

namespace A379633.P8915714283018551269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (A368952 (n + 1)).toNat

end

end A379633.P8915714283018551269

/-! ## A379633.P1721795103571755313

`A007318(A368952(n+1)+1)`
-/

namespace A379633.P1721795103571755313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A368952 (n + 1) + 1).toNat

end

end A379633.P1721795103571755313

/-! ## A379633.P2110607297804763631

`A071919(A368952(n+1)+1)+1`
-/

namespace A379633.P2110607297804763631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071919 (A368952 (n + 1) + 1).toNat + 1

end

end A379633.P2110607297804763631

/-! ## A379633.P12503574715227459513

`A029635(A368952(n+1)+1)-1`
-/

namespace A379633.P12503574715227459513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029635 (A368952 (n + 1) + 1).toNat - 1

end

end A379633.P12503574715227459513

/-! ## A379633.P3950705509123266438

`A051903(A356956(n+2))+1`
-/

namespace A379633.P3950705509123266438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (A356956 (n + 2)).toNat + 1

end

end A379633.P3950705509123266438

/-!
# A379634: Irregular triangle read by rows in which row n lists the odd divisors of n ordered as the mirror of A261697.

The programs for A379634, there is no canonical definition to state claims against.
-/

/-! ## A379634.P2839133025574068734

`A182469(n+2)%(A078355(2*(n+2))+3)`
-/

namespace A379634.P2839133025574068734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A182469 (n + 2)) (A078355 (2 * (n + 2)) + 3)

end

end A379634.P2839133025574068734

/-! ## A379634.P11795783973246674371

`A182469(n+2)%A001748(A166464(n))`
-/

namespace A379634.P11795783973246674371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A182469 (n + 2)) (A001748 (A166464 n).toNat)

end

end A379634.P11795783973246674371

/-! ## A379634.P12734558454449848043

`A182469(n+2)+A142150(A339475(n+1))`
-/

namespace A379634.P12734558454449848043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182469 (n + 2) + A142150 (A339475 (n + 1)).toNat

end

end A379634.P12734558454449848043

/-! ## A379634.P6664170820933288355

`A067029(A107798(n+1))*A182469(n+2)`
-/

namespace A379634.P6664170820933288355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067029 (A107798 (n + 1)).toNat * A182469 (n + 2)

end

end A379634.P6664170820933288355

/-! ## A379634.P481476757610833680

`A001222(A182451(n+1))*A182469(n+2)`
-/

namespace A379634.P481476757610833680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A182451 (n + 1)).toNat * A182469 (n + 2)

end

end A379634.P481476757610833680

/-!
# A379635: Triangle read by rows: T(n,k) = A000203(k)*A000203(n-k+1), n >= 1, k >= 1.

The programs for A379635, the canonical program `A379635.P7319658376581675878` is in `Seq.B001.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A379635 has offset 1).

The definition of A379635 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000203(col(n)+1)*A000203(row(n)+1-col(n))` (program `A379635.P7319658376581675878`, by `A379635.P7319658376581675878.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A379635.P7319658376581675878

`A000203(col(n)+1)*A000203(row(n)+1-col(n))`

The canonical program, it is in `Seq.B001.C012`.
-/

namespace A379635

/-- `A000203(col(n)+1)*A000203(row(n)+1-col(n))` -/
def P7319658376581675878.Spec : Prop :=
  ∀ n, P7319658376581675878.a n = A379635 (n + 1)

theorem P7319658376581675878.correct : P7319658376581675878.Spec := by
  intro n
  simp only [A379635, Nat.add_sub_cancel]

end A379635

/-! ## A379635.P2429268899416552368

`A000203(col(n)+1)*A000203(row(n)-col(n)+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A379635.P2429268899416552368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (SequenceMachineLib.triCol n + 1) * A000203 ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ) + 1).toNat

end

end A379635.P2429268899416552368

namespace A379635

/-- `A000203(col(n)+1)*A000203(row(n)-col(n)+1)` -/
def P2429268899416552368.Spec : Prop :=
  ∀ n, P2429268899416552368.a n = A379635 (n + 1)

end A379635

/-! ## A379635.P14926726125740474784

`A000203(row(n)-col(n)+1)*A000203(col(n)+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A379635.P14926726125740474784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ) + 1).toNat * A000203 (SequenceMachineLib.triCol n + 1)

end

end A379635.P14926726125740474784

namespace A379635

/-- `A000203(row(n)-col(n)+1)*A000203(col(n)+1)` -/
def P14926726125740474784.Spec : Prop :=
  ∀ n, P14926726125740474784.a n = A379635 (n + 1)

end A379635

/-! ## A379635.P9667035782198114897

`A000203(col(n)+1)*A000203(row(n)+1-(col(n)+1)+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A379635.P9667035782198114897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (SequenceMachineLib.triCol n + 1) * A000203 ((SequenceMachineLib.triRow n + 1 : ℤ) - (SequenceMachineLib.triCol n + 1 : ℤ) + 1).toNat

end

end A379635.P9667035782198114897

namespace A379635

/-- `A000203(col(n)+1)*A000203(row(n)+1-(col(n)+1)+1)` -/
def P9667035782198114897.Spec : Prop :=
  ∀ n, P9667035782198114897.a n = A379635 (n + 1)

end A379635

/-! ## A379635.P2239528434753463119

`A245093(n+1)*A272172(n+1)`
-/

namespace A379635.P2239528434753463119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245093 (n + 1) * A272172 (n + 1)

end

end A379635.P2239528434753463119

namespace A379635

/-- `A245093(n+1)*A272172(n+1)` -/
def P2239528434753463119.Spec : Prop :=
  ∀ n, P2239528434753463119.a n = A379635 (n + 1)

end A379635

/-! ## A379635.P12768669110899933564

`A000203(A004736(n+1))*A245093(n+1)`
-/

namespace A379635.P12768669110899933564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A004736 (n + 1)).toNat * A245093 (n + 1)

end

end A379635.P12768669110899933564

namespace A379635

/-- `A000203(A004736(n+1))*A245093(n+1)` -/
def P12768669110899933564.Spec : Prop :=
  ∀ n, P12768669110899933564.a n = A379635 (n + 1)

end A379635

/-! ## A379635.P13989280462930164670

`A221529(n+1)/A027293(n+1)*A272172(n+1)`
-/

namespace A379635.P13989280462930164670
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A221529 (n + 1) : ℚ) / (A027293 (n + 1) : ℚ) * (A272172 (n + 1) : ℚ)

end

end A379635.P13989280462930164670

namespace A379635

/-- `A221529(n+1)/A027293(n+1)*A272172(n+1)` -/
def P13989280462930164670.Spec : Prop :=
  ∀ n, P13989280462930164670.a n = (A379635 (n + 1) : ℚ)

end A379635

/-! ## A379635.P3375713532642598503

`A000203(A002260(n+1))*A000203(A004736(n+1))`
-/

namespace A379635.P3375713532642598503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A002260 (n + 1)).toNat * A000203 (A004736 (n + 1)).toNat

end

end A379635.P3375713532642598503

namespace A379635

/-- `A000203(A002260(n+1))*A000203(A004736(n+1))` -/
def P3375713532642598503.Spec : Prop :=
  ∀ n, P3375713532642598503.a n = A379635 (n + 1)

end A379635

/-! ## A379635.P12630151898157426508

`A245093(A038722(n+1))*A245093(n+1)`
-/

namespace A379635.P12630151898157426508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245093 (A038722 (n + 1)).toNat * A245093 (n + 1)

end

end A379635.P12630151898157426508

namespace A379635

/-- `A245093(A038722(n+1))*A245093(n+1)` -/
def P12630151898157426508.Spec : Prop :=
  ∀ n, P12630151898157426508.a n = A379635 (n + 1)

end A379635

/-!
# A379637: Irregular triangle read by rows: T(n,k) is the sum of the widths of the free polyominoes with n cells and width k, n >= 1, 1 <= k <= ceiling(n/2).

The programs for A379637, there is no canonical definition to state claims against.
-/

/-! ## A379637.P12612056147531142602

`A122197(n+1)*A379623(n+1)`
-/

namespace A379637.P12612056147531142602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122197 (n + 1) * A379623 (n + 1)

end

end A379637.P12612056147531142602

/-!
# A379638: Triangle read by rows: T(n,k) is the sum of the lengths of the free polyominoes with n cells and length k, n >= 1, k >= 1.

The programs for A379638, there is no canonical definition to state claims against.
-/

/-! ## A379638.P13883807266592176715

`A002260(n+1)*A379624(n+1)`
-/

namespace A379638.P13883807266592176715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1) * A379624 (n + 1)

end

end A379638.P13883807266592176715

/-! ## A379638.P326870162578690476

`A131818(n+1)*A379624(n+1)`
-/

namespace A379638.P326870162578690476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1) * A379624 (n + 1)

end

end A379638.P326870162578690476

/-! ## A379638.P9909002385118517642

`A134868(n+1)*A379624(n+1)`
-/

namespace A379638.P9909002385118517642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134868 (n + 1) * A379624 (n + 1)

end

end A379638.P9909002385118517642

/-! ## A379638.P11668483205184961487

`A135223(n+1)*A379624(n+1)`
-/

namespace A379638.P11668483205184961487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135223 (n + 1) * A379624 (n + 1)

end

end A379638.P11668483205184961487

/-! ## A379638.P13068736283391324358

`A379624(n+1)*A384660(n+1)`
-/

namespace A379638.P13068736283391324358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379624 (n + 1) * A384660 (n + 1)

end

end A379638.P13068736283391324358

/-!
# A379639: Smallest primitive prime factor of 6^n-1.

The programs for A379639, there is no canonical definition to state claims against.
-/

/-! ## A379639.P7973642274893453594

`A064082(A004913(n+1)+1)`
-/

namespace A379639.P7973642274893453594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064082 (A004913 (n + 1) + 1).toNat

end

end A379639.P7973642274893453594

/-!
# A379640: Smallest primitive prime factor of 7^n-1.

The programs for A379640, there is no canonical definition to state claims against.
-/

/-! ## A379640.P4229605830697847627

`A074249(n+1)-A000122(A002275(n))`
-/

namespace A379640.P4229605830697847627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074249 (n + 1) - A000122 (A002275 n).toNat

end

end A379640.P4229605830697847627

/-!
# A379643: List of x coordinates of prime numbers in a Cartesian grid, where the first prime 2 is placed at the origin (0,0) and the second prime 3 at (1,0). For the n-th prime prime(n), n >= 3, take a unit step in the direction (prime(n)-3)*45 degrees counterclockwise from the positive x-axis.

The programs for A379643, there is no canonical definition to state claims against.
-/

/-! ## A379643.P7894758081747448824

`∑[A132380(A006093(n+1))]`
-/

namespace A379643.P7894758081747448824
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132380 (A006093 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A379643.P7894758081747448824

/-! ## A379643.P6444968210155807657

`∑[A101455(A102781(n+1))]`
-/

namespace A379643.P6444968210155807657
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101455 (A102781 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A379643.P6444968210155807657

/-! ## A379643.P6761530490424259321

`∑[A364032(A000040(n+1))]`
-/

namespace A379643.P6761530490424259321
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364032 (A000040 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A379643.P6761530490424259321

/-! ## A379643.P16546505234447219296

`∑[A348953(A088192(n+1))]`
-/

namespace A379643.P16546505234447219296
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348953 (A088192 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A379643.P16546505234447219296

/-! ## A379643.P5297383624932728077

`∑[A132380(record[A000010(n+1)])]`
-/

namespace A379643.P5297383624932728077
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132380 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A379643.P5297383624932728077

/-! ## A379643.P2912185276607284837

`∑[A101455(record[A219695(n+1)])]`
-/

namespace A379643.P2912185276607284837
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219695 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101455 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A379643.P2912185276607284837

/-! ## A379643.P4318286036203139511

`∑[A132380(A000040(n+1)-1)]`
-/

namespace A379643.P4318286036203139511
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132380 (A000040 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A379643.P4318286036203139511

/-! ## A379643.P16105477076279426745

`A379731(n+1)-A320858(n+1)`
-/

namespace A379643.P16105477076279426745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379731 (n + 1) - A320858 (n + 1)

end

end A379643.P16105477076279426745

/-! ## A379643.P5146570451380506728

`A321861(n+1)-A379731(n+1)`
-/

namespace A379643.P5146570451380506728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321861 (n + 1) - A379731 (n + 1)

end

end A379643.P5146570451380506728

/-! ## A379643.P17615769853736420742

`(A321861(n+1)-A320858(n+1))/2`
-/

namespace A379643.P17615769853736420742
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A321861 (n + 1) - A320858 (n + 1) : ℚ) / 2

end

end A379643.P17615769853736420742

/-!
# A379644: Smallest primitive prime factor of 11^n-1.

The programs for A379644, there is no canonical definition to state claims against.
-/

/-! ## A379644.P176963482988277978

`A008578(A042989(a(n-1)))` with `a(0)=2`
-/

namespace A379644.P176963482988277978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A008578 (A042989 (a (n - 1)).toNat).toNat

end

end A379644.P176963482988277978

/-!
# A379647: Let D(k) = {d(k,i)}, i = 1,2,...,q be the set of q divisors of an integer k. a(n) is the smallest number k such that there exist exactly n distinct integers M, 1 < M <= k, where each set D(k) mod M = {0,1,2,...,M-1}.

The programs for A379647, there is no canonical definition to state claims against.
-/

/-! ## A379647.P9599809963059576745

`A001511(A029851(n))*A365902(n+1)`
-/

namespace A379647.P9599809963059576745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (A029851 n).toNat * A365902 (n + 1)

end

end A379647.P9599809963059576745

/-! ## A379647.P5102805446798326398

`lcm(A003418(n), A054055(A164852(n+1)))`
-/

namespace A379647.P5102805446798326398
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A003418 n) (A054055 (A164852 (n + 1)).toNat)

end

end A379647.P5102805446798326398

/-! ## A379647.P18013196172748835306

`A000010(A223321(n+1)+A146027(n+1))`
-/

namespace A379647.P18013196172748835306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A223321 (n + 1) + A146027 (n + 1)).toNat

end

end A379647.P18013196172748835306

/-!
# A379650: a(n) is the least number whose fifth power is an n-digit fifth power which has the maximum sum of digits (A374025(n)).

The programs for A379650, there is no canonical definition to state claims against.
-/

/-! ## A379650.P8022978687828498064

`A380566(A043318(n+1))`
-/

namespace A379650.P8022978687828498064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380566 (A043318 (n + 1)).toNat

end

end A379650.P8022978687828498064

/-! ## A379650.P12457697269605373125

`A380566(A044915(n+1))`
-/

namespace A379650.P12457697269605373125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380566 (A044915 (n + 1)).toNat

end

end A379650.P12457697269605373125

/-! ## A379650.P7396825080095358868

`A380566(A055647(n+1))`
-/

namespace A379650.P7396825080095358868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380566 (A055647 (n + 1)).toNat

end

end A379650.P7396825080095358868

/-! ## A379650.P3626962450623896313

`A380566(A055648(n)+1)`
-/

namespace A379650.P3626962450623896313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380566 (A055648 n + 1).toNat

end

end A379650.P3626962450623896313

/-! ## A379650.P6175543981596113387

`A380566(A161951(n+1))`
-/

namespace A379650.P6175543981596113387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380566 (A161951 (n + 1)).toNat

end

end A379650.P6175543981596113387

/-!
# A379651: Decimal expansion of the smallest number greater than 1 whose decimal and binary expansions have the same succession of digits.

The programs for A379651, there is no canonical definition to state claims against.
-/

/-! ## A379651.P10763067287896587197

`char[A379079(n+1)-1]`
-/

namespace A379651.P10763067287896587197
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379079 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A379651.P10763067287896587197

/-! ## A379651.P17929953427278676124

`A352573(A152754(n+1))`
-/

namespace A379651.P17929953427278676124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352573 (A152754 (n + 1)).toNat

end

end A379651.P17929953427278676124

/-! ## A379651.P13713058323154066382

`and(A071653(3*n+1), A190669(A335136(n+1)))`
-/

namespace A379651.P13713058323154066382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A071653 (3 * n + 1)) (A190669 (A335136 (n + 1)).toNat)

end

end A379651.P13713058323154066382

/-! ## A379651.P10929117749267114095

`A010060(A373145(2*n+1)+A231549(3*(n+1)))`
-/

namespace A379651.P10929117749267114095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 (A373145 (2 * n + 1) + A231549 (3 * (n + 1))).toNat

end

end A379651.P10929117749267114095

/-! ## A379651.P17110909274898915772

`A114482(A167151(n+1))`
-/

namespace A379651.P17110909274898915772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114482 (A167151 (n + 1)).toNat

end

end A379651.P17110909274898915772

/-!
# A379652: a(1) = 2. For n > 1, a(n) = smallest prime factor of c=2*a(n-1)+1 that is not in {a(1), ..., a(n-1)}; if all prime factors of c are in {a(1), ..., a(n-1)}, then we try the next value of c, which is 2*c+1; and so on.

The programs for A379652, there is no canonical definition to state claims against.
-/

/-! ## A379652.P3282844180453357403

`or(A002828(A306376(n)), A174162(n+1))`
-/

namespace A379652.P3282844180453357403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A002828 (A306376 n).toNat) (A174162 (n + 1))

end

end A379652.P3282844180453357403

/-! ## A379652.P15592165070145142832

`A174162(n+1)+A162641(A174146(n+1))`
-/

namespace A379652.P15592165070145142832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174162 (n + 1) + A162641 (A174146 (n + 1)).toNat

end

end A379652.P15592165070145142832

/-! ## A379652.P18330473882446461531

`or(A124768(A038144(n+1)), A174162(n+1))`
-/

namespace A379652.P18330473882446461531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A124768 (A038144 (n + 1)).toNat) (A174162 (n + 1))

end

end A379652.P18330473882446461531

/-! ## A379652.P2634310649588715955

`or(A000002(A000045(2*n+3)), A174162(n+1))`
-/

namespace A379652.P2634310649588715955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000002 (A000045 (2 * n + 3)).toNat) (A174162 (n + 1))

end

end A379652.P2634310649588715955

/-!
# A379654: Least positive integer k <= n such that |tau(k)|*n + 1 is prime, or 0 if such k does not exist, where the tau function is given by A000594.

The programs for A379654, there is no canonical definition to state claims against.
-/

/-! ## A379654.P13727789604580827617

`A246281(A051286(n))%6`
-/

namespace A379654.P13727789604580827617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A246281 (A051286 n).toNat) 6

end

end A379654.P13727789604580827617

/-! ## A379654.P13143334399002724625

`A001222(A270109(n)+A063865(2*n))`
-/

namespace A379654.P13143334399002724625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A270109 n + A063865 (2 * n)).toNat

end

end A379654.P13143334399002724625

/-! ## A379654.P6167091997952742297

`A000120(A373158(n+1)+A088568(n+1))`
-/

namespace A379654.P6167091997952742297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A373158 (n + 1) + A088568 (n + 1)).toNat

end

end A379654.P6167091997952742297

/-!
# A379655: Numbers k such that k and k+1 are both possible values of the sum of divisors function (A000203).

The programs for A379655, the canonical program `A379655.P8370440045132566259` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A379655 has offset 1).

The definition of A379655 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 222 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A379655.P8370440045132566259

`∩[A002191(n+1), ∑[A083531(n+1)]]`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A379655

/-- `∩[A002191(n+1), ∑[A083531(n+1)]]` -/
def P8370440045132566259.Spec : Prop :=
  ∀ n, (P8370440045132566259.a n : ℤ) = A379655 (n + 1)

theorem P8370440045132566259.correct : P8370440045132566259.Spec := by
  intro n
  simp only [A379655, Nat.add_sub_cancel]

end A379655

/-! ## A379655.P13132073852252816583

`lt[A175253(n+1), char[A000203(n+1)]]`
-/

namespace A379655.P13132073852252816583
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175253 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A379655.P13132073852252816583

namespace A379655

/-- `lt[A175253(n+1), char[A000203(n+1)]]` -/
def P13132073852252816583.Spec : Prop :=
  ∀ n, (P13132073852252816583.a n : ℤ) = A379655 (n + 1)

end A379655

/-!
# A379657: The nonadjacent form of a(n) is obtained by inserting a digit 0 before each nonzero digit in the balanced ternary expansion of n.

The programs for A379657, there is no canonical definition to state claims against.
-/

/-! ## A379657.P15195748419429211348

`A305878(n)%A161508(A305878(3*n+4))`
-/

namespace A379657.P15195748419429211348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A305878 n) (A161508 (A305878 (3 * n + 4)).toNat)

end

end A379657.P15195748419429211348

/-!
# A379663: a(n) is the number of integer-sided triangles whose sides are in geometric progression with smallest side n.

The programs for A379663, the canonical program `A379663.P16552720730699355066` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A379663 has offset 1).

The definition of A379663 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A379663.P16552720730699355066

`A060143(A000188(n+1))+1`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A379663

/-- `A060143(A000188(n+1))+1` -/
def P16552720730699355066.Spec : Prop :=
  ∀ n, P16552720730699355066.a n = A379663 (n + 1)

theorem P16552720730699355066.correct : P16552720730699355066.Spec := by
  intro n
  simp only [A379663, Nat.add_sub_cancel]

end A379663

/-! ## A379663.P4019645595922044312

`ceil(∏{p}[n+1, #^val(n+1, #²)]/ϕ)`
-/

namespace A379663.P4019645595922044312
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((∏ p ∈ Nat.primeFactors (f1 n), p ^ SequenceMachineLib.valuation (n + 1) (p ^ 2) : ℕ) : ℝ) / Real.goldenRatio⌉

end

end A379663.P4019645595922044312

namespace A379663

/-- `ceil(∏{p}[n+1, #^val(n+1, #²)]/ϕ)` -/
def P4019645595922044312.Spec : Prop :=
  ∀ n, P4019645595922044312.a n = A379663 (n + 1)

end A379663

/-! ## A379663.P13456682626242245898

`ceil((A057918(n+1)+1)/ϕ)`
-/

namespace A379663.P13456682626242245898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A057918 (n + 1) + 1 : ℝ) / Real.goldenRatio⌉

end

end A379663.P13456682626242245898

namespace A379663

/-- `ceil((A057918(n+1)+1)/ϕ)` -/
def P13456682626242245898.Spec : Prop :=
  ∀ n, P13456682626242245898.a n = A379663 (n + 1)

end A379663

/-! ## A379663.P5347933062716122650

`A019446(∏{p}[n+1, #^val(n+1, #²)])`
-/

namespace A379663.P5347933062716122650
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019446 (∏ p ∈ Nat.primeFactors (f1 n), p ^ SequenceMachineLib.valuation (n + 1) (p ^ 2))

end

end A379663.P5347933062716122650

namespace A379663

/-- `A019446(∏{p}[n+1, #^val(n+1, #²)])` -/
def P5347933062716122650.Spec : Prop :=
  ∀ n, P5347933062716122650.a n = A379663 (n + 1)

end A379663

/-! ## A379663.P18209369439059491040

`A019446(A000188(n+1))`
-/

namespace A379663.P18209369439059491040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019446 (A000188 (n + 1)).toNat

end

end A379663.P18209369439059491040

namespace A379663

/-- `A019446(A000188(n+1))` -/
def P18209369439059491040.Spec : Prop :=
  ∀ n, P18209369439059491040.a n = A379663 (n + 1)

end A379663

/-! ## A379663.P1853018810335664212

`A023190(∏{p}[n+1, #^val(n+1, #²)])%A032758(n+1)`
-/

namespace A379663.P1853018810335664212
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A023190 (∏ p ∈ Nat.primeFactors (f1 n), p ^ SequenceMachineLib.valuation (n + 1) (p ^ 2))) (A032758 (n + 1))

end

end A379663.P1853018810335664212

namespace A379663

/-- `A023190(∏{p}[n+1, #^val(n+1, #²)])%A032758(n+1)` -/
def P1853018810335664212.Spec : Prop :=
  ∀ n, P1853018810335664212.a n = A379663 (n + 1)

end A379663

/-! ## A379663.P8599302649277434775

`A023190(∏{p}[n+1, #^val(n+1, #²)]%A218522(n+1))`
-/

namespace A379663.P8599302649277434775
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023190 (Int.tmod ((∏ p ∈ Nat.primeFactors (f1 n), p ^ SequenceMachineLib.valuation (n + 1) (p ^ 2) : ℕ) : ℤ) (A218522 (n + 1))).toNat

end

end A379663.P8599302649277434775

namespace A379663

/-- `A023190(∏{p}[n+1, #^val(n+1, #²)]%A218522(n+1))` -/
def P8599302649277434775.Spec : Prop :=
  ∀ n, P8599302649277434775.a n = A379663 (n + 1)

end A379663

/-! ## A379663.P14550811820560936252

`A258198(A148164(∏{p}[n+1, #^val(n+1, #²)]+1))`
-/

namespace A379663.P14550811820560936252
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258198 (A148164 (∏ p ∈ Nat.primeFactors (f1 n), p ^ SequenceMachineLib.valuation (n + 1) (p ^ 2) + 1)).toNat

end

end A379663.P14550811820560936252

namespace A379663

/-- `A258198(A148164(∏{p}[n+1, #^val(n+1, #²)]+1))` -/
def P14550811820560936252.Spec : Prop :=
  ∀ n, P14550811820560936252.a n = A379663 (n + 1)

end A379663

/-! ## A379663.P6593587668833985680

`A258198(A148170(∏{p}[n+1, #^val(n+1, #²)]+1))`
-/

namespace A379663.P6593587668833985680
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258198 (A148170 (∏ p ∈ Nat.primeFactors (f1 n), p ^ SequenceMachineLib.valuation (n + 1) (p ^ 2) + 1)).toNat

end

end A379663.P6593587668833985680

namespace A379663

/-- `A258198(A148170(∏{p}[n+1, #^val(n+1, #²)]+1))` -/
def P6593587668833985680.Spec : Prop :=
  ∀ n, P6593587668833985680.a n = A379663 (n + 1)

end A379663

/-!
# A379666: Array read by antidiagonals downward where A(n,k) is the number of integer partitions of n with product k.

The programs for A379666, there is no canonical definition to state claims against.
-/

/-! ## A379666.P11257957964099857146

`A380959(A061579(n))`
-/

namespace A379666.P11257957964099857146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380959 (A061579 n).toNat

end

end A379666.P11257957964099857146

/-! ## A379666.P16337752649695219445

`A380959(A038722(n+1)-1)`
-/

namespace A379666.P16337752649695219445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380959 (A038722 (n + 1) - 1).toNat

end

end A379666.P16337752649695219445

/-! ## A379666.P17829074624207783592

`A380959(A038722(n+2))`
-/

namespace A379666.P17829074624207783592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380959 (A038722 (n + 2)).toNat

end

end A379666.P17829074624207783592

/-! ## A379666.P5544376263394483686

`and(A059607(n), A115268(A106268(n)))`
-/

namespace A379666.P5544376263394483686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A059607 n) (A115268 (A106268 n).toNat)

end

end A379666.P5544376263394483686

/-! ## A379666.P18348131980983972163

`A059607(or(n, A374248(2*n+1)))`
-/

namespace A379666.P18348131980983972163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059607 (Int.lor (n : ℤ) (A374248 (2 * n + 1))).toNat

end

end A379666.P18348131980983972163

/-!
# A379667: Number of finite multisets of positive integers with sum + product = n.

The programs for A379667, there is no canonical definition to state claims against.
-/

/-! ## A379667.P4527208554330890219

`∑[A379669(n)]`
-/

namespace A379667.P4527208554330890219
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379669 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A379667.P4527208554330890219

/-! ## A379667.P16593859900671800973

`A000700(A285567(n+1)%A271269(2*(n+2)))`
-/

namespace A379667.P16593859900671800973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000700 (Int.tmod (A285567 (n + 1)) (A271269 (2 * (n + 2)))).toNat

end

end A379667.P16593859900671800973

/-!
# A379668: Array read by antidiagonals downward where A(n,k) is the number of integer partitions of n into parts > 1 with product k.

The programs for A379668, there is no canonical definition to state claims against.
-/

/-! ## A379668.P5949183012939226680

`A379678(n+1)+char[32]`
-/

namespace A379668.P5949183012939226680
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  32

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379678 (n + 1) + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A379668.P5949183012939226680

/-! ## A379668.P5586612529471712095

`A036036(n+1)*A379678(n+1)`
-/

namespace A379668.P5586612529471712095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036036 (n + 1) * A379678 (n + 1)

end

end A379668.P5586612529471712095

/-! ## A379668.P10486211142586236444

`A043284(n+1)*A379678(n+1)`
-/

namespace A379668.P10486211142586236444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043284 (n + 1) * A379678 (n + 1)

end

end A379668.P10486211142586236444

/-! ## A379668.P4524131911351445376

`A371809(n+1)*A379678(n+1)`
-/

namespace A379668.P4524131911351445376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371809 (n + 1) * A379678 (n + 1)

end

end A379668.P4524131911351445376

/-! ## A379668.P13920372527641334272

`A305936(n+2)*A379678(n+1)`
-/

namespace A379668.P13920372527641334272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305936 (n + 2) * A379678 (n + 1)

end

end A379668.P13920372527641334272

/-! ## A379668.P10016312319376799878

`A375667(comp[∑[n]])*A379678(n+1)`
-/

namespace A379668.P10016312319376799878
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375667 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) * A379678 (n + 1)

end

end A379668.P10016312319376799878

/-! ## A379668.P3037581968439115878

`abs(A191898(n+2)*A379678(n+1))`
-/

namespace A379668.P3037581968439115878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A191898 (n + 2) * A379678 (n + 1)|

end

end A379668.P3037581968439115878

/-! ## A379668.P7363090137776232214

`sqrt(A057557(n+1)*A379678(n+1))`
-/

namespace A379668.P7363090137776232214
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A057557 (n + 1) * A379678 (n + 1) : ℝ)

end

end A379668.P7363090137776232214

/-! ## A379668.P5145814236123028087

`A279061(2*(n+1))*A379678(n+1)`
-/

namespace A379668.P5145814236123028087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279061 (2 * (n + 1)) * A379678 (n + 1)

end

end A379668.P5145814236123028087

/-!
# A379669: Number of finite multisets of positive integers > 1 with sum + product = n.

The programs for A379669, there is no canonical definition to state claims against.
-/

/-! ## A379669.P3333614120570771172

`A060398(A129339(n+1)+A068101(n+1))`
-/

namespace A379669.P3333614120570771172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060398 (A129339 (n + 1) + A068101 (n + 1)).toNat

end

end A379669.P3333614120570771172

/-! ## A379669.P16428266792793039848

`A179335(n+1)%A341608(A102178(n+1))`
-/

namespace A379669.P16428266792793039848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A179335 (n + 1)) (A341608 (A102178 (n + 1)).toNat)

end

end A379669.P16428266792793039848

/-! ## A379669.P4498865721494156753

`A348040(or(A029173(2*n), A219041(n+1)))`
-/

namespace A379669.P4498865721494156753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348040 (Int.lor (A029173 (2 * n)) (A219041 (n + 1))).toNat

end

end A379669.P4498865721494156753

/-! ## A379669.P8993472207001299348

`A091950(A193048(n))`
-/

namespace A379669.P8993472207001299348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091950 (A193048 n).toNat

end

end A379669.P8993472207001299348

/-!
# A379670: Numbers that are not the sum + product of any multiset of positive integers > 1. Zeros of A379669.

The programs for A379670, there is no canonical definition to state claims against.
-/

/-! ## A379670.P15979367084882181779

`filter[A387741(n+1), A266719(#)]`
-/

namespace A379670.P15979367084882181779
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387741 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A266719 (f1 j).toNat = 1) n)

end

end A379670.P15979367084882181779

/-! ## A379670.P1133572529898002969

`filter[A387741(n+1), A296066(#)]`
-/

namespace A379670.P1133572529898002969
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387741 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A296066 (f1 j).toNat = 1) n)

end

end A379670.P1133572529898002969

/-! ## A379670.P2048227463743302696

`∩[A379680(n+1), A387741(n+1)]`
-/

namespace A379670.P2048227463743302696
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379680 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387741 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A379670.P2048227463743302696

/-! ## A379670.P3642025018318760392

`lt[n*A379669(n), n]`
-/

namespace A379670.P3642025018318760392
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A379669 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A379670.P3642025018318760392

/-! ## A379670.P6525662140367121487

`eq[0, A379669(n+1)]+1`
-/

namespace A379670.P6525662140367121487
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379669 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A379670.P6525662140367121487

/-!
# A379671: Array read by antidiagonals downward where A(n,k) is the number of finite sets of positive integers with sum n and product k.

The programs for A379671, there is no canonical definition to state claims against.
-/

/-! ## A379671.P8696533188426809273

`A071040(A045542(2*n+5))*A266298(2*n)`
-/

namespace A379671.P8696533188426809273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071040 (A045542 (2 * n + 5)).toNat * A266298 (2 * n)

end

end A379671.P8696533188426809273

/-! ## A379671.P15850360119812905582

`and(char[ceil(n²/2)], A331785(n+1))`
-/

namespace A379671.P15850360119812905582
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n ^ 2 : ℚ) / 2⌉

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) (A331785 (n + 1))

end

end A379671.P15850360119812905582

/-! ## A379671.P4016948913619095146

`A010054(lt[A060953(n+2), A191397(n)])`
-/

namespace A379671.P4016948913619095146
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060953 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191397 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A379671.P4016948913619095146

/-! ## A379671.P14427973310058628932

`and(1, A326723(A210951(n+1)))`
-/

namespace A379671.P14427973310058628932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A326723 (A210951 (n + 1)).toNat)

end

end A379671.P14427973310058628932

/-! ## A379671.P2665967322408700936

`A010054(comp[A004016(n²)])`
-/

namespace A379671.P2665967322408700936
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004016 (n ^ 2)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A379671.P2665967322408700936

/-! ## A379671.P3516055697706797947

`A010054(lt[1, A368340(n+2)])`
-/

namespace A379671.P3516055697706797947
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368340 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A379671.P3516055697706797947

/-!
# A379672: Number of finite sets of positive integers with sum + product = n.

The programs for A379672, there is no canonical definition to state claims against.
-/

/-! ## A379672.P11056816448638027440

`A001221(A025253(n+1)+1)`
-/

namespace A379672.P11056816448638027440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A025253 (n + 1) + 1).toNat

end

end A379672.P11056816448638027440

/-! ## A379672.P7844410633234490350

`A124760(A033485(n+1)*A283165(3*n+2))`
-/

namespace A379672.P7844410633234490350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124760 (A033485 (n + 1) * A283165 (3 * n + 2)).toNat

end

end A379672.P7844410633234490350

/-!
# A379673: Records in A378865.

The programs for A379673, there is no canonical definition to state claims against.
-/

/-! ## A379673.P1947510937822083036

`record[A378865(n+1)]`
-/

namespace A379673.P1947510937822083036
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378865 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A379673.P1947510937822083036

/-! ## A379673.P9340436745421366418

`record[A074157(n+1)/(n+1)]`
-/

namespace A379673.P9340436745421366418
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A074157 (n + 1) : ℚ) / (n + 1 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A379673.P9340436745421366418

/-! ## A379673.P10770119585531662748

`A378865(A385290(n+1))`
-/

namespace A379673.P10770119585531662748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378865 (A385290 (n + 1)).toNat

end

end A379673.P10770119585531662748

/-!
# A379674: Expansion of e.g.f. -log( 1 - log(1 - x)^4 / 24 ).

The programs for A379674, there is no canonical definition to state claims against.
-/

/-! ## A379674.P6491169747529946741

`A347003(n)%A324373(2*n)`
-/

namespace A379674.P6491169747529946741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A347003 n) (A324373 (2 * n))

end

end A379674.P6491169747529946741

/-! ## A379674.P12628149723039780343

`A304495(A000108(n))*A347003(n)`
-/

namespace A379674.P12628149723039780343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304495 (A000108 n).toNat * A347003 n

end

end A379674.P12628149723039780343

/-! ## A379674.P6899950193179115396

`A347003(n)%A001597(A192091(n))`
-/

namespace A379674.P6899950193179115396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A347003 n) (A001597 (A192091 n).toNat)

end

end A379674.P6899950193179115396

/-! ## A379674.P1759043607388462900

`A347003(n)+A010815(A006324(n+1))`
-/

namespace A379674.P1759043607388462900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347003 n + A010815 (A006324 (n + 1)).toNat

end

end A379674.P1759043607388462900

/-! ## A379674.P9224517891842001241

`A347003(n)+A010815(A058884(2*(n+2)))`
-/

namespace A379674.P9224517891842001241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347003 n + A010815 (A058884 (2 * (n + 2))).toNat

end

end A379674.P9224517891842001241

/-!
# A379676: For n >= 0, a(n) is the least k >= 2 such that (n + 1)*(2*k + n) / 2 is a triangular number (A000217).

The programs for A379676, there is no canonical definition to state claims against.
-/

/-! ## A379676.P12009534583847838157

`A081469(n+1)+1`
-/

namespace A379676.P12009534583847838157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081469 (n + 1) + 1

end

end A379676.P12009534583847838157

/-! ## A379676.P16074092779489614180

`A081468(n+1)/(n+1)+1`
-/

namespace A379676.P16074092779489614180
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A081468 (n + 1) : ℚ) / (n + 1 : ℚ) + 1

end

end A379676.P16074092779489614180

/-! ## A379676.P6400277278919410994

`A321366(n+1)+A061782(n+1)`
-/

namespace A379676.P6400277278919410994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321366 (n + 1) + A061782 (n + 1)

end

end A379676.P6400277278919410994

/-! ## A379676.P18166418535362188528

`A011772(n+1)+A061782(n+1)+1`
-/

namespace A379676.P18166418535362188528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011772 (n + 1) + (A061782 (n + 1) + 1)

end

end A379676.P18166418535362188528

/-! ## A379676.P17346682711337446936

`A020725(A081469(n+1))`
-/

namespace A379676.P17346682711337446936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A081469 (n + 1)).toNat

end

end A379676.P17346682711337446936

/-!
# A379677: Numbers k for which 10k+1, 10k+3, 10k+7, 10k+9, 10k+31, 10k+33, 10k+37, and 10k+39 are primes.

The programs for A379677, there is no canonical definition to state claims against.
-/

/-! ## A379677.P3927930678313994814

`(A059925(n+1)-1)/10`
-/

namespace A379677.P3927930678313994814
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A059925 (n + 1) - 1 : ℚ) / 10

end

end A379677.P3927930678313994814

/-! ## A379677.P6633421689773765171

`floor(A059925(n+1)/10)`
-/

namespace A379677.P6633421689773765171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A059925 (n + 1) : ℚ) / 10⌋

end

end A379677.P6633421689773765171

/-!
# A379678: Array read by antidiagonals downward where A(n,k) is the number of finite sets of positive integers > 1 with sum n and product k.

The programs for A379678, there is no canonical definition to state claims against.
-/

/-! ## A379678.P8608568461534047828

`floor(sqrt(A379668(n+1)))`
-/

namespace A379678.P8608568461534047828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A379668 (n + 1))

end

end A379678.P8608568461534047828

/-! ## A379678.P2531490787149907339

`char[lcm(n, A063664(n+1))]`
-/

namespace A379678.P2531490787149907339
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n : ℤ) (A063664 (n + 1))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A379678.P2531490787149907339

/-! ## A379678.P16348001892682984662

`xor(char[2*n²], char[A048541(n+1)])`
-/

namespace A379678.P16348001892682984662
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048541 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor (if ∃ j, f1 j = n then 1 else 0) (if ∃ j, f2 j = (n : ℤ) then 1 else 0)

end

end A379678.P16348001892682984662

/-! ## A379678.P1285323778310984238

`char[ceil(3*n/2)*A226295(n+1)]`
-/

namespace A379678.P1285323778310984238
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈3 * ((n : ℚ) / 2)⌉ * A226295 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A379678.P1285323778310984238

/-! ## A379678.P689740555990053744

`xor(char[A038154(2*(n+1))], char[2*n²])`
-/

namespace A379678.P689740555990053744
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038154 (2 * (n + 1))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor (if ∃ j, f1 j = (n : ℤ) then 1 else 0) (if ∃ j, f2 j = n then 1 else 0)

end

end A379678.P689740555990053744

/-! ## A379678.P11313515805875270769

`char[A103328(n)*A206735(n)]`
-/

namespace A379678.P11313515805875270769
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103328 n * A206735 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A379678.P11313515805875270769

/-! ## A379678.P12127398066409199027

`A000007(a(A379668(n+1)))` with `a(0)=1`
-/

namespace A379678.P12127398066409199027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000007 (a (A379668 (n + 1)).toNat).toNat

end

end A379678.P12127398066409199027

/-! ## A379678.P8401031337686332154

`A000166(a(A379668(n+1)))` with `a(0)=1`
-/

namespace A379678.P8401031337686332154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000166 (a (A379668 (n + 1)).toNat).toNat

end

end A379678.P8401031337686332154

/-! ## A379678.P8588388015174066143

`A000607(a(A379668(n+1)))` with `a(0)=1`
-/

namespace A379678.P8588388015174066143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000607 (a (A379668 (n + 1)).toNat).toNat

end

end A379678.P8588388015174066143

/-! ## A379678.P9815403957487820184

`A000986(a(A379668(n+1)))` with `a(0)=1`
-/

namespace A379678.P9815403957487820184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000986 (a (A379668 (n + 1)).toNat).toNat

end

end A379678.P9815403957487820184

/-!
# A379679: Number of finite sets of positive integers > 1 with sum + product = n.

The programs for A379679, there is no canonical definition to state claims against.
-/

/-! ## A379679.P5914175871598856693

`A379672(n+1)-a(n-1)` with `a(0)=1`
-/

namespace A379679.P5914175871598856693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A379672 (n + 1) - a (n - 1)

end

end A379679.P5914175871598856693

/-! ## A379679.P9467295823143658872

`A084114(2*(n+2))+A010815(A072478(n))`
-/

namespace A379679.P9467295823143658872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084114 (2 * (n + 2)) + A010815 (A072478 n).toNat

end

end A379679.P9467295823143658872

/-! ## A379679.P8047725702150019076

`A322452(lt[1, A157392(n+2)])`
-/

namespace A379679.P8047725702150019076
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157392 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322452 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A379679.P8047725702150019076

/-! ## A379679.P10457033181774490532

`A060952(or(A011971(n), A175451(n+3)))`
-/

namespace A379679.P10457033181774490532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060952 (Int.lor (A011971 n) (A175451 (n + 3))).toNat

end

end A379679.P10457033181774490532

/-! ## A379679.P10953810006498087763

`A333381(A054849(n+5)%A167379(n+1))`
-/

namespace A379679.P10953810006498087763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333381 (Int.tmod (A054849 (n + 5)) (A167379 (n + 1))).toNat

end

end A379679.P10953810006498087763

/-!
# A379680: Numbers that are not the sum + product of any set of positive integers > 1. Zeros of A379679.

The programs for A379680, there is no canonical definition to state claims against.
-/

/-! ## A379680.P10839198415687374620

`eq[0, A379679(n+1)]+1`
-/

namespace A379680.P10839198415687374620
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379679 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A379680.P10839198415687374620

/-! ## A379680.P10091270430392487647

`lt[A379679(A028310(n)), 1]`
-/

namespace A379680.P10091270430392487647
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379679 (A028310 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A379680.P10091270430392487647

/-! ## A379680.P12930953068778122975

`A199343(lt[A379679(n+1), 1])`
-/

namespace A379680.P12930953068778122975
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379679 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199343 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A379680.P12930953068778122975

/-! ## A379680.P1838398630956697034

`eq[A349378(n+1), A379669(n)]`
-/

namespace A379680.P1838398630956697034
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349378 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379669 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A379680.P1838398630956697034

/-! ## A379680.P10481483652305610110

`eq[A353419(n+1), A379669(n)]`
-/

namespace A379680.P10481483652305610110
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353419 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379669 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A379680.P10481483652305610110

/-!
# A379681: Sum plus product of the multiset of prime indices of n.

The programs for A379681, the canonical program `A379681.P11517682224062848711` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A379681 has offset 1).

The definition of A379681 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003963, A056239, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A379681.P11517682224062848711

`A056239(n+1)+A003963(n+1)`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A379681

/-- `A056239(n+1)+A003963(n+1)` -/
def P11517682224062848711.Spec : Prop :=
  ∀ n, P11517682224062848711.a n = A379681 (n + 1)

theorem P11517682224062848711.correct : P11517682224062848711.Spec := by
  intro n
  simp only [A379681, Nat.add_sub_cancel]

end A379681

/-! ## A379681.P5493986196095658912

`A380409(n+1)-A331415(n+1)`
-/

namespace A379681.P5493986196095658912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380409 (n + 1) - A331415 (n + 1)

end

end A379681.P5493986196095658912

namespace A379681

/-- `A380409(n+1)-A331415(n+1)` -/
def P5493986196095658912.Spec : Prop :=
  ∀ n, P5493986196095658912.a n = A379681 (n + 1)

theorem P5493986196095658912.correct : P5493986196095658912.Spec := by
  intro n
  simp only [A379681, Nat.add_sub_cancel, A379681.P5493986196095658912.a, A379681.P11517682224062848711.a, A003963, A003963.P6853423646423809573.a, A056239, A056239.P11316688788989965672.a, A331415, A331415.P4846081659728035053.a, A380409, A380409.P2904522340196299969.a, A001414, A001414.P8293929508439252105.f1, A001414.P8293929508439252105.a, A156552, A156552.P4268073137713085227.a, A161511, A161511.P16266007976091900386.a, A243499, A243499.P13821279400790425584.a, A005941, A005941.P9595689460679922607.f1, A005941.P9595689460679922607.a, A023416, A023416.P8124303482289229133.a, A048896, A048896.P6461019053085857547.a, A053645, A053645.P13234994043849603743.a, A000120, A000120.P2816527436160941581.a, A048881, A048881.P16567064232951496228.a, A070939, A070939.P14677302147902843740.a, A364557, A364557.P16113127302810243144.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A379681

/-! ## A379681.P6579214329158145559

`A325036(n+1)+2*A056239(n+1)`
-/

namespace A379681.P6579214329158145559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325036 (n + 1) + 2 * A056239 (n + 1)

end

end A379681.P6579214329158145559

namespace A379681

/-- `A325036(n+1)+2*A056239(n+1)` -/
def P6579214329158145559.Spec : Prop :=
  ∀ n, P6579214329158145559.a n = A379681 (n + 1)

theorem P6579214329158145559.correct : P6579214329158145559.Spec := by
  intro n
  simp only [A379681, Nat.add_sub_cancel, A379681.P6579214329158145559.a, A379681.P11517682224062848711.a, A003963, A003963.P6853423646423809573.a, A056239, A056239.P11316688788989965672.a, A325036, A325036.P14148753285896189603.a, A156552, A156552.P4268073137713085227.a, A161511, A161511.P16266007976091900386.a, A243499, A243499.P13821279400790425584.a, A005941, A005941.P9595689460679922607.f1, A005941.P9595689460679922607.a, A023416, A023416.P8124303482289229133.a, A048896, A048896.P6461019053085857547.a, A053645, A053645.P13234994043849603743.a, A000120, A000120.P2816527436160941581.a, A048881, A048881.P16567064232951496228.a, A070939, A070939.P14677302147902843740.a, A364557, A364557.P16113127302810243144.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A379681

/-! ## A379681.P10279845079649814614

`2*A003963(n+1)-A325036(n+1)`
-/

namespace A379681.P10279845079649814614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A003963 (n + 1) - A325036 (n + 1)

end

end A379681.P10279845079649814614

namespace A379681

/-- `2*A003963(n+1)-A325036(n+1)` -/
def P10279845079649814614.Spec : Prop :=
  ∀ n, P10279845079649814614.a n = A379681 (n + 1)

theorem P10279845079649814614.correct : P10279845079649814614.Spec := by
  intro n
  simp only [A379681, Nat.add_sub_cancel, A379681.P10279845079649814614.a, A379681.P11517682224062848711.a, A003963, A003963.P6853423646423809573.a, A056239, A056239.P11316688788989965672.a, A325036, A325036.P14148753285896189603.a, A156552, A156552.P4268073137713085227.a, A161511, A161511.P16266007976091900386.a, A243499, A243499.P13821279400790425584.a, A005941, A005941.P9595689460679922607.f1, A005941.P9595689460679922607.a, A023416, A023416.P8124303482289229133.a, A048896, A048896.P6461019053085857547.a, A053645, A053645.P13234994043849603743.a, A000120, A000120.P2816527436160941581.a, A048881, A048881.P16567064232951496228.a, A070939, A070939.P14677302147902843740.a, A364557, A364557.P16113127302810243144.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A379681

/-! ## A379681.P6879307572291807348

`A064553(A064989(n+1))+A056239(n+1)`
-/

namespace A379681.P6879307572291807348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064553 (A064989 (n + 1)).toNat + A056239 (n + 1)

end

end A379681.P6879307572291807348

namespace A379681

/-- `A064553(A064989(n+1))+A056239(n+1)` -/
def P6879307572291807348.Spec : Prop :=
  ∀ n, P6879307572291807348.a n = A379681 (n + 1)

end A379681

/-! ## A379681.P13813135074052803762

`A304739(A064664(n+1))+A003963(n+1)`
-/

namespace A379681.P13813135074052803762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304739 (A064664 (n + 1)).toNat + A003963 (n + 1)

end

end A379681.P13813135074052803762

namespace A379681

/-- `A304739(A064664(n+1))+A003963(n+1)` -/
def P13813135074052803762.Spec : Prop :=
  ∀ n, P13813135074052803762.a n = A379681 (n + 1)

end A379681

/-! ## A379681.P4570406776999094814

`A001222(n+1)+A318995(n+1)+A003963(n+1)`
-/

namespace A379681.P4570406776999094814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1) + (A318995 (n + 1) + A003963 (n + 1))

end

end A379681.P4570406776999094814

namespace A379681

/-- `A001222(n+1)+A318995(n+1)+A003963(n+1)` -/
def P4570406776999094814.Spec : Prop :=
  ∀ n, P4570406776999094814.a n = A379681 (n + 1)

end A379681

/-! ## A379681.P1636560665503164812

`A000523(n+1)+A339823(n+1)+A003963(n+1)`
-/

namespace A379681.P1636560665503164812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000523 (n + 1) + (A339823 (n + 1) + A003963 (n + 1))

end

end A379681.P1636560665503164812

namespace A379681

/-- `A000523(n+1)+A339823(n+1)+A003963(n+1)` -/
def P1636560665503164812.Spec : Prop :=
  ∀ n, P1636560665503164812.a n = A379681 (n + 1)

theorem P1636560665503164812.correct : P1636560665503164812.Spec := by
  intro n
  simp only [A379681, Nat.add_sub_cancel, A379681.P1636560665503164812.a, A379681.P11517682224062848711.a, A000523, A000523.P3314682526375882520.a, A003963, A003963.P6853423646423809573.a, A056239, A056239.P11316688788989965672.a, A339823, A339823.P7188446837761765173.a, A156552, A156552.P4268073137713085227.a, A161511, A161511.P16266007976091900386.a, A243499, A243499.P13821279400790425584.a, A005941, A005941.P9595689460679922607.f1, A005941.P9595689460679922607.a, A023416, A023416.P8124303482289229133.a, A048896, A048896.P6461019053085857547.a, A053645, A053645.P13234994043849603743.a, A000120, A000120.P2816527436160941581.a, A048881, A048881.P16567064232951496228.a, A070939, A070939.P14677302147902843740.a, A364557, A364557.P16113127302810243144.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A379681

/-! ## A379681.P9406016654992952275

`A003963(n+1)+A339896(n+1)+A339894(n+1)`
-/

namespace A379681.P9406016654992952275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (n + 1) + (A339896 (n + 1) + A339894 (n + 1))

end

end A379681.P9406016654992952275

namespace A379681

/-- `A003963(n+1)+A339896(n+1)+A339894(n+1)` -/
def P9406016654992952275.Spec : Prop :=
  ∀ n, P9406016654992952275.a n = A379681 (n + 1)

theorem P9406016654992952275.correct : P9406016654992952275.Spec := by
  intro n
  simp only [A379681, Nat.add_sub_cancel, A379681.P9406016654992952275.a, A379681.P11517682224062848711.a, A003963, A003963.P6853423646423809573.a, A056239, A056239.P11316688788989965672.a, A339894, A339894.P9202660857362270704.a, A339896, A339896.P16852048549527834821.a, A000523, A000523.P3314682526375882520.a, A122111, A122111.P18124015185857335041.a, A156552, A156552.P4268073137713085227.a, A161511, A161511.P16266007976091900386.a, A243499, A243499.P13821279400790425584.a, A005941, A005941.P9595689460679922607.f1, A005941.P9595689460679922607.a, A023416, A023416.P8124303482289229133.a, A048896, A048896.P6461019053085857547.a, A053645, A053645.P13234994043849603743.a, A064989, A064989.P13349672914146769936.a, A105560, A105560.P7897608420550643844.f1, A105560.P7897608420550643844.a, A000120, A000120.P2816527436160941581.a, A008578, A008578.P3639467937083264764.a, A048881, A048881.P16567064232951496228.a, A052126, A052126.P1944428405920482243.a, A061395, A061395.P8431317036300486107.a, A070939, A070939.P14677302147902843740.a, A364557, A364557.P16113127302810243144.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A379681

/-! ## A379681.P14642931927852162892

`A003963(n+1)+A318994(n+1)-A001222(n+1)`
-/

namespace A379681.P14642931927852162892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (n + 1) + (A318994 (n + 1) - A001222 (n + 1))

end

end A379681.P14642931927852162892

namespace A379681

/-- `A003963(n+1)+A318994(n+1)-A001222(n+1)` -/
def P14642931927852162892.Spec : Prop :=
  ∀ n, P14642931927852162892.a n = A379681 (n + 1)

end A379681

/-! ## A379681.P7489449865234255819

`A000005(n+1)+A003963(n+1)-A325794(n+1)`
-/

namespace A379681.P7489449865234255819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) + (A003963 (n + 1) - A325794 (n + 1))

end

end A379681.P7489449865234255819

namespace A379681

/-- `A000005(n+1)+A003963(n+1)-A325794(n+1)` -/
def P7489449865234255819.Spec : Prop :=
  ∀ n, P7489449865234255819.a n = A379681 (n + 1)

theorem P7489449865234255819.correct : P7489449865234255819.Spec := by
  intro n
  simp only [A379681, Nat.add_sub_cancel, A379681.P7489449865234255819.a, A379681.P11517682224062848711.a, A000005, A000005.P16091521709108585461.a, A003963, A003963.P6853423646423809573.a, A056239, A056239.P11316688788989965672.a, A325794, A325794.P1593222624152160603.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, A156552, A156552.P4268073137713085227.a, A161511, A161511.P16266007976091900386.a, A243499, A243499.P13821279400790425584.a, A005941, A005941.P9595689460679922607.f1, A005941.P9595689460679922607.a, A023416, A023416.P8124303482289229133.a, A048896, A048896.P6461019053085857547.a, A053645, A053645.P13234994043849603743.a, A000120, A000120.P2816527436160941581.a, A048881, A048881.P16567064232951496228.a, A070939, A070939.P14677302147902843740.a, A364557, A364557.P16113127302810243144.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A379681

/-! ## A379681.P17097740564790599487

`A380344(n+1)+A380345(n+1)-A075255(n+1)`
-/

namespace A379681.P17097740564790599487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380344 (n + 1) + (A380345 (n + 1) - A075255 (n + 1))

end

end A379681.P17097740564790599487

namespace A379681

/-- `A380344(n+1)+A380345(n+1)-A075255(n+1)` -/
def P17097740564790599487.Spec : Prop :=
  ∀ n, P17097740564790599487.a n = A379681 (n + 1)

theorem P17097740564790599487.correct : P17097740564790599487.Spec := by
  intro n
  simp only [A379681, Nat.add_sub_cancel, A379681.P17097740564790599487.a, A379681.P11517682224062848711.a, A003963, A003963.P6853423646423809573.a, A056239, A056239.P11316688788989965672.a, A075255, A075255.P12137973761347593222.a, A380344, A380344.P8003750175292629096.a, A380345, A380345.P3416860299638001481.a, A001414, A001414.P8293929508439252105.f1, A001414.P8293929508439252105.a, A156552, A156552.P4268073137713085227.a, A161511, A161511.P16266007976091900386.a, A243499, A243499.P13821279400790425584.a, A005941, A005941.P9595689460679922607.f1, A005941.P9595689460679922607.a, A023416, A023416.P8124303482289229133.a, A048896, A048896.P6461019053085857547.a, A053645, A053645.P13234994043849603743.a, A000120, A000120.P2816527436160941581.a, A048881, A048881.P16567064232951496228.a, A070939, A070939.P14677302147902843740.a, A364557, A364557.P16113127302810243144.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A379681

/-! ## A379681.P7112218156094970182

`A056239(n+1)+A156061(n+1)*A290106(n+1)`
-/

namespace A379681.P7112218156094970182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (n + 1) + A156061 (n + 1) * A290106 (n + 1)

end

end A379681.P7112218156094970182

namespace A379681

/-- `A056239(n+1)+A156061(n+1)*A290106(n+1)` -/
def P7112218156094970182.Spec : Prop :=
  ∀ n, P7112218156094970182.a n = A379681 (n + 1)

end A379681

/-! ## A379681.P4601103812245910731

`A056239(n+1)+A290103(n+1)*A290104(n+1)`
-/

namespace A379681.P4601103812245910731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (n + 1) + A290103 (n + 1) * A290104 (n + 1)

end

end A379681.P4601103812245910731

namespace A379681

/-- `A056239(n+1)+A290103(n+1)*A290104(n+1)` -/
def P4601103812245910731.Spec : Prop :=
  ∀ n, P4601103812245910731.a n = A379681 (n + 1)

end A379681

/-!
# A379683: a(n) is the least number k that has exactly n divisors <= sqrt(k) of the form 4*j+3.

The programs for A379683, there is no canonical definition to state claims against.
-/

/-! ## A379683.P5632461174612541880

`A154783(A068156(n))`
-/

namespace A379683.P5632461174612541880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154783 (A068156 n).toNat

end

end A379683.P5632461174612541880

/-!
# A379684: Expansion of e.g.f. (1/x) * Series_Reversion( x * exp(x) * (1 - x*exp(x)) ).

The programs for A379684, there is no canonical definition to state claims against.
-/

/-! ## A379684.P3485059560462643936

`A367220(∑[2^n-and(1, n)])`
-/

namespace A379684.P3485059560462643936
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - (Nat.land 1 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367220 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A379684.P3485059560462643936

/-!
# A379686: a(n) = (a(n-1)+1)*(a(n-2)+1)*(a(n-3)+1)*(a(n-4)+1)/a(n-5), with a(1)=1, a(2)=2, a(3)=6, a(4)=42, a(5)=1806.

The programs for A379686, there is no canonical definition to state claims against.
-/

/-! ## A379686.P4610775410095144111

`∏[A072713(n+5)/A072713(n+1)]`
-/

namespace A379686.P4610775410095144111
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A072713 (n + 5) : ℚ) / (A072713 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A379686.P4610775410095144111

/-! ## A379686.P11467351671891721582

`A002378(a(n-1))/A284600(n+1)` with `a(0)=1`
-/

namespace A379686.P11467351671891721582
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (A002378 (SequenceMachineLib.roundAway (a (n - 1))).toNat : ℚ) / (A284600 (n + 1) : ℚ)

end

end A379686.P11467351671891721582

/-!
# A379687: Expansion of e.g.f. (1/x) * Series_Reversion( x * exp(x) * (1 - 2*x*exp(x)) ).

The programs for A379687, there is no canonical definition to state claims against.
-/

/-! ## A379687.P2595508134778751431

`A000720(A070086(n+3)*A159603(2*n))`
-/

namespace A379687.P2595508134778751431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A070086 (n + 3) * A159603 (2 * n)).toNat

end

end A379687.P2595508134778751431

/-!
# A379689: Expansion of e.g.f. (1/x) * Series_Reversion( x * exp(x) * (1 - x*exp(2*x)) ).

The programs for A379689, there is no canonical definition to state claims against.
-/

/-! ## A379689.P9070830959724383414

`A351005(A051624(n))-∑{e}[n+1, #]`
-/

namespace A379689.P9070830959724383414
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351005 (A051624 n).toNat - ((∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p : ℕ) : ℤ)

end

end A379689.P9070830959724383414

/-!
# A379690: Expansion of e.g.f. (1/x) * Series_Reversion( x * (1 - x*exp(2*x)) ).

The programs for A379690, there is no canonical definition to state claims against.
-/

/-! ## A379690.P11357261094946169878

`A214688(n+1)/(n+1)`
-/

namespace A379690.P11357261094946169878
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A214688 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A379690.P11357261094946169878

/-!
# A379692: a(1) = 1; a(n) is the most recently occurring value not among the last k terms where k is the number of times a(n-1) has occurred; if no such value exists, a(n) is the smallest unused positive integer.

The programs for A379692, there is no canonical definition to state claims against.
-/

/-! ## A379692.P8331213257733109156

`A358921(n+1)+A194702(A059786(n+1))`
-/

namespace A379692.P8331213257733109156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358921 (n + 1) + A194702 (A059786 (n + 1)).toNat

end

end A379692.P8331213257733109156

/-!
# A379695: Number of equivalence classes of regular vines in dimension n.

The programs for A379695, there is no canonical definition to state claims against.
-/

/-! ## A379695.P14928570696510626318

`A186333(A141025(n))`
-/

namespace A379695.P14928570696510626318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186333 (A141025 n).toNat

end

end A379695.P14928570696510626318

/-! ## A379695.P1604788921531585126

`A293472(A114582(n))`
-/

namespace A379695.P1604788921531585126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293472 (A114582 n).toNat

end

end A379695.P1604788921531585126

/-! ## A379695.P12676880049486856507

`A293472(A152090(n))`
-/

namespace A379695.P12676880049486856507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293472 (A152090 n).toNat

end

end A379695.P12676880049486856507

/-!
# A379696: Number of n-node combinatorial game trees in normal form.

The programs for A379696, there is no canonical definition to state claims against.
-/

/-! ## A379696.P13017380608078869021

`eq[A226290(n), A332886(n)]`
-/

namespace A379696.P13017380608078869021
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226290 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332886 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A379696.P13017380608078869021

/-! ## A379696.P2399474321636993109

`A001405(n)-A080843(A113979(2*n))`
-/

namespace A379696.P2399474321636993109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001405 n - A080843 (A113979 (2 * n)).toNat

end

end A379696.P2399474321636993109

/-!
# A379697: For n >= 3, a(n) is the least k >= 0 such that (k + 1)*(2*n + k) / 2 is a triangular number (A000217).

The programs for A379697, there is no canonical definition to state claims against.
-/

/-! ## A379697.P11979003408154158898

`A082184(n+2)-(n+3)`
-/

namespace A379697.P11979003408154158898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082184 (n + 2) - (n + 3 : ℤ)

end

end A379697.P11979003408154158898

/-! ## A379697.P6897426085740984148

`A332542(n+3)-A082183(n+2)`
-/

namespace A379697.P6897426085740984148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332542 (n + 3) - A082183 (n + 2)

end

end A379697.P6897426085740984148

/-! ## A379697.P588877758496560886

`A332552(n+2)+A082183(n+2)-(n+3)`
-/

namespace A379697.P588877758496560886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332552 (n + 2) + A082183 (n + 2) - (n + 3 : ℤ)

end

end A379697.P588877758496560886

/-! ## A379697.P18221840061469574680

`A332542(n+3)-A332544(n+3)/A332543(n+3)`
-/

namespace A379697.P18221840061469574680
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A332542 (n + 3) : ℚ) - (A332544 (n + 3) : ℚ) / (A332543 (n + 3) : ℚ)

end

end A379697.P18221840061469574680

/-! ## A379697.P965999451742582117

`A082183(n+2)-(A332553(n+2)+1)`
-/

namespace A379697.P965999451742582117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082183 (n + 2) - (A332553 (n + 2) + 1)

end

end A379697.P965999451742582117

/-!
# A379698: Exponent of highest power of 2 that divides the n-th practical number A005153(n).

The programs for A379698, there is no canonical definition to state claims against.
-/

/-! ## A379698.P7339921790718110945

`A007814(A005153(n+1))`
-/

namespace A379698.P7339921790718110945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A005153 (n + 1)).toNat

end

end A379698.P7339921790718110945

/-! ## A379698.P11506580342675926232

`val(∩[A377929(n+1), A004275(n)], 2)`
-/

namespace A379698.P11506580342675926232
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377929 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n) 2

end

end A379698.P11506580342675926232

/-! ## A379698.P17213399110771598182

`val(record[A327832(n+1)], 2)`
-/

namespace A379698.P17213399110771598182
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327832 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat 2

end

end A379698.P17213399110771598182

/-! ## A379698.P4577750619011274844

`A007814(record[A327832(n+1)])`
-/

namespace A379698.P4577750619011274844
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327832 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A379698.P4577750619011274844

/-! ## A379698.P3219444396463638165

`A067029(A005153(n+1)+char[1])`
-/

namespace A379698.P3219444396463638165
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067029 (A005153 (n + 1) + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)).toNat

end

end A379698.P3219444396463638165

/-! ## A379698.P14167351142693978193

`A057428(3*n+1)+A001511(A005153(n+1))`
-/

namespace A379698.P14167351142693978193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (3 * n + 1) + A001511 (A005153 (n + 1)).toNat

end

end A379698.P14167351142693978193

/-! ## A379698.P6355038553116213764

`A001511(A005153(n+1))-A057427(3*(n+1))`
-/

namespace A379698.P6355038553116213764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (A005153 (n + 1)).toNat - A057427 (3 * (n + 1))

end

end A379698.P6355038553116213764

/-! ## A379698.P2869650706990006621

`A001222(gcd(A000079(n), A005153(n+1)))`
-/

namespace A379698.P2869650706990006621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (Int.gcd (A000079 n) (A005153 (n + 1)))

end

end A379698.P2869650706990006621

/-! ## A379698.P573594138042607830

`A007814(A377377(n+1)*A378202(n+1))`
-/

namespace A379698.P573594138042607830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A377377 (n + 1) * A378202 (n + 1)).toNat

end

end A379698.P573594138042607830

