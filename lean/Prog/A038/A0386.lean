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
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C028
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C033
import Seq.B000.C036
import Seq.B000.C037
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
# A038600: Primes of the form k^3 - 2.

The programs for A038600, there is no canonical definition to state claims against.
-/

/-! ## A038600.P16658782398813508010

`A236334(n+1)-2`
-/

namespace A038600.P16658782398813508010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236334 (n + 1) - 2

end

end A038600.P16658782398813508010

/-! ## A038600.P8623008319050845376

`A038599(n+1)^3-2`
-/

namespace A038600.P8623008319050845376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038599 (n + 1) ^ 3 - 2

end

end A038600.P8623008319050845376

/-! ## A038600.P13244046641274493916

`A038599(A000027(n+1))²*A038599(n+1)-2`
-/

namespace A038600.P13244046641274493916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038599 (A000027 (n + 1)).toNat ^ 2 * A038599 (n + 1) - 2

end

end A038600.P13244046641274493916

/-! ## A038600.P5083443976547284465

`A038599(A008619(2*n))²*A038599(A008619(2*n))-2`
-/

namespace A038600.P5083443976547284465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038599 (A008619 (2 * n)).toNat ^ 2 * A038599 (A008619 (2 * n)).toNat - 2

end

end A038600.P5083443976547284465

/-! ## A038600.P14412228061556686079

`A077037(A038599(n+1))`
-/

namespace A038600.P14412228061556686079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077037 (A038599 (n + 1)).toNat

end

end A038600.P14412228061556686079

/-! ## A038600.P10714252116776539344

`A259538(A093178(2*n))+A000578(A038599(n+1))`
-/

namespace A038600.P10714252116776539344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259538 (A093178 (2 * n)).toNat + A000578 (A038599 (n + 1)).toNat

end

end A038600.P10714252116776539344

/-!
# A038601: Prime numbers p such that the number of partitions of p is also a prime.

The programs for A038601, there is no canonical definition to state claims against.
-/

/-! ## A038601.P3375718416536258743

`p?[A046063(n+1)]`
-/

namespace A038601.P3375718416536258743
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046063 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A038601.P3375718416536258743

/-! ## A038601.P4627551259787094833

`p?[record[A046063(A292266(n))]]`
-/

namespace A038601.P4627551259787094833
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046063 (A292266 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A038601.P4627551259787094833

/-! ## A038601.P2484658465794772385

`p?[record[A046063(A324346(n))]]`
-/

namespace A038601.P2484658465794772385
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046063 (A324346 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A038601.P2484658465794772385

/-! ## A038601.P2596252125826028156

`p?[record[A046063(A324347(n))]]`
-/

namespace A038601.P2596252125826028156
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046063 (A324347 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A038601.P2596252125826028156

/-! ## A038601.P1124564095058374365

`p?[record[A046063(A328395(n))]]`
-/

namespace A038601.P1124564095058374365
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046063 (A328395 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A038601.P1124564095058374365

/-!
# A038602: One half of convolution of central binomial coefficients A000984(n) with A000984(n+2), n >= 0.

The programs for A038602, the canonical program `A038602.P11841758182200453414` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A038602 has offset 0).

The definition of A038602 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 165 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A038602.P11841758182200453414

`8*4^n-A051960(n+1)`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A038602

/-- `8*4^n-A051960(n+1)` -/
def P11841758182200453414.Spec : Prop :=
  ∀ n, P11841758182200453414.a n = A038602 n

theorem P11841758182200453414.correct : P11841758182200453414.Spec := by
  intro n
  simp only [A038602]

end A038602

/-! ## A038602.P11181946218830755431

`A038629(n)+4*a(n-1)` with `a(0)=3`
-/

namespace A038602.P11181946218830755431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  A038629 n + 4 * a (n - 1)

end

end A038602.P11181946218830755431

namespace A038602

/-- `A038629(n)+4*a(n-1)` -/
def P11181946218830755431.Spec : Prop :=
  ∀ n, P11181946218830755431.a n = A038602 n

end A038602

/-! ## A038602.P17216659279723019608

`A138156(n)+A038679(n)`
-/

namespace A038602.P17216659279723019608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138156 n + A038679 n

end

end A038602.P17216659279723019608

namespace A038602

/-- `A138156(n)+A038679(n)` -/
def P17216659279723019608.Spec : Prop :=
  ∀ n, P17216659279723019608.a n = A038602 n

end A038602

/-! ## A038602.P13416365505901865441

`A068551(n+1)+A008549(n+1)`
-/

namespace A038602.P13416365505901865441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068551 (n + 1) + A008549 (n + 1)

end

end A038602.P13416365505901865441

namespace A038602

/-- `A068551(n+1)+A008549(n+1)` -/
def P13416365505901865441.Spec : Prop :=
  ∀ n, P13416365505901865441.a n = A038602 n

end A038602

/-! ## A038602.P14067147434523304394

`A000346(n+1)-A000984(n+1)`
-/

namespace A038602.P14067147434523304394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000346 (n + 1) - A000984 (n + 1)

end

end A038602.P14067147434523304394

namespace A038602

/-- `A000346(n+1)-A000984(n+1)` -/
def P14067147434523304394.Spec : Prop :=
  ∀ n, P14067147434523304394.a n = A038602 n

end A038602

/-! ## A038602.P1584810426826242209

`A008549(n+1)+2*A000346(n)`
-/

namespace A038602.P1584810426826242209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008549 (n + 1) + 2 * A000346 n

end

end A038602.P1584810426826242209

namespace A038602

/-- `A008549(n+1)+2*A000346(n)` -/
def P1584810426826242209.Spec : Prop :=
  ∀ n, P1584810426826242209.a n = A038602 n

end A038602

/-! ## A038602.P2037319690039061641

`A000346(n+1)-2*A001700(n)`
-/

namespace A038602.P2037319690039061641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000346 (n + 1) - 2 * A001700 n

end

end A038602.P2037319690039061641

namespace A038602

/-- `A000346(n+1)-2*A001700(n)` -/
def P2037319690039061641.Spec : Prop :=
  ∀ n, P2037319690039061641.a n = A038602 n

end A038602

/-! ## A038602.P15297571256257095992

`A001791(n+1)+2*A008549(n+1)`
-/

namespace A038602.P15297571256257095992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001791 (n + 1) + 2 * A008549 (n + 1)

end

end A038602.P15297571256257095992

namespace A038602

/-- `A001791(n+1)+2*A008549(n+1)` -/
def P15297571256257095992.Spec : Prop :=
  ∀ n, P15297571256257095992.a n = A038602 n

end A038602

/-! ## A038602.P12141565937954391515

`A045621(2*(n+1))+A008549(n+1)`
-/

namespace A038602.P12141565937954391515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045621 (2 * (n + 1)) + A008549 (n + 1)

end

end A038602.P12141565937954391515

namespace A038602

/-- `A045621(2*(n+1))+A008549(n+1)` -/
def P12141565937954391515.Spec : Prop :=
  ∀ n, P12141565937954391515.a n = A038602 n

end A038602

/-! ## A038602.P1731918781122793372

`A000346(n+1)-A001405(2*(n+1))`
-/

namespace A038602.P1731918781122793372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000346 (n + 1) - A001405 (2 * (n + 1))

end

end A038602.P1731918781122793372

namespace A038602

/-- `A000346(n+1)-A001405(2*(n+1))` -/
def P1731918781122793372.Spec : Prop :=
  ∀ n, P1731918781122793372.a n = A038602 n

end A038602

/-! ## A038602.P5811325606787990370

`2*A068551(n+1)-A001791(n+1)`
-/

namespace A038602.P5811325606787990370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A068551 (n + 1) - A001791 (n + 1)

end

end A038602.P5811325606787990370

namespace A038602

/-- `2*A068551(n+1)-A001791(n+1)` -/
def P5811325606787990370.Spec : Prop :=
  ∀ n, P5811325606787990370.a n = A038602 n

end A038602

/-! ## A038602.P1772749968949541402

`A000346(n+1)-2*A088218(n+1)`
-/

namespace A038602.P1772749968949541402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000346 (n + 1) - 2 * A088218 (n + 1)

end

end A038602.P1772749968949541402

namespace A038602

/-- `A000346(n+1)-2*A088218(n+1)` -/
def P1772749968949541402.Spec : Prop :=
  ∀ n, P1772749968949541402.a n = A038602 n

end A038602

/-! ## A038602.P1599826255616696373

`A000346(n+1)-A337499(2*n+1)`
-/

namespace A038602.P1599826255616696373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000346 (n + 1) - A337499 (2 * n + 1)

end

end A038602.P1599826255616696373

namespace A038602

/-- `A000346(n+1)-A337499(2*n+1)` -/
def P1599826255616696373.Spec : Prop :=
  ∀ n, P1599826255616696373.a n = A038602 n

end A038602

/-! ## A038602.P17768616462122595004

`A045621(2*n+3)-A000984(n+1)`
-/

namespace A038602.P17768616462122595004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045621 (2 * n + 3) - A000984 (n + 1)

end

end A038602.P17768616462122595004

namespace A038602

/-- `A045621(2*n+3)-A000984(n+1)` -/
def P17768616462122595004.Spec : Prop :=
  ∀ n, P17768616462122595004.a n = A038602 n

end A038602

/-! ## A038602.P10139050860489216833

`A000346(n+1)-2*A037952(2*n+1)`
-/

namespace A038602.P10139050860489216833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000346 (n + 1) - 2 * A037952 (2 * n + 1)

end

end A038602.P10139050860489216833

namespace A038602

/-- `A000346(n+1)-2*A037952(2*n+1)` -/
def P10139050860489216833.Spec : Prop :=
  ∀ n, P10139050860489216833.a n = A038602 n

end A038602

/-! ## A038602.P11073567186028936983

`2*A202736(2*(n+1))-A001791(n+1)`
-/

namespace A038602.P11073567186028936983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A202736 (2 * (n + 1)) - A001791 (n + 1)

end

end A038602.P11073567186028936983

namespace A038602

/-- `2*A202736(2*(n+1))-A001791(n+1)` -/
def P11073567186028936983.Spec : Prop :=
  ∀ n, P11073567186028936983.a n = A038602 n

end A038602

/-! ## A038602.P8222959985833212186

`A340569(2*n+3)+A001405(2*(n+1))`
-/

namespace A038602.P8222959985833212186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340569 (2 * n + 3) + A001405 (2 * (n + 1))

end

end A038602.P8222959985833212186

namespace A038602

/-- `A340569(2*n+3)+A001405(2*(n+1))` -/
def P8222959985833212186.Spec : Prop :=
  ∀ n, P8222959985833212186.a n = A038602 n

end A038602

/-! ## A038602.P404353358387516291

`A045621(2*n+3)-A001405(2*(n+1))`
-/

namespace A038602.P404353358387516291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045621 (2 * n + 3) - A001405 (2 * (n + 1))

end

end A038602.P404353358387516291

namespace A038602

/-- `A045621(2*n+3)-A001405(2*(n+1))` -/
def P404353358387516291.Spec : Prop :=
  ∀ n, P404353358387516291.a n = A038602 n

end A038602

/-! ## A038602.P12343830232898070191

`A045621(2*n+3)-A063886(2*(n+1))`
-/

namespace A038602.P12343830232898070191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045621 (2 * n + 3) - A063886 (2 * (n + 1))

end

end A038602.P12343830232898070191

namespace A038602

/-- `A045621(2*n+3)-A063886(2*(n+1))` -/
def P12343830232898070191.Spec : Prop :=
  ∀ n, P12343830232898070191.a n = A038602 n

end A038602

/-! ## A038602.P6998522728932376864

`A000346(n+1)+A000346(n)-A032443(n+1)`
-/

namespace A038602.P6998522728932376864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000346 (n + 1) + (A000346 n - A032443 (n + 1))

end

end A038602.P6998522728932376864

namespace A038602

/-- `A000346(n+1)+A000346(n)-A032443(n+1)` -/
def P6998522728932376864.Spec : Prop :=
  ∀ n, P6998522728932376864.a n = A038602 n

end A038602

/-!
# A038603: Primes not containing the digit '1'.

The programs for A038603, there is no canonical definition to state claims against.
-/

/-! ## A038603.P14241105101906418321

`p?[A307636(n+1)]`
-/

namespace A038603.P14241105101906418321
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307636 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A038603.P14241105101906418321

/-! ## A038603.P5864027958195145710

`p?[A132080(n+1)]`
-/

namespace A038603.P5864027958195145710
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132080 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A038603.P5864027958195145710

/-! ## A038603.P15229945068468602549

`A000040(A084368(n+1))`
-/

namespace A038603.P15229945068468602549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A084368 (n + 1)).toNat

end

end A038603.P15229945068468602549

/-! ## A038603.P11753744471451206573

`record[A006530(A307636(n+2))]`
-/

namespace A038603.P11753744471451206573
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A307636 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A038603.P11753744471451206573

/-! ## A038603.P16546347131728189807

`filter[A132080(n+1), A010051(#)]`
-/

namespace A038603.P16546347131728189807
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132080 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A038603.P16546347131728189807

/-! ## A038603.P8538370767625541104

`filter[A307636(n+1), A010051(#)]`
-/

namespace A038603.P8538370767625541104
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307636 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A038603.P8538370767625541104

/-! ## A038603.P2886837319561320463

`filter[A132080(n+1), A358751(#)]`
-/

namespace A038603.P2886837319561320463
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132080 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A358751 (f1 j).toNat = 1) n)

end

end A038603.P2886837319561320463

/-! ## A038603.P17075629019444905006

`filter[A307636(n+1), A358751(#)]`
-/

namespace A038603.P17075629019444905006
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307636 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A358751 (f1 j).toNat = 1) n)

end

end A038603.P17075629019444905006

/-! ## A038603.P5639816333533056798

`filter[A307636(n+1), A374130(#)]`
-/

namespace A038603.P5639816333533056798
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307636 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374130 (f1 j).toNat = 1) n)

end

end A038603.P5639816333533056798

/-! ## A038603.P17654229690701174333

`filter[A307636(n+1), A374466(#)]`
-/

namespace A038603.P17654229690701174333
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307636 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374466 (f1 j).toNat = 1) n)

end

end A038603.P17654229690701174333

/-! ## A038603.P1268048133468945412

`∩[A000040(n+1), A132080(n+1)]`
-/

namespace A038603.P1268048133468945412
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132080 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038603.P1268048133468945412

/-! ## A038603.P9190717603786500981

`∩[A008578(n+1), A132080(n+1)]`
-/

namespace A038603.P9190717603786500981
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132080 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038603.P9190717603786500981

/-! ## A038603.P16028833908532005230

`∩[A040159(n+1), A132080(n+1)]`
-/

namespace A038603.P16028833908532005230
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040159 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132080 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038603.P16028833908532005230

/-! ## A038603.P13997784893825107411

`∩[A040161(n+1), A132080(n+1)]`
-/

namespace A038603.P13997784893825107411
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040161 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132080 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038603.P13997784893825107411

/-! ## A038603.P15734459654388791074

`∩[A040165(n+1), A132080(n+1)]`
-/

namespace A038603.P15734459654388791074
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040165 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132080 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038603.P15734459654388791074

/-! ## A038603.P2238746418974308134

`∩[A040169(n+1), A132080(n+1)]`
-/

namespace A038603.P2238746418974308134
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040169 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132080 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038603.P2238746418974308134

/-! ## A038603.P5472683657930076224

`∩[A040171(n+1), A132080(n+1)]`
-/

namespace A038603.P5472683657930076224
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040171 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132080 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038603.P5472683657930076224

/-! ## A038603.P4322515614925551794

`∩[A040177(n+1), A132080(n+1)]`
-/

namespace A038603.P4322515614925551794
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040177 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132080 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038603.P4322515614925551794

/-! ## A038603.P516625943009178776

`∩[A040179(n+1), A132080(n+1)]`
-/

namespace A038603.P516625943009178776
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040179 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132080 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038603.P516625943009178776

/-! ## A038603.P13152274155167296296

`∩[A040184(n+1), A132080(n+1)]`
-/

namespace A038603.P13152274155167296296
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040184 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132080 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038603.P13152274155167296296

/-!
# A038604: Primes not containing the digit '2'.

The programs for A038604, the canonical program `A038604.P12365836714774453649` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A038604 has offset 1).

The definition of A038604 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 877 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A038604.P4531383114762387212

`record[A006530(A052053(n+1))]`
-/

namespace A038604.P4531383114762387212
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A052053 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A038604.P4531383114762387212

namespace A038604

/-- `record[A006530(A052053(n+1))]` -/
def P4531383114762387212.Spec : Prop :=
  ∀ n, P4531383114762387212.a n = A038604 (n + 1)

end A038604

/-! ## A038604.P9475250002725030234

`p?[A052404(n+1)]`
-/

namespace A038604.P9475250002725030234
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052404 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A038604.P9475250002725030234

namespace A038604

/-- `p?[A052404(n+1)]` -/
def P9475250002725030234.Spec : Prop :=
  ∀ n, P9475250002725030234.a n = A038604 (n + 1)

end A038604

/-! ## A038604.P7115770516515824497

`record[A006530(A052404(n+3))]`
-/

namespace A038604.P7115770516515824497
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A052404 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A038604.P7115770516515824497

namespace A038604

/-- `record[A006530(A052404(n+3))]` -/
def P7115770516515824497.Spec : Prop :=
  ∀ n, P7115770516515824497.a n = A038604 (n + 1)

end A038604

/-! ## A038604.P7255941296513135656

`filter[A052404(n+2), A010051(#)]`
-/

namespace A038604.P7255941296513135656
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052404 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A038604.P7255941296513135656

namespace A038604

/-- `filter[A052404(n+2), A010051(#)]` -/
def P7255941296513135656.Spec : Prop :=
  ∀ n, P7255941296513135656.a n = A038604 (n + 1)

end A038604

/-! ## A038604.P2110308183971595048

`∩[A000040(n+1), A052404(n+1)]`
-/

namespace A038604.P2110308183971595048
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052404 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038604.P2110308183971595048

namespace A038604

/-- `∩[A000040(n+1), A052404(n+1)]` -/
def P2110308183971595048.Spec : Prop :=
  ∀ n, (P2110308183971595048.a n : ℤ) = A038604 (n + 1)

end A038604

/-! ## A038604.P15332450953009223775

`∩[A052404(n+1), A065091(n+1)]`
-/

namespace A038604.P15332450953009223775
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052404 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038604.P15332450953009223775

namespace A038604

/-- `∩[A052404(n+1), A065091(n+1)]` -/
def P15332450953009223775.Spec : Prop :=
  ∀ n, (P15332450953009223775.a n : ℤ) = A038604 (n + 1)

end A038604

/-! ## A038604.P6199592812662767166

`∩[A052404(n+1), A351398(n+1)]`
-/

namespace A038604.P6199592812662767166
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052404 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351398 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038604.P6199592812662767166

namespace A038604

/-- `∩[A052404(n+1), A351398(n+1)]` -/
def P6199592812662767166.Spec : Prop :=
  ∀ n, (P6199592812662767166.a n : ℤ) = A038604 (n + 1)

end A038604

/-! ## A038604.P18310681497644303319

`p?[record[A004177(n)]]`
-/

namespace A038604.P18310681497644303319
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004177 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A038604.P18310681497644303319

namespace A038604

/-- `p?[record[A004177(n)]]` -/
def P18310681497644303319.Spec : Prop :=
  ∀ n, P18310681497644303319.a n = A038604 (n + 1)

end A038604

/-! ## A038604.P4107990820503707763

`p?[record[A004721(n)]]`
-/

namespace A038604.P4107990820503707763
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004721 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A038604.P4107990820503707763

namespace A038604

/-- `p?[record[A004721(n)]]` -/
def P4107990820503707763.Spec : Prop :=
  ∀ n, P4107990820503707763.a n = A038604 (n + 1)

end A038604

/-! ## A038604.P15346819330249268811

`p?[record[A035044(n)]]`
-/

namespace A038604.P15346819330249268811
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035044 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A038604.P15346819330249268811

namespace A038604

/-- `p?[record[A035044(n)]]` -/
def P15346819330249268811.Spec : Prop :=
  ∀ n, P15346819330249268811.a n = A038604 (n + 1)

end A038604

/-! ## A038604.P7159755084376665318

`p?[lt[2, A211396(n)]]`
-/

namespace A038604.P7159755084376665318
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211396 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A038604.P7159755084376665318

namespace A038604

/-- `p?[lt[2, A211396(n)]]` -/
def P7159755084376665318.Spec : Prop :=
  ∀ n, (P7159755084376665318.a n : ℤ) = A038604 (n + 1)

end A038604

/-! ## A038604.P12365836714774453649

`p?[n*(A316863(n)+1)]`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A038604

/-- `p?[n*(A316863(n)+1)]` -/
def P12365836714774453649.Spec : Prop :=
  ∀ n, P12365836714774453649.a n = A038604 (n + 1)

theorem P12365836714774453649.correct : P12365836714774453649.Spec := by
  intro n
  simp only [A038604, Nat.add_sub_cancel]

end A038604

/-! ## A038604.P11851117901086033742

`eq[A004177(n), A007918(n)]`
-/

namespace A038604.P11851117901086033742
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004177 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007918 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A038604.P11851117901086033742

namespace A038604

/-- `eq[A004177(n), A007918(n)]` -/
def P11851117901086033742.Spec : Prop :=
  ∀ n, (P11851117901086033742.a n : ℤ) = A038604 (n + 1)

end A038604

/-! ## A038604.P10790450928605234948

`eq[A004177(n), A051697(n)]`
-/

namespace A038604.P10790450928605234948
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004177 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051697 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A038604.P10790450928605234948

namespace A038604

/-- `eq[A004177(n), A051697(n)]` -/
def P10790450928605234948.Spec : Prop :=
  ∀ n, (P10790450928605234948.a n : ℤ) = A038604 (n + 1)

end A038604

/-! ## A038604.P252987008723372991

`eq[A004177(n), A062584(n)]`
-/

namespace A038604.P252987008723372991
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004177 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062584 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A038604.P252987008723372991

namespace A038604

/-- `eq[A004177(n), A062584(n)]` -/
def P252987008723372991.Spec : Prop :=
  ∀ n, (P252987008723372991.a n : ℤ) = A038604 (n + 1)

end A038604

/-! ## A038604.P670233779814589825

`eq[A004177(n), A064502(n)]`
-/

namespace A038604.P670233779814589825
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004177 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064502 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A038604.P670233779814589825

namespace A038604

/-- `eq[A004177(n), A064502(n)]` -/
def P670233779814589825.Spec : Prop :=
  ∀ n, (P670233779814589825.a n : ℤ) = A038604 (n + 1)

end A038604

/-! ## A038604.P5975711546504574867

`eq[A004177(n), A077018(n)]`
-/

namespace A038604.P5975711546504574867
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004177 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077018 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A038604.P5975711546504574867

namespace A038604

/-- `eq[A004177(n), A077018(n)]` -/
def P5975711546504574867.Spec : Prop :=
  ∀ n, (P5975711546504574867.a n : ℤ) = A038604 (n + 1)

end A038604

/-! ## A038604.P1977237222586019864

`eq[A004177(n), A084413(n)]`
-/

namespace A038604.P1977237222586019864
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004177 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084413 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A038604.P1977237222586019864

namespace A038604

/-- `eq[A004177(n), A084413(n)]` -/
def P1977237222586019864.Spec : Prop :=
  ∀ n, (P1977237222586019864.a n : ℤ) = A038604 (n + 1)

end A038604

/-! ## A038604.P11140185373590872533

`eq[A004177(n), A272476(n)]`
-/

namespace A038604.P11140185373590872533
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004177 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272476 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A038604.P11140185373590872533

namespace A038604

/-- `eq[A004177(n), A272476(n)]` -/
def P11140185373590872533.Spec : Prop :=
  ∀ n, (P11140185373590872533.a n : ℤ) = A038604 (n + 1)

end A038604

/-! ## A038604.P2456893758249677668

`eq[A004177(n), A327420(n)]`
-/

namespace A038604.P2456893758249677668
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004177 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327420 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A038604.P2456893758249677668

namespace A038604

/-- `eq[A004177(n), A327420(n)]` -/
def P2456893758249677668.Spec : Prop :=
  ∀ n, (P2456893758249677668.a n : ℤ) = A038604 (n + 1)

end A038604

/-!
# A038605: a(n) = floor( prime(n)/n ).

The programs for A038605, the canonical program `A038605.P10810599837596840094` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A038605 has offset 1).

The definition of A038605 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A038605.P6701223727130132518

`floor(Δ[A007504(n)]/(n+1))`
-/

namespace A038605.P6701223727130132518
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(f1 (n + 1) - f1 n : ℚ) / (n + 1 : ℚ)⌋

end

end A038605.P6701223727130132518

namespace A038605

/-- `floor(Δ[A007504(n)]/(n+1))` -/
def P6701223727130132518.Spec : Prop :=
  ∀ n, P6701223727130132518.a n = A038605 (n + 1)

end A038605

/-! ## A038605.P10810599837596840094

`floor(A000040(n+1)/(n+1))`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A038605

/-- `floor(A000040(n+1)/(n+1))` -/
def P10810599837596840094.Spec : Prop :=
  ∀ n, P10810599837596840094.a n = A038605 (n + 1)

theorem P10810599837596840094.correct : P10810599837596840094.Spec := by
  intro n
  simp only [A038605, Nat.add_sub_cancel]

end A038605

/-! ## A038605.P18361130415171320393

`ceil(A014692(n+1)/(n+1))`
-/

namespace A038605.P18361130415171320393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A014692 (n + 1) : ℚ) / (n + 1 : ℚ)⌉

end

end A038605.P18361130415171320393

namespace A038605

/-- `ceil(A014692(n+1)/(n+1))` -/
def P18361130415171320393.Spec : Prop :=
  ∀ n, P18361130415171320393.a n = A038605 (n + 1)

end A038605

/-! ## A038605.P5019001687400284196

`floor(abs(Δ[A008348(n)])/(n+1))`
-/

namespace A038605.P5019001687400284196
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008348 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(|f1 (n + 1) - f1 n| : ℚ) / (n + 1 : ℚ)⌋

end

end A038605.P5019001687400284196

namespace A038605

/-- `floor(abs(Δ[A008348(n)])/(n+1))` -/
def P5019001687400284196.Spec : Prop :=
  ∀ n, P5019001687400284196.a n = A038605 (n + 1)

end A038605

/-! ## A038605.P15087984552272716021

`floor(abs(Δ[A022837(n)])/(n+1))`
-/

namespace A038605.P15087984552272716021
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022837 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(|f1 (n + 1) - f1 n| : ℚ) / (n + 1 : ℚ)⌋

end

end A038605.P15087984552272716021

namespace A038605

/-- `floor(abs(Δ[A022837(n)])/(n+1))` -/
def P15087984552272716021.Spec : Prop :=
  ∀ n, P15087984552272716021.a n = A038605 (n + 1)

end A038605

/-! ## A038605.P14080079783804147368

`floor(sqrt(A001248(n+1))/(n+1))`
-/

namespace A038605.P14080079783804147368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sqrt (A001248 (n + 1) : ℝ) / (n + 1 : ℝ)⌋

end

end A038605.P14080079783804147368

namespace A038605

/-- `floor(sqrt(A001248(n+1))/(n+1))` -/
def P14080079783804147368.Spec : Prop :=
  ∀ n, P14080079783804147368.a n = A038605 (n + 1)

end A038605

/-! ## A038605.P6427271849249692576

`floor((A006093(n+1)+1)/(n+1))`
-/

namespace A038605.P6427271849249692576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A006093 (n + 1) + 1 : ℚ) / (n + 1 : ℚ)⌋

end

end A038605.P6427271849249692576

namespace A038605

/-- `floor((A006093(n+1)+1)/(n+1))` -/
def P6427271849249692576.Spec : Prop :=
  ∀ n, P6427271849249692576.a n = A038605 (n + 1)

end A038605

/-! ## A038605.P5411293053607394604

`floor((A008864(n+1)-1)/(n+1))`
-/

namespace A038605.P5411293053607394604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A008864 (n + 1) - 1 : ℚ) / (n + 1 : ℚ)⌋

end

end A038605.P5411293053607394604

namespace A038605

/-- `floor((A008864(n+1)-1)/(n+1))` -/
def P5411293053607394604.Spec : Prop :=
  ∀ n, P5411293053607394604.a n = A038605 (n + 1)

end A038605

/-! ## A038605.P12775643949082235454

`floor((A040976(n+1)+2)/(n+1))`
-/

namespace A038605.P12775643949082235454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A040976 (n + 1) + 2 : ℚ) / (n + 1 : ℚ)⌋

end

end A038605.P12775643949082235454

namespace A038605

/-- `floor((A040976(n+1)+2)/(n+1))` -/
def P12775643949082235454.Spec : Prop :=
  ∀ n, P12775643949082235454.a n = A038605 (n + 1)

end A038605

/-! ## A038605.P14817305777543657096

`floor((A113935(n+1)-3)/(n+1))`
-/

namespace A038605.P14817305777543657096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A113935 (n + 1) - 3 : ℚ) / (n + 1 : ℚ)⌋

end

end A038605.P14817305777543657096

namespace A038605

/-- `floor((A113935(n+1)-3)/(n+1))` -/
def P14817305777543657096.Spec : Prop :=
  ∀ n, P14817305777543657096.a n = A038605 (n + 1)

end A038605

/-! ## A038605.P11186611547449238212

`A002024(A079415(n+1))`
-/

namespace A038605.P11186611547449238212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (A079415 (n + 1)).toNat

end

end A038605.P11186611547449238212

namespace A038605

/-- `A002024(A079415(n+1))` -/
def P11186611547449238212.Spec : Prop :=
  ∀ n, P11186611547449238212.a n = A038605 (n + 1)

end A038605

/-! ## A038605.P13239741376037018115

`A014430(A079415(n+1)-1)`
-/

namespace A038605.P13239741376037018115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014430 (A079415 (n + 1) - 1).toNat

end

end A038605.P13239741376037018115

namespace A038605

/-- `A014430(A079415(n+1)-1)` -/
def P13239741376037018115.Spec : Prop :=
  ∀ n, P13239741376037018115.a n = A038605 (n + 1)

end A038605

/-! ## A038605.P968344377656057238

`A076080(n+1)+A000007(n)`
-/

namespace A038605.P968344377656057238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076080 (n + 1) + A000007 n

end

end A038605.P968344377656057238

namespace A038605

/-- `A076080(n+1)+A000007(n)` -/
def P968344377656057238.Spec : Prop :=
  ∀ n, P968344377656057238.a n = A038605 (n + 1)

end A038605

/-! ## A038605.P494290206342911514

`A090973(n+1)+A057428(n)`
-/

namespace A038605.P494290206342911514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090973 (n + 1) + A057428 n

end

end A038605.P494290206342911514

namespace A038605

/-- `A090973(n+1)+A057428(n)` -/
def P494290206342911514.Spec : Prop :=
  ∀ n, P494290206342911514.a n = A038605 (n + 1)

end A038605

/-! ## A038605.P10975211316090348026

`A090973(n+1)-A057427(n)`
-/

namespace A038605.P10975211316090348026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090973 (n + 1) - A057427 n

end

end A038605.P10975211316090348026

namespace A038605

/-- `A090973(n+1)-A057427(n)` -/
def P10975211316090348026.Spec : Prop :=
  ∀ n, P10975211316090348026.a n = A038605 (n + 1)

end A038605

/-! ## A038605.P6949810579847148225

`A054977(n)*A076080(n+1)`
-/

namespace A038605.P6949810579847148225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n * A076080 (n + 1)

end

end A038605.P6949810579847148225

namespace A038605

/-- `A054977(n)*A076080(n+1)` -/
def P6949810579847148225.Spec : Prop :=
  ∀ n, P6949810579847148225.a n = A038605 (n + 1)

end A038605

/-! ## A038605.P4355494815251203329

`A002260(2*2*A079415(n+1))`
-/

namespace A038605.P4355494815251203329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (2 * (2 * A079415 (n + 1))).toNat

end

end A038605.P4355494815251203329

namespace A038605

/-- `A002260(2*2*A079415(n+1))` -/
def P4355494815251203329.Spec : Prop :=
  ∀ n, P4355494815251203329.a n = A038605 (n + 1)

end A038605

/-! ## A038605.P16949494291441603040

`A075765(n+1)-A004648(n+1)`
-/

namespace A038605.P16949494291441603040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075765 (n + 1) - A004648 (n + 1)

end

end A038605.P16949494291441603040

namespace A038605

/-- `A075765(n+1)-A004648(n+1)` -/
def P16949494291441603040.Spec : Prop :=
  ∀ n, P16949494291441603040.a n = A038605 (n + 1)

end A038605

/-! ## A038605.P2246664346648972468

`2*A076079(n+1)/A103517(n)`
-/

namespace A038605.P2246664346648972468
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 * ((A076079 (n + 1) : ℚ) / (A103517 n : ℚ))

end

end A038605.P2246664346648972468

namespace A038605

/-- `2*A076079(n+1)/A103517(n)` -/
def P2246664346648972468.Spec : Prop :=
  ∀ n, P2246664346648972468.a n = (A038605 (n + 1) : ℚ)

