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
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C039
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
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
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
# A285200: a(n) = floor the elevator is on at the n-th stage of Ken Knowlton's elevator problem, version 1.

The programs for A285200, there is no canonical definition to state claims against.
-/

/-! ## A285200.P13591561193265252097

`A285202(comp[∑[A285204(n)]])`
-/

namespace A285200.P13591561193265252097
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285204 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285202 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A285200.P13591561193265252097

/-!
# A285201: Stage at which Ken Knowlton's elevator (version 1) reaches floor n for the first time.

The programs for A285201, there is no canonical definition to state claims against.
-/

/-! ## A285201.P4635563403269532523

`∑[(n-1)*a(n-1)+n]` with `a(0)=1`
-/

namespace A285201.P4635563403269532523
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  ((n : ℤ) - 1) * f1 (n - 1) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A285201.P4635563403269532523

/-! ## A285201.P7882150760012079630

`∑[n-(1-n)*a(n-1)]` with `a(0)=1`
-/

namespace A285201.P7882150760012079630
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  (n : ℤ) - (1 - (n : ℤ)) * f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A285201.P7882150760012079630

/-! ## A285201.P4354115830263183455

`a(n-2)+n*(a(n-1)+1-a(n-2))` with `a(0)=1, a(1)=2`
-/

namespace A285201.P4354115830263183455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (n - 2) + (n : ℤ) * (a (n - 1) + (1 - a (n - 2)))

end

end A285201.P4354115830263183455

/-! ## A285201.P16255776332399928320

`a(n-2)-n*(a(n-2)-1-a(n-1))` with `a(0)=1, a(1)=2`
-/

namespace A285201.P16255776332399928320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (n - 2) - (n : ℤ) * (a (n - 2) - 1 - a (n - 1))

end

end A285201.P16255776332399928320

/-! ## A285201.P11930101033861678534

`∑[A111063(n)]`
-/

namespace A285201.P11930101033861678534
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111063 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A285201.P11930101033861678534

/-! ## A285201.P12578817802307689680

`∑[A054091(n)]-n`
-/

namespace A285201.P12578817802307689680
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054091 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A285201.P12578817802307689680

/-! ## A285201.P11658973980814413336

`abs(2*(n-(A002104(n)+1))+1-n)`
-/

namespace A285201.P11658973980814413336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 * ((n : ℤ) - (A002104 n + 1)) + 1 - (n : ℤ)|

end

end A285201.P11658973980814413336

/-!
# A285202: A285200 displayed as an irregular triangle read by rows.

The programs for A285202, there is no canonical definition to state claims against.
-/

/-! ## A285202.P5513046423050152921

`A008967(lt[A120993(n+1), A030018(n)])`
-/

namespace A285202.P5513046423050152921
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120993 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030018 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008967 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A285202.P5513046423050152921

/-! ## A285202.P3280391951562641007

`A003983(lt[A334267(2*n+3), A222769(3*n+2)])`
-/

namespace A285202.P3280391951562641007
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334267 (2 * n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222769 (3 * n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003983 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A285202.P3280391951562641007

/-! ## A285202.P16010986043894127104

`A087062(lt[A022805(3*n+2), A219802(3*n+1)])`
-/

namespace A285202.P16010986043894127104
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022805 (3 * n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219802 (3 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087062 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A285202.P16010986043894127104

/-! ## A285202.P1375096583631951425

`A087062(lt[A195825(3*n+1), A356607(n)])`
-/

namespace A285202.P1375096583631951425
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195825 (3 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356607 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087062 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A285202.P1375096583631951425

/-! ## A285202.P12589886783754315367

`A001222(A139391(n+1)+A005179(n+1))`
-/

namespace A285202.P12589886783754315367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A139391 (n + 1) + A005179 (n + 1)).toNat

end

end A285202.P12589886783754315367

/-!
# A285203: Local high points in A285200.

The programs for A285203, there is no canonical definition to state claims against.
-/

/-! ## A285203.P3932047620001495658

`ceil(A285204(n+1)/2)`
-/

namespace A285203.P3932047620001495658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A285204 (n + 1) : ℚ) / 2⌉

end

end A285203.P3932047620001495658

/-! ## A285203.P5095204127867571272

`A123884(A112987(n))+1`
-/

namespace A285203.P5095204127867571272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123884 (A112987 n).toNat + 1

end

end A285203.P5095204127867571272

/-! ## A285203.P1862092190169716287

`A333749(n+3)+A001221(A331936(3*n+2))`
-/

namespace A285203.P1862092190169716287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333749 (n + 3) + A001221 (A331936 (3 * n + 2)).toNat

end

end A285203.P1862092190169716287

/-! ## A285203.P7359102633703792538

`A124010(A318745(n+1))+A056619(3*n+5)`
-/

namespace A285203.P7359102633703792538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124010 (A318745 (n + 1)).toNat + A056619 (3 * n + 5)

end

end A285203.P7359102633703792538

/-! ## A285203.P5811721984206039899

`A073093(A048519(n+1)*A266722(n))`
-/

namespace A285203.P5811721984206039899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073093 (A048519 (n + 1) * A266722 n).toNat

end

end A285203.P5811721984206039899

/-!
# A285204: Row lengths of triangle A285202.

The programs for A285204, there is no canonical definition to state claims against.
-/

/-! ## A285204.P6038754240781464837

`A073093(A004275(A100317(n+1))²)`
-/

namespace A285204.P6038754240781464837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073093 (A004275 (A100317 (n + 1)).toNat ^ 2).toNat

end

end A285204.P6038754240781464837

/-! ## A285204.P9742349530029578125

`A367951(A027423(n)*A336505(n+1))`
-/

namespace A285204.P9742349530029578125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367951 (A027423 n * A336505 (n + 1)).toNat

end

end A285204.P9742349530029578125

/-! ## A285204.P9296584462707354007

`A014499(A238383(3*n)*A321724(n+1))`
-/

namespace A285204.P9296584462707354007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014499 (A238383 (3 * n) * A321724 (n + 1)).toNat

end

end A285204.P9296584462707354007

/-!
# A285205: 0-limiting word of the morphism 0->10, 1-> 0100.

The programs for A285205, there is no canonical definition to state claims against.
-/

/-! ## A285205.P8603889075322308641

`log2(gcd(2, A285210(n+1)))`
-/

namespace A285205.P8603889075322308641
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (Int.gcd 2 (A285210 (n + 1)) : ℝ)

end

end A285205.P8603889075322308641

/-! ## A285205.P8967366518999800729

`char[A285207(n+1)-1]`
-/

namespace A285205.P8967366518999800729
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285207 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A285205.P8967366518999800729

/-! ## A285205.P6465329808871847093

`∑[A285418(n+1)]%2`
-/

namespace A285205.P6465329808871847093
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285418 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) 2

end

end A285205.P6465329808871847093

/-! ## A285205.P1642330158948709783

`char[A285420(Δ[n²])-1]`
-/

namespace A285205.P1642330158948709783
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285420 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A285205.P1642330158948709783

/-! ## A285205.P14590599599218012317

`char[A284535(n+1)-1+n]`
-/

namespace A285205.P14590599599218012317
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284535 (n + 1) - 1 + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A285205.P14590599599218012317

/-! ## A285205.P7963066867023536454

`char[floor(A285141(2*n+1)/2)]`
-/

namespace A285205.P7963066867023536454
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A285141 (2 * n + 1) : ℚ) / 2⌋

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A285205.P7963066867023536454

/-! ## A285205.P2862750040596297306

`char[∑[A285421(n+1)+1]+n-1]`
-/

namespace A285205.P2862750040596297306
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285421 (n + 1) + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + (n : ℤ) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A285205.P2862750040596297306

/-! ## A285205.P2714552182513364800

`and(∑[A285418(n+1)], A285421(n+1))`
-/

namespace A285205.P2714552182513364800
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285418 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (∑ j ∈ Finset.range (n + 1), f1 j) (A285421 (n + 1))

end

end A285205.P2714552182513364800

/-! ## A285205.P14624225705698253472

`and(∑[A285418(n+1)], A285431(n+1))`
-/

namespace A285205.P14624225705698253472
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285418 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (∑ j ∈ Finset.range (n + 1), f1 j) (A285431 (n + 1))

end

end A285205.P14624225705698253472

/-! ## A285205.P16441263914236329636

`val(A020639(∑[A285418(n+1)+1]+n), 2)`
-/

namespace A285205.P16441263914236329636
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285418 (n + 1) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A020639 (∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)).toNat).toNat 2

end

end A285205.P16441263914236329636

/-! ## A285205.P6137677693367989745

`val(A049632(val(A285210(n+1)+1, 2))+1, 2)`
-/

namespace A285205.P6137677693367989745
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A049632 (SequenceMachineLib.valuation (A285210 (n + 1) + 1).toNat 2) + 1).toNat 2

end

end A285205.P6137677693367989745

/-! ## A285205.P383019083571251167

`and(1, A285209(A284590(n+1)))`
-/

namespace A285205.P383019083571251167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A285209 (A284590 (n + 1)).toNat)

end

end A285205.P383019083571251167

/-! ## A285205.P5436299087809210330

`A285423(2*(n+1))%2`
-/

namespace A285205.P5436299087809210330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A285423 (2 * (n + 1))) 2

end

end A285205.P5436299087809210330

/-! ## A285205.P13294804366849502806

`and(1, A285423(2*n+2))`
-/

namespace A285205.P13294804366849502806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A285423 (2 * n + 2))

end

end A285205.P13294804366849502806

/-! ## A285205.P2087539744631418554

`and(1, ∑[A285139(2*n+1)])`
-/

namespace A285205.P2087539744631418554
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285139 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A285205.P2087539744631418554

/-! ## A285205.P13734994527200785024

`and(2, A285144(2*n+1))/2`
-/

namespace A285205.P13734994527200785024
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.land 2 (A285144 (2 * n + 1)) : ℚ) / 2

end

end A285205.P13734994527200785024

/-! ## A285205.P3608932748324624951

`val(A020639(A285423(Δ[n²])), 2)`
-/

namespace A285205.P3608932748324624951
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A020639 (A285423 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat).toNat).toNat 2

end

end A285205.P3608932748324624951

/-! ## A285205.P15308419847858922108

`or(1, A284534(2*(n+1)))-A284534(2*(n+1))`
-/

namespace A285205.P15308419847858922108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A284534 (2 * (n + 1))) - A284534 (2 * (n + 1))

end

end A285205.P15308419847858922108

/-! ## A285205.P15075439771948123211

`A285208(A285207(n+1)+A285208(n+1)-1)`
-/

namespace A285205.P15075439771948123211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285208 (A285207 (n + 1) + (A285208 (n + 1) - 1)).toNat

end

end A285205.P15075439771948123211

/-! ## A285205.P13431434533437943074

`A059841(A285210(n+1))`
-/

namespace A285205.P13431434533437943074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 (A285210 (n + 1)).toNat

end

end A285205.P13431434533437943074

/-!
# A285206: Positions of 0 in A285205; complement of A285207.

The programs for A285206, there is no canonical definition to state claims against.
-/

/-! ## A285206.P115690284469664947

`∑[A284533(n+1)+1]`
-/

namespace A285206.P115690284469664947
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284533 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A285206.P115690284469664947

/-! ## A285206.P16008898050246681660

`comp[A285207(n+1)-1]+1`
-/

namespace A285206.P16008898050246681660
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285207 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A285206.P16008898050246681660

/-! ## A285206.P1403702412072952765

`eq[0, A285205(n+1)]+1`
-/

namespace A285206.P1403702412072952765
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285205 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A285206.P1403702412072952765

/-! ## A285206.P13512647269544697351

`a(n-1)+A285205(a(n-1)+1)+1` with `a(0)=1`
-/

namespace A285206.P13512647269544697351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A285205 (a (n - 1) + 1).toNat + 1)

end

end A285206.P13512647269544697351

/-! ## A285206.P8420313703008619334

`A285205(A284773(n+1))+A284773(n+1)`
-/

namespace A285206.P8420313703008619334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285205 (A284773 (n + 1)).toNat + A284773 (n + 1)

end

end A285206.P8420313703008619334

/-! ## A285206.P12472499037515975122

`A285209(n+1)-A285205(A285209(n+1))`
-/

namespace A285206.P12472499037515975122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285209 (n + 1) - A285205 (A285209 (n + 1)).toNat

end

end A285206.P12472499037515975122

/-! ## A285206.P2678171049814981354

`A008620(A284658(n+1)+1)+n`
-/

namespace A285206.P2678171049814981354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 (A284658 (n + 1) + 1).toNat + (n : ℤ)

end

end A285206.P2678171049814981354

/-! ## A285206.P18416968995839502076

`A285140(2*(n+1))/2`
-/

namespace A285206.P18416968995839502076
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A285140 (2 * (n + 1)) : ℚ) / 2

end

end A285206.P18416968995839502076

/-! ## A285206.P14888701640528935837

`∑[A284487(2*(n+1))+1]`
-/

namespace A285206.P14888701640528935837
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284487 (2 * (n + 1)) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A285206.P14888701640528935837

/-!
# A285207: Positions of 1 in A285205; complement of A285206.

The programs for A285207, there is no canonical definition to state claims against.
-/

/-! ## A285207.P15564083570458336480

`A284535(n+1)+n`
-/

namespace A285207.P15564083570458336480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284535 (n + 1) + (n : ℤ)

end

end A285207.P15564083570458336480

/-! ## A285207.P10214835340175653050

`∑[A285421(n+1)+2]-1`
-/

namespace A285207.P10214835340175653050
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285421 (n + 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A285207.P10214835340175653050

/-! ## A285207.P15565378795338206401

`eq[n+1, (n+1)*A284533(n+1)]+n+1`
-/

namespace A285207.P15565378795338206401
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A284533 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + (n + 1)

end

end A285207.P15565378795338206401

/-! ## A285207.P4646673728280774416

`A285420(Δ[n²])`
-/

namespace A285207.P4646673728280774416
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285420 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A285207.P4646673728280774416

/-! ## A285207.P17113149406272793298

`A285420(2*(n+1))-1`
-/

namespace A285207.P17113149406272793298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285420 (2 * (n + 1)) - 1

end

end A285207.P17113149406272793298

/-! ## A285207.P12705307655078501603

`floor(A285141(2*(n+1))/2)`
-/

namespace A285207.P12705307655078501603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A285141 (2 * (n + 1)) : ℚ) / 2⌋

end

end A285207.P12705307655078501603

/-! ## A285207.P7233339820027566919

`ceil(A285141(2*n+1)/2)`
-/

namespace A285207.P7233339820027566919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A285141 (2 * n + 1) : ℚ) / 2⌉

end

end A285207.P7233339820027566919

/-! ## A285207.P12219725756561261322

`A284489(2*(n+1))/2+n`
-/

namespace A285207.P12219725756561261322
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A284489 (2 * (n + 1)) : ℚ) / 2 + (n : ℚ)

end

end A285207.P12219725756561261322

/-! ## A285207.P8765712391090789409

`A284589(2*n+1)-2*n`
-/

namespace A285207.P8765712391090789409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284589 (2 * n + 1) - (2 * n : ℤ)

end

end A285207.P8765712391090789409

/-! ## A285207.P3801403316134541529

`∑[A285142(2*n+1)+1]+n`
-/

namespace A285207.P3801403316134541529
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285142 (2 * n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A285207.P3801403316134541529

/-! ## A285207.P11516434263812655123

`A285422(2*(n+1))/2-(n+1)`
-/

namespace A285207.P11516434263812655123
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A285422 (2 * (n + 1)) : ℚ) / 2 - (n + 1 : ℚ)

end

end A285207.P11516434263812655123

/-! ## A285207.P13655269022094315524

`record[A285420(n+2)-A260438(n+2)²]`
-/

namespace A285207.P13655269022094315524
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285420 (n + 2) - A260438 (n + 2) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A285207.P13655269022094315524

/-! ## A285207.P12842423748760105438

`A001489(n+1)+A285422(2*(n+1))/2`
-/

namespace A285207.P12842423748760105438
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001489 (n + 1) : ℚ) + (A285422 (2 * (n + 1)) : ℚ) / 2

end

end A285207.P12842423748760105438

/-! ## A285207.P14632037506975399581

`filter[n+1, A285205(#)]`
-/

namespace A285207.P14632037506975399581
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A285205 (f1 j) = 1) n)

end

end A285207.P14632037506975399581

/-! ## A285207.P17645475265766840032

`eq[1, A285205(n+1)]+1`
-/

namespace A285207.P17645475265766840032
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285205 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A285207.P17645475265766840032

/-! ## A285207.P4008406225972803888

`filter[A285420(2*n+1), A285418(#)]`
-/

namespace A285207.P4008406225972803888
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285420 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A285418 (f1 j).toNat = 1) n)

end

end A285207.P4008406225972803888

/-! ## A285207.P17458889894142619857

`filter[A285420(2*n+1), A285421(#)]`
-/

namespace A285207.P17458889894142619857
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285420 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A285421 (f1 j).toNat = 1) n)

end

end A285207.P17458889894142619857

/-! ## A285207.P1071871007501102775

`filter[A285420(2*n+1), A285431(#)]`
-/

namespace A285207.P1071871007501102775
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285420 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A285431 (f1 j).toNat = 1) n)

end

end A285207.P1071871007501102775

/-! ## A285207.P14536753084441617317

`A285210(n+1)+A285205(A285210(n+1)+1)`
-/

namespace A285207.P14536753084441617317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285210 (n + 1) + A285205 (A285210 (n + 1) + 1).toNat

end

end A285207.P14536753084441617317

/-! ## A285207.P12897799660784288133

`lt[A285205(n+1), A285205(A285208(n+1)+n)]`
-/

namespace A285207.P12897799660784288133
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285205 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285205 (A285208 (n + 1) + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A285207.P12897799660784288133

/-!
# A285208: 1-limiting word of the morphism 0->10, 1-> 0100.

The programs for A285208, there is no canonical definition to state claims against.
-/

/-! ## A285208.P13623573582756953839

`log2(gcd(2, A285207(n+1)))`
-/

namespace A285208.P13623573582756953839
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (Int.gcd 2 (A285207 (n + 1)) : ℝ)

end

end A285208.P13623573582756953839

/-! ## A285208.P16608978588183861371

`char[A285210(n+1)-1]`
-/

namespace A285208.P16608978588183861371
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285210 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A285208.P16608978588183861371

/-! ## A285208.P4639841895287806893

`∑[A285421(n+1)]%2`
-/

namespace A285208.P4639841895287806893
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285421 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) 2

end

end A285208.P4639841895287806893

/-! ## A285208.P11387983945091964903

`char[A285423(Δ[n²])-1]`
-/

namespace A285208.P11387983945091964903
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285423 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A285208.P11387983945091964903

/-! ## A285208.P448165659345673696

`and(1, A284535(n+1)+n-1)`
-/

namespace A285208.P448165659345673696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A284535 (n + 1) + ((n : ℤ) - 1))

end

end A285208.P448165659345673696

/-! ## A285208.P8218309376926049902

`A161739(and(1, n-A284535(n+1)))`
-/

namespace A285208.P8218309376926049902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161739 (Int.land 1 ((n : ℤ) - A284535 (n + 1))).toNat

end

end A285208.P8218309376926049902

/-! ## A285208.P1492025523728744546

`A285420(2*(n+1))%2`
-/

namespace A285208.P1492025523728744546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A285420 (2 * (n + 1))) 2

end

end A285208.P1492025523728744546

/-! ## A285208.P16965037737692556647

`∑[A285142(2*n+1)]%2`
-/

namespace A285208.P16965037737692556647
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285142 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) 2

end

end A285208.P16965037737692556647

/-! ## A285208.P11868472779777244603

`(A284589(2*n+1)+1)%2`
-/

namespace A285208.P11868472779777244603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A284589 (2 * n + 1) + 1) 2

end

end A285208.P11868472779777244603

/-! ## A285208.P10470489101441580839

`and(∑[A285142(2*n+3)], A285142(2*n+3))`
-/

namespace A285208.P10470489101441580839
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285142 (2 * n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (∑ j ∈ Finset.range (n + 1), f1 j) (A285142 (2 * n + 3))

end

end A285208.P10470489101441580839

/-! ## A285208.P3131291901258382686

`A059841(A285207(n+1))`
-/

namespace A285208.P3131291901258382686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 (A285207 (n + 1)).toNat

end

end A285208.P3131291901258382686

/-! ## A285208.P2608570539829692711

`A285110(A285141(2*(n+1)))-1`
-/

namespace A285208.P2608570539829692711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285110 (A285141 (2 * (n + 1))).toNat - 1

end

end A285208.P2608570539829692711

/-! ## A285208.P12415787547286066291

`A285127(n+1)%A285110(A285141(2*(n+1)))`
-/

namespace A285208.P12415787547286066291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A285127 (n + 1)) (A285110 (A285141 (2 * (n + 1))).toNat)

end

end A285208.P12415787547286066291

/-! ## A285208.P8985659762210742824

`A285130(n+1)%A285110(A285141(2*(n+1)))`
-/

namespace A285208.P8985659762210742824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A285130 (n + 1)) (A285110 (A285141 (2 * (n + 1))).toNat)

end

end A285208.P8985659762210742824

/-! ## A285208.P7653711138387864105

`A285141(n+1)%A285110(A285141(2*(n+1)))`
-/

namespace A285208.P7653711138387864105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A285141 (n + 1)) (A285110 (A285141 (2 * (n + 1))).toNat)

end

end A285208.P7653711138387864105

/-!
# A285209: Positions of 0 in A285208; complement of A285210.

The programs for A285209, there is no canonical definition to state claims against.
-/

/-! ## A285209.P14368697283035077042

`∑[A284588(n+1)+1]`
-/

namespace A285209.P14368697283035077042
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284588 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A285209.P14368697283035077042

/-! ## A285209.P7969685213063572001

`comp[A285210(n+1)-1]+1`
-/

namespace A285209.P7969685213063572001
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285210 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A285209.P7969685213063572001

