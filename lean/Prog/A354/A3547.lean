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
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C030
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
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
import Seq.B003.C002
import Seq.B003.C003
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
import Seq.B008.C000
import Seq.B008.C001
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
# A354700: T(w,h) is the number of non-congruent quadrilaterals whose vertices with integer coordinates (x_i, y_i) all lie on the perimeter of a rectangle of width w and height h, with no 3 points on the same edge of the rectangle, max(x_i) - min(x_i) = w and max(y_i) - min(y_i) = h, such that the 6 distances between the 4 vertices are distinct.

The programs for A354700, there is no canonical definition to state claims against.
-/

/-! ## A354700.P1758115240711549339

`A229037(A001834(n))%A128014(n)`
-/

namespace A354700.P1758115240711549339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A229037 (A001834 n).toNat) (A128014 n)

end

end A354700.P1758115240711549339

/-! ## A354700.P17718953715989653764

`A146288(A146284(2*n+1))%A146276(n+2)`
-/

namespace A354700.P17718953715989653764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A146288 (A146284 (2 * n + 1)).toNat) (A146276 (n + 2))

end

end A354700.P17718953715989653764

/-!
# A354701: Diagonal of the triangle A354700.

The programs for A354701, there is no canonical definition to state claims against.
-/

/-! ## A354701.P11478563794050607145

`A354700(∑[n+1])`
-/

namespace A354701.P11478563794050607145
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354700 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A354701.P11478563794050607145

/-! ## A354701.P650047475673346196

`A354700(A119663(n+1))%Δ[Δ[n!]]`
-/

namespace A354701.P650047475673346196
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A354700 (A119663 (n + 1)).toNat) (f1 (n + 1) - f1 n)

end

end A354701.P650047475673346196

/-! ## A354701.P12435883394298068550

`A354700(A119663(n+1))+A056965(n)`
-/

namespace A354701.P12435883394298068550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354700 (A119663 (n + 1)).toNat + A056965 n

end

end A354701.P12435883394298068550

/-! ## A354701.P13464167671693757820

`A354700(A262544(n+1))+A056965(n)`
-/

namespace A354701.P13464167671693757820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354700 (A262544 (n + 1)).toNat + A056965 n

end

end A354701.P13464167671693757820

/-! ## A354701.P13017826202490441133

`A354700(A262544(n+1))+A241173(n)`
-/

namespace A354701.P13017826202490441133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354700 (A262544 (n + 1)).toNat + A241173 n

end

end A354701.P13017826202490441133

/-!
# A354702: T(w,h) is an upper bound for the minimum number of grid points in a square grid covered by an arbitrarily positioned and rotated rectangle of width w and height h, where T(w,h) is a triangle read by rows.

The programs for A354702, there is no canonical definition to state claims against.
-/

/-! ## A354702.P11972745914722160436

`A075362(n+1)-A354703(n+1)`
-/

namespace A354702.P11972745914722160436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075362 (n + 1) - A354703 (n + 1)

end

end A354702.P11972745914722160436

/-! ## A354702.P11648923873146634230

`A075362(n+1)-(A141169(n)+A014675(A146286(n+1)))`
-/

namespace A354702.P11648923873146634230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075362 (n + 1) - (A141169 n + A014675 (A146286 (n + 1)).toNat)

end

end A354702.P11648923873146634230

/-! ## A354702.P4826555605498486587

`A075362(n+1)-∏{e}[A063886(A010422(n+1)), #]`
-/

namespace A354702.P4826555605498486587
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063886 (A010422 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075362 (n + 1) - ((∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p : ℕ) : ℤ)

end

end A354702.P4826555605498486587

/-! ## A354702.P11354453735696574739

`A075362(n+1)-A001221(7*A306664(3*n+2))`
-/

namespace A354702.P11354453735696574739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075362 (n + 1) - A001221 (7 * A306664 (3 * n + 2)).toNat

end

end A354702.P11354453735696574739

/-! ## A354702.P11576730427138159346

`A075362(n+1)-A001221(A014969(n)+A003602(n+1))`
-/

namespace A354702.P11576730427138159346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075362 (n + 1) - A001221 (A014969 n + A003602 (n + 1)).toNat

end

end A354702.P11576730427138159346

/-!
# A354703: T(w,h) = w*h - A354702(w,h) is a lower bound on the gain in the number of not covered grid points from an optimally positioned and rotated cover versus a just translated cover, where T(w,h) and A354702 are triangles read by rows.

The programs for A354703, there is no canonical definition to state claims against.
-/

/-! ## A354703.P3818585274629388090

`A075362(n+1)-A354702(n+1)`
-/

namespace A354703.P3818585274629388090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075362 (n + 1) - A354702 (n + 1)

end

end A354703.P3818585274629388090

/-! ## A354703.P14885908431467255841

`A262750(A005179(n+1)-A023532(n))`
-/

namespace A354703.P14885908431467255841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262750 (A005179 (n + 1) - A023532 n).toNat

end

end A354703.P14885908431467255841

/-! ## A354703.P16684735291706245749

`A069291(2*∑{d}[n+1, #]*A279790(n+1))`
-/

namespace A354703.P16684735291706245749
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069291 (((2 * (∑ d ∈ Nat.divisors (f1 n), d) : ℕ) : ℤ) * A279790 (n + 1)).toNat

end

end A354703.P16684735291706245749

/-! ## A354703.P685682395501520408

`A141169(n)+A014675(A146286(n+1))`
-/

namespace A354703.P685682395501520408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141169 n + A014675 (A146286 (n + 1)).toNat

end

end A354703.P685682395501520408

/-! ## A354703.P15903081901467716195

`A139355(A350015(n+1))`
-/

namespace A354703.P15903081901467716195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139355 (A350015 (n + 1)).toNat

end

end A354703.P15903081901467716195

/-!
# A354704: T(w,h) is a lower bound for the maximum number of grid points in a square grid covered by an arbitrarily positioned and rotated rectangle of width w and height h, excluding the trivial case of an axis-parallel unshifted cover, where T(w,h) is a triangle read by rows.

The programs for A354704, there is no canonical definition to state claims against.
-/

/-! ## A354704.P7710511219787240910

`A218036(n+1)-A354705(n+1)`
-/

namespace A354704.P7710511219787240910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218036 (n + 1) - A354705 (n + 1)

end

end A354704.P7710511219787240910

/-! ## A354704.P2187832363233265610

`A218036(n+1)-A182745(A182759(n+1)-A142150(n))`
-/

namespace A354704.P2187832363233265610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218036 (n + 1) - A182745 (A182759 (n + 1) - A142150 n).toNat

end

end A354704.P2187832363233265610

/-! ## A354704.P3811111529573791558

`A218036(n+1)-A182745(A182759(n+1)-A276457(n))`
-/

namespace A354704.P3811111529573791558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218036 (n + 1) - A182745 (A182759 (n + 1) - A276457 n).toNat

end

end A354704.P3811111529573791558

/-!
# A354705: T(w,h) = (w+1)*(h+1) - A354704(w,h) is an upper bound for the deficit in the number of grid points covered by an optimally positioned and rotated cover compared to the excluded singular case of an axis-parallel, unshifted cover, where T(w,h) and A354704 are triangles read by rows.

The programs for A354705, there is no canonical definition to state claims against.
-/

/-! ## A354705.P15515200538988664489

`A218036(n+1)-A354704(n+1)`
-/

namespace A354705.P15515200538988664489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218036 (n + 1) - A354704 (n + 1)

end

end A354705.P15515200538988664489

/-! ## A354705.P4120112784502930416

`A182745(A182759(n+1)-A142150(n))`
-/

namespace A354705.P4120112784502930416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182745 (A182759 (n + 1) - A142150 n).toNat

end

end A354705.P4120112784502930416

/-! ## A354705.P53011349173670336

`A182745(A182759(n+1)-A276457(n))`
-/

namespace A354705.P53011349173670336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182745 (A182759 (n + 1) - A276457 n).toNat

end

end A354705.P53011349173670336

/-!
# A354706: Diagonal of A354704.

The programs for A354706, there is no canonical definition to state claims against.
-/

/-! ## A354706.P262070231420229899

`(n+2)²-A354707(n+1)`
-/

namespace A354706.P262070231420229899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 2) ^ 2 : ℤ) - A354707 (n + 1)

end

end A354706.P262070231420229899

/-! ## A354706.P10062633451123236707

`A354704(∑[n+1])`
-/

namespace A354706.P10062633451123236707
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354704 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A354706.P10062633451123236707

/-! ## A354706.P1682552144244230850

`record[A354704(A038722(n+1))]`
-/

namespace A354706.P1682552144244230850
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354704 (A038722 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A354706.P1682552144244230850

/-! ## A354706.P5338753952894165923

`record[A354704(A049777(n+1))]`
-/

namespace A354706.P5338753952894165923
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354704 (A049777 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A354706.P5338753952894165923

/-! ## A354706.P9047663631894439229

`and(-1, A354704(A000217(n+1)))`
-/

namespace A354706.P9047663631894439229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A354704 (A000217 (n + 1)).toNat)

end

end A354706.P9047663631894439229

/-!
# A354707: Diagonal of A354705.

The programs for A354707, there is no canonical definition to state claims against.
-/

/-! ## A354707.P1129979744150298339

`(n+2)²-A354706(n+1)`
-/

namespace A354707.P1129979744150298339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 2) ^ 2 : ℤ) - A354706 (n + 1)

end

end A354707.P1129979744150298339

/-! ## A354707.P5445178757552558074

`A068527(A354706(n+1))`
-/

namespace A354707.P5445178757552558074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068527 (A354706 (n + 1)).toNat

end

end A354707.P5445178757552558074

/-! ## A354707.P13238531213891580630

`A354705(∑[n+1])`
-/

namespace A354707.P13238531213891580630
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354705 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A354707.P13238531213891580630

/-! ## A354707.P11703188416012930742

`A068527(A354704(∑[n+1]))`
-/

namespace A354707.P11703188416012930742
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068527 (A354704 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A354707.P11703188416012930742

/-! ## A354707.P18139855794251912474

`A142150(2*(n+2))²-A354704(∑[n+1])`
-/

namespace A354707.P18139855794251912474
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142150 (2 * (n + 2)) ^ 2 - A354704 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A354707.P18139855794251912474

/-!
# A354710: Records in A009101.

The programs for A354710, there is no canonical definition to state claims against.
-/

/-! ## A354710.P8946731474352572463

`record[A009101(A007954(n))]`
-/

namespace A354710.P8946731474352572463
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009101 (A007954 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A354710.P8946731474352572463

/-! ## A354710.P16482294856719766155

`record[A009101(abs(A187844(n)))]`
-/

namespace A354710.P16482294856719766155
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009101 |A187844 n|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A354710.P16482294856719766155

/-! ## A354710.P3263105096732222760

`record[A009101(n-A070565(n))]`
-/

namespace A354710.P3263105096732222760
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009101 ((n : ℤ) - A070565 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A354710.P3263105096732222760

/-! ## A354710.P12165001538793989131

`record[A009101(A230099(n)-n)]`
-/

namespace A354710.P12165001538793989131
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009101 (A230099 n - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A354710.P12165001538793989131

/-! ## A354710.P2029177401789171942

`record[A009101(ceil(A098736(n)/(n+1)))]`
-/

namespace A354710.P2029177401789171942
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009101 ⌈(A098736 n : ℚ) / (n + 1 : ℚ)⌉.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A354710.P2029177401789171942

/-!
# A354711: Numbers k such that the number of divisors of k divides k-1.

The programs for A354711, there is no canonical definition to state claims against.
-/

/-! ## A354711.P15558804445758630558

`record[A298734(n+1)]`
-/

namespace A354711.P15558804445758630558
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298734 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A354711.P15558804445758630558

/-! ## A354711.P2338189658603873118

`filter[n+1, A373993(#)]`
-/

namespace A354711.P2338189658603873118
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373993 (f1 j) = 1) n)

end

end A354711.P2338189658603873118

/-! ## A354711.P4749579134176946360

`eq[1, A122377(n+1)]+1`
-/

namespace A354711.P4749579134176946360
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122377 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A354711.P4749579134176946360

/-! ## A354711.P2850751169696460579

`eq[0, n%Δ[A006218(n)]]+1`
-/

namespace A354711.P2850751169696460579
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n : ℤ) (f3 (n + 1) - f3 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A354711.P2850751169696460579

/-! ## A354711.P10769123599159057531

`eq[n, A298734(round(sqrt(n²+1)))]`
-/

namespace A354711.P10769123599159057531
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298734 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A354711.P10769123599159057531

/-! ## A354711.P10814726002109123130

`eq[1, C(A161654(n+1), n)]+1`
-/

namespace A354711.P10814726002109123130
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A161654 (n + 1)).toNat n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A354711.P10814726002109123130

/-! ## A354711.P16255325671961819166

`eq[n, lcm(n, A000005(n+1))]+1`
-/

namespace A354711.P16255325671961819166
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n : ℤ) (A000005 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A354711.P16255325671961819166

/-! ## A354711.P12195149096223273114

`eq[2, a((n-1)%A000005(n))+1]` with `a(0)=1`
-/

namespace A354711.P12195149096223273114
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f2 =>
  f2 (Int.tmod ((n : ℤ) - 1) (A000005 n)).toNat + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A354711.P12195149096223273114

/-! ## A354711.P13287741882181335523

`lt[abs(1-n)%A000005(abs(1-n)+1), 1]`
-/

namespace A354711.P13287741882181335523
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod |1 - (n : ℤ)| (A000005 (|1 - (n : ℤ)| + 1).toNat)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A354711.P13287741882181335523

/-! ## A354711.P10832063604305332476

`∪[A006005(n+1), A354712(n+1)]`
-/

namespace A354711.P10832063604305332476
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354712 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A354711.P10832063604305332476

/-!
# A354712: Nonprime numbers k such that the number of divisors of k divides k-1.

The programs for A354712, there is no canonical definition to state claims against.
-/

/-! ## A354712.P13964646529469676007

`record[A298734(A347202(n+1))]`
-/

namespace A354712.P13964646529469676007
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298734 (A347202 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A354712.P13964646529469676007

/-! ## A354712.P12864176030123417598

`filter[A018252(n+1), A373993(#)]`
-/

namespace A354712.P12864176030123417598
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373993 (f1 j).toNat = 1) n)

end

end A354712.P12864176030123417598

/-! ## A354712.P10697353530726079847

`filter[A065090(n+1), A373993(#)]`
-/

namespace A354712.P10697353530726079847
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065090 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373993 (f1 j).toNat = 1) n)

end

end A354712.P10697353530726079847

/-! ## A354712.P2192279655064959032

`filter[A347202(n+1), A373993(#)]`
-/

namespace A354712.P2192279655064959032
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347202 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373993 (f1 j).toNat = 1) n)

end

end A354712.P2192279655064959032

/-! ## A354712.P18305409753775157831

`filter[A141468(n+2), A373993(#)]`
-/

namespace A354712.P18305409753775157831
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141468 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373993 (f1 j).toNat = 1) n)

end

end A354712.P18305409753775157831

/-! ## A354712.P1733279782052622067

`filter[A073846(2*n+1), A373993(#)]`
-/

namespace A354712.P1733279782052622067
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073846 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373993 (f1 j).toNat = 1) n)

end

end A354712.P1733279782052622067

/-! ## A354712.P10860318148320390714

`filter[A222307(2*n+1), A373993(#)]`
-/

namespace A354712.P10860318148320390714
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222307 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373993 (f1 j).toNat = 1) n)

end

end A354712.P10860318148320390714

/-! ## A354712.P14554876448672424869

`eq[2, A007318(a((n+1)%A000005(n)))]` with `a(0)=1, a(1)=2, a(2)=4`
-/

namespace A354712.P14554876448672424869
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 4] fun n f2 =>
  A007318 (f2 (Int.tmod (n + 1 : ℤ) (A000005 n)).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A354712.P14554876448672424869

/-! ## A354712.P10387624973051278675

`eq[n%A000005(n+1), A269668(n+1)]+1`
-/

namespace A354712.P10387624973051278675
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n : ℤ) (A000005 (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269668 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A354712.P10387624973051278675

/-! ## A354712.P11471092685657782942

`eq[(A010051(n+1)+1)^9, A122377(n+1)]+1`
-/

namespace A354712.P11471092685657782942
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A010051 (n + 1) + 1) ^ 9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122377 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A354712.P11471092685657782942

/-!
# A354713: Number of solutions (n, D) for Pell equation n^2 - D*y^2 = 1 with fixed n.

The programs for A354713, the canonical program `A354713.P17399075421712042557` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A354713 has offset 2).

The definition of A354713 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, A000188, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A354713.P17399075421712042557

`A000005(A000188((n+2)²-1))`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A354713

/-- `A000005(A000188((n+2)²-1))` -/
def P17399075421712042557.Spec : Prop :=
  ∀ n, P17399075421712042557.a n = A354713 (n + 2)

theorem P17399075421712042557.correct : P17399075421712042557.Spec := by
  intro n
  simp only [A354713, Nat.add_sub_cancel]

end A354713

/-! ## A354713.P13076498536863723944