end A038605

/-!
# A038606: Least k such that k-th prime > n * k.

The programs for A038606, there is no canonical definition to state claims against.
-/

/-! ## A038606.P5020562298031718913

`A000720(A038607(n+1))`
-/

namespace A038606.P5020562298031718913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A038607 (n + 1)).toNat

end

end A038606.P5020562298031718913

/-! ## A038606.P7757960360252380562

`A135416(A155212(n))+A038624(n+1)`
-/

namespace A038606.P7757960360252380562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135416 (A155212 n).toNat + A038624 (n + 1)

end

end A038606.P7757960360252380562

/-! ## A038606.P363400164182341558

`A055672(A250122(n))+A038624(n+1)`
-/

namespace A038606.P363400164182341558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055672 (A250122 n).toNat + A038624 (n + 1)

end

end A038606.P363400164182341558

/-! ## A038606.P5606020225306223287

`A038624(n+1)*A320410(A028815(n))`
-/

namespace A038606.P5606020225306223287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038624 (n + 1) * A320410 (A028815 n).toNat

end

end A038606.P5606020225306223287

/-! ## A038606.P4161329570243080798

`A038624(n+1)+A063570(n)-A062524(n)`
-/

namespace A038606.P4161329570243080798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038624 (n + 1) + (A063570 n - A062524 n)

end

end A038606.P4161329570243080798

/-! ## A038606.P9932468529765086680

`A038624(n+1)*A089026(A029578(5*(n+1)))`
-/

namespace A038606.P9932468529765086680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038624 (n + 1) * A089026 (A029578 (5 * (n + 1))).toNat

end

end A038606.P9932468529765086680

/-! ## A038606.P4666831486563955271

`A062524(A062524(n)/A063570(n))+A038624(n+1)`
-/

namespace A038606.P4666831486563955271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062524 (SequenceMachineLib.roundAway ((A062524 n : ℚ) / (A063570 n : ℚ))).toNat + A038624 (n + 1)

end

end A038606.P4666831486563955271

/-!
# A038607: a(n) is the smallest prime number k such that k > n*pi(k), where pi(k) denotes the prime counting function.

The programs for A038607, there is no canonical definition to state claims against.
-/

/-! ## A038607.P4876452250557825485

`A000040(A038606(n+1))`
-/

namespace A038607.P4876452250557825485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A038606 (n + 1)).toNat

end

end A038607.P4876452250557825485

/-! ## A038607.P3935446019746964691

`xor(A169585(n)², A062743(n+1))`
-/

namespace A038607.P3935446019746964691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A169585 n ^ 2) (A062743 (n + 1))

end

end A038607.P3935446019746964691

/-! ## A038607.P10911456067025588856

`A038623(n+1)+A061397(A008486(n))²`
-/

namespace A038607.P10911456067025588856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038623 (n + 1) + A061397 (A008486 n).toNat ^ 2

end

end A038607.P10911456067025588856

/-! ## A038607.P12487854550901855124

`xor(A109247(A049691(n))², A062743(n+1))`
-/

namespace A038607.P12487854550901855124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A109247 (A049691 n).toNat ^ 2) (A062743 (n + 1))

end

end A038607.P12487854550901855124

/-! ## A038607.P2827400268438773611

`A038623(A348776(n+1))%∑[A041030(n)]`
-/

namespace A038607.P2827400268438773611
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041030 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A038623 (A348776 (n + 1)).toNat) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A038607.P2827400268438773611

/-! ## A038607.P13351270759297580473

`A086511(n+1)+A038623(n+1)%A086511(n+1)`
-/

namespace A038607.P13351270759297580473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086511 (n + 1) + Int.tmod (A038623 (n + 1)) (A086511 (n + 1))

end

end A038607.P13351270759297580473

/-!
# A038608: a(n) = n*(-1)^n.

The programs for A038608, the canonical program `A038608.P11893247063823867553` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A038608 has offset 0).

The definition of A038608 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(-1)^n` (program `A038608.P11893247063823867553`, by `A038608.P11893247063823867553.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A038608.P11893247063823867553

`n*(-1)^n`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A038608

/-- `n*(-1)^n` -/
def P11893247063823867553.Spec : Prop :=
  ∀ n, P11893247063823867553.a n = A038608 n

theorem P11893247063823867553.correct : P11893247063823867553.Spec := by
  intro n
  simp only [A038608]

end A038608

/-! ## A038608.P2433674198834643835

`A003221(n+1)-A000387(n+1)`
-/

namespace A038608.P2433674198834643835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003221 (n + 1) - A000387 (n + 1)

end

end A038608.P2433674198834643835

namespace A038608

/-- `A003221(n+1)-A000387(n+1)` -/
def P2433674198834643835.Spec : Prop :=
  ∀ n, P2433674198834643835.a n = A038608 n

end A038608

/-! ## A038608.P7054027349695281783

`n/cos(π*n)`
-/

namespace A038608.P7054027349695281783
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n : ℝ) / Real.cos (Real.pi * (n : ℝ))

end

end A038608.P7054027349695281783

namespace A038608

/-- `n/cos(π*n)` -/
def P7054027349695281783.Spec : Prop :=
  ∀ n, P7054027349695281783.a n = (A038608 n : ℝ)

end A038608

/-! ## A038608.P10862225209688859738

`n/(xor(1, n)-n)`
-/

namespace A038608.P10862225209688859738
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / ((Nat.xor 1 n : ℤ) - (n : ℤ) : ℚ)

end

end A038608.P10862225209688859738

namespace A038608

/-- `n/(xor(1, n)-n)` -/
def P10862225209688859738.Spec : Prop :=
  ∀ n, P10862225209688859738.a n = (A038608 n : ℚ)

end A038608

/-! ## A038608.P14309157823062830588

`ogf(-x/(1+2x+x^2))`
-/

namespace A038608.P14309157823062830588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, -1] [1, 2, 1] n

end

end A038608.P14309157823062830588

namespace A038608

/-- `ogf(-x/(1+2x+x^2))` -/
def P14309157823062830588.Spec : Prop :=
  ∀ n, P14309157823062830588.a n = A038608 n

end A038608

/-! ## A038608.P2673575208762941898

`-xor(1, a(n-1))` with `a(0)=0`
-/

namespace A038608.P2673575208762941898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  -Int.xor 1 (a (n - 1))

end

end A038608.P2673575208762941898

namespace A038608

/-- `-xor(1, a(n-1))` -/
def P2673575208762941898.Spec : Prop :=
  ∀ n, P2673575208762941898.a n = A038608 n

end A038608

/-! ## A038608.P8041497759475708533

`n/(-1)^(n%2)`
-/

namespace A038608.P8041497759475708533
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / ((-1) ^ (n % 2) : ℚ)

end

end A038608.P8041497759475708533

namespace A038608

/-- `n/(-1)^(n%2)` -/
def P8041497759475708533.Spec : Prop :=
  ∀ n, P8041497759475708533.a n = (A038608 n : ℚ)

end A038608

/-! ## A038608.P12658913611701155255

`n/(-1)^gcd(2, n)`
-/

namespace A038608.P12658913611701155255
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / ((-1) ^ Nat.gcd 2 n : ℚ)

end

end A038608.P12658913611701155255

namespace A038608

/-- `n/(-1)^gcd(2, n)` -/
def P12658913611701155255.Spec : Prop :=
  ∀ n, P12658913611701155255.a n = (A038608 n : ℚ)

end A038608

/-! ## A038608.P9320030402743105496

`n/(-1)^lcm(3, n)`
-/

namespace A038608.P9320030402743105496
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / ((-1) ^ Nat.lcm 3 n : ℚ)

end

end A038608.P9320030402743105496

namespace A038608

/-- `n/(-1)^lcm(3, n)` -/
def P9320030402743105496.Spec : Prop :=
  ∀ n, P9320030402743105496.a n = (A038608 n : ℚ)

end A038608

/-! ## A038608.P15686013074457102837

`n/(-1)^and(1, n)`
-/

namespace A038608.P15686013074457102837
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / ((-1) ^ Nat.land 1 n : ℚ)

end

end A038608.P15686013074457102837

namespace A038608

/-- `n/(-1)^and(1, n)` -/
def P15686013074457102837.Spec : Prop :=
  ∀ n, P15686013074457102837.a n = (A038608 n : ℚ)

end A038608

/-! ## A038608.P789319329968645847

`xor(n, (-1)^n-1)`
-/

namespace A038608.P789319329968645847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) ((-1) ^ n - 1)

end

end A038608.P789319329968645847

namespace A038608

/-- `xor(n, (-1)^n-1)` -/
def P789319329968645847.Spec : Prop :=
  ∀ n, P789319329968645847.a n = A038608 n

end A038608

/-! ## A038608.P8126168933101526514

`n/or(1, (-1)^n)`
-/

namespace A038608.P8126168933101526514
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (Int.lor 1 ((-1) ^ n) : ℚ)

end

end A038608.P8126168933101526514

namespace A038608

/-- `n/or(1, (-1)^n)` -/
def P8126168933101526514.Spec : Prop :=
  ∀ n, P8126168933101526514.a n = (A038608 n : ℚ)

end A038608

/-! ## A038608.P9747223034724640901

`n/(-1)^xor(2, n)`
-/

namespace A038608.P9747223034724640901
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / ((-1) ^ Nat.xor 2 n : ℚ)

end

end A038608.P9747223034724640901

namespace A038608

/-- `n/(-1)^xor(2, n)` -/
def P9747223034724640901.Spec : Prop :=
  ∀ n, P9747223034724640901.a n = (A038608 n : ℚ)

end A038608

/-! ## A038608.P140646189554001735

`n/(1-Δ[or(1, n)])`
-/

namespace A038608.P140646189554001735
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (1 - ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) : ℚ)

end

end A038608.P140646189554001735

namespace A038608

/-- `n/(1-Δ[or(1, n)])` -/
def P140646189554001735.Spec : Prop :=
  ∀ n, P140646189554001735.a n = (A038608 n : ℚ)

end A038608

/-! ## A038608.P9827510452071125787

`n/ratio[1-and(2, n)]`
-/

namespace A038608.P9827510452071125787
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (Nat.land 2 n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / ((f1 (n + 1) : ℚ) / (f1 n : ℚ))

end

end A038608.P9827510452071125787

namespace A038608

/-- `n/ratio[1-and(2, n)]` -/
def P9827510452071125787.Spec : Prop :=
  ∀ n, P9827510452071125787.a n = (A038608 n : ℚ)

end A038608

/-! ## A038608.P3615482728956193461

`-(n*(n-xor(1, n)))`
-/

namespace A038608.P3615482728956193461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -((n : ℤ) * ((n : ℤ) - (Nat.xor 1 n : ℤ)))

end

end A038608.P3615482728956193461

namespace A038608

/-- `-(n*(n-xor(1, n)))` -/
def P3615482728956193461.Spec : Prop :=
  ∀ n, P3615482728956193461.a n = A038608 n

end A038608

/-! ## A038608.P2168972477267788355

`n*xor(1, n)-n²`
-/

namespace A038608.P2168972477267788355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n * Nat.xor 1 n : ℤ) - (n ^ 2 : ℤ)

end

end A038608.P2168972477267788355

namespace A038608

/-- `n*xor(1, n)-n²` -/
def P2168972477267788355.Spec : Prop :=
  ∀ n, P2168972477267788355.a n = A038608 n

end A038608

/-! ## A038608.P7608187336732953169

`n-n*Δ[or(1, n)]`
-/

namespace A038608.P7608187336732953169
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (n : ℤ) * ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A038608.P7608187336732953169

namespace A038608

/-- `n-n*Δ[or(1, n)]` -/
def P7608187336732953169.Spec : Prop :=
  ∀ n, P7608187336732953169.a n = A038608 n

end A038608

/-! ## A038608.P4709308355281345697

`n/(-1)^∏{p}[n, #]`
-/

namespace A038608.P4709308355281345697
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / ((-1) ^ (∏ p ∈ Nat.primeFactors (f1 n), p) : ℚ)

end

end A038608.P4709308355281345697

namespace A038608

/-- `n/(-1)^∏{p}[n, #]` -/
def P4709308355281345697.Spec : Prop :=
  ∀ n, P4709308355281345697.a n = (A038608 n : ℚ)

end A038608

/-! ## A038608.P13749592500410880084

`3*n-lcm(4, 2*n)`
-/

namespace A038608.P13749592500410880084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * n : ℤ) - (Nat.lcm 4 (2 * n) : ℤ)

end

end A038608.P13749592500410880084

namespace A038608

/-- `3*n-lcm(4, 2*n)` -/
def P13749592500410880084.Spec : Prop :=
  ∀ n, P13749592500410880084.a n = A038608 n

end A038608

/-!
# A038609: Numbers that are the sum of 2 different primes.

The programs for A038609, the canonical program `A038609.P14408777948439082881` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A038609 has offset 1).

The definition of A038609 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A038609.P14408777948439082881

`∪[2*(n+3), A000040(n+2)]+2`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A038609

/-- `∪[2*(n+3), A000040(n+2)]+2` -/
def P14408777948439082881.Spec : Prop :=
  ∀ n, (P14408777948439082881.a n : ℤ) = A038609 (n + 1)

theorem P14408777948439082881.correct : P14408777948439082881.Spec := by
  intro n
  simp only [A038609, Nat.add_sub_cancel]

end A038609

/-! ## A038609.P12967933211430347423

`∪[A048974(n+1), A020744(n)]`
-/

namespace A038609.P12967933211430347423
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048974 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020744 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A038609.P12967933211430347423

namespace A038609

/-- `∪[A048974(n+1), A020744(n)]` -/
def P12967933211430347423.Spec : Prop :=
  ∀ n, (P12967933211430347423.a n : ℤ) = A038609 (n + 1)

end A038609

/-! ## A038609.P7835000896183627678

`∪[A370090(n+1), A020744(n)]`
-/

namespace A038609.P7835000896183627678
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370090 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020744 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A038609.P7835000896183627678

namespace A038609

/-- `∪[A370090(n+1), A020744(n)]` -/
def P7835000896183627678.Spec : Prop :=
  ∀ n, (P7835000896183627678.a n : ℤ) = A038609 (n + 1)

end A038609

/-! ## A038609.P3968805830423636788

`∪[A020739(n+1), A052147(n+2)]`
-/

namespace A038609.P3968805830423636788
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020739 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052147 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A038609.P3968805830423636788

namespace A038609

/-- `∪[A020739(n+1), A052147(n+2)]` -/
def P3968805830423636788.Spec : Prop :=
  ∀ n, (P3968805830423636788.a n : ℤ) = A038609 (n + 1)

end A038609

/-! ## A038609.P16235634696913883836

`A014091(ceil(abs(sin(n)))+n+2)`
-/

namespace A038609.P16235634696913883836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014091 (⌈|Real.sin (n : ℝ)|⌉ + (n + 2 : ℤ)).toNat

end

end A038609.P16235634696913883836

namespace A038609

/-- `A014091(ceil(abs(sin(n)))+n+2)` -/
def P16235634696913883836.Spec : Prop :=
  ∀ n, P16235634696913883836.a n = A038609 (n + 1)

end A038609

/-! ## A038609.P7193472438602106189

`A014091(A103517(n)+1-n)`
-/

namespace A038609.P7193472438602106189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014091 (A103517 n + (1 - (n : ℤ))).toNat

end

end A038609.P7193472438602106189

namespace A038609

/-- `A014091(A103517(n)+1-n)` -/
def P7193472438602106189.Spec : Prop :=
  ∀ n, P7193472438602106189.a n = A038609 (n + 1)

end A038609

/-! ## A038609.P13788384848097552965

`A014091(1-(n-A103517(n)))`
-/

namespace A038609.P13788384848097552965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014091 (1 - ((n : ℤ) - A103517 n)).toNat

end

end A038609.P13788384848097552965

namespace A038609

/-- `A014091(1-(n-A103517(n)))` -/
def P13788384848097552965.Spec : Prop :=
  ∀ n, P13788384848097552965.a n = A038609 (n + 1)

end A038609

/-! ## A038609.P6908263878661273495

`A014091(A140139(n+2)-n)`
-/

namespace A038609.P6908263878661273495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014091 (A140139 (n + 2) - (n : ℤ)).toNat

end

end A038609.P6908263878661273495

namespace A038609

/-- `A014091(A140139(n+2)-n)` -/
def P6908263878661273495.Spec : Prop :=
  ∀ n, P6908263878661273495.a n = A038609 (n + 1)

end A038609

/-! ## A038609.P8220051039721135773

`A014091(n+3)-A010051(2*(n+1))`
-/

namespace A038609.P8220051039721135773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014091 (n + 3) - A010051 (2 * (n + 1))

end

end A038609.P8220051039721135773

namespace A038609

/-- `A014091(n+3)-A010051(2*(n+1))` -/
def P8220051039721135773.Spec : Prop :=
  ∀ n, P8220051039721135773.a n = A038609 (n + 1)

end A038609

/-! ## A038609.P4599654981310979883

`lt[9, A334768(n)]`
-/

namespace A038609.P4599654981310979883
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334768 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A038609.P4599654981310979883

namespace A038609

/-- `lt[9, A334768(n)]` -/
def P4599654981310979883.Spec : Prop :=
  ∀ n, (P4599654981310979883.a n : ℤ) = A038609 (n + 1)

end A038609

/-! ## A038609.P16016376852419025829

`lt[1, A073610(n+1)]+1`
-/

namespace A038609.P16016376852419025829
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073610 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A038609.P16016376852419025829

namespace A038609

/-- `lt[1, A073610(n+1)]+1` -/
def P16016376852419025829.Spec : Prop :=
  ∀ n, (P16016376852419025829.a n : ℤ) = A038609 (n + 1)

end A038609

/-! ## A038609.P14640613283276995793

`lt[A282318(n)+1, A098983(n)]`
-/

namespace A038609.P14640613283276995793
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282318 n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098983 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A038609.P14640613283276995793

namespace A038609

/-- `lt[A282318(n)+1, A098983(n)]` -/
def P14640613283276995793.Spec : Prop :=
  ∀ n, (P14640613283276995793.a n : ℤ) = A038609 (n + 1)

end A038609

/-! ## A038609.P6244689562138640037

`lt[1, A010785(A098983(n)-A282318(n))]`
-/

namespace A038609.P6244689562138640037
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010785 (A098983 n - A282318 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A038609.P6244689562138640037

namespace A038609

/-- `lt[1, A010785(A098983(n)-A282318(n))]` -/
def P6244689562138640037.Spec : Prop :=
  ∀ n, (P6244689562138640037.a n : ℤ) = A038609 (n + 1)

end A038609

/-! ## A038609.P12114312849725219474

`eq[A028310(A117929(n+1)), A117929(n+1)]+1`
-/

namespace A038609.P12114312849725219474
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A117929 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117929 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A038609.P12114312849725219474

namespace A038609

/-- `eq[A028310(A117929(n+1)), A117929(n+1)]+1` -/
def P12114312849725219474.Spec : Prop :=
  ∀ n, (P12114312849725219474.a n : ℤ) = A038609 (n + 1)

end A038609

/-! ## A038609.P9367776290335055544

`lt[char[2*A151800(n)], A061358(n)]`
-/

namespace A038609.P9367776290335055544
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A151800 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061358 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f3 j) n

end

end A038609.P9367776290335055544

namespace A038609

/-- `lt[char[2*A151800(n)], A061358(n)]` -/
def P9367776290335055544.Spec : Prop :=
  ∀ n, (P9367776290335055544.a n : ℤ) = A038609 (n + 1)

end A038609

/-! ## A038609.P13968615586680729129

`lt[char[2*A008578(n+1)], A061358(n)]`
-/

namespace A038609.P13968615586680729129
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008578 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061358 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f3 j) n

end

end A038609.P13968615586680729129

namespace A038609

/-- `lt[char[2*A008578(n+1)], A061358(n)]` -/
def P13968615586680729129.Spec : Prop :=
  ∀ n, (P13968615586680729129.a n : ℤ) = A038609 (n + 1)

end A038609

/-! ## A038609.P6841765734973874631

`lt[A004736(n+1), 2*A255070(n)*A061358(n)]`
-/

namespace A038609.P6841765734973874631
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A255070 n * A061358 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A038609.P6841765734973874631

namespace A038609

/-- `lt[A004736(n+1), 2*A255070(n)*A061358(n)]` -/
def P6841765734973874631.Spec : Prop :=
  ∀ n, (P6841765734973874631.a n : ℤ) = A038609 (n + 1)

end A038609

/-! ## A038609.P8498198568010166074

`∪[A020744(n), A157724(n+1)]`
-/

namespace A038609.P8498198568010166074
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020744 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157724 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A038609.P8498198568010166074

namespace A038609

/-- `∪[A020744(n), A157724(n+1)]` -/
def P8498198568010166074.Spec : Prop :=
  ∀ n, (P8498198568010166074.a n : ℤ) = A038609 (n + 1)

end A038609

/-! ## A038609.P5437008520969292867

`∪[A096851(n+1), A157724(n+1)]`
-/

namespace A038609.P5437008520969292867
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096851 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157724 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A038609.P5437008520969292867

namespace A038609

/-- `∪[A096851(n+1), A157724(n+1)]` -/
def P5437008520969292867.Spec : Prop :=
  ∀ n, (P5437008520969292867.a n : ℤ) = A038609 (n + 1)

end A038609

/-! ## A038609.P12540266548552753926

`∪[A100319(n+1), A157724(n+1)]`
-/

namespace A038609.P12540266548552753926
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100319 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157724 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A038609.P12540266548552753926

namespace A038609

/-- `∪[A100319(n+1), A157724(n+1)]` -/
def P12540266548552753926.Spec : Prop :=
  ∀ n, (P12540266548552753926.a n : ℤ) = A038609 (n + 1)

end A038609

/-!
# A038610: Least common multiple of integers less than and prime to n.

The programs for A038610, the canonical program `A038610.P10588143395137606958` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A038610 has offset 1).

The definition of A038610 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 238 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A038610.P10588143395137606958

`A002944(n+1)/A133910(n+1)`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A038610

/-- `A002944(n+1)/A133910(n+1)` -/
def P10588143395137606958.Spec : Prop :=
  ∀ n, P10588143395137606958.a n = (A038610 (n + 1) : ℚ)

end A038610

/-! ## A038610.P14416702487475175922

`A002944(n+1)/gcd(A002944(n+1), A064446(n+1))`
-/

namespace A038610.P14416702487475175922
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002944 (n + 1) : ℚ) / (Int.gcd (A002944 (n + 1)) (A064446 (n + 1)) : ℚ)

end

end A038610.P14416702487475175922

namespace A038610

/-- `A002944(n+1)/gcd(A002944(n+1), A064446(n+1))` -/
def P14416702487475175922.Spec : Prop :=
  ∀ n, P14416702487475175922.a n = (A038610 (n + 1) : ℚ)

end A038610

/-! ## A038610.P9830966086063840682

`A083268(n+1)/(n+1)`
-/

namespace A038610.P9830966086063840682
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A083268 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A038610.P9830966086063840682

namespace A038610

/-- `A083268(n+1)/(n+1)` -/
def P9830966086063840682.Spec : Prop :=
  ∀ n, P9830966086063840682.a n = (A038610 (n + 1) : ℚ)

end A038610

/-! ## A038610.P16646265033887973225

`Δ[A173185(n)]/A064446(n+1)`
-/

namespace A038610.P16646265033887973225
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173185 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) / (A064446 (n + 1) : ℚ)

end

end A038610.P16646265033887973225

namespace A038610

/-- `Δ[A173185(n)]/A064446(n+1)` -/
def P16646265033887973225.Spec : Prop :=
  ∀ n, P16646265033887973225.a n = (A038610 (n + 1) : ℚ)

end A038610

/-! ## A038610.P3179470762128628809

`A003418(n+1)/A064446(n+1)`
-/

namespace A038610.P3179470762128628809
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003418 (n + 1) : ℚ) / (A064446 (n + 1) : ℚ)

end

end A038610.P3179470762128628809

namespace A038610

/-- `A003418(n+1)/A064446(n+1)` -/
def P3179470762128628809.Spec : Prop :=
  ∀ n, P3179470762128628809.a n = (A038610 (n + 1) : ℚ)

end A038610

/-! ## A038610.P14486286376186407373

`A081528(n+1)/A133900(n+1)`
-/

namespace A038610.P14486286376186407373
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A081528 (n + 1) : ℚ) / (A133900 (n + 1) : ℚ)

end

end A038610.P14486286376186407373

namespace A038610

/-- `A081528(n+1)/A133900(n+1)` -/
def P14486286376186407373.Spec : Prop :=
  ∀ n, P14486286376186407373.a n = (A038610 (n + 1) : ℚ)

end A038610

/-! ## A038610.P9774275171584318014

`lcm(A003418(n), A133900(n+1))/A133900(n+1)`
-/

namespace A038610.P9774275171584318014
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (A003418 n) (A133900 (n + 1)) : ℚ) / (A133900 (n + 1) : ℚ)

end

end A038610.P9774275171584318014

namespace A038610

/-- `lcm(A003418(n), A133900(n+1))/A133900(n+1)` -/
def P9774275171584318014.Spec : Prop :=
  ∀ n, P9774275171584318014.a n = (A038610 (n + 1) : ℚ)

end A038610

/-! ## A038610.P12920888754767864914

`A002944(n+1)/A032742(A064446(n+1)/A032742(n+1))`
-/

namespace A038610.P12920888754767864914
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002944 (n + 1) : ℚ) / (A032742 (SequenceMachineLib.roundAway ((A064446 (n + 1) : ℚ) / (A032742 (n + 1) : ℚ))).toNat : ℚ)

end

end A038610.P12920888754767864914

namespace A038610

/-- `A002944(n+1)/A032742(A064446(n+1)/A032742(n+1))` -/
def P12920888754767864914.Spec : Prop :=
  ∀ n, P12920888754767864914.a n = (A038610 (n + 1) : ℚ)

end A038610

/-! ## A038610.P14716624059128501510

`gcd(A001783(n+1), A003418(n))`
-/

namespace A038610.P14716624059128501510
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A001783 (n + 1)) (A003418 n)

end

end A038610.P14716624059128501510

namespace A038610

/-- `gcd(A001783(n+1), A003418(n))` -/
def P14716624059128501510.Spec : Prop :=
  ∀ n, (P14716624059128501510.a n : ℤ) = A038610 (n + 1)

end A038610

/-! ## A038610.P6843675453125644803

`gcd(Δ[A173185(n)], A095996(n+1))`
-/

namespace A038610.P6843675453125644803
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173185 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (f1 (n + 1) - f1 n) (A095996 (n + 1))

end

end A038610.P6843675453125644803

namespace A038610

/-- `gcd(Δ[A173185(n)], A095996(n+1))` -/
def P6843675453125644803.Spec : Prop :=
  ∀ n, (P6843675453125644803.a n : ℤ) = A038610 (n + 1)

end A038610

/-!
# A038611: Primes not containing the digit '3'.

The programs for A038611, the canonical program `A038611.P4157217117565375407` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A038611 has offset 1).

The definition of A038611 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 966 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A038611.P17243659629247839456

`p?[A052405(n+1)]`
-/

namespace A038611.P17243659629247839456
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052405 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A038611.P17243659629247839456

namespace A038611

/-- `p?[A052405(n+1)]` -/
def P17243659629247839456.Spec : Prop :=
  ∀ n, P17243659629247839456.a n = A038611 (n + 1)

end A038611

/-! ## A038611.P4157217117565375407

`p?[comp[A011533(n+1)]]`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A038611

/-- `p?[comp[A011533(n+1)]]` -/
def P4157217117565375407.Spec : Prop :=
  ∀ n, (P4157217117565375407.a n : ℤ) = A038611 (n + 1)

theorem P4157217117565375407.correct : P4157217117565375407.Spec := by
  intro n
  simp only [A038611, Nat.add_sub_cancel]

end A038611

/-! ## A038611.P8045594460846894951

`record[A006530(A052405(n+3))]`
-/

namespace A038611.P8045594460846894951
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A052405 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A038611.P8045594460846894951

namespace A038611

/-- `record[A006530(A052405(n+3))]` -/
def P8045594460846894951.Spec : Prop :=
  ∀ n, P8045594460846894951.a n = A038611 (n + 1)

end A038611

/-! ## A038611.P15110847641090095799

`filter[A052405(n+2), A010051(#)]`
-/

namespace A038611.P15110847641090095799
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052405 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A038611.P15110847641090095799

namespace A038611

/-- `filter[A052405(n+2), A010051(#)]` -/
def P15110847641090095799.Spec : Prop :=
  ∀ n, P15110847641090095799.a n = A038611 (n + 1)

end A038611

/-! ## A038611.P9689745335702591729

`∩[A000040(n+1), A052405(n+1)]`
-/

namespace A038611.P9689745335702591729
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052405 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038611.P9689745335702591729

namespace A038611

/-- `∩[A000040(n+1), A052405(n+1)]` -/
def P9689745335702591729.Spec : Prop :=
  ∀ n, (P9689745335702591729.a n : ℤ) = A038611 (n + 1)

end A038611

/-! ## A038611.P17086311525971938046

`∩[A045344(n+1), A052405(n+1)]`
-/

namespace A038611.P17086311525971938046
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052405 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038611.P17086311525971938046

namespace A038611

/-- `∩[A045344(n+1), A052405(n+1)]` -/
def P17086311525971938046.Spec : Prop :=
  ∀ n, (P17086311525971938046.a n : ℤ) = A038611 (n + 1)

end A038611

/-! ## A038611.P16357077435692631068

`∩[A045348(n+1), A052405(n+1)]`
-/

namespace A038611.P16357077435692631068
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045348 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052405 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038611.P16357077435692631068

namespace A038611

/-- `∩[A045348(n+1), A052405(n+1)]` -/
def P16357077435692631068.Spec : Prop :=
  ∀ n, (P16357077435692631068.a n : ℤ) = A038611 (n + 1)

end A038611

/-! ## A038611.P1025064051514916647

`∩[A052405(n+1), A076805(n+1)]`
-/

namespace A038611.P1025064051514916647
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052405 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076805 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038611.P1025064051514916647

namespace A038611

/-- `∩[A052405(n+1), A076805(n+1)]` -/
def P1025064051514916647.Spec : Prop :=
  ∀ n, (P1025064051514916647.a n : ℤ) = A038611 (n + 1)

end A038611

/-! ## A038611.P4752210648530236561

`p?[record[A004178(n)]]`
-/

namespace A038611.P4752210648530236561
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004178 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A038611.P4752210648530236561

namespace A038611

/-- `p?[record[A004178(n)]]` -/
def P4752210648530236561.Spec : Prop :=
  ∀ n, P4752210648530236561.a n = A038611 (n + 1)

end A038611

/-! ## A038611.P10526262600855603142

`p?[record[A004722(n)]]`
-/

namespace A038611.P10526262600855603142
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004722 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A038611.P10526262600855603142

namespace A038611

/-- `p?[record[A004722(n)]]` -/
def P10526262600855603142.Spec : Prop :=
  ∀ n, P10526262600855603142.a n = A038611 (n + 1)

end A038611

/-! ## A038611.P9872315872092583141

`p?[record[A222234(n)]]`
-/

namespace A038611.P9872315872092583141
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222234 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A038611.P9872315872092583141

namespace A038611

/-- `p?[record[A222234(n)]]` -/
def P9872315872092583141.Spec : Prop :=
  ∀ n, P9872315872092583141.a n = A038611 (n + 1)

end A038611

/-! ## A038611.P4284691488932115976

`p?[n*(A316864(n)+1)]`
-/

namespace A038611.P4284691488932115976
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A316864 n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A038611.P4284691488932115976

namespace A038611

/-- `p?[n*(A316864(n)+1)]` -/
def P4284691488932115976.Spec : Prop :=
  ∀ n, P4284691488932115976.a n = A038611 (n + 1)

end A038611

/-! ## A038611.P12113759773023355869

`eq[A004178(n), A007918(n)]`
-/

namespace A038611.P12113759773023355869
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004178 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007918 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A038611.P12113759773023355869

namespace A038611

/-- `eq[A004178(n), A007918(n)]` -/
def P12113759773023355869.Spec : Prop :=
  ∀ n, (P12113759773023355869.a n : ℤ) = A038611 (n + 1)

end A038611

/-! ## A038611.P8549535351809295282

`eq[n, A004178(A051697(n))]`
-/