/-! ## A285209.P826819550599565255

`comp[∑[C(A285418(n+1)+1, 2)]+2*n]+1`
-/

namespace A285209.P826819550599565255
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A285418 (n + 1) + 1).toNat 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 2 * n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 1

end

end A285209.P826819550599565255

/-! ## A285209.P10982049994793967378

`lt[A285208(n+1), 1]+1`
-/

namespace A285209.P10982049994793967378
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285208 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A285209.P10982049994793967378

/-! ## A285209.P4381056676216507060

`a(n-1)+A285421(a(n-1)+1)+1` with `a(0)=2`
-/

namespace A285209.P4381056676216507060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  a (n - 1) + (A285421 (a (n - 1) + 1).toNat + 1)

end

end A285209.P4381056676216507060

/-! ## A285209.P17820886111936285102

`A285208(A284773(n+1))+A284773(n+1)`
-/

namespace A285209.P17820886111936285102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285208 (A284773 (n + 1)).toNat + A284773 (n + 1)

end

end A285209.P17820886111936285102

/-! ## A285209.P6204563220451939650

`A285208(A285206(n+1))+A285206(n+1)`
-/

namespace A285209.P6204563220451939650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285208 (A285206 (n + 1)).toNat + A285206 (n + 1)

end

end A285209.P6204563220451939650

/-! ## A285209.P3506892486179520131

`∑[A284490(Δ[n²])+1]`
-/

namespace A285209.P3506892486179520131
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284490 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A285209.P3506892486179520131

/-! ## A285209.P9313316119304857788

`A285143(2*(n+1))/2`
-/

namespace A285209.P9313316119304857788
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A285143 (2 * (n + 1)) : ℚ) / 2

end

end A285209.P9313316119304857788

/-! ## A285209.P8930179166163567782

`∑[gcd(2, A285143(2*n+1))]`
-/

namespace A285209.P8930179166163567782
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (A285143 (2 * n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A285209.P8930179166163567782

/-! ## A285209.P15701409360717839574

`∑[A284490(2*(n+1))]+1+n`
-/

namespace A285209.P15701409360717839574
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284490 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1 + (n : ℤ)

end

end A285209.P15701409360717839574

/-! ## A285209.P4844075901218021758

`∑[A285143(2*(n+1))-A285143(2*n+1)]`
-/

namespace A285209.P4844075901218021758
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285143 (2 * (n + 1)) - A285143 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A285209.P4844075901218021758

/-!
# A285210: Positions of 1 in A285208; complement of A285209.

The programs for A285210, there is no canonical definition to state claims against.
-/

/-! ## A285210.P16389988969174369301

`A284590(n+1)+n`
-/

namespace A285210.P16389988969174369301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284590 (n + 1) + (n : ℤ)

end

end A285210.P16389988969174369301

/-! ## A285210.P13159348117634392360

`∑[A285418(n+1)+2]-1`
-/

namespace A285210.P13159348117634392360
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285418 (n + 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A285210.P13159348117634392360

/-! ## A285210.P10702939615278273469

`A285423(Δ[n²])`
-/

namespace A285210.P10702939615278273469
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285423 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A285210.P10702939615278273469

/-! ## A285210.P7266794515385401690

`A285423(2*(n+1))-1`
-/

namespace A285210.P7266794515385401690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285423 (2 * (n + 1)) - 1

end

end A285210.P7266794515385401690

/-! ## A285210.P3548222479910166880

`A284534(Δ[n²])-n-n`
-/

namespace A285210.P3548222479910166880
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284534 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat - (n : ℤ) - (n : ℤ)

end

end A285210.P3548222479910166880

/-! ## A285210.P9365472281707730392

`floor(A285144(2*(n+1))/2)`
-/

namespace A285210.P9365472281707730392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A285144 (2 * (n + 1)) : ℚ) / 2⌋

end

end A285210.P9365472281707730392

/-! ## A285210.P14295164476707117388

`ceil(A285144(2*n+1)/2)`
-/

namespace A285210.P14295164476707117388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A285144 (2 * n + 1) : ℚ) / 2⌉

end

end A285210.P14295164476707117388

/-! ## A285210.P14916556093974034012

`A284492(2*(n+1))/2+n`
-/

namespace A285210.P14916556093974034012
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A284492 (2 * (n + 1)) : ℚ) / 2 + (n : ℚ)

end

end A285210.P14916556093974034012

/-! ## A285210.P14528751011459469415

`A284534(2*n+1)-2*n`
-/

namespace A285210.P14528751011459469415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284534 (2 * n + 1) - (2 * n : ℤ)

end

end A285210.P14528751011459469415

/-! ## A285210.P3452414522393653073

`∑[A285139(2*n+1)+1]+n`
-/

namespace A285210.P3452414522393653073
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285139 (2 * n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A285210.P3452414522393653073

/-! ## A285210.P10862618928004577216

`record[A285423(n+2)-A260438(n+2)²]`
-/

namespace A285210.P10862618928004577216
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285423 (n + 2) - A260438 (n + 2) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A285210.P10862618928004577216

/-! ## A285210.P7780374003735258615

`A001489(n+1)+A285419(2*(n+1))/2`
-/

namespace A285210.P7780374003735258615
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001489 (n + 1) : ℚ) + (A285419 (2 * (n + 1)) : ℚ) / 2

end

end A285210.P7780374003735258615

/-! ## A285210.P8131156804966984300

`(A285419(2*(n+1))-A004277(n+1))/2`
-/

namespace A285210.P8131156804966984300
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A285419 (2 * (n + 1)) - A004277 (n + 1) : ℚ) / 2

end

end A285210.P8131156804966984300

/-! ## A285210.P4912211659965494433

`(A285419(2*(n+1))-A005843(n+1))/2`
-/

namespace A285210.P4912211659965494433
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A285419 (2 * (n + 1)) - A005843 (n + 1) : ℚ) / 2

end

end A285210.P4912211659965494433

/-! ## A285210.P16996007574548758447

`A260438(2*(n+1))*A285423(2*n+1)`
-/

namespace A285210.P16996007574548758447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260438 (2 * (n + 1)) * A285423 (2 * n + 1)

end

end A285210.P16996007574548758447

/-! ## A285210.P6793452323924830830

`2*A285423(2*n+1)/A020639(2*(n+1))`
-/

namespace A285210.P6793452323924830830
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 * ((A285423 (2 * n + 1) : ℚ) / (A020639 (2 * (n + 1)) : ℚ))

end

end A285210.P6793452323924830830

/-! ## A285210.P1299098180589458072

`A285421(A285423(n+2))*A285423(2*n+1)`
-/

namespace A285210.P1299098180589458072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285421 (A285423 (n + 2)).toNat * A285423 (2 * n + 1)

end

end A285210.P1299098180589458072

/-! ## A285210.P16504973577241772763

`filter[n+1, A285208(#)]`
-/

namespace A285210.P16504973577241772763
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A285208 (f1 j) = 1) n)

end

end A285210.P16504973577241772763

/-! ## A285210.P9521064395448053060

`eq[1, A285208(n+1)]+1`
-/

namespace A285210.P9521064395448053060
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285208 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A285210.P9521064395448053060

/-! ## A285210.P14842475688140668553

`filter[A285423(2*n+1), A285421(#)]`
-/

namespace A285210.P14842475688140668553
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285423 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A285421 (f1 j).toNat = 1) n)

end

end A285210.P14842475688140668553

/-!
# A285211: Numbers k that share no digits with the k-th triangular number.

The programs for A285211, there is no canonical definition to state claims against.
-/

/-! ## A285211.P16132255918698454176

`∑[A086700(A005361(A037157(n)))]`
-/

namespace A285211.P16132255918698454176
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086700 (A005361 (A037157 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A285211.P16132255918698454176

/-!
# A285212: Expansion of Product_{k>=0} (1-x^(3*k+2))^(3*k+2).

The programs for A285212, there is no canonical definition to state claims against.
-/

/-! ## A285212.P17210034705368634777

`A020985(A022570(n))*A262948(n)`
-/

namespace A285212.P17210034705368634777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020985 (A022570 n).toNat * A262948 n

end

end A285212.P17210034705368634777

/-!
# A285213: Expansion of Product_{k>=0} (1-x^(4*k+3))^(4*k+3).

The programs for A285213, there is no canonical definition to state claims against.
-/

/-! ## A285213.P18225982548566737250

`A033999(n)*A285339(n)`
-/

namespace A285213.P18225982548566737250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A285339 n

end

end A285213.P18225982548566737250

/-! ## A285213.P8636166295352064420

`A009001(2*n)*A285339(n)`
-/

namespace A285213.P8636166295352064420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009001 (2 * n) * A285339 n

end

end A285213.P8636166295352064420

/-! ## A285213.P10219096046368009110

`(A004442(n)-n)*A285339(n)`
-/

namespace A285213.P10219096046368009110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A004442 n - (n : ℤ)) * A285339 n

end

end A285213.P10219096046368009110

/-! ## A285213.P2777474923202522800

`A034947(2*n+1)*A285339(n)`
-/

namespace A285213.P2777474923202522800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034947 (2 * n + 1) * A285339 n

end

end A285213.P2777474923202522800

/-! ## A285213.P6758836004988861350

`A010892(A008486(n))*A285339(n)`
-/

namespace A285213.P6758836004988861350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010892 (A008486 n).toNat * A285339 n

end

end A285213.P6758836004988861350

/-! ## A285213.P12117113895848691015

`A163805(A004273(n))*A285339(n)`
-/

namespace A285213.P12117113895848691015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163805 (A004273 n).toNat * A285339 n

end

end A285213.P12117113895848691015

/-! ## A285213.P10710668739891615301

`A262811(n)/A284628(n)*A285339(n)`
-/

namespace A285213.P10710668739891615301
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A262811 n : ℚ) / (A284628 n : ℚ) * (A285339 n : ℚ)

end

end A285213.P10710668739891615301

/-! ## A285213.P9572669329207993989

`A130595(A000217(n))*A285339(n)`
-/

namespace A285213.P9572669329207993989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130595 (A000217 n).toNat * A285339 n

end

end A285213.P9572669329207993989

/-!
# A285214: Expansion of Product_{k>=0} (1-x^(5*k+4))^(5*k+4).

The programs for A285214, there is no canonical definition to state claims against.
-/

/-! ## A285214.P12684704868005835096

`A118759(A285340(n))*A131554(n)`
-/

namespace A285214.P12684704868005835096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118759 (A285340 n).toNat * A131554 n

end

end A285214.P12684704868005835096

/-! ## A285214.P4224265761263590965

`A118759(A285340(n))/A131554(A118759(n))`
-/

namespace A285214.P4224265761263590965
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A118759 (A285340 n).toNat : ℚ) / (A131554 (A118759 n).toNat : ℚ)

end

end A285214.P4224265761263590965

/-! ## A285214.P1101277753303287281

`A062157(A008498(n))*A285340(n)`
-/

namespace A285214.P1101277753303287281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062157 (A008498 n).toNat * A285340 n

end

end A285214.P1101277753303287281

/-! ## A285214.P11031578168500958485

`∑[A291696(n)%A103045(n+1)]`
-/