`A322483(A089655(n+2))`
-/

namespace A354713.P13076498536863723944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322483 (A089655 (n + 2)).toNat

end

end A354713.P13076498536863723944

namespace A354713

/-- `A322483(A089655(n+2))` -/
def P13076498536863723944.Spec : Prop :=
  ∀ n, P13076498536863723944.a n = A354713 (n + 2)

end A354713

/-! ## A354713.P8226260525776335137

`∏{e}[A278160(n+1), A008619(#)]`
-/

namespace A354713.P8226260525776335137
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278160 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A008619 (Nat.factorization (f1 n).natAbs p)

end

end A354713.P8226260525776335137

namespace A354713

/-- `∏{e}[A278160(n+1), A008619(#)]` -/
def P8226260525776335137.Spec : Prop :=
  ∀ n, P8226260525776335137.a n = A354713 (n + 2)

end A354713

/-! ## A354713.P2060081405283443899

`∏{e}[A005563(n+1), A008619(#)]`
-/

namespace A354713.P2060081405283443899
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005563 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A008619 (Nat.factorization (f1 n).natAbs p)

end

end A354713.P2060081405283443899

namespace A354713

/-- `∏{e}[A005563(n+1), A008619(#)]` -/
def P2060081405283443899.Spec : Prop :=
  ∀ n, P2060081405283443899.a n = A354713 (n + 2)

end A354713

/-! ## A354713.P7553891569550311957

`A046951(A358821(n+2))`
-/

namespace A354713.P7553891569550311957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046951 (A358821 (n + 2)).toNat

end

end A354713.P7553891569550311957

namespace A354713

/-- `A046951(A358821(n+2))` -/
def P7553891569550311957.Spec : Prop :=
  ∀ n, P7553891569550311957.a n = A354713 (n + 2)

end A354713

/-! ## A354713.P17866659918426120284

`∑{d}[(n+2)²-1, A000005(#)%2]`
-/

namespace A354713.P17866659918426120284
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 2) ^ 2 : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, Int.tmod (A000005 d) 2

end

end A354713.P17866659918426120284

namespace A354713

/-- `∑{d}[(n+2)²-1, A000005(#)%2]` -/
def P17866659918426120284.Spec : Prop :=
  ∀ n, P17866659918426120284.a n = A354713 (n + 2)

end A354713

/-! ## A354713.P6916384035601476832

`A365171(A008833(A336642((n+2)²)))`
-/

namespace A354713.P6916384035601476832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365171 (A008833 (A336642 ((n + 2) ^ 2)).toNat).toNat

end

end A354713.P6916384035601476832

namespace A354713

/-- `A365171(A008833(A336642((n+2)²)))` -/
def P6916384035601476832.Spec : Prop :=
  ∀ n, P6916384035601476832.a n = A354713 (n + 2)

end A354713

/-! ## A354713.P12619689603783348410

`A293234((n+2)²-1)`
-/

namespace A354713.P12619689603783348410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293234 ((n + 2) ^ 2 - 1)

end

end A354713.P12619689603783348410

namespace A354713

/-- `A293234((n+2)²-1)` -/
def P12619689603783348410.Spec : Prop :=
  ∀ n, P12619689603783348410.a n = A354713 (n + 2)

end A354713

/-! ## A354713.P16029226765918594247

`A046951(A278160(n+1))`
-/

namespace A354713.P16029226765918594247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046951 (A278160 (n + 1)).toNat

end

end A354713.P16029226765918594247

namespace A354713

/-- `A046951(A278160(n+1))` -/
def P16029226765918594247.Spec : Prop :=
  ∀ n, P16029226765918594247.a n = A354713 (n + 2)

end A354713

/-! ## A354713.P1061654631094723231

`A046951((n+2)²-1)`
-/

namespace A354713.P1061654631094723231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046951 ((n + 2) ^ 2 - 1)

end

end A354713.P1061654631094723231

namespace A354713

/-- `A046951((n+2)²-1)` -/
def P1061654631094723231.Spec : Prop :=
  ∀ n, P1061654631094723231.a n = A354713 (n + 2)

end A354713

/-!
# A354714: Nonprime numbers k such that the number of divisors of k divides k+1.

The programs for A354714, there is no canonical definition to state claims against.
-/

/-! ## A354714.P16923605025601229322

`record[A124332(A014076(n+1))]`
-/

namespace A354714.P16923605025601229322
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124332 (A014076 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A354714.P16923605025601229322

/-! ## A354714.P11946212330681742131

`record[A331187(A124332(n+1))]`
-/

namespace A354714.P11946212330681742131
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331187 (A124332 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A354714.P11946212330681742131

/-! ## A354714.P10073038242869510803

`record[A331187(A272872(n+1))]`
-/

namespace A354714.P10073038242869510803
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331187 (A272872 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A354714.P10073038242869510803

/-! ## A354714.P1386875788327276487

`filter[A272872(n+1), A005171(#)]`
-/

namespace A354714.P1386875788327276487
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272872 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A354714.P1386875788327276487

/-! ## A354714.P14235284205096699652

`filter[A272872(n+1), A292438(#)]`
-/

namespace A354714.P14235284205096699652
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272872 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A292438 (f1 j).toNat = 1) n)

end

end A354714.P14235284205096699652

/-! ## A354714.P2616210205831633669

`record[A124332(sqrt(A062532(n+1)))]`
-/

namespace A354714.P2616210205831633669
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124332 (SequenceMachineLib.roundAway (Real.sqrt (A062532 (n + 1) : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A354714.P2616210205831633669

/-! ## A354714.P3082876144595327496

`∩[A023883(n+1), A054022(n+1)]`
-/

namespace A354714.P3082876144595327496
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023883 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054022 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A354714.P3082876144595327496

/-! ## A354714.P13674837915982517055

`∩[A014076(n+1), A272872(n+1)]`
-/

namespace A354714.P13674837915982517055
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014076 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272872 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A354714.P13674837915982517055

/-! ## A354714.P1775367706769484581

`∩[A018252(n+1), A272872(n+1)]`
-/

namespace A354714.P1775367706769484581
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272872 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A354714.P1775367706769484581

/-! ## A354714.P8508368277010720916

`∩[A023883(n+1), A272872(n+1)]`
-/

namespace A354714.P8508368277010720916
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023883 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272872 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A354714.P8508368277010720916

/-!
# A354715: Numbers k such that the number of divisors of k divides k-2.

The programs for A354715, the canonical program `A354715.P10103640764323870773` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A354715 has offset 1).

The definition of A354715 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A354715.P10103640764323870773

`record[gcd(n+1, (n-1)%A000005(n+1))]`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A354715

/-- `record[gcd(n+1, (n-1)%A000005(n+1))]` -/
def P10103640764323870773.Spec : Prop :=
  ∀ n, (P10103640764323870773.a n : ℤ) = A354715 (n + 1)

theorem P10103640764323870773.correct : P10103640764323870773.Spec := by
  intro n
  simp only [A354715, Nat.add_sub_cancel]

end A354715

/-! ## A354715.P4078999499606312117

`lt[(n-1)%A000005(n+1), 1]+1`
-/

namespace A354715.P4078999499606312117
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((n : ℤ) - 1) (A000005 (n + 1))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A354715.P4078999499606312117

namespace A354715

/-- `lt[(n-1)%A000005(n+1), 1]+1` -/
def P4078999499606312117.Spec : Prop :=
  ∀ n, (P4078999499606312117.a n : ℤ) = A354715 (n + 1)

end A354715

/-! ## A354715.P6219820353946500269

`eq[ceil(sin(n)²)+1, A122377(n+1)]+1`
-/

namespace A354715.P6219820353946500269
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sin (n : ℝ) ^ 2⌉ + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122377 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A354715.P6219820353946500269

namespace A354715

/-- `eq[ceil(sin(n)²)+1, A122377(n+1)]+1` -/
def P6219820353946500269.Spec : Prop :=
  ∀ n, (P6219820353946500269.a n : ℤ) = A354715 (n + 1)

end A354715

/-! ## A354715.P16897196446029866242

`eq[A020639(n+1), A122377(n+1)]+1`
-/

namespace A354715.P16897196446029866242
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122377 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A354715.P16897196446029866242

namespace A354715

/-- `eq[A020639(n+1), A122377(n+1)]+1` -/
def P16897196446029866242.Spec : Prop :=
  ∀ n, (P16897196446029866242.a n : ℤ) = A354715 (n + 1)

end A354715

/-! ## A354715.P15334196736706469676

`eq[A000040(n+1)%2+1, A122377(n+1)]+1`
-/

namespace A354715.P15334196736706469676
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (n + 1)) 2 + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122377 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A354715.P15334196736706469676

namespace A354715

/-- `eq[A000040(n+1)%2+1, A122377(n+1)]+1` -/
def P15334196736706469676.Spec : Prop :=
  ∀ n, (P15334196736706469676.a n : ℤ) = A354715 (n + 1)

end A354715

/-! ## A354715.P9536792275129151246

`eq[A004525(n), A298734(A028310(n))]`
-/

namespace A354715.P9536792275129151246
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298734 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A354715.P9536792275129151246

namespace A354715

/-- `eq[A004525(n), A298734(A028310(n))]` -/
def P9536792275129151246.Spec : Prop :=
  ∀ n, (P9536792275129151246.a n : ℤ) = A354715 (n + 1)

end A354715

/-! ## A354715.P309600801178655446

`eq[A110654(n), A298734(A028310(n))]`
-/

namespace A354715.P309600801178655446
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298734 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A354715.P309600801178655446

namespace A354715

/-- `eq[A110654(n), A298734(A028310(n))]` -/
def P309600801178655446.Spec : Prop :=
  ∀ n, (P309600801178655446.a n : ℤ) = A354715 (n + 1)

end A354715

/-! ## A354715.P9810293674519314723

`eq[A110654(n), A298734(A233583(n+1))]`
-/

namespace A354715.P9810293674519314723
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298734 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A354715.P9810293674519314723

namespace A354715

/-- `eq[A110654(n), A298734(A233583(n+1))]` -/
def P9810293674519314723.Spec : Prop :=
  ∀ n, (P9810293674519314723.a n : ℤ) = A354715 (n + 1)

end A354715

/-!
# A354721: Absolute values of first differences of A354687.

The programs for A354721, there is no canonical definition to state claims against.
-/

/-! ## A354721.P995117335333880995

`abs(Δ[A354687(n+1)])`
-/

namespace A354721.P995117335333880995
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354687 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A354721.P995117335333880995

/-! ## A354721.P11896705964449669693

`gcd(Δ[A354687(n+1)], A000038(n))`
-/

namespace A354721.P11896705964449669693
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354687 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (f1 (n + 1) - f1 n) (A000038 n)

end

end A354721.P11896705964449669693

/-! ## A354721.P11950651428915497864

`lcm(Δ[A354687(n+1)], A033999(n))`
-/

namespace A354721.P11950651428915497864
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354687 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (f1 (n + 1) - f1 n) (A033999 n)

end

end A354721.P11950651428915497864

/-! ## A354721.P15278617626660091991

`abs(A354687(n+1)-A354687(n+2))`
-/

namespace A354721.P15278617626660091991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A354687 (n + 1) - A354687 (n + 2)|

end

end A354721.P15278617626660091991

/-! ## A354721.P16007984831974741166

`A000188(Δ[A354687(n+1)]²)`
-/

namespace A354721.P16007984831974741166
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354687 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000188 ((f1 (n + 1) - f1 n) ^ 2).toNat

end

end A354721.P16007984831974741166

/-!
# A354725: Terms of A354724 whose number of divisors sets a new record.

The programs for A354725, there is no canonical definition to state claims against.
-/

/-! ## A354725.P4792959405466195450

`xor(A047954(A047995(n)), A047984(3*n+2))`
-/

namespace A354725.P4792959405466195450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A047954 (A047995 n).toNat) (A047984 (3 * n + 2))

end

end A354725.P4792959405466195450

/-!
# A354727: a(1) = 1; for n > 1, a(n) is the smallest positive number that has not yet appeared that shares a factor with a(n-1) and the difference a(n) - a(n-1) is distinct from all previous differences.

The programs for A354727, there is no canonical definition to state claims against.
-/

/-! ## A354727.P9340367856213192452

`A354739(n)+a(n-1)` with `a(0)=1`
-/

namespace A354727.P9340367856213192452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A354739 n + a (n - 1)

end

end A354727.P9340367856213192452

/-! ## A354727.P2404268911595484236

`∑[A354739(round(sqrt(n²+1)))]`
-/

namespace A354727.P2404268911595484236
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354739 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A354727.P2404268911595484236

/-! ## A354727.P8855744631193213058

`abs(∑[A354739(A028310(n))])`
-/

namespace A354727.P8855744631193213058
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354739 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j|

end

end A354727.P8855744631193213058

/-! ## A354727.P1961257486544465651

`∑[A354739(A028310(n))%A005276(n+1)]`
-/

namespace A354727.P1961257486544465651
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A354739 (A028310 n).toNat) (A005276 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A354727.P1961257486544465651

/-! ## A354727.P7758937744116324654

`∑[A354739(A028310(n))]%A044448(n+1)`
-/

namespace A354727.P7758937744116324654
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354739 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (A044448 (n + 1))

end

end A354727.P7758937744116324654

/-! ## A354727.P18433343343598282182

`∑[A354739(A028310(n))]+A008683(4*(n+1))`
-/

namespace A354727.P18433343343598282182
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354739 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + A008683 (4 * (n + 1))

end

end A354727.P18433343343598282182

/-! ## A354727.P7149811608579923025

`(A000040(n+1)%2)!*∑[A354739(A028310(n))]`
-/

namespace A354727.P7149811608579923025
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354739 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (Int.tmod (A000040 (n + 1)) 2).toNat : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A354727.P7149811608579923025

/-! ## A354727.P13196742980287550312

`∑[A354739(n+1)]+1-A354739(n+1)`
-/

namespace A354727.P13196742980287550312
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354739 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (1 - A354739 (n + 1))

end

end A354727.P13196742980287550312

/-!
# A354728: E.g.f. A(x) satisfies A(x) = 1 + log(1+x) * A(log(1+x)).

The programs for A354728, there is no canonical definition to state claims against.
-/

/-! ## A354728.P12303048393326826603

`A354729(n+1)/(n+1)`
-/

namespace A354728.P12303048393326826603
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A354729 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A354728.P12303048393326826603

/-!
# A354730: E.g.f. A(x) satisfies: A(x) = 1 + x * A(-log(1-x)).

The programs for A354730, there is no canonical definition to state claims against.
-/

/-! ## A354730.P5821258791379008372

`A056039(A141628(n)+n)`
-/

namespace A354730.P5821258791379008372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056039 (A141628 n + (n : ℤ)).toNat

end

end A354730.P5821258791379008372

/-! ## A354730.P13574771253085678799

`round(3^(n/3))*A363484(A098615(n))`
-/

namespace A354730.P13574771253085678799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((3 : ℝ) ^ ((n : ℚ) / 3 : ℝ)) * A363484 (A098615 n).toNat

end

end A354730.P13574771253085678799

/-!
# A354731: Absolute values of first differences of A354688.

The programs for A354731, there is no canonical definition to state claims against.
-/

/-! ## A354731.P5252333927631991678

`abs(Δ[A354688(n+1)])`
-/

namespace A354731.P5252333927631991678
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354688 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A354731.P5252333927631991678

/-! ## A354731.P7924623573181440262

`gcd(Δ[A354688(n+1)], A000038(n))`
-/

namespace A354731.P7924623573181440262
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354688 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (f1 (n + 1) - f1 n) (A000038 n)

end

end A354731.P7924623573181440262

/-! ## A354731.P17060949866738706001

`lcm(Δ[A354688(n+1)], A033999(n))`
-/

namespace A354731.P17060949866738706001
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354688 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (f1 (n + 1) - f1 n) (A033999 n)

end

end A354731.P17060949866738706001

/-! ## A354731.P5123175034347530936

`∑{d}[Δ[A354688(n+1)], A000010(#)]`
-/

namespace A354731.P5123175034347530936
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354688 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A354731.P5123175034347530936

/-! ## A354731.P16367120786528553328

`abs(A354688(n+1)-A354688(n+2))`
-/

namespace A354731.P16367120786528553328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A354688 (n + 1) - A354688 (n + 2)|

end

end A354731.P16367120786528553328

/-! ## A354731.P7279023184623700569

`A000188(Δ[A354688(n+1)]²)`
-/

namespace A354731.P7279023184623700569
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354688 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000188 ((f1 (n + 1) - f1 n) ^ 2).toNat

end

end A354731.P7279023184623700569

/-!
# A354733: a(0) = a(1) = 1; a(n) = 2 * Sum_{k=0..n-2} a(k) * a(n-k-2).

The programs for A354733, there is no canonical definition to state claims against.
-/

/-! ## A354733.P12225954671465980546

`A343228(A148875(n))`
-/

namespace A354733.P12225954671465980546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343228 (A148875 n).toNat

end

end A354733.P12225954671465980546

/-! ## A354733.P9054597362553837708

`A350786(A294410(n))`
-/

namespace A354733.P9054597362553837708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350786 (A294410 n).toNat

end

end A354733.P9054597362553837708

/-! ## A354733.P1626513136577666718

`A023190(A114464(n+1))`
-/

namespace A354733.P1626513136577666718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023190 (A114464 (n + 1)).toNat

end

end A354733.P1626513136577666718

/-! ## A354733.P15118635491185365433

`A371286(A008930(n+1))`
-/

namespace A354733.P15118635491185365433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371286 (A008930 (n + 1)).toNat

end

end A354733.P15118635491185365433

/-!
# A354734: a(0) = a(1) = 1; a(n) = 3 * Sum_{k=0..n-2} a(k) * a(n-k-2).

The programs for A354734, there is no canonical definition to state claims against.
-/

/-! ## A354734.P14706900157349050948

`A124288(A364593(n))`
-/

namespace A354734.P14706900157349050948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124288 (A364593 n).toNat

end

end A354734.P14706900157349050948

/-! ## A354734.P11927158346926714230

`A059261(A097566(n²))`
-/

namespace A354734.P11927158346926714230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059261 (A097566 (n ^ 2)).toNat

end

end A354734.P11927158346926714230

/-! ## A354734.P16379385080200921095

`A124288(A306844(n+1))`
-/

namespace A354734.P16379385080200921095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124288 (A306844 (n + 1)).toNat

end

end A354734.P16379385080200921095

/-!
# A354735: a(0) = a(1) = 1; a(n) = 4 * Sum_{k=0..n-2} a(k) * a(n-k-2).

The programs for A354735, there is no canonical definition to state claims against.
-/

/-! ## A354735.P12231706135651577022

`A340606(A269628(n))`
-/

namespace A354735.P12231706135651577022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340606 (A269628 n).toNat

end

end A354735.P12231706135651577022

/-! ## A354735.P4210136096906039701

`A340606(A359413(n+1)+A275443(n+2))`
-/

namespace A354735.P4210136096906039701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340606 (A359413 (n + 1) + A275443 (n + 2)).toNat

end

end A354735.P4210136096906039701

/-! ## A354735.P13945309459255140264

`A061070(n+1)*A162002(A215971(n+1))`
-/

namespace A354735.P13945309459255140264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061070 (n + 1) * A162002 (A215971 (n + 1)).toNat

end

end A354735.P13945309459255140264

/-!
# A354736: a(0) = a(1) = 1; a(n) = 5 * Sum_{k=0..n-2} a(k) * a(n-k-2).

The programs for A354736, there is no canonical definition to state claims against.
-/

/-! ## A354736.P6057682091820412650

`A261585(A085682(n+2))`
-/

namespace A354736.P6057682091820412650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261585 (A085682 (n + 2)).toNat

end

end A354736.P6057682091820412650

/-! ## A354736.P1772527376988087964

`A195778(∑{d}[A209673(n), #])`
-/

namespace A354736.P1772527376988087964
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209673 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195778 (∑ d ∈ Nat.divisors (f1 n).natAbs, d)

end

end A354736.P1772527376988087964

/-!
# A354737: a(0) = a(1) = 1; a(n) = n * Sum_{k=0..n-2} a(k) * a(n-k-2).

The programs for A354737, there is no canonical definition to state claims against.
-/

/-! ## A354737.P14299544782291568926

`A087086(A151404(n))`
-/

namespace A354737.P14299544782291568926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087086 (A151404 n).toNat

end

end A354737.P14299544782291568926

/-! ## A354737.P10667726639793521696

`A387881(A198304(n))`
-/

namespace A354737.P10667726639793521696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387881 (A198304 n).toNat

end

end A354737.P10667726639793521696

/-! ## A354737.P7434839144128287974

`A087086(A268172(n+1))`
-/

namespace A354737.P7434839144128287974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087086 (A268172 (n + 1)).toNat

end

end A354737.P7434839144128287974

/-!
# A354738: a(0) = a(1) = 1; a(n) = (n-1) * Sum_{k=0..n-2} a(k) * a(n-k-2).

The programs for A354738, there is no canonical definition to state claims against.
-/

/-! ## A354738.P5439178581170509178

`A117622(A352853(n))`
-/

namespace A354738.P5439178581170509178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117622 (A352853 n).toNat

end

end A354738.P5439178581170509178

/-! ## A354738.P14436909165882993389

`A125874(A071332(n+1))`
-/

namespace A354738.P14436909165882993389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125874 (A071332 (n + 1)).toNat

end

end A354738.P14436909165882993389

/-! ## A354738.P13856183292142168610

`A125874(A075223(n+1))`
-/

namespace A354738.P13856183292142168610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125874 (A075223 (n + 1)).toNat

end

end A354738.P13856183292142168610

/-!
# A354739: First differences of A354727.

The programs for A354739, there is no canonical definition to state claims against.
-/

/-! ## A354739.P2656777872146218650

`Δ[A354727(n+1)]`
-/

namespace A354739.P2656777872146218650
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354727 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A354739.P2656777872146218650

/-! ## A354739.P6185931018414421235

`A354727(n+2)-A354727(n+1)`
-/

namespace A354739.P6185931018414421235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354727 (n + 2) - A354727 (n + 1)

end

end A354739.P6185931018414421235

/-!
# A354741: Triangular array read by rows. T(n,k) is the number of n X n Boolean matrices with row rank k, n >= 0, 0 <= k <= n.

The programs for A354741, there is no canonical definition to state claims against.
-/

/-! ## A354741.P5225411894124910001

`∏{e}[3^n, A355333(#)]`
-/

namespace A354741.P5225411894124910001
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A355333 (Nat.factorization (f1 n) p)

end

end A354741.P5225411894124910001

/-! ## A354741.P8747294876022159792

`A028310(A355333(n))`
-/

namespace A354741.P8747294876022159792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A355333 n).toNat