namespace A038611.P8549535351809295282
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004178 (A051697 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A038611.P8549535351809295282

namespace A038611

/-- `eq[n, A004178(A051697(n))]` -/
def P8549535351809295282.Spec : Prop :=
  ∀ n, (P8549535351809295282.a n : ℤ) = A038611 (n + 1)

end A038611

/-! ## A038611.P7557837621996354582

`eq[A004178(n), A062584(n)]`
-/

namespace A038611.P7557837621996354582
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004178 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062584 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A038611.P7557837621996354582

namespace A038611

/-- `eq[A004178(n), A062584(n)]` -/
def P7557837621996354582.Spec : Prop :=
  ∀ n, (P7557837621996354582.a n : ℤ) = A038611 (n + 1)

end A038611

/-! ## A038611.P8023378219595540883

`eq[A004178(n), A064502(n)]`
-/

namespace A038611.P8023378219595540883
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004178 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064502 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A038611.P8023378219595540883

namespace A038611

/-- `eq[A004178(n), A064502(n)]` -/
def P8023378219595540883.Spec : Prop :=
  ∀ n, (P8023378219595540883.a n : ℤ) = A038611 (n + 1)

end A038611

/-! ## A038611.P18348180057508252877

`eq[A004178(n), A077018(n)]`
-/

namespace A038611.P18348180057508252877
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004178 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077018 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A038611.P18348180057508252877

namespace A038611

/-- `eq[A004178(n), A077018(n)]` -/
def P18348180057508252877.Spec : Prop :=
  ∀ n, (P18348180057508252877.a n : ℤ) = A038611 (n + 1)

end A038611

/-! ## A038611.P15797921122240735010

`eq[A004178(n), A084413(n)]`
-/

namespace A038611.P15797921122240735010
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004178 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084413 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A038611.P15797921122240735010

namespace A038611

/-- `eq[A004178(n), A084413(n)]` -/
def P15797921122240735010.Spec : Prop :=
  ∀ n, (P15797921122240735010.a n : ℤ) = A038611 (n + 1)

end A038611

/-! ## A038611.P7291971381013771687

`eq[A004178(n), A272476(n)]`
-/

namespace A038611.P7291971381013771687
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004178 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272476 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A038611.P7291971381013771687

namespace A038611

/-- `eq[A004178(n), A272476(n)]` -/
def P7291971381013771687.Spec : Prop :=
  ∀ n, (P7291971381013771687.a n : ℤ) = A038611 (n + 1)

end A038611

/-! ## A038611.P18253925601448242240

`eq[A004178(n), A327420(n)]`
-/

namespace A038611.P18253925601448242240
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004178 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327420 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A038611.P18253925601448242240

namespace A038611

/-- `eq[A004178(n), A327420(n)]` -/
def P18253925601448242240.Spec : Prop :=
  ∀ n, (P18253925601448242240.a n : ℤ) = A038611 (n + 1)

end A038611

/-!
# A038612: Primes not containing the digit '4'.

The programs for A038612, the canonical program `A038612.P8782522908365657208` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A038612 has offset 1).

The definition of A038612 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1310 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A038612.P8782522908365657208

`p?[A052406(n+1)]`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A038612

/-- `p?[A052406(n+1)]` -/
def P8782522908365657208.Spec : Prop :=
  ∀ n, P8782522908365657208.a n = A038612 (n + 1)

theorem P8782522908365657208.correct : P8782522908365657208.Spec := by
  intro n
  simp only [A038612, Nat.add_sub_cancel]

end A038612

/-! ## A038612.P7168700316273754875

`filter[A052406(n+2), A010051(#)]`
-/

namespace A038612.P7168700316273754875
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052406 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A038612.P7168700316273754875

namespace A038612

/-- `filter[A052406(n+2), A010051(#)]` -/
def P7168700316273754875.Spec : Prop :=
  ∀ n, P7168700316273754875.a n = A038612 (n + 1)

end A038612

/-! ## A038612.P8942719136606854811

`∩[A000040(n+1), A052406(n+1)]`
-/

namespace A038612.P8942719136606854811
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052406 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038612.P8942719136606854811

namespace A038612

/-- `∩[A000040(n+1), A052406(n+1)]` -/
def P8942719136606854811.Spec : Prop :=
  ∀ n, (P8942719136606854811.a n : ℤ) = A038612 (n + 1)

end A038612

/-! ## A038612.P8309576775247060922

`∩[A052406(n+1), A175787(n+1)]`
-/

namespace A038612.P8309576775247060922
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052406 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175787 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038612.P8309576775247060922

namespace A038612

/-- `∩[A052406(n+1), A175787(n+1)]` -/
def P8309576775247060922.Spec : Prop :=
  ∀ n, (P8309576775247060922.a n : ℤ) = A038612 (n + 1)

end A038612

/-! ## A038612.P17064953210965586329

`p?[record[A004179(n)]]`
-/

namespace A038612.P17064953210965586329
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004179 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A038612.P17064953210965586329

namespace A038612

/-- `p?[record[A004179(n)]]` -/
def P17064953210965586329.Spec : Prop :=
  ∀ n, P17064953210965586329.a n = A038612 (n + 1)

end A038612

/-! ## A038612.P10569986704350335923

`p?[record[A004723(n)]]`
-/

namespace A038612.P10569986704350335923
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004723 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A038612.P10569986704350335923

namespace A038612

/-- `p?[record[A004723(n)]]` -/
def P10569986704350335923.Spec : Prop :=
  ∀ n, P10569986704350335923.a n = A038612 (n + 1)

end A038612

/-! ## A038612.P6083771517131297898

`p?[record[A222240(n)]]`
-/

namespace A038612.P6083771517131297898
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222240 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A038612.P6083771517131297898

namespace A038612

/-- `p?[record[A222240(n)]]` -/
def P6083771517131297898.Spec : Prop :=
  ∀ n, P6083771517131297898.a n = A038612 (n + 1)

end A038612

/-! ## A038612.P13540100103032039648

`eq[A004179(n), A007918(n)]`
-/

namespace A038612.P13540100103032039648
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004179 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007918 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A038612.P13540100103032039648

namespace A038612

/-- `eq[A004179(n), A007918(n)]` -/
def P13540100103032039648.Spec : Prop :=
  ∀ n, (P13540100103032039648.a n : ℤ) = A038612 (n + 1)

end A038612

/-! ## A038612.P4660963192495981161

`eq[n, A004179(A051697(n))]`
-/

namespace A038612.P4660963192495981161
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004179 (A051697 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A038612.P4660963192495981161

namespace A038612

/-- `eq[n, A004179(A051697(n))]` -/
def P4660963192495981161.Spec : Prop :=
  ∀ n, (P4660963192495981161.a n : ℤ) = A038612 (n + 1)

end A038612

/-! ## A038612.P16581216021330332704

`eq[A004179(n), A062584(n)]`
-/

namespace A038612.P16581216021330332704
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004179 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062584 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A038612.P16581216021330332704

namespace A038612

/-- `eq[A004179(n), A062584(n)]` -/
def P16581216021330332704.Spec : Prop :=
  ∀ n, (P16581216021330332704.a n : ℤ) = A038612 (n + 1)

end A038612

/-! ## A038612.P11079387248431969866

`eq[A004179(n), A077018(n)]`
-/

namespace A038612.P11079387248431969866
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004179 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077018 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A038612.P11079387248431969866

namespace A038612

/-- `eq[A004179(n), A077018(n)]` -/
def P11079387248431969866.Spec : Prop :=
  ∀ n, (P11079387248431969866.a n : ℤ) = A038612 (n + 1)

end A038612

/-! ## A038612.P8405828301936739304

`eq[A004179(n), A084413(n)]`
-/

namespace A038612.P8405828301936739304
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004179 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084413 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A038612.P8405828301936739304

namespace A038612

/-- `eq[A004179(n), A084413(n)]` -/
def P8405828301936739304.Spec : Prop :=
  ∀ n, (P8405828301936739304.a n : ℤ) = A038612 (n + 1)

end A038612

/-! ## A038612.P11755789328154367418

`eq[A004179(n), A272476(n)]`
-/

namespace A038612.P11755789328154367418
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004179 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272476 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A038612.P11755789328154367418

namespace A038612

/-- `eq[A004179(n), A272476(n)]` -/
def P11755789328154367418.Spec : Prop :=
  ∀ n, (P11755789328154367418.a n : ℤ) = A038612 (n + 1)

end A038612

/-! ## A038612.P9904780006743498921

`eq[A004179(n), A327420(n)]`
-/

namespace A038612.P9904780006743498921
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004179 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327420 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A038612.P9904780006743498921

namespace A038612

/-- `eq[A004179(n), A327420(n)]` -/
def P9904780006743498921.Spec : Prop :=
  ∀ n, (P9904780006743498921.a n : ℤ) = A038612 (n + 1)

end A038612

/-! ## A038612.P12197532056288753028

`p?[A222234(record[A222234(n)])]`
-/

namespace A038612.P12197532056288753028
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222234 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222234 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A038612.P12197532056288753028

namespace A038612

/-- `p?[A222234(record[A222234(n)])]` -/
def P12197532056288753028.Spec : Prop :=
  ∀ n, P12197532056288753028.a n = A038612 (n + 1)

end A038612

/-! ## A038612.P1825692873004700258

`filter[A052406(n+3), A080339(#)]`
-/

namespace A038612.P1825692873004700258
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052406 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A080339 (f1 j).toNat = 1) n)

end

end A038612.P1825692873004700258

namespace A038612

/-- `filter[A052406(n+3), A080339(#)]` -/
def P1825692873004700258.Spec : Prop :=
  ∀ n, P1825692873004700258.a n = A038612 (n + 1)

end A038612

/-! ## A038612.P11492235710202253303

`eq[n, A004179(A035031(n+1))]`
-/

namespace A038612.P11492235710202253303
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004179 (A035031 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A038612.P11492235710202253303

namespace A038612

/-- `eq[n, A004179(A035031(n+1))]` -/
def P11492235710202253303.Spec : Prop :=
  ∀ n, (P11492235710202253303.a n : ℤ) = A038612 (n + 1)

end A038612

/-! ## A038612.P470537112571678543

`eq[n, A004179(A035032(n+1))]`
-/

namespace A038612.P470537112571678543
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004179 (A035032 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A038612.P470537112571678543

namespace A038612

/-- `eq[n, A004179(A035032(n+1))]` -/
def P470537112571678543.Spec : Prop :=
  ∀ n, (P470537112571678543.a n : ℤ) = A038612 (n + 1)

end A038612

/-! ## A038612.P16635129148269528512

`eq[A004179(n), A038700(n+1)]`
-/

namespace A038612.P16635129148269528512
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004179 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038700 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A038612.P16635129148269528512

namespace A038612

/-- `eq[A004179(n), A038700(n+1)]` -/
def P16635129148269528512.Spec : Prop :=
  ∀ n, (P16635129148269528512.a n : ℤ) = A038612 (n + 1)

end A038612

/-! ## A038612.P10691548221737009513

`eq[A004179(n), A093868(n+1)]`
-/

namespace A038612.P10691548221737009513
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004179 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093868 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A038612.P10691548221737009513

namespace A038612

/-- `eq[A004179(n), A093868(n+1)]` -/
def P10691548221737009513.Spec : Prop :=
  ∀ n, (P10691548221737009513.a n : ℤ) = A038612 (n + 1)

end A038612

/-!
# A038613: Primes not containing the digit '5'.

The programs for A038613, the canonical program `A038613.P7921595428629418031` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A038613 has offset 1).

The definition of A038613 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1301 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A038613.P7921595428629418031

`p?[A052413(n+1)]`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A038613

/-- `p?[A052413(n+1)]` -/
def P7921595428629418031.Spec : Prop :=
  ∀ n, P7921595428629418031.a n = A038613 (n + 1)

theorem P7921595428629418031.correct : P7921595428629418031.Spec := by
  intro n
  simp only [A038613, Nat.add_sub_cancel]

end A038613

/-! ## A038613.P13600296664307702790

`record[A006530(A052413(n+3))]`
-/

namespace A038613.P13600296664307702790
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A052413 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A038613.P13600296664307702790

namespace A038613

/-- `record[A006530(A052413(n+3))]` -/
def P13600296664307702790.Spec : Prop :=
  ∀ n, P13600296664307702790.a n = A038613 (n + 1)

end A038613

/-! ## A038613.P17810255105420482465

`filter[A052413(n+2), A010051(#)]`
-/

namespace A038613.P17810255105420482465
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052413 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A038613.P17810255105420482465

namespace A038613

/-- `filter[A052413(n+2), A010051(#)]` -/
def P17810255105420482465.Spec : Prop :=
  ∀ n, P17810255105420482465.a n = A038613 (n + 1)

end A038613

/-! ## A038613.P4222243796967694884

`∩[A000040(n+1), A052413(n+1)]`
-/

namespace A038613.P4222243796967694884
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052413 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038613.P4222243796967694884

namespace A038613

/-- `∩[A000040(n+1), A052413(n+1)]` -/
def P4222243796967694884.Spec : Prop :=
  ∀ n, (P4222243796967694884.a n : ℤ) = A038613 (n + 1)

end A038613

/-! ## A038613.P9984834773953421110

`∩[A045319(n+1), A052413(n+1)]`
-/

namespace A038613.P9984834773953421110
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052413 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038613.P9984834773953421110

namespace A038613

/-- `∩[A045319(n+1), A052413(n+1)]` -/
def P9984834773953421110.Spec : Prop :=
  ∀ n, (P9984834773953421110.a n : ℤ) = A038613 (n + 1)

end A038613

/-! ## A038613.P2879405781660837686

`p?[record[A004180(n)]]`
-/

namespace A038613.P2879405781660837686
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004180 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A038613.P2879405781660837686

namespace A038613

/-- `p?[record[A004180(n)]]` -/
def P2879405781660837686.Spec : Prop :=
  ∀ n, P2879405781660837686.a n = A038613 (n + 1)

end A038613

/-! ## A038613.P2572256526039463197

`p?[record[A004724(n)]]`
-/

namespace A038613.P2572256526039463197
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004724 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A038613.P2572256526039463197

namespace A038613

/-- `p?[record[A004724(n)]]` -/
def P2572256526039463197.Spec : Prop :=
  ∀ n, P2572256526039463197.a n = A038613 (n + 1)

end A038613

/-! ## A038613.P18426062281875253613

`p?[record[A222245(n)]]`
-/

namespace A038613.P18426062281875253613
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222245 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A038613.P18426062281875253613

namespace A038613

/-- `p?[record[A222245(n)]]` -/
def P18426062281875253613.Spec : Prop :=
  ∀ n, P18426062281875253613.a n = A038613 (n + 1)

end A038613

/-! ## A038613.P16213218160322887530

`p?[gcd(5*n, A230101(n))]`
-/

namespace A038613.P16213218160322887530
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (5 * n : ℤ) (A230101 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A038613.P16213218160322887530

namespace A038613

/-- `p?[gcd(5*n, A230101(n))]` -/
def P16213218160322887530.Spec : Prop :=
  ∀ n, (P16213218160322887530.a n : ℤ) = A038613 (n + 1)

end A038613

/-! ## A038613.P9068669054599960530

`eq[A004180(n), A007918(n)]`
-/

namespace A038613.P9068669054599960530
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004180 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007918 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A038613.P9068669054599960530

namespace A038613

/-- `eq[A004180(n), A007918(n)]` -/
def P9068669054599960530.Spec : Prop :=
  ∀ n, (P9068669054599960530.a n : ℤ) = A038613 (n + 1)

end A038613

/-! ## A038613.P17084221638437080493

`eq[n, A004180(A051697(n))]`
-/

namespace A038613.P17084221638437080493
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004180 (A051697 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A038613.P17084221638437080493

namespace A038613

/-- `eq[n, A004180(A051697(n))]` -/
def P17084221638437080493.Spec : Prop :=
  ∀ n, (P17084221638437080493.a n : ℤ) = A038613 (n + 1)

end A038613

/-! ## A038613.P15612690843617282266

`eq[A004180(n), A062584(n)]`
-/

namespace A038613.P15612690843617282266
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004180 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062584 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A038613.P15612690843617282266

namespace A038613

/-- `eq[A004180(n), A062584(n)]` -/
def P15612690843617282266.Spec : Prop :=
  ∀ n, (P15612690843617282266.a n : ℤ) = A038613 (n + 1)

end A038613

/-! ## A038613.P6169517527158647590

`eq[A004180(n), A064502(n)]`
-/

namespace A038613.P6169517527158647590
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004180 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064502 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A038613.P6169517527158647590

namespace A038613

/-- `eq[A004180(n), A064502(n)]` -/
def P6169517527158647590.Spec : Prop :=
  ∀ n, (P6169517527158647590.a n : ℤ) = A038613 (n + 1)

end A038613

/-! ## A038613.P16971101628917460678

`eq[A004180(n), A077018(n)]`
-/

namespace A038613.P16971101628917460678
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004180 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077018 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A038613.P16971101628917460678

namespace A038613

/-- `eq[A004180(n), A077018(n)]` -/
def P16971101628917460678.Spec : Prop :=
  ∀ n, (P16971101628917460678.a n : ℤ) = A038613 (n + 1)

end A038613

/-! ## A038613.P13815036794361904545

`eq[A004180(n), A084413(n)]`
-/

namespace A038613.P13815036794361904545
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004180 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084413 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A038613.P13815036794361904545

namespace A038613

/-- `eq[A004180(n), A084413(n)]` -/
def P13815036794361904545.Spec : Prop :=
  ∀ n, (P13815036794361904545.a n : ℤ) = A038613 (n + 1)

end A038613

/-! ## A038613.P7616002936509240259

`eq[A004180(n), A272476(n)]`
-/

namespace A038613.P7616002936509240259
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004180 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272476 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A038613.P7616002936509240259

namespace A038613

/-- `eq[A004180(n), A272476(n)]` -/
def P7616002936509240259.Spec : Prop :=
  ∀ n, (P7616002936509240259.a n : ℤ) = A038613 (n + 1)

end A038613

/-! ## A038613.P6957343821321670320

`eq[A004180(n), A327420(n)]`
-/

namespace A038613.P6957343821321670320
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004180 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327420 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A038613.P6957343821321670320

namespace A038613

/-- `eq[A004180(n), A327420(n)]` -/
def P6957343821321670320.Spec : Prop :=
  ∀ n, (P6957343821321670320.a n : ℤ) = A038613 (n + 1)

end A038613

/-! ## A038613.P15034144716568145642

`p?[A222240(record[A222240(n)])]`
-/

namespace A038613.P15034144716568145642
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222240 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222240 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A038613.P15034144716568145642

namespace A038613

/-- `p?[A222240(record[A222240(n)])]` -/
def P15034144716568145642.Spec : Prop :=
  ∀ n, P15034144716568145642.a n = A038613 (n + 1)

end A038613

/-! ## A038613.P4108908769523492178

`record[A004180(A000040(n+1))]`
-/

namespace A038613.P4108908769523492178
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004180 (A000040 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A038613.P4108908769523492178

namespace A038613

/-- `record[A004180(A000040(n+1))]` -/
def P4108908769523492178.Spec : Prop :=
  ∀ n, P4108908769523492178.a n = A038613 (n + 1)

end A038613

/-! ## A038613.P6921772862724464229

`record[A004180(A006530(n+2))]`
-/

namespace A038613.P6921772862724464229
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004180 (A006530 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A038613.P6921772862724464229

namespace A038613

/-- `record[A004180(A006530(n+2))]` -/
def P6921772862724464229.Spec : Prop :=
  ∀ n, P6921772862724464229.a n = A038613 (n + 1)

end A038613

/-!
# A038614: Primes not containing the digit '6'.

The programs for A038614, the canonical program `A038614.P8063922092030666977` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A038614 has offset 1).

The definition of A038614 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1299 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A038614.P8063922092030666977

`p?[A052414(n+1)]`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A038614

/-- `p?[A052414(n+1)]` -/
def P8063922092030666977.Spec : Prop :=
  ∀ n, P8063922092030666977.a n = A038614 (n + 1)

theorem P8063922092030666977.correct : P8063922092030666977.Spec := by
  intro n
  simp only [A038614, Nat.add_sub_cancel]

end A038614

/-! ## A038614.P5505810345056396217

`∩[A000040(n+1), A052414(n+1)]`
-/

namespace A038614.P5505810345056396217
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052414 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038614.P5505810345056396217

namespace A038614

/-- `∩[A000040(n+1), A052414(n+1)]` -/
def P5505810345056396217.Spec : Prop :=
  ∀ n, (P5505810345056396217.a n : ℤ) = A038614 (n + 1)

end A038614

/-! ## A038614.P818550783048706545

`∩[A052414(n+1), A116974(n+1)]`
-/

namespace A038614.P818550783048706545
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052414 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116974 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038614.P818550783048706545

namespace A038614

/-- `∩[A052414(n+1), A116974(n+1)]` -/
def P818550783048706545.Spec : Prop :=
  ∀ n, (P818550783048706545.a n : ℤ) = A038614 (n + 1)

end A038614

/-! ## A038614.P15088351529907117243

`p?[record[A004181(n)]]`
-/

namespace A038614.P15088351529907117243
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004181 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A038614.P15088351529907117243

namespace A038614

/-- `p?[record[A004181(n)]]` -/
def P15088351529907117243.Spec : Prop :=
  ∀ n, P15088351529907117243.a n = A038614 (n + 1)

end A038614

/-! ## A038614.P8599822294972022844

`p?[record[A004725(n)]]`
-/

namespace A038614.P8599822294972022844
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004725 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A038614.P8599822294972022844

namespace A038614

/-- `p?[record[A004725(n)]]` -/
def P8599822294972022844.Spec : Prop :=
  ∀ n, P8599822294972022844.a n = A038614 (n + 1)

end A038614

/-! ## A038614.P2839541249437995432

`eq[A004181(n), A007918(n)]`
-/

namespace A038614.P2839541249437995432
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004181 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007918 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A038614.P2839541249437995432

namespace A038614

/-- `eq[A004181(n), A007918(n)]` -/
def P2839541249437995432.Spec : Prop :=
  ∀ n, (P2839541249437995432.a n : ℤ) = A038614 (n + 1)

end A038614

/-! ## A038614.P18342050871810951313

`eq[n, A004181(A051697(n))]`
-/

namespace A038614.P18342050871810951313
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004181 (A051697 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A038614.P18342050871810951313

namespace A038614

/-- `eq[n, A004181(A051697(n))]` -/
def P18342050871810951313.Spec : Prop :=
  ∀ n, (P18342050871810951313.a n : ℤ) = A038614 (n + 1)

end A038614

/-! ## A038614.P7585102443353886056

`eq[A004181(n), A062584(n)]`
-/

namespace A038614.P7585102443353886056
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004181 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062584 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A038614.P7585102443353886056

namespace A038614

/-- `eq[A004181(n), A062584(n)]` -/
def P7585102443353886056.Spec : Prop :=
  ∀ n, (P7585102443353886056.a n : ℤ) = A038614 (n + 1)

end A038614

/-! ## A038614.P6830409334462960041

`eq[A004181(n), A077018(n)]`
-/

namespace A038614.P6830409334462960041
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004181 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077018 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A038614.P6830409334462960041

namespace A038614

/-- `eq[A004181(n), A077018(n)]` -/
def P6830409334462960041.Spec : Prop :=
  ∀ n, (P6830409334462960041.a n : ℤ) = A038614 (n + 1)

end A038614

/-! ## A038614.P16056833676892647539

`eq[A004181(n), A084413(n)]`
-/

namespace A038614.P16056833676892647539
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004181 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084413 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A038614.P16056833676892647539

namespace A038614

/-- `eq[A004181(n), A084413(n)]` -/
def P16056833676892647539.Spec : Prop :=
  ∀ n, (P16056833676892647539.a n : ℤ) = A038614 (n + 1)

end A038614

/-! ## A038614.P6000529858687203693

`eq[A004181(n), A272476(n)]`
-/

namespace A038614.P6000529858687203693
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004181 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272476 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A038614.P6000529858687203693

namespace A038614

/-- `eq[A004181(n), A272476(n)]` -/
def P6000529858687203693.Spec : Prop :=
  ∀ n, (P6000529858687203693.a n : ℤ) = A038614 (n + 1)

end A038614

/-! ## A038614.P896926876818776759

`eq[A004181(n), A327420(n)]`
-/

namespace A038614.P896926876818776759
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004181 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327420 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A038614.P896926876818776759

namespace A038614

/-- `eq[A004181(n), A327420(n)]` -/
def P896926876818776759.Spec : Prop :=
  ∀ n, (P896926876818776759.a n : ℤ) = A038614 (n + 1)

end A038614

/-! ## A038614.P16986581399116607880

`eq[n, A004181(A035031(n+1))]`
-/

namespace A038614.P16986581399116607880
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004181 (A035031 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A038614.P16986581399116607880

namespace A038614

/-- `eq[n, A004181(A035031(n+1))]` -/
def P16986581399116607880.Spec : Prop :=
  ∀ n, (P16986581399116607880.a n : ℤ) = A038614 (n + 1)

end A038614

/-! ## A038614.P10337531808319675134

`eq[n, A004181(A035032(n+1))]`
-/

namespace A038614.P10337531808319675134
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004181 (A035032 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A038614.P10337531808319675134

namespace A038614

/-- `eq[n, A004181(A035032(n+1))]` -/
def P10337531808319675134.Spec : Prop :=
  ∀ n, (P10337531808319675134.a n : ℤ) = A038614 (n + 1)

end A038614

/-! ## A038614.P13624992041928288928

`eq[A004181(n), A038700(n+1)]`
-/

namespace A038614.P13624992041928288928
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004181 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038700 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A038614.P13624992041928288928

namespace A038614

/-- `eq[A004181(n), A038700(n+1)]` -/
def P13624992041928288928.Spec : Prop :=
  ∀ n, (P13624992041928288928.a n : ℤ) = A038614 (n + 1)

end A038614

/-! ## A038614.P9027074462287163073

`eq[A004181(n), A093868(n+1)]`
-/

namespace A038614.P9027074462287163073
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004181 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093868 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A038614.P9027074462287163073

namespace A038614

/-- `eq[A004181(n), A093868(n+1)]` -/
def P9027074462287163073.Spec : Prop :=
  ∀ n, (P9027074462287163073.a n : ℤ) = A038614 (n + 1)

end A038614

/-! ## A038614.P10517637139392972383

`eq[n, A004181(A295609(n))]`
-/

namespace A038614.P10517637139392972383
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004181 (A295609 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A038614.P10517637139392972383

namespace A038614

/-- `eq[n, A004181(A295609(n))]` -/
def P10517637139392972383.Spec : Prop :=
  ∀ n, (P10517637139392972383.a n : ℤ) = A038614 (n + 1)

end A038614

/-! ## A038614.P5161148504170415159

`eq[A004181(n), A194603(n+1)]`
-/

namespace A038614.P5161148504170415159
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004181 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194603 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A038614.P5161148504170415159

namespace A038614

/-- `eq[A004181(n), A194603(n+1)]` -/
def P5161148504170415159.Spec : Prop :=
  ∀ n, (P5161148504170415159.a n : ℤ) = A038614 (n + 1)

end A038614

/-! ## A038614.P17608941366086021761

`eq[A004181(n), A249803(n+1)]`
-/

namespace A038614.P17608941366086021761
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004181 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249803 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A038614.P17608941366086021761

namespace A038614

/-- `eq[A004181(n), A249803(n+1)]` -/
def P17608941366086021761.Spec : Prop :=
  ∀ n, (P17608941366086021761.a n : ℤ) = A038614 (n + 1)

end A038614

/-!
# A038615: Primes not containing the digit '7'.

The programs for A038615, the canonical program `A038615.P850949430042522498` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A038615 has offset 1).

The definition of A038615 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1119 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A038615.P8562628350483839872

`record[p?[A004182(n)]]`
-/

namespace A038615.P8562628350483839872
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004182 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A038615.P8562628350483839872

namespace A038615

/-- `record[p?[A004182(n)]]` -/
def P8562628350483839872.Spec : Prop :=
  ∀ n, P8562628350483839872.a n = A038615 (n + 1)

end A038615

/-! ## A038615.P10241526985958907084

`eq[A004182(n), A064502(n)]`
-/

namespace A038615.P10241526985958907084
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004182 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064502 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A038615.P10241526985958907084

namespace A038615

/-- `eq[A004182(n), A064502(n)]` -/
def P10241526985958907084.Spec : Prop :=
  ∀ n, (P10241526985958907084.a n : ℤ) = A038615 (n + 1)

end A038615

/-! ## A038615.P17946141145176633202

`record[A004182(A000040(n+1))]`
-/

namespace A038615.P17946141145176633202
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004182 (A000040 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A038615.P17946141145176633202

namespace A038615

/-- `record[A004182(A000040(n+1))]` -/
def P17946141145176633202.Spec : Prop :=
  ∀ n, P17946141145176633202.a n = A038615 (n + 1)

end A038615

/-! ## A038615.P12632448384125198395

`record[A004182(A006530(n+2))]`
-/

namespace A038615.P12632448384125198395
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004182 (A006530 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A038615.P12632448384125198395

namespace A038615

/-- `record[A004182(A006530(n+2))]` -/
def P12632448384125198395.Spec : Prop :=
  ∀ n, P12632448384125198395.a n = A038615 (n + 1)

end A038615

/-! ## A038615.P9624766214618416725

`record[A004182(A020639(n+2))]`
-/

namespace A038615.P9624766214618416725
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004182 (A020639 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A038615.P9624766214618416725

namespace A038615

/-- `record[A004182(A020639(n+2))]` -/
def P9624766214618416725.Spec : Prop :=
  ∀ n, P9624766214618416725.a n = A038615 (n + 1)

end A038615

/-! ## A038615.P4067749189008634312

`eq[A004182(n), A038700(n+1)]`
-/

namespace A038615.P4067749189008634312
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004182 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038700 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A038615.P4067749189008634312

namespace A038615

/-- `eq[A004182(n), A038700(n+1)]` -/
def P4067749189008634312.Spec : Prop :=
  ∀ n, (P4067749189008634312.a n : ℤ) = A038615 (n + 1)

end A038615

/-! ## A038615.P850949430042522498

`p?[A376047(n+1)]`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A038615

/-- `p?[A376047(n+1)]` -/
def P850949430042522498.Spec : Prop :=
  ∀ n, P850949430042522498.a n = A038615 (n + 1)

theorem P850949430042522498.correct : P850949430042522498.Spec := by
  intro n
  simp only [A038615, Nat.add_sub_cancel]

end A038615

/-! ## A038615.P8565185084564471415

`filter[A376047(n+1), A010051(#)]`
-/

namespace A038615.P8565185084564471415
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376047 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A038615.P8565185084564471415

namespace A038615

/-- `filter[A376047(n+1), A010051(#)]` -/
def P8565185084564471415.Spec : Prop :=
  ∀ n, P8565185084564471415.a n = A038615 (n + 1)

end A038615

/-! ## A038615.P2928722981150539300

`∩[A000040(n+1), A376047(n+1)]`
-/

namespace A038615.P2928722981150539300
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376047 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038615.P2928722981150539300

namespace A038615

/-- `∩[A000040(n+1), A376047(n+1)]` -/
def P2928722981150539300.Spec : Prop :=
  ∀ n, (P2928722981150539300.a n : ℤ) = A038615 (n + 1)

end A038615

/-! ## A038615.P7551976082266411933

`∩[A182986(n+1), A376047(n+1)]`
-/

namespace A038615.P7551976082266411933
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376047 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038615.P7551976082266411933

namespace A038615

/-- `∩[A182986(n+1), A376047(n+1)]` -/
def P7551976082266411933.Spec : Prop :=
  ∀ n, (P7551976082266411933.a n : ℤ) = A038615 (n + 1)

end A038615

/-! ## A038615.P8226990848893795623

`p?[A052419(n+1)]`
-/

namespace A038615.P8226990848893795623
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052419 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A038615.P8226990848893795623

namespace A038615

/-- `p?[A052419(n+1)]` -/
def P8226990848893795623.Spec : Prop :=
  ∀ n, P8226990848893795623.a n = A038615 (n + 1)

end A038615

/-! ## A038615.P15570214986849415817

`record[A006530(A052419(n+3))]`
-/

namespace A038615.P15570214986849415817
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A052419 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A038615.P15570214986849415817

namespace A038615

/-- `record[A006530(A052419(n+3))]` -/
def P15570214986849415817.Spec : Prop :=
  ∀ n, P15570214986849415817.a n = A038615 (n + 1)

end A038615

/-! ## A038615.P12642254569202762633

`filter[A052419(n+2), A010051(#)]`
-/

namespace A038615.P12642254569202762633
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052419 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A038615.P12642254569202762633

namespace A038615

/-- `filter[A052419(n+2), A010051(#)]` -/
def P12642254569202762633.Spec : Prop :=
  ∀ n, P12642254569202762633.a n = A038615 (n + 1)

end A038615

/-! ## A038615.P3306935948920100590

`∩[A000040(n+1), A052419(n+1)]`
-/

namespace A038615.P3306935948920100590
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052419 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038615.P3306935948920100590

namespace A038615

/-- `∩[A000040(n+1), A052419(n+1)]` -/
def P3306935948920100590.Spec : Prop :=
  ∀ n, (P3306935948920100590.a n : ℤ) = A038615 (n + 1)

end A038615

/-! ## A038615.P7548061438334324769

`A000040(record[A263111(A052419(n+1))])`
-/

namespace A038615.P7548061438334324769
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263111 (A052419 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A038615.P7548061438334324769

namespace A038615

/-- `A000040(record[A263111(A052419(n+1))])` -/
def P7548061438334324769.Spec : Prop :=
  ∀ n, P7548061438334324769.a n = A038615 (n + 1)

end A038615

/-! ## A038615.P2993238724053513479

`p?[record[A004726(n)]]`
-/

namespace A038615.P2993238724053513479
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004726 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A038615.P2993238724053513479

namespace A038615

/-- `p?[record[A004726(n)]]` -/
def P2993238724053513479.Spec : Prop :=
  ∀ n, P2993238724053513479.a n = A038615 (n + 1)

end A038615

/-! ## A038615.P12427867502174918415

`p?[record[A222252(n)]]`
-/

namespace A038615.P12427867502174918415
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222252 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A038615.P12427867502174918415

namespace A038615

/-- `p?[record[A222252(n)]]` -/
def P12427867502174918415.Spec : Prop :=
  ∀ n, P12427867502174918415.a n = A038615 (n + 1)

end A038615

/-! ## A038615.P12058968291814633657

`p?[record[A328018(n+1)]]`
-/

namespace A038615.P12058968291814633657
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328018 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A038615.P12058968291814633657

namespace A038615

/-- `p?[record[A328018(n+1)]]` -/
def P12058968291814633657.Spec : Prop :=
  ∀ n, P12058968291814633657.a n = A038615 (n + 1)

end A038615

/-! ## A038615.P14292283674638194305

`p?[(n+1)%(A285802(n+1)+n)]`
-/

namespace A038615.P14292283674638194305
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 1 : ℤ) (A285802 (n + 1) + (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A038615.P14292283674638194305

namespace A038615

/-- `p?[(n+1)%(A285802(n+1)+n)]` -/
def P14292283674638194305.Spec : Prop :=
  ∀ n, P14292283674638194305.a n = A038615 (n + 1)

end A038615

/-! ## A038615.P13832447178285935127

`eq[A004182(n), A007918(n)]`
-/

namespace A038615.P13832447178285935127
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004182 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007918 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A038615.P13832447178285935127

namespace A038615

/-- `eq[A004182(n), A007918(n)]` -/
def P13832447178285935127.Spec : Prop :=
  ∀ n, (P13832447178285935127.a n : ℤ) = A038615 (n + 1)

end A038615

/-!
# A038616: Primes not containing the digit '8'.

The programs for A038616, the canonical program `A038616.P11115806758595749976` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A038616 has offset 1).

The definition of A038616 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1317 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A038616.P11115806758595749976

`p?[A052421(n+1)]`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A038616

/-- `p?[A052421(n+1)]` -/
def P11115806758595749976.Spec : Prop :=
  ∀ n, P11115806758595749976.a n = A038616 (n + 1)

theorem P11115806758595749976.correct : P11115806758595749976.Spec := by
  intro n
  simp only [A038616, Nat.add_sub_cancel]

end A038616

/-! ## A038616.P11333651873955958904

`∩[A000040(n+1), A052421(n+1)]`
-/

namespace A038616.P11333651873955958904
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052421 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038616.P11333651873955958904

namespace A038616

/-- `∩[A000040(n+1), A052421(n+1)]` -/
def P11333651873955958904.Spec : Prop :=
  ∀ n, (P11333651873955958904.a n : ℤ) = A038616 (n + 1)

end A038616

/-! ## A038616.P7461504672667578406

`p?[record[A004183(n)]]`
-/

namespace A038616.P7461504672667578406
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004183 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A038616.P7461504672667578406

namespace A038616

/-- `p?[record[A004183(n)]]` -/
def P7461504672667578406.Spec : Prop :=
  ∀ n, P7461504672667578406.a n = A038616 (n + 1)

end A038616

/-! ## A038616.P9535396285741488801

`p?[record[A004727(n)]]`
-/

namespace A038616.P9535396285741488801
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004727 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A038616.P9535396285741488801

namespace A038616

/-- `p?[record[A004727(n)]]` -/
def P9535396285741488801.Spec : Prop :=
  ∀ n, P9535396285741488801.a n = A038616 (n + 1)

end A038616

/-! ## A038616.P4313832127873194954

`eq[A004183(n), A007918(n)]`
-/

namespace A038616.P4313832127873194954
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004183 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007918 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A038616.P4313832127873194954

namespace A038616

/-- `eq[A004183(n), A007918(n)]` -/
def P4313832127873194954.Spec : Prop :=
  ∀ n, (P4313832127873194954.a n : ℤ) = A038616 (n + 1)

end A038616

/-! ## A038616.P14868517605544478648

`eq[n, A004183(A051697(n))]`
-/

namespace A038616.P14868517605544478648
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004183 (A051697 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A038616.P14868517605544478648

namespace A038616

/-- `eq[n, A004183(A051697(n))]` -/
def P14868517605544478648.Spec : Prop :=
  ∀ n, (P14868517605544478648.a n : ℤ) = A038616 (n + 1)

end A038616

/-! ## A038616.P9763072027805638946

`eq[A004183(n), A062584(n)]`
-/

namespace A038616.P9763072027805638946
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004183 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062584 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A038616.P9763072027805638946

namespace A038616

/-- `eq[A004183(n), A062584(n)]` -/
def P9763072027805638946.Spec : Prop :=
  ∀ n, (P9763072027805638946.a n : ℤ) = A038616 (n + 1)

end A038616

/-! ## A038616.P13147295407434929107

`eq[A004183(n), A064502(n)]`
-/

namespace A038616.P13147295407434929107
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004183 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064502 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A038616.P13147295407434929107

namespace A038616

/-- `eq[A004183(n), A064502(n)]` -/
def P13147295407434929107.Spec : Prop :=
  ∀ n, (P13147295407434929107.a n : ℤ) = A038616 (n + 1)

end A038616

/-! ## A038616.P6845467383240921448

`eq[A004183(n), A077018(n)]`
-/

namespace A038616.P6845467383240921448
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004183 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077018 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A038616.P6845467383240921448

namespace A038616

/-- `eq[A004183(n), A077018(n)]` -/
def P6845467383240921448.Spec : Prop :=
  ∀ n, (P6845467383240921448.a n : ℤ) = A038616 (n + 1)

end A038616

/-! ## A038616.P14847782926676894523

`eq[A004183(n), A084413(n)]`
-/

namespace A038616.P14847782926676894523
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004183 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084413 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A038616.P14847782926676894523

namespace A038616

/-- `eq[A004183(n), A084413(n)]` -/
def P14847782926676894523.Spec : Prop :=
  ∀ n, (P14847782926676894523.a n : ℤ) = A038616 (n + 1)

end A038616

/-! ## A038616.P8202152204691493297

`eq[A004183(n), A272476(n)]`
-/

namespace A038616.P8202152204691493297
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004183 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272476 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A038616.P8202152204691493297

namespace A038616

/-- `eq[A004183(n), A272476(n)]` -/
def P8202152204691493297.Spec : Prop :=
  ∀ n, (P8202152204691493297.a n : ℤ) = A038616 (n + 1)

end A038616

/-! ## A038616.P15986919432095016344

`eq[A004183(n), A327420(n)]`
-/

namespace A038616.P15986919432095016344
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004183 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327420 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A038616.P15986919432095016344

namespace A038616

/-- `eq[A004183(n), A327420(n)]` -/
def P15986919432095016344.Spec : Prop :=
  ∀ n, (P15986919432095016344.a n : ℤ) = A038616 (n + 1)

end A038616

/-! ## A038616.P13400456634544868974

`eq[n, A004183(A035031(n+1))]`
-/

namespace A038616.P13400456634544868974
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004183 (A035031 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A038616.P13400456634544868974

namespace A038616

/-- `eq[n, A004183(A035031(n+1))]` -/
def P13400456634544868974.Spec : Prop :=
  ∀ n, (P13400456634544868974.a n : ℤ) = A038616 (n + 1)

end A038616

/-! ## A038616.P18246646531962748576

`eq[n, A004183(A035032(n+1))]`
-/

namespace A038616.P18246646531962748576
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004183 (A035032 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A038616.P18246646531962748576

namespace A038616

/-- `eq[n, A004183(A035032(n+1))]` -/
def P18246646531962748576.Spec : Prop :=
  ∀ n, (P18246646531962748576.a n : ℤ) = A038616 (n + 1)

end A038616

/-! ## A038616.P10736487467256981514

`eq[A004183(n), A038700(n+1)]`
-/

namespace A038616.P10736487467256981514
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004183 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038700 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A038616.P10736487467256981514

namespace A038616

/-- `eq[A004183(n), A038700(n+1)]` -/
def P10736487467256981514.Spec : Prop :=
  ∀ n, (P10736487467256981514.a n : ℤ) = A038616 (n + 1)

end A038616

/-! ## A038616.P6183016656670585456

`eq[A004183(n), A093868(n+1)]`
-/

namespace A038616.P6183016656670585456
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004183 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093868 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A038616.P6183016656670585456

namespace A038616

/-- `eq[A004183(n), A093868(n+1)]` -/
def P6183016656670585456.Spec : Prop :=
  ∀ n, (P6183016656670585456.a n : ℤ) = A038616 (n + 1)

end A038616

/-! ## A038616.P2853987406674706012

`eq[n, A004183(A295609(n))]`
-/

namespace A038616.P2853987406674706012
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004183 (A295609 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A038616.P2853987406674706012

namespace A038616

/-- `eq[n, A004183(A295609(n))]` -/
def P2853987406674706012.Spec : Prop :=
  ∀ n, (P2853987406674706012.a n : ℤ) = A038616 (n + 1)

end A038616

/-! ## A038616.P17417415800242433543

`record[p?[A273886(n+1)]]`
-/

namespace A038616.P17417415800242433543
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273886 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A038616.P17417415800242433543

namespace A038616

/-- `record[p?[A273886(n+1)]]` -/
def P17417415800242433543.Spec : Prop :=
  ∀ n, P17417415800242433543.a n = A038616 (n + 1)

end A038616

/-! ## A038616.P18396262193609336758

`eq[A004183(n), A194603(n+1)]`
-/

namespace A038616.P18396262193609336758
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004183 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194603 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A038616.P18396262193609336758

namespace A038616

/-- `eq[A004183(n), A194603(n+1)]` -/
def P18396262193609336758.Spec : Prop :=
  ∀ n, (P18396262193609336758.a n : ℤ) = A038616 (n + 1)

end A038616

/-! ## A038616.P14376487645119973390

`eq[A004183(n), A249803(n+1)]`
-/

namespace A038616.P14376487645119973390
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004183 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249803 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A038616.P14376487645119973390

namespace A038616

/-- `eq[A004183(n), A249803(n+1)]` -/
def P14376487645119973390.Spec : Prop :=
  ∀ n, (P14376487645119973390.a n : ℤ) = A038616 (n + 1)

end A038616

/-!
# A038617: Primes not containing the digit '9'.

The programs for A038617, there is no canonical definition to state claims against.
-/

/-! ## A038617.P13977866464250251139

`∪[A036962(n+1), A106094(n+1)]`
-/

namespace A038617.P13977866464250251139
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036962 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106094 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A038617.P13977866464250251139

/-! ## A038617.P15958493612806885167

`∪[A036962(n+1), A154767(n+1)]`
-/

namespace A038617.P15958493612806885167
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036962 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154767 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A038617.P15958493612806885167

/-! ## A038617.P17723466780793446660

`p?[A007095(n)]`
-/

namespace A038617.P17723466780793446660
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007095 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A038617.P17723466780793446660

/-! ## A038617.P11817442815112487724

`p?[A037479(n+1)]`
-/

namespace A038617.P11817442815112487724
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037479 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A038617.P11817442815112487724

/-! ## A038617.P7023247040759988432

`A007095(A036964(n+1))`
-/

namespace A038617.P7023247040759988432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007095 (A036964 (n + 1)).toNat

end

end A038617.P7023247040759988432

/-! ## A038617.P11959225416985531508

`filter[A007095(n+1), A010051(#)]`
-/

namespace A038617.P11959225416985531508
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007095 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A038617.P11959225416985531508

/-! ## A038617.P3700772473246541551

`filter[A037479(n+1), A010051(#)]`
-/

namespace A038617.P3700772473246541551
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037479 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A038617.P3700772473246541551

/-! ## A038617.P14040529029287386978

`∩[A000040(n+1), A007095(n)]`
-/

namespace A038617.P14040529029287386978
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007095 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038617.P14040529029287386978

/-! ## A038617.P16265240518377867667

`∩[A042986(n+1), A007095(n)]`
-/

namespace A038617.P16265240518377867667
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042986 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007095 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038617.P16265240518377867667

/-! ## A038617.P14693694098816328503

`∩[A000040(n+1), A037479(n+1)]`
-/

namespace A038617.P14693694098816328503
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037479 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038617.P14693694098816328503

/-! ## A038617.P16626127838010661069

`∩[A037479(n+1), A042986(n+1)]`
-/

namespace A038617.P16626127838010661069
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037479 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042986 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038617.P16626127838010661069

/-! ## A038617.P15733947005368043998

`∩[A037479(n+1), A182986(n+1)]`
-/

namespace A038617.P15733947005368043998
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037479 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038617.P15733947005368043998

/-! ## A038617.P15142104640465063542

`p?[record[A004184(n)]]`
-/

namespace A038617.P15142104640465063542
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004184 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A038617.P15142104640465063542

/-! ## A038617.P1754357145587036768

`p?[record[A004728(n)]]`
-/

namespace A038617.P1754357145587036768
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004728 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A038617.P1754357145587036768

/-! ## A038617.P11112793800530304887

`p?[record[A235049(n)]]`
-/

namespace A038617.P11112793800530304887
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235049 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A038617.P11112793800530304887

/-! ## A038617.P576988644919562953

`p?[record[n-A136400(n)]]`
-/

namespace A038617.P576988644919562953
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A136400 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A038617.P576988644919562953

/-! ## A038617.P4045037138764867147

`eq[A004184(n), A007918(n)]`
-/

namespace A038617.P4045037138764867147
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004184 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007918 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A038617.P4045037138764867147

/-! ## A038617.P16023305368213090185

`eq[n, A004184(A051697(n))]`
-/

namespace A038617.P16023305368213090185
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004184 (A051697 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A038617.P16023305368213090185

/-! ## A038617.P14489366608552474265

`eq[A004184(n), A062584(n)]`
-/

namespace A038617.P14489366608552474265
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004184 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062584 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A038617.P14489366608552474265

/-! ## A038617.P17720302566000378732

`eq[A004184(n), A064502(n)]`
-/

namespace A038617.P17720302566000378732
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004184 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064502 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A038617.P17720302566000378732

/-!
# A038618: Primes not containing the digit '0'.

The programs for A038618, there is no canonical definition to state claims against.
-/

/-! ## A038618.P11020339817933402000

`p?[A195943(n+1)]`
-/

namespace A038618.P11020339817933402000
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195943 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A038618.P11020339817933402000

/-! ## A038618.P14820147587570570291

`A000040(A391014(n+1))`
-/

namespace A038618.P14820147587570570291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A391014 (n + 1)).toNat

end

end A038618.P14820147587570570291

/-! ## A038618.P2910410869546716620

`filter[A195943(n+1), A010051(#)]`
-/

namespace A038618.P2910410869546716620
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195943 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A038618.P2910410869546716620

/-! ## A038618.P9966534954461288685

`filter[A195943(n+1), A374130(#)]`
-/

namespace A038618.P9966534954461288685
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195943 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374130 (f1 j).toNat = 1) n)

end

end A038618.P9966534954461288685

/-! ## A038618.P9727607908393214826

`filter[A195943(n+2), A008966(#)]`
-/

namespace A038618.P9727607908393214826
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195943 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A008966 (f1 j).toNat = 1) n)

end

end A038618.P9727607908393214826

/-! ## A038618.P17077880598188069368

`filter[A195943(n+2), A373486(#)]`
-/

namespace A038618.P17077880598188069368
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195943 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373486 (f1 j).toNat = 1) n)

end

end A038618.P17077880598188069368

/-! ## A038618.P9087762917089671851

`filter[A195943(n+2), A380467(#)]`
-/

namespace A038618.P9087762917089671851
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195943 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A380467 (f1 j).toNat = 1) n)

end

end A038618.P9087762917089671851

/-! ## A038618.P56562251410368456

`∩[A000040(n+1), A195943(n+1)]`
-/

namespace A038618.P56562251410368456
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195943 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038618.P56562251410368456

/-! ## A038618.P7959646224212564079

`∩[A053813(n+1), A195943(n+1)]`
-/

namespace A038618.P7959646224212564079
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053813 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195943 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038618.P7959646224212564079

/-! ## A038618.P1897625544514355415

`∩[A070159(n+1), A195943(n+1)]`
-/

namespace A038618.P1897625544514355415
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070159 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195943 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038618.P1897625544514355415

/-! ## A038618.P3491965159390682103

`∩[A182140(n+1), A195943(n+1)]`
-/

namespace A038618.P3491965159390682103
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182140 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195943 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038618.P3491965159390682103

/-! ## A038618.P10077159847291167182

`filter[A195943(n+1), A252233(#)]`
-/

namespace A038618.P10077159847291167182
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195943 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A252233 (f1 j).toNat = 1) n)

end

end A038618.P10077159847291167182

/-! ## A038618.P3869062370501939261

`filter[A195943(n+1), A296211(#)]`
-/

namespace A038618.P3869062370501939261
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195943 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A296211 (f1 j).toNat = 1) n)

end

end A038618.P3869062370501939261

/-! ## A038618.P11758069902959909901

`filter[A195943(n+1), A323153(#)]`
-/

namespace A038618.P11758069902959909901
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195943 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323153 (f1 j).toNat = 1) n)

end

end A038618.P11758069902959909901

/-! ## A038618.P5851263732455827704

`filter[A195943(n+1), A324823(#)]`
-/

namespace A038618.P5851263732455827704
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195943 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A324823 (f1 j).toNat = 1) n)