namespace A285214.P11031578168500958485
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A291696 n) (A103045 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A285214.P11031578168500958485

/-! ## A285214.P5489735409753675536

`∑[A291696(n)]%A265791(n+1)`
-/

namespace A285214.P5489735409753675536
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291696 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (A265791 (n + 1))

end

end A285214.P5489735409753675536

/-!
# A285215: Expansion of Product_{k>=1} (1 - x^(4*k))^(4*k) / (1 - x^k)^k.

The programs for A285215, there is no canonical definition to state claims against.
-/

/-! ## A285215.P4799261961785394146

`A006330(n)-A046660(A186999(n))`
-/

namespace A285215.P4799261961785394146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006330 n - A046660 (A186999 n).toNat

end

end A285215.P4799261961785394146

/-!
# A285217: Indices of primes in A000712.

The programs for A285217, there is no canonical definition to state claims against.
-/

/-! ## A285217.P3651162537393584187

`A039634(A361960(n+1))-1`
-/

namespace A285217.P3651162537393584187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039634 (A361960 (n + 1)).toNat - 1

end

end A285217.P3651162537393584187

/-!
# A285218: Indices of primes in A001156.

The programs for A285218, there is no canonical definition to state claims against.
-/

/-! ## A285218.P16587038969364238334

`eq[1, A001222(A001156(n))]`
-/

namespace A285218.P16587038969364238334
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A001156 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A285218.P16587038969364238334

/-! ## A285218.P5354984848019271276

`lt[A000007(n), A010051(A001156(n))]`
-/

namespace A285218.P5354984848019271276
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (A001156 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A285218.P5354984848019271276

/-! ## A285218.P9561400943772536974

`lt[A003108(n), A020639(A001156(n))]`
-/

namespace A285218.P9561400943772536974
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003108 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A001156 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A285218.P9561400943772536974

/-! ## A285218.P3168798086365525449

`eq[1, A010051(A292520(n)+2*A339365(n))]`
-/

namespace A285218.P3168798086365525449
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (A292520 n + 2 * A339365 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A285218.P3168798086365525449

/-! ## A285218.P15442376347456719327

`lt[A010051(2*(n+1)), A010051(A001156(n))]`
-/

namespace A285218.P15442376347456719327
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (A001156 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A285218.P15442376347456719327

/-!
# A285219: Indices of primes in A003105.

The programs for A285219, there is no canonical definition to state claims against.
-/

/-! ## A285219.P4003085563785325632

`eq[1, A001222(A003105(n))]`
-/

namespace A285219.P4003085563785325632
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A003105 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A285219.P4003085563785325632

/-! ## A285219.P14650698626051353473

`eq[1, A001222(abs(A227398(n)))]`
-/

namespace A285219.P14650698626051353473
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 |A227398 n|.toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A285219.P14650698626051353473

/-! ## A285219.P725667627150397218

`eq[2, A000005(abs(A227398(n)))]`
-/

namespace A285219.P725667627150397218
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 |A227398 n|.toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A285219.P725667627150397218

/-! ## A285219.P14545062786766784465

`eq[2, A000005(A112207(6*n))]`
-/

namespace A285219.P14545062786766784465
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A112207 (6 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A285219.P14545062786766784465

/-! ## A285219.P3344819299115294458

`eq[2, A000005(A112208(6*n))]`
-/

namespace A285219.P3344819299115294458
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A112208 (6 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A285219.P3344819299115294458

/-!
# A285223: Indices of primes in A026007.

The programs for A285223, there is no canonical definition to state claims against.
-/

/-! ## A285223.P12009862525455762296

`A294121(n+1)*A334029(A294125(n+1))`
-/

namespace A285223.P12009862525455762296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294121 (n + 1) * A334029 (A294125 (n + 1)).toNat

end

end A285223.P12009862525455762296

/-!
# A285225: Primes with integer arithmetic mean of digits = 4 in base 10.

The programs for A285225, the canonical program `A285225.P10692360427278529095` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A285225 has offset 1).

The definition of A285225 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 760 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A285225.P10692360427278529095

`p?[A061387(n+1)]`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A285225

/-- `p?[A061387(n+1)]` -/
def P10692360427278529095.Spec : Prop :=
  ∀ n, P10692360427278529095.a n = A285225 (n + 1)

theorem P10692360427278529095.correct : P10692360427278529095.Spec := by
  intro n
  simp only [A285225, Nat.add_sub_cancel]

end A285225

/-! ## A285225.P11146058882374393808

`p?[A316561(n+1)]`
-/

namespace A285225.P11146058882374393808
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316561 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A285225.P11146058882374393808

namespace A285225

/-- `p?[A316561(n+1)]` -/
def P11146058882374393808.Spec : Prop :=
  ∀ n, P11146058882374393808.a n = A285225 (n + 1)

end A285225

/-! ## A285225.P12850510992470026959

`record[A020639(A061387(n+2))]`
-/

namespace A285225.P12850510992470026959
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A061387 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A285225.P12850510992470026959

namespace A285225

/-- `record[A020639(A061387(n+2))]` -/
def P12850510992470026959.Spec : Prop :=
  ∀ n, P12850510992470026959.a n = A285225 (n + 1)

end A285225

/-! ## A285225.P8397543452290809949

`∩[A316561(n+1), A061345(n)]`
-/

namespace A285225.P8397543452290809949
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316561 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061345 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A285225.P8397543452290809949

namespace A285225

/-- `∩[A316561(n+1), A061345(n)]` -/
def P8397543452290809949.Spec : Prop :=
  ∀ n, (P8397543452290809949.a n : ℤ) = A285225 (n + 1)

end A285225

/-! ## A285225.P3337901876012621463

`∩[A000040(n+1), A061387(n+1)]`
-/

namespace A285225.P3337901876012621463
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061387 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A285225.P3337901876012621463

namespace A285225

/-- `∩[A000040(n+1), A061387(n+1)]` -/
def P3337901876012621463.Spec : Prop :=
  ∀ n, (P3337901876012621463.a n : ℤ) = A285225 (n + 1)

end A285225

/-! ## A285225.P6733109711457736507

`∩[A004139(n+1), A061387(n+1)]`
-/

namespace A285225.P6733109711457736507
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061387 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A285225.P6733109711457736507

namespace A285225

/-- `∩[A004139(n+1), A061387(n+1)]` -/
def P6733109711457736507.Spec : Prop :=
  ∀ n, (P6733109711457736507.a n : ℤ) = A285225 (n + 1)

end A285225

/-! ## A285225.P6927553870700908749

`∩[A006005(n+1), A061387(n+1)]`
-/

namespace A285225.P6927553870700908749
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061387 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A285225.P6927553870700908749

namespace A285225

/-- `∩[A006005(n+1), A061387(n+1)]` -/
def P6927553870700908749.Spec : Prop :=
  ∀ n, (P6927553870700908749.a n : ℤ) = A285225 (n + 1)

end A285225

/-! ## A285225.P3108062264198899154

`∩[A008578(n+1), A061387(n+1)]`
-/

namespace A285225.P3108062264198899154
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061387 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A285225.P3108062264198899154

namespace A285225

/-- `∩[A008578(n+1), A061387(n+1)]` -/
def P3108062264198899154.Spec : Prop :=
  ∀ n, (P3108062264198899154.a n : ℤ) = A285225 (n + 1)

end A285225

/-! ## A285225.P16606981723884288089

`∩[A033946(n+1), A061387(n+1)]`
-/

namespace A285225.P16606981723884288089
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033946 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061387 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A285225.P16606981723884288089

namespace A285225

/-- `∩[A033946(n+1), A061387(n+1)]` -/
def P16606981723884288089.Spec : Prop :=
  ∀ n, (P16606981723884288089.a n : ℤ) = A285225 (n + 1)

end A285225

/-! ## A285225.P10428322813036951116

`∩[A045319(n+1), A061387(n+1)]`
-/

namespace A285225.P10428322813036951116
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061387 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A285225.P10428322813036951116

namespace A285225

/-- `∩[A045319(n+1), A061387(n+1)]` -/
def P10428322813036951116.Spec : Prop :=
  ∀ n, (P10428322813036951116.a n : ℤ) = A285225 (n + 1)

end A285225

/-! ## A285225.P8937124609463195369

`∩[A045344(n+1), A061387(n+1)]`
-/

namespace A285225.P8937124609463195369
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061387 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A285225.P8937124609463195369

namespace A285225

/-- `∩[A045344(n+1), A061387(n+1)]` -/
def P8937124609463195369.Spec : Prop :=
  ∀ n, (P8937124609463195369.a n : ℤ) = A285225 (n + 1)

end A285225

/-! ## A285225.P13966606575057692398

`∩[A053813(n+1), A061387(n+1)]`
-/

namespace A285225.P13966606575057692398
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053813 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061387 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A285225.P13966606575057692398

namespace A285225

/-- `∩[A053813(n+1), A061387(n+1)]` -/
def P13966606575057692398.Spec : Prop :=
  ∀ n, (P13966606575057692398.a n : ℤ) = A285225 (n + 1)

end A285225

/-! ## A285225.P5975124407267726310

`∩[A055977(n+1), A061387(n+1)]`
-/

namespace A285225.P5975124407267726310
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055977 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061387 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A285225.P5975124407267726310

namespace A285225

/-- `∩[A055977(n+1), A061387(n+1)]` -/
def P5975124407267726310.Spec : Prop :=
  ∀ n, (P5975124407267726310.a n : ℤ) = A285225 (n + 1)

end A285225

/-! ## A285225.P1443993830297272421

`∩[A061387(n+1), A062338(n+1)]`
-/

namespace A285225.P1443993830297272421
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061387 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062338 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A285225.P1443993830297272421

namespace A285225

/-- `∩[A061387(n+1), A062338(n+1)]` -/
def P1443993830297272421.Spec : Prop :=
  ∀ n, (P1443993830297272421.a n : ℤ) = A285225 (n + 1)

end A285225

/-! ## A285225.P12303853721840278389

`∩[A061387(n+1), A064728(n+1)]`
-/

namespace A285225.P12303853721840278389
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061387 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064728 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A285225.P12303853721840278389

namespace A285225

/-- `∩[A061387(n+1), A064728(n+1)]` -/
def P12303853721840278389.Spec : Prop :=
  ∀ n, (P12303853721840278389.a n : ℤ) = A285225 (n + 1)

end A285225

/-! ## A285225.P8283131077255906313

`∩[A061387(n+1), A065091(n+1)]`
-/

namespace A285225.P8283131077255906313
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061387 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A285225.P8283131077255906313

namespace A285225

/-- `∩[A061387(n+1), A065091(n+1)]` -/
def P8283131077255906313.Spec : Prop :=
  ∀ n, (P8283131077255906313.a n : ℤ) = A285225 (n + 1)

end A285225

/-! ## A285225.P1271492657007017213

`∩[A061387(n+1), A065396(n+1)]`
-/

namespace A285225.P1271492657007017213
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061387 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065396 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A285225.P1271492657007017213

namespace A285225

/-- `∩[A061387(n+1), A065396(n+1)]` -/
def P1271492657007017213.Spec : Prop :=
  ∀ n, (P1271492657007017213.a n : ℤ) = A285225 (n + 1)

end A285225

/-! ## A285225.P3471568321195854706

`∩[A061387(n+1), A069709(n+1)]`
-/

namespace A285225.P3471568321195854706
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061387 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069709 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A285225.P3471568321195854706

namespace A285225

/-- `∩[A061387(n+1), A069709(n+1)]` -/
def P3471568321195854706.Spec : Prop :=
  ∀ n, (P3471568321195854706.a n : ℤ) = A285225 (n + 1)

end A285225

/-! ## A285225.P7467379545460756888

`∩[A061387(n+1), A070957(n+1)]`
-/

namespace A285225.P7467379545460756888
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061387 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070957 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A285225.P7467379545460756888

namespace A285225

/-- `∩[A061387(n+1), A070957(n+1)]` -/
def P7467379545460756888.Spec : Prop :=
  ∀ n, (P7467379545460756888.a n : ℤ) = A285225 (n + 1)

end A285225

/-! ## A285225.P12217821476562801050

`∩[A061387(n+1), A078138(n+1)]`
-/

namespace A285225.P12217821476562801050
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061387 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078138 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A285225.P12217821476562801050

namespace A285225

/-- `∩[A061387(n+1), A078138(n+1)]` -/
def P12217821476562801050.Spec : Prop :=
  ∀ n, (P12217821476562801050.a n : ℤ) = A285225 (n + 1)

end A285225

/-!
# A285226: Primes with integer arithmetic mean of digits = 5 in base 10.

The programs for A285226, the canonical program `A285226.P16444782336951835408` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A285226 has offset 1).

The definition of A285226 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 840 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A285226.P16444782336951835408

`p?[A061388(n+1)]`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A285226

/-- `p?[A061388(n+1)]` -/
def P16444782336951835408.Spec : Prop :=
  ∀ n, P16444782336951835408.a n = A285226 (n + 1)

theorem P16444782336951835408.correct : P16444782336951835408.Spec := by
  intro n
  simp only [A285226, Nat.add_sub_cancel]

end A285226

/-! ## A285226.P10450713390401415054

`record[p?[A061388(A133310(n))]]`
-/

namespace A285226.P10450713390401415054
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061388 (A133310 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A285226.P10450713390401415054

namespace A285226

/-- `record[p?[A061388(A133310(n))]]` -/
def P10450713390401415054.Spec : Prop :=
  ∀ n, P10450713390401415054.a n = A285226 (n + 1)

end A285226

/-! ## A285226.P2692875449254961626

`record[p?[A061388(A324347(n))]]`
-/

namespace A285226.P2692875449254961626
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061388 (A324347 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A285226.P2692875449254961626

namespace A285226

/-- `record[p?[A061388(A324347(n))]]` -/
def P2692875449254961626.Spec : Prop :=
  ∀ n, P2692875449254961626.a n = A285226 (n + 1)

end A285226

/-! ## A285226.P2205940028562349264

`record[p?[A061388(A328396(n))]]`
-/

namespace A285226.P2205940028562349264
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061388 (A328396 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A285226.P2205940028562349264

namespace A285226

/-- `record[p?[A061388(A328396(n))]]` -/
def P2205940028562349264.Spec : Prop :=
  ∀ n, P2205940028562349264.a n = A285226 (n + 1)

end A285226

/-! ## A285226.P2977856589719667258

`∩[A000040(n+1), A061388(n+1)]`
-/

namespace A285226.P2977856589719667258
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061388 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A285226.P2977856589719667258

namespace A285226

/-- `∩[A000040(n+1), A061388(n+1)]` -/
def P2977856589719667258.Spec : Prop :=
  ∀ n, (P2977856589719667258.a n : ℤ) = A285226 (n + 1)

end A285226

/-! ## A285226.P3309336569632468475

`∩[A006005(n+1), A061388(n+1)]`
-/

namespace A285226.P3309336569632468475
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061388 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A285226.P3309336569632468475

namespace A285226

/-- `∩[A006005(n+1), A061388(n+1)]` -/
def P3309336569632468475.Spec : Prop :=
  ∀ n, (P3309336569632468475.a n : ℤ) = A285226 (n + 1)

end A285226

/-! ## A285226.P7026800140417943714

`∩[A008578(n+1), A061388(n+1)]`
-/

namespace A285226.P7026800140417943714
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061388 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A285226.P7026800140417943714

namespace A285226

/-- `∩[A008578(n+1), A061388(n+1)]` -/
def P7026800140417943714.Spec : Prop :=
  ∀ n, (P7026800140417943714.a n : ℤ) = A285226 (n + 1)

end A285226

/-! ## A285226.P4431136280637939860

`∩[A033946(n+1), A061388(n+1)]`
-/

namespace A285226.P4431136280637939860
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033946 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061388 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A285226.P4431136280637939860

namespace A285226

/-- `∩[A033946(n+1), A061388(n+1)]` -/
def P4431136280637939860.Spec : Prop :=
  ∀ n, (P4431136280637939860.a n : ℤ) = A285226 (n + 1)

end A285226

/-! ## A285226.P11569868193397327294

`∩[A045344(n+1), A061388(n+1)]`
-/

namespace A285226.P11569868193397327294
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061388 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A285226.P11569868193397327294

namespace A285226

/-- `∩[A045344(n+1), A061388(n+1)]` -/
def P11569868193397327294.Spec : Prop :=
  ∀ n, (P11569868193397327294.a n : ℤ) = A285226 (n + 1)

end A285226

/-! ## A285226.P6547856582846724534

`∩[A046022(n+1), A061388(n+1)]`
-/

namespace A285226.P6547856582846724534
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046022 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061388 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A285226.P6547856582846724534

namespace A285226

/-- `∩[A046022(n+1), A061388(n+1)]` -/
def P6547856582846724534.Spec : Prop :=
  ∀ n, (P6547856582846724534.a n : ℤ) = A285226 (n + 1)

end A285226

/-! ## A285226.P4927305836687575656

`∩[A051948(n+1), A061388(n+1)]`
-/

namespace A285226.P4927305836687575656
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051948 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061388 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A285226.P4927305836687575656

namespace A285226

/-- `∩[A051948(n+1), A061388(n+1)]` -/
def P4927305836687575656.Spec : Prop :=
  ∀ n, (P4927305836687575656.a n : ℤ) = A285226 (n + 1)

end A285226

/-! ## A285226.P11741184425558128764

`∩[A061388(n+1), A062340(n+1)]`
-/

namespace A285226.P11741184425558128764
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061388 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062340 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A285226.P11741184425558128764

namespace A285226

/-- `∩[A061388(n+1), A062340(n+1)]` -/
def P11741184425558128764.Spec : Prop :=
  ∀ n, (P11741184425558128764.a n : ℤ) = A285226 (n + 1)

end A285226

/-! ## A285226.P7946396160359030038

`∩[A061388(n+1), A064728(n+1)]`
-/

namespace A285226.P7946396160359030038
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061388 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064728 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A285226.P7946396160359030038

namespace A285226

/-- `∩[A061388(n+1), A064728(n+1)]` -/
def P7946396160359030038.Spec : Prop :=
  ∀ n, (P7946396160359030038.a n : ℤ) = A285226 (n + 1)

end A285226

/-! ## A285226.P4685922259901832183

`∩[A061388(n+1), A065091(n+1)]`
-/

namespace A285226.P4685922259901832183
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061388 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A285226.P4685922259901832183

namespace A285226

/-- `∩[A061388(n+1), A065091(n+1)]` -/
def P4685922259901832183.Spec : Prop :=
  ∀ n, (P4685922259901832183.a n : ℤ) = A285226 (n + 1)

end A285226

/-! ## A285226.P9202428245791990511

`∩[A061388(n+1), A065396(n+1)]`
-/

namespace A285226.P9202428245791990511
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061388 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065396 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A285226.P9202428245791990511

namespace A285226

/-- `∩[A061388(n+1), A065396(n+1)]` -/
def P9202428245791990511.Spec : Prop :=
  ∀ n, (P9202428245791990511.a n : ℤ) = A285226 (n + 1)

end A285226

/-! ## A285226.P9644476150489799111

`∩[A061388(n+1), A066050(n+1)]`
-/

namespace A285226.P9644476150489799111
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061388 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066050 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A285226.P9644476150489799111

namespace A285226

/-- `∩[A061388(n+1), A066050(n+1)]` -/
def P9644476150489799111.Spec : Prop :=
  ∀ n, (P9644476150489799111.a n : ℤ) = A285226 (n + 1)

end A285226

/-! ## A285226.P2748126261129495914

`∩[A061388(n+1), A067126(n+1)]`
-/

namespace A285226.P2748126261129495914
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061388 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067126 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A285226.P2748126261129495914

namespace A285226

/-- `∩[A061388(n+1), A067126(n+1)]` -/
def P2748126261129495914.Spec : Prop :=
  ∀ n, (P2748126261129495914.a n : ℤ) = A285226 (n + 1)

end A285226

/-! ## A285226.P6695929623650731494

`∩[A061388(n+1), A069709(n+1)]`
-/

namespace A285226.P6695929623650731494
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061388 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069709 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A285226.P6695929623650731494

namespace A285226

/-- `∩[A061388(n+1), A069709(n+1)]` -/
def P6695929623650731494.Spec : Prop :=
  ∀ n, (P6695929623650731494.a n : ℤ) = A285226 (n + 1)

end A285226

/-! ## A285226.P5333375151388280452

`∩[A061388(n+1), A070957(n+1)]`
-/

namespace A285226.P5333375151388280452
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061388 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070957 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A285226.P5333375151388280452

namespace A285226

/-- `∩[A061388(n+1), A070957(n+1)]` -/
def P5333375151388280452.Spec : Prop :=
  ∀ n, (P5333375151388280452.a n : ℤ) = A285226 (n + 1)

end A285226

/-! ## A285226.P8448274122648816767

`∩[A061388(n+1), A075763(n+1)]`
-/

namespace A285226.P8448274122648816767
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061388 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075763 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A285226.P8448274122648816767

namespace A285226

/-- `∩[A061388(n+1), A075763(n+1)]` -/
def P8448274122648816767.Spec : Prop :=
  ∀ n, (P8448274122648816767.a n : ℤ) = A285226 (n + 1)

end A285226

/-!
# A285227: Primes with integer arithmetic mean of digits = 7 in base 10.

The programs for A285227, the canonical program `A285227.P10686455318228212917` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A285227 has offset 1).

The definition of A285227 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 300 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A285227.P10686455318228212917

`∩[A061424(n+1), A069709(n+1)]`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A285227

/-- `∩[A061424(n+1), A069709(n+1)]` -/
def P10686455318228212917.Spec : Prop :=
  ∀ n, (P10686455318228212917.a n : ℤ) = A285227 (n + 1)

theorem P10686455318228212917.correct : P10686455318228212917.Spec := by
  intro n
  simp only [A285227, Nat.add_sub_cancel]

end A285227

/-! ## A285227.P6566260977795682855

`p?[A061424(n+1)]`
-/

namespace A285227.P6566260977795682855
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061424 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A285227.P6566260977795682855

namespace A285227

/-- `p?[A061424(n+1)]` -/
def P6566260977795682855.Spec : Prop :=
  ∀ n, P6566260977795682855.a n = A285227 (n + 1)

end A285227

/-! ## A285227.P5740119841940432965

`or(1, p?[A061424(-xor(n, -1))])`
-/

namespace A285227.P5740119841940432965
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061424 (-Int.xor (n : ℤ) (-1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A285227.P5740119841940432965

namespace A285227

/-- `or(1, p?[A061424(-xor(n, -1))])` -/
def P5740119841940432965.Spec : Prop :=
  ∀ n, P5740119841940432965.a n = A285227 (n + 1)

end A285227

/-! ## A285227.P12175853872533333055

`filter[A061424(n+1), A010051(#)]`
-/

namespace A285227.P12175853872533333055
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061424 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A285227.P12175853872533333055

namespace A285227

/-- `filter[A061424(n+1), A010051(#)]` -/
def P12175853872533333055.Spec : Prop :=
  ∀ n, P12175853872533333055.a n = A285227 (n + 1)

end A285227

/-! ## A285227.P1533818865195944780

`A000027(p?[A061424(-xor(n, -1))])`
-/

namespace A285227.P1533818865195944780
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061424 (-Int.xor (n : ℤ) (-1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A285227.P1533818865195944780

namespace A285227

/-- `A000027(p?[A061424(-xor(n, -1))])` -/
def P1533818865195944780.Spec : Prop :=
  ∀ n, P1533818865195944780.a n = A285227 (n + 1)

end A285227

/-! ## A285227.P4343129442820924461

`∩[A061424(n+1), A062336(n+1)]`
-/

namespace A285227.P4343129442820924461
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061424 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062336 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A285227.P4343129442820924461

namespace A285227

/-- `∩[A061424(n+1), A062336(n+1)]` -/
def P4343129442820924461.Spec : Prop :=
  ∀ n, (P4343129442820924461.a n : ℤ) = A285227 (n + 1)

end A285227

/-! ## A285227.P1640134187127220514

`∩[A062336(n+1), A069709(n+1)]`
-/

namespace A285227.P1640134187127220514
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062336 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069709 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A285227.P1640134187127220514

namespace A285227

/-- `∩[A062336(n+1), A069709(n+1)]` -/
def P1640134187127220514.Spec : Prop :=
  ∀ n, (P1640134187127220514.a n : ℤ) = A285227 (n + 1)

end A285227

/-! ## A285227.P3417942699950210851

`record[A020639(xor(1, A061424(n+1))+1)]`
-/

namespace A285227.P3417942699950210851
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (Int.xor 1 (A061424 (n + 1)) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A285227.P3417942699950210851

namespace A285227

/-- `record[A020639(xor(1, A061424(n+1))+1)]` -/
def P3417942699950210851.Spec : Prop :=
  ∀ n, P3417942699950210851.a n = A285227 (n + 1)

end A285227

/-! ## A285227.P4576965382395150515

`record[A020639(A061424(A000027(n+1)))]`
-/

namespace A285227.P4576965382395150515
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A061424 (A000027 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A285227.P4576965382395150515

namespace A285227

/-- `record[A020639(A061424(A000027(n+1)))]` -/
def P4576965382395150515.Spec : Prop :=
  ∀ n, P4576965382395150515.a n = A285227 (n + 1)

end A285227

/-! ## A285227.P1924517971190986060

`record[A020639(A061424(A318893(n+1)))]`
-/

namespace A285227.P1924517971190986060
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A061424 (A318893 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A285227.P1924517971190986060

namespace A285227

/-- `record[A020639(A061424(A318893(n+1)))]` -/
def P1924517971190986060.Spec : Prop :=
  ∀ n, P1924517971190986060.a n = A285227 (n + 1)

end A285227

/-! ## A285227.P11520136329135753887

`record[A020639(A061424(A226725(2*n+1)))]`
-/

namespace A285227.P11520136329135753887
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A061424 (A226725 (2 * n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A285227.P11520136329135753887

namespace A285227

/-- `record[A020639(A061424(A226725(2*n+1)))]` -/
def P11520136329135753887.Spec : Prop :=
  ∀ n, P11520136329135753887.a n = A285227 (n + 1)

end A285227

/-! ## A285227.P11455192561079107297

`∩[A061424(n+1), A175762(n+1)]`
-/

namespace A285227.P11455192561079107297
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061424 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175762 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A285227.P11455192561079107297

namespace A285227

/-- `∩[A061424(n+1), A175762(n+1)]` -/
def P11455192561079107297.Spec : Prop :=
  ∀ n, (P11455192561079107297.a n : ℤ) = A285227 (n + 1)

end A285227

/-! ## A285227.P8192800770723739883

`∩[A062336(n+1), A175762(n+1)]`
-/

namespace A285227.P8192800770723739883
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062336 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175762 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A285227.P8192800770723739883

namespace A285227

/-- `∩[A062336(n+1), A175762(n+1)]` -/
def P8192800770723739883.Spec : Prop :=
  ∀ n, (P8192800770723739883.a n : ℤ) = A285227 (n + 1)

end A285227

/-!
# A285228: Primes with integer arithmetic mean of digits = 8 in base 10.

The programs for A285228, there is no canonical definition to state claims against.
-/

/-! ## A285228.P1268933949246006583

`p?[A061425(n+1)]`
-/

namespace A285228.P1268933949246006583
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061425 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A285228.P1268933949246006583

/-! ## A285228.P5969025297535292493

`p?[record[A061425(A291766(n))]]`
-/

namespace A285228.P5969025297535292493
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061425 (A291766 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A285228.P5969025297535292493

/-! ## A285228.P13447284233921830556

`p?[record[A061425(A291769(n))]]`
-/

namespace A285228.P13447284233921830556
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061425 (A291769 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A285228.P13447284233921830556

/-! ## A285228.P15674131262578489515

`p?[record[A061425(A324346(n))]]`
-/

namespace A285228.P15674131262578489515
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061425 (A324346 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A285228.P15674131262578489515

/-! ## A285228.P7258837277936048728

`record[A020639(A061425(n+2))]`
-/

namespace A285228.P7258837277936048728
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A061425 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A285228.P7258837277936048728

/-!
# A285229: Expansion of g.f. Product_{j>=1} 1/(1-y*x^j)^A000009(j), triangle T(n,k), n>=0, 0<=k<=n, read by rows.

The programs for A285229, there is no canonical definition to state claims against.
-/

/-! ## A285229.P14515272441028595930

`A106486(A238802(n)+A155033(n+1))`
-/

namespace A285229.P14515272441028595930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106486 (A238802 n + A155033 (n + 1)).toNat

end

end A285229.P14515272441028595930

/-! ## A285229.P10057291415595443472

`A390256(A287822(n))`
-/

namespace A285229.P10057291415595443472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390256 (A287822 n).toNat

end

end A285229.P10057291415595443472

/-! ## A285229.P18000696400012805436

`A333213(n)-A173920(A173917(n))`
-/

namespace A285229.P18000696400012805436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333213 n - A173920 (A173917 n).toNat

end

end A285229.P18000696400012805436

/-! ## A285229.P580203569038563244

`A333213(n)-A340998(A174376(n))`
-/

namespace A285229.P580203569038563244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333213 n - A340998 ((A174376 n).toNat + 140)

end

end A285229.P580203569038563244

/-! ## A285229.P2617074337086092194

`A333213(n)-A321936(A001263(n+1))`
-/

namespace A285229.P2617074337086092194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333213 n - A321936 (A001263 (n + 1)).toNat

end

end A285229.P2617074337086092194

/-!
# A285230: Number of multisets of exactly n partitions of positive integers into distinct parts with total sum of parts equal to 2n.

The programs for A285230, there is no canonical definition to state claims against.
-/

/-! ## A285230.P144287650578900558

`A285229(∑[4*n])`
-/

namespace A285230.P144287650578900558
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285229 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A285230.P144287650578900558

/-! ## A285230.P13945177205452882970

`A285229(A046092(n))%A000051(n)`
-/

namespace A285230.P13945177205452882970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A285229 (A046092 n).toNat) (A000051 n)

end

end A285230.P13945177205452882970

/-! ## A285230.P8332035473648939672

`char[A001057(n)]*A285229(A046092(n))`
-/

namespace A285230.P8332035473648939672
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A285229 (A046092 n).toNat

end

end A285230.P8332035473648939672

/-! ## A285230.P9325592185245052887

`and(A000225(n+1), A285229(A046092(n)))`
-/

namespace A285230.P9325592185245052887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000225 (n + 1)) (A285229 (A046092 n).toNat)

end

end A285230.P9325592185245052887

/-! ## A285230.P7378829860259998966

`and(A003261(n+1), A285229(A046092(n)))`
-/

namespace A285230.P7378829860259998966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A003261 (n + 1)) (A285229 (A046092 n).toNat)

end

end A285230.P7378829860259998966

/-!
# A285231: Number of entries in the third cycles of all permutations of [n].

The programs for A285231, the canonical program `A285231.P11568269954127471462` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A285231 has offset 3).

The definition of A285231 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A285231.P11568269954127471462

`A159324(n+2)/2`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A285231

/-- `A159324(n+2)/2` -/
def P11568269954127471462.Spec : Prop :=
  ∀ n, P11568269954127471462.a n = (A285231 (n + 3) : ℚ)

end A285231

/-! ## A285231.P15027715663723060331

`A185105(∑[n+2]+4)`
-/

namespace A285231.P15027715663723060331
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185105 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A285231.P15027715663723060331

namespace A285231

/-- `A185105(∑[n+2]+4)` -/
def P15027715663723060331.Spec : Prop :=
  ∀ n, P15027715663723060331.a n = A285231 (n + 3)

end A285231

/-! ## A285231.P1374573097403856759

`A185105(A167614(n+1))^A178334(n)`
-/

namespace A285231.P1374573097403856759
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A185105 (A167614 (n + 1)).toNat : ℚ) ^ (A178334 n : ℤ)

end

end A285231.P1374573097403856759

namespace A285231

/-- `A185105(A167614(n+1))^A178334(n)` -/
def P1374573097403856759.Spec : Prop :=
  ∀ n, P1374573097403856759.a n = (A285231 (n + 3) : ℚ)

end A285231

/-! ## A285231.P16310459470725334147

`gcd(A000038(n), A185105(A167614(n+1)))`
-/

namespace A285231.P16310459470725334147
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A185105 (A167614 (n + 1)).toNat)

end

end A285231.P16310459470725334147

namespace A285231

/-- `gcd(A000038(n), A185105(A167614(n+1)))` -/
def P16310459470725334147.Spec : Prop :=
  ∀ n, (P16310459470725334147.a n : ℤ) = A285231 (n + 3)

end A285231

/-! ## A285231.P3581045855707955976

`lcm(A007318(n), A185105(A167614(n+1)))`
-/

namespace A285231.P3581045855707955976
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A007318 n) (A185105 (A167614 (n + 1)).toNat)

end

end A285231.P3581045855707955976

namespace A285231

/-- `lcm(A007318(n), A185105(A167614(n+1)))` -/
def P3581045855707955976.Spec : Prop :=
  ∀ n, (P3581045855707955976.a n : ℤ) = A285231 (n + 3)

end A285231

/-! ## A285231.P16661894937254531397

`or(A000007(n), A185105(A167614(n+1)))`
-/

namespace A285231.P16661894937254531397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A185105 (A167614 (n + 1)).toNat)

end

end A285231.P16661894937254531397

namespace A285231

/-- `or(A000007(n), A185105(A167614(n+1)))` -/
def P16661894937254531397.Spec : Prop :=
  ∀ n, P16661894937254531397.a n = A285231 (n + 3)

end A285231

/-! ## A285231.P9848310797387086538

`A158416(2*n+1)*A185105(A167614(n+1))`
-/

namespace A285231.P9848310797387086538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158416 (2 * n + 1) * A185105 (A167614 (n + 1)).toNat

end

end A285231.P9848310797387086538

namespace A285231

/-- `A158416(2*n+1)*A185105(A167614(n+1))` -/
def P9848310797387086538.Spec : Prop :=
  ∀ n, P9848310797387086538.a n = A285231 (n + 3)

end A285231

/-!
# A285232: Number of entries in the fourth cycles of all permutations of [n].

The programs for A285232, there is no canonical definition to state claims against.
-/

/-! ## A285232.P4104480778781617986

`A185105(A052905(n)+9)`
-/

namespace A285232.P4104480778781617986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185105 (A052905 n + 9).toNat

end

end A285232.P4104480778781617986

/-! ## A285232.P1737016619135363342

`A185105(A055999(n)+10)`
-/

namespace A285232.P1737016619135363342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185105 (A055999 n + 10).toNat

end

end A285232.P1737016619135363342

/-! ## A285232.P1986555882242905328

`A185105(A167614(n+2)+1)`
-/

namespace A285232.P1986555882242905328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185105 (A167614 (n + 2) + 1).toNat

end

end A285232.P1986555882242905328

/-! ## A285232.P1900857277987844446

`A185105(A167499(n+2)-1)`
-/

namespace A285232.P1900857277987844446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185105 (A167499 (n + 2) - 1).toNat

end

end A285232.P1900857277987844446

/-! ## A285232.P10330761857691484874

`A185105(A167487(n+2)-3)`
-/

namespace A285232.P10330761857691484874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185105 (A167487 (n + 2) - 3).toNat

end

end A285232.P10330761857691484874

/-! ## A285232.P12284725370755746698

`A185105(A000096(n+2)+5)`
-/

namespace A285232.P12284725370755746698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185105 (A000096 (n + 2) + 5).toNat

end

end A285232.P12284725370755746698

/-! ## A285232.P11949149099761383104

`A185105(A000217(n+3)+4)`
-/

namespace A285232.P11949149099761383104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185105 (A000217 (n + 3) + 4).toNat

end

end A285232.P11949149099761383104

/-!
# A285233: Number of entries in the fifth cycles of all permutations of [n].

The programs for A285233, there is no canonical definition to state claims against.
-/

/-! ## A285233.P16101839413378932

`A185105(A056000(n)+15)`
-/

namespace A285233.P16101839413378932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185105 (A056000 n + 15).toNat

end

end A285233.P16101839413378932

/-! ## A285233.P12376683388137356172

`A185105(A167614(n+3)+2)`
-/

namespace A285233.P12376683388137356172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185105 (A167614 (n + 3) + 2).toNat

end

end A285233.P12376683388137356172

/-! ## A285233.P1488518464969938510

`A185105(A055998(n+2)+8)`
-/

namespace A285233.P1488518464969938510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185105 (A055998 (n + 2) + 8).toNat

end

end A285233.P1488518464969938510

/-! ## A285233.P5006432660569296931

`A185105(A055999(n+1)+11)`
-/

namespace A285233.P5006432660569296931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185105 (A055999 (n + 1) + 11).toNat

end

end A285233.P5006432660569296931

/-! ## A285233.P10010063157051633899

`A185105(eq[6, A131818(n+1)])`
-/

namespace A285233.P10010063157051633899
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185105 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A285233.P10010063157051633899

/-! ## A285233.P6938376015969383454

`A185105(A167487(n+2)+n+2)`
-/

namespace A285233.P6938376015969383454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185105 (A167487 (n + 2) + (n + 2 : ℤ)).toNat

end

end A285233.P6938376015969383454

/-!
# A285234: Number of entries in the sixth cycles of all permutations of [n].

The programs for A285234, there is no canonical definition to state claims against.
-/

/-! ## A285234.P7123942625977257290

`A185105(A167499(n+4)+1)`
-/

namespace A285234.P7123942625977257290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185105 (A167499 (n + 4) + 1).toNat

end

end A285234.P7123942625977257290

/-! ## A285234.P2065506685623148490

`A185105(A000096(n+4)+7)`
-/

namespace A285234.P2065506685623148490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185105 (A000096 (n + 4) + 7).toNat

end

end A285234.P2065506685623148490

/-! ## A285234.P5720296469696927885

`A185105(A000217(n+5)+6)`
-/

namespace A285234.P5720296469696927885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185105 (A000217 (n + 5) + 6).toNat

end

end A285234.P5720296469696927885

/-! ## A285234.P1612782825431228673

`A185105(A027379(n+3)+9)`
-/

namespace A285234.P1612782825431228673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185105 (A027379 (n + 3) + 9).toNat

end

end A285234.P1612782825431228673

/-! ## A285234.P9358881414464854219

`A185105(eq[5, A002262(n)]+1)`
-/

namespace A285234.P9358881414464854219
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185105 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A285234.P9358881414464854219

/-! ## A285234.P752814183372604303

`A185105(eq[7, A131818(n+1)])`
-/

namespace A285234.P752814183372604303
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185105 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A285234.P752814183372604303

/-!
# A285235: Number of entries in the seventh cycles of all permutations of [n].

The programs for A285235, there is no canonical definition to state claims against.
-/

/-! ## A285235.P10066134896455193697

`A185105(A056119(n)+28)`
-/

namespace A285235.P10066134896455193697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185105 (A056119 n + 28).toNat

end

end A285235.P10066134896455193697

/-! ## A285235.P11147093182610853002

`A185105(A167499(n+5)+2)`
-/

namespace A285235.P11147093182610853002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185105 (A167499 (n + 5) + 2).toNat

end

end A285235.P11147093182610853002

/-! ## A285235.P10608517349122213449

`A185105(A000124(n+6)+6)`
-/

namespace A285235.P10608517349122213449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185105 (A000124 (n + 6) + 6).toNat

end

end A285235.P10608517349122213449

/-! ## A285235.P638593154179367631

`A185105(A027379(n+4)+10)`
-/

namespace A285235.P638593154179367631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185105 (A027379 (n + 4) + 10).toNat

end

end A285235.P638593154179367631

/-! ## A285235.P16438310326014091222

`A185105(eq[8, A131818(n+1)])`
-/

namespace A285235.P16438310326014091222
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185105 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A285235.P16438310326014091222

/-!
# A285236: Number of entries in the eighth cycles of all permutations of [n].

The programs for A285236, there is no canonical definition to state claims against.
-/

/-! ## A285236.P6157517920402191717

`A185105(eq[13, A066657(n)])`
-/

namespace A285236.P6157517920402191717
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  13

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185105 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A285236.P6157517920402191717

/-! ## A285236.P3509524170096501537

`A185105(eq[9, A131818(n+1)])`
-/

namespace A285236.P3509524170096501537
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185105 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A285236.P3509524170096501537

/-! ## A285236.P2337150604405120130

`A185105(A000217(n+8)-n)`
-/

namespace A285236.P2337150604405120130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185105 (A000217 (n + 8) - (n : ℤ)).toNat

end

end A285236.P2337150604405120130

/-! ## A285236.P1446129966838240164

`A185105(A000124(n+8)-(n+1))`
-/

namespace A285236.P1446129966838240164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185105 (A000124 (n + 8) - (n + 1 : ℤ)).toNat

end

end A285236.P1446129966838240164

/-! ## A285236.P17522614421553986953

`A185105((A000217(n+7)+8)*A181721(n+1))`
-/

namespace A285236.P17522614421553986953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185105 ((A000217 (n + 7) + 8) * A181721 (n + 1)).toNat

end

end A285236.P17522614421553986953

/-!
# A285237: Number of entries in the ninth cycles of all permutations of [n].

The programs for A285237, there is no canonical definition to state claims against.
-/

/-! ## A285237.P1019176570850533263

`A185105(eq[17, A066657(n)])`
-/

namespace A285237.P1019176570850533263
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  17

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185105 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A285237.P1019176570850533263

/-! ## A285237.P1068078185677338979

`A185105(A000124(n+8)+8)`
-/

namespace A285237.P1068078185677338979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185105 (A000124 (n + 8) + 8).toNat

end

end A285237.P1068078185677338979

/-! ## A285237.P17845723451369089716

`A185105(eq[10, A131818(n+1)])`
-/

namespace A285237.P17845723451369089716
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185105 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A285237.P17845723451369089716

/-!
# A285238: Number of entries in the tenth cycles of all permutations of [n].

The programs for A285238, there is no canonical definition to state claims against.
-/

/-! ## A285238.P9627679221103671757

`A185105(eq[9, A002262(n)]+1)`
-/

namespace A285238.P9627679221103671757
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185105 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A285238.P9627679221103671757

/-! ## A285238.P7858086878839244015

`A185105(eq[10, A130270(n+1)])`
-/

namespace A285238.P7858086878839244015
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130270 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185105 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A285238.P7858086878839244015

/-! ## A285238.P16505906091526955654

`A185105(eq[11, A131818(n+1)])`
-/

namespace A285238.P16505906091526955654
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185105 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A285238.P16505906091526955654

/-! ## A285238.P11859546775293699856

`A185105(eq[11, A123229(n+1)])`
-/

namespace A285238.P11859546775293699856
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123229 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185105 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A285238.P11859546775293699856

/-!
# A285239: Number of entries in the n-th cycles of all permutations of [2n].

The programs for A285239, there is no canonical definition to state claims against.
-/

/-! ## A285239.P4452721714436487102

`A185105(2*(n+1)²)`
-/

namespace A285239.P4452721714436487102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185105 (2 * (n + 1) ^ 2)

end

end A285239.P4452721714436487102

/-! ## A285239.P6234240418705974161

`record[A185105(A168281(n+1))]`
-/

namespace A285239.P6234240418705974161
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185105 (A168281 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A285239.P6234240418705974161

/-! ## A285239.P14864739061079339512

`record[A185105(∑[A014682(n+1)])]`
-/

namespace A285239.P14864739061079339512
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185105 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A285239.P14864739061079339512

/-! ## A285239.P12687789525727829392

`record[A185105(∑[A168232(n+1)])]`
-/

namespace A285239.P12687789525727829392
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168232 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185105 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A285239.P12687789525727829392

/-! ## A285239.P3084254900616843475

`A185105(A184636(n+1))+A000038(n)`
-/

namespace A285239.P3084254900616843475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185105 (A184636 (n + 1)).toNat + A000038 n

end

end A285239.P3084254900616843475

/-!
# A285240: Expansion of Product_{k>=1} (1 + k*x^k)^(k^2).

The programs for A285240, there is no canonical definition to state claims against.
-/

/-! ## A285240.P3574398589749234606

`A294844(n)+A025442(A215654(n))`
-/

namespace A285240.P3574398589749234606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294844 n + A025442 (A215654 n).toNat

end

end A285240.P3574398589749234606

/-! ## A285240.P17807437545340758582

`A248882(n)-A086010(A111400(n))`
-/

namespace A285240.P17807437545340758582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248882 n - A086010 (A111400 n).toNat

end

end A285240.P17807437545340758582

/-!
# A285241: Expansion of Product_{k>=1} 1/(1 - k*x^k)^(k^2).

The programs for A285241, there is no canonical definition to state claims against.
-/

/-! ## A285241.P17168042000665272872

`A294589(∑[n+3])`
-/

namespace A285241.P17168042000665272872
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294589 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A285241.P17168042000665272872

/-! ## A285241.P1587824588787014373

`A294589(A052905(n)+2)+A000007(n+1)`
-/

namespace A285241.P1587824588787014373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294589 (A052905 n + 2).toNat + A000007 (n + 1)

end

end A285241.P1587824588787014373

/-! ## A285241.P4270990577465103210

`A294589(A055998(n+1))+A002264(C(2, n))`
-/

namespace A285241.P4270990577465103210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294589 (A055998 (n + 1)).toNat + A002264 (Nat.choose 2 n)

end

end A285241.P4270990577465103210

/-! ## A285241.P5792658109190035196

`A294589(A055998(n+1))+A065719(A276604(n))`
-/

namespace A285241.P5792658109190035196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294589 (A055998 (n + 1)).toNat + A065719 (A276604 n).toNat

end

end A285241.P5792658109190035196

/-! ## A285241.P4041912330399762755

`A294582(A000124(n))*A294589(A055998(n+1))`
-/

namespace A285241.P4041912330399762755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294582 (A000124 n).toNat * A294589 (A055998 (n + 1)).toNat

end

end A285241.P4041912330399762755

/-!
# A285244: Expansion of Product_{k>=1} (1 + k*x^(k^2)).

The programs for A285244, there is no canonical definition to state claims against.
-/

/-! ## A285244.P13528443752926701995

`A067693(A282866(n))`
-/

namespace A285244.P13528443752926701995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067693 (A282866 n).toNat

end

end A285244.P13528443752926701995

/-! ## A285244.P5259569998178676592

`A018853(A282866(n)²)`
-/

namespace A285244.P5259569998178676592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018853 (A282866 n ^ 2).toNat

end

end A285244.P5259569998178676592

/-! ## A285244.P14065901902512259067

`A260492(A282866(n)+2)`
-/

namespace A285244.P14065901902512259067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260492 (A282866 n + 2).toNat

end

end A285244.P14065901902512259067

/-! ## A285244.P9178638875383748359

`A018853(A282866(n)^2)`
-/

namespace A285244.P9178638875383748359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018853 (A282866 n ^ 2).toNat

end

end A285244.P9178638875383748359

/-! ## A285244.P276723112897422155

`A260492(or(2, A282866(n)))`
-/

namespace A285244.P276723112897422155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260492 (Int.lor 2 (A282866 n)).toNat

end

end A285244.P276723112897422155

/-!
# A285248: All positive integers n which for some k can be computed by a straight line program (SLP) of length k but not by a monotone straight line program (mSLP) of length k.

The programs for A285248, there is no canonical definition to state claims against.
-/

/-! ## A285248.P1942307644685735234

`lt[A173419(n+1), A230697(n+1)]+1`
-/

namespace A285248.P1942307644685735234
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173419 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230697 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A285248.P1942307644685735234

/-!
# A285249: 0-limiting word of the morphism 0->10, 1-> 0101.

The programs for A285249, there is no canonical definition to state claims against.
-/

/-! ## A285249.P10418101426754614563

`char[A285251(n+1)-1]`
-/

namespace A285249.P10418101426754614563
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285251 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A285249.P10418101426754614563

/-! ## A285249.P5704865360435183938

`1-char[A285250(n+1)-1]`
-/

namespace A285249.P5704865360435183938
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285250 (n + 1) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A285249.P5704865360435183938

/-! ## A285249.P14064722343238712545

`(A014681(n+1)-A285251(A065033(n+1)))²`
-/

namespace A285249.P14064722343238712545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A014681 (n + 1) - A285251 (A065033 (n + 1)).toNat) ^ 2

end

end A285249.P14064722343238712545

/-! ## A285249.P3955910170980927403

`2*A189665(n+1)-A285253(A189665(n+1))`
-/

namespace A285249.P3955910170980927403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A189665 (n + 1) - A285253 (A189665 (n + 1)).toNat

end

end A285249.P3955910170980927403

/-! ## A285249.P15322965513008661341

`or(1, A284796(n+1))+1-A285253(A189665(n+1))`
-/

namespace A285249.P15322965513008661341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A284796 (n + 1)) + 1 - A285253 (A189665 (n + 1)).toNat

end

end A285249.P15322965513008661341

/-! ## A285249.P3829775599323858593

`A285306(A189665(n+1))-A285253(A189665(n+1))`
-/

namespace A285249.P3829775599323858593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285306 (A189665 (n + 1)).toNat - A285253 (A189665 (n + 1)).toNat

end

end A285249.P3829775599323858593

/-! ## A285249.P3664280258254608544

`A285252(A284794(n+1))`
-/

namespace A285249.P3664280258254608544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285252 (A284794 (n + 1)).toNat

end

end A285249.P3664280258254608544

/-! ## A285249.P8794142379302056403

`A285252(or(1, n+1)+2*n+1)`
-/

namespace A285249.P8794142379302056403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285252 (Nat.lor 1 (n + 1) + (2 * n + 1))

end

end A285249.P8794142379302056403

/-! ## A285249.P10845785607681391559

`A285252(A047238(n+2))`
-/

namespace A285249.P10845785607681391559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285252 (A047238 (n + 2)).toNat

end

end A285249.P10845785607681391559

/-! ## A285249.P666529818202847723

`A285252(A007310(n+1)+1)`
-/

namespace A285249.P666529818202847723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285252 (A007310 (n + 1) + 1).toNat

end

end A285249.P666529818202847723

/-! ## A285249.P13076476071717949798

`A285252(2*(A007494(n)+1))`
-/

namespace A285249.P13076476071717949798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285252 (2 * (A007494 n + 1)).toNat

end

end A285249.P13076476071717949798

/-! ## A285249.P11065443614515696034

`A285252(A007494(n)+A007494(n)+2)`
-/

namespace A285249.P11065443614515696034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285252 (A007494 n + (A007494 n + 2)).toNat

end

end A285249.P11065443614515696034

/-! ## A285249.P5957822590943164034

`A285252(A047264(n+2))`
-/

namespace A285249.P5957822590943164034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285252 (A047264 (n + 2)).toNat

end

end A285249.P5957822590943164034

/-!
# A285250: Positions of 0 in A285249; complement of A285251.

The programs for A285250, there is no canonical definition to state claims against.
-/

/-! ## A285250.P8992065727186073319

`A004767(n)-A285251(n+1)`
-/

namespace A285250.P8992065727186073319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004767 n - A285251 (n + 1)

end

end A285250.P8992065727186073319

/-! ## A285250.P869246304388464758

`xor(A088837(n+1), A285251(n+1))`
-/

namespace A285250.P869246304388464758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A088837 (n + 1)) (A285251 (n + 1))

end

end A285250.P869246304388464758

/-! ## A285250.P18390798704529499645

`(A005408(n)+A005408(n)²)/A285251(n+1)`
-/

namespace A285250.P18390798704529499645
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005408 n + A005408 n ^ 2 : ℚ) / (A285251 (n + 1) : ℚ)

end

end A285250.P18390798704529499645

/-! ## A285250.P5674021954165506459

`A284906(n+1)+A284907(n+1)-A285251(n+1)`
-/

namespace A285250.P5674021954165506459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284906 (n + 1) + (A284907 (n + 1) - A285251 (n + 1))

end

end A285250.P5674021954165506459

/-! ## A285250.P6230979911475873292

`A285253(n+1)+A285254(n+1)-A285251(n+1)`
-/

namespace A285250.P6230979911475873292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285253 (n + 1) + (A285254 (n + 1) - A285251 (n + 1))

end

end A285250.P6230979911475873292

/-! ## A285250.P603875237569482030

`A285256(n+1)+A285257(n+1)-A285251(n+1)`
-/

namespace A285250.P603875237569482030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285256 (n + 1) + (A285257 (n + 1) - A285251 (n + 1))

end

end A285250.P603875237569482030

/-! ## A285250.P9683657175168647689

`A285259(n+1)+A285260(n+1)-A285251(n+1)`
-/

namespace A285250.P9683657175168647689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285259 (n + 1) + (A285260 (n + 1) - A285251 (n + 1))

end

end A285250.P9683657175168647689

/-! ## A285250.P15051096959763776834

`eq[0, A285249(n+1)]+1`
-/

namespace A285250.P15051096959763776834
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285249 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A285250.P15051096959763776834

/-! ## A285250.P15390173938291019079

`A285249(2*n+1)+Δ[n²]`
-/

namespace A285250.P15390173938291019079
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285249 (2 * n + 1) + ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A285250.P15390173938291019079

/-! ## A285250.P6038615788667656500

`2*(n+1)-A285249(2*(n+1))`
-/

namespace A285250.P6038615788667656500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) : ℤ) - A285249 (2 * (n + 1))

end

end A285250.P6038615788667656500

/-! ## A285250.P14826957597169441375

`A014681(A285251(n+1))`
-/

namespace A285250.P14826957597169441375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 (A285251 (n + 1)).toNat

end

end A285250.P14826957597169441375

/-! ## A285250.P13926795169419520465

`lt[n*A285249(A028310(n)), n]`
-/

namespace A285250.P13926795169419520465
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A285249 (A028310 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A285250.P13926795169419520465

/-! ## A285250.P12012024012385660984

`record[A285249(n+1)+A004442(n)]`
-/

namespace A285250.P12012024012385660984
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285249 (n + 1) + A004442 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A285250.P12012024012385660984

/-! ## A285250.P17184937403058769056

`A285249(2*n+1)+A028310(n+1)+n`
-/

namespace A285250.P17184937403058769056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285249 (2 * n + 1) + A028310 (n + 1) + (n : ℤ)

end

end A285250.P17184937403058769056

/-! ## A285250.P17419060322332851286

`A004442(2*n+1)+A285249(2*n+1)+1`
-/

namespace A285250.P17419060322332851286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (2 * n + 1) + (A285249 (2 * n + 1) + 1)

end

end A285250.P17419060322332851286

/-! ## A285250.P1572060672506799427

`A005408(A005408(n))-A285251(n+1)`
-/

namespace A285250.P1572060672506799427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (A005408 n).toNat - A285251 (n + 1)

end

end A285250.P1572060672506799427

/-! ## A285250.P3235043236430009135

`record[A285249(A000265(n+1))+A000265(n+1)]`
-/

namespace A285250.P3235043236430009135
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285249 (A000265 (n + 1)).toNat + A000265 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A285250.P3235043236430009135

/-! ## A285250.P3756625736574321983

`A285254(3*n+1)-4*n`
-/

namespace A285250.P3756625736574321983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285254 (3 * n + 1) - (4 * n : ℤ)

end

end A285250.P3756625736574321983

/-! ## A285250.P9458004722782187079

`floor(A285253(3*(n+1))/3)`
-/

namespace A285250.P9458004722782187079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A285253 (3 * (n + 1)) : ℚ) / 3⌋

end

end A285250.P9458004722782187079

/-! ## A285250.P4785243877878797852

`A121496(2*A285251(n+1))`
-/

namespace A285250.P4785243877878797852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121496 (2 * A285251 (n + 1)).toNat

end

end A285250.P4785243877878797852

/-!
# A285251: Positions of 1 in A285249; complement of A285250.

The programs for A285251, there is no canonical definition to state claims against.
-/

/-! ## A285251.P5575876886183748719

`A004767(n)-A285250(n+1)`
-/

namespace A285251.P5575876886183748719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004767 n - A285250 (n + 1)

end

end A285251.P5575876886183748719

/-! ## A285251.P1556501767257080437

`xor(A088837(n+1), A285250(n+1))`
-/

namespace A285251.P1556501767257080437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A088837 (n + 1)) (A285250 (n + 1))

end

end A285251.P1556501767257080437

/-! ## A285251.P2500595583741551783

`A284906(n+1)+A284907(n+1)-A285250(n+1)`
-/

namespace A285251.P2500595583741551783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284906 (n + 1) + (A284907 (n + 1) - A285250 (n + 1))

end

end A285251.P2500595583741551783

/-! ## A285251.P5318425220341115254

`A285253(n+1)+A285254(n+1)-A285250(n+1)`
-/

namespace A285251.P5318425220341115254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285253 (n + 1) + (A285254 (n + 1) - A285250 (n + 1))

end

end A285251.P5318425220341115254

/-! ## A285251.P17695997393619609827

`A285256(n+1)+A285257(n+1)-A285250(n+1)`
-/

namespace A285251.P17695997393619609827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285256 (n + 1) + (A285257 (n + 1) - A285250 (n + 1))

end

end A285251.P17695997393619609827

/-! ## A285251.P8103072124116710802

`A285259(n+1)+A285260(n+1)-A285250(n+1)`
-/

namespace A285251.P8103072124116710802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285259 (n + 1) + (A285260 (n + 1) - A285250 (n + 1))

end

end A285251.P8103072124116710802

/-! ## A285251.P11705500157235210469

`filter[n+1, A285249(#)]`
-/

namespace A285251.P11705500157235210469
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A285249 (f1 j) = 1) n)

end

end A285251.P11705500157235210469

/-! ## A285251.P4345823235813933671

`eq[1, A285249(n+1)]+1`
-/

namespace A285251.P4345823235813933671
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285249 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A285251.P4345823235813933671

/-! ## A285251.P6782426439231823593

`A285249(2*(n+1))+Δ[n²]`
-/

namespace A285251.P6782426439231823593
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285249 (2 * (n + 1)) + ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A285251.P6782426439231823593

/-! ## A285251.P14641760216427524858

`2*(n+1)-A285249(2*n+1)`
-/

namespace A285251.P14641760216427524858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) : ℤ) - A285249 (2 * n + 1)