end

end A354741.P8747294876022159792

/-! ## A354741.P8148756582880477594

`A355333(A055648(n))`
-/

namespace A354741.P8148756582880477594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355333 (A055648 n).toNat

end

end A354741.P8148756582880477594

/-! ## A354741.P7993322812480758911

`A355333(A129600(∑[n]))`
-/

namespace A354741.P7993322812480758911
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355333 (A129600 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A354741.P7993322812480758911

/-! ## A354741.P15469223358189505413

`A355333(A307297(∑[n]))`
-/

namespace A354741.P15469223358189505413
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355333 (A307297 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A354741.P15469223358189505413

/-!
# A354743: Smallest first term of arithmetic progression of exactly n primes with difference A033188(n).

The programs for A354743, there is no canonical definition to state claims against.
-/

/-! ## A354743.P326385834882205168

`A354744(n+1)-n*A033188(n+1)`
-/

namespace A354743.P326385834882205168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354744 (n + 1) - (n : ℤ) * A033188 (n + 1)

end

end A354743.P326385834882205168

/-! ## A354743.P17544279383743697412

`A033189(n+1)+A354744(n+1)-A113872(n+1)`
-/

namespace A354743.P17544279383743697412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033189 (n + 1) + (A354744 (n + 1) - A113872 (n + 1))

end

end A354743.P17544279383743697412

/-! ## A354743.P4186614309461236806

`A033189(n+1)+A354744(n+1)-A133276(∑[n+1])`
-/

namespace A354743.P4186614309461236806
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033189 (n + 1) + (A354744 (n + 1) - A133276 (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A354743.P4186614309461236806

/-! ## A354743.P14269010239289762129

`A354744(n+1)-n*(A133276(A133263(n))-A033189(n+1))`
-/

namespace A354743.P14269010239289762129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354744 (n + 1) - (n : ℤ) * (A133276 (A133263 n).toNat - A033189 (n + 1))

end

end A354743.P14269010239289762129

/-! ## A354743.P987774495690422169

`A354744(n+1)-n*A093364(n+1)%A112039(A030014(n+1))`
-/

namespace A354743.P987774495690422169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354744 (n + 1) - (n : ℤ) * Int.tmod (A093364 (n + 1)) (A112039 (A030014 (n + 1)).toNat)

end

end A354743.P987774495690422169

/-!
# A354744: Last term of arithmetic progression of exactly n primes with difference A033188(n) and first term = A354743(n).

The programs for A354744, there is no canonical definition to state claims against.
-/

/-! ## A354744.P5357173468588736071

`A354743(n+1)+n*A033188(n+1)`
-/

namespace A354744.P5357173468588736071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354743 (n + 1) + (n : ℤ) * A033188 (n + 1)

end

end A354744.P5357173468588736071

/-! ## A354744.P1495403765157716430

`A113872(n+1)+A354743(n+1)-A033189(n+1)`
-/

namespace A354744.P1495403765157716430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113872 (n + 1) + (A354743 (n + 1) - A033189 (n + 1))

end

end A354744.P1495403765157716430

/-! ## A354744.P9054533897012813859

`A133276(∑[n+1])+A354743(n+1)-A033189(n+1)`
-/

namespace A354744.P9054533897012813859
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133276 (∑ j ∈ Finset.range (n + 1), f1 j) + (A354743 (n + 1) - A033189 (n + 1))

end

end A354744.P9054533897012813859

/-! ## A354744.P3140773172789517106

`A354743(n+1)+n*(A133276(A133263(n))-A033189(n+1))`
-/

namespace A354744.P3140773172789517106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354743 (n + 1) + (n : ℤ) * (A133276 (A133263 n).toNat - A033189 (n + 1))

end

end A354744.P3140773172789517106

/-! ## A354744.P15808154965751322506

`A354743(n+1)+n*A093364(n+1)%A112039(A030014(n+1))`
-/

namespace A354744.P15808154965751322506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354743 (n + 1) + (n : ℤ) * Int.tmod (A093364 (n + 1)) (A112039 (A030014 (n + 1)).toNat)

end

end A354744.P15808154965751322506

/-!
# A354745: Non-repdigit numbers k such that every permutation of the digits of k has the same number of divisors.

The programs for A354745, there is no canonical definition to state claims against.
-/

/-! ## A354745.P17350596388781179268

`A350867(n+1)+A335460(A225812(n))`
-/

namespace A354745.P17350596388781179268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350867 (n + 1) + A335460 (A225812 n).toNat

end

end A354745.P17350596388781179268

/-!
# A354747: Start with 2*n-1; repeatedly triple and add 2 until reaching a prime. a(n) = number of steps until reaching a prime > 2*n-1, or 0 if no prime is ever reached.

The programs for A354747, there is no canonical definition to state claims against.
-/

/-! ## A354747.P5886290893856312914

`A343914(3*(n+1))+1`
-/

namespace A354747.P5886290893856312914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343914 (3 * (n + 1)) + 1

end

end A354747.P5886290893856312914

/-! ## A354747.P5846056174567055506

`or(A036468(A300649(3*n+2)), A179763(n+1))`
-/

namespace A354747.P5846056174567055506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A036468 (A300649 (3 * n + 2)).toNat) (A179763 (n + 1))

end

end A354747.P5846056174567055506

/-! ## A354747.P4886871601878120914

`A277822(A030036(xor(2, n)))`
-/

namespace A354747.P4886871601878120914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277822 (A030036 (Nat.xor 2 n)).toNat

end

end A354747.P4886871601878120914

/-! ## A354747.P8499972055847321680

`A003989(C(∑{d}[n+1, #], A003989(3*(n+1))))`
-/

namespace A354747.P8499972055847321680
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003989 (Nat.choose (∑ d ∈ Nat.divisors (f1 n), d) (A003989 (3 * (n + 1))).toNat)

end

end A354747.P8499972055847321680

/-! ## A354747.P2508695683705558990

`A067029(A114275(n+1)+A006330(n))`
-/

namespace A354747.P2508695683705558990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067029 (A114275 (n + 1) + A006330 n).toNat

end

end A354747.P2508695683705558990

/-!
# A354748: a(n) is the prime reached after A354747(n) steps when repeatedly applying the map x -> 3*x+2 to 2*n-1, or 0 if no prime is ever reached.

The programs for A354748, there is no canonical definition to state claims against.
-/

/-! ## A354748.P11076208062350617900

`p?[or(A078357(n+1)-1, A217470(n+1))]`
-/

namespace A354748.P11076208062350617900
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A078357 (n + 1) - 1) (A217470 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A354748.P11076208062350617900

/-! ## A354748.P12547515585628237657

`A058281(A099038(2*n))+A016957(n)`
-/

namespace A354748.P12547515585628237657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058281 (A099038 (2 * n)).toNat + A016957 n

end

end A354748.P12547515585628237657

/-! ## A354748.P8744271734124944697

`A162538(A077168(n)*A158315(3*n+2))`
-/

namespace A354748.P8744271734124944697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162538 (A077168 n * A158315 (3 * n + 2)).toNat

end

end A354748.P8744271734124944697

/-!
# A354749: a(1) = 1; for n > 1, a(n) is the smallest positive number greater than 1 that is coprime to a(n-1) and the product a(n) * a(n-1) is distinct from all previous products a(i) * a(i-1), i=2..n-1.

The programs for A354749, there is no canonical definition to state claims against.
-/

/-! ## A354749.P6294470159269458143

`A354759(n)/a(n-1)` with `a(0)=1`
-/

namespace A354749.P6294470159269458143
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (A354759 n : ℚ) / a (n - 1)

end

end A354749.P6294470159269458143

/-!
# A354751: Expansion of e.g.f. 1 / (1 - log(1 + 4*x) / 4).

The programs for A354751, there is no canonical definition to state claims against.
-/

/-! ## A354751.P12005989830134340311

`A057132(A263931(n))-A330467(n)`
-/

namespace A354751.P12005989830134340311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057132 (A263931 n).toNat - A330467 n

end

end A354751.P12005989830134340311

/-!
# A354752: a(n) = Sum_{k=0..n} Stirling1(n,k) * k! * n^(n-k).

The programs for A354752, there is no canonical definition to state claims against.
-/

/-! ## A354752.P10654082682751358356

`A096651((∑{e}[n+1, #]+1)*∑[n²])`
-/

namespace A354752.P10654082682751358356
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096651 ((∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p + 1) * (∑ j ∈ Finset.range (n + 1), f2 j))

end

end A354752.P10654082682751358356

/-!
# A354753: a(1) = 1, a(2) = 2; for n > 2, a(n) is the smallest positive number that shares a factor with a(n-1) and the product a(n) * a(n-1) is distinct from all previous products a(i) * a(i-1), i=2..n-1.

The programs for A354753, there is no canonical definition to state claims against.
-/

/-! ## A354753.P2773889923514463663

`A354754(n)/a(n-1)` with `a(0)=1`
-/

namespace A354753.P2773889923514463663
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (A354754 n : ℚ) / a (n - 1)

end

end A354753.P2773889923514463663

/-!
# A354754: The products of consecutive terms in A354753.

The programs for A354754, there is no canonical definition to state claims against.
-/

/-! ## A354754.P17281118913834231036

`A354753(n+1)*A354753(n+2)`
-/

namespace A354754.P17281118913834231036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354753 (n + 1) * A354753 (n + 2)

end

end A354754.P17281118913834231036

/-!
# A354755: a(1) = 1, a(2) = 2; for n > 2, a(n) is the smallest positive number that shares a factor with a(n-1) and the sum a(n) + a(n-1) is distinct from all previous sums a(i) + a(i-1), i=2..n-1.

The programs for A354755, there is no canonical definition to state claims against.
-/

/-! ## A354755.P11761586840324102138

`A354858(n+1)%A354217(n+1)`
-/

namespace A354755.P11761586840324102138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A354858 (n + 1)) (A354217 (n + 1))

end

end A354755.P11761586840324102138

/-! ## A354755.P3002778895137890802

`and(A354858(n+1), A387410(n+1))`
-/

namespace A354755.P3002778895137890802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A354858 (n + 1)) (A387410 (n + 1))

end

end A354755.P3002778895137890802

/-! ## A354755.P8758745303684423244

`A096668(A096667(A354858(n+1)))`
-/

namespace A354755.P8758745303684423244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096668 (A096667 (A354858 (n + 1)).toNat).toNat

end

end A354755.P8758745303684423244

/-! ## A354755.P14687055543975845775

`A354858(n+1)+A000007(A053798(n))`
-/

namespace A354755.P14687055543975845775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354858 (n + 1) + A000007 (A053798 n).toNat

end

end A354755.P14687055543975845775

/-! ## A354755.P13272024689134712563

`A354858(n+1)+A000007(A106516(n))`
-/

namespace A354755.P13272024689134712563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354858 (n + 1) + A000007 (A106516 n).toNat

end

end A354755.P13272024689134712563

/-!
# A354757: a(n) = Sum_{k = ceiling(n/2)..n-1} A354169(k).

The programs for A354757, there is no canonical definition to state claims against.
-/

/-! ## A354757.P4220273817457235112

`A338741(floor(A011782(n)/2)+1)`
-/

namespace A354757.P4220273817457235112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338741 (⌊(A011782 n : ℚ) / 2⌋ + 1).toNat

end

end A354757.P4220273817457235112

/-!
# A354758: a(n) = Product_{k = ceiling(n/2)..n-1} A090252(k).

The programs for A354758, there is no canonical definition to state claims against.
-/

/-! ## A354758.P16177335703860061089

`A086876(A326341(n))*A355057(n+1)`
-/

namespace A354758.P16177335703860061089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086876 (A326341 n).toNat * A355057 (n + 1)

end

end A354758.P16177335703860061089

/-! ## A354758.P4386504151286005251

`A119319(A078513(n+1))*A355057(A085182(n+1))`
-/

namespace A354758.P4386504151286005251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119319 (A078513 (n + 1)).toNat * A355057 (A085182 (n + 1)).toNat

end

end A354758.P4386504151286005251

/-! ## A354758.P16836831094200465179

`A064989(record[A056040(n)])`
-/

namespace A354758.P16836831094200465179
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056040 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064989 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A354758.P16836831094200465179

/-!
# A354759: The products of pairs of consecutive terms in A354749.

The programs for A354759, there is no canonical definition to state claims against.
-/

/-! ## A354759.P11802609147293292324

`A354749(n+1)*A354749(n+2)`
-/

namespace A354759.P11802609147293292324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354749 (n + 1) * A354749 (n + 2)

end

end A354759.P11802609147293292324

/-! ## A354759.P13146902668351131245

`lcm(A354749(A020725(n+1)), A354749(n+1))`
-/

namespace A354759.P13146902668351131245
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A354749 (A020725 (n + 1)).toNat) (A354749 (n + 1))