end

end A038618.P5851263732455827704

/-! ## A038618.P1519475025209885703

`filter[A195943(n+1), A353471(#)]`
-/

namespace A038618.P1519475025209885703
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195943 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353471 (f1 j).toNat = 1) n)

end

end A038618.P1519475025209885703

/-! ## A038618.P11761175091820221154

`filter[A195943(n+1), A353499(#)]`
-/

namespace A038618.P11761175091820221154
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195943 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353499 (f1 j).toNat = 1) n)

end

end A038618.P11761175091820221154

/-! ## A038618.P15711954800616496738

`filter[A195943(n+2), A323152(#)]`
-/

namespace A038618.P15711954800616496738
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195943 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323152 (f1 j).toNat = 1) n)

end

end A038618.P15711954800616496738

/-! ## A038618.P3719060197031597285

`filter[A195943(n+2), A323154(#)]`
-/

namespace A038618.P3719060197031597285
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195943 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323154 (f1 j).toNat = 1) n)

end

end A038618.P3719060197031597285

/-! ## A038618.P5698753351683213808

`filter[A195943(n+2), A353559(#)]`
-/

namespace A038618.P5698753351683213808
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195943 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353559 (f1 j).toNat = 1) n)

end

end A038618.P5698753351683213808

/-!
# A038620: Growth function (or coordination sequence) of the infinite cubic graph corresponding to the srs net (a(n) = number of nodes at distance n from a fixed node).

The programs for A038620, there is no canonical definition to state claims against.
-/

/-! ## A038620.P8017471490001652223

`∪[Δ[A038621(n)], A344126(n)]`
-/

namespace A038620.P8017471490001652223
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038621 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344126 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

end

end A038620.P8017471490001652223

/-! ## A038620.P6031742140245555214

`A008130(n)+A008254(n)-n²`
-/

namespace A038620.P6031742140245555214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008130 n + (A008254 n - (n ^ 2 : ℤ))

end

end A038620.P6031742140245555214

/-! ## A038620.P10509904429450893167

`A008254(n)+A008130(n)-A000290(n)`
-/

namespace A038620.P10509904429450893167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008254 n + (A008130 n - A000290 n)

end

end A038620.P10509904429450893167

/-! ## A038620.P1335271761003030752

`A008000(n)+A008254(n)-A005918(n)`
-/

namespace A038620.P1335271761003030752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008000 n + (A008254 n - A005918 n)

end

end A038620.P1335271761003030752

/-!
# A038621: Growth function of an infinite cubic graph (number of nodes at distance <=n from fixed node).

The programs for A038621, there is no canonical definition to state claims against.
-/

/-! ## A038621.P6736606739719330314

`∑[A038620(n)]`
-/

namespace A038621.P6736606739719330314
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038620 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A038621.P6736606739719330314

/-! ## A038621.P10905267682863335454

`a(n-1)+A038620(n)+A000038(n)` with `a(0)=1`
-/

namespace A038621.P10905267682863335454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A038620 n + A000038 n)

end

end A038621.P10905267682863335454

/-! ## A038621.P4462901312592729014

`A038620(n%A038620(n))+a(n-1)` with `a(0)=1`
-/

namespace A038621.P4462901312592729014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A038620 (Int.tmod (n : ℤ) (A038620 n)).toNat + a (n - 1)

end

end A038621.P4462901312592729014

/-! ## A038621.P6826740083354139681

`a(n-1)+A038620(n)+A002448(A051698(n))` with `a(0)=1, a(1)=4`
-/

namespace A038621.P6826740083354139681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4] fun n a =>
  a (n - 1) + (A038620 n + A002448 (A051698 n).toNat)

end

end A038621.P6826740083354139681

/-! ## A038621.P10150962669257983165

`A038620(A004525(2*n))+a(n-1)` with `a(0)=1`
-/

namespace A038621.P10150962669257983165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A038620 (A004525 (2 * n)).toNat + a (n - 1)

end

end A038621.P10150962669257983165

/-!
# A038622: Triangular array that counts rooted polyominoes.

The programs for A038622, there is no canonical definition to state claims against.
-/

/-! ## A038622.P13571274460346394902

`2*A094531(n)-A089942(n)`
-/

namespace A038622.P13571274460346394902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A094531 n - A089942 n

end

end A038622.P13571274460346394902

/-! ## A038622.P18336234325233193303

`A094531(n)+A094531(n+1)%A094527(n)`
-/

namespace A038622.P18336234325233193303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094531 n + Int.tmod (A094531 (n + 1)) (A094527 n)

end

end A038622.P18336234325233193303

/-! ## A038622.P14709099572277994754

`A169623(A185869(n+1)+A025581(n))`
-/

namespace A038622.P14709099572277994754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169623 (A185869 (n + 1) + A025581 n).toNat

end

end A038622.P14709099572277994754

/-! ## A038622.P10361974346514857219

`A169623(A064801(n+1)+∑[A198954(n)])`
-/

namespace A038622.P10361974346514857219
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198954 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169623 (A064801 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A038622.P10361974346514857219

/-! ## A038622.P1343339716506320981

`A169623(A093995(n+1)+A064801(n+1))`
-/

namespace A038622.P1343339716506320981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169623 (A093995 (n + 1) + A064801 (n + 1)).toNat

end

end A038622.P1343339716506320981

/-! ## A038622.P18438206122917422275

`A169623(lt[A227431(n+1), 1])`
-/

namespace A038622.P18438206122917422275
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227431 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169623 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A038622.P18438206122917422275

/-! ## A038622.P1628597167560652483

`A169623(lt[3, A063826(2*n)])`
-/

namespace A038622.P1628597167560652483
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063826 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169623 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A038622.P1628597167560652483

/-! ## A038622.P9201839675692380773

`A004277(A094531(n))-A089942(n)`
-/

namespace A038622.P9201839675692380773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A094531 n).toNat - A089942 n

end

end A038622.P9201839675692380773

/-! ## A038622.P1176304680697623748

`A104029(A209293(n+1)-1)`
-/

namespace A038622.P1176304680697623748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104029 (A209293 (n + 1) - 1).toNat

end

end A038622.P1176304680697623748

/-! ## A038622.P664937609545051782

`A104029(A093995(n+1)-A057028(n+1))`
-/

namespace A038622.P664937609545051782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104029 (A093995 (n + 1) - A057028 (n + 1)).toNat

end

end A038622.P664937609545051782

/-!
# A038623: Smallest prime p such that p/pi(p)>=n.

The programs for A038623, there is no canonical definition to state claims against.
-/

/-! ## A038623.P18396817951551694157

`A038607(1-char[1]+n)`
-/

namespace A038623.P18396817951551694157
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038607 (1 - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) + (n : ℤ)).toNat

end

end A038623.P18396817951551694157

/-! ## A038623.P17038719766876005873

`A062743(A028310(n)+1)`
-/

namespace A038623.P17038719766876005873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062743 (A028310 n + 1).toNat

end

end A038623.P17038719766876005873

/-! ## A038623.P629288866057144749

`A062743(A254667(n+1))`
-/

namespace A038623.P629288866057144749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062743 (A254667 (n + 1)).toNat

end

end A038623.P629288866057144749

/-! ## A038623.P2801998840516234713

`A062743(A233583(n+2))`
-/

namespace A038623.P2801998840516234713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062743 (A233583 (n + 2)).toNat

end

end A038623.P2801998840516234713

/-! ## A038623.P1933844349589749145

`A062743(A054977(n)+n)`
-/

namespace A038623.P1933844349589749145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062743 (A054977 n + (n : ℤ)).toNat

end

end A038623.P1933844349589749145

/-! ## A038623.P3630628617443540142

`A062743(A000007(n)+1+n)`
-/

namespace A038623.P3630628617443540142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062743 (A000007 n + 1 + (n : ℤ)).toNat

end

end A038623.P3630628617443540142

/-! ## A038623.P13507056071868444818

`A062743(A088157(n)+1+n)`
-/

namespace A038623.P13507056071868444818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062743 (A088157 n + 1 + (n : ℤ)).toNat

end

end A038623.P13507056071868444818

/-! ## A038623.P11432233743491916006

`A062743(A112316(n)+1+n)`
-/

namespace A038623.P11432233743491916006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062743 (A112316 n + 1 + (n : ℤ)).toNat

end

end A038623.P11432233743491916006

/-! ## A038623.P12147837153312613629

`A062743(A151810(n)+1+n)`
-/

namespace A038623.P12147837153312613629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062743 (A151810 n + 1 + (n : ℤ)).toNat

end

end A038623.P12147837153312613629

/-! ## A038623.P14373506239217635552

`A062743(A151878(n)+1+n)`
-/

namespace A038623.P14373506239217635552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062743 (A151878 n + 1 + (n : ℤ)).toNat

end

end A038623.P14373506239217635552

/-!
# A038624: Values of pi(x) where x exceeds n * pi(x).

The programs for A038624, there is no canonical definition to state claims against.
-/

/-! ## A038624.P10208731530354626602

`A062742(n+1)-char[(8*n)²]`
-/

namespace A038624.P10208731530354626602
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (8 * n) ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062742 (n + 1) - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A038624.P10208731530354626602

/-! ## A038624.P8604090926702622055

`A062742(A028310(n)+1)`
-/

namespace A038624.P8604090926702622055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062742 (A028310 n + 1).toNat

end

end A038624.P8604090926702622055

/-! ## A038624.P1745352647265885398

`A062742(A254667(n+1))`
-/

namespace A038624.P1745352647265885398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062742 (A254667 (n + 1)).toNat

end

end A038624.P1745352647265885398

/-! ## A038624.P1001914861042359766

`A062742(A233583(n+2))`
-/

namespace A038624.P1001914861042359766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062742 (A233583 (n + 2)).toNat

end

end A038624.P1001914861042359766

/-! ## A038624.P13147570223141326656

`A062742(A054977(n)+n)`
-/

namespace A038624.P13147570223141326656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062742 (A054977 n + (n : ℤ)).toNat

end

end A038624.P13147570223141326656

/-! ## A038624.P8684409352000372780

`A062742(A000007(n)+1+n)`
-/

namespace A038624.P8684409352000372780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062742 (A000007 n + 1 + (n : ℤ)).toNat

end

end A038624.P8684409352000372780

/-! ## A038624.P10540959379757506878

`A062742(A088157(n)+1+n)`
-/

namespace A038624.P10540959379757506878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062742 (A088157 n + 1 + (n : ℤ)).toNat

end

end A038624.P10540959379757506878

/-! ## A038624.P17846227673408246473

`A062742(A112316(n)+1+n)`
-/

namespace A038624.P17846227673408246473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062742 (A112316 n + 1 + (n : ℤ)).toNat

end

end A038624.P17846227673408246473

/-! ## A038624.P824370065557923907

`A062742(A151810(n)+1+n)`
-/

namespace A038624.P824370065557923907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062742 (A151810 n + 1 + (n : ℤ)).toNat

end

end A038624.P824370065557923907

/-! ## A038624.P16440515009382540745

`A062742(A151878(n)+1+n)`
-/

namespace A038624.P16440515009382540745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062742 (A151878 n + 1 + (n : ℤ)).toNat

end

end A038624.P16440515009382540745

/-!
# A038625: a(n) is smallest number m such that m = n*pi(m), where pi(k) = number of primes <= k (A000720).

The programs for A038625, there is no canonical definition to state claims against.
-/

/-! ## A038625.P17214258338781961097

`A038626(n+2)*(n+2)`
-/

namespace A038625.P17214258338781961097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038626 (n + 2) * (n + 2 : ℤ)

end

end A038625.P17214258338781961097

/-! ## A038625.P7140936902829064946

`A087241(2*(n+1))`
-/

namespace A038625.P7140936902829064946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087241 (2 * (n + 1))

end

end A038625.P7140936902829064946

/-! ## A038625.P12275013914675622164

`A087239(n+1)+a(n-1)` with `a(0)=2`
-/

namespace A038625.P12275013914675622164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A087239 (n + 1) + a (n - 1)

end

end A038625.P12275013914675622164

/-! ## A038625.P4722802975681207342

`A087241(n+2+n)+and(1, (n-2)^3+n)`
-/

namespace A038625.P4722802975681207342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087241 (n + 2 + n) + Int.land 1 (((n : ℤ) - 2) ^ 3 + (n : ℤ))

end

end A038625.P4722802975681207342

/-! ## A038625.P15807231384860514986

`A057809(∑[A038627(n+1)]+1)`
-/

namespace A038625.P15807231384860514986
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038627 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057809 (∑ j ∈ Finset.range (n + 1), f1 j + 1).toNat

end

end A038625.P15807231384860514986

/-!
# A038626: Smallest positive integer m such that m = pi(n*m) = A000720(n*m).

The programs for A038626, there is no canonical definition to state claims against.
-/

/-! ## A038626.P9059225726640142047

`A038625(n+2)/(n+2)`
-/

namespace A038626.P9059225726640142047
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038625 (n + 2) : ℚ) / (n + 2 : ℚ)

end

end A038626.P9059225726640142047

/-! ## A038626.P13360516630644081488

`A087241(2*(n+1))/(n+2)`
-/

namespace A038626.P13360516630644081488
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A087241 (2 * (n + 1)) : ℚ) / (n + 2 : ℚ)

end

end A038626.P13360516630644081488

/-! ## A038626.P12647224435094813086

`A102281(n+2)-A087237(n+2)`
-/

namespace A038626.P12647224435094813086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102281 (n + 2) - A087237 (n + 2)

end

end A038626.P12647224435094813086

/-! ## A038626.P15332682501050611869

`round(A087241(A005843(n+1))/(n+2))`
-/

namespace A038626.P15332682501050611869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A087241 (A005843 (n + 1)).toNat : ℚ) / (n + 2 : ℚ))

end

end A038626.P15332682501050611869

/-! ## A038626.P10494575769596974859

`record[A087241(n+2)/A033999(n)]/(n+2)`
-/

namespace A038626.P10494575769596974859
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A087241 (n + 2) : ℚ) / (A033999 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) / (n + 2 : ℚ)

end

end A038626.P10494575769596974859

/-!
# A038629: Convolution of Catalan numbers A000108 with Catalan numbers but C(0)=1 replaced by 3.

The programs for A038629, the canonical program `A038629.P14555455115936477489` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A038629 has offset 0).

The definition of A038629 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A038629.P14555455115936477489

`6*C(2*n, n)/(n+2)`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A038629

/-- `6*C(2*n, n)/(n+2)` -/
def P14555455115936477489.Spec : Prop :=
  ∀ n, P14555455115936477489.a n = (A038629 n : ℚ)

end A038629

/-! ## A038629.P10708727141379508061

`(n+1)*A007054(n)`
-/

namespace A038629.P10708727141379508061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A007054 n

end

end A038629.P10708727141379508061

namespace A038629

/-- `(n+1)*A007054(n)` -/
def P10708727141379508061.Spec : Prop :=
  ∀ n, P10708727141379508061.a n = A038629 n

end A038629

/-! ## A038629.P8113122421232047136

`(n+1)/2*A002421(n+2)`
-/

namespace A038629.P8113122421232047136
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / 2 * (A002421 (n + 2) : ℚ)

end

end A038629.P8113122421232047136

namespace A038629

/-- `(n+1)/2*A002421(n+2)` -/
def P8113122421232047136.Spec : Prop :=
  ∀ n, P8113122421232047136.a n = (A038629 n : ℚ)

end A038629

/-! ## A038629.P12542832310918805714

`A000108(n)+abs(Δ[(6/(n+1)-4)*a(n-1)])` with `a(0)=1`
-/

namespace A038629.P12542832310918805714
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1] fun n f1 =>
  (6 / (n + 1 : ℚ) - 4) * f1 (n - 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000108 n : ℚ) + |f1 (n + 1) - f1 n|

end

end A038629.P12542832310918805714

namespace A038629

/-- `A000108(n)+abs(Δ[(6/(n+1)-4)*a(n-1)])` -/
def P12542832310918805714.Spec : Prop :=
  ∀ n, P12542832310918805714.a n = (A038629 n : ℚ)