end

end A285251.P14641760216427524858

/-! ## A285251.P153559794417827207

`A014681(A285250(n+1))`
-/

namespace A285251.P153559794417827207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 (A285250 (n + 1)).toNat

end

end A285251.P153559794417827207

/-! ## A285251.P16431240032931835545

`lt[1, A285249(A028310(n))+1]`
-/

namespace A285251.P16431240032931835545
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285249 (A028310 n).toNat + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A285251.P16431240032931835545

/-! ## A285251.P12133380797455838551

`record[A285249(n+2)+A004442(n)]`
-/

namespace A285251.P12133380797455838551
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285249 (n + 2) + A004442 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A285251.P12133380797455838551

/-! ## A285251.P18194439399238983401

`record[A285249(n+2)+A000265(n+1)]`
-/

namespace A285251.P18194439399238983401
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285249 (n + 2) + A000265 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A285251.P18194439399238983401

/-! ## A285251.P9014901115631014594

`A285249(2*n+2)+A028310(n+1)+n`
-/

namespace A285251.P9014901115631014594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285249 (2 * n + 2) + A028310 (n + 1) + (n : ℤ)

end

end A285251.P9014901115631014594

/-! ## A285251.P6969420714152983883

`A004442(2*n+1)+A285249(2*(n+1))+1`
-/

