import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C004
import Seq.B000.C005
import Seq.B000.C006
import Seq.B000.C007
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
import Seq.B000.C022
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C027
import Seq.B000.C029
import Seq.B000.C036
import Seq.B000.C038
import Seq.B000.C039
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C004
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C009
import Seq.B001.C010
import Seq.B001.C011
import Seq.B001.C012
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C007
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B007.C000
import Seq.B008.C000
import Seq.B009.C000
import Seq.B010.C000
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

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A339300: Number of essentially parallel oriented series-parallel networks with n labeled elements and without multiple unit elements in parallel.

The programs for A339300, there is no canonical definition to state claims against.
-/

/-! ## A339300.P17277881908895797163

`A339301(n+1)-A339299(n+1)`
-/

namespace A339300.P17277881908895797163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339301 (n + 1) - A339299 (n + 1)

end

end A339300.P17277881908895797163

/-! ## A339300.P11047821194817875785

`A339297(∑[n+1])-A339299(n+1)`
-/

namespace A339300.P11047821194817875785
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339297 (∑ j ∈ Finset.range (n + 1), f1 j) - A339299 (n + 1)

end

end A339300.P11047821194817875785

/-! ## A339300.P9133187534484065378

`record[A339297(A115017(n+1))]-A339299(n+1)`
-/

namespace A339300.P9133187534484065378
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339297 (A115017 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A339299 (n + 1)

end

end A339300.P9133187534484065378

/-! ## A339300.P16635765269656949870

`record[A339297(A339333(n+1))]-A339299(n+1)`
-/

namespace A339300.P16635765269656949870
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339297 (A339333 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A339299 (n + 1)

end

end A339300.P16635765269656949870

/-!
# A339301: Number of oriented series-parallel networks with n labeled elements and without multiple unit elements in parallel.

The programs for A339301, there is no canonical definition to state claims against.
-/

/-! ## A339301.P13056542527437693426

`A339299(n+1)+A339300(n+1)`
-/

namespace A339301.P13056542527437693426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339299 (n + 1) + A339300 (n + 1)

end

end A339301.P13056542527437693426

/-! ## A339301.P7993224393810150171

`A339297(∑[n+1])`
-/

namespace A339301.P7993224393810150171
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339297 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A339301.P7993224393810150171

/-! ## A339301.P5286873309308239933

`record[A339297(abs(A145063(n)))]`
-/

namespace A339301.P5286873309308239933
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339297 |A145063 n|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A339301.P5286873309308239933

/-! ## A339301.P3333720311893146487

`record[A339297(∑[A057979(n)])]`
-/

namespace A339301.P3333720311893146487
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057979 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339297 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A339301.P3333720311893146487

/-! ## A339301.P13352150219656959410

`record[A339297(∑[A145677(n)])]`
-/

namespace A339301.P13352150219656959410
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145677 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339297 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A339301.P13352150219656959410

/-!
# A339302: Number of unlabeled rooted trees with n nodes rooted at two indistinguishable nodes at distance 3 from each other.

The programs for A339302, there is no canonical definition to state claims against.
-/

/-! ## A339302.P15005248531646117450

`A339303(∑[n+3]+7)`
-/

namespace A339302.P15005248531646117450
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339303 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A339302.P15005248531646117450

/-! ## A339302.P8335390993353464524

`record[A339303(n+13)/A038207(n+8)]`
-/

namespace A339302.P8335390993353464524
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A339303 (n + 13) : ℚ) / (A038207 (n + 8) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A339302.P8335390993353464524

/-! ## A339302.P4264606932115418181

`lcm(char[1]+1, A339303(A000096(n+2)+5))`
-/

namespace A339302.P4264606932115418181
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (((if ∃ j, f1 j = n then 1 else 0) + 1 : ℕ) : ℤ) (A339303 (A000096 (n + 2) + 5).toNat)

end

end A339302.P4264606932115418181

/-! ## A339302.P10704939501696827767

`or(A000007(n), A339303(A000096(n+2)+5))`
-/

namespace A339302.P10704939501696827767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A339303 (A000096 (n + 2) + 5).toNat)

end

end A339302.P10704939501696827767

/-! ## A339302.P4297839547304717266

`and(A153881(n+1), A339303(A052905(n)+9))`
-/

namespace A339302.P4297839547304717266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A153881 (n + 1)) (A339303 (A052905 n + 9).toNat)

end

end A339302.P4297839547304717266

/-!
# A339303: Triangle read by rows: T(n,k) is the number of unoriented linear forests with n nodes and k rooted trees.

The programs for A339303, there is no canonical definition to state claims against.
-/

/-! ## A339303.P14007565248579345344

`A033185(n+1)*A072911(A214631(n))`
-/

namespace A339303.P14007565248579345344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033185 (n + 1) * A072911 (A214631 n).toNat

end

end A339303.P14007565248579345344

/-! ## A339303.P17121812267208539798

`A072911(A214631(n))*A217781(n+1)`
-/

namespace A339303.P17121812267208539798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072911 (A214631 n).toNat * A217781 (n + 1)

end

end A339303.P17121812267208539798

/-!
# A339304: Irregular triangle read by rows T(n,k) in which row n has length the partition number A000041(n-1) and columns k give the number of divisors function A000005, 1 <= k <= n.

The programs for A339304, there is no canonical definition to state claims against.
-/

/-! ## A339304.P13473719702456726902

`A000005(A336811(n+1))`
-/

namespace A339304.P13473719702456726902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A336811 (n + 1)).toNat

end

end A339304.P13473719702456726902

/-! ## A339304.P9860515697386179976

`A051194(A359279(n+1))`
-/

namespace A339304.P9860515697386179976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051194 (A359279 (n + 1)).toNat

end

end A339304.P9860515697386179976

/-! ## A339304.P834048158716736582

`A046951(A336811(n+1)²)`
-/

namespace A339304.P834048158716736582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046951 (A336811 (n + 1) ^ 2).toNat

end

end A339304.P834048158716736582

/-! ## A339304.P14236930113051024824

`A183063(2*A336811(n+1))`
-/

namespace A339304.P14236930113051024824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183063 (2 * A336811 (n + 1)).toNat

end

end A339304.P14236930113051024824

/-! ## A339304.P632300952323472041

`A046951(A336811(n+1)*A336811(n+1))`
-/

namespace A339304.P632300952323472041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046951 (A336811 (n + 1) * A336811 (n + 1)).toNat

end

end A339304.P632300952323472041

/-! ## A339304.P4730780742015940703

`A290532(A340529(n+1))`
-/

namespace A339304.P4730780742015940703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290532 (A340529 (n + 1)).toNat

end

end A339304.P4730780742015940703

/-! ## A339304.P6020825980245235267

`A000005(floor(root(A340529(n+1), sqrt(2))))`
-/

namespace A339304.P6020825980245235267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 ⌊(A340529 (n + 1) : ℝ) ^ (1 / Real.sqrt (2 : ℝ))⌋.toNat

end

end A339304.P6020825980245235267

/-!
# A339308: Partial sums of products of proper divisors of n (A007956).

The programs for A339308, the canonical program `A339308.P326742767543931294` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A339308 has offset 1).

The definition of A339308 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5039 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A339308.P3860020355890151696

`∑[∏{d}[n+1, #]/(n+1)]`
-/