end

end A354759.P13146902668351131245

/-! ## A354759.P9247790759087638863

`lcm(A354749(A028310(n+1)), A354749(n+2))`
-/

namespace A354759.P9247790759087638863
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A354749 (A028310 (n + 1)).toNat) (A354749 (n + 2))

end

end A354759.P9247790759087638863

/-!
# A354760: a(0) = 0; for n >= 1, a(n) = a(n - A054055(n)) + 1.

The programs for A354760, the canonical program `A354760.P8419242829746623981` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A354760 has offset 0).

The definition of A354760 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A054055, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A354760.P8419242829746623981

`1+a(n-A054055(n))` with `a(0)=0`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A354760

/-- `1+a(n-A054055(n))` -/
def P8419242829746623981.Spec : Prop :=
  ∀ n, (P8419242829746623981.a n : ℤ) = A354760 n

theorem P8419242829746623981.correct : P8419242829746623981.Spec := by
  intro n
  simp only [A354760]

end A354760

/-! ## A354760.P10902366094151528152

`a(n-A054055(n))+1` with `a(0)=0, a(1)=1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A354760.P10902366094151528152
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n a =>
  a ((n : ℤ) - A054055 n).toNat + 1

end

end A354760.P10902366094151528152

namespace A354760

/-- `a(n-A054055(n))+1` -/
def P10902366094151528152.Spec : Prop :=
  ∀ n, (P10902366094151528152.a n : ℤ) = A354760 n

end A354760

/-! ## A354760.P6513642932774815019

`a(n-val(A069877(n), 2))+1` with `a(0)=0`
-/

namespace A354760.P6513642932774815019
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a (n - SequenceMachineLib.valuation (A069877 n).toNat 2) + 1

end

end A354760.P6513642932774815019

namespace A354760

/-- `a(n-val(A069877(n), 2))+1` -/
def P6513642932774815019.Spec : Prop :=
  ∀ n, (P6513642932774815019.a n : ℤ) = A354760 n

end A354760

/-! ## A354760.P7364570946455997865

`a(n-A004185(n)%10)+1` with `a(0)=0`
-/

namespace A354760.P7364570946455997865
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a ((n : ℤ) - Int.tmod (A004185 n) 10).toNat + 1

end

end A354760.P7364570946455997865

namespace A354760

/-- `a(n-A004185(n)%10)+1` -/
def P7364570946455997865.Spec : Prop :=
  ∀ n, (P7364570946455997865.a n : ℤ) = A354760 n

end A354760

/-! ## A354760.P11711678442811412323

`a(n-A047842(n)%10)+1` with `a(0)=0`
-/

namespace A354760.P11711678442811412323
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a ((n : ℤ) - Int.tmod (A047842 n) 10).toNat + 1

end

end A354760.P11711678442811412323

namespace A354760

/-- `a(n-A047842(n)%10)+1` -/
def P11711678442811412323.Spec : Prop :=
  ∀ n, (P11711678442811412323.a n : ℤ) = A354760 n

end A354760

/-! ## A354760.P9357649565802100340

`a(n-A355222(n)%10)+1` with `a(0)=0`
-/

namespace A354760.P9357649565802100340
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a ((n : ℤ) - Int.tmod (A355222 n) 10).toNat + 1

end

end A354760.P9357649565802100340

namespace A354760

/-- `a(n-A355222(n)%10)+1` -/
def P9357649565802100340.Spec : Prop :=
  ∀ n, (P9357649565802100340.a n : ℤ) = A354760 n

end A354760

/-! ## A354760.P8069373487137454652

`a(n-floor(log2(A086066(n))))+1` with `a(0)=0`
-/

namespace A354760.P8069373487137454652
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a (n - Nat.log 2 (A086066 n).toNat) + 1

end

end A354760.P8069373487137454652

namespace A354760

/-- `a(n-floor(log2(A086066(n))))+1` -/
def P8069373487137454652.Spec : Prop :=
  ∀ n, (P8069373487137454652.a n : ℤ) = A354760 n

end A354760

/-! ## A354760.P11707829088279062516

`a(n-(n-A193581(n))%10)+1` with `a(0)=0`
-/

namespace A354760.P11707829088279062516
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a ((n : ℤ) - Int.tmod ((n : ℤ) - A193581 n) 10).toNat + 1

end

end A354760.P11707829088279062516

namespace A354760

/-- `a(n-(n-A193581(n))%10)+1` -/
def P11707829088279062516.Spec : Prop :=
  ∀ n, (P11707829088279062516.a n : ℤ) = A354760 n

end A354760

/-! ## A354760.P17066069133699032065

`a(n-A000030(A004186(n)))+1` with `a(0)=0`
-/

namespace A354760.P17066069133699032065
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a ((n : ℤ) - A000030 (A004186 n).toNat).toNat + 1

end

end A354760.P17066069133699032065

namespace A354760

/-- `a(n-A000030(A004186(n)))+1` -/
def P17066069133699032065.Spec : Prop :=
  ∀ n, (P17066069133699032065.a n : ℤ) = A354760 n

end A354760

/-!
# A354761: Least number of squares and cubes that add up to n.

The programs for A354761, there is no canonical definition to state claims against.
-/

/-! ## A354761.P6384075499478760255

`A185264(A318679(n+5))+A063274(n+1)`
-/

namespace A354761.P6384075499478760255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185264 (A318679 (n + 5)).toNat + A063274 (n + 1)

end

end A354761.P6384075499478760255

/-! ## A354761.P2750248829418120086

`A274459(n+1)+A079684(A359893(2*n+3))`
-/

namespace A354761.P2750248829418120086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274459 (n + 1) + A079684 (A359893 (2 * n + 3)).toNat

end

end A354761.P2750248829418120086

/-! ## A354761.P6434155710820403651

`A274459(n+1)*A353745(A319504(2*(n+1)))`
-/

namespace A354761.P6434155710820403651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274459 (n + 1) * A353745 (A319504 (2 * (n + 1))).toNat

end

end A354761.P6434155710820403651

/-! ## A354761.P16643542121540137294

`A082784(A285001(n+1))+A063274(n+1)`
-/

namespace A354761.P16643542121540137294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082784 (A285001 (n + 1)).toNat + A063274 (n + 1)

end

end A354761.P16643542121540137294

/-!
# A354762: Irregular triangle read by rows in which the row n lists the partition of n into the minimum number of triangular parts.

The programs for A354762, there is no canonical definition to state claims against.
-/

/-! ## A354762.P4919752456809731148

`A338653(A107717(n)+A000203(3*(n+1)))`
-/

namespace A354762.P4919752456809731148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338653 (A107717 n + A000203 (3 * (n + 1))).toNat

end

end A354762.P4919752456809731148

/-!
# A354764: Squarefree kernel of A090252(n) (cf. A007947).

The programs for A354764, there is no canonical definition to state claims against.
-/

/-! ## A354764.P14951866266282105000

`∏{p}[A090252(n+1), #]`
-/

namespace A354764.P14951866266282105000
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090252 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A354764.P14951866266282105000

/-! ## A354764.P4297774382962182670

`A007947(A090252(n+1))`
-/

namespace A354764.P4297774382962182670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (A090252 (n + 1)).toNat

end

end A354764.P4297774382962182670

/-! ## A354764.P379545192926918881

`A052410(A090252(n+1)²)`
-/

namespace A354764.P379545192926918881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052410 (A090252 (n + 1) ^ 2).toNat

end

end A354764.P379545192926918881

/-! ## A354764.P10941866258919632276

`∏{p}[A008578(n+1)-A354154(n+1), #]`
-/

namespace A354764.P10941866258919632276
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1) - A354154 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A354764.P10941866258919632276

/-! ## A354764.P12278915255115700674

`∏{p}[record[A006530(n+1)]-A354154(n+1), #]`
-/

namespace A354764.P12278915255115700674
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n) - A354154 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A354764.P12278915255115700674

/-! ## A354764.P1233168902113270725

`∏{p}[record[A014963(n+1)]-A354154(n+1), #]`
-/

namespace A354764.P1233168902113270725
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n) - A354154 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A354764.P1233168902113270725

/-! ## A354764.P6239229417408025518

`∏{p}[record[A020639(n+1)]-A354154(n+1), #]`
-/

namespace A354764.P6239229417408025518
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n) - A354154 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A354764.P6239229417408025518

/-! ## A354764.P2716888711512163470

`A015052(A090252(n+1)%A022005(n+1))`
-/

namespace A354764.P2716888711512163470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015052 (Int.tmod (A090252 (n + 1)) (A022005 (n + 1))).toNat

end

end A354764.P2716888711512163470

/-! ## A354764.P1385037629708103787

`A015052(A090252(n+1))%A030078(n+1)`
-/

namespace A354764.P1385037629708103787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A015052 (A090252 (n + 1)).toNat) (A030078 (n + 1))

end

end A354764.P1385037629708103787

/-! ## A354764.P4180189307758985437

`A052410(A090252(n+1)+A007814(2*n+5))`
-/

namespace A354764.P4180189307758985437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052410 (A090252 (n + 1) + A007814 (2 * n + 5)).toNat

end

end A354764.P4180189307758985437

/-!
# A354765: a(n) is a binary encoded version of A355057(n).

The programs for A354765, there is no canonical definition to state claims against.
-/

/-! ## A354765.P16112498028992363564

`∑{p}[A355057(n+1), A048675(#)]`
-/

namespace A354765.P16112498028992363564
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355057 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A048675 p

end

end A354765.P16112498028992363564

/-! ## A354765.P8583814647428808453

`∑{p}[A355057(n+1), A087207(#)]`
-/

namespace A354765.P8583814647428808453
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355057 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A087207 p

end

end A354765.P8583814647428808453

/-! ## A354765.P15858776118669115610

`∑{p}[A355057(n+1), A253566(#)]`
-/

namespace A354765.P15858776118669115610
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355057 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A253566 p

end

end A354765.P15858776118669115610

/-! ## A354765.P1754692126808866674

`∑{p}[A355057(n+1), A292382(#)]`
-/

namespace A354765.P1754692126808866674
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355057 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A292382 p

end

end A354765.P1754692126808866674

/-! ## A354765.P14608366242151931174

`∑{p}[A354758(n+1), A048675(#)]`
-/

namespace A354765.P14608366242151931174
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354758 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A048675 p

end

end A354765.P14608366242151931174

/-!
# A354766: 1/4 of the total number of integral quadruples with sum = n and sum of squares = n^2.

The programs for A354766, the canonical program `A354766.P686189450615748879` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A354766 has offset 1).

The definition of A354766 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 650 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A354766.P686189450615748879

`∑{d}[n+1, A000593(#)*A365428((n+1)/#)]`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A354766

/-- `∑{d}[n+1, A000593(#)*A365428((n+1)/#)]` -/
def P686189450615748879.Spec : Prop :=
  ∀ n, P686189450615748879.a n = A354766 (n + 1)

theorem P686189450615748879.correct : P686189450615748879.Spec := by
  intro n
  simp only [A354766, Nat.add_sub_cancel]

end A354766

/-! ## A354766.P2313856202497986597

`∑{d}[n+1, A033999(#-1)*A227128((n+1)/#)]`
-/

namespace A354766.P2313856202497986597
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A033999 (d - 1) * A227128 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A354766.P2313856202497986597

namespace A354766

/-- `∑{d}[n+1, A033999(#-1)*A227128((n+1)/#)]` -/
def P2313856202497986597.Spec : Prop :=
  ∀ n, P2313856202497986597.a n = A354766 (n + 1)

end A354766

/-! ## A354766.P15707321161267585685

`∑{d}[n+1, A278085(#)]`
-/

namespace A354766.P15707321161267585685
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A278085 d

end

end A354766.P15707321161267585685

namespace A354766

/-- `∑{d}[n+1, A278085(#)]` -/
def P15707321161267585685.Spec : Prop :=
  ∀ n, P15707321161267585685.a n = A354766 (n + 1)

end A354766

/-! ## A354766.P5320540691710304818

`A354778(n+1)/4`
-/

namespace A354766.P5320540691710304818
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A354778 (n + 1) : ℚ) / 4

end

end A354766.P5320540691710304818

namespace A354766

/-- `A354778(n+1)/4` -/
def P5320540691710304818.Spec : Prop :=
  ∀ n, P5320540691710304818.a n = (A354766 (n + 1) : ℚ)

end A354766

/-! ## A354766.P16723246990653893639

`A002265(A354778(n+1))`
-/

namespace A354766.P16723246990653893639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A354778 (n + 1)).toNat

end

end A354766.P16723246990653893639

namespace A354766

/-- `A002265(A354778(n+1))` -/
def P16723246990653893639.Spec : Prop :=
  ∀ n, P16723246990653893639.a n = A354766 (n + 1)

end A354766

/-! ## A354766.P4590534671861639320

`A080917(A033428(n+1))/4`
-/

namespace A354766.P4590534671861639320
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A080917 (A033428 (n + 1)).toNat : ℚ) / 4

end

end A354766.P4590534671861639320

namespace A354766

/-- `A080917(A033428(n+1))/4` -/
def P4590534671861639320.Spec : Prop :=
  ∀ n, P4590534671861639320.a n = (A354766 (n + 1) : ℚ)

end A354766

/-! ## A354766.P10102868923052842269

`Δ[∑[A080917(A033428(n))]/4]`
-/

namespace A354766.P10102868923052842269
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080917 (A033428 n).toNat

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℤ) : ℚ) / 4

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A354766.P10102868923052842269

namespace A354766

/-- `Δ[∑[A080917(A033428(n))]/4]` -/
def P10102868923052842269.Spec : Prop :=
  ∀ n, P10102868923052842269.a n = (A354766 (n + 1) : ℚ)

end A354766

/-!
# A354767: Indices of terms in A354169 that have Hamming weight 1.

The programs for A354767, there is no canonical definition to state claims against.
-/

/-! ## A354767.P15028732443822791179

`eq[1, A355150(n)]`
-/

namespace A354767.P15028732443822791179
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355150 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A354767.P15028732443822791179

/-! ## A354767.P18060985831105419170

`comp[A354798(n+1)]`
-/

namespace A354767.P18060985831105419170
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354798 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A354767.P18060985831105419170

/-! ## A354767.P3972169853065525317

`lt[A355150(n), A266073(n)]`
-/

namespace A354767.P3972169853065525317
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355150 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266073 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A354767.P3972169853065525317

/-! ## A354767.P6158516811329631326

`lt[A355150(n), A266258(n)]`
-/

namespace A354767.P6158516811329631326
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355150 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266258 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A354767.P6158516811329631326

/-! ## A354767.P7172641089751822924

`record[A004442(xor(n, A355150(n)))]`
-/