end A038629

/-! ## A038629.P15616741170015736903

`A005807(n)+A000108(n)`
-/

namespace A038629.P15616741170015736903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005807 n + A000108 n

end

end A038629.P15616741170015736903

namespace A038629

/-- `A005807(n)+A000108(n)` -/
def P15616741170015736903.Spec : Prop :=
  ∀ n, P15616741170015736903.a n = A038629 n

end A038629

/-! ## A038629.P5065444385836306393

`A376161(n)-A000245(n)`
-/

namespace A038629.P5065444385836306393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376161 n - A000245 n

end

end A038629.P5065444385836306393

namespace A038629

/-- `A376161(n)-A000245(n)` -/
def P5065444385836306393.Spec : Prop :=
  ∀ n, P5065444385836306393.a n = A038629 n

end A038629

/-! ## A038629.P17142577774536518075

`A000108(n)+A000778(n)+1`
-/

namespace A038629.P17142577774536518075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n + (A000778 n + 1)

end

end A038629.P17142577774536518075

namespace A038629

/-- `A000108(n)+A000778(n)+1` -/
def P17142577774536518075.Spec : Prop :=
  ∀ n, P17142577774536518075.a n = A038629 n

end A038629

/-! ## A038629.P570406876024658905

`A120588(n+1)+A005807(n)`
-/

namespace A038629.P570406876024658905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120588 (n + 1) + A005807 n

end

end A038629.P570406876024658905

namespace A038629

/-- `A120588(n+1)+A005807(n)` -/
def P570406876024658905.Spec : Prop :=
  ∀ n, P570406876024658905.a n = A038629 n

end A038629

/-! ## A038629.P8686798920655648942

`A167422(n+1)+A000108(n)`
-/

namespace A038629.P8686798920655648942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167422 (n + 1) + A000108 n

end

end A038629.P8686798920655648942

namespace A038629

/-- `A167422(n+1)+A000108(n)` -/
def P8686798920655648942.Spec : Prop :=
  ∀ n, P8686798920655648942.a n = A038629 n

end A038629

/-! ## A038629.P15286841776470587764

`A005807(n)-A115140(n+1)`
-/

namespace A038629.P15286841776470587764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005807 n - A115140 (n + 1)

end

end A038629.P15286841776470587764

namespace A038629

/-- `A005807(n)-A115140(n+1)` -/
def P15286841776470587764.Spec : Prop :=
  ∀ n, P15286841776470587764.a n = A038629 n

end A038629

/-! ## A038629.P8374293513853305124

`A352681(n+1)-A000108(n)`
-/

namespace A038629.P8374293513853305124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352681 (n + 1) - A000108 n

end

end A038629.P8374293513853305124

namespace A038629

/-- `A352681(n+1)-A000108(n)` -/
def P8374293513853305124.Spec : Prop :=
  ∀ n, P8374293513853305124.a n = A038629 n

end A038629

/-! ## A038629.P12652901629802003234

`A007054(n)*A008619(2*n)`
-/

namespace A038629.P12652901629802003234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007054 n * A008619 (2 * n)

end

end A038629.P12652901629802003234

namespace A038629

/-- `A007054(n)*A008619(2*n)` -/
def P12652901629802003234.Spec : Prop :=
  ∀ n, P12652901629802003234.a n = A038629 n

end A038629

/-! ## A038629.P7472411960787372959

`A007054(n)*A131732(2*n)`
-/

namespace A038629.P7472411960787372959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007054 n * A131732 (2 * n)

end

end A038629.P7472411960787372959

namespace A038629

/-- `A007054(n)*A131732(2*n)` -/
def P7472411960787372959.Spec : Prop :=
  ∀ n, P7472411960787372959.a n = A038629 n

end A038629

/-! ## A038629.P12733869685674139344

`abs(A168491(n)-Δ[A168491(n)])`
-/

namespace A038629.P12733869685674139344
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168491 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A168491 n - (f1 (n + 1) - f1 n)|

end

end A038629.P12733869685674139344

namespace A038629

/-- `abs(A168491(n)-Δ[A168491(n)])` -/
def P12733869685674139344.Spec : Prop :=
  ∀ n, P12733869685674139344.a n = A038629 n

end A038629

/-! ## A038629.P6838484619389927488

`∑[A071724(n)]+2*A000108(n)`
-/

namespace A038629.P6838484619389927488
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071724 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 2 * A000108 n

end

end A038629.P6838484619389927488

namespace A038629

/-- `∑[A071724(n)]+2*A000108(n)` -/
def P6838484619389927488.Spec : Prop :=
  ∀ n, P6838484619389927488.a n = A038629 n

end A038629

/-! ## A038629.P14602214593962910577

`Δ[A014137(n)]+2*A000108(n)`
-/

namespace A038629.P14602214593962910577
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014137 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 2 * A000108 n

end

end A038629.P14602214593962910577

namespace A038629

/-- `Δ[A014137(n)]+2*A000108(n)` -/
def P14602214593962910577.Spec : Prop :=
  ∀ n, P14602214593962910577.a n = A038629 n

end A038629

/-! ## A038629.P7557639864853213453

`Δ[A014138(n)]+2*A000108(n)`
-/

namespace A038629.P7557639864853213453
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014138 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 2 * A000108 n

end

end A038629.P7557639864853213453

namespace A038629

/-- `Δ[A014138(n)]+2*A000108(n)` -/
def P7557639864853213453.Spec : Prop :=
  ∀ n, P7557639864853213453.a n = A038629 n

end A038629

/-! ## A038629.P1786321963994523857

`Δ[A014137(n)+2*A155587(n)]`
-/

namespace A038629.P1786321963994523857
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014137 n + 2 * A155587 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A038629.P1786321963994523857

namespace A038629

/-- `Δ[A014137(n)+2*A155587(n)]` -/
def P1786321963994523857.Spec : Prop :=
  ∀ n, P1786321963994523857.a n = A038629 n

end A038629

/-!
# A038630: Number of partitions of n is not squarefree.

The programs for A038630, there is no canonical definition to state claims against.
-/

/-! ## A038630.P5095394013071713741

`eq[4, gcd(4, A278241(n))]`
-/

namespace A038630.P5095394013071713741
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 4 (A278241 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A038630.P5095394013071713741

/-! ## A038630.P7477813062642848343

`eq[0, A278241(n+1)%4]+1`
-/

namespace A038630.P7477813062642848343
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A278241 (n + 1)) 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A038630.P7477813062642848343

/-! ## A038630.P8394275263719739470

`lt[log2(A085543(n)), A085561(n)]`
-/

namespace A038630.P8394275263719739470
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A085543 n : ℝ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085561 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℝ)) n

end

end A038630.P8394275263719739470

/-! ## A038630.P11760139653811942521

`eq[A278241(n)%4, A000038(n)]`
-/

namespace A038630.P11760139653811942521
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A278241 n) 4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A038630.P11760139653811942521

/-! ## A038630.P13758612225237193046

`lt[A087175(A028310(n)), A085561(n)]`
-/

namespace A038630.P13758612225237193046
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087175 (A028310 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085561 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A038630.P13758612225237193046

/-!
# A038632: Numbers k such that k-th and (k+1)-st term of A038593 differ by 1.

The programs for A038632, there is no canonical definition to state claims against.
-/

/-! ## A038632.P8649371511777312952

`eq[1, A038593(n+1)-A181123(n+1)]`
-/

namespace A038632.P8649371511777312952
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038593 (n + 1) - A181123 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A038632.P8649371511777312952

/-! ## A038632.P9281433432351953503

`eq[1, A038598(n+1)]`
-/

namespace A038632.P9281433432351953503
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038598 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A038632.P9281433432351953503

/-! ## A038632.P14201896263095185276

`lt[A038598(n+3), 2]+2`
-/

namespace A038632.P14201896263095185276
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038598 (n + 3)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 2

end

end A038632.P14201896263095185276

/-! ## A038632.P10835419110794548156

`lt[A038598(A028310(n)+1), 2]`
-/

namespace A038632.P10835419110794548156
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038598 (A028310 n + 1).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A038632.P10835419110794548156

/-! ## A038632.P15624036916992102823

`lt[A038598(A141044(n)+n), 2]`
-/

namespace A038632.P15624036916992102823
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038598 (A141044 n + (n : ℤ)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A038632.P15624036916992102823

/-!
# A038633: Numbers k such that k-th and (k+1)-st term of A038593 differ by 2.

The programs for A038633, there is no canonical definition to state claims against.
-/

/-! ## A038633.P1266959448757158797

`eq[2, A038593(n+1)-A181123(n+1)]`
-/

namespace A038633.P1266959448757158797
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038593 (n + 1) - A181123 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A038633.P1266959448757158797

/-! ## A038633.P6793290948589782403

`eq[2, A181123(n+2)-A181123(n+1)]`
-/

namespace A038633.P6793290948589782403
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181123 (n + 2) - A181123 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A038633.P6793290948589782403

/-! ## A038633.P5936045906469983532

`eq[2, A038593(n+2)%A038593(n+1)]+1`
-/

namespace A038633.P5936045906469983532
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A038593 (n + 2)) (A038593 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A038633.P5936045906469983532

/-! ## A038633.P11907693811756441633

`lt[A133310(A181123(n+2)-A181123(n+1)), 2]`
-/

namespace A038633.P11907693811756441633
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133310 (A181123 (n + 2) - A181123 (n + 1)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A038633.P11907693811756441633

/-! ## A038633.P8149345798821573354

`eq[2, A038598(n+1)]`
-/

namespace A038633.P8149345798821573354
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038598 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A038633.P8149345798821573354

/-! ## A038633.P17166632971410986491

`lt[(2-A038598(n+1))², A141044(n)]`
-/

namespace A038633.P17166632971410986491
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A038598 (n + 1)) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141044 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A038633.P17166632971410986491

/-!
# A038635: Numbers k such that k-th and (k+1)-st term of A038593 differ by 4.

The programs for A038635, there is no canonical definition to state claims against.
-/

/-! ## A038635.P12647089614542087443

`eq[4, A038598(n+1)]`
-/

namespace A038635.P12647089614542087443
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038598 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A038635.P12647089614542087443

/-!
# A038637: Numbers k such that k-th and (k+1)-st term of A038593 differ by 6.

The programs for A038637, there is no canonical definition to state claims against.
-/

/-! ## A038637.P308839091385349748

`eq[6, A038598(n+1)]`
-/

namespace A038637.P308839091385349748
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038598 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A038637.P308839091385349748

/-!
# A038638: Numbers k such that k-th and (k+1)-st term of A038593 differ by 7.

The programs for A038638, there is no canonical definition to state claims against.
-/

/-! ## A038638.P3723904714825618723

`eq[A038598(n+1), A186684(n+1)]`
-/

namespace A038638.P3723904714825618723
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038598 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186684 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A038638.P3723904714825618723

/-! ## A038638.P11780059394051696215

`eq[7, A038598(n+1)+A000007(n)]`
-/

namespace A038638.P11780059394051696215
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038598 (n + 1) + A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A038638.P11780059394051696215

/-! ## A038638.P18079327603192181228

`eq[A057427(n), A102680(A038598(n+1))]`
-/

namespace A038638.P18079327603192181228
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102680 (A038598 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A038638.P18079327603192181228

/-! ## A038638.P4472523262577458753

`eq[A038590(A014973(2*(n+1))), A038598(n+1)]`
-/

namespace A038638.P4472523262577458753
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038590 (A014973 (2 * (n + 1))).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038598 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A038638.P4472523262577458753

/-! ## A038638.P4794611091312099681

`eq[A038598(A014963(4*n+2)), A038598(n+1)]`
-/

namespace A038638.P4794611091312099681
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038598 (A014963 (4 * n + 2)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038598 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A038638.P4794611091312099681

/-!
# A038639: Numbers k such that k-th and (k+1)-st term of A038593 differ by 8.

The programs for A038639, there is no canonical definition to state claims against.
-/

/-! ## A038639.P7706639860296402055

`eq[8, A038593(n+1)-A181123(n+1)]`
-/

namespace A038639.P7706639860296402055
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038593 (n + 1) - A181123 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A038639.P7706639860296402055

/-! ## A038639.P3473439479198938760

`eq[8, A181123(n+2)-A181123(n+1)]`
-/

namespace A038639.P3473439479198938760
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181123 (n + 2) - A181123 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A038639.P3473439479198938760

/-! ## A038639.P12828759866567965185

`eq[8, A038598(n+1)]`
-/

namespace A038639.P12828759866567965185
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038598 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A038639.P12828759866567965185

/-!
# A038640: Numbers k such that k-th and (k+1)-st term of A038593 differ by 9.

The programs for A038640, there is no canonical definition to state claims against.
-/

/-! ## A038640.P8124311105207077368

`eq[9, A038593(n+1)-A181123(n+1)]`
-/

namespace A038640.P8124311105207077368
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038593 (n + 1) - A181123 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A038640.P8124311105207077368

/-! ## A038640.P7994933981415090833

`eq[9, A181123(n+2)-A181123(n+1)]`
-/

namespace A038640.P7994933981415090833
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181123 (n + 2) - A181123 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A038640.P7994933981415090833

/-! ## A038640.P5655805379187850493

`eq[9, A038598(n+1)]`
-/

namespace A038640.P5655805379187850493
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038598 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A038640.P5655805379187850493

/-!
# A038641: Numbers k such that k-th and (k+1)-st term of A038593 differ by 10.

The programs for A038641, there is no canonical definition to state claims against.
-/

/-! ## A038641.P2146437644090755569

`eq[10, A038593(n+1)-A181123(n+1)]`
-/

namespace A038641.P2146437644090755569
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038593 (n + 1) - A181123 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A038641.P2146437644090755569

/-! ## A038641.P11233472917212232714

`eq[10, A181123(n+2)-A181123(n+1)]`
-/

namespace A038641.P11233472917212232714
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181123 (n + 2) - A181123 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A038641.P11233472917212232714

/-! ## A038641.P9464435598212289029

`eq[10, A038598(n+1)]`
-/

namespace A038641.P9464435598212289029
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038598 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A038641.P9464435598212289029

/-!
# A038643: Gaps of 2 in sequence A038593 (lower terms).

The programs for A038643, there is no canonical definition to state claims against.
-/

/-! ## A038643.P17800776466843934136

`A038644(n+1)-2`
-/

namespace A038643.P17800776466843934136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038644 (n + 1) - 2

end

end A038643.P17800776466843934136

/-! ## A038643.P5522121711627689653

`A165872(A038615(n+1))+A038644(n+1)`
-/

namespace A038643.P5522121711627689653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165872 (A038615 (n + 1)).toNat + A038644 (n + 1)

end

end A038643.P5522121711627689653

/-! ## A038643.P7192644830022142425

`A165872(A038616(n+1))+A038644(n+1)`
-/

namespace A038643.P7192644830022142425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165872 (A038616 (n + 1)).toNat + A038644 (n + 1)

end

end A038643.P7192644830022142425

/-! ## A038643.P15688529484104470669

`A165872(A038617(n+1))+A038644(n+1)`
-/

namespace A038643.P15688529484104470669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165872 (A038617 (n + 1)).toNat + A038644 (n + 1)

end

end A038643.P15688529484104470669

/-! ## A038643.P14147957266912107501

`A165872(A038618(n+1))+A038644(n+1)`
-/

namespace A038643.P14147957266912107501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165872 (A038618 (n + 1)).toNat + A038644 (n + 1)

end

end A038643.P14147957266912107501

/-! ## A038643.P18248213224816056442

`A062953(A140513(n))+A038644(n+1)`
-/

namespace A038643.P18248213224816056442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062953 (A140513 n).toNat + A038644 (n + 1)

end

end A038643.P18248213224816056442

/-! ## A038643.P17765354963126145790

`A038593(A038633(n+1))`
-/

namespace A038643.P17765354963126145790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038593 (A038633 (n + 1)).toNat

end

end A038643.P17765354963126145790

/-! ## A038643.P12005746734307410788

`A181123(A038633(n+1)+1)`
-/

namespace A038643.P12005746734307410788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181123 (A038633 (n + 1) + 1).toNat

end

end A038643.P12005746734307410788

/-! ## A038643.P15693114158526809226

`A038593(eq[2, A038593(n+1)-A181123(n+1)])`
-/

namespace A038643.P15693114158526809226
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038593 (n + 1) - A181123 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038593 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A038643.P15693114158526809226

/-! ## A038643.P558295980135565164

`A327276(A266989(n+1))+A038644(n+1)`
-/

namespace A038643.P558295980135565164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327276 (A266989 (n + 1)).toNat + A038644 (n + 1)

end

end A038643.P558295980135565164

/-!
# A038644: Gaps of 2 in sequence A038593 (upper terms).

The programs for A038644, there is no canonical definition to state claims against.
-/

/-! ## A038644.P12931390739999117319

`A038643(n+1)+2`
-/

namespace A038644.P12931390739999117319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038643 (n + 1) + 2

end

end A038644.P12931390739999117319

/-! ## A038644.P996196209065820514

`A038593(A038633(n+1)+1)`
-/

namespace A038644.P996196209065820514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038593 (A038633 (n + 1) + 1).toNat

end

end A038644.P996196209065820514

/-! ## A038644.P11996767166838060549

`A181123(A038633(n+1)+2)`
-/

namespace A038644.P11996767166838060549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181123 (A038633 (n + 1) + 2).toNat

end

end A038644.P11996767166838060549

/-! ## A038644.P14583026033531048038

`A038593(eq[2, A038598(n+1)]+1)`
-/

namespace A038644.P14583026033531048038
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038598 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038593 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A038644.P14583026033531048038

/-! ## A038644.P4970684885480812019

`A181123(eq[2, A038598(n+1)]+2)`
-/

namespace A038644.P4970684885480812019
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038598 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181123 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2)

end

end A038644.P4970684885480812019

/-!
# A038645: Gaps of 3 in sequence A038593 (lower terms).

The programs for A038645, there is no canonical definition to state claims against.
-/

/-! ## A038645.P14722029561926413624

`A038646(n+1)-3`
-/

namespace A038645.P14722029561926413624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038646 (n + 1) - 3

end

end A038645.P14722029561926413624

/-! ## A038645.P15175176590287467928

`A133695(A000040(n+1))+A038646(n+1)`
-/

namespace A038645.P15175176590287467928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133695 (A000040 (n + 1)).toNat + A038646 (n + 1)

end

end A038645.P15175176590287467928

/-! ## A038645.P101097106689537770

`A133695(A031934(n+1))+A038646(n+1)`
-/

namespace A038645.P101097106689537770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133695 (A031934 (n + 1)).toNat + A038646 (n + 1)

end

end A038645.P101097106689537770

/-! ## A038645.P17009077061100868561

`A133695(A059428(n+1))+A038646(n+1)`
-/

namespace A038645.P17009077061100868561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133695 (A059428 (n + 1)).toNat + A038646 (n + 1)

end

end A038645.P17009077061100868561

/-! ## A038645.P9881460600715241530

`A133695(A096916(n+1))+A038646(n+1)`
-/

namespace A038645.P9881460600715241530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133695 (A096916 (n + 1)).toNat + A038646 (n + 1)

end

end A038645.P9881460600715241530

/-!
# A038646: Gaps of 3 in sequence A038593 (upper terms).

The programs for A038646, there is no canonical definition to state claims against.
-/

/-! ## A038646.P13486867385079679023

`A038645(n+1)+3`
-/

namespace A038646.P13486867385079679023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038645 (n + 1) + 3

end

end A038646.P13486867385079679023

/-! ## A038646.P4458535126083103162

`A038593(A038634(n+1)+1)`
-/

namespace A038646.P4458535126083103162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038593 (A038634 (n + 1) + 1).toNat

end

end A038646.P4458535126083103162

/-! ## A038646.P1822917494135408900

`A181123(A038634(n+1)+2)`
-/

namespace A038646.P1822917494135408900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181123 (A038634 (n + 1) + 2).toNat

end

end A038646.P1822917494135408900

/-!
# A038647: Gaps of 4 in sequence A038593 (lower terms).

The programs for A038647, there is no canonical definition to state claims against.
-/

/-! ## A038647.P1372346602329727137

`A038648(n+1)-4`
-/

namespace A038647.P1372346602329727137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038648 (n + 1) - 4

end

end A038647.P1372346602329727137

/-! ## A038647.P3715965482799852007

`A247343(A151800(n))+A038648(n+1)`
-/

namespace A038647.P3715965482799852007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247343 (A151800 n).toNat + A038648 (n + 1)

end

end A038647.P3715965482799852007

/-! ## A038647.P7101246387422312726

`A132003(A002144(n+1))+A038648(n+1)`
-/

namespace A038647.P7101246387422312726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132003 (A002144 (n + 1)).toNat + A038648 (n + 1)

end

end A038647.P7101246387422312726

/-! ## A038647.P2460864198603856677

`A247343(A000040(n+1))+A038648(n+1)`
-/

namespace A038647.P2460864198603856677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247343 (A000040 (n + 1)).toNat + A038648 (n + 1)

end

end A038647.P2460864198603856677

/-! ## A038647.P15898131029346964948

`A247343(A006450(n+1))+A038648(n+1)`
-/

namespace A038647.P15898131029346964948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247343 (A006450 (n + 1)).toNat + A038648 (n + 1)

end

end A038647.P15898131029346964948

/-! ## A038647.P8538996939420353442

`A247343(A045409(n+1))+A038648(n+1)`
-/

namespace A038647.P8538996939420353442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247343 (A045409 (n + 1)).toNat + A038648 (n + 1)

end

end A038647.P8538996939420353442

/-! ## A038647.P16952680735570181681

`A247343(A059843(n+1))+A038648(n+1)`
-/

namespace A038647.P16952680735570181681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247343 (A059843 (n + 1)).toNat + A038648 (n + 1)

end

end A038647.P16952680735570181681

/-! ## A038647.P9092263799805123105

`A247343(A071328(n+1))+A038648(n+1)`
-/

namespace A038647.P9092263799805123105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247343 (A071328 (n + 1)).toNat + A038648 (n + 1)

end

end A038647.P9092263799805123105

/-! ## A038647.P1776252787182595396

`A247343(A006530(n+2))+A038648(n+1)`
-/

namespace A038647.P1776252787182595396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247343 (A006530 (n + 2)).toNat + A038648 (n + 1)

end

end A038647.P1776252787182595396

/-! ## A038647.P1284991545390571219

`A247343(A020639(4*(n+1)))+A038648(n+1)`
-/

namespace A038647.P1284991545390571219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247343 (A020639 (4 * (n + 1))).toNat + A038648 (n + 1)

end

end A038647.P1284991545390571219

/-!
# A038648: Gaps of 4 in sequence A038593 (upper terms).

The programs for A038648, there is no canonical definition to state claims against.
-/

/-! ## A038648.P11858697550904105389

`A038647(n+1)+4`
-/

namespace A038648.P11858697550904105389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038647 (n + 1) + 4

end

end A038648.P11858697550904105389

/-! ## A038648.P15599306998024735311

`A038593(A038635(n+1)+1)`
-/

namespace A038648.P15599306998024735311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038593 (A038635 (n + 1) + 1).toNat

end

end A038648.P15599306998024735311

/-! ## A038648.P5340587923653967377

`A181123(A038635(n+1)+2)`
-/

namespace A038648.P5340587923653967377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181123 (A038635 (n + 1) + 2).toNat

end

end A038648.P5340587923653967377

/-! ## A038648.P3402044823116963135

`∩[A181123(n+2)+4, A181123(n+2)]`
-/

namespace A038648.P3402044823116963135
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181123 (n + 2) + 4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181123 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038648.P3402044823116963135

/-!
# A038649: Gaps of 5 in sequence A038593 (lower terms).

The programs for A038649, there is no canonical definition to state claims against.
-/

/-! ## A038649.P12639754159460213393

`A038650(n+1)-5`
-/

namespace A038649.P12639754159460213393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038650 (n + 1) - 5

end

end A038649.P12639754159460213393

/-! ## A038649.P4392752536920354382

`A038593(A038636(n+1))`
-/

namespace A038649.P4392752536920354382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038593 (A038636 (n + 1)).toNat

end

end A038649.P4392752536920354382

/-! ## A038649.P4057718405502706086

`A181123(A038636(n+1)+1)`
-/

namespace A038649.P4057718405502706086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181123 (A038636 (n + 1) + 1).toNat

end

end A038649.P4057718405502706086

/-! ## A038649.P465731781962179632

`∩[A014439(n+1)-5, A014439(n+1)]`
-/

namespace A038649.P465731781962179632
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014439 (n + 1) - 5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014439 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038649.P465731781962179632

/-! ## A038649.P9674321056925670264

`∩[A038593(n+1)-5, A038593(n+1)]`
-/

namespace A038649.P9674321056925670264
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038593 (n + 1) - 5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038593 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038649.P9674321056925670264

/-!
# A038650: Gaps of 5 in sequence A038593 (upper terms).

The programs for A038650, there is no canonical definition to state claims against.
-/

/-! ## A038650.P3588442559861263459

`A038649(n+1)+5`
-/

namespace A038650.P3588442559861263459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038649 (n + 1) + 5

end

end A038650.P3588442559861263459

/-! ## A038650.P17254444629107276563

`A038593(A038636(n+1)+1)`
-/

namespace A038650.P17254444629107276563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038593 (A038636 (n + 1) + 1).toNat

end

end A038650.P17254444629107276563

/-! ## A038650.P18254827100423640860

`A181123(A038636(n+1)+2)`
-/

namespace A038650.P18254827100423640860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181123 (A038636 (n + 1) + 2).toNat

end

end A038650.P18254827100423640860

/-! ## A038650.P1633486089505666150

`∩[A181123(n+1)+5, A181123(n+1)]`
-/

namespace A038650.P1633486089505666150
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181123 (n + 1) + 5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181123 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038650.P1633486089505666150

/-!
# A038651: Gaps of 6 in sequence A038593 (lower terms).

The programs for A038651, there is no canonical definition to state claims against.
-/

/-! ## A038651.P14026752618226416328

`A038652(n+1)-6`
-/

namespace A038651.P14026752618226416328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038652 (n + 1) - 6

end

end A038651.P14026752618226416328

/-! ## A038651.P244809357214075343

`A038593(A038637(n+1))`
-/

namespace A038651.P244809357214075343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038593 (A038637 (n + 1)).toNat

end

end A038651.P244809357214075343

/-! ## A038651.P14595943559170792858

`A181123(A038637(n+1)+1)`
-/

namespace A038651.P14595943559170792858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181123 (A038637 (n + 1) + 1).toNat

end

end A038651.P14595943559170792858

/-! ## A038651.P4929954467805205951

`A038593(eq[6, A038598(n+1)])`
-/

namespace A038651.P4929954467805205951
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038598 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038593 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A038651.P4929954467805205951

/-!
# A038652: Gaps of 6 in sequence A038593 (upper terms).

The programs for A038652, there is no canonical definition to state claims against.
-/

/-! ## A038652.P3870961584308074093

`A038651(n+1)+6`
-/

namespace A038652.P3870961584308074093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038651 (n + 1) + 6

end

end A038652.P3870961584308074093

/-! ## A038652.P9635410475638274109

`A038593(A038637(n+1)+1)`
-/

namespace A038652.P9635410475638274109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038593 (A038637 (n + 1) + 1).toNat

end

end A038652.P9635410475638274109

/-! ## A038652.P3060353679011936077

`A181123(A038637(n+1)+2)`
-/

namespace A038652.P3060353679011936077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181123 (A038637 (n + 1) + 2).toNat

end

end A038652.P3060353679011936077

/-! ## A038652.P9122734326268670035

`∩[A038593(n+1)+6, A038593(n+1)]`
-/

namespace A038652.P9122734326268670035
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038593 (n + 1) + 6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038593 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038652.P9122734326268670035

/-!
# A038653: Gaps of 7 in sequence A038593 (lower terms).

The programs for A038653, there is no canonical definition to state claims against.
-/

/-! ## A038653.P16292252718224999899

`A038654(n+1)-7`
-/

namespace A038653.P16292252718224999899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038654 (n + 1) - 7

end

end A038653.P16292252718224999899

/-! ## A038653.P8553168921548840642

`A038593(A038638(n+1))`
-/

namespace A038653.P8553168921548840642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038593 (A038638 (n + 1)).toNat

end

end A038653.P8553168921548840642

/-! ## A038653.P6078832188157917005

`A181123(A038638(n+1)+1)`
-/

namespace A038653.P6078832188157917005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181123 (A038638 (n + 1) + 1).toNat

end

end A038653.P6078832188157917005

/-! ## A038653.P2791774743751209355

`A038593(eq[A038598(n+1), A186684(n+1)])`
-/

namespace A038653.P2791774743751209355
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038598 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186684 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038593 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A038653.P2791774743751209355

/-! ## A038653.P15912004950226908323

`A023449(A038654(n+1))`
-/

namespace A038653.P15912004950226908323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023449 (A038654 (n + 1)).toNat

end

end A038653.P15912004950226908323

/-!
# A038654: Gaps of 7 in sequence A038593 (upper terms).

The programs for A038654, there is no canonical definition to state claims against.
-/

/-! ## A038654.P3312126802416138968

`A038653(n+1)+7`
-/

namespace A038654.P3312126802416138968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038653 (n + 1) + 7

end

end A038654.P3312126802416138968

/-! ## A038654.P5683008857564967330

`A038593(A038638(n+1)+1)`
-/

namespace A038654.P5683008857564967330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038593 (A038638 (n + 1) + 1).toNat

end

end A038654.P5683008857564967330

/-! ## A038654.P2235176645331642104

`A181123(A038638(n+1)+2)`
-/

namespace A038654.P2235176645331642104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181123 (A038638 (n + 1) + 2).toNat

end

end A038654.P2235176645331642104

/-! ## A038654.P13426100338022486188

`A038593(eq[A038598(n+1), A186684(n+1)]+1)`
-/

namespace A038654.P13426100338022486188
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038598 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186684 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038593 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1)

end

end A038654.P13426100338022486188

/-! ## A038654.P7055845450472464196

`A020719(A038653(n+1))`
-/

namespace A038654.P7055845450472464196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020719 (A038653 (n + 1)).toNat

end

end A038654.P7055845450472464196

/-!
# A038655: Gaps of 8 in sequence A038593 (lower terms).

The programs for A038655, there is no canonical definition to state claims against.
-/

/-! ## A038655.P7731839530969491182

`A038656(n+1)-8`
-/

namespace A038655.P7731839530969491182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038656 (n + 1) - 8

end

end A038655.P7731839530969491182

/-! ## A038655.P11240283750529337059

`abs(A038656(-xor(n, -1))-8)`
-/

namespace A038655.P11240283750529337059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A038656 (-Int.xor (n : ℤ) (-1)).toNat - 8|

end

end A038655.P11240283750529337059

/-! ## A038655.P17408954242808861109

`record[A038656(A126759(n))-8]`
-/

namespace A038655.P17408954242808861109
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038656 (A126759 n).toNat - 8

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A038655.P17408954242808861109

/-! ## A038655.P11139611651057895190

`record[A038656(A133310(n))-8]`
-/

namespace A038655.P11139611651057895190
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038656 (A133310 n).toNat - 8

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A038655.P11139611651057895190

/-! ## A038655.P16395775945606298017

`record[A038656(A324346(n))-8]`
-/

namespace A038655.P16395775945606298017
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038656 (A324346 n).toNat - 8

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A038655.P16395775945606298017

/-! ## A038655.P16188578226814932239

`A038593(A038639(n+1))`
-/

namespace A038655.P16188578226814932239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038593 (A038639 (n + 1)).toNat

end

end A038655.P16188578226814932239

/-! ## A038655.P6814672629952042511

`A181123(A038639(n+1)+1)`
-/

namespace A038655.P6814672629952042511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181123 (A038639 (n + 1) + 1).toNat

end

end A038655.P6814672629952042511

/-! ## A038655.P14975899017274769789

`A038593(eq[8, A038598(n+1)])`
-/

namespace A038655.P14975899017274769789
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038598 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038593 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A038655.P14975899017274769789

/-!
# A038656: Gaps of 8 in sequence A038593 (upper terms).

The programs for A038656, there is no canonical definition to state claims against.
-/

/-! ## A038656.P14631018464514583527

`A038655(n+1)+8`
-/

namespace A038656.P14631018464514583527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038655 (n + 1) + 8

end

end A038656.P14631018464514583527

/-! ## A038656.P2439540326300561513

`A038593(A038639(n+1)+1)`
-/

namespace A038656.P2439540326300561513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038593 (A038639 (n + 1) + 1).toNat

end

end A038656.P2439540326300561513

/-! ## A038656.P11703734307596013994

`A181123(A038639(n+1)+2)`
-/

namespace A038656.P11703734307596013994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181123 (A038639 (n + 1) + 2).toNat

end

end A038656.P11703734307596013994

/-! ## A038656.P11189856895866150171

`A181123(eq[8, A038593(n+1)-A181123(n+1)]+2)`
-/

namespace A038656.P11189856895866150171
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038593 (n + 1) - A181123 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181123 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2)

end

end A038656.P11189856895866150171

/-! ## A038656.P13557253707178239700

`A020722(A038655(n+1))`
-/

namespace A038656.P13557253707178239700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020722 (A038655 (n + 1)).toNat

end

end A038656.P13557253707178239700

/-!
# A038657: Gaps of 9 in sequence A038593 (lower terms).

The programs for A038657, there is no canonical definition to state claims against.
-/

/-! ## A038657.P16386519652329214666

`A038658(n+1)-9`
-/

namespace A038657.P16386519652329214666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038658 (n + 1) - 9

end

end A038657.P16386519652329214666

/-! ## A038657.P8532512029533924149

`A038593(A038640(n+1))`
-/

namespace A038657.P8532512029533924149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038593 (A038640 (n + 1)).toNat

end

end A038657.P8532512029533924149

/-! ## A038657.P67585329545268833

`A181123(A038640(n+1)+1)`
-/

namespace A038657.P67585329545268833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181123 (A038640 (n + 1) + 1).toNat

end

end A038657.P67585329545268833

/-! ## A038657.P9069706516747092040

`A038593(eq[9, A038598(n+1)])`
-/

namespace A038657.P9069706516747092040
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038598 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038593 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A038657.P9069706516747092040

/-! ## A038657.P16145403746330028089

`A181123(eq[9, A038598(n+1)]+1)`
-/

namespace A038657.P16145403746330028089
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038598 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181123 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A038657.P16145403746330028089

/-!
# A038658: Gaps of 9 in sequence A038593 (upper terms).

The programs for A038658, there is no canonical definition to state claims against.
-/

/-! ## A038658.P17593895613771940366

`A038657(n+1)+9`
-/

namespace A038658.P17593895613771940366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038657 (n + 1) + 9

end

end A038658.P17593895613771940366

/-! ## A038658.P3324538032369828458

`A038593(A038640(n+1)+1)`
-/

namespace A038658.P3324538032369828458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038593 (A038640 (n + 1) + 1).toNat

end

end A038658.P3324538032369828458

/-! ## A038658.P6137722528655769332

`A181123(A038640(n+1)+2)`
-/

namespace A038658.P6137722528655769332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181123 (A038640 (n + 1) + 2).toNat

end

end A038658.P6137722528655769332

/-! ## A038658.P7403949586561618366

`A038593(eq[9, A038593(n+1)-A181123(n+1)]+1)`
-/

namespace A038658.P7403949586561618366
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038593 (n + 1) - A181123 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038593 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A038658.P7403949586561618366

/-! ## A038658.P3173196291481251332

`A038593(eq[9, A038598(n+1)]+1)`
-/

namespace A038658.P3173196291481251332
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038598 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038593 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A038658.P3173196291481251332

/-! ## A038658.P11728362399654532075

`A181123(eq[9, A038598(n+1)]+2)`
-/

namespace A038658.P11728362399654532075
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038598 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181123 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2)