namespace A339308.P3860020355890151696
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ d ∈ Nat.divisors (f2 n), d : ℕ) : ℚ) / (n + 1 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A339308.P3860020355890151696

namespace A339308

/-- `∑[∏{d}[n+1, #]/(n+1)]` -/
def P3860020355890151696.Spec : Prop :=
  ∀ n, P3860020355890151696.a n = (A339308 (n + 1) : ℚ)

end A339308

/-! ## A339308.P11139369444293501793

`∑[exp(∑{d}[n+1, log(#)])/(n+1)]`
-/

namespace A339308.P11139369444293501793
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.exp (∑ d ∈ Nat.divisors (f2 n), Real.log (d : ℝ)) / (n + 1 : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A339308.P11139369444293501793

namespace A339308

/-- `∑[exp(∑{d}[n+1, log(#)])/(n+1)]` -/
def P11139369444293501793.Spec : Prop :=
  ∀ n, P11139369444293501793.a n = (A339308 (n + 1) : ℝ)

end A339308

/-! ## A339308.P11094319197686524629

`a(n-1)+∏{d}[n+1, #]/(n+1)` with `a(0)=1`
-/

namespace A339308.P11094319197686524629
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + ((∏ d ∈ Nat.divisors (f1 n), d : ℕ) : ℚ) / (n + 1 : ℚ)

end

end A339308.P11094319197686524629

namespace A339308

/-- `a(n-1)+∏{d}[n+1, #]/(n+1)` -/
def P11094319197686524629.Spec : Prop :=
  ∀ n, P11094319197686524629.a n = (A339308 (n + 1) : ℚ)

end A339308

/-! ## A339308.P326742767543931294

`∑[A007956(n+1)]`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A339308

/-- `∑[A007956(n+1)]` -/
def P326742767543931294.Spec : Prop :=
  ∀ n, P326742767543931294.a n = A339308 (n + 1)

theorem P326742767543931294.correct : P326742767543931294.Spec := by
  intro n
  simp only [A339308, Nat.add_sub_cancel]

end A339308

/-! ## A339308.P5021066146562023903

`∑[A007955(n+1)/(n+1)]`
-/

namespace A339308.P5021066146562023903
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007955 (n + 1) : ℚ) / (n + 1 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A339308.P5021066146562023903

namespace A339308

/-- `∑[A007955(n+1)/(n+1)]` -/
def P5021066146562023903.Spec : Prop :=
  ∀ n, P5021066146562023903.a n = (A339308 (n + 1) : ℚ)

end A339308

/-! ## A339308.P17268013598489282230

`∑[A338576(n+1)/(n+1)²]`
-/

namespace A339308.P17268013598489282230
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A338576 (n + 1) : ℚ) / ((n + 1) ^ 2 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A339308.P17268013598489282230

namespace A339308

/-- `∑[A338576(n+1)/(n+1)²]` -/
def P17268013598489282230.Spec : Prop :=
  ∀ n, P17268013598489282230.a n = (A339308 (n + 1) : ℚ)

end A339308

/-! ## A339308.P2877028696359859884

`∑[(n+1)^(A000005(n+1)/2-1)]`
-/

namespace A339308.P2877028696359859884
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℝ) ^ ((A000005 (n + 1) : ℚ) / 2 - 1 : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A339308.P2877028696359859884

namespace A339308

/-- `∑[(n+1)^(A000005(n+1)/2-1)]` -/
def P2877028696359859884.Spec : Prop :=
  ∀ n, P2877028696359859884.a n = (A339308 (n + 1) : ℝ)

end A339308

/-! ## A339308.P5976119383584142957

`∑[sqrt(A277169(n+1))]`
-/

namespace A339308.P5976119383584142957
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A277169 (n + 1) : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A339308.P5976119383584142957

namespace A339308

/-- `∑[sqrt(A277169(n+1))]` -/
def P5976119383584142957.Spec : Prop :=
  ∀ n, P5976119383584142957.a n = (A339308 (n + 1) : ℝ)

end A339308

/-! ## A339308.P12383779404237720461

`∑[sqrt((n+1)^(A000005(n+1)-2))]`
-/

namespace A339308.P12383779404237720461
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt ((n + 1 : ℚ) ^ (A000005 (n + 1) - 2 : ℤ) : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A339308.P12383779404237720461

namespace A339308

/-- `∑[sqrt((n+1)^(A000005(n+1)-2))]` -/
def P12383779404237720461.Spec : Prop :=
  ∀ n, P12383779404237720461.a n = (A339308 (n + 1) : ℝ)

end A339308

/-!
# A339309: Numbers k such that A228553(k) is twice a prime.

The programs for A339309, there is no canonical definition to state claims against.
-/

/-! ## A339309.P7194125179294422137

`eq[A033781(n), A161091(n+1)]`
-/

namespace A339309.P7194125179294422137
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033781 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161091 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A339309.P7194125179294422137

/-! ## A339309.P10409189055563198204

`A341508(A000649(n))+A224778(n+1)`
-/

namespace A339309.P10409189055563198204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341508 (A000649 n).toNat + A224778 (n + 1)

end

end A339309.P10409189055563198204

/-! ## A339309.P2512436518158974571

`eq[A265340(A132292(n+2)), A282011(n)]`
-/

namespace A339309.P2512436518158974571
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265340 (A132292 (n + 2)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282011 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A339309.P2512436518158974571

/-! ## A339309.P12837115779912376002

`eq[A342919(n+1), A342919(A135363(n+3))]`
-/

namespace A339309.P12837115779912376002
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342919 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342919 (A135363 (n + 3)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A339309.P12837115779912376002

/-!
# A339310: a(n) = a(n-1-a(n-1)) + a(n-a(n-2)) for n>2; starting with a(1) = a(2) = 1.

The programs for A339310, the canonical program `A339310.P5951681497068448567` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A339310 has offset 1).

The definition of A339310 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1-a(n-1))+a(n-a(n-2))` (program `A339310.P5951681497068448567`, by `A339310.P5951681497068448567.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A339310.P5951681497068448567

`a(n-1-a(n-1))+a(n-a(n-2))` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A339310

/-- `a(n-1-a(n-1))+a(n-a(n-2))` -/
def P5951681497068448567.Spec : Prop :=
  ∀ n, (P5951681497068448567.a n : ℤ) = A339310 (n + 1)

theorem P5951681497068448567.correct : P5951681497068448567.Spec := by
  intro n
  simp only [A339310, Nat.add_sub_cancel]

end A339310

/-!
# A339312: Sum over all partitions of n of the GCD of the number of parts and the number of distinct parts.

The programs for A339312, there is no canonical definition to state claims against.
-/

/-! ## A339312.P16359992520064768276

`A282664(A055932(n+1))%A000679(n+1)`
-/

namespace A339312.P16359992520064768276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A282664 (A055932 (n + 1)).toNat) (A000679 (n + 1))

end

end A339312.P16359992520064768276

/-! ## A339312.P10952392089451033359

`A216503(A291234(n))`
-/

namespace A339312.P10952392089451033359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216503 (A291234 n).toNat

end

end A339312.P10952392089451033359

/-! ## A339312.P6445380328094280640

`A001996(A206916(n²))`
-/

namespace A339312.P6445380328094280640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001996 (A206916 (n ^ 2)).toNat

end

end A339312.P6445380328094280640

/-! ## A339312.P916886165969697633

`A347696(A180071(n+1))`
-/

namespace A339312.P916886165969697633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347696 (A180071 (n + 1)).toNat

end

end A339312.P916886165969697633

/-!
# A339315: a(n) is the smallest number k such that k^2+1 divided by its largest prime factor is equal to F(2*n-1) for n > 0, or 0 if no such k exists, where F(n) is the Fibonacci sequence.

The programs for A339315, there is no canonical definition to state claims against.
-/

/-! ## A339315.P9499854761498786806

`A083662(A097592(2*n+1)*A101471(n+1))`
-/

namespace A339315.P9499854761498786806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083662 (A097592 (2 * n + 1) * A101471 (n + 1)).toNat

end

end A339315.P9499854761498786806

/-! ## A339315.P7385539278251635546

`record[A035517(∑[A263434(n+1)])]`
-/

namespace A339315.P7385539278251635546
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263434 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035517 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A339315.P7385539278251635546

/-! ## A339315.P4355632450028840148

`A087172(A280043(n+1)+A169630(n))`
-/

namespace A339315.P4355632450028840148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087172 (A280043 (n + 1) + A169630 n).toNat

end

end A339315.P4355632450028840148

/-!
# A339318: Dirichlet g.f.: Product_{k>=2} 1 / (1 - k^(-s))^3.

The programs for A339318, there is no canonical definition to state claims against.
-/

/-! ## A339318.P11232805042952762826

`∑{d}[n+1, A001055(#)*A301830((n+1)/#)]`
-/

namespace A339318.P11232805042952762826
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A001055 d * A301830 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A339318.P11232805042952762826

/-! ## A339318.P10053923387596062377

`∑{d}[n+1, A339321(#)*A339702((n+1)/#)]`
-/

namespace A339318.P10053923387596062377
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A339321 d * A339702 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A339318.P10053923387596062377

/-! ## A339318.P3419594268586295818

`∑{d}[n+1, A114592(#)*A339319((n+1)/#)]`
-/

namespace A339318.P3419594268586295818
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A114592 d * A339319 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A339318.P3419594268586295818

/-! ## A339318.P6406143685320246369

`∑{d}[n+1, A339320(#)*A339701((n+1)/#)]`
-/

namespace A339318.P6406143685320246369
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A339320 d * A339701 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A339318.P6406143685320246369

/-! ## A339318.P5266767477868276886

`∑{d}[n+1, A339323(#)*A339704((n+1)/#)]`
-/

namespace A339318.P5266767477868276886
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A339323 d * A339704 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A339318.P5266767477868276886

/-! ## A339318.P11910320723858297322

`∑{d}[n+1, A339324(#)*A339705((n+1)/#)]`
-/

namespace A339318.P11910320723858297322
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A339324 d * A339705 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A339318.P11910320723858297322

/-! ## A339318.P1333159408564445728

`∑{d}[n+1, A339322(#)*A339703((n+1)/#)]`
-/

namespace A339318.P1333159408564445728
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A339322 d * A339703 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A339318.P1333159408564445728

/-!
# A339319: Dirichlet g.f.: Product_{k>=2} 1 / (1 - k^(-s))^4.

The programs for A339319, there is no canonical definition to state claims against.
-/

/-! ## A339319.P5617353520551558654

`∑{d}[n+1, A001055(#)*A339318((n+1)/#)]`
-/

namespace A339319.P5617353520551558654
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A001055 d * A339318 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A339319.P5617353520551558654

/-! ## A339319.P12647525218295775027

`∑{d}[n+1, A301830(#)*A301830((n+1)/#)]`
-/

namespace A339319.P12647525218295775027
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A301830 d * A301830 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A339319.P12647525218295775027

/-! ## A339319.P10064599542481738267

`∑{d}[n+1, A339321(#)*A339701((n+1)/#)]`
-/

namespace A339319.P10064599542481738267
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A339321 d * A339701 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A339319.P10064599542481738267

/-! ## A339319.P6871149358415293431

`∑{d}[n+1, A114592(#)*A339320((n+1)/#)]`
-/

namespace A339319.P6871149358415293431
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A114592 d * A339320 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A339319.P6871149358415293431

/-! ## A339319.P13389607281672095489

`∑{d}[n+1, A339323(#)*A339703((n+1)/#)]`
-/

namespace A339319.P13389607281672095489
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A339323 d * A339703 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A339319.P13389607281672095489

/-! ## A339319.P10079031016219714696

`∑{d}[n+1, A339324(#)*A339704((n+1)/#)]`
-/

namespace A339319.P10079031016219714696
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A339324 d * A339704 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A339319.P10079031016219714696

/-! ## A339319.P1258612265697700433

`∑{d}[n+1, A339322(#)*A339702((n+1)/#)]`
-/

namespace A339319.P1258612265697700433
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A339322 d * A339702 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A339319.P1258612265697700433

/-!
# A339320: Dirichlet g.f.: Product_{k>=2} 1 / (1 - k^(-s))^5.

The programs for A339320, there is no canonical definition to state claims against.
-/

/-! ## A339320.P7361068409414357169

`∑{d}[n+1, A001055(#)*A339319((n+1)/#)]`
-/

namespace A339320.P7361068409414357169
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A001055 d * A339319 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A339320.P7361068409414357169

/-! ## A339320.P4409587512402656668

`∑{d}[n+1, A114592(#)*A339321((n+1)/#)]`
-/

namespace A339320.P4409587512402656668
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A114592 d * A339321 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A339320.P4409587512402656668

/-! ## A339320.P3677236981152338616

`∑{d}[n+1, A301830(#)*A339318((n+1)/#)]`
-/

namespace A339320.P3677236981152338616
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A301830 d * A339318 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A339320.P3677236981152338616

/-! ## A339320.P4834763639207632133

`∑{d}[n+1, A339323(#)*A339702((n+1)/#)]`
-/

namespace A339320.P4834763639207632133
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A339323 d * A339702 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A339320.P4834763639207632133

/-! ## A339320.P9729124758504351064

`∑{d}[n+1, A339324(#)*A339703((n+1)/#)]`
-/

namespace A339320.P9729124758504351064
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A339324 d * A339703 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A339320.P9729124758504351064

/-! ## A339320.P10681572052506245030

`∑{d}[n+1, A339322(#)*A339701((n+1)/#)]`
-/

namespace A339320.P10681572052506245030
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A339322 d * A339701 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A339320.P10681572052506245030

/-!
# A339321: Dirichlet g.f.: Product_{k>=2} 1 / (1 - k^(-s))^6.

The programs for A339321, there is no canonical definition to state claims against.
-/

/-! ## A339321.P1178011430269145756

`∑{d}[n+1, A339318(#)*A339318((n+1)/#)]`
-/

namespace A339321.P1178011430269145756
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A339318 d * A339318 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A339321.P1178011430269145756

/-! ## A339321.P1294831803257656670

`∑{d}[n+1, A301830(#)*A339319((n+1)/#)]`
-/

namespace A339321.P1294831803257656670
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A301830 d * A339319 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A339321.P1294831803257656670

/-! ## A339321.P3647050978274231455

`∑{d}[n+1, A001055(#)*A339320((n+1)/#)]`
-/

namespace A339321.P3647050978274231455
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A001055 d * A339320 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A339321.P3647050978274231455

/-! ## A339321.P3925440770912339056

`∑{d}[n+1, A339323(#)*A339701((n+1)/#)]`
-/

namespace A339321.P3925440770912339056
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A339323 d * A339701 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A339321.P3925440770912339056

/-! ## A339321.P15585627593436351070

`∑{d}[n+1, A339324(#)*A339702((n+1)/#)]`
-/

namespace A339321.P15585627593436351070
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A339324 d * A339702 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A339321.P15585627593436351070

/-! ## A339321.P5495720993552215916

`∑{d}[n+1, A114592(#)*A339322((n+1)/#)]`
-/

namespace A339321.P5495720993552215916
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A114592 d * A339322 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A339321.P5495720993552215916

/-!
# A339322: Dirichlet g.f.: Product_{k>=2} 1 / (1 - k^(-s))^7.

The programs for A339322, there is no canonical definition to state claims against.
-/

/-! ## A339322.P5016082272776413462

`∑{d}[n+1, A001055(#)*A339321((n+1)/#)]`
-/

namespace A339322.P5016082272776413462
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A001055 d * A339321 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A339322.P5016082272776413462

/-! ## A339322.P10925990737355862860

`∑{d}[n+1, A114592(#)*A339323((n+1)/#)]`
-/

namespace A339322.P10925990737355862860
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A114592 d * A339323 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A339322.P10925990737355862860

/-! ## A339322.P1932381116253776181

`∑{d}[n+1, A301830(#)*A339320((n+1)/#)]`
-/

namespace A339322.P1932381116253776181
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A301830 d * A339320 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A339322.P1932381116253776181

/-! ## A339322.P7784742567772253076

`∑{d}[n+1, A339318(#)*A339319((n+1)/#)]`
-/

namespace A339322.P7784742567772253076
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A339318 d * A339319 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A339322.P7784742567772253076

/-! ## A339322.P3931631641572791014

`∑{d}[n+1, A339324(#)*A339701((n+1)/#)]`
-/

namespace A339322.P3931631641572791014
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A339324 d * A339701 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A339322.P3931631641572791014

/-!
# A339323: Dirichlet g.f.: Product_{k>=2} 1 / (1 - k^(-s))^8.

The programs for A339323, there is no canonical definition to state claims against.
-/

/-! ## A339323.P1578434534005308590

`∑{d}[n+1, A301830(#)*A339321((n+1)/#)]`
-/

namespace A339323.P1578434534005308590
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A301830 d * A339321 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A339323.P1578434534005308590

/-! ## A339323.P16906293210467840499

`∑{d}[n+1, A339318(#)*A339320((n+1)/#)]`
-/

namespace A339323.P16906293210467840499
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A339318 d * A339320 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A339323.P16906293210467840499

/-! ## A339323.P7258540959129032831

`∑{d}[n+1, A339319(#)*A339319((n+1)/#)]`
-/

namespace A339323.P7258540959129032831
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A339319 d * A339319 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A339323.P7258540959129032831

/-! ## A339323.P5644405588920106763

`∑{d}[n+1, A114592(#)*A339324((n+1)/#)]`
-/

namespace A339323.P5644405588920106763
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A114592 d * A339324 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A339323.P5644405588920106763

/-! ## A339323.P5353738635486612427

`∑{d}[n+1, A001055(#)*A339322((n+1)/#)]`
-/

namespace A339323.P5353738635486612427
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A001055 d * A339322 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A339323.P5353738635486612427

/-!
# A339324: Dirichlet g.f.: Product_{k>=2} 1 / (1 - k^(-s))^9.

The programs for A339324, there is no canonical definition to state claims against.
-/

/-! ## A339324.P14972214809636744627

`∑{d}[n+1, A001055(#)*A339323((n+1)/#)]`
-/

namespace A339324.P14972214809636744627
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A001055 d * A339323 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A339324.P14972214809636744627

/-! ## A339324.P11494954084704343436

`∑{d}[n+1, A339318(#)*A339321((n+1)/#)]`
-/

namespace A339324.P11494954084704343436
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A339318 d * A339321 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A339324.P11494954084704343436

/-! ## A339324.P12397132160682583273

`∑{d}[n+1, A339319(#)*A339320((n+1)/#)]`
-/

namespace A339324.P12397132160682583273
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A339319 d * A339320 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A339324.P12397132160682583273

/-! ## A339324.P15722755183940663815

`∑{d}[n+1, A301830(#)*A339322((n+1)/#)]`
-/

namespace A339324.P15722755183940663815
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A301830 d * A339322 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A339324.P15722755183940663815

/-!
# A339326: Denominators of s in rational solutions of s^4 + s^3 + s^2 + s + 1 = y^2 with |s| <= 1.

The programs for A339326, there is no canonical definition to state claims against.
-/

/-! ## A339326.P2759912263552471613

`A008619(Δ[A184958(n+1)])`
-/

namespace A339326.P2759912263552471613
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184958 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (f1 (n + 1) - f1 n).toNat

end

end A339326.P2759912263552471613

/-! ## A339326.P3259388358321392431

`A208910(n+1)*A330066(A118396(n))`
-/

namespace A339326.P3259388358321392431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208910 (n + 1) * A330066 (A118396 n).toNat

end

end A339326.P3259388358321392431

/-!
# A339327: a(n) = (A001414(prime(n)-1)*A001414(prime(n)+1)) mod prime(n).

The programs for A339327, the canonical program `A339327.P8939732044467315109` is in `Seq.B001.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A339327 has offset 1).

The definition of A339327 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(A001414(A000040(n+1)-1)*A001414(A000040(n+1)+1))%A000040(n+1)` (program `A339327.P8939732044467315109`, by `A339327.P8939732044467315109.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A339327.P8939732044467315109

`(A001414(A000040(n+1)-1)*A001414(A000040(n+1)+1))%A000040(n+1)`

The canonical program, it is in `Seq.B001.C012`.
-/

namespace A339327

/-- `(A001414(A000040(n+1)-1)*A001414(A000040(n+1)+1))%A000040(n+1)` -/
def P8939732044467315109.Spec : Prop :=
  ∀ n, P8939732044467315109.a n = A339327 (n + 1)

theorem P8939732044467315109.correct : P8939732044467315109.Spec := by
  intro n
  simp only [A339327, Nat.add_sub_cancel]

end A339327

/-!
# A339330: Sums of antidiagonals in A283681.

The programs for A339330, the canonical program `A339330.P9380063307165119255` is in `Seq.B002.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A339330 has offset 1).

The definition of A339330 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A339330.P9380063307165119255

`∑[∑[A283681(n+1)]]`

The canonical program, it is in `Seq.B002.C007`.
-/

namespace A339330

/-- `∑[∑[A283681(n+1)]]` -/
def P9380063307165119255.Spec : Prop :=
  ∀ n, P9380063307165119255.a n = A339330 (n + 1)

theorem P9380063307165119255.correct : P9380063307165119255.Spec := by
  intro n
  simp only [A339330, Nat.add_sub_cancel]

end A339330

/-! ## A339330.P6933542602554105427

`∑[∑[a(A025581(n))*A002260(n+1)]]` with `a(0)=1, a(1)=2`
-/

namespace A339330.P6933542602554105427
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n f2 =>
  f2 (A025581 n).toNat * A002260 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A339330.P6933542602554105427

namespace A339330

/-- `∑[∑[a(A025581(n))*A002260(n+1)]]` -/
def P6933542602554105427.Spec : Prop :=
  ∀ n, P6933542602554105427.a n = A339330 (n + 1)

end A339330

/-! ## A339330.P11925572663734428479

`∑[∑[A108920(A223669(n+1))]]`
-/

namespace A339330.P11925572663734428479
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108920 (A223669 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A339330.P11925572663734428479

namespace A339330

/-- `∑[∑[A108920(A223669(n+1))]]` -/
def P11925572663734428479.Spec : Prop :=
  ∀ n, P11925572663734428479.a n = A339330 (n + 1)

end A339330

/-! ## A339330.P821168748634393778

`∑[∑[A108920(A223680(n+1))]]`
-/

namespace A339330.P821168748634393778
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108920 (A223680 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A339330.P821168748634393778

namespace A339330

/-- `∑[∑[A108920(A223680(n+1))]]` -/
def P821168748634393778.Spec : Prop :=
  ∀ n, P821168748634393778.a n = A339330 (n + 1)

end A339330

/-! ## A339330.P17882036043367880683

`∑[∑[A121041(A052216(n+1))]]`
-/

namespace A339330.P17882036043367880683
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121041 (A052216 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A339330.P17882036043367880683

namespace A339330

/-- `∑[∑[A121041(A052216(n+1))]]` -/
def P17882036043367880683.Spec : Prop :=
  ∀ n, P17882036043367880683.a n = A339330 (n + 1)

end A339330

/-!
# A339331: Sums of antidiagonals in A283682.

The programs for A339331, the canonical program `A339331.P5205086312218789208` is in `Seq.B002.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A339331 has offset 1).

The definition of A339331 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A339331.P5205086312218789208

`∑[2*A283682(n+1)]`

The canonical program, it is in `Seq.B002.C007`.
-/

namespace A339331

/-- `∑[2*A283682(n+1)]` -/
def P5205086312218789208.Spec : Prop :=
  ∀ n, P5205086312218789208.a n = A339331 (n + 1)

theorem P5205086312218789208.correct : P5205086312218789208.Spec := by
  intro n
  simp only [A339331, Nat.add_sub_cancel]

end A339331

/-! ## A339331.P79166596933320127

`A005843(∑[A283682(n+1)])`
-/

namespace A339331.P79166596933320127
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283682 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A339331.P79166596933320127

namespace A339331

/-- `A005843(∑[A283682(n+1)])` -/
def P79166596933320127.Spec : Prop :=
  ∀ n, P79166596933320127.a n = A339331 (n + 1)

end A339331

/-! ## A339331.P1008544995824962945

`A005408(∑[A283682(n+1)])-1`
-/

namespace A339331.P1008544995824962945
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283682 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (∑ j ∈ Finset.range (n + 1), f1 j).toNat - 1

end

end A339331.P1008544995824962945

namespace A339331

/-- `A005408(∑[A283682(n+1)])-1` -/
def P1008544995824962945.Spec : Prop :=
  ∀ n, P1008544995824962945.a n = A339331 (n + 1)

end A339331

/-! ## A339331.P293730298846639534

`∑[A283682(A001844(n))]`
-/

namespace A339331.P293730298846639534
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283682 (A001844 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A339331.P293730298846639534

namespace A339331

/-- `∑[A283682(A001844(n))]` -/
def P293730298846639534.Spec : Prop :=
  ∀ n, P293730298846639534.a n = A339331 (n + 1)

end A339331

/-! ## A339331.P6831370558349143218

`∑[A283682(sqrt(A007204(n)))]`
-/

namespace A339331.P6831370558349143218
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283682 (SequenceMachineLib.roundAway (Real.sqrt (A007204 n : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A339331.P6831370558349143218

namespace A339331

/-- `∑[A283682(sqrt(A007204(n)))]` -/
def P6831370558349143218.Spec : Prop :=
  ∀ n, P6831370558349143218.a n = A339331 (n + 1)

end A339331

/-! ## A339331.P8447881208451187813

`∑[A283682(∑[A008574(n)])]`
-/

namespace A339331.P8447881208451187813
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283682 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A339331.P8447881208451187813

namespace A339331

/-- `∑[A283682(∑[A008574(n)])]` -/
def P8447881208451187813.Spec : Prop :=
  ∀ n, P8447881208451187813.a n = A339331 (n + 1)

end A339331

/-! ## A339331.P15533583472845360838

`∑[A283682(Δ[A005900(n)])]`
-/

namespace A339331.P15533583472845360838
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005900 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283682 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A339331.P15533583472845360838

namespace A339331

/-- `∑[A283682(Δ[A005900(n)])]` -/
def P15533583472845360838.Spec : Prop :=
  ∀ n, P15533583472845360838.a n = A339331 (n + 1)

end A339331

/-! ## A339331.P14501228766427241511

`∑[A283682(A046092(n)+1)]`
-/

namespace A339331.P14501228766427241511
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283682 (A046092 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A339331.P14501228766427241511

namespace A339331

/-- `∑[A283682(A046092(n)+1)]` -/
def P14501228766427241511.Spec : Prop :=
  ∀ n, P14501228766427241511.a n = A339331 (n + 1)

end A339331

/-! ## A339331.P2454431082467410490

`∑[A283682(A000982(A005408(n)))]`
-/

namespace A339331.P2454431082467410490
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283682 (A000982 (A005408 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A339331.P2454431082467410490

namespace A339331

/-- `∑[A283682(A000982(A005408(n)))]` -/
def P2454431082467410490.Spec : Prop :=
  ∀ n, P2454431082467410490.a n = A339331 (n + 1)

end A339331

/-! ## A339331.P11696155334720573448

`∑[A283682(A005408(A002378(n)))]`
-/

namespace A339331.P11696155334720573448
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283682 (A005408 (A002378 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A339331.P11696155334720573448

namespace A339331

/-- `∑[A283682(A005408(A002378(n)))]` -/
def P11696155334720573448.Spec : Prop :=
  ∀ n, P11696155334720573448.a n = A339331 (n + 1)

end A339331

/-!
# A339332: Sums of antidiagonals in A283683.

The programs for A339332, the canonical program `A339332.P17681451593917756509` is in `Seq.B003.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A339332 has offset 1).

The definition of A339332 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A339332.P17681451593917756509

`∑[A283683(n+1)]`

The canonical program, it is in `Seq.B003.C005`.
-/

namespace A339332

/-- `∑[A283683(n+1)]` -/
def P17681451593917756509.Spec : Prop :=
  ∀ n, P17681451593917756509.a n = A339332 (n + 1)

theorem P17681451593917756509.correct : P17681451593917756509.Spec := by
  intro n
  simp only [A339332, Nat.add_sub_cancel]

end A339332

/-! ## A339332.P7645511096652377579

`∑[log2(A020906(n+1))]`
-/

namespace A339332.P7645511096652377579
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A020906 (n + 1) : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A339332.P7645511096652377579

namespace A339332

/-- `∑[log2(A020906(n+1))]` -/
def P7645511096652377579.Spec : Prop :=
  ∀ n, P7645511096652377579.a n = (A339332 (n + 1) : ℝ)

end A339332

/-! ## A339332.P7447386863944391123

`∑[abs(a(A025581(n)))]` with `a(0)=0, a(1)=1`
-/

namespace A339332.P7447386863944391123
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  f1 (A025581 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A339332.P7447386863944391123

namespace A339332

/-- `∑[abs(a(A025581(n)))]` -/
def P7447386863944391123.Spec : Prop :=
  ∀ n, (P7447386863944391123.a n : ℤ) = A339332 (n + 1)

end A339332

/-! ## A339332.P17687464937782091486

`∑[char[A020907(n+1)-1]]`
-/

namespace A339332.P17687464937782091486
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020907 (n + 1) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A339332.P17687464937782091486

namespace A339332

/-- `∑[char[A020907(n+1)-1]]` -/
def P17687464937782091486.Spec : Prop :=
  ∀ n, (P17687464937782091486.a n : ℤ) = A339332 (n + 1)

end A339332

/-! ## A339332.P15616683727940922272

`∑[A000045(a(A025581(n)))]` with `a(0)=0, a(1)=1`
-/

namespace A339332.P15616683727940922272
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  A000045 (f1 (A025581 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A339332.P15616683727940922272

namespace A339332

/-- `∑[A000045(a(A025581(n)))]` -/
def P15616683727940922272.Spec : Prop :=
  ∀ n, P15616683727940922272.a n = A339332 (n + 1)

end A339332

/-! ## A339332.P9714969624218694790

`∑[A000041(a(A025581(n)))]-n` with `a(0)=0, a(1)=2`
-/

namespace A339332.P9714969624218694790
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 2] fun n f1 =>
  A000041 (f1 (A025581 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A339332.P9714969624218694790

namespace A339332

/-- `∑[A000041(a(A025581(n)))]-n` -/
def P9714969624218694790.Spec : Prop :=
  ∀ n, P9714969624218694790.a n = A339332 (n + 1)

end A339332

/-! ## A339332.P414122623098655920

`∑[A000108(a(A025581(n)))]-n` with `a(0)=0, a(1)=2`
-/

namespace A339332.P414122623098655920
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 2] fun n f1 =>
  A000108 (f1 (A025581 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A339332.P414122623098655920

namespace A339332

/-- `∑[A000108(a(A025581(n)))]-n` -/
def P414122623098655920.Spec : Prop :=
  ∀ n, P414122623098655920.a n = A339332 (n + 1)

end A339332

/-! ## A339332.P12060129135340463966

`∑[A000040(n+1)%A020906(n+1)]`
-/

namespace A339332.P12060129135340463966
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (n + 1)) (A020906 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A339332.P12060129135340463966

namespace A339332

/-- `∑[A000040(n+1)%A020906(n+1)]` -/
def P12060129135340463966.Spec : Prop :=
  ∀ n, P12060129135340463966.a n = A339332 (n + 1)

end A339332

/-!
# A339333: Triangle read by rows, 1 <= k <= n: T(n,k) is the sum of the minimal number of coins needed for amounts 1..n with an optimal k-coin system of denominations.

The programs for A339333, there is no canonical definition to state claims against.
-/

/-! ## A339333.P8739167069201359944

`A339334(n+1)-A185284(A133906(n+1))`
-/

namespace A339333.P8739167069201359944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339334 (n + 1) - A185284 (A133906 (n + 1)).toNat

end

end A339333.P8739167069201359944

/-! ## A339333.P1393120799067426157

`A339334(n+1)-A258825(A308951(n))`
-/

namespace A339333.P1393120799067426157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339334 (n + 1) - A258825 (A308951 n).toNat

end

end A339333.P1393120799067426157

/-! ## A339333.P7493405149969090569

`A339334(n+1)-A010054(A271997(n+2))`
-/

namespace A339333.P7493405149969090569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339334 (n + 1) - A010054 (A271997 (n + 2)).toNat

end

end A339333.P7493405149969090569

/-! ## A339333.P16993880840205937173

`A339334(n+1)-A185284(A199333(n))`
-/

namespace A339333.P16993880840205937173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339334 (n + 1) - A185284 (A199333 n).toNat

end

end A339333.P16993880840205937173

/-! ## A339333.P10645068597401198565

`gcd(A210709(n), A339334(n+1))`
-/

namespace A339333.P10645068597401198565
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A210709 n) (A339334 (n + 1))

end

end A339333.P10645068597401198565

/-!
# A339334: Triangle read by rows, 1 <= k <= n: T(n,k) is the sum of the minimal number of coins needed for amounts 1..n with an optimal greedy k-coin system of denominations.

The programs for A339334, there is no canonical definition to state claims against.
-/

/-! ## A339334.P7052165062236277132

`A339333(n+1)+A185284(A133906(n+1))`
-/

namespace A339334.P7052165062236277132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339333 (n + 1) + A185284 (A133906 (n + 1)).toNat

end

end A339334.P7052165062236277132

/-! ## A339334.P13683542136873273700

`A339333(n+1)+A258825(A308951(n))`
-/

namespace A339334.P13683542136873273700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339333 (n + 1) + A258825 (A308951 n).toNat

end

end A339334.P13683542136873273700

/-! ## A339334.P806088071639396531

`A339333(n+1)+A010054(A271997(n+2))`
-/

namespace A339334.P806088071639396531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339333 (n + 1) + A010054 (A271997 (n + 2)).toNat

end

end A339334.P806088071639396531

/-! ## A339334.P16322064238546571635

`A339333(n+1)+A185284(A199333(n))`
-/

namespace A339334.P16322064238546571635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339333 (n + 1) + A185284 (A199333 n).toNat

end

end A339334.P16322064238546571635

/-!
# A339335: Dirichlet g.f.: Product_{k>=2} (1 + k^(-s))^3.

The programs for A339335, there is no canonical definition to state claims against.
-/

/-! ## A339335.P1730763038221831314

`∑{d}[n+1, A045778(#)*A328706((n+1)/#)]`
-/

namespace A339335.P1730763038221831314
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A045778 d * A328706 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A339335.P1730763038221831314

/-! ## A339335.P8338737894353276985

`∑{d}[n+1, A316441(#)*A339336((n+1)/#)]`
-/

namespace A339335.P8338737894353276985
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A316441 d * A339336 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A339335.P8338737894353276985

/-! ## A339335.P18376474118327781078

`∑{d}[n+1, A339338(#)*A339718((n+1)/#)]`
-/

namespace A339335.P18376474118327781078
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A339338 d * A339718 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A339335.P18376474118327781078

/-! ## A339335.P11207957093390943744

`∑{d}[n+1, A339341(#)*A339721((n+1)/#)]`
-/

namespace A339335.P11207957093390943744
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A339341 d * A339721 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A339335.P11207957093390943744

/-! ## A339335.P7465039893318890559

`∑{d}[n+1, A339339(#)*A339719((n+1)/#)]`
-/

namespace A339335.P7465039893318890559
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A339339 d * A339719 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A339335.P7465039893318890559

/-! ## A339335.P4171418393886250448

`∑{d}[n+1, A339340(#)*A339720((n+1)/#)]`
-/

namespace A339335.P4171418393886250448
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A339340 d * A339720 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A339335.P4171418393886250448

/-! ## A339335.P11405098162471381606

`∑{d}[n+1, A339337(#)*A339717((n+1)/#)]`
-/

namespace A339335.P11405098162471381606
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A339337 d * A339717 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A339335.P11405098162471381606

/-!
# A339336: Dirichlet g.f.: Product_{k>=2} (1 + k^(-s))^4.

The programs for A339336, there is no canonical definition to state claims against.
-/

/-! ## A339336.P14257521100431806715

`∑{d}[n+1, A045778(#)*A339335((n+1)/#)]`
-/

namespace A339336.P14257521100431806715
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A045778 d * A339335 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A339336.P14257521100431806715

/-! ## A339336.P6509950181739396206

`∑{d}[n+1, A316441(#)*A339337((n+1)/#)]`
-/

namespace A339336.P6509950181739396206
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A316441 d * A339337 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A339336.P6509950181739396206

/-! ## A339336.P4154293020405339121

`∑{d}[n+1, A328706(#)*A328706((n+1)/#)]`
-/

namespace A339336.P4154293020405339121
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A328706 d * A328706 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A339336.P4154293020405339121

/-! ## A339336.P14548156903394002580

`∑{d}[n+1, A339339(#)*A339718((n+1)/#)]`
-/

namespace A339336.P14548156903394002580
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A339339 d * A339718 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A339336.P14548156903394002580

/-! ## A339336.P16708229622883626196

`∑{d}[n+1, A339340(#)*A339719((n+1)/#)]`
-/

namespace A339336.P16708229622883626196
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A339340 d * A339719 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A339336.P16708229622883626196

/-! ## A339336.P15652465739403005456

`∑{d}[n+1, A339341(#)*A339720((n+1)/#)]`
-/

namespace A339336.P15652465739403005456
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A339341 d * A339720 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A339336.P15652465739403005456

/-! ## A339336.P10263985133433866595

`∑{d}[n+1, A339338(#)*A339717((n+1)/#)]`
-/

namespace A339336.P10263985133433866595
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A339338 d * A339717 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A339336.P10263985133433866595

/-!
# A339337: Dirichlet g.f.: Product_{k>=2} (1 + k^(-s))^5.

The programs for A339337, there is no canonical definition to state claims against.
-/

/-! ## A339337.P2801069718745443313

`∑{d}[n+1, A045778(#)*A339336((n+1)/#)]`
-/

namespace A339337.P2801069718745443313
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A045778 d * A339336 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A339337.P2801069718745443313

/-! ## A339337.P5501397551801887797

`∑{d}[n+1, A316441(#)*A339338((n+1)/#)]`
-/

namespace A339337.P5501397551801887797
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A316441 d * A339338 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A339337.P5501397551801887797

/-! ## A339337.P4436386655802909077

`∑{d}[n+1, A328706(#)*A339335((n+1)/#)]`
-/

namespace A339337.P4436386655802909077
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A328706 d * A339335 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A339337.P4436386655802909077

/-! ## A339337.P15606508709401930033

`∑{d}[n+1, A339340(#)*A339718((n+1)/#)]`
-/

namespace A339337.P15606508709401930033
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A339340 d * A339718 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A339337.P15606508709401930033

/-! ## A339337.P17330706677596683769

`∑{d}[n+1, A339341(#)*A339719((n+1)/#)]`
-/

namespace A339337.P17330706677596683769
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A339341 d * A339719 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A339337.P17330706677596683769

/-! ## A339337.P16019282849573666673

`∑{d}[n+1, A339339(#)*A339717((n+1)/#)]`
-/

namespace A339337.P16019282849573666673
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A339339 d * A339717 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A339337.P16019282849573666673

/-!
# A339338: Dirichlet g.f.: Product_{k>=2} (1 + k^(-s))^6.

The programs for A339338, there is no canonical definition to state claims against.
-/

/-! ## A339338.P1941861679687907181

`∑{d}[n+1, A045778(#)*A339337((n+1)/#)]`
-/

namespace A339338.P1941861679687907181
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A045778 d * A339337 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A339338.P1941861679687907181

/-! ## A339338.P8161580774008968432

`∑{d}[n+1, A316441(#)*A339339((n+1)/#)]`
-/

namespace A339338.P8161580774008968432
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A316441 d * A339339 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A339338.P8161580774008968432

/-! ## A339338.P15532441118154189089

`∑{d}[n+1, A328706(#)*A339336((n+1)/#)]`
-/

namespace A339338.P15532441118154189089
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A328706 d * A339336 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A339338.P15532441118154189089

/-! ## A339338.P4964714679603326075

`∑{d}[n+1, A339335(#)*A339335((n+1)/#)]`
-/

namespace A339338.P4964714679603326075
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A339335 d * A339335 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A339338.P4964714679603326075

/-! ## A339338.P8009452647226396738

`∑{d}[n+1, A339341(#)*A339718((n+1)/#)]`
-/

namespace A339338.P8009452647226396738
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A339341 d * A339718 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A339338.P8009452647226396738

/-! ## A339338.P2071265195168499665

`∑{d}[n+1, A339340(#)*A339717((n+1)/#)]`
-/

namespace A339338.P2071265195168499665
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A339340 d * A339717 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A339338.P2071265195168499665

/-!
# A339339: Dirichlet g.f.: Product_{k>=2} (1 + k^(-s))^7.

The programs for A339339, there is no canonical definition to state claims against.
-/

/-! ## A339339.P16220600473800584671

`∑{d}[n+1, A045778(#)*A339338((n+1)/#)]`
-/

namespace A339339.P16220600473800584671
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A045778 d * A339338 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A339339.P16220600473800584671

/-! ## A339339.P14583029846568538673

`∑{d}[n+1, A316441(#)*A339340((n+1)/#)]`
-/

namespace A339339.P14583029846568538673
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A316441 d * A339340 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A339339.P14583029846568538673

/-! ## A339339.P11239159539278518810

`∑{d}[n+1, A328706(#)*A339337((n+1)/#)]`
-/

namespace A339339.P11239159539278518810
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A328706 d * A339337 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A339339.P11239159539278518810

/-! ## A339339.P13876315427046574226

`∑{d}[n+1, A339335(#)*A339336((n+1)/#)]`
-/

namespace A339339.P13876315427046574226
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A339335 d * A339336 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A339339.P13876315427046574226

/-! ## A339339.P8285866185715974600

`∑{d}[n+1, A339341(#)*A339717((n+1)/#)]`
-/

namespace A339339.P8285866185715974600
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A339341 d * A339717 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A339339.P8285866185715974600

/-!
# A339340: Dirichlet g.f.: Product_{k>=2} (1 + k^(-s))^8.

The programs for A339340, there is no canonical definition to state claims against.
-/

/-! ## A339340.P17023543299934204355

`∑{d}[n+1, A045778(#)*A339339((n+1)/#)]`
-/

namespace A339340.P17023543299934204355
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A045778 d * A339339 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A339340.P17023543299934204355

/-! ## A339340.P13327434478762137294

`∑{d}[n+1, A316441(#)*A339341((n+1)/#)]`
-/

namespace A339340.P13327434478762137294
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A316441 d * A339341 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A339340.P13327434478762137294

/-! ## A339340.P2803542100875086408

`∑{d}[n+1, A328706(#)*A339338((n+1)/#)]`
-/

namespace A339340.P2803542100875086408
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A328706 d * A339338 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A339340.P2803542100875086408

/-! ## A339340.P3732820854788914966

`∑{d}[n+1, A339335(#)*A339337((n+1)/#)]`
-/

namespace A339340.P3732820854788914966
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A339335 d * A339337 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A339340.P3732820854788914966

/-! ## A339340.P17311916824062737226

`∑{d}[n+1, A339336(#)*A339336((n+1)/#)]`
-/

namespace A339340.P17311916824062737226
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A339336 d * A339336 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A339340.P17311916824062737226

/-!
# A339341: Dirichlet g.f.: Product_{k>=2} (1 + k^(-s))^9.

The programs for A339341, there is no canonical definition to state claims against.
-/

/-! ## A339341.P4994618192521500190

`∑{d}[n+1, A045778(#)*A339340((n+1)/#)]`
-/

namespace A339341.P4994618192521500190
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A045778 d * A339340 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A339341.P4994618192521500190

/-! ## A339341.P15957773322620008889

`∑{d}[n+1, A328706(#)*A339339((n+1)/#)]`
-/

namespace A339341.P15957773322620008889
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A328706 d * A339339 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A339341.P15957773322620008889

/-! ## A339341.P1332199970530171027

`∑{d}[n+1, A339335(#)*A339338((n+1)/#)]`
-/

namespace A339341.P1332199970530171027
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A339335 d * A339338 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A339341.P1332199970530171027

/-! ## A339341.P17039928248815460256

`∑{d}[n+1, A339336(#)*A339337((n+1)/#)]`
-/

namespace A339341.P17039928248815460256
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A339336 d * A339337 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A339341.P17039928248815460256

/-!
# A339342: Primes of the form floor(k^(12/11)).

The programs for A339342, the canonical program `A339342.P11310295957924163029` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A339342 has offset 1).

The definition of A339342 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8811 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A339342.P11310295957924163029

`p?[floor((root(n+1, 11)^6)²)]`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A339342

/-- `p?[floor((root(n+1, 11)^6)²)]` -/
def P11310295957924163029.Spec : Prop :=
  ∀ n, P11310295957924163029.a n = A339342 (n + 1)

theorem P11310295957924163029.correct : P11310295957924163029.Spec := by
  intro n
  simp only [A339342, Nat.add_sub_cancel]

end A339342

/-! ## A339342.P3944346085858633044

`∩[floor((root(n+1, 11)^6)²), A000040(n+1)]`
-/

namespace A339342.P3944346085858633044
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(((n + 1 : ℝ) ^ (1 / (11 : ℝ))) ^ 6) ^ 2⌋

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A339342.P3944346085858633044

namespace A339342

/-- `∩[floor((root(n+1, 11)^6)²), A000040(n+1)]` -/
def P3944346085858633044.Spec : Prop :=
  ∀ n, (P3944346085858633044.a n : ℤ) = A339342 (n + 1)

end A339342

/-! ## A339342.P17846778195629056680

`A042990(lt[A317583(n+1), A219367(n+1)])`
-/

namespace A339342.P17846778195629056680
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317583 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219367 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042990 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A339342.P17846778195629056680

namespace A339342

/-- `A042990(lt[A317583(n+1), A219367(n+1)])` -/
def P17846778195629056680.Spec : Prop :=
  ∀ n, P17846778195629056680.a n = A339342 (n + 1)

end A339342

/-! ## A339342.P312826619678179389

`A042990(lt[A067153(n+6), A080193(n+1)])`
-/

namespace A339342.P312826619678179389
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067153 (n + 6)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080193 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042990 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A339342.P312826619678179389

namespace A339342

/-- `A042990(lt[A067153(n+6), A080193(n+1)])` -/
def P312826619678179389.Spec : Prop :=
  ∀ n, P312826619678179389.a n = A339342 (n + 1)

end A339342

/-! ## A339342.P10388311333104387928

`A042990(lt[A072500(n+1), A279244(3*n+1)])`
-/

namespace A339342.P10388311333104387928
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072500 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279244 (3 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042990 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A339342.P10388311333104387928

namespace A339342

/-- `A042990(lt[A072500(n+1), A279244(3*n+1)])` -/
def P10388311333104387928.Spec : Prop :=
  ∀ n, P10388311333104387928.a n = A339342 (n + 1)

end A339342

/-!
# A339343: Abundant pseudoperfect numbers k such that no subset of the nontrivial divisors {d|k : 1 < d < k} sums to k.

The programs for A339343, there is no canonical definition to state claims against.
-/

/-! ## A339343.P13099403641089111236

`∩[A005101(n+1), A392910(n+1)]`
-/

namespace A339343.P13099403641089111236
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005101 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392910 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A339343.P13099403641089111236

/-! ## A339343.P16130591339055654295

`∩[A204825(n+1), A392910(n+1)]`
-/

namespace A339343.P16130591339055654295
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204825 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392910 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A339343.P16130591339055654295

/-! ## A339343.P12244355741232901224

`filter[A392910(n+1), A294937(#)]`
-/

namespace A339343.P12244355741232901224
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392910 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A294937 (f1 j).toNat = 1) n)

end

end A339343.P12244355741232901224

/-! ## A339343.P211872012732615990

`filter[A392496(n+1), A210455(#)]`
-/

namespace A339343.P211872012732615990
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392496 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A210455 (f1 j).toNat = 1) n)

end

end A339343.P211872012732615990

/-!
# A339344: Lexicographically earliest sequence of odd primes such that the asymptotic density of the numbers which are divisible by at least one of these primes is 1/2.

The programs for A339344, there is no canonical definition to state claims against.
-/

/-! ## A339344.P2920928636623200637

`A378252(A000079(n))`
-/

namespace A339344.P2920928636623200637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378252 (A000079 n).toNat

end

end A339344.P2920928636623200637

/-!
# A339346: a(n) is the number of domino towers of height n consisting of 2*n bricks, a(n) = A333650(2*n, n).

The programs for A339346, there is no canonical definition to state claims against.
-/

/-! ## A339346.P15663457501276598487

`A333650(∑[4*n]+1)`
-/

namespace A339346.P15663457501276598487
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333650 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A339346.P15663457501276598487

/-! ## A339346.P11011047885953045179

`and(-1, A333650(A001844(n)))`
-/

namespace A339346.P11011047885953045179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A333650 (A001844 n).toNat)

end

end A339346.P11011047885953045179

/-! ## A339346.P7504645968546791974

`record[A003982(n)*A333650(n+1)]`
-/

namespace A339346.P7504645968546791974
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A333650 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A339346.P7504645968546791974

/-! ## A339346.P10932278568602359005

`record[gcd(A003987(n), A333650(n+1))]`
-/

namespace A339346.P10932278568602359005
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A003987 n) (A333650 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A339346.P10932278568602359005

/-! ## A339346.P10577845482325108815

`A333650(A001844(n))+A026831(n)`
-/

namespace A339346.P10577845482325108815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333650 (A001844 n).toNat + A026831 n

end

end A339346.P10577845482325108815

/-!
# A339347: Primes p such that p < (gpf((p - 1)/gpf(p - 1)))^4, where gpf(k) is the greatest prime factor of k, A006530.

The programs for A339347, there is no canonical definition to state claims against.
-/

/-! ## A339347.P18085272608951412551

`p?[∑[A010121(A029615(n+1))]]`
-/

namespace A339347.P18085272608951412551
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010121 (A029615 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A339347.P18085272608951412551

/-! ## A339347.P2813540501874206410

`record[p?[A169995(n)+5]]`
-/

namespace A339347.P2813540501874206410
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169995 n + 5

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A339347.P2813540501874206410

/-! ## A339347.P1710797206897291324

`record[p?[A020710(A169995(n))]]`
-/

namespace A339347.P1710797206897291324
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020710 (A169995 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A339347.P1710797206897291324

/-! ## A339347.P17516029438424973503

`record[p?[A055231(A152126(n+1))]]`
-/

namespace A339347.P17516029438424973503
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055231 (A152126 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A339347.P17516029438424973503

/-! ## A339347.P10274571905729580489

`∩[A020624(n+1), A026503(n+1)]`
-/

namespace A339347.P10274571905729580489
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020624 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026503 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A339347.P10274571905729580489

/-!
# A339351: Irregular triangle read by rows in which row n lists the compositions (ordered partitions) of n into distinct parts in lexicographic order.

The programs for A339351, there is no canonical definition to state claims against.
-/

/-! ## A339351.P16164934001889378112

`gcd(A154099(n+1), A326898(A066181(n+1)))`
-/

namespace A339351.P16164934001889378112
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A154099 (n + 1)) (A326898 (A066181 (n + 1)).toNat)

end

end A339351.P16164934001889378112

/-! ## A339351.P10141980255781237863

`A001222(A129439(n)+A018014(n))`
-/

namespace A339351.P10141980255781237863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A129439 n + A018014 n).toNat

end

end A339351.P10141980255781237863

/-! ## A339351.P16888713400287790609

`A001221(A250755(3*n+2)-A000005(n+1))`
-/

namespace A339351.P16888713400287790609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A250755 (3 * n + 2) - A000005 (n + 1)).toNat

end

end A339351.P16888713400287790609

/-! ## A339351.P13219277777000377324

`gcd(A055642(A010049(n+4)), A101897(3*n+4))`
-/

namespace A339351.P13219277777000377324
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A055642 (A010049 (n + 4)).toNat) (A101897 (3 * n + 4))

end

end A339351.P13219277777000377324

/-! ## A339351.P11632527759675012116

`A212721(A225634(A225642(n+1)+n+1))`
-/

namespace A339351.P11632527759675012116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212721 (A225634 (A225642 (n + 1) + (n + 1 : ℤ)).toNat).toNat

end

end A339351.P11632527759675012116

/-!
# A339352: G.f.: Product_{k>=1} (1 + (-x)^(k^2) / (1 + x^k)).

The programs for A339352, there is no canonical definition to state claims against.
-/

/-! ## A339352.P11982927178134050788

`(-1)^n*A334029(A097057(n))`
-/

namespace A339352.P11982927178134050788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A334029 (A097057 n).toNat

end

end A339352.P11982927178134050788

/-! ## A339352.P650393313671464535

`(-1)^n*A165073(A287510(n))`
-/

namespace A339352.P650393313671464535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A165073 (A287510 n).toNat

end

end A339352.P650393313671464535

/-! ## A339352.P564033970877684054

`A033999(n)*A212632(A097057(n))`
-/

namespace A339352.P564033970877684054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A212632 (A097057 n).toNat

end

end A339352.P564033970877684054

/-!
# A339353: G.f.: Sum_{k>=1} k^2 * x^(k*(k + 1)) / (1 - x^k).

The programs for A339353, there is no canonical definition to state claims against.
-/

/-! ## A339353.P18439810010951511870

`∑{d}[n+1, #²-abs(n+1-#²)]-A095118(n+1)`
-/

namespace A339353.P18439810010951511870
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), ((d ^ 2 : ℤ) - |(n + 1 : ℤ) - (d ^ 2 : ℤ)|) - A095118 (n + 1)

end

end A339353.P18439810010951511870

/-! ## A339353.P3686854491772912089

`A297792(n+1)-A095118(n+1)`
-/

namespace A339353.P3686854491772912089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297792 (n + 1) - A095118 (n + 1)

end

end A339353.P3686854491772912089

/-! ## A339353.P15805473582467684541

`A095118(n+1)-A037213(n+1)²`
-/

namespace A339353.P15805473582467684541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095118 (n + 1) - A037213 (n + 1) ^ 2

end

end A339353.P15805473582467684541

/-! ## A339353.P7608602855505991319

`A297792(n+1)-A069293((n+1)²)`
-/

namespace A339353.P7608602855505991319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297792 (n + 1) - A069293 ((n + 1) ^ 2)

end

end A339353.P7608602855505991319

/-! ## A339353.P4070239240784764306

`A069293((n+1)²)%A053143(n+1)`
-/

namespace A339353.P4070239240784764306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A069293 ((n + 1) ^ 2)) (A053143 (n + 1))