namespace A354767.P7172641089751822924
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (Int.xor (n : ℤ) (A355150 n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A354767.P7172641089751822924

/-! ## A354767.P17944810316294173097

`eq[char[A354798(n+1)], A000038(n)]`
-/

namespace A354767.P17944810316294173097
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354798 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A354767.P17944810316294173097

/-! ## A354767.P8322730333716436724

`lt[A355150(n), atan(A354798(n+1))]`
-/

namespace A354767.P8322730333716436724
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355150 n

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.arctan (A354798 (n + 1) : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A354767.P8322730333716436724

/-! ## A354767.P5011444403289393013

`lt[cosh(A355150(n)), A272565(n+1)]`
-/

namespace A354767.P5011444403289393013
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.cosh (A355150 n : ℝ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272565 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℝ)) n

end

end A354767.P5011444403289393013

/-! ## A354767.P15951643415211365035

`lt[atan(A355150(n)), A355150(2*n)]`
-/

namespace A354767.P15951643415211365035
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.arctan (A355150 n : ℝ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355150 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℝ)) n

end

end A354767.P15951643415211365035

/-! ## A354767.P12394994148051773320

`lt[A355150(n+1), A272565(n+2)]+1`
-/

namespace A354767.P12394994148051773320
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355150 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272565 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A354767.P12394994148051773320

/-! ## A354767.P4903404445752116317

`lt[A355150(n), A163894(n)]`
-/

namespace A354767.P4903404445752116317
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355150 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163894 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A354767.P4903404445752116317

/-! ## A354767.P14718252882794405300

`lt[A354757(n), A354169(n)]`
-/

namespace A354767.P14718252882794405300
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354757 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354169 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A354767.P14718252882794405300

/-! ## A354767.P4295021129759168718

`lt[A354169(abs(1-n)), A354169(n)]`
-/

namespace A354767.P4295021129759168718
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354169 |1 - (n : ℤ)|.toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354169 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A354767.P4295021129759168718

/-! ## A354767.P10923230110842621527

`lt[A355150(n), atan(A354680(n+1))]`
-/

namespace A354767.P10923230110842621527
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355150 n

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.arctan (A354680 (n + 1) : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A354767.P10923230110842621527

/-! ## A354767.P4463423354707170371

`eq[1, A001222(A355701(n))]`
-/

namespace A354767.P4463423354707170371
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A355701 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A354767.P4463423354707170371

/-!
# A354768: Numbers k such that d(k)/k >= d(m)/m for all m > k, where d(k) is the number-of-divisors function A000005(k).

The programs for A354768, there is no canonical definition to state claims against.
-/

/-! ## A354768.P7082969166817143965

`record[A368523(n+1)]`
-/

namespace A354768.P7082969166817143965
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368523 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A354768.P7082969166817143965

/-! ## A354768.P12207479336209383583

`∩[A034090(n+1), A087066(n)]`
-/

namespace A354768.P12207479336209383583
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034090 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087066 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A354768.P12207479336209383583

/-! ## A354768.P10629299148395404268

`lt[A107129(n), A057643(n+1)]+1`
-/

namespace A354768.P10629299148395404268
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107129 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057643 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A354768.P10629299148395404268

/-! ## A354768.P14891032610036479483

`lt[A033754(A033754(n)), A320305(n)²]`
-/

namespace A354768.P14891032610036479483
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033754 (A033754 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320305 n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A354768.P14891032610036479483

/-! ## A354768.P9313654513377897435

`record[A335462(n+1)+A324655(n)]`
-/

namespace A354768.P9313654513377897435
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335462 (n + 1) + A324655 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A354768.P9313654513377897435

/-!
# A354769: Numbers k such that d(k)/k = sup {d(m)/m | m > k}, where d(k) is the number-of-divisors function A000005(k).

The programs for A354769, there is no canonical definition to state claims against.
-/

/-! ## A354769.P1286049723254665956

`A057335(A072639(n)+A065775(n))`
-/

namespace A354769.P1286049723254665956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057335 (A072639 n + A065775 n).toNat

end

end A354769.P1286049723254665956

/-!
# A354770: Numbers k such that d(k)/log(k) sets a new record, where d(k) is the number-of-divisors function A000005(k).

The programs for A354770, there is no canonical definition to state claims against.
-/

/-! ## A354770.P11435316278139045632

`filter[A210594(n+1), A380484(#)]`
-/

namespace A354770.P11435316278139045632
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210594 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A380484 (f1 j).toNat = 1) n)

end

end A354770.P11435316278139045632

/-! ## A354770.P1772746000220154937

`A004778(n+5)%A163943(A210594(n+1))`
-/

namespace A354770.P1772746000220154937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004778 (n + 5)) (A163943 (A210594 (n + 1)).toNat)

end

end A354770.P1772746000220154937

/-!
# A354771: Sum-critical values for the divergent series Sum_{k=1..oo} 1/sqrt(k).

The programs for A354771, there is no canonical definition to state claims against.
-/

/-! ## A354771.P10226213661726991623

`A335469(A335473(n))+A001576(n)`
-/

namespace A354771.P10226213661726991623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335469 (A335473 n).toNat + A001576 n

end

end A354771.P10226213661726991623

/-! ## A354771.P9459991510913485359

`4^n+A340215(n+1)+A293137(A150027(n))`
-/

namespace A354771.P9459991510913485359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 ^ n : ℤ) + (A340215 (n + 1) + A293137 (A150027 n).toNat)

end

end A354771.P9459991510913485359

/-!
# A354773: For terms of A354169 that are the sum of two distinct powers of 2, the exponent of the smaller power of 2.

The programs for A354773, there is no canonical definition to state claims against.
-/

/-! ## A354773.P548790766868871872

`A355889(A354798(n+2)+n)`
-/

namespace A354773.P548790766868871872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355889 (A354798 (n + 2) + (n : ℤ)).toNat

end

end A354773.P548790766868871872

/-! ## A354773.P6552845415578054972

`val(A354680(n+2), 2)`
-/

namespace A354773.P6552845415578054972
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A354680 (n + 2)).toNat 2

end

end A354773.P6552845415578054972

/-! ## A354773.P590241496936058283

`A135523(A354680(n+2))`
-/

namespace A354773.P590241496936058283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135523 (A354680 (n + 2)).toNat

end

end A354773.P590241496936058283

/-! ## A354773.P6411314989111998559

`A023416(gcd(A000079(2*(n+2)), A354680(n+2)))`
-/

namespace A354773.P6411314989111998559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023416 (Int.gcd (A000079 (2 * (n + 2))) (A354680 (n + 2)))

end

end A354773.P6411314989111998559

/-!
# A354774: For terms of A354169 that are the sum of two distinct powers of 2, the exponent of the larger power of 2.

The programs for A354774, there is no canonical definition to state claims against.
-/

/-! ## A354774.P9520430170581688035

`A355889(A354798(n+2)+n+1)`
-/

namespace A354774.P9520430170581688035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355889 (A354798 (n + 2) + (n + 1 : ℤ)).toNat

end

end A354774.P9520430170581688035

/-! ## A354774.P2922587962385052747

`floor(log2(A354680(n+2)))`
-/

namespace A354774.P2922587962385052747
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.log 2 (A354680 (n + 2)).toNat

end

end A354774.P2922587962385052747

/-! ## A354774.P12748709563126501544

`A290251(A354680(n+2))`
-/

namespace A354774.P12748709563126501544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290251 (A354680 (n + 2)).toNat

end

end A354774.P12748709563126501544

/-!
# A354776: Even numbers that are the sum of two squares; also numbers which are twice the sum of two squares.

The programs for A354776, there is no canonical definition to state claims against.
-/

/-! ## A354776.P5505969865614532796

`lt[0, A104794(n)]`
-/

namespace A354776.P5505969865614532796
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104794 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A354776.P5505969865614532796

/-! ## A354776.P13139578481555300065

`lt[0, A256282(n)]`
-/

namespace A354776.P13139578481555300065
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256282 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A354776.P13139578481555300065

/-! ## A354776.P3494303794722824716

`comp[or(n, A229062(n))]`
-/

namespace A354776.P3494303794722824716
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n : ℤ) (A229062 n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A354776.P3494303794722824716

/-! ## A354776.P2131643148758203862

`2*A001481(n+1)`
-/

namespace A354776.P2131643148758203862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A001481 (n + 1)

end

end A354776.P2131643148758203862

/-! ## A354776.P7717530803908701919

`2*eq[0, A070176(n)]`
-/

namespace A354776.P7717530803908701919
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070176 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A354776.P7717530803908701919

/-! ## A354776.P1890088690202753335

`2*lt[0, A000161(n)]`
-/

namespace A354776.P1890088690202753335
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000161 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A354776.P1890088690202753335

/-! ## A354776.P15394993440066207302

`2*lt[0, A000925(n)]`
-/

namespace A354776.P15394993440066207302
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000925 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A354776.P15394993440066207302

/-! ## A354776.P16474895190066243818

`2*lt[0, A004018(n)]`
-/

namespace A354776.P16474895190066243818
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004018 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A354776.P16474895190066243818

/-! ## A354776.P12000909732954833775

`2*lt[A002828(n), 3]`
-/

namespace A354776.P12000909732954833775
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002828 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A354776.P12000909732954833775

/-! ## A354776.P17936739317313377154

`filter[2*n, A229062(#)]`
-/

namespace A354776.P17936739317313377154
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A229062 (f1 j) = 1) n)

end

end A354776.P17936739317313377154

/-!
# A354778: Number of integer quadruples (u,v,w,x) such that u^2+v^2+w^2+x^2 = n^2 and u+v+w+x = n.

The programs for A354778, there is no canonical definition to state claims against.
-/

/-! ## A354778.P15933711923251956031

`A261394(n²)/A000034(n)`
-/

namespace A354778.P15933711923251956031
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A261394 (n ^ 2) : ℚ) / (A000034 n : ℚ)

end

end A354778.P15933711923251956031

/-! ## A354778.P5309070035675574836

`A080917(3*n²)`
-/

namespace A354778.P5309070035675574836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080917 (3 * n ^ 2)

end

end A354778.P5309070035675574836

/-! ## A354778.P16033646641856568481

`and(-3, A080917(A033428(n)))`
-/

namespace A354778.P16033646641856568481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-3) (A080917 (A033428 n).toNat)

end

end A354778.P16033646641856568481

/-! ## A354778.P6939860534337809175

`A005875(A033428(n))/A000034(n)`
-/

namespace A354778.P6939860534337809175
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005875 (A033428 n).toNat : ℚ) / (A000034 n : ℚ)

end

end A354778.P6939860534337809175

/-! ## A354778.P7395979315479798356

`A080917(A033428(n))%A046364(n)`
-/

namespace A354778.P7395979315479798356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A080917 (A033428 n).toNat) (A046364 n)

end

end A354778.P7395979315479798356

/-! ## A354778.P6345978322940460102

`gcd(A000038(n), A080917(A033428(n)))`
-/

namespace A354778.P6345978322940460102
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A080917 (A033428 n).toNat)

end

end A354778.P6345978322940460102

/-! ## A354778.P15952891064457583127

`lcm(A010685(n), A080917(A033428(n)))`
-/

namespace A354778.P15952891064457583127
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A010685 n) (A080917 (A033428 n).toNat)

end

end A354778.P15952891064457583127

/-! ## A354778.P704337442904821078

`A010685(2*n)*A080917(A033428(n))`
-/

namespace A354778.P704337442904821078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010685 (2 * n) * A080917 (A033428 n).toNat

end

end A354778.P704337442904821078

/-! ## A354778.P5997636049562532232

`A080917(A033428(n))+C(2, A000045(n+6))`
-/

namespace A354778.P5997636049562532232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080917 (A033428 n).toNat + (Nat.choose 2 (A000045 (n + 6)).toNat : ℤ)

end

end A354778.P5997636049562532232

/-! ## A354778.P15094761816566345548

`A080917(A033428(n))+A000045(2*n-n)-A000045(n)`
-/

namespace A354778.P15094761816566345548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080917 (A033428 n).toNat + (A000045 (2 * n - n) - A000045 n)

end

end A354778.P15094761816566345548

/-!
# A354779: a(0), ..., a(5) are 0, 1, 2, 3, 3, 3; thereafter if n == 0 mod 4 then a(n) = n/2; if n == 1 mod 4, (n+1)/2; 2 mod 4, (n+2)/2; 3 mod 4, (n+1)/2.

The programs for A354779, the canonical program `A354779.P14123866738255454277` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A354779 has offset 0).

The definition of A354779 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A354779.P7034378621808810129

`∑[char[a(n-2)+4]]` with `a(0)=3, a(1)=1, a(2)=-10, a(3)=9`
-/

namespace A354779.P7034378621808810129
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [3, 1, -10, 9] fun n f2 =>
  f2 (n - 2) + 4

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A354779.P7034378621808810129

namespace A354779

/-- `∑[char[a(n-2)+4]]` -/
def P7034378621808810129.Spec : Prop :=
  ∀ n, (P7034378621808810129.a n : ℤ) = A354779 n

end A354779

/-! ## A354779.P14123866738255454277

`n-a(n-2)` with `a(0)=0, a(1)=1, a(2)=2, a(3)=3, a(4)=3, a(5)=3, a(6)=4`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A354779

/-- `n-a(n-2)` -/
def P14123866738255454277.Spec : Prop :=
  ∀ n, P14123866738255454277.a n = A354779 n

theorem P14123866738255454277.correct : P14123866738255454277.Spec := by
  intro n
  simp only [A354779]

end A354779

/-! ## A354779.P4027670486985513078

`∑[∑[A298801(n)]%2]`
-/

namespace A354779.P4027670486985513078
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298801 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f2 j) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A354779.P4027670486985513078

namespace A354779

/-- `∑[∑[A298801(n)]%2]` -/
def P4027670486985513078.Spec : Prop :=
  ∀ n, P4027670486985513078.a n = A354779 n

end A354779

/-! ## A354779.P9692779704641870420

`∑[∑{e}[and(2, A299231(n+1)-n), #]]`
-/

namespace A354779.P9692779704641870420
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 2 (A299231 (n + 1) - (n : ℤ))

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n).natAbs, Nat.factorization (f2 n).natAbs p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A354779.P9692779704641870420

namespace A354779

/-- `∑[∑{e}[and(2, A299231(n+1)-n), #]]` -/
def P9692779704641870420.Spec : Prop :=
  ∀ n, (P9692779704641870420.a n : ℤ) = A354779 n

end A354779

/-! ## A354779.P5723392466587449208

`∑[∑[C(A072376(n+1), 2)+n]%2]`
-/

namespace A354779.P5723392466587449208
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A072376 (n + 1)).toNat 2 + n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) % 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A354779.P5723392466587449208

namespace A354779

/-- `∑[∑[C(A072376(n+1), 2)+n]%2]` -/
def P5723392466587449208.Spec : Prop :=
  ∀ n, (P5723392466587449208.a n : ℤ) = A354779 n

end A354779

/-! ## A354779.P17130518113591990290

`∑[A069099(abs(4-abs(2-n))+1)%2]`
-/

namespace A354779.P17130518113591990290
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A069099 (|(4 - |2 - (n : ℤ)|)| + 1).toNat) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A354779.P17130518113591990290

namespace A354779

/-- `∑[A069099(abs(4-abs(2-n))+1)%2]` -/
def P17130518113591990290.Spec : Prop :=
  ∀ n, P17130518113591990290.a n = A354779 n

end A354779

/-! ## A354779.P10410662113035202847

`A355067(n+3)-A059169(n+1)`
-/

namespace A354779.P10410662113035202847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355067 (n + 3) - A059169 (n + 1)

end

end A354779.P10410662113035202847

namespace A354779

/-- `A355067(n+3)-A059169(n+1)` -/
def P10410662113035202847.Spec : Prop :=
  ∀ n, P10410662113035202847.a n = A354779 n

end A354779

/-! ## A354779.P8561919828043616311

`∑[∑[lt[n, A014473(n)²]]%2]`
-/

namespace A354779.P8561919828043616311
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014473 n ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f3 j : ℤ) < f4 j) n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) % 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A354779.P8561919828043616311

namespace A354779

/-- `∑[∑[lt[n, A014473(n)²]]%2]` -/
def P8561919828043616311.Spec : Prop :=
  ∀ n, (P8561919828043616311.a n : ℤ) = A354779 n

end A354779

/-! ## A354779.P8134609759785945552

`∑[∑[lt[2*n, A007318(n)]]%2]`
-/

namespace A354779.P8134609759785945552
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f3 j : ℤ) < f4 j) n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) % 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A354779.P8134609759785945552

namespace A354779

/-- `∑[∑[lt[2*n, A007318(n)]]%2]` -/
def P8134609759785945552.Spec : Prop :=
  ∀ n, (P8134609759785945552.a n : ℤ) = A354779 n

end A354779

/-! ## A354779.P1350260463988792582

`∑[C(A270677(6*n)+n, 2)%2]`
-/

namespace A354779.P1350260463988792582
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A270677 (6 * n) + (n : ℤ)).toNat 2 % 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A354779.P1350260463988792582

namespace A354779

/-- `∑[C(A270677(6*n)+n, 2)%2]` -/
def P1350260463988792582.Spec : Prop :=
  ∀ n, (P1350260463988792582.a n : ℤ) = A354779 n

end A354779

/-! ## A354779.P6380196320482084927

`A307707(A301758(n+1))`
-/

namespace A354779.P6380196320482084927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307707 (A301758 (n + 1)).toNat

end

end A354779.P6380196320482084927

namespace A354779

/-- `A307707(A301758(n+1))` -/
def P6380196320482084927.Spec : Prop :=
  ∀ n, P6380196320482084927.a n = A354779 n

end A354779

/-! ## A354779.P3611445820280183311

`∑[A000034(∑[n]+C(n, (3-n)²))-1]`
-/

namespace A354779.P3611445820280183311
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (∑ j ∈ Finset.range (n + 1), f2 j + Nat.choose n ((3 - (n : ℤ)) ^ 2).toNat) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A354779.P3611445820280183311

namespace A354779

/-- `∑[A000034(∑[n]+C(n, (3-n)²))-1]` -/
def P3611445820280183311.Spec : Prop :=
  ∀ n, P3611445820280183311.a n = A354779 n

end A354779