end

end A038658.P11728362399654532075

/-!
# A038659: Gaps of 10 in sequence A038593 (lower terms).

The programs for A038659, there is no canonical definition to state claims against.
-/

/-! ## A038659.P11653036886853304885

`A038660(n+1)-10`
-/

namespace A038659.P11653036886853304885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038660 (n + 1) - 10

end

end A038659.P11653036886853304885

/-! ## A038659.P8309520409768932053

`A038593(A038641(n+1))`
-/

namespace A038659.P8309520409768932053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038593 (A038641 (n + 1)).toNat

end

end A038659.P8309520409768932053

/-! ## A038659.P10215101608260554983

`A181123(A038641(n+1)+1)`
-/

namespace A038659.P10215101608260554983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181123 (A038641 (n + 1) + 1).toNat

end

end A038659.P10215101608260554983

/-! ## A038659.P1670559134380213556

`A038593(eq[10, A038593(n+1)-A181123(n+1)])`
-/

namespace A038659.P1670559134380213556
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038593 (n + 1) - A181123 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038593 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A038659.P1670559134380213556

/-! ## A038659.P4058811004222553210

`A038593(eq[10, A038598(n+1)])`
-/

namespace A038659.P4058811004222553210
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038598 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038593 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A038659.P4058811004222553210

/-!
# A038660: Gaps of 10 in sequence A038593 (upper terms).

The programs for A038660, there is no canonical definition to state claims against.
-/

/-! ## A038660.P13370857392739918950

`A038659(n+1)+10`
-/

namespace A038660.P13370857392739918950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038659 (n + 1) + 10

end

end A038660.P13370857392739918950

/-! ## A038660.P2021781938036221848

`A038593(A038641(n+1)+1)`
-/

namespace A038660.P2021781938036221848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038593 (A038641 (n + 1) + 1).toNat

end

end A038660.P2021781938036221848

/-! ## A038660.P13670539129217880230

`A181123(A038641(n+1)+2)`
-/

namespace A038660.P13670539129217880230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181123 (A038641 (n + 1) + 2).toNat

end

end A038660.P13670539129217880230

/-! ## A038660.P8704075004520240408

`A038593(eq[10, A038593(n+1)-A181123(n+1)])+10`
-/

namespace A038660.P8704075004520240408
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038593 (n + 1) - A181123 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038593 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n) + 10

end

end A038660.P8704075004520240408

/-! ## A038660.P6573652944738654710

`A038593(eq[10, A038598(n+1)]+1)`
-/

namespace A038660.P6573652944738654710
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038598 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038593 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A038660.P6573652944738654710

/-!
# A038661: First gap of n in sequence A038593 (lower terms).

The programs for A038661, there is no canonical definition to state claims against.
-/

/-! ## A038661.P1900242492475048223

`A038662(n+1)-(n+1)`
-/

namespace A038661.P1900242492475048223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038662 (n + 1) - (n + 1 : ℤ)

end

end A038661.P1900242492475048223

/-! ## A038661.P12861786191665842178

`A038593(A038642(n+1))`
-/

namespace A038661.P12861786191665842178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038593 (A038642 (n + 1)).toNat

end

end A038661.P12861786191665842178

/-! ## A038661.P11450821470285047146

`A181123(A038642(n+1)+1)`
-/

namespace A038661.P11450821470285047146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181123 (A038642 (n + 1) + 1).toNat

end

end A038661.P11450821470285047146

/-! ## A038661.P14859073072857329711

`abs(A038662(n+1)+A001489(n+1))`
-/

namespace A038661.P14859073072857329711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A038662 (n + 1) + A001489 (n + 1)|

end

end A038661.P14859073072857329711

/-! ## A038661.P10024821964205455400

`A023443(A038662(n+1)-n)`
-/

namespace A038661.P10024821964205455400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A038662 (n + 1) - (n : ℤ)).toNat

end

end A038661.P10024821964205455400

/-!
# A038662: First gap of n in sequence A038593 (upper terms).

The programs for A038662, there is no canonical definition to state claims against.
-/

/-! ## A038662.P1427544930269431680

`A038661(n+1)+1+n`
-/

namespace A038662.P1427544930269431680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038661 (n + 1) + 1 + (n : ℤ)

end

end A038662.P1427544930269431680

/-! ## A038662.P4584882737087461325

`A038593(A038642(n+1)+1)`
-/

namespace A038662.P4584882737087461325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038593 (A038642 (n + 1) + 1).toNat

end

end A038662.P4584882737087461325

/-! ## A038662.P3537827276106478451

`A181123(A038642(n+1)+2)`
-/

namespace A038662.P3537827276106478451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181123 (A038642 (n + 1) + 2).toNat

end

end A038662.P3537827276106478451

/-! ## A038662.P6454350296561043330

`A020725(A038661(n+1)+n)`
-/

namespace A038662.P6454350296561043330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A038661 (n + 1) + (n : ℤ)).toNat

end

end A038662.P6454350296561043330

/-! ## A038662.P11374088505592865037

`A065475(A038661(n+1)+n)`
-/

namespace A038662.P11374088505592865037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (A038661 (n + 1) + (n : ℤ)).toNat

end

end A038662.P11374088505592865037

/-!
# A038663: [ n/F_2 ] + [ n/F_3 ] + [ n/F_4 ] +..., F_n=Fibonacci numbers.

The programs for A038663, the canonical program `A038663.P7027077703131923991` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A038663 has offset 1).

The definition of A038663 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A038663.P4748120115373856216

`∑[A005086(n+1)]`
-/

namespace A038663.P4748120115373856216
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005086 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A038663.P4748120115373856216

namespace A038663

/-- `∑[A005086(n+1)]` -/
def P4748120115373856216.Spec : Prop :=
  ∀ n, P4748120115373856216.a n = A038663 (n + 1)

end A038663

/-! ## A038663.P7027077703131923991

`∑[∑{d}[n+1, A010056(#)]]`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A038663

/-- `∑[∑{d}[n+1, A010056(#)]]` -/
def P7027077703131923991.Spec : Prop :=
  ∀ n, P7027077703131923991.a n = A038663 (n + 1)

theorem P7027077703131923991.correct : P7027077703131923991.Spec := by
  intro n
  simp only [A038663, Nat.add_sub_cancel]

end A038663

/-! ## A038663.P10330789029124741232

`∑[∑{d}[n+1, A192687(#-1)]]`
-/

namespace A038663.P10330789029124741232
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), A192687 (d - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A038663.P10330789029124741232

namespace A038663

/-- `∑[∑{d}[n+1, A192687(#-1)]]` -/
def P10330789029124741232.Spec : Prop :=
  ∀ n, P10330789029124741232.a n = A038663 (n + 1)

end A038663

/-! ## A038663.P3978274523794603344

`eq[A054977(n), A394854(n+1)]`
-/

namespace A038663.P3978274523794603344
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394854 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A038663.P3978274523794603344

namespace A038663

/-- `eq[A054977(n), A394854(n+1)]` -/
def P3978274523794603344.Spec : Prop :=
  ∀ n, (P3978274523794603344.a n : ℤ) = A038663 (n + 1)

end A038663

/-! ## A038663.P7978808820850157751

`eq[A057427(n), A394854(n+1)]`
-/

namespace A038663.P7978808820850157751
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394854 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A038663.P7978808820850157751

namespace A038663

/-- `eq[A057427(n), A394854(n+1)]` -/
def P7978808820850157751.Spec : Prop :=
  ∀ n, (P7978808820850157751.a n : ℤ) = A038663 (n + 1)

end A038663

/-! ## A038663.P9946398297932848777

`eq[A158388(n), A394854(n+1)]`
-/

namespace A038663.P9946398297932848777
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158388 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394854 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A038663.P9946398297932848777

namespace A038663

/-- `eq[A158388(n), A394854(n+1)]` -/
def P9946398297932848777.Spec : Prop :=
  ∀ n, (P9946398297932848777.a n : ℤ) = A038663 (n + 1)

end A038663

/-! ## A038663.P4642957516910229691

`∑[A293435(A008605(n+1))]`
-/

namespace A038663.P4642957516910229691
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293435 (A008605 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A038663.P4642957516910229691

namespace A038663

/-- `∑[A293435(A008605(n+1))]` -/
def P4642957516910229691.Spec : Prop :=
  ∀ n, P4642957516910229691.a n = A038663 (n + 1)

end A038663

/-! ## A038663.P2766072541892097511

`∑[A293435(A135631(n+1))]`
-/

namespace A038663.P2766072541892097511
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293435 (A135631 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A038663.P2766072541892097511

namespace A038663

/-- `∑[A293435(A135631(n+1))]` -/
def P2766072541892097511.Spec : Prop :=
  ∀ n, P2766072541892097511.a n = A038663 (n + 1)

end A038663

/-! ## A038663.P6254189198285895377

`∑[A293435(A020338(n+1))]`
-/

namespace A038663.P6254189198285895377
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293435 (A020338 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A038663.P6254189198285895377

namespace A038663

/-- `∑[A293435(A020338(n+1))]` -/
def P6254189198285895377.Spec : Prop :=
  ∀ n, P6254189198285895377.a n = A038663 (n + 1)

end A038663

/-! ## A038663.P2633605119465258961

`∑[∑{d}[n+1, round((1/A105446(#))²)]]`
-/

namespace A038663.P2633605119465258961
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), SequenceMachineLib.roundAway ((1 / (A105446 d : ℚ)) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A038663.P2633605119465258961

namespace A038663

/-- `∑[∑{d}[n+1, round((1/A105446(#))²)]]` -/
def P2633605119465258961.Spec : Prop :=
  ∀ n, P2633605119465258961.a n = A038663 (n + 1)

end A038663

/-!
# A038664: a(n)-th and (a(n)+1)-st primes are the first pair of primes that differ by exactly 2n; a(n) = -1 if no such pair of primes exists.

The programs for A038664, there is no canonical definition to state claims against.
-/

/-! ## A038664.P7460569189398165321

`A000720(A000230(n+1))`
-/

namespace A038664.P7460569189398165321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A000230 (n + 1)).toNat

end

end A038664.P7460569189398165321

/-! ## A038664.P12356128398660671759

`A073051(n+1)+1`
-/

namespace A038664.P12356128398660671759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073051 (n + 1) + 1

end

end A038664.P12356128398660671759

/-! ## A038664.P17945828191170243080

`A066493(2*(n+1))`
-/

namespace A038664.P17945828191170243080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066493 (2 * (n + 1))

end

end A038664.P17945828191170243080

/-! ## A038664.P7255814804006600370

`A174349(∑[n+1])`
-/

namespace A038664.P7255814804006600370
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174349 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A038664.P7255814804006600370

/-! ## A038664.P8662894975366934719

`and(-1, A174349(A000217(n+1)))`
-/

namespace A038664.P8662894975366934719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A174349 (A000217 (n + 1)).toNat)

end

end A038664.P8662894975366934719

/-! ## A038664.P9449493249721151414

`gcd(A000038(n), A174349(A000217(n+1)))`
-/

namespace A038664.P9449493249721151414
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A174349 (A000217 (n + 1)).toNat)

end

end A038664.P9449493249721151414

/-! ## A038664.P3090197278339997397

`∑{d}[A174349(A000217(n+1)), A000010(#)]`
-/

namespace A038664.P3090197278339997397
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174349 (A000217 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A038664.P3090197278339997397

/-! ## A038664.P8718621400754028735

`A174349(A000217(n+1))+A000007(n+1)`
-/

namespace A038664.P8718621400754028735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174349 (A000217 (n + 1)).toNat + A000007 (n + 1)

end

end A038664.P8718621400754028735

/-! ## A038664.P4166609443523574563

`A174349(A000217(n+1))+A000038(n+1)`
-/

namespace A038664.P4166609443523574563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174349 (A000217 (n + 1)).toNat + A000038 (n + 1)

end

end A038664.P4166609443523574563

/-! ## A038664.P11824183180001225759

`A007318(C(2, n))*A174349(A000217(n+1))`
-/

namespace A038664.P11824183180001225759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A174349 (A000217 (n + 1)).toNat

end

end A038664.P11824183180001225759

/-!
# A038665: Convolution of A007054 (super ballot numbers) with A000984 (central binomial coefficients).

The programs for A038665, the canonical program `A038665.P17547790315990952334` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A038665 has offset 0).

The definition of A038665 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A038665.P17547790315990952334

`(n+3)*C(2*n+2, n+1)/(n+2)`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A038665

/-- `(n+3)*C(2*n+2, n+1)/(n+2)` -/
def P17547790315990952334.Spec : Prop :=
  ∀ n, P17547790315990952334.a n = (A038665 n : ℚ)

end A038665

/-! ## A038665.P15939068564527251492

`(n+3)*∏[2*(2*n+1)/(n+2)]`
-/

namespace A038665.P15939068564527251492
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 * ((2 * n + 1 : ℚ) / (n + 2 : ℚ))

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 3 : ℚ) * (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A038665.P15939068564527251492

namespace A038665

/-- `(n+3)*∏[2*(2*n+1)/(n+2)]` -/
def P15939068564527251492.Spec : Prop :=
  ∀ n, P15939068564527251492.a n = (A038665 n : ℚ)

end A038665

/-! ## A038665.P16947411504668248348

`A000777(n+1)+1`
-/

namespace A038665.P16947411504668248348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000777 (n + 1) + 1

end

end A038665.P16947411504668248348

namespace A038665

/-- `A000777(n+1)+1` -/
def P16947411504668248348.Spec : Prop :=
  ∀ n, P16947411504668248348.a n = A038665 n

end A038665

/-! ## A038665.P11735487614534699444

`A051944(n)+A005807(n)`
-/

namespace A038665.P11735487614534699444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051944 n + A005807 n

end

end A038665.P11735487614534699444

namespace A038665

/-- `A051944(n)+A005807(n)` -/
def P11735487614534699444.Spec : Prop :=
  ∀ n, P11735487614534699444.a n = A038665 n

end A038665

/-! ## A038665.P16095140580526831221

`A077587(n)+A051960(n)`
-/

namespace A038665.P16095140580526831221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077587 n + A051960 n

end

end A038665.P16095140580526831221

namespace A038665

/-- `A077587(n)+A051960(n)` -/
def P16095140580526831221.Spec : Prop :=
  ∀ n, P16095140580526831221.a n = A038665 n

end A038665

/-! ## A038665.P15071375214191820551

`A279557(n)+A274104(n)`
-/

namespace A038665.P15071375214191820551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279557 n + A274104 n

end

end A038665.P15071375214191820551

namespace A038665

/-- `A279557(n)+A274104(n)` -/
def P15071375214191820551.Spec : Prop :=
  ∀ n, P15071375214191820551.a n = A038665 n

end A038665

/-! ## A038665.P5717430769403768086

`A128650(n+2)+A038629(n)`
-/

namespace A038665.P5717430769403768086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128650 (n + 2) + A038629 n

end

end A038665.P5717430769403768086

namespace A038665

/-- `A128650(n+2)+A038629(n)` -/
def P5717430769403768086.Spec : Prop :=
  ∀ n, P5717430769403768086.a n = A038665 n

end A038665

/-! ## A038665.P6036324695298988744

`A000984(n+1)+record[A126120(n)]`
-/

namespace A038665.P6036324695298988744
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126120 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000984 (n + 1) + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A038665.P6036324695298988744

namespace A038665

/-- `A000984(n+1)+record[A126120(n)]` -/
def P6036324695298988744.Spec : Prop :=
  ∀ n, P6036324695298988744.a n = A038665 n

end A038665

/-! ## A038665.P8854795906977665283

`A000984(n+1)+A000108(n+1)`
-/

namespace A038665.P8854795906977665283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000984 (n + 1) + A000108 (n + 1)

end

end A038665.P8854795906977665283

namespace A038665

/-- `A000984(n+1)+A000108(n+1)` -/
def P8854795906977665283.Spec : Prop :=
  ∀ n, P8854795906977665283.a n = A038665 n

end A038665

/-! ## A038665.P6081441201105218049

`A068875(n+1)+A001791(n+1)`
-/

namespace A038665.P6081441201105218049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068875 (n + 1) + A001791 (n + 1)

end

end A038665.P6081441201105218049

namespace A038665

/-- `A068875(n+1)+A001791(n+1)` -/
def P6081441201105218049.Spec : Prop :=
  ∀ n, P6081441201105218049.a n = A038665 n

end A038665

/-! ## A038665.P44845331219471259

`A120588(n+2)+A000984(n+1)`
-/

namespace A038665.P44845331219471259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120588 (n + 2) + A000984 (n + 1)

end

end A038665.P44845331219471259

namespace A038665

/-- `A120588(n+2)+A000984(n+1)` -/
def P44845331219471259.Spec : Prop :=
  ∀ n, P44845331219471259.a n = A038665 n

end A038665

/-! ## A038665.P2170803830434857378

`A344191(n+1)+A000108(n+2)`
-/

namespace A038665.P2170803830434857378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344191 (n + 1) + A000108 (n + 2)

end

end A038665.P2170803830434857378

namespace A038665

/-- `A344191(n+1)+A000108(n+2)` -/
def P2170803830434857378.Spec : Prop :=
  ∀ n, P2170803830434857378.a n = A038665 n

end A038665

/-! ## A038665.P14694026490105165035

`A000984(n+1)-A115140(n+2)`
-/

namespace A038665.P14694026490105165035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000984 (n + 1) - A115140 (n + 2)

end

end A038665.P14694026490105165035

namespace A038665

/-- `A000984(n+1)-A115140(n+2)` -/
def P14694026490105165035.Spec : Prop :=
  ∀ n, P14694026490105165035.a n = A038665 n

end A038665

/-! ## A038665.P8886280383656839751

`A000984(n+1)-A115141(n+2)`
-/

namespace A038665.P8886280383656839751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000984 (n + 1) - A115141 (n + 2)

end

end A038665.P8886280383656839751

namespace A038665

/-- `A000984(n+1)-A115141(n+2)` -/
def P8886280383656839751.Spec : Prop :=
  ∀ n, P8886280383656839751.a n = A038665 n

end A038665

/-! ## A038665.P16465024396341347713

`A024482(n+2)-A246434(n+1)`
-/

namespace A038665.P16465024396341347713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024482 (n + 2) - A246434 (n + 1)

end

end A038665.P16465024396341347713

namespace A038665

/-- `A024482(n+2)-A246434(n+1)` -/
def P16465024396341347713.Spec : Prop :=
  ∀ n, P16465024396341347713.a n = A038665 n

end A038665

/-! ## A038665.P6244709199978760006

`A000108(n+1)+2*A001700(n)`
-/

namespace A038665.P6244709199978760006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (n + 1) + 2 * A001700 n

end

end A038665.P6244709199978760006

namespace A038665

/-- `A000108(n+1)+2*A001700(n)` -/
def P6244709199978760006.Spec : Prop :=
  ∀ n, P6244709199978760006.a n = A038665 n

end A038665

/-! ## A038665.P7394220667260862700

`A026008(2*n)+A000984(n+1)`
-/

namespace A038665.P7394220667260862700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026008 (2 * n) + A000984 (n + 1)

end

end A038665.P7394220667260862700

namespace A038665

/-- `A026008(2*n)+A000984(n+1)` -/
def P7394220667260862700.Spec : Prop :=
  ∀ n, P7394220667260862700.a n = A038665 n

end A038665

/-! ## A038665.P11034505781674871604

`A000984(n+1)+abs(A168491(n+1))`
-/

namespace A038665.P11034505781674871604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000984 (n + 1) + |A168491 (n + 1)|

end

end A038665.P11034505781674871604

namespace A038665

/-- `A000984(n+1)+abs(A168491(n+1))` -/
def P11034505781674871604.Spec : Prop :=
  ∀ n, P11034505781674871604.a n = A038665 n

end A038665

/-! ## A038665.P11049077275929704280

`A001791(n+1)+A131428(n+1)+1`
-/

namespace A038665.P11049077275929704280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001791 (n + 1) + (A131428 (n + 1) + 1)

end

end A038665.P11049077275929704280

namespace A038665

/-- `A001791(n+1)+A131428(n+1)+1` -/
def P11049077275929704280.Spec : Prop :=
  ∀ n, P11049077275929704280.a n = A038665 n

end A038665

/-! ## A038665.P2953196803533201831

`A000984(n+1)+A120304(n+1)+2`
-/

namespace A038665.P2953196803533201831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000984 (n + 1) + (A120304 (n + 1) + 2)

end

end A038665.P2953196803533201831

namespace A038665

/-- `A000984(n+1)+A120304(n+1)+2` -/
def P2953196803533201831.Spec : Prop :=
  ∀ n, P2953196803533201831.a n = A038665 n

end A038665

/-!
# A038666: Minimum area rectangle into which squares of sizes 1, 2, 3, ... n can be packed.

The programs for A038666, there is no canonical definition to state claims against.
-/

/-! ## A038666.P16433517365389514427

`A000330(n+1)+A081287(n+1)`
-/

namespace A038666.P16433517365389514427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000330 (n + 1) + A081287 (n + 1)

end

end A038666.P16433517365389514427

/-! ## A038666.P1331149702322001620

`A109678(n+1)+A081287(n+1)`
-/

namespace A038666.P1331149702322001620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109678 (n + 1) + A081287 (n + 1)

end

end A038666.P1331149702322001620

/-! ## A038666.P8334065550067299882

`A318931(n+1)+A145066(n+1)`
-/

namespace A038666.P8334065550067299882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318931 (n + 1) + A145066 (n + 1)

end

end A038666.P8334065550067299882

/-! ## A038666.P2958236235746583916

`A000330(n+1)+A318931(n+1)+1+n`
-/

namespace A038666.P2958236235746583916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000330 (n + 1) + (A318931 (n + 1) + 1 + (n : ℤ))

end

end A038666.P2958236235746583916

/-! ## A038666.P11946481778910683964

`A109678(n+1)+A318931(n+1)+1+n`
-/

namespace A038666.P11946481778910683964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109678 (n + 1) + (A318931 (n + 1) + 1 + (n : ℤ))

end

end A038666.P11946481778910683964

/-!
# A038667: Minimal value of |product(A) - product(B)| where A and B are a partition of {1,2,3,...,n}.

The programs for A038667, there is no canonical definition to state claims against.
-/

/-! ## A038667.P12142331075495219447

`A200744(A028310(n))-A200743(A028310(n))`
-/

namespace A038667.P12142331075495219447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200744 (A028310 n).toNat - A200743 (A028310 n).toNat

end

end A038667.P12142331075495219447

/-! ## A038667.P11551850018135621947

`A061057(n^A340102(n))`
-/

namespace A038667.P11551850018135621947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061057 (SequenceMachineLib.roundAway ((n : ℚ) ^ (A340102 n : ℤ))).toNat

end

end A038667.P11551850018135621947

/-! ## A038667.P15769888146325638592

`∑{e}[A000244(n), A061057(#)]`
-/

namespace A038667.P15769888146325638592
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000244 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A061057 (Nat.factorization (f1 n).natAbs p)

end

end A038667.P15769888146325638592

/-! ## A038667.P16701183534162539952

`A061057(n^A111857(n+1))`
-/

namespace A038667.P16701183534162539952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061057 (SequenceMachineLib.roundAway ((n : ℚ) ^ (A111857 (n + 1) : ℤ))).toNat

end

end A038667.P16701183534162539952

/-! ## A038667.P17585446759002846780

`A061057(n^A322812(n+2))`
-/

namespace A038667.P17585446759002846780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061057 (SequenceMachineLib.roundAway ((n : ℚ) ^ (A322812 (n + 2) : ℤ))).toNat

end

end A038667.P17585446759002846780

/-!
# A038668: a(n)=[ n/3 ] + [ n/4 ] + [ n/7 ] + [ n/11 ] + [ n/18 ] + [ n/29 ] + [ n/47 ] + [ n/76 ] + [ n/123 ] + [ n/199 ]... (using Lucas numbers A000204).

The programs for A038668, the canonical program `A038668.P7380723209016836923` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A038668 has offset 1).

The definition of A038668 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A038668.P7380723209016836923

`∑[A304094(n+1)-1]`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A038668

/-- `∑[A304094(n+1)-1]` -/
def P7380723209016836923.Spec : Prop :=
  ∀ n, P7380723209016836923.a n = A038668 (n + 1)

theorem P7380723209016836923.correct : P7380723209016836923.Spec := by
  intro n
  simp only [A038668, Nat.add_sub_cancel]

end A038668

/-! ## A038668.P17336511360099129788

`A038669(n+1)-A110654(n)`
-/

namespace A038668.P17336511360099129788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038669 (n + 1) - A110654 n

end

end A038668.P17336511360099129788

namespace A038668

/-- `A038669(n+1)-A110654(n)` -/
def P17336511360099129788.Spec : Prop :=
  ∀ n, P17336511360099129788.a n = A038668 (n + 1)

end A038668

/-! ## A038668.P11816533008529265740

`A038669(n+1)-∑[A000035(n)]`
-/

namespace A038668.P11816533008529265740
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038669 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A038668.P11816533008529265740

namespace A038668

/-- `A038669(n+1)-∑[A000035(n)]` -/
def P11816533008529265740.Spec : Prop :=
  ∀ n, P11816533008529265740.a n = A038668 (n + 1)

end A038668

/-! ## A038668.P9265986389246558999

`∑[A304092(n+1)-A000034(n)]`
-/

namespace A038668.P9265986389246558999
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304092 (n + 1) - A000034 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A038668.P9265986389246558999

namespace A038668

/-- `∑[A304092(n+1)-A000034(n)]` -/
def P9265986389246558999.Spec : Prop :=
  ∀ n, P9265986389246558999.a n = A038668 (n + 1)

end A038668

/-! ## A038668.P2334788303626845087

`A038669(n+1)-Δ[A002620(n)]`
-/

namespace A038668.P2334788303626845087
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038669 (n + 1) - (f1 (n + 1) - f1 n)

end

end A038668.P2334788303626845087

namespace A038668

/-- `A038669(n+1)-Δ[A002620(n)]` -/
def P2334788303626845087.Spec : Prop :=
  ∀ n, P2334788303626845087.a n = A038668 (n + 1)

end A038668

/-! ## A038668.P15805507098469173153

`A038669(n+1)+A004526(n)-n`
-/

namespace A038668.P15805507098469173153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038669 (n + 1) + (A004526 n - (n : ℤ))

end

end A038668.P15805507098469173153

namespace A038668

/-- `A038669(n+1)+A004526(n)-n` -/
def P15805507098469173153.Spec : Prop :=
  ∀ n, P15805507098469173153.a n = A038668 (n + 1)

end A038668

/-! ## A038668.P1976342063364456506

`∑[A304092(n+1)-1]-A110654(n)`
-/

namespace A038668.P1976342063364456506
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304092 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A110654 n

end

end A038668.P1976342063364456506

namespace A038668

/-- `∑[A304092(n+1)-1]-A110654(n)` -/
def P1976342063364456506.Spec : Prop :=
  ∀ n, P1976342063364456506.a n = A038668 (n + 1)

end A038668

/-! ## A038668.P13338223150827848563

`∑[A304094(n+1)]%A000027(n+1)`
-/

namespace A038668.P13338223150827848563
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304094 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (A000027 (n + 1))

end

end A038668.P13338223150827848563

namespace A038668

/-- `∑[A304094(n+1)]%A000027(n+1)` -/
def P13338223150827848563.Spec : Prop :=
  ∀ n, P13338223150827848563.a n = A038668 (n + 1)

end A038668

/-! ## A038668.P14032700261497382508

`A038669(n+1)+A047336(n+1)-A047522(n+1)`
-/

namespace A038668.P14032700261497382508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038669 (n + 1) + (A047336 (n + 1) - A047522 (n + 1))

end

end A038668.P14032700261497382508

namespace A038668

/-- `A038669(n+1)+A047336(n+1)-A047522(n+1)` -/
def P14032700261497382508.Spec : Prop :=
  ∀ n, P14032700261497382508.a n = A038668 (n + 1)

end A038668

/-! ## A038668.P15622732647786043105

`A038669(n+1)-A123108(n+1)`
-/

namespace A038668.P15622732647786043105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038669 (n + 1) - A123108 (n + 1)

end

end A038668.P15622732647786043105

namespace A038668

/-- `A038669(n+1)-A123108(n+1)` -/
def P15622732647786043105.Spec : Prop :=
  ∀ n, P15622732647786043105.a n = A038668 (n + 1)

end A038668

/-! ## A038668.P6508663947732079183

`∑[A304094(n+1)]%A143182(∑[n])`
-/

namespace A038668.P6508663947732079183
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304094 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (A143182 (∑ j ∈ Finset.range (n + 1), f2 j))

end

end A038668.P6508663947732079183

namespace A038668

/-- `∑[A304094(n+1)]%A143182(∑[n])` -/
def P6508663947732079183.Spec : Prop :=
  ∀ n, P6508663947732079183.a n = A038668 (n + 1)

end A038668

/-! ## A038668.P7384131012586465898

`A002262(∑[A304094(n+1)+n])`
-/

namespace A038668.P7384131012586465898
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304094 (n + 1) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A038668.P7384131012586465898

namespace A038668

/-- `A002262(∑[A304094(n+1)+n])` -/
def P7384131012586465898.Spec : Prop :=
  ∀ n, P7384131012586465898.a n = A038668 (n + 1)

end A038668

/-!
# A038669: [ n/2 ]+[ n/3 ]+[ n/4 ]+[ n/7 ]+[ n/11 ]+[ n/18 ]+[ n/29 ]+[ n/47 ]+[ n/76 ]+[ n/123 ]+[ n/199 ]+... (using Lucas numbers A000032).

The programs for A038669, the canonical program `A038669.P16373294596466858069` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A038669 has offset 1).

The definition of A038669 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A038669.P16373294596466858069

`∑[A304092(n+1)-1]`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A038669

/-- `∑[A304092(n+1)-1]` -/
def P16373294596466858069.Spec : Prop :=
  ∀ n, P16373294596466858069.a n = A038669 (n + 1)

theorem P16373294596466858069.correct : P16373294596466858069.Spec := by
  intro n
  simp only [A038669, Nat.add_sub_cancel]

end A038669

/-! ## A038669.P8572667494309057092

`A038668(n+1)+ceil(n/2)`
-/

namespace A038669.P8572667494309057092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038668 (n + 1) + ⌈(n : ℚ) / 2⌉

end

end A038669.P8572667494309057092

namespace A038669

/-- `A038668(n+1)+ceil(n/2)` -/
def P8572667494309057092.Spec : Prop :=
  ∀ n, P8572667494309057092.a n = A038669 (n + 1)

end A038669