end

end A339353.P4070239240784764306

/-!
# A339354: G.f.: Sum_{k>=1} k^3 * x^(k*(k + 1)) / (1 - x^k).

The programs for A339354, there is no canonical definition to state claims against.
-/

/-! ## A339354.P12797019624959732796

`A297793(n+1)-A280375(n+1)`
-/

namespace A339354.P12797019624959732796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297793 (n + 1) - A280375 (n + 1)

end

end A339354.P12797019624959732796

/-! ## A339354.P10511402399317732255

`A280375(n+1)-A037213(n+1)^3`
-/

namespace A339354.P10511402399317732255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280375 (n + 1) - A037213 (n + 1) ^ 3

end

end A339354.P10511402399317732255

/-! ## A339354.P1278170233938555053

`A280375(n+1)-A000578(A037213(n+1))`
-/

namespace A339354.P1278170233938555053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280375 (n + 1) - A000578 (A037213 (n + 1)).toNat

end

end A339354.P1278170233938555053

/-! ## A339354.P3867075331927993952

`A280375(n+1)%A000578(A019554(n+1))`
-/

namespace A339354.P3867075331927993952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A280375 (n + 1)) (A000578 (A019554 (n + 1)).toNat)

end

end A339354.P3867075331927993952

/-! ## A339354.P6270090407989131899