namespace A285251.P6969420714152983883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (2 * n + 1) + (A285249 (2 * (n + 1)) + 1)

end

end A285251.P6969420714152983883

/-!
# A285252: 1-limiting word of the morphism 0->10, 1-> 0101.

The programs for A285252, there is no canonical definition to state claims against.
-/

/-! ## A285252.P9957885981757095465

`char[A285254(n+1)-1]`
-/

namespace A285252.P9957885981757095465
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285254 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A285252.P9957885981757095465

/-! ## A285252.P6540169284139686573

`1-char[A285253(n+1)-1]`
-/

namespace A285252.P6540169284139686573
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285253 (n + 1) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A285252.P6540169284139686573

/-! ## A285252.P15801241803886619296

`A285249(A284794(n+1))`
-/

namespace A285252.P15801241803886619296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285249 (A284794 (n + 1)).toNat

end

end A285252.P15801241803886619296

/-! ## A285252.P10648483587613722350

`A285249(2*A189665(n+1))`
-/

namespace A285252.P10648483587613722350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285249 (2 * A189665 (n + 1)).toNat

end

end A285252.P10648483587613722350

/-! ## A285252.P11496554386636432608

`A285249(2*A004442(n)+n)`
-/

namespace A285252.P11496554386636432608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285249 (2 * A004442 n + (n : ℤ)).toNat

end

end A285252.P11496554386636432608

/-! ## A285252.P12396542565982971487

`A285249(or(1, A284796(n+1))+1)`
-/

namespace A285252.P12396542565982971487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285249 (Int.lor 1 (A284796 (n + 1)) + 1).toNat

end

end A285252.P12396542565982971487

/-! ## A285252.P10070044618906650595

`A285249(A004442(3*A004442(n)))`
-/

namespace A285252.P10070044618906650595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285249 (A004442 (3 * A004442 n).toNat).toNat

end

end A285252.P10070044618906650595

/-! ## A285252.P15772977466130482828

`A285249(A004442(n)+A004442(n)+n)`
-/

namespace A285252.P15772977466130482828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285249 (A004442 n + (A004442 n + (n : ℤ))).toNat

end

end A285252.P15772977466130482828

/-! ## A285252.P16173842173625999536

`A285249(A047238(n+2))`
-/

namespace A285252.P16173842173625999536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285249 (A047238 (n + 2)).toNat

end

end A285252.P16173842173625999536

/-! ## A285252.P5858894832373280042

`A285249(A007310(n+1)+1)`
-/

namespace A285252.P5858894832373280042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285249 (A007310 (n + 1) + 1).toNat

end

end A285252.P5858894832373280042

/-! ## A285252.P487968345320590444

`A285249(A047264(n+2))`
-/

namespace A285252.P487968345320590444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285249 (A047264 (n + 2)).toNat

end

end A285252.P487968345320590444

/-!
# A285253: Positions of 0 in A285252; complement of A285254.

The programs for A285253, there is no canonical definition to state claims against.
-/

/-! ## A285253.P8491647307749592652

`A004767(n)-A285254(n+1)`
-/

namespace A285253.P8491647307749592652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004767 n - A285254 (n + 1)

end

end A285253.P8491647307749592652

/-! ## A285253.P9568642088575762019

`xor(A088837(n+1), A285254(n+1))`
-/

namespace A285253.P9568642088575762019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A088837 (n + 1)) (A285254 (n + 1))

end

end A285253.P9568642088575762019

/-! ## A285253.P11019196282734688144

`A284906(n+1)+A284907(n+1)-A285254(n+1)`
-/

namespace A285253.P11019196282734688144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284906 (n + 1) + (A284907 (n + 1) - A285254 (n + 1))

end

end A285253.P11019196282734688144

/-! ## A285253.P2246683749239232437

`A285250(n+1)+A285251(n+1)-A285254(n+1)`
-/

namespace A285253.P2246683749239232437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285250 (n + 1) + (A285251 (n + 1) - A285254 (n + 1))

end

end A285253.P2246683749239232437

/-! ## A285253.P2060362686303953472

`Δ[A005475(n)]-(A285254(n+1)+n)`
-/

namespace A285253.P2060362686303953472
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005475 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - (A285254 (n + 1) + (n : ℤ))

end

end A285253.P2060362686303953472

/-! ## A285253.P6582659256085192961

`eq[0, A285252(n+1)]+1`
-/

namespace A285253.P6582659256085192961
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285252 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A285253.P6582659256085192961

/-! ## A285253.P7730793756394618383

`A285252(2*n+1)+Δ[n²]`
-/

namespace A285253.P7730793756394618383
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285252 (2 * n + 1) + ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A285253.P7730793756394618383

/-! ## A285253.P12144835362319702568

`2*(n+1)-A285252(2*(n+1))`
-/

namespace A285253.P12144835362319702568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) : ℤ) - A285252 (2 * (n + 1))

end

end A285253.P12144835362319702568

/-! ## A285253.P3949876578173357164

`A014681(A285254(n+1))`
-/

namespace A285253.P3949876578173357164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 (A285254 (n + 1)).toNat

end

end A285253.P3949876578173357164

/-! ## A285253.P1461959775705480190

`lt[A285252(A028310(n)), 1]`
-/

namespace A285253.P1461959775705480190
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285252 (A028310 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A285253.P1461959775705480190

/-! ## A285253.P8092183155225242554

`A285252(2*n+1)+A028310(n+1)+n`
-/

namespace A285253.P8092183155225242554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285252 (2 * n + 1) + A028310 (n + 1) + (n : ℤ)

end

end A285253.P8092183155225242554

/-! ## A285253.P12965292296160561991

`A285251(3*n+1)-4*n`
-/

namespace A285253.P12965292296160561991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285251 (3 * n + 1) - (4 * n : ℤ)

end

end A285253.P12965292296160561991

/-! ## A285253.P13207520664587438002

`floor(A285250(3*(n+1))/3)`
-/

namespace A285253.P13207520664587438002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A285250 (3 * (n + 1)) : ℚ) / 3⌋

end

end A285253.P13207520664587438002

/-! ## A285253.P15683690778522715501

`lt[A285249(A284794(n+1)), 1]+1`
-/

namespace A285253.P15683690778522715501
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285249 (A284794 (n + 1)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A285253.P15683690778522715501

/-!
# A285254: Positions of 1 in A285252; complement of A285253.

The programs for A285254, there is no canonical definition to state claims against.
-/

/-! ## A285254.P1642703141627302549

`A004767(n)-A285253(n+1)`
-/

namespace A285254.P1642703141627302549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004767 n - A285253 (n + 1)

end

end A285254.P1642703141627302549

/-! ## A285254.P18408966225981203739

`xor(A088837(n+1), A285253(n+1))`
-/

namespace A285254.P18408966225981203739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A088837 (n + 1)) (A285253 (n + 1))

end

end A285254.P18408966225981203739

/-! ## A285254.P12838046386151652440

`∑[A284775(n+1)+A285255(n+1)+1]`
-/

namespace A285254.P12838046386151652440
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284775 (n + 1) + (A285255 (n + 1) + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A285254.P12838046386151652440

/-! ## A285254.P441868816514392999

`A285255(n+1)+a(n-1)+A285305(n)+1` with `a(0)=1`
-/

namespace A285254.P441868816514392999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A285255 (n + 1) + (a (n - 1) + (A285305 n + 1))

end

end A285254.P441868816514392999

/-! ## A285254.P10005575803890990475

`A284906(n+1)+A284907(n+1)-A285253(n+1)`
-/

namespace A285254.P10005575803890990475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284906 (n + 1) + (A284907 (n + 1) - A285253 (n + 1))

end

end A285254.P10005575803890990475

/-! ## A285254.P4148829074635691525

`A285250(n+1)+A285251(n+1)-A285253(n+1)`
-/

namespace A285254.P4148829074635691525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285250 (n + 1) + (A285251 (n + 1) - A285253 (n + 1))

end

end A285254.P4148829074635691525

/-! ## A285254.P3473369520437167335

`filter[n+1, A285252(#)]`
-/

namespace A285254.P3473369520437167335
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A285252 (f1 j) = 1) n)

end

end A285254.P3473369520437167335

/-! ## A285254.P12019272115342360337

`eq[1, A285252(n+1)]+1`
-/

namespace A285254.P12019272115342360337
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285252 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A285254.P12019272115342360337

/-! ## A285254.P4285304833022232812

`A285252(2*(n+1))+Δ[n²]`
-/

namespace A285254.P4285304833022232812
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285252 (2 * (n + 1)) + ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A285254.P4285304833022232812

/-! ## A285254.P15760916579124171801

`2*(n+1)-A285252(2*n+1)`
-/

namespace A285254.P15760916579124171801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) : ℤ) - A285252 (2 * n + 1)

end

end A285254.P15760916579124171801

/-! ## A285254.P17769636359427810616

`A014681(A285253(n+1))`
-/

namespace A285254.P17769636359427810616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 (A285253 (n + 1)).toNat

end

end A285254.P17769636359427810616

/-! ## A285254.P9390699674530131141

`A285252(2*n+2)+A028310(n+1)+n`
-/

namespace A285254.P9390699674530131141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285252 (2 * n + 2) + A028310 (n + 1) + (n : ℤ)

end

end A285254.P9390699674530131141

/-! ## A285254.P16134775782234650761

`lt[A028310(n)-n, A285252(A028310(n))]`
-/

namespace A285254.P16134775782234650761
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n - (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285252 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A285254.P16134775782234650761

/-! ## A285254.P5138671092403470064

`lt[A285252(n+1), n*A285252(A028310(n))]`
-/

namespace A285254.P5138671092403470064
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285252 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A285252 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A285254.P5138671092403470064

/-! ## A285254.P7627094367646578198

`∑[A285255(n+1)]+lt[A284793(2*(n+1))+2, 2]+1`
-/

namespace A285254.P7627094367646578198
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285255 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284793 (2 * (n + 1)) + 2

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n + 1 : ℤ)

end

end A285254.P7627094367646578198

/-! ## A285254.P8905389392507766135

`A285256(2*n+1)+A285257(2*n+1)-A285251(3*n+1)`
-/

namespace A285254.P8905389392507766135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285256 (2 * n + 1) + (A285257 (2 * n + 1) - A285251 (3 * n + 1))

end

end A285254.P8905389392507766135

/-!
# A285255: 0-limiting word of the morphism 0->10, 1-> 0110.

The programs for A285255, there is no canonical definition to state claims against.
-/

/-! ## A285255.P4601735352230669121

`char[A285257(n+1)-1]`
-/

namespace A285255.P4601735352230669121
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285257 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A285255.P4601735352230669121

/-! ## A285255.P10257478161058820196

`char[comp[A285256(n+1)-1]]`
-/

namespace A285255.P10257478161058820196
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285256 (n + 1) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A285255.P10257478161058820196

/-! ## A285255.P10062340561729439126

`1-A285252(or(1, n)+n)`
-/

namespace A285255.P10062340561729439126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A285252 (Nat.lor 1 n + n)

end

end A285255.P10062340561729439126

/-! ## A285255.P10434353133027462329

`(n+1-A285256(A002265(2*n)+1))²`
-/

namespace A285255.P10434353133027462329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℤ) - A285256 (A002265 (2 * n) + 1).toNat) ^ 2

end

end A285255.P10434353133027462329

/-! ## A285255.P433849849957277840

`A285258(A136320(n))`
-/

namespace A285255.P433849849957277840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285258 (A136320 n).toNat

end

end A285255.P433849849957277840

/-! ## A285255.P7444479032459314815

`A285258(A047230(n+1))`
-/

namespace A285255.P7444479032459314815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285258 (A047230 (n + 1)).toNat

end

end A285255.P7444479032459314815

/-! ## A285255.P16938903567413366355

`A285258(A047235(n+1))`
-/

namespace A285255.P16938903567413366355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285258 (A047235 (n + 1)).toNat

end

end A285255.P16938903567413366355

/-! ## A285255.P5620709168338678525

`A285258(A005004(n+2))`
-/

namespace A285255.P5620709168338678525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285258 (A005004 (n + 2)).toNat

end

end A285255.P5620709168338678525

/-! ## A285255.P1131446217007020720

`A285258(A047241(n+1)+1)`
-/

namespace A285255.P1131446217007020720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285258 (A047241 (n + 1) + 1).toNat

end

end A285255.P1131446217007020720

/-! ## A285255.P3101809711084404347

`A285249(A087445(n+1))`
-/

namespace A285255.P3101809711084404347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285249 (A087445 (n + 1)).toNat

end

end A285255.P3101809711084404347

/-!
# A285256: Positions of 0 in A285255; complement of A285257.

The programs for A285256, there is no canonical definition to state claims against.
-/

/-! ## A285256.P12324912666547867789

`A004767(n)-A285257(n+1)`
-/

namespace A285256.P12324912666547867789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004767 n - A285257 (n + 1)

end

end A285256.P12324912666547867789

/-! ## A285256.P6371144026883962839

`A016825(n)+1-A285257(n+1)`
-/

namespace A285256.P6371144026883962839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016825 n + (1 - A285257 (n + 1))

end

end A285256.P6371144026883962839

/-! ## A285256.P2237301352821261139

`xor(A088837(n+1), A285257(n+1))`
-/

namespace A285256.P2237301352821261139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A088837 (n + 1)) (A285257 (n + 1))

end

end A285256.P2237301352821261139

/-! ## A285256.P12562611641616098271

`(A005408(n)+A005408(n)²)/A285257(n+1)`
-/

namespace A285256.P12562611641616098271
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005408 n + A005408 n ^ 2 : ℚ) / (A285257 (n + 1) : ℚ)

end

end A285256.P12562611641616098271

/-! ## A285256.P2101468662134123095

`A284906(n+1)+A284907(n+1)-A285257(n+1)`
-/

namespace A285256.P2101468662134123095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284906 (n + 1) + (A284907 (n + 1) - A285257 (n + 1))

end

end A285256.P2101468662134123095

/-! ## A285256.P13128155298493373795

`A285250(n+1)+A285251(n+1)-A285257(n+1)`
-/

namespace A285256.P13128155298493373795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285250 (n + 1) + (A285251 (n + 1) - A285257 (n + 1))

end

end A285256.P13128155298493373795

/-! ## A285256.P7757547401803940647

`A285253(n+1)+A285254(n+1)-A285257(n+1)`
-/

namespace A285256.P7757547401803940647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285253 (n + 1) + (A285254 (n + 1) - A285257 (n + 1))

end

end A285256.P7757547401803940647

/-! ## A285256.P9025452145113414961

`A285259(n+1)+A285260(n+1)-A285257(n+1)`
-/

namespace A285256.P9025452145113414961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285259 (n + 1) + (A285260 (n + 1) - A285257 (n + 1))

end

end A285256.P9025452145113414961

/-! ## A285256.P15781116098570356449

`A285254(2*n+1)-2*n`
-/

namespace A285256.P15781116098570356449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285254 (2 * n + 1) - (2 * n : ℤ)

end

end A285256.P15781116098570356449

/-! ## A285256.P14163197137303670564

`A285255(2*n+1)+Δ[n²]`
-/

namespace A285256.P14163197137303670564
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285255 (2 * n + 1) + ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A285256.P14163197137303670564

/-! ## A285256.P4820401857059771912

`A014681(A285257(n+1))`
-/

namespace A285256.P4820401857059771912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 (A285257 (n + 1)).toNat

end

end A285256.P4820401857059771912

/-! ## A285256.P6539357703334141862

`A005408(A005408(n))-A285257(n+1)`
-/

namespace A285256.P6539357703334141862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (A005408 n).toNat - A285257 (n + 1)

end

end A285256.P6539357703334141862

/-! ## A285256.P4670842613270497020

`A285260(3*n+1)-4*n`
-/

namespace A285256.P4670842613270497020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285260 (3 * n + 1) - (4 * n : ℤ)

end

end A285256.P4670842613270497020

/-! ## A285256.P6879735207028710688

`A014681(A285253(2*n+1))-2*n`
-/

namespace A285256.P6879735207028710688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 (A285253 (2 * n + 1)).toNat - (2 * n : ℤ)

end

end A285256.P6879735207028710688

/-! ## A285256.P13961610188711984907

`2*(n+1)-A285258(A016921(n))`
-/

namespace A285256.P13961610188711984907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) : ℤ) - A285258 (A016921 n).toNat

end

end A285256.P13961610188711984907

/-! ## A285256.P11959400638928762676

`A014681(A285259(3*n+1))-4*n`
-/

namespace A285256.P11959400638928762676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 (A285259 (3 * n + 1)).toNat - (4 * n : ℤ)

end

end A285256.P11959400638928762676

/-!
# A285257: Positions of 1 in A285255; complement of A285256.

The programs for A285257, there is no canonical definition to state claims against.
-/

/-! ## A285257.P16214869006844118244

`A004767(n)-A285256(n+1)`
-/

namespace A285257.P16214869006844118244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004767 n - A285256 (n + 1)

end

end A285257.P16214869006844118244

/-! ## A285257.P16967878944432921450

`xor(A088837(n+1), A285256(n+1))`
-/

namespace A285257.P16967878944432921450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A088837 (n + 1)) (A285256 (n + 1))

end

end A285257.P16967878944432921450

/-! ## A285257.P15798645563798584679