/-!
# A354780: a(n) is the bitwise OR of (the binary expansions of) b(n+1) to b(2*n), where b is A354169.

The programs for A354780, there is no canonical definition to state claims against.
-/

/-! ## A354780.P8740632186065494833

`A354757(2*n+3)`
-/

namespace A354780.P8740632186065494833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354757 (2 * n + 3)

end

end A354780.P8740632186065494833

/-! ## A354780.P1004222427857489730

`record[A354757(abs(2*n-3))]`
-/

namespace A354780.P1004222427857489730
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354757 |(2 * n : ℤ) - 3|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A354780.P1004222427857489730

/-! ## A354780.P4443856962202583903

`record[Δ[A354757(A185782(n+1))]]`
-/

namespace A354780.P4443856962202583903
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354757 (A185782 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A354780.P4443856962202583903

/-! ## A354780.P2821981205525541864

`abs(1-A354757(A185782(∑[n+1]+1)))+1`
-/

namespace A354780.P2821981205525541864
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A354757 (A185782 (∑ j ∈ Finset.range (n + 1), f1 j + 1)).toNat| + 1

end

end A354780.P2821981205525541864

/-!
# A354781: If the binary expansion of A354780(n) is 1 d_1 d_2 ... d_k, then the binary expansion of a(n) is c_1 c_2 ... c_k, where c_i = 1 - d_i.

The programs for A354781, there is no canonical definition to state claims against.
-/

/-! ## A354781.P12318270316032766208

`A354783(2*n+3)`
-/

namespace A354781.P12318270316032766208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354783 (2 * n + 3)

end

end A354781.P12318270316032766208

/-! ## A354781.P9784640617553884844

`root(A354783(Δ[(n+1)²]), 2)²`
-/

namespace A354781.P9784640617553884844
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((A354783 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℝ) ^ (1 / (2 : ℝ))) ^ 2

end

end A354781.P9784640617553884844

/-! ## A354781.P1190744945825125387

`A354783(Δ[(n+1)²])^and(1, A000040(n+1))`
-/

namespace A354781.P1190744945825125387
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A354783 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℚ) ^ (Int.land 1 (A000040 (n + 1)) : ℤ)

end

end A354781.P1190744945825125387

/-! ## A354781.P14806485999535133690

`A354783(Δ[(n+1)²])/A001222(A033216(n+1))`
-/

namespace A354781.P14806485999535133690
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A354783 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℚ) / (A001222 (A033216 (n + 1)).toNat : ℚ)

end

end A354781.P14806485999535133690

/-! ## A354781.P722611898311550766

`(A354783(Δ[(n+1)²])^(A016813(n)/A017089(n)))²`
-/

namespace A354781.P722611898311550766
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((A354783 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℝ) ^ ((A016813 n : ℚ) / (A017089 n : ℚ) : ℝ)) ^ 2

end

end A354781.P722611898311550766

/-!
# A354784: First differences of A000213, also twice A000073.

The programs for A354784, the canonical program `A354784.P12902616897900981970` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A354784 has offset 0).

The definition of A354784 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A354784.P12902616897900981970

`a(n-1)+a(n-2)+a(n-3)` with `a(0)=0, a(1)=0, a(2)=2`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A354784

/-- `a(n-1)+a(n-2)+a(n-3)` -/
def P12902616897900981970.Spec : Prop :=
  ∀ n, (P12902616897900981970.a n : ℤ) = A354784 n

theorem P12902616897900981970.correct : P12902616897900981970.Spec := by
  intro n
  simp only [A354784]

end A354784

/-! ## A354784.P4033917943189696424

`ogf(-2x^2/(-1+x+x^2+x^3))`
-/

namespace A354784.P4033917943189696424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 0, 2] [1, -1, -1, -1] n

end

end A354784.P4033917943189696424

namespace A354784

/-- `ogf(-2x^2/(-1+x+x^2+x^3))` -/
def P4033917943189696424.Spec : Prop :=
  ∀ n, P4033917943189696424.a n = A354784 n

end A354784

/-! ## A354784.P6965651605315631708

`2*a(n-1)-a(n-4)` with `a(0)=0, a(1)=0, a(2)=2, a(3)=2`
-/

namespace A354784.P6965651605315631708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 2, 2] fun n a =>
  2 * a (n - 1) - a (n - 4)

end

end A354784.P6965651605315631708

namespace A354784

/-- `2*a(n-1)-a(n-4)` -/
def P6965651605315631708.Spec : Prop :=
  ∀ n, P6965651605315631708.a n = A354784 n

end A354784

/-! ## A354784.P8586771289685772663

`floor(a(n-1)-(a(n-4)-a(n-1)))` with `a(0)=0, a(1)=0, a(2)=2, a(3)=2`

`floor` is left out, it is the identity on integers.
-/

namespace A354784.P8586771289685772663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 2, 2] fun n a =>
  a (n - 1) - (a (n - 4) - a (n - 1))

end

end A354784.P8586771289685772663

namespace A354784

/-- `floor(a(n-1)-(a(n-4)-a(n-1)))` -/
def P8586771289685772663.Spec : Prop :=
  ∀ n, P8586771289685772663.a n = A354784 n

end A354784

/-! ## A354784.P16370252486146914366

`2*A000073(n)`
-/

namespace A354784.P16370252486146914366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000073 n

end

end A354784.P16370252486146914366

namespace A354784

/-- `2*A000073(n)` -/
def P16370252486146914366.Spec : Prop :=
  ∀ n, P16370252486146914366.a n = A354784 n

end A354784

/-! ## A354784.P3635696000950451903

`2*Δ[A192804(n)]`
-/

namespace A354784.P3635696000950451903
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192804 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (f1 (n + 1) - f1 n)

end

end A354784.P3635696000950451903

namespace A354784

/-- `2*Δ[A192804(n)]` -/
def P3635696000950451903.Spec : Prop :=
  ∀ n, P3635696000950451903.a n = A354784 n

end A354784

/-! ## A354784.P15701190211542286407

`2*A114952(A014601(n))`
-/

namespace A354784.P15701190211542286407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A114952 (A014601 n).toNat

end

end A354784.P15701190211542286407

namespace A354784

/-- `2*A114952(A014601(n))` -/
def P15701190211542286407.Spec : Prop :=
  ∀ n, P15701190211542286407.a n = A354784 n

end A354784

/-! ## A354784.P7915717585499296538

`A000073(n)+Δ[A192804(n)]`
-/

namespace A354784.P7915717585499296538
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192804 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000073 n + (f1 (n + 1) - f1 n)

end

end A354784.P7915717585499296538

namespace A354784

/-- `A000073(n)+Δ[A192804(n)]` -/
def P7915717585499296538.Spec : Prop :=
  ∀ n, P7915717585499296538.a n = A354784 n

end A354784

/-! ## A354784.P6579013686176599642

`2*(A000213(n)-A081172(n))`
-/

namespace A354784.P6579013686176599642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A000213 n - A081172 n)

end

end A354784.P6579013686176599642

namespace A354784

/-- `2*(A000213(n)-A081172(n))` -/
def P6579013686176599642.Spec : Prop :=
  ∀ n, P6579013686176599642.a n = A354784 n

end A354784

/-! ## A354784.P5938914826708755184

`2*(A112476(n)-A033999(n))`
-/

namespace A354784.P5938914826708755184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A112476 n - A033999 n)

end

end A354784.P5938914826708755184

namespace A354784

/-- `2*(A112476(n)-A033999(n))` -/
def P5938914826708755184.Spec : Prop :=
  ∀ n, P5938914826708755184.a n = A354784 n

end A354784

/-! ## A354784.P8941532241802650861

`2*(A338192(n)-A000045(n))`
-/

namespace A354784.P8941532241802650861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A338192 n - A000045 n)

end

end A354784.P8941532241802650861

namespace A354784

/-- `2*(A338192(n)-A000045(n))` -/
def P8941532241802650861.Spec : Prop :=
  ∀ n, P8941532241802650861.a n = A354784 n

end A354784

/-! ## A354784.P14183458700286506731

`Δ[A000073(n)]+Δ[A081172(n)]`
-/

namespace A354784.P14183458700286506731
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000073 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081172 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (f2 (n + 1) - f2 n)

end

end A354784.P14183458700286506731

namespace A354784

/-- `Δ[A000073(n)]+Δ[A081172(n)]` -/
def P14183458700286506731.Spec : Prop :=
  ∀ n, P14183458700286506731.a n = A354784 n

end A354784

/-! ## A354784.P7279486800651159578

`A000073(n)+A338192(n)-A000045(n)`
-/

namespace A354784.P7279486800651159578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000073 n + (A338192 n - A000045 n)

end

end A354784.P7279486800651159578

namespace A354784

/-- `A000073(n)+A338192(n)-A000045(n)` -/
def P7279486800651159578.Spec : Prop :=
  ∀ n, P7279486800651159578.a n = A354784 n

end A354784

/-! ## A354784.P12502775591497912545

`A000073(n)-(A081172(n)-A000213(n))`
-/

namespace A354784.P12502775591497912545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000073 n - (A081172 n - A000213 n)

end

end A354784.P12502775591497912545

namespace A354784

/-- `A000073(n)-(A081172(n)-A000213(n))` -/
def P12502775591497912545.Spec : Prop :=
  ∀ n, P12502775591497912545.a n = A354784 n

end A354784

/-! ## A354784.P1579246307556682134

`Δ[A000213(n)]`
-/

namespace A354784.P1579246307556682134
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000213 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A354784.P1579246307556682134

namespace A354784

/-- `Δ[A000213(n)]` -/
def P1579246307556682134.Spec : Prop :=
  ∀ n, P1579246307556682134.a n = A354784 n

end A354784

/-! ## A354784.P15798355786891941637

`A214727(n)-A276658(n)`
-/

namespace A354784.P15798355786891941637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214727 n - A276658 n

end

end A354784.P15798355786891941637

namespace A354784

/-- `A214727(n)-A276658(n)` -/
def P15798355786891941637.Spec : Prop :=
  ∀ n, P15798355786891941637.a n = A354784 n

end A354784

/-! ## A354784.P16534637156827430459

`Δ[A081172(n)+A000073(n)]`
-/

namespace A354784.P16534637156827430459
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081172 n + A000073 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A354784.P16534637156827430459

namespace A354784

/-- `Δ[A081172(n)+A000073(n)]` -/
def P16534637156827430459.Spec : Prop :=
  ∀ n, P16534637156827430459.a n = A354784 n

end A354784

/-! ## A354784.P15869827566608231291

`record[A001590(n)]-A001590(n)`
-/

namespace A354784.P15869827566608231291
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001590 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A001590 n

end

end A354784.P15869827566608231291

namespace A354784

/-- `record[A001590(n)]-A001590(n)` -/
def P15869827566608231291.Spec : Prop :=
  ∀ n, P15869827566608231291.a n = A354784 n

end A354784

/-! ## A354784.P9496960585311173270

`A000213(n+1)-A000213(n)`
-/

namespace A354784.P9496960585311173270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000213 (n + 1) - A000213 n

end

end A354784.P9496960585311173270

namespace A354784

/-- `A000213(n+1)-A000213(n)` -/
def P9496960585311173270.Spec : Prop :=
  ∀ n, P9496960585311173270.a n = A354784 n

end A354784

/-!
# A354785: Numbers of the form 3*2^k or 9*2^k.

The programs for A354785, the canonical program `A354785.P17752993983241105153` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A354785 has offset 1).

The definition of A354785 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 661 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A354785.P10796676882483323950

`ogf((3+6x+3x^2)/(1-2x^2))`
-/

namespace A354785.P10796676882483323950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, 6, 3] [1, 0, -2] n

end

end A354785.P10796676882483323950

namespace A354785

/-- `ogf((3+6x+3x^2)/(1-2x^2))` -/
def P10796676882483323950.Spec : Prop :=
  ∀ n, P10796676882483323950.a n = A354785 (n + 1)

end A354785

/-! ## A354785.P17752993983241105153

`2*a(n-2)` with `a(0)=3, a(1)=6, a(2)=9`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A354785

/-- `2*a(n-2)` -/
def P17752993983241105153.Spec : Prop :=
  ∀ n, (P17752993983241105153.a n : ℤ) = A354785 (n + 1)

theorem P17752993983241105153.correct : P17752993983241105153.Spec := by
  intro n
  simp only [A354785, Nat.add_sub_cancel]

end A354785

/-! ## A354785.P18119681546969571109

`∑[∏[gcd(n, C(2, n)+2)]]`
-/

namespace A354785.P18119681546969571109
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd n (Nat.choose 2 n + 2)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A354785.P18119681546969571109

namespace A354785

/-- `∑[∏[gcd(n, C(2, n)+2)]]` -/
def P18119681546969571109.Spec : Prop :=
  ∀ n, (P18119681546969571109.a n : ℤ) = A354785 (n + 1)

end A354785

/-! ## A354785.P13141863381942863673

`a(n-2)/sqrt(1/4)` with `a(0)=3, a(1)=6, a(2)=9`
-/

namespace A354785.P13141863381942863673
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.rec [3, 6, 9] fun n a =>
  a (n - 2) / Real.sqrt ((1 : ℚ) / 4 : ℝ)

end

end A354785.P13141863381942863673

namespace A354785

/-- `a(n-2)/sqrt(1/4)` -/
def P13141863381942863673.Spec : Prop :=
  ∀ n, P13141863381942863673.a n = (A354785 (n + 1) : ℝ)

end A354785

/-! ## A354785.P4797745642203291632

`a(n-2)+a(n-2)` with `a(0)=3, a(1)=6, a(2)=9`
-/

namespace A354785.P4797745642203291632
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [3, 6, 9] fun n a =>
  a (n - 2) + a (n - 2)

end

end A354785.P4797745642203291632

namespace A354785

/-- `a(n-2)+a(n-2)` -/
def P4797745642203291632.Spec : Prop :=
  ∀ n, (P4797745642203291632.a n : ℤ) = A354785 (n + 1)

theorem P4797745642203291632.correct : P4797745642203291632.Spec := by
  intro n
  simp only [A354785, Nat.add_sub_cancel, A354785.P4797745642203291632.a, A354785.P17752993983241105153.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A354785

/-! ## A354785.P12123508018842838999

`3*A029744(n+1)`
-/

namespace A354785.P12123508018842838999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A029744 (n + 1)

end

end A354785.P12123508018842838999

namespace A354785

/-- `3*A029744(n+1)` -/
def P12123508018842838999.Spec : Prop :=
  ∀ n, P12123508018842838999.a n = A354785 (n + 1)

end A354785

/-! ## A354785.P7704670518100888109

`A246074(3*(n+1))`
-/

namespace A354785.P7704670518100888109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246074 (3 * (n + 1))

end

end A354785.P7704670518100888109

namespace A354785

/-- `A246074(3*(n+1))` -/
def P7704670518100888109.Spec : Prop :=
  ∀ n, P7704670518100888109.a n = A354785 (n + 1)

end A354785

/-! ## A354785.P6237128794121354247

`lcm(3, A160824(n+3))`
-/

namespace A354785.P6237128794121354247
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 3 (A160824 (n + 3))

end

end A354785.P6237128794121354247

namespace A354785

/-- `lcm(3, A160824(n+3))` -/
def P6237128794121354247.Spec : Prop :=
  ∀ n, (P6237128794121354247.a n : ℤ) = A354785 (n + 1)

end A354785

/-! ## A354785.P17501548688769297422

`A134693(A014681(n))`
-/

namespace A354785.P17501548688769297422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134693 (A014681 n).toNat

end

end A354785.P17501548688769297422

namespace A354785

/-- `A134693(A014681(n))` -/
def P17501548688769297422.Spec : Prop :=
  ∀ n, P17501548688769297422.a n = A354785 (n + 1)

end A354785

/-! ## A354785.P9352411670741464989

`A010704(n)*A074323(n)`
-/

namespace A354785.P9352411670741464989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010704 n * A074323 n

end

end A354785.P9352411670741464989

namespace A354785

/-- `A010704(n)*A074323(n)` -/
def P9352411670741464989.Spec : Prop :=
  ∀ n, P9352411670741464989.a n = A354785 (n + 1)

end A354785

/-! ## A354785.P13435079342220965733

`A060546(n)+A029746(n+1)`
-/

namespace A354785.P13435079342220965733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060546 n + A029746 (n + 1)

end

end A354785.P13435079342220965733

namespace A354785

/-- `A060546(n)+A029746(n+1)` -/
def P13435079342220965733.Spec : Prop :=
  ∀ n, P13435079342220965733.a n = A354785 (n + 1)

end A354785

/-! ## A354785.P10284522785136679976

`A131572(n+1)+A029746(n+1)`
-/

namespace A354785.P10284522785136679976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131572 (n + 1) + A029746 (n + 1)

end

end A354785.P10284522785136679976

namespace A354785

/-- `A131572(n+1)+A029746(n+1)` -/
def P10284522785136679976.Spec : Prop :=
  ∀ n, P10284522785136679976.a n = A354785 (n + 1)

end A354785

/-! ## A354785.P17491768276564897870

`A029744(n+1)+A131572(n)+A029744(n+2)`
-/

namespace A354785.P17491768276564897870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029744 (n + 1) + (A131572 n + A029744 (n + 2))

end

end A354785.P17491768276564897870

namespace A354785

/-- `A029744(n+1)+A131572(n)+A029744(n+2)` -/
def P17491768276564897870.Spec : Prop :=
  ∀ n, P17491768276564897870.a n = A354785 (n + 1)

end A354785

/-! ## A354785.P78365887714485680

`A029746(n+1)+A094958(n+2)-A029744(n+1)`
-/

namespace A354785.P78365887714485680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029746 (n + 1) + (A094958 (n + 2) - A029744 (n + 1))

end

end A354785.P78365887714485680

namespace A354785

/-- `A029746(n+1)+A094958(n+2)-A029744(n+1)` -/
def P78365887714485680.Spec : Prop :=
  ∀ n, P78365887714485680.a n = A354785 (n + 1)

end A354785

/-! ## A354785.P14860091456622607453

`3/5*A070004(n+1)`
-/

namespace A354785.P14860091456622607453
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) / 5 * (A070004 (n + 1) : ℚ)