`2*A001158(n+1)-A297842(n+1)-A280375(n+1)`
-/

namespace A339354.P6270090407989131899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A001158 (n + 1) - A297842 (n + 1) - A280375 (n + 1)

end

end A339354.P6270090407989131899

/-! ## A339354.P4266201823154654838

`A280375(A048671(n+1))%A102631(A053143(n+1))`
-/

namespace A339354.P4266201823154654838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A280375 (A048671 (n + 1)).toNat) (A102631 (A053143 (n + 1)).toNat)

end

end A339354.P4266201823154654838

/-! ## A339354.P3214911528309785357

`A091259(n+1)-A297842(n+1)%A091259(n+1)-A280375(n+1)`
-/

namespace A339354.P3214911528309785357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091259 (n + 1) - Int.tmod (A297842 (n + 1)) (A091259 (n + 1)) - A280375 (n + 1)

end

end A339354.P3214911528309785357

/-!
# A339355: Maximum number of copies of a 12345 permutation pattern in an alternating (or zig-zag) permutation of length n + 7.

The programs for A339355, the canonical program `A339355.P11064836581817046298` is in `Seq.B002.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A339355 has offset 1).

The definition of A339355 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A339355.P11064836581817046298

`∑[A072819(floor(n/2)+2)]`

The canonical program, it is in `Seq.B002.C007`.
-/

namespace A339355

/-- `∑[A072819(floor(n/2)+2)]` -/
def P11064836581817046298.Spec : Prop :=
  ∀ n, P11064836581817046298.a n = A339355 (n + 1)

theorem P11064836581817046298.correct : P11064836581817046298.Spec := by
  intro n
  simp only [A339355, Nat.add_sub_cancel]

end A339355

/-! ## A339355.P3782791923876181736

`∑[∑[(A033999(n)+1)*C(n+4, 3)]]`
-/

namespace A339355.P3782791923876181736
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A033999 n + 1) * (Nat.choose (n + 4) 3 : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A339355.P3782791923876181736

namespace A339355

/-- `∑[∑[(A033999(n)+1)*C(n+4, 3)]]` -/
def P3782791923876181736.Spec : Prop :=
  ∀ n, P3782791923876181736.a n = A339355 (n + 1)

end A339355

/-! ## A339355.P3893647020503319749

`∑[∑[A212686(A193356(n+3))]]`
-/

namespace A339355.P3893647020503319749
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212686 (A193356 (n + 3)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A339355.P3893647020503319749

namespace A339355

/-- `∑[∑[A212686(A193356(n+3))]]` -/
def P3893647020503319749.Spec : Prop :=
  ∀ n, P3893647020503319749.a n = A339355 (n + 1)

end A339355

/-! ## A339355.P2012843508226942156

`∑[∑[A006918(4*∑[n+1]%(n+2))]]`
-/

namespace A339355.P2012843508226942156
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006918 (4 * ((∑ j ∈ Finset.range (n + 1), f3 j) % (n + 2)))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A339355.P2012843508226942156

namespace A339355

/-- `∑[∑[A006918(4*∑[n+1]%(n+2))]]` -/
def P2012843508226942156.Spec : Prop :=
  ∀ n, P2012843508226942156.a n = A339355 (n + 1)

end A339355

/-! ## A339355.P12974926473666714205

`record[8*A083003(n+1)]`
-/

namespace A339355.P12974926473666714205
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * A083003 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A339355.P12974926473666714205

namespace A339355

/-- `record[8*A083003(n+1)]` -/
def P12974926473666714205.Spec : Prop :=
  ∀ n, P12974926473666714205.a n = A339355 (n + 1)

end A339355

/-!
# A339356: Maximum number of copies of a 123456 permutation pattern in an alternating (or zig-zag) permutation of length n + 9.

The programs for A339356, the canonical program `A339356.P15711006392106729220` is in `Seq.B003.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A339356 has offset 1).

The definition of A339356 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A339356.P15711006392106729220

`∑[A339355(A109613(n)+1)]`

The canonical program, it is in `Seq.B003.C005`.
-/

namespace A339356

/-- `∑[A339355(A109613(n)+1)]` -/
def P15711006392106729220.Spec : Prop :=
  ∀ n, P15711006392106729220.a n = A339356 (n + 1)

theorem P15711006392106729220.correct : P15711006392106729220.Spec := by
  intro n
  simp only [A339356, Nat.add_sub_cancel]

end A339356

/-! ## A339356.P6004738923198499843

`∑[A339355(A052928(n)+2)]`
-/