`A285250(n+1)+A285251(n+1)-A285256(n+1)`
-/

namespace A285257.P15798645563798584679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285250 (n + 1) + (A285251 (n + 1) - A285256 (n + 1))

end

end A285257.P15798645563798584679

/-! ## A285257.P16825108009898048342

`A285259(n+1)+A285260(n+1)-A285256(n+1)`
-/

namespace A285257.P16825108009898048342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285259 (n + 1) + (A285260 (n + 1) - A285256 (n + 1))

end

end A285257.P16825108009898048342

/-! ## A285257.P5033028527687593144

`filter[n+1, A285255(#)]`
-/

namespace A285257.P5033028527687593144
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A285255 (f1 j) = 1) n)

end

end A285257.P5033028527687593144

/-! ## A285257.P2930974535817800480

`A285253(2*n+1)-2*n`
-/

namespace A285257.P2930974535817800480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285253 (2 * n + 1) - (2 * n : ℤ)

end

end A285257.P2930974535817800480

/-! ## A285257.P15189606194045461753

`A285255(2*(n+1))+Δ[n²]`
-/

namespace A285257.P15189606194045461753
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285255 (2 * (n + 1)) + ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A285257.P15189606194045461753

/-! ## A285257.P6116711600911507375

`A014681(A285256(n+1))`
-/

namespace A285257.P6116711600911507375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 (A285256 (n + 1)).toNat

end

end A285257.P6116711600911507375

/-! ## A285257.P15449293997165695041

`A285259(3*n+1)-4*n`
-/

namespace A285257.P15449293997165695041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285259 (3 * n + 1) - (4 * n : ℤ)

end

end A285257.P15449293997165695041

/-! ## A285257.P17375122944153972334

`ceil(A285260(3*n+2)/3)`
-/

namespace A285257.P17375122944153972334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A285260 (3 * n + 2) : ℚ) / 3⌉

end

end A285257.P17375122944153972334

/-! ## A285257.P4244182844209488194

`eq[char[A285256(n+1)], A285476(n)]`
-/

namespace A285257.P4244182844209488194
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285256 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285476 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A285257.P4244182844209488194

/-! ## A285257.P5619084162281822454

`A014681(A285254(2*n+1))-2*n`
-/

namespace A285257.P5619084162281822454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 (A285254 (2 * n + 1)).toNat - (2 * n : ℤ)

end

end A285257.P5619084162281822454

/-! ## A285257.P5182035192907930026

`A014681(A285260(3*n+1))-4*n`
-/

namespace A285257.P5182035192907930026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 (A285260 (3 * n + 1)).toNat - (4 * n : ℤ)

end

end A285257.P5182035192907930026

/-! ## A285257.P9533520575276457403

`lt[char[A285256(n+1)], A285258(3*n+2)]`
-/

namespace A285257.P9533520575276457403
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285256 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285258 (3 * n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f3 j) n

end

end A285257.P9533520575276457403

/-! ## A285257.P11399426158993960301

`A189671(A016945(2*n+1))-comp[(n+1)*A285255(n+1)]`
-/

namespace A285257.P11399426158993960301
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A285255 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189671 (A016945 (2 * n + 1)).toNat - (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ)

end

end A285257.P11399426158993960301

/-!
# A285258: 1-limiting word of the morphism 0->10, 1-> 0110.

The programs for A285258, there is no canonical definition to state claims against.
-/

/-! ## A285258.P15381416938680646706

`char[A285260(n+1)-1]`
-/

namespace A285258.P15381416938680646706
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285260 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A285258.P15381416938680646706

/-! ## A285258.P12113821789576750771

`char[comp[A285259(n+1)-1]]`
-/

namespace A285258.P12113821789576750771
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285259 (n + 1) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A285258.P12113821789576750771

/-! ## A285258.P6313729373099216265

`A285255(or(1, 3*n)+1)`
-/

namespace A285258.P6313729373099216265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285255 (Nat.lor 1 (3 * n) + 1)

end

end A285258.P6313729373099216265

/-! ## A285258.P14767704968360199809

`A285255(A136320(n))`
-/

namespace A285258.P14767704968360199809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285255 (A136320 n).toNat

end

end A285258.P14767704968360199809

/-! ## A285258.P12306626290437032987

`A285255(A047230(n+1))`
-/

namespace A285258.P12306626290437032987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285255 (A047230 (n + 1)).toNat

end

end A285258.P12306626290437032987

/-! ## A285258.P16620428210305012665

`A285255(A047235(n+1))`
-/

namespace A285258.P16620428210305012665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285255 (A047235 (n + 1)).toNat

end

end A285258.P16620428210305012665

/-! ## A285258.P12911058327308497205

`A285255(A047241(n+1)+1)`
-/

namespace A285258.P12911058327308497205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285255 (A047241 (n + 1) + 1).toNat

end

end A285258.P12911058327308497205

/-! ## A285258.P12783688658531587893

`A285255(A047243(n+1)+1)`
-/

namespace A285258.P12783688658531587893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285255 (A047243 (n + 1) + 1).toNat

end

end A285258.P12783688658531587893

/-! ## A285258.P7960242978200931072

`A285255(A284884(n+1)+1)`
-/

namespace A285258.P7960242978200931072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285255 (A284884 (n + 1) + 1).toNat

end

end A285258.P7960242978200931072

/-! ## A285258.P1654854906152312747

`A285255(lt[val(n+1, 2), A285255(n+1)])`
-/

namespace A285258.P1654854906152312747
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (n + 1) 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285255 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285255 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A285258.P1654854906152312747

/-! ## A285258.P11387553771588550074

`A285252(A087445(n+1))`
-/

namespace A285258.P11387553771588550074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285252 (A087445 (n + 1)).toNat

end

end A285258.P11387553771588550074

/-! ## A285258.P8228085099917123043

`A285252(2*A047238(n+1)+1)`
-/

namespace A285258.P8228085099917123043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285252 (2 * A047238 (n + 1) + 1).toNat

end

end A285258.P8228085099917123043

/-! ## A285258.P14280388977520208501

`A285252(A047238(n+1)+A047238(n+1)+1)`
-/

namespace A285258.P14280388977520208501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285252 (A047238 (n + 1) + (A047238 (n + 1) + 1)).toNat

end

end A285258.P14280388977520208501

/-!
# A285259: Positions of 0 in A285258; complement of A285260.

The programs for A285259, there is no canonical definition to state claims against.
-/

/-! ## A285259.P10148292132943266959

`comp[A285260(n+1)-1]+1`
-/

namespace A285259.P10148292132943266959
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285260 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A285259.P10148292132943266959

/-! ## A285259.P10934853708669045693

`A004767(n)-A285260(n+1)`
-/

namespace A285259.P10934853708669045693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004767 n - A285260 (n + 1)

end

end A285259.P10934853708669045693

/-! ## A285259.P18368483365521810307

`xor(A088837(n+1), A285260(n+1))`
-/

namespace A285259.P18368483365521810307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A088837 (n + 1)) (A285260 (n + 1))

end

end A285259.P18368483365521810307

/-! ## A285259.P11457138720641422126

`A285250(n+1)+A285251(n+1)-A285260(n+1)`
-/

namespace A285259.P11457138720641422126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285250 (n + 1) + (A285251 (n + 1) - A285260 (n + 1))

end

end A285259.P11457138720641422126

/-! ## A285259.P5364448598109247966

`A285253(n+1)+A285254(n+1)-A285260(n+1)`
-/

namespace A285259.P5364448598109247966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285253 (n + 1) + (A285254 (n + 1) - A285260 (n + 1))

end

end A285259.P5364448598109247966

/-! ## A285259.P14970144452109514194

`A285256(n+1)+A285257(n+1)-A285260(n+1)`
-/

namespace A285259.P14970144452109514194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285256 (n + 1) + (A285257 (n + 1) - A285260 (n + 1))

end

end A285259.P14970144452109514194

/-! ## A285259.P1836550074806172742

`lt[A285258(n+1), 1]+1`
-/

namespace A285259.P1836550074806172742
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285258 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A285259.P1836550074806172742

/-! ## A285259.P3777567401111969920

`A285251(2*n+1)-2*n`
-/

namespace A285259.P3777567401111969920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285251 (2 * n + 1) - (2 * n : ℤ)

end

end A285259.P3777567401111969920

/-! ## A285259.P5047136656959977220

`A285258(2*n+1)+Δ[n²]`
-/

namespace A285259.P5047136656959977220
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285258 (2 * n + 1) + ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A285259.P5047136656959977220

/-! ## A285259.P9733223035495342724

`2*(n+1)-A285258(2*(n+1))`
-/

namespace A285259.P9733223035495342724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) : ℤ) - A285258 (2 * (n + 1))

end

end A285259.P9733223035495342724

/-! ## A285259.P10050311651074170693

`A014681(A285260(n+1))`
-/

namespace A285259.P10050311651074170693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 (A285260 (n + 1)).toNat

end

end A285259.P10050311651074170693

/-! ## A285259.P12154105764649185216

`eq[0, A285258(A028310(n))]`
-/

namespace A285259.P12154105764649185216
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285258 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A285259.P12154105764649185216

/-! ## A285259.P9746831505330036433

`record[A285258(n+1)+A000265(n+1)]`
-/

namespace A285259.P9746831505330036433
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285258 (n + 1) + A000265 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A285259.P9746831505330036433

/-! ## A285259.P6160523423239703134

`A000027(A285258(2*n+1)+2*n+1)`
-/

namespace A285259.P6160523423239703134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A285258 (2 * n + 1) + (2 * n + 1 : ℤ)).toNat

end

end A285259.P6160523423239703134

/-! ## A285259.P5206930347171778533

`A285258(2*n+1)+A028310(n+1)+n`
-/

namespace A285259.P5206930347171778533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285258 (2 * n + 1) + A028310 (n + 1) + (n : ℤ)

end

end A285259.P5206930347171778533

/-! ## A285259.P14528472598132425610

`A285257(3*n+1)-4*n`
-/

namespace A285259.P14528472598132425610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285257 (3 * n + 1) - (4 * n : ℤ)

end

end A285259.P14528472598132425610

/-! ## A285259.P17830728768581319768

`A121496(A285251(2*n+1))`
-/

namespace A285259.P17830728768581319768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121496 (A285251 (2 * n + 1)).toNat

end

end A285259.P17830728768581319768

/-! ## A285259.P4323031656133893182

`A065033(A285251(2*n+1)+1)`
-/

namespace A285259.P4323031656133893182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A285251 (2 * n + 1) + 1).toNat

end

end A285259.P4323031656133893182

/-! ## A285259.P8038046978075406164

`record[A285249(2*(n+1))+A004442(n)]`
-/

namespace A285259.P8038046978075406164
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285249 (2 * (n + 1)) + A004442 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A285259.P8038046978075406164

/-! ## A285259.P15142907387647658894

`A014681(A285250(2*n+1))-2*n`
-/

namespace A285259.P15142907387647658894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 (A285250 (2 * n + 1)).toNat - (2 * n : ℤ)

end

end A285259.P15142907387647658894

/-!
# A285260: Positions of 1 in A285258; complement of A285259.

The programs for A285260, there is no canonical definition to state claims against.
-/

/-! ## A285260.P3511919927897875863

`A004767(n)-A285259(n+1)`
-/

namespace A285260.P3511919927897875863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004767 n - A285259 (n + 1)

end

end A285260.P3511919927897875863

/-! ## A285260.P14151635362449920258

`xor(A088837(n+1), A285259(n+1))`
-/

namespace A285260.P14151635362449920258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A088837 (n + 1)) (A285259 (n + 1))

end

end A285260.P14151635362449920258

/-! ## A285260.P11887718974762432934

`(A005408(n)+A005408(n)²)/A285259(n+1)`
-/

namespace A285260.P11887718974762432934
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005408 n + A005408 n ^ 2 : ℚ) / (A285259 (n + 1) : ℚ)

end

end A285260.P11887718974762432934

/-! ## A285260.P6630464138698275263

`A285250(n+1)+A285251(n+1)-A285259(n+1)`
-/

namespace A285260.P6630464138698275263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285250 (n + 1) + (A285251 (n + 1) - A285259 (n + 1))

end

end A285260.P6630464138698275263

/-! ## A285260.P1687459042105706568

`A285253(n+1)+A285254(n+1)-A285259(n+1)`
-/

namespace A285260.P1687459042105706568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285253 (n + 1) + (A285254 (n + 1) - A285259 (n + 1))

end

end A285260.P1687459042105706568

/-! ## A285260.P14747653159286427302

`A285256(n+1)+A285257(n+1)-A285259(n+1)`
-/

namespace A285260.P14747653159286427302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285256 (n + 1) + (A285257 (n + 1) - A285259 (n + 1))

end

end A285260.P14747653159286427302

/-! ## A285260.P10337720879353666796

`filter[n+1, A285258(#)]`
-/

namespace A285260.P10337720879353666796
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A285258 (f1 j) = 1) n)

end

end A285260.P10337720879353666796

/-! ## A285260.P13288017533007310762

`eq[1, A285258(n+1)]+1`
-/

namespace A285260.P13288017533007310762
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285258 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A285260.P13288017533007310762

/-! ## A285260.P87906820553219526

`A285250(Δ[n²])-2*n`
-/

namespace A285260.P87906820553219526
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285250 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat - (2 * n : ℤ)

end

end A285260.P87906820553219526

/-! ## A285260.P13215971240144571080

`A285250(2*n+1)-n-n`
-/

namespace A285260.P13215971240144571080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285250 (2 * n + 1) - (n : ℤ) - (n : ℤ)

end

end A285260.P13215971240144571080

/-! ## A285260.P10497780550333711145

`A285258(2*(n+1))+Δ[n²]`
-/

namespace A285260.P10497780550333711145
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285258 (2 * (n + 1)) + ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A285260.P10497780550333711145

/-! ## A285260.P15784679973667517436

`2*(n+1)-A285258(2*n+1)`
-/

namespace A285260.P15784679973667517436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) : ℤ) - A285258 (2 * n + 1)

end

end A285260.P15784679973667517436

/-! ## A285260.P343726629905294292

`A014681(A285259(n+1))`
-/

namespace A285260.P343726629905294292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 (A285259 (n + 1)).toNat

end

end A285260.P343726629905294292

/-! ## A285260.P6301313242085259385

`record[A285258(n+2)+A000265(n+1)]`
-/

namespace A285260.P6301313242085259385
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285258 (n + 2) + A000265 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A285260.P6301313242085259385

/-! ## A285260.P6172633892969000100

`A000027(A285258(2*(n+1))+2*n+1)`
-/

namespace A285260.P6172633892969000100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A285258 (2 * (n + 1)) + (2 * n + 1 : ℤ)).toNat

end

end A285260.P6172633892969000100

/-! ## A285260.P16988227109834162534

`A016777(2*n)+2-A285251(2*n+1)`
-/

namespace A285260.P16988227109834162534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016777 (2 * n) + (2 - A285251 (2 * n + 1))

end

end A285260.P16988227109834162534

/-! ## A285260.P5550309076114463947

`A285258(2*n+2)+A028310(n+1)+n`
-/

namespace A285260.P5550309076114463947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285258 (2 * n + 2) + A028310 (n + 1) + (n : ℤ)

end

end A285260.P5550309076114463947

/-! ## A285260.P16172159450247772491

`A005408(A005408(n))-A285259(n+1)`
-/

namespace A285260.P16172159450247772491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (A005408 n).toNat - A285259 (n + 1)

end

end A285260.P16172159450247772491

/-! ## A285260.P16175747022081750502

`eq[n, A028310(n)*A285258(A028310(n))]`
-/

namespace A285260.P16175747022081750502
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n * A285258 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A285260.P16175747022081750502

/-!
# A285262: Expansion of Product_{k>=1} ((1-x^(4*k))/(1-x^k))^k.

The programs for A285262, there is no canonical definition to state claims against.
-/

/-! ## A285262.P361091460389909012

`A253786(A173109(n))+A227681(n)`
-/

namespace A285262.P361091460389909012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253786 (A173109 n).toNat + A227681 n

end

end A285262.P361091460389909012

/-! ## A285262.P9199496952116460396

`A351596(A053993(n))+A194029(n+1)`
-/

namespace A285262.P9199496952116460396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351596 (A053993 n).toNat + A194029 (n + 1)

end

end A285262.P9199496952116460396

/-! ## A285262.P1756150635672111676

`A104637(A254785(3*n+4)+1)+A055244(n)`
-/

namespace A285262.P1756150635672111676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104637 (A254785 (3 * n + 4) + 1).toNat + A055244 n

end

end A285262.P1756150635672111676

/-!
# A285263: Expansion of Product_{k>=1} ((1-x^(5*k))/(1-x^k))^k.

The programs for A285263, there is no canonical definition to state claims against.
-/

/-! ## A285263.P10884095589848885869

`A000219(n)-A097412(A131315(n+1))`
-/

namespace A285263.P10884095589848885869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000219 n - A097412 (A131315 (n + 1)).toNat

end

end A285263.P10884095589848885869

/-! ## A285263.P7439230839828458152

`xor(A001452(n), A052448(A008406(3*n+5)))`
-/

namespace A285263.P7439230839828458152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A001452 n) (A052448 (A008406 (3 * n + 5)).toNat)

end

end A285263.P7439230839828458152

/-! ## A285263.P11606916283120480208

`A239560(A070938(n+1))+A134640(A001399(n))`
-/

namespace A285263.P11606916283120480208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239560 (A070938 (n + 1)).toNat + A134640 (A001399 n).toNat

end

end A285263.P11606916283120480208

/-! ## A285263.P8309729728113618771

`A124761(A000125(n))+A001452(n)-A124761(n)`
-/

namespace A285263.P8309729728113618771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124761 (A000125 n).toNat + (A001452 n - A124761 n)

end

end A285263.P8309729728113618771

/-!
# A285266: Array read by antidiagonals: T(m,n) = number of m-ary words of length n with adjacent elements differing by 2 or less.

The programs for A285266, there is no canonical definition to state claims against.
-/

/-! ## A285266.P9436872588074787187

`xor(A187794(A152947(n+1)²), A285280(n+3))`
-/

namespace A285266.P9436872588074787187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A187794 (A152947 (n + 1) ^ 2).toNat) (A285280 (n + 3))

end

end A285266.P9436872588074787187

/-! ## A285266.P3804660885168704362

`A285280(n+3)+A184955(A007092(n))`
-/

namespace A285266.P3804660885168704362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285280 (n + 3) + A184955 (A007092 n).toNat

end

end A285266.P3804660885168704362

/-! ## A285266.P14236105521822907824

`A285280(n+3)+A191322(A174410(n))`
-/

namespace A285266.P14236105521822907824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285280 (n + 3) + A191322 (A174410 n).toNat

end

end A285266.P14236105521822907824

/-! ## A285266.P1493829834430279199

`xor(A187794(A173585(n)), A285280(n+3))`
-/

namespace A285266.P1493829834430279199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A187794 (A173585 n).toNat) (A285280 (n + 3))

end

end A285266.P1493829834430279199

/-! ## A285266.P14538753454985128087

`A285280(n+3)+A184955(A061854(n+1))`
-/

namespace A285266.P14538753454985128087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285280 (n + 3) + A184955 (A061854 (n + 1)).toNat

end

end A285266.P14538753454985128087

/-!
# A285267: Array read by antidiagonals: T(m,n) = number of m-ary words of length n with adjacent elements differing by 3 or less.

The programs for A285267, there is no canonical definition to state claims against.
-/

/-! ## A285267.P13917732255860106934

`xor(A185284(A003959(n+1)), A285281(n+4))`
-/

namespace A285267.P13917732255860106934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A185284 (A003959 (n + 1)).toNat) (A285281 (n + 4))

end

end A285267.P13917732255860106934

/-! ## A285267.P17600156257770759655

`A285281(n+4)+A101707(A185293(n))`
-/

namespace A285267.P17600156257770759655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285281 (n + 4) + A101707 (A185293 n).toNat

end

end A285267.P17600156257770759655

/-!
# A285268: Triangle read by rows: T(m,n) = Sum_{i=1..n} P(m,i) where P(m,n) = m!/(m-n)! is the number of permutations of m items taken n at a time, for 1 <= n <= m.

The programs for A285268, there is no canonical definition to state claims against.
-/

/-! ## A285268.P15579836522223614773

`∑[char[∑[n]]]*A347667(n)`
-/

namespace A285268.P15579836522223614773
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A347667 n

end

end A285268.P15579836522223614773

/-! ## A285268.P13025627488665081486

`A121662(∑[char[∑[n]]]²-n)`
-/

namespace A285268.P13025627488665081486
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121662 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - n)

end

end A285268.P13025627488665081486

/-! ## A285268.P17521579147291752911

`A121662(A038722(n+1))+C(n, 64)`
-/

namespace A285268.P17521579147291752911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121662 (A038722 (n + 1)).toNat + (Nat.choose n 64 : ℤ)

end

end A285268.P17521579147291752911

/-! ## A285268.P13259167543640862504

`A121662(A038722(n+1))%A160787(n)`
-/

namespace A285268.P13259167543640862504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A121662 (A038722 (n + 1)).toNat) (A160787 n)

end

end A285268.P13259167543640862504

/-! ## A285268.P7480876205273396792

`gcd(A000038(n), A121662(A038722(n+1)))`
-/

namespace A285268.P7480876205273396792
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A121662 (A038722 (n + 1)).toNat)

end

end A285268.P7480876205273396792

/-! ## A285268.P5693389600120414134

`A121662(A038722(n+1))/A007318(∑[n])`
-/

namespace A285268.P5693389600120414134
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A121662 (A038722 (n + 1)).toNat : ℚ) / (A007318 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ)

end

end A285268.P5693389600120414134

/-! ## A285268.P15332769256848677016

`A121662(A038722(n+1))^(A000040(n+1)%2)`
-/

namespace A285268.P15332769256848677016
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A121662 (A038722 (n + 1)).toNat : ℚ) ^ (Int.tmod (A000040 (n + 1)) 2 : ℤ)

end