end

end A354785.P14860091456622607453

namespace A354785

/-- `3/5*A070004(n+1)` -/
def P14860091456622607453.Spec : Prop :=
  ∀ n, P14860091456622607453.a n = (A354785 (n + 1) : ℚ)

end A354785

/-! ## A354785.P11936193078691814999

`A070004(n+1)-A029744(n+1)-A029744(n+1)`
-/

namespace A354785.P11936193078691814999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070004 (n + 1) - A029744 (n + 1) - A029744 (n + 1)

end

end A354785.P11936193078691814999

namespace A354785

/-- `A070004(n+1)-A029744(n+1)-A029744(n+1)` -/
def P11936193078691814999.Spec : Prop :=
  ∀ n, P11936193078691814999.a n = A354785 (n + 1)

end A354785

/-! ## A354785.P17769758815890397490

`∑[3*2^floor(log(cosh(n/2)))]`
-/

namespace A354785.P17769758815890397490
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  3 * (2 : ℚ) ^ (⌊Real.log (Real.cosh ((n : ℚ) / 2 : ℝ))⌋ : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A354785.P17769758815890397490

namespace A354785

/-- `∑[3*2^floor(log(cosh(n/2)))]` -/
def P17769758815890397490.Spec : Prop :=
  ∀ n, P17769758815890397490.a n = (A354785 (n + 1) : ℚ)

end A354785

/-! ## A354785.P16164064075189929374

`∩[A065119(n+1), A173195(n+1)]`
-/

namespace A354785.P16164064075189929374
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065119 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173195 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A354785.P16164064075189929374

namespace A354785

/-- `∩[A065119(n+1), A173195(n+1)]` -/
def P16164064075189929374.Spec : Prop :=
  ∀ n, (P16164064075189929374.a n : ℤ) = A354785 (n + 1)

end A354785

/-! ## A354785.P13972442623553777124

`∩[A003586(n+1), A173195(n+1)]`
-/

namespace A354785.P13972442623553777124
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003586 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173195 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A354785.P13972442623553777124

namespace A354785

/-- `∩[A003586(n+1), A173195(n+1)]` -/
def P13972442623553777124.Spec : Prop :=
  ∀ n, (P13972442623553777124.a n : ℤ) = A354785 (n + 1)

end A354785

/-! ## A354785.P6750387449022545244

`A090989(n+2)-A007283(n)/A063759(n)`
-/

namespace A354785.P6750387449022545244
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A090989 (n + 2) : ℚ) - (A007283 n : ℚ) / (A063759 n : ℚ)

end

end A354785.P6750387449022545244

namespace A354785

/-- `A090989(n+2)-A007283(n)/A063759(n)` -/
def P6750387449022545244.Spec : Prop :=
  ∀ n, P6750387449022545244.a n = (A354785 (n + 1) : ℚ)

end A354785

/-!
# A354786: Irregular triangle read by rows: T(n,k) is the number of anti-palindromic compositions of n of length k, n >= 0, 0 <= k <= floor((2*n+1)/3).

The programs for A354786, there is no canonical definition to state claims against.
-/

/-! ## A354786.P2188332223445101093

`A053644(A318757(2*(n+2))%A263831(3*(n+1)))`
-/

namespace A354786.P2188332223445101093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053644 (Int.tmod (A318757 (2 * (n + 2))) (A263831 (3 * (n + 1)))).toNat

end

end A354786.P2188332223445101093

/-! ## A354786.P3219300442425522854

`A279552(A117147(n+1))%A058730(2*(n+3))`
-/

namespace A354786.P3219300442425522854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A279552 (A117147 (n + 1)).toNat) (A058730 (2 * (n + 3)))

end

end A354786.P3219300442425522854

/-! ## A354786.P1045740115589237786

`and(A318757(2*(n+2)), A318765(A318731(n+1)))`
-/

namespace A354786.P1045740115589237786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A318757 (2 * (n + 2))) (A318765 (A318731 (n + 1)).toNat)

end

end A354786.P1045740115589237786

/-! ## A354786.P7869158844464315611

`∑{e}[A355099(A318753(2*(n+2))), #]`
-/

namespace A354786.P7869158844464315611
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355099 (A318753 (2 * (n + 2))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A354786.P7869158844464315611

/-! ## A354786.P1483494224379517656

`A375128(A181821(n+1))%A320748(2*n+5)`
-/

namespace A354786.P1483494224379517656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A375128 (A181821 (n + 1)).toNat) (A320748 (2 * n + 5))

end

end A354786.P1483494224379517656

/-!
# A354787: Irregular triangle read by rows: T(n,k) is the number of reduced anti-palindromic compositions of n of length k, n >= 0, 0 <= k <= floor((2*n+1)/3).

The programs for A354787, there is no canonical definition to state claims against.
-/

/-! ## A354787.P323512662193513395

`A030394(A250236(2*n+1))%A008292(2*n+5)`
-/

namespace A354787.P323512662193513395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A030394 (A250236 (2 * n + 1)).toNat) (A008292 (2 * n + 5))

end

end A354787.P323512662193513395

/-! ## A354787.P11348895375710921690

`round(A053644(A318757(2*(n+2))%A263831(3*(n+1)))/2)`
-/

namespace A354787.P11348895375710921690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A053644 (Int.tmod (A318757 (2 * (n + 2))) (A263831 (3 * (n + 1)))).toNat : ℚ) / 2)

end

end A354787.P11348895375710921690

/-! ## A354787.P11970428632287917432

`A000120(A277537(2*n+3))%A090791(A139605(n+1))`
-/

namespace A354787.P11970428632287917432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000120 (A277537 (2 * n + 3)).toNat) (A090791 (A139605 (n + 1)).toNat)

end

end A354787.P11970428632287917432

/-! ## A354787.P15049508446932847129

`A092523(4^A354786(n))`
-/

namespace A354787.P15049508446932847129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092523 (SequenceMachineLib.roundAway ((4 : ℚ) ^ (A354786 n : ℤ))).toNat

end

end A354787.P15049508446932847129

/-! ## A354787.P6995191289222443467

`A318757(4^A354786(n))`
-/

namespace A354787.P6995191289222443467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318757 (SequenceMachineLib.roundAway ((4 : ℚ) ^ (A354786 n : ℤ))).toNat

end

end A354787.P6995191289222443467

/-!
# A354788: a(2*k) = 3*2^k - 3, a(2*k+1) = 2^(k+2) - 3.

The programs for A354788, the canonical program `A354788.P15284884642981116726` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A354788 has offset 0).

The definition of A354788 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 662 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A354788.P7359429189738993515

`∑[2^floor(n/2)]-1`
-/

namespace A354788.P7359429189738993515
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (⌊(n : ℚ) / 2⌋ : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A354788.P7359429189738993515

namespace A354788

/-- `∑[2^floor(n/2)]-1` -/
def P7359429189738993515.Spec : Prop :=
  ∀ n, P7359429189738993515.a n = (A354788 n : ℚ)

end A354788

/-! ## A354788.P6116678384001152032

`∑[ogf((x+2x^2)/(1-2x^2))]`
-/

namespace A354788.P6116678384001152032
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, 2] [1, 0, -2] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A354788.P6116678384001152032

namespace A354788

/-- `∑[ogf((x+2x^2)/(1-2x^2))]` -/
def P6116678384001152032.Spec : Prop :=
  ∀ n, P6116678384001152032.a n = A354788 n

end A354788

/-! ## A354788.P1745640906997143074

`ogf((x+2x^2)/(1-x-2x^2+2x^3))`
-/

namespace A354788.P1745640906997143074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, 2] [1, -1, -2, 2] n

end

end A354788.P1745640906997143074

namespace A354788

/-- `ogf((x+2x^2)/(1-x-2x^2+2x^3))` -/
def P1745640906997143074.Spec : Prop :=
  ∀ n, P1745640906997143074.a n = A354788 n

end A354788

/-! ## A354788.P15284884642981116726

`∑[2*a(n-2)]` with `a(0)=0, a(1)=1, a(2)=2`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A354788

/-- `∑[2*a(n-2)]` -/
def P15284884642981116726.Spec : Prop :=
  ∀ n, (P15284884642981116726.a n : ℤ) = A354788 n

theorem P15284884642981116726.correct : P15284884642981116726.Spec := by
  intro n
  simp only [A354788]

end A354788

/-! ## A354788.P12966289374026665014

`abs(2*a(n-2)+3)` with `a(0)=0, a(1)=1`
-/

namespace A354788.P12966289374026665014
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n a =>
  2 * a (n - 2) + 3

end

end A354788.P12966289374026665014

namespace A354788

/-- `abs(2*a(n-2)+3)` -/
def P12966289374026665014.Spec : Prop :=
  ∀ n, (P12966289374026665014.a n : ℤ) = A354788 n

end A354788

/-! ## A354788.P2063214803398054007

`2*(a(n-2)+3/2)` with `a(0)=0, a(1)=1`
-/

namespace A354788.P2063214803398054007
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0, 1] fun n a =>
  2 * (a (n - 2) + (3 : ℚ) / 2)

end

end A354788.P2063214803398054007

namespace A354788

/-- `2*(a(n-2)+3/2)` -/
def P2063214803398054007.Spec : Prop :=
  ∀ n, P2063214803398054007.a n = (A354788 n : ℚ)

end A354788

/-! ## A354788.P1715816614204480382

`∑[a(n-2)+a(n-2)]` with `a(0)=0, a(1)=1, a(2)=2`
-/

namespace A354788.P1715816614204480382
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 2] fun n f1 =>
  f1 (n - 2) + f1 (n - 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A354788.P1715816614204480382

namespace A354788

/-- `∑[a(n-2)+a(n-2)]` -/
def P1715816614204480382.Spec : Prop :=
  ∀ n, (P1715816614204480382.a n : ℤ) = A354788 n

theorem P1715816614204480382.correct : P1715816614204480382.Spec := by
  intro n
  simp only [A354788, Nat.add_sub_cancel, A354788.P1715816614204480382.f1, A354788.P1715816614204480382.a, A354788.P15284884642981116726.f1, A354788.P15284884642981116726.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A354788

/-! ## A354788.P9411242387479120011

`floor(a(n-1)+2^floor(n/2))` with `a(0)=0`
-/

namespace A354788.P9411242387479120011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  ⌊(a (n - 1) : ℚ) + (2 : ℚ) ^ (⌊(n : ℚ) / 2⌋ : ℤ)⌋

end

end A354788.P9411242387479120011

namespace A354788

/-- `floor(a(n-1)+2^floor(n/2))` -/
def P9411242387479120011.Spec : Prop :=
  ∀ n, P9411242387479120011.a n = A354788 n

end A354788

/-! ## A354788.P1936297804233746700

`2*(2-(1/2-a(n-2)))` with `a(0)=0, a(1)=1`
-/

namespace A354788.P1936297804233746700
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0, 1] fun n a =>
  2 * (2 - ((1 : ℚ) / 2 - a (n - 2)))

end

end A354788.P1936297804233746700

namespace A354788

/-- `2*(2-(1/2-a(n-2)))` -/
def P1936297804233746700.Spec : Prop :=
  ∀ n, P1936297804233746700.a n = (A354788 n : ℚ)

end A354788

/-! ## A354788.P10179832486244259888

`abs(a(n-2)+a(n-2)+3)` with `a(0)=0, a(1)=1`
-/

namespace A354788.P10179832486244259888
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (n - 2) + (a (n - 2) + 3)

end

end A354788.P10179832486244259888

namespace A354788

/-- `abs(a(n-2)+a(n-2)+3)` -/
def P10179832486244259888.Spec : Prop :=
  ∀ n, (P10179832486244259888.a n : ℤ) = A354788 n

end A354788

/-! ## A354788.P11162167097404431399

`ceil(a(n-2)+a(n-2)+3)` with `a(0)=0, a(1)=1`

`ceil` is left out, it is the identity on integers.
-/

namespace A354788.P11162167097404431399
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (n - 2) + (a (n - 2) + 3)

end

end A354788.P11162167097404431399

namespace A354788

/-- `ceil(a(n-2)+a(n-2)+3)` -/
def P11162167097404431399.Spec : Prop :=
  ∀ n, (P11162167097404431399.a n : ℤ) = A354788 n

end A354788

/-! ## A354788.P9457468424659885069

`round(a(n-2)+a(n-2)+3)` with `a(0)=0, a(1)=1`

`round` is left out, it is the identity on integers.
-/

namespace A354788.P9457468424659885069
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (n - 2) + (a (n - 2) + 3)

end

end A354788.P9457468424659885069

namespace A354788

/-- `round(a(n-2)+a(n-2)+3)` -/
def P9457468424659885069.Spec : Prop :=
  ∀ n, (P9457468424659885069.a n : ℤ) = A354788 n

end A354788

/-! ## A354788.P10292203003317674605

`floor(floor(a(n-2))+a(n-2)+3)` with `a(0)=0, a(1)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A354788.P10292203003317674605
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (n - 2) + (a (n - 2) + 3)

end

end A354788.P10292203003317674605

namespace A354788

/-- `floor(floor(a(n-2))+a(n-2)+3)` -/
def P10292203003317674605.Spec : Prop :=
  ∀ n, (P10292203003317674605.a n : ℤ) = A354788 n

end A354788

/-! ## A354788.P10093001008034195967

`(2*a(n-2)+3)*a(n-1)%2` with `a(0)=0, a(1)=1`
-/

namespace A354788.P10093001008034195967
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n a =>
  (2 * a (n - 2) + 3) * (a (n - 1) % 2)

end

end A354788.P10093001008034195967

namespace A354788

/-- `(2*a(n-2)+3)*a(n-1)%2` -/
def P10093001008034195967.Spec : Prop :=
  ∀ n, (P10093001008034195967.a n : ℤ) = A354788 n

end A354788

/-! ## A354788.P13493226639999687095

`(2*a(n-2)+3)*gcd(2, a(n-1))` with `a(0)=0, a(1)=1`
-/

namespace A354788.P13493226639999687095
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n a =>
  (2 * a (n - 2) + 3) * Nat.gcd 2 (a (n - 1))

end

end A354788.P13493226639999687095

namespace A354788

/-- `(2*a(n-2)+3)*gcd(2, a(n-1))` -/
def P13493226639999687095.Spec : Prop :=
  ∀ n, (P13493226639999687095.a n : ℤ) = A354788 n

end A354788

/-! ## A354788.P12212600015507917165

`∑[A131572(n)]`
-/

namespace A354788.P12212600015507917165
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131572 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A354788.P12212600015507917165

namespace A354788

/-- `∑[A131572(n)]` -/
def P12212600015507917165.Spec : Prop :=
  ∀ n, P12212600015507917165.a n = A354788 n

end A354788

/-! ## A354788.P16049818556441812630

`xor(A060482(n+1), A169585(n))`
-/

namespace A354788.P16049818556441812630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A060482 (n + 1)) (A169585 n)

end

end A354788.P16049818556441812630

namespace A354788

/-- `xor(A060482(n+1), A169585(n))` -/
def P16049818556441812630.Spec : Prop :=
  ∀ n, P16049818556441812630.a n = A354788 n

end A354788

/-! ## A354788.P16490366777359559257

`∑[∑[A131575(n)]-A131575(n)]`
-/

namespace A354788.P16490366777359559257
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131575 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A131575 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A354788.P16490366777359559257

namespace A354788

/-- `∑[∑[A131575(n)]-A131575(n)]` -/
def P16490366777359559257.Spec : Prop :=
  ∀ n, P16490366777359559257.a n = A354788 n

end A354788

/-! ## A354788.P15089235266146580059

`(A027383(n)-A057427(n))*A057427(n)`
-/

namespace A354788.P15089235266146580059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A027383 n - A057427 n) * A057427 n

end

end A354788.P15089235266146580059

namespace A354788

/-- `(A027383(n)-A057427(n))*A057427(n)` -/
def P15089235266146580059.Spec : Prop :=
  ∀ n, P15089235266146580059.a n = A354788 n

end A354788

/-! ## A354788.P4025745891469160569

`floor(3*a(n-2)-(a(n-2)-3))` with `a(0)=0, a(1)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A354788.P4025745891469160569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  3 * a (n - 2) - (a (n - 2) - 3)

end

end A354788.P4025745891469160569

namespace A354788

/-- `floor(3*a(n-2)-(a(n-2)-3))` -/
def P4025745891469160569.Spec : Prop :=
  ∀ n, P4025745891469160569.a n = A354788 n

end A354788

/-!
# A354789: a(2*n) = 9*2^n - 7, a(2*n+1) = 3*2^(n+2) - 7.

The programs for A354789, the canonical program `A354789.P13188159098095795541` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A354789 has offset 0).