namespace A339356.P6004738923198499843
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339355 (A052928 n + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A339356.P6004738923198499843

namespace A339356

/-- `∑[A339355(A052928(n)+2)]` -/
def P6004738923198499843.Spec : Prop :=
  ∀ n, P6004738923198499843.a n = A339356 (n + 1)

theorem P6004738923198499843.correct : P6004738923198499843.Spec := by
  intro n
  simp only [A339356, Nat.add_sub_cancel, A339356.P6004738923198499843.f1, A339356.P6004738923198499843.a, A339356.P15711006392106729220.f1, A339356.P15711006392106729220.a, A052928, A052928.P15665125645728880594.a, A109613, A109613.P11033607296544520888.a, A339355, A339355.P11064836581817046298.f1, A339355.P11064836581817046298.a, A072819, A072819.P14090172225751623983.a, A008911, A008911.P13273812959186450040.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A339356

/-! ## A339356.P5066767053197801927

`∑[A339355(2*A008619(n))]`
-/

namespace A339356.P5066767053197801927
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339355 (2 * A008619 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A339356.P5066767053197801927

namespace A339356

/-- `∑[A339355(2*A008619(n))]` -/
def P5066767053197801927.Spec : Prop :=
  ∀ n, P5066767053197801927.a n = A339356 (n + 1)

theorem P5066767053197801927.correct : P5066767053197801927.Spec := by
  intro n
  simp only [A339356, Nat.add_sub_cancel, A339356.P5066767053197801927.f1, A339356.P5066767053197801927.a, A339356.P15711006392106729220.f1, A339356.P15711006392106729220.a, A008619, A008619.P16053834178911111118.a, A109613, A109613.P11033607296544520888.a, A339355, A339355.P11064836581817046298.f1, A339355.P11064836581817046298.a, A072819, A072819.P14090172225751623983.a, A008911, A008911.P13273812959186450040.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A339356

/-! ## A339356.P1917234881753754332

`∑[A339355(∑[A010673(n+1)])]`
-/

namespace A339356.P1917234881753754332
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010673 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339355 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A339356.P1917234881753754332

namespace A339356

/-- `∑[A339355(∑[A010673(n+1)])]` -/
def P1917234881753754332.Spec : Prop :=
  ∀ n, P1917234881753754332.a n = A339356 (n + 1)

end A339356

/-! ## A339356.P11945896600292817286

`∑[A339355(log2(A213173(n+2)))]`
-/

namespace A339356.P11945896600292817286
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339355 (SequenceMachineLib.roundAway (Real.logb 2 (A213173 (n + 2) : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A339356.P11945896600292817286

namespace A339356

/-- `∑[A339355(log2(A213173(n+2)))]` -/
def P11945896600292817286.Spec : Prop :=
  ∀ n, P11945896600292817286.a n = A339356 (n + 1)

end A339356

/-!
# A339357: Number of different profiles of sizes of smallest string attractors, over all binary strings of length n.

The programs for A339357, there is no canonical definition to state claims against.
-/

/-! ## A339357.P3263267087302149680

`record[A342859(∑[A036370(n)])]`
-/

namespace A339357.P3263267087302149680
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036370 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342859 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A339357.P3263267087302149680

/-! ## A339357.P7133013771349372157

`A003056(A349943(n)+A319765(n))`
-/

namespace A339357.P7133013771349372157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A349943 n + A319765 n).toNat

end

end A339357.P7133013771349372157

/-! ## A339357.P15073034499702640411

`A274701(xor(A081688(n), A097550(n)))`
-/

namespace A339357.P15073034499702640411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274701 (Int.xor (A081688 n) (A097550 n)).toNat

end

end A339357.P15073034499702640411

/-! ## A339357.P5791116669673811721

`A007895(A209383(n+1))+A000045(n)`
-/

namespace A339357.P5791116669673811721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007895 (A209383 (n + 1)).toNat + A000045 n

end

end A339357.P5791116669673811721

/-! ## A339357.P8253832824043321823

`A003056(A319765(n)+A213925(n+1))`
-/

namespace A339357.P8253832824043321823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A319765 n + A213925 (n + 1)).toNat

end

end A339357.P8253832824043321823

/-!
# A339358: Maximum number of copies of a 1234567 permutation pattern in an alternating (or zig-zag) permutation of length n + 11.

The programs for A339358, the canonical program `A339358.P3856827849411586667` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A339358 has offset 1).

The definition of A339358 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A339358.P3856827849411586667

`∑[A339356(A109613(n)+1)]`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A339358

/-- `∑[A339356(A109613(n)+1)]` -/
def P3856827849411586667.Spec : Prop :=
  ∀ n, P3856827849411586667.a n = A339358 (n + 1)

theorem P3856827849411586667.correct : P3856827849411586667.Spec := by
  intro n
  simp only [A339358, Nat.add_sub_cancel]

end A339358

/-! ## A339358.P17362505063310800881

`∑[A339356(2*A008619(n))]`
-/

namespace A339358.P17362505063310800881
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339356 (2 * A008619 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A339358.P17362505063310800881

namespace A339358

/-- `∑[A339356(2*A008619(n))]` -/
def P17362505063310800881.Spec : Prop :=
  ∀ n, P17362505063310800881.a n = A339358 (n + 1)

theorem P17362505063310800881.correct : P17362505063310800881.Spec := by
  intro n
  simp only [A339358, Nat.add_sub_cancel, A339358.P17362505063310800881.f1, A339358.P17362505063310800881.a, A339358.P3856827849411586667.f1, A339358.P3856827849411586667.a, A008619, A008619.P16053834178911111118.a, A109613, A109613.P11033607296544520888.a, A339356, A339356.P15711006392106729220.f1, A339356.P15711006392106729220.a, A339355, A339355.P11064836581817046298.f1, A339355.P11064836581817046298.a, A072819, A072819.P14090172225751623983.a, A008911, A008911.P13273812959186450040.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A339358

/-! ## A339358.P11359348701930097846

`∑[A339356(Δ[A080827(n+1)])]`
-/

namespace A339358.P11359348701930097846
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080827 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339356 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A339358.P11359348701930097846

namespace A339358

/-- `∑[A339356(Δ[A080827(n+1)])]` -/
def P11359348701930097846.Spec : Prop :=
  ∀ n, P11359348701930097846.a n = A339358 (n + 1)

end A339358

/-! ## A339358.P1962403051768012968

`∑[∑[A010673(n+1)*A339355(n+2)]]`
-/

namespace A339358.P1962403051768012968
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010673 (n + 1) * A339355 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A339358.P1962403051768012968

namespace A339358

/-- `∑[∑[A010673(n+1)*A339355(n+2)]]` -/
def P1962403051768012968.Spec : Prop :=
  ∀ n, P1962403051768012968.a n = A339358 (n + 1)

end A339358

/-! ## A339358.P2308171638847198342

`∑[A339356(log2(A213173(n+2)))]`
-/

namespace A339358.P2308171638847198342
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339356 (SequenceMachineLib.roundAway (Real.logb 2 (A213173 (n + 2) : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A339358.P2308171638847198342

namespace A339358

/-- `∑[A339356(log2(A213173(n+2)))]` -/
def P2308171638847198342.Spec : Prop :=
  ∀ n, P2308171638847198342.a n = A339358 (n + 1)

end A339358

/-!
# A339359: Irregular triangle read by rows; the first row simply contains the value 1; given the succession of digits of the n-th row, say [d_0, ..., d_k], the (n+1)-th row is [d_0, d_0+d_1, d_1+d_2, ..., d_{k-1}+d_k, d_k].

The programs for A339359, there is no canonical definition to state claims against.
-/

/-! ## A339359.P7915840767596816132

`A007318(lt[A060287(n), 3])`
-/

namespace A339359.P7915840767596816132
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060287 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A339359.P7915840767596816132

/-! ## A339359.P5959484233319264760

`A007318(lt[A060244(n), 6])`
-/

namespace A339359.P5959484233319264760
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060244 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A339359.P5959484233319264760

/-! ## A339359.P7919435215721261765

`A007318(lt[A108617(n), 14])`
-/

namespace A339359.P7919435215721261765
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108617 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  14

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A339359.P7919435215721261765

/-! ## A339359.P18050311519716532725

`A007318(lt[A176228(n), 17])`
-/

namespace A339359.P18050311519716532725
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176228 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  17

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A339359.P18050311519716532725

/-! ## A339359.P157941597844922881

`A007318(lt[A054225(n), 20])`
-/

namespace A339359.P157941597844922881
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054225 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  20

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A339359.P157941597844922881

/-!
# A339360: Sum of all squarefree numbers with greatest prime factor prime(n).

The programs for A339360, there is no canonical definition to state claims against.
-/

/-! ## A339360.P5361057445178357175

`A000203(A376237(n))*A008578(n+1)`
-/

namespace A339360.P5361057445178357175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A376237 n).toNat * A008578 (n + 1)

end

end A339360.P5361057445178357175

/-! ## A339360.P18118031181883805075

`A008578(n+1)*A348047(A058694(n))`
-/

namespace A339360.P18118031181883805075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1) * A348047 (A058694 n).toNat

end

end A339360.P18118031181883805075

/-!
# A339361: Product of prime indices of the n-th squarefree semiprime.

The programs for A339361, the canonical program `A339361.P14365663661703999177` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A339361 has offset 1).

The definition of A339361 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003963, A006881, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A339361.P14365663661703999177

`A003963(A006881(n+1))`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A339361

/-- `A003963(A006881(n+1))` -/
def P14365663661703999177.Spec : Prop :=
  ∀ n, P14365663661703999177.a n = A339361 (n + 1)

theorem P14365663661703999177.correct : P14365663661703999177.Spec := by
  intro n
  simp only [A339361, Nat.add_sub_cancel]

end A339361

/-! ## A339361.P8076190917090061925

`A270650(n+1)*A270652(n+1)`
-/

namespace A339361.P8076190917090061925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270650 (n + 1) * A270652 (n + 1)

end

end A339361.P8076190917090061925

namespace A339361

/-- `A270650(n+1)*A270652(n+1)` -/
def P8076190917090061925.Spec : Prop :=
  ∀ n, P8076190917090061925.a n = A339361 (n + 1)

end A339361

/-! ## A339361.P2153989953002825791

`A003963(eq[2, A066882(n)])`
-/

namespace A339361.P2153989953002825791
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066882 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A339361.P2153989953002825791

namespace A339361

/-- `A003963(eq[2, A066882(n)])` -/
def P2153989953002825791.Spec : Prop :=
  ∀ n, P2153989953002825791.a n = A339361 (n + 1)

end A339361

/-! ## A339361.P3215391315900252946

`A156061(eq[2, A066882(n)])`
-/

namespace A339361.P3215391315900252946
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066882 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156061 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A339361.P3215391315900252946

namespace A339361

/-- `A156061(eq[2, A066882(n)])` -/
def P3215391315900252946.Spec : Prop :=
  ∀ n, P3215391315900252946.a n = A339361 (n + 1)

end A339361

/-! ## A339361.P7983943838879534411

`A003963(eq[3, A074206(n)])`
-/

namespace A339361.P7983943838879534411
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074206 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A339361.P7983943838879534411

namespace A339361

/-- `A003963(eq[3, A074206(n)])` -/
def P7983943838879534411.Spec : Prop :=
  ∀ n, P7983943838879534411.a n = A339361 (n + 1)

end A339361

/-! ## A339361.P12956730805688971885

`A156061(eq[3, A074206(n)])`
-/

namespace A339361.P12956730805688971885
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074206 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156061 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A339361.P12956730805688971885

namespace A339361

/-- `A156061(eq[3, A074206(n)])` -/
def P12956730805688971885.Spec : Prop :=
  ∀ n, P12956730805688971885.a n = A339361 (n + 1)

end A339361

/-! ## A339361.P8513379883934649610

`A304117(eq[3, A074206(n)])`
-/

namespace A339361.P8513379883934649610
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074206 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304117 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A339361.P8513379883934649610

namespace A339361

/-- `A304117(eq[3, A074206(n)])` -/
def P8513379883934649610.Spec : Prop :=
  ∀ n, P8513379883934649610.a n = A339361 (n + 1)

end A339361

/-! ## A339361.P5433528544261373636

`A003963(eq[4, A077462(n)])`
-/

namespace A339361.P5433528544261373636
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077462 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A339361.P5433528544261373636

namespace A339361

/-- `A003963(eq[4, A077462(n)])` -/
def P5433528544261373636.Spec : Prop :=
  ∀ n, P5433528544261373636.a n = A339361 (n + 1)

end A339361

/-! ## A339361.P13641327642776763964

`A003963(sqrt(A085986(n+1)))`
-/

namespace A339361.P13641327642776763964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (SequenceMachineLib.roundAway (Real.sqrt (A085986 (n + 1) : ℝ))).toNat

end

end A339361.P13641327642776763964

namespace A339361

/-- `A003963(sqrt(A085986(n+1)))` -/
def P13641327642776763964.Spec : Prop :=
  ∀ n, P13641327642776763964.a n = A339361 (n + 1)

end A339361

/-! ## A339361.P10990924091740432660

`A156061(sqrt(A085986(n+1)))`
-/

namespace A339361.P10990924091740432660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156061 (SequenceMachineLib.roundAway (Real.sqrt (A085986 (n + 1) : ℝ))).toNat

end

end A339361.P10990924091740432660

namespace A339361

/-- `A156061(sqrt(A085986(n+1)))` -/
def P10990924091740432660.Spec : Prop :=
  ∀ n, P10990924091740432660.a n = A339361 (n + 1)

end A339361

/-!
# A339362: Sum of prime indices of the n-th squarefree semiprime.

The programs for A339362, the canonical program `A339362.P16398706332214648153` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A339362 has offset 1).

The definition of A339362 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006881, A056239, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A339362.P16398706332214648153

`A056239(A006881(n+1))`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A339362

/-- `A056239(A006881(n+1))` -/
def P16398706332214648153.Spec : Prop :=
  ∀ n, P16398706332214648153.a n = A339362 (n + 1)

theorem P16398706332214648153.correct : P16398706332214648153.Spec := by
  intro n
  simp only [A339362, Nat.add_sub_cancel]

end A339362

/-! ## A339362.P15680034346354040368

`∑{p}[A006881(n+1), A000720(#)]`
-/

namespace A339362.P15680034346354040368
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006881 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A000720 p

end

end A339362.P15680034346354040368

namespace A339362

/-- `∑{p}[A006881(n+1), A000720(#)]` -/
def P15680034346354040368.Spec : Prop :=
  ∀ n, P15680034346354040368.a n = A339362 (n + 1)

end A339362

/-! ## A339362.P16906651832327486258

`A056239(A161918(n+2))`
-/

namespace A339362.P16906651832327486258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (A161918 (n + 2)).toNat

end

end A339362.P16906651832327486258

namespace A339362

/-- `A056239(A161918(n+2))` -/
def P16906651832327486258.Spec : Prop :=
  ∀ n, P16906651832327486258.a n = A339362 (n + 1)

end A339362

/-! ## A339362.P4775810781347802834

`A056239(eq[2, A066882(n)])`
-/

namespace A339362.P4775810781347802834
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066882 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A339362.P4775810781347802834

namespace A339362

/-- `A056239(eq[2, A066882(n)])` -/
def P4775810781347802834.Spec : Prop :=
  ∀ n, P4775810781347802834.a n = A339362 (n + 1)

end A339362

/-! ## A339362.P6670020279659039947

`A056239(eq[2, A293813(n)])`
-/

namespace A339362.P6670020279659039947
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293813 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A339362.P6670020279659039947

namespace A339362

/-- `A056239(eq[2, A293813(n)])` -/
def P6670020279659039947.Spec : Prop :=
  ∀ n, P6670020279659039947.a n = A339362 (n + 1)

end A339362

/-! ## A339362.P2507511876193331420

`A056239(eq[3, A074206(n)])`
-/

namespace A339362.P2507511876193331420
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074206 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A339362.P2507511876193331420

namespace A339362

/-- `A056239(eq[3, A074206(n)])` -/
def P2507511876193331420.Spec : Prop :=
  ∀ n, P2507511876193331420.a n = A339362 (n + 1)

end A339362

/-! ## A339362.P9266252114418967919

`A056239(eq[3, A104725(n)])`
-/

namespace A339362.P9266252114418967919
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104725 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A339362.P9266252114418967919

namespace A339362

/-- `A056239(eq[3, A104725(n)])` -/
def P9266252114418967919.Spec : Prop :=
  ∀ n, P9266252114418967919.a n = A339362 (n + 1)

end A339362

/-! ## A339362.P7081883574160527094

`A056239(eq[3, A211110(n)])`
-/

namespace A339362.P7081883574160527094
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211110 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A339362.P7081883574160527094

namespace A339362

/-- `A056239(eq[3, A211110(n)])` -/
def P7081883574160527094.Spec : Prop :=
  ∀ n, P7081883574160527094.a n = A339362 (n + 1)

end A339362

/-! ## A339362.P11958695981663910969

`A338899(2*n+1)+A270652(n+1)`
-/

namespace A339362.P11958695981663910969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338899 (2 * n + 1) + A270652 (n + 1)

end

end A339362.P11958695981663910969

namespace A339362

/-- `A338899(2*n+1)+A270652(n+1)` -/
def P11958695981663910969.Spec : Prop :=
  ∀ n, P11958695981663910969.a n = A339362 (n + 1)

end A339362

/-! ## A339362.P5457427563937939286

`A338899(2*n+1)+A338899(2*(n+1))`
-/

namespace A339362.P5457427563937939286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338899 (2 * n + 1) + A338899 (2 * (n + 1))

end

end A339362.P5457427563937939286

namespace A339362

/-- `A338899(2*n+1)+A338899(2*(n+1))` -/
def P5457427563937939286.Spec : Prop :=
  ∀ n, P5457427563937939286.a n = A339362 (n + 1)

end A339362

/-!
# A339363: a(n) = Sum_{k=1..floor(sqrt(n))} floor(sqrt(n-k)).

The programs for A339363, the canonical program `A339363.P14614584923142497431` is in `Seq.B002.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A339363 has offset 1).

The definition of A339363 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A339363.P390457749174714378

`∑[A056926(n+1)-A118175(n)]`
-/

namespace A339363.P390457749174714378
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056926 (n + 1) - A118175 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A339363.P390457749174714378

namespace A339363

/-- `∑[A056926(n+1)-A118175(n)]` -/
def P390457749174714378.Spec : Prop :=
  ∀ n, P390457749174714378.a n = A339363 (n + 1)

end A339363

/-! ## A339363.P14614584923142497431

`1-A134478(∑[A118175(n)])+n`

The canonical program, it is in `Seq.B002.C007`.
-/

namespace A339363

/-- `1-A134478(∑[A118175(n)])+n` -/
def P14614584923142497431.Spec : Prop :=
  ∀ n, P14614584923142497431.a n = A339363 (n + 1)

theorem P14614584923142497431.correct : P14614584923142497431.Spec := by
  intro n
  simp only [A339363, Nat.add_sub_cancel]

end A339363

/-! ## A339363.P10741057065924452115

`A056847(n+1)-A023969(n+1)*A038760(n)`
-/

namespace A339363.P10741057065924452115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056847 (n + 1) - A023969 (n + 1) * A038760 n

end

end A339363.P10741057065924452115

namespace A339363

/-- `A056847(n+1)-A023969(n+1)*A038760(n)` -/
def P10741057065924452115.Spec : Prop :=
  ∀ n, P10741057065924452115.a n = A339363 (n + 1)

end A339363

/-! ## A339363.P15724636800547544532

`∑[abs(Δ[A194258(n+1)])]`
-/

namespace A339363.P15724636800547544532
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194258 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A339363.P15724636800547544532

namespace A339363

/-- `∑[abs(Δ[A194258(n+1)])]` -/
def P15724636800547544532.Spec : Prop :=
  ∀ n, P15724636800547544532.a n = A339363 (n + 1)

end A339363

/-! ## A339363.P1194956319010133108

`∑[abs(Δ[A194195(A020703(n+1))])]`
-/

namespace A339363.P1194956319010133108
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194195 (A020703 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A339363.P1194956319010133108

namespace A339363

/-- `∑[abs(Δ[A194195(A020703(n+1))])]` -/
def P1194956319010133108.Spec : Prop :=
  ∀ n, P1194956319010133108.a n = A339363 (n + 1)

end A339363

/-! ## A339363.P2149470218040812760

`∑[A000194(Δ[A194258(n+1)]²)]`
-/

namespace A339363.P2149470218040812760
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194258 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 ((f2 (n + 1) - f2 n) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A339363.P2149470218040812760

namespace A339363

/-- `∑[A000194(Δ[A194258(n+1)]²)]` -/
def P2149470218040812760.Spec : Prop :=
  ∀ n, P2149470218040812760.a n = A339363 (n + 1)

end A339363

/-! ## A339363.P11191575094433041776

`∑[A000196(Δ[A194258(n+1)]²)]`
-/

namespace A339363.P11191575094433041776
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194258 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 ((f2 (n + 1) - f2 n) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A339363.P11191575094433041776

namespace A339363

/-- `∑[A000196(Δ[A194258(n+1)]²)]` -/
def P11191575094433041776.Spec : Prop :=
  ∀ n, P11191575094433041776.a n = A339363 (n + 1)

end A339363

/-! ## A339363.P5694290789935702329

`∑[A056926(Δ[A194258(n+1)]²)]`
-/

namespace A339363.P5694290789935702329
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194258 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056926 ((f2 (n + 1) - f2 n) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A339363.P5694290789935702329

namespace A339363

/-- `∑[A056926(Δ[A194258(n+1)]²)]` -/
def P5694290789935702329.Spec : Prop :=
  ∀ n, P5694290789935702329.a n = A339363 (n + 1)

end A339363

/-! ## A339363.P2167883165999406176

`∑[abs(Δ[A209279(A091995(n+1))])]`
-/

namespace A339363.P2167883165999406176
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209279 (A091995 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A339363.P2167883165999406176

namespace A339363

/-- `∑[abs(Δ[A209279(A091995(n+1))])]` -/
def P2167883165999406176.Spec : Prop :=
  ∀ n, P2167883165999406176.a n = A339363 (n + 1)

end A339363

/-! ## A339363.P4282318683485055257

`A080352(A161983(n+1))`
-/

namespace A339363.P4282318683485055257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080352 (A161983 (n + 1)).toNat

end

end A339363.P4282318683485055257

namespace A339363

/-- `A080352(A161983(n+1))` -/
def P4282318683485055257.Spec : Prop :=
  ∀ n, P4282318683485055257.a n = A339363 (n + 1)

end A339363

/-! ## A339363.P9453431917784974335

`A080352(A174803(n+1))`
-/

namespace A339363.P9453431917784974335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080352 (A174803 (n + 1)).toNat

end

end A339363.P9453431917784974335

namespace A339363

/-- `A080352(A174803(n+1))` -/
def P9453431917784974335.Spec : Prop :=
  ∀ n, P9453431917784974335.a n = A339363 (n + 1)

end A339363

/-!
# A339364: Number of partitions of n into an even number of squares.

The programs for A339364, there is no canonical definition to state claims against.
-/

/-! ## A339364.P17593276354963968290

`(A001156(n)+A292520(n))/2`
-/

namespace A339364.P17593276354963968290
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001156 n + A292520 n : ℚ) / 2

end

end A339364.P17593276354963968290

/-! ## A339364.P12597038007125692835

`A339365(n)+A292520(n)`
-/

namespace A339364.P12597038007125692835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339365 n + A292520 n

end

end A339364.P12597038007125692835

/-! ## A339364.P10368833301516481495

`A001156(n)-A339365(n)`
-/

namespace A339364.P10368833301516481495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001156 n - A339365 n

end

end A339364.P10368833301516481495

/-! ## A339364.P2729443995770774983

`ceil((A292520(n)+A219610(n))/2)`
-/

namespace A339364.P2729443995770774983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A292520 n + A219610 n : ℚ) / 2⌉

end

end A339364.P2729443995770774983

/-! ## A339364.P16187209132712773913

`A001156(n)+A057428(n)*A339365(n)`
-/

namespace A339364.P16187209132712773913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001156 n + A057428 n * A339365 n

end

end A339364.P16187209132712773913

/-! ## A339364.P14428864345949154136

`A265260(4*n)-A339365(n)`
-/

namespace A339364.P14428864345949154136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265260 (4 * n) - A339365 n

end

end A339364.P14428864345949154136

/-! ## A339364.P15803950411384455542

`A014682(A292520(n)+A001156(n))`
-/

namespace A339364.P15803950411384455542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A292520 n + A001156 n).toNat

end

end A339364.P15803950411384455542

/-! ## A339364.P5525957433819706028

`A038572(A292520(n)+A001156(n))`
-/

namespace A339364.P5525957433819706028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038572 (A292520 n + A001156 n).toNat

end

end A339364.P5525957433819706028

/-! ## A339364.P4894798721974498682

`A292520(n)+A001281(A001156(n)-A292520(n))`
-/

namespace A339364.P4894798721974498682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292520 n + A001281 (A001156 n - A292520 n).toNat

end

end A339364.P4894798721974498682

/-! ## A339364.P564130719768238231

`A292520(n)+A004525(A001156(n)-A292520(n))`
-/

namespace A339364.P564130719768238231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292520 n + A004525 (A001156 n - A292520 n).toNat

end

end A339364.P564130719768238231

/-! ## A339364.P5628733430371275592

`A292520(n)+A110654(A001156(n)-A292520(n))`
-/

namespace A339364.P5628733430371275592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292520 n + A110654 (A001156 n - A292520 n).toNat

end

end A339364.P5628733430371275592

/-! ## A339364.P1037189588787347704

`A292520(n)+A110654(A219610(n)-A292520(n))`
-/

namespace A339364.P1037189588787347704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292520 n + A110654 (A219610 n - A292520 n).toNat

end

end A339364.P1037189588787347704

/-! ## A339364.P4276958639965160566

`A001156(n)-A004526(A001156(n)-A292520(n))`
-/

namespace A339364.P4276958639965160566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001156 n - A004526 (A001156 n - A292520 n).toNat

end

end A339364.P4276958639965160566

/-! ## A339364.P16956966505461356657

`A001281(A292520(n)+A001156(n))`
-/

namespace A339364.P16956966505461356657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A292520 n + A001156 n).toNat

end

end A339364.P16956966505461356657

/-! ## A339364.P12564767846841723894

`A004525(A292520(n)+A001156(n))`
-/

namespace A339364.P12564767846841723894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A292520 n + A001156 n).toNat

end

end A339364.P12564767846841723894

/-! ## A339364.P8895627836497202219

`A004526(A292520(n)+A001156(n))`
-/

namespace A339364.P8895627836497202219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A292520 n + A001156 n).toNat

end

end A339364.P8895627836497202219

/-! ## A339364.P10292473659645152421

`A110654(A292520(n)+A001156(n))`
-/

namespace A339364.P10292473659645152421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A292520 n + A001156 n).toNat

end

end A339364.P10292473659645152421

/-!
# A339365: Number of partitions of n into an odd number of squares.

The programs for A339365, there is no canonical definition to state claims against.
-/

/-! ## A339365.P8083960703533702195

`(A001156(n)-A292520(n))/2`
-/

namespace A339365.P8083960703533702195
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001156 n - A292520 n : ℚ) / 2

end

end A339365.P8083960703533702195

/-! ## A339365.P8705007865778074490

`A001156(n)-A339364(n)`
-/

namespace A339365.P8705007865778074490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001156 n - A339364 n

end

end A339365.P8705007865778074490

/-! ## A339365.P8883963297191561753

`A339364(n)-A292520(n)`
-/

namespace A339365.P8883963297191561753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339364 n - A292520 n

end

end A339365.P8883963297191561753

/-! ## A339365.P2329514105745429893

`ceil((A219610(n)-A292520(n))/2)`
-/

namespace A339365.P2329514105745429893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A219610 n - A292520 n : ℚ) / 2⌉

end

end A339365.P2329514105745429893

/-! ## A339365.P5083691020660467588

`A219610(A028310(n))+A010052(n)-A339364(n)`
-/

namespace A339365.P5083691020660467588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219610 (A028310 n).toNat + A010052 n - A339364 n

end

end A339365.P5083691020660467588

/-! ## A339365.P14237746777276319160

`A265260(4*n)-A339364(n)`
-/

namespace A339365.P14237746777276319160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265260 (4 * n) - A339364 n

end

end A339365.P14237746777276319160

/-! ## A339365.P2773868798650191665

`A014682(A001156(n)-A292520(n))`
-/

namespace A339365.P2773868798650191665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A001156 n - A292520 n).toNat

end

end A339365.P2773868798650191665

/-! ## A339365.P5116268609192611059

`A038572(A001156(n)-A292520(n))`
-/

namespace A339365.P5116268609192611059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038572 (A001156 n - A292520 n).toNat

end

end A339365.P5116268609192611059

/-! ## A339365.P18224823112171295287

`A001281(A001156(n)-A292520(n))`
-/

namespace A339365.P18224823112171295287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A001156 n - A292520 n).toNat

end

end A339365.P18224823112171295287

/-! ## A339365.P10592821596793398933

`A004525(A001156(n)-A292520(n))`
-/

namespace A339365.P10592821596793398933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A001156 n - A292520 n).toNat

end

end A339365.P10592821596793398933

/-! ## A339365.P16823974883045472173

`A004526(A001156(n)-A292520(n))`
-/

namespace A339365.P16823974883045472173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A001156 n - A292520 n).toNat

end

end A339365.P16823974883045472173

/-! ## A339365.P2669617858437256817

`A110654(A001156(n)-A292520(n))`
-/

namespace A339365.P2669617858437256817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A001156 n - A292520 n).toNat

end

end A339365.P2669617858437256817

/-! ## A339365.P2480690785592472062

`A110654(A219610(n)-A292520(n))`
-/

namespace A339365.P2480690785592472062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A219610 n - A292520 n).toNat

end

end A339365.P2480690785592472062

/-!
# A339366: Number of partitions of n into an even number of distinct squares.

The programs for A339366, there is no canonical definition to state claims against.
-/

/-! ## A339366.P4290287088472618571

`(A033461(n)+A276516(n))/2`
-/

namespace A339366.P4290287088472618571
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A033461 n + A276516 n : ℚ) / 2

end

end A339366.P4290287088472618571

/-! ## A339366.P10694200031652601938

`A339367(n)+A276516(n)`
-/

namespace A339366.P10694200031652601938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339367 n + A276516 n

end

end A339366.P10694200031652601938

/-! ## A339366.P11779982962349401879

`A033461(n)-A339367(n)`
-/

namespace A339366.P11779982962349401879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033461 n - A339367 n

end

end A339366.P11779982962349401879

/-! ## A339366.P7795330281166071009

`A339367(n)+Δ[A298601(abs(1-n))]`
-/

namespace A339366.P7795330281166071009
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298601 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339367 n + (f1 (n + 1) - f1 n)

end

end A339366.P7795330281166071009

/-! ## A339366.P2823507315256838644

`A004525(A276516(n)+A033461(n))`
-/

namespace A339366.P2823507315256838644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A276516 n + A033461 n).toNat

end

end A339366.P2823507315256838644

/-! ## A339366.P10987519799194347691

`A110654(A276516(n)+A033461(n))`
-/

namespace A339366.P10987519799194347691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A276516 n + A033461 n).toNat

end

end A339366.P10987519799194347691

/-! ## A339366.P5365146421521977140

`A001281(A276516(n)+A033461(n))`
-/

namespace A339366.P5365146421521977140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A276516 n + A033461 n).toNat

end

end A339366.P5365146421521977140

/-! ## A339366.P10283137118691150671

`A004526(A276516(n)+A033461(n))`
-/

namespace A339366.P10283137118691150671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A276516 n + A033461 n).toNat

end

end A339366.P10283137118691150671

/-! ## A339366.P8832158168284489667

`A001222(sqrt(5)^(A276516(n)+A033461(n)))`
-/

namespace A339366.P8832158168284489667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.roundAway (Real.sqrt (5 : ℝ) ^ (A276516 n + A033461 n : ℤ))).toNat

end

end A339366.P8832158168284489667

/-!
# A339367: Number of partitions of n into an odd number of distinct squares.

The programs for A339367, there is no canonical definition to state claims against.
-/

/-! ## A339367.P3086513098751992586

`(A033461(n)-A276516(n))/2`
-/

namespace A339367.P3086513098751992586
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A033461 n - A276516 n : ℚ) / 2

end

end A339367.P3086513098751992586

/-! ## A339367.P4035027731587366930

`A033461(n)-A339366(n)`
-/

namespace A339367.P4035027731587366930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033461 n - A339366 n

end

end A339367.P4035027731587366930

/-! ## A339367.P11718229393210475756

`A339366(n)-A276516(n)`
-/

namespace A339367.P11718229393210475756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339366 n - A276516 n

end

end A339367.P11718229393210475756

/-! ## A339367.P6237544807090712744

`A339366(n)-Δ[A298601(abs(1-n))]`
-/

namespace A339367.P6237544807090712744
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298601 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339366 n - (f1 (n + 1) - f1 n)

end

end A339367.P6237544807090712744

/-! ## A339367.P14995978950860213100

`A001281(A033461(n)-A276516(n))`
-/

namespace A339367.P14995978950860213100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A033461 n - A276516 n).toNat

end

end A339367.P14995978950860213100

/-! ## A339367.P1243318908828516445

`A004525(A033461(n)-A276516(n))`
-/

namespace A339367.P1243318908828516445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A033461 n - A276516 n).toNat

end

end A339367.P1243318908828516445

/-! ## A339367.P13226717673177649734

`A004526(A033461(n)-A276516(n))`
-/

namespace A339367.P13226717673177649734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A033461 n - A276516 n).toNat

end

end A339367.P13226717673177649734

/-! ## A339367.P14685573891669802678

`A110654(A033461(n)-A276516(n))`
-/

namespace A339367.P14685573891669802678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A033461 n - A276516 n).toNat

end

end A339367.P14685573891669802678

/-! ## A339367.P9108399390942988897

`∑{e}[A245059(A033461(n)-A276516(n)), #]`
-/

namespace A339367.P9108399390942988897
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245059 (A033461 n - A276516 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A339367.P9108399390942988897

/-! ## A339367.P3806752521645339805

`A027193(A339376(A339431(n)²))`
-/

namespace A339367.P3806752521645339805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027193 (A339376 (A339431 n ^ 2).toNat).toNat

end

end A339367.P3806752521645339805

/-!
# A339368: Number of partitions of n into an even number of cubes.

The programs for A339368, there is no canonical definition to state claims against.
-/

/-! ## A339368.P1823994638864668191

`(A003108(n)+A292560(n))/2`
-/

namespace A339368.P1823994638864668191
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003108 n + A292560 n : ℚ) / 2

end

end A339368.P1823994638864668191

/-! ## A339368.P13853007607484863032

`A339369(n)+A292560(n)`
-/

namespace A339368.P13853007607484863032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339369 n + A292560 n

end

end A339368.P13853007607484863032

/-! ## A339368.P7273728986436752795

`A003108(n)-A339369(n)`
-/

namespace A339368.P7273728986436752795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003108 n - A339369 n

end

end A339368.P7273728986436752795

/-! ## A339368.P17334183356356693901

`A010057(n)+A348522(n)-A339369(n)`
-/

namespace A339368.P17334183356356693901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010057 n + (A348522 n - A339369 n)

end

end A339368.P17334183356356693901

/-! ## A339368.P664858375297845912

`A001281(A292560(n)+A003108(n))`
-/

namespace A339368.P664858375297845912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A292560 n + A003108 n).toNat

end

end A339368.P664858375297845912

/-! ## A339368.P8927787670031323435

`A004525(A292560(n)+A003108(n))`
-/

namespace A339368.P8927787670031323435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A292560 n + A003108 n).toNat

end

end A339368.P8927787670031323435

/-! ## A339368.P14647044151198059041

`A004526(A292560(n)+A003108(n))`
-/

namespace A339368.P14647044151198059041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A292560 n + A003108 n).toNat

end

end A339368.P14647044151198059041

/-! ## A339368.P12137356833772736314

`A110654(A292560(n)+A003108(n))`
-/

namespace A339368.P12137356833772736314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A292560 n + A003108 n).toNat

end

end A339368.P12137356833772736314

/-! ## A339368.P17880224970197793298

`A003108(n)-A004526(A003108(n)-A292560(n))`
-/

namespace A339368.P17880224970197793298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003108 n - A004526 (A003108 n - A292560 n).toNat

end

end A339368.P17880224970197793298

/-!
# A339369: Number of partitions of n into an odd number of cubes.

The programs for A339369, there is no canonical definition to state claims against.
-/

/-! ## A339369.P13111839131940680901

`(A003108(n)-A292560(n))/2`
-/

namespace A339369.P13111839131940680901
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003108 n - A292560 n : ℚ) / 2

end

end A339369.P13111839131940680901

/-! ## A339369.P4937344207516477587

`A003108(n)-A339368(n)`
-/

namespace A339369.P4937344207516477587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003108 n - A339368 n

end

end A339369.P4937344207516477587

/-! ## A339369.P14423957591788943246

`A339368(n)-A292560(n)`
-/

namespace A339369.P14423957591788943246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339368 n - A292560 n

end

end A339369.P14423957591788943246

/-! ## A339369.P4431804334430969434

`A001281(A003108(n)-A292560(n))`
-/

namespace A339369.P4431804334430969434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A003108 n - A292560 n).toNat