/-! ## A038669.P5366620261554949719

`∑[∑{d}[n+1, A102460(#)]-1]`
-/

namespace A038669.P5366620261554949719
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), A102460 d - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A038669.P5366620261554949719

namespace A038669

/-- `∑[∑{d}[n+1, A102460(#)]-1]` -/
def P5366620261554949719.Spec : Prop :=
  ∀ n, P5366620261554949719.a n = A038669 (n + 1)

end A038669

/-! ## A038669.P16032339270839271308

`A110654(n)+A038668(n+1)`
-/

namespace A038669.P16032339270839271308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 n + A038668 (n + 1)

end

end A038669.P16032339270839271308

namespace A038669

/-- `A110654(n)+A038668(n+1)` -/
def P16032339270839271308.Spec : Prop :=
  ∀ n, P16032339270839271308.a n = A038669 (n + 1)

end A038669

/-! ## A038669.P6275961217258209335

`∑[A304094(n+1)]-A008619(n)`
-/

namespace A038669.P6275961217258209335
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304094 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A008619 n

end

end A038669.P6275961217258209335

namespace A038669

/-- `∑[A304094(n+1)]-A008619(n)` -/
def P6275961217258209335.Spec : Prop :=
  ∀ n, P6275961217258209335.a n = A038669 (n + 1)

end A038669

/-!
# A038671: Number of nonnegative solutions of x1^2 + x2^2 + ... + x5^2 = n.

The programs for A038671, there is no canonical definition to state claims against.
-/

/-! ## A038671.P12249983160995616810

`A045847(A055999(n+3))`
-/

namespace A038671.P12249983160995616810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045847 (A055999 (n + 3)).toNat

end

end A038671.P12249983160995616810

/-! ## A038671.P17521605059578831543

`A045847(eq[6, A193739(n)])`
-/

namespace A038671.P17521605059578831543
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193739 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045847 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A038671.P17521605059578831543

/-! ## A038671.P12327784112076574722

`A045847(Δ[A023551(n+1)])`
-/

namespace A038671.P12327784112076574722
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045847 (f1 (n + 1) - f1 n).toNat

end

end A038671.P12327784112076574722

/-! ## A038671.P16654071475965624637

`A045847(Δ[A026054(n+3)])`
-/

namespace A038671.P16654071475965624637
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026054 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045847 (f1 (n + 1) - f1 n).toNat

end

end A038671.P16654071475965624637

/-! ## A038671.P9719363016951147054

`A045847(A000124(n+6)-7)`
-/

namespace A038671.P9719363016951147054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045847 (A000124 (n + 6) - 7).toNat

end

end A038671.P9719363016951147054

/-! ## A038671.P5279513522604786164

`A045847(A161680(n+7)-6)`
-/

namespace A038671.P5279513522604786164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045847 (A161680 (n + 7) - 6).toNat

end

end A038671.P5279513522604786164

/-! ## A038671.P1726327732383290547

`A045847(A000217(n+9)-A008585(n+10))`
-/

namespace A038671.P1726327732383290547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045847 (A000217 (n + 9) - A008585 (n + 10)).toNat

end

end A038671.P1726327732383290547

/-!
# A038672: Primes p such that the p-th Fibonacci number is composite.

The programs for A038672, there is no canonical definition to state claims against.
-/

/-! ## A038672.P16062474750409444446

`A000040(comp[A119984(n+1)-2]+2)`
-/

namespace A038672.P16062474750409444446
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119984 (n + 1) - 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 2)

end

end A038672.P16062474750409444446

/-! ## A038672.P14362505252066740173

`p?[A261312(n+3)]`
-/

namespace A038672.P14362505252066740173
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261312 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A038672.P14362505252066740173

/-! ## A038672.P17185542806520067355

`∩[A004139(n+1), A261312(n+1)]`
-/

namespace A038672.P17185542806520067355
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261312 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038672.P17185542806520067355

/-! ## A038672.P9081440055047602442

`∩[A065091(n+1), A261312(n+1)]`
-/

namespace A038672.P9081440055047602442
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261312 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038672.P9081440055047602442

/-! ## A038672.P1592168543196813565

`∩[A071621(n+1), A261312(n+1)]`
-/

namespace A038672.P1592168543196813565
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071621 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261312 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038672.P1592168543196813565

/-! ## A038672.P4483064161409031546

`∩[A083249(n+1), A261312(n+1)]`
-/

namespace A038672.P4483064161409031546
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083249 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261312 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038672.P4483064161409031546

/-! ## A038672.P15278666674483256130

`∩[A000040(n+2), A261312(n+2)]`
-/

namespace A038672.P15278666674483256130
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261312 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038672.P15278666674483256130

/-! ## A038672.P17560120418817009959

`∩[A045319(n+2), A261312(n+2)]`
-/

namespace A038672.P17560120418817009959
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261312 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038672.P17560120418817009959

/-! ## A038672.P15652584615081265818

`∩[A045344(n+2), A261312(n+2)]`
-/

namespace A038672.P15652584615081265818
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261312 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038672.P15652584615081265818

/-! ## A038672.P17282912792728350957

`∩[A051948(n+2), A261312(n+2)]`
-/

namespace A038672.P17282912792728350957
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051948 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261312 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038672.P17282912792728350957

/-! ## A038672.P7275284224277226655

`filter[A261312(n+1), A171387(#)]`
-/

namespace A038672.P7275284224277226655
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261312 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A171387 (f1 j).toNat = 1) n)

end

end A038672.P7275284224277226655

/-! ## A038672.P12546626323989562365

`filter[A261312(n+2), A080545(#)]`
-/

namespace A038672.P12546626323989562365
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261312 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A080545 (f1 j).toNat = 1) n)

end

end A038672.P12546626323989562365

/-! ## A038672.P8911317824516512492

`A000040(A134787(n+2))`
-/

namespace A038672.P8911317824516512492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A134787 (n + 2)).toNat

end

end A038672.P8911317824516512492

/-! ## A038672.P2058416480138880750

`p?[A006005(A134787(n+1))]`
-/

namespace A038672.P2058416480138880750
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (A134787 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A038672.P2058416480138880750

/-! ## A038672.P3622134830562832529

`A008578(A134787(n+2)+1)`
-/

namespace A038672.P3622134830562832529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A134787 (n + 2) + 1).toNat

end

end A038672.P3622134830562832529

/-! ## A038672.P13839612286194233680

`A006005(A134787(2*n+2-n))`
-/

namespace A038672.P13839612286194233680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (A134787 ((2 * n : ℤ) + (2 - (n : ℤ))).toNat).toNat

end

end A038672.P13839612286194233680

/-! ## A038672.P11639065271114817048

`A090819(n+2)`
-/

namespace A038672.P11639065271114817048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090819 (n + 2)

end

end A038672.P11639065271114817048

/-! ## A038672.P16196419412333343315

`p?[lt[A006519(n+2), A022307(n)]]`
-/

namespace A038672.P16196419412333343315
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006519 (n + 2)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022307 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A038672.P16196419412333343315

/-! ## A038672.P5324687920253470709

`lt[A001222(A028310(n))²², A038575(n)]`
-/

namespace A038672.P5324687920253470709
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A001222 (A028310 n).toNat ^ 2) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038575 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A038672.P5324687920253470709

/-! ## A038672.P2038764303619662026

`lt[A001222(A257143(n))²², A038575(n)]`
-/

namespace A038672.P2038764303619662026
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A001222 (A257143 n).toNat ^ 2) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038575 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A038672.P2038764303619662026

/-!
# A038673: Numbers that are not the difference between two positive cubes.

The programs for A038673, there is no canonical definition to state claims against.
-/

/-! ## A038673.P11957289891869307189

`comp[A181123(n+1)]`
-/

namespace A038673.P11957289891869307189
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181123 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A038673.P11957289891869307189

/-! ## A038673.P9775960743798447693

`comp[A038593(n+1)-1]+1`
-/

namespace A038673.P9775960743798447693
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038593 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A038673.P9775960743798447693

/-! ## A038673.P15220323804821749307

`comp[Δ[A000578(A349520(n+1))]]`
-/

namespace A038673.P15220323804821749307
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 (A349520 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A038673.P15220323804821749307

/-! ## A038673.P15377712689080345963

`comp[∩[A020894(n+1), A152043(n+1)]]`
-/

namespace A038673.P15377712689080345963
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020894 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152043 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∧ ∃ j, f3 j = (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A038673.P15377712689080345963

/-! ## A038673.P11198247147897621044

`eq[char[A038593(n+1)], A000007(n)]`
-/

namespace A038673.P11198247147897621044
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038593 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A038673.P11198247147897621044

/-! ## A038673.P12053494731873608070

`eq[char[A038593(n+1)], A000038(n)]`
-/

namespace A038673.P12053494731873608070
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038593 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A038673.P12053494731873608070

/-! ## A038673.P10090984772133208314

`eq[char[A181123(n+1)], A000038(n)]`
-/

namespace A038673.P10090984772133208314
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181123 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A038673.P10090984772133208314

/-! ## A038673.P5884511525131140905

`eq[char[A181123(n+2)], A000007(n)]`
-/

namespace A038673.P5884511525131140905
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181123 (n + 2)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A038673.P5884511525131140905

/-! ## A038673.P3953731138225509616

`eq[char[A014439(n+1)], A151933(n)]`
-/

namespace A038673.P3953731138225509616
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014439 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151933 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A038673.P3953731138225509616

/-!
# A038675: Triangle read by rows: T(n,k)=A(n,k)*binomial(n+k-1,n), where A(n,k) are the Eulerian numbers (A008292).

The programs for A038675, there is no canonical definition to state claims against.
-/

/-! ## A038675.P6779815049751646839

`A008292(n+1)*A178300(n+1)`
-/

namespace A038675.P6779815049751646839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008292 (n + 1) * A178300 (n + 1)

end

end A038675.P6779815049751646839

/-! ## A038675.P17774887574136617772

`A008292(n+1)*A074909(A245300(n))`
-/

namespace A038675.P17774887574136617772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008292 (n + 1) * A074909 (A245300 n).toNat

end

end A038675.P17774887574136617772

/-! ## A038675.P9718483564313005831

`A008292(n+1)*A046899(A007401(n+1))`
-/

namespace A038675.P9718483564313005831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008292 (n + 1) * A046899 (A007401 (n + 1)).toNat

end

end A038675.P9718483564313005831

/-! ## A038675.P11728022321852854179

`A008292(n+1)*A014462(A056537(n+1))`
-/

namespace A038675.P11728022321852854179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008292 (n + 1) * A014462 (A056537 (n + 1)).toNat

end

end A038675.P11728022321852854179

/-! ## A038675.P14103174940261348544

`A123125(A014132(n+1))*A178300(n+1)`
-/

namespace A038675.P14103174940261348544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123125 (A014132 (n + 1)).toNat * A178300 (n + 1)

end

end A038675.P14103174940261348544

/-! ## A038675.P13558175872696964873

`A008292(n+1)*A176992(A114327(n)+n)`
-/

namespace A038675.P13558175872696964873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008292 (n + 1) * A176992 (A114327 n + (n : ℤ)).toNat

end

end A038675.P13558175872696964873

/-! ## A038675.P6789796235525994653

`A008292(n+1)*A046899(A014132(n+1)-1)`
-/

namespace A038675.P6789796235525994653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008292 (n + 1) * A046899 (A014132 (n + 1) - 1).toNat

end

end A038675.P6789796235525994653

/-! ## A038675.P4822257156383371297

`A074909(A245300(n))*A173018(A007401(n+1))`
-/

namespace A038675.P4822257156383371297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074909 (A245300 n).toNat * A173018 (A007401 (n + 1)).toNat

end

end A038675.P4822257156383371297

/-!
# A038676: Fourth powers ending in a (different) positive fourth power.

The programs for A038676, there is no canonical definition to state claims against.
-/

/-! ## A038676.P11297743557628480150

`lt[A178203(n+1), A278981(3*n+4)]²²`
-/

namespace A038676.P11297743557628480150
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178203 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278981 (3 * n + 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j < f2 j) n ^ 2) ^ 2

end

end A038676.P11297743557628480150

/-! ## A038676.P17769337821874074021

`A108852(A019278(3*n+1))²²`
-/

namespace A038676.P17769337821874074021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A108852 (A019278 (3 * n + 1)).toNat ^ 2) ^ 2

end

end A038676.P17769337821874074021

/-! ## A038676.P6716602560268721915

`lt[A212196(n), A238813(n+1)]^4`
-/

namespace A038676.P6716602560268721915
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212196 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238813 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n ^ 4

end

end A038676.P6716602560268721915

/-! ## A038676.P3231745889135263028

`A000583(lt[A107803(3*n+1), ∏{d}[n+1, #]])`
-/

namespace A038676.P3231745889135263028
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107803 (3 * n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f3 n), d

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000583 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A038676.P3231745889135263028

/-! ## A038676.P13917972805160012164

`(eq[A080304(A001405(n)), A208645(n)]+1)²²`
-/

namespace A038676.P13917972805160012164
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080304 (A001405 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208645 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1) ^ 2) ^ 2

end

end A038676.P13917972805160012164

/-!
# A038677: Cubes ending in a (different) positive cube.

The programs for A038677, there is no canonical definition to state claims against.
-/

/-! ## A038677.P2675738577896829445

`filter[A145517(n+2), A358847(#)]`
-/

namespace A038677.P2675738577896829445
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145517 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A358847 (f1 j).toNat = 1) n)

end

end A038677.P2675738577896829445

/-! ## A038677.P15035090576865089051

`record[A066686(A097283(n+1))^3]`
-/

namespace A038677.P15035090576865089051
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066686 (A097283 (n + 1)).toNat ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A038677.P15035090576865089051

/-! ## A038677.P17145691901994350354

`record[A066686(A329949(n+1))^3]`
-/

namespace A038677.P17145691901994350354
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066686 (A329949 (n + 1)).toNat ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A038677.P17145691901994350354

/-!
# A038678: Squares ending in a different nonzero square.

The programs for A038678, there is no canonical definition to state claims against.
-/

/-! ## A038678.P1931216717345240959

`∩[A065807(n+1), A229301(n+1)]`
-/

namespace A038678.P1931216717345240959
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065807 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229301 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038678.P1931216717345240959

/-! ## A038678.P10827101518931114063

`A134406(n+3)-A097031(A000079(n))`
-/

namespace A038678.P10827101518931114063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134406 (n + 3) - A097031 (A000079 n).toNat

end

end A038678.P10827101518931114063

/-! ## A038678.P16584844796898383830

`A153881(A251326(n+1))+A134406(n+3)`
-/

namespace A038678.P16584844796898383830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153881 (A251326 (n + 1)).toNat + A134406 (n + 3)

end

end A038678.P16584844796898383830

/-! ## A038678.P6561572299201013540

`A153881(A335477(3*n+4))+A134406(n+3)`
-/

namespace A038678.P6561572299201013540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153881 (A335477 (3 * n + 4)).toNat + A134406 (n + 3)

end

end A038678.P6561572299201013540

/-! ## A038678.P8684070996529930114

`A134406(n+3)-A164554(3*n+2)%2`
-/

namespace A038678.P8684070996529930114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134406 (n + 3) - Int.tmod (A164554 (3 * n + 2)) 2

end

end A038678.P8684070996529930114

/-!
# A038679: Convolution of A007054 (Super ballot numbers) with A000302 (powers of 4).

The programs for A038679, the canonical program `A038679.P4499129740727118566` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A038679 has offset 0).

The definition of A038679 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 166 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A038679.P4499129740727118566

`4^(n+1)-A000108(n+1)`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A038679

/-- `4^(n+1)-A000108(n+1)` -/
def P4499129740727118566.Spec : Prop :=
  ∀ n, P4499129740727118566.a n = A038679 n

theorem P4499129740727118566.correct : P4499129740727118566.Spec := by
  intro n
  simp only [A038679]

end A038679

/-! ## A038679.P8084368274400005120

`A342906(n+1)+A164346(n)`
-/

namespace A038679.P8084368274400005120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342906 (n + 1) + A164346 n

end

end A038679.P8084368274400005120

namespace A038679

/-- `A342906(n+1)+A164346(n)` -/
def P8084368274400005120.Spec : Prop :=
  ∀ n, P8084368274400005120.a n = A038679 n

end A038679

/-! ## A038679.P5746342114422663839

`Δ[A126646(n)]²-Δ[A014138(n)]`
-/

namespace A038679.P5746342114422663839
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126646 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014138 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 2 - (f2 (n + 1) - f2 n)

end

end A038679.P5746342114422663839

namespace A038679

/-- `Δ[A126646(n)]²-Δ[A014138(n)]` -/
def P5746342114422663839.Spec : Prop :=
  ∀ n, P5746342114422663839.a n = A038679 n

end A038679

/-! ## A038679.P15926912794959966767

`A068551(n+1)+A001791(n+1)`
-/

namespace A038679.P15926912794959966767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068551 (n + 1) + A001791 (n + 1)

end

end A038679.P15926912794959966767

namespace A038679

/-- `A068551(n+1)+A001791(n+1)` -/
def P15926912794959966767.Spec : Prop :=
  ∀ n, P15926912794959966767.a n = A038679 n

end A038679

/-! ## A038679.P5972049867225502138

`A162551(n+1)+A008549(n+1)`
-/

namespace A038679.P5972049867225502138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162551 (n + 1) + A008549 (n + 1)

end

end A038679.P5972049867225502138

namespace A038679

/-- `A162551(n+1)+A008549(n+1)` -/
def P5972049867225502138.Spec : Prop :=
  ∀ n, P5972049867225502138.a n = A038679 n

end A038679

/-! ## A038679.P16673696387013666181

`A213119(n+1)+A024482(n+2)`
-/

namespace A038679.P16673696387013666181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213119 (n + 1) + A024482 (n + 2)

end

end A038679.P16673696387013666181

namespace A038679

/-- `A213119(n+1)+A024482(n+2)` -/
def P16673696387013666181.Spec : Prop :=
  ∀ n, P16673696387013666181.a n = A038679 n

end A038679

/-! ## A038679.P332040717132337845

`A001791(n+1)+2*A000346(n)`
-/

namespace A038679.P332040717132337845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001791 (n + 1) + 2 * A000346 n

end

end A038679.P332040717132337845

namespace A038679

/-- `A001791(n+1)+2*A000346(n)` -/
def P332040717132337845.Spec : Prop :=
  ∀ n, P332040717132337845.a n = A038679 n

end A038679

/-! ## A038679.P17328444799565872792

`A131577(n+2)²-record[A126120(n)]`
-/

namespace A038679.P17328444799565872792
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126120 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131577 (n + 2) ^ 2 - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A038679.P17328444799565872792

namespace A038679

/-- `A131577(n+2)²-record[A126120(n)]` -/
def P17328444799565872792.Spec : Prop :=
  ∀ n, P17328444799565872792.a n = A038679 n

end A038679

/-! ## A038679.P608701556977773861

`A000079(n+1)²-A099364(2*n)`
-/

namespace A038679.P608701556977773861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (n + 1) ^ 2 - A099364 (2 * n)

end

end A038679.P608701556977773861

namespace A038679

/-- `A000079(n+1)²-A099364(2*n)` -/
def P608701556977773861.Spec : Prop :=
  ∀ n, P608701556977773861.a n = A038679 n

end A038679

/-! ## A038679.P15346662404632005289

`A131577(2*n+3)-record[A126120(n)]`
-/

namespace A038679.P15346662404632005289
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126120 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131577 (2 * n + 3) - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A038679.P15346662404632005289

namespace A038679

/-- `A131577(2*n+3)-record[A126120(n)]` -/
def P15346662404632005289.Spec : Prop :=
  ∀ n, P15346662404632005289.a n = A038679 n

end A038679

/-! ## A038679.P17462375961696552375

`A103454(n+1)+1-A000108(n+1)`
-/

namespace A038679.P17462375961696552375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103454 (n + 1) + (1 - A000108 (n + 1))

end

end A038679.P17462375961696552375

namespace A038679

/-- `A103454(n+1)+1-A000108(n+1)` -/
def P17462375961696552375.Spec : Prop :=
  ∀ n, P17462375961696552375.a n = A038679 n

end A038679

/-! ## A038679.P4359966632360403635

`A008549(n+1)+2*A001791(n+1)`
-/

namespace A038679.P4359966632360403635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008549 (n + 1) + 2 * A001791 (n + 1)

end

end A038679.P4359966632360403635

namespace A038679

/-- `A008549(n+1)+2*A001791(n+1)` -/
def P4359966632360403635.Spec : Prop :=
  ∀ n, P4359966632360403635.a n = A038679 n

end A038679

/-! ## A038679.P12338243555935943608

`A026023(2*n+1)+A008549(n+1)`
-/

namespace A038679.P12338243555935943608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026023 (2 * n + 1) + A008549 (n + 1)

end

end A038679.P12338243555935943608

namespace A038679

/-- `A026023(2*n+1)+A008549(n+1)` -/
def P12338243555935943608.Spec : Prop :=
  ∀ n, P12338243555935943608.a n = A038679 n

end A038679

/-! ## A038679.P8183239696099047424

`A180967(2*(n+1))+A001700(n+1)`
-/

namespace A038679.P8183239696099047424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180967 (2 * (n + 1)) + A001700 (n + 1)

end

end A038679.P8183239696099047424

namespace A038679

/-- `A180967(2*(n+1))+A001700(n+1)` -/
def P8183239696099047424.Spec : Prop :=
  ∀ n, P8183239696099047424.a n = A038679 n

end A038679

/-! ## A038679.P3476994765581024941

`A202736(2*(n+1))+A001791(n+1)`
-/

namespace A038679.P3476994765581024941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202736 (2 * (n + 1)) + A001791 (n + 1)

end

end A038679.P3476994765581024941

namespace A038679

/-- `A202736(2*(n+1))+A001791(n+1)` -/
def P3476994765581024941.Spec : Prop :=
  ∀ n, P3476994765581024941.a n = A038679 n

end A038679

/-! ## A038679.P10453114920599920800

`A000079(n+1)²-abs(A168491(n+1))`
-/

namespace A038679.P10453114920599920800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (n + 1) ^ 2 - |A168491 (n + 1)|

end

end A038679.P10453114920599920800

namespace A038679

/-- `A000079(n+1)²-abs(A168491(n+1))` -/
def P10453114920599920800.Spec : Prop :=
  ∀ n, P10453114920599920800.a n = A038679 n

end A038679

/-! ## A038679.P1900785119609955850

`A000079(n+1)²-A057977(2*(n+1))`
-/

namespace A038679.P1900785119609955850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (n + 1) ^ 2 - A057977 (2 * (n + 1))

end

end A038679.P1900785119609955850

namespace A038679

/-- `A000079(n+1)²-A057977(2*(n+1))` -/
def P1900785119609955850.Spec : Prop :=
  ∀ n, P1900785119609955850.a n = A038679 n

end A038679

/-! ## A038679.P11641000506945190727

`A000079(n+1)²-A208355(2*(n+1))`
-/

namespace A038679.P11641000506945190727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (n + 1) ^ 2 - A208355 (2 * (n + 1))

end

end A038679.P11641000506945190727

namespace A038679

/-- `A000079(n+1)²-A208355(2*(n+1))` -/
def P11641000506945190727.Spec : Prop :=
  ∀ n, P11641000506945190727.a n = A038679 n

end A038679

/-! ## A038679.P12444545069694164881

`A000079(n+1)²-A089408(2*n+3)`
-/

namespace A038679.P12444545069694164881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (n + 1) ^ 2 - A089408 (2 * n + 3)

end

end A038679.P12444545069694164881

namespace A038679

/-- `A000079(n+1)²-A089408(2*n+3)` -/
def P12444545069694164881.Spec : Prop :=
  ∀ n, P12444545069694164881.a n = A038679 n

end A038679

/-! ## A038679.P10553197123851834349

`A000079(n+1)²-A097331(2*n+3)`
-/

namespace A038679.P10553197123851834349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (n + 1) ^ 2 - A097331 (2 * n + 3)

end

end A038679.P10553197123851834349

namespace A038679

/-- `A000079(n+1)²-A097331(2*n+3)` -/
def P10553197123851834349.Spec : Prop :=
  ∀ n, P10553197123851834349.a n = A038679 n

end A038679

/-!
# A038680: Primes ending in a (different) prime.

The programs for A038680, there is no canonical definition to state claims against.
-/

/-! ## A038680.P2015172035380449379

`p?[A112055(n+2)+5]`
-/

namespace A038680.P2015172035380449379
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112055 (n + 2) + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A038680.P2015172035380449379

/-!
# A038681: Fifth powers ending nontrivially in a nonzero fifth power.

The programs for A038681, there is no canonical definition to state claims against.
-/

/-! ## A038681.P14851404674444236512

`record[A275536(A018900(n+1))^5]`
-/

namespace A038681.P14851404674444236512
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275536 (A018900 (n + 1)).toNat ^ 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A038681.P14851404674444236512

/-! ## A038681.P16058451737628828974

`eq[A158971(n+3), A158972(n+4)]^5`
-/

namespace A038681.P16058451737628828974
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158971 (n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158972 (n + 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n ^ 5

end

end A038681.P16058451737628828974

/-!
# A038682: Sixth powers ending nontrivially in a nonzero sixth power.

The programs for A038682, there is no canonical definition to state claims against.
-/

/-! ## A038682.P15863469125849109072

`A090771(n+2)^A329319(A326323(n))`
-/

namespace A038682.P15863469125849109072
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A090771 (n + 2) : ℚ) ^ (A329319 (A326323 n).toNat : ℤ)

end

end A038682.P15863469125849109072

/-! ## A038682.P12825207605413883580

`A090771(n+2)^A329319(A326297(n+1))`
-/

namespace A038682.P12825207605413883580
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A090771 (n + 2) : ℚ) ^ (A329319 (A326297 (n + 1)).toNat : ℤ)

end

end A038682.P12825207605413883580

/-!
# A038683: Seventh powers ending nontrivially in a nonzero seventh power.

The programs for A038683, there is no canonical definition to state claims against.
-/

/-! ## A038683.P1994440012617291678

`A017287(∑[A061603(n)])`
-/

namespace A038683.P1994440012617291678
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061603 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017287 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A038683.P1994440012617291678

/-! ## A038683.P14050075699623442469

`A256244(A017378(n))^7`
-/

namespace A038683.P14050075699623442469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256244 (A017378 n).toNat ^ 7

end

end A038683.P14050075699623442469

/-! ## A038683.P4325140188402743348

`A017287(A061603(n)+n)`
-/

namespace A038683.P4325140188402743348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017287 (A061603 n + (n : ℤ)).toNat

end

end A038683.P4325140188402743348

/-! ## A038683.P2899111511648043952

`A017287(∑[A136400(n)!])`
-/

namespace A038683.P2899111511648043952
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A136400 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017287 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A038683.P2899111511648043952

/-! ## A038683.P3457103626043657645

`A017281(∑[A061603(n)])^7`
-/

namespace A038683.P3457103626043657645
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061603 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017281 (∑ j ∈ Finset.range (n + 1), f1 j).toNat ^ 7

end

end A038683.P3457103626043657645

/-!
# A038684: Eighth powers ending nontrivially in a nonzero eighth power.

The programs for A038684, there is no canonical definition to state claims against.
-/

/-! ## A038684.P9572761937961148382

`A045572(n+2)^8^A344970(n+1)`
-/

namespace A038684.P9572761937961148382
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A045572 (n + 2) : ℝ) ^ ((8 : ℚ) ^ (A344970 (n + 1) : ℤ) : ℝ)

end

end A038684.P9572761937961148382

/-! ## A038684.P4148652655394666959

`A016760(∑[((A104702(3*n+2)+n+1)%3)!])`
-/

namespace A038684.P4148652655394666959
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (Int.tmod (A104702 (3 * n + 2) + (n + 1 : ℤ)) 3).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016760 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A038684.P4148652655394666959

/-! ## A038684.P16195439457267099922

`A045572(n+2)^A231553(A175740(n))`
-/

namespace A038684.P16195439457267099922
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A045572 (n + 2) : ℚ) ^ (A231553 (A175740 n).toNat : ℤ)

end

end A038684.P16195439457267099922

/-! ## A038684.P13705051974995479003

`A045572(n+2)^A094059(A272917(n+3))`
-/

namespace A038684.P13705051974995479003
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A045572 (n + 2) : ℚ) ^ (A094059 (A272917 (n + 3)).toNat : ℤ)

end

end A038684.P13705051974995479003

/-! ## A038684.P14824882650638180295

`A039141(2*n+4)^A067637(A007033(n+1))`
-/

namespace A038684.P14824882650638180295
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A039141 (2 * n + 4) : ℚ) ^ (A067637 (A007033 (n + 1)).toNat : ℤ)

end

end A038684.P14824882650638180295

/-!
# A038685: Ninth powers ending nontrivially in a nonzero ninth power.

The programs for A038685, there is no canonical definition to state claims against.
-/

/-! ## A038685.P1225935089637415384

`A017289(or(n+1, A034618(n)))`
-/

namespace A038685.P1225935089637415384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017289 (Int.lor (n + 1 : ℤ) (A034618 n)).toNat

end

end A038685.P1225935089637415384

/-! ## A038685.P13269861945892340800

`A248025(3*n+3)^A077846(A211455(n+1))`
-/

namespace A038685.P13269861945892340800
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A248025 (3 * n + 3) : ℚ) ^ (A077846 (A211455 (n + 1)).toNat : ℤ)

end

end A038685.P13269861945892340800

/-!
# A038686: Tenth powers ending nontrivially in a nonzero tenth power.

The programs for A038686, there is no canonical definition to state claims against.
-/

/-! ## A038686.P17022119074820890104

`record[Δ[A073731(n)]^10]`
-/

namespace A038686.P17022119074820890104
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073731 (n + 10)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n) ^ 10

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A038686.P17022119074820890104

/-! ## A038686.P14423101890362101487

`record[A090298(n+2)^10]`
-/

namespace A038686.P14423101890362101487
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090298 (n + 2) ^ 10

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A038686.P14423101890362101487

/-! ## A038686.P1784716691506299237

`A090771(n+2)^A036786(A069226(3*n+2))`
-/

namespace A038686.P1784716691506299237
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A090771 (n + 2) : ℚ) ^ (A036786 (A069226 (3 * n + 2)).toNat : ℤ)

end

end A038686.P1784716691506299237

/-! ## A038686.P15873614425762004404

`eq[1, A165111(n)]^10`
-/

namespace A038686.P15873614425762004404
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165111 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n ^ 10

end

end A038686.P15873614425762004404

/-! ## A038686.P16997912481528520927

`eq[8, A165110(n)]^10`
-/

namespace A038686.P16997912481528520927
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165110 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n ^ 10

end

end A038686.P16997912481528520927

/-!
# A038687: Concatenate i >= 1 and j >= 1, then sort.

The programs for A038687, the canonical program `A038687.P8337297974023983294` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A038687 has offset 1).

The definition of A038687 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A038687.P8337297974023983294

`comp[a(n-1)+a(n-dr(n))]` with `a(0)=1, a(1)=-2, a(2)=-5, a(3)=9, a(4)=1, a(5)=0, a(6)=1, a(7)=1, a(8)=0`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A038687

/-- `comp[a(n-1)+a(n-dr(n))]` -/
def P8337297974023983294.Spec : Prop :=
  ∀ n, (P8337297974023983294.a n : ℤ) = A038687 (n + 1)

theorem P8337297974023983294.correct : P8337297974023983294.Spec := by
  intro n
  simp only [A038687, Nat.add_sub_cancel]

end A038687

/-! ## A038687.P12413700158824804698

`lt[0, A088117(n)]`
-/

namespace A038687.P12413700158824804698
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088117 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A038687.P12413700158824804698

namespace A038687

/-- `lt[0, A088117(n)]` -/
def P12413700158824804698.Spec : Prop :=
  ∀ n, (P12413700158824804698.a n : ℤ) = A038687 (n + 1)

end A038687

/-! ## A038687.P11596930920952087002

`lt[9, A004086(n)]`
-/

namespace A038687.P11596930920952087002
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A038687.P11596930920952087002

namespace A038687

/-- `lt[9, A004086(n)]` -/
def P11596930920952087002.Spec : Prop :=
  ∀ n, (P11596930920952087002.a n : ℤ) = A038687 (n + 1)

end A038687

/-! ## A038687.P11643609472486823777

`comp[A051885(n)]+1`
-/

namespace A038687.P11643609472486823777
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051885 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A038687.P11643609472486823777

namespace A038687

/-- `comp[A051885(n)]+1` -/
def P11643609472486823777.Spec : Prop :=
  ∀ n, (P11643609472486823777.a n : ℤ) = A038687 (n + 1)

end A038687

/-! ## A038687.P16259112255692259470

`lt[1, ∑{digits}[n, tanh(#)]]`
-/

namespace A038687.P16259112255692259470
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f3 n)).map fun (x : ℕ) => Real.tanh (x : ℝ)).sum

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A038687.P16259112255692259470

namespace A038687

/-- `lt[1, ∑{digits}[n, tanh(#)]]` -/
def P16259112255692259470.Spec : Prop :=
  ∀ n, (P16259112255692259470.a n : ℤ) = A038687 (n + 1)

end A038687