The definition of A354789 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 659 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A354789.P13106629255343714842

`∑[ogf((2+3x+2x^2)/(1-2x^2))]`
-/

namespace A354789.P13106629255343714842
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, 3, 2] [1, 0, -2] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A354789.P13106629255343714842

namespace A354789

/-- `∑[ogf((2+3x+2x^2)/(1-2x^2))]` -/
def P13106629255343714842.Spec : Prop :=
  ∀ n, P13106629255343714842.a n = A354789 n

end A354789

/-! ## A354789.P13328340304334553162

`ogf((2+3x+2x^2)/(1-x-2x^2+2x^3))`
-/

namespace A354789.P13328340304334553162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, 3, 2] [1, -1, -2, 2] n

end

end A354789.P13328340304334553162

namespace A354789

/-- `ogf((2+3x+2x^2)/(1-x-2x^2+2x^3))` -/
def P13328340304334553162.Spec : Prop :=
  ∀ n, P13328340304334553162.a n = A354789 n

end A354789

/-! ## A354789.P13188159098095795541

`2*a(n-2)+7` with `a(0)=2, a(1)=5`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A354789

/-- `2*a(n-2)+7` -/
def P13188159098095795541.Spec : Prop :=
  ∀ n, (P13188159098095795541.a n : ℤ) = A354789 n

theorem P13188159098095795541.correct : P13188159098095795541.Spec := by
  intro n
  simp only [A354789]

end A354789

/-! ## A354789.P10249141474871094238

`∑[2*a(n-2)]` with `a(0)=2, a(1)=3, a(2)=6`
-/

namespace A354789.P10249141474871094238
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 3, 6] fun n f1 =>
  2 * f1 (n - 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A354789.P10249141474871094238

namespace A354789

/-- `∑[2*a(n-2)]` -/
def P10249141474871094238.Spec : Prop :=
  ∀ n, (P10249141474871094238.a n : ℤ) = A354789 n

end A354789

/-! ## A354789.P1548314054365608932

`3*∑[2^floor(n/2)]-1`
-/

namespace A354789.P1548314054365608932
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (⌊(n : ℚ) / 2⌋ : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  3 * (∑ j ∈ Finset.range (n + 1), f1 j) - 1

end

end A354789.P1548314054365608932

namespace A354789

/-- `3*∑[2^floor(n/2)]-1` -/
def P1548314054365608932.Spec : Prop :=
  ∀ n, P1548314054365608932.a n = (A354789 n : ℚ)

end A354789

/-! ## A354789.P16140372644756216358

`∑[A074323(n)+A029744(n+1)]`
-/

namespace A354789.P16140372644756216358
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074323 n + A029744 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A354789.P16140372644756216358

namespace A354789

/-- `∑[A074323(n)+A029744(n+1)]` -/
def P16140372644756216358.Spec : Prop :=
  ∀ n, P16140372644756216358.a n = A354789 n

end A354789

/-! ## A354789.P14983093753120500061

`∑[A074323(n)+∑[A158780(n)]+1]`
-/

namespace A354789.P14983093753120500061
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158780 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074323 n + (∑ j ∈ Finset.range (n + 1), f2 j + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A354789.P14983093753120500061

namespace A354789

/-- `∑[A074323(n)+∑[A158780(n)]+1]` -/
def P14983093753120500061.Spec : Prop :=
  ∀ n, P14983093753120500061.a n = A354789 n

end A354789

/-! ## A354789.P13987093353129192289

`∑[A074323(xor(1, n+1))+A074323(n)]`
-/

namespace A354789.P13987093353129192289
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074323 (Nat.xor 1 (n + 1)) + A074323 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A354789.P13987093353129192289

namespace A354789

/-- `∑[A074323(xor(1, n+1))+A074323(n)]` -/
def P13987093353129192289.Spec : Prop :=
  ∀ n, P13987093353129192289.a n = A354789 n

end A354789

/-! ## A354789.P767198549123417406

`∑[A074323(A004442(n+1))+A074323(n)]`
-/

namespace A354789.P767198549123417406
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074323 (A004442 (n + 1)).toNat + A074323 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A354789.P767198549123417406

namespace A354789

/-- `∑[A074323(A004442(n+1))+A074323(n)]` -/
def P767198549123417406.Spec : Prop :=
  ∀ n, P767198549123417406.a n = A354789 n

end A354789

/-! ## A354789.P5484063716945650778

`∑[A074323(A065190(n+1))+A074323(n)]`
-/

namespace A354789.P5484063716945650778
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074323 (A065190 (n + 1)).toNat + A074323 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A354789.P5484063716945650778

namespace A354789

/-- `∑[A074323(A065190(n+1))+A074323(n)]` -/
def P5484063716945650778.Spec : Prop :=
  ∀ n, P5484063716945650778.a n = A354789 n

end A354789

/-! ## A354789.P10158278873750876584

`∑[A308709(A116468(n+1))+A074323(n)]`
-/

namespace A354789.P10158278873750876584
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308709 (A116468 (n + 1)).toNat + A074323 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A354789.P10158278873750876584

namespace A354789

/-- `∑[A308709(A116468(n+1))+A074323(n)]` -/
def P10158278873750876584.Spec : Prop :=
  ∀ n, P10158278873750876584.a n = A354789 n

end A354789

/-! ## A354789.P2185541024617169593

`Δ[A061777(n)-n]`
-/

namespace A354789.P2185541024617169593
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061777 n - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A354789.P2185541024617169593

namespace A354789

/-- `Δ[A061777(n)-n]` -/
def P2185541024617169593.Spec : Prop :=
  ∀ n, P2185541024617169593.a n = A354789 n

end A354789

/-! ## A354789.P10951693221095591873

`∑[A111286(n+2)/A016116(n+1)]`
-/

namespace A354789.P10951693221095591873
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A111286 (n + 2) : ℚ) / (A016116 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A354789.P10951693221095591873

namespace A354789

/-- `∑[A111286(n+2)/A016116(n+1)]` -/
def P10951693221095591873.Spec : Prop :=
  ∀ n, P10951693221095591873.a n = (A354789 n : ℚ)

end A354789

/-!
# A354791: Indices of nonprime terms in A354790.

The programs for A354791, there is no canonical definition to state claims against.
-/

/-! ## A354791.P5869994168653581468

`lt[A010051(A354790(n+1)), 1]+1`
-/

namespace A354791.P5869994168653581468
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (A354790 (n + 1)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A354791.P5869994168653581468

/-!
# A354792: Nonprime terms in A354790 in order of appearance.

The programs for A354792, there is no canonical definition to state claims against.
-/

/-! ## A354792.P14287535855712591077

`A354790(A354791(n+1))`
-/

namespace A354792.P14287535855712591077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354790 (A354791 (n + 1)).toNat

end

end A354792.P14287535855712591077

/-!
# A354793: Hamming weight of A354783(n).

The programs for A354793, there is no canonical definition to state claims against.
-/

/-! ## A354793.P5565946698093984097

`A207328(A354783(n+1))`
-/

namespace A354793.P5565946698093984097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207328 (A354783 (n + 1)).toNat

end

end A354793.P5565946698093984097

/-! ## A354793.P13808056365402753110

`A000120(lcm(2, A354783(n+1))/2)`
-/

namespace A354793.P13808056365402753110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (SequenceMachineLib.roundAway ((Int.lcm 2 (A354783 (n + 1)) : ℚ) / 2)).toNat

end

end A354793.P13808056365402753110

/-! ## A354793.P6756365026783854445

`A000120(2*A354783(n+1))`
-/

namespace A354793.P6756365026783854445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (2 * A354783 (n + 1)).toNat

end

end A354793.P6756365026783854445

/-! ## A354793.P5123690405861978382

`A000120(lcm(2, A354783(n+1)))`
-/

namespace A354793.P5123690405861978382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (Int.lcm 2 (A354783 (n + 1)))

end

end A354793.P5123690405861978382

/-! ## A354793.P12148504480934332505

`A000120(A354783(n+1)%A016938(n))`
-/

namespace A354793.P12148504480934332505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (Int.tmod (A354783 (n + 1)) (A016938 n)).toNat

end

end A354793.P12148504480934332505

/-!
# A354794: Triangle read by rows. The Bell transform of the sequence {m^m | m >= 0}.

The programs for A354794, there is no canonical definition to state claims against.
-/

/-! ## A354794.P11775409499424426144

`A327351(A361954(n+1)+2)`
-/

namespace A354794.P11775409499424426144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327351 (A361954 (n + 1) + 2).toNat

end

end A354794.P11775409499424426144

/-! ## A354794.P1867296390843078804

`A269944(n)-A326545(A269940(n))`
-/

namespace A354794.P1867296390843078804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269944 n - A326545 (A269940 n).toNat

end

end A354794.P1867296390843078804

/-! ## A354794.P2114450028422521144

`A007496(A093541(n))^A025581(n)`
-/

namespace A354794.P2114450028422521144
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007496 (A093541 n).toNat : ℚ) ^ (A025581 n : ℤ)

end

end A354794.P2114450028422521144

/-! ## A354794.P15791804241407512829

`A004218(A112356(n))^A025581(n)`
-/

namespace A354794.P15791804241407512829
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004218 (A112356 n).toNat : ℚ) ^ (A025581 n : ℤ)

end

end A354794.P15791804241407512829

/-! ## A354794.P4940202923734476167

`A007095(A264428(n)^A145515(n))`
-/

namespace A354794.P4940202923734476167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007095 (SequenceMachineLib.roundAway ((A264428 n : ℚ) ^ (A145515 n : ℤ))).toNat

end

end A354794.P4940202923734476167

/-!
# A354795: Triangle read by rows. The matrix inverse of A354794. Equivalently, the Bell transform of cfact(n) = -(n - 1)! if n > 0 and otherwise 1/(-n)!.

The programs for A354795, there is no canonical definition to state claims against.
-/

/-! ## A354795.P7052956448038916211

`A348422(n+1)-A303708(A195865(n))`
-/

namespace A354795.P7052956448038916211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348422 (n + 1) - A303708 (A195865 n).toNat

end

end A354795.P7052956448038916211

/-!
# A354796: Triangle read by rows. T(n, k) = Gamma(k + n) / k! for n >= 1 and 0 <= k <= n, T(0, 0) = 1.

The programs for A354796, there is no canonical definition to state claims against.
-/

/-! ## A354796.P2116087087145250693

`A094587(A245300(n)-A051162(n))`
-/

namespace A354796.P2116087087145250693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094587 (A245300 n - A051162 n).toNat

end

end A354796.P2116087087145250693

/-! ## A354796.P8349088898451431921

`A094587(A245300(n))/A134478(n)`
-/

namespace A354796.P8349088898451431921
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A094587 (A245300 n).toNat : ℚ) / (A134478 n : ℚ)

end

end A354796.P8349088898451431921

/-!
# A354797: Triangle read by rows. T(n, k) = |Stirling1(n, k)| * Stirling2(n + k, n) = A132393(n, k) * A048993(n + k, n).

The programs for A354797, there is no canonical definition to state claims against.
-/

/-! ## A354797.P17976330961115887345

`A132393(n)*A354977(n)`
-/

namespace A354797.P17976330961115887345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132393 n * A354977 n

end

end A354797.P17976330961115887345

/-! ## A354797.P4678131946658326520

`abs(A048994(n)*A354977(n))`
-/

namespace A354797.P4678131946658326520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A048994 n * A354977 n|

end

end A354797.P4678131946658326520

/-! ## A354797.P17537210097106756902

`A106800(A245300(n))*A132393(n)`
-/

namespace A354797.P17537210097106756902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106800 (A245300 n).toNat * A132393 n

end

end A354797.P17537210097106756902

/-! ## A354797.P8282528078560327321

`abs(A048994(n)*A106800(A245300(n)))`
-/

namespace A354797.P8282528078560327321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A048994 n * A106800 (A245300 n).toNat|

end

end A354797.P8282528078560327321

/-! ## A354797.P16393071108648917411

`abs(A054654(A061579(n))*A354977(n))`
-/

namespace A354797.P16393071108648917411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A054654 (A061579 n).toNat * A354977 n|

end

end A354797.P16393071108648917411

/-!
# A354798: Indices of terms in A354169 that are not powers of 2.

The programs for A354798, there is no canonical definition to state claims against.
-/

/-! ## A354798.P9827200864650963982

`eq[1, (1-A355150(n))²]`
-/

namespace A354798.P9827200864650963982
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A355150 n) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A354798.P9827200864650963982

/-! ## A354798.P18206535048875877170

`eq[A227196(n+1), A355150(n)]`
-/

namespace A354798.P18206535048875877170
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227196 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355150 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A354798.P18206535048875877170

/-! ## A354798.P5805119331021783539

`eq[A270026(n+1), A355150(n)]`
-/

namespace A354798.P5805119331021783539
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270026 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355150 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A354798.P5805119331021783539

/-! ## A354798.P13612316982357959581

`eq[A161872(n+2), A355150(n)]`
-/

namespace A354798.P13612316982357959581
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161872 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355150 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A354798.P13612316982357959581

/-! ## A354798.P17360671400866577062

`A355150(2*n)+lt[A355150(2*n), A355150(n+1)]`
-/

namespace A354798.P17360671400866577062
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355150 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355150 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355150 (2 * n) + (SequenceMachineLib.nth (fun j => f1 j < f2 j) n : ℤ)

end

end A354798.P17360671400866577062

/-! ## A354798.P1490576266319591141

`eq[A010673(n), A355150(n)]`
-/

namespace A354798.P1490576266319591141
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010673 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355150 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A354798.P1490576266319591141

/-! ## A354798.P12180015885192110201

`eq[A163169(n), A355150(n)]`
-/

namespace A354798.P12180015885192110201
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163169 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355150 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A354798.P12180015885192110201

/-! ## A354798.P9385205524488496006

`eq[A266073(n), A355150(n)]`
-/

namespace A354798.P9385205524488496006
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266073 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355150 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A354798.P9385205524488496006

/-! ## A354798.P5736037932089347927

`eq[A266258(n), A355150(n)]`
-/

namespace A354798.P5736037932089347927
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266258 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355150 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A354798.P5736037932089347927

/-! ## A354798.P2779694320546986439

`eq[A264940(n+1), A355150(n)]`
-/

namespace A354798.P2779694320546986439
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264940 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355150 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A354798.P2779694320546986439

/-! ## A354798.P1225490993644977075

`eq[A271419(n+1), A355150(n)]`
-/

namespace A354798.P1225490993644977075
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271419 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355150 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A354798.P1225490993644977075

/-! ## A354798.P12530853365338527663

`eq[A355150(n), A379544(n+1)]`
-/

namespace A354798.P12530853365338527663
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355150 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379544 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A354798.P12530853365338527663

/-! ## A354798.P13728894049934783908

`eq[A163894(n), A355150(n)]`
-/

namespace A354798.P13728894049934783908
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163894 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355150 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A354798.P13728894049934783908

/-! ## A354798.P12582721652227509773

`lt[A355150(A163894(n)-A355150(n)), 1]`
-/

namespace A354798.P12582721652227509773
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355150 (A163894 n - A355150 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A354798.P12582721652227509773

/-! ## A354798.P11407328641417919527

`eq[A272800(n+1), A355150(n)]`
-/

namespace A354798.P11407328641417919527
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272800 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355150 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A354798.P11407328641417919527

/-! ## A354798.P4132594588504006955

`lt[A354169(n), Δ[A354169(n)]]`
-/

namespace A354798.P4132594588504006955
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354169 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354169 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A354798.P4132594588504006955

/-! ## A354798.P5948332810061277425

`lt[A354169(n), A354757(n)+1]`
-/

namespace A354798.P5948332810061277425
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354169 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354757 n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A354798.P5948332810061277425

/-! ## A354798.P6082616005932210002

`lt[atan(A354680(n+1)-1), A355150(n)]`
-/

namespace A354798.P6082616005932210002
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.arctan (A354680 (n + 1) - 1 : ℝ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355150 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℝ)) n

end

end A354798.P6082616005932210002

/-! ## A354798.P7064052642830852359

`eq[A087986(n+1), A355150(n)]`
-/

namespace A354798.P7064052642830852359
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087986 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355150 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A354798.P7064052642830852359

/-!
# A354799: Integers m in A001694 such that 3 | d(m^2), where d(n) = A000005(n).

The programs for A354799, there is no canonical definition to state claims against.
-/

/-! ## A354799.P17580627481180562475

`∩[A046678(A260396(n+1)), A344653(n+1)]`
-/

namespace A354799.P17580627481180562475
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046678 (A260396 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344653 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A354799.P17580627481180562475