end

end A339369.P4431804334430969434

/-! ## A339369.P12388831325480586356

`A004525(A003108(n)-A292560(n))`
-/

namespace A339369.P12388831325480586356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A003108 n - A292560 n).toNat

end

end A339369.P12388831325480586356

/-! ## A339369.P2897624298776229230

`A004526(A003108(n)-A292560(n))`
-/

namespace A339369.P2897624298776229230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A003108 n - A292560 n).toNat

end

end A339369.P2897624298776229230

/-! ## A339369.P1855430091411777988

`A110654(A003108(n)-A292560(n))`
-/

namespace A339369.P1855430091411777988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A003108 n - A292560 n).toNat

end

end A339369.P1855430091411777988

/-!
# A339370: a(n) = Sum_{k=1..floor(n/2)} (n-k) * floor((n-k)/k).

The programs for A339370, the canonical program `A339370.P8095257519437507950` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A339370 has offset 1).

The definition of A339370 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A153485, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A339370.P8095257519437507950

`(n+1)*A002541(n+1)-A153485(n+1)`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A339370

/-- `(n+1)*A002541(n+1)-A153485(n+1)` -/
def P8095257519437507950.Spec : Prop :=
  ∀ n, P8095257519437507950.a n = A339370 (n + 1)

theorem P8095257519437507950.correct : P8095257519437507950.Spec := by
  intro n
  simp only [A339370, Nat.add_sub_cancel]

end A339370

/-! ## A339370.P4219981225807792365

`∑[∑{d}[n+1, 1-#+n]+∑[∏{e}[n, #+1]-1]]`
-/

namespace A339370.P4219981225807792365
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (f4 n), (Nat.factorization (f4 n) p + 1) : ℕ) : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), (1 - (d : ℤ) + (n : ℤ)) + ∑ j ∈ Finset.range (n + 1), f3 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A339370.P4219981225807792365

namespace A339370

/-- `∑[∑{d}[n+1, 1-#+n]+∑[∏{e}[n, #+1]-1]]` -/
def P4219981225807792365.Spec : Prop :=
  ∀ n, P4219981225807792365.a n = A339370 (n + 1)

end A339370

/-! ## A339370.P12890817938732039147

`A024920(n+1)-∑[n]`
-/

namespace A339370.P12890817938732039147
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024920 (n + 1) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A339370.P12890817938732039147

namespace A339370

/-- `A024920(n+1)-∑[n]` -/
def P12890817938732039147.Spec : Prop :=
  ∀ n, P12890817938732039147.a n = A339370 (n + 1)

end A339370

/-! ## A339370.P6677796385285958892

`A355947(n)-A362625(n+1)`
-/

namespace A339370.P6677796385285958892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355947 n - A362625 (n + 1)

end

end A339370.P6677796385285958892

namespace A339370

/-- `A355947(n)-A362625(n+1)` -/
def P6677796385285958892.Spec : Prop :=
  ∀ n, P6677796385285958892.a n = A339370 (n + 1)

theorem P6677796385285958892.correct : P6677796385285958892.Spec := by
  intro n
  simp only [A339370, Nat.add_sub_cancel, A339370.P6677796385285958892.a, A339370.P8095257519437507950.a, A002541, A002541.P10664040244727747136.a, A153485, A153485.P1399869421749084233.a, A355947, A355947.P8187086082936947056.a, A362625, A362625.P11895608257886230771.a, A000217, A000217.P10269402890581615239.a, A004125, A004125.P17154347137318566864.a, A006218, A006218.P9218434490128439557.a, A094471, A094471.P10880822235094612413.a, A161680, A161680.P17206074215489759881.a, A000005, A000005.P16091521709108585461.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A038040, A038040.P16512896840577774730.a, A111490, A111490.P12273219940558635463.f2, A111490.P12273219940558635463.f1, A111490.P12273219940558635463.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A339370

/-! ## A339370.P510023095871093703

`abs(A024920(n+1)-A000217(n))`
-/

namespace A339370.P510023095871093703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A024920 (n + 1) - A000217 n|

end

end A339370.P510023095871093703

namespace A339370

/-- `abs(A024920(n+1)-A000217(n))` -/
def P510023095871093703.Spec : Prop :=
  ∀ n, P510023095871093703.a n = A339370 (n + 1)

end A339370

/-! ## A339370.P11584181889157189572

`A338991(n+1)+A153485(n+1)`
-/

namespace A339370.P11584181889157189572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338991 (n + 1) + A153485 (n + 1)

end

end A339370.P11584181889157189572

namespace A339370

/-- `A338991(n+1)+A153485(n+1)` -/
def P11584181889157189572.Spec : Prop :=
  ∀ n, P11584181889157189572.a n = A339370 (n + 1)

end A339370

/-! ## A339370.P15431692774574978989

`A024920(n+1)+1-A000124(n)`
-/

namespace A339370.P15431692774574978989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024920 (n + 1) + 1 - A000124 n

end

end A339370.P15431692774574978989

namespace A339370

/-- `A024920(n+1)+1-A000124(n)` -/
def P15431692774574978989.Spec : Prop :=
  ∀ n, P15431692774574978989.a n = A339370 (n + 1)

end A339370

/-! ## A339370.P3355315774907505218

`A338991(n+1)+∑[A001065(n+1)]`
-/

namespace A339370.P3355315774907505218
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338991 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A339370.P3355315774907505218

namespace A339370

/-- `A338991(n+1)+∑[A001065(n+1)]` -/
def P3355315774907505218.Spec : Prop :=
  ∀ n, P3355315774907505218.a n = A339370 (n + 1)

end A339370

/-! ## A339370.P1432107211389728524

`A338991(n+1)+∑[A000203(n+1)-(n+1)]`
-/

namespace A339370.P1432107211389728524
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) - (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338991 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A339370.P1432107211389728524

namespace A339370

/-- `A338991(n+1)+∑[A000203(n+1)-(n+1)]` -/
def P1432107211389728524.Spec : Prop :=
  ∀ n, P1432107211389728524.a n = A339370 (n + 1)

end A339370

/-! ## A339370.P16612538328283568066

`A338991(n+1)+∑[∑{d}[n+1, #-A000010(#)]]`
-/

namespace A339370.P16612538328283568066
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), ((d : ℤ) - A000010 d)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338991 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A339370.P16612538328283568066

namespace A339370

/-- `A338991(n+1)+∑[∑{d}[n+1, #-A000010(#)]]` -/
def P16612538328283568066.Spec : Prop :=
  ∀ n, P16612538328283568066.a n = A339370 (n + 1)

end A339370

/-!
# A339371: Number of partitions of n into an even number of Fibonacci parts (with a single type of 1).

The programs for A339371, there is no canonical definition to state claims against.
-/

/-! ## A339371.P6477352448300953735

`(A003107(n)+A298949(n))/2`
-/

namespace A339371.P6477352448300953735
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003107 n + A298949 n : ℚ) / 2

end

end A339371.P6477352448300953735

/-! ## A339371.P12282090965310939016

`A339372(n)+A298949(n)`
-/

namespace A339371.P12282090965310939016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339372 n + A298949 n

end

end A339371.P12282090965310939016

/-! ## A339371.P16752397300455920122

`A003107(n)-A339372(n)`
-/

namespace A339371.P16752397300455920122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003107 n - A339372 n

end

end A339371.P16752397300455920122

/-! ## A339371.P4145321495547856547

`∑[A238999(n)]-A339372(n)`
-/

namespace A339371.P4145321495547856547
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238999 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A339372 n

end

end A339371.P4145321495547856547

/-! ## A339371.P7457037228621029698

`Δ[A007000(n)]-A238999(n+1)-A339372(n)`
-/

namespace A339371.P7457037228621029698
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007000 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A238999 (n + 1) - A339372 n

end

end A339371.P7457037228621029698

/-! ## A339371.P5121271478470155481

`A014682(A298949(n)+A003107(n))`
-/

namespace A339371.P5121271478470155481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A298949 n + A003107 n).toNat

end

end A339371.P5121271478470155481

/-! ## A339371.P10566508350311055736

`A001281(A298949(n)+A003107(n))`
-/

namespace A339371.P10566508350311055736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A298949 n + A003107 n).toNat

end

end A339371.P10566508350311055736

/-! ## A339371.P136696451417466308

`A004525(A298949(n)+A003107(n))`
-/

namespace A339371.P136696451417466308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A298949 n + A003107 n).toNat

end

end A339371.P136696451417466308

/-! ## A339371.P17670508492930120368

`A025480(A298949(n)+A003107(n))`
-/

namespace A339371.P17670508492930120368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A298949 n + A003107 n).toNat

end

end A339371.P17670508492930120368

/-! ## A339371.P9061593180742385770

`A026741(A298949(n)+A003107(n))`
-/

namespace A339371.P9061593180742385770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A298949 n + A003107 n).toNat