end A285268.P15332769256848677016

/-! ## A285268.P2749349960023470197

`A121662(A038722(n+1))+∏{d}[n+1, A001222(#)]`
-/

namespace A285268.P2749349960023470197
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121662 (A038722 (n + 1)).toNat + ∏ d ∈ Nat.divisors (f1 n), A001222 d

end

end A285268.P2749349960023470197

/-! ## A285268.P18174154730190575054

`A121662(A038722(n+1))+A008683(8*A000040(n+1))`
-/

namespace A285268.P18174154730190575054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121662 (A038722 (n + 1)).toNat + A008683 (8 * A000040 (n + 1)).toNat

end

end A285268.P18174154730190575054

/-!
# A285269: Number of (odd) primes between 2*n^2 and 2*(n+1)^2.

The programs for A285269, the canonical program `A285269.P15130939966737221586` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A285269 has offset 0).

The definition of A285269 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A285269.P14432609709440763298

`Δ[A278114(floor(acot(n)+n))]`
-/

namespace A285269.P14432609709440763298
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278114 ⌊SequenceMachineLib.acot (n : ℝ) + (n : ℝ)⌋.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A285269.P14432609709440763298

namespace A285269

/-- `Δ[A278114(floor(acot(n)+n))]` -/
def P14432609709440763298.Spec : Prop :=
  ∀ n, P14432609709440763298.a n = A285269 n

end A285269

/-! ## A285269.P15130939966737221586

`Δ[A278114(floor(sqrt(n²+1)))]`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A285269

/-- `Δ[A278114(floor(sqrt(n²+1)))]` -/
def P15130939966737221586.Spec : Prop :=
  ∀ n, P15130939966737221586.a n = A285269 n

theorem P15130939966737221586.correct : P15130939966737221586.Spec := by
  intro n
  simp only [A285269]

end A285269

/-! ## A285269.P12518690472385715099

`A285786(n+1)-floor(acot(n))`
-/

namespace A285269.P12518690472385715099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285786 (n + 1) - ⌊SequenceMachineLib.acot (n : ℝ)⌋

end

end A285269.P12518690472385715099

namespace A285269

/-- `A285786(n+1)-floor(acot(n))` -/
def P12518690472385715099.Spec : Prop :=
  ∀ n, P12518690472385715099.a n = A285269 n

end A285269

/-! ## A285269.P14895694077280757416

`A285786(n+1)-A000007(n)`
-/

namespace A285269.P14895694077280757416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285786 (n + 1) - A000007 n

end

end A285269.P14895694077280757416

namespace A285269

/-- `A285786(n+1)-A000007(n)` -/
def P14895694077280757416.Spec : Prop :=
  ∀ n, P14895694077280757416.a n = A285269 n

end A285269

/-! ## A285269.P882350836681012939

`A057427(n)*A285786(n+1)`
-/

namespace A285269.P882350836681012939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A285786 (n + 1)

end

end A285269.P882350836681012939

namespace A285269

/-- `A057427(n)*A285786(n+1)` -/
def P882350836681012939.Spec : Prop :=
  ∀ n, P882350836681012939.a n = A285269 n

end A285269

/-! ## A285269.P14012073186570032732

`A285786(n+1)%A000156(n)`
-/

namespace A285269.P14012073186570032732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A285786 (n + 1)) (A000156 n)

end

end A285269.P14012073186570032732

namespace A285269

/-- `A285786(n+1)%A000156(n)` -/
def P14012073186570032732.Spec : Prop :=
  ∀ n, P14012073186570032732.a n = A285269 n

end A285269

/-! ## A285269.P734124562111632438

`and(A057428(n), A285786(n+1))`
-/

namespace A285269.P734124562111632438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A057428 n) (A285786 (n + 1))

end

end A285269.P734124562111632438

namespace A285269

/-- `and(A057428(n), A285786(n+1))` -/
def P734124562111632438.Spec : Prop :=
  ∀ n, P734124562111632438.a n = A285269 n

end A285269

/-! ## A285269.P3518465691994133414

`A278114(n+1)-A278114(A028310(n))`
-/

namespace A285269.P3518465691994133414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278114 (n + 1) - A278114 (A028310 n).toNat

end

end A285269.P3518465691994133414

namespace A285269

/-- `A278114(n+1)-A278114(A028310(n))` -/
def P3518465691994133414.Spec : Prop :=
  ∀ n, P3518465691994133414.a n = A285269 n

end A285269

/-! ## A285269.P3381992921025347923

`and(A118883(n+1), A285786(n+1))`
-/

namespace A285269.P3381992921025347923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A118883 (n + 1)) (A285786 (n + 1))

end

end A285269.P3381992921025347923

namespace A285269

/-- `and(A118883(n+1), A285786(n+1))` -/
def P3381992921025347923.Spec : Prop :=
  ∀ n, P3381992921025347923.a n = A285269 n

end A285269

/-! ## A285269.P4366630420190685048

`and(A127582(n), A285786(n+1))`
-/

namespace A285269.P4366630420190685048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A127582 n) (A285786 (n + 1))

end

end A285269.P4366630420190685048

namespace A285269

/-- `and(A127582(n), A285786(n+1))` -/
def P4366630420190685048.Spec : Prop :=
  ∀ n, P4366630420190685048.a n = A285269 n

end A285269

/-! ## A285269.P8076893228595999671

`and(A087323(n), A285786(n+1))`
-/

namespace A285269.P8076893228595999671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A087323 n) (A285786 (n + 1))

end

end A285269.P8076893228595999671

namespace A285269

/-- `and(A087323(n), A285786(n+1))` -/
def P8076893228595999671.Spec : Prop :=
  ∀ n, P8076893228595999671.a n = A285269 n

end A285269

/-! ## A285269.P9450813966832545250

`Δ[A000720(2*A253909(n))]`
-/

namespace A285269.P9450813966832545250
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (2 * A253909 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A285269.P9450813966832545250

namespace A285269

/-- `Δ[A000720(2*A253909(n))]` -/
def P9450813966832545250.Spec : Prop :=
  ∀ n, P9450813966832545250.a n = A285269 n

end A285269

/-! ## A285269.P4969611243165750723

`and(A024036(n), A285786(n+1))`
-/

namespace A285269.P4969611243165750723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A024036 n) (A285786 (n + 1))

end

end A285269.P4969611243165750723

namespace A285269

/-- `and(A024036(n), A285786(n+1))` -/
def P4969611243165750723.Spec : Prop :=
  ∀ n, P4969611243165750723.a n = A285269 n

end A285269

/-! ## A285269.P1607747704890919592

`and(A130567(n+1), A285786(n+1))`
-/

namespace A285269.P1607747704890919592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A130567 (n + 1)) (A285786 (n + 1))

end

end A285269.P1607747704890919592

namespace A285269

/-- `and(A130567(n+1), A285786(n+1))` -/
def P1607747704890919592.Spec : Prop :=
  ∀ n, P1607747704890919592.a n = A285269 n

end A285269

/-! ## A285269.P7542403309146508795

`and(A285786(n+1), A389172(n+1))`
-/

namespace A285269.P7542403309146508795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A285786 (n + 1)) (A389172 (n + 1))

end

end A285269.P7542403309146508795

namespace A285269

/-- `and(A285786(n+1), A389172(n+1))` -/
def P7542403309146508795.Spec : Prop :=
  ∀ n, P7542403309146508795.a n = A285269 n

end A285269

/-! ## A285269.P17469946808902292072

`and(A198693(n), A285786(n+1))`
-/

namespace A285269.P17469946808902292072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A198693 n) (A285786 (n + 1))

end

end A285269.P17469946808902292072

namespace A285269

/-- `and(A198693(n), A285786(n+1))` -/
def P17469946808902292072.Spec : Prop :=
  ∀ n, P17469946808902292072.a n = A285269 n

end A285269

/-! ## A285269.P6448191128947933523

`and(A114569(n), A285786(n+1))`
-/

namespace A285269.P6448191128947933523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A114569 n) (A285786 (n + 1))

end

end A285269.P6448191128947933523

namespace A285269

/-- `and(A114569(n), A285786(n+1))` -/
def P6448191128947933523.Spec : Prop :=
  ∀ n, P6448191128947933523.a n = A285269 n

end A285269

/-! ## A285269.P16216067363631272319

`and(A156760(n), A285786(n+1))`
-/

namespace A285269.P16216067363631272319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A156760 n) (A285786 (n + 1))

end

end A285269.P16216067363631272319

namespace A285269

/-- `and(A156760(n), A285786(n+1))` -/
def P16216067363631272319.Spec : Prop :=
  ∀ n, P16216067363631272319.a n = A285269 n

end A285269

/-! ## A285269.P11980723015678179225

`and(A198694(n), A285786(n+1))`
-/

namespace A285269.P11980723015678179225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A198694 n) (A285786 (n + 1))

end

end A285269.P11980723015678179225

namespace A285269

/-- `and(A198694(n), A285786(n+1))` -/
def P11980723015678179225.Spec : Prop :=
  ∀ n, P11980723015678179225.a n = A285269 n

end A285269

/-!
# A285270: a(n) = H_n(n), where H_n is the physicist's n-th Hermite polynomial.

The programs for A285270, there is no canonical definition to state claims against.
-/

/-! ## A285270.P6667328424423356955

`∑[A039143(A124504(2*n))]+1`
-/

namespace A285270.P6667328424423356955
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039143 (A124504 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A285270.P6667328424423356955

/-!
# A285271: Numbers that are divisible by each of their digits but that are either not divisible by the sum of their digits or are not divisible by the product of their digits or both.

The programs for A285271, there is no canonical definition to state claims against.
-/

/-! ## A285271.P5820739023083456419

`∪[A087142(n+1), A337163(n+1)]`
-/

namespace A285271.P5820739023083456419
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087142 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337163 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A285271.P5820739023083456419

/-! ## A285271.P2939913808875394351

`∩[A113600(n+1), A125293(n+1)]`
-/

namespace A285271.P2939913808875394351
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113600 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125293 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A285271.P2939913808875394351

/-! ## A285271.P6345890720895040201

`∩[A125293(n+1), A392961(n+1)]`
-/

namespace A285271.P6345890720895040201
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125293 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392961 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A285271.P6345890720895040201

/-! ## A285271.P1362994159743559058

`filter[A113600(n+1), A143222(#)]`
-/

namespace A285271.P1362994159743559058
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113600 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A143222 (f1 j).toNat = 1) n)

end

end A285271.P1362994159743559058

/-! ## A285271.P5329102060716233578

`filter[A392961(n+1), A143222(#)]`
-/

namespace A285271.P5329102060716233578
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392961 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A143222 (f1 j).toNat = 1) n)

end

end A285271.P5329102060716233578

/-!
# A285273: Number of integers, x, with n+1 digits, that have the property that there exists an integer k, with x <= k < 2*x, such that k/x = 1 + (x-10^n)/(10^n-1), i.e., the same digits appear in the denominator and in the recurring decimal.

The programs for A285273, there is no canonical definition to state claims against.
-/

/-! ## A285273.P8223552372996031762

`2^A102347(n+1)`
-/

namespace A285273.P8223552372996031762
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A102347 (n + 1) : ℤ)

end

end A285273.P8223552372996031762

/-! ## A285273.P8240483617525554586

`2^∑{d}[n+1, A112505(#)]`
-/

namespace A285273.P8240483617525554586
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (∑ d ∈ Nat.divisors (f1 n), A112505 d : ℤ)

end

end A285273.P8240483617525554586

/-! ## A285273.P6753702910364589522

`2^(A095370(n+1)+(n+1)²%3)`
-/

namespace A285273.P6753702910364589522
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A095370 (n + 1) + (((n + 1) ^ 2 % 3 : ℕ) : ℤ) : ℤ)

end

end A285273.P6753702910364589522

/-! ## A285273.P18234230010300036272

`A000079(A102347(n+1))`
-/

namespace A285273.P18234230010300036272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A102347 (n + 1)).toNat

end

end A285273.P18234230010300036272

/-! ## A285273.P10526723679815266151

`A011782(A102347(n+1)+1)`
-/

namespace A285273.P10526723679815266151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (A102347 (n + 1) + 1).toNat

end

end A285273.P10526723679815266151

/-! ## A285273.P15346535329079722938

`A131577(A102347(n+1)+1)`
-/

namespace A285273.P15346535329079722938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131577 (A102347 (n + 1) + 1).toNat

end

end A285273.P15346535329079722938

/-! ## A285273.P724385638218521798

`A016116(2*A102347(n+1))`
-/

namespace A285273.P724385638218521798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016116 (2 * A102347 (n + 1)).toNat

end

end A285273.P724385638218521798

/-! ## A285273.P2999547628388752966

`A060546(2*A102347(n+1))`
-/

namespace A285273.P2999547628388752966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060546 (2 * A102347 (n + 1)).toNat

end

end A285273.P2999547628388752966

/-! ## A285273.P1440431997137695909

`A171559(A102347(n+1)%(n+2))`
-/

namespace A285273.P1440431997137695909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171559 (Int.tmod (A102347 (n + 1)) (n + 2 : ℤ)).toNat

end

end A285273.P1440431997137695909

/-! ## A285273.P12651858879882369900

`2^∑{d}[n+1, A001222(A064126(#))]`
-/

namespace A285273.P12651858879882369900
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (∑ d ∈ Nat.divisors (f1 n), A001222 (A064126 d).toNat : ℤ)

end

end A285273.P12651858879882369900

/-!
# A285274: 0-limiting word of the morphism 0->10, 1-> 0111.

The programs for A285274, there is no canonical definition to state claims against.
-/

/-! ## A285274.P17875510782956878424

`A285278(n+1)%2`
-/

namespace A285274.P17875510782956878424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A285278 (n + 1)) 2

end

end A285274.P17875510782956878424

/-! ## A285274.P687531105058369323

`char[A285276(n+1)-1]`
-/

namespace A285274.P687531105058369323
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285276 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A285274.P687531105058369323

/-! ## A285274.P4423884741934131995

`1-char[A285275(n+1)-1]`
-/

namespace A285274.P4423884741934131995
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285275 (n + 1) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A285274.P4423884741934131995

/-! ## A285274.P1818678806314348399

`and(A057427(n), A285278(n+1))`
-/

namespace A285274.P1818678806314348399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A057427 n) (A285278 (n + 1))

end

end A285274.P1818678806314348399

/-! ## A285274.P13630172070208190942

`A285277(Δ[A285278(n+1)]+1)`
-/

namespace A285274.P13630172070208190942
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285278 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285277 (f1 (n + 1) - f1 n + 1).toNat

end

end A285274.P13630172070208190942

/-! ## A285274.P5378549111684978482

`A029329(A285278(n+2)-A285278(n+1))`
-/

namespace A285274.P5378549111684978482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029329 (A285278 (n + 2) - A285278 (n + 1)).toNat

end

end A285274.P5378549111684978482

/-! ## A285274.P330220695883335182

`A285277(A285278(n+2)-A285278(n+1)+1)`
-/

namespace A285274.P330220695883335182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285277 (A285278 (n + 2) - A285278 (n + 1) + 1).toNat

end

end A285274.P330220695883335182

/-! ## A285274.P8504412548708130802

`and(A285277(A285279(n+1)), A285278(n+1))`
-/

namespace A285274.P8504412548708130802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A285277 (A285279 (n + 1)).toNat) (A285278 (n + 1))

end

end A285274.P8504412548708130802

/-! ## A285274.P8398861817368595207

`and(A285258(A285260(n+1)), A285278(n+1))`
-/

namespace A285274.P8398861817368595207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A285258 (A285260 (n + 1)).toNat) (A285278 (n + 1))

end

end A285274.P8398861817368595207

/-! ## A285274.P13807642906223798577

`and(A285278(n+1), A285305(A285307(n+1)))`
-/

namespace A285274.P13807642906223798577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A285278 (n + 1)) (A285305 (A285307 (n + 1)).toNat)

end

end A285274.P13807642906223798577

/-! ## A285274.P7301419352374705876

`A000035(A285278(n+1))`
-/

namespace A285274.P7301419352374705876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A285278 (n + 1)).toNat

end

end A285274.P7301419352374705876

/-! ## A285274.P629348980754757514

`A285277(A285342(n+1))`
-/

namespace A285274.P629348980754757514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285277 (A285342 (n + 1)).toNat

end

end A285274.P629348980754757514

/-! ## A285274.P13188304930768830482

`and(A176794(n), A285278(n+1))`
-/

namespace A285274.P13188304930768830482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A176794 n) (A285278 (n + 1))

end

end A285274.P13188304930768830482

/-! ## A285274.P8676878563251901001

`and(A020737(n), A285278(n+1))`
-/

namespace A285274.P8676878563251901001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A020737 n) (A285278 (n + 1))

end

end A285274.P8676878563251901001

/-! ## A285274.P3356682858575570137

`and(and(1, A285278(n+1)), A051900(n))`
-/

namespace A285274.P3356682858575570137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (Int.land 1 (A285278 (n + 1))) (A051900 n)

end

end A285274.P3356682858575570137

/-! ## A285274.P2409917957445356271

`and(A048479(n), A285278(n+1))`
-/

namespace A285274.P2409917957445356271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A048479 n) (A285278 (n + 1))

end

end A285274.P2409917957445356271

/-! ## A285274.P9728795109538909591

`and(A285278(n+1), A295926(n+3))`
-/

namespace A285274.P9728795109538909591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A285278 (n + 1)) (A295926 (n + 3))

end

end A285274.P9728795109538909591

/-! ## A285274.P13556653811532359792

`and(A115342(n+6), A285278(n+1))`
-/

namespace A285274.P13556653811532359792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A115342 (n + 6)) (A285278 (n + 1))

end

end A285274.P13556653811532359792

/-! ## A285274.P7025448455711735519

`and(A027608(n), A285278(n+1))`
-/

namespace A285274.P7025448455711735519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A027608 n) (A285278 (n + 1))

end

end A285274.P7025448455711735519

/-! ## A285274.P8454094583319380064

`and(A211388(n), A285278(n+1))`
-/

namespace A285274.P8454094583319380064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A211388 n) (A285278 (n + 1))

end

end A285274.P8454094583319380064

/-!
# A285275: Positions of 0 in A285274; complement of A285276.

The programs for A285275, there is no canonical definition to state claims against.
-/

/-! ## A285275.P17072736586354549275

`lt[A285274(n+1), 1]+1`
-/

namespace A285275.P17072736586354549275
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285274 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A285275.P17072736586354549275

/-! ## A285275.P1295419761066436413

`eq[2, A020639(A285278(n+1))]+1`
-/

namespace A285275.P1295419761066436413
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A285278 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A285275.P1295419761066436413

/-! ## A285275.P14191690273269899844

`record[n+1-A285274(n+1)*A285276(n+1)]`
-/

namespace A285275.P14191690273269899844
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A285274 (n + 1) * A285276 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A285275.P14191690273269899844

/-! ## A285275.P13314337234701041228

`record[n+1-A285274(n+1)*A285278(n+1)]`
-/

namespace A285275.P13314337234701041228
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A285274 (n + 1) * A285278 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A285275.P13314337234701041228

/-! ## A285275.P11276462672679680472

`record[n+1-A285274(n+1)*A285279(n+1)]`
-/

namespace A285275.P11276462672679680472
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A285274 (n + 1) * A285279 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A285275.P11276462672679680472

/-! ## A285275.P10230788903264279816

`record[(n+1)/A285279(n*A285274(n+1)+1)]`
-/

namespace A285275.P10230788903264279816
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A285279 ((n : ℤ) * A285274 (n + 1) + 1).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A285275.P10230788903264279816

/-!
# A285276: Positions of 1 in A285274; complement of A285275.

The programs for A285276, there is no canonical definition to state claims against.
-/

/-! ## A285276.P5110049901524383330

`comp[A285275(n+1)-1]+1`
-/

namespace A285276.P5110049901524383330
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285275 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A285276.P5110049901524383330

/-! ## A285276.P15799843127379402677

`filter[n+1, A285274(#)]`
-/

namespace A285276.P15799843127379402677
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A285274 (f1 j) = 1) n)

end

end A285276.P15799843127379402677

/-! ## A285276.P9807557747076896423

`eq[1, A285274(n+1)]+1`
-/

namespace A285276.P9807557747076896423
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285274 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A285276.P9807557747076896423

/-! ## A285276.P12486154968972801257

`record[2*A285274(n+2)+n]`
-/

namespace A285276.P12486154968972801257
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A285274 (n + 2) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A285276.P12486154968972801257

/-! ## A285276.P13832333485772634301

`eq[1, A285278(n+1)%2]+1`
-/

namespace A285276.P13832333485772634301
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A285278 (n + 1)) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A285276.P13832333485772634301

/-! ## A285276.P17779210959881633814

`eq[1, gcd(2, A285278(n+2))]+2`
-/

namespace A285276.P17779210959881633814
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (A285278 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 2

end

end A285276.P17779210959881633814

/-! ## A285276.P6676735442594458260

`eq[2, A020639(A285278(n+1)+1)]+1`
-/

namespace A285276.P6676735442594458260
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A285278 (n + 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A285276.P6676735442594458260

/-! ## A285276.P1706416506914863707

`A285279(A001952(n+1))-A001952(n+1)`
-/

namespace A285276.P1706416506914863707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285279 (A001952 (n + 1)).toNat - A001952 (n + 1)

end

end A285276.P1706416506914863707

/-! ## A285276.P7001557526452555516

`eq[A285277(2*n+1), A285277(2*(n+1))]-n`
-/

namespace A285276.P7001557526452555516
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285277 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285277 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j = f2 j) n : ℤ) - (n : ℤ)

end

end A285276.P7001557526452555516

/-!
# A285277: 1-limiting word of the morphism 0->10, 1-> 0111.

The programs for A285277, there is no canonical definition to state claims against.
-/

/-! ## A285277.P8719198348096943828

`A285275(n+1)%2`
-/

namespace A285277.P8719198348096943828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A285275 (n + 1)) 2

end

end A285277.P8719198348096943828