/-! ## A038687.P3583555224166569721

`lt[∏{digits}[n-1, #+1], n]`
-/

namespace A038687.P3583555224166569721
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f2 n).natAbs).map fun (x : ℕ) => x + 1).prod

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f3 j) n

end

end A038687.P3583555224166569721

namespace A038687

/-- `lt[∏{digits}[n-1, #+1], n]` -/
def P3583555224166569721.Spec : Prop :=
  ∀ n, (P3583555224166569721.a n : ℤ) = A038687 (n + 1)

end A038687

/-! ## A038687.P6928229584695551076

`lt[0, A035930(n)]`
-/

namespace A038687.P6928229584695551076
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035930 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A038687.P6928229584695551076

namespace A038687

/-- `lt[0, A035930(n)]` -/
def P6928229584695551076.Spec : Prop :=
  ∀ n, (P6928229584695551076.a n : ℤ) = A038687 (n + 1)

end A038687

/-! ## A038687.P12607825453321882984

`lt[0, A069816(n)]`
-/

namespace A038687.P12607825453321882984
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069816 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A038687.P12607825453321882984

namespace A038687

/-- `lt[0, A069816(n)]` -/
def P12607825453321882984.Spec : Prop :=
  ∀ n, (P12607825453321882984.a n : ℤ) = A038687 (n + 1)

end A038687

/-! ## A038687.P10605644601801140300

`lt[9, A004185(n)]`
-/

namespace A038687.P10605644601801140300
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004185 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A038687.P10605644601801140300

namespace A038687

/-- `lt[9, A004185(n)]` -/
def P10605644601801140300.Spec : Prop :=
  ∀ n, (P10605644601801140300.a n : ℤ) = A038687 (n + 1)

end A038687

/-! ## A038687.P6475722965022913010

`lt[98, A028907(n)]`
-/

namespace A038687.P6475722965022913010
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  98

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028907 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A038687.P6475722965022913010

namespace A038687

/-- `lt[98, A028907(n)]` -/
def P6475722965022913010.Spec : Prop :=
  ∀ n, (P6475722965022913010.a n : ℤ) = A038687 (n + 1)

end A038687

/-! ## A038687.P304072783603658276

`lt[A355675(n), n]`
-/

namespace A038687.P304072783603658276
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355675 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A038687.P304072783603658276

namespace A038687

/-- `lt[A355675(n), n]` -/
def P304072783603658276.Spec : Prop :=
  ∀ n, (P304072783603658276.a n : ℤ) = A038687 (n + 1)

end A038687

/-! ## A038687.P6636809291424152931

`comp[n-A217657(n)]`
-/

namespace A038687.P6636809291424152931
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A217657 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A038687.P6636809291424152931

namespace A038687

/-- `comp[n-A217657(n)]` -/
def P6636809291424152931.Spec : Prop :=
  ∀ n, (P6636809291424152931.a n : ℤ) = A038687 (n + 1)

end A038687

/-! ## A038687.P7521574426309662643

`eq[0, A069877(n)%3]`
-/

namespace A038687.P7521574426309662643
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A069877 n) 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A038687.P7521574426309662643

namespace A038687

/-- `eq[0, A069877(n)%3]` -/
def P7521574426309662643.Spec : Prop :=
  ∀ n, (P7521574426309662643.a n : ℤ) = A038687 (n + 1)

end A038687

/-! ## A038687.P11845950485287438364

`lt[A054055(n), ∑{digits}[n, #]]`
-/

namespace A038687.P11845950485287438364
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054055 n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f3 n)).map fun (x : ℕ) => x).sum

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A038687.P11845950485287438364

namespace A038687

/-- `lt[A054055(n), ∑{digits}[n, #]]` -/
def P11845950485287438364.Spec : Prop :=
  ∀ n, (P11845950485287438364.a n : ℤ) = A038687 (n + 1)

end A038687

/-! ## A038687.P12723364463533633886

`lt[A054055(n), A007953(n)]`
-/

namespace A038687.P12723364463533633886
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054055 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A038687.P12723364463533633886

namespace A038687

/-- `lt[A054055(n), A007953(n)]` -/
def P12723364463533633886.Spec : Prop :=
  ∀ n, (P12723364463533633886.a n : ℤ) = A038687 (n + 1)

end A038687

/-! ## A038687.P13454299839662404694

`lt[A274206(A028310(n)), n]`
-/

namespace A038687.P13454299839662404694
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274206 (A028310 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A038687.P13454299839662404694

namespace A038687

/-- `lt[A274206(A028310(n)), n]` -/
def P13454299839662404694.Spec : Prop :=
  ∀ n, (P13454299839662404694.a n : ℤ) = A038687 (n + 1)

end A038687

/-! ## A038687.P5069308279565080204

`eq[A000030(abs(1-n)), A000030(n)]`
-/

namespace A038687.P5069308279565080204
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000030 |1 - (n : ℤ)|.toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000030 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A038687.P5069308279565080204

namespace A038687

/-- `eq[A000030(abs(1-n)), A000030(n)]` -/
def P5069308279565080204.Spec : Prop :=
  ∀ n, (P5069308279565080204.a n : ℤ) = A038687 (n + 1)

end A038687

/-! ## A038687.P14226862910679761482

`lt[lt[1, A265525(n)], A038724(n)]`
-/

namespace A038687.P14226862910679761482
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265525 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038724 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f4 j) n

end

end A038687.P14226862910679761482

namespace A038687

/-- `lt[lt[1, A265525(n)], A038724(n)]` -/
def P14226862910679761482.Spec : Prop :=
  ∀ n, (P14226862910679761482.a n : ℤ) = A038687 (n + 1)

end A038687

/-! ## A038687.P17347665571009428603

`comp[C(A274206(n+1), n)]`
-/

namespace A038687.P17347665571009428603
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A274206 (n + 1)).toNat n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A038687.P17347665571009428603

namespace A038687

/-- `comp[C(A274206(n+1), n)]` -/
def P17347665571009428603.Spec : Prop :=
  ∀ n, (P17347665571009428603.a n : ℤ) = A038687 (n + 1)

end A038687

/-!
# A038688: Squares that are the sum of the divisors of some number.

The programs for A038688, there is no canonical definition to state claims against.
-/

/-! ## A038688.P8451989117732578291

`A228061(n+1)²`
-/

namespace A038688.P8451989117732578291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228061 (n + 1) ^ 2

end

end A038688.P8451989117732578291

/-! ## A038688.P6253351357301675998

`A228061(xor(1, xor(1, n+1)))^2`
-/

namespace A038688.P6253351357301675998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228061 (Nat.xor 1 (Nat.xor 1 (n + 1))) ^ 2

end

end A038688.P6253351357301675998

/-! ## A038688.P4265261564415528728

`A228061(n+1)^gcd(2, A228071(n))`
-/

namespace A038688.P4265261564415528728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228061 (n + 1) ^ Int.gcd 2 (A228071 n)

end

end A038688.P4265261564415528728

/-! ## A038688.P203961094735294436

`A228061(A000027(n+1))*A228061(n+1)`
-/

namespace A038688.P203961094735294436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228061 (A000027 (n + 1)).toNat * A228061 (n + 1)

end

end A038688.P203961094735294436

/-! ## A038688.P17876984885979583980

`A228061(n+1)*A228061(A005408(n)-n)`
-/

namespace A038688.P17876984885979583980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228061 (n + 1) * A228061 (A005408 n - (n : ℤ)).toNat

end

end A038688.P17876984885979583980

/-! ## A038688.P14003784683772303134

`A228061(A005843(n+1)-(n+1))*A228061(n+1)`
-/

namespace A038688.P14003784683772303134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228061 (A005843 (n + 1) - (n + 1 : ℤ)).toNat * A228061 (n + 1)

end

end A038688.P14003784683772303134

/-! ## A038688.P1974857796345010124

`A228061(n+1)^A259111(A005408(n))`
-/

namespace A038688.P1974857796345010124
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A228061 (n + 1) : ℚ) ^ (A259111 (A005408 n).toNat : ℤ)

end

end A038688.P1974857796345010124

/-! ## A038688.P6814976676058217331

`A228061(n+1)^A259111(A001748(n+1))`
-/

namespace A038688.P6814976676058217331
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A228061 (n + 1) : ℚ) ^ (A259111 (A001748 (n + 1)).toNat : ℤ)

end

end A038688.P6814976676058217331

/-! ## A038688.P10478258443030988911

`A228061(n+1)^A259111(A259145(n+1))`
-/

namespace A038688.P10478258443030988911
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A228061 (n + 1) : ℚ) ^ (A259111 (A259145 (n + 1)).toNat : ℤ)

end

end A038688.P10478258443030988911

/-! ## A038688.P6898806643272227081

`filter[(n+1)², A175192(#)]`
-/

namespace A038688.P6898806643272227081
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A175192 (f1 j) = 1) n)

end

end A038688.P6898806643272227081

/-!
# A038690: a(n)^2 is smallest square containing the string 'n'.

The programs for A038690, there is no canonical definition to state claims against.
-/

/-! ## A038690.P17268866593440335086

`sqrt(A086935(n))`
-/

namespace A038690.P17268866593440335086
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A086935 n : ℝ)

end

end A038690.P17268866593440335086

/-! ## A038690.P15749584685343658925

`A056926(and(-1, A086935(n)))`
-/

namespace A038690.P15749584685343658925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056926 (Int.land (-1) (A086935 n)).toNat

end

end A038690.P15749584685343658925

/-! ## A038690.P4197821733329652482

`A262689(and(-1, A086935(n)))`
-/

namespace A038690.P4197821733329652482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262689 (Int.land (-1) (A086935 n)).toNat

end

end A038690.P4197821733329652482

/-! ## A038690.P17653286811269890439

`A262689(A086935(n)+char[1])`
-/

namespace A038690.P17653286811269890439
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262689 (A086935 n + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)).toNat

end

end A038690.P17653286811269890439

/-! ## A038690.P11627009142366851846

`A262689(xor(char[3], A086935(n)))`
-/

namespace A038690.P11627009142366851846
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262689 (Int.xor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A086935 n)).toNat

end

end A038690.P11627009142366851846

/-! ## A038690.P2681088264810035002

`A262689(xor(1, A086935(n)+1))`
-/

namespace A038690.P2681088264810035002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262689 (Int.xor 1 (A086935 n + 1)).toNat

end

end A038690.P2681088264810035002

/-! ## A038690.P112270461279347162

`A262689(xor(2, A086935(n))-2)`
-/

namespace A038690.P112270461279347162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262689 (Int.xor 2 (A086935 n) - 2).toNat

end

end A038690.P112270461279347162

/-! ## A038690.P6798796823989142151

`A018851(and(-1, A086935(n)))`
-/

namespace A038690.P6798796823989142151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018851 (Int.land (-1) (A086935 n)).toNat

end

end A038690.P6798796823989142151

/-! ## A038690.P16618077654832145020

`A018851(or(char[1], A086935(n)))`
-/

namespace A038690.P16618077654832145020
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018851 (Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A086935 n)).toNat

end

end A038690.P16618077654832145020

/-! ## A038690.P577285342090281114

`∑{d}[A018851(A086935(n)), A000010(#)]`
-/

namespace A038690.P577285342090281114
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018851 (A086935 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A038690.P577285342090281114

/-!
# A038691: Indices of primes at which the prime race 4k-1 vs. 4k+1 is tied.

The programs for A038691, there is no canonical definition to state claims against.
-/

/-! ## A038691.P14605053592209799376

`2*A092198(n+1)+1`
-/

namespace A038691.P14605053592209799376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A092198 (n + 1) + 1

end

end A038691.P14605053592209799376

/-! ## A038691.P7525918951629670598

`A092198(n+1)+A092198(n+1)+A007318(∑[n])`
-/

namespace A038691.P7525918951629670598
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092198 (n + 1) + (A092198 (n + 1) + A007318 (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A038691.P7525918951629670598

/-! ## A038691.P1129830169250090199

`A007318(C(n, n²))+A092198(n+1)+A092198(n+1)`
-/

namespace A038691.P1129830169250090199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose n (n ^ 2)) + (A092198 (n + 1) + A092198 (n + 1))

end

end A038691.P1129830169250090199

/-! ## A038691.P1230918177745757274

`A092198(n+1)+A092198(n+1)+A000203(((-1)^n)²)`
-/

namespace A038691.P1230918177745757274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092198 (n + 1) + (A092198 (n + 1) + A000203 (((-1) ^ n) ^ 2).toNat)

end

end A038691.P1230918177745757274

/-!
# A038692: Square numbers that are concatenations of two or more prime numbers.

The programs for A038692, there is no canonical definition to state claims against.
-/

/-! ## A038692.P13070915325486110453

`A166503(n+1)²`
-/

namespace A038692.P13070915325486110453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166503 (n + 1) ^ 2

end

end A038692.P13070915325486110453

/-! ## A038692.P1061081310071082294

`A166503(A000027(n+1))*A166503(n+1)`
-/

namespace A038692.P1061081310071082294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166503 (A000027 (n + 1)).toNat * A166503 (n + 1)

end

end A038692.P1061081310071082294

/-! ## A038692.P1698871681773809283

`or(A079261(n+1), A166503(n+1))*A166503(n+1)`
-/

namespace A038692.P1698871681773809283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A079261 (n + 1)) (A166503 (n + 1)) * A166503 (n + 1)

end

end A038692.P1698871681773809283

/-! ## A038692.P5825898220230909473

`A166503(n+1)^A000005(A019549(n+1))`
-/

namespace A038692.P5825898220230909473
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A166503 (n + 1) : ℚ) ^ (A000005 (A019549 (n + 1)).toNat : ℤ)

end

end A038692.P5825898220230909473

/-! ## A038692.P5442699521082941395

`A016754((A166503(n+1)-1)/2)`
-/

namespace A038692.P5442699521082941395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016754 (SequenceMachineLib.roundAway ((A166503 (n + 1) - 1 : ℚ) / 2)).toNat

end

end A038692.P5442699521082941395

/-! ## A038692.P13366842452043939223

`A166503(n+1)^A000005(A105184(n+1))`
-/

namespace A038692.P13366842452043939223
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A166503 (n + 1) : ℚ) ^ (A000005 (A105184 (n + 1)).toNat : ℤ)

end

end A038692.P13366842452043939223

/-! ## A038692.P9561732993808886485

`A166503(n+1)^A000005(A129800(n+1))`
-/

namespace A038692.P9561732993808886485
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A166503 (n + 1) : ℚ) ^ (A000005 (A129800 (n + 1)).toNat : ℤ)

end

end A038692.P9561732993808886485

/-! ## A038692.P11354117491577993904

`A166503(n+1)^(A008683(A000057(n+1))+3)`
-/

namespace A038692.P11354117491577993904
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A166503 (n + 1) : ℚ) ^ (A008683 (A000057 (n + 1)).toNat + 3 : ℤ)

end

end A038692.P11354117491577993904

/-! ## A038692.P11362422246190534040

`A000290(or(1, A166503(n+1)))`
-/

namespace A038692.P11362422246190534040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (Int.lor 1 (A166503 (n + 1))).toNat

end

end A038692.P11362422246190534040

/-! ## A038692.P16833617334182911069

`A137932(A166503(n+1)+1)+1`
-/

namespace A038692.P16833617334182911069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137932 (A166503 (n + 1) + 1).toNat + 1

end

end A038692.P16833617334182911069

/-! ## A038692.P12712042426841625393

`A000290(A166503(2*(n+1)-(n+1)))`
-/

namespace A038692.P12712042426841625393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (A166503 (2 * (n + 1) - (n + 1))).toNat

end

end A038692.P12712042426841625393

/-! ## A038692.P17431765113426259759

`A000290(A166503(n+1)+and(2, A000290(n)))`
-/

namespace A038692.P17431765113426259759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (A166503 (n + 1) + Int.land 2 (A000290 n)).toNat

end

end A038692.P17431765113426259759

/-!
# A038694: Smallest odd number with n prime factors all of different number of decimal digits.

The programs for A038694, there is no canonical definition to state claims against.
-/

/-! ## A038694.P5045009159823808509

`∏[or(1, A003617(n+1))]`
-/

namespace A038694.P5045009159823808509
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A003617 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A038694.P5045009159823808509

/-! ## A038694.P6881942765692932011

`∏[or(1, A101592(Δ[n²]))]`
-/

namespace A038694.P6881942765692932011
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A101592 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A038694.P6881942765692932011

/-! ## A038694.P3800780884949964207

`∏[or(1, A139052(Δ[n²]))]`
-/

namespace A038694.P3800780884949964207
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A139052 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A038694.P3800780884949964207

/-! ## A038694.P4966142376642422980

`∏[or(1, A139053(3*n+1))]`
-/

namespace A038694.P4966142376642422980
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A139053 (3 * n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A038694.P4966142376642422980

/-! ## A038694.P3029858849519681799

`∏[or(1, A033873(n)+10^n)]`
-/

namespace A038694.P3029858849519681799
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A033873 n + (10 ^ n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A038694.P3029858849519681799

/-!
# A038695: Smallest n-digit prime * smallest (n+1)-digit prime.

The programs for A038695, there is no canonical definition to state claims against.
-/

/-! ## A038695.P4493539550710807951

`A003617(n+1)*A003617(n+2)`
-/

namespace A038695.P4493539550710807951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003617 (n + 1) * A003617 (n + 2)

end

end A038695.P4493539550710807951

/-! ## A038695.P814702025044959337

`A069588(n+2)*A101592(2*n+1)`
-/

namespace A038695.P814702025044959337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069588 (n + 2) * A101592 (2 * n + 1)

end

end A038695.P814702025044959337

/-! ## A038695.P7149659582573308974

`A069588(n+2)*A139052(2*n+1)`
-/

namespace A038695.P7149659582573308974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069588 (n + 2) * A139052 (2 * n + 1)

end

end A038695.P7149659582573308974

/-! ## A038695.P16728442028201389614

`A101592(2*n+1)*A101592(2*n+3)`
-/

namespace A038695.P16728442028201389614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101592 (2 * n + 1) * A101592 (2 * n + 3)

end

end A038695.P16728442028201389614

/-! ## A038695.P8606664559251289729

`A139052(2*n+1)*A139052(2*n+3)`
-/

namespace A038695.P8606664559251289729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139052 (2 * n + 1) * A139052 (2 * n + 3)

end

end A038695.P8606664559251289729

/-! ## A038695.P4714512217250473286

`lcm(A003617(n+1), A003617(A020725(n+1)))`
-/

namespace A038695.P4714512217250473286
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A003617 (n + 1)) (A003617 (A020725 (n + 1)).toNat)

end

end A038695.P4714512217250473286

/-! ## A038695.P13486315472229434156

`lcm(A003617(A000027(n+1)), A003617(n+2))`
-/

namespace A038695.P13486315472229434156
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A003617 (A000027 (n + 1)).toNat) (A003617 (n + 2))

end

end A038695.P13486315472229434156

/-!
# A038696: Nextprime(2^0)*nextprime(2^1)*nextprime(2^2)*...*nextprime(2^n).

The programs for A038696, there is no canonical definition to state claims against.
-/

/-! ## A038696.P1157159298319725694

`∏[A014210(n)]`
-/

namespace A038696.P1157159298319725694
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014210 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A038696.P1157159298319725694

/-! ## A038696.P6719876275053715728

`∏[A203074(n+1)]`
-/

namespace A038696.P6719876275053715728
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203074 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A038696.P6719876275053715728

/-! ## A038696.P5552323729177816907

`∏[A104080(n)+char[1]]`
-/

namespace A038696.P5552323729177816907
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104080 n + ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A038696.P5552323729177816907

/-! ## A038696.P15869186106368351838

`∏[A013597(n)+2^n]`
-/

namespace A038696.P15869186106368351838
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013597 n + (2 ^ n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A038696.P15869186106368351838

/-! ## A038696.P12030540480053283286

`∏[record[A203074(A008611(n))]]`
-/

namespace A038696.P12030540480053283286
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203074 (A008611 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A038696.P12030540480053283286

/-!
# A038697: Convolution of A000917 with A000984 (central binomial coefficients).

The programs for A038697, the canonical program `A038697.P8064279646356004251` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A038697 has offset 0).

The definition of A038697 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A038697.P8064279646356004251

`n*4^(n+1)+C(2*n+3, n+1)`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A038697

/-- `n*4^(n+1)+C(2*n+3, n+1)` -/
def P8064279646356004251.Spec : Prop :=
  ∀ n, (P8064279646356004251.a n : ℤ) = A038697 n

theorem P8064279646356004251.correct : P8064279646356004251.Spec := by
  intro n
  simp only [A038697]

end A038697

/-! ## A038697.P15951780587578401299

`A001700(n+1)+n*4^(n+1)`
-/

namespace A038697.P15951780587578401299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001700 (n + 1) + (n * 4 ^ (n + 1) : ℤ)

end

end A038697.P15951780587578401299

namespace A038697

/-- `A001700(n+1)+n*4^(n+1)` -/
def P15951780587578401299.Spec : Prop :=
  ∀ n, P15951780587578401299.a n = A038697 n

end A038697

/-! ## A038697.P18298893388842327075

`A153338(n+2)+A029760(n)`
-/

namespace A038697.P18298893388842327075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153338 (n + 2) + A029760 n

end

end A038697.P18298893388842327075

namespace A038697

/-- `A153338(n+2)+A029760(n)` -/
def P18298893388842327075.Spec : Prop :=
  ∀ n, P18298893388842327075.a n = A038697 n

end A038697

/-! ## A038697.P6606797324782465985

`A002697(n+2)-A000346(n+1)`
-/

namespace A038697.P6606797324782465985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002697 (n + 2) - A000346 (n + 1)

end

end A038697.P6606797324782465985

namespace A038697

/-- `A002697(n+2)-A000346(n+1)` -/
def P6606797324782465985.Spec : Prop :=
  ∀ n, P6606797324782465985.a n = A038697 n

end A038697

/-! ## A038697.P9401824617695409882

`A001405(2*n+3)+n*A027306(2*n+3)`
-/

namespace A038697.P9401824617695409882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001405 (2 * n + 3) + (n : ℤ) * A027306 (2 * n + 3)

end

end A038697.P9401824617695409882

namespace A038697

/-- `A001405(2*n+3)+n*A027306(2*n+3)` -/
def P9401824617695409882.Spec : Prop :=
  ∀ n, P9401824617695409882.a n = A038697 n

end A038697

/-! ## A038697.P13555893692274537738

`n*A004171(n)+A001700(n+1)+n*A004171(n)`
-/

namespace A038697.P13555893692274537738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A004171 n + (A001700 (n + 1) + (n : ℤ) * A004171 n)

end

end A038697.P13555893692274537738

namespace A038697

/-- `n*A004171(n)+A001700(n+1)+n*A004171(n)` -/
def P13555893692274537738.Spec : Prop :=
  ∀ n, P13555893692274537738.a n = A038697 n

end A038697

/-!
# A038698: Excess of 4k-1 primes over 4k+1 primes, beginning with prime 2.

The programs for A038698, the canonical program `A038698.P1622945088266764411` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A038698 has offset 1).

The definition of A038698 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A267097, A267098, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A038698.P1622945088266764411

`A267098(n+1)-A267097(n+1)`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A038698

/-- `A267098(n+1)-A267097(n+1)` -/
def P1622945088266764411.Spec : Prop :=
  ∀ n, P1622945088266764411.a n = A038698 (n + 1)

theorem P1622945088266764411.correct : P1622945088266764411.Spec := by
  intro n
  simp only [A038698, Nat.add_sub_cancel]

end A038698

/-! ## A038698.P1992650209279706661

`A292378(A000040(n+1))`
-/

namespace A038698.P1992650209279706661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292378 (A000040 (n + 1)).toNat

end

end A038698.P1992650209279706661

namespace A038698

/-- `A292378(A000040(n+1))` -/
def P1992650209279706661.Spec : Prop :=
  ∀ n, P1992650209279706661.a n = A038698 (n + 1)

end A038698

/-! ## A038698.P7814725603254828297

`∑[-A070750(n+1)]`
-/

namespace A038698.P7814725603254828297
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A070750 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A038698.P7814725603254828297

namespace A038698

/-- `∑[-A070750(n+1)]` -/
def P7814725603254828297.Spec : Prop :=
  ∀ n, P7814725603254828297.a n = A038698 (n + 1)

end A038698

/-! ## A038698.P12624154271755892269

`-(A308567(n+1)+1)`
-/

namespace A038698.P12624154271755892269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(A308567 (n + 1) + 1)

end

end A038698.P12624154271755892269

namespace A038698

/-- `-(A308567(n+1)+1)` -/
def P12624154271755892269.Spec : Prop :=
  ∀ n, P12624154271755892269.a n = A038698 (n + 1)

end A038698

/-! ## A038698.P3761536700401388664

`∑[A039702(n+1)-2]`
-/

namespace A038698.P3761536700401388664
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039702 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A038698.P3761536700401388664

namespace A038698

/-- `∑[A039702(n+1)-2]` -/
def P3761536700401388664.Spec : Prop :=
  ∀ n, P3761536700401388664.a n = A038698 (n + 1)

end A038698

/-! ## A038698.P199312083313213311

`2*A267098(n+1)-n`
-/

namespace A038698.P199312083313213311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A267098 (n + 1) - (n : ℤ)

end

end A038698.P199312083313213311

namespace A038698

/-- `2*A267098(n+1)-n` -/
def P199312083313213311.Spec : Prop :=
  ∀ n, P199312083313213311.a n = A038698 (n + 1)

end A038698

/-! ## A038698.P166046627452120496

`n-2*A267097(n+1)`
-/

namespace A038698.P166046627452120496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 2 * A267097 (n + 1)

end

end A038698.P166046627452120496

namespace A038698

/-- `n-2*A267097(n+1)` -/
def P166046627452120496.Spec : Prop :=
  ∀ n, P166046627452120496.a n = A038698 (n + 1)

end A038698

/-! ## A038698.P11780618308949400457

`∑[and(2, A006093(n+1))]-n`
-/

namespace A038698.P11780618308949400457
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 2 (A006093 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A038698.P11780618308949400457

namespace A038698

/-- `∑[and(2, A006093(n+1))]-n` -/
def P11780618308949400457.Spec : Prop :=
  ∀ n, P11780618308949400457.a n = A038698 (n + 1)

end A038698

/-! ## A038698.P5248273031519619121

`n-∑[and(2, A040976(n+1))]`
-/

namespace A038698.P5248273031519619121
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 2 (A040976 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A038698.P5248273031519619121

namespace A038698

/-- `n-∑[and(2, A040976(n+1))]` -/
def P5248273031519619121.Spec : Prop :=
  ∀ n, P5248273031519619121.a n = A038698 (n + 1)

end A038698

/-! ## A038698.P12295053134197605997

`∑[and(2, A000040(2*n+1-n))]-(n+2)`
-/

namespace A038698.P12295053134197605997
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 2 (A000040 (2 * n + 1 - n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n + 2 : ℤ)

end

end A038698.P12295053134197605997

namespace A038698

/-- `∑[and(2, A000040(2*n+1-n))]-(n+2)` -/
def P12295053134197605997.Spec : Prop :=
  ∀ n, P12295053134197605997.a n = A038698 (n + 1)

end A038698

/-! ## A038698.P7321882034308012556

`∑[A001222(A088192(n+1)²)]-n`
-/

namespace A038698.P7321882034308012556
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A088192 (n + 1) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A038698.P7321882034308012556

namespace A038698

/-- `∑[A001222(A088192(n+1)²)]-n` -/
def P7321882034308012556.Spec : Prop :=
  ∀ n, P7321882034308012556.a n = A038698 (n + 1)

end A038698

/-! ## A038698.P7405574168583177618

`∑[A212159(n+2)]-A212159(n+2)`
-/

namespace A038698.P7405574168583177618
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212159 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A212159 (n + 2)

end

end A038698.P7405574168583177618

namespace A038698

/-- `∑[A212159(n+2)]-A212159(n+2)` -/
def P7405574168583177618.Spec : Prop :=
  ∀ n, P7405574168583177618.a n = A038698 (n + 1)

end A038698

/-! ## A038698.P14077530008883998206

`A070750(n+2)-∑[A070750(n+2)]`
-/

namespace A038698.P14077530008883998206
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070750 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070750 (n + 2) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A038698.P14077530008883998206

namespace A038698

/-- `A070750(n+2)-∑[A070750(n+2)]` -/
def P14077530008883998206.Spec : Prop :=
  ∀ n, P14077530008883998206.a n = A038698 (n + 1)

end A038698

/-! ## A038698.P10952387355185663082

`A308567(Δ[A308567(n+1)]²)-A308567(n+1)`
-/

namespace A038698.P10952387355185663082
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308567 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308567 ((f1 (n + 1) - f1 n) ^ 2).toNat - A308567 (n + 1)

end

end A038698.P10952387355185663082

namespace A038698

/-- `A308567(Δ[A308567(n+1)]²)-A308567(n+1)` -/
def P10952387355185663082.Spec : Prop :=
  ∀ n, P10952387355185663082.a n = A038698 (n + 1)

end A038698

/-! ## A038698.P17873856637996466845

`abs(∑[1-and(2, p?[xor(1, n)])])-1`
-/

namespace A038698.P17873856637996466845
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (Nat.land 2 (f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j| - 1

end

end A038698.P17873856637996466845

namespace A038698

/-- `abs(∑[1-and(2, p?[xor(1, n)])])-1` -/
def P17873856637996466845.Spec : Prop :=
  ∀ n, P17873856637996466845.a n = A038698 (n + 1)

end A038698

/-! ## A038698.P8223505466550845143

`A066520(A006005(n+1))`
-/

namespace A038698.P8223505466550845143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066520 (A006005 (n + 1)).toNat

end

end A038698.P8223505466550845143

namespace A038698

/-- `A066520(A006005(n+1))` -/
def P8223505466550845143.Spec : Prop :=
  ∀ n, P8223505466550845143.a n = A038698 (n + 1)

end A038698

/-! ## A038698.P8601138414773222358

`A066520(A055670(n+1))`
-/

namespace A038698.P8601138414773222358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066520 (A055670 (n + 1)).toNat

end

end A038698.P8601138414773222358

namespace A038698

/-- `A066520(A055670(n+1))` -/
def P8601138414773222358.Spec : Prop :=
  ∀ n, P8601138414773222358.a n = A038698 (n + 1)

end A038698

/-! ## A038698.P17436281342283558509

`A066520(A078444(n+1))`
-/

namespace A038698.P17436281342283558509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066520 (A078444 (n + 1)).toNat

end

end A038698.P17436281342283558509

namespace A038698

/-- `A066520(A078444(n+1))` -/
def P17436281342283558509.Spec : Prop :=
  ∀ n, P17436281342283558509.a n = A038698 (n + 1)

end A038698

/-! ## A038698.P10819012723193967668

`A066520(A161847(n+1))`
-/

namespace A038698.P10819012723193967668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066520 (A161847 (n + 1)).toNat

end

end A038698.P10819012723193967668

namespace A038698

/-- `A066520(A161847(n+1))` -/
def P10819012723193967668.Spec : Prop :=
  ∀ n, P10819012723193967668.a n = A038698 (n + 1)

end A038698

/-! ## A038698.P8929437530770323268

`A066520(A162735(n+1))`
-/

namespace A038698.P8929437530770323268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066520 (A162735 (n + 1)).toNat

end

end A038698.P8929437530770323268

namespace A038698

/-- `A066520(A162735(n+1))` -/
def P8929437530770323268.Spec : Prop :=
  ∀ n, P8929437530770323268.a n = A038698 (n + 1)

end A038698

/-!
# A038699: Riesel problem: Smallest prime of form n*2^m-1, m >= 0, or 0 if no such prime exists.

The programs for A038699, there is no canonical definition to state claims against.
-/

/-! ## A038699.P11637923288123405772

`(n+1)*A000079(A040081(n+1))-1`
-/

namespace A038699.P11637923288123405772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A000079 (A040081 (n + 1)).toNat - 1

end

end A038699.P11637923288123405772

/-! ## A038699.P18229469772482477123

`A033999(A299149(n+1))+(n+1)*A000079(A040081(n+1))`
-/

namespace A038699.P18229469772482477123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A299149 (n + 1)).toNat + (n + 1 : ℤ) * A000079 (A040081 (n + 1)).toNat

end

end A038699.P18229469772482477123

/-! ## A038699.P311059354194757076

`A033999(A031926(n+1))+(n+1)*A000079(A040081(n+1))`
-/

namespace A038699.P311059354194757076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A031926 (n + 1)).toNat + (n + 1 : ℤ) * A000079 (A040081 (n + 1)).toNat

end

end A038699.P311059354194757076

/-! ## A038699.P8314839925718734242

`A033999(A371449(n+1))+(n+1)*A000079(A040081(n+1))`
-/

namespace A038699.P8314839925718734242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A371449 (n + 1)).toNat + (n + 1 : ℤ) * A000079 (A040081 (n + 1)).toNat

end

end A038699.P8314839925718734242

/-! ## A038699.P7987321555679645351

`A038700(A005369(n^3)+1+n)`
-/

namespace A038699.P7987321555679645351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038700 (A005369 (n ^ 3) + 1 + (n : ℤ)).toNat

end

end A038699.P7987321555679645351