end

end A339371.P9061593180742385770

/-!
# A339372: Number of partitions of n into an odd number of Fibonacci parts (with a single type of 1).

The programs for A339372, there is no canonical definition to state claims against.
-/

/-! ## A339372.P15095622387701521272

`(A003107(n)-A298949(n))/2`
-/

namespace A339372.P15095622387701521272
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003107 n - A298949 n : ℚ) / 2

end

end A339372.P15095622387701521272

/-! ## A339372.P438250146554963945

`A003107(n)-A339371(n)`
-/

namespace A339372.P438250146554963945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003107 n - A339371 n

end

end A339372.P438250146554963945

/-! ## A339372.P6346187982770304738

`A339371(n)-A298949(n)`
-/

namespace A339372.P6346187982770304738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339371 n - A298949 n

end

end A339372.P6346187982770304738

/-! ## A339372.P11569834584024188181

`∑[A238999(n)]-A339371(n)`
-/

namespace A339372.P11569834584024188181
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238999 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A339371 n

end

end A339372.P11569834584024188181

/-! ## A339372.P11020840846874418176

`A014682(A003107(n)-A298949(n))`
-/

namespace A339372.P11020840846874418176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A003107 n - A298949 n).toNat

end

end A339372.P11020840846874418176

/-! ## A339372.P8551533823137948434

`A001281(A003107(n)-A298949(n))`
-/

namespace A339372.P8551533823137948434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A003107 n - A298949 n).toNat

end

end A339372.P8551533823137948434

/-! ## A339372.P14586416583385000730

`A004525(A003107(n)-A298949(n))`
-/

namespace A339372.P14586416583385000730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A003107 n - A298949 n).toNat

end

end A339372.P14586416583385000730

/-! ## A339372.P15161743735612141931

`A025480(A003107(n)-A298949(n))`
-/

namespace A339372.P15161743735612141931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A003107 n - A298949 n).toNat

end

end A339372.P15161743735612141931

/-! ## A339372.P856179782277281110

`A026741(A003107(n)-A298949(n))`
-/

namespace A339372.P856179782277281110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A003107 n - A298949 n).toNat

end

end A339372.P856179782277281110

/-! ## A339372.P15632206962152961098

`A029578(A003107(n)-A298949(n))`
-/

namespace A339372.P15632206962152961098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029578 (A003107 n - A298949 n).toNat

end

end A339372.P15632206962152961098

/-!
# A339373: Number of partitions of n into an even number of triangular numbers.

The programs for A339373, there is no canonical definition to state claims against.
-/

/-! ## A339373.P9856562694284097668

`(A007294(n)+A292519(n))/2`
-/

namespace A339373.P9856562694284097668
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007294 n + A292519 n : ℚ) / 2

end

end A339373.P9856562694284097668

/-! ## A339373.P16510613333825235445

`A339374(n)+A292519(n)`
-/

namespace A339373.P16510613333825235445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339374 n + A292519 n

end

end A339373.P16510613333825235445

/-! ## A339373.P3761758225859753489

`A007294(n)-A339374(n)`
-/

namespace A339373.P3761758225859753489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007294 n - A339374 n

end

end A339373.P3761758225859753489

/-! ## A339373.P13690012563054125292

`∑[A303906(n)]-A339374(n)`
-/

namespace A339373.P13690012563054125292
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303906 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A339374 n

end

end A339373.P13690012563054125292

/-! ## A339373.P5137463754181321329

`abs(Δ[A302835(abs(1-n))])-A339374(n)`
-/

namespace A339373.P5137463754181321329
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302835 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n| - A339374 n

end

end A339373.P5137463754181321329

/-! ## A339373.P14002693044359058356

`A014682(A292519(n)+A007294(n))`
-/

namespace A339373.P14002693044359058356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A292519 n + A007294 n).toNat

end

end A339373.P14002693044359058356

/-! ## A339373.P9173589322927774931

`A001281(A292519(n)+A007294(n))`
-/

namespace A339373.P9173589322927774931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A292519 n + A007294 n).toNat

end

end A339373.P9173589322927774931

/-! ## A339373.P3477173797617033701

`A004525(A292519(n)+A007294(n))`
-/

namespace A339373.P3477173797617033701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A292519 n + A007294 n).toNat

end

end A339373.P3477173797617033701

/-! ## A339373.P13424549810792547670

`A025480(A292519(n)+A007294(n))`
-/

namespace A339373.P13424549810792547670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A292519 n + A007294 n).toNat

end

end A339373.P13424549810792547670

/-! ## A339373.P13426896634536789068

`A078898(A292519(n)+A007294(n))`
-/

namespace A339373.P13426896634536789068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078898 (A292519 n + A007294 n).toNat

end

end A339373.P13426896634536789068

/-!
# A339374: Number of partitions of n into an odd number of triangular numbers.

The programs for A339374, there is no canonical definition to state claims against.
-/

/-! ## A339374.P16458062425892722739

`(A007294(n)-A292519(n))/2`
-/

namespace A339374.P16458062425892722739
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007294 n - A292519 n : ℚ) / 2

end

end A339374.P16458062425892722739

/-! ## A339374.P11862550259304895823

`A007294(n)-A339373(n)`
-/

namespace A339374.P11862550259304895823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007294 n - A339373 n

end

end A339374.P11862550259304895823

/-! ## A339374.P14051779673951308272

`A339373(n)-A292519(n)`
-/

namespace A339374.P14051779673951308272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339373 n - A292519 n

end

end A339374.P14051779673951308272

/-! ## A339374.P7049140855001489254

`∑[A303906(n)]-A339373(n)`
-/

namespace A339374.P7049140855001489254
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303906 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A339373 n

end

end A339374.P7049140855001489254

/-! ## A339374.P10691368637644401685

`abs(Δ[A302835(abs(1-n))])-A339373(n)`
-/

namespace A339374.P10691368637644401685
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302835 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n| - A339373 n

end

end A339374.P10691368637644401685

/-! ## A339374.P13613757994342999723

`A014682(A007294(n)-A292519(n))`
-/

namespace A339374.P13613757994342999723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A007294 n - A292519 n).toNat

end

end A339374.P13613757994342999723

/-! ## A339374.P7620509203313823993

`A001281(A007294(n)-A292519(n))`
-/

namespace A339374.P7620509203313823993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A007294 n - A292519 n).toNat

end

end A339374.P7620509203313823993

/-! ## A339374.P6801731167769615782

`A004525(A007294(n)-A292519(n))`
-/

namespace A339374.P6801731167769615782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A007294 n - A292519 n).toNat

end

end A339374.P6801731167769615782

/-! ## A339374.P5135582633138230977

`A025480(A007294(n)-A292519(n))`
-/

namespace A339374.P5135582633138230977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A007294 n - A292519 n).toNat

end

end A339374.P5135582633138230977

/-! ## A339374.P7364319655265817937

`A078898(A007294(n)-A292519(n))`
-/

namespace A339374.P7364319655265817937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078898 (A007294 n - A292519 n).toNat

end

end A339374.P7364319655265817937

/-!
# A339375: Number of partitions of n into an even number of distinct triangular numbers.

The programs for A339375, there is no canonical definition to state claims against.
-/

/-! ## A339375.P17711186186448433605

`(A024940(n)+A292518(n))/2`
-/

namespace A339375.P17711186186448433605
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A024940 n + A292518 n : ℚ) / 2

end

end A339375.P17711186186448433605

/-! ## A339375.P822340881119300469

`A014682(A292518(n)+A024940(n))`
-/

namespace A339375.P822340881119300469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A292518 n + A024940 n).toNat

end

end A339375.P822340881119300469

/-! ## A339375.P1201948586806291088

`A001281(A292518(n)+A024940(n))`
-/

namespace A339375.P1201948586806291088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A292518 n + A024940 n).toNat

end

end A339375.P1201948586806291088

/-! ## A339375.P13668264769263751236

`A004525(A292518(n)+A024940(n))`
-/

namespace A339375.P13668264769263751236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A292518 n + A024940 n).toNat

end

end A339375.P13668264769263751236

/-! ## A339375.P2004824569858168693

`A004526(A292518(n)+A024940(n))`
-/

namespace A339375.P2004824569858168693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A292518 n + A024940 n).toNat

end

end A339375.P2004824569858168693

/-! ## A339375.P10575837162979102865

`A006370(A292518(n)+A024940(n))`
-/

namespace A339375.P10575837162979102865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006370 (A292518 n + A024940 n).toNat

end

end A339375.P10575837162979102865

/-! ## A339375.P14093336770938198965

`abs(A001057(A292518(n)+A024940(n)))`
-/

namespace A339375.P14093336770938198965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A001057 (A292518 n + A024940 n).toNat|

end

end A339375.P14093336770938198965

/-! ## A339375.P3659382047476708282

`A339376(n)+A292518(n)`
-/

namespace A339375.P3659382047476708282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339376 n + A292518 n

end

end A339375.P3659382047476708282

/-! ## A339375.P5284634797033983266

`A024940(n)-A339376(n)`
-/

namespace A339375.P5284634797033983266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024940 n - A339376 n

end

end A339375.P5284634797033983266

/-! ## A339375.P5221911372797693109

`A348528(n)+char[∑[n]]-A339376(n)`
-/

namespace A339375.P5221911372797693109
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348528 n + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) - A339376 n

end

end A339375.P5221911372797693109

/-!
# A339376: Number of partitions of n into an odd number of distinct triangular numbers.

The programs for A339376, there is no canonical definition to state claims against.
-/

/-! ## A339376.P2377688003111103874

`(A024940(n)-A292518(n))/2`
-/

namespace A339376.P2377688003111103874
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A024940 n - A292518 n : ℚ) / 2

end

end A339376.P2377688003111103874

/-! ## A339376.P6193891800746802386

`A024940(n)-A339375(n)`
-/

namespace A339376.P6193891800746802386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024940 n - A339375 n

end

end A339376.P6193891800746802386

/-! ## A339376.P9235795949790491812

`A339375(n)-A292518(n)`
-/

namespace A339376.P9235795949790491812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339375 n - A292518 n

end

end A339376.P9235795949790491812

/-! ## A339376.P11558991933876746070

`A001281(A024940(n)-A292518(n))`
-/

namespace A339376.P11558991933876746070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A024940 n - A292518 n).toNat

end

end A339376.P11558991933876746070

/-! ## A339376.P15970480100192643100

`A004525(A024940(n)-A292518(n))`
-/

namespace A339376.P15970480100192643100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A024940 n - A292518 n).toNat

end

end A339376.P15970480100192643100

/-! ## A339376.P431562697174964570

`A004526(A024940(n)-A292518(n))`
-/

namespace A339376.P431562697174964570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A024940 n - A292518 n).toNat

end

end A339376.P431562697174964570

/-! ## A339376.P7575882387609234804

`A006370(A024940(n)-A292518(n))`
-/

namespace A339376.P7575882387609234804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006370 (A024940 n - A292518 n).toNat

end

end A339376.P7575882387609234804

/-! ## A339376.P3730060728658342372

`A014682(A024940(n)-A292518(n))`
-/

namespace A339376.P3730060728658342372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A024940 n - A292518 n).toNat

end

end A339376.P3730060728658342372

/-! ## A339376.P3797373724445060297

`abs(A001057(A024940(n)-A292518(n)))`
-/

namespace A339376.P3797373724445060297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A001057 (A024940 n - A292518 n).toNat|

end

end A339376.P3797373724445060297

/-! ## A339376.P482747768085369612

`A348528(n)+char[∑[n]]-A339375(n)`
-/

namespace A339376.P482747768085369612
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348528 n + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) - A339375 n

end

end A339376.P482747768085369612

/-!
# A339377: Number of triples (x, y, z) of natural numbers satisfying x+y = n and 2*x*y = z^2.

The programs for A339377, there is no canonical definition to state claims against.
-/

/-! ## A339377.P8236066023863738637

`ceil(cosh(log(A033715(n²))))`
-/

namespace A339377.P8236066023863738637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.cosh (Real.log (A033715 (n ^ 2) : ℝ))⌉

end

end A339377.P8236066023863738637

/-! ## A339377.P6503068204772150698

`ceil(cosh(sin(n)))*A218799(n)`
-/

namespace A339377.P6503068204772150698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.cosh (Real.sin (n : ℝ))⌉ * A218799 n

end

end A339377.P6503068204772150698

/-! ## A339377.P3666638851451694129

`floor(A139093(n²)/2)+1`
-/

namespace A339377.P3666638851451694129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A139093 (n ^ 2) : ℚ) / 2⌋ + 1

end

end A339377.P3666638851451694129

/-! ## A339377.P10604347162746350355

`floor(A226225(n²)/2)+1`
-/

namespace A339377.P10604347162746350355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A226225 (n ^ 2) : ℚ) / 2⌋ + 1

end

end A339377.P10604347162746350355

/-! ## A339377.P11434882921326157111

`A008619(A033715(n²))`
-/

namespace A339377.P11434882921326157111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A033715 (n ^ 2)).toNat

end

end A339377.P11434882921326157111

/-! ## A339377.P2199092562741456902

`A008619(A139093(n²))`
-/

namespace A339377.P2199092562741456902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A139093 (n ^ 2)).toNat

end

end A339377.P2199092562741456902

/-! ## A339377.P1563698208335690269

`A036453(n+1)*A218799(n)`
-/

namespace A339377.P1563698208335690269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036453 (n + 1) * A218799 n

end

end A339377.P1563698208335690269

/-! ## A339377.P10874356454879175861

`A036452(2*n+1)*A218799(n)`
-/

namespace A339377.P10874356454879175861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036452 (2 * n + 1) * A218799 n

end

end A339377.P10874356454879175861

/-! ## A339377.P7469299031500804178

`A000032(C(2, n+2))*A218799(n)`
-/

namespace A339377.P7469299031500804178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (Nat.choose 2 (n + 2)) * A218799 n

end

end A339377.P7469299031500804178

/-!
# A339378: Let n be a positive integer. For each prime divisor p of n, consider the highest power of p which does not exceed n. The sum a(n) of these powers is defined as the power-sum of n.

The programs for A339378, there is no canonical definition to state claims against.
-/

/-! ## A339378.P2569087283304138840

`A008475(A064446(n+1))`
-/

namespace A339378.P2569087283304138840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008475 (A064446 (n + 1)).toNat

end

end A339378.P2569087283304138840

/-! ## A339378.P17007768639038025143

`A008475((n+1)*A133910(n+1))`
-/

namespace A339378.P17007768639038025143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008475 ((n + 1 : ℤ) * A133910 (n + 1)).toNat

end

end A339378.P17007768639038025143

/-! ## A339378.P5236794646605955172

`A008475(A133900(n+1)/(n+1))`
-/

namespace A339378.P5236794646605955172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008475 (SequenceMachineLib.roundAway ((A133900 (n + 1) : ℚ) / (n + 1 : ℚ))).toNat

end

end A339378.P5236794646605955172

/-! ## A339378.P4192390513374894852

`∑{d}[A064446(n+1), A092509(#)]`
-/

namespace A339378.P4192390513374894852
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064446 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A092509 d

end

end A339378.P4192390513374894852

/-! ## A339378.P13213199425301389358

`A222416(A064446(n+1))-A000007(n)`
-/

namespace A339378.P13213199425301389358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222416 (A064446 (n + 1)).toNat - A000007 n

end

end A339378.P13213199425301389358

/-! ## A339378.P14328454544362559953

`A057427(n)*A222416(A064446(n+1))`
-/

namespace A339378.P14328454544362559953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A222416 (A064446 (n + 1)).toNat

end

end A339378.P14328454544362559953

/-! ## A339378.P9738660072722936206

`A222416(A064446(n+1))%A008574(n)`
-/

namespace A339378.P9738660072722936206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A222416 (A064446 (n + 1)).toNat) (A008574 n)

end

end A339378.P9738660072722936206

/-! ## A339378.P11635800452398569463

`and(A057428(n), A222416(A064446(n+1)))`
-/

namespace A339378.P11635800452398569463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A057428 n) (A222416 (A064446 (n + 1)).toNat)

end

end A339378.P11635800452398569463

/-!
# A339379: Irregular triangle read by rows; the first row simply contains the value 1; given the succession of digits of the n-th row, say [d_0, ..., d_k], the (n+1)-th row is the succession of digits of [d_0, d_0+d_1, d_1+d_2, ..., d_{k-1}+d_k, d_k].

The programs for A339379, there is no canonical definition to state claims against.
-/

/-! ## A339379.P10074560778362975966

`A007318(n)%A088645(n+2)`
-/

namespace A339379.P10074560778362975966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007318 n) (A088645 (n + 2))

end

end A339379.P10074560778362975966

/-! ## A339379.P14714845573450553765

`abs(A108086(n))%A088645(n+2)`
-/

namespace A339379.P14714845573450553765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod |A108086 n| (A088645 (n + 2))

end

end A339379.P14714845573450553765

/-! ## A339379.P15362029192362840197

`sqrt(A008459(n))%A088645(n+2)`
-/

namespace A339379.P15362029192362840197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway (Real.sqrt (A008459 n : ℝ))) (A088645 (n + 2))

end

end A339379.P15362029192362840197

/-! ## A339379.P3811599244785683961

`Δ[A102363(n)]%A088645(n+2)`
-/

namespace A339379.P3811599244785683961
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102363 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) (A088645 (n + 2))

end

end A339379.P3811599244785683961

/-! ## A339379.P14438588569789245980

`A007318(n)%A070393(A018142(n))`
-/

namespace A339379.P14438588569789245980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007318 n) (A070393 (A018142 n).toNat)

end

end A339379.P14438588569789245980

/-!
# A339380: Number of partitions of n into an even number of primes (counting 1 as a prime).

The programs for A339380, there is no canonical definition to state claims against.
-/

/-! ## A339380.P5705247737917708299

`(A034891(n)+A338826(n))/2`
-/

namespace A339380.P5705247737917708299
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A034891 n + A338826 n : ℚ) / 2

end

end A339380.P5705247737917708299

/-! ## A339380.P13185767775798235446

`∑[A338826(n)+A184199(n)]`
-/

namespace A339380.P13185767775798235446
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338826 n + A184199 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A339380.P13185767775798235446

/-! ## A339380.P3046634916140783114

`A338826(n)+∑[A184198(n)-A338826(n)]`
-/

namespace A339380.P3046634916140783114
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184198 n - A338826 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338826 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A339380.P3046634916140783114

/-! ## A339380.P16978583504648911245

`A339381(n)+A338826(n)`
-/

namespace A339380.P16978583504648911245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339381 n + A338826 n

end

end A339380.P16978583504648911245

/-! ## A339380.P15242790490879761411

`A034891(n)-A339381(n)`
-/

namespace A339380.P15242790490879761411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034891 n - A339381 n

end

end A339380.P15242790490879761411

/-! ## A339380.P9866947004441853773

`∑[A000607(n)]-A339381(n)`
-/

namespace A339380.P9866947004441853773
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000607 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A339381 n

end

end A339380.P9866947004441853773