/-! ## A285277.P16901218415831964572

`char[A285279(n+1)-1]`
-/

namespace A285277.P16901218415831964572
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285279 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A285277.P16901218415831964572

/-! ## A285277.P9727855381948532015

`1-char[A285278(n+1)-1]`
-/

namespace A285277.P9727855381948532015
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285278 (n + 1) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A285277.P9727855381948532015

/-! ## A285277.P4077534130690469299

`and(A060576(n), A285275(n+1))`
-/

namespace A285277.P4077534130690469299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A060576 n) (A285275 (n + 1))

end

end A285277.P4077534130690469299

/-! ## A285277.P8420546593797463781

`and(A158388(n), A285275(n+1))`
-/

namespace A285277.P8420546593797463781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A158388 n) (A285275 (n + 1))

end

end A285277.P8420546593797463781

/-! ## A285277.P6113355555180662096

`and(A179184(n), A285275(n+1))`
-/

namespace A285277.P6113355555180662096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A179184 n) (A285275 (n + 1))

end

end A285277.P6113355555180662096

/-! ## A285277.P1062502936500961169

`and(A267927(n), A285275(n+1))`
-/

namespace A285277.P1062502936500961169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A267927 n) (A285275 (n + 1))

end

end A285277.P1062502936500961169

/-! ## A285277.P8712904874605919545

`and(A285275(n+1), A329684(n))`
-/

namespace A285277.P8712904874605919545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A285275 (n + 1)) (A329684 n)

end

end A285277.P8712904874605919545

/-! ## A285277.P14527463867611953471

`floor(2/A020639(A285275(n+1)+1))`
-/

namespace A285277.P14527463867611953471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊2 / (A020639 (A285275 (n + 1) + 1).toNat : ℚ)⌋

end

end A285277.P14527463867611953471

/-! ## A285277.P16815155546382496575

`A157685(Δ[A285275(n+1)])`
-/

namespace A285277.P16815155546382496575
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285275 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157685 (f1 (n + 1) - f1 n).toNat

end

end A285277.P16815155546382496575

/-! ## A285277.P4886774109737910519

`A189660(Δ[A285275(n+1)])`
-/

namespace A285277.P4886774109737910519
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285275 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189660 (f1 (n + 1) - f1 n).toNat

end

end A285277.P4886774109737910519

/-! ## A285277.P13723374862855497009

`A102679(Δ[A285275(n+1)]+3)`
-/

namespace A285277.P13723374862855497009
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285275 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102679 (f1 (n + 1) - f1 n + 3).toNat

end

end A285277.P13723374862855497009

/-! ## A285277.P5073554491879675579

`A097805(Δ[2*A285275(n+1)]-1)`
-/

namespace A285277.P5073554491879675579
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A285275 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097805 (f1 (n + 1) - f1 n - 1).toNat

end

end A285277.P5073554491879675579

/-! ## A285277.P4978125665947274746

`and(A285274(A285276(n+1)), A285275(n+1))`
-/

namespace A285277.P4978125665947274746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A285274 (A285276 (n + 1)).toNat) (A285275 (n + 1))

end

end A285277.P4978125665947274746

/-! ## A285277.P3249256273447919837

`and(A285275(n+1), A285341(2*n+1))`
-/

namespace A285277.P3249256273447919837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A285275 (n + 1)) (A285341 (2 * n + 1))

end

end A285277.P3249256273447919837

/-! ## A285277.P10478661339379483340

`and(A285258(A285260(n+1)), A285275(n+1))`
-/

namespace A285277.P10478661339379483340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A285258 (A285260 (n + 1)).toNat) (A285275 (n + 1))

end

end A285277.P10478661339379483340

/-! ## A285277.P17588549045616928967

`and(A285275(n+1), A285305(A285307(n+1)))`
-/

namespace A285277.P17588549045616928967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A285275 (n + 1)) (A285305 (A285307 (n + 1)).toNat)

end

end A285277.P17588549045616928967

/-! ## A285277.P14771098423993080281

`and(A189664(A189666(n+1)), A285275(n+1))`
-/

namespace A285277.P14771098423993080281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A189664 (A189666 (n + 1)).toNat) (A285275 (n + 1))

end

end A285277.P14771098423993080281

/-!
# A285278: Positions of 0 in A285277; complement of A285279.

The programs for A285278, there is no canonical definition to state claims against.
-/

/-! ## A285278.P888913172344671882

`eq[0, A285277(n+1)]+1`
-/

namespace A285278.P888913172344671882
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285277 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A285278.P888913172344671882

/-! ## A285278.P14316749625891622227

`lt[A285275(n+1)%2, 1]+1`
-/

namespace A285278.P14316749625891622227
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A285275 (n + 1)) 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A285278.P14316749625891622227

/-! ## A285278.P8683301042425164951

`lt[A285277(A028310(n)), 1]`
-/

namespace A285278.P8683301042425164951
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285277 (A028310 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A285278.P8683301042425164951

/-! ## A285278.P15460237794730458946

`eq[char[A285279(n+1)], A000007(n)]`
-/

namespace A285278.P15460237794730458946
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285279 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A285278.P15460237794730458946

/-! ## A285278.P819310769440547968

`eq[char[A285279(n+1)], A000038(n)]`
-/

namespace A285278.P819310769440547968
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285279 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A285278.P819310769440547968

/-! ## A285278.P10678053657953456296

`eq[2, A020639(A285275(n+1))]+1`
-/

namespace A285278.P10678053657953456296
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A285275 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A285278.P10678053657953456296

/-! ## A285278.P13473465382784606172

`record[A005843(n+1)/A020639(A285275(n+1))]`
-/

namespace A285278.P13473465382784606172
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005843 (n + 1) : ℚ) / (A020639 (A285275 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A285278.P13473465382784606172

/-! ## A285278.P2564850832110111635

`eq[char[A285279(n+1)], A285476(n)]`
-/

namespace A285278.P2564850832110111635
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285279 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285476 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A285278.P2564850832110111635

/-!
# A285279: Positions of 1 in A285277; complement of A285278.

The programs for A285279, there is no canonical definition to state claims against.
-/

/-! ## A285279.P4884705845070619434

`comp[A285278(n+1)-1]+1`
-/

namespace A285279.P4884705845070619434
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285278 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A285279.P4884705845070619434

/-! ## A285279.P228203605354717075

`filter[n+1, A285277(#)]`
-/

namespace A285279.P228203605354717075
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A285277 (f1 j) = 1) n)

end

end A285279.P228203605354717075

/-! ## A285279.P1363078431881208512

`eq[1, A285277(n+1)]+1`
-/

namespace A285279.P1363078431881208512
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285277 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A285279.P1363078431881208512

/-! ## A285279.P8592344791196300513

`eq[1, A285275(n+1)%2]+1`
-/

namespace A285279.P8592344791196300513
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A285275 (n + 1)) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A285279.P8592344791196300513

/-! ## A285279.P11712091597309447912

`record[A000027(n+1)*A285277(n+1)]`
-/

namespace A285279.P11712091597309447912
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (n + 1) * A285277 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A285279.P11712091597309447912

/-! ## A285279.P5521829748407458018

`record[(n+1)*A285277((n+1)%A000040(n+1))]`
-/

namespace A285279.P5521829748407458018
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A285277 (Int.tmod (n + 1 : ℤ) (A000040 (n + 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A285279.P5521829748407458018

/-! ## A285279.P14746285459571258595

`eq[A057427(n), A285277(A028310(n))]`
-/

namespace A285279.P14746285459571258595
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285277 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A285279.P14746285459571258595

/-! ## A285279.P1086036434502130798

`lt[A285277(n+1), n*A285277(A028310(n))]`
-/

namespace A285279.P1086036434502130798
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285277 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A285277 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A285279.P1086036434502130798

/-! ## A285279.P15395651653442763714

`record[A020915(n)*A285277(A020915(n))]`
-/

namespace A285279.P15395651653442763714
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020915 n * A285277 (A020915 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A285279.P15395651653442763714

/-! ## A285279.P273483280833815247

`A285276(A001952(n+1))-A001952(n+1)`
-/

namespace A285279.P273483280833815247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285276 (A001952 (n + 1)).toNat - A001952 (n + 1)

end

end A285279.P273483280833815247

/-! ## A285279.P9039156939463410677

`eq[char[A285278(n+1)], A285476(2*n)]`
-/

namespace A285279.P9039156939463410677
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285278 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285476 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A285279.P9039156939463410677

/-! ## A285279.P636519708304482940

`record[A256502(n+1)*A285277(A256502(n+1))]`
-/

namespace A285279.P636519708304482940
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256502 (n + 1) * A285277 (A256502 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A285279.P636519708304482940

/-!
# A285280: Array read by antidiagonals: T(m,n) = number of m-ary words of length n with cyclically adjacent elements differing by 2 or less.

The programs for A285280, there is no canonical definition to state claims against.
-/

/-! ## A285280.P1811990036680173167

`A285266(n+3)-A341624(A119238(n+1))`
-/

namespace A285280.P1811990036680173167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285266 (n + 3) - A341624 (A119238 (n + 1)).toNat

end

end A285280.P1811990036680173167

/-! ## A285280.P12813958910021190864

`xor(A187794(A152947(n+1)²), A285266(n+3))`
-/

namespace A285280.P12813958910021190864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A187794 (A152947 (n + 1) ^ 2).toNat) (A285266 (n + 3))

end

end A285280.P12813958910021190864

/-! ## A285280.P15540595078093655902

`A285266(n+3)-A191322(A174410(n))`
-/

namespace A285280.P15540595078093655902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285266 (n + 3) - A191322 (A174410 n).toNat

end

end A285280.P15540595078093655902

/-! ## A285280.P14947060557755623475

`xor(A187794(A173585(n)), A285266(n+3))`
-/

namespace A285280.P14947060557755623475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A187794 (A173585 n).toNat) (A285266 (n + 3))

end

end A285280.P14947060557755623475

/-! ## A285280.P10240060176218604655

`A285266(n+3)-A184955(A061854(n+1))`
-/

namespace A285280.P10240060176218604655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285266 (n + 3) - A184955 (A061854 (n + 1)).toNat

end

end A285280.P10240060176218604655

/-!
# A285281: Array read by antidiagonals: T(m,n) = number of m-ary words of length n with cyclically adjacent elements differing by 3 or less.

The programs for A285281, there is no canonical definition to state claims against.
-/

/-! ## A285281.P1571061667359076533

`xor(A185284(A003959(n+1)), A285267(n+4))`
-/

namespace A285281.P1571061667359076533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A185284 (A003959 (n + 1)).toNat) (A285267 (n + 4))

end

end A285281.P1571061667359076533

/-! ## A285281.P11379666462209881983

`A285267(n+4)-A101707(A185293(n))`
-/

namespace A285281.P11379666462209881983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285267 (n + 4) - A101707 (A185293 n).toNat

end

end A285281.P11379666462209881983

/-! ## A285281.P10167048386355707534

`A285267(n+4)^A321804(n)²`
-/

namespace A285281.P10167048386355707534
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A285267 (n + 4) : ℚ) ^ (A321804 n ^ 2 : ℤ)

end

end A285281.P10167048386355707534

/-! ## A285281.P8603428407145842660

`A285267(n+4)%A380669(n+1)`
-/

namespace A285281.P8603428407145842660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A285267 (n + 4)) (A380669 (n + 1))

end

end A285281.P8603428407145842660

/-! ## A285281.P8388792259035938285

`A034328(∑[n+1])*A285267(n+4)`
-/

namespace A285281.P8388792259035938285
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034328 (∑ j ∈ Finset.range (n + 1), f1 j) * A285267 (n + 4)

end

end A285281.P8388792259035938285

/-!
# A285282: Numbers n such that n^2 + 1 is 13-smooth.

The programs for A285282, there is no canonical definition to state claims against.
-/

/-! ## A285282.P10396010618005955441

`lt[A248746(n+1), 4]+1`
-/

namespace A285282.P10396010618005955441
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248746 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A285282.P10396010618005955441

/-! ## A285282.P18374162638712865261

`lt[A250069(n+1), 13]+1`
-/

namespace A285282.P18374162638712865261
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250069 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  13

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A285282.P18374162638712865261

/-! ## A285282.P9018409637165759956

`lt[A014442(n+1), 14]+1`
-/

namespace A285282.P9018409637165759956
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014442 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  14

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A285282.P9018409637165759956

/-! ## A285282.P9052639471775670989

`lt[A061395((n+1)²+1), 7]+1`
-/

namespace A285282.P9052639471775670989
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 ((n + 1) ^ 2 + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A285282.P9052639471775670989

/-! ## A285282.P7286124643612808535

`lt[A006530((n+1)²+1), 14]+1`
-/

namespace A285282.P7286124643612808535
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 ((n + 1) ^ 2 + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  14

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A285282.P7286124643612808535

/-!
# A285283: Number of integers x such that the greatest prime factor of x^2 + 1 is at most A002313(n), the n-th prime not congruent to 3 mod 4.

The programs for A285283, there is no canonical definition to state claims against.
-/

/-! ## A285283.P14585372592838206851

`∑[A379346(n+1)]`
-/

namespace A285283.P14585372592838206851
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379346 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A285283.P14585372592838206851

/-!
# A285287: Expansion of Product_{k>=0} 1/(1 + x^(4*k+1))^(4*k+1).

The programs for A285287, there is no canonical definition to state claims against.
-/

/-! ## A285287.P12404270355761268947

`(-1)^n*A285048(n)`
-/

namespace A285287.P12404270355761268947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A285048 n

end

end A285287.P12404270355761268947

/-! ## A285287.P14353809816394746969

`A285048(n)/A033999(n)`
-/

namespace A285287.P14353809816394746969
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A285048 n : ℚ) / (A033999 n : ℚ)

end

end A285287.P14353809816394746969

/-! ## A285287.P8507769874093740108

`A285048(n)/A009001(2*(n+2))`
-/

namespace A285287.P8507769874093740108
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A285048 n : ℚ) / (A009001 (2 * (n + 2)) : ℚ)

end

end A285287.P8507769874093740108

/-! ## A285287.P14781547485930046080

`-(A033999(3*(n+1))*A285048(n))`
-/

namespace A285287.P14781547485930046080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(A033999 (3 * (n + 1)) * A285048 n)

end

end A285287.P14781547485930046080

/-! ## A285287.P3501090985822731729

`A285048(n)/A209615(A016825(3*(n+1)))`
-/

namespace A285287.P3501090985822731729
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A285048 n : ℚ) / (A209615 (A016825 (3 * (n + 1))).toNat : ℚ)

end

end A285287.P3501090985822731729

/-!
# A285288: Expansion of Product_{k>=0} (1 + x^(4*k+1))^(4*k+1).

The programs for A285288, there is no canonical definition to state claims against.
-/

/-! ## A285288.P15065515991265771645

`(-1)^n*A285070(n)`
-/

namespace A285288.P15065515991265771645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A285070 n

end

end A285288.P15065515991265771645

/-! ## A285288.P7592057973667016397

`abs(A285070(n))`
-/

namespace A285288.P7592057973667016397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A285070 n|

end

end A285288.P7592057973667016397

/-! ## A285288.P5895330467519046094

`gcd(A000038(n), A285070(n))`
-/

namespace A285288.P5895330467519046094
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A285070 n)

end

end A285288.P5895330467519046094

/-! ## A285288.P10180923118262247102

`lcm(A020985(n), A285070(n))`
-/

namespace A285288.P10180923118262247102
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020985 n) (A285070 n)

end

end A285288.P10180923118262247102

/-! ## A285288.P11595619844295477517

`A285048(n)*A285070(n)/A285287(n)`
-/

namespace A285288.P11595619844295477517
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A285048 n * A285070 n : ℚ) / (A285287 n : ℚ)

end

end A285288.P11595619844295477517

/-!
# A285289: Expansion of Product_{k>=1} ((1 + x^k) / (1 + x^(2*k)))^k.

The programs for A285289, there is no canonical definition to state claims against.
-/

/-! ## A285289.P5698399076797096973

`A319514(A208670(n+1))`
-/

namespace A285289.P5698399076797096973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319514 (A208670 (n + 1)).toNat

end

end A285289.P5698399076797096973

/-! ## A285289.P10826518572254333875

`A249728(A137199(n))%p?[A000045(n)]`
-/

namespace A285289.P10826518572254333875
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A249728 (A137199 n).toNat) (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A285289.P10826518572254333875

/-! ## A285289.P933721763892086679

`A344604(n+1)-A333632(A007504(n))`
-/

namespace A285289.P933721763892086679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344604 (n + 1) - A333632 (A007504 n).toNat

end

end A285289.P933721763892086679

/-! ## A285289.P16372245077476623643

`A118168(A324969(n+3)-A133034(n))`
-/

namespace A285289.P16372245077476623643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118168 (A324969 (n + 3) - A133034 n).toNat

end

end A285289.P16372245077476623643

/-! ## A285289.P7753680100983937165

`A180447(A261331(n+1))-A195017(A321735(n))`
-/

namespace A285289.P7753680100983937165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180447 (A261331 (n + 1)).toNat - A195017 (A321735 n).toNat

end

end A285289.P7753680100983937165

/-!
# A285290: Expansion of Product_{k>=1} ((1 + x^k) / (1 + x^(4*k)))^k.

The programs for A285290, there is no canonical definition to state claims against.
-/

/-! ## A285290.P14548560961053922408

`A000990(n)-A136279(n+1)%(n+1)`
-/

namespace A285290.P14548560961053922408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000990 n - Int.tmod (A136279 (n + 1)) (n + 1 : ℤ)

end

end A285290.P14548560961053922408

/-! ## A285290.P7387774920504636924

`A105593(A132780(n))+A022629(n)`
-/

namespace A285290.P7387774920504636924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105593 (A132780 n).toNat + A022629 n

end

end A285290.P7387774920504636924

/-! ## A285290.P8057670923908542682

`A356932(n)+A144629(A000213(n))`
-/

namespace A285290.P8057670923908542682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356932 n + A144629 (A000213 n).toNat

end

end A285290.P8057670923908542682

/-! ## A285290.P17279237481288331609

`A342525(A342528(n))+A069283(n)`
-/

namespace A285290.P17279237481288331609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342525 (A342528 n).toNat + A069283 n

end

end A285290.P17279237481288331609

/-!
# A285291: Expansion of Product_{k>=1} ((1 + x^k) / (1 + x^(5*k)))^k.

The programs for A285291, there is no canonical definition to state claims against.
-/

/-! ## A285291.P8502505878338176009

`A003056(A046672(n))-A069283(n+1)`
-/

namespace A285291.P8502505878338176009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A046672 n).toNat - A069283 (n + 1)

end

end A285291.P8502505878338176009

/-! ## A285291.P11979077290904826889

`A003056(A046672(n))-A087436(n+1)`
-/

namespace A285291.P11979077290904826889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A046672 n).toNat - A087436 (n + 1)

end

end A285291.P11979077290904826889

/-! ## A285291.P9737941842093546160

`A360600(A182746(n))`
-/

namespace A285291.P9737941842093546160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360600 (A182746 n).toNat

end

end A285291.P9737941842093546160

/-! ## A285291.P24726664513385613

`A360600(A305106(n))`
-/

namespace A285291.P24726664513385613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360600 (A305106 n).toNat

end

end A285291.P24726664513385613

/-! ## A285291.P10042870810973155058

`A155902(A000786(n+1))`
-/

namespace A285291.P10042870810973155058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155902 (A000786 (n + 1)).toNat

end

end A285291.P10042870810973155058

/-!
# A285293: Expansion of Product_{k>=1} (1 + x^k)^k / (1 + x^(5*k))^(5*k).

The programs for A285293, there is no canonical definition to state claims against.
-/

/-! ## A285293.P4888531518130861884

`A347578(A163528(n)+n²)`
-/

namespace A285293.P4888531518130861884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347578 (A163528 n + (n ^ 2 : ℤ)).toNat

end

end A285293.P4888531518130861884

/-! ## A285293.P18011771375705793048

`A271882(n+1)-A225654(A271884(n+1))`
-/

namespace A285293.P18011771375705793048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271882 (n + 1) - A225654 (A271884 (n + 1)).toNat

end

end A285293.P18011771375705793048

/-!
# A285296: Lexicographically earliest sequence of distinct positive terms such that the product of two consecutive terms is divisible by p^2 for some prime p.

The programs for A285296, there is no canonical definition to state claims against.
-/

/-! ## A285296.P2593592812041239702

`A181096(A073846(n+1)^A184240(n+1))`
-/

namespace A285296.P2593592812041239702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181096 (SequenceMachineLib.roundAway ((A073846 (n + 1) : ℚ) ^ (A184240 (n + 1) : ℤ))).toNat

end

end A285296.P2593592812041239702

/-! ## A285296.P3006591303379434444

`A181096(A073846(n+1)%A036688(n+1))`
-/

namespace A285296.P3006591303379434444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181096 (Int.tmod (A073846 (n + 1)) (A036688 (n + 1))).toNat

end

end A285296.P3006591303379434444

/-! ## A285296.P2614048114429505990

`A181096(A073846(n+1))%A225191(n+1)`
-/

namespace A285296.P2614048114429505990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A181096 (A073846 (n + 1)).toNat) (A225191 (n + 1))

end

end A285296.P2614048114429505990

/-!
# A285298: Number of 10's found in the first differences of a reduced residue system modulo a primorial p#.

The programs for A285298, there is no canonical definition to state claims against.
-/

/-! ## A285298.P16379333156123528992

`A257684(or(6, ∑[n^n]))`
-/

namespace A285298.P16379333156123528992
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257684 (Nat.lor 6 (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A285298.P16379333156123528992

/-! ## A285298.P3156090050036887478

`A252755(4*(4^n-3^n))%(4^n-2*3^n)`
-/

namespace A285298.P3156090050036887478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A252755 (4 * ((4 ^ n : ℤ) - (3 ^ n : ℤ))).toNat) ((4 ^ n : ℤ) - (2 * 3 ^ n : ℤ))

end

end A285298.P3156090050036887478