/-! ## A339380.P654522219123837245

`A339381(n+1)-A184199(n+1)`
-/

namespace A339380.P654522219123837245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339381 (n + 1) - A184199 (n + 1)

end

end A339380.P654522219123837245

/-! ## A339380.P2218999437399478830

`A184198(n+1)+A339381(n+1)-A000607(n+1)`
-/

namespace A339380.P2218999437399478830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184198 (n + 1) + (A339381 (n + 1) - A000607 (n + 1))

end

end A339380.P2218999437399478830

/-! ## A339380.P6508421131510013203

`∑[A046676(n)-A192541(n)]-A339381(n)`
-/

namespace A339380.P6508421131510013203
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046676 n - A192541 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A339381 n

end

end A339380.P6508421131510013203

/-! ## A339380.P4984799190571460829

`A014682(A338826(n)+A034891(n))`
-/

namespace A339380.P4984799190571460829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A338826 n + A034891 n).toNat

end

end A339380.P4984799190571460829

/-!
# A339381: Number of partitions of n into an odd number of primes (counting 1 as a prime).

The programs for A339381, there is no canonical definition to state claims against.
-/

/-! ## A339381.P8519928452377938833

`(A034891(n)-A338826(n))/2`
-/

namespace A339381.P8519928452377938833
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A034891 n - A338826 n : ℚ) / 2

end

end A339381.P8519928452377938833

/-! ## A339381.P9506941985965371990

`A034891(n)-A339380(n)`
-/

namespace A339381.P9506941985965371990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034891 n - A339380 n

end

end A339381.P9506941985965371990

/-! ## A339381.P1533028170387090942

`A339380(n)-A338826(n)`
-/

namespace A339381.P1533028170387090942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339380 n - A338826 n

end

end A339381.P1533028170387090942

/-! ## A339381.P18193089028499557675

`∑[A000607(n)]-A339380(n)`
-/

namespace A339381.P18193089028499557675
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000607 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A339380 n

end

end A339381.P18193089028499557675

/-! ## A339381.P6487182240387343327

`∑[A184198(n)-A338826(n)]`
-/

namespace A339381.P6487182240387343327
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184198 n - A338826 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A339381.P6487182240387343327

/-! ## A339381.P7259093729681896210

`A339380(n+1)-A184198(n+1)`
-/

namespace A339381.P7259093729681896210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339380 (n + 1) - A184198 (n + 1)

end

end A339381.P7259093729681896210

/-! ## A339381.P5651695200607897093

`∑[A338826(n)+A184199(n)]-A338826(n)`
-/

namespace A339381.P5651695200607897093
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338826 n + A184199 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A338826 n

end

end A339381.P5651695200607897093

/-! ## A339381.P14930941376742057642

`A184199(n+1)+A339380(n+1)-A000607(n+1)`
-/

namespace A339381.P14930941376742057642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184199 (n + 1) + (A339380 (n + 1) - A000607 (n + 1))

end

end A339381.P14930941376742057642

/-! ## A339381.P16002722612955910040

`∑[A046676(n)-A192541(n)]-A339380(n)`
-/

namespace A339381.P16002722612955910040
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046676 n - A192541 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A339380 n

end

end A339381.P16002722612955910040

/-! ## A339381.P15851583477456125155

`A014682(A034891(n)-A338826(n))`
-/

namespace A339381.P15851583477456125155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A034891 n - A338826 n).toNat

end

end A339381.P15851583477456125155

/-!
# A339382: Number of partitions of n into an even number of distinct primes (counting 1 as a prime).

The programs for A339382, there is no canonical definition to state claims against.
-/

/-! ## A339382.P14847600588224977679

`(A036497(n)+A298602(n))/2`
-/

namespace A339382.P14847600588224977679
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A036497 n + A298602 n : ℚ) / 2

end

end A339382.P14847600588224977679

/-! ## A339382.P10058000320340272936

`A298604(lcm(2, n)%(n+2))`
-/

namespace A339382.P10058000320340272936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298604 (Nat.lcm 2 n % (n + 2))

end

end A339382.P10058000320340272936

/-! ## A339382.P5169074897779143857

`A339383(n)+A298602(n)`
-/

namespace A339382.P5169074897779143857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339383 n + A298602 n

end

end A339382.P5169074897779143857

/-! ## A339382.P2691638095134698459

`A036497(n)-A339383(n)`
-/

namespace A339382.P2691638095134698459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036497 n - A339383 n

end

end A339382.P2691638095134698459

/-! ## A339382.P5903753939221059551

`A298604(A109043(n)%(n+2))`
-/

namespace A339382.P5903753939221059551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298604 (Int.tmod (A109043 n) (n + 2 : ℤ)).toNat

end

end A339382.P5903753939221059551

/-! ## A339382.P3302484055505802666

`A184172(abs(1-n))+A184171(n)`
-/

namespace A339382.P3302484055505802666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184172 |1 - (n : ℤ)|.toNat + A184171 n

end

end A339382.P3302484055505802666

/-! ## A339382.P10798997421010997511

`A184171(n)+A024937(A004442(n))`
-/

namespace A339382.P10798997421010997511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184171 n + A024937 (A004442 n).toNat

end

end A339382.P10798997421010997511

/-! ## A339382.P6707448288433808630

`A001281(A298602(n)+A036497(n))`
-/

namespace A339382.P6707448288433808630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A298602 n + A036497 n).toNat

end

end A339382.P6707448288433808630

/-! ## A339382.P11206815823878666805

`A004525(A298602(n)+A036497(n))`
-/

namespace A339382.P11206815823878666805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A298602 n + A036497 n).toNat

end

end A339382.P11206815823878666805

/-! ## A339382.P5878338391479956473

`A004526(A298602(n)+A036497(n))`
-/

namespace A339382.P5878338391479956473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A298602 n + A036497 n).toNat

end

end A339382.P5878338391479956473

/-!
# A339383: Number of partitions of n into an odd number of distinct primes (counting 1 as a prime).

The programs for A339383, there is no canonical definition to state claims against.
-/

/-! ## A339383.P6207369259541667927

`(A036497(n)-A298602(n))/2`
-/

namespace A339383.P6207369259541667927
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A036497 n - A298602 n : ℚ) / 2

end

end A339383.P6207369259541667927

/-! ## A339383.P827155604240951079

`A184172(n)+A184171(abs(1-n))`
-/

namespace A339383.P827155604240951079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184172 n + A184171 |1 - (n : ℤ)|.toNat

end

end A339383.P827155604240951079

/-! ## A339383.P2907997217191760714

`A036497(n)-A298604(lcm(2, n)%(n+2))`
-/

namespace A339383.P2907997217191760714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036497 n - A298604 (Nat.lcm 2 n % (n + 2))

end

end A339383.P2907997217191760714

/-! ## A339383.P17371828046147854416

`A184172(n)+A024937(A014681(n))`
-/

namespace A339383.P17371828046147854416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184172 n + A024937 (A014681 n).toNat

end

end A339383.P17371828046147854416

/-! ## A339383.P16969489950206330402

`A036497(n)-A339382(n)`
-/

namespace A339383.P16969489950206330402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036497 n - A339382 n

end

end A339383.P16969489950206330402

/-! ## A339383.P16564885796046772048

`A339382(n)-A298602(n)`
-/

namespace A339383.P16564885796046772048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339382 n - A298602 n

end

end A339383.P16564885796046772048

/-! ## A339383.P13877625058985069903

`A339382(n)-Δ[A046675(abs(1-n))]`
-/

namespace A339383.P13877625058985069903
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046675 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339382 n - (f1 (n + 1) - f1 n)

end

end A339383.P13877625058985069903

/-! ## A339383.P8359839946665662532

`A001281(A036497(n)-A298602(n))`
-/

namespace A339383.P8359839946665662532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A036497 n - A298602 n).toNat

end

end A339383.P8359839946665662532

/-! ## A339383.P10026905768741092079

`A004525(A036497(n)-A298602(n))`
-/

namespace A339383.P10026905768741092079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A036497 n - A298602 n).toNat

end

end A339383.P10026905768741092079

/-! ## A339383.P2263721022530015099

`A004526(A036497(n)-A298602(n))`
-/

namespace A339383.P2263721022530015099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A036497 n - A298602 n).toNat

end

end A339383.P2263721022530015099

/-!
# A339385: a(n) = (smallest prime >= A002182(n)) - (largest prime <= A002182(n)).

The programs for A339385, there is no canonical definition to state claims against.
-/

/-! ## A339385.P17672799707956788150

`A324385(n+2)+A141345(n+2)%A129912(n+1)`
-/

namespace A339385.P17672799707956788150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324385 (n + 2) + Int.tmod (A141345 (n + 2)) (A129912 (n + 1))

end

end A339385.P17672799707956788150

/-! ## A339385.P15916656696442346550

`(A324385(n+2)+A141345(n+2))%A228945(n+4)`
-/

namespace A339385.P15916656696442346550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A324385 (n + 2) + A141345 (n + 2)) (A228945 (n + 4))

end

end A339385.P15916656696442346550

/-! ## A339385.P8461884700559079866

`A166597(∑[A262501(n+1)])%(3^n)`
-/

namespace A339385.P8461884700559079866
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262501 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A166597 (∑ j ∈ Finset.range (n + 1), f1 j).toNat) (3 ^ n : ℤ)

end

end A339385.P8461884700559079866

/-! ## A339385.P15347041432403634333

`A000040(n+1)%2*A166597(∑[A262501(n+1)])`
-/

namespace A339385.P15347041432403634333
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262501 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (n + 1)) 2 * A166597 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A339385.P15347041432403634333

/-! ## A339385.P17379442924599535970

`A000045(n²%(n+1))*A166597(∑[A262501(n+1)])`
-/

namespace A339385.P17379442924599535970
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262501 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n ^ 2 % (n + 1)) * A166597 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A339385.P17379442924599535970

/-!
# A339395: Number of partitions of n into an even number of nonprime parts.

The programs for A339395, there is no canonical definition to state claims against.
-/

/-! ## A339395.P6851936133100635119

`(A002095(n)+A302236(n))/2`
-/

namespace A339395.P6851936133100635119
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002095 n + A302236 n : ℚ) / 2

end

end A339395.P6851936133100635119

/-! ## A339395.P10406640094501277497

`A339396(n)+A302236(n)`
-/

namespace A339395.P10406640094501277497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339396 n + A302236 n

end

end A339395.P10406640094501277497

/-! ## A339395.P9145319157737090941

`A002095(n)-A339396(n)`
-/

namespace A339395.P9145319157737090941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002095 n - A339396 n

end

end A339395.P9145319157737090941

/-! ## A339395.P12199024816558138446

`∑[A023895(n)]-A339396(n)`
-/

namespace A339395.P12199024816558138446
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023895 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A339396 n

end

end A339395.P12199024816558138446

/-! ## A339395.P4725026491177965679

`A000041(n)-(A339396(n)+A235945(n))`
-/

namespace A339395.P4725026491177965679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - (A339396 n + A235945 n)

end

end A339395.P4725026491177965679

/-! ## A339395.P3244837161178873400

`∑[A002865(n)]-(A339396(n)+A235945(n))`
-/

namespace A339395.P3244837161178873400
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (A339396 n + A235945 n)

end

end A339395.P3244837161178873400

/-! ## A339395.P1184875245676790834

`A222656(∑[A110654(n)])-A339396(n)`
-/

namespace A339395.P1184875245676790834
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222656 (∑ j ∈ Finset.range (n + 1), f1 j).toNat - A339396 n

end

end A339395.P1184875245676790834

/-! ## A339395.P5247719218997806139

`A222656(A076921(n+1))-A339396(n)`
-/

namespace A339395.P5247719218997806139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222656 (A076921 (n + 1)).toNat - A339396 n

end

end A339395.P5247719218997806139

/-! ## A339395.P8876605909024763598

`A014682(A302236(n)+A002095(n))`
-/

namespace A339395.P8876605909024763598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A302236 n + A002095 n).toNat

end

end A339395.P8876605909024763598

/-!
# A339396: Number of partitions of n into an odd number of nonprime parts.

The programs for A339396, there is no canonical definition to state claims against.
-/

/-! ## A339396.P8619820359523906181

`(A002095(n)-A302236(n))/2`
-/

namespace A339396.P8619820359523906181
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002095 n - A302236 n : ℚ) / 2

end

end A339396.P8619820359523906181

/-! ## A339396.P10523689641604342910

`A002095(n)-A339395(n)`
-/

namespace A339396.P10523689641604342910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002095 n - A339395 n

end

end A339396.P10523689641604342910

/-! ## A339396.P23252033777913042

`A339395(n)-A302236(n)`
-/

namespace A339396.P23252033777913042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339395 n - A302236 n

end

end A339396.P23252033777913042

/-! ## A339396.P10173940152889766533

`∑[A023895(n)]-A339395(n)`
-/

namespace A339396.P10173940152889766533
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023895 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A339395 n

end

end A339396.P10173940152889766533

/-! ## A339396.P3439141357500905560

`∑[A002865(n)]-(A339395(n)+A235945(n))`
-/

namespace A339396.P3439141357500905560
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (A339395 n + A235945 n)

end

end A339396.P3439141357500905560

/-! ## A339396.P17813455480052161059

`A222656(A076921(n+1))-A339395(n)`
-/

namespace A339396.P17813455480052161059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222656 (A076921 (n + 1)).toNat - A339395 n

end

end A339396.P17813455480052161059

/-! ## A339396.P11871381989890707987

`A014682(A002095(n)-A302236(n))`
-/

namespace A339396.P11871381989890707987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A002095 n - A302236 n).toNat

end

end A339396.P11871381989890707987

/-!
# A339397: Number of partitions of n into an even number of relatively prime parts.

The programs for A339397, there is no canonical definition to state claims against.
-/

/-! ## A339397.P10276661510429770806

`A000837(n+1)-A339398(n+1)`
-/

namespace A339397.P10276661510429770806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000837 (n + 1) - A339398 (n + 1)

end

end A339397.P10276661510429770806

/-! ## A339397.P10010647596808130745

`A000041(n+1)-(A339398(n+1)+A018783(n+1))`
-/

namespace A339397.P10010647596808130745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (n + 1) - (A339398 (n + 1) + A018783 (n + 1))

end

end A339397.P10010647596808130745

/-! ## A339397.P12699450387704683454

`record[A035363(n)]-(A339398(n+1)+A018783(n+1))`
-/

namespace A339397.P12699450387704683454
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - (A339398 (n + 1) + A018783 (n + 1))

end

end A339397.P12699450387704683454

/-! ## A339397.P5279438534894014427

`A168532(∑[n]+1)-A339398(n+1)`
-/

namespace A339397.P5279438534894014427
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168532 (∑ j ∈ Finset.range (n + 1), f1 j + 1) - A339398 (n + 1)

end

end A339397.P5279438534894014427

/-! ## A339397.P7917598991157348669

`A303386(A000079(n+1))-A339398(n+1)`
-/

namespace A339397.P7917598991157348669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303386 (A000079 (n + 1)).toNat - A339398 (n + 1)

end

end A339397.P7917598991157348669

/-!
# A339398: Number of partitions of n into an odd number of relatively prime parts.

The programs for A339398, there is no canonical definition to state claims against.
-/

/-! ## A339398.P17918167336575412580

`A000837(n+1)-A339397(n+1)`
-/

namespace A339398.P17918167336575412580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000837 (n + 1) - A339397 (n + 1)

end

end A339398.P17918167336575412580

/-! ## A339398.P9045373381705215639

`A000041(n+1)-(A339397(n+1)+A018783(n+1))`
-/

namespace A339398.P9045373381705215639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (n + 1) - (A339397 (n + 1) + A018783 (n + 1))

end

end A339398.P9045373381705215639

/-! ## A339398.P13527091387528450355

`A168532(∑[n]+1)-A339397(n+1)`
-/

namespace A339398.P13527091387528450355
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168532 (∑ j ∈ Finset.range (n + 1), f1 j + 1) - A339397 (n + 1)

end

end A339398.P13527091387528450355

/-! ## A339398.P14656813973539653619

`A319811(A044914(n+1))-A339397(n+1)`
-/

namespace A339398.P14656813973539653619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319811 (A044914 (n + 1)).toNat - A339397 (n + 1)

end

end A339398.P14656813973539653619

/-! ## A339398.P5339184116865938755

`A027187(n)+A025459(A027187(3*n+1))`
-/

namespace A339398.P5339184116865938755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027187 n + A025459 (A027187 (3 * n + 1)).toNat

end

end A339398.P5339184116865938755

/-!
# A339399: Pairwise listing of the partitions of k into two parts (s,t), with 0 < s <= t ordered by increasing values of s and where k = 2,3,... .

The programs for A339399, there is no canonical definition to state claims against.
-/

/-! ## A339399.P1504495374150147994

`A339443(A103889(n+1))`
-/

namespace A339399.P1504495374150147994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339443 (A103889 (n + 1)).toNat

end

end A339399.P1504495374150147994

/-! ## A339399.P12146240429761266730

`A097283(n+1)-n%2`
-/

namespace A339399.P12146240429761266730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097283 (n + 1) - ((n % 2 : ℕ) : ℤ)

end

end A339399.P12146240429761266730

/-! ## A339399.P16897080667198386747

`A097283(n+1)-A000035(n)`
-/

namespace A339399.P16897080667198386747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097283 (n + 1) - A000035 n

end

end A339399.P16897080667198386747

/-! ## A339399.P3012615517822489232

`A097283(n+1)-A372584(n)`
-/

namespace A339399.P3012615517822489232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097283 (n + 1) - A372584 n

end

end A339399.P3012615517822489232

/-! ## A339399.P13806463551171698366

`A097283(n+1)-abs(A131734(n))`
-/

namespace A339399.P13806463551171698366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097283 (n + 1) - |A131734 n|

end

end A339399.P13806463551171698366

/-! ## A339399.P9859409154253382637

`A097283(n+1)-abs(A134452(n))`
-/

namespace A339399.P9859409154253382637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097283 (n + 1) - |A134452 n|

end

end A339399.P9859409154253382637

/-! ## A339399.P5199161443919045978

`A097283(n+1)-abs(A188510(n))`
-/

namespace A339399.P5199161443919045978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097283 (n + 1) - |A188510 n|

end

end A339399.P5199161443919045978

/-! ## A339399.P3057174396978116844

`A097283(n+1)-A131734(n²)`
-/

namespace A339399.P3057174396978116844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097283 (n + 1) - A131734 (n ^ 2)

end

end A339399.P3057174396978116844

/-! ## A339399.P2012391877939468777

`A097283(n+1)-A188510(n²)`
-/

namespace A339399.P2012391877939468777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097283 (n + 1) - A188510 (n ^ 2)

end

end A339399.P2012391877939468777

/-! ## A339399.P9701749574261238633

`A097283(n+1)-log2(A000034(n))`
-/

namespace A339399.P9701749574261238633
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A097283 (n + 1) : ℝ) - Real.logb 2 (A000034 n : ℝ)

end

end A339399.P9701749574261238633

